void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v25 = 0;
  v26 = 0;
  v27 = v1;
  v28 = v2;

  v3 = v1(0);
  if (v4)
  {
    v25 = v3;
    v26 = v4;
  }

  specialized MeshBuffer.Iterator.next()(&v23);
  v5 = MEMORY[0x1E69E7CC0];
  if ((v24 & 1) == 0)
  {
    v6 = 0;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v8 = v23;
      if (!v6)
      {
        v9 = v5[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation18MeshJointInfluenceVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation18MeshJointInfluenceVGMR);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 25;
        }

        v15 = v14 >> 3;
        v12[2] = v11;
        v12[3] = 2 * (v14 >> 3);
        v16 = (v12 + 4);
        v17 = v5[3] >> 1;
        if (v5[2])
        {
          if (v12 != v5 || v16 >= &v5[v17 + 4])
          {
            memmove(v12 + 4, v5 + 4, 8 * v17);
          }

          v5[2] = 0;
        }

        v7 = (v16 + 8 * v17);
        v6 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

        v5 = v12;
      }

      v19 = __OFSUB__(v6--, 1);
      if (v19)
      {
        break;
      }

      *v7++ = v8;
      specialized MeshBuffer.Iterator.next()(&v23);
      if (v24)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = 0;
LABEL_24:

  v20 = v5[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v19 = __OFSUB__(v21, v6);
    v22 = v21 - v6;
    if (!v19)
    {
      v5[2] = v22;
      return;
    }

LABEL_30:
    __break(1u);
  }
}

uint64_t specialized static ShapeResource.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if (a1[1].i64[0] != a2[1].i64[0])
  {
    return 0;
  }

  v3 = 0;
  v4 = vmovn_s32(vceqq_f32(a1[2], a2[2]));
  if (v4.i8[0] & 1) != 0 && (v4.i8[2] & 1) != 0 && (v4.i8[4])
  {
    v3 = 0;
    v5 = vmovn_s32(vceqq_f32(a1[3], a2[3]));
    if (v5.i8[0] & 1) != 0 && (v5.i8[2] & 1) != 0 && (v5.i8[4])
    {
      v3 = v5.i8[6];
    }
  }

  return v3 & 1;
}

uint64_t specialized static ShapeResource.generateSphere(radius:)(float a1)
{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v11);
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v11);
  Sphere = REAssetManagerCollisionShapeAssetCreateSphere();
  v5 = type metadata accessor for ShapeResource();
  v6 = swift_allocObject();
  *(v6 + 16) = Sphere;
  REPoseIdentity();
  *(v6 + 32) = v7;
  *(v6 + 48) = v8;
  RERetain();
  REAssetSetSwiftObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v5;
  *(inited + 64) = &protocol witness table for ShapeResource;
  *(inited + 32) = v6;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  RERelease();
  return v6;
}

uint64_t specialized static ShapeResource.generateBox(size:)()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v10);
  v1 = v11;
  v2 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  Box = REAssetManagerCollisionShapeAssetCreateBox();
  v4 = type metadata accessor for ShapeResource();
  v5 = swift_allocObject();
  *(v5 + 16) = Box;
  REPoseIdentity();
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  RERetain();
  REAssetSetSwiftObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v4;
  *(inited + 64) = &protocol witness table for ShapeResource;
  *(inited + 32) = v5;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  RERelease();
  return v5;
}

{
  *(v0 + 96) = REBoxShapeCreate();
  type metadata accessor for MainActor();
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized static ShapeResource.generateBox(size:), v2, v1);
}

{

  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 4));
  v2 = v0[7];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v2);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  result = REAssetManagerCollisionShapeAssetCreateFromCollisionShape();
  if (result)
  {
    v5 = result;
    type metadata accessor for ShapeResource();
    v6 = swift_allocObject();
    v0[14] = v6;
    *(v6 + 16) = v5;
    REPoseIdentity();
    *(v6 + 32) = v7;
    *(v6 + 48) = v8;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    v9 = swift_task_alloc();
    v0[15] = v9;
    *v9 = v0;
    v9[1] = specialized static ShapeResource.generateBox(size:);

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
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized static ShapeResource.generateBox(size:), 0, 0);
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

uint64_t specialized static ShapeResource.isSingleUntransformedShape(_:)(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_18:
    v3 = 0;
    return v3 & 1;
  }

  v7 = a1;
  v8 = __CocoaSet.count.getter();
  a1 = v7;
  if (v8 != 1)
  {
    goto LABEL_18;
  }

LABEL_3:
  v1 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = a1;
    v10 = *(MEMORY[0x1C68F41F0](0, a1) + 32);
    swift_unknownObjectRelease();
    v2 = v10;
    a1 = v12;
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_13;
    }

    v2 = *(*(a1 + 32) + 32);
  }

  v3 = 0;
  if (*v2.i32 != 0.0)
  {
    return v3 & 1;
  }

  v4 = vceqz_f32(*&vextq_s8(v2, v2, 4uLL));
  if ((v4.i8[0] & 1) == 0 || (v4.i8[4] & 1) == 0)
  {
    return v3 & 1;
  }

  if (v1)
  {
    v5 = MEMORY[0x1C68F41F0](0, a1);
  }

  else
  {
  }

  v11 = *(v5 + 48);

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_22;
  }

LABEL_13:
  v3 = 0;
  v6 = vmovn_s32(vceqq_f32(v11, static simd_quatf.identity));
  if (v6.i8[0] & 1) != 0 && (v6.i8[2] & 1) != 0 && (v6.i8[4])
  {
    v3 = v6.i8[6];
  }

  return v3 & 1;
}

uint64_t specialized static ShapeResource.__makeShapeResource(_:)(unint64_t a1)
{
  if (specialized static ShapeResource.isSingleUntransformedShape(_:)(a1))
  {
    if ((a1 & 0xC000000000000001) != 0)
    {

LABEL_30:
      JUMPOUT(0x1C68F41F0);
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(a1 + 32);

      return v2;
    }

    goto LABEL_27;
  }

  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v3 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = swift_slowAlloc();
  if ((v3 - 0x400000000000000) >> 59 != 31)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = v4;
  v6 = swift_slowAlloc();
  if (v3 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  if (v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      v9 = (v6 + 16);
      do
      {
        v10 = *(MEMORY[0x1C68F41F0](v8, a1) + 16);
        swift_unknownObjectRelease();
        v5[v8] = v10;
        v11 = MEMORY[0x1C68F41F0](v8, a1);
        v26 = *(v11 + 48);
        v27 = *(v11 + 32);
        swift_unknownObjectRelease();
        *(v9 - 1) = v27;
        *v9 = v26;
        v9 += 2;
        ++v8;
      }

      while (v3 != v8);
    }

    else
    {
      v12 = (a1 + 32);
      v13 = (v6 + 16);
      v14 = v5;
      v15 = v3;
      do
      {
        v16 = *v12++;
        *v14++ = *(v16 + 16);
        v17 = *(v16 + 48);
        *(v13 - 1) = *(v16 + 32);
        *v13 = v17;
        v13 += 2;
        --v15;
      }

      while (v15);
    }
  }

  v18 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v18 + 120, v28);
  v19 = v29;
  v20 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v20 + 32))(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v21 = REAssetManagerCollisionShapeAssetRegistryGetOrAdd();
  v22 = REAssetGetSwiftObject();
  type metadata accessor for ShapeResource();
  if (v22)
  {
    v2 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v21;
    REPoseIdentity();
    *(v2 + 32) = v23;
    *(v2 + 48) = v24;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  MEMORY[0x1C6902A30](v7, -1, -1);
  MEMORY[0x1C6902A30](v5, -1, -1);
  return v2;
}

unint64_t lazy protocol witness table accessor for type ShapeResourceError and conformance ShapeResourceError()
{
  result = lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError;
  if (!lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShapeResourceError, &type metadata for ShapeResourceError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError;
  if (!lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShapeResourceError, &type metadata for ShapeResourceError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeResourceError and conformance ShapeResourceError);
  }

  return result;
}

uint64_t specialized static ShapeResource.generateStaticMesh(positions:faceIndices:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](specialized static ShapeResource.generateStaticMesh(positions:faceIndices:), 0, 0);
}

uint64_t specialized static ShapeResource.generateStaticMesh(positions:faceIndices:)()
{
  v1 = RECollisionMeshCreateFromSIMDPositionsWithIndexFormat();
  v0[12] = v1;
  if (v1)
  {
    type metadata accessor for MainActor();
    v0[13] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](specialized static ShapeResource.generateStaticMesh(positions:faceIndices:), v3, v2);
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
  v8[1] = specialized static ShapeResource.generateStaticMesh(positions:faceIndices:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized static ShapeResource.generateStaticMesh(positions:faceIndices:), 0, 0);
  }

  else
  {
    v3 = v2[1];
    v4 = v2[14];

    return v3(v4);
  }
}

unint64_t lazy protocol witness table accessor for type ShapeResource and conformance ShapeResource()
{
  result = lazy protocol witness table cache variable for type ShapeResource and conformance ShapeResource;
  if (!lazy protocol witness table cache variable for type ShapeResource and conformance ShapeResource)
  {
    v3 = type metadata accessor for ShapeResource();
    result = swift_getWitnessTable(protocol conformance descriptor for ShapeResource, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeResource and conformance ShapeResource);
  }

  return result;
}

double block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t static __RKEntityInteraction.interaction(for:entityLookupTable:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for __RKEntityTrigger();
  v4 = static __RKEntityTrigger.trigger(for:entityLookupTable:)(a1, a2);
  type metadata accessor for __RKEntityAction();
  v5 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v6 = static __RKEntityAction.action(for:entityLookupTable:)(a1 + *(v5 + 20), a2);
  v7 = (a1 + *(v5 + 24));
  v9 = *v7;
  v8 = v7[1];
  type metadata accessor for __RKEntityInteraction();
  swift_allocObject();

  specialized __RKEntityInteraction.init(trigger:action:)(v4, v6);
  v11 = v10;

  swift_beginAccess();
  *(v11 + 48) = v9;
  *(v11 + 56) = v8;

  return v11;
}

void __RKEntityInteractionManager.customTriggerIdentifiers.getter()
{
  v11 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](i, v1);
      }

      else
      {
      }

      swift_beginAccess();
      type metadata accessor for __RKCustomTrigger();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v4 = *(v6 + 24);
        v5 = *(v6 + 32);

        specialized Set._Variant.insert(_:)(&v10, v4, v5);
      }

      else
      {
      }
    }

    v7 = v11;
    v8 = *(v11 + 16);
    if (v8)
    {
      while (1)
      {
        v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v8, 0);
        v9 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v1 + 32), v8, v7);
        outlined consume of [String : AnimationResource].Iterator._Variant();
        if (v9 == v8)
        {
          break;
        }

        __break(1u);
LABEL_15:
        v2 = __CocoaSet.count.getter();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_16:
        v7 = MEMORY[0x1E69E7CD0];
        v8 = *(MEMORY[0x1E69E7CD0] + 16);
        if (!v8)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
    }
  }
}

void __RKEntityInteractionManager.customActionIdentifiers.getter()
{
  v11 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();

  v1 = specialized __RKEntityInteractionManager.actions(for:)(v0);

  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](i, v1);
      }

      else
      {
      }

      type metadata accessor for __RKEntityCustomAction();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v4 = *(v6 + 128);
        v5 = *(v6 + 136);

        specialized Set._Variant.insert(_:)(&v10, v4, v5);
      }

      else
      {
      }
    }

    v7 = v11;
    v8 = *(v11 + 16);
    if (v8)
    {
      while (1)
      {
        v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v8, 0);
        v9 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v1 + 32), v8, v7);
        outlined consume of [String : AnimationResource].Iterator._Variant();
        if (v9 == v8)
        {
          break;
        }

        __break(1u);
LABEL_15:
        v2 = __CocoaSet.count.getter();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_16:

        v7 = MEMORY[0x1E69E7CD0];
        v8 = *(MEMORY[0x1E69E7CD0] + 16);
        if (!v8)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
    }
  }
}

uint64_t __RKEntityInteractionManager.entitiesTargetedByATapTrigger.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v51 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_70;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v38 = v1 & 0xFFFFFFFFFFFFFF8;
    v39 = v1 & 0xC000000000000001;
    v4 = &_sSay10RealityKit6EntityCGMd;
    v36 = v2;
    v37 = v1;
    while (1)
    {
      if (v39)
      {
        MEMORY[0x1C68F41F0](v3, v1);
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (v6)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v3 >= *(v38 + 16))
        {
          goto LABEL_69;
        }

        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (v6)
        {
          goto LABEL_68;
        }
      }

      v40 = v7;
      swift_beginAccess();

      v9 = getTapTriggers #1 (from:) in __RKEntityInteractionManager.entitiesTargetedByATapTrigger.getter(v8);

      if (!(v9 >> 62))
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          break;
        }

        goto LABEL_5;
      }

      v10 = __CocoaSet.count.getter();
      if (v10)
      {
        break;
      }

LABEL_5:
      v5 = MEMORY[0x1E69E7CC0];
LABEL_6:

      specialized Array.append<A>(contentsOf:)(v5);

      v1 = v37;
      v3 = v40;
      if (v40 == v36)
      {
        v34 = v51;
        goto LABEL_60;
      }
    }

    v11 = 0;
    v44 = v9 & 0xFFFFFFFFFFFFFF8;
    v45 = v9 & 0xC000000000000001;
    v43 = v9 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v41 = v10;
    v42 = v9;
    while (1)
    {
      if (v45)
      {
        v1 = MEMORY[0x1C68F41F0](v11, v9);
        v6 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v6)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v11 >= *(v44 + 16))
        {
          goto LABEL_62;
        }

        v1 = *(v43 + 8 * v11);

        v6 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v6)
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
          __break(1u);
LABEL_70:
          v2 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      swift_beginAccess();
      v1 = *(v1 + 24);
      if (v1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1C1898160;
        *(v14 + 32) = v1;
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = v14 >> 62;
      v16 = v14 >> 62 ? __CocoaSet.count.getter() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v5 >> 62;
      v48 = v16;
      v49 = v5;
      if (v5 >> 62)
      {
        v33 = __CocoaSet.count.getter();
        v19 = v33 + v48;
        if (__OFADD__(v33, v48))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 + v16;
        if (__OFADD__(v18, v16))
        {
          goto LABEL_63;
        }
      }

      v46 = v13;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v17)
      {
        goto LABEL_30;
      }

LABEL_31:
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v47 & 0xFFFFFFFFFFFFFF8;
LABEL_32:
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v15)
      {
        v1 = __CocoaSet.count.getter();
        v23 = v48;
        if (!v1)
        {
LABEL_13:
          v12 = v23;

          if (v12 > 0)
          {
            goto LABEL_64;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v1 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v23 = v48;
        if (!v1)
        {
          goto LABEL_13;
        }
      }

      if (((v22 >> 1) - v21) < v23)
      {
        goto LABEL_65;
      }

      v24 = v20 + 8 * v21 + 32;
      if (v15)
      {
        if (v1 < 1)
        {
          goto LABEL_67;
        }

        lazy protocol witness table accessor for type [Component] and conformance [A](&lazy protocol witness table cache variable for type [Entity] and conformance [A], v4, &_sSay10RealityKit6EntityCGMR);
        for (i = 0; i != v1; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v4, &_sSay10RealityKit6EntityCGMR);
          v27 = specialized protocol witness for Collection.subscript.read in conformance [A](v50, i, v14);
          v28 = v4;
          v30 = *v29;

          (v27)(v50, 0);
          *(v24 + 8 * i) = v30;
          v4 = v28;
        }

        v25 = v48;
        if (v48 <= 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v1 = v14 & 0xFFFFFFFFFFFFFF8;
        v25 = v23;
        type metadata accessor for Entity();
        swift_arrayInitWithCopy();

        if (v25 <= 0)
        {
          goto LABEL_14;
        }
      }

      v31 = *(v20 + 16);
      v6 = __OFADD__(v31, v25);
      v32 = v31 + v25;
      if (v6)
      {
        goto LABEL_66;
      }

      *(v20 + 16) = v32;
LABEL_14:
      v9 = v42;
      v11 = v46;
      v5 = v47;
      if (v46 == v41)
      {
        goto LABEL_6;
      }
    }

    if (!v17)
    {
      v20 = v49 & 0xFFFFFFFFFFFFFF8;
      v47 = v49;
      if (v19 <= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_30:
    __CocoaSet.count.getter();
    goto LABEL_31;
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_60:

  return v34;
}

unint64_t getTapTriggers #1 (from:) in __RKEntityInteractionManager.entitiesTargetedByATapTrigger.getter(uint64_t a1)
{
  v1 = type metadata accessor for __RKEntityTapTrigger();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    type metadata accessor for __RKEntityTriggerGroup();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = v5;
    swift_beginAccess();
    v7 = *(v6 + 24);
    if (v7 >> 62)
    {
      goto LABEL_51;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return MEMORY[0x1E69E7CC0];
    }

LABEL_6:
    v37 = v7 & 0xC000000000000001;
    v34 = v7 + 32;
    v35 = v7 & 0xFFFFFFFFFFFFFF8;

    v9 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v36 = v8;
    v32 = v7;
    v33 = v1;
    while (1)
    {
      if (v37)
      {
        v10 = MEMORY[0x1C68F41F0](v9, v7);
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v9 >= *(v35 + 16))
        {
          goto LABEL_49;
        }

        v10 = *(v34 + 8 * v9);

        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
LABEL_44:
          __break(1u);
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
LABEL_51:
          v8 = __CocoaSet.count.getter();
          if (!v8)
          {
            return MEMORY[0x1E69E7CC0];
          }

          goto LABEL_6;
        }
      }

      v12 = getTapTriggers #1 (from:) in __RKEntityInteractionManager.entitiesTargetedByATapTrigger.getter(v10);
      v13 = v12;
      v14 = v12 >> 62;
      if (v12 >> 62)
      {
        v15 = __CocoaSet.count.getter();
      }

      else
      {
        v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v4 >> 62;
      if (v4 >> 62)
      {
        v17 = __CocoaSet.count.getter();
      }

      else
      {
        v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v38 = v15;
      v11 = __OFADD__(v17, v15);
      v18 = v17 + v15;
      if (v11)
      {
        goto LABEL_45;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v16)
      {
        goto LABEL_25;
      }

LABEL_26:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v14)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
LABEL_7:

          if (v38 > 0)
          {
            goto LABEL_46;
          }

          goto LABEL_8;
        }
      }

      else
      {
        v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_7;
        }
      }

      if (((v21 >> 1) - v20) < v38)
      {
        goto LABEL_47;
      }

      v23 = v19 + 8 * v20 + 32;
      if (v14)
      {
        if (v22 < 1)
        {
          goto LABEL_50;
        }

        lazy protocol witness table accessor for type [Component] and conformance [A](&lazy protocol witness table cache variable for type [__RKEntityTapTrigger] and conformance [A], &_sSay10RealityKit20__RKEntityTapTriggerCGMd, &_sSay10RealityKit20__RKEntityTapTriggerCGMR);
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit20__RKEntityTapTriggerCGMd, &_sSay10RealityKit20__RKEntityTapTriggerCGMR);
          v26 = specialized protocol witness for Collection.subscript.read in conformance [A](v39, i, v13);
          v28 = *v27;

          (v26)(v39, 0);
          *(v23 + 8 * i) = v28;
        }

        v7 = v32;
        v1 = v33;
        v24 = v38;
        if (v38 <= 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v24 = v38;
        swift_arrayInitWithCopy();

        if (v38 <= 0)
        {
          goto LABEL_8;
        }
      }

      v29 = *(v19 + 16);
      v11 = __OFADD__(v29, v24);
      v30 = v29 + v24;
      if (v11)
      {
        goto LABEL_48;
      }

      *(v19 + 16) = v30;
LABEL_8:
      if (v9 == v36)
      {

        return v4;
      }
    }

    if (!v16)
    {
      v19 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v18 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_25:
    __CocoaSet.count.getter();
    goto LABEL_26;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1898160;
  *(v4 + 32) = v3;

  return v4;
}

Swift::Bool __swiftcall __RKEntityInteractionManager.performInteractions(matchingCustomTriggerWithIdentifier:customArguments:overrides:)(Swift::String matchingCustomTriggerWithIdentifier, Swift::OpaquePointer_optional customArguments, Swift::OpaquePointer_optional overrides)
{
  v56 = *&customArguments.is_nil;
  rawValue = customArguments.value._rawValue;
  object = matchingCustomTriggerWithIdentifier._object;
  countAndFlagsBits = matchingCustomTriggerWithIdentifier._countAndFlagsBits;
  swift_beginAccess();
  if (*(v3 + 24) != 1)
  {
    goto LABEL_14;
  }

  v59 = countAndFlagsBits;
  v61 = rawValue;
  swift_beginAccess();
  v55 = v3;
  v7 = *(v3 + 64);
  v8 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_34:
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v9 != i; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1C68F41F0](i, v7);
      if (__OFADD__(i, 1))
      {
LABEL_13:
        __break(1u);
LABEL_14:
        LOBYTE(v17) = 0;
        return v17;
      }
    }

    else
    {
      if (i >= *(v8 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v11 = *(v7 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_13;
      }
    }

    swift_beginAccess();
    v12 = *(**(v11 + 24) + 328);

    v14 = v12(v13);

    if (v14)
    {

      LOBYTE(v17) = 0;
      return v17;
    }
  }

  type metadata accessor for __RKCustomTrigger();
  v15 = swift_allocObject();
  *(v15 + 24) = v59;
  *(v15 + 32) = object;

  if (v61)
  {
    v16 = v61;
  }

  else
  {
    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *(v15 + 40) = v16;
  *(v15 + 16) = 0;
  *(v15 + 18) = 0;

  __RKEntityInteractionManager.interactions(matching:entities:)(v18, 0);
  v20 = v19;
  v21 = specialized __RKEntityInteractionManager.actions(for:)(v19);
  v22 = v21;
  v64[0] = MEMORY[0x1E69E7CC0];
  if (v21 >> 62)
  {
    v23 = __CocoaSet.count.getter();
    v54 = v15;
    if (v23)
    {
      goto LABEL_20;
    }

LABEL_36:
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_37;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v54 = v15;
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_20:
  v24 = 0;
  v8 = v22 & 0xC000000000000001;
  v7 = v22 & 0xFFFFFFFFFFFFFF8;
  while (v8)
  {
    v25 = MEMORY[0x1C68F41F0](v24, v22);
    object = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      goto LABEL_30;
    }

LABEL_26:
    swift_beginAccess();
    if (*(v25 + 89))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v24;
    if (object == v23)
    {
      goto LABEL_31;
    }
  }

  if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  v25 = *(v22 + 8 * v24 + 32);

  object = (v24 + 1);
  if (!__OFADD__(v24, 1))
  {
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  v26 = v64[0];
LABEL_37:

  v51 = v20 >> 62;
  if (v20 >> 62)
  {
    goto LABEL_64;
  }

  v60 = v20;
  v62 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v62)
  {
LABEL_39:
    if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
    {
      v27 = __CocoaSet.count.getter();
    }

    else
    {
      v27 = *(v26 + 16);
    }

    v28 = 0;
    v57 = v20 & 0xC000000000000001;
    v52 = v20 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v57)
      {
        MEMORY[0x1C68F41F0](v28, v20);
        v29 = __OFADD__(v28++, 1);
        if (v29)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v28 >= *(v52 + 16))
        {
          goto LABEL_63;
        }

        v29 = __OFADD__(v28++, 1);
        if (v29)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v60 = v20;
          v62 = __CocoaSet.count.getter();
          if (!v62)
          {
            break;
          }

          goto LABEL_39;
        }
      }

      if (v27)
      {
        if (v27 < 1)
        {
          goto LABEL_62;
        }

        swift_beginAccess();
        for (j = 0; j != v27; ++j)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x1C68F41F0](j, v26);
          }

          else
          {
            v31 = *(v26 + 8 * j + 32);
          }

          v32 = *(*v31 + 456);

          LOBYTE(v32) = v32(v33);

          if (v32)
          {
            (*(*v31 + 448))(v34);
          }
        }

        v20 = v60;
      }

      else
      {
      }
    }

    while (v28 != v62);
  }

  v35 = *(v55 + 32);
  v36 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v36)
  {
    v17 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v17 = Scene.init(coreScene:)(v35);
  }

  v58 = v17;
  v37 = v62;
  if (v62)
  {
    if (v62 >= 1)
    {
      v38 = 0;
      v39 = v20 & 0xC000000000000001;
      v53 = v20 & 0xC000000000000001;
      do
      {
        if (v39)
        {
          v40 = MEMORY[0x1C68F41F0](v38, v20);
        }

        else
        {
          v40 = *(v20 + 8 * v38 + 32);
        }

        swift_beginAccess();
        v41 = *(**(v40 + 24) + 464);

        v41(v64, 0);

        type metadata accessor for __RKEntityAction();
        if (swift_dynamicCast())
        {

          __RKEntityInteractionManager.applyOverrides(_:on:)(v56, v63);
          swift_beginAccess();

          MEMORY[0x1C68F3650](v42);
          if (*((*(v55 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v55 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          v43 = swift_allocObject();
          swift_weakInit();
          v44 = swift_allocObject();
          swift_weakInit();
          v45 = swift_allocObject();
          *(v45 + 16) = v43;
          *(v45 + 24) = v44;
          swift_beginAccess();
          v46 = v63[9];
          v47 = v63[10];
          v63[9] = partial apply for closure #2 in __RKEntityInteractionManager.performInteractions(matchingCustomTriggerWithIdentifier:customArguments:overrides:);
          v63[10] = v45;

          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v46, v47);

          v64[0] = v54;
          v64[1] = v58;
          v48 = *(*v63 + 408);

          v48(v64);

          v20 = v60;
          v37 = v62;
          v39 = v53;
        }

        else
        {
        }

        ++v38;
      }

      while (v37 != v38);
      goto LABEL_80;
    }

    __break(1u);
  }

  else
  {
LABEL_80:

    if (v51)
    {
      v49 = __CocoaSet.count.getter();
    }

    else
    {
      v49 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    LOBYTE(v17) = v49 > 0;
  }

  return v17;
}

uint64_t closure #2 in __RKEntityInteractionManager.performInteractions(matchingCustomTriggerWithIdentifier:customArguments:overrides:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v6 = Strong;
    swift_beginAccess();

    v7 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v4 + 16), v6);

    v8 = *(v4 + 16);
    if (v8 >> 62)
    {
      result = __CocoaSet.count.getter();
      v9 = result;
      if (result >= v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v7)
      {
LABEL_5:
        specialized Array.replaceSubrange<A>(_:with:)(v7, v9);
        swift_endAccess();
      }
    }

    __break(1u);
  }

  return result;
}

void __RKEntityInteractionManager.setCustomActionHandler(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  v7 = specialized __RKEntityInteractionManager.actions(for:)(v6);

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](i, v7);
      }

      else
      {
      }

      type metadata accessor for __RKEntityCustomAction();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v12 + 128) == a1 && *(v12 + 136) == a2;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_beginAccess();
          v11 = *(v13 + 112);
          v10 = *(v13 + 120);
          *(v13 + 112) = a3;
          *(v13 + 120) = a4;
          outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a3, a4);
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v11, v10);
        }
      }
    }

    goto LABEL_18;
  }

  __break(1u);
}

void __RKEntityInteractionManager.applyOverrides(_:on:)(uint64_t a1, uint64_t a2)
{
  if (a1 && *(a1 + 16))
  {
    type metadata accessor for __RKEntityActionGroup();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      swift_beginAccess();
      v6 = *(v5 + 112);
      if (v6 >> 62)
      {
        v7 = __CocoaSet.count.getter();
        if (!v7)
        {
          return;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          return;
        }
      }

      if (v7 < 1)
      {
        __break(1u);
      }

      else
      {

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1C68F41F0](i, v6);
          }

          else
          {
            v9 = *(v6 + 8 * i + 32);
          }

          __RKEntityInteractionManager.applyOverrides(_:on:)(a1, v9);
        }
      }
    }

    else
    {
      swift_beginAccess();
      if (*(a2 + 16))
      {

        REEntityGetName();
        v10 = String.init(cString:)();
        if (*(a1 + 16))
        {
          v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
          v14 = v13;

          if (v14)
          {
            v15 = *(*(a1 + 56) + 8 * v12);

            *(a2 + 16) = v15;
          }
        }

        else
        {
        }
      }
    }
  }
}

Swift::Bool __swiftcall __RKEntityInteractionManager.__performInteractions(matchingCustomTriggerWithIdentifier:with:on:)(Swift::String matchingCustomTriggerWithIdentifier, Swift::OpaquePointer with, Swift::OpaquePointer_optional on)
{
  rawValue = on.value._rawValue;
  object = matchingCustomTriggerWithIdentifier._object;
  countAndFlagsBits = matchingCustomTriggerWithIdentifier._countAndFlagsBits;
  swift_beginAccess();
  if (*(v3 + 24) == 1)
  {
    type metadata accessor for __RKCustomTrigger();
    v8 = swift_allocObject();
    *(v8 + 24) = countAndFlagsBits;
    *(v8 + 32) = object;
    *(v8 + 40) = with;
    *(v8 + 16) = 0;
    *(v8 + 18) = 0;

    v9 = __RKEntityInteractionManager.__performInteractions(matching:on:)(v8, rawValue);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void __RKEntityInteractionManager.__setCustomPackageActionHandler(withIdentifier:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  v7 = specialized __RKEntityInteractionManager.actions(for:)(v6);

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](i, v7);
      }

      else
      {
      }

      type metadata accessor for __RKEntityCustomAction();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v12 + 128) == a1 && *(v12 + 136) == a2;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_beginAccess();
          v11 = *(v13 + 152);
          v10 = *(v13 + 160);
          *(v13 + 152) = a3;
          *(v13 + 160) = a4;
          outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a3, a4);
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v11, v10);
        }
      }
    }

    goto LABEL_18;
  }

  __break(1u);
}

double __RKEntityInteractionManager.automaticallyInvokesStartTrigger.didset(char a1)
{

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v3 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v3);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v4 = static os_log_type_t.info.getter();
  if (one-time initialization token for interactionsLoggingEnabled != -1)
  {
    swift_once();
  }

  if (interactionsLoggingEnabled)
  {
    _StringGuts.grow(_:)(27);

    v17 = 0xD000000000000013;
    v18 = 0x80000001C18EF160;
    if (a1)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if (a1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    MEMORY[0x1C68F3410](v5, v6);

    MEMORY[0x1C68F3410](544175136, 0xE400000000000000);
    swift_beginAccess();
    if (*(v1 + 26))
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (*(v1 + 26))
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    MEMORY[0x1C68F3410](v7, v8);

    v10 = v17;
    v9 = v18;
    if (one-time initialization token for interactionsLogger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, interactionsLogger);

    v12 = Logger.logObject.getter();

    if (os_log_type_enabled(v12, v4))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(91, 0xE100000000000000, &v17);
      *(v13 + 12) = 2080;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v17);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_1C1358000, v12, v4, "%s%s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }

    else
    {
    }
  }

  v17 = 91;
  v18 = 0xE100000000000000;
  InteractionsLogger.dumpStack()();

  return result;
}

double __RKEntityInteractionManager.automaticallyInvokesStartTrigger.setter(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 26);
  *(v1 + 26) = a1;
  return __RKEntityInteractionManager.automaticallyInvokesStartTrigger.didset(v3);
}

void (*__RKEntityInteractionManager.automaticallyInvokesStartTrigger.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 26);
  return __RKEntityInteractionManager.automaticallyInvokesStartTrigger.modify;
}

void __RKEntityInteractionManager.automaticallyInvokesStartTrigger.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 26);
  *(v2 + 26) = v3;
  __RKEntityInteractionManager.automaticallyInvokesStartTrigger.didset(v4);

  free(v1);
}

uint64_t (*__RKEntityInteractionManager.proximityEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 27);
  return __RKEntityInteractionManager.proximityEnabled.modify;
}

Swift::Void __swiftcall __RKEntityInteractionManager.shutdown()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static __RKActiveSceneManager.shared;
  swift_beginAccess();
  v0[2] = 0;

  swift_beginAccess();
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      ObjectType = swift_getObjectType();
      v6 = v0[2];
      v7 = *(v4 + 8);

      swift_unknownObjectRetain();
      v7(v0, v6, ObjectType, v4);
      swift_unknownObjectRelease();

      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t __RKEntityInteractionManager.init(sceneRef:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for __RKEntityLookupTable();
  *(v2 + 24) = 16843009;
  v5 = swift_allocObject();
  *(v5 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_n(v4);
  *(v2 + 40) = v5;
  type metadata accessor for __RKSimulationSceneCoordinator();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 32) = 0;
  *(v2 + 48) = v6;
  type metadata accessor for __RKRuntimeSceneCoordinator();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v2 + 56) = v7;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v11[0] = 91;
  v11[1] = 0xE100000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v8 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v8);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v9 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v9, v11);

  return v2;
}

uint64_t __RKEntityInteractionManager.deinit()
{
  v4[0] = 91;
  v4[1] = 0xE100000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v1 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v1);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v2 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v2, v4);

  return v0;
}

uint64_t __RKEntityInteractionManager.__deallocating_deinit()
{
  __RKEntityInteractionManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t __RKEntityInteractionManager.__entityLookupTable.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t key path setter for __RKEntityInteractionManager.__runtimeSceneCoordinator : __RKEntityInteractionManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

double __RKEntityInteractionManager.__runtimeSceneCoordinator.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t __RKEntityInteractionManager.__runtimeSceneCoordinator.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

double key path setter for __RKEntityInteractionManager.__interactions : __RKEntityInteractionManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;

  return result;
}

double __RKEntityInteractionManager.__interactions.getter()
{
  swift_beginAccess();

  return result;
}

void __RKEntityInteractionManager.__hasInteractionsForTrigger<A>(of:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(v2 + 64);
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = v3 & 0xC000000000000001;
      v14 = v3 & 0xFFFFFFFFFFFFFF8;

      v6 = 0;
      v16 = v4;
      v17 = v3;
      v15 = v3 & 0xC000000000000001;
      while (1)
      {
        if (v5)
        {
          MEMORY[0x1C68F41F0](v6, v3);
          v7 = __OFADD__(v6++, 1);
          if (v7)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v6 >= *(v14 + 16))
          {
            __break(1u);
            return;
          }

          v7 = __OFADD__(v6++, 1);
          if (v7)
          {
            goto LABEL_35;
          }
        }

        swift_beginAccess();
        type metadata accessor for __RKEntityTriggerGroup();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          break;
        }

LABEL_25:

        if (swift_dynamicCastClass())
        {

LABEL_30:

          return;
        }

        if (v6 == v4)
        {

          return;
        }
      }

      v9 = v8;
      swift_beginAccess();
      v10 = *(v9 + 24);
      v11 = v10 >> 62 ? __CocoaSet.count.getter() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v11)
      {
        break;
      }

      v12 = 0;
      v3 = v10 & 0xFFFFFFFFFFFFFF8;
      while ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](v12, v10);
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_33;
        }

LABEL_18:
        if (swift_dynamicCastClass())
        {

          goto LABEL_30;
        }

        ++v12;
        if (v13 == v11)
        {
          goto LABEL_24;
        }
      }

      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v13 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_18;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        return;
      }
    }

LABEL_24:

    v3 = v17;
    v5 = v15;
    v4 = v16;
    goto LABEL_25;
  }
}

uint64_t __RKEntityInteractionManager.__actions.getter()
{
  swift_beginAccess();

  v1 = specialized __RKEntityInteractionManager.actions(for:)(v0);

  return v1;
}

uint64_t __RKEntityInteractionManager.__addInteraction(_:)(uint64_t a1)
{
  swift_beginAccess();

  MEMORY[0x1C68F3650](v2);
  if (*((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

double __RKEntityInteractionManager.__removeInteraction(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 64);
  if (v4 >> 62)
  {
LABEL_17:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C68F41F0](v6, v4);
      swift_unknownObjectRelease();
      if (v8 == a1)
      {
LABEL_12:

        swift_beginAccess();
        v9 = *(**(a1 + 24) + 448);

        v9(v10);

        swift_beginAccess();
        specialized Array.remove(at:)(v6);
        swift_endAccess();

        return result;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (*(v4 + 8 * v6 + 32) == a1)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return result;
}

Swift::Void __swiftcall __RKEntityInteractionManager.__removeAllInteractions()()
{
  swift_beginAccess();
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
}

void __RKEntityInteractionManager.__cloneInteractions(fromEntity:toEntity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 64);
  if (v6 >> 62)
  {
    v21 = *(v2 + 64);
    v22 = __CocoaSet.count.getter();
    v6 = v21;
    v7 = v22;
    if (!v22)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 >= 1)
  {
    v23 = v6 & 0xC000000000000001;
    v8 = v6;

    v9 = v8;
    v10 = 0;
    v24 = v7;
    v25 = v8;
    while (1)
    {
      if (v23)
      {
        v11 = MEMORY[0x1C68F41F0](v10, v9);
      }

      else
      {
        v11 = *(v9 + 8 * v10 + 32);
      }

      swift_beginAccess();
      v12 = *(**(v11 + 16) + 200);

      v13 = v12(a1, a2);

      swift_beginAccess();
      v14 = *(**(v11 + 24) + 472);

      v15 = v14(a1, a2);
      v17 = v16;

      if (v13)
      {
        v18 = v24;
        if (v15)
        {
          type metadata accessor for __RKEntityInteraction();
          swift_allocObject();
          specialized __RKEntityInteraction.init(trigger:action:)(v13, v15);
LABEL_11:

          swift_beginAccess();

          MEMORY[0x1C68F3650](v19);
          if (*((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          goto LABEL_20;
        }
      }

      else
      {
        v18 = v24;
        if (!v15)
        {
          goto LABEL_20;
        }

        if (v17)
        {
          v20 = *(v11 + 16);
          swift_retain_n();
          [v20 copyWithZone_];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          type metadata accessor for __RKEntityTrigger();
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_21;
          }

          type metadata accessor for __RKEntityInteraction();
          swift_allocObject();
          specialized __RKEntityInteraction.init(trigger:action:)(v26, v15);

          goto LABEL_11;
        }
      }

LABEL_20:

LABEL_21:
      ++v10;
      v9 = v25;
      if (v18 == v10)
      {

        return;
      }
    }
  }

  __break(1u);
}

uint64_t __RKEntityInteractionManager.__performInteractions(matching:on:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v101 = a1;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v92 - v10;
  v115 = 91;
  v116 = 0xE100000000000000;
  v113 = 0;
  v114 = 0xE000000000000000;
  v112 = v2;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v113, v114);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v12 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v12);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v14 = v115;
  v13 = v116;
  swift_beginAccess();
  if (*(v3 + 24) != 1)
  {
LABEL_14:
    v113 = v14;
    v114 = v13;
    v22 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v22, &v113);
LABEL_30:

    return 0;
  }

  v96 = v5;
  v97 = v13;
  swift_beginAccess();
  v100 = v3;
  v15 = *(v3 + 64);
  v99 = v14;
  v95 = v6;
  v94 = v11;
  v93 = v8;
  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
LABEL_50:
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  while (v17 != v13)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1C68F41F0](v13, v15);
      if (__OFADD__(v13, 1))
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 >= *(v16 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v18 = *(v15 + 8 * v13 + 32);

      if (__OFADD__(v13, 1))
      {
        goto LABEL_13;
      }
    }

    swift_beginAccess();
    v14 = *(v18 + 24);
    v19 = *(*v14 + 328);

    v21 = v19(v20);

    ++v13;
    if (v21)
    {
LABEL_29:

      v109 = v99;
      v110 = v97;
      v32 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v32, &v109);
      goto LABEL_30;
    }
  }

  __RKEntityInteractionManager.interactions(matching:entities:)(v101, a2);
  v24 = v23;
  v14 = &v92;
  MEMORY[0x1EEE9AC00](v23);
  *(&v92 - 2) = v25;
  v109 = v99;
  v110 = v97;
  static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)();
  v111 = 0;
  v102 = v24;
  v26 = specialized __RKEntityInteractionManager.actions(for:)(v24);
  v15 = v26;
  v108 = MEMORY[0x1E69E7CC0];
  if (v26 >> 62)
  {
    v27 = __CocoaSet.count.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v29 = 0;
    v16 = v15 & 0xC000000000000001;
    do
    {
      if (v16)
      {
        v30 = MEMORY[0x1C68F41F0](v29, v15);
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v29 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v30 = *(v15 + 8 * v29 + 32);

        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      swift_beginAccess();
      if (*(v30 + 89))
      {
        v14 = &v108;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a2 = *(v108 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v29;
    }

    while (v31 != v27);
    v34 = v108;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v36 = specialized __RKEntityInteractionManager.actions(for:)(v35);

  v105 = v28;
  if (v36 >> 62)
  {
    v37 = __CocoaSet.count.getter();
    if (v37)
    {
      goto LABEL_35;
    }

LABEL_53:
    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_54;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_53;
  }

LABEL_35:
  v15 = 0;
  v16 = v36 & 0xC000000000000001;
  while (v16)
  {
    v38 = MEMORY[0x1C68F41F0](v15, v36);
    v39 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_45;
    }

LABEL_41:
    swift_beginAccess();
    if (*(v38 + 89))
    {
      v14 = &v105;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a2 = *(v105 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v15;
    if (v39 == v37)
    {
      goto LABEL_46;
    }
  }

  if (v15 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

  v38 = *(v36 + 8 * v15 + 32);

  v39 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  v40 = v105;
LABEL_54:

  if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
  {
    goto LABEL_80;
  }

  v41 = *(v34 + 16);
  if (v41)
  {
    while (1)
    {
      v42 = v40 < 0 || (v40 & 0x4000000000000000) != 0 ? __CocoaSet.count.getter() : *(v40 + 16);
      v43 = 0;
      *&v98 = v34 + 32;
      while (1)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x1C68F41F0](v43, v34);
          v45 = __OFADD__(v43++, 1);
          if (v45)
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v43 >= *(v34 + 16))
          {
            goto LABEL_79;
          }

          v44 = *(v98 + 8 * v43);

          v45 = __OFADD__(v43++, 1);
          if (v45)
          {
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }
        }

        if (v42)
        {
          break;
        }

LABEL_61:

        if (v43 == v41)
        {
          goto LABEL_81;
        }
      }

      if (v42 >= 1)
      {
        break;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      v41 = __CocoaSet.count.getter();
      if (!v41)
      {
        goto LABEL_81;
      }
    }

    v46 = 0;
    while (2)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x1C68F41F0](v46, v40);
        if (v44 == v47)
        {
LABEL_71:

          if (v42 == ++v46)
          {
            goto LABEL_61;
          }

          continue;
        }
      }

      else
      {
        v47 = *(v40 + 8 * v46 + 32);

        if (v44 == v47)
        {
          goto LABEL_71;
        }
      }

      break;
    }

    (*(*v47 + 448))();
    goto LABEL_71;
  }

LABEL_81:

  v48 = *(v100 + 32);
  v49 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v49)
  {
    v50 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v50 = Scene.init(coreScene:)(v48);
  }

  v51 = v50;
  v52 = v97;
  v53 = v102;
  type metadata accessor for __RKStartTrigger();
  v54 = swift_dynamicCastClass();
  v55 = v53 >> 62;
  if (!v54)
  {
LABEL_99:
    MEMORY[0x1EEE9AC00](v54);
    *(&v92 - 2) = v53;
    v62 = v99;
    v103 = v99;
    v104 = v52;
    static os_log_type_t.info.getter();
    v63 = specialized InteractionsLogger.log(_:_:)();
    if (v55)
    {
      v63 = __CocoaSet.count.getter();
      v65 = v63;
    }

    else
    {
      v65 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v65 != 0;
    v66 = v101;
    if (v65)
    {
      LODWORD(v96) = 1;
      if (v65 < 1)
      {
        __break(1u);
        goto LABEL_143;
      }

      v67 = 0;
      v68 = v102 & 0xC000000000000001;
      v100 = "Returning interactionsDidFire=";
      *&v64 = 136315394;
      v98 = v64;
      v69 = &unk_1EBF03000;
      do
      {
        if (v68)
        {
          MEMORY[0x1C68F41F0](v67, v102);
        }

        else
        {
        }

        v70 = static os_log_type_t.info.getter();
        if (one-time initialization token for interactionsLoggingEnabled != -1)
        {
          swift_once();
        }

        if (v69[1392] == 1)
        {
          if (one-time initialization token for interactionsLogger != -1)
          {
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          __swift_project_value_buffer(v71, interactionsLogger);

          v72 = Logger.logObject.getter();

          if (os_log_type_enabled(v72, v70))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v103 = v74;
            *v73 = v98;
            *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v52, &v103);
            *(v73 + 12) = 2080;
            *(v73 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v100 | 0x8000000000000000, &v103);
            _os_log_impl(&dword_1C1358000, v72, v70, "%s%s", v73, 0x16u);
            swift_arrayDestroy();
            v75 = v74;
            v69 = &unk_1EBF03000;
            MEMORY[0x1C6902A30](v75, -1, -1);
            v76 = v73;
            v66 = v101;
            MEMORY[0x1C6902A30](v76, -1, -1);
          }
        }

        ++v67;
        v103 = v66;
        v104 = v51;
        __RKEntityInteraction.fire(context:)(&v103);
      }

      while (v65 != v67);
      v111 = 1;
      v62 = v99;
      v58 = v96;
    }

    MEMORY[0x1EEE9AC00](v63);
    *(&v92 - 2) = v102;
    v103 = v62;
    v104 = v52;
    static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)();

    goto LABEL_118;
  }

  v56 = v53 & 0xFFFFFFFFFFFFFF8;
  if (v55)
  {
    v54 = __CocoaSet.count.getter();
    if (v54)
    {
      v91 = v54;
      v57 = __CocoaSet.count.getter();
      v58 = v91 > 0;
      goto LABEL_88;
    }

    goto LABEL_99;
  }

  v57 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v57)
  {
    goto LABEL_99;
  }

  v58 = 1;
LABEL_88:
  v52 = v53 & 0xC000000000000001;

  v59 = 0;
  do
  {
    if (v57 == v59)
    {
      goto LABEL_98;
    }

    if (v52)
    {
      v53 = MEMORY[0x1C68F41F0](v59, v53);
      if (__OFADD__(v59, 1))
      {
LABEL_97:
        __break(1u);
LABEL_98:

        v52 = v97;
        goto LABEL_99;
      }
    }

    else
    {
      if (v59 >= *(v56 + 16))
      {
        __break(1u);
        goto LABEL_137;
      }

      v53 = *(v53 + 8 * v59 + 32);

      if (__OFADD__(v59, 1))
      {
        goto LABEL_97;
      }
    }

    swift_beginAccess();

    v61 = __RKEntityInteractionManager.containsChangeSceneAction(action:)(v60);

    v53 = v102;

    ++v59;
  }

  while (!v61);
  if (v58)
  {
    v111 = 1;
  }

  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();
  v85 = v93;
  static DispatchTime.now()();
  v86 = v94;
  + infix(_:_:)();
  v87 = *(v95 + 8);
  v88 = v96;
  v87(v85, v96);
  v89 = swift_allocObject();
  v90 = v101;
  v89[2] = v53;
  v89[3] = v90;
  v89[4] = v51;

  __Engine.asyncAfterOnEngineQueue(deadline:_:)(v86, partial apply for closure #3 in __RKEntityInteractionManager.__performInteractions(matching:on:), v89);

  v87(v86, v88);
LABEL_118:
  LOBYTE(v52) = static os_log_type_t.info.getter();
  v59 = &unk_1EBF03000;
  if (one-time initialization token for interactionsLoggingEnabled != -1)
  {
LABEL_137:
    swift_once();
  }

  if (*(v59 + 1392) != 1)
  {

    return v111;
  }

  v106 = 0;
  v107 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v106 = 0xD00000000000001ELL;
  v107 = 0x80000001C18EEE00;
  if (v58)
  {
    v77 = 1702195828;
  }

  else
  {
    v77 = 0x65736C6166;
  }

  if (v58)
  {
    v78 = 0xE400000000000000;
  }

  else
  {
    v78 = 0xE500000000000000;
  }

  MEMORY[0x1C68F3410](v77, v78);

  v62 = v106;
  v53 = v107;
  if (one-time initialization token for interactionsLogger != -1)
  {
LABEL_143:
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  __swift_project_value_buffer(v79, interactionsLogger);
  v80 = v97;

  v81 = Logger.logObject.getter();

  if (os_log_type_enabled(v81, v52))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v106 = v83;
    *v82 = 136315394;
    *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v80, &v106);
    *(v82 + 12) = 2080;
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v53, &v106);

    *(v82 + 14) = v84;
    _os_log_impl(&dword_1C1358000, v81, v52, "%s%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v83, -1, -1);
    MEMORY[0x1C6902A30](v82, -1, -1);
  }

  else
  {
  }

  return v111;
}

unint64_t closure #3 in __RKEntityInteractionManager.__performInteractions(matching:on:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](v7, v5);
      }

      else
      {
      }

      ++v7;
      v8[0] = a2;
      v8[1] = a3;

      __RKEntityInteraction.fire(context:)(v8);
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t implicit closure #3 in __RKEntityInteractionManager.__performInteractions(matching:on:)(unint64_t a1, Swift::Int a2, uint64_t a3)
{
  _StringGuts.grow(_:)(a2);

  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v5);

  MEMORY[0x1C68F3410](0xD000000000000016, 0x80000001C18EF100);
  return a3;
}

uint64_t __RKEntityInteractionManager.performTapInteraction(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v59 - v4;
  v68 = 91;
  v69 = 0xE100000000000000;
  v66 = 0;
  v67 = 0xE000000000000000;
  v64 = v1;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v66, v67);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v6 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v60 = v1;

  v7 = v69;
  v63 = v68;

  swift_beginAccess();
  v61 = "Skipping target entity ";
  v62 = "formTapInteraction";
  v8 = &static ComponentInfo.Platform.macOS;
  *&v9 = 136315394;
  v59 = v9;
  while (1)
  {
    while (1)
    {
      if (!v8[255])
      {

LABEL_9:
        v13 = type metadata accessor for UUID();
        (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
        outlined destroy of UUID?(v5);
        v14 = static os_log_type_t.info.getter();
        if (one-time initialization token for interactionsLoggingEnabled != -1)
        {
          swift_once();
        }

        if (interactionsLoggingEnabled)
        {
          v66 = 0;
          v67 = 0xE000000000000000;
          _StringGuts.grow(_:)(91);
          MEMORY[0x1C68F3410](0xD000000000000017, v62 | 0x8000000000000000);
          v65 = a1;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x1C68F3410](0xD000000000000042, v61 | 0x8000000000000000);
          v15 = v66;
          v16 = v67;
          if (one-time initialization token for interactionsLogger != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Logger();
          __swift_project_value_buffer(v17, interactionsLogger);

          v18 = Logger.logObject.getter();

          if (os_log_type_enabled(v18, v14))
          {
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            v66 = v20;
            *v19 = v59;
            *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v7, &v66);
            *(v19 + 12) = 2080;
            v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v66);

            *(v19 + 14) = v21;
            _os_log_impl(&dword_1C1358000, v18, v14, "%s%s", v19, 0x16u);
            swift_arrayDestroy();
            v22 = v20;
            v8 = &static ComponentInfo.Platform.macOS;
            MEMORY[0x1C6902A30](v22, -1, -1);
            MEMORY[0x1C6902A30](v19, -1, -1);
          }

          else
          {
          }
        }

        goto LABEL_18;
      }

      if (!REEntityGetCustomComponent() || !RECustomComponentGetObject())
      {
        goto LABEL_9;
      }

      UUID.init(uuid:)();
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
      outlined destroy of UUID?(v5);
      type metadata accessor for __RKEntityTapTrigger();
      v11 = swift_allocObject();
      *(v11 + 24) = 0;
      swift_beginAccess();
      *(v11 + 24) = a1;
      *(v11 + 16) = 0;
      *(v11 + 18) = 0;
      swift_beginAccess();
      *(v11 + 16) = 0;

      v12 = __RKEntityInteractionManager.__performInteractions(matching:on:)(v11, 0);

      if (v12)
      {
        v66 = v63;
        v67 = v7;
        static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)();

        return 1;
      }

      v66 = v63;
      v67 = v7;
      static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)();
LABEL_18:
      Parent = REEntityGetParent();
      if (!Parent)
      {

        v66 = v63;
        v67 = v7;
        v57 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v57, &v66);

        return 0;
      }

      v24 = Parent;
      if (!REEntityGetSwiftObject())
      {
        break;
      }

      type metadata accessor for Entity();
      a1 = swift_dynamicCastClassUnconditional();
    }

    if (REEntityIsBeingDestroyed())
    {
      break;
    }

    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v25 & 1) == 0))
    {
      swift_endAccess();
      v26 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = static SceneManager.customComponentTypeObjectIdToHandles;
      v65 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      v31 = *(v28 + 16);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_59;
      }

      v35 = v30;
      if (*(v28 + 24) >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_30;
        }

        v38 = v29;
        specialized _NativeDictionary.copy()();
        v29 = v38;
        v8 = &static ComponentInfo.Platform.macOS;
        v37 = v65;
        if ((v35 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_31:
        *(v37[7] + 8 * v29) = v26;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_62;
        }

LABEL_30:
        v37 = v65;
        if (v35)
        {
          goto LABEL_31;
        }

LABEL_33:
        v37[(v29 >> 6) + 8] |= 1 << v29;
        *(v37[6] + 8 * v29) = &type metadata for __EntityInfoComponent;
        *(v37[7] + 8 * v29) = v26;
        v39 = v37[2];
        v33 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v33)
        {
          goto LABEL_60;
        }

        v37[2] = v40;
      }

      static SceneManager.customComponentTypeObjectIdToHandles = v37;
    }

    swift_endAccess();
    if (!REEntityGetCustomComponent())
    {
      goto LABEL_55;
    }

    Object = RECustomComponentGetObject();
    if (!Object)
    {
      goto LABEL_55;
    }

    v42 = *Object;
    if (*(Object + 8) || !v42)
    {
    }

    else
    {
      v43 = *v42;
      v44 = String.init(utf8String:)();
      if (v45)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0;
      }

      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0xE000000000000000;
      }

      v42 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v43 == 42, v46, v47);

      type metadata accessor for IntrospectionDataCleanupHelper();
      *(swift_allocObject() + 16) = v42;
    }

    if (!v42)
    {
      goto LABEL_61;
    }

    v48 = String.init(utf8String:)();
    if (v49)
    {
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0xE000000000000000;
    }

    v51 = MEMORY[0x1C68F3280](v48, v50);

    v52 = NSClassFromString(v51);

    v8 = &static ComponentInfo.Platform.macOS;
    if (v52 && (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v53 = swift_dynamicCastMetatype()) != 0))
    {
      v54 = (*(v53 + 232))();
      v55 = *(v54 + 16);

      MEMORY[0x1C68F9740](v55, 0);
      *(v54 + 16) = v24;
      MEMORY[0x1C68F9740](v24, v54);

      a1 = v54;
    }

    else
    {
LABEL_55:
      v56 = makeEntity(for:)(v24);

      a1 = v56;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t implicit closure #1 in __RKEntityInteractionManager.performTapInteraction(for:)(uint64_t a1)
{
  _StringGuts.grow(_:)(71);
  MEMORY[0x1C68F3410](0xD000000000000035, 0x80000001C18EF060);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0xD000000000000010, 0x80000001C18EF0A0);
  return 0;
}

uint64_t implicit closure #2 in __RKEntityInteractionManager.performTapInteraction(for:)(uint64_t a1)
{
  _StringGuts.grow(_:)(65);
  MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18EF0C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0x676E69797274202CLL, 0xEF746E6572617020);
  return 0;
}

BOOL __RKEntityInteractionManager.containsChangeSceneAction(action:)(uint64_t a1)
{
  type metadata accessor for __RKChangeSceneAction(0);
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for __RKEntityActionGroup();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  if (v4 >> 62)
  {
LABEL_20:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v1 = v5 != v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C68F41F0](v6, v4);
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
        goto LABEL_20;
      }

      v7 = *(v4 + 8 * v6 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    v8 = __RKEntityInteractionManager.containsChangeSceneAction(action:)(v7);

    ++v6;
  }

  while ((v8 & 1) == 0);

  return v1;
}

void __RKEntityInteractionManager.interactions(matching:entities:)(uint64_t a1, unint64_t a2)
{
  v95 = a1;
  v111 = 91;
  v112 = 0xE100000000000000;
  v109 = 0;
  v110 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v4 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v5 = 0xE100000000000000;
  v113 = MEMORY[0x1E69E7CC0];
  v101 = 91;
  static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)();
  swift_beginAccess();
  v96 = v2;
  v6 = *(v2 + 64);
  if (v6 >> 62)
  {
    goto LABEL_145;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_134:
    MEMORY[0x1EEE9AC00](v6);
    v107 = v101;
    v108 = v5;
    static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)();

    return;
  }

  while (2)
  {
    v100 = v6 & 0xC000000000000001;
    v91 = v6 & 0xFFFFFFFFFFFFFF8;
    v90 = v6 + 32;
    v94 = "s not match trigger";
    v85 = "eractions(matching:entities:)";
    v83 = " !interaction.enabled";
    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    v87 = a2 & 0xC000000000000001;
    v102 = a2;
    v86 = a2 + 32;
    v98 = v6;

    v9 = 0;
    v93 = MEMORY[0x1E69E7CC0];
    *&v10 = 136315394;
    v97 = v10;
    v84 = xmmword_1C1898160;
    v103 = v5;
    v99 = v7;
    while (1)
    {
      if (v100)
      {
        v6 = MEMORY[0x1C68F41F0](v9, v98);
        v11 = v6;
        v12 = __OFADD__(v9++, 1);
        if (v12)
        {
          goto LABEL_139;
        }
      }

      else
      {
        if (v9 >= *(v91 + 16))
        {
          goto LABEL_143;
        }

        v11 = *(v90 + 8 * v9);

        v12 = __OFADD__(v9++, 1);
        if (v12)
        {
          goto LABEL_139;
        }
      }

      v13 = static os_log_type_t.info.getter();
      if (one-time initialization token for interactionsLoggingEnabled != -1)
      {
        swift_once();
      }

      v14 = interactionsLoggingEnabled;
      if (interactionsLoggingEnabled)
      {
        v107 = 0;
        v108 = 0xE000000000000000;
        _StringGuts.grow(_:)(19);
        MEMORY[0x1C68F3410](0xD000000000000011, v94 | 0x8000000000000000);
        v106 = v11;
        _print_unlocked<A, B>(_:_:)();
        v15 = v107;
        a2 = v108;
        if (one-time initialization token for interactionsLogger != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, interactionsLogger);

        v17 = Logger.logObject.getter();

        if (os_log_type_enabled(v17, v13))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v107 = v19;
          *v18 = v97;
          *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, &v107);
          *(v18 + 12) = 2080;
          v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, a2, &v107);

          *(v18 + 14) = v20;
          _os_log_impl(&dword_1C1358000, v17, v13, "%s%s", v18, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C6902A30](v19, -1, -1);
          v21 = v18;
          v5 = v103;
          MEMORY[0x1C6902A30](v21, -1, -1);
        }

        else
        {
        }
      }

      swift_beginAccess();
      if (*(v11 + 40))
      {
        break;
      }

      v30 = static os_log_type_t.info.getter();
      if (v14)
      {
        v31 = v30;
        if (one-time initialization token for interactionsLogger != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, interactionsLogger);

        v33 = Logger.logObject.getter();

        if (os_log_type_enabled(v33, v31))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v107 = v35;
          *v34 = v97;
          *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v5, &v107);
          *(v34 + 12) = 2080;
          v36 = 0xD000000000000025;
          v37 = &v105;
          goto LABEL_47;
        }

LABEL_48:

        a2 = static os_log_type_t.info.getter();
        v107 = 0;
        v108 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);
        MEMORY[0x1C68F3410](0x65746E6920646E45, 0xEF206E6F69746372);
        v106 = v11;
        _print_unlocked<A, B>(_:_:)();
        v40 = v107;
        v39 = v108;
        if (one-time initialization token for interactionsLogger != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v32, interactionsLogger);
        v41 = v103;

        v42 = Logger.logObject.getter();

        if (os_log_type_enabled(v42, a2))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v107 = v44;
          *v43 = v97;
          *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v41, &v107);
          *(v43 + 12) = 2080;
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v107);

          *(v43 + 14) = v45;
          _os_log_impl(&dword_1C1358000, v42, a2, "%s%s", v43, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C6902A30](v44, -1, -1);
          MEMORY[0x1C6902A30](v43, -1, -1);
        }

        else
        {
        }

        v5 = v41;
        goto LABEL_6;
      }

LABEL_4:
      static os_log_type_t.info.getter();
LABEL_5:

LABEL_6:
      if (v9 == v99)
      {

        goto LABEL_134;
      }
    }

    swift_beginAccess();
    v22 = *(**(v11 + 16) + 184);

    LOBYTE(v22) = v22(v95);

    if ((v22 & 1) == 0)
    {
      v38 = static os_log_type_t.info.getter();
      if (v14)
      {
        v31 = v38;
        if (one-time initialization token for interactionsLogger != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, interactionsLogger);

        v33 = Logger.logObject.getter();

        if (os_log_type_enabled(v33, v31))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v107 = v35;
          *v34 = v97;
          *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v5, &v107);
          *(v34 + 12) = 2080;
          v36 = 0xD000000000000033;
          v37 = &v104;
LABEL_47:
          *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, *(v37 - 32) | 0x8000000000000000, &v107);
          _os_log_impl(&dword_1C1358000, v33, v31, "%s%s", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C6902A30](v35, -1, -1);
          MEMORY[0x1C6902A30](v34, -1, -1);
        }

        goto LABEL_48;
      }

      goto LABEL_4;
    }

    if (!(v93 >> 62))
    {
      v23 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_26;
      }

LABEL_55:

      v47 = v102;
      v48 = __RKEntityInteractionManager.doesTrigger(_:containOnly:)(v46, v102);

      if (v48)
      {
        type metadata accessor for __RKEntityTriggerGroup();
        v49 = swift_dynamicCastClass();
        v50 = v47 >> 62;
        v92 = v50;
        if (!v49)
        {
          goto LABEL_93;
        }

        v51 = v49;
        swift_beginAccess();
        v5 = *(v51 + 24);
        if (!(v5 >> 62))
        {
          v52 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v52)
          {
            goto LABEL_93;
          }

LABEL_59:
          v89 = v5 & 0xFFFFFFFFFFFFFF8;
          v88 = v5 + 32;

          a2 = 0;
          while (1)
          {
LABEL_61:
            if ((v5 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x1C68F41F0](a2, v5);
              v53 = v6;
              v12 = __OFADD__(a2++, 1);
              if (v12)
              {
                goto LABEL_140;
              }
            }

            else
            {
              if (a2 >= *(v89 + 16))
              {
                goto LABEL_144;
              }

              v53 = *(v88 + 8 * a2);

              v12 = __OFADD__(a2++, 1);
              if (v12)
              {
                goto LABEL_140;
              }
            }

            if (!v102)
            {
              break;
            }

            if (v50)
            {
              if (!__CocoaSet.count.getter())
              {
                break;
              }
            }

            else if (!*(v8 + 16))
            {
              break;
            }

            v6 = __RKEntityInteractionManager.targetEntity(for:)(v53);
            if (!v6)
            {
              break;
            }

            if (v50)
            {
              v60 = v6;
              v54 = __CocoaSet.count.getter();
              v6 = v60;
            }

            else
            {
              v54 = *(v8 + 16);
            }

            v55 = v87;
            v56 = v86;
            if (v54)
            {
              v57 = 0;
              while (1)
              {
                while (v55)
                {
                  v80 = v6;
                  v58 = MEMORY[0x1C68F41F0](v57, v102);
                  v12 = __OFADD__(v57++, 1);
                  if (v12)
                  {
                    goto LABEL_150;
                  }

                  v79 = v58;
                  swift_unknownObjectRelease();
                  v6 = v80;
                  if (v79 == v80)
                  {
                    goto LABEL_85;
                  }

                  v55 = v87;
                  v56 = v86;
                  if (v57 == v54)
                  {
                    goto LABEL_84;
                  }
                }

                if ((v57 & 0x8000000000000000) != 0)
                {
                  goto LABEL_137;
                }

                if (v57 >= *(v8 + 16))
                {
                  goto LABEL_138;
                }

                if (*(v56 + 8 * v57) == v6)
                {
                  break;
                }

                if (++v57 == v54)
                {
                  goto LABEL_84;
                }
              }

LABEL_85:
            }

            else
            {
LABEL_84:

              v107 = v101;
              v108 = v103;
              v59 = static os_log_type_t.info.getter();
              specialized InteractionsLogger.log(_:_:)(v59, &v107);
            }

            v50 = v92;
            if (a2 == v52)
            {
LABEL_92:

              goto LABEL_93;
            }
          }

          if (a2 == v52)
          {
            goto LABEL_92;
          }

          goto LABEL_61;
        }

        v52 = __CocoaSet.count.getter();
        if (v52)
        {
          goto LABEL_59;
        }

LABEL_93:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v84;
        *(inited + 32) = v11;

        v64 = specialized __RKEntityInteractionManager.actions(for:)(inited);
        swift_setDeallocating();
        v65 = v92;
        swift_arrayDestroy();
        v5 = v103;
        if (!v102)
        {
          goto LABEL_129;
        }

        if (v65)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_129;
          }

LABEL_96:
          if (v64 >> 62)
          {
            v66 = __CocoaSet.count.getter();
            if (!v66)
            {
              goto LABEL_129;
            }
          }

          else
          {
            v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v66)
            {
              goto LABEL_129;
            }
          }

          a2 = 0;
          v67 = v64 & 0xC000000000000001;
          v89 = v64 & 0xFFFFFFFFFFFFFF8;
          v88 = v64 + 32;
          v82 = v64 & 0xC000000000000001;
          while (1)
          {
            if (v67)
            {
              v68 = MEMORY[0x1C68F41F0](a2, v64);
              v12 = __OFADD__(a2++, 1);
              if (v12)
              {
                goto LABEL_147;
              }
            }

            else
            {
              if (a2 >= *(v89 + 16))
              {
                goto LABEL_148;
              }

              v68 = *(v88 + 8 * a2);

              v12 = __OFADD__(a2++, 1);
              if (v12)
              {
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
                goto LABEL_149;
              }
            }

            swift_beginAccess();
            v5 = *(v68 + 16);
            if (v5)
            {
              break;
            }

LABEL_100:

            v5 = v103;
            if (a2 == v66)
            {
              goto LABEL_129;
            }
          }

          v69 = v64;
          if (v65)
          {
            v70 = __CocoaSet.count.getter();
          }

          else
          {
            v70 = *(v8 + 16);
          }

          v71 = v87;
          v72 = v86;
          if (v70)
          {
            v73 = 0;
            do
            {
              if (v71)
              {
                v74 = MEMORY[0x1C68F41F0](v73, v102);
                v12 = __OFADD__(v73++, 1);
                if (v12)
                {
                  goto LABEL_151;
                }

                v81 = v74;
                v6 = swift_unknownObjectRelease();
                v71 = v87;
                v72 = v86;
                if (v81 == v5)
                {
                  goto LABEL_99;
                }
              }

              else
              {
                if ((v73 & 0x8000000000000000) != 0)
                {
                  goto LABEL_141;
                }

                if (v73 >= *(v8 + 16))
                {
                  goto LABEL_142;
                }

                if (*(v72 + 8 * v73) == v5)
                {
LABEL_99:

                  v65 = v92;
                  v64 = v69;
                  v67 = v82;
                  goto LABEL_100;
                }

                ++v73;
              }
            }

            while (v73 != v70);
          }

          v75 = v101;
          v5 = v103;
          v107 = v101;
          v108 = v103;
          v76 = static os_log_type_t.info.getter();
          specialized InteractionsLogger.log(_:_:)(v76, &v107);
          v107 = v75;
          v108 = v5;
          static os_log_type_t.info.getter();
        }

        else
        {
          if (*(v8 + 16))
          {
            goto LABEL_96;
          }

LABEL_129:

          MEMORY[0x1C68F3650](v77);
          if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v93 = v113;
          v107 = v101;
          v108 = v5;
          static os_log_type_t.info.getter();
        }
      }

      else
      {
        v61 = v101;
        v5 = v103;
        v107 = v101;
        v108 = v103;
        v62 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v62, &v107);
        v107 = v61;
        v108 = v5;
        static os_log_type_t.info.getter();
      }

LABEL_132:
      specialized InteractionsLogger.log(_:_:)();
      goto LABEL_5;
    }

    v6 = __CocoaSet.count.getter();
    v23 = v6;
    if (!v6)
    {
      goto LABEL_55;
    }

LABEL_26:
    v24 = 0;
    a2 = v93 & 0xC000000000000001;
    v25 = v93 & 0xFFFFFFFFFFFFFF8;
    v5 = v93 + 32;
LABEL_27:
    if (!a2)
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
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
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        v78 = v6;
        v7 = __CocoaSet.count.getter();
        v6 = v78;
        if (!v7)
        {
          goto LABEL_134;
        }

        continue;
      }

      if (v24 >= *(v25 + 16))
      {
        goto LABEL_136;
      }

      if (*(v5 + 8 * v24) == v11)
      {
LABEL_36:
        v28 = v101;
        v5 = v103;
        v107 = v101;
        v108 = v103;
        v29 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v29, &v107);
        v107 = v28;
        v108 = v5;
        static os_log_type_t.info.getter();
        goto LABEL_132;
      }

      ++v24;
      goto LABEL_32;
    }

    break;
  }

  v26 = MEMORY[0x1C68F41F0](v24, v93);
  v12 = __OFADD__(v24++, 1);
  if (!v12)
  {
    v27 = v26;
    v6 = swift_unknownObjectRelease();
    if (v27 == v11)
    {
      goto LABEL_36;
    }

LABEL_32:
    if (v24 == v23)
    {
      goto LABEL_55;
    }

    goto LABEL_27;
  }

LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t implicit closure #1 in __RKEntityInteractionManager.interactions(matching:entities:)(uint64_t a1)
{
  _StringGuts.grow(_:)(29);

  strcpy(v4, "Considering ");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  swift_beginAccess();
  if (*(a1 + 64) >> 62)
  {
    __CocoaSet.count.getter();
  }

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](0x63617265746E6920, 0xEF2973286E6F6974);
  return v4[0];
}

uint64_t implicit closure #9 in __RKEntityInteractionManager.interactions(matching:entities:)(unint64_t *a1)
{
  _StringGuts.grow(_:)(36);

  if (*a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](0xD000000000000018, 0x80000001C18EF250);
  return 0x6E696E7275746552;
}

unint64_t __RKEntityInteractionManager.doesTrigger(_:containOnly:)(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a2 >> 62;
    if (a2 >> 62)
    {
      goto LABEL_22;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        v3 = a2;
        a1 = __RKEntityInteractionManager.targetEntity(for:)(a1);
        if (!a1)
        {
          break;
        }

        if (v2)
        {
          v16 = a1;
          v17 = __CocoaSet.count.getter();
          a2 = v3;
          v2 = v17;
          a1 = v16;
          if (!v2)
          {
LABEL_19:

            return v2;
          }
        }

        else
        {
          a2 = v3;
          v2 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v2)
          {
            goto LABEL_19;
          }
        }

        v4 = 0;
        v5 = a2 & 0xC000000000000001;
        v6 = a2 & 0xFFFFFFFFFFFFFF8;
        v7 = a2 + 32;
        while (1)
        {
          while (v5)
          {
            v8 = a1;
            result = MEMORY[0x1C68F41F0](v4);
            if (__OFADD__(v4++, 1))
            {
              __break(1u);
              return result;
            }

            v11 = result;
            swift_unknownObjectRelease();
            a1 = v8;
            if (v11 == v8)
            {
              goto LABEL_18;
            }

            a2 = v3;
            if (v4 == v2)
            {
LABEL_17:
              v2 = 0;
              goto LABEL_19;
            }
          }

          if ((v4 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v4 >= *(v6 + 16))
          {
            goto LABEL_21;
          }

          if (*(v7 + 8 * v4) == a1)
          {
LABEL_18:
            v2 = 1;
            goto LABEL_19;
          }

          if (++v4 == v2)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v12 = a1;
        v13 = a2;
        v14 = __CocoaSet.count.getter();
        a2 = v13;
        v15 = v14;
        a1 = v12;
      }

      while (v15);
    }
  }

  return 1;
}

uint64_t __RKEntityInteractionManager.targetEntity(for:)(uint64_t a1)
{
  type metadata accessor for __RKEntityCollisionTrigger();
  v1 = swift_dynamicCastClass();
  if (v1 || (type metadata accessor for __RKEntityProximityTrigger(), (v1 = swift_dynamicCastClass()) != 0) || (type metadata accessor for __RKEntityTapTrigger(), (v1 = swift_dynamicCastClass()) != 0))
  {
    v2 = v1;
    swift_beginAccess();
    v3 = *(v2 + 24);
  }

  else
  {
    type metadata accessor for __RKEntityTriggerGroup();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      swift_beginAccess();
      v7 = *(v6 + 24);
      if (v7 >> 62)
      {
LABEL_22:
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v8 != i; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C68F41F0](i, v7);
          if (__OFADD__(i, 1))
          {
LABEL_18:
            __break(1u);
            break;
          }
        }

        else
        {
          if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_22;
          }

          v10 = *(v7 + 8 * i + 32);

          if (__OFADD__(i, 1))
          {
            goto LABEL_18;
          }
        }

        v3 = __RKEntityInteractionManager.targetEntity(for:)(v10);

        if (v3)
        {

          return v3;
        }
      }
    }

    return 0;
  }

  return v3;
}

uint64_t __RKEntityInteractionManager.action(for:)(uint64_t a1)
{
  type metadata accessor for __RKEntityAction();
  swift_beginAccess();
  v3 = *(v1 + 40);

  v4 = static __RKEntityAction.action(for:entityLookupTable:)(a1, v3);

  return v4;
}

uint64_t static __RKEntityAction.action(for:entityLookupTable:)(uint64_t a1, uint64_t a2)
{
  *&v348 = a2;
  *&v349 = a1;
  v338 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  MEMORY[0x1EEE9AC00](v338);
  v339 = &v309 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  MEMORY[0x1EEE9AC00](v331);
  v332 = &v309 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = type metadata accessor for __RKEntitySpinActionArguments(0);
  MEMORY[0x1EEE9AC00](v330);
  v336 = &v309 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  MEMORY[0x1EEE9AC00](v333);
  v337 = &v309 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  MEMORY[0x1EEE9AC00](v340);
  v341 = &v309 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  MEMORY[0x1EEE9AC00](v329);
  v334 = &v309 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = type metadata accessor for __RKEntityForceActionArguments(0);
  MEMORY[0x1EEE9AC00](v326);
  v328 = &v309 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = type metadata accessor for __RKEntityTransformActionArguments(0);
  MEMORY[0x1EEE9AC00](v327);
  v345 = &v309 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = type metadata accessor for __RKEntityFadeActionArguments(0);
  MEMORY[0x1EEE9AC00](v323);
  v325 = &v309 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v346 = v11;
  v347 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v342 = &v309 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = type metadata accessor for __RKChangeSceneActionArguments(0);
  MEMORY[0x1EEE9AC00](v317);
  v319 = &v309 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  MEMORY[0x1EEE9AC00](v318);
  v322 = &v309 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = type metadata accessor for __RKEntityAudioActionArguments(0);
  MEMORY[0x1EEE9AC00](v316);
  v335 = &v309 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = type metadata accessor for __RKEntityHideActionArguments(0);
  MEMORY[0x1EEE9AC00](v343);
  v315 = &v309 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v324 = &v309 - v19;
  v344 = type metadata accessor for __RKEntityShowActionArguments(0);
  MEMORY[0x1EEE9AC00](v344);
  v321 = &v309 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v320 = &v309 - v22;
  v23 = type metadata accessor for __RKEntityToggleVisibilityActionArguments(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v313 = &v309 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for __RKEntityStopAnimateActionArguments(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v312 = &v309 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v311 = &v309 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v310 = &v309 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v314 = &v309 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v309 = &v309 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v309 - v36;
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  MEMORY[0x1EEE9AC00](started);
  v40 = &v309 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for __RKEntityToggleAnimateActionArguments(0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v309 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for __RKEntityCustomActionArguments(0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v309 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for __RKEntityActionSpecification(0);
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v309 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v309 - v52;
  _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(v349, &v309 - v52, type metadata accessor for __RKEntityActionSpecification);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = v319;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v319, type metadata accessor for __RKChangeSceneActionArguments);
      v151 = __RKEntityLookupTable.entity(for:)(v46);
      v152 = v342;
      (*(v347 + 16))(v342, &v46[*(v317 + 20)], v346);
      type metadata accessor for __RKChangeSceneAction(0);
      swift_allocObject();
      v66 = specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(v151, v152);

      v118 = type metadata accessor for __RKChangeSceneActionArguments;
      goto LABEL_232;
    case 2u:
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v46, type metadata accessor for __RKEntityCustomActionArguments);
      v112 = __RKEntityLookupTable.entity(for:)(v46);
      v113 = &v46[*(v44 + 20)];
      v115 = *v113;
      v114 = *(v113 + 1);
      v116 = *&v46[*(v44 + 24)];
      type metadata accessor for __RKEntityCustomAction();
      v117 = swift_allocObject();
      v117[14] = 0;
      v117[20] = 0;
      v117[19] = 0;
      v117[15] = 0;
      v117[16] = v115;
      v117[17] = v114;
      swift_beginAccess();
      v117[15] = 0;
      v117[14] = 0;
      v117[18] = v116;
      swift_beginAccess();
      v117[20] = 0;
      v117[19] = 0;

      v66 = __RKEntityAction.init(targetEntity:)(v112);
      v118 = type metadata accessor for __RKEntityCustomActionArguments;
      goto LABEL_232;
    case 3u:
      v121 = v322;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v322, type metadata accessor for __RKEntityEmphasisActionArguments);
      v122 = __RKEntityLookupTable.entity(for:)(v121);
      v123 = v318[6];
      v124 = v121 + v318[5];
      if (*(v124 + 4))
      {
        v125 = 1.0;
      }

      else
      {
        v125 = *v124;
      }

      if (*(v121 + v123 + 4))
      {
        v126 = 3.0;
      }

      else
      {
        v126 = *(v121 + v123);
      }

      if (*(v121 + v318[7]) == 3)
      {
        v127 = 0;
      }

      else
      {
        v127 = *(v121 + v318[7]);
      }

      if (*(v121 + v318[8]) == 8)
      {
        v128 = 0;
      }

      else
      {
        v128 = *(v121 + v318[8]);
      }

      type metadata accessor for __RKEntityEmphasisAction();
      v129 = swift_allocObject();
      *(v129 + 120) = 0u;
      *(v129 + 136) = 0u;
      *(v129 + 152) = 0u;
      *(v129 + 168) = 0u;
      *(v129 + 184) = 0u;
      *(v129 + 200) = 0;
      *(v129 + 208) = 1;
      *(v129 + 108) = v125;
      *(v129 + 112) = v126;
      *(v129 + 116) = v127;
      *(v129 + 117) = v128;
      v66 = __RKEntityAction.init(targetEntity:)(v122);
      v130 = type metadata accessor for __RKEntityEmphasisActionArguments;
      v131 = v121;
      goto LABEL_233;
    case 4u:
      v85 = v325;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v325, type metadata accessor for __RKEntityFadeActionArguments);
      v87 = __RKEntityLookupTable.entity(for:)(v85);
      v88 = *(v323 + 24);
      v89 = *(v85 + *(v323 + 20));
      if (*(v85 + v88 + 4))
      {
        v90 = 1.0;
      }

      else
      {
        v90 = *(v85 + v88);
      }

      type metadata accessor for __RKEntityFadeAction();
      v91 = swift_allocObject();
      *(v91 + 108) = v89;
      *(v91 + 112) = v90;
      v66 = __RKEntityAction.init(targetEntity:)(v87);
      v86 = type metadata accessor for __RKEntityFadeActionArguments;
      goto LABEL_135;
    case 5u:
      v170 = *v53;
      if (v53[8])
      {
        v171 = 1.0;
      }

      else
      {
        v171 = *(v53 + 1);
      }

      type metadata accessor for __RKFadeSceneAction();
      v172 = swift_allocObject();
      *(v172 + 108) = v170;
      *(v172 + 112) = v171;
      return __RKEntityAction.init(targetEntity:)(0);
    case 6u:
      v186 = *v53;
      v187 = *(v53 + 1);
      v188 = v53[16];
      v189 = *(v53 + 3);
      v190 = v53[32];
      v191 = v53[33];
      v192 = *(v187 + 16);
      v193 = MEMORY[0x1E69E7CC0];
      if (v192)
      {
        LODWORD(v344) = v186;
        LODWORD(v345) = v190;
        v346 = v189;
        LODWORD(v347) = v188;
        LODWORD(v349) = v191;
        v350 = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray.reserveCapacity(_:)();
        v194 = v187 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
        v195 = *(v48 + 72);
        v196 = v348;
        do
        {
          _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(v194, v50, type metadata accessor for __RKEntityActionSpecification);
          static __RKEntityAction.action(for:entityLookupTable:)(v50, v196);
          outlined destroy of __RKEntityPlayTimelineActionArguments(v50, type metadata accessor for __RKEntityActionSpecification);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v194 += v195;
          --v192;
        }

        while (v192);

        v193 = v350;
        LOBYTE(v191) = v349;
        LOBYTE(v188) = v347;
        v189 = v346;
        LOBYTE(v190) = v345;
        LOBYTE(v186) = v344;
      }

      LOBYTE(v350) = v186;
      type metadata accessor for __RKEntityActionGroup();
      swift_allocObject();
      v66 = __RKEntityActionGroup.init(actions:ordering:loopCount:)(v193, &v350, v189, v190, v197);
      swift_beginAccess();
      *(v66 + 89) = v188 & 1;

      swift_beginAccess();
      *(v66 + 90) = v191 & 1;
      return v66;
    case 7u:
      v54 = v324;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v324, type metadata accessor for __RKEntityHideActionArguments);
      v132 = __RKEntityLookupTable.entity(for:)(v54);
      v133 = v343[6];
      v134 = v54 + v343[5];
      if (*(v134 + 4))
      {
        v135 = 1.0;
      }

      else
      {
        v135 = *v134;
      }

      if (*(v54 + v133 + 4))
      {
        v136 = 10.0;
      }

      else
      {
        v136 = *(v54 + v133);
      }

      if (*(v54 + v343[7]) == 10)
      {
        v137 = 0;
      }

      else
      {
        v137 = *(v54 + v343[7]);
      }

      if (*(v54 + v343[8]) == 3)
      {
        v138 = 0;
      }

      else
      {
        v138 = *(v54 + v343[8]);
      }

      v139 = v343[10];
      v140 = *(v54 + v343[9]);
      v141 = (v140 == 2) | v140;
      if (*(v54 + v139 + 4))
      {
        v142 = 0.0;
      }

      else
      {
        v142 = *(v54 + v139);
      }

      v143 = v54 + v343[13];
      if (*(v143 + 4))
      {
        v144 = 0.0;
      }

      else
      {
        v144 = *v143;
      }

      v145 = v54 + v343[12];
      v146 = *(v54 + v343[11]);
      if (*(v145 + 4))
      {
        v147 = 0.0;
      }

      else
      {
        v147 = *v145;
      }

      if (*(v54 + v343[14]) == 3)
      {
        v148 = 0;
      }

      else
      {
        v148 = *(v54 + v343[14]);
      }

      if (*(v54 + v343[15]) == 10)
      {
        v149 = 0;
      }

      else
      {
        v149 = *(v54 + v343[15]);
      }

      type metadata accessor for __RKEntityHideAction();
      v150 = swift_allocObject();
      *(v150 + 174) = 0;
      *(v150 + 176) = 0u;
      *(v150 + 192) = 0u;
      *(v150 + 208) = 0u;
      *(v150 + 224) = 0u;
      *(v150 + 240) = 0u;
      *(v150 + 256) = 0u;
      *(v150 + 272) = 0u;
      *(v150 + 288) = 0u;
      *(v150 + 304) = 0u;
      *(v150 + 320) = 0u;
      *(v150 + 336) = 0;
      *(v150 + 144) = v135;
      *(v150 + 148) = v136;
      *(v150 + 152) = v137;
      *(v150 + 153) = v138;
      *(v150 + 164) = v144;
      *(v150 + 168) = v147;
      *(v150 + 160) = v146 & 1;
      *(v150 + 154) = v141 & 1;
      *(v150 + 156) = v142;
      *(v150 + 172) = v148;
      *(v150 + 173) = v149;
      *(v150 + 112) = 0;
      *(v150 + 120) = 1;
      *(v150 + 128) = 0;
      *(v150 + 136) = 1;
      *(v150 + 140) = 0;
      v66 = __RKEntityAction.init(targetEntity:)(v132);
      v69 = type metadata accessor for __RKEntityHideActionArguments;
      goto LABEL_176;
    case 8u:
      v43 = v328;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v328, type metadata accessor for __RKEntityForceActionArguments);
      *&v349 = __RKEntityLookupTable.entity(for:)(v43);
      v244 = &v43[*(v326 + 20)];
      v245 = *v244;
      v246 = *(v244 + 1);
      v247 = v244[16];
      v248 = &v43[*(v326 + 24)];
      v249 = *v248;
      v250 = *(v248 + 1);
      v251 = v248[16];
      type metadata accessor for __RKEntityForceAction();
      v252 = swift_allocObject();
      *(v252 + 112) = 0;
      *(v252 + 120) = 0;
      *(v252 + 128) = 1;
      *(v252 + 144) = 0;
      *(v252 + 152) = 0;
      *(v252 + 160) = 1;
      *(v252 + 168) = 0u;
      *(v252 + 184) = 0u;
      *(v252 + 200) = 0;
      swift_beginAccess();
      *(v252 + 112) = v245;
      *(v252 + 120) = v246;
      *(v252 + 128) = v247;
      swift_beginAccess();
      *(v252 + 144) = v249;
      *(v252 + 152) = v250;
      *(v252 + 160) = v251;
      v66 = __RKEntityAction.init(targetEntity:)(v349);
      v92 = type metadata accessor for __RKEntityForceActionArguments;
      goto LABEL_183;
    case 9u:
      v54 = v320;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v320, type metadata accessor for __RKEntityShowActionArguments);
      v93 = __RKEntityLookupTable.entity(for:)(v54);
      v94 = v344[6];
      v95 = v54 + v344[5];
      if (*(v95 + 4))
      {
        v96 = 1.0;
      }

      else
      {
        v96 = *v95;
      }

      if (*(v54 + v94 + 4))
      {
        v97 = 10.0;
      }

      else
      {
        v97 = *(v54 + v94);
      }

      if (*(v54 + v344[7]) == 10)
      {
        v98 = 0;
      }

      else
      {
        v98 = *(v54 + v344[7]);
      }

      if (*(v54 + v344[8]) == 3)
      {
        v99 = 0;
      }

      else
      {
        v99 = *(v54 + v344[8]);
      }

      v100 = v344[10];
      v101 = *(v54 + v344[9]);
      v102 = (v101 == 2) | v101;
      if (*(v54 + v100 + 4))
      {
        v103 = 1.0;
      }

      else
      {
        v103 = *(v54 + v100);
      }

      v104 = v54 + v344[13];
      if (*(v104 + 4))
      {
        v105 = 0.0;
      }

      else
      {
        v105 = *v104;
      }

      v106 = v54 + v344[12];
      v107 = *(v54 + v344[11]);
      if (*(v106 + 4))
      {
        v108 = 0.0;
      }

      else
      {
        v108 = *v106;
      }

      if (*(v54 + v344[14]) == 3)
      {
        v109 = 0;
      }

      else
      {
        v109 = *(v54 + v344[14]);
      }

      if (*(v54 + v344[15]) == 10)
      {
        v110 = 0;
      }

      else
      {
        v110 = *(v54 + v344[15]);
      }

      type metadata accessor for __RKEntityShowAction();
      v111 = swift_allocObject();
      *(v111 + 176) = 0u;
      *(v111 + 192) = 0u;
      *(v111 + 208) = 0u;
      *(v111 + 224) = 0u;
      *(v111 + 240) = 0u;
      *(v111 + 256) = 0u;
      *(v111 + 272) = 0u;
      *(v111 + 288) = 0u;
      *(v111 + 304) = 0u;
      *(v111 + 320) = 0u;
      *(v111 + 336) = 0;
      *(v111 + 144) = v96;
      *(v111 + 148) = v97;
      *(v111 + 152) = v98;
      *(v111 + 153) = v99;
      *(v111 + 154) = v102 & 1;
      *(v111 + 156) = v103;
      *(v111 + 164) = v105;
      *(v111 + 168) = v108;
      *(v111 + 160) = v107 & 1;
      *(v111 + 172) = v109;
      *(v111 + 173) = v110;
      *(v111 + 112) = 0;
      *(v111 + 120) = 1;
      *(v111 + 128) = 0;
      *(v111 + 136) = 1;
      *(v111 + 140) = 0;
      v66 = __RKEntityAction.init(targetEntity:)(v93);
      v69 = type metadata accessor for __RKEntityShowActionArguments;
      goto LABEL_176;
    case 0xAu:
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v40, type metadata accessor for __RKEntityStartAnimateActionArguments);
      v230 = __RKEntityLookupTable.entity(for:)(v40);
      v231 = *&v40[started[5]];
      LODWORD(v349) = v40[started[6]];
      v232 = *&v40[started[7]];
      v233 = *&v40[started[8]];
      v234 = started[9];
      LODWORD(v344) = v40[started[10]];
      v235 = *&v40[started[11]];
      v236 = v40[v234];
      LODWORD(v345) = v40[started[12]];
      v237 = started[14];
      v238 = &v40[started[13]];
      if (v238[8])
      {
        v239 = 1.0;
      }

      else
      {
        v239 = *v238;
      }

      outlined init with copy of UUID?(&v40[v237], v37);
      v240 = v346;
      v241 = *(v347 + 48);
      v242 = v241(v37, 1, v346);
      outlined destroy of UUID?(v37);
      if (v242 == 1)
      {
        v243 = 0;
      }

      else
      {
        v306 = v309;
        outlined init with copy of UUID?(&v40[v237], v309);
        result = v241(v306, 1, v240);
        if (result == 1)
        {
          goto LABEL_244;
        }

        v243 = __RKEntityLookupTable.entity(for:)(v306);
        (*(v347 + 8))(v306, v240);
      }

      type metadata accessor for __RKEntityStartAnimateAction();
      swift_allocObject();

      v66 = __RKEntityAnimateAction.init(targetEntity:)();
      outlined destroy of __RKEntityPlayTimelineActionArguments(v40, type metadata accessor for __RKEntityStartAnimateActionArguments);
      if (!v230)
      {
        goto LABEL_242;
      }

      *(v66 + 160) = v243;

      swift_beginAccess();
      *(v66 + 105) = v349;
      *(v66 + 112) = v231;
      *(v66 + 137) = v344;
      *(v66 + 120) = v232;
      *(v66 + 128) = v233;
      *(v66 + 140) = v235;
      if (v236)
      {
        v307 = 3;
      }

      else
      {
        v307 = 1;
      }

      if (v231 == 1)
      {
        v307 = 0;
      }

      *(v66 + 136) = v307;
      *(v66 + 145) = v345 & 1;
      *(v66 + 152) = v239;
      return v66;
    case 0xBu:
      v85 = v312;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v312, type metadata accessor for __RKEntityStopAnimateActionArguments);
      __RKEntityLookupTable.entity(for:)(v85);
      type metadata accessor for __RKEntityStopAnimateAction();
      swift_allocObject();
      v66 = __RKEntityAnimateAction.init(targetEntity:)();
      v86 = type metadata accessor for __RKEntityStopAnimateActionArguments;
      goto LABEL_135;
    case 0xCu:
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v43, type metadata accessor for __RKEntityToggleAnimateActionArguments);
      __RKEntityLookupTable.entity(for:)(v43);
      type metadata accessor for __RKEntityToggleAnimateAction();
      *(swift_allocObject() + 264) = 0;
      v66 = __RKEntityAnimateAction.init(targetEntity:)();
      v92 = type metadata accessor for __RKEntityToggleAnimateActionArguments;
LABEL_183:
      v130 = v92;
      v131 = v43;
      goto LABEL_233;
    case 0xDu:
      v85 = v313;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v313, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
      v184 = __RKEntityLookupTable.entity(for:)(v85);
      type metadata accessor for __RKEntityToggleVisibilityAction();
      v185 = swift_allocObject();
      *(v185 + 112) = 0;
      *(v185 + 120) = 1;
      *(v185 + 128) = 0;
      *(v185 + 136) = 1;
      *(v185 + 140) = 0;
      v66 = __RKEntityAction.init(targetEntity:)(v184);
      v86 = type metadata accessor for __RKEntityToggleVisibilityActionArguments;
      goto LABEL_135;
    case 0xEu:
      v80 = v345;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v345, type metadata accessor for __RKEntityTransformActionArguments);
      v81 = __RKEntityLookupTable.entity(for:)(v80);
      v82 = v80 + v327[5];
      v83 = v80 + v327[6];
      v84 = *(v83 + 16);
      *&v349 = v81;
      if (v84)
      {
        v343 = 0;
        v344 = 0;
      }

      else
      {
        v270 = v83;
        v269 = *v83;
        v344 = *(v270 + 8);
        v343 = v269;
      }

      v271 = *v82;
      v272 = *(v82 + 8);
      LODWORD(v342) = *(v82 + 16);
      v273 = v80 + v327[7];
      v274 = v80 + v327[8];
      if (*(v274 + 4))
      {
        v275 = 1.0;
      }

      else
      {
        v275 = *v274;
      }

      v276 = v327[9];
      v277 = *(v80 + v327[10]);
      if (v277 == 10)
      {
        v277 = 0;
      }

      LODWORD(v341) = v277;
      v278 = v327[12];
      v279 = *(v80 + v327[11]);
      if (v279 == 3)
      {
        v279 = 0;
      }

      LODWORD(v340) = v279;
      v280 = v327[13];
      v281 = v80 + v327[14];
      v282 = *v281;
      v283 = *(v281 + 4) == 0;
      LODWORD(v337) = *v273;
      LODWORD(v336) = *(v273 + 4);
      LODWORD(v338) = *(v80 + v276);
      LODWORD(v339) = *(v80 + v278);
      if (v283)
      {
        v284 = v282;
      }

      else
      {
        v284 = 0.0;
      }

      if (*(v80 + v280 + 4))
      {
        v285 = 0.0;
      }

      else
      {
        v285 = *(v80 + v280);
      }

      v286 = v327[15];
      v287 = v314;
      outlined init with copy of UUID?(v80 + v286, v314);
      v288 = v346;
      v289 = *(v347 + 48);
      v290 = v289(v287, 1, v346);
      outlined destroy of UUID?(v287);
      if (v290 == 1)
      {
        v291 = 0;
LABEL_218:
        v295 = v349;
        v296 = v344;
        v297 = v343;
        v298 = v342;
        type metadata accessor for __RKEntityTransformAction();
        v299 = swift_allocObject();
        *(v299 + 192) = 0;
        *(v299 + 208) = 0u;
        *(v299 + 224) = 0u;
        *(v299 + 240) = xmmword_1C1887620;
        *(v299 + 256) = 0;
        *(v299 + 264) = 1;
        *(v299 + 272) = 0u;
        *(v299 + 288) = 0u;
        *(v299 + 304) = 0u;
        *(v299 + 320) = 0u;
        *(v299 + 336) = 0u;
        *(v299 + 352) = 0;
        *(v299 + 112) = v271;
        *(v299 + 120) = v272;
        *(v299 + 128) = v298;
        *(v299 + 144) = v297;
        *(v299 + 152) = v296;
        *(v299 + 160) = v84;
        *(v299 + 164) = v337;
        *(v299 + 168) = v336;
        *(v299 + 172) = v275;
        *(v299 + 176) = v338 & 1;
        *(v299 + 177) = v341;
        *(v299 + 178) = v340;
        *(v299 + 180) = v284;
        *(v299 + 184) = v285;
        *(v299 + 179) = v339 & 1;
        swift_beginAccess();
        *(v299 + 192) = v291;
        v66 = __RKEntityAction.init(targetEntity:)(v295);
        v130 = type metadata accessor for __RKEntityTransformActionArguments;
        v131 = v345;
        goto LABEL_233;
      }

      v292 = v80 + v286;
      v293 = v310;
      outlined init with copy of UUID?(v292, v310);
      result = v289(v293, 1, v288);
      if (result != 1)
      {
        v291 = __RKEntityLookupTable.entity(for:)(v293);
        (*(v347 + 8))(v293, v288);
        goto LABEL_218;
      }

      __break(1u);
LABEL_244:
      __break(1u);
      return result;
    case 0xFu:
      v119 = *v53;
      type metadata accessor for __RKWaitAction();
      v120 = swift_allocObject();
      *(v120 + 120) = 0;
      *(v120 + 128) = 0x3F80624DD2F1A9FCLL;
      *(v120 + 136) = 0u;
      *(v120 + 152) = 0u;
      *(v120 + 168) = 0u;
      *(v120 + 184) = 0;
      *(v120 + 108) = v119;
      *(v120 + 112) = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
      return __RKEntityAction.init(targetEntity:)(0);
    case 0x10u:
      v70 = v334;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v334, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v71 = __RKEntityLookupTable.entity(for:)(v70);
      v72 = v329;
      v73 = __RKEntityLookupTable.entity(for:)(v70 + *(v329 + 20));
      v74 = v72[7];
      v75 = v70 + v72[6];
      if (*(v75 + 4))
      {
        v76 = 1.0;
      }

      else
      {
        v76 = *v75;
      }

      if (*(v70 + v74 + 4))
      {
        v77 = 1.0;
      }

      else
      {
        v77 = *(v70 + v74);
      }

      v78 = v70 + v72[8];
      if (*(v78 + 16))
      {
        v79 = *&zmmword_1C1887630[16];
      }

      else
      {
        v79 = *v78;
      }

      v349 = v79;
      v261 = *(v70 + v72[9]);
      v262 = *(v70 + v72[10]);
      v263 = v72[12];
      v264 = *(v70 + v72[11]);
      v265 = v70 + v72[13];
      if (*(v265 + 4))
      {
        v266 = 0.0;
      }

      else
      {
        v266 = *v265;
      }

      if (*(v70 + v263 + 4))
      {
        v267 = 0.0;
      }

      else
      {
        v267 = *(v70 + v263);
      }

      type metadata accessor for __RKEntityOrbitEntityAction();
      v268 = swift_allocObject();
      *(v268 + 160) = 0u;
      *(v268 + 176) = 0u;
      *(v268 + 192) = 0u;
      *(v268 + 208) = 0u;
      *(v268 + 224) = 0u;
      *(v268 + 240) = 0u;
      *(v268 + 256) = 0u;
      *(v268 + 272) = 0u;
      *(v268 + 288) = 1;
      *(v268 + 296) = 0;
      *(v268 + 304) = 0;
      *(v268 + 320) = 0u;
      *(v268 + 336) = 0u;
      *(v268 + 352) = 1;
      *(v268 + 112) = v73;
      *(v268 + 120) = v76;
      *(v268 + 124) = v77;
      *(v268 + 128) = v349;
      *(v268 + 144) = v261 & 1;
      *(v268 + 145) = v262 & 1;
      *(v268 + 148) = v266;
      *(v268 + 152) = v267;
      *(v268 + 146) = v264 & 1;
      *(v268 + 354) = 0;
      v66 = __RKEntityAction.init(targetEntity:)(v71);
      v130 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
      v131 = v70;
      goto LABEL_233;
    case 0x11u:
      v46 = v337;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v337, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      __RKEntityLookupTable.entity(for:)(v46);
      v153 = v333[6];
      v154 = &v46[v333[5]];
      if (v154[4])
      {
        v155 = 1.0;
      }

      else
      {
        v155 = *v154;
      }

      if (v46[v153 + 4])
      {
        v156 = 0.0;
      }

      else
      {
        v156 = *&v46[v153];
      }

      v157 = &v46[v333[7]];
      v158 = *&zmmword_1C1887630[16];
      v159 = *&zmmword_1C1887630[16];
      if ((v157[16] & 1) == 0)
      {
        v159 = *v157;
      }

      v349 = v159;
      v160 = v333[9];
      v161 = &v46[v333[8]];
      if (v161[4])
      {
        v162 = 0.0;
      }

      else
      {
        v162 = *v161;
      }

      if ((v46[v160 + 16] & 1) == 0)
      {
        v158 = *&v46[v160];
      }

      v348 = v158;
      v163 = v46[v333[10]];
      type metadata accessor for __RKEntityLookAtCameraAction();
      v164 = swift_allocObject();
      *(v164 + 184) = 0u;
      *(v164 + 200) = 0u;
      *(v164 + 216) = 0u;
      *(v164 + 232) = 0u;
      *(v164 + 248) = 1;
      *(v164 + 256) = 0;
      *(v164 + 264) = 0;
      *(v164 + 108) = v155;
      *(v164 + 112) = v156;
      v165 = v348;
      *(v164 + 128) = v349;
      *(v164 + 160) = v165;
      *(v164 + 176) = v163 & 1;
      *(v164 + 144) = v162;

      v66 = __RKEntityAction.init(targetEntity:)(v166);
      __RKEntityLookAtCameraAction.setFinalRotation()();

      v118 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
      goto LABEL_232;
    case 0x12u:
      v54 = v341;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v341, type metadata accessor for __RKEntitySwapEntityActionArguments);
      v198 = v340;
      v199 = v54 + *(v340 + 24);
      v200 = v315;
      _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(v199, v315, type metadata accessor for __RKEntityHideActionArguments);
      *&v349 = __RKEntityLookupTable.entity(for:)(v200);
      v201 = v346;
      v347 = *(v347 + 8);
      (v347)(v200, v346);
      v202 = v343[6];
      v203 = v199 + v343[5];
      v204 = 1.0;
      if (*(v203 + 4))
      {
        v205 = 1.0;
      }

      else
      {
        v205 = *v203;
      }

      v206 = 10.0;
      if (*(v199 + v202 + 4))
      {
        v207 = 10.0;
      }

      else
      {
        v207 = *(v199 + v202);
      }

      if (*(v199 + v343[7]) == 10)
      {
        v208 = 0;
      }

      else
      {
        v208 = *(v199 + v343[7]);
      }

      if (*(v199 + v343[8]) == 3)
      {
        v209 = 0;
      }

      else
      {
        v209 = *(v199 + v343[8]);
      }

      v210 = *(v199 + v343[11]);
      if (*(v199 + v343[14]) == 3)
      {
        v211 = 0;
      }

      else
      {
        v211 = *(v199 + v343[14]);
      }

      if (*(v199 + v343[15]) == 10)
      {
        v212 = 0;
      }

      else
      {
        v212 = *(v199 + v343[15]);
      }

      type metadata accessor for __RKEntityHideAction();
      v213 = swift_allocObject();
      *(v213 + 174) = 0;
      *(v213 + 176) = 0u;
      *(v213 + 192) = 0u;
      *(v213 + 208) = 0u;
      *(v213 + 224) = 0u;
      *(v213 + 240) = 0u;
      *(v213 + 256) = 0u;
      *(v213 + 272) = 0u;
      *(v213 + 288) = 0u;
      *(v213 + 304) = 0u;
      *(v213 + 320) = 0u;
      *(v213 + 336) = 0;
      *(v213 + 144) = v205;
      *(v213 + 148) = v207;
      *(v213 + 152) = v208;
      *(v213 + 153) = v209;
      *(v213 + 164) = 0;
      *(v213 + 160) = v210 & 1;
      *(v213 + 154) = 0;
      *(v213 + 156) = 0;
      *(v213 + 172) = v211;
      *(v213 + 173) = v212;
      *(v213 + 112) = 0;
      *(v213 + 120) = 1;
      *(v213 + 128) = 0;
      *(v213 + 136) = 1;
      *(v213 + 140) = 0;
      *&v349 = __RKEntityAction.init(targetEntity:)(v349);
      v214 = v54 + *(v198 + 28);
      v215 = v321;
      _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(v214, v321, type metadata accessor for __RKEntityShowActionArguments);
      v216 = __RKEntityLookupTable.entity(for:)(v215);
      (v347)(v215, v201);
      v217 = v344[6];
      v218 = v214 + v344[5];
      if (!*(v218 + 4))
      {
        v204 = *v218;
      }

      if (!*(v214 + v217 + 4))
      {
        v206 = *(v214 + v217);
      }

      if (*(v214 + v344[7]) == 10)
      {
        v219 = 0;
      }

      else
      {
        v219 = *(v214 + v344[7]);
      }

      if (*(v214 + v344[8]) == 3)
      {
        v220 = 0;
      }

      else
      {
        v220 = *(v214 + v344[8]);
      }

      v221 = *(v214 + v344[11]);
      if (*(v214 + v344[14]) == 3)
      {
        v222 = 0;
      }

      else
      {
        v222 = *(v214 + v344[14]);
      }

      if (*(v214 + v344[15]) == 10)
      {
        v223 = 0;
      }

      else
      {
        v223 = *(v214 + v344[15]);
      }

      type metadata accessor for __RKEntityShowAction();
      v224 = swift_allocObject();
      *(v224 + 176) = 0u;
      *(v224 + 192) = 0u;
      *(v224 + 208) = 0u;
      *(v224 + 224) = 0u;
      *(v224 + 240) = 0u;
      *(v224 + 256) = 0u;
      *(v224 + 272) = 0u;
      *(v224 + 288) = 0u;
      *(v224 + 304) = 0u;
      *(v224 + 320) = 0u;
      *(v224 + 336) = 0;
      *(v224 + 144) = v204;
      *(v224 + 148) = v206;
      *(v224 + 152) = v219;
      *(v224 + 153) = v220;
      *(v224 + 154) = 0;
      *(v224 + 156) = 1065353216;
      *(v224 + 164) = 0;
      *(v224 + 160) = v221 & 1;
      *(v224 + 172) = v222;
      *(v224 + 173) = v223;
      *(v224 + 112) = 0;
      *(v224 + 120) = 1;
      *(v224 + 128) = 0;
      *(v224 + 136) = 1;
      *(v224 + 140) = 0;
      v225 = __RKEntityAction.init(targetEntity:)(v216);
      v226 = __RKEntityLookupTable.entity(for:)(v54);
      v227 = __RKEntityLookupTable.entity(for:)(v54 + *(v198 + 20));
      type metadata accessor for __RKEntitySwapEntityAction();
      v228 = swift_allocObject();
      *(v228 + 136) = 0u;
      *(v228 + 152) = 0u;
      *(v228 + 168) = 0u;
      v229 = v349;
      *(v228 + 112) = v227;
      *(v228 + 120) = v229;
      *(v228 + 128) = v225;
      v66 = __RKEntityAction.init(targetEntity:)(v226);
      v69 = type metadata accessor for __RKEntitySwapEntityActionArguments;
      goto LABEL_176;
    case 0x13u:
      v46 = v336;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v336, type metadata accessor for __RKEntitySpinActionArguments);
      v253 = __RKEntityLookupTable.entity(for:)(v46);
      v254 = v330[6];
      v255 = &v46[v330[5]];
      if (v255[4])
      {
        v256 = 1.0;
      }

      else
      {
        v256 = *v255;
      }

      if (v46[v254 + 4])
      {
        v257 = 1.0;
      }

      else
      {
        v257 = *&v46[v254];
      }

      v258 = v46[v330[7]];
      v259 = &v46[v330[8]];
      if (v259[16])
      {
        v260 = *&zmmword_1C1887630[16];
      }

      else
      {
        v260 = *v259;
      }

      v349 = v260;
      type metadata accessor for __RKEntitySpinAction();
      v308 = swift_allocObject();
      *(v308 + 152) = 0;
      *(v308 + 160) = 1;
      *(v308 + 168) = 0u;
      *(v308 + 184) = 0u;
      *(v308 + 200) = 0u;
      *(v308 + 216) = 0u;
      *(v308 + 232) = 0u;
      *(v308 + 108) = v256;
      *(v308 + 112) = v257;
      *(v308 + 128) = v349;
      *(v308 + 144) = v258 & 1;
      v66 = __RKEntityAction.init(targetEntity:)(v253);
      v118 = type metadata accessor for __RKEntitySpinActionArguments;
LABEL_232:
      v130 = v118;
      v131 = v46;
      goto LABEL_233;
    case 0x14u:
      v85 = v332;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v332, type metadata accessor for __RKEntitySetOpacityActionArguments);
      v167 = __RKEntityLookupTable.entity(for:)(v85);
      v168 = *(v85 + *(v331 + 20));
      v169 = *(v85 + *(v331 + 24));
      type metadata accessor for __RKEntitySetOpacityAction();
      swift_allocObject();
      v66 = __RKEntitySetOpacityAction.init(targetEntity:duration:opacity:)(v167, v168, v169);
      v86 = type metadata accessor for __RKEntitySetOpacityActionArguments;
LABEL_135:
      v130 = v86;
      v131 = v85;
      goto LABEL_233;
    case 0x15u:
      v173 = v339;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v339, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      v174 = __RKEntityLookupTable.entity(for:)(v173);
      v175 = v338;
      v176 = __RKEntityLookupTable.entity(for:)(v173 + *(v338 + 20));
      v177 = (v173 + v175[6]);
      v179 = *v177;
      v178 = v177[1];
      v180 = v311;
      outlined init with copy of UUID?(v173 + v175[7], v311);
      v181 = v346;
      v182 = v347;
      if ((*(v347 + 48))(v180, 1, v346) == 1)
      {

        v183 = 0;
      }

      else
      {
        v300 = v180;
        v301 = v342;
        (*(v182 + 32))(v342, v300, v181);

        v183 = __RKEntityLookupTable.entity(for:)(v301);
        (*(v182 + 8))(v301, v181);
      }

      v302 = (v173 + v175[8]);
      v304 = *v302;
      v303 = v302[1];
      type metadata accessor for __RKEntityPlayTimelineAction();
      v305 = swift_allocObject();
      *(v305 + 160) = 0u;
      *(v305 + 176) = 0u;
      *(v305 + 192) = 0u;
      *(v305 + 208) = 0u;
      *(v305 + 224) = 0u;
      *(v305 + 240) = 0;
      *(v305 + 112) = v176;
      *(v305 + 120) = v179;
      *(v305 + 128) = v178;
      *(v305 + 136) = v183;
      *(v305 + 144) = v304;
      *(v305 + 152) = v303;

      v66 = __RKEntityAction.init(targetEntity:)(0);
      outlined destroy of __RKEntityPlayTimelineActionArguments(v173, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      swift_beginAccess();
      *(v66 + 16) = v174;

      swift_beginAccess();
      *(v66 + 105) = 0;
      return v66;
    default:
      v54 = v335;
      outlined init with take of __RKEntityPlayTimelineActionArguments(v53, v335, type metadata accessor for __RKEntityAudioActionArguments);
      v55 = __RKEntityLookupTable.entity(for:)(v54);
      v56 = v316[5];
      if (*(v54 + v316[6]) == 3)
      {
        v57 = 0;
      }

      else
      {
        v57 = *(v54 + v316[6]);
      }

      v59 = *(v54 + v56);
      v58 = *(v54 + v56 + 8);
      v60 = v54 + v316[7];
      if (*(v60 + 8))
      {
        v61 = 1.0;
      }

      else
      {
        v61 = *v60;
      }

      v62 = *(v54 + v316[8]);
      if (*(v54 + v316[9]) == 3)
      {
        v63 = 0;
      }

      else
      {
        v63 = *(v54 + v316[9]);
      }

      if (*(v54 + v316[10]) == 3)
      {
        v64 = 1;
      }

      else
      {
        v64 = *(v54 + v316[10]);
      }

      type metadata accessor for __RKEntityAudioAction();
      v65 = swift_allocObject();
      *(v65 + 112) = 0x4024000000000000;
      *(v65 + 160) = 0;
      *(v65 + 168) = 1;
      *(v65 + 176) = 0;
      *(v65 + 120) = v57;
      *(v65 + 128) = v59;
      *(v65 + 136) = v58;
      *(v65 + 144) = v61;
      *(v65 + 152) = v62 & 1;
      *(v65 + 153) = v63;

      v66 = __RKEntityAction.init(targetEntity:)(v55);
      swift_beginAccess();
      *(v66 + 105) = v64;
      swift_beginAccess();
      swift_beginAccess();
      if (!*(v66 + 16))
      {

        goto LABEL_237;
      }

      if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), !MEMORY[0x1C68FE1F0](ServiceLocator)))
      {

LABEL_237:
        *(v66 + 176) = 0;
        goto LABEL_238;
      }

      String.utf8CString.getter();

      AssetHandle = REAssetManagerCreateAssetHandle();

      *(v66 + 176) = AssetHandle;
      if (!AssetHandle)
      {
LABEL_238:
        outlined destroy of __RKEntityPlayTimelineActionArguments(v54, type metadata accessor for __RKEntityAudioActionArguments);

        return v66;
      }

      REAssetHandleLoadNow();
      if (v55)
      {
        if (REEntityGetSceneNullable())
        {
          if (RESceneGetECSManagerNullable())
          {
            REECSManagerGetServiceLocator();
            if (REServiceLocatorGetAudioService())
            {
              REAudioServiceStartAudioEngine();

              v69 = type metadata accessor for __RKEntityAudioActionArguments;
LABEL_176:
              v130 = v69;
              v131 = v54;
LABEL_233:
              outlined destroy of __RKEntityPlayTimelineActionArguments(v131, v130);
              return v66;
            }
          }
        }

        outlined destroy of __RKEntityPlayTimelineActionArguments(v54, type metadata accessor for __RKEntityAudioActionArguments);
      }

      else
      {
        outlined destroy of __RKEntityPlayTimelineActionArguments(v54, type metadata accessor for __RKEntityAudioActionArguments);
      }

LABEL_242:

      return v66;
  }
}

void closure #1 in __RKEntityInteractionManager.entitiesWithInteractionSpecifications()(uint64_t a1, uint64_t a2)
{
  ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
  if (v3 < 0)
  {
    goto LABEL_36;
  }

  v4 = ComponentsOfCustomType;
  v5 = v3;
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    do
    {
      Entity = REComponentGetEntity();
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }

        if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v7 & 1) == 0))
        {
          swift_endAccess();
          v8 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = static SceneManager.customComponentTypeObjectIdToHandles;
          static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
          static SceneManager.customComponentTypeObjectIdToHandles = v25;
        }

        swift_endAccess();
        if (!REEntityGetCustomComponent())
        {
          goto LABEL_31;
        }

        Object = RECustomComponentGetObject();
        if (!Object)
        {
          goto LABEL_31;
        }

        v11 = *Object;
        if (*(Object + 8) || !v11)
        {
        }

        else
        {
          v12 = *v11;
          v13 = String.init(utf8String:)();
          if (v14)
          {
            v15 = v13;
          }

          else
          {
            v15 = 0;
          }

          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = 0xE000000000000000;
          }

          v11 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v12 == 42, v15, v16);

          type metadata accessor for IntrospectionDataCleanupHelper();
          *(swift_allocObject() + 16) = v11;
        }

        if (!v11)
        {
          goto LABEL_37;
        }

        v17 = String.init(utf8String:)();
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0xE000000000000000;
        }

        v20 = MEMORY[0x1C68F3280](v17, v19);

        v21 = NSClassFromString(v20);

        if (v21 && (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v22 = swift_dynamicCastMetatype()) != 0))
        {
          v23 = (*(v22 + 232))();
          v24 = *(v23 + 16);

          MEMORY[0x1C68F9740](v24, 0);
          *(v23 + 16) = Entity;
          MEMORY[0x1C68F9740](Entity, v23);
        }

        else
        {
LABEL_31:
          makeEntity(for:)(Entity);
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 8;
      --v5;
    }

    while (v5);
  }
}

void (*protocol witness for __RKEntityInteractionService.automaticallyInvokesStartTrigger.modify in conformance __RKEntityInteractionManager(uint64_t **a1))(void *a1)
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
  v2[4] = __RKEntityInteractionManager.automaticallyInvokesStartTrigger.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t static __RKEntityTrigger.trigger(for:entityLookupTable:)(uint64_t a1, uint64_t a2)
{
  v97 = type metadata accessor for UUID();
  v4 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v91 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v90 = v81 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v81 - v9;
  v11 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v81 - v16);
  _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(a1, v81 - v16, type metadata accessor for __RKEntityTriggerSpecification);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v70 = v4;
      v71 = v97;
      (*(v4 + 32))(v10, v17, v97);
      v72 = __RKEntityLookupTable.entity(for:)(v10);
      (*(v70 + 8))(v10, v71);
      type metadata accessor for __RKEntityTapTrigger();
      v73 = swift_allocObject();
      *(v73 + 24) = 0;
      swift_beginAccess();
      *(v73 + 24) = v72;
      *(v73 + 16) = 0;
      *(v73 + 18) = 0;
      swift_beginAccess();
      result = v73;
      *(v73 + 16) = 0;
      return result;
    case 2u:
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
      v31 = *(v17 + *(v30 + 48));
      v32 = *(v17 + *(v30 + 64));
      v33 = v4;
      v34 = *(v4 + 32);
      v35 = v90;
      v34(v90, v17, v97);
      v36 = __RKEntityLookupTable.entity(for:)(v35);
      v37 = v36;
      v101 = MEMORY[0x1E69E7CC0];
      v38 = *(v31 + 16);
      if (v38)
      {
        v82 = v36;
        v83 = v32;
        v39 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v81[1] = v31;
        v40 = v31 + v39;
        swift_beginAccess();
        v42 = *(v33 + 16);
        v41 = v33 + 16;
        v95 = v42;
        v43 = (v41 - 8);
        v88 = MEMORY[0x1E69E7CC0];
        v94 = *(v41 + 56);
        *&v44 = 136315394;
        v84 = v44;
        v45 = v91;
        v87 = (v41 - 8);
        v85 = a2;
        v86 = v41;
        v42(v91, v40, v97);
        while (1)
        {
          v102 = 91;
          v103 = 0xE100000000000000;
          v99 = 0;
          v100 = 0xE000000000000000;
          v98 = a2;

          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x1C68F3410](v99, v100);

          MEMORY[0x1C68F3410](8285, 0xE200000000000000);
          v46 = StaticString.description.getter();
          MEMORY[0x1C68F3410](v46);

          MEMORY[0x1C68F3410](8250, 0xE200000000000000);

          v47 = v103;
          v96 = v102;
          v48 = *(a2 + 16);
          if (*(v48 + 16))
          {

            v49 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
            if (v50)
            {
              v51 = *(*(v48 + 56) + 8 * v49);
            }

            else
            {
              v51 = 0;
            }
          }

          else
          {
            v51 = 0;
          }

          v52 = static os_log_type_t.debug.getter();
          if (one-time initialization token for interactionsLoggingEnabled != -1)
          {
            v67 = v52;
            swift_once();
            v52 = v67;
          }

          if (interactionsLoggingEnabled)
          {
            v92 = v52;
            v93 = v81;
            v53 = v47;
            v102 = 0;
            v103 = 0xE000000000000000;
            _StringGuts.grow(_:)(19);

            v102 = 0x6E696E7275746552;
            v103 = 0xEA00000000002067;
            if (v51)
            {
              v99 = 0;
              v100 = 0xE000000000000000;
              v98 = v51;
              _print_unlocked<A, B>(_:_:)();
              v54 = v99;
              v55 = v100;
            }

            else
            {
              v55 = 0xE300000000000000;
              v54 = 7104878;
            }

            MEMORY[0x1C68F3410](v54, v55);

            MEMORY[0x1C68F3410](0x20726F6620, 0xE500000000000000);
            lazy protocol witness table accessor for type UUID and conformance UUID();
            v56 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1C68F3410](v56);

            v57 = v103;
            v89 = v102;
            if (one-time initialization token for interactionsLogger != -1)
            {
              swift_once();
            }

            v58 = type metadata accessor for Logger();
            __swift_project_value_buffer(v58, interactionsLogger);

            v59 = Logger.logObject.getter();

            v60 = v92;
            if (os_log_type_enabled(v59, v92))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              v102 = v62;
              *v61 = v84;
              *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v53, &v102);
              *(v61 + 12) = 2080;
              v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v57, &v102);

              *(v61 + 14) = v63;
              v45 = v91;
              _os_log_impl(&dword_1C1358000, v59, v60, "%s%s", v61, 0x16u);
              swift_arrayDestroy();
              v64 = v62;
              a2 = v85;
              MEMORY[0x1C6902A30](v64, -1, -1);
              MEMORY[0x1C6902A30](v61, -1, -1);
            }

            else
            {
            }

            v43 = v87;
          }

          else
          {
          }

          v65 = *v43;
          v66 = (*v43)(v45, v97);
          if (v51)
          {
            MEMORY[0x1C68F3650](v66);
            if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v43 = v87;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v88 = v101;
          }

          v40 += v94;
          if (!--v38)
          {
            break;
          }

          v95(v45, v40, v97);
        }

        v32 = v83;
        v37 = v82;
        v78 = v88;
      }

      else
      {

        v65 = *(v33 + 8);
        v78 = MEMORY[0x1E69E7CC0];
      }

      v65(v90, v97);
      type metadata accessor for __RKEntityCollisionTrigger();
      v80 = swift_allocObject();
      *(v80 + 24) = 0;
      swift_beginAccess();
      result = v80;
      *(v80 + 24) = v37;
      *(v80 + 32) = v78;
      *(v80 + 40) = v32;
      *(v80 + 16) = 0;
      *(v80 + 18) = 0;
      return result;
    case 3u:
      v68 = *v17;
      v69 = v17[1];
      v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      type metadata accessor for __RKCustomTrigger();
      result = swift_allocObject();
      *(result + 24) = v68;
      *(result + 32) = v69;
      goto LABEL_36;
    case 4u:
      v26 = *v17;
      v27 = v17[1];
      v28 = v17[2];
      type metadata accessor for __RKCustomTrigger();
      result = swift_allocObject();
      *(result + 24) = v26;
      *(result + 32) = v27;
      if (!v28)
      {
        v29 = result;
        v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        result = v29;
      }

LABEL_36:
      *(result + 40) = v28;
      goto LABEL_50;
    case 5u:
      v74 = *v17;
      v104 = MEMORY[0x1E69E7CC0];
      v75 = *(v74 + 16);
      if (v75)
      {
        v76 = v74 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v77 = *(v12 + 72);
        do
        {
          _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(v76, v14, type metadata accessor for __RKEntityTriggerSpecification);
          static __RKEntityTrigger.trigger(for:entityLookupTable:)(v14, a2);
          MEMORY[0x1C68F3650]();
          if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          outlined destroy of __RKEntityPlayTimelineActionArguments(v14, type metadata accessor for __RKEntityTriggerSpecification);
          v76 += v77;
          --v75;
        }

        while (v75);
        v79 = v104;
      }

      else
      {

        v79 = MEMORY[0x1E69E7CC0];
      }

      type metadata accessor for __RKEntityTriggerGroup();
      swift_allocObject();
      return __RKEntityTriggerGroup.init(triggers:)(v79);
    case 6u:
      type metadata accessor for __RKEntityDragTrigger();
      goto LABEL_49;
    case 7u:
      type metadata accessor for __RKLightTrigger();
      goto LABEL_49;
    case 8u:
      type metadata accessor for __RKEntityLookAtTrigger();
      goto LABEL_49;
    case 9u:
      type metadata accessor for __RKEntityPlacementTrigger();
      goto LABEL_49;
    case 0xAu:
      type metadata accessor for __RKEntityRemovalTrigger();
      goto LABEL_49;
    case 0xBu:
      type metadata accessor for __RKSoundTrigger();
      goto LABEL_49;
    case 0xCu:
      type metadata accessor for __RKStartTrigger();
      result = swift_allocObject();
      *(result + 16) = 0;
      return result;
    case 0xDu:
      type metadata accessor for __RKTimerTrigger();
LABEL_49:
      result = swift_allocObject();
LABEL_50:
      *(result + 16) = 0;
      *(result + 18) = 0;
      break;
    default:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
      v19 = *(v17 + *(v18 + 48));
      v20 = v97;
      v21 = *(v17 + *(v18 + 64));
      v22 = v4;
      (*(v4 + 32))(v10, v17, v97);
      v23 = __RKEntityLookupTable.entity(for:)(v10);
      (*(v22 + 8))(v10, v20);
      type metadata accessor for __RKEntityProximityTrigger();
      v24 = swift_allocObject();
      *(v24 + 24) = 0;
      *(v24 + 37) = 0;
      swift_beginAccess();
      result = v24;
      *(v24 + 24) = v23;
      *(v24 + 32) = v19;
      *(v24 + 36) = v21;
      *(v24 + 16) = 0;
      *(v24 + 18) = 0;
      break;
  }

  return result;
}

Swift::Bool __swiftcall Entity.applyTapForBehaviors()()
{
  v1 = v0;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v2 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

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

  Scene.__interactionService.getter();
  type metadata accessor for __RKEntityInteractionManager();
  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
LABEL_8:
    v10 = 91;
    v11 = 0xE100000000000000;
    v8 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v8, &v10);

    v7 = 0;
    return v7 & 1;
  }

  v10 = 91;
  v11 = 0xE100000000000000;
  v6 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v6, &v10);

  v7 = __RKEntityInteractionManager.performTapInteraction(for:)(v1);

  swift_unknownObjectRelease();
  return v7 & 1;
}

uint64_t implicit closure #1 in $defer #1 () in __RKEntityInteractionManager.interactions(matching:entities:)(uint64_t a1)
{
  _StringGuts.grow(_:)(17);
  MEMORY[0x1C68F3410](0x65746E6920646E45, 0xEF206E6F69746372);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Component] and conformance [A](&lazy protocol witness table cache variable for type [Entity] and conformance [A], &_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Entity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Component] and conformance [A](&lazy protocol witness table cache variable for type [__REAsset] and conformance [A], &_sSay10RealityKit9__REAssetCGMd, &_sSay10RealityKit9__REAssetCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit9__REAssetCGMd, &_sSay10RealityKit9__REAssetCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for __REAsset();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized __RKEntityInteractionManager.actions(for:)(unint64_t a1)
{
  v1 = a1;
  v19 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v17 = v1;
    v18 = v1 & 0xC000000000000001;
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v16 = i;
    while (v18)
    {
      MEMORY[0x1C68F41F0](v3, v1);
      v4 = __OFADD__(v3++, 1);
      if (v4)
      {
        goto LABEL_30;
      }

LABEL_11:
      swift_beginAccess();
      type metadata accessor for __RKEntityActionGroup();
      v5 = swift_dynamicCastClass();

      if (!v5)
      {
        MEMORY[0x1C68F3650](v6);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v8 = v19;
        goto LABEL_4;
      }

      MEMORY[0x1C68F3650](v7);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v19;
      v9 = __RKEntityActionGroup.allActions()();
      v10 = v9;
      if (v9 >> 62)
      {
        v11 = __CocoaSet.count.getter();
        if (!v11)
        {
LABEL_29:

          goto LABEL_4;
        }
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_29;
        }
      }

      if (v11 < 1)
      {
        goto LABEL_31;
      }

      for (j = 0; j != v11; ++j)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](j, v10);
        }

        else
        {
        }

        MEMORY[0x1C68F3650](v13);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v8 = v19;

      i = v16;
      v1 = v17;
LABEL_4:
      if (v3 == i)
      {
        return v8;
      }
    }

    if (v3 >= *(v15 + 16))
    {
      goto LABEL_32;
    }

    v4 = __OFADD__(v3++, 1);
    if (!v4)
    {
      goto LABEL_11;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined init with take of __RKEntityPlayTimelineActionArguments(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit29__RKEntityActionSpecificationOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of __RKEntityPlayTimelineActionArguments(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSb_Tt1B5(__int16 a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a1 == 2)
  {

    return outlined consume of BindTarget(a2, a3, a4);
  }

  else
  {
    v8 = HIBYTE(a1);
    v9[0] = a2;
    v9[1] = a3;
    v10 = a4;
    specialized static InternalBindPath.pathFromTarget(_:_:)(v9, 1);
    outlined consume of BindTarget(a2, a3, a4);
    String.utf8CString.getter();

    REBindPointCreateReferenceForEntityAnimatedValuesBool();

    REBindPointIsValid();
    REBindPointSetBool();
    if (v8 != 2)
    {
      REBindPointSetBool();
    }

    return REBindPointDestroy();
  }
}

uint64_t _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSf_Tt1B5(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a2 & 0x100) != 0)
  {

    return outlined consume of BindTarget(a3, a4, a5);
  }

  else
  {
    v8 = a2;
    v10[0] = a3;
    v10[1] = a4;
    v11 = a5;
    specialized static InternalBindPath.pathFromTarget(_:_:)(v10, 1);
    outlined consume of BindTarget(a3, a4, a5);
    String.utf8CString.getter();

    REBindPointCreateReferenceForEntityAnimatedValuesFloat();

    REBindPointIsValid();
    REBindPointSetFloat();
    if ((v8 & 1) == 0)
    {
      REBindPointSetFloat();
    }

    return REBindPointDestroy();
  }
}

uint64_t _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSi_Tt1B5(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if ((a3 & 0x100) != 0)
  {

    return outlined consume of BindTarget(a4, a5, a6);
  }

  else
  {
    v9 = a3;
    v11[0] = a4;
    v11[1] = a5;
    v12 = a6;
    specialized static InternalBindPath.pathFromTarget(_:_:)(v11, 1);
    outlined consume of BindTarget(a4, a5, a6);
    String.utf8CString.getter();

    REBindPointCreateReferenceForEntityAnimatedValuesInt64();

    REBindPointIsValid();
    REBindPointSetInt64();
    if ((v9 & 1) == 0)
    {
      REBindPointSetInt64();
    }

    return REBindPointDestroy();
  }
}

void _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSi_Tt1B5(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0x100) != 0)
  {
  }

  else
  {
    v8 = a3;
    v12 = MEMORY[0x1E69E6530];
    v13 = &protocol witness table for Int;
    *&v11 = a1;
    outlined init with take of BindableDataInternal(&v11, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddInt64Value();

    __swift_destroy_boxed_opaque_existential_1(v14);
    if (v8)
    {
    }

    else
    {
      v14[0] = *v5;

      _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSi_Tt1B5(a1, a2, v8, a4, a5, 1u);
    }
  }
}

void _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSf_Tt1B5(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x100) != 0)
  {
  }

  else
  {
    v7 = a2;
    v10 = MEMORY[0x1E69E6448];
    v11 = &protocol witness table for Float;
    LODWORD(v9) = a1;
    outlined init with take of BindableDataInternal(&v9, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddFloatValue();

    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v7)
    {
    }

    else
    {
      v12[0] = *v4;

      _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSf_Tt1B5(a1, v7, a3, a4, 1u);
    }
  }
}

void _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSb_Tt1B5(__int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
  }

  else
  {
    v8 = MEMORY[0x1E69E6370];
    v9 = &protocol witness table for Bool;
    LOBYTE(v7) = a1 & 1;
    outlined init with take of BindableDataInternal(&v7, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddBoolValue();

    __swift_destroy_boxed_opaque_existential_1(v10);
    if ((a1 & 0xFF00) == 0x200)
    {
    }

    else
    {
      v10[0] = *v3;

      _s17RealityFoundation23BindableValuesReferenceVyAA0C5ValueVyxGSgAA10BindTargetO_xmtcAA0C4DataRzluisSb_Tt1B5(a1, a2, a3, 1u);
    }
  }
}

uint64_t static StateMachineUtils.getOrCreateEntityParameter<A>(entity:name:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a4;
  v32 = a7;
  v11 = type metadata accessor for BindableValue(255, a5, *(a6 + 8), a4);
  v26 = type metadata accessor for Optional();
  v12 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v14 = &v25 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v33 = a1;
  v29 = a1;

  v27 = a2;
  v28 = a3;
  v19 = a3;
  v20 = v31;
  v30 = a5;
  Entity.ParameterSet.subscript.getter(a2, v19);

  if ((*(v15 + 48))(v14, 1, v11) != 1)
  {
    (*(v15 + 32))(v18, v14, v11);
    BindableValue.value.getter(v11, v32);
    return (*(v15 + 8))(v18, v11);
  }

  (*(v12 + 8))(v14, v26);
  if (v20 == MEMORY[0x1E69E6530])
  {
    v33 = v29;

    v23 = v28;

    _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSi_Tt1B5(0, 0, 1, v27, v23);

    v33 = 0;
  }

  else if (v20 == MEMORY[0x1E69E6448])
  {
    v33 = v29;

    v24 = v28;

    _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSf_Tt1B5(0, 1, v27, v24);

    LODWORD(v33) = 0;
  }

  else
  {
    if (v20 != MEMORY[0x1E69E6370])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v33 = v29;

    v21 = v28;

    _s10RealityKit6EntityC0A10FoundationE12ParameterSetVyAD13BindableValueVyxGSgSS_xmtcAD0G4DataRzluisSb_Tt1B5(512, v27, v21);

    LOBYTE(v33) = 0;
  }

  return swift_dynamicCast();
}

uint64_t static StateMachineUtils.createEntityParameterIfDoesNotExist<A>(entity:name:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static StateMachineUtils.getOrCreateEntityParameter<A>(entity:name:type:)(v9, v10, v11, v12, v13, v14, v8);
  return (*(v6 + 8))(v8, a5);
}

uint64_t static StateMachineUtils.convert(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 5u)
  {
    _StringGuts.grow(_:)(44);
    MEMORY[0x1C68F3410](0xD00000000000002ALL, 0x80000001C18EF2D0);
    type metadata accessor for REStateTransitionInterruptionType(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t static StateMachineUtils.convert<A>(_:)(uint64_t a1)
{
  if (a1 == MEMORY[0x1E69E6530])
  {
    return 1;
  }

  if (a1 == MEMORY[0x1E69E6448])
  {
    return 2;
  }

  if (a1 == MEMORY[0x1E69E6370])
  {
    return 3;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static StateMachineUtils.logError(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v14);
    _os_log_impl(&dword_1C1358000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1C6902A30](v11, -1, -1);
    MEMORY[0x1C6902A30](v10, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaDictionary.lookup(_:)();

    if (v2)
    {
      type metadata accessor for RESceneDescriptor();
      swift_dynamicCast();
    }
  }

  else if (*(a2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    if (v3)
    {
    }
  }
}

unint64_t specialized Dictionary.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v6 & 1) != 0))
  {
    v7 = *(*(a3 + 56) + 8 * result);
    *a4 = v7;

    return v7;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t static __USDARReferenceProvidingPlugin.instance(for:)(void *a1)
{
  if (one-time initialization token for instances != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return specialized AssetServiceScopedRegistry.instance(for:)(a1);
}

RealityFoundation::ReferenceObjectAR_optional __swiftcall __USDARReferenceProvidingPlugin.fetchReferenceObject(group:name:)(Swift::String group, Swift::String name)
{
  v4 = v3;
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v7 = group._object;
  v8 = group._countAndFlagsBits;
  v9 = v2;
  v10._countAndFlagsBits = 47;
  v10._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v10) || (v11 = 47, v12 = 0xE100000000000000, v13._countAndFlagsBits = 47, v13._object = 0xE100000000000000, String.hasPrefix(_:)(v13)))
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v11, v12);

  MEMORY[0x1C68F3410](countAndFlagsBits, object);

  swift_beginAccess();
  v14 = *(v4 + 16);

  specialized Dictionary.subscript.getter(v8, v7, v14, v9);

  result.value.object.super.isa = v15;
  result.is_nil = v16;
  return result;
}

double __USDARReferenceProvidingPlugin.fetchReferenceImage(group:name:physicalWidth:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v12._countAndFlagsBits = 47;
  v12._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v12) || (v13 = 47, v14 = 0xE100000000000000, v15._countAndFlagsBits = 47, v15._object = 0xE100000000000000, String.hasPrefix(_:)(v15)))
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v13, v14);

  MEMORY[0x1C68F3410](a3, a4);

  swift_beginAccess();
  v16 = *(v6 + 24);

  specialized Dictionary.subscript.getter(a1, a2, v16, a5);

  return result;
}

Swift::String __swiftcall __USDARReferenceProvidingPlugin.createSchemePrefix(with:)(Swift::String with)
{
  MEMORY[0x1C68F3410](with._countAndFlagsBits, with._object);
  v1 = 979661685;
  v2 = 0xE400000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t __USDARReferenceProvidingPlugin.registerARReference(_:forFullSchemePath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    swift_unknownObjectRetain();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v13;
LABEL_5:
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    swift_beginAccess();
    swift_unknownObjectRetain();

    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, v11);

    *(v3 + 24) = v14;
    goto LABEL_5;
  }

  return swift_unknownObjectRelease();
}

uint64_t __USDARReferenceProvidingPlugin.deinit()
{

  return v0;
}

uint64_t __USDARReferenceProvidingPlugin.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __USDARReferenceProvidingPlugin.registerARReference(_:forFullSchemePath:)(ARReferenceObject _, Swift::String forFullSchemePath)
{
  v3 = v2;
  object = forFullSchemePath._object;
  countAndFlagsBits = forFullSchemePath._countAndFlagsBits;
  swift_beginAccess();

  v7 = _.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v3 + 16) = v9;
  swift_endAccess();
}

Swift::Void __swiftcall __USDARReferenceProvidingPlugin.registerARReference(_:forFullSchemePath:)(ARReferenceImage _, Swift::String forFullSchemePath)
{
  v3 = v2;
  object = forFullSchemePath._object;
  countAndFlagsBits = forFullSchemePath._countAndFlagsBits;
  swift_beginAccess();

  v7 = _.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v9;
  swift_endAccess();
}

void *specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (!v9)
  {
    v14 = 0xD000000000000012;
    v15 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    v17 = v16;
    *(v16 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v18 = "ng: Unknown action type";
      }

      else
      {
        v18 = "imagesByFullSchemePath";
        v14 = 0xD000000000000013;
      }
    }

    else
    {
      v14 = 0xD000000000000014;
      v18 = "USD trigger loading";
    }

    v19 = v18 | 0x8000000000000000;
    v20 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    v21 = lazy protocol witness table accessor for type String and conformance String();
    v17[4] = v14;
    v17[5] = v19;
    v17[12] = v20;
    v17[13] = v21;
    v17[8] = v21;
    v17[9] = a1;
    v17[10] = a2;

    v22 = [a4 path];
    v23 = [v22 stringValue];

    if (v23)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = v17 + 14;
      v17[17] = v20;
      v17[18] = v21;
      if (v26)
      {
        *v27 = v24;
LABEL_15:
        v17[15] = v26;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v13 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v15, &dword_1C1358000, v13, "%s: No property named %s for node at path: %s", v29, v30, v31);

        lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
        swift_allocError();
        swift_willThrow();
        return v13;
      }
    }

    else
    {
      v27 = v17 + 14;
      v17[17] = v20;
      v17[18] = v21;
    }

    *v27 = 7104878;
    v26 = 0xE300000000000000;
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v10 stringValue];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v13;
}

{
  return sub_1C1374818(a1, a2, a3, a4);
}

unint64_t lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError()
{
  result = lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError;
  if (!lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for USKNode.PropertyValueRequestError, &type metadata for USKNode.PropertyValueRequestError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError;
  if (!lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for USKNode.PropertyValueRequestError, &type metadata for USKNode.PropertyValueRequestError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError);
  }

  return result;
}

uint64_t specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    v10 = v9;
    v11 = [v10 objectPathArray];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v12;
  }

  v14 = 0xD000000000000012;
  v15 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = swift_allocObject();
  v17 = v16;
  *(v16 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v18 = "ng: Unknown action type";
    }

    else
    {
      v18 = "imagesByFullSchemePath";
      v14 = 0xD000000000000013;
    }
  }

  else
  {
    v14 = 0xD000000000000014;
    v18 = "USD trigger loading";
  }

  v19 = v18 | 0x8000000000000000;
  v20 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v21 = lazy protocol witness table accessor for type String and conformance String();
  v17[4] = v14;
  v17[5] = v19;
  v17[12] = v20;
  v17[13] = v21;
  v17[8] = v21;
  v17[9] = a1;
  v17[10] = a2;

  v22 = [a4 path];
  v23 = [v22 stringValue];

  if (!v23)
  {
    v27 = v17 + 14;
    v17[17] = v20;
    v17[18] = v21;
    goto LABEL_12;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = v17 + 14;
  v17[17] = v20;
  v17[18] = v21;
  if (!v26)
  {
LABEL_12:
    *v27 = 7104878;
    v26 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v27 = v24;
LABEL_13:
  v17[15] = v26;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v28 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v15, &dword_1C1358000, v28, "%s: No property named %s for node at path: %s", v29, v30, v31);

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  return swift_willThrow();
}

{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (!v9)
  {
    v11 = 0xD000000000000012;
    v12 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v13 = swift_allocObject();
    v14 = v13;
    *(v13 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v15 = "ng: Unknown action type";
      }

      else
      {
        v15 = "imagesByFullSchemePath";
        v11 = 0xD000000000000013;
      }
    }

    else
    {
      v11 = 0xD000000000000014;
      v15 = "USD trigger loading";
    }

    v16 = v15 | 0x8000000000000000;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = lazy protocol witness table accessor for type String and conformance String();
    v14[4] = v11;
    v14[5] = v16;
    v14[12] = v17;
    v14[13] = v18;
    v14[8] = v18;
    v14[9] = a1;
    v14[10] = a2;

    v19 = [a4 path];
    v20 = [v19 stringValue];

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = v14 + 14;
      v14[17] = v17;
      v14[18] = v18;
      if (v23)
      {
        *v24 = v21;
LABEL_13:
        v14[15] = v23;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v10 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v12, &dword_1C1358000, v10, "%s: No property named %s for node at path: %s", v26, v27, v28);

        lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
        swift_allocError();
        swift_willThrow();
        return v10 & 1;
      }
    }

    else
    {
      v24 = v14 + 14;
      v14[17] = v17;
      v14[18] = v18;
    }

    *v24 = 7104878;
    v23 = 0xE300000000000000;
    goto LABEL_13;
  }

  LOBYTE(v10) = [v9 BOOLValue];

  return v10 & 1;
}

{
  return sub_1C1374830(a1, a2, a3, a4);
}

{
  return sub_1C1374898(a1, a2, a3, a4) & 1;
}

void specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    [v9 doubleValue];

    return;
  }

  v10 = 0xD000000000000012;
  v11 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  v13 = v12;
  *(v12 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v14 = "ng: Unknown action type";
    }

    else
    {
      v14 = "imagesByFullSchemePath";
      v10 = 0xD000000000000013;
    }
  }

  else
  {
    v10 = 0xD000000000000014;
    v14 = "USD trigger loading";
  }

  v15 = v14 | 0x8000000000000000;
  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = lazy protocol witness table accessor for type String and conformance String();
  v13[4] = v10;
  v13[5] = v15;
  v13[12] = v16;
  v13[13] = v17;
  v13[8] = v17;
  v13[9] = a1;
  v13[10] = a2;

  v18 = [a4 path];
  v19 = [v18 stringValue];

  if (!v19)
  {
    v23 = v13 + 14;
    v13[17] = v16;
    v13[18] = v17;
    goto LABEL_12;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v13 + 14;
  v13[17] = v16;
  v13[18] = v17;
  if (!v22)
  {
LABEL_12:
    *v23 = 7104878;
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v23 = v20;
LABEL_13:
  v13[15] = v22;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v24 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v11, &dword_1C1358000, v24, "%s: No property named %s for node at path: %s", v25, v26, v27);

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  swift_willThrow();
}

{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    [v9 floatValue];

    return;
  }

  v10 = 0xD000000000000012;
  v11 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  v13 = v12;
  *(v12 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v14 = "ng: Unknown action type";
    }

    else
    {
      v14 = "imagesByFullSchemePath";
      v10 = 0xD000000000000013;
    }
  }

  else
  {
    v10 = 0xD000000000000014;
    v14 = "USD trigger loading";
  }

  v15 = v14 | 0x8000000000000000;
  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = lazy protocol witness table accessor for type String and conformance String();
  v13[4] = v10;
  v13[5] = v15;
  v13[12] = v16;
  v13[13] = v17;
  v13[8] = v17;
  v13[9] = a1;
  v13[10] = a2;

  v18 = [a4 path];
  v19 = [v18 stringValue];

  if (!v19)
  {
    v23 = v13 + 14;
    v13[17] = v16;
    v13[18] = v17;
    goto LABEL_12;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v13 + 14;
  v13[17] = v16;
  v13[18] = v17;
  if (!v22)
  {
LABEL_12:
    *v23 = 7104878;
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v23 = v20;
LABEL_13:
  v13[15] = v22;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v24 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v11, &dword_1C1358000, v24, "%s: No property named %s for node at path: %s", v25, v26, v27);

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  swift_willThrow();
}

{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    [v9 double3Value];

    return;
  }

  v10 = 0xD000000000000012;
  v11 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  v13 = v12;
  *(v12 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v14 = "ng: Unknown action type";
    }

    else
    {
      v14 = "imagesByFullSchemePath";
      v10 = 0xD000000000000013;
    }
  }

  else
  {
    v10 = 0xD000000000000014;
    v14 = "USD trigger loading";
  }

  v15 = v14 | 0x8000000000000000;
  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = lazy protocol witness table accessor for type String and conformance String();
  v13[4] = v10;
  v13[5] = v15;
  v13[12] = v16;
  v13[13] = v17;
  v13[8] = v17;
  v13[9] = a1;
  v13[10] = a2;

  v18 = [a4 path];
  v19 = [v18 stringValue];

  if (!v19)
  {
    v23 = v13 + 14;
    v13[17] = v16;
    v13[18] = v17;
    goto LABEL_12;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v13 + 14;
  v13[17] = v16;
  v13[18] = v17;
  if (!v22)
  {
LABEL_12:
    *v23 = 7104878;
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v23 = v20;
LABEL_13:
  v13[15] = v22;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v24 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v11, &dword_1C1358000, v24, "%s: No property named %s for node at path: %s", v25, v26, v27);

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  swift_willThrow();
}

{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    [v9 float3Value];

    return;
  }

  v10 = 0xD000000000000012;
  v11 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  v13 = v12;
  *(v12 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v14 = "ng: Unknown action type";
    }

    else
    {
      v14 = "imagesByFullSchemePath";
      v10 = 0xD000000000000013;
    }
  }

  else
  {
    v10 = 0xD000000000000014;
    v14 = "USD trigger loading";
  }

  v15 = v14 | 0x8000000000000000;
  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = lazy protocol witness table accessor for type String and conformance String();
  v13[4] = v10;
  v13[5] = v15;
  v13[12] = v16;
  v13[13] = v17;
  v13[8] = v17;
  v13[9] = a1;
  v13[10] = a2;

  v18 = [a4 path];
  v19 = [v18 stringValue];

  if (!v19)
  {
    v23 = v13 + 14;
    v13[17] = v16;
    v13[18] = v17;
    goto LABEL_12;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v13 + 14;
  v13[17] = v16;
  v13[18] = v17;
  if (!v22)
  {
LABEL_12:
    *v23 = 7104878;
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v23 = v20;
LABEL_13:
  v13[15] = v22;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v24 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v11, &dword_1C1358000, v24, "%s: No property named %s for node at path: %s", v25, v26, v27);

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  swift_willThrow();
}

{
  sub_1C1374848(a1, a2, a3, a4);
}

{
  sub_1C1374880(a1, a2, a3, a4);
}

{
  sub_1C13748B4(a1, a2, a3, a4);
}

id specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(uint64_t a1, uint64_t a2, char a3, void *a4, SEL *a5)
{
  v10 = MEMORY[0x1C68F3280]();
  v11 = [a4 property_];

  if (!v11)
  {
    v13 = 0xD000000000000012;
    v14 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = swift_allocObject();
    v16 = v15;
    *(v15 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v17 = "ng: Unknown action type";
      }

      else
      {
        v17 = "imagesByFullSchemePath";
        v13 = 0xD000000000000013;
      }
    }

    else
    {
      v13 = 0xD000000000000014;
      v17 = "USD trigger loading";
    }

    v18 = v17 | 0x8000000000000000;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    v16[4] = v13;
    v16[5] = v18;
    v16[12] = v19;
    v16[13] = v20;
    v16[8] = v20;
    v16[9] = a1;
    v16[10] = a2;

    v21 = [a4 path];
    v22 = [v21 stringValue];

    if (v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = v16 + 14;
      v16[17] = v19;
      v16[18] = v20;
      if (v25)
      {
        *v26 = v23;
LABEL_13:
        v16[15] = v25;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v12 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v14, &dword_1C1358000, v12, "%s: No property named %s for node at path: %s", v28, v29, v30);

        lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
        swift_allocError();
        swift_willThrow();
        return v12;
      }
    }

    else
    {
      v26 = v16 + 14;
      v16[17] = v19;
      v16[18] = v20;
    }

    *v26 = 7104878;
    v25 = 0xE300000000000000;
    goto LABEL_13;
  }

  v12 = [v11 *a5];

  return v12;
}

id specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    v10 = [v9 intValue];

    return v10;
  }

  v12 = 0xD000000000000012;
  v13 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v16 = "ng: Unknown action type";
    }

    else
    {
      v16 = "imagesByFullSchemePath";
      v12 = 0xD000000000000013;
    }
  }

  else
  {
    v12 = 0xD000000000000014;
    v16 = "USD trigger loading";
  }

  v17 = v16 | 0x8000000000000000;
  v18 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v19 = lazy protocol witness table accessor for type String and conformance String();
  v15[4] = v12;
  v15[5] = v17;
  v15[12] = v18;
  v15[13] = v19;
  v15[8] = v19;
  v15[9] = a1;
  v15[10] = a2;

  v20 = [a4 path];
  v21 = [v20 stringValue];

  if (!v21)
  {
    v25 = v15 + 14;
    v15[17] = v18;
    v15[18] = v19;
    goto LABEL_12;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = v15 + 14;
  v15[17] = v18;
  v15[18] = v19;
  if (!v24)
  {
LABEL_12:
    *v25 = 7104878;
    v24 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v25 = v22;
LABEL_13:
  v15[15] = v24;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v26 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v13, &dword_1C1358000, v26, "%s: No property named %s for node at path: %s", v27, v28, v29);

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  return swift_willThrow();
}

{
  return specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(a1, a2, a3, a4, &selRef_resourcePath);
}

double USKNode.setTransform(scale:orientation:translation:)(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v29 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69DEDA0];
  if ((a3[2] & 1) == 0)
  {
    v21 = a3[1];
    v24 = *a3;
    v8 = MEMORY[0x1C68F3280](0xD000000000000011, 0x80000001C18EF3C0);
    v9 = [v4 newPropertyWithName:v8 type:*v7 role:0];

    if (v9)
    {
      v27 = v24;
      v28 = v21;
      [v9 setDouble3Value_];
      v10 = [v9 name];
      MEMORY[0x1C68F3650]();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v22 = *a2;
    v25 = *(a2 + 16);
    v11 = MEMORY[0x1C68F3280](0x3A704F6D726F6678, 0xEE00746E6569726FLL);
    v12 = [v4 newPropertyWithName:v11 type:*MEMORY[0x1E69DEE10] role:0];

    if (v12)
    {
      [v12 setQuatfValue_];
      v13 = [v12 name];
      MEMORY[0x1C68F3650]();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if ((a1[2] & 1) == 0)
  {
    v23 = a1[1];
    v26 = *a1;
    v14 = MEMORY[0x1C68F3280](0x3A704F6D726F6678, 0xED0000656C616373);
    v15 = [v4 newPropertyWithName:v14 type:*v7 role:0];

    if (v15)
    {
      v27 = v26;
      v28 = v23;
      [v15 setDouble3Value_];
      v16 = [v15 name];
      MEMORY[0x1C68F3650]();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v17 = MEMORY[0x1C68F3280](0x4F704F6D726F6678, 0xEC00000072656472);
  v18 = [v4 newPropertyWithName:v17 type:*MEMORY[0x1E69DEE30] role:0];

  if (v18)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKToken, 0x1E69DED80);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setTokenArray_];
  }

  else
  {
  }

  return result;
}

uint64_t USKNode.NewPropertyError.debugDescription.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x73692065756C6156;
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = *v0;
  _StringGuts.grow(_:)(57);
  MEMORY[0x1C68F3410](0xD000000000000025, 0x80000001C18EF3E0);
  MEMORY[0x1C68F3410](v4, v1);
  MEMORY[0x1C68F3410](0x7974206874697720, 0xEB00000000206570);
  type metadata accessor for USKDataType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0x20646E6120, 0xE500000000000000);
  _StringGuts.grow(_:)(18);

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11USKRoleTypeaSgMd, &_sSo11USKRoleTypeaSgMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](0x65646F6E206E6F20, 0xE900000000000020);
  v7 = [v2 path];
  v8 = [v7 stringValue];

  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v10);

  MEMORY[0x1C68F3410](0x20656C6F72, 0xE500000000000000);

  return 0;
}

unint64_t USKScene.NewNodeError.debugDescription.getter(void *a1, uint64_t a2)
{
  _StringGuts.grow(_:)(48);

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1C68F3410](v3);

  MEMORY[0x1C68F3410](0x6874617020746120, 0xEA0000000000203ALL);
  v4 = [a1 stringValue];
  if (!v4)
  {
    v4 = [a1 description];
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x1C68F3410](v6, v8);

  MEMORY[0x1C68F3410](34, 0xE100000000000000);
  return 0xD000000000000021;
}

void USKObjectPath.deletingLastPathComponent()()
{
  v1 = [v0 stringValue];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v18 = 47;
    v19 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v6);
    v17[2] = &v18;

    v8 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v17, v3, v5, v7);
    v9 = *(v8 + 16);
    if (v9)
    {
      v18 = v8;
      v19 = v8 + 32;
      v20 = 0;
      v21 = 2 * v9 - 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
      lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>();
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v10 = Sequence<>.joined(separator:)();
      v18 = 47;
      v19 = 0xE100000000000000;
      MEMORY[0x1C68F3410](v10);

      v12 = v18;
      v11 = v19;
      v13 = objc_allocWithZone(MEMORY[0x1E69DED68]);
      v14 = MEMORY[0x1C68F3280](v12, v11);
      v15 = [v13 initWithString_];

      if (v15)
      {

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v16 = v17[4];
  }
}

void USKObjectPath.appendingPathComponent(_:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 stringValue];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](47, 0xE100000000000000);
  MEMORY[0x1C68F3410](a1, a2);
  v10 = objc_allocWithZone(MEMORY[0x1E69DED68]);
  v11 = MEMORY[0x1C68F3280](v7, v9);

  v12 = [v10 initWithString_];

  if (!v12)
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6968], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So7USKNodeC17RealityFoundationE16NewPropertyError33_2D12D3B35589BB501B3170C1ED0AA837LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for USKNode.NewPropertyError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for USKNode.NewPropertyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

double destructiveInjectEnumTag for USKNode.NewPropertyError(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t AudioBufferResource.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v2;
  v8[0] = *(v1 + 56);
  v3 = v8[0];
  *(v8 + 13) = *(v1 + 69);
  v4 = *(v8 + 13);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 45) = v4;
  return outlined init with copy of AudioBufferResource.Configuration(v7, &v6);
}

uint64_t AudioBufferResource.init(buffer:configuration:)(void *a1, __int128 *a2)
{
  v3 = v2;
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v51 = *a2;
  v52 = v5;
  v53[0] = a2[2];
  *(v53 + 13) = *(a2 + 45);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    goto LABEL_3;
  }

  v11 = [a1 format];
  v12 = [v11 channelLayout];

  v13 = [a1 format];
  [v13 sampleRate];
  v15 = v14;

  if (v12)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:v12 channelLayout:v15];

    if (v16)
    {
      goto LABEL_7;
    }

LABEL_14:
    outlined destroy of AudioBufferResource.Configuration(&v51);
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();

    goto LABEL_23;
  }

  v32 = [a1 format];
  v33 = [v32 channelCount];

  v16 = [objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:v33 channels:v15];
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  v17 = v16;
  v18 = [a1 format];
  v19 = [objc_allocWithZone(MEMORY[0x1E69583F0]) initFromFormat:v18 toFormat:v17];

  if (!v19)
  {
    outlined destroy of AudioBufferResource.Configuration(&v51);
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();

    goto LABEL_23;
  }

  v45 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = a1;
  v22 = v17;
  v23 = *([v21 audioBufferList] + 3);
  v7 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v22 frameCapacity:v23];

  if (!v7)
  {
    outlined destroy of AudioBufferResource.Configuration(&v51);
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();

    goto LABEL_22;
  }

  v44 = v22;
  *&v50[0] = partial apply for closure #1 in AudioBufferResource.init(buffer:configuration:);
  *(&v50[0] + 1) = v20;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v49 = thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt32, @unowned UnsafeMutablePointer<AVAudioConverterInputStatus>) -> (@owned AVAudioBuffer?);
  *(&v49 + 1) = &block_descriptor_48;
  v24 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v25 = [v45 convertToBuffer:v7 error:&aBlock withInputFromBlock:v24];
  _Block_release(v24);
  if (v25 == 3 && aBlock)
  {
    v26 = aBlock;
    outlined destroy of AudioBufferResource.Configuration(&v51);
    swift_willThrow();

LABEL_22:

    goto LABEL_23;
  }

LABEL_3:
  isa = AVAudioPCMBuffer.copyToDeinterleavedBuffer()().super.super.isa;
  if (v10)
  {
    outlined destroy of AudioBufferResource.Configuration(&v51);

LABEL_23:
    type metadata accessor for AudioBufferResource();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v27 = isa;
  v28 = v51;
  v29 = v52;
  *(v3 + 24) = v51;
  *(v3 + 40) = v29;
  v30 = v53[0];
  *(v3 + 56) = v53[0];
  v31 = *(v53 + 13);
  *(v3 + 69) = *(v53 + 13);
  aBlock = v28;
  v49 = v29;
  v50[0] = v30;
  *(v50 + 13) = v31;
  v46 = 3;
  outlined init with copy of AudioBufferResource.Configuration(&v51, &v47);
  v35 = specialized static AudioBufferResource.bufferAssetRef(buffer:configuration:inputMode:)(v27, &aBlock, &v46);
  outlined destroy of AudioBufferResource.Configuration(&v51);
  v3 = AudioResource.init(fromCore:)(v35);
  v36 = one-time initialization token for audio;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.audio);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134218240;
    *(v40 + 4) = REAudioFileAssetGetAudioAssetID();
    *(v40 + 12) = 2048;
    *(v40 + 14) = REAssetGetAssetId();
    _os_log_impl(&dword_1C1358000, v38, v39, "[API/RealityKit] Loading AudioBufferResource with audioAssetID: %llu and REAssetID: %llu", v40, 0x16u);
    MEMORY[0x1C6902A30](v40, -1, -1);
  }

  RERelease();

  return v3;
}

void *partial apply for closure #1 in AudioBufferResource.init(buffer:configuration:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  *a2 = 0;
  v4 = v3;
  return v3;
}

id thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt32, @unowned UnsafeMutablePointer<AVAudioConverterInputStatus>) -> (@owned AVAudioBuffer?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

double block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

AVAudioPCMBuffer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVAudioPCMBuffer.copyToDeinterleavedBuffer()()
{
  v2 = v0;
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [v0 format];
  v4 = [v3 isInterleaved];

  if ((v4 & 1) != 0 || (v5 = [v2 format], v6 = objc_msgSend(v5, sel_commonFormat), v5, v6 != 1))
  {
    v9 = [v2 format];
    AVAudioFormat.copyInterleavedFormatToDeinterleaved()(v10);
    v12 = v11;

    if (!v13)
    {
      v14 = [v2 format];
      v15 = [objc_allocWithZone(MEMORY[0x1E69583F0]) initFromFormat:v14 toFormat:v12];

      if (v15)
      {
        v16 = v12;
        v17 = [v2 frameCapacity];
        v1 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v16 frameCapacity:v17];

        if (v1)
        {
          v21[0] = 0;
          if ([v15 convertToBuffer:v1 fromBuffer:v2 error:v21])
          {
            v18 = v21[0];
          }

          else
          {
            v19 = v21[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          goto LABEL_12;
        }
      }

      lazy protocol witness table accessor for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors();
      swift_allocError();
      swift_willThrow();
    }

LABEL_12:
    v7 = v1;
    goto LABEL_13;
  }

  v7 = v2;
LABEL_13:
  result.super._impl = v8;
  result.super.super.isa = v7;
  return result;
}

void *AudioBufferResource.init(buffer:options:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  *v33 = *a2;
  *&v33[16] = v5;
  v34 = *(a2 + 32);
  v35 = *(a2 + 48);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    outlined destroy of AudioBufferResource.CreateOptions(v33);
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    goto LABEL_6;
  }

  v7 = v6;
  v8 = a1;
  a1 = v7;
  isa = AVAudioPCMBuffer.copyToDeinterleavedBuffer()().super.super.isa;
  if (v10)
  {

    outlined destroy of AudioBufferResource.CreateOptions(v33);
LABEL_6:
    type metadata accessor for AudioBufferResource();
    swift_deallocPartialClassInstance();
    return a1;
  }

  v12 = isa;
  v13 = v33[2];
  v14 = *&v33[24];
  v15 = v34;
  v16 = *(&v34 + 1);
  v17 = v35;
  *(v3 + 24) = v33[1];
  *(v3 + 25) = v13;
  *(v3 + 32) = v14;
  *(v3 + 40) = v15;
  *(v3 + 48) = v16;
  *(v3 + 56) = v17;
  *(v3 + 64) = *&v33[8];
  *(v3 + 80) = 0;
  *(v3 + 84) = 1;
  v18 = *(v3 + 40);
  v31[0] = *(v3 + 24);
  v31[1] = v18;
  v20 = *(v3 + 24);
  v19 = *(v3 + 40);
  v32[0] = *(v3 + 56);
  *(v32 + 13) = *(v3 + 69);
  v28 = v20;
  v29 = v19;
  v30[0] = *(v3 + 56);
  *(v30 + 13) = *(v3 + 69);
  v27 = v33[0];
  outlined init with copy of AudioBufferResource.CreateOptions(v33, v25);
  outlined init with copy of AudioBufferResource.Configuration(v31, v25);
  v22 = specialized static AudioBufferResource.bufferAssetRef(buffer:configuration:inputMode:)(v12, &v28, &v27);
  v25[0] = v28;
  v25[1] = v29;
  *v26 = v30[0];
  *&v26[13] = *(v30 + 13);
  outlined destroy of AudioBufferResource.Configuration(v25);
  a1 = AudioResource.init(fromCore:)(v22);
  v23[0] = *v33;
  v23[1] = *&v33[16];
  v23[2] = v34;
  v24 = v35;
  AudioBufferResource.load(assetRef:buffer:options:)(v22, v8, v23);

  outlined destroy of AudioBufferResource.CreateOptions(v33);
  RERelease();

  return a1;
}

void AudioBufferResource.load(assetRef:buffer:options:)(uint64_t a1, void *a2, char *a3)
{
  v5 = *(a3 + 2);
  if ((REAssetHandleIsLoaded() & 1) == 0)
  {
    REAssetHandleLoadNow();
  }

  REAudioFileAssetSetInputMode();
  REAudioFileAssetSetLoopCount();
  if (v5)
  {
    String.utf8CString.getter();
    REAudioFileAssetSetMixGroupName();
  }

  v6 = [a2 format];
  specialized static AudioResource.supportedChannelLayoutTag(for:)(v6);

  if (!v3)
  {
    REAudioFileAssetSetLayoutTag();
  }
}

void *AudioBufferResource.__allocating_init(buffer:inputMode:shouldLoop:)(void *a1, char *a2, uint64_t a3)
{
  v3 = a3;
  swift_allocObject();
  return AudioBufferResource.init(buffer:inputMode:shouldLoop:)(a1, a2, v3);
}

void *AudioBufferResource.init(buffer:inputMode:shouldLoop:)(void *a1, char *a2, char a3)
{
  v4 = v3;
  v7 = *a2;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

    goto LABEL_6;
  }

  v9 = v8;
  v10 = a1;
  a1 = v9;
  isa = AVAudioPCMBuffer.copyToDeinterleavedBuffer()().super.super.isa;
  if (v12)
  {

LABEL_6:
    type metadata accessor for AudioBufferResource();
    swift_deallocPartialClassInstance();
    return a1;
  }

  v14 = isa;
  LOBYTE(v31) = 1;
  v15 = a3 & 1;
  *(v4 + 24) = a3 & 1;
  *(v4 + 25) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = -1;
  *(v4 + 48) = 0;
  *(v4 + 56) = -1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 1;
  v16 = *(v4 + 24);
  v17 = *(v4 + 40);
  *(v35 + 13) = *(v4 + 69);
  v18 = *(v4 + 56);
  v34[1] = *(v4 + 40);
  v35[0] = v18;
  v19 = *(v4 + 24);
  v34[0] = v16;
  v31 = v19;
  v32 = v17;
  v33[0] = *(v4 + 56);
  *(v33 + 13) = *(v4 + 69);
  v30 = v7;
  outlined init with copy of AudioBufferResource.Configuration(v34, v28);
  v21 = specialized static AudioBufferResource.bufferAssetRef(buffer:configuration:inputMode:)(v14, &v31, &v30);
  v28[0] = v31;
  v28[1] = v32;
  *v29 = v33[0];
  *&v29[13] = *(v33 + 13);
  outlined destroy of AudioBufferResource.Configuration(v28);
  a1 = AudioResource.init(fromCore:)(v21);
  LOBYTE(v24) = v7;
  *(&v24 + 1) = v15;
  v25 = 0uLL;
  *(&v24 + 1) = 0;
  LOBYTE(v26) = -1;
  *(&v26 + 1) = 0;
  v27 = -1;
  AudioBufferResource.load(assetRef:buffer:options:)(v21, v10, &v24);

  v22[0] = v24;
  v22[1] = v25;
  v22[2] = v26;
  v23 = v27;
  outlined destroy of AudioBufferResource.CreateOptions(v22);
  RERelease();

  return a1;
}

uint64_t AudioBufferResource.deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  REAssetSetSwiftObject();
  RERelease();

  return v1;
}

uint64_t AudioBufferResource.__deallocating_deinit()
{
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.audio);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v1, v2, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v3, 0xCu);
    MEMORY[0x1C6902A30](v3, -1, -1);
  }

  else
  {
  }

  REAssetSetSwiftObject();
  RERelease();

  return swift_deallocClassInstance();
}

Swift::Int AudioBufferResource.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t AudioBufferResource.duration.getter()
{
  REAudioFileAssetGetLengthInSeconds();

  return static Duration.seconds(_:)();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVAudioFormat.copyInterleavedFormatToDeinterleaved()(AVAudioFormat *__return_ptr retstr)
{
  if ([v1 isInterleaved])
  {
    v2 = [v1 channelLayout];
    [v1 sampleRate];
    v4 = v3;
    if (v2)
    {
      [objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:v2 channelLayout:v3];
    }

    else
    {
      v6 = [v1 channelCount];
      if (![objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:v6 channels:v4])
      {
        lazy protocol witness table accessor for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors();
        swift_allocError();
        swift_willThrow();
      }
    }
  }

  else
  {
    v5 = v1;
  }
}

uint64_t AudioBufferResource.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-v7 - 8];
  v19 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1897FC0;
  strcpy((v9 + 32), "configuration");
  *(v9 + 46) = -4864;
  v10 = *(v1 + 40);
  v20[0] = *(v1 + 24);
  v20[1] = v10;
  v21[0] = *(v1 + 56);
  *(v21 + 13) = *(v1 + 69);
  *(v9 + 72) = &type metadata for AudioBufferResource.Configuration;
  v11 = swift_allocObject();
  *(v9 + 48) = v11;
  v12 = *(v1 + 40);
  v11[1] = *(v1 + 24);
  v11[2] = v12;
  v11[3] = *(v1 + 56);
  *(v11 + 61) = *(v1 + 69);
  *(v9 + 80) = 0x6E6F697461727564;
  *(v9 + 88) = 0xE800000000000000;

  outlined init with copy of AudioBufferResource.Configuration(v20, v18);
  REAudioFileAssetGetLengthInSeconds();
  v13 = static Duration.seconds(_:)();
  *(v9 + 120) = MEMORY[0x1E69E7B30];
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  v15 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  type metadata accessor for AudioBufferResource();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}