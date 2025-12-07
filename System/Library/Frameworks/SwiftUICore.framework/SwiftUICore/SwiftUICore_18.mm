__n128 LinearGradient.resolvePaint(in:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = *v3;
  *&v15 = *a1;
  *(&v15 + 1) = v6;
  Gradient.resolve(in:)(&v15, v7, &v16);
  v8 = 0;
  v9 = v16;
  v10 = v17;
  v11 = HIDWORD(v17);
  v12 = v18;
  if ((v18 & 1) == 0 && *(&v17 + 1) > 1.0)
  {
    v16 = v5;
    v17 = v6;
    v14 = 3;
    EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v14, &v15);
    v8 = v15;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = *(v3 + 8);
  result = *(v3 + 24);
  *(a2 + 40) = result;
  *(a2 + 56) = v8;
  return result;
}

void Gradient.resolve(in:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0.0;
    v19 = *a1;
    v5 = (a2 + 40);
    v6 = MEMORY[0x1E69E7CC0];
    v7 = 1;
    do
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      v20 = v19;
      v10 = *(*v8 + 120);

      v10(&v21, &v20);
      v11 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[48 * v13];
      *(v14 + 2) = v21;
      *(v14 + 6) = v9;
      if (v7)
      {
        v15 = v11;
      }

      else
      {
        v15 = v4;
      }

      v16 = v4;
      if (v4 <= v11)
      {
        v16 = v11;
      }

      *(v14 + 7) = 0;
      *(v14 + 8) = 0;
      v14[72] = 1;
      if (v7)
      {
        v4 = v15;
      }

      else
      {
        v4 = v16;
      }

      v7 = 0;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0.0;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = 1;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v17 = static ResolvedGradient.ColorSpace.default;
  *a3 = v6;
  *(a3 + 8) = v17;
  *(a3 + 12) = v4;
  *(a3 + 16) = v7;
}

void type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t initializeWithCopy for _ShapeStyle_Shape(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 9) = *(a2 + 9);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  outlined copy of _ShapeStyle_Shape.Result(v4, v5);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 107) = *(a2 + 107);

  return a1;
}

Swift::Void __swiftcall _ShapeStyle_Pack.Style.applyOpacity(_:)(Swift::Float a1)
{
  *(v1 + 88) = *(v1 + 88) * a1;
  v3 = *(v1 + 112);
  v4 = *(v3 + 2);
  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    if (v4 > *(v3 + 2))
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v4 - 1;
      if (v4 == 1)
      {
        goto LABEL_6;
      }

      v9 = !is_mul_ok(v6, 0x50uLL);
      if (&v3[80 * v6 + 88] < v3 + 88)
      {
        goto LABEL_6;
      }

      if (v9)
      {
        goto LABEL_6;
      }

      v5 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v10 = (v3 + 168);
      v11 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v12 = *v10 * a1;
        *(v10 - 20) = *(v10 - 20) * a1;
        *v10 = v12;
        v10 += 40;
        v11 -= 2;
      }

      while (v11);
      if (v4 != v5)
      {
LABEL_6:
        v7 = v4 - v5;
        v8 = &v3[80 * v5 + 88];
        do
        {
          *v8 = *v8 * a1;
          v8 += 20;
          --v7;
        }

        while (v7);
      }

      *(v1 + 112) = v3;
    }
  }
}

uint64_t initializeWithCopy for LinearGradient._Paint(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 3);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

void _ShapeStyle_Pack.Fill.AnimatableData.PaintInitVisitor.visitPaint<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v108 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v109 = &v108 - v8;
  MEMORY[0x1EEE9AC00](v9);
  *&v110.f64[0] = &v108 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v108 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v108 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v108 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = *(v5 + 16);
  v111.f64[0] = v27;
  v25(&v108 - v26, v24);
  if (swift_dynamicCast())
  {
    v111 = v124;
    v28 = *v2;
    if (one-time initialization token for legacyInterpolation != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (static Color.Resolved.legacyInterpolation)
    {
      v29 = v111;
    }

    else
    {
      LOBYTE(v119) = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v124, *v111.f64, HIDWORD(v111.f64[0]), *&v111.f64[1], *(&v111.f64[1] + 1));
      v29 = v124;
    }

    v32.i64[0] = 0x4300000043000000;
    v32.i64[1] = 0x4300000043000000;
    v33 = vmulq_f32(v29, v32);
    v34 = *(v28 + 16);
    v124 = *v28;
    v125 = v34;
    v35 = *(v28 + 32);
    v36 = *(v28 + 48);
    v37 = *(v28 + 64);
    v129 = *(v28 + 80);
    v127 = v36;
    v128 = v37;
    v126 = v35;
    *v28 = v33;
    *(v28 + 16) = 0;
LABEL_17:
    *(v28 + 80) = 0;
    goto LABEL_18;
  }

  (v25)(v22, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v111 = v124;
    v30 = v125;
    v28 = *v2;
    if (one-time initialization token for legacyInterpolation != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (static Color.Resolved.legacyInterpolation)
    {
      v31 = v111;
    }

    else
    {
      LOBYTE(v119) = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v124, *v111.f64, HIDWORD(v111.f64[0]), *&v111.f64[1], *(&v111.f64[1] + 1));
      v31 = v124;
    }

    v49.i64[0] = 0x4300000043000000;
    v49.i64[1] = 0x4300000043000000;
    v50 = vmulq_f32(v31, v49);
    v51 = *(v28 + 16);
    v124 = *v28;
    v125 = v51;
    v52 = *(v28 + 32);
    v53 = *(v28 + 48);
    v54 = *(v28 + 64);
    v129 = *(v28 + 80);
    v127 = v53;
    v128 = v54;
    v126 = v52;
    *v28 = v50;
    *(v28 + 16) = v30;
    goto LABEL_17;
  }

  (v25)(v19, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v38 = *v2;
    v124.i64[0] = v130;
    v124.i8[8] = BYTE8(v130);
    v124.i32[3] = HIDWORD(v130);
    LOBYTE(v125) = v131[0];
    v39 = vdupq_n_s64(0x4060000000000000uLL);
    v110 = vmulq_f64(*&v131[24], v39);
    v111 = vmulq_f64(*&v131[8], v39);
    ResolvedGradient.animatableData.getter(&v119);

    v40 = v119;
    v41 = BYTE8(v119);
    v42 = HIDWORD(v119);
    v43 = v120;
    LOBYTE(v114) = v120;
    v44 = *(v38 + 16);
    v124 = *v38;
    v125 = v44;
    v45 = *(v38 + 32);
    v46 = *(v38 + 48);
    v47 = *(v38 + 64);
    v129 = *(v38 + 80);
    v127 = v46;
    v128 = v47;
    v126 = v45;
    v48 = v110;
    *v38 = v111;
    *(v38 + 16) = v48;
    *(v38 + 32) = v40;
    *(v38 + 40) = v41;
    *(v38 + 44) = v42;
    *(v38 + 48) = v43;
    *(v38 + 80) = 2;
LABEL_18:
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v124);
    return;
  }

  (v25)(v16, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v55 = *&v131[24];
    v56 = *&v131[32];
    v57 = *v2;
    v58 = *&v131[8] * 128.0;
    v59 = *&v131[16] * 128.0;
    v124.i64[0] = v130;
    v124.i8[8] = BYTE8(v130);
    v124.i32[3] = HIDWORD(v130);
    LOBYTE(v125) = v131[0];
    ResolvedGradient.animatableData.getter(&v119);

    v60 = v119;
    v61 = BYTE8(v119);
    v62 = HIDWORD(v119);
    v63 = v120;
    LOBYTE(v119) = v120;
    v64 = *(v57 + 16);
    v124 = *v57;
    v125 = v64;
    v65 = *(v57 + 32);
    v66 = *(v57 + 48);
    v67 = *(v57 + 64);
    v129 = *(v57 + 80);
    v127 = v66;
    v128 = v67;
    v126 = v65;
    *v57 = v58;
    *(v57 + 8) = v59;
    *(v57 + 16) = v60;
    *(v57 + 24) = v61;
    *(v57 + 28) = v62;
    *(v57 + 32) = v63;
    *(v57 + 40) = v55;
    *(v57 + 48) = v56;
    *(v57 + 80) = 3;
    goto LABEL_18;
  }

  (v25)(v13, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v68 = *&v131[24];
    v69 = *&v131[32];
    v70 = *v2;
    v71 = *&v131[8] * 128.0;
    v72 = *&v131[16] * 128.0;
    v124.i64[0] = v130;
    v124.i8[8] = BYTE8(v130);
    v124.i32[3] = HIDWORD(v130);
    LOBYTE(v125) = v131[0];
    ResolvedGradient.animatableData.getter(&v119);

    v73 = v119;
    v74 = BYTE8(v119);
    v75 = HIDWORD(v119);
    v76 = v120;
    LOBYTE(v119) = v120;
    v77 = *(v70 + 16);
    v124 = *v70;
    v125 = v77;
    v78 = *(v70 + 32);
    v79 = *(v70 + 48);
    v80 = *(v70 + 64);
    v129 = *(v70 + 80);
    v127 = v79;
    v128 = v80;
    v126 = v78;
    *v70 = v71;
    *(v70 + 8) = v72;
    *(v70 + 16) = v73;
    *(v70 + 24) = v74;
    *(v70 + 28) = v75;
    *(v70 + 32) = v76;
    *(v70 + 40) = v68;
    *(v70 + 48) = v69;
    *(v70 + 80) = 4;
    goto LABEL_18;
  }

  (v25)(*&v110.f64[0], *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v81 = *&v131[24];
    v82 = *&v131[32];
    v83 = *v2;
    v84 = *&v131[8] * 128.0;
    v85 = *&v131[16] * 128.0;
    v124.i64[0] = v130;
    v124.i8[8] = BYTE8(v130);
    v124.i32[3] = HIDWORD(v130);
    LOBYTE(v125) = v131[0];
    ResolvedGradient.animatableData.getter(&v119);

    v86 = v119;
    v87 = BYTE8(v119);
    v88 = HIDWORD(v119);
    v89 = v120;
    LOBYTE(v119) = v120;
    v90 = *(v83 + 16);
    v124 = *v83;
    v125 = v90;
    v91 = *(v83 + 32);
    v92 = *(v83 + 48);
    v93 = *(v83 + 64);
    v129 = *(v83 + 80);
    v127 = v92;
    v128 = v93;
    v126 = v91;
    *v83 = v84;
    *(v83 + 8) = v85;
    *(v83 + 16) = v86;
    *(v83 + 24) = v87;
    *(v83 + 28) = v88;
    *(v83 + 32) = v89;
    *(v83 + 40) = v81 * 128.0;
    *(v83 + 48) = v82 * 128.0;
    *(v83 + 80) = 5;
    goto LABEL_18;
  }

  (v25)(v109, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v121 = *&v131[16];
    v122 = *&v131[32];
    v123 = v132;
    v119 = v130;
    v120 = *v131;
    v94 = *v2;
    v116 = *&v131[16];
    v117 = *&v131[32];
    v118 = v132;
    v114 = v130;
    v115 = *v131;
    MeshGradient._Paint.animatableData.getter(v112);
    outlined destroy of MeshGradient._Paint(&v119);
    v95 = v113;
    v96 = *v94;
    v125 = *(v94 + 16);
    v97 = *(v94 + 32);
    v98 = *(v94 + 48);
    v99 = *(v94 + 64);
    v129 = *(v94 + 80);
    v127 = v98;
    v128 = v99;
    v126 = v97;
    v124 = v96;
    v100 = v112[1];
    *v94 = v112[0];
    *(v94 + 16) = v100;
    *(v94 + 32) = v95;
    *(v94 + 80) = 6;
    goto LABEL_18;
  }

  (v25)(v108, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v101 = v130;
    v102 = *v3;
    v103 = v130;
    ShaderVectorData.init(rbShader:)(v101, &v119);
    v104 = *(v102 + 16);
    v124 = *v102;
    v125 = v104;
    v106 = *(v102 + 48);
    v105 = *(v102 + 64);
    v107 = *(v102 + 32);
    v129 = *(v102 + 80);
    v127 = v106;
    v128 = v105;
    v126 = v107;
    *v102 = v119;
    *(v102 + 80) = 7;
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v124);
  }
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Fill(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v13 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 84);
  v16 = *(a2 + 80);
  v11 = *(a2 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*a2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v16 | (v15 << 32), v11);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 84) = v15;
  *(a1 + 80) = v16;
  *(a1 + 85) = v11;
  return a1;
}

void ResolvedGradient.animatableData.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 3);
  v6 = *(v1 + 16);
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v7 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v7)
    {
      goto LABEL_7;
    }

LABEL_9:
    v12 = v3;
    v13 = v4;
    v14 = v5;
    v15 = v6;

    v20.stops._rawValue = &v12;
    ResolvedGradientVector.init(_:)(v20);
    v11 = v16;
    v8 = v17;
    v9 = v18;
    v10 = v19;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = 0;
  v9 = 0;
  v10 = 1;
  v11 = MEMORY[0x1E69E7CC0];
LABEL_10:
  *a1 = v11;
  *(a1 + 8) = v8;
  *(a1 + 12) = v9;
  *(a1 + 16) = v10;
}

SwiftUI::ResolvedGradientVector __swiftcall ResolvedGradientVector.init(_:)(SwiftUI::ResolvedGradient a1)
{
  v2 = v1;
  v3 = *a1.stops._rawValue;
  v4 = *(a1.stops._rawValue + 8);
  v5 = *(a1.stops._rawValue + 3);
  v6 = *(a1.stops._rawValue + 16);
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*a1.stops._rawValue + 16), 0, MEMORY[0x1E69E7CC0]);
  v8 = *(v3 + 16);
  if (v8)
  {
    v28 = v6;
    v29 = v2;

    v9 = v3 + 36;
    do
    {
      v10 = *(v9 - 4);
      v11 = *v9;
      v12 = *(v9 + 4);
      v13 = *(v9 + 8);
      v14 = *(v9 + 12);
      v15 = *(v9 + 20);
      v16 = *(v9 + 28);
      v17 = *(v9 + 36);
      v31 = v4;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v30, v10, v11, v12, v13);
      v18 = v30;
      v31 = v17;
      v20 = *(v7 + 2);
      v19 = *(v7 + 3);
      if (v20 >= v19 >> 1)
      {
        v27 = v30;
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
        v18 = v27;
        v7 = v22;
      }

      *(v7 + 2) = v20 + 1;
      v21 = &v7[48 * v20];
      v21[2] = v18;
      v21[3].n128_u64[0] = v14;
      v21[3].n128_u64[1] = v15;
      v21[4].n128_u64[0] = v16;
      v21[4].n128_u8[8] = v17;
      v9 += 48;
      --v8;
    }

    while (v8);

    v2 = v29;
    v6 = v28;
  }

  *v2 = v7;
  *(v2 + 8) = v4;
  *(v2 + 12) = v5;
  *(v2 + 16) = v6;
  result.stops._rawValue = v23;
  result.headroom.value = v26;
  result.colorSpace = v24;
  *result.gap9 = *(&v24 + 1);
  result.gap9[2] = HIBYTE(v24);
  result.headroom.is_nil = v25;
  return result;
}

uint64_t outlined consume of _ShapeStyle_Pack.Fill.AnimatableData(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 > 4u)
  {
    if (a11 != 5)
    {
      if (a11 == 6)
      {
      }

      else if (a11 != 7)
      {
        return v12;
      }
    }

    goto LABEL_13;
  }

  if (a11 == 2 || (a11 != 3 ? (v11 = a11 == 4) : (v11 = 1), v11))
  {
LABEL_13:
  }

  return v12;
}

void _AspectRatioLayout.spaceOffered(to:in:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  if (one-time initialization token for unspecified != -1)
  {
    v19 = a3;
    swift_once();
    a3 = v19;
  }

  v15 = byte_1ED52ECF8;
  v16 = byte_1ED52ED08;
  if (v12)
  {
    if (!byte_1ED52ECF8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*&static _ProposedSize.unspecified != v11)
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_11;
    }
  }

  if ((v14 & 1) == 0)
  {
    if (*&qword_1ED52ED00 != v13)
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_11;
    }

LABEL_20:
    *a5 = v11;
    *(a5 + 8) = v12;
    *(a5 + 16) = v13;
    goto LABEL_21;
  }

  if (byte_1ED52ED08)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (a4)
  {
    v24 = v9;
    v25 = v10;
    v20 = *&a3;
    v21 = 1;
    v22 = a3;
    v23 = 1;
    LayoutProxy.size(in:)(&v20);
  }

  v20 = v11;
  v21 = v12;
  v22 = *&v13;
  v23 = v14;
  if ((a4 & 0x100) != 0)
  {
    CGSize.scaledToFill(_:)();
  }

  else
  {
    CGSize.scaledToFit(_:)();
  }

  v14 = 0;
  *a5 = v17;
  *(a5 + 8) = 0;
  *(a5 + 16) = v18;
LABEL_21:
  *(a5 + 24) = v14;
}

uint64_t protocol witness for UnaryLayout.sizeThatFits(in:context:child:) in conformance _AspectRatioLayout(uint64_t a1, uint64_t a2, unsigned int *a3, __n128 a4, __n128 a5)
{
  if (*(v5 + 9))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return _AspectRatioLayout.sizeThatFits(in:context:child:)(a1, a4, a5, a2, a3, *v5, v6 | *(v5 + 8));
}

uint64_t _AspectRatioLayout.sizeThatFits(in:context:child:)(uint64_t a1, __n128 a2, __n128 a3, uint64_t a4, unsigned int *a5, uint64_t a6, __int16 a7)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = a5[1];
  v12 = a5[2];
  v24 = *a5;
  v25 = v11;
  v26 = v12;
  v18 = __PAIR64__(v11, v24);
  v19 = v12;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  _AspectRatioLayout.spaceOffered(to:in:)(&v18, &v14, a6, a7 & 0x101, &v20);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  return LayoutProxy.size(in:)(&v14);
}

double _AspectRatioLayout.placement(of:in:)@<D0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *a2;
  v35 = *(a2 + 1);
  v36 = a2[3];
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v39 = *(a2 + 2);
  v12 = *(a2 + 48);
  v41 = *a1;
  v42 = v8;
  v34 = v9;
  v37 = v10;
  v38 = v11;
  v40 = v12;
  PlacementContext.proposedSize.getter(&v30);
  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  _AspectRatioLayout.spaceOffered(to:in:)(&v41, &v26, a3, a4 & 0x101, &v43);
  v13 = v43;
  v14 = v44;
  v15 = v45;
  v16 = v46;
  if (v12)
  {
    InputValue = AGGraphGetInputValue();
    v18 = *InputValue;
    v19 = InputValue[1];
  }

  else
  {
    v18 = v10;
    v19 = v11;
  }

  result = v18 * 0.5;
  *a5 = v13;
  *(a5 + 8) = v14;
  *(a5 + 16) = v15;
  *(a5 + 24) = v16;
  __asm { FMOV            V2.2D, #0.5 }

  *(a5 + 32) = _Q2;
  *(a5 + 48) = result;
  *(a5 + 56) = v19 * 0.5;
  return result;
}

double protocol witness for UnaryLayout.placement(of:in:) in conformance _AspectRatioLayout@<D0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return _AspectRatioLayout.placement(of:in:)(a1, a2, *v3, v4 | *(v3 + 8), a3);
}

__n128 protocol witness for ImageProvider.resolve(in:) in conformance Image.ResizableProvider@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  (*(**v1 + 80))();
  v4 = *(v1 + 8);
  *(a1 + 88) = *(v1 + 24);
  *(a1 + 72) = v4;
  *(a1 + 104) = v3;
  Image.Resolved.image.didset();
  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020DefaultRenderingModeV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020DefaultRenderingModeV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020DefaultRenderingModeV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultRenderingModeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultRenderingModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultRenderingModeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultRenderingModeKey>>);
    }
  }
}

void Image.Resolved.image.didset()
{
  v1 = *(v0 + 186);
  v2 = *(v0 + 8);
  if (v2 == 255)
  {
    v10 = 0;
    goto LABEL_7;
  }

  if (v2 != 2)
  {
    v10 = *(v0 + 64) ^ 1;
LABEL_7:

    v8 = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = v10;
    if ((v1 & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v9 = v8 & 0xFD;
    goto LABEL_9;
  }

  v3 = *(*v0 + 32);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 16);
  outlined copy of Image.Location(v3);
  v6 = v4;
  outlined copy of Image.Location(v3);
  v11 = v3;
  _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v5 styleMask], &v11, &v12);

  outlined consume of Image.Location(v3);
  v7 = v12;
  LOWORD(v6) = v13;
  v8 = v14;

  *(v0 + 176) = v7;
  *(v0 + 184) = v6;
  if ((v1 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = v8 | 2;
LABEL_9:
  *(v0 + 186) = v9;
}

void specialized StatefulRule<>.update<A>(to:)(void *__src)
{
  v10[65] = *MEMORY[0x1E69E9840];
  memcpy(v9, __src, 0x201uLL);
  v8[4] = v9;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v10[0] = v3;
      v10[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v10, __src, 0x201uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA09_PositionC0VG_Tt1B5Tm(v10, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>, v8);
    AGGraphSetOutputValue();
  }
}

{
  v10[64] = *MEMORY[0x1E69E9840];
  memcpy(v9, __src, 0x1F9uLL);
  v8[4] = v9;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;

    if (v5 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);
      v10[0] = v3;
      v10[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v10, __src, 0x1F9uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v10, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>, v8);
    AGGraphSetOutputValue();
  }
}

{
  v10[64] = *MEMORY[0x1E69E9840];
  memcpy(v9, __src, 0x1F9uLL);
  v8[4] = v9;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v10[0] = v3;
      v10[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v10, __src, 0x1F9uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v10, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>, v8);
    AGGraphSetOutputValue();
  }
}

{
  v10[64] = *MEMORY[0x1E69E9840];
  memcpy(v9, __src, 0x1F9uLL);
  v8[4] = v9;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;

    if (v5 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);
      v10[0] = v3;
      v10[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v10, __src, 0x1F9uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v10, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>>, v8);
    AGGraphSetOutputValue();
  }
}

{
  v10[64] = *MEMORY[0x1E69E9840];
  memcpy(v9, __src, 0x1F9uLL);
  v8[4] = v9;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;

    if (v5 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);
      v10[0] = v3;
      v10[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v10, __src, 0x1F9uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v10, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<MoveTransition.MoveLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<MoveTransition.MoveLayout>>, v8);
    AGGraphSetOutputValue();
  }
}

{
  v10[69] = *MEMORY[0x1E69E9840];
  memcpy(v9, __src, 0x221uLL);
  v8[4] = v9;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;

    if (v5 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);
      v10[0] = v3;
      v10[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v10, __src, 0x221uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA28AutomaticPaddingViewModifier33_47C1BD8C61550BB60F4F3D12F752D53DLLV0qC0V07WrappedC0VG_Tt1B5Tm(v10, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>>, v8);
    AGGraphSetOutputValue();
  }
}

{
  v10[65] = *MEMORY[0x1E69E9840];
  memcpy(v9, __src, 0x201uLL);
  v8[4] = v9;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v10[0] = v3;
      v10[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v10, __src, 0x201uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA09_PositionC0VG_Tt1B5Tm(v10, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_PositionLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_PositionLayout>>, v8);
    AGGraphSetOutputValue();
  }
}

{
  v10[64] = *MEMORY[0x1E69E9840];
  memcpy(v9, __src, 0x1F9uLL);
  v8[4] = v9;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v10[0] = v3;
      v10[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v10, __src, 0x1F9uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v10, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_AlignmentLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_AlignmentLayout>>, v8);
    AGGraphSetOutputValue();
  }
}

{
  v10[52] = *MEMORY[0x1E69E9840];
  memcpy(v9, __src, 0x199uLL);
  v8[4] = v9;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
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
      type metadata accessor for LeafLayoutEngine<AnimatedShape<PartialContainerRelativeShape>>(0);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v10[0] = v3;
      v10[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v10, __src, 0x199uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA13AnimatedShapeVyAA024PartialContainerRelativeH0VGG_Tt1B5(v10, v8);
    AGGraphSetOutputValue();
  }
}

{
  v10[70] = *MEMORY[0x1E69E9840];
  memcpy(v9, __src, 0x229uLL);
  v8[4] = v9;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
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
      type metadata accessor for LeafLayoutEngine<AnimatedShape<ConcentricRectangle>>(0);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v10[0] = v3;
      v10[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v10, __src, 0x229uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA13AnimatedShapeVyAA19ConcentricRectangleVGG_Tt1B5(v10, v8);
    AGGraphSetOutputValue();
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020DefaultRenderingModeI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<D0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v20);
        outlined init with take of AnyTrackedValue(v20, v21);
        v12 = v22;
        v13 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        (v13[1])(&type metadata for Image.TemplateRenderingMode, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v21);
      }

      else
      {
        v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v16)
        {
          v17 = *(v16 + 72);
        }

        else
        {
          v17 = 1;
        }

        *a2 = v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultRenderingModeKey>>(0);
        v22 = v18;
        v23 = &protocol witness table for TrackedValue<A>;
        LOBYTE(v21[0]) = v17;
        specialized Dictionary.subscript.setter(v21, v8);
      }

      goto LABEL_14;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  v14 = 1;
  *(v5 + 56) = 1;
  v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v15)
  {
    v14 = *(v15 + 72);
  }

  *a2 = v14;
LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void specialized UnaryLayoutComputer.updateValue()()
{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = CurrentAttribute;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = *(Value + 9);
    v8 = *(Value + 8);
    __src = *Value;
    v10 = v8;
    v11 = v7;
    v12 = v3;
    v13 = v3;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    v17 = v2;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v21 = 1;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v25 = 1;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v29 = 1;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v36 = 1;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v43 = 1;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v50 = 1;
    specialized StatefulRule<>.update<A>(to:)(&__src);
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = CurrentAttribute;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    __src = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v31 = 1;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v38 = 1;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v45 = 1;
    specialized StatefulRule<>.update<A>(to:)(&__src);
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = CurrentAttribute;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = Value[1];
    __src[0] = *Value;
    __src[1] = v7;
    v9 = v3;
    v10 = v3;
    v11 = v5;
    v12 = v3;
    v13 = v4;
    v14 = v2;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v18 = 1;
    v21 = 0u;
    v19 = 0u;
    v20 = 0u;
    v22 = 1;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v26 = 1;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v33 = 1;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v40 = 1;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v47 = 1;
    specialized StatefulRule<>.update<A>(to:)(__src);
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = CurrentAttribute;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    __src[0] = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v31 = 1;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v38 = 1;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v45 = 1;
    specialized StatefulRule<>.update<A>(to:)(__src);
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = CurrentAttribute;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    __src[0] = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v31 = 1;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v38 = 1;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v45 = 1;
    specialized StatefulRule<>.update<A>(to:)(__src);
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = CurrentAttribute;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = *(Value + 40);
    __src[0] = *Value;
    v9 = *(Value + 8);
    v10 = *(Value + 24);
    v11 = v7;
    v12 = v3;
    v13 = v3;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    v17 = v2;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v21 = 1;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v25 = 1;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v29 = 1;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v36 = 1;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v43 = 1;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v50 = 1;
    specialized StatefulRule<>.update<A>(to:)(__src);
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = CurrentAttribute;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    LOBYTE(__src) = 1;
    __src = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v31 = 1;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v38 = 1;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v45 = 1;
    specialized StatefulRule<>.update<A>(to:)(&__src);
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = CurrentAttribute;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    __src[0] = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v31 = 1;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v38 = 1;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v45 = 1;
    specialized StatefulRule<>.update<A>(to:)(__src);
  }
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for UnaryLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>);
    }
  }
}

id *DynamicContainer._ItemInfo.deinit()
{

  v1 = *(*v0 + 26);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v3 = *(*v0 + 27);
  v4 = swift_getAssociatedTypeWitness();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t destroy for DynamicLayoutComputer(uint64_t a1)
{
}

uint64_t Shape.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  return _ShapeView.init(shape:style:fillStyle:)(v9, v11, 256, a1, &type metadata for ForegroundStyle, a2, &protocol witness table for ForegroundStyle, a3);
}

uint64_t CGSize.scaledToFit(_:)()
{
  if (one-time initialization token for unspecified != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(__int128 *a1)
{
  v2 = a1[5];
  v24 = a1[4];
  v25[0] = v2;
  *(v25 + 12) = *(a1 + 92);
  v3 = a1[1];
  v20 = *a1;
  v21 = v3;
  v4 = a1[3];
  v22 = a1[2];
  v23 = v4;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 3;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v18, v16, v1);
  v5 = swift_allocObject();
  v6 = v25[0];
  *(v5 + 80) = v24;
  *(v5 + 96) = v6;
  *(v5 + 108) = *(v25 + 12);
  v7 = v21;
  *(v5 + 16) = v20;
  *(v5 + 32) = v7;
  v8 = v23;
  *(v5 + 48) = v22;
  *(v5 + 64) = v8;
  v9 = v5 | 0x3000000000000000;
  v10 = *(v1 + 108);
  v11 = *(v1 + 200);
  v12 = *(v1 + 208);
  v13 = *(v1 + 216);
  v14 = *(v1 + 224);
  outlined init with copy of GraphicsImage(&v20, v16);
  outlined consume of DisplayList.Item.Value(v11, v12, v13, v14);
  *(v1 + 200) = v9;
  *(v1 + 208) = v10;
  *(v1 + 216) = 0;
  *(v1 + 224) = 0;
  return _ShapeStyle_RenderedLayers.endLayer(shape:)(v1);
}

uint64_t sub_18D129368()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    outlined consume of GraphicsImage.Contents(*(v0 + 16), v1);
  }

  return swift_deallocObject();
}

void _ShapeStyle_RenderedShape.render(paint:)(uint64_t a1)
{
  v2 = v1;
  v62 = *(v1 + 104);
  if (v62 >> 29)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v99 = _Q0;
    v100 = 2143289344;
    _ShapeStyle_RenderedShape.render(color:)(&v99);
    v29 = *(v1 + 176);
    v30 = *(v1 + 208);
    v91 = *(v1 + 192);
    v92[0] = v30;
    *(v92 + 12) = *(v1 + 220);
    v31 = *(v1 + 176);
    v90[0] = *(v1 + 160);
    v90[1] = v31;
    v87 = v91;
    v88 = v30;
    v32 = v31;
    v89 = *(v1 + 224);
    v86 = v31;
    v93 = 0uLL;
    v33 = *(v1 + 208);
    v97 = *(v1 + 224);
    v95 = v91;
    v96 = v33;
    v94 = v29;
    v98 = 0;
    v83 = 0uLL;
    v84 = v29;
    v34 = *(&v91 + 1);
    v85 = v91;
    v35 = v33;
    v36 = v97;
    outlined init with copy of DisplayList.Item(v90, &v79);
    outlined init with copy of DisplayList.Item(&v93, &v79);
    v101.origin.x = 0.0;
    v101.origin.y = 0.0;
    v101.size = v32;
    IsNull = CGRectIsNull(v101);
    if (IsNull)
    {
      width = 0.0;
    }

    else
    {
      width = v32.width;
    }

    if (IsNull)
    {
      height = 0.0;
    }

    else
    {
      height = v32.height;
    }

    if (IsNull)
    {
      v40 = 6;
    }

    else
    {
      v40 = 0;
    }

    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = width;
    *(v41 + 40) = height;
    *(v41 + 48) = v40;
    *(v41 + 56) = a1;
    *(v41 + 64) = 256;
    v42 = v41 | 0x4000000000000000;
    v43 = *(v2 + 108);

    outlined consume of DisplayList.Item.Value(v34, v35, *(&v35 + 1), v36);
    v44 = swift_allocObject();
    v66[0] = 0uLL;
    *&v67[16] = v89;
    v66[2] = v87;
    *v67 = v88;
    v66[1] = v86;
    *&v67[24] = 0;
    v81 = v87;
    *v82 = v88;
    *&v82[12] = *&v67[12];
    v79 = 0uLL;
    v80 = v86;
    outlined init with copy of DisplayList.Item(v66, v73);
    DisplayList.init(_:)(&v79, v44 + 16);
    *(v44 + 32) = 0;
    *&v69 = v85;
    *(&v69 + 1) = v42;
    v71 = 0;
    v70 = v43;
    v72 = 0;
    v81 = v69;
    *v82 = v43;
    *&v82[12] = v43 >> 96;
    v68[0] = v83;
    v68[1] = v84;
    v79 = v83;
    v80 = v84;
    outlined init with copy of DisplayList.Item(v68, v73);
    DisplayList.init(_:)(&v79, &v63);
    v73[0] = 0;
    v73[1] = 0;
    v74 = v86;
    v75 = v87;
    v76 = v88;
    v77 = v89;
    v78 = 0;
    outlined destroy of DisplayList.Item(v73);
    v45 = v63;
    v46 = v64 | (v65 << 32) | 0x40000000;
    outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
    *(v2 + 200) = v44;
    *(v2 + 208) = 0x700000000;
    *(v2 + 216) = v45;
    *(v2 + 224) = v46;
    v79 = v83;
    v80 = v84;
    *&v81 = v85;
    *(&v81 + 1) = v42;
    *&v82[16] = 0;
    *v82 = v43;
    *&v82[24] = 0;
    outlined destroy of DisplayList.Item(&v79);
  }

  else
  {
    v4 = *v1;
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v61 = *(v1 + 40);
    v52 = *(v1 + 48);
    v51 = *(v1 + 56);
    v55 = *(v1 + 72);
    v56 = *(v1 + 64);
    v11 = *(v1 + 80);
    v10 = *(v1 + 88);
    v12 = *(v2 + 96);
    v13 = swift_allocObject();
    v57 = v4;
    v58 = v5;
    *(v13 + 16) = v4;
    *(v13 + 24) = v5;
    v59 = v6;
    v60 = v7;
    *(v13 + 32) = v6;
    *(v13 + 40) = v7;
    *(v13 + 48) = v8;
    *(v13 + 56) = a1;
    *(v13 + 64) = BYTE1(v8) & 1;
    *(v13 + 65) = BYTE2(v8) & 1;
    v14 = *(v2 + 108);
    v50 = *(v2 + 200);
    v49 = *(v2 + 208);
    v48 = *(v2 + 216);
    v47 = *(v2 + 224);
    *(v2 + 200) = v13 | 0x4000000000000000;
    *(v2 + 208) = v14;
    *(v2 + 216) = 0;
    *(v2 + 224) = 0;
    outlined copy of _ShapeStyle_RenderedShape.Shape(v4, v5, v6, v7, v8, v61, v52, v51, v56, v55, v11, v10, v12, v62);
    v53 = v10;
    v54 = v11;
    outlined copy of _ShapeStyle_RenderedShape.Shape(v4, v5, v6, v7, v8, v61, v52, v51, v56, v55, v11, v10, v12, v62);

    outlined consume of DisplayList.Item.Value(v50, v49, v48, v47);
    v15 = *(v2 + 144);
    if (v15)
    {
      v16 = *(v2 + 152);
      v17 = *(v2 + 208);
      v18 = *(v2 + 216);
      v19 = *(v2 + 224);
      v20 = *(v2 + 192);
      v21 = *(v2 + 200);
      v93 = 0uLL;
      v94 = *(v2 + 176);
      *&v95 = v20;
      *(&v95 + 1) = v21;
      *&v96 = v17;
      *(&v96 + 1) = v18;
      v97 = v19;
      v98 = 0;
      swift_retain_n();
      outlined copy of DisplayList.Item.Value(v21, v17, v18, v19);
      DisplayList.init(_:)(&v93, v90);
      v22 = *&v90[0];
      v23 = WORD4(v90[0]) | (HIDWORD(v90[0]) << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
      *(v2 + 200) = v15;
      *(v2 + 208) = v16 | 0x1200000000;
      *(v2 + 216) = v22;
      *(v2 + 224) = v23;
      LOBYTE(v93) = *(v2 + 236);
      DisplayList.Item.canonicalize(options:)(&v93);
      outlined consume of _ShapeStyle_RenderedShape.Shape(v57, v58, v59, v60, v8, v61, v52, v51, v56, v55, v54, v53, v12, v62);

      *(v2 + 144) = 0;
      *(v2 + 152) = 0;
    }

    else
    {
      outlined consume of _ShapeStyle_RenderedShape.Shape(v57, v5, v6, v7, v8, v61, v52, v51, v56, v55, v11, v10, v12, v62);
    }
  }
}

uint64_t sub_18D1298CC()
{

  return swift_deallocObject();
}

uint64_t _ShapeView.init(shape:style:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v15 = type metadata accessor for _ShapeView(0, v18);
  result = (*(*(a5 - 8) + 32))(a8 + *(v15 + 52), a2, a5);
  v17 = (a8 + *(v15 + 56));
  *v17 = a3 & 1;
  v17[1] = HIBYTE(a3) & 1;
  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultRenderingModeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultRenderingModeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultRenderingModeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t DynamicViewList.Item.__deallocating_deinit()
{
  DynamicViewList.Item.deinit();

  return swift_deallocClassInstance();
}

void specialized InterpolatedDisplayList.updateValue()()
{
  v1 = v0;
  v2 = v598;
  v3 = v594;
  v4 = v583;
  v5 = v582;
  v602 = *MEMORY[0x1E69E9840];
  v6 = *(v0 + 264);
  if (v6 != *AGGraphGetValue() >> 1)
  {
    *(v1 + 264) = *AGGraphGetValue() >> 1;
    v7 = *(v1 + 104);
    v583[2] = *(v1 + 88);
    v583[3] = v7;
    v8 = *(v1 + 72);
    v583[0] = *(v1 + 56);
    v583[1] = v8;
    v9 = *(v1 + 168);
    v583[6] = *(v1 + 152);
    v583[7] = v9;
    v10 = *(v1 + 136);
    v583[4] = *(v1 + 120);
    v583[5] = v10;
    *(&v583[10] + 11) = *(v1 + 227);
    v11 = *(v1 + 216);
    v12 = *(v1 + 184);
    v583[9] = *(v1 + 200);
    v583[10] = v11;
    v583[8] = v12;
    outlined destroy of GlassEntryView?(v583, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved, MEMORY[0x1E69E6720]);
    _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(__dst);
    v13 = __dst[9];
    *(v1 + 184) = __dst[8];
    *(v1 + 200) = v13;
    *(v1 + 216) = __dst[10];
    *(v1 + 227) = *(&__dst[10] + 11);
    v14 = __dst[5];
    *(v1 + 120) = __dst[4];
    *(v1 + 136) = v14;
    v15 = __dst[7];
    *(v1 + 152) = __dst[6];
    *(v1 + 168) = v15;
    v16 = __dst[1];
    *(v1 + 56) = __dst[0];
    *(v1 + 72) = v16;
    v17 = __dst[3];
    *(v1 + 88) = __dst[2];
    *(v1 + 104) = v17;
    *(v1 + 272) = 0;
    (*(**v1 + 88))();
  }

  v18 = v593;
  v19 = &v585;
  Value = AGGraphGetValue();
  LOBYTE(v22) = v21;
  v23 = Value[3];
  v25 = *Value;
  v24 = Value[1];
  v600[2] = Value[2];
  v600[3] = v23;
  v600[0] = v25;
  v600[1] = v24;
  v26 = Value[7];
  v28 = Value[4];
  v27 = Value[5];
  v600[6] = Value[6];
  v600[7] = v26;
  v600[4] = v28;
  v600[5] = v27;
  v30 = Value[9];
  v29 = Value[10];
  v31 = *(Value + 171);
  v600[8] = Value[8];
  *(v601 + 11) = v31;
  v600[9] = v30;
  v601[0] = v29;
  v32 = Value[9];
  v598[8] = Value[8];
  v598[9] = v32;
  v599[0] = Value[10];
  *(v599 + 11) = *(Value + 171);
  v33 = Value[5];
  v598[4] = Value[4];
  v598[5] = v33;
  v34 = Value[7];
  v598[6] = Value[6];
  v598[7] = v34;
  v35 = Value[1];
  v598[0] = *Value;
  v598[1] = v35;
  v36 = Value[3];
  v598[2] = Value[2];
  v598[3] = v36;
  type metadata accessor for CGSize(0);
  outlined init with copy of Image.Resolved(v600, __dst);
  v37 = AGGraphGetValue();
  v38 = *v37;
  v39 = v37[1];
  v40 = AGGraphGetValue();
  v41 = *v40;
  v538 = *v40;
  v539 = *(v40 + 8);
  if (v539)
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v41, &v595);
  }

  else
  {

    v43 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v42);
    if (!v43)
    {
      if (one-time initialization token for defaultValue != -1)
      {
        goto LABEL_470;
      }

      goto LABEL_8;
    }

    v44 = *(v43 + 84);
    v45 = *(v43 + 20);
    v46 = v45 | (v44 << 32);
    v47 = *(v43 + 86);
    v48 = *(v43 + 87);
    v49 = v43[11];
    v50 = *(v43 + 24);
    *&v595 = v43[9];
    BYTE12(v595) = v44;
    DWORD2(v595) = v45;
    v51 = *(v43 + 85);
    BYTE13(v595) = v51;
    BYTE14(v595) = v47;
    HIBYTE(v595) = v48;
    v596 = v49;
    v597 = v50;
    v52 = v595;
LABEL_9:
    outlined copy of ContentTransition.Storage(v52, v46, v51);
  }

  v569 = ++static DisplayList.Version.lastValue;
  v53 = *(v1 + 200);
  *(v19 + 400) = *(v1 + 184);
  *(v19 + 416) = v53;
  *(v19 + 432) = *(v1 + 216);
  *(v18 + 171) = *(v1 + 227);
  v54 = *(v1 + 136);
  *(v18 + 64) = *(v1 + 120);
  *(v18 + 80) = v54;
  v55 = *(v1 + 168);
  *(v18 + 96) = *(v1 + 152);
  *(v18 + 112) = v55;
  v56 = *(v1 + 72);
  *v18 = *(v1 + 56);
  *(v18 + 16) = v56;
  v57 = *(v1 + 104);
  *(v18 + 32) = *(v1 + 88);
  *(v18 + 48) = v57;
  v58 = *(v1 + 200);
  *(v18 + 320) = *(v1 + 184);
  *(v18 + 336) = v58;
  *(v18 + 352) = *(v1 + 216);
  *(v3 + 171) = *(v1 + 227);
  v59 = *(v1 + 136);
  *(v3 + 64) = *(v1 + 120);
  *(v3 + 80) = v59;
  v60 = *(v1 + 168);
  *(v3 + 96) = *(v1 + 152);
  *(v3 + 112) = v60;
  v61 = *(v1 + 72);
  *v3 = *(v1 + 56);
  *(v3 + 16) = v61;
  v62 = *(v1 + 104);
  *(v3 + 32) = *(v1 + 88);
  *(v3 + 48) = v62;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v594) != 1)
  {
    v63 = *(v18 + 144);
    *(v19 + 208) = *(v18 + 128);
    *(v19 + 224) = v63;
    *(v19 + 240) = *(v18 + 160);
    *(v19 + 251) = *(v18 + 171);
    v64 = *(v18 + 80);
    *(v19 + 144) = *(v18 + 64);
    *(v19 + 160) = v64;
    v65 = *(v18 + 112);
    *(v19 + 176) = *(v18 + 96);
    *(v19 + 192) = v65;
    v66 = *(v18 + 16);
    *(v19 + 80) = *v18;
    *(v19 + 96) = v66;
    v67 = *(v18 + 48);
    *(v19 + 112) = *(v18 + 32);
    *(v19 + 128) = v67;
    if (v22)
    {
      v73 = v2[9];
      __dst[8] = v2[8];
      __dst[9] = v73;
      __dst[10] = v2[10];
      *(&__dst[10] + 11) = *(v2 + 171);
      v74 = v2[5];
      __dst[4] = v2[4];
      __dst[5] = v74;
      v75 = v2[7];
      __dst[6] = v2[6];
      __dst[7] = v75;
      v76 = v2[1];
      __dst[0] = *v2;
      __dst[1] = v76;
      v77 = v2[3];
      __dst[2] = v2[2];
      __dst[3] = v77;
      v78 = *(v18 + 144);
      *(v4 + 128) = *(v18 + 128);
      *(v4 + 144) = v78;
      *(v4 + 160) = *(v18 + 160);
      *(v4 + 171) = *(v18 + 171);
      v79 = *(v18 + 80);
      *(v4 + 64) = *(v18 + 64);
      *(v4 + 80) = v79;
      v80 = *(v18 + 112);
      *(v4 + 96) = *(v18 + 96);
      *(v4 + 112) = v80;
      v81 = *(v18 + 16);
      *v4 = *v18;
      *(v4 + 16) = v81;
      v82 = *(v18 + 48);
      *(v4 + 32) = *(v18 + 32);
      *(v4 + 48) = v82;
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v593, v582, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved, MEMORY[0x1E69E6720]);
      if (!specialized static Image.Resolved.== infix(_:_:)(v583, __dst))
      {
        goto LABEL_384;
      }
    }

    else
    {
      v68 = *(v18 + 144);
      __dst[8] = *(v18 + 128);
      __dst[9] = v68;
      __dst[10] = *(v18 + 160);
      *(&__dst[10] + 11) = *(v18 + 171);
      v69 = *(v18 + 80);
      __dst[4] = *(v18 + 64);
      __dst[5] = v69;
      v70 = *(v18 + 112);
      __dst[6] = *(v18 + 96);
      __dst[7] = v70;
      v71 = *(v18 + 16);
      __dst[0] = *v18;
      __dst[1] = v71;
      v72 = *(v18 + 48);
      __dst[2] = *(v18 + 32);
      __dst[3] = v72;
      outlined init with copy of Image.Resolved(__dst, v583);
    }

    v83 = *(v19 + 224);
    __dst[8] = *(v19 + 208);
    __dst[9] = v83;
    __dst[10] = *(v19 + 240);
    *(&__dst[10] + 11) = *(v19 + 251);
    v84 = *(v19 + 160);
    __dst[4] = *(v19 + 144);
    __dst[5] = v84;
    v85 = *(v19 + 192);
    __dst[6] = *(v19 + 176);
    __dst[7] = v85;
    v86 = *(v19 + 96);
    __dst[0] = *(v19 + 80);
    __dst[1] = v86;
    v87 = *(v19 + 128);
    __dst[2] = *(v19 + 112);
    __dst[3] = v87;
    outlined destroy of Image.Resolved(__dst);
  }

LABEL_15:
  v88 = *(v1 + 200);
  __dst[8] = *(v1 + 184);
  __dst[9] = v88;
  __dst[10] = *(v1 + 216);
  *(&__dst[10] + 11) = *(v1 + 227);
  v89 = *(v1 + 136);
  __dst[4] = *(v1 + 120);
  __dst[5] = v89;
  v90 = *(v1 + 168);
  __dst[6] = *(v1 + 152);
  __dst[7] = v90;
  v91 = *(v1 + 72);
  __dst[0] = *(v1 + 56);
  __dst[1] = v91;
  v92 = *(v1 + 104);
  __dst[2] = *(v1 + 88);
  __dst[3] = v92;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(__dst) == 1)
  {
    *(v1 + 272) = v569;
  }

  v93 = 0;
  v549 = 0;
  v596 = 0;
LABEL_18:
  v94 = *(v1 + 184);
  v95 = *(v1 + 216);
  *(v5 + 144) = *(v1 + 200);
  *(v5 + 160) = v95;
  *(v5 + 171) = *(v1 + 227);
  v96 = *(v1 + 120);
  v97 = *(v1 + 152);
  *(v5 + 80) = *(v1 + 136);
  *(v5 + 96) = v97;
  *(v5 + 112) = *(v1 + 168);
  *(v5 + 128) = v94;
  v98 = *(v1 + 72);
  v582[0] = *(v1 + 56);
  v582[1] = v98;
  v582[2] = *(v1 + 88);
  *(v5 + 48) = *(v1 + 104);
  *(v5 + 64) = v96;
  outlined destroy of GlassEntryView?(v582, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved, MEMORY[0x1E69E6720]);
  v100 = v2[8];
  v99 = v2[9];
  v101 = v2[7];
  *(v4 + 128) = v100;
  *(v4 + 144) = v99;
  v102 = v2[9];
  *(v4 + 160) = v2[10];
  *(v4 + 171) = *(v2 + 171);
  v104 = v2[4];
  v103 = v2[5];
  v105 = v2[3];
  *(v4 + 64) = v104;
  *(v4 + 80) = v103;
  v106 = v2[5];
  v108 = v2[6];
  v107 = v2[7];
  *(v4 + 96) = v108;
  *(v4 + 112) = v107;
  v109 = v2[1];
  *v4 = *v2;
  *(v4 + 16) = v109;
  v110 = v2[3];
  v112 = *v2;
  v111 = v2[1];
  v113 = v2[2];
  *(v4 + 32) = v113;
  *(v4 + 48) = v110;
  __dst[8] = v100;
  __dst[9] = v102;
  __dst[10] = v2[10];
  *(&__dst[10] + 11) = *(v2 + 171);
  __dst[4] = v104;
  __dst[5] = v106;
  __dst[6] = v108;
  __dst[7] = v101;
  __dst[0] = v112;
  __dst[1] = v111;
  __dst[2] = v113;
  __dst[3] = v105;
  _ViewInputs.base.modify();
  v114 = __dst[9];
  *(v1 + 184) = __dst[8];
  *(v1 + 200) = v114;
  *(v1 + 216) = __dst[10];
  *(v1 + 227) = *(&__dst[10] + 11);
  v115 = __dst[5];
  *(v1 + 120) = __dst[4];
  *(v1 + 136) = v115;
  v116 = __dst[7];
  *(v1 + 152) = __dst[6];
  *(v1 + 168) = v116;
  v117 = __dst[1];
  *(v1 + 56) = __dst[0];
  *(v1 + 72) = v117;
  v118 = __dst[3];
  *(v1 + 88) = __dst[2];
  *(v1 + 104) = v118;
  *(v1 + 248) = v38;
  *(v1 + 256) = v39;
  v3 = v595;
  v5 = DWORD2(v595) | (BYTE12(v595) << 32);
  v119 = BYTE13(v595);
  v120 = BYTE14(v595);
  v585 = v595;
  *&v586 = v93;
  DWORD2(v586) = v597;
  outlined init with copy of Image.Resolved(v583, &v589);

  ContentTransition.State.rasterizationOptions.getter(&v578);
  v568 = *v1;
  v121 = *(v1 + 272);
  if (v121)
  {
    LODWORD(v121) = (2 * ((33 * (v121 >> 16)) ^ v121)) | 1;
  }

  LOWORD(v575) = v121;
  *&v589 = v3;
  BYTE12(v589) = BYTE4(v5);
  DWORD2(v589) = v5;
  BYTE13(v589) = v119;
  BYTE14(v589) = v120;
  outlined copy of ContentTransition.Storage(v3, v5, v119);
  v122 = 1.0 / *AGGraphGetValue();
  LODWORD(v585) = v578;
  WORD2(v585) = v579;
  DWORD2(v585) = v580;
  BYTE12(v585) = v581;
  v18 = v568;
  (*(*v568 + 128))(&v575, &v589, v93, v549, &v585, *(v1 + 54), v122);

  outlined consume of ContentTransition.Storage(v589, DWORD2(v589) | (BYTE12(v589) << 32), SBYTE13(v589));
  type metadata accessor for CGPoint(0);
  v123 = AGGraphGetValue();
  v124 = *v123;
  v125 = v123[1];
  v126 = AGGraphGetValue();
  v38 = v124 - *v126;
  v39 = v125 - v126[1];
  v127 = 0.0;
  v128 = 0.0;
  v129 = v38;
  v130 = v39;
  if ((*(v1 + 52) & 1) == 0)
  {
    v131 = AGGraphGetValue();
    v132 = *v131;
    v133 = v131[1];
    v134 = *AGGraphGetValue();
    v135 = v134 * 0.5;
    v136 = v132 + v134 * 0.5;
    if (v134 == 1.0)
    {
      v137 = floor(v136);
      v138 = floor(v133 + v135);
    }

    else
    {
      v137 = v134 * floor(v136 / v134);
      v138 = v134 * floor((v133 + v135) / v134);
    }

    v139 = AGGraphGetValue();
    v129 = v137 - *v139;
    v130 = v138 - v139[1];
    v127 = v129 - v38;
    v128 = v130 - v39;
  }

  if (*(v1 + 48) == *MEMORY[0x1E698D3F8])
  {
    v140 = MEMORY[0x1E69E7CC0];
    v575 = MEMORY[0x1E69E7CC0];
    v576 = 0;
    v577 = 0;
    if (*(v1 + 53))
    {
      v141 = 0;
      v22 = 0;
LABEL_30:
      v145 = swift_allocObject();
      *(v145 + 16) = v568;
      *(v145 + 24) = v129;
      *(v145 + 32) = v130;
      *(v145 + 40) = v127;
      *(v145 + 48) = v128;
      *(v19 + 80) = 0u;
      *(v19 + 96) = 0u;
      *&v591 = v569;
      *(&v591 + 1) = v145;
      *v592 = 0x1100000000;
      *&v592[8] = v140;
      *&v592[16] = v141 | v22 | 0x40000000;
      *&v592[24] = 0;

      DisplayList.init(_:)(&v589, &v585);
      v575 = v585;
      v576 = WORD4(v585);
      v577 = HIDWORD(v585);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v142 = AGGraphGetValue();
  v143 = *v142;
  v22 = *(v142 + 8);
  v144 = *(v142 + 12);
  v575 = *v142;
  v576 = v22;
  v577 = v144;
  if (*(v1 + 53))
  {
    v141 = v144 << 32;
    v140 = v143;

    goto LABEL_30;
  }

  v567 = *(v1 + 32);
  v553 = v143;

  if ((v22 & 0x10) != 0)
  {
    v576 = 0;
    v577 = 0;
    v531 = *(v553 + 2);
    if (v531)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v553 = specialized _ArrayBuffer._consumeAndCreateNew()(v553);
      }

      if (v569)
      {
        v151 = 2 * ((33 * (v569 >> 16)) ^ v569) + 1;
      }

      else
      {
        LOWORD(v151) = 0;
      }

      v509 = v151;
      v152 = v553;
      if (!*(v553 + 2))
      {
        goto LABEL_444;
      }

      v153 = 0;
      v541 = 0;
      v545 = 0;
      v530 = v553 + 32;
      v154 = 1;
      v484 = v38;
      v485 = v129;
      v527 = v130;
      while (1)
      {
        v540 = v154;
        v155 = &v530[80 * v153];
        v1 = *(v155 + 8);
        if ((v1 >> 30) - 2 < 2)
        {
          goto LABEL_373;
        }

        v156 = *(v155 + 5);
        v157 = *(v155 + 6);
        v22 = *(v155 + 7);
        if (v1 >> 30)
        {
          v513 = v153;
          v515 = &v530[80 * v153];
          v572 = *(v155 + 7);
          v573 = v1;
          v574 = HIDWORD(v1);
          v161 = v129 + *v155;
          v528 = v130 + v155[1];
          v510 = v156;
          v507 = v157;
          if ((v1 & 0x10) != 0)
          {
            v573 = 0;
            v574 = 0;
            v163 = *(v22 + 16);
            v479 = HIDWORD(v157);
            outlined copy of DisplayList.Effect(v156, v157, SBYTE4(v157));

            v546 = v163;
            if (v163)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (!*(v22 + 16))
                {
                  goto LABEL_437;
                }
              }

              else
              {
                v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                if (!*(v22 + 16))
                {
                  goto LABEL_437;
                }
              }

              v19 = 0;
              v550 = 0;
              v565 = 0;
              v523 = 0;
              v542 = v22 + 32;
              v3 = 1;
              v554 = v22;
              while (2)
              {
                v164 = v542 + 80 * v19;
                v5 = *(v164 + 64);
                v557 = v3;
                v561 = v19;
                if ((v5 >> 30) - 2 < 2)
                {
                  goto LABEL_111;
                }

                v165 = *(v164 + 40);
                v1 = *(v164 + 48);
                v22 = *(v164 + 56);
                if (v5 >> 30 == 1)
                {
                  *&v585 = *(v164 + 56);
                  WORD4(v585) = v5;
                  HIDWORD(v585) = HIDWORD(v5);
                  v166 = v161 + *v164;
                  v167 = v528 + *(v164 + 8);
                  v532 = v1;
                  if ((v5 & 0x10) != 0)
                  {
                    v570 = 0;
                    WORD4(v585) = 0;
                    HIDWORD(v585) = 0;
                    v170 = v165;
                    v171 = *(v22 + 16);
                    v516 = v170;
                    v503 = HIDWORD(v1);
                    outlined copy of DisplayList.Effect(v170, v1, SBYTE4(v1));

                    if (v171)
                    {
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (*(v22 + 16))
                        {
                          goto LABEL_62;
                        }

LABEL_425:
                        __break(1u);
LABEL_426:
                        v549 = 0;
LABEL_427:
                        LOBYTE(v582[0]) = HIBYTE(v595);
                        if (v539)
                        {

                          _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v538, &v585);

                          v458 = v585;
                        }

                        else
                        {
                          v459 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v538);
                          if (v459)
                          {
                            v458 = *(v459 + 72);
                          }

                          else
                          {
                            v458 = 0;
                          }
                        }

                        LOBYTE(v575) = v458;
                        ContentTransition.applyEnvironmentValues(style:layoutDirection:)(v582, &v575);
                        v460 = *(v19 + 224);
                        *(v4 + 128) = *(v19 + 208);
                        *(v4 + 144) = v460;
                        *(v4 + 160) = *(v19 + 240);
                        *(v4 + 171) = *(v19 + 251);
                        v461 = *(v19 + 160);
                        *(v4 + 64) = *(v19 + 144);
                        *(v4 + 80) = v461;
                        v462 = *(v19 + 192);
                        *(v4 + 96) = *(v19 + 176);
                        *(v4 + 112) = v462;
                        v463 = *(v19 + 96);
                        *v4 = *(v19 + 80);
                        *(v4 + 16) = v463;
                        v464 = *(v19 + 128);
                        *(v4 + 32) = *(v19 + 112);
                        *(v4 + 48) = v464;
                        outlined destroy of Image.Resolved(v583);
                        v93 = v596;
                        goto LABEL_18;
                      }

                      v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                      if (!*(v22 + 16))
                      {
                        goto LABEL_425;
                      }

LABEL_62:
                      v18 = 0;
                      v4 = 0;
                      v5 = 0;
                      v1 = v22 + 32;
                      v19 = v171 - 1;
                      while (1)
                      {
                        closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v1, v568, v567, v569, &v570, v166, v167, v127, v128);
                        if (v18 >= *(v22 + 16))
                        {
                          break;
                        }

                        v3 = &v585;
                        v589 = *v1;
                        v172 = *(v1 + 16);
                        v173 = *(v1 + 32);
                        v174 = *(v1 + 48);
                        *&v592[12] = *(v1 + 60);
                        v591 = v173;
                        *v592 = v174;
                        v590 = v172;
                        DisplayList.Item.features.getter(&v571);
                        if (v18 >= *(v22 + 16))
                        {
                          goto LABEL_434;
                        }

                        v4 = v571 | v4;
                        v589 = *v1;
                        v175 = *(v1 + 16);
                        v176 = *(v1 + 32);
                        v177 = *(v1 + 48);
                        *&v592[12] = *(v1 + 60);
                        v591 = v176;
                        *v592 = v177;
                        v590 = v175;
                        DisplayList.Item.properties.getter(&v571);
                        v5 = v571 | v5;
                        if (v19 == v18)
                        {
                          *&v585 = v22;
                          HIDWORD(v585) = v5;
                          WORD4(v585) = v4;
                          v1 = v570;
                          v18 = v568;
                          goto LABEL_80;
                        }

                        ++v18;
                        v1 += 80;
                        if (v18 >= *(v22 + 16))
                        {
                          goto LABEL_425;
                        }
                      }

                      __break(1u);
LABEL_434:
                      __break(1u);
LABEL_435:
                      __break(1u);
LABEL_436:
                      __break(1u);
LABEL_437:
                      __break(1u);
LABEL_438:
                      __break(1u);
LABEL_439:
                      __break(1u);
LABEL_440:
                      __break(1u);
LABEL_441:
                      __break(1u);
LABEL_442:
                      __break(1u);
LABEL_443:
                      __break(1u);
LABEL_444:
                      __break(1u);
LABEL_445:
                      __break(1u);
LABEL_446:
                      __break(1u);
LABEL_447:
                      __break(1u);
LABEL_448:
                      __break(1u);
LABEL_449:
                      __break(1u);
LABEL_450:
                      __break(1u);
LABEL_451:
                      __break(1u);
LABEL_452:
                      __break(1u);
LABEL_453:
                      __break(1u);
LABEL_454:
                      __break(1u);
LABEL_455:
                      __break(1u);
                      goto LABEL_456;
                    }

                    v1 = 0;
LABEL_80:
                    v165 = v516;
                    v3 = v503;
                  }

                  else
                  {
                    v3 = HIDWORD(v1);
                    outlined copy of DisplayList.Effect(v165, v1, SBYTE4(v1));

                    v1 = 0;
                  }

                  v22 = v554;
                  if (v3 == 18)
                  {
                    if (v18 == v165)
                    {
                      v197 = *v164;
                      v198 = *(v164 + 8);
                      v199 = *(v164 + 16);
                      v200 = *(v164 + 24);
                      *&v589 = v569;
                      v19 = v532;
                      v201 = (*(*v18 + 136))(v532, &v585, v567, &v589, v197, v198, v199, v200, v166, v167, v127, v128);
                      outlined consume of DisplayList.Effect(v165, v532, 18);
                      v165 = 0;
                      v189 = 0;
                      v1 = v201 | v1;
                      v22 = v554;
                      LOBYTE(v3) = 20;
                      v130 = v527;
                      goto LABEL_109;
                    }

                    LOBYTE(v3) = 18;
                  }

                  else if (v3 == 7)
                  {
                    v22 = *(v165 + 16);
                    v18 = *(v165 + 24);
                    v5 = *(v165 + 32);
                    if ((v18 & 0x10) != 0)
                    {
                      v518 = v165;
                      v570 = 0;
                      v190 = *(v22 + 16);

                      if (v190)
                      {
                        v19 = &v585;
                        v504 = v5;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          if (!*(v22 + 16))
                          {
                            goto LABEL_442;
                          }
                        }

                        else
                        {
                          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                          if (!*(v22 + 16))
                          {
                            goto LABEL_442;
                          }
                        }

                        v4 = 0;
                        v18 = 0;
                        v2 = 0;
                        v3 = v22 + 32;
                        v5 = v190 - 1;
                        while (1)
                        {
                          closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v3, v568, v567, v569, &v570, v166, v167, v127, v128);
                          if (v4 >= *(v22 + 16))
                          {
                            goto LABEL_449;
                          }

                          v589 = *v3;
                          v191 = *(v3 + 16);
                          v192 = *(v3 + 32);
                          v193 = *(v3 + 48);
                          *&v592[12] = *(v3 + 60);
                          v591 = v192;
                          *v592 = v193;
                          v590 = v191;
                          DisplayList.Item.features.getter(&v571);
                          if (v4 >= *(v22 + 16))
                          {
                            goto LABEL_450;
                          }

                          v18 = v571 | v18;
                          v589 = *v3;
                          v194 = *(v3 + 16);
                          v195 = *(v3 + 32);
                          v196 = *(v3 + 48);
                          *&v592[12] = *(v3 + 60);
                          v591 = v195;
                          *v592 = v196;
                          v590 = v194;
                          DisplayList.Item.properties.getter(&v571);
                          v2 = (v571 | v2);
                          if (v5 == v4)
                          {
                            break;
                          }

                          ++v4;
                          v3 += 80;
                          if (v4 >= *(v22 + 16))
                          {
                            goto LABEL_442;
                          }
                        }

                        v1 = v570 | v1;
                        v5 = v504;
                      }

                      else
                      {
                        LOWORD(v18) = 0;
                        LODWORD(v2) = 0;
                      }

                      v130 = v527;
                      v3 = v518;
                    }

                    else
                    {
                      LODWORD(v2) = *(v165 + 28);

                      v130 = v527;
                      v3 = v165;
                    }

                    v165 = swift_allocObject();
                    *(v165 + 16) = v22;
                    *(v165 + 24) = v18;
                    *(v165 + 28) = v2;
                    *(v165 + 32) = v5;
                    outlined consume of DisplayList.Effect(v3, v532, 7);
                    v189 = 0;
                    LOBYTE(v3) = 7;
                    v2 = v598;
                    v18 = v568;
                    v22 = v554;
LABEL_109:
                    v208 = v585;
                    v209 = WORD4(v585) | (HIDWORD(v585) << 32) | 0x40000000;
                    v210 = *(v164 + 40);
                    v211 = *(v164 + 48);
                    v212 = *(v164 + 56);
                    v213 = *(v164 + 64);
                    *(v164 + 40) = v165;
                    *(v164 + 48) = v189 | (v3 << 32);
                    *(v164 + 56) = v208;
                    *(v164 + 64) = v209;
                    outlined consume of DisplayList.Item.Value(v210, v211, v212, v213);
                    if (v1)
                    {
LABEL_110:
                      *(v164 + 32) = v569;
                      v523 = 1;
                    }

                    goto LABEL_111;
                  }

                  v130 = v527;
                  v189 = v532;
                  goto LABEL_109;
                }

                if (v165 >> 60 == 11)
                {
                  v38 = v161;
                  v3 = *((v165 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v2 = *((v165 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v168 = *((v165 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  v169 = *((v165 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                  v18 = *((v165 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                  v496 = *((v165 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
                  v490 = *((v165 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
                  v493 = *((v165 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
                  v487 = *((v165 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
                  v498 = *((v165 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                  if ((v2 & 0x10) != 0)
                  {
                    v178 = *v164;
                    v179 = *(v164 + 8);
                    LOBYTE(v571) = 0;
                    v19 = v165;
                    v180 = *(v3 + 16);
                    outlined copy of DisplayList.Item.Value(v19, v1, v22, v5);
                    v517 = v19;
                    v482 = v5;
                    outlined copy of DisplayList.Item.Value(v19, v1, v22, v5);

                    v533 = v1;
                    if (v180)
                    {
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (!*(v3 + 16))
                        {
                          goto LABEL_435;
                        }
                      }

                      else
                      {
                        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                        if (!*(v3 + 16))
                        {
                          goto LABEL_435;
                        }
                      }

                      v4 = 0;
                      v2 = 0;
                      v18 = 0;
                      v181 = v38 + v178;
                      v182 = v528 + v179;
                      v1 = v3 + 32;
                      v19 = v180 - 1;
                      while (1)
                      {
                        closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v1, v568, v567, v569, &v571, v181, v182, v127, v128);
                        if (v4 >= *(v3 + 16))
                        {
                          goto LABEL_438;
                        }

                        v5 = &v585;
                        v589 = *v1;
                        v183 = *(v1 + 16);
                        v184 = *(v1 + 32);
                        v185 = *(v1 + 48);
                        *&v592[12] = *(v1 + 60);
                        v591 = v184;
                        *v592 = v185;
                        v590 = v183;
                        DisplayList.Item.features.getter(&v585);
                        if (v4 >= *(v3 + 16))
                        {
                          goto LABEL_440;
                        }

                        v2 = (v585 | v2);
                        v589 = *v1;
                        v186 = *(v1 + 16);
                        v187 = *(v1 + 32);
                        v188 = *(v1 + 48);
                        *&v592[12] = *(v1 + 60);
                        v591 = v187;
                        *v592 = v188;
                        v590 = v186;
                        DisplayList.Item.properties.getter(&v585);
                        v18 = v585 | v18;
                        if (v19 == v4)
                        {
                          break;
                        }

                        ++v4;
                        v1 += 80;
                        if (v4 >= *(v3 + 16))
                        {
                          goto LABEL_435;
                        }
                      }

                      v4 = v571;
                    }

                    else
                    {
                      v4 = 0;
                      LOWORD(v2) = 0;
                      LODWORD(v18) = 0;
                    }

                    v130 = v527;
                    v1 = v517;
                    v5 = v533;
                    v19 = v482;
                  }

                  else
                  {
                    LODWORD(v18) = *((v165 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                    v19 = *(v164 + 64);
                    outlined copy of DisplayList.Item.Value(v165, v1, v22, v5);
                    outlined copy of DisplayList.Item.Value(v165, v1, v22, v5);

                    v4 = 0;
                    v5 = v1;
                    v1 = v165;
                  }

                  v202 = swift_allocObject();
                  *(v202 + 16) = v3;
                  *(v202 + 24) = v2;
                  *(v202 + 28) = v18;
                  *(v202 + 32) = v168;
                  *(v202 + 40) = v169;
                  *(v202 + 48) = v498;
                  *(v202 + 52) = v496;
                  *(v202 + 53) = v493;
                  *(v202 + 56) = v490;
                  *(v202 + 60) = v487;
                  outlined consume of DisplayList.Item.Value(v1, v5, v22, v19);
                  v203 = v509;
                  if ((v4 & 1) == 0)
                  {
                    v203 = v5;
                  }

                  v204 = *(v164 + 40);
                  v205 = *(v164 + 48);
                  v206 = *(v164 + 56);
                  v207 = *(v164 + 64);
                  *(v164 + 40) = v202 | 0xB000000000000000;
                  *(v164 + 48) = v203;
                  *(v164 + 56) = 0;
                  *(v164 + 64) = 0;
                  outlined consume of DisplayList.Item.Value(v204, v205, v206, v207);
                  outlined consume of DisplayList.Item.Value(v1, v5, v22, v19);
                  v2 = v598;
                  v18 = v568;
                  v22 = v554;
                  v161 = v38;
                  v38 = v484;
                  v129 = v485;
                  if (v4)
                  {
                    goto LABEL_110;
                  }
                }

                else
                {
                  v22 = v554;
                }

LABEL_111:
                v3 = v561;
                if (v561 >= *(v22 + 16))
                {
                  goto LABEL_445;
                }

                v586 = *(v164 + 16);
                v587 = *(v164 + 32);
                v588[0] = *(v164 + 48);
                v19 = &v585;
                *(v588 + 12) = *(v164 + 60);
                v585 = *v164;
                DisplayList.Item.features.getter(&v571);
                if (v561 >= *(v22 + 16))
                {
                  goto LABEL_446;
                }

                v214 = *(v164 + 48);
                v215 = *(v164 + 60);
                v216 = *(v164 + 16);
                v591 = *(v164 + 32);
                *&v592[12] = v215;
                v217 = *v164;
                *v592 = v214;
                v589 = v217;
                v590 = v216;
                v218 = *(&v591 + 1);
                v1 = *&v592[16];
                v219 = *&v592[16] >> 30;
                v565 |= v571;
                if (*&v592[16] >> 30 > 1u)
                {
                  if (v219 != 2)
                  {
                    outlined destroy of DisplayList.Item(&v589);
                    v226 = v546;
                    v220 = v557;
                    goto LABEL_140;
                  }

                  v222 = *(*(&v591 + 1) + 16);
                  v220 = v557;
                  if (v222)
                  {
                    if (v222 > 7)
                    {
                      v223 = v222 & 0x7FFFFFFFFFFFFFF8;
                      v227 = (*(&v591 + 1) + 188);
                      v228 = 0uLL;
                      v229 = v222 & 0x7FFFFFFFFFFFFFF8;
                      v230 = 0uLL;
                      do
                      {
                        v231.i32[0] = *(v227 - 30);
                        v231.i32[1] = *(v227 - 20);
                        v231.i32[2] = *(v227 - 10);
                        v231.i32[3] = *v227;
                        v232.i32[0] = v227[10];
                        v232.i32[1] = v227[20];
                        v232.i32[2] = v227[30];
                        v232.i32[3] = v227[40];
                        v228 = vorrq_s8(v231, v228);
                        v230 = vorrq_s8(v232, v230);
                        v227 += 80;
                        v229 -= 8;
                      }

                      while (v229);
                      v233 = vorrq_s8(v230, v228);
                      *v233.i8 = vorr_s8(*v233.i8, *&vextq_s8(v233, v233, 8uLL));
                      v221 = v233.i32[0] | v233.i32[1];
                      if (v222 == v223)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v221 = 0;
                      v223 = 0;
                    }

                    v234 = v222 - v223;
                    v235 = (*(&v591 + 1) + 40 * v223 + 68);
                    do
                    {
                      v236 = *v235;
                      v235 += 10;
                      v221 |= v236;
                      --v234;
                    }

                    while (v234);
                  }

                  else
                  {
                    v221 = 0;
                  }
                }

                else
                {
                  if (!v219)
                  {
                    v220 = v557;
                    if (*(&v591 + 1) >> 60 == 6 || *(&v591 + 1) >> 60 == 11)
                    {
                      v221 = *((*(&v591 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                      break;
                    }

LABEL_139:
                    v226 = v546;
LABEL_140:
                    if (v220 == v226)
                    {
                      v572 = v22;
                      v574 = v550;
                      v573 = v565;
                      goto LABEL_249;
                    }

                    v19 = v220;
                    v3 = v220 + 1;
                    if (v220 >= *(v22 + 16))
                    {
                      goto LABEL_437;
                    }

                    continue;
                  }

                  v224 = v592[4];
                  if (v592[4] == 2)
                  {
                    outlined init with copy of DisplayList.Item(&v589, &v585);

                    v3 = v218;
                  }

                  else
                  {
                    v225 = v592[0];
                    if (v592[4] == 7)
                    {
                      v3 = *(*(&v591 + 1) + 28);
                      outlined init with copy of DisplayList.Item(&v589, &v585);
                      outlined consume of DisplayList.Effect(v218, v225, 7);
                    }

                    else if (v592[4] == 18)
                    {
                      (*(**(&v591 + 1) + 120))(&v571);
                      outlined init with copy of DisplayList.Item(&v589, &v585);
                      outlined consume of DisplayList.Effect(v218, v225, 18);

                      v3 = v571;
                    }

                    else
                    {
                      outlined init with copy of DisplayList.Item(&v589, &v585);
                      outlined consume of DisplayList.Effect(v218, v225, v224);

                      v3 = 0;
                    }
                  }

                  v221 = v3 | HIDWORD(v1);
                  v22 = v554;
                  v220 = v557;
                }

                break;
              }

              v550 |= v221;
              goto LABEL_139;
            }

            v523 = 0;
LABEL_249:
            LOBYTE(v162) = v479;
          }

          else
          {
            v162 = HIDWORD(v157);
            outlined copy of DisplayList.Effect(v156, v157, SBYTE4(v157));

            v523 = 0;
          }

          if (v162 == 18)
          {
            v322 = v510;
            if (v18 == v510)
            {
              v412 = *v515;
              v413 = v515[1];
              v414 = v515[2];
              v415 = v515[3];
              *&v589 = v569;
              v3 = v507;
              v416 = (*(*v18 + 136))(v507, &v572, v567, &v589, v412, v413, v414, v415, v161, v528, v127, v128);
              outlined consume of DisplayList.Effect(v510, v507, 18);
              v322 = 0;
              v325 = 0;
              v523 |= v416;
              v324 = 20;
            }

            else
            {
              v324 = 18;
              v325 = v507;
            }
          }

          else
          {
            v322 = v510;
            if (v162 == 7)
            {
              v22 = *(v510 + 16);
              v5 = *(v510 + 24);
              v502 = *(v510 + 32);
              if ((v5 & 0x10) != 0)
              {
                v326 = *(v22 + 16);

                v556 = v326;
                if (v326)
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if (*(v22 + 16))
                    {
                      goto LABEL_260;
                    }

LABEL_383:
                    __break(1u);
LABEL_384:
                    AGGraphClearUpdate();
                    memcpy(__dst, v1, 0x118uLL);
                    outlined init with copy of InterpolatedDisplayList<Image.Resolved>(__dst, v583);
                    v432 = *AGGraphGetValue();

                    outlined destroy of InterpolatedDisplayList<Image.Resolved>(__dst);
                    AGGraphSetUpdate();
                    v433 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v432);

                    if (v433)
                    {
                      v434 = *(v19 + 224);
                      *(v4 + 128) = *(v19 + 208);
                      *(v4 + 144) = v434;
                      *(v4 + 160) = *(v19 + 240);
                      *(v4 + 171) = *(v19 + 251);
                      v435 = *(v19 + 160);
                      *(v4 + 64) = *(v19 + 144);
                      *(v4 + 80) = v435;
                      v436 = *(v19 + 192);
                      *(v4 + 96) = *(v19 + 176);
                      *(v4 + 112) = v436;
                      v437 = *(v19 + 96);
                      *v4 = *(v19 + 80);
                      *(v4 + 16) = v437;
                      v438 = *(v19 + 128);
                      *(v4 + 32) = *(v19 + 112);
                      *(v4 + 48) = v438;
                      outlined destroy of Image.Resolved(v583);
                      goto LABEL_15;
                    }

                    *(v1 + 272) = v569;
                    if (BYTE13(v595))
                    {
                      goto LABEL_474;
                    }

                    v439 = v595;
                    if ((v595 & 0x8000000000) == 0)
                    {
                      goto LABEL_474;
                    }

                    v440 = DWORD2(v595) | (BYTE12(v595) << 32);
                    if (v595 ^ 0x8000000000 | DWORD2(v595) & 0xFFFFFFLL)
                    {
                      v443 = 0;
                    }

                    else
                    {
                      if (one-time initialization token for v4 != -1)
                      {
                        swift_once();
                      }

                      v441 = static Semantics.v4;
                      if (one-time initialization token for forced != -1)
                      {
                        swift_once();
                      }

                      swift_beginAccess();
                      if (byte_1ED53C51C == 1)
                      {
                        if ((dyld_program_sdk_at_least() & 1) == 0)
                        {
                          goto LABEL_395;
                        }

LABEL_401:
                        if (one-time initialization token for interpolate != -1)
                        {
                          swift_once();
                        }

                        v442 = &static ContentTransition.interpolate;
                      }

                      else
                      {
                        if (static Semantics.forced >= v441)
                        {
                          goto LABEL_401;
                        }

LABEL_395:
                        if (one-time initialization token for identity != -1)
                        {
                          swift_once();
                        }

                        v442 = &static ContentTransition.identity;
                      }

                      v444 = *(v442 + 12);
                      v445 = *(v442 + 2);
                      v446 = *v442;
                      v447 = *(v442 + 13);
                      outlined copy of ContentTransition.Storage(*v442, v445 | (v444 << 32), *(v442 + 13));
                      outlined consume of ContentTransition.Storage(v439, v440, 0);
                      *&v595 = v446;
                      BYTE12(v595) = v444;
                      DWORD2(v595) = v445;
                      BYTE13(v595) = v447;
                      BYTE14(v595) = 1;
                      v448 = (v446 & 0x8000000000) != 0 && v447 == 0;
                      v443 = !v448;
                      v439 = v446;
                      v19 = &v585;
                    }

                    if (v443 || v439 ^ 0x8000000001 | DWORD2(v595) & 0xFFFFFF)
                    {
LABEL_474:
                      Image.Resolved.modifyTransition(state:to:)(&v595, v598);
                      if (BYTE13(v595))
                      {
                        goto LABEL_473;
                      }

                      v439 = v595;
                      if ((v595 & 0x8000000000) == 0)
                      {
                        goto LABEL_473;
                      }
                    }

                    if (v439 ^ 0x8000000001 | DWORD2(v595) & 0xFFFFFF)
                    {
LABEL_473:
                      if (AGGraphGetOutputValue())
                      {
                        if (!v596)
                        {
                          AGGraphClearUpdate();
                          memcpy(v583, v1, 0x118uLL);
                          outlined init with copy of InterpolatedDisplayList<Image.Resolved>(v583, v582);
                          v449 = *AGGraphGetValue();

                          outlined destroy of InterpolatedDisplayList<Image.Resolved>(v583);
                          AGGraphSetUpdate();
                          _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v449);
                          v451 = v450;

                          v596 = v451;
                          if (!v451)
                          {
                            goto LABEL_426;
                          }
                        }

                        AGGraphClearUpdate();
                        memcpy(v583, v1, 0x118uLL);
                        outlined init with copy of InterpolatedDisplayList<Image.Resolved>(v583, v582);
                        v452 = *AGGraphGetValue();

                        outlined destroy of InterpolatedDisplayList<Image.Resolved>(v583);
                        AGGraphSetUpdate();
                        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE017AnimationListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(v452);
                        v454 = v453;
                        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE024AnimationLogicalListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(v452);
                        v456 = v455;

                        if (v454)
                        {
                          if (v456)
                          {
                            type metadata accessor for ListenerPair();
                            v457 = swift_allocObject();
                            *(v457 + 16) = v454;
                            *(v457 + 24) = v456;
                            v549 = v457;
                          }

                          else
                          {
                            v549 = v454;
                          }
                        }

                        else
                        {
                          v549 = v456;
                        }

                        goto LABEL_427;
                      }
                    }

                    v549 = 0;
                    v596 = 0;
                    goto LABEL_427;
                  }

                  v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                  if (!*(v22 + 16))
                  {
                    goto LABEL_383;
                  }

LABEL_260:
                  v1 = 0;
                  LODWORD(v3) = 0;
                  v5 = 0;
                  v506 = 0;
                  v552 = v22 + 32;
                  v327 = 1;
                  v548 = v22;
                  while (2)
                  {
                    v559 = v3;
                    v3 = v552 + 80 * v1;
                    v328 = *(v3 + 64);
                    v563 = v5;
                    v566 = v327;
                    if ((v328 >> 30) - 2 < 2)
                    {
                      goto LABEL_320;
                    }

                    v330 = *(v3 + 40);
                    v329 = *(v3 + 48);
                    v22 = *(v3 + 56);
                    v544 = v1;
                    if (v328 >> 30 == 1)
                    {
                      v2 = HIDWORD(v329);
                      *&v585 = *(v3 + 56);
                      WORD4(v585) = v328;
                      HIDWORD(v585) = HIDWORD(v328);
                      v331 = v161 + *v3;
                      v332 = v528 + *(v3 + 8);
                      v536 = v329;
                      if ((v328 & 0x10) != 0)
                      {
                        v570 = 0;
                        WORD4(v585) = 0;
                        HIDWORD(v585) = 0;
                        v337 = v330;
                        v338 = *(v22 + 16);
                        v520 = v337;
                        outlined copy of DisplayList.Effect(v337, v329, SBYTE4(v329));

                        if (v338)
                        {
                          if (swift_isUniquelyReferenced_nonNull_native())
                          {
                            if (!*(v22 + 16))
                            {
                              goto LABEL_443;
                            }
                          }

                          else
                          {
                            v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                            if (!*(v22 + 16))
                            {
                              goto LABEL_443;
                            }
                          }

                          v5 = 0;
                          v1 = 0;
                          v4 = 0;
                          v339 = (v22 + 32);
                          v19 = v338 - 1;
                          while (1)
                          {
                            closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v339, v18, v567, v569, &v570, v331, v332, v127, v128);
                            if (v5 >= *(v22 + 16))
                            {
                              goto LABEL_451;
                            }

                            v18 = &v585;
                            v589 = *v339;
                            v340 = v339[1];
                            v341 = v339[2];
                            v342 = v339[3];
                            *&v592[12] = *(v339 + 60);
                            v591 = v341;
                            *v592 = v342;
                            v590 = v340;
                            DisplayList.Item.features.getter(&v571);
                            if (v5 >= *(v22 + 16))
                            {
                              goto LABEL_452;
                            }

                            v1 = v571 | v1;
                            v589 = *v339;
                            v343 = v339[1];
                            v344 = v339[2];
                            v345 = v339[3];
                            *&v592[12] = *(v339 + 60);
                            v591 = v344;
                            *v592 = v345;
                            v590 = v343;
                            DisplayList.Item.properties.getter(&v571);
                            v4 = v571 | v4;
                            if (v19 == v5)
                            {
                              break;
                            }

                            ++v5;
                            v339 += 5;
                            v18 = v568;
                            if (v5 >= *(v22 + 16))
                            {
                              goto LABEL_443;
                            }
                          }

                          *&v585 = v22;
                          HIDWORD(v585) = v4;
                          WORD4(v585) = v1;
                          v5 = v570;
                          v19 = &v585;
                          v18 = v568;
                          v1 = v544;
                        }

                        else
                        {
                          v5 = 0;
                        }

                        v330 = v520;
                      }

                      else
                      {
                        outlined copy of DisplayList.Effect(v330, v329, SBYTE4(v329));

                        v5 = 0;
                      }

                      v22 = v548;
                      if (v2 == 18)
                      {
                        if (MEMORY[0x193AC0FF0](v330, v18))
                        {
                          v360 = *v3;
                          v361 = *(v3 + 8);
                          v362 = *(v3 + 16);
                          v363 = *(v3 + 24);
                          *&v589 = v569;
                          v364 = (*(*v18 + 136))(v536, &v585, v567, &v589, v360, v361, v362, v363, v331, v332, v127, v128);
                          outlined consume of DisplayList.Effect(v330, v536, 18);
                          v330 = 0;
                          v365 = 0;
                          v5 = v364 | v5;
                          v22 = v548;
                          LOBYTE(v2) = 20;
                          v130 = v527;
                          goto LABEL_318;
                        }

                        LOBYTE(v2) = 18;
                      }

                      else if (v2 == 7)
                      {
                        v22 = *(v330 + 16);
                        v18 = *(v330 + 24);
                        v2 = *(v330 + 32);
                        v497 = *(v330 + 32);
                        if ((v18 & 0x10) != 0)
                        {
                          v522 = v330;
                          v570 = 0;
                          v366 = *(v22 + 16);

                          if (v366)
                          {
                            if (swift_isUniquelyReferenced_nonNull_native())
                            {
                              if (!*(v22 + 16))
                              {
                                goto LABEL_465;
                              }
                            }

                            else
                            {
                              v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
                              if (!*(v22 + 16))
                              {
                                goto LABEL_465;
                              }
                            }

                            v4 = 0;
                            v18 = 0;
                            v2 = 0;
                            v367 = (v22 + 32);
                            v19 = v366 - 1;
                            while (1)
                            {
                              closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v367, v568, v567, v569, &v570, v331, v332, v127, v128);
                              if (v4 >= *(v22 + 16))
                              {
                                goto LABEL_468;
                              }

                              v1 = &v585;
                              v589 = *v367;
                              v368 = v367[1];
                              v369 = v367[2];
                              v370 = v367[3];
                              *&v592[12] = *(v367 + 60);
                              v591 = v369;
                              *v592 = v370;
                              v590 = v368;
                              DisplayList.Item.features.getter(&v571);
                              if (v4 >= *(v22 + 16))
                              {
                                goto LABEL_469;
                              }

                              v18 = v571 | v18;
                              v589 = *v367;
                              v371 = v367[1];
                              v372 = v367[2];
                              v373 = v367[3];
                              *&v592[12] = *(v367 + 60);
                              v591 = v372;
                              *v592 = v373;
                              v590 = v371;
                              DisplayList.Item.properties.getter(&v571);
                              v2 = (v571 | v2);
                              if (v19 == v4)
                              {
                                break;
                              }

                              ++v4;
                              v367 += 5;
                              if (v4 >= *(v22 + 16))
                              {
                                goto LABEL_465;
                              }
                            }

                            v5 = v570 | v5;
                            v19 = &v585;
                            v1 = v544;
                          }

                          else
                          {
                            LOWORD(v18) = 0;
                            LODWORD(v2) = 0;
                          }

                          v130 = v527;
                          v359 = v522;
                        }

                        else
                        {
                          LODWORD(v2) = *(v330 + 28);

                          v130 = v527;
                          v359 = v330;
                        }

                        v330 = swift_allocObject();
                        *(v330 + 16) = v22;
                        *(v330 + 24) = v18;
                        *(v330 + 28) = v2;
                        *(v330 + 32) = v497;
                        outlined consume of DisplayList.Effect(v359, v536, 7);
                        v365 = 0;
                        LOBYTE(v2) = 7;
                        v18 = v568;
                        v22 = v548;
LABEL_318:
                        v382 = v585;
                        v383 = WORD4(v585) | (HIDWORD(v585) << 32) | 0x40000000;
                        v384 = *(v3 + 40);
                        v385 = *(v3 + 48);
                        v386 = *(v3 + 56);
                        v387 = *(v3 + 64);
                        *(v3 + 40) = v330;
                        *(v3 + 48) = v365 | (v2 << 32);
                        *(v3 + 56) = v382;
                        *(v3 + 64) = v383;
                        outlined consume of DisplayList.Item.Value(v384, v385, v386, v387);
                        v2 = v598;
                        if (v5)
                        {
LABEL_319:
                          *(v3 + 32) = v569;
                          v506 = 1;
                        }

                        goto LABEL_320;
                      }

                      v130 = v527;
                      v365 = v536;
                      goto LABEL_318;
                    }

                    if (v330 >> 60 == 11)
                    {
                      v38 = v161;
                      v2 = *((v330 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                      v18 = *((v330 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                      v333 = *((v330 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                      v334 = *((v330 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                      v491 = *((v330 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
                      v494 = *((v330 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                      v488 = *((v330 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
                      v483 = *((v330 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
                      v480 = *((v330 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
                      if ((v18 & 0x10) != 0)
                      {
                        v346 = *v3;
                        v347 = *(v3 + 8);
                        LOBYTE(v571) = 0;
                        v348 = v330;
                        v349 = *(v2 + 2);
                        v5 = v328;
                        v1 = v329;
                        outlined copy of DisplayList.Item.Value(v348, v329, v22, v328);
                        v521 = v348;
                        v537 = v1;
                        v475 = v5;
                        outlined copy of DisplayList.Item.Value(v348, v1, v22, v5);

                        if (v349)
                        {
                          if (swift_isUniquelyReferenced_nonNull_native())
                          {
                            if (*(v2 + 2))
                            {
LABEL_282:
                              v4 = 0;
                              v18 = 0;
                              v1 = 0;
                              v350 = v38 + v346;
                              v351 = v528 + v347;
                              v352 = v2 + 2;
                              v19 = v349 - 1;
                              while (1)
                              {
                                closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v352, v568, v567, v569, &v571, v350, v351, v127, v128);
                                if (v4 >= *(v2 + 2))
                                {
                                  goto LABEL_463;
                                }

                                v5 = &v585;
                                v589 = *v352;
                                v353 = v352[1];
                                v354 = v352[2];
                                v355 = v352[3];
                                *&v592[12] = *(v352 + 60);
                                v591 = v354;
                                *v592 = v355;
                                v590 = v353;
                                DisplayList.Item.features.getter(&v585);
                                if (v4 >= *(v2 + 2))
                                {
                                  break;
                                }

                                v18 = v585 | v18;
                                v589 = *v352;
                                v356 = v352[1];
                                v357 = v352[2];
                                v358 = v352[3];
                                *&v592[12] = *(v352 + 60);
                                v591 = v357;
                                *v592 = v358;
                                v590 = v356;
                                DisplayList.Item.properties.getter(&v585);
                                v1 = v585 | v1;
                                if (v19 == v4)
                                {
                                  v374 = v571;
                                  v19 = &v585;
                                  goto LABEL_310;
                                }

                                ++v4;
                                v352 += 5;
                                if (v4 >= *(v2 + 2))
                                {
                                  goto LABEL_456;
                                }
                              }

LABEL_464:
                              __break(1u);
LABEL_465:
                              __break(1u);
LABEL_466:
                              __break(1u);
LABEL_467:
                              __break(1u);
LABEL_468:
                              __break(1u);
LABEL_469:
                              __break(1u);
LABEL_470:
                              swift_once();
LABEL_8:
                              v52 = static ContentTransition.State.defaultValue;
                              v46 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
                              v595 = static ContentTransition.State.defaultValue;
                              v51 = BYTE13(static ContentTransition.State.defaultValue);
                              v596 = off_1ED536620;
                              v597 = dword_1ED536628;
                              goto LABEL_9;
                            }
                          }

                          else
                          {
                            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
                            if (*(v2 + 2))
                            {
                              goto LABEL_282;
                            }
                          }

LABEL_456:
                          __break(1u);
LABEL_457:
                          __break(1u);
LABEL_458:
                          __break(1u);
LABEL_459:
                          __break(1u);
LABEL_460:
                          __break(1u);
                          goto LABEL_461;
                        }

                        v374 = 0;
                        LOWORD(v18) = 0;
                        LODWORD(v1) = 0;
LABEL_310:
                        v477 = v374;
                        v130 = v527;
                        v336 = v521;
                        v335 = v537;
                        v5 = v475;
                      }

                      else
                      {
                        LODWORD(v1) = *((v330 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                        v5 = *(v3 + 64);
                        v335 = *(v3 + 48);
                        outlined copy of DisplayList.Item.Value(v330, v329, v22, v328);
                        outlined copy of DisplayList.Item.Value(v330, v335, v22, v5);

                        v477 = 0;
                        v336 = v330;
                      }

                      v375 = swift_allocObject();
                      *(v375 + 16) = v2;
                      *(v375 + 24) = v18;
                      *(v375 + 28) = v1;
                      *(v375 + 32) = v333;
                      *(v375 + 40) = v334;
                      *(v375 + 48) = v494;
                      *(v375 + 52) = v491;
                      *(v375 + 53) = v488;
                      *(v375 + 56) = v483;
                      *(v375 + 60) = v480;
                      v376 = v336;
                      outlined consume of DisplayList.Item.Value(v336, v335, v22, v5);
                      v4 = v477;
                      v377 = v509;
                      if ((v477 & 1) == 0)
                      {
                        v377 = v335;
                      }

                      v378 = *(v3 + 40);
                      v379 = *(v3 + 48);
                      v380 = *(v3 + 56);
                      v381 = *(v3 + 64);
                      *(v3 + 40) = v375 | 0xB000000000000000;
                      *(v3 + 48) = v377;
                      *(v3 + 56) = 0;
                      *(v3 + 64) = 0;
                      outlined consume of DisplayList.Item.Value(v378, v379, v380, v381);
                      outlined consume of DisplayList.Item.Value(v376, v335, v22, v5);
                      v2 = v598;
                      v18 = v568;
                      v161 = v38;
                      v38 = v484;
                      v129 = v485;
                      v22 = v548;
                      v1 = v544;
                      if (v477)
                      {
                        goto LABEL_319;
                      }
                    }

                    else
                    {
                      v22 = v548;
                    }

LABEL_320:
                    if (v1 >= *(v22 + 16))
                    {
                      goto LABEL_466;
                    }

                    *(v19 + 16) = *(v3 + 16);
                    *(v19 + 32) = *(v3 + 32);
                    *(v19 + 48) = *(v3 + 48);
                    *(v19 + 60) = *(v3 + 60);
                    *v19 = *v3;
                    DisplayList.Item.features.getter(&v571);
                    if (v1 >= *(v22 + 16))
                    {
                      goto LABEL_467;
                    }

                    v5 = v571 | v563;
                    v388 = *(v3 + 48);
                    v389 = *(v3 + 60);
                    v390 = *(v3 + 16);
                    *(v19 + 112) = *(v3 + 32);
                    *(v19 + 140) = v389;
                    v391 = *v3;
                    *(v19 + 128) = v388;
                    *(v19 + 80) = v391;
                    *(v19 + 96) = v390;
                    v392 = *(&v591 + 1);
                    v1 = *&v592[16];
                    v393 = *&v592[16] >> 30;
                    if (*&v592[16] >> 30 > 1u)
                    {
                      v3 = v559;
                      v394 = v566;
                      if (v393 != 2)
                      {
                        outlined destroy of DisplayList.Item(&v589);
                        goto LABEL_349;
                      }

                      v396 = *(*(&v591 + 1) + 16);
                      if (v396)
                      {
                        if (v396 > 7)
                        {
                          v397 = v396 & 0x7FFFFFFFFFFFFFF8;
                          v401 = (*(&v591 + 1) + 188);
                          v402 = 0uLL;
                          v403 = v396 & 0x7FFFFFFFFFFFFFF8;
                          v404 = 0uLL;
                          do
                          {
                            v405.i32[0] = *(v401 - 30);
                            v405.i32[1] = *(v401 - 20);
                            v405.i32[2] = *(v401 - 10);
                            v405.i32[3] = *v401;
                            v406.i32[0] = v401[10];
                            v406.i32[1] = v401[20];
                            v406.i32[2] = v401[30];
                            v406.i32[3] = v401[40];
                            v402 = vorrq_s8(v405, v402);
                            v404 = vorrq_s8(v406, v404);
                            v401 += 80;
                            v403 -= 8;
                          }

                          while (v403);
                          v407 = vorrq_s8(v404, v402);
                          *v407.i8 = vorr_s8(*v407.i8, *&vextq_s8(v407, v407, 8uLL));
                          v395 = v407.i32[0] | v407.i32[1];
                          if (v396 == v397)
                          {
                            break;
                          }
                        }

                        else
                        {
                          v395 = 0;
                          v397 = 0;
                        }

                        v408 = v396 - v397;
                        v409 = (*(&v591 + 1) + 40 * v397 + 68);
                        do
                        {
                          v410 = *v409;
                          v409 += 10;
                          v395 |= v410;
                          --v408;
                        }

                        while (v408);
                      }

                      else
                      {
                        v395 = 0;
                      }
                    }

                    else
                    {
                      v394 = v566;
                      if (!v393)
                      {
                        v3 = v559;
                        if (*(&v591 + 1) >> 60 == 6 || *(&v591 + 1) >> 60 == 11)
                        {
                          v395 = *((*(&v591 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                          break;
                        }

LABEL_349:
                        if (v394 == v556)
                        {
                          v523 |= v506;
                          goto LABEL_369;
                        }

                        v1 = v394;
                        v411 = v394 >= *(v22 + 16);
                        v327 = v394 + 1;
                        if (v411)
                        {
                          goto LABEL_383;
                        }

                        continue;
                      }

                      v398 = v592[4];
                      if (v592[4] == 2)
                      {
                        outlined init with copy of DisplayList.Item(&v589, &v585);

                        v400 = v392;
                      }

                      else
                      {
                        v399 = v592[0];
                        if (v592[4] == 7)
                        {
                          v400 = *(*(&v591 + 1) + 28);
                          outlined init with copy of DisplayList.Item(&v589, &v585);
                          outlined consume of DisplayList.Effect(v392, v399, 7);
                        }

                        else if (v592[4] == 18)
                        {
                          (*(**(&v591 + 1) + 120))(&v571);
                          outlined init with copy of DisplayList.Item(&v589, &v585);
                          outlined consume of DisplayList.Effect(v392, v399, 18);

                          v400 = v571;
                        }

                        else
                        {
                          outlined init with copy of DisplayList.Item(&v589, &v585);
                          outlined consume of DisplayList.Effect(v392, v399, v398);

                          v400 = 0;
                        }

                        v394 = v566;
                      }

                      v395 = v400 | HIDWORD(v1);
                      v22 = v548;
                      LODWORD(v3) = v559;
                    }

                    break;
                  }

                  v3 = v395 | v3;
                  goto LABEL_349;
                }

                v5 = 0;
                v3 = 0;
LABEL_369:
                v323 = v510;
              }

              else
              {
                v3 = *(v510 + 28);
                v323 = v510;
              }

              v423 = v22;
              v424 = swift_allocObject();
              *(v424 + 16) = v423;
              *(v424 + 24) = v5;
              *(v424 + 28) = v3;
              *(v424 + 32) = v502;
              outlined consume of DisplayList.Effect(v323, v507, 7);
              v325 = 0;
              v322 = v424;
              v324 = 7;
            }

            else
            {
              v325 = v507;
              v324 = v162;
            }
          }

          v425 = v572;
          v426 = v573 | (v574 << 32) | 0x40000000;
          LOBYTE(v22) = v515;
          v427 = *(v515 + 5);
          v428 = *(v515 + 6);
          v429 = *(v515 + 7);
          v430 = *(v515 + 8);
          *(v515 + 5) = v322;
          *(v515 + 6) = v325 | (v324 << 32);
          *(v515 + 7) = v425;
          *(v515 + 8) = v426;
          outlined consume of DisplayList.Item.Value(v427, v428, v429, v430);
          v155 = v515;
          v152 = v553;
          v153 = v513;
          if (v523)
          {
LABEL_372:
            *(v155 + 4) = v569;
          }
        }

        else if (v156 >> 60 == 11)
        {
          v495 = v155 + 7;
          v512 = v153;
          v514 = &v530[80 * v153];
          v5 = *((v156 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v158 = *((v156 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v492 = *((v156 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v489 = *((v156 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v486 = *((v156 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
          v481 = *((v156 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
          v478 = *((v156 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v476 = *((v156 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
          if ((*((v156 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0x10) != 0)
          {
            v237 = *v155;
            v238 = v155[1];
            v239 = *(v5 + 16);
            v555 = *(v155 + 7);
            v22 = *(v155 + 5);
            v240 = *(v155 + 6);
            outlined copy of DisplayList.Item.Value(v156, v157, v555, v1);
            v511 = v22;
            v3 = v555;
            v508 = v240;
            v465 = v1;
            outlined copy of DisplayList.Item.Value(v22, v240, v555, v1);

            v547 = v239;
            if (v239)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (!*(v5 + 16))
                {
                  goto LABEL_448;
                }
              }

              else
              {
                v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
                if (!*(v5 + 16))
                {
                  goto LABEL_448;
                }
              }

              v241 = 0;
              LODWORD(v22) = 0;
              v564 = 0;
              v1 = 0;
              v519 = v485 + v237;
              v505 = v130 + v238;
              v543 = v5 + 32;
              v242 = 1;
              v467 = v39;
              v529 = v5;
              while (2)
              {
                v551 = v242;
                v562 = v22;
                v22 = v543 + 80 * v241;
                v4 = *(v22 + 64);
                v558 = v1;
                if ((v4 >> 30) - 2 >= 2)
                {
                  v19 = *(v22 + 40);
                  v244 = *(v22 + 48);
                  v5 = *(v22 + 56);
                  v534 = v241;
                  if (v4 >> 30 == 1)
                  {
                    v3 = HIDWORD(v244);
                    *&v585 = *(v22 + 56);
                    WORD4(v585) = v4;
                    HIDWORD(v585) = HIDWORD(v4);
                    v245 = v519 + *v22;
                    v246 = v505 + *(v22 + 8);
                    if ((v4 & 0x10) != 0)
                    {
                      LOBYTE(v571) = 0;
                      WORD4(v585) = 0;
                      HIDWORD(v585) = 0;
                      v251 = *(v5 + 16);
                      v524 = v244;
                      v473 = HIDWORD(v244);
                      outlined copy of DisplayList.Effect(v19, v244, SBYTE4(v244));

                      if (v251)
                      {
                        v499 = v19;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          if (!*(v5 + 16))
                          {
                            goto LABEL_436;
                          }
                        }

                        else
                        {
                          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
                          if (!*(v5 + 16))
                          {
                            goto LABEL_436;
                          }
                        }

                        v18 = 0;
                        v1 = 0;
                        v4 = 0;
                        v252 = (v5 + 32);
                        v19 = v251 - 1;
                        while (1)
                        {
                          closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v252, v568, v567, v569, &v571, v245, v246, v127, v128);
                          if (v18 >= *(v5 + 16))
                          {
                            goto LABEL_439;
                          }

                          v3 = &v585;
                          v589 = *v252;
                          v253 = v252[1];
                          v254 = v252[2];
                          v255 = v252[3];
                          *&v592[12] = *(v252 + 60);
                          v591 = v254;
                          *v592 = v255;
                          v590 = v253;
                          DisplayList.Item.features.getter(&v572);
                          if (v18 >= *(v5 + 16))
                          {
                            goto LABEL_441;
                          }

                          v1 = v572 | v1;
                          v589 = *v252;
                          v256 = v252[1];
                          v257 = v252[2];
                          v258 = v252[3];
                          *&v592[12] = *(v252 + 60);
                          v591 = v257;
                          *v592 = v258;
                          v590 = v256;
                          DisplayList.Item.properties.getter(&v572);
                          v4 = v572 | v4;
                          if (v19 == v18)
                          {
                            *&v585 = v5;
                            HIDWORD(v585) = v4;
                            WORD4(v585) = v1;
                            v1 = v571;
                            v18 = v568;
                            v241 = v534;
                            v19 = v499;
                            goto LABEL_183;
                          }

                          ++v18;
                          v252 += 5;
                          if (v18 >= *(v5 + 16))
                          {
                            goto LABEL_436;
                          }
                        }
                      }

                      v1 = 0;
LABEL_183:
                      v248 = v524;
                      v3 = v473;
                    }

                    else
                    {
                      v247 = v244;
                      outlined copy of DisplayList.Effect(v19, v244, SBYTE4(v244));

                      v248 = v247;
                      v1 = 0;
                    }

                    v5 = v529;
                    if (v3 == 18)
                    {
                      if (v18 == v19)
                      {
                        v279 = *v22;
                        v280 = *(v22 + 8);
                        v281 = *(v22 + 16);
                        v282 = *(v22 + 24);
                        *&v589 = v569;
                        v283 = v248;
                        v284 = (*(*v18 + 136))(v279, v280, v281, v282, v245, v246, v127, v128);
                        outlined consume of DisplayList.Effect(v19, v283, 18);
                        v19 = 0;
                        v248 = 0;
                        v1 = v284 | v1;
                        v3 = 20;
                      }

                      else
                      {
                        v3 = 18;
                      }
                    }

                    else if (v3 == 7)
                    {
                      v526 = v248;
                      v270 = *(v19 + 16);
                      v18 = *(v19 + 24);
                      v3 = *(v19 + 32);
                      if ((v18 & 0x10) != 0)
                      {
                        LOBYTE(v571) = 0;
                        v271 = *(v270 + 2);

                        if (v271)
                        {
                          v501 = v19;
                          v474 = v3;
                          if (swift_isUniquelyReferenced_nonNull_native())
                          {
                            if (!*(v270 + 2))
                            {
                              goto LABEL_455;
                            }
                          }

                          else
                          {
                            v270 = specialized _ArrayBuffer._consumeAndCreateNew()(v270);
                            if (!*(v270 + 2))
                            {
                              goto LABEL_455;
                            }
                          }

                          v4 = 0;
                          v18 = 0;
                          v2 = 0;
                          v3 = (v270 + 32);
                          v19 = v271 - 1;
                          while (1)
                          {
                            closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v3, v568, v567, v569, &v571, v245, v246, v127, v128);
                            if (v4 >= *(v270 + 2))
                            {
                              break;
                            }

                            v5 = &v585;
                            v589 = *v3;
                            v272 = *(v3 + 16);
                            v273 = *(v3 + 32);
                            v274 = *(v3 + 48);
                            *&v592[12] = *(v3 + 60);
                            v591 = v273;
                            *v592 = v274;
                            v590 = v272;
                            DisplayList.Item.features.getter(&v572);
                            if (v4 >= *(v270 + 2))
                            {
                              goto LABEL_462;
                            }

                            v18 = v572 | v18;
                            v589 = *v3;
                            v275 = *(v3 + 16);
                            v276 = *(v3 + 32);
                            v277 = *(v3 + 48);
                            *&v592[12] = *(v3 + 60);
                            v591 = v276;
                            *v592 = v277;
                            v590 = v275;
                            DisplayList.Item.properties.getter(&v572);
                            v2 = (v572 | v2);
                            if (v19 == v4)
                            {
                              v1 = v571 | v1;
                              v5 = v529;
                              v19 = v501;
                              LODWORD(v3) = v474;
                              goto LABEL_209;
                            }

                            ++v4;
                            v3 += 80;
                            if (v4 >= *(v270 + 2))
                            {
                              goto LABEL_455;
                            }
                          }

LABEL_461:
                          __break(1u);
LABEL_462:
                          __break(1u);
LABEL_463:
                          __break(1u);
                          goto LABEL_464;
                        }

                        LOWORD(v18) = 0;
                        LODWORD(v2) = 0;
                      }

                      else
                      {
                        LODWORD(v2) = *(v19 + 28);
                      }

LABEL_209:
                      v291 = swift_allocObject();
                      *(v291 + 16) = v270;
                      *(v291 + 24) = v18;
                      *(v291 + 28) = v2;
                      *(v291 + 32) = v3;
                      outlined consume of DisplayList.Effect(v19, v526, 7);
                      v248 = 0;
                      v19 = v291;
                      v3 = 7;
                      v2 = v598;
                      v18 = v568;
                      v241 = v534;
                    }

                    v292 = v585;
                    v293 = v248 | (v3 << 32);
                    v294 = WORD4(v585) | (HIDWORD(v585) << 32) | 0x40000000;
                    v295 = *(v22 + 40);
                    v296 = *(v22 + 48);
                    v297 = *(v22 + 56);
                    v298 = *(v22 + 64);
                    *(v22 + 40) = v19;
                    *(v22 + 48) = v293;
                    *(v22 + 56) = v292;
                    *(v22 + 64) = v294;
                    outlined consume of DisplayList.Item.Value(v295, v296, v297, v298);
                    if (v1)
                    {
LABEL_211:
                      *(v22 + 32) = v569;
                      v558 = 1;
                    }
                  }

                  else if (v19 >> 60 == 11)
                  {
                    v39 = v158;
                    v3 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                    v18 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                    v249 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                    v250 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                    v2 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                    v470 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
                    v471 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
                    v468 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
                    v469 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
                    v472 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
                    if ((v18 & 0x10) != 0)
                    {
                      v259 = *v22;
                      v260 = *(v22 + 8);
                      LOBYTE(v572) = 0;
                      v261 = *(v3 + 16);
                      v1 = v244;
                      outlined copy of DisplayList.Item.Value(v19, v244, v5, v4);
                      v525 = v1;
                      v466 = v4;
                      outlined copy of DisplayList.Item.Value(v19, v1, v5, v4);

                      v500 = v19;
                      if (v261)
                      {
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          if (!*(v3 + 16))
                          {
                            goto LABEL_447;
                          }
                        }

                        else
                        {
                          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                          if (!*(v3 + 16))
                          {
                            goto LABEL_447;
                          }
                        }

                        v4 = 0;
                        v18 = 0;
                        v2 = 0;
                        v262 = v519 + v259;
                        v263 = v505 + v260;
                        v1 = v3 + 32;
                        v19 = v261 - 1;
                        while (1)
                        {
                          closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v1, v568, v567, v569, &v572, v262, v263, v127, v128);
                          if (v4 >= *(v3 + 16))
                          {
                            goto LABEL_453;
                          }

                          v589 = *v1;
                          v264 = *(v1 + 16);
                          v265 = *(v1 + 32);
                          v266 = *(v1 + 48);
                          *&v592[12] = *(v1 + 60);
                          v591 = v265;
                          *v592 = v266;
                          v590 = v264;
                          DisplayList.Item.features.getter(&v585);
                          if (v4 >= *(v3 + 16))
                          {
                            goto LABEL_454;
                          }

                          v18 = v585 | v18;
                          v589 = *v1;
                          v267 = *(v1 + 16);
                          v268 = *(v1 + 32);
                          v269 = *(v1 + 48);
                          *&v592[12] = *(v1 + 60);
                          v591 = v268;
                          *v592 = v269;
                          v590 = v267;
                          DisplayList.Item.properties.getter(&v585);
                          v2 = (v585 | v2);
                          if (v19 == v4)
                          {
                            v278 = v572;
                            goto LABEL_203;
                          }

                          ++v4;
                          v1 += 80;
                          if (v4 >= *(v3 + 16))
                          {
                            goto LABEL_447;
                          }
                        }
                      }

                      v278 = 0;
                      LOWORD(v18) = 0;
                      LODWORD(v2) = 0;
LABEL_203:
                      v535 = v278;
                      v19 = v500;
                      v1 = v525;
                      v4 = v466;
                    }

                    else
                    {
                      LODWORD(v2) = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                      v1 = *(v22 + 48);
                      outlined copy of DisplayList.Item.Value(v19, v244, v5, v4);
                      outlined copy of DisplayList.Item.Value(v19, v1, v5, v4);

                      v535 = 0;
                    }

                    v285 = swift_allocObject();
                    *(v285 + 16) = v3;
                    *(v285 + 24) = v18;
                    *(v285 + 28) = v2;
                    *(v285 + 32) = v249;
                    *(v285 + 40) = v250;
                    *(v285 + 48) = v472;
                    *(v285 + 52) = v471;
                    *(v285 + 53) = v470;
                    *(v285 + 56) = v469;
                    *(v285 + 60) = v468;
                    outlined consume of DisplayList.Item.Value(v19, v1, v5, v4);
                    v3 = v535;
                    v286 = v509;
                    if ((v535 & 1) == 0)
                    {
                      v286 = v1;
                    }

                    v287 = *(v22 + 40);
                    v288 = *(v22 + 48);
                    v289 = *(v22 + 56);
                    v290 = *(v22 + 64);
                    *(v22 + 40) = v285 | 0xB000000000000000;
                    *(v22 + 48) = v286;
                    *(v22 + 56) = 0;
                    *(v22 + 64) = 0;
                    outlined consume of DisplayList.Item.Value(v287, v288, v289, v290);
                    outlined consume of DisplayList.Item.Value(v19, v1, v5, v4);
                    v2 = v598;
                    v18 = v568;
                    v130 = v527;
                    v158 = v39;
                    v39 = v467;
                    v5 = v529;
                    if (v535)
                    {
                      goto LABEL_211;
                    }
                  }

                  else
                  {
                    v5 = v529;
                  }
                }

                if (v241 >= *(v5 + 16))
                {
                  goto LABEL_459;
                }

                v19 = &v585;
                v586 = *(v22 + 16);
                v587 = *(v22 + 32);
                v588[0] = *(v22 + 48);
                *(v588 + 12) = *(v22 + 60);
                v585 = *v22;
                DisplayList.Item.features.getter(&v572);
                if (v241 >= *(v5 + 16))
                {
                  goto LABEL_460;
                }

                v564 |= v572;
                v299 = *(v22 + 48);
                v300 = *(v22 + 60);
                v301 = *(v22 + 16);
                v591 = *(v22 + 32);
                *&v592[12] = v300;
                v302 = *v22;
                *v592 = v299;
                v589 = v302;
                v590 = v301;
                v303 = *(&v591 + 1);
                v304 = *&v592[20];
                v305 = *&v592[16] >> 30;
                if (*&v592[16] >> 30 > 1u)
                {
                  v3 = v555;
                  LODWORD(v22) = v562;
                  if (v305 != 2)
                  {
                    outlined destroy of DisplayList.Item(&v589);
                    v243 = v551;
                    v1 = v558;
                    if (v551 == v547)
                    {
                      goto LABEL_359;
                    }

                    goto LABEL_154;
                  }

                  v307 = *(*(&v591 + 1) + 16);
                  v1 = v558;
                  if (v307)
                  {
                    if (v307 > 7)
                    {
                      v308 = v307 & 0x7FFFFFFFFFFFFFF8;
                      v312 = (*(&v591 + 1) + 188);
                      v313 = 0uLL;
                      v314 = v307 & 0x7FFFFFFFFFFFFFF8;
                      v315 = 0uLL;
                      do
                      {
                        v316.i32[0] = *(v312 - 30);
                        v316.i32[1] = *(v312 - 20);
                        v316.i32[2] = *(v312 - 10);
                        v316.i32[3] = *v312;
                        v317.i32[0] = v312[10];
                        v317.i32[1] = v312[20];
                        v317.i32[2] = v312[30];
                        v317.i32[3] = v312[40];
                        v313 = vorrq_s8(v316, v313);
                        v315 = vorrq_s8(v317, v315);
                        v312 += 80;
                        v314 -= 8;
                      }

                      while (v314);
                      v318 = vorrq_s8(v315, v313);
                      *v318.i8 = vorr_s8(*v318.i8, *&vextq_s8(v318, v318, 8uLL));
                      v306 = v318.i32[0] | v318.i32[1];
                      if (v307 == v308)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v306 = 0;
                      v308 = 0;
                    }

                    v319 = v307 - v308;
                    v320 = (*(&v591 + 1) + 40 * v308 + 68);
                    do
                    {
                      v321 = *v320;
                      v320 += 10;
                      v306 |= v321;
                      --v319;
                    }

                    while (v319);
                  }

                  else
                  {
                    v306 = 0;
                  }
                }

                else
                {
                  if (!v305)
                  {
                    v3 = v555;
                    v1 = v558;
                    LODWORD(v22) = v562;
                    if (*(&v591 + 1) >> 60 == 6 || *(&v591 + 1) >> 60 == 11)
                    {
                      v306 = *((*(&v591 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                      break;
                    }

LABEL_239:
                    v243 = v551;
                    if (v551 == v547)
                    {
LABEL_359:
                      v560 = v22;
                      v129 = v485;
                      v159 = v511;
                      v160 = v508;
                      v4 = v1;
                      goto LABEL_362;
                    }

LABEL_154:
                    v241 = v243;
                    v242 = v243 + 1;
                    if (v243 >= *(v5 + 16))
                    {
                      goto LABEL_448;
                    }

                    continue;
                  }

                  v309 = v592[4];
                  if (v592[4] == 2)
                  {
                    outlined init with copy of DisplayList.Item(&v589, &v585);

                    v311 = v303;
                  }

                  else
                  {
                    v310 = v592[0];
                    if (v592[4] == 7)
                    {
                      v311 = *(*(&v591 + 1) + 28);
                      outlined init with copy of DisplayList.Item(&v589, &v585);
                      outlined consume of DisplayList.Effect(v303, v310, 7);
                    }

                    else if (v592[4] == 18)
                    {
                      (*(**(&v591 + 1) + 120))(&v572);
                      outlined init with copy of DisplayList.Item(&v589, &v585);
                      outlined consume of DisplayList.Effect(v303, v310, 18);

                      v311 = v572;
                    }

                    else
                    {
                      outlined init with copy of DisplayList.Item(&v589, &v585);
                      outlined consume of DisplayList.Effect(v303, v310, v309);

                      v311 = 0;
                    }
                  }

                  v306 = v311 | v304;
                  v3 = v555;
                  v1 = v558;
                  LODWORD(v22) = v562;
                }

                break;
              }

              LODWORD(v22) = v306 | v22;
              goto LABEL_239;
            }

            v564 = 0;
            v560 = 0;
            v4 = 0;
            v129 = v485;
            v159 = v22;
            v160 = v508;
LABEL_362:
            v1 = v465;
          }

          else
          {
            v564 = *((v156 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v560 = *((v156 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            v159 = *(v155 + 5);
            v160 = *(v155 + 6);
            outlined copy of DisplayList.Item.Value(v156, v157, v22, v1);
            outlined copy of DisplayList.Item.Value(v159, v160, v22, v1);

            v4 = 0;
            v3 = v22;
          }

          v22 = swift_allocObject();
          *(v22 + 16) = v5;
          *(v22 + 24) = v564;
          *(v22 + 28) = v560;
          *(v22 + 32) = v158;
          *(v22 + 40) = v492;
          *(v22 + 48) = v489;
          *(v22 + 52) = v486;
          *(v22 + 53) = v481;
          *(v22 + 56) = v478;
          *(v22 + 60) = v476;
          outlined consume of DisplayList.Item.Value(v159, v160, v3, v1);
          v417 = v509;
          if ((v4 & 1) == 0)
          {
            v417 = v160;
          }

          v418 = v22 | 0xB000000000000000;
          LOBYTE(v22) = v514;
          v419 = *(v514 + 5);
          v420 = *(v514 + 6);
          v421 = *(v514 + 7);
          v422 = *(v514 + 8);
          *(v514 + 5) = v418;
          *(v514 + 6) = v417;
          *v495 = 0;
          v495[1] = 0;
          outlined consume of DisplayList.Item.Value(v419, v420, v421, v422);
          outlined consume of DisplayList.Item.Value(v159, v160, v3, v1);
          v155 = v514;
          v152 = v553;
          v153 = v512;
          if (v4)
          {
            goto LABEL_372;
          }
        }

LABEL_373:
        if (v153 >= *(v152 + 2))
        {
          goto LABEL_457;
        }

        *(v19 + 96) = *(v155 + 1);
        *(v19 + 112) = *(v155 + 2);
        *(v19 + 128) = *(v155 + 3);
        *(v19 + 140) = *(v155 + 60);
        *(v19 + 80) = *v155;
        v22 = v153;
        v431 = v155;
        DisplayList.Item.features.getter(&v585);
        if (v22 >= *(v553 + 2))
        {
          goto LABEL_458;
        }

        v545 |= v585;
        *(v19 + 96) = *(v431 + 1);
        *(v19 + 112) = *(v431 + 2);
        *(v19 + 128) = *(v431 + 3);
        *(v19 + 140) = *(v431 + 60);
        *(v19 + 80) = *v431;
        DisplayList.Item.properties.getter(&v585);
        if (v540 == v531)
        {
          v575 = v553;
          v577 = v585 | v541;
          v576 = v545;
          break;
        }

        v541 |= v585;
        v153 = v540;
        v154 = v540 + 1;
        v152 = v553;
        if (v540 >= *(v553 + 2))
        {
          goto LABEL_444;
        }
      }
    }
  }

LABEL_31:
  *&v589 = v569;
  DisplayList.translate(by:version:)(__PAIR128__(*&v39, *&v38), &v589);
  *&v585 = v575;
  WORD4(v585) = v576;
  HIDWORD(v585) = v577;
  AGGraphSetOutputValue();

  v146 = v2[9];
  *(v19 + 208) = v2[8];
  *(v19 + 224) = v146;
  *(v19 + 240) = v2[10];
  *(v19 + 251) = *(v2 + 171);
  v147 = v2[5];
  *(v19 + 144) = v2[4];
  *(v19 + 160) = v147;
  v148 = v2[7];
  *(v19 + 176) = v2[6];
  *(v19 + 192) = v148;
  v149 = v2[1];
  *(v19 + 80) = *v2;
  *(v19 + 96) = v149;
  v150 = v2[3];
  *(v19 + 112) = v2[2];
  *(v19 + 128) = v150;
  outlined destroy of Image.Resolved(&v589);

  outlined consume of ContentTransition.Storage(v595, DWORD2(v595) | (BYTE12(v595) << 32), SBYTE13(v595));
}

uint64_t sub_18D12D2B0()
{

  return swift_deallocObject();
}

uint64_t sub_18D12D2E8()
{

  return swift_deallocObject();
}

uint64_t sub_18D12D320()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI5ImageVAAE8ResolvedVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 128) >> 1;
  v2 = -2 - v1;
  if (-2 - v1 < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized ShapeStyledDisplayList.updateValue()()
{
  v4 = v0;
  v191 = *MEMORY[0x1E69E9840];
  Description_high = HIDWORD(v0->Description);
  Value = AGGraphGetValue();
  v7 = *(Value + 48);
  v9 = *Value;
  v8 = *(Value + 16);
  v189[2] = *(Value + 32);
  v189[3] = v7;
  v189[0] = v9;
  v189[1] = v8;
  v10 = *(Value + 112);
  v12 = *(Value + 64);
  v11 = *(Value + 80);
  v189[6] = *(Value + 96);
  v189[7] = v10;
  v189[4] = v12;
  v189[5] = v11;
  v14 = *(Value + 144);
  v13 = *(Value + 160);
  v15 = *(Value + 171);
  v189[8] = *(Value + 128);
  *(v190 + 11) = v15;
  v189[9] = v14;
  v190[0] = v13;
  v16 = *(Value + 144);
  v184 = *(Value + 128);
  v185 = v16;
  *v186 = *(Value + 160);
  *&v186[11] = *(Value + 171);
  v17 = *(Value + 80);
  v181 = *(Value + 64);
  v182[0] = v17;
  v18 = *(Value + 112);
  v182[1] = *(Value + 96);
  v183 = v18;
  v19 = *(Value + 16);
  v177 = *Value;
  v178 = v19;
  v20 = *(Value + 48);
  v179 = *(Value + 32);
  v180 = v20;
  v22 = (v21 & 1);
  v186[27] = v21 & 1;
  v23 = HIDWORD(v0[1].Description);
  *&v24 = LODWORD(v0[2].Description);
  outlined init with copy of Image.Resolved(v189, __dst);
  v25 = &v177;
  if (specialized Image.Resolved.mustUpdate(data:position:environment:)(&v4[3].Kind + 4, v23))
  {
    v186[27] = 1;
    goto LABEL_8;
  }

  if (v22 || !HIWORD(v4[4].Kind))
  {
LABEL_8:
    v27 = ++static DisplayList.Version.lastValue;
    if (!static DisplayList.Version.lastValue)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  *&__dst[0].f64[0] = __PAIR64__(v4[2].Kind, v23);
  LODWORD(__dst[0].f64[1]) = Description_high;
  v26 = AGGraphAnyInputsChanged();
  v27 = ++static DisplayList.Version.lastValue;
  if (v26)
  {
    if (!v27)
    {
LABEL_9:
      LOWORD(v28) = 0;
      goto LABEL_10;
    }

LABEL_7:
    v28 = (2 * ((33 * (v27 >> 16)) ^ v27)) | 1;
LABEL_10:
    HIWORD(v4[4].Kind) = v28;
  }

  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_54;
  }

  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  rect_28 = LODWORD(v24);
  AGCreateWeakAttribute();
  v132 = v27;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v33 = AGGraphGetValue();
  v125 = v33[1];
  v126 = *v33;
  v34 = AGGraphGetValue();
  v35 = v34[1];
  v124 = *v34;
  v36 = AGGraphGetValue();
  v37 = *v36;
  v38 = v36[1];
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v172 = v177;
  v173 = v178;
  v174 = v179;
  v175 = v180;
  *&v176[28] = *(v182 + 12);
  *v176 = v181;
  *&v176[16] = v182[0];
  v39 = *(&v185 + 1);
  rect = v177;
  v122 = *&v176[24];
  v123 = v180;
  v40 = v181 & 0xFFFFFFFFC000FFFFLL;
  v41 = DWORD2(v182[1]) & 0x30301FF | 0x60000000;
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = v37;
  v46 = v38;
  v121 = *&v176[8];
  if (BYTE8(v182[1]) == 2)
  {
    v45 = 0.0;
    if (*(&v185 + 1))
    {
      v43 = *(*(&v185 + 1) + 48);
      v44 = *(*(&v185 + 1) + 56);
    }

    if (*v173.i64 == 0.0)
    {
      v46 = 0.0;
    }

    else
    {
      v47 = vextq_s8(v173, v174, 8uLL);
      if (v174.u8[8] <= 3u)
      {
        v47 = vextq_s8(v47, v47, 8uLL);
      }

      v45 = vmuld_lane_f64(1.0 / *v173.i64, v47, 1);
      v46 = 1.0 / *v173.i64 * v47.f64[0];
    }
  }

  v119 = v173;
  v120 = v174;
  outlined init with copy of GraphicsImage(&v172, __dst);
  _setThreadGeometryProxyData();
  v164 = v119;
  v163 = rect;
  v165 = v120;
  v166 = v123;
  *v167 = v40;
  *&v167[24] = v122;
  *&v167[8] = v121;
  *&v167[40] = v41;
  recta = v43;
  v168 = v43;
  v169 = v44;
  v170 = v45;
  v171 = v46;
  v24 = *&v4->Kind;
  memset(&v162[8], 0, 64);
  *v162 = v24;
  *&v162[72] = 0x20000000;
  *&v162[80] = 0;

  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v48 = v186[1] == 3 || v39 == 0;
  v49 = v48;
  v130 = v49;
  if (v48)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v50 = 0.0;
    v51 = -1610612736;
  }

  else
  {
    v42 = v39[8] * (v37 / v39[4]);
    v50 = v39[9] * (v38 / v39[5]);
    LOBYTE(__dst[0].f64[0]) = v186[1];
    LOBYTE(__src[0]) = v186[8];
    SymbolVariants.Shape.path(in:cornerRadius:)(*&v186[4] | (v186[8] << 32), v187, 0.0, 0.0, v42, v50);
    v51 = 0;
    v52 = v187[0];
    v53 = v187[1];
    v54 = v187[2];
    v55 = v187[3];
    v56 = v188 | 0x10000;
  }

  v1 = __src;
  v27 = &v145;
  v57 = v126 - v124;
  v58 = v125 - v35;
  _setThreadGeometryProxyData();
  *&v155 = v52;
  *(&v155 + 1) = v53;
  *&v156 = v54;
  *(&v156 + 1) = v55;
  *v157 = v56;
  memset(&v157[8], 0, 64);
  *&v157[72] = v51;
  v159 = 0;
  v158 = 0;
  v160 = v42;
  v161 = v50;
  if (!v130 || v53 | v52 | v54 | v55 | v56)
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v155, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
    v192.origin.x = 0.0;
    v192.origin.y = 0.0;
    v192.size.width = v42;
    v192.size.height = v50;
    v193 = CGRectOffset(v192, v57, v58);
    Description = v4->Description;
    Kind_high = HIWORD(v4[4].Kind);
    Kind = v4[3].Kind;
    *&__src[9] = 0;
    DWORD2(__src[9]) = 0;
    if (one-time initialization token for normal != -1)
    {
      x = v193.origin.x;
      y = v193.origin.y;
      width = v193.size.width;
      height = v193.size.height;
      swift_once();
      v193.size.height = height;
      v193.size.width = width;
      v193.origin.y = y;
      v193.origin.x = x;
    }

    __src[3] = *&v157[16];
    __src[4] = *&v157[32];
    __src[5] = *&v157[48];
    *(&__src[5] + 12) = *&v157[60];
    __src[0] = v155;
    __src[1] = v156;
    *(&__src[15] + 1) = static GraphicsBlendMode.normal;
    LOBYTE(__src[16]) = byte_1ED52F818;
    DWORD1(__src[16]) = 1065353216;
    BYTE8(__src[16]) = 0;
    __src[2] = *v157;
    WORD6(__src[6]) = Kind_high;
    *&__src[7] = v193.origin.x;
    *(&__src[7] + 1) = *&v193.origin.y;
    *&__src[8] = v193.size.width;
    *(&__src[8] + 1) = *&v193.size.height;
    *&__src[10] = v193.origin.x;
    *(&__src[10] + 1) = *&v193.origin.y;
    *&__src[11] = v193.size.width;
    *(&__src[11] + 1) = *&v193.size.height;
    __src[12] = v132;
    __src[13] = 0uLL;
    *&__src[14] = 3221225472;
    DWORD2(__src[14]) = Description;
    BYTE12(__src[14]) = Kind;
    LODWORD(__src[15]) = rect_28;
    LOBYTE(v145) = 1;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(&v145, v162, __src, v4);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v155, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
    memcpy(__dst, __src, 0x109uLL);
    outlined destroy of _ShapeStyle_RenderedShape(__dst);
  }

  v22 = &static GraphicsBlendMode.normal;
  v2 = __dst;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v163, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v194.origin.x = recta;
  v194.origin.y = v44;
  v194.size.width = v45;
  v194.size.height = v46;
  *&v29 = CGRectOffset(v194, v57, v58);
  LODWORD(v23) = v4->Description;
  LOWORD(v25) = HIWORD(v4[4].Kind);
  LOBYTE(v3) = v4[3].Kind;
  __dst[9].f64[0] = 0.0;
  LODWORD(__dst[9].f64[1]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v62 = *v167;
    v63 = *&v167[16];
    v64 = v165;
    v1[20] = v166;
    v1[21] = v62;
    v1[22] = v63;
    *(v2 + 92) = *&v167[28];
    v65 = v164;
    *v2 = v163;
    v2[1] = v65;
    v67 = *(v22 + 8);
    *&__dst[15].f64[1] = *v22;
    v66 = *&__dst[15].f64[1];
    LOBYTE(__dst[16].f64[0]) = v67;
    HIDWORD(__dst[16].f64[0]) = 1065353216;
    LOBYTE(__dst[16].f64[1]) = 0;
    v2[2] = v64;
    WORD2(__dst[6].f64[1]) = v25;
    __dst[7].f64[0] = v29;
    __dst[7].f64[1] = v30;
    __dst[8].f64[0] = v31;
    __dst[8].f64[1] = v32;
    __dst[10].f64[0] = v29;
    __dst[10].f64[1] = v30;
    __dst[11].f64[0] = v31;
    __dst[11].f64[1] = v32;
    __dst[12] = v132;
    __dst[13] = 0uLL;
    *&__dst[14].f64[0] = 3221225472;
    LODWORD(__dst[14].f64[1]) = v23;
    BYTE4(__dst[14].f64[1]) = v3;
    LODWORD(__dst[15].f64[0]) = rect_28;
    LOBYTE(__src[0]) = 0;
    outlined copy of GraphicsBlendMode(v66, v67);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__src, v162, __dst, v4);
    v68 = v4[3].Kind;
    if (v24 == 0.0)
    {
      break;
    }

    LODWORD(v132) = LOBYTE(v4[3].Kind);
    v3 = *(*&v24 + 56);
    v23 = v3;
    swift_beginAccess();
    v25 = *(*&v24 + 24);
    if (*(v25 + 2) <= v3)
    {
LABEL_46:
      *(*&v24 + 56) = 0;
      v68 = v132;
      break;
    }

    v4 = &type metadata for _ShapeStyle_Pack.Style;
    v22 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?;
    while (1)
    {
      *(*&v24 + 56) = v3 + 1;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(*&v24 + 24) = v25;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v3 < 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
        if (v3 < 0)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      if (*(v25 + 2) <= v23)
      {
        break;
      }

      v78 = &v25[232 * v23];
      v78[260] = 1;
      *(*&v24 + 24) = v25;
      swift_endAccess();
      v79 = *(v78 + 13);
      v80 = *(v78 + 56);
      v81 = *(v78 + 72);
      v82 = *(v78 + 104);
      v1[2] = *(v78 + 88);
      v1[3] = v82;
      *v1 = v80;
      v1[1] = v81;
      v83 = *(v78 + 120);
      v84 = *(v78 + 152);
      v85 = *(v78 + 21);
      v1[5] = *(v78 + 136);
      v1[6] = v84;
      v1[4] = v83;
      v86 = *v2;
      v87 = v2[2];
      v137 = v2[1];
      v138 = v87;
      v136 = *v2;
      *(v140 + 12) = *(v2 + 92);
      v88 = v2[5];
      v90 = v2[2];
      v89 = v2[3];
      v91 = v89;
      v139[1] = v2[4];
      v140[0] = v88;
      v139[0] = v89;
      *&__src[7] = v85;
      v141 = v86;
      v142 = v137;
      *(v144 + 12) = *(v2 + 92);
      v92 = v2[5];
      *&v143[32] = v139[1];
      v144[0] = v92;
      *v143 = v90;
      *&v143[16] = v91;
      __dst[6].f64[0] = 0.0;
      v2[4] = 0u;
      v2[5] = 0u;
      v2[2] = 0u;
      v2[3] = 0u;
      *v2 = 0u;
      v2[1] = 0u;
      LODWORD(__dst[6].f64[1]) = -1610612736;
      swift_retain_n();
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(__src, &v145, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v136, &v145);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v141);

      __dst[9].f64[0] = v24;
      LODWORD(__dst[9].f64[1]) = v79;
      if (*&__src[7])
      {
        v93 = v1[5];
        v149 = v1[4];
        v150 = v93;
        v151 = v1[6];
        v94 = v1[1];
        v145 = *v1;
        v146 = v94;
        v95 = v1[3];
        v147 = v1[2];
        v148 = v95;
        v152 = *&__src[7];
        _ShapeStyle_RenderedShape.render(style:)(&v145);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(__dst);

      outlined destroy of GlassEntryView?(__src, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);

      v69 = v2[4];
      v70 = v2[5];
      v71 = v2[2];
      v148 = v2[3];
      v149 = v69;
      v150 = v70;
      *(v27 + 92) = *(v2 + 92);
      v72 = v2[1];
      *v27 = *v2;
      *(v27 + 16) = v72;
      *(v27 + 32) = v71;
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v145);
      v73 = v139[0];
      v74 = v140[0];
      v2[4] = v139[1];
      v2[5] = v74;
      *(v2 + 92) = *(v140 + 12);
      v75 = v137;
      v76 = v138;
      *v2 = v136;
      v2[1] = v75;
      v2[2] = v76;
      v2[3] = v73;
      v3 = *(*&v24 + 56);
      v23 = v3;
      swift_beginAccess();
      v25 = *(*&v24 + 24);
      if (*(v25 + 2) <= v3)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v112 = v29;
    v113 = v30;
    v114 = v31;
    v115 = v32;
    swift_once();
    v32 = v115;
    v31 = v114;
    v30 = v113;
    v29 = v112;
  }

  v96 = (*&v162[72] >> 28) & 3;
  if (v96)
  {
    if (v96 == 1)
    {

      DisplayList.init(_:)(v97, __src);
      v98 = v2[8];
      v141 = v2[7];
      v142 = v98;
      *&v143[8] = xmmword_18DDA6ED0;
      *&v143[32] = WORD4(__src[0]) | (HIDWORD(__src[0]) << 32) | 0x40000000;
      *&v143[40] = LODWORD(__dst[14].f64[1]);
      *&v143[24] = *&__src[0];
      *v143 = __dst[12].f64[0];
      LOBYTE(__src[0]) = v68;
      DisplayList.Item.canonicalize(options:)(__src);
      v99 = *v143;
      v100 = *&v143[16];
      *(v27 + 32) = *v143;
      *(v27 + 48) = v100;
      v101 = *&v143[28];
      *(v27 + 60) = *&v143[28];
      v103 = v141;
      v102 = v142;
      *v27 = v141;
      *(v27 + 16) = v102;
      v137 = v102;
      v138 = v99;
      v139[0] = v100;
      *(v139 + 12) = v101;
      v136 = v103;
      outlined init with copy of DisplayList.Item(&v145, __src);
      DisplayList.init(_:)(&v136, &v133);
      v104 = *&v143[16];
      v1[2] = *v143;
      v1[3] = v104;
      *(v1 + 60) = *&v143[28];
      v105 = v142;
      *v1 = v141;
      v1[1] = v105;
      outlined destroy of DisplayList.Item(__src);
    }

    else
    {
      v133 = MEMORY[0x1E69E7CC0];
      v134 = 0;
      v135 = 0;
    }
  }

  else
  {
    v145 = *&v162[8];
    v146 = *&v162[24];
    v147 = *&v162[40];
    v148 = *&v162[56];
    *&v149.f64[0] = *&v162[72] & 0xFFFFFFFFCFFFFFFFLL;
    LODWORD(v149.f64[1]) = *&v162[80];
    __src[0] = *&v162[8];
    __src[1] = *&v162[24];
    __src[2] = *&v162[40];
    __src[3] = *&v162[56];
    *&__src[4] = *&v162[72] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__src[4]) = *&v162[80];
    outlined init with copy of DisplayList.Item(__src, &v141);
    DisplayList.init(_:)(&v145, &v133);
  }

  v137 = *&v162[24];
  v138 = *&v162[40];
  v139[0] = *&v162[56];
  *(v139 + 12) = *&v162[68];
  v136 = *&v162[8];
  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v136);
  memset(&v162[8], 0, 64);
  *&v162[72] = 0x20000000;
  *&v162[80] = 0;
  *&v145 = v133;
  WORD4(v145) = v134;
  HIDWORD(v145) = v135;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v163, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__src, __dst, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__src);

  *v143 = *&v162[32];
  *&v143[16] = *&v162[48];
  *&v143[32] = *&v162[64];
  LODWORD(v144[0].f64[0]) = *&v162[80];
  v141 = *v162;
  v142 = *&v162[16];
  outlined destroy of _ShapeStyle_RenderedLayers(&v141);
  v106 = v185;
  *(v27 + 128) = v184;
  *(v27 + 144) = v106;
  *(v27 + 160) = *v186;
  *(v27 + 172) = *&v186[12];
  v107 = v182[0];
  *(v27 + 64) = v181;
  *(v27 + 80) = v107;
  v108 = v183;
  *(v27 + 96) = v182[1];
  *(v27 + 112) = v108;
  v109 = v178;
  *v27 = v177;
  *(v27 + 16) = v109;
  v110 = v180;
  *(v27 + 32) = v179;
  *(v27 + 48) = v110;
  return outlined destroy of (value: Image.Resolved, changed: Bool)(&v145);
}

{
  v69 = *MEMORY[0x1E69E9840];
  v6 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = *(Value + 8);
  v10 = *(Value + 17);
  LODWORD(v11) = *(Value + 18);
  v51 = *(Value + 16);
  if ((v12 & 1) != 0 || !*(v0 + 50))
  {
    v14 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v6;
    v13 = AGGraphAnyInputsChanged();
    v14 = ++static DisplayList.Version.lastValue;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v15 = (2 * ((33 * (v14 >> 16)) ^ v14)) | 1;
  if (!v14)
  {
    LOWORD(v15) = 0;
  }

  *(v0 + 50) = v15;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_24:
    v45 = v16;
    v46 = v17;
    v47 = v18;
    v48 = v19;
    swift_once();
    v19 = v48;
    v18 = v47;
    v17 = v46;
    v16 = v45;
    goto LABEL_22;
  }

  v49 = v11;
  v20 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v50 = v20;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v21 = AGGraphGetValue();
  v22 = *v21;
  v23 = v21[1];
  v24 = AGGraphGetValue();
  v25 = v22 - *v24;
  v26 = v23 - v24[1];
  v27 = AGGraphGetValue();
  v28 = *v27;
  v29 = *(v27 + 8);
  _threadGeometryProxyData();
  v4 = v14;
  _setThreadGeometryProxyData();
  v70.origin.x = 0.0;
  v70.origin.y = 0.0;
  v70.size.width = v28;
  v70.size.height = v29;
  if (CGRectIsNull(v70))
  {
    v11 = 0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 6;
  }

  else if (v8 == 0.0 && v9 == 0.0 || (v71.origin.x = 0.0, v71.origin.y = 0.0, v71.size.width = v28, v71.size.height = v29, CGRectIsInfinite(v71)))
  {
    v11 = 0;
    v32 = 0;
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v11 = swift_allocObject();
    v30 = 0.0;
    v31 = 0.0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v28;
    *(v11 + 40) = v29;
    *(v11 + 48) = v8;
    *(v11 + 56) = v9;
    v32 = 2;
    *(v11 + 64) = v51;
  }

  v5 = v50;
  v1 = &v65;
  v14 = __src;
  v33 = 0x10000;
  if (!v49)
  {
    v33 = 0;
  }

  v34 = 256;
  if (!v10)
  {
    v34 = 0;
  }

  v35 = v33 | v34 | v32;
  _setThreadGeometryProxyData();
  v58[0] = v11;
  v58[1] = 0;
  *&v58[2] = v30;
  *&v58[3] = v31;
  v58[4] = v35;
  v58[8] = 0;
  v59 = 0;
  v61 = 0;
  v60 = 0;
  v62 = v28;
  v63 = v29;
  v36 = *v0;
  v3 = v56;
  memset(&v56[8], 0, 64);
  v57 = 0;
  *&v56[72] = 0x20000000;
  *v56 = v36;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v58, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v72.origin.x = 0.0;
  v72.origin.y = 0.0;
  v72.size.width = v28;
  v72.size.height = v29;
  *&v16 = CGRectOffset(v72, v25, v26);
  v10 = *(v0 + 8);
  v2 = *(v0 + 50);
  LOBYTE(v11) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_24;
  }

LABEL_22:
  v37 = static GraphicsBlendMode.normal;
  v38 = byte_1ED52F818;
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v39 = *(v3 + 136);
  v40 = *(v3 + 168);
  *(v14 + 64) = *(v3 + 152);
  *(v14 + 80) = v40;
  *(v14 + 92) = *(v3 + 180);
  v41 = *(v3 + 104);
  __src[0] = *(v3 + 88);
  __src[1] = v41;
  __src[2] = *(v3 + 120);
  __src[3] = v39;
  WORD6(__src[6]) = v2;
  *&__src[7] = v16;
  *(&__src[7] + 1) = v17;
  *&__src[8] = v18;
  *(&__src[8] + 1) = v19;
  *&__src[10] = v16;
  *(&__src[10] + 1) = v17;
  *&__src[11] = v18;
  *(&__src[11] + 1) = v19;
  __src[12] = v4;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v11;
  LODWORD(__src[15]) = v5;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v37, v38);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v56, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v52);
  v65 = v52;
  v66 = v53;
  v67 = v54;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v58, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v42 = *&v56[48];
  *(v1 + 2) = *&v56[32];
  *(v1 + 3) = v42;
  *(v1 + 4) = *&v56[64];
  v68 = v57;
  v43 = *&v56[16];
  *v1 = *v56;
  *(v1 + 1) = v43;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v65);
}

{
  v62 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v5 = *Value;
  LODWORD(v6) = Value[1];
  if ((v7 & 1) != 0 || !*(v0 + 50))
  {
    v9 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v3;
    v8 = AGGraphAnyInputsChanged();
    v9 = ++static DisplayList.Version.lastValue;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v10 = (2 * ((33 * (v9 >> 16)) ^ v9)) | 1;
  if (!v9)
  {
    LOWORD(v10) = 0;
  }

  *(v0 + 50) = v10;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_25:
    v36 = v11;
    v37 = v12;
    v38 = v13;
    v39 = v14;
    swift_once();
    v14 = v39;
    v13 = v38;
    v12 = v37;
    v11 = v36;
    goto LABEL_23;
  }

  v40 = LODWORD(v6);
  v41 = v5;
  v5 = __src;
  v15 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v42 = v15;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v16 = AGGraphGetValue();
  v17 = *v16;
  v18 = v16[1];
  v19 = AGGraphGetValue();
  v20 = v17 - *v19;
  v21 = v18 - v19[1];
  v22 = AGGraphGetValue();
  v23 = *v22;
  v24 = *(v22 + 8);
  _threadGeometryProxyData();
  v2 = v9;
  _setThreadGeometryProxyData();
  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.width = v23;
  v63.size.height = v24;
  IsNull = CGRectIsNull(v63);
  if (IsNull)
  {
    v9 = 0;
  }

  else
  {
    v9 = *&v23;
  }

  if (IsNull)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v24;
  }

  v26 = 6;
  if (!IsNull)
  {
    v26 = 0;
  }

  v27 = 0x10000;
  if (!v40)
  {
    v27 = 0;
  }

  v28 = 256;
  if (!v41)
  {
    v28 = 0;
  }

  v29 = v27 | v28 | v26;
  _setThreadGeometryProxyData();
  v49 = 0uLL;
  *&v50 = v9;
  *(&v50 + 1) = v6;
  *&v51 = v29;
  *&v53 = 0;
  *&v54[24] = 0;
  v55 = 0;
  v56 = 0;
  v57 = v23;
  v58 = v24;
  v30 = *v0;
  *(v47 + 8) = 0u;
  *(&v47[1] + 8) = 0u;
  *(&v47[2] + 8) = 0u;
  *(&v47[3] + 8) = 0u;
  *(&v47[4] + 1) = 0x20000000;
  v48 = 0;
  *&v47[0] = v30;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v49, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v64.origin.x = 0.0;
  v64.origin.y = 0.0;
  v64.size.width = v23;
  v64.size.height = v24;
  *&v11 = CGRectOffset(v64, v20, v21);
  LODWORD(v9) = *(v0 + 8);
  v1 = *(v0 + 50);
  LOBYTE(v6) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_25;
  }

LABEL_23:
  v31 = static GraphicsBlendMode.normal;
  v32 = byte_1ED52F818;
  *(v5 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v32;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v33 = v52;
  v34 = *v54;
  v5[4] = v53;
  v5[5] = v34;
  *(v5 + 92) = *&v54[12];
  __src[0] = v49;
  __src[1] = v50;
  __src[2] = v51;
  __src[3] = v33;
  WORD6(__src[6]) = v1;
  *(v5 + 14) = v11;
  *(v5 + 15) = v12;
  *(v5 + 16) = v13;
  *(v5 + 17) = v14;
  *(v5 + 20) = v11;
  *(v5 + 21) = v12;
  *(v5 + 22) = v13;
  *(v5 + 23) = v14;
  *(v5 + 24) = v2;
  *(v5 + 25) = 0;
  *(v5 + 26) = 0;
  *(v5 + 27) = 0;
  *(v5 + 28) = 3221225472;
  DWORD2(__src[14]) = v9;
  BYTE12(__src[14]) = LOBYTE(v6);
  LODWORD(__src[15]) = v42;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v31, v32);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v47, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v43);
  *&v60[0] = v43;
  WORD4(v60[0]) = v44;
  HIDWORD(v60[0]) = v45;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v49, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v60[2] = v47[2];
  v60[3] = v47[3];
  v60[4] = v47[4];
  v61 = v48;
  v60[0] = v47[0];
  v60[1] = v47[1];
  return outlined destroy of _ShapeStyle_RenderedLayers(v60);
}

{
  v114 = *MEMORY[0x1E69E9840];
  v5 = *(v0 + 3);
  type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 16);
  v10 = *(Value + 24);
  LODWORD(v11) = *(Value + 32);
  LODWORD(v12) = *(Value + 33);
  if ((v13 & 1) != 0 || !*(v0 + 25))
  {
    v15 = ++static DisplayList.Version.lastValue;
    goto LABEL_6;
  }

  __src[0].f64[0] = *(v0 + 28);
  LODWORD(__src[0].f64[1]) = v5;
  v14 = AGGraphAnyInputsChanged();
  v15 = ++static DisplayList.Version.lastValue;
  if (v14)
  {
LABEL_6:
    v16 = (2 * ((33 * (v15 >> 16)) ^ v15)) | 1;
    if (!v15)
    {
      LOWORD(v16) = 0;
    }

    *(v0 + 25) = v16;
  }

  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_34;
  }

  v1 = __src;
  v72 = v11;
  v21 = *(v0 + 10);
  v74 = v15;
  v69 = AGCreateWeakAttribute();
  v22 = AGCreateWeakAttribute();
  v71 = v12;
  v23 = v22;
  v70 = HIDWORD(v22);
  v73 = v21;
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v68 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v67 = HIDWORD(v26);
  v28 = AGCreateWeakAttribute();
  v29 = v28;
  v66 = HIDWORD(v28);
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v65 = HIDWORD(v30);
  type metadata accessor for CGPoint(0);
  v32 = AGGraphGetValue();
  v33 = *v32;
  v34 = v32[1];
  v35 = AGGraphGetValue();
  v36 = v33 - *v35;
  v37 = v34 - v35[1];
  v38 = AGGraphGetValue();
  v39 = *v38;
  v40 = *(v38 + 8);
  _threadGeometryProxyData();
  *&__src[0].f64[0] = v69;
  *&__src[0].f64[1] = __PAIR64__(v70, v23);
  *&__src[1].f64[0] = __PAIR64__(v68, v25);
  *&__src[1].f64[1] = __PAIR64__(v67, v27);
  *&__src[2].f64[0] = __PAIR64__(v66, v29);
  v3 = &v96;
  *&__src[2].f64[1] = __PAIR64__(v65, v31);
  v4 = v74;
  LODWORD(__src[3].f64[0]) = v74;
  _setThreadGeometryProxyData();
  specialized Shape.effectivePath(in:)(v112, 0.0, 0.0, v39, v40, v7, v8, v9, v10);
  v41 = 0x10000;
  if (!v71)
  {
    v41 = 0;
  }

  v42 = 256;
  if (!v72)
  {
    v42 = 0;
  }

  v43 = v41 | v42 | v113;
  _setThreadGeometryProxyData();
  v102 = v112[1];
  v101 = v112[0];
  *&v103.f64[0] = v43;
  v105.f64[0] = 0.0;
  v107 = 0;
  v109 = 0;
  v108 = 0;
  v110 = v39;
  v111 = v40;
  v15 = *v0;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  *v100 = 0u;
  v96 = v15;
  *&v100[16] = 0x20000000;
  *&v100[24] = 0;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v101, __src, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v115.origin.x = 0.0;
  v115.origin.y = 0.0;
  v115.size.width = v39;
  v115.size.height = v40;
  *&v17 = CGRectOffset(v115, v36, v37);
  LODWORD(v11) = *(v0 + 2);
  LOWORD(v2) = *(v0 + 25);
  LOBYTE(v12) = v0[48];
  __src[9].f64[0] = 0.0;
  LODWORD(__src[9].f64[1]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v44 = static GraphicsBlendMode.normal;
    v45 = byte_1ED52F818;
    *&__src[15].f64[1] = static GraphicsBlendMode.normal;
    LOBYTE(__src[16].f64[0]) = byte_1ED52F818;
    HIDWORD(__src[16].f64[0]) = 1065353216;
    LOBYTE(__src[16].f64[1]) = 0;
    __src[4] = v105;
    __src[5] = v106;
    *(&v1[5] + 12) = *(v3 + 180);
    __src[0] = v101;
    __src[1] = v102;
    __src[2] = v103;
    __src[3] = v104;
    WORD2(__src[6].f64[1]) = v2;
    __src[7].f64[0] = v17;
    __src[7].f64[1] = v18;
    __src[8].f64[0] = v19;
    __src[8].f64[1] = v20;
    __src[10].f64[0] = v17;
    __src[10].f64[1] = v18;
    __src[11].f64[0] = v19;
    __src[11].f64[1] = v20;
    __src[12] = v4;
    __src[13] = 0uLL;
    *&__src[14].f64[0] = 3221225472;
    LODWORD(__src[14].f64[1]) = v11;
    BYTE4(__src[14].f64[1]) = v12;
    LODWORD(__src[15].f64[0]) = v73;
    LOBYTE(__dst[0]) = 0;
    outlined copy of GraphicsBlendMode(v44, v45);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v96, __src, v0);
    v46 = v0[48];
    if (!v15)
    {
      break;
    }

    v75 = v46;
    v3 = *(v15 + 56);
    v2 = v3;
    swift_beginAccess();
    v0 = *(v15 + 24);
    if (*(v0 + 2) <= v3)
    {
LABEL_26:
      *(v15 + 56) = 0;
      v3 = &v96;
      v46 = v75;
      break;
    }

    v4 = 1;
    v11 = &type metadata for _ShapeStyle_Pack.Style;
    v12 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?;
    while (1)
    {
      *(v15 + 56) = v3 + 1;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + 24) = v0;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v3 & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
        if ((v3 & 0x80000000) != 0)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      if (*(v0 + 2) <= v2)
      {
        break;
      }

      v48 = &v0[232 * v2];
      v48[260] = 1;
      *(v15 + 24) = v0;
      swift_endAccess();
      v49 = *(v48 + 13);
      v50 = *(v48 + 56);
      v51 = *(v48 + 72);
      v52 = *(v48 + 104);
      __dst[2] = *(v48 + 88);
      __dst[3] = v52;
      __dst[0] = v50;
      __dst[1] = v51;
      v53 = *(v48 + 120);
      v54 = *(v48 + 152);
      v55 = *(v48 + 21);
      __dst[5] = *(v48 + 136);
      __dst[6] = v54;
      __dst[4] = v53;
      v85 = __src[0];
      v86 = __src[1];
      *(v89 + 12) = *(v1 + 92);
      *&v88[16] = __src[4];
      v89[0] = __src[5];
      v87 = __src[2];
      *v88 = __src[3];
      v90 = __src[0];
      v91 = __src[1];
      *(v93 + 12) = *(v1 + 92);
      *&__dst[7] = v55;
      *&v92[32] = __src[4];
      v93[0] = __src[5];
      *v92 = __src[2];
      *&v92[16] = __src[3];
      memset(__src, 0, 104);
      LODWORD(__src[6].f64[1]) = -1610612736;
      swift_retain_n();
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(__dst, &v79, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v85, &v79);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v90);

      *&__src[9].f64[0] = v15;
      LODWORD(__src[9].f64[1]) = v49;
      if (*&__dst[7])
      {
        *&v82[16] = __dst[4];
        *v83 = __dst[5];
        *&v83[16] = __dst[6];
        v79 = __dst[0];
        v80 = __dst[1];
        v81 = __dst[2];
        *v82 = __dst[3];
        v84 = *&__dst[7];
        _ShapeStyle_RenderedShape.render(style:)(&v79);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(__src);

      outlined destroy of GlassEntryView?(__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);

      *&v82[16] = __src[4];
      *v83 = __src[5];
      *&v83[12] = *(v1 + 92);
      v79 = __src[0];
      v80 = __src[1];
      v81 = __src[2];
      *v82 = __src[3];
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v79);
      __src[4] = *&v88[16];
      __src[5] = v89[0];
      *(v1 + 92) = *(v89 + 12);
      __src[0] = v85;
      __src[1] = v86;
      __src[2] = v87;
      __src[3] = *v88;
      v3 = *(v15 + 56);
      v2 = v3;
      swift_beginAccess();
      v0 = *(v15 + 24);
      if (*(v0 + 2) <= v3)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v61 = v17;
    v62 = v18;
    v63 = v19;
    v64 = v20;
    swift_once();
    v20 = v64;
    v19 = v63;
    v18 = v62;
    v17 = v61;
  }

  v56 = (*&v100[16] >> 28) & 3;
  if (v56)
  {
    if (v56 == 1)
    {

      DisplayList.init(_:)(v57, __dst);
      v90 = __src[7];
      v91 = __src[8];
      *&v92[8] = xmmword_18DDA6ED0;
      *&v92[24] = *&__dst[0];
      *&v92[32] = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
      *&v92[40] = LODWORD(__src[14].f64[1]);
      *v92 = __src[12].f64[0];
      LOBYTE(__dst[0]) = v46;
      DisplayList.Item.canonicalize(options:)(__dst);
      v81 = *v92;
      *v82 = *&v92[16];
      *&v82[12] = *&v92[28];
      v79 = v90;
      v80 = v91;
      v87 = *v92;
      *v88 = *&v92[16];
      *&v88[12] = *&v92[28];
      v85 = v90;
      v86 = v91;
      outlined init with copy of DisplayList.Item(&v79, __dst);
      DisplayList.init(_:)(&v85, &v76);
      __dst[2] = *v92;
      __dst[3] = *&v92[16];
      *(&__dst[3] + 12) = *&v92[28];
      __dst[0] = v90;
      __dst[1] = v91;
      outlined destroy of DisplayList.Item(__dst);
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
      v77 = 0;
      v78 = 0;
    }
  }

  else
  {
    v79 = v97;
    v80 = v98;
    v81 = v99;
    *v82 = *v100;
    *&v82[16] = *&v100[16] & 0xFFFFFFFFCFFFFFFFLL;
    *&v82[24] = *&v100[24];
    __dst[0] = v97;
    __dst[1] = v98;
    __dst[2] = v99;
    __dst[3] = *v100;
    *&__dst[4] = *&v100[16] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__dst[4]) = *&v100[24];
    outlined init with copy of DisplayList.Item(__dst, &v90);
    DisplayList.init(_:)(&v79, &v76);
  }

  *v92 = v99;
  *&v92[16] = *v100;
  *&v92[28] = *&v100[12];
  v90 = v97;
  v91 = v98;
  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v90);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  *v100 = 0u;
  *&v100[16] = 0x20000000;
  *&v100[24] = 0;
  v79.f64[0] = v76;
  LOWORD(v79.f64[1]) = v77;
  HIDWORD(v79.f64[1]) = v78;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v101, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v58 = v3[3];
  v81 = v3[2];
  *v82 = v58;
  *&v82[16] = v3[4];
  *v83 = *&v100[24];
  v59 = v3[1];
  v79 = *v3;
  v80 = v59;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v79);
}

{
  v3 = &v62;
  v80 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = *(Value + 8);
  v8 = *(Value + 9);
  if ((v9 & 1) != 0 || !*(v0 + 50))
  {
    v11 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v4;
    v10 = AGGraphAnyInputsChanged();
    v11 = ++static DisplayList.Version.lastValue;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v12 = (2 * ((33 * (v11 >> 16)) ^ v11)) | 1;
  if (!v11)
  {
    LOWORD(v12) = 0;
  }

  *(v0 + 50) = v12;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v46 = v13;
    v47 = v14;
    v48 = v15;
    v49 = v16;
    swift_once();
    v16 = v49;
    v15 = v48;
    v14 = v47;
    v13 = v46;
    goto LABEL_18;
  }

  v56 = v7;
  v7 = __src;
  v17 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v57 = v17;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v18 = AGGraphGetValue();
  v19 = *v18;
  v20 = v18[1];
  v21 = AGGraphGetValue();
  v22 = v19 - *v21;
  v23 = v20 - v21[1];
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = *(v24 + 8);
  _threadGeometryProxyData();
  v1 = &v62;
  v2 = v11;
  _setThreadGeometryProxyData();
  v81.origin.x = 0.0;
  v81.origin.y = 0.0;
  v81.size.width = v25;
  v81.size.height = v26;
  v82 = CGRectInset(v81, v6, v6);
  y = v82.origin.y;
  x = v82.origin.x;
  height = v82.size.height;
  width = v82.size.width;
  IsNull = CGRectIsNull(v82);
  *v28.i64 = width;
  *&v28.i64[1] = height;
  *v29.i64 = x;
  *&v29.i64[1] = y;
  v30 = 6;
  if (IsNull)
  {
    v31 = -1;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v32 = vdupq_n_s64(v31);
  v53 = vbicq_s8(v28, v32);
  v55 = vbicq_s8(v29, v32);
  v33 = 0x10000;
  if (!v8)
  {
    v33 = 0;
  }

  v34 = 256;
  if (!v56)
  {
    v34 = 0;
  }

  v11 = v33 | v34 | v30;
  _setThreadGeometryProxyData();
  v69[1] = v53;
  v69[0] = v55;
  v70 = v11;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = v25;
  v76 = v26;
  v35 = *v0;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0x20000000;
  v68 = 0;
  v62 = v35;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v69, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v83.origin.x = 0.0;
  v83.origin.y = 0.0;
  v83.size.width = v25;
  v83.size.height = v26;
  *&v13 = CGRectOffset(v83, v22, v23);
  LODWORD(v11) = *(v0 + 8);
  LOWORD(v8) = *(v0 + 50);
  LOBYTE(v3) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_20;
  }

LABEL_18:
  v36 = static GraphicsBlendMode.normal;
  v37 = byte_1ED52F818;
  *(v7 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v37;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v38 = *(v1 + 17);
  v39 = *(v1 + 21);
  v7[4] = *(v1 + 19);
  v7[5] = v39;
  *(v7 + 92) = *(v1 + 180);
  v40 = *(v1 + 13);
  __src[0] = *(v1 + 11);
  __src[1] = v40;
  __src[2] = *(v1 + 15);
  __src[3] = v38;
  WORD6(__src[6]) = v8;
  *(v7 + 14) = v13;
  *(v7 + 15) = v14;
  *(v7 + 16) = v15;
  *(v7 + 17) = v16;
  *(v7 + 20) = v13;
  *(v7 + 21) = v14;
  *(v7 + 22) = v15;
  *(v7 + 23) = v16;
  *(v7 + 24) = v2;
  *(v7 + 25) = 0;
  *(v7 + 26) = 0;
  *(v7 + 27) = 0;
  *(v7 + 28) = 3221225472;
  DWORD2(__src[14]) = v11;
  BYTE12(__src[14]) = v3;
  LODWORD(__src[15]) = v57;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v36, v37);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v62, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v58);
  v41 = v59;
  v42 = v60;
  v1[63] = v58;
  WORD4(v78[0]) = v41;
  HIDWORD(v78[0]) = v42;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v69, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v43 = *(v1 + 3);
  v78[2] = *(v1 + 2);
  v78[3] = v43;
  v78[4] = *(v1 + 4);
  v79 = v68;
  v44 = *(v1 + 1);
  v78[0] = *v1;
  v78[1] = v44;
  return outlined destroy of _ShapeStyle_RenderedLayers(v78);
}

{
  v66 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 12);
  type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = Value[1];
  if ((v8 & 1) != 0 || !*(v0 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v4;
    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v0 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v39 = v12;
    v40 = v13;
    v41 = v14;
    v42 = v15;
    swift_once();
    v15 = v42;
    v14 = v41;
    v13 = v40;
    v12 = v39;
    goto LABEL_18;
  }

  v43 = v7;
  v16 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v44 = v16;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v17 = AGGraphGetValue();
  v18 = *v17;
  v19 = v17[1];
  v20 = AGGraphGetValue();
  v21 = v18 - *v20;
  v22 = v19 - v20[1];
  v23 = AGGraphGetValue();
  v24 = *v23;
  v25 = *(v23 + 8);
  _threadGeometryProxyData();
  v3 = v10;
  _setThreadGeometryProxyData();
  v67.origin.x = 0.0;
  v67.origin.y = 0.0;
  v67.size.width = v24;
  v67.size.height = v25;
  if (CGRectIsNull(v67))
  {
    v10 = 0;
    v26 = 0.0;
    v27 = 6;
  }

  else
  {
    v68.origin.x = 0.0;
    v68.origin.y = 0.0;
    v68.size.width = v24;
    v68.size.height = v25;
    v10 = *&v24;
    v26 = v25;
    v27 = !CGRectIsInfinite(v68);
  }

  v7 = &v62;
  v28 = 0x10000;
  if (!v43)
  {
    v28 = 0;
  }

  v29 = 256;
  if (!v6)
  {
    v29 = 0;
  }

  v30 = v28 | v29 | v27;
  _setThreadGeometryProxyData();
  v51 = 0uLL;
  *&v52 = v10;
  *(&v52 + 1) = v26;
  *&v53 = v30;
  *&v55 = 0;
  *&v56[24] = 0;
  v57 = 0;
  v58 = 0;
  v59 = v24;
  v60 = v25;
  v31 = *v0;
  *(v49 + 8) = 0u;
  *(&v49[1] + 8) = 0u;
  *(&v49[2] + 8) = 0u;
  *(&v49[3] + 8) = 0u;
  *(&v49[4] + 1) = 0x20000000;
  v50 = 0;
  *&v49[0] = v31;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v51, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v69.origin.x = 0.0;
  v69.origin.y = 0.0;
  v69.size.width = v24;
  v69.size.height = v25;
  *&v12 = CGRectOffset(v69, v21, v22);
  LODWORD(v10) = *(v0 + 8);
  v1 = *(v0 + 50);
  LOBYTE(v6) = *(v0 + 48);
  v2 = __src;
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_20;
  }

LABEL_18:
  v32 = static GraphicsBlendMode.normal;
  v33 = byte_1ED52F818;
  *(v2 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v33;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v34 = v54;
  v35 = *v56;
  v2[4] = v55;
  v2[5] = v35;
  *(v2 + 92) = *&v56[12];
  __src[0] = v51;
  __src[1] = v52;
  __src[2] = v53;
  __src[3] = v34;
  WORD6(__src[6]) = v1;
  *(v2 + 14) = v12;
  *(v2 + 15) = v13;
  *(v2 + 16) = v14;
  *(v2 + 17) = v15;
  *(v2 + 20) = v12;
  *(v2 + 21) = v13;
  *(v2 + 22) = v14;
  *(v2 + 23) = v15;
  *(v2 + 24) = v3;
  *(v2 + 25) = 0;
  *(v2 + 26) = 0;
  *(v2 + 27) = 0;
  *(v2 + 28) = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v6;
  LODWORD(__src[15]) = v44;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v32, v33);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v49, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v45);
  v62 = v45;
  v63 = v46;
  v64 = v47;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v51, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v36 = v49[3];
  *(v7 + 2) = v49[2];
  *(v7 + 3) = v36;
  *(v7 + 4) = v49[4];
  v65 = v50;
  v37 = v49[1];
  *v7 = v49[0];
  *(v7 + 1) = v37;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v62);
}

{
  v4 = &v60;
  v80 = *MEMORY[0x1E69E9840];
  v5 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 9);
  if ((v10 & 1) != 0 || !*(v0 + 50))
  {
    v12 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v5;
    v11 = AGGraphAnyInputsChanged();
    v12 = ++static DisplayList.Version.lastValue;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v13 = (2 * ((33 * (v12 >> 16)) ^ v12)) | 1;
  if (!v12)
  {
    LOWORD(v13) = 0;
  }

  *(v0 + 50) = v13;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v44 = v14;
    v45 = v15;
    v46 = v16;
    v47 = v17;
    swift_once();
    v17 = v47;
    v16 = v46;
    v15 = v45;
    v14 = v44;
    goto LABEL_18;
  }

  v50 = v8;
  v18 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v51 = v18;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v19 = AGGraphGetValue();
  v20 = *v19;
  v21 = v19[1];
  v22 = AGGraphGetValue();
  v23 = v20 - *v22;
  v24 = v21 - v22[1];
  v25 = AGGraphGetValue();
  v26 = *v25;
  v27 = *(v25 + 8);
  _threadGeometryProxyData();
  v2 = v12;
  _setThreadGeometryProxyData();
  v81.origin.x = 0.0;
  v81.origin.y = 0.0;
  v81.size.width = v26;
  v81.size.height = v27;
  v82 = CGRectInset(v81, v7, v7);
  width = v82.size.width;
  x = v82.origin.x;
  height = v82.size.height;
  y = v82.origin.y;
  if (CGRectIsNull(v82))
  {
    v28 = 6;
    v53 = 0u;
    v55 = 0u;
  }

  else
  {
    v83.size.width = width;
    v83.origin.x = x;
    v83.size.height = height;
    v83.origin.y = y;
    IsInfinite = CGRectIsInfinite(v83);
    *&v30 = width;
    *(&v30 + 1) = height;
    v53 = v30;
    *&v30 = x;
    *(&v30 + 1) = y;
    v55 = v30;
    v28 = !IsInfinite;
  }

  v1 = &v60;
  v8 = v76;
  v31 = 0x10000;
  if (!v9)
  {
    v31 = 0;
  }

  v32 = 256;
  if (!v50)
  {
    v32 = 0;
  }

  v12 = v31 | v32 | v28;
  _setThreadGeometryProxyData();
  v67[1] = v53;
  v67[0] = v55;
  v68 = v12;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = v26;
  v74 = v27;
  v33 = *v0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0x20000000;
  v66 = 0;
  v60 = v33;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v67, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v84.origin.x = 0.0;
  v84.origin.y = 0.0;
  v84.size.width = v26;
  v84.size.height = v27;
  *&v14 = CGRectOffset(v84, v23, v24);
  LODWORD(v12) = *(v0 + 8);
  LOWORD(v9) = *(v0 + 50);
  LOBYTE(v4) = *(v0 + 48);
  v3 = __src;
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_20;
  }

LABEL_18:
  v34 = static GraphicsBlendMode.normal;
  v35 = byte_1ED52F818;
  *(v3 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v35;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v36 = *(v1 + 17);
  v37 = *(v1 + 21);
  v3[4] = *(v1 + 19);
  v3[5] = v37;
  *(v3 + 92) = *(v1 + 180);
  v38 = *(v1 + 13);
  __src[0] = *(v1 + 11);
  __src[1] = v38;
  __src[2] = *(v1 + 15);
  __src[3] = v36;
  WORD6(__src[6]) = v9;
  *(v3 + 14) = v14;
  *(v3 + 15) = v15;
  *(v3 + 16) = v16;
  *(v3 + 17) = v17;
  *(v3 + 20) = v14;
  *(v3 + 21) = v15;
  *(v3 + 22) = v16;
  *(v3 + 23) = v17;
  *(v3 + 24) = v2;
  *(v3 + 25) = 0;
  *(v3 + 26) = 0;
  *(v3 + 27) = 0;
  *(v3 + 28) = 3221225472;
  DWORD2(__src[14]) = v12;
  BYTE12(__src[14]) = v4;
  LODWORD(__src[15]) = v51;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v34, v35);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v60, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v56);
  v39 = v57;
  v40 = v58;
  v1[63] = v56;
  v77 = v39;
  v78 = v40;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v67, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v41 = *(v1 + 3);
  *(v8 + 2) = *(v1 + 2);
  *(v8 + 3) = v41;
  *(v8 + 4) = *(v1 + 4);
  v79 = v66;
  v42 = *(v1 + 1);
  *v8 = *v1;
  *(v8 + 1) = v42;
  return outlined destroy of _ShapeStyle_RenderedLayers(v76);
}

{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  v7 = *(Value + 9);
  if ((v8 & 1) != 0 || !*(v0 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    *&__dst[0] = *(v0 + 28);
    DWORD2(__dst[0]) = v3;
    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v0 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_16:
    v48 = v12;
    v49 = v13;
    v50 = v14;
    v51 = v15;
    swift_once();
    v15 = v51;
    v14 = v50;
    v13 = v49;
    v12 = v48;
    goto LABEL_14;
  }

  v16 = *(v0 + 40);
  v17 = AGCreateWeakAttribute();
  v59 = v6;
  v18 = v17;
  v57 = HIDWORD(v17);
  v19 = AGCreateWeakAttribute();
  v58 = v7;
  v20 = v19;
  v56 = HIDWORD(v19);
  v60 = v16;
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v55 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v54 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v53 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v52 = HIDWORD(v27);
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];
  v2 = v10;
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = v35[1];
  _threadGeometryProxyData();
  *&__src[0] = __PAIR64__(v57, v18);
  *(&__src[0] + 1) = __PAIR64__(v56, v20);
  *&__src[1] = __PAIR64__(v55, v22);
  v1 = &v65;
  *(&__src[1] + 1) = __PAIR64__(v54, v24);
  *&__src[2] = __PAIR64__(v53, v26);
  *(&__src[2] + 1) = __PAIR64__(v52, v28);
  LODWORD(__src[3]) = v10;
  _setThreadGeometryProxyData();
  if (v58)
  {
    v38 = 256;
  }

  else
  {
    v38 = 0;
  }

  *&__dst[7] = specialized AnimatedShape.shape(in:)(__dst, v38 | v59, v36, v37, v5);
  *(&__dst[7] + 1) = v39;
  *&__dst[8] = v40;
  *(&__dst[8] + 1) = v41;
  _setThreadGeometryProxyData();
  v79 = __dst[7];
  v80 = __dst[8];
  v74 = __dst[2];
  v75 = __dst[3];
  v77 = __dst[5];
  v78 = __dst[6];
  v76 = __dst[4];
  v72 = __dst[0];
  v73 = __dst[1];
  v42 = *v0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v71 = 0;
  v70 = 0x20000000;
  v65 = v42;
  v43 = __dst[7];
  v44 = __dst[8];

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v72, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v85.origin = v43;
  v85.size = v44;
  *&v12 = CGRectOffset(v85, v33, v34);
  LODWORD(v10) = *(v0 + 8);
  LOWORD(v7) = *(v0 + 50);
  LOBYTE(v6) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_16;
  }

LABEL_14:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v76;
  __src[5] = v77;
  *(&__src[5] + 12) = *(v1 + 180);
  __src[0] = v72;
  __src[1] = v73;
  __src[2] = v74;
  __src[3] = v75;
  WORD6(__src[6]) = v7;
  *&__src[7] = v12;
  *(&__src[7] + 1) = v13;
  *&__src[8] = v14;
  *(&__src[8] + 1) = v15;
  *&__src[10] = v12;
  *(&__src[10] + 1) = v13;
  *&__src[11] = v14;
  *(&__src[11] + 1) = v15;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v6;
  LODWORD(__src[15]) = v60;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v65, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v61);
  *&v82[0] = v61;
  WORD4(v82[0]) = v62;
  HIDWORD(v82[0]) = v63;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v72, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v45 = *(v1 + 3);
  v82[2] = *(v1 + 2);
  v82[3] = v45;
  v82[4] = *(v1 + 4);
  v83 = v71;
  v46 = *(v1 + 1);
  v82[0] = *v1;
  v82[1] = v46;
  return outlined destroy of _ShapeStyle_RenderedLayers(v82);
}

{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  v7 = *(Value + 9);
  if ((v8 & 1) != 0 || !*(v0 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v3;
    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v0 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v44 = v12;
    v45 = v13;
    v46 = v14;
    v47 = v15;
    swift_once();
    v15 = v47;
    v14 = v46;
    v13 = v45;
    v12 = v44;
    goto LABEL_15;
  }

  v16 = *(v0 + 40);
  v17 = AGCreateWeakAttribute();
  v55 = v6;
  v18 = v17;
  v53 = HIDWORD(v17);
  v19 = AGCreateWeakAttribute();
  v54 = v7;
  v20 = v19;
  v52 = HIDWORD(v19);
  v56 = v16;
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v51 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v50 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v49 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v48 = HIDWORD(v27);
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = *(v35 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v53, v18);
  __dst[1] = __PAIR64__(v52, v20);
  __dst[2] = __PAIR64__(v51, v22);
  v1 = &v61;
  __dst[3] = __PAIR64__(v50, v24);
  v2 = v10;
  __dst[4] = __PAIR64__(v49, v26);
  __dst[5] = __PAIR64__(v48, v28);
  LODWORD(__dst[6]) = v10;
  _setThreadGeometryProxyData();
  v85.origin.x = 0.0;
  v85.origin.y = 0.0;
  v85.size.width = v36;
  v85.size.height = v37;
  v86 = CGRectInset(v85, v5, v5);
  specialized Circle.path(in:)(v82, v86.origin.x, v86.origin.y, v86.size.width, v86.size.height);
  v38 = 0x10000;
  if (!v54)
  {
    v38 = 0;
  }

  v39 = 256;
  if (!v55)
  {
    v39 = 0;
  }

  v10 = v38 | v39 | v83;
  _setThreadGeometryProxyData();
  v68 = v82[0];
  v69 = v82[1];
  *&v70 = v10;
  *&v72 = 0;
  v74 = 0;
  v76 = 0;
  v75 = 0;
  v77 = v36;
  v78 = v37;
  v40 = *v0;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v67 = 0;
  v66 = 0x20000000;
  v61 = v40;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v68, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v87.origin.x = 0.0;
  v87.origin.y = 0.0;
  v87.size.width = v36;
  v87.size.height = v37;
  *&v12 = CGRectOffset(v87, v33, v34);
  LODWORD(v10) = *(v0 + 8);
  LOWORD(v7) = *(v0 + 50);
  LOBYTE(v6) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v72;
  __src[5] = v73;
  *(&__src[5] + 12) = *(v1 + 180);
  __src[0] = v68;
  __src[1] = v69;
  __src[2] = v70;
  __src[3] = v71;
  WORD6(__src[6]) = v7;
  *&__src[7] = v12;
  *(&__src[7] + 1) = v13;
  *&__src[8] = v14;
  *(&__src[8] + 1) = v15;
  *&__src[10] = v12;
  *(&__src[10] + 1) = v13;
  *&__src[11] = v14;
  *(&__src[11] + 1) = v15;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v6;
  LODWORD(__src[15]) = v56;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v61, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v57);
  *&v80[0] = v57;
  WORD4(v80[0]) = v58;
  HIDWORD(v80[0]) = v59;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v68, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v41 = *(v1 + 3);
  v80[2] = *(v1 + 2);
  v80[3] = v41;
  v80[4] = *(v1 + 4);
  v81 = v67;
  v42 = *(v1 + 1);
  v80[0] = *v1;
  v80[1] = v42;
  return outlined destroy of _ShapeStyle_RenderedLayers(v80);
}

{
  v2 = v0;
  v123 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v5 = *(Value + 208);
  v103 = *(Value + 192);
  v104 = v5;
  v105 = *(Value + 224);
  v6 = *(Value + 144);
  v99 = *(Value + 128);
  v100 = v6;
  v7 = *(Value + 160);
  v102 = *(Value + 176);
  v101 = v7;
  v8 = *(Value + 80);
  v95 = *(Value + 64);
  v96 = v8;
  v9 = *(Value + 96);
  v98 = *(Value + 112);
  v97 = v9;
  v10 = *(Value + 16);
  v91 = *Value;
  v92 = v10;
  v11 = *(Value + 48);
  v93 = *(Value + 32);
  v94 = v11;
  v12 = *(Value + 240);
  v13 = *(Value + 241);
  if ((v14 & 1) == 0 && *(v2 + 50))
  {
    __dst[0] = *(v2 + 28);
    LODWORD(__dst[1]) = v3;
    v15 = AGGraphAnyInputsChanged();
    v16 = ++static DisplayList.Version.lastValue;
    if (!v15)
    {
      goto LABEL_9;
    }

    if (v16)
    {
      goto LABEL_5;
    }

LABEL_7:
    LOWORD(v17) = 0;
    goto LABEL_8;
  }

  v16 = ++static DisplayList.Version.lastValue;
  if (!static DisplayList.Version.lastValue)
  {
    goto LABEL_7;
  }

LABEL_5:
  v17 = (2 * ((33 * (v16 >> 16)) ^ v16)) | 1;
LABEL_8:
  *(v2 + 50) = v17;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v54 = v18;
    v55 = v19;
    v56 = v20;
    v57 = v21;
    swift_once();
    v21 = v57;
    v20 = v56;
    v19 = v55;
    v18 = v54;
    goto LABEL_15;
  }

  v22 = *(v2 + 40);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v63 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v64 = v13;
  v26 = v25;
  v62 = HIDWORD(v25);
  v65 = v22;
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v61 = HIDWORD(v27);
  v29 = AGCreateWeakAttribute();
  v30 = v29;
  v60 = HIDWORD(v29);
  v31 = AGCreateWeakAttribute();
  v32 = v31;
  v59 = HIDWORD(v31);
  v33 = AGCreateWeakAttribute();
  v34 = v33;
  v58 = HIDWORD(v33);
  type metadata accessor for CGPoint(0);
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = v35[1];
  v38 = AGGraphGetValue();
  v39 = v36 - *v38;
  v40 = v37 - v38[1];
  v41 = AGGraphGetValue();
  v42 = *v41;
  v43 = *(v41 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v63, v24);
  __dst[1] = __PAIR64__(v62, v26);
  v13 = &v70;
  __dst[2] = __PAIR64__(v61, v28);
  v1 = v16;
  __dst[3] = __PAIR64__(v60, v30);
  __dst[4] = __PAIR64__(v59, v32);
  __dst[5] = __PAIR64__(v58, v34);
  LODWORD(__dst[6]) = v16;
  _setThreadGeometryProxyData();
  v120 = v103;
  v121 = v104;
  v122 = v105;
  v116 = v99;
  v117 = v100;
  v119 = v102;
  v118 = v101;
  v112 = v95;
  v113 = v96;
  v115 = v98;
  v114 = v97;
  v108 = v91;
  v109 = v92;
  v45.n128_u64[1] = *(&v93 + 1);
  v44.n128_u64[1] = *(&v94 + 1);
  v111 = v94;
  v110 = v93;
  v44.n128_u64[0] = 0;
  v45.n128_u64[0] = 0;
  v46.n128_f64[0] = v43;
  specialized Shape.effectivePath(in:)(v106, v44, v45, v42, v46);
  v47 = 0x10000;
  if ((v64 & 1) == 0)
  {
    v47 = 0;
  }

  v48 = 256;
  if ((v12 & 1) == 0)
  {
    v48 = 0;
  }

  v49 = v47 | v48 | v107;
  _setThreadGeometryProxyData();
  v77 = v106[0];
  v78 = v106[1];
  *&v79 = v49;
  *&v81 = 0;
  v83 = 0;
  v85 = 0;
  v84 = 0;
  v86 = v42;
  v87 = v43;
  v50 = *v2;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v76 = 0;
  v75 = 0x20000000;
  v70 = v50;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v77, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v124.origin.x = 0.0;
  v124.origin.y = 0.0;
  v124.size.width = v42;
  v124.size.height = v43;
  *&v18 = CGRectOffset(v124, v39, v40);
  v3 = *(v2 + 8);
  v12 = *(v2 + 50);
  LOBYTE(v16) = *(v2 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v81;
  __src[5] = v82;
  *(&__src[5] + 12) = *(v13 + 180);
  __src[0] = v77;
  __src[1] = v78;
  __src[2] = v79;
  __src[3] = v80;
  WORD6(__src[6]) = v12;
  *&__src[7] = v18;
  *(&__src[7] + 1) = v19;
  *&__src[8] = v20;
  *(&__src[8] + 1) = v21;
  *&__src[10] = v18;
  *(&__src[10] + 1) = v19;
  *&__src[11] = v20;
  *(&__src[11] + 1) = v21;
  __src[12] = v1;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v3;
  BYTE12(__src[14]) = v16;
  LODWORD(__src[15]) = v65;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v70, __src, v2);
  LOBYTE(__dst[0]) = *(v2 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v66);
  *&v89[0] = v66;
  WORD4(v89[0]) = v67;
  HIDWORD(v89[0]) = v68;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v77, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v51 = *(v13 + 3);
  v89[2] = *(v13 + 2);
  v89[3] = v51;
  v89[4] = *(v13 + 4);
  v90 = v76;
  v52 = *(v13 + 1);
  v89[0] = *v13;
  v89[1] = v52;
  return outlined destroy of _ShapeStyle_RenderedLayers(v89);
}

{
  v3 = v0;
  v82 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v6 = Value[32];
  v7 = Value[33];
  v8 = Value[34];
  if ((v9 & 1) != 0 || !*(v3 + 50))
  {
    v11 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v3 + 28);
    LODWORD(__dst[1]) = v4;
    v10 = AGGraphAnyInputsChanged();
    v11 = ++static DisplayList.Version.lastValue;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v12 = (2 * ((33 * (v11 >> 16)) ^ v11)) | 1;
  if (!v11)
  {
    LOWORD(v12) = 0;
  }

  *(v3 + 50) = v12;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v47 = v13;
    v48 = v14;
    v49 = v15;
    v50 = v16;
    swift_once();
    v16 = v50;
    v15 = v49;
    v14 = v48;
    v13 = v47;
    goto LABEL_15;
  }

  v58 = v7;
  v17 = *(v3 + 40);
  v60 = v11;
  v18 = AGCreateWeakAttribute();
  v19 = v18;
  v56 = HIDWORD(v18);
  v20 = AGCreateWeakAttribute();
  v57 = v8;
  v21 = v20;
  v55 = HIDWORD(v20);
  v59 = v17;
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v54 = HIDWORD(v22);
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v53 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v52 = HIDWORD(v26);
  v28 = AGCreateWeakAttribute();
  v29 = v28;
  v51 = HIDWORD(v28);
  type metadata accessor for CGPoint(0);
  v30 = AGGraphGetValue();
  v31 = *v30;
  v32 = v30[1];
  v33 = AGGraphGetValue();
  v34 = v31 - *v33;
  v35 = v32 - v33[1];
  v36 = AGGraphGetValue();
  v37 = *v36;
  v38 = *(v36 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v56, v19);
  __dst[1] = __PAIR64__(v55, v21);
  __dst[2] = __PAIR64__(v54, v23);
  v6 = &v76;
  __dst[3] = __PAIR64__(v53, v25);
  v2 = v60;
  __dst[4] = __PAIR64__(v52, v27);
  __dst[5] = __PAIR64__(v51, v29);
  LODWORD(__dst[6]) = v60;
  _setThreadGeometryProxyData();
  specialized Shape.effectivePath(in:)(v80, 0.0, 0.0, v37, v38);
  v39 = 0x10000;
  if (!v57)
  {
    v39 = 0;
  }

  v40 = 256;
  if (!v58)
  {
    v40 = 0;
  }

  v11 = v39 | v40 | v81;
  v1 = v65;
  _setThreadGeometryProxyData();
  v67[1] = v80[1];
  v67[0] = v80[0];
  v68 = v11;
  v69 = 0;
  v70 = 0;
  v72 = 0;
  v71 = 0;
  v73 = v37;
  v74 = v38;
  v41 = *v3;
  memset(&v65[8], 0, 64);
  v66 = 0;
  *&v65[72] = 0x20000000;
  *v65 = v41;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v67, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v83.origin.x = 0.0;
  v83.origin.y = 0.0;
  v83.size.width = v37;
  v83.size.height = v38;
  *&v13 = CGRectOffset(v83, v34, v35);
  LODWORD(v11) = *(v3 + 8);
  LOWORD(v8) = *(v3 + 50);
  LOBYTE(v7) = *(v3 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v42 = *(v1 + 152);
  __src[3] = *(v1 + 136);
  __src[4] = v42;
  __src[5] = *(v1 + 168);
  *(&__src[5] + 12) = *(v1 + 180);
  v43 = *(v1 + 104);
  __src[0] = *(v1 + 88);
  __src[1] = v43;
  __src[2] = *(v1 + 120);
  WORD6(__src[6]) = v8;
  *&__src[7] = v13;
  *(&__src[7] + 1) = v14;
  *&__src[8] = v15;
  *(&__src[8] + 1) = v16;
  *&__src[10] = v13;
  *(&__src[10] + 1) = v14;
  *&__src[11] = v15;
  *(&__src[11] + 1) = v16;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v11;
  BYTE12(__src[14]) = v7;
  LODWORD(__src[15]) = v59;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v65, __src, v3);
  LOBYTE(__dst[0]) = *(v3 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v61);
  v76 = v61;
  v77 = v62;
  v78 = v63;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v67, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v44 = *&v65[48];
  *(v6 + 2) = *&v65[32];
  *(v6 + 3) = v44;
  *(v6 + 4) = *&v65[64];
  v79 = v66;
  v45 = *&v65[16];
  *v6 = *v65;
  *(v6 + 1) = v45;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v76);
}

{
  v3 = v0;
  v92 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v6 = *(Value + 16);
  v62 = *Value;
  v63 = v6;
  v64 = *(Value + 32);
  v7 = *(Value + 48);
  v8 = *(Value + 49);
  if ((v9 & 1) != 0 || !*(v3 + 50))
  {
    v11 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v3 + 28);
    LODWORD(__dst[1]) = v4;
    v10 = AGGraphAnyInputsChanged();
    v11 = ++static DisplayList.Version.lastValue;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v12 = (2 * ((33 * (v11 >> 16)) ^ v11)) | 1;
  if (!v11)
  {
    LOWORD(v12) = 0;
  }

  *(v3 + 50) = v12;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v45 = v13;
    v46 = v14;
    v47 = v15;
    v48 = v16;
    swift_once();
    v16 = v48;
    v15 = v47;
    v14 = v46;
    v13 = v45;
    goto LABEL_15;
  }

  v56 = v7;
  v17 = *(v3 + 40);
  v58 = v11;
  v18 = AGCreateWeakAttribute();
  v19 = v18;
  v54 = HIDWORD(v18);
  v20 = AGCreateWeakAttribute();
  v55 = v8;
  v21 = v20;
  v53 = HIDWORD(v20);
  v57 = v17;
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v52 = HIDWORD(v22);
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v51 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v50 = HIDWORD(v26);
  v28 = AGCreateWeakAttribute();
  v29 = v28;
  v49 = HIDWORD(v28);
  type metadata accessor for CGPoint(0);
  v30 = AGGraphGetValue();
  v31 = *v30;
  v32 = v30[1];
  v33 = AGGraphGetValue();
  v34 = v31 - *v33;
  v35 = v32 - v33[1];
  v36 = AGGraphGetValue();
  v37 = *v36;
  v38 = *(v36 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v54, v19);
  __dst[1] = __PAIR64__(v53, v21);
  __dst[2] = __PAIR64__(v52, v23);
  v1 = &v69;
  __dst[3] = __PAIR64__(v51, v25);
  v2 = v58;
  __dst[4] = __PAIR64__(v50, v27);
  __dst[5] = __PAIR64__(v49, v29);
  LODWORD(__dst[6]) = v58;
  _setThreadGeometryProxyData();
  v65 = v62;
  v66 = v63;
  v67 = v64;
  specialized Shape.effectivePath(in:)(v90, 0.0, v37);
  v39 = 0x10000;
  if ((v55 & 1) == 0)
  {
    v39 = 0;
  }

  v40 = 256;
  if ((v56 & 1) == 0)
  {
    v40 = 0;
  }

  v11 = v39 | v40 | v91;
  _setThreadGeometryProxyData();
  v76 = v90[0];
  v77 = v90[1];
  *&v78 = v11;
  *&v80 = 0;
  v82 = 0;
  v84 = 0;
  v83 = 0;
  v85 = v37;
  v86 = v38;
  v41 = *v3;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v75 = 0;
  v74 = 0x20000000;
  v69 = v41;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v76, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v93.origin.x = 0.0;
  v93.origin.y = 0.0;
  v93.size.width = v37;
  v93.size.height = v38;
  *&v13 = CGRectOffset(v93, v34, v35);
  LODWORD(v11) = *(v3 + 8);
  v8 = *(v3 + 50);
  v7 = *(v3 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v80;
  __src[5] = v81;
  *(&__src[5] + 12) = *(v1 + 180);
  __src[0] = v76;
  __src[1] = v77;
  __src[2] = v78;
  __src[3] = v79;
  WORD6(__src[6]) = v8;
  *&__src[7] = v13;
  *(&__src[7] + 1) = v14;
  *&__src[8] = v15;
  *(&__src[8] + 1) = v16;
  *&__src[10] = v13;
  *(&__src[10] + 1) = v14;
  *&__src[11] = v15;
  *(&__src[11] + 1) = v16;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v11;
  BYTE12(__src[14]) = v7;
  LODWORD(__src[15]) = v57;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v69, __src, v3);
  LOBYTE(__dst[0]) = *(v3 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v59);
  *&v88[0] = v59;
  WORD4(v88[0]) = v60;
  HIDWORD(v88[0]) = v61;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v76, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v42 = *(v1 + 3);
  v88[2] = *(v1 + 2);
  v88[3] = v42;
  v88[4] = *(v1 + 4);
  v89 = v75;
  v43 = *(v1 + 1);
  v88[0] = *v1;
  v88[1] = v43;
  return outlined destroy of _ShapeStyle_RenderedLayers(v88);
}

{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v5 = *Value;
  LODWORD(v6) = *(Value + 8);
  v7 = *(Value + 9);
  if ((v8 & 1) != 0 || !*(v0 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v3;
    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v0 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v44 = v12;
    v45 = v13;
    v46 = v14;
    v47 = v15;
    swift_once();
    v15 = v47;
    v14 = v46;
    v13 = v45;
    v12 = v44;
    goto LABEL_15;
  }

  v16 = *(v0 + 40);
  v17 = AGCreateWeakAttribute();
  v55 = v6;
  v18 = v17;
  v53 = HIDWORD(v17);
  v19 = AGCreateWeakAttribute();
  v54 = v7;
  v20 = v19;
  v52 = HIDWORD(v19);
  v56 = v16;
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v51 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v50 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v49 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v48 = HIDWORD(v27);
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];
  v2 = v10;
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = *(v35 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v53, v18);
  __dst[1] = __PAIR64__(v52, v20);
  __dst[2] = __PAIR64__(v51, v22);
  v1 = &v61;
  __dst[3] = __PAIR64__(v50, v24);
  __dst[4] = __PAIR64__(v49, v26);
  __dst[5] = __PAIR64__(v48, v28);
  LODWORD(__dst[6]) = v10;
  _setThreadGeometryProxyData();
  specialized Shape.effectivePath(in:)(v82, 0.0, v36, v5);
  v38 = 0x10000;
  if (!v54)
  {
    v38 = 0;
  }

  v39 = 256;
  if (!v55)
  {
    v39 = 0;
  }

  v6 = v38 | v39 | v83;
  _setThreadGeometryProxyData();
  v68 = v82[0];
  v69 = v82[1];
  *&v70 = v6;
  *&v72 = 0;
  v74 = 0;
  v76 = 0;
  v75 = 0;
  v77 = v36;
  v78 = v37;
  v40 = *v0;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v67 = 0;
  v66 = 0x20000000;
  v61 = v40;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v68, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v85.origin.x = 0.0;
  v85.origin.y = 0.0;
  v85.size.width = v36;
  v85.size.height = v37;
  *&v12 = CGRectOffset(v85, v33, v34);
  LODWORD(v10) = *(v0 + 8);
  LOWORD(v7) = *(v0 + 50);
  LOBYTE(v6) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v72;
  __src[5] = v73;
  *(&__src[5] + 12) = *(v1 + 180);
  __src[0] = v68;
  __src[1] = v69;
  __src[2] = v70;
  __src[3] = v71;
  WORD6(__src[6]) = v7;
  *&__src[7] = v12;
  *(&__src[7] + 1) = v13;
  *&__src[8] = v14;
  *(&__src[8] + 1) = v15;
  *&__src[10] = v12;
  *(&__src[10] + 1) = v13;
  *&__src[11] = v14;
  *(&__src[11] + 1) = v15;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v6;
  LODWORD(__src[15]) = v56;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v61, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v57);
  *&v80[0] = v57;
  WORD4(v80[0]) = v58;
  HIDWORD(v80[0]) = v59;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v68, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v41 = *(v1 + 3);
  v80[2] = *(v1 + 2);
  v80[3] = v41;
  v80[4] = *(v1 + 4);
  v81 = v67;
  v42 = *(v1 + 1);
  v80[0] = *v1;
  v80[1] = v42;
  return outlined destroy of _ShapeStyle_RenderedLayers(v80);
}

{
  v2 = v0;
  v86[48] = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v6 = v5;
  memcpy(__dst, Value, sizeof(__dst));
  v7 = Value[384];
  v8 = Value[385];
  if ((v6 & 1) != 0 || !*(v2 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    v86[0] = *(v2 + 28);
    LODWORD(v86[1]) = v3;
    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v2 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v44 = v12;
    v45 = v13;
    v46 = v14;
    v47 = v15;
    swift_once();
    v15 = v47;
    v14 = v46;
    v13 = v45;
    v12 = v44;
    goto LABEL_15;
  }

  v55 = v8;
  v16 = *(v2 + 40);
  v57 = v10;
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v53 = HIDWORD(v17);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v52 = HIDWORD(v19);
  v56 = v16;
  v21 = AGCreateWeakAttribute();
  v54 = v7;
  v22 = v21;
  v51 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v50 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v49 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v48 = HIDWORD(v27);
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = *(v35 + 8);
  _threadGeometryProxyData();
  v80[0] = v18;
  v80[1] = v53;
  v80[2] = v20;
  v80[3] = v52;
  v80[4] = v22;
  v7 = &v62;
  v80[5] = v51;
  v80[6] = v24;
  v1 = v57;
  v80[7] = v50;
  v80[8] = v26;
  v80[9] = v49;
  v80[10] = v28;
  v80[11] = v48;
  v80[12] = v57;
  _setThreadGeometryProxyData();
  memcpy(v86, __dst, 0x180uLL);
  specialized Shape.effectivePath(in:)(v84, 0.0, 0.0, v36, v37);
  v38 = 0x10000;
  if ((v55 & 1) == 0)
  {
    v38 = 0;
  }

  v39 = 256;
  if ((v54 & 1) == 0)
  {
    v39 = 0;
  }

  v10 = v38 | v39 | v85;
  _setThreadGeometryProxyData();
  v69 = v84[0];
  v70 = v84[1];
  *&v71 = v10;
  *&v73 = 0;
  v75 = 0;
  v77 = 0;
  v76 = 0;
  v78 = v36;
  v79 = v37;
  v40 = *v2;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v68 = 0;
  v67 = 0x20000000;
  v62 = v40;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v69, v80, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v87.origin.x = 0.0;
  v87.origin.y = 0.0;
  v87.size.width = v36;
  v87.size.height = v37;
  *&v12 = CGRectOffset(v87, v33, v34);
  LODWORD(v10) = *(v2 + 8);
  v6 = *(v2 + 50);
  v8 = *(v2 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v73;
  __src[5] = v74;
  *(&__src[5] + 12) = *(v7 + 180);
  __src[0] = v69;
  __src[1] = v70;
  __src[2] = v71;
  __src[3] = v72;
  WORD6(__src[6]) = v6;
  *&__src[7] = v12;
  *(&__src[7] + 1) = v13;
  *&__src[8] = v14;
  *(&__src[8] + 1) = v15;
  *&__src[10] = v12;
  *(&__src[10] + 1) = v13;
  *&__src[11] = v14;
  *(&__src[11] + 1) = v15;
  __src[12] = v1;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v8;
  LODWORD(__src[15]) = v56;
  LOBYTE(v80[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(v80, &v62, __src, v2);
  LOBYTE(v80[0]) = *(v2 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, v80, &v58);
  *&v81[0] = v58;
  WORD4(v81[0]) = v59;
  HIDWORD(v81[0]) = v60;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v69, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(v80, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(v80);

  v41 = *(v7 + 3);
  v81[2] = *(v7 + 2);
  v81[3] = v41;
  v81[4] = *(v7 + 4);
  v82 = v68;
  v42 = *(v7 + 1);
  v81[0] = *v7;
  v81[1] = v42;
  return outlined destroy of _ShapeStyle_RenderedLayers(v81);
}

{
  v4 = v0;
  v87 = *MEMORY[0x1E69E9840];
  v5 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 24);
  v10 = *(Value + 32);
  v11 = *(Value + 33);
  v65 = *(Value + 16);
  if ((v12 & 1) != 0 || !*(v4 + 50))
  {
    v14 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v4 + 28);
    LODWORD(__dst[1]) = v5;
    v13 = AGGraphAnyInputsChanged();
    v14 = ++static DisplayList.Version.lastValue;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v15 = (2 * ((33 * (v14 >> 16)) ^ v14)) | 1;
  if (!v14)
  {
    LOWORD(v15) = 0;
  }

  *(v4 + 50) = v15;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v51 = v16;
    v52 = v17;
    v53 = v18;
    v54 = v19;
    swift_once();
    v19 = v54;
    v18 = v53;
    v17 = v52;
    v16 = v51;
    goto LABEL_15;
  }

  v62 = v10;
  v20 = *(v4 + 40);
  v64 = v14;
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v60 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v61 = v11;
  v24 = v23;
  v59 = HIDWORD(v23);
  v63 = v20;
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v58 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v57 = HIDWORD(v27);
  v29 = AGCreateWeakAttribute();
  v30 = v29;
  v56 = HIDWORD(v29);
  v31 = AGCreateWeakAttribute();
  v32 = v31;
  v55 = HIDWORD(v31);
  type metadata accessor for CGPoint(0);
  v33 = AGGraphGetValue();
  v34 = *v33;
  v35 = v33[1];
  v36 = AGGraphGetValue();
  v37 = v34 - *v36;
  v38 = v35 - v36[1];
  v39 = AGGraphGetValue();
  v40 = *v39;
  v41 = *(v39 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v60, v22);
  __dst[1] = __PAIR64__(v59, v24);
  __dst[2] = __PAIR64__(v58, v26);
  v1 = &v81;
  __dst[3] = __PAIR64__(v57, v28);
  v3 = v64;
  __dst[4] = __PAIR64__(v56, v30);
  __dst[5] = __PAIR64__(v55, v32);
  LODWORD(__dst[6]) = v64;
  _setThreadGeometryProxyData();
  *&__src[0] = v7;
  *(&__src[0] + 1) = v8;
  LOBYTE(__src[1]) = v65;
  *(&__src[1] + 1) = v9;
  RoundedRectangle._Inset.path(in:)(v85, 0.0);
  v42 = 0x10000;
  if (!v61)
  {
    v42 = 0;
  }

  v43 = 256;
  if (!v62)
  {
    v43 = 0;
  }

  v14 = v42 | v43 | v86;
  v2 = v70;
  _setThreadGeometryProxyData();
  v72[1] = v85[1];
  v72[0] = v85[0];
  v73 = v14;
  v74 = 0;
  v75 = 0;
  v77 = 0;
  v76 = 0;
  v78 = v40;
  v79 = v41;
  v44 = *v4;
  memset(&v70[8], 0, 64);
  v71 = 0;
  *&v70[72] = 0x20000000;
  *v70 = v44;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v72, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v88.origin.x = 0.0;
  v88.origin.y = 0.0;
  v88.size.width = v40;
  v88.size.height = v41;
  *&v16 = CGRectOffset(v88, v37, v38);
  LODWORD(v14) = *(v4 + 8);
  LOWORD(v11) = *(v4 + 50);
  LOBYTE(v10) = *(v4 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v45 = *(v2 + 136);
  v46 = *(v2 + 168);
  __src[4] = *(v2 + 152);
  __src[5] = v46;
  *(&__src[5] + 12) = *(v2 + 180);
  v47 = *(v2 + 104);
  __src[0] = *(v2 + 88);
  __src[1] = v47;
  __src[2] = *(v2 + 120);
  __src[3] = v45;
  WORD6(__src[6]) = v11;
  *&__src[7] = v16;
  *(&__src[7] + 1) = v17;
  *&__src[8] = v18;
  *(&__src[8] + 1) = v19;
  *&__src[10] = v16;
  *(&__src[10] + 1) = v17;
  *&__src[11] = v18;
  *(&__src[11] + 1) = v19;
  __src[12] = v3;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v14;
  BYTE12(__src[14]) = v10;
  LODWORD(__src[15]) = v63;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v70, __src, v4);
  LOBYTE(__dst[0]) = *(v4 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v66);
  v81 = v66;
  v82 = v67;
  v83 = v68;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v72, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v48 = *&v70[48];
  *(v1 + 2) = *&v70[32];
  *(v1 + 3) = v48;
  *(v1 + 4) = *&v70[64];
  v84 = v71;
  v49 = *&v70[16];
  *v1 = *v70;
  *(v1 + 1) = v49;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v81);
}

uint64_t specialized Image.Resolved.mustUpdate(data:position:environment:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  if (v5 != 2)
  {
    if (*(a1 + 16) == 1 && v5 == 0)
    {
      v26 = *(v2 + 104);
      v27 = v26 != 2 && (v26 & 1) == 0;
      _CGImagePrepareCALayerContents(v4, 0, v27);
    }

    return 0;
  }

  v6 = *(v4 + 2);
  v7 = *(v4 + 4);
  v69 = *(v4 + 10);
  v65 = v4[44];
  v66 = v4[24];
  LODWORD(v63) = *a1;
  HIDWORD(v63) = v4[45];
  v8 = *(v4 + 6);
  type metadata accessor for CGPoint(0);
  v9 = v6;
  outlined copy of Image.Location(v7);
  v10 = v8;
  v11 = v9;
  Value = AGGraphGetValue();
  v13 = *Value;
  v14 = *(Value + 8);
  v15 = AGGraphGetValue();
  v16 = *v15;
  v17 = *(v15 + 8);
  v67 = *AGGraphGetValue();
  v74.origin.x = v13;
  v74.origin.y = v14;
  v74.size.width = v16;
  v74.size.height = v17;
  v75 = CGRectStandardize(v74);
  width = v75.size.width;
  v22.f64[0] = *&v67 * 0.5 + v75.origin.y;
  x = v75.origin.x;
  v20 = *&v67 * 0.5 + v75.origin.x;
  v21 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(*&v67 * 0.5), 0), vaddq_f64(*&v75.origin.y, *&v75.size.height));
  v22.f64[1] = v20;
  if (*&v67 == 1.0)
  {
    v23 = vrndmq_f64(v22);
    v24 = vrndaq_f64(vsubq_f64(vrndmq_f64(v21), v23));
  }

  else
  {
    v28 = vdupq_lane_s64(v67, 0);
    v23 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v22, v28)), *&v67);
    v24 = vmulq_n_f64(vrndaq_f64(vdivq_f64(vsubq_f64(vmulq_n_f64(vrndmq_f64(vdivq_f64(v21, v28)), *&v67), v23), v28)), *&v67);
  }

  if (*(v2 + 104) == 2)
  {
    v29 = *(v2 + 2);
    v30 = v2[19];
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    if (v30)
    {
      v32 = *(v30 + 6);
      v33 = *(v30 + 7);
    }

    if (v29 == 0.0)
    {
      v34 = 0.0;
    }

    else
    {
      v35 = *(v2 + 3);
      if (*(v2 + 40) <= 3u)
      {
        v36 = *(v2 + 4);
      }

      else
      {
        v36 = *(v2 + 3);
      }

      if (*(v2 + 40) > 3u)
      {
        v35 = *(v2 + 4);
      }

      v37 = 1.0 / v29;
      v31 = v37 * v35;
      v34 = v37 * v36;
    }

    v68 = v34;
  }

  else
  {
    v31 = v24.f64[1];
    v68 = v24.f64[0];
    v32 = 0.0;
    v33 = 0.0;
  }

  v38 = *(v2 + 186);
  [v11 setPosition_];
  [v11 setSize_];
  v39 = AGGraphGetValue();
  [v11 setPresentationPosition_];
  v40 = [v11 isAnimating];

  if (v40)
  {
    v41 = *AGGraphGetValue();
    [v11 setCurrentTime_];
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v42 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v43 = *(v42 + 376);
    if (v41 < v43)
    {
      v43 = v41;
    }

    *(v42 + 376) = v43;
    [v11 maxVelocity];
    v45 = v44;
    swift_beginAccess();
    ViewGraph.NextUpdate.maxVelocity(_:)(v45);
    swift_endAccess();
  }

  v46 = [v11 version];
  if (v69 == v46)
  {

    outlined consume of Image.Location(v7);
    return 0;
  }

  v48 = v46;
  v49 = swift_allocObject();
  *(v49 + 16) = v11;
  *(v49 + 24) = v66;
  *(v49 + 32) = v7;
  *(v49 + 40) = v48;
  *(v49 + 44) = v65;
  *(v49 + 45) = v64;
  *(v49 + 48) = v10;
  v50 = *v2;
  *v2 = v49;
  v51 = *(v2 + 8);
  *(v2 + 8) = 2;
  v52 = v11;
  outlined copy of Image.Location(v7);
  v53 = v10;
  outlined consume of GraphicsImage.Contents?(v50, v51);
  v54 = *(v2 + 8);
  if (v54 == 255)
  {
    v62 = 0;
    goto LABEL_40;
  }

  if (v54 != 2)
  {
    v62 = *(v2 + 64) ^ 1;
LABEL_40:

    v60 = 0;
    v2[22] = 0;
    *(v2 + 92) = v62;
    if ((v38 & 2) != 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    v61 = v60 & 0xFD;
    goto LABEL_42;
  }

  v55 = *(*v2 + 32);
  v56 = *(*v2 + 48);
  v57 = *(*v2 + 16);
  outlined copy of Image.Location(v55);
  v58 = v56;
  outlined copy of Image.Location(v55);
  v73 = v55;
  _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v57 styleMask], &v73, &v70);

  outlined consume of Image.Location(v55);
  v59 = v70;
  LOWORD(v58) = v71;
  v60 = v72;

  v2[22] = v59;
  *(v2 + 92) = v58;
  if ((v38 & 2) == 0)
  {
    goto LABEL_41;
  }

LABEL_37:
  v61 = v60 | 2;
LABEL_42:
  *(v2 + 186) = v61;

  outlined consume of Image.Location(v7);
  return 1;
}

uint64_t sub_18D12E728()
{
  v1 = *(v0 + 32);
  if (v1 >= 2)
  {
  }

  return swift_deallocObject();
}

void outlined copy of GraphicsImage.Contents?(void *a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    outlined copy of GraphicsImage.Contents(a1, a2);
  }
}

void specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, uint64_t *a2, _OWORD *a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a3[1];
  v66 = *a3;
  v67 = v7;
  v8 = a3[3];
  v68 = a3[2];
  v69 = v8;
  v9 = a3[5];
  v70 = a3[4];
  v71[0] = v9;
  *(v71 + 12) = *(a3 + 92);
  v10 = DWORD2(v71[1]) >> 29;
  if (DWORD2(v71[1]) >> 29 == 2)
  {
    v12 = a4;

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v46 = v66;
      LOBYTE(v47) = v67 & 1;
      v13 = *(v12 + 48);
      v38 = *(v12 + 32);
      v39 = v13;
      *&v40 = *(v12 + 64);
      v14 = *(v12 + 16);
      v36 = *v12;
      v37 = v14;
      outlined init with copy of _ShapeStyle_Pack.Style?(&v36, &v59, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v15 = *AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v36, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v44[0] = v15;
      LOBYTE(v59) = v6;
      _ShapeStyle_Pack.subscript.getter(&v59, 0, &v51);

      v35 = v6;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v46, &v51, &v35);
      v63 = v55;
      v64[0] = v56;
      v64[1] = v57;
      v65 = v58;
      v59 = v51;
      v60 = v52;
      v61 = v53;
      v62 = v54;
      outlined destroy of _ShapeStyle_Pack.Style(&v59);
    }

    else
    {
      v59 = v66;
      LOBYTE(v60) = v67 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v59);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v66);
  }

  else
  {
    v11 = *(&v68 + 1);
    if (v10 == 3)
    {
      if (v70)
      {
        v59 = v66;
        LOBYTE(v60) = v67;
        *(&v60 + 1) = *(&v67 + 1);
        BYTE7(v60) = (*(&v67 + 1) | ((*(&v67 + 5) | (BYTE7(v67) << 16)) << 32)) >> 48;
        *(&v60 + 5) = *(&v67 + 5);
        *(&v60 + 1) = *(&v67 + 1);
        v61 = v68;
        v62 = v69;
        LOBYTE(v63) = v70;
        *(&v63 + 1) = *(&v70 + 1);
        BYTE7(v63) = (*(&v70 + 1) | ((*(&v70 + 5) | (BYTE7(v70) << 16)) << 32)) >> 48;
        *(&v63 + 5) = *(&v70 + 5);
        *(&v63 + 1) = *(&v70 + 1);
        v64[0] = v71[0];
        *&v64[1] = *&v71[1];
        DWORD2(v64[1]) = DWORD2(v71[1]) & 0x1FFFFFFF;
        _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v59);
        return;
      }

      if (LOBYTE(v66.f64[1]) != 2)
      {
        if (LOBYTE(v66.f64[1]) == 255)
        {
          *(v64 + 12) = *(a3 + 92);
          v16 = a3[5];
          v63 = a3[4];
          v64[0] = v16;
          v17 = a3[1];
          v59 = *a3;
          v60 = v17;
          v18 = a3[3];
          v61 = a3[2];
          v62 = v18;
          DWORD2(v64[1]) &= 0x1FFFFFFFu;
          v19 = a4;
          outlined init with copy of GraphicsImage(&v59, &v51);
          a4 = v19;
        }

        goto LABEL_14;
      }

      v22 = *(*&v66.f64[0] + 16);
      v23 = *(*&v66.f64[0] + 24);
      v24 = *(*&v66.f64[0] + 32);
      v25 = *(*&v66.f64[0] + 40);
      v26 = *(*&v66.f64[0] + 44);
      v27 = *(*&v66.f64[0] + 45);
      v28 = *(*&v66.f64[0] + 48);
      v29 = *(a4 + 48);
      v53 = *(a4 + 32);
      v54 = v29;
      v30 = *(a4 + 16);
      v51 = *a4;
      *&v36 = v22;
      BYTE8(v36) = v23;
      *&v37 = v24;
      DWORD2(v37) = v25;
      BYTE12(v37) = v26;
      BYTE13(v37) = v27;
      *&v38 = v28;
      LOBYTE(v46.f64[0]) = v6;
      *&v55 = *(a4 + 64);
      v52 = v30;
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v66, &v59);
      v33 = v22;
      outlined copy of Image.Location(v24);
      v34 = v28;
      outlined init with copy of _ShapeStyle_Pack.Style?(&v51, &v59, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v31 = *AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v51, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      *&v59 = v31;
      specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v36, v11, &v46, &v59, a2, v32);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v66);

      outlined consume of Image.Location(v24);
    }

    else if (v10 != 5 || DWORD2(v71[1]) != -1610612736 || v67 | ((*(&v67 + 1) | ((*(&v67 + 5) | (BYTE7(v67) << 16)) << 32)) << 8) | v70 | ((*(&v70 + 1) | ((*(&v70 + 5) | (BYTE7(v70) << 16)) << 32)) << 8) | *&v66.f64[0] | *&v66.f64[1] | *(&v67 + 1) | v68 | *(&v68 + 1) | v69 | *(&v69 + 1) | *(&v70 + 1) | *&v71[0] | *(&v71[0] + 1) | *&v71[1])
    {
LABEL_14:
      v20 = *a4;
      v47 = *(a4 + 16);
      v21 = *(a4 + 48);
      v48 = *(a4 + 32);
      v49 = v21;
      v50 = *(a4 + 64);
      v46 = v20;
      outlined init with copy of _ShapeStyle_Pack.Style?(&v46, &v59, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v46, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      LOBYTE(v51) = v6;
      _ShapeStyle_Pack.subscript.getter(&v51, 0, &v59);

      v55 = v63;
      v56 = v64[0];
      v57 = v64[1];
      v58 = v65;
      v51 = v59;
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v43 = v65;
      v44[0] = v6;
      v44[1] = 0;
      v45 = 0;
      v40 = v63;
      v41 = v64[0];
      v42 = v64[1];
      v36 = v59;
      v37 = v60;
      v38 = v61;
      v39 = v62;
      outlined init with copy of _ShapeStyle_Pack.Style(&v51, &v59);
      _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v44, &v36, a3);
      v63 = v40;
      v64[0] = v41;
      v64[1] = v42;
      v65 = v43;
      v59 = v36;
      v60 = v37;
      v61 = v38;
      v62 = v39;
      outlined destroy of _ShapeStyle_Pack.Style?(&v59, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
      v40 = v55;
      v41 = v56;
      v42 = v57;
      v43 = v58;
      v36 = v51;
      v37 = v52;
      v38 = v53;
      v39 = v54;
      _ShapeStyle_RenderedShape.render(style:)(&v36);
      _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);
      outlined destroy of _ShapeStyle_Pack.Style(&v51);
    }
  }
}