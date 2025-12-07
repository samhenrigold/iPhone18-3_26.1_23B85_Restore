uint64_t HasPhysicsBody.addTorque(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  if (a1)
  {

    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      goto LABEL_8;
    }

    v4 = SceneNullable;
    v5 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v5)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v4);
    }

    v6 = Scene.physicsOrigin.getter();

    if (!v6)
    {
LABEL_8:
      v6 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
    }
  }

  else
  {
    v6 = 0;
  }

  *v7.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v6);
  v14 = v8;
  v15 = v7;
  v13 = v9;
  HasPhysicsBody.physicsBody.getter(&v30);
  v40[8] = v38;
  v41[0] = v39[0];
  *(v41 + 12) = *(v39 + 12);
  v40[4] = v34;
  v40[5] = v35;
  v40[6] = v36;
  v40[7] = v37;
  v40[0] = v30;
  v40[1] = v31;
  v40[2] = v32;
  v40[3] = v33;
  if (_s10RealityKit20PhysicsBodyComponentVSgWOg(v40) == 1)
  {
    v18[8] = v38;
    v19[0] = v39[0];
    *(v19 + 12) = *(v39 + 12);
    v18[4] = v34;
    v18[5] = v35;
    v18[6] = v36;
    v18[7] = v37;
    v18[0] = v30;
    v18[1] = v31;
    v18[2] = v32;
    v18[3] = v33;
    v28 = v38;
    v29[0] = v39[0];
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    outlined init with copy of PhysicsBodyComponent?(v18, v17);
    HasPhysicsBody.physicsBody.setter(&v20);

    v28 = v38;
    v29[0] = v39[0];
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    return outlined destroy of PhysicsBodyComponent?(&v20);
  }

  else
  {
    *v11.f32 = simd_float4x4.transform(torque:)(a2, v15, v14, v13);
    v12 = vaddq_f32(v11, v37);
    v12.i32[3] = 0;
    v37 = v12;
    v28 = v38;
    v29[0] = v39[0];
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v12;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    HasPhysicsBody.physicsBody.setter(&v20);
  }
}

Swift::Void __swiftcall HasPhysicsBody.clearForcesAndTorques()()
{
  HasPhysicsBody.physicsBody.getter(&v31);
  if (_s10RealityKit20PhysicsBodyComponentVSgWOg(&v31) != 1)
  {
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    *(v24 + 12) = *(v38 + 12);
    v23 = v37;
    v24[0] = v38[0];
    v11[4] = v35;
    v11[5] = v36;
    v11[2] = v33;
    v11[3] = v34;
    v11[0] = v31;
    v11[1] = v32;
    memset(&v11[6], 0, 32);
    v11[8] = v37;
    v12[0] = v38[0];
    *(v12 + 12) = *(v38 + 12);
    v13 = v31;
    v14 = v32;
    v17 = v35;
    v18 = v36;
    v15 = v33;
    v16 = v34;
    *(v22 + 12) = *(v38 + 12);
    v21 = v37;
    v22[0] = v12[0];
    v19 = 0u;
    v20 = 0u;
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v9 = v21;
    v10[0] = v12[0];
    *(v10 + 12) = *(v22 + 12);
    v5 = v17;
    v6 = v18;
    v7 = 0u;
    v8 = 0u;
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    outlined init with copy of PhysicsBodyComponent(v11, &v0);
    HasPhysicsBody.physicsBody.setter(&v1);
    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      if (RERigidBodyComponentGetRigidBody())
      {
        RERigidBodyClearForces();
      }
    }

    v3 = v27;
    v4 = v28;
    v5 = v29;
    v6 = v30;
    v1 = v25;
    v2 = v26;
    v7 = 0u;
    v8 = 0u;
    *(v10 + 12) = *(v24 + 12);
    v9 = v23;
    v10[0] = v24[0];
    outlined destroy of PhysicsBodyComponent(&v1);
  }
}

uint64_t HasPhysicsBody.applyLinearImpulse(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  if (a1)
  {

    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      goto LABEL_8;
    }

    v4 = SceneNullable;
    v5 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v5)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v4);
    }

    v6 = Scene.physicsOrigin.getter();

    if (!v6)
    {
LABEL_8:
      v6 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
    }
  }

  else
  {
    v6 = 0;
  }

  *v7.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v6);
  v14 = v8;
  v15 = v7;
  v13 = v9;
  HasPhysicsBody.physicsBody.getter(&v30);
  v40[8] = v38;
  v41[0] = v39[0];
  *(v41 + 12) = *(v39 + 12);
  v40[4] = v34;
  v40[5] = v35;
  v40[6] = v36;
  v40[7] = v37;
  v40[0] = v30;
  v40[1] = v31;
  v40[2] = v32;
  v40[3] = v33;
  if (_s10RealityKit20PhysicsBodyComponentVSgWOg(v40) == 1)
  {
    v18[8] = v38;
    v19[0] = v39[0];
    *(v19 + 12) = *(v39 + 12);
    v18[4] = v34;
    v18[5] = v35;
    v18[6] = v36;
    v18[7] = v37;
    v18[0] = v30;
    v18[1] = v31;
    v18[2] = v32;
    v18[3] = v33;
    v28 = v38;
    v29[0] = v39[0];
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    outlined init with copy of PhysicsBodyComponent?(v18, v17);
    HasPhysicsBody.physicsBody.setter(&v20);

    v28 = v38;
    v29[0] = v39[0];
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    return outlined destroy of PhysicsBodyComponent?(&v20);
  }

  else
  {
    *v11.f32 = simd_float4x4.transform(force:)(a2, v15, v14, v13);
    v12 = vaddq_f32(v11, v38);
    v12.i32[3] = 0;
    v38 = v12;
    v28 = v12;
    v29[0] = v39[0];
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    HasPhysicsBody.physicsBody.setter(&v20);
  }
}

uint64_t HasPhysicsBody.applyAngularImpulse(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  if (a1)
  {

    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      goto LABEL_8;
    }

    v4 = SceneNullable;
    v5 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v5)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v4);
    }

    v6 = Scene.physicsOrigin.getter();

    if (!v6)
    {
LABEL_8:
      v6 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
    }
  }

  else
  {
    v6 = 0;
  }

  *v7.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v6);
  v14 = v8;
  v15 = v7;
  v13 = v9;
  HasPhysicsBody.physicsBody.getter(&v30);
  v40[8] = v38;
  v41[0] = v39[0];
  *(v41 + 12) = *(v39 + 12);
  v40[4] = v34;
  v40[5] = v35;
  v40[6] = v36;
  v40[7] = v37;
  v40[0] = v30;
  v40[1] = v31;
  v40[2] = v32;
  v40[3] = v33;
  if (_s10RealityKit20PhysicsBodyComponentVSgWOg(v40) == 1)
  {
    v18[8] = v38;
    v19[0] = v39[0];
    *(v19 + 12) = *(v39 + 12);
    v18[4] = v34;
    v18[5] = v35;
    v18[6] = v36;
    v18[7] = v37;
    v18[0] = v30;
    v18[1] = v31;
    v18[2] = v32;
    v18[3] = v33;
    v28 = v38;
    v29[0] = v39[0];
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    outlined init with copy of PhysicsBodyComponent?(v18, v17);
    HasPhysicsBody.physicsBody.setter(&v20);

    v28 = v38;
    v29[0] = v39[0];
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    return outlined destroy of PhysicsBodyComponent?(&v20);
  }

  else
  {
    *v11.f32 = simd_float4x4.transform(torque:)(a2, v15, v14, v13);
    v12 = vaddq_f32(v11, v39[0]);
    v12.i32[3] = 0;
    v39[0] = v12;
    v28 = v38;
    v29[0] = v12;
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    HasPhysicsBody.physicsBody.setter(&v20);
  }
}

uint64_t HasPhysicsBody.applyImpulse(_:at:relativeTo:)(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  HasPhysicsBody.physicsBody.getter(v63);
  result = _s10RealityKit20PhysicsBodyComponentVSgWOg(v63);
  if (result != 1)
  {
    v59 = v65;
    v60 = v66;
    v61 = v67;
    v62 = v68;
    v55 = v63[0];
    v56 = v63[1];
    v57 = v63[2];
    v58 = v64;
    v54 = v72;
    v53 = v71;
    if (a1)
    {

      SceneNullable = REEntityGetSceneNullable();
      if (!SceneNullable)
      {
        goto LABEL_9;
      }

      v8 = SceneNullable;
      v9 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v9)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v8);
      }

      v10 = Scene.physicsOrigin.getter();

      if (!v10)
      {
LABEL_9:
        v10 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
      }
    }

    else
    {
      v10 = 0;
    }

    v29 = v69;
    v30 = v70;
    v27 = v64;
    *v11.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v10);
    v25 = v12;
    v26 = v11;
    v23 = v14;
    v24 = v13;
    *v15.i8 = simd_float4x4.transform(force:)(a3, v11, v12, v13);
    v32 = v15;
    HasTransform.convert(position:to:)(v10, a2, &protocol witness table for Entity, v27);
    v28 = v16;
    *v17.i64 = simd_float4x4.transform(position:)(a4, v26, v25, v24, v23);
    v18 = vsubq_f32(v17, v28);
    v19 = vaddq_f32(v29, v32);
    v19.i32[3] = 0;
    v20 = v19;
    v35 = v19;
    v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vnegq_f32(v18)), v32, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
    v19.i32[0] = vextq_s8(v21, v21, 8uLL).u32[0];
    v19.i32[1] = v21.i32[0];
    *&v22 = vadd_f32(*&v30, *v19.f32);
    *(&v22 + 2) = *(&v30 + 2) + *&v21.i32[1];
    HIDWORD(v22) = 0;
    v33 = v22;
    v38[4] = v59;
    v38[5] = v60;
    v38[6] = v61;
    v38[7] = v62;
    v38[0] = v55;
    v38[1] = v56;
    v38[2] = v57;
    v38[3] = v58;
    v38[8] = v20;
    *v39 = v22;
    *&v39[16] = v53;
    *&v39[24] = v54;
    v44 = v59;
    v45 = v60;
    v46 = v61;
    v47 = v62;
    v40 = v55;
    v41 = v56;
    v42 = v57;
    v43 = v58;
    v48 = v20;
    v49[0] = v22;
    *(v49 + 12) = *&v39[12];
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v36[8] = v48;
    v37[0] = v49[0];
    *(v37 + 12) = *&v39[12];
    v36[4] = v59;
    v36[5] = v60;
    v36[6] = v61;
    v36[7] = v62;
    v36[0] = v55;
    v36[1] = v56;
    v36[2] = v57;
    v36[3] = v58;
    outlined init with copy of PhysicsBodyComponent(v38, v50);
    HasPhysicsBody.physicsBody.setter(v36);

    v50[4] = v59;
    v50[5] = v60;
    v50[6] = v61;
    v50[7] = v62;
    v50[0] = v55;
    v50[1] = v56;
    v50[2] = v57;
    v50[3] = v58;
    v50[8] = v35;
    v50[9] = v33;
    v51 = v53;
    v52 = v54;
    return outlined destroy of PhysicsBodyComponent(v50);
  }

  return result;
}

Swift::Bool __swiftcall RKChangeSceneActionRuntimeTechnique.switchScenes()()
{
  if ((RKChangeSceneActionRuntimeTechnique.removeAllScenes()() & 1) == 0)
  {
    return 0;
  }

  return RKChangeSceneActionRuntimeTechnique.loadNextScene()();
}

uint64_t RKChangeSceneActionRuntimeTechnique.removeAllScenes()()
{
  v20 = StaticString.description.getter();
  v21 = v1;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v3 = v20;
  v2 = v21;
  if (!*(v0 + 16))
  {
    v16 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v16, &v20);

LABEL_18:
    v5 = 0;
    return v5 & 1;
  }

  v4 = RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()();
  if ((v4 & 1) == 0)
  {
    v17 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v17, &v20);

    goto LABEL_18;
  }

  v5 = RKChangeSceneActionRuntimeTechnique.unloadScene()(v4);
  v6 = static os_log_type_t.debug.getter();
  if (one-time initialization token for interactionsLoggingEnabled != -1)
  {
    swift_once();
  }

  if (interactionsLoggingEnabled)
  {
    _StringGuts.grow(_:)(26);

    v20 = 0xD000000000000018;
    v21 = 0x80000001C18EAF50;
    if (v5)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v5)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    MEMORY[0x1C68F3410](v7, v8);

    v10 = v20;
    v9 = v21;
    if (one-time initialization token for interactionsLogger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, interactionsLogger);

    v12 = Logger.logObject.getter();

    if (os_log_type_enabled(v12, v6))
    {
      v19[1] = v19;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v20);
      *(v13 + 12) = 2080;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v20);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_1C1358000, v12, v6, "%s%s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  return v5 & 1;
}

uint64_t RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()()
{
  *&v39[0] = StaticString.description.getter();
  *(&v39[0] + 1) = v1;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v2 = *(&v39[0] + 1);
  v42 = *(v0 + 16);
  v36 = *&v39[0];
  v34 = v42;
  v35 = v0;

  static os_log_type_t.debug.getter();
  v3 = specialized InteractionsLogger.log(_:_:)();
  if (!v42)
  {
LABEL_44:
    MEMORY[0x1EEE9AC00](v3);
    *&v39[0] = v36;
    *(&v39[0] + 1) = v2;
    static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)();
    v29 = v42;
    if (v42 || (!v34 ? (v30 = 0) : (v30 = specialized HasHierarchy.parent.getter()), v42 = v30, MEMORY[0x1EEE9AC00](v30), *&v39[0] = v36, *(&v39[0] + 1) = v2, static os_log_type_t.debug.getter(), specialized InteractionsLogger.log(_:_:)(), (v29 = v42) != 0))
    {
      *(v35 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity) = v29;
      swift_retain_n();

      MEMORY[0x1EEE9AC00](v31);
      *&v39[0] = v36;
      *(&v39[0] + 1) = v2;
      static os_log_type_t.debug.getter();
      specialized InteractionsLogger.log(_:_:)();

      v32 = 1;
    }

    else
    {
      *&v39[0] = v36;
      *(&v39[0] + 1) = v2;
      v33 = static os_log_type_t.debug.getter();
      specialized InteractionsLogger.log(_:_:)(v33, v39);

      v32 = 0;
    }

    return v32;
  }

  v4 = &one-time initialization token for displayP3Space;
  while (1)
  {
    swift_beginAccess();

    v6 = objc_getAssociatedObject(v5, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey);
    swift_endAccess();
    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39[0] = v37;
    v39[1] = v38;
    if (*(&v38 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v41)
      {

        goto LABEL_44;
      }
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v39, &_sypSgMd, &_sypSgMR);
    }

    Parent = REEntityGetParent();
    if (!Parent)
    {

      goto LABEL_44;
    }

    v8 = Parent;
    if (REEntityGetSwiftObject())
    {
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      break;
    }

    specialized static Entity.entityInfoType(_:)(v8);
    if (v10)
    {
      v11 = (*(v10 + 232))();
      MEMORY[0x1C68F9740](*(v11 + 16), 0);
      *(v11 + 16) = v8;
      MEMORY[0x1C68F9740](v8, v11);
    }

    else
    {
      makeEntity(for:)(v8);
    }

LABEL_21:
    v12 = REEntityGetParent();
    if (v12)
    {
      v13 = v12;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v14 = swift_dynamicCastClassUnconditional();
        goto LABEL_24;
      }

      result = REEntityIsBeingDestroyed();
      if (result)
      {
        goto LABEL_53;
      }

      specialized static Entity.entityInfoType(_:)(v13);
      if (v16)
      {
        v15 = (*(v16 + 232))();
        v17 = *(v15 + 16);

        MEMORY[0x1C68F9740](v17, 0);
        *(v15 + 16) = v13;
        MEMORY[0x1C68F9740](v13, v15);
      }

      else
      {
        v14 = makeEntity(for:)(v13);
LABEL_24:
        v15 = v14;
      }

      goto LABEL_30;
    }

    v15 = 0;
LABEL_30:
    v42 = v15;
    v18 = static os_log_type_t.debug.getter();
    if (v4[74] != -1)
    {
      swift_once();
    }

    if (interactionsLoggingEnabled)
    {
      *&v39[0] = 0;
      *(&v39[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v39[0] = 0xD000000000000019;
      *(&v39[0] + 1) = 0x80000001C18EAE60;
      if (v15)
      {
        *&v37 = 0;
        *(&v37 + 1) = 0xE000000000000000;
        v40 = v15;
        _print_unlocked<A, B>(_:_:)();
        v20 = 0xE000000000000000;
        v19 = 0;
      }

      else
      {
        v20 = 0xE300000000000000;
        v19 = 7104878;
      }

      MEMORY[0x1C68F3410](v19, v20);

      v21 = v39[0];
      if (one-time initialization token for interactionsLogger != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, interactionsLogger);

      v23 = Logger.logObject.getter();

      if (os_log_type_enabled(v23, v18))
      {
        v24 = swift_slowAlloc();
        v25 = v4;
        v26 = swift_slowAlloc();
        *&v39[0] = v26;
        *v24 = 136315394;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v2, v39);
        *(v24 + 12) = 2080;
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, *(&v21 + 1), v39);

        *(v24 + 14) = v27;
        _os_log_impl(&dword_1C1358000, v23, v18, "%s%s", v24, 0x16u);
        swift_arrayDestroy();
        v28 = v26;
        v4 = v25;
        MEMORY[0x1C6902A30](v28, -1, -1);
        MEMORY[0x1C6902A30](v24, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    if (!v42)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

unint64_t implicit closure #1 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()(uint64_t *a1)
{
  _StringGuts.grow(_:)(28);

  if (*a1)
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  return 0xD00000000000001ALL;
}

unint64_t implicit closure #4 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()(uint64_t *a1)
{
  _StringGuts.grow(_:)(26);

  if (*a1)
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  return 0xD000000000000018;
}

unint64_t implicit closure #5 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()(uint64_t *a1)
{
  _StringGuts.grow(_:)(41);

  if (*a1)
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  return 0xD000000000000027;
}

unint64_t implicit closure #7 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()(uint64_t *a1)
{
  _StringGuts.grow(_:)(35);

  if (*a1)
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  return 0xD000000000000021;
}

uint64_t RKChangeSceneActionRuntimeTechnique.unloadScene()(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity);
  if (!v2)
  {
    v10 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v11 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v10, &dword_1C1358000, v11, "Could not unload current scene for change scene action", 54, 2, MEMORY[0x1E69E7CC0]);

    return v2 != 0;
  }

  swift_retain_n();
  if (REEntityGetChildCount() < 1)
  {
LABEL_16:

    return v2 != 0;
  }

  v3 = 0;
  while (1)
  {
    result = REEntityGetChildCount();
    if (v3 >= result)
    {
      break;
    }

    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_22;
    }

    v5 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v6 = swift_dynamicCastClassUnconditional();
LABEL_8:
      v7 = v6;
      goto LABEL_12;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_21;
    }

    specialized static Entity.entityInfoType(_:)(v5);
    if (!v8)
    {
      v6 = makeEntity(for:)(v5);
      goto LABEL_8;
    }

    v7 = (*(v8 + 232))();
    v9 = *(v7 + 16);

    MEMORY[0x1C68F9740](v9, 0);
    *(v7 + 16) = v5;
    MEMORY[0x1C68F9740](v5, v7);

LABEL_12:
    result = REEntityGetChildCount();
    if (v3 >= result)
    {
      goto LABEL_20;
    }

    ++v3;
    MEMORY[0x1C68F96F0](*(v7 + 16));

    if (v3 >= REEntityGetChildCount())
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t RKChangeSceneActionRuntimeTechnique.loadNextScene()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  if (one-time initialization token for noTargetSceneIdentifier != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for UUID();
  __swift_project_value_buffer(v7, static __RKChangeSceneAction.noTargetSceneIdentifier);
  if (static UUID.== infix(_:_:)())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized __RKActiveSceneManager.activeScene.setter(0);
    v8 = *(v0 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity);
    if (!v8)
    {
      return 1;
    }

    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v10 = SceneNullable;
      v11 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v11)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v10);
      }

      Scene.__interactionService.getter();

      type metadata accessor for __RKEntityInteractionManager();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        swift_beginAccess();
        v19 = *(v18 + 56);

        swift_unknownObjectRelease();
        v20 = type metadata accessor for AnchoringComponent.Target(0);
        v21 = *(v20 - 8);
        v22 = *(v21 + 56);
        v35 = v21 + 56;
        v22(v6, 1, 1, v20);
        swift_beginAccess();
        v23 = *(v19 + 16);
        v24 = *(v23 + 16);
        if (v24)
        {
          v34 = v22;
          v25 = v23 + 32;

          do
          {
            outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v25, v38);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v26 = v39;
              ObjectType = swift_getObjectType();
              (*(v26 + 8))(v19, v8, 0, v6, ObjectType, v26);
              swift_unknownObjectRelease();
            }

            outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v38);
            v25 += 16;
            --v24;
          }

          while (v24);

          v22 = v34;
        }

        outlined destroy of BodyTrackingComponent?(v6, &_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
        specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
        if (v19)
        {
          v22(v3, 1, 1, v20);
          swift_beginAccess();
          v28 = *(v19 + 16);
          v29 = *(v28 + 16);
          if (v29)
          {
            v30 = v28 + 32;

            do
            {
              outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v30, v36);
              if (swift_unknownObjectWeakLoadStrong())
              {
                v31 = v37;
                v32 = swift_getObjectType();
                (*(v31 + 16))(v19, v8, 0, v3, v32, v31);
                swift_unknownObjectRelease();
              }

              outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v36);
              v30 += 16;
              --v29;
            }

            while (v29);
          }

          else
          {
          }

          outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
          return 1;
        }

LABEL_31:

        return 1;
      }

      swift_unknownObjectRelease();
    }

    specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    goto LABEL_31;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = *(static __RKSceneAssetLookupTable.shared + 2);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = [v12 objectForKey_];

  if (!v14)
  {
    return 0;
  }

  v15 = RKChangeSceneActionRuntimeTechnique.loadScene(_:)(v14);

  return v15 & 1;
}

uint64_t RKChangeSceneActionRuntimeTechnique.loadScene(_:)(uint64_t a1)
{
  v118 = type metadata accessor for DispatchPredicate();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = (&v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v110 - v5;
  v7 = type metadata accessor for AnchoringComponent(0);
  v119 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v121 = &v110 - v11;
  v12 = OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity;
  v13 = *(v1 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity);
  *&v129 = 91;
  *(&v129 + 1) = 0xE100000000000000;
  if (v13)
  {
    *&v127 = 0;
    *(&v127 + 1) = 0xE000000000000000;
    v124 = v13;

    _print_unlocked<A, B>(_:_:)();
    v15 = *(&v127 + 1);
    v14 = v127;
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x1C68F3410](v14, v15);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v16 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v16);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v17 = *(&v129 + 1);
  v18 = *(v1 + v12);
  if (!v18)
  {
    v28 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v28, &v129);
LABEL_9:

    return 0;
  }

  v114 = v1;
  v123 = v129;

  Entity.__fetchLoadContext()();
  v20 = *(&v129 + 1);
  v19 = v129;
  v21 = *(a1 + 16);
  RERetain();
  type metadata accessor for __SceneResource();
  inited = swift_initStackObject();
  *(inited + 16) = v21;
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    v120 = 0;
    if (v20)
    {
      goto LABEL_17;
    }

LABEL_11:
    *&v129 = v123;
    *(&v129 + 1) = v17;
    v29 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v29, &v129);
    swift_setDeallocating();
    RERelease();

    return 0;
  }

  v122 = v7;
  v24 = v9;
  v25 = v19;
  v26 = SceneNullable;
  v27 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v27)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v26);
  }

  Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v31 = v30;
    swift_beginAccess();
    v120 = *(v31 + 56);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v120 = 0;
  }

  v19 = v25;
  v9 = v24;
  v7 = v122;
  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_17:
  v115 = v18;
  v33 = __SceneResource.makeAnchorEntity(fileName:)(v19, v20);
  v113 = inited;
  v111 = v17;
  v110 = v19;
  *&v129 = v19;
  *(&v129 + 1) = v20;
  swift_bridgeObjectRetain_n();
  v34 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  swift_beginAccess();
  objc_setAssociatedObject(v33, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v34, 0x301);
  swift_endAccess();
  v112 = v20;

  swift_unknownObjectRelease();
  v35 = type metadata accessor for AnchoringComponent.Target(0);
  v36 = *(*(v35 - 8) + 56);
  v37 = v121;
  v36(v121, 1, 1, v35);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA09AnchoringD0V_Tt0B5(v6);
  v122 = v33;

  v38 = (*(v119 + 48))(v6, 1, v7);
  if (v38 == 1)
  {
    outlined destroy of BodyTrackingComponent?(v6, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
    v39 = v111;
    *&v129 = v123;
    *(&v129 + 1) = v111;
    v40 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v40, &v129);
  }

  else
  {
    outlined init with take of AnchoringComponent(v6, v9, type metadata accessor for AnchoringComponent);
    v41 = v111;
    *&v129 = v123;
    *(&v129 + 1) = v111;
    v42 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v42, &v129);
    outlined destroy of BodyTrackingComponent?(v37, &_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
    outlined init with take of AnchoringComponent(v9, v37, type metadata accessor for AnchoringComponent.Target);
    v43 = v37;
    v39 = v41;
    v36(v43, 0, 1, v35);
  }

  v44 = v115;
  v45 = specialized HasHierarchy.parent.getter();
  v46 = v110;
  if (v45)
  {

    *&v129 = v123;
    *(&v129 + 1) = v39;
    v47 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v47, &v129);
    v48 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(0, &v129, 0);
    *&v129 = v46;
    *(&v129 + 1) = v112;
    swift_bridgeObjectRetain_n();
    v49 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    swift_beginAccess();
    objc_setAssociatedObject(v48, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v49, 0x301);
    swift_endAccess();

    swift_unknownObjectRelease();
    v50 = v48;
  }

  else
  {
    v50 = v122;
  }

  v51 = type metadata accessor for Entity();
  RENetworkComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  specialized static Entity.enumerateCore(entity:recursive:block:)(v50, 1, v51);
  static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(v50);
  if (REShadowsGetEnableDefaultShadows())
  {
    MEMORY[0x1C68FCEC0](v50[2], 1);
  }

  Entity.generateCollisionShapes(recursive:static:)(1, 0);
  RKChangeSceneActionRuntimeTechnique.stopAnimations(rootEntity:)(v50);
  v52 = specialized HasHierarchy.parent.getter();
  v122 = v50;
  if (!v52)
  {

    type metadata accessor for AnchorEntity();
    v62 = swift_dynamicCastClass();
    v63 = v121;
    v64 = v120;
    if (!v62)
    {
LABEL_38:
      *&v129 = v123;
      *(&v129 + 1) = v39;
      v66 = static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)(v66, &v129);
      swift_setDeallocating();
      RERelease();

      outlined destroy of BodyTrackingComponent?(v63, &_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
      goto LABEL_9;
    }

    v65 = v62;

    if (specialized HasHierarchy.parent.getter())
    {
      goto LABEL_36;
    }

    v86 = swift_dynamicCastClass();
    if (!v86)
    {
      goto LABEL_37;
    }

    v87 = v86;

    v88 = REEntityGetSceneNullable();
    if (!v88)
    {
LABEL_36:

LABEL_37:

      goto LABEL_38;
    }

    v89 = v88;
    v90 = RESceneGetSwiftObject();
    v119 = type metadata accessor for Scene();
    if (v90)
    {
      v91 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      v91 = Scene.init(coreScene:)(v89);
    }

    v92 = v91;
    *&v129 = v123;
    *(&v129 + 1) = v39;
    v93 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v93, &v129);
    if (v64)
    {
      swift_beginAccess();
      v94 = v64[2];
      v95 = *(v94 + 16);
      if (v95)
      {
        v96 = v94 + 32;

        do
        {
          outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v96, &v129);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v97 = *(&v129 + 1);
            ObjectType = swift_getObjectType();
            (*(v97 + 8))(v120, v44, v122, v121, ObjectType, v97);
            swift_unknownObjectRelease();
          }

          outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(&v129);
          v96 += 16;
          --v95;
        }

        while (v95);

        v39 = v111;
      }
    }

    RESceneRemoveEntity();

    specialized Scene.AnchorCollection.append(_:)(v87, v92);

    if (objc_getAssociatedObject(v65, "RealityKit.SceneResourceCacheEntry"))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v127 = 0u;
      v128 = 0u;
    }

    v56 = v120;
    v129 = v127;
    v130 = v128;
    v55 = v121;
    if (*(&v128 + 1))
    {
      type metadata accessor for __SceneResourceCache.Entry();
      if (swift_dynamicCast())
      {
        v120 = v125;
        v99 = specialized static __ServiceLocator.shared.getter();
        swift_beginAccess();
        v100 = *(v99 + 24);
        swift_unownedRetainStrong();
        v101 = *(v100 + 32);

        v102 = v101;

        v103 = v116;
        *v116 = v102;
        v104 = v117;
        v105 = v118;
        (*(v117 + 104))(v103, *MEMORY[0x1E69E8020], v118);
        LOBYTE(v100) = _dispatchPreconditionTest(_:)();
        result = (*(v104 + 8))(v103, v105);
        if ((v100 & 1) == 0)
        {
LABEL_94:
          __break(1u);
          return result;
        }

        v106 = v120;
        __SceneResourceCache.Entry.registerWithSceneLookupTable()();
        objc_setAssociatedObject(v87, "RealityKit.SceneResourceCacheEntry", v106, 0x301);

        v39 = v111;
LABEL_88:

        v108 = REEntityGetSceneNullable();
        if (!v108)
        {

          v78 = 0;
          goto LABEL_55;
        }

        v109 = v108;
        if (!RESceneGetSwiftObject())
        {
          swift_allocObject();
          v78 = Scene.init(coreScene:)(v109);

          goto LABEL_55;
        }

        goto LABEL_52;
      }
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v129, &_sypSgMd, &_sypSgMR);
    }

    *&v129 = v123;
    *(&v129 + 1) = v39;
    v107 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v107, &v129);
    goto LABEL_88;
  }

  v53 = v52;
  *&v129 = v123;
  *(&v129 + 1) = v39;
  v54 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v54, &v129);
  v55 = v121;
  v56 = v120;
  if (v120)
  {
    swift_beginAccess();
    v57 = v56[2];
    v58 = *(v57 + 16);
    if (v58)
    {
      v59 = v57 + 32;

      do
      {
        outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v59, &v129);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v60 = *(&v129 + 1);
          v61 = swift_getObjectType();
          (*(v60 + 8))(v56, v44, v122, v55, v61, v60);
          swift_unknownObjectRelease();
        }

        outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(&v129);
        v59 += 16;
        --v58;
      }

      while (v58);

      v50 = v122;
    }
  }

  specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
  *&v129 = v53;

  Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v50, 0);

  if (objc_getAssociatedObject(v44, "RealityKit.SceneResourceCacheEntry"))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v127 = 0u;
    v128 = 0u;
  }

  v129 = v127;
  v130 = v128;
  if (!*(&v128 + 1))
  {
    outlined destroy of BodyTrackingComponent?(&v129, &_sypSgMd, &_sypSgMR);
    goto LABEL_48;
  }

  type metadata accessor for __SceneResourceCache.Entry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    *&v129 = v123;
    *(&v129 + 1) = v39;
    v75 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v75, &v129);

    goto LABEL_49;
  }

  v67 = v125;
  v68 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v69 = *(v68 + 24);
  swift_unownedRetainStrong();
  v70 = *(v69 + 32);

  v71 = v70;

  v72 = v116;
  *v116 = v71;
  v73 = v117;
  v74 = v118;
  (*(v117 + 104))(v72, *MEMORY[0x1E69E8020], v118);
  LOBYTE(v69) = _dispatchPreconditionTest(_:)();
  result = (*(v73 + 8))(v72, v74);
  if ((v69 & 1) == 0)
  {
    __break(1u);
    goto LABEL_94;
  }

  __SceneResourceCache.Entry.registerWithSceneLookupTable()();
  objc_setAssociatedObject(v122, "RealityKit.SceneResourceCacheEntry", v67, 0x301);

  v39 = v111;
LABEL_49:
  v76 = REEntityGetSceneNullable();
  if (!v76)
  {

    v78 = 0;
    goto LABEL_55;
  }

  v77 = v76;
  if (!RESceneGetSwiftObject())
  {
    type metadata accessor for Scene();
    swift_allocObject();
    v78 = Scene.init(coreScene:)(v77);

    goto LABEL_55;
  }

  type metadata accessor for Scene();
LABEL_52:
  v78 = swift_dynamicCastClassUnconditional();
LABEL_55:
  v79 = one-time initialization token for shared;

  if (v79 != -1)
  {
    swift_once();
  }

  specialized __RKActiveSceneManager.activeScene.setter(v78);

  if (v56)
  {
    swift_beginAccess();
    v80 = v56[2];
    v81 = *(v80 + 16);
    if (v81)
    {
      v82 = v80 + 32;

      do
      {
        outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v82, &v125);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v83 = v126;
          v84 = swift_getObjectType();
          (*(v83 + 16))(v56, v44, v122, v55, v84, v83);
          swift_unknownObjectRelease();
        }

        outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(&v125);
        v82 += 16;
        --v81;
      }

      while (v81);
    }
  }

  v125 = v123;
  v126 = v39;
  v85 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v85, &v125);

  swift_setDeallocating();
  RERelease();

  outlined destroy of BodyTrackingComponent?(v55, &_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);

  return 1;
}

unint64_t implicit closure #3 in RKChangeSceneActionRuntimeTechnique.loadScene(_:)(uint64_t a1)
{
  _StringGuts.grow(_:)(40);

  swift_getErrorValue();
  v1 = Error.localizedDescription.getter();
  MEMORY[0x1C68F3410](v1);

  return 0xD000000000000026;
}

uint64_t RKChangeSceneActionRuntimeTechnique.stopAnimations(rootEntity:)(uint64_t a1)
{
  REAnimationComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    v2 = ComponentByClass;
    result = REAnimationComponentGetEntryCount();
    if (result < 0)
    {
      goto LABEL_27;
    }

    v4 = result;
    if (result)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        MEMORY[0x1C68F6130](v2);
        v5 = v6;
      }

      while (v4 != v6);
    }

    REAnimationComponentStopAllAnimations();
    RENetworkMarkComponentDirty();
  }

  if (REEntityGetChildCount() < 1)
  {
LABEL_21:
  }

  v7 = 0;
  while (1)
  {
    result = REEntityGetChildCount();
    if (v7 >= result)
    {
      break;
    }

    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_28;
    }

    v8 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v9 = swift_dynamicCastClassUnconditional();
LABEL_13:
      v10 = v9;
      goto LABEL_17;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_26;
    }

    specialized static Entity.entityInfoType(_:)(v8);
    if (!v11)
    {
      v9 = makeEntity(for:)(v8);
      goto LABEL_13;
    }

    v10 = (*(v11 + 232))();
    v12 = *(v10 + 16);

    MEMORY[0x1C68F9740](v12, 0);
    *(v10 + 16) = v8;
    MEMORY[0x1C68F9740](v8, v10);

LABEL_17:
    result = REEntityGetChildCount();
    if (v7 >= result)
    {
      goto LABEL_25;
    }

    ++v7;
    RKChangeSceneActionRuntimeTechnique.stopAnimations(rootEntity:)(v10);

    if (v7 >= REEntityGetChildCount())
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t RKChangeSceneActionRuntimeTechnique.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17RealityFoundation33RKChangeSceneActionBasicTechnique_targetSceneIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RKChangeSceneActionRuntimeTechnique(uint64_t a1)
{
  result = type metadata singleton initialization cache for RKChangeSceneActionRuntimeTechnique;
  if (!type metadata singleton initialization cache for RKChangeSceneActionRuntimeTechnique)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of AnchoringComponent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SceneComponentCollection.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = RESceneDereferenceComponentCollectionPosition();
  if (result)
  {
    v7 = *(v3 + 16);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      *(v3 + 16) = v9;
      v10 = *(a1 + 16);
      v14[3] = MEMORY[0x1E69E6B70];
      v14[0] = result;
      outlined init with copy of Any(v14, v13);
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_1(v14);
      (*(*(a1 + 24) + 64))(v12, v10);
      return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
    }
  }

  else
  {
    *(v3 + 16) = *(v3 + 8);
    v11 = *(*(*(a1 + 16) - 8) + 56);

    return v11(a2, 1, 1);
  }

  return result;
}

uint64_t SceneComponentCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = *v2;
  if (a1 < 0)
  {
    __break(1u);
  }

  v11 = a1;
  v4 = RESceneDereferenceComponentCollectionPosition();
  if (v4)
  {
    v5 = *(a2 + 16);
    v9[3] = MEMORY[0x1E69E6B70];
    v9[0] = v4;
    outlined init with copy of Any(v9, v8);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(v9);
    return (*(*(a2 + 24) + 64))(v7, v5);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::UInt __swiftcall SceneComponentCollection.index(after:)(Swift::UInt after)
{
  v1 = __CFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance SceneComponentCollection<A>@<X0>(uint64_t *a1@<X8>)
{
  result = SceneComponentCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance SceneComponentCollection<A>@<X0>(uint64_t *a1@<X8>)
{
  result = SceneComponentCollection.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance SceneComponentCollection<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = SceneComponentCollection.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance SceneComponentCollection<A>;
}

void protocol witness for Collection.subscript.read in conformance SceneComponentCollection<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*SceneComponentCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  SceneComponentCollection.subscript.getter(a2, a3);
  return SceneComponentCollection.subscript.read;
}

void SceneComponentCollection.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance SceneComponentCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

void *protocol witness for Collection.index(after:) in conformance SceneComponentCollection<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result == -1)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance SceneComponentCollection<A>(void *result)
{
  if (*result == -1)
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance SceneComponentCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SceneComponentCollection<A>, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t Scene.SceneComponentTypeTable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Scene.components.getter()
{
  type metadata accessor for Scene.SceneComponentTypeTable();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;

  return v1;
}

uint64_t type metadata instantiation function for SceneComponentCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SceneComponentCollection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SceneComponentCollection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t MXIComponent.splitMode.getter@<X0>(_BYTE *a1@<X8>)
{
  outlined init with copy of Any?(v1 + 16, &v7);
  v3 = v8;
  result = outlined destroy of Any?(&v7);
  if (v3)
  {
    result = outlined init with copy of Any?(v1 + 16, &v5);
    if (v6)
    {
      outlined init with take of Any(&v5, &v7);
      return swift_dynamicCast();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t MXIComponent.splitMode.setter(char *a1)
{
  v2 = *a1;
  v5 = &type metadata for MXIComponent.MXISplitMode;
  v4[0] = v2;
  return outlined assign with take of Any?(v4, v1 + 16);
}

void (*MXIComponent.splitMode.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  outlined init with copy of Any?(v1 + 16, v3);
  v5 = *(v4 + 24);
  outlined destroy of Any?(v4);
  if (!v5)
  {
    *(v4 + 72) = 0;
    return MXIComponent.splitMode.modify;
  }

  result = outlined init with copy of Any?(v1 + 16, v4 + 32);
  if (*(v4 + 56))
  {
    outlined init with take of Any((v4 + 32), v4);
    swift_dynamicCast();
    return MXIComponent.splitMode.modify;
  }

  __break(1u);
  return result;
}

void MXIComponent.splitMode.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  v1[3] = &type metadata for MXIComponent.MXISplitMode;
  *v1 = v2;
  outlined assign with take of Any?(v1, v3 + 16);

  free(v1);
}

float (*MXIComponent.splitDepth.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48);
  return MXIComponent.splitDepth.modify;
}

float MXIComponent.splitDepth.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 48) = result;
  return result;
}

uint64_t (*MXIComponent.performSRGBConversion.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 52);
  return MXIComponent.performSRGBConversion.modify;
}

void (*MXIComponent.foregroundRect.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *v3 = *(v1 + 64);
  return GeometricPin.offsetOrientation.modify;
}

_BYTE *(*MXIComponent.enableCroppedForegroundTexture.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 80);
  return __REAssetManager.syncLoadsShouldWaitForResourceSharing.modify;
}

float (*MXIComponent.alphaThreshold.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 84);
  return MXIComponent.alphaThreshold.modify;
}

float MXIComponent.alphaThreshold.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 84) = result;
  return result;
}

__n128 MXIComponent.cameraMatrixDriver.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *(a1 + 96) = *(v1 + 192);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 224);
  v3 = *(v1 + 144);
  *(a1 + 32) = *(v1 + 128);
  *(a1 + 48) = v3;
  v4 = *(v1 + 176);
  *(a1 + 64) = *(v1 + 160);
  *(a1 + 80) = v4;
  result = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = result;
  return result;
}

__n128 MXIComponent.cameraMatrixDriver.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 192) = *(a1 + 96);
  *(v1 + 208) = v2;
  *(v1 + 224) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(v1 + 128) = *(a1 + 32);
  *(v1 + 144) = v3;
  v4 = *(a1 + 80);
  *(v1 + 160) = *(a1 + 64);
  *(v1 + 176) = v4;
  result = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = result;
  return result;
}

double MXIComponent.ProxyConfiguration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1C18C2750;
  *&result = 0x5A0000002DLL;
  *(a1 + 16) = 0x5A0000002DLL;
  return result;
}

double MXIComponent.ProxyConfiguration.init(width:height:distance:cornerRadius:)@<D0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *&result = 0x5A0000002DLL;
  *(a1 + 16) = 0x5A0000002DLL;
  return result;
}

uint64_t MXIComponent.ProxyConfiguration.init(width:height:distance:cornerRadius:widthSegmentCount:heightSegmentCount:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  *a3 = a4;
  *(a3 + 4) = a5;
  *(a3 + 8) = a6;
  *(a3 + 12) = a7;
  *(a3 + 16) = result;
  *(a3 + 20) = a2;
  return result;
}

double MXIComponent.proxyConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 228);
  result = *(v1 + 244);
  *(a1 + 16) = result;
  return result;
}

double MXIComponent.proxyConfiguration.setter(uint64_t a1)
{
  *(v1 + 228) = *a1;
  result = *(a1 + 16);
  *(v1 + 244) = result;
  return result;
}

uint64_t static MXIComponent.TwoPassOffscreenOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MXIComponent.TwoPassOffscreenOptions(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

float MXIComponent.twoPassOffscreenOptions.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 252);
  v3 = *(v1 + 256);
  v4 = *(v1 + 260);
  *a1 = result;
  *(a1 + 4) = v3;
  *(a1 + 8) = v4;
  return result;
}

float MXIComponent.twoPassOffscreenOptions.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  *(v1 + 252) = *a1;
  *(v1 + 256) = v3;
  *(v1 + 260) = v4;
  return result;
}

double MXIComponent.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 45) = 0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of MXIComponent.init());
  *(a1 + 64) = v2;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(v8);
  v3 = v8[7];
  *(a1 + 192) = v8[6];
  *(a1 + 208) = v3;
  *(a1 + 224) = v9;
  v4 = v8[3];
  *(a1 + 128) = v8[2];
  *(a1 + 144) = v4;
  v5 = v8[5];
  *(a1 + 160) = v8[4];
  *(a1 + 176) = v5;
  v6 = v8[1];
  *(a1 + 96) = v8[0];
  *(a1 + 112) = v6;
  *(a1 + 228) = xmmword_1C18C2750;
  *&result = 0x5A0000002DLL;
  *(a1 + 244) = 0x5A0000002DLL;
  *(a1 + 252) = 0x53F333333;
  *(a1 + 260) = 1;
  return result;
}

uint64_t MXIComponent.init(meshResource:textureResource:renderTwoPass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 45) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of MXIComponent.init(meshResource:textureResource:renderTwoPass:));
  *(a4 + 64) = v8;
  *(a4 + 80) = 0;
  *(a4 + 84) = 0;
  _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(v28);
  v9 = v28[7];
  *(a4 + 192) = v28[6];
  *(a4 + 208) = v9;
  *(a4 + 224) = v29;
  v10 = v28[3];
  *(a4 + 128) = v28[2];
  *(a4 + 144) = v10;
  v11 = v28[5];
  *(a4 + 160) = v28[4];
  *(a4 + 176) = v11;
  v12 = v28[1];
  *(a4 + 96) = v28[0];
  *(a4 + 112) = v12;
  *(a4 + 228) = xmmword_1C18C2750;
  *(a4 + 244) = 0x5A0000002DLL;
  *(a4 + 252) = 0x53F333333;
  *(a4 + 260) = 1;
  v13 = *(a1 + 16);
  if (!v13)
  {

    v16 = 0;
LABEL_8:
    *a4 = v16;
    *(a4 + 8) = a3 & 1;
    return result;
  }

  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
LABEL_3:
    type metadata accessor for MXISceneResource();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 20) = xmmword_1C18C2760;
    *(v16 + 36) = 0x80000000010;
    *(v16 + 44) = 2048;
    *(v16 + 48) = 1;
    RERetain();
    *(v16 + 56) = v13;
    RERetain();
    *(v16 + 64) = v14;
    v17 = *(v15 + 16);
    if (v17)
    {
      v18 = v15 + 32;
      do
      {
        v18 += 8;
        RERetain();
        --v17;
      }

      while (v17);
    }

    *(v16 + 72) = v15;

    *(v16 + 80) = 0;
    swift_beginAccess();
    *(v16 + 16) = 0;
    swift_beginAccess();
    *(v16 + 20) = 1070141402;
    swift_beginAccess();
    *(v16 + 24) = 1065353216;
    swift_beginAccess();
    *(v16 + 28) = 0x40000000;
    swift_beginAccess();
    *(v16 + 32) = 1101004800;
    swift_beginAccess();
    *(v16 + 36) = 64;
    swift_beginAccess();
    *(v16 + 40) = 2048;
    swift_beginAccess();
    *(v16 + 44) = 2048;
    result = swift_beginAccess();
    *(v16 + 48) = 1;
    goto LABEL_8;
  }

  v27 = *(a2 + 16);
  v20 = __CocoaSet.count.getter();
  if (!v20)
  {
LABEL_15:
    v14 = v27;
    goto LABEL_3;
  }

  v21 = v20;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      v24 = *(MEMORY[0x1C68F41F0](v22, v23) + 16);
      swift_unknownObjectRelease();
      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      }

      ++v22;
      *(v15 + 16) = v26 + 1;
      *(v15 + 8 * v26 + 32) = v24;
    }

    while (v21 != v22);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

double MXIComponent.init(mxiSceneResource:renderTwoPass:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 45) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of MXIComponent.init(mxiSceneResource:renderTwoPass:));
  *(a3 + 64) = v6;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(v12);
  v7 = v12[7];
  *(a3 + 192) = v12[6];
  *(a3 + 208) = v7;
  *(a3 + 224) = v13;
  v8 = v12[3];
  *(a3 + 128) = v12[2];
  *(a3 + 144) = v8;
  v9 = v12[5];
  *(a3 + 160) = v12[4];
  *(a3 + 176) = v9;
  v10 = v12[1];
  *(a3 + 96) = v12[0];
  *(a3 + 112) = v10;
  *(a3 + 228) = xmmword_1C18C2750;
  *&result = 0x5A0000002DLL;
  *(a3 + 244) = 0x5A0000002DLL;
  *(a3 + 252) = 0x53F333333;
  *(a3 + 260) = 1;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

void MXIComponent.init(mxiSceneResource:optimizationMode:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 45) = 0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of MXIComponent.init(mxiSceneResource:optimizationMode:));
  *(a3 + 64) = v6;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(v15);
  v7 = v15[7];
  *(a3 + 192) = v15[6];
  *(a3 + 208) = v7;
  *(a3 + 224) = v16;
  v8 = v15[3];
  *(a3 + 128) = v15[2];
  *(a3 + 144) = v8;
  v9 = v15[5];
  *(a3 + 160) = v15[4];
  *(a3 + 176) = v9;
  v10 = v15[1];
  *(a3 + 96) = v15[0];
  *(a3 + 112) = v10;
  *(a3 + 228) = xmmword_1C18C2750;
  *a3 = a1;
  if (v5)
  {
    v11 = 5;
  }

  else
  {
    v11 = 1;
  }

  v12 = 0.7;
  if (v5)
  {
    v13 = 45;
  }

  else
  {
    v12 = 1.0;
    v13 = 1;
  }

  if (v5)
  {
    v14 = 90;
  }

  else
  {
    v14 = 1;
  }

  *(a3 + 8) = v5;
  *(a3 + 260) = v5;
  *(a3 + 256) = v11;
  *(a3 + 252) = v12;
  *(a3 + 244) = v13;
  *(a3 + 248) = v14;
}

void static MXIComponent.__fromCore(_:)(void *a2@<X8>)
{
  SceneType = REMXIComponentGetSceneType();
  REMXIComponentGetVerticalFoV();
  v4 = v3;
  REMXIComponentGetAspectRatio();
  v6 = v5;
  REMXIComponentGetNearDistance();
  v8 = v7;
  REMXIComponentGetFarDistance();
  v10 = v9;
  LayerCount = REMXIComponentGetLayerCount();
  ResolutionWidth = REMXIComponentGetResolutionWidth();
  ResolutionHeight = REMXIComponentGetResolutionHeight();
  PremultipliedAlpha = REMXIComponentGetPremultipliedAlpha();
  RenderTwoPass = REMXIComponentGetRenderTwoPass();
  SplitMode = REMXIComponentGetSplitMode();
  REMXIComponentGetSplitDepth();
  v17 = v16;
  PerformSRGBConversion = REMXIComponentGetPerformSRGBConversion();
  EnableCroppedForegroundTexture = REMXIComponentGetEnableCroppedForegroundTexture();
  Mesh = REMXIComponentGetMesh();
  if (Mesh)
  {
    v21 = Mesh;
    v51 = ResolutionWidth;
    v52 = ResolutionHeight;
    v56 = SplitMode;
    __dst = a2;
    Texture = REMXIComponentGetTexture();
    v23 = REMXIComponentGetTextures();
    if (v23)
    {
      v24 = v23;
      v25 = specialized static MXISceneResource.fromCFArray(_:)(v24);

      type metadata accessor for MXISceneResource();
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 20) = xmmword_1C18C2760;
      *(v26 + 36) = 0x80000000010;
      *(v26 + 44) = 2048;
      *(v26 + 48) = 1;
      RERetain();
      *(v26 + 56) = v21;
      if (Texture)
      {
        RERetain();
      }

      *(v26 + 64) = Texture;
      v27 = *(v25 + 2);
      if (v27)
      {
        v28 = v25 + 32;
        do
        {
          v28 += 8;
          RERetain();
          --v27;
        }

        while (v27);
      }

      *(v26 + 72) = v25;
      *(v26 + 80) = 0;
      swift_beginAccess();
      *(v26 + 16) = SceneType == 1;
      swift_beginAccess();
      *(v26 + 20) = v4;
      swift_beginAccess();
      *(v26 + 24) = v6;
      swift_beginAccess();
      *(v26 + 28) = v8;
      swift_beginAccess();
      *(v26 + 32) = v10;
      swift_beginAccess();
      *(v26 + 36) = LayerCount;
      swift_beginAccess();
      *(v26 + 40) = v51;
      swift_beginAccess();
      *(v26 + 44) = v52;
      swift_beginAccess();
      *(v26 + 48) = PremultipliedAlpha;
      memset(&__src[16], 0, 37);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of MXIComponent.init(mxiSceneResource:renderTwoPass:));
      *&__src[64] = v29;
      __src[80] = 0;
      *&__src[84] = 0;
      _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(&v75);
      *&__src[192] = v81;
      *&__src[208] = v82;
      __src[224] = v83;
      *&__src[128] = v77;
      *&__src[144] = v78;
      *&__src[160] = v79;
      *&__src[176] = v80;
      *&__src[96] = v75;
      *&__src[112] = v76;
      *&__src[228] = xmmword_1C18C2750;
      *&__src[244] = 0x5A0000002DLL;
      *&__src[252] = 0x53F333333;
      __src[260] = 1;
      *__src = v26;
      __src[8] = RenderTwoPass;

      if (RenderTwoPass)
      {
        REMXIComponentGetProxyWidth();
        v31 = v30;
        REMXIComponentGetProxyHeight();
        v33 = v32;
        REMXIComponentGetProxyDistance();
        v35 = v34;
        REMXIComponentGetProxyCornerRadius();
        *&__src[228] = v31;
        *&__src[232] = v33;
        *&__src[236] = v35;
        *&__src[240] = v36;
        *&__src[244] = REMXIComponentGetProxyWidthSegmentCount();
        *&__src[248] = REMXIComponentGetProxyHeightSegmentCount();
        REMXIComponentGetTwoPassOptionsResolutionScale();
        *&__src[252] = v37;
        *&__src[256] = REMXIComponentGetTwoPassOptionsFramesPerRender();
        __src[260] = REMXIComponentGetTwoPassOptionsDoReprojection();
      }

      v38 = v56;
      if (v56 >= 4)
      {
        v38 = 0;
      }

      *(&v66 + 1) = &type metadata for MXIComponent.MXISplitMode;
      LOBYTE(v65) = v38;
      outlined assign with take of Any?(&v65, &__src[16]);
      *&__src[48] = v17;
      __src[52] = PerformSRGBConversion;
      REMXIComponentGetAlphaThreshold();
      *&__src[84] = v39;
      REMXIComponentGetForegroundRect();
      *&__src[64] = v40;
      __src[80] = EnableCroppedForegroundTexture;
      if (REMXIComponentGetUseCustomMatrices())
      {
        REMXIComponentGetCustomViewMatrix();
        v62 = v42;
        v64 = v41;
        v58 = v44;
        v59 = v43;
        REMXIComponentGetCustomProjectionMatrix();
        v55 = v46;
        v57 = v45;
        v53 = v48;
        v54 = v47;

        v65 = v64;
        v66 = v62;
        v67 = v59;
        v68 = v58;
        v69 = v57;
        v70 = v55;
        v71 = v54;
        v72 = v53;
        _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi_(&v65);
        *&__src[192] = v71;
        *&__src[208] = v72;
        __src[224] = v73;
        *&__src[128] = v67;
        *&__src[144] = v68;
        *&__src[160] = v69;
        *&__src[176] = v70;
        v50 = v65;
        v49 = v66;
      }

      else
      {

        *&__src[192] = v81;
        *&__src[208] = v82;
        __src[224] = v83;
        *&__src[128] = v77;
        *&__src[144] = v78;
        *&__src[160] = v79;
        *&__src[176] = v80;
        v50 = v75;
        v49 = v76;
      }

      *&__src[96] = v50;
      *&__src[112] = v49;
      memcpy(__dst, __src, 0x105uLL);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    MXIComponent.init()(a2);
  }
}

uint64_t MXIComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *v1;
  if (*v1)
  {

    REMXIComponentSetMesh();
    if (*(v2 + 64))
    {
      REMXIComponentSetTexture();
    }

    v4 = specialized static MXISceneResource.toCFArray(_:)(v3);

    REMXIComponentSetTextures();

    swift_beginAccess();
    REMXIComponentSetSceneType();
    swift_beginAccess();
    REMXIComponentSetVerticalFoV();
    swift_beginAccess();
    REMXIComponentSetAspectRatio();
    swift_beginAccess();
    REMXIComponentSetNearDistance();
    swift_beginAccess();
    REMXIComponentSetFarDistance();
    swift_beginAccess();
    if (*(v2 + 36))
    {
      REMXIComponentSetLayerCount();
    }

    swift_beginAccess();
    if (*(v2 + 40))
    {
      REMXIComponentSetResolutionWidth();
    }

    swift_beginAccess();
    if (*(v2 + 44))
    {
      REMXIComponentSetResolutionHeight();
    }

    swift_beginAccess();
    REMXIComponentSetPremultipliedAlpha();
  }

  v5 = *(v1 + 8);
  REMXIComponentSetRenderTwoPass();
  if (v5 == 1)
  {
    REMXIComponentSetProxyWidth();
    REMXIComponentSetProxyHeight();
    REMXIComponentSetProxyDistance();
    REMXIComponentSetProxyCornerRadius();
    REMXIComponentSetProxyWidthSegmentCount();
    REMXIComponentSetProxyHeightSegmentCount();
    REMXIComponentSetTwoPassOptionsResolutionScale();
    REMXIComponentSetTwoPassOptionsFramesPerRender();
    REMXIComponentSetTwoPassOptionsDoReprojection();
    REMXIComponentSetTwoPassOptionsUseProxyRendering();
  }

  outlined init with copy of Any?((v1 + 2), &v14);
  v6 = *(&v15 + 1);
  outlined destroy of Any?(&v14);
  if (v6)
  {
    result = outlined init with copy of Any?((v1 + 2), &v12);
    if (!v13)
    {
      __break(1u);
      return result;
    }

    outlined init with take of Any(&v12, &v14);
    swift_dynamicCast();
  }

  else
  {
    v23 = 0;
  }

  REMXIComponentSetSplitMode();
  REMXIComponentSetSplitDepth();
  REMXIComponentSetPerformSRGBConversion();
  REMXIComponentSetAlphaThreshold();
  REMXIComponentSetForegroundRect();
  REMXIComponentSetEnableCroppedForegroundTexture();
  v8 = *(v1 + 13);
  v20 = *(v1 + 12);
  v21 = v8;
  v22 = *(v1 + 224);
  v9 = *(v1 + 9);
  v16 = *(v1 + 8);
  v17 = v9;
  v10 = *(v1 + 11);
  v18 = *(v1 + 10);
  v19 = v10;
  v11 = *(v1 + 7);
  v14 = *(v1 + 6);
  v15 = v11;
  if (_s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOg(&v14) == 1)
  {
    REMXIComponentSetUseCustomMatrices();
  }

  else
  {
    REMXIComponentSetUseCustomMatrices();
    REMXIComponentSetCustomProjectionMatrix();
    REMXIComponentSetCustomViewMatrix();
  }

  return RENetworkMarkComponentDirty();
}

Swift::Int MXIComponent.MXISplitMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

Swift::Int MXIComponent.MXIOptimizationMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

BOOL specialized static MXIComponent.ProxyConfiguration.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0])
  {
    return a1[1].i32[1] == a2[1].i32[1];
  }

  return result;
}

double _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOg(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type MXIComponent.MXISplitMode and conformance MXIComponent.MXISplitMode()
{
  result = lazy protocol witness table cache variable for type MXIComponent.MXISplitMode and conformance MXIComponent.MXISplitMode;
  if (!lazy protocol witness table cache variable for type MXIComponent.MXISplitMode and conformance MXIComponent.MXISplitMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MXIComponent.MXISplitMode, &type metadata for MXIComponent.MXISplitMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MXIComponent.MXISplitMode and conformance MXIComponent.MXISplitMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MXIComponent.MXIOptimizationMode and conformance MXIComponent.MXIOptimizationMode()
{
  result = lazy protocol witness table cache variable for type MXIComponent.MXIOptimizationMode and conformance MXIComponent.MXIOptimizationMode;
  if (!lazy protocol witness table cache variable for type MXIComponent.MXIOptimizationMode and conformance MXIComponent.MXIOptimizationMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MXIComponent.MXIOptimizationMode, &type metadata for MXIComponent.MXIOptimizationMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MXIComponent.MXIOptimizationMode and conformance MXIComponent.MXIOptimizationMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MXIComponent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 261))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for MXIComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 260) = 0;
    *(result + 256) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 261) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 261) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy129_16(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MXIComponent.CameraMatrixDriver(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 129))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MXIComponent.CameraMatrixDriver(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 128) = 0;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 129) = v3;
  return result;
}

uint64_t destructiveInjectEnumTag for MXIComponent.CameraMatrixDriver(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    *(result + 128) = 1;
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MXIComponent.TwoPassOffscreenOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MXIComponent.TwoPassOffscreenOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MXIComponent.TreatmentsControl(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

Swift::Int __swiftcall UniqueIDManager.generateNextUnassignedID()()
{
  v1 = v0;
  v2 = *(v0 + 16);

  os_unfair_lock_lock(v2 + 4);

  result = swift_beginAccess();
  v4 = v1[3];
  for (i = v1[4]; *(v4 + 16); v4 = v1[3])
  {
    result = MEMORY[0x1C68F4BF0](*(v4 + 40), i);
    v6 = -1 << *(v4 + 32);
    v7 = result & ~v6;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      break;
    }

    v8 = ~v6;
    while (*(*(v4 + 48) + 8 * v7) != i)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if (__OFADD__(i++, 1))
    {
      goto LABEL_14;
    }

    v1[4] = i;
  }

LABEL_9:
  if (__OFADD__(i, 1))
  {
    __break(1u);
  }

  else
  {
    v1[4] = i + 1;
    result = specialized Set.contains(_:)(i, v4);
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(&v11, i);
      swift_endAccess();
      v10 = v1[2];

      os_unfair_lock_unlock(v10 + 4);

      return i;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t UniqueIDManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t HasCollision.collision.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (*(*v1 + 112))(v8);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(v2, v3, v4, 0, *v6);

  return v5(v8, 0);
}

uint64_t HasCollision.collision.getter@<X0>(void *a1@<X8>)
{
  (*(*v1 + 96))(&v4);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA09CollisionD0V_Tt0B5(a1);
}

uint64_t key path setter for HasCollision.collision : <A>A(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;

  return HasCollision.collision.setter(&v3);
}

void (*HasCollision.collision.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  HasCollision.collision.getter(v7);
  return HasCollision.collision.modify;
}

void HasCollision.collision.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5[0] = **a1;
  v5[1] = v3;
  v5[2] = v4;
  if (a2)
  {

    HasCollision.collision.setter(v5);
  }

  else
  {
    HasCollision.collision.setter(v5);
  }

  free(v2);
}

uint64_t REAudioGeneratorConfigurationWrapper.__deallocating_deinit()
{
  REAudioGeneratorConfigurationDestroy();

  return swift_deallocClassInstance();
}

uint64_t QuerySelectors.ComponentQueryResult.__allocating_init(entity:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

double QuerySelectors.ComponentQueryResult.entity.getter()
{
  specialized QuerySelectors.ComponentQueryResult.entity.getter();

  return result;
}

uint64_t QuerySelectors.ComponentQueryResult.entity.setter(uint64_t a1)
{
  specialized QuerySelectors.ComponentQueryResult.entity.setter(a1);
}

uint64_t (*QuerySelectors.ComponentQueryResult.entity.modify(uint64_t (**a1)()))()
{
  a1[1] = v1;
  result = *(v1 + 16);
  if (result)
  {
    *a1 = result;

    return QuerySelectors.ComponentQueryResult.entity.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t QuerySelectors.ComponentQueryResult.component.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  result = v1[2];
  if (result)
  {
    v11[1] = v1[2];
    v9 = *(v3 + 88);

    Entity.ComponentSet.subscript.getter(v4, v9, v7);

    Description = v4[-1].Description;
    result = Description[6](v7, 1, v4);
    if (result != 1)
    {
      return Description[4](a1, v7, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t QuerySelectors.ComponentQueryResult.component.setter(uint64_t a1)
{
  v3 = *v1;
  specialized QuerySelectors.ComponentQueryResult.component.setter(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*QuerySelectors.ComponentQueryResult.component.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  QuerySelectors.ComponentQueryResult.component.getter(v9);
  return QuerySelectors.ComponentQueryResult.component.modify;
}

void QuerySelectors.ComponentQueryResult.component.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized QuerySelectors.ComponentQueryResult.component.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized QuerySelectors.ComponentQueryResult.component.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t QuerySelectors.ComponentQueryResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized QuerySelectors.ComponentQueryResult.entity.getter()
{
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized QuerySelectors.ComponentQueryResult.entity.setter(uint64_t a1)
{
  *(v1 + 16) = a1;
}

void specialized QuerySelectors.ComponentQueryResult.component.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = v1[2];
  if (v10)
  {
    v11 = *(v4 - 8);
    (*(v11 + 16))(v9, a1, v4, v7);
    (*(v11 + 56))(v9, 0, 1, v4);
    v16 = v10;
    v12 = *(v3 + 88);
    swift_retain_n();
    specialized Entity.ComponentSet.subscript.setter(v9, v4, v4, v12);
    (*(v6 + 8))(v9, v5);
    v13 = *(v16 + 16);

    v14 = *(v10 + 16);

    if (v13 == v14)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t protocol witness for Component.__toCore(_:) in conformance BillboardComponent(void *a1)
{
  REBillboardComponentSetBlendFactor();

  return RENetworkMarkComponentDirty();
}

uint64_t BillboardComponent.__toCore(_:)(void *a1)
{
  REBillboardComponentSetBlendFactor();

  return RENetworkMarkComponentDirty();
}

void AudioFileResource.Configuration.init(from:)(uint64_t a2@<X8>)
{
  if ((REAssetHandleIsLoaded() & 1) == 0)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.audio);
    v12 = static os_log_type_t.error.getter();
    v13 = Logger.logObject.getter();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C1358000, v13, v12, "In order to construct an AudioFileResource.Configuration, the underlying CoreRE AudioFileAsset\nmust be at least partially loaded. Initializing AudioFileResource.Configuration with default\nvalues instead.", v14, 2u);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }

    v4 = 0;
    RandomizeStart = 0;
    v15 = 0;
    v8 = 0;
    v10 = 0;
    v16 = 1;
    v17 = -1;
    v18 = 0.0;
    v19 = -1;
    goto LABEL_25;
  }

  Streaming = REAudioFileAssetGetStreaming();
  v4 = REAudioFileAssetGetLoopCount() != 0;
  RandomizeStart = REAudioFileAssetGetRandomizeStart();
  v6 = REAudioFileAssetGetMixGroupName();
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v16 = Streaming ^ 1;
  NormalizationMode = REAudioFileAssetGetNormalizationMode();
  REAudioFileAssetGetTargetLUFS();
  if (NormalizationMode == 2)
  {
    v17 = 0;
  }

  else
  {
    v18 = 0.0;
    if (NormalizationMode != 1)
    {
      v17 = -1;
      goto LABEL_18;
    }

    if (v21 == *MEMORY[0x1E6998DF0])
    {
      v17 = 2;
      goto LABEL_18;
    }

    v17 = 1;
  }

  v18 = v21;
LABEL_18:
  CalibrationMode = REAudioFileAssetGetCalibrationMode();
  REAudioFileAssetGetCalibrationLevel();
  switch(CalibrationMode)
  {
    case 0:
      v15 = 0;
      v19 = -1;
LABEL_25:
      *a2 = v16;
      *(a2 + 1) = v4;
      *(a2 + 2) = RandomizeStart;
      *(a2 + 8) = v18;
      *(a2 + 16) = v17;
      *(a2 + 24) = v15;
      *(a2 + 32) = v19;
      *(a2 + 40) = v8;
      *(a2 + 48) = v10;
      *(a2 + 56) = 0;
      *(a2 + 60) = 1;
      return;
    case 1:
      v19 = 0;
LABEL_24:
      v15 = v23;
      goto LABEL_25;
    case 2:
      v19 = 1;
      goto LABEL_24;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

_BYTE *AudioFileResource.Configuration.init(loadingStrategy:shouldLoop:shouldRandomizeStartTime:normalization:calibration:mixGroupName:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *a5;
  v11 = *(a5 + 8);
  *a8 = *result;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 8) = v8;
  *(a8 + 16) = v9;
  *(a8 + 24) = v10;
  *(a8 + 32) = v11;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = 0;
  *(a8 + 60) = 1;
  return result;
}

void AudioFileResource.Configuration.normalization.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t AudioFileResource.Configuration.normalization.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void AudioFileResource.Configuration.calibration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AudioFileResource.Configuration.calibration.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t AudioFileResource.Configuration.mixGroupName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void AudioFileResource.Configuration.mixGroupName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t AudioFileResource.Configuration.layoutTagOverride.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

void AudioFileResource.Configuration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v13 = *(v1 + 56);
  v9 = *(v1 + 60);
  String.hash(into:)();

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  if (v5 == 255)
  {
    Hasher._combine(_:)(0);
    if (v7 == 255)
    {
      goto LABEL_19;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v5)
    {
      if (v5 != 1)
      {
        MEMORY[0x1C68F4C10](0);
        if (v7 == 255)
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
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1C68F4C50](v11);
    if (v7 == 255)
    {
LABEL_19:
      Hasher._combine(_:)(0);
      if (!v8)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

LABEL_12:
  Hasher._combine(_:)(1u);
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1C68F4C10]((v7 & 1) != 0);
  MEMORY[0x1C68F4C50](v12);
  if (!v8)
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
  Hasher._combine(_:)(v13);
}

Swift::Int AudioFileResource.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  AudioFileResource.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioFileResource.Configuration()
{
  Hasher.init(_seed:)();
  AudioFileResource.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioFileResource.Configuration()
{
  Hasher.init(_seed:)();
  AudioFileResource.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL specialized static AudioFileResource.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v27 = *(a1 + 8);
  v32 = *(a1 + 16);
  v3 = *(a1 + 24);
  v30 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 60);
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v29 = *(a2 + 8);
  v33 = *(a2 + 16);
  v34 = *(a1 + 2);
  v10 = *(a2 + 24);
  v11 = *a1 == 0;
  v31 = *(a2 + 32);
  if (*a1)
  {
    v12 = 0x64616F6C657270;
  }

  else
  {
    v12 = 0x6D6165727473;
  }

  v26 = *(a2 + 40);
  v28 = *(a2 + 48);
  if (v11)
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  v25 = *(a2 + 56);
  if (*a2)
  {
    v14 = 0x64616F6C657270;
  }

  else
  {
    v14 = 0x6D6165727473;
  }

  if (*a2)
  {
    v15 = 0xE700000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  v16 = *(a2 + 60);
  if (v12 == v14 && v13 == v15)
  {

    result = 0;
    if (v2 != v8 || ((v34 ^ v9) & 1) != 0)
    {
      return result;
    }

LABEL_21:
    if (v32 == 255)
    {
      if (v33 != 255)
      {
        return 0;
      }

      goto LABEL_34;
    }

    if (v33 == 255)
    {
      return 0;
    }

    if (v32)
    {
      if (v32 != 1)
      {
        result = 0;
        if (v33 != 2 || v29 != 0.0)
        {
          return result;
        }

        goto LABEL_34;
      }

      result = 0;
      if (v33 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v33)
      {
        return result;
      }
    }

    if (v27 != v29)
    {
      return result;
    }

LABEL_34:
    if (v30 == 255)
    {
      if (v31 != 255)
      {
        return 0;
      }
    }

    else
    {
      if (v31 == 255)
      {
        return 0;
      }

      result = 0;
      if (v30)
      {
        if ((v31 & 1) == 0)
        {
          return result;
        }
      }

      else if (v31)
      {
        return result;
      }

      if (v3 != v10)
      {
        return result;
      }
    }

    if (v5)
    {
      if (!v28 || (v4 != v26 || v5 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v28)
    {
      return 0;
    }

    if ((v7 & 1) == 0)
    {
      if (v6 == v25)
      {
        v23 = v16;
      }

      else
      {
        v23 = 1;
      }

      return (v23 & 1) == 0;
    }

    return (v16 & 1) != 0;
  }

  v24 = *(a2 + 60);
  v18 = v5;
  v19 = v4;
  v20 = v7;
  v21 = v6;
  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v22 & 1) != 0 && ((v2 ^ v8) & 1) == 0)
  {
    v6 = v21;
    v7 = v20;
    v4 = v19;
    v5 = v18;
    v16 = v24;
    if (((v34 ^ v9) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioFileResource.Configuration and conformance AudioFileResource.Configuration()
{
  result = lazy protocol witness table cache variable for type AudioFileResource.Configuration and conformance AudioFileResource.Configuration;
  if (!lazy protocol witness table cache variable for type AudioFileResource.Configuration and conformance AudioFileResource.Configuration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioFileResource.Configuration, &type metadata for AudioFileResource.Configuration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileResource.Configuration and conformance AudioFileResource.Configuration);
  }

  return result;
}

uint64_t protocol witness for static RegisterableComponent.register() in conformance __RKEntityInteractionsComponent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  (a3)(0, a2);
  swift_allocObject();
  result = a5();
  if (!v6)
  {
    v10 = result;
    swift_beginAccess();
    *a6 = v10;
  }

  return result;
}

uint64_t protocol witness for static RegisterableComponent.unregister() in conformance __RKEntityInteractionsComponent(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  *a3 = 0;
}

uint64_t static QuerySelector.project(from:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v9 + 16))(&v13 - v8, a1, AssociatedTypeWitness, v7);
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCast();
  return (*(*(v10 - 8) + 56))(a4, v11 ^ 1u, 1, v10);
}

uint64_t static QuerySelectors.QueryTypeSelector.project(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t static PhotogrammetryFileHelpers.requiredBytesCheckpointDir(maxNumImagesBytes:)(uint64_t a1)
{
  v1 = (a1 * 3) >> 64;
  result = 3 * a1;
  if (v1 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

id one-time initialization function for byteFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v0 setAllowedUnits_];
  [v0 setAdaptive_];
  [v0 setIncludesUnit_];
  result = [v0 setCountStyle_];
  static PhotogrammetryFileHelpers.byteFormatter = v0;
  return result;
}

id static PhotogrammetryFileHelpers.byteFormatter.getter()
{
  if (one-time initialization token for byteFormatter != -1)
  {
    swift_once();
  }

  v1 = static PhotogrammetryFileHelpers.byteFormatter;

  return v1;
}

uint64_t one-time initialization function for maxNumImagesForMobileReconstruction()
{
  type metadata accessor for ObjectCaptureSession();
  v0 = type metadata accessor for ObjectCaptureSession.HardwareSpecs();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ObjectCaptureSession.hardwareSpecs.getter();
  v4 = ObjectCaptureSession.HardwareSpecs.maxNumImages.getter();
  result = (*(v1 + 8))(v3, v0);
  static PhotogrammetryFileHelpers.maxNumImagesForMobileReconstruction = v4;
  return result;
}

uint64_t one-time initialization function for requiredBytesForImagesCaptureDirectory()
{
  if (one-time initialization token for maxNumImagesForMobileReconstruction != -1)
  {
    result = swift_once();
  }

  if ((static PhotogrammetryFileHelpers.maxNumImagesForMobileReconstruction * 5000000) >> 64 == (5000000 * static PhotogrammetryFileHelpers.maxNumImagesForMobileReconstruction) >> 63)
  {
    static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory = 5000000 * static PhotogrammetryFileHelpers.maxNumImagesForMobileReconstruction;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory.getter()
{
  if (one-time initialization token for requiredBytesForImagesCaptureDirectory != -1)
  {
    swift_once();
  }

  return static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory;
}

void one-time initialization function for temporaryDirectory()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static PhotogrammetryFileHelpers.temporaryDirectory);
  __swift_project_value_buffer(v0, static PhotogrammetryFileHelpers.temporaryDirectory);
  v1 = [objc_opt_self() defaultManager];
  v2 = [v1 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t static PhotogrammetryFileHelpers.temporaryDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for temporaryDirectory != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static PhotogrammetryFileHelpers.temporaryDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static PhotogrammetryFileHelpers.getAvailableStorage(ofDir:)(uint64_t a1)
{
  if (one-time initialization token for freeStorageProvider == -1)
  {
  }

  else
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  return specialized PhotogrammetryFileHelpers.SystemFreeStorageProvider.freeStorageBytes(forDir:)(a1);
}

uint64_t one-time initialization function for freeStorageProvider()
{
  v0 = type metadata accessor for PhotogrammetryFileHelpers.SystemFreeStorageProvider();
  result = swift_allocObject();
  qword_1EBEAF5A0 = v0;
  unk_1EBEAF5A8 = &protocol witness table for PhotogrammetryFileHelpers.SystemFreeStorageProvider;
  static PhotogrammetryFileHelpers.freeStorageProvider = result;
  return result;
}

uint64_t specialized static PhotogrammetryFileHelpers.ensureDirectoryExists(directory:)(uint64_t a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &property descriptor for UnlitMaterial.readsDepth;
  if (URL.isFileURL.getter())
  {
    v8 = v3;
    LOBYTE(v45[0]) = 0;
    v9 = [objc_opt_self() defaultManager];
    v10 = a1;
    v11 = URL.path.getter();
    v12 = MEMORY[0x1C68F3280](v11);

    v13 = [v9 fileExistsAtPath:v12 isDirectory:v45];

    if (v13 && (v45[0] & 1) != 0)
    {
      v14 = 1;
      return v14 & 1;
    }

    a1 = v10;
    v3 = v8;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, logger);
  (*(v4 + 16))(v6, a1, v3);
  v44[3] = v16;
  v17 = v6;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v44[2] = v1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v45[0] = v22;
    *v21 = 141558274;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v44[1] = a1;
    v25 = v24;
    v26 = *(v4 + 8);
    v14 = v4 + 8;
    v26(v17, v3);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v45);
    v7 = &property descriptor for UnlitMaterial.readsDepth;

    *(v21 + 14) = v27;
    _os_log_impl(&dword_1C1358000, v18, v19, "Creating directory: %{mask.hash}s...", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1C6902A30](v22, -1, -1);
    MEMORY[0x1C6902A30](v21, -1, -1);
  }

  else
  {

    v28 = *(v4 + 8);
    v14 = v4 + 8;
    v28(v17, v3);
  }

  v29 = [objc_opt_self() v7[414]];
  URL._bridgeToObjectiveC()(v30);
  v32 = v31;
  v45[0] = 0;
  v33 = [v29 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:v45];

  if (v33)
  {
    v34 = v45[0];
    v14 = specialized static PhotogrammetryFileHelpers.doesDirectoryExist(directory:)(v35);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45[0] = v39;
      *v38 = 136315138;
      if (v14)
      {
        v40 = 0x2173736563637553;
      }

      else
      {
        v40 = 0x216572756C696146;
      }

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, 0xE800000000000000, v45);

      *(v38 + 4) = v41;
      _os_log_impl(&dword_1C1358000, v36, v37, "... %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1C6902A30](v39, -1, -1);
      MEMORY[0x1C6902A30](v38, -1, -1);
    }
  }

  else
  {
    v42 = v45[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v14 & 1;
}

uint64_t specialized PhotogrammetryFileHelpers.SystemFreeStorageProvider.freeStorageBytes(forDir:)(uint64_t a1)
{
  v2 = type metadata accessor for URLResourceValues();
  v65 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - v14;
  v16 = *(v6 + 16);
  v16(&v59 - v14, a1, v5, v13);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, logger);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C1358000, v21, v22, "Can't compute free storage of a non file URL!", v23, 2u);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    (*(v6 + 8))(v15, v5);
    return 0;
  }

  v63 = v2;
  v64 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v18 = *MEMORY[0x1E695DD50];
  *(inited + 32) = *MEMORY[0x1E695DD50];
  v19 = v18;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSURLResourceKey(inited + 32);
  URL.resourceValues(forKeys:)();

  v24 = URLResourceValues.volumeAvailableCapacityForImportantUsage.getter();
  if (v25)
  {
    v26 = v64;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, logger);
    (v16)(v8, v15, v26);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v66[0] = v31;
      *v30 = 141558274;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL();
      LODWORD(v62) = v29;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v26;
      v35 = v34;
      v36 = *(v6 + 8);
      v37 = v8;
      v38 = v33;
      v36(v37, v33);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v35, v66);

      *(v30 + 14) = v39;
      _os_log_impl(&dword_1C1358000, v28, v62, "Can't get storage capacity for %{mask.hash}s so assuming 0!", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1C6902A30](v31, -1, -1);
      MEMORY[0x1C6902A30](v30, -1, -1);

      (*(v65 + 8))(v4, v63);
      v36(v15, v38);
    }

    else
    {

      v57 = *(v6 + 8);
      v57(v8, v26);
      (*(v65 + 8))(v4, v63);
      v57(v15, v26);
    }

    return 0;
  }

  v62 = v24;
  v41 = v64;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, logger);
  (v16)(v11, v15, v41);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v61 = v44;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v66[0] = v46;
    *v45 = 141558530;
    *(v45 + 4) = 1752392040;
    *(v45 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL();
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v41;
    v50 = v49;
    v60 = *(v6 + 8);
    v60(v11, v48);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v50, v66);

    *(v45 + 14) = v51;
    *(v45 + 22) = 2082;
    if (one-time initialization token for byteFormatter != -1)
    {
      swift_once();
    }

    v52 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v66);

    *(v45 + 24) = v56;
    _os_log_impl(&dword_1C1358000, v43, v61, "Storage capacity for: %{mask.hash}s == %{public}s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v46, -1, -1);
    MEMORY[0x1C6902A30](v45, -1, -1);

    (*(v65 + 8))(v4, v63);
    v60(v15, v48);
    return v62;
  }

  else
  {

    v58 = *(v6 + 8);
    v58(v11, v41);
    (*(v65 + 8))(v4, v63);
    v58(v15, v41);
    return v62;
  }
}

BOOL specialized static PhotogrammetryFileHelpers.checkIfSufficientStorageSpace(requiredBytes:directory:)(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v52 - v8;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, logger);
  v12 = *(v4 + 16);
  v12(v9, a2, v3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v52[0] = v12;
    v52[1] = v11;
    v53 = a2;
    v54 = v6;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v58 = v16;
    *v15 = 141558530;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v55 = v4;
    v56 = *(v4 + 8);
    v56(v9, v3);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v58);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2082;
    if (one-time initialization token for byteFormatter != -1)
    {
      swift_once();
    }

    v21 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v58);

    *(v15 + 24) = v25;
    _os_log_impl(&dword_1C1358000, v13, v14, "Checking for reconstruction storage space at url=%{mask.hash}s Required bytes=%{public}s...", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v16, -1, -1);
    MEMORY[0x1C6902A30](v15, -1, -1);

    v6 = v54;
    a2 = v53;
    v12 = v52[0];
  }

  else
  {

    v56 = *(v4 + 8);
    v56(v9, v3);
  }

  if (one-time initialization token for freeStorageProvider != -1)
  {
    swift_once();
  }

  v26 = specialized PhotogrammetryFileHelpers.SystemFreeStorageProvider.freeStorageBytes(forDir:)(a2);
  v27 = v57;
  if (v26 < v57)
  {
    v12(v6, a2, v3);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58 = v40;
      *v39 = 141558530;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL();
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v6;
      v44 = v43;
      v56(v42, v3);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, &v58);

      *(v39 + 14) = v45;
      *(v39 + 22) = 2082;
      if (one-time initialization token for byteFormatter != -1)
      {
        swift_once();
      }

      v46 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v58);

      *(v39 + 24) = v50;
      _os_log_impl(&dword_1C1358000, v37, v38, "... Failed!  Not enough storage in %{mask.hash}s.  Only have: %{public}s.", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v40, -1, -1);
      MEMORY[0x1C6902A30](v39, -1, -1);
    }

    else
    {

      v56(v6, v3);
    }
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 136446210;
      if (one-time initialization token for byteFormatter != -1)
      {
        swift_once();
      }

      v32 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v58);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_1C1358000, v28, v29, "... Success.  Have storage space of %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1C6902A30](v31, -1, -1);
      MEMORY[0x1C6902A30](v30, -1, -1);
    }
  }

  return v26 >= v27;
}

BOOL specialized static PhotogrammetryFileHelpers.isEmptyDirectory(_:)(__n128 a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (URL.isFileURL.getter())
  {
    LOBYTE(v17[0]) = 0;
    v1 = objc_opt_self();
    v2 = [v1 defaultManager];
    v3 = URL.path.getter();
    v4 = MEMORY[0x1C68F3280](v3);

    v5 = [v2 fileExistsAtPath:v4 isDirectory:v17];

    if (v5)
    {
      if (v17[0])
      {
        v6 = [v1 defaultManager];
        v7 = URL.path.getter();
        v8 = MEMORY[0x1C68F3280](v7);

        v17[0] = 0;
        v9 = [v6 contentsOfDirectoryAtPath:v8 error:v17];

        v10 = v17[0];
        if (v9)
        {
          v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v10;

          v13 = *(v11 + 16);

          return v13 == 0;
        }

        v15 = v17[0];
        v16 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }

  return 0;
}

BOOL specialized static PhotogrammetryFileHelpers.isExistingDirectory(_:)(uint64_t a1, __n128 a2)
{

  return specialized static PhotogrammetryFileHelpers.doesDirectoryExist(directory:)(a2);
}

BOOL specialized static PhotogrammetryFileHelpers.doesDirectoryExist(directory:)(__n128 a1)
{
  v7 = *MEMORY[0x1E69E9840];
  result = 0;
  if (URL.isFileURL.getter())
  {
    v6 = 0;
    v1 = [objc_opt_self() defaultManager];
    v2 = URL.path.getter();
    v3 = MEMORY[0x1C68F3280](v2);

    v4 = [v1 fileExistsAtPath:v3 isDirectory:&v6];

    if (v4)
    {
      if (v6 == 1)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t outlined destroy of NSURLResourceKey(uint64_t a1)
{
  type metadata accessor for NSURLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    v3 = type metadata accessor for URL();
    result = swift_getWitnessTable(MEMORY[0x1E6968FE0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t specialized HasHierarchy.parent.getter()
{
  result = REEntityGetParent();
  if (result)
  {
    v1 = result;
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
        specialized static Entity.entityInfoType(_:)(v1);
        if (v2)
        {
          v3 = (*(v2 + 232))();
          v4 = *(v3 + 16);

          MEMORY[0x1C68F9740](v4, 0);
          *(v3 + 16) = v1;
          MEMORY[0x1C68F9740](v1, v3);

          return v3;
        }

        else
        {
          return makeEntity(for:)(v1);
        }
      }
    }
  }

  return result;
}

uint64_t Entity.anchor.getter()
{
  if (swift_conformsToProtocol2())
  {

    return v0;
  }

  Parent = REEntityGetParent();
  if (!Parent)
  {
    return 0;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
LABEL_10:
    v0 = Entity.anchor.getter();

    return v0;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(Parent);
    if (v3)
    {
      v4 = (*(v3 + 232))();
      v5 = *(v4 + 16);

      MEMORY[0x1C68F9740](v5, 0);
      *(v4 + 16) = Parent;
      MEMORY[0x1C68F9740](Parent, v4);
    }

    else
    {
      makeEntity(for:)(Parent);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t HasAnchoring.anchoring.setter(uint64_t a1, __n128 a2)
{
  REAnchoringComponentGetComponentType();
  v4 = REEntityGetOrAddComponentByClass();
  AnchoringComponent.__toCore(_:)(&v4);
  REAnchorComponentGetComponentType();
  REEntityRemoveComponentByClass();

  return outlined destroy of AnchoringComponent(a1);
}

uint64_t HasAnchoring.anchoring.getter@<X0>(_BYTE *x8_0@<X8>)
{
  REAnchoringComponentGetComponentType();
  REEntityGetOrAddComponentByClass();

  return AnchoringComponent.init(from:)(x8_0);
}

uint64_t key path setter for HasAnchoring.anchoring : <A>A(uint64_t a1)
{
  v2 = type metadata accessor for AnchoringComponent(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnchoringComponent(a1, v4, type metadata accessor for AnchoringComponent);
  return HasAnchoring.anchoring.setter(v4, v5);
}

void (*HasAnchoring.anchoring.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2, __n128 a3)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(type metadata accessor for AnchoringComponent(0) - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v9[4] = v11;
  REAnchoringComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  AnchoringComponent.init(from:)(v12);
  return HasAnchoring.anchoring.modify;
}

void HasAnchoring.anchoring.modify(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  if (a2)
  {
    outlined init with copy of AnchoringComponent(*(*a1 + 32), v4, type metadata accessor for AnchoringComponent);
    HasAnchoring.anchoring.setter(v4, v6);
    outlined destroy of AnchoringComponent(v5);
  }

  else
  {
    HasAnchoring.anchoring.setter(*(*a1 + 32), a3);
  }

  free(v5);
  free(v4);

  free(v3);
}

uint64_t HasAnchoring.anchorIdentifier.getter@<X0>(uint64_t a2@<X8>)
{
  REAnchorComponentGetComponentType();
  if (REEntityGetComponentByClass() && (AnchorIdentifier = REAnchorComponentGetAnchorIdentifier(), !uuid_is_null(AnchorIdentifier)))
  {
    UUID.init(uuid:)();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

void HasAnchoring.reanchor(_:preservingWorldTransform:)(uint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for AnchoringComponent(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-v12];
  outlined init with copy of AnchoringComponent(a1, &v23[-v12], type metadata accessor for AnchoringComponent.Target);
  *&v13[v8[7]] = 1;
  *&v13[v8[8]] = 1;
  v14 = &v13[v8[9]];
  v23[64] = 1;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  v14[64] = 1;
  if (a2)
  {
    *&v15 = HasTransform.transformMatrix(relativeTo:)(0, a3);
    v23[32] = 0;
    *v14 = v15;
    *(v14 + 1) = v16;
    *(v14 + 2) = v17;
    *(v14 + 3) = v18;
    v14[64] = 0;
  }

  outlined init with copy of AnchoringComponent(v13, v10, type metadata accessor for AnchoringComponent);
  HasAnchoring.anchoring.setter(v10, v19);
  swift_beginAccess();
  v20 = static RealityFusionSession.sharedSession;
  if (static RealityFusionSession.sharedSession)
  {
    swift_beginAccess();
    if (v20[2])
    {
      v21 = RFServiceManagerGetAnchorManagementService();
      if (v21)
      {
        v22 = v21;
        if (!(*(*v3 + 120))())
        {
          outlined destroy of AnchoringComponent(v13);

          return;
        }

        RFAnchorManagementUpdateAnchoringInScene();
      }
    }
  }

  outlined destroy of AnchoringComponent(v13);
}

uint64_t outlined destroy of AnchoringComponent(uint64_t a1)
{
  v2 = type metadata accessor for AnchoringComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of AnchoringComponent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double AnimationView.init(source:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, float a12@<S2>, char a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *&v37 = a2;
  *(&v37 + 1) = a3;
  v22 = *(a4 + 16);
  v34 = *a6;
  v35 = *a7;
  if (v22 == 255)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 == 255)
  {
    v24 = 0xE000000000000000;
  }

  else
  {
    v24 = a4[1];
  }

  if (v22 == 255)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(a4 + 16);
  }

  outlined consume of BindTarget?(0, 0, 0xFFu);
  v39[0] = 0;
  v40 = 0;
  type metadata accessor for TimelineDefinition();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = v39[0];
  v28 = v40;
  v39[0] = 0;
  v40 = 0;
  v39[61] = 0;
  v39[56] = 0;
  v39[48] = 0;
  v39[40] = 0;
  *&v41 = a8;
  WORD4(v41) = a13 & 1;
  *&v42 = a14;
  WORD4(v42) = a15 & 1;
  *&v43 = a16;
  WORD4(v43) = a17 & 1;
  *&v44 = a10;
  BYTE8(v44) = 0;
  *&v45 = a11;
  BYTE8(v45) = 0;
  *(&v45 + 3) = a12;
  LOBYTE(v46) = 0;
  BYTE1(v46) = v34;
  *(&v46 + 1) = 0;
  v47 = v37;
  *&v48 = v23;
  *(&v48 + 1) = v24;
  LOBYTE(v49) = v25;
  DWORD1(v49) = a5;
  BYTE8(v49) = v27;
  BYTE9(v49) = v35;
  WORD5(v49) = v28;
  v50 = v26;
  outlined init with copy of __REAssetService(a1, v39);
  AnimationView.source.setter(v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = v48;
  *(a9 + 96) = v47;
  *(a9 + 112) = v29;
  *(a9 + 128) = v49;
  *(a9 + 144) = v50;
  v30 = v44;
  *(a9 + 32) = v43;
  *(a9 + 48) = v30;
  v31 = v46;
  *(a9 + 64) = v45;
  *(a9 + 80) = v31;
  result = *&v41;
  v33 = v42;
  *a9 = v41;
  *(a9 + 16) = v33;
  return result;
}

void *AnimationView.createResource()()
{
  v1 = *(v0 + 112);
  v51 = *(v0 + 96);
  v52 = v1;
  v53 = *(v0 + 128);
  v54 = *(v0 + 144);
  v2 = *(v0 + 48);
  v47 = *(v0 + 32);
  v48 = v2;
  v3 = *(v0 + 80);
  v49 = *(v0 + 64);
  v50 = v3;
  v4 = *(v0 + 16);
  v45 = *v0;
  v46 = v4;
  if (v45.n128_u8[9] == 1 && BYTE9(v46) == 1 && BYTE9(v47) == 1 && BYTE8(v48) == 1 && BYTE8(v49) == 1 && v50 == 1 && BYTE1(v50) == 4 && __PAIR128__(*(&v51 + 1), *(&v50 + 1)) == 0 && v53 == 255 && BYTE8(v53) && BYTE10(v53) && BYTE11(v53) == 2)
  {
    if (*(v54 + 16))
    {
      v5 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v5 + 120, &v35);
      v6 = *(&v36 + 1);
      v7 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      (*(v7 + 32))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(&v35);
      result = RETimelineDefinitionCreateTimelineAsset();
      if (result)
      {
        v9 = result;
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
        return v13;
      }

      return result;
    }

    return 0;
  }

  v14 = *(&v50 + 1);
  if (*(&v50 + 1))
  {
    v15 = *(*(&v50 + 1) + 16) == 0;
  }

  else if (*(v54 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
  {
    v17 = ClipSourceRef;
    type metadata accessor for TimelineDefinition();
    *(swift_allocObject() + 16) = v17;
    RERetain();
    RERelease();
    v15 = 0;
  }

  else
  {
    type metadata accessor for TimelineDefinition();
    *(swift_allocObject() + 16) = 0;
    v15 = 1;
  }

  if (v15)
  {
    return 0;
  }

  v18 = *(v0 + 112);
  v41 = *(v0 + 96);
  v42 = v18;
  v43 = *(v0 + 128);
  v44 = *(v0 + 144);
  v19 = *(v0 + 48);
  v37 = *(v0 + 32);
  v38 = v19;
  v20 = *(v0 + 80);
  v39 = *(v0 + 64);
  v40 = v20;
  v21 = *(v0 + 16);
  v35 = *v0;
  v36 = v21;
  if (TimelineClipProperties.isClipped.getter(v35))
  {
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v34 = v54;
    v27 = v47;
    v28 = v48;
    v29 = v49;
    v30 = v50;
    v25 = v45;
    v26 = v46;
    outlined init with copy of TimelineClipProperties(&v45, &v35);
    v22 = TimelineClipProperties.createClip()();
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v35 = v25;
    v36 = v26;
    outlined destroy of TimelineClipProperties(&v35);
  }

  else
  {
    if (!v14)
    {
      if (*(v54 + 16) && (v23 = RETimelineDefinitionCreateClipSourceRef()) != 0)
      {
        v24 = v23;
        type metadata accessor for TimelineDefinition();
        *(swift_allocObject() + 16) = v24;
        RERetain();
        RERelease();
      }

      else
      {
        type metadata accessor for TimelineDefinition();
        *(swift_allocObject() + 16) = 0;
      }
    }

    v22 = TimelineDefinition.resource.getter();
  }

  return v22;
}

uint64_t AnimationView.name.getter()
{
  if (v0[13])
  {
    v1 = v0[12];
  }

  else if (*(v0[18] + 16))
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

double key path getter for AnimationView.name : AnimationView@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[13];
  if (v4)
  {
    *a2 = a1[12];
    a2[1] = v4;
  }

  else if (*(a1[18] + 16))
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

  return result;
}

void AnimationView.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

void (*AnimationView.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = v1[13];
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = v1[12];
    v5 = v3;
  }

  else
  {
    v4 = *(v1[18] + 16);
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

  return AnimationView.name.modify;
}

void AnimationView.name.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 96) = v3;
    *(v4 + 104) = v2;
  }

  else
  {

    *(v4 + 96) = v3;
    *(v4 + 104) = v2;
  }
}

uint64_t AnimationView.blendLayer.getter()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 132);
  }

  result = *(*(v0 + 144) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t AnimationView.blendLayer.setter(uint64_t result)
{
  *(v1 + 132) = result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t *(*AnimationView.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 136) == 1)
  {
    v2 = *(*(v1 + 144) + 16);
    if (v2)
    {
      v3 = a1;
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 132);
  }

  *(a1 + 8) = v2;
  return OrbitAnimation.speed.modify;
}

uint64_t AnimationView.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 138))
  {
    result = *(*(v1 + 144) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 137);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*AnimationView.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 138))
  {
    v2 = *(*(v1 + 144) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 137);
  }

  *(a1 + 8) = v2;
  return AnimationView.fillMode.modify;
}

uint64_t AnimationView.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 128);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 144) + 16);
    if (v5)
    {
      v8 = *(v1 + 112);
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

uint64_t key path setter for AnimationView.bindTarget : AnimationView(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 112);
  v6 = *(a2 + 120);
  v7 = *(a1 + 16);
  v8 = *(a2 + 128);
  outlined copy of BindTarget(*a1, v4, v7);
  result = outlined consume of BindTarget?(v5, v6, v8);
  *(a2 + 112) = v3;
  *(a2 + 120) = v4;
  *(a2 + 128) = v7;
  return result;
}

uint64_t AnimationView.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 112), *(v1 + 120), *(v1 + 128));
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  return result;
}

uint64_t (*AnimationView.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v6 = v3;
  v7 = v4;
  v8 = *(v1 + 128);
  if (v5 == 255)
  {
    v6 = *(*(v1 + 144) + 16);
    if (v6)
    {
      v9 = *(v1 + 112);
      v10 = *(v1 + 120);
      v11 = *(v1 + 128);
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
  return AnimationView.bindTarget.modify;
}

uint64_t AnimationView.bindTarget.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(v2 + 112);
  v7 = *(v2 + 120);
  v8 = *(v2 + 128);
  if (a2)
  {
    outlined copy of BindTarget(*a1, v3, v5);
    outlined consume of BindTarget?(v6, v7, v8);
    *(v2 + 112) = v4;
    *(v2 + 120) = v3;
    *(v2 + 128) = v5;

    return outlined consume of BindTarget(v4, v3, v5);
  }

  else
  {
    result = outlined consume of BindTarget?(*(v2 + 112), *(v2 + 120), *(v2 + 128));
    *(v2 + 112) = v4;
    *(v2 + 120) = v3;
    *(v2 + 128) = v5;
  }

  return result;
}

uint64_t AnimationView.trimStart.getter()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    return *v0;
  }

  result = *(*(v0 + 144) + 16);
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

uint64_t *key path getter for AnimationView.trimStart : AnimationView@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 9))
  {
    result = *(result[18] + 16);
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
    v4 = *result;
    v3 = *(result + 8);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationView.trimStart.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 9) = 0;
  return result;
}

uint64_t (*AnimationView.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 9))
  {
    if (*(v1[18] + 16) && (ClipStart = RETimelineDefinitionGetClipStart()) != 0)
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
    v5 = *v1;
    v4 = *(v1 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation.trimStart.modify;
}

uint64_t AnimationView.trimEnd.getter()
{
  if ((*(v0 + 25) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = *(*(v0 + 144) + 16);
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

uint64_t *key path getter for AnimationView.trimEnd : AnimationView@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 25))
  {
    result = *(result[18] + 16);
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
    v4 = result[2];
    v3 = *(result + 24);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationView.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  *(v2 + 25) = 0;
  return result;
}

uint64_t (*AnimationView.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 25))
  {
    if (*(*(v1 + 144) + 16) && (ClipEnd = RETimelineDefinitionGetClipEnd()) != 0)
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
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation.trimEnd.modify;
}

uint64_t AnimationView.trimDuration.getter()
{
  if ((*(v0 + 41) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = *(*(v0 + 144) + 16);
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

uint64_t *key path getter for AnimationView.trimDuration : AnimationView@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 41))
  {
    result = *(result[18] + 16);
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
    v4 = result[4];
    v3 = *(result + 40);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationView.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  *(v2 + 41) = 0;
  return result;
}

uint64_t (*AnimationView.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 41))
  {
    if (*(*(v1 + 144) + 16) && (ClipDuration = RETimelineDefinitionGetClipDuration()) != 0)
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
    v5 = *(v1 + 32);
    v4 = *(v1 + 40);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation.trimDuration.modify;
}

double AnimationView.offset.getter()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  result = 0.0;
  if (*(*(v0 + 144) + 16))
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

void key path getter for AnimationView.offset : AnimationView(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 56))
  {
    v4 = 0;
    if (*(*(a1 + 144) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipOffset();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(a1 + 48);
  }

  *a2 = v4;
}

void *(*AnimationView.offset.modify(double *a1, double a2))(void *result)
{
  *(a1 + 1) = v2;
  if (*(v2 + 56))
  {
    v4 = 0;
    if (*(*(v2 + 144) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipOffset();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 48);
  }

  *a1 = v4;
  return protocol witness for AnimationDefinition.offset.modify in conformance AnyActionAnimation;
}

double AnimationView.delay.getter()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  result = 0.0;
  if (*(*(v0 + 144) + 16))
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

void key path getter for AnimationView.delay : AnimationView(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 72))
  {
    v4 = 0;
    if (*(*(a1 + 144) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipDelay();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(a1 + 64);
  }

  *a2 = v4;
}

void *(*AnimationView.delay.modify(double *a1, double a2))(void *result)
{
  *(a1 + 1) = v2;
  if (*(v2 + 72))
  {
    v4 = 0;
    if (*(*(v2 + 144) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipDelay();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 64);
  }

  *a1 = v4;
  return protocol witness for AnimationDefinition.delay.modify in conformance AnyActionAnimation;
}

float AnimationView.speed.getter(__n128 a1)
{
  if ((*(v1 + 80) & 1) == 0)
  {
    return *(v1 + 76);
  }

  result = 1.0;
  if (*(*(v1 + 144) + 16))
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

uint64_t key path getter for AnimationView.speed : AnimationView@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  if (*(result + 80))
  {
    v4 = 1.0;
    if (*(*(result + 144) + 16))
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
    v4 = *(result + 76);
  }

  *a2 = v4;
  return result;
}

uint64_t *(*AnimationView.speed.modify(uint64_t a1, double a2))(uint64_t *result)
{
  *a1 = v2;
  if (*(v2 + 80))
  {
    v4 = 1.0;
    if (*(*(v2 + 144) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipSpeed();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 76);
  }

  *(a1 + 8) = v4;
  return protocol witness for AnimationDefinition.speed.modify in conformance AnyActionAnimation;
}

uint64_t AnimationView.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v2 + 81);
  if (result == 4)
  {
    if (!*(*(v2 + 144) + 16))
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

_BYTE *(*AnimationView.repeatMode.modify(uint64_t a1, double a2))(_BYTE *result)
{
  *a1 = v2;
  v3 = *(v2 + 81);
  if (v3 == 4)
  {
    if (*(*(v2 + 144) + 16))
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
  return FromToByAnimation.repeatMode.modify;
}

double AnimationView.source.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 88);
  if (v4)
  {
    if (*(v4 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!*(*(v2 + 144) + 16) || (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) == 0)
  {
    type metadata accessor for TimelineDefinition();
    *(swift_allocObject() + 16) = 0;
    goto LABEL_9;
  }

  v16 = ClipSourceRef;
  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = v16;
  RERetain();
  RERelease();
LABEL_3:

  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, v17);
  v6 = v18;
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v7 + 32))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v17);
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

    AnimationResource.definition.getter(a1);

    return result;
  }

LABEL_10:

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AnimationView.source.setter(uint64_t a1)
{
  outlined init with copy of AnimationDefinition?(a1, &v7);
  if (v8)
  {
    outlined init with take of BindableDataInternal(&v7, v9);
    v3 = specialized static AnimationResource.generate(with:)(v9);
    v4 = specialized TimelineDefinition.__allocating_init(_:)(v3);
    outlined destroy of AnimationDefinition?(a1);
    __swift_destroy_boxed_opaque_existential_1(v9);

    *(v1 + 88) = v4;
  }

  else
  {
    outlined destroy of AnimationDefinition?(a1);
    outlined destroy of AnimationDefinition?(&v7);
    type metadata accessor for TimelineDefinition();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;

    *(v1 + 88) = v6;
  }

  return result;
}

void (*AnimationView.source.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  AnimationView.source.getter(v3);
  return AnimationView.source.modify;
}

void AnimationView.source.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of AnimationDefinition?(*a1, v2 + 40);
    AnimationView.source.setter(v2 + 40);
    outlined destroy of AnimationDefinition?(v2);
  }

  else
  {
    AnimationView.source.setter(*a1);
  }

  free(v2);
}

void AnimationView.defaultDuration.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  v5 = *(v0 + 24);
  v6 = *(v0 + 25);
  v7 = v0[18];
  v9 = (v0 + 10);
  v8 = *(v0 + 10);
  v10 = *(v0 + 106);
  v40 = *(v0 + 90);
  v41 = v10;
  *v42 = *(v0 + 122);
  v11 = *(v0 + 42);
  v36 = *(v0 + 26);
  v37 = v11;
  v12 = *(v0 + 74);
  v38 = *(v0 + 58);
  v28 = v1;
  v29 = v2;
  v30 = v3;
  v31 = v8;
  v32 = *(v0 + 7);
  v33 = v4;
  v34 = v5;
  v35 = v6;
  v13 = v0[17];
  v39 = v12;
  *&v42[14] = v13;
  v43 = v7;
  AnimationView.source.getter(v25);
  v14 = v26;
  outlined destroy of AnimationDefinition?(v25);
  if (v14)
  {
    if (!RELinkedOnOrAfterFall2025OSVersions() || (v15 = *(v9 + 6), v40 = *(v9 + 5), v41 = v15, *v42 = *(v9 + 7), v16 = *(v9 + 2), v36 = *(v9 + 1), v37 = v16, v17 = *(v9 + 4), v38 = *(v9 + 3), v28 = v1, v29 = v2, v30 = v3, v31 = *v9, v32 = *(v9 + 2), v33 = v4, v34 = v5, v35 = v6, v18 = *(v9 + 126), v39 = v17, *&v42[14] = v18, v43 = v7, AnimationView.repeatMode.getter(v25), !LOBYTE(v25[0])))
    {
      if ((v3 & 1) != 0 && *(v7 + 16))
      {
        RETimelineDefinitionGetClipStart();
      }

      if (v6)
      {
        if (*(v7 + 16) && RETimelineDefinitionGetClipEnd())
        {
          return;
        }
      }

      else if ((v5 & 1) == 0)
      {
        return;
      }

      v28 = v1;
      v29 = v2;
      v30 = v3;
      v31 = *v9;
      v32 = *(v9 + 2);
      v33 = v4;
      v34 = v5;
      v35 = v6;
      v19 = *(v9 + 6);
      v40 = *(v9 + 5);
      v41 = v19;
      *v42 = *(v9 + 7);
      v20 = *(v9 + 126);
      v21 = *(v9 + 2);
      v36 = *(v9 + 1);
      v37 = v21;
      v22 = *(v9 + 4);
      v38 = *(v9 + 3);
      v39 = v22;
      *&v42[14] = v20;
      v43 = v7;
      AnimationView.source.getter(v25);
      v23 = v26;
      if (v26)
      {
        v24 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*(v24 + 272))(v23, v24);
        __swift_destroy_boxed_opaque_existential_1(v25);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double AnimationView.duration.getter(__n128 a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 76);
  v6 = *(v1 + 80);
  v7 = *(v1 + 144);
  if (*(v1 + 41))
  {
    if (*(v7 + 16))
    {
      ClipDuration = RETimelineDefinitionGetClipDuration();
      if (ClipDuration)
      {
        v2 = *ClipDuration;
        goto LABEL_7;
      }
    }
  }

  else if ((*(v1 + 40) & 1) == 0)
  {
    goto LABEL_7;
  }

  AnimationView.defaultDuration.getter();
  v2 = v9;
LABEL_7:
  if (v4)
  {
    v10 = 0.0;
    if (*(v7 + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipDelay();
      v10 = v11;
    }

    if (v6)
    {
      goto LABEL_12;
    }

LABEL_16:
    v12 = v5;
    return v10 + v2 / fabsf(v12);
  }

  v10 = v3;
  if ((v6 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v12 = 1.0;
  if (*(v7 + 16) && RETimelineDefinitionGetTimelineType() == 2)
  {
    RETimelineDefinitionGetClipSpeed();
    v12 = v13;
  }

  return v10 + v2 / fabsf(v12);
}

uint64_t AnimationView.init(_:)@<X0>(uint64_t a2@<X8>)
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

      v8 = v7;
      *(v3 + 16) = v7;
      if (v7)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {

          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 1;
          v13 = 2;
          v14 = 1;
LABEL_13:
          *a2 = 0;
          *(a2 + 8) = 0;
          *(a2 + 9) = 1;
          *(a2 + 10) = v27;
          *(a2 + 14) = v28;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          *(a2 + 25) = 1;
          *(a2 + 26) = v25;
          *(a2 + 30) = v26;
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          *(a2 + 41) = 1;
          *(a2 + 46) = v24;
          *(a2 + 42) = v23;
          *(a2 + 48) = 0;
          *(a2 + 56) = 1;
          *(a2 + 57) = *v22;
          *(a2 + 60) = *&v22[3];
          *(a2 + 64) = 0;
          *(a2 + 72) = 1;
          *(a2 + 73) = v20;
          *(a2 + 75) = v21;
          *(a2 + 76) = 0;
          *(a2 + 80) = 1;
          *(a2 + 81) = 4;
          *(a2 + 86) = v19;
          *(a2 + 82) = v18;
          *(a2 + 88) = v9;
          *(a2 + 96) = v10;
          *(a2 + 104) = v11;
          *(a2 + 112) = 0;
          *(a2 + 120) = 0;
          *(a2 + 128) = -1;
          *(a2 + 131) = v17;
          *(a2 + 129) = v16;
          *(a2 + 132) = 0;
          *(a2 + 136) = v14;
          *(a2 + 137) = 0;
          *(a2 + 138) = v12;
          *(a2 + 139) = v13;
          *(a2 + 144) = v3;
          return result;
        }

        v8 = *(v3 + 16);
      }

      if (v8)
      {
        RETimelineDefinitionGetName();
        v10 = String.init(cString:)();
        v11 = v15;
      }

      else
      {

        v10 = 0;
        v11 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      result = swift_allocObject();
      v13 = 0;
      v9 = v3;
      *(result + 16) = 0;
      v14 = 0;
      v12 = 0;
      v3 = result;
      goto LABEL_13;
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

uint64_t protocol witness for AnimationDefinition.name.getter in conformance AnimationView()
{
  if (v0[13])
  {
    v1 = v0[12];
  }

  else if (*(v0[18] + 16))
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

void protocol witness for AnimationDefinition.name.setter in conformance AnimationView(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance AnimationView(uint64_t **a1))()
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
  v2[4] = AnimationView.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.getter in conformance AnimationView()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 132);
  }

  result = *(*(v0 + 144) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.setter in conformance AnimationView(uint64_t result)
{
  *(v1 + 132) = result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.fillMode.getter in conformance AnimationView@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 138))
  {
    result = *(*(v1 + 144) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 137);
  }

  *a1 = result;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.bindTarget.setter in conformance AnimationView(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 112), *(v1 + 120), *(v1 + 128));
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance AnimationView(double **a1))()
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
  *(v2 + 32) = AnimationView.offset.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance AnimationView(double **a1))()
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
  *(v2 + 32) = AnimationView.delay.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.speed.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.repeatMode.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

void *protocol witness for AnimationDefinitionInternal.generate() in conformance AnimationView()
{
  result = AnimationView.createResource()();
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

uint64_t outlined init with copy of AnimationDefinition?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnimationDefinition?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for AnimationView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = a5;
  v22[7] = a6;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v22[0] = a1;
    v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = 0uLL;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v22;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_12:
    _StringGuts._slowWithCString<A>(_:)();
    return outlined destroy of IKRig.Joint(a4);
  }

  v9 = 0uLL;
  v35 = 0u;
  v36 = 0u;
  v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v26 = 0u;
  v27 = 0u;
LABEL_6:
  v23[0] = a3;
  v23[1] = v10;
  v11 = *(a4 + 48);
  v24 = *(a4 + 64);
  v25 = v11;
  LOBYTE(v26) = *(a4 + 80);
  DWORD1(v26) = 65793;
  BYTE8(v26) = 1;
  HIDWORD(v26) = 1065353216;
  v12 = *(a4 + 112);
  v27 = *(a4 + 96);
  v28 = v12;
  v29 = 0uLL;
  LOBYTE(v30) = 0;
  BYTE12(v30) = 0;
  v32 = v9;
  v33 = v9;
  *(&v30 + 4) = 0;
  LODWORD(v36) = 1008981770;
  v13 = *(a4 + 128);
  v31 = v9;
  if ((v13 & 0xFF00000000) == 0x300000000)
  {
    BYTE1(v33) = 0;
    DWORD1(v33) = 1065353216;
    v34 = xmmword_1C18C2F70;
    v14 = xmmword_1C18C2F80;
  }

  else
  {
    v15 = *(a4 + 144);
    v16 = *(a4 + 160);
    LOWORD(v33) = 257;
    DWORD1(v33) = v13;
    DWORD2(v33) = BYTE4(v13);
    v17 = vdupq_n_s32(0x42652EE2u);
    *&v18 = vmulq_f32(v15, v17).u64[0];
    *(&v18 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(57.296, v15, 2));
    v34 = v18;
    *&v14 = vmulq_f32(v16, v17).u64[0];
    *(&v14 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(57.296, v16, 2));
  }

  v35 = v14;
  MEMORY[0x1C68F5390](a5, v23, a6, a2);
  v19 = *a6;
  if (v19)
  {
    MEMORY[0x1C68F5250](a5);
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v20 = v19;
    swift_willThrow();
  }

  return outlined destroy of IKRig.Joint(a4);
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6, uint64_t *a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v31[4] = a3;
  v31[5] = a4;
  v31[6] = a5;
  v31[7] = a6;
  v31[8] = a7;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_47;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v10 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = a3;
      v33 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v11 = *(a4 + 80);
      if (v11 == 2)
      {
        v12 = 0;
        LODWORD(v13) = 0;
      }

      else
      {
        v23 = *(a4 + 96);
        v13 = *(a4 + 88);
        if (v13 >= 0x7FFFFFFF)
        {
          v13 = 0x7FFFFFFFLL;
        }

        if (v13 <= 0xFFFFFFFF80000000)
        {
          LODWORD(v13) = 0x80000000;
        }

        v36 = *(a4 + 96);
        v38 = xmmword_1C18C2F90;
        *a5 = fmaxf(fmaxf(*&v23, *(&v23 + 2)), *(&v23 + 1)) + *a5;
        v10 = 0x100010001;
        v12 = 1;
      }

      LOBYTE(v34) = v12;
      DWORD1(v34) = vuzp1_s8(v10, v10).u32[0];
      HIDWORD(v34) = v13;
      v18 = *(a4 + 128);
      if (v18 == 255)
      {
        v24 = 0;
        LODWORD(v25) = 0;
        v26 = 0;
      }

      else
      {
        v27 = *(a4 + 144);
        v25 = *(a4 + 136);
        if (v25 >= 0x7FFFFFFF)
        {
          v25 = 0x7FFFFFFFLL;
        }

        if (v25 <= 0xFFFFFFFF80000000)
        {
          LODWORD(v25) = 0x80000000;
        }

        v37 = *(a4 + 144);
        v39 = xmmword_1C18C2FA0;
        *a5 = fmaxf(fmaxf(*&v27, *(&v27 + 2)), *(&v27 + 1)) + *a5;
        v26 = 0x100010001;
        v24 = 1;
      }

      BYTE1(v34) = v24;
      DWORD2(v34) = vuzp1_s8(v26, v26).u32[0];
      LODWORD(v35) = v25;
      goto LABEL_34;
    }

LABEL_47:
    _StringGuts._slowWithCString<A>(_:)();
    return outlined destroy of IKRig.Constraint(a4);
  }

  v31[0] = a1;
  v31[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v14 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = a3;
  v33 = v31;
  v11 = *(a4 + 80);
  if (v11 == 2)
  {
    v15 = 0;
    LODWORD(v16) = 0;
  }

  else
  {
    v17 = *(a4 + 96);
    v16 = *(a4 + 88);
    if (v16 >= 0x7FFFFFFF)
    {
      v16 = 0x7FFFFFFFLL;
    }

    if (v16 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v16) = 0x80000000;
    }

    v36 = *(a4 + 96);
    v38 = xmmword_1C18C2F90;
    *a5 = fmaxf(fmaxf(*&v17, *(&v17 + 2)), *(&v17 + 1)) + *a5;
    v14 = 0x100010001;
    v15 = 1;
  }

  LOBYTE(v34) = v15;
  DWORD1(v34) = vuzp1_s8(v14, v14).u32[0];
  HIDWORD(v34) = v16;
  v18 = *(a4 + 128);
  if (v18 == 255)
  {
    v19 = 0;
    LODWORD(v20) = 0;
    v21 = 0;
  }

  else
  {
    v22 = *(a4 + 144);
    v20 = *(a4 + 136);
    if (v20 >= 0x7FFFFFFF)
    {
      v20 = 0x7FFFFFFFLL;
    }

    if (v20 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v20) = 0x80000000;
    }

    v37 = *(a4 + 144);
    v39 = xmmword_1C18C2FA0;
    *a5 = fmaxf(fmaxf(*&v22, *(&v22 + 2)), *(&v22 + 1)) + *a5;
    v21 = 0x100010001;
    v19 = 1;
  }

  BYTE1(v34) = v19;
  DWORD2(v34) = vuzp1_s8(v21, v21).u32[0];
  LODWORD(v35) = v20;
LABEL_34:
  MEMORY[0x1C68F5380](a6, &v32, a7);
  v28 = *a7;
  if (!v28)
  {
    if (v11 != 2)
    {
      CoreIKRigConstraintSetPositionAsPoleEnabled();
    }

    if (v18 == 255)
    {
      goto LABEL_45;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        CoreIKGenericSolverRigSetLookAtEnabled();
LABEL_45:
        CoreIKRigConstraintSetOffset();
        return outlined destroy of IKRig.Constraint(a4);
      }

      CoreIKGenericSolverRigSetLookAtEnabled();
      CoreIKGenericSolverRigSetUsesLocalSpaceLookAtAxis();
    }

    else
    {
      CoreIKGenericSolverRigSetLookAtEnabled();
      CoreIKGenericSolverRigSetUsesModelSpaceLookAtAxis();
    }

    CoreIKGenericSolverRigSetLookAtAxis();
    goto LABEL_45;
  }

  MEMORY[0x1C68F5250](a6);
  type metadata accessor for CFErrorRef(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
  swift_allocError();
  *v29 = v28;
  swift_willThrow();
  return outlined destroy of IKRig.Constraint(a4);
}

uint64_t IKResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t IKResource.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v1;
}

uint64_t IKResource.deinit()
{
  REAssetSetSwiftObject();
  RERelease();
  return v0;
}

uint64_t IKResource.__deallocating_deinit()
{
  REAssetSetSwiftObject();
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t IKResource.solverDefinitions.getter()
{
  result = REIkRigAssetGetDefinitionCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v14 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v3 = 0;
      v2 = v14;
      do
      {
        IKSolverDefinition.init(asset:index:)(v12);
        v14 = v2;
        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
          v2 = v14;
        }

        ++v3;
        *(v2 + 16) = v5 + 1;
        v6 = v2 + 104 * v5;
        v7 = v12[0];
        v8 = v12[2];
        *(v6 + 48) = v12[1];
        *(v6 + 64) = v8;
        *(v6 + 32) = v7;
        v9 = v12[3];
        v10 = v12[4];
        v11 = v12[5];
        *(v6 + 128) = v13;
        *(v6 + 96) = v10;
        *(v6 + 112) = v11;
        *(v6 + 80) = v9;
      }

      while (v1 != v3);
    }

    return v2;
  }

  return result;
}

uint64_t IKResource.__allocating_init(rig:)(uint64_t *a1)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation18IKSolverDefinitionVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation18IKSolverDefinitionVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.hash.getter();
  *(inited + 88) = xmmword_1C1887610;
  *(inited + 112) = xmmword_1C1887610;
  *(inited + 48) = a1[1];
  v6 = *(a1 + 2);
  *(inited + 56) = *(a1 + 1);
  *(inited + 104) = 6;
  *(inited + 128) = 6;
  *(inited + 32) = v5;
  v7 = inited + 32;
  *(inited + 40) = v3;
  *(inited + 72) = v6;
  v8 = specialized static IKResource.createCoreAssetForDefinition(_:)(inited);
  swift_setDeallocating();
  outlined destroy of IKSolverDefinition(inited + 32);
  if (!v1)
  {
    type metadata accessor for IKResource();
    v7 = swift_allocObject();
    *(v7 + 16) = v8;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v7;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18[0] = a2;
  v18[1] = a1;
  v7 = *(a3 + 48);
  v19 = *(a3 + 64);
  v20 = v7;
  LOBYTE(v21) = *(a3 + 80);
  DWORD1(v21) = 65793;
  BYTE8(v21) = 1;
  HIDWORD(v21) = 1065353216;
  v8 = *(a3 + 112);
  v22 = *(a3 + 96);
  v23 = v8;
  v24 = 0uLL;
  BYTE12(v25) = 0;
  *(&v25 + 4) = 0;
  v27 = 0u;
  v28 = 0u;
  LODWORD(v31) = 1008981770;
  v9 = *(a3 + 128);
  v26 = 0u;
  if ((v9 & 0xFF00000000) == 0x300000000)
  {
    BYTE1(v28) = 0;
    DWORD1(v28) = 1065353216;
    v29 = xmmword_1C18C2F70;
    v10 = xmmword_1C18C2F80;
  }

  else
  {
    v11 = *(a3 + 144);
    v12 = *(a3 + 160);
    LOWORD(v28) = 257;
    DWORD1(v28) = v9;
    DWORD2(v28) = BYTE4(v9);
    v13 = vdupq_n_s32(0x42652EE2u);
    *&v14 = vmulq_f32(v11, v13).u64[0];
    *(&v14 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(57.296, v11, 2));
    v29 = v14;
    *&v10 = vmulq_f32(v12, v13).u64[0];
    *(&v10 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(57.296, v12, 2));
  }

  v30 = v10;
  result = MEMORY[0x1C68F5390](a4, v18, a5);
  v16 = *a5;
  if (v16)
  {
    MEMORY[0x1C68F5250](a4);
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v17 = v16;
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, uint64_t *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21[0] = a2;
  v21[1] = a1;
  v9 = *(a3 + 80);
  if (v9 == 2)
  {
    v10 = 0;
    LODWORD(v11) = 0;
  }

  else
  {
    v12 = *(a3 + 96);
    v11 = *(a3 + 88);
    if (v11 >= 0x7FFFFFFF)
    {
      v11 = 0x7FFFFFFFLL;
    }

    if (v11 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v11) = 0x80000000;
    }

    v24 = *(a3 + 96);
    v26 = xmmword_1C18C2F90;
    *a4 = fmaxf(fmaxf(*&v12, *(&v12 + 2)), *(&v12 + 1)) + *a4;
    v8 = 0x100010001;
    v10 = 1;
  }

  LOBYTE(v22) = v10;
  DWORD1(v22) = vuzp1_s8(v8, v8).u32[0];
  HIDWORD(v22) = v11;
  v13 = *(a3 + 128);
  if (v13 == 255)
  {
    v14 = 0;
    LODWORD(v15) = 0;
    v16 = 0;
  }

  else
  {
    v17 = *(a3 + 144);
    v15 = *(a3 + 136);
    if (v15 >= 0x7FFFFFFF)
    {
      v15 = 0x7FFFFFFFLL;
    }

    if (v15 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v15) = 0x80000000;
    }

    v25 = *(a3 + 144);
    v27 = xmmword_1C18C2FA0;
    *a4 = fmaxf(fmaxf(*&v17, *(&v17 + 2)), *(&v17 + 1)) + *a4;
    v16 = 0x100010001;
    v14 = 1;
  }

  BYTE1(v22) = v14;
  DWORD2(v22) = vuzp1_s8(v16, v16).u32[0];
  LODWORD(v23) = v15;
  MEMORY[0x1C68F5380](a5, v21, a6, a4);
  v18 = *a6;
  if (v18)
  {
    MEMORY[0x1C68F5250](a5);
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v19 = v18;
    return swift_willThrow();
  }

  if (v9 != 2)
  {
    CoreIKRigConstraintSetPositionAsPoleEnabled();
  }

  if (v13 != 255)
  {
    if (v13)
    {
      if (v13 != 1)
      {
        CoreIKGenericSolverRigSetLookAtEnabled();
        return CoreIKRigConstraintSetOffset();
      }

      CoreIKGenericSolverRigSetLookAtEnabled();
      CoreIKGenericSolverRigSetUsesLocalSpaceLookAtAxis();
    }

    else
    {
      CoreIKGenericSolverRigSetLookAtEnabled();
      CoreIKGenericSolverRigSetUsesModelSpaceLookAtAxis();
    }

    CoreIKGenericSolverRigSetLookAtAxis();
  }

  return CoreIKRigConstraintSetOffset();
}

uint64_t specialized static SIMD<>.random<A>(in:using:)(float a1, float a2)
{
  if (COERCE_INT(fabs(a2 - a1)) > 2139095039)
  {
    __break(1u);
  }

  else
  {
    v5[5] = v2;
    v5[6] = v3;
    v5[0] = 0;
    MEMORY[0x1C6902A50](v5, 8);
    while ((16777217 * LODWORD(v5[0])) < 0xFFFF01)
    {
      v5[0] = 0;
      MEMORY[0x1C6902A50](v5, 8);
    }

    do
    {
      v5[0] = 0;
      MEMORY[0x1C6902A50](v5, 8);
    }

    while ((16777217 * LODWORD(v5[0])) < 0xFFFF01);
    do
    {
      v5[0] = 0;
      result = MEMORY[0x1C6902A50](v5, 8);
    }

    while ((16777217 * LODWORD(v5[0])) < 0xFFFF01);
  }

  return result;
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = a4;
  v5 = *(a1 + 16);

  if (v5)
  {
    v6 = 32;
    while (1)
    {
      v7 = *(a1 + v6 + 144);
      v31 = *(a1 + v6 + 128);
      v32 = v7;
      v33 = *(a1 + v6 + 160);
      v8 = *(a1 + v6 + 80);
      v27 = *(a1 + v6 + 64);
      v28 = v8;
      v9 = *(a1 + v6 + 112);
      v29 = *(a1 + v6 + 96);
      v30 = v9;
      v10 = *(a1 + v6 + 16);
      v23 = *(a1 + v6);
      v24 = v10;
      v11 = *(a1 + v6 + 48);
      v25 = *(a1 + v6 + 32);
      v26 = v11;
      v12 = v23;
      v22 = v23;
      outlined init with copy of IKRig.Joint(&v23, &v20);
      lazy protocol witness table accessor for type String and conformance String();
      v13 = StringProtocol.hash.getter();
      if ((specialized Set._Variant.insert(_:)(&v20, v13) & 1) == 0)
      {
        break;
      }

      if ((BYTE8(v24) & 1) == 0 && (specialized Set.contains(_:)() & 1) == 0)
      {
        *&v22 = *v34;
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v14;
        MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
        MEMORY[0x1C68F3410](v12, *(&v12 + 1));
        v15 = v20;
        v16 = v21;
        v17 = 5;
        goto LABEL_9;
      }

      outlined destroy of IKRig.Joint(&v23);
      v6 += 176;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    *&v22 = *v34;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v18;
    MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
    MEMORY[0x1C68F3410](v12, *(&v12 + 1));
    v15 = v20;
    v16 = v21;
    v17 = 1;
LABEL_9:
    lazy protocol witness table accessor for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError();
    swift_allocError();
    *v19 = v15;
    *(v19 + 8) = v16;
    *(v19 + 16) = v17;
    swift_willThrow();
    outlined destroy of IKRig.Joint(&v23);
  }

LABEL_10:
}

double specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  v35 = a1;

  if (v5)
  {
    v6 = 32;
    while (1)
    {
      v7 = *(v35 + v6 + 112);
      v31 = *(v35 + v6 + 96);
      v32 = v7;
      v8 = *(v35 + v6 + 144);
      v33 = *(v35 + v6 + 128);
      v34 = v8;
      v9 = *(v35 + v6 + 48);
      v27 = *(v35 + v6 + 32);
      v28 = v9;
      v10 = *(v35 + v6 + 80);
      v29 = *(v35 + v6 + 64);
      v30 = v10;
      v11 = *(v35 + v6 + 16);
      v25 = *(v35 + v6);
      v26 = v11;
      v12 = v25;
      v24 = v25;
      outlined init with copy of IKRig.Constraint(&v25, v23);
      lazy protocol witness table accessor for type String and conformance String();
      v13 = StringProtocol.hash.getter();
      if ((specialized Set._Variant.insert(_:)(v23, v13) & 1) == 0)
      {
        *&v24 = *a4;
        v23[0] = dispatch thunk of CustomStringConvertible.description.getter();
        v23[1] = v16;
        MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
        MEMORY[0x1C68F3410](v12, *(&v12 + 1));
        v18 = v23[1];
        v17 = v23[0];
        v19 = 3;
        goto LABEL_9;
      }

      *v23 = v26;

      StringProtocol.hash.getter();
      v14 = specialized Set.contains(_:)();

      if ((v14 & 1) == 0)
      {
        break;
      }

      outlined destroy of IKRig.Constraint(&v25);
      v6 += 160;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    *&v24 = *a4;
    v23[0] = dispatch thunk of CustomStringConvertible.description.getter();
    v23[1] = v20;
    MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
    MEMORY[0x1C68F3410](v12, *(&v12 + 1));
    v18 = v23[1];
    v17 = v23[0];
    v19 = 4;
LABEL_9:
    lazy protocol witness table accessor for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError();
    swift_allocError();
    *v21 = v17;
    *(v21 + 8) = v18;
    *(v21 + 16) = v19;
    swift_willThrow();
    outlined destroy of IKRig.Constraint(&v25);
  }

  else
  {
LABEL_6:
  }

  return result;
}

void specialized static IKResource.validateSolver(_:)(__int128 *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  v14 = a1[1];
  v15 = v2;
  v5 = a1[4];
  v6 = a1[5];
  v16 = v3;
  v17 = v5;
  v18 = v6;
  v19 = *(a1 + 96);
  v13 = v4;
  v7 = *(&v14 + 1);
  v9 = v15;
  v8 = v3;
  v11 = MEMORY[0x1E69E7CD0];
  v12 = MEMORY[0x1E69E7CD0];
  outlined init with copy of IKSolverDefinition(&v13, v10);
  specialized Sequence.forEach(_:)(v7, v9, &v12, &v13);
  outlined destroy of IKSolverDefinition(&v13);
  if (!v1)
  {
    outlined init with copy of IKSolverDefinition(&v13, v10);
    specialized Sequence.forEach(_:)(*(&v9 + 1), v8, &v11, &v13, &v12);
    outlined destroy of IKSolverDefinition(&v13);
  }
}

uint64_t specialized static IKResource.autotuneRig(_:)(uint64_t a1)
{
  v3 = CoreIKGenericSolverCreate();
  ConstraintCount = CoreIKGenericSolverGetConstraintCount();
  JointCount = CoreIKGenericSolverGetJointCount();
  if (JointCount < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v7 = JointCount;
  if (JointCount)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, JointCount, 0);
    v8 = 0;
    v1 = v28;
    do
    {
      CoreIKGenericSolverGetTargetRestPose();
      v11 = v9;
      v13 = *(v28 + 16);
      v12 = *(v28 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v24 = v10;
        v25 = v9;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v24;
        v11 = v25;
      }

      v6 = v27;
      HIDWORD(v11) = HIDWORD(v27);
      ++v8;
      *(v28 + 16) = v14;
      v15 = v28 + 32 * v13;
      *(v15 + 32) = v11;
      *(v15 + 48) = v10;
      v27 = *(&v11 + 1);
    }

    while (v7 != v8);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  v16 = 0.0;
  v17 = 32;
  do
  {
    v18 = vmulq_f32(*(v1 + v17), *(v1 + v17));
    v16 = v16 + sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
    v17 += 32;
    --v14;
  }

  while (v14);
LABEL_11:
  while (1)
  {
    v26 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    if ((ConstraintCount & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

LABEL_13:
    v20 = 0;
    v6 = v26;
    while (1)
    {
      v21 = 0;
      ++v20;
      if (ConstraintCount)
      {
        break;
      }

LABEL_21:
      v22 = CoreIKGenericSolverSolve();
      if (v20 == 15 || v22 == 2)
      {

        MEMORY[0x1C68F5300](v3);
        MEMORY[0x1C68F5420](a1);
        isUniquelyReferenced_nonNull_native = v3;

        return MEMORY[0x1EEDF9378](isUniquelyReferenced_nonNull_native);
      }
    }

    while (v21 < ConstraintCount)
    {
      if (__OFADD__(v21, 1))
      {
        goto LABEL_27;
      }

      MEMORY[0x1C68F52D0](v3, v21);
      MEMORY[0x1C68F5260]();
      CoreIKGetConstraintTarget();
      specialized static SIMD<>.random<A>(in:using:)(-1.0, 1.0);
      CoreIKGenericConstraintSetTargetParameters();
      if (CoreIKGenericConstraintHasLookAtEnabled())
      {
        CoreIKGenericConstraintGetLookAtTarget();
        specialized static SIMD<>.random<A>(in:using:)(-2.0, 2.0);
        CoreIKGenericConstraintSetLookAtTarget();
        if (ConstraintCount == ++v21)
        {
          goto LABEL_21;
        }
      }

      else if (ConstraintCount == ++v21)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

LABEL_30:
  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  v1 = isUniquelyReferenced_nonNull_native;
  if ((ConstraintCount & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_31:
  __break(1u);
  return MEMORY[0x1EEDF9378](isUniquelyReferenced_nonNull_native);
}

void specialized closure #1 in static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v116 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v79 = *(a1 + 24);
  v76 = *(a1 + 32);
  v75 = *(a1 + 40);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v73 = *(a1 + 56);
  v74 = *(a1 + 88);
  v11 = *(a1 + 96);
  if ((specialized Set._Variant.insert(_:)(&v84, *a1) & 1) == 0)
  {
    lazy protocol witness table accessor for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError();
    swift_allocError();
    *v12 = v4;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
LABEL_7:
    swift_willThrow();
    return;
  }

  *&v84 = v4;
  *(&v84 + 1) = v5;
  *&v85 = __PAIR64__(v7, v6);
  *(&v85 + 1) = v79;
  *v86 = v76;
  *&v86[8] = v75;
  *&v86[24] = v73;
  *&v87 = v8;
  BYTE8(v87) = v9;
  *(&v87 + 9) = *(a1 + 73);
  HIDWORD(v87) = *(a1 + 76);
  *&v88 = v10;
  *(&v88 + 1) = v74;
  LOBYTE(v89) = v11;
  specialized static IKResource.validateSolver(_:)(&v84);
  if (!v77)
  {
    v72 = v11;
    v94 = 0;
    v13 = MEMORY[0x1C68F53C0](0, &v94);
    v14 = v94;
    if (v94)
    {
LABEL_6:
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      swift_allocError();
      *v15 = v14;
      goto LABEL_7;
    }

    v16 = v13;
    v70 = v10;
    v17 = v79;
    v18 = *(v79 + 16);

    v78 = v16;
    v69 = v8;
    v68 = v9;
    v71 = v5;
    if (v18)
    {
      v20 = 0;
      v21 = 32;
      while (1)
      {
        if (v20 >= *(v17 + 16))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
        }

        v22 = *(v17 + v21);
        v23 = *(v17 + v21 + 32);
        v106 = *(v17 + v21 + 16);
        v107 = v23;
        v105 = v22;
        v24 = *(v17 + v21 + 48);
        v25 = *(v17 + v21 + 64);
        v26 = *(v17 + v21 + 96);
        v110 = *(v17 + v21 + 80);
        v111 = v26;
        v108 = v24;
        v109 = v25;
        v27 = *(v17 + v21 + 112);
        v28 = *(v17 + v21 + 128);
        v29 = *(v17 + v21 + 160);
        v114 = *(v17 + v21 + 144);
        v115 = v29;
        v112 = v27;
        v113 = v28;
        if (BYTE8(v106) & 1) == 0 && *(v76 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(), (v30))
        {
          v31 = *(*(v76 + 56) + 8 * v19);
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_50;
          }

          if (v31 >= *(v17 + 16))
          {
            goto LABEL_51;
          }

          v32 = (v79 + 32 + 176 * v31);
          v33 = *v32;
          v34 = v32[2];
          v85 = v32[1];
          *v86 = v34;
          v84 = v33;
          v35 = v32[3];
          v36 = v32[4];
          v37 = v32[6];
          v88 = v32[5];
          v89 = v37;
          *&v86[16] = v35;
          v87 = v36;
          v38 = v32[7];
          v39 = v32[8];
          v40 = v32[10];
          v92 = v32[9];
          v93 = v40;
          v90 = v38;
          v91 = v39;
          v41 = *(&v84 + 1);
          v42 = v84;
          v19 = outlined init with copy of IKRig.Joint(&v84, &v81);
        }

        else
        {
          v42 = 0;
          v41 = 0xE000000000000000;
        }

        v43 = *(&v105 + 1);
        v44 = v105;
        MEMORY[0x1EEE9AC00](v19);
        if ((v43 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v43 & 0x2000000000000000) != 0)
        {
          v81 = v44;
          v82 = v43 & 0xFFFFFFFFFFFFFFLL;
          outlined init with copy of IKRig.Joint(&v105, &v84);
          outlined init with copy of IKRig.Joint(&v105, &v84);
          outlined init with copy of IKRig.Joint(&v105, &v84);

          v45 = &v81;
        }

        else
        {
          if ((v44 & 0x1000000000000000) == 0)
          {
            break;
          }

          outlined init with copy of IKRig.Joint(&v105, &v84);
          outlined init with copy of IKRig.Joint(&v105, &v84);
          outlined init with copy of IKRig.Joint(&v105, &v84);

          v45 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        v16 = v78;
        specialized String.withCString<A>(_:)(v42, v41, v45, &v105, v78, &v94);

        outlined destroy of IKRig.Joint(&v105);
        outlined destroy of IKRig.Joint(&v105);

LABEL_24:
        v17 = v79;
        ++v20;
        v21 += 176;
        if (v18 == v20)
        {
          goto LABEL_27;
        }
      }

      outlined init with copy of IKRig.Joint(&v105, &v84);
      outlined init with copy of IKRig.Joint(&v105, &v84);

      _StringGuts._slowWithCString<A>(_:)();

      outlined destroy of IKRig.Joint(&v105);
      outlined destroy of IKRig.Joint(&v105);

      v16 = v78;
      goto LABEL_24;
    }

LABEL_27:

    v80 = 0.0;
    v46 = *(v75 + 16);

    if (!v46)
    {
LABEL_39:

      MEMORY[0x1C68F5410](&v84, v16);
      v86[2] = 1;
      v64 = 0.05;
      if (v80 <= 10.0)
      {
        v64 = 0.1;
      }

      v65 = 0x7FFFFFFFLL;
      if (v71 < 0x7FFFFFFF)
      {
        v65 = v71;
      }

      if (v65 <= 0xFFFFFFFF80000000)
      {
        LODWORD(v65) = 0x80000000;
      }

      *(&v84 + 2) = v64;
      *&v85 = __PAIR64__(v65, v6);
      HIDWORD(v85) = v7;
      CoreIKRigUpdateSettings();
      MEMORY[0x1C68F53D0](v16, &v94);
      v14 = v94;
      if (!v94)
      {
        specialized static IKResource.autotuneRig(_:)(v16);
        v66 = MEMORY[0x1C68F5240](v16);
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v81 = v73;
        v82 = v69;
        v83 = v68;
        specialized static InternalBindPath.pathFromTarget(_:_:)(&v81, 1);
        v81 = v70;
        v82 = v74;
        v83 = v72;
        specialized static InternalBindPath.pathFromTarget(_:_:)(&v81, 1);
        v81 = 11635;
        v82 = 0xE200000000000000;
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v67);

        String.utf8CString.getter();

        String.utf8CString.getter();

        String.utf8CString.getter();

        String.utf8CString.getter();

        REIkRigAssetBuilderAddRig();

        return;
      }

      MEMORY[0x1C68F5250](v16);
      goto LABEL_6;
    }

    v48 = 0;
    v49 = 32;
    while (1)
    {
      if (v48 >= *(v75 + 16))
      {
        goto LABEL_49;
      }

      v50 = *(v75 + v49 + 16);
      v95 = *(v75 + v49);
      v96 = v50;
      v51 = *(v75 + v49 + 32);
      v52 = *(v75 + v49 + 48);
      v53 = *(v75 + v49 + 80);
      v99 = *(v75 + v49 + 64);
      v100 = v53;
      v97 = v51;
      v98 = v52;
      v54 = *(v75 + v49 + 96);
      v55 = *(v75 + v49 + 112);
      v56 = *(v75 + v49 + 144);
      v103 = *(v75 + v49 + 128);
      v104 = v56;
      v101 = v54;
      v102 = v55;
      v57 = *(&v95 + 1);
      v58 = v95;
      MEMORY[0x1EEE9AC00](v47);
      if ((v57 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v57 & 0x2000000000000000) != 0)
      {
        v81 = v58;
        v82 = v57 & 0xFFFFFFFFFFFFFFLL;
        v61 = *(&v96 + 1);
        v60 = v96;
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        v62 = &v81;
      }

      else
      {
        if ((v58 & 0x1000000000000000) == 0)
        {
          break;
        }

        v59 = v57 & 0xFFFFFFFFFFFFFFFLL;
        v61 = *(&v96 + 1);
        v60 = v96;
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        v62 = (v59 + 32);
      }

      v63 = v61;
      v16 = v78;
      specialized String.withCString<A>(_:)(v60, v63, v62, &v95, &v80, v78, &v94);
      outlined destroy of IKRig.Constraint(&v95);
      v47 = outlined destroy of IKRig.Constraint(&v95);
LABEL_36:
      ++v48;
      v49 += 160;
      if (v46 == v48)
      {
        goto LABEL_39;
      }
    }

    outlined init with copy of IKRig.Constraint(&v95, &v84);
    outlined init with copy of IKRig.Constraint(&v95, &v84);
    _StringGuts._slowWithCString<A>(_:)();
    outlined destroy of IKRig.Constraint(&v95);
    v47 = outlined destroy of IKRig.Constraint(&v95);
    v16 = v78;
    goto LABEL_36;
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; i = (i + 104))
    {
      v8 = i[3];
      v9 = i[5];
      v32 = i[4];
      v33 = v9;
      v10 = i[1];
      v29[0] = *i;
      v29[1] = v10;
      v11 = i[3];
      v13 = *i;
      v12 = i[1];
      v30 = i[2];
      v31 = v11;
      v14 = i[5];
      v26 = v32;
      v27 = v14;
      v22 = v13;
      v23 = v12;
      v34 = *(i + 96);
      v28 = *(i + 96);
      v24 = v30;
      v25 = v8;
      outlined init with copy of IKSolverDefinition(v29, &v15);
      specialized closure #1 in static IKResource.createCoreAssetForDefinition(_:)(&v22, a2, a3);
      if (v3)
      {
        break;
      }

      v19 = v26;
      v20 = v27;
      v21 = v28;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v18 = v25;
      result = outlined destroy of IKSolverDefinition(&v15);
      if (!--v4)
      {
        return result;
      }
    }

    v19 = v26;
    v20 = v27;
    v21 = v28;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    return outlined destroy of IKSolverDefinition(&v15);
  }

  return result;
}

uint64_t specialized static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E69E7CD0];
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v12[0] = 0;
  v7 = REIkRigAssetBuilderCreate();
  specialized Sequence.forEach(_:)(a1, &v11, v7);
  if (v1)
  {
    goto LABEL_4;
  }

  result = REIkRigAssetCreate();
  v9 = v12[0];
  if (v12[0])
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v10 = v9;
    swift_willThrow();
LABEL_4:
    RERelease();

    return v6;
  }

  v6 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError()
{
  result = lazy protocol witness table cache variable for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError;
  if (!lazy protocol witness table cache variable for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IKResource.IKDefinitionError, &type metadata for IKResource.IKDefinitionError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  outlined init with copy of IKRig.Joint(v5, &v9);
  return specialized String.withCString<A>(_:)(v3, v4, a1, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  outlined init with copy of IKRig.Constraint(v3, &v10);
  return specialized String.withCString<A>(_:)(v7, v8, a1, v3, v4, v6, v5);
}

uint64_t one-time initialization function for VideoLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, VideoLogger);
  __swift_project_value_buffer(v0, VideoLogger);
  if (one-time initialization token for VideoLog != -1)
  {
    swift_once();
  }

  v1 = VideoLog;
  return Logger.init(_:)();
}

uint64_t one-time initialization function for VideoLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  VideoLog = result;
  return result;
}

__n128 LowLevelTexture.descriptor.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 88);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

uint64_t LowLevelTexture.Descriptor.init(textureType:pixelFormat:width:height:depth:mipmapLevelCount:arrayLength:textureUsage:swizzle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t LowLevelTexture.__allocating_init(descriptor:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  LowLevelTexture.init(descriptor:)(a1);
  return v2;
}

void LowLevelTexture.init(descriptor:)(uint64_t *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v30 = *(a1 + 64);
  v29 = *(a1 + 65);
  v27 = a1[7];
  v28 = *(a1 + 66);
  v8 = *(a1 + 67);
  v9 = DRTextureDescriptorCreate();
  DRTextureDescriptorSetTextureType();
  v25 = v1;
  v10 = v4;
  DRTextureDescriptorSetPixelFormat();
  DRTextureDescriptorSetWidth();
  DRTextureDescriptorSetHeight();
  v24 = v5;
  DRTextureDescriptorSetDepth();
  v23 = v6;
  DRTextureDescriptorSetMipmapLevelCount();
  if (v7 < 0)
  {
    __break(1u);
  }

  DRTextureDescriptorSetArrayLength();
  v11 = v27;
  DRTextureDescriptorSetTextureUsage();
  DRTextureDescriptorSetSwizzle();
  v36 = 0;
  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v13 = MEMORY[0x1C68FE220](*(v12 + 16));
  if (v13)
  {
    v14 = v13;
    Texture = DRContextCreateTexture();
  }

  else
  {
    v18 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __RenderService?(v18 + 40, &v31);
    if (!v32)
    {
      __break(1u);
      goto LABEL_11;
    }

    outlined init with take of ForceEffectBase(&v31, v33);
    v19 = v34;
    v20 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v20 + 24))(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v21 = RERenderManagerGetRenderDevice();
    Texture = DRTextureCreateUnmanaged();
    swift_unknownObjectRelease();
    v11 = v27;
    v22 = v36;
    if (v36)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      swift_allocError();
      *v16 = v22;
      swift_willThrow();
      v17 = v22;

      type metadata accessor for LowLevelTexture();
      swift_deallocPartialClassInstance();
      return;
    }
  }

  *(v26 + 24) = v2;
  *(v26 + 32) = v25;
  *(v26 + 40) = v10;
  *(v26 + 48) = v3;
  *(v26 + 56) = v24;
  *(v26 + 64) = v23;
  *(v26 + 72) = v7;
  *(v26 + 80) = v11;
  *(v26 + 88) = v30;
  *(v26 + 89) = v29;
  *(v26 + 90) = v28;
  *(v26 + 91) = v8;
  if (Texture)
  {

    *(v26 + 16) = Texture;
    return;
  }

LABEL_11:
  __break(1u);
}

id LowLevelTexture.read()()
{
  Texture = DRTextureReadTexture();

  return Texture;
}

id LowLevelTexture.replace(using:)(uint64_t a1)
{
  v1 = DRTextureReplaceTexture();

  return v1;
}

id LowLevelTexture.tryReplace(using:)(uint64_t a1)
{
  v1 = DRTextureTryReplaceTexture();

  return v1;
}

uint64_t LowLevelTexture.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TextureResource.init(from:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(from:), v4, v3);
}

{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v8);
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v3 + 32))(v2, v3);
  TextureAssetWithDirectTexture = REAssetServiceCreateTextureAssetWithDirectTexture();
  __swift_destroy_boxed_opaque_existential_1(v8);
  type metadata accessor for TextureResource();
  v5 = swift_allocObject();
  *(v5 + 16) = TextureAssetWithDirectTexture;
  *(v5 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  v8[0] = v5;
  RequestLoadable.enforceResourceSharingBeforeECSCommits()();
  if (v6)
  {
  }

  return v5;
}

uint64_t TextureResource.init(from:)()
{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 32))(v2, v3);
  TextureAssetWithDirectTexture = REAssetServiceCreateTextureAssetWithDirectTexture();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  type metadata accessor for TextureResource();
  v5 = swift_allocObject();
  v0[16] = v5;
  *(v5 + 16) = TextureAssetWithDirectTexture;
  *(v5 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  v0[10] = v5;
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = MeshResource.init(from:);
  v7 = v0[12];

  return RequestLoadable.awaitForResourceSharing()(v7, &protocol witness table for TextureResource);
}

uint64_t TextureResource.replace(with:)(uint64_t a1)
{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return RETextureAssetReplaceAllWithDirectTexture();
}

uint64_t static TextureResource.generate(from:)(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  type metadata accessor for TextureResource();

  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = static MeshResource.generate(from:);

  return TextureResource.init(from:)(a1);
}

uint64_t static TextureResource.generate(from:)()
{
  type metadata accessor for TextureResource();

  return TextureResource.init(from:)(v0);
}

__n128 __swift_memcpy68_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

RealityKit::__RKEntityAudioActionType_optional __swiftcall __RKEntityAudioActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityAudioActionType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKEntityAudioActionType.rawValue.getter()
{
  v1 = 0x6573756170;
  if (*v0 != 1)
  {
    v1 = 1886352499;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2036427888;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityAudioActionType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6573756170;
  if (v2 != 1)
  {
    v4 = 1886352499;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2036427888;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6573756170;
  if (*a2 != 1)
  {
    v8 = 1886352499;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2036427888;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityAudioActionType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance __RKEntityAudioActionType(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityAudioActionType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityAudioActionType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6573756170;
  if (v2 != 1)
  {
    v5 = 1886352499;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2036427888;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

RealityKit::__RKAudioSpatialModeSelection_optional __swiftcall __RKAudioSpatialModeSelection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKAudioSpatialModeSelection.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKAudioSpatialModeSelection.rawValue.getter()
{
  v1 = 0x746E6569626D61;
  if (*v0 != 1)
  {
    v1 = 0x636973756DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F7320746E696F70;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKAudioSpatialModeSelection(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746E6569626D61;
  if (v2 != 1)
  {
    v4 = 0x636973756DLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F7320746E696F70;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000065637275;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746E6569626D61;
  if (*a2 != 1)
  {
    v8 = 0x636973756DLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F7320746E696F70;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000065637275;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKAudioSpatialModeSelection()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance __RKAudioSpatialModeSelection(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKAudioSpatialModeSelection()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKAudioSpatialModeSelection(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065637275;
  v4 = 0xE700000000000000;
  v5 = 0x746E6569626D61;
  if (v2 != 1)
  {
    v5 = 0x636973756DLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F7320746E696F70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t __RKEntityAudioAction.type.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 120) = v2;
  return result;
}

double key path setter for __RKEntityAudioAction.path : __RKEntityAudioAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 128) = v3;
  *(v4 + 136) = v2;

  return result;
}

uint64_t __RKEntityAudioAction.path.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);

  return v1;
}

double __RKEntityAudioAction.path.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  return result;
}

uint64_t __RKEntityAudioAction.volume.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t __RKEntityAudioAction.loops.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 152) = a1;
  return result;
}

uint64_t __RKEntityAudioAction.spatialMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 153);
  return result;
}

uint64_t __RKEntityAudioAction.spatialMode.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 153) = v2;
  return result;
}

uint64_t __RKEntityAudioAction.__allocating_init(targetEntity:type:path:volume:loops:spatialMode:multiplePerformBehavior:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, char *a6, _BYTE *a7, double a8)
{
  v16 = swift_allocObject();
  v17 = *a2;
  v18 = *a6;
  LOBYTE(a6) = *a7;
  *(v16 + 112) = 0x4024000000000000;
  *(v16 + 160) = 0;
  *(v16 + 168) = 1;
  *(v16 + 176) = 0;
  *(v16 + 120) = v17;
  *(v16 + 128) = a3;
  *(v16 + 136) = a4;
  *(v16 + 144) = a8;
  *(v16 + 152) = a5;
  *(v16 + 153) = v18;

  v20 = __RKEntityAction.init(targetEntity:)(v19);
  swift_beginAccess();
  *(v20 + 105) = a6;
  swift_beginAccess();
  swift_beginAccess();
  if (!*(v20 + 16))
  {

    goto LABEL_15;
  }

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), !MEMORY[0x1C68FE1F0](ServiceLocator)))
  {

LABEL_15:
    *(v20 + 176) = 0;
    goto LABEL_16;
  }

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  *(v20 + 176) = AssetHandle;
  if (!AssetHandle)
  {
LABEL_16:

    goto LABEL_17;
  }

  REAssetHandleLoadNow();
  if (a1)
  {
    if (REEntityGetSceneNullable())
    {
      if (RESceneGetECSManagerNullable())
      {
        REECSManagerGetServiceLocator();
        if (REServiceLocatorGetAudioService())
        {
          REAudioServiceStartAudioEngine();
        }
      }
    }
  }

LABEL_17:

  return v20;
}

uint64_t __RKEntityAudioAction.init(targetEntity:type:path:volume:loops:spatialMode:multiplePerformBehavior:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, char *a6, char *a7, double a8)
{
  v10 = *a2;
  v11 = *a6;
  v12 = *a7;
  *(v8 + 112) = 0x4024000000000000;
  *(v8 + 160) = 0;
  *(v8 + 168) = 1;
  *(v8 + 176) = 0;
  *(v8 + 120) = v10;
  *(v8 + 128) = a3;
  *(v8 + 136) = a4;
  *(v8 + 144) = a8;
  *(v8 + 152) = a5;
  *(v8 + 153) = v11;

  v14 = __RKEntityAction.init(targetEntity:)(v13);
  swift_beginAccess();
  *(v14 + 105) = v12;
  swift_beginAccess();
  swift_beginAccess();
  if (!*(v14 + 16))
  {

    goto LABEL_15;
  }

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), !MEMORY[0x1C68FE1F0](ServiceLocator)))
  {

LABEL_15:
    *(v14 + 176) = 0;
    goto LABEL_16;
  }

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  *(v14 + 176) = AssetHandle;
  if (!AssetHandle)
  {
LABEL_16:

    goto LABEL_17;
  }

  REAssetHandleLoadNow();
  if (a1)
  {
    if (REEntityGetSceneNullable())
    {
      if (RESceneGetECSManagerNullable())
      {
        REECSManagerGetServiceLocator();
        if (REServiceLocatorGetAudioService())
        {
          REAudioServiceStartAudioEngine();
        }
      }
    }
  }

LABEL_17:

  return v14;
}

uint64_t __RKEntityAudioAction.deinit()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {
    if (REEntityGetSceneNullable())
    {
      if (RESceneGetECSManagerNullable())
      {
        REECSManagerGetServiceLocator();
        if (REServiceLocatorGetAudioService())
        {
          REAudioServiceStopAudioEngine();
        }
      }
    }
  }

  if (*(v0 + 176))
  {
    RERelease();
  }

  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  return v0;
}

uint64_t __RKEntityAudioAction.__deallocating_deinit()
{
  __RKEntityAudioAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t __RKEntityAudioAction.perform(with:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v38 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchTime();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  swift_beginAccess();
  v10 = *(v0 + 16);
  aBlock = 91;
  v44 = 0xE100000000000000;
  if (v10)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    v49 = v10;

    _print_unlocked<A, B>(_:_:)();
    v11 = v50;
    v12 = v51;
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

  v14 = aBlock;
  v15 = v44;
  if (!*(v0 + 16))
  {
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();
LABEL_20:

    return 0;
  }

  swift_beginAccess();
  if (*(v0 + 104) == 1 && *(v0 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v0 + 105))
    {
      if (*(v0 + 105) != 1)
      {

        v16 = __RKEntityAudioAction.stop()();

        return v16;
      }

      goto LABEL_20;
    }
  }

  v35 = v1;
  if (!*(v0 + 176))
  {

    v20 = *(v0 + 96);
    v21 = *(v0 + 104);
    *(v0 + 96) = 4;
    *(v0 + 104) = 1;
    aBlock = v20;
    LOBYTE(v44) = v21;
    __RKEntityAction.state.didset(&aBlock);

    return 0;
  }

  v36 = v14;
  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  *(v0 + 96) = 1;
  *(v0 + 104) = 1;
  aBlock = v17;
  LOBYTE(v44) = v18;

  __RKEntityAction.state.didset(&aBlock);
  REAudioPlayerComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    REAudioPlayerComponentGetComponentType();
    ComponentByClass = REEntityGetOrAddComponentByClass();
    REAudioPlayerComponentRegisterAsset();
    if ((*(v0 + 168) & 1) == 0)
    {
      if (*(v0 + 160))
      {
        swift_beginAccess();
        REAudioPlayerComponentSetLinearGainForToken();
      }
    }
  }

  swift_beginAccess();
  if (*(v0 + 120))
  {
    if (*(v0 + 120) == 1)
    {
      if ((*(v0 + 168) & 1) == 0)
      {
        MEMORY[0x1C68F7230](ComponentByClass, *(v0 + 160));
      }
    }

    else if ((*(v0 + 168) & 1) == 0)
    {
      MEMORY[0x1C68F7360](ComponentByClass, *(v0 + 160));
    }

    goto LABEL_27;
  }

  *(v0 + 160) = REAudioPlayerComponentPrepareAsset();
  *(v0 + 168) = 0;
  swift_beginAccess();
  result = REAudioPlayerComponentSetLinearGainForToken();
  if ((*(v0 + 168) & 1) == 0)
  {
    REAudioPlayerComponentPlayToken();
    v23 = *(v0 + 96);
    v24 = *(v0 + 104);
    *(v0 + 96) = 1;
    *(v0 + 104) = 1;
    aBlock = v23;
    LOBYTE(v44) = v24;
    __RKEntityAction.state.didset(&aBlock);
    REAudioFileAssetGetLengthInSeconds();
    type metadata accessor for OS_dispatch_queue();
    v33 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v25 = *(v42 + 8);
    v42 += 8;
    v34 = v25;
    v25(v6, v41);
    v26 = swift_allocObject();
    swift_weakInit();
    v47 = partial apply for closure #1 in __RKEntityAudioAction.perform(with:);
    v48 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v46 = &block_descriptor_35;
    v27 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v28 = v38;
    v29 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v33;
    MEMORY[0x1C68F3C60](v9, v4, v28, v27);
    _Block_release(v27);

    (*(v40 + 8))(v28, v29);
    (*(v37 + 8))(v4, v39);
    v34(v9, v41);
LABEL_27:
    RENetworkMarkComponentDirty();
    aBlock = v36;
    v44 = v15;
    v31 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v31, &aBlock);

    return 1;
  }

  __break(1u);
  return result;
}