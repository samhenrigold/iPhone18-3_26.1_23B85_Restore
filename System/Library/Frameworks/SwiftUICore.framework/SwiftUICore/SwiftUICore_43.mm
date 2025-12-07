void *specialized Sequence._copySequenceContents(initializing:)(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!__dst)
  {
    v14 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v14;
    return v6;
  }

  if (!a3)
  {
    v14 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = __dst;
      v9 = 0;
      v10 = (a4 + (v6 << 7) - 96);
      while (v6 + v9 <= *(a4 + 16))
      {
        v11 = v10[5];
        v16[4] = v10[4];
        v16[5] = v11;
        v17[0] = v10[6];
        *(v17 + 12) = *(v10 + 108);
        v12 = v10[1];
        v16[0] = *v10;
        v16[1] = v12;
        v13 = v10[3];
        v16[2] = v10[2];
        v16[3] = v13;
        memmove(v8, v10, 0x7CuLL);
        if (a3 + v9 == 1)
        {
          outlined init with copy of GraphicsFilter(v16, v15);
          v14 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += 128;
        outlined init with copy of GraphicsFilter(v16, v15);
        --v9;
        v10 -= 8;
        v14 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v14 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for GraphicsFilter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFE8 && *(a1 + 124))
  {
    return (*a1 + 131049);
  }

  if ((((((*(a1 + 120) >> 13) & 0x1E000 | (*(a1 + 120) >> 11) & 0x1FFFu) >> 12) & 0xFFFE001F | (32 * ((*(a1 + 120) >> 11) & 0xF80 | (*(a1 + 120) >> 9) & 0xFFF))) ^ 0x1FFFF) >= 0x1FFE8)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((((*(a1 + 120) >> 13) & 0x1E000 | (*(a1 + 120) >> 11) & 0x1FFFu) >> 12) & 0xFFFE001F | (32 * ((*(a1 + 120) >> 11) & 0xF80 | (*(a1 + 120) >> 9) & 0xFFF))) ^ 0x1FFFF;
  }

  return v3 + 1;
}

uint64_t ForegroundEnvironment.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MaterialView.ChildEnvironment.environment.getter(v19);
  v18[27] = 0;
  *&v14 = 0;
  v13 = 0uLL;
  BYTE8(v14) = 4;
  *&v15 = 0;
  BYTE8(v15) = 5;
  v16 = v19[0];
  v17 = 0u;
  memset(v18, 0, 24);
  v18[24] = 1;
  *&v18[25] = 768;
  Value = AGGraphGetValue();
  (*(v7 + 16))(v9, Value, a2);
  (*(a3 + 32))(&v13, a2, a3);
  (*(v7 + 8))(v9, a2);
  v11 = *(&v16 + 1);
  *a4 = v16;
  *(a4 + 1) = v11;
  v19[4] = v17;
  v20[0] = *v18;
  *(v20 + 12) = *&v18[12];
  v19[0] = v13;
  v19[1] = v14;
  v19[2] = v15;
  v19[3] = v16;

  return outlined destroy of _ShapeStyle_Shape(v19);
}

double Path.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  Path.retainRBPath()();

  RBPathApply();

  RBPathRelease();
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

id *ForEachState.deinit()
{
  v1 = *v0;
  outlined destroy of _ViewListInputs((v0 + 2));

  v2 = *(*v0 + 20);
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  v13 = v1[10];
  v3 = v13;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  type metadata accessor for ForEach(255, &v13);
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);

  v9 = *(*v0 + 26);
  v10 = v1[15];
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v10;
  v11 = type metadata accessor for ForEachState.LazyEdits(0, &v13);
  (*(*(v11 - 8) + 8))(v0 + v9, v11);

  return v0;
}

double destroy for ForEachState.LazyEdits(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80) & 0xF8 | 7;
  v9 = *(v7 + 64) + 31;
  v10 = 16;
  if (((v9 + ((v8 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x10)
  {
    v10 = ((v9 + ((v8 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v11 = *(a1 + v10);
  if (v11 >= 2 && v10 != 0)
  {
    v11 = *a1 + 2;
  }

  if (v11 != 1)
  {
    (*(v4 + 8))(a1, v3);

    (*(v7 + 8))((((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, v6);
  }

  return result;
}

uint64_t objectdestroy_44Tm(uint64_t a1)
{
  outlined consume of Path.Storage(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));

  return swift_deallocObject();
}

void specialized ChildEnvironment.updateValue()()
{
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], type metadata accessor for _EnvironmentKeyWritingModifier);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = *(Value + 8);

  AGGraphGetValue();
  if (v6)
  {
    goto LABEL_10;
  }

  if ((v3 & 1) == 0)
  {

    goto LABEL_6;
  }

  v7 = *(v0 + 8);
  if (!v7)
  {
LABEL_10:

    goto LABEL_11;
  }

  v8 = *(v0 + 16);

  if (specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()(v7, v8 & 1, v4, v5))
  {
LABEL_11:
    swift_setAtWritableKeyPath();

    AGGraphSetOutputValue();

    *(v0 + 8) = v4;
    *(v0 + 16) = v5;
    return;
  }

LABEL_6:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_11;
  }
}

{
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(0);
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  v18[0] = *Value;
  v18[1] = v3;
  v5 = v4 & 1;
  v19 = v4 & 1;

  v6 = AGGraphGetValue();
  v7 = v6[1];
  v15 = *v6;
  v16 = v7;
  v17 = v8 & 1;
  if (v8)
  {
  }

  else
  {
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      v12[2] = v18;
      v9 = *(v0 + 8);
      v10 = *(v0 + 16);

      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_EnvironmentKeyWritingModifierVyAD4FontVSgG_s5NeverOSbTg5(partial apply for specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue(), v12, v9, v10);
      if (v11 == 2 || (v11 & 1) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    if (AGGraphGetOutputValue())
    {

      return;
    }
  }

LABEL_7:
  v13 = v3;

  swift_setAtWritableKeyPath();

  v13 = v15;
  v14 = v16;

  AGGraphSetOutputValue();

  outlined consume of _EnvironmentKeyWritingModifier<Font?>?(*(v0 + 8), *(v0 + 16));
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
}

uint64_t specialized DynamicBody.updateValue()()
{
  v1 = v0;
  v76 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v58 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v58 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v62 = v3;
  v65 = v10;
  if (v19 != v18 >> 1)
  {
    v60 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        *&v74[0] = v26;
        (*(v25 + 112))(v74);
        --v23;
      }

      while (v24);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v62;
    v15 = v60;
  }

  Value = AGGraphGetValue();
  v29 = Value[1];
  v28 = Value[2];
  v30 = *Value;
  *(v75 + 9) = *(Value + 41);
  v74[1] = v29;
  v75[0] = v28;
  v74[0] = v30;
  v31 = Value[1];
  v71 = *Value;
  v72 = v31;
  v73[0] = Value[2];
  *(v73 + 9) = *(Value + 41);
  v66 = v32 & 1;
  outlined init with copy of GlassEffectLocalModifier(v74, &v68);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v33 = static ObservationCenter._current;
  swift_beginAccess();
  v34 = pthread_getspecific(v33[2]);
  v35 = v63;
  if (!v34)
  {
    v36 = swift_slowAlloc();
    pthread_setspecific(v33[2], v36);
    *(&v69 + 1) = type metadata accessor for ObservationCenter();
    *&v68 = v33[3];
    outlined init with take of Any(&v68, v36);
    v35 = v63;

    v34 = v36;
  }

  outlined init with copy of Any(v34, &v68);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v37 = v67;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v59 = v5;
  LODWORD(v60) = CurrentAttribute;
  swift_beginAccess();
  v63 = *(v37 + 24);
  *(v37 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v40 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v71, v1, &v66);
  *(StatusReg + 848) = v40;
  v41 = v64;
  outlined init with take of ObservationTracking._AccessList?(v15, v64);
  outlined init with copy of ObservationTracking._AccessList?(v41, v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v42 = (*(v3 + 48))(v35, 1, v2);
  v43 = v65;
  if (v42 != 1)
  {
    v33 = *(v3 + 32);
    (v33)(v65, v35, v2);
    (*(v3 + 16))(v61, v43, v2);
    v1 = *(v37 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v47 = v1[2];
      v46 = v1[3];
      if (v47 >= v46 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v1);
      }

      v1[2] = v47 + 1;
      v48 = v62;
      (v33)(v1 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v62 + 72) * v47, v61, v2);
      v3 = v48;
      *(v37 + 24) = v1;
      (*(v48 + 8))(v65, v2);
      v44 = v64;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v37 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v44 = v35;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v44, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v49 = *(v37 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v3 + 16);
    v51 = v3 + 16;
    v64 = *(v37 + 24);
    v65 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);

    v55 = v60;
    v56 = v59;
    do
    {
      v65(v56, v53, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*(v51 - 8))(v56, v2);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v37 + 24) = v63;

  v68 = v71;
  v69 = v72;
  v70[0] = v73[0];
  *(v70 + 9) = *(v73 + 9);
  return outlined destroy of GlassEffectLocalModifier(&v68);
}

{
  v1 = v0;
  v76 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v58 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v58 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v62 = v3;
  v65 = v10;
  if (v19 != v18 >> 1)
  {
    v60 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        *&v74[0] = v26;
        (*(v25 + 112))(v74);
        --v23;
      }

      while (v24);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v62;
    v15 = v60;
  }

  Value = AGGraphGetValue();
  v29 = Value[1];
  v28 = Value[2];
  v30 = *Value;
  *(v75 + 9) = *(Value + 41);
  v74[1] = v29;
  v75[0] = v28;
  v74[0] = v30;
  v31 = Value[1];
  v71 = *Value;
  v72 = v31;
  v73[0] = Value[2];
  *(v73 + 9) = *(Value + 41);
  v66 = v32 & 1;
  outlined init with copy of _GlassContainerStorageView(v74, &v68);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v33 = static ObservationCenter._current;
  swift_beginAccess();
  v34 = pthread_getspecific(v33[2]);
  v35 = v63;
  if (!v34)
  {
    v36 = swift_slowAlloc();
    pthread_setspecific(v33[2], v36);
    *(&v69 + 1) = type metadata accessor for ObservationCenter();
    *&v68 = v33[3];
    outlined init with take of Any(&v68, v36);
    v35 = v63;

    v34 = v36;
  }

  outlined init with copy of Any(v34, &v68);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v37 = v67;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v59 = v5;
  LODWORD(v60) = CurrentAttribute;
  swift_beginAccess();
  v63 = *(v37 + 24);
  *(v37 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v40 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v71, v1, &v66);
  *(StatusReg + 848) = v40;
  v41 = v64;
  outlined init with take of ObservationTracking._AccessList?(v15, v64);
  outlined init with copy of ObservationTracking._AccessList?(v41, v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v42 = (*(v3 + 48))(v35, 1, v2);
  v43 = v65;
  if (v42 != 1)
  {
    v33 = *(v3 + 32);
    (v33)(v65, v35, v2);
    (*(v3 + 16))(v61, v43, v2);
    v1 = *(v37 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v47 = v1[2];
      v46 = v1[3];
      if (v47 >= v46 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v1);
      }

      v1[2] = v47 + 1;
      v48 = v62;
      (v33)(v1 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v62 + 72) * v47, v61, v2);
      v3 = v48;
      *(v37 + 24) = v1;
      (*(v48 + 8))(v65, v2);
      v44 = v64;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v37 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v44 = v35;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v44, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v49 = *(v37 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v3 + 16);
    v51 = v3 + 16;
    v64 = *(v37 + 24);
    v65 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);

    v55 = v60;
    v56 = v59;
    do
    {
      v65(v56, v53, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*(v51 - 8))(v56, v2);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v37 + 24) = v63;

  v68 = v71;
  v69 = v72;
  v70[0] = v73[0];
  *(v70 + 9) = *(v73 + 9);
  return outlined destroy of _GlassContainerStorageView(&v68);
}

{
  v1 = v0;
  v67[70] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v59 = v3;
  v62 = v10;
  if (v19 != v18 >> 1)
  {
    v57 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v67[0] = v26;
        (*(v25 + 112))(v67);
        --v23;
      }

      while (v24);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v59;
    v15 = v57;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v67, Value, 0x230uLL);
  memcpy(v66, Value, sizeof(v66));
  v63 = v29 & 1;
  outlined init with copy of GlassEntryContainerView(v67, v65);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v60;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *(&v65[1] + 1) = type metadata accessor for ObservationCenter();
    *&v65[0] = v30[3];
    outlined init with take of Any(v65, v33);
    v32 = v60;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v65);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v64;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v56 = v5;
  LODWORD(v57) = CurrentAttribute;
  swift_beginAccess();
  v60 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v66, v1, &v63);
  *(StatusReg + 848) = v37;
  v38 = v61;
  outlined init with take of ObservationTracking._AccessList?(v15, v61);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v62;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v62, v32, v2);
    (*(v3 + 16))(v58, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = v1[2];
      v43 = v1[3];
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v1);
      }

      v1[2] = v44 + 1;
      v45 = v59;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v59 + 72) * v44, v58, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v62, v2);
      v41 = v61;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v61 = *(v34 + 24);
    v62 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v57;
    v53 = v56;
    do
    {
      v62(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v60;

  memcpy(v65, v66, sizeof(v65));
  return outlined destroy of GlassEntryContainerView(v65);
}

{
  v1 = v0;
  v93 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v66 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v66 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v70 = v3;
  v73 = v10;
  if (v19 != v18 >> 1)
  {
    v68 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        *&v92[0] = v26;
        (*(v25 + 112))(v92);
        --v23;
      }

      while (v24);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v70;
    v15 = v68;
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
  Value = AGGraphGetValue();
  v28 = *Value;
  v29 = Value[1];
  v30 = Value[3];
  v92[2] = Value[2];
  v92[3] = v30;
  v92[0] = v28;
  v92[1] = v29;
  v31 = Value[4];
  v32 = Value[5];
  v33 = Value[7];
  v92[6] = Value[6];
  v92[7] = v33;
  v92[4] = v31;
  v92[5] = v32;
  v34 = *Value;
  v35 = Value[1];
  v36 = Value[3];
  v86 = Value[2];
  v87 = v36;
  v84 = v34;
  v85 = v35;
  v37 = Value[4];
  v38 = Value[5];
  v39 = Value[7];
  v90 = Value[6];
  v91 = v39;
  v88 = v37;
  v89 = v38;
  v74 = v40 & 1;
  outlined init with copy of TranslationKickModifier<Int>(v92, &v76);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v41 = static ObservationCenter._current;
  swift_beginAccess();
  v42 = pthread_getspecific(v41[2]);
  v43 = v71;
  if (!v42)
  {
    v44 = swift_slowAlloc();
    pthread_setspecific(v41[2], v44);
    *(&v77 + 1) = type metadata accessor for ObservationCenter();
    *&v76 = v41[3];
    outlined init with take of Any(&v76, v44);
    v43 = v71;

    v42 = v44;
  }

  outlined init with copy of Any(v42, &v76);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v45 = v75;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v67 = v5;
  LODWORD(v68) = CurrentAttribute;
  swift_beginAccess();
  v71 = *(v45 + 24);
  *(v45 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v48 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v84, v1, &v74);
  *(StatusReg + 848) = v48;
  v49 = v72;
  outlined init with take of ObservationTracking._AccessList?(v15, v72);
  outlined init with copy of ObservationTracking._AccessList?(v49, v43, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v50 = (*(v3 + 48))(v43, 1, v2);
  v51 = v73;
  if (v50 != 1)
  {
    v41 = *(v3 + 32);
    (v41)(v73, v43, v2);
    (*(v3 + 16))(v69, v51, v2);
    v1 = *(v45 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v45 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v55 = v1[2];
      v54 = v1[3];
      if (v55 >= v54 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v1);
      }

      v1[2] = v55 + 1;
      v56 = v70;
      (v41)(v1 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v70 + 72) * v55, v69, v2);
      v3 = v56;
      *(v45 + 24) = v1;
      (*(v56 + 8))(v73, v2);
      v52 = v72;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v45 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v49, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v52 = v43;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v52, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v57 = *(v45 + 24);
  v58 = *(v57 + 16);
  if (v58)
  {
    v60 = *(v3 + 16);
    v59 = v3 + 16;
    v72 = *(v45 + 24);
    v73 = v60;
    v61 = v57 + ((*(v59 + 64) + 32) & ~*(v59 + 64));
    v62 = *(v59 + 56);

    v63 = v68;
    v64 = v67;
    do
    {
      v73(v64, v61, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v63, v64);
      (*(v59 - 8))(v64, v2);
      v61 += v62;
      --v58;
    }

    while (v58);
  }

  *(v45 + 24) = v71;

  v80 = v88;
  v81 = v89;
  v82 = v90;
  v83 = v91;
  v76 = v84;
  v77 = v85;
  v78 = v86;
  v79 = v87;
  return outlined destroy of TranslationKickModifier<Int>(&v76);
}

{
  v1 = v0;
  v115 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v73 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v73 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v73 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v75 = v3;
  v78 = v10;
  if (v19 != v18 >> 1)
  {
    v73 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        *&v113[0] = v26;
        (*(v25 + 112))(v113);
        --v23;
      }

      while (v24);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v75;
    v15 = v73;
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
  Value = AGGraphGetValue();
  v28 = *(Value + 48);
  v30 = *Value;
  v29 = *(Value + 16);
  v113[2] = *(Value + 32);
  v113[3] = v28;
  v113[0] = v30;
  v113[1] = v29;
  v31 = *(Value + 112);
  v33 = *(Value + 64);
  v32 = *(Value + 80);
  v113[6] = *(Value + 96);
  v113[7] = v31;
  v113[4] = v33;
  v113[5] = v32;
  v34 = *(Value + 176);
  v36 = *(Value + 128);
  v35 = *(Value + 144);
  v113[10] = *(Value + 160);
  v113[11] = v34;
  v113[8] = v36;
  v113[9] = v35;
  v38 = *(Value + 208);
  v37 = *(Value + 224);
  v39 = *(Value + 192);
  v114 = *(Value + 240);
  v113[13] = v38;
  v113[14] = v37;
  v113[12] = v39;
  v40 = *(Value + 208);
  v109 = *(Value + 192);
  v110 = v40;
  v111 = *(Value + 224);
  v112 = *(Value + 240);
  v41 = *(Value + 144);
  v105 = *(Value + 128);
  v106 = v41;
  v42 = *(Value + 176);
  v107 = *(Value + 160);
  v108 = v42;
  v43 = *(Value + 80);
  v101 = *(Value + 64);
  v102 = v43;
  v44 = *(Value + 112);
  v103 = *(Value + 96);
  v104 = v44;
  v45 = *(Value + 16);
  v97 = *Value;
  v98 = v45;
  v46 = *(Value + 48);
  v99 = *(Value + 32);
  v100 = v46;
  v79 = v47 & 1;
  outlined init with copy of ScalePulseModifier<Int>(v113, &v81);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v48 = static ObservationCenter._current;
  swift_beginAccess();
  v49 = pthread_getspecific(v48[2]);
  v50 = v76;
  if (!v49)
  {
    v51 = swift_slowAlloc();
    pthread_setspecific(v48[2], v51);
    *(&v82 + 1) = type metadata accessor for ObservationCenter();
    *&v81 = v48[3];
    outlined init with take of Any(&v81, v51);
    v50 = v76;

    v49 = v51;
  }

  outlined init with copy of Any(v49, &v81);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v52 = v80;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v73 = v5;
  v5 = CurrentAttribute;
  swift_beginAccess();
  v76 = *(v52 + 24);
  *(v52 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v55 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v97, v1, &v79);
  *(StatusReg + 848) = v55;
  v56 = v77;
  outlined init with take of ObservationTracking._AccessList?(v15, v77);
  outlined init with copy of ObservationTracking._AccessList?(v56, v50, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v57 = (*(v3 + 48))(v50, 1, v2);
  v58 = v78;
  if (v57 != 1)
  {
    v48 = *(v3 + 32);
    (v48)(v78, v50, v2);
    (*(v3 + 16))(v74, v58, v2);
    v1 = *(v52 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v52 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v62 = v1[2];
      v61 = v1[3];
      v63 = v2;
      if (v62 >= v61 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v1);
      }

      v1[2] = v62 + 1;
      v64 = v75;
      (v48)(v1 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v75 + 72) * v62, v74, v63);
      v3 = v64;
      v2 = v63;
      *(v52 + 24) = v1;
      (*(v3 + 8))(v78, v63);
      v59 = v77;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v52 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v56, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v59 = v50;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v59, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v65 = *(v52 + 24);
  v66 = *(v65 + 16);
  if (v66)
  {
    v68 = *(v3 + 16);
    v67 = v3 + 16;
    v77 = *(v52 + 24);
    v78 = v68;
    v69 = v65 + ((*(v67 + 64) + 32) & ~*(v67 + 64));
    v70 = *(v67 + 56);

    v71 = v73;
    do
    {
      v78(v71, v69, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v5, v71);
      (*(v67 - 8))(v71, v2);
      v69 += v70;
      --v66;
    }

    while (v66);
  }

  *(v52 + 24) = v76;

  v93 = v109;
  v94 = v110;
  v95 = v111;
  v96 = v112;
  v89 = v105;
  v90 = v106;
  v91 = v107;
  v92 = v108;
  v85 = v101;
  v86 = v102;
  v87 = v103;
  v88 = v104;
  v81 = v97;
  v82 = v98;
  v83 = v99;
  v84 = v100;
  return outlined destroy of ScalePulseModifier<Int>(&v81);
}

{
  v1 = v0;
  v67[48] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v59 = v3;
  v62 = v10;
  if (v19 != v18 >> 1)
  {
    v57 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v67[0] = v26;
        (*(v25 + 112))(v67);
        --v23;
      }

      while (v24);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v59;
    v15 = v57;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v67, Value, 0x180uLL);
  memcpy(v66, Value, sizeof(v66));
  v63 = v29 & 1;
  outlined init with copy of GlassTransitionStateModifier(v67, v65);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v60;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *(&v65[1] + 1) = type metadata accessor for ObservationCenter();
    *&v65[0] = v30[3];
    outlined init with take of Any(v65, v33);
    v32 = v60;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v65);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v64;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v56 = v5;
  LODWORD(v57) = CurrentAttribute;
  swift_beginAccess();
  v60 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v66, v1, &v63);
  *(StatusReg + 848) = v37;
  v38 = v61;
  outlined init with take of ObservationTracking._AccessList?(v15, v61);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v62;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v62, v32, v2);
    (*(v3 + 16))(v58, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = v1[2];
      v43 = v1[3];
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v1);
      }

      v1[2] = v44 + 1;
      v45 = v59;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v59 + 72) * v44, v58, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v62, v2);
      v41 = v61;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v61 = *(v34 + 24);
    v62 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v57;
    v53 = v56;
    do
    {
      v62(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v60;

  memcpy(v65, v66, sizeof(v65));
  return outlined destroy of GlassTransitionStateModifier(v65);
}

{
  v1 = v0;
  v66[43] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v58 = v3;
  v61 = v10;
  if (v19 != v18 >> 1)
  {
    v56 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v66[0] = v26;
        (*(v25 + 112))(v66);
        --v23;
      }

      while (v24);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v58;
    v15 = v56;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v66, Value, 0x154uLL);
  memcpy(v65, Value, 0x154uLL);
  v62 = v29 & 1;
  outlined init with copy of GlassEffectShapeModifier(v66, v64);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v59;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *&v64[24] = type metadata accessor for ObservationCenter();
    *v64 = v30[3];
    outlined init with take of Any(v64, v33);
    v32 = v59;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v63;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v55 = v5;
  LODWORD(v56) = CurrentAttribute;
  swift_beginAccess();
  v59 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v65, v1, &v62);
  *(StatusReg + 848) = v37;
  v38 = v60;
  outlined init with take of ObservationTracking._AccessList?(v15, v60);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v61;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v61, v32, v2);
    (*(v3 + 16))(v57, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = v1[2];
      v43 = v1[3];
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v1);
      }

      v1[2] = v44 + 1;
      v45 = v58;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v58 + 72) * v44, v57, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v61, v2);
      v41 = v60;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v60 = *(v34 + 24);
    v61 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v56;
    v53 = v55;
    do
    {
      v61(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v59;

  memcpy(v64, v65, sizeof(v64));
  return outlined destroy of GlassEffectShapeModifier(v64);
}

{
  v1 = v0;
  v81 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v59 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v59 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v63 = v3;
  v66 = v10;
  if (v19 != v18 >> 1)
  {
    v61 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        *&v79[0] = v26;
        (*(v25 + 112))(v79);
        --v23;
      }

      while (v24);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v63;
    v15 = v61;
  }

  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
  Value = AGGraphGetValue();
  v79[0] = *Value;
  v29 = *(Value + 32);
  v28 = *(Value + 48);
  v30 = *(Value + 16);
  v80 = *(Value + 64);
  v79[2] = v29;
  v79[3] = v28;
  v79[1] = v30;
  v31 = *(Value + 48);
  v76 = *(Value + 32);
  v77 = v31;
  v78 = *(Value + 64);
  v32 = *(Value + 16);
  v74 = *Value;
  v75 = v32;
  v67 = v33 & 1;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v79, &v69, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v34 = static ObservationCenter._current;
  swift_beginAccess();
  v35 = pthread_getspecific(v34[2]);
  v36 = v64;
  if (!v35)
  {
    v37 = swift_slowAlloc();
    pthread_setspecific(v34[2], v37);
    *(&v70 + 1) = type metadata accessor for ObservationCenter();
    *&v69 = v34[3];
    outlined init with take of Any(&v69, v37);
    v36 = v64;

    v35 = v37;
  }

  outlined init with copy of Any(v35, &v69);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v38 = v68;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v60 = v5;
  LODWORD(v61) = CurrentAttribute;
  swift_beginAccess();
  v64 = *(v38 + 24);
  *(v38 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v41 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v74, v1, &v67);
  *(StatusReg + 848) = v41;
  v42 = v65;
  outlined init with take of ObservationTracking._AccessList?(v15, v65);
  outlined init with copy of ObservationTracking._AccessList?(v42, v36, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v43 = (*(v3 + 48))(v36, 1, v2);
  v44 = v66;
  if (v43 != 1)
  {
    v34 = *(v3 + 32);
    (v34)(v66, v36, v2);
    (*(v3 + 16))(v62, v44, v2);
    v1 = *(v38 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v48 = v1[2];
      v47 = v1[3];
      if (v48 >= v47 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v1);
      }

      v1[2] = v48 + 1;
      v49 = v63;
      (v34)(v1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v63 + 72) * v48, v62, v2);
      v3 = v49;
      *(v38 + 24) = v1;
      (*(v49 + 8))(v66, v2);
      v45 = v65;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v38 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v42, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v45 = v36;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v45, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v50 = *(v38 + 24);
  v51 = *(v50 + 16);
  if (v51)
  {
    v53 = *(v3 + 16);
    v52 = v3 + 16;
    v65 = *(v38 + 24);
    v66 = v53;
    v54 = v50 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
    v55 = *(v52 + 56);

    v56 = v61;
    v57 = v60;
    do
    {
      v66(v57, v54, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v56, v57);
      (*(v52 - 8))(v57, v2);
      v54 += v55;
      --v51;
    }

    while (v51);
  }

  *(v38 + 24) = v64;

  v71 = v76;
  v72 = v77;
  v73 = v78;
  v69 = v74;
  v70 = v75;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v69, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
}

{
  v1 = v0;
  v67[36] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v59 = v3;
  v62 = v10;
  if (v19 != v18 >> 1)
  {
    v57 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v67[0] = v26;
        (*(v25 + 112))(v67);
        --v23;
      }

      while (v24);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v59;
    v15 = v57;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v67, Value, 0x11CuLL);
  memcpy(v66, Value, 0x11CuLL);
  v63 = v29 & 1;
  outlined init with copy of GlassEffectView(v67, v65);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v60;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *(&v65[1] + 1) = type metadata accessor for ObservationCenter();
    *&v65[0] = v30[3];
    outlined init with take of Any(v65, v33);
    v32 = v60;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v65);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v64;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v56 = v5;
  LODWORD(v57) = CurrentAttribute;
  swift_beginAccess();
  v60 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v66, v1, &v63);
  *(StatusReg + 848) = v37;
  v38 = v61;
  outlined init with take of ObservationTracking._AccessList?(v15, v61);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v62;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v62, v32, v2);
    (*(v3 + 16))(v58, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = v1[2];
      v43 = v1[3];
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v1);
      }

      v1[2] = v44 + 1;
      v45 = v59;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v59 + 72) * v44, v58, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v62, v2);
      v41 = v61;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v61 = *(v34 + 24);
    v62 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v57;
    v53 = v56;
    do
    {
      v62(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v60;

  memcpy(v65, v66, 0x11CuLL);
  return outlined destroy of GlassEffectView(v65);
}

{
  v1 = v0;
  v66[85] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v58 = v3;
  v61 = v10;
  if (v19 != v18 >> 1)
  {
    v56 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v66[0] = v26;
        (*(v25 + 112))(v66);
        --v23;
      }

      while (v24);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v58;
    v15 = v56;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v66, Value, 0x2A8uLL);
  memcpy(v65, Value, sizeof(v65));
  v62 = v29 & 1;
  outlined init with copy of GlassEntryView(v66, v64);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v59;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *&v64[24] = type metadata accessor for ObservationCenter();
    *v64 = v30[3];
    outlined init with take of Any(v64, v33);
    v32 = v59;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v63;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v55 = v5;
  LODWORD(v56) = CurrentAttribute;
  swift_beginAccess();
  v59 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v65, v1, &v62);
  *(StatusReg + 848) = v37;
  v38 = v60;
  outlined init with take of ObservationTracking._AccessList?(v15, v60);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v61;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v61, v32, v2);
    (*(v3 + 16))(v57, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = v1[2];
      v43 = v1[3];
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v1);
      }

      v1[2] = v44 + 1;
      v45 = v58;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v58 + 72) * v44, v57, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v61, v2);
      v41 = v60;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v60 = *(v34 + 24);
    v61 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v56;
    v53 = v55;
    do
    {
      v61(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v59;

  memcpy(v64, v65, sizeof(v64));
  return outlined destroy of GlassEntryView(v64);
}

{
  v1 = v0;
  v66[129] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v58 = v3;
  v61 = v10;
  if (v19 != v18 >> 1)
  {
    v56 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v66[0] = v26;
        (*(v25 + 112))(v66);
        --v23;
      }

      while (v24);
    }

    *(v1 + 6) = *AGGraphGetValue() >> 1;
    v3 = v58;
    v15 = v56;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v66, Value, 0x408uLL);
  memcpy(v65, Value, sizeof(v65));
  v62 = v29 & 1;
  outlined init with copy of GlassItemView(v66, v64);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v59;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *&v64[24] = type metadata accessor for ObservationCenter();
    *v64 = v30[3];
    outlined init with take of Any(v64, v33);
    v32 = v59;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v63;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v55 = v5;
  LODWORD(v56) = CurrentAttribute;
  swift_beginAccess();
  v59 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v65, v1, &v62);
  *(StatusReg + 848) = v37;
  v38 = v60;
  outlined init with take of ObservationTracking._AccessList?(v15, v60);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v61;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v61, v32, v2);
    (*(v3 + 16))(v57, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = v1[2];
      v43 = v1[3];
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v1);
      }

      v1[2] = v44 + 1;
      v45 = v58;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v58 + 72) * v44, v57, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v61, v2);
      v41 = v60;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v60 = *(v34 + 24);
    v61 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v56;
    v53 = v55;
    do
    {
      v61(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v59;

  memcpy(v64, v65, sizeof(v64));
  return outlined destroy of GlassItemView(v64);
}

{
  v1 = v0;
  v75 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v53 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v53 - v16);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v73[0] = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v19 = *(Value + 16);
  v73[0] = *Value;
  v73[1] = v19;
  v20 = *(Value + 32);
  v21 = *(Value + 48);
  v22 = *(Value + 64);
  v74 = *(Value + 80);
  v73[3] = v21;
  v73[4] = v22;
  v73[2] = v20;
  v23 = *(Value + 16);
  v67 = *Value;
  v68 = v23;
  v24 = *(Value + 32);
  v25 = *(Value + 48);
  v26 = *(Value + 64);
  v72 = *(Value + 80);
  v70 = v25;
  v71 = v26;
  v69 = v24;
  v59 = v27 & 1;
  outlined init with copy of SafeAreaPaddingModifier(v73, &v61);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v28 = static ObservationCenter._current;
  swift_beginAccess();
  v29 = pthread_getspecific(v28[2]);
  v30 = v17;
  if (!v29)
  {
    v31 = swift_slowAlloc();
    pthread_setspecific(v28[2], v31);
    *(&v62 + 1) = type metadata accessor for ObservationCenter();
    *&v61 = v28[3];
    outlined init with take of Any(&v61, v31);
    v30 = v17;

    v29 = v31;
  }

  outlined init with copy of Any(v29, &v61);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v32 = v60;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v51 = v1[2];

    v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51 + 1, 1, v1);
    *(v32 + 24) = v52;

    v1 = v52;
    goto LABEL_11;
  }

  v54 = CurrentAttribute;
  swift_beginAccess();
  v55 = *(v32 + 24);
  *(v32 + 24) = MEMORY[0x1E69E7CC0];
  v3[7](v14, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = v3;
  v35 = *(StatusReg + 848);
  *(StatusReg + 848) = v14;
  specialized closure #1 in DynamicBody.updateValue()(&v67, v1, &v59);
  *(StatusReg + 848) = v35;
  v53 = v5;
  outlined init with take of ObservationTracking._AccessList?(v14, v30);
  v36 = v56;
  outlined init with copy of ObservationTracking._AccessList?(v30, v56, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((v17[6])(v36, 1, v2) == 1)
  {
    v5 = v2;
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v36;
    goto LABEL_14;
  }

  v37 = v58;
  v56 = v17[4];
  (v56)(v58, v36, v2);
  v5 = v2;
  (v17[2])(v57, v37, v2);
  swift_beginAccess();
  v1 = *(v32 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v40 = v1[2];
  v39 = v1[3];
  if (v40 >= v39 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v1);
  }

  v1[2] = v40 + 1;
  (v56)(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v17[9] * v40, v57, v5);
  *(v32 + 24) = v1;
  swift_endAccess();
  (v17[1])(v58, v5);
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = *(v32 + 24);
  v42 = *(v41 + 16);
  if (v42)
  {
    v44 = v17[2];
    v43 = (v17 + 2);
    v57 = *(v32 + 24);
    v58 = v44;
    v45 = v41 + ((v43[64] + 32) & ~v43[64]);
    v46 = *(v43 + 7);
    v47 = v43 - 8;

    v48 = v54;
    v49 = v53;
    do
    {
      (v58)(v49, v45, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v48, v49);
      (*v47)(v49, v5);
      v45 += v46;
      --v42;
    }

    while (v42);
  }

  *(v32 + 24) = v55;

  v63 = v69;
  v64 = v70;
  v65 = v71;
  v66 = v72;
  v61 = v67;
  v62 = v68;
  return outlined destroy of SafeAreaPaddingModifier(&v61);
}

{
  v1 = v0;
  v65 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v49 - v16);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v63[0] = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = Value[1];
  v19 = Value[2];
  v21 = *Value;
  *(v64 + 10) = *(Value + 42);
  v63[1] = v20;
  v64[0] = v19;
  v63[0] = v21;
  v22 = Value[1];
  v60 = *Value;
  v61 = v22;
  *v62 = Value[2];
  *&v62[10] = *(Value + 42);
  v55 = v23 & 1;
  outlined init with copy of MeshGradient(v63, &v57);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v24 = static ObservationCenter._current;
  swift_beginAccess();
  v25 = pthread_getspecific(v24[2]);
  v26 = v17;
  if (!v25)
  {
    v27 = swift_slowAlloc();
    pthread_setspecific(v24[2], v27);
    *(&v58 + 1) = type metadata accessor for ObservationCenter();
    *&v57 = v24[3];
    outlined init with take of Any(&v57, v27);
    v26 = v17;

    v25 = v27;
  }

  outlined init with copy of Any(v25, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v28 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v28 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v50 = CurrentAttribute;
  swift_beginAccess();
  v51 = *(v28 + 24);
  *(v28 + 24) = MEMORY[0x1E69E7CC0];
  v3[7](v14, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = v3;
  v31 = *(StatusReg + 848);
  *(StatusReg + 848) = v14;
  specialized closure #1 in DynamicBody.updateValue()(&v60, v1, &v55);
  *(StatusReg + 848) = v31;
  v49 = v5;
  outlined init with take of ObservationTracking._AccessList?(v14, v26);
  v32 = v52;
  outlined init with copy of ObservationTracking._AccessList?(v26, v52, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((v17[6])(v32, 1, v2) == 1)
  {
    v5 = v2;
    outlined destroy of ObservationTracking._AccessList?(v26, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v26 = v32;
    goto LABEL_14;
  }

  v33 = v54;
  v52 = v17[4];
  (v52)(v54, v32, v2);
  v5 = v2;
  (v17[2])(v53, v33, v2);
  swift_beginAccess();
  v1 = *(v28 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  (v52)(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v17[9] * v36, v53, v5);
  *(v28 + 24) = v1;
  swift_endAccess();
  (v17[1])(v54, v5);
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v26, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v37 = *(v28 + 24);
  v38 = *(v37 + 16);
  if (v38)
  {
    v40 = v17[2];
    v39 = (v17 + 2);
    v53 = *(v28 + 24);
    v54 = v40;
    v41 = v37 + ((v39[64] + 32) & ~v39[64]);
    v42 = *(v39 + 7);
    v43 = v39 - 8;

    v44 = v50;
    v45 = v49;
    do
    {
      (v54)(v45, v41, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v44, v45);
      (*v43)(v45, v5);
      v41 += v42;
      --v38;
    }

    while (v38);
  }

  *(v28 + 24) = v51;

  v57 = v60;
  v58 = v61;
  v59[0] = *v62;
  *(v59 + 10) = *&v62[10];
  return outlined destroy of MeshGradient(&v57);
}

uint64_t View.contentShape<A>(_:_:eoFill:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[2] = a6;
  v23[1] = a4;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _ContentShapeKindModifier(0, v14, v15, v13);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v23 - v19;
  (*(v10 + 16))(v12, a2, a5, v18);
  v21 = *a1;
  (*(v10 + 32))(v20, v12, a5);
  v20[*(v16 + 36)] = a3;
  *&v20[*(v16 + 40)] = v21;
  View.modifier<A>(_:)();
  return (*(v17 + 8))(v20, v16);
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(__int128 *a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v59 = v2;
  v60 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v65 = v8;
  *v78 = v8;
  LODWORD(v63) = v9;
  v78[16] = v9;
  v78[17] = v10;
  v78[18] = v11;
  if (Signpost.isEnabled.getter())
  {
    v58 = *(&v8 + 1);
    LODWORD(v62) = v12;
    v52 = a1;
    v53 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    v64 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v22 = v58;
      if (v10)
      {
LABEL_6:
        v67 = v62;
        *&v68 = &dword_18D018000;
        v77[0] = _signpostLog;
        *v78 = v65;
        *&v78[8] = v22;
        v78[16] = v63;
        *&v72 = "%{public}@.body [in %{public}@]";
        *(&v72 + 1) = 31;
        LOBYTE(v73) = 2;
        v66 = v64;
        v23 = v53;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v67, &v68, v77, v78, v53, &v72, &v66);
        (*(v60 + 8))(v23, v59);
LABEL_35:

        a1 = v52;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v22 = v58;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v24 = v65;
    if (v65 == 20)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }

    v26 = bswap32(v65) | (4 * WORD1(v65));
    LODWORD(v65) = v62;
    v27 = v60 + 16;
    v54 = *(v60 + 16);
    v28 = v54(v61, v53, v59);
    v29 = 0;
    LOBYTE(v72) = 1;
    v63 = v25;
    v60 = v27;
    v57 = 16 * v25;
    v58 = (v27 - 8);
    v55 = v24;
    v56 = v64 + 32;
    do
    {
      v62 = &v51;
      MEMORY[0x1EEE9AC00](v28);
      v31 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31 + 8;
      v33 = v63;
      v34 = v31 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = v56 + 40 * v29;
      v36 = v63;
      while (1)
      {
        v37 = *(v64 + 16);
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
        }

        ++v29;
        outlined init with copy of AnyTrackedValue(v35, v78);
        v38 = *&v78[24];
        v39 = *&v78[32];
        __swift_project_boxed_opaque_existential_1(v78, *&v78[24]);
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v26 | v65, v38, v39);
        *v32 = v40 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(v78);
        v35 += 40;
        if (!--v36)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v72) = 0;
LABEL_20:
      v41 = v55;
      if (v55 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v31[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v41 != 20 && v31[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v42 = v59;
      v43 = *v58;
      v44 = v61;
      (*v58)(v61, v59);
      v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
      v28 = v54(v44, v45, v42);
    }

    while ((v72 & 1) != 0);
    v46 = v59;
    v43(v61, v59);
    v43(v53, v46);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v47 = a1[1];
  v68 = *a1;
  v69 = v47;
  v70 = a1[2];
  v71 = *(a1 + 6);
  v48 = *(a1 + 56);
  swift_beginAccess();
  v49 = static Spacing.defaultValue[0];
  if (dbl_1EAB21528 < static Spacing.defaultValue[0])
  {
    v49 = dbl_1EAB21528;
  }

  *v78 = v49;
  *&v78[8] = v68;
  *&v78[24] = v69;
  *&v78[40] = v70;
  *&v78[56] = v71;
  v79 = v48;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(a1, &v72, &lazy cache variable for type metadata for UncheckedSendable<GlassEffectLocalModifier>, &type metadata for GlassEffectLocalModifier, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
  AGGraphSetOutputValue();
  v74 = *&v78[32];
  v75 = *&v78[48];
  v76 = v79;
  v72 = *v78;
  v73 = *&v78[16];
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v72, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
}

uint64_t initializeWithCopy for ContentTransition.State(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v6 | (v5 << 32), v7);
  *a1 = v4;
  *(a1 + 12) = v5;
  *(a1 + 8) = v6;
  *(a1 + 13) = v7;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v97 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[3];
  *v95 = a2[2];
  *&v95[16] = v8;
  *v96 = a2[4];
  *&v96[16] = *(a2 + 20);
  v9 = a2[1];
  v93 = *a2;
  v94 = v9;
  v10 = *&v95[4];
  if ((v95[4] & 0x22) != 0)
  {
    v64 = a4;
    v65 = a3;
    v68 = a7;
    LODWORD(v75) = v7;
    v13 = a2[1];
    v87 = *a2;
    v88 = v13;
    v89 = a2[2];
    outlined init with copy of _GraphInputs(&v93, v79);
    v14 = static Animatable.makeAnimatable(value:inputs:)(&v75, &v87, a5, *(a6 + 8));
    v86[0] = v87;
    v86[1] = v88;
    v86[2] = v89;
    outlined destroy of _GraphInputs(v86);
    v15 = v94;
    v16 = swift_beginAccess();
    v17 = *MEMORY[0x1E698D3F8];
    *&v87 = __PAIR64__(*(v15 + 16), v14);
    DWORD2(v87) = v17;
    MEMORY[0x1EEE9AC00](v16);
    v66 = a5;
    v67 = a6;
    v58 = type metadata accessor for UnaryLayoutComputer(0, a5, a6, v18);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v58);
    v59 = v19;
    type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v87, closure #1 in Attribute.init<A>(_:)partial apply, &v56, v58, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
    v84 = v93;
    v85 = v94;
    v22 = *v95;
    v23 = *&v95[4];
    v82 = *&v95[8];
    v83 = *&v95[24];
    v70 = *&v96[4];
    v71 = v79[0];
    v24 = *&v96[12];
    v63 = *&v96[12];
    if ((v10 & 0x20) != 0)
    {
      v69 = *v95;
      outlined init with copy of _ViewInputs(&v93, &v87);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v30 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v31 = specialized CachedEnvironment.attribute<A>(id:_:)(v30, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      v32 = swift_endAccess();
      *&v87 = __PAIR64__(v31, *&v96[8]);
      *(&v87 + 1) = __PAIR64__(v17, v71);
      MEMORY[0x1EEE9AC00](v32);
      v34 = type metadata accessor for UnaryChildGeometry(0, v66, v67, v33);
      v58 = v34;
      swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v34);
      v59 = v35;
      type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<ViewGeometry>, &type metadata for ViewGeometry);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v87, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_11, &v56, v34, MEMORY[0x1E69E73E0], v36, MEMORY[0x1E69E7410], v37);
      v38 = v79[0];
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v39 = *v96;
      v60 = v38;
      *&v87 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v39);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v26 = Attribute.init<A>(body:value:flags:update:)();
      v22 = v69 | 0x18;
      v23 = v10 | 2;
      v24 = v63;
    }

    else
    {
      OffsetAttribute2 = *&v96[8];
      v26 = *v96;
      outlined init with copy of _ViewInputs(&v93, &v87);
      v60 = 0;
    }

    v79[0] = v84;
    v79[1] = v85;
    v69 = v22;
    *&v80[0] = __PAIR64__(v23, v22);
    v61 = v23;
    v62 = OffsetAttribute2;
    *(v80 + 8) = v82;
    *(&v80[1] + 1) = v83;
    *&v81[0] = __PAIR64__(v70, v26);
    DWORD2(v81[0]) = OffsetAttribute2;
    *(v81 + 12) = v24;
    v77[0] = v80[0];
    v77[1] = v80[1];
    v78[0] = v81[0];
    LODWORD(v78[1]) = HIDWORD(v24);
    v75 = v84;
    v76 = v85;
    v40 = outlined init with copy of _ViewInputs(v79, &v87);
    (v65)(&v72, v40, &v75);
    v89 = v77[0];
    v90 = v77[1];
    v91 = v78[0];
    v92 = v78[1];
    v87 = v75;
    v88 = v76;
    v41 = outlined destroy of _ViewInputs(&v87);
    v42 = v72;
    v43 = v73;
    v44 = v74;
    if ((v10 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v41);
      v45 = v66;
      LODWORD(v65) = v26;
      v46 = v67;
      v56 = v66;
      v57 = v67;
      v58 = v42;
      v59 = __PAIR64__(v44, v43);
      MEMORY[0x1EEE9AC00](v47);
      v48 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v48);
      v56 = v45;
      v57 = v46;
      v58 = v42;
      v59 = __PAIR64__(v44, v43);
      v49 = v45;
      v24 = v63;
      v50 = v46;
      v26 = v65;
      v52 = type metadata accessor for UnaryChildGeometry(0, v49, v50, v51);
      MEMORY[0x1EEE9AC00](v52);
      AGGraphMutateAttribute();
    }

    v53 = v43 | ((v10 & 2) << 6);
    if ((v10 & 2) != 0)
    {
      v54 = v71;
    }

    else
    {
      v54 = v44;
    }

    v75 = v84;
    v76 = v85;
    *&v77[0] = __PAIR64__(v61, v69);
    *(v77 + 8) = v82;
    *(&v77[1] + 1) = v83;
    *&v78[0] = __PAIR64__(v70, v26);
    DWORD2(v78[0]) = v62;
    *(v78 + 12) = v24;
    result = outlined destroy of _ViewInputs(&v75);
    v55 = v68;
    *v68 = v42;
    *(v55 + 2) = v53;
    *(v55 + 3) = v54;
  }

  else
  {
    v27 = a2[3];
    v89 = a2[2];
    v90 = v27;
    v91 = a2[4];
    v92 = *(a2 + 20);
    v28 = a2[1];
    v87 = *a2;
    v88 = v28;
    return a3();
  }

  return result;
}

{
  v107 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[3];
  *v105 = a2[2];
  *&v105[16] = v8;
  *v106 = a2[4];
  *&v106[16] = *(a2 + 20);
  v9 = a2[1];
  v103 = *a2;
  v104 = v9;
  v10 = *&v105[4];
  if ((v105[4] & 0x22) != 0)
  {
    v75 = a4;
    v76 = a3;
    v78 = a7;
    LODWORD(v85) = v7;
    v13 = a2[1];
    v97 = *a2;
    v98 = v13;
    v99 = a2[2];
    outlined init with copy of _GraphInputs(&v103, v89);
    v14 = static Animatable.makeAnimatable(value:inputs:)(&v85, &v97, a5, *(a6 + 8));
    v96[0] = v97;
    v96[1] = v98;
    v96[2] = v99;
    outlined destroy of _GraphInputs(v96);
    v94 = v103;
    v95 = v104;
    v15 = *v105;
    v92 = *&v105[8];
    v93 = *&v105[24];
    v80 = *&v106[4];
    v16 = *&v106[12];
    if ((v10 & 0x20) != 0)
    {
      v79 = *v105;
      v77 = *&v106[12];
      v24 = v104;
      v25 = swift_beginAccess();
      v26 = *(v24 + 16);
      v27 = *MEMORY[0x1E698D3F8];
      v74 = v14;
      *&v89[0] = __PAIR64__(v26, v14);
      v73 = v27;
      DWORD2(v89[0]) = v27;
      MEMORY[0x1EEE9AC00](v25);
      v67 = type metadata accessor for UnaryPositionAwareLayoutComputer(0, a5, a6, v28);
      swift_getWitnessTable(protocol conformance descriptor for UnaryPositionAwareLayoutComputer<A>, v67);
      v68 = v29;
      outlined init with copy of _ViewInputs(&v103, &v97);
      type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v89, closure #1 in Attribute.init<A>(_:)partial apply, &v65, v67, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);
      v32 = v97;
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v33 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v34 = specialized CachedEnvironment.attribute<A>(id:_:)(v33, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      v35 = swift_endAccess();
      v70 = v32;
      v36 = *&v105[28] | (*(v24 + 16) << 32);
      *&v97 = v32 | (v34 << 32);
      *(&v97 + 1) = *&v106[8] | (*v106 << 32);
      *&v98 = v36;
      *(&v98 + 1) = v73 | (*&v106[12] << 32);
      MEMORY[0x1EEE9AC00](v35);
      v38 = type metadata accessor for UnaryPositionAwareChildGeometry(0, a5, a6, v37);
      v67 = v38;
      swift_getWitnessTable(protocol conformance descriptor for UnaryPositionAwareChildGeometry<A>, v38);
      v68 = v39;
      type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<ViewGeometry>, &type metadata for ViewGeometry);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v97, closure #1 in Attribute.init<A>(_:)partial apply, &v65, v38, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);
      v71 = 0;
      LODWORD(v34) = v89[0];
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v69 = v34;
      v18 = AGGraphCreateOffsetAttribute2();
      v15 = v79 | 0x18;
      v20 = v10 | 2;
      v16 = v77;
      v14 = v74;
    }

    else
    {
      v71 = 0;
      OffsetAttribute2 = *&v106[8];
      v18 = *v106;
      v19 = *&v105[4];
      outlined init with copy of _ViewInputs(&v103, &v97);
      v20 = v19;
      v69 = 0;
      v70 = 0;
    }

    v77 = a6;
    v89[0] = v94;
    v89[1] = v95;
    v79 = v15;
    *&v90[0] = __PAIR64__(v20, v15);
    v72 = v18;
    LODWORD(v73) = v20;
    *(v90 + 8) = v92;
    *(&v90[1] + 1) = v93;
    *&v91[0] = __PAIR64__(v80, v18);
    v74 = OffsetAttribute2;
    DWORD2(v91[0]) = OffsetAttribute2;
    *(v91 + 12) = v16;
    v87[0] = v90[0];
    v87[1] = v90[1];
    v88[0] = v91[0];
    LODWORD(v88[1]) = HIDWORD(v16);
    v85 = v94;
    v86 = v95;
    v42 = outlined init with copy of _ViewInputs(v89, &v97);
    (v76)(&v82, v42, &v85);
    v99 = v87[0];
    v100 = v87[1];
    v101 = v88[0];
    v102 = v88[1];
    v97 = v85;
    v98 = v86;
    v43 = outlined destroy of _ViewInputs(&v97);
    v44 = v82;
    v46 = v83;
    v45 = v84;
    if ((v10 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v43);
      v65 = a5;
      LODWORD(v76) = v10;
      v10 = v14;
      v47 = v16;
      v48 = a5;
      v49 = v77;
      v66 = v77;
      v67 = v44;
      v68 = __PAIR64__(v45, v46);
      v51 = type metadata accessor for UnaryPositionAwareLayoutComputer(0, v48, v77, v50);
      MEMORY[0x1EEE9AC00](v51);
      v52 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v52);
      v65 = v48;
      v66 = v49;
      v67 = v44;
      v68 = __PAIR64__(v45, v46);
      v53 = v48;
      v54 = v49;
      a5 = v48;
      v16 = v47;
      v14 = v10;
      LOBYTE(v10) = v76;
      v56 = type metadata accessor for UnaryPositionAwareChildGeometry(0, v53, v54, v55);
      MEMORY[0x1EEE9AC00](v56);
      AGGraphMutateAttribute();
    }

    if ((v10 & 2) != 0)
    {
      v57 = v104;
      v58 = swift_beginAccess();
      *&v85 = __PAIR64__(*(v57 + 16), v14);
      DWORD2(v85) = v45;
      MEMORY[0x1EEE9AC00](v58);
      v60 = type metadata accessor for UnaryPositionAwareLayoutComputer(0, a5, v77, v59);
      v67 = v60;
      swift_getWitnessTable(protocol conformance descriptor for UnaryPositionAwareLayoutComputer<A>, v60);
      v68 = v61;
      type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v85, closure #1 in Attribute.init<A>(_:)partial apply, &v65, v60, MEMORY[0x1E69E73E0], v62, MEMORY[0x1E69E7410], v63);
      v45 = v81;
      v46 |= 0x80u;
    }

    v85 = v94;
    v86 = v95;
    *&v87[0] = __PAIR64__(v73, v79);
    *(v87 + 8) = v92;
    *(&v87[1] + 1) = v93;
    *&v88[0] = __PAIR64__(v80, v72);
    DWORD2(v88[0]) = v74;
    *(v88 + 12) = v16;
    result = outlined destroy of _ViewInputs(&v85);
    v64 = v78;
    *v78 = v44;
    *(v64 + 2) = v46;
    *(v64 + 3) = v45;
  }

  else
  {
    v21 = a2[3];
    v99 = a2[2];
    v100 = v21;
    v101 = a2[4];
    v102 = *(a2 + 20);
    v22 = a2[1];
    v97 = *a2;
    v98 = v22;
    return a3();
  }

  return result;
}

uint64_t partial apply for closure #1 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(uint64_t a1)
{
  return partial apply for closure #1 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(a1, type metadata accessor for UnaryLayoutComputer);
}

{
  return partial apply for closure #1 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(a1, type metadata accessor for UnaryPositionAwareLayoutComputer);
}

unsigned int *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance RoundedRectangle._Inset(unsigned int *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16RoundedRectangleV6_InsetV_Tt1B5(a1, v4);
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16RoundedRectangleV6_InsetV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    LOBYTE(v14) = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle._Inset> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t UnaryPositionAwareLayoutComputer.updateValue()(uint64_t a1, uint64_t a2, void (*a3)(char *, _DWORD *, _DWORD *, uint64_t, uint64_t), const char *a4, uint64_t a5)
{
  v34 = a3;
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v14 + 24);
  v16 = v15(0, v9, v11);
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  result = AGGraphGetCurrentAttribute();
  v20 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v21 = result;
    v29 = a4;
    v30 = a5;
    v22 = *(v5 + 4);
    v23 = *(v5 + 8);
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v23 = 0;
    }

    if (v24)
    {
      v25 = v20;
    }

    else
    {
      v25 = v23;
    }

    Value = AGGraphGetValue();
    (*(v10 + 16))(v13, Value, v9);
    v36[0] = v21;
    v36[1] = v21;
    v36[2] = v22;
    v35[0] = v21;
    v35[1] = v25;
    v35[2] = v20;
    v34(v13, v36, v35, v9, v31);
    swift_getWitnessTable(v29, a1);
    v27 = v33;
    StatefulRule<>.update<A>(to:)(v18, a1, v33, v28, v30);
    return (*(v32 + 8))(v18, v27);
  }

  return result;
}

double UnaryLayoutEngine.init(layout:layoutContext:child:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a2 + 8);
  v12 = *(a3 + 8);
  v13 = type metadata accessor for UnaryLayoutEngine(0, a4, a5, a4);
  v14 = a6 + v13[11];
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 1;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 1;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 1;
  v15 = a6 + v13[12];
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = 0u;
  *(v15 + 96) = 1;
  *(v15 + 104) = 0u;
  *(v15 + 120) = 0u;
  *(v15 + 136) = 0u;
  *(v15 + 152) = 0u;
  *(v15 + 168) = 0u;
  *(v15 + 184) = 0u;
  *(v15 + 200) = 1;
  *(v15 + 208) = 0u;
  *(v15 + 224) = 0u;
  *(v15 + 240) = 0u;
  *(v15 + 256) = 0u;
  *(v15 + 272) = 0u;
  *(v15 + 288) = 0u;
  *(v15 + 304) = 1;
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v16 = a6 + v13[9];
  *v16 = *a2;
  *(v16 + 8) = v11;
  v17 = a6 + v13[10];
  result = *a3;
  *v17 = *a3;
  *(v17 + 8) = v12;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance MakeSection@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void lazy protocol witness table accessor for type _AnyAnimatableData.Empty and conformance _AnyAnimatableData.Empty()
{
  if (!lazy protocol witness table cache variable for type _AnyAnimatableData.Empty and conformance _AnyAnimatableData.Empty)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AnyAnimatableData.Empty, &unk_1F004E668, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AnyAnimatableData.Empty and conformance _AnyAnimatableData.Empty);
  }
}

double partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)@<D0>(uint64_t a1@<X8>)
{
  return specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(*(v1 + 16), *(v1 + 32), *(v1 + 40), *(v1 + 48), a1);
}

{
  return specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(*(v1 + 16), *(v1 + 32), *(v1 + 40), *(v1 + 48), a1);
}

{
  return specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(*(v1 + 16), *(v1 + 32), *(v1 + 40), *(v1 + 48), a1);
}

uint64_t _AnyLayoutBox.makeCache(subviews:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *(v8 + 16);
  v12 = *(v8 + 17);
  v13 = *(v3 + 200);
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v13, v4);
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v14 = *(v3 + 192);
  v15 = *(v14 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = v21;
  v21[4] = AssociatedTypeWitness;
  v18 = v17;
  __swift_allocate_boxed_opaque_existential_1(v17 + 1);
  v15(&v22, v4, v14);
  result = (*(v5 + 8))(v7, v4);
  *v18 = v4;
  return result;
}

double specialized HVStack.makeCache(subviews:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _OWORD *a7@<X8>)
{
  *&result = specialized HVStack.makeCache(subviews:)(a1, a2, a3, a4, a5, a6, 0, a7).n128_u64[0];
  return result;
}

{
  *&result = specialized HVStack.makeCache(subviews:)(a1, a2, a3, a4, a5, a6, 1, a7).n128_u64[0];
  return result;
}

uint64_t outlined init with copy of ViewLayoutEngine<AnyLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for ViewLayoutEngine);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<AnyLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<AnyLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<AnyLayout>>);
    }
  }
}

uint64_t outlined destroy of ViewLayoutEngine<AnyLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for ViewLayoutEngine);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized GeometryEffectTransform.value.getter(uint64_t a4@<X8>)
{
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v8 = *(Value + 16);
  v9 = *(Value + 24);
  v10 = *(Value + 32);
  v11 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v12 = AGGraphGetValue();
  v13 = *v12 - v8;
  v14 = v12[1] - v9;
  v15 = AGGraphGetValue();
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  type metadata accessor for CGSize(0);
  v20 = AGGraphGetValue();
  _ScaleEffect.effectValue(size:)(v50, *v20, v20[1], v16, v17, v18, v19);
  v41 = v50[3];
  v42 = v50[1];
  v44 = v50[2];
  v46 = v51;
  v49 = v50[0];
  v21 = AGGraphGetValue();
  v22 = v44;
  v23 = v46;
  v24 = v42;
  if (*v21 == 1)
  {
    v25 = *AGGraphGetValue();
    v59 = 0xBFF0000000000000;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = xmmword_18DDAA020;
    v64 = v25;
    v65 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v50, v52);
    v55[0] = 0xBFF0000000000000;
    memset(&v55[1], 0, 24);
    v56 = xmmword_18DDAA020;
    v57 = v25;
    v58 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v55, v53);
    v24 = v53[1];
    v49 = v53[0];
    v22 = v53[2];
    v41 = v53[3];
    v23 = v54;
  }

  v26 = v10 - v13;
  v27 = v11 - v14;
  if (v24.f64[0] == 0.0 && v22.f64[1] == 0.0 && v23 == 1.0)
  {
    v28.f64[0] = v22.f64[0];
    v28.f64[1] = v24.f64[1];
    v29 = vmulq_f64(v49, v28);
    if (vsubq_f64(v29, vdupq_laneq_s64(v29, 1)).f64[0] == 0.0)
    {
LABEL_13:
      _StringGuts.grow(_:)(28);
      MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
      _print_unlocked<A, B>(_:_:)();
      specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

LABEL_17:
      *a4 = v7;
      *(a4 + 8) = v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = v26;
      *(a4 + 40) = v27;
      return;
    }

    v30 = vextq_s8(v24, v22, 8uLL);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v49, xmmword_18DDAA020), vceqq_f64(v30, xmmword_18DDAB500))))) & 1) == 0)
    {
      v26 = v26 - *v41.i64;
      v27 = v27 - *&v41.i64[1];
      goto LABEL_17;
    }

    v47 = v30;
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
    v31 = swift_allocObject();
    *(v31 + 32) = v26;
    *(v31 + 40) = v27;
    *(v31 + 48) = v49;
    *(v31 + 64) = v47;
    *(v31 + 80) = v41;
    v32 = 1;
    *(v31 + 96) = 1;
    *(v31 + 16) = v7;
    if (!v7)
    {
      goto LABEL_16;
    }

    v33 = *(v7 + 24);
    v34 = __OFADD__(v33, 1);
    v32 = v33 + 1;
    if (!v34)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v35 = vdupq_laneq_s64(v41, 1);
  v36.f64[1] = v35.f64[1];
  v36.f64[0] = v23;
  v37 = vmulq_f64(v22, v36);
  v35.f64[1] = v23;
  v38.f64[0] = v24.f64[0];
  v38.f64[1] = v49.f64[1];
  v39 = vmulq_f64(v38, vsubq_f64(vmulq_laneq_f64(v35, v24, 1), vmulq_n_f64(v22, *v41.i64)));
  if (v39.f64[0] + vmuld_n_f64(v49.f64[0], vsubq_f64(v37, vdupq_laneq_s64(v37, 1)).f64[0]) - v39.f64[1] == 0.0)
  {
    goto LABEL_13;
  }

  v48 = v23;
  v43 = v24;
  v45 = v22;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v31 = swift_allocObject();
  *(v31 + 32) = v26;
  *(v31 + 40) = v27;
  *(v31 + 48) = v49;
  *(v31 + 64) = v43;
  *(v31 + 80) = v45;
  *(v31 + 96) = v41;
  *(v31 + 112) = v48;
  v32 = 1;
  *(v31 + 120) = 1;
  *(v31 + 16) = v7;
  if (!v7 || (v40 = *(v7 + 24), v34 = __OFADD__(v40, 1), v32 = v40 + 1, !v34))
  {
LABEL_16:
    *(v31 + 24) = v32;
    v26 = 0.0;
    v7 = v31;
    v27 = 0.0;
    goto LABEL_17;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v8 = *(Value + 16);
  v9 = *(Value + 24);
  v10 = *(Value + 32);
  v11 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v12 = AGGraphGetValue();
  v13 = *v12 - v8;
  v14 = v12[1] - v9;
  v15 = AGGraphGetValue();
  v16 = *(v15 + 32);
  v17 = *(v15 + 40);
  v18 = *(v15 + 48);
  v19 = *(v15 + 56);
  type metadata accessor for CGSize(0);
  v49 = *(v15 + 16);
  v53 = *v15;
  v20 = AGGraphGetValue();
  v21 = *v20;
  v22 = v20[1];
  v23 = v16 * *v20;
  if (*v20 <= v22)
  {
    v21 = v20[1];
  }

  v65 = v49;
  v64 = v53;
  *&v66 = v23;
  *(&v66 + 1) = v17 * v22;
  v67 = v18;
  *&v68 = v21 / v19;
  *(&v68 + 1) = 0x7FF8000000000000;
  _Rotation3DEffect.Data.transform.getter(v55);
  v44 = v55[3];
  v45 = v55[1];
  v47 = v55[2];
  v50 = v56;
  v54 = v55[0];
  v24 = AGGraphGetValue();
  v25 = v47;
  v26 = v50;
  v27 = v45;
  if (*v24 == 1)
  {
    v28 = *AGGraphGetValue();
    v64 = 0xBFF0000000000000;
    v65 = 0uLL;
    v66 = xmmword_18DDAA020;
    v67 = v28;
    v68 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v55, v57);
    v60[0] = 0xBFF0000000000000;
    memset(&v60[1], 0, 24);
    v61 = xmmword_18DDAA020;
    v62 = v28;
    v63 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v60, v58);
    v27 = v58[1];
    v54 = v58[0];
    v25 = v58[2];
    v44 = v58[3];
    v26 = v59;
  }

  v29 = v10 - v13;
  v30 = v11 - v14;
  if (v27.f64[0] == 0.0 && v25.f64[1] == 0.0 && v26 == 1.0)
  {
    v31.f64[0] = v25.f64[0];
    v31.f64[1] = v27.f64[1];
    v32 = vmulq_f64(v54, v31);
    if (vsubq_f64(v32, vdupq_laneq_s64(v32, 1)).f64[0] == 0.0)
    {
LABEL_15:
      _StringGuts.grow(_:)(28);
      MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
      _print_unlocked<A, B>(_:_:)();
      specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

LABEL_19:
      *a4 = v7;
      *(a4 + 8) = v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = v29;
      *(a4 + 40) = v30;
      return;
    }

    v33 = vextq_s8(v27, v25, 8uLL);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v54, xmmword_18DDAA020), vceqq_f64(v33, xmmword_18DDAB500))))) & 1) == 0)
    {
      v29 = v29 - *v44.i64;
      v30 = v30 - *&v44.i64[1];
      goto LABEL_19;
    }

    v51 = v33;
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
    v34 = swift_allocObject();
    *(v34 + 32) = v29;
    *(v34 + 40) = v30;
    *(v34 + 48) = v54;
    *(v34 + 64) = v51;
    *(v34 + 80) = v44;
    v35 = 1;
    *(v34 + 96) = 1;
    *(v34 + 16) = v7;
    if (!v7)
    {
      goto LABEL_18;
    }

    v36 = *(v7 + 24);
    v37 = __OFADD__(v36, 1);
    v35 = v36 + 1;
    if (!v37)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v38 = vdupq_laneq_s64(v44, 1);
  v39.f64[1] = v38.f64[1];
  v39.f64[0] = v26;
  v40 = vmulq_f64(v25, v39);
  v38.f64[1] = v26;
  v41.f64[0] = v27.f64[0];
  v41.f64[1] = v54.f64[1];
  v42 = vmulq_f64(v41, vsubq_f64(vmulq_laneq_f64(v38, v27, 1), vmulq_n_f64(v25, *v44.i64)));
  if (v42.f64[0] + vmuld_n_f64(v54.f64[0], vsubq_f64(v40, vdupq_laneq_s64(v40, 1)).f64[0]) - v42.f64[1] == 0.0)
  {
    goto LABEL_15;
  }

  v52 = v26;
  v46 = v27;
  v48 = v25;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v34 = swift_allocObject();
  *(v34 + 32) = v29;
  *(v34 + 40) = v30;
  *(v34 + 48) = v54;
  *(v34 + 64) = v46;
  *(v34 + 80) = v48;
  *(v34 + 96) = v44;
  *(v34 + 112) = v52;
  v35 = 1;
  *(v34 + 120) = 1;
  *(v34 + 16) = v7;
  if (!v7 || (v43 = *(v7 + 24), v37 = __OFADD__(v43, 1), v35 = v43 + 1, !v37))
  {
LABEL_18:
    *(v34 + 24) = v35;
    v29 = 0.0;
    v7 = v34;
    v30 = 0.0;
    goto LABEL_19;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v8 = *(Value + 16);
  v9 = *(Value + 24);
  v41 = *(Value + 40);
  v42 = *(Value + 32);
  type metadata accessor for CGPoint(0);

  v10 = AGGraphGetValue();
  v39 = v10[1] - v9;
  v40 = *v10 - v8;
  v11 = AGGraphGetValue();
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  type metadata accessor for CGSize(0);
  v15 = AGGraphGetValue();
  v16 = *v15;
  v17 = v15[1];
  CGAffineTransformMakeTranslation(&v54, v13 * *v15, v14 * v17);
  CGAffineTransformRotate(&v50, &v54, v12);
  v54 = v50;
  CGAffineTransformTranslate(&v50, &v54, -(v13 * v16), -(v14 * v17));
  a = v50.a;
  b = v50.b;
  c = v50.c;
  d = v50.d;
  tx = v50.tx;
  ty = v50.ty;
  v50.c = 0.0;
  v50.d = c;
  v50.tx = d;
  v50.ty = 0.0;
  v51 = tx;
  v52 = ty;
  v43 = ty;
  v53 = 0x3FF0000000000000;
  if (*AGGraphGetValue() == 1)
  {
    v24 = *AGGraphGetValue();
    v54.a = -1.0;
    memset(&v54.b, 0, 24);
    *&v54.tx = xmmword_18DDAA020;
    v55 = v24;
    v56 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&v50, v44);
    v46[0] = 0xBFF0000000000000;
    memset(&v46[1], 0, 24);
    v47 = xmmword_18DDAA020;
    v48 = v24;
    v49 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v46, v45);
    a = *v45;
    b = *&v45[1];
    v25 = *&v45[2];
    c = *&v45[3];
    d = *&v45[4];
    v26 = *&v45[5];
    tx = *&v45[6];
    v43 = *&v45[7];
    v27 = *&v45[8];
  }

  else
  {
    v27 = 1.0;
    v25 = 0.0;
    v26 = 0.0;
  }

  v28 = v42 - v40;
  v29 = v41 - v39;
  if (v25 == 0.0 && v26 == 0.0 && v27 == 1.0)
  {
    if (a * d - b * c != 0.0)
    {
      if (a == 1.0 && b == 0.0 && c == 0.0 && d == 1.0)
      {
        v30 = v28 - tx;
        v31 = v29 - v43;
LABEL_22:
        *a4 = v7;
        *(a4 + 8) = v6;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
        *(a4 + 32) = v30;
        *(a4 + 40) = v31;
        return;
      }

      goto LABEL_19;
    }

LABEL_14:
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    v31 = v41 - v39;
    v30 = v42 - v40;
    goto LABEL_22;
  }

  if (v25 * (c * v43 - d * tx) + a * (d * v27 - v26 * v43) - b * (c * v27 - v26 * tx) == 0.0)
  {
    goto LABEL_14;
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v32 = swift_allocObject();
  *(v32 + 32) = v42 - v40;
  *(v32 + 40) = v41 - v39;
  *(v32 + 48) = a;
  *(v32 + 56) = b;
  *(v32 + 64) = v25;
  *(v32 + 72) = c;
  *(v32 + 80) = d;
  *(v32 + 88) = v26;
  *(v32 + 96) = tx;
  *(v32 + 104) = v43;
  *(v32 + 112) = v27;
  v33 = 1;
  *(v32 + 120) = 1;
  *(v32 + 16) = v7;
  if (!v7)
  {
    goto LABEL_21;
  }

  v34 = *(v7 + 24);
  v35 = __OFADD__(v34, 1);
  v33 = v34 + 1;
  if (!v35)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_19:
  v36 = v28;
  v37 = v29;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
  v32 = swift_allocObject();
  *(v32 + 32) = v36;
  *(v32 + 40) = v37;
  *(v32 + 48) = a;
  *(v32 + 56) = b;
  *(v32 + 64) = c;
  *(v32 + 72) = d;
  *(v32 + 80) = tx;
  *(v32 + 88) = v43;
  v33 = 1;
  *(v32 + 96) = 1;
  *(v32 + 16) = v7;
  if (!v7 || (v38 = *(v7 + 24), v35 = __OFADD__(v38, 1), v33 = v38 + 1, !v35))
  {
LABEL_21:
    *(v32 + 24) = v33;
    v30 = 0.0;
    v7 = v32;
    v31 = 0.0;
    goto LABEL_22;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v8 = *(Value + 16);
  v9 = *(Value + 24);
  v10 = *(Value + 32);
  v11 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v12 = AGGraphGetValue();
  v13 = *v12 - v8;
  v14 = v12[1] - v9;
  v15 = AGGraphGetValue();
  v16 = v15[1];
  v64 = *v15;
  v65 = v16;
  v17 = v15[3];
  v66 = v15[2];
  v67 = v17;
  type metadata accessor for CGSize(0);
  v18 = AGGraphGetValue();
  ScalePulseEffect.effectValue(size:)(v48, *v18, v18[1]);
  v39 = v48[3];
  v40 = v48[1];
  v42 = v48[2];
  v44 = v49;
  v47 = v48[0];
  v19 = AGGraphGetValue();
  v20 = v42;
  v21 = v44;
  v22 = v40;
  if (*v19 == 1)
  {
    v23 = *AGGraphGetValue();
    v57 = 0xBFF0000000000000;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = xmmword_18DDAA020;
    v62 = v23;
    v63 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v48, v50);
    v53[0] = 0xBFF0000000000000;
    memset(&v53[1], 0, 24);
    v54 = xmmword_18DDAA020;
    v55 = v23;
    v56 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v53, v51);
    v22 = v51[1];
    v47 = v51[0];
    v20 = v51[2];
    v39 = v51[3];
    v21 = v52;
  }

  v24 = v10 - v13;
  v25 = v11 - v14;
  if (v22.f64[0] == 0.0 && v20.f64[1] == 0.0 && v21 == 1.0)
  {
    v26.f64[0] = v20.f64[0];
    v26.f64[1] = v22.f64[1];
    v27 = vmulq_f64(v47, v26);
    if (vsubq_f64(v27, vdupq_laneq_s64(v27, 1)).f64[0] == 0.0)
    {
LABEL_13:
      _StringGuts.grow(_:)(28);
      MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
      _print_unlocked<A, B>(_:_:)();
      specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

LABEL_17:
      *a4 = v7;
      *(a4 + 8) = v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = v24;
      *(a4 + 40) = v25;
      return;
    }

    v28 = vextq_s8(v22, v20, 8uLL);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v47, xmmword_18DDAA020), vceqq_f64(v28, xmmword_18DDAB500))))) & 1) == 0)
    {
      v24 = v24 - *v39.i64;
      v25 = v25 - *&v39.i64[1];
      goto LABEL_17;
    }

    v45 = v28;
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
    v29 = swift_allocObject();
    *(v29 + 32) = v24;
    *(v29 + 40) = v25;
    *(v29 + 48) = v47;
    *(v29 + 64) = v45;
    *(v29 + 80) = v39;
    v30 = 1;
    *(v29 + 96) = 1;
    *(v29 + 16) = v7;
    if (!v7)
    {
      goto LABEL_16;
    }

    v31 = *(v7 + 24);
    v32 = __OFADD__(v31, 1);
    v30 = v31 + 1;
    if (!v32)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v33 = vdupq_laneq_s64(v39, 1);
  v34.f64[1] = v33.f64[1];
  v34.f64[0] = v21;
  v35 = vmulq_f64(v20, v34);
  v33.f64[1] = v21;
  v36.f64[0] = v22.f64[0];
  v36.f64[1] = v47.f64[1];
  v37 = vmulq_f64(v36, vsubq_f64(vmulq_laneq_f64(v33, v22, 1), vmulq_n_f64(v20, *v39.i64)));
  if (v37.f64[0] + vmuld_n_f64(v47.f64[0], vsubq_f64(v35, vdupq_laneq_s64(v35, 1)).f64[0]) - v37.f64[1] == 0.0)
  {
    goto LABEL_13;
  }

  v46 = v21;
  v41 = v22;
  v43 = v20;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v29 = swift_allocObject();
  *(v29 + 32) = v24;
  *(v29 + 40) = v25;
  *(v29 + 48) = v47;
  *(v29 + 64) = v41;
  *(v29 + 80) = v43;
  *(v29 + 96) = v39;
  *(v29 + 112) = v46;
  v30 = 1;
  *(v29 + 120) = 1;
  *(v29 + 16) = v7;
  if (!v7 || (v38 = *(v7 + 24), v32 = __OFADD__(v38, 1), v30 = v38 + 1, !v32))
  {
LABEL_16:
    *(v29 + 24) = v30;
    v24 = 0.0;
    v7 = v29;
    v25 = 0.0;
    goto LABEL_17;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v8 = *(Value + 16);
  v9 = *(Value + 24);
  v59 = *(Value + 40);
  v60 = *(Value + 32);
  type metadata accessor for CGPoint(0);

  v10 = AGGraphGetValue();
  v57 = v10[1] - v9;
  v58 = *v10 - v8;
  v11 = AGGraphGetValue();
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  type metadata accessor for CGSize(0);
  v16 = AGGraphGetValue();
  v17 = *v16 * 0.5;
  v18 = v16[1] * 0.5;
  CGAffineTransformMakeTranslation(&t1, -v17, -v18);
  tx = t1.tx;
  ty = t1.ty;
  v61 = *&t1.a;
  v54 = *&t1.c;
  CGAffineTransformMakeScale(&t1, v12, v13);
  v21 = *&t1.a;
  v22 = *&t1.c;
  v23 = *&t1.tx;
  *&t1.a = v61;
  *&t1.c = v54;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v21;
  *&t2.c = v22;
  *&t2.tx = v23;
  CGAffineTransformConcat(&v67, &t1, &t2);
  v24 = v67.tx;
  v25 = v67.ty;
  v62 = *&v67.a;
  v55 = *&v67.c;
  CGAffineTransformMakeTranslation(&t1, v17, v18);
  v26 = *&t1.a;
  v27 = *&t1.c;
  v28 = *&t1.tx;
  *&t1.a = v62;
  *&t1.c = v55;
  t1.tx = v24;
  t1.ty = v25;
  *&t2.a = v26;
  *&t2.c = v27;
  *&t2.tx = v28;
  CGAffineTransformConcat(&v67, &t1, &t2);
  v29 = v67.tx;
  v30 = v67.ty;
  v63 = *&v67.a;
  v56 = *&v67.c;
  CGAffineTransformMakeTranslation(&t1, v14, v15);
  v31 = *&t1.a;
  v32 = *&t1.c;
  v33 = *&t1.tx;
  *&t1.a = v63;
  *&t1.c = v56;
  t1.tx = v29;
  t1.ty = v30;
  *&t2.a = v31;
  *&t2.c = v32;
  *&t2.tx = v33;
  CGAffineTransformConcat(&v67, &t1, &t2);
  a = v67.a;
  b = v67.b;
  c = v67.c;
  d = v67.d;
  v38 = v67.tx;
  t2.a = v67.a;
  t2.b = v67.b;
  t2.c = 0.0;
  t2.d = v67.c;
  t2.tx = v67.d;
  t2.ty = 0.0;
  v71 = v67.tx;
  v72 = v67.ty;
  v64 = v67.ty;
  v73 = 0x3FF0000000000000;
  if (*AGGraphGetValue() == 1)
  {
    v39 = *AGGraphGetValue();
    t1.a = -1.0;
    memset(&t1.b, 0, 24);
    *&t1.tx = xmmword_18DDAA020;
    v75 = v39;
    v76 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&t2, v65);
    v67.a = -1.0;
    memset(&v67.b, 0, 24);
    *&v67.tx = xmmword_18DDAA020;
    v68 = v39;
    v69 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&v67, v66);
    a = *v66;
    b = *&v66[1];
    v40 = *&v66[2];
    c = *&v66[3];
    d = *&v66[4];
    v41 = *&v66[5];
    v38 = *&v66[6];
    v64 = *&v66[7];
    v42 = *&v66[8];
  }

  else
  {
    v42 = 1.0;
    v40 = 0.0;
    v41 = 0.0;
  }

  v43 = v60 - v58;
  v44 = v59 - v57;
  if (v40 == 0.0 && v41 == 0.0 && v42 == 1.0)
  {
    if (a * d - b * c != 0.0)
    {
      if (a == 1.0 && b == 0.0 && c == 0.0 && d == 1.0)
      {
        v45 = v43 - v38;
        v46 = v44 - v64;
LABEL_22:
        *a4 = v7;
        *(a4 + 8) = v6;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
        *(a4 + 32) = v45;
        *(a4 + 40) = v46;
        return;
      }

      goto LABEL_19;
    }

LABEL_14:
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    v46 = v59 - v57;
    v45 = v60 - v58;
    goto LABEL_22;
  }

  if (v40 * (c * v64 - d * v38) + a * (d * v42 - v41 * v64) - b * (c * v42 - v41 * v38) == 0.0)
  {
    goto LABEL_14;
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v47 = swift_allocObject();
  *(v47 + 32) = v60 - v58;
  *(v47 + 40) = v59 - v57;
  *(v47 + 48) = a;
  *(v47 + 56) = b;
  *(v47 + 64) = v40;
  *(v47 + 72) = c;
  *(v47 + 80) = d;
  *(v47 + 88) = v41;
  *(v47 + 96) = v38;
  *(v47 + 104) = v64;
  *(v47 + 112) = v42;
  v48 = 1;
  *(v47 + 120) = 1;
  *(v47 + 16) = v7;
  if (!v7)
  {
    goto LABEL_21;
  }

  v49 = *(v7 + 24);
  v50 = __OFADD__(v49, 1);
  v48 = v49 + 1;
  if (!v50)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_19:
  v51 = v43;
  v52 = v44;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
  v47 = swift_allocObject();
  *(v47 + 32) = v51;
  *(v47 + 40) = v52;
  *(v47 + 48) = a;
  *(v47 + 56) = b;
  *(v47 + 64) = c;
  *(v47 + 72) = d;
  *(v47 + 80) = v38;
  *(v47 + 88) = v64;
  v48 = 1;
  *(v47 + 96) = 1;
  *(v47 + 16) = v7;
  if (!v7 || (v53 = *(v7 + 24), v50 = __OFADD__(v53, 1), v48 = v53 + 1, !v50))
  {
LABEL_21:
    *(v47 + 24) = v48;
    v45 = 0.0;
    v7 = v47;
    v46 = 0.0;
    goto LABEL_22;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v8 = *(Value + 16);
  v9 = *(Value + 24);
  v10 = *(Value + 32);
  v11 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v12 = AGGraphGetValue();
  v13 = *v12 - v8;
  v14 = v12[1] - v9;
  v15 = AGGraphGetValue();
  v16 = v15[1];
  v63 = *v15;
  v64 = v16;
  v65 = v15[2];
  type metadata accessor for CGSize(0);
  v17 = AGGraphGetValue();
  GlassAppearanceScaleEffect.effectValue(size:)(v47, *v17, v17[1]);
  v38 = v47[3];
  v39 = v47[1];
  v41 = v47[2];
  v43 = v48;
  v46 = v47[0];
  v18 = AGGraphGetValue();
  v19 = v41;
  v20 = v43;
  v21 = v39;
  if (*v18 == 1)
  {
    v22 = *AGGraphGetValue();
    v56 = 0xBFF0000000000000;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = xmmword_18DDAA020;
    v61 = v22;
    v62 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v47, v49);
    v52[0] = 0xBFF0000000000000;
    memset(&v52[1], 0, 24);
    v53 = xmmword_18DDAA020;
    v54 = v22;
    v55 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v52, v50);
    v21 = v50[1];
    v46 = v50[0];
    v19 = v50[2];
    v38 = v50[3];
    v20 = v51;
  }

  v23 = v10 - v13;
  v24 = v11 - v14;
  if (v21.f64[0] == 0.0 && v19.f64[1] == 0.0 && v20 == 1.0)
  {
    v25.f64[0] = v19.f64[0];
    v25.f64[1] = v21.f64[1];
    v26 = vmulq_f64(v46, v25);
    if (vsubq_f64(v26, vdupq_laneq_s64(v26, 1)).f64[0] == 0.0)
    {
LABEL_13:
      _StringGuts.grow(_:)(28);
      MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
      _print_unlocked<A, B>(_:_:)();
      specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

LABEL_17:
      *a4 = v7;
      *(a4 + 8) = v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = v23;
      *(a4 + 40) = v24;
      return;
    }

    v27 = vextq_s8(v21, v19, 8uLL);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v46, xmmword_18DDAA020), vceqq_f64(v27, xmmword_18DDAB500))))) & 1) == 0)
    {
      v23 = v23 - *v38.i64;
      v24 = v24 - *&v38.i64[1];
      goto LABEL_17;
    }

    v44 = v27;
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
    v28 = swift_allocObject();
    *(v28 + 32) = v23;
    *(v28 + 40) = v24;
    *(v28 + 48) = v46;
    *(v28 + 64) = v44;
    *(v28 + 80) = v38;
    v29 = 1;
    *(v28 + 96) = 1;
    *(v28 + 16) = v7;
    if (!v7)
    {
      goto LABEL_16;
    }

    v30 = *(v7 + 24);
    v31 = __OFADD__(v30, 1);
    v29 = v30 + 1;
    if (!v31)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v32 = vdupq_laneq_s64(v38, 1);
  v33.f64[1] = v32.f64[1];
  v33.f64[0] = v20;
  v34 = vmulq_f64(v19, v33);
  v32.f64[1] = v20;
  v35.f64[0] = v21.f64[0];
  v35.f64[1] = v46.f64[1];
  v36 = vmulq_f64(v35, vsubq_f64(vmulq_laneq_f64(v32, v21, 1), vmulq_n_f64(v19, *v38.i64)));
  if (v36.f64[0] + vmuld_n_f64(v46.f64[0], vsubq_f64(v34, vdupq_laneq_s64(v34, 1)).f64[0]) - v36.f64[1] == 0.0)
  {
    goto LABEL_13;
  }

  v45 = v20;
  v40 = v21;
  v42 = v19;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v28 = swift_allocObject();
  *(v28 + 32) = v23;
  *(v28 + 40) = v24;
  *(v28 + 48) = v46;
  *(v28 + 64) = v40;
  *(v28 + 80) = v42;
  *(v28 + 96) = v38;
  *(v28 + 112) = v45;
  v29 = 1;
  *(v28 + 120) = 1;
  *(v28 + 16) = v7;
  if (!v7 || (v37 = *(v7 + 24), v31 = __OFADD__(v37, 1), v29 = v37 + 1, !v31))
  {
LABEL_16:
    *(v28 + 24) = v29;
    v23 = 0.0;
    v7 = v28;
    v24 = 0.0;
    goto LABEL_17;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v8 = *(Value + 16);
  v9 = *(Value + 24);
  v35 = *(Value + 40);
  v38 = *(Value + 32);
  type metadata accessor for CGPoint(0);

  v10 = AGGraphGetValue();
  v33 = v10[1] - v9;
  v34 = *v10 - v8;
  v11 = AGGraphGetValue();
  v13 = *v11;
  v12 = *(v11 + 8);
  v15 = *(v11 + 16);
  v14 = *(v11 + 24);
  v17 = *(v11 + 32);
  v16 = *(v11 + 40);
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  *v48 = v13;
  *&v48[1] = v12;
  v48[2] = 0;
  *&v48[3] = v15;
  *&v48[4] = v14;
  v48[5] = 0;
  *&v48[6] = v17;
  *&v48[7] = v16;
  v41 = v16;
  v48[8] = 0x3FF0000000000000;
  if (*AGGraphGetValue() == 1)
  {
    v18 = *AGGraphGetValue();
    v48[9] = 0xBFF0000000000000;
    memset(&v48[10], 0, 24);
    v49 = xmmword_18DDAA020;
    v50 = v18;
    v51 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v48, v42);
    v44[0] = 0xBFF0000000000000;
    memset(&v44[1], 0, 24);
    v45 = xmmword_18DDAA020;
    v46 = v18;
    v47 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v44, v43);
    v13 = *v43;
    v12 = *&v43[1];
    v19 = *&v43[2];
    v15 = *&v43[3];
    v14 = *&v43[4];
    v20 = *&v43[5];
    v17 = *&v43[6];
    v41 = *&v43[7];
    v21 = *&v43[8];
  }

  else
  {
    v21 = 1.0;
    v19 = 0.0;
    v20 = 0.0;
  }

  v22 = v38 - v34;
  v23 = v35 - v33;
  if (v19 == 0.0 && v20 == 0.0 && v21 == 1.0)
  {
    if (v13 * v14 - v12 * v15 != 0.0)
    {
      if (v13 == 1.0 && v12 == 0.0 && v15 == 0.0 && v14 == 1.0)
      {
        v24 = v22 - v17;
        v25 = v23 - v41;
LABEL_22:
        *a4 = v7;
        *(a4 + 8) = v6;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
        *(a4 + 32) = v24;
        *(a4 + 40) = v25;
        return;
      }

      goto LABEL_19;
    }

LABEL_14:
    v36 = v38 - v34;
    v39 = v23;
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    v24 = v36;
    v25 = v39;
    goto LABEL_22;
  }

  if (v19 * (v15 * v41 - v14 * v17) + v13 * (v14 * v21 - v20 * v41) - v12 * (v15 * v21 - v20 * v17) == 0.0)
  {
    goto LABEL_14;
  }

  v37 = v17;
  v40 = v23;
  v17 = v22;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v26 = swift_allocObject();
  *(v26 + 32) = v17;
  *(v26 + 40) = v40;
  *(v26 + 48) = v13;
  *(v26 + 56) = v12;
  *(v26 + 64) = v19;
  *(v26 + 72) = v15;
  *(v26 + 80) = v14;
  *(v26 + 88) = v20;
  *(v26 + 96) = v37;
  *(v26 + 104) = v41;
  *(v26 + 112) = v21;
  v27 = 1;
  *(v26 + 120) = 1;
  *(v26 + 16) = v7;
  if (!v7)
  {
    goto LABEL_21;
  }

  v28 = *(v7 + 24);
  v29 = __OFADD__(v28, 1);
  v27 = v28 + 1;
  if (!v29)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_19:
  v30 = v22;
  v31 = v23;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
  v26 = swift_allocObject();
  *(v26 + 32) = v30;
  *(v26 + 40) = v31;
  *(v26 + 48) = v13;
  *(v26 + 56) = v12;
  *(v26 + 64) = v15;
  *(v26 + 72) = v14;
  *(v26 + 80) = v17;
  *(v26 + 88) = v41;
  v27 = 1;
  *(v26 + 96) = 1;
  *(v26 + 16) = v7;
  if (!v7 || (v32 = *(v7 + 24), v29 = __OFADD__(v32, 1), v27 = v32 + 1, !v29))
  {
LABEL_21:
    *(v26 + 24) = v27;
    v24 = 0.0;
    v7 = v26;
    v25 = 0.0;
    goto LABEL_22;
  }

  __break(1u);
}

char *storeEnumTagSinglePayload for ModifierTransition(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
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

uint64_t getEnumTagSinglePayload for ModifierTransition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
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
    v9 = v5 + 28 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    *a2 = v10;
    *(a2 + 16) = *(v9 + 16);
    *(a2 + 24) = v11;
    result = memmove(v9, (v9 + 28), 28 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    outlined init with take of MaterialBackdropProxy.Observer(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

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
    v8 = v5 + 120 * a1;
    v9 = *(v8 + 112);
    v10 = v7 - 1;
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v9;
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = *(v8 + 144);
    v11 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v11;
    v12 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v12;
    result = memmove((v8 + 32), (v8 + 152), 120 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

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
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = *(v9 + 80);
    result = memmove((v9 + 32), (v9 + 88), 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

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
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = *(v9 + 80);
    result = memmove((v9 + 32), (v9 + 88), 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

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
    v9 = v5 + 20 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    result = memmove(v9, (v9 + 20), 20 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

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
    v11 = *(v9 + 16);
    v12 = *(v9 + 40);
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = v12;
    result = memmove(v9, (v9 + 48), 48 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

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
    v9 = v5 + 32 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    result = memmove(v9, (v9 + 32), 32 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

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
    v9 = v5 + 32 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    v12 = *(v9 + 28);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = v11;
    *(a2 + 28) = v12;
    result = memmove(v9, (v9 + 32), 32 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

void *CoreViewSetMaskGeometry(void *result, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = result;
  if (result)
  {
    if (result != 1)
    {
      goto LABEL_6;
    }

    result = [a2 maskView];
  }

  else
  {
    result = [a2 mask];
  }

  v6 = result;
  if (!result)
  {
    return result;
  }

LABEL_6:
  if (v11)
  {
    if (v11 != 1)
    {
      return result;
    }

    [v6 setCenter:{a3, a4}];
  }

  else
  {
    [v6 setPosition:{a3, a4}];
  }

  return [v6 setBounds:{a3, a4, a5, a6}];
}

void *CoreViewMaskView(void *result, void *a2)
{
  if (!result)
  {
    return [a2 mask];
  }

  if (result == 1)
  {
    return [a2 maskView];
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle>, &type metadata for Circle, &protocol witness table for Circle, type metadata accessor for ViewBodyAccessor);
    v3 = v2;
    lazy protocol witness table accessor for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>();
    v7[0] = v3;
    v7[1] = &type metadata for MainThreadFlags;
    v7[2] = v4;
    v7[3] = &protocol witness table for MainThreadFlags;
    v5 = type metadata accessor for StaticBody(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for _ShapeView<Circle, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Circle, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Circle and conformance Circle();
    v5[0] = &type metadata for Circle;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Circle, ForegroundStyle>);
    }
  }
}

double specialized StaticBody.updateValue()(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t, char *))
{
  v8 = v3;
  v57 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for ObservationTracking._AccessList();
  v9 = *(v53 - 1);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v47 - v14;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(v21[2]);
  if (!v22)
  {
    v23 = swift_slowAlloc();
    pthread_setspecific(v21[2], v23);
    v56 = type metadata accessor for ObservationCenter();
    v21 = v21[3];
    *&v55 = v21;
    outlined init with take of Any(&v55, v23);

    v22 = v23;
  }

  outlined init with copy of Any(v22, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v45 = v8[2];

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, v8);
    *(v24 + 24) = v46;

    v8 = v46;
    goto LABEL_9;
  }

  v48 = CurrentAttribute;
  v49 = a3;
  swift_beginAccess();
  v51 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  v26 = v53;
  (*(v9 + 56))(v20, 1, 1, v53);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(a1, a2);
  *(StatusReg + 848) = v28;
  v29 = v26;
  outlined init with copy of ObservationTracking._AccessList?(v20, v17, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v9 + 48))(v17, 1, v26) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v20 = v17;
    goto LABEL_12;
  }

  v4 = *(v9 + 32);
  v21 = v47;
  v4(v47, v17, v29);
  (*(v9 + 16))(v52, v21, v29);
  swift_beginAccess();
  v8 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = v8[2];
  v31 = v8[3];
  if (v32 >= v31 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
  }

  v8[2] = v32 + 1;
  v33 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32;
  v29 = v53;
  v4(v33, v52, v53);
  *(v24 + 24) = v8;
  swift_endAccess();
  (*(v9 + 8))(v21, v29);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v24 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v37 = *(v9 + 16);
    v36 = v9 + 16;
    v52 = *(v24 + 24);
    v53 = v37;
    v38 = v34 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v39 = v50;
    v40 = *(v36 + 56);
    v41 = (v36 - 8);

    v42 = v49;
    v43 = v48;
    do
    {
      (v53)(v39, v38, v29);
      v42(v43, v39);
      (*v41)(v39, v29);
      v38 += v40;
      --v35;
    }

    while (v35);
  }

  *(v24 + 24) = v51;

  return result;
}

{
  v8 = v3;
  v58 = *MEMORY[0x1E69E9840];
  v54 = type metadata accessor for ObservationTracking._AccessList();
  v9 = *(v54 - 1);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v48 - v14;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(v21[2]);
  if (!v22)
  {
    v23 = swift_slowAlloc();
    pthread_setspecific(v21[2], v23);
    v57 = type metadata accessor for ObservationCenter();
    v21 = v21[3];
    *&v56 = v21;
    outlined init with take of Any(&v56, v23);

    v22 = v23;
  }

  outlined init with copy of Any(v22, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v46 = v8[2];

    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46 + 1, 1, v8);
    *(v24 + 24) = v47;

    v8 = v47;
    goto LABEL_9;
  }

  v49 = CurrentAttribute;
  v50 = a3;
  swift_beginAccess();
  v52 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  v26 = v54;
  (*(v9 + 56))(v20, 1, 1, v54);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  Value = AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(a1, a2, *Value);
  *(StatusReg + 848) = v28;
  v30 = v26;
  outlined init with copy of ObservationTracking._AccessList?(v20, v17, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v9 + 48))(v17, 1, v26) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v20 = v17;
    goto LABEL_12;
  }

  v4 = *(v9 + 32);
  v21 = v48;
  v4(v48, v17, v30);
  (*(v9 + 16))(v53, v21, v30);
  swift_beginAccess();
  v8 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v33 = v8[2];
  v32 = v8[3];
  if (v33 >= v32 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v8);
  }

  v8[2] = v33 + 1;
  v34 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v33;
  v30 = v54;
  v4(v34, v53, v54);
  *(v24 + 24) = v8;
  swift_endAccess();
  (*(v9 + 8))(v21, v30);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v24 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v38 = *(v9 + 16);
    v37 = v9 + 16;
    v53 = *(v24 + 24);
    v54 = v38;
    v39 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v40 = v51;
    v41 = *(v37 + 56);
    v42 = (v37 - 8);

    v43 = v50;
    v44 = v49;
    do
    {
      (v54)(v40, v39, v30);
      v43(v44, v40);
      (*v42)(v40, v30);
      v39 += v41;
      --v36;
    }

    while (v36);
  }

  *(v24 + 24) = v52;

  return result;
}

BOOL IdentityLinkBox.update(property:phase:)(int *a1)
{
  v2 = *v1;
  v3 = *v1;
  if (!*v1)
  {
    v3 = static ViewIdentity.nextSeed;
    if ((static ViewIdentity.nextSeed + 1) > 1)
    {
      v4 = static ViewIdentity.nextSeed + 1;
    }

    else
    {
      v4 = 1;
    }

    static ViewIdentity.nextSeed = v4;
  }

  *a1 = v3;
  result = v3 != v2;
  *v1 = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for Image.Resolved.UpdateData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017HyphenationFactorF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!v4 || v4[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<HyphenationFactorKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016AllowsTighteningV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AllowsTighteningKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void lazy protocol witness table accessor for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>()
{
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle>, &type metadata for Circle, &protocol witness table for Circle, type metadata accessor for ViewBodyAccessor);
    swift_getWitnessTable(protocol conformance descriptor for ViewBodyAccessor<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AllowsTighteningKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllowsTighteningKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsTighteningKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllowsTighteningKey>>);
    }
  }
}

double key path setter for EnvironmentValues.hyphenationDisabled : EnvironmentValues(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void, __n128))
{
  v9 = *a1;
  v10 = *a2;
  swift_retain_n();
  a5(a2, v9, &v12);

  if (a2[1])
  {
    (a6)(v10, *a2);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<HyphenationFactorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HyphenationFactorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationFactorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HyphenationFactorKey>>);
    }
  }
}

void key path getter for EnvironmentValues.allowsTightening : EnvironmentValues(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t))@<X4>, _BYTE *a4@<X8>, uint64_t a5@<X1>, uint64_t a6@<X2>)
{
  v7 = *a1;
  if (a1[1])
  {

    v9 = a2(v7);
  }

  else
  {
    v9 = a3(*a1, a5, a6, a2);
  }

  *a4 = v9 & 1;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationFactorKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HyphenationFactorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HyphenationFactorKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
        goto LABEL_27;
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

LABEL_27:
  __break(1u);
  return result;
}

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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
        goto LABEL_27;
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = (*(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
      v16 = *v14;
      v15 = v14[1];
      v7 &= v7 - 1;
      *a2 = v16;
      a2[1] = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *initializeWithCopy for MinorProperties(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 16))((v4 + *(v7 + 80) + 8) & ~*(v7 + 80), (v5 + *(v7 + 80) + 8) & ~*(v7 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, void (*a2)(void))
{
  v47 = a2;
  v72 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v54 = v2;
  v55 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v46 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v7 = static Signpost.bodyInvoke;
  v8 = word_1ED539040;
  v9 = HIBYTE(word_1ED539040);
  v10 = byte_1ED539042;
  v11 = static os_signpost_type_t.begin.getter();
  v66 = v7;
  v67 = v8;
  v68 = v9;
  v69 = v10;
  if (Signpost.isEnabled.getter())
  {
    LODWORD(v58) = v11;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18DDAB4C0;
    v13 = AGTypeID.description.getter();
    v15 = v14;
    v16 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v18 = v17;
    *(v12 + 64) = v17;
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v19 = specialized static Tracing.libraryName(defining:)();
    *(v12 + 96) = v16;
    *(v12 + 104) = v18;
    *(v12 + 72) = v19;
    *(v12 + 80) = v20;
    v59 = v12;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v9)
      {
LABEL_6:
        v65 = v58;
        v63 = _signpostLog;
        v64 = &dword_18D018000;
        v66 = v7;
        v67 = v8;
        v61[0] = "%{public}@.body [in %{public}@]";
        v61[1] = 31;
        v62 = 2;
        v60 = v59;
        v21 = v48;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v65, &v64, &v63, &v66, v48, v61, &v60);
        (*(v55 + 8))(v21, v54);
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      if (v9)
      {
        goto LABEL_6;
      }
    }

    if (v7 == 20)
    {
      v22 = 3;
    }

    else
    {
      v22 = 4;
    }

    v23 = bswap32(v7) | (4 * WORD1(v7));
    v24 = v58;
    v25 = v55 + 16;
    v49 = *(v55 + 16);
    v26 = v49(v56, v48, v54);
    v27 = 0;
    LOBYTE(v61[0]) = 1;
    v58 = v22;
    v55 = v25;
    v52 = 16 * v22;
    v53 = (v25 - 8);
    v51 = v59 + 32;
    v50 = v7;
    do
    {
      v57 = &v46;
      MEMORY[0x1EEE9AC00](v26);
      v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = v29 + 8;
      v31 = v58;
      v32 = v29 + 8;
      do
      {
        *(v32 - 1) = 0;
        *v32 = 0;
        v32 += 16;
        --v31;
      }

      while (v31);
      v33 = v51 + 40 * v27;
      v34 = v58;
      while (1)
      {
        v35 = *(v59 + 16);
        if (v27 == v35)
        {
          break;
        }

        if (v27 >= v35)
        {
          __break(1u);
        }

        ++v27;
        outlined init with copy of AnyTrackedValue(v33, &v66);
        v36 = v70;
        v37 = v71;
        __swift_project_boxed_opaque_existential_1(&v66, v70);
        *(v30 - 1) = CVarArg.kdebugValue(_:)(v23 | v24, v36, v37);
        *v30 = v38 & 1;
        v30 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v66);
        v33 += 40;
        if (!--v34)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v61[0]) = 0;
LABEL_20:
      v39 = v50;
      if (v50 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v29[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v29[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v29[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v39 != 20 && v29[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v40 = v54;
      v41 = *v53;
      v42 = v56;
      (*v53)(v56, v54);
      v43 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
      v26 = v49(v42, v43, v40);
    }

    while ((v61[0] & 1) != 0);
    v44 = v54;
    v41(v56, v54);
    v41(v48, v44);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  AGGraphSetUpdate();
  LOWORD(v66) = 256;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  v47(0);
  return AGGraphSetOutputValue();
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(void (*a1)(uint64_t *__return_ptr, _OWORD *))
{
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_1(v1, v6, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, type metadata accessor for HitTestableEvent?);
  if (!*&v6[0])
  {
    return 0;
  }

  v5[4] = v6[4];
  v5[5] = v6[5];
  v5[6] = v6[6];
  v5[0] = v6[0];
  v5[1] = v6[1];
  v5[2] = v6[2];
  v5[3] = v6[3];
  a1(&v7, v5);
  if (v2)
  {
    result = outlined destroy of _LazyLayout_Subview(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of _LazyLayout_Subview(v5);
    return v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_Subview(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

void *LazySubviewPlacements.resolvedPlacementContext(placementContext:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = __src[35];
  v8 = __src[36];
  v9 = *(__src + 296);
  memcpy(__dst, __src, sizeof(__dst));
  v21 = v7;
  v22 = v8;
  v23 = v9;
  LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:)(__dst, a2, __srca);
  memcpy(v24, __srca, sizeof(v24));
  v10 = v26;
  v11 = v27;
  v12 = v28;
  memcpy(__srca, v24, sizeof(__srca));
  v13 = _s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__srca);
  if (v13 == 1)
  {
    v14 = __src;
  }

  else
  {
    v14 = v24;
  }

  if (v13 == 1)
  {
    v15 = v9;
  }

  else
  {
    v7 = v10;
    v8 = v11;
    v15 = v12;
  }

  memcpy(v19, v14, 0x118uLL);
  v19[35] = v7;
  v19[36] = v8;
  LOBYTE(v19[37]) = v15;
  if ((*(v3 + 472) & 1) == 0)
  {
    v17 = *(v3 + 456);
    v16 = *(v3 + 464);
    memcpy(__dst, v24, sizeof(__dst));
    v21 = v10;
    v22 = v11;
    v23 = v12;
    if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) == 1)
    {
      ScrollGeometry.translate(by:limit:)(__PAIR128__(v16, v17), __PAIR128__(v8, v7));
      ScrollGeometry.translate(by:limit:)(__PAIR128__(v16, v17), __PAIR128__(v8, v7));
    }
  }

  return memcpy(a3, v19, 0x129uLL);
}

uint64_t _LazyStack_Cache.reset()(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MinorProperties(255, *(a1 + 16), *(a1 + 24), v8);
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 8))(v2, v10);
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v11 = v2 + *(a1 + 36);
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (v2 + *(a1 + 40));
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + *(a1 + 44));
  *v13 = 0;
  v13[1] = 0;
  v14 = (v2 + *(a1 + 48));
  *v14 = 0;
  v14[1] = 0;
  *(v2 + *(a1 + 52)) = 0xBFF0000000000000;
  *(v2 + *(a1 + 56)) = 0xBFF0000000000000;
  v15 = (v2 + *(a1 + 60));
  v16 = MEMORY[0x1E69E7CC0];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v15 = v17;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v16);

  v15[1] = v18;
  v22[1] = v16;
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  v19 = MEMORY[0x1E69E6530];
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v19, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = type metadata accessor for EstimationCache(0);
  return (*(v5 + 40))(v15 + *(v20 + 24), v7, v4);
}

uint64_t StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, uint64_t a17, char a18, uint64_t a19, uint64_t a20, _OWORD *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v38 = *a4;
  (*(*(a27 - 8) + 32))(a9, a1, a27);
  v40 = type metadata accessor for StackPlacement(0, a27, a28, v39);
  *(a9 + v40[9]) = a2 & 1;
  v41 = v40[10];
  v43 = type metadata accessor for MinorProperties(0, a27, a28, v42);
  (*(*(v43 - 8) + 32))(a9 + v41, a3, v43);
  v44 = (a9 + v40[11]);
  *v44 = a10;
  v44[1] = a11;
  *(a9 + v40[12]) = v38;
  v45 = a9 + v40[13];
  *v45 = a5;
  *(v45 + 8) = a6 & 1;
  *(a9 + v40[14]) = a7;
  *(a9 + v40[15]) = a8;
  *(a9 + v40[16]) = a12;
  v46 = a9 + v40[17];
  *v46 = a17;
  *(v46 + 8) = a18 & 1;
  *(a9 + v40[18]) = a19;
  *(a9 + v40[19]) = a20;
  v47 = (a9 + v40[20]);
  v48 = a21[5];
  v47[4] = a21[4];
  v47[5] = v48;
  v47[6] = a21[6];
  v49 = a21[1];
  *v47 = *a21;
  v47[1] = v49;
  v50 = a21[3];
  v47[2] = a21[2];
  v47[3] = v50;
  *(a9 + v40[21]) = a22;
  v51 = (a9 + v40[22]);
  *v51 = a23;
  v51[1] = a24;
  v52 = (a9 + v40[23]);
  *v52 = a13;
  v52[1] = a14;
  v53 = (a9 + v40[24]);
  *v53 = a15;
  v53[1] = a16;
  *(a9 + v40[25]) = a25;
  v54 = a9 + v40[26];

  return outlined init with take of EstimationCache(a26, v54);
}

uint64_t outlined init with take of EstimationCache(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EstimationCache(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x193AC1170](*(v1 + 40), *&v4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v5, a1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void swapSubviews(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a2;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v6 + 16));
  }

  else
  {
    v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v6 + 24) >> 1);

    *a2 = v7;
  }
}

void *initializeWithCopy for PlacementProperties(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  (*(v8 + 16))((v5 + v10 + 8) & ~v10, (v6 + v10 + 8) & ~v10, AssociatedTypeWitness);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 48) + 7;
  v12 = (a1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 16) = *(v13 + 16);
  *(v12 + 17) = *(v13 + 17);
  v14 = ((v12 + 25) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 25) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v24 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(a3 + 56);
    v18 = (*(a3 + 48) + 16 * v16);
    v19 = v18[1];
    v26[0] = *v18;
    v26[1] = v19;
    v27 = *(v17 + 8 * v16);

    v20 = closure #1 in LazyLayoutViewCache.collect()(v26, &v27, a4);

    if (v5)
    {
      return;
    }

    if (v20)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_16:
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v24, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

double specialized ViewTransform.forEach(inverted:_:)(char a1, uint64_t a2, uint64_t a3, double a4)
{

  return specialized ViewTransform.forEach(inverted:_:)(a1, a2, a3, partial apply for closure #1 in ViewTransform.nearestScrollGeometry.getter, a4);
}

uint64_t _LazyLayoutViewCache.withMutableCacheState<A, B>(type:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v22 = a2;
  v23 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v10 = *v6;
  v11 = *(*v6 + 448);
  v12 = *(*v6 + 440);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v21 - v15;
  v17 = *(v10 + 464);
  swift_beginAccess();
  (*(v14 + 16))(v16, v6 + v17, AssociatedTypeWitness);
  v25 = v12;
  v26 = a3;
  v27 = a4;
  v28 = v11;
  v29 = a1;
  v30 = v22;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, partial apply for closure #1 in _LazyLayoutViewCache.withMutableCacheState<A, B>(type:_:), v24, AssociatedTypeWitness, MEMORY[0x1E69E73E0], a4, MEMORY[0x1E69E7410], v18);
  v19 = $defer #1 <A><A1, B1>() in _LazyLayoutViewCache.withMutableCacheState<A, B>(type:_:)(v6, v16);
  return (*(v14 + 8))(v16, AssociatedTypeWitness, v19);
}

uint64_t type metadata completion function for PlacementProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MinorProperties(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a1;
  v74 = a3;
  v70 = a6;
  v73 = type metadata accessor for PlacementProperties(0, a4, a5, a4);
  v69 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v68 = &v62 - v9;
  v10 = type metadata accessor for EstimationCache(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MinorProperties(0, a4, a5, v12);
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v72 = (&v62 - v14);
  v16 = type metadata accessor for StackPlacement(255, a4, a5, v15);
  v17 = type metadata accessor for Optional();
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  v20 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v76 = *a2;
  v24 = *(a2 + 12);
  v77 = *(a2 + 8);
  v25 = *(a2 + 128);
  v85 = *(a2 + 112);
  v86 = v25;
  v87 = *(a2 + 144);
  v26 = *(a2 + 64);
  v81 = *(a2 + 48);
  v82 = v26;
  v27 = *(a2 + 80);
  v84 = *(a2 + 96);
  v83 = v27;
  v28 = *(a2 + 16);
  v80 = *(a2 + 32);
  v79 = v28;
  v29 = *(a2 + 152);
  v30 = *(a2 + 160);
  v31 = *(a2 + 280);
  v96 = *(a2 + 264);
  v97 = v31;
  v95 = *(a2 + 248);
  v98 = *(a2 + 296);
  v91 = *(a2 + 184);
  v92 = *(a2 + 200);
  v93 = *(a2 + 216);
  v94 = *(a2 + 232);
  v90 = *(a2 + 168);
  v32 = (*(a5 + 32))(a4, a5);
  v78 = v24;
  v88 = v29;
  v89 = v30;
  LazyStack<>.placer(subviews:context:cache:)(&v76, v74, a4, a5, v19);
  if ((*(v20 + 48))(v19, 1, v16) == 1)
  {
    (*(v64 + 8))(v19, v65);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v70, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v64 = *(v20 + 32);
    v65 = v20 + 32;
    (v64)(v23, v19, v16);
    (*(v66 + 16))(v72, &v23[*(v16 + 40)], v67);
    v35 = *(v16 + 44);
    v67 = v23;
    v36 = &v23[v35];
    v37 = *v36;
    v38 = v36[1];
    if (v32)
    {
      *&v29 = v30;
    }

    v39 = 0.0;
    v40 = 0.0;
    if (v24 != *MEMORY[0x1E698D3F8])
    {
      Value = AGGraphGetValue();
      v39 = *Value;
      v40 = Value[1];
    }

    if (v32)
    {
      *&v42 = v40;
    }

    else
    {
      *&v42 = v39;
    }

    v43 = v74;
    v44 = specialized LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:)(v29, 0, v42, 0, v74, a4, a5);
    v46 = type metadata accessor for _LazyStack_Cache(0, a4, a5, v45);
    v47 = *(v46 + 60);
    v48 = v73;
    if (!*(*(v43 + v47) + 16) || (v49 = 0, v50 = 0, (v44 & 1) != 0))
    {
      LODWORD(v66) = v44;
      v51 = v63;
      outlined init with copy of EstimationCache(v43 + v47, v63, type metadata accessor for EstimationCache);
      v52 = *(v43 + *(v46 + 60));

      _LazyStack_Cache.resetEstimates()(v46);
      v75 = 0;
      v76 = 0.0;
      LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(&v76, &v75, v72, v71, v43, a4, a5);
      MEMORY[0x1EEE9AC00](v53);
      *(&v62 - 4) = a4;
      *(&v62 - 3) = a5;
      *(&v62 - 2) = v43;
      specialized LazyStack<>.log(_:)(partial apply for implicit closure #2 in LazyStack<>.resolvedPlacerProperties(subviews:context:cache:), (&v62 - 6), a4);
      v54 = *(v46 + 56);
      if (*(v43 + v54) > *&v42)
      {
        v55 = *(v43 + v54);
      }

      else
      {
        v55 = *&v42;
      }

      specialized sufficientlyDiffers<A, B, C>(lhs:rhs:ratio:baseline:)(v56, v52, 0.9, v55);
      v49 = v57;

      if (v49)
      {
        outlined destroy of EstimationCache(v51, type metadata accessor for EstimationCache);
        v50 = v66;
      }

      else
      {
        outlined assign with take of EstimationCache(v51, v43 + v47);
        v50 = 0;
      }

      v48 = v73;
    }

    v58 = v68;
    PlacementProperties.init(minor:visible:resetEstimates:estimatesChanged:visibleLength:containerLength:)(v72, v50 & 1, v49 & 1, a4, a5, v68, v37, v38, *&v29, *&v42);
    v59 = swift_getTupleTypeMetadata2();
    v60 = *(v59 + 48);
    v61 = v70;
    (v64)(v70, v67, v16);
    (*(v69 + 32))(v61 + v60, v58, v48);
    return (*(*(v59 - 8) + 56))(v61, 0, 1, v59);
  }
}

void storeEnumTagSinglePayload for StackPlacement(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v44 = v7;
  v8 = *(v7 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = *(type metadata accessor for IndexSet() - 8);
  v13 = *(v7 + 64);
  v14 = *(v9 + 80);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= 0x7FFFFFFFu)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (v11 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  v18 = ((v14 + 16) & ~v14) + *(v9 + 64) + 7;
  v19 = (v15 | 7) + 17;
  v20 = ((v15 + 16) & ~v15) + *(v12 + 64);
  v21 = ((v19 + ((((((((((((((((((((v18 + ((v13 + (v14 | 7) + 1) & ~(v14 | 7))) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 43) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v15 | 7)) + v20;
  if (a3 <= v17)
  {
    v24 = 0;
    v22 = a1;
    v23 = a2;
  }

  else
  {
    v22 = a1;
    v23 = a2;
    if (v21 <= 3)
    {
      v27 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v27))
      {
        v24 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v24 = v28;
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else
    {
      v24 = 1;
    }
  }

  if (v17 < v23)
  {
    v25 = ~v17 + v23;
    if (v21 < 4)
    {
      v26 = (v25 >> (8 * v21)) + 1;
      if (v21)
      {
        v29 = v25 & ~(-1 << (8 * v21));
        bzero(v22, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v22 = v29;
            if (v24 > 1)
            {
LABEL_57:
              if (v24 == 2)
              {
                *&v22[v21] = v26;
              }

              else
              {
                *&v22[v21] = v26;
              }

              return;
            }
          }

          else
          {
            *v22 = v25;
            if (v24 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v22 = v29;
        v22[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(v22, ((v19 + ((((((((((((((((((((v18 + ((v13 + (v14 | 7) + 1) & ~(v14 | 7))) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 43) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v15 | 7)) + v20);
      *v22 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v24)
    {
      v22[v21] = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&v22[v21] = 0;
      if (!v23)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v22[v21] = 0;
  }

  else if (v24)
  {
    v22[v21] = 0;
    if (!v23)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v23)
  {
    return;
  }

LABEL_37:
  if (v8 == v17)
  {
    v30 = *(v44 + 56);
    v31 = v22;
    v32 = v23;
    v33 = v8;
    v34 = v6;

LABEL_40:
    v30(v31, v32, v33, v34);
    return;
  }

  v35 = &v22[v13 + 1 + (v14 | 7)] & ~(v14 | 7);
  if (v10 == v17)
  {
    v30 = *(v9 + 56);
    v31 = (v14 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14;
    v32 = v23;
    v33 = v10;
    v34 = AssociatedTypeWitness;

    goto LABEL_40;
  }

  v36 = ((((((((v18 + v35) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) != 0)
  {
    v38 = ((v19 + ((((((((((((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v15 | 7));
    if (v16 >= v23)
    {
      v42 = *(v12 + 56);

      v42((v15 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15, v23);
    }

    else
    {
      if (v20 <= 3)
      {
        v39 = ~(-1 << (8 * v20));
      }

      else
      {
        v39 = -1;
      }

      if (v20)
      {
        v40 = v39 & (~v16 + v23);
        if (v20 <= 3)
        {
          v41 = v20;
        }

        else
        {
          v41 = 4;
        }

        bzero(v38, v20);
        if (v41 > 2)
        {
          if (v41 == 3)
          {
            *v38 = v40;
            v38[2] = BYTE2(v40);
          }

          else
          {
            *v38 = v40;
          }
        }

        else if (v41 == 1)
        {
          *v38 = v40;
        }

        else
        {
          *v38 = v40;
        }
      }
    }
  }

  else
  {
    if ((v23 & 0x80000000) != 0)
    {
      v37 = v23 & 0x7FFFFFFF;
    }

    else
    {
      v37 = (v23 - 1);
    }

    *v36 = v37;
  }
}

uint64_t outlined init with copy of EstimationCache(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t storeEnumTagSinglePayload for _LazyLayout_Subview(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2[1] = v2;
  a2[2] = v4;
  *a2 = v3;
  outlined copy of AttributedString.AnyAttribute(v3, v2);

  return result;
}

Swift::Int __swiftcall ForEachState.estimatedCount(style:)(SwiftUI::_ViewList_IteratorStyle style)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 88);
  v114 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](style.value);
  v118 = &v94 - v6;
  *&v132 = *(v7 + 80);
  v8 = v132;
  *(&v132 + 1) = v5;
  v9 = *(v4 + 112);
  v127 = *(v4 + 96);
  v133 = v127;
  v126 = v9;
  v134 = v9;
  v10 = type metadata accessor for ForEachState.Item(255, &v132);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v94 - v16;
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v94 - v19;
  v110 = *style.value;
  if (!AGSubgraphIsValid())
  {
    goto LABEL_11;
  }

  v20 = *(v4 + 160);
  swift_beginAccess();
  *&v21 = v8;
  *(&v21 + 1) = v5;
  v133 = v127;
  v132 = v21;
  *&v134 = v126;
  v22 = type metadata accessor for ForEach(0, &v132);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v108 = v22;
  v107 = v24;
  v106 = v23 + 48;
  v25.value = (v24)(v2 + v20, 1);
  if (LODWORD(v25.value) == 1)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return v25.value;
  }

  v26 = *(v17 + 16);
  v105 = v20;
  v27 = v2 + v20;
  v28 = v111;
  v104 = v17 + 16;
  v103 = v26;
  v26(v111, v27, v8);
  v102 = *(*(*(&v127 + 1) + 8) + 8);
  v29 = dispatch thunk of Collection.count.getter();
  v31 = *(v17 + 8);
  v30 = v17 + 8;
  v101 = v31;
  v31(v28, v8);
  if (!v29)
  {
    goto LABEL_11;
  }

  v25 = ForEachState.fetchViewsPerElement()();
  if (v25.is_nil)
  {
    v32 = *v2;
    v33 = *(v2 + *(*v2 + 184));
    v34 = *(v33 + 16);
    if (v34 >= v29 && *(v2 + *(v32 + 192)) == v110)
    {
      if (v29 - 1 < v34)
      {
        v25.value = *(v33 + 8 * (v29 - 1) + 32);
        if ((v110 & 1) == 0)
        {
          return v25.value;
        }

        v35 = (v25.value * (v110 >> 1)) >> 64;
        v25.value *= v110 >> 1;
        if (v35 == v25.value >> 63)
        {
          return v25.value;
        }

        __break(1u);
LABEL_11:
        v25.value = 0;
        return v25.value;
      }

      goto LABEL_74;
    }
  }

  else
  {
    if ((v25.value * v29) >> 64 != (v25.value * v29) >> 63)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v36 = v25.value * v29;
    v25.value *= v29;
    if ((v110 & 1) == 0)
    {
      return v25.value;
    }

    v32 = v25.value * (v110 >> 1);
    v25.value = v32;
    if ((v36 * (v110 >> 1)) >> 64 == v32 >> 63)
    {
      return v25.value;
    }

    __break(1u);
  }

  v96 = v30;
  v37 = *(v32 + 200);
  swift_beginAccess();
  v38 = *(v2 + v37);
  *&v126 = v5;
  v97 = v8;
  v109 = v10;
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = __CocoaDictionary.makeIterator()();
    v122 = 0;
    v40 = 0;
    v41 = 0;
    v124 = v39 | 0x8000000000000000;
  }

  else
  {
    v42 = -1 << *(v38 + 32);
    v40 = ~v42;
    v43 = *(v38 + 64);
    v122 = v38 + 64;
    v44 = -v42;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v41 = v45 & v43;
    v124 = v38;
  }

  v46 = v123;
  v47 = *v2;
  v113 = (v114 + 32);
  v119 = TupleTypeMetadata2 - 8;
  v98 = v40;
  v48 = (v40 + 64) >> 6;
  v121 = v2;
  v116 = *(v47 + 240);
  v112 = v114 + 16;
  v120 = (v13 + 32);
  v115 = (v114 + 8);
  v95 = v110 >> 1;

  v100 = 0;
  v99 = 0;
  v49 = 0;
  v50 = v125;
  v51 = v124;
  v117 = v48;
  while (1)
  {
    if ((v51 & 0x8000000000000000) != 0)
    {
      if (__CocoaDictionary.Iterator.next()())
      {
        v68 = v118;
        v69 = v126;
        _forceBridgeFromObjectiveC<A>(_:_:)();
        swift_unknownObjectRelease();
        _forceBridgeFromObjectiveC<A>(_:_:)();
        swift_unknownObjectRelease();
        v70 = *(TupleTypeMetadata2 + 48);
        v71 = v68;
        v46 = v123;
        v72 = v69;
        v50 = v125;
        (*v113)(v125, v71, v72);
        *&v50[v70] = v132;
        v67 = *(TupleTypeMetadata2 - 8);
        (*(v67 + 56))(v50, 0, 1, TupleTypeMetadata2);
      }

      else
      {
        v67 = *(TupleTypeMetadata2 - 8);
        (*(v67 + 56))(v50, 1, 1, TupleTypeMetadata2);
      }

      v55 = v49;
      *&v127 = v41;
    }

    else
    {
      v52 = v41;
      v53 = v49;
      if (!v41)
      {
        if (v48 <= v49 + 1)
        {
          v54 = v49 + 1;
        }

        else
        {
          v54 = v48;
        }

        v55 = v54 - 1;
        v56 = v49;
        while (1)
        {
          v53 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            break;
          }

          if (v53 >= v48)
          {
            v67 = *(TupleTypeMetadata2 - 8);
            (*(v67 + 56))(v50, 1, 1, TupleTypeMetadata2);
            *&v127 = 0;
            goto LABEL_39;
          }

          v52 = *(v122 + 8 * v53);
          ++v56;
          if (v52)
          {
            goto LABEL_33;
          }
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_33:
      *&v127 = (v52 - 1) & v52;
      v57 = __clz(__rbit64(v52)) | (v53 << 6);
      v58 = v114;
      v59 = v118;
      v60 = v12;
      v61 = v126;
      (*(v114 + 16))(v118, *(v51 + 48) + *(v114 + 72) * v57, v126);
      v62 = *(*(v51 + 56) + 8 * v57);
      v63 = *(TupleTypeMetadata2 + 48);
      v64 = *(v58 + 32);
      v50 = v125;
      v65 = v59;
      v46 = v123;
      v66 = v61;
      v12 = v60;
      v64(v125, v65, v66);
      *&v50[v63] = v62;
      v67 = *(TupleTypeMetadata2 - 8);
      (*(v67 + 56))(v50, 0, 1, TupleTypeMetadata2);

      v55 = v53;
    }

LABEL_39:
    (*v120)(v46, v50, v12);
    v25.value = (*(v67 + 48))(v46, 1, TupleTypeMetadata2);
    if (LODWORD(v25.value) == 1)
    {
      break;
    }

    v73 = *&v46[*(TupleTypeMetadata2 + 48)];
    v74 = v121;
    v51 = v124;
    if (*(v73 + *(*v73 + 216)) == *(v121 + v116))
    {
      v75 = v100 + 1;
      v48 = v117;
      if (__OFADD__(v100, 1))
      {
        goto LABEL_68;
      }

      outlined init with copy of _ViewListOutputs.Views(v73 + *(*v73 + 176), &v132);
      v76 = v110;
      v100 = v75;
      if (BYTE8(v134))
      {

        if (*(v74 + 172) == 1)
        {
          goto LABEL_78;
        }

        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
        InputValue = AGGraphGetInputValue();
        outlined init with copy of AnyTrackedValue(InputValue, &v129);
        v78 = v130;
        v79 = v131;
        __swift_project_boxed_opaque_existential_1(&v129, v130);
        v128 = v110;
        v80 = (*(v79 + 24))(&v128, v78, v79);

        v81 = __OFADD__(v99, v80);
        v99 += v80;
        if (v81)
        {
          goto LABEL_69;
        }
      }

      else
      {
        outlined init with take of AnyTrackedValue(&v132, &v129);
        v82 = v131;
        v94 = v130;
        __swift_project_boxed_opaque_existential_1(&v129, v130);
        v83 = (*(v82 + 8))(v94, v82);

        if (v76)
        {
          v84 = (v83 * v95) >> 64;
          v83 *= v95;
          if (v84 != v83 >> 63)
          {
            goto LABEL_75;
          }
        }

        v81 = __OFADD__(v99, v83);
        v99 += v83;
        if (v81)
        {
          goto LABEL_70;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v129);
      v46 = v123;
      v51 = v124;
      v25.value = (*v115)(v123, v126);
      v49 = v55;
      v41 = v127;
    }

    else
    {
      (*v115)(v46, v126);

      v49 = v55;
      v41 = v127;
      v48 = v117;
    }
  }

  outlined consume of Set<EventID>.Iterator._Variant(v124);
  v85 = v121;
  v86 = v105;
  v25.value = v107(v121 + v105, 1, v108);
  if (LODWORD(v25.value) == 1)
  {
    goto LABEL_77;
  }

  v87 = v85 + v86;
  v88 = v111;
  v89 = v97;
  v103(v111, v87, v97);
  v90 = dispatch thunk of Collection.count.getter();
  v25.value = v101(v88, v89);
  v91 = v90 - v100;
  if (__OFSUB__(v90, v100))
  {
    goto LABEL_67;
  }

  v25.value = v99;
  if (v91 < 1)
  {
    return v25.value;
  }

  if (v100 < 1)
  {
    goto LABEL_62;
  }

  v92 = ceil(v99 / v100 * v91);
  if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_71;
  }

  if (v92 <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v92 >= 9.22337204e18)
  {
    goto LABEL_73;
  }

  v91 = v92;
  v25.value = v99 + v92;
  if (__OFADD__(v99, v92))
  {
    __break(1u);
LABEL_62:
    v81 = __OFADD__(v25.value, v91);
    v25.value += v91;
    if (!v81)
    {
      return v25.value;
    }

    __break(1u);
    goto LABEL_65;
  }

  return v25.value;
}

uint64_t specialized StackPlacement.log(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger?(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, static Log.lazyStack);
  outlined init with copy of EstimationCache(v15, v10, type metadata accessor for Logger?);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of EstimationCache(v10, type metadata accessor for Logger?);
  }

  v17 = (*(v12 + 32))(v14, v10, v11);
  v18 = a1(v17);
  v20 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v31 = v18;
    v24 = v23;
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136315394;
    type metadata accessor for StackPlacement(0, a3, a4, v26);
    v27 = _typeName(_:qualified:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v32);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v20, &v32);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_18D018000, v21, v22, "%s: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v25, -1, -1);
    MEMORY[0x193AC4820](v24, -1, -1);
  }

  else
  {
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t StackPlacement.reset(index:position:stoppingCondition:skipFirst:)(uint64_t a1, uint64_t a2, char a3, char a4, int *a5, double a6)
{
  v7 = v6;
  v14 = type metadata accessor for IndexSet();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + a5[14]) = a1;
  *(v7 + a5[16]) = a6;
  *(v7 + a5[15]) = a4;
  v18 = v7 + a5[17];
  *v18 = a2;
  *(v18 + 8) = a3 & 1;
  v19 = a5[18];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v7 + v19);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v21 + 16));
  }

  else
  {
    v22 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v21 + 24) >> 1);

    *(v7 + v19) = v22;
  }

  v23 = a5[19];

  *(v7 + v23) = 0;
  v24 = (v7 + a5[20]);
  outlined destroy of _LazyLayout_Subview?(v24, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
  *v24 = 0u;
  v24[1] = 0u;
  v24[2] = 0u;
  v24[3] = 0u;
  v24[4] = 0u;
  v24[5] = 0u;
  v24[6] = 0u;
  v25 = a5[21];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v7 + v25);
  if (v26)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v27 + 16));
  }

  else
  {
    v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v27 + 24) >> 1);

    *(v7 + v25) = v28;
  }

  *(v7 + a5[22]) = xmmword_18DDAB4E0;
  *(v7 + a5[23]) = xmmword_18DDAB4F0;
  *(v7 + a5[24]) = xmmword_18DDAB4F0;
  *(v7 + a5[25]) = 0;
  v29 = (v7 + a5[26]);
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v29 = v31;
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v30);

  v29[1] = v32;
  v36[1] = v30;
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  v33 = MEMORY[0x1E69E6530];
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v33, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = type metadata accessor for EstimationCache(0);
  return (*(v15 + 40))(v29 + *(v34 + 24), v17, v14);
}

uint64_t outlined destroy of _LazyLayout_PlacedSubview?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI25_LazyLayout_PlacedSubviewVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11DisplayListV4ItemV_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 5) + (v9 >> 63));
  return result;
}

uint64_t applyNode #1 (start:style:node:transform:) in _LazyLayout_Subviews.applyNodes(from:style:to:)(uint64_t a1, void (**a2)(uint64_t, __int128 *, int *), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, __int128 *, int *), uint64_t a8)
{
  v58 = *a2;
  v59 = a1;
  v13 = *a4;
  LODWORD(v60) = *(a4 + 8);
  v14 = outlined init with copy of _ViewList_Node(a3, v76);
  if (v79 > 2u)
  {
    v57 = a8;
    v58 = a7;
    v19 = v76[0];
    v21 = v76[1];
    v20 = v77;
    LODWORD(v56) = v78;
    if (v60)
    {
      v22 = *v13;
      v23 = v13[1];
    }

    else
    {
      v60 = v77;
      *v65 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        outlined init with copy of _ViewList_TemporarySublistTransform.ItemNode(v13, &v80);
        v33 = v82;
        *v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(&v82 + 1) & ~(*(&v82 + 1) >> 63), 0, MEMORY[0x1E69E7CC0]);
        outlined destroy of _AnyAnimatableData(&v80);
        *&v65[8] = v33;
        do
        {
          outlined init with copy of AnyTrackedValue((v13 + 1), &v80);
          LOBYTE(v63) = 0;
          v34 = *&v81[8];
          v35 = *&v81[16];
          v36 = __swift_project_boxed_opaque_existential_1(&v80, *&v81[8]);
          specialized _ViewList_SublistTransform.push(_:flags:)(v36, &v63, v65, v34, v35);
          __swift_destroy_boxed_opaque_existential_1(&v80);
          v13 = *v13;
        }

        while (v13);
      }

      specialized MutableCollection<>.reverse()();
      v23 = *&v65[8];
      v22 = *v65;
      v20 = v60;
    }

    v37 = *a5;
    v38 = *(a5 + 2);
    swift_beginAccess();
    v39 = *(a6 + 16);
    LODWORD(v80) = v19;
    *(&v80 + 1) = v21;
    *v81 = v20;
    v81[8] = v56;
    *&v81[16] = v22;
    *&v81[24] = v23;
    *&v82 = v37;
    DWORD2(v82) = v38;
    *&v83[0] = v39;
    v84 = 1;
    *v65 = v19;
    *&v65[8] = v21;
    *&v65[16] = v20;
    v65[24] = v56;
    v62 = 2;

    v40 = _ViewList_Section.estimatedCount(style:)(&v62);
LABEL_30:
    LOBYTE(v76[0]) = 0;
    v58(v59, &v80, v76);
    outlined destroy of _LazyLayout_Subviews.Node(&v80);
    swift_beginAccess();
    *(a6 + 16) += v40;
    v27 = LOBYTE(v76[0]) ^ 1;
    return v27 & 1;
  }

  if (v79 == 1)
  {
    v58 = a7;
    v15 = *a5;
    v16 = *(a5 + 2);
    outlined init with copy of _ViewList_Node(a3, &v80);
    v57 = a8;
    if (v60)
    {
      v17 = *v13;
      v18 = v13[1];
    }

    else
    {
      v63 = MEMORY[0x1E69E7CC0];
      v64 = 0;
      v56 = v15;
      if (v13)
      {
        outlined init with copy of _ViewList_TemporarySublistTransform.ItemNode(v13, v65);
        v41 = v66;
        v42 = *(&v66 + 1) & ~(*(&v66 + 1) >> 63);

        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0, MEMORY[0x1E69E7CC0]);
        outlined destroy of _AnyAnimatableData(v65);
        v64 = v41;
        do
        {
          outlined init with copy of AnyTrackedValue((v13 + 1), v65);
          LOBYTE(v62) = 0;
          v43 = *&v65[24];
          v44 = *&v65[32];
          v45 = __swift_project_boxed_opaque_existential_1(v65, *&v65[24]);
          specialized _ViewList_SublistTransform.push(_:flags:)(v45, &v62, &v63, v43, v44);
          __swift_destroy_boxed_opaque_existential_1(v65);
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
      }

      specialized MutableCollection<>.reverse()();
      v17 = v63;
      v18 = v64;
      v15 = v56;
    }

    v46 = *(a5 + 32);
    v47 = *(a5 + 132);
    v48 = *(a5 + 133);
    v49 = *(a5 + 134);
    swift_beginAccess();
    v50 = *(a6 + 16);
    *v65 = v15;
    *&v65[8] = v16;
    v66 = *&v81[16];
    v67 = v82;
    v68[0] = v83[0];
    *(v68 + 14) = *(v83 + 14);
    *&v65[16] = v80;
    *&v65[32] = *v81;
    v69 = v17;
    v70 = v18;
    v71 = v46;
    v72 = v47;
    v73 = v48;
    v74 = v49;
    v75 = v50;
    outlined init with copy of _LazyLayout_Subviews(v65, &v80);
    v84 = 0;
    v62 = 2;
    v40 = _ViewList_Node.estimatedCount(style:)(&v62);
    outlined destroy of _LazyLayout_Subviews(v65);
    outlined destroy of _ViewList_Node(v76);
    goto LABEL_30;
  }

  if (v79 == 2)
  {
    v55[1] = v55;
    MEMORY[0x1EEE9AC00](v14);
    v24 = 0;
    v52[2] = a5;
    v52[3] = a6;
    v53 = a7;
    v54 = a8;
    v56 = v25 + 32;
    v57 = v25;
    v26 = *(v25 + 16);
    if (v26)
    {
      goto LABEL_10;
    }

LABEL_9:
    v24 = v26;
    memset(v65, 0, 44);
    while (1)
    {
      *&v81[12] = *&v65[28];
      v80 = *v65;
      *v81 = *&v65[16];
      v27 = *&v65[24] == 0;
      if (!*&v65[24] || (v28 = *&v81[24], outlined init with take of _ViewList_Elements(&v80, v65), v29 = *&v65[24], v30 = *&v65[32], __swift_project_boxed_opaque_existential_1(v65, *&v65[24]), v62 = v58, v63 = v13, LOBYTE(v64) = v60, v31 = *(v30 + 64), v61 = 0, v32 = v31(v59, &v62, v28, &v63, applyNode #1 (start:style:node:transform:) in _LazyLayout_Subviews.applyNodes(from:style:to:)partial apply, v52, v29, v30), __swift_destroy_boxed_opaque_existential_1(v65), (v32 & 1) == 0))
      {

        return v27 & 1;
      }

      if (v24 == v26)
      {
        goto LABEL_9;
      }

LABEL_10:
      if ((v24 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v24 >= *(v57 + 16))
      {
        goto LABEL_33;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v56 + 48 * v24++, v65);
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  LODWORD(v54) = 0;
  v53 = 661;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = outlined init with copy of _LazyLayout_Subviews.Node(a2, &v29);
  if (v38 != 1)
  {
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v20 = v29;
    v21 = v30;
    MEMORY[0x1EEE9AC00](v11);
    v17[2] = a5;
    v17[3] = a6;
    v17[4] = a4;
    *&v18[0] = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(a1, v18, partial apply for closure #1 in closure #1 in StackPlacement.place(subviews:from:position:stopping:style:), v17);
    outlined destroy of _LazyLayout_Subviews(&v20);
    if ((*a3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = 1;
    goto LABEL_6;
  }

  v22 = v31;
  v23 = v32;
  *&v24 = v33;
  v20 = v29;
  v21 = v30;
  v18[2] = v31;
  v18[3] = v32;
  v19 = v33;
  v18[0] = v29;
  v18[1] = v30;
  v13 = type metadata accessor for StackPlacement(0, a5, a6, v12);
  StackPlacement.placeSection(_:from:)(v18, a1, v13);
  outlined destroy of _LazyLayout_Section(&v20);
  if (*a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = type metadata accessor for StackPlacement(0, a5, a6, v14);
  result = StackPlacement.shouldStop()(v15);
LABEL_6:
  *a3 = result;
  return result;
}

uint64_t initializeWithCopy for _LazyLayout_Subviews.Node(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 144);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 != 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    v7 = *(a2 + 109);

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(a1 + 16) = a2[2];
        *(a1 + 109) = 2;
LABEL_13:

        goto LABEL_14;
      }

      *(a1 + 16) = *(a2 + 4);
      v14 = a2[4];
      *(a1 + 24) = a2[3];
      *(a1 + 32) = v14;
      *(a1 + 40) = *(a2 + 40);
      v13 = 3;
    }

    else
    {
      if (!v7)
      {
        v8 = *(a2 + 5);
        *(a1 + 40) = v8;
        (**(v8 - 8))(a1 + 16, a2 + 2);
        *(a1 + 56) = *(a2 + 14);
        *(a1 + 60) = *(a2 + 60);
        *(a1 + 109) = 0;
LABEL_14:
        v15 = a2[15];
        *(a1 + 112) = a2[14];
        *(a1 + 120) = v15;
        *(a1 + 128) = *(a2 + 32);
        *(a1 + 131) = *(a2 + 131);
        *(a1 + 136) = a2[17];
        *(a1 + 144) = 0;

        return a1;
      }

      *(a1 + 16) = *(a2 + 1);
      *(a1 + 32) = a2[4];
      *(a1 + 40) = a2[5];
      v9 = *(a2 + 9);
      *(a1 + 72) = v9;
      v10 = v9;
      v11 = **(v9 - 8);

      v11(a1 + 48, a2 + 6, v10);
      v12 = a2[12];
      *(a1 + 88) = a2[11];
      *(a1 + 96) = v12;
      *(a1 + 104) = *(a2 + 26);
      *(a1 + 108) = *(a2 + 108);
      v13 = 1;
    }

    *(a1 + 109) = v13;

    goto LABEL_13;
  }

  *a1 = *a2;
  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  v6 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v6;
  *(a1 + 48) = a2[6];
  *(a1 + 56) = *(a2 + 14);
  *(a1 + 64) = a2[8];
  *(a1 + 144) = 1;

  return a1;
}

BOOL closure #1 in closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for StackPlacement(0, a4, a5, a4);
  StackPlacement.placeBody(subview:)(a1, v7);
  result = StackPlacement.shouldStop()(v7);
  *a2 = result;
  return result;
}

void StackPlacement.flushMinorGroup()(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v40 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 72);
  v17 = *(v1 + v16);
  if (!*(v17 + 16))
  {
    return;
  }

  v18 = *(a1 + 60);
  if (*(v2 + v18))
  {
    *(v2 + v18) = 0;
LABEL_11:
    v33 = *(v2 + *(a1 + 40));
    v34 = *(a1 + 56);
    v35 = *(v2 + v34);
    v36 = __OFADD__(v35, v33);
    v37 = v35 + v33;
    if (!v36)
    {
      *(v2 + v34) = v37;
      v38 = type metadata accessor for StackPlacement(0, v5, v4, v11);
      swapSubviews(_:_:)((v2 + *(v38 + 76)), (v2 + *(v38 + 72)));
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v45 = v10;
  v46 = v13;
  v44 = v12;
  v19 = *(v2 + *(a1 + 76));
  v20 = v2 + *(a1 + 40);
  v21 = type metadata accessor for MinorProperties(0, v5, v4, v11);
  v22 = *(v4 + 80);
  v42 = *(v21 + 40);
  v43 = v20;
  v23 = v22(v17, v19, &v42[v20], v5, v4);
  v25 = v23;
  v26 = v24;
  if (v19)
  {
    v27 = *&v24;
  }

  else
  {
    v27 = 0;
  }

  StackPlacement.addMeasurements(length:spacing:)(v27, v19 == 0, a1, v23);
  if (!AGGraphHasDeadlinePassed())
  {
    v28 = v46;
    v29 = *(a1 + 64);
    *(v2 + v29) = v26 + *(v2 + v29);
    if (StackPlacement.isVisible(length:)(a1, v25))
    {
      StackPlacement.addVisibleSubview(length:spacing:)(a1, v25, v26);
      StackPlacement.flushPendingHeader()(a1);
      (*(v44 + 16))(v15, v2, v5);
      v30 = *(v2 + v16);
      v41 = v25;
      v31 = (*(v28 + 16))(v8, &v42[v43], v45);
      v43 = v40;
      MEMORY[0x1EEE9AC00](v31);
      v40[-4] = v5;
      v40[-3] = v4;
      v40[-2] = v2;
      v42 = *(v4 + 88);
      v40[1] = v30;

      (v42)(v32, *&v41, 0, v8, partial apply for closure #2 in StackPlacement.flushMinorGroup(), &v40[-6], v5, v4);

      (*(v46 + 8))(v8, v45);
      (*(v44 + 8))(v15, v5);
    }

    *(v2 + v29) = v25 + *(v2 + v29);
    goto LABEL_11;
  }

LABEL_15:
  AGGraphCancelUpdate();
  *(v2 + *(a1 + 100)) = 1;

  $defer #1 <A>() in StackPlacement.flushMinorGroup()(v2, v5, v4, v39);
}

unint64_t StackPlacement.addMeasurements(length:spacing:)(unint64_t a1, char a2, uint64_t a3, double a4)
{
  EstimationCache.add(length:spacing:count:)(a1, a2 & 1, 1, a4);
  v7 = *(v4 + *(a3 + 56));
  type metadata accessor for EstimationCache(0);
  if (a4 == 0.0)
  {
    return *&IndexSet.insert(_:)(v7);
  }

  result = IndexSet.contains(_:)(v7);
  if (result)
  {
    return IndexSet.remove(_:)(v7);
  }

  return result;
}

__n128 StackPlacement.emit(_:at:size:anchor:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = *(a6 + 16);
  v15 = *(a6 + 24);
  v16 = 0.0;
  if (v13)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *a6;
  }

  if (*(a6 + 24))
  {
    v18 = 0.0;
  }

  else
  {
    v18 = *(a6 + 16);
  }

  v19 = v17 * a3 + a1;
  v20 = v18 * a4 + a2;
  if (*(v7 + *(a7 + 40)) == 1)
  {
    if (((*(*(a7 + 24) + 32))() & 1) == 0)
    {
      v13 = 1;
      goto LABEL_12;
    }

    v14 = 0;
    v15 = 1;
  }

  v16 = v12;
LABEL_12:
  LOBYTE(v36[0]) = v13;
  *&v29 = v16;
  BYTE8(v29) = v13;
  v30 = v14;
  v31 = v15;
  v32 = a3;
  v33 = a4;
  v34 = v19;
  v35 = v20;
  _LazyLayout_Subview.place(at:)(&v29, v36);
  v21 = *(a7 + 84);
  v22 = *(v7 + v21);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = &v22[80 * v24];
  *(v25 + 2) = v36[0];
  result = v36[1];
  v27 = v36[2];
  v28 = v36[4];
  *(v25 + 5) = v36[3];
  *(v25 + 6) = v28;
  *(v25 + 3) = result;
  *(v25 + 4) = v27;
  *(v8 + v21) = v22;
  return result;
}

void _LazyLayout_Subview.place(at:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = LazyLayoutViewCache.item(data:)((v2 + 16));
  swift_beginAccess();
  v7 = swift_unownedRetainStrong();
  if (v7)
  {
    v8 = *(v7 + 228);

    *(v6 + 200) = v8;
    *(v6 + 208) = 0;
    v9 = *a1;
    v10 = a1[1];
    *(v6 + 304) = *a1;
    *(v6 + 320) = v10;
    v11 = a1[2];
    v12 = a1[3];
    *(v6 + 336) = v11;
    *(v6 + 352) = v12;
    *(v6 + 368) = 0;
    v13 = *(v3 + 104);
    *a2 = v6;
    *(a2 + 8) = v9;
    *(a2 + 24) = v10;
    *(a2 + 40) = v11;
    *(a2 + 56) = v12;
    *(a2 + 72) = v13;
  }

  else
  {
    __break(1u);
  }
}

double StackPlacement.placedExtent.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 92));
  result = *v2;
  v4 = v2[1];
  if (*v2 < v4)
  {
    if (*v2 <= v4)
    {
      return result;
    }

    __break(1u);
  }

  return *(v1 + *(a1 + 64));
}

unsigned __int16 *assignWithTake for _LazyStack_Cache(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v54 = ~v8;
  if (!v7)
  {
    v14 = 8 * v10;
    if (*(a1 + v10))
    {
      v15 = (*(a1 + v10) - 1) << v14;
      if (v10 > 3)
      {
        v15 = 0;
      }

      if (v10)
      {
        v16 = v10 <= 3 ? ((v8 + 16) & ~v8) + *(v6 + 64) : 4;
        if (v16 > 2)
        {
          v17 = v16 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v17 = v16 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v17 = 0;
      }

      if ((v17 | v15) != 0xFFFFFFFF)
      {
        if (!a2[v10])
        {
          goto LABEL_60;
        }

        v18 = (a2[v10] - 1) << v14;
        if (v10 > 3)
        {
          v18 = 0;
        }

        if (v10)
        {
          v19 = v10 <= 3 ? ((v8 + 16) & ~v8) + *(v6 + 64) : 4;
          if (v19 > 2)
          {
            v20 = v19 == 3 ? *a2 | (a2[2] << 16) : *a2;
          }

          else
          {
            v20 = v19 == 1 ? *a2 : *a2;
          }
        }

        else
        {
          v20 = 0;
        }

        if ((v20 | v18) == 0xFFFFFFFF)
        {
          goto LABEL_60;
        }

LABEL_52:
        if (v7)
        {
          v24 = v10;
        }

        else
        {
          v24 = v10 + 1;
        }

        memcpy(a1, a2, v24);
        goto LABEL_62;
      }
    }

    if (!a2[v10])
    {
LABEL_56:
      *a1 = *a2;
      v25 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v26 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v25 = *v26;
      (*(v6 + 40))((v25 + v8 + 8) & v9, (v26 + v8 + 8) & v9, AssociatedTypeWitness);
      goto LABEL_62;
    }

    v21 = (a2[v10] - 1) << v14;
    if (v10 > 3)
    {
      v21 = 0;
    }

    if (v10)
    {
      if (v10 <= 3)
      {
        v22 = ((v8 + 16) & ~v8) + *(v6 + 64);
      }

      else
      {
        v22 = 4;
      }

      if (v22 > 2)
      {
        if (v22 == 3)
        {
          v23 = *a2 | (a2[2] << 16);
        }

        else
        {
          v23 = *a2;
        }
      }

      else if (v22 == 1)
      {
        v23 = *a2;
      }

      else
      {
        v23 = *a2;
      }
    }

    else
    {
      v23 = 0;
    }

    v13 = (v23 | v21) + 1;
LABEL_50:
    v9 = ~v8;
    if (v13)
    {
      (*(v6 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v54, AssociatedTypeWitness);
      goto LABEL_52;
    }

    goto LABEL_56;
  }

  v11 = *(v6 + 48);
  v12 = v11((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, v7, AssociatedTypeWitness);
  v13 = v11((((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, v7, AssociatedTypeWitness);
  if (!v12)
  {
    goto LABEL_50;
  }

  if (v13)
  {
    goto LABEL_52;
  }

LABEL_60:
  *a1 = *a2;
  v27 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  (*(v6 + 32))((v27 + v8 + 8) & v54, (v28 + v8 + 8) & v54, AssociatedTypeWitness);
  if (!v7)
  {
    *(a1 + v10) = 0;
  }

LABEL_62:
  if (v7)
  {
    v29 = v10;
  }

  else
  {
    v29 = v10 + 1;
  }

  v30 = a1 + v29;
  v31 = &a2[v29];
  v32 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = *v33;
  *(v32 + 8) = *(v33 + 8);
  *v32 = v34;
  v35 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v35 = *v36;
  v35[1] = v36[1];
  v37 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v36 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v37 = *v38;
  v37[1] = v38[1];
  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v39[1] = v40[1];
  v41 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v40 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v41 = *v42;
  v43 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
  v44 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v43 = *v44;
  v45 = type metadata accessor for IndexSet();
  v46 = *(v45 - 8);
  v47 = *(v46 + 80);
  v48 = *(v46 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v49 = ((v43 + v47 + 8) & v48);
  v50 = v44 + v47 + 8;
  v51 = (v50 & v48) + 15;
  *v49 = *(v50 & v48);

  v52 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
  v51 &= 0xFFFFFFFFFFFFFFF8;
  *v52 = *v51;

  (*(v46 + 40))((v52 + v47 + 8) & ~v47, (v47 + 8 + v51) & ~v47, v45);
  return a1;
}

void LazyLayoutViewCache.commitPlacedSubviews(from:to:wasCancelled:context:containingSize:)(char *a1, char **a2, char a3, unsigned int a4, double a5, double a6)
{
  v8 = v6;
  v116 = *v6;
  ++*(v6 + 56);
  v11 = *a2;
  v12 = *(*a2 + 2);
  v119 = v6;
  if (v12)
  {

    swift_beginAccess();
    if (*(v11 + 2))
    {
      v13 = 0;
      v120 = 0;
      v7 = 0;
      v117 = 0;
      v14 = 1;
      v15 = 1;
      do
      {
        v16 = &v11[80 * v13];
        *v133 = *(v16 + 2);
        v17 = *(v16 + 3);
        v18 = *(v16 + 4);
        v19 = *(v16 + 6);
        *&v133[48] = *(v16 + 5);
        *&v133[64] = v19;
        *&v133[16] = v17;
        *&v133[32] = v18;
        v20 = *v133;
        if (*(*v133 + 204) == *(v8 + 56))
        {
          if (*(*v133 + 387))
          {
            outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
          }

          else
          {
            *(*v133 + 387) = 1;
            *&v138 = 0;
            *(&v138 + 1) = 0xE000000000000000;
            outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
            _StringGuts.grow(_:)(80);
            v128 = v138;
            (*(v116 + 392))();
            v22 = _typeName(_:qualified:)();
            MEMORY[0x193ABEDD0](v22);

            MEMORY[0x193ABEDD0](0x444920656874203ALL, 0xE900000000000020);
            v23 = *(v20 + 152);
            *&v124 = *(v20 + 144);
            *(&v124 + 1) = v23;

            _ViewList_ID.Canonical.init(id:)(&v124, &v138);
            v124 = v138;
            v24 = _ViewList_ID.Canonical.description.getter();
            MEMORY[0x193ABEDD0](v24);

            v8 = v119;

            MEMORY[0x193ABEDD0](0xD000000000000043, 0x800000018DD80230);
            specialized static Log.externalWarning(_:)(v128, *(&v128 + 1));
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
          }

          v25 = *(v11 + 2);
          if (v13 >= v25)
          {
            goto LABEL_113;
          }

          v26 = v25 - 1;
          v27 = &v11[80 * v13];
          v128 = *(v27 + 2);
          v28 = *(v27 + 3);
          v29 = *(v27 + 4);
          v30 = *(v27 + 6);
          v131 = *(v27 + 5);
          v132 = v30;
          v129 = v28;
          v130 = v29;
          memmove(v27 + 32, v27 + 112, 80 * (v26 - v13));
          *(v11 + 2) = v26;
          outlined destroy of _LazyLayout_PlacedSubview(v133);
          outlined destroy of _LazyLayout_PlacedSubview(&v128);
          *a2 = v11;
          if (v13 >= --v12)
          {
            goto LABEL_42;
          }
        }

        else
        {
          outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
          outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
          v21 = *(AGGraphGetValue() + 4);
          outlined destroy of _LazyLayout_PlacedSubview(v133);
          if (v21 != 1)
          {
            if (*(v20 + 224) == 1)
            {
              outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
              v31 = *(AGGraphGetValue() + 5);
              outlined destroy of _LazyLayout_PlacedSubview(v133);
              if ((*(v8 + 343) & 1) == 0)
              {
                (*(*v8 + 416))(&v128, v13, v11, a1, v31, a4);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
                }

                if (v13 >= *(v11 + 2))
                {
                  goto LABEL_115;
                }

                v32 = &v11[80 * v13];
                v33 = v128;
                v34 = v129;
                v35 = v130;
                *(v32 + 88) = v131;
                *(v32 + 72) = v35;
                *(v32 + 56) = v34;
                *(v32 + 40) = v33;
                *a2 = v11;
              }

              if (v13 >= *(v11 + 2))
              {
                goto LABEL_114;
              }

              v36 = *&v133[72];
              v37 = &v11[80 * v13];
              v38 = *(v37 + 56);
              v39 = *(v37 + 88);
              v40 = *(v37 + 40);
              v126 = *(v37 + 72);
              v127 = v39;
              v124 = v40;
              v125 = v38;
              v138 = v40;
              v139 = v38;
              v140 = v126;
              v141 = v39;
              outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v41 = a1;
              }

              else
              {
                v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 2) + 1, 1, a1);
              }

              v43 = *(v41 + 2);
              v42 = *(v41 + 3);
              if (v43 >= v42 >> 1)
              {
                v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v41);
              }

              *(v41 + 2) = v43 + 1;
              a1 = v41;
              v44 = &v41[80 * v43];
              *(v44 + 4) = v20;
              v45 = v138;
              v46 = v139;
              v47 = v140;
              *(v44 + 88) = v141;
              *(v44 + 72) = v47;
              *(v44 + 56) = v46;
              *(v44 + 40) = v45;
              *(v44 + 13) = v36;
              v117 = 1;
              v8 = v119;
            }

            else
            {
              v117 = 1;
            }
          }

          *(v20 + 216) = v13;
          *(v20 + 224) = 0;
          *(v20 + 196) = *(v8 + 46);
          *(v20 + 204) = *(v8 + 56);
          LOBYTE(v128) = 0;
          *(v20 + 232) = *&v133[8];
          *(v20 + 248) = *&v133[24];
          v48 = *&v133[56];
          *(v20 + 264) = *&v133[40];
          *(v20 + 280) = v48;
          *(v20 + 296) = 0;
          outlined destroy of _LazyLayout_PlacedSubview(v133);
          v49 = v120;
          if (v14)
          {
            v49 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v49 >= *&v133[72])
          {
            v49 = *&v133[72];
          }

          v120 = v49;
          v50 = 0x8000000000000000;
          if ((v15 & 1) == 0)
          {
            v50 = v7;
          }

          if (v50 <= *&v133[72])
          {
            v7 = *&v133[72];
          }

          else
          {
            v7 = v50;
          }

          ++v13;
          v15 = 0;
          v14 = 0;
          if (v13 >= v12)
          {
LABEL_42:
            v51.value = v7;
            v52.value = v120;
            goto LABEL_44;
          }
        }
      }

      while (v13 < *(v11 + 2));
    }

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
    v89 = __CocoaSet.count.getter();
    if (v89)
    {
      goto LABEL_90;
    }

LABEL_117:

    if (*(v119 + 342) == 1)
    {

      v108 = v117;
    }

    else
    {
      v109 = *(v119 + 341);

      v110 = v109 | v116;
      v108 = v117;
      if ((v110 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    Array<A>.sortForDisplay()();
LABEL_121:
    if (v108)
    {
      if (swift_weakLoadStrong())
      {
        swift_weakInit();
        specialized GraphHost.continueTransaction<A>(_:)(v133);

        outlined destroy of weak AnyGestureResponder?(v133);
      }
    }

    else if ((a3 & 1) == 0 && *(*a2 + 2))
    {
      *(v119 + 343) = 0;
    }

    return;
  }

  v117 = 0;
  v51.value = 0;
  v52.value = 0;
  v15 = 1;
  v14 = 1;
LABEL_44:
  v52.is_nil = v14;
  v51.is_nil = v15 & 1;
  LazyLayoutViewCache.updatePlacedIndices(minIndex:maxIndex:containingSize:)(v52, v51, __PAIR128__(*&a6, *&a5));
  v7 = MEMORY[0x1E69E7CC0];
  v144 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v53 = v8[22];
  v54 = v53 + 64;
  v55 = 1 << *(v53 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & *(v53 + 64);

  swift_beginAccess();
  swift_beginAccess();
  LOBYTE(v116) = 0;
  v58 = 0;
  v59 = (v55 + 63) >> 6;
  while (v57)
  {
LABEL_54:
    v61 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
    v62 = *(*(v53 + 56) + ((v58 << 9) | (8 * v61)));
    if (*(v62 + 204) != *(v8 + 56))
    {
      v63 = *(v62 + 248);
      *v133 = *(v62 + 232);
      *&v133[16] = v63;
      v64 = *(v62 + 280);
      *&v133[32] = *(v62 + 264);
      *&v133[48] = v64;
      if (*(v62 + 296) & 1) != 0 || (*(v62 + 224))
      {
        v8 = v119;
      }

      else
      {
        v121 = v53;
        v114 = *(v62 + 216);

        if (*(AGGraphGetValue() + 4) == 2)
        {
          if (*(v62 + 385) == 1)
          {
            *(v62 + 385) = 0;
            v128 = *v133;
            v129 = *&v133[16];
            v130 = *&v133[32];
            v131 = *&v133[48];
            v117 = 1;
          }

          else
          {
            v81 = *(v62 + 192) == 0;
            v128 = *v133;
            v129 = *&v133[16];
            v130 = *&v133[32];
            v131 = *&v133[48];
            v117 |= v81;
          }

          v8 = v119;
          goto LABEL_83;
        }

        AGGraphClearUpdate();
        v65 = *AGGraphGetValue();
        type metadata accessor for TransactionPropertyKey<FromScrollViewKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
        BloomFilter.init(hashValue:)(v66);
        v67 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(v65, v138);
        if (!v67)
        {
          AGGraphSetUpdate();
          goto LABEL_78;
        }

        v68 = *(v67 + 72);
        v69 = AGGraphSetUpdate();
        if (v68 == 1)
        {
          *(v62 + 216) = 0;
          *(v62 + 224) = 1;
          if (((*(*v119 + 360))(v69) & 1) == 0)
          {
            goto LABEL_71;
          }

          if (one-time initialization token for v7 != -1)
          {
            swift_once();
          }

          v115 = static Semantics.v7;
          if (one-time initialization token for forced != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (byte_1ED53C51C == 1)
          {
            if ((dyld_program_sdk_at_least() & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          else if (static Semantics.forced < v115)
          {
            goto LABEL_71;
          }

          v70 = v119[4];
          BloomFilter.init(hashValue:)(&type metadata for UsingGraphicsRenderer);
          v71 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(v70, v138);
          if (v71)
          {
            v53 = v121;
            if (*(v71 + 72) == 1)
            {
LABEL_71:
              v72 = 0;
              goto LABEL_72;
            }

            v72 = 3;
          }

          else
          {
            v72 = 3;
            v53 = v121;
          }

LABEL_72:
          *(v62 + 212) = v72;
          *(v62 + 188) = *(v119 + 52);
          LOBYTE(v138) = 1;
          *(v62 + 232) = 0u;
          *(v62 + 248) = 0u;
          *(v62 + 264) = 0u;
          *(v62 + 280) = 0u;
          v8 = v119;
          *(v62 + 296) = 1;
        }

        else
        {
LABEL_78:
          AGGraphClearUpdate();
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
          Value = AGGraphGetValue();
          outlined init with copy of AnyTrackedValue(Value, &v124);
          AGGraphSetUpdate();
          v75 = *(&v125 + 1);
          v74 = v126;
          v113 = v126;
          __swift_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
          v76 = *(v62 + 152);
          *&v138 = *(v62 + 144);
          *(&v138 + 1) = v76;
          v142 = v119[25];
          v77 = *(v74 + 72);

          v77(&v143, &v138, &v142, v75, v113);

          v78 = v143 & 1;
          (*(*v119 + 424))(&v138, v114, a1, v11, v78, a4);
          v79 = v78 & ~*(v62 + 132);
          v8 = v119;
          *(v62 + 384) = v79;
          *(v62 + 385) = 1;
          *(v62 + 228) = *(v119 + 56);

          MEMORY[0x193ABF170](v80);
          if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = v144;
          __swift_destroy_boxed_opaque_existential_1(&v124);
          v128 = v138;
          v129 = v139;
          v130 = v140;
          v131 = v141;
          v117 = 1;
LABEL_83:
          v82 = *(v11 + 2);
          *(v62 + 216) = v82;
          *(v62 + 224) = 0;
          *(v62 + 196) = *(v8 + 46);
          v138 = v128;
          v139 = v129;
          v140 = v130;
          v141 = v131;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82 + 1, 1, v11);
          }

          v84 = *(v11 + 2);
          v83 = *(v11 + 3);
          if (v84 >= v83 >> 1)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v11);
          }

          *(v11 + 2) = v84 + 1;
          v85 = &v11[80 * v84];
          *(v85 + 4) = v62;
          v86 = v138;
          v87 = v139;
          v88 = v140;
          *(v85 + 88) = v141;
          *(v85 + 72) = v88;
          *(v85 + 56) = v87;
          *(v85 + 40) = v86;
          *(v85 + 13) = -1;
          *a2 = v11;
          LOBYTE(v116) = 1;
        }
      }
    }
  }

  while (1)
  {
    v60 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
      goto LABEL_107;
    }

    if (v60 >= v59)
    {
      break;
    }

    v57 = *(v54 + 8 * v60);
    ++v58;
    if (v57)
    {
      v58 = v60;
      goto LABEL_54;
    }
  }

  if (v7 >> 62)
  {
    goto LABEL_116;
  }

  v89 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v89)
  {
    goto LABEL_117;
  }

LABEL_90:
  v90 = 0;
  v122 = v7 & 0xC000000000000001;
  v91 = v7 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v122)
    {
      v92 = MEMORY[0x193AC03C0](v90, v7);
      v93 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (v90 >= *(v91 + 16))
      {
        goto LABEL_109;
      }

      v92 = *(v7 + 8 * v90 + 32);

      v93 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        goto LABEL_108;
      }
    }

    if (*(v92 + 224))
    {
      break;
    }

    v94 = *(v92 + 216);
    if ((v94 & 0x8000000000000000) != 0)
    {
      goto LABEL_110;
    }

    if (v94 >= *(v11 + 2))
    {
      goto LABEL_111;
    }

    v95 = v7;
    v96 = &v11[80 * v94];
    v97 = *(v96 + 40);
    v98 = *(v96 + 56);
    v99 = *(v96 + 88);
    v136 = *(v96 + 72);
    v137 = v99;
    v134 = v97;
    v135 = v98;
    v7 = v92 + 232;
    v100 = *(v92 + 248);
    *v133 = *(v92 + 232);
    *&v133[16] = v100;
    v101 = *(v92 + 280);
    *&v133[32] = *(v92 + 264);
    *&v133[48] = v101;
    if (*(v92 + 296))
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    if (v94 >= *(v11 + 2))
    {
      goto LABEL_112;
    }

    v102 = &v11[80 * v94];
    v103 = *v133;
    v104 = *&v133[16];
    v105 = *&v133[32];
    *(v102 + 88) = *&v133[48];
    *(v102 + 72) = v105;
    *(v102 + 56) = v104;
    *(v102 + 40) = v103;
    *a2 = v11;
    LOBYTE(v128) = 0;
    v106 = v135;
    *v7 = v134;
    *(v92 + 248) = v106;
    v107 = v137;
    *(v92 + 264) = v136;
    *(v92 + 280) = v107;
    *(v92 + 296) = 0;

    ++v90;
    v7 = v95;
    if (v93 == v89)
    {
      goto LABEL_117;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
}