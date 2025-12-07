unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v46 = *v5;
  Hasher.init(_seed:)();
  v42 = v5;
  v43 = a1;
  if (v6)
  {
    if (v6 != 1)
    {
      MEMORY[0x1C68F4C10](0);
      goto LABEL_7;
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  MEMORY[0x1C68F4C10](v11);
  String.hash(into:)();
  specialized Set.hash(into:)(v47, a4);
LABEL_7:
  v12 = Hasher._finalize()();
  v13 = -1 << *(v46 + 32);
  v14 = v12 & ~v13;
  if (((*(v46 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v47[0] = *v42;
    outlined copy of _Proto_MeshScope_v1(a2, a3, a4, v6);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, v6, v14, isUniquelyReferenced_nonNull_native);
    *v42 = *&v47[0];
    *v43 = a2;
    *(v43 + 8) = a3;
    *(v43 + 16) = a4;
    *(v43 + 24) = v6;
    return 1;
  }

  v45 = ~v13;
  v16 = v6 != 2 || (a3 | a2 | a4) != 0;
  v44 = v16;
  while (1)
  {
    v18 = *(v46 + 48) + 32 * v14;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    if (!*(v18 + 24))
    {
      if (!v6)
      {
        v29 = v20 == a2 && v19 == a3;
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          outlined copy of _Proto_MeshScope_v1(a2, a3, a4, 0);
          outlined copy of _Proto_MeshScope_v1(v20, v19, v21, 0);
          v24 = 0;
          goto LABEL_32;
        }

        outlined copy of _Proto_MeshScope_v1(v20, v19, v21, 0);
        outlined copy of _Proto_MeshScope_v1(a2, a3, a4, 0);
        outlined copy of _Proto_MeshScope_v1(v20, v19, v21, 0);
        v30 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v21, a4);
        outlined consume of _Proto_MeshScope_v1(v20, v19, v21, 0);
        outlined consume of _Proto_MeshScope_v1(v20, v19, v21, 0);
        outlined consume of _Proto_MeshScope_v1(a2, a3, a4, 0);
        if (v30)
        {
          v33 = a2;
          v34 = a3;
          v35 = a4;
          v36 = 0;
          goto LABEL_44;
        }

        goto LABEL_16;
      }

      outlined copy of _Proto_MeshScope_v1(a2, a3, a4, v6);
      v25 = v20;
      v26 = v19;
      v27 = v21;
      v28 = 0;
LABEL_31:
      outlined copy of _Proto_MeshScope_v1(v25, v26, v27, v28);
      v24 = v6;
      goto LABEL_32;
    }

    if (v22 != 1)
    {
      if (!v44)
      {
        outlined consume of _Proto_MeshScope_v1(v20, v19, v21, 2u);
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 2;
        goto LABEL_44;
      }

      v25 = a2;
      v26 = a3;
      v27 = a4;
      v28 = v6;
      goto LABEL_31;
    }

    if (v6 != 1)
    {
      outlined copy of _Proto_MeshScope_v1(a2, a3, a4, v6);
      v25 = v20;
      v26 = v19;
      v27 = v21;
      v28 = 1;
      goto LABEL_31;
    }

    v23 = v20 == a2 && v19 == a3;
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v24 = 1;
      outlined copy of _Proto_MeshScope_v1(a2, a3, a4, 1u);
      outlined copy of _Proto_MeshScope_v1(v20, v19, v21, 1u);
LABEL_32:
      outlined consume of _Proto_MeshScope_v1(v20, v19, v21, v22);
      outlined consume of _Proto_MeshScope_v1(a2, a3, a4, v24);
      goto LABEL_16;
    }

    outlined copy of _Proto_MeshScope_v1(v20, v19, v21, 1u);
    outlined copy of _Proto_MeshScope_v1(a2, a3, a4, 1u);
    outlined copy of _Proto_MeshScope_v1(v20, v19, v21, 1u);
    v17 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v21, a4);
    outlined consume of _Proto_MeshScope_v1(v20, v19, v21, 1u);
    outlined consume of _Proto_MeshScope_v1(v20, v19, v21, 1u);
    outlined consume of _Proto_MeshScope_v1(a2, a3, a4, 1u);
    if (v17)
    {
      break;
    }

LABEL_16:
    v14 = (v14 + 1) & v45;
    if (((*(v46 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = 1;
LABEL_44:
  outlined consume of _Proto_MeshScope_v1(v33, v34, v35, v36);
  v37 = *(v46 + 48) + 32 * v14;
  v38 = *v37;
  v39 = *(v37 + 8);
  v40 = *(v37 + 16);
  *v43 = *v37;
  *(v43 + 8) = v39;
  *(v43 + 16) = v40;
  v41 = *(v37 + 24);
  *(v43 + 24) = v41;
  outlined copy of _Proto_MeshScope_v1(v38, v39, v40, v41);
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(float32x4_t *a1, float32x4_t *a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  CollisionPlane_v1.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = a2->i64[0];
    while (1)
    {
      v11 = *(v5 + 48) + 80 * v8;
      v12 = *(v11 + 8);
      v13 = *(v11 + 12);
      v14 = *v11 == v10 && v12 == a2->f32[2];
      if (v14 && v13 == a2->f32[3])
      {
        v17 = *(v11 + 48);
        v16 = *(v11 + 64);
        v19 = *(v11 + 16);
        v18 = *(v11 + 32);
        if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v18, a2[2]), vceqq_f32(v19, a2[1])), vandq_s8(vceqq_f32(v17, a2[3]), vceqq_f32(v16, a2[4])))) & 0x80000000) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    result = 0;
    a1->i64[0] = v10;
    a1->f32[2] = v12;
    a1->f32[3] = v13;
    a1[1] = v19;
    a1[2] = v18;
    a1[3] = v17;
    a1[4] = v16;
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v24;
    v22 = a2[3];
    a1[2] = a2[2];
    a1[3] = v22;
    a1[4] = a2[4];
    v23 = a2[1];
    result = 1;
    *a1 = *a2;
    a1[1] = v23;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, float32x4_t *a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  v6 = a2->i64[1];
  v7 = a2[1].i64[0];
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of GeometricPin(a2, &v25);
    v24 = *v23;
    specialized _NativeSet.insertNew(_:at:isUnique:)(&v25, v10, isUniquelyReferenced_nonNull_native);
    *v23 = v24;
    outlined init with take of GeometricPin(a2, a1);
    return 1;
  }

  v11 = ~v9;
  while (1)
  {
    outlined init with copy of GeometricPin(*(v5 + 48) + 80 * v10, &v25);
    v12 = v25.i64[1] == v6 && v26 == v7;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_27;
    }

    v13 = a2[2].i64[0];
    if (v28)
    {
      if (!v13 || (v27 != a2[1].i64[1] || v28 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v13)
    {
      goto LABEL_27;
    }

    v14 = vmovn_s32(vceqq_f32(v29, a2[3]));
    if ((v14.i8[0] & 1) == 0 || (v14.i8[2] & 1) == 0 || (v14.i8[4] & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(v30, a2[4]))) & 1) == 0)
    {
      goto LABEL_27;
    }

    Strong = swift_weakLoadStrong();
    v16 = swift_weakLoadStrong();
    if (!Strong)
    {
      break;
    }

    if (!v16)
    {
      goto LABEL_26;
    }

    v21 = *(Strong + 16);
    v17 = v16;

    v22 = a1;
    v18 = *(v17 + 16);

    outlined destroy of GeometricPin(&v25);
    v12 = v21 == v18;
    a1 = v22;
    if (v12)
    {
      goto LABEL_31;
    }

LABEL_28:
    v10 = (v10 + 1) & v11;
    if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (v16)
  {
LABEL_26:

LABEL_27:
    outlined destroy of GeometricPin(&v25);
    goto LABEL_28;
  }

  outlined destroy of GeometricPin(&v25);
LABEL_31:
  outlined destroy of GeometricPin(a2);
  outlined init with copy of GeometricPin(*(v5 + 48) + 80 * v10, a1);
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  Hasher.init(_seed:)();
  v7 = a2 & 1;
  MEMORY[0x1C68F4C10](v7);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v37 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v37 = &v37 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v38 = v2;
  v52 = *v2;
  Hasher.init(_seed:)();
  v51 = a2;
  outlined init with copy of UUID?(a2, v20);
  v21 = *(v7 + 48);
  v50 = v7 + 48;
  if (v21(v20, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v9, v20, v6);
    Hasher._combine(_:)(1u);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v9, v6);
  }

  v22 = Hasher._finalize()();
  v23 = -1 << *(v52 + 32);
  v24 = v22 & ~v23;
  v48 = v52 + 56;
  v25 = v42;
  if (((*(v52 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
LABEL_14:
    v32 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v51;
    v35 = v37;
    outlined init with copy of UUID?(v51, v37);
    v53 = *v32;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v35, v24, isUniquelyReferenced_nonNull_native);
    *v32 = v53;
    outlined init with take of UUID?(v34, v39);
    return 1;
  }

  v47 = v21;
  v41 = v9;
  v45 = ~v23;
  v40 = (v7 + 32);
  v46 = *(v11 + 72);
  v44 = (v7 + 8);
  while (1)
  {
    v26 = v46 * v24;
    outlined init with copy of UUID?(*(v52 + 48) + v46 * v24, v15);
    v27 = *(v25 + 48);
    outlined init with copy of UUID?(v15, v5);
    outlined init with copy of UUID?(v51, &v5[v27]);
    v28 = v47;
    if (v47(v5, 1, v6) == 1)
    {
      break;
    }

    outlined init with copy of UUID?(v5, v49);
    if (v28(&v5[v27], 1, v6) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*v44)(v49, v6);
      goto LABEL_7;
    }

    v29 = v49;
    v30 = v41;
    (*v40)(v41, &v5[v27], v6);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    v31 = *v44;
    (*v44)(v30, v6);
    outlined destroy of BodyTrackingComponent?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v31(v29, v6);
    v25 = v42;
    outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v43)
    {
      goto LABEL_16;
    }

LABEL_8:
    v24 = (v24 + 1) & v45;
    if (((*(v48 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  outlined destroy of BodyTrackingComponent?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v28(&v5[v27], 1, v6) != 1)
  {
LABEL_7:
    outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_8;
  }

  outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_16:
  outlined destroy of BodyTrackingComponent?(v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of UUID?(*(v52 + 48) + v26, v39);
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for __REAsset();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_Tt1g5(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      specialized _NativeSet.resize(capacity:)(v17 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(a2 + 16));
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(*(v6 + 48) + 8 * v12) + 16) != *(a2 + 16))
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR, MEMORY[0x1E69E6530]);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR, MEMORY[0x1E69E76D8]);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy17RealityFoundation5IKRigV5JointV2IDVGMd, &_ss11_SetStorageCy17RealityFoundation5IKRigV5JointV2IDVGMR, &type metadata for IKRig.Joint.ID);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVGMd, &_ss11_SetStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVGMR, &type metadata for IKRig.Constraint.ID);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR, &type metadata for SpatialTrackingSession.Configuration.SceneUnderstandingCapability);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMR, &type metadata for SpatialTrackingSession.Configuration.AnchorCapability);
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  v12 = MEMORY[0x1C68F4BF0](*(*v5 + 40));
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1C68F4BD0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v34, a2);
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v31 = ~v6;
    v8 = 0xEB00000000746E65;
    v9 = 0xE90000000000006ELL;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      v33 = v7;
      if (v10 > 4)
      {
        if (*(*(v4 + 48) + v7) <= 6u)
        {
          if (v10 == 5)
          {
            v16 = 0xE400000000000000;
            v15 = 1752393069;
          }

          else
          {
            v16 = 0xE700000000000000;
            v15 = 0x73636973796870;
          }
        }

        else if (v10 == 7)
        {
          v16 = 0xE700000000000000;
          v15 = 0x65727574786574;
        }

        else if (v10 == 8)
        {
          v15 = 0x6F4C797469746E65;
          v16 = 0xEA00000000006461;
        }

        else
        {
          v16 = 0xE500000000000000;
          v15 = 0x6F65646976;
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x4D6E49746C697562;
        }

        else
        {
          v11 = 0xD000000000000013;
        }

        if (v10 == 3)
        {
          v12 = 0xEF6C616972657461;
        }

        else
        {
          v12 = 0x80000001C18DDAF0;
        }

        if (v10 == 2)
        {
          v11 = 0x6D6E6F7269766E65;
          v12 = v8;
        }

        v13 = *(*(v4 + 48) + v7) ? 0x6F69647561 : 0x6F6974616D696E61;
        v14 = *(*(v4 + 48) + v7) ? 0xE500000000000000 : 0xE90000000000006ELL;
        v15 = *(*(v4 + 48) + v7) <= 1u ? v13 : v11;
        v16 = *(*(v4 + 48) + v7) <= 1u ? v14 : v12;
      }

      v17 = 0x6F4C797469746E65;
      if (a2 != 8)
      {
        v17 = 0x6F65646976;
      }

      v18 = 0xEA00000000006461;
      if (a2 != 8)
      {
        v18 = 0xE500000000000000;
      }

      if (a2 == 7)
      {
        v17 = 0x65727574786574;
        v18 = 0xE700000000000000;
      }

      v19 = 0x73636973796870;
      if (a2 == 5)
      {
        v19 = 1752393069;
      }

      v20 = 0xE400000000000000;
      if (a2 != 5)
      {
        v20 = 0xE700000000000000;
      }

      if (a2 <= 6u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (a2 == 3)
      {
        v21 = 0x4D6E49746C697562;
      }

      else
      {
        v21 = 0xD000000000000013;
      }

      if (a2 == 3)
      {
        v22 = 0xEF6C616972657461;
      }

      else
      {
        v22 = 0x80000001C18DDAF0;
      }

      if (a2 == 2)
      {
        v21 = 0x6D6E6F7269766E65;
        v22 = v8;
      }

      if (a2)
      {
        v23 = 0x6F69647561;
      }

      else
      {
        v23 = 0x6F6974616D696E61;
      }

      if (a2)
      {
        v9 = 0xE500000000000000;
      }

      if (a2 <= 1u)
      {
        v21 = v23;
        v22 = v9;
      }

      v24 = a2 <= 4u ? v21 : v17;
      v25 = a2 <= 4u ? v22 : v18;
      if (v15 == v24 && v16 == v25)
      {
        break;
      }

      v26 = v8;
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_73;
      }

      v7 = (v33 + 1) & v31;
      v8 = v26;
      v9 = 0xE90000000000006ELL;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

LABEL_73:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v33);
  }

  else
  {
LABEL_71:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = *v29;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v7, isUniquelyReferenced_nonNull_native);
    *v29 = v34[0];
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v28 = ~v6;
    v8 = 0xED00006F65726574;
    v9 = 0xE900000000000044;
    v10 = 0x336C616974617073;
    while (1)
    {
      v11 = *(*(v4 + 48) + v7);
      if (v11 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v12 = 0x536C616974617073;
        }

        else
        {
          v12 = 1869508461;
        }

        if (*(*(v4 + 48) + v7))
        {
          v13 = v8;
        }

        else
        {
          v13 = 0xE400000000000000;
        }
      }

      else if (v11 == 2)
      {
        v12 = 0xD000000000000016;
        v13 = 0x80000001C18DDB40;
      }

      else
      {
        if (v11 == 3)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0xD000000000000012;
        }

        if (v11 == 3)
        {
          v13 = 0xE900000000000044;
        }

        else
        {
          v13 = 0x80000001C18DDB70;
        }
      }

      v14 = 0xD000000000000016;
      if (a2 == 3)
      {
        v15 = v10;
      }

      else
      {
        v15 = 0xD000000000000012;
      }

      if (a2 != 3)
      {
        v9 = 0x80000001C18DDB70;
      }

      if (a2 != 2)
      {
        v14 = v15;
      }

      v16 = 0x80000001C18DDB40;
      if (a2 != 2)
      {
        v16 = v9;
      }

      v17 = a2 ? 0x536C616974617073 : 1869508461;
      v18 = a2 ? v8 : 0xE400000000000000;
      v19 = a2 <= 1u ? v17 : v14;
      v20 = a2 <= 1u ? v18 : v16;
      if (v12 == v19 && v13 == v20)
      {
        break;
      }

      v21 = v10;
      v22 = v8;
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_45;
      }

      v7 = (v7 + 1) & v28;
      v8 = v22;
      v9 = 0xE900000000000044;
      v10 = v21;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v7, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a2);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit9__REAssetCGMd, &_ss11_SetStorageCy10RealityKit9__REAssetCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for __REAsset();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v14 + 16));
        result = Hasher._finalize()();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation19_Proto_MeshScope_v1OGMd, &_ss11_SetStorageCy17RealityFoundation19_Proto_MeshScope_v1OGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v3;
    v6 = 0;
    v7 = (v3 + 56);
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
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v30 = 1 << *(v3 + 32);
        if (v30 >= 64)
        {
          bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v30;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_34;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *(v18 + 8);
      v32 = *v18;
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      Hasher.init(_seed:)();
      if (!v21)
      {
        break;
      }

      if (v21 == 1)
      {
        v22 = 2;
LABEL_19:
        MEMORY[0x1C68F4C10](v22);
        String.hash(into:)();
        specialized Set.hash(into:)(v33, v20);
        goto LABEL_21;
      }

      MEMORY[0x1C68F4C10](0);
LABEL_21:
      result = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v32;
      *(v14 + 8) = v19;
      *(v14 + 16) = v20;
      *(v14 + 24) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v22 = 1;
    goto LABEL_19;
  }

LABEL_34:

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation12GeometricPinVGMd, &_ss11_SetStorageCy17RealityFoundation12GeometricPinVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      outlined init with take of GeometricPin(*(v3 + 48) + 80 * (v14 | (v6 << 6)), v25);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = outlined init with take of GeometricPin(v25, *(v5 + 48) + 80 * v13);
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero((v3 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation20InputTargetComponentV06DirectE4TypeV0hE6OptionOGMd, &_ss11_SetStorageCy17RealityFoundation20InputTargetComponentV06DirectE4TypeV0hE6OptionOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVSgGMd, &_ss11_SetStorageCy10Foundation4UUIDVSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v3;
    v39 = v1;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v44 = (v4 + 48);
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v20 = result + 56;
    v21 = v47;
    v42 = v11;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = *(v11 + 48);
      v48 = *(v46 + 72);
      outlined init with take of UUID?(v26 + v48 * (v23 | (v14 << 6)), v10);
      Hasher.init(_seed:)();
      v27 = v10;
      outlined init with copy of UUID?(v10, v21);
      v28 = v45;
      if ((*v44)(v21, 1, v45) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v29 = v43;
        (*v41)(v43, v21, v28);
        Hasher._combine(_:)(1u);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
        dispatch thunk of Hashable.hash(into:)();
        v30 = v29;
        v11 = v42;
        (*v40)(v30, v28);
      }

      result = Hasher._finalize()();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      v10 = v27;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v21 = v47;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v21 = v47;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = outlined init with take of UUID?(v27, *(v13 + 48) + v22 * v48);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v38 = 1 << *(v11 + 32);
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    v2 = v39;
    *(v11 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit9__REAssetCGMd, &_ss11_SetStorageCy10RealityKit9__REAssetCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v17 + 16));
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys13OpaquePointerVGMd, &_ss11_SetStorageCys13OpaquePointerVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation7ServiceOGMd, &_ss11_SetStorageCy17RealityFoundation7ServiceOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMd, &_ss11_SetStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMd, &_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMd, &_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = *(v2 + 48) + 80 * (v11 | (v5 << 6));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 12);
      v24 = *(v14 + 32);
      v25 = *(v14 + 16);
      v22 = *(v14 + 64);
      v23 = *(v14 + 48);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v15);
      if (v16 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v16;
      }

      Hasher._combine(_:)(LODWORD(v18));
      if (v17 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17;
      }

      Hasher._combine(_:)(LODWORD(v19));
      specialized SIMD.hash(into:)(v25);
      specialized SIMD.hash(into:)(v24);
      specialized SIMD.hash(into:)(v23);
      specialized SIMD.hash(into:)(v22);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v20 = *(v4 + 48) + 80 * result;
      *v20 = v15;
      *(v20 + 8) = v16;
      *(v20 + 12) = v17;
      *(v20 + 16) = v25;
      *(v20 + 32) = v24;
      *(v20 + 48) = v23;
      *(v20 + 64) = v22;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v2 + 32);
    if (v21 >= 64)
    {
      bzero((v2 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v21;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    v27 = v4;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v19);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v10 >= 64)
    {
      bzero((v5 + 56), 8 * v13);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v4 = v27;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x1C68F4BD0](*(v5 + 40), v17, 4);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(a1 + 16));
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5, char a6)
{
  v14 = *(*v6 + 16);
  v15 = *(*v6 + 24);
  if (v15 > v14 && (a6 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a6)
  {
    specialized _NativeSet.resize(capacity:)(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      specialized _NativeSet.copy()();
      goto LABEL_48;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v14 + 1);
  }

  v43 = *v6;
  Hasher.init(_seed:)();
  if (!a4)
  {
    v16 = 1;
    goto LABEL_12;
  }

  if (a4 == 1)
  {
    v16 = 2;
LABEL_12:
    MEMORY[0x1C68F4C10](v16);
    String.hash(into:)();
    specialized Set.hash(into:)(v44, a3);
    goto LABEL_14;
  }

  MEMORY[0x1C68F4C10](0);
LABEL_14:
  v6 = v44;
  v17 = Hasher._finalize()();
  v18 = -1 << *(v43 + 32);
  a5 = v17 & ~v18;
  if ((*(v43 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v42 = ~v18;
    v20 = a4 != 2 || (a2 | a1 | a3) != 0;
    v41 = v20;
    do
    {
      v26 = *(v43 + 48) + 32 * a5;
      v8 = *v26;
      v7 = *(v26 + 8);
      v6 = *(v26 + 16);
      v27 = *(v26 + 24);
      if (*(v26 + 24))
      {
        if (v27 != 1)
        {
          if (!v41)
          {
            goto LABEL_51;
          }

          v30 = a1;
          v31 = a2;
          v32 = a3;
          v33 = a4;
          goto LABEL_39;
        }

        if (a4 != 1)
        {
          outlined copy of _Proto_MeshScope_v1(a1, a2, a3, a4);
          v30 = v8;
          v31 = v7;
          v32 = v6;
          v33 = 1;
          goto LABEL_39;
        }

        v28 = v8 == a1 && v7 == a2;
        if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 1u);
          outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 1u);
          outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 1u);
          v21 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v6, a3);
          outlined consume of _Proto_MeshScope_v1(v8, v7, v6, 1u);
          outlined consume of _Proto_MeshScope_v1(v8, v7, v6, 1u);
          v22 = a1;
          v23 = a2;
          v24 = a3;
          v25 = 1;
          goto LABEL_23;
        }

        v29 = 1;
        outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 1u);
        outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 1u);
      }

      else
      {
        if (a4)
        {
          outlined copy of _Proto_MeshScope_v1(a1, a2, a3, a4);
          v30 = v8;
          v31 = v7;
          v32 = v6;
          v33 = 0;
LABEL_39:
          outlined copy of _Proto_MeshScope_v1(v30, v31, v32, v33);
          v29 = a4;
          goto LABEL_40;
        }

        v34 = v8 == a1 && v7 == a2;
        if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 0);
          outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 0);
          outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 0);
          v21 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v6, a3);
          outlined consume of _Proto_MeshScope_v1(v8, v7, v6, 0);
          outlined consume of _Proto_MeshScope_v1(v8, v7, v6, 0);
          v22 = a1;
          v23 = a2;
          v24 = a3;
          v25 = 0;
LABEL_23:
          outlined consume of _Proto_MeshScope_v1(v22, v23, v24, v25);
          if (v21)
          {
            goto LABEL_52;
          }

          goto LABEL_24;
        }

        outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 0);
        outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 0);
        v29 = 0;
      }

LABEL_40:
      outlined consume of _Proto_MeshScope_v1(v8, v7, v6, v27);
      outlined consume of _Proto_MeshScope_v1(a1, a2, a3, v29);
LABEL_24:
      a5 = (a5 + 1) & v42;
    }

    while (((*(v43 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_48:
  v35 = *v40;
  *(*v40 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v36 = *(v35 + 48) + 32 * a5;
  *v36 = a1;
  *(v36 + 8) = a2;
  *(v36 + 16) = a3;
  *(v36 + 24) = a4;
  v37 = *(v35 + 16);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
LABEL_51:
    outlined consume of _Proto_MeshScope_v1(v8, v7, v6, 2u);
    outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
LABEL_52:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v35 + 16) = v39;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_21;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  CollisionPlane_v1.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (1)
    {
      v11 = (*(v8 + 48) + 80 * a2);
      v12 = v11->i64[0] == v4->i64[0] && v11->f32[2] == v4->f32[2];
      v13 = v12 && v11->f32[3] == v4->f32[3];
      if (v13 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v11[3], v4[3]), vceqq_f32(v11[4], v4[4])), vandq_s8(vceqq_f32(v11[2], v4[2]), vceqq_f32(v11[1], v4[1])))) & 0x80000000) != 0)
      {
        break;
      }

      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_21:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = (*(v14 + 48) + 80 * a2);
  v16 = v4[4];
  v15[3] = v4[3];
  v15[4] = v16;
  v17 = v4[2];
  v15[1] = v4[1];
  v15[2] = v17;
  *v15 = *v4;
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v20;
  }

  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v4 & 1);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4 & 1;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCys13OpaquePointerVGMd, &_ss11_SetStorageCys13OpaquePointerVGMR);
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy17RealityFoundation7ServiceOGMd, &_ss11_SetStorageCy17RealityFoundation7ServiceOGMR);
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v37 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_81;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMd, &_ss11_SetStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMR);
      goto LABEL_81;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v38, v37);
  result = Hasher._finalize()();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v36 = ~v8;
    v9 = 0xEF6C616972657461;
    v10 = 0xEB00000000746E65;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v11 == 5)
          {
            v17 = 0xE400000000000000;
            v16 = 1752393069;
          }

          else
          {
            v17 = 0xE700000000000000;
            v16 = 0x73636973796870;
          }
        }

        else if (v11 == 7)
        {
          v17 = 0xE700000000000000;
          v16 = 0x65727574786574;
        }

        else if (v11 == 8)
        {
          v16 = 0x6F4C797469746E65;
          v17 = 0xEA00000000006461;
        }

        else
        {
          v17 = 0xE500000000000000;
          v16 = 0x6F65646976;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x4D6E49746C697562;
        }

        else
        {
          v12 = 0xD000000000000013;
        }

        if (v11 == 3)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0x80000001C18DDAF0;
        }

        if (v11 == 2)
        {
          v12 = 0x6D6E6F7269766E65;
          v13 = v10;
        }

        v14 = *(*(v7 + 48) + a2) ? 0x6F69647561 : 0x6F6974616D696E61;
        v15 = *(*(v7 + 48) + a2) ? 0xE500000000000000 : 0xE90000000000006ELL;
        v16 = *(*(v7 + 48) + a2) <= 1u ? v14 : v12;
        v17 = *(*(v7 + 48) + a2) <= 1u ? v15 : v13;
      }

      v18 = 0x6F4C797469746E65;
      if (v37 != 8)
      {
        v18 = 0x6F65646976;
      }

      v19 = 0xEA00000000006461;
      if (v37 != 8)
      {
        v19 = 0xE500000000000000;
      }

      if (v37 == 7)
      {
        v18 = 0x65727574786574;
        v19 = 0xE700000000000000;
      }

      v20 = 0x73636973796870;
      if (v37 == 5)
      {
        v20 = 1752393069;
      }

      v21 = 0xE400000000000000;
      if (v37 != 5)
      {
        v21 = 0xE700000000000000;
      }

      if (v37 <= 6u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v37 == 3)
      {
        v22 = 0x4D6E49746C697562;
      }

      else
      {
        v22 = 0xD000000000000013;
      }

      v23 = v9;
      if (v37 == 3)
      {
        v24 = v9;
      }

      else
      {
        v24 = 0x80000001C18DDAF0;
      }

      if (v37 == 2)
      {
        v22 = 0x6D6E6F7269766E65;
      }

      v25 = v10;
      if (v37 == 2)
      {
        v24 = v10;
      }

      if (v37)
      {
        v26 = 0x6F69647561;
      }

      else
      {
        v26 = 0x6F6974616D696E61;
      }

      if (v37)
      {
        v27 = 0xE500000000000000;
      }

      else
      {
        v27 = 0xE90000000000006ELL;
      }

      if (v37 <= 1u)
      {
        v22 = v26;
        v24 = v27;
      }

      v28 = v37 <= 4u ? v22 : v18;
      v29 = v37 <= 4u ? v24 : v19;
      if (v16 == v28 && v17 == v29)
      {
        goto LABEL_84;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_85;
      }

      a2 = (a2 + 1) & v36;
      v9 = v23;
      v10 = v25;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_81:
  v31 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v31 + 48) + a2) = v37;
  v32 = *(v31 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v31 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_84:

LABEL_85:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_48;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  v31 = v7 + 56;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30 = ~v8;
    v9 = 0xED00006F65726574;
    v10 = 0x336C616974617073;
    v11 = v7;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 <= 1)
      {
        if (*(*(v7 + 48) + a2))
        {
          v14 = 0x536C616974617073;
        }

        else
        {
          v14 = 1869508461;
        }

        if (*(*(v7 + 48) + a2))
        {
          v15 = v9;
        }

        else
        {
          v15 = 0xE400000000000000;
        }

        v13 = 0xD000000000000012;
      }

      else
      {
        v13 = 0xD000000000000012;
        if (v12 == 2)
        {
          v14 = 0xD000000000000016;
          v15 = 0x80000001C18DDB40;
        }

        else
        {
          if (v12 == 3)
          {
            v14 = v10;
          }

          else
          {
            v14 = 0xD000000000000012;
          }

          if (v12 == 3)
          {
            v15 = 0xE900000000000044;
          }

          else
          {
            v15 = 0x80000001C18DDB70;
          }
        }
      }

      v16 = 0xD000000000000016;
      v17 = v10;
      if (v32 == 3)
      {
        v13 = v10;
      }

      v18 = 0xE900000000000044;
      if (v32 != 3)
      {
        v18 = 0x80000001C18DDB70;
      }

      if (v32 == 2)
      {
        v19 = 0x80000001C18DDB40;
      }

      else
      {
        v16 = v13;
        v19 = v18;
      }

      if (v32)
      {
        v20 = 0x536C616974617073;
      }

      else
      {
        v20 = 1869508461;
      }

      v21 = v9;
      if (!v32)
      {
        v9 = 0xE400000000000000;
      }

      v22 = v32 <= 1u ? v20 : v16;
      v23 = v32 <= 1u ? v9 : v19;
      if (v14 == v22 && v15 == v23)
      {
        goto LABEL_51;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_52;
      }

      a2 = (a2 + 1) & v30;
      v9 = v21;
      v7 = v11;
      v10 = v17;
    }

    while (((*(v31 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_48:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v32;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_51:

LABEL_52:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(float32x4_t *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        specialized _NativeSet.copy()();
        goto LABEL_34;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
    }

    v9 = *v3;
    Hasher.init(_seed:)();
    v10 = a1->i64[1];
    v11 = a1[1].i64[0];
    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(v9 + 32);
    a2 = v12 & ~v13;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v14 = ~v13;
      do
      {
        outlined init with copy of GeometricPin(*(v9 + 48) + 80 * a2, v28);
        v15 = v28[1] == v10 && v28[2] == v11;
        if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_32;
        }

        v16 = a1[2].i64[0];
        if (v29)
        {
          if (!v16 || (v28[3] != a1[1].i64[1] || v29 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (v16)
        {
          goto LABEL_32;
        }

        v17 = vmovn_s32(vceqq_f32(v30, a1[3]));
        if (v17.i8[0] & 1) != 0 && (v17.i8[2] & 1) != 0 && (v17.i8[4] & 1) != 0 && (vminv_u16(vmovn_s32(vceqq_f32(v31, a1[4]))))
        {
          Strong = swift_weakLoadStrong();
          v19 = swift_weakLoadStrong();
          if (Strong)
          {
            if (v19)
            {
              v27 = *(Strong + 16);
              v20 = v19;

              v26 = *(v20 + 16);

              outlined destroy of GeometricPin(v28);
              if (v27 == v26)
              {
                goto LABEL_38;
              }

              goto LABEL_33;
            }
          }

          else if (!v19)
          {
            goto LABEL_37;
          }
        }

LABEL_32:
        outlined destroy of GeometricPin(v28);
LABEL_33:
        a2 = (a2 + 1) & v14;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_34:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of GeometricPin(a1, *(v21 + 48) + 80 * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_37:
    outlined destroy of GeometricPin(v28);
LABEL_38:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v57 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  v21 = *(*v3 + 16);
  v22 = *(*v3 + 24);
  v43 = v3;
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v42 = v18;
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    else
    {
      if (v22 > v21)
      {
        specialized _NativeSet.copy()();
        goto LABEL_21;
      }

      v42 = v18;
      specialized _NativeSet.copyAndResize(capacity:)(v21 + 1);
    }

    v55 = *v3;
    Hasher.init(_seed:)();
    outlined init with copy of UUID?(v57, v20);
    v54 = *(v10 + 48);
    v47 = v10 + 48;
    if (v54(v20, 1, v9) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v23 = v48;
      (*(v10 + 32))(v48, v20, v9);
      Hasher._combine(_:)(1u);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v10 + 8))(v23, v9);
    }

    v24 = Hasher._finalize()();
    v25 = -1 << *(v55 + 32);
    a2 = v24 & ~v25;
    v53 = v55 + 56;
    if ((*(v55 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v52 = ~v25;
      v44 = (v10 + 32);
      v26 = *(v46 + 72);
      v50 = (v10 + 8);
      v51 = v26;
      v27 = &_s10Foundation4UUIDVSgMR;
      v45 = v16;
      do
      {
        outlined init with copy of UUID?(*(v55 + 48) + v51 * a2, v16);
        v35 = *(v6 + 48);
        outlined init with copy of UUID?(v16, v8);
        outlined init with copy of UUID?(v57, &v8[v35]);
        v36 = v54;
        if (v54(v8, 1, v9) == 1)
        {
          outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, v27);
          if (v36(&v8[v35], 1, v9) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          outlined init with copy of UUID?(v8, v56);
          if (v36(&v8[v35], 1, v9) != 1)
          {
            v28 = &v8[v35];
            v29 = v9;
            v30 = v27;
            v31 = v56;
            v32 = v48;
            (*v44)(v48, v28, v29);
            _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
            v49 = dispatch thunk of static Equatable.== infix(_:_:)();
            v33 = *v50;
            v16 = v45;
            (*v50)(v32, v29);
            outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, v30);
            v34 = v31;
            v27 = v30;
            v9 = v29;
            v33(v34, v29);
            outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation4UUIDVSgMd, v27);
            if (v49)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, v27);
          (*v50)(v56, v9);
        }

        outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_14:
        a2 = (a2 + 1) & v52;
      }

      while (((*(v53 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v37 = *v43;
  *(*v43 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of UUID?(v57, *(v37 + 48) + *(v46 + 72) * a2);
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
LABEL_24:
    outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_25:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v41;
  }

  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(result + 16));
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for __REAsset();
    a2 = v12;
    while (*(*(*(v8 + 48) + 8 * a2) + 16) != *(result + 16))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1, a4, a5);
  }

  v11 = *v6;
  result = MEMORY[0x1C68F4BF0](*(*v6 + 40), v7);
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1C68F4BD0](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1, a4, a5);
  }

  v11 = *v6;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v7);
  result = Hasher._finalize()();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation19_Proto_MeshScope_v1OGMd, &_ss11_SetStorageCy17RealityFoundation19_Proto_MeshScope_v1OGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 24);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(v22 + 24) = v23;
        outlined copy of _Proto_MeshScope_v1(v19, v20, v21, v23);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit9__REAssetCGMd, &_ss11_SetStorageCy10RealityKit9__REAssetCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMd, &_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v23 + 64) = v22)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 80 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 32);
      v21 = *(v18 + 48);
      v22 = *(v18 + 64);
      v23 = *(v4 + 48) + v17;
      v24 = *(v18 + 8);
      *v23 = *v18;
      *(v23 + 8) = v24;
      *(v23 + 16) = v19;
      *(v23 + 32) = v20;
      *(v23 + 48) = v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation12GeometricPinVGMd, &_ss11_SetStorageCy17RealityFoundation12GeometricPinVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 80 * (v14 | (v8 << 6));
        outlined init with copy of GeometricPin(*(v2 + 48) + v17, v18);
        result = outlined init with take of GeometricPin(v18, *(v4 + 48) + v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation20InputTargetComponentV06DirectE4TypeV0hE6OptionOGMd, &_ss11_SetStorageCy17RealityFoundation20InputTargetComponentV06DirectE4TypeV0hE6OptionOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVSgGMd, &_ss11_SetStorageCy10Foundation4UUIDVSgGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        outlined init with copy of UUID?(*(v6 + 48) + v21, v5);
        result = outlined init with take of UUID?(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCys13OpaquePointerVGMd, &_ss11_SetStorageCys13OpaquePointerVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMd, &_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMR);
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation19_Proto_MeshScope_v1OGMd, &_ss11_SetStorageCy17RealityFoundation19_Proto_MeshScope_v1OGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_32:
    *v2 = v5;
    return result;
  }

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
    v10 &= v10 - 1;
LABEL_15:
    v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
    v19 = *(v18 + 8);
    v31 = *v18;
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    Hasher.init(_seed:)();
    if (!v21)
    {
      v22 = 1;
      goto LABEL_19;
    }

    if (v21 == 1)
    {
      v22 = 2;
LABEL_19:
      MEMORY[0x1C68F4C10](v22);

      String.hash(into:)();
      specialized Set.hash(into:)(v32, v20);
      goto LABEL_21;
    }

    MEMORY[0x1C68F4C10](0);
LABEL_21:
    result = Hasher._finalize()();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
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

      goto LABEL_34;
    }

    v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 32 * v13;
    *v14 = v31;
    *(v14 + 8) = v19;
    *(v14 + 16) = v20;
    *(v14 + 24) = v21;
    ++*(v5 + 16);
    v3 = v30;
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
      goto LABEL_32;
    }

    v17 = *(v7 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v10 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation12GeometricPinVGMd, &_ss11_SetStorageCy17RealityFoundation12GeometricPinVGMR);
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
      outlined init with copy of GeometricPin(*(v3 + 48) + 80 * (v13 | (v6 << 6)), v23);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = -1 << *(v5 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v11 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      result = outlined init with take of GeometricPin(v23, *(v5 + 48) + 80 * v12);
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

        v2 = v1;
        goto LABEL_26;
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation20InputTargetComponentV06DirectE4TypeV0hE6OptionOGMd, &_ss11_SetStorageCy17RealityFoundation20InputTargetComponentV06DirectE4TypeV0hE6OptionOGMR);
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v16);
      result = Hasher._finalize()();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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

{
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v38 - v11;
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVSgGMd, &_ss11_SetStorageCy10Foundation4UUIDVSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v45 = v3;
    v38 = v1;
    v15 = 0;
    v16 = v12 + 56;
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v43 = (v4 + 48);
    v44 = v12;
    v39 = (v4 + 8);
    v40 = (v4 + 32);
    v21 = result + 56;
    v41 = v7;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v12 + 48);
      v46 = *(v7 + 72);
      v27 = v47;
      outlined init with copy of UUID?(v26 + v46 * (v23 | (v15 << 6)), v47);
      Hasher.init(_seed:)();
      outlined init with copy of UUID?(v27, v9);
      v28 = v45;
      if ((*v43)(v9, 1, v45) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v29 = v42;
        (*v40)(v42, v9, v28);
        Hasher._combine(_:)(1u);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
        dispatch thunk of Hashable.hash(into:)();
        v30 = v29;
        v7 = v41;
        (*v39)(v30, v28);
      }

      result = Hasher._finalize()();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      v12 = v44;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = outlined init with take of UUID?(v47, *(v14 + 48) + v22 * v46);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v2 = v38;
        goto LABEL_29;
      }

      v25 = *(v16 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v14;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys13OpaquePointerVGMd, &_ss11_SetStorageCys13OpaquePointerVGMR);
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v16);
      result = Hasher._finalize()();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation7ServiceOGMd, &_ss11_SetStorageCy17RealityFoundation7ServiceOGMR);
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v16);
      result = Hasher._finalize()();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMd, &_ss11_SetStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMR);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMd, &_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMR);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

unint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMd, &_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; ++*(v4 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = *(v2 + 48) + 80 * (v10 | (v5 << 6));
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 12);
      v23 = *(v13 + 32);
      v24 = *(v13 + 16);
      v21 = *(v13 + 64);
      v22 = *(v13 + 48);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v14);
      if (v15 == 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v15;
      }

      Hasher._combine(_:)(LODWORD(v17));
      if (v16 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v16;
      }

      Hasher._combine(_:)(LODWORD(v18));
      specialized SIMD.hash(into:)(v24);
      specialized SIMD.hash(into:)(v23);
      specialized SIMD.hash(into:)(v22);
      specialized SIMD.hash(into:)(v21);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v19 = *(v4 + 48) + 80 * result;
      *v19 = v14;
      *(v19 + 8) = v15;
      *(v19 + 12) = v16;
      *(v19 + 16) = v24;
      *(v19 + 32) = v23;
      *(v19 + 48) = v22;
      *(v19 + 64) = v21;
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_20;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    *v20 = v4;
  }

  return result;
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit9__REAssetCGMd, &_ss11_SetStorageCy10RealityKit9__REAssetCGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v16 + 16));
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v18);
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_24;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

    *v4 = v7;
  }

  return result;
}

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
      result = MEMORY[0x1C68F4BD0](*(v5 + 40), v16, 4);
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
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (MEMORY[0x1C68F3740](a1, TupleTypeMetadata2, v11))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = MEMORY[0x1C68F3770](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerSpec(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerSpec(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for _Proto_MeshDeformation_v1.PartFromCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.PartFromCore(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.PartFromCore(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for _Proto_MeshDeformation_v1.CustomDeformerComponentStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerComponentStorage(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerComponentStorage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for UUID();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit9__REAssetC_Tt0g5Tf4g_n(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit9__REAssetCGMd, &_ss11_SetStorageCy10RealityKit9__REAssetCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = MEMORY[0x1C68F41F0](v7, a1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v10 + 16));
      v11 = Hasher._finalize()();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      v17 = *(v3 + 48);
      if (((1 << v13) & v15) != 0)
      {
        v18 = ~v12;
        while (*(*(v17 + 8 * v13) + 16) != *(v10 + 16))
        {
          v13 = (v13 + 1) & v18;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return;
        }
      }

      else
      {
LABEL_17:
        *(v6 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v19 = *(v3 + 16);
        v9 = __OFADD__(v19, 1);
        v20 = v19 + 1;
        if (v9)
        {
          goto LABEL_31;
        }

        *(v3 + 16) = v20;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v21 = 0;
    v22 = a1 + 32;
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v21 != v23)
    {
      v26 = *(v22 + 8 * v21);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v26 + 16));
      v27 = Hasher._finalize()();
      v28 = -1 << *(v3 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      v31 = *(v6 + 8 * (v29 >> 6));
      v32 = 1 << v29;
      v33 = *(v3 + 48);
      if (((1 << v29) & v31) != 0)
      {
        v34 = ~v28;
        while (*(*(v33 + 8 * v29) + 16) != *(v26 + 16))
        {
          v29 = (v29 + 1) & v34;
          v30 = v29 >> 6;
          v31 = *(v6 + 8 * (v29 >> 6));
          v32 = 1 << v29;
          if (((1 << v29) & v31) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        *(v6 + 8 * v30) = v32 | v31;
        *(v33 + 8 * v29) = v26;
        v24 = *(v3 + 16);
        v9 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v25;
      }

      if (++v21 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs6UInt32V_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x1C68F4BD0](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation26ImagePresentationComponentV11ViewingModeV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMd, &_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      v26 = v4 + 1;
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 <= 1)
          {
            if (*(*(v3 + 48) + v9))
            {
              v14 = 0x536C616974617073;
            }

            else
            {
              v14 = 1869508461;
            }

            if (*(*(v3 + 48) + v9))
            {
              v15 = 0xED00006F65726574;
            }

            else
            {
              v15 = 0xE400000000000000;
            }

            if (v6 > 1)
            {
LABEL_23:
              v16 = 0xD000000000000012;
              if (v6 == 3)
              {
                v16 = 0x336C616974617073;
              }

              v17 = 0xE900000000000044;
              if (v6 != 3)
              {
                v17 = 0x80000001C18DDB70;
              }

              if (v6 == 2)
              {
                v18 = 0xD000000000000016;
              }

              else
              {
                v18 = v16;
              }

              if (v6 == 2)
              {
                v19 = 0x80000001C18DDB40;
              }

              else
              {
                v19 = v17;
              }

              if (v14 != v18)
              {
                goto LABEL_41;
              }

              goto LABEL_40;
            }
          }

          else if (v13 == 2)
          {
            v14 = 0xD000000000000016;
            v15 = 0x80000001C18DDB40;
            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v13 == 3)
            {
              v14 = 0x336C616974617073;
            }

            else
            {
              v14 = 0xD000000000000012;
            }

            if (v13 == 3)
            {
              v15 = 0xE900000000000044;
            }

            else
            {
              v15 = 0x80000001C18DDB70;
            }

            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          if (v6)
          {
            v19 = 0xED00006F65726574;
            if (v14 != 0x536C616974617073)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v19 = 0xE400000000000000;
            if (v14 != 1869508461)
            {
              goto LABEL_41;
            }
          }

LABEL_40:
          if (v15 == v19)
          {

            goto LABEL_4;
          }

LABEL_41:
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      v4 = v26;
      if (v26 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

CGColorRef __AmbientLightComponent.init()@<X0>(uint64_t a1@<X8>)
{
  result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  *a1 = result;
  *(a1 + 8) = 1143652352;
  return result;
}

void static __AmbientLightComponent.__fromCore(_:)(uint64_t a2@<X8>)
{
  REAmbientLightComponentGetColorGamut3F();
  REAmbientLightComponentGetIntensity();
  v4 = v3;
  v5 = RECreateCGColorFromColorGamut();

  *a2 = v5;
  *(a2 + 8) = v4;
}

uint64_t __AmbientLightComponent.__toCore(_:)(uint64_t *a1)
{
  RECGColorToColorGamut();
  REAmbientLightComponentSetColorGamut3F();
  REAmbientLightComponentSetIntensity();
  return RENetworkMarkComponentDirty();
}

uint64_t static __AmbientLightComponent.== infix(_:_:)(float *a1, float *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  return static _CFObject.== infix(_:_:)() & (v2 == v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __AmbientLightComponent(float *a1, float *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  return static _CFObject.== infix(_:_:)() & (v2 == v3);
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for __AmbientLightComponent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t storeEnumTagSinglePayload for __AmbientLightComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall RKChangeSceneActionSimulationTechnique.switchScenes()()
{
  if (*(v0 + 16) && (SceneNullable = REEntityGetSceneNullable()) != 0)
  {
    v15 = v0;
    v2 = SceneNullable;
    v3 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v3)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v2);
    }

    Scene.__interactionService.getter();
    type metadata accessor for __RKEntityInteractionManager();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      swift_beginAccess();
      v7 = *(v6 + 48);
      v8 = OBJC_IVAR____TtC17RealityFoundation33RKChangeSceneActionBasicTechnique_targetSceneIdentifier;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v11 = *(v9 + 8);

        v4 = v11(v12, v15 + v8, ObjectType, v9);
        swift_unknownObjectRelease();
      }

      else
      {
        v4 = 0;
      }

      specialized RKChangeSceneActionSimulationTechnique.reRegisterInteractions(rootEntity:)(v13);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t RKChangeSceneActionSimulationTechnique.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17RealityFoundation33RKChangeSceneActionBasicTechnique_targetSceneIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RKChangeSceneActionSimulationTechnique(uint64_t a1)
{
  result = type metadata singleton initialization cache for RKChangeSceneActionSimulationTechnique;
  if (!type metadata singleton initialization cache for RKChangeSceneActionSimulationTechnique)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized RKChangeSceneActionSimulationTechnique.reRegisterInteractions(rootEntity:)(uint64_t a1)
{
  swift_beginAccess();
  if (!static __RKEntityInteractionsComponent.registration || !REEntityGetCustomComponent() || (result = RECustomComponentGetObject()) == 0)
  {
    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v2 = *(result + 16);
  if (!v2)
  {
    v3 = __RKEntityInteractionsComponent.decodedJSON()();
LABEL_8:
    v4 = *(v3 + 16);

    if (!v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!*(v2 + 16))
  {
    return result;
  }

LABEL_9:
  if (static __RKEntityInteractionsComponent.registration && REEntityGetCustomComponent() && (Object = RECustomComponentGetObject()) != 0)
  {
    v6 = *(Object + 16);
    if (v6)
    {
    }

    else
    {
      v6 = __RKEntityInteractionsComponent.decodedJSON()();
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  Entity.__interactions.setter(MEMORY[0x1E69E7CC0]);
  return Entity.__interactions.setter(v6);
}

uint64_t _s17RealityFoundation18InteractionsLoggerVyACs12StaticStringV_xSgtcRlzClufC0A3Kit6EntityC_Tt2g5@<X0>(uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a4)
  {
    _print_unlocked<A, B>(_:_:)();
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x1C68F3410](v6, v7);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v8 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v8);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  *a5 = 91;
  a5[1] = 0xE100000000000000;
  return result;
}

uint64_t __RKEntityLookAtCameraAction.__allocating_init(targetEntity:duration:direction:upVector:)(uint64_t a1, float a2, __n128 a3, __n128 a4)
{
  type metadata accessor for __RKEntityLookAtCameraAction();
  v5 = swift_allocObject();
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 1;
  *(v5 + 256) = 0;
  *(v5 + 264) = 0;
  *(v5 + 108) = a2;
  *(v5 + 112) = 0;
  *(v5 + 128) = a3;
  *(v5 + 160) = a4;
  *(v5 + 176) = 0;
  *(v5 + 144) = 0;

  v7 = __RKEntityAction.init(targetEntity:)(v6);
  __RKEntityLookAtCameraAction.setFinalRotation()();

  return v7;
}

uint64_t __RKEntityLookAtCameraAction.__allocating_init(targetEntity:duration:animationDuration:direction:rotation:upVector:loops:)(uint64_t a1, char a2, float a3, float a4, __n128 a5, float a6, __n128 a7)
{
  v11 = swift_allocObject();
  *(v11 + 184) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 216) = 0u;
  *(v11 + 232) = 0u;
  *(v11 + 248) = 1;
  *(v11 + 256) = 0;
  *(v11 + 264) = 0;
  *(v11 + 108) = a3;
  *(v11 + 112) = a4;
  *(v11 + 128) = a5;
  *(v11 + 160) = a7;
  *(v11 + 176) = a2;
  *(v11 + 144) = a6;

  v13 = __RKEntityAction.init(targetEntity:)(v12);
  __RKEntityLookAtCameraAction.setFinalRotation()();

  return v13;
}

uint64_t __RKEntityLookAtCameraAction.init(targetEntity:duration:animationDuration:direction:rotation:upVector:loops:)(uint64_t a1, char a2, float a3, float a4, __n128 a5, float a6, __n128 a7)
{
  *(v7 + 232) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 248) = 1;
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 108) = a3;
  *(v7 + 112) = a4;
  *(v7 + 128) = a5;
  *(v7 + 160) = a7;
  *(v7 + 176) = a2;
  *(v7 + 144) = a6;

  v9 = __RKEntityAction.init(targetEntity:)(v8);
  __RKEntityLookAtCameraAction.setFinalRotation()();

  return v9;
}

Swift::Void __swiftcall __RKEntityLookAtCameraAction.setFinalRotation()()
{
  v1 = *(v0 + 128);
  v2 = vextq_s8(v1, v1, 4uLL).u64[0];
  if (*v1.i32 == 0.0)
  {
    v3 = vceq_f32(v2, 3212836864);
    if (v3.i32[0] & v3.i32[1])
    {
      v4 = xmmword_1C1899C40;
LABEL_13:
      v8 = -0.017453;
LABEL_20:
      *(v0 + 256) = v4;
      goto LABEL_21;
    }

    if (*v1.i32 == 0.0)
    {
      v5 = vceq_f32(v2, 0x3F80000000000000);
      if (v5.i32[0] & v5.i32[1])
      {
        v4 = *&zmmword_1C1887630[48];
        goto LABEL_13;
      }

      if (*v1.i32 == 0.0)
      {
        v6 = vceq_f32(v2, 0xBF80000000000000);
        if (v6.i32[0] & v6.i32[1])
        {
          v4 = xmmword_1C1899C50;
          goto LABEL_13;
        }

        if (*v1.i32 == 0.0)
        {
          v7 = vceq_f32(v2, 1065353216);
          if (v7.i32[0] & v7.i32[1])
          {
            v4 = xmmword_1C1899C60;
            goto LABEL_13;
          }
        }
      }
    }
  }

  if (*v1.i32 == 1.0)
  {
    v9 = vceqz_f32(v2);
    if (v9.i32[0] & v9.i32[1])
    {
      v4 = xmmword_1C1899C70;
      v8 = 0.017453;
      goto LABEL_20;
    }
  }

  if (*v1.i32 != -1.0)
  {
    v8 = 0.017453;
    goto LABEL_21;
  }

  v10 = vceqz_f32(v2);
  v11 = v10.i8[0] & v10.i8[4];
  v8 = 0.017453;
  if (v11)
  {
    v4 = xmmword_1C1899C80;
    goto LABEL_20;
  }

LABEL_21:
  *(v0 + 144) = *(v0 + 144) * v8;
}

double __RKEntityLookAtCameraAction.getPose(cameraPose:currentPose:)(float32x4_t a1, float a2, double a3, __n128 a4, float a5)
{
  v6 = *(v5 + 160);
  if (*v6.i32 == 0.0 && (v7 = vceqz_f32(*&vextq_s8(v6, v6, 4uLL)), (v7.i32[0] & v7.i32[1] & 1) != 0))
  {
    REMakeLookAtPose();
    v14 = v8;
    __sincosf_stret(*(v5 + 144) * 0.5);
    return v14;
  }

  else
  {
    *a1.f32 = vsub_f32(*a1.f32, a4.n128_u64[0]);
    v10 = a1;
    v10.f32[2] = a2 - a5;
    v11 = vmulq_f32(v10, v10);
    v9 = 0.0;
    if (sqrtf(v11.f32[2] + vaddv_f32(*v11.f32)) != 0.0)
    {
      __sincosf_stret(*(v5 + 144) * 0.5);
      REMakeLookAtPose();
      return v12;
    }
  }

  return v9;
}

Swift::Void __swiftcall __RKEntityLookAtCameraAction.update()()
{
  v66 = StaticString.description.getter();
  v67 = v1;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v3 = v66;
  v2 = v67;
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    v64 = v66;
    v65 = v67;
    v22 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v22, &v64);

    return;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable)
  {
    v61.n128_u64[0] = SceneNullable;
    RETransformComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass)
    {
      v6 = ComponentByClass;
      RETransformComponentGetWorldSRT();
      v60 = v7;
      v62 = v8;
      v9 = static os_log_type_t.debug.getter();
      if (one-time initialization token for interactionsLoggingEnabled != -1)
      {
        v53 = v9;
        swift_once();
        v9 = v53;
      }

      v10 = interactionsLoggingEnabled;
      if (interactionsLoggingEnabled)
      {
        LODWORD(v58) = v9;
        v57 = &v54;
        LODWORD(v59) = 1;
        v64 = 0;
        v65 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v64 = 0xD000000000000015;
        v65 = 0x80000001C18DE6E0;
        v63 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7470]);
        v11 = SIMD.description.getter();
        MEMORY[0x1C68F3410](v11);

        v12 = v64;
        v13 = v65;
        if (one-time initialization token for interactionsLogger != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, interactionsLogger);

        v15 = Logger.logObject.getter();

        if (os_log_type_enabled(v15, v58))
        {
          v16 = swift_slowAlloc();
          v55 = v12;
          v17 = v16;
          v56 = swift_slowAlloc();
          v64 = v56;
          *v17 = 136315394;
          *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v64);
          *(v17 + 12) = 2080;
          v18 = v6;
          v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v13, &v64);

          *(v17 + 14) = v19;
          v6 = v18;
          v20 = v15;
          _os_log_impl(&dword_1C1358000, v15, v58, "%s%s", v17, 0x16u);
          v21 = v56;
          swift_arrayDestroy();
          MEMORY[0x1C6902A30](v21, -1, -1);
          MEMORY[0x1C6902A30](v17, -1, -1);
        }

        else
        {
        }

        v10 = v59;
      }

      if (RESceneFindFirstCameraComponent())
      {
        v25 = v62.n128_f32[2];
        RECustomMatrixCameraComponentCalculateWorldPose();
        v61 = v26;
        v27 = v26.f32[2];
        v28 = static os_log_type_t.debug.getter();
        if (v10)
        {
          LODWORD(v58) = v28;
          v57 = &v54;
          v64 = 0;
          v65 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);

          v64 = 0xD000000000000014;
          v65 = 0x80000001C18DE6C0;
          v63 = v61;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7470]);
          v30 = SIMD.description.getter();
          MEMORY[0x1C68F3410](v30);

          v31 = v64;
          v32 = v65;
          if (one-time initialization token for interactionsLogger != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          __swift_project_value_buffer(v33, interactionsLogger);

          v34 = Logger.logObject.getter();

          if (os_log_type_enabled(v34, v58))
          {
            v35 = swift_slowAlloc();
            v59 = v31;
            v36 = v35;
            v56 = swift_slowAlloc();
            v64 = v56;
            *v36 = 136315394;
            *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v64);
            *(v36 + 12) = 2080;
            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v32, &v64);
            LODWORD(v59) = v10;
            v38 = v6;
            v39 = v37;

            *(v36 + 14) = v39;
            v6 = v38;
            v10 = v59;
            v40 = v34;
            _os_log_impl(&dword_1C1358000, v34, v58, "%s%s", v36, 0x16u);
            v41 = v56;
            swift_arrayDestroy();
            MEMORY[0x1C6902A30](v41, -1, -1);
            MEMORY[0x1C6902A30](v36, -1, -1);
          }

          else
          {
          }
        }

        __RKEntityLookAtCameraAction.getPose(cameraPose:currentPose:)(v61, v27, v29, v62, v25);
        v61 = v42;
        v43 = static os_log_type_t.debug.getter();
        if (v10)
        {
          v44 = v43;
          v59 = v6;
          v64 = 0;
          v65 = 0xE000000000000000;
          _StringGuts.grow(_:)(19);
          MEMORY[0x1C68F3410](0xD000000000000011, 0x80000001C18DE6A0);
          v63 = v61;
          type metadata accessor for simd_quatf(0);
          _print_unlocked<A, B>(_:_:)();
          v46 = v64;
          v45 = v65;
          if (one-time initialization token for interactionsLogger != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          __swift_project_value_buffer(v47, interactionsLogger);

          v48 = Logger.logObject.getter();

          if (os_log_type_enabled(v48, v44))
          {
            v49 = swift_slowAlloc();
            v58 = &v54;
            v50 = v49;
            v51 = swift_slowAlloc();
            v64 = v51;
            *v50 = 136315394;
            *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v64);
            *(v50 + 12) = 2080;
            v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, &v64);

            *(v50 + 14) = v52;
            _os_log_impl(&dword_1C1358000, v48, v44, "%s%s", v50, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1C6902A30](v51, -1, -1);
            MEMORY[0x1C6902A30](v50, -1, -1);
          }

          else
          {
          }
        }

        else
        {
        }

        RETransformComponentSetWorldAnimatedSRT();
        RENetworkMarkComponentDirty();
        REAnimationComponentGetComponentType();
        if (!REEntityGetComponentByClass() || (REAnimationComponentHasRunningAnimations() & 1) == 0)
        {
          RETransformComponentSetWorldOrientation();
        }

        goto LABEL_23;
      }
    }

    else
    {
      v64 = v66;
      v65 = v67;
      v24 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v24, &v64);
    }
  }

  else
  {
    v64 = v66;
    v65 = v67;
    v23 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v23, &v64);
  }

LABEL_23:
}

uint64_t __RKEntityLookAtCameraAction.createLookAtAnimation()()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {

    if (REEntityGetSceneNullable())
    {
      RETransformComponentGetComponentType();
      result = REEntityGetComponentByClass();
      if (!result)
      {
        __break(1u);
        goto LABEL_13;
      }

      RETransformComponentGetWorldPose();
      v7 = v2;
      RETransformComponentGetLocalUnanimatedSRT();
      if (RESceneFindFirstCameraComponent())
      {
        RECustomMatrixCameraComponentCalculateWorldPose();
        v6 = v3;
        REAnimationComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        if (RESceneGetECSManagerNullable())
        {
          ServiceLocator = REECSManagerGetServiceLocator();
          result = MEMORY[0x1C68FE1F0](ServiceLocator);
          if (result)
          {
            __RKEntityLookAtCameraAction.getPose(cameraPose:currentPose:)(v6, v6.f32[2], v5, v7, v7.n128_f32[2]);
            RETransformComponentGetWorldOrientation();
            RETransformComponentSetWorldOrientation();
            RETransformComponentGetLocalUnanimatedSRT();
            RETransformComponentSetWorldOrientation();
            RENetworkMarkComponentDirty();
            REMakeSRT();
            REFromToByAnimationDefaultParameters();
            result = REAssetManagerTimelineAssetCreateSRTAnimation();
            if (result)
            {
              *(v0 + 240) = REAnimationComponentPlay();
              *(v0 + 248) = 0;
              RERelease();

              return 1;
            }

            goto LABEL_14;
          }

LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t __RKEntityLookAtCameraAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v31 = 91;
  v32 = 0xE100000000000000;
  if (v3)
  {
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    v33 = v3;

    _print_unlocked<A, B>(_:_:)();
    v5 = 0xE000000000000000;
    v4 = 0;
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x1C68F3410](v4, v5);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v6 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v8 = v31;
  v7 = v32;
  v9 = *(v1 + 16);
  if (!v9)
  {
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();

    return 0;
  }

  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 105) == 1)
    {

LABEL_14:
      static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)();

      return 0;
    }
  }

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_14;
  }

  v10 = *(v9 + 16);
  RERigidBodyComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    MotionType = RERigidBodyComponentGetMotionType();
    if (MotionType != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  else
  {
    MotionType = 0;
  }

  String.utf8CString.getter();

  REBindPointCreateReferenceForEntityAnimatedValuesSRT();

  IsValid = REBindPointIsValid();

  if (IsValid)
  {
    v15 = ComponentByClass == 0;
    REBindPointSetOverrideEnabled();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v10;
    *(v17 + 32) = MotionType;
    *(v17 + 36) = v15;
    v18 = *(v2 + 32);
    v19 = *(v2 + 40);
    *(v2 + 32) = partial apply for specialized closure #1 in __RKEntityLookAtCameraAction.perform(with:);
    *(v2 + 40) = v17;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v18, v19);

    if (*(v2 + 24))
    {
      REEngineGetCurrentTime();
    }

    else
    {
      v20 = CACurrentMediaTime();
    }

    v21 = *(v2 + 112);
    *(v2 + 224) = v20 + *(v2 + 108);
    if (v21 >= 0.1)
    {
      if (*(v2 + 24))
      {
        REEngineGetCurrentTime();
      }

      else
      {
        v26 = CACurrentMediaTime();
      }

      *(v2 + 232) = v26 + *(v2 + 112);
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = partial apply for closure #2 in __RKEntityLookAtCameraAction.perform(with:);
    }

    else
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 104);
      *(v2 + 96) = 1;
      *(v2 + 104) = 1;
      v31 = v22;
      LOBYTE(v32) = v23;
      __RKEntityAction.state.didset(&v31);
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = partial apply for closure #3 in __RKEntityLookAtCameraAction.perform(with:);
    }

    _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(&v28, v25, v24, &v31);

    outlined destroy of BodyTrackingComponent?(&v28, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v31, v2 + 184);
    swift_endAccess();
    v31 = v8;
    v32 = v7;
    v27 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v27, &v31);
    REBindPointDestroy();

    return 1;
  }

  else
  {
    result = REBindPointDestroy();
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in __RKEntityLookAtCameraAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v5 + 184, &v7);
    if (*(&v8 + 1))
    {
      outlined init with copy of __REAssetService(&v7, v6);
      outlined destroy of BodyTrackingComponent?(&v7, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v7, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v7, v5 + 184);
    swift_endAccess();
    swift_beginAccess();
    if (*(v5 + 16))
    {

      REAnimationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        if (REAnimationComponentHasRunningAnimations())
        {
          if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v5 + 104) == 1) && *(v5 + 96) == 3)
          {
            REAnimationComponentStopAllAnimations();
            RENetworkMarkComponentDirty();
          }
        }
      }

      *(v5 + 240) = 0;
      *(v5 + 248) = 1;
    }

    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass() && (a3 & 0x100000000) == 0 && a3 != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

uint64_t closure #2 in __RKEntityLookAtCameraAction.perform(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((*(result + 249) & 1) == 0 && *(result + 112) >= 0.1)
    {
      *(result + 249) = __RKEntityLookAtCameraAction.createLookAtAnimation()() & 1;
      swift_beginAccess();
      v4 = *(v3 + 96);
      v5 = *(v3 + 104);
      *(v3 + 96) = 1;
      *(v3 + 104) = 1;
      v11 = v4;
      v12 = v5;

      __RKEntityAction.state.didset(&v11);
    }

    if (*(v3 + 24))
    {

      REEngineGetCurrentTime();
    }

    else
    {

      v6 = CACurrentMediaTime();
    }

    if (*(v3 + 224) <= v6 && (*(v3 + 176) & 1) == 0)
    {
      swift_beginAccess();
      v7 = *(v3 + 96);
      v8 = *(v3 + 104);
      *(v3 + 96) = 2;
      *(v3 + 104) = 1;
      v11 = v7;
      v12 = v8;
      __RKEntityAction.state.didset(&v11);
      *(v3 + 249) = 0;
    }

    if (*(v3 + 24))
    {
      REEngineGetCurrentTime();
    }

    else
    {
      v9 = CACurrentMediaTime();
    }

    if (*(v3 + 232) <= v9)
    {
      swift_beginAccess();
      v10 = *(v3 + 16);

      if (v10)
      {
        REAnimationComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (REAnimationComponentHasRunningAnimations())
          {
            if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v3 + 104) == 1) && *(v3 + 96) == 3)
            {
              REAnimationComponentStopAllAnimations();
              RENetworkMarkComponentDirty();
            }
          }
        }

        *(v3 + 240) = 0;
        *(v3 + 248) = 1;
      }

      *(v3 + 232) = *(v3 + 232) + *(v3 + 112);
      *(v3 + 249) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA0C6EventsO6UpdateV_Tt0g5(a1, &v12);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMd, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<SceneEvents.Update> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMd, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMR, protocol conformance descriptor for Scene.Publisher<A>);
  v9 = Publisher<>.sink(receiveValue:)();

  result = type metadata accessor for AnyCancellable();
  v11 = MEMORY[0x1E695BF08];
  a4[3] = result;
  a4[4] = v11;
  *a4 = v9;
  return result;
}

uint64_t _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6RenderV_Tt0g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA0C6EventsO6RenderV_Tt0g5(a1, &v12);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMd, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<SceneEvents.Render> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMd, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMR, protocol conformance descriptor for Scene.Publisher<A>);
  v9 = Publisher<>.sink(receiveValue:)();

  result = type metadata accessor for AnyCancellable();
  v11 = MEMORY[0x1E695BF08];
  a4[3] = result;
  a4[4] = v11;
  *a4 = v9;
  return result;
}

uint64_t closure #3 in __RKEntityLookAtCameraAction.perform(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    __RKEntityLookAtCameraAction.update()();
    if (*(v3 + 24))
    {

      REEngineGetCurrentTime();
    }

    else
    {

      v4 = CACurrentMediaTime();
    }

    if (*(v3 + 224) <= v4)
    {
      swift_beginAccess();
      v5 = *(v3 + 96);
      v6 = *(v3 + 104);
      *(v3 + 96) = 2;
      *(v3 + 104) = 1;
      v7 = v5;
      v8 = v6;
      __RKEntityAction.state.didset(&v7);
    }
  }

  return result;
}

uint64_t __RKEntityLookAtCameraAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v10 = *(v1 + 160);
  v11 = *(v1 + 128);
  v4 = *(v1 + 176);
  v5 = type metadata accessor for __RKEntityLookAtCameraAction();
  v6 = swift_allocObject();
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 1;
  *(v6 + 256) = 0;
  *(v6 + 264) = 0;
  *(v6 + 108) = *(v1 + 108);
  *(v6 + 128) = v11;
  *(v6 + 160) = v10;
  *(v6 + 176) = v4;
  *(v6 + 144) = v3;
  v7 = swift_retain_n();
  v8 = __RKEntityAction.init(targetEntity:)(v7);
  __RKEntityLookAtCameraAction.setFinalRotation()();

  a1[3] = v5;
  *a1 = v8;
  return result;
}

uint64_t __RKEntityLookAtCameraAction.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (v4 && *(a1 + 16) == *(v4 + 16))
  {
    v6 = *(v2 + 144);
    v11 = *(v2 + 160);
    v12 = *(v2 + 128);
    v7 = *(v2 + 176);
    type metadata accessor for __RKEntityLookAtCameraAction();
    v8 = swift_allocObject();
    *(v8 + 184) = 0u;
    *(v8 + 200) = 0u;
    *(v8 + 216) = 0u;
    *(v8 + 232) = 0u;
    *(v8 + 248) = 1;
    *(v8 + 256) = 0;
    *(v8 + 264) = 0;
    *(v8 + 108) = *(v2 + 108);
    *(v8 + 128) = v12;
    *(v8 + 160) = v11;
    *(v8 + 176) = v7;
    *(v8 + 144) = v6;

    v5 = __RKEntityAction.init(targetEntity:)(v9);
    __RKEntityLookAtCameraAction.setFinalRotation()();
  }

  else
  {
    __RKEntityLookAtCameraAction.copy(with:)(v14);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t __RKEntityLookAtCameraAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityLookAtCameraAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return swift_deallocClassInstance();
}

uint64_t specialized closure #2 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(void *a1, uint64_t a2, void (*a3)(void *))
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (RESceneIsFromActiveRealityRendererSceneGroup())
    {
      a3(v6);
    }
  }

  return result;
}

uint64_t specialized closure #2 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (RESceneIsFromActiveRealityRendererSceneGroup())
    {
      a3(&v5);
    }
  }

  return result;
}

uint64_t outlined assign with take of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_54Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t one-time initialization function for instances()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCy0A3Kit02__A15FileURLResolverCGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCy0A3Kit02__A15FileURLResolverCGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit02__E15FileURLResolverCTt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverCGMd, &_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverCGMR);
  *(v0 + 24) = result;
  static __RealityFileURLResolver.instances = v0;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCyAA02__A30FileARReferenceProvidingPluginCGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCyAA02__A30FileARReferenceProvidingPluginCGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation02__E30FileARReferenceProvidingPluginCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static __RealityFileARReferenceProvidingPlugin.instances = v0;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCyAA31__USDARReferenceProvidingPluginCGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCyAA31__USDARReferenceProvidingPluginCGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation31__USDARReferenceProvidingPluginCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static __USDARReferenceProvidingPlugin.instances = v0;
  return result;
}