void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, char a2, char *a3)
{
  v6 = a1[1];
  swift_retain_n();
  v7 = _minimumMergeRunLength(_:)(v6);
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v10 + 16) = v9;
      }

      *&v79 = v10 + 32;
      *(&v79 + 1) = v9;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v79, &v66, a1, v8, a2 & 1, a3);

      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v6 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  if (v6 > 1)
  {
    v45 = v6;
    v11 = *a1;

    v12 = 0;
    v13 = 1;
    for (i = v11; ; i += 200)
    {
      v46 = v12;
      for (j = i; ; j -= 200)
      {
        v16 = (j + 200);
        v66 = *(j + 200);
        v17 = *(j + 216);
        v18 = *(j + 232);
        v19 = *(j + 264);
        v69 = *(j + 248);
        v70 = v19;
        v67 = v17;
        v68 = v18;
        v20 = *(j + 280);
        v21 = *(j + 296);
        v22 = *(j + 328);
        v73 = *(j + 312);
        v74 = v22;
        v71 = v20;
        v72 = v21;
        v23 = *(j + 344);
        v24 = *(j + 360);
        v25 = *(j + 376);
        v78 = *(j + 392);
        v76 = v24;
        v77 = v25;
        v75 = v23;
        v79 = *j;
        v26 = *(j + 16);
        v27 = *(j + 32);
        v28 = *(j + 64);
        v82 = *(j + 48);
        v83 = v28;
        v80 = v26;
        v81 = v27;
        v29 = *(j + 80);
        v30 = *(j + 96);
        v31 = *(j + 128);
        v86 = *(j + 112);
        v87 = v31;
        v84 = v29;
        v85 = v30;
        v32 = *(j + 144);
        v33 = *(j + 160);
        v34 = *(j + 176);
        v91 = *(j + 192);
        v89 = v33;
        v90 = v34;
        v88 = v32;
        v63 = v76;
        v64 = v77;
        v65 = v78;
        v59 = v72;
        v60 = v73;
        v61 = v74;
        v62 = v75;
        v55 = v68;
        v56 = v69;
        v57 = v70;
        v58 = v71;
        v53 = v66;
        v54 = v67;
        v51[10] = v33;
        v51[11] = v34;
        v52 = v91;
        v51[6] = v85;
        v51[7] = v86;
        v51[8] = v31;
        v51[9] = v32;
        v51[2] = v81;
        v51[3] = v82;
        v51[4] = v83;
        v51[5] = v84;
        v51[0] = v79;
        v51[1] = v80;
        if (a2)
        {
          outlined init with copy of GlassContainer.Effect(&v66, &v49);
          outlined init with copy of GlassContainer.Effect(&v79, &v49);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Effect(&v79);
          outlined destroy of GlassContainer.Effect(&v66);
          v35 = v49;
          v36 = v47;
          if (v48)
          {
            v36 = 0.0;
          }

          if (v50)
          {
            v35 = 0.0;
          }

          if (v36 >= v35)
          {
            break;
          }
        }

        else
        {
          outlined init with copy of GlassContainer.Effect(&v66, &v49);
          outlined init with copy of GlassContainer.Effect(&v79, &v49);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Effect(&v79);
          outlined destroy of GlassContainer.Effect(&v66);
          v37 = v49;
          v38 = v47;
          if (v50)
          {
            v37 = 0.0;
          }

          if (v48)
          {
            v38 = 0.0;
          }

          if (v37 >= v38)
          {
            break;
          }
        }

        if (!v11)
        {
          goto LABEL_32;
        }

        v62 = *(j + 344);
        v63 = *(j + 360);
        v64 = *(j + 376);
        v65 = *(j + 392);
        v58 = *(j + 280);
        v59 = *(j + 296);
        v60 = *(j + 312);
        v61 = *(j + 328);
        v54 = *(j + 216);
        v55 = *(j + 232);
        v56 = *(j + 248);
        v57 = *(j + 264);
        v53 = *v16;
        v39 = *(j + 176);
        *(j + 360) = *(j + 160);
        *(j + 376) = v39;
        *(j + 392) = *(j + 192);
        v40 = *(j + 112);
        *(j + 296) = *(j + 96);
        *(j + 312) = v40;
        v41 = *(j + 144);
        *(j + 328) = *(j + 128);
        *(j + 344) = v41;
        v42 = *(j + 48);
        *(j + 232) = *(j + 32);
        *(j + 248) = v42;
        v43 = *(j + 80);
        *(j + 264) = *(j + 64);
        *(j + 280) = v43;
        v44 = *(j + 16);
        *v16 = *j;
        *(j + 216) = v44;
        *(j + 144) = v62;
        *(j + 160) = v63;
        *(j + 176) = v64;
        *(j + 192) = v65;
        *(j + 80) = v58;
        *(j + 96) = v59;
        *(j + 112) = v60;
        *(j + 128) = v61;
        *(j + 16) = v54;
        *(j + 32) = v55;
        *(j + 48) = v56;
        *(j + 64) = v57;
        *j = v53;
        if (!v12)
        {
          break;
        }

        ++v12;
      }

      if (++v13 == v45)
      {
        break;
      }

      v12 = v46 - 1;
    }
  }

  else
  {
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(void *, void, uint64_t, __n128))
{
  v10 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a4(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;

  (a5)(v13, a2 & 1, a3);

  *a1 = v10;
}

uint64_t specialized GlassContainerResolvedStorage.resolvedStorage(storage:entries:)(uint64_t a1, char **a2, double a3)
{
  memcpy(__dst, v3, sizeof(__dst));
  v125 = MEMORY[0x1E69E7CC0];
  v7 = *(*a2 + 2);
  if (!v7)
  {
    goto LABEL_50;
  }

  v8 = 344 * v7;
  while (1)
  {
    memcpy(v124, __dst, sizeof(v124));
    v9 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    if (v7 > *(v9 + 2))
    {
      break;
    }

    specialized GlassContainerResolvedStorage.validateEntry(_:storage:)(&v9[v8 - 312], a1);
    *a2 = v9;
    if (v7 > *(v9 + 2))
    {
      goto LABEL_11;
    }

    --v7;
    if (!*(*&v9[v8 - 184] + 16))
    {
      specialized Array.remove(at:)(v7, __src);
      memcpy(v124, __src, 0x154uLL);
      outlined destroy of GlassContainer.Entry(v124);
    }

    v8 -= 344;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  v72 = *(*a2 + 2);
  if (v72)
  {
    v10 = 0;
    v71 = (*a2 + 32);
    v11 = MEMORY[0x1E69E7CC0];
    v70 = *a2;
    do
    {
      v73 = v10;
      memcpy(v124, (v71 + 344 * v10), 0x154uLL);
      v12 = *(v11 + 2);
      result = outlined init with copy of GlassContainer.Entry(v124, __src);
      v75 = v12;
      if (v12)
      {
        v14 = 0;
        v15 = 0;
        v74 = v11;
        while (1)
        {
          if (v15 >= *(v11 + 2))
          {
            __break(1u);
            goto LABEL_52;
          }

          __src[0] = *&v11[v14 + 32];
          v16 = *&v11[v14 + 48];
          v17 = *&v11[v14 + 64];
          v18 = *&v11[v14 + 96];
          __src[3] = *&v11[v14 + 80];
          __src[4] = v18;
          __src[1] = v16;
          __src[2] = v17;
          v19 = *&v11[v14 + 112];
          v20 = *&v11[v14 + 128];
          v21 = *&v11[v14 + 160];
          __src[7] = *&v11[v14 + 144];
          __src[8] = v21;
          __src[5] = v19;
          __src[6] = v20;
          v22 = *&v11[v14 + 176];
          v23 = *&v11[v14 + 192];
          v24 = *&v11[v14 + 208];
          *&__src[12] = *&v11[v14 + 224];
          __src[10] = v23;
          __src[11] = v24;
          __src[9] = v22;
          v25 = __src[5];
          v26 = *(&__src[6] + 1);
          v76 = *&__src[6];
          v86 = v15;
          v87 = v14;
          if (*(&__src[6] + 1) == 1)
          {
            v27 = *(&__src[0] + 1);
            v28 = *&__src[0];
            outlined copy of _Glass.Variant.Role(*&__src[0], DWORD2(__src[0]));
          }

          else
          {
            v27 = *(&__src[5] + 1);
            v28 = *&__src[5];
          }

          v84 = *&__src[3];
          v82 = BYTE8(__src[3]);
          v80 = *&__src[4];
          v29 = __src[8];
          v30 = *(&__src[9] + 1);
          v78 = HIDWORD(__src[10]);
          v31 = __src[11];
          *&v88 = v28;
          *(&v88 + 1) = v27;
          outlined init with copy of GlassContainer.Effect(__src, &v107);
          outlined copy of _Glass.Variant.Role(v28, v27);
          outlined copy of _Glass?(v25, DWORD2(v25), v76, v26);
          _Glass.Variant.ID.init(_:)(&v88, &v107);
          outlined consume of _Glass.Variant.Role(v28, v27);

          v32 = v107;
          v33 = BYTE8(v107);
          if (v30 == 1)
          {
            v34 = 0;
            v35 = -4;
          }

          else
          {
            v107 = v29;
            outlined copy of _Glass.Variant.Role(v29, DWORD2(v29));
            _Glass.Variant.ID.init(_:)(&v107, &v88);
            v34 = v88;
            v35 = BYTE8(v88);
          }

          outlined consume of _Glass.Variant.ID?(0, 0xFCu);
          v122 = v31;
          v121 = v82;
          *&v107 = v32;
          BYTE8(v107) = v33;
          *&v108 = v34;
          BYTE8(v108) = v35;
          HIDWORD(v108) = v78;
          LOBYTE(v109) = v31;
          *(&v109 + 1) = v84;
          LOBYTE(v110) = v82;
          *(&v110 + 1) = v80;
          v36 = *&v124[14];
          v37 = DWORD2(v124[14]);
          v38 = *(&v124[15] + 1);
          v77 = *&v124[15];
          if (*(&v124[15] + 1) == 1)
          {
            v40 = *(&v124[9] + 1);
            v39 = *&v124[9];
            outlined copy of _Glass.Variant.Role(*&v124[9], DWORD2(v124[9]));
          }

          else
          {
            v40 = *(&v124[14] + 1);
            v39 = *&v124[14];
          }

          v85 = *&v124[12];
          v83 = BYTE8(v124[12]);
          v81 = *&v124[13];
          v41 = v124[17];
          v42 = *(&v124[18] + 1);
          v79 = HIDWORD(v124[19]);
          v43 = v124[20];
          *&v88 = v39;
          *(&v88 + 1) = v40;
          outlined copy of _Glass.Variant.Role(v39, v40);
          outlined copy of _Glass?(v36, v37, v77, v38);
          _Glass.Variant.ID.init(_:)(&v88, v104);
          outlined consume of _Glass.Variant.Role(v39, v40);

          v44 = *&v104[0];
          v45 = BYTE8(v104[0]);
          if (v42 == 1)
          {
            v46 = 0;
            v47 = -4;
          }

          else
          {
            v88 = v41;
            outlined copy of _Glass.Variant.Role(v41, DWORD2(v41));
            _Glass.Variant.ID.init(_:)(&v88, v104);
            v46 = *&v104[0];
            v47 = BYTE8(v104[0]);
          }

          outlined consume of _Glass.Variant.ID?(0, 0xFCu);
          v106 = v43;
          v105 = v83;
          *&v100 = v44;
          BYTE8(v100) = v45;
          *&v101 = v46;
          BYTE8(v101) = v47;
          HIDWORD(v101) = v79;
          LOBYTE(v102) = v43;
          *(&v102 + 1) = v85;
          LOBYTE(v103) = v83;
          *(&v103 + 1) = v81;
          v48 = specialized static GlassContainer.DisplayMaterial.ID.== infix(_:_:)(&v107, &v100);
          v104[0] = v100;
          v104[1] = v101;
          v104[2] = v102;
          v104[3] = v103;
          outlined destroy of GlassContainer.DisplayMaterial.ID(v104);
          v88 = v107;
          v89 = v108;
          v90 = v109;
          v91 = v110;
          outlined destroy of GlassContainer.DisplayMaterial.ID(&v88);
          result = outlined destroy of GlassContainer.Effect(__src);
          if (v48)
          {
            break;
          }

          v15 = v86 + 1;
          v14 = v87 + 200;
          v11 = v74;
          if (v75 == v86 + 1)
          {
            goto LABEL_31;
          }
        }

        v11 = v74;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v74);
          v11 = result;
        }

        if (v86 >= *(v11 + 2))
        {
          goto LABEL_53;
        }

        v64 = &v11[v87];
        v65 = *&v11[v87 + 224];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v11[v87 + 224] = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
          *(v64 + 28) = v65;
        }

        v68 = *(v65 + 2);
        v67 = *(v65 + 3);
        if (v68 >= v67 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v65);
          *(v64 + 28) = v65;
        }

        *(v65 + 2) = v68 + 1;
        result = memcpy(&v65[344 * v68 + 32], v124, 0x154uLL);
      }

      else
      {
LABEL_31:
        v96 = v124[17];
        v97 = v124[18];
        v98 = v124[19];
        LOBYTE(v99) = v124[20];
        v92 = v124[13];
        v93 = v124[14];
        v94 = v124[15];
        v95 = v124[16];
        v88 = v124[9];
        v89 = v124[10];
        v90 = v124[11];
        v91 = v124[12];
        outlined init with copy of GlassContainer.Entry(v124, __src);
        outlined init with copy of GlassContainer.DisplayMaterial(&v124[9], __src);
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        memcpy(&v49[344 * v51 + 32], v124, 0x154uLL);
        __src[8] = v96;
        __src[9] = v97;
        __src[10] = v98;
        *&__src[11] = v99;
        __src[4] = v92;
        __src[5] = v93;
        __src[6] = v94;
        __src[7] = v95;
        __src[0] = v88;
        __src[1] = v89;
        __src[2] = v90;
        __src[3] = v91;
        *(&__src[11] + 1) = a3;
        *&__src[12] = v49;
        outlined init with copy of GlassContainer.Effect(__src, &v107);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v53 = *(v11 + 2);
        v52 = *(v11 + 3);
        if (v53 >= v52 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v11);
        }

        outlined destroy of GlassContainer.Entry(v124);
        *(v11 + 2) = v53 + 1;
        v54 = &v11[200 * v53];
        *(v54 + 2) = __src[0];
        v55 = __src[1];
        v56 = __src[2];
        v57 = __src[4];
        *(v54 + 5) = __src[3];
        *(v54 + 6) = v57;
        *(v54 + 3) = v55;
        *(v54 + 4) = v56;
        v58 = __src[5];
        v59 = __src[6];
        v60 = __src[8];
        *(v54 + 9) = __src[7];
        *(v54 + 10) = v60;
        *(v54 + 7) = v58;
        *(v54 + 8) = v59;
        v62 = __src[10];
        v61 = __src[11];
        v63 = *&__src[12];
        *(v54 + 11) = __src[9];
        *(v54 + 12) = v62;
        *(v54 + 28) = v63;
        *(v54 + 13) = v61;
        v107 = v88;
        v108 = v89;
        v109 = v90;
        v110 = v91;
        v111 = v92;
        v112 = v93;
        v113 = v94;
        v114 = v95;
        v115 = v96;
        v116 = v97;
        v117 = v98;
        v118 = v99;
        v119 = a3;
        v120 = v49;
        result = outlined destroy of GlassContainer.Effect(&v107);
      }

      v10 = v73 + 1;
      if (v73 + 1 == v72)
      {
        v125 = v11;
        goto LABEL_50;
      }
    }

    while (v10 < *(v70 + 2));
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
LABEL_50:
    KeyPath = swift_getKeyPath();
    specialized MutableCollection<>.sort(by:)(&v125, 0, KeyPath, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

    return v125;
  }

  return result;
}

void _s7SwiftUI22TransactionPropertyKey33_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationE033_D98E9A1069CEEADA58829ED440E36F30LLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for GlassContainer.MatchingResult<GlassContainer.Entry>?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Resolver?(255, a3, a4, a5);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata accessor for ColorBox<Color.MixProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ColorBox<Color.MixProvider>)
  {
    lazy protocol witness table accessor for type Color.MixProvider and conformance Color.MixProvider();
    v4 = type metadata accessor for ColorBox(a1, &type metadata for Color.MixProvider, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ColorBox<Color.MixProvider>);
    }
  }
}

void lazy protocol witness table accessor for type Color.MixProvider and conformance Color.MixProvider()
{
  if (!lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.MixProvider, &type metadata for Color.MixProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.MixProvider, &type metadata for Color.MixProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.MixProvider, &type metadata for Color.MixProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider);
  }
}

uint64_t _s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(uint64_t a1)
{
  if (*(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

int8x16_t _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi2_(uint64_t a1)
{
  v1 = *(a1 + 352);
  v2 = *(a1 + 624);
  v3 = *(a1 + 168) & 0xFFFFFFFFC00000FFLL;
  v4 = *(a1 + 328) & 0xFFFFFFFF000000FFLL;
  v5 = *(a1 + 392) & 3;
  v6 = *(a1 + 440) & 3;
  v7 = *(a1 + 480) & 0xFFFFFFFFFFFFFF8;
  v8 = *(a1 + 496) & 0x101;
  v9 = *(a1 + 544) & 3;
  v10 = *(a1 + 560) & 1;
  v11 = *(a1 + 672) & 0xFFFFFFFF000000FFLL;
  v12 = *(a1 + 680) & 1 | 0x6000000000000000;
  *(a1 + 64) &= 0xFFFFFFFFC00000FFLL;
  *(a1 + 168) = v3;
  *(a1 + 328) = v4;
  *(a1 + 352) = v1;
  *(a1 + 392) = v5;
  *(a1 + 408) = vandq_s8(*(a1 + 408), xmmword_18DDAA060);
  *(a1 + 440) = v6;
  *(a1 + 480) = v7;
  *(a1 + 496) = v8;
  result = vandq_s8(*(a1 + 512), xmmword_18DDAA060);
  *(a1 + 512) = result;
  *(a1 + 544) = v9;
  *(a1 + 560) = v10;
  *(a1 + 624) = v2;
  *(a1 + 672) = v11;
  *(a1 + 680) = v12;
  return result;
}

void type metadata accessor for (Int, Int, GlassContainer.Entry, GlassContainer.Entry)()
{
  if (!lazy cache variable for type metadata for (Int, Int, GlassContainer.Entry, GlassContainer.Entry))
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (Int, Int, GlassContainer.Entry, GlassContainer.Entry));
    }
  }
}

uint64_t outlined destroy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(uint64_t a1)
{
  type metadata accessor for (Int, Int, GlassContainer.Entry, GlassContainer.Entry)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Resolver?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

double outlined copy of GlassContainer.Entry.ModelID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }

    outlined copy of _Glass.Variant.ID(a1, a2);
  }

  return result;
}

double outlined consume of GlassContainer.Entry.ModelID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }

    outlined consume of _Glass.Variant.ID(a1, a2);
  }

  return result;
}

uint64_t _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOg(uint64_t a1)
{
  v1 = *(a1 + 680) >> 61;
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

void partial apply for specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(a1, a2, *(v3 + 16), specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:), a3);
}

{
  specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(a1, a2, *(v3 + 16), specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:), a3);
}

{
  specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(a1, a2, *(v3 + 16), specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:), a3);
}

char *specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(void *a1, Swift::Int a2, uint64_t a3, Swift::Int a4, uint64_t a5)
{
  v118 = a1;
  v119 = a3;
  v121 = a2;
  type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for CollectionDifference<GlassContainer.Item.ID>, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6EF0]);
  v115 = v7;
  v113 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v113 - v8;
  v9 = MEMORY[0x1E69E7CC8];
  v128 = MEMORY[0x1E69E7CC8];
  type metadata accessor for [GlassContainer.Item.ID : Int](0, &lazy cache variable for type metadata for [GlassContainer.Item.ID : Int], lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID);
  v11 = v10;
  Dictionary.reserveCapacity(_:)(a4);
  v117 = a5;
  v120 = a4;
  if (a4)
  {
    if ((v120 & 0x8000000000000000) == 0)
    {
      v116 = v11;
      v12 = 0;
      v13 = v128;
      v14 = (v119 + 16);
      while (1)
      {
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v122 = (v12 + 1);
        v15 = *(v14 - 4);
        v17 = *(v14 - 1);
        v16 = *v14;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v13;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17, v16);
        v21 = v13[2];
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_107;
        }

        v24 = v19;
        if (v13[3] >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v13 = v125;
            if ((v19 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v13 = v125;
            if ((v24 & 1) == 0)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
          v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17, v16);
          if ((v24 & 1) != (v26 & 1))
          {
            goto LABEL_116;
          }

          v20 = v25;
          v13 = v125;
          if ((v24 & 1) == 0)
          {
LABEL_14:
            v13[(v20 >> 6) + 8] |= 1 << v20;
            v27 = v13[6] + 24 * v20;
            *v27 = v15;
            *(v27 + 8) = v17;
            *(v27 + 16) = v16;
            *(v13[7] + 8 * v20) = v12;
            v28 = v13[2];
            v29 = __OFADD__(v28, 1);
            v30 = v28 + 1;
            if (v29)
            {
              goto LABEL_112;
            }

            v13[2] = v30;
            goto LABEL_5;
          }
        }

        *(v13[7] + 8 * v20) = v12;

LABEL_5:
        ++v12;
        v14 += 3;
        if (v122 == v120)
        {
          v128 = v13;
          a5 = v117;
          v9 = MEMORY[0x1E69E7CC8];
          goto LABEL_19;
        }
      }
    }

    goto LABEL_114;
  }

LABEL_19:
  v127 = v9;
  v31 = v121;
  Dictionary.reserveCapacity(_:)(v121);
  if (v31)
  {
    if (v121 < 0)
    {
LABEL_115:
      __break(1u);
LABEL_116:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v32 = 0;
    v33 = v127;
    v34 = v118 + 2;
    while (1)
    {
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_108;
      }

      v36 = *(v34 - 4);
      v37 = *(v34 - 1);
      v38 = *v34;

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v125 = v33;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37, v38);
      v42 = v33[2];
      v43 = (v41 & 1) == 0;
      v29 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v29)
      {
        goto LABEL_109;
      }

      v45 = v41;
      if (v33[3] < v44)
      {
        break;
      }

      if (v39)
      {
        goto LABEL_30;
      }

      v50 = v40;
      specialized _NativeDictionary.copy()();
      v40 = v50;
      v33 = v125;
      if ((v45 & 1) == 0)
      {
LABEL_31:
        v33[(v40 >> 6) + 8] |= 1 << v40;
        v47 = v33[6] + 24 * v40;
        *v47 = v36;
        *(v47 + 8) = v37;
        *(v47 + 16) = v38;
        *(v33[7] + 8 * v40) = v32;
        v48 = v33[2];
        v29 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v29)
        {
          goto LABEL_113;
        }

        v33[2] = v49;
        goto LABEL_23;
      }

LABEL_22:
      *(v33[7] + 8 * v40) = v32;

LABEL_23:
      ++v32;
      v34 += 3;
      if (v35 == v121)
      {
        v127 = v33;
        a5 = v117;
        goto LABEL_36;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, v39);
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37, v38);
    if ((v45 & 1) != (v46 & 1))
    {
      goto LABEL_116;
    }

LABEL_30:
    v33 = v125;
    if ((v45 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

LABEL_36:
  v116 = v128;
  if (v128[2] != v120 || v127[2] != v121)
  {
    v125 = v118;
    *&v126 = v121;
    v123 = v119;
    *&v124 = v120;
    type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for UnsafeBufferPointer<GlassContainer.Item.ID>, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6048]);
    lazy protocol witness table accessor for type UnsafeBufferPointer<ScrollEdgeEffectTag.ID> and conformance UnsafeBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<GlassContainer.Item.ID> and conformance UnsafeBufferPointer<A>, &lazy cache variable for type metadata for UnsafeBufferPointer<GlassContainer.Item.ID>, &type metadata for GlassContainer.Item.ID);
    lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID();
    BidirectionalCollection<>.difference<A>(from:)();
    v56 = CollectionDifference.removals.getter();
    v57 = *(v56 + 16);
    v58 = MEMORY[0x1E69E7CC0];
    if (v57)
    {
      v125 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57, 0);
      v59 = 0;
      v60 = v125;
      v61 = v56 + 73;
      do
      {
        if (v59 >= *(v56 + 16))
        {
          goto LABEL_110;
        }

        v62 = *(v61 - 41);
        v63 = v60;
        outlined copy of CollectionDifference<GlassContainer.Item.ID>.Change(v62, *(v61 - 33), *(v61 - 25));

        v60 = v63;
        v125 = v63;
        v65 = v63[2];
        v64 = v63[3];
        if (v65 >= v64 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
          v60 = v125;
        }

        ++v59;
        v60[2] = v65 + 1;
        v60[v65 + 4] = v62;
        v61 += 48;
      }

      while (v57 != v59);
      v122 = v60;

      v103 = v114;
      v102 = v115;
      v58 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v122 = MEMORY[0x1E69E7CC0];
      v103 = v114;
      v102 = v115;
    }

    v104 = CollectionDifference.insertions.getter();
    v105 = *(v104 + 16);
    if (!v105)
    {

      (*(v113 + 8))(v103, v102);
      goto LABEL_105;
    }

    v125 = v58;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v105, 0);
    v106 = 0;
    v107 = v125;
    v108 = v104 + 73;
    while (v106 < *(v104 + 16))
    {
      v109 = *(v108 - 41);
      outlined copy of CollectionDifference<GlassContainer.Item.ID>.Change(v109, *(v108 - 33), *(v108 - 25));

      v125 = v107;
      v111 = v107[2];
      v110 = v107[3];
      if (v111 >= v110 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
        v107 = v125;
      }

      ++v106;
      v107[2] = v111 + 1;
      v107[v111 + 4] = v109;
      v108 += 48;
      if (v105 == v106)
      {

        (*(v113 + 8))(v114, v115);
        goto LABEL_105;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v115 = v127;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v53 >= v120)
    {
      v51 = v52;
      if (v52 >= v121)
      {
        break;
      }
    }

    v66 = *(v55 + 2);
    v67 = *(v54 + 2);
    v68 = v67 + v66;
    if (v67 + v66 > a5)
    {
      goto LABEL_102;
    }

    if (v51 == v121)
    {
      v69 = v55;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v55 = v69;
      }

      else
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66 + 1, 1, v69);
      }

      v71 = *(v55 + 2);
      v70 = *(v55 + 3);
      if (v71 >= v70 >> 1)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v55);
      }

      *(v55 + 2) = v71 + 1;
      *&v55[8 * v71 + 32] = v53++;
      v51 = v121;
    }

    else
    {
      v122 = v55;
      if (v53 == v120)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67 + 1, 1, v54);
        }

        v73 = *(v54 + 2);
        v72 = *(v54 + 3);
        v55 = v122;
        if (v73 >= v72 >> 1)
        {
          v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v54);
          v55 = v122;
          v54 = v100;
        }

        *(v54 + 2) = v73 + 1;
        *&v54[8 * v73 + 32] = v51++;
        v52 = v51;
        v53 = v120;
      }

      else
      {
        v74 = (v119 + 24 * v53);
        LODWORD(v125) = *v74;
        v126 = *(v74 + 2);
        v75 = &v118[3 * v51];
        LODWORD(v123) = *v75;
        v124 = *(v75 + 2);

        v76 = specialized static GlassContainer.Item.ID.== infix(_:_:)(&v125, &v123);

        if (v76)
        {
          ++v53;
          v52 = ++v51;
          a5 = v117;
          v55 = v122;
        }

        else
        {
          v77 = v115;
          if (v115[2])
          {
            v79 = *(v74 + 1);
            v78 = *(v74 + 2);
            v80 = *v74;

            v81 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v79, v78);
            if (v82)
            {
              v83 = *(v77[7] + 8 * v81);
            }

            else
            {
              v83 = 0;
            }

            v84 = v82 ^ 1;
          }

          else
          {
            v83 = 0;
            v84 = 1;
          }

          if (v116[2])
          {
            v86 = *(v75 + 1);
            v85 = *(v75 + 2);
            v87 = *v75;

            v88 = v87;
            v89 = v116;
            v90 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v86, v85);
            if ((v91 & 1) == 0)
            {

              goto LABEL_76;
            }

            v92 = v83;
            v93 = *(v89[7] + 8 * v90);

            if ((v84 & 1) == 0)
            {
              a5 = v117;
              if (v92 >= v51 && (v93 < v53 || v93 - v53 >= v92 - v51))
              {
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  goto LABEL_83;
                }

                goto LABEL_89;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v122 + 2) + 1, 1, v122);
              }

LABEL_78:
              v55 = v122;
              goto LABEL_79;
            }

LABEL_77:
            v94 = swift_isUniquelyReferenced_nonNull_native();
            a5 = v117;
            if (v94)
            {
              goto LABEL_78;
            }

            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v122 + 2) + 1, 1, v122);
LABEL_79:
            v96 = *(v55 + 2);
            v95 = *(v55 + 3);
            if (v96 >= v95 >> 1)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v55);
            }

            *(v55 + 2) = v96 + 1;
            *&v55[8 * v96 + 32] = v53++;
          }

          else
          {
LABEL_76:
            if (v84)
            {
              goto LABEL_77;
            }

            v97 = swift_isUniquelyReferenced_nonNull_native();
            a5 = v117;
            if (v97)
            {
              goto LABEL_83;
            }

LABEL_89:
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
LABEL_83:
            v99 = *(v54 + 2);
            v98 = *(v54 + 3);
            v55 = v122;
            if (v99 >= v98 >> 1)
            {
              v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v54);
              v55 = v122;
              v54 = v101;
            }

            *(v54 + 2) = v99 + 1;
            *&v54[8 * v99 + 32] = v51++;
            v52 = v51;
          }
        }
      }
    }
  }

  v68 = *(v54 + 2) + *(v55 + 2);
LABEL_102:
  if (v68 <= a5)
  {
    v122 = v55;
  }

  else
  {

    v122 = 0;
  }

LABEL_105:

  return v122;
}

void lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID()
{
  if (!lazy protocol witness table cache variable for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID);
  }
}

{
  if (!lazy protocol witness table cache variable for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID);
  }
}

void lazy protocol witness table accessor for type UnsafeBufferPointer<ScrollEdgeEffectTag.ID> and conformance UnsafeBufferPointer<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (!*a1)
  {
    type metadata accessor for Resolver?(255, a2, a3, MEMORY[0x1E69E6048]);
    swift_getWitnessTable(MEMORY[0x1E69E6050], v4);
    atomic_store(v5, a1);
  }
}

uint64_t outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GlassContainer.MatchingResult<GlassContainer.Entry>?(0, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for GlassContainer.MatchingResult<GlassContainer.Entry>?(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for CollectionChanges<Int, Int>()
{
  if (!lazy cache variable for type metadata for CollectionChanges<Int, Int>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E6530];
    v4[1] = MEMORY[0x1E69E6530];
    v4[2] = MEMORY[0x1E69E6548];
    v4[3] = MEMORY[0x1E69E6548];
    v2 = type metadata accessor for CollectionChanges(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for CollectionChanges<Int, Int>);
    }
  }
}

double outlined consume of GlassContainer.Entry.ModelID?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of GlassContainer.Entry.ModelID(a1, a2, a3, a4, a5);
  }

  return result;
}

double outlined consume of ResolvedIDs.Key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0x80) == 0)
  {
    return outlined consume of GlassContainer.Entry.ModelID(a1, a2, a3, a4, a5);
  }

  return result;
}

double outlined copy of ResolvedIDs.Key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0x80) == 0)
  {
    return outlined copy of GlassContainer.Entry.ModelID(a1, a2, a3, a4, a5);
  }

  return result;
}

double _s7SwiftUI14GlassContainerO14MatchingResultVy_AC5EntryVGSgWOi0_(uint64_t a1)
{
  *(a1 + 432) = 0;
  result = 0.0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double _s7SwiftUI14GlassContainerO5EntryVSgWOi0_(uint64_t a1)
{
  *(a1 + 336) = 0;
  result = 0.0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t _sSi6offset_7SwiftUI14GlassContainerO5EntryV7elementtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double _sSi6offset_7SwiftUI14GlassContainerO5EntryV7elementtSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 332) = 0u;
  return result;
}

int8x16_t _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi0_(uint64_t a1)
{
  v1 = *(a1 + 352);
  v2 = *(a1 + 624);
  v3 = *(a1 + 168) & 0xFFFFFFFFC00000FFLL;
  v4 = *(a1 + 328) & 0xFFFFFFFF000000FFLL;
  v5 = *(a1 + 392) & 3;
  v6 = *(a1 + 440) & 3;
  v7 = *(a1 + 480) & 0xFFFFFFFFFFFFFF8;
  v8 = *(a1 + 496) & 0x101;
  v9 = *(a1 + 544) & 3;
  v10 = *(a1 + 560) & 1;
  v11 = *(a1 + 672) & 0xFFFFFFFF000000FFLL;
  v12 = *(a1 + 680) & 1 | 0x2000000000000000;
  *(a1 + 64) &= 0xFFFFFFFFC00000FFLL;
  *(a1 + 168) = v3;
  *(a1 + 328) = v4;
  *(a1 + 352) = v1;
  *(a1 + 392) = v5;
  *(a1 + 408) = vandq_s8(*(a1 + 408), xmmword_18DDAA060);
  *(a1 + 440) = v6;
  *(a1 + 480) = v7;
  *(a1 + 496) = v8;
  result = vandq_s8(*(a1 + 512), xmmword_18DDAA060);
  *(a1 + 512) = result;
  *(a1 + 544) = v9;
  *(a1 + 560) = v10;
  *(a1 + 624) = v2;
  *(a1 + 672) = v11;
  *(a1 + 680) = v12;
  return result;
}

int8x16_t _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi1_(uint64_t a1)
{
  v1 = *(a1 + 352);
  v2 = *(a1 + 624);
  v3 = *(a1 + 168) & 0xFFFFFFFFC00000FFLL;
  v4 = *(a1 + 328) & 0xFFFFFFFF000000FFLL;
  v5 = *(a1 + 392) & 3;
  v6 = *(a1 + 440) & 3;
  v7 = *(a1 + 480) & 0xFFFFFFFFFFFFFF8;
  v8 = *(a1 + 496) & 0x101;
  v9 = *(a1 + 544) & 3;
  v10 = *(a1 + 560) & 1;
  v11 = *(a1 + 672) & 0xFFFFFFFF000000FFLL;
  v12 = *(a1 + 680) & 1 | 0x4000000000000000;
  *(a1 + 64) &= 0xFFFFFFFFC00000FFLL;
  *(a1 + 168) = v3;
  *(a1 + 328) = v4;
  *(a1 + 352) = v1;
  *(a1 + 392) = v5;
  *(a1 + 408) = vandq_s8(*(a1 + 408), xmmword_18DDAA060);
  *(a1 + 440) = v6;
  *(a1 + 480) = v7;
  *(a1 + 496) = v8;
  result = vandq_s8(*(a1 + 512), xmmword_18DDAA060);
  *(a1 + 512) = result;
  *(a1 + 544) = v9;
  *(a1 + 560) = v10;
  *(a1 + 624) = v2;
  *(a1 + 672) = v11;
  *(a1 + 680) = v12;
  return result;
}

int8x16_t _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi_(uint64_t a1)
{
  v1 = *(a1 + 352);
  v2 = *(a1 + 624);
  v3 = *(a1 + 168) & 0xFFFFFFFFC00000FFLL;
  v4 = *(a1 + 328) & 0xFFFFFFFF000000FFLL;
  v5 = *(a1 + 392) & 3;
  v6 = *(a1 + 440) & 3;
  v7 = *(a1 + 480) & 0xFFFFFFFFFFFFFF8;
  v8 = *(a1 + 496) & 0x101;
  v9 = *(a1 + 544) & 3;
  v10 = *(a1 + 560) & 1;
  *(a1 + 64) &= 0xFFFFFFFFC00000FFLL;
  *(a1 + 168) = v3;
  *(a1 + 328) = v4;
  *(a1 + 352) = v1;
  *(a1 + 392) = v5;
  *(a1 + 408) = vandq_s8(*(a1 + 408), xmmword_18DDAA060);
  *(a1 + 440) = v6;
  *(a1 + 480) = v7;
  *(a1 + 496) = v8;
  *(a1 + 512) = vandq_s8(*(a1 + 512), xmmword_18DDAA060);
  *(a1 + 544) = v9;
  *(a1 + 560) = v10;
  *(a1 + 624) = v2;
  result = vandq_s8(*(a1 + 672), xmmword_18DDAA070);
  *(a1 + 672) = result;
  return result;
}

char *specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(char *a1, Swift::Int a2, uint64_t a3, Swift::Int a4, uint64_t a5)
{
  v97 = a5;
  v98 = a1;
  v99 = a3;
  type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for CollectionDifference<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6EF0]);
  v95 = v7;
  v93 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v93 - v8;
  v9 = MEMORY[0x1E69E7CC8];
  v106 = MEMORY[0x1E69E7CC8];
  type metadata accessor for [GlassContainer.Item.ID : Int](0, &lazy cache variable for type metadata for [GlassContainer.Entry.StableID : Int], lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID);
  v11 = v10;
  Dictionary.reserveCapacity(_:)(a4);
  v100 = a4;
  if (a4)
  {
    if ((v100 & 0x8000000000000000) == 0)
    {
      v96 = v11;
      v12 = 0;
      v13 = v106;
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v15 = *(v99 + 8 * v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v13;
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
        v19 = *(v13 + 2);
        v20 = (v17 & 1) == 0;
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_107;
        }

        v22 = v17;
        if (*(v13 + 3) >= v21)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v13 = v103;
            if ((v17 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v13 = v103;
            if ((v22 & 1) == 0)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
          v23 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
          if ((v22 & 1) != (v24 & 1))
          {
            goto LABEL_116;
          }

          v18 = v23;
          v13 = v103;
          if ((v22 & 1) == 0)
          {
LABEL_14:
            *&v13[8 * (v18 >> 6) + 64] |= 1 << v18;
            *(*(v13 + 6) + 8 * v18) = v15;
            *(*(v13 + 7) + 8 * v18) = v12;
            v25 = *(v13 + 2);
            v26 = __OFADD__(v25, 1);
            v27 = v25 + 1;
            if (v26)
            {
              goto LABEL_112;
            }

            *(v13 + 2) = v27;
            goto LABEL_5;
          }
        }

        *(*(v13 + 7) + 8 * v18) = v12;
LABEL_5:
        ++v12;
        if (v14 == v100)
        {
          v106 = v13;
          v9 = MEMORY[0x1E69E7CC8];
          goto LABEL_19;
        }
      }
    }

    goto LABEL_114;
  }

LABEL_19:
  v105 = v9;
  Dictionary.reserveCapacity(_:)(a2);
  if (a2)
  {
    if (a2 < 0)
    {
LABEL_115:
      __break(1u);
LABEL_116:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v28 = 0;
    v29 = v105;
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_108;
      }

      v31 = *&v98[8 * v28];
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v29;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
      v35 = *(v29 + 2);
      v36 = (v34 & 1) == 0;
      v26 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v26)
      {
        goto LABEL_109;
      }

      v38 = v34;
      if (*(v29 + 3) < v37)
      {
        break;
      }

      if (v32)
      {
        goto LABEL_30;
      }

      v42 = v33;
      specialized _NativeDictionary.copy()();
      v33 = v42;
      v29 = v103;
      if ((v38 & 1) == 0)
      {
LABEL_31:
        *&v29[8 * (v33 >> 6) + 64] |= 1 << v33;
        *(*(v29 + 6) + 8 * v33) = v31;
        *(*(v29 + 7) + 8 * v33) = v28;
        v40 = *(v29 + 2);
        v26 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v26)
        {
          goto LABEL_113;
        }

        *(v29 + 2) = v41;
        goto LABEL_23;
      }

LABEL_22:
      *(*(v29 + 7) + 8 * v33) = v28;
LABEL_23:
      ++v28;
      if (v30 == a2)
      {
        v105 = v29;
        goto LABEL_36;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, v32);
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
    if ((v38 & 1) != (v39 & 1))
    {
      goto LABEL_116;
    }

LABEL_30:
    v29 = v103;
    if ((v38 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

LABEL_36:
  v96 = v106;
  if (*(v106 + 2) != v100 || (v43 = v105, *(v105 + 2) != a2))
  {
    v103 = v98;
    v104 = a2;
    v101 = v99;
    v102 = v100;
    type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for UnsafeBufferPointer<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6048]);
    lazy protocol witness table accessor for type UnsafeBufferPointer<ScrollEdgeEffectTag.ID> and conformance UnsafeBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<GlassContainer.Entry.StableID> and conformance UnsafeBufferPointer<A>, &lazy cache variable for type metadata for UnsafeBufferPointer<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v49 = v94;
    BidirectionalCollection<>.difference<A>(from:)();
    v50 = v95;
    v51 = CollectionDifference.removals.getter();
    v52 = *(v51 + 16);
    v53 = MEMORY[0x1E69E7CC0];
    if (v52)
    {
      v103 = MEMORY[0x1E69E7CC0];
      v54 = v51;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
      v55 = v54;
      v56 = 0;
      v57 = 32;
      v48 = v103;
      do
      {
        if (v56 >= *(v55 + 16))
        {
          goto LABEL_110;
        }

        v58 = *(v55 + v57);
        v103 = v48;
        v60 = *(v48 + 2);
        v59 = *(v48 + 3);
        if (v60 >= v59 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
          v55 = v54;
          v48 = v103;
        }

        ++v56;
        *(v48 + 2) = v60 + 1;
        *&v48[8 * v60 + 32] = v58;
        v57 += 32;
      }

      while (v52 != v56);

      v49 = v94;
      v50 = v95;
      v53 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v48 = MEMORY[0x1E69E7CC0];
    }

    v83 = CollectionDifference.insertions.getter();
    v84 = *(v83 + 16);
    if (!v84)
    {

      (*(v93 + 8))(v49, v50);
      goto LABEL_102;
    }

    v103 = v53;
    v100 = v83;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84, 0);
    v85 = v100;
    v86 = 0;
    v87 = 32;
    v88 = v103;
    while (v86 < *(v85 + 16))
    {
      v89 = *(v85 + v87);
      v103 = v88;
      v91 = *(v88 + 2);
      v90 = *(v88 + 3);
      if (v91 >= v90 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1);
        v85 = v100;
        v88 = v103;
      }

      ++v86;
      *(v88 + 2) = v91 + 1;
      *&v88[8 * v91 + 32] = v89;
      v87 += 32;
      if (v84 == v86)
      {

        (*(v93 + 8))(v94, v95);
        goto LABEL_102;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  v95 = v105;
  while (1)
  {
    if (v46 >= v100)
    {
      v44 = v45;
      if (v45 >= a2)
      {
        break;
      }
    }

    v61 = *(v48 + 2);
    v62 = *(v47 + 2);
    v63 = v62 + v61;
    if (v62 + v61 > v97)
    {
      goto LABEL_104;
    }

    if (v44 == a2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61 + 1, 1, v48);
      }

      v65 = *(v48 + 2);
      v64 = *(v48 + 3);
      if (v65 >= v64 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v48);
      }

      *(v48 + 2) = v65 + 1;
      *&v48[8 * v65 + 32] = v46++;
      v44 = a2;
    }

    else if (v46 == v100)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62 + 1, 1, v47);
      }

      v67 = *(v47 + 2);
      v66 = *(v47 + 3);
      if (v67 >= v66 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v47);
      }

      *(v47 + 2) = v67 + 1;
      *&v47[8 * v67 + 32] = v44++;
      v45 = v44;
      v46 = v100;
    }

    else
    {
      v68 = *(v99 + 8 * v46);
      if (v68 == *&v98[8 * v44])
      {
        ++v46;
        goto LABEL_47;
      }

      if (*(v43 + 2) && (v69 = specialized __RawDictionaryStorage.find<A>(_:)(v68), (v70 & 1) != 0))
      {
        v71 = 0;
        v72 = *(*(v43 + 7) + 8 * v69);
      }

      else
      {
        v72 = 0;
        v71 = 1;
      }

      if (!*(v96 + 2) || (v73 = specialized __RawDictionaryStorage.find<A>(_:)(*&v98[8 * v44]), (v74 & 1) == 0))
      {
        if (v71)
        {
LABEL_75:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
          }

          v43 = v95;
          goto LABEL_78;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
        }

        v43 = v95;
        goto LABEL_84;
      }

      if (v71)
      {
        goto LABEL_75;
      }

      if (v72 < v44)
      {
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v43 = v95;
        if (v75)
        {
          goto LABEL_78;
        }

LABEL_73:
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
        goto LABEL_78;
      }

      v80 = *(*(v96 + 7) + 8 * v73);
      v81 = v80 < v46;
      v82 = v80 - v46;
      v43 = v95;
      if (v81 || v82 >= v72 - v44)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
        }

LABEL_84:
        v79 = *(v47 + 2);
        v78 = *(v47 + 3);
        if (v79 >= v78 >> 1)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v47);
        }

        *(v47 + 2) = v79 + 1;
        *&v47[8 * v79 + 32] = v44;
LABEL_47:
        v45 = ++v44;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_78:
        v77 = *(v48 + 2);
        v76 = *(v48 + 3);
        if (v77 >= v76 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v48);
        }

        *(v48 + 2) = v77 + 1;
        *&v48[8 * v77 + 32] = v46++;
      }
    }
  }

  v63 = *(v47 + 2) + *(v48 + 2);
LABEL_104:
  if (v63 > v97)
  {

    v48 = 0;
  }

LABEL_102:

  return v48;
}

void lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID()
{
  if (!lazy protocol witness table cache variable for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID);
  }
}

{
  if (!lazy protocol witness table cache variable for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID);
  }
}

double _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOi0_(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return result;
}

void outlined consume of _Glass.Variant.ID?(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    outlined consume of _Glass.Variant.ID(a1, a2);
  }
}

char *specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(void *a1, Swift::Int a2, uint64_t a3, Swift::Int a4, char *a5)
{
  v109 = a1;
  v110 = a3;
  type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for CollectionDifference<ScrollEdgeEffectTag.ID>, &type metadata for ScrollEdgeEffectTag.ID, MEMORY[0x1E69E6EF0]);
  v106 = v8;
  v104 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v104 - v9;
  v10 = MEMORY[0x1E69E7CC8];
  v117 = MEMORY[0x1E69E7CC8];
  type metadata accessor for [GlassContainer.Item.ID : Int](0, &lazy cache variable for type metadata for [ScrollEdgeEffectTag.ID : Int], lazy protocol witness table accessor for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID, &type metadata for ScrollEdgeEffectTag.ID);
  v12 = v11;
  Dictionary.reserveCapacity(_:)(a4);
  v111 = a4;
  if (a4)
  {
    if (v111 < 0)
    {
      goto LABEL_129;
    }

    v107 = v12;
    v108 = a5;
    v13 = 0;
    v14 = v117;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_121:
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
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v16 = *(v110 + 8 * v13);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v14;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      v20 = v14[2];
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_121;
      }

      v23 = v18;
      if (v14[3] >= v22)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v18 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if ((v23 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_131;
        }

        v19 = v24;
        if ((v23 & 1) == 0)
        {
LABEL_14:
          v14 = v114;
          v114[(v19 >> 6) + 8] |= 1 << v19;
          *(v14[6] + 8 * v19) = v16;
          *(v14[7] + 8 * v19) = v13;
          v26 = v14[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_126;
          }

          v14[2] = v28;
          goto LABEL_5;
        }
      }

      v14 = v114;
      *(v114[7] + 8 * v19) = v13;
LABEL_5:
      ++v13;
      if (v15 == v111)
      {
        v117 = v14;
        a5 = v108;
        v10 = MEMORY[0x1E69E7CC8];
        break;
      }
    }
  }

  v116 = v10;
  Dictionary.reserveCapacity(_:)(a2);
  if (a2)
  {
    if (a2 < 0)
    {
      goto LABEL_130;
    }

    v29 = 0;
    v30 = v116;
    while (1)
    {
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_122;
      }

      v33 = v109[v29];

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v30;
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
      v37 = v30[2];
      v38 = (v36 & 1) == 0;
      v27 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v27)
      {
        goto LABEL_123;
      }

      v40 = v36;
      if (v30[3] < v39)
      {
        break;
      }

      if (v34)
      {
        goto LABEL_30;
      }

      v44 = v35;
      specialized _NativeDictionary.copy()();
      v35 = v44;
      if ((v40 & 1) == 0)
      {
LABEL_31:
        v30 = v114;
        v114[(v35 >> 6) + 8] |= 1 << v35;
        *(v30[6] + 8 * v35) = v33;
        *(v30[7] + 8 * v35) = v29;
        v42 = v30[2];
        v27 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v27)
        {
          goto LABEL_127;
        }

        v30[2] = v43;
        goto LABEL_23;
      }

LABEL_22:
      v31 = v35;

      v30 = v114;
      *(v114[7] + 8 * v31) = v29;
LABEL_23:
      ++v29;
      if (v32 == a2)
      {
        v116 = v30;
        goto LABEL_36;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, v34);
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
    if ((v40 & 1) != (v41 & 1))
    {
      goto LABEL_131;
    }

LABEL_30:
    if ((v40 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

LABEL_36:
  v107 = v117;
  if (v117[2] != v111 || (v45 = v116, v116[2] != a2))
  {
    v114 = v109;
    v115 = a2;
    v112 = v110;
    v113 = v111;
    type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for UnsafeBufferPointer<ScrollEdgeEffectTag.ID>, &type metadata for ScrollEdgeEffectTag.ID, MEMORY[0x1E69E6048]);
    lazy protocol witness table accessor for type UnsafeBufferPointer<ScrollEdgeEffectTag.ID> and conformance UnsafeBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<ScrollEdgeEffectTag.ID> and conformance UnsafeBufferPointer<A>, &lazy cache variable for type metadata for UnsafeBufferPointer<ScrollEdgeEffectTag.ID>, &type metadata for ScrollEdgeEffectTag.ID);
    lazy protocol witness table accessor for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID();
    BidirectionalCollection<>.difference<A>(from:)();
    v51 = CollectionDifference.removals.getter();
    v52 = *(v51 + 16);
    v53 = MEMORY[0x1E69E7CC0];
    if (v52)
    {
      v114 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
      v54 = 0;
      v55 = v114;
      v56 = v51 + 57;
      do
      {
        if (v54 >= *(v51 + 16))
        {
          goto LABEL_124;
        }

        v57 = *(v56 - 25);
        v58 = v55;
        outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change(v57, *(v56 - 17));

        v55 = v58;
        v114 = v58;
        v60 = v58[2];
        v59 = v58[3];
        if (v60 >= v59 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
          v55 = v114;
        }

        ++v54;
        v55[2] = v60 + 1;
        v55[v60 + 4] = v57;
        v56 += 32;
      }

      while (v52 != v54);
      v108 = v55;

      v94 = v105;
      v93 = v106;
      v53 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v108 = MEMORY[0x1E69E7CC0];
      v94 = v105;
      v93 = v106;
    }

    v95 = CollectionDifference.insertions.getter();
    v96 = *(v95 + 16);
    if (v96)
    {
      v114 = v53;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96, 0);
      v97 = 0;
      v98 = v114;
      v99 = v95 + 57;
      do
      {
        if (v97 >= *(v95 + 16))
        {
          goto LABEL_125;
        }

        v100 = *(v99 - 25);
        outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change(v100, *(v99 - 17));

        v114 = v98;
        v102 = v98[2];
        v101 = v98[3];
        if (v102 >= v101 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
          v98 = v114;
        }

        ++v97;
        v98[2] = v102 + 1;
        v98[v102 + 4] = v100;
        v99 += 32;
      }

      while (v96 != v97);

      (*(v104 + 8))(v105, v106);
    }

    else
    {

      (*(v104 + 8))(v94, v93);
    }

LABEL_119:

    return v108;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  v106 = v116;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v48 >= v111)
        {
          v46 = v47;
          if (v47 >= a2)
          {
            v64 = *(v49 + 2) + *(v50 + 2);
LABEL_116:
            if (v64 <= a5)
            {
              v108 = v50;
            }

            else
            {

              v108 = 0;
            }

            goto LABEL_119;
          }
        }

        v62 = *(v50 + 2);
        v63 = *(v49 + 2);
        v64 = v63 + v62;
        if (v63 + v62 > a5)
        {
          goto LABEL_116;
        }

        if (v46 != a2)
        {
          break;
        }

        v65 = v50;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v50 = v65;
        }

        else
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62 + 1, 1, v65);
        }

        v67 = *(v50 + 2);
        v66 = *(v50 + 3);
        if (v67 >= v66 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v50);
        }

        *(v50 + 2) = v67 + 1;
        *&v50[8 * v67 + 32] = v48++;
        v46 = a2;
      }

      if (v48 != v111)
      {
        break;
      }

      v68 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63 + 1, 1, v49);
      }

      v70 = *(v49 + 2);
      v69 = *(v49 + 3);
      if (v70 >= v69 >> 1)
      {
        v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v49);
        v50 = v68;
        v49 = v91;
      }

      else
      {
        v50 = v68;
      }

      *(v49 + 2) = v70 + 1;
      *&v49[8 * v70 + 32] = v46++;
      v47 = v46;
      v48 = v111;
    }

    v71 = *(v110 + 8 * v48);
    v72 = v109[v46];
    v73 = *(v71 + 16);
    if (v73 == *(v72 + 16))
    {
      break;
    }

LABEL_69:
    v108 = v50;
    if (v45[2])
    {
      v74 = v47;
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v71);
      if (v76)
      {
        v77 = 0;
        v78 = *(v45[7] + 8 * v75);
        goto LABEL_74;
      }
    }

    else
    {
      v74 = v47;
    }

    v78 = 0;
    v77 = 1;
LABEL_74:
    if (v107[2] && (v79 = specialized __RawDictionaryStorage.find<A>(_:)(v109[v46]), (v80 & 1) != 0))
    {
      if (!v77)
      {
        if (v78 < v46)
        {
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v45 = v106;
          v47 = v74;
          if (v81)
          {
LABEL_79:
            v50 = v108;
            goto LABEL_84;
          }

LABEL_100:
          v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v108 + 2) + 1, 1, v108);
          goto LABEL_79;
        }

        v88 = *(v107[7] + 8 * v79);
        v89 = v88 < v48;
        v90 = v88 - v48;
        v45 = v106;
        if (!v89 && v90 < v78 - v46)
        {
          v47 = v74;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_79;
          }

          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
        }

        goto LABEL_90;
      }

LABEL_81:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v50 = v108;
      }

      else
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v108 + 2) + 1, 1, v108);
      }

      v45 = v106;
      v47 = v74;
LABEL_84:
      v83 = *(v50 + 2);
      v82 = *(v50 + 3);
      if (v83 >= v82 >> 1)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v50);
      }

      *(v50 + 2) = v83 + 1;
      *&v50[8 * v83 + 32] = v48++;
    }

    else
    {
      if (v77)
      {
        goto LABEL_81;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
      }

      v45 = v106;
LABEL_90:
      v85 = *(v49 + 2);
      v84 = *(v49 + 3);
      v50 = v108;
      if (v85 >= v84 >> 1)
      {
        v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v49);
        v50 = v108;
        v49 = v92;
      }

      *(v49 + 2) = v85 + 1;
      *&v49[8 * v85 + 32] = v46;
LABEL_52:
      v47 = ++v46;
    }
  }

  if (v73)
  {
    v61 = v71 == v72;
  }

  else
  {
    v61 = 1;
  }

  if (v61)
  {
LABEL_51:
    ++v48;
    goto LABEL_52;
  }

  v86 = (v71 + 32);
  v87 = (v72 + 32);
  while (v73)
  {
    if (*v86 != *v87)
    {
      goto LABEL_69;
    }

    ++v86;
    ++v87;
    if (!--v73)
    {
      goto LABEL_51;
    }
  }

LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID()
{
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollEdgeEffectTag.ID, &type metadata for ScrollEdgeEffectTag.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollEdgeEffectTag.ID, &type metadata for ScrollEdgeEffectTag.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID);
  }
}

void type metadata accessor for Resolver?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for ResolvedIDs.Key(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of ResolvedIDs.Key(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for ResolvedIDs.Key(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of ResolvedIDs.Key(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  outlined consume of ResolvedIDs.Key(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for ResolvedIDs.Key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  outlined consume of ResolvedIDs.Key(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedIDs.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 33))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 32) >> 1) & 0x3E | (*(a1 + 32) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ResolvedIDs.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

double outlined copy of ResolverMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, unsigned int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = STACK[0x408] >> 61;
  if (v67 == 3)
  {
    v80 = STACK[0x3F0];
    v79 = STACK[0x3E8];
    v78 = STACK[0x3E0];
    v77 = STACK[0x3D8];
    v76 = STACK[0x3C0];
    v75 = STACK[0x3B8];
    v74 = STACK[0x3B0];
    v73 = STACK[0x3A8];
    outlined copy of GlassContainer.Entry.ModelID(a3, a4, a5, a6, a7);
    outlined copy of _Glass.Variant.Role(a8, a9);

    outlined copy of _Glass.Variant.Role(a21, a22);

    outlined copy of _Glass?(a31, a32, a33, a34);
    outlined copy of _Glass?(a37, a38, a39, a40);
    outlined copy of GlassContainer.Entry.ModelID(a46, a47, a48, a49, a50);
    outlined copy of _Glass.Variant.Role(a51, a52);

    outlined copy of _Glass.Variant.Role(a64, a65);

    outlined copy of _Glass?(v73, v74, v75, v76);
    a36 = v77;
    v69 = v78;
    v70 = v79;
    v71 = v80;
  }

  else
  {
    if (v67 != 2 && v67 != 1)
    {
      return result;
    }

    outlined copy of GlassContainer.Entry.ModelID(a2, a3, a4, a5, a6);
    outlined copy of _Glass.Variant.Role(a7, a8);

    outlined copy of _Glass.Variant.Role(a20, a21);

    outlined copy of _Glass?(a30, a31, a32, a33);
    v69 = a37;
    v70 = a38;
    v71 = a39;
  }

  return outlined copy of _Glass?(a36, v69, v70, v71);
}

void destroy for ResolverMessage(uint64_t a1)
{
  v16 = *(a1 + 464);
  v17 = *(a1 + 480);
  v14 = *(a1 + 432);
  v15 = *(a1 + 448);
  v12 = *(a1 + 400);
  v13 = *(a1 + 416);
  v10 = *(a1 + 368);
  v11 = *(a1 + 384);
  v8 = *(a1 + 336);
  v9 = *(a1 + 352);
  v6 = *(a1 + 304);
  v7 = *(a1 + 320);
  v4 = *(a1 + 272);
  v5 = *(a1 + 288);
  v2 = *(a1 + 240);
  v3 = *(a1 + 256);
  v1 = *(a1 + 208);
  outlined consume of ResolverMessage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), v1, *(&v1 + 1), *(a1 + 224), *(a1 + 232), v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, SBYTE8(v11), v12, DWORD2(v12), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), *(a1 + 496));
}

double outlined consume of ResolverMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, unsigned int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = STACK[0x408] >> 61;
  if (v67 == 3)
  {
    v80 = STACK[0x3F0];
    v79 = STACK[0x3E8];
    v78 = STACK[0x3E0];
    v77 = STACK[0x3D8];
    v76 = STACK[0x3C0];
    v75 = STACK[0x3B8];
    v74 = STACK[0x3B0];
    v73 = STACK[0x3A8];
    outlined consume of GlassContainer.Entry.ModelID(a3, a4, a5, a6, a7);
    outlined consume of _Glass.Variant.Role(a8, a9);

    outlined consume of _Glass.Variant.Role(a21, a22);

    outlined consume of _Glass?(a31, a32, a33, a34);
    outlined consume of _Glass?(a37, a38, a39, a40);
    outlined consume of GlassContainer.Entry.ModelID(a46, a47, a48, a49, a50);
    outlined consume of _Glass.Variant.Role(a51, a52);

    outlined consume of _Glass.Variant.Role(a64, a65);

    outlined consume of _Glass?(v73, v74, v75, v76);
    a36 = v77;
    v69 = v78;
    v70 = v79;
    v71 = v80;
  }

  else
  {
    if (v67 != 2 && v67 != 1)
    {
      return result;
    }

    outlined consume of GlassContainer.Entry.ModelID(a2, a3, a4, a5, a6);
    outlined consume of _Glass.Variant.Role(a7, a8);

    outlined consume of _Glass.Variant.Role(a20, a21);

    outlined consume of _Glass?(a30, a31, a32, a33);
    v69 = a37;
    v70 = a38;
    v71 = a39;
  }

  return outlined consume of _Glass?(a36, v69, v70, v71);
}

uint64_t initializeWithCopy for ResolverMessage(uint64_t a1, uint64_t a2)
{
  v90 = *(a2 + 80);
  v91 = *(a2 + 72);
  v88 = *(a2 + 96);
  v89 = *(a2 + 88);
  v86 = *(a2 + 112);
  v87 = *(a2 + 104);
  v84 = *(a2 + 128);
  v85 = *(a2 + 120);
  v82 = *(a2 + 144);
  v83 = *(a2 + 136);
  v80 = *(a2 + 160);
  v81 = *(a2 + 152);
  v78 = *(a2 + 176);
  v79 = *(a2 + 168);
  v76 = *(a2 + 192);
  v77 = *(a2 + 184);
  v74 = *(a2 + 208);
  v75 = *(a2 + 200);
  v72 = *(a2 + 224);
  v73 = *(a2 + 216);
  v71 = *(a2 + 232);
  v70 = *(a2 + 240);
  v69 = *(a2 + 248);
  v68 = *(a2 + 256);
  v67 = *(a2 + 264);
  v66 = *(a2 + 272);
  v65 = *(a2 + 280);
  v64 = *(a2 + 288);
  v63 = *(a2 + 296);
  v62 = *(a2 + 304);
  v61 = *(a2 + 312);
  v60 = *(a2 + 320);
  v59 = *(a2 + 328);
  v58 = *(a2 + 336);
  v57 = *(a2 + 344);
  v56 = *(a2 + 352);
  v55 = *(a2 + 360);
  v54 = *(a2 + 368);
  v53 = *(a2 + 376);
  v52 = *(a2 + 384);
  v51 = *(a2 + 392);
  v50 = *(a2 + 400);
  v49 = *(a2 + 408);
  v48 = *(a2 + 416);
  v47 = *(a2 + 424);
  v46 = *(a2 + 432);
  v45 = *(a2 + 440);
  v44 = *(a2 + 448);
  v43 = *(a2 + 456);
  v42 = *(a2 + 464);
  v41 = *(a2 + 472);
  v13 = *(a2 + 480);
  v14 = *(a2 + 488);
  v15 = *(a2 + 496);
  v16 = *(a2 + 504);
  v17 = *(a2 + 512);
  v18 = *(a2 + 520);
  v19 = *(a2 + 528);
  v20 = *(a2 + 536);
  v21 = *(a2 + 544);
  v22 = *(a2 + 552);
  v23 = *(a2 + 560);
  v24 = *(a2 + 568);
  v25 = *(a2 + 576);
  v26 = *(a2 + 584);
  v27 = *(a2 + 592);
  v28 = *(a2 + 600);
  v29 = *(a2 + 608);
  v30 = *(a2 + 616);
  v31 = *(a2 + 624);
  v32 = *(a2 + 632);
  v33 = *(a2 + 640);
  v34 = *(a2 + 648);
  v35 = *(a2 + 656);
  v36 = *(a2 + 664);
  v37 = *(a2 + 672);
  v38 = *(a2 + 680);
  v39 = *(a2 + 688);
  v40 = *(a2 + 696);
  v3 = *(a2 + 64);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  outlined copy of ResolverMessage(*a2, v5, v6, v7, v8, v9, v10, v11, v3, v91, v90, v89, v88, v87, v86, v85, v84, v83, v82, v81, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v13, v14, v15);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v3;
  *(a1 + 72) = v91;
  *(a1 + 80) = v90;
  *(a1 + 88) = v89;
  *(a1 + 96) = v88;
  *(a1 + 104) = v87;
  *(a1 + 112) = v86;
  *(a1 + 120) = v85;
  *(a1 + 128) = v84;
  *(a1 + 136) = v83;
  *(a1 + 144) = v82;
  *(a1 + 152) = v81;
  *(a1 + 160) = v80;
  *(a1 + 168) = v79;
  *(a1 + 176) = v78;
  *(a1 + 184) = v77;
  *(a1 + 192) = v76;
  *(a1 + 200) = v75;
  *(a1 + 208) = v74;
  *(a1 + 216) = v73;
  *(a1 + 224) = v72;
  *(a1 + 232) = v71;
  *(a1 + 240) = v70;
  *(a1 + 248) = v69;
  *(a1 + 256) = v68;
  *(a1 + 264) = v67;
  *(a1 + 272) = v66;
  *(a1 + 280) = v65;
  *(a1 + 288) = v64;
  *(a1 + 296) = v63;
  *(a1 + 304) = v62;
  *(a1 + 312) = v61;
  *(a1 + 320) = v60;
  *(a1 + 328) = v59;
  *(a1 + 336) = v58;
  *(a1 + 344) = v57;
  *(a1 + 352) = v56;
  *(a1 + 360) = v55;
  *(a1 + 368) = v54;
  *(a1 + 376) = v53;
  *(a1 + 384) = v52;
  *(a1 + 392) = v51;
  *(a1 + 400) = v50;
  *(a1 + 408) = v49;
  *(a1 + 416) = v48;
  *(a1 + 424) = v47;
  *(a1 + 432) = v46;
  *(a1 + 440) = v45;
  *(a1 + 448) = v44;
  *(a1 + 456) = v43;
  *(a1 + 464) = v42;
  *(a1 + 472) = v41;
  *(a1 + 480) = v13;
  *(a1 + 488) = v14;
  *(a1 + 496) = v15;
  *(a1 + 504) = v16;
  *(a1 + 512) = v17;
  *(a1 + 520) = v18;
  *(a1 + 528) = v19;
  *(a1 + 536) = v20;
  *(a1 + 544) = v21;
  *(a1 + 552) = v22;
  *(a1 + 560) = v23;
  *(a1 + 568) = v24;
  *(a1 + 576) = v25;
  *(a1 + 584) = v26;
  *(a1 + 592) = v27;
  *(a1 + 600) = v28;
  *(a1 + 608) = v29;
  *(a1 + 616) = v30;
  *(a1 + 624) = v31;
  *(a1 + 632) = v32;
  *(a1 + 640) = v33;
  *(a1 + 648) = v34;
  *(a1 + 656) = v35;
  *(a1 + 664) = v36;
  *(a1 + 672) = v37;
  *(a1 + 680) = v38;
  *(a1 + 688) = v39;
  *(a1 + 696) = v40;
  return a1;
}

uint64_t assignWithCopy for ResolverMessage(uint64_t a1, uint64_t a2)
{
  v60 = *(a2 + 72);
  v61 = *(a2 + 80);
  v63 = *(a2 + 88);
  v65 = *(a2 + 96);
  v66 = *(a2 + 104);
  v67 = *(a2 + 112);
  v69 = *(a2 + 120);
  v71 = *(a2 + 128);
  v72 = *(a2 + 136);
  v73 = *(a2 + 144);
  v74 = *(a2 + 152);
  v76 = *(a2 + 160);
  v77 = *(a2 + 168);
  v78 = *(a2 + 176);
  v79 = *(a2 + 184);
  v80 = *(a2 + 192);
  v81 = *(a2 + 200);
  v82 = *(a2 + 208);
  v83 = *(a2 + 216);
  v84 = *(a2 + 224);
  v85 = *(a2 + 232);
  v86 = *(a2 + 240);
  v87 = *(a2 + 248);
  v88 = *(a2 + 256);
  v89 = *(a2 + 264);
  v90 = *(a2 + 272);
  v91 = *(a2 + 280);
  v92 = *(a2 + 288);
  v93 = *(a2 + 296);
  v94 = *(a2 + 304);
  v95 = *(a2 + 312);
  v96 = *(a2 + 320);
  v97 = *(a2 + 328);
  v98 = *(a2 + 336);
  v99 = *(a2 + 344);
  v100 = *(a2 + 352);
  v101 = *(a2 + 360);
  v102 = *(a2 + 368);
  v103 = *(a2 + 376);
  v104 = *(a2 + 384);
  v105 = *(a2 + 392);
  v106 = *(a2 + 400);
  v107 = *(a2 + 408);
  v108 = *(a2 + 416);
  v109 = *(a2 + 424);
  v110 = *(a2 + 432);
  v111 = *(a2 + 440);
  v112 = *(a2 + 448);
  v113 = *(a2 + 456);
  v114 = *(a2 + 464);
  v115 = *(a2 + 472);
  v44 = *(a2 + 480);
  v45 = *(a2 + 488);
  v46 = *(a2 + 496);
  v116 = *(a2 + 504);
  v47 = *(a2 + 512);
  v48 = *(a2 + 528);
  v49 = *(a2 + 544);
  v50 = *(a2 + 560);
  v51 = *(a2 + 576);
  v52 = *(a2 + 592);
  v53 = *(a2 + 608);
  v54 = *(a2 + 624);
  v55 = *(a2 + 640);
  v56 = *(a2 + 656);
  v57 = *(a2 + 672);
  v58 = *(a2 + 688);
  v59 = *(a2 + 696);
  v3 = *(a2 + 64);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  outlined copy of ResolverMessage(*a2, v5, v6, v7, v8, v9, v10, v11, v3, v60, v61, v63, v65, v66, v67, v69, v71, v72, v73, v74, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v44, v45, v46);
  v12 = *a1;
  v13 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  v42 = *(a1 + 80);
  v43 = *(a1 + 64);
  *(a1 + 64) = v3;
  *(a1 + 72) = v60;
  *(a1 + 80) = v61;
  *(a1 + 88) = v63;
  v62 = *(a1 + 112);
  v64 = *(a1 + 96);
  *(a1 + 96) = v65;
  *(a1 + 104) = v66;
  *(a1 + 112) = v67;
  *(a1 + 120) = v69;
  v68 = *(a1 + 144);
  v70 = *(a1 + 128);
  *(a1 + 128) = v71;
  *(a1 + 136) = v72;
  *(a1 + 144) = v73;
  *(a1 + 152) = v74;
  v20 = *(a1 + 176);
  v75 = *(a1 + 160);
  *(a1 + 160) = v76;
  *(a1 + 168) = v77;
  *(a1 + 176) = v78;
  *(a1 + 184) = v79;
  v21 = *(a1 + 192);
  v22 = *(a1 + 208);
  *(a1 + 192) = v80;
  *(a1 + 200) = v81;
  *(a1 + 208) = v82;
  *(a1 + 216) = v83;
  v23 = *(a1 + 224);
  v24 = *(a1 + 240);
  *(a1 + 224) = v84;
  *(a1 + 232) = v85;
  *(a1 + 240) = v86;
  *(a1 + 248) = v87;
  v25 = *(a1 + 256);
  v26 = *(a1 + 272);
  *(a1 + 256) = v88;
  *(a1 + 264) = v89;
  *(a1 + 272) = v90;
  *(a1 + 280) = v91;
  v27 = *(a1 + 288);
  v28 = *(a1 + 304);
  *(a1 + 288) = v92;
  *(a1 + 296) = v93;
  *(a1 + 304) = v94;
  *(a1 + 312) = v95;
  v29 = *(a1 + 320);
  v30 = *(a1 + 336);
  *(a1 + 320) = v96;
  *(a1 + 328) = v97;
  *(a1 + 336) = v98;
  *(a1 + 344) = v99;
  v31 = *(a1 + 352);
  v32 = *(a1 + 368);
  *(a1 + 352) = v100;
  *(a1 + 360) = v101;
  *(a1 + 368) = v102;
  *(a1 + 376) = v103;
  v33 = *(a1 + 384);
  v34 = *(a1 + 400);
  *(a1 + 384) = v104;
  *(a1 + 392) = v105;
  *(a1 + 400) = v106;
  *(a1 + 408) = v107;
  v35 = *(a1 + 416);
  v36 = *(a1 + 432);
  *(a1 + 416) = v108;
  *(a1 + 424) = v109;
  *(a1 + 432) = v110;
  *(a1 + 440) = v111;
  v37 = *(a1 + 448);
  v38 = *(a1 + 464);
  *(a1 + 448) = v112;
  *(a1 + 456) = v113;
  *(a1 + 464) = v114;
  *(a1 + 472) = v115;
  v39 = *(a1 + 480);
  v40 = *(a1 + 496);
  *(a1 + 480) = v44;
  *(a1 + 488) = v45;
  *(a1 + 496) = v46;
  *(a1 + 504) = v116;
  *(a1 + 512) = v47;
  *(a1 + 528) = v48;
  *(a1 + 544) = v49;
  *(a1 + 560) = v50;
  *(a1 + 576) = v51;
  *(a1 + 592) = v52;
  *(a1 + 608) = v53;
  *(a1 + 624) = v54;
  *(a1 + 640) = v55;
  *(a1 + 656) = v56;
  *(a1 + 672) = v57;
  *(a1 + 688) = v58;
  *(a1 + 696) = v59;
  outlined consume of ResolverMessage(v12, v13, v14, v15, v16, v17, v18, v19, v43, *(&v43 + 1), v42, *(&v42 + 1), v64, *(&v64 + 1), v62, *(&v62 + 1), v70, *(&v70 + 1), v68, *(&v68 + 1), v75, DWORD2(v75), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, SBYTE8(v33), v34, DWORD2(v34), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40);
  return a1;
}

uint64_t assignWithTake for ResolverMessage(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v61 = *(a1 + 80);
  v62 = *(a1 + 64);
  v59 = *(a1 + 112);
  v60 = *(a1 + 96);
  v57 = *(a1 + 144);
  v58 = *(a1 + 128);
  v55 = *(a1 + 176);
  v56 = *(a1 + 160);
  v12 = *(a1 + 192);
  v13 = *(a1 + 208);
  v14 = *(a1 + 224);
  v15 = *(a1 + 240);
  v16 = *(a1 + 256);
  v17 = *(a1 + 272);
  v18 = *(a1 + 288);
  v19 = *(a1 + 304);
  v20 = *(a1 + 320);
  v21 = *(a1 + 336);
  v22 = *(a1 + 352);
  v23 = *(a1 + 368);
  v24 = *(a1 + 384);
  v25 = *(a1 + 400);
  v26 = *(a1 + 416);
  v27 = *(a1 + 432);
  v28 = *(a1 + 448);
  v29 = *(a1 + 464);
  v30 = *(a1 + 480);
  v31 = *(a1 + 496);
  v32 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v32;
  v33 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v33;
  v34 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v34;
  v35 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v35;
  v36 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v36;
  v37 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v37;
  v38 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v38;
  v39 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v39;
  v40 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v40;
  v41 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v41;
  v42 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v42;
  v43 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v43;
  v44 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v44;
  v45 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v45;
  v46 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v46;
  v47 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v47;
  v48 = *(a2 + 528);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = v48;
  v49 = *(a2 + 560);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = v49;
  v50 = *(a2 + 592);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = v50;
  v51 = *(a2 + 624);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = v51;
  v52 = *(a2 + 656);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 656) = v52;
  *(a1 + 672) = *(a2 + 672);
  v53 = *(a2 + 688);
  LODWORD(a2) = *(a2 + 696);
  *(a1 + 688) = v53;
  *(a1 + 696) = a2;
  outlined consume of ResolverMessage(v4, v5, v6, v7, v8, v9, v10, v11, v62, *(&v62 + 1), v61, *(&v61 + 1), v60, *(&v60 + 1), v59, *(&v59 + 1), v58, *(&v58 + 1), v57, *(&v57 + 1), v56, DWORD2(v56), v55, *(&v55 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, SBYTE8(v24), v25, DWORD2(v25), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolverMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 700))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 168) << 14) & 0xFFC00000 | (*(a1 + 64) >> 8) & 0x3FFFFF;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void storeEnumTagSinglePayload for ResolverMessage(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 696) = 0;
    *(a1 + 680) = 0u;
    *(a1 + 664) = 0u;
    *(a1 + 648) = 0u;
    *(a1 + 632) = 0u;
    *(a1 + 616) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 700) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      v3 = -a2;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = (v3 & 0x3FFFFF) << 8;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = (v3 >> 14) & 0x3FF00;
      bzero((a1 + 176), 0x20CuLL);
      return;
    }

    *(a1 + 700) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

int8x16_t destructiveInjectEnumTag for ResolverMessage(uint64_t a1, uint64_t a2)
{
  if (a2 < 7)
  {
    v4 = *(a1 + 352);
    v5 = *(a1 + 624);
    v6 = *(a1 + 168) & 0xFFFFFFFFC00000FFLL;
    v7 = *(a1 + 328) & 0xFFFFFFFF000000FFLL;
    v8 = *(a1 + 392) & 3;
    v9 = *(a1 + 440) & 3;
    v10 = *(a1 + 480) & 0xFFFFFFFFFFFFFF8;
    v11 = *(a1 + 496) & 0x101;
    v12 = *(a1 + 544) & 3;
    v13 = *(a1 + 560) & 1;
    v14 = *(a1 + 672) & 0xFFFFFFFF000000FFLL;
    v15 = *(a1 + 680) & 1 | (a2 << 61);
    *(a1 + 64) &= 0xFFFFFFFFC00000FFLL;
    *(a1 + 168) = v6;
    *(a1 + 328) = v7;
    *(a1 + 352) = v4;
    *(a1 + 392) = v8;
    *(a1 + 408) = vandq_s8(*(a1 + 408), xmmword_18DDAA060);
    *(a1 + 440) = v9;
    *(a1 + 480) = v10;
    *(a1 + 496) = v11;
    result = vandq_s8(*(a1 + 512), xmmword_18DDAA060);
    *(a1 + 512) = result;
    *(a1 + 544) = v12;
    *(a1 + 560) = v13;
    *(a1 + 624) = v5;
    *(a1 + 672) = v14;
    *(a1 + 680) = v15;
  }

  else
  {
    *a1 = (a2 - 7);
    bzero((a1 + 8), 0x2A0uLL);
    *(a1 + 680) = 0xE000000000000000;
    *(a1 + 688) = 0;
    *(a1 + 696) = 0;
  }

  return result;
}

double destroy for Resolver.Context(void *a1)
{

  return result;
}

uint64_t initializeWithCopy for Resolver.Context(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 84) = *(a2 + 84);
  v7 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v7;
  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t assignWithCopy for Resolver.Context(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 84);
  v5 = *(a2 + 100);
  v6 = *(a2 + 116);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 116) = v6;
  *(a1 + 100) = v5;
  *(a1 + 84) = v4;
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  return a1;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for Resolver.Context(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 129) = *(a2 + 129);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t getEnumTagSinglePayload for Resolver.Context(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t storeEnumTagSinglePayload for Resolver.Context(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for Resolver(void *a1)
{

  return result;
}

uint64_t initializeWithCopy for Resolver(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 12);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 10);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = *(a2 + 7);
  v4 = a2[10];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v4;
  v5 = a2[12];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v5;
  v6 = a2[14];
  *(a1 + 104) = a2[13];
  *(a1 + 112) = v6;
  v7 = a2[16];
  *(a1 + 120) = a2[15];
  *(a1 + 128) = v7;
  v8 = a2[18];
  *(a1 + 136) = a2[17];
  *(a1 + 144) = v8;
  v14 = a2[20];
  *(a1 + 152) = a2[19];
  *(a1 + 160) = v14;
  *(a1 + 168) = a2[21];
  *(a1 + 176) = *(a2 + 11);
  *(a1 + 192) = *(a2 + 48);
  v9 = *(a2 + 196);
  v10 = *(a2 + 212);
  v11 = *(a2 + 228);
  *(a1 + 241) = *(a2 + 241);
  *(a1 + 228) = v11;
  *(a1 + 212) = v10;
  *(a1 + 196) = v9;
  v12 = a2[33];
  *(a1 + 256) = a2[32];
  *(a1 + 264) = v12;
  *(a1 + 272) = a2[34];

  return a1;
}

uint64_t *assignWithCopy for Resolver(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  a1[4] = a2[4];

  *(a1 + 10) = *(a2 + 10);
  a1[6] = a2[6];

  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];

  a1[10] = a2[10];

  a1[11] = a2[11];

  a1[12] = a2[12];

  a1[13] = a2[13];

  a1[14] = a2[14];
  a1[15] = a2[15];

  a1[16] = a2[16];

  a1[17] = a2[17];

  a1[18] = a2[18];
  a1[19] = a2[19];

  a1[20] = a2[20];

  a1[21] = a2[21];

  a1[22] = a2[22];
  a1[23] = a2[23];
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 196);
  v5 = *(a2 + 212);
  v6 = *(a2 + 228);
  *(a1 + 241) = *(a2 + 241);
  *(a1 + 228) = v6;
  *(a1 + 212) = v5;
  *(a1 + 196) = v4;
  a1[32] = a2[32];

  a1[33] = a2[33];

  a1[34] = a2[34];

  return a1;
}

uint64_t assignWithTake for Resolver(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 241) = *(a2 + 241);

  *(a1 + 256) = *(a2 + 256);

  *(a1 + 272) = *(a2 + 272);

  return a1;
}

uint64_t getEnumTagSinglePayload for Resolver(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t storeEnumTagSinglePayload for Resolver(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainerResolvedTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for GlassContainerResolvedTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for GlassContainerResolvedTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainerResolvedTransaction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t storeEnumTagSinglePayload for GlassContainerResolvedTransaction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for GlassContainerResolvedStorage(void *a1)
{

  if (a1[9])
  {
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainerResolvedStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  v8 = (a2 + 72);
  v7 = *(a2 + 72);

  if (v7)
  {
    v10 = *(a2 + 80);
    v9 = *(a2 + 88);
    *(a1 + 72) = v7;
    *(a1 + 80) = v10;
    *(a1 + 88) = v9;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    v11 = *(a2 + 152);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = v11;
    v12 = *(a2 + 168);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = v12;
    v13 = *(a2 + 184);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = v13;
    v14 = *(a2 + 200);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = v14;
    v15 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v15;
    v21 = *(a2 + 232);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = v21;
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    v16 = *(a2 + 268);
    v17 = *(a2 + 284);
    v18 = *(a2 + 300);
    *(a1 + 313) = *(a2 + 313);
    *(a1 + 284) = v17;
    *(a1 + 300) = v18;
    *(a1 + 268) = v16;
    v19 = *(a2 + 336);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 336) = v19;
    *(a1 + 344) = *(a2 + 344);
  }

  else
  {
    memcpy((a1 + 72), v8, 0x118uLL);
  }

  return a1;
}

uint64_t assignWithCopy for GlassContainerResolvedStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  v4 = *(a2 + 72);
  if (!*(a1 + 72))
  {
    if (v4)
    {
      *(a1 + 72) = v4;
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 97) = *(a2 + 97);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      v8 = *(a2 + 268);
      v9 = *(a2 + 284);
      v10 = *(a2 + 300);
      *(a1 + 313) = *(a2 + 313);
      *(a1 + 284) = v9;
      *(a1 + 300) = v10;
      *(a1 + 268) = v8;
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 344) = *(a2 + 344);

      return a1;
    }

LABEL_7:
    memcpy((a1 + 72), (a2 + 72), 0x118uLL);
    return a1;
  }

  if (!v4)
  {
    outlined destroy of Resolver((a1 + 72));
    goto LABEL_7;
  }

  *(a1 + 72) = v4;

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  v5 = *(a2 + 268);
  v6 = *(a2 + 284);
  v7 = *(a2 + 300);
  *(a1 + 313) = *(a2 + 313);
  *(a1 + 284) = v6;
  *(a1 + 300) = v7;
  *(a1 + 268) = v5;
  *(a1 + 328) = *(a2 + 328);

  *(a1 + 336) = *(a2 + 336);

  *(a1 + 344) = *(a2 + 344);

  return a1;
}

uint64_t assignWithTake for GlassContainerResolvedStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  v4 = (a1 + 72);
  v5 = *(a2 + 72);
  if (!*(a1 + 72))
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    outlined destroy of Resolver(v4);
    v4 = (a1 + 72);
LABEL_5:
    memcpy(v4, (a2 + 72), 0x118uLL);
    return a1;
  }

  *(a1 + 72) = v5;

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  v6 = *(a2 + 284);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 284) = v6;
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 313) = *(a2 + 313);
  *(a1 + 328) = *(a2 + 328);

  *(a1 + 336) = *(a2 + 336);

  *(a1 + 344) = *(a2 + 344);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainerResolvedStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainerResolvedStorage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for ResolvedStorageData(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 4) = *(a2 + 4);
  return a1;
}

uint64_t *assignWithTake for ResolvedStorageData(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 4) = *(a2 + 4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedStorageData(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t storeEnumTagSinglePayload for ResolvedStorageData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type ResolvedIDs.Key and conformance ResolvedIDs.Key()
{
  if (!lazy protocol witness table cache variable for type ResolvedIDs.Key and conformance ResolvedIDs.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvedIDs.Key, &type metadata for ResolvedIDs.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvedIDs.Key and conformance ResolvedIDs.Key);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvedIDs.Key and conformance ResolvedIDs.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvedIDs.Key, &type metadata for ResolvedIDs.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvedIDs.Key and conformance ResolvedIDs.Key);
  }
}

double destroy for ResolvedIDs(void *a1)
{

  return result;
}

uint64_t initializeWithCopy for ResolvedIDs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  v3 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v3;

  return a1;
}

uint64_t *assignWithCopy for ResolvedIDs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

uint64_t *assignWithTake for ResolvedIDs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

uint64_t DiffResult.movesTranslatedToArraySemantics()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexSet();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, v1, v2, v4);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  v8 = dispatch thunk of Sequence._copyToContiguousArray()();
  v9 = type metadata accessor for DiffResult(0);
  v10 = *(v1 + *(v9 + 20));
  (v7)(v6, v1 + *(v9 + 24), v2);
  v11 = dispatch thunk of Sequence._copyToContiguousArray()();
  specialized static DiffResult.translateMovesToArraySemantics(sortedRemovals:moves:sortedInsertions:)(v8, v10, v11);
  v13 = v12;

  return v13;
}

void lazy protocol witness table accessor for type IndexSet and conformance IndexSet()
{
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    v2 = type metadata accessor for IndexSet();
    swift_getWitnessTable(MEMORY[0x1E6969B78], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }
}

{
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    v2 = type metadata accessor for IndexSet();
    swift_getWitnessTable(MEMORY[0x1E6969B90], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }
}

void specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 1);
          if (v13 >= *(v12 - 3))
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 3) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = (v7 + 32);
    v18[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (v13 >= *v12)
          {
            break;
          }

          v14 = *(v12 + 3);
          v15 = *(v12 + 40);
          v16 = *(v12 + 8);
          *(v12 + 24) = *(v12 - 8);
          *(v12 + 40) = v16;
          *(v12 - 1) = v14;
          *v12 = v13;
          *(v12 + 8) = v15;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = (v7 + 32);
    v18[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      type metadata accessor for ClosedRange<CGFloat>(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = v12[24];
          if (v13 >= v12[8])
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          v12[8] = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = v5;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v15 = *v12;
      v14 = v12 + 8;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 4;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 32 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v28 + v11);
            v24 = v28 + v21;
            v25 = *v23;
            v26 = v23[1];
            v27 = *(v24 - 16);
            *v23 = *(v24 - 32);
            v23[1] = v27;
            *(v24 - 32) = v25;
            *(v24 - 16) = v26;
          }

          ++v22;
          --v20;
          v21 -= 32;
          v11 += 32;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v39 = *(v8 + 3);
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v40;
    v41 = v8 + 32;
    v42 = &v8[16 * v5 + 32];
    *v42 = v9;
    *(v42 + 1) = v7;
    v94 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v8 + 4);
          v44 = *(v8 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v8[16 * v40];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v41[16 * v5];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v8[16 * v40];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v41[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v41[16 * v5 - 16];
        v81 = *v80;
        v82 = &v41[16 * v5];
        v83 = *(v82 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = *(v8 + 2);
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        memmove(&v41[16 * v5], v82 + 16, 16 * (v84 - 1 - v5));
        *(v8 + 2) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v41[16 * v40];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v8[16 * v40];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v41[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 - 32;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 56);
    v36 = *(v34 + 40);
    v37 = *(v34 + 16);
    *(v34 + 32) = *v34;
    *(v34 + 48) = v37;
    *v34 = v32;
    *(v34 + 8) = v36;
    *(v34 + 24) = v35;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v84 = v8 + 16;
    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 8);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 72);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = (v10 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 32 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v11);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = v22[1];
            v26 = *(v23 - 16);
            *v22 = *(v23 - 32);
            v22[1] = v26;
            *(v23 - 32) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 32;
          v11 += 32;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v38 = *(v8 + 3);
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v39;
    v40 = v8 + 32;
    v41 = &v8[16 * v5 + 32];
    *v41 = v9;
    *(v41 + 1) = v7;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v8[16 * v39];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v40[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v8[16 * v39];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v40[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v40[16 * v5 - 16];
        v80 = *v79;
        v81 = &v40[16 * v5];
        v82 = *(v81 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v8 + 2);
        if (v5 >= v83)
        {
          goto LABEL_101;
        }

        v39 = v83 - 1;
        memmove(&v40[16 * v5], v81 + 16, 16 * (v83 - 1 - v5));
        *(v8 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[16 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v8[16 * v39];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v40[16 * v5];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 32 * v7 + 8);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *(v33 - 24))
    {
LABEL_29:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 16);
    v36 = *(v33 - 16);
    *v33 = *(v33 - 32);
    *(v33 + 16) = v36;
    *(v33 - 24) = v31;
    *(v33 - 16) = v35;
    *(v33 - 32) = v34;
    v33 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

{
  v6 = v4;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v89 = v9 + 16;
    v90 = *(v9 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v9[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v91), (*a3 + 32 * *v93), (*a3 + 32 * v94), v5);
        if (v6)
        {
          goto LABEL_97;
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *(*a3 + 32 * v8 + 8);
      v12 = *a3 + 32 * v10;
      v13 = *(v12 + 8);
      v14 = v10 + 2;
      v15 = (v12 + 72);
      v16 = v11;
      while (v7 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = (v11 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v8 = v14 - 1;
          if (v11 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (v11 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_119;
      }

      if (v10 < v8)
      {
        v19 = 32 * v8 - 8;
        v20 = 32 * v10 + 28;
        v21 = v8;
        v22 = v10;
        do
        {
          if (v22 != --v21)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v30 + v20);
            v24 = *(v30 + v20 - 28);
            v25 = v30 + v19;
            v26 = *(v23 - 4);
            v27 = *v23;
            v28 = *(v23 - 5);
            v29 = *(v25 - 8);
            *(v23 - 7) = *(v25 - 24);
            *(v23 - 3) = v29;
            *(v25 - 24) = v24;
            *(v25 - 16) = v28;
            *v25 = v26;
            *(v25 + 4) = v27;
          }

          ++v22;
          v19 -= 32;
          v20 += 32;
        }

        while (v22 < v21);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_118;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_120;
        }

        if (v10 + a4 < v7)
        {
          v7 = v10 + a4;
        }

        if (v7 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v5 = *(v9 + 2);
    v43 = *(v9 + 3);
    v44 = v5 + 1;
    if (v5 >= v43 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v5 + 1, 1, v9);
    }

    *(v9 + 2) = v44;
    v45 = v9 + 32;
    v46 = &v9[16 * v5 + 32];
    *v46 = v10;
    *(v46 + 1) = v8;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v9[16 * v44];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v45[16 * v5];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v5 = v44 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v44 < 2)
        {
          goto LABEL_112;
        }

        v73 = &v9[16 * v44];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v45[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v44)
        {
          __break(1u);
LABEL_99:
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = &v45[16 * v5 - 16];
        v85 = *v84;
        v86 = &v45[16 * v5];
        v87 = *(v86 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v84), (*a3 + 32 * *v86), (*a3 + 32 * v87), v98);
        if (v6)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v5 > *(v9 + 2))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *(v9 + 2);
        if (v5 >= v88)
        {
          goto LABEL_101;
        }

        v44 = v88 - 1;
        memmove(&v45[16 * v5], v86 + 16, 16 * (v88 - 1 - v5));
        *(v9 + 2) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = &v45[16 * v44];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v9[16 * v44];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v45[16 * v5];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v5 = v44 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    a4 = v96;
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v8 - 32;
  v33 = v10 - v8;
LABEL_30:
  v34 = *(v31 + 32 * v8 + 8);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 >= *(v36 + 8))
    {
LABEL_29:
      ++v8;
      v32 += 32;
      --v33;
      if (v8 != v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v37 = *(v36 + 32);
    v38 = *(v36 + 48);
    v39 = *(v36 + 56);
    v40 = *(v36 + 60);
    v41 = *(v36 + 16);
    *(v36 + 32) = *v36;
    *(v36 + 48) = v41;
    *v36 = v37;
    *(v36 + 8) = v34;
    *(v36 + 16) = v38;
    *(v36 + 24) = v39;
    *(v36 + 28) = v40;
    v36 -= 32;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v92 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    v83 = v7 + 16;
    v84 = *(v7 + 2);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = &v7[16 * v84];
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v85), (*a3 + 24 * *v87), *a3 + 24 * v88, v92);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        *(v85 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v90 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 0;
        v19 = 24 * v6;
        v20 = v8;
        do
        {
          if (v20 != v6 + v18 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = v26 + v19;
            v23 = *(v21 + 2);
            v24 = *v21;
            v25 = *(v22 - 8);
            *v21 = *(v22 - 24);
            *(v21 + 2) = v25;
            *(v22 - 24) = v24;
            *(v22 - 8) = v23;
          }

          ++v20;
          --v18;
          v19 -= 24;
          v10 += 24;
        }

        while (v20 < v6 + v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v36 = *(v7 + 2);
    v35 = *(v7 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v7);
    }

    *(v7 + 2) = v37;
    v38 = v7 + 32;
    v39 = &v7[16 * v36 + 32];
    *v39 = v8;
    *(v39 + 1) = v6;
    v92 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v7 + 4);
          v42 = *(v7 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = &v7[16 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = &v38[16 * v40];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = &v7[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = &v38[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v78 = &v38[16 * v40 - 16];
        v79 = *v78;
        v80 = &v38[16 * v40];
        v81 = *(v80 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v78), (*a3 + 24 * *v80), *a3 + 24 * v81, v92);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *(v7 + 2);
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        memmove(&v38[16 * v40], v80 + 16, 16 * (v82 - 1 - v40));
        *(v7 + 2) = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = &v38[16 * v37];
      v46 = *(v45 - 8);
      v47 = *(v45 - 7);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 6);
      v49 = *(v45 - 5);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = &v7[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = &v38[16 * v40];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v90;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 8))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 24);
    *(v32 + 16) = *(v32 - 8);
    *(v32 - 8) = v30;
    *(v32 - 24) = v33;
    v32 -= 24;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v4 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_159;
      }

      goto LABEL_128;
    }

    goto LABEL_164;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v8 = v6 + 1;
  if (v6 + 1 >= v5)
  {
    goto LABEL_20;
  }

  v9 = *(*(*a3 + 8 * v8) + 196);
  v10 = v9 - *(*(*a3 + 8 * v6) + 196);
  v11 = v6 + 2;
  do
  {
    if (v5 == v11)
    {
      v8 = v5;
      if (v10 < 0)
      {
        goto LABEL_11;
      }

LABEL_20:
      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_154;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_155;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
            goto LABEL_156;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (*(v23 + 196) - *(*v25 + 196) >= 0)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_158;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_151;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v29 = *(v7 + 2);
      v28 = *(v7 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v7);
      }

      *(v7 + 2) = v30;
      v31 = &v7[16 * v29];
      *(v31 + 4) = v6;
      *(v31 + 5) = v8;
      v103 = v8;
      v32 = *a1;
      if (!*a1)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v34 = *(v7 + 4);
            v35 = *(v7 + 5);
            v44 = __OFSUB__(v35, v34);
            v36 = v35 - v34;
            v37 = v44;
LABEL_57:
            if (v37)
            {
              goto LABEL_142;
            }

            v50 = &v7[16 * v30];
            v52 = *v50;
            v51 = *(v50 + 1);
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_145;
            }

            v56 = &v7[16 * v33 + 32];
            v58 = *v56;
            v57 = *(v56 + 1);
            v44 = __OFSUB__(v57, v58);
            v59 = v57 - v58;
            if (v44)
            {
              goto LABEL_148;
            }

            if (__OFADD__(v54, v59))
            {
              goto LABEL_149;
            }

            if (v54 + v59 >= v36)
            {
              if (v36 < v59)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v60 = &v7[16 * v30];
          v62 = *v60;
          v61 = *(v60 + 1);
          v44 = __OFSUB__(v61, v62);
          v54 = v61 - v62;
          v55 = v44;
LABEL_71:
          if (v55)
          {
            goto LABEL_144;
          }

          v63 = &v7[16 * v33];
          v65 = *(v63 + 4);
          v64 = *(v63 + 5);
          v44 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v44)
          {
            goto LABEL_147;
          }

          if (v66 < v54)
          {
            goto LABEL_3;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
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
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          v71 = *a3;
          if (!*a3)
          {
            __break(1u);
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          v109 = v7;
          v105 = v33 - 1;
          v106 = *&v7[16 * v33 + 16];
          v107 = v33;
          v72 = *&v7[16 * v33 + 32];
          v73 = *&v7[16 * v33 + 40];
          v7 = (8 * v106);
          v74 = (v71 + 8 * v106);
          v75 = 8 * v72;
          v76 = (v71 + 8 * v72);
          v108 = v73;
          v77 = 8 * v73;
          v78 = (v71 + 8 * v73);
          v79 = 8 * v72 - 8 * v106;
          v80 = 8 * v73 - 8 * v72;
          if (v79 >= v80)
          {
            if (v76 != v32 || v78 <= v32)
            {
              memmove(v32, (v71 + 8 * v72), 8 * v73 - 8 * v72);
            }

            v81 = &v32[v80];
            v86 = v107;
            if (v80 < 1 || v75 <= v7)
            {
              v84 = v32;
              v89 = v76;
              v83 = v108;
              v4 = v109;
              v85 = v106;
            }

            else
            {
              v83 = v108;
              v4 = v109;
              v85 = v106;
              do
              {
                v89 = v76 - 8;
                v78 -= 8;
                v90 = v81;
                while (1)
                {
                  v91 = v78 + 8;
                  v93 = *(v90 - 8);
                  v90 -= 8;
                  v92 = v93;
                  if (*(v93 + 196) - *(*v89 + 196) < 0)
                  {
                    break;
                  }

                  if (v91 != v81)
                  {
                    *v78 = v92;
                  }

                  v78 -= 8;
                  v81 = v90;
                  if (v90 <= v32)
                  {
                    v81 = v90;
                    v84 = v32;
                    v89 = v76;
                    goto LABEL_116;
                  }
                }

                if (v91 != v76)
                {
                  *v78 = *v89;
                }

                v84 = v32;
                if (v81 <= v32)
                {
                  break;
                }

                v76 -= 8;
              }

              while (v74 < v89);
            }
          }

          else
          {
            if (v74 != v32 || v76 <= v32)
            {
              memmove(v32, (v71 + 8 * v106), 8 * v72 - 8 * v106);
            }

            v81 = &v32[v79];
            v82 = v79 < 1;
            v83 = v108;
            v4 = v109;
            if (!v82 && v77 > v75)
            {
              v84 = v32;
              v85 = v106;
              v86 = v107;
              while (1)
              {
                v87 = *v76;
                if (*(*v76 + 196) - *(*v84 + 196) >= 0)
                {
                  break;
                }

                v88 = v74 == v76;
                v76 += 8;
                if (!v88)
                {
                  goto LABEL_89;
                }

LABEL_90:
                v74 += 8;
                if (v84 >= v81 || v76 >= v78)
                {
                  v89 = v74;
                  goto LABEL_116;
                }
              }

              v87 = *v84;
              v88 = v74 == v84;
              v84 += 8;
              if (v88)
              {
                goto LABEL_90;
              }

LABEL_89:
              *v74 = v87;
              goto LABEL_90;
            }

            v84 = v32;
            v89 = v74;
            v85 = v106;
            v86 = v107;
          }

LABEL_116:
          v94 = v81 - v84 + (v81 - v84 < 0 ? 7uLL : 0);
          if (v89 != v84 || v89 >= &v84[v94 & 0xFFFFFFFFFFFFFFF8])
          {
            memmove(v89, v84, 8 * (v94 >> 3));
          }

          if (v83 < v85)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          }

          if (v86 > *(v4 + 2))
          {
            goto LABEL_139;
          }

          v95 = &v4[16 * v105];
          *(v95 + 4) = v85;
          *(v95 + 5) = v83;
          specialized Array.remove(at:)(v86);
          v7 = v4;
          v30 = *(v4 + 2);
          if (v30 <= 1)
          {
            goto LABEL_3;
          }
        }

        v38 = &v7[16 * v30 + 32];
        v39 = *(v38 - 64);
        v40 = *(v38 - 56);
        v44 = __OFSUB__(v40, v39);
        v41 = v40 - v39;
        if (v44)
        {
          goto LABEL_140;
        }

        v43 = *(v38 - 48);
        v42 = *(v38 - 40);
        v44 = __OFSUB__(v42, v43);
        v36 = v42 - v43;
        v37 = v44;
        if (v44)
        {
          goto LABEL_141;
        }

        v45 = &v7[16 * v30];
        v47 = *v45;
        v46 = *(v45 + 1);
        v44 = __OFSUB__(v46, v47);
        v48 = v46 - v47;
        if (v44)
        {
          goto LABEL_143;
        }

        v44 = __OFADD__(v36, v48);
        v49 = v36 + v48;
        if (v44)
        {
          goto LABEL_146;
        }

        if (v49 >= v41)
        {
          v67 = &v7[16 * v33 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v44 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v44)
          {
            goto LABEL_150;
          }

          if (v36 < v70)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v6 = v103;
      v5 = a3[1];
      if (v103 >= v5)
      {
        goto LABEL_126;
      }

      goto LABEL_4;
    }

    v12 = *(*(*a3 + 8 * v11) + 196);
    v13 = (v12 - v9) ^ v10;
    ++v11;
    v9 = v12;
  }

  while ((v13 & 0x80000000) == 0);
  v8 = v11 - 1;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (v8 >= v6)
  {
    if (v6 < v8)
    {
      v14 = 8 * v8 - 8;
      v15 = 8 * v6;
      v16 = v8;
      v17 = v6;
      do
      {
        if (v17 != --v16)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_161;
          }

          v18 = *(v19 + v15);
          *(v19 + v15) = *(v19 + v14);
          *(v19 + v14) = v18;
        }

        ++v17;
        v14 -= 8;
        v15 += 8;
      }

      while (v17 < v16);
      v5 = a3[1];
    }

    goto LABEL_20;
  }

LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
LABEL_128:
  v96 = *(v7 + 2);
  if (v96 < 2)
  {
LABEL_136:
  }

  else
  {
    while (*a3)
    {
      v97 = *&v7[16 * v96];
      v98 = *&v7[16 * v96 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v97), (*a3 + 8 * *&v7[16 * v96 + 16]), (*a3 + 8 * v98), v4);
      if (v102)
      {
        goto LABEL_136;
      }

      if (v98 < v97)
      {
        goto LABEL_152;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      if (v96 - 2 >= *(v7 + 2))
      {
        goto LABEL_153;
      }

      v99 = &v7[16 * v96];
      *v99 = v97;
      *(v99 + 1) = v98;
      specialized Array.remove(at:)(v96 - 1);
      v96 = *(v7 + 2);
      if (v96 <= 1)
      {
        goto LABEL_136;
      }
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = v5 + 32;
      v21 = *(v19 - 4);
      v19 -= 32;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v6 + 1) < *(v4 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(v14 - 3) < *(v6 - 3))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[8] < v4[8])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v19 = v5 + 16;
      if (*(v15 - 8) < *(v6 - 8))
      {
        v21 = v6 - 16;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 16, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 16;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v15 -= 16;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      if (*(*v6 + 196) - *(*v4 + 196) >= 0)
      {
        break;
      }

      v15 = v7 == v6;
      v6 += 8;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = *v4;
    v15 = v7 == v4;
    v4 += 8;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 196) - *(*v17 + 196) < 0)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}