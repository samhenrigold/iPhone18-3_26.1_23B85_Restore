void specialized ShapeStyledResponderFilter.updateValue()(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v65[6] = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, a1, a2, a3, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v6 = v5;
  v58 = *Value;
  v7 = *(Value + 8);
  v8 = *(Value + 9);
  v9 = AGGraphGetValue();
  v11 = (v6 | v10) & 1;
  v12 = *v9;
  v13 = *(v3 + 24);
  swift_bridgeObjectRetain_n();

  v14 = AGGraphGetValue();
  v16 = v15;
  v56 = *v14;
  v52 = v14[1];
  type metadata accessor for CGPoint(0);
  v17 = AGGraphGetValue();
  v19 = v18;
  v20 = *v17;
  v21 = v17[1];
  v22 = AGGraphGetValue();
  v24 = *v22;
  v23 = *(v22 + 8);
  v26 = v25 | v19;
  v27 = *(v13 + 10);
  v28 = *(v13 + 11);
  v29 = v13[12];
  v30 = v13[13];
  v31 = v13[14];
  v32 = v13[15];
  if (v26)
  {
    v34 = *(v22 + 32);
    v33 = *(v22 + 40);
    v36 = *(v22 + 16);
    v35 = *(v22 + 24);
    *(v13 + 10) = v24;
    *(v13 + 11) = v23;
    v37 = v34 - (v20 - v36);
    v38 = v33 - (v21 - v35);
    v13[14] = v37;
    v13[15] = v38;
    v13[12] = v20;
    v13[13] = v21;

    v55 = 4;
    v53 = v24;
    v54 = v23;
  }

  else
  {

    v55 = 0;
    v38 = v32;
    v37 = v31;
    v21 = v30;
    v20 = v29;
    v53 = v27;
    v54 = v28;
  }

  if (v16)
  {
    *(v13 + 5) = v56;
    *(v13 + 6) = v52;
    v55 |= 2u;
  }

  if (v11 || !*(v13 + 9))
  {

    v39 = 256;
    if (!v8)
    {
      v39 = 0;
    }

    *(v13 + 7) = v58;
    *(v13 + 8) = v39 | v7;
    *(v13 + 9) = v12;
    LOBYTE(v55) = v55 | 1;

    v53 = *(v13 + 10);
    v54 = *(v13 + 11);
    v20 = v13[12];
    v21 = v13[13];
    v37 = v13[14];
    v38 = v13[15];
  }

  else if (!v55)
  {

    goto LABEL_27;
  }

  v40 = *(v13 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  v42 = *(v40 + 16);
  if (v42)
  {
    v43 = v40 + 32;
    v57 = v41;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v43, v62);
      v61 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v44 = v13, v45 = v63, ObjectType = swift_getObjectType(), v60 = v55, v65[0] = v27, v65[1] = v28, *&v65[2] = v29, *&v65[3] = v30, *&v65[4] = v31, *&v65[5] = v32, v64[0] = v53, v64[1] = v54, *&v64[2] = v20, *&v64[3] = v21, *&v64[4] = v37, *&v64[5] = v38, v46 = *(v45 + 16), , , , , v47 = v45, v13 = v44, v46(v44, &v60, v65, v64, &v61, ObjectType, v47), swift_unknownObjectRelease(), , , , , v61 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v62);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v62, v65);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v44 + 16) = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
          *(v44 + 16) = v57;
        }

        v50 = v57[2];
        v49 = v57[3];
        if (v50 >= v49 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v57);
          *(v44 + 16) = v57;
        }

        outlined destroy of ContentPathObservers.Observer(v62);
        v57[2] = v50 + 1;
        outlined init with take of ContentPathObservers.Observer(v65, &v57[2 * v50 + 4]);
        *(v44 + 16) = v57;
      }

      v43 += 16;
      --v42;
    }

    while (v42);
  }

  else
  {
  }

LABEL_27:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18DDAB4D0;
    *(v51 + 32) = v13;
    v65[0] = v51;

    AGGraphSetOutputValue();
  }
}

void specialized ShapeStyledResponderFilter.updateValue()(uint64_t (*a1)(void))
{
  v65[6] = *MEMORY[0x1E69E9840];
  a1(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v58 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = AGGraphGetValue();
  v9 = (v4 | v8) & 1;
  v10 = *v7;
  v11 = *(v1 + 24);
  swift_bridgeObjectRetain_n();

  v12 = AGGraphGetValue();
  v14 = v13;
  v56 = *v12;
  v52 = v12[1];
  type metadata accessor for CGPoint(0);
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  v20 = AGGraphGetValue();
  v22 = *v20;
  v21 = *(v20 + 8);
  v24 = v23 | v17;
  v25 = *(v11 + 9);
  v26 = *(v11 + 10);
  v27 = v11[11];
  v28 = v11[12];
  v29 = v11[13];
  v30 = v11[14];
  if (v24)
  {
    v32 = *(v20 + 32);
    v31 = *(v20 + 40);
    v34 = *(v20 + 16);
    v33 = *(v20 + 24);
    *(v11 + 9) = v22;
    *(v11 + 10) = v21;
    v35 = v32 - (v18 - v34);
    v36 = v31 - (v19 - v33);
    v11[13] = v35;
    v11[14] = v36;
    v11[11] = v18;
    v11[12] = v19;

    v55 = 4;
    v53 = v22;
    v54 = v21;
  }

  else
  {

    v55 = 0;
    v36 = v30;
    v35 = v29;
    v19 = v28;
    v18 = v27;
    v53 = v25;
    v54 = v26;
  }

  if (v14)
  {
    *(v11 + 5) = v56;
    *(v11 + 6) = v52;
    v55 |= 2u;
  }

  if (v9 || !*(v11 + 8))
  {

    v37 = 256;
    if (!v5)
    {
      v37 = 0;
    }

    v38 = v37 | v58;
    v39 = 0x10000;
    if (!v6)
    {
      v39 = 0;
    }

    *(v11 + 7) = v38 | v39;
    *(v11 + 8) = v10;
    LOBYTE(v55) = v55 | 1;

    v53 = *(v11 + 9);
    v54 = *(v11 + 10);
    v18 = v11[11];
    v19 = v11[12];
    v35 = v11[13];
    v36 = v11[14];
  }

  else if (!v55)
  {

    goto LABEL_29;
  }

  v40 = *(v11 + 15);
  v41 = MEMORY[0x1E69E7CC0];
  *(v11 + 15) = MEMORY[0x1E69E7CC0];
  v42 = *(v40 + 16);
  if (v42)
  {
    v43 = v40 + 32;
    v57 = v41;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v43, v62);
      v61 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v44 = v11, v45 = v63, ObjectType = swift_getObjectType(), v60 = v55, v65[0] = v25, v65[1] = v26, *&v65[2] = v27, *&v65[3] = v28, *&v65[4] = v29, *&v65[5] = v30, v64[0] = v53, v64[1] = v54, *&v64[2] = v18, *&v64[3] = v19, *&v64[4] = v35, *&v64[5] = v36, v46 = *(v45 + 16), , , , , v47 = v45, v11 = v44, v46(v44, &v60, v65, v64, &v61, ObjectType, v47), swift_unknownObjectRelease(), , , , , v61 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v62);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v62, v65);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v44 + 15) = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
          *(v44 + 15) = v57;
        }

        v50 = v57[2];
        v49 = v57[3];
        if (v50 >= v49 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v57);
          *(v44 + 15) = v57;
        }

        outlined destroy of ContentPathObservers.Observer(v62);
        v57[2] = v50 + 1;
        outlined init with take of ContentPathObservers.Observer(v65, &v57[2 * v50 + 4]);
        *(v44 + 15) = v57;
      }

      v43 += 16;
      --v42;
    }

    while (v42);
  }

  else
  {
  }

LABEL_29:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18DDAB4D0;
    *(v51 + 32) = v11;
    v65[0] = v51;

    AGGraphSetOutputValue();
  }
}

{
  v62[6] = *MEMORY[0x1E69E9840];
  a1(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = Value[1];
  v7 = AGGraphGetValue();
  v9 = (v4 | v8) & 1;
  v10 = *v7;
  v11 = *(v1 + 24);
  swift_bridgeObjectRetain_n();

  v12 = AGGraphGetValue();
  v14 = v13;
  v53 = v12[1];
  v55 = *v12;
  type metadata accessor for CGPoint(0);
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  v20 = AGGraphGetValue();
  v22 = *v20;
  v21 = *(v20 + 8);
  v24 = v23 | v17;
  v25 = *(v11 + 9);
  v26 = *(v11 + 10);
  v27 = v11[11];
  v28 = v11[12];
  v29 = v11[13];
  v30 = v11[14];
  if (v24)
  {
    v32 = *(v20 + 32);
    v31 = *(v20 + 40);
    v34 = *(v20 + 16);
    v33 = *(v20 + 24);
    *(v11 + 9) = v22;
    *(v11 + 10) = v21;
    v35 = v32 - (v18 - v34);
    v36 = v31 - (v19 - v33);
    v11[13] = v35;
    v11[14] = v36;
    v11[11] = v18;
    v11[12] = v19;

    v52 = 4;
    v50 = v22;
    v51 = v21;
  }

  else
  {

    v52 = 0;
    v36 = v30;
    v35 = v29;
    v19 = v28;
    v18 = v27;
    v50 = v25;
    v51 = v26;
  }

  if (v14)
  {
    *(v11 + 5) = v55;
    *(v11 + 6) = v53;
    v52 |= 2u;
  }

  if (v9 || !*(v11 + 8))
  {

    v37 = 256;
    if (!v6)
    {
      v37 = 0;
    }

    *(v11 + 7) = v37 | v5;
    *(v11 + 8) = v10;
    LOBYTE(v52) = v52 | 1;

    v50 = *(v11 + 9);
    v51 = *(v11 + 10);
    v18 = v11[11];
    v19 = v11[12];
    v35 = v11[13];
    v36 = v11[14];
  }

  else if (!v52)
  {

    goto LABEL_27;
  }

  v38 = *(v11 + 15);
  v39 = MEMORY[0x1E69E7CC0];
  *(v11 + 15) = MEMORY[0x1E69E7CC0];
  v40 = *(v38 + 16);
  if (v40)
  {
    v41 = v38 + 32;
    v54 = v39;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v41, v59);
      v58 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v42 = v11, v43 = v60, ObjectType = swift_getObjectType(), v57 = v52, v62[0] = v25, v62[1] = v26, *&v62[2] = v27, *&v62[3] = v28, *&v62[4] = v29, *&v62[5] = v30, v61[0] = v50, v61[1] = v51, *&v61[2] = v18, *&v61[3] = v19, *&v61[4] = v35, *&v61[5] = v36, v44 = *(v43 + 16), , , , , v45 = v43, v11 = v42, v44(v42, &v57, v62, v61, &v58, ObjectType, v45), swift_unknownObjectRelease(), , , , , v58 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v59);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v59, v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v42 + 15) = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
          *(v42 + 15) = v54;
        }

        v48 = v54[2];
        v47 = v54[3];
        if (v48 >= v47 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v54);
          *(v42 + 15) = v54;
        }

        outlined destroy of ContentPathObservers.Observer(v59);
        v54[2] = v48 + 1;
        outlined init with take of ContentPathObservers.Observer(v62, &v54[2 * v48 + 4]);
        *(v42 + 15) = v54;
      }

      v41 += 16;
      --v40;
    }

    while (v40);
  }

  else
  {
  }

LABEL_27:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_18DDAB4D0;
    *(v49 + 32) = v11;
    v62[0] = v49;

    AGGraphSetOutputValue();
  }
}

void specialized ShapeStyledResponderFilter.updateValue()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(__int128 *))
{
  v96 = *MEMORY[0x1E69E9840];
  a1(0);
  Value = AGGraphGetValue();
  v7 = v6;
  v8 = *Value;
  v10 = *(Value + 8);
  v9 = *(Value + 16);
  v12 = *(Value + 24);
  v11 = *(Value + 32);
  v13 = *(Value + 40);
  v14 = *(Value + 41);

  v15 = *AGGraphGetValue();
  v17 = *(v3 + 24);
  *&v83 = v8;
  v56 = v10;
  *&v57 = v9;
  *(&v83 + 1) = v10;
  *&v84 = v9;
  *(&v57 + 1) = v12;
  v58 = v11;
  *(&v84 + 1) = v12;
  *&v85 = v11;
  v59 = v13;
  v60 = v14;
  BYTE8(v85) = v13;
  BYTE9(v85) = v14;
  v86 = v15;
  v62 = (v7 | v16) & 1;
  v87 = v62;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v83, &v91, a2);
  v18 = AGGraphGetValue();
  v20 = v19;
  v21 = *v18;
  v22 = v18[1];
  type metadata accessor for CGPoint(0);
  v23 = AGGraphGetValue();
  v25 = v24;
  v26 = *v23;
  v27 = v23[1];
  v28 = AGGraphGetValue();
  v30 = *v28;
  v29 = *(v28 + 8);
  v31 = *(v28 + 16);
  v32 = *(v28 + 24);
  v34 = *(v28 + 32);
  v33 = *(v28 + 40);
  v79 = v83;
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v67 = *(v17 + 128);
  v68 = *(v17 + 144);
  v74 = v17;
  v69 = *(v17 + 120);
  v70 = *(v17 + 112);
  if ((v35 | v25))
  {

    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v83, &v91, a2);
    *(v17 + 112) = v30;
    *(v17 + 120) = v29;
    *(v17 + 144) = v34 - (v26 - v31);
    *(v17 + 152) = v33 - (v27 - v32);
    *(v17 + 128) = v26;
    *(v17 + 136) = v27;
    v71 = 4;
  }

  else
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v83, &v91, a2);

    v71 = 0;
  }

  v36 = v62;
  v37 = a3;
  if (v20)
  {
    v38 = v17;
    *(v17 + 40) = v21;
    *(v17 + 48) = v22;
    v71 |= 2u;
  }

  else
  {
    v38 = v17;
  }

  v39 = *(v38 + 56);
  if ((v62 & 1) != 0 || !v39)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<Rectangle, AngularGradient>>?(v39, *(v38 + 64), *(v38 + 72), *(v38 + 80), *(v38 + 88), *(v38 + 96), *(v38 + 104));
    v91 = v79;
    v92 = v80;
    v93 = v81;
    v95 = v62;
    v42 = v80;
    *(v38 + 56) = v79;
    v43 = v82;
    v94 = v82;
    *(v38 + 72) = v42;
    *(v38 + 88) = v93;
    *(v38 + 104) = v43;
    LOBYTE(v71) = v71 | 1;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v91, v88, a2);
  }

  else if (!v71)
  {
    v91 = v79;
    v92 = v80;
    v93 = v81;
    v94 = v82;
    v95 = v62;
    a3(&v91);

    v40 = v59;
    v41 = v60;
    goto LABEL_26;
  }

  v55 = v15;
  v66 = *(v38 + 112);
  v64 = *(v38 + 120);
  v65 = *(v38 + 144);
  v63 = *(v38 + 128);
  v44 = *(v38 + 160);
  v45 = MEMORY[0x1E69E7CC0];
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  v46 = *(v44 + 16);
  v40 = v59;
  v41 = v60;
  if (v46)
  {
    v54 = v8;
    v47 = v44 + 32;
    v72 = v45;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v47, v77);
      v76 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v48 = v78, ObjectType = swift_getObjectType(), v75 = v71, *&v91 = v70, *(&v91 + 1) = v69, v92 = v67, v93 = v68, v88[0] = v66, v88[1] = v64, v89 = v63, v90 = v65, v49 = *(v48 + 16), , , , , v49(v74, &v75, &v91, v88, &v76, ObjectType, v48), swift_unknownObjectRelease(), , , , , v76 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v77);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v77, &v91);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v74 + 160) = v72;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72[2] + 1, 1, v72);
          *(v74 + 160) = v72;
        }

        v52 = v72[2];
        v51 = v72[3];
        if (v52 >= v51 >> 1)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v72);
          *(v74 + 160) = v72;
        }

        outlined destroy of ContentPathObservers.Observer(v77);
        v72[2] = v52 + 1;
        outlined init with take of ContentPathObservers.Observer(&v91, &v72[2 * v52 + 4]);
        *(v74 + 160) = v72;
      }

      v47 += 16;
      --v46;
    }

    while (v46);

    v37 = a3;
    v8 = v54;
    v40 = v59;
    v41 = v60;
  }

  else
  {
  }

  v91 = v79;
  v92 = v80;
  v93 = v81;
  v94 = v82;
  v36 = v62;
  v95 = v62;
  v37(&v91);

  v15 = v55;
LABEL_26:
  v37(&v83);
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    *&v91 = v8;
    *(&v91 + 1) = v56;
    v92 = v57;
    *&v93 = v58;
    BYTE8(v93) = v40;
    BYTE9(v93) = v41;
    *(&v93 + 10) = v79;
    HIWORD(v93) = WORD2(v79);
    v94 = v15;
    v95 = v36;
    v37(&v91);
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_18DDAB4D0;
    *(v53 + 32) = v74;
    v88[0] = v53;

    AGGraphSetOutputValue();
    *&v91 = v8;
    *(&v91 + 1) = v56;
    v92 = v57;
    *&v93 = v58;
    BYTE8(v93) = v40;
    BYTE9(v93) = v41;
    *(&v93 + 10) = v79;
    HIWORD(v93) = WORD2(v79);
    v94 = v15;
    v95 = v36;
    v37(&v91);
  }
}

void specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v98 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v75 = v13;
  v76 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v77 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v68 = v63 - v17;
  Value = AGGraphGetValue();
  v20 = *Value;
  v21 = Value[1];
  if (a3)
  {
    goto LABEL_2;
  }

  if ((v19 & 1) == 0)
  {
    return;
  }

  if ((a6 & 1) == 0)
  {
LABEL_2:
  }

  else
  {

    v23 = swift_retain_n();
    v24 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v23);

    if ((v24 & 1) == 0)
    {

      return;
    }
  }

  v66 = a1;
  PropertyList.Tracker.reset()();
  if (v20)
  {
    v22 = *(v20 + 64);
  }

  else
  {
    v22 = 0;
  }

  v63[1] = v21;
  v65 = a2;
  v25 = *(a5 + 16);
  swift_retain_n();
  v67 = a5;

  os_unfair_lock_lock((v25 + 16));
  *(v25 + 24) = v22;
  os_unfair_lock_unlock((v25 + 16));

  v64 = v20;

  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v26 = static Signpost.bodyInvoke;
    v27 = word_1ED539040;
    v28 = HIBYTE(word_1ED539040);
    v29 = byte_1ED539042;
    v30 = static os_signpost_type_t.begin.getter();
    v91 = v26;
    LOBYTE(v92) = v27;
    BYTE1(v92) = v28;
    BYTE2(v92) = v29;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v74 = *(&v26 + 1);
    LODWORD(v78) = v30;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_18DDAB4C0;
    v32 = AGTypeID.description.getter();
    v34 = v33;
    v35 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v37 = v36;
    *(v31 + 64) = v36;
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    v38 = specialized static Tracing.libraryName(defining:)();
    *(v31 + 96) = v35;
    *(v31 + 104) = v37;
    *(v31 + 72) = v38;
    *(v31 + 80) = v39;
    v79 = v31;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v28)
    {
      v83 = v78;
      v81 = _signpostLog;
      v82 = &dword_18D018000;
      *&v91 = v26;
      *(&v91 + 1) = v74;
      LOBYTE(v92) = v27;
      *&v84 = "%{public}@.body [in %{public}@]";
      *(&v84 + 1) = 31;
      LOBYTE(v85) = 2;
      v80 = v79;
      v40 = v68;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v83, &v82, &v81, &v91, v68, &v84, &v80);
      (*(v76 + 8))(v40, v75);
LABEL_45:

      break;
    }

    if (v26 == 20)
    {
      v41 = 3;
    }

    else
    {
      v41 = 4;
    }

    v42 = bswap32(v26) | (4 * WORD1(v26));
    v43 = v78;
    v44 = v76 + 16;
    v69 = *(v76 + 16);
    v45 = v69(v77, v68, v75);
    v46 = 0;
    LOBYTE(v84) = 1;
    v76 = v44;
    v73 = 16 * *(&v26 + 1);
    v74 = (v44 - 8);
    v71 = v26;
    v72 = v79 + 32;
    v70 = *(&v26 + 1);
LABEL_22:
    v78 = v63;
    MEMORY[0x1EEE9AC00](v45);
    v48 = v63 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = v48 + 8;
    v50 = v41;
    v51 = v48 + 8;
    do
    {
      *(v51 - 1) = 0;
      *v51 = 0;
      v51 += 16;
      --v50;
    }

    while (v50);
    v52 = v72 + 40 * v46;
    while (1)
    {
      v53 = *(v79 + 16);
      if (v46 == v53)
      {
        LOBYTE(v84) = 0;
LABEL_30:
        v57 = v71;
        if (v71 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v48[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v48[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v48[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v57 != 20 && v48[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v58 = v75;
        v59 = *v74;
        v60 = v77;
        (*v74)(v77, v75);
        v61 = __swift_project_value_buffer(v58, static OSSignpostID.continuation);
        v45 = v69(v60, v61, v58);
        v41 = v70;
        if ((v84 & 1) == 0)
        {
          v62 = v75;
          v59(v77, v75);
          v59(v68, v62);
          goto LABEL_45;
        }

        goto LABEL_22;
      }

      if (v46 >= v53)
      {
        break;
      }

      ++v46;
      outlined init with copy of AnyTrackedValue(v52, &v91);
      v54 = *(&v92 + 1);
      v55 = v93;
      __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
      *(v49 - 1) = CVarArg.kdebugValue(_:)(v42 | v43, v54, v55);
      *v49 = v56 & 1;
      v49 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v91);
      v52 += 40;
      if (!--v41)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_49:
    swift_once();
  }

  AGGraphClearUpdate();
  *&v84 = v64;
  *(&v84 + 1) = v67;
  VariableBlurEffect.resolve(in:)(&v84, v66, v65 & 1, &v91, a7);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  AGGraphSetOutputValue();

  v88 = v95;
  v89 = v96;
  v90[0] = v97[0];
  *(v90 + 12) = *(v97 + 12);
  v84 = v91;
  v85 = v92;
  v86 = v93;
  v87 = v94;
  outlined destroy of VariableBlurStyle(&v84);
}

void specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7)
{
  v96 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v81 = v13;
  v82 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v83 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = v70 - v17;
  Value = AGGraphGetValue();
  v20 = *Value;
  v21 = Value[1];
  if (a2)
  {
    goto LABEL_2;
  }

  if ((v19 & 1) == 0)
  {
    return;
  }

  if ((a5 & 1) == 0)
  {
LABEL_2:

    goto LABEL_3;
  }

  v23 = swift_retain_n();
  v24 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v23);

  if (v24)
  {
LABEL_3:
    PropertyList.Tracker.reset()();
    if (v20)
    {
      v22 = *(v20 + 64);
    }

    else
    {
      v22 = 0;
    }

    v25 = *(a4 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v25 + 16));
    *(v25 + 24) = v22;
    os_unfair_lock_unlock((v25 + 16));

    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v26 = static Signpost.bodyInvoke;
    v27 = word_1ED539040;
    v28 = HIBYTE(word_1ED539040);
    v29 = byte_1ED539042;
    v30 = static os_signpost_type_t.begin.getter();
    v91 = v26;
    LOBYTE(v92) = v27;
    BYTE1(v92) = v28;
    BYTE2(v92) = v29;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v84) = v30;
    v70[1] = v21;
    v71 = a1;
    v72 = v20;
    v73 = a4;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_18DDAB4C0;
    v32 = AGTypeID.description.getter();
    v34 = v33;
    v35 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v37 = v36;
    *(v31 + 64) = v36;
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    v38 = specialized static Tracing.libraryName(defining:)();
    *(v31 + 96) = v35;
    *(v31 + 104) = v37;
    *(v31 + 72) = v38;
    *(v31 + 80) = v39;
    if (one-time initialization token for _signpostLog == -1)
    {
      v40 = v84;
      if (v28)
      {
LABEL_17:
        v90 = v40;
        v88 = _signpostLog;
        v89 = &dword_18D018000;
        v91 = v26;
        LOBYTE(v92) = v27;
        v86[0] = "%{public}@.body [in %{public}@]";
        v86[1] = 31;
        v87 = 2;
        v85 = v31;
        v41 = v74;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v90, &v89, &v88, &v91, v74, v86, &v85);
        (*(v82 + 8))(v41, v81);
LABEL_46:

        a4 = v73;
        v20 = v72;
        a1 = v71;
LABEL_47:
        AGGraphClearUpdate();
        *&v91 = v20;
        *(&v91 + 1) = a4;
        *&v64 = (*(*a1 + 112))(&v91);
        v65 = a7;
        *&v91 = __PAIR64__(v66, v64);
        v67 = a6;
        *(&v91 + 1) = __PAIR64__(v69, v68);
        v92 = v65;
        v93 = v67;
        AGGraphSetUpdate();
        $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        AGGraphSetOutputValue();

        return;
      }
    }

    else
    {
      swift_once();
      v40 = v84;
      if (v28)
      {
        goto LABEL_17;
      }
    }

    if (v26 == 20)
    {
      v42 = 3;
    }

    else
    {
      v42 = 4;
    }

    v43 = bswap32(v26) | (4 * WORD1(v26));
    v44 = v40;
    v45 = v82 + 16;
    v75 = *(v82 + 16);
    v46 = v75(v83, v74, v81);
    v47 = 0;
    LOBYTE(v86[0]) = 1;
    v82 = v45;
    v79 = 16 * v42;
    v80 = (v45 - 8);
    v78 = v31 + 32;
    v77 = v26;
    v76 = v42;
    do
    {
      v84 = v70;
      MEMORY[0x1EEE9AC00](v46);
      v49 = v70 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      v50 = v49 + 8;
      v51 = v42;
      v52 = v49 + 8;
      do
      {
        *(v52 - 1) = 0;
        *v52 = 0;
        v52 += 16;
        --v51;
      }

      while (v51);
      v53 = v78 + 40 * v47;
      while (1)
      {
        v54 = *(v31 + 16);
        if (v47 == v54)
        {
          break;
        }

        if (v47 >= v54)
        {
          __break(1u);
        }

        ++v47;
        outlined init with copy of AnyTrackedValue(v53, &v91);
        v55 = v94;
        v56 = v95;
        __swift_project_boxed_opaque_existential_1(&v91, v94);
        *(v50 - 1) = CVarArg.kdebugValue(_:)(v43 | v44, v55, v56);
        *v50 = v57 & 1;
        v50 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v91);
        v53 += 40;
        if (!--v42)
        {
          goto LABEL_31;
        }
      }

      LOBYTE(v86[0]) = 0;
LABEL_31:
      v58 = v77;
      if (v77 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v49[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v49[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v49[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v58 != 20 && v49[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v59 = v81;
      v60 = *v80;
      v61 = v83;
      (*v80)(v83, v81);
      v62 = __swift_project_value_buffer(v59, static OSSignpostID.continuation);
      v46 = v75(v61, v62, v59);
      v42 = v76;
    }

    while ((v86[0] & 1) != 0);
    v63 = v81;
    v60(v83, v81);
    v60(v74, v63);
    goto LABEL_46;
  }
}

void specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v77 = v11;
  v78 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v79 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = v66 - v15;
  Value = AGGraphGetValue();
  v18 = *Value;
  v19 = Value[1];
  if (a2)
  {
    goto LABEL_2;
  }

  if ((v17 & 1) == 0)
  {
    return;
  }

  if ((a5 & 1) == 0)
  {
LABEL_2:

    goto LABEL_3;
  }

  v21 = swift_retain_n();
  v22 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v21);

  if (v22)
  {
LABEL_3:
    PropertyList.Tracker.reset()();
    if (v18)
    {
      v20 = *(v18 + 64);
    }

    else
    {
      v20 = 0;
    }

    v23 = *(a4 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v23 + 16));
    *(v23 + 24) = v20;
    os_unfair_lock_unlock((v23 + 16));

    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v24 = static Signpost.bodyInvoke;
    v25 = word_1ED539040;
    v26 = HIBYTE(word_1ED539040);
    v27 = byte_1ED539042;
    v28 = static os_signpost_type_t.begin.getter();
    v87 = v24;
    LOBYTE(v88) = v25;
    BYTE1(v88) = v26;
    BYTE2(v88) = v27;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v80) = v28;
    v66[1] = v19;
    v67 = a1;
    v68 = v18;
    v69 = a4;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_18DDAB4C0;
    v30 = AGTypeID.description.getter();
    v32 = v31;
    v33 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v35 = v34;
    *(v29 + 64) = v34;
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    v36 = specialized static Tracing.libraryName(defining:)();
    *(v29 + 96) = v33;
    *(v29 + 104) = v35;
    *(v29 + 72) = v36;
    *(v29 + 80) = v37;
    if (one-time initialization token for _signpostLog == -1)
    {
      v38 = v80;
      if (v26)
      {
LABEL_17:
        v86 = v38;
        v84 = _signpostLog;
        v85 = &dword_18D018000;
        v87 = v24;
        LOBYTE(v88) = v25;
        v82[0] = "%{public}@.body [in %{public}@]";
        v82[1] = 31;
        v83 = 2;
        v81 = v29;
        v39 = v70;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v86, &v85, &v84, &v87, v70, v82, &v81);
        (*(v78 + 8))(v39, v77);
LABEL_46:

        a4 = v69;
        v18 = v68;
        a1 = v67;
LABEL_47:
        AGGraphClearUpdate();
        *&v87 = v18;
        *(&v87 + 1) = a4;
        LODWORD(v87) = (*(*a1 + 112))(&v87);
        DWORD1(v87) = v62;
        v63 = a6;
        *(&v87 + 1) = __PAIR64__(v65, v64);
        v88 = v63;
        AGGraphSetUpdate();
        $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        AGGraphSetOutputValue();

        return;
      }
    }

    else
    {
      swift_once();
      v38 = v80;
      if (v26)
      {
        goto LABEL_17;
      }
    }

    if (v24 == 20)
    {
      v40 = 3;
    }

    else
    {
      v40 = 4;
    }

    v41 = bswap32(v24) | (4 * WORD1(v24));
    v42 = v38;
    v43 = v78 + 16;
    v71 = *(v78 + 16);
    v44 = v71(v79, v70, v77);
    v45 = 0;
    LOBYTE(v82[0]) = 1;
    v78 = v43;
    v75 = 16 * v40;
    v76 = (v43 - 8);
    v74 = v29 + 32;
    v73 = v24;
    v72 = v40;
    do
    {
      v80 = v66;
      MEMORY[0x1EEE9AC00](v44);
      v47 = v66 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      v48 = v47 + 8;
      v49 = v40;
      v50 = v47 + 8;
      do
      {
        *(v50 - 1) = 0;
        *v50 = 0;
        v50 += 16;
        --v49;
      }

      while (v49);
      v51 = v74 + 40 * v45;
      while (1)
      {
        v52 = *(v29 + 16);
        if (v45 == v52)
        {
          break;
        }

        if (v45 >= v52)
        {
          __break(1u);
        }

        ++v45;
        outlined init with copy of AnyTrackedValue(v51, &v87);
        v53 = v89;
        v54 = v90;
        __swift_project_boxed_opaque_existential_1(&v87, v89);
        *(v48 - 1) = CVarArg.kdebugValue(_:)(v41 | v42, v53, v54);
        *v48 = v55 & 1;
        v48 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v87);
        v51 += 40;
        if (!--v40)
        {
          goto LABEL_31;
        }
      }

      LOBYTE(v82[0]) = 0;
LABEL_31:
      v56 = v73;
      if (v73 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v47[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v47[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v47[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v56 != 20 && v47[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v57 = v77;
      v58 = *v76;
      v59 = v79;
      (*v76)(v79, v77);
      v60 = __swift_project_value_buffer(v57, static OSSignpostID.continuation);
      v44 = v71(v59, v60, v57);
      v40 = v72;
    }

    while ((v82[0] & 1) != 0);
    v61 = v77;
    v58(v79, v77);
    v58(v70, v61);
    goto LABEL_46;
  }
}

double specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v91 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v75 = v9;
  v76 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v77 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = v64 - v13;
  Value = AGGraphGetValue();
  v17 = *Value;
  v18 = Value[1];
  if (a2)
  {
    goto LABEL_2;
  }

  if ((v15 & 1) == 0)
  {
    return result;
  }

  if ((a5 & 1) == 0)
  {
LABEL_2:

    goto LABEL_3;
  }

  v20 = swift_retain_n();
  v21 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v20);

  if (v21)
  {
LABEL_3:
    PropertyList.Tracker.reset()();
    if (v17)
    {
      v19 = *(v17 + 64);
    }

    else
    {
      v19 = 0;
    }

    v22 = *(a4 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v22 + 16));
    *(v22 + 24) = v19;
    os_unfair_lock_unlock((v22 + 16));

    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v23 = static Signpost.bodyInvoke;
    v24 = word_1ED539040;
    v25 = HIBYTE(word_1ED539040);
    v26 = byte_1ED539042;
    v27 = static os_signpost_type_t.begin.getter();
    v85 = v23;
    v86 = v24;
    v87 = v25;
    v88 = v26;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v78) = v27;
    v64[1] = v18;
    v65 = v17;
    v66 = a1;
    v67 = a4;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_18DDAB4C0;
    v29 = AGTypeID.description.getter();
    v31 = v30;
    v32 = MEMORY[0x1E69E6158];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v34 = v33;
    *(v28 + 64) = v33;
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    v35 = specialized static Tracing.libraryName(defining:)();
    *(v28 + 96) = v32;
    *(v28 + 104) = v34;
    *(v28 + 72) = v35;
    *(v28 + 80) = v36;
    if (one-time initialization token for _signpostLog == -1)
    {
      v37 = v78;
      if (v25)
      {
LABEL_17:
        v84 = v37;
        v82 = _signpostLog;
        v83 = &dword_18D018000;
        v85 = v23;
        v86 = v24;
        v80[0] = "%{public}@.body [in %{public}@]";
        v80[1] = 31;
        v81 = 2;
        v79 = v28;
        v38 = v68;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v84, &v83, &v82, &v85, v68, v80, &v79);
        (*(v76 + 8))(v38, v75);
LABEL_46:

        a4 = v67;
        a1 = v66;
        v17 = v65;
LABEL_47:
        AGGraphClearUpdate();
        *&v85 = v17;
        *(&v85 + 1) = a4;
        LODWORD(v85) = (*(*a1 + 112))(&v85);
        DWORD1(v85) = v61;
        *(&v85 + 1) = __PAIR64__(v63, v62);
        AGGraphSetUpdate();
        $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        AGGraphSetOutputValue();

        return result;
      }
    }

    else
    {
      swift_once();
      v37 = v78;
      if (v25)
      {
        goto LABEL_17;
      }
    }

    if (v23 == 20)
    {
      v39 = 3;
    }

    else
    {
      v39 = 4;
    }

    v40 = bswap32(v23) | (4 * WORD1(v23));
    v41 = v37;
    v42 = v76 + 16;
    v69 = *(v76 + 16);
    v43 = v69(v77, v68, v75);
    v44 = 0;
    LOBYTE(v80[0]) = 1;
    v76 = v42;
    v73 = 16 * v39;
    v74 = (v42 - 8);
    v71 = v23;
    v72 = v28 + 32;
    v70 = v39;
    do
    {
      v78 = v64;
      MEMORY[0x1EEE9AC00](v43);
      v46 = v64 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = v46 + 8;
      v48 = v39;
      v49 = v46 + 8;
      do
      {
        *(v49 - 1) = 0;
        *v49 = 0;
        v49 += 16;
        --v48;
      }

      while (v48);
      v50 = v72 + 40 * v44;
      while (1)
      {
        v51 = *(v28 + 16);
        if (v44 == v51)
        {
          break;
        }

        if (v44 >= v51)
        {
          __break(1u);
        }

        ++v44;
        outlined init with copy of AnyTrackedValue(v50, &v85);
        v52 = v89;
        v53 = v90;
        __swift_project_boxed_opaque_existential_1(&v85, v89);
        *(v47 - 1) = CVarArg.kdebugValue(_:)(v40 | v41, v52, v53);
        *v47 = v54 & 1;
        v47 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v85);
        v50 += 40;
        if (!--v39)
        {
          goto LABEL_31;
        }
      }

      LOBYTE(v80[0]) = 0;
LABEL_31:
      v55 = v71;
      if (v71 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v46[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v46[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v46[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v55 != 20 && v46[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v56 = v75;
      v57 = *v74;
      v58 = v77;
      (*v74)(v77, v75);
      v59 = __swift_project_value_buffer(v56, static OSSignpostID.continuation);
      v43 = v69(v58, v59, v56);
      v39 = v70;
    }

    while ((v80[0] & 1) != 0);
    v60 = v75;
    v57(v77, v75);
    v57(v68, v60);
    goto LABEL_46;
  }

  return result;
}

uint64_t specialized SizeFittingTextCache.CacheEntry.result(for:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v53 = a2[6];
  v54 = a2[5];
  type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v10 = (v2 + *(v9 + 52));
  v11 = *v10;
  v12 = v10[3];
  v57 = v10[1];
  v58 = v10[2];
  v55 = v9;
  if (*v10)
  {
    if (*(v2 + *(v9 + 56)) != 1)
    {
      v52 = v5;

      v17 = v58;

      goto LABEL_10;
    }

    v13 = v2[9];
    if (!v13)
    {
      if (v7)
      {
        goto LABEL_32;
      }

      v52 = v5;

      v17 = v58;

LABEL_28:
      if (PropertyList.Tracker.hasDifferentUsedValues(_:)(v8))
      {
        goto LABEL_29;
      }

LABEL_10:
      type metadata accessor for ResolvedTextHelper(0);
      ResolvedTextHelper.NextUpdate.time()();
      if (v60)
      {
        v20 = v11;
        v21 = v57;
        v22 = v57;
      }

      else
      {
        v5 = v52;
        v21 = v57;
        if (*AGGraphGetValue() >= v59)
        {

          goto LABEL_32;
        }

        v20 = v11;
        v22 = v57;
        v17 = v58;
      }

      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v20, v22, v17, v12);
      v23 = 0;
LABEL_34:
      *v10 = v11;
      v10[1] = v21;
      v10[2] = v17;
      v10[3] = v12;
      *(v3 + *(v55 + 56)) = 0;
      *a1 = v11;
      a1[1] = v21;
      a1[2] = v17;
      a1[3] = v12;

      return v23;
    }

    v51 = v8;
    v52 = v5;
    v15 = v2[6];
    v14 = v2[7];
    v16 = v2[8];
    v50 = v13;
    if (v7)
    {
      v17 = v10[2];
      v48 = v16;
      v49 = v14;
      v47 = v15;
      if (v16)
      {
        if ((v6 & 1) == 0)
        {
          v32 = v15;
          outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11, v57, v58, v12);
          outlined copy of Text?(v32, v49, v48, v50);

          v33 = v47;
          v34 = v48;
          v35 = v49;
          v36 = v50;
LABEL_31:
          outlined consume of Text?(v33, v35, v34, v36);
          v8 = v51;
          v5 = v52;
          goto LABEL_32;
        }

        v44 = *(*v15 + 96);
        v16 = v15;
        outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11, v57, v58, v12);
        v18 = v50;
        v19 = outlined copy of Text?(v16, v49, v48, v50);
        LOBYTE(v16) = v48;
        if ((v44(v52, v19) & 1) == 0)
        {
LABEL_30:

          v33 = v47;
          v35 = v49;
          v34 = v16;
          v36 = v18;
          goto LABEL_31;
        }

LABEL_27:
        _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v18, v7);
        v46 = v40;
        outlined consume of Text?(v47, v49, v16, v18);
        v8 = v51;
        if ((v46 & 1) == 0)
        {
LABEL_29:

          v5 = v52;
          goto LABEL_32;
        }

        goto LABEL_28;
      }

      if ((v6 & 1) == 0)
      {
        if (v15 == v52 && v14 == v4)
        {
          outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11, v57, v58, v12);
          v18 = v50;
          outlined copy of Text?(v52, v4, v16, v50);
        }

        else
        {
          v37 = v15;
          v16 = v14;
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11, v57, v58, v12);
          v38 = v37;
          v39 = v16;
          LOBYTE(v16) = v48;
          v18 = v50;
          outlined copy of Text?(v38, v39, v48, v50);
          if ((v45 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_27;
      }

      v31 = v14;
      outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11, v57, v58, v12);
      outlined copy of Text?(v47, v31, v16, v50);
      v8 = v51;

      v27 = v47;
      v29 = v16;
      v28 = v49;
      v30 = v50;
    }

    else
    {
      v42 = v6;
      v43 = v4;
      v24 = v15;
      v25 = v14;
      v26 = v13;
      outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11, v57, v58, v12);
      outlined copy of Text?(v24, v25, v16, v26);

      v7 = 0;
      v8 = v51;

      v27 = v24;
      v28 = v25;
      v6 = v42;
      v4 = v43;
      v29 = v16;
      v30 = v50;
    }

    outlined consume of Text?(v27, v28, v29, v30);
    v5 = v52;
  }

LABEL_32:
  v59 = *&v8;
  v60 = v54;
  result = ResolvedTextHelper.resolve(_:with:sizeFitting:)(v5, v4, v6, v7, &v59, 1);
  if (result)
  {
    v21 = result;

    outlined copy of Text?(v5, v4, v6, v7);

    outlined consume of Text?(v5, v4, v6, v7);
    outlined copy of Text?(v5, v4, v6, v7);

    outlined consume of Text?(v5, v4, v6, v7);
    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11, v57, v58, v12);
    v23 = 1;
    v12 = v53;
    v11 = v21;
    v17 = v53;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void specialized SizeFittingTextCache.suggestedVariant(for:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if ((*(v5 + 89) & 1) == 0)
  {
    v7 = v5;
    v12 = *(v5 + 88);
    v13 = *(v5 + 80);
    v14 = *(v5 + 72);
    v16 = *(v5 + 56);
    v15 = *(v5 + 64);
    v17 = *(v5 + 49);
    v18 = *(v5 + 48);
    v45 = a1;
    v46 = a2 & 1;
    v47 = a3;
    v19 = a4 & 1;
    v48 = a4 & 1;
    v41 = v15;
    v42 = v14 & 1;
    v43 = v13;
    v44 = v12 & 1;
    if (_ProposedSize.fits(into:ignoreHorizontalAxis:ignoreVerticalAxis:)(&v41, v18, v17))
    {
      v38 = a4;
      v40 = 0;
      v20 = swift_allocObject();
      v39 = &v37;
      *(v20 + 16) = &v40;
      MEMORY[0x1EEE9AC00](v20);
      v33 = a1;
      v34 = a2 & 1;
      v35 = a3;
      v36 = v19;
      v21 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v16, partial apply for specialized closure #1 in SizeFittingTextCache.suggestedVariant(for:), v20, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), v32);

      swift_beginAccess();
      if ((v40 & 1) == 0)
      {
        if (v21)
        {
          v31 = v16;
        }

        else
        {
          v31 = 0;
        }

        *a5 = v31;
        v30 = (v21 & 1) == 0;
        goto LABEL_10;
      }

      if ((*(v7 + 89) & 1) == 0)
      {
        v22 = *(v7 + 88);
        v23 = *(v7 + 80);
        v24 = *(v7 + 72);
        v26 = *(v7 + 56);
        v25 = *(v7 + 64);
        v27 = *(v7 + 49);
        v28 = *(v7 + 48);
        v45 = a1;
        v46 = a2 & 1;
        v47 = a3;
        v48 = v38 & 1;
        v41 = v25;
        v42 = v24 & 1;
        v43 = v23;
        v44 = v22 & 1;
        v29 = _ProposedSize.fits(into:ignoreHorizontalAxis:ignoreVerticalAxis:)(&v41, v28, v27);
        if (v29)
        {
          if (v26 == v16 || (MEMORY[0x1EEE9AC00](v29), v33 = a1, v34 = a2 & 1, v35 = a3, v36 = v38 & 1, (specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v26, _ViewInputs.base.modify, 0, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), v32) & 1) != 0))
          {
            *a5 = v26;
            *(a5 + 8) = 0;
            return;
          }
        }
      }
    }
  }

  *a5 = 0;
  v30 = 1;
LABEL_10:
  *(a5 + 8) = v30;
}

{
  if ((*(v5 + 89) & 1) == 0)
  {
    v7 = v5;
    v12 = *(v5 + 88);
    v13 = *(v5 + 80);
    v14 = *(v5 + 72);
    v16 = *(v5 + 56);
    v15 = *(v5 + 64);
    v17 = *(v5 + 49);
    v18 = *(v5 + 48);
    v45 = a1;
    v46 = a2 & 1;
    v47 = a3;
    v19 = a4 & 1;
    v48 = a4 & 1;
    v41 = v15;
    v42 = v14 & 1;
    v43 = v13;
    v44 = v12 & 1;
    if (_ProposedSize.fits(into:ignoreHorizontalAxis:ignoreVerticalAxis:)(&v41, v18, v17))
    {
      v38 = a4;
      v40 = 0;
      v20 = swift_allocObject();
      v39 = &v37;
      *(v20 + 16) = &v40;
      MEMORY[0x1EEE9AC00](v20);
      v33 = a1;
      v34 = a2 & 1;
      v35 = a3;
      v36 = v19;
      v21 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v16, closure #1 in SizeFittingTextCache.suggestedVariant(for:)specialized partial apply, v20, partial apply for specialized closure #2 in SizeFittingTextCache.suggestedVariant(for:), v32);

      swift_beginAccess();
      if ((v40 & 1) == 0)
      {
        if (v21)
        {
          v31 = v16;
        }

        else
        {
          v31 = 0;
        }

        *a5 = v31;
        v30 = (v21 & 1) == 0;
        goto LABEL_10;
      }

      if ((*(v7 + 89) & 1) == 0)
      {
        v22 = *(v7 + 88);
        v23 = *(v7 + 80);
        v24 = *(v7 + 72);
        v26 = *(v7 + 56);
        v25 = *(v7 + 64);
        v27 = *(v7 + 49);
        v28 = *(v7 + 48);
        v45 = a1;
        v46 = a2 & 1;
        v47 = a3;
        v48 = v38 & 1;
        v41 = v25;
        v42 = v24 & 1;
        v43 = v23;
        v44 = v22 & 1;
        v29 = _ProposedSize.fits(into:ignoreHorizontalAxis:ignoreVerticalAxis:)(&v41, v28, v27);
        if (v29)
        {
          if (v26 == v16 || (MEMORY[0x1EEE9AC00](v29), v33 = a1, v34 = a2 & 1, v35 = a3, v36 = v38 & 1, (specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v26, _ViewInputs.base.modify, 0, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), v32) & 1) != 0))
          {
            *a5 = v26;
            *(a5 + 8) = 0;
            return;
          }
        }
      }
    }
  }

  *a5 = 0;
  v30 = 1;
LABEL_10:
  *(a5 + 8) = v30;
}

void specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(int64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, void (*a4)(_BYTE *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v93 = a4;
  v8 = v6;
  v92[1] = a6;
  v92[2] = a5;
  v97 = a3;
  v98 = a2;
  type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v11 = *(v10 - 8);
  v101 = v10;
  v102 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v92 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v92 - v18);
  swift_beginAccess();
  v20 = *(v6 + 40);
  v21 = *(v20 + 16);
  v110 = v8;
  if (v21 > a1)
  {
    swift_beginAccess();
    v23 = *(v8 + 96);
    v22 = *(v8 + 104);
    v105 = v20;
    v25 = *(v8 + 112);
    v24 = *(v8 + 120);
    v26 = v8;
    v27 = *(v8 + 128);
    v16 = v26[18];
    *&v109 = v26[17];
    swift_beginAccess();
    v106 = v22;
    v107 = v23;
    v28 = v22;
    v7 = v105;
    v103 = v25;
    v104 = v24;
    outlined copy of Text?(v23, v28, v25, v24);
    v29 = v16;

    v108 = v27;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[5] = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      v31 = v106;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_35:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      *(v110 + 40) = v7;
      v31 = v106;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v7 + 16) > a1)
        {
          v32 = v29;
          v33 = v103;
          v34 = v7 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * a1;
          v111[0] = v107;
          v111[1] = v31;
          v35 = v104;
          v111[2] = v103;
          v111[3] = v104;
          v111[4] = v108;
          v111[5] = v109;
          v111[6] = v32;
          if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v114, v111))
          {
            v115[0] = a1;
            StickyTextSizeFittingLogic.onInvalidation(of:)(v115);
            v98();
          }

          v93(v114);
          outlined consume of Text?(v107, v31, v33, v35);

          v36 = (v34 + *(v101 + 52));
          v37 = *v36;
          v38 = v36[1];
          v39 = v36[2];
          v40 = v36[3];
          *v36 = *v114;
          *(v36 + 1) = *&v114[16];
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v37, v38, v39, v40);
          *(v110 + 40) = v7;
LABEL_32:
          swift_endAccess();
          return;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  swift_beginAccess();
  if ((*(v8 + 32) & 1) == 0)
  {
    v29 = &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry;
    v95 = v13;
    v96 = a1;
    v94 = v16;
    v99 = v19;
    do
    {
      v41 = *(v8 + 40);
      v42 = *(v41 + 16);
      if (v42 > a1)
      {
        break;
      }

      if (!v42)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v100 = *(v41 + 16);
      v43 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v7 = *(v102 + 72);
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v41 + v43 + v7 * (v42 - 1), v16, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v16, v19, type metadata accessor for ResolvedTextHelper);
      v44 = type metadata accessor for ResolvedTextHelper(0);
      v45 = *(v44 + 64);
      v46 = *(v19 + v45);
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_34;
      }

      v49 = v44;
      v103 = v7;
      v104 = v43;
      *(v19 + v45) = v48;
      PropertyList.Tracker.reset()();
      outlined consume of Text?(v19[6], v19[7], v19[8], v19[9]);
      *(v19 + 3) = 0u;
      *(v19 + 4) = 0u;
      v50 = *(v49 + 60);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v19 + v50, type metadata accessor for ResolvedTextHelper.NextUpdate);
      *(v19 + v50) = 0;
      type metadata accessor for ResolvedTextHelper.NextUpdate(0);
      swift_storeEnumTagMultiPayload();
      v51 = v101;
      v52 = (v19 + *(v101 + 52));
      *v52 = 0u;
      *(v52 + 1) = 0u;
      v53 = *(v51 + 56);
      LOBYTE(v49) = *(v16 + v53);
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v16, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      *(v19 + v53) = v49;
      v55 = *(v8 + 96);
      v54 = *(v8 + 104);
      v56 = v8;
      v57 = *(v8 + 112);
      v59 = v56[15];
      v58 = v56[16];
      v61 = v56[17];
      v60 = v56[18];
      outlined copy of Text?(v55, v54, v57, v59);
      v105 = v55;
      v106 = v54;
      v112[0] = v55;
      v112[1] = v54;
      v19 = v99;
      v107 = v57;
      v112[2] = v57;
      v112[3] = v59;
      v112[4] = v58;
      v112[5] = v61;
      v112[6] = v60;
      *&v109 = v58;

      v108 = v61;

      if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v114, v112))
      {
        v62 = v110;
        if ((*(v110 + 89) & 1) == 0 && v100 == *(v110 + 56))
        {
          *(v110 + 88) = 0;
          *(v62 + 72) = 0u;
          *(v62 + 56) = 0u;
          *(v62 + 89) = 1;
        }

        v98();
      }

      outlined consume of Text?(v105, v106, v107, v59);

      v63 = *v114;
      v64 = *(*v114 + 260);
      v109 = *&v114[8];
      v65 = *&v114[24];
      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(*v52, v52[1], v52[2], v52[3]);
      *v52 = v63;
      *(v52 + 1) = v109;
      v52[3] = v65;
      if ((v64 & 0x100) == 0)
      {
        outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v19, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
        v8 = v110;
        *(v110 + 32) = 1;
        break;
      }

      v66 = v95;
      v29 = &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry;
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v19, v95, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      v8 = v110;
      swift_beginAccess();
      v67 = *(v8 + 40);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 40) = v67;
      if ((v68 & 1) == 0)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
        *(v8 + 40) = v67;
      }

      v16 = v94;
      v7 = v67[2];
      v69 = v67[3];
      if (v7 >= v69 >> 1)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v7 + 1, 1, v67);
      }

      v67[2] = v7 + 1;
      outlined init with take of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v66, v67 + v104 + v7 * v103);
      *(v8 + 40) = v67;
      swift_endAccess();
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v19, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      a1 = v96;
    }

    while ((*(v8 + 32) & 1) == 0);
  }

  v104 = *(v8 + 40);
  v105 = *(v104 + 16);
  swift_beginAccess();
  v70 = *(v8 + 96);
  v71 = *(v8 + 104);
  v72 = v8;
  v74 = *(v8 + 112);
  v73 = *(v8 + 120);
  v75 = *(v8 + 128);
  v76 = *(v8 + 136);
  v77 = *(v8 + 144);
  swift_beginAccess();
  v106 = v71;
  v107 = v70;
  v78 = v71;
  v7 = v104;
  v100 = v74;
  v103 = v73;
  outlined copy of Text?(v70, v78, v74, v73);
  v16 = v77;

  *&v109 = v75;

  v108 = v76;

  v79 = swift_isUniquelyReferenced_nonNull_native();
  *(v72 + 40) = v7;
  if ((v79 & 1) == 0)
  {
LABEL_38:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    *(v110 + 40) = v7;
    v80 = v105;
    v81 = v106;
    if (!v105)
    {
      goto LABEL_39;
    }

    goto LABEL_28;
  }

  v80 = v105;
  v81 = v106;
  if (!v105)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_28:
  if (v80 <= *(v7 + 16))
  {
    v82 = v16;
    v83 = v80 - 1;
    v84 = v103;
    v85 = v7 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * (v80 - 1);
    v113[0] = v107;
    v113[1] = v81;
    v86 = v100;
    v113[2] = v100;
    v113[3] = v103;
    v113[4] = v109;
    v113[5] = v108;
    v113[6] = v82;
    if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v114, v113))
    {
      v116 = v83;
      StickyTextSizeFittingLogic.onInvalidation(of:)(&v116);
      v98();
    }

    v93(v114);
    outlined consume of Text?(v107, v81, v86, v84);

    v87 = (v85 + *(v101 + 52));
    v88 = *v87;
    v89 = v87[1];
    v90 = v87[2];
    v91 = v87[3];
    *v87 = *v114;
    *(v87 + 1) = *&v114[16];
    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v88, v89, v90, v91);
    *(v110 + 40) = v7;
    goto LABEL_32;
  }

LABEL_40:
  __break(1u);
}

int64_t specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(int64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(unint64_t *__return_ptr, _BYTE *), uint64_t a5)
{
  v85 = a4;
  v6 = v5;
  v84[1] = a5;
  v90 = a3;
  v91 = a2;
  type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v9 = *(v8 - 8);
  v94 = v8;
  v95 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v84 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v84 - v16);
  swift_beginAccess();
  v18 = *(v5 + 40);
  v19 = *(v18 + 16);
  v102 = v5;
  if (v19 > a1)
  {
    swift_beginAccess();
    v96 = v18;
    v21 = *(v5 + 96);
    v20 = *(v5 + 104);
    v23 = *(v5 + 112);
    v22 = *(v5 + 120);
    v24 = *(v5 + 128);
    *&v101 = *(v5 + 136);
    v25 = *(v5 + 144);
    swift_beginAccess();
    v98 = v23;
    v99 = v21;
    v97 = v20;
    v26 = v20;
    v18 = v96;
    v93 = v22;
    outlined copy of Text?(v21, v26, v23, v22);
    v14 = v25;

    v100 = v24;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 40) = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v97;
      v28 = v98;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_38:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      *(v102 + 40) = v18;
      v29 = v97;
      v28 = v98;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v18 + 16) > a1)
        {
          v30 = v18 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * a1;
          v103[0] = v99;
          v103[1] = v29;
          v31 = v93;
          v103[2] = v28;
          v103[3] = v93;
          v103[4] = v100;
          v103[5] = v101;
          v103[6] = v14;
          if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v106, v103))
          {
            v107[0] = a1;
            StickyTextSizeFittingLogic.onInvalidation(of:)(v107);
            v91();
          }

          v32 = v86;
          v85(v107, v106);
          outlined consume of Text?(v99, v29, v28, v31);

          if (!v32)
          {
            a1 = v107[0];
          }

LABEL_35:
          v79 = (v30 + *(v94 + 52));
          v80 = *v79;
          v81 = v79[1];
          v82 = v79[2];
          v83 = v79[3];
          *v79 = *v106;
          *(v79 + 1) = *&v106[16];
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v80, v81, v82, v83);
          *(v102 + 40) = v18;
          swift_endAccess();
          return a1;
        }

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  swift_beginAccess();
  if ((*(v5 + 32) & 1) == 0)
  {
    v88 = v11;
    v89 = a1;
    v87 = v14;
    v92 = v17;
    do
    {
      v33 = *(v6 + 40);
      v34 = *(v33 + 16);
      if (v34 > a1)
      {
        break;
      }

      if (!v34)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v93 = *(v33 + 16);
      v35 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v18 = *(v95 + 72);
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v33 + v35 + v18 * (v34 - 1), v14, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v14, v17, type metadata accessor for ResolvedTextHelper);
      v36 = type metadata accessor for ResolvedTextHelper(0);
      v37 = *(v36 + 64);
      v38 = *(v17 + v37);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_37;
      }

      v41 = v36;
      v96 = v18;
      v97 = v35;
      *(v17 + v37) = v40;
      PropertyList.Tracker.reset()();
      outlined consume of Text?(v17[6], v17[7], v17[8], v17[9]);
      *(v17 + 3) = 0u;
      *(v17 + 4) = 0u;
      v42 = *(v41 + 60);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v17 + v42, type metadata accessor for ResolvedTextHelper.NextUpdate);
      *(v17 + v42) = 0;
      type metadata accessor for ResolvedTextHelper.NextUpdate(0);
      swift_storeEnumTagMultiPayload();
      v43 = v94;
      v44 = (v17 + *(v94 + 52));
      *v44 = 0u;
      *(v44 + 1) = 0u;
      v45 = *(v43 + 56);
      LOBYTE(v41) = v14[v45];
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v14, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      *(v17 + v45) = v41;
      v47 = *(v6 + 96);
      v46 = *(v6 + 104);
      v48 = v6;
      v49 = *(v6 + 112);
      v51 = v48[15];
      v50 = v48[16];
      v53 = v48[17];
      v52 = v48[18];
      outlined copy of Text?(v47, v46, v49, v51);
      v98 = v47;
      v99 = v49;
      v104[0] = v47;
      v54 = v46;
      v17 = v92;
      v104[1] = v54;
      v104[2] = v49;
      v104[3] = v51;
      v104[4] = v50;
      v104[5] = v53;
      v104[6] = v52;
      *&v101 = v50;

      v100 = v53;

      if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v106, v104))
      {
        v55 = v102;
        if ((*(v102 + 89) & 1) == 0 && v93 == *(v102 + 56))
        {
          *(v102 + 88) = 0;
          *(v55 + 72) = 0u;
          *(v55 + 56) = 0u;
          *(v55 + 89) = 1;
        }

        v91();
      }

      outlined consume of Text?(v98, v54, v99, v51);

      v56 = *v106;
      v57 = *(*v106 + 260);
      v101 = *&v106[8];
      v58 = *&v106[24];
      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(*v44, v44[1], v44[2], v44[3]);
      *v44 = v56;
      *(v44 + 1) = v101;
      v44[3] = v58;
      if ((v57 & 0x100) == 0)
      {
        outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
        v6 = v102;
        *(v102 + 32) = 1;
        break;
      }

      v59 = v88;
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, v88, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      v6 = v102;
      swift_beginAccess();
      v60 = *(v6 + 40);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 40) = v60;
      if ((v61 & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        *(v6 + 40) = v60;
      }

      v14 = v87;
      v18 = v60[2];
      v62 = v60[3];
      if (v18 >= v62 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v18 + 1, 1, v60);
      }

      v60[2] = v18 + 1;
      outlined init with take of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v59, v60 + v97 + v18 * v96);
      *(v6 + 40) = v60;
      swift_endAccess();
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      a1 = v89;
    }

    while ((*(v6 + 32) & 1) == 0);
  }

  v96 = *(v6 + 40);
  v97 = *(v96 + 16);
  swift_beginAccess();
  v63 = *(v6 + 96);
  v64 = *(v6 + 104);
  v65 = v6;
  v67 = *(v6 + 112);
  v66 = *(v6 + 120);
  v68 = *(v6 + 128);
  v69 = *(v6 + 136);
  v70 = *(v6 + 144);
  swift_beginAccess();
  v98 = v64;
  v99 = v63;
  v71 = v64;
  v18 = v96;
  v92 = v67;
  v93 = v66;
  outlined copy of Text?(v63, v71, v67, v66);
  v14 = v70;

  *&v101 = v68;

  v100 = v69;

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v65 + 40) = v18;
  if ((result & 1) == 0)
  {
LABEL_41:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
    v18 = result;
    *(v102 + 40) = result;
    v73 = v97;
    v74 = v98;
    if (!v97)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  v73 = v97;
  v74 = v98;
  if (!v97)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_30:
  if (v73 <= *(v18 + 16))
  {
    v75 = v14;
    a1 = v73 - 1;
    v30 = v18 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * (v73 - 1);
    v105[0] = v99;
    v105[1] = v74;
    v77 = v92;
    v76 = v93;
    v105[2] = v92;
    v105[3] = v93;
    v105[4] = v101;
    v105[5] = v100;
    v105[6] = v75;
    if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v106, v105))
    {
      v108 = a1;
      StickyTextSizeFittingLogic.onInvalidation(of:)(&v108);
      v91();
    }

    v78 = v86;
    v85(&v108, v106);
    outlined consume of Text?(v99, v74, v77, v76);

    if (!v78)
    {
      a1 = v108;
    }

    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
  return result;
}

size_t specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(int64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(unint64_t *__return_ptr, _BYTE *), uint64_t a5)
{
  v85 = a4;
  v6 = v5;
  v84[1] = a5;
  v90 = a3;
  v91 = a2;
  type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v9 = *(v8 - 8);
  v94 = v8;
  v95 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v84 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v84 - v16);
  swift_beginAccess();
  v18 = *(v5 + 40);
  v19 = *(v18 + 16);
  v102 = v5;
  if (v19 > a1)
  {
    swift_beginAccess();
    v96 = v18;
    v21 = *(v5 + 96);
    v20 = *(v5 + 104);
    v23 = *(v5 + 112);
    v22 = *(v5 + 120);
    v24 = *(v5 + 128);
    *&v101 = *(v5 + 136);
    v25 = *(v5 + 144);
    swift_beginAccess();
    v98 = v23;
    v99 = v21;
    v97 = v20;
    v26 = v20;
    v18 = v96;
    v93 = v22;
    outlined copy of Text?(v21, v26, v23, v22);
    v14 = v25;

    v100 = v24;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 40) = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v97;
      v28 = v98;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_38:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      *(v102 + 40) = v18;
      v29 = v97;
      v28 = v98;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v18 + 16) > a1)
        {
          v30 = v18 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * a1;
          v103[0] = v99;
          v103[1] = v29;
          v31 = v93;
          v103[2] = v28;
          v103[3] = v93;
          v103[4] = v100;
          v103[5] = v101;
          v103[6] = v14;
          if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v106, v103))
          {
            v107[0] = a1;
            StickyTextSizeFittingLogic.onInvalidation(of:)(v107);
            v91();
          }

          v32 = v86;
          v85(v107, v106);
          outlined consume of Text?(v99, v29, v28, v31);

          if (!v32)
          {
            LOBYTE(a1) = v107[0];
          }

LABEL_35:
          v79 = (v30 + *(v94 + 52));
          v80 = *v79;
          v81 = v79[1];
          v82 = v79[2];
          v83 = v79[3];
          *v79 = *v106;
          *(v79 + 1) = *&v106[16];
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v80, v81, v82, v83);
          *(v102 + 40) = v18;
          swift_endAccess();
          return a1 & 1;
        }

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  swift_beginAccess();
  if ((*(v5 + 32) & 1) == 0)
  {
    v88 = v11;
    v89 = a1;
    v87 = v14;
    v92 = v17;
    do
    {
      v33 = *(v6 + 40);
      v34 = *(v33 + 16);
      if (v34 > a1)
      {
        break;
      }

      if (!v34)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v93 = *(v33 + 16);
      v35 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v18 = *(v95 + 72);
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v33 + v35 + v18 * (v34 - 1), v14, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v14, v17, type metadata accessor for ResolvedTextHelper);
      v36 = type metadata accessor for ResolvedTextHelper(0);
      v37 = *(v36 + 64);
      v38 = *(v17 + v37);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_37;
      }

      v41 = v36;
      v96 = v18;
      v97 = v35;
      *(v17 + v37) = v40;
      PropertyList.Tracker.reset()();
      outlined consume of Text?(v17[6], v17[7], v17[8], v17[9]);
      *(v17 + 3) = 0u;
      *(v17 + 4) = 0u;
      v42 = *(v41 + 60);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v17 + v42, type metadata accessor for ResolvedTextHelper.NextUpdate);
      *(v17 + v42) = 0;
      type metadata accessor for ResolvedTextHelper.NextUpdate(0);
      swift_storeEnumTagMultiPayload();
      v43 = v94;
      v44 = (v17 + *(v94 + 52));
      *v44 = 0u;
      *(v44 + 1) = 0u;
      v45 = *(v43 + 56);
      LOBYTE(v41) = v14[v45];
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v14, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      *(v17 + v45) = v41;
      v47 = *(v6 + 96);
      v46 = *(v6 + 104);
      v48 = v6;
      v49 = *(v6 + 112);
      v51 = v48[15];
      v50 = v48[16];
      v53 = v48[17];
      v52 = v48[18];
      outlined copy of Text?(v47, v46, v49, v51);
      v98 = v47;
      v99 = v49;
      v104[0] = v47;
      v54 = v46;
      v17 = v92;
      v104[1] = v54;
      v104[2] = v49;
      v104[3] = v51;
      v104[4] = v50;
      v104[5] = v53;
      v104[6] = v52;
      *&v101 = v50;

      v100 = v53;

      if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v106, v104))
      {
        v55 = v102;
        if ((*(v102 + 89) & 1) == 0 && v93 == *(v102 + 56))
        {
          *(v102 + 88) = 0;
          *(v55 + 72) = 0u;
          *(v55 + 56) = 0u;
          *(v55 + 89) = 1;
        }

        v91();
      }

      outlined consume of Text?(v98, v54, v99, v51);

      v56 = *v106;
      v57 = *(*v106 + 260);
      v101 = *&v106[8];
      v58 = *&v106[24];
      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(*v44, v44[1], v44[2], v44[3]);
      *v44 = v56;
      *(v44 + 1) = v101;
      v44[3] = v58;
      if ((v57 & 0x100) == 0)
      {
        outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
        v6 = v102;
        *(v102 + 32) = 1;
        break;
      }

      v59 = v88;
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, v88, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      v6 = v102;
      swift_beginAccess();
      v60 = *(v6 + 40);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 40) = v60;
      if ((v61 & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        *(v6 + 40) = v60;
      }

      v14 = v87;
      v18 = v60[2];
      v62 = v60[3];
      if (v18 >= v62 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v18 + 1, 1, v60);
      }

      v60[2] = v18 + 1;
      outlined init with take of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v59, v60 + v97 + v18 * v96);
      *(v6 + 40) = v60;
      swift_endAccess();
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      a1 = v89;
    }

    while ((*(v6 + 32) & 1) == 0);
  }

  v96 = *(v6 + 40);
  v97 = *(v96 + 16);
  swift_beginAccess();
  v63 = *(v6 + 96);
  v64 = *(v6 + 104);
  v65 = v6;
  v67 = *(v6 + 112);
  v66 = *(v6 + 120);
  v68 = *(v6 + 128);
  v69 = *(v6 + 136);
  v70 = *(v6 + 144);
  swift_beginAccess();
  v98 = v64;
  v99 = v63;
  v71 = v64;
  v18 = v96;
  v92 = v67;
  v93 = v66;
  outlined copy of Text?(v63, v71, v67, v66);
  v14 = v70;

  *&v101 = v68;

  v100 = v69;

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v65 + 40) = v18;
  if ((result & 1) == 0)
  {
LABEL_41:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
    v18 = result;
    *(v102 + 40) = result;
    v73 = v97;
    v74 = v98;
    if (!v97)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  v73 = v97;
  v74 = v98;
  if (!v97)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_30:
  if (v73 <= *(v18 + 16))
  {
    v75 = v14;
    a1 = v73 - 1;
    v30 = v18 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * (v73 - 1);
    v105[0] = v99;
    v105[1] = v74;
    v77 = v92;
    v76 = v93;
    v105[2] = v92;
    v105[3] = v93;
    v105[4] = v101;
    v105[5] = v100;
    v105[6] = v75;
    if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v106, v105))
    {
      v108 = a1;
      StickyTextSizeFittingLogic.onInvalidation(of:)(&v108);
      v91();
    }

    v78 = v86;
    v85(&v108, v106);
    outlined consume of Text?(v99, v74, v77, v76);

    if (!v78)
    {
      LOBYTE(a1) = v108;
    }

    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
  return result;
}

size_t specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(int64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t *__return_ptr, _BYTE *), uint64_t a5)
{
  v87 = a4;
  v7 = v5;
  v86[1] = a5;
  v92 = a3;
  v93 = a2;
  type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v10 = *(v9 - 8);
  v96 = v9;
  v97 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v86 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v86 - v17);
  swift_beginAccess();
  v19 = *(v5 + 40);
  v20 = *(v19 + 16);
  v110 = v7;
  if (v20 > a1)
  {
    swift_beginAccess();
    v22 = *(v7 + 96);
    v21 = *(v7 + 104);
    v99 = v19;
    v23 = v7;
    v25 = *(v7 + 112);
    v24 = *(v7 + 120);
    v26 = *(v7 + 128);
    *&v103 = *(v7 + 136);
    v27 = *(v7 + 144);
    swift_beginAccess();
    v100 = v21;
    v101 = v22;
    v28 = v21;
    v6 = v99;
    v95 = v25;
    v98 = v24;
    outlined copy of Text?(v22, v28, v25, v24);
    v15 = v27;

    v102 = v26;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 40) = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v100;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_38:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      *(v110 + 40) = v6;
      v30 = v100;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v6 + 16) > a1)
        {
          v31 = v98;
          v32 = v6 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * a1;
          v104[0] = v101;
          v104[1] = v30;
          v33 = v95;
          v104[2] = v95;
          v104[3] = v98;
          v104[4] = v102;
          v104[5] = v103;
          v104[6] = v15;
          if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v108, v104))
          {
            v109 = a1;
            StickyTextSizeFittingLogic.onInvalidation(of:)(&v109);
            v93();
          }

          v34 = v88;
          v87(&v109, v108);
          outlined consume of Text?(v101, v30, v33, v31);

          if (!v34)
          {
            v31 = v109;
          }

LABEL_35:
          v81 = (v32 + *(v96 + 52));
          v82 = *v81;
          v83 = v81[1];
          v84 = v81[2];
          v85 = v81[3];
          *v81 = *v108;
          *(v81 + 1) = *&v108[16];
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v82, v83, v84, v85);
          *(v110 + 40) = v6;
          swift_endAccess();
          return v31;
        }

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  swift_beginAccess();
  if ((*(v7 + 32) & 1) == 0)
  {
    v90 = v12;
    v91 = a1;
    v89 = v15;
    v94 = v18;
    do
    {
      v35 = *(v7 + 40);
      v36 = *(v35 + 16);
      if (v36 > a1)
      {
        break;
      }

      if (!v36)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v95 = *(v35 + 16);
      v37 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v6 = *(v97 + 72);
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v35 + v37 + v6 * (v36 - 1), v15, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v15, v18, type metadata accessor for ResolvedTextHelper);
      v38 = type metadata accessor for ResolvedTextHelper(0);
      v39 = *(v38 + 64);
      v40 = *(v18 + v39);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_37;
      }

      v43 = v38;
      v98 = v6;
      v99 = v37;
      *(v18 + v39) = v42;
      PropertyList.Tracker.reset()();
      outlined consume of Text?(v18[6], v18[7], v18[8], v18[9]);
      *(v18 + 3) = 0u;
      *(v18 + 4) = 0u;
      v44 = *(v43 + 60);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v18 + v44, type metadata accessor for ResolvedTextHelper.NextUpdate);
      *(v18 + v44) = 0;
      type metadata accessor for ResolvedTextHelper.NextUpdate(0);
      swift_storeEnumTagMultiPayload();
      v45 = v96;
      v46 = (v18 + *(v96 + 52));
      *v46 = 0u;
      *(v46 + 1) = 0u;
      v47 = *(v45 + 56);
      LOBYTE(v43) = v15[v47];
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v15, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      *(v18 + v47) = v43;
      v49 = *(v7 + 96);
      v48 = *(v7 + 104);
      v50 = v7;
      v51 = *(v7 + 112);
      v53 = v50[15];
      v52 = v50[16];
      v55 = v50[17];
      v54 = v50[18];
      outlined copy of Text?(v49, v48, v51, v53);
      v100 = v49;
      v101 = v51;
      v105[0] = v49;
      v56 = v48;
      v18 = v94;
      v105[1] = v56;
      v105[2] = v51;
      v105[3] = v53;
      v105[4] = v52;
      v105[5] = v55;
      v105[6] = v54;
      *&v103 = v52;

      v102 = v55;

      if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v108, v105))
      {
        v57 = v110;
        if ((*(v110 + 89) & 1) == 0 && v95 == *(v110 + 56))
        {
          *(v110 + 88) = 0;
          *(v57 + 72) = 0u;
          *(v57 + 56) = 0u;
          *(v57 + 89) = 1;
        }

        v93();
      }

      outlined consume of Text?(v100, v56, v101, v53);

      v58 = *v108;
      v59 = *&v108[24];
      v60 = *(*v108 + 260);
      v103 = *&v108[8];
      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(*v46, v46[1], v46[2], v46[3]);
      *v46 = v58;
      *(v46 + 1) = v103;
      v46[3] = v59;
      if ((v60 & 0x100) == 0)
      {
        outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v18, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
        v7 = v110;
        *(v110 + 32) = 1;
        break;
      }

      v61 = v90;
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v18, v90, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      v7 = v110;
      swift_beginAccess();
      v62 = *(v7 + 40);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 40) = v62;
      if ((v63 & 1) == 0)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1, v62);
        *(v7 + 40) = v62;
      }

      v15 = v89;
      v6 = v62[2];
      v64 = v62[3];
      if (v6 >= v64 >> 1)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v6 + 1, 1, v62);
      }

      v62[2] = v6 + 1;
      outlined init with take of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v61, v62 + v99 + v6 * v98);
      *(v7 + 40) = v62;
      swift_endAccess();
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v18, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      a1 = v91;
    }

    while ((*(v7 + 32) & 1) == 0);
  }

  v98 = *(v7 + 40);
  v99 = *(v98 + 16);
  swift_beginAccess();
  v65 = *(v7 + 96);
  v66 = *(v7 + 104);
  v67 = v7;
  v69 = *(v7 + 112);
  v68 = *(v7 + 120);
  v70 = *(v7 + 128);
  v71 = *(v7 + 136);
  v72 = *(v7 + 144);
  swift_beginAccess();
  v100 = v66;
  v101 = v65;
  v73 = v66;
  v6 = v98;
  v94 = v69;
  v95 = v68;
  outlined copy of Text?(v65, v73, v69, v68);
  v15 = v72;

  *&v103 = v70;

  v102 = v71;

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v67 + 40) = v6;
  if ((result & 1) == 0)
  {
LABEL_41:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    *(v110 + 40) = result;
    v75 = v99;
    v76 = v100;
    if (!v99)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  v75 = v99;
  v76 = v100;
  if (!v99)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_30:
  if (v75 <= *(v6 + 16))
  {
    v77 = v15;
    v78 = v75 - 1;
    v32 = v6 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * (v75 - 1);
    v107[0] = v101;
    v107[1] = v76;
    v79 = v94;
    v31 = v95;
    v107[2] = v94;
    v107[3] = v95;
    v107[4] = v103;
    v107[5] = v102;
    v107[6] = v77;
    if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v108, v107))
    {
      v106[0] = v78;
      StickyTextSizeFittingLogic.onInvalidation(of:)(v106);
      v93();
    }

    v80 = v88;
    v87(v106, v108);
    outlined consume of Text?(v101, v76, v79, v31);

    if (!v80)
    {
      v31 = v106[0];
    }

    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(int64_t a1, void (*a2)(__n128), uint64_t a3, void (*a4)(uint64_t *__return_ptr, __int128 *, __n128), uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v93 = a3;
  v94 = a2;
  v12 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v91 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v86 - v17;
  swift_beginAccess();
  v19 = v5[5];
  v20 = *(v19 + 16);
  v92 = a1;
  v88 = v6;
  v87 = a4;
  v86[1] = a5;
  if (v20 > a1)
  {
    v5 = *(*v5 + 144);
    swift_beginAccess();
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v5 + v8, v18, type metadata accessor for ResolvableStringResolutionContext);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8[5] = v19;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_45:
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v8[5] = v19;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v19 + 16) > a1)
        {
          v22 = v19 + 48 * a1;
          v23 = *(v22 + 40);
          if (v23 && (*(v22 + 72) & 1) == 0)
          {
            v28 = *(v22 + 56);
            v57 = *(v22 + 64);
            v26 = *(v22 + 48);

            v33 = v28;
            v34 = v57;
            v31 = v26;
            v32 = 0;
            v24 = v23;
            v30 = v34;
          }

          else
          {
            v24 = DynamicTextView.DynamicTextHelper.value(for:)(v18);
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v23 = *(v22 + 40);
            v31 = *(v22 + 48);
            v32 = 1;
            v33 = *(v22 + 56);
            v34 = *(v22 + 64);
          }

          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v23, v31, v33, v34);
          *(v22 + 40) = v24;
          *(v22 + 48) = v26;
          *(v22 + 56) = v28;
          *(v22 + 64) = v30;
          *(v22 + 72) = 0;
          *&v95 = v24;
          *(&v95 + 1) = v26;
          v96.n128_u64[0] = v28;
          v96.n128_u64[1] = v30;
          if (v32)
          {
            v97[0] = v92;
            StickyTextSizeFittingLogic.onInvalidation(of:)(v97);

            (v94)(v58);
          }

          else
          {
          }

          v59 = v88;
          (v87)(v97, &v95);
          if (!v59)
          {
            v26 = v97[0];
          }

          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v18, type metadata accessor for ResolvableStringResolutionContext);
          v60 = *(v22 + 40);
          v61 = *(v22 + 48);
          v62 = *(v22 + 56);
          v63 = *(v22 + 64);
          *(v22 + 40) = v95;
          *(v22 + 56) = v96;
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v60, v61, v62, v63);
          v8[5] = v19;
LABEL_43:
          swift_endAccess();
          return v26;
        }

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v90 = *(*v5 + 144);
  swift_beginAccess();
  if ((v5[4] & 1) == 0)
  {
    v7 = 48;
    do
    {
      v35 = v8[5];
      v36 = *(v35 + 16);
      if (v36 > a1)
      {
        break;
      }

      if (!v36)
      {
        __break(1u);
        goto LABEL_45;
      }

      v37 = (v35 + 48 * v36);
      v38 = *(v37 - 2);
      v39 = *(v37 - 1);
      v40 = *v37;
      v41 = v37[1];
      v42 = v37[2];

      outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v39, v40, v41, v42);
      DynamicTextView.DynamicTextHelper.narrowerVariant.getter(v38);
      v18 = v43;

      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v39, v40, v41, v42);
      v97[3] = v18;
      v44 = v91;
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v8 + v90, v91, type metadata accessor for ResolvableStringResolutionContext);
      v19 = DynamicTextView.DynamicTextHelper.value(for:)(v44);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      if ((*(v8 + 89) & 1) == 0 && v36 == v8[7])
      {
        *(v8 + 88) = 0;
        *(v8 + 9) = 0u;
        *(v8 + 7) = 0u;
        *(v8 + 89) = 1;
      }

      (v94)(v51);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v44, type metadata accessor for ResolvableStringResolutionContext);
      v52 = *(v19 + 260);

      if ((v52 & 0x100) == 0)
      {

        *(v8 + 32) = 1;
        break;
      }

      swift_beginAccess();
      v5 = v8[5];

      v53 = swift_isUniquelyReferenced_nonNull_native();
      v8[5] = v5;
      if ((v53 & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        v8[5] = v5;
      }

      v55 = v5[2];
      v54 = v5[3];
      if (v55 >= v54 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v5);
      }

      v5[2] = v55 + 1;
      v56 = &v5[6 * v55];
      v7 = 48;
      v56[4] = v18;
      v56[5] = v19;
      v56[6] = v46;
      v56[7] = v48;
      v56[8] = v50;
      *(v56 + 72) = 0;
      v8[5] = v5;
      swift_endAccess();

      a1 = v92;
    }

    while ((v8[4] & 1) == 0);
  }

  v7 = v8[5];
  v5 = *(v7 + 16);
  v64 = v90;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v8 + v64, v89, type metadata accessor for ResolvableStringResolutionContext);
  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  v8[5] = v7;
  if ((result & 1) == 0)
  {
LABEL_48:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    v8[5] = result;
    if (!v5)
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  if (!v5)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  if (v5 <= *(v7 + 16))
  {
    v66 = v5 - 1;
    v67 = v7 + 48 * (v5 - 1);
    v68 = *(v67 + 40);
    if (v68 && (*(v67 + 72) & 1) == 0)
    {
      v72 = *(v67 + 56);
      v79 = *(v67 + 64);
      v70 = *(v67 + 48);

      v77 = v72;
      v78 = v79;
      v75 = v70;
      v76 = 0;
      v26 = v68;
      v74 = v78;
    }

    else
    {
      v26 = DynamicTextView.DynamicTextHelper.value(for:)(v89);
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v68 = *(v67 + 40);
      v75 = *(v67 + 48);
      v76 = 1;
      v77 = *(v67 + 56);
      v78 = *(v67 + 64);
    }

    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v68, v75, v77, v78);
    *(v67 + 40) = v26;
    *(v67 + 48) = v70;
    *(v67 + 56) = v72;
    *(v67 + 64) = v74;
    *(v67 + 72) = 0;
    *&v95 = v26;
    *(&v95 + 1) = v70;
    v96.n128_u64[0] = v72;
    v96.n128_u64[1] = v74;
    if (v76)
    {
      v98 = v66;
      StickyTextSizeFittingLogic.onInvalidation(of:)(&v98);

      (v94)(v80);
    }

    else
    {
    }

    v81 = v88;
    (v87)(&v98, &v95);
    if (!v81)
    {
      v26 = v98;
    }

    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v89, type metadata accessor for ResolvableStringResolutionContext);
    v82 = *(v67 + 40);
    v83 = *(v67 + 48);
    v84 = *(v67 + 56);
    v85 = *(v67 + 64);
    *(v67 + 40) = v95;
    *(v67 + 56) = v96;
    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v82, v83, v84, v85);
    v8[5] = v7;
    goto LABEL_43;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(int64_t a1, void (*a2)(__n128), uint64_t a3, void (*a4)(char **__return_ptr, __int128 *, __n128), uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v93 = a3;
  v94 = a2;
  v12 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v91 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v86 - v17;
  swift_beginAccess();
  v19 = v5[5];
  v20 = *(v19 + 16);
  v92 = a1;
  v88 = v6;
  v87 = a4;
  v86[1] = a5;
  if (v20 > a1)
  {
    v5 = *(*v5 + 144);
    swift_beginAccess();
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v5 + v8, v18, type metadata accessor for ResolvableStringResolutionContext);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8[5] = v19;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_45:
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v8[5] = v19;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v19 + 16) > a1)
        {
          v22 = v19 + 48 * a1;
          v23 = *(v22 + 40);
          if (v23 && (*(v22 + 72) & 1) == 0)
          {
            v28 = *(v22 + 56);
            v57 = *(v22 + 64);
            v26 = *(v22 + 48);

            v33 = v28;
            v34 = v57;
            v31 = v26;
            v32 = 0;
            v24 = v23;
            v30 = v34;
          }

          else
          {
            v24 = DynamicTextView.DynamicTextHelper.value(for:)(v18);
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v23 = *(v22 + 40);
            v31 = *(v22 + 48);
            v32 = 1;
            v33 = *(v22 + 56);
            v34 = *(v22 + 64);
          }

          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v23, v31, v33, v34);
          *(v22 + 40) = v24;
          *(v22 + 48) = v26;
          *(v22 + 56) = v28;
          *(v22 + 64) = v30;
          *(v22 + 72) = 0;
          *&v95 = v24;
          *(&v95 + 1) = v26;
          v96.n128_u64[0] = v28;
          v96.n128_u64[1] = v30;
          if (v32)
          {
            v97[0] = v92;
            StickyTextSizeFittingLogic.onInvalidation(of:)(v97);

            (v94)(v58);
          }

          else
          {
          }

          v59 = v88;
          (v87)(v97, &v95);
          if (!v59)
          {
            LOBYTE(v26) = v97[0];
          }

          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v18, type metadata accessor for ResolvableStringResolutionContext);
          v60 = *(v22 + 40);
          v61 = *(v22 + 48);
          v62 = *(v22 + 56);
          v63 = *(v22 + 64);
          *(v22 + 40) = v95;
          *(v22 + 56) = v96;
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v60, v61, v62, v63);
          v8[5] = v19;
LABEL_43:
          swift_endAccess();
          return v26 & 1;
        }

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v90 = *(*v5 + 144);
  swift_beginAccess();
  if ((v5[4] & 1) == 0)
  {
    v7 = 48;
    do
    {
      v35 = v8[5];
      v36 = *(v35 + 16);
      if (v36 > a1)
      {
        break;
      }

      if (!v36)
      {
        __break(1u);
        goto LABEL_45;
      }

      v37 = (v35 + 48 * v36);
      v38 = *(v37 - 2);
      v39 = *(v37 - 1);
      v40 = *v37;
      v41 = v37[1];
      v42 = v37[2];

      outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v39, v40, v41, v42);
      DynamicTextView.DynamicTextHelper.narrowerVariant.getter(v38);
      v18 = v43;

      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v39, v40, v41, v42);
      v97[3] = v18;
      v44 = v91;
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v8 + v90, v91, type metadata accessor for ResolvableStringResolutionContext);
      v19 = DynamicTextView.DynamicTextHelper.value(for:)(v44);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      if ((*(v8 + 89) & 1) == 0 && v36 == v8[7])
      {
        *(v8 + 88) = 0;
        *(v8 + 9) = 0u;
        *(v8 + 7) = 0u;
        *(v8 + 89) = 1;
      }

      (v94)(v51);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v44, type metadata accessor for ResolvableStringResolutionContext);
      v52 = *(v19 + 260);

      if ((v52 & 0x100) == 0)
      {

        *(v8 + 32) = 1;
        break;
      }

      swift_beginAccess();
      v5 = v8[5];

      v53 = swift_isUniquelyReferenced_nonNull_native();
      v8[5] = v5;
      if ((v53 & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        v8[5] = v5;
      }

      v55 = v5[2];
      v54 = v5[3];
      if (v55 >= v54 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v5);
      }

      v5[2] = v55 + 1;
      v56 = &v5[6 * v55];
      v7 = 48;
      v56[4] = v18;
      v56[5] = v19;
      v56[6] = v46;
      v56[7] = v48;
      v56[8] = v50;
      *(v56 + 72) = 0;
      v8[5] = v5;
      swift_endAccess();

      a1 = v92;
    }

    while ((v8[4] & 1) == 0);
  }

  v7 = v8[5];
  v5 = *(v7 + 16);
  v64 = v90;
  swift_beginAccess();
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v8 + v64, v89, type metadata accessor for ResolvableStringResolutionContext);
  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  v8[5] = v7;
  if ((result & 1) == 0)
  {
LABEL_48:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    v8[5] = result;
    if (!v5)
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  if (!v5)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  if (v5 <= *(v7 + 16))
  {
    v66 = v5 - 1;
    v67 = v7 + 48 * (v5 - 1);
    v68 = *(v67 + 40);
    if (v68 && (*(v67 + 72) & 1) == 0)
    {
      v72 = *(v67 + 56);
      v79 = *(v67 + 64);
      v70 = *(v67 + 48);

      v77 = v72;
      v78 = v79;
      v75 = v70;
      v76 = 0;
      v26 = v68;
      v74 = v78;
    }

    else
    {
      v26 = DynamicTextView.DynamicTextHelper.value(for:)(v89);
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v68 = *(v67 + 40);
      v75 = *(v67 + 48);
      v76 = 1;
      v77 = *(v67 + 56);
      v78 = *(v67 + 64);
    }

    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v68, v75, v77, v78);
    *(v67 + 40) = v26;
    *(v67 + 48) = v70;
    *(v67 + 56) = v72;
    *(v67 + 64) = v74;
    *(v67 + 72) = 0;
    *&v95 = v26;
    *(&v95 + 1) = v70;
    v96.n128_u64[0] = v72;
    v96.n128_u64[1] = v74;
    if (v76)
    {
      v98 = v66;
      StickyTextSizeFittingLogic.onInvalidation(of:)(&v98);

      (v94)(v80);
    }

    else
    {
    }

    v81 = v88;
    (v87)(&v98, &v95);
    if (!v81)
    {
      LOBYTE(v26) = v98;
    }

    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v89, type metadata accessor for ResolvableStringResolutionContext);
    v82 = *(v67 + 40);
    v83 = *(v67 + 48);
    v84 = *(v67 + 56);
    v85 = *(v67 + 64);
    *(v67 + 40) = v95;
    *(v67 + 56) = v96;
    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v82, v83, v84, v85);
    v8[5] = v7;
    goto LABEL_43;
  }

LABEL_50:
  __break(1u);
  return result;
}

unint64_t specialized SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter(uint64_t a1, uint64_t a2)
{
  LOBYTE(v11) = 1;
  v10 = 1;
  specialized SizeFittingTextCache.suggestedVariant(for:)(0, 1, 0, 1, &v8);
  if (v9)
  {
    swift_beginAccess();

    LOBYTE(v11) = 1;
    v10 = 1;
    specialized ClosestFitCache.callAsFunction(for:makeValue:)(0.0, 1, 0.0, 1, (a2 + 16), a2, &v11, 0, 1);
    swift_endAccess();
    v3 = v11;
  }

  else
  {
    v3 = v8;
    v11 = v8;
  }

  v4 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v3, _ViewInputs.base.modify, 0, specialized closure #1 in SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter, 0);
  v6 = v5;
  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v8 = 0xD00000000000001ELL;
  v9 = 0x800000018DD75B20;
  MEMORY[0x193ABEDD0](v4, v6);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v8;
}

double specialized ChildEnvironment.updateValue()()
{
  v22 = *MEMORY[0x1E69E9840];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for _EnvironmentKeyWritingModifier);
  Value = AGGraphGetValue();
  v2 = Value[1];
  v14 = *Value;
  v15 = v2;
  v4 = v3 & 1;
  v16 = v3 & 1;

  v5 = AGGraphGetValue();
  v6 = v5[1];
  v19 = *v5;
  v20 = v6;
  v21 = v7 & 1;
  if (v7)
  {

    goto LABEL_7;
  }

  if (v4)
  {
    MEMORY[0x1EEE9AC00](v5);
    v13[2] = &v14;
    v10 = *(v0 + 8);
    v11 = *(v0 + 16);

    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_EnvironmentKeyWritingModifierVyAD16RedactionReasonsVG_s5NeverOSbTB5(partial apply for specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue(), v13, v10, v11);
    if (v12 == 2 || (v12 & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (!AGGraphGetOutputValue())
  {
LABEL_7:
    v17 = v15;

    swift_setAtWritableKeyPath();

    v17 = v19;
    v18 = v20;

    AGGraphSetOutputValue();

    v8 = v15;
    *(v0 + 8) = v14;
    *(v0 + 16) = v8;

    goto LABEL_8;
  }

LABEL_8:

  return result;
}

uint64_t specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, RedactionReasons>, &type metadata for EnvironmentValues, &type metadata for RedactionReasons, MEMORY[0x1E69E6CE0]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return AGCompareValues() ^ 1;
  }

  else
  {
    return 1;
  }
}

{
  type metadata accessor for WritableKeyPath<EnvironmentValues, Font?>(0);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 1;
  }

  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for Font?, &type metadata for Font, MEMORY[0x1E69E6720]);
  return AGCompareValues() ^ 1;
}

BOOL specialized ResettableGestureRule.resetIfNeeded()()
{
  v1 = *(v0 + 40);
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
    OutputValue = AGGraphGetOutputValue();
    v7 = 1;
    if (OutputValue)
    {
      v3 = OutputValue[2].u8[1];
      if (v3 == 2 || v3 == 3 && ((v4 = vorrq_s8(*OutputValue, OutputValue[1]), v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)), !OutputValue[2].i8[0]) ? (v6 = *&v5 == 0) : (v6 = 0), v6))
      {
        v7 = 0;
      }
    }
  }

  else
  {
    *(v0 + 36) = 0;
    *(v0 + 24) = 0;
    v7 = 1;
    *(v0 + 32) = 1;
  }

  *(v0 + 40) = *AGGraphGetValue();
  return v7;
}

{
  v1 = *(v0 + 48);
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for GesturePhase);
    OutputValue = AGGraphGetOutputValue();
    v5 = 1;
    if (OutputValue)
    {
      v3 = *(OutputValue + 9);
      if (v3 == 2 || v3 == 3 && (!*(OutputValue + 8) ? (v4 = *OutputValue == 0) : (v4 = 0), v4))
      {
        v5 = 0;
      }
    }
  }

  else
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    v5 = 1;
    *(v0 + 32) = 1;
    *(v0 + 40) = 0;
  }

  *(v0 + 48) = *AGGraphGetValue();
  return v5;
}

{
  v1 = *(v0 + 16);
  v7 = 1;
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
    OutputValue = AGGraphGetOutputValue();
    if (OutputValue)
    {
      v3 = OutputValue[2].u8[1];
      if (v3 == 2 || v3 == 3 && ((v4 = vorrq_s8(*OutputValue, OutputValue[1]), v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)), !OutputValue[2].i8[0]) ? (v6 = *&v5 == 0) : (v6 = 0), v6))
      {
        v7 = 0;
      }
    }
  }

  *(v0 + 16) = *AGGraphGetValue();
  return v7;
}

{
  v1 = *(v0 + 36);
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<Double>, MEMORY[0x1E69E63B0], type metadata accessor for GesturePhase);
    OutputValue = AGGraphGetOutputValue();
    v5 = 1;
    if (OutputValue)
    {
      v3 = *(OutputValue + 9);
      if (v3 == 2 || v3 == 3 && (!*(OutputValue + 8) ? (v4 = *OutputValue == 0) : (v4 = 0), v4))
      {
        v5 = 0;
      }
    }
  }

  else
  {
    *(v0 + 24) = 0;
    v5 = 1;
    *(v0 + 32) = 1;
  }

  *(v0 + 36) = *AGGraphGetValue();
  return v5;
}

{
  v1 = *(v0 + 12);
  v7 = 1;
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
    OutputValue = AGGraphGetOutputValue();
    if (OutputValue)
    {
      v3 = OutputValue[2].u8[1];
      if (v3 == 2 || v3 == 3 && ((v4 = vorrq_s8(*OutputValue, OutputValue[1]), v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)), !OutputValue[2].i8[0]) ? (v6 = *&v5 == 0) : (v6 = 0), v6))
      {
        v7 = 0;
      }
    }
  }

  *(v0 + 12) = *AGGraphGetValue();
  return v7;
}

uint64_t specialized ResettableGestureRule.resetIfNeeded()()
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  if (v1 != *AGGraphGetValue())
  {
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    v7 = 1;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase.Value);
    AGGraphSetOutputValue();
    v12[0] = 0;
    v12[1] = 0;
    v12[2] = 1;
    v13 = 0u;
    v14 = 0u;
    memset(v15, 0, sizeof(v15));
    v16 = v10;
    v17 = v11;
    v18 = 0;
    v19 = 0;
    v20 = 5;
    outlined destroy of EventListenerPhase<SpatialEvent>.Value(v12);
    Value = AGGraphGetValue();
LABEL_12:
    *(v0 + 40) = *Value;
    return v7;
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase.Value);
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = OutputValue[5].u8[1];
    if (v3 == 2 || v3 == 3 && ((v4 = vorrq_s8(vorrq_s8(OutputValue[1], OutputValue[3]), vorrq_s8(OutputValue[2], OutputValue[4])), v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | OutputValue->i64[1] | OutputValue->i64[0], !OutputValue[5].i8[0]) ? (v6 = v5 == 0) : (v6 = 0), v6))
    {
      Value = AGGraphGetValue();
      v7 = 0;
      goto LABEL_12;
    }
  }

  *(v0 + 40) = *AGGraphGetValue();
  return 1;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  if (v1 == *AGGraphGetValue())
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase.Value);
    OutputValue = AGGraphGetOutputValue();
    if (OutputValue)
    {
      v3 = OutputValue[2].u8[1];
      if (v3 == 2 || v3 == 3 && ((v4 = vorrq_s8(*OutputValue, OutputValue[1]), v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)), !OutputValue[2].i8[0]) ? (v6 = *&v5 == 0) : (v6 = 0), v6))
      {
        Value = AGGraphGetValue();
        result = 0;
        *(v0 + 40) = *Value;
        return result;
      }
    }
  }

  else
  {
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase.Value);
    AGGraphSetOutputValue();
    v11[0] = 0;
    v11[1] = 0;
    v12 = xmmword_18DD85500;
    v13 = 0;
    v14 = v9;
    v15 = v10;
    v16 = 0;
    v17 = 0;
    v18 = 5;
    outlined destroy of EventListenerPhase<TappableEvent>.Value(v11);
  }

  *(v0 + 40) = *AGGraphGetValue();
  return 1;
}

uint64_t specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:)(uint64_t result, uint64_t a2, double a3)
{
  if (*(result + 16))
  {
    result = outlined init with copy of _LazyLayout_Subview(result + 32, v17);
    if (!a2)
    {
      memset(v16, 0, sizeof(v16));
      goto LABEL_6;
    }

    if (*(a2 + 16))
    {
      outlined init with copy of _LazyLayout_Subview(a2 + 32, v16);
LABEL_6:
      v5 = v17[2];
      v6 = *(LazyLayoutViewCache.item(data:)(v18) + 44);

      v7 = *MEMORY[0x1E698D3F8];
      v13 = v5;
      v14 = v6;
      v15 = v7;
      v9 = 0;
      v10 = 1;
      v11 = a3;
      v12 = 0;
      LayoutProxy.lengthThatFits(_:in:)(&v9, 0);
      MEMORY[0x1EEE9AC00](v8);
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
      outlined destroy of GlassEntryView?(v16, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      return outlined destroy of _LazyLayout_Subview(v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  if (*(result + 16))
  {
    result = outlined init with copy of _LazyLayout_Subview(result + 32, v17);
    if (!a2)
    {
      memset(v16, 0, sizeof(v16));
      goto LABEL_6;
    }

    if (*(a2 + 16))
    {
      outlined init with copy of _LazyLayout_Subview(a2 + 32, v16);
LABEL_6:
      v5 = v17[2];
      v6 = *(LazyLayoutViewCache.item(data:)(v18) + 44);

      v7 = *MEMORY[0x1E698D3F8];
      v13 = v5;
      v14 = v6;
      v15 = v7;
      v9 = a3;
      v10 = 0;
      v11 = 0;
      v12 = 1;
      LayoutProxy.lengthThatFits(_:in:)(&v9, 1);
      MEMORY[0x1EEE9AC00](v8);
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:));
      outlined destroy of GlassEntryView?(v16, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      return outlined destroy of _LazyLayout_Subview(v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized LazyStack<>.place(subviews:context:cache:in:)(void *a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v143 = a4;
  v145 = a7;
  v146 = a7 & 0xFFFFFFFF00000000;
  v142 = type metadata accessor for IndexSet();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  v139 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v133 - v16;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)?, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v133 - v19;
  type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v144 = &v133 - v27;
  v28 = *(a2 + 280);
  v29 = *(a2 + 288);
  v30 = *(a2 + 296);
  v31 = *(a2 + 104);
  v32 = *(a2 + 136);
  v153 = *(a2 + 120);
  v154 = v32;
  v155 = *(a2 + 152);
  v33 = *(a2 + 72);
  v149 = *(a2 + 56);
  v34 = *(a2 + 88);
  v152 = v31;
  v150 = v33;
  v151 = v34;
  if (v30)
  {
    v138 = a5;
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v29, v28));
    a5 = v138;
  }

  v36 = *(&v154 + 1);
  v35 = *&v154;
  v38 = *(&v155 + 1);
  v37 = *&v155;
  LOBYTE(v149) = v145 & 1;
  specialized LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(a1, a2, a3, a5, a6, v146 | v145 & 1, v20);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)?, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>), MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    return;
  }

  v39 = v144;
  outlined init with take of (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(v20, v144, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v40 = v22;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  outlined init with take of StackPlacement<LazyHStackLayout>(v25, v17, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v41 = *(v25 + *(v22 + 48));
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v42 = v25 + *(v22 + 48);
  v43 = *(v42 + 24);
  v44 = *(v42 + 32);
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v45 = *(v25 + *(v22 + 48) + 40);
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v46 = *(v25 + *(v22 + 48) + 41);
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  v145 = v40;
  v47 = (v39 + *(v40 + 48));
  v48 = v47[1];
  v149 = *v47;
  v49 = v47[2];
  v152 = v47[3];
  v150 = v48;
  v151 = v49;
  v146 = a1;
  v50 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE313218subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6HStackY0V_Tt4B5(a1, a2, a3, v17, &v149);
  if (v52)
  {
    goto LABEL_118;
  }

  v53 = v50;
  v135 = v46;
  v137 = a3;
  v54 = v51;
  specialized StackPlacement.log(_:)(v51, *(v17 + 7), *(v17 + 8), v17, v50);
  v55 = (v17 + 136);
  *(v17 + 12) = *&v53;
  v17[104] = 0;
  *(v17 + 14) = v54;
  *(v17 + 15) = 0;
  v17[128] = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v17 + 17);
  if (isUniquelyReferenced_nonNull_native)
  {
    v58 = *(v57 + 2);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *v55 = v57;
    if ((v59 & 1) == 0)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 1, v57);
      *v55 = v57;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v58, 0);
  }

  else
  {
    v60 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v57 + 3) >> 1);

    v57 = v60;
  }

  *(v17 + 17) = v57;

  *(v17 + 18) = 0;
  outlined destroy of GlassEntryView?((v17 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v17 + 152) = 0u;
  *(v17 + 168) = 0u;
  *(v17 + 184) = 0u;
  *(v17 + 200) = 0u;
  *(v17 + 216) = 0u;
  *(v17 + 232) = 0u;
  *(v17 + 248) = 0u;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v17 + 33);
  v138 = v41;
  v136 = v45;
  if (v61)
  {
    v63 = *(v62 + 2);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 33) = v62;
    if ((v64 & 1) == 0)
    {
      v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 1, v62);
      *(v17 + 33) = v62;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v63, 0);
  }

  else
  {
    v65 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v62 + 3) >> 1);

    v62 = v65;
  }

  *(v17 + 33) = v62;
  *(v17 + 17) = xmmword_18DDAB4E0;
  *(v17 + 18) = xmmword_18DDAB4F0;
  *(v17 + 19) = xmmword_18DDAB4F0;
  v17[320] = 0;
  v66 = &v17[*(v139 + 104)];
  *&v67 = MEMORY[0x1E69E7CC0];
  v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v66 = v68;
  v69 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v67);

  v66[1] = v69;
  v148 = *&v67;
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  v70 = v140;
  v71 = v142;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v72 = type metadata accessor for EstimationCache(0);
  v73 = *(v72 + 24);
  v74 = (*(v141 + 40))(v66 + v73, v70, v71);
  v75 = *(v17 + 4);
  v76 = __OFSUB__(v53, v75);
  v77 = v53 - v75;
  if (v77 < 0 == v76)
  {
    v17[104] = 1;
    if (v76)
    {
      __break(1u);
      goto LABEL_127;
    }

    *(v17 + 12) = v77;
    v53 = v77;
  }

  v141 = v72;
  v142 = v73;
  v78 = 2 * v138;
  v148 = *&v53;
  v147 = 2 * v138;
  MEMORY[0x1EEE9AC00](v74);
  *(&v133 - 2) = v17;
  v79 = _LazyLayout_Subviews.applyNodes(from:style:to:)(&v148, &v147, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, (&v133 - 4));
  specialized StackPlacement.flushMinorGroup()(v80);
  v81 = (v79 & 1) != 0 && vabdd_f64(*(v17 + 14), *(v17 + 37)) < 0.01;
  v82 = v143;
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    goto LABEL_24;
  }

  if (v17[320] == 1)
  {
LABEL_24:
    outlined destroy of StackPlacement<LazyHStackLayout>(v17);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v39, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
    *(v82 + 64) = 1;
    return;
  }

  v83 = *(v17 + 33);

  v134 = v83;
  *v82 = v83;
  v156.origin.x = v35;
  v156.origin.y = v36;
  v156.size.width = v37;
  v156.size.height = v38;
  IsNull = CGRectIsNull(v156);
  v85 = 0.0;
  v86 = 0.0;
  if (!IsNull)
  {
    v86 = v36 + v38;
    if (v36 + v38 >= v36)
    {
      v85 = v36;
    }

    else
    {
      v85 = v36 + v38;
    }

    if (v36 > v86)
    {
      v86 = v36;
    }

    if (v85 > v86)
    {
      v86 = 0.0;
      v85 = 0.0;
    }
  }

  v8 = *(v17 + 36);
  v7 = *(v17 + 37);
  v140 = v78;
  if (v8 >= v7)
  {
    v89 = *MEMORY[0x1E695F050];
    v85 = *(MEMORY[0x1E695F050] + 8);
    v90 = *(MEMORY[0x1E695F050] + 16);
    v87 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v87 = v7 - v8;
    v88 = v86 - v85;
    if (v17[24])
    {
      v89 = v85;
    }

    else
    {
      v89 = v8;
    }

    if (v17[24])
    {
      v85 = v8;
      v90 = v88;
    }

    else
    {
      v90 = v7 - v8;
    }

    if (!v17[24])
    {
      v87 = v88;
    }
  }

  v157.origin.x = v35;
  v157.origin.y = v36;
  v157.size.width = v37;
  v157.size.height = v38;
  *(v82 + 1) = CGRectUnion(*(&v85 - 1), v157);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v70 = v145;
  v91 = v25 + *(v145 + 48);
  v71 = v137;
  *v137 = *v91;
  *(v71 + 8) = *(v91 + 8);
  *(v71 + 24) = 0;
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  *(v71 + 80) = *(v25 + *(v70 + 48) + 24);
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  *(v71 + 96) = *(v25 + *(v70 + 48) + 48);
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  *(v71 + 104) = *(v25 + *(v70 + 48) + 56);
  outlined destroy of StackPlacement<LazyHStackLayout>(v25);
  v73 = *(v71 + 48);
  v72 = *(v17 + 34);
  v92 = *(v17 + 35);
  if (v73 != *(v71 + 56))
  {
    goto LABEL_47;
  }

  if (v92 >= v72)
  {
    if (v92 + 1 < v72)
    {
      __break(1u);
      goto LABEL_133;
    }

    if (v72 != v92 + 1)
    {
LABEL_47:
      if (v92 >= v72)
      {
        v93 = v92 + 1;
        if (v92 + 1 < v72)
        {
          goto LABEL_130;
        }

        v73 = *(v17 + 34);
      }

      else
      {
        v73 = *(v17 + 12);
        v93 = v73;
      }

      *(v71 + 48) = v73;
      *(v71 + 56) = v93;
      if (v8 < v7)
      {
        v94 = v8;
        v95 = v7;
        if (v8 <= v7)
        {
LABEL_55:
          *(v71 + 64) = v94;
          *(v71 + 72) = v95;
          if (v81)
          {
            if (v92 >= v72)
            {
              v96 = v92 + 1;
              if (v92 + 1 < v72)
              {
LABEL_135:
                __break(1u);
                goto LABEL_136;
              }
            }

            else
            {
              v96 = *(v17 + 12);
            }
          }

          else
          {
            v96 = 0;
          }

          *(v71 + 32) = v96;
          *(v71 + 40) = !v81;
          if (v94 < 0.01 && v95 < 0.01)
          {
            v73 = 0;
            *(v71 + 48) = 0;
            *(v71 + 56) = 0;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      v94 = *(v17 + 14);
      v95 = v94;
      goto LABEL_55;
    }
  }

LABEL_63:
  v145 = v92;
  LODWORD(v139) = v81;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v98 = (v71 + *(v97 + 60));
  v99 = *v66;

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v98;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v99, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v100, &v148);
  v101 = v148;
  *v98 = v148;
  v102 = v66[1];

  v103 = swift_isUniquelyReferenced_nonNull_native();
  v148 = v98[1];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v102, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v103, &v148);
  v98[1] = v148;
  v70 = *(v141 + 24);
  IndexSet.formUnion(_:)();
  if (*(*&v101 + 16))
  {
    v105 = COERCE_DOUBLE(EstimationCache.average.getter());
    if (v106)
    {
      v105 = 0.0;
    }

    v36 = v104 + v105;
  }

  else
  {
    v36 = 32.0;
  }

  v25 = v138;
  LODWORD(v66) = v136;
  v148 = 0.0;
  v71 = v137;
  v107 = *(v137 + 64);
  v39 = v144;
  v108 = &protocol conformance descriptor for GestureGraph;
  if (v138 != 1)
  {
    if (v138)
    {
      if (v73 != 0x8000000000000000 || v138 != -1)
      {
        v73 /= v138;
        goto LABEL_73;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

LABEL_73:
  v35 = 0.0;
  if (v136)
  {
    goto LABEL_82;
  }

  if (!v73)
  {
    if (fabs(v107) <= 0.01)
    {
      goto LABEL_82;
    }

    v35 = -v107;
    goto LABEL_81;
  }

  if (v107 < 0.01)
  {
    if (v73 < 0)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v109 = IndexSet.contains(integersIn:)();
    v71 = v137;
    v108 = &protocol conformance descriptor for GestureGraph;
    if ((v109 & 1) == 0)
    {
      v35 = v36 * v73;
LABEL_81:
      v148 = v35;
    }
  }

LABEL_82:
  v37 = v108[168];
  v70 = v143;
  if (fabs(v35) <= v37)
  {
    goto LABEL_91;
  }

  v110 = v35 + *(v71 + 72);
  if (v107 + v35 > v110)
  {
LABEL_128:
    __break(1u);
    __break(1u);
    goto LABEL_129;
  }

  *(v71 + 64) = v107 + v35;
  *(v71 + 72) = v110;
  *(v70 + 48) = v35;
  v73 = *(v134 + 2);
  if (!v73)
  {
    goto LABEL_90;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_131;
  }

  while (1)
  {
    v111 = v73 - 1;
    v112 = v134;
    v113 = 0;
    if (v73 == 1)
    {
      goto LABEL_87;
    }

    v129 = !is_mul_ok(v111, 0x50uLL);
    if (&v134[80 * v111 + 88] < v134 + 88)
    {
      goto LABEL_87;
    }

    if (v129)
    {
      goto LABEL_87;
    }

    v113 = v73 & 0x7FFFFFFFFFFFFFFELL;
    v130 = (v134 + 168);
    v131 = v73 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v132 = v35 + *v130;
      *(v130 - 10) = v35 + *(v130 - 10);
      *v130 = v132;
      v130 += 20;
      v131 -= 2;
    }

    while (v131);
    if (v73 != v113)
    {
LABEL_87:
      v114 = &v112[80 * v113 + 88];
      v115 = v73 - v113;
      do
      {
        *v114 = v35 + *v114;
        v114 += 10;
        --v115;
      }

      while (v115);
    }

    *v70 = v112;
LABEL_90:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu1_12CoreGraphics7CGFloatVTf1c_n(&v148);
LABEL_91:
    v116 = v145;
    if (v8 < v7)
    {
      if (v8 <= v7)
      {
        goto LABEL_95;
      }

      __break(1u);
    }

    v7 = *(v17 + 14);
LABEL_95:
    if (v116 < v72)
    {
      break;
    }

    v73 = v116 + 1;
    v118 = v116 + 1 < v72;
    v117 = v140;
    if (!v118)
    {
      goto LABEL_98;
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    __break(1u);
LABEL_131:
    v134 = specialized _ArrayBuffer._consumeAndCreateNew()(v134);
  }

  v73 = *(v17 + 12);
  v117 = v140;
LABEL_98:
  v119 = *(a2 + 32);
  if (v139)
  {
    v120 = vabdd_f64(v7, v119);
    *(v70 + 40) = v120 >= 1.0;
    if (v120 >= 1.0)
    {
      _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu2_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_n(a2, 0, v7);
    }

    goto LABEL_117;
  }

  if (v119 + v37 < v7)
  {
    *(v70 + 40) = 1;
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu3_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_n(a2, 0, v7);
    goto LABEL_117;
  }

  v148 = *&v117;
  v121 = _ViewList_Node.estimatedCount(style:)(&v148);
  if (__OFSUB__(v121, v73))
  {
    goto LABEL_134;
  }

  v122 = (v121 - v73) & ~((v121 - v73) >> 63);
  v71 = v137;
  if (v25 == 1)
  {
LABEL_110:
    v125 = v7 + v36 * v122;
    if (v125 >= v119)
    {
      v126 = v119;
    }

    else
    {
      v126 = v7 + v36 * v122;
    }

    v127 = v126 * 0.1;
    if ((v66 & v135) != 0)
    {
      v127 = v37;
    }

    v128 = vabdd_f64(v119, v125);
    *(v70 + 40) = v127 < v128;
    if (v127 < v128)
    {
      _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu5_12CoreGraphics7CGFloatVAPTf1c_n(v125, v119);
    }

LABEL_117:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzx34_cK11_PlacementsVztFSSyXEfu6_AA0c6L7K0V_Tg5SNy12CoreGraphics7CGFloatVGAEyALGAA01_cM11_PlacementsVTf1c_n(v71, v70, v43, v44);
LABEL_118:
    outlined destroy of StackPlacement<LazyHStackLayout>(v17);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v39, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
    return;
  }

  v76 = __OFADD__(v122, v25);
  v123 = v122 + v25;
  if (v76)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (!v25)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v124 = v123 - 1;
  if (v124 != 0x8000000000000000 || v25 != -1)
  {
    v122 = v124 / v25;
    goto LABEL_110;
  }

LABEL_139:
  __break(1u);
}

{
  v143 = a4;
  v145 = a7;
  v146 = a7 & 0xFFFFFFFF00000000;
  v142 = type metadata accessor for IndexSet();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  v139 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v133 - v16;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)?, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v133 - v19;
  type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v144 = &v133 - v27;
  v28 = *(a2 + 280);
  v29 = *(a2 + 288);
  v30 = *(a2 + 296);
  v31 = *(a2 + 104);
  v32 = *(a2 + 136);
  v153 = *(a2 + 120);
  v154 = v32;
  v155 = *(a2 + 152);
  v33 = *(a2 + 72);
  v149 = *(a2 + 56);
  v34 = *(a2 + 88);
  v152 = v31;
  v150 = v33;
  v151 = v34;
  if (v30)
  {
    v138 = a5;
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v29, v28));
    a5 = v138;
  }

  v36 = *(&v154 + 1);
  v35 = *&v154;
  v38 = *(&v155 + 1);
  v37 = *&v155;
  LOBYTE(v149) = v145 & 1;
  specialized LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(a1, a2, a3, a5, a6, v146 | v145 & 1, v20);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)?, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>), MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    return;
  }

  v39 = v144;
  outlined init with take of (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(v20, v144, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v40 = v22;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  outlined init with take of StackPlacement<LazyHStackLayout>(v25, v17, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v41 = *(v25 + *(v22 + 48));
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v42 = v25 + *(v22 + 48);
  v43 = *(v42 + 24);
  v44 = *(v42 + 32);
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v45 = *(v25 + *(v22 + 48) + 40);
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v46 = *(v25 + *(v22 + 48) + 41);
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  v145 = v40;
  v47 = (v39 + *(v40 + 48));
  v48 = v47[1];
  v149 = *v47;
  v49 = v47[2];
  v152 = v47[3];
  v150 = v48;
  v151 = v49;
  v146 = a1;
  v50 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE313218subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6VStackY0V_Tt4B5(a1, a2, a3, v17, &v149);
  if (v52)
  {
    goto LABEL_118;
  }

  v53 = v50;
  v135 = v46;
  v137 = a3;
  v54 = v51;
  specialized StackPlacement.log(_:)(v51, *(v17 + 7), *(v17 + 8), v17, v50);
  v55 = (v17 + 136);
  *(v17 + 12) = *&v53;
  v17[104] = 0;
  *(v17 + 14) = v54;
  *(v17 + 15) = 0;
  v17[128] = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v17 + 17);
  if (isUniquelyReferenced_nonNull_native)
  {
    v58 = *(v57 + 2);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *v55 = v57;
    if ((v59 & 1) == 0)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 1, v57);
      *v55 = v57;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v58, 0);
  }

  else
  {
    v60 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v57 + 3) >> 1);

    v57 = v60;
  }

  *(v17 + 17) = v57;

  *(v17 + 18) = 0;
  outlined destroy of GlassEntryView?((v17 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v17 + 152) = 0u;
  *(v17 + 168) = 0u;
  *(v17 + 184) = 0u;
  *(v17 + 200) = 0u;
  *(v17 + 216) = 0u;
  *(v17 + 232) = 0u;
  *(v17 + 248) = 0u;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v17 + 33);
  v138 = v41;
  v136 = v45;
  if (v61)
  {
    v63 = *(v62 + 2);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 33) = v62;
    if ((v64 & 1) == 0)
    {
      v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 1, v62);
      *(v17 + 33) = v62;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v63, 0);
  }

  else
  {
    v65 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v62 + 3) >> 1);

    v62 = v65;
  }

  *(v17 + 33) = v62;
  *(v17 + 17) = xmmword_18DDAB4E0;
  *(v17 + 18) = xmmword_18DDAB4F0;
  *(v17 + 19) = xmmword_18DDAB4F0;
  v17[320] = 0;
  v66 = &v17[*(v139 + 104)];
  *&v67 = MEMORY[0x1E69E7CC0];
  v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v66 = v68;
  v69 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v67);

  v66[1] = v69;
  v148 = *&v67;
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  v70 = v140;
  v71 = v142;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v72 = type metadata accessor for EstimationCache(0);
  v73 = *(v72 + 24);
  v74 = (*(v141 + 40))(v66 + v73, v70, v71);
  v75 = *(v17 + 4);
  v76 = __OFSUB__(v53, v75);
  v77 = v53 - v75;
  if (v77 < 0 == v76)
  {
    v17[104] = 1;
    if (v76)
    {
      __break(1u);
      goto LABEL_127;
    }

    *(v17 + 12) = v77;
    v53 = v77;
  }

  v141 = v72;
  v142 = v73;
  v78 = 2 * v138;
  v148 = *&v53;
  v147 = 2 * v138;
  MEMORY[0x1EEE9AC00](v74);
  *(&v133 - 2) = v17;
  v79 = _LazyLayout_Subviews.applyNodes(from:style:to:)(&v148, &v147, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, (&v133 - 4));
  specialized StackPlacement.flushMinorGroup()(v80);
  v81 = (v79 & 1) != 0 && vabdd_f64(*(v17 + 14), *(v17 + 37)) < 0.01;
  v82 = v143;
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    goto LABEL_24;
  }

  if (v17[320] == 1)
  {
LABEL_24:
    outlined destroy of StackPlacement<LazyVStackLayout>(v17);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v39, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
    *(v82 + 64) = 1;
    return;
  }

  v83 = *(v17 + 33);

  v134 = v83;
  *v82 = v83;
  v156.origin.x = v35;
  v156.origin.y = v36;
  v156.size.width = v37;
  v156.size.height = v38;
  IsNull = CGRectIsNull(v156);
  v85 = 0.0;
  v86 = 0.0;
  if (!IsNull)
  {
    v86 = v35 + v37;
    if (v35 + v37 >= v35)
    {
      v85 = v35;
    }

    else
    {
      v85 = v35 + v37;
    }

    if (v35 > v86)
    {
      v86 = v35;
    }

    if (v85 > v86)
    {
      v86 = 0.0;
      v85 = 0.0;
    }
  }

  v8 = *(v17 + 36);
  v7 = *(v17 + 37);
  v140 = v78;
  if (v8 >= v7)
  {
    v89 = *MEMORY[0x1E695F050];
    v85 = *(MEMORY[0x1E695F050] + 8);
    v90 = *(MEMORY[0x1E695F050] + 16);
    v87 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v87 = v7 - v8;
    v88 = v86 - v85;
    if (v17[24])
    {
      v89 = v85;
    }

    else
    {
      v89 = v8;
    }

    if (v17[24])
    {
      v85 = v8;
      v90 = v88;
    }

    else
    {
      v90 = v7 - v8;
    }

    if (!v17[24])
    {
      v87 = v88;
    }
  }

  v157.origin.x = v35;
  v157.origin.y = v36;
  v157.size.width = v37;
  v157.size.height = v38;
  *(v82 + 1) = CGRectUnion(*(&v85 - 1), v157);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v70 = v145;
  v91 = v25 + *(v145 + 48);
  v71 = v137;
  *v137 = *v91;
  *(v71 + 8) = *(v91 + 8);
  *(v71 + 24) = 0;
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  *(v71 + 80) = *(v25 + *(v70 + 48) + 24);
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  *(v71 + 96) = *(v25 + *(v70 + 48) + 48);
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v39, v25, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  *(v71 + 104) = *(v25 + *(v70 + 48) + 56);
  outlined destroy of StackPlacement<LazyVStackLayout>(v25);
  v73 = *(v71 + 48);
  v72 = *(v17 + 34);
  v92 = *(v17 + 35);
  if (v73 != *(v71 + 56))
  {
    goto LABEL_47;
  }

  if (v92 >= v72)
  {
    if (v92 + 1 < v72)
    {
      __break(1u);
      goto LABEL_133;
    }

    if (v72 != v92 + 1)
    {
LABEL_47:
      if (v92 >= v72)
      {
        v93 = v92 + 1;
        if (v92 + 1 < v72)
        {
          goto LABEL_130;
        }

        v73 = *(v17 + 34);
      }

      else
      {
        v73 = *(v17 + 12);
        v93 = v73;
      }

      *(v71 + 48) = v73;
      *(v71 + 56) = v93;
      if (v8 < v7)
      {
        v94 = v8;
        v95 = v7;
        if (v8 <= v7)
        {
LABEL_55:
          *(v71 + 64) = v94;
          *(v71 + 72) = v95;
          if (v81)
          {
            if (v92 >= v72)
            {
              v96 = v92 + 1;
              if (v92 + 1 < v72)
              {
LABEL_135:
                __break(1u);
                goto LABEL_136;
              }
            }

            else
            {
              v96 = *(v17 + 12);
            }
          }

          else
          {
            v96 = 0;
          }

          *(v71 + 32) = v96;
          *(v71 + 40) = !v81;
          if (v94 < 0.01 && v95 < 0.01)
          {
            v73 = 0;
            *(v71 + 48) = 0;
            *(v71 + 56) = 0;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      v94 = *(v17 + 14);
      v95 = v94;
      goto LABEL_55;
    }
  }

LABEL_63:
  v145 = v92;
  LODWORD(v139) = v81;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v98 = (v71 + *(v97 + 60));
  v99 = *v66;

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v98;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v99, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v100, &v148);
  v101 = v148;
  *v98 = v148;
  v102 = v66[1];

  v103 = swift_isUniquelyReferenced_nonNull_native();
  v148 = v98[1];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v102, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v103, &v148);
  v98[1] = v148;
  v70 = *(v141 + 24);
  IndexSet.formUnion(_:)();
  if (*(*&v101 + 16))
  {
    v105 = COERCE_DOUBLE(EstimationCache.average.getter());
    if (v106)
    {
      v105 = 0.0;
    }

    v36 = v104 + v105;
  }

  else
  {
    v36 = 32.0;
  }

  v25 = v138;
  LODWORD(v66) = v136;
  v148 = 0.0;
  v71 = v137;
  v107 = *(v137 + 64);
  v39 = v144;
  v108 = &protocol conformance descriptor for GestureGraph;
  if (v138 != 1)
  {
    if (v138)
    {
      if (v73 != 0x8000000000000000 || v138 != -1)
      {
        v73 /= v138;
        goto LABEL_73;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

LABEL_73:
  v35 = 0.0;
  if (v136)
  {
    goto LABEL_82;
  }

  if (!v73)
  {
    if (fabs(v107) <= 0.01)
    {
      goto LABEL_82;
    }

    v35 = -v107;
    goto LABEL_81;
  }

  if (v107 < 0.01)
  {
    if (v73 < 0)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v109 = IndexSet.contains(integersIn:)();
    v71 = v137;
    v108 = &protocol conformance descriptor for GestureGraph;
    if ((v109 & 1) == 0)
    {
      v35 = v36 * v73;
LABEL_81:
      v148 = v35;
    }
  }

LABEL_82:
  v37 = v108[168];
  v70 = v143;
  if (fabs(v35) <= v37)
  {
    goto LABEL_91;
  }

  v110 = v35 + *(v71 + 72);
  if (v107 + v35 > v110)
  {
LABEL_128:
    __break(1u);
    __break(1u);
    goto LABEL_129;
  }

  *(v71 + 64) = v107 + v35;
  *(v71 + 72) = v110;
  *(v70 + 56) = v35;
  v73 = *(v134 + 2);
  if (!v73)
  {
    goto LABEL_90;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_131;
  }

  while (1)
  {
    v111 = v73 - 1;
    v112 = v134;
    v113 = 0;
    if (v73 == 1)
    {
      goto LABEL_87;
    }

    v129 = !is_mul_ok(v111, 0x50uLL);
    if (&v134[80 * v111 + 96] < v134 + 96)
    {
      goto LABEL_87;
    }

    if (v129)
    {
      goto LABEL_87;
    }

    v113 = v73 & 0x7FFFFFFFFFFFFFFELL;
    v130 = (v134 + 176);
    v131 = v73 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v132 = v35 + *v130;
      *(v130 - 10) = v35 + *(v130 - 10);
      *v130 = v132;
      v130 += 20;
      v131 -= 2;
    }

    while (v131);
    if (v73 != v113)
    {
LABEL_87:
      v114 = &v112[80 * v113 + 96];
      v115 = v73 - v113;
      do
      {
        *v114 = v35 + *v114;
        v114 += 10;
        --v115;
      }

      while (v115);
    }

    *v70 = v112;
LABEL_90:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu1_12CoreGraphics7CGFloatVTf1c_n(&v148);
LABEL_91:
    v116 = v145;
    if (v8 < v7)
    {
      if (v8 <= v7)
      {
        goto LABEL_95;
      }

      __break(1u);
    }

    v7 = *(v17 + 14);
LABEL_95:
    if (v116 < v72)
    {
      break;
    }

    v73 = v116 + 1;
    v118 = v116 + 1 < v72;
    v117 = v140;
    if (!v118)
    {
      goto LABEL_98;
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    __break(1u);
LABEL_131:
    v134 = specialized _ArrayBuffer._consumeAndCreateNew()(v134);
  }

  v73 = *(v17 + 12);
  v117 = v140;
LABEL_98:
  v119 = *(a2 + 40);
  if (v139)
  {
    v120 = vabdd_f64(v7, v119);
    *(v70 + 40) = v120 >= 1.0;
    if (v120 >= 1.0)
    {
      _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu2_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_n(a2, 1, v7);
    }

    goto LABEL_117;
  }

  if (v119 + v37 < v7)
  {
    *(v70 + 40) = 1;
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu3_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_n(a2, 1, v7);
    goto LABEL_117;
  }

  v148 = *&v117;
  v121 = _ViewList_Node.estimatedCount(style:)(&v148);
  if (__OFSUB__(v121, v73))
  {
    goto LABEL_134;
  }

  v122 = (v121 - v73) & ~((v121 - v73) >> 63);
  v71 = v137;
  if (v25 == 1)
  {
LABEL_110:
    v125 = v7 + v36 * v122;
    if (v125 >= v119)
    {
      v126 = v119;
    }

    else
    {
      v126 = v7 + v36 * v122;
    }

    v127 = v126 * 0.1;
    if ((v66 & v135) != 0)
    {
      v127 = v37;
    }

    v128 = vabdd_f64(v119, v125);
    *(v70 + 40) = v127 < v128;
    if (v127 < v128)
    {
      _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu5_12CoreGraphics7CGFloatVAPTf1c_n(v125, v119);
    }

LABEL_117:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzx34_cK11_PlacementsVztFSSyXEfu6_AA0c6L7K0V_Tg5SNy12CoreGraphics7CGFloatVGAEyALGAA01_cM11_PlacementsVTf1c_n(v71, v70, v43, v44);
LABEL_118:
    outlined destroy of StackPlacement<LazyVStackLayout>(v17);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v39, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
    return;
  }

  v76 = __OFADD__(v122, v25);
  v123 = v122 + v25;
  if (v76)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (!v25)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v124 = v123 - 1;
  if (v124 != 0x8000000000000000 || v25 != -1)
  {
    v122 = v124 / v25;
    goto LABEL_110;
  }

LABEL_139:
  __break(1u);
}

uint64_t specialized LazyStack<>.estimatedPlacement(subviews:context:cache:in:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v7 = a7;
  v72 = a5;
  v73 = a6;
  v63 = a4;
  v69 = a2;
  v70 = a3;
  v68 = a1;
  v71 = a7 & 0xFFFFFFFF00000000;
  v8 = type metadata accessor for IndexSet();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)?, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v63 - v14;
  type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v63 - v25;
  v27 = v68;
  memcpy(v76, v69, 0x129uLL);
  outlined init with copy of _LazyStack_Cache<LazyHStackLayout>(v70, v26);
  specialized LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(v27, v76, v26, v72, v73, v71 | v7 & 1, v15);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    outlined destroy of _LazyStack_Cache<LazyHStackLayout>(v26);
    return outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)?, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>), MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  }

  outlined init with take of (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(v15, v23, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v29 = v26;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v23, v20, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  v30 = *&v20[*(v17 + 48)];
  outlined destroy of StackPlacement<LazyHStackLayout>(v20);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v23, v20, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
  outlined init with take of StackPlacement<LazyHStackLayout>(v20, v12, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  v31 = &v23[*(v17 + 48)];
  v32 = *(v31 + 1);
  v77[0] = *v31;
  v77[1] = v32;
  v33 = *(v31 + 3);
  v77[2] = *(v31 + 2);
  v77[3] = v33;
  v34 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE313218subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6HStackY0V_Tt4B5(v27, v76, v26, v12, v77);
  if (v36)
  {
    outlined destroy of StackPlacement<LazyHStackLayout>(v12);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v23, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
    v37 = v26;
  }

  else
  {
    v38 = v34;
    v73 = v29;
    v39 = v35;
    specialized StackPlacement.log(_:)(v35, *(v12 + 7), *(v12 + 8), v12, v34);
    v40 = (v12 + 136);
    *(v12 + 12) = v38;
    v12[104] = 0;
    *(v12 + 14) = v39;
    *(v12 + 15) = 0;
    v12[128] = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v12 + 17);
    if (isUniquelyReferenced_nonNull_native)
    {
      v43 = *(v42 + 2);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v42;
      if ((v44 & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 1, v42);
        *v40 = v42;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v43, 0);
    }

    else
    {
      v45 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v42 + 3) >> 1);

      v42 = v45;
    }

    *(v12 + 17) = v42;

    *(v12 + 18) = 0;
    outlined destroy of GlassEntryView?((v12 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    *(v12 + 152) = 0u;
    *(v12 + 168) = 0u;
    *(v12 + 184) = 0u;
    *(v12 + 200) = 0u;
    *(v12 + 216) = 0u;
    *(v12 + 232) = 0u;
    *(v12 + 248) = 0u;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v12 + 33);
    if (v46)
    {
      v48 = *(v47 + 2);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 33) = v47;
      if ((v49 & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 1, v47);
        *(v12 + 33) = v47;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v48, 0);
    }

    else
    {
      v50 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v47 + 3) >> 1);

      v47 = v50;
    }

    *(v12 + 33) = v47;
    *(v12 + 17) = xmmword_18DDAB4E0;
    *(v12 + 18) = xmmword_18DDAB4F0;
    *(v12 + 19) = xmmword_18DDAB4F0;
    v12[320] = 0;
    v51 = &v12[*(v64 + 104)];
    v52 = MEMORY[0x1E69E7CC0];
    v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *v51 = v53;
    v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v52);

    v51[1] = v54;
    v75 = v52;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v55 = v65;
    v56 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = type metadata accessor for EstimationCache(0);
    result = (*(v66 + 40))(v51 + *(v57 + 24), v55, v56);
    v58 = *(v12 + 4);
    v59 = __OFSUB__(v38, v58);
    v60 = v38 - v58;
    if (v60 < 0 == v59)
    {
      v12[104] = 1;
      if (v59)
      {
        __break(1u);
        return result;
      }

      *(v12 + 12) = v60;
      v38 = v60;
    }

    v74 = 2 * v30;
    v75 = v38;
    MEMORY[0x1EEE9AC00](result);
    *(&v63 - 2) = v12;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(&v75, &v74, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, (&v63 - 4));
    specialized StackPlacement.flushMinorGroup()(v61);

    specialized Array.append<A>(contentsOf:)(v62);
    outlined destroy of StackPlacement<LazyHStackLayout>(v12);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v23, type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>));
    v37 = v73;
  }

  return outlined destroy of _LazyStack_Cache<LazyHStackLayout>(v37);
}

{
  v7 = a7;
  v72 = a5;
  v73 = a6;
  v63 = a4;
  v69 = a2;
  v70 = a3;
  v68 = a1;
  v71 = a7 & 0xFFFFFFFF00000000;
  v8 = type metadata accessor for IndexSet();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)?, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v63 - v14;
  type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v63 - v25;
  v27 = v68;
  memcpy(v76, v69, 0x129uLL);
  outlined init with copy of _LazyStack_Cache<LazyVStackLayout>(v70, v26);
  specialized LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(v27, v76, v26, v72, v73, v71 | v7 & 1, v15);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    outlined destroy of _LazyStack_Cache<LazyVStackLayout>(v26);
    return outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)?, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>), MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  }

  outlined init with take of (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(v15, v23, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v29 = v26;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v23, v20, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  v30 = *&v20[*(v17 + 48)];
  outlined destroy of StackPlacement<LazyVStackLayout>(v20);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v23, v20, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
  outlined init with take of StackPlacement<LazyHStackLayout>(v20, v12, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  v31 = &v23[*(v17 + 48)];
  v32 = *(v31 + 1);
  v77[0] = *v31;
  v77[1] = v32;
  v33 = *(v31 + 3);
  v77[2] = *(v31 + 2);
  v77[3] = v33;
  v34 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE313218subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6VStackY0V_Tt4B5(v27, v76, v26, v12, v77);
  if (v36)
  {
    outlined destroy of StackPlacement<LazyVStackLayout>(v12);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v23, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
    v37 = v26;
  }

  else
  {
    v38 = v34;
    v73 = v29;
    v39 = v35;
    specialized StackPlacement.log(_:)(v35, *(v12 + 7), *(v12 + 8), v12, v34);
    v40 = (v12 + 136);
    *(v12 + 12) = v38;
    v12[104] = 0;
    *(v12 + 14) = v39;
    *(v12 + 15) = 0;
    v12[128] = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v12 + 17);
    if (isUniquelyReferenced_nonNull_native)
    {
      v43 = *(v42 + 2);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v42;
      if ((v44 & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 1, v42);
        *v40 = v42;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v43, 0);
    }

    else
    {
      v45 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v42 + 3) >> 1);

      v42 = v45;
    }

    *(v12 + 17) = v42;

    *(v12 + 18) = 0;
    outlined destroy of GlassEntryView?((v12 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    *(v12 + 152) = 0u;
    *(v12 + 168) = 0u;
    *(v12 + 184) = 0u;
    *(v12 + 200) = 0u;
    *(v12 + 216) = 0u;
    *(v12 + 232) = 0u;
    *(v12 + 248) = 0u;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v12 + 33);
    if (v46)
    {
      v48 = *(v47 + 2);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 33) = v47;
      if ((v49 & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 1, v47);
        *(v12 + 33) = v47;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v48, 0);
    }

    else
    {
      v50 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v47 + 3) >> 1);

      v47 = v50;
    }

    *(v12 + 33) = v47;
    *(v12 + 17) = xmmword_18DDAB4E0;
    *(v12 + 18) = xmmword_18DDAB4F0;
    *(v12 + 19) = xmmword_18DDAB4F0;
    v12[320] = 0;
    v51 = &v12[*(v64 + 104)];
    v52 = MEMORY[0x1E69E7CC0];
    v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *v51 = v53;
    v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v52);

    v51[1] = v54;
    v75 = v52;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v55 = v65;
    v56 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = type metadata accessor for EstimationCache(0);
    result = (*(v66 + 40))(v51 + *(v57 + 24), v55, v56);
    v58 = *(v12 + 4);
    v59 = __OFSUB__(v38, v58);
    v60 = v38 - v58;
    if (v60 < 0 == v59)
    {
      v12[104] = 1;
      if (v59)
      {
        __break(1u);
        return result;
      }

      *(v12 + 12) = v60;
      v38 = v60;
    }

    v74 = 2 * v30;
    v75 = v38;
    MEMORY[0x1EEE9AC00](result);
    *(&v63 - 2) = v12;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(&v75, &v74, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, (&v63 - 4));
    specialized StackPlacement.flushMinorGroup()(v61);

    specialized Array.append<A>(contentsOf:)(v62);
    outlined destroy of StackPlacement<LazyVStackLayout>(v12);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v23, type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>));
    v37 = v73;
  }

  return outlined destroy of _LazyStack_Cache<LazyVStackLayout>(v37);
}

void _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6HStackM0V_Tt1B5(uint64_t a1, char *a2, uint64_t a3, char **a4, unint64_t a5)
{
  if ((*(a3 + 24) & 1) == 0)
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 8);
    v32[0] = *a3;
    v32[1] = v11;
    v32[2] = v10;
    if (v32[0] >= 1)
    {
      v22 = a4;

      v31 = MEMORY[0x1E69E7CC0];
      if ((a1 / v32[0] * v32[0]) >> 64 == (a1 / v32[0] * v32[0]) >> 63)
      {
        v29 = a1 / v32[0] * v32[0];
        v30 = MEMORY[0x1E69E7CC0];
        v24[0] = 2 * v32[0];
        MEMORY[0x1EEE9AC00](v15);
        v19[2] = &v30;
        v19[3] = v32;
        v20 = 0;
        v21 = &v31;
        _LazyLayout_Subviews.apply(from:style:to:)(&v29, v24, partial apply for specialized closure #1 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:), v19);
        if (!*(v30 + 16))
        {

          a2 = v31;
LABEL_10:
          *v22 = a2;
          return;
        }

        AlignmentKey.fraction.getter(a5);
        LOBYTE(v24[0]) = 1;
        v23 = 0;
        _LazyLayout_Subview.proposeSize(_:)(0, 1, v10, 0, v24);
        a5 = v24[0];
        v5 = v24[1];
        v6 = v25;
        v7 = v26;
        v8 = v27;
        v9 = v28;
        a2 = v31;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_6:
          v17 = *(a2 + 2);
          v16 = *(a2 + 3);
          if (v17 >= v16 >> 1)
          {
            a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, a2);
          }

          *(a2 + 2) = v17 + 1;
          v18 = &a2[48 * v17];
          *(v18 + 4) = a5;
          *(v18 + 5) = v5;
          v18[48] = v6;
          *(v18 + 7) = v7;
          v18[64] = v8;
          *(v18 + 9) = v9;

          goto LABEL_10;
        }
      }

      else
      {
        __break(1u);
      }

      a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 2) + 1, 1, a2);
      goto LABEL_6;
    }
  }
}

void _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6VStackM0V_Tt1B5(uint64_t a1, char *a2, uint64_t a3, char **a4, unint64_t a5)
{
  if ((*(a3 + 24) & 1) == 0)
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 8);
    v32[0] = *a3;
    v32[1] = v11;
    v32[2] = v10;
    if (v32[0] >= 1)
    {
      v22 = a4;

      v31 = MEMORY[0x1E69E7CC0];
      if ((a1 / v32[0] * v32[0]) >> 64 == (a1 / v32[0] * v32[0]) >> 63)
      {
        v29 = a1 / v32[0] * v32[0];
        v30 = MEMORY[0x1E69E7CC0];
        v24[0] = 2 * v32[0];
        MEMORY[0x1EEE9AC00](v15);
        v19[2] = &v30;
        v19[3] = v32;
        v20 = 1;
        v21 = &v31;
        _LazyLayout_Subviews.apply(from:style:to:)(&v29, v24, partial apply for specialized closure #1 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:), v19);
        if (!*(v30 + 16))
        {

          a2 = v31;
LABEL_10:
          *v22 = a2;
          return;
        }

        AlignmentKey.fraction.getter(a5);
        LOBYTE(v24[0]) = 0;
        v23 = 1;
        _LazyLayout_Subview.proposeSize(_:)(v10, 0, 0, 1, v24);
        a5 = v24[0];
        v5 = v24[1];
        v6 = v25;
        v7 = v26;
        v8 = v27;
        v9 = v28;
        a2 = v31;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_6:
          v17 = *(a2 + 2);
          v16 = *(a2 + 3);
          if (v17 >= v16 >> 1)
          {
            a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, a2);
          }

          *(a2 + 2) = v17 + 1;
          v18 = &a2[48 * v17];
          *(v18 + 4) = a5;
          *(v18 + 5) = v5;
          v18[48] = v6;
          *(v18 + 7) = v7;
          v18[64] = v8;
          *(v18 + 9) = v9;

          goto LABEL_10;
        }
      }

      else
      {
        __break(1u);
      }

      a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 2) + 1, 1, a2);
      goto LABEL_6;
    }
  }
}

void specialized LazyStack<>.boundingRect(at:subviews:context:cache:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  *&v203 = a7;
  *&v200 = a6;
  v199 = a5;
  v201 = a2;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v206 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v180 - v16;
  v202 = type metadata accessor for IndexSet();
  v198 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v197 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v180 - v21;
  *&v23 = *(a3 + 40);
  if (*&v23 <= 0.0)
  {
    v24 = 0uLL;
    v25 = 0.0;
LABEL_125:
    *a8 = v25;
    *(a8 + 8) = 0;
    *(a8 + 16) = v24;
    *(a8 + 32) = *&v23 <= 0.0;
    return;
  }

  v205 = v23;
  v26 = *(a3 + 136);
  v27 = *(a3 + 144);
  v28 = *(a3 + 152);
  v29 = *(a3 + 160);
  outlined init with copy of _LazyStack_Cache<LazyHStackLayout>(a4, &v180 - v21);
  v210.origin.x = v26;
  v210.origin.y = v27;
  v210.size.width = v28;
  v210.size.height = v29;
  IsNull = CGRectIsNull(v210);
  v31 = 0.0;
  v32 = v26 + v28;
  if (v26 + v28 >= v26)
  {
    v33 = v26;
  }

  else
  {
    v33 = v26 + v28;
  }

  if (v26 > v32)
  {
    v32 = v26;
  }

  if (v33 > v32)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v32 - v33;
  }

  if (IsNull)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v34;
  }

  v36 = *(a3 + 12) == *MEMORY[0x1E698D3F8];
  v196 = v13;
  if (v36)
  {
    v37 = 0;
    v38 = *(v22 + 12);
    if (v38 > 0.0 && v35 > 0.0)
    {
LABEL_21:
      v39 = vabdd_f64(v38, v35);
      v40 = *(v22 + 13);
      if (v40 > 0.0 && v31 > 0.0)
      {
        if (v39 < 0.01 && vabdd_f64(v40, v31) < 0.01)
        {
          goto LABEL_25;
        }

        goto LABEL_31;
      }

      if (v39 >= 0.01)
      {
LABEL_31:
        v42 = *(v20 + 60);
        *&v204 = a8;
        v43 = a1;
        v44 = &v22[v42];
        v45 = MEMORY[0x1E69E7CC0];
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

        *v44 = v46;
        v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v45);

        v44[1] = v47;
        v209 = v45;
        lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [Int] and conformance [A]();
        v48 = v197;
        v49 = v202;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v50 = v44 + *(type metadata accessor for EstimationCache(0) + 24);
        a1 = v43;
        a8 = v204;
        (*(v198 + 40))(v50, v48, v49);
        v37 = 1;
        goto LABEL_32;
      }

LABEL_25:
      v37 = 0;
    }
  }

  else
  {
    v31 = *AGGraphGetValue();
    v38 = *(v22 + 12);
    if (v38 > 0.0 && v35 > 0.0)
    {
      goto LABEL_21;
    }

    v37 = 0;
    v41 = *(v22 + 13);
    if (v41 > 0.0 && v31 > 0.0)
    {
      if (vabdd_f64(v41, v31) >= 0.01)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

LABEL_32:
  v51 = *(v20 + 60);
  if (!*(*&v22[v51] + 16))
  {
    v208 = 0;
    v209 = 0;
    v207[0] = v203 & 1;
    specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(&v209, &v208, 1, v201, v22, v199, v200, v203 & 0xFFFFFFFF00000001, *&v205, *&v205, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, 0, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
  }

  v52 = COERCE_DOUBLE(EstimationCache.average.getter());
  if (v53)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v52;
  }

  v25 = (v54 + v56) * a1;
  v57 = *(v22 + 6);
  if (v57 == *(v22 + 7) || (v22[24] & 1) != 0)
  {
    goto LABEL_121;
  }

  v58 = *&v205 != *(v22 + 1);
  if (*&v205 != *(v22 + 2))
  {
    v58 = 1;
  }

  v59 = *v22 != 1 || v58;
  if ((v37 | v59))
  {
    goto LABEL_121;
  }

  if (!((a1 < 1) | v53 & 1))
  {
    v25 = v25 - v52;
  }

  v60 = a1 - v57;
  if (__OFSUB__(a1, v57))
  {
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v61 = a1 - v57;
  if (v60 < 0)
  {
    v61 = v57 - a1;
    if (__OFSUB__(0, v60))
    {
      goto LABEL_128;
    }
  }

  *&v204 = a1;
  v62 = *&v22[v51];
  v63 = *(v62 + 16);
  v64 = v61;
  v195 = v54;
  v194 = DWORD1(v203);
  if (v63)
  {
    *&v55 = EstimationCache.average.getter();
    if (v66)
    {
      *&v55 = 0.0;
    }

    v67 = (v65 + *&v55) * v64;
    v68 = *(v22 + 10);
    v69 = *(v22 + 11);
    v70 = *(v22 + 8);
    if (*(v62 + 16))
    {
      *&v55 = EstimationCache.average.getter();
      if (v72)
      {
        *&v55 = 0.0;
      }

      v73 = v71 + *&v55;
    }

    else
    {
      v73 = 32.0;
    }

    v54 = v195;
  }

  else
  {
    v73 = 32.0;
    v67 = v64 * 32.0;
    v68 = *(v22 + 10);
    v69 = *(v22 + 11);
    v70 = *(v22 + 8);
  }

  a1 = v204;
  v74 = v70 + v73 * v60;
  if (v74 >= 0.0)
  {
    v25 = v74;
  }

  v75 = v69 - v68;
  if (v67 >= v75 * 3.0)
  {
    *&v55 = -1.0;
    if (v57 <= v204)
    {
LABEL_115:
      v25 = v56 + v25;
      goto LABEL_120;
    }

    goto LABEL_99;
  }

  v193 = v57;
  *(v17 + 152) = 0u;
  v185 = v17 + 152;
  *(v17 + 248) = 0u;
  *(v17 + 232) = 0u;
  *(v17 + 216) = 0u;
  *(v17 + 200) = 0u;
  *(v17 + 184) = 0u;
  *(v17 + 168) = 0u;
  v76 = &v17[*(v196 + 104)];
  v77 = MEMORY[0x1E69E7CC0];
  v182 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v76 = v182;
  v183 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v77);
  v76[1] = v183;
  v78 = type metadata accessor for EstimationCache(0);
  v184 = v60;
  v79 = *(v78 + 24);
  v209 = v77;
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  v81 = v80;
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  v83 = v82;
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  v192 = v76;
  v191 = v79;
  v84 = MEMORY[0x1E69E7CC0];
  v189 = v83;
  v188 = v85;
  v190 = v81;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v86 = v200;
  *v17 = v199;
  *(v17 + 1) = v86;
  v17[16] = v203 & 1;
  *(v17 + 5) = v194;
  *(v17 + 4) = 1;
  v87 = v205;
  *(v17 + 5) = v205;
  *(v17 + 6) = v87;
  v17[24] = 0;
  *(v17 + 56) = vdupq_n_s64(0x7FF0000000000000uLL);
  *(v17 + 18) = 0;
  *(v17 + 10) = a1;
  v17[88] = 0;
  *(v17 + 12) = 0;
  v17[104] = 0;
  *(v17 + 14) = 0;
  *(v17 + 15) = 0;
  v17[128] = 1;
  *(v17 + 17) = v84;
  v88 = (v17 + 136);
  *(v17 + 18) = 0;
  *(v17 + 33) = v84;
  v186 = xmmword_18DDAB4E0;
  *(v17 + 17) = xmmword_18DDAB4E0;
  *(v17 + 18) = xmmword_18DDAB4F0;
  v187 = xmmword_18DDAB4F0;
  *(v17 + 19) = xmmword_18DDAB4F0;
  v17[320] = 0;
  if ((v184 & 0x8000000000000000) == 0)
  {
    v89 = v193;
    specialized StackPlacement.log(_:)(v70, INFINITY, INFINITY, v17, v193);
    *(v17 + 12) = v89;
    *(v17 + 14) = v70;
    v17[104] = 0;
    *(v17 + 15) = a1;
    v17[128] = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v17 + 17);
    if (isUniquelyReferenced_nonNull_native)
    {
      v92 = *(v91 + 2);
      v93 = swift_isUniquelyReferenced_nonNull_native();
      *v88 = v91;
      if ((v93 & 1) == 0)
      {
        v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92, 1, v91);
        *v88 = v91;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v92, 0);
    }

    else
    {
      v102 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v91 + 3) >> 1);

      v91 = v102;
    }

    *(v17 + 17) = v91;
    *(v17 + 18) = 0;
    v103 = v185;
    outlined destroy of GlassEntryView?(v185, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    *v103 = 0u;
    *(v103 + 1) = 0u;
    *(v103 + 2) = 0u;
    *(v103 + 3) = 0u;
    *(v103 + 4) = 0u;
    *(v103 + 5) = 0u;
    *(v103 + 6) = 0u;
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v105 = *(v17 + 33);
    v181 = v51;
    if (v104)
    {
      v106 = *(v105 + 2);
      v107 = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 33) = v105;
      if ((v107 & 1) == 0)
      {
        v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v106, 1, v105);
        *(v17 + 33) = v105;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v106, 0);
    }

    else
    {
      v108 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v105 + 3) >> 1);

      v105 = v108;
    }

    *(v17 + 33) = v105;
    v109 = v187;
    *(v17 + 17) = v186;
    *(v17 + 18) = v109;
    *(v17 + 19) = v109;
    v17[320] = 0;
    v110 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v84);

    v111 = v192;
    *v192 = v110;
    v112 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v84);

    *(v111 + 1) = v112;
    v209 = v84;
    v113 = v197;
    v114 = v202;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v115 = (*(v198 + 40))(&v111[v191], v113, v114);
    v116 = v193;
    if (v57 >= 1)
    {
      v17[104] = 1;
      *(v17 + 12) = v57 - 1;
      v116 = v57 - 1;
    }

    v208 = 2;
    v209 = v116;
    MEMORY[0x1EEE9AC00](v115);
    v179 = v17;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(&v209, &v208, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, &v178);
    specialized StackPlacement.flushMinorGroup()(v117);
    v51 = v181;
LABEL_93:
    v138 = *(v17 + 38);
    v139 = *(v17 + 39);
    a1 = v204;
    if (v138 >= v139)
    {
      outlined destroy of StackPlacement<LazyHStackLayout>(v17);
      *&v55 = -1.0;
      if (v57 > a1)
      {
LABEL_99:
        LODWORD(v187) = 0;
        goto LABEL_100;
      }

      v54 = v195;
      v25 = v56 + v25;
    }

    else
    {
      if (v138 > v139)
      {
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      outlined destroy of StackPlacement<LazyHStackLayout>(v17);
      if (v138 < 0.0)
      {
        *&v55 = -1.0;
        v54 = v195;
        if (v57 <= a1)
        {
          goto LABEL_115;
        }

        goto LABEL_99;
      }

      *&v55 = v139 - v138;
      v54 = v195;
      if (v57 > a1)
      {
        LODWORD(v187) = 1;
        v25 = v138;
LABEL_100:
        v204 = v55;
        v140 = v206;
        if (v75 >= 0.0)
        {
          *(v206 + 152) = 0u;
          v141 = (v140 + 152);
          *(v140 + 248) = 0u;
          *(v140 + 232) = 0u;
          *(v140 + 216) = 0u;
          *(v140 + 200) = 0u;
          *(v140 + 184) = 0u;
          *(v140 + 168) = 0u;
          v142 = (v140 + *(v196 + 104));
          v143 = MEMORY[0x1E69E7CC0];
          v192 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          *v142 = v192;
          v144 = v143;
          v193 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v143);
          v142[1] = v193;
          v145 = *(type metadata accessor for EstimationCache(0) + 24);
          v209 = v144;
          lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
          v147 = v146;
          type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
          v149 = v148;
          lazy protocol witness table accessor for type [Int] and conformance [A]();
          v196 = v145;
          v189 = v142;
          v190 = v149;
          v188 = v150;
          v191 = v147;
          v151 = MEMORY[0x1E69E7CC0];
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v152 = v200;
          *v140 = v199;
          *(v140 + 8) = v152;
          *(v140 + 16) = v203 & 1;
          *(v140 + 20) = v194;
          *(v206 + 32) = 1;
          v153 = v205;
          *(v206 + 40) = v205;
          *(v206 + 48) = v153;
          *(v206 + 24) = 0;
          *(v206 + 56) = 0;
          *(v206 + 64) = v75;
          *(v206 + 72) = 0;
          *(v206 + 80) = a1;
          *(v206 + 88) = 0;
          *(v206 + 96) = 0;
          *(v206 + 104) = 0;
          *(v206 + 120) = 0;
          *(v206 + 112) = 0;
          *(v206 + 128) = 1;
          v154 = v206;
          *(v206 + 136) = v151;
          v155 = (v154 + 136);
          *(v206 + 144) = 0;
          *(v206 + 264) = v151;
          v203 = xmmword_18DDAB4E0;
          *(v206 + 272) = xmmword_18DDAB4E0;
          *(v206 + 288) = xmmword_18DDAB4F0;
          v200 = xmmword_18DDAB4F0;
          *(v206 + 304) = xmmword_18DDAB4F0;
          *(v206 + 320) = 0;
          specialized StackPlacement.log(_:)(0.0, 0.0, v75, v206, 0);
          *(v206 + 96) = 0;
          *(v206 + 104) = 0;
          *(v206 + 120) = 0;
          *(v206 + 112) = 0;
          *(v206 + 128) = 1;
          v156 = v206;
          v157 = swift_isUniquelyReferenced_nonNull_native();
          v158 = *v155;
          if (v157)
          {
            v159 = *(v158 + 2);
            v160 = swift_isUniquelyReferenced_nonNull_native();
            *v155 = v158;
            if ((v160 & 1) == 0)
            {
              v158 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v159, 1, v158);
              *v155 = v158;
            }

            v161 = v189;
            specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v159, 0);
            v156 = v206;
          }

          else
          {
            v162 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v158 + 3) >> 1);

            v158 = v162;
            v161 = v189;
          }

          *(v156 + 136) = v158;
          *(v156 + 144) = 0;
          outlined destroy of GlassEntryView?(v141, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
          *v141 = 0u;
          v141[1] = 0u;
          v141[2] = 0u;
          v141[3] = 0u;
          v141[4] = 0u;
          v141[5] = 0u;
          v141[6] = 0u;
          v163 = swift_isUniquelyReferenced_nonNull_native();
          v164 = *(v156 + 264);
          if (v163)
          {
            v165 = *(v164 + 2);
            v166 = swift_isUniquelyReferenced_nonNull_native();
            *(v156 + 264) = v164;
            if ((v166 & 1) == 0)
            {
              v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v165, 1, v164);
              *(v156 + 264) = v164;
            }

            specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v165, 0);
          }

          else
          {
            v167 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v164 + 3) >> 1);

            v164 = v167;
          }

          *(v156 + 264) = v164;
          v168 = v200;
          *(v156 + 272) = v203;
          *(v156 + 288) = v168;
          *(v156 + 304) = v168;
          *(v156 + 320) = 0;
          v169 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v151);

          *v161 = v169;
          v170 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v151);

          v161[1] = v170;
          v209 = v151;
          v171 = v197;
          v172 = v202;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v173 = (*(v198 + 40))(v161 + v196, v171, v172);
          v208 = 2;
          v209 = 0;
          MEMORY[0x1EEE9AC00](v173);
          v179 = v206;
          _LazyLayout_Subviews.applyNodes(from:style:to:)(&v209, &v208, partial apply for specialized closure #1 in StackPlacement.place(subviews:from:position:stopping:style:), &v178);
          v174 = v206;
          specialized StackPlacement.flushMinorGroup()(v175);
          v176 = *(v174 + 304);
          v177 = *(v174 + 312);
          if (v176 >= v177)
          {
            outlined destroy of StackPlacement<LazyHStackLayout>(v174);
            v54 = v195;
            v55 = v204;
            if (v187)
            {
              goto LABEL_120;
            }

            goto LABEL_115;
          }

          if (v176 <= v177)
          {
            outlined destroy of StackPlacement<LazyHStackLayout>(v174);
            *&v55 = v177 - v176;
            v25 = v176;
            v54 = v195;
            goto LABEL_120;
          }

          goto LABEL_130;
        }

        goto LABEL_127;
      }

      v25 = v138;
    }

LABEL_120:
    if (*&v55 >= 0.0)
    {
LABEL_124:
      v204 = v55;
      _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e76VyxG0E0RtzrlE12boundingRect2at8subviews7context5cacheSo6CGRectVSgSi_AA01_C15M50_SubviewsVAA01_cM17_PlacementContextVAFtFSSyXEfu0_SiSo0Z0VTf1c_n(a1, v25, 0.0, *&v55, *&v205);
      outlined destroy of _LazyStack_Cache<LazyHStackLayout>(v22);
      *&v24 = v204;
      *&v23 = v205;
      *(&v24 + 1) = v205;
      goto LABEL_125;
    }

LABEL_121:
    if (*(*&v22[v51] + 16))
    {
      *&v55 = v54;
    }

    else
    {
      *&v55 = 0.0;
    }

    goto LABEL_124;
  }

  v207[0] = 0;
  v94 = v193;
  v95 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE16collectBackwards33_973C9973BC16DEAF0CF3109FFDE313214from2to8subviews5style5atEndSaySayAA01_C14Layout_SubviewVGGSi_SiAA01_cS9_SubviewsVAA23_ViewList_IteratorStyleVSbztFAA0c6HStackS0V_Tt4B5Tm(a1, v193, v201, 2uLL, v207, closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)partial apply);
  specialized StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v95, v94, a1 == 0, v207[0], 0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, v70, specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));

  v96 = *(v17 + 12);
  v97 = *(v17 + 14);
  specialized StackPlacement.log(_:)(v97, *(v17 + 7), *(v17 + 8), v17, v96);
  *(v17 + 12) = v96;
  *(v17 + 14) = v97;
  v17[104] = 0;
  *(v17 + 15) = a1;
  v17[128] = 0;
  v98 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *(v17 + 17);
  if (v98)
  {
    v100 = *(v99 + 2);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    *v88 = v99;
    if ((v101 & 1) == 0)
    {
      v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v100, 1, v99);
      *v88 = v99;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v100, 0);
  }

  else
  {
    v118 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v99 + 3) >> 1);

    v99 = v118;
  }

  *(v17 + 17) = v99;

  *(v17 + 18) = 0;
  v119 = v185;
  outlined destroy of GlassEntryView?(v185, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *v119 = 0u;
  *(v119 + 1) = 0u;
  *(v119 + 2) = 0u;
  *(v119 + 3) = 0u;
  *(v119 + 4) = 0u;
  *(v119 + 5) = 0u;
  *(v119 + 6) = 0u;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *(v17 + 33);
  if (v120)
  {
    v122 = *(v121 + 2);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 33) = v121;
    if ((v123 & 1) == 0)
    {
      v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122, 1, v121);
      *(v17 + 33) = v121;
    }

    v124 = v51;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v122, 0);
  }

  else
  {
    v124 = v51;
    v125 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v121 + 3) >> 1);

    v121 = v125;
  }

  *(v17 + 33) = v121;
  v126 = v187;
  *(v17 + 17) = v186;
  *(v17 + 18) = v126;
  *(v17 + 19) = v126;
  v17[320] = 0;
  v127 = MEMORY[0x1E69E7CC0];
  v128 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v129 = v192;

  *v129 = v128;
  v130 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v127);

  v129[1] = v130;
  v209 = v127;
  v131 = v197;
  v132 = v202;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v133 = (*(v198 + 40))(v129 + v191, v131, v132);
  v134 = *(v17 + 4);
  v135 = __OFSUB__(v96, v134);
  v136 = v96 - v134;
  v51 = v124;
  if (v136 < 0 != v135)
  {
LABEL_92:
    v208 = 2;
    v209 = v96;
    MEMORY[0x1EEE9AC00](v133);
    v179 = v17;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(&v209, &v208, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, &v178);
    specialized StackPlacement.flushMinorGroup()(v137);
    goto LABEL_93;
  }

  v17[104] = 1;
  if (!v135)
  {
    *(v17 + 12) = v136;
    v96 = v136;
    goto LABEL_92;
  }

LABEL_131:
  __break(1u);
}

void specialized LazyStack<>.boundingRect(at:subviews:context:cache:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v205 = a7;
  *&v202 = a6;
  v201 = a5;
  v203 = a2;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v207 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v180 - v16;
  v204 = type metadata accessor for IndexSet();
  v200 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v199 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v180 - v21;
  *&v23 = *(a3 + 32);
  if (*&v23 <= 0.0)
  {
    v24 = 0uLL;
    v25 = 0.0;
LABEL_128:
    *a8 = 0;
    *(a8 + 8) = v24;
    *(a8 + 24) = v25;
    *(a8 + 32) = *&v23 <= 0.0;
    return;
  }

  v206 = v23;
  v26 = *(a3 + 136);
  v27 = *(a3 + 144);
  v28 = *(a3 + 152);
  v29 = *(a3 + 160);
  outlined init with copy of _LazyStack_Cache<LazyVStackLayout>(a4, &v180 - v21);
  v211.origin.x = v26;
  v211.origin.y = v27;
  v211.size.width = v28;
  v211.size.height = v29;
  IsNull = CGRectIsNull(v211);
  v31 = 0.0;
  v32 = v27 + v29;
  if (v27 + v29 >= v27)
  {
    v33 = v27;
  }

  else
  {
    v33 = v27 + v29;
  }

  if (v27 > v32)
  {
    v32 = v27;
  }

  if (v33 > v32)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v32 - v33;
  }

  if (IsNull)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v34;
  }

  v36 = *(a3 + 12) == *MEMORY[0x1E698D3F8];
  v197 = v13;
  if (v36)
  {
    v37 = 0;
    v38 = *(v22 + 12);
    if (v38 > 0.0 && v35 > 0.0)
    {
LABEL_21:
      v39 = vabdd_f64(v38, v35);
      v40 = *(v22 + 13);
      if (v40 > 0.0 && v31 > 0.0)
      {
        if (v39 < 0.01 && vabdd_f64(v40, v31) < 0.01)
        {
          goto LABEL_25;
        }

        goto LABEL_31;
      }

      if (v39 >= 0.01)
      {
LABEL_31:
        v42 = *(v20 + 60);
        *&v198 = a8;
        v43 = a1;
        v44 = &v22[v42];
        v45 = MEMORY[0x1E69E7CC0];
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

        *v44 = v46;
        v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v45);

        v44[1] = v47;
        *&v210[0] = v45;
        lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [Int] and conformance [A]();
        v48 = v199;
        v49 = v204;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v50 = v44 + *(type metadata accessor for EstimationCache(0) + 24);
        a1 = v43;
        a8 = v198;
        (*(v200 + 40))(v50, v48, v49);
        v37 = 1;
        goto LABEL_32;
      }

LABEL_25:
      v37 = 0;
    }
  }

  else
  {
    v31 = *(AGGraphGetValue() + 8);
    v38 = *(v22 + 12);
    if (v38 > 0.0 && v35 > 0.0)
    {
      goto LABEL_21;
    }

    v37 = 0;
    v41 = *(v22 + 13);
    if (v41 > 0.0 && v31 > 0.0)
    {
      if (vabdd_f64(v41, v31) >= 0.01)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

LABEL_32:
  v51 = *(v20 + 60);
  if (!*(*&v22[v51] + 16))
  {
    v209 = 0;
    v210[0] = 0.0;
    v208[0] = v205 & 1;
    specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(v210, &v209, 1, v203, v22, v201, v202, v205 & 0xFFFFFFFF00000001, *&v206, *&v206, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, 1u, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
  }

  v52 = COERCE_DOUBLE(EstimationCache.average.getter());
  if (v53)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v52;
  }

  *&v55 = (v54 + v56) * a1;
  v57 = *(v22 + 6);
  if (v57 == *(v22 + 7) || (v22[24] & 1) != 0)
  {
    goto LABEL_124;
  }

  v58 = *&v206 != *(v22 + 1);
  if (*&v206 != *(v22 + 2))
  {
    v58 = 1;
  }

  v59 = *v22 != 1 || v58;
  if ((v37 | v59))
  {
    goto LABEL_124;
  }

  if ((a1 < 1) | v53 & 1)
  {
    v60 = (v54 + v56) * a1;
  }

  else
  {
    v60 = *&v55 - v52;
  }

  v61 = a1 - v57;
  if (__OFSUB__(a1, v57))
  {
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v62 = a1 - v57;
  if (v61 < 0)
  {
    v62 = v57 - a1;
    if (__OFSUB__(0, v61))
    {
      goto LABEL_133;
    }
  }

  v196 = a1;
  v63 = *&v22[v51];
  v64 = *(v63 + 16);
  v65 = v62;
  v195 = v54;
  v194 = DWORD1(v205);
  if (v64)
  {
    *&v55 = EstimationCache.average.getter();
    if (v67)
    {
      *&v55 = 0.0;
    }

    v68 = (v66 + *&v55) * v65;
    v69 = *(v22 + 10);
    v70 = *(v22 + 11);
    v71 = *(v22 + 8);
    if (*(v63 + 16))
    {
      *&v55 = EstimationCache.average.getter();
      if (v73)
      {
        *&v55 = 0.0;
      }

      v74 = v72 + *&v55;
    }

    else
    {
      v74 = 32.0;
    }

    v54 = v195;
  }

  else
  {
    v74 = 32.0;
    v68 = v65 * 32.0;
    v69 = *(v22 + 10);
    v70 = *(v22 + 11);
    v71 = *(v22 + 8);
  }

  a1 = v196;
  *&v55 = v71 + v74 * v61;
  if (*&v55 < 0.0)
  {
    *&v55 = v60;
  }

  v75 = v70 - v69;
  if (v68 >= (v70 - v69) * 3.0)
  {
    v25 = -1.0;
    if (v57 <= v196)
    {
      goto LABEL_122;
    }

    LODWORD(v188) = 0;
    goto LABEL_106;
  }

  v198 = v55;
  v193 = v57;
  *(v17 + 152) = 0u;
  v185 = v17 + 152;
  *(v17 + 248) = 0u;
  *(v17 + 232) = 0u;
  *(v17 + 216) = 0u;
  *(v17 + 200) = 0u;
  *(v17 + 184) = 0u;
  *(v17 + 168) = 0u;
  v76 = &v17[*(v197 + 104)];
  v77 = MEMORY[0x1E69E7CC0];
  v182 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v76 = v182;
  v183 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v77);
  v76[1] = v183;
  v78 = type metadata accessor for EstimationCache(0);
  v184 = v61;
  v79 = *(v78 + 24);
  *&v210[0] = v77;
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  v81 = v80;
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  v83 = v82;
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  v192 = v76;
  v191 = v79;
  v84 = MEMORY[0x1E69E7CC0];
  v189 = v83;
  v188 = v85;
  v190 = v81;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v86 = v202;
  *v17 = v201;
  *(v17 + 1) = v86;
  v17[16] = v205 & 1;
  *(v17 + 5) = v194;
  *(v17 + 4) = 1;
  v87 = v206;
  *(v17 + 5) = v206;
  *(v17 + 6) = v87;
  v17[24] = 1;
  *(v17 + 56) = vdupq_n_s64(0x7FF0000000000000uLL);
  *(v17 + 18) = 0;
  *(v17 + 10) = a1;
  v17[88] = 0;
  *(v17 + 12) = 0;
  v17[104] = 0;
  *(v17 + 14) = 0;
  *(v17 + 15) = 0;
  v17[128] = 1;
  *(v17 + 17) = v84;
  v88 = (v17 + 136);
  *(v17 + 18) = 0;
  *(v17 + 33) = v84;
  v186 = xmmword_18DDAB4E0;
  *(v17 + 17) = xmmword_18DDAB4E0;
  *(v17 + 18) = xmmword_18DDAB4F0;
  v187 = xmmword_18DDAB4F0;
  *(v17 + 19) = xmmword_18DDAB4F0;
  v17[320] = 0;
  if ((v184 & 0x8000000000000000) == 0)
  {
    v89 = v193;
    specialized StackPlacement.log(_:)(v71, INFINITY, INFINITY, v17, v193);
    *(v17 + 12) = v89;
    *(v17 + 14) = v71;
    v17[104] = 0;
    *(v17 + 15) = a1;
    v17[128] = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v17 + 17);
    if (isUniquelyReferenced_nonNull_native)
    {
      v92 = *(v91 + 2);
      v93 = swift_isUniquelyReferenced_nonNull_native();
      *v88 = v91;
      if ((v93 & 1) == 0)
      {
        v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92, 1, v91);
        *v88 = v91;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v92, 0);
    }

    else
    {
      v102 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v91 + 3) >> 1);

      v91 = v102;
    }

    *(v17 + 17) = v91;
    *(v17 + 18) = 0;
    v103 = v185;
    outlined destroy of GlassEntryView?(v185, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    *v103 = 0u;
    *(v103 + 1) = 0u;
    *(v103 + 2) = 0u;
    *(v103 + 3) = 0u;
    *(v103 + 4) = 0u;
    *(v103 + 5) = 0u;
    *(v103 + 6) = 0u;
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v105 = *(v17 + 33);
    v181 = v51;
    if (v104)
    {
      v106 = *(v105 + 2);
      v107 = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 33) = v105;
      if ((v107 & 1) == 0)
      {
        v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v106, 1, v105);
        *(v17 + 33) = v105;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v106, 0);
    }

    else
    {
      v108 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v105 + 3) >> 1);

      v105 = v108;
    }

    *(v17 + 33) = v105;
    v109 = v187;
    *(v17 + 17) = v186;
    *(v17 + 18) = v109;
    *(v17 + 19) = v109;
    v17[320] = 0;
    v110 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v84);

    v111 = v192;
    *v192 = v110;
    v112 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v84);

    v111[1] = v112;
    *&v210[0] = v84;
    v113 = v199;
    v114 = v204;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v115 = (*(v200 + 40))(v111 + v191, v113, v114);
    v116 = *&v193;
    if (v57 >= 1)
    {
      v17[104] = 1;
      *(v17 + 12) = v57 - 1;
      *&v116 = v57 - 1;
    }

    v209 = 2;
    v210[0] = v116;
    MEMORY[0x1EEE9AC00](v115);
    v179 = v17;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(v210, &v209, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, &v178);
    specialized StackPlacement.flushMinorGroup()(v117);
    v51 = v181;
    goto LABEL_94;
  }

  v208[0] = 0;
  v94 = v193;
  v95 = _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE16collectBackwards33_973C9973BC16DEAF0CF3109FFDE313214from2to8subviews5style5atEndSaySayAA01_C14Layout_SubviewVGGSi_SiAA01_cS9_SubviewsVAA23_ViewList_IteratorStyleVSbztFAA0c6HStackS0V_Tt4B5Tm(a1, v193, v203, 2uLL, v208, partial apply for closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:));
  specialized StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v95, v94, a1 == 0, v208[0], 0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, v71, specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));

  v96 = *(v17 + 12);
  v97 = *(v17 + 14);
  specialized StackPlacement.log(_:)(v97, *(v17 + 7), *(v17 + 8), v17, v96);
  *(v17 + 12) = v96;
  *(v17 + 14) = v97;
  v17[104] = 0;
  *(v17 + 15) = a1;
  v17[128] = 0;
  v98 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *(v17 + 17);
  if (v98)
  {
    v100 = *(v99 + 2);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    *v88 = v99;
    if ((v101 & 1) == 0)
    {
      v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v100, 1, v99);
      *v88 = v99;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v100, 0);
  }

  else
  {
    v118 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v99 + 3) >> 1);

    v99 = v118;
  }

  *(v17 + 17) = v99;

  *(v17 + 18) = 0;
  v119 = v185;
  outlined destroy of GlassEntryView?(v185, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *v119 = 0u;
  *(v119 + 1) = 0u;
  *(v119 + 2) = 0u;
  *(v119 + 3) = 0u;
  *(v119 + 4) = 0u;
  *(v119 + 5) = 0u;
  *(v119 + 6) = 0u;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *(v17 + 33);
  if (v120)
  {
    v122 = *(v121 + 2);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 33) = v121;
    if ((v123 & 1) == 0)
    {
      v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122, 1, v121);
      *(v17 + 33) = v121;
    }

    v124 = v51;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v122, 0);
  }

  else
  {
    v124 = v51;
    v125 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v121 + 3) >> 1);

    v121 = v125;
  }

  *(v17 + 33) = v121;
  v126 = v187;
  *(v17 + 17) = v186;
  *(v17 + 18) = v126;
  *(v17 + 19) = v126;
  v17[320] = 0;
  v127 = MEMORY[0x1E69E7CC0];
  v128 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v129 = v192;

  *v129 = v128;
  v130 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v127);

  v129[1] = v130;
  *&v210[0] = v127;
  v131 = v199;
  v132 = v204;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v133 = (*(v200 + 40))(v129 + v191, v131, v132);
  v134 = *(v17 + 4);
  v135 = __OFSUB__(v96, v134);
  v136 = v96 - v134;
  v51 = v124;
  if (v136 < 0 != v135)
  {
LABEL_93:
    v209 = 2;
    *&v210[0] = v96;
    MEMORY[0x1EEE9AC00](v133);
    v179 = v17;
    _LazyLayout_Subviews.applyNodes(from:style:to:)(v210, &v209, closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)specialized partial apply, &v178);
    specialized StackPlacement.flushMinorGroup()(v137);
LABEL_94:
    v139 = *(v17 + 38);
    v138 = *(v17 + 39);
    a1 = v196;
    if (v139 >= v138)
    {
      outlined destroy of StackPlacement<LazyVStackLayout>(v17);
      v25 = -1.0;
      if (v57 <= a1)
      {
        v54 = v195;
        goto LABEL_102;
      }

      goto LABEL_100;
    }

    if (v139 > v138)
    {
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    outlined destroy of StackPlacement<LazyVStackLayout>(v17);
    if (v139 < 0.0)
    {
      v25 = -1.0;
      v54 = v195;
      if (v57 <= a1)
      {
LABEL_102:
        *(&v55 + 1) = *(&v198 + 1);
        *&v55 = v56 + *&v198;
        if (v25 >= 0.0)
        {
          goto LABEL_127;
        }

        goto LABEL_124;
      }

LABEL_100:
      LODWORD(v188) = 0;
      v55 = v198;
      goto LABEL_106;
    }

    v25 = v138 - v139;
    v54 = v195;
    if (v57 <= a1)
    {
      *&v55 = v139;
      if (v25 >= 0.0)
      {
        goto LABEL_127;
      }

      goto LABEL_124;
    }

    LODWORD(v188) = 1;
    *&v55 = v139;
LABEL_106:
    v198 = v55;
    v140 = v207;
    if (v75 >= 0.0)
    {
      *(v207 + 152) = 0u;
      v141 = (v140 + 152);
      *(v140 + 248) = 0u;
      *(v140 + 232) = 0u;
      *(v140 + 216) = 0u;
      *(v140 + 200) = 0u;
      *(v140 + 184) = 0u;
      *(v140 + 168) = 0u;
      v142 = (v140 + *(v197 + 104));
      v143 = MEMORY[0x1E69E7CC0];
      v193 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *v142 = v193;
      v144 = *&v143;
      v196 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v143);
      v142[1] = v196;
      v145 = *(type metadata accessor for EstimationCache(0) + 24);
      v210[0] = v144;
      lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
      v147 = v146;
      type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
      v149 = v148;
      lazy protocol witness table accessor for type [Int] and conformance [A]();
      v197 = v145;
      v190 = v142;
      v191 = v149;
      v189 = v150;
      v192 = v147;
      v151 = MEMORY[0x1E69E7CC0];
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v152 = v202;
      *v140 = v201;
      *(v140 + 8) = v152;
      *(v140 + 16) = v205 & 1;
      *(v140 + 20) = v194;
      *(v207 + 32) = 1;
      v153 = v206;
      *(v207 + 40) = v206;
      *(v207 + 48) = v153;
      *(v207 + 24) = 1;
      *(v207 + 56) = 0;
      *(v207 + 64) = v75;
      *(v207 + 72) = 0;
      *(v207 + 80) = a1;
      *(v207 + 88) = 0;
      *(v207 + 96) = 0;
      *(v207 + 104) = 0;
      *(v207 + 120) = 0;
      *(v207 + 112) = 0;
      *(v207 + 128) = 1;
      v154 = v207;
      *(v207 + 136) = v151;
      v155 = (v154 + 136);
      *(v207 + 144) = 0;
      *(v207 + 264) = v151;
      v205 = xmmword_18DDAB4E0;
      *(v207 + 272) = xmmword_18DDAB4E0;
      *(v207 + 288) = xmmword_18DDAB4F0;
      v202 = xmmword_18DDAB4F0;
      *(v207 + 304) = xmmword_18DDAB4F0;
      *(v207 + 320) = 0;
      specialized StackPlacement.log(_:)(0.0, 0.0, v70 - v69, v207, 0);
      *(v207 + 96) = 0;
      *(v207 + 104) = 0;
      *(v207 + 120) = 0;
      *(v207 + 112) = 0;
      *(v207 + 128) = 1;
      v156 = v207;
      v157 = swift_isUniquelyReferenced_nonNull_native();
      v158 = *v155;
      if (v157)
      {
        v159 = *(v158 + 2);
        v160 = swift_isUniquelyReferenced_nonNull_native();
        *v155 = v158;
        if ((v160 & 1) == 0)
        {
          v158 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v159, 1, v158);
          *v155 = v158;
        }

        v161 = v190;
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v159, 0);
        v156 = v207;
      }

      else
      {
        v162 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v158 + 3) >> 1);

        v158 = v162;
        v161 = v190;
      }

      *(v156 + 136) = v158;
      *(v156 + 144) = 0;
      outlined destroy of GlassEntryView?(v141, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      *v141 = 0u;
      v141[1] = 0u;
      v141[2] = 0u;
      v141[3] = 0u;
      v141[4] = 0u;
      v141[5] = 0u;
      v141[6] = 0u;
      v163 = swift_isUniquelyReferenced_nonNull_native();
      v164 = *(v156 + 264);
      if (v163)
      {
        v165 = *(v164 + 2);
        v166 = swift_isUniquelyReferenced_nonNull_native();
        *(v156 + 264) = v164;
        if ((v166 & 1) == 0)
        {
          v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v165, 1, v164);
          *(v156 + 264) = v164;
        }

        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, v165, 0);
      }

      else
      {
        v167 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v164 + 3) >> 1);

        v164 = v167;
      }

      *(v156 + 264) = v164;
      v168 = v202;
      *(v156 + 272) = v205;
      *(v156 + 288) = v168;
      *(v156 + 304) = v168;
      *(v156 + 320) = 0;
      v169 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v151);

      *v161 = v169;
      v170 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v151);

      v161[1] = v170;
      *&v210[0] = v151;
      v171 = v199;
      v172 = v204;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v173 = (*(v200 + 40))(v161 + v197, v171, v172);
      v209 = 2;
      v210[0] = 0.0;
      MEMORY[0x1EEE9AC00](v173);
      v179 = v207;
      _LazyLayout_Subviews.applyNodes(from:style:to:)(v210, &v209, partial apply for specialized closure #1 in StackPlacement.place(subviews:from:position:stopping:style:), &v178);
      v174 = v207;
      specialized StackPlacement.flushMinorGroup()(v175);
      v176 = *(v174 + 304);
      v177 = *(v174 + 312);
      if (v176 < v177)
      {
        if (v176 <= v177)
        {
          outlined destroy of StackPlacement<LazyVStackLayout>(v174);
          v25 = v177 - v176;
          *&v55 = v176;
          v54 = v195;
          if (v177 - v176 >= 0.0)
          {
            goto LABEL_127;
          }

          goto LABEL_124;
        }

        goto LABEL_135;
      }

      outlined destroy of StackPlacement<LazyVStackLayout>(v174);
      v54 = v195;
      v55 = v198;
      if (v188)
      {
LABEL_123:
        if (v25 >= 0.0)
        {
LABEL_127:
          v198 = v55;
          _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e76VyxG0E0RtzrlE12boundingRect2at8subviews7context5cacheSo6CGRectVSgSi_AA01_C15M50_SubviewsVAA01_cM17_PlacementContextVAFtFSSyXEfu0_SiSo0Z0VTf1c_n(a1, 0.0, *&v55, *&v206, v25);
          outlined destroy of _LazyStack_Cache<LazyVStackLayout>(v22);
          *&v24 = v198;
          *&v23 = v206;
          *(&v24 + 1) = v206;
          goto LABEL_128;
        }

LABEL_124:
        if (*(*&v22[v51] + 16))
        {
          v25 = v54;
        }

        else
        {
          v25 = 0.0;
        }

        goto LABEL_127;
      }

LABEL_122:
      *&v55 = v56 + *&v55;
      goto LABEL_123;
    }

    goto LABEL_132;
  }

  v17[104] = 1;
  if (!v135)
  {
    *(v17 + 12) = v136;
    v96 = v136;
    goto LABEL_93;
  }

LABEL_136:
  __break(1u);
}

void specialized LazySubviewPrefetcher.updateValue()()
{
  v1 = v0;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  Value = AGGraphGetValue();
  v7 = *Value;
  if (*(v0 + 32) != *Value)
  {
    v8 = *(Value + 8);
    v9 = *(Value + 16);
    v10 = *(v0 + 40);
    *(v0 + 32) = v7;
    *(v0 + 40) = v9;
    if (v9 != v10)
    {
      type metadata accessor for LazyLayoutViewCache();
      AGGraphGetValue();

      LazyLayoutViewCache.resetPrefetchPhases()();
    }

    type metadata accessor for LazyLayoutViewCache();
    if ((*(*AGGraphGetValue() + 312) & v9) != 0)
    {
      if (one-time initialization token for lazyLayoutPrefetch != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v3, static Log.lazyLayoutPrefetch);
      outlined init with copy of ObservationTracking._AccessList?(v11, v5, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
      v12 = type metadata accessor for Logger();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v5, 1, v12) == 1)
      {
        outlined destroy of ObservationTracking._AccessList?(v5, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
      }

      else
      {
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v27 = v15;
          v17 = v16;
          v28 = swift_slowAlloc();
          v29 = v28;
          *v17 = 136446466;
          *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v29);
          *(v17 + 12) = 2082;
          v18 = AGAttribute.description.getter();
          v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);
          v26 = v14;
          v21 = v8;
          v22 = v20;

          *(v17 + 14) = v22;
          v8 = v21;
          v23 = v26;
          _os_log_impl(&dword_18D018000, v26, v27, "%{public}s %{public}s start prefetch", v17, 0x16u);
          v24 = v28;
          swift_arrayDestroy();
          MEMORY[0x193AC4820](v24, -1, -1);
          MEMORY[0x193AC4820](v17, -1, -1);
        }

        else
        {
        }

        (*(v13 + 8))(v5, v12);
      }

      if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
      {
        __break(1u);
      }

      else
      {
        v25 = AGGraphGetAttributeGraph();
        AGGraphGetDeadline();
        AGGraphSetDeadline();
        specialized closure #1 in LazySubviewPrefetcher.updateValue()(v1, v7, v8, v9, outlined init with copy of LazySubviewPrefetcher<LazyHStackLayout>, outlined destroy of LazySubviewPrefetcher<LazyHStackLayout>, specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:owner:));
        AGGraphSetDeadline();
      }
    }
  }
}

{
  v1 = v0;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  Value = AGGraphGetValue();
  v7 = *Value;
  if (*(v0 + 32) != *Value)
  {
    v8 = *(Value + 8);
    v9 = *(Value + 16);
    v10 = *(v0 + 40);
    *(v0 + 32) = v7;
    *(v0 + 40) = v9;
    if (v9 != v10)
    {
      type metadata accessor for LazyLayoutViewCache();
      AGGraphGetValue();

      LazyLayoutViewCache.resetPrefetchPhases()();
    }

    type metadata accessor for LazyLayoutViewCache();
    if ((*(*AGGraphGetValue() + 312) & v9) != 0)
    {
      if (one-time initialization token for lazyLayoutPrefetch != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v3, static Log.lazyLayoutPrefetch);
      outlined init with copy of ObservationTracking._AccessList?(v11, v5, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
      v12 = type metadata accessor for Logger();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v5, 1, v12) == 1)
      {
        outlined destroy of ObservationTracking._AccessList?(v5, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
      }

      else
      {
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v27 = v15;
          v17 = v16;
          v28 = swift_slowAlloc();
          v29 = v28;
          *v17 = 136446466;
          *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v29);
          *(v17 + 12) = 2082;
          v18 = AGAttribute.description.getter();
          v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);
          v26 = v14;
          v21 = v8;
          v22 = v20;

          *(v17 + 14) = v22;
          v8 = v21;
          v23 = v26;
          _os_log_impl(&dword_18D018000, v26, v27, "%{public}s %{public}s start prefetch", v17, 0x16u);
          v24 = v28;
          swift_arrayDestroy();
          MEMORY[0x193AC4820](v24, -1, -1);
          MEMORY[0x193AC4820](v17, -1, -1);
        }

        else
        {
        }

        (*(v13 + 8))(v5, v12);
      }

      if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
      {
        __break(1u);
      }

      else
      {
        v25 = AGGraphGetAttributeGraph();
        AGGraphGetDeadline();
        AGGraphSetDeadline();
        specialized closure #1 in LazySubviewPrefetcher.updateValue()(v1, v7, v8, v9, outlined init with copy of LazySubviewPrefetcher<LazyVStackLayout>, outlined destroy of LazySubviewPrefetcher<LazyVStackLayout>, specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:owner:));
        AGGraphSetDeadline();
      }
    }
  }
}

void specialized closure #1 in LazySubviewPrefetcher.updateValue()(uint64_t a1, void (*a2)(char *, void (**)(char *, uint64_t), uint64_t), void (*a3)(char *, void (**)(char *, uint64_t), uint64_t), uint64_t a4, void (*a5)(_OWORD *, _OWORD *), void (*a6)(_OWORD *, __n128), uint64_t a7)
{
  v10 = a4;
  v14 = *(a1 + 44);
  v15 = *(a1 + 48);
  v28[2] = *(a1 + 32);
  v29[0] = v15;
  *(v29 + 9) = *(a1 + 57);
  v16 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v16;
  type metadata accessor for LazyLayoutViewCache();
  a5(v28, v26);
  v17 = *AGGraphGetValue();

  v24 = a6;
  (a6)(v28);
  LODWORD(a6) = *(v17 + 228);

  if (v14 != a6)
  {
    v18 = *(a1 + 48);
    v26[2] = *(a1 + 32);
    v27[0] = v18;
    *(v27 + 9) = *(a1 + 57);
    v19 = *(a1 + 16);
    v26[0] = *a1;
    v26[1] = v19;
    a5(v26, v25);
    v20 = *AGGraphGetValue();

    v24(v26);
    v21 = *(v20 + 228);

    *(a1 + 44) = v21;
    LazyPrefetchState.reset()();
  }

  v22 = *MEMORY[0x1E698D3F8];
  while (1)
  {
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == v22)
    {
      break;
    }

    specialized LazySubviewPrefetcher.update(info:owner:)(a2, a3, v10, CurrentAttribute, a7);
    if ((*(a1 + 72) & 1) == 0)
    {
      return;
    }
  }

  __break(1u);
}

void specialized LazySubviewPrefetcher.update(info:owner:)(void (*a1)(char *, void (**)(char *, uint64_t), uint64_t), void (*a2)(char *, void (**)(char *, uint64_t), uint64_t), int a3, uint64_t a4, uint64_t a5)
{
  v274 = a5;
  v6 = v5;
  LODWORD(v273) = a3;
  v271 = a1;
  v272 = a2;
  v292 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for OSSignpostID();
  v282 = *(v8 - 8);
  v283 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v256 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v256 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v256 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v256 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v281 = &v256 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v278 = &v256 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v256 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v277 = &v256 - v29;
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v256 - v32;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v280 = &v256 - v36;
  MEMORY[0x1EEE9AC00](v37);
  *(v6 + 72) = 0;
  v42 = *(v6 + 48);
  if (*(v42 + 2))
  {
    v264 = &v256 - v38;
    v270 = v41;
    v261 = v40;
    v262 = v39;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v43 = *(v42 + 2);
      if (v43)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
      v43 = *(v42 + 2);
      if (v43)
      {
LABEL_4:
        v44 = v43 - 1;
        v45 = v42[v44 + 32];
        *(v42 + 2) = v44;
        *(v6 + 48) = v42;
        v286[0] = 1;
        v276 = v6;
        v275 = v45;
        if (v45 > 1)
        {
          LOBYTE(v287) = 0;
          if (v45 == 2)
          {
            type metadata accessor for LazyLayoutViewCache();
            AGGraphGetValue();

            specialized LazyLayoutViewCache.advancePrefetchPhaseForRemoval(notify:)(v57, a4, &v287, &v285);
          }

          else
          {
            type metadata accessor for LazyLayoutViewCache();
            AGGraphGetValue();

            specialized LazyLayoutViewCache.advancePrefetchPhaseForDisplay(notify:)(v65, a4, &v287, &v285);
          }

          if (v285 == 1)
          {
            v286[0] = 0;
          }

          if ((v287 & 1) == 0)
          {
            *(v6 + 72) = 1;
          }

          goto LABEL_271;
        }

        v259 = v42;
        v263 = a4;
        if (v45)
        {
          v268 = v16;
          v269 = v10;
          v266 = v19;
          v267 = v13;
          if (one-time initialization token for prefetchOutputs != -1)
          {
            swift_once();
          }

          v10 = &static Signpost.prefetchOutputs;
          v58 = *(&static Signpost.prefetchOutputs + 1);
          v51 = static Signpost.prefetchOutputs;
          v59 = word_1EAB0EAE0;
          LOBYTE(v49) = HIBYTE(word_1EAB0EAE0);
          v60 = byte_1EAB0EAE2;
          LOBYTE(v46) = static os_signpost_type_t.begin.getter();
          v287 = v51;
          v288 = v58;
          v289 = v59;
          v290 = v49;
          v291 = v60;
          if ((Signpost.isEnabled.getter() & 1) == 0)
          {
LABEL_58:
            type metadata accessor for LazyLayoutViewCache();
            AGGraphGetValue();

            LazyLayoutViewCache.prefetchOutputs()();

            v86 = v287;
            v87 = *v10;
            v88 = *(v10 + 8);
            v89 = *(v10 + 0x10);
            LOBYTE(v90) = *(v10 + 0x11);
            v91 = *(v10 + 0x12);
            LOBYTE(v10) = static os_signpost_type_t.end.getter();
            if (v86 == 1)
            {
              v287 = v87;
              v288 = v88;
              v289 = v89;
              v290 = v90;
              v291 = v91;
              v92 = Signpost.isEnabled.getter();
              v93 = v263;
              if ((v92 & 1) == 0)
              {
                goto LABEL_207;
              }

              static OSSignpostID.exclusive.getter();
              type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_18DDAB4C0;
              *(inited + 32) = v93;
              v95 = (inited + 32);
              v96 = MEMORY[0x1E69E76D0];
              *(inited + 56) = MEMORY[0x1E69E7668];
              *(inited + 64) = v96;
              v97 = MEMORY[0x1E69E7358];
              *(inited + 96) = MEMORY[0x1E69E72F0];
              *(inited + 104) = v97;
              v284 = inited;
              *(inited + 72) = 0;
              if (one-time initialization token for _signpostLog == -1)
              {
                if ((v90 & 1) == 0)
                {
                  goto LABEL_114;
                }

                goto LABEL_62;
              }

LABEL_113:
              swift_once();
              if ((v90 & 1) == 0)
              {
LABEL_114:
                if (v87 == 20)
                {
                  v147 = 3;
                }

                else
                {
                  v147 = 4;
                }

                v6 = bswap32(v87) | (4 * (v87 >> 16));
                v149 = v282 + 16;
                v148 = *(v282 + 16);
                v272 = v95;
                v273 = v148;
                v148(v268, v266, v283);
                LOBYTE(v287) = 1;
                v281 = v147;
                v282 = v149;
                v278 = (16 * v147);
                v279 = (v149 - 8);

                v151 = 0;
                v277 = (v150 + 32);
                v274 = v87;
                do
                {
                  v280 = &v256;
                  MEMORY[0x1EEE9AC00](v150);
                  v90 = &v256 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v87 = (v90 + 8);
                  v153 = v281;
                  v154 = (v90 + 8);
                  do
                  {
                    *(v154 - 1) = 0;
                    *v154 = 0;
                    v154 += 16;
                    --v153;
                  }

                  while (v153);
                  v155 = &v277[40 * v151];
                  v102 = v281;
                  while (1)
                  {
                    v156 = *(v284 + 16);
                    if (v151 == v156)
                    {
                      break;
                    }

                    if (v151 >= v156)
                    {
                      __break(1u);
                      goto LABEL_143;
                    }

                    ++v151;
                    v157 = *(v155 + 3);
                    v158 = *(v155 + 4);
                    __swift_project_boxed_opaque_existential_1(v155, v157);
                    *(v87 - 1) = CVarArg.kdebugValue(_:)(v6 | v10, v157, v158);
                    *v87 = v159 & 1;
                    v87 += 16;
                    v155 += 40;
                    v102 = (v102 - 1);
                    if (!v102)
                    {
                      goto LABEL_126;
                    }
                  }

                  LOBYTE(v287) = 0;
LABEL_126:
                  v160 = v274;
                  if (v274 == 20)
                  {
                    v161 = v268;
                    OSSignpostID.rawValue.getter();
                    kdebug_trace();
                  }

                  else
                  {
                    kdebug_trace();
                    v161 = v268;
                  }

                  if (*(v90 + 8) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (*(v90 + 24) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (*(v90 + 40) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v160 != 20 && *(v90 + 56) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v162 = *v279;
                  v163 = v283;
                  (*v279)(v161, v283);
                  v164 = __swift_project_value_buffer(v163, static OSSignpostID.continuation);
                  v150 = (v273)(v161, v164, v163);
                }

                while ((v287 & 1) != 0);

                v165 = v283;
                v162(v161, v283);
                v162(v266, v165);
                swift_setDeallocating();
                type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
LABEL_206:
                swift_arrayDestroy();
                goto LABEL_207;
              }

LABEL_62:
              swift_setDeallocating();
              type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
              swift_arrayDestroy();
              v98 = v266;
LABEL_103:
              os_signpost(_:dso:log:name:signpostID:)();
              (*(v282 + 8))(v98, v283);
              v286[0] = 0;
LABEL_271:
              specialized $defer #1 <A>() in LazySubviewPrefetcher.update(info:owner:)(v286, v276, v275);
              return;
            }

            v287 = v87;
            v288 = v88;
            v289 = v89;
            v290 = v90;
            v291 = v91;
            v99 = Signpost.isEnabled.getter();
            v100 = v263;
            if ((v99 & 1) == 0)
            {
LABEL_172:
              v172 = v259;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_173:
                v189 = *(v172 + 2);
                v188 = *(v172 + 3);
                if (v189 >= v188 >> 1)
                {
                  v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v189 + 1, 1, v172);
                }

                *(v172 + 2) = v189 + 1;
                v172[v189 + 32] = 3;
                *(v6 + 48) = v172;
                goto LABEL_271;
              }

LABEL_177:
              v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v172 + 2) + 1, 1, v172);
              goto LABEL_173;
            }

            static OSSignpostID.exclusive.getter();
            type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v101 = swift_initStackObject();
            *(v101 + 32) = v100;
            v102 = (v101 + 32);
            *(v101 + 16) = xmmword_18DDAB4C0;
            v103 = MEMORY[0x1E69E76D0];
            *(v101 + 56) = MEMORY[0x1E69E7668];
            *(v101 + 64) = v103;
            v104 = MEMORY[0x1E69E7358];
            *(v101 + 96) = MEMORY[0x1E69E72F0];
            *(v101 + 104) = v104;
            v284 = v101;
            *(v101 + 72) = 1;
            if (one-time initialization token for _signpostLog == -1)
            {
              if (v90)
              {
LABEL_66:
                swift_setDeallocating();
                type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
                swift_arrayDestroy();
                v105 = v267;
                os_signpost(_:dso:log:name:signpostID:)();
                (*(v282 + 8))(v105, v283);
                goto LABEL_172;
              }
            }

            else
            {
LABEL_143:
              swift_once();
              if (v90)
              {
                goto LABEL_66;
              }
            }

            if (v87 == 20)
            {
              v166 = 3;
            }

            else
            {
              v166 = 4;
            }

            v6 = bswap32(v87) | (4 * (v87 >> 16));
            v168 = v282 + 16;
            v167 = *(v282 + 16);
            v272 = v102;
            v273 = v167;
            v167(v269, v267, v283);
            LOBYTE(v287) = 1;
            v281 = v166;
            v282 = v168;
            v278 = (16 * v166);
            v279 = (v168 - 8);

            v170 = 0;
            v277 = (v169 + 32);
            v274 = v87;
LABEL_148:
            v280 = &v256;
            MEMORY[0x1EEE9AC00](v169);
            v172 = &v256 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
            v173 = v172 + 8;
            v174 = v281;
            v175 = v172 + 8;
            do
            {
              *(v175 - 1) = 0;
              *v175 = 0;
              v175 += 16;
              --v174;
            }

            while (v174);
            v176 = &v277[40 * v170];
            v177 = v281;
            while (1)
            {
              v178 = *(v284 + 16);
              if (v170 == v178)
              {
                LOBYTE(v287) = 0;
LABEL_156:
                v182 = v274;
                if (v274 == 20)
                {
                  v183 = v269;
                  OSSignpostID.rawValue.getter();
                  kdebug_trace();
                }

                else
                {
                  kdebug_trace();
                  v183 = v269;
                }

                if (v172[8] == 1)
                {
                  kdebug_trace_string();
                }

                if (v172[24] == 1)
                {
                  kdebug_trace_string();
                }

                if (v172[40] == 1)
                {
                  kdebug_trace_string();
                }

                if (v182 != 20 && v172[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v184 = *v279;
                v185 = v283;
                (*v279)(v183, v283);
                v186 = __swift_project_value_buffer(v185, static OSSignpostID.continuation);
                v169 = (v273)(v183, v186, v185);
                if ((v287 & 1) == 0)
                {

                  v187 = v283;
                  v184(v183, v283);
                  v184(v267, v187);
                  swift_setDeallocating();
                  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
                  swift_arrayDestroy();
                  v6 = v276;
                  goto LABEL_172;
                }

                goto LABEL_148;
              }

              if (v170 >= v178)
              {
                break;
              }

              ++v170;
              v179 = *(v176 + 3);
              v180 = *(v176 + 4);
              __swift_project_boxed_opaque_existential_1(v176, v179);
              *(v173 - 1) = CVarArg.kdebugValue(_:)(v6 | v10, v179, v180);
              *v173 = v181 & 1;
              v173 += 16;
              v176 += 40;
              if (!--v177)
              {
                goto LABEL_156;
              }
            }

            __break(1u);
            goto LABEL_177;
          }

          static OSSignpostID.exclusive.getter();
          type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v61 = swift_initStackObject();
          *(v61 + 32) = v263;
          v265 = (v61 + 32);
          v62 = MEMORY[0x1E69E7668];
          v63 = MEMORY[0x1E69E76D0];
          *(v61 + 16) = xmmword_18DDA6EB0;
          *(v61 + 56) = v62;
          *(v61 + 64) = v63;
          v284 = v61;
          if (one-time initialization token for _signpostLog == -1)
          {
            if ((v49 & 1) == 0)
            {
LABEL_31:
              if (v51 == 20)
              {
                v66 = 3;
              }

              else
              {
                v66 = 4;
              }

              v67 = bswap32(v51) | (4 * WORD1(v51));
              v10 = v46;
              v68 = (v282 + 16);
              v271 = *(v282 + 16);
              v271(v281, v270, v283);
              LOBYTE(v287) = 1;
              v280 = v66;
              v272 = v68;
              v277 = (16 * v66);
              v278 = v68 - 8;

              v70 = 0;
              v273 = v51;
              v274 = v69 + 32;
LABEL_35:
              v279 = &v256;
              MEMORY[0x1EEE9AC00](v69);
              v49 = &v256 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
              v53 = v49 + 8;
              v72 = v280;
              v73 = v49 + 8;
              do
              {
                *(v73 - 1) = 0;
                *v73 = 0;
                v73 += 16;
                --v72;
              }

              while (v72);
              v74 = (v274 + 40 * v70);
              v75 = v280;
              while (1)
              {
                v76 = *(v284 + 16);
                if (v70 == v76)
                {
                  LOBYTE(v287) = 0;
LABEL_43:
                  v80 = v273;
                  if (v273 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (v49[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v49[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v49[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v80 != 20 && v49[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v81 = *v278;
                  v82 = v281;
                  v83 = v283;
                  (*v278)(v281, v283);
                  v84 = __swift_project_value_buffer(v83, static OSSignpostID.continuation);
                  v69 = (v271)(v82, v84, v83);
                  if ((v287 & 1) == 0)
                  {

                    v85 = v283;
                    v81(v281, v283);
                    v81(v270, v85);
                    swift_setDeallocating();
                    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
                    swift_arrayDestroy();
                    v6 = v276;
                    v10 = &static Signpost.prefetchOutputs;
                    goto LABEL_58;
                  }

                  goto LABEL_35;
                }

                if (v70 >= v76)
                {
                  break;
                }

                ++v70;
                v77 = v74[3];
                v78 = v74[4];
                __swift_project_boxed_opaque_existential_1(v74, v77);
                *(v53 - 1) = CVarArg.kdebugValue(_:)(v67 | v10, v77, v78);
                *v53 = v79 & 1;
                v53 += 16;
                v74 += 5;
                if (!--v75)
                {
                  goto LABEL_43;
                }
              }

              __break(1u);
              goto LABEL_68;
            }

            goto LABEL_20;
          }

LABEL_30:
          swift_once();
          if ((v49 & 1) == 0)
          {
            goto LABEL_31;
          }

LABEL_20:
          swift_setDeallocating();
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
          swift_arrayDestroy();
          v64 = v270;
          os_signpost(_:dso:log:name:signpostID:)();
          (*(v282 + 8))(v64, v283);
          goto LABEL_58;
        }

        v257 = v27;
        v10 = *(v6 + 56);
        if (one-time initialization token for prefetchMakeView == -1)
        {
LABEL_7:
          v49 = *(&static Signpost.prefetchMakeView + 1);
          v6 = static Signpost.prefetchMakeView;
          v46 = word_1EAB0EAB8;
          v47 = HIBYTE(word_1EAB0EAB8);
          v48 = byte_1EAB0EABA;
          LODWORD(v281) = static os_signpost_type_t.begin.getter();
          v279 = v6;
          v287 = v6;
          v288 = v49;
          v269 = v49;
          LOBYTE(v49) = v47;
          LODWORD(v270) = v46;
          v289 = v46;
          v290 = v47;
          v291 = v48;
          v50 = Signpost.isEnabled.getter();
          v260 = v33;
          v51 = v263;
          v258 = v10;
          if ((v50 & 1) == 0)
          {
LABEL_97:
            AGGraphClearUpdate();
            (v274)(&v287, v271, v272, v273, v10, v51);
            AGGraphSetUpdate();
            v126 = v287;
            v127 = *(&static Signpost.prefetchMakeView + 1);
            v128 = static Signpost.prefetchMakeView;
            v129 = word_1EAB0EAB8;
            LOBYTE(v130) = HIBYTE(word_1EAB0EAB8);
            v131 = byte_1EAB0EABA;
            LOBYTE(v132) = static os_signpost_type_t.end.getter();
            if (!v126)
            {
              v287 = v128;
              v288 = v127;
              v289 = v129;
              v290 = v130;
              v291 = v131;
              if ((Signpost.isEnabled.getter() & 1) == 0)
              {
                goto LABEL_271;
              }

              static OSSignpostID.exclusive.getter();
              type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v137 = swift_initStackObject();
              *(v137 + 16) = xmmword_18DDAB4C0;
              *(v137 + 32) = v51;
              v138 = v137 + 32;
              v139 = MEMORY[0x1E69E76D0];
              *(v137 + 56) = MEMORY[0x1E69E7668];
              *(v137 + 64) = v139;
              v140 = MEMORY[0x1E69E7358];
              *(v137 + 96) = MEMORY[0x1E69E72F0];
              *(v137 + 104) = v140;
              v284 = v137;
              *(v137 + 72) = 0;
              if (one-time initialization token for _signpostLog == -1)
              {
                if ((v130 & 1) == 0)
                {
LABEL_210:
                  v209 = v128;
                  if (v128 == 20)
                  {
                    v210 = 3;
                  }

                  else
                  {
                    v210 = 4;
                  }

                  v130 = bswap32(v128) | (4 * WORD1(v128));
                  LODWORD(v128) = v132;
                  v212 = v282 + 16;
                  v211 = *(v282 + 16);
                  v272 = v138;
                  v273 = v211;
                  v211(v260, v261, v283);
                  LOBYTE(v287) = 1;
                  v281 = v210;
                  v282 = v212;
                  v278 = (16 * v210);
                  v279 = (v212 - 8);

                  v214 = 0;
                  v277 = (v213 + 32);
                  v274 = v209;
LABEL_214:
                  v280 = &v256;
                  MEMORY[0x1EEE9AC00](v213);
                  v144 = &v256 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v216 = v144 + 8;
                  v217 = v281;
                  v218 = v144 + 8;
                  do
                  {
                    *(v218 - 1) = 0;
                    *v218 = 0;
                    v218 += 16;
                    --v217;
                  }

                  while (v217);
                  v219 = &v277[40 * v214];
                  v142 = v281;
                  while (1)
                  {
                    v220 = *(v284 + 16);
                    if (v214 == v220)
                    {
                      LOBYTE(v287) = 0;
LABEL_222:
                      v223 = v274;
                      if (v274 == 20)
                      {
                        v224 = v260;
                        OSSignpostID.rawValue.getter();
                        kdebug_trace();
                      }

                      else
                      {
                        kdebug_trace();
                        v224 = v260;
                      }

                      if (v144[8] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v144[24] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v144[40] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v223 != 20 && v144[56] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (one-time initialization token for continuation != -1)
                      {
                        swift_once();
                      }

                      v225 = *v279;
                      v226 = v283;
                      (*v279)(v224, v283);
                      v227 = __swift_project_value_buffer(v226, static OSSignpostID.continuation);
                      v213 = (v273)(v224, v227, v226);
                      if ((v287 & 1) == 0)
                      {

                        v228 = v283;
                        v225(v224, v283);
                        v225(v261, v228);
                        swift_setDeallocating();
                        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
                        swift_arrayDestroy();
                        goto LABEL_271;
                      }

                      goto LABEL_214;
                    }

                    if (v214 >= v220)
                    {
                      break;
                    }

                    ++v214;
                    v221 = *(v219 + 3);
                    v132 = *(v219 + 4);
                    __swift_project_boxed_opaque_existential_1(v219, v221);
                    *(v216 - 1) = CVarArg.kdebugValue(_:)(v130 | v128, v221, v132);
                    *v216 = v222 & 1;
                    v216 += 16;
                    v219 += 40;
                    if (!--v142)
                    {
                      goto LABEL_222;
                    }
                  }

                  __break(1u);
                  goto LABEL_239;
                }

LABEL_107:
                swift_setDeallocating();
                type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
                swift_arrayDestroy();
                v141 = v261;
                os_signpost(_:dso:log:name:signpostID:)();
                (*(v282 + 8))(v141, v283);
                goto LABEL_271;
              }

LABEL_209:
              swift_once();
              if ((v130 & 1) == 0)
              {
                goto LABEL_210;
              }

              goto LABEL_107;
            }

            if (v126 != 1)
            {
              v287 = v128;
              v288 = v127;
              v289 = v129;
              v290 = v130;
              v291 = v131;
              if ((Signpost.isEnabled.getter() & 1) == 0)
              {
                goto LABEL_267;
              }

              v142 = v257;
              static OSSignpostID.exclusive.getter();
              type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v143 = swift_initStackObject();
              *(v143 + 32) = v51;
              v144 = (v143 + 32);
              *(v143 + 16) = xmmword_18DDAB4C0;
              v145 = MEMORY[0x1E69E76D0];
              *(v143 + 56) = MEMORY[0x1E69E7668];
              *(v143 + 64) = v145;
              v146 = MEMORY[0x1E69E7358];
              *(v143 + 96) = MEMORY[0x1E69E72F0];
              *(v143 + 104) = v146;
              v284 = v143;
              *(v143 + 72) = 1;
              if (one-time initialization token for _signpostLog == -1)
              {
                if ((v130 & 1) == 0)
                {
LABEL_240:
                  v229 = v128;
                  if (v128 == 20)
                  {
                    v230 = 3;
                  }

                  else
                  {
                    v230 = 4;
                  }

                  v231 = (bswap32(v128) | (4 * WORD1(v128)));
                  v232 = v132;
                  v234 = v282 + 16;
                  v233 = *(v282 + 16);
                  v271 = v144;
                  v272 = v233;
                  v233(v278, v142, v283);
                  LOBYTE(v287) = 1;
                  v281 = v230;
                  v282 = v234;
                  v277 = (16 * v230);
                  v279 = (v234 - 8);

                  v236 = 0;
                  v273 = v229;
                  v274 = v235 + 32;
LABEL_244:
                  v280 = &v256;
                  MEMORY[0x1EEE9AC00](v235);
                  v238 = &v256 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
                  v239 = v238 + 8;
                  v240 = v281;
                  v241 = v238 + 8;
                  do
                  {
                    *(v241 - 1) = 0;
                    *v241 = 0;
                    v241 += 16;
                    --v240;
                  }

                  while (v240);
                  v242 = (v274 + 40 * v236);
                  v243 = v281;
                  while (1)
                  {
                    v244 = *(v284 + 16);
                    if (v236 == v244)
                    {
                      LOBYTE(v287) = 0;
LABEL_252:
                      v248 = v273;
                      if (v273 == 20)
                      {
                        OSSignpostID.rawValue.getter();
                      }

                      kdebug_trace();
                      if (v238[8] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v238[24] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v238[40] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (v248 != 20 && v238[56] == 1)
                      {
                        kdebug_trace_string();
                      }

                      if (one-time initialization token for continuation != -1)
                      {
                        swift_once();
                      }

                      v249 = v278;
                      v250 = *v279;
                      v251 = v283;
                      (*v279)(v278, v283);
                      v252 = __swift_project_value_buffer(v251, static OSSignpostID.continuation);
                      v235 = (v272)(v249, v252, v251);
                      if ((v287 & 1) == 0)
                      {

                        v253 = v283;
                        v250(v278, v283);
                        v250(v257, v253);
                        swift_setDeallocating();
                        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
                        swift_arrayDestroy();
                        goto LABEL_267;
                      }

                      goto LABEL_244;
                    }

                    if (v236 >= v244)
                    {
                      break;
                    }

                    ++v236;
                    v245 = v242[3];
                    v246 = v242[4];
                    __swift_project_boxed_opaque_existential_1(v242, v245);
                    *(v239 - 1) = CVarArg.kdebugValue(_:)(v231 | v232, v245, v246);
                    *v239 = v247 & 1;
                    v239 += 16;
                    v242 += 5;
                    if (!--v243)
                    {
                      goto LABEL_252;
                    }
                  }

                  __break(1u);
                  goto LABEL_274;
                }

                goto LABEL_111;
              }

LABEL_239:
              swift_once();
              if ((v130 & 1) == 0)
              {
                goto LABEL_240;
              }

LABEL_111:
              swift_setDeallocating();
              type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
              swift_arrayDestroy();
              os_signpost(_:dso:log:name:signpostID:)();
              (*(v282 + 8))(v142, v283);
LABEL_267:
              v231 = v259;
              v238 = v276;
              *(v276 + 7) = v258 + 1;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_268:
                v255 = *(v231 + 2);
                v254 = *(v231 + 3);
                if (v255 >= v254 >> 1)
                {
                  v231 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v254 > 1), v255 + 1, 1, v231);
                }

                *(v231 + 2) = v255 + 1;
                v231[v255 + 32] = 1;
                *(v238 + 6) = v231;
                goto LABEL_271;
              }

LABEL_274:
              v231 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v231 + 2) + 1, 1, v231);
              goto LABEL_268;
            }

            v287 = v128;
            v288 = v127;
            v289 = v129;
            v290 = v130;
            v291 = v131;
            if (Signpost.isEnabled.getter())
            {
              static OSSignpostID.exclusive.getter();
              type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v133 = swift_initStackObject();
              *(v133 + 16) = xmmword_18DDAB4C0;
              *(v133 + 32) = v51;
              v134 = (v133 + 32);
              v135 = MEMORY[0x1E69E76D0];
              *(v133 + 56) = MEMORY[0x1E69E7668];
              *(v133 + 64) = v135;
              v136 = MEMORY[0x1E69E7358];
              *(v133 + 96) = MEMORY[0x1E69E72F0];
              *(v133 + 104) = v136;
              v284 = v133;
              *(v133 + 72) = 0;
              if (one-time initialization token for _signpostLog == -1)
              {
                if (v130)
                {
LABEL_102:
                  swift_setDeallocating();
                  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
                  swift_arrayDestroy();
                  v98 = v262;
                  goto LABEL_103;
                }
              }

              else
              {
                swift_once();
                if (v130)
                {
                  goto LABEL_102;
                }
              }

              v274 = v128;
              if (v128 == 20)
              {
                v190 = 3;
              }

              else
              {
                v190 = 4;
              }

              v130 = bswap32(v128) | (4 * WORD1(v128));
              LODWORD(v128) = v132;
              v192 = v282 + 16;
              v191 = *(v282 + 16);
              v271 = v134;
              v272 = v191;
              v191(v277, v262, v283);
              LOBYTE(v287) = 1;
              v282 = v192;
              v279 = (16 * v190);
              v280 = (v192 - 8);

              v138 = 0;
              v278 = (v193 + 32);
              v273 = v190;
LABEL_183:
              v281 = &v256;
              MEMORY[0x1EEE9AC00](v193);
              v195 = &v256 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
              v196 = v195 + 8;
              v197 = v190;
              v198 = v195 + 8;
              do
              {
                *(v198 - 1) = 0;
                *v198 = 0;
                v198 += 16;
                --v197;
              }

              while (v197);
              v132 = &v278[40 * v138];
              while (1)
              {
                v199 = *(v284 + 16);
                if (v138 == v199)
                {
                  LOBYTE(v287) = 0;
LABEL_191:
                  v203 = v274;
                  if (v274 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (v195[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v195[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v195[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v203 != 20 && v195[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v204 = *v280;
                  v205 = v277;
                  v206 = v283;
                  (*v280)(v277, v283);
                  v207 = __swift_project_value_buffer(v206, static OSSignpostID.continuation);
                  v193 = (v272)(v205, v207, v206);
                  v190 = v273;
                  if ((v287 & 1) == 0)
                  {

                    v208 = v283;
                    v204(v277, v283);
                    v204(v262, v208);
                    swift_setDeallocating();
                    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
                    goto LABEL_206;
                  }

                  goto LABEL_183;
                }

                if (v138 >= v199)
                {
                  break;
                }

                ++v138;
                v200 = *(v132 + 3);
                v201 = *(v132 + 4);
                __swift_project_boxed_opaque_existential_1(v132, v200);
                *(v196 - 1) = CVarArg.kdebugValue(_:)(v130 | v128, v200, v201);
                *v196 = v202 & 1;
                v196 += 16;
                v132 += 40;
                if (!--v190)
                {
                  goto LABEL_191;
                }
              }

              __break(1u);
              goto LABEL_209;
            }

LABEL_207:
            v286[0] = 0;
            goto LABEL_271;
          }

          static OSSignpostID.exclusive.getter();
          type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v52 = swift_initStackObject();
          *(v52 + 16) = xmmword_18DDAB4C0;
          *(v52 + 32) = v51;
          v53 = (v52 + 32);
          v54 = MEMORY[0x1E69E76D0];
          *(v52 + 56) = MEMORY[0x1E69E7668];
          *(v52 + 64) = v54;
          v55 = MEMORY[0x1E69E7358];
          *(v52 + 96) = MEMORY[0x1E69E72F0];
          *(v52 + 104) = v55;
          v284 = v52;
          if (v10 >= 0xFFFFFFFF80000000)
          {
            if (v10 <= 0x7FFFFFFF)
            {
              *(v284 + 72) = v10;
              if (one-time initialization token for _signpostLog == -1)
              {
                if (v49)
                {
LABEL_12:
                  swift_setDeallocating();
                  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
                  swift_arrayDestroy();
                  v56 = v264;
                  os_signpost(_:dso:log:name:signpostID:)();
                  (*(v282 + 8))(v56, v283);
                  v51 = v263;
                  goto LABEL_97;
                }

                goto LABEL_70;
              }

LABEL_69:
              swift_once();
              if (v49)
              {
                goto LABEL_12;
              }

LABEL_70:
              v256 = v53;
              v106 = v279;
              if (v279 == 20)
              {
                v107 = 3;
              }

              else
              {
                v107 = 4;
              }

              v108 = bswap32(v279) | (4 * (v279 >> 16));
              v109 = v281;
              v110 = (v282 + 16);
              v265 = *(v282 + 16);
              v265(v280, v264, v283);
              LOBYTE(v287) = 1;
              v281 = v107;
              v266 = v110;
              v269 = 16 * v107;
              v270 = (v110 - 8);

              v90 = 0;
              v267 = v106;
              v268 = (v111 + 32);
LABEL_74:
              v279 = &v256;
              MEMORY[0x1EEE9AC00](v111);
              v87 = &v256 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
              v113 = v87 + 8;
              v114 = v281;
              v115 = v87 + 8;
              do
              {
                *(v115 - 1) = 0;
                *v115 = 0;
                v115 += 16;
                --v114;
              }

              while (v114);
              v95 = &v268[40 * v90];
              v10 = v281;
              while (1)
              {
                v116 = *(v284 + 16);
                if (v90 == v116)
                {
                  LOBYTE(v287) = 0;
LABEL_82:
                  v120 = v267;
                  if (v267 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (v87[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v87[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v87[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v120 != 20 && v87[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v121 = *v270;
                  v122 = v280;
                  v123 = v283;
                  (*v270)(v280, v283);
                  v124 = __swift_project_value_buffer(v123, static OSSignpostID.continuation);
                  v111 = (v265)(v122, v124, v123);
                  if ((v287 & 1) == 0)
                  {

                    v125 = v283;
                    v121(v280, v283);
                    v121(v264, v125);
                    swift_setDeallocating();
                    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
                    swift_arrayDestroy();
                    v51 = v263;
                    v10 = v258;
                    goto LABEL_97;
                  }

                  goto LABEL_74;
                }

                if (v90 >= v116)
                {
                  break;
                }

                ++v90;
                v117 = *(v95 + 3);
                v118 = *(v95 + 4);
                __swift_project_boxed_opaque_existential_1(v95, v117);
                *(v113 - 1) = CVarArg.kdebugValue(_:)(v108 | v109, v117, v118);
                *v113 = v119 & 1;
                v113 += 16;
                v95 = (v95 + 40);
                if (!--v10)
                {
                  goto LABEL_82;
                }
              }

              __break(1u);
              goto LABEL_113;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        swift_once();
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_28;
  }
}