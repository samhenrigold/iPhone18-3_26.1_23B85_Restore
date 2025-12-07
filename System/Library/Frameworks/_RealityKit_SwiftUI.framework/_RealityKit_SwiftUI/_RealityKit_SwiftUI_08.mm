void type metadata completion function for FullscreenCoveragePointsRenderer(uint64_t a1)
{
  type metadata accessor for CoveragePointCloud?(319, &lazy cache variable for type metadata for CoveragePointCloud?, type metadata accessor for CoveragePointCloud);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CoveragePointCloud?(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.PointCloud?, MEMORY[0x282217620]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ColorScheme();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for CoveragePointCloud?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for FullscreenCoveragePointsRenderer.ResourceEntry(uint64_t a1)
{
  type metadata accessor for MTLBuffer?(319, &lazy cache variable for type metadata for MTLBuffer?, &_sSo9MTLBuffer_pMd, &_sSo9MTLBuffer_pMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CoveragePointCloud?(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.PointCloud?, MEMORY[0x282217620]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MTLBuffer?(319, &lazy cache variable for type metadata for MTLTexture?, &_sSo10MTLTexture_pMd, &_sSo10MTLTexture_pMR);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for MTLBuffer?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t specialized InFlightQueue.retain(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = v3[3];
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v3[3] = v9 + 1;
    swift_beginAccess();
    v4 = v3[4];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[4] = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
  v3[4] = v4;
LABEL_3:
  v12 = v4[2];
  v11 = v4[3];
  if (v12 >= v11 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
  }

  v4[2] = v12 + 1;
  v13 = &v4[4 * v12];
  v13[4] = v9;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v3[4] = v4;
  swift_endAccess();
  os_unfair_lock_unlock(v8 + 4);
  return v9;
}

uint64_t specialized InFlightQueue.retain(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v20 - v12);
  v14 = v5[2];
  os_unfair_lock_lock(v14 + 4);
  v15 = v5[3];
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    v5[3] = v15 + 1;
    outlined init with copy of CoveragePointCloud(a1, v13 + *(v10 + 28), a4);
    *v13 = v15;
    swift_beginAccess();
    a4 = v5[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5[4] = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a4 = v20(0, *(a4 + 16) + 1, 1, a4);
  v5[4] = a4;
LABEL_3:
  v18 = *(a4 + 16);
  v17 = *(a4 + 24);
  if (v18 >= v17 >> 1)
  {
    a4 = v20(v17 > 1, v18 + 1, 1, a4);
  }

  *(a4 + 16) = v18 + 1;
  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v13, a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v18, a2, a3);
  v5[4] = a4;
  swift_endAccess();
  os_unfair_lock_unlock(v14 + 4);
  return v15;
}

id specialized DragGestureRecognizer.init(draggable:)(uint64_t a1, char *a2)
{
  v3 = &a2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_startPoint];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *&a2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_draggable + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &protocol witness table for TurnTableCameraControl;
  swift_unknownObjectWeakAssign();

  v6.receiver = a2;
  v6.super_class = type metadata accessor for DragGestureRecognizer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithTarget_action_, 0, 0);
  [v4 addTarget:v4 action:sel_onPanInternal_];
  [v4 setMaximumNumberOfTouches_];
  [v4 setDelegate_];

  return v4;
}

id specialized DragGestureRecognizer.init(draggable:)(void *a1, char *a2)
{
  v4 = &a2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_startPoint];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&a2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_draggable + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &protocol witness table for InteractiveCameraTransformManager;
  swift_unknownObjectWeakAssign();

  v7.receiver = a2;
  v7.super_class = type metadata accessor for DragGestureRecognizer();
  v5 = objc_msgSendSuper2(&v7, sel_initWithTarget_action_, 0, 0);
  [v5 addTarget:v5 action:sel_onPanInternal_];
  [v5 setMaximumNumberOfTouches_];
  [v5 setDelegate_];

  return v5;
}

unint64_t lazy protocol witness table accessor for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error;
  if (!lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error;
  if (!lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error);
  }

  return result;
}

uint64_t _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of CoveragePointCloud(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

uint64_t outlined assign with copy of CoveragePointCloud?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t InFlightQueue.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for InFlightQueue.Entry(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InFlightQueue.Entry(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for InFlightQueue.Entry(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t CameraFrustumRendererForShots.showShotLocations.didset(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    return result;
  }

  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v4, v5))
  {

    if ((*(v2 + 24) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  v6 = swift_slowAlloc();
  *v6 = 67109120;
  *(v6 + 4) = *(v2 + 24);

  _os_log_impl(&dword_23B824000, v4, v5, "Set showShotLocations to %{BOOL}d", v6, 8u);
  MEMORY[0x23EEB0B70](v6, -1, -1);

  if (*(v2 + 24))
  {
    goto LABEL_8;
  }

LABEL_6:
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  swift_unknownObjectRelease();
  v7 = *(v2 + 24);
LABEL_9:
  swift_beginAccess();
  outlined init with copy of Animation?(v2 + 72, v18);
  v8 = v19;
  if (v19)
  {
    outlined init with copy of Cancellable(v18, v16);
    outlined destroy of Animation?(v18);
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v9 = RampAnimation.update(time:)(*(v2 + 64));
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of Animation?(v18);
    v9 = 0.0;
  }

  v10 = type metadata accessor for RampAnimation();
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0xFFF0000000000000;
  *(result + 24) = v7 ^ 1;
  *(result + 16) = 0x3FE0000000000000;
  v11 = 0.0;
  if (!v7)
  {
    v11 = 1.0;
  }

  if (v8)
  {
    v11 = v9;
  }

  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 72) = v11;
  if (v11 < 0.0 || v11 > 1.0)
  {
    __break(1u);
  }

  else
  {
    v19 = v10;
    v20 = &protocol witness table for RampAnimation;
    v18[0] = result;
    swift_beginAccess();
    outlined assign with take of Animation?(v18, v2 + 72);
    swift_endAccess();
    outlined init with copy of Animation?(v2 + 72, v18);
    if (v19)
    {
      outlined init with copy of Cancellable(v18, v16);
      outlined destroy of Animation?(v18);
      v12 = __swift_project_boxed_opaque_existential_1(v16, v17);
      v13 = *(v2 + 64);
      v14 = *v12;
      v15 = v13 + *(*v12 + 16);
      *(v14 + 48) = v13;
      *(v14 + 56) = v15;
      return __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }

    else
    {
      return outlined destroy of Animation?(v18);
    }
  }

  return result;
}

uint64_t CameraFrustumRendererForShots.setup(device:pixelFormat:)(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "Setting up CameraFrustumRendererForShots!", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  *(v3 + 32) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CameraFrustumMesh.Descriptor.init());
  v12 = v10;
  v13 = 1000593162;
  v14 = xmmword_23B921180;
  v15 = 0x3CF5C28F3F666666;
  v16 = 1017370378;
  v17 = 32;
  v18 = xmmword_23B921190;
  v19 = 981668463;
  v20 = 32;
  v21 = 1061997773;

  CameraFrustumRenderer.setup(device:pixelFormat:cameraFrustumMeshDescriptor:)(a1, a2, &v12);
}

void CameraFrustumRendererForShots.render(into:desc:)(void *a1, void *a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
    swift_beginAccess();
    if (*(*&v7[v8] + 16) && (CameraFrustumRendererForShots.createPosesMTLBufferIfNeeded()(), (v9 = v3[6]) != 0) && (v10 = v3[5], *(v10 + 176) > 0.001) && *(v10 + 24))
    {
      v11 = v3[7];

      swift_unknownObjectRetain();
      v12 = [a2 colorAttachments];
      v13 = [v12 objectAtIndexedSubscript_];

      if (v13)
      {
        [v13 setLoadAction_];

        CameraFrustumRenderer.renderCone(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v9, v11);
        CameraFrustumRenderer.renderHollowCylinder(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v9, v11);
        CameraFrustumRenderer.renderSphere(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v9, v11);

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CameraFrustumRendererForShots.update(time:worldToView:viewToClip:)(Swift::Double time, simd_float4x4 *worldToView, simd_float4x4 *viewToClip)
{
  v20 = v9;
  v21 = v10;
  v18 = v7;
  v19 = v8;
  v16 = v5;
  v17 = v6;
  v15 = v4;
  *(v3 + 64) = time;
  if (*(v3 + 24))
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  swift_beginAccess();
  outlined init with copy of Animation?(v3 + 72, &v22);
  if (*(&v23 + 1))
  {
    outlined init with take of Animation(&v22, v25);
    v13 = __swift_project_boxed_opaque_existential_1(v25, v26);
    if (*(*v13 + 56) >= *(*v13 + 64))
    {
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v12 = RampAnimation.update(time:)(time);
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      swift_beginAccess();
      outlined assign with take of Animation?(&v22, v3 + 72);
      swift_endAccess();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
    outlined destroy of Animation?(&v22);
  }

  v14 = *(v3 + 40);
  *(v14 + 48) = v15;
  *(v14 + 64) = v16;
  *(v14 + 80) = v17;
  *(v14 + 96) = v18;
  *(v14 + 112) = v19;
  *(v14 + 128) = v20;
  *(v14 + 144) = v21;
  *(v14 + 160) = v27;
  *(v14 + 176) = v12;
}

void CameraFrustumRendererForShots.createPosesMTLBufferIfNeeded()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
      swift_beginAccess();
      v5 = *(*&v3[v4] + 16);
      if (v5 && *(v0 + 56) != v5)
      {
        v6 = v0;
        v7 = one-time initialization token for logger;
        swift_unknownObjectRetain();
        if (v7 != -1)
        {
          goto LABEL_19;
        }

        while (1)
        {
          v8 = type metadata accessor for Logger();
          __swift_project_value_buffer(v8, logger);
          v9 = Logger.logObject.getter();
          v10 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 0;
            _os_log_impl(&dword_23B824000, v9, v10, "Creating MTLBuffer for shots...", v11, 2u);
            MEMORY[0x23EEB0B70](v11, -1, -1);
          }

          v12 = *(*&v3[v4] + 16);
          *(v6 + 56) = v12;
          if (v12 >> 57)
          {
            break;
          }

          v13 = [v1 newBufferWithLength:v12 << 6 options:1];
          if (!v13)
          {
            goto LABEL_22;
          }

          *(v6 + 48) = v13;
          v14 = v13;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v15 = [v14 contents];
          v16 = v14;
          v17 = *(v6 + 56);
          if (v17 < 0)
          {
            goto LABEL_21;
          }

          if (!v17)
          {
LABEL_16:

            swift_unknownObjectRelease();
            return;
          }

          v18 = *&v3[v4];
          v19 = *(v18 + 16);
          v20 = v15 + 32;
          v21 = (v18 + 96);
          while (v19)
          {
            v22 = *(v21 - 2);
            v23 = *(v21 - 1);
            v24 = *v21;
            *(v20 - 2) = *(v21 - 3);
            *(v20 - 1) = v22;
            *v20 = v23;
            v20[1] = v24;
            v20 += 4;
            --v19;
            v21 += 6;
            if (!--v17)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_19:
          swift_once();
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      else
      {
      }
    }
  }
}

uint64_t CameraFrustumRendererForShots.__deallocating_deinit()
{
  MEMORY[0x23EEB0C40](v0 + 16);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  outlined destroy of Animation?(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t specialized CameraFrustumRendererForShots.init(cameraPathManager:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  type metadata accessor for CameraFrustumRenderer();
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  v3 = *MEMORY[0x277D860B8];
  v4 = *(MEMORY[0x277D860B8] + 16);
  v5 = *(MEMORY[0x277D860B8] + 32);
  v6 = *(MEMORY[0x277D860B8] + 48);
  *(v2 + 48) = *MEMORY[0x277D860B8];
  *(v2 + 64) = v4;
  *(v2 + 80) = v5;
  *(v2 + 96) = v6;
  *(v2 + 112) = v3;
  *(v2 + 128) = v4;
  *(v2 + 144) = v5;
  *(v2 + 160) = v6;
  *(v2 + 176) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t KeyframeAnimation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for KeyframeAnimation.Keyframe(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for FreeformFullView(uint64_t a1)
{
  result = type metadata singleton initialization cache for FreeformFullView;
  if (!type metadata singleton initialization cache for FreeformFullView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FreeformFullView(uint64_t a1)
{
  type metadata accessor for ObservedObject<DataModel>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<ColorScheme>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<ColorScheme>)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<ColorScheme>);
    }
  }
}

uint64_t FreeformFullView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FreeformFullView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v17);

  v7 = v17;
  if (v17)
  {
    static Color.clear.getter();
    v16 = Color.opacity(_:)();

    v15 = static Edge.Set.all.getter();
    v8 = static SafeAreaRegions.all.getter();
    v9 = static Edge.Set.all.getter();
    v18 = 1;
    v19 = 0;
    outlined init with copy of FreeformFullView(v1, &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    outlined init with take of FreeformFullView(&v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
    outlined init with copy of FreeformFullView(v1, &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v12 = swift_allocObject();
    result = outlined init with take of FreeformFullView(&v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v10);
    v13 = v16;
    *a1 = v7;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15;
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = 0;
    *(a1 + 48) = 257;
    *(a1 + 56) = 0x3FF0000000000000;
    *(a1 + 64) = 0;
    *(a1 + 65) = 1;
    *(a1 + 67) = 0;
    *(a1 + 72) = partial apply for closure #1 in FreeformFullView.body.getter;
    *(a1 + 80) = v11;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = partial apply for closure #2 in FreeformFullView.body.getter;
    *(a1 + 128) = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in FreeformFullView.body.getter(uint64_t a1)
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v5 = v10[0];
  if (v10[0])
  {
    *(v10[0] + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled) = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v7 = v10[0];
  if (v10[0])
  {
    type metadata accessor for FreeformFullView(0);
    specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR, MEMORY[0x277CDF3E0], v4);
    v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_colorScheme;
    swift_beginAccess();
    (*(v2 + 24))(&v7[v8], v4, v1);
    swift_endAccess();
    FreeformCloudRenderer.colorScheme.didset();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void closure #2 in FreeformFullView.body.getter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  v1 = v2;
  if (v2)
  {
    *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled) = 0;
  }
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance FreeformFullViewWrapper()
{
  result = *(*v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance FreeformFullViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance FreeformFullViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance FreeformFullViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(void *a1@<X8>)
{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR, MEMORY[0x277CDF3E0], a1);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR, MEMORY[0x277CDD6C8], a1);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t key path getter for DataModel.freeformCloudRenderer : DataModel@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for DataModel.freeformCloudRenderer : DataModel(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t outlined init with take of FreeformFullView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformFullView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for FreeformFullView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in FreeformFullView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FreeformFullView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout>, _ClipEffect<Rectangle>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGARGAA11_ClipEffectVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGARGAA11_ClipEffectVyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGARGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGARGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper(v1, v2, v3);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper;
  if (!lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper;
  if (!lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper);
  }

  return result;
}

uint64_t specialized static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2 < 2)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:));
    v6 = 1.0 / v2;
    v7 = (v3 + 32);
    v8 = v7;
    v9 = v2;
    do
    {
      v10 = *v8++;
      v11 = vadd_f32(*&v5, vmul_n_f32(*v10.f32, v6));
      v12 = *(&v5 + 2) + vmuls_lane_f32(v6, v10, 2);
      *&v5 = v11;
      *(&v5 + 2) = v12;
      HIDWORD(v5) = 0;
      --v9;
    }

    while (v9);
    v32 = v5;
    v30 = v12;
    v31 = v11;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:));
    v29 = v13;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:));
    v28 = v14;
    result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:));
    v18 = v28;
    v17 = v29;
    v19 = 1.0 / (v2 - 1);
    do
    {
      v20 = v17.i32[3];
      v21 = v18.i32[3];
      v22 = *v7++;
      v23 = vsub_f32(*&v22, v31);
      v24 = vmul_f32(v23, v23);
      *v16.f32 = vmul_n_f32(v23, *(&v22 + 2) - v30);
      *v25.f32 = vmul_lane_f32(v23, v23, 1);
      *v26.f32 = vzip1_s32(v24, *v25.f32);
      v26.i64[1] = v16.i64[0];
      v27 = v15.i32[3];
      *&v25.u32[2] = vdup_lane_s32(*v16.f32, 1);
      v16.f32[2] = (*(&v22 + 2) - v30) * (*(&v22 + 2) - v30);
      v17 = vaddq_f32(v17, vmulq_n_f32(v26, v19));
      v18 = vaddq_f32(v18, vmulq_n_f32(v25, v19));
      v15 = vaddq_f32(v15, vmulq_n_f32(v16, v19));
      v17.i32[3] = v20;
      v18.i32[3] = v21;
      v15.i32[3] = v27;
      --v2;
    }

    while (v2);
    *a2 = v32;
    a2[1] = v17;
    a2[2] = v18;
    a2[3] = v15;
  }

  return result;
}

void specialized static MathHelpers.computeEigenvectorsOfSymmetric2x2Matrix(_:)(double a1, double a2)
{
  v2 = *(&a1 + 1);
  if (vabds_f32(*(&a1 + 1), *&a2) >= 0.001)
  {
    __break(1u);
  }

  else
  {
    *&a2 = sqrtf(((*&a1 + *(&a2 + 1)) * (*&a1 + *(&a2 + 1))) + ((vmuls_lane_f32(*&a1, *&a2, 1) - (*(&a1 + 1) * *&a2)) * -4.0));
    *&v13 = (*&a1 + *(&a2 + 1)) + *&a2;
    *&v12 = (*&a1 + *(&a2 + 1)) - *&a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91BFD0;
    *(inited + 32) = 1065353216;
    v4 = vmul_f32(__PAIR64__(v12, v13), 0x3F0000003F000000);
    *(inited + 36) = vsub_f32(v4, *&a1).f32[0] / v2;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
    v6 = v5;
    swift_setDeallocating();
    v7 = vmul_f32(v6, v6);
    v7.i32[0] = vadd_f32(v7, vdup_lane_s32(v7, 1)).u32[0];
    v8 = vrsqrte_f32(v7.u32[0]);
    v9 = vmul_f32(v8, vrsqrts_f32(v7.u32[0], vmul_f32(v8, v8)));
    v15 = vmul_n_f32(v6, vmul_f32(v9, vrsqrts_f32(v7.u32[0], vmul_f32(v9, v9))).f32[0]);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_23B91BFD0;
    *(v10 + 32) = v15.i32[1];
    *(v10 + 36) = -v15.f32[0];
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v10);
    swift_setDeallocating();
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_23B91BFD0;
    *(v11 + 32) = v4;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v11);
    swift_setDeallocating();
  }
}

uint64_t specialized static MathHelpers.minAndMaxOver(points:)(float32x4_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = 0x7F0000007FLL;
  *(inited + 40) = -8388608;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v11 = v3;
  swift_setDeallocating();
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static MathHelpers.minAndMaxOver(points:));
  v6 = a1[1].i64[0];
  if (v6)
  {
    v7 = a1 + 2;
    v8 = v11;
    do
    {
      v9 = *v7++;
      v10 = v9;
      v10.i32[3] = 0;
      v8.i32[3] = 0;
      v8 = vmaxnmq_f32(v10, v8);
      v5.i32[3] = 0;
      v5 = vminnmq_f32(v10, v5);
      --v6;
    }

    while (v6);
  }

  return result;
}

void specialized static MathHelpers.angleBetween(_:_:)(float32x4_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = vmulq_f32(a1, a1);
  v6 = vextq_s8(v5, v5, 4uLL).u64[0];
  v7 = vmulq_f32(a2, a2);
  v8 = vextq_s8(v7, v7, 4uLL).u64[0];
  v9 = vzip1_s32(*a2.f32, *a1.f32);
  v10 = vcgt_f32(vsqrt_f32(vadd_f32(vzip2_s32(v8, v6), vadd_f32(vmul_f32(v9, v9), vzip1_s32(v8, v6)))), vdup_n_s32(0x38D1B717u));
  if (v10.i32[1] & v10.i32[0])
  {
    v11 = vaddv_f32(*v5.i8);
    *v5.i8 = vrsqrte_f32(COERCE_UNSIGNED_INT(*&v5.i32[2] + v11));
    *v5.i8 = vmul_f32(*v5.i8, vrsqrts_f32(COERCE_UNSIGNED_INT(*&v5.i32[2] + v11), vmul_f32(*v5.i8, *v5.i8)));
    v12 = vmulq_n_f32(a1, vmul_f32(*v5.i8, vrsqrts_f32(COERCE_UNSIGNED_INT(*&v5.i32[2] + v11), vmul_f32(*v5.i8, *v5.i8))).f32[0]);
    *&v13 = *&v7.i32[2] + vaddv_f32(*v7.i8);
    v14 = vrsqrte_f32(v13);
    v15 = vmul_f32(v14, vrsqrts_f32(v13, vmul_f32(v14, v14)));
    v16 = vmulq_f32(v12, vmulq_n_f32(a2, vmul_f32(v15, vrsqrts_f32(v13, vmul_f32(v15, v15))).f32[0]));
    v17 = v16.f32[2] + vaddv_f32(*v16.f32);
    if (v17 <= -1.0)
    {
      v17 = -1.0;
    }

    if (v17 > 1.0)
    {
      v17 = 1.0;
    }

    acosf(v17);
  }

  else
  {
    lazy protocol witness table accessor for type MathHelpers.Error and conformance MathHelpers.Error(a3, a4, a5);
    swift_allocError();
    *v18 = 0;
    v18[1] = 0;
    swift_willThrow();
  }
}

double specialized static MathHelpers.computeCameraLookAtRotation(pos:lookAt:up:)(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vmulq_f32(v4, v4);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  v5.i32[0] = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).u32[0];
  v7 = vmulq_n_f32(v4, v5.f32[0]);
  v19.columns[2].i64[0] = vnegq_f32(v7).u64[0];
  v19.columns[2].f32[2] = -v7.f32[2];
  v19.columns[2].i32[3] = 0;
  v5.i64[0] = v5.u32[0];
  v8 = vmulq_f32(a3, a3);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v10 = vmulq_n_f32(a3, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  v11 = vextq_s8(vuzp1q_s32(v19.columns[2], v19.columns[2]), v19.columns[2], 0xCuLL);
  v12 = vmlaq_f32(vmulq_f32(v11, vnegq_f32(v10)), v19.columns[2], vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vmulq_f32(v12, v12);
  *&v15 = v14.f32[1] + (v14.f32[2] + v14.f32[0]);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v19.columns[0] = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19.columns[0], v19.columns[0]), v19.columns[0], 0xCuLL), vnegq_f32(v19.columns[2])), v19.columns[0], v11);
  v17 = vmulq_f32(v16, v16);
  v5.f32[0] = v17.f32[1] + (v17.f32[2] + v17.f32[0]);
  v19.columns[3] = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  *v11.f32 = vrsqrte_f32(*v5.f32);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(*v5.f32, vmul_f32(*v11.f32, *v11.f32)));
  v19.columns[1] = vmulq_n_f32(v19.columns[3], vmul_f32(*v11.f32, vrsqrts_f32(*v5.f32, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
  return simd_quaternion(v19);
}

unint64_t lazy protocol witness table accessor for type MathHelpers.Error and conformance MathHelpers.Error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type MathHelpers.Error and conformance MathHelpers.Error;
  if (!lazy protocol witness table cache variable for type MathHelpers.Error and conformance MathHelpers.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MathHelpers.Error and conformance MathHelpers.Error);
  }

  return result;
}

void specialized static MathHelpers.angleBetween(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t a4, float32x2_t a5)
{
  v5 = vmul_f32(a4, a4);
  v6 = vmul_f32(a5, a5);
  v7 = vcgt_f32(vsqrt_f32(vadd_f32(vzip1_s32(v6, v5), vzip2_s32(v6, v5))), vdup_n_s32(0x38D1B717u));
  if (v7.i32[1] & v7.i32[0])
  {
    v8 = vadd_f32(v5, vdup_lane_s32(v5, 1)).u32[0];
    v9 = vrsqrte_f32(v8);
    v10 = vmul_f32(v9, vrsqrts_f32(v8, vmul_f32(v9, v9)));
    v11 = vmul_n_f32(a4, vmul_f32(v10, vrsqrts_f32(v8, vmul_f32(v10, v10))).f32[0]);
    v12 = vadd_f32(v6, vdup_lane_s32(v6, 1)).u32[0];
    v13 = vrsqrte_f32(v12);
    v14 = vmul_f32(v13, vrsqrts_f32(v12, vmul_f32(v13, v13)));
    v15 = vaddv_f32(vmul_f32(v11, vmul_n_f32(a5, vmul_f32(v14, vrsqrts_f32(v12, vmul_f32(v14, v14))).f32[0])));
    if (v15 <= -1.0)
    {
      v15 = -1.0;
    }

    if (v15 > 1.0)
    {
      v15 = 1.0;
    }

    acosf(v15);
  }

  else
  {
    lazy protocol witness table accessor for type MathHelpers.Error and conformance MathHelpers.Error(a1, a2, a3);
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    swift_willThrow();
  }
}

float specialized static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:)(char a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:));
  BoundingBox.init(min:max:)();
  if (a1)
  {
    v10 = &outlined read-only object #2 of static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:);
  }

  else
  {
    v10 = &outlined read-only object #3 of static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:);
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v10);
  BoundingBox.transformed(by:)();
  return v11;
}

uint64_t get_enum_tag_for_layout_string_19_RealityKit_SwiftUI11MathHelpersO5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MathHelpers.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MathHelpers.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MathHelpers.Error(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Void __swiftcall ResourceTimedLogger.unrequestLogging()()
{
  v2 = *(v0 + 32);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_7;
  }

  *(v0 + 32) = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (v4)
    {
      return;
    }

    v5 = *(v0 + 24);
    if (!v5)
    {
      return;
    }

    goto LABEL_10;
  }

  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_16;
  }

LABEL_7:
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "unrequestLogging() underflow!", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  *(v1 + 32) = 0;
  v5 = *(v1 + 24);
  if (v5)
  {
LABEL_10:
    if ([v5 isValid])
    {

      ResourceTimedLogger.stopRunningTimer()();
    }
  }
}

void ResourceTimedLogger.stopRunningTimer()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 32);

    _os_log_impl(&dword_23B824000, v3, v4, "Use count=%ld went to 0... stopping the running resource logger.", v5, 0xCu);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  if (!v6)
  {
    goto LABEL_12;
  }

  if (![v6 isValid])
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  [*(v1 + 24) invalidate];
  v7 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void ResourceTimedLogger.startNewTimer()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2 && ([v2 isValid] & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v1 + 32);

      _os_log_impl(&dword_23B824000, v4, v5, "Use count=%ld moved above 0... starting the running resource logger.", v6, 0xCu);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }

    else
    {
    }

    v7 = objc_opt_self();
    v11[4] = closure #1 in ResourceTimedLogger.startNewTimer();
    v11[5] = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    v11[3] = &block_descriptor_8;
    v8 = _Block_copy(v11);
    v9 = [v7 scheduledTimerWithTimeInterval:1 repeats:v8 block:5.0];
    _Block_release(v8);
    v10 = *(v1 + 24);
    *(v1 + 24) = v9;
  }
}

void closure #1 in ResourceTimedLogger.startNewTimer()()
{
  act_list[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134349056;
    *(v3 + 4) = specialized static ResourceUsageHelper.memoryUsage(in:)(2);
    _os_log_impl(&dword_23B824000, v1, v2, "Memory usage: %{public}llu MB", v3, 0xCu);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    act_list[0] = 0;
    act_listCnt[0] = 0;
    v7 = task_threads(*MEMORY[0x277D85F48], act_list, act_listCnt);
    if (act_list[0])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = act_listCnt[0];
    if (!v8)
    {
      v9 = -1;
    }

    *(v6 + 4) = v9;
    _os_log_impl(&dword_23B824000, v4, v5, "Thread count: %{public}ld", v6, 0xCu);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    act_list[0] = v13;
    *v12 = 136446210;
    v14 = [objc_opt_self() processInfo];
    v15 = [v14 thermalState];

    *act_listCnt = v15;
    type metadata accessor for NSProcessInfoThermalState(0);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, act_list);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_23B824000, v10, v11, "Thermal state: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x23EEB0B70](v13, -1, -1);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }
}

uint64_t ResourceTimedLogger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *specialized static ResourceUsageHelper.memoryUsage(in:)(char a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 93;
  v3 = task_info(*MEMORY[0x277D85F48], 0x16u, v16, &v15);
  if (!v3)
  {
    return (v17 / qword_23B921688[a1]);
  }

  result = mach_error_string(v3);
  if (result)
  {
    static String.Encoding.ascii.getter();
    v5 = String.init(cString:encoding:)();
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x206E776F6E6B6E55;
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xED0000726F727245;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32[0] = v13;
      *v12 = 136446210;
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v32);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_23B824000, v10, v11, "Error with task_info(): %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x23EEB0B70](v13, -1, -1);
      MEMORY[0x23EEB0B70](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MeshToTextureRenderer.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MeshToTextureRenderer.__deallocating_deinit()
{
  MeshToTextureRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t Binding<A>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HashableMetatype();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  HashableMetatype.init(_:)();
  v12 = (*(v6 + 16))(v9, v11, v5);
  MEMORY[0x28223BE20](v12);
  v14 = (&v16 - v13);
  *v14 = a2;
  v14[1] = a3;
  (*(v6 + 32))(&v16 - v13 + 16, v9, v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10RealityKit6EntityC0D10FoundationE10ObservableV10ComponentsVGMd, &_s7SwiftUI7BindingVy10RealityKit6EntityC0D10FoundationE10ObservableV10ComponentsVGMR);
  Binding.subscript.getter();

  return (*(v6 + 8))(v11, v5);
}

{
  v5 = type metadata accessor for HashableMetatype();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  HashableMetatype.init(_:)();
  v12 = (*(v6 + 16))(v9, v11, v5);
  MEMORY[0x28223BE20](v12);
  v14 = (&v16 - v13);
  *v14 = a2;
  v14[1] = a3;
  (*(v6 + 32))(&v16 - v13 + 16, v9, v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10RealityKit6EntityC0D10FoundationE10ObservableV10ComponentsVGMd, &_s7SwiftUI7BindingVy10RealityKit6EntityC0D10FoundationE10ObservableV10ComponentsVGMR);
  Binding.subscript.getter();

  return (*(v6 + 8))(v11, v5);
}

uint64_t key path index equality operator for <A><A1>(HashableMetatype<A1>)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HashableMetatype();
  swift_getWitnessTable();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

{
  type metadata accessor for HashableMetatype();
  swift_getWitnessTable();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t key path index hash operator for <A><A1>(HashableMetatype<A1>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HashableMetatype();
  swift_getWitnessTable();
  return dispatch thunk of Hashable.hashValue.getter();
}

{
  type metadata accessor for HashableMetatype();
  swift_getWitnessTable();
  return dispatch thunk of Hashable.hashValue.getter();
}

uint64_t key path setter for Entity.Observable.Components.subscript<A>(hashableMetatype:) : <A><A1>Entity.Observable.ComponentsA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HashableMetatype();
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(&v14 - v11, a3);
  (*(v7 + 16))(v9, a1, v6);
  return Entity.Observable.Components.subscript.setter();
}

uint64_t key path setter for Entity.Observable.Components.subscript<A>(hashableBuiltinType:) : <A><A1>Entity.Observable.ComponentsA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HashableMetatype();
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(&v14 - v11, a3);
  (*(v7 + 16))(v9, a1, v6);
  return Entity.Observable.Components.subscript.setter();
}

uint64_t descriptionString(for:)(uint64_t a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.State();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (MEMORY[0x277D00478] && v6 == *MEMORY[0x277D00478])
  {
    (*(v3 + 96))(v5, v2);
    v7 = type metadata accessor for ObjectCaptureSession.Error();
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = (*(v8 + 32))(v15 - v10, v5, v7);
    v15[0] = 0x28726F727245;
    v15[1] = 0xE600000000000000;
    MEMORY[0x28223BE20](v11);
    (*(v8 + 16))(v15 - v10, v15 - v10, v7);
    v12 = String.init<A>(describing:)();
    MEMORY[0x23EEAF590](v12);

    MEMORY[0x23EEAF590](41, 0xE100000000000000);
    v13 = v15[0];
    (*(v8 + 8))(v15 - v10, v7);
    return v13;
  }

  else if (MEMORY[0x277D00468] && v6 == *MEMORY[0x277D00468])
  {
    return 0x696C616974696E49;
  }

  else if (MEMORY[0x277D00488] && v6 == *MEMORY[0x277D00488])
  {
    return 0x676E696E6E7552;
  }

  else if (MEMORY[0x277D00470] && v6 == *MEMORY[0x277D00470])
  {
    return 0x7964616552;
  }

  else if (MEMORY[0x277D00480] && v6 == *MEMORY[0x277D00480])
  {
    return 0x646573756150;
  }

  else if (MEMORY[0x277D004A0] && v6 == *MEMORY[0x277D004A0])
  {
    return 0x6E69746365746544;
  }

  else if (MEMORY[0x277D00490] && v6 == *MEMORY[0x277D00490])
  {
    return 0x676E696E6E616353;
  }

  else if (MEMORY[0x277D004A8] && v6 == *MEMORY[0x277D004A8])
  {
    return 0x6E696873696E6946;
  }

  else if (MEMORY[0x277D00498] && v6 == *MEMORY[0x277D00498])
  {
    return 0x6574656C706D6F43;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0xD000000000000023;
  }
}

id specialized static MetalHelpers.loadFeatherMaskLayer(named:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v4 = static BoundingBoxHelpers.bundle;
  v5 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v6 = v4;
  v7 = MEMORY[0x23EEAF480](a1, a2);
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  if (v8)
  {
    v9 = [v8 CGImage];
    [v5 setContents_];

    [v5 setOpaque_];
    [v5 setContentsGravity_];
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t _RealityViewImpl.layoutOption.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 72);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    *a2 = v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<RealityViewLayoutOption>.Content(v11, 0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void *_RealityViewImpl.uiScene.getter(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 60);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIScene?>.Content(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t RealityView.init<A>(make:update:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, char *a7@<X8>)
{
  v14 = *(a5 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v15);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v20 = type metadata accessor for RealityViewCameraContent.Body(0, a5, a6, v19);
  result = (*(v14 + 32))(&a7[*(v20 + 40)], v17, a5);
  v22 = &a7[*(v20 + 44)];
  *v22 = implicit closure #2 in implicit closure #1 in variable initialization expression of RealityViewCameraContent.Body._strongModel;
  *(v22 + 1) = 0;
  v22[16] = 0;
  return result;
}

uint64_t RealityView.init<>(make:update:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = implicit closure #2 in implicit closure #1 in variable initialization expression of RealityViewCameraContent.Body._strongModel;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  return result;
}

uint64_t RealityViewCameraContent.Body.strongModel.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = type metadata accessor for _RealityViewCameraModel(0);
  v7 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type _RealityViewCameraModel and conformance _RealityViewCameraModel, type metadata accessor for _RealityViewCameraModel, &protocol conformance descriptor for _RealityViewCameraModel);

  return MEMORY[0x282130840](v3, v4, v5, v6, v7);
}

uint64_t implicit closure #2 in implicit closure #1 in variable initialization expression of RealityViewCameraContent.Body._strongModel()
{
  type metadata accessor for _RealityViewCameraModel(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
  v2 = objc_allocWithZone(type metadata accessor for ARView());
  v3 = ARView.init(frame:forRealityView:)();
  RealityViewCameraContent.init(view:)(v3, (v0 + v1));
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_makeTaskBegun) = 0;
  v4 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  Published.init(initialValue:)();
  return v0;
}

uint64_t RealityViewCameraContent.Body.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  (*(v4 + 32))(v7 + v6, v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for _RealityViewImpl(0, v8, v9, v10);
  v36[3] = swift_getWitnessTable();
  v11 = GeometryReader.init(content:)();
  v40 = v12;
  v61 = v11;
  v62 = v12;
  v13 = RealityViewCameraContent.Body.strongModel.getter(a1);
  v14 = *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize);
  LODWORD(v8) = *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 16);
  v39 = v8;

  if (v8)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v38 = v15;
  v16 = RealityViewCameraContent.Body.strongModel.getter(a1);
  v17 = *(v16 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize);
  v18 = *(v16 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 16);
  v37 = v18;

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v36[4] = v19;
  v20 = RealityViewCameraContent.Body.strongModel.getter(a1);
  v21 = *(v20 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize);
  v22 = *(v20 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 16);

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v36[2] = v23;
  v24 = RealityViewCameraContent.Body.strongModel.getter(a1);
  v25 = *(v24 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 8);
  v26 = *(v24 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 16);

  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v36[1] = v27;
  v28 = RealityViewCameraContent.Body.strongModel.getter(a1);
  v29 = *(v28 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 8);
  v30 = *(v28 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 16);

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  v36[0] = v31;
  RealityViewCameraContent.Body.strongModel.getter(a1);

  static Alignment.center.getter();
  type metadata accessor for GeometryReader();
  WitnessTable = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  v57 = v67;
  v58 = v68;
  v59 = v69;
  v60 = v70;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v56 = v66;
  v32 = type metadata accessor for ModifiedContent();
  v50 = WitnessTable;
  v51 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v52[4] = v57;
  v52[5] = v58;
  v52[6] = v59;
  v52[7] = v60;
  v52[0] = v53;
  v52[1] = v54;
  v52[2] = v55;
  v52[3] = v56;
  v33 = *(*(v32 - 8) + 8);
  v33(v52, v32);
  v46 = v75;
  v47 = v76;
  v48 = v77;
  v49 = v78;
  v42 = v71;
  v43 = v72;
  v44 = v73;
  v45 = v74;
  static ViewBuilder.buildExpression<A>(_:)();
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v60 = v49;
  v53 = v42;
  v54 = v43;
  v55 = v44;
  v56 = v45;
  return v33(&v53, v32);
}

uint64_t closure #1 in RealityViewCameraContent.Body.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a1;
  v51 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA5ImageV12DynamicRangeVSgGMd, &_s7SwiftUI11EnvironmentVyAA5ImageV12DynamicRangeVSgGMR);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = (&v41 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMR);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = (&v41 - v11);
  v12 = type metadata accessor for GeometryProxy();
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v54 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v52 = a4;
  v53 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3;
  v19 = type metadata accessor for _RealityViewImpl(0, a3, a4, v18);
  v48 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v45 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v46 = &v41 - v22;
  v23 = *(a2 + 1);
  v44 = *a2;
  v25 = *(a2 + 2);
  v24 = *(a2 + 3);
  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    v27 = partial apply for thunk for @escaping @callee_guaranteed (@inout RealityViewCameraContent) -> ();
  }

  else
  {
    v27 = closure #1 in BoundingBoxRotateManipulator.requestAsyncModelLoad();
    v26 = 0;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;
  v30 = type metadata accessor for RealityViewCameraContent.Body(0, v17, v52, v29);
  (*(v15 + 16))(v53, &a2[*(v30 + 40)], v17);
  (*(v42 + 16))(v54, v47, v43);

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v25, v24);
  RealityViewCameraContent.Body.strongModel.getter(v30);
  v31 = v49;
  default argument 5 of _RealityViewImpl.init(make:update:placeholder:proxy:model:cameraControls:cameraControlsPublisher:uiScene:dynamicRange:backgroundStyle:layoutOption:)(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR, v49);
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = v50;
  default argument 5 of _RealityViewImpl.init(make:update:placeholder:proxy:model:cameraControls:cameraControlsPublisher:uiScene:dynamicRange:backgroundStyle:layoutOption:)(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR, v50);
  v35 = swift_getKeyPath();
  v55 = swift_getKeyPath();
  v56 = 0;
  v40 = v35;
  v36 = v45;
  _RealityViewImpl.init(make:update:placeholder:proxy:model:cameraControls:cameraControlsPublisher:uiScene:dynamicRange:backgroundStyle:layoutOption:)(v44, v23, partial apply for thunk for @escaping @callee_guaranteed (@inout RealityViewCameraContent) -> (@out ()), v28, v53, v54, v31, v45, KeyPath, 0, v33, 0, v34, v40, 0, &v55, v17, v52);
  swift_getWitnessTable();
  v37 = v46;
  static ViewBuilder.buildExpression<A>(_:)();
  v38 = *(v48 + 8);
  v38(v36, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v38)(v37, v19);
}

uint64_t partial apply for closure #1 in RealityViewCameraContent.Body.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for RealityViewCameraContent.Body(0, v6, v7, a2) - 8);
  v9 = (v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  return closure #1 in RealityViewCameraContent.Body.body.getter(a1, v9, v6, v7, a3);
}

uint64_t default argument 5 of _RealityViewImpl.init(make:update:placeholder:proxy:model:cameraControls:cameraControlsPublisher:uiScene:dynamicRange:backgroundStyle:layoutOption:)@<X0>(uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _RealityViewImpl.init(make:update:placeholder:proxy:model:cameraControls:cameraControlsPublisher:uiScene:dynamicRange:backgroundStyle:layoutOption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t *a17, uint64_t a18, uint64_t a19)
{
  v32 = *a17;
  v31 = *(a17 + 8);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v23 = type metadata accessor for _RealityViewImpl(0, a18, a19, a4);
  (*(*(a18 - 8) + 32))(&a9[v23[10]], a5, a18);
  v24 = v23[11];
  v25 = type metadata accessor for GeometryProxy();
  (*(*(v25 - 8) + 32))(&a9[v24], a6, v25);
  swift_weakInit();

  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(a8, &a9[v23[13]], &_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMR);
  v26 = &a9[v23[14]];
  *v26 = a10;
  v26[8] = a11 & 1;
  v27 = &a9[v23[15]];
  *v27 = a12;
  v27[8] = a13 & 1;
  result = outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(a14, &a9[v23[16]], &_s7SwiftUI11EnvironmentVyAA5ImageV12DynamicRangeVSgGMd, &_s7SwiftUI11EnvironmentVyAA5ImageV12DynamicRangeVSgGMR);
  v29 = &a9[v23[17]];
  *v29 = a15;
  v29[8] = a16 & 1;
  v30 = &a9[v23[18]];
  *v30 = v32;
  v30[8] = v31;
  return result;
}

void RealityViewCameraContent.init(view:)(char *a1@<X0>, char *a2@<X8>)
{
  v76 = a1;
  v3 = type metadata accessor for ARView.Environment.Background();
  MEMORY[0x28223BE20](v3 - 8);
  v69 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ARView.Environment();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v71 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = v60 - v8;
  v9 = type metadata accessor for RealityViewRenderingEffects(0);
  MEMORY[0x28223BE20](v9);
  v65 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RealityViewCamera(0);
  MEMORY[0x28223BE20](v11);
  v67 = (v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for ARView.RenderOptions();
  v13 = *(v75 - 8);
  v14 = MEMORY[0x28223BE20](v75);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v74 = v60 - v17;
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  *(a2 + 1) = Entity.init()();
  v18 = type metadata accessor for RealityViewCameraContent(0);
  v19 = v18[6];
  v20 = type metadata accessor for GeometryProxy();
  (*(*(v20 - 8) + 56))(&a2[v19], 1, 1, v20);
  swift_weakInit();
  v21 = v18[8];
  type metadata accessor for RealityViewCameraContent.ContentStorage(0);
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x277D84F90];
  *(v22 + 24) = 0;
  v23 = OBJC_IVAR____TtCV19_RealityKit_SwiftUI24RealityViewCameraContent14ContentStorage_unavailableCapabilities;
  v24 = type metadata accessor for SpatialTrackingSession.UnavailableCapabilities();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  *&a2[v21] = v22;
  *&a2[v18[9]] = 1;
  v25 = &a2[v18[10]];
  *v25 = 0;

  static CameraControls.none.getter();
  v66 = v11;
  v26 = *(v11 + 24);
  v64 = v25;
  v25[v26] = 0;
  *&a2[v18[11]] = 0;
  v27 = v18[12];
  *&v27[a2] = 0;
  v28 = &a2[v18[13]];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  v29 = v9[7];
  v30 = *MEMORY[0x277CDB3B0];
  v31 = type metadata accessor for AntialiasingMode();
  v32 = *(v31 - 8);
  v33 = *(v32 + 104);
  v63 = v30;
  v61 = v33;
  v62 = v31;
  v60[1] = v32 + 104;
  (v33)(&v28[v29], v30);
  *&v28[v9[8]] = 0;
  v68 = v9;
  v34 = &v28[v9[9]];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v35 = v18[14];
  type metadata accessor for RealityViewCameraController(0);
  swift_allocObject();
  *&a2[v35] = RealityViewCameraController.init()();
  a2[v18[15]] = 0;
  v36 = v76;
  *a2 = v76;
  v37 = v36;
  static ARView.RenderOptions.disableFaceOcclusions.getter();
  v38 = ARView.renderOptions.modify();
  v39 = v74;
  specialized OptionSet<>.insert(_:)(v74, v16);
  v40 = *(v13 + 8);
  v41 = v16;
  v42 = v75;
  v40(v41, v75);
  v40(v39, v42);
  v38(v77, 0);
  if (!dispatch thunk of ARView.realityFusionSession.getter())
  {
    __break(1u);
    goto LABEL_7;
  }

  v43 = dispatch thunk of RealityFusionSession.serviceManager.getter();

  if (!v43)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v76 = v27;
  type metadata accessor for SpatialTrackingManager();
  v44 = type metadata accessor for ARSessionManager();
  swift_allocObject();
  v45 = v37;
  v46 = v43;
  v47 = ARSessionManager.init(arView:)();
  v77[3] = v44;
  v77[4] = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARSessionManager and conformance ARSessionManager, MEMORY[0x277CDB588], MEMORY[0x277CDB580]);
  v77[0] = v47;
  swift_allocObject();
  SpatialTrackingManager.init(serviceManager:arkitRunnable:)();
  static SpatialTrackingManager.shared.setter();

  Entity.coreEntity.getter();

  REHideEntity();
  dispatch thunk of ARView.scene.getter();

  dispatch thunk of Scene.addAnchor(_:)();

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v48 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  if (MEMORY[0x23EEB0240](v48))
  {
    REPhysicsSimulationServiceSetAnchorShouldHaveSharedSimulationByDefault();
  }

  v50 = v66;
  v49 = v67;
  *v67 = 0;
  static CameraControls.none.getter();
  *(v49 + *(v50 + 24)) = 0;
  outlined assign with copy of RealityViewCamera(v49, v64, type metadata accessor for RealityViewCamera);
  RealityViewCameraContent.camera.didset();
  outlined destroy of RealityViewCamera(v49, type metadata accessor for RealityViewCamera);
  v51 = v65;
  *(v65 + 1) = 0;
  *(v51 + 2) = 0;
  *v51 = 0;
  v52 = v68;
  v61(&v51[v68[7]], v63, v62);
  *&v51[v52[8]] = 0;
  v53 = &v51[v52[9]];
  *v53 = 0u;
  *(v53 + 1) = 0u;
  outlined assign with copy of RealityViewCamera(v51, v28, type metadata accessor for RealityViewRenderingEffects);
  RealityViewCameraContent.renderingEffects.didset();
  outlined destroy of RealityViewCamera(v51, type metadata accessor for RealityViewRenderingEffects);
  v54 = v76;

  *&v54[a2] = 0;
  v55 = v70;
  dispatch thunk of ARView.environment.getter();
  v56 = [objc_opt_self() clearColor];
  static ARView.Environment.Background.color(_:)();

  ARView.Environment.background.setter();
  v57 = ARView.Environment.lighting.modify();
  ARView.Environment.ImageBasedLight.resource.setter();
  v57(v77, 0);
  v58 = v72;
  v59 = v73;
  (*(v72 + 16))(v71, v55, v73);
  dispatch thunk of ARView.environment.setter();
  (*(v58 + 8))(v55, v59);
}

uint64_t _RealityViewCameraModel.makeTaskComplete.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t _RealityViewCameraModel.__deallocating_deinit()
{
  outlined destroy of RealityViewCamera(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content, type metadata accessor for RealityViewCameraContent);
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel__makeTaskComplete;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance _RealityViewCameraModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for _RealityViewCameraModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t _RealityViewImpl.cameraControls.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + *(a1 + 52), &v15 - v10, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for CameraControls();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t _RealityViewImpl.cameraControlsPublisher.getter(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(v8);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t _RealityViewImpl.dynamicRange.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + *(a1 + 64), &v14 - v10, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v11, a2, &_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR);
  }

  static os_log_type_t.fault.getter();
  v13 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t _RealityViewImpl.backgroundStyle.getter(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(v8);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t _RealityViewImpl.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v63 = type metadata accessor for TaskPriority();
  v67 = *(v63 - 8);
  v4 = MEMORY[0x28223BE20](v63);
  v66 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  v6 = *(a1 - 8);
  a1 -= 8;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
  v60 = *(a1 + 24);
  type metadata accessor for _ConditionalContent();
  v8 = type metadata accessor for Group();
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v75 = v54 - v9;
  v10 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<CameraControlsPublisher, ModifiedContent<<<opaque return type of View.onContinuousHover<A>(coordinateSpace:perform:)>>.0, _PreferenceWritingModifier<RealityViewCameraConvertibleKey>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR, MEMORY[0x277CDDB50]);
  v11 = *(a1 + 32);
  v80 = v10;
  v81 = v11;
  v59 = v11;
  WitnessTable = swift_getWitnessTable();
  v79 = WitnessTable;
  v12 = swift_getWitnessTable();
  v70 = v8;
  v77 = v8;
  v78 = v12;
  v72 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v54 - v17;
  v68 = type metadata accessor for Optional();
  v73 = *(v68 - 8);
  v19 = MEMORY[0x28223BE20](v68);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v71 = v54 - v22;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = MEMORY[0x28223BE20](Strong);
    v57 = v21;
    v26 = v60;
    v27 = v59;
    v54[-4] = v60;
    v54[-3] = v27;
    v52 = v25;
    v53 = v2;
    v54[1] = v7;
    Group<A>.init(content:)();
    v56 = "unavailableCapabilities";
    v28 = v62;
    v29 = *(v62 + 16);
    v55 = v16;
    WitnessTable = v18;
    v30 = v61;
    v31 = v64;
    v29(v61, v2, v64);
    type metadata accessor for MainActor();

    v32 = static MainActor.shared.getter();
    v33 = (*(v28 + 80) + 56) & ~*(v28 + 80);
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D85700];
    *(v34 + 2) = v32;
    *(v34 + 3) = v35;
    *(v34 + 4) = v26;
    *(v34 + 5) = v27;
    v21 = v57;
    *(v34 + 6) = v24;
    (*(v28 + 32))(&v34[v33], v30, v31);
    v36 = v66;
    v37 = v70;
    v38 = v72;
    _s7SwiftUI4ViewPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFfA0_();
    v39 = v55;
    v40 = v34;
    v41 = v75;
    _s7SwiftUI4ViewPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntF(0, v36, 0xD00000000000002CLL, v56 | 0x8000000000000000, 300, &async function pointer to partial apply for closure #2 in _RealityViewImpl.body.getter, v40, v55, v37, v38);

    (*(v67 + 8))(v36, v63);
    (*(v65 + 8))(v41, v37);
    v77 = v37;
    v78 = v38;
    swift_getOpaqueTypeConformance2();
    v42 = WitnessTable;
    static ViewBuilder.buildExpression<A>(_:)();
    v43 = v69;
    v44 = *(v69 + 8);
    v44(v39, OpaqueTypeMetadata2);
    static ViewBuilder.buildExpression<A>(_:)();
    v44(v42, OpaqueTypeMetadata2);
    (*(v43 + 32))(v21, v39, OpaqueTypeMetadata2);
    v45 = 0;
    v46 = v38;
  }

  else
  {
    v45 = 1;
    v46 = v72;
    v43 = v69;
    v37 = v70;
  }

  (*(v43 + 56))(v21, v45, 1, OpaqueTypeMetadata2);
  v47 = v73;
  v48 = v71;
  v49 = v68;
  (*(v73 + 16))(v71, v21, v68);
  v50 = *(v47 + 8);
  v50(v21, v49);
  v77 = v37;
  v78 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  return (v50)(v48, v49);
}

uint64_t closure #1 in _RealityViewImpl.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v111 = a1;
  v112 = a2;
  v109 = a5;
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v90 = &v80 - v11;
  v103 = type metadata accessor for LocalCoordinateSpace();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v97 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _RealityViewImpl(0, a3, a4, v13);
  v110 = *(v14 - 8);
  v89 = *(v110 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v80 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMR);
  MEMORY[0x28223BE20](v92);
  v91 = &v80 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMR);
  MEMORY[0x28223BE20](v93);
  v94 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0F5PhaseOctAA010CoordinateH8ProtocolRd__lFQOyAA15ModifiedContentVyAKyAC012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0C7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalkH0VQo_Md, &_s7SwiftUI4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0F5PhaseOctAA010CoordinateH8ProtocolRd__lFQOyAA15ModifiedContentVyAKyAC012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0C7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalkH0VQo_MR);
  v98 = *(v19 - 8);
  v99 = v19;
  MEMORY[0x28223BE20](v19);
  v96 = &v80 - v20;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0H5PhaseOctAA010CoordinateJ8ProtocolRd__lFQOyACyACyAE012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0E7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalmJ0VQo_AA26_PreferenceWritingModifierVyAL0oE20CameraConvertibleKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0H5PhaseOctAA010CoordinateJ8ProtocolRd__lFQOyACyACyAE012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0E7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalmJ0VQo_AA26_PreferenceWritingModifierVyAL0oE20CameraConvertibleKeyVGGMR);
  MEMORY[0x28223BE20](v95);
  v102 = &v80 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
  v23 = MEMORY[0x28223BE20](v22);
  v100 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v104 = &v80 - v25;
  v26 = type metadata accessor for _ConditionalContent();
  v107 = *(v26 - 8);
  v108 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v80 - v27;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v113);

  if (LOBYTE(v113[0]) == 1)
  {
    v88 = v22;
    v90 = v28;
    v29 = v16;
    v105 = a4;
    v106 = v16;
    v30 = a4;
    v81 = v14;
    v31 = v110;
    v32 = v110 + 16;
    v33 = *(v110 + 16);
    v33(v29, v112, v14);
    v34 = *(v31 + 80);
    v35 = v89;
    v36 = swift_allocObject();
    *(v36 + 2) = a3;
    *(v36 + 3) = v30;
    *(v36 + 4) = v111;
    v37 = *(v31 + 32);
    v38 = v106;
    v39 = v81;
    v37(&v36[(v34 + 40) & ~v34], v106, v81);
    v87 = v32;
    v86 = v33;
    v33(v38, v112, v39);
    v40 = (v34 + 32) & ~v34;
    v41 = (v35 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = v34;
    v42 = swift_allocObject();
    v89 = a3;
    v43 = v105;
    *(v42 + 16) = a3;
    *(v42 + 24) = v43;
    v83 = v40;
    v44 = v39;
    v82 = v37;
    v37((v42 + v40), v106, v39);
    v45 = v31 + 32;
    v84 = v41;
    v46 = v111;
    *(v42 + v41) = v111;
    v113[0] = partial apply for closure #1 in closure #1 in _RealityViewImpl.body.getter;
    v113[1] = v36;
    v113[2] = partial apply for closure #2 in closure #1 in _RealityViewImpl.body.getter;
    v113[3] = v42;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMd, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type ViewAdaptor<ARView> and conformance ViewAdaptor<A>, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMd, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMR, &protocol conformance descriptor for ViewAdaptor<A>);
    v47 = v91;
    View.rootEntityGestureResponder()();

    *(v47 + *(v92 + 36)) = 256;
    v48 = v112;
    v49 = _RealityViewImpl.backgroundStyle.getter(v44);
    v50 = v46;
    v51 = v106;
    v110 = v45;
    if (!v49)
    {
      v113[0] = static Color.clear.getter();
      v49 = AnyShapeStyle.init<A>(_:)();
    }

    v52 = v49;
    v53 = v94;
    outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v47, v94, &_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMR);
    *(v53 + *(v93 + 36)) = v52;

    v54 = v97;
    static CoordinateSpaceProtocol<>.local.getter();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>>, _EnvironmentBackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    v55 = v96;
    v56 = v103;
    View.onContinuousHover<A>(coordinateSpace:perform:)();

    (*(v101 + 8))(v54, v56);
    outlined destroy of PerspectiveCameraComponent?(v53, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI0D21ViewCameraConvertibleVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI0D21ViewCameraConvertibleVGMR);
    v57 = (type metadata accessor for RealityViewCameraConvertible(0) - 8);
    v58 = (*(*v57 + 80) + 32) & ~*(*v57 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_23B91A6F0;
    v60 = (v59 + v58);
    v61 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v62 = *(v50 + v61);
    v63 = *(v44 + 44);
    v64 = v57[7];
    v65 = type metadata accessor for GeometryProxy();
    (*(*(v65 - 8) + 16))(&v60[v64], v48 + v63, v65);
    *v60 = v62;
    v66 = v102;
    (*(v98 + 32))(v102, v55, v99);
    *(v66 + *(v95 + 36)) = v59;
    v67 = v62;
    v68 = _RealityViewImpl.cameraControlsPublisher.getter(v44);
    v86(v51, v48, v44);
    v69 = v84;
    v70 = swift_allocObject();
    v71 = v105;
    *(v70 + 16) = v89;
    *(v70 + 24) = v71;
    v82(v70 + v83, v51, v44);
    *(v70 + v69) = v50;
    v72 = v100;
    outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v66, v100, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0H5PhaseOctAA010CoordinateJ8ProtocolRd__lFQOyACyACyAE012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0E7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalmJ0VQo_AA26_PreferenceWritingModifierVyAL0oE20CameraConvertibleKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0H5PhaseOctAA010CoordinateJ8ProtocolRd__lFQOyACyACyAE012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0E7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalmJ0VQo_AA26_PreferenceWritingModifierVyAL0oE20CameraConvertibleKeyVGGMR);
    v73 = v88;
    *(v72 + *(v88 + 52)) = v68;
    v74 = (v72 + *(v73 + 56));
    *v74 = partial apply for closure #4 in closure #1 in _RealityViewImpl.body.getter;
    v74[1] = v70;
    v75 = v104;
    outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v72, v104, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<CameraControlsPublisher, ModifiedContent<<<opaque return type of View.onContinuousHover<A>(coordinateSpace:perform:)>>.0, _PreferenceWritingModifier<RealityViewCameraConvertibleKey>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR, MEMORY[0x277CDDB50]);

    v28 = v90;
    static ViewBuilder.buildEither<A, B>(first:)(v75, v73);
    outlined destroy of PerspectiveCameraComponent?(v75, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
  }

  else
  {
    v76 = v90;
    static ViewBuilder.buildExpression<A>(_:)();
    static ViewBuilder.buildExpression<A>(_:)();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<CameraControlsPublisher, ModifiedContent<<<opaque return type of View.onContinuousHover<A>(coordinateSpace:perform:)>>.0, _PreferenceWritingModifier<RealityViewCameraConvertibleKey>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR, MEMORY[0x277CDDB50]);
    static ViewBuilder.buildEither<A, B>(second:)(v10, v22, a3);
    v77 = *(v7 + 8);
    v77(v10, a3);
    v77(v76, a3);
    v71 = a4;
  }

  v113[4] = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<CameraControlsPublisher, ModifiedContent<<<opaque return type of View.onContinuousHover<A>(coordinateSpace:perform:)>>.0, _PreferenceWritingModifier<RealityViewCameraConvertibleKey>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR, MEMORY[0x277CDDB50]);
  v113[5] = v71;
  v78 = v108;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v107 + 8))(v28, v78);
}

Swift::Void __swiftcall RealityViewCameraContent.makeSettings()()
{
  v1 = type metadata accessor for RealityViewCameraComponent(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Entity.ComponentSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.components.getter();
  v8 = type metadata accessor for RealityViewCameraContent(0);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0 + *(v8 + 24), v3, &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type RealityViewCameraComponent and conformance RealityViewCameraComponent, type metadata accessor for RealityViewCameraComponent, &protocol conformance descriptor for RealityViewCameraComponent);
  Entity.ComponentSet.set<A>(_:)();
  outlined destroy of RealityViewCamera(v3, type metadata accessor for RealityViewCameraComponent);
  (*(v5 + 8))(v7, v4);
  v9 = *v0;
  v10 = [*v0 gestureRecognizers];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer, 0x277D75548);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setGestureRecognizers_];
  }

  else
  {
    [v9 setGestureRecognizers_];
  }
}

uint64_t closure #2 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a2;
  v55 = a6;
  v59 = type metadata accessor for RealityViewCameraContent(0);
  MEMORY[0x28223BE20](v59);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CameraControls();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x28223BE20](v11);
  v56 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for ARView.EDRHeadroomPolicy();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x28223BE20](v13);
  v51 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v48 - v16);
  v18 = type metadata accessor for Image.DynamicRange();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v48 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v29 = type metadata accessor for _RealityViewImpl(0, a5, v55, v28);
  v55 = a3;
  _RealityViewImpl.dynamicRange.getter(v29, v17);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    v48 = v29;
    v50 = v10;
    (*(v19 + 32))(v27, v17, v18);
    v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v49 = a4;
    v31 = *(a4 + v30);
    (*(v19 + 16))(v25, v27, v18);
    v32 = v31;
    static Image.DynamicRange.high.getter();
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type Image.DynamicRange and conformance Image.DynamicRange, MEMORY[0x277CE0FC8], MEMORY[0x277CE0FD0]);
    LOBYTE(v31) = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *(v19 + 8);
    v33(v22, v18);
    if (v31)
    {
      v33(v25, v18);
      dispatch thunk of ARView.extendedDynamicRangeOutput.setter();
      v34 = *MEMORY[0x277CDB668];
      v36 = v51;
      v35 = v52;
    }

    else
    {
      static Image.DynamicRange.constrainedHigh.getter();
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33(v22, v18);
      v33(v25, v18);
      if ((v37 & 1) == 0)
      {
        dispatch thunk of ARView.extendedDynamicRangeOutput.setter();
        goto LABEL_9;
      }

      dispatch thunk of ARView.extendedDynamicRangeOutput.setter();
      v36 = v51;
      v35 = v52;
      *v51 = 0x40000000;
      v34 = *MEMORY[0x277CDB660];
    }

    (*(v35 + 104))(v36, v34, v53);
    dispatch thunk of ARView.edrHeadroomPolicy.setter();
LABEL_9:

    v33(v27, v18);
    a4 = v49;
    v10 = v50;
    v29 = v48;
    goto LABEL_10;
  }

  outlined destroy of PerspectiveCameraComponent?(v17, &_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR);
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI26UIViewRepresentableContextVy012_RealityKit_aB011ViewAdaptorV14RepresentationVy0fG06ARViewC_GGMd, &_s7SwiftUI26UIViewRepresentableContextVy012_RealityKit_aB011ViewAdaptorV14RepresentationVy0fG06ARViewC_GGMR);
  v38 = UIViewRepresentableContext.transaction.getter();
  v39 = a4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
  swift_beginAccess();
  v40 = v59;
  v41 = *(v59 + 36);
  v42 = *(v39 + v41);
  *(v39 + v41) = v38;
  outlined consume of PlatterRenderer??(v42);
  (*(v55 + 16))(v39);
  v43 = *(v39 + v41);
  *(v39 + v41) = 1;
  swift_endAccess();
  outlined consume of PlatterRenderer??(v43);
  v44 = v56;
  _RealityViewImpl.cameraControls.getter(v29, v56);
  swift_beginAccess();
  v45 = *(v40 + 40);
  v46 = type metadata accessor for RealityViewCamera(0);
  (*(v57 + 40))(v39 + v45 + *(v46 + 20), v44, v58);
  RealityViewCameraContent.camera.didset();
  swift_endAccess();
  outlined init with copy of RealityViewCamera(v39, v10, type metadata accessor for RealityViewCameraContent);
  RealityViewCameraContent.updateSettings()();
  return outlined destroy of RealityViewCamera(v10, type metadata accessor for RealityViewCameraContent);
}

uint64_t (*RealityViewCameraContent.camera.modify(void *a1))(uint64_t result, char a2)
{
  *a1 = v1;
  type metadata accessor for RealityViewCameraContent(0);
  return RealityViewCameraContent.camera.modify;
}

uint64_t RealityViewCameraContent.camera.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return RealityViewCameraContent.camera.didset();
  }

  return v2;
}

Swift::Void __swiftcall RealityViewCameraContent.updateSettings()()
{
  v1 = v0;
  v2 = type metadata accessor for CameraControls();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RealityViewCameraComponent(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Entity.ComponentSet();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ARView.DebugOptions();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *v0;
  RealityViewCameraContent.updateDebugOptions()(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v14;
  dispatch thunk of ARView.debugOptions.setter();
  dispatch thunk of Entity.components.getter();
  v15 = type metadata accessor for RealityViewCameraContent(0);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v15[6], v7, &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type RealityViewCameraComponent and conformance RealityViewCameraComponent, type metadata accessor for RealityViewCameraComponent, &protocol conformance descriptor for RealityViewCameraComponent);
  Entity.ComponentSet.set<A>(_:)();
  outlined destroy of RealityViewCamera(v7, type metadata accessor for RealityViewCameraComponent);
  (*(v9 + 8))(v11, v8);
  v16 = (v1 + v15[10]);
  if ((*(v16 + *(type metadata accessor for RealityViewCamera(0) + 24)) & 1) == 0)
  {
    static CameraControls.none.getter();
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type CameraControls and conformance CameraControls, MEMORY[0x277CDB288], MEMORY[0x277CDB290]);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v22 + 8))(v4, v2);
    if ((v17 & 1) == 0 && *v16)
    {
      v18 = *(v1 + v15[14]);

      v19 = v18;
LABEL_8:
      Entity.update(from:overrideDistance:)(v19, 0);

      return;
    }

    if (*(v1 + v15[15]) == 1)
    {
      dispatch thunk of ARView.scene.getter();
      active = dispatch thunk of Scene.internalActiveCamera.getter();

      if (active)
      {
        v19 = *(v1 + v15[14]);
        goto LABEL_8;
      }
    }
  }
}

uint64_t closure #3 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for RealityViewCameraContent(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
  swift_beginAccess();
  outlined init with copy of RealityViewCamera(a4 + v11, v10, type metadata accessor for RealityViewCameraContent);
  RealityViewCameraContent.hoverEffect(_:)(a1, a2, a3 & 1);
  return outlined destroy of RealityViewCamera(v10, type metadata accessor for RealityViewCameraContent);
}

uint64_t RealityViewCameraContent.hoverEffect(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v27 = a2;
  v26 = a1;
  v33 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for CollisionCastHit();
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v23 = &v23 - v8;
  v9 = type metadata accessor for CollisionGroup();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v14 = *(Type - 8);
  MEMORY[0x28223BE20](Type);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v17 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  MEMORY[0x23EEB0250](v17);
  result = RERemoteEffectsServiceInvalidateHitTestData();
  if ((a3 & 1) == 0)
  {
    (*(v14 + 104))(v16, *MEMORY[0x277CDAE48], Type);
    static CollisionGroup.all.getter();
    v19 = ARView.hitTest(_:requireInputTarget:query:mask:)();
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, Type);
    if (*(v19 + 16))
    {
      v21 = v24;
      v20 = v25;
      (*(v24 + 16))(v7, v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v25);

      v22 = v23;
      (*(v21 + 32))(v23, v7, v20);
      RERemoteEffectsServiceHoverEffectSettingsCreate();
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      RERemoteEffectsServiceHitTestDataSetSource();
      CollisionCastHit.position.getter();
      RERemoteEffectsServiceHitTestDataSetLocation();
      CollisionCastHit.entity.getter();
      Entity.coreEntity.getter();

      RERemoteEffectsServiceHitTestDataSetTargetEntity();
      RERemoteEffectsServiceAddHitTestData();
      RERelease();
      return (*(v21 + 8))(v22, v20);
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #4 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CameraControls();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v24 - v15);
  v18 = type metadata accessor for _RealityViewImpl(0, a4, a5, v17);
  _RealityViewImpl.cameraControls.getter(v18, v16);
  static CameraControls.none.getter();
  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type CameraControls and conformance CameraControls, MEMORY[0x277CDB288], MEMORY[0x277CDB290]);
  LOBYTE(a5) = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v11 + 8);
  v19(v14, v10);
  result = (v19)(v16, v10);
  if ((a5 & 1) == 0)
  {
    v21 = a3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v22 = v21 + *(type metadata accessor for RealityViewCameraContent(0) + 40);
    result = type metadata accessor for RealityViewCamera(0);
    if ((*(v22 + *(result + 24)) & 1) == 0)
    {
      v23 = *(v18 + 44);

      RealityViewCameraController.updateGesture(_:geometry:)(a1, a2 + v23);
    }
  }

  return result;
}

uint64_t closure #2 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  type metadata accessor for RealityViewCameraContent(0);
  v6[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[14] = v8;
  v6[15] = v7;

  return MEMORY[0x2822009F8](closure #2 in _RealityViewImpl.body.getter, v8, v7);
}

uint64_t closure #2 in _RealityViewImpl.body.getter()
{
  v1 = v0[8];
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_makeTaskBegun) == 1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[12];
    v5 = v0[9];
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_makeTaskBegun) = 1;
    type metadata accessor for ImplicitAnimationSystem();
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ImplicitAnimationSystem and conformance ImplicitAnimationSystem, type metadata accessor for ImplicitAnimationSystem, &protocol conformance descriptor for ImplicitAnimationSystem);
    static System.registerSystem()();
    v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    v0[16] = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    outlined init with copy of RealityViewCamera(v1 + v6, v4, type metadata accessor for RealityViewCameraContent);
    v9 = (*v5 + **v5);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = closure #2 in _RealityViewImpl.body.getter;
    v8 = v0[12];

    return v9(v8);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](closure #2 in _RealityViewImpl.body.getter, v3, v2);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);

  type metadata accessor for _RealityViewImpl(0, v3, v4, v6);
  _RealityViewImpl.setIdealSize()();
  swift_beginAccess();
  outlined assign with copy of RealityViewCamera(v2, v5 + v1, type metadata accessor for RealityViewCameraContent);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 1;

  static Published.subscript.setter();
  outlined destroy of RealityViewCamera(v2, type metadata accessor for RealityViewCameraContent);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in RealityViewCameraContent.ContentStorage.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in RealityViewCameraContent.ContentStorage.deinit, v6, v5);
}

uint64_t closure #1 in RealityViewCameraContent.ContentStorage.deinit()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = closure #1 in RealityViewCameraContent.ContentStorage.deinit;

    return MEMORY[0x28212A650]();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in RealityViewCameraContent.ContentStorage.deinit, v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RealityViewCameraContent.ContentStorage.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in RealityViewCameraContent.ContentStorage.deinit, v8);

  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtCV19_RealityKit_SwiftUI24RealityViewCameraContent14ContentStorage_unavailableCapabilities, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMR);
  return swift_deallocClassInstance();
}

uint64_t key path setter for RealityViewCameraContent.entities : RealityViewCameraContent(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for Entity();
  result = static Entity.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t RealityViewCameraContent.entities.setter(uint64_t *a1)
{
  type metadata accessor for Entity();
  v1 = static Entity.== infix(_:_:)();

  if ((v1 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*RealityViewCameraContent.entities.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 8);
  *a1 = v3;
  a1[1] = v3;

  return RealityViewCameraContent.entities.modify;
}

uint64_t RealityViewCameraContent.entities.modify(uint64_t *a1, char a2)
{
  type metadata accessor for Entity();
  if ((a2 & 1) == 0)
  {
    v5 = static Entity.== infix(_:_:)();

    if (v5)
    {
      return result;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v3 = static Entity.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }
}

uint64_t static RealityViewCamera.virtual.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for RealityViewCamera(0);
  result = static CameraControls.none.getter();
  *(a1 + *(v2 + 24)) = 0;
  return result;
}

uint64_t key path setter for RealityViewCameraContent.camera : RealityViewCameraContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealityViewCamera(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RealityViewCamera(a1, v6, type metadata accessor for RealityViewCamera);
  v7 = type metadata accessor for RealityViewCameraContent(0);
  outlined assign with copy of RealityViewCamera(v6, a2 + *(v7 + 40), type metadata accessor for RealityViewCamera);
  RealityViewCameraContent.camera.didset();
  return outlined destroy of RealityViewCamera(v6, type metadata accessor for RealityViewCamera);
}

uint64_t RealityViewCameraContent.camera.setter(uint64_t a1)
{
  v3 = type metadata accessor for RealityViewCameraContent(0);
  outlined assign with copy of RealityViewCamera(a1, v1 + *(v3 + 40), type metadata accessor for RealityViewCamera);
  RealityViewCameraContent.camera.didset();
  return outlined destroy of RealityViewCamera(a1, type metadata accessor for RealityViewCamera);
}

uint64_t RealityViewCameraContent.camera.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v45 = &v44 - v2;
  v3 = type metadata accessor for ARView.Environment.Background();
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ARView.Environment();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = &v44 - v9;
  MEMORY[0x28223BE20](v8);
  v44 = &v44 - v10;
  v11 = type metadata accessor for ARView.CameraMode();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14CameraControlsV15InteractionModeOSgMd, &_s17RealityFoundation14CameraControlsV15InteractionModeOSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v17 = type metadata accessor for CameraControls.InteractionMode();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *v0;
  dispatch thunk of ARView.scene.getter();
  active = dispatch thunk of Scene.internalActiveCamera.getter();

  v22 = type metadata accessor for RealityViewCameraContent(0);
  v23 = (v0 + *(v22 + 40));

  *v23 = active;
  v24 = type metadata accessor for RealityViewCamera(0);
  CameraControls.interactionMode.getter();
  v25 = (*(v18 + 48))(v16, 1, v17);
  v46 = v0;
  v55 = v22;
  if (v25 == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v16, &_s17RealityFoundation14CameraControlsV15InteractionModeOSgMd, &_s17RealityFoundation14CameraControlsV15InteractionModeOSgMR);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v26 = *(v0 + *(v22 + 56));
    v27 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
    swift_beginAccess();
    (*(v18 + 24))(v26 + v27, v20, v17);
    swift_endAccess();
    (*(v18 + 8))(v20, v17);
  }

  v28 = *(v47 + 104);
  v29 = v54;
  v30 = v52;
  if (*(v23 + *(v24 + 24)) == 1)
  {
    v28(v13, *MEMORY[0x277CDB590], v48);
    ARView.cameraMode.setter();
    v30 = v44;
    dispatch thunk of ARView.environment.getter();
    static ARView.Environment.Background.cameraFeed(exposureCompensation:)();
    ARView.Environment.background.setter();
    v31 = ARView.Environment.lighting.modify();
    ARView.Environment.ImageBasedLight.resource.setter();
    v31(v56, 0);
    v32 = v53;
    (*(v53 + 16))(v51, v30, v29);
    dispatch thunk of ARView.environment.setter();
    type metadata accessor for SpatialTrackingManager();
    if (static SpatialTrackingManager.shared.getter())
    {
      v33 = &async function pointer to partial apply for closure #1 in RealityViewCameraContent.camera.didset;
LABEL_12:
      v37 = type metadata accessor for TaskPriority();
      v38 = v45;
      (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
      v39 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for MainActor();

      v40 = static MainActor.shared.getter();
      v41 = swift_allocObject();
      v42 = MEMORY[0x277D85700];
      v41[2] = v40;
      v41[3] = v42;
      v41[4] = v39;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, v33, v41);
    }
  }

  else
  {
    v28(v13, *MEMORY[0x277CDB598], v48);
    ARView.cameraMode.setter();
    dispatch thunk of ARView.environment.getter();
    if (*(v46 + *(v55 + 48)))
    {

      static ARView.Environment.Background.skybox(_:)();
      ARView.Environment.background.setter();

      v34 = ARView.Environment.lighting.modify();
      ARView.Environment.ImageBasedLight.resource.setter();
      v34(v56, 0);
    }

    else
    {
      v35 = [objc_opt_self() clearColor];
      static ARView.Environment.Background.color(_:)();

      ARView.Environment.background.setter();
      v36 = ARView.Environment.lighting.modify();
      ARView.Environment.ImageBasedLight.resource.setter();
      v36(v56, 0);
    }

    v32 = v53;
    (*(v53 + 16))(v51, v30, v29);
    dispatch thunk of ARView.environment.setter();
    type metadata accessor for SpatialTrackingManager();
    if (static SpatialTrackingManager.shared.getter())
    {
      v33 = &async function pointer to partial apply for closure #2 in RealityViewCameraContent.camera.didset;
      goto LABEL_12;
    }
  }

  return (*(v32 + 8))(v30, v29);
}

uint64_t closure #1 in RealityViewCameraContent.camera.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMR);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for SpatialTrackingSession.Configuration();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v8;
  v4[18] = v7;

  return MEMORY[0x2822009F8](closure #1 in RealityViewCameraContent.camera.didset, v8, v7);
}

uint64_t closure #1 in RealityViewCameraContent.camera.didset()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[11];
    v3 = v0[12];
    v21 = v0[10];
    type metadata accessor for SpatialTrackingSession();
    swift_allocObject();
    *(v2 + 24) = SpatialTrackingSession.init()();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMR);
    type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_23B91AE90;
    static SpatialTrackingSession.Configuration.AnchorCapability.camera.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.object.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.face.getter();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityV_Tt0g5Tf4g_n(v5);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23B91A6E0;
    static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.object.getter();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityV_Tt0g5Tf4g_n(v6);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v4 + 104))(v3, *MEMORY[0x277CDB4D8], v21);
    SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
    v7 = *(v2 + 24);
    v0[20] = v7;
    if (v7)
    {

      v8 = swift_task_alloc();
      v0[21] = v8;
      *v8 = v0;
      v8[1] = closure #1 in RealityViewCameraContent.camera.didset;
      v9 = v0[15];
      v10 = v0[9];

      return MEMORY[0x28212A658](v10, v9);
    }

    v11 = v0[15];
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[9];

    (*(v13 + 8))(v11, v12);
    v15 = type metadata accessor for SpatialTrackingSession.UnavailableCapabilities();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = v0[19];
    v17 = v0[9];
    v18 = OBJC_IVAR____TtCV19_RealityKit_SwiftUI24RealityViewCameraContent14ContentStorage_unavailableCapabilities;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v17, v16 + v18, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMR);
    swift_endAccess();
  }

  v19 = v0[1];

  return v19();
}

{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](closure #1 in RealityViewCameraContent.camera.didset, v3, v2);
}

{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];

  (*(v3 + 8))(v1, v2);
  v4 = v0[19];
  v5 = v0[9];
  v6 = OBJC_IVAR____TtCV19_RealityKit_SwiftUI24RealityViewCameraContent14ContentStorage_unavailableCapabilities;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v5, v4 + v6, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMR);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t closure #2 in RealityViewCameraContent.camera.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #2 in RealityViewCameraContent.camera.didset, v6, v5);
}

uint64_t closure #2 in RealityViewCameraContent.camera.didset()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 24);
    v0[10] = v2;
    if (v2)
    {

      v3 = swift_task_alloc();
      v0[11] = v3;
      *v3 = v0;
      v3[1] = closure #2 in RealityViewCameraContent.camera.didset;

      return MEMORY[0x28212A660]();
    }
  }

  v4 = v0[1];

  return v4();
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #2 in RealityViewCameraContent.camera.didset, v3, v2);
}

uint64_t RealityViewCameraContent.cameraTarget.getter()
{
  type metadata accessor for RealityViewCameraContent(0);
}

uint64_t RealityViewCameraContent.cameraTarget.setter(uint64_t a1)
{
  v3 = type metadata accessor for RealityViewCameraContent(0);
  *(v1 + *(v3 + 44)) = a1;

  v4 = *(v1 + *(v3 + 56));
  *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController__orbitTargetEntity) = a1;

  if (a1)
  {
    type metadata accessor for Entity();
    HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
    v10 = v7;
    v11 = v6;
    v8 = BoundingBox.center.getter();
    *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target) = v9;
    *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale) = MEMORY[0x23EEAC580](v8, v11, v10);
    *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation) = xmmword_23B91BFE0;
    if (*(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
    {

      Entity.update(from:overrideDistance:)(v4, 1);
    }
  }

  return result;
}

uint64_t (*RealityViewCameraContent.cameraTarget.modify(uint64_t a1))(uint64_t result, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for RealityViewCameraContent(0);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v3 + 44);
  return RealityViewCameraContent.cameraTarget.modify;
}

uint64_t RealityViewCameraContent.cameraTarget.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(*result + *(*(result + 8) + 56));
    v3 = *(*result + *(result + 16));
    *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController__orbitTargetEntity) = v3;
    swift_retain_n();

    if (v3)
    {
      type metadata accessor for Entity();
      HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
      v8 = v5;
      v9 = v4;
      v6 = BoundingBox.center.getter();
      *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target) = v7;
      *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale) = MEMORY[0x23EEAC580](v6, v9, v8);
      *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation) = xmmword_23B91BFE0;
      if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
      {

        Entity.update(from:overrideDistance:)(v2, 1);
      }
    }
  }

  return result;
}

uint64_t RealityViewCameraContent.environment.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for RealityViewCameraContent(0) + 48));
}

uint64_t key path setter for RealityViewCameraContent.environment : RealityViewCameraContent(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for RealityViewCameraContent(0) + 48);

  *(a2 + v4) = v3;
  return RealityViewCameraContent.environment.didset();
}

uint64_t RealityViewCameraContent.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for RealityViewCameraContent(0) + 48);

  *(v1 + v3) = v2;

  return RealityViewCameraContent.environment.didset();
}

uint64_t RealityViewCameraContent.environment.didset()
{
  v1 = type metadata accessor for ARView.Environment.Background();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for ARView.Environment();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  dispatch thunk of ARView.environment.getter();
  if (*(v0 + *(type metadata accessor for RealityViewCameraContent(0) + 48)))
  {

    static ARView.Environment.Background.skybox(_:)();
    ARView.Environment.background.setter();

    v9 = ARView.Environment.lighting.modify();
    ARView.Environment.ImageBasedLight.resource.setter();
    v9(v13, 0);
  }

  else
  {
    v10 = [objc_opt_self() clearColor];
    static ARView.Environment.Background.color(_:)();

    ARView.Environment.background.setter();
    v11 = ARView.Environment.lighting.modify();
    ARView.Environment.ImageBasedLight.resource.setter();
    v11(v13, 0);
  }

  (*(v3 + 16))(v6, v8, v2);
  dispatch thunk of ARView.environment.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t (*RealityViewCameraContent.environment.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  type metadata accessor for RealityViewCameraContent(0);
  return RealityViewCameraContent.environment.modify;
}

uint64_t RealityViewCameraContent.environment.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return RealityViewCameraContent.environment.didset();
  }

  return result;
}

uint64_t (*RealityViewCameraContent.audioListener.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = *v1;
  *a1 = dispatch thunk of ARView.audioListener.getter();
  return RealityViewCameraContent.audioListener.modify;
}

uint64_t outlined init with copy of RealityViewCamera(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t key path setter for RealityViewCameraContent.renderingEffects : RealityViewCameraContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealityViewRenderingEffects(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RealityViewCamera(a1, v6, type metadata accessor for RealityViewRenderingEffects);
  v7 = type metadata accessor for RealityViewCameraContent(0);
  outlined assign with copy of RealityViewCamera(v6, a2 + *(v7 + 52), type metadata accessor for RealityViewRenderingEffects);
  RealityViewCameraContent.renderingEffects.didset();
  return outlined destroy of RealityViewCamera(v6, type metadata accessor for RealityViewRenderingEffects);
}

uint64_t RealityViewCameraContent.renderingEffects.setter(uint64_t a1)
{
  v3 = type metadata accessor for RealityViewCameraContent(0);
  outlined assign with copy of RealityViewCamera(a1, v1 + *(v3 + 52), type metadata accessor for RealityViewRenderingEffects);
  RealityViewCameraContent.renderingEffects.didset();
  return outlined destroy of RealityViewCamera(a1, type metadata accessor for RealityViewRenderingEffects);
}

uint64_t outlined assign with copy of RealityViewCamera(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t RealityViewCameraContent.renderingEffects.didset()
{
  v162 = type metadata accessor for AntialiasingMode();
  v164 = *(v162 - 8);
  v1 = MEMORY[0x28223BE20](v162);
  v161 = &v141 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v156 = &v141 - v3;
  v4 = type metadata accessor for ARView.RenderOptions();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v153 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v155 = &v141 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v152 = &v141 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v160 = &v141 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v151 = &v141 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v154 = &v141 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v141 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v159 = &v141 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v149 = &v141 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v158 = &v141 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v148 = &v141 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v157 = &v141 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v141 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v141 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v163 = &v141 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v141 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v141 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v141 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v147 = &v141 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v146 = &v141 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v145 = &v141 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v144 = &v141 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v143 = &v141 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v142 = &v141 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v61 = &v141 - v60;
  MEMORY[0x28223BE20](v59);
  v63 = &v141 - v62;
  v165 = v0 + *(type metadata accessor for RealityViewCameraContent(0) + 52);
  v64 = *v165;
  v167 = *v0;
  if (v64 == 2)
  {
    v68 = v163;
    static ARView.RenderOptions.disableMotionBlur.getter();
    v69 = ARView.renderOptions.modify();
    specialized OptionSet<>.insert(_:)(v40, v68);
    v70 = *(v5 + 8);
    v70(v68, v4);
    v166 = v70;
    v70(v40, v4);
    v69(v168, 0);
    v72 = v164;
    v71 = v165;
  }

  else if (v64 == 1)
  {
    static ARView.RenderOptions.disableMotionBlur.getter();
    v65 = ARView.renderOptions.modify();
    (*(v5 + 16))(v40);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620], MEMORY[0x277CDB630]);
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v66 = *(v5 + 8);
      v66(v43, v4);
      v166 = v66;
      v66(v45, v4);
      v67 = 1;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v166 = *(v5 + 8);
      v166(v45, v4);
      (*(v5 + 32))(v63, v43, v4);
      v67 = 0;
    }

    v72 = v164;
    (*(v5 + 56))(v63, v67, 1, v4);
    outlined destroy of PerspectiveCameraComponent?(v63, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
    v65(v168, 0);
    v71 = v165;
  }

  else
  {
    static ARView.RenderOptions.disableMotionBlur.getter();
    v73 = ARView.renderOptions.modify();
    (*(v5 + 16))(v40);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620], MEMORY[0x277CDB630]);
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v74 = *(v5 + 8);
      v74(v32, v4);
      v166 = v74;
      v74(v35, v4);
      v75 = 1;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v166 = *(v5 + 8);
      v166(v35, v4);
      (*(v5 + 32))(v61, v32, v4);
      v75 = 0;
    }

    v71 = v165;
    (*(v5 + 56))(v61, v75, 1, v4);
    outlined destroy of PerspectiveCameraComponent?(v61, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
    v73(v168, 0);
    v72 = v164;
  }

  v77 = v157;
  v76 = v158;
  v78 = *(v71 + 1);
  if (v78 == 2)
  {
    v84 = v163;
    static ARView.RenderOptions.disableDepthOfField.getter();
    v85 = ARView.renderOptions.modify();
    specialized OptionSet<>.insert(_:)(v40, v84);
    v86 = v84;
    v87 = v166;
    v166(v86, v4);
    v87(v40, v4);
    v85(v168, 0);
    v82 = v154;
    v88 = v159;
    goto LABEL_23;
  }

  if (v78 != 1)
  {
    static ARView.RenderOptions.disableDepthOfField.getter();
    v158 = ARView.renderOptions.modify();
    (*(v5 + 16))(v40);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620], MEMORY[0x277CDB630]);
    v89 = v76;
    v79 = v149;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v90 = v166;
      v166(v79, v4);
      v90(v89, v4);
      v81 = 1;
      v82 = v154;
      v83 = v143;
      goto LABEL_22;
    }

    dispatch thunk of SetAlgebra.subtract(_:)();
    v166(v89, v4);
    v91 = *(v5 + 32);
    v92 = &v170;
LABEL_21:
    v83 = *(v92 - 32);
    v91(v83, v79, v4);
    v81 = 0;
    v82 = v154;
    goto LABEL_22;
  }

  static ARView.RenderOptions.disableDepthOfField.getter();
  v158 = ARView.renderOptions.modify();
  (*(v5 + 16))(v40);
  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620], MEMORY[0x277CDB630]);
  v79 = v148;
  dispatch thunk of SetAlgebra.intersection(_:)();
  if ((dispatch thunk of SetAlgebra.isEmpty.getter() & 1) == 0)
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v166(v77, v4);
    v91 = *(v5 + 32);
    v92 = &v169;
    goto LABEL_21;
  }

  v80 = v166;
  v166(v79, v4);
  v80(v77, v4);
  v81 = 1;
  v82 = v154;
  v83 = v142;
LABEL_22:
  (*(v5 + 56))(v83, v81, 1, v4);
  outlined destroy of PerspectiveCameraComponent?(v83, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
  (v158)(v168, 0);
  v88 = v159;
  v72 = v164;
LABEL_23:
  v93 = *(v71 + 2);
  if (v93 == 2)
  {
    v99 = v163;
    static ARView.RenderOptions.disableCameraGrain.getter();
    v100 = ARView.renderOptions.modify();
    specialized OptionSet<>.insert(_:)(v40, v99);
    v101 = v99;
    v102 = v166;
    v166(v101, v4);
    v102(v40, v4);
    v100(v168, 0);
    v97 = v155;
  }

  else
  {
    if (v93 == 1)
    {
      static ARView.RenderOptions.disableCameraGrain.getter();
      v159 = ARView.renderOptions.modify();
      (*(v5 + 16))(v40);
      _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620], MEMORY[0x277CDB630]);
      v94 = v150;
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v95 = v166;
        v166(v94, v4);
        v95(v88, v4);
        v96 = 1;
        v97 = v155;
        v98 = v144;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        v166(v88, v4);
        v98 = v144;
        (*(v5 + 32))(v144, v94, v4);
        v96 = 0;
        v97 = v155;
      }

      (*(v5 + 56))(v98, v96, 1, v4);
      v107 = v98;
    }

    else
    {
      static ARView.RenderOptions.disableCameraGrain.getter();
      v159 = ARView.renderOptions.modify();
      (*(v5 + 16))(v40);
      _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620], MEMORY[0x277CDB630]);
      v103 = v151;
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v104 = v166;
        v166(v103, v4);
        v104(v82, v4);
        v105 = 1;
        v97 = v155;
        v106 = v145;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        v166(v82, v4);
        v106 = v145;
        (*(v5 + 32))(v145, v103, v4);
        v105 = 0;
        v97 = v155;
      }

      (*(v5 + 56))(v106, v105, 1, v4);
      v107 = v106;
    }

    outlined destroy of PerspectiveCameraComponent?(v107, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
    (v159)(v168, 0);
  }

  v108 = v160;
  v109 = type metadata accessor for RealityViewRenderingEffects(0);
  v110 = *&v71[v109[8]];
  if (v110 == 2)
  {
    static ARView.RenderOptions.disableHDR.getter();
    v117 = ARView.renderOptions.modify();
    (*(v5 + 16))(v40);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620], MEMORY[0x277CDB630]);
    v118 = v152;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v119 = v166;
      v166(v118, v4);
      v119(v108, v4);
      v120 = 1;
      v116 = v156;
      v121 = v146;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v166(v108, v4);
      v121 = v146;
      (*(v5 + 32))(v146, v118, v4);
      v120 = 0;
      v116 = v156;
    }

    (*(v5 + 56))(v121, v120, 1, v4);
    outlined destroy of PerspectiveCameraComponent?(v121, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
    v117(v168, 0);
    v115 = v161;
    v71 = v165;
  }

  else if (v110 == 1)
  {
    v111 = v163;
    static ARView.RenderOptions.disableHDR.getter();
    v112 = ARView.renderOptions.modify();
    specialized OptionSet<>.insert(_:)(v40, v111);
    v113 = v111;
    v114 = v166;
    v166(v113, v4);
    v114(v40, v4);
    v112(v168, 0);
    v115 = v161;
    v116 = v156;
  }

  else
  {
    static ARView.RenderOptions.disableHDR.getter();
    v122 = ARView.renderOptions.modify();
    (*(v5 + 16))(v40);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620], MEMORY[0x277CDB630]);
    v123 = v153;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v124 = v166;
      v166(v123, v4);
      v124(v97, v4);
      v125 = 1;
      v116 = v156;
      v71 = v165;
      v126 = v147;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v166(v97, v4);
      v126 = v147;
      (*(v5 + 32))(v147, v123, v4);
      v125 = 0;
      v116 = v156;
      v71 = v165;
    }

    (*(v5 + 56))(v126, v125, 1, v4);
    outlined destroy of PerspectiveCameraComponent?(v126, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
    v122(v168, 0);
    v115 = v161;
  }

  v127 = v162;
  (*(v72 + 16))(v116, &v71[v109[7]], v162);
  v128 = (*(v72 + 88))(v116, v127);
  if (v128 == *MEMORY[0x277CDB3B8])
  {
    (*(v72 + 104))(v115, v128, v127);
LABEL_50:
    dispatch thunk of ARView.antialiasingMode.setter();
    goto LABEL_52;
  }

  v129 = *(v72 + 104);
  if (v128 == *MEMORY[0x277CDB3B0])
  {
    v129(v115, v128, v127);
    goto LABEL_50;
  }

  (v129)(v115);
  dispatch thunk of ARView.antialiasingMode.setter();
  (*(v72 + 8))(v116, v127);
LABEL_52:
  v130 = &v71[v109[9]];
  v131 = *v130;
  v133 = v130[2];
  v132 = v130[3];
  if (*v130)
  {
    v134 = v130[1];
    v135 = swift_allocObject();
    *(v135 + 16) = v131;
    *(v135 + 24) = v134;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v131, v134);

    v136 = ARView.renderCallbacks.modify();
    ARView.RenderCallbacks.postProcess.setter();
    v136(v168, 0);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v131, v134);
    if (v133)
    {
LABEL_54:
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v133, v132);

      v137 = ARView.renderCallbacks.modify();
      ARView.RenderCallbacks.prepareWithDevice.setter();
      v137(v168, 0);
      return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v133, v132);
    }
  }

  else
  {
    v139 = ARView.renderCallbacks.modify();
    ARView.RenderCallbacks.postProcess.setter();
    v139(v168, 0);
    if (v133)
    {
      goto LABEL_54;
    }
  }

  v140 = ARView.renderCallbacks.modify();
  ARView.RenderCallbacks.prepareWithDevice.setter();
  return v140(v168, 0);
}

uint64_t outlined destroy of RealityViewCamera(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*RealityViewCameraContent.renderingEffects.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  type metadata accessor for RealityViewCameraContent(0);
  return RealityViewCameraContent.renderingEffects.modify;
}

uint64_t RealityViewCameraContent.renderingEffects.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return RealityViewCameraContent.renderingEffects.didset();
  }

  return result;
}

uint64_t RealityViewCameraContent.subscribe<A>(to:on:componentType:_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a9@<X8>)
{
  v22[1] = a4;
  v22[2] = a5;
  v22[0] = a3;
  v12 = type metadata accessor for EventSubscription();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _StoredEventSubscription();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a2, v23, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);

  _StoredEventSubscription.__allocating_init(to:on:componentType:_:)();

  EventSubscription.init(_:)();
  v16 = *(v9 + *(type metadata accessor for RealityViewCameraContent(0) + 32));
  (*(v13 + 16))(v15, a9, v12);
  swift_beginAccess();
  v17 = *(v16 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17, &_ss23_ContiguousArrayStorageCy17RealityFoundation17EventSubscriptionVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation17EventSubscriptionVGMR, MEMORY[0x277CDB3F8]);
    *(v16 + 16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17, &_ss23_ContiguousArrayStorageCy17RealityFoundation17EventSubscriptionVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation17EventSubscriptionVGMR, MEMORY[0x277CDB3F8]);
  }

  v17[2] = v20 + 1;
  (*(v13 + 32))(v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v20, v15, v12);
  *(v16 + 16) = v17;
  swift_endAccess();
  dispatch thunk of ARView.scene.getter();
  EventSubscription.subscribe(to:)();
}

uint64_t RealityViewCameraContent.updateDebugOptions()@<X0>(uint64_t a1@<X8>)
{
  v186 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMR);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v167 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v167 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v182 = &v167 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v167 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v196 = &v167 - v17;
  MEMORY[0x28223BE20](v16);
  v190 = &v167 - v18;
  v199 = type metadata accessor for CharacterSet();
  v203 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v198 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ARView.DebugOptions();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v177 = &v167 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v176 = &v167 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v179 = &v167 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v178 = &v167 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v181 = &v167 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v180 = &v167 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v184 = &v167 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v183 = &v167 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v188 = &v167 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v187 = &v167 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v200 = &v167 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v201 = &v167 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v197 = &v167 - v47;
  MEMORY[0x28223BE20](v46);
  v202 = &v167 - v48;
  static ARView.DebugOptions.none.getter();
  v49 = [objc_opt_self() processInfo];
  v50 = [v49 environment];

  v51 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v51 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x800000023B929020), (v52 & 1) == 0))
  {

    return (*(v21 + 32))(v186, v202, v20);
  }

  v175 = v21;
  v185 = v15;
  v173 = v10;
  v172 = v7;
  v171 = v4;
  v193 = v1;

  v53 = String.lowercased()();

  v55 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, v53._countAndFlagsBits, v53._object, v54);
  v56 = *(v55 + 16);
  if (!v56)
  {

    v76 = MEMORY[0x277D84F90];
LABEL_12:
    v174 = v76;
    v77 = *(v76 + 16);
    v78 = v201;
    if (!v77)
    {
LABEL_79:

      return (*(v175 + 32))(v186, v202, v20);
    }

    v192 = (v203 + 1);
    v170 = 0x800000023B929040;
    v79 = (v175 + 16);
    v189 = (v175 + 32);
    v80 = (v174 + 40);
    *&v75 = 136315138;
    v169 = v75;
    v191 = (v175 + 8);
    while (1)
    {
      v203 = v80;
      v204 = v77;
      v81 = *v80;
      v205[0] = *(v80 - 1);
      v205[1] = v81;

      v82 = v198;
      v83 = static CharacterSet.whitespaces.getter();
      lazy protocol witness table accessor for type String and conformance String(v83, v84, v85);
      v86 = StringProtocol.trimmingCharacters(in:)();
      v88 = v87;
      (*v192)(v82, v199);

      if (v86 == 0x73636973796870 && v88 == 0xE700000000000000)
      {
        break;
      }

      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v91 = v197;
      if (v90)
      {

LABEL_21:
        static ARView.DebugOptions.showPhysics.getter();
        v92 = v200;
        v195 = *v79;
        v195(v200, v202, v20);
        v93 = MEMORY[0x277CDB5F0];
        v194 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0], MEMORY[0x277CDB600]);
        dispatch thunk of SetAlgebra.intersection(_:)();
        _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v93, MEMORY[0x277CDB5F8]);
        v94 = dispatch thunk of static Equatable.== infix(_:_:)();
        v95 = v193;
        v96 = *(v193 + 48);
        v97 = v79;
        v98 = v78;
        v99 = v190;
        v100 = v191;
        *v190 = (v94 & 1) == 0;
        v101 = *v100;
        if (v94)
        {
          v101(v91, v20);
          (*v189)(v99 + v96, v98, v20);
        }

        else
        {
          v101(v98, v20);
          v102 = (v99 + v96);
          v103 = v195;
          v195(v102, v91, v20);
          v103(v92, v91, v20);
          dispatch thunk of SetAlgebra.formUnion(_:)();
          v101(v91, v20);
        }

        v79 = v97;
        goto LABEL_36;
      }

      v104 = v79;
      if (v86 == 0x69726F646C726F77 && v88 == 0xEB000000006E6967)
      {

        v107 = v187;
        v108 = v188;
      }

      else
      {
        v106 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v107 = v187;
        v108 = v188;
        if ((v106 & 1) == 0)
        {
          if (v86 == 0x726F726F68636E61 && v88 == 0xED0000736E696769)
          {

            v117 = v184;
            v118 = v183;
            v119 = v200;
            v120 = v202;
            v79 = v104;
            goto LABEL_44;
          }

          v121 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v117 = v184;
          v118 = v183;
          v120 = v202;
          v79 = v104;
          if (v121)
          {

            v119 = v200;
LABEL_44:
            static ARView.DebugOptions.showAnchorOrigins.getter();
            v195 = *v79;
            v195(v119, v120, v20);
            v122 = v118;
            v123 = MEMORY[0x277CDB5F0];
            v194 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0], MEMORY[0x277CDB600]);
            dispatch thunk of SetAlgebra.intersection(_:)();
            _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v123, MEMORY[0x277CDB5F8]);
            v124 = dispatch thunk of static Equatable.== infix(_:_:)();
            v125 = *(v193 + 48);
            v126 = v182;
            *v182 = (v124 & 1) == 0;
            v127 = *v191;
            if (v124)
            {
              v127(v122, v20);
              (*v189)(&v126[v125], v117, v20);
            }

            else
            {
              v127(v117, v20);
              v128 = &v126[v125];
              v129 = v195;
              v195(v128, v122, v20);
              v129(v119, v122, v20);
              dispatch thunk of SetAlgebra.formUnion(_:)();
              v127(v122, v20);
            }

            v130 = v126;
          }

          else
          {
            if (v86 == 0x6567726F68636E61 && v88 == 0xEE00797274656D6FLL)
            {

              v132 = v181;
              v133 = v180;
            }

            else
            {
              v134 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v132 = v181;
              v133 = v180;
              if ((v134 & 1) == 0)
              {
                if (v86 == 0x7065727574616566 && v88 == 0xED000073746E696FLL)
                {

                  v143 = v179;
                  v144 = v178;
                  v78 = v201;
LABEL_63:
                  static ARView.DebugOptions.showFeaturePoints.getter();
                  v195 = *v79;
                  v195(v200, v202, v20);
                  v146 = v144;
                  v147 = MEMORY[0x277CDB5F0];
                  v194 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0], MEMORY[0x277CDB600]);
                  dispatch thunk of SetAlgebra.intersection(_:)();
                  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v147, MEMORY[0x277CDB5F8]);
                  v148 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v149 = *(v193 + 48);
                  v150 = v172;
                  *v172 = (v148 & 1) == 0;
                  v151 = *v191;
                  if (v148)
                  {
                    v151(v146, v20);
                    (*v189)(v150 + v149, v143, v20);
                  }

                  else
                  {
                    v151(v143, v20);
                    v152 = v195;
                    v195((v150 + v149), v146, v20);
                    v152(v200, v146, v20);
                    dispatch thunk of SetAlgebra.formUnion(_:)();
                    v151(v146, v20);
                  }
                }

                else
                {
                  v145 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v143 = v179;
                  v144 = v178;
                  v78 = v201;
                  if (v145)
                  {

                    goto LABEL_63;
                  }

                  if ((v86 != 0xD000000000000012 || v170 != v88) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    if (one-time initialization token for logger != -1)
                    {
                      swift_once();
                    }

                    v161 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v161, logger);

                    v162 = Logger.logObject.getter();
                    v163 = static os_log_type_t.error.getter();

                    if (os_log_type_enabled(v162, v163))
                    {
                      v164 = swift_slowAlloc();
                      v195 = swift_slowAlloc();
                      v205[0] = v195;
                      *v164 = v169;
                      v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v205);

                      *(v164 + 4) = v165;
                      _os_log_impl(&dword_23B824000, v162, v163, "Unknown Visualization Option: %s", v164, 0xCu);
                      v166 = v195;
                      __swift_destroy_boxed_opaque_existential_0Tm(v195);
                      MEMORY[0x23EEB0B70](v166, -1, -1);
                      MEMORY[0x23EEB0B70](v164, -1, -1);
                    }

                    else
                    {
                    }

                    v116 = v204;
                    goto LABEL_37;
                  }

                  v154 = v176;
                  static ARView.DebugOptions.showSceneUnderstanding.getter();
                  v195 = *v79;
                  v195(v200, v202, v20);
                  v155 = MEMORY[0x277CDB5F0];
                  v156 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0], MEMORY[0x277CDB600]);
                  v157 = v177;
                  v194 = v156;
                  dispatch thunk of SetAlgebra.intersection(_:)();
                  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v155, MEMORY[0x277CDB5F8]);
                  v158 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v159 = *(v193 + 48);
                  v150 = v171;
                  *v171 = (v158 & 1) == 0;
                  v151 = *v191;
                  if (v158)
                  {
                    v151(v154, v20);
                    (*v189)(v150 + v159, v157, v20);
                  }

                  else
                  {
                    v151(v157, v20);
                    v168 = v151;
                    v160 = v195;
                    v195((v150 + v159), v154, v20);
                    v160(v200, v154, v20);
                    v151 = v168;
                    dispatch thunk of SetAlgebra.formUnion(_:)();
                    v151(v154, v20);
                  }
                }

                v153 = v196;
                outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v150, v196, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMR);
                v151((v153 + *(v193 + 48)), v20);
                v116 = v204;
                goto LABEL_37;
              }
            }

            static ARView.DebugOptions.showAnchorGeometry.getter();
            v135 = v200;
            v195 = *v79;
            v195(v200, v202, v20);
            v136 = MEMORY[0x277CDB5F0];
            v137 = v132;
            v194 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0], MEMORY[0x277CDB600]);
            dispatch thunk of SetAlgebra.intersection(_:)();
            _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v136, MEMORY[0x277CDB5F8]);
            v138 = dispatch thunk of static Equatable.== infix(_:_:)();
            v139 = *(v193 + 48);
            v140 = v173;
            *v173 = (v138 & 1) == 0;
            v127 = *v191;
            if (v138)
            {
              v127(v133, v20);
              (*v189)(&v140[v139], v137, v20);
            }

            else
            {
              v127(v137, v20);
              v141 = &v140[v139];
              v142 = v195;
              v195(v141, v133, v20);
              v142(v135, v133, v20);
              dispatch thunk of SetAlgebra.formUnion(_:)();
              v127(v133, v20);
            }

            v130 = v140;
          }

          v131 = v196;
          outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v130, v196, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMR);
          v127((v131 + *(v193 + 48)), v20);
          v78 = v201;
          v116 = v204;
          goto LABEL_37;
        }
      }

      static ARView.DebugOptions.showWorldOrigin.getter();
      v109 = v200;
      v195 = *v104;
      v195(v200, v202, v20);
      v110 = MEMORY[0x277CDB5F0];
      v194 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0], MEMORY[0x277CDB600]);
      dispatch thunk of SetAlgebra.intersection(_:)();
      _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v110, MEMORY[0x277CDB5F8]);
      v111 = dispatch thunk of static Equatable.== infix(_:_:)();
      v95 = v193;
      v112 = *(v193 + 48);
      v99 = v185;
      *v185 = (v111 & 1) == 0;
      v101 = *v191;
      if (v111)
      {
        v101(v107, v20);
        (*v189)(v99 + v112, v108, v20);
      }

      else
      {
        v101(v108, v20);
        v113 = (v99 + v112);
        v114 = v195;
        v195(v113, v107, v20);
        v114(v109, v107, v20);
        dispatch thunk of SetAlgebra.formUnion(_:)();
        v101(v107, v20);
      }

      v79 = v104;
LABEL_36:
      v115 = v196;
      outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v99, v196, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMR);
      v101((v115 + *(v95 + 48)), v20);
      v78 = v201;
      v116 = v204;
LABEL_37:
      v80 = v203 + 2;
      v77 = v116 - 1;
      if (!v77)
      {
        goto LABEL_79;
      }
    }

    v91 = v197;
    goto LABEL_21;
  }

  v205[0] = MEMORY[0x277D84F90];
  v57 = v55;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
  result = v57;
  v59 = 0;
  v60 = v205[0];
  v61 = (v57 + 56);
  v204 = v57;
  while (v59 < *(result + 16))
  {
    v62 = v20;
    v63 = *(v61 - 3);
    v64 = *(v61 - 2);
    v65 = *(v61 - 1);
    v66 = *v61;
    v67 = v60;

    v68 = MEMORY[0x23EEAF550](v63, v64, v65, v66);
    v70 = v69;

    v60 = v67;
    v205[0] = v67;
    v72 = *(v67 + 16);
    v71 = *(v67 + 24);
    if (v72 >= v71 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
      v60 = v205[0];
    }

    ++v59;
    *(v60 + 16) = v72 + 1;
    v73 = v60 + 16 * v72;
    *(v73 + 32) = v68;
    *(v73 + 40) = v70;
    v61 += 4;
    v20 = v62;
    result = v204;
    if (v56 == v59)
    {
      v74 = v60;

      v76 = v74;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_44:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v30 = (result + 32 * v5);
    v30[4] = v7;
    v30[5] = v8;
    v30[6] = v9;
    v30[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = String.subscript.getter();
    v8 = v27;
    v9 = v28;
    v10 = v29;

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v41 = MEMORY[0x277D84F90];
  v15 = 15;
  v16 = 0xE100000000000000;
  v40 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (1)
    {
      v10 = v15;
      while (String.subscript.getter() != 44 || v18 != 0xE100000000000000)
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          goto LABEL_16;
        }

        v10 = String.index(after:)();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

LABEL_16:
      if (v15 >> 14 != v17 || (a2 & 1) == 0)
      {
        break;
      }

      v15 = String.index(after:)();
      v17 = v15 >> 14;
      if (v15 >> 14 == v14)
      {
        goto LABEL_32;
      }
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
      return result;
    }

    v19 = String.subscript.getter();
    v37 = v21;
    v38 = v20;
    v22 = v41;
    v39 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    v41 = v22;
    if (v25 >= v24 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
    }

    v9 = v41;
    *(v41 + 2) = v25 + 1;
    v26 = &v41[32 * v25];
    *(v26 + 4) = v19;
    *(v26 + 5) = v39;
    *(v26 + 6) = v38;
    *(v26 + 7) = v37;
    v15 = String.index(after:)();
  }

  while (*(v41 + 2) != v40);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v41;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = String.subscript.getter();
  v16 = v31;
  v9 = v32;
  v10 = v33;

  v14 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v41;
LABEL_40:
  v35 = *(result + 16);
  v34 = *(result + 24);
  if (v35 >= v34 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, result);
  }

  *(result + 16) = v35 + 1;
  v36 = (result + 32 * v35);
  v36[4] = v11;
  v36[5] = v16;
  v36[6] = v9;
  v36[7] = v10;
  return result;
}

uint64_t RealityViewCameraContent._proto_findEntity(named:)(uint64_t a1, uint64_t a2)
{
  dispatch thunk of ARView.scene.getter();
  v2 = dispatch thunk of Scene.findEntity(named:)();

  return v2;
}

uint64_t RealityViewCameraContent._proto_findEntity(id:)(uint64_t a1)
{
  dispatch thunk of ARView.scene.getter();
  v1 = dispatch thunk of Scene.findEntity(id:)();

  return v1;
}

uint64_t RealityViewCameraContent._proto_performQuery(_:)(uint64_t a1)
{
  dispatch thunk of ARView.scene.getter();
  Scene.performQuery(_:)();
}

uint64_t RealityViewCameraContent._proto_allowCameraControls_v1.setter(char a1)
{
  result = type metadata accessor for RealityViewCameraContent(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

void (*RealityViewCameraContent._proto_debugOptions_v1.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
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
  v6 = type metadata accessor for ARView.DebugOptions();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v5[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v5[5] = *v1;
  dispatch thunk of ARView.debugOptions.getter();
  return RealityViewCameraContent._proto_debugOptions_v1.modify;
}

void (*RealityViewCameraContent._proto_environment_v1.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
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
  v6 = type metadata accessor for ARView.Environment();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v5[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v5[5] = *v1;
  dispatch thunk of ARView.environment.getter();
  return RealityViewCameraContent._proto_environment_v1.modify;
}

void (*RealityViewCameraContent.__proto_antialiasingMode_v1.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
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
  v6 = type metadata accessor for _Proto_AntialiasingMode_v1();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v5[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v5[5] = *v1;
  dispatch thunk of ARView.__proto_antialiasingMode_v1.getter();
  return RealityViewCameraContent.__proto_antialiasingMode_v1.modify;
}

uint64_t (*RealityViewCameraContent._proto_physicsOrigin_v1.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = *v1;
  *a1 = ARView.physicsOrigin.getter();
  return RealityViewCameraContent._proto_physicsOrigin_v1.modify;
}

uint64_t (*RealityViewCameraContent._proto_audioListener_v1.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = *v1;
  *a1 = dispatch thunk of ARView.audioListener.getter();
  return RealityViewCameraContent._proto_audioListener_v1.modify;
}

uint64_t RealityViewCameraContent.audioListener.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

void (*RealityViewCameraContent._proto_cameraMode_v1.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
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
  v6 = type metadata accessor for ARView.CameraMode();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v5[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v5[5] = *v1;
  ARView.cameraMode.getter();
  return RealityViewCameraContent._proto_cameraMode_v1.modify;
}

uint64_t key path setter for RealityViewCameraContent._proto_debugOptions_v1 : RealityViewCameraContent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  v15 = *(v9 + 16);
  v15(&v17 - v13, a1, v8);
  v15(v12, v14, v8);
  a6(v12);
  return (*(v9 + 8))(v14, v8);
}

uint64_t RealityViewCameraContent._proto_debugOptions_v1.setter(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *))
{
  v5 = a2(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  (*(v6 + 16))(&v10 - v7, a1, v5);
  a3(v8);
  return (*(v6 + 8))(a1, v5);
}

void (*RealityViewCameraContent._proto_renderOptions_v1.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
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
  v6 = type metadata accessor for ARView.RenderOptions();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v5[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v5[5] = *v1;
  ARView.renderOptions.getter();
  return RealityViewCameraContent._proto_renderOptions_v1.modify;
}

void RealityViewCameraContent._proto_debugOptions_v1.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*(*a1 + 8) + 16);
  v5(*(*a1 + 24), v4[4], *v4);
  v6 = v4[4];
  v7 = v4[2];
  v8 = v4[3];
  v9 = *v4;
  v10 = v4[1];
  if (a2)
  {
    v5(v4[2], v4[3], *v4);
    a3(v7);
    v11 = *(v10 + 8);
    v11(v8, v9);
    v11(v6, v9);
  }

  else
  {
    a3(v4[3]);
    (*(v10 + 8))(v6, v9);
  }

  free(v6);
  free(v8);
  free(v7);

  free(v4);
}

uint64_t protocol witness for RealityViewContentProtocol.entities.setter in conformance RealityViewCameraContent(uint64_t *a1)
{
  type metadata accessor for Entity();
  v1 = static Entity.== infix(_:_:)();

  if ((v1 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*protocol witness for RealityViewContentProtocol.entities.modify in conformance RealityViewCameraContent(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = RealityViewCameraContent.entities.modify(v2);
  return protocol witness for RealityViewContentProtocol.entities.modify in conformance RealityViewCameraContent;
}

void protocol witness for RealityViewContentProtocol.entities.modify in conformance RealityViewCameraContent(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t RealityViewCameraContent.displayTargetCube.setter(char a1)
{
  result = type metadata accessor for RealityViewCameraContent(0);
  *(*(v1 + *(result + 56)) + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube) = a1;
  return result;
}

uint64_t (*RealityViewCameraContent.displayTargetCube.modify(uint64_t a1))(uint64_t result)
{
  v3 = *(v1 + *(type metadata accessor for RealityViewCameraContent(0) + 56));
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v3 + v4);
  return RealityViewCameraContent.displayTargetCube.modify;
}

uint64_t RealityViewCameraContent.animate(body:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RealityViewCameraContent(0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v20);

  if ((v20 & 1) == 0)
  {
    v9 = v4;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, v11, v12, "Setting animate on content in the make closure is not supported, please move this to the update closure.", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    v4 = v9;
  }

  v14 = *(v4 + *(v7 + 36));
  if (v14 == 1)
  {
  }

  v15 = Transaction.animation.getter();
  if (!v15)
  {
    outlined consume of PlatterRenderer??(v14);
  }

  v16 = v15;
  type metadata accessor for SwiftUIImplicitAnimation();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = 0;
  if (a3)
  {
    type metadata accessor for ImplicitAnimationCompletion();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    *(v18 + 32) = 0;
  }

  *(v17 + 24) = v18;
  v19 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation, type metadata accessor for SwiftUIImplicitAnimation, &protocol conformance descriptor for SwiftUIImplicitAnimation);
  MEMORY[0x28223BE20](v19);

  outlined copy of (@escaping @callee_guaranteed () -> ())?(a3, a4);
  static ImplicitAnimationStack.withModifier<A>(_:operation:)();

  outlined consume of PlatterRenderer??(v14);
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance RealityViewCameraConvertibleKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static RealityViewCameraConvertibleKey.defaultValue;

  return result;
}

uint64_t View.realityViewCameraControls(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v16[2] = a1;
  v6 = type metadata accessor for CameraControlsModifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  swift_storeEnumTagMultiPayload();
  v13 = *(v6 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMd, &_s7Combine18PassthroughSubjectCy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMR);
  swift_allocObject();
  v16[5] = PassthroughSubject.init()();
  State.init(wrappedValue:)();
  *(v8 + v13) = v17;
  MEMORY[0x23EEAEFD0](v8, a2, v6, a3);
  outlined destroy of RealityViewCamera(v8, type metadata accessor for CameraControlsModifier);
  swift_getKeyPath();
  v14 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type CameraControlsModifier and conformance CameraControlsModifier, type metadata accessor for CameraControlsModifier, &protocol conformance descriptor for CameraControlsModifier);
  v16[3] = a3;
  v16[4] = v14;
  swift_getWitnessTable();
  View.environment<A>(_:_:)();

  return (*(v10 + 8))(v12, v9);
}

void *EnvironmentValues.realityViewCameraControls.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey(x0_0, a2, a3);

  return EnvironmentValues.subscript.getter();
}

uint64_t key path setter for EnvironmentValues.realityViewCameraControls : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for CameraControls();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(v3 + 16);
  v9(&v14 - v7, a1, v2);
  v10 = (v9)(v6, v8, v2);
  lazy protocol witness table accessor for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey(v10, v11, v12);
  EnvironmentValues.subscript.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t EnvironmentValues.realityViewCameraControls.setter(uint64_t a1)
{
  v2 = type metadata accessor for CameraControls();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (*(v3 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  lazy protocol witness table accessor for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey(v5, v6, v7);
  EnvironmentValues.subscript.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*EnvironmentValues.realityViewCameraControls.modify(void *a1))(uint64_t a1, char a2)
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
  v6 = type metadata accessor for CameraControls();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  v5[6] = lazy protocol witness table accessor for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey(v9, v10, v11);
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.realityViewCameraControls.modify;
}

void EnvironmentValues.realityViewCameraControls.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    EnvironmentValues.subscript.setter();
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v5, v8);
  }

  else
  {
    EnvironmentValues.subscript.setter();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t one-time initialization function for defaultValue()
{
  v0 = type metadata accessor for CameraControls();
  __swift_allocate_value_buffer(v0, static EnvironmentValues.CameraControlsKey.defaultValue);
  __swift_project_value_buffer(v0, static EnvironmentValues.CameraControlsKey.defaultValue);
  return static CameraControls.none.getter();
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.CameraControlsKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CameraControls();
  v3 = __swift_project_value_buffer(v2, static EnvironmentValues.CameraControlsKey.defaultValue);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.CameraControlsKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type CameraControls and conformance CameraControls, MEMORY[0x277CDB288], MEMORY[0x277CDB290]);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t static RealityViewCamera.spatialTracking.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for RealityViewCamera(0);
  result = static CameraControls.none.getter();
  *a1 = 0;
  *(a1 + *(v2 + 24)) = 1;
  return result;
}

uint64_t RealityViewRenderingEffects.antialiasing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RealityViewRenderingEffects(0) + 28);
  v4 = type metadata accessor for AntialiasingMode();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RealityViewRenderingEffects.antialiasing.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RealityViewRenderingEffects(0) + 28);
  v4 = type metadata accessor for AntialiasingMode();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RealityViewRenderingEffects.dynamicRange.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for RealityViewRenderingEffects(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t RealityViewRenderingEffects.dynamicRange.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for RealityViewRenderingEffects(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

double static RealityViewPostProcessEffect.none.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t RealityViewRenderingEffects.customPostProcessing.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RealityViewRenderingEffects(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v4, v5);

  return outlined copy of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

__n128 RealityViewRenderingEffects.customPostProcessing.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RealityViewRenderingEffects(0) + 36));
  v4 = v3[2];
  v5 = v3[3];
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(*v3, v3[1]);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v4, v5);
  result = *a1;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v7;
  return result;
}

uint64_t static RealityViewPostProcessEffect.effect<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RealityViewPostProcessEffect.Storage(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  v12 = RealityViewPostProcessEffect.Storage.__allocating_init(_:)(v8);
  *a3 = partial apply for implicit closure #2 in implicit closure #1 in static RealityViewPostProcessEffect.effect<A>(_:);
  a3[1] = v12;
  a3[2] = partial apply for implicit closure #4 in implicit closure #3 in static RealityViewPostProcessEffect.effect<A>(_:);
  a3[3] = v12;
}

uint64_t RealityViewPostProcessEffect.Storage.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t RealityViewPostProcessEffect.Storage.postProcess(context:)(uint64_t a1)
{
  swift_beginAccess();
  dispatch thunk of PostProcessEffect.postProcess(context:)();
  return swift_endAccess();
}

uint64_t RealityViewPostProcessEffect.Storage.prepare(for:)(uint64_t a1)
{
  swift_beginAccess();
  dispatch thunk of PostProcessEffect.prepare(for:)();
  return swift_endAccess();
}

uint64_t RealityViewPostProcessEffect.Storage.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

Swift::Int RealityViewRenderingEffectMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RealityViewRenderingEffectMode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v2);
  return Hasher._finalize()();
}

uint64_t key path getter for _RealityViewCameraModel.makeTaskComplete : _RealityViewCameraModel@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for _RealityViewCameraModel.makeTaskComplete : _RealityViewCameraModel(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for EnvironmentValues.allowedDynamicRange : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, &v5 - v3, &_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR);
  return EnvironmentValues.allowedDynamicRange.setter();
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI18CoveragePointCloudVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI18CoveragePointCloudVGMR, type metadata accessor for CoveragePointCloud);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SwiftUI17EntityWithGesture_pGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI17EntityWithGesture_pGMR, &_s7SwiftUI17EntityWithGesture_pMd, &_s7SwiftUI17EntityWithGesture_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC21CoveragePointRendererC08ResourceK033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC21CoveragePointRendererC08ResourceK033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GGMR, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyyyScMYccGMd, &_ss23_ContiguousArrayStorageCyyyScMYccGMR, &_syycMd, &_syycMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC32FullscreenCoveragePointsRendererC08ResourceK033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC32FullscreenCoveragePointsRendererC08ResourceK033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GGMR, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityViewRenderingEffectMode and conformance RealityViewRenderingEffectMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RealityViewRenderingEffectMode and conformance RealityViewRenderingEffectMode;
  if (!lazy protocol witness table cache variable for type RealityViewRenderingEffectMode and conformance RealityViewRenderingEffectMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewRenderingEffectMode and conformance RealityViewRenderingEffectMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityViewDynamicRange and conformance RealityViewDynamicRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RealityViewDynamicRange and conformance RealityViewDynamicRange;
  if (!lazy protocol witness table cache variable for type RealityViewDynamicRange and conformance RealityViewDynamicRange)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewDynamicRange and conformance RealityViewDynamicRange);
  }

  return result;
}

void type metadata completion function for RealityViewCameraContent.Body(uint64_t a1)
{
  type metadata accessor for ()();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        type metadata accessor for StateObject<_RealityViewCameraModel>(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for RealityViewCameraContent.Body(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for RealityViewCameraContent.Body(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v17 = *(v6 + 56);
        v18 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

        v17(v18);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *a1 = a2 - 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata accessor for StateObject<_RealityViewCameraModel>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateObject<_RealityViewCameraModel>)
  {
    type metadata accessor for _RealityViewCameraModel(255);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type _RealityViewCameraModel and conformance _RealityViewCameraModel, type metadata accessor for _RealityViewCameraModel, &protocol conformance descriptor for _RealityViewCameraModel);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateObject<_RealityViewCameraModel>);
    }
  }
}

void type metadata completion function for _RealityViewCameraModel(uint64_t a1)
{
  type metadata accessor for RealityViewCameraContent(319);
  if (v1 <= 0x3F)
  {
    _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for RealityViewCameraContent(uint64_t a1)
{
  type metadata accessor for ARView();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AnchorEntity();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for GeometryProxy?, MEMORY[0x277CDF6E0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for RealityViewCameraContent.ContentStorage(319);
        if (v4 <= 0x3F)
        {
          _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Transaction?, MEMORY[0x277CDF4C0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for RealityViewCamera(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for Entity?, MEMORY[0x277CDB1C8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for RealityViewRenderingEffects(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for RealityViewCameraController(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for RealityViewCameraContent.ContentStorage(uint64_t a1)
{
  type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for SpatialTrackingSession.UnavailableCapabilities?, MEMORY[0x277CDB4E0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for RealityViewCamera(uint64_t a1)
{
  type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for Entity?, MEMORY[0x277CDB1C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CameraControls();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for RealityViewRenderingEffects(uint64_t a1)
{
  result = type metadata accessor for AntialiasingMode();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RealityViewPostProcessEffect(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for RealityViewPostProcessEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for RealityViewPostProcessEffect.Storage(uint64_t a1)
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

void type metadata completion function for _RealityViewImpl(uint64_t a1)
{
  type metadata accessor for ()();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GeometryProxy();
      if (v3 <= 0x3F)
      {
        type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for Environment<CameraControls>, MEMORY[0x277CDB288], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Environment<CameraControlsPublisher>, &type metadata for CameraControlsPublisher, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for (())?(319, &lazy cache variable for type metadata for Environment<UIScene?>, &_sSo7UISceneCSgMd, &_sSo7UISceneCSgMR, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for (())?(319, &lazy cache variable for type metadata for Environment<Image.DynamicRange?>, &_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR, MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for (())?(319, &lazy cache variable for type metadata for Environment<AnyShapeStyle?>, &_s7SwiftUI13AnyShapeStyleVSgMd, &_s7SwiftUI13AnyShapeStyleVSgMR, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Environment<RealityViewLayoutOption>, &type metadata for RealityViewLayoutOption, MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for _RealityViewImpl(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v32 = type metadata accessor for GeometryProxy();
  v6 = *(v32 - 8);
  v33 = v5;
  v31 = *(v6 + 84);
  if (v5 <= v31)
  {
    v5 = *(v6 + 84);
  }

  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(type metadata accessor for CameraControls() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(type metadata accessor for Image.DynamicRange() - 8);
  v11 = *(v10 + 64);
  v12 = *(v4 + 80);
  v13 = *(v4 + 64);
  v14 = *(v6 + 80);
  if (!*(v10 + 84))
  {
    ++v11;
  }

  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_40;
  }

  v15 = *(v8 + 80) & 0xF8 | 7;
  v16 = *(v10 + 80) & 0xF8 | 7;
  v17 = ((v11 + ((v16 + ((v9 + ((v15 + ((*(v6 + 64) + ((v13 + v14 + ((v12 + 32) & ~v12)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v16) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 <= 3)
  {
    v18 = ((a2 - v7 + 255) >> 8) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_40;
      }
    }

    else
    {
      v21 = *&a1[v17];
      if (!v21)
      {
        goto LABEL_40;
      }
    }

LABEL_33:
    v23 = v17 > 3;
    if (v17 <= 3)
    {
      v24 = (v21 - 1) << (8 * v17);
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }

    return v7 + (v30 | v24) + 1;
  }

  if (v20)
  {
    v21 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_33;
    }
  }

LABEL_40:
  if ((v5 & 0x80000000) != 0)
  {
    v26 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12;
    if (v33 == v7)
    {
      v27 = *(v4 + 48);

      return v27(v26);
    }

    else
    {
      v28 = *(v6 + 48);
      v29 = (v26 + v13 + v14) & ~v14;

      return v28(v29, v31, v32);
    }
  }

  else
  {
    v25 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void storeEnumTagSinglePayload for _RealityViewImpl(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v29 = v5;
  v6 = *(v5 + 84);
  v7 = *(type metadata accessor for GeometryProxy() - 8);
  v28 = v6;
  if (v6 <= *(v7 + 84))
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = v6;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(type metadata accessor for CameraControls() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(type metadata accessor for Image.DynamicRange() - 8);
  v13 = *(v12 + 64);
  v14 = *(v5 + 80);
  v15 = *(v5 + 64);
  v16 = *(v7 + 80);
  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = (v18 + ((v11 + ((v17 + ((*(v7 + 64) + ((v15 + v16 + ((v14 + 32) & ~v14)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v18;
  if (!*(v12 + 84))
  {
    ++v13;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  v20 = ((v13 + v19 + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v9 + 255) >> 8) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  if (v9 >= a2)
  {
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_45;
      }

      *(a1 + v20) = 0;
    }

    else if (v23)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

LABEL_45:
      if ((v8 & 0x80000000) != 0)
      {
        v26 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14;
        if (v28 == v9)
        {
          v27 = *(v29 + 56);
        }

        else
        {
          v27 = *(v7 + 56);
          v26 = (v26 + v15 + v16) & ~v16;
        }

        v27(v26);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        *a1 = a2 - 1;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  v24 = ~v9 + a2;
  bzero(a1, v20);
  if (v20 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_33:
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_33;
    }
  }

  if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void type metadata accessor for GeometryProxy?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for (())?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7Combine9PublishedVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void outlined consume of Environment<UIScene?>.Content(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of Environment<RealityViewLayoutOption>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t partial apply for closure #2 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for _RealityViewImpl(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[6];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = ObjectCaptureSession.Updates.Iterator.next();

  return closure #2 in _RealityViewImpl.body.getter(v10, v11, v12, v4 + v9, v6, v7);
}

id partial apply for closure #1 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = *(type metadata accessor for _RealityViewImpl(0, v5, v6, a4) - 8);
  v8 = specialized closure #1 in closure #1 in _RealityViewImpl.body.getter(v4[4], v4 + ((*(v7 + 80) + 40) & ~*(v7 + 80)), v5, v6);

  return v8;
}

uint64_t partial apply for closure #2 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for _RealityViewImpl(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in closure #1 in _RealityViewImpl.body.getter(a1, a2, v4 + v10, v11, v7, v8);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>>, _EnvironmentBackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>>, _EnvironmentBackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>>, _EnvironmentBackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _EnvironmentBackgroundStyleModifier<AnyShapeStyle> and conformance _EnvironmentBackgroundStyleModifier<A>, &_s7SwiftUI35_EnvironmentBackgroundStyleModifierVyAA08AnyShapeE0VGMd, &_s7SwiftUI35_EnvironmentBackgroundStyleModifierVyAA08AnyShapeE0VGMR, MEMORY[0x277CE08B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>>, _EnvironmentBackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMd, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type ViewAdaptor<ARView> and conformance ViewAdaptor<A>, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMd, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMR, &protocol conformance descriptor for ViewAdaptor<A>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA0D5StyleVAA9RectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA0D5StyleVAA9RectangleVGMR, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_138Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for _RealityViewImpl(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = v4 + v8;

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[10], v5);
  v11 = v6[11];
  v12 = type metadata accessor for GeometryProxy();
  (*(*(v12 - 8) + 8))(v4 + v8 + v11, v12);
  swift_weakDestroy();
  v13 = v6[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for CameraControls();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*(v10 + v6[14]));
  outlined consume of Environment<UIScene?>.Content(*(v10 + v6[15]), *(v10 + v6[15] + 8));
  v15 = v6[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for Image.DynamicRange();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v10 + v15, 1, v16))
    {
      (*(v17 + 8))(v10 + v15, v16);
    }
  }

  else
  {
  }

  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*(v10 + v6[17]));
  outlined consume of Environment<RealityViewLayoutOption>.Content(*(v10 + v6[18]), *(v10 + v6[18] + 8));

  return MEMORY[0x2821FE8E8](v4, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | 7);
}

uint64_t partial apply for closure #4 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for _RealityViewImpl(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #4 in closure #1 in _RealityViewImpl.body.getter(a1, v4 + v9, v10, v6, v7);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v12 = MEMORY[0x277D84F90];
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC21FreeformCloudRendererC08ResourceK033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC21FreeformCloudRendererC08ResourceK033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21FreeformCloudRendererC08ResourceH033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21FreeformCloudRendererC08ResourceH033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
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
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI26DynamicScanVolumeEstimatorC12SphereSampleVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI26DynamicScanVolumeEstimatorC12SphereSampleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC16DerivativeRecord33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC16DerivativeRecord33_1B4D605E33761C04C87C5DD249421141LLVGMR);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC11FrameRecord33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC11FrameRecord33_1B4D605E33761C04C87C5DD249421141LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t specialized closure #1 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RealityViewCameraContent(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v16 = *(type metadata accessor for _RealityViewImpl(0, a3, a4, v15) + 44);
  v17 = type metadata accessor for GeometryProxy();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v14, a2 + v16, v17);
  (*(v18 + 56))(v14, 0, 1, v17);
  v19 = a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v14, v19 + *(v9 + 32), &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  swift_weakLoadStrong();
  swift_weakAssign();
  swift_endAccess();

  outlined init with copy of RealityViewCamera(v19, v11, type metadata accessor for RealityViewCameraContent);
  RealityViewCameraContent.makeSettings()();
  outlined destroy of RealityViewCamera(v11, type metadata accessor for RealityViewCameraContent);
  return *v19;
}

uint64_t partial apply for closure #1 in RealityViewCameraContent.ContentStorage.deinit(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #1 in RealityViewCameraContent.ContentStorage.deinit(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in RealityViewCameraContent.renderingEffects.didset()
{
  v1 = *(v0 + 16);
  v2 = ARView.PostProcessContext.realityViewPostProcessContext.read();
  v1(v3);
  return v2(&v5, 0);
}

uint64_t partial apply for closure #2 in RealityViewCameraContent.camera.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #2 in RealityViewCameraContent.camera.didset(a1, v4, v5, v6);
}

uint64_t objectdestroy_147Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in RealityViewCameraContent.camera.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #1 in RealityViewCameraContent.camera.didset(a1, v4, v5, v6);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x277CDB4A8], MEMORY[0x277CDB4B0]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x277CDB4A8], MEMORY[0x277CDB4B8]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x277CDB4C0], MEMORY[0x277CDB4C8]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x277CDB4C0], MEMORY[0x277CDB4D0]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t type metadata completion function for RealityViewCameraConvertible(uint64_t a1)
{
  result = type metadata accessor for ARView();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GeometryProxy();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for RealityViewCameraComponent(uint64_t a1)
{
  type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for GeometryProxy?, MEMORY[0x277CDF6E0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

BOOL specialized static ObjectCaptureSharedSymbols.isNonExistentOrEmptyDirectory(_:)(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v16 = 0;
  v2 = URL.path.getter();
  v3 = MEMORY[0x23EEAF480](v2);

  v4 = [v1 fileExistsAtPath:v3 isDirectory:&v16];

  if ((v4 & 1) == 0)
  {

    return 1;
  }

  if (v16)
  {
    v5 = URL.path.getter();
    v6 = MEMORY[0x23EEAF480](v5);

    v15 = 0;
    v7 = [v1 contentsOfDirectoryAtPath:v6 error:&v15];

    v8 = v15;
    if (v7)
    {
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v8;

      v11 = *(v9 + 16);

      return v11 == 0;
    }

    v13 = v15;
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    return 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for ARFreeformCapturingView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ARFreeformCapturingView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t closure #1 in ARFreeformCapturingView.body.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in closure #1 in ARFreeformCapturingView.body.getter(a1, a2, &v36);
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v34[8] = v44;
  v34[9] = v45;
  v34[10] = v46;
  v34[4] = v40;
  v34[5] = v41;
  v34[6] = v42;
  v34[7] = v43;
  v34[0] = v36;
  v34[1] = v37;
  v33 = v47;
  v35 = v47;
  v34[2] = v38;
  v34[3] = v39;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v22, v20, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAF08FreeformjD0VGAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSg_AEyAEyAF013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA06_FrameV0VGSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAF08FreeformjD0VGAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSg_AEyAEyAF013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA06_FrameV0VGSgtGMR);
  outlined destroy of PerspectiveCameraComponent?(v34, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAF08FreeformjD0VGAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSg_AEyAEyAF013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA06_FrameV0VGSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAF08FreeformjD0VGAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSg_AEyAEyAF013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA06_FrameV0VGSgtGMR);
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v21 = *a2;
  swift_beginAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAA6ZStackVyAA05TupleD0VyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAP08FreeformoD0VGAA21_TraitWritingModifierVyAA010TransitionQ3KeyVGGSg_AOyAOyAP013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA12_FrameLayoutVGSgtGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAA6ZStackVyAA05TupleD0VyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAP08FreeformoD0VGAA21_TraitWritingModifierVyAA010TransitionQ3KeyVGGSg_AOyAOyAP013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA12_FrameLayoutVGSgtGGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v20[0] = *(a2 + 24);
  v10 = swift_allocObject();
  v11 = a2[1];
  *(v10 + 16) = *a2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a2 + 4);
  *a3 = v6;
  *(a3 + 8) = v8;
  v12 = v45;
  *(a3 + 144) = v44;
  *(a3 + 160) = v12;
  *(a3 + 176) = v46;
  *(a3 + 192) = v47;
  v13 = v41;
  *(a3 + 80) = v40;
  *(a3 + 96) = v13;
  v14 = v43;
  *(a3 + 112) = v42;
  *(a3 + 128) = v14;
  v15 = v37;
  *(a3 + 16) = v36;
  *(a3 + 32) = v15;
  v16 = v39;
  *(a3 + 48) = v38;
  *(a3 + 64) = v16;
  v17 = (a3 + *(v9 + 56));
  *v17 = partial apply for closure #2 in closure #1 in ARFreeformCapturingView.body.getter;
  v17[1] = v10;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v21, v19, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
  return outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v20, v19, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
}

uint64_t closure #1 in closure #1 in ARFreeformCapturingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OpacityTransition();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  GeometryProxy.size.getter();
  v14 = v13;
  v50 = a1;
  GeometryProxy.size.getter();
  v16 = v15;
  v101[0] = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter(&v88);

  if (v88 == 1)
  {
    v17 = *(a2 + 16);
    type metadata accessor for DataModel(0);
    _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);

    v62 = ObservedObject.init(wrappedValue:)();
    v56 = v18;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v88);

    v20 = v88;
    if (!v88)
    {
      __break(1u);
      return result;
    }

    if (v16 >= v14)
    {
      v21 = v14;
    }

    else
    {
      v21 = v16;
    }

    v22 = v21 * v17;
    specialized FreeformMiniView.init(model:renderer:)(v88, v100);

    outlined destroy of PerspectiveCameraComponent?(v101, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    outlined destroy of PerspectiveCameraComponent?(v101, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v54 = v100[1];
    v55 = v100[0];
    v52 = v100[3];
    v53 = v100[2];
    v51 = v100[4];
    v60 = v100[6];
    v61 = v100[5];
    v58 = v100[8];
    v59 = v100[7];
    OpacityTransition.init()();
    (*(v7 + 16))(v10, v12, v6);
    _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    *(&v57 + 1) = AnyTransition.init<A>(_:)();
    (*(v7 + 8))(v12, v6);
    *&v57 = 0x4034000000000000;
    v23 = v62;
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(v101, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v23 = 0;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0uLL;
    v22 = 0.0;
  }

  v88 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (v75 == 1)
  {
    type metadata accessor for DataModel(0);
    _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    v24 = ObservedObject.init(wrappedValue:)();
    v26 = v25;
    v27 = static Edge.Set.all.getter();
    GeometryProxy.size.getter();
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v28 = v100[9];
    v29 = v100[10];
    v30 = v100[11];
    v31 = v100[12];
    v32 = v27;
    v33 = v100[13];
    v34 = v100[14];
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(v101, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v24 = 0;
    v26 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
  }

  v35 = v56;
  *&v75 = v23;
  *(&v75 + 1) = v56;
  *&v76 = v22;
  v62 = v23;
  v37 = v54;
  v36 = v55;
  *(&v76 + 1) = v55;
  *&v77 = v54;
  v39 = v52;
  v38 = v53;
  *(&v77 + 1) = v53;
  *&v78 = v52;
  v40 = v51;
  *(&v78 + 1) = v51;
  *&v79 = v61;
  *(&v79 + 1) = v60;
  *&v80 = v59;
  *(&v80 + 1) = v58;
  v81 = v57;
  *&v82 = v24;
  v63 = v75;
  v64 = v76;
  v67 = v79;
  v68 = v80;
  v65 = v77;
  v66 = v78;
  *(&v82 + 1) = v26;
  *&v83 = v32;
  *(&v83 + 1) = v28;
  *&v84 = v29;
  *(&v84 + 1) = v30;
  *&v85 = v31;
  *(&v85 + 1) = v33;
  v86 = v34;
  v69 = v57;
  v70 = v82;
  v74 = v34;
  v72 = v84;
  v73 = v85;
  v71 = v83;
  v41 = v75;
  v42 = v76;
  v43 = v78;
  *(a3 + 32) = v77;
  *(a3 + 48) = v43;
  *a3 = v41;
  *(a3 + 16) = v42;
  v44 = v67;
  v45 = v68;
  v46 = v70;
  *(a3 + 96) = v69;
  *(a3 + 112) = v46;
  *(a3 + 64) = v44;
  *(a3 + 80) = v45;
  v47 = v71;
  v48 = v72;
  v49 = v73;
  *(a3 + 176) = v74;
  *(a3 + 144) = v48;
  *(a3 + 160) = v49;
  *(a3 + 128) = v47;
  v87[0] = v24;
  v87[1] = v26;
  v87[2] = v32;
  v87[3] = v28;
  v87[4] = v29;
  v87[5] = v30;
  v87[6] = v31;
  v87[7] = v33;
  v87[8] = v34;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v75, &v88, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyAD08FreeformhI0VGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyAD08FreeformhI0VGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v82, &v88, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMR);
  outlined destroy of PerspectiveCameraComponent?(v87, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMR);
  *&v88 = v62;
  *(&v88 + 1) = v35;
  v89 = v22;
  v90 = v36;
  v91 = v37;
  v92 = v38;
  v93 = v39;
  v94 = v40;
  v95 = v61;
  v96 = v60;
  v97 = v59;
  v98 = v58;
  v99 = v57;
  return outlined destroy of PerspectiveCameraComponent?(&v88, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyAD08FreeformhI0VGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyAD08FreeformhI0VGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGSgMR);
}

uint64_t closure #2 in closure #1 in ARFreeformCapturingView.body.getter(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t protocol witness for View.body.getter in conformance ARFreeformCapturingView@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 24);
  v8 = *v1;
  v9 = v3;
  v4 = swift_allocObject();
  v5 = v1[1];
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 4);
  *a1 = partial apply for closure #1 in ARFreeformCapturingView.body.getter;
  a1[1] = v4;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v8, v7, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
  return outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v9, v7, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type GeometryReader<SubscriptionView<Published<Bool>.Publisher, ZStack<TupleView<(ModifiedContent<StackableMiniView<FreeformMiniView>, _TraitWritingModifier<TransitionTraitKey>>?, ModifiedContent<ModifiedContent<ARKitCoachingView, _SafeAreaIgnoringLayout>, _FrameLayout>?)>>>> and conformance GeometryReader<A>()
{
  result = lazy protocol witness table cache variable for type GeometryReader<SubscriptionView<Published<Bool>.Publisher, ZStack<TupleView<(ModifiedContent<StackableMiniView<FreeformMiniView>, _TraitWritingModifier<TransitionTraitKey>>?, ModifiedContent<ModifiedContent<ARKitCoachingView, _SafeAreaIgnoringLayout>, _FrameLayout>?)>>>> and conformance GeometryReader<A>;
  if (!lazy protocol witness table cache variable for type GeometryReader<SubscriptionView<Published<Bool>.Publisher, ZStack<TupleView<(ModifiedContent<StackableMiniView<FreeformMiniView>, _TraitWritingModifier<TransitionTraitKey>>?, ModifiedContent<ModifiedContent<ARKitCoachingView, _SafeAreaIgnoringLayout>, _FrameLayout>?)>>>> and conformance GeometryReader<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14GeometryReaderVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAA6ZStackVyAA05TupleF0VyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniF0VyAR08FreeformqF0VGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGSg_AQyAQyAR013ARKitCoachingF0VAA23_SafeAreaIgnoringLayoutVGAA12_FrameLayoutVGSgtGGGGMd, &_s7SwiftUI14GeometryReaderVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAA6ZStackVyAA05TupleF0VyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniF0VyAR08FreeformqF0VGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGSg_AQyAQyAR013ARKitCoachingF0VAA23_SafeAreaIgnoringLayoutVGAA12_FrameLayoutVGSgtGGGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<SubscriptionView<Published<Bool>.Publisher, ZStack<TupleView<(ModifiedContent<StackableMiniView<FreeformMiniView>, _TraitWritingModifier<TransitionTraitKey>>?, ModifiedContent<ModifiedContent<ARKitCoachingView, _SafeAreaIgnoringLayout>, _FrameLayout>?)>>>> and conformance GeometryReader<A>);
  }

  return result;
}

__n128 closure #1 in ObjectSelectionView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = static VerticalAlignment.center.getter();
  closure #1 in closure #1 in ObjectSelectionView.body.getter(a1, v9, a3);
  *&v8[55] = v9[3];
  *&v8[71] = v9[4];
  *&v8[87] = v9[5];
  *&v8[7] = v9[0];
  *&v8[23] = v9[1];
  *&v8[39] = v9[2];
  *(a2 + 81) = *&v8[48];
  *(a2 + 97) = *&v8[64];
  *(a2 + 113) = *&v8[80];
  result = *v8;
  *(a2 + 33) = *v8;
  *(a2 + 49) = *&v8[16];
  v8[103] = v10;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 129) = *&v8[96];
  *(a2 + 65) = *&v8[32];
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  return result;
}

double closure #1 in closure #1 in ObjectSelectionView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = a3 * 0.9;
  v5 = *(a1 + 32);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 56) = v8;
  result = *&v9;
  *(a2 + 72) = v9;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  return result;
}

__n128 protocol witness for View.body.getter in conformance ObjectSelectionView@<Q0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v4;
  v12 = *(v2 + 32);
  if (*(&v4 + 1) >= *&v4)
  {
    v5 = *&v4;
  }

  else
  {
    v5 = *(&v4 + 1);
  }

  v6 = static HorizontalAlignment.center.getter();
  closure #1 in ObjectSelectionView.body.getter(v11, v9, v5);
  *&v8[119] = v9[7];
  *&v8[103] = v9[6];
  *&v8[55] = v9[3];
  *&v8[39] = v9[2];
  *&v8[135] = v10[0];
  *&v8[144] = *(v10 + 9);
  *&v8[71] = v9[4];
  *&v8[87] = v9[5];
  *&v8[7] = v9[0];
  *&v8[23] = v9[1];
  *(a2 + 113) = *&v8[96];
  *(a2 + 129) = *&v8[112];
  *(a2 + 145) = *&v8[128];
  *(a2 + 161) = *&v8[144];
  *(a2 + 49) = *&v8[32];
  *(a2 + 65) = *&v8[48];
  *(a2 + 81) = *&v8[64];
  *(a2 + 97) = *&v8[80];
  result = *v8;
  *(a2 + 17) = *v8;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 33) = *&v8[16];
  return result;
}

uint64_t ReticleView.Corner.segments.getter(unsigned __int8 a1, double a2)
{
  v3 = a2 * 0.42 + 0.08;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI7Segment33_E7C53F01232C1BC4E49961BE0A29AB82LLVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI7Segment33_E7C53F01232C1BC4E49961BE0A29AB82LLVGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_23B91A6D0;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      *(result + 32) = v3;
      *(result + 40) = xmmword_23B922330;
      v3 = 1.0 - v3;
      *(result + 56) = xmmword_23B922330;
    }

    else
    {
      *(result + 32) = 0x3FF0000000000000;
      *(result + 40) = 1.0 - v3;
      __asm { FMOV            V1.2D, #1.0 }

      *(result + 48) = _Q1;
      *(result + 64) = 1.0 - v3;
      v3 = 1.0;
    }
  }

  else if (a1)
  {
    *(result + 32) = 1.0 - v3;
    *(result + 40) = xmmword_23B91C510;
    *(result + 56) = xmmword_23B91C510;
  }

  else
  {
    *(result + 32) = 0;
    *(result + 40) = v3;
    *(result + 64) = v3;
    v3 = 0.0;
    *(result + 48) = 0;
    *(result + 56) = 0;
  }

  *(result + 72) = v3;
  return result;
}

void closure #1 in ReticleView.Corner.path(in:)(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  v13 = ReticleView.Corner.segments.getter(a7, a1);
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = *(v13 + 32);

  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  Width = CGRectGetWidth(v28);
  v16 = ReticleView.Corner.segments.getter(a7, a1);
  if (!*(v16 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = *(v16 + 40);

  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  Height = CGRectGetHeight(v29);
  if (*(ReticleView.Corner.segments.getter(a7, a1) + 16) < 2uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetWidth(v30);
  if (*(ReticleView.Corner.segments.getter(a7, a1) + 16) < 2uLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetHeight(v31);
  v18 = ReticleView.Corner.segments.getter(a7, a1);
  if (*(v18 + 16) < 3uLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = Width;
  v26 = v14;
  v19 = *(v18 + 64);

  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  v20 = CGRectGetWidth(v32);
  v21 = ReticleView.Corner.segments.getter(a7, a1);
  if (*(v21 + 16) >= 3uLL)
  {
    *&v24 = v19 * v20;
    v22 = *(v21 + 72);

    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    *&v23 = v22 * CGRectGetHeight(v33);
    Path.move(to:)(__PAIR128__(v17 * Height, v26 * v25));
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = a4;
    v34.size.height = a5;
    CGRectGetWidth(v34);
    Path.addArc(tangent1End:tangent2End:radius:transform:)();
    Path.addLine(to:)(__PAIR128__(v23, v24));
    return;
  }

LABEL_13:
  __break(1u);
}

double protocol witness for Shape.path(in:) in conformance ReticleView.Corner@<D0>(uint64_t a1@<X8>)
{
  Path.init(_:)();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance ReticleView.Corner@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}