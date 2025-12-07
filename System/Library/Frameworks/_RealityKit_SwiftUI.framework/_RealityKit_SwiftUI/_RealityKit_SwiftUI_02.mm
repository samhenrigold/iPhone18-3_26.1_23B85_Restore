uint64_t DynamicScanVolumeEstimator.init(using:)(unsigned int a1, float a2, double a3, float a4)
{
  v5 = v4;
  v21 = 1;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 1;
  v22 = 1;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 1;
  v10 = MEMORY[0x277D84F90];
  *(v5 + 248) = MEMORY[0x277D84F90];
  *(v5 + 256) = 0;
  *(v5 + 264) = 0;
  *(v5 + 272) = 0;
  *(v5 + 280) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10RealityKit6EntityCTt0g5Tf4g_n(v10);
  *(v5 + 288) = 1;
  *(v5 + 16) = a1 & 1;
  *(v5 + 17) = BYTE1(a1) & 1;
  *(v5 + 18) = BYTE2(a1) & 1;
  *(v5 + 20) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, logger);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_23B824000, v12, v13, "Creating DynamicScanVolumeEstimator with desc=%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x23EEB0B70](v15, -1, -1);
    MEMORY[0x23EEB0B70](v14, -1, -1);
  }

  return v5;
}

void DynamicScanVolumeEstimator.addSphere(sphere:mass:time:)(float32x4_t a1, float a2, float a3, double a4)
{
  v7 = a1;
  if ((*(v4 + 160) & 1) != 0 || (v8 = *(v4 + 152), v36 = *(v4 + 144), v37 = v8, v10 = *(v4 + 96), v9 = *(v4 + 112), v12 = *(v4 + 64), v11 = *(v4 + 80), v13 = *(v4 + 128), v14 = *(v4 + 136), v29 = *(v4 + 48), v30 = v12, v31 = v11, v32 = v10, v33 = v9, v34 = v13, v35 = v14, v15.i64[0] = v36, v15.i64[1] = v8, v16 = vsubq_f32(a1, v15), v17 = vmulq_f32(v16, v16), *&v10 = v17.f32[2] + vaddv_f32(*v17.f32), *&v12 = vrsqrte_f32(v10), *&v12 = vmul_f32(*&v12, vrsqrts_f32(v10, vmul_f32(*&v12, *&v12))), v18 = vmulq_n_f32(v16, vmul_f32(*&v12, vrsqrts_f32(v10, vmul_f32(*&v12, *&v12))).f32[0]), *&v10 = vmuls_lane_f32(a2, v18, 2), v18.n128_u64[0] = vadd_f32(v7.n128_u64[0], vmul_n_f32(v18.n128_u64[0], a2)), v18.n128_f32[2] = v7.n128_f32[2] + *&v10, v18.n128_u32[3] = 0, v23 = v7, v24 = a2, v19 = Ellipsoid.signedDistanceField(at:)(v18), v7 = v23, a2 = v24, v19 > 0.0))
  {
    v20 = static DynamicScanVolumeEstimator.SphereSample.staticId + 1;
    if (__OFADD__(static DynamicScanVolumeEstimator.SphereSample.staticId, 1))
    {
LABEL_15:
      __break(1u);
    }

    else
    {
      ++static DynamicScanVolumeEstimator.SphereSample.staticId;
      v25[0].n128_u64[0] = v20;
      v25[1] = v7;
      v26 = a2;
      v27 = a3;
      v28 = a4;
      DynamicScanVolumeEstimator.addSphereSample(_:)(v25);
      if (DynamicScanVolumeEstimator.attemptToCoalesceOnePair()())
      {
        v21 = 0;
        do
        {
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_15;
          }

          ++v21;
        }

        while ((DynamicScanVolumeEstimator.attemptToCoalesceOnePair()() & 1) != 0);
        if (v22 >= 1)
        {
          DynamicScanVolumeEstimator.recalculateBoundingVolume()();
        }
      }

      DynamicScanVolumeEstimator.cullOldSamples(at:)(a4);
    }
  }
}

void DynamicScanVolumeEstimator.currentBoundingEllipsoid.didset(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 160))
  {
    if (*(v1 + 17) == 1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, logger);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_23B824000, v4, v5, "Removing ellipsoid debug entity...", v6, 2u);
        MEMORY[0x23EEB0B70](v6, -1, -1);
      }

      DynamicScanVolumeEstimator.debugEllipsoidEntity.getter();
      type metadata accessor for Entity();
      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    }
  }

  else
  {
    v8 = *(v1 + 64);
    v7 = *(v1 + 80);
    v9 = *(v1 + 96);
    v10 = *(v1 + 104);
    v12 = *(v1 + 112);
    v11 = *(v1 + 120);
    v14 = *(v1 + 128);
    v13 = *(v1 + 136);
    v16 = *(v1 + 144);
    v15 = *(v1 + 152);
    v46 = *(v1 + 48);
    v47 = v8;
    v48 = v7;
    v49 = v9;
    v50 = v10;
    v51 = v12;
    v52 = v11;
    v53 = v14;
    v54 = v13;
    v55 = v16;
    v56 = v15;
    if ((*(a1 + 112) & 1) != 0 && *(v1 + 17) == 1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, logger);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_23B824000, v18, v19, "Adding ellipsoid debug entity...", v20, 2u);
        MEMORY[0x23EEB0B70](v20, -1, -1);
      }

      DynamicScanVolumeEstimator.debugRootEntity.getter();
      DynamicScanVolumeEstimator.debugEllipsoidEntity.getter();
      type metadata accessor for Entity();
      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }

    if (*(v2 + 17) == 1)
    {
      v21.n128_u64[0] = v12;
      v22.i64[0] = v14;
      v23.i64[0] = v16;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
        v23.i64[0] = v16;
        v22.i64[0] = v14;
        v21.n128_u64[0] = v12;
      }

      v21.n128_u64[1] = v11;
      v22.i64[1] = v13;
      v43 = v22;
      v44 = v21;
      v23.i64[1] = v15;
      v42 = v23;
      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, logger);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v45 = v28;
        *v27 = 136446210;
        specialized simd_float4x4.init(translation:rotation:scale:)(v42, v43, v44);
        type metadata accessor for simd_float4x4(0);
        v29 = String.init<A>(describing:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v45);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_23B824000, v25, v26, "Updating ellipsoid debug entity xform: %{public}s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        MEMORY[0x23EEB0B70](v28, -1, -1);
        MEMORY[0x23EEB0B70](v27, -1, -1);
      }

      DynamicScanVolumeEstimator.debugEllipsoidEntity.getter();
      specialized simd_float4x4.init(translation:rotation:scale:)(v42, v43, v44);
      type metadata accessor for Entity();
      HasTransform.setTransformMatrix(_:relativeTo:)();
    }

    if (*(v2 + 18))
    {
      v32 = Ellipsoid.gravityAlignedBox.getter();
      *&v35 = specialized simd_float4x4.init(translation:rotation:scale:)(v34, v33, v32);
    }

    else
    {
      *v39.i64 = Ellipsoid.computeAABB()();
      *&v35 = specialized static BoundingBoxHelpers.asSRTMatrix(box:)(v40, v39, v41);
    }

    *(v2 + 176) = v35;
    *(v2 + 192) = v36;
    *(v2 + 208) = v37;
    *(v2 + 224) = v38;
    *(v2 + 240) = 0;
    if (*(v2 + 16) == 1)
    {
      DynamicScanVolumeEstimator.boxEntity.getter();
      type metadata accessor for Entity();
      HasTransform.setTransformMatrix(_:relativeTo:)();
    }
  }
}

uint64_t DynamicScanVolumeEstimator.boxEntity.getter()
{
  if (*(v0 + 256))
  {
    v1 = *(v0 + 256);
  }

  else
  {
    v1 = specialized static DynamicScanVolumeEstimator.makeBoxEntity()();
    *(v0 + 256) = v1;
  }

  return v1;
}

uint64_t DynamicScanVolumeEstimator.debugRootEntity.getter()
{
  if (*(v0 + 264))
  {
    v1 = *(v0 + 264);
  }

  else
  {
    v2 = v0;
    type metadata accessor for Entity();
    swift_allocObject();
    v1 = Entity.init()();
    *(v2 + 264) = v1;
  }

  return v1;
}

uint64_t DynamicScanVolumeEstimator.debugEllipsoidEntity.getter()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    v1 = specialized static DynamicScanVolumeEstimator.makeDebugEllipsoidEntity()();
    *(v0 + 272) = v1;
  }

  return v1;
}

uint64_t DynamicScanVolumeEstimator.cullOldSamples(at:)(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 248);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + 24);

    v6 = (v3 + 72);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = v5 * (a1 - *v6);
      v12 = v9 - v11;
      if (v12 <= 0.0 || v12 < 0.001)
      {
        v14 = *(v6 - 5);
        v19 = *(v6 - 6);
        v15 = *(v6 - 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        }

        v17 = *(v7 + 2);
        v16 = *(v7 + 3);
        if (v17 >= v16 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v7);
        }

        *(v7 + 2) = v17 + 1;
        v8 = &v7[48 * v17];
        *(v8 + 4) = v14;
        *(v8 + 3) = v19;
        *(v8 + 16) = v15;
        *(v8 + 17) = v9;
        *(v8 + 9) = v10;
      }

      v6 += 12;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  DynamicScanVolumeEstimator.removeSamples(in:)(v7);
}

uint64_t DynamicScanVolumeEstimator.addSphereSample(_:)(__n128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 248);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 248) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 248) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[48 * v6];
  v8 = *a1;
  v9 = a1[2];
  *(v7 + 3) = a1[1];
  *(v7 + 4) = v9;
  *(v7 + 2) = v8;
  *(v1 + 248) = v3;
  result = swift_endAccess();
  if (*(v1 + 17) == 1)
  {
    v11 = specialized static DynamicScanVolumeEstimator.makeDebugSphereEntity(_:massToAssimilate:)(a1[1], a1[2].n128_f32[0], a1[2].n128_f32[1], *(v1 + 20));
    v12 = a1->n128_u64[0];
    swift_beginAccess();

    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v1 + 280);
    *(v1 + 280) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v12, v13);
    *(v1 + 280) = v14;
    swift_endAccess();
    DynamicScanVolumeEstimator.debugRootEntity.getter();
    type metadata accessor for Entity();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
  }

  return result;
}

uint64_t DynamicScanVolumeEstimator.removeDebugEntity(id:)(uint64_t result)
{
  if (*(v1 + 17) == 1)
  {
    v2 = result;
    swift_beginAccess();
    if (*(*(v1 + 280) + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v2);
      if (v3)
      {
        type metadata accessor for Entity();

        HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
      }
    }

    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(v2);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DynamicScanVolumeEstimator.attemptToCoalesceOnePair()()
{
  v5 = v0;
  swift_beginAccess();
  v8 = *(v0 + 248);
  v9 = *(v8 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  while (!v10)
  {
LABEL_3:
    if (++v10 == v9)
    {
      return 0;
    }
  }

  v11 = 0;
  v12 = v8 + 32 + 48 * v10;
  v13.i32[0] = *(v12 + 32);
  v14 = *(v12 + 16);
  LODWORD(v15) = *(v12 + 24);
  v16 = *(v0 + 248);
  v17 = 32;
  while (1)
  {
    v18 = *(v16 + 48);
    v19 = *(v16 + 64);
    *v6.i32 = COERCE_FLOAT(*(v16 + 56));
    v20 = vsub_f32(*v14.i8, *v18.i8);
    v21 = sqrtf(((v15 - *v6.i32) * (v15 - *v6.i32)) + vaddv_f32(vmul_f32(v20, v20)));
    v22 = 0.0;
    if ((v13.f32[0] + v19) >= v21)
    {
      if (v21 <= (v13.f32[0] - v19))
      {
        v22 = v19 * (v19 * (v19 * 4.1888));
      }

      else
      {
        v23 = vsub_f32(*v18.i8, *v14.i8);
        v24 = sqrtf(((*v6.i32 - v15) * (*v6.i32 - v15)) + vaddv_f32(vmul_f32(v23, v23)));
        v22 = v13.f32[0] * (v13.f32[0] * (v13.f32[0] * 4.1888));
        if (v24 > (v19 - v13.f32[0]))
        {
          if (fabsf(v19 - v13.f32[0]) >= 0.000001 || (v22 = v13.f32[0] * (v13.f32[0] * (v13.f32[0] * 4.1888)), v24 >= 0.000001))
          {
            if (v21 <= -5.0)
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v25 = ((v13.f32[0] * v13.f32[0]) + ((v21 * v21) - (v19 * v19))) / (v21 + v21);
            v22 = (((v13.f32[0] * 3.0) - (v13.f32[0] - v25)) * ((v13.f32[0] - v25) * ((v13.f32[0] - v25) * 1.0472))) + (((v19 * 3.0) - (v19 - (v21 - v25))) * ((v19 - (v21 - v25)) * ((v19 - (v21 - v25)) * 1.0472)));
          }
        }
      }
    }

    v26 = v22 / (v13.f32[0] * (v13.f32[0] * (v13.f32[0] * 4.1888)));
    v27 = v22 / (v19 * (v19 * (v19 * 4.1888)));
    if (v26 <= v27)
    {
      v26 = v27;
    }

    if (*(v0 + 32) < v26)
    {
      break;
    }

    ++v11;
    v17 += 48;
    v16 += 48;
    if (v10 == v11)
    {
      goto LABEL_3;
    }
  }

  v28 = *(v12 + 36);
  v29 = *(v16 + 68);
  *v7.i32 = v28 + v29;
  v30 = vdiv_f32(vadd_f32(vmul_n_f32(*v14.i8, v28), vmul_n_f32(*v18.i8, v29)), vdup_lane_s32(v7, 0));
  *v6.i32 = ((v15 * v28) + (*v6.i32 * v29)) / (v28 + v29);
  v31 = vsub_f32(v30, *v14.i8);
  v32 = vmul_f32(v31, v31);
  v33 = vsub_f32(v30, *v18.i8);
  v34 = vmul_f32(v33, v33);
  v35 = vsub_f32(vdup_lane_s32(v6, 0), vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v18, v18, 8uLL)));
  v13.i32[1] = *(v16 + 64);
  v36 = vadd_f32(v13, vsqrt_f32(vadd_f32(vmul_f32(v35, v35), vadd_f32(vzip1_s32(v32, v34), vzip2_s32(v32, v34)))));
  if (v36.f32[0] > v36.f32[1])
  {
    v3 = v36.f32[0];
  }

  else
  {
    v3 = v36.f32[1];
  }

  if (*(v12 + 40) > *(v16 + 72))
  {
    v4 = *(v12 + 40);
  }

  else
  {
    v4 = *(v16 + 72);
  }

  v1 = static DynamicScanVolumeEstimator.SphereSample.staticId + 1;
  if (__OFADD__(static DynamicScanVolumeEstimator.SphereSample.staticId, 1))
  {
    goto LABEL_36;
  }

  v43 = v6.i32[0];
  v44 = *v7.i32;
  v45 = v30;
  ++static DynamicScanVolumeEstimator.SphereSample.staticId;
  v2 = *(v0 + 17);
  if (v2 != 1)
  {
    goto LABEL_29;
  }

  result = DynamicScanVolumeEstimator.removeDebugEntity(id:)(*v12);
  v38 = *(v0 + 248);
  if (v11 >= *(v38 + 16))
  {
LABEL_39:
    __break(1u);
    return result;
  }

  DynamicScanVolumeEstimator.removeDebugEntity(id:)(*(v38 + v17));
LABEL_29:
  swift_beginAccess();
  v0 = *(v0 + 248);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 248) = v0;
  if ((result & 1) == 0)
  {
LABEL_37:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
    v0 = result;
  }

  v39.n128_u64[0] = v45;
  if (v10 >= *(v0 + 16))
  {
    __break(1u);
    goto LABEL_39;
  }

  v39.n128_u64[1] = v43;
  v46 = v39;
  v40 = v0 + 48 * v10;
  *(v40 + 32) = v1;
  *(v40 + 48) = v39;
  *(v40 + 64) = v3;
  *(v40 + 68) = v44;
  *(v40 + 72) = v4;
  *(v5 + 248) = v0;
  swift_endAccess();
  if (v2)
  {
    v41 = specialized static DynamicScanVolumeEstimator.makeDebugSphereEntity(_:massToAssimilate:)(v46, v3, v44, *(v5 + 20));
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v5 + 280);
    *(v5 + 280) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, v1, isUniquelyReferenced_nonNull_native);
    *(v5 + 280) = v47;
    swift_endAccess();
    DynamicScanVolumeEstimator.debugRootEntity.getter();
    type metadata accessor for Entity();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
  }

  swift_beginAccess();
  specialized Array.remove(at:)(v11, v48);
  swift_endAccess();
  return 1;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v13 = *(v9 + 16);
    v12 = *(v9 + 32);
    v11 = *(v9 + 40);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 40) = v11;
  }

  return result;
}

uint64_t DynamicScanVolumeEstimator.recalculateBoundingVolume()()
{
  swift_beginAccess();
  v1 = v0[15].i64[1];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v4 = (v1 + 72);
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  do
  {
    v8 = *(v4 - 5);
    v9 = *(v4 - 6);
    v10 = *(v4 - 2);
    v11 = *(v4 - 1);
    v12 = *v4;
    if ((v0[10].i8[0] & 1) != 0 || (v13 = &v0[9].i64[1], v14 = *v0[9].f32, v15 = vld1q_dup_f64(v13), *v3.f32 = vsub_f32(*v9.f32, v14), v3.i32[2] = vsubq_f32(v9, v15).i32[2], v16 = vmulq_f32(v3, v3), *&v17 = v16.f32[2] + vaddv_f32(*v16.f32), *v16.f32 = vrsqrte_f32(v17), *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))), v18 = vmulq_n_f32(v3, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]), v19 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v0[3], v9.f32[0] + (v10 * v18.f32[0])), v0[4], v9.f32[1] + vmuls_lane_f32(v10, *v18.f32, 1)), v0[5], v9.f32[2] + vmuls_lane_f32(v10, v18, 2)), v0[6]), v3 = vmulq_f32(v19, v19), (sqrtf(v3.f32[2] + vaddv_f32(*v3.f32)) + -1.0) > 0.0))
    {
      if (v0[1].f32[1] >= v11)
      {
        goto LABEL_4;
      }

      v29 = *(v4 - 6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[1].i64[0] + 1, 1, v6);
      }

      v21 = v6[1].u64[0];
      v20 = v6[1].u64[1];
      v22 = v29;
      if (v21 >= v20 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v6);
        v22 = v29;
        v6 = v27;
      }

      v6[1].i64[0] = v21 + 1;
      v23 = &v6[3 * v21];
      v23[2].i64[0] = v8;
      v23[3] = v22;
      v23[4].f32[0] = v10;
      v23[4].f32[1] = v11;
      v23[4].i64[1] = v12;
    }

    else
    {
      v29 = *(v4 - 6);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    }

    v25 = *(v5 + 2);
    v24 = *(v5 + 3);
    v3 = v29;
    if (v25 >= v24 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v5);
      v3 = v29;
      v5 = v26;
    }

    *(v5 + 2) = v25 + 1;
    v7 = &v5[48 * v25];
    v7[2].i64[0] = v8;
    v7[3] = v3;
    v7[4].f32[0] = v10;
    v7[4].f32[1] = v11;
    v7[4].i64[1] = v12;
LABEL_4:
    v4 += 12;
    --v2;
  }

  while (v2);

LABEL_20:
  DynamicScanVolumeEstimator.removeSamples(in:)(v5);

  DynamicScanVolumeEstimator.recomputeBoundingEllipsoid(containing:)(v6);
}

void DynamicScanVolumeEstimator.removeSamples(in:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 248);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = v4 + 32;
    v34 = a1;
    v8 = (a1 + 32);

    v9 = 0;
    v10 = v6 + 1;
    v11 = MEMORY[0x277D84F90];
    while (v9 < *(v4 + 16))
    {
      v16 = (v7 + 48 * v9);
      v17 = *v16;
      v18 = *(v16 + 1);
      v19 = v16[4];
      v20 = v16[5];
      ++v9;
      v21 = v10;
      v22 = v8;
      while (--v21)
      {
        v23 = *v22;
        v22 += 6;
        if (v23 == v17)
        {
          goto LABEL_6;
        }
      }

      v35 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
      }

      v12 = v35;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v35;
      }

      *(v11 + 16) = v14 + 1;
      v15 = v11 + 48 * v14;
      *(v15 + 32) = v17;
      *(v15 + 48) = v12;
      *(v15 + 64) = v19;
      *(v15 + 72) = v20;
      v7 = v4 + 32;
LABEL_6:
      if (v9 == v5)
      {

        a1 = v34;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_16:
    *(v2 + 248) = v11;

    if (*(v2 + 17))
    {
      v24 = *(a1 + 16);
      if (v24)
      {
        v25 = (a1 + 32);
        swift_beginAccess();
        do
        {
          v27 = *v25;
          v25 += 6;
          v26 = v27;
          if (*(*(v2 + 280) + 16))
          {
            specialized __RawDictionaryStorage.find<A>(_:)(v26);
            if (v28)
            {
              type metadata accessor for Entity();

              HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
            }
          }

          swift_beginAccess();
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
          if (v30)
          {
            v31 = v29;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v33 = *(v2 + 280);
            *(v2 + 280) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
            }

            specialized _NativeDictionary._delete(at:)(v31, v33);
            *(v2 + 280) = v33;
          }

          swift_endAccess();
          --v24;
        }

        while (v24);
      }
    }
  }
}

float32x4_t *DynamicScanVolumeEstimator.recomputeBoundingEllipsoid(containing:)(float32x4_t *result)
{
  if (result[1].i64[0])
  {
    v3 = v1;
    v4 = result;
    if (*(v1 + 160))
    {
      v5 = one-time initialization token for logger;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, logger);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = v4;
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_23B824000, v7, v8, "Making a base ellipsoid from the first sphere...", v10, 2u);
        v11 = v10;
        v4 = v9;
        MEMORY[0x23EEB0B70](v11, -1, -1);
      }

      specialized Ellipsoid.init(fromSphere:)(v88, v4[3], v4[4].f32[0]);
      v12 = v88[1];
      v13 = v88[2];
      v14 = v88[3];
      v15 = v88[4];
      v16 = v88[5];
      v17 = v88[6];
      LOBYTE(v98) = 0;
      v18 = *(v3 + 128);
      v106[4] = *(v3 + 112);
      v106[5] = v18;
      v106[6] = *(v3 + 144);
      v107 = *(v3 + 160);
      v19 = *(v3 + 64);
      v106[0] = *(v3 + 48);
      v106[1] = v19;
      v20 = *(v3 + 96);
      v106[2] = *(v3 + 80);
      v106[3] = v20;
      *(v3 + 48) = v88[0];
      *(v3 + 64) = v12;
      *(v3 + 80) = v13;
      *(v3 + 96) = v14;
      *(v3 + 112) = v15;
      *(v3 + 128) = v16;
      *(v3 + 144) = v17;
      *(v3 + 160) = v98;
      DynamicScanVolumeEstimator.currentBoundingEllipsoid.didset(v106);
      v21 = v4[1].i64[0];
      if (!v21)
      {
        __break(1u);
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v4;
      if (!isUniquelyReferenced_nonNull_native || v21 - 1 > v4[1].i64[1] >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v4);
        v87 = v4;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = v4;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v105[0].i64[0] = v27;
        *v26 = 136446210;
        v83 = *(v3 + 64);
        v84 = *(v3 + 48);
        v81 = *(v3 + 96);
        v82 = *(v3 + 80);
        v78 = *(v3 + 128);
        v79 = *(v3 + 112);
        v76 = *(v3 + 144);
        v28 = *(v3 + 160);

        if (v28)
        {
LABEL_41:
          __break(1u);

          __break(1u);
          return result;
        }

        v90 = v84;
        v91 = v83;
        v92 = v82;
        v93 = v81;
        v94 = v79;
        v95 = v78;
        v96 = v76;
        v29 = String.init<A>(describing:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v105[0].i64);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_23B824000, v23, v24, "New ellipsoid =  %{public}s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x23EEB0B70](v27, -1, -1);
        MEMORY[0x23EEB0B70](v26, -1, -1);

        v4 = v25;
        if ((*(v3 + 160) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (*(v3 + 160))
      {
      }
    }

    else
    {

      if (*(v1 + 160))
      {
      }
    }

LABEL_18:
    v33 = *(v3 + 128);
    v32 = *(v3 + 144);
    v35 = *(v3 + 96);
    v34 = *(v3 + 112);
    v37 = *(v3 + 64);
    v36 = *(v3 + 80);
    v105[0] = *(v3 + 48);
    v105[1] = v37;
    v105[2] = v36;
    v105[3] = v35;
    v105[4] = v34;
    v105[5] = v33;
    v105[6] = v32;
    *&v90 = v4;

    specialized MutableCollection<>.sort(by:)(&v90, v105);
    v2 = v90;
    v21 = *(v90 + 16);
    if (!v21)
    {
LABEL_33:
    }

    if (one-time initialization token for logger == -1)
    {
      goto LABEL_20;
    }

LABEL_36:
    swift_once();
    if (*(v2 + 16))
    {
LABEL_20:
      v80 = type metadata accessor for Logger();
      v38 = 0;
      v24 = (v2 + 64);
      v77 = v21 - 1;
      while (1)
      {
        v39 = *v24;
        __swift_project_value_buffer(v80, logger);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = v2;
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v85 = v44;
          *v43 = 136446466;
          v45 = String.init<A>(describing:)();
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v85);

          *(v43 + 4) = v47;
          *(v43 + 12) = 2082;
          v48 = *(v3 + 160);

          if (v48)
          {
            goto LABEL_39;
          }

          v49 = String.init<A>(describing:)();
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v85);

          *(v43 + 14) = v51;
          _os_log_impl(&dword_23B824000, v40, v41, "Assimilating sphere: %{public}s into ellipsoid %{public}s.", v43, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23EEB0B70](v44, -1, -1);
          MEMORY[0x23EEB0B70](v43, -1, -1);

          v2 = v42;
        }

        else
        {
        }

        if (*(v3 + 160))
        {
          break;
        }

        v53 = *(v3 + 128);
        v52 = *(v3 + 144);
        v55 = *(v3 + 96);
        v54 = *(v3 + 112);
        v57 = *(v3 + 64);
        v56 = *(v3 + 80);
        v98 = *(v3 + 48);
        v99 = v57;
        v100 = v56;
        v101 = v55;
        v102 = v54;
        v103 = v53;
        v104 = v52;
        Ellipsoid.computeAABB()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_23B91A6D0;
        *(v58 + 32) = v39;
        *(v58 + 36) = v39;
        *(v58 + 40) = v39;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v58);
        swift_setDeallocating();
        swift_deallocClassInstance();
        BoundingBox.init(min:max:)();
        BoundingBox.union(_:)();
        specialized Ellipsoid.init(inscribedIn:)(v89);
        v59 = v89[1];
        v60 = v89[2];
        v61 = v89[3];
        v62 = v89[4];
        v63 = v89[5];
        v64 = v89[6];
        v86 = 0;
        v65 = *(v3 + 128);
        v94 = *(v3 + 112);
        v95 = v65;
        v96 = *(v3 + 144);
        v97 = *(v3 + 160);
        v66 = *(v3 + 64);
        v90 = *(v3 + 48);
        v91 = v66;
        v67 = *(v3 + 96);
        v92 = *(v3 + 80);
        v93 = v67;
        *(v3 + 48) = v89[0];
        *(v3 + 64) = v59;
        *(v3 + 80) = v60;
        *(v3 + 96) = v61;
        *(v3 + 112) = v62;
        *(v3 + 128) = v63;
        *(v3 + 144) = v64;
        *(v3 + 160) = v86;
        DynamicScanVolumeEstimator.currentBoundingEllipsoid.didset(&v90);

        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v85 = v71;
          *v70 = 136446210;
          v72 = *(v3 + 160);

          if (v72)
          {
            goto LABEL_40;
          }

          v73 = String.init<A>(describing:)();
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v85);

          *(v70 + 4) = v75;
          _os_log_impl(&dword_23B824000, v68, v69, "... new ellipsoid =  %{public}s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v71);
          MEMORY[0x23EEB0B70](v71, -1, -1);
          MEMORY[0x23EEB0B70](v70, -1, -1);
        }

        else
        {
        }

        if (v77 == v38)
        {
          goto LABEL_33;
        }

        ++v38;
        v24 += 12;
        if (v38 >= *(v2 + 16))
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  return result;
}

uint64_t DynamicScanVolumeEstimator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DynamicScanVolumeEstimator.Descriptor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[20])
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

uint64_t storeEnumTagSinglePayload for DynamicScanVolumeEstimator.Descriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1, int32x4_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, int32x4_t *a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, float32x4_t *a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = a5[6];
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_5:
    v9 = *(v5 + 48 * a3 + 16);
    v10 = vsubq_f32(v6, v9);
    v11 = vmulq_f32(v10, v10);
    v12 = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
    v13 = v8;
    v14 = v7;
    while (1)
    {
      v15 = vsubq_f32(v6, *(v14 + 16));
      v16 = vmulq_f32(v15, v15);
      if (v12 >= sqrtf(v16.f32[2] + vaddv_f32(*v16.f32)))
      {
LABEL_4:
        ++a3;
        v7 += 48;
        --v8;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v17 = *(v14 + 48);
      v19 = *(v14 + 80);
      v18 = *(v14 + 88);
      v20 = *(v14 + 16);
      *(v14 + 48) = *v14;
      *(v14 + 64) = v20;
      *(v14 + 80) = *(v14 + 32);
      *v14 = v17;
      *(v14 + 16) = v9;
      *(v14 + 32) = v19;
      *(v14 + 40) = v18;
      v14 -= 48;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, int32x4_t *a5)
{
  v110 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v8 = *v110;
    if (!*v110)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_90;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      if (v5)
      {
      }

      v11 = *(*a3 + 48 * v8 + 16);
      v12 = *(*a3 + 48 * v10 + 16);
      v13 = a5[6];
      v14 = vsub_f32(*v13.i8, *v11.i8);
      v15 = vmul_f32(v14, v14);
      v16 = vsub_f32(*v13.i8, *v12.i8);
      v17 = vmul_f32(v16, v16);
      v18 = vdup_laneq_s32(v13, 2);
      *v12.i8 = vsub_f32(v18, vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)));
      *v12.i8 = vsqrt_f32(vadd_f32(vmul_f32(*v12.i8, *v12.i8), vadd_f32(vzip1_s32(v15, v17), vzip2_s32(v15, v17))));
      v19 = vcgt_f32(vdup_lane_s32(*v12.i8, 1), *v12.i8);
      v8 = v10 + 2;
      if (v10 + 2 < v6)
      {
        v20 = (*a3 + 48 * v10 + 112);
        while (1)
        {
          v21 = vsub_f32(*v13.i8, *v11.i8);
          v22 = vextq_s8(v11, v11, 8uLL).u64[0];
          v11 = *v20->f32;
          v23 = vsub_f32(*v13.i8, *v20);
          v24 = vmul_f32(v23, v23);
          v25 = vmul_f32(v21, v21);
          v26 = vsub_f32(v18, vzip1_s32(*&vextq_s8(v11, v11, 8uLL), v22));
          v27 = vsqrt_f32(vadd_f32(vmul_f32(v26, v26), vadd_f32(vzip1_s32(v24, v25), vzip2_s32(v24, v25))));
          if ((vmvn_s8(veor_s8(vcgt_f32(vdup_lane_s32(v27, 1), v27), v19)).u8[0] & 1) == 0)
          {
            break;
          }

          ++v8;
          v20 += 6;
          if (v6 == v8)
          {
            v8 = v6;
            break;
          }
        }
      }

      if (v19.i8[0])
      {
        if (v8 < v10)
        {
          goto LABEL_119;
        }

        if (v10 < v8)
        {
          v28 = 48 * v8 - 16;
          v29 = 48 * v10 + 40;
          v30 = v8;
          v31 = v10;
          do
          {
            if (v31 != --v30)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v33 = (v32 + v29);
              v34 = *(v32 + v29 - 40);
              v35 = (v32 + v28);
              v36 = *(v33 - 3);
              v38 = *(v33 - 1);
              v37 = *v33;
              v40 = *(v35 - 1);
              v39 = *v35;
              *(v33 - 5) = *(v35 - 2);
              *(v33 - 3) = v40;
              *(v33 - 1) = v39;
              *(v35 - 4) = v34;
              *(v35 - 1) = v36;
              *v35 = v38;
              *(v35 + 1) = v37;
            }

            ++v31;
            v28 -= 48;
            v29 += 48;
          }

          while (v31 < v30);
          v6 = a3[1];
        }
      }
    }

    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_117;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          v9 = result;
LABEL_90:
          v105 = *(v9 + 2);
          if (v105 >= 2)
          {
            while (*a3)
            {
              v106 = *&v9[16 * v105];
              v107 = *&v9[16 * v105 + 24];
              specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v106), (*a3 + 48 * *&v9[16 * v105 + 16]), (*a3 + 48 * v107), v8, a5);
              if (v5)
              {
              }

              if (v107 < v106)
              {
                goto LABEL_113;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
              }

              if (v105 - 2 >= *(v9 + 2))
              {
                goto LABEL_114;
              }

              v108 = &v9[16 * v105];
              *v108 = v106;
              *(v108 + 1) = v107;
              result = specialized Array.remove(at:)(v105 - 1);
              v105 = *(v9 + 2);
              if (v105 <= 1)
              {
              }
            }

            goto LABEL_124;
          }
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v59 = *(v9 + 2);
    v58 = *(v9 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v60;
    v61 = &v9[16 * v59];
    *(v61 + 4) = v10;
    *(v61 + 5) = v8;
    v62 = *v110;
    if (!*v110)
    {
      goto LABEL_125;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v9 + 4);
          v65 = *(v9 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_57:
          if (v67)
          {
            goto LABEL_104;
          }

          v80 = &v9[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_107;
          }

          v86 = &v9[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_111;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v90 = &v9[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_71:
        if (v85)
        {
          goto LABEL_106;
        }

        v93 = &v9[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_109;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_78:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v102 = *&v9[16 * v101 + 32];
        v103 = *&v9[16 * v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 48 * v102), (*a3 + 48 * *&v9[16 * v63 + 32]), (*a3 + 48 * v103), v62, a5);
        if (v5)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v101 >= *(v9 + 2))
        {
          goto LABEL_101;
        }

        v104 = &v9[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        result = specialized Array.remove(at:)(v63);
        v60 = *(v9 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v9[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_102;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_103;
      }

      v75 = &v9[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_105;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_108;
      }

      if (v79 >= v71)
      {
        v97 = &v9[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_112;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v41 = *a3;
  v42 = a5[6];
  v43 = *a3 + 48 * v8 - 48;
  v44 = v10 - v8;
LABEL_30:
  v45 = *(v41 + 48 * v8 + 16);
  v46 = vsubq_f32(v42, v45);
  v47 = vmulq_f32(v46, v46);
  v48 = sqrtf(v47.f32[2] + vaddv_f32(*v47.f32));
  v49 = v44;
  v50 = v43;
  while (1)
  {
    v51 = vsubq_f32(v42, *(v50 + 16));
    v52 = vmulq_f32(v51, v51);
    if (v48 >= sqrtf(v52.f32[2] + vaddv_f32(*v52.f32)))
    {
LABEL_29:
      ++v8;
      v43 += 48;
      --v44;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v41)
    {
      break;
    }

    v53 = *(v50 + 48);
    v55 = *(v50 + 80);
    v54 = *(v50 + 88);
    v56 = *(v50 + 16);
    *(v50 + 48) = *v50;
    *(v50 + 64) = v56;
    *(v50 + 80) = *(v50 + 32);
    *v50 = v53;
    *(v50 + 16) = v45;
    *(v50 + 32) = v55;
    *(v50 + 40) = v54;
    v50 -= 48;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(int8x16_t *__dst, int8x16_t *__src, int8x16_t *a3, int8x16_t *a4, int32x4_t *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = (__src - __dst) / 48;
  v12 = a3 - __src;
  v13 = (a3 - __src) / 48;
  if (v11 >= v13)
  {
    if (a4 != __src || &__src[3 * v13] <= a4)
    {
      memmove(a4, __src, 48 * v13);
    }

    v14 = &v6[3 * v13];
    if (v12 >= 48 && v8 > v9)
    {
LABEL_22:
      v7 -= 3;
      do
      {
        v27 = v7 + 3;
        v28 = v14[-2];
        v29 = v8[-2];
        v30 = a5[6];
        v31 = vsub_f32(*v30.i8, *v28.i8);
        v32 = vmul_f32(v31, v31);
        v33 = vsub_f32(*v30.i8, *v29.i8);
        v34 = vmul_f32(v33, v33);
        *v28.i8 = vsub_f32(vdup_laneq_s32(v30, 2), vzip1_s32(*&vextq_s8(v28, v28, 8uLL), *&vextq_s8(v29, v29, 8uLL)));
        *v28.i8 = vsqrt_f32(vadd_f32(vmul_f32(*v28.i8, *v28.i8), vadd_f32(vzip1_s32(v32, v34), vzip2_s32(v32, v34))));
        if (vcgt_f32(vdup_lane_s32(*v28.i8, 1), *v28.i8).u32[0])
        {
          v38 = v8 - 3;
          if (v27 != v8)
          {
            v39 = *v38;
            v40 = v8[-1];
            v7[1] = v8[-2];
            v7[2] = v40;
            *v7 = v39;
          }

          if (v14 <= v6 || (v8 -= 3, v38 <= v9))
          {
            v8 = v38;
            goto LABEL_33;
          }

          goto LABEL_22;
        }

        v35 = v14 - 3;
        if (v27 != v14)
        {
          v36 = *v35;
          v37 = v14[-1];
          v7[1] = v14[-2];
          v7[2] = v37;
          *v7 = v36;
        }

        v7 -= 3;
        v14 -= 3;
      }

      while (v35 > v6);
      v14 = v35;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[3 * v11] <= a4)
    {
      memmove(a4, __dst, 48 * v11);
    }

    v14 = &v6[3 * v11];
    if (v10 >= 48 && v8 < v7)
    {
      v15 = a5[6];
      v16 = vdup_laneq_s32(v15, 2);
      while (1)
      {
        v17 = v8[1];
        v18 = v6[1];
        v19 = vsub_f32(*v15.i8, *v17.i8);
        v20 = vmul_f32(v19, v19);
        v21 = vsub_f32(*v15.i8, *v18.i8);
        v22 = vmul_f32(v21, v21);
        *v17.i8 = vsub_f32(v16, vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v18, v18, 8uLL)));
        *v17.i8 = vsqrt_f32(vadd_f32(vmul_f32(*v17.i8, *v17.i8), vadd_f32(vzip1_s32(v20, v22), vzip2_s32(v20, v22))));
        if ((vcgt_f32(vdup_lane_s32(*v17.i8, 1), *v17.i8).u8[0] & 1) == 0)
        {
          break;
        }

        v23 = v8;
        v24 = v9 == v8;
        v8 += 3;
        if (!v24)
        {
          goto LABEL_13;
        }

LABEL_14:
        v9 += 3;
        if (v6 >= v14 || v8 >= v7)
        {
          goto LABEL_16;
        }
      }

      v23 = v6;
      v24 = v9 == v6;
      v6 += 3;
      if (v24)
      {
        goto LABEL_14;
      }

LABEL_13:
      v25 = *v23;
      v26 = v23[2];
      v9[1] = v23[1];
      v9[2] = v26;
      *v9 = v25;
      goto LABEL_14;
    }

LABEL_16:
    v8 = v9;
  }

LABEL_33:
  v41 = ((v14 - v6) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v42 = (v41 >> 3) + (v41 >> 63);
  if (v8 != v6 || v8 >= &v6[3 * v42])
  {
    memmove(v8, v6, 48 * v42);
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized static DynamicScanVolumeEstimator.makeDebugEllipsoidEntity()()
{
  v0 = type metadata accessor for UnlitMaterial();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.0 alpha:0.8];
  UnlitMaterial.init(color:)();
  type metadata accessor for MeshResource();
  static MeshResource.generateSphere(radius:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B91A6F0;
  v5 = MEMORY[0x277CDAC30];
  *(v4 + 56) = v0;
  *(v4 + 64) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  type metadata accessor for ModelEntity();
  swift_allocObject();

  ModelEntity.init(mesh:materials:)();
  type metadata accessor for Entity();
  swift_allocObject();
  v7 = Entity.init()();
  HasHierarchy.addChild(_:preservingWorldTransform:)();

  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t specialized static DynamicScanVolumeEstimator.makeBoxEntity()()
{
  v0 = type metadata accessor for MaterialScalarParameter();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for SimpleMaterial();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:1.0 alpha:0.75];
  MaterialScalarParameter.init(integerLiteral:)();
  SimpleMaterial.init(color:roughness:isMetallic:)();
  type metadata accessor for MeshResource();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static DynamicScanVolumeEstimator.makeBoxEntity());
  static MeshResource.generateBox(size:cornerRadius:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23B91A6F0;
  v6 = MEMORY[0x277CDAC50];
  *(v5 + 56) = v1;
  *(v5 + 64) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
  type metadata accessor for ModelEntity();
  swift_allocObject();
  v8 = ModelEntity.init(mesh:materials:)();
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t specialized static DynamicScanVolumeEstimator.makeDebugSphereEntity(_:massToAssimilate:)(__n128 a1, float a2, float a3, float a4)
{
  v20 = a1;
  v6 = type metadata accessor for UnlitMaterial();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 1.0;
  if ((a3 / a4) <= 1.0)
  {
    v10 = a3 / a4;
  }

  v11 = 0.0;
  if ((a3 / a4) > 0.0)
  {
    v11 = v10;
  }

  v12 = v11;
  v13 = 1.0 - v11;
  v14 = objc_allocWithZone(MEMORY[0x277D75348]);
  [v14 initWithRed:v13 green:0.0 blue:v12 alpha:{1.0, *&v20}];
  UnlitMaterial.init(color:)();
  type metadata accessor for MeshResource();
  static MeshResource.generateSphere(radius:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23B91A6F0;
  v16 = MEMORY[0x277CDAC30];
  *(v15 + 56) = v6;
  *(v15 + 64) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  (*(v7 + 16))(boxed_opaque_existential_1, v9, v6);
  type metadata accessor for ModelEntity();
  swift_allocObject();

  v18 = ModelEntity.init(mesh:materials:)();
  HasTransform.setPosition(_:relativeTo:)();

  (*(v7 + 8))(v9, v6);
  return v18;
}

uint64_t getEnumTagSinglePayload for DynamicScanVolumeEstimator.BoxAlgorithm(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicScanVolumeEstimator.BoxAlgorithm(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicScanVolumeEstimator.BoxAlgorithm and conformance DynamicScanVolumeEstimator.BoxAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DynamicScanVolumeEstimator.BoxAlgorithm and conformance DynamicScanVolumeEstimator.BoxAlgorithm;
  if (!lazy protocol witness table cache variable for type DynamicScanVolumeEstimator.BoxAlgorithm and conformance DynamicScanVolumeEstimator.BoxAlgorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicScanVolumeEstimator.BoxAlgorithm and conformance DynamicScanVolumeEstimator.BoxAlgorithm);
  }

  return result;
}

double ResolvedModel3D.resizable(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = a1;

  return result;
}

__n128 __swift_memcpy65_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ResolvedModel3D(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for ResolvedModel3D(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RealityView.body.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t RealityViewContentProtocol.subscribe<A>(to:componentType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  (*(a8 + 48))(a1, v10, a2, a3, a4, a5, a7, a9, a6, a8);
  return outlined destroy of EventSource?(v10);
}

uint64_t outlined destroy of EventSource?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RealityViewEntityCollection.startIndex.getter(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for Entity.ChildCollection();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  v6 = HasHierarchy.children.getter();
  v7 = a1(v6);
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t RealityViewEntityCollection.count.getter()
{
  v0 = type metadata accessor for Entity.ChildCollection();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v4 = dispatch thunk of Collection.distance(from:to:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection()
{
  result = lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection;
  if (!lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection)
  {
    type metadata accessor for Entity.ChildCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection);
  }

  return result;
}

uint64_t RealityViewEntityCollection.subscript.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Entity.ChildCollection();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  v8 = a2(a1);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t RealityViewEntityCollection.insert<A>(contentsOf:beforeIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Entity.ChildCollection();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  Entity.ChildCollection.insert<A>(contentsOf:beforeIndex:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t RealityViewEntityCollection.remove(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for Entity.ChildCollection();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  a2(a1);
  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall RealityViewEntityCollection.removeAll()()
{
  v0 = type metadata accessor for Entity.ChildCollection();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  Entity.ChildCollection.removeAll()();
  (*(v1 + 8))(v3, v0);
}

uint64_t RealityViewEntityCollection.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for Entity.ChildCollection();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  a4(a1, a2, a3);
  return (*(v9 + 8))(v11, v8);
}

uint64_t protocol witness for EntityCollection.remove(_:) in conformance RealityViewEntityCollection(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = type metadata accessor for Entity.ChildCollection();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  a4(a1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for EntityCollection.removeAll() in conformance RealityViewEntityCollection()
{
  v0 = type metadata accessor for Entity.ChildCollection();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  Entity.ChildCollection.removeAll()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t protocol witness for Collection.startIndex.getter in conformance RealityViewEntityCollection@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Entity.ChildCollection();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  v8 = HasHierarchy.children.getter();
  v9 = a1(v8);
  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance RealityViewEntityCollection(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  v3 = type metadata accessor for Entity.ChildCollection();
  v4 = *(v3 - 8);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(*(v4 + 64));
  }

  v6 = v5;
  a1[1] = v5;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  v7 = Entity.ChildCollection.subscript.getter();
  a1[2] = v7;
  (*(v4 + 8))(v6, v3);
  *a1 = v7;
  return protocol witness for Collection.subscript.read in conformance RealityViewEntityCollection;
}

void protocol witness for Collection.subscript.read in conformance RealityViewEntityCollection(uint64_t a1)
{
  v1 = *(a1 + 8);

  free(v1);
}

void *specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection(a1, a2, a3);
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v9 < v10)
  {
    __break(1u);
  }

  else if (v10 <= a1 && v9 >= a2)
  {
    a4[1] = a2;
    a4[2] = a3;
    *a4 = a1;
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.indices.getter in conformance RealityViewEntityCollection@<X0>(void *a3@<X8>)
{
  *a3 = *v3;

  dispatch thunk of Collection.startIndex.getter();
  return dispatch thunk of Collection.endIndex.getter();
}

BOOL protocol witness for Collection.isEmpty.getter in conformance RealityViewEntityCollection(uint64_t a1, uint64_t a2)
{
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  return v4 == v3;
}

uint64_t protocol witness for Collection.count.getter in conformance RealityViewEntityCollection()
{
  v0 = type metadata accessor for Entity.ChildCollection();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v4 = dispatch thunk of Collection.distance(from:to:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void specialized Collection.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    if (a2)
    {
      lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection(a1, a2, a3);
      do
      {
        dispatch thunk of Collection.index(after:)();
        --v3;
      }

      while (v3);
    }
  }
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance RealityViewEntityCollection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v6 = result;
    if (a2)
    {
      while (v6 != a3)
      {
        lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection(result, a2, a3);
        result = dispatch thunk of Collection.index(after:)();
        if (!--v4)
        {
          return v6;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = result;
  if (result != a2)
  {
    for (i = 0; ; ++i)
    {
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection(result, a2, a3);
      dispatch thunk of Collection.index(after:)();
      result = v6;
      if (v6 == a2)
      {
        return v4;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return 0;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance RealityViewEntityCollection(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance RealityViewEntityCollection(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance RealityViewEntityCollection@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  v4 = type metadata accessor for Entity.ChildCollection();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  v9 = Entity.ChildCollection.index(after:)(v8);
  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance RealityViewEntityCollection@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  *a2 = *v4;
  lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection(a1, a3, a4);

  dispatch thunk of Collection.startIndex.getter();
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance RealityViewEntityCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(*v3, a2, a3);

  return v4;
}

uint64_t RealityViewContentProtocol.add(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = (*(a3 + 40))(v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a4(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  return v6(v10, 0);
}

unint64_t lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection;
  if (!lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection;
  if (!lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection;
  if (!lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewEntityCollection and conformance RealityViewEntityCollection);
  }

  return result;
}

uint64_t type metadata completion function for RealityView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RealityViewDefaultPlaceholder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RealityViewDefaultPlaceholder(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for RealityViewEntityCollection(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for RealityViewEntityCollection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection(a1, a2, a3);
  v3 = dispatch thunk of Collection.count.getter();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit6EntityC_Tt1g5(v3, 0);

  v6 = specialized Sequence._copySequenceContents(initializing:)(&v8, (v5 + 4), v4, v9);

  if (v6 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v5;
}

void SphericalShellWavefrontAnimation.sample(at:startingAt:)(double a1, double a2)
{
  v3 = (a1 - a2) / *(v2 + 40);
  v4 = 0.0;
  v5 = 0.0;
  if (v3 > 0.0)
  {
    v5 = 1.0;
    if (v3 > 1.0)
    {
LABEL_3:
      v4 = v5;
      goto LABEL_8;
    }

    v5 = v3;
    if (v5 <= 0.0)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
      if (v5 <= 1.0)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_8:
  v6 = *(v2 + 52);
  v7 = (*(v2 + 32) + v6) * (1.0 - ((1.0 - v4) * ((1.0 - v4) * (1.0 - v4))));
  v8 = 0.001;
  if (v6 <= 0.001)
  {
    v6 = 0.001;
  }

  if (*(v2 + 48) > 0.001)
  {
    v8 = *(v2 + 48);
  }

  if (((v7 + 0.0) - (v8 + (v5 * (v6 - v8)))) >= v7)
  {
    __break(1u);
  }
}

__n128 __swift_memcpy40_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SphericalShellWavefrontAnimation.Descriptor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SphericalShellWavefrontAnimation.Descriptor(uint64_t result, int a2, int a3)
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

double Ellipsoid.computeAABB()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  v6 = *(v0 + 5);
  v7 = *(v0 + 4);
  v8 = *(v0 + 6);
  v2 = specialized simd_float4x4.init(translation:rotation:scale:)(v8, v6, v7);
  *(inited + 32) = LODWORD(v2);
  specialized simd_float4x4.init(translation:rotation:scale:)(v8, v6, v7);
  *(inited + 36) = v3;
  specialized simd_float4x4.init(translation:rotation:scale:)(v8, v6, v7);
  *(inited + 40) = v4;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  swift_setDeallocating();
  BoundingBox.init(min:max:)();
  return result;
}

__n128 Ellipsoid.gravityAlignedBox.getter()
{
  v0 = Ellipsoid.createSurfaceSamples(radialSegments:verticalSegments:)(100, 100);
  v1 = v0[1].i64[0];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    *&v32[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *&v32[0];
    v3 = &v0[2];
    v4 = *(*&v32[0] + 16);
    v5 = 0uLL;
    do
    {
      v6 = *v3;
      *&v32[0] = v2;
      v7 = *(v2 + 24);
      if (v4 >= v7 >> 1)
      {
        v30 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v4 + 1, 1);
        v6 = v30;
        v5 = 0uLL;
        v2 = *&v32[0];
      }

      *(v2 + 16) = v4 + 1;
      *(v2 + 16 * v4 + 32) = vtrn2q_s32(vrev64q_s32(v6), v5);
      ++v3;
      ++v4;
      --v1;
    }

    while (v1);
  }

  specialized static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:)(v2, v32);
  v26 = v32[0];
  v28 = v32[3];
  v31 = v32[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  *(inited + 32) = vzip1_s32(*v31.i8, *v28.i8);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v10 = v9;
  swift_setDeallocating();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_23B91BFD0;
  *(v11 + 32) = vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v28, v28, 8uLL));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v11);
  v13 = v12;
  swift_setDeallocating();
  specialized static MathHelpers.computeEigenvectorsOfSymmetric2x2Matrix(_:)(v10, v13);
  v15 = v14;
  v31.i64[0] = v16;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_23B91BFD0;
  *(v17 + 32) = vsqrt_f32(v15);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v17);
  v28.i64[0] = v18;
  swift_setDeallocating();
  v15.i32[0] = atan2f(*v31.i32, *&v31.i32[1]);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Ellipsoid.gravityAlignedBox.getter);
  __sincosf_stret(v15.f32[0] * 0.5);
  specialized static MathHelpers.minAndMaxOver(points:)(v0);
  v27 = v19;
  v25 = v20;

  Transform.init()();
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_23B91A6D0;
  *(v21 + 32) = *v28.i32 + *v28.i32;
  *(v21 + 36) = v25 - v27;
  *(v21 + 40) = *&v28.i32[1] + *&v28.i32[1];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v21);
  v29 = v22;
  swift_setDeallocating();
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23B91A6D0;
  *(v23 + 32) = v26;
  *(v23 + 36) = (v25 + v27) * 0.5;
  *(v23 + 40) = DWORD2(v26);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v23);
  swift_setDeallocating();
  return v29;
}

float Ellipsoid.signedDistanceField(at:)(__n128 a1)
{
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6E0;
  *(inited + 32) = a1.n128_u64[0];
  *(inited + 40) = a1.n128_u32[2];
  *(inited + 44) = 1065353216;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
  v8 = v3;
  swift_setDeallocating();
  v4 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v8.f32[0]), v10, *v8.f32, 1), v11, v8, 2), v12, v8, 3);
  v5 = vmulq_f32(v4, v4);
  return sqrtf(v5.f32[2] + vaddv_f32(*v5.f32)) + -1.0;
}

uint64_t Ellipsoid.createSurfaceSamples(radialSegments:verticalSegments:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Ellipsoid.createSurfaceSamples(radialSegments:verticalSegments:));
  v7 = Sphere.createSurfaceSamples(radialSegments:verticalSegments:)(a1, a2, v6, 1.0);
  v8 = *(v7 + 16);
  if (v8)
  {
    v28 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    *v9.i64 = simd_matrix4x4(v3[5]);
    v25 = v10;
    v26 = v9;
    v23 = v12;
    v24 = v11;
    v13 = v28;
    v14 = 32;
    do
    {
      v27 = *(v7 + v14);
      simd_float4x4.scale(_:)();
      SIMD4<>._xyz.getter();
      SIMD4<>._xyz.setter();
      v15 = v26;
      v16 = v25;
      v17 = v24;
      v18 = v23;
      v20 = *(v28 + 16);
      v19 = *(v28 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v15 = v26;
        v16 = v25;
        v18 = v23;
        v17 = v24;
      }

      v21 = vaddq_f32(v18, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v27.f32[0]), v16, *v27.f32, 1), v17, v27, 2));
      v21.i32[3] = 0;
      *(v28 + 16) = v20 + 1;
      *(v28 + 16 * v20 + 32) = v21;
      v14 += 16;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

__n128 specialized Ellipsoid.init(fromSphere:)@<Q0>(uint64_t a1@<X8>, float32x4_t a2@<Q0>, float a3@<S1>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Ellipsoid.init(fromSphere:));
  v5.i32[3] = 1.0;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = a3;
  *(inited + 36) = a3;
  *(inited + 40) = a3;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v9 = v7;
  swift_setDeallocating();
  static simd_quatf.identity.getter();
  *v12.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(a2, v10, v9);
  *a1 = __invert_f4(v12);
  *(a1 + 64) = v9;
  *(a1 + 80) = v10;
  result = a2;
  *(a1 + 96) = a2;
  return result;
}

double simd_matrix4x4(float32x4_t a1)
{
  _S3 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = a1.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

__n128 specialized Ellipsoid.init(inscribedIn:)@<Q0>(uint64_t a1@<X8>)
{
  BoundingBox.center.getter();
  v12 = v4;
  BoundingBox.extents.getter();
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v7.n128_u64[0] = vmulq_f32(v6, v5).u64[0];
  v7.n128_u64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, v6, 2));
  v11 = v7;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Ellipsoid.init(inscribedIn:));
  v8.i32[3] = 1.0;
  v10 = v8;
  static simd_quatf.identity.getter();
  *v13.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v12, v10, v11);
  *a1 = __invert_f4(v13);
  *(a1 + 64) = v11;
  *(a1 + 80) = v10;
  result = v12;
  *(a1 + 96) = v12;
  return result;
}

uint64_t RealityViewCameraController.init()()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  v2 = *MEMORY[0x277CDB258];
  v3 = type metadata accessor for CameraControls.InteractionMode();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_automaticTarget) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_worldUp) = xmmword_23B91A740;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaFriction) = 1020054733;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_minimumVerticalAngle) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_maximumVerticalAngle) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_minimumHorizontalAngle) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_maximumHorizontalAngle) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_isInertiaRunning) = 0;
  v4 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation) = xmmword_23B91BFE0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaVelocityThreshold) = 1036831949;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_intertiaSimStepPerSecond) = 1114636288;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_maxInfiniteInertiaVelocity) = 1101004800;
  v5 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState);
  v5[4] = 0u;
  v5[5] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  v6 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inputLocation);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  v7 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball;
  *v7 = 0;
  *(v7 + 16) = xmmword_23B91A740;
  *(v7 + 32) = xmmword_23B91A740;
  v8 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertia;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0x3F8000003CCCCCCDLL;
  *(v8 + 24) = 1065353216;
  *(v8 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_up) = xmmword_23B91A740;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_minimumAngles) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_maximumAngles) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_handlingInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_drivenBydefaultNavigationCameraController) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inDragGesture) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale) = 1065353216;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_hasInertia) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController__orbitTargetEntity) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView) = 0;
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_lastMagValue) = 0xBFF0000000000000;
  return v0;
}

uint64_t RealityViewCameraController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  v2 = type metadata accessor for CameraControls.InteractionMode();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for RealityViewCameraController(uint64_t a1)
{
  result = type metadata accessor for CameraControls.InteractionMode();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RealityViewCameraController.Inertia(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
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

uint64_t storeEnumTagSinglePayload for RealityViewCameraController.Inertia(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy96_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for RealityViewCameraController.OrientationState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RealityViewCameraController.OrientationState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraControlsPublisher(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for CameraControlsPublisher(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for CameraControlsUpdate(uint64_t a1)
{
  result = type metadata accessor for DragGesture.Value();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MagnifyGesture.Value();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for CameraControlsModifier(uint64_t a1)
{
  type metadata accessor for Environment<CameraControls>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for State<CameraControlsPublisher>();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<CameraControls>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<CameraControls>)
  {
    type metadata accessor for CameraControls();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<CameraControls>);
    }
  }
}

void type metadata accessor for State<CameraControlsPublisher>()
{
  if (!lazy cache variable for type metadata for State<CameraControlsPublisher>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<CameraControlsPublisher>);
    }
  }
}

uint64_t Entity.update(from:overrideDistance:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Entity.ComponentSet();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaEnabled) & 1) != 0 || *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube) == 1)
  {
    v10 = dispatch thunk of Entity.components.getter();
    lazy protocol witness table accessor for type _RealityViewCameraControllerSystem and conformance _RealityViewCameraControllerSystem(v10, v11, v12);

    v13 = static System.registerSystem()();
    v43[0] = partial apply for closure #1 in Entity.update(from:overrideDistance:);
    v43[1] = a1;
    lazy protocol witness table accessor for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent(v13, v14, v15);
    Entity.ComponentSet.set<A>(_:)();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v16 = dispatch thunk of Entity.components.modify();
    lazy protocol witness table accessor for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent(v16, v17, v18);
    Entity.ComponentSet.subscript.setter();
    v16(v43, 0);
  }

  v19 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView;
  if (!*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView) || (v43[0] = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView), v44 = v2, type metadata accessor for Entity(), lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D8]), , v20 = dispatch thunk of static Equatable.== infix(_:_:)(), , (v20 & 1) == 0)) && (*(a1 + v19) = v3, , , *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController__orbitTargetEntity)) || (a2)
  {
    v21.f32[0] = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale) + *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale);
    if (v21.f32[0] <= 0.0001)
    {
      v21.f32[0] = 0.0001;
    }
  }

  else
  {
    type metadata accessor for Entity();
    HasTransform.position(relativeTo:)();
    v23 = vsubq_f32(v22, *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target));
    v21 = vmulq_f32(v23, v23);
    v21.f32[0] = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
  }

  v42 = v21;
  type metadata accessor for Entity();
  HasTransform.orientation(relativeTo:)();
  v41 = v24;
  v25 = RealityViewCameraController.useOrbitInteractionMode.getter();
  v26 = v41;
  if (v25)
  {
    v27 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation);
    v28 = vnegq_f32(v27);
    v29 = vtrn2q_s32(v27, vtrn1q_s32(v27, v28));
    v30 = vrev64q_s32(v27);
    v30.i32[0] = v28.i32[1];
    v30.i32[3] = v28.i32[2];
    v26 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v27, v41, 3), v30, v41, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v27, v28, 8uLL), v41.n128_u64[0], 1), vextq_s8(v29, v29, 8uLL), v41.n128_f32[0]));
  }

  *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation) = xmmword_23B91BFE0;
  *&v31 = MEMORY[0x23EEAF8D0](v26);
  v40[4] = v31;
  v40[5] = v32;
  v40[6] = v33;
  v41 = v34;
  v35.n128_f32[0] = specialized simd_float4x4.init(translation:)(*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target));
  v40[0] = v35;
  v40[1] = v36;
  v40[2] = v37;
  v40[3] = v38;
  v35.n128_u64[0] = 0;
  v35.n128_u64[1] = v42.u32[0];
  specialized simd_float4x4.init(translation:)(v35);
  return HasTransform.setTransformMatrix(_:relativeTo:)();
}

Swift::Void __swiftcall RealityViewCameraController.updateInertia()()
{
  v1 = type metadata accessor for CameraControls.InteractionMode();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  *v8.i64 = CACurrentMediaTime();
  v9 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertia;
  v10 = fmin(*v8.i64 - *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertia + 8), 1.0) * 60.0;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v11 = v10;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  *(v9 + 8) = v8.i64[0];
  v12 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaFriction);
  v8.i64[0] = *(v9 + 32);
  if (v12 > 0.0)
  {
    do
    {
      if (v10 < 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      if (v10 >= 1.0)
      {
        v13 = 1.0;
      }

      v14 = v13;
      *v8.f32 = vmul_n_f32(*v8.f32, 1.0 - (v12 * v14));
      v10 = v10 + -1.0;
      --v11;
    }

    while (v11);
    *(v9 + 32) = v8.i64[0];
  }

  *v8.f32 = vadd_f32(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 32), vadd_f32(vmul_f32(*v8.f32, vdup_n_s32(0x3C23D70Au)), *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 16)));
  v8.f32[2] = COERCE_FLOAT(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 40)) + (COERCE_FLOAT(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 24)) + 0.0);
  v15 = vmulq_f32(v8, v8);
  *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
  *v15.f32 = vrsqrte_f32(v16);
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 32) = vmulq_n_f32(v8, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  swift_beginAccess();
  v25 = v2[2];
  v25(v7, v0 + v17, v1);
  v18 = *MEMORY[0x277CDB268];
  v26 = v0;
  v19 = v2[13];
  v19(v5, v18, v1);
  v20 = static CameraControls.InteractionMode.== infix(_:_:)();
  v21 = v5;
  v22 = v2[1];
  v22(v21, v1);
  v22(v7, v1);
  if (v20 & 1) != 0 || (v25(v7, v26 + v17, v1), v19(v21, *MEMORY[0x277CDB250], v1), v23 = static CameraControls.InteractionMode.== infix(_:_:)(), v22(v21, v1), v22(v7, v1), (v23))
  {
    RealityViewCameraController.updateArcballOrientation()();
  }
}

Swift::Void __swiftcall RealityViewCameraController.updateArcballOrientation()()
{
  v1 = type metadata accessor for CameraControls.InteractionMode();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  swift_beginAccess();
  v9 = v2[2];
  v34 = v0;
  v33.i64[0] = v9;
  v9(v7, v0 + v8, v1);
  v10 = v2[13];
  v10(v5, *MEMORY[0x277CDB270], v1);
  v11 = static CameraControls.InteractionMode.== infix(_:_:)();
  v12 = v2[1];
  v12(v5, v1);
  v12(v7, v1);
  if ((v11 & 1) == 0)
  {
    (v33.i64[0])(v7, v34 + v8, v1);
    v10(v5, *MEMORY[0x277CDB258], v1);
    v13 = static CameraControls.InteractionMode.== infix(_:_:)();
    v12(v5, v1);
    v12(v7, v1);
    if ((v13 & 1) == 0)
    {
      v14 = v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball;
      v16 = *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 16);
      v15 = *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 32);
      v17 = vsubq_f32(v16, v15);
      v18 = fabsf(v17.f32[1]);
      v19 = fabsf(v17.f32[0]) < 0.0001 && v18 < 0.0001;
      v20 = fabsf(v17.f32[2]);
      if (!v19 || v20 >= 0.0001)
      {
        v22 = vmulq_f32(v16, v15);
        v23 = v22.f32[2] + vaddv_f32(*v22.f32);
        v24 = v34;
        if (fabsf(v23) < 1.0)
        {
          v32 = *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 16);
          v33 = v15;
          v25 = acosf(v23);
          v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), vnegq_f32(v32)), v33, vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL));
          v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
          v28 = vmulq_f32(v26, v26);
          *&v29 = v28.f32[1] + (v28.f32[2] + v28.f32[0]);
          *v28.f32 = vrsqrte_f32(v29);
          *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32)));
          v33 = vmulq_n_f32(v27, vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
          v30 = __sincosf_stret((v25 * -2.0) * 0.5);
          v31 = vmulq_n_f32(v33, v30.__sinval);
          v31.i32[3] = LODWORD(v30.__cosval);
          *(v24 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation) = v31;
          if (*(v24 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
          {

            Entity.update(from:overrideDistance:)(v24, 0);
          }
        }

        *(v14 + 16) = *(v14 + 32);
      }
    }
  }
}

Swift::Void __swiftcall RealityViewCameraController.updateTargetCube()()
{
  v1 = type metadata accessor for MaterialScalarParameter();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for Scene.AnchorCollection();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
  {

    v9 = dispatch thunk of Entity.scene.getter();

    if (v9)
    {
      *&v20 = v0;
      dispatch thunk of Scene.anchors.getter();
      lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0], MEMORY[0x277CDB0D0]);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v22 == v21[0])
      {
        v19 = v3;
        v18 = *(v3 + 8);
        v18(v8, v2);
      }

      else
      {
        v10 = dispatch thunk of Collection.subscript.read();

        v10(v21, 0);
        v11 = *(v3 + 8);
        v11(v8, v2);
        v12 = dispatch thunk of Entity.findEntity(named:)();

        if (v12)
        {
LABEL_10:
          v20 = *(v20 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target);
          type metadata accessor for Entity();
          HasTransform.setPosition(_:relativeTo:)();

          return;
        }

        v18 = v11;
        v19 = v3;
      }

      type metadata accessor for MeshResource();
      static MeshResource.generateBox(size:cornerRadius:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_23B91A6F0;
      v14 = [objc_opt_self() blueColor];
      MaterialScalarParameter.init(floatLiteral:)();
      v15 = type metadata accessor for SimpleMaterial();
      v16 = MEMORY[0x277CDAC50];
      *(v13 + 56) = v15;
      *(v13 + 64) = v16;
      __swift_allocate_boxed_opaque_existential_1((v13 + 32));
      SimpleMaterial.init(color:roughness:isMetallic:)();
      type metadata accessor for ModelEntity();
      swift_allocObject();
      ModelEntity.init(mesh:materials:)();
      dispatch thunk of Entity.name.setter();
      dispatch thunk of Scene.anchors.getter();
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v22 == v21[0])
      {
        v18(v6, v2);
      }

      else
      {
        v17 = dispatch thunk of Collection.subscript.read();

        v17(v21, 0);
        v18(v6, v2);
        HasHierarchy.addChild(_:preservingWorldTransform:)();
      }

      goto LABEL_10;
    }
  }
}

double RealityViewCameraController.mapToSphere(_:viewport:)(float32x2_t a1, __n128 a2)
{
  v25 = a2;
  v4 = type metadata accessor for CameraControls.InteractionMode();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11.n128_u32[0] = v25.n128_u32[1];
  if (v25.n128_f32[0] > v25.n128_f32[1])
  {
    v11.n128_f32[0] = v25.n128_f32[0];
  }

  v25 = v11;
  v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  swift_beginAccess();
  (*(v5 + 16))(v10, v2 + v12, v4);
  (*(v5 + 104))(v8, *MEMORY[0x277CDB268], v4);
  LOBYTE(v12) = static CameraControls.InteractionMode.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  if (v12)
  {
    a1 = vadd_f32(*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball), a1);
  }

  *v14.i32 = v25.n128_f32[0] * 0.5;
  v16 = vsub_f32(a1, vdup_lane_s32(v14, 0));
  v17 = -*&v16.i32[1];
  v18 = vdup_lane_s32(v16, 0);
  v18.f32[0] = v17;
  v19 = vdiv_f32(v18, vdup_lane_s32(v25.n128_u64[0], 0));
  v20 = vaddv_f32(vmul_f32(v19, v19));
  if (v20 >= 0.125)
  {
    v21 = 0.125 / sqrtf(v20);
  }

  else
  {
    v21 = sqrtf(0.25 - v20);
  }

  *v15.f32 = vrev64_s32(v19);
  v15.f32[2] = v21;
  v22 = vmulq_f32(v15, v15);
  *&v23 = v22.f32[2] + vaddv_f32(*v22.f32);
  *v22.f32 = vrsqrte_f32(v23);
  *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32)));
  *&result = vmulq_n_f32(v15, vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32))).f32[0]).u64[0];
  return result;
}

Swift::Void __swiftcall RealityViewCameraController.updateRotation()()
{
  v1 = type metadata accessor for CameraControls.InteractionMode();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v51 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
    swift_beginAccess();
    v10 = v2[2];
    v57 = v0;
    v55.i64[0] = v10;
    v10(v7, v0 + v9, v1);
    v11 = v2[13];
    v11(v5, *MEMORY[0x277CDB270], v1);
    v56 = v8;

    v12 = static CameraControls.InteractionMode.== infix(_:_:)();
    v13 = v2[1];
    v13(v5, v1);
    v13(v7, v1);
    if (v12 & 1) != 0 || ((v55.i64[0])(v7, v57 + v9, v1), v11(v5, *MEMORY[0x277CDB258], v1), v14 = static CameraControls.InteractionMode.== infix(_:_:)(), v13(v5, v1), v13(v7, v1), (v14) || ((v55.i64[0])(v7, v57 + v9, v1), v11(v5, *MEMORY[0x277CDB260], v1), v15 = static CameraControls.InteractionMode.== infix(_:_:)(), v13(v5, v1), v13(v7, v1), (v15))
    {
      v16 = v57;
      if ((RealityViewCameraController.useOrbitInteractionMode.getter() & 1) == 0)
      {
        type metadata accessor for Entity();
        HasTransform.orientation(relativeTo:)();
        v55 = v21;
        HasTransform.setOrientation(_:relativeTo:)();
        RealityViewCameraController.orientationForMode()(v22);
        v54 = v23;
        v24 = HasTransform.orientation.modify();
        v26 = vnegq_f32(v54);
        v27 = vtrn2q_s32(v54, vtrn1q_s32(v54, v26));
        v28 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v54, v26, 8uLL), *v25, 1), vextq_s8(v27, v27, 8uLL), COERCE_FLOAT(*v25->f32));
        v29 = vrev64q_s32(v54);
        v29.i32[0] = v26.i32[1];
        v29.i32[3] = v26.i32[2];
        *v25->f32 = vaddq_f32(v28, vmlaq_laneq_f32(vmulq_laneq_f32(v54, *v25->f32, 3), v29, *v25->f32, 2));
        v24(v58, 0);
        HasTransform.orientation(relativeTo:)();
        v30 = vmulq_f32(v55, v55);
        *v30.i8 = vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
        v30.i32[0] = vadd_f32(*v30.i8, vdup_lane_s32(*v30.i8, 1)).u32[0];
        v31 = vrecpe_f32(v30.u32[0]);
        v32 = vmul_f32(v31, vrecps_f32(v30.u32[0], v31));
        v33 = vmulq_n_f32(vmulq_f32(v55, xmmword_23B91C020), vmul_f32(v32, vrecps_f32(v30.u32[0], v32)).f32[0]);
        v34 = vnegq_f32(v33);
        v35 = vtrn2q_s32(v33, vtrn1q_s32(v33, v34));
        v36 = vrev64q_s32(v33);
        v36.i32[0] = v34.i32[1];
        v36.i32[3] = v34.i32[2];
        v52 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v33, v37, 3), v36, v37, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v33, v34, 8uLL), *v37.f32, 1), vextq_s8(v35, v35, 8uLL), v37.f32[0]));
        HasTransform.transform.getter();
        *&v39 = specialized simd_float4x4.init(translation:)(v38);
        v51[0] = v39;
        v51[1] = v40;
        v51[2] = v41;
        v51[4] = v42;
        HasTransform.transform.getter();
        v43.n128_u32[3] = 0;
        v43.n128_u64[0] = vsubq_f32(0, v44).u64[0];
        v43.n128_f32[2] = 0.0 - v44.f32[2];
        *&v45 = specialized simd_float4x4.init(translation:)(v43);
        v51[3] = v45;
        v53 = v46;
        v54 = v47;
        v55 = v48;
        MEMORY[0x23EEAF8D0](v52);
        v49 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target;
        simd_float4x4.transform(position:)();
        v55 = v50;

        *(v16 + v49) = v55;
        return;
      }

      v17 = *(v16 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState + 16);
      v54 = *(v16 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState + 32);
      v55 = v17;
      v18 = *(v16 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState + 48);
      v52 = *(v16 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState + 64);
      v53 = v18;
      type metadata accessor for Entity();
      HasTransform.setTransformMatrix(_:relativeTo:)();
      RealityViewCameraController.orientationForMode()(v19);
      Entity.rotateBy(_:aroundTarget:)(v20, *(v16 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target));
    }
  }
}

uint64_t RealityViewCameraController.useOrbitInteractionMode.getter()
{
  v1 = type metadata accessor for CameraControls.InteractionMode();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  swift_beginAccess();
  v18 = v2[2];
  v18(v7, v0 + v8, v1);
  v9 = *MEMORY[0x277CDB250];
  v17 = v2[13];
  v17(v5, v9, v1);
  v10 = static CameraControls.InteractionMode.== infix(_:_:)();
  v11 = v2[1];
  v11(v5, v1);
  v11(v7, v1);
  if (v10 & 1) != 0 || (v18(v7, v0 + v8, v1), v17(v5, *MEMORY[0x277CDB268], v1), v12 = static CameraControls.InteractionMode.== infix(_:_:)(), v11(v5, v1), v11(v7, v1), (v12) || (v18(v7, v0 + v8, v1), v17(v5, *MEMORY[0x277CDB258], v1), v13 = static CameraControls.InteractionMode.== infix(_:_:)(), v11(v5, v1), v11(v7, v1), (v13))
  {
    v14 = 1;
  }

  else
  {
    v18(v7, v0 + v8, v1);
    v17(v5, *MEMORY[0x277CDB260], v1);
    v14 = static CameraControls.InteractionMode.== infix(_:_:)();
    v11(v5, v1);
    v11(v7, v1);
  }

  return v14 & 1;
}

Swift::Void __swiftcall RealityViewCameraController.resetOrientationState()()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView;
  v2 = 0uLL;
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
  {
    type metadata accessor for Entity();

    HasTransform.transformMatrix(relativeTo:)();
    v15 = v8;
    v16 = v7;
    v13 = v10;
    v14 = v9;

    v6 = v13;
    v5 = v14;
    v4 = v15;
    v3 = v16;
    v2 = 0uLL;
  }

  v11 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState;
  *(v11 + 16) = v3;
  *(v11 + 32) = v4;
  *(v11 + 48) = v5;
  *(v11 + 64) = v6;
  if (*(v0 + v1))
  {
    type metadata accessor for Entity();

    HasTransform.orientation(relativeTo:)();
    v17 = v12;

    v2 = v17;
  }

  *(v11 + 80) = v2;
  *v11 = 0;
  *(v11 + 8) = 0;
}

void __swiftcall RealityViewCameraController.orientationForMode()(simd_quatf *__return_ptr retstr)
{
  v2 = v1;
  v3 = type metadata accessor for CameraControls.InteractionMode();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v83 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
    swift_beginAccess();
    v12 = v4[2];
    v88.i64[0] = v11;
    *&v90 = v12;
    v12(v9, v2 + v11, v3);
    v13 = *MEMORY[0x277CDB270];
    v89.i64[0] = v4[13];
    (v89.i64[0])(v7, v13, v3);

    v14 = static CameraControls.InteractionMode.== infix(_:_:)();
    v15 = v4[1];
    v15(v7, v3);
    v15(v9, v3);
    if (v14)
    {
      v17 = v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState;
      *&v16 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState);
      v90 = v16;
      type metadata accessor for Entity();
      HasTransform.transformMatrix(relativeTo:)();
      v92 = __invert_f4(v91);
      *v18.i64 = simd_quaternion(v92);
      v19 = vmulq_f32(v18, xmmword_23B91C020);
      v20 = vnegq_f32(v19);
      v21 = vtrn2q_s32(v19, vtrn1q_s32(v19, v20));
      v22 = vmlaq_f32(vextq_s8(v19, v20, 8uLL), 0, vextq_s8(v21, v21, 8uLL));
      v23 = vrev64q_s32(v19);
      v23.i32[0] = v20.i32[1];
      v23.i32[3] = v20.i32[2];
      v24 = vmlaq_f32(v22, 0, v23);
      v25 = vnegq_f32(v24);
      v26 = vtrn2q_s32(v24, vtrn1q_s32(v24, v25));
      v27 = vrev64q_s32(v24);
      v27.i32[0] = v25.i32[1];
      v27.i32[3] = v25.i32[2];
      v89 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v24, v18, 3), v27, v18, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v24, v25, 8uLL), *v18.f32, 1), vextq_s8(v26, v26, 8uLL), v18.f32[0]));
      v29 = __sincosf_stret(0.5 * *&v90);
      *&v28 = v29.__cosval;
      v90 = v28;
      v89 = vmulq_n_f32(v89, v29.__sinval);
      v30 = *(v17 + 4);

      __sincosf_stret(v30 * 0.5);
    }

    else
    {
      v87.i64[0] = v10;
      v31 = v88.i64[0];
      (v90)(v9, v2 + v88.i64[0], v3);
      (v89.i64[0])(v7, *MEMORY[0x277CDB258], v3);
      v32 = static CameraControls.InteractionMode.== infix(_:_:)();
      v15(v7, v3);
      v15(v9, v3);
      if (v32)
      {
        v33.i64[0] = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState);
        v34 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_worldUp);
        v88 = v33;
        v89 = v34;
        v36 = __sincosf_stret(0.5 * v33.f32[0]);
        *&v35 = v36.__cosval;
        v90 = v35;
        v89 = vmulq_n_f32(v89, v36.__sinval);
        type metadata accessor for Entity();
        HasTransform.transformMatrix(relativeTo:)();
        v85 = v38;
        v86 = v37;
        v83 = v40;
        v84 = v39;

        v93.columns[1] = v85;
        v93.columns[0] = v86;
        v93.columns[3] = v83;
        v93.columns[2] = v84;
        *v41.i64 = simd_quaternion(v93);
        v42 = vmulq_f32(v41, xmmword_23B91C020);
        v43 = vnegq_f32(v42);
        v44 = vtrn2q_s32(v42, vtrn1q_s32(v42, v43));
        v45 = vmulq_f32(vextq_s8(v42, v43, 8uLL), 0);
        v46 = vrev64q_s32(v42);
        v46.i32[0] = v43.i32[1];
        v46.i32[3] = v43.i32[2];
        v47 = vmlaq_f32(vaddq_f32(vextq_s8(v44, v44, 8uLL), v45), 0, v46);
        v48 = vnegq_f32(v47);
        v49 = vtrn2q_s32(v47, vtrn1q_s32(v47, v48));
        v50 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v47, v48, 8uLL), *v41.f32, 1), vextq_s8(v49, v49, 8uLL), v41.f32[0]);
        v51 = vrev64q_s32(v47);
        v51.i32[0] = v48.i32[1];
        v51.i32[3] = v48.i32[2];
        v87 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v47, v41, 3), v51, v41, 2), v50);
        __sincosf_stret(vmuls_lane_f32(0.5, *v88.f32, 1));
      }

      else
      {
        (v90)(v9, v2 + v31, v3);
        (v89.i64[0])(v7, *MEMORY[0x277CDB260], v3);
        v52 = static CameraControls.InteractionMode.== infix(_:_:)();
        v15(v7, v3);
        v15(v9, v3);
        if (v52)
        {
          v54 = v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState;
          *&v53 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState);
          v90 = v53;
          type metadata accessor for Entity();
          HasTransform.transformMatrix(relativeTo:)();
          *v55.i64 = simd_quaternion(v94);
          v88 = xmmword_23B91C020;
          v56 = vmulq_f32(v55, xmmword_23B91C020);
          v57 = vnegq_f32(v56);
          v58 = vtrn2q_s32(v56, vtrn1q_s32(v56, v57));
          v59 = vmlaq_f32(vextq_s8(v56, v57, 8uLL), 0, vextq_s8(v58, v58, 8uLL));
          v60 = vrev64q_s32(v56);
          v60.i32[0] = v57.i32[1];
          v60.i32[3] = v57.i32[2];
          v61 = vmlaq_f32(v59, 0, v60);
          v62 = vnegq_f32(v61);
          v63 = vtrn2q_s32(v61, vtrn1q_s32(v61, v62));
          v64 = vrev64q_s32(v61);
          v64.i32[0] = v62.i32[1];
          v64.i32[3] = v62.i32[2];
          v89 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v61, v55, 3), v64, v55, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v61, v62, 8uLL), *v55.f32, 1), vextq_s8(v63, v63, 8uLL), v55.f32[0]));
          v66 = __sincosf_stret(0.5 * *&v90);
          *&v65 = v66.__cosval;
          v90 = v65;
          v89 = vmulq_n_f32(v89, v66.__sinval);
          v67 = *(v54 + 4);
          HasTransform.transformMatrix(relativeTo:)();
          v85 = v69;
          v86 = v68;
          v83 = v71;
          v84 = v70;

          v95.columns[1] = v85;
          v95.columns[0] = v86;
          v95.columns[3] = v83;
          v95.columns[2] = v84;
          *v72.i64 = simd_quaternion(v95);
          v73 = vmulq_f32(v72, v88);
          v74 = vnegq_f32(v73);
          v75 = vtrn2q_s32(v73, vtrn1q_s32(v73, v74));
          v76 = vmulq_f32(vextq_s8(v73, v74, 8uLL), 0);
          v77 = vrev64q_s32(v73);
          v77.i32[0] = v74.i32[1];
          v77.i32[3] = v74.i32[2];
          v78 = vmlaq_f32(vaddq_f32(vextq_s8(v75, v75, 8uLL), v76), 0, v77);
          v79 = vnegq_f32(v78);
          v80 = vtrn2q_s32(v78, vtrn1q_s32(v78, v79));
          v81 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v78, v79, 8uLL), *v72.f32, 1), vextq_s8(v80, v80, 8uLL), v72.f32[0]);
          v82 = vrev64q_s32(v78);
          v82.i32[0] = v79.i32[1];
          v82.i32[3] = v79.i32[2];
          v88 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v78, v72, 3), v82, v72, 2), v81);
          __sincosf_stret(v67 * 0.5);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t Entity.rotateBy(_:aroundTarget:)(double a1, float32x4_t a2)
{
  MEMORY[0x23EEAF8D0](a1);
  v2.n128_u32[3] = 0;
  v2.n128_u64[0] = vsubq_f32(0, a2).u64[0];
  v2.n128_f32[2] = 0.0 - a2.f32[2];
  specialized simd_float4x4.init(translation:)(v2);
  specialized simd_float4x4.init(translation:)(a2);
  type metadata accessor for Entity();
  HasTransform.transformMatrix(relativeTo:)();

  return HasTransform.setTransformMatrix(_:relativeTo:)();
}

uint64_t RealityViewCameraController.translateInCameraSpaceBy(_:adjustTarget:)(uint64_t result, float32x4_t a2)
{
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
  {
    v4 = result;
    type metadata accessor for Entity();

    HasTransform.orientation(relativeTo:)();
    v20 = v5;

    v6 = vmulq_f32(v20, xmmword_23B91C020);
    v7 = vnegq_f32(v6);
    v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
    v9 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v7, 8uLL), *a2.f32, 1), vextq_s8(v8, v8, 8uLL), a2.f32[0]);
    v10 = vrev64q_s32(v6);
    v10.i32[0] = v7.i32[1];
    v10.i32[3] = v7.i32[2];
    v11 = vmlaq_laneq_f32(v9, v10, a2, 2);
    v12 = vnegq_f32(v11);
    v13 = vtrn2q_s32(v11, vtrn1q_s32(v11, v12));
    v14 = vrev64q_s32(v11);
    v14.i32[0] = v12.i32[1];
    v14.i32[3] = v12.i32[2];
    v15 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v11, v20, 3), v14, v20, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, v12, 8uLL), *v20.f32, 1), vextq_s8(v13, v13, 8uLL), v20.f32[0]));
    if (*(v2 + v3))
    {
      v22 = v15;

      v16 = HasTransform.transform.modify();
      v18 = vaddq_f32(v22, v17[2]);
      v18.i32[3] = 0;
      v17[2] = v18;
      v16(v23, 0);

      v15 = v22;
    }

    if (v4)
    {
      v19 = vaddq_f32(v15, *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target));
      v19.i32[3] = 0;
      *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target) = v19;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RealityViewCameraController.updateGesture(_:geometry:)(uint64_t a1, uint64_t a2)
{
  *&v23 = a2;
  v4 = type metadata accessor for MagnifyGesture.Value();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DragGesture.Value();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CameraControlsUpdate(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CameraControlsUpdate(a1, v14, type metadata accessor for CameraControlsUpdate);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      (*(v5 + 32))(v7, v14, v4);
      v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_lastMagValue;
      v18 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_lastMagValue);
      *&v19 = 0;
      if (v18 > 0.0)
      {
        v20 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale);
        MagnifyGesture.Value.magnification.getter();
        *&v19 = v18 - *&v19;
        *&v19 = *&v19;
        *&v19 = v20 * *&v19;
      }

      v23 = v19;
      MagnifyGesture.Value.magnification.getter();
      *(v2 + v17) = v21;
      v22.i64[0] = 0;
      v22.i64[1] = v23;
      RealityViewCameraController.translateInCameraSpaceBy(_:adjustTarget:)(0, v22);
      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_lastMagValue) = 0xBFF0000000000000;
    }
  }

  else
  {
    if (result)
    {
      (*(v9 + 32))(v11, v14, v8);
      v16.n128_u64[0] = RealityViewCameraController.onDragGestureEnded(_:geometry:)(v11);
    }

    else
    {
      (*(v9 + 32))(v11, v14, v8);
      RealityViewCameraController.onDragGestureChanged(_:geometry:)();
    }

    return (*(v9 + 8))(v11, v8, v16);
  }

  return result;
}

void RealityViewCameraController.onDragGestureChanged(_:geometry:)()
{
  v110 = type metadata accessor for CameraControls.InteractionMode();
  v112 = *(v110 - 8);
  v1 = MEMORY[0x28223BE20](v110);
  v109 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v111 = &v104 - v3;
  v4 = type metadata accessor for GlobalCoordinateSpace();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CoordinateSpace();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DragGesture.Value.location.getter();
  v13 = v12;
  v15 = v14;
  (*(v9 + 104))(v11, *MEMORY[0x277CDF968], v8);
  GeometryProxy.frame(in:)();
  v17 = v16;
  v19 = v18;
  (*(v9 + 8))(v11, v8);
  v20 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  v108 = xmmword_23B91BFD0;
  *(inited + 16) = xmmword_23B91BFD0;
  v22 = v13 + v17;
  v23 = v15 + v19;
  *(inited + 32) = v22;
  *(inited + 36) = v23;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v25 = v24;
  swift_setDeallocating();
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v27 = v26;
  v29 = v28;
  (*(v5 + 8))(v7, v4);
  v30 = swift_initStackObject();
  v30[1] = v108;
  v31 = v27;
  v32 = v29;
  v30[2].n128_f32[0] = v31;
  v30[2].n128_f32[1] = v32;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v30);
  v108 = v33;
  swift_setDeallocating();
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inDragGesture))
  {
    v34 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inputLocation);
    *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inputLocation + 8) = v25;
    v35 = v108.n128_f32[1];
    if (v108.n128_f32[0] > v108.n128_f32[1])
    {
      v35 = v108.n128_f32[0];
    }

    v36 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertia;
    *(v36 + 20) = (360.0 / v35) * 0.01;
    v37 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale) * 0.01;
    v104 = v36;
    *(v36 + 24) = v37;
    v38 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
    swift_beginAccess();
    v39 = v112;
    v40 = *(v112 + 16);
    v107 = v38;
    v42 = v110;
    v41 = v111;
    v106 = v40;
    (v40)(v111, v20 + v38, v110);
    v43 = *MEMORY[0x277CDB270];
    v44 = v109;
    v105 = *(v39 + 104);
    v105(v109, v43, v42);
    LOBYTE(v38) = static CameraControls.InteractionMode.== infix(_:_:)();
    v45 = *(v39 + 8);
    v45(v44, v42);
    v45(v41, v42);
    if (v38 & 1) != 0 || (v47 = v110, v46 = v111, (v106)(v111, v20 + v107, v110), v48 = v109, v105(v109, *MEMORY[0x277CDB258], v47), v49 = static CameraControls.InteractionMode.== infix(_:_:)(), v45(v48, v47), v45(v46, v47), (v49) || (v51 = v110, v50 = v111, (v106)(v111, v20 + v107, v110), v52 = v109, v105(v109, *MEMORY[0x277CDB260], v51), v53 = static CameraControls.InteractionMode.== infix(_:_:)(), v45(v52, v51), v45(v50, v51), (v53))
    {
      v54 = v34[1];
      v55 = *(v20 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState);
      v56 = vadd_f32(vmul_n_f32(vsub_f32(*v34, v54), *(v104 + 20)), v55);
      v54.i32[0] = 1086918619;
      v55.i32[0] = -1060565029;
      v57.i32[1] = v56.i32[1];
      *v57.i32 = v56.f32[0] + -6.2832;
      v58 = vbsl_s8(vdup_lane_s32(vcgt_f32(v56, v54), 0), v57, v56);
      v57.i32[1] = v58.i32[1];
      *v57.i32 = v58.f32[0] + 6.2832;
      v59 = vbsl_s8(vdup_lane_s32(vcgt_f32(v55, v58), 0), v57, v58);
      v57.i32[0] = v59.i32[0];
      *&v57.i32[1] = *&v59.i32[1] + -6.2832;
      v60 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v59, 1), v54), 0), v57, v59);
      v61.i32[0] = v60.i32[0];
      *&v61.i32[1] = *&v60.i32[1] + 6.2832;
      *(v20 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orientationState) = vbsl_s8(vdup_lane_s32(vcgt_f32(v55, vdup_lane_s32(v60, 1)), 0), v61, v60);
      RealityViewCameraController.updateRotation()();
      *v34 = v34[1];
    }

    else
    {
      v81 = v110;
      v80 = v111;
      (v106)(v111, v20 + v107, v110);
      v82 = v109;
      v105(v109, *MEMORY[0x277CDB268], v81);
      v83 = static CameraControls.InteractionMode.== infix(_:_:)();
      v45(v82, v81);
      v45(v80, v81);
      if ((v83 & 1) == 0)
      {
        v85 = v110;
        v84 = v111;
        (v106)(v111, v20 + v107, v110);
        v86 = v109;
        v105(v109, *MEMORY[0x277CDB250], v85);
        v87 = static CameraControls.InteractionMode.== infix(_:_:)();
        v45(v86, v85);
        v45(v84, v85);
        if ((v87 & 1) == 0)
        {
          v90 = v110;
          v89 = v111;
          (v106)(v111, v20 + v107, v110);
          v91 = v109;
          v105(v109, *MEMORY[0x277CDB278], v90);
          v92 = static CameraControls.InteractionMode.== infix(_:_:)();
          v45(v91, v90);
          v45(v89, v90);
          if (v92)
          {
            v93 = vsub_f32(v34[1], v34[2]);
            v94 = *(v104 + 24);
            v95 = vmuls_lane_f32(v94, v93, 1);
            v96 = v93;
            v96.f32[0] = -(v93.f32[0] * v94);
            v96.f32[1] = v95;
          }

          else
          {
            v98 = v110;
            v97 = v111;
            (v106)(v111, v20 + v107, v110);
            v99 = v109;
            v105(v109, *MEMORY[0x277CDB280], v98);
            v100 = static CameraControls.InteractionMode.== infix(_:_:)();
            v45(v99, v98);
            v45(v97, v98);
            if ((v100 & 1) == 0)
            {
              goto LABEL_8;
            }

            v101 = vsub_f32(v34[1], v34[2]);
            v102 = *(v104 + 24);
            *&v103 = -(v101.f32[1] * v102);
            v96.i32[1] = 0;
            v96.f32[0] = v102 * v101.f32[0];
            v96.i64[1] = v103;
          }

          RealityViewCameraController.translateInCameraSpaceBy(_:adjustTarget:)(1, v96);
          goto LABEL_8;
        }
      }

      *&v88 = RealityViewCameraController.mapToSphere(_:viewport:)(v34[1], v108);
      *(v20 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball + 32) = v88;
      RealityViewCameraController.updateArcballOrientation()();
    }

LABEL_8:
    v34[2] = v34[1];
    return;
  }

  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inDragGesture) = 1;
  v62 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inputLocation);
  *v62 = v25;
  v106 = v62;
  v62[2] = v25;
  RealityViewCameraController.resetOrientationState()();
  v63 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
  swift_beginAccess();
  v64 = v112;
  v65 = *(v112 + 16);
  v107 = v0;
  v67 = v110;
  v66 = v111;
  v105 = v65;
  v65(v111, v0 + v63, v110);
  v68 = *(v64 + 104);
  v69 = v109;
  v68(v109, *MEMORY[0x277CDB268], v67);
  v70 = static CameraControls.InteractionMode.== infix(_:_:)();
  v71 = *(v64 + 8);
  v71(v69, v67);
  v112 = v64 + 8;
  v71(v66, v67);
  if (v70 & 1) != 0 || (v73 = v110, v72 = v111, v105(v111, v107 + v63, v110), v74 = v109, v68(v109, *MEMORY[0x277CDB250], v73), v75 = static CameraControls.InteractionMode.== infix(_:_:)(), v71(v74, v73), v71(v72, v73), (v75))
  {
    v76 = *v106;
    v77 = v108;
    v78 = v107 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball;
    *(v107 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_arcball) = vsub_f32(vmul_f32(v108.n128_u64[0], 0x3F0000003F000000), *v106);
    *&v79 = RealityViewCameraController.mapToSphere(_:viewport:)(v76, v77);
    *(v78 + 16) = v79;
    *(v78 + 32) = v79;
  }
}

float32x2_t RealityViewCameraController.onDragGestureEnded(_:geometry:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inDragGesture) = 0;
  GeometryProxy.size.getter();
  v3 = v2;
  GeometryProxy.size.getter();
  if (v3 > v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  *&v5 = v5;
  v17 = *&v5;
  DragGesture.Value.predictedEndLocation.getter();
  v7 = v6;
  DragGesture.Value.location.getter();
  v9 = (v7 - v8) * 4.0;
  DragGesture.Value.location.getter();
  v10 = v9;
  v16 = v10;
  DragGesture.Value.predictedEndLocation.getter();
  v12 = v11;
  DragGesture.Value.location.getter();
  DragGesture.Value.location.getter();
  v14 = (v12 - *&v13) * 4.0;
  v13.f32[0] = v16;
  v13.f32[1] = -v14;
  result = vdiv_f32(v13, vdup_lane_s32(v17, 0));
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertia + 32) = result;
  return result;
}

void closure #1 in Entity.update(from:overrideDistance:)(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_inertiaEnabled) == 1)
  {
    RealityViewCameraController.updateInertia()();
  }

  if (*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube) == 1)
  {
    RealityViewCameraController.updateTargetCube()();
  }
}

uint64_t one-time initialization function for empty()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMd, &_s7Combine5EmptyVy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMR);
  __swift_allocate_value_buffer(v0, static CameraControlsPublisher.empty);
  __swift_project_value_buffer(v0, static CameraControlsPublisher.empty);
  type metadata accessor for CameraControlsUpdate(0);
  return Empty.init(completeImmediately:)();
}

uint64_t CameraControlsPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  if (v8)
  {
    (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);

    PassthroughSubject.receive<A>(subscriber:)();
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMd, &_s7Combine5EmptyVy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMR);
    __swift_project_value_buffer(v10, static CameraControlsPublisher.empty);
    return Empty.receive<A>(subscriber:)();
  }
}

uint64_t EnvironmentValues.cameraControlsPublisher.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key(a1, a2, a3);
  EnvironmentValues.subscript.getter();
  return v4;
}

uint64_t CameraControlsModifier.cameraControls.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of Environment<CameraControls>.Content(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for CameraControls();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t CameraControlsModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = type metadata accessor for CameraControls();
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v45 - v8;
  v9 = type metadata accessor for CameraControlsModifier(0);
  v10 = v9 - 8;
  v49 = *(v9 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MagnifyGesture();
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15_ChangedGestureVyAA07MagnifyD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA07MagnifyD0VGMR);
  v18 = *(v17 - 8);
  v53 = v17;
  v54 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMd, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMR);
  MEMORY[0x28223BE20](v50);
  v47 = &v45 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMR);
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - v23;
  KeyPath = swift_getKeyPath();
  v26 = *(v10 + 28);
  v27 = v2;
  v46 = v2;
  v63 = *(v2 + v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMd, &_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMR);
  State.wrappedValue.getter();
  v28 = v62;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB0014CameraControlsD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB0014CameraControlsD0VGMR);
  (*(*(v29 - 8) + 16))(v24, a1, v29);
  v55 = v24;
  v56 = v22;
  v30 = &v24[*(v22 + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  MagnifyGesture.init(minimumScaleDelta:)();
  outlined init with copy of CameraControlsUpdate(v27, v12, type metadata accessor for CameraControlsModifier);
  v31 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v32 = swift_allocObject();
  outlined init with take of CameraControlsModifier(v12, v32 + v31);
  lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type MagnifyGesture and conformance MagnifyGesture, MEMORY[0x277CDD928], MEMORY[0x277CDD920]);
  lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type MagnifyGesture.Value and conformance MagnifyGesture.Value, MEMORY[0x277CDD910], MEMORY[0x277CDD918]);
  v33 = v51;
  Gesture<>.onChanged(_:)();

  (*(v52 + 8))(v16, v33);
  outlined init with copy of CameraControlsUpdate(v46, v12, type metadata accessor for CameraControlsModifier);
  v34 = v47;
  v35 = swift_allocObject() + v31;
  v36 = v12;
  v37 = v50;
  outlined init with take of CameraControlsModifier(v36, v35);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _ChangedGesture<MagnifyGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA07MagnifyD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA07MagnifyD0VGMR, MEMORY[0x277CDFB18]);
  v38 = v53;
  Gesture.onEnded(_:)();

  (*(v54 + 8))(v20, v38);
  CameraControlsModifier.dragGesture.getter(v34 + *(v37 + 52));
  v39 = v57;
  CameraControlsModifier.cameraControls.getter(v57);
  v40 = v58;
  static CameraControls.none.getter();
  lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type CameraControls and conformance CameraControls, MEMORY[0x277CDB288], MEMORY[0x277CDB290]);
  v41 = v59;
  LOBYTE(v16) = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v60 + 8);
  v42(v40, v41);
  v42(v39, v41);
  if (v16)
  {
    static GestureMask.subviews.getter();
  }

  else
  {
    static GestureMask.all.getter();
  }

  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SimultaneousGesture<_EndedGesture<_ChangedGesture<MagnifyGesture>>, _EndedGesture<_ChangedGesture<DragGesture>>> and conformance SimultaneousGesture<A, B>, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMd, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMR, MEMORY[0x277CE02F8]);
  v43 = v55;
  View.gesture<A>(_:including:)();
  outlined destroy of PerspectiveCameraComponent?(v34, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMd, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMR);
  return outlined destroy of PerspectiveCameraComponent?(v43, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMR);
}

void *key path getter for EnvironmentValues.cameraControlsPublisher : EnvironmentValues@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  lazy protocol witness table accessor for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key(a2, a3, a4);
  result = EnvironmentValues.subscript.getter();
  *a1 = v6;
  return result;
}

uint64_t key path setter for EnvironmentValues.cameraControlsPublisher : EnvironmentValues(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key(a1, a2, a3);

  return EnvironmentValues.subscript.setter();
}

uint64_t CameraControlsModifier.dragGesture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for CameraControlsModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v21[1] = v5;
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GlobalCoordinateSpace();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for DragGesture();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMR);
  v13 = *(v12 - 8);
  v22 = v12;
  v23 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v21 - v14;
  static CoordinateSpaceProtocol<>.global.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  outlined init with copy of CameraControlsUpdate(v2, v6, type metadata accessor for CameraControlsModifier);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  outlined init with take of CameraControlsModifier(v6, v17 + v16);
  lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type DragGesture and conformance DragGesture, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(&lazy protocol witness table cache variable for type DragGesture.Value and conformance DragGesture.Value, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  Gesture<>.onChanged(_:)();

  (*(v9 + 8))(v11, v8);
  outlined init with copy of CameraControlsUpdate(v21[2], v6, type metadata accessor for CameraControlsModifier);
  v18 = swift_allocObject();
  outlined init with take of CameraControlsModifier(v6, v18 + v16);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _ChangedGesture<DragGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMR, MEMORY[0x277CDFB18]);
  v19 = v22;
  Gesture.onEnded(_:)();

  return (*(v23 + 8))(v15, v19);
}

uint64_t closure #2 in CameraControlsModifier.magnifyGesture.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CameraControlsUpdate(0);
  MEMORY[0x28223BE20](v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + *(type metadata accessor for CameraControlsModifier(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMd, &_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMR);
  State.wrappedValue.getter();
  v6 = v8[1];
  swift_storeEnumTagMultiPayload();
  if (v6)
  {
    PassthroughSubject.send(_:)();
  }

  return outlined destroy of CameraControlsUpdate(v5);
}

uint64_t closure #1 in CameraControlsModifier.magnifyGesture.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = type metadata accessor for CameraControlsUpdate(0);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + *(type metadata accessor for CameraControlsModifier(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMd, &_s7SwiftUI5StateVy012_RealityKit_aB023CameraControlsPublisherVGMR);
  State.wrappedValue.getter();
  v10 = v13[1];
  v11 = a3(0);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  swift_storeEnumTagMultiPayload();
  if (v10)
  {
    PassthroughSubject.send(_:)();
  }

  return outlined destroy of CameraControlsUpdate(v9);
}

float specialized simd_float4x4.init(translation:)(__n128 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
  v1 = swift_allocObject();
  v2 = xmmword_23B91A720;
  HIDWORD(v2) = a1.n128_u32[0];
  v3 = xmmword_23B91A740;
  HIDWORD(v3) = a1.n128_u32[1];
  v1[2] = v2;
  v1[3] = v3;
  v4 = xmmword_23B91A760;
  HIDWORD(v4) = a1.n128_u32[2];
  v1[4] = v4;
  v1[5] = xmmword_23B91BFE0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  return 1.0;
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

uint64_t outlined init with copy of CameraControlsUpdate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of CameraControlsModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraControlsModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(type metadata accessor for CameraControlsModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for CameraControls();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in CameraControlsModifier.magnifyGesture.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for CameraControlsModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #2 in CameraControlsModifier.magnifyGesture.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<CameraControlsModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB0014CameraControlsD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB0014CameraControlsD0VGMR, MEMORY[0x277CE04B0]);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CameraControlsPublisher> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB023CameraControlsPublisherVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB023CameraControlsPublisherVGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of Environment<CameraControls>.Content(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CameraControlsUpdate(uint64_t a1)
{
  v2 = type metadata accessor for CameraControlsUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key;
  if (!lazy protocol witness table cache variable for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent;
  if (!lazy protocol witness table cache variable for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _RealityViewCameraControllerSystem and conformance _RealityViewCameraControllerSystem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type _RealityViewCameraControllerSystem and conformance _RealityViewCameraControllerSystem;
  if (!lazy protocol witness table cache variable for type _RealityViewCameraControllerSystem and conformance _RealityViewCameraControllerSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _RealityViewCameraControllerSystem and conformance _RealityViewCameraControllerSystem);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MagnifyGesture and conformance MagnifyGesture(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for _RealityViewCameraControllerComponent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for _RealityViewCameraControllerComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized _RealityViewCameraControllerSystem.update(context:)(uint64_t a1)
{
  v18 = type metadata accessor for Entity.ComponentSet();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.sceneService.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  v5 = swift_dynamicCast();
  v6 = v19;
  v17[2] = lazy protocol witness table accessor for type _RealityViewCameraControllerComponent and conformance _RealityViewCameraControllerComponent(v5, v7, v8);
  v9 = SceneManager.componentTypeToComponentClass(_:)();
  v17[1] = a1;
  SceneUpdateContext.scene.getter();
  Scene.coreScene.getter();

  if (!v9)
  {
    goto LABEL_11;
  }

  result = RESceneGetComponentsOfClass();
  if (v11 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v12 = v11;
  v17[0] = v6;
  if (v11)
  {
    v13 = result;
    type metadata accessor for Entity();
    do
    {
      REComponentGetEntity();
      static Entity.fromCore(_:ignoringEntityInfo:)();
      dispatch thunk of Entity.components.getter();
      Entity.ComponentSet.subscript.getter();
      (*(v2 + 8))(v4, v18);
      v14 = v20;
      if (v20)
      {
        v15 = v21;

        updated = SceneUpdateContext.deltaTime.getter();
        v14(updated);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v14, v15);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v14, v15);
      }

      else
      {
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }
}

uint64_t FreeformMiniView.body.getter@<X0>(void *a1@<X8>)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0012FreeformMiniD7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0012FreeformMiniD7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGMR);
  outlined init with copy of FreeformMiniView(v1, v23);
  outlined init with copy of FreeformMiniView(v1, v23);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v24, v23, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB021FreeformCloudRendererCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB021FreeformCloudRendererCGMR);

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
  a1[1] = partial apply for closure #1 in FreeformMiniView.body.getter;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = v6;
  a1[6] = partial apply for closure #2 in FreeformMiniView.body.getter;
  a1[7] = v8;
  v15 = (a1 + *(v11 + 56));
  *v15 = partial apply for closure #3 in FreeformMiniView.body.getter;
  v15[1] = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of FreeformMiniView(v1, v23);
  static Published.subscript.getter(v23);

  v16 = v23[0];
  static UnitPoint.center.getter();
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0012FreeformMiniF7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0012FreeformMiniF7Wrapper33_3779DB7E999291C1C0BBA21A79DFAE44LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMR);
  v22 = (a1 + *(result + 36));
  *v22 = v16;
  v22[1] = v18;
  v22[2] = v20;
  return result;
}

uint64_t closure #1 in FreeformMiniView.body.getter(uint64_t a1)
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
  v12 = FreeformMiniView.interfaceOrientation.getter();
  v13 = specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(v3, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v15 = v13;

  return static Published.subscript.setter();
}

uint64_t closure #2 in FreeformMiniView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 orientation];

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  outlined init with copy of FreeformMiniView(a2, v19);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined destroy of FreeformMiniView(a2);
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

uint64_t closure #1 in closure #2 in FreeformMiniView.body.getter(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  v2 = FreeformMiniView.interfaceOrientation.getter();
  specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(a2, v2);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t closure #3 in FreeformMiniView.body.getter(unint64_t *a1, uint64_t a2)
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
  v12 = FreeformMiniView.interfaceOrientation.getter();
  v13 = specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(v15, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v16 = v13;

  return static Published.subscript.setter();
}

uint64_t FreeformMiniView.interfaceOrientation.getter()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
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

double protocol witness for Identifiable.id.getter in conformance FreeformMiniView@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance FreeformMiniViewWrapper()
{
  result = *(*v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance FreeformMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance FreeformMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance FreeformMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type FreeformMiniViewWrapper and conformance FreeformMiniViewWrapper(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t FreeformCloudRenderer.interfaceOrientation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FreeformCloudRenderer.Error()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FreeformCloudRenderer.Error(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](0);
  return Hasher._finalize()();
}

void FreeformCloudRenderer.colorScheme.didset()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  v6 = v0;
  v16 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_colorScheme;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v6[v10], v1);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23B824000, v16, v7, "colorScheme = %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x23EEB0B70](v9, -1, -1);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  else
  {
    v14 = v16;
  }
}

uint64_t FreeformCloudRenderer.platterRenderer.getter()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer____lazy_storage___platterRenderer;
  v2 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer____lazy_storage___platterRenderer);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in FreeformCloudRenderer.platterRenderer.getter(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    outlined consume of PlatterRenderer??(v4);
  }

  outlined copy of PlatterRenderer??(v2);
  return v3;
}

void *closure #1 in FreeformCloudRenderer.platterRenderer.getter(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (result)
  {
    v3 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device);
    v4 = [result colorPixelFormat];
    type metadata accessor for PlatterRenderer();
    v5 = swift_allocObject();
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    swift_unknownObjectRetain();
    PlatterRenderer.initRenderPipeline()();
    if (!*(v5 + 64))
    {
      PlatterRenderer.makePlatterVertices()();
    }

    *(v5 + 40) = [v3 newBufferWithLength:352 options:0];
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *FreeformCloudRenderer.init()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22UIInterfaceOrientationVGMd, &_s7Combine9PublishedVySo22UIInterfaceOrientationVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - v8;
  v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer__interfaceOrientation;
  v76 = 1;
  type metadata accessor for UIInterfaceOrientation(0);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v1[v10], v9, v6);
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_colorScheme;
  v12 = *MEMORY[0x277CDF3D0];
  v13 = type metadata accessor for ColorScheme();
  (*(*(v13 - 8) + 104))(&v1[v11], v12, v13);
  v14 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_id];
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v3 + 8))(v5, v2);
  *v14 = v15;
  v14[1] = v17;
  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view] = 0;
  v19 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld];
  v20 = *MEMORY[0x277D860B8];
  v73 = *(MEMORY[0x277D860B8] + 16);
  v21 = v73;
  v74 = v20;
  v22 = *(MEMORY[0x277D860B8] + 32);
  v71 = *(MEMORY[0x277D860B8] + 48);
  v23 = v71;
  v72 = v22;
  *v19 = v20;
  v19[1] = v21;
  v19[2] = v22;
  v19[3] = v23;
  v24 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_clippedFreeformBoundingBoxWorld];
  v77 = 1;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[64] = 1;
  v25 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderBoundingBoxWorld];
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v25[64] = 1;
  v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_meshAnchors;
  v27 = MEMORY[0x277D84F90];
  *&v1[v26] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lastShotTime] = 0xFFF0000000000000;
  v28 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection];
  v29 = v73;
  *v28 = v74;
  v28[1] = v29;
  v30 = v71;
  v28[2] = v72;
  v28[3] = v30;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lookAtBoxWorldProvider] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_sphericalShellAnimator] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_commandQueue] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderPipelineState] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_localTime] = 0;
  v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_inFlightQueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueCyAA21FreeformCloudRendererC13ResourceEntry33_3779DB7E999291C1C0BBA21A79DFAE44LLVGMd, &_s19_RealityKit_SwiftUI13InFlightQueueCyAA21FreeformCloudRendererC13ResourceEntry33_3779DB7E999291C1C0BBA21A79DFAE44LLVGMR);
  v32 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v32[2] = v33;
  v32[3] = 0;
  v32[4] = v27;
  *&v1[v31] = v32;
  v34 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_inFlightLock;
  v35 = swift_allocObject();
  *&v1[v34] = v35;
  v36 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer] = 0;
  *(v35 + 16) = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_pulseAnimationDuration] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_motionGoodness] = 1065353216;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_captureDialOpacityFloor] = 1036831949;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer____lazy_storage___platterRenderer] = 1;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots] = 0;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_showShotLocations] = 0;
  v37 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForLiveCamera;
  type metadata accessor for CameraFrustumRendererForLiveCamera();
  swift_allocObject();
  *&v1[v37] = CameraFrustumRendererForLiveCamera.init()();
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPathRenderer] = 0;
  v38 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_insideOutsideManager;
  type metadata accessor for FreeformScanModeManager();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *&v1[v38] = v39;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize] = vdupq_n_s64(0x4059000000000000uLL);
  v40 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_backgroundColor];
  *v40 = 0u;
  v40[1] = 0u;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled] = 0;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_shouldTrackDevice] = 1;
  v41 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPoseWorld];
  *v41 = 0u;
  *(v41 + 1) = 0u;
  *(v41 + 2) = 0u;
  v41[48] = 1;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_shouldRenderPointsWithAlphaBlend] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_startBoundingEllipsoidFadeRadius] = 1064514355;
  *(v39 + 20) = 0x3DCCCCCD3CF5C28FLL;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_endBoundingEllipsoidFadeRadius] = 1065772646;
  v42 = MTLCreateSystemDefaultDevice();
  if (!v42)
  {
    goto LABEL_17;
  }

  v43 = v42;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device] = v42;
  v44 = objc_allocWithZone(MEMORY[0x277CD71F8]);
  swift_unknownObjectRetain();
  v45 = [v44 initWithFrame:v43 device:{0.0, 0.0, 0.0, 0.0}];
  v46 = *&v1[v18];
  *&v1[v18] = v45;

  type metadata accessor for BaseRenderer();
  swift_allocObject();
  v47 = swift_unknownObjectRetain();
  specialized BaseRenderer.init(device:width:height:)(v47, 100, 100);
  v49 = v48;
  swift_unknownObjectRelease();
  *&v1[v36] = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18ObjectCapturePointaGMd, &_ss23_ContiguousArrayStorageCySo18ObjectCapturePointaGMR);
  v50 = swift_allocObject();
  *(v50 + 48) = 0u;
  *(v50 + 64) = 0;
  *(v50 + 32) = 0u;
  v51 = [*(v49 + 16) newBufferWithBytes:v50 + 32 length:48 options:0];

  swift_setDeallocating();
  swift_deallocClassInstance();
  if (!v51)
  {
    __break(1u);
    goto LABEL_11;
  }

  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_emptyPointCloudBuffer] = v51;
  v52 = type metadata accessor for FreeformCloudRenderer(0);
  v75.receiver = v1;
  v75.super_class = v52;
  v53 = objc_msgSendSuper2(&v75, sel_init);
  FreeformCloudRenderer.initRenderPipeline()();
  v54 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view;
  v55 = *&v53[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view];
  if (!v55)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v55 setDelegate_];
  v56 = *&v53[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer];
  if (!v56)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v57 = objc_allocWithZone(MEMORY[0x277CD6D60]);

  v58 = [v57 init];
  [v58 setDepthCompareFunction_];
  [v58 setDepthWriteEnabled_];
  v59 = [v43 newDepthStencilStateWithDescriptor_];

  *(v56 + 24) = v59;

  swift_unknownObjectRelease();
  FreeformCloudRenderer.setupFeatherMask()();
  v60 = *&v53[v54];
  if (!v60)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v61 = [v60 layer];
  [v61 setOpaque_];

  v62 = *&v53[v54];
  if (!v62)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v63 = [v62 layer];
  GenericGray = CGColorCreateGenericGray(0.0, 0.0);
  [v63 setBackgroundColor_];

  v65 = objc_allocWithZone(type metadata accessor for InteractiveCameraTransformManager(0));
  InteractiveCameraTransformManager.init(radius:springDelay:springTime:)(v65, 1.0, 1.0, 1.0);
  v66 = *&v53[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider];
  *&v53[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider] = v67;
  v68 = v67;

  v69 = *&v53[v54];
  if (v69)
  {
    if (*&v68[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture])
    {
      [v69 addGestureRecognizer_];

      FreeformCloudRenderer.setupCameraFrustumRendererForLiveCamera()();
      swift_unknownObjectRelease();
      return v53;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall FreeformCloudRenderer.mtkView(_:drawableSizeWillChange:)(MTKView _, CGSize drawableSizeWillChange)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (v4 && (height = drawableSizeWillChange.height, width = drawableSizeWillChange.width, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for MTKView, 0x277CD71F8), v8 = _.super.super.super.isa, v9 = v4, LOBYTE(_.super.super.super.isa) = static NSObject.== infix(_:_:)(), v9, v8, (_.super.super.super.isa & 1) != 0))
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

    v18 = (v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize);
    *v18 = width;
    v18[1] = height;
    FreeformCloudRenderer.setupFeatherMask()();
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

void FreeformCloudRenderer.setupFeatherMask()()
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

  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view;
  v9 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
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

uint64_t FreeformCloudRenderer.setCameraFrustumRendererForShots(to:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots) = a1;

  if (!a1)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v5 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device);

    result = CameraFrustumRendererForShots.setup(device:pixelFormat:)(v6, [v5 colorPixelFormat]);
    v7 = *(a1 + 24);
LABEL_5:
    *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_showShotLocations) = v7;
    return result;
  }

  __break(1u);
  return result;
}

void FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:)(__n128 *a1, uint64_t a2, double a3, __n128 a4, float32x4_t a5, float32x4_t a6, float a7, double a8, double a9)
{
  v10 = v9;
  v269 = a6;
  v270 = a5;
  v271 = a4;
  v17 = type metadata accessor for DispatchTime();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  *&v264 = &v252 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v252 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = (&v252 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v26 = static OS_dispatch_queue.main.getter();
  (*(v24 + 104))(v26, *MEMORY[0x277D85200], v23);
  v27 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v26, v23);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  *&v262 = v22;
  v263.i64[0] = v17;
  v28 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_localTime;
  *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_localTime) = a3;
  v29 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled;
  v30 = 1.0;
  if (!*(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled))
  {
    v30 = a7;
  }

  *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_motionGoodness) = v30;
  v31 = v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPoseWorld;
  v32 = v270;
  *v31 = v271;
  *(v31 + 16) = v32;
  *(v31 + 32) = v269;
  *(v31 + 48) = 0;
  v33 = (v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderBoundingBoxWorld);
  v34 = *a1;
  v35 = a1[1];
  v33[4].n128_u8[0] = a1[4].n128_u8[0];
  v37 = a1[2];
  v36 = a1[3];
  v33[2] = v37;
  v33[3] = v36;
  v39 = *a1;
  v38 = a1[1];
  *v33 = v34;
  v33[1] = v38;
  v40 = (v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_clippedFreeformBoundingBoxWorld);
  v41 = a1[3];
  v40[2] = v37;
  v40[3] = v41;
  v40[4].n128_u8[0] = a1[4].n128_u8[0];
  *v40 = v39;
  v40[1] = v35;
  *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lastShotTime) = a8;
  *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_meshAnchors) = a2;

  *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_pulseAnimationDuration) = a9;
  FreeformCloudRenderer.updateInterfaceOrientationIfNeeded()();
  if ((a1[4].n128_u8[0] & 1) == 0)
  {
    v42 = *a1;
    v43 = a1[1];
    v44 = a1[2];
    v45 = a1[3];
    v46 = &_ss23_ContiguousArrayStorageCySfGMd;
    v47 = *(v10 + v29) == 1;
    v261.i64[0] = v28;
    if (v47)
    {
      v48 = *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots);
      if (v48)
      {
        if (*(v48 + 24) == 1)
        {
          v265 = v45;
          v266 = v44;
          v267 = v43;
          v268 = v42;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
LABEL_12:
            v42 = v268;
            v43 = v267;
            v44 = v266;
            v45 = v265;
            goto LABEL_14;
          }

          v260.i64[0] = v29;
          v50 = Strong + OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_cameraPosesBoundingBox;
          v51 = Strong;
          swift_beginAccess();
          v53 = *v50;
          v52 = *(v50 + 8);
          v55 = *(v50 + 16);
          v54 = *(v50 + 24);
          LOBYTE(v50) = *(v50 + 32);

          if (v50)
          {

            v29 = v260.i64[0];
            v28 = v261.i64[0];
            v46 = &_ss23_ContiguousArrayStorageCySfGMd;
            goto LABEL_12;
          }

          v56.n128_u64[0] = v53;
          v56.n128_u64[1] = v52;
          v259 = v56;
          v56.n128_u64[0] = v55;
          v56.n128_u64[1] = v54;
          v258 = v56;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:));
          v257 = v57;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:));
          BoundingBox.init(min:max:)();
          BoundingBox.transformed(by:)();
          v58 = BoundingBox.union(_:)();
          v61.n128_f64[0] = specialized static BoundingBoxHelpers.asSRTMatrix(box:)(v58, v59, v60);
          v268 = v61;
          v267 = v62;
          v266 = v63;
          v265 = v64;

          v45 = v265;
          v44 = v266;
          v43 = v267;
          v42 = v268;
          v29 = v260.i64[0];
          v28 = v261.i64[0];
          v46 = &_ss23_ContiguousArrayStorageCySfGMd;
        }
      }
    }

LABEL_14:
    v65 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lookAtBoxWorldProvider;
    v66 = *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lookAtBoxWorldProvider);
    v268 = v42;
    v267 = v43;
    v266 = v44;
    v265 = v45;
    if (v66)
    {
      if (*(v10 + v29) != 1)
      {
        goto LABEL_23;
      }

      v67 = *(v10 + v46[353]);
      if (!v67 || (v68 = *(v67 + 24), *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_showShotLocations) == v68))
      {
LABEL_22:
        v66 = *(v10 + v65);
        if (!v66)
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

LABEL_23:

        *&v85 = Transform.init(matrix:)();
        v274 = 0;
        *(v66 + 208) = v85;
        *(v66 + 224) = v86;
        *(v66 + 240) = v87;
        *(v66 + 256) = a3 + 0.5;
        *(v66 + 264) = 0;
        AnimatedTargetTransformProvider.updateAnimation()();

        v88 = *(v10 + v65);
        if (!v88)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v88[1].n128_f64[1] <= a3)
        {
          v88[1].n128_f64[1] = a3;

          AnimatedTargetTransformProvider.updateAnimation()();
          v89 = v88[4];
          v268 = v88[3];
          v267 = v89;
          v266 = v88[5];

          *v90.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v266, v267, v268);
          v260 = v90;
          v265 = v91;
          v266 = v92;
          v268 = v93;
          v273 = 0;
          *v33 = v90;
          v33[1] = v91;
          v33[2] = v92;
          v33[3] = v93;
          v33[4].n128_u8[0] = 0;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
          v95 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v260, v94.f32[0]), v265, *v94.f32, 1), v266, v94, 2), v268, v94, 3);
          v259 = v95;
          v95.i32[3] = 0;
          v267 = v95;
          *v96.i64 = Transform.init(matrix:)();
          v97 = vmulq_f32(v96, v96);
          v97.f32[0] = sqrtf(v97.f32[2] + vaddv_f32(*v97.f32)) * 0.5;
          v268 = v97;
          type metadata accessor for SphericalShellWavefrontAnimation();
          v98 = swift_allocObject();
          v99 = v268.n128_f32[0];
          *(v98 + 16) = v267;
          *(v98 + 32) = v99;
          *(v98 + 40) = a9;
          *(v98 + 48) = vmul_n_f32(0x3C23D70A3E800000, v99);
          if (a9 > 0.001 && v99 > 0.001)
          {
            *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_sphericalShellAnimator) = v98;

            if ((v33[4].n128_u8[0] & 1) == 0)
            {
              v100.n128_f64[0] = Transform.init(matrix:)();
              v267 = v100;
              v266 = v101;
              v265 = v102;
              _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:));
              v105 = vmulq_f32(v267, v267);
              v106 = sqrtf(v105.f32[2] + vaddv_f32(*v105.f32));
              if (v104 < v103)
              {
                v103 = v104;
              }

              v107 = (((v106 * 0.5) * 1.1) / tanf(v103 * 0.5)) + 0.001;
              v108.n128_f64[0] = specialized simd_float4x4.init(translation:rotation:scale:)(v265, v266, v267);
              v267 = v108;
              v266 = v109;
              v265 = v110;
              v260 = v111;
              _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
              *v112.i64 = Transform.init(matrix:)();
              v113 = vmulq_f32(v112, v112);
              v113.f32[0] = (v268.n128_f32[0] + (v107 + (sqrtf(v113.f32[2] + vaddv_f32(*v113.f32)) * 0.5))) * 1.5;
              *&v114 = 0;
              *(&v114 + 2) = v113.f32[0] / (0.001 - v113.f32[0]);
              HIDWORD(v114) = -1.0;
              *&v115 = 0;
              HIDWORD(v115) = 0;
              *(&v115 + 2) = *(&v114 + 2) * 0.001;
              v116 = (v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection);
              *v116 = xmmword_23B91C4F0;
              *(v116 + 1) = xmmword_23B91C500;
              *(v116 + 2) = v114;
              *(v116 + 3) = v115;
              _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:));
              if (*(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_shouldTrackDevice) == 1)
              {
                *v117.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v269, v270, v271);
                v265 = v117;
                v266 = v118;
                v267 = v119;
                v268 = v120;
                _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #4 of FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:));
                v267 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v265, v121.f32[0]), v266, *v121.f32, 1), v267, v121, 2), v268, v121, 3);
              }

              else
              {
                v122 = v259.f32[2];
                _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #5 of FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:));
                v124 = vmulq_f32(v123, vdupq_n_s32(0xBE8483ED));
                v267 = v124;
                v124.i32[3] = 1064781546;
                v266 = v124;
                _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #6 of FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:));
                v125 = vmulq_f32(v266, xmmword_23B91C020);
                v126 = vnegq_f32(v125);
                v127 = vtrn2q_s32(v125, vtrn1q_s32(v125, v126));
                v129 = vmulq_lane_f32(vextq_s8(v125, v126, 8uLL), *v128.f32, 1);
                v130 = vrev64q_s32(v125);
                v130.i32[0] = v126.i32[1];
                v130.i32[3] = v126.i32[2];
                v131 = vmlaq_laneq_f32(vmlaq_n_f32(v129, vextq_s8(v127, v127, 8uLL), v128.f32[0]), v130, v128, 2);
                v132 = vnegq_f32(v131);
                v133 = vtrn2q_s32(v131, vtrn1q_s32(v131, v132));
                v134 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v131, v132, 8uLL), v267.n128_u64[0], 1), vextq_s8(v133, v133, 8uLL), v267.n128_f32[0]);
                v135 = vrev64q_s32(v131);
                v135.i32[0] = v132.i32[1];
                v135.i32[3] = v132.i32[2];
                v136 = vmlaq_laneq_f32(vmulq_f32(v131, vdupq_n_s32(0x3F7746EAu)), v135, v267, 2);
                v267 = vaddq_f32(v136, v134);
                v136.f32[0] = v268.n128_f32[0] * 1.2;
                v268 = v136;
                v137 = v122 + vmuls_lane_f32(v136.f32[0], v267, 2);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_23B91A6E0;
                *(inited + 32) = vadd_f32(*v259.f32, vmul_n_f32(v267.n128_u64[0], v268.n128_f32[0]));
                *(inited + 40) = v137;
                *(inited + 44) = 1065353216;
                _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
                v267 = v139;
                swift_setDeallocating();
              }

              Transform.init(matrix:)();
              v268 = v140;
              v266 = v141;
              _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #7 of FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:));
              *v143.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v266, v268, v142);
              v260 = v143;
              v265 = v144;
              v266 = v145;
              v268 = v146;
              _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #8 of FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:));
              if ((v33[4].n128_u8[0] & 1) == 0)
              {
                v259 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v260, v147.f32[0]), v265, *v147.f32, 1), v266, v147, 2), v268, v147, 3);
                v148.n128_f64[0] = Transform.init(matrix:)();
                v149 = v148.n128_u64[0];
                v268 = v148;
                v266 = v150;
                v265 = v151;
                v152 = v267;
                v152.i32[3] = 0;
                v260 = v152;
                v153 = v259;
                v153.i32[3] = 0;
                *v154.i64 = specialized static MiniViewHelpers.computeLookAt(cameraWorld:objectWorld:objectExtents:)(v152, v153, v149);
                v259 = v154;
                v155 = vsubq_f32(v154, v267);
                v156 = v154.f32[2];
                v157 = vmulq_f32(v155, v155);
                *&v158 = v157.f32[2] + vaddv_f32(*v157.f32);
                *v157.f32 = vrsqrte_f32(v158);
                *v157.f32 = vmul_f32(*v157.f32, vrsqrts_f32(v158, vmul_f32(*v157.f32, *v157.f32)));
                v267 = vmulq_n_f32(v155, vmul_f32(*v157.f32, vrsqrts_f32(v158, vmul_f32(*v157.f32, *v157.f32))).f32[0]);
                v159 = *v116;
                v160 = v116[5];
                v161 = v116[14];
                v162 = v116[10];
                Transform.init()();
                v258 = v163;
                _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #9 of FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:));
                *v165.i64 = simd_quaternion(v164, v267);
                v257 = v165;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
                v166 = swift_initStackObject();
                *(v166 + 16) = xmmword_23B91BFD0;
                v167.n128_f32[0] = atanf(1.0 / v159);
                v256 = v167;
                v168 = atanf(1.0 / v160);
                *(v166 + 32) = vadd_f32(__PAIR64__(LODWORD(v168), v256.n128_u32[0]), __PAIR64__(LODWORD(v168), v256.n128_u32[0]));
                _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v166);
                v256 = v169;
                swift_setDeallocating();
                v170 = v161 / v162;
                v171 = vmulq_f32(v268, v268);
                v172 = sqrtf(v171.f32[2] + vaddv_f32(*v171.f32));
                v173 = v256.n128_f32[1];
                if (v256.n128_f32[1] >= v256.n128_f32[0])
                {
                  v173 = v256.n128_f32[0];
                }

                v174.n128_f32[0] = v170 + (((v172 * 0.5) * 0.7) / tanf(v173 * 0.5));
                v256 = v174;
                v175 = swift_initStackObject();
                *(v175 + 16) = xmmword_23B91A6D0;
                v176 = v267;
                v177 = v256.n128_f32[0];
                *(v175 + 32) = vsub_f32(*v259.f32, vmul_n_f32(v267.n128_u64[0], v256.n128_f32[0]));
                *(v175 + 40) = v156 - vmuls_lane_f32(v177, v176, 2);
                _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v175);
                v267 = v178;
                swift_setDeallocating();
                v179.n128_f64[0] = specialized simd_float4x4.init(translation:rotation:scale:)(v267, v257, v258);
                v267 = v179;
                v259 = v180;
                v258 = v181;
                v257 = v182;

                *v183.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v265, v266, v268);
                v260.i32[0] = FreeformScanModeManager.update(cameraPositionWorld:boundingBoxWorld:)(v260, v183, v184, v185, v186);
                v187 = v260.u8[0];

                v188 = v187 == 2;
                v189 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider;
                v190 = *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider);
                if (v190)
                {
                  v191 = v29;
                  v192 = *(v10 + v29) | v188;
                  v193 = v190;
                  v194.n128_f64[0] = specialized simd_float4x4.init(translation:rotation:scale:)(v265, v266, v268);
                  v198 = *v116;
                  v199 = *(v116 + 1);
                  v200 = *(v116 + 2);
                  v201 = *(v116 + 3);
                  *&v193[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_time] = a3;
                  v202 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_ignoreARCameraTracking;
                  if ((v192 & 1) != v193[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_ignoreARCameraTracking])
                  {
                    v268 = v194;
                    v266 = v195;
                    v265 = v196;
                    v256 = v197;
                    v255 = v198;
                    v254 = v199;
                    v253 = v200;
                    v252 = v201;
                    if (v192)
                    {
                      if (!*&v193[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl])
                      {
LABEL_72:
                        __break(1u);
                        return;
                      }

                      InteractiveCameraTransformManager.computeCurrentTransform()();
                      TurnTableCameraControl.setFromCameraWorldPosition(cameraPositionWorld:)(v203);
                    }

                    else
                    {
                      v204 = v264;
                      static DispatchTime.now()();
                      v205 = v262;
                      - infix(_:_:)();
                      v206 = v204;
                      v207 = v263.i64[0];
                      (*(v18 + 8))(v206, v263.i64[0]);
                      (*(v18 + 56))(v205, 0, 1, v207);
                      v208 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_startTime;
                      swift_beginAccess();
                      outlined assign with take of DispatchTime?(v205, &v193[v208]);
                      swift_endAccess();
                    }

                    v193[v202] = v192 & 1;
                    v194 = v268;
                    v195 = v266;
                    v196 = v265;
                    v197 = v256;
                    v198 = v255;
                    v199 = v254;
                    v200 = v253;
                    v201 = v252;
                  }

                  v272 = 0;
                  v209 = &v193[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_projection];
                  *v209 = v198;
                  *(v209 + 1) = v199;
                  *(v209 + 2) = v200;
                  *(v209 + 3) = v201;
                  v209[64] = 0;
                  v210 = &v193[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld];
                  *v210 = v194;
                  v210[1] = v195;
                  v210[2] = v196;
                  v210[3] = v197;
                  *v211.i64 = Transform.init(matrix:)();
                  v212 = &v193[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_arCameraTransform];
                  *v212 = v211;
                  v212[1] = v213;
                  v212[2] = v214;
                  v215 = v210[1];
                  v265 = *v210;
                  v266 = v215;
                  v216 = v210[3];
                  v267 = v210[2];
                  v268 = v216;
                  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #10 of FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:));
                  v218 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v265, v217.f32[0]), v266, *v217.f32, 1), v267, v217, 2), v268, v217, 3);
                  v219 = v212[2];
                  v268 = v218;
                  v220 = vsubq_f32(v219, v218);
                  v221 = vmulq_f32(v220, v220);
                  *&v222 = v221.f32[2] + vaddv_f32(*v221.f32);
                  *v221.f32 = vrsqrte_f32(v222);
                  *v221.f32 = vmul_f32(*v221.f32, vrsqrts_f32(v222, vmul_f32(*v221.f32, *v221.f32)));
                  InteractiveCameraTransformManager.computeRadiusToViewBox(boxToCameraDir:)(vmulq_n_f32(v220, vmul_f32(*v221.f32, vrsqrts_f32(v222, vmul_f32(*v221.f32, *v221.f32))).f32[0]));
                  v224 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl;
                  v225 = *&v193[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl];
                  if (v225)
                  {
                    v226 = v223;
                    v227 = v268;
                    v227.n128_u32[3] = 0;
                    v225[5] = v227;
                    TurnTableCameraControl.update()();
                    v228 = *&v193[v224];
                    v229 = v261.i64[0];
                    if (v228)
                    {
                      v230 = v228[15];
                      v231 = v228[16];
                      if (v231 >= v226)
                      {
                        v231 = v226;
                      }

                      if (v231 > v230)
                      {
                        v230 = v231;
                      }

                      v228[14] = v230;
                      TurnTableCameraControl.update()();

                      v232 = *(v10 + v189);
                      if (v232)
                      {
                        v233 = v232;
                        v234.n128_f64[0] = InteractiveCameraTransformManager.computeCurrentTransform()();
                        v268 = v234;
                        v267 = v235;
                        v266 = v236;

                        *v237.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v266, v267, v268);
                        v238 = (v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld);
                        *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld) = v237;
                        if (*(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots))
                        {
                          v239 = *(v10 + v229);
                          v275 = __invert_f4(v237);
                          v268 = v275.columns[0];
                          v267 = v275.columns[1];
                          v266 = v275.columns[2];
                          v265 = v275.columns[3];
                          v275.columns[0] = *(v116 + 1);
                          v264 = *v116;
                          v263 = v275.columns[0];
                          v275.columns[0] = *(v116 + 3);
                          v262 = *(v116 + 2);
                          v259 = v275.columns[0];

                          CameraFrustumRendererForShots.update(time:worldToView:viewToClip:)(v239, v240, v241);

                          v237 = *v238;
                        }

                        if (*(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPathRenderer))
                        {
                          v276 = __invert_f4(v237);
                          v268 = v276.columns[0];
                          v267 = v276.columns[1];
                          v266 = v276.columns[2];
                          v265 = v276.columns[3];
                          v276.columns[0] = *(v116 + 1);
                          v264 = *v116;
                          v263 = v276.columns[0];
                          v276.columns[0] = *(v116 + 3);
                          v262 = *(v116 + 2);
                          v259 = v276.columns[0];

                          CameraPathRenderer.update(worldToView:viewToClip:)(v242, v243);

                          v237 = *v238;
                        }

                        v244 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForLiveCamera;
                        v245 = *(v10 + v229);
                        v277 = __invert_f4(v237);
                        v268 = v277.columns[0];
                        v267 = v277.columns[1];
                        v266 = v277.columns[2];
                        v265 = v277.columns[3];
                        v277.columns[0] = *(v116 + 1);
                        v264 = *v116;
                        v263 = v277.columns[0];
                        v277.columns[0] = *(v116 + 3);
                        v262 = *(v116 + 2);
                        v261 = v277.columns[0];

                        specialized simd_float4x4.init(translation:rotation:scale:)(v269, v270, v271);
                        CameraFrustumRendererForLiveCamera.update(time:worldToView:viewToClip:cameraPose:)(v245, v246, v247, v248);

                        v249 = *(v10 + v191);
                        v250 = *(v10 + v244);
                        v251 = *(v250 + 16);
                        *(v250 + 16) = (v249 & 1) == 0 && v260.u8[0] == 2;

                        CameraFrustumRendererForLiveCamera.showCameraLocation.didset(v251);

                        return;
                      }

                      goto LABEL_70;
                    }

LABEL_69:
                    __break(1u);
LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }

LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }

LABEL_67:
                __break(1u);
                goto LABEL_68;
              }

LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          goto LABEL_62;
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      *(v10 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_showShotLocations) = v68;
      v69 = *(v10 + v28);
      if (*(v66 + 24) > v69)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      *(v66 + 24) = v69;

      AnimatedTargetTransformProvider.updateAnimation()();
      v70 = *(v66 + 64);
      v260 = *(v66 + 48);
      v259 = v70;
      v258 = *(v66 + 80);

      specialized simd_float4x4.init(translation:rotation:scale:)(v258, v259, v260);
      *v71.i64 = Transform.init(matrix:)();
      v259 = v71;
      v258 = v72;
      v260 = v73;

      v74 = *(v10 + v28);
      type metadata accessor for AnimatedTargetTransformProvider();
      v75 = swift_allocObject();
      *(v75 + 208) = 0u;
      *(v75 + 224) = 0u;
      *(v75 + 240) = 0u;
      *(v75 + 192) = 0x3FC999999999999ALL;
      v272 = 1;
      *(v75 + 256) = 0;
      *(v75 + 264) = 1;
      v76 = v259;
      v77 = v258;
      *(v75 + 96) = v259;
      *(v75 + 112) = v77;
      *(v75 + 32) = vdupq_n_s64(0xFFF0000000000000);
      *(v75 + 48) = v76;
      v78 = v260;
      *(v75 + 64) = v77;
      *(v75 + 80) = v78;
      *(v75 + 128) = v78;
      *(v75 + 144) = v76;
      *(v75 + 160) = v77;
      *(v75 + 176) = v78;
      *(v75 + 24) = v74;
    }

    else
    {
      *v79.i64 = Transform.init(matrix:)();
      v259 = v79;
      v258 = v80;
      v260 = v81;
      type metadata accessor for AnimatedTargetTransformProvider();
      v75 = swift_allocObject();
      *(v75 + 208) = 0u;
      *(v75 + 224) = 0u;
      *(v75 + 240) = 0u;
      *(v75 + 192) = 0x3FC999999999999ALL;
      v272 = 1;
      *(v75 + 256) = 0;
      *(v75 + 264) = 1;
      v82 = v259;
      v83 = v258;
      *(v75 + 96) = v259;
      *(v75 + 112) = v83;
      *(v75 + 32) = vdupq_n_s64(0xFFF0000000000000);
      *(v75 + 48) = v82;
      v84 = v260;
      *(v75 + 64) = v83;
      *(v75 + 80) = v84;
      *(v75 + 128) = v84;
      *(v75 + 144) = v82;
      *(v75 + 160) = v83;
      *(v75 + 176) = v84;
      *(v75 + 24) = a3;
    }

    *(v75 + 16) = 0x4000000000000000;
    *(v10 + v65) = v75;

    goto LABEL_22;
  }
}

Swift::Void __swiftcall FreeformCloudRenderer.teardown()()
{
  FreeformCloudRenderer.clearView()();
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider);
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view;
  v3 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture))
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v3 removeGestureRecognizer_];
  v4 = *(v0 + v2);
  *(v0 + v2) = 0;
}

void *FreeformCloudRenderer.updateInterfaceOrientationIfNeeded()()
{
  result = *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view];
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

void FreeformCloudRenderer.clearView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (!v1)
  {
    return;
  }

  v12 = v1;
  v2 = [v12 currentRenderPassDescriptor];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 colorAttachments];
    v5 = [v4 objectAtIndexedSubscript_];

    if (v5)
    {
      [v5 setLoadAction_];

      v6 = [v3 colorAttachments];
      v7 = [v6 objectAtIndexedSubscript_];

      if (v7)
      {
        [v7 setClearColor_];

        if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_commandQueue))
        {
          v8 = [swift_unknownObjectRetain() commandBuffer];
          if (v8)
          {
            v9 = v8;
            swift_unknownObjectRelease();
            v10 = [v9 renderCommandEncoderWithDescriptor_];
            if (v10)
            {
              [v10 endEncoding];
              v11 = [v12 currentDrawable];
              if (v11)
              {
                [v9 presentDrawable_];
                swift_unknownObjectRelease();
                [v9 commit];

                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                return;
              }

LABEL_21:
              __break(1u);
              return;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

Swift::Void __swiftcall FreeformCloudRenderer.draw(in:)(MTKView in)
{
  if (*(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_meshAnchors) + 16) && (v3 = , v4 = specialized _NativeDictionary.filter(_:)(v3), , v5 = v4[2], , v5) && (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderBoundingBoxWorld + 64) & 1) == 0)
  {

    FreeformCloudRenderer.drawPoints(in:)(in.super.super.super.isa);
  }

  else
  {

    FreeformCloudRenderer.clearView()();
  }
}

char *FreeformCloudRenderer.collectCurrentMeshAnchorMetalBuffers()()
{
  v1 = v0;
  v128 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  v111 = *(v128 - 8);
  v2 = MEMORY[0x28223BE20](v128);
  v139 = v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v110 = v108 - v4;
  v131 = type metadata accessor for UUID();
  v112 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v109 = v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v108 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v113 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_meshAnchors);
  if (*(v113 + 16))
  {
    if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_sphericalShellAnimator))
    {
      __break(1u);
      return result;
    }

    SphericalShellWavefrontAnimation.sample(at:startingAt:)(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_localTime), *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lastShotTime));
    v125 = v18;
    v20 = v19;
    v22 = v21;
    v23 = *(v113 + 64);
    v126 = v113 + 64;
    v24 = 1 << *(v113 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v23;
    v108[0] = (v24 + 63) >> 6;
    v108[2] = v112 + 16;
    v108[1] = v112 + 32;
    v124 = (v112 + 8);

    v27 = 0;
    v140 = MEMORY[0x277D84F90];
    v129 = v11;
    v130 = v9;
    while (v26)
    {
      v28 = v27;
LABEL_19:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v31 | (v28 << 6);
      v33 = v113;
      v34 = v112;
      (*(v112 + 16))(v109, *(v113 + 48) + *(v112 + 72) * v32, v131);
      v35 = v110;
      outlined init with copy of FreeformMeshManager.MeshAnchor(*(v33 + 56) + *(v111 + 72) * v32, v110);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
      v37 = *(v36 + 48);
      v9 = v130;
      (*(v34 + 32))();
      outlined init with take of FreeformMeshManager.MeshAnchor(v35, &v9[v37]);
      (*(*(v36 - 8) + 56))(v9, 0, 1, v36);
      v11 = v129;
LABEL_20:
      outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v9, v11, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMR);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
      if ((*(*(v38 - 8) + 48))(v11, 1, v38) == 1)
      {

        return v140;
      }

      v39 = &v11[*(v38 + 48)];
      v40 = v139;
      outlined init with take of FreeformMeshManager.MeshAnchor(v39, v139);
      v41 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
      *&v132 = v108;
      v42 = *(v41 - 8);
      MEMORY[0x28223BE20](v41);
      v137 = v43;
      v127 = v108 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      *&v133 = v108;
      v45 = *(*(v44 - 8) + 64);
      v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v44 - 8);
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v40, v108 - v46, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      v47 = *(v42 + 48);
      v48 = v47(v108 - v46, 1, v41);
      v138 = v42;
      v136 = v45;
      *&v135 = v42 + 48;
      *&v134 = v47;
      if (v48 == 1)
      {
        v49 = outlined destroy of ObjectCaptureSession.Mesh.Anchor?(v108 - v46);
        v50 = v139;
      }

      else
      {
        v51 = *(v42 + 32);
        v52 = v127;
        v53 = v51(v127, v108 - v46, v41);
        v123 = v108;
        v54 = v128;
        MEMORY[0x28223BE20](v53);
        outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v139 + v55, v108 - v46, v56, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        *&v133 = v41;
        v122 = v47(v108 - v46, 1, v41) != 1;
        outlined destroy of ObjectCaptureSession.Mesh.Anchor?(v108 - v46);
        v50 = v139;
        v121 = *(v139 + *(v54 + 28));
        v57 = ObjectCaptureSession.Mesh.Anchor.vertices.getter();
        v123 = [v57 count];

        v58 = ObjectCaptureSession.Mesh.Anchor.vertices.getter();
        v120 = [v58 buffer];

        v59 = ObjectCaptureSession.Mesh.Anchor.normals.getter();
        v119 = [v59 buffer];

        v60 = ObjectCaptureSession.Mesh.Anchor.colors.getter();
        v118 = [v60 buffer];

        ObjectCaptureSession.Mesh.Anchor.transform.getter();
        v117 = v61;
        v116 = v62;
        v115 = v63;
        v114 = v64;
        v65 = v140;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
        }

        v67 = *(v65 + 2);
        v66 = *(v65 + 3);
        v68 = v138;
        if (v67 >= v66 >> 1)
        {
          v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v65);
          v68 = v138;
          v140 = v102;
        }

        else
        {
          v140 = v65;
        }

        v69 = (v121 | v122) & 1;
        v41 = v133;
        v49 = (*(v68 + 8))(v52, v133);
        v70 = v140;
        *(v140 + 2) = v67 + 1;
        v71 = &v70[128 * v67];
        v72 = v120;
        *(v71 + 4) = v123;
        *(v71 + 5) = v72;
        v73 = v118;
        *(v71 + 6) = v119;
        *(v71 + 7) = v73;
        v74 = v116;
        *(v71 + 4) = v117;
        *(v71 + 5) = v74;
        v75 = v114;
        *(v71 + 6) = v115;
        *(v71 + 7) = v75;
        *(v71 + 8) = v125;
        *(v71 + 36) = v20;
        *(v71 + 37) = v22;
        *(v71 + 38) = v69;
      }

      v76 = MEMORY[0x28223BE20](v49);
      v78 = v108 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x28223BE20](v76);
      v80 = v108 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v50 + v81, v80, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      v82 = (v134)(v80, 1, v41);
      v9 = v130;
      if (v82 == 1)
      {
        outlined destroy of FreeformMeshManager.MeshAnchor(v50);
        outlined destroy of ObjectCaptureSession.Mesh.Anchor?(v80);
      }

      else
      {
        v137 = v108;
        (*(v138 + 32))(v78, v80, v41);
        v83 = ObjectCaptureSession.Mesh.Anchor.vertices.getter();
        v136 = [v83 count];

        v84 = ObjectCaptureSession.Mesh.Anchor.vertices.getter();
        v85 = [v84 buffer];

        v86 = ObjectCaptureSession.Mesh.Anchor.normals.getter();
        v87 = [v86 buffer];

        v88 = ObjectCaptureSession.Mesh.Anchor.colors.getter();
        v89 = [v88 buffer];

        ObjectCaptureSession.Mesh.Anchor.transform.getter();
        v134 = v91;
        v135 = v90;
        v132 = v93;
        v133 = v92;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v140 + 2) + 1, 1, v140);
        }

        v95 = *(v140 + 2);
        v94 = *(v140 + 3);
        v96 = v138;
        if (v95 >= v94 >> 1)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v140);
          v96 = v138;
          v140 = v103;
        }

        (*(v96 + 8))(v78, v41);
        outlined destroy of FreeformMeshManager.MeshAnchor(v139);
        v97 = v140;
        *(v140 + 2) = v95 + 1;
        v98 = &v97[128 * v95];
        *(v98 + 4) = v136;
        *(v98 + 5) = v85;
        *(v98 + 6) = v87;
        *(v98 + 7) = v89;
        v99 = v134;
        *(v98 + 4) = v135;
        *(v98 + 5) = v99;
        v100 = v132;
        *(v98 + 6) = v133;
        *(v98 + 7) = v100;
        *(v98 + 8) = v125;
        *(v98 + 36) = v20;
        *(v98 + 37) = v22;
        *(v98 + 38) = -1;
      }

      v11 = v129;
      (*v124)(v129, v131);
    }

    if (v108[0] <= v27 + 1)
    {
      v29 = v27 + 1;
    }

    else
    {
      v29 = v108[0];
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v108[0])
      {
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
        (*(*(v101 - 8) + 56))(v9, 1, 1, v101);
        v26 = 0;
        v27 = v30;
        goto LABEL_20;
      }

      v26 = *(v126 + 8 * v28);
      ++v27;
      if (v26)
      {
        v27 = v28;
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_43:
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  __swift_project_value_buffer(v104, logger);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_23B824000, v105, v106, "Empty meshAnchors!  Nothing to render!", v107, 2u);
    MEMORY[0x23EEB0B70](v107, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void FreeformCloudRenderer.drawPoints(in:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v64 - v8;
  v9 = *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_inFlightLock];
  os_unfair_lock_lock(v9 + 4);
  v10 = FreeformCloudRenderer.createUniforms()();
  v11 = *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_emptyPointCloudBuffer];
  swift_unknownObjectRetain();
  v12 = FreeformCloudRenderer.collectCurrentMeshAnchorMetalBuffers()();
  v13 = specialized InFlightQueue.retain(_:)(v10, v11, v12);
  v14 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_commandQueue];
  if (!v14)
  {
    __break(1u);
    goto LABEL_49;
  }

  v15 = [v14 commandBuffer];
  if (!v15)
  {
LABEL_29:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_40:
    os_unfair_lock_unlock(v9 + 4);
    return;
  }

  v16 = v15;
  v74 = v12;
  v67 = v5;
  v17 = [a1 currentRenderPassDescriptor];
  if (!v17)
  {
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v18 = v17;
  v73 = v10;
  v66 = v4;
  v68 = v13;
  v69 = v9;
  v70 = a1;
  v19 = &unk_278B8A000;
  v20 = [v17 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v21 setLoadAction_];

  v22 = [v18 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v23 setClearColor_];

  v24 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer;
  if (!*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer])
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v25 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize];
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v26 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize + 8];
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v27 = v25;
  v28 = v26;

  BaseRenderer.updateDepthAttachmentTexture(width:height:)(v27, v28);

  v29 = [v18 depthAttachment];
  if (!v29)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v30 = *&v2[v24];
  if (!v30)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (!*(v30 + 32))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v31 = v29;
  [v29 setTexture_];

  v32 = [v18 depthAttachment];
  if (!v32)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v33 = v32;
  [v32 &off_278B8A3A8];

  v34 = [v18 depthAttachment];
  if (!v34)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v35 = v34;
  [v34 setStoreAction_];

  specialized FreeformCloudRenderer.renderFreeformCloud(buffer:renderPassDescriptor:resources:)(v16, v18, v73, v74);
  v36 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled;
  if ((v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled] & 1) == 0)
  {
    FreeformCloudRenderer.renderPlatter(buffer:renderPassDescriptor:)(v16, v18);
  }

  CameraFrustumRendererForLiveCamera.render(into:desc:)(v16, v18);

  if (v2[v36] == 1)
  {
    v37 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots;
    if (*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForShots])
    {

      CameraFrustumRendererForShots.render(into:desc:)(v16, v18);
    }

    v24 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPathRenderer;
    v38 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPathRenderer];
    if (v38)
    {
      v39 = *&v2[v37];
      if (v39)
      {
        v40 = *(v39 + 24);
        v19 = (v38 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
        v41 = *(v38 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
        *(v38 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = v40;
        if (v40 == v41)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v19 = (v38 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
        v42 = *(v38 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
        *(v38 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = 0;
        if ((v42 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v43 = one-time initialization token for logger;

      if (v43 == -1)
      {
LABEL_32:
        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, logger);

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 67109120;
          *(v47 + 4) = *v19;

          _os_log_impl(&dword_23B824000, v45, v46, "CameraPathRenderer.enabled = %{BOOL}d", v47, 8u);
          MEMORY[0x23EEB0B70](v47, -1, -1);
        }

        else
        {
        }

LABEL_35:
        v48 = *&v2[v24];
        if (v48)
        {
          v49 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_colorScheme;
          swift_beginAccess();
          v50 = v67;
          v65 = v24;
          v51 = *(v67 + 16);
          v52 = v66;
          v51(v71, &v2[v49], v66);
          v53 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
          swift_beginAccess();
          v51(v72, (v48 + v53), v52);
          swift_beginAccess();
          v54 = *(v50 + 24);

          v55 = v48 + v53;
          v56 = v71;
          v54(v55, v71, v52);
          swift_endAccess();
          v57 = v72;
          CameraPathRenderer.colorScheme.didset(v72);

          v58 = *(v50 + 8);
          v58(v57, v52);
          v58(v56, v52);
          if (*&v2[v65])
          {

            specialized CameraPathRenderer.render(into:viewport:renderPassDescriptor:)(v16, v18);
          }
        }

        goto LABEL_38;
      }

LABEL_47:
      swift_once();
      goto LABEL_32;
    }
  }

LABEL_38:
  v59 = [v70 currentDrawable];
  if (v59)
  {
    [v16 presentDrawable_];
    swift_unknownObjectRelease();
    v60 = swift_allocObject();
    v61 = v68;
    *(v60 + 16) = v2;
    *(v60 + 24) = v61;
    aBlock[4] = partial apply for closure #1 in FreeformCloudRenderer.drawPoints(in:);
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ();
    aBlock[3] = &block_descriptor_0;
    v62 = _Block_copy(aBlock);
    v63 = v2;

    [v16 addCompletedHandler_];
    _Block_release(v62);
    [v16 commit];

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v9 = v69;
    goto LABEL_40;
  }

LABEL_57:
  __break(1u);
}

void closure #1 in FreeformCloudRenderer.drawPoints(in:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_inFlightQueue);
  os_unfair_lock_lock((*(v6 + 16) + 16));
  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = v7[2];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v61 = a1;
  a1 = 0;
  v9 = 0;
  while (*&a1[v7 + 32] != a3)
  {
    ++v9;
    a1 += 32;
    if (v8 == v9)
    {
      v10 = v7[2];
      a1 = v61;
      goto LABEL_11;
    }
  }

  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v10 != v8)
  {
    buf = v6;
    while (v10 < v8)
    {
      v53 = *&a1[v7 + 64];
      if (v53 != a3)
      {
        if (v10 != v9)
        {
          if (v9 >= v8)
          {
            goto LABEL_49;
          }

          v54 = &v7[4 * v9 + 4];
          v65 = v54[1];
          v67 = *v54;
          v56 = v54[2];
          v55 = v54[3];
          v4 = *&a1[v7 + 72];
          v57 = *&a1[v7 + 80];
          v3 = *&a1[v7 + 88];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();

          swift_unknownObjectRetain();
          swift_unknownObjectRetain();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(buf + 4) = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            *(buf + 4) = v7;
          }

          v59 = &v7[4 * v9];
          v59[4] = v53;
          v59[5] = v4;
          v59[6] = v57;
          v59[7] = v3;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          *(buf + 4) = v7;
          if (v10 >= v7[2])
          {
            goto LABEL_50;
          }

          v60 = &a1[v7];
          *(v60 + 8) = v67;
          *(v60 + 9) = v65;
          *(v60 + 10) = v56;
          *(v60 + 11) = v55;

          swift_unknownObjectRelease();
          v6 = buf;
          swift_unknownObjectRelease();
          *(buf + 4) = v7;
        }

        ++v9;
      }

      ++v10;
      v8 = v7[2];
      a1 += 32;
      if (v10 == v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = v7[2];
LABEL_10:
  v8 = v9;
  a1 = v61;
  if (v10 < v9)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
    goto LABEL_13;
  }

LABEL_11:
  specialized Array.replaceSubrange<A>(_:with:)(v8, v10);
  swift_endAccess();
  os_unfair_lock_unlock((*(v6 + 16) + 16));
  v4 = &unk_278B8A000;
  v11 = [a1 error];
  if (!v11)
  {
    goto LABEL_16;
  }

  v3 = v11;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_52;
  }

LABEL_13:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = a1;
    v18 = swift_slowAlloc();
    v74 = v18;
    *v16 = 136446210;
    v19 = v13;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v74);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_23B824000, v14, v15, "Got error rendering PIP CommandBuffer: error=%{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v25 = v18;
    a1 = v17;
    MEMORY[0x23EEB0B70](v25, -1, -1);
    MEMORY[0x23EEB0B70](v16, -1, -1);
  }

  else
  {
  }

LABEL_16:
  v26 = [a1 v4[222]];
  if (!v26)
  {
    return;
  }

  v64 = v26;
  v27 = [v26 userInfo];
  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v28 + 16))
  {

    goto LABEL_34;
  }

  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_34:

    goto LABEL_35;
  }

  outlined init with copy of Any(*(v28 + 56) + 32 * v31, &v74);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo27MTLCommandBufferEncoderInfo_pGMd, &_sSaySo27MTLCommandBufferEncoderInfo_pGMR);
  if (swift_dynamicCast())
  {
    v6 = v73;
    if (!(v73 >> 62))
    {
      v34 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
LABEL_22:
        if (v34 < 1)
        {
          __break(1u);
          return;
        }

        v35 = 0;
        v36 = v6 & 0xC000000000000001;
        v37 = 0x27E189000uLL;
        v62 = v6 & 0xC000000000000001;
        v63 = v6;
        do
        {
          if (v36)
          {
            v49 = MEMORY[0x23EEAFC40](v35, v6);
          }

          else
          {
            v49 = *(v6 + 8 * v35 + 32);
            swift_unknownObjectRetain();
          }

          if (*(v37 + 1736) != -1)
          {
            swift_once();
          }

          v50 = type metadata accessor for Logger();
          __swift_project_value_buffer(v50, logger);
          swift_unknownObjectRetain();
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.error.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v51, v52))
          {
            bufa = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v73 = v72;
            *bufa = 136446210;
            v68 = v52;
            v38 = [v49 label];
            v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v40 = v39;

            v41 = [v49 debugSignposts];
            v42 = v37;
            v43 = v34;
            v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v74 = v44;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
            v45 = BidirectionalCollection<>.joined(separator:)();
            v47 = v46;
            v34 = v43;
            v37 = v42;

            v74 = v66;
            v75 = v40;

            MEMORY[0x23EEAF590](v45, v47);
            v36 = v62;

            v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v73);
            v6 = v63;

            *(bufa + 4) = v48;
            _os_log_impl(&dword_23B824000, v51, v68, "%{public}s", bufa, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v72);
            MEMORY[0x23EEB0B70](v72, -1, -1);
            MEMORY[0x23EEB0B70](bufa, -1, -1);

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v35;
        }

        while (v34 != v35);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

LABEL_54:
    v34 = __CocoaSet.count.getter();
    if (v34)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_35:
}

void FreeformCloudRenderer.renderPlatter(buffer:renderPassDescriptor:)(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lookAtBoxWorldProvider);
  if (!v3)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v54 = *(v3 + 4);
  v51 = *(v3 + 3);
  v53 = *(v3 + 5);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FreeformCloudRenderer.renderPlatter(buffer:renderPassDescriptor:));
  v47 = v6;
  *&v7 = specialized simd_float4x4.init(translation:rotation:scale:)(v53, v54, v51);
  v50 = v8;
  v52 = v7;
  v48 = v10;
  v49 = v9;
  *&v11 = specialized simd_float4x4.init(translation:rotation:scale:)(v53, v54, v47);
  v15 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld);
  v16 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld + 16);
  v17 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld + 32);
  v18 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld + 48);
  v19 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_lastShotTime);
  v20 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_motionGoodness);
  v21 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_localTime);
  v22 = v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection;
  v23 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection);
  v24 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection + 16);
  if (v20 <= 0.1)
  {
    v20 = 0.1;
  }

  v25 = *(v22 + 32);
  v26 = *(v22 + 48);
  v60[0] = v52;
  v60[1] = v50;
  v60[2] = v49;
  v60[3] = v48;
  v60[4] = v11;
  v60[5] = v12;
  v60[6] = v13;
  v60[7] = v14;
  v60[8] = v15;
  v60[9] = v16;
  v60[10] = v17;
  v60[11] = v18;
  v60[12] = v23;
  v60[13] = v24;
  v60[14] = v25;
  v60[15] = v26;
  v61 = 1060320051;
  v62 = v19;
  v63 = v20;
  v64 = v21;
  v27 = [a2 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  if (!v28)
  {
    goto LABEL_19;
  }

  [v28 setLoadAction_];

  v29 = [a2 depthAttachment];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer;
  v31 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer);
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!*(v31 + 32))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = v29;
  [v29 setTexture_];

  v33 = [a2 depthAttachment];
  if (!v33)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v34 = v33;
  [v33 setLoadAction_];

  v35 = [a2 depthAttachment];
  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = v35;
  [v35 setStoreAction_];

  v37 = FreeformCloudRenderer.platterRenderer.getter();
  if (!v37)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v38 = *(v2 + v30);
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v37;
  v55 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize);
  v40 = *(v38 + 24);
  swift_unknownObjectRetain();
  specialized static PlatterRenderer.createPlatterUniforms(from:)(v60, __src);
  v41 = v39[5];
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = [swift_unknownObjectRetain() contents];
  v43 = v41;
  memcpy(v42, __src, 0x160uLL);
  v44 = [a1 renderCommandEncoderWithDescriptor_];
  if (!v44)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v45 = v44;
  v56[0] = 0;
  v56[1] = 0;
  v57 = v55;
  v58 = xmmword_23B91C510;
  [v44 setViewport_];
  v46 = v40;
  if (!v40)
  {
    v46 = v39[6];
    swift_unknownObjectRetain();
  }

  swift_unknownObjectRetain();
  [v45 setDepthStencilState_];
  if (v39[4])
  {
    [v45 setRenderPipelineState_];
    [v45 setVertexBuffer:v39[5] offset:0 atIndex:0];
    [v45 setVertexBuffer:v39[8] offset:0 atIndex:1];
    [v45 setFragmentBuffer:v39[5] offset:0 atIndex:0];
    [v45 drawPrimitives:3 vertexStart:0 vertexCount:v39[7]];
    [v45 endEncoding];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

LABEL_29:
  __break(1u);
}

void FreeformCloudRenderer.initRenderPipeline()()
{
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device);
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v44[0] = 0;
  v2 = [v1 newDefaultLibraryWithBundle:static BaseRenderer.bundle error:v44];
  if (!v2)
  {
    v34 = v44[0];
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    lazy protocol witness table accessor for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error(v36, v37, v38);
    swift_allocError();
    swift_willThrow();
    return;
  }

  v3 = v2;
  v4 = v44[0];
  v5 = MEMORY[0x23EEAF480](0xD000000000000037, 0x800000023B925490);
  v6 = [v3 newFunctionWithName_];

  v7 = MEMORY[0x23EEAF480](0xD00000000000002ELL, 0x800000023B9254D0);
  v8 = [v3 newFunctionWithName_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v9 setAlphaToCoverageEnabled_];
  [v9 setVertexFunction_];
  [v9 setFragmentFunction_];
  v10 = [v9 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_21;
  }

  v12 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v11 setPixelFormat_];

  v13 = [v9 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v14 setBlendingEnabled_];

  v15 = [v9 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v16 setRgbBlendOperation_];

  v17 = [v9 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v18 setAlphaBlendOperation_];

  v19 = [v9 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v20 setSourceRGBBlendFactor_];

  v21 = [v9 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  if (!v22)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v22 setSourceAlphaBlendFactor_];

  v23 = [v9 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  if (!v24)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v24 setDestinationRGBBlendFactor_];

  v25 = [v9 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (!v26)
  {
LABEL_28:
    __break(1u);
    return;
  }

  [v26 setDestinationAlphaBlendFactor_];

  [v9 setDepthAttachmentPixelFormat_];
  v44[0] = 0;
  v27 = [v1 newRenderPipelineStateWithDescriptor:v9 error:v44];
  v28 = v44[0];
  if (v27)
  {
    *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderPipelineState) = v27;
    v29 = v28;
    swift_unknownObjectRelease();
    v30 = [v1 newCommandQueue];
    if (v30)
    {
      v33 = v30;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_commandQueue) = v33;
      swift_unknownObjectRelease();
      return;
    }

    lazy protocol witness table accessor for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error(0, v31, v32);
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v39 = v44[0];
    v40 = _convertNSErrorToError(_:)();

    v41 = swift_willThrow();
    lazy protocol witness table accessor for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error(v41, v42, v43);
    swift_allocError();
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id FreeformCloudRenderer.createUniforms()()
{
  result = [*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device) newBufferWithLength:880 options:0];
  if (result)
  {
    v2 = result;
    v3 = [swift_unknownObjectRetain() contents];
    v4 = v2;
    *(v3 + 135) = 0;
    v5 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize);
    *(v3 + 137) = v5 * 0.01;
    v6 = *MEMORY[0x277D860B8];
    v7 = *(MEMORY[0x277D860B8] + 16);
    v8 = *(MEMORY[0x277D860B8] + 32);
    v9 = *(MEMORY[0x277D860B8] + 48);
    *v3 = *MEMORY[0x277D860B8];
    *(v3 + 1) = v7;
    *(v3 + 2) = v8;
    *(v3 + 3) = v9;
    v10 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderBoundingBoxWorld);
    v76 = v6;
    v77 = v7;
    v78 = v8;
    v79 = v9;
    Transform.init(matrix:)();
    v70 = v12;
    v73 = v11;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FreeformCloudRenderer.createUniforms());
    *&v14 = specialized simd_float4x4.init(translation:rotation:scale:)(v70, v73, v13);
    *(v3 + 8) = v14;
    *(v3 + 9) = v15;
    *(v3 + 10) = v16;
    *(v3 + 11) = v17;
    v18 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld);
    *(v3 + 3) = __invert_f4(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewToWorld));
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    *(v3 + 16) = *v18;
    *(v3 + 17) = v19;
    *(v3 + 18) = v20;
    *(v3 + 19) = v21;
    v22 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection + 16);
    v23 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection + 32);
    v24 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection + 48);
    *(v3 + 20) = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_projection);
    *(v3 + 21) = v22;
    *(v3 + 22) = v23;
    *(v3 + 23) = v24;
    *(v3 + 24) = v76;
    *(v3 + 25) = v77;
    *(v3 + 26) = v78;
    *(v3 + 27) = v79;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FreeformCloudRenderer.createUniforms());
    *(v3 + 56) = v25;
    *(v3 + 114) = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_motionGoodness);
    v3[552] = 0;
    v26 = v10[3];
    v83[2] = v10[2];
    v83[3] = v26;
    v84 = v10[4].i8[0];
    v27 = v10[1];
    v83[0] = *v10;
    v83[1] = v27;
    v28 = specialized static BoundingBoxHelpers.getBoundingSphere(boxWorld:)(v83);
    v28.n128_u32[2] = v29;
    *(v3 + 35) = v28;
    *(v3 + 144) = v30;
    v31 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_clippedFreeformBoundingBoxWorld);
    if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_clippedFreeformBoundingBoxWorld + 64))
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v74 = 0u;
    }

    else
    {
      v68 = v31[2];
      v71 = v31[3];
      v64 = *v31;
      v65 = v31[1];
      *v35.i64 = Transform.init(matrix:)();
      v62 = v37;
      v63 = v36;
      v36.f32[0] = vmuls_lane_f32(0.5, v35, 2);
      v37.i64[0] = 0x3F0000003F000000;
      v37.i64[1] = 0x3F0000003F000000;
      v35.i64[0] = vmulq_f32(v35, v37).u64[0];
      v35.i64[1] = v36.u32[0];
      v38 = vrecpeq_f32(v35);
      v39 = vmulq_f32(v38, vrecpsq_f32(v35, v38));
      v75 = vmulq_f32(v39, vrecpsq_f32(v35, v39));
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of FreeformCloudRenderer.createUniforms());
      specialized simd_float4x4.init(translation:rotation:scale:)(v62, v63, v40);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of FreeformCloudRenderer.createUniforms());
      v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, *&v41), v65, *&v41, 1), v68, v41, 2), v71, v41, 3).i32[1];
      v42 = v75;
      v42.i32[1] = vmuls_lane_f32(0.5, *v75.f32, 1);
      v33 = 0x3F8666663F733333;
      v74 = v42;
      v32 = 1;
    }

    Transform.init(matrix:)();
    v72 = v43;
    v66 = v44;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #4 of FreeformCloudRenderer.createUniforms());
    v69 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_23B91A6D0;
    *(v46 + 32) = v66;
    *(v46 + 36) = v34;
    *(v46 + 40) = DWORD2(v66);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v46);
    v67 = v47;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *v85.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v67, v72, v69);
    *(v3 + 592) = __invert_f4(v85);
    *(v3 + 41) = v74;
    *(v3 + 84) = v33;
    v3[680] = v32;
    *(v3 + 681) = 0;
    v3[683] = 0;
    *(v3 + 171) = v34;
    *(v3 + 344) = 257;
    *v48.i64 = Transform.init(matrix:)();
    v49 = vmulq_f32(v48, v48);
    v50 = sqrtf(v49.f32[2] + vaddv_f32(*v49.f32)) * 0.004;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FreeformCloudRenderer.createPerlinNoiseParameters(for:));
    v51 = vdupq_lane_s32(0, 0);
    v52 = v51;
    v52.i32[0] = v53;
    v54 = v51;
    v54.i32[1] = v55;
    v56 = v51;
    v56.i32[2] = v57;
    v51.i32[3] = v58;
    *(v3 + 176) = v50;
    *(v3 + 708) = v80;
    *(v3 + 179) = v81;
    *(v3 + 45) = v52;
    *(v3 + 46) = v54;
    *(v3 + 47) = v56;
    *(v3 + 48) = v51;
    FreeformCloudRenderer.createSpotlight()(v82);
    v59 = v82[3];
    *(v3 + 51) = v82[2];
    *(v3 + 52) = v59;
    v60 = v82[5];
    *(v3 + 53) = v82[4];
    *(v3 + 54) = v60;
    v61 = v82[1];
    *(v3 + 49) = v82[0];
    *(v3 + 50) = v61;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FreeformCloudRenderer.setupCameraFrustumRendererForLiveCamera()()
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CameraFrustumMesh.Descriptor.init());
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FreeformCloudRenderer.setupCameraFrustumRendererForLiveCamera());
  v5 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_device);

    v6 = v5;
    v7 = 1014350479;
    v8 = xmmword_23B91C520;
    v9 = 0x3DB851EC3F800000;
    v10 = 1031127695;
    v11 = 96;
    v12 = xmmword_23B91C530;
    v13 = 994352038;
    v14 = 96;
    v15 = 1065353216;
    CameraFrustumRendererForLiveCamera.setup(device:pixelFormat:cameraFrustumMeshDescriptor:)(v4, [v3 colorPixelFormat], &v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FreeformCloudRenderer.createSpotlight()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPoseWorld;
  v3 = 0;
  v4 = 0;
  v5 = 0uLL;
  if ((*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPoseWorld + 48) & 1) != 0 || (v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForLiveCamera, *(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraFrustumRendererForLiveCamera) + 24) <= 0.0))
  {
    v27 = 0;
    v26 = 0uLL;
    v25 = 0uLL;
  }

  else
  {
    v7 = *(v2 + 32);
    v29 = *(v2 + 16);
    HIDWORD(v7) = 1.0;
    v31 = v7;
    v8 = a1;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FreeformCloudRenderer.createSpotlight());
    v9 = vmulq_f32(v29, xmmword_23B91C020);
    v10 = vnegq_f32(v9);
    v11 = vtrn2q_s32(v9, vtrn1q_s32(v9, v10));
    v13 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v9, v10, 8uLL), *v12.f32, 1), vextq_s8(v11, v11, 8uLL), v12.f32[0]);
    v14 = vrev64q_s32(v9);
    v14.i32[0] = v10.i32[1];
    v14.i32[3] = v10.i32[2];
    v15 = vmlaq_laneq_f32(v13, v14, v12, 2);
    v16 = vnegq_f32(v15);
    v17 = vtrn2q_s32(v15, vtrn1q_s32(v15, v16));
    v18 = vrev64q_s32(v15);
    v18.i32[0] = v16.i32[1];
    v18.i32[3] = v16.i32[2];
    _Q0 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v15, v29, 3), v18, v29, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v15, v16, 8uLL), *v29.f32, 1), vextq_s8(v17, v17, 8uLL), v29.f32[0]));
    _Q0.i32[3] = 0;
    v30 = _Q0;
    __asm { FMOV            V0.2S, #13.0 }

    _Q0.i32[0] = *(*(v1 + v6) + 20);
    v28 = _Q0.i64[0];
    result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FreeformCloudRenderer.createSpotlight());
    v3 = v28;
    v26 = v30;
    v5 = v31;
    a1 = v8;
    v4 = *(*(v1 + v6) + 24);
    v27 = 1;
  }

  *a1 = v27;
  *(a1 + 16) = v5;
  *(a1 + 32) = v26;
  *(a1 + 48) = v3;
  *(a1 + 64) = v25;
  *(a1 + 80) = v4;
  return result;
}

id FreeformCloudRenderer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FreeformCloudRenderer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FreeformCloudRenderer(uint64_t a1)
{
  result = type metadata singleton initialization cache for FreeformCloudRenderer;
  if (!type metadata singleton initialization cache for FreeformCloudRenderer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FreeformCloudRenderer(uint64_t a1)
{
  type metadata accessor for Published<UIInterfaceOrientation>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ColorScheme();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<UIInterfaceOrientation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<UIInterfaceOrientation>)
  {
    type metadata accessor for UIInterfaceOrientation(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<UIInterfaceOrientation>);
    }
  }
}

uint64_t getEnumTagSinglePayload for FreeformCloudRenderer.ResourceEntry(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for FreeformCloudRenderer.ResourceEntry(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance FreeformCloudRenderer@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FreeformCloudRenderer(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t key path getter for FreeformCloudRenderer.interfaceOrientation : FreeformCloudRenderer@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for FreeformCloudRenderer.interfaceOrientation : FreeformCloudRenderer(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0P6AnchorVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab29VKXEfU_10Foundation4UUIDV_19_kl1_m4UI19opq4C0O6R4VTG5APxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjOIsgnndzo_Tf1nc_n05_s19_kl1_m4UI21o78CloudRendererC9hasPoints33_3779DB7E999291C1C0BBA21A79DFAE44LLSbvgSbyKXEfu_Sb10z16UUIDV3key_AA0E11pq4C0T6R15V5valuet_tXEfU_Tf1nnc_n(v8, v4, v2);
  result = MEMORY[0x23EEB0B70](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3)
{
  v41 = a2;
  v42 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
  v4 = MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v41 - v6;
  v7 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for UUID();
  result = MEMORY[0x28223BE20](v48);
  v57 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v54 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v43 = 0;
  v44 = (v16 + 63) >> 6;
  v58 = v10;
  v46 = v10 + 1;
  v47 = v10 + 2;
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v56 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v12 << 6);
    v23 = v54;
    v24 = v58[2];
    v25 = v57;
    v26 = v48;
    v24(v57, v54[6] + v58[9] * v22, v48);
    v27 = v23[7];
    v28 = v49;
    v29 = *(v50 + 72);
    v45 = v22;
    outlined init with copy of FreeformMeshManager.MeshAnchor(v27 + v29 * v22, v49);
    v30 = v51;
    v24(v51, v25, v26);
    v31 = v53;
    outlined init with copy of FreeformMeshManager.MeshAnchor(v28, &v30[*(v53 + 48)]);
    v32 = v30;
    v33 = v52;
    outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v32, v52, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
    v34 = *(v31 + 48);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
    v55 = &v41;
    MEMORY[0x28223BE20](v35 - 8);
    v37 = &v41 - v36;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v33 + v34, &v41 - v36, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
    outlined destroy of FreeformMeshManager.MeshAnchor(v33 + v34);
    v38 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
    LODWORD(v34) = (*(*(v38 - 8) + 48))(v37, 1, v38);
    outlined destroy of ObjectCaptureSession.Mesh.Anchor?(v37);
    v39 = v58[1];
    v39(v33, v26);
    outlined destroy of FreeformMeshManager.MeshAnchor(v28);
    result = (v39)(v57, v26);
    v18 = v56;
    if (v34 != 1)
    {
      *(v42 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v42, v41, v43, v54);
      }
    }
  }

  v20 = v12;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v44)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v42, v41, v43, v54);
    }

    v21 = v14[v12];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v56 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0P6AnchorVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab29VKXEfU_10Foundation4UUIDV_19_kl1_m4UI19opq4C0O6R4VTG5APxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjOIsgnndzo_Tf1nc_n05_s19_kl1_m4UI21o78CloudRendererC9hasPoints33_3779DB7E999291C1C0BBA21A79DFAE44LLSbvgSbyKXEfu_Sb10z16UUIDV3key_AA0E11pq4C0T6R15V5valuet_tXEfU_Tf1nnc_n(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  v48 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v55 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = v43 - v11;
  v54 = type metadata accessor for UUID();
  v52 = *(v54 - 8);
  v12 = MEMORY[0x28223BE20](v54);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = v43 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43[1] = v52 + 16;
  v44 = a2;
  v53 = v52 + 32;
  v20 = result + 64;
  v45 = a1;
  v43[0] = a4;
  v21 = v54;
  while (v18)
  {
    v22 = v14;
    v23 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_16:
    v26 = v23 | (v19 << 6);
    v27 = a4[6];
    v28 = v52;
    v51 = *(v52 + 72);
    v29 = v46;
    (*(v52 + 16))(v46, v27 + v51 * v26, v21);
    v30 = a4[7];
    v50 = *(v48 + 72);
    v31 = v30 + v50 * v26;
    v32 = v47;
    outlined init with copy of FreeformMeshManager.MeshAnchor(v31, v47);
    v33 = *(v28 + 32);
    v14 = v22;
    v33(v22, v29, v21);
    outlined init with take of FreeformMeshManager.MeshAnchor(v32, v55);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v34 = -1 << *(v17 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a2 = v44;
      a1 = v45;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v20 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v20 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v33((*(v17 + 48) + v37 * v51), v14, v54);
    result = outlined init with take of FreeformMeshManager.MeshAnchor(v55, *(v17 + 56) + v37 * v50);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43[0];
    v18 = v49;
    if (!a3)
    {
      return v17;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v22 = v14;
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void specialized FreeformMiniView.init(model:renderer:)(void *a1@<X1>, void *a2@<X8>)
{
  v27 = a1;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 orientation];

  v28 = v12;
  type metadata accessor for UIDeviceOrientation(0);
  State.init(wrappedValue:)();
  v25 = v30;
  v26 = v29;
  v13 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  Publisher<>.makeConnectable()();
  (*(v4 + 8))(v6, v3);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.MakeConnectable<NSNotificationCenter.Publisher> and conformance Publishers.MakeConnectable<A>, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR, MEMORY[0x277CBCBB8]);
  v14 = ConnectablePublisher.autoconnect()();
  (*(v8 + 8))(v10, v7);
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);

  v15 = ObservedObject.init(wrappedValue:)();
  v17 = v16;
  type metadata accessor for FreeformCloudRenderer(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type FreeformCloudRenderer and conformance FreeformCloudRenderer, type metadata accessor for FreeformCloudRenderer, &protocol conformance descriptor for FreeformCloudRenderer);
  v18 = v27;
  v19 = ObservedObject.init(wrappedValue:)();
  v21 = v20;
  v22 = *&v18[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_id];

  *a2 = v22;
  a2[1] = v23;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = v19;
  a2[5] = v21;
  v24 = v25;
  a2[6] = v26;
  a2[7] = v24;
  a2[8] = v14;
}

unint64_t lazy protocol witness table accessor for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error;
  if (!lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error;
  if (!lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformCloudRenderer.Error and conformance FreeformCloudRenderer.Error);
  }

  return result;
}

void *specialized FreeformCloudRenderer.renderFreeformCloud(buffer:renderPassDescriptor:resources:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = result;
  v48 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = 0;
    v29 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_baseRenderer;
    v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_viewportSize;
    v28 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_renderPipelineState;
    v8 = 0x1FA971000uLL;
    v9 = 0x1FB5E3000uLL;
    while (1)
    {
      v10 = v9;
      v42 = v5;
      v11 = v8;
      v40 = *(a4 + v7 + 32);
      v12 = *(a4 + v7 + 48);
      v13 = *(a4 + v7 + 56);
      v36 = *(a4 + v7 + 80);
      v37 = *(a4 + v7 + 64);
      v34 = *(a4 + v7 + 112);
      v35 = *(a4 + v7 + 96);
      v39 = *(a4 + v7 + 128);
      v14 = *(a4 + v7 + 144);
      v38 = *(a4 + v7 + 152);
      v15 = *(a4 + v7 + 40);
      swift_unknownObjectRetain();
      v41 = v12;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v16 = a2;
      v17 = [a2 colorAttachments];
      v18 = [v17 objectAtIndexedSubscript_];

      if (!v18)
      {
        break;
      }

      if (v7)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      [v18 (v11 + 936)];

      v20 = [v16 (v10 + 1298)];
      if (!v20)
      {
        goto LABEL_15;
      }

      v21 = v20;
      [v20 (v11 + 936)];

      v22 = [v16 (v10 + 1298)];
      if (!v22)
      {
        goto LABEL_16;
      }

      v23 = v22;
      v9 = v10;
      [v22 setStoreAction_];

      a2 = v16;
      v24 = [v32 renderCommandEncoderWithDescriptor_];
      if (!v24)
      {
        goto LABEL_17;
      }

      v25 = v24;
      v44.columns[0] = 0uLL;
      v44.columns[1] = *(v4 + v30);
      v44.columns[2] = xmmword_23B91C510;
      [v24 setViewport_];
      v26 = *(v4 + v29);
      if (!v26)
      {
        goto LABEL_18;
      }

      v8 = v11;
      [v25 setDepthStencilState_];
      if (!*(v4 + v28))
      {
        goto LABEL_19;
      }

      [v25 setRenderPipelineState_];
      [v25 setVertexBuffer:a3 offset:0 atIndex:0];
      [v25 setVertexBuffer:v15 offset:0 atIndex:1];
      [v25 setVertexBuffer:v41 offset:0 atIndex:2];
      [v25 setVertexBuffer:v13 offset:0 atIndex:3];
      v44.columns[0] = v37;
      v44.columns[1] = v36;
      v44.columns[2] = v35;
      v44.columns[3] = v34;
      [v25 setVertexBytes:&v44 length:64 atIndex:4];
      v49 = __invert_f4(v44);
      v27 = vzip1q_s32(v49.columns[0], v49.columns[2]);
      v49.columns[0] = vzip2q_s32(v49.columns[0], v49.columns[2]);
      v49.columns[2] = vzip1q_s32(v49.columns[1], v49.columns[3]);
      v49.columns[1] = vzip2q_s32(v49.columns[1], v49.columns[3]);
      v43[0] = vzip1q_s32(v27, v49.columns[2]);
      v43[1] = vzip2q_s32(v27, v49.columns[2]);
      v43[2] = vzip1q_s32(v49.columns[0], v49.columns[1]);
      v43[3] = vzip2q_s32(v49.columns[0], v49.columns[1]);
      [v25 setVertexBytes:v43 length:64 atIndex:5];
      v45 = v39;
      v46 = v14;
      v47 = v38;
      [v25 setVertexBytes:&v45 length:32 atIndex:6];
      [v25 drawPrimitives:0 vertexStart:0 vertexCount:v40];
      [v25 endEncoding];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v7 += 128;
      v5 = v42 - 1;
      if (v42 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of ObjectCaptureSession.Mesh.Anchor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of DispatchTime?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy128_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for FreeformCloudRenderer.AnchorMetalResource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for FreeformCloudRenderer.AnchorMetalResource(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}