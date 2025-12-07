void _ShapeStyle_Pack.animatableData.getter(uint64_t a1@<X8>)
{
  v128 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_48;
  }

  v83 = a1;
  v105 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v5 = 0;
  v84 = v2 + 32;
  v6 = v105;
  v85 = v3;
  do
  {
    v7 = (v84 + (v5 << 7));
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    v122 = v7[2];
    v123 = v10;
    v120 = v8;
    v121 = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[7];
    v126 = v7[6];
    v127 = v13;
    v124 = v11;
    v125 = v12;
    *&v13 = v121;
    v14.i64[0] = *(&v120 + 1);
    v86 = v6;
    v87 = v5;
    if (BYTE13(v12) > 2u)
    {
      if (BYTE13(v12) > 4u)
      {
        if (BYTE13(v12) == 5)
        {
          *(&v117[1] + 8) = v122;
          *(&v117[2] + 8) = v123;
          *(&v117[3] + 8) = v124;
          *(&v117[4] + 1) = v125;
          *&v117[0] = *(&v120 + 1);
          *(&v13 + 1) = *(&v121 + 1);
          *(v117 + 8) = v13;
          v16 = 8;
          goto LABEL_13;
        }
      }

      else if (BYTE13(v12) != 3)
      {
        v14.i64[1] = v121;
        v15.i64[0] = 0x4300000043000000;
        v15.i64[1] = 0x4300000043000000;
        v117[0] = vmulq_f32(v14, v15);
        *&v117[1] = vmul_f32(*(&v121 + 8), 0x4300000043000000);
        v16 = 1;
LABEL_13:
        v118 = v16;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, &v114, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        goto LABEL_27;
      }

      memset(v117, 0, sizeof(v117));
      v16 = 9;
      goto LABEL_13;
    }

    if (BYTE13(v12))
    {
      if (BYTE13(v12) == 1)
      {
        memset(v117, 0, sizeof(v117));
        v118 = 9;
        *&v106[0] = v117;
        v17 = *(**(&v120 + 1) + 152);
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, &v114, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        outlined init with copy of _ShapeStyle_Pack.Fill(&v120 + 8, &v114);
        v17(v106, &unk_1F0071D30, &protocol witness table for _ShapeStyle_Pack.Fill.AnimatableData.PaintInitVisitor);
        outlined destroy of _ShapeStyle_Pack.Fill(&v120 + 8);
        goto LABEL_27;
      }

      v92 = *(&v120 + 8);
      v98 = DWORD2(v121);
      v102 = v121;
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, &v114, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      outlined init with copy of _ShapeStyle_Pack.Fill(&v120 + 8, &v114);
      if (one-time initialization token for legacyInterpolation != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (static Color.Resolved.legacyInterpolation == 1)
      {
        outlined destroy of _ShapeStyle_Pack.Fill(&v120 + 8);
        v22 = v102.i32[1];
        v23 = v102.f32[0];
        *v24.f32 = v92;
      }

      else
      {
        v34 = (0.62998 * v102.f32[0]) + vaddv_f32(vmul_f32(v92, 0x3E903D743DB4D7ECLL));
        v35 = vadd_f32(vmul_n_f32(0x3DDBF2F03D52B909, v102.f32[0]), vadd_f32(vmul_f32(v92, 0x3F2E42533ED30EB1), vrev64_s32(vmul_f32(v92, 0x3F094D173E58FD3BLL))));
        v36 = vabs_f32(v35);
        v89 = v36.f32[0];
        v94 = powf(v36.f32[1], 0.33333);
        *v37.i32 = powf(v89, 0.33333);
        *&v37.i32[1] = v94;
        v38 = vbsl_s8(0x8000000080000000, v37, v35);
        v39 = powf(fabsf(v34), 0.33333);
        v40 = copysignf(v39, v34);
        outlined destroy of _ShapeStyle_Pack.Fill(&v120 + 8);
        v22 = v102.i32[1];
        *v24.f32 = vmul_lane_f32(v38, v102, 1);
        v23 = vmuls_lane_f32(v40, v102, 1);
      }

      v24.i64[1] = __PAIR64__(v22, LODWORD(v23));
      v41.i64[0] = 0x4300000043000000;
      v41.i64[1] = 0x4300000043000000;
      v33 = vmulq_f32(v24, v41);
      v20 = v98;
    }

    else
    {
      v91 = *(&v120 + 8);
      v97 = DWORD2(v121);
      v101 = v121;
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, &v114, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      if (one-time initialization token for legacyInterpolation != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v18 = v101.i32[1];
      v19 = v101.f32[0];
      if (static Color.Resolved.legacyInterpolation)
      {
        *v21.f32 = v91;
        v20 = v97;
      }

      else
      {
        v25 = (v101.f32[0] * 0.62998) + vaddv_f32(vmul_f32(v91, 0x3E903D743DB4D7ECLL));
        v26 = vadd_f32(vmul_n_f32(0x3DDBF2F03D52B909, v101.f32[0]), vadd_f32(vmul_f32(v91, 0x3F2E42533ED30EB1), vrev64_s32(vmul_f32(v91, 0x3F094D173E58FD3BLL))));
        v27 = vabs_f32(v26);
        v88 = v27.f32[0];
        v93 = powf(v27.f32[1], 0.33333);
        *v28.i32 = powf(v88, 0.33333);
        *&v28.i32[1] = v93;
        v29 = vbsl_s8(0x8000000080000000, v28, v26);
        v30 = powf(fabsf(v25), 0.33333);
        v31 = copysignf(v30, v25);
        v20 = v97;
        v18 = v101.i32[1];
        *v21.f32 = vmul_lane_f32(v29, v101, 1);
        v19 = vmuls_lane_f32(v31, v101, 1);
      }

      v21.i64[1] = __PAIR64__(v18, LODWORD(v19));
      v32.i64[0] = 0x4300000043000000;
      v32.i64[1] = 0x4300000043000000;
      v33 = vmulq_f32(v21, v32);
    }

    v117[0] = v33;
    LODWORD(v117[1]) = v20;
    v118 = 0;
LABEL_27:
    v42 = *(&v127 + 1);
    v110 = v117[2];
    v111 = v117[3];
    v112 = v117[4];
    v113 = v118;
    v108 = v117[0];
    v109 = v117[1];
    v43 = *(*(&v127 + 1) + 16);
    if (v43)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
      v44 = v4;
      v45 = (v42 + 32);
      v46 = v43 - 1;
      v47 = &unk_1ED52E000;
      while (1)
      {
        v114 = *v45;
        v48 = *(v45 + 57);
        v50 = v45[2];
        v49 = v45[3];
        *v115 = v45[1];
        *&v115[16] = v50;
        *v116 = v49;
        *&v116[9] = v48;
        v51 = BYTE5(v49);
        if (BYTE5(v49))
        {
          v52 = 0;
          v53 = 0uLL;
          v54 = 0uLL;
        }

        else
        {
          v55 = *(&v114 + 2);
          v95 = v114;
          v99 = *(&v114 + 3);
          v103 = *&v115[8];
          v52 = *&v115[24];
          outlined init with copy of _ShapeStyle_Pack.Effect(&v114, v106);
          if (v47[487] != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (static Color.Resolved.legacyInterpolation)
          {
            outlined destroy of _ShapeStyle_Pack.Effect(&v114);
            v56.i32[0] = v95.i32[1];
            v57 = __PAIR64__(LODWORD(v55), v95.u32[0]);
            v58 = v99;
          }

          else
          {
            v59 = ((0.2119 * v95.f32[0]) + vmuls_lane_f32(0.6807, v95, 1)) + (v55 * 0.1074);
            v60 = powf(fabsf(v59), 0.33333);
            v61 = copysignf(v60, v59);
            v62 = vadd_f32(vadd_f32(vrev64_s32(vmul_f32(v95, 0x3F094D173DB4D7ECLL)), vmul_f32(v95, 0x3E903D743ED30EB1)), vmul_n_f32(0x3F2146493D52B909, v55));
            v63 = vabs_f32(v62);
            v90 = v63.f32[0];
            v96 = powf(v63.f32[1], 0.33333);
            *v64.i32 = powf(v90, 0.33333);
            *&v64.i32[1] = v96;
            v65 = vbsl_s8(0x8000000080000000, v64, v62);
            outlined destroy of _ShapeStyle_Pack.Effect(&v114);
            v58 = v99;
            v56.f32[0] = v99 * v61;
            v57 = vmul_n_f32(v65, v99);
          }

          v66 = vmul_f32(v57, 0x4300000043000000);
          v56.f32[1] = v58;
          v67.i64[0] = v66.u32[0];
          v67.i64[1] = v66.u32[1];
          v53 = vorrq_s8(vshll_n_s32(vmul_f32(v56, 0x4300000043000000), 0x20uLL), v67);
          v54 = v103;
        }

        v68 = *&v116[8];
        v70 = *(v44 + 16);
        v69 = *(v44 + 24);
        if (v70 >= v69 >> 1)
        {
          v100 = v53;
          v104 = v54;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
          v53 = v100;
          v54 = v104;
          v47 = &unk_1ED52E000;
        }

        *(v44 + 16) = v70 + 1;
        v71 = v44 + 56 * v70;
        *(v71 + 32) = v68;
        *(v71 + 40) = v53;
        *(v71 + 56) = v54;
        *(v71 + 72) = v52;
        *(v71 + 80) = v51 & 1;
        if (!v46)
        {
          break;
        }

        --v46;
        v45 += 5;
      }

      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      v4 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      v44 = v4;
    }

    v72 = v120;
    v73 = BYTE1(v120);
    v74 = v126;
    LOBYTE(v107) = v113;
    v106[2] = v110;
    v106[3] = v111;
    v106[4] = v112;
    v106[0] = v108;
    v106[1] = v109;
    *&v119[70] = v112;
    *&v119[54] = v111;
    *&v119[38] = v110;
    *&v119[6] = v108;
    *&v119[22] = v109;
    *&v119[86] = v107;
    *&v116[30] = *&v119[78];
    *v116 = *&v119[48];
    *&v116[16] = *&v119[64];
    *v115 = *&v119[16];
    *&v115[16] = *&v119[32];
    v114 = *v119;
    v6 = v86;
    v75 = v87;
    v77 = *(v86 + 16);
    v76 = *(v86 + 24);
    if (v77 >= v76 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1);
      v75 = v87;
      v6 = v86;
    }

    v5 = v75 + 1;
    *(v6 + 16) = v77 + 1;
    v78 = v6 + 112 * v77;
    *(v78 + 32) = v72;
    *(v78 + 33) = v73;
    v79 = v114;
    *(v78 + 50) = *v115;
    *(v78 + 34) = v79;
    v80 = *&v115[16];
    v81 = *v116;
    v82 = *&v116[16];
    *(v78 + 112) = *&v116[30];
    *(v78 + 98) = v82;
    *(v78 + 82) = v81;
    *(v78 + 66) = v80;
    *(v78 + 128) = v74;
    *(v78 + 136) = v44;
  }

  while (v5 != v85);
  a1 = v83;
LABEL_48:
  *a1 = v6;
  *(a1 + 8) = 0;
}

void type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(uint64_t a1)
{
  if (!lazy cache variable for type metadata for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element)
  {
    type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key();
    v5 = v4;
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v9[0] = &type metadata for _ShapeStyle_Pack.Key;
    v9[1] = v3;
    v9[2] = v5;
    v9[3] = v6;
    v7 = type metadata accessor for KeyedAnimatableArray.Element(a1, v9);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
    }
  }
}

uint64_t outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of (PaintType, ShapeType)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t PropertyList.Tracker.hasDifferentUsedValues(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);

  os_unfair_lock_unlock((v3 + 16));

  if (v8 == 1)
  {
    goto LABEL_12;
  }

  if (a1)
  {
    if (*(a1 + 64) == v5)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    compare(_:against:)(v4, a1);
    if (v9)
    {
      compare(_:against:)(v6, a1);
      if (v10)
      {
        result = v7 + 32;
        v12 = -*(v7 + 16);
        v13 = -1;
        while (v12 + v13 != -1)
        {
          if (++v13 >= *(v7 + 16))
          {
            __break(1u);
            return result;
          }

          v14 = result + 40;
          outlined init with copy of AnyTrackedValue(result, v18);
          v15 = v19;
          v16 = v20;
          __swift_project_boxed_opaque_existential_1(v18, v19);
          v17 = (*(v16 + 16))(a1, v15, v16);
          __swift_destroy_boxed_opaque_existential_1(v18);
          result = v14;
          if ((v17 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_13;
      }
    }

LABEL_12:

    return 1;
  }

LABEL_13:

  return 0;
}

void compare(_:against:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_12:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = v13 | (v10 << 6);
      v15 = *(*(a1 + 48) + 8 * v14);
      outlined init with copy of AnyTrackedValue(*(a1 + 56) + 40 * v14, v18);
      *&v19 = v15;
      outlined init with take of AnyTrackedValue(v18, &v19 + 8);
      v12 = v10;
LABEL_13:
      v22[1] = v20;
      v22[2] = v21;
      v22[0] = v19;
      if (!v21)
      {

        return;
      }

      outlined init with take of AnyTrackedValue((v22 + 8), &v19);
      v16 = *(&v20 + 1);
      v17 = v21;
      __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      if (((*(v17 + 16))(a2, v16, v17) & 1) == 0)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v19);
      v9 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {
LABEL_5:
    if (v8 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        v7 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t ViewTraitCollection.value<A>(for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v14 - v11;
  v14[1] = *v4;
  (*(a3 + 16))(a2, a3, v10);
  ViewTraitCollection.value<A>(for:defaultValue:)(v12, a2, x8_0);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t specialized _ZStackLayout.placeSubviews(in:proposal:subviews:cache:)(int *a1, double a2, double a3, double a4, double a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v9 = *(a1 + 1);
  v10 = *(a1 + 17);
  v84 = *a1;
  v85 = *(a1 + 16);
  LODWORD(v95) = *a1;
  *(&v95 + 1) = v9;
  LOBYTE(v96) = v85;
  BYTE1(v96) = v10;
  *(&v96 + 1) = 0;
  *&v97 = closure #1 in _ZStackLayout.spacing(subviews:cache:);
  *(&v97 + 1) = 0;
  swift_bridgeObjectRetain_n();
  *&v11 = COERCE_DOUBLE(specialized LazyMapSequence.Iterator.next()());
  if (v12)
  {

    v13 = 0.0;
LABEL_18:

    v20 = swift_allocObject();
    *(v20 + 16) = v13;
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a3;
    v21[4] = a4;
    v21[5] = a5;
    LOBYTE(v95) = v85;
    v99 = v84;
    v100 = v9;
    v101 = v85;
    v102 = v10;
    v103 = partial apply for closure #2 in _ZStackLayout.placeSubviews(in:proposal:subviews:cache:);
    v104 = v20;
    v105 = partial apply for closure #3 in _ZStackLayout.placeSubviews(in:proposal:subviews:cache:);
    v106 = v21;

    specialized Sequence.reduce<A>(_:_:)(&v99, a7, a8, -INFINITY, -INFINITY);
    v23 = v22;
    v25 = v24;
    outlined destroy of LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>(&v99, type metadata accessor for LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>);
    v26 = *(v9 + 16);

    if (!v26)
    {
    }

    v27 = 0;
    v28 = (v9 + 32);
    v77 = a8 >> 1;
    v78 = a7 >> 1;
    v29 = (v9 + 40);
    v79 = v9 + 32;
    v80 = v9;
    while (1)
    {
      if (v85)
      {
        if (v27 >= v26)
        {
          goto LABEL_74;
        }

        v36 = (v79 + 12 * v27);
        v37 = *v29;
      }

      else
      {
        if (v27 >= v26)
        {
          goto LABEL_75;
        }

        v37 = v27;
        v36 = v28;
      }

      if (v27 >= v26)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v88 = v37;
      v89 = v84;
      v90 = *v36;
      *&v91 = a4;
      BYTE8(v91) = 0;
      *&v92 = a5;
      BYTE8(v92) = 0;
      LayoutProxy.dimensions(in:)(&v91, &v95);
      v38 = v95;
      v39 = v96;
      v40 = v97;
      v41 = one-time initialization token for lockAssertionsAreEnabled;

      if (v41 != -1)
      {
        swift_once();
      }

      v42 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_86;
        }
      }

      v95 = v39;
      v96 = v40;
      v43 = *(*v38 + 144);
      *&v44 = COERCE_DOUBLE(v43(a7, &v95));
      v46 = v45;

      if (v46)
      {
        if (one-time initialization token for typeCache != -1)
        {
          swift_once();
        }

        os_unfair_lock_lock(&static AlignmentKey.typeCache);
        if (a7 < 2)
        {
          goto LABEL_76;
        }

        if (v78 > *(off_1ED537F58 + 2))
        {
          goto LABEL_78;
        }

        v47 = (off_1ED537F58 + 16 * v78 + 16);
        v48 = *v47;
        v49 = v47[1];
        os_unfair_lock_unlock(&static AlignmentKey.typeCache);
        v95 = v38;
        v96 = v39;
        v97 = v40;
        v50 = (*(v49 + 8))(&v95, v48, v49);
        if (!v42)
        {
LABEL_40:

          goto LABEL_45;
        }
      }

      else
      {
        v50 = *&v44;
        if (!v42)
        {
          goto LABEL_40;
        }
      }

      v51 = one-time initialization token for _lock;

      if (v51 != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_86;
      }

LABEL_45:
      v95 = v39;
      v96 = v40;
      *&v52 = COERCE_DOUBLE(v43(a8, &v95));
      v54 = v53;

      if (v54)
      {
        if (one-time initialization token for typeCache != -1)
        {
          swift_once();
        }

        os_unfair_lock_lock(&static AlignmentKey.typeCache);
        if (a8 < 2)
        {
          goto LABEL_77;
        }

        if (v77 > *(off_1ED537F58 + 2))
        {
          goto LABEL_79;
        }

        v55 = (off_1ED537F58 + 16 * v77 + 16);
        v56 = *v55;
        v57 = v55[1];
        os_unfair_lock_unlock(&static AlignmentKey.typeCache);
        v95 = v38;
        v96 = v39;
        v97 = v40;
        (*(v57 + 8))(&v95, v56, v57);
      }

      else
      {
        v58 = *&v52;
      }

      v59 = v23 - v50 + a2;
      if (v23 == v50)
      {
        v59 = a2;
      }

      if (v25 == v58)
      {
        v60 = a3;
      }

      else
      {
        v60 = v25 - v58 + a3;
      }

      *&v95 = v59;
      *(&v95 + 1) = v60;
      v96 = v38;
      v97 = v39;
      v98 = v40;

      v61 = _threadLayoutData();
      if (!v61)
      {
        goto LABEL_85;
      }

      v62 = v61;
      if (*v61)
      {
        goto LABEL_71;
      }

      v63 = *(v61 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v62 + 8) = v63;
      if (isUniquelyReferenced_nonNull_native)
      {
        v65 = v88;
        if (v88 < 0)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew()(v63);
        *(v62 + 8) = v63;
        v65 = v88;
        if (v88 < 0)
        {
          goto LABEL_72;
        }
      }

      if (*(v63 + 2) <= v65)
      {
        goto LABEL_73;
      }

      v66 = &v63[64 * v65];
      v69 = *(v66 + 4);
      v67 = v66 + 32;
      v68 = v69;
      v70 = *v67;
      v71 = *(v67 + 1);
      v72 = *(v67 + 3);
      v93 = *(v67 + 2);
      v94 = v72;
      v91 = v70;
      v92 = v71;
      outlined destroy of ViewGeometry(&v91);
      if ((~v69 & 0x7FF0000000000000) == 0 && (v68 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        ++*(v62 + 16);
      }

      v73 = v95;
      v74 = v96;
      v75 = v98;
      *(v67 + 2) = v97;
      *(v67 + 3) = v75;
      *v67 = v73;
      *(v67 + 1) = v74;
      if (*(v62 + 56))
      {
        v30 = *(v62 + 24);
        v31 = *(v62 + 32);
        v32 = *(v62 + 40);
        v33 = *(v62 + 48);
        outlined init with copy of ViewGeometry(&v95, &v89);
        v107.origin.x = v30;
        v107.origin.y = v31;
        v107.size.width = v32;
        v107.size.height = v33;
        MaxX = CGRectGetMaxX(v107);
        v108.origin.x = *v67;
        v108.origin.y = *(v67 + 1);
        v108.size.width = *(v67 + 4);
        v108.size.height = *(v67 + 5);
        v35 = CGRectGetMaxX(v108);
        outlined destroy of ViewGeometry(&v95);

        *v67 = MaxX - (v35 - v30);
      }

      else
      {
      }

      ++v27;
      v26 = *(v80 + 16);
      ++v28;
      v29 += 3;
      if (v27 == v26)
      {
      }
    }
  }

  v14 = *&v11;
  v15 = *(&v96 + 1);
  v16 = *(v9 + 16);
  if (*(&v96 + 1) == v16)
  {
    v13 = *&v11;
LABEL_17:
    *(&v96 + 1) = v15;

    goto LABEL_18;
  }

  v17 = v9 + 32 + 12 * *(&v96 + 1);
  v13 = *&v11;
  while ((v85 & 1) != 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_81;
    }

    v18 = v17;
    if (v15 >= v16)
    {
      goto LABEL_84;
    }

LABEL_13:
    if (v15 >= v16)
    {
      goto LABEL_80;
    }

    ++v15;
    LODWORD(v91) = v84;
    *(&v91 + 4) = *v18;
    LayoutProxy.layoutPriority.getter();
    if (v14 < v19)
    {
      v13 = v19;
      v14 = v19;
    }

    v16 = *(v9 + 16);
    v17 += 12;
    if (v15 == v16)
    {
      goto LABEL_17;
    }
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_82;
  }

  if (v15 < v16)
  {
    v18 = (v9 + 32 + 8 * v15);
    goto LABEL_13;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

float ResolvedGradient.ColorSpace.convertIn(_:)@<S0>(float32x2_t *a1@<X8>, float a2@<S0>, unsigned int a3@<S1>, float a4@<S2>, float32_t a5@<S3>)
{
  v6 = *&a3;
  v7 = a2;
  if (*v5)
  {
    v9 = __PAIR64__(a3, LODWORD(a2));
    if (*v5 != 1)
    {
      v39 = a5;
      v10 = ((a2 * 0.088302) + (*&a3 * 0.28172)) + (a4 * 0.62998);
      v11 = vadd_f32(vadd_f32(vmul_n_f32(0x3E58FD3B3ED30EB1, a2), vmul_lane_f32(0x3F2E42533F094D17, __PAIR64__(a3, LODWORD(a2)), 1)), vmul_n_f32(0x3DDBF2F03D52B909, a4));
      v12 = vabs_f32(v11);
      v30 = v12.f32[0];
      v34 = powf(v12.f32[1], 0.33333);
      *v13.i32 = powf(v30, 0.33333);
      *&v13.i32[1] = v34;
      v35 = vbsl_s8(0x8000000080000000, v13, v11);
      v14 = powf(fabsf(v10), 0.33333);
      v15 = copysignf(v14, v10);
      v9 = v35;
      a5 = v39;
      a4 = v15;
    }
  }

  else
  {
    v16 = -a2;
    if (v7 > 0.0)
    {
      v16 = v7;
    }

    if (v16 <= 0.0031308)
    {
      v17 = v16 * 12.92;
    }

    else
    {
      v17 = 1.0;
      if (v16 != 1.0)
      {
        v36 = v7;
        v40 = a5;
        v27 = v6;
        v31 = a4;
        v18 = powf(v16, 0.41667);
        a4 = v31;
        v7 = v36;
        v6 = v27;
        a5 = v40;
        v17 = (v18 * 1.055) + -0.055;
      }
    }

    if (v7 <= 0.0)
    {
      v9.f32[0] = -v17;
    }

    else
    {
      v9.f32[0] = v17;
    }

    v19 = -v6;
    if (v6 > 0.0)
    {
      v19 = v6;
    }

    if (v19 <= 0.0031308)
    {
      v20 = v19 * 12.92;
    }

    else
    {
      v20 = 1.0;
      if (v19 != 1.0)
      {
        v37 = v9.i32[0];
        v41 = a5;
        v28 = v6;
        v32 = a4;
        v21 = powf(v19, 0.41667);
        v6 = v28;
        a4 = v32;
        v9.i32[0] = v37;
        a5 = v41;
        v20 = (v21 * 1.055) + -0.055;
      }
    }

    if (v6 <= 0.0)
    {
      v22 = -v20;
    }

    else
    {
      v22 = v20;
    }

    v23 = -a4;
    if (a4 > 0.0)
    {
      v23 = a4;
    }

    if (v23 <= 0.0031308)
    {
      v24 = v23 * 12.92;
    }

    else
    {
      v24 = 1.0;
      if (v23 != 1.0)
      {
        v38 = v9.i32[0];
        v42 = a5;
        v29 = v22;
        v33 = a4;
        v25 = powf(v23, 0.41667);
        v22 = v29;
        a4 = v33;
        v9.i32[0] = v38;
        a5 = v42;
        v24 = (v25 * 1.055) + -0.055;
      }
    }

    v9.f32[1] = v22;
    if (a4 <= 0.0)
    {
      a4 = -v24;
    }

    else
    {
      a4 = v24;
    }
  }

  *a1 = vmul_n_f32(v9, a5);
  result = a4 * a5;
  a1[1].f32[0] = a4 * a5;
  a1[1].f32[1] = a5;
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #3 in _ZStackLayout.placeSubviews(in:proposal:subviews:cache:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(a1 + 2);
  v11 = *a1;
  v12 = v5;
  v7 = v3;
  v8 = 0;
  v9 = v4;
  v10 = 0;
  return LayoutProxy.dimensions(in:)(&v7, a2);
}

void type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _ss23_ContiguousArrayStorageCyyXlGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t *assignWithCopy for _ForegroundColorModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t TrackedValue.hasMatchingValue(in:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  PropertyList.subscript.getter(v5, a1, v5, v4);
  LOBYTE(a1) = (*(v4 + 24))(v2, v9, v5, v4);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return a1 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyGradient(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 88))() & 1;
  }
}

float protocol witness for ColorProvider.resolveHDR(in:) in conformance ResolvedColorProvider@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double outlined copy of _ShapeStyle_Shape.Result(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return result;
    }

LABEL_7:

    return result;
  }

  if (a2 == 2 || a2 == 3)
  {
    goto LABEL_7;
  }

  return result;
}

void SecondaryLayerGeometryQuery.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[5];
  v5 = *MEMORY[0x1E698D3F8];
  if (v1[4] == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    Value = &static LayoutComputer.defaultValue;
  }

  else
  {
    Value = AGGraphGetValue();
  }

  v7 = *Value;
  v8 = *(Value + 1);

  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = v9[3];
  if (v3 == v5)
  {
    if (one-time initialization token for center != -1)
    {
      swift_once();
    }

    v14 = &static Alignment.center;
  }

  else
  {
    v14 = AGGraphGetValue();
  }

  v16 = *v14;
  v15 = v14[1];
  type metadata accessor for CGPoint(0);
  v17 = AGGraphGetValue();
  v18 = *v17;
  v49 = v17[1];
  ViewDimensions.subscript.getter(v16);
  v20 = v19;
  v50 = v7;
  v51 = v8;
  v52 = v10;
  v53 = v11;
  v54 = v12;
  v55 = v13;
  ViewDimensions.subscript.getter(v15);
  v48 = v21;
  if (v4 == v5)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v22 = &static LayoutComputer.defaultValue;
  }

  else
  {
    v22 = AGGraphGetValue();
  }

  v23 = *v22;
  v24 = *(v22 + 1);

  v25 = AGGraphGetValue();
  v26 = *v25;
  v27 = v25[1];
  v28 = one-time initialization token for lockAssertionsAreEnabled;

  if (v28 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_22;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_22:
    v45 = v13;
    v46 = v12;
    v47 = v11;
    v29 = v10;
    v30 = v18 + v20;
    v50 = v26;
    LOBYTE(v51) = 0;
    v52 = v27;
    LOBYTE(v53) = 0;
    v31 = (*(*v23 + 120))(&v50);
    v33 = v32;
    v50 = v23;
    v51 = v24;
    v52 = v31;
    v53 = v32;
    v54 = v26;
    v55 = v27;
    ViewDimensions.subscript.getter(v16);
    v35 = v34;
    v50 = v23;
    v51 = v24;
    v52 = v31;
    v53 = v33;
    v54 = v26;
    v55 = v27;
    ViewDimensions.subscript.getter(v15);
    v37 = v36;
    v38 = v30 - v35;

    if (*AGGraphGetValue() == 1)
    {
      v39 = *AGGraphGetValue();
      if (one-time initialization token for center != -1)
      {
        swift_once();
      }

      v40 = static HorizontalAlignment.center;
      v50 = v7;
      v51 = v8;
      v52 = v29;
      v53 = v47;
      v54 = v46;
      v55 = v45;
      ViewDimensions.subscript.getter(static HorizontalAlignment.center);
      v42 = v39 + v41;
      v50 = v23;
      v51 = v24;
      v52 = v31;
      v53 = v33;
      v54 = v26;
      v55 = v27;
      ViewDimensions.subscript.getter(v40);
      v44 = v43;

      v38 = v42 - v44 + v42 - v44 - v38;
    }

    else
    {
    }

    *a1 = v38;
    *(a1 + 8) = v49 + v48 - v37;
    *(a1 + 16) = v23;
    *(a1 + 24) = v24;
    *(a1 + 32) = v31;
    *(a1 + 40) = v33;
    *(a1 + 48) = v26;
    *(a1 + 56) = v27;
  }
}

uint64_t _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(unint64_t a1)
{

  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(v2) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(v6);
  if (v7)
  {
    v3 = v8;
  }

  else
  {
    v3 = &protocol witness table for DefaultFallbackFontProvider;
  }

  v6[0] = a1;
  v4 = (v3[1])(v6);

  return v4;
}

double protocol witness for static FallbackFontProvider.makeFont(in:) in conformance DefaultFallbackFontProvider()
{
  if (one-time initialization token for body != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t specialized LazyMapSequence.Iterator.next()()
{
  v1 = v0[1];
  v2 = v0[3];
  if (v2 == *(v1 + 16))
  {
    return 0;
  }

  result = LayoutSubviews.subscript.getter(v0[3], &v8);
  if (v2 >= *(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    v4 = v8;
    v5 = v9;
    v0[3] = v2 + 1;
    v6 = v0[4];
    v8 = v4;
    v9 = v5;
    v6(&v7, &v8);
    return v7;
  }

  return result;
}

void LayoutProxy.layoutPriority.getter()
{
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v2 = *InputValue;
  v3 = one-time initialization token for lockAssertionsAreEnabled;

  if (v3 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    (*(*v2 + 88))();
  }
}

void specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v11 = a3;
  v23[41] = *MEMORY[0x1E69E9840];
  v19[0] = a6;
  v19[1] = a7;
  v19[4] = v19;
  v19[5] = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v13 = *OutputValue;
    v14 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v15 = one-time initialization token for lockAssertionsAreEnabled;

    if (v15 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for ViewLayoutEngine);
      v17 = MEMORY[0x1EEE9AC00](v16);
      (*(*v13 + 80))(v17);
      v23[0] = v13;
      v23[1] = v14 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_ZStackD0V_Tt3B5Tm(a6, a7, v11, v10, a5, v23);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_ZStackC0VG_Tt1B5Tm(v23, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>, &v18);
    AGGraphSetOutputValue();
  }
}

uint64_t outlined init with copy of LazyFilterSequence<LayoutSubviews>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LazyFilterSequence<LayoutSubviews>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL partial apply for closure #2 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:)()
{
  v1 = *(v0 + 16);
  LayoutProxy.layoutPriority.getter();
  return v2 == v1;
}

uint64_t specialized DynamicLayoutComputer.updateValue()(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  Value = AGGraphGetValue();
  result = *(v2 + 8);
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 4);
    v8 = *Value;
    v7 = Value[1];
    v9 = AGGraphGetValue();
    v10 = *(v9 + 8);
    v11 = *(v9 + 32);
    v12 = *(v9 + 40);
    v13 = *(v9 + 44);
    v15[0] = *v9;
    v15[1] = v10;
    v16 = *(v9 + 16);
    v17 = v11;
    v18 = v12;
    v19 = v13;

    v14 = specialized DynamicLayoutMap.attributes(info:)(v15);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v8, v7, v6, v14, a2);
  }

  return result;
}

uint64_t specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = result | (result << 32);

    a5(v5, v13, a3, v12, a4, a1, a2);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = result | (result << 32);

    a5(v5, v13, a3, v12, a4, a1, a2);
  }

  return result;
}

void type metadata accessor for LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>)
  {
    type metadata accessor for LazyFilterSequence<LayoutSubviews>(255);
    lazy protocol witness table accessor for type LazyFilterSequence<LayoutSubviews> and conformance LazyFilterSequence<A>();
    v1 = type metadata accessor for LazyMapSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>);
    }
  }
}

uint64_t _ZStackLayout.spacing(subviews:cache:)@<X0>(unsigned int *a1@<X0>, int64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  LODWORD(v70) = *a1;
  *(&v70 + 1) = v4;
  v71 = v5;
  v72 = v6;
  v73 = 0;
  v74 = closure #1 in _ZStackLayout.spacing(subviews:cache:);
  v75 = 0;
  swift_bridgeObjectRetain_n();
  v7 = specialized LazyMapSequence.Iterator.next()();
  if (v8)
  {

    v9 = 0.0;
  }

  else
  {
    v10 = *&v7;
    v11 = v73;
    v12 = *(v4 + 16);
    if (v73 != v12)
    {
      v13 = v4 + 32 + 12 * v73;
      v9 = *&v7;
      while (1)
      {
        if (v5)
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_76;
          }

          v14 = v13;
          if (v11 >= v12)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          if (v11 >= v12)
          {
            goto LABEL_78;
          }

          v14 = (v4 + 32 + 8 * v11);
        }

        if (v11 >= v12)
        {
          break;
        }

        ++v11;
        v76 = v3;
        v77 = *v14;
        LayoutProxy.layoutPriority.getter();
        if (v10 < v15)
        {
          v9 = v15;
          v10 = v15;
        }

        v12 = *(v4 + 16);
        v13 += 12;
        if (v11 == v12)
        {
          goto LABEL_17;
        }
      }

LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v9 = *&v7;
LABEL_17:
    v73 = v11;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  v17 = *(v4 + 16);

  if (!v17)
  {
LABEL_29:
    if (one-time initialization token for zero == -1)
    {
LABEL_30:
      v23 = static ViewSpacing.zero;
      v24 = byte_1ED52A120;

      *a2 = v23;
      *(a2 + 8) = v24;
      return result;
    }

LABEL_82:
    swift_once();
    goto LABEL_30;
  }

  v18 = 0;
  v19 = (v4 + 32);
  v69 = v4 + 32;
  while (1)
  {
    if (v5)
    {
      if (v18 >= v17)
      {
        goto LABEL_73;
      }

      v20 = (v69 + 12 * v18);
    }

    else
    {
      v20 = v19;
      if (v18 >= v17)
      {
        goto LABEL_72;
      }
    }

    v21 = *(v16 + 16);
    LODWORD(v70) = v3;
    *(&v70 + 4) = *v20;
    LayoutProxy.layoutPriority.getter();
    v17 = *(v4 + 16);
    if (v22 == v21)
    {
      break;
    }

    if (v18 >= v17)
    {
      __break(1u);
      goto LABEL_71;
    }

    ++v18;
    ++v19;
    if (v18 == v17)
    {
      goto LABEL_29;
    }
  }

  if (v18 == v17)
  {
    goto LABEL_29;
  }

  v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v58 = *MEMORY[0x1E698D3F8];

  v26 = 0;
  v27 = v4 + 32;
LABEL_32:
  v28 = (v27 + 12 * v26);
  do
  {
    v29 = *(v4 + 16);
    if (v26 == v29)
    {

      result = swift_bridgeObjectRelease_n();
      *a2 = v61;
      *(a2 + 8) = v6;
      return result;
    }

    if (v5)
    {
      v30 = v28;
      if (v26 >= v29)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v26 >= v29)
      {
        goto LABEL_80;
      }

      v30 = (v69 + 8 * v26);
    }

    if (v26 >= v29)
    {
      goto LABEL_74;
    }

    v28 = (v28 + 12);
    ++v26;
    v31 = *(v16 + 16);
    LODWORD(v70) = v3;
    v67 = *v30;
    *(&v70 + 4) = *v30;
    LayoutProxy.layoutPriority.getter();
  }

  while (v32 != v31);
  if (v67 == v58)
  {
    InputValue = &static LayoutComputer.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
      InputValue = &static LayoutComputer.defaultValue;
    }
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v34 = *InputValue;
  v35 = one-time initialization token for lockAssertionsAreEnabled;

  if (v35 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_51;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_51:
    v60 = v6;
    v57 = a2;
    (*(*v34 + 112))(&v70);

    v36 = v70;
    v59 = v70 + 64;
    v37 = 1 << *(v70 + 32);
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v39 = v38 & *(v70 + 64);
    v40 = (v37 + 63) >> 6;

    v41 = v40;
    a2 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    v62 = v36;
    v63 = v41;
    while (v39)
    {
LABEL_61:
      v44 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v45 = v44 | (a2 << 6);
      v46 = *(v36 + 48) + 16 * v45;
      v47 = *(v46 + 8);
      if (v47 > 8 || (v47 & 4) == 0)
      {
        v68 = *v46;
        v48 = *(v36 + 56) + 40 * v45;
        v65 = *(v48 + 16);
        v66 = *v48;
        v49 = *(v48 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v70 = v42;
        v64 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 16) + 1, 1);
          v42 = v70;
        }

        v52 = *(v42 + 16);
        v51 = *(v42 + 24);
        v53 = v52 + 1;
        v41 = v63;
        if (v52 >= v51 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
          v53 = v52 + 1;
          v41 = v63;
          v42 = v70;
        }

        *(v42 + 16) = v53;
        v54 = v42 + 56 * v52;
        *(v54 + 32) = v68;
        *(v54 + 40) = v47;
        *(v54 + 48) = v66;
        *(v54 + 64) = v65;
        *(v54 + 80) = v64;
        v36 = v62;
      }
    }

    v6 = v60;
    while (1)
    {
      v43 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v43 >= v41)
      {

        v55 = specialized _arrayForceCast<A, B>(_:)(v42);

        v56 = swift_isUniquelyReferenced_nonNull_native();
        *&v70 = v61;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v55, v56, specialized max<A>(_:_:));
        v61 = v70;

        a2 = v57;
        v27 = v4 + 32;
        goto LABEL_32;
      }

      v39 = *(v59 + 8 * v43);
      ++a2;
      if (v39)
      {
        a2 = v43;
        goto LABEL_61;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

void specialized Sequence.reduce<A>(_:_:)(uint64_t a1, unint64_t a2, unint64_t a3, double a4, double a5)
{
  v7 = *(a1 + 16);
  v42[0] = *a1;
  v42[1] = v7;
  v31 = *(a1 + 40);
  v44 = *(a1 + 32);
  v43 = v44;
  v34 = *(&v7 + 1);
  v8 = v42[0];
  v9 = *(&v42[0] + 1);
  v10 = v7;
  v11 = BYTE1(v7);
  outlined init with copy of LazyFilterSequence<LayoutSubviews>(v42, &v35);

  v12 = *(v9 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v11 & 1;
    v15 = v9 + 32;
    v16 = v9 + 40;
    do
    {
      v17 = (v15 + 8 * v13);
      v18 = (v16 + 12 * v13);
      while (1)
      {
        if (v10)
        {
          if (v13 >= v12)
          {
            goto LABEL_22;
          }

          v19 = (v9 + 32 + 12 * v13);
          v20 = *v18;
        }

        else
        {
          if (v13 >= v12)
          {
            goto LABEL_21;
          }

          v19 = v17;
          v20 = v13;
        }

        if (v13 >= v12)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        v21 = v13 + 1;
        LODWORD(v35) = v8;
        *(&v35 + 4) = *v19;
        HIDWORD(v35) = v20;
        LOBYTE(v36) = v14;
        if (v34(&v35))
        {
          break;
        }

        v12 = *(v9 + 16);
        ++v17;
        v18 += 3;
        ++v13;
        if (v21 == v12)
        {
          goto LABEL_19;
        }
      }

      v40 = v35;
      v41 = v36;
      v31(&v35, &v40);
      v22 = v35;
      v23 = v36;
      v24 = v37;
      v25 = v38;
      v26 = v39;
      ViewDimensions.subscript.getter(a2);
      if (a4 <= v27)
      {
        a4 = v27;
      }

      v35 = v22;
      v36 = v23;
      v37 = v24;
      v38 = v25;
      v39 = v26;
      ViewDimensions.subscript.getter(a3);
      v29 = v28;

      if (a5 <= v29)
      {
        a5 = v29;
      }

      v12 = *(v9 + 16);
      v30 = v12 - 1 == v13++;
      v15 = v9 + 32;
      v16 = v9 + 40;
    }

    while (!v30);
  }

LABEL_19:
}

void lazy protocol witness table accessor for type LazyFilterSequence<LayoutSubviews> and conformance LazyFilterSequence<A>()
{
  if (!lazy protocol witness table cache variable for type LazyFilterSequence<LayoutSubviews> and conformance LazyFilterSequence<A>)
  {
    type metadata accessor for LazyFilterSequence<LayoutSubviews>(255);
    swift_getWitnessTable(MEMORY[0x1E69E6E80], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type LazyFilterSequence<LayoutSubviews> and conformance LazyFilterSequence<A>);
  }
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>);
    }
  }
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_ZStackC0VG_Tt1B5Tm@<X0>(const void *a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    (a2)(0);
    v8 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = CurrentAttribute;
    }

    *(v8 + 344) = v11;
    *(v8 + 348) = v10;
  }

  else
  {
    (a3)(0);
    v8 = swift_allocObject();
  }

  result = memcpy((v8 + 16), a1, 0x148uLL);
  *a4 = v8;
  a4[1] = 0;
  return result;
}

uint64_t _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_ZStackD0V_Tt3B5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::UInt32 a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0u;
  *(a7 + 88) = 1;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 144) = 1;
  *(a7 + 152) = 0u;
  *(a7 + 168) = 0u;
  *(a7 + 184) = 0u;
  *(a7 + 200) = 1;
  *(a7 + 208) = 0u;
  *(a7 + 224) = 0u;
  v10 = MEMORY[0x1E69E7CC0];
  *(a7 + 320) = 0;
  *(a7 + 248) = 0;
  *(a7 + 256) = 0;
  *(a7 + 240) = v10;
  *(a7 + 264) = 0;
  *(a7 + 272) = 0;
  *(a7 + 280) = 0;
  *(a7 + 288) = 0;
  *(a7 + 296) = 0;
  *(a7 + 304) = 0;
  *(a7 + 312) = 0;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a4);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v11 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(a7 + 32) = v11;
  *a7 = a1;
  *(a7 + 8) = a2;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

BOOL CoreColorDependsOnEnvironment(void *a1, char a2)
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __CoreColorDependsOnEnvironment_block_invoke;
  v8 = &__block_descriptor_41_e5_v8__0l;
  LOBYTE(v10) = a2;
  v9 = sel_resolvedColorWithTraitCollection_;
  if (CoreColorDependsOnEnvironment_once != -1)
  {
    dispatch_once(&CoreColorDependsOnEnvironment_once, &v5);
  }

  v3 = [a1 methodForSelector:{sel_resolvedColorWithTraitCollection_, v5, v6, v7, v8, v9, v10}];
  return v3 != CoreColorDependsOnEnvironment_CoreColor_imp;
}

void *__CoreColorDependsOnEnvironment_block_invoke(uint64_t a1)
{
  result = [CoreColorClass(*(a1 + 40)) instanceMethodForSelector:*(a1 + 32)];
  CoreColorDependsOnEnvironment_CoreColor_imp = result;
  return result;
}

Class __CoreColorClass_block_invoke(Class result)
{
  if (!*(result + 32))
  {
    result = NSClassFromString(&cfstr_Uicolor.isa);
    CoreColorClass_uiClass = result;
  }

  return result;
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_HStackLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_HStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_HStackLayout>>);
    }
  }
}

void specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    AGGraphMutateAttribute();
  }
}

{
  v4 = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    AGGraphMutateAttribute();
  }
}

{
  v4 = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    AGGraphMutateAttribute();
  }
}

{
  v4 = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    AGGraphMutateAttribute();
  }
}

{
  v4 = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    AGGraphMutateAttribute();
  }
}

{
  v4 = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    AGGraphMutateAttribute();
  }
}

{
  v4 = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    AGGraphMutateAttribute();
  }
}

{
  v4 = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    AGGraphMutateAttribute();
  }
}

{
  v4 = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    AGGraphMutateAttribute();
  }
}

uint64_t FontBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 144) - 8) + 8))(v0 + *(*v0 + 160));

  return swift_deallocClassInstance();
}

void partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1, uint64_t a2)
{
  specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

void specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, uint64_t a2, Swift::UInt32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v26[56] = *MEMORY[0x1E69E9840];
  v24[0] = a6;
  v24[1] = a7;
  v13 = a8 & 1;
  v25 = a8 & 1;
  v20[4] = v24;
  v20[5] = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v26[0] = v15;
      v26[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, v26, 0);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v26, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<_HStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_HStackLayout>>, v20);
    AGGraphSetOutputValue();
  }
}

{
  v26[56] = *MEMORY[0x1E69E9840];
  v24[0] = a6;
  v24[1] = a7;
  v13 = a8 & 1;
  v25 = a8 & 1;
  v20[4] = v24;
  v20[5] = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v26[0] = v15;
      v26[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, v26, 0);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v26, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<HStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<HStackLayout>>, v20);
    AGGraphSetOutputValue();
  }
}

{
  v26[56] = *MEMORY[0x1E69E9840];
  v24[0] = a6;
  v24[1] = a7;
  v13 = a8 & 1;
  v25 = a8 & 1;
  v20[4] = v24;
  v20[5] = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v26[0] = v15;
      v26[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, v26, 1);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v26, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<VStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<VStackLayout>>, v20);
    AGGraphSetOutputValue();
  }
}

{
  v26[56] = *MEMORY[0x1E69E9840];
  v24[0] = a6;
  v24[1] = a7;
  v13 = a8 & 1;
  v25 = a8 & 1;
  v20[4] = v24;
  v20[5] = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v26[0] = v15;
      v26[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, v26, 1);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v26, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<VStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<VStackLayout>>, v20);
    AGGraphSetOutputValue();
  }
}

{
  v26[56] = *MEMORY[0x1E69E9840];
  v24[0] = a6;
  v24[1] = a7;
  v13 = a8 & 1;
  v25 = a8 & 1;
  v20[4] = v24;
  v20[5] = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v26[0] = v15;
      v26[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, v26, 0);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v26, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<HStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<HStackLayout>>, v20);
    AGGraphSetOutputValue();
  }
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t PreferenceValues.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v27 - v10;
  v14 = type metadata accessor for PreferenceValues.Value(255, AssociatedTypeWitness, v12, v13);
  v15 = type metadata accessor for Optional();
  v28 = *(v15 - 8);
  v29 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v35 = *v4;
  v18 = v35;
  v35 = PreferenceValues.index<A>(of:)(a1);
  v36 = v19 & 1;
  v32 = a2;
  v33 = a3;
  v34 = v18;
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in PreferenceValues.subscript.getter, v31, MEMORY[0x1E69E73E0], v14, v20, v17);
  v21 = *(v14 - 8);
  v22 = *(v21 + 48);
  if (v22(v17, 1, v14) != 1)
  {
    return (*(v21 + 32))(v30, v17, v14);
  }

  (*(a3 + 16))(a2, a3);
  v23 = v30;
  (*(v9 + 32))(v30, v11, AssociatedTypeWitness);
  *(v23 + *(type metadata accessor for PreferenceValues.Value(0, AssociatedTypeWitness, v24, v25) + 28)) = 0;
  result = (v22)(v17, 1, v14);
  if (result != 1)
  {
    return (*(v28 + 8))(v17, v29);
  }

  return result;
}

unint64_t PreferenceValues.index<A>(of:)(unint64_t a1)
{
  v3 = *v1;
  result = PreferenceValues._index(of:)(a1);
  v5 = *(v3 + 16);
  if (result == v5)
  {
    return 0;
  }

  if (result >= v5)
  {
    __break(1u);
    return result;
  }

  if (*(v3 + 56 * result + 32) != a1)
  {
    return 0;
  }

  return result;
}

unsigned int *storeEnumTagSinglePayload for _OpacityShapeStyle(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _OpacityShapeStyle(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFFC;
  if ((v6 & 0xFFFFFFFC) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>);
    }
  }
}

uint64_t specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, _OWORD *))
{
  v4 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v4;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  a3(v10, v8);
  v6 = v10[1];
  *a1 = v10[0];
  a1[1] = v6;
  return 1;
}

uint64_t closure #1 in compareValues<A>(_:_:options:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a4;
  v9[3] = a1;
  v10 = a3;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, partial apply for closure #1 in closure #1 in compareValues<A>(_:_:options:), v9, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

uint64_t assignWithCopy for ForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;

  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v71 = a3;
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgMaTm_1(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, type metadata accessor for DisplayList.ArchiveIDs, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v63 - v9;
  v11 = *(a1 + 5);
  v12 = *(a1 + 6);
  v14 = *(a1 + 7);
  v13 = *(a1 + 8);
  if (!(v13 >> 30))
  {
    if (v11 >> 60 == 4)
    {
      v29 = *(**((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x38) + 120);
      v30 = outlined copy of DisplayList.Content.Value(*(a1 + 5));
      if ((v29(v30) & 1) == 0)
      {
        v31 = *(a1 + 4);
        if (v31)
        {
          v32 = (2 * ((33 * WORD1(v31)) ^ v31)) | 1;
        }

        else
        {
          v32 = 0;
        }

        *v84 = v32;
        DisplayList.Item.addDrawingGroup(contentSeed:)(v84);
      }

      outlined consume of DisplayList.Item.Value(v11, v12, v14, v13);
    }

    goto LABEL_22;
  }

  if (v13 >> 30 != 1)
  {
    goto LABEL_22;
  }

  if (BYTE4(v12) == 1)
  {
    v34 = swift_projectBox();
    outlined init with copy of DisplayList.ArchiveIDs?(v34, v10);
    v35 = type metadata accessor for DisplayList.ArchiveIDs(0);
    v36 = (*(*(v35 - 8) + 48))(v10, 1, v35) != 1;
    DisplayList.Index.updateArchive(entering:)(v36);
    outlined destroy of DisplayList.ArchiveIDs?(v10);
    goto LABEL_22;
  }

  if (BYTE4(v12) == 10)
  {
    memmove(v84, (v11 + 16), 0x7CuLL);
    if (_s7SwiftUI14GraphicsFilterOWOg(v84) == 18)
    {
      _s7SwiftUI14GraphicsFilterOWOj17_(v84);
      v33 = *(a1 + 4);
      if (v33)
      {
        LODWORD(v33) = (2 * ((33 * (v33 >> 16)) ^ v33)) | 1;
      }

      LOWORD(v72) = v33;
      DisplayList.Item.addDrawingGroup(contentSeed:)(&v72);
    }

    goto LABEL_22;
  }

  if (BYTE4(v12) != 11)
  {
LABEL_22:
    *a4 = 0x7FF0000000000000;
    return;
  }

  v15 = *a2;
  outlined init with copy of AnyTrackedValue(v11 + 16, v81);
  v16 = *(*v71 + 8);
  v17 = v14;
  v19 = v4[8];
  v18 = v4[9];
  v66 = v17;
  outlined copy of DisplayList.Item.Value(v11, v12, v17, v13);
  outlined copy of DisplayList.Effect(v11, v12, 11);
  LODWORD(v65) = swift_isUniquelyReferenced_nonNull_native();
  v69 = v15;
  v70 = v4;
  v20 = v4[3];
  *v84 = v20;
  v67 = v18;
  v68 = v19;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18, v15 & 3);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_39;
  }

  LOBYTE(v15) = v21;
  if (v20[3] >= v25)
  {
    v28 = v70;
    v18 = v66;
    if (v65)
    {
      goto LABEL_24;
    }

LABEL_39:
    v62 = v22;
    specialized _NativeDictionary.copy()();
    v22 = v62;
    v28 = v70;
    v20 = *v84;
    goto LABEL_24;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v65);
  v20 = *v84;
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v67, v69 & 3);
  v18 = v66;
  if ((v15 & 1) != (v27 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    goto LABEL_41;
  }

  v22 = v26;
  v28 = v70;
LABEL_24:
  *(v28 + 24) = v20;
  if ((v15 & 1) == 0)
  {
    memset(v84, 0, sizeof(v84));
    v85 = 2;
    v86 = 0;
    v37 = v22;
    specialized _NativeDictionary._insert(at:key:value:)(v22, v68, v67, v69 & 3, v84, v20);
    v22 = v37;
  }

  v38 = v20[7] + 56 * v22;
  outlined init with copy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v38, v84);
  v70 = v38;
  if (v85 == 2 && (v39 = vorrq_s8(*&v84[8], *&v84[24]), !(*&vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL)) | *v84)))
  {
    outlined destroy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v84);
    v60 = v82;
    v61 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    (*(v61 + 32))(v84, v60, v61);
    v38 = v70;
    v85 = 0;
    outlined assign with take of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v84, v70);
  }

  else
  {
    outlined destroy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v84);
  }

  outlined init with copy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v38, v84);
  if (!v85)
  {
    outlined init with take of _ViewList_Elements(v84, v78);
    outlined destroy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v38);
    *v38 = 0u;
    *(v38 + 16) = 0u;
    *(v38 + 32) = 0;
    *(v38 + 40) = 2;
    v77 = v16;
    v40 = a1[2];
    v41 = a1[3];
    v42 = v79;
    v43 = v80;
    __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
    LODWORD(v69) = (*(v43 + 8))(&v72, v81, &v77, v42, v43, v40, v41);
    v44 = v72;
    v45 = v73;
    v46 = v74;
    v67 = v13 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
    v68 = v73 | (v74 << 32);
    v47 = *(a1 + 5);
    v65 = *(a1 + 6);
    v66 = v47;
    v48 = *(a1 + 7);
    v63 = *(a1 + 8);
    v64 = v48;
    outlined copy of DisplayList.Effect(v72, v73, v74);

    outlined consume of DisplayList.Item.Value(v66, v65, v64, v63);
    v49 = v67;
    v50 = v68;
    *(a1 + 5) = v44;
    *(a1 + 6) = v50;
    *(a1 + 7) = v18;
    *(a1 + 8) = v49;
    v51 = *(*v71 + 16);
    *(a1 + 4) = v51;
    if (v69)
    {
      v72 = v44;
      v73 = v45;
      v74 = v46;
      v75 = v51;
      v52 = 1;
      v53 = 0x7FF0000000000000;
    }

    else
    {
      outlined consume of DisplayList.Effect(v44, v45, v46);
      outlined init with copy of AnyTrackedValue(v78, &v72);
      v52 = 0;
      v53 = v16;
    }

    v76 = v52;
    v59 = v70;
    outlined assign with take of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(&v72, v70);
    __swift_destroy_boxed_opaque_existential_1(v78);
    goto LABEL_36;
  }

  if (v85 == 1)
  {
    v71 = *v84;
    v68 = *&v84[8] | (v84[12] << 32);
    v69 = *&v84[16];
    v54 = *(a1 + 5);
    v55 = *(a1 + 6);
    v56 = *(a1 + 7);
    v66 = *(a1 + 8);
    v67 = v13 & 0xFFFFFFFF0000FFFFLL | 0x40000000;

    outlined consume of DisplayList.Item.Value(v54, v55, v56, v66);
    v57 = v67;
    *(a1 + 6) = v68;
    *(a1 + 7) = v18;
    *(a1 + 8) = v57;
    v53 = 0x7FF0000000000000;
    v59 = v70;
    v58 = v71;
    *(a1 + 4) = v69;
    *(a1 + 5) = v58;
LABEL_36:
    *(v59 + 48) = v16;
    outlined consume of DisplayList.Item.Value(v11, v12, v18, v13);
    *a4 = v53;
    __swift_destroy_boxed_opaque_existential_1(v81);
    outlined consume of DisplayList.Effect(v11, v12, 11);
    return;
  }

LABEL_41:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double outlined consume of DisplayList.Content.Value(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:

      break;
    default:
      return result;
  }

  return result;
}

void *_setThreadGeometryProxyData()
{
  result = _perThreadGeometryProxyData();
  *result = v1;
  return result;
}

void outlined consume of DisplayList.Effect(uint64_t a1, char a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:

      break;
    case 5:
      outlined consume of GraphicsBlendMode(a1, a2 & 1);
      break;
    default:
      return;
  }
}

void outlined copy of DisplayList.Effect(uint64_t a1, char a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:

      break;
    case 5:
      outlined copy of GraphicsBlendMode(a1, a2 & 1);
      break;
    default:
      return;
  }
}

void outlined consume of DisplayList.Item.Value(unint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v5 = a4 >> 30;
  if (a4 >> 30 > 1)
  {
    if (v5 != 2)
    {
      return;
    }
  }

  else
  {
    if (!v5)
    {

      outlined consume of DisplayList.Content.Value(a1);
      return;
    }

    outlined consume of DisplayList.Effect(a1, a2, SBYTE4(a2));
  }
}

double outlined copy of DisplayList.Item.Value(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4 >> 30;
  if (a4 >> 30 > 1)
  {
    if (v5 != 2)
    {
      return result;
    }
  }

  else
  {
    if (!v5)
    {

      return outlined copy of DisplayList.Content.Value(a1);
    }

    outlined copy of DisplayList.Effect(a1, a2, SBYTE4(a2));
  }

  return result;
}

uint64_t outlined init with copy of DisplayList.Item(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  outlined copy of DisplayList.Item.Value(v5, v6, v7, v8);
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = *(a1 + 72);
  return a2;
}

void DisplayList.Item.canonicalize(options:)(char *a1)
{
  v2 = *a1;
  if (*a1)
  {
    return;
  }

  v4 = v1 + 5;
  v3 = v1[5];
  v5 = v1[8];
  if ((v5 >> 30) - 2 < 2)
  {
    return;
  }

  v6 = v1[6];
  v8 = (v1 + 7);
  p_rect = v1[7];
  if (v5 >> 30)
  {
    v15 = HIDWORD(v6);
    v156 = v1[8];
    if (*(p_rect + 2))
    {
      v16 = v1[6];
      outlined copy of DisplayList.Effect(v3, v6, SBYTE4(v6));

      goto LABEL_9;
    }

    if (BYTE4(v6) > 0xAu)
    {
      if (BYTE4(v6) <= 0x12u)
      {
        if (((1 << SBYTE4(v6)) & 0x2A800) != 0)
        {
          v16 = v1[6];
          outlined copy of DisplayList.Item.Value(v3, v6, p_rect, v5);
LABEL_25:

          LOBYTE(v6) = v16;
LABEL_85:
          v76 = v3;
          v77 = v6;
          v78 = v15;
LABEL_86:
          outlined consume of DisplayList.Effect(v76, v77, v78);
          goto LABEL_87;
        }

        if (BYTE4(v6) == 18)
        {
          (*(*v3 + 112))(&v179);
          v15 = HIDWORD(v6);
LABEL_61:
          v155 = p_rect;
          outlined copy of DisplayList.Item.Value(v3, v6, p_rect, v5);
          goto LABEL_69;
        }
      }

LABEL_84:
      outlined copy of DisplayList.Item.Value(v3, v6, p_rect, v5);

      goto LABEL_85;
    }

    switch(BYTE4(v6))
    {
      case 2u:
        if ((v3 & 4) != 0)
        {
          if ((v3 & 0x200) == 0)
          {
            goto LABEL_61;
          }

          v16 = v1[6];
          LOBYTE(v42) = 1;
        }

        else
        {
          if ((v3 & 0x200) == 0)
          {
            outlined copy of DisplayList.Item.Value(v3, v6, p_rect, v5);

            v76 = v3;
            v77 = v6;
            v78 = 2;
            goto LABEL_86;
          }

          v16 = v1[6];
          LOBYTE(v42) = 0;
        }

        v43 = v1[5];
        v41 = v16;
        break;
      case 3u:
        outlined init with copy of AnyTrackedValue(v3 + 16, &v179);
        v153 = *(&v180 + 1);
        v16 = v181;
        v145 = v181;
        __swift_project_boxed_opaque_existential_1(&v179, *(&v180 + 1));
        v152 = *(v16 + 56);
        LODWORD(v16) = v6;
        v85 = outlined copy of DisplayList.Item.Value(v3, v6, p_rect, v5);
        v152(&v173, v153, v145, v85);
        v86 = v173.i8[0];
        __swift_destroy_boxed_opaque_existential_1(&v179);
        if ((v86 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_9:
        v155 = p_rect;
        p_rect = &rect;
        if (v15 <= 8u)
        {
          LOBYTE(v6) = v16;
          if (v15 != 4)
          {
            if (v15 == 6)
            {
              v65 = *(v3 + 32);
              v192 = *(v3 + 16);
              v193 = v65;
              LOBYTE(v194) = *(v3 + 48);
              if (!*(v3 + 52))
              {
                v153 = HIDWORD(v5);
                v154 = v15;
                LOBYTE(p_rect) = *(v3 + 49);
                LOBYTE(v29) = *(v3 + 50);
                v87 = *(v3 + 32);
                rect = *(v3 + 16);
                v186 = v87;
                LOBYTE(v187) = *(v3 + 48);
                v88 = rect;
                v89 = v187 == 2;
                if (v187 >= 2u)
                {
                  goto LABEL_138;
                }

                v199.size.height = *(&v186 + 1);
                *&v199.origin.x = rect;
                *&v199.size.width = v186;
                v199.origin.y = *(&rect + 1);
                if (!CGRectIsInfinite(v199))
                {
                  goto LABEL_143;
                }

                goto LABEL_141;
              }
            }

            else if (v15 == 7)
            {
              v154 = v15;
              v15 = *(v3 + 16);
              LODWORD(v153) = *(v3 + 32);
              if (v153 || *(v155 + 2) != 1)
              {
              }

              else
              {
                v144 = *(v3 + 24);
                v143 = *(v3 + 28);
                v36 = *(v1 + 2);
                v35 = *(v1 + 3);
                v37 = v155[3];
                v38 = v155[5];
                v161 = v155[4];
                *v162 = v38;
                *&v162[12] = *(v155 + 92);
                v39 = v155[3];
                v159 = v155[2];
                v160 = v37;
                v40 = v155[5];
                v187 = v155[4];
                *v188 = v40;
                *&v188[12] = *(v155 + 92);
                rect = v155[2];
                v186 = v39;

                outlined init with copy of DisplayList.Item(&v159, &v192);
                DisplayList.Item.backdropFilter(size:)(&v173, v36, v35);
                v169 = v187;
                *v170 = *v188;
                *&v170[12] = *&v188[12];
                v167 = rect;
                v168 = v186;
                outlined destroy of DisplayList.Item(&v167);
                *&v182[16] = *&v176[16];
                v183 = v177;
                v184[0] = v178[0];
                *(v184 + 12) = *(v178 + 12);
                v179 = v173;
                v180 = v174;
                v181 = v175;
                *v182 = *v176;
                if (_s7SwiftUI14GraphicsFilterOSgWOg(&v179) != 1)
                {
                  v121 = swift_allocObject();
                  v122 = v183;
                  v121[5] = *&v182[16];
                  v121[6] = v122;
                  v121[7] = v184[0];
                  *(v121 + 124) = *(v184 + 12);
                  v123 = v180;
                  v121[1] = v179;
                  v121[2] = v123;
                  v124 = *v182;
                  v121[3] = v181;
                  v121[4] = v124;
                  p_rect = (v144 | (v143 << 32) | 0x40000000);
                  outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

                  v1[5] = v121;
                  v1[6] = 0xA00000000;
                  v1[7] = v15;
                  v1[8] = p_rect;
                  LOBYTE(v15) = v154;
                  goto LABEL_70;
                }
              }

              if (*(v15 + 16) != 1)
              {

                goto LABEL_147;
              }

              v151 = v1;
              v80 = *(v15 + 48);
              v81 = *(v15 + 80);
              v175 = *(v15 + 64);
              *v176 = v81;
              p_rect = &v173;
              *&v176[12] = *(v15 + 92);
              v82 = *(v15 + 48);
              v173 = *(v15 + 32);
              v174 = v80;
              v83 = *(v15 + 80);
              v169 = *(v15 + 64);
              *v170 = v83;
              *&v170[12] = *(v15 + 92);
              v167 = *(v15 + 32);
              v168 = v82;
              outlined init with copy of DisplayList.Item(&v173, &v159);
              DisplayList.Item.opaqueContentPath()(&v159);
              v181 = v169;
              *v182 = *v170;
              *&v182[12] = *&v170[12];
              v179 = v167;
              v180 = v168;
              outlined destroy of DisplayList.Item(&v179);

              v84 = BYTE1(v161);
              if (BYTE1(v161) != 2)
              {
                v105 = BYTE2(v161);
                v106 = v161;
                v107 = swift_allocObject();
                v108 = v160;
                *(v107 + 16) = v159;
                *(v107 + 32) = v108;
                *(v107 + 48) = v106;
                *(v107 + 49) = v84 & 1;
                *(v107 + 50) = v105 & 1;
                *(v107 + 52) = v153;
                v153 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
                v1 = v151;
                v109 = v151[5];
                p_rect = v151[6];
                v110 = v151[7];
                v146 = v151[8];

                outlined init with copy of (Path, FillStyle)?(&v159, &v167);
                outlined consume of DisplayList.Item.Value(v109, p_rect, v110, v146);
                v151[5] = v107;
                v151[6] = 0x600000000;
                v151[7] = v155;
                v151[8] = v153;
                v167.i8[0] = v2;
                DisplayList.Item.canonicalize(options:)(v167.i8);
                outlined destroy of (Path, FillStyle)?(&v159);
                goto LABEL_147;
              }

              goto LABEL_92;
            }

            goto LABEL_69;
          }

          if (*&v3 < 1.0)
          {
            goto LABEL_69;
          }

          v149 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
          v153 = HIDWORD(v5);
          v57 = v15;
          v5 = v1[5];
          v15 = v1[6];
          p_rect = v1[7];
          v58 = v1[8];

          v59 = v15;
          LOBYTE(v15) = v57;
          outlined consume of DisplayList.Item.Value(v5, v59, p_rect, v58);
          *(v1 + 5) = xmmword_18DDA6ED0;
          v1[7] = v155;
          v1[8] = v149;
          v179.i64[0] = v155;
          LOBYTE(v5) = v156;
          v179.i16[4] = v156;
          v179.i32[3] = v153;
          v60 = &v179;
        }

        else
        {
          LOBYTE(v6) = v16;
          if (v15 > 0xEu)
          {
            if (v15 != 20 || v3 || v16)
            {
              goto LABEL_69;
            }

            v179.i64[0] = v155;
            v179.i16[4] = v5;
            v179.i32[3] = HIDWORD(v5);
            DisplayList.Item.canonicalizeIdentityEffect(list:)(v179.i64);
            goto LABEL_42;
          }

          if (v15 != 9)
          {
            if (v15 != 10)
            {
              goto LABEL_69;
            }

            v153 = HIDWORD(v5);
            v154 = v15;
            v17 = *(v3 + 96);
            *&v182[16] = *(v3 + 80);
            v183 = v17;
            v184[0] = *(v3 + 112);
            *(v184 + 12) = *(v3 + 124);
            v18 = *(v3 + 32);
            v179 = *(v3 + 16);
            v180 = v18;
            v19 = *(v3 + 64);
            v181 = *(v3 + 48);
            *v182 = v19;
            v20 = *(v3 + 96);
            *&v176[16] = *(v3 + 80);
            v177 = v20;
            v178[0] = *(v3 + 112);
            *(v178 + 12) = *(v3 + 124);
            v21 = *(v3 + 32);
            v173 = *(v3 + 16);
            v174 = v21;
            v22 = *(v3 + 64);
            v175 = *(v3 + 48);
            *v176 = v22;
            outlined init with copy of GraphicsFilter(&v179, &v167);
            if (GraphicsFilter.isIdentity.getter())
            {
              v23 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
              v5 = v1[5];
              v24 = v1[6];
              p_rect = v1[7];
              v25 = v1[8];

              outlined consume of DisplayList.Item.Value(v5, v24, p_rect, v25);
              *(v1 + 5) = xmmword_18DDA6ED0;
              v1[7] = v155;
              v1[8] = v23;
              v173.i64[0] = v155;
              LOBYTE(v5) = v156;
              v173.i16[4] = v156;
              v173.i32[3] = v153;
              DisplayList.Item.canonicalizeIdentityEffect(list:)(v173.i64);
              outlined destroy of GraphicsFilter(&v179);
              goto LABEL_142;
            }

            *&v176[16] = *&v182[16];
            v177 = v183;
            v178[0] = v184[0];
            *(v178 + 12) = *(v184 + 12);
            v173 = v179;
            v174 = v180;
            v175 = v181;
            *v176 = *v182;
            outlined init with copy of GraphicsFilter(&v179, &v167);
            specialized _ColorMatrix.init(_:premultiplied:)(&v173, 0, &rect);
            if (v189)
            {
              outlined destroy of GraphicsFilter(&v179);
              goto LABEL_147;
            }

            v194 = v187;
            v195 = *v188;
            v196 = *&v188[16];
            v192 = rect;
            v193 = v186;
            if (*(v155 + 2) == 1)
            {
              v92 = *(v1 + 2);
              v91 = *(v1 + 3);
              v93 = v155[3];
              v163 = v155[2];
              v164 = v93;
              v94 = v155[5];
              v165 = v155[4];
              *v166 = v94;
              *&v166[12] = *(v155 + 92);
              v95 = v163;
              v96 = v164;
              outlined init with copy of DisplayList.Item(&v163, &v173);
              v201.origin.x = 0.0;
              v201.origin.y = 0.0;
              v200.origin = v95;
              v200.size = v96;
              v201.size.width = v92;
              v201.size.height = v91;
              if (CGRectEqualToRect(v200, v201))
              {
                v97 = *&v166[16];
                if ((*&v166[16] & 0xC0000000) != 0x40000000 || v166[4] << 32 != 0xA00000000)
                {
                  outlined destroy of GraphicsFilter(&v179);
                  outlined destroy of DisplayList.Item(&v163);

                  goto LABEL_71;
                }

                v98 = *&v166[8];
                v99 = *(*(&v165 + 1) + 96);
                *&v176[16] = *(*(&v165 + 1) + 80);
                v177 = v99;
                v178[0] = *(*(&v165 + 1) + 112);
                *(v178 + 12) = *(*(&v165 + 1) + 124);
                v100 = *(*(&v165 + 1) + 32);
                v173 = *(*(&v165 + 1) + 16);
                v174 = v100;
                v101 = *(*(&v165 + 1) + 64);
                v175 = *(*(&v165 + 1) + 48);
                *v176 = v101;
                v102 = *(*(&v165 + 1) + 96);
                *&v170[16] = *(*(&v165 + 1) + 80);
                v171 = v102;
                v172[0] = *(*(&v165 + 1) + 112);
                *(v172 + 12) = *(*(&v165 + 1) + 124);
                v103 = *(*(&v165 + 1) + 32);
                v167 = *(*(&v165 + 1) + 16);
                v168 = v103;
                v104 = *(*(&v165 + 1) + 64);
                v169 = *(*(&v165 + 1) + 48);
                *v170 = v104;
                outlined init with copy of GraphicsFilter(&v173, &v159);
                specialized _ColorMatrix.init(_:premultiplied:)(&v167, 0, v190);
                if ((v191 & 1) == 0)
                {
                  v161 = v190[2];
                  *v162 = v190[3];
                  *&v162[16] = v190[4];
                  v159 = v190[0];
                  v160 = v190[1];

                  outlined destroy of GraphicsFilter(&v179);
                  outlined destroy of DisplayList.Item(&v163);
                  v15 = swift_allocObject();
                  specialized static _ColorMatrix.* infix(_:_:)(&v192, &v159, &v167, v137);
                  LOBYTE(v171) = 0;
                  _s7SwiftUI14GraphicsFilterOWOi5_(&v167);
                  v138 = v171;
                  *(v15 + 80) = *&v170[16];
                  *(v15 + 96) = v138;
                  *(v15 + 112) = v172[0];
                  *(v15 + 124) = *(v172 + 12);
                  v139 = v168;
                  *(v15 + 16) = v167;
                  *(v15 + 32) = v139;
                  v140 = *v170;
                  *(v15 + 48) = v169;
                  *(v15 + 64) = v140;
                  LOBYTE(p_rect) = v97;
                  outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

                  v1[5] = v15;
                  v1[6] = 0xA00000000;
                  LOBYTE(v15) = v154;
                  v1[7] = v98;
                  v1[8] = v97 & 0xFFFFFFFF4000FFFFLL;
                  goto LABEL_70;
                }

                outlined destroy of GraphicsFilter(&v179);
                outlined destroy of DisplayList.Item(&v163);
LABEL_69:

                goto LABEL_70;
              }

              outlined destroy of GraphicsFilter(&v179);
              outlined destroy of DisplayList.Item(&v163);
            }

            else
            {
              outlined destroy of GraphicsFilter(&v179);
            }

LABEL_42:

            goto LABEL_71;
          }

          if (*(v3 + 88))
          {
            goto LABEL_69;
          }

          v153 = HIDWORD(v5);
          v61 = *(v3 + 32);
          v179 = *(v3 + 16);
          v180 = v61;
          v181 = *(v3 + 48);
          v173 = 0x3FF0000000000000uLL;
          *&v174 = 0;
          *(&v174 + 1) = 0x3FF0000000000000;
          v175 = 0uLL;
          if ((static CGAffineTransform.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_69;
          }

          v150 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
          v62 = v15;
          v5 = v1[5];
          v15 = v1[6];
          p_rect = v1[7];
          v63 = v1[8];

          v64 = v15;
          LOBYTE(v15) = v62;
          outlined consume of DisplayList.Item.Value(v5, v64, p_rect, v63);
          *(v1 + 5) = xmmword_18DDA6ED0;
          v1[7] = v155;
          v1[8] = v150;
          v167.i64[0] = v155;
          LOBYTE(v5) = v156;
          v167.i16[4] = v156;
          v167.i32[3] = v153;
          v60 = &v167;
        }

        DisplayList.Item.canonicalizeIdentityEffect(list:)(v60);

        goto LABEL_71;
      case 7u:
        v41 = v1[6];
        v42 = *(v3 + 24);
        v43 = v1[5];
        LODWORD(v16) = v41;
        break;
      default:
        goto LABEL_84;
    }

    outlined copy of DisplayList.Item.Value(v43, v41, p_rect, v5);
    if ((v42 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v12 = *(v1 + 3);
  outlined copy of DisplayList.Content.Value(v1[5]);
  v198.origin.x = v9;
  v198.origin.y = v10;
  v198.size.width = v11;
  v198.size.height = v12;
  if (CGRectIsEmpty(v198))
  {
    v13 = *(v1 + 3);
    v181 = *(v1 + 2);
    *v182 = v13;
    *&v182[12] = *(v1 + 60);
    v14 = *(v1 + 1);
    v179 = *v1;
    v180 = v14;
    DisplayList.Item.features.getter(&v173);
    if ((v173.i8[0] & 1) == 0)
    {
      outlined consume of DisplayList.Item.Value(v3, v6, p_rect, v5);
LABEL_87:
      v51 = v1[5];
      v52 = v1[6];
      v53 = v1[7];
      v79 = v1[8];
LABEL_171:
      outlined consume of DisplayList.Item.Value(v51, v52, v53, v79);
      goto LABEL_172;
    }
  }

  v26 = v3 >> 60;
  if ((v3 >> 60) > 6)
  {
    if (v26 != 7)
    {
      if (v26 == 10)
      {
        v50 = *(*((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 216);
        if (!v50 || ![v50 length])
        {
          goto LABEL_57;
        }
      }

      else if (v26 == 11 && !*(*((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 16))
      {
LABEL_57:
        outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
        v51 = v3;
        v52 = v6;
        v53 = p_rect;
LABEL_170:
        LODWORD(v79) = v5;
        goto LABEL_171;
      }

      goto LABEL_58;
    }

    v27 = p_rect;
    v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v44 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    p_rect = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v29 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v30 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v45 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x44);
    if (v30 <= 2)
    {
      if (v30 >= 2)
      {
        v49 = *(v8 + 16);
        v48 = *(v8 + 24);
        v47 = *(v8 + 32);
        v46 = *(v8 + 40);
      }

      else
      {
        v46 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v47 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v48 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v49 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      }

      IsNull = CGRectIsNull(*&v49);
LABEL_160:
      if (!IsNull && v45 != 0.0)
      {
        goto LABEL_162;
      }

      goto LABEL_169;
    }

    if (v30 == 5)
    {
      if (*(v8 + 16))
      {
        if (*(v8 + 16) != 1)
        {
          outlined copy of DisplayList.Item.Value(v3, v6, v27, v5);
          outlined copy of Path.Storage(v8, v44, p_rect, v29, 5u);
          if (one-time initialization token for bufferCallbacks != -1)
          {
            swift_once();
          }

          goto LABEL_159;
        }

LABEL_97:
        outlined copy of DisplayList.Item.Value(v3, v6, v27, v5);
        outlined copy of Path.Storage(v8, v44, p_rect, v29, 5u);
LABEL_159:
        IsEmpty = RBPathIsEmpty();
        outlined consume of Path.Storage(v8, v44, p_rect, v29, 5u);
        outlined consume of DisplayList.Item.Value(v3, v6, v27, v5);
        IsNull = IsEmpty;
        goto LABEL_160;
      }

      if (*(v8 + 24))
      {
        goto LABEL_97;
      }

      __break(1u);
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    goto LABEL_102;
  }

  if (v26 == 1)
  {
    if (*((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == 0.0 && *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x14) == 0.0 && *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == 0.0 && *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C) == 0.0)
    {
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (v26 != 4)
  {
LABEL_58:
    v54 = v3;
    v55 = v6;
    v56 = p_rect;
LABEL_163:

    outlined consume of DisplayList.Item.Value(v54, v55, v56, v5);
    return;
  }

  v27 = p_rect;
  v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v28 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  p_rect = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v29 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v30 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  if (v30 <= 2)
  {
    if (v30 >= 2)
    {
      v34 = *(v8 + 16);
      v33 = *(v8 + 24);
      v32 = *(v8 + 32);
      v31 = *(v8 + 40);
    }

    else
    {
      v31 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v32 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v33 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v34 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    }

    if (!CGRectIsNull(*&v34))
    {
      goto LABEL_162;
    }

    goto LABEL_169;
  }

  if (v30 == 5)
  {
    if (*(v8 + 16))
    {
      if (*(v8 + 16) != 1)
      {
        outlined copy of DisplayList.Item.Value(v3, v6, v27, v5);
        outlined copy of Path.Storage(v8, v28, p_rect, v29, 5u);
        if (one-time initialization token for bufferCallbacks != -1)
        {
          swift_once();
        }

LABEL_168:
        v158 = RBPathIsEmpty();
        outlined consume of Path.Storage(v8, v28, p_rect, v29, 5u);
        outlined consume of DisplayList.Item.Value(v3, v6, v27, v5);
        if ((v158 & 1) == 0)
        {
LABEL_162:
          v54 = v3;
          v55 = v6;
          v56 = v27;
          goto LABEL_163;
        }

LABEL_169:
        outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
        v51 = v3;
        v52 = v6;
        v53 = v27;
        goto LABEL_170;
      }
    }

    else if (!*(v8 + 24))
    {
      goto LABEL_194;
    }

    outlined copy of DisplayList.Item.Value(v3, v6, v27, v5);
    outlined copy of Path.Storage(v8, v28, p_rect, v29, 5u);
    goto LABEL_168;
  }

LABEL_102:
  if (v30 == 6)
  {
    goto LABEL_169;
  }

  while (1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_138:
    if (v89 && CGRectIsInfinite(*(v88 + 16)))
    {
LABEL_141:
      v111 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
      v5 = v1[5];
      v112 = v1[6];
      p_rect = v1[7];
      v113 = v1[8];

      outlined consume of DisplayList.Item.Value(v5, v112, p_rect, v113);
      *(v1 + 5) = xmmword_18DDA6ED0;
      v1[7] = v155;
      v1[8] = v111;
      v179.i64[0] = v155;
      LOBYTE(v5) = v156;
      v179.i16[4] = v156;
      v179.i32[3] = v153;
      DisplayList.Item.canonicalizeIdentityEffect(list:)(v179.i64);
LABEL_142:

      LOBYTE(v15) = v154;
    }

    else
    {
LABEL_143:
      if (*(v155 + 2) != 1)
      {
LABEL_147:

        LOBYTE(v15) = v154;
        goto LABEL_70;
      }

      v147 = p_rect;
      v114 = *(v1 + 2);
      v115 = *(v1 + 3);
      v151 = v1;
      v116 = v155[3];
      v117 = v155[5];
      v175 = v155[4];
      *v176 = v117;
      p_rect = &v173;
      *&v176[12] = *(v155 + 92);
      v118 = v155[3];
      v173 = v155[2];
      v174 = v116;
      v119 = v155[5];
      v169 = v155[4];
      *v170 = v119;
      *&v170[12] = *(v155 + 92);
      v167 = v155[2];
      v168 = v118;
      outlined init with copy of DisplayList.Item(&v173, &v159);
      v120 = DisplayList.Item.paint(in:)(0.0, 0.0, v114, v115);
      v181 = v169;
      *v182 = *v170;
      *&v182[12] = *&v170[12];
      v179 = v167;
      v180 = v168;
      outlined destroy of DisplayList.Item(&v179);
      if (!v120)
      {
LABEL_92:

        goto LABEL_93;
      }

      Path.roundedRect()(&v167);
      if (v170[0] == 2)
      {
        goto LABEL_146;
      }

      v127 = v169;
      v128 = v168;
      v129 = v167;
      v130 = v170[0] & 1;
      v170[0] &= 1u;
      v159 = 0uLL;
      *&v160 = v114;
      *(&v160 + 1) = v115;
      v161 = 0uLL;
      v162[0] = 0;
      if (!FixedRoundedRect.contains(_:)(&v159))
      {
        v167 = 0uLL;
        *&v168 = v114;
        *(&v168 + 1) = v115;
        v169 = 0uLL;
        v170[0] = 0;
        v159 = v129;
        v160 = v128;
        v161 = v127;
        v162[0] = v130;
        if (FixedRoundedRect.contains(_:)(&v159))
        {
          v133 = swift_allocObject();
          v134 = v193;
          *(v133 + 16) = v192;
          *(v133 + 32) = v134;
          *(v133 + 48) = v194;
          *(v133 + 56) = v120;
          *(v133 + 64) = v147;
          *(v133 + 65) = v29;
          v135 = v1[4];
          if (v135)
          {
            v136 = (2 * (((33 * WORD1(v135)) ^ v135) & 0x7FFFLL)) | 1;
          }

          else
          {
            v136 = 0;
          }

          v141 = v133 | 0x4000000000000000;
          v15 = v1[6];
          v153 = v1[5];
          p_rect = v1[7];
          v142 = v1[8];
          outlined init with copy of Path.Storage(&rect, &v167);
          outlined consume of DisplayList.Item.Value(v153, v15, p_rect, v142);

          v1[5] = v141;
          v1[6] = v136;
          *v8 = 0;
          *(v8 + 8) = 0;
          LOBYTE(v15) = v154;
          goto LABEL_70;
        }

LABEL_146:

LABEL_93:
        v1 = v151;
        LOBYTE(v15) = v154;
LABEL_70:
        LOBYTE(v5) = v156;
        goto LABEL_71;
      }

      v131 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
      v5 = v1[5];
      p_rect = v1[6];
      v132 = v1[7];
      v148 = v1[8];

      outlined consume of DisplayList.Item.Value(v5, p_rect, v132, v148);
      *(v1 + 5) = xmmword_18DDA6ED0;
      v1[7] = v155;
      v1[8] = v131;
      v167.i64[0] = v155;
      LOBYTE(v5) = v156;
      v167.i16[4] = v156;
      v167.i32[3] = v153;
      DisplayList.Item.canonicalizeIdentityEffect(list:)(v167.i64);

      LOBYTE(v15) = v154;
    }

LABEL_71:
    if (v5)
    {
      goto LABEL_77;
    }

    if (v15 == 7)
    {
      break;
    }

    if (v15 != 6)
    {
      if (v15 != 4)
      {
LABEL_77:
        v66 = v3;
        v67 = v6;
        v68 = v15;
LABEL_78:
        outlined consume of DisplayList.Effect(v66, v67, v68);
        return;
      }

      if (*&v3 <= 0.0)
      {
        goto LABEL_87;
      }

      return;
    }

    v69 = *(v3 + 16);
    v29 = *(v3 + 24);
    v5 = *(v3 + 32);
    v70 = *(v3 + 40);
    v71 = *(v3 + 48);
    v8 = *(v3 + 52);
    if (v71 <= 2)
    {
      if (v71 >= 2)
      {
        v75 = v69[2];
        v74 = v69[3];
        v73 = v69[4];
        v72 = v69[5];
      }

      else
      {
        v72 = *(v3 + 40);
        v73 = *(v3 + 32);
        v74 = *(v3 + 24);
        v75 = *(v3 + 16);
      }

      if (!CGRectIsNull(*&v75))
      {
        goto LABEL_181;
      }

LABEL_180:
      if (!v8)
      {
        outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
        outlined consume of DisplayList.Effect(v3, v6, 6);
        goto LABEL_172;
      }

LABEL_181:
      v66 = v3;
      v67 = v6;
      v68 = 6;
      goto LABEL_78;
    }

    if (v71 == 5)
    {
      if (*(v69 + 16))
      {
        if (*(v69 + 16) == 1)
        {
          goto LABEL_114;
        }

        v125 = one-time initialization token for bufferCallbacks;

        if (v125 != -1)
        {
          swift_once();
        }

LABEL_179:
        v126 = RBPathIsEmpty();
        outlined consume of Path.Storage(v69, v29, v5, v70, 5u);
        if (v126)
        {
          goto LABEL_180;
        }

        goto LABEL_181;
      }

      if (v69[3])
      {
LABEL_114:

        goto LABEL_179;
      }

LABEL_195:
      __break(1u);
      return;
    }

    if (v71 == 6)
    {
      goto LABEL_180;
    }
  }

  if (*(*(v3 + 16) + 16))
  {
    v66 = v3;
    v67 = v6;
    v68 = 7;
    goto LABEL_78;
  }

  outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
  outlined consume of DisplayList.Effect(v3, v6, 7);
LABEL_172:
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v1[8] = 3221225472;
}

uint64_t sub_18D145B68()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18D145BB0()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18D145BF0()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

void *DisplayList.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *&v19[12] = *(a1 + 60);
  v4 = a1[2];
  *v19 = a1[3];
  v5 = *a1;
  v17 = a1[1];
  v18 = v4;
  v16 = v5;
  if ((~*&v19[16] & 0xC0000000) != 0 || *&v19[16] != 3221225472 || *v19 | *&v19[8] | *(&v18 + 1))
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    v10 = a1[2];
    v11 = a1[3];
    v12 = *a1;
    v9[3] = a1[1];
    v9[4] = v10;
    v9[5] = v11;
    *(v9 + 92) = *(a1 + 60);
    v9[1] = xmmword_18DDA6EB0;
    v9[2] = v12;
    outlined init with copy of DisplayList.Item(&v16, v14);
    DisplayList.Item.features.getter(v14);
    v8 = v14[0];
    v14[2] = v18;
    v15[0] = *v19;
    *(v15 + 12) = *&v19[12];
    v14[0] = v16;
    v14[1] = v17;
    DisplayList.Item.properties.getter(&v13);
    result = outlined destroy of DisplayList.Item(&v16);
    v7 = v13;
  }

  else
  {
    result = outlined destroy of DisplayList.Item(&v16);
    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 12) = v7;
  return result;
}

void DisplayList.Item.features.getter(_WORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[8];
  v4 = v3 >> 30;
  if (v3 >> 30 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_71;
    }

    v13 = *(v2 + 16);
    if (!v13)
    {
      *a1 = 128;
      return;
    }

    if (v13 < 8)
    {
      v14 = 0;
      LOWORD(v15) = 128;
LABEL_49:
      v38 = v13 - v14;
      v39 = (v2 + 40 * v14 + 64);
      do
      {
        v40 = *v39;
        v39 += 20;
        LOWORD(v15) = v40 | v15;
        --v38;
      }

      while (v38);
LABEL_51:
      *a1 = v15;
      return;
    }

    if (v13 >= 0x10)
    {
      v31 = xmmword_18DDA6EC0;
      v14 = v13 & 0x7FFFFFFFFFFFFFF0;
      v32 = 0uLL;
      v33 = v1[5];
      v34 = v13 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v35.i16[0] = v33[32];
        v35.i16[1] = v33[52];
        v35.i16[2] = v33[72];
        v35.i16[3] = v33[92];
        v35.i16[4] = v33[112];
        v35.i16[5] = v33[132];
        v35.i16[6] = v33[152];
        v35.i16[7] = v33[172];
        v36.i16[0] = v33[192];
        v36.i16[1] = v33[212];
        v36.i16[2] = v33[232];
        v36.i16[3] = v33[252];
        v36.i16[4] = v33[272];
        v36.i16[5] = v33[292];
        v36.i16[6] = v33[312];
        v36.i16[7] = v33[332];
        v31 = vorrq_s8(v35, v31);
        v32 = vorrq_s8(v36, v32);
        v33 += 320;
        v34 -= 16;
      }

      while (v34);
      v37 = vorrq_s8(v32, v31);
      *v37.i8 = vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
      LOWORD(v15) = v37.i16[0] | v37.i16[2] | ((v37.i32[0] | v37.i32[1]) >> 16);
      if (v13 == v14)
      {
        goto LABEL_51;
      }

      if ((v13 & 8) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v14 = 0;
      LOWORD(v15) = 128;
    }

    v22 = v14;
    v14 = v13 & 0x7FFFFFFFFFFFFFF8;
    v23 = v15;
    v24 = v22 - (v13 & 0x7FFFFFFFFFFFFFF8);
    v25 = (v2 + 40 * v22 + 184);
    do
    {
      v26.i16[0] = *(v25 - 60);
      v26.i16[1] = *(v25 - 40);
      v26.i16[2] = *(v25 - 20);
      v26.i16[3] = *v25;
      v26.i16[4] = v25[20];
      v26.i16[5] = v25[40];
      v26.i16[6] = v25[60];
      v26.i16[7] = v25[80];
      v23 = vorrq_s8(v26, v23);
      v25 += 160;
      v24 += 8;
    }

    while (v24);
    v27 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v15 = v27.i16[0] | v27.i16[2] | ((v27.i32[0] | v27.i32[1]) >> 16);
    if (v13 == v14)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v5 = v1[6];
  v6 = v1[7];
  if (v4)
  {
    v16 = a1;
    if (BYTE4(v5) <= 0xCu)
    {
      if (BYTE4(v5) > 6u)
      {
        if (BYTE4(v5) == 7)
        {
          v17 = *(v2 + 24);
          outlined copy of DisplayList.Item.Value(v2, v5, v6, v3);

          outlined consume of DisplayList.Effect(v2, v5, 7);
          goto LABEL_68;
        }

        if (BYTE4(v5) == 11)
        {
          outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

          outlined consume of DisplayList.Effect(v2, v5, 11);
          v17 = 4;
          goto LABEL_68;
        }
      }

      else
      {
        if (BYTE4(v5) == 2)
        {
          outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

          outlined consume of DisplayList.Effect(v2, v5, 2);
          if ((v2 & 4) != 0)
          {
            v47 = 1025;
          }

          else
          {
            v47 = 1024;
          }

          if ((v2 & 0x200) != 0)
          {
            v17 = v47;
          }

          else
          {
            v17 = (v2 & 4) >> 2;
          }

          goto LABEL_68;
        }

        if (BYTE4(v5) == 3)
        {
          outlined init with copy of AnyTrackedValue(v2 + 16, &v49);
          v18 = *(&v50 + 1);
          v19 = v51;
          __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
          v20 = *(v19 + 56);
          v21 = outlined copy of DisplayList.Item.Value(v2, v5, v6, v3);
          v20(&v48, v18, v19, v21);
          v17 = v48 | 0x400;
          __swift_destroy_boxed_opaque_existential_1(&v49);

          outlined consume of DisplayList.Effect(v2, v5, 3);
          goto LABEL_68;
        }
      }
    }

    else if (BYTE4(v5) <= 0xFu)
    {
      if (BYTE4(v5) == 13)
      {
        outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

        outlined consume of DisplayList.Effect(v2, v5, 13);
        v17 = 2;
        goto LABEL_68;
      }

      if (BYTE4(v5) == 15)
      {
        outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

        v28 = v2;
        v29 = v5;
        LOBYTE(v30) = 15;
LABEL_67:
        outlined consume of DisplayList.Effect(v28, v29, v30);
        v17 = 0;
        goto LABEL_68;
      }
    }

    else
    {
      switch(BYTE4(v5))
      {
        case 0x10u:
          outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

          outlined consume of DisplayList.Effect(v2, v5, 16);
          v17 = 64;
          goto LABEL_68;
        case 0x11u:
          outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

          outlined consume of DisplayList.Effect(v2, v5, 17);
          v17 = 32;
          goto LABEL_68;
        case 0x12u:
          (*(*v2 + 112))(&v49);
          outlined copy of DisplayList.Item.Value(v2, v5, v6, v3);

          outlined consume of DisplayList.Effect(v2, v5, 18);
          v17 = v49 | 0x11;
LABEL_68:
          *v16 = v17 | v3;
          return;
      }
    }

    outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

    v28 = v2;
    v29 = v5;
    v30 = HIDWORD(v5);
    goto LABEL_67;
  }

  v7 = v2 >> 60;
  if ((v2 >> 60) > 10)
  {
    switch(v7)
    {
      case 0xE:
        v41 = a1;
        outlined copy of DisplayList.Content.Value(v1[5]);
        a1 = v41;
        break;
      case 0xD:
        break;
      case 0xB:
        *a1 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) | 0x200;
        return;
      default:
        goto LABEL_71;
    }

    *a1 = 2;
    return;
  }

  if (v7 == 6)
  {
    *a1 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    return;
  }

  if (v7 == 8)
  {
    v42 = a1;
    outlined init with copy of AnyTrackedValue((v2 & 0xFFFFFFFFFFFFFFFLL) + 16, &v49);
    v43 = *(&v50 + 1);
    v44 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
    v45 = *(v44 + 40);
    v46 = outlined copy of DisplayList.Content.Value(v2);
    v45(&v48, v43, v44, v46);
    *v42 = v48 | 0x400;
    __swift_destroy_boxed_opaque_existential_1(&v49);
    outlined consume of DisplayList.Item.Value(v2, v5, v6, v3);
    return;
  }

  if (v7 != 10)
  {
    goto LABEL_71;
  }

  v8 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v9 = *(v8 + 216);
  if (!v9)
  {
    goto LABEL_71;
  }

  v10 = a1;
  if ([v9 length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v11 = static NSAttributedStringKey.updateSchedule;
    [v9 length];
    if ([v9 attribute:v11 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of Any?(&v49, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>);
      v12 = *(v8 + 256);
      outlined consume of DisplayList.Item.Value(v2, v5, v6, v3);
      a1 = v10;
      if (v12)
      {
        *v10 = 8;
        return;
      }

      goto LABEL_71;
    }

    v49 = 0u;
    v50 = 0u;
    outlined destroy of Any?(&v49, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>);
  }

  outlined consume of DisplayList.Item.Value(v2, v5, v6, v3);
  a1 = v10;
LABEL_71:
  *a1 = 0;
}

void DisplayList.Item.properties.getter(__int32 *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[8];
  v4 = v3 >> 30;
  if (v3 >> 30 > 1)
  {
    if (v4 != 2 || (v5 = *(v2 + 16)) == 0)
    {
LABEL_10:
      *a1 = 0;
      return;
    }

    if (v5 > 7)
    {
      v7 = v5 & 0x7FFFFFFFFFFFFFF8;
      v12 = (v2 + 188);
      v13 = 0uLL;
      v14 = v5 & 0x7FFFFFFFFFFFFFF8;
      v15 = 0uLL;
      do
      {
        v16.i32[0] = *(v12 - 30);
        v16.i32[1] = *(v12 - 20);
        v16.i32[2] = *(v12 - 10);
        v16.i32[3] = *v12;
        v17.i32[0] = v12[10];
        v17.i32[1] = v12[20];
        v17.i32[2] = v12[30];
        v17.i32[3] = v12[40];
        v13 = vorrq_s8(v16, v13);
        v15 = vorrq_s8(v17, v15);
        v12 += 80;
        v14 -= 8;
      }

      while (v14);
      v18 = vorrq_s8(v15, v13);
      *v18.i8 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
      v6 = v18.i32[0] | v18.i32[1];
      if (v5 == v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v19 = v5 - v7;
    v20 = (v2 + 40 * v7 + 68);
    do
    {
      v21 = *v20;
      v20 += 10;
      v6 |= v21;
      --v19;
    }

    while (v19);
LABEL_20:
    *a1 = v6;
    return;
  }

  if (!v4)
  {
    if (v2 >> 60 == 6 || v2 >> 60 == 11)
    {
      *a1 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      return;
    }

    goto LABEL_10;
  }

  v8 = v1[6];
  if (BYTE4(v8) == 2)
  {
    v10 = a1;
    outlined copy of DisplayList.Effect(v1[5], v1[6], 2);
    v11 = v2;
  }

  else
  {
    v9 = v1[7];
    v10 = a1;
    if (BYTE4(v8) == 7)
    {
      v11 = *(v2 + 28);
      outlined copy of DisplayList.Item.Value(v2, v8, v9, v3);
      outlined consume of DisplayList.Effect(v2, v8, 7);
    }

    else if (BYTE4(v8) == 18)
    {
      (*(*v2 + 120))(&v22);
      outlined copy of DisplayList.Item.Value(v2, v8, v9, v3);
      outlined consume of DisplayList.Effect(v2, v8, 18);

      v11 = v22;
    }

    else
    {
      outlined copy of DisplayList.Effect(v1[5], v1[6], SBYTE4(v8));

      outlined consume of DisplayList.Effect(v2, v8, SBYTE4(v8));

      v11 = 0;
    }
  }

  *v10 = v11 | HIDWORD(v3);
}

uint64_t initializeWithCopy for DisplayList.Item(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  outlined copy of DisplayList.Item.Value(v5, v6, v7, v8);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t type metadata accessor for DisplayList.ArchiveIDs(uint64_t a1)
{
  result = type metadata singleton initialization cache for DisplayList.ArchiveIDs;
  if (!type metadata singleton initialization cache for DisplayList.ArchiveIDs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void DisplayList.Item.canonicalizeIdentityEffect(list:)(uint64_t *a1)
{
  v2 = *a1;
  if (*(*a1 + 16) == 1)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    v6 = *(v2 + 80);
    v7 = *(v2 + 88);
    v8 = *(v2 + 96);
    v9 = *(v2 + 104);
    *v1 = vaddq_f64(*(v2 + 32), *v1);
    *(v1 + 16) = v3;
    v10 = *(v1 + 32);
    v11 = *(v1 + 40);
    if (v4 > v10)
    {
      v10 = v4;
    }

    *(v1 + 32) = v10;
    v12 = *(v1 + 48);
    v13 = *(v1 + 56);
    v14 = *(v1 + 64);
    outlined copy of DisplayList.Item.Value(v5, v6, v7, v8);
    outlined consume of DisplayList.Item.Value(v11, v12, v13, v14);
    *(v1 + 40) = v5;
    *(v1 + 48) = v6;
    *(v1 + 56) = v7;
    *(v1 + 64) = v8;
    if (v9)
    {
      *(v1 + 72) = v9;
    }
  }
}

void PlacementData.setGeometry(_:at:layoutDirection:)(__int128 *a1, unint64_t a2, unsigned __int8 *a3)
{
  v5 = a1[1];
  v28 = *a1;
  v29 = v5;
  v6 = a1[3];
  v30 = a1[2];
  v31 = v6;
  v7 = *a3;
  v8 = *(v3 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 8) = v8;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  *(v3 + 8) = v8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (*(v8 + 2) <= a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v10 = &v8[64 * a2];
  v12 = *(v10 + 4);
  v11 = v10 + 32;
  v13 = *v11;
  v14 = *(v11 + 1);
  v15 = *(v11 + 3);
  v27[2] = *(v11 + 2);
  v27[3] = v15;
  v27[0] = v13;
  v27[1] = v14;
  outlined destroy of ViewGeometry(v27);
  v16 = v12 & 0xFFFFFFFFFFFFFLL;
  if ((~v12 & 0x7FF0000000000000) == 0 && v16 != 0)
  {
    ++*(v3 + 16);
  }

  v18 = v28;
  v19 = v29;
  v20 = v31;
  *(v11 + 2) = v30;
  *(v11 + 3) = v20;
  *v11 = v18;
  *(v11 + 1) = v19;
  if (v7 == *(v3 + 56))
  {
    outlined init with copy of ViewGeometry(&v28, v26);
  }

  else
  {
    v21 = *(v3 + 24);
    v22 = *(v3 + 32);
    v23 = *(v3 + 40);
    v24 = *(v3 + 48);
    outlined init with copy of ViewGeometry(&v28, v26);
    v32.origin.x = v21;
    v32.origin.y = v22;
    v32.size.width = v23;
    v32.size.height = v24;
    MaxX = CGRectGetMaxX(v32);
    v33.origin.x = *v11;
    v33.origin.y = *(v11 + 1);
    v33.size.width = *(v11 + 4);
    v33.size.height = *(v11 + 5);
    *v11 = MaxX - (CGRectGetMaxX(v33) - v21);
  }

  *(v3 + 8) = v8;
}

uint64_t outlined destroy of HitTestableEvent?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for HitTestableEvent?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16HitTestableEventVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Attribute<LayoutGestureBox.Value>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata completion function for DisplayList.ArchiveIDs(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t LayoutSubview.place(at:anchor:dimensions:)(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = a2 - v6 * a4;
  if (a4 == 0.0)
  {
    v8 = a2;
  }

  v9 = a3 - a5 * *&v7;
  if (a5 == 0.0)
  {
    v9 = a3;
  }

  if (((~*&v8 & 0x7FF0000000000000) != 0 || (*&v8 & 0xFFFFFFFFFFFFFLL) == 0) && ((~*&v9 & 0x7FF0000000000000) != 0 || (*&v9 & 0xFFFFFFFFFFFFFLL) == 0))
  {
    v12 = *a1;
    v13 = a1[1];
    v14 = a1[5];
    v15 = *(v5 + 12);
    *&v20 = v8;
    *(&v20 + 1) = v9;
    *&v21 = v12;
    *(&v21 + 1) = v13;
    *v22 = v6;
    *&v22[8] = v7;
    *&v22[24] = v14;

    v16 = _threadLayoutData();
    if (v16)
    {
      if ((*v16 & 1) == 0)
      {
        v19[0] = v20;
        v19[1] = v21;
        v19[2] = *v22;
        v19[3] = *&v22[16];
        v18 = 0;
        PlacementData.setGeometry(_:at:layoutDirection:)(v19, v15, &v18);
        return outlined destroy of ViewGeometry(&v20);
      }

      __break(1u);
    }

    __break(1u);
  }

  _StringGuts.grow(_:)(34);
  MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7C5B0);
  type metadata accessor for CGPoint(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x7974696361704F5FLL, 0xEE00746365666645, &type metadata for _OpacityEffect.Kind, type metadata accessor for _OpacityEffect.Type);
}

{
  v4 = MEMORY[0x1E69E7DE0];

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x74616F6C464743, 0xE700000000000000, v4, type metadata accessor for CGFloat.Type);
}

{

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x736172746E6F435FLL, 0xEF74636566664574, &type metadata for _ContrastEffect.Kind, type metadata accessor for _ContrastEffect.Type);
}

{

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x7465736E495FLL, 0xE600000000000000, &type metadata for ContainerRelativeShape._Inset.Kind, type metadata accessor for ContainerRelativeShape._Inset.Type);
}

uint64_t *assignWithCopy for DisplayList(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 4) = *(a2 + 4);
  *(a1 + 3) = *(a2 + 3);
  return a1;
}

double outlined consume of Path.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

double outlined copy of Path.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t type metadata completion function for CachedView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance CachedView<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CachedView<A, B>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t CachedView.updateValue()(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = v3;
  *(&v10 + 1) = v6;
  v31 = *(v9 + 32);
  v36[1] = v31;
  v36[0] = v10;
  v11 = type metadata accessor for IDView(0, v36);
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v3;
  if (!AGGraphGetOutputValue() || ((*(v14 + 16))(v17, v1, a1), v29 = *(a1 + 52), CachedView.view.getter(a1, v13), v18 = v30, (*(v7 + 16))(v30, &v13[*(v11 + 52)], v6), (*(v35 + 8))(v13, v11), v19 = dispatch thunk of static Equatable.== infix(_:_:)(), v20 = *(v7 + 8), v20(v18, v6), result = (v20)(&v17[v29], v6), (v19 & 1) != 0))
  {
    CachedView.view.getter(a1, v13);
    v23 = v33;
    v22 = v34;
    v24 = v32;
    (*(v34 + 16))(v33, v13, v32);
    v25 = (*(v35 + 8))(v13, v11);
    v26 = MEMORY[0x1EEE9AC00](v25);
    *(&v29 - 2) = a1;
    swift_getWitnessTable(protocol conformance descriptor for CachedView<A, B>, a1, v26);
    *(&v29 - 1) = v27;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, partial apply for closure #1 in StatefulRule.value.setter, (&v29 - 4), v24, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v28);
    return (*(v22 + 8))(v23, v24);
  }

  return result;
}

uint64_t CachedView.view.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v3;
  v4 = type metadata accessor for IDView(0, v7);
  Value = AGGraphGetValue();
  return (*(*(v4 - 8) + 16))(a2, Value, v4);
}

uint64_t partial apply for closure #1 in static ViewModifier.makeImplicitRoot(modifier:inputs:body:)()
{
  v1 = *(v0 + 16);
  v2 = _ViewInputs.implicitRootBodyInputs.getter(v4);
  v1(v2, v4);
  return outlined destroy of _ViewListInputs(v4);
}

uint64_t MakeModifiedRoot.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a2;
  v79 = *MEMORY[0x1E69E9840];
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 14);
  v69[2] = *(v4 + 10);
  v69[3] = v11;
  v69[4] = *(v4 + 18);
  v70 = v4[22];
  v12 = *(v4 + 6);
  v69[0] = *(v4 + 2);
  v69[1] = v12;
  v13 = *(v4 + 14);
  v75 = *(v4 + 10);
  v76 = v13;
  v77 = *(v4 + 18);
  v78 = v4[22];
  v14 = *(v4 + 6);
  v73 = *(v4 + 2);
  v74 = v14;
  v16 = *(v15 + 24);
  outlined init with copy of _ViewInputs(v69, v71);
  v16(a3, a4);
  LOBYTE(v63) = 1;
  HIDWORD(v36) = _ViewInputs.intern<A>(_:id:)(v10, &v63, a3);
  (*(v8 + 8))(v10, a3);
  v71[2] = v75;
  v71[3] = v76;
  v71[4] = v77;
  v72 = v78;
  v71[0] = v73;
  v71[1] = v74;
  outlined destroy of _ViewInputs(v71);
  v17 = *(v4 + 2);
  v18 = *(v4 + 14);
  v75 = *(v4 + 10);
  v76 = v18;
  v77 = *(v4 + 18);
  v78 = v4[22];
  v19 = *(v4 + 6);
  v73 = v17;
  v74 = v19;
  v66 = v18;
  v67 = v77;
  v64 = v19;
  v65 = v75;
  v68 = v78;
  v63 = v17;
  outlined init with copy of _ViewInputs(&v73, &v57);
  v20 = *(*(a4 + 8) + 8);
  v21 = *(v20 + 8);

  v22 = v21(a3, v20);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v63, v22);

  v23 = v37;
  v24 = *(v37 + 16);
  v25 = *v5;
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v57 = v63;
  v58 = v64;
  v26 = *(v5 + 12);
  v27 = *(v5 + 13);
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  *(v28 + 24) = a3;
  v29 = *(v23 + 24);
  *(v28 + 32) = v29;
  *(v28 + 40) = a4;
  *(v28 + 48) = HIDWORD(v36);
  *(v28 + 56) = v26;
  *(v28 + 64) = v27;
  ShouldRecordTree = AGSubgraphShouldRecordTree();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v49 = v59;
  v50 = v60;
  v51 = v61;
  v52 = v62;
  v47 = v57;
  v48 = v58;
  v31 = v59;
  LODWORD(v49) = 0;
  LODWORD(v39[0]) = v25;
  v53[0] = v57;
  v53[1] = v58;
  v54 = v62;
  v53[3] = v60;
  v53[4] = v61;
  v53[2] = v49;
  v43 = v49;
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v41 = v57;
  v42 = v58;
  v32 = *(v29 + 24);
  outlined init with copy of _ViewInputs(&v57, v55);
  outlined init with copy of _ViewInputs(v53, v55);
  v32(v38, v39, &v41, partial apply for closure #1 in MakeModifiedRoot.visit<A>(type:), v28, v24, v29);
  v55[2] = v43;
  v55[3] = v44;
  v55[4] = v45;
  v56 = v46;
  v55[0] = v41;
  v55[1] = v42;
  outlined destroy of _ViewInputs(v55);
  LODWORD(v49) = v31;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v38, &v47);
    AGSubgraphEndTreeElement();
  }

  v39[2] = v49;
  v39[3] = v50;
  v39[4] = v51;
  v40 = v52;
  v39[0] = v47;
  v39[1] = v48;
  outlined destroy of _ViewInputs(v39);
  v43 = v65;
  v44 = v66;
  v45 = v67;
  v46 = v68;
  v41 = v63;
  v42 = v64;
  outlined destroy of _ViewInputs(&v41);
  v33 = v38[0];
  v34 = v38[1];

  *(v5 + 14) = v33;
  *(v5 + 15) = v34;
  return result;
}

uint64_t sub_18D147AAC()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MakeModifiedRoot.visit<A>(type:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v7 = *(v2 + 56);
  v6 = *(v2 + 64);
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  _GraphValue.init(_:)(v5, &v13);
  return (*(*(v4 + 8) + 32))(&v13, v11, v7, v6, v3);
}

uint64_t destroy for MakeModifiedRoot(void *a1)
{
}

void lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

void _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

void _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

uint64_t one-time initialization function for legacyInterpolation()
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v0;
  }

  static Color.Resolved.legacyInterpolation = result ^ 1;
  return result;
}

uint64_t RoundedRectangle.path(in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  IsNull = CGRectIsNull(*&a2);
  v13 = 0uLL;
  if (IsNull)
  {
    result = 0;
    v15 = 6;
    a5 = 0.0;
  }

  else if (v9 == 0.0 && v10 == 0.0 || (v18.origin.x = a2, v18.size.width = a4, v18.origin.y = a3, v18.size.height = a5, CGRectIsInfinite(v18)))
  {
    v15 = 0;
    result = *&a2;
    *&v13 = a3;
    *(&v13 + 1) = a4;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = a2;
    *(result + 24) = a3;
    *(result + 32) = a4;
    *(result + 40) = a5;
    *(result + 48) = v9;
    *(result + 56) = v10;
    v15 = 2;
    a5 = 0.0;
    *(result + 64) = v11;
    v13 = 0uLL;
  }

  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 24) = a5;
  *(a1 + 32) = v15;
  return result;
}

uint64_t closure #1 in DynamicPreferenceCombiner.value.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a4, Value, AssociatedTypeWitness);
}

uint64_t assignWithCopy for DynamicViewListItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  __swift_assign_boxed_opaque_existential_1((a1 + 16), (a2 + 16), v4);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  v5 = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = v5;
  return a1;
}

uint64_t *assignWithCopy for DynamicContainer.Info(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 11) = *(a2 + 11);
  return a1;
}

double outlined copy of DisplayList.Content.Value(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t initializeWithCopy for DisplayList.ViewUpdater.Model.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of GraphicsBlendMode(v4, v5);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  v8 = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 110) = *(a2 + 110);
  v9 = *(a2 + 112);
  *(a1 + 96) = v8;

  if ((~v9 & 0xF000000000000007) != 0)
  {
  }

  v10 = *(a2 + 120);
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  v11 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v11;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);

  return a1;
}

uint64_t specialized static DisplayList.ViewUpdater.Model.merge(item:index:into:)(__int128 *a1, _OWORD *a2, __int128 *a3)
{
  *angle = *a2;
  if ((a1[4] & 0xC0000000) == 0x80000000)
  {
    if (*(*(a3 + 15) + 16))
    {
      v5 = *(a1 + 5);
      specialized Array._customRemoveLast()(&__dst);
      if (BYTE4(__dst.c))
      {
        specialized Array.remove(at:)(*(*(a3 + 15) + 16) - 1, &__dst);
        v6 = *&__dst.a;
        c_low = LODWORD(__dst.c);
      }

      else
      {
        c_low = LODWORD(__dst.c);
        v6 = *&__dst.a;
      }

      v11 = (v5 + 24);
      v12 = *(v5 + 16) + 1;
      v9 = MEMORY[0x1E69E7CC0];
      v10 = 0x40000000;
      while (--v12)
      {
        v13 = v11;
        v11 += 20;
        if ((vminv_u16(vmovn_s32(vceqq_s32(*(v13 + 4), v6))) & 1) != 0 && *(v13 + 6) == c_low)
        {
          v9 = *(v11 - 1);
          v8 = *v11;
          v14 = *(v11 + 1);

          v10 = (v14 << 32) | 0x40000000;
          goto LABEL_13;
        }
      }

      v8 = 0;
    }

    else
    {
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      v10 = 0x40000000;
    }

LABEL_13:
    v15 = v10 | v8;
    outlined consume of DisplayList.Item.Value(*(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8));
    *(a1 + 40) = xmmword_18DDA6ED0;
    *(a1 + 7) = v9;
    *(a1 + 8) = v15;
  }

  if (*(a3 + 2) != 1.0)
  {
    v19 = *(a3 + 2);
    v20 = *(a3 + 24);
    outlined copy of GraphicsBlendMode(v19, v20);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v21 = static GraphicsBlendMode.normal;
    v22 = byte_1ED52F818;
    if (v20)
    {
      if (byte_1ED52F818)
      {
        swift_unknownObjectRetain();
        outlined consume of GraphicsBlendMode(v19, 1);
        outlined consume of GraphicsBlendMode(v21, 1);
        if (v19 != v21)
        {
          goto LABEL_32;
        }

        goto LABEL_15;
      }

      swift_unknownObjectRetain();
    }

    else if ((byte_1ED52F818 & 1) == 0)
    {
      outlined consume of GraphicsBlendMode(v19, 0);
      outlined consume of GraphicsBlendMode(v21, 0);
      if (v19 != v21)
      {
        goto LABEL_32;
      }

      goto LABEL_15;
    }

    outlined copy of GraphicsBlendMode(v21, v22);
    outlined consume of GraphicsBlendMode(v19, v20);
    outlined consume of GraphicsBlendMode(v21, v22);
    outlined consume of GraphicsBlendMode(v19, v20);
    goto LABEL_32;
  }

LABEL_15:
  if ((*(a3 + 108) & 1) == 0)
  {
    v16 = *(a3 + 11);
    v17 = *(v16 + 16);
    if (!v17)
    {
      goto LABEL_40;
    }

    v18 = (v16 + 32);
    while (1)
    {
      memmove(&__dst, v18, 0x7CuLL);
      if (_s7SwiftUI14GraphicsFilterOWOg(&__dst) != 7)
      {
        break;
      }

      _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
      v18 += 128;
      if (!--v17)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_32:
  v23 = *(a1 + 8);
  if ((v23 & 0xC0000000) != 0x40000000)
  {
    goto LABEL_40;
  }

  v25 = *(a1 + 5);
  v24 = *(a1 + 6);
  v26 = *(a1 + 7);
  if (BYTE4(v24) != 10)
  {
    outlined copy of DisplayList.Effect(*(a1 + 5), *(a1 + 6), SBYTE4(v24));

    v28 = v25;
    v29 = v24;
    v30 = HIDWORD(v24);
LABEL_38:
    outlined consume of DisplayList.Effect(v28, v29, v30);
    goto LABEL_39;
  }

  memmove(&__dst, (v25 + 16), 0x7CuLL);
  if (_s7SwiftUI14GraphicsFilterOWOg(&__dst) != 15)
  {
    outlined copy of DisplayList.Item.Value(v25, v24, *&v26, v23);
    v28 = v25;
    v29 = v24;
    LOBYTE(v30) = 10;
    goto LABEL_38;
  }

  v27 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
  outlined copy of DisplayList.Item.Value(v25, v24, *&v26, v23);
  outlined consume of DisplayList.Effect(v25, v24, 10);
  *&t1.tx = *(v27 + 32);
  *v166 = *(v27 + 48);
  *&v166[16] = *(v27 + 64);
  *&v166[29] = *(v27 + 77);
  *&t1.a = *v27;
  *&t1.c = *(v27 + 16);
  t2.a = v26;
  LOWORD(t2.b) = v23;
  HIDWORD(t2.b) = HIDWORD(v23);
  DisplayList.Item.rewriteVibrancyFilterAsBackdrop(_:list:)(&t1, &t2);
LABEL_39:

LABEL_40:
  v31 = a1[1];
  v32 = a1[3];
  v187 = a1[2];
  v188[0] = v32;
  *(v188 + 12) = *(a1 + 60);
  v33 = *a1;
  v34 = *a1;
  v186[1] = a1[1];
  v186[0] = v33;
  v35 = a1[3];
  *&__dst.tx = v187;
  *v173 = v35;
  *&v173[12] = *(a1 + 60);
  *&__dst.a = v34;
  *&__dst.c = v31;
  outlined init with copy of DisplayList.Item(v186, &t1);
  v36 = DisplayList.Item.discardContainingClips(state:)(a3);
  v189 = __dst;
  v190[0] = *v173;
  *(v190 + 12) = *&v173[12];
  outlined destroy of DisplayList.Item(&v189);
  if (v36)
  {
    v37 = 4;
  }

  else
  {
    v37 = 0;
  }

  if (*(*(a3 + 10) + 16))
  {
    v38 = a1[1];
    v181[0] = *a1;
    v181[1] = v38;
    v39 = a1[3];
    v41 = *a1;
    v40 = a1[1];
    v182 = a1[2];
    v183[0] = v39;
    *(v183 + 12) = *(a1 + 60);
    v42 = a1[3];
    *&__dst.tx = a1[2];
    *v173 = v42;
    *&v173[12] = *(a1 + 60);
    *tx = v181[0];
    v43 = *&v182;
    *&__dst.a = v41;
    *&__dst.c = v40;
    outlined init with copy of DisplayList.Item(v181, &t1);
    v44 = specialized DisplayList.Item.canMergeWithClipMask(state:)();
    v184 = __dst;
    v185[0] = *v173;
    *(v185 + 12) = *&v173[12];
    outlined destroy of DisplayList.Item(&v184);
    if (!v44 || (v45 = a3[9], v46 = a3[7], v168 = a3[8], v169 = v45, v47 = a3[9], v170 = a3[10], v48 = a3[5], v49 = a3[3], *&v166[16] = a3[4], *&v166[32] = v48, v50 = a3[5], v51 = a3[7], *v167 = a3[6], *&v167[16] = v51, v52 = a3[1], *&t1.a = *a3, *&t1.c = v52, v53 = a3[3], v55 = *a3, v54 = a3[1], *&t1.tx = a3[2], *v166 = v53, v160 = v168, v161 = v47, v162 = a3[10], *&v157[16] = *&v166[16], v158 = v50, *v159 = *v167, *&v159[16] = v46, *&t2.a = v55, *&t2.c = v54, v171 = *(a3 + 22), v163 = *(a3 + 22), *&t2.tx = *&t1.tx, *v157 = v49, DisplayList.ViewUpdater.Model.State.clipRect()(&v164), v177 = v160, v178 = v161, v179 = v162, v180 = v163, *&v173[16] = *&v157[16], v174 = v158, v175 = *v159, v176 = *&v159[16], __dst = t2, *v173 = *v157, outlined init with copy of DisplayList.ViewUpdater.Model.State(&t1, &v154), outlined destroy of DisplayList.ViewUpdater.Model.State(&__dst), v164.value.style != SwiftUI_RoundedCornerStyle_unknownDefault) && (v56 = a1[1], *&v154.a = *a1, *&v154.c = v56, v57 = a1[3], v59 = *a1, v58 = a1[1], *&v154.tx = a1[2], v155[0] = v57, *(v155 + 12) = *(a1 + 60), v60 = a1[3], *&v152.tx = a1[2], v153[0] = v60, *(v153 + 12) = *(a1 + 60), *tx = *&v154.a, v43 = v154.tx, *&v152.a = v59, *&v152.c = v58, rect = v164.value.rect, cornerSize = v164.value.cornerSize, v151 = v164.value.style & 1, outlined init with copy of DisplayList.Item(&v154, v148), v61 = DisplayList.Item.canMergeWithClipRect(_:state:)(&rect), t2 = v152, *v157 = v153[0], *&v157[12] = *(v153 + 12), outlined destroy of DisplayList.Item(&t2), (v61 & 1) == 0))
    {
      v37 = v37 | 2;
    }

    v62 = *tx;
  }

  else
  {
    v62 = v186[0];
    v43 = *&v187;
  }

  b = *(&v62 + 1);
  txa = *&v62;
  if (v37 & 2) == 0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*(a3 + 2), xmmword_18DDAA020), vceqq_f64(*(a3 + 3), xmmword_18DDAB500))))))
  {
    v64 = a1[1];
    *&t1.a = *a1;
    *&t1.c = v64;
    v65 = a1[3];
    v67 = *a1;
    v66 = a1[1];
    *&t1.tx = a1[2];
    *v166 = v65;
    *&v166[12] = *(a1 + 60);
    v68 = a1[3];
    *&t2.tx = a1[2];
    *v157 = v68;
    *&v157[12] = *(a1 + 60);
    txa = t1.a;
    b = t1.b;
    v43 = t1.tx;
    *&t2.a = v67;
    *&t2.c = v66;
    outlined init with copy of DisplayList.Item(&t1, &v154);
    v69 = DisplayList.Item.canMergeWithTransform()();
    __dst = t2;
    *v173 = *v157;
    *&v173[12] = *&v157[12];
    outlined destroy of DisplayList.Item(&__dst);
    if (!v69)
    {
      v37 = v37 | 2;
    }
  }

  if ((v37 & 2) == 0 && (*(a3 + 12) || *(*(a3 + 11) + 16)))
  {
    v70 = *a1;
    b = *(a1 + 1);
    v71 = a1[2];
    *&__dst.c = a1[1];
    *&__dst.tx = v71;
    *v173 = a1[3];
    *&v173[12] = *(a1 + 60);
    txa = v70;
    __dst.a = v70;
    __dst.b = b;
    if (DisplayList.Item.canInheritShadowOrFilters.getter())
    {
      v37 = v37;
    }

    else
    {
      v37 = v37 | 2;
    }
  }

  if ((v37 & 2) != 0)
  {
    goto LABEL_71;
  }

  if ((*(a3 + 104) & 2) == 0)
  {
    goto LABEL_72;
  }

  v72 = *(a1 + 16) >> 30;
  if (v72 <= 1)
  {
    v73 = *(a1 + 5);
    if (v72)
    {
      v74 = *(a1 + 12);
      v75 = *(a1 + 13);
      outlined copy of DisplayList.Effect(*(a1 + 5), v74, v75);
      if (v75 != 3)
      {
        outlined consume of DisplayList.Effect(v73, v74, v75);
        goto LABEL_72;
      }

      outlined consume of DisplayList.Effect(v73, v74, 3);
    }

    else if (v73 >> 61 != 4)
    {
      goto LABEL_72;
    }

    v37 = v37 | 2;
LABEL_71:
    DisplayList.ViewUpdater.Model.State.reset()();
    goto LABEL_72;
  }

  if (v72 != 3)
  {
    goto LABEL_159;
  }

LABEL_72:
  v76 = a3[3];
  *&__dst.a = a3[2];
  *&__dst.c = v76;
  *&__dst.tx = a3[4];
  CGAffineTransformTranslate(&t1, &__dst, txa, b);
  a = t1.a;
  v78 = t1.b;
  c = t1.c;
  d = t1.d;
  v81 = t1.tx;
  ty = t1.ty;
  *(a3 + 4) = *&t1.a;
  *(a3 + 5) = v78;
  *(a3 + 6) = c;
  *(a3 + 7) = d;
  *(a3 + 8) = v81;
  *(a3 + 9) = ty;
  if (*&v43 <= *(a3 + 18))
  {
    v83 = *(a3 + 18);
  }

  else
  {
    v83 = v43;
  }

  *(a3 + 18) = v83;
  v84 = *(a1 + 16) >> 30;
  if (v84 > 1)
  {
    if (v84 == 3)
    {
      return v37 & 0xFFFFFFFD;
    }

LABEL_159:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    JUMPOUT(0x18D149550);
  }

  v85 = *(a1 + 5);
  if (!v84)
  {
    if (v85 >> 60 == 2)
    {
      if (!*(*((v85 & 0xFFFFFFFFFFFFFFFLL) + 0x28) + 16))
      {
        return v37 | 1;
      }
    }

    else if (v85 >> 60 || !*(*(v85 + 40) + 16))
    {
      return v37 | 1;
    }

    specialized Array.append<A>(contentsOf:)(v92);
    v93 = *(a3 + 20);
    if (*&v43 > *&v93)
    {
      v93 = v43;
    }

    *(a3 + 20) = v93;
    return v37 | 1;
  }

  v86 = *(a1 + 6);
  switch(BYTE4(v86))
  {
    case 1:
      outlined copy of DisplayList.Effect(v85, v86, 1);
      outlined consume of DisplayList.Effect(v85, v86, 1);
      return v37;
    case 2:
      outlined copy of DisplayList.Effect(v85, v86, 2);
      *(a3 + 26) |= v85;
      v102 = *(a3 + 22);
      if (*&v43 > *&v102)
      {
        v102 = v43;
      }

      *(a3 + 22) = v102;
      return v37;
    case 3:
      outlined copy of DisplayList.Effect(v85, v86, 3);
      v103 = v85;
      v104 = v86;
      v105 = 3;
      goto LABEL_124;
    case 4:
      outlined copy of DisplayList.Effect(v85, v86, 4);
      *(a3 + 2) = *(a3 + 2) * *&v85;
      v95 = *(a3 + 16);
      if (*&v43 > *&v95)
      {
        v95 = v43;
      }

      *(a3 + 16) = v95;
      return v37;
    case 5:
      outlined copy of DisplayList.Effect(v85, v86, 5);
      outlined consume of GraphicsBlendMode(*(a3 + 2), *(a3 + 24));
      *(a3 + 2) = v85;
      *(a3 + 24) = v86 & 1;
      v106 = *(a3 + 17);
      if (*&v43 > *&v106)
      {
        v106 = v43;
      }

      *(a3 + 17) = v106;
      return v37;
    case 6:
      outlined copy of DisplayList.Effect(v85, v86, 6);
      v107 = *(v85 + 32);
      *&__dst.a = *(v85 + 16);
      *&__dst.c = v107;
      LOBYTE(__dst.tx) = *(v85 + 48);
      if (*(v85 + 50))
      {
        v108 = 256;
      }

      else
      {
        v108 = 0;
      }

      DisplayList.ViewUpdater.Model.State.addClip(_:style:)(&__dst, v108 | *(v85 + 49));
      outlined consume of DisplayList.Effect(v85, v86, 6);
      v109 = *(a3 + 19);
      if (*&v43 > *&v109)
      {
        v109 = v43;
      }

      *(a3 + 19) = v109;
      return v37;
    case 7:
      outlined copy of DisplayList.Effect(v85, v86, 7);
      outlined consume of DisplayList.Effect(v85, v86, 7);
      v37 = v37 | 1;
      *(a3 + 108) = 1;
      return v37;
    case 8:
      outlined copy of DisplayList.Effect(v85, v86, 8);
      v103 = v85;
      v104 = v86;
      v105 = 8;
LABEL_124:
      outlined consume of DisplayList.Effect(v103, v104, v105);
      return v37 | 1;
    case 9:
      outlined copy of DisplayList.Effect(v85, v86, 9);
      v97 = *(v85 + 16);
      v96 = *(v85 + 32);
      v98 = *(v85 + 48);
      v99 = *(v85 + 24);
      if (*(v85 + 88) > 1u)
      {
        if (*(v85 + 88) == 2)
        {
          *anglea = *(v85 + 16);
          txc = *(v85 + 32);
          CGAffineTransformMakeTranslation(&__dst, *(v85 + 24), *&v96);
          CGAffineTransformRotate(&t1, &__dst, anglea[0]);
          __dst = t1;
          CGAffineTransformTranslate(&t1, &__dst, -v99, -txc);
          *&v97 = t1.a;
          v99 = t1.b;
          *&v96 = t1.c;
          v100 = t1.d;
          *&v98 = t1.tx;
          v101 = t1.ty;
          goto LABEL_136;
        }

        v128 = *(v85 + 64);
        *&v173[16] = *(v85 + 80);
        *&__dst.a = v97;
        *&__dst.c = v96;
        *&__dst.tx = v98;
        *v173 = v128;
        _Rotation3DEffect.Data.transform.getter(&t2);
        v97 = *&t2.a;
        v96 = *&t2.c;
        v98 = *&t2.tx;
        *&v184.a = *v157;
        v127 = *&v157[16];
      }

      else
      {
        if (!*(v85 + 88))
        {
          v100 = *(v85 + 40);
          v101 = *(v85 + 56);
LABEL_136:
          *&__dst.a = v97;
          __dst.b = v99;
          *&__dst.c = v96;
          __dst.d = v100;
          *&__dst.tx = v98;
          __dst.ty = v101;
          *&t1.a = v97;
          t1.b = v99;
          *&t1.c = v96;
          t1.d = v100;
          *&t1.tx = v98;
          t1.ty = v101;
          t2.a = a;
          t2.b = v78;
          t2.c = c;
          t2.d = d;
          t2.tx = v81;
          t2.ty = ty;
          CGAffineTransformConcat(&v154, &t1, &t2);
          v119 = *&v154.c;
          v120 = *&v154.tx;
          a3[2] = *&v154.a;
          a3[3] = v119;
          a3[4] = v120;
          *(a3 + 18) = v83;
          DisplayList.ViewUpdater.Model.State.adjust(for:)(&__dst);
          outlined consume of DisplayList.Effect(v85, v86, 9);
          return v37;
        }

        *&v184.a = *(v85 + 64);
        v127 = *(v85 + 80);
      }

      v184.c = v127;
      *&t1.a = v97;
      *&t1.c = v96;
      *&t1.tx = v98;
      *v166 = *&v184.a;
      *&v166[16] = v127;
      *&__dst.a = 0x3FF0000000000000uLL;
      *&__dst.c = 0uLL;
      *&__dst.tx = 0x3FF0000000000000uLL;
      *v173 = 0uLL;
      *&v173[16] = 0x3FF0000000000000;
      v129 = specialized static ProjectionTransform.== infix(_:_:)(&t1.a, &__dst.a);
      outlined consume of DisplayList.Effect(v85, v86, 9);
      if (!v129 && (v37 & 1) == 0)
      {
        return v37 | 1;
      }

      return v37;
    case 0xA:
      outlined copy of DisplayList.Effect(v85, v86, 10);
      v110 = *(v85 + 96);
      *&v166[16] = *(v85 + 80);
      *&v166[32] = v110;
      *v167 = *(v85 + 112);
      *&v167[12] = *(v85 + 124);
      v111 = *(v85 + 32);
      *&t1.a = *(v85 + 16);
      *&t1.c = v111;
      v112 = *(v85 + 64);
      *&t1.tx = *(v85 + 48);
      *v166 = v112;
      memmove(&__dst, (v85 + 16), 0x7CuLL);
      v113 = _s7SwiftUI14GraphicsFilterOWOg(&__dst);
      if (v113 == 4)
      {
        v121 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
        type metadata accessor for MutableBox<ResolvedShadowStyle>(0, &lazy cache variable for type metadata for MutableBox<ResolvedShadowStyle>, &type metadata for ResolvedShadowStyle, type metadata accessor for MutableBox);
        v122 = swift_allocObject();
        v124 = *(v121 + 16);
        v123 = *(v121 + 32);
        v125 = *v121;
        *(v122 + 61) = *(v121 + 45);
        *(v122 + 16) = v125;
        *(v122 + 32) = v124;
        *(v122 + 48) = v123;

        outlined consume of DisplayList.Effect(v85, v86, 10);
        *(a3 + 12) = v122;
        v126 = *(a3 + 21);
        if (*&v43 > *&v126)
        {
          v126 = v43;
        }

        *(a3 + 21) = v126;
      }

      else
      {
        if (v113 == 18)
        {
          _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
LABEL_144:
          outlined consume of DisplayList.Effect(v85, v86, 10);
          return v37;
        }

        *&v157[16] = *&v166[16];
        v158 = *&v166[32];
        *v159 = *v167;
        *&v159[12] = *&v167[12];
        t2 = t1;
        *v157 = *v166;
        outlined init with copy of GraphicsFilter(&t1, &v154);
        if (GraphicsFilter.isIdentity.getter())
        {
          outlined destroy of GraphicsFilter(&t1);
          goto LABEL_144;
        }

        v131 = *(a3 + 11);
        outlined init with copy of GraphicsFilter(&t1, &t2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v131 + 2) + 1, 1, v131);
        }

        v133 = *(v131 + 2);
        v132 = *(v131 + 3);
        if (v133 >= v132 >> 1)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v131);
        }

        outlined destroy of GraphicsFilter(&t1);
        *(v131 + 2) = v133 + 1;
        v134 = &v131[128 * v133];
        v135 = *v166;
        v136 = *&t1.a;
        v137 = *&t1.c;
        *(v134 + 4) = *&t1.tx;
        *(v134 + 5) = v135;
        *(v134 + 2) = v136;
        *(v134 + 3) = v137;
        v139 = *&v166[32];
        v138 = *v167;
        v140 = *&v166[16];
        *(v134 + 140) = *&v167[12];
        *(v134 + 7) = v139;
        *(v134 + 8) = v138;
        *(v134 + 6) = v140;
        outlined consume of DisplayList.Effect(v85, v86, 10);
        *(a3 + 11) = v131;
        v141 = *(a3 + 20);
        if (*&v43 > *&v141)
        {
          v141 = v43;
        }

        *(a3 + 20) = v141;
      }

      break;
    case 0xB:
    case 0xD:
      goto LABEL_159;
    case 0xC:
      outlined copy of DisplayList.Effect(v85, v86, 12);
      outlined consume of DisplayList.Effect(v85, v86, 12);
      return v37;
    case 0xE:
      outlined copy of DisplayList.Effect(v85, v86, 14);
      outlined consume of DisplayList.Effect(v85, v86, 14);
      return v37;
    case 0xF:
      outlined copy of DisplayList.Effect(v85, v86, 15);
      outlined consume of DisplayList.Effect(v85, v86, 15);
      return v37;
    case 0x10:
      outlined copy of DisplayList.Effect(v85, v86, 16);
      *txb = *(v85 + 16);
      v114 = *(v85 + 32);
      v115 = *(a3 + 15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v115 + 2) + 1, 1, v115);
      }

      v117 = *(v115 + 2);
      v116 = *(v115 + 3);
      if (v117 >= v116 >> 1)
      {
        v115 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1, v115);
      }

      *(v115 + 2) = v117 + 1;
      v118 = &v115[20 * v117];
      *(v118 + 2) = *txb;
      *(v118 + 12) = v114;
      outlined consume of DisplayList.Effect(v85, v86, 16);
      *(a3 + 15) = v115;
      return v37;
    case 0x11:
      outlined copy of DisplayList.Effect(v85, v86, 17);
      outlined consume of DisplayList.Effect(v85, v86, 17);
      return v37;
    case 0x12:
      outlined copy of DisplayList.Effect(v85, v86, 18);
      outlined consume of DisplayList.Effect(v85, v86, 18);
      return v37;
    case 0x13:
      outlined copy of DisplayList.Effect(v85, v86, 19);
      outlined consume of DisplayList.Effect(v85, v86, 19);
      return v37;
    case 0x14:
      if (v85 | v86)
      {
        outlined copy of DisplayList.Effect(v85, v86, 20);
        v37 = v37 | 1;
        if (v85 ^ 1 | v86)
        {
          *(a3 + 110) = 1;
        }
      }

      else
      {
        outlined copy of DisplayList.Effect(v85, v86, 20);
      }

      return v37;
    default:
      outlined copy of DisplayList.Effect(v85, v86, 0);
      if (*(v85 + 16))
      {
        v87 = *(v85 + 32);
        if (v87)
        {
          v88 = *(v85 + 24);
          v89 = swift_allocObject();
          *(v89 + 16) = v88;
          *(v89 + 24) = v87;
          v90 = v89 | 0x8000000000000000;
          v91 = *(a3 + 14);

          outlined consume of BackdropGroupID?(v91);
          outlined consume of DisplayList.Effect(v85, v86, 0);
          *(a3 + 14) = v90;
        }

        else
        {
          v130 = swift_allocObject();
          *(v130 + 16) = *angle;
          outlined consume of BackdropGroupID?(*(a3 + 14));
          outlined consume of DisplayList.Effect(v85, v86, 0);
          *(a3 + 14) = v130;
        }
      }

      else
      {
        outlined consume of BackdropGroupID?(*(a3 + 14));
        outlined consume of DisplayList.Effect(v85, v86, 0);
        *(a3 + 14) = 0xF000000000000007;
      }

      return v37;
  }

  return v37;
}

uint64_t sub_18D1495B4()
{

  return swift_deallocObject();
}

uint64_t DisplayList.Item.discardContainingClips(state:)(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(v2 + 2);
  if (!v3)
  {
    return 1;
  }

  v5 = *v1;
  v178 = *(v1 + 16);
  v179 = *(v1 + 8);
  r2 = *(v1 + 24);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v9 = *(v1 + 56);
  v8 = *(v1 + 64);
  v10 = *(v2 + 2);
  v11 = *(v2 + 5);
  v192 = *(v2 + 4);
  v193 = v11;
  v194[0] = *(v2 + 6);
  *(v194 + 11) = *(v2 + 107);
  v12 = *(v2 + 3);
  v191.origin = v10;
  v191.size = v12;
  if (v192 <= 2u)
  {
    if (v192 < 2u)
    {
      IsNull = CGRectIsNull(v191);
      goto LABEL_18;
    }

    if (!CGRectIsNull(*(*&v10.x + 16)))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v192 != 5)
  {
    if (v192 == 6)
    {
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v191);
      return 0;
    }

    goto LABEL_180;
  }

  if (!*(*&v10.x + 16))
  {
    if (*(*&v10.x + 24))
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (*(*&v10.x + 16) != 1)
  {
    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v191, &__dst);
    if (one-time initialization token for bufferCallbacks != -1)
    {
      swift_once();
    }

    goto LABEL_17;
  }

LABEL_8:
  outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v191, &__dst);
LABEL_17:
  IsNull = RBPathIsEmpty();
LABEL_18:
  v14 = IsNull;
  outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v191);
  if (v14)
  {
    return 0;
  }

LABEL_20:
  if ((v8 & 0xC0000000) != 0)
  {
    return 1;
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  if ((v16 != 0.0 || v17 != 0.0) && (*(a1 + 32) != 0.0 || v18 != 0.0))
  {
    return 1;
  }

  __dst.a = *(a1 + 32);
  __dst.b = v16;
  __dst.c = v17;
  __dst.d = v18;
  *&__dst.tx = *(a1 + 64);
  CGAffineTransformInvert(&v185, &__dst);
  b = v185.b;
  a = v185.a;
  d = v185.d;
  c = v185.c;
  ty = v185.ty;
  tx = v185.tx;
  outlined copy of DisplayList.Content.Value(v7);
  v169 = v8;
  v168 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_176:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v19 = 0;
  *(a1 + 80) = v2;
  v20 = v7;
  v7 >>= 60;
  v167 = v20;
  v160 = v20 & 0xFFFFFFFFFFFFFFFLL;
  v149 = *(MEMORY[0x1E695F050] + 8);
  v150 = *MEMORY[0x1E695F050];
  v147 = *(MEMORY[0x1E695F050] + 24);
  v148 = *(MEMORY[0x1E695F050] + 16);
  v21 = 0.0;
  v22 = 1;
  v170 = v5;
  while (1)
  {
    while (1)
    {
      if (v19 < 0)
      {
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      if (v19 >= *(v2 + 2))
      {
        goto LABEL_170;
      }

      v23 = &v2[96 * v19 + 32];
      if (*(v23 + 88) == 1)
      {
        break;
      }

LABEL_28:
      if (++v19 >= v3)
      {
        goto LABEL_164;
      }
    }

    v24 = *v23;
    v25 = *(v23 + 32);
    if (v25 == 2)
    {
      v27 = *(v24 + 32);
      v28 = *(v24 + 40);
      v29 = *(v24 + 48);
      v180 = *(v24 + 56);
      v24 = *(v24 + 16);
    }

    else
    {
      v26 = *(v23 + 16);
      if (v25 == 1)
      {
        v27 = *(v23 + 16);
        v28 = *(v23 + 24);
        if (vabdd_f64(v26, v28) >= 0.001)
        {
          goto LABEL_28;
        }

        v29 = v26 * 0.5;
        v180 = v26 * 0.5;
      }

      else
      {
        if (*(v23 + 32))
        {
          goto LABEL_28;
        }

        v27 = *(v23 + 16);
        v28 = *(v23 + 24);
        v29 = 0.0;
        v180 = 0.0;
      }
    }

    v30 = *(&v24 + 1);
    __dst.a = a;
    __dst.b = b;
    __dst.c = c;
    __dst.d = d;
    __dst.tx = tx;
    __dst.ty = ty;
    v196 = CGRectApplyAffineTransform(*&v24, &__dst);
    x = v196.origin.x;
    y = v196.origin.y;
    width = v196.size.width;
    height = v196.size.height;
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v180 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      __dst.a = a;
      __dst.b = b;
      __dst.c = c;
      __dst.d = d;
      __dst.tx = tx;
      __dst.ty = ty;
      v195.width = v29;
      v195.height = v180;
      v35 = CGSizeApplyAffineTransform(v195, &__dst);
      v29 = copysign(v35.width, v29);
      v5 = v170;
      v180 = copysign(v35.height, v180);
    }

    if (v7 > 0xC)
    {
LABEL_164:
      outlined consume of DisplayList.Item.Value(v167, v168, v9, v169);
      return 1;
    }

    if (((1 << v7) & 0x1C4F) == 0)
    {
      break;
    }

    v197.origin.x = x;
    v197.origin.y = y;
    v197.size.width = width;
    v197.size.height = height;
    v219.origin.x = v5;
    v219.size.width = v178;
    v219.origin.y = v179;
    v219.size.height = r2;
    v198 = CGRectIntersection(v197, v219);
    if (CGRectIsEmpty(v198))
    {
      v141 = v167;
      v142 = v168;
      v143 = v9;
      v144 = v169;
      goto LABEL_167;
    }

    if (v22)
    {
      v36 = *(a1 + 88);
      v37 = *(a1 + 96);
      if (!v37)
      {
        v21 = 0.0;
        v40 = *(v36 + 16);
        if (!v40)
        {
          goto LABEL_57;
        }

LABEL_52:
        v41 = (v36 + 32);
        do
        {
          memmove(&__dst, v41, 0x7CuLL);
          if (!_s7SwiftUI14GraphicsFilterOWOg(&__dst))
          {
            v42 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
            if ((*(v42 + 8) & 1) == 0)
            {
              v21 = v21 + *v42 * 2.8;
            }
          }

          v41 += 128;
          --v40;
        }

        while (v40);
        goto LABEL_57;
      }

      swift_beginAccess();
      v38 = fabs(v37[6]);
      v39 = fabs(v37[7]);
      if (v38 <= v39)
      {
        v38 = v39;
      }

      v21 = v37[5] * 2.8 + 0.0 + v38;
      v40 = *(v36 + 16);
      if (v40)
      {
        goto LABEL_52;
      }
    }

LABEL_57:
    if (v21 != 0.0)
    {
      v199.origin.x = x;
      v199.origin.y = y;
      v199.size.width = width;
      v199.size.height = height;
      v200 = CGRectInset(v199, v21, v21);
      x = v200.origin.x;
      y = v200.origin.y;
      width = v200.size.width;
      height = v200.size.height;
      if (CGRectIsEmpty(v200))
      {
        goto LABEL_27;
      }

      if (v29 - v21 < 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v29 - v21;
      }

      v43 = v180 - v21;
      if (v180 - v21 < 0.0)
      {
        v43 = 0.0;
      }

      v180 = v43;
    }

    v201.origin.x = x;
    v201.origin.y = y;
    v201.size.width = width;
    v201.size.height = height;
    v202 = CGRectInset(v201, -0.001, -0.001);
    v220.origin.x = v5;
    v220.size.width = v178;
    v220.origin.y = v179;
    v220.size.height = r2;
    if (!CGRectContainsRect(v202, v220))
    {
LABEL_27:
      v22 = 0;
      goto LABEL_28;
    }

    if (v29 > 0.0 || v180 > 0.0)
    {
      v203.origin.x = x;
      v203.origin.y = y;
      v203.size.width = width;
      v203.size.height = height;
      v44 = fabs(CGRectGetWidth(v203)) * 0.5;
      v204.origin.x = x;
      v204.origin.y = y;
      v204.size.width = width;
      v204.size.height = height;
      v45 = fabs(CGRectGetHeight(v204)) * 0.5;
      if (v45 >= v44)
      {
        v45 = v44;
      }

      v5 = v170;
      if (v45 >= v29)
      {
        v46 = v29;
      }

      else
      {
        v46 = v45;
      }

      if (v45 >= v180)
      {
        v45 = v180;
      }

      v47 = v46 * 0.292893219;
      v48 = v45 * 0.292893219;
      v205.origin.x = x;
      v205.origin.y = y;
      v205.size.width = width;
      v205.size.height = height;
      v206 = CGRectInset(v205, v47, v48);
      v221.origin.x = v170;
      v221.size.width = v178;
      v221.origin.y = v179;
      v221.size.height = r2;
      if (!CGRectContainsRect(v206, v221))
      {
        v22 = 0;
        goto LABEL_28;
      }
    }

LABEL_152:
    v103 = v3 - 1;
    if (v19 != v3 - 1)
    {
      v104 = *(v2 + 2);
      if (v19 >= v104)
      {
        goto LABEL_172;
      }

      v105 = *(v23 + 16);
      *&v185.a = *v23;
      *&v185.c = v105;
      v106 = *(v23 + 32);
      v107 = *(v23 + 48);
      v108 = *(v23 + 64);
      *(v187 + 11) = *(v23 + 75);
      v186 = v107;
      v187[0] = v108;
      *&v185.tx = v106;
      if (v103 >= v104)
      {
        goto LABEL_173;
      }

      v109 = 96 * v103;
      v110 = &v2[96 * v103 + 32];
      v111 = *(v110 + 1);
      *&__dst.a = *v110;
      *&__dst.c = v111;
      v112 = *(v110 + 2);
      v113 = *(v110 + 3);
      v114 = *(v110 + 4);
      *(v190 + 11) = *(v110 + 75);
      v189 = v113;
      v190[0] = v114;
      *&__dst.tx = v112;
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v185, v183);
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&__dst, v183);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      }

      if (v19 >= *(v2 + 2))
      {
        goto LABEL_174;
      }

      v115 = v2 + 32;
      v116 = &v2[96 * v19 + 32];
      v117 = *(v116 + 1);
      v181[0] = *v116;
      v181[1] = v117;
      v118 = *(v116 + 2);
      v119 = *(v116 + 3);
      v120 = *(v116 + 4);
      *(v182 + 11) = *(v116 + 75);
      v181[3] = v119;
      v182[0] = v120;
      v181[2] = v118;
      v122 = v189;
      v121 = v190[0];
      v123 = *&__dst.tx;
      *(v116 + 75) = *(v190 + 11);
      *(v116 + 3) = v122;
      *(v116 + 4) = v121;
      *(v116 + 2) = v123;
      v124 = *&__dst.c;
      *v116 = *&__dst.a;
      *(v116 + 1) = v124;
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(v181);
      if (v103 >= *(v2 + 2))
      {
        goto LABEL_175;
      }

      v125 = &v115[v109];
      v126 = *&v115[v109 + 16];
      v183[0] = *&v115[96 * v103];
      v183[1] = v126;
      v127 = *&v115[v109 + 32];
      v128 = *&v115[v109 + 48];
      v129 = *&v115[v109 + 64];
      *(v184 + 11) = *&v115[v109 + 75];
      v183[3] = v128;
      v184[0] = v129;
      v183[2] = v127;
      v131 = v186;
      v130 = v187[0];
      v132 = *&v185.tx;
      *(v125 + 75) = *(v187 + 11);
      *(v125 + 3) = v131;
      *(v125 + 4) = v130;
      *(v125 + 2) = v132;
      v133 = *&v185.c;
      *v125 = *&v185.a;
      *(v125 + 1) = v133;
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(v183);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v134 = *(v2 + 2);
    if (v103 >= v134)
    {
      goto LABEL_171;
    }

    v135 = v134 - 1;
    v136 = &v2[96 * v103];
    v137 = *(v136 + 3);
    *&__dst.a = *(v136 + 2);
    *&__dst.c = v137;
    v138 = *(v136 + 4);
    v139 = *(v136 + 5);
    v140 = *(v136 + 6);
    *(v190 + 11) = *(v136 + 107);
    v189 = v139;
    v190[0] = v140;
    *&__dst.tx = v138;
    memmove(v136 + 32, v136 + 128, 96 * (v134 - v3));
    *(v2 + 2) = v135;
    outlined destroy of DisplayList.ViewUpdater.Model.Clip(&__dst);
    v22 = 0;
    *(a1 + 80) = v2;
    --v3;
    if (v19 >= v103)
    {
      goto LABEL_164;
    }
  }

  if (v7 != 4)
  {
    goto LABEL_164;
  }

  rect2 = v7;
  v50 = *(v160 + 16);
  v49 = *(v160 + 24);
  v51 = *(v160 + 32);
  v52 = *(v160 + 40);
  v53 = *(v160 + 48);
  v165 = v53;
  v161 = v52;
  v162 = v49;
  v163 = v51;
  v159 = v50;
  if (v53 > 2)
  {
    if (v53 == 5)
    {
      if (*(v50 + 16))
      {
        if (*(v50 + 16) == 1)
        {
          outlined copy of Path.Storage(v50, v49, v51, v52, 5u);
          outlined copy of DisplayList.Item.Value(v167, v168, v9, v169);
          outlined copy of Path.Storage(v50, v162, v163, v52, 5u);
          RBPathGetBoundingRect();
        }

        else
        {
          outlined copy of Path.Storage(v50, v49, v51, v52, 5u);
          outlined copy of DisplayList.Item.Value(v167, v168, v9, v169);
          v68 = outlined copy of Path.Storage(v50, v162, v163, v52, 5u);
          v58 = MEMORY[0x193AC3640](v50 + 24, v68);
        }

        v62 = v58;
        v152 = v60;
        v155 = v59;
        v146 = v61;
        v67 = v50;
      }

      else
      {
        v66 = *(v50 + 24);
        if (!v66)
        {
          goto LABEL_178;
        }

        path = v66;
        outlined copy of Path.Storage(v50, v162, v163, v52, 5u);
        outlined copy of DisplayList.Item.Value(v167, v168, v9, v169);
        outlined copy of Path.Storage(v50, v162, v163, v52, 5u);
        PathBoundingBox = CGPathGetPathBoundingBox(path);
        v62 = PathBoundingBox.origin.x;
        v152 = PathBoundingBox.size.width;
        v155 = PathBoundingBox.origin.y;
        v146 = PathBoundingBox.size.height;

        v67 = v50;
      }

      outlined consume of Path.Storage(v67, v162, v163, v52, 5u);
      goto LABEL_94;
    }

    if (v53 != 6)
    {
      goto LABEL_180;
    }

    outlined copy of DisplayList.Item.Value(v167, v168, v9, v169);
    v54 = v149;
    v56 = v150;
    v57 = v147;
    v55 = v148;
  }

  else
  {
    if (v53 < 2)
    {
      v151 = *(v160 + 32);
      v154 = *(v160 + 24);
      outlined copy of DisplayList.Item.Value(v167, v168, v9, v169);
      v55 = v151;
      v54 = v154;
      v56 = *&v50;
      v57 = *&v52;
      goto LABEL_95;
    }

    v62 = *(v50 + 16);
    v152 = *(v50 + 32);
    v155 = *(v50 + 24);
    v146 = *(v50 + 40);
    v63 = *(v160 + 32);
    v64 = *(v160 + 24);
    outlined copy of DisplayList.Item.Value(v167, v168, v9, v169);
    v65 = v63;
    v52 = v161;
    outlined copy of Path.Storage(v159, v64, v65, v161, 2u);
LABEL_94:
    v55 = v152;
    v54 = v155;
    v56 = v62;
    v57 = v146;
  }

LABEL_95:
  v7 = rect2;
  v69 = v5 + v56;
  v70 = v179 + v54;
  v208.origin.x = x;
  v208.origin.y = y;
  v208.size.width = width;
  v208.size.height = height;
  v209 = CGRectIntersection(v208, *(&v55 - 2));
  if (!CGRectIsEmpty(v209))
  {
    if (v22)
    {
      v72 = *(a1 + 88);
      v71 = *(a1 + 96);
      if (v71)
      {
        swift_beginAccess();
        v73 = fabs(v71[6]);
        v74 = fabs(v71[7]);
        if (v73 <= v74)
        {
          v73 = v74;
        }

        v21 = v71[5] * 2.8 + 0.0 + v73;
      }

      else
      {
        v21 = 0.0;
      }

      v75 = *(v72 + 16);
      if (v75)
      {
        v76 = (v72 + 32);
        do
        {
          memmove(&__dst, v76, 0x7CuLL);
          if (!_s7SwiftUI14GraphicsFilterOWOg(&__dst))
          {
            v77 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
            if ((*(v77 + 8) & 1) == 0)
            {
              v21 = v21 + *v77 * 2.8;
            }
          }

          v76 += 128;
          --v75;
        }

        while (v75);
      }
    }

    v78 = v165;
    if (v21 == 0.0)
    {
      v79 = v161;
      if (v165 <= 2)
      {
        goto LABEL_110;
      }

LABEL_122:
      if (v78 == 5)
      {
        if (*(v159 + 16))
        {
          v153 = 0.0;
          v84 = v79;
          if (*(v159 + 16) == 1)
          {
            RBPathGetBoundingRect();
          }

          else
          {
            v85 = MEMORY[0x193AC3640](v159 + 24);
          }

          v91 = v85;
          v81 = v86;
          rect2a = v87;
          v166 = v88;
          v92 = v159;
          v93 = v162;
          v94 = v163;
          v95 = v84;
        }

        else
        {
          v153 = 0.0;
          v89 = *(v159 + 24);
          if (!v89)
          {
            goto LABEL_179;
          }

          v90 = v89;
          v212 = CGPathGetPathBoundingBox(v90);
          v91 = v212.origin.x;
          v81 = v212.origin.y;
          rect2a = v212.size.width;
          v166 = v212.size.height;

          v92 = v159;
          v93 = v162;
          v94 = v163;
          v95 = v161;
        }

        outlined consume of Path.Storage(v92, v93, v94, v95, 5u);
        v80 = v91;
LABEL_136:
        v156 = 0.0;
      }

      else
      {
        v153 = 0.0;
        v156 = 0.0;
        v81 = v149;
        v80 = v150;
        rect2a = v148;
        v166 = v147;
        if (v78 != 6)
        {
          outlined consume of Path.Storage(v159, v162, v163, v79, v78);
          goto LABEL_180;
        }
      }

      goto LABEL_137;
    }

    v210.origin.x = x;
    v210.origin.y = y;
    v210.size.width = width;
    v210.size.height = height;
    v211 = CGRectInset(v210, v21, v21);
    x = v211.origin.x;
    y = v211.origin.y;
    width = v211.size.width;
    height = v211.size.height;
    IsEmpty = CGRectIsEmpty(v211);
    v79 = v161;
    if (IsEmpty)
    {
      outlined consume of Path.Storage(v159, v162, v163, v161, v165);
      goto LABEL_141;
    }

    if (v29 - v21 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v29 - v21;
    }

    v83 = v180 - v21;
    if (v180 - v21 < 0.0)
    {
      v83 = 0.0;
    }

    v180 = v83;
    v78 = v165;
    if (v165 > 2)
    {
      goto LABEL_122;
    }

LABEL_110:
    if (!v78)
    {
      v153 = 0.0;
      v80 = *&v159;
      v81 = *&v162;
      rect2a = *&v163;
      v166 = *&v79;
      goto LABEL_136;
    }

    if (v78 == 1)
    {
      v80 = *&v159;
      v81 = *&v162;
      rect2a = *&v163;
      v166 = *&v79;
      if (vabdd_f64(*&v163, *&v79) >= 0.001)
      {
        v153 = 0.0;
        v156 = 0.0;
      }

      else
      {
        v153 = *&v163 * 0.5;
        v156 = *&v163 * 0.5;
      }
    }

    else
    {
      outlined consume of Path.Storage(v159, v162, v163, v79, 2u);
      v80 = *(v159 + 16);
      v81 = *(v159 + 24);
      v166 = *(v159 + 40);
      v156 = *(v159 + 48);
      rect2a = *(v159 + 32);
      v153 = *(v159 + 56);
    }

LABEL_137:
    v96 = v170 + v80;
    v213.origin.x = x;
    v213.origin.y = y;
    v213.size.width = width;
    v213.size.height = height;
    v214 = CGRectInset(v213, -0.001, -0.001);
    v164 = v96;
    v222.origin.x = v96;
    v222.origin.y = v179 + v81;
    v222.size.width = rect2a;
    v222.size.height = v166;
    if (CGRectContainsRect(v214, v222))
    {
      if (v29 <= v156 && v180 <= v153)
      {
        outlined consume of DisplayList.Item.Value(v167, v168, v9, v169);
LABEL_151:
        v5 = v170;
        goto LABEL_152;
      }

      v215.origin.x = x;
      v215.origin.y = y;
      v215.size.width = width;
      v215.size.height = height;
      v97 = fabs(CGRectGetWidth(v215)) * 0.5;
      v216.origin.x = x;
      v216.origin.y = y;
      v216.size.width = width;
      v216.size.height = height;
      v98 = fabs(CGRectGetHeight(v216)) * 0.5;
      if (v98 >= v97)
      {
        v98 = v97;
      }

      if (v98 >= v29)
      {
        v99 = v29;
      }

      else
      {
        v99 = v98;
      }

      if (v98 >= v180)
      {
        v98 = v180;
      }

      v100 = v99 * 0.292893219;
      v101 = v98 * 0.292893219;
      v217.origin.x = x;
      v217.origin.y = y;
      v217.size.width = width;
      v217.size.height = height;
      v218 = CGRectInset(v217, v100, v101);
      v223.origin.y = v179 + v81;
      v223.origin.x = v164;
      v223.size.width = rect2a;
      v223.size.height = v166;
      v102 = CGRectContainsRect(v218, v223);
      outlined consume of DisplayList.Item.Value(v167, v168, v9, v169);
      if (v102)
      {
        goto LABEL_151;
      }
    }

    else
    {
LABEL_141:
      outlined consume of DisplayList.Item.Value(v167, v168, v9, v169);
    }

    v22 = 0;
    v5 = v170;
    goto LABEL_28;
  }

  outlined consume of Path.Storage(v159, v162, v163, v52, v165);
  outlined consume of DisplayList.Item.Value(v167, v168, v9, v169);
  v141 = v167;
  v142 = v168;
  v143 = v9;
  v144 = v169;
LABEL_167:
  outlined consume of DisplayList.Item.Value(v141, v142, v143, v144);
  return 0;
}

void DisplayList.ViewUpdater.Platform._makeItemView(item:state:)(unint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = &v121;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = *v3;
  if (!(v9 >> 30))
  {
    v11 = 60;
    v12 = 56;
    v13 = 53;
    v14 = 52;
    v15 = 48;
    switch(v6 >> 60)
    {
      case 1uLL:
        if ((v10 & 4) != 0)
        {
          v105 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v105 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        *&v120[0] = v10;
        v95 = 1;
        goto LABEL_135;
      case 2uLL:
        if ((v10 & 4) != 0)
        {
          v96 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v96 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        *&v120[0] = v10;
        v95 = 8;
        goto LABEL_135;
      case 3uLL:
        if ((v10 & 4) != 0)
        {
          v97 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v97 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        v98 = type metadata accessor for ImageLayer();
        LOBYTE(v121) = 2;
        v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))(v98, &v121);
        swift_unknownObjectRetain();
        v99 = CoreViewLayer(v10 & 3, v19);
        v100 = AGMakeUniqueID();
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        v25 = v100;
        v26 = v99;
        v27 = 2;
        goto LABEL_128;
      case 4uLL:
        v66 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v142[0] = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v142[1] = v66;
        v143 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v67 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
        v68 = a2[9];
        v128 = a2[8];
        v129 = v68;
        v130 = a2[10];
        v131 = *(a2 + 22);
        v69 = a2[5];
        v125 = a2[4];
        *v126 = v69;
        v70 = a2[7];
        *&v126[16] = a2[6];
        v127 = v70;
        v71 = a2[1];
        v121 = *a2;
        v122 = v71;
        v72 = a2[3];
        v123 = a2[2];
        v124 = v72;
        v74 = DisplayList.ViewUpdater.Model.State.hasDODEffects.getter();
        outlined copy of DisplayList.Content.Value(v6);
        outlined copy of DisplayList.Item.Value(v6, v7, v8, v9);
        outlined init with copy of Path(v142, &v121);
        ShapeType.init(_:)(v142, &v121);
        v126[1] = (v74 & 1) == 0;
        *&v126[8] = 0;
        (*(*v67 + 152))(&v121, &type metadata for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:), &protocol witness table for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:));
        v75 = *&v126[8];
        if (*&v126[8])
        {
          v120[2] = v123;
          v120[3] = v124;
          v120[4] = v125;
          v120[5] = *v126;
          v120[0] = v121;
          v120[1] = v122;
          outlined destroy of Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(v120);
          if ((v10 & 4) != 0 && (*(a2 + 26) & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }

          v132 = 3;
          v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))(v75, &v132);
          swift_unknownObjectRetain();
          v76 = CoreViewLayer(v10 & 3, v19);
          v77 = AGMakeUniqueID();
          outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
          outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
          v25 = v77;
          v26 = v76;
          v27 = 3;
LABEL_128:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = vdupq_n_s64(0x7FF0000000000000uLL);
          v34 = 0uLL;
LABEL_129:
          v48 = v10;
          v49 = -1;
LABEL_145:
          v50 = 0x7FF0000000000000;
          v22 = v19;
          goto LABEL_146;
        }

        __break(1u);
LABEL_149:

        break;
      case 5uLL:
      case 6uLL:
        if ((v10 & 4) != 0)
        {
          v62 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v62 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        v63 = type metadata accessor for SDFLayer();
        LOBYTE(v121) = 4;
        v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))(v63, &v121);
        swift_unknownObjectRetain();
        v64 = CoreViewLayer(v10 & 3, v19);
        v65 = AGMakeUniqueID();
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        v25 = v65;
        v26 = v64;
        v27 = 4;
        goto LABEL_128;
      case 7uLL:
        if ((v10 & 4) != 0)
        {
          v94 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v94 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        *&v120[0] = v10;
        v95 = 6;
LABEL_135:
        LOBYTE(v142[0]) = v95;
        DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v120, v142, &v121);
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        goto LABEL_136;
      case 8uLL:
        v118 = a1[7];
        v79 = a1[6];
        outlined init with copy of AnyTrackedValue((v6 & 0xFFFFFFFFFFFFFFFLL) + 16, &v121);
        v80 = *(&v122 + 1);
        v81 = v123;
        __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
        v82 = *(v81 + 16);
        outlined copy of DisplayList.Content.Value(v6);
        v83 = outlined copy of DisplayList.Content.Value(v6);
        v84 = v82(v80, v81, v83);
        if (!v84)
        {
          *&v120[0] = v10;
          v84 = DisplayList.ViewUpdater.Platform.missingPlatformView()();
        }

        v19 = v84;
        v85 = v79;
        LOBYTE(v120[0]) = 15;
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 112))(v84, v120);
        swift_unknownObjectRetain();
        v86 = CoreViewLayer(v10 & 3, v19);
        v5 = AGMakeUniqueID();
        outlined consume of DisplayList.Item.Value(v6, v85, v118, v9);
        __swift_destroy_boxed_opaque_existential_1(&v121);
        outlined consume of DisplayList.Item.Value(v6, v85, v118, v9);
        v25 = v5;
        v26 = v86;
        v27 = 15;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = vdupq_n_s64(0x7FF0000000000000uLL);
        *&v34 = 0x2000200020002;
        *(&v34 + 1) = 0x2000200020002;
        goto LABEL_129;
      case 9uLL:
        outlined init with copy of AnyTrackedValue((v6 & 0xFFFFFFFFFFFFFFFLL) + 16, &v121);
        if ((v10 & 4) != 0)
        {
          v89 = *(a2 + 26);
          outlined copy of DisplayList.Item.Value(v6, v7, v8, v9);
          outlined copy of DisplayList.Content.Value(v6);
          v61 = v7;
          if ((v89 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Item.Value(v6, v7, v8, v9);
          outlined copy of DisplayList.Content.Value(v6);
          v61 = v7;
        }

        v90 = *(&v122 + 1);
        v91 = v123;
        __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
        v92 = (*(v91 + 16))(v90, v91);
        LOBYTE(v120[0]) = 17;
        v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))(v92, v120);
        swift_unknownObjectRetain();
        v93 = CoreViewLayer(v10 & 3, v19);
        v5 = AGMakeUniqueID();
        outlined consume of DisplayList.Item.Value(v6, v61, v8, v9);
        __swift_destroy_boxed_opaque_existential_1(&v121);
        outlined consume of DisplayList.Item.Value(v6, v61, v8, v9);
        v25 = v5;
        v26 = v93;
        v27 = 17;
        goto LABEL_128;
      case 0xAuLL:
        v78 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if ((v10 & 4) != 0)
        {
          v106 = *(a2 + 26);
          outlined copy of DisplayList.Item.Value(a1[5], v7, v8, v9);
          outlined copy of DisplayList.Content.Value(v6);
          if ((v106 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Item.Value(a1[5], v7, v8, v9);
          outlined copy of DisplayList.Content.Value(v6);
        }

        if (one-time initialization token for defaultFlags != -1)
        {
          swift_once();
        }

        LODWORD(v121) = -1;
        WORD2(v121) = 768;
        DWORD2(v121) = static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFFE | v78;
        BYTE12(v121) = 3;
        v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 120))(&v121);
        swift_unknownObjectRetain_n();
        v107 = CoreViewLayer(v10 & 3, v19);
        v108 = AGMakeUniqueID();
        swift_unknownObjectRelease();
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        v25 = v108;
        v26 = v107;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = vdupq_n_s64(0x7FF0000000000000uLL);
        v34 = 0uLL;
        v48 = v10;
        goto LABEL_144;
      case 0xBuLL:
        goto LABEL_54;
      case 0xCuLL:
        v11 = 52;
        v12 = 48;
        v13 = 45;
        v14 = 44;
        v15 = 40;
LABEL_54:
        v114 = a1[6];
        v117 = a1[7];
        v51 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + v11);
        v52 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + v12);
        LOWORD(v5) = *((v6 & 0xFFFFFFFFFFFFFFFLL) + v13);
        v53 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + v14);
        v54 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + v15);
        v55 = *v3;
        if ((*v3 & 4) != 0)
        {
          v57 = *(a2 + 26);
          v56.n128_f64[0] = outlined copy of DisplayList.Content.Value(v6);
          if ((v57 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v55 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          v56.n128_f64[0] = outlined copy of DisplayList.Content.Value(v6);
        }

        LODWORD(v121) = v54;
        BYTE4(v121) = v53;
        BYTE5(v121) = v5;
        DWORD2(v121) = v52;
        BYTE12(v121) = v51;
        v19 = (*((v55 & 0xFFFFFFFFFFFFFFF8) + 120))(&v121, v56);
        swift_unknownObjectRetain_n();
        v58 = CoreViewLayer(v55 & 3, v19);
        v59 = AGMakeUniqueID();
        swift_unknownObjectRelease();
        outlined consume of DisplayList.Item.Value(v6, v114, v117, v9);
        v48 = v55;
        v25 = v59;
        v26 = v58;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = vdupq_n_s64(0x7FF0000000000000uLL);
        v34 = 0uLL;
LABEL_144:
        v49 = -1;
        v27 = 9;
        goto LABEL_145;
      case 0xDuLL:
        goto LABEL_149;
      case 0xEuLL:
        goto LABEL_152;
      default:
        if ((v10 & 4) != 0)
        {
          v101 = *(a2 + 26);
          outlined copy of DisplayList.Content.Value(a1[5]);
          if ((v101 & 0x200) == 0)
          {
            if (one-time initialization token for caLayer != -1)
            {
              swift_once();
            }

            v10 = static DisplayList.ViewUpdater.Platform.caLayer;
          }
        }

        else
        {
          outlined copy of DisplayList.Content.Value(a1[5]);
        }

        v102 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CABackdropLayer, 0x1E6979310);
        LOBYTE(v121) = 7;
        v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))(v102, &v121);
        swift_unknownObjectRetain();
        v103 = CoreViewLayer(v10 & 3, v19);
        v104 = AGMakeUniqueID();
        outlined consume of DisplayList.Item.Value(v6, v7, v8, v9);
        v25 = v104;
        v26 = v103;
        v27 = 7;
        goto LABEL_128;
    }

    while (1)
    {
LABEL_152:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  if (v9 >> 30 != 1)
  {
    goto LABEL_152;
  }

  if (BYTE4(v7) <= 7u)
  {
    if (BYTE4(v7) <= 6u)
    {
      if (BYTE4(v7) != 3)
      {
        goto LABEL_152;
      }

      outlined copy of DisplayList.Effect(a1[5], v7, 3);
      outlined init with copy of AnyTrackedValue(v6 + 16, &v121);
      v16 = *(&v122 + 1);
      v17 = v123;
      __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
      v18 = (*(v17 + 16))(v16, v17);
      if (!v18)
      {
        *&v120[0] = v10;
        v18 = DisplayList.ViewUpdater.Platform.missingPlatformView()();
      }

      v19 = v18;
      LOBYTE(v120[0]) = 16;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 112))(v18, v120);
      v20 = *(&v122 + 1);
      v21 = v123;
      __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
      v22 = (*(v21 + 40))(v19, v20, v21);
      v23 = CoreViewLayer(v10 & 3, v19);
      v24 = AGMakeUniqueID();
      __swift_destroy_boxed_opaque_existential_1(&v121);
      outlined consume of DisplayList.Effect(v6, v7, 3);
      v25 = v24;
      v26 = v23;
      v27 = 16;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = vdupq_n_s64(0x7FF0000000000000uLL);
      *&v34 = 0x2000200020002;
      *(&v34 + 1) = 0x2000200020002;
LABEL_47:
      v48 = v10;
      v49 = -1;
      v50 = 0x7FF0000000000000;
LABEL_146:
      v87 = v33;
      goto LABEL_147;
    }

    if ((v10 & 4) == 0 || (*(a2 + 105) & 2) != 0)
    {
      outlined copy of DisplayList.Effect(a1[5], v7, 7);
    }

    else
    {
      v36 = *(v6 + 24) | v9;
      outlined copy of DisplayList.Effect(a1[5], v7, 7);
      if ((v36 & 0x400) == 0)
      {
        v37 = one-time initialization token for caLayer;

        if (v37 != -1)
        {
          swift_once();
        }

        v10 = static DisplayList.ViewUpdater.Platform.caLayer;
      }
    }

    *&v120[0] = v10;
    LOBYTE(v142[0]) = 14;
    DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v120, v142, &v121);
    v38 = v6;
    v39 = v7;
    v40 = 7;
    goto LABEL_30;
  }

  if (BYTE4(v7) > 0x14u)
  {
LABEL_13:
    if (BYTE4(v7) == 8)
    {
      if ((v10 & 4) == 0 || (*(a2 + 105) & 2) != 0)
      {
        outlined copy of DisplayList.Effect(a1[5], v7, 8);
      }

      else
      {
        outlined copy of DisplayList.Effect(a1[5], v7, 8);
        if ((v9 & 0x400) == 0)
        {
          v35 = one-time initialization token for caLayer;

          if (v35 != -1)
          {
            swift_once();
          }

          v10 = static DisplayList.ViewUpdater.Platform.caLayer;
        }
      }

      type metadata accessor for SDFLayer();
      LOBYTE(v121) = 5;
      v19 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 104))();
      swift_unknownObjectRetain_n();
      v46 = CoreViewLayer(v10 & 3, v19);
      v116 = AGMakeUniqueID();
      LOBYTE(v121) = 0;
      v5 = *((v10 & 0xFFFFFFFFFFFFFFF8) + 96);
      v47 = v46;
      v22 = (v5)(&v121);
      CoreViewAddSubview((v10 & 3), v19, v10 & 3, v22, 0);
      swift_unknownObjectRelease();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer) = 1;
      swift_unknownObjectRelease();

      outlined consume of DisplayList.Effect(v6, v7, 8);
      v25 = v116;
      v26 = v47;
      v27 = 5;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = vdupq_n_s64(0x7FF0000000000000uLL);
      v34 = 0uLL;
      goto LABEL_47;
    }

    v41 = *(v6 + 64);
    v135 = *(v6 + 48);
    v136 = v41;
    v137 = *(v6 + 80);
    v42 = *(v6 + 32);
    v133 = *(v6 + 16);
    v134 = v42;
    v43 = *(v6 + 88);
    if ((v10 & 4) == 0 || (*(a2 + 105) & 2) != 0)
    {
      outlined copy of DisplayList.Effect(v6, v7, 9);
    }

    else
    {
      outlined copy of DisplayList.Effect(v6, v7, 9);
      if ((v9 & 0x400) == 0)
      {
        v44 = one-time initialization token for caLayer;

        if (v44 != -1)
        {
          swift_once();
        }

        v10 = static DisplayList.ViewUpdater.Platform.caLayer;
        goto LABEL_50;
      }
    }

LABEL_50:
    if (v43 > 2)
    {

      v123 = v135;
      v124 = v136;
      *&v125 = v137;
      v121 = v133;
      v122 = v134;
      _Rotation3DEffect.Data.transform.getter(v120);
    }

    else
    {
      if (v43 != 1)
      {
        goto LABEL_152;
      }
    }

    *&v142[0] = v10;
    v132 = 12;
    DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v142, &v132, &v121);
    outlined consume of DisplayList.Effect(v6, v7, 9);
    v19 = *(&v121 + 1);
    v48 = v121;
    v22 = *(&v122 + 1);
    v26 = v122;
    v33 = v123;
    v87 = v124;
    v27 = v125;
    v140 = *(&v125 + 2);
    v141 = WORD3(v125);
    v25 = *(&v125 + 1);
    v49 = *v126;
    v34 = *&v126[8];
    v29 = *&v126[24];
    LOWORD(v5) = *&v126[26];
    v30 = *&v126[28];
    v31 = v127;
    v32 = BYTE1(v127);
    v138 = *(&v127 + 2);
    v139 = WORD3(v127);
    v28 = BYTE1(v125) | 4;
    v50 = *(&v127 + 1);
    goto LABEL_147;
  }

  if (BYTE4(v7) == 15)
  {
    outlined copy of DisplayList.Effect(a1[5], v7, 15);
    *&v120[0] = v10;
    LOBYTE(v142[0]) = 18;
    DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v120, v142, &v121);
    v38 = v6;
    v39 = v7;
    v40 = 15;
LABEL_30:
    outlined consume of DisplayList.Effect(v38, v39, v40);
LABEL_136:
    v19 = *(&v121 + 1);
    v48 = v121;
    v22 = *(&v122 + 1);
    v26 = v122;
    v33 = v123;
    v87 = v124;
    v27 = v125;
    v28 = BYTE1(v125);
    v140 = *(&v125 + 2);
    v141 = WORD3(v125);
    v25 = *(&v125 + 1);
    v49 = *v126;
    v34 = *&v126[8];
    v29 = *&v126[24];
    LOWORD(v5) = *&v126[26];
    v30 = *&v126[28];
    v31 = v127;
    v32 = BYTE1(v127);
    v138 = *(&v127 + 2);
    v139 = WORD3(v127);
    v50 = *(&v127 + 1);
    goto LABEL_147;
  }

  if (BYTE4(v7) != 20)
  {
    if (((1 << SBYTE4(v7)) & 0xF7C00) != 0)
    {
      goto LABEL_152;
    }

    goto LABEL_13;
  }

  if (!(v6 ^ 1 | v7))
  {
    if ((v10 & 4) == 0 || (*(a2 + 105) & 2) != 0)
    {
      outlined copy of DisplayList.Effect(a1[5], v7, 20);
    }

    else
    {
      outlined copy of DisplayList.Effect(a1[5], v7, 20);
      if ((v9 & 0x400) == 0)
      {
        v45 = one-time initialization token for caLayer;

        if (v45 != -1)
        {
          swift_once();
        }

        v10 = static DisplayList.ViewUpdater.Platform.caLayer;
      }
    }

    *&v120[0] = v10;
    LOBYTE(v142[0]) = 11;
    DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v120, v142, &v121);
    goto LABEL_136;
  }

  if (v6 ^ 2 | v7)
  {
    goto LABEL_152;
  }

  if ((v10 & 4) == 0 || (*(a2 + 105) & 2) != 0)
  {
    outlined copy of DisplayList.Effect(a1[5], v7, 20);
  }

  else
  {
    outlined copy of DisplayList.Effect(a1[5], v7, 20);
    if ((v9 & 0x400) == 0)
    {
      v88 = one-time initialization token for caLayer;

      if (v88 != -1)
      {
        swift_once();
      }

      v10 = static DisplayList.ViewUpdater.Platform.caLayer;
    }
  }

  *&v120[0] = v10;
  LOBYTE(v142[0]) = 10;
  DisplayList.ViewUpdater.ViewInfo.init(platform:kind:)(v120, v142, &v121);
  v19 = *(&v121 + 1);
  v22 = *(&v122 + 1);
  v112 = v123;
  v113 = v124;
  v110 = BYTE1(v125);
  v111 = v125;
  v140 = *(&v125 + 2);
  v141 = WORD3(v125);
  v49 = *v126;
  v115 = v121;
  v119 = *(&v125 + 1);
  v109 = *&v126[8];
  v29 = *&v126[24];
  LOWORD(v5) = *&v126[26];
  v30 = *&v126[28];
  v31 = v127;
  v32 = BYTE1(v127);
  v138 = *(&v127 + 2);
  v139 = WORD3(v127);
  v50 = *(&v127 + 1);
  v26 = v122;
  [v26 setAllowsGroupOpacity_];
  [v26 setAllowsGroupBlending_];

  v33 = v112;
  v87 = v113;
  v34 = v109;
  v28 = v110;
  v27 = v111;
  v48 = v115;
  v25 = v119;
LABEL_147:
  *a3 = v48;
  *(a3 + 8) = v19;
  *(a3 + 16) = v26;
  *(a3 + 24) = v22;
  *(a3 + 32) = v33;
  *(a3 + 48) = v87;
  *(a3 + 64) = v27;
  *(a3 + 65) = v28;
  *(a3 + 66) = v140;
  *(a3 + 70) = v141;
  *(a3 + 72) = v25;
  *(a3 + 80) = v49;
  *(a3 + 88) = v34;
  *(a3 + 104) = v29;
  *(a3 + 106) = v5;
  *(a3 + 108) = v30;
  *(a3 + 112) = v31;
  *(a3 + 113) = v32;
  *(a3 + 114) = v138;
  *(a3 + 118) = v139;
  *(a3 + 120) = v50;
}

void *DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v4 = v3;
  v136 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v8 = a2[3];
  v125 = a2[2];
  v126[0] = v8;
  *(v126 + 12) = *(a2 + 60);
  v9 = a2[1];
  v124[0] = *a2;
  v124[1] = v9;
  v121 = v7;
  v122 = v125;
  *v123 = a2[3];
  *&v123[12] = *(a2 + 60);
  v120 = v124[0];
  v10 = *a3;
  v11 = *(a3 + 16);
  v12 = *(a3 + 48);
  v127[2] = *(a3 + 32);
  v127[3] = v12;
  v13 = *(a3 + 16);
  v14 = *(a3 + 32);
  v15 = *a3;
  v127[0] = v10;
  v127[1] = v13;
  v16 = *(a3 + 80);
  v17 = *(a3 + 112);
  v130 = *(a3 + 96);
  v131 = v17;
  v18 = *(a3 + 80);
  v19 = *(a3 + 48);
  v128 = *(a3 + 64);
  v129 = v18;
  v20 = *(a3 + 144);
  v134 = *(a3 + 160);
  v21 = *(a3 + 144);
  v22 = *(a3 + 112);
  v132 = *(a3 + 128);
  v133 = v21;
  v116 = v132;
  v117 = v20;
  v118 = *(a3 + 160);
  v112 = v128;
  v113 = v16;
  v114 = v130;
  v115 = v22;
  v135 = *(a3 + 176);
  v119 = *(a3 + 176);
  v108 = v15;
  v109 = v11;
  v110 = v14;
  v111 = v19;
  swift_beginAccess();
  v23 = *(v3 + 120);
  v94 = *(v3 + 104);
  LOBYTE(v95) = v23;
  outlined init with copy of DisplayList.Item(v124, v98);
  outlined init with copy of DisplayList.ViewUpdater.Model.State(v127, v98);
  v24 = specialized static DisplayList.ViewUpdater.Model.merge(item:index:into:)(&v120, &v94, &v108);
  if (v24 & 4) != 0 || (v99 = v122, v100[0] = *v123, *(v100 + 12) = *&v123[12], *v98 = v120, *&v98[16] = v121, DisplayList.Item.features.getter(&v94), (v94))
  {
    if ((v24 & 2) == 0)
    {
      if (v24)
      {
        swift_beginAccess();
        v96 = v122;
        v97[0] = *v123;
        *(v97 + 12) = *&v123[12];
        v94 = v120;
        v95 = v121;
        v92 = v122;
        v93[0] = *v123;
        *(v93 + 12) = *&v123[12];
        v90 = v120;
        v91 = v121;
        outlined init with copy of DisplayList.Item(&v94, v98);
        DisplayList.ViewUpdater.updateItemView(container:from:localState:)(a1, &v90, &v108);
        v99 = v92;
        v100[0] = v93[0];
        *(v100 + 12) = *(v93 + 12);
        *v98 = v90;
        *&v98[16] = v91;
        outlined destroy of DisplayList.Item(v98);
      }

      else
      {
        swift_beginAccess();
        if ((*&v123[16] & 0xC0000000) == 0x40000000)
        {
          *v98 = *&v123[8];
          *&v98[8] = *&v123[16];
          *&v98[12] = *&v123[20];
          DisplayList.ViewUpdater.update(container:from:parentState:)(a1, v98, &v108);
        }
      }

      goto LABEL_43;
    }

    v64 = (v3 + 104);
    v92 = v122;
    v93[0] = *v123;
    *(v93 + 12) = *&v123[12];
    v90 = v120;
    v91 = v121;
    v99 = v122;
    v100[0] = *v123;
    *(v100 + 12) = *&v123[12];
    *v98 = v120;
    *&v98[16] = v121;
    *&v82 = *a1;
    v32 = v82;
    v33 = *(a1 + 16);
    swift_beginAccess();
    outlined init with copy of DisplayList.Item(&v90, &v94);
    DisplayList.ViewUpdater.ViewCache.update(item:platform:state:tag:in:)(v98, &v82, a3, 1, v33, &v70);
    swift_endAccess();
    v95 = *&v98[16];
    v96 = v99;
    v97[0] = v100[0];
    *(v97 + 12) = *(v100 + 12);
    v94 = *v98;
    outlined destroy of DisplayList.Item(&v94);
    *(v3 + 192) &= BYTE3(v73) & 1;
    v34 = *(a1 + 32);
    v35 = *(&v73 + 1);
    v36 = v70;
    CoreViewAddSubview((v32 & 3), *(a1 + 8), v70 & 3, *(&v70 + 1), v34);
    *(a1 + 32) = v34 + 1;
    v37 = *(a1 + 24);
    if (v35 < v37)
    {
      v37 = v35;
    }

    *(a1 + 24) = v37;
    if ((BYTE2(v73) & 1) != 0 || (*(v4 + 193) & 1) == 0)
    {
      v68 = INFINITY;
      v69 = 0;
      v66 = v36;
      v67 = v71;
      if (v24)
      {
        swift_beginAccess();
        v88 = v122;
        *v89 = *v123;
        *&v89[12] = *&v123[12];
        v86 = v120;
        v87 = v121;
        v83 = v121;
        v84 = v122;
        v85[0] = *v123;
        *(v85 + 12) = *&v123[12];
        v82 = v120;
        swift_unknownObjectRetain();
        outlined init with copy of DisplayList.Item(&v86, v98);
        DisplayList.ViewUpdater.updateItemView(container:from:localState:)(&v66, &v82, &v108);
        v99 = v84;
        v100[0] = v85[0];
        *(v100 + 12) = *(v85 + 12);
        *v98 = v82;
        *&v98[16] = v83;
        outlined destroy of DisplayList.Item(v98);
      }

      else
      {
        swift_beginAccess();
        if ((*&v123[16] & 0xC0000000) == 0x40000000 && (v48 = *(*&v123[8] + 16)) != 0)
        {
          v49 = (*&v123[8] + 32);
          swift_unknownObjectRetain();
          do
          {
            *v98 = *v49;
            v50 = v49[1];
            v51 = v49[2];
            v52 = v49[3];
            *(v100 + 12) = *(v49 + 60);
            v99 = v51;
            v100[0] = v52;
            *&v98[16] = v50;
            *&v89[12] = *(v49 + 60);
            v87 = v49[1];
            v88 = v49[2];
            *v89 = v49[3];
            v86 = *v49;
            v53 = *&v89[24];
            swift_beginAccess();
            if (v53)
            {
              v54 = 0;
              v55 = *(v4 + 108);
              v65 = *(v4 + 104);
              v56 = *(v4 + 112);
              v57 = *(v4 + 120);
              v58 = 1;
              *(v4 + 104) = v53;
            }

            else
            {
              v58 = 0;
              v65 = *(v4 + 104);
              v54 = *(v4 + 108) + 1;
              v56 = *(v4 + 112);
              v57 = *(v4 + 120);
              v55 = v54;
            }

            *(v4 + 108) = v54;
            *(v4 + 120) = v58;
            *&v78[0] = v66;
            outlined init with copy of DisplayList.Item(v98, &v82);
            outlined init with copy of DisplayList.Item(v98, &v82);
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v86, v78, &v108, &v82);
            swift_endAccess();
            v59 = *&v82;
            if (*&v82 >= v68)
            {
              v59 = v68;
            }

            v68 = v59;
            v78[2] = v88;
            v79[0] = *v89;
            *(v79 + 12) = *&v89[12];
            v78[0] = v86;
            v78[1] = v87;
            v76 = v88;
            v77[0] = *v89;
            *(v77 + 12) = *&v89[12];
            v74 = v86;
            v75 = v87;
            outlined init with copy of DisplayList.Item(v78, &v82);
            DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(&v66, &v74, &v108);
            outlined destroy of DisplayList.Item(v98);
            v80[2] = v76;
            v81[0] = v77[0];
            *(v81 + 12) = *(v77 + 12);
            v80[0] = v74;
            v80[1] = v75;
            outlined destroy of DisplayList.Item(v80);
            v84 = v88;
            v85[0] = *v89;
            *(v85 + 12) = *&v89[12];
            v82 = v86;
            v83 = v87;
            outlined destroy of DisplayList.Item(&v82);
            v60 = *(v4 + 120);
            if ((v60 & 0xC) != 0)
            {
              v61 = *v64;
              if ((*(v4 + 120) & 4) != 0)
              {
                *(v4 + 104) = *(v4 + 112);
              }

              if ((v60 & 8) != 0)
              {
                *(v4 + 112) = v61;
              }
            }

            if (v60)
            {
              *(v4 + 104) = v65;
              *(v4 + 108) = v55;
            }

            if ((v60 & 2) != 0)
            {
              *(v4 + 112) = v56;
            }

            *(v4 + 120) = v57;
            v49 += 5;
            --v48;
          }

          while (v48);
        }

        else
        {
          swift_unknownObjectRetain();
        }
      }

      v62 = v68;
      *v98 = v66;
      *&v98[8] = v67;
      *&v98[24] = v68;
      *&v99 = v69;
      swift_beginAccess();
      swift_unknownObjectRetain();
      DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)((v4 + 40));
      swift_endAccess();
      swift_unknownObjectRelease();
      *&v86 = v62;
      swift_beginAccess();
      DisplayList.ViewUpdater.ViewCache.setNextUpdate(_:in:)(&v86, &v70);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else if ((*&v123[16] & 0xC0000000) == 0x40000000)
    {
      v38 = *&v123[8];
      v39 = *(&v122 + 1);
      v40 = *v123;
      v41 = HIDWORD(*v123);
      swift_beginAccess();
      v42 = *(v38 + 16);
      if (v42)
      {
        outlined copy of DisplayList.Effect(v39, v40, v41);

        v43 = *(v38 + 48);
        v44 = *(v38 + 80);
        v99 = *(v38 + 64);
        v100[0] = v44;
        *(v100 + 12) = *(v38 + 92);
        *v98 = *(v38 + 32);
        *&v98[16] = v43;
        DisplayList.Index.skip(item:)(v98);
        v45 = v42 - 1;
        if (v45)
        {
          v46 = (v38 + 112);
          do
          {
            *&v98[16] = v46[1];
            v99 = v46[2];
            v100[0] = v46[3];
            *(v100 + 12) = *(v46 + 60);
            v47 = *v46;
            v46 += 5;
            *v98 = v47;
            DisplayList.Index.skip(item:)(v98);
            --v45;
          }

          while (v45);
        }
      }

      else
      {
        outlined copy of DisplayList.Effect(v39, v40, v41);
      }

      swift_endAccess();

      *&v86 = v39;
      DWORD2(v86) = v40;
      BYTE12(v86) = v41;
      swift_beginAccess();
      DisplayList.Index.skip(effect:)(&v86);
      swift_endAccess();
      v104 = v116;
      v105 = v117;
      v106 = v118;
      v107 = v119;
      v100[1] = v112;
      v101 = v113;
      v102 = v114;
      v103 = v115;
      *v98 = v108;
      *&v98[16] = v109;
      v99 = v110;
      v100[0] = v111;
      outlined destroy of DisplayList.ViewUpdater.Model.State(v98);
      outlined consume of DisplayList.Effect(v39, v40, v41);
      goto LABEL_48;
    }

    v104 = v116;
    v105 = v117;
    v106 = v118;
    v107 = v119;
    v100[1] = v112;
    v101 = v113;
    v102 = v114;
    v103 = v115;
    *v98 = v108;
    *&v98[16] = v109;
    v99 = v110;
    v100[0] = v111;
    outlined destroy of DisplayList.ViewUpdater.Model.State(v98);
LABEL_48:
    *v98 = v70;
    *&v98[16] = v71;
    v99 = v72;
    v100[0] = v73;
    outlined destroy of DisplayList.ViewUpdater.ViewCache.Result(v98);
    goto LABEL_49;
  }

  if ((*&v123[16] & 0xC0000000) == 0x40000000)
  {
    v25 = *&v123[8];
    swift_beginAccess();
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = *(v25 + 48);
      v28 = *(v25 + 80);
      v99 = *(v25 + 64);
      v100[0] = v28;
      *(v100 + 12) = *(v25 + 92);
      *v98 = *(v25 + 32);
      *&v98[16] = v27;
      DisplayList.Index.skip(item:)(v98);
      v29 = v26 - 1;
      if (v29)
      {
        v30 = (v25 + 112);
        do
        {
          *&v98[16] = v30[1];
          v99 = v30[2];
          v100[0] = v30[3];
          *(v100 + 12) = *(v30 + 60);
          v31 = *v30;
          v30 += 5;
          *v98 = v31;
          DisplayList.Index.skip(item:)(v98);
          --v29;
        }

        while (v29);
      }
    }

    swift_endAccess();
  }

LABEL_43:
  v104 = v116;
  v105 = v117;
  v106 = v118;
  v107 = v119;
  v100[1] = v112;
  v101 = v113;
  v102 = v114;
  v103 = v115;
  *v98 = v108;
  *&v98[16] = v109;
  v99 = v110;
  v100[0] = v111;
  outlined destroy of DisplayList.ViewUpdater.Model.State(v98);
LABEL_49:
  v99 = v122;
  v100[0] = *v123;
  *(v100 + 12) = *&v123[12];
  *v98 = v120;
  *&v98[16] = v121;
  return outlined destroy of DisplayList.Item(v98);
}

uint64_t DisplayList.ViewUpdater.updateItemView(container:from:localState:)(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v4 = v3;
  v7 = a2[1];
  v8 = a2[3];
  v127 = a2[2];
  *v128 = v8;
  *&v128[12] = *(a2 + 60);
  v9 = a2[1];
  v126[0] = *a2;
  v126[1] = v9;
  v119 = v7;
  v120 = v127;
  v121[0] = a2[3];
  *(v121 + 12) = *(a2 + 60);
  v118 = v126[0];
  *&v106 = *a1;
  v10 = v106;
  v11 = *(a1 + 16);
  swift_beginAccess();
  v87 = a3;
  DisplayList.ViewUpdater.ViewCache.update(item:platform:state:tag:in:)(&v118, &v106, a3, 0, v11, &v122);
  swift_endAccess();
  *(v3 + 192) &= BYTE3(v125) & 1;
  v12 = *(&v122 + 1);
  v13 = *(a1 + 32);
  v14 = *(&v125 + 1);
  v84 = v122;
  CoreViewAddSubview((v10 & 3), *(a1 + 8), v122 & 3, *(&v122 + 1), v13);
  *(a1 + 32) = v13 + 1;
  v15 = *(a1 + 24);
  if (v14 < v15)
  {
    v15 = v14;
  }

  *(a1 + 24) = v15;
  if ((*&v128[16] & 0xC0000000) == 0x40000000)
  {
    v16 = *v128;
    v17 = *&v128[8];
    v18 = *(&v127 + 1);
    if ((BYTE2(v125) & 1) != 0 || (*(v4 + 193) & 1) == 0)
    {
      v83 = HIDWORD(*v128);
      outlined init with copy of DisplayList.Item(v126, &v118);
      DisplayList.ViewUpdater.Model.State.reset()();
      v26 = *(&v123 + 1);
      v117 = 0;
      v114 = v84;
      v115 = v123;
      v116 = INFINITY;
      v27 = *(v17 + 16);
      v78 = *(&v123 + 1);
      if (v27)
      {
        v79 = v18;
        v81 = v16;
        swift_unknownObjectRetain();
        v28 = v27 - 1;
        v29 = 32;
        v85 = v17;
        while (1)
        {
          v118 = *(v17 + v29);
          v30 = *(v17 + v29 + 16);
          v31 = *(v17 + v29 + 32);
          v32 = *(v17 + v29 + 48);
          *(v121 + 12) = *(v17 + v29 + 60);
          v120 = v31;
          v121[0] = v32;
          v119 = v30;
          *&v113[12] = *(v17 + v29 + 60);
          v111 = *(v17 + v29 + 16);
          v112 = *(v17 + v29 + 32);
          *v113 = *(v17 + v29 + 48);
          v110 = *(v17 + v29);
          v33 = *&v113[24];
          swift_beginAccess();
          if (v33)
          {
            v34 = *(v4 + 104);
            v35 = *(v4 + 108);
            v36 = *(v4 + 112);
            v37 = *(v4 + 120);
            v38 = 1;
            *(v4 + 104) = v33;
            *(v4 + 108) = 0;
          }

          else
          {
            v38 = 0;
            v34 = *(v4 + 104);
            v35 = *(v4 + 108) + 1;
            *(v4 + 108) = v35;
            v36 = *(v4 + 112);
            v37 = *(v4 + 120);
          }

          *(v4 + 120) = v38;
          *&v98 = v114;
          outlined init with copy of DisplayList.Item(&v118, &v106);
          outlined init with copy of DisplayList.Item(&v118, &v106);
          DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v110, &v98, v87, &v106);
          swift_endAccess();
          v39 = *&v106;
          if (*&v106 >= v116)
          {
            v39 = v116;
          }

          v116 = v39;
          v100 = v112;
          v101[0] = *v113;
          *(v101 + 12) = *&v113[12];
          v98 = v110;
          v99 = v111;
          v95 = v111;
          v96 = v112;
          v97[0] = *v113;
          *(v97 + 12) = *&v113[12];
          v94 = v110;
          outlined init with copy of DisplayList.Item(&v98, v93);
          DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(&v114, &v94, v87);
          outlined destroy of DisplayList.Item(&v118);
          v104 = v96;
          v105[0] = v97[0];
          *(v105 + 12) = *(v97 + 12);
          v102 = v94;
          v103 = v95;
          outlined destroy of DisplayList.Item(&v102);
          v107 = v111;
          v108 = v112;
          v109[0] = *v113;
          *(v109 + 12) = *&v113[12];
          v106 = v110;
          outlined destroy of DisplayList.Item(&v106);
          v40 = *(v4 + 120);
          if ((v40 & 0xC) != 0)
          {
            v41 = *(v4 + 104);
            if ((*(v4 + 120) & 4) != 0)
            {
              *(v4 + 104) = *(v4 + 112);
            }

            if ((v40 & 8) != 0)
            {
              *(v4 + 112) = v41;
            }
          }

          if (v40)
          {
            *(v4 + 104) = v34;
            *(v4 + 108) = v35;
          }

          v17 = v85;
          if ((v40 & 2) != 0)
          {
            *(v4 + 112) = v36;
          }

          *(v4 + 120) = v37;
          if (!v28)
          {
            break;
          }

          --v28;
          v29 += 80;
        }

        v42 = v114;
        v43 = *(&v115 + 1);
        v44 = v115;
        v45 = v116;
        v46 = v117;
        v18 = v79;
        v16 = v81;
      }

      else
      {
        v44 = v123;
        swift_unknownObjectRetain();

        v46 = 0;
        v45 = INFINITY;
        v43 = v26;
        v42 = v84;
      }

      *&v118 = v42;
      *(&v118 + 1) = v44;
      *&v119 = v43;
      *(&v119 + 1) = v45;
      *&v120 = v46;
      swift_beginAccess();
      swift_unknownObjectRetain();
      DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)((v4 + 40));
      swift_endAccess();
      swift_unknownObjectRelease();
      if (BYTE4(v16) == 7)
      {
        v47 = *(v18 + 16);

        v48 = v84;
        v49 = CoreViewMaskView((v84 & 3), v12);
        if (v49)
        {
          v91 = INFINITY;
          v92 = 0;
          v88 = v84;
          v89 = v49;
          v90 = v78;
          v50 = *(v47 + 16);
          if (v50)
          {
            v80 = v18;
            v82 = v16;
            swift_unknownObjectRetain_n();
            v51 = v50 - 1;
            v52 = 32;
            v86 = v47;
            while (1)
            {
              v118 = *(v47 + v52);
              v53 = *(v47 + v52 + 16);
              v54 = *(v47 + v52 + 32);
              v55 = *(v47 + v52 + 48);
              *(v121 + 12) = *(v47 + v52 + 60);
              v120 = v54;
              v121[0] = v55;
              v119 = v53;
              *&v113[12] = *(v47 + v52 + 60);
              v111 = *(v47 + v52 + 16);
              v112 = *(v47 + v52 + 32);
              *v113 = *(v47 + v52 + 48);
              v110 = *(v47 + v52);
              v56 = *&v113[24];
              swift_beginAccess();
              if (v56)
              {
                v58 = *(v4 + 104);
                v57 = *(v4 + 108);
                v59 = *(v4 + 112);
                v60 = *(v4 + 120);
                v61 = 1;
                *(v4 + 104) = v56;
                *(v4 + 108) = 0;
              }

              else
              {
                v61 = 0;
                v58 = *(v4 + 104);
                v57 = *(v4 + 108) + 1;
                *(v4 + 108) = v57;
                v59 = *(v4 + 112);
                v60 = *(v4 + 120);
              }

              *(v4 + 120) = v61;
              *&v98 = v88;
              outlined init with copy of DisplayList.Item(&v118, &v106);
              outlined init with copy of DisplayList.Item(&v118, &v106);
              DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v110, &v98, v87, &v106);
              swift_endAccess();
              v62 = *&v106;
              if (*&v106 >= v91)
              {
                v62 = v91;
              }

              v91 = v62;
              v100 = v112;
              v101[0] = *v113;
              *(v101 + 12) = *&v113[12];
              v98 = v110;
              v99 = v111;
              v95 = v111;
              v96 = v112;
              v97[0] = *v113;
              *(v97 + 12) = *&v113[12];
              v94 = v110;
              outlined init with copy of DisplayList.Item(&v98, v93);
              DisplayList.ViewUpdater.updateInheritedView(container:from:parentState:)(&v88, &v94, v87);
              outlined destroy of DisplayList.Item(&v118);
              v104 = v96;
              v105[0] = v97[0];
              *(v105 + 12) = *(v97 + 12);
              v102 = v94;
              v103 = v95;
              outlined destroy of DisplayList.Item(&v102);
              v108 = v112;
              v109[0] = *v113;
              *(v109 + 12) = *&v113[12];
              v106 = v110;
              v107 = v111;
              outlined destroy of DisplayList.Item(&v106);
              v63 = *(v4 + 120);
              if ((v63 & 0xC) != 0)
              {
                v64 = *(v4 + 104);
                if ((*(v4 + 120) & 4) != 0)
                {
                  *(v4 + 104) = *(v4 + 112);
                }

                if ((v63 & 8) != 0)
                {
                  *(v4 + 112) = v64;
                }
              }

              if (v63)
              {
                *(v4 + 104) = v58;
                *(v4 + 108) = v57;
              }

              if ((v63 & 2) != 0)
              {
                *(v4 + 112) = v59;
              }

              *(v4 + 120) = v60;
              v47 = v86;
              if (!v51)
              {
                break;
              }

              --v51;
              v52 += 80;
            }

            v48 = v88;
            v65 = v89;
            v66 = v90;
            v67 = v91;
            v68 = v92;
            v18 = v80;
            LOBYTE(v16) = v82;
          }

          else
          {
            v76 = v49;
            swift_unknownObjectRetain_n();

            v68 = 0;
            v67 = INFINITY;
            v66 = v78;
            v65 = v76;
          }

          *&v118 = v48;
          *(&v118 + 1) = v65;
          *&v119 = v66;
          *(&v119 + 1) = v67;
          *&v120 = v68;
          swift_beginAccess();
          swift_unknownObjectRetain();
          DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)((v4 + 40));
          swift_endAccess();
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v67 < v45)
          {
            v45 = v67;
          }
        }

        else
        {
        }
      }

      *&v110 = v45;
      swift_beginAccess();
      DisplayList.ViewUpdater.ViewCache.setNextUpdate(_:in:)(&v110, &v122);
      swift_endAccess();
      outlined consume of DisplayList.Effect(v18, v16, v83);
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = HIDWORD(*v128);
      swift_beginAccess();
      v20 = *(v17 + 16);
      if (v20)
      {
        outlined init with copy of DisplayList.Item(v126, &v118);
        v21 = *(v17 + 48);
        v22 = *(v17 + 80);
        v120 = *(v17 + 64);
        v121[0] = v22;
        *(v121 + 12) = *(v17 + 92);
        v118 = *(v17 + 32);
        v119 = v21;
        DisplayList.Index.skip(item:)(&v118);
        v23 = v20 - 1;
        if (v23)
        {
          v24 = (v17 + 112);
          do
          {
            v119 = v24[1];
            v120 = v24[2];
            v121[0] = v24[3];
            *(v121 + 12) = *(v24 + 60);
            v25 = *v24;
            v24 += 5;
            v118 = v25;
            DisplayList.Index.skip(item:)(&v118);
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        outlined init with copy of DisplayList.Item(v126, &v118);
      }

      swift_endAccess();

      if (BYTE4(v16) == 7)
      {
        v69 = *(v18 + 16);
        swift_beginAccess();
        v70 = *(v69 + 16);
        if (v70)
        {

          v71 = *(v69 + 48);
          v72 = *(v69 + 80);
          v120 = *(v69 + 64);
          v121[0] = v72;
          *(v121 + 12) = *(v69 + 92);
          v118 = *(v69 + 32);
          v119 = v71;
          DisplayList.Index.skip(item:)(&v118);
          v73 = v70 - 1;
          if (v73)
          {
            v74 = (v69 + 112);
            do
            {
              v119 = v74[1];
              v120 = v74[2];
              v121[0] = v74[3];
              *(v121 + 12) = *(v74 + 60);
              v75 = *v74;
              v74 += 5;
              v118 = v75;
              DisplayList.Index.skip(item:)(&v118);
              --v73;
            }

            while (v73);
          }
        }

        else
        {
        }

        swift_endAccess();
        outlined consume of DisplayList.Effect(v18, v16, 7);
      }

      else
      {
        outlined consume of DisplayList.Effect(v18, v16, v19);
      }
    }
  }

  v118 = v122;
  v119 = v123;
  v120 = v124;
  v121[0] = v125;
  return outlined destroy of DisplayList.ViewUpdater.ViewCache.Result(&v118);
}