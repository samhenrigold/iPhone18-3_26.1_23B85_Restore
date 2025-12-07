char *_s19_RealityKit_SwiftUI13TubeGeneratorC28generateLocalCylinderIndices33_4582A7B2C0DC7AC017F89A273C982EDDLL14circleTemplateSays6UInt32VGSays5SIMD4VySfGG_tFZSo16CameraPathVertexV_Tt0g5(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *(a1 + 16);
  v7 = 0x4000000000000001;
  if (v6 + 0x4000000000000001 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v4, 1, a4);
    goto LABEL_17;
  }

  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2 * v6 + 3, 0, MEMORY[0x277D84F90]);
  if (!v6)
  {
    goto LABEL_23;
  }

  a4 = v8;
  v9 = 0;
  do
  {
    if (v6 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v5 = v10 + v6;
    if (__OFADD__(v10, v6))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    v7 = HIDWORD(v5);
    if (HIDWORD(v5))
    {
      goto LABEL_20;
    }

    v12 = *(a4 + 2);
    v11 = *(a4 + 3);
    v4 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, a4);
    }

    *(a4 + 2) = v4;
    *&a4[4 * v12 + 32] = v5;
    v7 = HIDWORD(v10);
    if (HIDWORD(v10))
    {
      goto LABEL_21;
    }

    v13 = *(a4 + 3);
    if ((v12 + 2) > (v13 >> 1))
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v12 + 2, 1, a4);
    }

    ++v9;
    *(a4 + 2) = v12 + 2;
    v7 = &a4[4 * v4];
    *(v7 + 32) = v10;
  }

  while (v6 + 1 != v9);
  v5 = *(a4 + 2);
  v7 = *(a4 + 3);
  v4 = v5 + 1;
  if (v5 >= v7 >> 1)
  {
    goto LABEL_24;
  }

LABEL_17:
  *(a4 + 2) = v4;
  *&a4[4 * v5 + 32] = -1;
  return a4;
}

void specialized TubeGenerator.generateMesh(for:vertices:indices:)(uint64_t result, float32x4_t *a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(result + 16);
  if (v6 >= 2)
  {
    v7 = *(v5 + 16);
    v8 = *(v7 + 16);
    v9 = v6 * v8;
    if ((v6 * v8) >> 64 == (v6 * v8) >> 63)
    {
      if (v9 < 0)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (HIDWORD(v9))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v9 > a3)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v10 = *(*(v5 + 24) + 16);
      v11 = v10 * (v6 - 1);
      if ((v10 * (v6 - 1)) >> 64 != v11 >> 63)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v11 < 0)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (HIDWORD(v11))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v11 > a5)
      {
LABEL_31:
        __break(1u);
        return;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of specialized TubeGenerator.generateMesh(for:vertices:indices:));
      v15 = v14;
      v16 = 0;
      v17 = *(v7 + 16);
      v42 = result;
      v18 = result + 32;
      while (1)
      {
        v29 = v16 * v17;
        if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
        {
          break;
        }

        v30 = (v18 + (v16 << 6));
        v48 = v30[1];
        v31 = v30[2].i32[0];
        v50 = v30[3];
        v47 = v15;
        Transform.init()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23B91A6D0;
        *(inited + 32) = v31;
        *(inited + 36) = v31;
        *(inited + 40) = v31;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
        swift_setDeallocating();
        specialized static TubeGenerator.createOrthonormalFrame(forward:up:)(v48, v47);
        v49 = v33;
        *v34.i64 = simd_matrix4x4(v33);
        v51 = v34;
        v52 = v35;
        v53 = v36;
        v54 = v37;
        simd_float4x4.scale(_:)();
        SIMD4<>._xyz.getter();
        SIMD4<>._xyz.setter();
        if (v17)
        {
          if (v17 > *(v7 + 16))
          {
            goto LABEL_23;
          }

          v38 = 0;
          while (!__OFADD__(v29, v38))
          {
            v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(v7 + 32 + 16 * v38))), v52, *(v7 + 32 + 16 * v38), 1), v53, *(v7 + 32 + 16 * v38), 2), v54, *(v7 + 32 + 16 * v38), 3);
            v39.i32[3] = 1.0;
            v40 = &a2[4 * (v29 + v38)];
            *v40 = v39;
            ++v38;
            v40[1].i64[0] = 0;
            v40[1].i64[1] = 0;
            v40[2] = v50;
            v40[3].i32[0] = 0;
            if (v17 == v38)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          break;
        }

LABEL_11:
        ++v16;
        v19 = vmulq_f32(v49, xmmword_23B91C020);
        v20 = vnegq_f32(v19);
        v21 = vtrn2q_s32(v19, vtrn1q_s32(v19, v20));
        v22 = vmlaq_f32(vextq_s8(v19, v20, 8uLL), 0, vextq_s8(v21, v21, 8uLL));
        v23 = vrev64q_s32(v19);
        v23.i32[0] = v20.i32[1];
        v23.i32[3] = v20.i32[2];
        v24 = vmlaq_f32(v22, 0, v23);
        v25 = vnegq_f32(v24);
        v26 = vtrn2q_s32(v24, vtrn1q_s32(v24, v25));
        v27 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v24, v25, 8uLL), *v49.f32, 1), vextq_s8(v26, v26, 8uLL), v49.f32[0]);
        v28 = vrev64q_s32(v24);
        v28.i32[0] = v25.i32[1];
        v28.i32[3] = v25.i32[2];
        v15 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v24, v49, 3), v28, v49, 2), v27);
        v15.i32[3] = v46;
        if (v16 == v6)
        {
          specialized TubeGenerator.generateIndexBuffer(_:for:)(a4, a5, v42);
          specialized TubeGenerator.computeNormals(numPoints:vertices:indices:)(v6, a2, a3, v41);
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }
}

uint64_t specialized TubeGenerator.generateIndexBuffer(_:for:)(uint64_t result, int64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4 < 2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = v4 - 1;
  v6 = *(v3 + 24);
  v7 = *(v6 + 16);
  if ((v5 * v7) >> 64 != (v5 * v7) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 * v7 <= a2)
  {
    v8 = 0;
    v9 = *(*(v3 + 16) + 16);
    v10 = v6 + 32;
    while (v8 != v5)
    {
      v11 = v8 * v9;
      if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
      {
        goto LABEL_24;
      }

      v12 = v8 * v7;
      if ((v8 * v7) >> 64 != (v8 * v7) >> 63)
      {
        goto LABEL_25;
      }

      if (v7)
      {
        v13 = 0;
        while (1)
        {
          v14 = *(v10 + 4 * v13);
          if (v14 != -1)
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_20;
            }

            if (HIDWORD(v11))
            {
              goto LABEL_21;
            }

            v15 = __CFADD__(v14, v11);
            v14 += v11;
            if (v15)
            {
              goto LABEL_22;
            }
          }

          v16 = v13 + v12;
          if (__OFADD__(v13, v12))
          {
            break;
          }

          ++v13;
          *(result + 4 * v16) = v14;
          if (v7 == v13)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        break;
      }

LABEL_5:
      if (++v8 == v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
  return result;
}

Swift::Void __swiftcall CameraPathManager.addShot(_:t:)(simd_float4x4 *_, Swift::Double t)
{
  v23 = v5;
  v24 = v6;
  v10 = static CameraPathManager.nextId;
  if (__OFADD__(static CameraPathManager.nextId, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = v8;
    v22 = *&t;
    v25 = v7;
    ++static CameraPathManager.nextId;
    v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
    swift_beginAccess();
    v2 = *(v3 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v4) = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  *(v3 + v4) = v2;
LABEL_3:
  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  v14 = v25;
  if (v13 >= v12 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v2);
    v14 = v25;
    v2 = v21;
  }

  *(v2 + 2) = v13 + 1;
  v15 = &v2[96 * v13];
  *(v15 + 4) = v10;
  *(v15 + 3) = v22;
  *(v15 + 4) = v23;
  *(v15 + 5) = v24;
  *(v15 + 6) = v14;
  *(v15 + 14) = v9;
  v15[120] = 1;
  *(v3 + v4) = v2;
  swift_endAccess();
  v16 = v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_cameraPosesBoundingBox;
  swift_beginAccess();
  if (*(v16 + 32))
  {
    BoundingBox.init(min:max:)();
    *v16 = v17;
    *(v16 + 16) = v18;
    *(v16 + 32) = 0;
  }

  else
  {
    v19 = CameraPathManager.cameraPosesBoundingBox.modify(v26);
    if ((*(v20 + 32) & 1) == 0)
    {
      BoundingBox.formUnion(_:)();
    }

    (v19)(v26, 0);
  }
}

uint64_t CameraPathManager.computeCurveFromShots()()
{
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
  swift_beginAccess();
  if (*(*(v0 + v4) + 16) < 3uLL)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CameraPathManager.computeCurveFromShots());
  v31 = v5;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of CameraPathManager.computeCurveFromShots());
  v30 = v6;
  v32 = *(v0 + v4);
  v7 = *(v32 + 16);
  if (!v7)
  {
    goto LABEL_14;
  }

  v1 = v7 - 1;
  v2 = (v7 - 1);
  v3 = 1.0;
  v8 = one-time initialization token for logger;

  if (v8 != -1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v3 / v2;
  v10 = type metadata accessor for Logger();
  v11 = MEMORY[0x277D84F90];
  v12 = 0.0;
  for (i = 96; ; i += 96)
  {
    v14 = *(v32 + i);
    HIDWORD(v14) = 0;
    v33 = v14;
    __swift_project_value_buffer(v10, logger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 134218242;
      *(v17 + 4) = v12;
      *(v17 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v29 = i;
      v19 = v1;
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x277D84B08]);
      v20 = SIMD.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v34);

      *(v17 + 14) = v22;
      v1 = v19;
      i = v29;
      _os_log_impl(&dword_23B824000, v15, v16, "Made key: s=%f point: %s", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x23EEB0B70](v18, -1, -1);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    }

    v24 = *(v11 + 2);
    v23 = *(v11 + 3);
    v25 = v33;
    if (v24 >= v23 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v11);
      v25 = v33;
      v11 = v27;
    }

    *(v11 + 2) = v24 + 1;
    v26 = &v11[64 * v24];
    *(v26 + 8) = 2;
    *(v26 + 9) = v12;
    *(v26 + 3) = v25;
    *(v26 + 4) = v31;
    *(v26 + 5) = v30;
    if (!v1)
    {
      break;
    }

    v12 = v9 + v12;
    --v1;
  }

LABEL_14:
  type metadata accessor for OS_geom_interpolating_curve_3f();
  return OS_geom_interpolating_curve_3f.init(keys:arcLengthParameterized:)();
}

id CameraPathManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraPathManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CameraPathRenderer.colorScheme.didset(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, v1 + v7, v3);
  lazy protocol witness table accessor for type ColorScheme and conformance ColorScheme();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v8(v6, v2 + v7, v3);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_23B824000, v11, v12, "Switched colorScheme to %s.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x23EEB0B70](v14, -1, -1);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }
  }
}

Swift::Void __swiftcall CameraPathRenderer.update(worldToView:viewToClip:)(simd_float4x4 *worldToView, simd_float4x4 *viewToClip)
{
  v13 = v2;
  v41 = v12;
  v39 = v11;
  v37 = v10;
  v35 = v9;
  v42 = v8;
  v40 = v7;
  v38 = v6;
  v36 = v5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySiGMd, &_s17RealityFoundation6AtomicVySiGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer__nextBufferIndex;
  swift_beginAccess();
  (*(v15 + 16))(v17, v13 + v18, v14);
  Atomic.wrappedValue.getter();
  v20 = *(v15 + 8);
  v19 = v15 + 8;
  v20(v17, v14);
  if (__OFADD__(v44, 1))
  {
    __break(1u);
  }

  else
  {
    v19 = (v44 + 1) % 3;
    v21 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms;
    swift_beginAccess();
    v3 = *(v13 + v21);
    if ((v3 & 0xC000000000000001) == 0)
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v19 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v22 = *(v3 + 8 * v19 + 32);
        swift_unknownObjectRetain();
        goto LABEL_6;
      }

      __break(1u);
LABEL_19:
      swift_once();
      goto LABEL_10;
    }
  }

  v22 = MEMORY[0x23EEAFC40](v19, v3);

LABEL_6:
  v23 = [v22 contents];
  v24 = v22;
  v25 = v36;
  v45.columns[1] = v38;
  *v23 = v36;
  v23[1] = v45.columns[1];
  v45.columns[2] = v40;
  v45.columns[3] = v42;
  v23[2] = v40;
  v23[3] = v45.columns[3];
  v26 = v37;
  v23[4] = v35;
  v23[5] = v26;
  v27 = v41;
  v23[6] = v39;
  v23[7] = v27;
  v45.columns[0] = v25;
  v46 = __invert_f4(v45);
  v28 = vzip1q_s32(v46.columns[0], v46.columns[2]);
  v46.columns[0] = vzip2q_s32(v46.columns[0], v46.columns[2]);
  v46.columns[2] = vzip1q_s32(v46.columns[1], v46.columns[3]);
  v46.columns[1] = vzip2q_s32(v46.columns[1], v46.columns[3]);
  v23[8] = vzip1q_s32(v28, v46.columns[2]);
  v23[9] = vzip2q_s32(v28, v46.columns[2]);
  v23[10] = vzip1q_s32(v46.columns[0], v46.columns[1]);
  v23[11] = vzip2q_s32(v46.columns[0], v46.columns[1]);
  v23[12] = xmmword_23B91E250;
  v23[13] = xmmword_23B91E260;
  v23[14].i32[0] = 1056964608;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers;
  if ((*(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers) & 1) != 0 || (v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots, swift_beginAccess(), *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices) >= *(*(v3 + v30) + 16)))
  {

    goto LABEL_14;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_19;
  }

LABEL_10:
  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, logger);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_23B824000, v32, v33, "Dirtying buffer since shot count changed.", v34, 2u);
    MEMORY[0x23EEB0B70](v34, -1, -1);
  }

  *(v13 + v4) = 1;
LABEL_14:
  v43 = v19;
  swift_beginAccess();
  Atomic.wrappedValue.setter();
  swift_endAccess();
}

void CameraPathRenderer.initRenderPipeline(pixelFormat:)(uint64_t a1)
{
  v2 = v1;
  v60[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "CameraPathRender initializing render pipeline...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device;
  v9 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device);
  if (!v9)
  {
    __break(1u);
  }

  v10 = one-time initialization token for bundle;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v60[0] = 0;
  v11 = [v9 newDefaultLibraryWithBundle:static BaseRenderer.bundle error:v60];
  swift_unknownObjectRelease();
  if (!v11)
  {
    v44 = v60[0];
    v45 = _convertNSErrorToError(_:)();

    swift_willThrow();
    lazy protocol witness table accessor for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error(v46, v47, v48);
    swift_allocError();
    swift_willThrow();
    return;
  }

  v12 = v60[0];
  v13 = MEMORY[0x23EEAF480](0xD000000000000025, 0x800000023B9262A0);
  v14 = [v11 newFunctionWithName_];

  v15 = MEMORY[0x23EEAF480](0xD000000000000023, 0x800000023B9262D0);
  v16 = [v11 newFunctionWithName_];

  v17 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v17 setVertexFunction_];
  [v17 setFragmentFunction_];
  [v17 setDepthAttachmentPixelFormat_];
  v18 = [v17 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript_];

  if (!v19)
  {
    __break(1u);
    goto LABEL_31;
  }

  [v19 setPixelFormat_];

  v20 = [v17 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v21 setBlendingEnabled_];

  v22 = [v17 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v23 setRgbBlendOperation_];

  v24 = [v17 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript_];

  if (!v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v25 setAlphaBlendOperation_];

  v26 = [v17 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript_];

  if (!v27)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v27 setSourceRGBBlendFactor_];

  v28 = [v17 colorAttachments];
  v29 = [v28 objectAtIndexedSubscript_];

  if (!v29)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v29 setSourceAlphaBlendFactor_];

  v30 = [v17 colorAttachments];
  v31 = [v30 objectAtIndexedSubscript_];

  if (!v31)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v31 setDestinationRGBBlendFactor_];

  v32 = [v17 colorAttachments];
  v33 = [v32 objectAtIndexedSubscript_];

  if (!v33)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v33 setDestinationAlphaBlendFactor_];

  v34 = *(v2 + v8);
  if (!v34)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v60[0] = 0;
  v35 = [v34 newRenderPipelineStateWithDescriptor:v17 error:v60];
  v36 = v60[0];
  if (!v35)
  {
    v49 = v60[0];
    v50 = _convertNSErrorToError(_:)();

    v51 = swift_willThrow();
    lazy protocol witness table accessor for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error(v51, v52, v53);
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return;
  }

  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState) = v35;
  v37 = v36;
  swift_unknownObjectRelease();
  v38 = [objc_allocWithZone(MEMORY[0x277CD6D60]) init];
  [v38 setDepthCompareFunction_];
  [v38 setDepthWriteEnabled_];
  v39 = *(v2 + v8);
  if (!v39)
  {
    goto LABEL_39;
  }

  v40 = [v39 newDepthStencilStateWithDescriptor_];
  if (v40)
  {
    *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_depthStencilState) = v40;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_23B824000, v41, v42, "... done initializing CameraPathRenderer render pipeline.", v43, 2u);
      MEMORY[0x23EEB0B70](v43, -1, -1);
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_23B824000, v54, v55, "Can't make depth stencil!", v56, 2u);
      MEMORY[0x23EEB0B70](v56, -1, -1);
    }

    lazy protocol witness table accessor for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error(v57, v58, v59);
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void CameraPathRenderer.initUniformsTripleBuffer()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Initializing uniforms buffers for CameraPathRenderer...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device;
  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device))
  {
    goto LABEL_20;
  }

  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms;
  if (![swift_unknownObjectRetain() newBufferWithLength:240 options:1])
  {
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  swift_beginAccess();
  v8 = swift_unknownObjectRetain();
  MEMORY[0x23EEAF620](v8);
  if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_unknownObjectRelease();
  if (!*(v1 + v6))
  {
    goto LABEL_20;
  }

  if (![swift_unknownObjectRetain() newBufferWithLength:240 options:1])
  {
LABEL_21:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
  swift_beginAccess();
  v9 = swift_unknownObjectRetain();
  MEMORY[0x23EEAF620](v9);
  if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_unknownObjectRelease();
  if (!*(v1 + v6))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (![swift_unknownObjectRetain() newBufferWithLength:240 options:1])
  {
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  swift_beginAccess();
  v10 = swift_unknownObjectRetain();
  MEMORY[0x23EEAF620](v10);
  if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_unknownObjectRelease();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23B824000, v11, v12, "... done Initializing uniforms buffers for CameraPathRenderer.", v13, 2u);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }
}

void CameraPathRenderer.initLineBufferForCameraSpline()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
  swift_beginAccess();
  v4 = *(*&v2[v3] + 16);
  if (v4 < 2)
  {

    return;
  }

  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices) = v4;
  if (!*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device))
  {
    goto LABEL_15;
  }

  if (v4 >> 57)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = [swift_unknownObjectRetain() newBufferWithLength:v4 << 6 options:513];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = v5;
  swift_unknownObjectRelease();
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer) = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7 = [v6 contents];
  v8 = v6;
  v9 = *&v2[v3];
  if (v4 > *(v9 + 16))
  {
    goto LABEL_13;
  }

  v10 = v9 + 96;
  do
  {
    Transform.init(matrix:)();
    HIDWORD(v11) = 1.0;
    *v7 = v11;
    v7 += 4;
    v10 += 96;
    --v4;
  }

  while (v4);
}

void CameraPathRenderer.initTubeBufferForCameraSpline()()
{
  v1 = v0;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v112 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v103 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_53;
  }

  v9 = Strong;
  v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
  swift_beginAccess();
  v11 = *&v9[v10];
  v12 = *(v11 + 16);
  if (v12 < 2)
  {

    return;
  }

  v116 = 10 * v12;
  if ((v12 * 10) >> 64 == (10 * v12) >> 63)
  {
    v111 = v2;
    v13 = one-time initialization token for logger;

    if (v13 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v14 = type metadata accessor for Logger();
  v115 = __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v114 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = v116;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v12;
    _os_log_impl(&dword_23B824000, v15, v16, "Making %ld spline samples for %ld keys...", v18, 0x16u);
    v19 = v18;
    v7 = v114;
    MEMORY[0x23EEB0B70](v19, -1, -1);
  }

  v20 = v116;
  v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0, MEMORY[0x277D84F90]);
  v110 = CameraPathManager.computeCurveFromShots()();
  v21 = v111;
  if (__OFSUB__(v20, 1))
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v20 < 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v104 = v11;
  v105 = v9;
  if (v20)
  {
    v22 = 1.0 / (v20 - 1);
    v24 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_desc + 48);
    v23 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_desc + 52);
    v109 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_desc);
    v25 = v23 - v24;
    v120 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
    swift_beginAccess();
    v27 = 0;
    v119 = (v3 + 16);
    v118 = (v3 + 104);
    v117 = *MEMORY[0x277CDF3D0];
    v28 = (v3 + 8);
    v29.n128_u64[0] = 136315138;
    v108 = v29;
    v29.n128_u64[0] = 134218754;
    v103 = v29;
    v30 = v112;
    v31 = v116;
    do
    {
      v123 = v29;
      v122 = v26;
      v40 = v22 * v27;
      geom_interpolating_curve_evaluate_at_3f();
      v41.n128_u32[3] = v123.n128_u32[3];
      v123 = v41;
      geom_interpolating_curve_evaluate_tangent_at_3f();
      v121 = v42;
      v43 = v42;
      v43.i32[3] = v122.n128_i32[3];
      v122 = v43;
      (*v119)(v7, v1 + v120, v21);
      (*v118)(v30, v117, v21);
      v44 = static ColorScheme.== infix(_:_:)();
      v45 = *v28;
      (*v28)(v30, v21);
      v45(v7, v21);
      v46 = 8;
      if (v44)
      {
        v46 = 4;
      }

      v47 = vmulq_f32(v121, v121);
      v48 = sqrtf(v47.f32[2] + vaddv_f32(*v47.f32));
      if (v48 >= 0.001)
      {
        if (v48 >= 0.0001)
        {
          v50 = *v109;
          if (*v109 >= 0.0001)
          {
            v121 = *&v109[v46];
            v56 = Logger.logObject.getter();
            v57 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v125 = v107;
              *v58 = v103.n128_u32[0];
              *(v58 + 4) = v27;
              *(v58 + 12) = 2048;
              *(v58 + 14) = v40;
              *(v58 + 22) = 2080;
              v124 = v123;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
              v106 = v57;
              lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x277D84B08]);
              v59 = SIMD.description.getter();
              v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v125);

              *(v58 + 24) = v61;
              v30 = v112;
              *(v58 + 32) = 2080;
              v124 = v122;
              v21 = v111;
              v62 = SIMD.description.getter();
              v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v125);

              *(v58 + 34) = v64;
              _os_log_impl(&dword_23B824000, v56, v106, "Sample %ld: s=%f pos=%s tan=%s", v58, 0x2Au);
              v65 = v107;
              swift_arrayDestroy();
              MEMORY[0x23EEB0B70](v65, -1, -1);
              v66 = v58;
              v7 = v114;
              MEMORY[0x23EEB0B70](v66, -1, -1);
            }

            v67 = v113;
            v69 = *(v113 + 2);
            v68 = *(v113 + 3);
            v31 = v116;
            if (v69 >= v68 >> 1)
            {
              v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v113);
            }

            v70 = v121;
            v70.f32[3] = v24 + (v25 * v40);
            *(v67 + 2) = v69 + 1;
            v113 = v67;
            v71 = &v67[64 * v69];
            v29 = v123;
            v26 = v122;
            *(v71 + 2) = v123;
            *(v71 + 3) = v26;
            *(v71 + 16) = v50;
            *(v71 + 5) = v70;
            goto LABEL_15;
          }

          v49 = 2;
        }

        else
        {
          v49 = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13TubeGeneratorC5ErrorOySo16CameraPathVertexV_GMd, &_s19_RealityKit_SwiftUI13TubeGeneratorC5ErrorOySo16CameraPathVertexV_GMR);
        lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type TubeGenerator<CameraPathVertex>.Error and conformance TubeGenerator<A>.Error, &_s19_RealityKit_SwiftUI13TubeGeneratorC5ErrorOySo16CameraPathVertexV_GMd, &_s19_RealityKit_SwiftUI13TubeGeneratorC5ErrorOySo16CameraPathVertexV_GMR, &protocol conformance descriptor for TubeGenerator<A>.Error);
        v51 = swift_allocError();
        *v52 = v49;
        swift_willThrow();
        v53 = v51;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v124.n128_u64[0] = v33;
          *v32 = v108.n128_u32[0];
          v125 = v51;
          v34 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v35 = String.init<A>(describing:)();
          v37 = v1;
          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v124);
          v30 = v112;

          *(v32 + 4) = v38;
          v1 = v37;
          _os_log_impl(&dword_23B824000, v54, v55, "Got exception making CurvePoint: %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v33);
          MEMORY[0x23EEB0B70](v33, -1, -1);
          v39 = v32;
          v21 = v111;
          MEMORY[0x23EEB0B70](v39, -1, -1);
        }

        else
        {
        }

        v7 = v114;
        v31 = v116;
      }

      v29 = v123;
      v26 = v122;
LABEL_15:
      ++v27;
    }

    while (v31 != v27);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13TubeGeneratorCySo16CameraPathVertexVGMd, &_s19_RealityKit_SwiftUI13TubeGeneratorCySo16CameraPathVertexVGMR);
  inited = swift_initStackObject();
  v73 = _s19_RealityKit_SwiftUI13TubeGeneratorC32generateClosedUnitCircleVertices33_4582A7B2C0DC7AC017F89A273C982EDDLL11numSegmentsSays5SIMD4VySfGGSi_tFZSo16CameraPathVertexV_Tt0g5(10);
  *(inited + 16) = v73;
  v77 = _s19_RealityKit_SwiftUI13TubeGeneratorC28generateLocalCylinderIndices33_4582A7B2C0DC7AC017F89A273C982EDDLL14circleTemplateSays6UInt32VGSays5SIMD4VySfGG_tFZSo16CameraPathVertexV_Tt0g5(v73, v74, v75, v76);
  v123.n128_u64[0] = inited;
  *(inited + 24) = v77;
  v78 = *(v113 + 2);
  v79 = *(v73 + 16);
  v80 = v78 * v79;
  if ((v78 * v79) >> 64 != (v78 * v79) >> 63)
  {
    goto LABEL_46;
  }

  if ((v80 & 0x8000000000000000) != 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (HIDWORD(v80))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v81 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeVertices;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeVertices) = v80;
  v82 = v78 - 1;
  v83 = *(v77 + 2);
  v84 = v83 * (v78 - 1);
  if ((v83 * v82) >> 64 != v84 >> 63)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v84 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (HIDWORD(v84))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v85 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeIndices;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeIndices) = v84;
  v86 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device;
  v87 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device);
  if (!v87)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v88 = v80 << 6;

  v89 = [v87 newBufferWithLength:v88 options:513];
  v90 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer) = v89;
  swift_unknownObjectRelease();
  v91 = *(v1 + v86);
  if (!v91)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v92 = *(v1 + v85);
  if ((v92 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_52;
  }

  v93 = [v91 newBufferWithLength:4 * v92 options:513];
  v94 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer) = v93;
  swift_unknownObjectRelease();
  v95 = *(v1 + v90);
  if (!v95)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v96 = [swift_unknownObjectRetain() contents];
  v97 = v95;
  v98 = *(v1 + v94);
  if (v98)
  {
    v99 = *(v1 + v81);
    swift_unknownObjectRetain();

    v100 = v113;

    v101 = [v98 contents];
    v102 = v98;
    specialized TubeGenerator.generateMesh(for:vertices:indices:)(v100, v96, v99, v101, *(v1 + v85));

    return;
  }

LABEL_57:
  __break(1u);
}

void CameraPathRenderer.renderLines(into:renderPassDescriptor:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySiGMd, &_s17RealityFoundation6AtomicVySiGMR);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) == 1)
  {
    v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer;
    if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer))
    {
      v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices;
      if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices) >= 1)
      {
        v12 = v7;
        v13 = [a2 colorAttachments];
        v14 = [v13 objectAtIndexedSubscript_];

        if (v14)
        {
          [v14 setLoadAction_];

          v15 = [a1 renderCommandEncoderWithDescriptor_];
          if (!v15)
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

          if (!*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState))
          {
LABEL_18:
            __break(1u);
            return;
          }

          v16 = v15;
          [v15 setRenderPipelineState_];
          v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer__nextBufferIndex;
          swift_beginAccess();
          (*(v6 + 16))(v9, v2 + v17, v12);
          v18 = v2;
          Atomic.wrappedValue.getter();
          (*(v6 + 8))(v9, v12);
          v19 = v23;
          v20 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms;
          swift_beginAccess();
          v21 = *(v18 + v20);
          if ((v21 & 0xC000000000000001) != 0)
          {

            v22 = MEMORY[0x23EEAFC40](v19, v21);

            goto LABEL_11;
          }

          if ((v19 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v19 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v22 = *(v21 + 8 * v19 + 32);
            swift_unknownObjectRetain();
LABEL_11:
            [v16 setVertexBuffer:v22 offset:0 atIndex:0];
            swift_unknownObjectRelease();
            [v16 setVertexBuffer:*(v18 + v10) offset:0 atIndex:1];
            [v16 drawPrimitives:2 vertexStart:0 vertexCount:*(v18 + v11)];
            [v16 endEncoding];
            swift_unknownObjectRelease();
            return;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_17;
      }
    }
  }
}

void CameraPathRenderer.renderTube(into:renderPassDescriptor:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySiGMd, &_s17RealityFoundation6AtomicVySiGMR);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) == 1)
  {
    v10 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer);
    if (v10)
    {
      v11 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer);
      if (v11)
      {
        if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeVertices) >= 3)
        {
          v29 = v7;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v12 = [a2 colorAttachments];
          v13 = [v12 objectAtIndexedSubscript_];

          if (!v13)
          {
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          [v13 setLoadAction_];

          v14 = [a1 renderCommandEncoderWithDescriptor_];
          if (!v14)
          {
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v25 = v11;
          if (!*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState))
          {
LABEL_26:
            __break(1u);
            return;
          }

          v15 = v14;
          [v14 setRenderPipelineState_];
          [v15 setDepthStencilState_];
          [v15 setFrontFacingWinding_];
          [v15 setCullMode_];
          v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer__nextBufferIndex;
          swift_beginAccess();
          v17 = v29;
          v27 = *(v6 + 16);
          v27(v9, v2 + v16, v29);
          v28 = v2;
          Atomic.wrappedValue.getter();
          v18 = v28;
          v26 = *(v6 + 8);
          v26(v9, v17);
          v19 = v31;
          v20 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms;
          swift_beginAccess();
          v21 = *(v18 + v20);
          if ((v21 & 0xC000000000000001) != 0)
          {

            v22 = MEMORY[0x23EEAFC40](v19, v21);
          }

          else
          {
            if ((v19 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_20;
            }

            if (v19 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_22;
            }

            v22 = *(v21 + 8 * v19 + 32);
            swift_unknownObjectRetain();
          }

          [v15 setVertexBuffer:v22 offset:0 atIndex:{0, v25}];
          swift_unknownObjectRelease();
          [v15 setVertexBuffer:v10 offset:0 atIndex:1];
          v23 = v29;
          v27(v9, v18 + v16, v29);
          Atomic.wrappedValue.getter();
          v18 = v28;
          v26(v9, v23);
          v19 = v30;
          v9 = *(v18 + v20);
          if ((v9 & 0xC000000000000001) == 0)
          {
            if ((v30 & 0x8000000000000000) == 0)
            {
              if (v30 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v24 = *(v9 + 8 * v30 + 32);
                swift_unknownObjectRetain();
LABEL_16:
                [v15 setFragmentBuffer:v24 offset:0 atIndex:{0, v25}];
                swift_unknownObjectRelease();
                [v15 drawIndexedPrimitives:4 indexCount:*(v18 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeIndices) indexType:1 indexBuffer:v25 indexBufferOffset:0];
                [v15 endEncoding];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_20:

          v24 = MEMORY[0x23EEAFC40](v19, v9);

          goto LABEL_16;
        }
      }
    }
  }
}

uint64_t CameraPathRenderer.deinit()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
  v2 = type metadata accessor for ColorScheme();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x23EEB0C40](v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_cameraPathManager);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer__nextBufferIndex;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySiGMd, &_s17RealityFoundation6AtomicVySiGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t CameraPathRenderer.__deallocating_deinit()
{
  CameraPathRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CameraPathRenderer(uint64_t a1)
{
  result = type metadata singleton initialization cache for CameraPathRenderer;
  if (!type metadata singleton initialization cache for CameraPathRenderer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CameraPathRenderer(uint64_t a1)
{
  type metadata accessor for ColorScheme();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Atomic<Int>();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Atomic<Int>()
{
  if (!lazy cache variable for type metadata for Atomic<Int>)
  {
    v0 = type metadata accessor for Atomic();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Atomic<Int>);
    }
  }
}

__n128 __swift_memcpy89_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraPathManager.PoseSample(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraPathManager.PoseSample(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CameraPathRenderer.RenderMode and conformance CameraPathRenderer.RenderMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CameraPathRenderer.RenderMode and conformance CameraPathRenderer.RenderMode;
  if (!lazy protocol witness table cache variable for type CameraPathRenderer.RenderMode and conformance CameraPathRenderer.RenderMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraPathRenderer.RenderMode and conformance CameraPathRenderer.RenderMode);
  }

  return result;
}

void specialized TubeGenerator.computeNormals(numPoints:vertices:indices:)(uint64_t a1, float32x4_t *a2, uint64_t a3, float32x4_t a4)
{
  v5 = *(*(v4 + 16) + 16);
  if (!v5)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (a3 / v5 != a1)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (__OFSUB__(a1, 1))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (a1 - 1 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (a1 != 1)
  {
    v7 = *(v4 + 24);
    v8 = *(v7 + 16);
    v46 = v8 - 3;
    if (v8 < 3)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v9 = 0;
    v52 = v8 - 1;
    v45 = (v7 + 40);
    v47 = a1 - 1;
    v48 = *(*(v4 + 16) + 16);
    v50 = *(v4 + 24);
    while (!__OFADD__(v9, 1))
    {
      v10 = v9 * v5;
      if ((v9 * v5) >> 64 != (v9 * v5) >> 63)
      {
        goto LABEL_44;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      if (HIDWORD(v10))
      {
        goto LABEL_46;
      }

      v49 = v9 + 1;
      if (v52 != 2)
      {
        v11 = v45;
        v12 = v46;
        v13 = 2;
        v51 = v9 * v5;
        while (v12)
        {
          v20 = *(v7 + 16);
          if (v13 - 2 >= v20)
          {
            goto LABEL_37;
          }

          v21 = *(v11 - 2);
          v22 = __CFADD__(v10, v21);
          v23 = (v10 + v21);
          if (v22)
          {
            goto LABEL_38;
          }

          if (v13 > v20)
          {
            goto LABEL_39;
          }

          v24 = *(v11 - 1);
          v22 = __CFADD__(v10, v24);
          v25 = (v10 + v24);
          if (v22)
          {
            goto LABEL_40;
          }

          if (v13 >= v20)
          {
            goto LABEL_41;
          }

          if (__CFADD__(v10, *v11))
          {
            goto LABEL_42;
          }

          v26 = &a2[4 * v23];
          v27 = &a2[4 * v25];
          v28 = &a2[4 * (v10 + *v11)];
          v29 = vsubq_f32(*v27, *v26);
          v30 = vsubq_f32(*v28, *v26);
          v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), vnegq_f32(v29)), v30, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
          v30.i32[0] = vextq_s8(v31, v31, 8uLL).u32[0];
          v30.i32[1] = v31.i32[0];
          *v14.f32 = vmul_f32(*v30.f32, 0x3F0000003F000000);
          v14.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, *v31.i8, 1));
          v32 = vmvnq_s8(vorrq_s8(vcltzq_f32(v14), vcgezq_f32(v14)));
          if (v32.i32[0] + v32.i32[1] + v32.i32[2] >= 1)
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v33 = type metadata accessor for Logger();
            __swift_project_value_buffer(v33, logger);
            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = a2;
              v37 = swift_slowAlloc();
              *v37 = 0;
              _os_log_impl(&dword_23B824000, v34, v35, "Cross product was nan!  Accumulating nothing!", v37, 2u);
              v38 = v37;
              a2 = v36;
              v7 = v50;
              MEMORY[0x23EEB0B70](v38, -1, -1);
            }

            v14 = 0uLL;
            LODWORD(v10) = v51;
          }

          v15 = 1;
          if (v13)
          {
            v15 = -1;
          }

          v16 = vmuls_lane_f32(v15, v14, 2);
          v17 = vmul_n_f32(*v14.f32, v15);
          *v18.f32 = vadd_f32(*v26[1].f32, v17);
          v18.f32[2] = COERCE_FLOAT(v26[1].i64[1]) + v16;
          v18.i32[3] = 0;
          v26[1] = v18;
          *v19.f32 = vadd_f32(v17, *v27[1].f32);
          v19.f32[2] = v16 + COERCE_FLOAT(v27[1].i64[1]);
          v19.i32[3] = 0;
          v27[1] = v19;
          *a4.f32 = vadd_f32(v17, *v28[1].f32);
          a4.f32[2] = v16 + COERCE_FLOAT(v28[1].i64[1]);
          a4.i32[3] = 0;
          v28[1] = a4;
          --v12;
          ++v11;
          if (++v13 == v52)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

LABEL_8:
      v5 = v48;
      v9 = v49;
      if (v49 == v47)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_31:
  v39 = a3;
  if (a3 < 0)
  {
LABEL_52:
    __break(1u);
    return;
  }

  if (a3)
  {
    v40 = a2 + 1;
    do
    {
      v41 = vmulq_f32(*v40, *v40);
      *&v42 = v41.f32[2] + vaddv_f32(*v41.f32);
      *v41.f32 = vrsqrte_f32(v42);
      *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)));
      v43 = vmulq_n_f32(*v40, vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
      v43.i32[3] = a4.i32[3];
      *v40 = v43;
      v40 += 4;
      --v39;
    }

    while (v39);
  }
}

void specialized static TubeGenerator.createOrthonormalFrame(forward:up:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a1);
  if (sqrtf(v2.f32[2] + vaddv_f32(*v2.f32)) <= 0.0001)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = vmulq_f32(a2, a2);
  if (sqrtf(v3.f32[2] + vaddv_f32(*v3.f32)) <= 0.0001)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *&v4 = v2.f32[2] + vaddv_f32(*v2.f32);
  v5 = vrsqrte_f32(v4);
  v6 = vmul_f32(v5, vrsqrts_f32(v4, vmul_f32(v5, v5)));
  v8.columns[2] = vmulq_n_f32(a1, vmul_f32(v6, vrsqrts_f32(v4, vmul_f32(v6, v6))).f32[0]);
  *&v7 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v8.columns[0].f32 = vrsqrte_f32(v7);
  *v8.columns[0].f32 = vmul_f32(*v8.columns[0].f32, vrsqrts_f32(v7, vmul_f32(*v8.columns[0].f32, *v8.columns[0].f32)));
  v8.columns[3] = vmulq_n_f32(a2, vmul_f32(*v8.columns[0].f32, vrsqrts_f32(v7, vmul_f32(*v8.columns[0].f32, *v8.columns[0].f32))).f32[0]);
  v8.columns[0] = vextq_s8(vuzp1q_s32(v8.columns[2], v8.columns[2]), v8.columns[2], 0xCuLL);
  v8.columns[1] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8.columns[3], v8.columns[3]), v8.columns[3], 0xCuLL), vnegq_f32(v8.columns[2])), v8.columns[3], v8.columns[0]);
  v8.columns[3] = vmulq_f32(v8.columns[1], v8.columns[1]);
  if (sqrtf(v8.columns[3].f32[1] + (v8.columns[3].f32[2] + v8.columns[3].f32[0])) < 0.0001)
  {
    v8.columns[1] = vmlaq_f32(vmulq_f32(v8.columns[2], xmmword_23B91A750), xmmword_23B91A760, v8.columns[0]);
  }

  v8.columns[1] = vextq_s8(vuzp1q_s32(v8.columns[1], v8.columns[1]), v8.columns[1], 0xCuLL);
  v8.columns[3] = vmulq_f32(v8.columns[1], v8.columns[1]);
  if (sqrtf(v8.columns[3].f32[2] + vaddv_f32(*v8.columns[3].f32)) < 0.0001)
  {
    v9 = vmlaq_f32(vmulq_f32(v8.columns[2], xmmword_23B91A710), xmmword_23B91A720, v8.columns[0]);
    v8.columns[1] = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  }

  v8.columns[3] = vmulq_f32(v8.columns[1], v8.columns[1]);
  v10 = COERCE_UNSIGNED_INT(v8.columns[3].f32[2] + vaddv_f32(*v8.columns[3].f32));
  *v8.columns[3].f32 = vrsqrte_f32(v10);
  *v8.columns[3].f32 = vmul_f32(*v8.columns[3].f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v8.columns[3].f32, *v8.columns[3].f32)));
  v8.columns[1] = vmulq_n_f32(v8.columns[1], vmul_f32(*v8.columns[3].f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v8.columns[3].f32, *v8.columns[3].f32))).f32[0]);
  v8.columns[0] = vmlaq_f32(vmulq_f32(v8.columns[0], vnegq_f32(v8.columns[1])), v8.columns[2], vextq_s8(vuzp1q_s32(v8.columns[1], v8.columns[1]), v8.columns[1], 0xCuLL));
  v8.columns[3] = vextq_s8(vuzp1q_s32(v8.columns[0], v8.columns[0]), v8.columns[0], 0xCuLL);
  v8.columns[0] = vmulq_f32(v8.columns[0], v8.columns[0]);
  v10.f32[0] = v8.columns[0].f32[1] + (v8.columns[0].f32[2] + v8.columns[0].f32[0]);
  *v8.columns[0].f32 = vrsqrte_f32(v10.u32[0]);
  *v8.columns[0].f32 = vmul_f32(*v8.columns[0].f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v8.columns[0].f32, *v8.columns[0].f32)));
  v10.i32[0] = vmul_f32(*v8.columns[0].f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v8.columns[0].f32, *v8.columns[0].f32))).u32[0];
  *v8.columns[0].f32 = vsub_f32(0, *v8.columns[1].f32);
  v8.columns[0].f32[2] = 0.0 - v8.columns[1].f32[2];
  v8.columns[1] = vmulq_n_f32(v8.columns[3], v10.f32[0]);
  v8.columns[0].i32[3] = 0;
  simd_quaternion(v8);
}

void specialized CameraPathRenderer.render(into:viewport:renderPassDescriptor:)(void *a1, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
      swift_beginAccess();
      if (*(*&v6[v7] + 16) >= 4uLL)
      {
        v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers;
        if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers) == 1)
        {
          v9 = v2;
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v10 = type metadata accessor for Logger();
          __swift_project_value_buffer(v10, logger);
          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&dword_23B824000, v11, v12, "Dirty buffers, recreating cameraSpline resources...", v13, 2u);
            MEMORY[0x23EEB0B70](v13, -1, -1);
          }

          if (*(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderMode) != 1)
          {
            __break(1u);
            return;
          }

          v2 = v9;
          CameraPathRenderer.initLineBufferForCameraSpline()();
          CameraPathRenderer.initTubeBufferForCameraSpline()();
          *(v9 + v8) = 0;
        }

        if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderMode))
        {
          if (*(*&v6[v7] + 16) >= 2uLL)
          {
            CameraPathRenderer.renderTube(into:renderPassDescriptor:)(a1, a2);
          }
        }

        else
        {
          CameraPathRenderer.renderLines(into:renderPassDescriptor:)(a1, a2);
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ColorScheme and conformance ColorScheme()
{
  result = lazy protocol witness table cache variable for type ColorScheme and conformance ColorScheme;
  if (!lazy protocol witness table cache variable for type ColorScheme and conformance ColorScheme)
  {
    type metadata accessor for ColorScheme();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorScheme and conformance ColorScheme);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error;
  if (!lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error;
  if (!lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error);
  }

  return result;
}

unint64_t type metadata accessor for OS_geom_interpolating_curve_3f()
{
  result = lazy cache variable for type metadata for OS_geom_interpolating_curve_3f;
  if (!lazy cache variable for type metadata for OS_geom_interpolating_curve_3f)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_geom_interpolating_curve_3f);
  }

  return result;
}

uint64_t (*static TextComponent.renderBlock.getter())()
{
  swift_beginAccess();
  v0 = static TextComponent.renderBlock;

  return v0;
}

uint64_t static TextComponent.renderBlock.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static TextComponent.renderBlock = a1;
  qword_2819E36E8 = a2;
}

uint64_t (*protocol witness for static TextComponentRender.renderBlock.getter in conformance TextComponent())()
{
  swift_beginAccess();
  v0 = static TextComponent.renderBlock;

  return v0;
}

uint64_t specialized closure #1 in variable initialization expression of static TextComponent.renderBlock(CGContext *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v57 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  MEMORY[0x28223BE20](v71);
  v70 = &v57 - v11;
  v76 = type metadata accessor for AttributedString.Runs.Index();
  v72 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for AttributedString.Runs.Run();
  v64 = *(v77 - 8);
  v13 = MEMORY[0x28223BE20](v77);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v57 - v16;
  v17 = type metadata accessor for AttributedString.Runs();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - v22;
  v74 = type metadata accessor for AttributedString();
  v58 = *(v74 - 8);
  v24 = MEMORY[0x28223BE20](v74);
  v68 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v57 - v26;
  v28 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  AttributedString.init(_:)();
  v73 = v27;
  AttributedString.runs.getter();
  (*(v18 + 16))(v23, v20, v17);
  lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  dispatch thunk of Collection.startIndex.getter();
  (*(v18 + 8))(v20, v17);
  ++v72;
  v66 = (v64 + 4);
  v67 = (v64 + 2);
  v65 = (v58 + 16);
  v63 = *MEMORY[0x277D740C0];
  v62 = *MEMORY[0x277D74068];
  v61 = *MEMORY[0x277D74078];
  v60 = *MEMORY[0x277D740D0];
  v59 = *MEMORY[0x277D741E0];
  for (++v64; ; (*v64)(v15, v77))
  {
    v29 = v75;
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v30 = v76;
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v72)(v29, v30);
    if (v31)
    {
      break;
    }

    v32 = dispatch thunk of Collection.subscript.read();
    v33 = v69;
    v34 = v77;
    (*v67)(v69);
    v32(&v78, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v66)(v15, v33, v34);
    AttributedString.Runs.Run.range.getter();
    (*v65)(v68, v73, v74);
    lazy protocol witness table accessor for type Range<AttributedString.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
    v35 = _NSRange.init<A, B>(_:in:)();
    v37 = v36;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute(v35, v36, v38);
    v39 = AttributedString.Runs.Run.subscript.getter();
    if (v78)
    {
      type metadata accessor for UIColor();

      v42 = UIColor.init(_:)();
      [v28 addAttribute:v63 value:v42 range:{v35, v37, v57}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute(v39, v40, v41);
    v43 = AttributedString.Runs.Run.subscript.getter();
    if (v78)
    {
      type metadata accessor for UIColor();

      v46 = UIColor.init(_:)();
      [v28 addAttribute:v62 value:v46 range:{v35, v37}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute(v43, v44, v45);
    v47 = AttributedString.Runs.Run.subscript.getter();
    if ((v79 & 1) == 0)
    {
      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v28 addAttribute:v61 value:isa range:{v35, v37}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute(v47, v48, v49);
    v51 = AttributedString.Runs.Run.subscript.getter();
    if ((v79 & 1) == 0)
    {
      v54 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v28 addAttribute:v60 value:v54 range:{v35, v37}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute(v51, v52, v53);
    AttributedString.Runs.Run.subscript.getter();
    if ((v79 & 1) == 0)
    {
      v55 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v28 addAttribute:v59 value:v55 range:{v35, v37}];
    }
  }

  outlined destroy of IndexingIterator<AttributedString.Runs>(v23);
  UIGraphicsPushContext(v57);
  [v28 drawInRect_];
  UIGraphicsPopContext();

  return (*(v58 + 8))(v73, v74);
}

unint64_t lazy protocol witness table accessor for type Range<AttributedString.Index> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute);
  }

  return result;
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

uint64_t outlined destroy of IndexingIterator<AttributedString.Runs>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ContinuousShotCircle.addShot(position:)(float32x4_t a1)
{
  specialized static ContinuousShotCircle.ShotData.toUnitVector(position:)(a1);
  if (v2)
  {
    return;
  }

  v6 = static ContinuousShotCircle.ShotData.nextID;
  if (__OFADD__(static ContinuousShotCircle.ShotData.nextID, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v5;
  v3 = v1;
  ++static ContinuousShotCircle.ShotData.nextID;
  if (one-time initialization token for logger != -1)
  {
LABEL_13:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    v20[1] = v6;
    *v10 = 136446210;
    v20[2] = v4;
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_23B824000, v8, v9, "Adding shot: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23EEB0B70](v11, -1, -1);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  swift_beginAccess();
  v15 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    *(v3 + 16) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[16 * v18];
  *(v19 + 4) = v6;
  *(v19 + 5) = v4;
  *(v3 + 16) = v15;
  swift_endAccess();
}

uint64_t ContinuousShotCircle.distancesTo(queryAngle:)(float a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  v4 = __sincosf_stret(a1);
  *(inited + 32) = v4.__cosval;
  *(inited + 36) = v4.__sinval;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_beginAccess();
  v7 = *(v1 + 16);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v28 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v28;
    v10 = vmul_f32(v6, v6);
    v11 = vadd_f32(v10, vdup_lane_s32(v10, 1)).u32[0];
    v12 = sqrtf(vaddv_f32(v10));
    v13 = 40;
    v14 = vrsqrte_f32(v11);
    v15 = vmul_f32(v14, vrsqrts_f32(v11, vmul_f32(v14, v14)));
    v16 = vmul_n_f32(v6, vmul_f32(v15, vrsqrts_f32(v11, vmul_f32(v15, v15))).f32[0]);
    do
    {
      v17 = 0.0;
      if (v12 > 0.0001)
      {
        v18 = *(v7 + v13);
        v19 = vmul_f32(v18, v18);
        if (sqrtf(vaddv_f32(v19)) > 0.0001)
        {
          v20 = vadd_f32(v19, vdup_lane_s32(v19, 1)).u32[0];
          v21 = vrsqrte_f32(v20);
          v22 = vmul_f32(v21, vrsqrts_f32(v20, vmul_f32(v21, v21)));
          v23 = vaddv_f32(vmul_f32(v16, vmul_n_f32(v18, vmul_f32(v22, vrsqrts_f32(v20, vmul_f32(v22, v22))).f32[0])));
          if (v23 <= -1.0)
          {
            v23 = -1.0;
          }

          if (v23 > 1.0)
          {
            v23 = 1.0;
          }

          v17 = acosf(v23);
        }
      }

      v25 = *(v28 + 16);
      v24 = *(v28 + 24);
      if (v25 >= v24 >> 1)
      {
        v26 = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v17 = v26;
      }

      *(v28 + 16) = v25 + 1;
      *(v28 + 4 * v25 + 32) = v17;
      v13 += 16;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t ContinuousShotCircle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double CaptureCircle.Bin.minUpdateRange.getter()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  result = *(v0 + 24) / 100.0;
  *(v0 + 104) = result;
  *(v0 + 112) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CaptureCircle.OccupyCriteria()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CaptureCircle.OccupyCriteria(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CaptureCircle.OccupyCriteria(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CaptureCircle.OccupyCriteria@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CaptureCircle.OccupyCriteria.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CaptureCircle.OccupyCriteria(unint64_t *a1@<X8>)
{
  v2 = 0x800000023B924450;
  v3 = 0x6C6E4F73746F6873;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE900000000000079;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CaptureCircle.OccupyCriteria(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x6C6E4F73746F6873;
  }

  if (v2)
  {
    v4 = 0xE900000000000079;
  }

  else
  {
    v4 = 0x800000023B924450;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x6C6E4F73746F6873;
  }

  if (*a2)
  {
    v6 = 0x800000023B924450;
  }

  else
  {
    v6 = 0xE900000000000079;
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

float one-time initialization function for nearestNeighborThreshRads()
{
  result = specialized static ExperimentSettings.loadCaptureCircleBinShotNeighborThreshDegs(default:)(20.0) * 0.017453;
  static CaptureCircle.nearestNeighborThreshRads = LODWORD(result);
  return result;
}

uint64_t CaptureCircle.init(numBins:binFillAnimDurationSecs:)(uint64_t a1, float a2)
{
  v5 = static CaptureCircle.nextId;
  if (__OFADD__(static CaptureCircle.nextId, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v3;
  v4 = a1;
  ++static CaptureCircle.nextId;
  *(v3 + 16) = v5;
  *(v3 + 24) = specialized static ExperimentSettings.loadCaptureCircleOccupyCriteria(default:)(0) & 1;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0xFFF0000000000000;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 96) = 0;
  *(v3 + 104) = 1;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 1;
  *(v3 + 184) = 0xFFF0000000000000;
  *(v3 + 192) = specialized static ExperimentSettings.loadCaptureCircleVerticalExclusionAngleDegs(default:)(10.0) * 0.017453;
  *(v3 + 200) = xmmword_23B91E580;
  *(v3 + 216) = 0x3FD51EB851EB851FLL;
  type metadata accessor for ContinuousShotCircle();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  *(v7 + 16) = MEMORY[0x277D84F90];
  *(v3 + 72) = v8;
  v9 = v3 + 72;
  *(v9 + 160) = 0;
  *(v9 + 168) = 0;
  *(v9 + 152) = v7;
  *(v9 + 176) = 1;
  *(v9 - 40) = v4;
  *(v9 - 32) = a2;
  if (v4 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  if (!v4)
  {
    return v2;
  }

  if (one-time initialization token for nearestNeighborThreshRads != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v10 = static CaptureCircle.nearestNeighborThreshRads;
  swift_beginAccess();
  type metadata accessor for CaptureCircle.Bin();
  v11 = 0;
  do
  {
    v12 = 6.28318531 / *(v2 + 32);
    v13 = swift_allocObject();
    *(v13 + 32) = v10;
    *(v13 + 36) = 0;
    *(v13 + 40) = 0xFFF0000000000000;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    *(v13 + 72) = 1;
    *(v13 + 80) = 0;
    *(v13 + 88) = 1;
    *(v13 + 92) = 2139095040;
    *(v13 + 96) = 0;
    *(v13 + 104) = 0;
    *(v13 + 112) = 1;
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    MEMORY[0x23EEAF620]();
    if (*((*(v2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v11;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v4 != v11);
  swift_endAccess();
  return v2;
}

char *CaptureCircle.isAnimationFinished.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 72);
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v4 = v19;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EEAFC40](v6, v2);
      }

      else
      {
      }

      v8 = *(v7 + 40);

      v10 = *(v19 + 16);
      v9 = *(v19 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      ++v6;
      *(v19 + 16) = v10 + 1;
      *(v19 + 8 * v10 + 32) = v8;
    }

    while (v3 != v6);
  }

  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = *(v4 + 32);
    v13 = v11 - 1;
    if (v13)
    {
      v14 = (v4 + 40);
      do
      {
        v15 = *v14++;
        v16 = v15;
        if (v12 < v15)
        {
          v12 = v16;
        }

        --v13;
      }

      while (v13);
    }

    v17 = *(v1 + 184);
  }

  else
  {

    v17 = *(v1 + 184);
    v12 = v17;
  }

  v18 = *(v1 + 240) + 0.0;
  if (*(v1 + 248))
  {
    v18 = 0.0;
  }

  return (v18 + v12 + *(v1 + 40) < v17);
}

void CaptureCircle.update(arView:boundingBoxWorld:time:)(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, double a6)
{
  v7 = v6;
  v6[7] = a2;
  v6[8] = a3;
  v6[9] = a4;
  v6[10] = a5;
  v6[11].n128_u8[0] = 0;
  dispatch thunk of ARView.cameraTransform.getter();
  *v12.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v11, v10, v9);
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v47 = v15;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CaptureCircle.cameraPositionInObjectCoordinates(cameraWorld:boundingBoxWorld:));
  v48 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, v16.f32[0]), v42, *v16.f32, 1), v43, v16, 2), v47, v16, 3);
  Transform.init(matrix:)();
  v44 = v18;
  v45 = v17;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of CaptureCircle.cameraPositionInObjectCoordinates(cameraWorld:boundingBoxWorld:));
  *v50.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v44, v45, v19);
  v51 = __invert_f4(v50);
  v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51.columns[0], v48.f32[0]), v51.columns[1], *v48.f32, 1), v51.columns[2], v48, 2), v51.columns[3], v48, 3);
  v21 = v6[12].n128_f32[0];
  v51.columns[0] = vmulq_f32(v20, v20);
  v51.columns[1].f32[0] = v51.columns[0].f32[2] + vaddv_f32(*v51.columns[0].f32);
  *v51.columns[0].f32 = vrsqrte_f32(v51.columns[1].u32[0]);
  *v51.columns[0].f32 = vmul_f32(*v51.columns[0].f32, vrsqrts_f32(v51.columns[1].u32[0], vmul_f32(*v51.columns[0].f32, *v51.columns[0].f32)));
  v46 = v20;
  v49 = vmulq_n_f32(v20, vmul_f32(*v51.columns[0].f32, vrsqrts_f32(v51.columns[1].u32[0], vmul_f32(*v51.columns[0].f32, *v51.columns[0].f32))).f32[0]);
  v22 = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CaptureCircle.update(arView:boundingBoxWorld:time:));
  specialized static MathHelpers.angleBetween(_:_:)(v49, v25, v22, v23, v24);
  if (v26 < v21)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_3:
      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, logger);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_23B824000, v28, v29, "Within vertical exclusion cone, not updating capture circle!", v30, 2u);
        MEMORY[0x23EEB0B70](v30, -1, -1);
      }

      goto LABEL_28;
    }

LABEL_33:
    swift_once();
    goto LABEL_3;
  }

  v31 = atan2f(v46.f32[2], v46.f32[0]);
  v32 = specialized static CaptureCircle.angleToBinIndex(theta:numBins:)(v6[2].n128_i64[0], v31);
  v33 = v32;
  v7[3].n128_u64[0] = v32;
  v7[3].n128_f64[1] = v31;
  if ((v7[6].n128_u8[8] & 1) == 0 && v7[6].n128_u64[0] == v32)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v34 = v7[4].n128_u64[1];
  if ((v34 & 0xC000000000000001) == 0)
  {
    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v33 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(v34 + 8 * v33 + 32);

      if (*(v35 + 72))
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_33;
  }

  v35 = MEMORY[0x23EEAFC40](v33, v34);

  if (*(v35 + 72))
  {
    goto LABEL_13;
  }

LABEL_12:
  if (*(v35 + 88) != 1)
  {
    v40 = *(v35 + 80);
    if (*(v35 + 64) > v31)
    {
      *(v35 + 64) = v31;
      *(v35 + 72) = 0;
    }

    if (v40 >= v31)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v35 + 64) = v31;
  *(v35 + 72) = 0;
LABEL_14:
  *(v35 + 80) = v31;
  *(v35 + 88) = 0;
LABEL_15:
  if (CaptureCircle.updateOccupancy(bin:time:)(v35, a6))
  {
    v7[6].n128_u64[0] = v7[3].n128_u64[0];
    v7[6].n128_u8[8] = 0;
    if (v7[5].n128_u8[8] == 1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, logger);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134349056;
        *(v39 + 4) = v7[3].n128_u64[0];

        _os_log_impl(&dword_23B824000, v37, v38, "Setting first occupied bin to: %{public}ld", v39, 0xCu);
        MEMORY[0x23EEB0B70](v39, -1, -1);
      }

      else
      {
      }

      v7[5].n128_u64[0] = v7[3].n128_u64[0];
      v7[5].n128_u8[8] = 0;
    }
  }

  CaptureCircle.updateCircleCompletionAnimation(t:)(a6);

LABEL_28:
  v7[11].n128_f64[1] = a6;
}

Swift::Void __swiftcall CaptureCircle.onShotTaken(at:cameraTransformWorld:)(Swift::Double at, simd_float4x4 *cameraTransformWorld)
{
  v7 = v2;
  v50 = v3;
  v51 = v4;
  v52 = v5;
  v53 = v6;
  Transform.init(matrix:)();
  if (one-time initialization token for logger != -1)
  {
LABEL_42:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v55.i64[0] = v13;
    *v12 = 134349314;
    *(v12 + 4) = at;
    *(v12 + 12) = 2082;
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v55);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_23B824000, v10, v11, "onShotTaken: timsetamp=%{public}f  cameraWorld is: %{public}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x23EEB0B70](v13, -1, -1);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  if ((*(v7 + 176) & 1) == 0)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CaptureCircle.cameraPositionInObjectCoordinates(cameraWorld:boundingBoxWorld:));
    v54 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, v20.f32[0]), v51, *v20.f32, 1), v52, v20, 2), v53, v20, 3);
    Transform.init(matrix:)();
    v51 = v22;
    v52 = v21;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of CaptureCircle.cameraPositionInObjectCoordinates(cameraWorld:boundingBoxWorld:));
    *v57.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v51, v52, v23);
    v58 = __invert_f4(v57);
    v53 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58.columns[0], v54.f32[0]), v58.columns[1], *v54.f32, 1), v58.columns[2], v54, 2), v58.columns[3], v54, 3);
    v24 = atan2f(v53.f32[2], v53.f32[0]);
    v25 = specialized static CaptureCircle.angleToBinIndex(theta:numBins:)(*(v7 + 32), v24);
    swift_beginAccess();
    v26 = *(v7 + 72);
    if ((v26 & 0xC000000000000001) != 0)
    {

      v27 = MEMORY[0x23EEAFC40](v25, v26);
    }

    else
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v27 = *(v26 + 8 * v25 + 32);
    }

    v28 = *(v27 + 56);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    v31 = v53;
    if (!v29)
    {
      v31.i32[3] = 0;
      v53 = v31;
      *(v27 + 56) = v30;

      *(v7 + 64) = *(v7 + 184);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v56 = v35;
        *v34 = 136446210;
        v55 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>();
        v36 = SIMD.description.getter();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v56);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_23B824000, v32, v33, "Adding shot to capture circle container.  camPosObject: %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x23EEB0B70](v35, -1, -1);
        MEMORY[0x23EEB0B70](v34, -1, -1);
      }

      ContinuousShotCircle.addShot(position:)(v53);
      CaptureCircle.recalculateShotDistances()();
      v26 = *(v7 + 72);
      if (!(v26 >> 62))
      {
        v39 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v39)
        {
          return;
        }

LABEL_19:
        if (v39 < 1)
        {
          __break(1u);
          return;
        }

        v40 = *(v7 + 24);

        v41 = 0;
        at = 0.005;
        while (1)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x23EEAFC40](v41, v26);
          }

          else
          {
            v42 = *(v26 + 8 * v41 + 32);
          }

          v43 = *(v7 + 184);
          v44 = *(v42 + 96);
          if (v40)
          {
            updated = 0.0;
            if ((*(v42 + 72) & 1) == 0 && (*(v42 + 88) & 1) == 0)
            {
              v46 = *(v42 + 80) - *(v42 + 64);
              updated = CaptureCircle.Bin.minUpdateRange.getter();
              if (v46 > updated)
              {
                updated = v46;
              }
            }

            if (updated / *(v42 + 24) < 0.005 || v44 < 2)
            {
              goto LABEL_21;
            }
          }

          else if (v44 < 2)
          {
            goto LABEL_21;
          }

          if ((*(v42 + 36) & 1) == 0)
          {
            *(v42 + 36) = 1;
            *(v42 + 40) = v43;
          }

          v48 = *(v42 + 48);
          v29 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v29)
          {
            __break(1u);
            goto LABEL_42;
          }

          *(v42 + 48) = v49;
          *(v42 + 64) = 0;
          *(v42 + 72) = 1;
          *(v42 + 80) = 0;
          *(v42 + 88) = 1;
LABEL_21:
          ++v41;

          if (v39 == v41)
          {

            return;
          }
        }
      }

LABEL_47:
      v39 = __CocoaSet.count.getter();
      if (!v39)
      {
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_45;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_23B824000, v17, v18, "onShotTaken called when we don't have a bounding box!  Ignoring...", v19, 2u);
    MEMORY[0x23EEB0B70](v19, -1, -1);
  }
}

uint64_t CaptureCircle.updateOccupancy(bin:time:)(uint64_t result, double a2)
{
  v3 = *(result + 96);
  if (*(v2 + 24) == 1)
  {
    v4 = 0.0;
    if ((*(result + 72) & 1) == 0 && (*(result + 88) & 1) == 0)
    {
      v5 = *(result + 80) - *(result + 64);
      v6 = a2;
      v7 = result;
      updated = CaptureCircle.Bin.minUpdateRange.getter();
      result = v7;
      v4 = updated;
      a2 = v6;
      if (v5 > v4)
      {
        v4 = v5;
      }
    }

    if (v4 / *(result + 24) >= 0.005 && v3 >= 2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v3 < 2)
  {
    return 0;
  }

LABEL_13:
  if ((*(result + 36) & 1) == 0)
  {
    *(result + 36) = 1;
    *(result + 40) = a2;
  }

  v10 = *(result + 48);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(result + 48) = v12;
    *(result + 64) = 0;
    v13 = result;
    result = 1;
    *(v13 + 72) = 1;
    *(v13 + 80) = 0;
    *(v13 + 88) = 1;
  }

  return result;
}

void CaptureCircle.updateCircleCompletionAnimation(t:)(double a1)
{
  if (*(v1 + 248) != 1)
  {
    return;
  }

  if (*(v1 + 24) == 1)
  {
    swift_beginAccess();
    v3 = *(v1 + 72);
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_43:
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EEAFC40](v6, v3);
        if (__OFADD__(v6, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      v8 = *(v7 + 36);

      ++v6;
      if ((v8 & 1) == 0)
      {
LABEL_27:

        return;
      }
    }

    if ((*(v1 + 88) & 1) == 0)
    {
      v13 = *(v1 + 72);
      v14 = *(v1 + 80);
      if ((v13 & 0xC000000000000001) != 0)
      {

        v15 = MEMORY[0x23EEAFC40](v14, v13);

LABEL_34:
        v16 = *(v15 + 48);

        if (v16 < 2)
        {
          return;
        }

        goto LABEL_35;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v13 + 8 * v14 + 32);

        goto LABEL_34;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_15:
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  while (v9 != v10)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x23EEAFC40](v10, v3);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      if (__OFADD__(v10, 1))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v12 = *(v11 + 36);

    ++v10;
    if ((v12 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_35:
  v17 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, logger);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134349056;
    *(v21 + 4) = a1;
    _os_log_impl(&dword_23B824000, v19, v20, "Starting circle completion animation at time=%{public}f...", v21, 0xCu);
    MEMORY[0x23EEB0B70](v21, -1, -1);
  }

  *&v22 = a1;
  *(v17 + 232) = (v22 << 32) | 1;
  *(v17 + 240) = 1051260355;
  *(v17 + 248) = 0;
}

void CaptureCircle.recalculateShotDistances()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, v3, v4, "Updating nearest shot distances...", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }

    swift_beginAccess();
    v6 = v1[9];
    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        return;
      }

      goto LABEL_6;
    }

    v7 = __CocoaSet.count.getter();
    if (!v7)
    {
      break;
    }

LABEL_6:
    v1 = v1[28];

    swift_beginAccess();
    v8 = 0;
    v32 = v7;
    while ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x23EEAFC40](v8, v6);
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_38;
      }

LABEL_16:
      v13 = *(v11 + 24);
      v14 = v13;
      v15 = *(v11 + 16) * v14;
      v16 = v13 * 0.5;
      v17 = v15 + v16;
      if (*(v1[2] + 16))
      {
        v18 = ContinuousShotCircle.distancesTo(queryAngle:)(v15 + v16);
        v19 = *(v18 + 16);
        if (!v19)
        {
          goto LABEL_39;
        }

        v20 = *(v18 + 32);
        v21 = v19 - 1;
        if (v21)
        {
          v22 = (v18 + 36);
          do
          {
            v23 = *v22++;
            v24 = v23;
            if (v23 < v20)
            {
              v20 = v24;
            }

            --v21;
          }

          while (v21);
        }
      }

      else
      {
        v20 = INFINITY;
      }

      *(v11 + 92) = v20;
      if (*(v1[2] + 16))
      {
        v25 = *(v11 + 32);
        v26 = ContinuousShotCircle.distancesTo(queryAngle:)(v17);
        v27 = *(v26 + 16);
        if (v27)
        {
          v28 = (v26 + 32);
          v9 = MEMORY[0x277D84F90];
          do
          {
            v31 = *v28;
            if (*v28 <= v25)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
              }

              v30 = *(v9 + 16);
              v29 = *(v9 + 24);
              if (v30 >= v29 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
              }

              *(v9 + 16) = v30 + 1;
              *(v9 + 4 * v30 + 32) = v31;
            }

            ++v28;
            --v27;
          }

          while (v27);
        }

        else
        {
          v9 = MEMORY[0x277D84F90];
        }

        v10 = *(v9 + 16);

        v7 = v32;
      }

      else
      {
        v10 = 0;
      }

      *(v11 + 96) = v10;

      if (v8 == v7)
      {

        return;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v6 + 32 + 8 * v8);

    v12 = __OFADD__(v8++, 1);
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }
}

uint64_t CaptureCircle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type CaptureCircle.OccupyCriteria and conformance CaptureCircle.OccupyCriteria(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CaptureCircle.OccupyCriteria and conformance CaptureCircle.OccupyCriteria;
  if (!lazy protocol witness table cache variable for type CaptureCircle.OccupyCriteria and conformance CaptureCircle.OccupyCriteria)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptureCircle.OccupyCriteria and conformance CaptureCircle.OccupyCriteria);
  }

  return result;
}

void specialized static ContinuousShotCircle.ShotData.toUnitVector(position:)(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  v2 = sqrtf(v1.f32[2] + vaddv_f32(*v1.f32));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static ContinuousShotCircle.ShotData.toUnitVector(position:));
  v4 = vmulq_f32(v3, a1);
  if (((v4.f32[2] + vaddv_f32(*v4.f32)) / v2) >= 0.99995)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23B824000, v7, v8, "Shot is too close to Y-axis, cannot add!", v9, 2u);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    lazy protocol witness table accessor for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error(v10, v11, v12);
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91BFD0;
    *(inited + 32) = vzip1_s32(*a1.f32, *&vextq_s8(a1, a1, 8uLL));
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
    swift_setDeallocating();
  }
}

uint64_t specialized static CaptureCircle.angleToBinIndex(theta:numBins:)(uint64_t result, double a2)
{
    ;
  }

    ;
  }

  v2 = a2 / 6.28318531 * result;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  return v3 & ~(v3 >> 63);
}

unint64_t lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>()
{
  result = lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>;
  if (!lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error;
  if (!lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error;
  if (!lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error);
  }

  return result;
}

uint64_t CaptureModeBoxModel.FactoredScaleEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity;
  type metadata accessor for Entity();
  swift_allocObject();
  *(v0 + v1) = Entity.init()();
  v2 = Entity.init()();

  dispatch thunk of Entity.name.setter();

  HasHierarchy.addChild(_:preservingWorldTransform:)();

  return v2;
}

uint64_t CaptureModeBoxModel.__deallocating_deinit()
{
  if (swift_weakLoadStrong())
  {
    type metadata accessor for CaptureModeBoxModel.FactoredScaleEntity(0);
    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
  }

  swift_unownedRelease();
  swift_weakDestroy();

  outlined destroy of PerspectiveCameraComponent?(v0 + 88, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall CaptureModeBoxModel.enable()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, "Enabling capture box UI...", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  if (*(v1 + 16))
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, v11, v12, "CaptureModeBoxModel::enable() called when the box wasn't disabled... ignoring.", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }
  }

  else
  {
    CaptureModeBoxModel.subscribeToUpdateEvents()();
    v14 = *(v1 + 16);
    *(v1 + 16) = 1;
    CaptureModeBoxModel.performStateTransition(from:to:)(v14, 1u);
  }
}

Swift::Void __swiftcall CaptureModeBoxModel.disable()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, "Disabling capture box UI...", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  CaptureModeBoxModel.unsubscribeFromUpdateEvents()();
  v11 = *(v1 + 16);
  *(v1 + 16) = 0;
  CaptureModeBoxModel.performStateTransition(from:to:)(v11, 0);
}

uint64_t CaptureModeBoxModel.FactoredScaleEntity.__deallocating_deinit(uint64_t a1)
{
  Entity.deinit();

  return swift_deallocClassInstance();
}

__n128 *CaptureModeBoxModel.SquishAnimation.init(targetTransform:translationEntity:scaleEntity:duration:)(unint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, double a6)
{
  v7 = v6;
  v52 = a4;
  v53 = a5;
  v54 = a3;
  v10 = type metadata accessor for AnimationTimingFunction();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v56 = a1;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v59[0] = a2;
  v13 = type metadata accessor for Entity();
  _s10RealityKit6EntityCACSQAAWlTm_1(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D8]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    __break(1u);
  }

  else
  {
    *&v50 = v11;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CaptureModeBoxModel.SquishAnimation.init(targetTransform:translationEntity:scaleEntity:duration:));
    v48 = v14;

    static simd_quatf.identity.getter();
    v16 = v52;
    v15 = v53;
    *(v6 + 48) = v48;
    *(v6 + 64) = v16;
    *(v6 + 80) = v15;
    HasTransform.orientation.getter();
    v53 = v17;
    HasTransform.position.getter();
    v52 = v18;
    static simd_quatf.identity.getter();
    v19 = v53;
    *(v6 + 96) = v54;
    *(v6 + 112) = v19;
    *(v6 + 128) = v52;
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v54.n128_u64[0] = a2;
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v51 = a1;
  v49 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v53.n128_u64[0] = v10;
    v25 = v24;
    v26 = swift_slowAlloc();
    v59[0] = v26;
    *v25 = 136446210;
    v27 = *(v6 + 64);
    v28 = *(v6 + 80);
    v56 = *(v6 + 48);
    v57 = v27;
    v58 = v28;
    v29 = String.init<A>(describing:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v59);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_23B824000, v21, v22, "Squish translationTarget: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x23EEB0B70](v26, -1, -1);
    v10 = v53.n128_u64[0];
    MEMORY[0x23EEB0B70](v25, -1, -1);
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v59[0] = v35;
    *v34 = 136446210;
    v36 = *(v7 + 112);
    v37 = *(v7 + 128);
    v56 = *(v7 + 96);
    v57 = v36;
    v58 = v37;
    v38 = String.init<A>(describing:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v59);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_23B824000, v32, v33, "Squish scaleTarget: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x23EEB0B70](v35, -1, -1);
    MEMORY[0x23EEB0B70](v34, -1, -1);
  }

  v41 = *(v7 + 48);
  v52 = *(v7 + 64);
  v53 = v41;
  v48 = *(v7 + 80);
  v42 = v55;
  static AnimationTimingFunction.easeOut.getter();
  v43 = HasTransform.move(to:relativeTo:duration:timingFunction:)();
  v44 = *(v50 + 8);
  v44(v42, v10);
  *(v7 + 16) = v43;

  v45 = *(v7 + 96);
  v52 = *(v7 + 112);
  v53 = v45;
  v50 = *(v7 + 128);
  HasHierarchy.parent.getter();
  static AnimationTimingFunction.easeOut.getter();
  v46 = HasTransform.move(to:relativeTo:duration:timingFunction:)();

  v44(v42, v10);
  *(v7 + 24) = v46;

  return v7;
}

uint64_t CaptureModeBoxModel.SquishAnimation.stop()()
{
  if (*(v0 + 16))
  {

    dispatch thunk of AnimationPlaybackController.stop()();
  }

  if (*(v0 + 24))
  {

    dispatch thunk of AnimationPlaybackController.stop()();
  }

  *(v0 + 16) = 0;

  *(v0 + 24) = 0;
}

uint64_t CaptureModeBoxModel.SquishAnimation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void CaptureModeBoxModel.startBoxFade(direction:duration:)(char a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (*(v3 + 24))
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_4:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23B824000, v12, v13, "startBoxFade called when already fading.  Ignoring new call...", v14, 2u);
        MEMORY[0x23EEB0B70](v14, -1, -1);
      }

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_4;
  }

  type metadata accessor for RampAnimation();
  v15 = swift_allocObject();
  v16 = a1 & 1;
  *(v15 + 64) = 0xFFF0000000000000;
  *(v15 + 24) = a1 & 1;
  *(v15 + 16) = a2;
  v17 = 1.0;
  if ((a1 & 1) == 0)
  {
    v17 = 0.0;
  }

  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 72) = v17;
  v18 = *(v3 + 128);
  *(v15 + 48) = v18;
  *(v15 + 56) = v18 + a2;
  *(v3 + 24) = v15;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, logger);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_23B824000, v20, v21, "Starting the box fade animation...", v22, 2u);
    MEMORY[0x23EEB0B70](v22, -1, -1);
  }

  if (v16)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.0;
  }

  CaptureModeBoxModel.setFade(fade:)(v23);
}

void CaptureModeBoxModel.performStateTransition(from:to:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (a1 == a2)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_4:
      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, logger);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446466;
        v59 = a1;
        v18 = String.init<A>(describing:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, aBlock);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2082;
        v59 = a1;
        v21 = String.init<A>(describing:)();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, aBlock);

        *(v16 + 14) = v23;
        _os_log_impl(&dword_23B824000, v14, v15, "fromState == toState so punting transition! from=%{public}s toState=%{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEB0B70](v17, -1, -1);
        MEMORY[0x23EEB0B70](v16, -1, -1);
      }

      return;
    }

LABEL_26:
    swift_once();
    goto LABEL_4;
  }

  v54 = v5;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, logger);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  v28 = os_log_type_enabled(v26, v27);
  v53 = v4;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v52 = v25;
    v30 = v29;
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136446466;
    v59 = a1;
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, aBlock);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    v59 = a2;
    v35 = String.init<A>(describing:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, aBlock);

    *(v30 + 14) = v37;
    _os_log_impl(&dword_23B824000, v26, v27, "Switching states:  from=%{public}s toState=%{public}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v31, -1, -1);
    MEMORY[0x23EEB0B70](v30, -1, -1);
  }

  v38 = v54;
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_23B824000, v39, v40, "Entering squished state and requesting disable...", v41, 2u);
        MEMORY[0x23EEB0B70](v41, -1, -1);
      }

      v42 = static OS_dispatch_queue.main.getter();
      v43 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in CaptureModeBoxModel.performStateTransition(from:to:);
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_4;
      v44 = _Block_copy(aBlock);

      v45 = v55;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s10RealityKit6EntityCACSQAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v46 = v57;
      v47 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x23EEAF960](0, v45, v46, v44);
      _Block_release(v44);

      (*(v38 + 8))(v46, v47);
      (*(v56 + 8))(v45, v58);
    }
  }

  else if (a2)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_23B824000, v48, v49, "Attaching boxRootEntity...", v50, 2u);
      MEMORY[0x23EEB0B70](v50, -1, -1);
    }

    swift_weakAssign();
    if (swift_weakLoadStrong())
    {
      swift_unownedRetainStrong();

      DataModel.addToScene(entity:)(v51);
    }
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      type metadata accessor for CaptureModeBoxModel.FactoredScaleEntity(0);
      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    }

    swift_weakAssign();
    CaptureModeBoxModel.clearAnimations()();
  }

  CaptureModeBoxModel.updateCurrentEntityTransform()();
}

uint64_t closure #1 in CaptureModeBoxModel.performStateTransition(from:to:)(uint64_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B824000, v2, v3, "Automatically calling disable since box is squished with nothing left to do...", v4, 2u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CaptureModeBoxModel.disable()();
  }

  return result;
}

uint64_t CaptureModeBoxModel.updateCurrentEntityTransform()()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (v0[13].n128_u8[0])
  {
    return result;
  }

  v2 = v0[1].n128_u8[0];
  if (v2 == 2)
  {
    return result;
  }

  if (v2 == 3)
  {
    v3.n128_u64[0] = specialized static BoundingBoxHelpers.getSquishedBoxBottomTransform(boxWorld:)(v0[9], v0[10], v0[11], v0[12]).n64_u64[0];
    v17 = v3;
    v13 = v5;
    v15 = v4;
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    specialized simd_float4x4.init(translation:rotation:scale:)(v13, v15, v17);
    Transform.init(matrix:)();
    v14 = v7;
    v16 = v6;
    v8 = &outlined read-only object #0 of CaptureModeBoxModel.updateCurrentEntityTransform();
    goto LABEL_10;
  }

  if (v0[2].n128_u64[0])
  {
    __break(1u);
    return result;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    Transform.init(matrix:)();
    v14 = v10;
    v16 = v9;
    v8 = &outlined read-only object #1 of CaptureModeBoxModel.updateCurrentEntityTransform();
LABEL_10:
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v8);
    v12 = v11;
    static simd_quatf.identity.getter();
    specialized simd_float4x4.init(translation:rotation:scale:)(v14, v16, v12);
    type metadata accessor for Entity();
    HasTransform.setTransformMatrix(_:relativeTo:)();
    HasTransform.setScale(_:relativeTo:)();
  }

  return result;
}

void CaptureModeBoxModel.executeSquish(duration:)(double a1)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Execute squish called...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  if (v2[1].n128_u8[0] == 1)
  {
    v2[1].n128_u8[0] = 2;
    CaptureModeBoxModel.performStateTransition(from:to:)(1u, 2u);
    if (v2[13].n128_u8[0])
    {
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_23B824000, oslog, v8, "executeSquish() has nil box to start from!  Ignoring...", v9, 2u);
        MEMORY[0x23EEB0B70](v9, -1, -1);
      }
    }

    else
    {
      v35 = v2[9];
      v31 = v2[10];
      v32 = v2[11];
      v30 = v2[12];
      *&v10 = Transform.init(matrix:)();
      v33 = v11;
      v34 = v10;
      *osloga = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23B91A6D0;
      *(inited + 32) = v34;
      *(inited + 36) = 981668463;
      *(inited + 40) = DWORD2(v34);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
      v37 = v14;
      swift_setDeallocating();
      specialized static BoundingBoxHelpers.getSquishedBoxBottomTransform(boxWorld:)(v35, v31, v32, v30);
      v35.n128_u32[1] = v15;
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_23B91A6D0;
      *(v16 + 32) = __PAIR64__(v35.n128_u32[1], v33);
      *(v16 + 40) = DWORD2(v33);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v16);
      v36 = v17;
      swift_setDeallocating();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v40 = v21;
        *v20 = 136446466;
        v22 = String.init<A>(describing:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v40);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2082;
        v25 = String.init<A>(describing:)();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v40);

        *(v20 + 14) = v27;
        _os_log_impl(&dword_23B824000, v18, v19, "Starting box squish anim from: %{public}s to %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEB0B70](v21, -1, -1);
        MEMORY[0x23EEB0B70](v20, -1, -1);
      }

      v28 = v2[4].n128_u64[0];
      v29 = *(v28 + direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity);
      type metadata accessor for CaptureModeBoxModel.SquishAnimation();
      swift_allocObject();

      v2[2].n128_u64[0] = CaptureModeBoxModel.SquishAnimation.init(targetTransform:translationEntity:scaleEntity:duration:)(v28, v29, v37, *osloga, v36, a1);

      CaptureModeBoxModel.startBoxFade(direction:duration:)(1, a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void CaptureModeBoxModel.clearAnimations()()
{
  if (*(v0 + 32))
  {
    v1 = v0;
    v2 = one-time initialization token for logger;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23B824000, v4, v5, "Stopping a running box squish animation.", v6, 2u);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }

    CaptureModeBoxModel.SquishAnimation.stop()();

    *(v1 + 32) = 0;
  }
}

uint64_t CaptureModeBoxModel.loadModelsAsync()()
{
  type metadata accessor for Entity();
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v0 = static BoundingBoxHelpers.bundle;
  MEMORY[0x23EEAD3D0](0x676E69646E756F42, 0xEF65627543786F42, static BoundingBoxHelpers.bundle);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR, MEMORY[0x277CDABA0]);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  MEMORY[0x23EEAD3D0](0xD000000000000010, 0x800000023B926890, v0);
  swift_allocObject();
  swift_weakInit();
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void closure #2 in CaptureModeBoxModel.loadModelsAsync()(uint64_t *a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "... done loading wire frame box.", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for ModelEntity();
    v6 = HasModel.model.modify();
    v8 = v7;
    v9 = type metadata accessor for ModelComponent();
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_23B91A6F0;
      type metadata accessor for BoundingBoxHelpers();
      static BoundingBoxHelpers.makeBoxMaterial()((v10 + 32));
      ModelComponent.materials.setter();
    }

    v6(v14, 0);
    type metadata accessor for Entity();
    swift_allocObject();
    Entity.init()();
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #2 in CaptureModeBoxModel.loadModelsAsync());
    HasTransform.setScale(_:relativeTo:)();
    HasHierarchy.addChild(_:preservingWorldTransform:)();

    HasHierarchy.addChild(_:preservingWorldTransform:)();
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, v11, v12, "loadModelsAsync failed to bind self!", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }
  }
}

uint64_t closure #4 in CaptureModeBoxModel.loadModelsAsync()(uint64_t *a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "... done loading wire frame plane.", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  type metadata accessor for ModelEntity();
  v6 = HasModel.model.modify();
  v8 = v7;
  v9 = type metadata accessor for ModelComponent();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_23B91A6F0;
    type metadata accessor for BoundingBoxHelpers();
    static BoundingBoxHelpers.makeBoxMaterial()((v10 + 32));
    ModelComponent.materials.setter();
  }

  v6(&v12, 0);
  type metadata accessor for Entity();
  swift_allocObject();
  Entity.init()();
  HasHierarchy.addChild(_:preservingWorldTransform:)();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #4 in CaptureModeBoxModel.loadModelsAsync());
  HasTransform.setScale(_:relativeTo:)();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    HasHierarchy.addChild(_:preservingWorldTransform:)();
  }
}

uint64_t CaptureModeBoxModel.setFade(fade:)(float a1)
{
  v2 = type metadata accessor for __EntityRef();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {

    dispatch thunk of Entity.__coreEntity.getter();

    MEMORY[0x23EEAC640](&v10, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
    (*(v3 + 8))(v5, v2);
    REHierarchicalFadeComponentGetComponentType();
    v7 = REEntityGetOrAddComponentByClass();
    if (a1 >= 0.0 && a1 <= 1.0)
    {
      v8 = v7;
      REHierarchicalFadeComponentSetOpacity();
      MEMORY[0x23EEB00C0](v8);
    }
  }

  return result;
}

void CaptureModeBoxModel.update(deltaTime:)(double a1)
{
  v2 = v1;
  if (swift_weakLoadStrong())
  {

    v4 = *(v1 + 128) + a1;
    *(v1 + 128) = v4;
    if (*(v1 + 24))
    {

      v5 = RampAnimation.update(time:)(v4);
      if (v5 <= 1.0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 1.0;
      }

      if (v5 <= 0.0)
      {
        v6 = 0.0;
      }

      CaptureModeBoxModel.setFade(fade:)((v6 * v6) / ((((v6 * v6) - v5) + ((v6 * v6) - v5)) + 1.0));
    }

    v7 = *(v1 + 32);
    if (v7)
    {
      if (!*(v7 + 16) || !*(v7 + 24))
      {
LABEL_14:
        v9 = *(v2 + 24);
        if (!v9 || *(v9 + 56) < *(v9 + 64))
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v10 = type metadata accessor for Logger();
          __swift_project_value_buffer(v10, logger);
          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&dword_23B824000, v11, v12, "Removing completed fade and squish anims and moving to .squished state.", v13, 2u);
            MEMORY[0x23EEB0B70](v13, -1, -1);
          }

          *(v2 + 24) = 0;

          *(v2 + 32) = 0;

          v14 = *(v2 + 16);
          *(v2 + 16) = 3;

          CaptureModeBoxModel.performStateTransition(from:to:)(v14, 3u);
        }

        return;
      }

      if (dispatch thunk of AnimationPlaybackController.isComplete.getter())
      {
        v8 = dispatch thunk of AnimationPlaybackController.isComplete.getter();

        if ((v8 & 1) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }
  }
}

uint64_t CaptureModeBoxModel.subscribeToUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Subscribing to update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + 48);
  swift_unownedRetainStrong();
  v7 = *(v6 + 16);
  v8 = v7;

  if (v7)
  {
    dispatch thunk of ARView.scene.getter();

    type metadata accessor for SceneEvents.Update();
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    swift_allocObject();
    swift_weakInit();
    Scene.subscribe<A>(to:on:_:)();

    outlined destroy of PerspectiveCameraComponent?(v10, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(v12, v1 + 88);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in CaptureModeBoxModel.subscribeToUpdateEvents()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SceneEvents.Update.deltaTime.getter();
    CaptureModeBoxModel.update(deltaTime:)(v3);
  }

  return result;
}

uint64_t CaptureModeBoxModel.unsubscribeFromUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Unsubscribing from update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of Cancellable?(v1 + 88, &v8);
  if (*(&v9 + 1))
  {
    outlined init with copy of Cancellable(&v8, v7);
    outlined destroy of PerspectiveCameraComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v8, v1 + 88);
  return swift_endAccess();
}

uint64_t type metadata accessor for CaptureModeBoxModel.FactoredScaleEntity(uint64_t a1)
{
  result = type metadata singleton initialization cache for CaptureModeBoxModel.FactoredScaleEntity;
  if (!type metadata singleton initialization cache for CaptureModeBoxModel.FactoredScaleEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CaptureModeBoxModel.State and conformance CaptureModeBoxModel.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CaptureModeBoxModel.State and conformance CaptureModeBoxModel.State;
  if (!lazy protocol witness table cache variable for type CaptureModeBoxModel.State and conformance CaptureModeBoxModel.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptureModeBoxModel.State and conformance CaptureModeBoxModel.State);
  }

  return result;
}

uint64_t outlined init with copy of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized CaptureModeBoxModel.init(model:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xFFF0000000000000;
  swift_weakInit();
  type metadata accessor for CaptureModeBoxModel.FactoredScaleEntity(0);
  v8 = swift_allocObject();
  v9 = direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity;
  type metadata accessor for Entity();
  swift_allocObject();
  *(v8 + v9) = Entity.init()();
  v10 = Entity.init()();

  dispatch thunk of Entity.name.setter();

  HasHierarchy.addChild(_:preservingWorldTransform:)();

  *(v1 + 64) = v10;
  swift_allocObject();
  v11 = Entity.init()();
  v12 = MEMORY[0x277D84FA0];
  *(v1 + 72) = v11;
  *(v1 + 80) = v12;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  v15[0] = 1;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 1;
  type metadata accessor for OS_dispatch_queue();
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v13)
  {
    *(v2 + 48) = a1;
    swift_unownedRetain();
    CaptureModeBoxModel.loadModelsAsync()();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s10RealityKit6EntityCACSQAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id closure #1 in variable initialization expression of static AttributedString.convertBlock(uint64_t a1)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  MEMORY[0x28223BE20](v65);
  v68 = &v52 - v2;
  v3 = type metadata accessor for AttributedString.Runs.Index();
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for AttributedString.Runs.Run();
  v59 = *(v74 - 8);
  v6 = MEMORY[0x28223BE20](v74);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v52 - v8;
  v9 = type metadata accessor for AttributedString.Runs();
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = type metadata accessor for AttributedString();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString();
  v20 = *(v17 + 16);
  v66 = v17 + 16;
  v67 = v16;
  v63 = v20;
  v20(v19, a1, v16);
  v64 = v19;
  v73 = NSAttributedString.init(_:)();
  v69 = a1;
  AttributedString.runs.getter();
  v21 = v61;
  (v61[2])(v15, v11, v9);
  v22 = *(v13 + 44);
  v23 = lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  dispatch thunk of Collection.startIndex.getter();
  (v21[1])(v11, v9);
  ++v71;
  v60 = (v59 + 4);
  v61 = (v59 + 2);
  v53 = *MEMORY[0x277CC49C0];
  v57 = *MEMORY[0x277D74078];
  v56 = *MEMORY[0x277D740D0];
  v55 = *MEMORY[0x277D741E0];
  ++v59;
  v24 = v54;
  v62 = v22;
  v58 = v23;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v25 = v72;
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v71)(v5, v25);
    if (v26)
    {
      break;
    }

    v27 = dispatch thunk of Collection.subscript.read();
    v28 = v70;
    v29 = v74;
    (*v61)(v70);
    v27(&v75, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v60)(v24, v28, v29);
    AttributedString.Runs.Run.range.getter();
    v63(v64, v69, v67);
    lazy protocol witness table accessor for type Range<AttributedString.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
    v30 = _NSRange.init<A, B>(_:in:)();
    v32 = v31;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute(v30, v31, v33);
    v34 = AttributedString.Runs.Run.subscript.getter();
    if (v75)
    {
      v37 = Color.cgColor.getter();
      if (v37)
      {
        v38 = v37;
        countAndFlagsBits = String.init(_:)(v53)._countAndFlagsBits;
        v40 = v5;
        v41 = MEMORY[0x23EEAF480](countAndFlagsBits);

        [v73 addAttribute:v41 value:v38 range:{v30, v32}];

        v5 = v40;
        v24 = v54;
      }

      else
      {
      }
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute(v34, v35, v36);
    v42 = AttributedString.Runs.Run.subscript.getter();
    if ((v76 & 1) == 0)
    {
      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v73 addAttribute:v57 value:isa range:{v30, v32}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute(v42, v43, v44);
    v46 = AttributedString.Runs.Run.subscript.getter();
    if ((v76 & 1) == 0)
    {
      v49 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v73 addAttribute:v56 value:v49 range:{v30, v32}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute(v46, v47, v48);
    AttributedString.Runs.Run.subscript.getter();
    if ((v76 & 1) == 0)
    {
      v50 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v73 addAttribute:v55 value:v50 range:{v30, v32}];
    }

    (*v59)(v24, v74);
  }

  outlined destroy of IndexingIterator<AttributedString.Runs>(v15);
  return v73;
}

uint64_t (*static AttributedString.convertBlock.getter())()
{
  swift_beginAccess();
  v0 = static AttributedString.convertBlock;

  return v0;
}

uint64_t static AttributedString.convertBlock.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static AttributedString.convertBlock = a1;
  qword_2819E4090 = a2;
}

uint64_t (*protocol witness for static AttributedStringConverter.convertBlock.getter in conformance AttributedString())()
{
  swift_beginAccess();
  v0 = static AttributedString.convertBlock;

  return v0;
}

unint64_t type metadata accessor for NSMutableAttributedString()
{
  result = lazy cache variable for type metadata for NSMutableAttributedString;
  if (!lazy cache variable for type metadata for NSMutableAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableAttributedString);
  }

  return result;
}

uint64_t type metadata completion function for CircularBuffer(uint64_t a1)
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

uint64_t CircularBuffer.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t CircularBuffer.__deallocating_deinit()
{
  CircularBuffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for Clamped(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ClosedRange();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Clamped(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = v6 + 2 * ((v6 + *(v4 + 80)) & ~*(v4 + 80));
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
        return (*(v4 + 48))();
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

char *storeEnumTagSinglePayload for Clamped(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64) + 2 * ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80));
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t Model3DAsset.location.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  return outlined init with copy of Model3DLocation(v5 + v3, a1);
}

uint64_t Model3DAsset.location.setter(uint64_t a1)
{
  v3 = type metadata accessor for Model3DLocation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  outlined init with copy of Model3DLocation(v1 + v6, v5);
  v7 = specialized static Model3DLocation.== infix(_:_:)(v5, a1);
  outlined destroy of Model3DLocation(v5);
  if (v7)
  {
    outlined init with copy of Model3DLocation(a1, v5);
    swift_beginAccess();
    outlined assign with take of Model3DLocation(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return outlined destroy of Model3DLocation(a1);
}

uint64_t closure #1 in Model3DAsset.location.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Model3DLocation(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Model3DLocation(a2, v6);
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  outlined assign with take of Model3DLocation(v6, a1 + v7);
  return swift_endAccess();
}

double Model3DAsset._availableAnimations.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for Model3DAsset._availableAnimations : Model3DAsset@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations);

  return result;
}

uint64_t key path setter for Model3DAsset._availableAnimations : Model3DAsset(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t Model3DAsset._selectedAnimation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v3, v7, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  v4 = specialized Model3DAsset.shouldNotifyObservers<A>(_:_:)(v7, a1);
  outlined destroy of PerspectiveCameraComponent?(v7, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v7, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
    swift_beginAccess();
    outlined assign with take of Model3DAsset.EntityAnimation?(v7, v1 + v3);
    swift_endAccess();
  }

  return outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
}

uint64_t closure #1 in Model3DAsset._selectedAnimation.setter(uint64_t a1, uint64_t a2)
{
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a2, v5, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  outlined assign with take of Model3DAsset.EntityAnimation?(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t Model3DAsset.EntityAnimation.path.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void Model3DAsset.EntityAnimation.hash(into:)(uint64_t a1)
{
  MEMORY[0x23EEAFE40](*v1);
  String.hash(into:)();
  if (swift_weakLoadStrong())
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for Entity();
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
    dispatch thunk of Hashable.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int Model3DAsset.EntityAnimation.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](*v0);
  String.hash(into:)();
  if (swift_weakLoadStrong())
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for Entity();
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
    dispatch thunk of Hashable.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Model3DAsset.EntityAnimation(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](*v1);
  String.hash(into:)();
  if (swift_weakLoadStrong())
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for Entity();
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
    dispatch thunk of Hashable.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t key path getter for Model3DAsset.animationPlaybackController : Model3DAsset@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController);
}

uint64_t Model3DAsset.animationPlaybackController.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t Model3DAsset.animationPlaybackController.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController))
  {
    if (a1)
    {
      type metadata accessor for AnimationPlaybackController();
      lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type AnimationPlaybackController and conformance AnimationPlaybackController, MEMORY[0x277CDAF10], MEMORY[0x277CDAF18]);

      v5 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

void *Model3DAsset.availableAnimations.getter()
{
  swift_getKeyPath();
  v6 = v0;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_Tt1g5(*(v1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, (v3 + 4), v2, v1);

  outlined consume of [Model3DAsset.EntityAnimation : AnimationResource].Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t key path getter for Model3DAsset._selectedAnimation : Model3DAsset@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  return outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v3 + v4, a2, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
}

uint64_t Model3DAsset._selectedAnimation.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  return outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v5 + v3, a1, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
}

uint64_t Model3DAsset.selectedAnimation.setter(uint64_t a1)
{
  v2 = v1;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v10, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  Model3DAsset._selectedAnimation.setter(v10);
  swift_getKeyPath();
  v10[0] = v1;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + v4, v9, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  if (v9[2])
  {
    outlined init with take of Model3DAsset.EntityAnimation(v9, v10);
    swift_getKeyPath();
    v9[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations) + 16))
    {

      specialized __RawDictionaryStorage.find<A>(_:)(v10);
      if (v5)
      {

        if (swift_weakLoadStrong())
        {
          swift_getKeyPath();
          v9[0] = v2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController;
          if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController))
          {

            dispatch thunk of AnimationPlaybackController.stop()();
          }

          v7 = Entity.playAnimation(_:transitionDuration:blendLayerOffset:separateAnimatedValue:startsPaused:clock:)();
          Model3DAsset.animationPlaybackController.setter(v7);
          swift_getKeyPath();
          v9[0] = v2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v2 + v6))
          {

            AnimationPlaybackController.hideEntity(isHidden:)(1);
          }
        }
      }

      else
      {
      }
    }

    outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
    return outlined destroy of Model3DAsset.EntityAnimation(v10);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
    return outlined destroy of PerspectiveCameraComponent?(v9, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  }
}

void (*Model3DAsset.selectedAnimation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = v1;
  swift_getKeyPath();
  *(v5 + 32) = v1;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset, &protocol conformance descriptor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + v6, v5, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  return Model3DAsset.selectedAnimation.modify;
}

void Model3DAsset.selectedAnimation.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(*a1, v2 + 32, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
    Model3DAsset.selectedAnimation.setter(v2 + 32);
    outlined destroy of PerspectiveCameraComponent?(v2, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  }

  else
  {
    Model3DAsset.selectedAnimation.setter(*a1);
  }

  free(v2);
}

uint64_t Model3DAsset.__allocating_init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = swift_allocObject();

  return MEMORY[0x2822009F8](Model3DAsset.__allocating_init(named:in:), 0, 0);
}

uint64_t Model3DAsset.__allocating_init(named:in:)()
{
  v2 = v0[3];
  v1 = v0[4];
  *(v1 + 16) = 0;
  type metadata accessor for Model3DLocation(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_0cD00J8ResourceCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation);
  *v3 = 0u;
  v3[1] = 0u;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController) = 0;
  ObservationRegistrar.init()();

  v4 = v0[1];
  v5 = v0[4];

  return v4(v5);
}

uint64_t Model3DAsset.init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  return MEMORY[0x2822009F8](Model3DAsset.init(named:in:), 0, 0);
}

uint64_t Model3DAsset.__allocating_init(url:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = swift_allocObject();

  return MEMORY[0x2822009F8](Model3DAsset.__allocating_init(url:), 0, 0);
}

uint64_t Model3DAsset.__allocating_init(url:)()
{
  v2 = v0[2];
  v1 = v0[3];
  *(v1 + 16) = 0;
  type metadata accessor for Model3DLocation(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_0cD00J8ResourceCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation);
  *v3 = 0u;
  v3[1] = 0u;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController) = 0;
  ObservationRegistrar.init()();
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v2, v4);
  v5 = v0[1];
  v6 = v0[3];

  return v5(v6);
}

uint64_t Model3DAsset.init(url:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](Model3DAsset.init(url:), 0, 0);
}

uint64_t Model3DAsset.deinit()
{

  outlined destroy of Model3DLocation(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location);

  outlined destroy of PerspectiveCameraComponent?(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);

  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Model3DAsset.__deallocating_deinit()
{

  outlined destroy of Model3DLocation(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location);

  outlined destroy of PerspectiveCameraComponent?(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);

  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v3 = MEMORY[0x23EEAFE20](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](*a1);
  String.hash(into:)();
  if (swift_weakLoadStrong())
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for Entity();
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
    dispatch thunk of Hashable.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEAFE40](a2);
  v6 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = *a1;
    while (1)
    {
      outlined init with copy of Model3DAsset.EntityAnimation(*(v6 + 48) + 32 * v5, v15);
      if (v15[0] != v9)
      {
        goto LABEL_5;
      }

      v10 = v15[1] == a1[1] && v15[2] == a1[2];
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_5;
      }

      Strong = swift_weakLoadStrong();
      v12 = swift_weakLoadStrong();
      if (!Strong)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_4;
      }

      type metadata accessor for Entity();
      lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D8]);
      v13 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v13)
      {
LABEL_18:
        outlined destroy of Model3DAsset.EntityAnimation(v15);
        return v5;
      }

LABEL_5:
      outlined destroy of Model3DAsset.EntityAnimation(v15);
      v5 = (v5 + 1) & v8;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (!v12)
    {
      goto LABEL_18;
    }

LABEL_4:

    goto LABEL_5;
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      v11 = *v9;
      v10 = v9[1];
      if (v11 == a1 && v10 == a2)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit6EntityC_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCyyScMYcc_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyyScMYccGMd, &_ss23_ContiguousArrayStorageCyyyScMYccGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a4;
  v16 = a4;
  lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection(a1, a2, a3);

  dispatch thunk of Collection.startIndex.getter();

  if (!a2)
  {
    result = 0;
    v10 = v17;
    goto LABEL_13;
  }

  v14 = a3;
  if (!a3)
  {
LABEL_10:
    v10 = v17;
    result = v14;
LABEL_13:
    *a1 = v16;
    a1[1] = v10;
    return result;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = a3 - 1;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      v10 = v17;
      if (v17 == v15[0])
      {
        break;
      }

      v11 = dispatch thunk of Collection.subscript.read();
      v13 = *v12;

      v11(v15, 0);
      v15[0] = v16;
      dispatch thunk of Collection.index(after:)();
      *(a2 + 8 * v8) = v13;
      if (v9 == v8)
      {
        goto LABEL_10;
      }

      if (__OFADD__(++v8, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    result = v8;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      outlined init with copy of Model3DAsset.EntityAnimation(*(a4 + 48) + ((v12 << 11) | (32 * v17)), v20);
      outlined init with take of Model3DAsset.EntityAnimation(v20, v21);
      outlined init with take of Model3DAsset.EntityAnimation(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 32;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

BOOL specialized static Model3DAsset.EntityAnimation.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  Strong = swift_weakLoadStrong();
  v5 = swift_weakLoadStrong();
  if (!Strong)
  {
    if (!v5)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (!v5)
  {
LABEL_14:

    return 0;
  }

  type metadata accessor for Entity();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D8]);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();

  return (v6 & 1) != 0;
}

uint64_t type metadata accessor for Model3DAsset(uint64_t a1)
{
  result = type metadata singleton initialization cache for Model3DAsset;
  if (!type metadata singleton initialization cache for Model3DAsset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18CHHapticPatternKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18CHHapticPatternKeyaypGMd, &_ss18_DictionaryStorageCySo18CHHapticPatternKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v4, &v11, &_sSo18CHHapticPatternKeya_yptMd, &_sSo18CHHapticPatternKeya_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18CHHapticPatternKeya_SDyADypGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10RealityKit6EntityCTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10RealityKit6EntityCGMd, &_ss18_DictionaryStorageCySi10RealityKit6EntityCGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0H6AnchorVtMd, &_s10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0H6AnchorVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v9, v5, &_s10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0H6AnchorVtMd, &_s10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0H6AnchorVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
      result = outlined init with take of FreeformMeshManager.MeshAnchor(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_0cD00J8ResourceCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV0cD00J8ResourceCGMd, &_ss18_DictionaryStorageCy19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV0cD00J8ResourceCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v4, v11, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_0aB00H8ResourceCtMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_0aB00H8ResourceCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = outlined init with take of Model3DAsset.EntityAnimation(v11, v3[6] + 32 * result);
      *(v3[7] + 8 * v7) = v11[4];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Model3DAsset.EntityAnimation and conformance Model3DAsset.EntityAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Model3DAsset.EntityAnimation and conformance Model3DAsset.EntityAnimation;
  if (!lazy protocol witness table cache variable for type Model3DAsset.EntityAnimation and conformance Model3DAsset.EntityAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Model3DAsset.EntityAnimation and conformance Model3DAsset.EntityAnimation);
  }

  return result;
}

uint64_t type metadata completion function for Model3DAsset(uint64_t a1)
{
  result = type metadata accessor for Model3DLocation(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of Model3DAsset.__allocating_init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 408) + **(v3 + 408));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of Model3DAsset.__allocating_init(named:in:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of Model3DAsset.__allocating_init(url:)(uint64_t a1)
{
  v6 = (*(v1 + 416) + **(v1 + 416));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of Model3DAsset.__allocating_init(url:);

  return v6(a1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t getEnumTagSinglePayload for Model3DAsset.EntityAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Model3DAsset.EntityAnimation(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t outlined assign with take of Model3DLocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Model3DLocation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in Model3DAsset.animationPlaybackController.setter()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController) = *(v0 + 24);
}

uint64_t specialized Model3DAsset.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v8, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a2, v10, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  if (!v9)
  {
    if (!v11)
    {
      outlined destroy of PerspectiveCameraComponent?(v8, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    outlined destroy of PerspectiveCameraComponent?(v8, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSg_AFtMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSg_AFtMR);
    v4 = 1;
    return v4 & 1;
  }

  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v8, v7, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  if (!v11)
  {
    outlined destroy of Model3DAsset.EntityAnimation(v7);
    goto LABEL_7;
  }

  outlined init with take of Model3DAsset.EntityAnimation(v10, v6);
  v3 = specialized static Model3DAsset.EntityAnimation.== infix(_:_:)(v7, v6);
  outlined destroy of Model3DAsset.EntityAnimation(v6);
  outlined destroy of Model3DAsset.EntityAnimation(v7);
  outlined destroy of PerspectiveCameraComponent?(v8, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  v4 = !v3;
  return v4 & 1;
}

uint64_t outlined assign with take of Model3DAsset.EntityAnimation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in Model3DAsset._availableAnimations.setter()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations) = *(v0 + 24);
}

uint64_t type metadata accessor for CoveragePointCloud(uint64_t a1)
{
  result = type metadata singleton initialization cache for CoveragePointCloud;
  if (!type metadata singleton initialization cache for CoveragePointCloud)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CoveragePointCloud(uint64_t a1)
{
  type metadata accessor for ObjectCaptureSession.Frame.PointCloud?(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.PointCloud?, MEMORY[0x282217618]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObjectCaptureSession.Frame.PointCloud?(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.Object?, MEMORY[0x282217600]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ObjectCaptureSession.Frame.PointCloud?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

id one-time initialization function for device()
{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    static CoveragePointCloud.device = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double CoveragePointCloud.bboxWorld.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - v4;
  v6 = *(type metadata accessor for CoveragePointCloud(0) + 20);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v6, v5, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v7 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(v5, 1, v7);
  v11 = MEMORY[0x277D860B8];
  if (v10 == 1)
  {
    v12 = outlined destroy of PerspectiveCameraComponent?(v5, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v13 = *v11;
    v29 = v11[1];
    v30 = v13;
    v14 = v11[2];
    v27 = v11[3];
    v28 = v14;
  }

  else
  {
    ObjectCaptureSession.Frame.Object.transform.getter();
    v29 = v16;
    v30 = v15;
    v27 = v18;
    v28 = v17;
    v12 = (*(v8 + 8))(v5, v7);
  }

  MEMORY[0x28223BE20](v12);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v6, v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v9(v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v7) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v19 = *v11;
  }

  else
  {
    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v25[2] = v21;
    v26 = v20;
    v25[0] = v23;
    v25[1] = v22;
    (*(v8 + 8))(v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v19 = v26;
  }

  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v19.f32[0]), v29, *v19.f32, 1), v28, v19, 2), v27, v19, 3).u64[0];
  return result;
}

Swift::Bool __swiftcall CoveragePointCloud.isValid()()
{
  v1 = *(type metadata accessor for CoveragePointCloud(0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0 + v1, &v39 - v4, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v6 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v7 = *(v6 - 8);
  v44 = *(v7 + 48);
  v8 = v44(v5, 1, v6);
  outlined destroy of PerspectiveCameraComponent?(v5, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v8 != 1)
  {
    v42 = v3;
    v43 = v1;
    v39 = v7;
    v40 = v6;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v9 - 8);
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0, &v39 - v10, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v11 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
    v41 = *(v11 - 8);
    v12 = *(v41 + 48);
    v13 = v12(&v39 - v10, 1, v11);
    v14 = outlined destroy of PerspectiveCameraComponent?(&v39 - v10, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    if (v13 != 1)
    {
      MEMORY[0x28223BE20](v14);
      v16 = &v39 - v10;
      v17 = v0;
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0, &v39 - v10, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
      v15 = v12(&v39 - v10, 1, v11);
      if (v15 == 1)
      {
        __break(1u);
      }

      else
      {
        v18 = v11;
        ObjectCaptureSession.Frame.PointCloud.points.getter();
        v19 = dispatch thunk of OCDataBuffer.count.getter();

        v21 = v42;
        v20 = v43;
        if (v19 < 1)
        {
          goto LABEL_11;
        }

        ObjectCaptureSession.Frame.PointCloud.points.getter();
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v22 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();

        if (!v22)
        {
LABEL_11:
          (*(v41 + 8))(v16, v18);
          LOBYTE(v15) = 0;
          return v15;
        }

        swift_unknownObjectRelease();
        v23 = (*(v41 + 8))(v16, v18);
        MEMORY[0x28223BE20](v23);
        v24 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v17 + v20, v24, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
        v25 = v40;
        v15 = v44(v24, 1, v40);
        if (v15 != 1)
        {
          ObjectCaptureSession.Frame.Object.transform.getter();
          v27 = vextq_s8(v26, v26, 8uLL);
          v29 = vextq_s8(v28, v28, 0xCuLL);
          v30 = vextq_s8(v26, v26, 0xCuLL);
          v31 = vextq_s8(v28, v28, 8uLL);
          v33 = vextq_s8(v28, v28, 4uLL);
          v34 = vextq_s8(v26, v26, 4uLL);
          v36 = vmulq_f32(v35, vmlaq_f32(vmlaq_f32(vmulq_f32(vextq_s8(v32, v32, 8uLL), vmlaq_f32(vmulq_f32(v29, vnegq_f32(v34)), v33, v30)), vmlaq_f32(vmulq_f32(v31, vnegq_f32(v30)), v29, v27), vextq_s8(v32, v32, 4uLL)), vmlaq_f32(vmulq_f32(v33, vnegq_f32(v27)), v31, v34), vextq_s8(v32, v32, 0xCuLL)));
          v32.i64[0] = vextq_s8(v36, v36, 8uLL).u64[0];
          v37 = fabsf(vaddv_f32(vsub_f32(vzip1_s32(*v36.i8, *v32.i8), vzip2_s32(*v36.i8, *v32.i8)))) > 0.001;
          (*(v39 + 8))(v24, v25);
          LOBYTE(v15) = v37;
          return v15;
        }
      }

      __break(1u);
      return v15;
    }
  }

  LOBYTE(v15) = 0;
  return v15;
}

uint64_t Entity.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16GestureComponentVSgMd, &_s17RealityFoundation16GestureComponentVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - v3;
  v5 = type metadata accessor for Entity.ComponentSet();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GestureComponent();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.components.getter();
  Entity.ComponentSet.subscript.getter();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    v15 = &_s17RealityFoundation16GestureComponentVSgMd;
    v16 = &_s17RealityFoundation16GestureComponentVSgMR;
    v17 = v4;
  }

  else
  {
    (*(v10 + 32))(v12, v4, v9);
    v13 = GestureComponent._gesture.getter();
    (*(v10 + 8))(v12, v9);
    v20 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7Gesture_pMd, &_s7SwiftUI7Gesture_pMR);
    if (swift_dynamicCast())
    {
      return outlined init with take of Animation(v18, a1);
    }

    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v15 = &_s7SwiftUI7Gesture_pSgMd;
    v16 = &_s7SwiftUI7Gesture_pSgMR;
    v17 = v18;
  }

  outlined destroy of PerspectiveCameraComponent?(v17, v15, v16);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Entity.gestureResponder.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16GestureComponentVSgMd, &_s17RealityFoundation16GestureComponentVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for Entity.ComponentSet();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GestureComponent();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.components.getter();
  Entity.ComponentSet.subscript.getter();
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v2, &_s17RealityFoundation16GestureComponentVSgMd, &_s17RealityFoundation16GestureComponentVSgMR);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v2, v7);
    v11 = GestureComponent._responder.getter();
    (*(v8 + 8))(v10, v7);
    return v11;
  }

  return result;
}

uint64_t Entity.gestureResponder.setter(uint64_t a1)
{
  specialized Entity.gestureResponder.setter(a1);

  return swift_unknownObjectRelease();
}

uint64_t (*Entity.gestureResponder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Entity.gestureResponder.getter();
  return Entity.gestureResponder.modify;
}

uint64_t Entity.gestureResponder.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = swift_unknownObjectRetain();
    specialized Entity.gestureResponder.setter(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    specialized Entity.gestureResponder.setter(v2);
  }

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for EntityWithGesture.gestureResponder.setter in conformance Entity(uint64_t a1)
{
  specialized Entity.gestureResponder.setter(a1);

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for EntityWithGesture.gestureResponder.modify in conformance Entity(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Entity.gestureResponder.getter();
  return Entity.gestureResponder.modify;
}

void *Entity._gatherEntitiesWithGesture()()
{
  v1 = v0;
  v2 = type metadata accessor for Entity.ComponentSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v6 = (v3 + 8);

  v19 = MEMORY[0x277D84F90];

  if (v1)
  {
    while (1)
    {
      dispatch thunk of Entity.components.getter();
      type metadata accessor for GestureComponent();
      v8 = Entity.ComponentSet.has(_:)();
      v9 = *v6;
      (*v6)(v5, v2);
      if ((v8 & 1) == 0)
      {
        break;
      }

LABEL_9:
      v12 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      }

      v14 = v12[2];
      v13 = v12[3];
      if (v14 >= v13 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
      }

      v15 = lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, &protocol conformance descriptor for Entity);
      v12[2] = v14 + 1;
      v16 = &v12[2 * v14];
      v16[4] = v1;
      v16[5] = v15;
      v19 = v12;
      if (!v1)
      {

        return v12;
      }

      v20 = v1;

      swift_getAtKeyPath();

      v7 = v21;

      v1 = v7;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    v10 = v1;
    while (1)
    {

      v20 = v10;

      swift_getAtKeyPath();

      v1 = v21;

      if (!v1)
      {
        break;
      }

      dispatch thunk of Entity.components.getter();
      v11 = Entity.ComponentSet.has(_:)();
      v9(v5, v2);
      v10 = v1;
      if (v11)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_14:

  return v19;
}

id ARRenderView._hitTest(with:)(uint64_t a1)
{
  result = ARRenderView._entityContainer(with:)(a1);
  if (!result)
  {
    v4.receiver = v1;
    v4.super_class = type metadata accessor for ARRenderView();
    return objc_msgSendSuper2(&v4, sel__hitTestWithContext_, a1);
  }

  return result;
}

id ARRenderView._entityContainer(with:)(uint64_t a1)
{
  v3 = type metadata accessor for CollisionGroup();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v7 = *(Type - 8);
  MEMORY[0x28223BE20](Type);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CollisionCastHit();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v27 - v16;
  if (result)
  {
    [result point];
    v19 = v18;
    v21 = v20;
    v22 = [v1 window];
    [v1 convertPoint:v22 fromView:{v19, v21}];

    result = [v1 superview];
    if (result)
    {
      v23 = result;
      v28 = v11;
      type metadata accessor for ARView();
      if (swift_dynamicCastClass())
      {
        (*(v7 + 104))(v9, *MEMORY[0x277CDAE48], Type);
        static CollisionGroup.all.getter();
        v24 = ARView.hitTest(_:requireInputTarget:query:mask:)();
        (*(v29 + 8))(v5, v30);
        (*(v7 + 8))(v9, Type);
        if (*(v24 + 16))
        {
          v25 = v28;
          (*(v28 + 16))(v14, v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v10);

          (*(v25 + 32))(v17, v14, v10);
          CollisionCastHit.entity.getter();
          Entity._gatherEntitiesWithGesture()();

          v26 = static EntityGestureResponderFactory.makeGestureContainer(parentView:entities:)();

          (*(v25 + 8))(v17, v10);
          return v26;
        }
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id @objc ARRenderView._hitTest(with:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = ARRenderView._entityContainer(with:)(a3);
  if (!v6)
  {
    v9.receiver = v4;
    v9.super_class = type metadata accessor for ARRenderView();
    v6 = objc_msgSendSuper2(&v9, sel__hitTestWithContext_, v5);
  }

  v7 = v6;

  return v7;
}

uint64_t specialized Entity.gestureResponder.setter(uint64_t a1)
{
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16GestureComponentVSgMd, &_s17RealityFoundation16GestureComponentVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for Entity.ComponentSet();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for GestureComponent();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  dispatch thunk of Entity.components.getter();
  Entity.ComponentSet.subscript.getter();
  v16 = *(v6 + 8);
  v16(v11, v5);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v4, &_s17RealityFoundation16GestureComponentVSgMd, &_s17RealityFoundation16GestureComponentVSgMR);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v15, v4, v12);
    swift_unknownObjectRetain();
    GestureComponent._responder.setter();
    dispatch thunk of Entity.components.getter();
    Entity.ComponentSet.set<A>(_:)();
    v16(v9, v5);
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Entity and conformance Entity(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Entity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CoveragePointCloudFullView(uint64_t a1)
{
  result = type metadata singleton initialization cache for CoveragePointCloudFullView;
  if (!type metadata singleton initialization cache for CoveragePointCloudFullView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CoveragePointCloudFullView(uint64_t a1)
{
  type metadata accessor for ObservedObject<DataModel>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Binding<Bool>();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for FullscreenCoveragePointsRenderer?, type metadata accessor for FullscreenCoveragePointsRenderer, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Binding<Bool>()
{
  if (!lazy cache variable for type metadata for Binding<Bool>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>);
    }
  }
}

void type metadata accessor for Environment<ColorScheme>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t closure #1 in CoveragePointCloudFullView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v77 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v76 = &v66[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGMR);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v66[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v81 = &v66[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v82 = &v66[-v12];
  v13 = type metadata accessor for CoveragePointCloudFullView(0);
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v13);
  v74 = &v66[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v66[-v17];
  v19 = type metadata accessor for CoveragePointCloud(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *(v13 + 28);
  v83 = a1;
  v23 = *(a1 + v22);
  if (v23)
  {
    v72 = v13;
    v24 = v83;
    v25 = *(v83 + 8);
    v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
    swift_beginAccess();
    (*(v16 + 16))(v18, v25 + v26, v15);
    v27 = v23;
    Atomic.wrappedValue.getter();
    (*(v16 + 8))(v18, v15);
    v28 = CoveragePointCloud.isValid()();
    outlined destroy of CoveragePointCloud(v21);
    if (v28)
    {
      v29 = v72;
      v30 = *(v24 + *(v72 + 36));
      v31 = v27;

      specialized CoveragePointCloudMetalWrapper.init(model:renderer:id:)(v32, v31, v30);
      v70 = v34;
      v71 = v33;
      v69 = v35;
      v68 = static SafeAreaRegions.all.getter();
      v67 = static Edge.Set.all.getter();
      v36 = v24;
      v13 = v29;
      v37 = v74;
      outlined init with copy of CoveragePointCloudFullView(v36, v74, type metadata accessor for CoveragePointCloudFullView);
      v38 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v39 = swift_allocObject();
      outlined init with take of CoveragePointCloudFullView(v37, v39 + v38);
      static Color.clear.getter();
      v40 = Color.opacity(_:)();

      LOBYTE(v37) = static Edge.Set.all.getter();
      v41 = static SafeAreaRegions.all.getter();
      v42 = static Edge.Set.all.getter();

      *&v94 = v71;
      *(&v94 + 1) = v70;
      *&v95 = v69;
      *(&v95 + 1) = v30;
      *&v96 = v68;
      BYTE8(v96) = v67;
      *&v97 = partial apply for closure #1 in closure #1 in CoveragePointCloudFullView.body.getter;
      *(&v97 + 1) = v39;
      v98 = 0u;
      v99 = 0u;
      *&v100 = closure #2 in closure #1 in CoveragePointCloudFullView.body.getter;
      *(&v100 + 1) = 0;
      *&v101[0] = v40;
      BYTE8(v101[0]) = v37;
      *&v101[1] = v41;
      BYTE8(v101[1]) = v42;
      closure #1 in BoundingBoxRotateManipulator.requestAsyncModelLoad()();
      v107 = v99;
      v108 = v100;
      v109[0] = v101[0];
      *(v109 + 9) = *(v101 + 9);
      v104 = v96;
      v105 = v97;
      v106 = v98;
      v102 = v94;
      v103 = v95;
      goto LABEL_6;
    }

    v13 = v72;
  }

  _s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgWOi0_(&v102);
LABEL_6:
  v44 = v82;
  v43 = v83;
  v45 = 1;
  if (*(v83 + *(v13 + 32)) == 1)
  {
    v46 = static HorizontalAlignment.center.getter();
    v47 = v75;
    *v75 = v46;
    *(v47 + 8) = 0;
    *(v47 + 16) = 1;
    v74 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA6SpacerV_AA15ModifiedContentVyAOyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGG_AMtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA6SpacerV_AA15ModifiedContentVyAOyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGG_AMtGGMR) + 44));
    v48 = static VerticalAlignment.center.getter();
    v49 = v76;
    *v76 = v48;
    *(v49 + 8) = 0;
    *(v49 + 16) = 1;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGGMR);
    closure #1 in closure #3 in closure #1 in CoveragePointCloudFullView.body.getter(v43, v49 + *(v50 + 44));
    v51 = v77;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v49, v77, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMR);
    v52 = v74;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v51, v74, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMR);
    v53 = &v52[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGG_AGtMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGG_AGtMR) + 48)];
    *v53 = 0;
    v53[8] = 1;
    outlined destroy of PerspectiveCameraComponent?(v49, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMR);
    v54 = v51;
    v44 = v82;
    outlined destroy of PerspectiveCameraComponent?(v54, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMR);
    outlined init with take of VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>(v47, v44);
    v45 = 0;
  }

  (*(v79 + 56))(v44, v45, 1, v80);
  v91[0] = v109[0];
  *(v91 + 9) = *(v109 + 9);
  v86 = v104;
  v87 = v105;
  v89 = v107;
  v90 = v108;
  v88 = v106;
  v84 = v102;
  v85 = v103;
  v55 = v81;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v44, v81, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMR);
  v56 = v89;
  v92[5] = v89;
  v92[6] = v90;
  v93[0] = v91[0];
  *(v93 + 9) = *(v91 + 9);
  v57 = v86;
  v58 = v87;
  v92[2] = v86;
  v92[3] = v87;
  v59 = v88;
  v92[4] = v88;
  v61 = v84;
  v60 = v85;
  v92[0] = v84;
  v92[1] = v85;
  v62 = v91[0];
  v63 = v78;
  v78[6] = v90;
  v63[7] = v62;
  *(v63 + 121) = *(v91 + 9);
  v63[2] = v57;
  v63[3] = v58;
  v63[4] = v59;
  v63[5] = v56;
  *v63 = v61;
  v63[1] = v60;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSg_AA6VStackVyAA9TupleViewVyAA6HStackVyA1_yAA6SpacerV_ACyACyAA6ButtonVyAA5ImageVGAA06_FrameX0VGAA08_PaddingX0VGtGG_A5_tGGSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSg_AA6VStackVyAA9TupleViewVyAA6HStackVyA1_yAA6SpacerV_ACyACyAA6ButtonVyAA5ImageVGAA06_FrameX0VGAA08_PaddingX0VGtGG_A5_tGGSgtMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v55, v63 + *(v64 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v92, &v94, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgMR);
  outlined destroy of PerspectiveCameraComponent?(v44, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMR);
  outlined destroy of PerspectiveCameraComponent?(v55, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMR);
  v100 = v90;
  v101[0] = v91[0];
  *(v101 + 9) = *(v91 + 9);
  v96 = v86;
  v97 = v87;
  v98 = v88;
  v99 = v89;
  v94 = v84;
  v95 = v85;
  return outlined destroy of PerspectiveCameraComponent?(&v94, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgMR);
}

void closure #1 in closure #1 in CoveragePointCloudFullView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "CoveragePointCloudMetalWrapper: onAppear() ", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  v10 = *(*(a1 + 8) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer);
  if (v10)
  {
    type metadata accessor for CoveragePointCloudFullView(0);
    v11 = v10;
    specialized Environment.wrappedValue.getter(v5);
    v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_colorScheme;
    swift_beginAccess();
    (*(v3 + 24))(&v11[v12], v5, v2);
    swift_endAccess();
    FullscreenCoveragePointsRenderer.colorScheme.didset();

    (*(v3 + 8))(v5, v2);
  }
}

void closure #2 in closure #1 in CoveragePointCloudFullView.body.getter()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_23B824000, oslog, v1, "CoveragePointCloudMetalWrapper: onDisappear()", v2, 2u);
    MEMORY[0x23EEB0B70](v2, -1, -1);
  }
}

uint64_t closure #1 in closure #3 in closure #1 in CoveragePointCloudFullView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CoveragePointCloudFullView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMR);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  outlined init with copy of CoveragePointCloudFullView(a1, v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CoveragePointCloudFullView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  outlined init with take of CoveragePointCloudFullView(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGMR) + 36)];
  v17 = v22[1];
  *v16 = v22[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v22[2];
  v18 = static Edge.Set.all.getter();
  v19 = &v13[*(v8 + 44)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v13, v11, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMR);
  *a2 = 0;
  *(a2 + 8) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingI0VGtMd, &_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingI0VGtMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v11, a2 + *(v20 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMR);
  outlined destroy of PerspectiveCameraComponent?(v13, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMR);
  return outlined destroy of PerspectiveCameraComponent?(v11, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMR);
}

void closure #1 in closure #1 in closure #3 in closure #1 in CoveragePointCloudFullView.body.getter(uint64_t a1)
{
  type metadata accessor for CoveragePointCloudFullView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.setter();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B824000, v2, v3, "Close preview button clicked!", v4, 2u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }
}

uint64_t closure #2 in closure #1 in closure #3 in closure #1 in CoveragePointCloudFullView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance CoveragePointCloudFullView@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA024_SafeAreaRegionsIgnoringG0VGAA25_AppearanceActionModifierVGAWGAA24_BackgroundStyleModifierVyAA5ColorVGGATGSg_AA6VStackVyAIyAA6HStackVyAIyAA6SpacerV_AKyAKyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGG_A11_tGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA024_SafeAreaRegionsIgnoringG0VGAA25_AppearanceActionModifierVGAWGAA24_BackgroundStyleModifierVyAA5ColorVGGATGSg_AA6VStackVyAIyAA6HStackVyAIyAA6SpacerV_AKyAKyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGG_A11_tGGSgtGGMR);
  return closure #1 in CoveragePointCloudFullView.body.getter(v2, (a2 + *(v5 + 44)));
}

double _s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
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

uint64_t outlined init with take of VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CoveragePointCloud(uint64_t a1)
{
  v2 = type metadata accessor for CoveragePointCloud(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CoveragePointCloudMetalWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CoveragePointCloudMetalWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance CoveragePointCloudMetalWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

void specialized CoveragePointCloudMetalWrapper.init(model:renderer:id:)(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = type metadata accessor for CoveragePointCloud(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type DataModel and conformance DataModel();

  v32 = ObservedObject.init(wrappedValue:)();
  v10 = one-time initialization token for logger;
  v11 = a2;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    *(v15 + 4) = a3;
    _os_log_impl(&dword_23B824000, v13, v14, "Metal wrapper setting cloud to id=%{public}ld...", v15, 0xCu);
    MEMORY[0x23EEB0B70](v15, -1, -1);
  }

  v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
  swift_beginAccess();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(a1 + v16);
  if (*(v17 + 16) <= a3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  outlined init with copy of CoveragePointCloudFullView(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a3, v9, type metadata accessor for CoveragePointCloud);
  FullscreenCoveragePointsRenderer.setRenderPointCloud(pointCloud:)(v9);
  outlined destroy of CoveragePointCloud(v9);
  DataModel.currentMiniViewCameraWorldTransform.getter();
  v30 = v19;
  v31 = v18;
  v33 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136446210;
    v34 = v31;
    v35 = v30;
    v36 = v33;
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v37);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_23B824000, v21, v22, "Fullscreen point cloud view setting camera world xform from miniview to %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x23EEB0B70](v24, -1, -1);
    MEMORY[0x23EEB0B70](v23, -1, -1);
  }

  if (*&v11[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl])
  {

    TurnTableCameraControl.setFromCameraWorldPosition(cameraPositionWorld:)(v33);

    *&v11[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_lookAtBoxWorldProvider] = 0;

    FullscreenCoveragePointsRenderer.updateTurnTable()();
    v28 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view;
    [*&v11[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view] setPaused_];
    v29 = *&v11[v28];

    [v29 setPreferredFramesPerSecond_];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t outlined init with take of CoveragePointCloudFullView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoveragePointCloudFullView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CoveragePointCloudFullView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for CoveragePointCloudFullView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in CoveragePointCloudFullView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CoveragePointCloudFullView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t getEnumTagSinglePayload for CoveragePointCloudMetalWrapper(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CoveragePointCloudMetalWrapper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudMetalWrapper, Int>, _SafeAreaRegionsIgnoringLayout>, _AppearanceActionModifier>, _AppearanceActionModifier>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>?, VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>?)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudMetalWrapper, Int>, _SafeAreaRegionsIgnoringLayout>, _AppearanceActionModifier>, _AppearanceActionModifier>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>?, VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>?)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudMetalWrapper, Int>, _SafeAreaRegionsIgnoringLayout>, _AppearanceActionModifier>, _AppearanceActionModifier>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>?, VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>?)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGASGAA24_BackgroundStyleModifierVyAA5ColorVGGAPGSg_AA6VStackVyAEyAA6HStackVyAEyAA6SpacerV_AGyAGyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA14_PaddingLayoutVGtGG_A7_tGGSgtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGASGAA24_BackgroundStyleModifierVyAA5ColorVGGAPGSg_AA6VStackVyAEyAA6HStackVyAEyAA6SpacerV_AGyAGyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA14_PaddingLayoutVGtGG_A7_tGGSgtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudMetalWrapper, Int>, _SafeAreaRegionsIgnoringLayout>, _AppearanceActionModifier>, _AppearanceActionModifier>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>?, VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>?)>> and conformance ZStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper;
  if (!lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper;
  if (!lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper);
  }

  return result;
}

uint64_t CoveragePointCloudMiniView.body.getter@<X0>(void *a1@<X8>)
{
  v24 = *(v1 + 32);
  v3 = *(&v24 + 1);
  v4 = swift_allocObject();
  v5 = *(v1 + 48);
  *(v4 + 48) = *(v1 + 32);
  *(v4 + 64) = v5;
  v6 = *(v1 + 64);
  *(v4 + 80) = v6;
  v7 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v7;
  v8 = swift_allocObject();
  v9 = *(v1 + 48);
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v1 + 64);
  v10 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v10;
  swift_beginAccess();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0022CoveragePointCloudMiniD7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0022CoveragePointCloudMiniD7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGMR);
  outlined init with copy of CoveragePointCloudMiniView(v1, v23);
  outlined init with copy of CoveragePointCloudMiniView(v1, v23);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v24, v23, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB021CoveragePointRendererCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB021CoveragePointRendererCGMR);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22UIInterfaceOrientationVGMd, &_s7Combine9PublishedVySo22UIInterfaceOrientationVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v12 = swift_allocObject();
  v13 = *(v1 + 48);
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(v1 + 64);
  v14 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v14;
  *a1 = v3;
  a1[1] = partial apply for closure #1 in CoveragePointCloudMiniView.body.getter;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = v6;
  a1[6] = partial apply for closure #2 in CoveragePointCloudMiniView.body.getter;
  a1[7] = v8;
  v15 = (a1 + *(v11 + 56));
  *v15 = partial apply for closure #3 in CoveragePointCloudMiniView.body.getter;
  v15[1] = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of CoveragePointCloudMiniView(v1, v23);
  static Published.subscript.getter(v23);

  v16 = v23[0];
  static UnitPoint.center.getter();
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0022CoveragePointCloudMiniF7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0022CoveragePointCloudMiniF7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMR);
  v22 = (a1 + *(result + 36));
  *v22 = v16;
  v22[1] = v18;
  v22[2] = v20;
  return result;
}

uint64_t closure #1 in CoveragePointCloudMiniView.body.getter(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 orientation];

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v15 = v8;
    *v7 = 136446210;
    type metadata accessor for UIDeviceOrientation(0);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_23B824000, v5, v6, "Device orientation starting from: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23EEB0B70](v8, -1, -1);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v15 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
  State.wrappedValue.setter();
  v15 = *(a1 + 48);
  State.wrappedValue.getter();
  v12 = CoveragePointCloudMiniView.interfaceOrientation.getter();
  v13 = specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(v3, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v15 = v13;

  return static Published.subscript.setter();
}

uint64_t closure #2 in CoveragePointCloudMiniView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 orientation];

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  outlined init with copy of CoveragePointCloudMiniView(a2, v19);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined destroy of CoveragePointCloudMiniView(a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446466;
    v19[0] = *(a2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
    State.wrappedValue.getter();
    type metadata accessor for UIDeviceOrientation(0);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *&v19[0] = v4;
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_23B824000, v6, v7, "Device orientation changed from: %{public}s to: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v9, -1, -1);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  MEMORY[0x28223BE20](v16);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #2 in CoveragePointCloudMiniView.body.getter(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  v2 = CoveragePointCloudMiniView.interfaceOrientation.getter();
  specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(a2, v2);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t closure #3 in CoveragePointCloudMiniView.body.getter(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v3;
    *&v16 = v8;
    *v7 = 136315138;
    type metadata accessor for UIInterfaceOrientation(0);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_23B824000, v5, v6, "Device orientation: UIInterfaceOrientation published, recomputing with %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23EEB0B70](v8, -1, -1);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v16 = *(a2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
  State.wrappedValue.getter();
  v12 = CoveragePointCloudMiniView.interfaceOrientation.getter();
  v13 = specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(v15, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v16 = v13;

  return static Published.subscript.setter();
}

uint64_t CoveragePointCloudMiniView.interfaceOrientation.getter()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (!v1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v3 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Device orientation MTKView is nil!  Using .portrait...";
LABEL_13:
    _os_log_impl(&dword_23B824000, v3, v8, v10, v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
LABEL_19:
    v6 = 1;
    goto LABEL_20;
  }

  v2 = [v1 window];
  if (!v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v3 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Device orientation window is nil!  Using .portrait...";
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 windowScene];
  if (!v4)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B824000, v13, v14, "Device orientation windowScene is nil!  Using .portrait...", v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v4 interfaceOrientation];

  v3 = v5;
LABEL_20:

  return v6;
}

uint64_t CoveragePointRenderer.interfaceOrientation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance CoveragePointCloudMiniViewWrapper()
{
  result = *(*v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CoveragePointCloudMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CoveragePointCloudMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance CoveragePointCloudMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t closure #1 in CoveragePointRenderer.voxelRenderer.getter(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (v1)
  {
    type metadata accessor for VoxelRenderer();
    swift_allocObject();
    return VoxelRenderer.init(view:)(v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CoveragePointRenderer.voxelRenderer.getter(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = a2(v4);
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;

    a3(v10);
  }

  a4(v7);
  return v8;
}

void *closure #1 in CoveragePointRenderer.captureCircleRenderer.getter(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (result)
  {
    v3 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_device);
    v4 = [result colorPixelFormat];
    type metadata accessor for CaptureCircleRenderer();
    v5 = swift_allocObject();
    *(v5 + 16) = 1056964608;
    *(v5 + 24) = 0x4000000000000000;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    *(v5 + 48) = 0;
    _s19_RealityKit_SwiftUI23CommonCircleRenderStateVSgWOi0_(__src);
    memcpy((v5 + 80), __src, 0x121uLL);
    *(v5 + 376) = 0;
    *(v5 + 384) = vdupq_n_s64(0x4059000000000000uLL);
    *(v5 + 400) = 0u;
    *(v5 + 416) = 0u;
    *(v5 + 432) = 0u;
    *(v5 + 445) = 0u;
    *(v5 + 464) = 0x400000007F800000;
    *(v5 + 472) = 0;
    *(v5 + 32) = v3;
    *(v5 + 40) = v4;
    swift_unknownObjectRetain();
    CaptureCircleRenderer.initRenderPipelines()();
    *(v5 + 400) = [v3 newBufferWithLength:432 options:0];
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *CoveragePointRenderer.init()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22UIInterfaceOrientationVGMd, &_s7Combine9PublishedVySo22UIInterfaceOrientationVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - v8;
  v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer__interfaceOrientation;
  v62 = 1;
  type metadata accessor for UIInterfaceOrientation(0);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v1[v10], v9, v6);
  v11 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_id];
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  *v11 = v12;
  v11[1] = v14;
  v15 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view] = 0;
  v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  v17 = type metadata accessor for CoveragePointCloud(0);
  (*(*(v17 - 8) + 56))(&v1[v16], 1, 1, v17);
  v18 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld];
  v19 = *MEMORY[0x277D860B8];
  v20 = *(MEMORY[0x277D860B8] + 16);
  v21 = *(MEMORY[0x277D860B8] + 32);
  v22 = *(MEMORY[0x277D860B8] + 48);
  *v18 = *MEMORY[0x277D860B8];
  v18[1] = v20;
  v18[2] = v21;
  v18[3] = v22;
  v23 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection];
  *v23 = v19;
  v23[1] = v20;
  v23[2] = v21;
  v23[3] = v22;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_renderPipelineState] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer____lazy_storage___voxelRenderer] = 1;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer____lazy_storage___captureCircleRenderer] = 1;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_localTime] = 0;
  v24 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightQueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueCyAA21CoveragePointRendererC13ResourceEntry33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVGMd, &_s19_RealityKit_SwiftUI13InFlightQueueCyAA21CoveragePointRendererC13ResourceEntry33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVGMR);
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = MEMORY[0x277D84F90];
  v25[2] = v26;
  v25[3] = 0;
  v25[4] = v27;
  *&v1[v24] = v25;
  v28 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightLock;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *&v1[v28] = v29;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer] = 0;
  v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointRenderer.init());
  *&v1[v30] = v31;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_motionGoodness] = 1065353216;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureDialOpacityFloor] = 1036831949;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize] = vdupq_n_s64(0x4059000000000000uLL);
  v32 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_backgroundColor];
  *v32 = 0u;
  v32[1] = 0u;
  v33 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_renderStyle;
  v1[v33] = specialized static ExperimentSettings.loadPointCloudRenderStyle(default:)(0) & 1;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_shouldRenderPointsWithAlphaBlend] = 0;
  v34 = MTLCreateSystemDefaultDevice();
  if (!v34)
  {
    goto LABEL_15;
  }

  v35 = v34;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_device] = v34;
  v36 = objc_allocWithZone(MEMORY[0x277CD71F8]);
  swift_unknownObjectRetain();
  v37 = [v36 initWithFrame:v35 device:{0.0, 0.0, 0.0, 0.0}];
  v38 = *&v1[v15];
  *&v1[v15] = v37;

  v39 = type metadata accessor for CoveragePointRenderer(0);
  v61.receiver = v1;
  v61.super_class = v39;
  v40 = objc_msgSendSuper2(&v61, sel_init);
  CoveragePointRenderer.initRenderPipeline()();
  v41 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view;
  v42 = *&v40[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view];
  if (!v42)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v42 setDelegate_];
  type metadata accessor for BaseRenderer();
  swift_allocObject();
  v43 = swift_unknownObjectRetain();
  specialized BaseRenderer.init(device:width:height:)(v43, 100, 100);
  v45 = v44;
  swift_unknownObjectRelease();
  v46 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer;
  *&v40[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer] = v45;

  if (!*&v40[v46])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v47 = [objc_allocWithZone(MEMORY[0x277CD6D60]) init];
  [v47 setDepthCompareFunction_];
  [v47 setDepthWriteEnabled_];
  v48 = [v35 newDepthStencilStateWithDescriptor_];

  *(v45 + 24) = v48;

  swift_unknownObjectRelease();
  v49 = *&v40[v41];
  if (!v49)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v50 = [v49 layer];
  [v50 setOpaque_];

  v51 = *&v40[v41];
  if (!v51)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v52 = [v51 layer];
  GenericGray = CGColorCreateGenericGray(0.0, 0.0);
  [v52 setBackgroundColor_];

  CoveragePointRenderer.setupFeatherMask()();
  v54 = objc_allocWithZone(type metadata accessor for InteractiveCameraTransformManager(0));
  InteractiveCameraTransformManager.init(radius:springDelay:springTime:)(v54, 1.0, 1.0, 1.0);
  v55 = *&v40[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider];
  *&v40[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider] = v56;
  v57 = v56;

  v58 = *&v40[v41];
  if (v58)
  {
    if (*&v57[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture])
    {
      [v58 addGestureRecognizer_];

      swift_unknownObjectRelease();
      return v40;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void CoveragePointRenderer.setupFeatherMask()()
{
  v1 = v0;
  v2 = specialized static MetalHelpers.loadFeatherMaskLayer(named:)(0xD000000000000019, 0x800000023B925520);
  if (!v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    v17 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, v17, v15, "Can't load miniview feather mask: miniview_feather_mask.png", v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }

    goto LABEL_15;
  }

  v3 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Setting miniview feather mask layer...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view;
  v9 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (!v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = [v9 layer];
  [v10 setMask_];

  v11 = *(v1 + v8);
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = [v11 layer];
  v17 = [v12 mask];

  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = *(v1 + v8);
  if (!v13)
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v13 bounds];
  [v17 setFrame:?];

LABEL_15:
}

Swift::Void __swiftcall CoveragePointRenderer.mtkView(_:drawableSizeWillChange:)(MTKView _, CGSize drawableSizeWillChange)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (v4 && (height = drawableSizeWillChange.height, width = drawableSizeWillChange.width, type metadata accessor for MTKView(), v8 = _.super.super.super.isa, v9 = v4, LOBYTE(_.super.super.super.isa) = static NSObject.== infix(_:_:)(), v9, v8, (_.super.super.super.isa & 1) != 0))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      type metadata accessor for CGSize(0);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_23B824000, v11, v12, "mtkView: size changed!  newSize=%{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x23EEB0B70](v14, -1, -1);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    v18 = (v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize);
    *v18 = width;
    v18[1] = height;
    CoveragePointRenderer.setupFeatherMask()();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B824000, oslog, v20, "mtkView delegate got unexpected view... ignoring!", v21, 2u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }
  }
}

void CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:)(uint64_t a1, uint64_t a2, double a3, __n128 a4, float32x4_t a5, float32x4_t a6, double a7, float a8)
{
  v175 = a6;
  v176 = a5;
  v179 = a4;
  v167 = type metadata accessor for DispatchTime();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v164 = v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v165 = v163 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v163 - v18;
  outlined init with copy of CoveragePointCloud(a1, v163 - v18);
  v20 = type metadata accessor for CoveragePointCloud(0);
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  v21 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v19, v8 + v21, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  swift_endAccess();
  *(v8 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle) = a2;

  *v168.i64 = a3;
  *(v8 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_localTime) = a3;
  *(v8 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector) = a7;
  *(v8 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_motionGoodness) = a8;
  v177.i64[0] = v8;
  CoveragePointRenderer.updateInterfaceOrientationIfNeeded()();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:));
  v178 = v22;
  *v23.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v175, v176, v179);
  v171 = v24;
  v176 = v25;
  v179 = vmlaq_lane_f32(vmulq_n_f32(v23, v178.f32[0]), v26, *v178.f32, 1);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v163 - v29;
  v31 = *(v20 + 20);
  v32 = a1;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1 + v31, v163 - v29, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v33 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v35(v30, 1, v33);
  v37 = MEMORY[0x277D860B8];
  if (v36 == 1)
  {
    v38 = outlined destroy of PerspectiveCameraComponent?(v30, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v39 = v37[1];
    v175 = *v37;
    v174 = v39;
    v40 = v37[3];
    v173 = v37[2];
    v172 = v40;
  }

  else
  {
    ObjectCaptureSession.Frame.Object.transform.getter();
    v175 = v41;
    v174 = v42;
    v173 = v43;
    v172 = v44;
    v38 = (*(v34 + 8))(v30, v33);
  }

  v179 = vmlaq_laneq_f32(v179, v171, v178, 2);
  v169 = vdupq_lane_s32(*v178.f32, 1);
  v170 = vdupq_laneq_s32(v178, 2);
  v171 = vdupq_laneq_s32(v178, 3);
  MEMORY[0x28223BE20](v38);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v32 + v31, v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v35(v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v33) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  }

  else
  {
    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v163[3] = v45;
    v163[2] = v46;
    v163[1] = v47;
    v163[0] = v48;
    (*(v34 + 8))(v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
  }

  v49 = v177.i64[0];
  v179 = vmlaq_laneq_f32(v179, v176, v178, 3);
  Transform.init(matrix:)();
  v177 = v50;
  v176 = v51;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointCloud.objectToInitialBoxWorld.getter);
  *v53.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v176, v177, v52);
  v175 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v53.f32[0]), v174, *v53.f32, 1), v173, v53, 2), v172, v53, 3), v178.f32[0]), v169, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v54.f32[0]), v174, *v54.f32, 1), v173, v54, 2), v172, v54, 3)), v170, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v55.f32[0]), v174, *v55.f32, 1), v173, v55, 2), v172, v55, 3)), v171, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v56.f32[0]), v174, *v56.f32, 1), v173, v56, 2), v172, v56, 3));
  CoveragePointCloud.bboxWorld.getter();
  *v57.i64 = Transform.init(matrix:)();
  v60 = v57;
  v62 = v61;
  v177 = v58;
  v176 = v61;
  if (one-time initialization token for automaticBoundingBoxPaddingFactor != -1)
  {
    v178 = v60;
    swift_once();
    v60 = v178;
    v62 = v176;
    v58 = v177;
  }

  *v59.f32 = vmul_n_f32(*v60.f32, 1.0 / *&static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor);
  v172 = v59;
  v60.f32[0] = vmuls_lane_f32(1.0 / *&static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor, v60, 2);
  v173 = v60;
  v63.n128_u64[0] = v59.i64[0];
  v63.n128_u64[1] = v60.u32[0];
  v178 = v63;
  *v64.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v62, v58, v63);
  v174 = v64;
  v171 = v65;
  v170 = v66;
  v169 = v67;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
  *v68.i64 = Transform.init(matrix:)();
  v174 = v68;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:));
  v71 = sqrtf((v173.f32[0] * v173.f32[0]) + vaddv_f32(vmul_f32(*v172.f32, *v172.f32)));
  if (v70 < v69)
  {
    v69 = v70;
  }

  v72 = (v71 * 0.5) * 1.5;
  v73 = (v72 / tanf(v69 * 0.5)) + 0.001;
  *v74.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v176, v177, v178);
  v173 = v74;
  v172 = v75;
  v171 = v76;
  v170 = v77;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
  *v78.i64 = Transform.init(matrix:)();
  v79 = vzip1_s32(*v174.f32, *v78.i8);
  v80 = vzip2_s32(*v174.f32, *v78.i8);
  *v78.i8 = vzip1_s32(*&vextq_s8(v174, v174, 8uLL), *&vextq_s8(v78, v78, 8uLL));
  *v78.i8 = vmul_f32(vsqrt_f32(vadd_f32(vmul_f32(*v78.i8, *v78.i8), vadd_f32(vmul_f32(v79, v79), vmul_f32(v80, v80)))), 0x3F0000003F000000);
  *&v81 = 0;
  *(&v81 + 2) = (*v78.i32 + (v73 + *&v78.i32[1])) / (0.001 - (*v78.i32 + (v73 + *&v78.i32[1])));
  HIDWORD(v81) = -1.0;
  *&v82 = 0;
  HIDWORD(v82) = 0;
  *(&v82 + 2) = *(&v81 + 2) * 0.001;
  v83 = v49 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection;
  *v83 = xmmword_23B91C4F0;
  *(v83 + 16) = xmmword_23B91C500;
  *(v83 + 32) = v81;
  *(v83 + 48) = v82;
  v84 = v179;
  v84.i32[3] = 0;
  v85 = v175;
  v85.i32[3] = 0;
  *v86.i64 = specialized static MiniViewHelpers.computeLookAt(cameraWorld:objectWorld:objectExtents:)(v84, v85, *v178.f32);
  v175 = v86;
  v87 = vsubq_f32(v86, v179);
  v88 = v86.f32[2];
  v89 = vmulq_f32(v87, v87);
  *&v90 = v89.f32[2] + vaddv_f32(*v89.f32);
  *v89.f32 = vrsqrte_f32(v90);
  *v89.f32 = vmul_f32(*v89.f32, vrsqrts_f32(v90, vmul_f32(*v89.f32, *v89.f32)));
  v179 = vmulq_n_f32(v87, vmul_f32(*v89.f32, vrsqrts_f32(v90, vmul_f32(*v89.f32, *v89.f32))).f32[0]);
  v91 = *v83;
  v92 = *(v83 + 20);
  v93 = *(v83 + 56);
  v94 = *(v83 + 40);
  Transform.init()();
  v174 = v95;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:));
  *v97.i64 = simd_quaternion(v96, v179);
  v173 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  v99.f32[0] = atanf(1.0 / v91);
  v172 = v99;
  v100 = atanf(1.0 / v92);
  *(inited + 32) = vadd_f32(__PAIR64__(LODWORD(v100), v172.u32[0]), __PAIR64__(LODWORD(v100), v172.u32[0]));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v172 = v101;
  swift_setDeallocating();
  v102 = v172.f32[1];
  if (v172.f32[1] >= v172.f32[0])
  {
    v102 = v172.f32[0];
  }

  v103.f32[0] = (v93 / v94) + (v72 / tanf(v102 * 0.5));
  v172 = v103;
  v104 = swift_initStackObject();
  *(v104 + 16) = xmmword_23B91A6D0;
  v105 = v179;
  v106 = v172.f32[0];
  *(v104 + 32) = vsub_f32(*v175.f32, vmul_n_f32(v179.n128_u64[0], v172.f32[0]));
  *(v104 + 40) = v88 - vmuls_lane_f32(v106, v105, 2);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v104);
  v179 = v107;
  swift_setDeallocating();
  v108.n128_f64[0] = specialized simd_float4x4.init(translation:rotation:scale:)(v179, v173, v174);
  v179 = v108;
  v175 = v109;
  v174 = v110;
  v173 = v111;
  v112 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider;
  v113 = *(v49 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider);
  if (!v113)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v114 = v113;
  *v115.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v176, v177, v178);
  v119 = v115;
  v120 = *v83;
  v121 = *(v83 + 16);
  v122 = *(v83 + 32);
  v123 = *(v83 + 48);
  *&v114[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_time] = v168.i64[0];
  v124 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_ignoreARCameraTracking;
  if (v114[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_ignoreARCameraTracking])
  {
    v125 = v164;
    v178 = v115;
    v177 = v116;
    v176 = v117;
    v172 = v118;
    v171 = v120;
    v170 = v121;
    v169 = v122;
    v168 = v123;
    static DispatchTime.now()();
    v126 = v165;
    - infix(_:_:)();
    v127 = v166;
    v128 = v125;
    v129 = v167;
    (*(v166 + 8))(v128, v167);
    (*(v127 + 56))(v126, 0, 1, v129);
    v130 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_startTime;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v126, &v114[v130], &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
    swift_endAccess();
    v123 = v168;
    v122 = v169;
    v121 = v170;
    v120 = v171;
    v118 = v172;
    v117 = v176;
    v116 = v177;
    v119 = v178;
    v114[v124] = 0;
  }

  v180 = 0;
  v131 = &v114[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_projection];
  *v131 = v120;
  v131[1] = v121;
  v131[2] = v122;
  v131[3] = v123;
  v131[4].i8[0] = 0;
  v132 = &v114[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld];
  *v132 = v119;
  v132[1] = v116;
  v132[2] = v117;
  v132[3] = v118;
  *v133.i64 = Transform.init(matrix:)();
  v134 = &v114[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_arCameraTransform];
  *v134 = v133;
  v134[1] = v135;
  v134[2] = v136;
  v137 = v132[1];
  v176 = *v132;
  v177 = v137;
  v138 = v132[3];
  v178 = v132[2];
  v179 = v138;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:));
  v140 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v139.f32[0]), v177, *v139.f32, 1), v178, v139, 2), v179, v139, 3);
  v141 = v134[2];
  v179 = v140;
  v142 = vsubq_f32(v141, v140);
  v143 = vmulq_f32(v142, v142);
  *&v144 = v143.f32[2] + vaddv_f32(*v143.f32);
  *v143.f32 = vrsqrte_f32(v144);
  *v143.f32 = vmul_f32(*v143.f32, vrsqrts_f32(v144, vmul_f32(*v143.f32, *v143.f32)));
  InteractiveCameraTransformManager.computeRadiusToViewBox(boxToCameraDir:)(vmulq_n_f32(v142, vmul_f32(*v143.f32, vrsqrts_f32(v144, vmul_f32(*v143.f32, *v143.f32))).f32[0]));
  v146 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl;
  v147 = *&v114[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl];
  if (!v147)
  {
    goto LABEL_25;
  }

  v148 = v145;
  v149 = v179;
  v149.n128_u32[3] = 0;
  v147[5] = v149;
  TurnTableCameraControl.update()();
  v150 = *&v114[v146];
  if (!v150)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v151 = v150[15];
  v152 = v150[16];
  if (v152 >= v148)
  {
    v152 = v148;
  }

  if (v152 > v151)
  {
    v151 = v152;
  }

  v150[14] = v151;
  TurnTableCameraControl.update()();

  v153 = *(v49 + v112);
  if (v153)
  {
    v154 = v153;
    v155.n128_f64[0] = InteractiveCameraTransformManager.computeCurrentTransform()();
    v179 = v155;
    v178 = v156;
    v177 = v157;

    *&v158 = specialized simd_float4x4.init(translation:rotation:scale:)(v177, v178, v179);
    v159 = (v49 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld);
    *v159 = v158;
    v159[1] = v160;
    v159[2] = v161;
    v159[3] = v162;
    return;
  }

LABEL_27:
  __break(1u);
}

Swift::Void __swiftcall CoveragePointRenderer.teardown()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for CoveragePointCloud(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v3, v0 + v5, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle) = 0;

  if (!CoveragePointRenderer.captureCircleRenderer.getter())
  {
    __break(1u);
    goto LABEL_7;
  }

  CoveragePointRenderer.clearView()();
  v6 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view;
  v8 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v6 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture))
  {
    [v8 removeGestureRecognizer_];
    v9 = *(v0 + v7);
    *(v0 + v7) = 0;

    return;
  }

LABEL_9:
  __break(1u);
}

void *CoveragePointRenderer.updateInterfaceOrientationIfNeeded()()
{
  result = *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view];
  if (result)
  {
    v2 = v0;
    v3 = [result window];
    if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
    {
      v6 = [v5 interfaceOrientation];
    }

    else
    {
      v6 = 1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v16);

    if (v6 != v16)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v16 = v11;
        *v10 = 136315138;
        type metadata accessor for UIInterfaceOrientation(0);
        v12 = String.init<A>(describing:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_23B824000, v8, v9, "Device orientatation: publishing the renderer interfaceOrientation=%s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x23EEB0B70](v11, -1, -1);
        MEMORY[0x23EEB0B70](v10, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v16 = v6;
      v15 = v2;
      return static Published.subscript.setter();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}