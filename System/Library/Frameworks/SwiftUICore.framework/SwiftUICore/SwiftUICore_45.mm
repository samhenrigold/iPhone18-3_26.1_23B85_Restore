void KeyframeTrackState.updatePlayback(_:time:initialValue:plan:)(uint64_t *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v112 = a2;
  v107 = a4;
  v108 = a5;
  v109 = a3;
  v111 = a1;
  v7 = a6[2];
  v101 = type metadata accessor for KeyframeTimeline(0, v7, a3, a4);
  v103 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v94 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v94 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v94 - v16;
  v104 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v94 - v22;
  v24 = a6[3];
  v25 = a6[4];
  v110 = v7;
  v105 = v24;
  v106 = v25;
  v26 = type metadata accessor for KeyframeTrackState.RepeatingState(0, v7, v24, v25);
  v102 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v94 - v27;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v94 - v32);
  v38 = MEMORY[0x1EEE9AC00](v34);
  v39 = (&v94 - v35);
  v40 = *v112;
  v44 = *(v41 + 32);
  v43 = v41 + 32;
  v42 = v44;
  v112 = *v111;
  if (v112 < 0)
  {
    v94 = v37;
    v95 = v36;
    v96 = v17;
    v97 = v14;
    v53 = v103;
    v99 = v42;
    v98 = v43;
    (v42)(v33, v113, a6, v38);
    v111 = a6;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v55 = *(v102 + 32);
        v55(v28, v33, v26);
        v116.n128_u64[0] = v40;
        KeyframeTrackState.RepeatingState.update(at:paused:)(v116.n128_f64, v112 & 1, v26);
        v55(v113, v28, v26);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v81 = v53;
        v83 = v109;
        v82 = v110;
        v84 = (*(v104 + 16))(v20, v109, v110);
        MEMORY[0x1EEE9AC00](v84);
        v86 = v105;
        v85 = v106;
        *(&v94 - 6) = v82;
        *(&v94 - 5) = v86;
        v88 = v107;
        v87 = v108;
        *(&v94 - 4) = v85;
        *(&v94 - 3) = v88;
        *(&v94 - 2) = v87;
        *(&v94 - 1) = v83;
        KeyframeTimeline.init<A>(initialValue:content:)(v20, partial apply for closure #1 in KeyframeTrackState.updatePlayback(_:time:initialValue:plan:), (&v94 - 8), v82, v86, v85, v11);
        v89 = v100;
        (*(v81 + 32))(v100, v11, v101);
        v90 = v40;
        if (v112)
        {
          v90 = 0;
        }

        v91 = 0x8000000000000000;
        if (v112)
        {
          v91 = 0;
        }

        v116.n128_u64[0] = v90;
        v116.n128_u64[1] = v91;
        v117 = 0;
        v92 = v94;
        KeyframeTrackState.RepeatingState.init(timeline:mode:)(v89, &v116, v82, v86, v85, v94);
        v93 = v111;
        swift_storeEnumTagMultiPayload();
        v99(v113, v92, v93);
      }
    }

    else
    {
      v63 = v33[1];
      v109 = *v33;
      v116.n128_u64[0] = v109;
      v116.n128_u64[1] = v63;
      v115 = v40;
      v64 = v110;
      v66 = v105;
      v65 = v106;
      v67 = type metadata accessor for KeyframeTrackState.EventDrivenState(0, v110, v105, v106);
      v68 = v23;
      KeyframeTrackState.EventDrivenState.value(at:)(&v115, v67, v69, v70, v23);
      v71 = v104;
      v72 = (*(v104 + 16))(v20, v68, v64);
      MEMORY[0x1EEE9AC00](v72);
      *(&v94 - 6) = v64;
      *(&v94 - 5) = v66;
      v74 = v107;
      v73 = v108;
      *(&v94 - 4) = v65;
      *(&v94 - 3) = v74;
      *(&v94 - 2) = v73;
      *(&v94 - 1) = v68;
      v75 = v96;
      KeyframeTimeline.init<A>(initialValue:content:)(v20, partial apply for closure #1 in KeyframeTrackState.updatePlayback(_:time:initialValue:plan:), (&v94 - 8), v64, v66, v65, v96);

      v76 = v97;
      (*(v53 + 32))(v97, v75, v101);
      v77 = v40;
      if (v112)
      {
        v77 = 0;
      }

      v78 = 0x8000000000000000;
      if (v112)
      {
        v78 = 0;
      }

      v116.n128_u64[0] = v77;
      v116.n128_u64[1] = v78;
      v117 = 0;
      v79 = v95;
      KeyframeTrackState.RepeatingState.init(timeline:mode:)(v76, &v116, v64, v66, v65, v95);
      v80 = v111;
      swift_storeEnumTagMultiPayload();
      v99(v113, v79, v80);
      (*(v71 + 8))(v68, v64);
    }
  }

  else
  {
    v45 = v113;
    (v42)(&v94 - v35, v113, a6, v38);
    v46 = swift_getEnumCaseMultiPayload();
    if (!v46)
    {
      v56 = v39[1];
      v116.n128_u64[0] = *v39;
      v116.n128_u64[1] = v56;
      v115 = v40;
      v57 = v112;
      v114 = v112;
      v58 = type metadata accessor for KeyframeTrackState.EventDrivenState(0, v110, v105, v106);

      KeyframeTrackState.EventDrivenState.update(at:trigger:initialValue:path:)(&v115, &v114, v109, v107, v108, v58);
      outlined consume of _SymbolEffect.Trigger(v57);
      v59 = v116.n128_u64[1];
      *v45 = v116.n128_u64[0];
      v45[1] = v59;
      goto LABEL_9;
    }

    if (v46 == 1)
    {
      v47 = v102;
      (*(v102 + 32))(v28, v39, v26);
      v48 = swift_allocBox();
      v50 = v49;
      v116.n128_u64[0] = v40;
      v51 = v112;

      v52 = KeyframeTrackState.RepeatingState.value(at:)(v116.n128_f64, v26, v50);
      (*(v47 + 8))(v28, v26, v52);
      *v45 = v51;
      v45[1] = v48;
LABEL_9:
      swift_storeEnumTagMultiPayload();
      return;
    }

    v60 = v110;
    v61 = swift_allocBox();
    (*(v104 + 16))(v62, v109, v60);
    *v45 = v112;
    v45[1] = v61;
    swift_storeEnumTagMultiPayload();
  }
}

void KeyframeTrackState.value(at:initialValue:)(double *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v28 = a2;
  v29 = a4;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a3[4];
  v11 = type metadata accessor for KeyframeTrackState.RepeatingState(0, v8, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  (*(v20 + 16))(v18, v5, a3, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v12 + 32))(v14, v18, v11);
      v31[0] = v19;
      v22 = KeyframeTrackState.RepeatingState.value(at:)(v31, v11, v29);
      (*(v12 + 8))(v14, v11, v22);
    }

    else
    {
      (*(*(v8 - 8) + 16))(v29, v28, v8);
    }
  }

  else
  {
    v23 = *(v18 + 1);
    v31[0] = *v18;
    v31[1] = v23;
    v30 = v19;
    v24 = type metadata accessor for KeyframeTrackState.EventDrivenState(0, v8, v9, v10);
    KeyframeTrackState.EventDrivenState.value(at:)(&v30, v24, v25, v26, v29);
  }
}

uint64_t closure #1 in AnimatorAttribute.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v9 = type metadata accessor for AnimatorAttribute(0, v16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-1] - v12;
  (*(v10 + 16))(&v16[-1] - v12, a1, v9, v11);
  *a7 = *AGGraphGetValue();
  return (*(v10 + 8))(v13, v9);
}

uint64_t KeyframeTrackState.isAnimating.getter(void *a1)
{
  v2 = v1;
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = type metadata accessor for KeyframeTrackState.RepeatingState(0, v4, v5, v6);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v2, a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 32))(v10, v14, v7);
      v17 = *&v10[*(v7 + 44) + 8] >> 63;
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18 = *(v14 + 1);

    type metadata accessor for KeyframeTrackState.EventDrivenState(0, v4, v5, v6);
    v17 = v18 >> 63;
  }

  return v17;
}

_BYTE *initializeWithCopy for KeyframeTrackState(_BYTE *__dst, void *a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 24 <= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v7 = *(a2 + v6);
  if (v7 >= 2 && v6 != 0)
  {
    v7 = *a2 + 2;
  }

  if (v7 == 1)
  {
    v10 = v5 + 8;
    (*(*(*(a3 + 16) - 8) + 16))(__dst);
    *(&__dst[v4 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = &__dst[v10 + 7] & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    *(v12 + 16) = *(v13 + 16);
    *v12 = v14;
    __dst[v6] = 1;

    return __dst;
  }

  if (!v7)
  {
    v9 = a2[1];
    *__dst = *a2;
    *(__dst + 1) = v9;
    __dst[v6] = 0;

    return __dst;
  }

  return memcpy(__dst, a2, v6 | 1);
}

uint64_t KeyframeTrackState.EventDrivenState.value(at:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a2 + 16);
  v9 = type metadata accessor for KeyframeTimeline(0, v8, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  if ((*(v5 + 8) & 0x8000000000000000) != 0)
  {
    v16 = *a1;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v18 = swift_projectBox();
    v19 = v18 + *(TupleTypeMetadata2 + 48);
    v20 = *v19;
    LOBYTE(TupleTypeMetadata2) = *(v19 + 8);
    (*(v10 + 16))(v12, v18, v9);
    if (TupleTypeMetadata2)
    {
      v21 = v16 - v20;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = KeyframeTimeline.value(time:)(v9, a5, v21);
    return (*(v10 + 8))(v12, v9, v22);
  }

  else
  {
    v13 = swift_projectBox();
    v14 = *(*(v8 - 8) + 16);

    return v14(a5, v13, v8);
  }
}

uint64_t closure #2 in AnimatorAttribute.updateValue()@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a7;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  type metadata accessor for AnimatorAttribute(0, &v18);
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a7;
  v17[7] = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v15 = type metadata accessor for KeyframeAnimator(0, &v18);
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #2 in AnimatorAttribute.updateValue(), v17, v15, a5, a8);
}

uint64_t partial apply for closure #1 in closure #2 in AnimatorAttribute.updateValue()(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v8[1] = v5;
  v9 = v3;
  v6 = type metadata accessor for KeyframeAnimator(0, v8);
  return (*(a1 + *(v6 + 68)))(v4);
}

uint64_t closure #1 in closure #1 in View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  PlaceholderContentView.init()();
  a2();
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v9 + 8);
  v15(v11, a7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v14, a7);
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.ForegroundColorProvider(__int128 *a1@<X0>, float (*a2)(__int128 *)@<X3>, uint64_t a3@<X8>)
{
  v7 = *a1;
  *a3 = a2(&v7);
  *(a3 + 4) = v4;
  *(a3 + 8) = v5;
  *(a3 + 12) = v6;
  *(a3 + 16) = 2143289344;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for TypeConformance<InvalidatableAttributeDescriptor>, &type metadata for InvalidatableAttributeDescriptor, &protocol witness table for InvalidatableAttributeDescriptor, type metadata accessor for TypeConformance);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>);
    }
  }
}

double static PlatformViewChild.willInvalidate(attribute:)()
{
  AGGraphGetAttributeInfo();

  PreferenceBridge.invalidate()();

  return result;
}

Swift::Void __swiftcall PreferenceBridge.invalidate()()
{
  v58 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v0[5] = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v0[6] = 0;

  swift_beginAccess();
  v47 = v0;
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v51 = v1 + 32;

    v3 = 0;
    v54 = *MEMORY[0x1E698D3F8];
    v48 = v1;
    v49 = v2;
    do
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_67;
      }

      v4 = *(v51 + 8 * v3);

      if (swift_weakLoadStrong())
      {
        v52 = v3;

        Strong = swift_weakLoadStrong();
        v55 = v4;
        if (Strong)
        {
          v6 = Strong;
          swift_beginAccess();
          v7 = *(v4 + 448);
          v8 = *(v7 + 16);
          if (v8)
          {
            v9 = v7 + 32;

            swift_beginAccess();
            swift_beginAccess();
            v10 = 0;
            v50 = v7 + 32;
            while (v10 < *(v7 + 16))
            {
              v11 = v9 + 24 * v10;
              v13 = *v11;
              v12 = *(v11 + 8);
              v14 = *(v11 + 16);
              v15 = swift_weakLoadStrong();
              if (v15)
              {
                v16 = *(v6 + 72);
                v17 = *(v16 + 16);
                if (!v17)
                {
                  goto LABEL_9;
                }

                v18 = v16 + 48;
                while (*(v18 - 16) != v13)
                {
                  v18 += 24;
                  if (!--v17)
                  {
                    goto LABEL_9;
                  }
                }

                v56 = v15;
                Attribute = AGWeakAttributeGetAttribute();
                if (Attribute == v54)
                {
LABEL_9:
                }

                else
                {
                  v53 = &v46;
                  LOBYTE(v57[0]) = 0;
                  MEMORY[0x1EEE9AC00](Attribute);
                  *(&v46 - 4) = v13;
                  *(&v46 - 3) = v12;
                  *(&v46 - 4) = v14;
                  *(&v46 - 1) = v57;
                  v21 = type metadata accessor for PreferenceCombiner(0, v13, v12, v20);
                  MEMORY[0x1EEE9AC00](v21);
                  *(&v46 - 4) = v22;
                  *(&v46 - 3) = partial apply for closure #1 in removeValue #1 <A>(key:) in PreferenceBridge.removeValue(_:for:isInvalidating:);
                  *(&v46 - 2) = (&v46 - 6);
                  AGGraphMutateAttribute();
                  if (v57[0])
                  {
                    swift_beginAccess();
                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      v23 = *(v56 + 208);
                      ObjectType = swift_getObjectType();
                      (*(*(v23 + 8) + 16))(ObjectType);

                      swift_unknownObjectRelease();
                    }

                    else
                    {
                    }

                    v9 = v50;
                  }

                  else
                  {

                    v9 = v50;
                  }
                }
              }

              if (++v10 == v8)
              {

                v4 = v55;
                v1 = v48;
                goto LABEL_28;
              }
            }

            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
          }

          v4 = v55;
LABEL_28:
          *(v4 + 448) = MEMORY[0x1E69E7CC0];

          swift_beginAccess();
          v25 = *(v4 + 56);
          swift_beginAccess();
          v26 = swift_weakLoadStrong();
          if (v26)
          {
            v27 = v26;
            swift_beginAccess();
            v28 = AGWeakAttributeGetAttribute();
            if (v28 != v54 && (LOBYTE(v57[0]) = 0, MEMORY[0x1EEE9AC00](v28), *(&v46 - 2) = v57, *(&v46 - 2) = v25, MEMORY[0x1EEE9AC00](v29), *(&v46 - 2) = partial apply for closure #1 in PreferenceBridge.removeHostValues(for:isInvalidating:), *(&v46 - 1) = v30, AGGraphMutateAttribute(), (v57[0] & 1) != 0) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
            {
              v31 = *(v27 + 208);
              v32 = swift_getObjectType();
              (*(*(v31 + 8) + 16))(v32);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          swift_beginAccess();
          v33 = *(v6 + 32);
          v34 = *(v33 + 16);
          v2 = v49;
          if (v34)
          {
            v35 = 0;
            v36 = v33 + 32;
            while (*(v36 + 8 * v35) != v4)
            {
              if (v34 == ++v35)
              {
                goto LABEL_40;
              }
            }

            swift_beginAccess();
            specialized Array.remove(at:)(v35);
            swift_endAccess();
          }

LABEL_40:
        }

        swift_weakAssign();
        swift_beginAccess();
        v3 = v52;
        if (*(v4 + 128) == 1)
        {
          swift_beginAccess();
          v37 = one-time initialization token for enabledCategories;
          v38 = *(v4 + 32);
          if (v37 != -1)
          {
            swift_once();
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
          {
            goto LABEL_68;
          }

          if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 17475;
            v57[0] = v38;
            type metadata accessor for AGSubgraphRef(0);
            AGGraphAddTraceEvent();
          }

          closure #1 in GraphHost.uninstantiate(immediately:)(v4, 1);
          $defer #1 <A>() in static CustomEventTrace.uninstantiate<A>(root:closure:)(v38);
        }

        swift_weakAssign();
        if (swift_weakLoadStrong())
        {
          PreferenceBridge.addChild(_:)(v4);
        }

        swift_beginAccess();
        LOBYTE(v39) = *(v4 + 169);
        if (v39)
        {
          v40 = 1;
        }

        else if (swift_weakLoadStrong() && (swift_beginAccess(), v41 = swift_weakLoadStrong(), , v41))
        {
          swift_beginAccess();
          v39 = *(v41 + 169);

          v40 = (v39 >> 1) & 1;
        }

        else
        {
          LOBYTE(v39) = 0;
          v40 = 0;
        }

        v42 = v55;
        swift_beginAccess();
        if (v40 != *(v42 + 40))
        {
          v42 = v55;
          if (v40)
          {
            v43 = *(v55 + 32);
            AGSubgraphApply();

            AGSubgraphRemoveChild();
          }

          else
          {
            AGSubgraphAddChild();
            v44 = *(v42 + 32);
            AGSubgraphApply();
          }

          *(v42 + 40) = v40;
        }

        if ((((v39 & 2) != 0) ^ *(v42 + 41)))
        {
          *(v42 + 41) = (v39 & 2) >> 1;
          ViewGraph.isHiddenForReuseDidChange()();
        }
      }

      ++v3;
    }

    while (v3 != v2);
  }

  v45 = v47;
  swift_beginAccess();
  swift_weakAssign();
  *(v45 + 24) = 0;
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
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

uint64_t closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)(uint64_t a1, unint64_t a2)
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, 255, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-v4];
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    specialized Dictionary.removeValue(forKey:)(v5, a2);
    swift_endAccess();
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {

      return _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v5, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), MEMORY[0x1E69E6720]);
    }

    else
    {
      outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v5, v10);
      specialized ObservationGraphMutation.cancel()(*(v10 + 2), *(v10 + 3), v12);

      return outlined destroy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v10);
    }
  }

  return result;
}

uint64_t PlatformViewChild.reset()(uint64_t a1)
{
  v3 = *(a1 + 76);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v1 + v3, v5);
  (*(*(AssociatedTypeWitness - 8) + 56))(v1 + v3, 1, 1, AssociatedTypeWitness);
  v6 = *(a1 + 80);
  result = swift_unknownObjectRelease();
  *(v1 + v6) = 0;
  return result;
}

uint64_t PreferenceBridge.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    PreferenceBridge.invalidate()();
  }

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<CalendarKey>, &type metadata for CalendarKey, &protocol witness table for CalendarKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v20);
    outlined init with take of AnyTrackedValue(v20, v21);
    v12 = v22;
    v13 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v14 = v13[1];
    v15 = type metadata accessor for Calendar();
    v14(v15, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<CalendarKey>>(0);
    v22 = v16;
    v23 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    v18 = type metadata accessor for Calendar();
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2, v18);
    specialized Dictionary.subscript.setter(v21, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<CalendarKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<CalendarKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<CalendarKey>, &type metadata for CalendarKey, &protocol witness table for CalendarKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<CalendarKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<CalendarKey>>);
    }
  }
}

uint64_t FormatStyle.calendar(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = *(v8 + 16);
  v11(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2, v9);
  type metadata accessor for CalendarDependentFormatStyle();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v16, v19);
    v12 = v20;
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v14 = *(v13 + 16);
    *(&v17 + 1) = v12;
    v18 = v13;
    __swift_allocate_boxed_opaque_existential_1(&v16);
    v14(a1, v12, v13);
    swift_dynamicCast();
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    outlined destroy of CalendarDependentFormatStyle?(&v16);
    return (v11)(a3, v4, a2);
  }
}

uint64_t protocol witness for CalendarDependentFormatStyle.withCalendar(_:) in conformance Date.FormatStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Calendar();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 - 8) + 16))(a4, v4, a2, v11);
  (*(v10 + 16))(v13, a1, v9);
  return a3(v13);
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TimeZoneKey>, &type metadata for TimeZoneKey, &protocol witness table for TimeZoneKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v20);
    outlined init with take of AnyTrackedValue(v20, v21);
    v12 = v22;
    v13 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v14 = v13[1];
    v15 = type metadata accessor for TimeZone();
    v14(v15, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TimeZoneKey>>(0);
    v22 = v16;
    v23 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    v18 = type metadata accessor for TimeZone();
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2, v18);
    specialized Dictionary.subscript.setter(v21, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TimeZoneKey>, &type metadata for TimeZoneKey, &protocol witness table for TimeZoneKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TimeZoneV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, v12);
  if (v5)
  {
    v6 = *(*v5 + 248);
    v7 = v5;
    v8 = type metadata accessor for TimeZone();
    return (*(*(v8 - 8) + 16))(a2, &v7[v6], v8);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for TimeZone();
    v11 = __swift_project_value_buffer(v10, static TimeZoneKey.defaultValue);
    return (*(*(v10 - 8) + 16))(a2, v11, v10);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TimeZoneKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TimeZoneKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TimeZoneKey>, &type metadata for TimeZoneKey, &protocol witness table for TimeZoneKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TimeZoneKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TimeZoneKey>>);
    }
  }
}

uint64_t FormatStyle.timeZone(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = *(v8 + 16);
  v11(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2, v9);
  type metadata accessor for TimeZoneDependentFormatStyle();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v16, v19);
    v12 = v20;
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v14 = *(v13 + 16);
    *(&v17 + 1) = v12;
    v18 = v13;
    __swift_allocate_boxed_opaque_existential_1(&v16);
    v14(a1, v12, v13);
    swift_dynamicCast();
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    outlined destroy of TimeZoneDependentFormatStyle?(&v16);
    return (v11)(a3, v4, a2);
  }
}

uint64_t FormatStyle.exactSizeVariant(_:)(char *a1, uint64_t *a2, uint64_t a3)
{
  v33 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = v32 - v7;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_getTupleTypeMetadata2();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v32 - v15;
  v17 = *a2;
  v18 = *(v9 + 16);
  v18(v12, v3, a3, v14);
  type metadata accessor for SizeAdaptiveFormatStyle();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v35, v39);
    v19 = v40;
    v20 = v41;
    v21 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v32[1] = v32;
    v34 = v17;
    v22 = *(v19 - 8);
    v23 = MEMORY[0x1EEE9AC00](v21);
    v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v26(v25, &v34, v19, v20, v23);
    *(&v36 + 1) = v19;
    v37 = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v22 + 32))(boxed_opaque_existential_1, v25, v19);
    v38 = v27 & 1;
    type metadata accessor for (style: SizeAdaptiveFormatStyle, exact: Bool)(0);
    swift_dynamicCast();
    v29 = v8[*(TupleTypeMetadata2 + 48)];
    v30 = *(v9 + 32);
    v30(v16, v8, a3);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    outlined destroy of SizeAdaptiveFormatStyle?(&v35, &lazy cache variable for type metadata for SizeAdaptiveFormatStyle?, type metadata accessor for SizeAdaptiveFormatStyle);
    (v18)(v16, v3, a3);
    v29 = v17 == 0;
    v30 = *(v9 + 32);
  }

  v30(v33, v16, a3);
  return v29;
}

unint64_t type metadata accessor for SizeAdaptiveFormatStyle()
{
  result = lazy cache variable for type metadata for SizeAdaptiveFormatStyle;
  if (!lazy cache variable for type metadata for SizeAdaptiveFormatStyle)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SizeAdaptiveFormatStyle);
  }

  return result;
}

uint64_t protocol witness for AttributedStringConvertible.attributedString.getter in conformance String()
{
  v0 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v0 - 8);

  AttributeContainer.init()();
  return AttributedString.init(_:attributes:)();
}

uint64_t FormatStyleBox.isEqual(to:)(uint64_t a1)
{
  if (swift_dynamicCastClass())
  {
    swift_getAssociatedTypeWitness();

    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v1 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t static AnyTransition.identity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TransitionBox<IdentityTransition>(0, a2, a3, a4);

  return swift_allocObject();
}

uint64_t closure #1 in static StrokeBorderShapeView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v11 = type metadata accessor for StrokeBorderShapeView(0, &v29);
  v12 = *(v11 + 68);
  v27 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for _StrokedShape(255, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), v15);
  swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>, v16);
  v29 = v16;
  v30 = a3;
  v31 = v17;
  v32 = a6;
  v18 = type metadata accessor for _ShapeView(255, &v29);
  v20 = type metadata accessor for _BackgroundModifier(255, a4, a7, v19);
  v28 = type metadata accessor for ModifiedContent(0, v18, v20, v21);
  v22 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v12, partial apply for closure #1 in static PointerOffset.of(_:), v26, v28, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  return v29;
}

void storeEnumTagSinglePayload for Canvas(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 14;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFF)
      {
        v13 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v13 = a2 & 0x7FFFFFFF;
          v13[1] = 0;
        }

        else
        {
          *v13 = a2 - 1;
        }
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

void *static SymbolVariants.none.getter@<X0>(void *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a5@<X8>)
{
  if (*result != -1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a5;
    result = swift_once();
    a2 = v6;
    a5 = v8;
    a3 = v7;
  }

  v5 = *a3;
  *a5 = *a2;
  a5[1] = v5;
  return result;
}

uint64_t storeEnumTagSinglePayload for SymbolVariants(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolVariants(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

void key path getter for EnvironmentValues.symbolVariants : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = &v8;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014SymbolVariantsI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v3, &v8);

    v5 = &v9;
  }

  else
  {
    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
    if (v6)
    {
      v4 = (v6 + 9);
      v5 = v6 + 73;
    }

    else
    {
      v4 = &static SymbolVariantsKey.defaultValue;
      v5 = &static SymbolVariantsKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }
  }

  v7 = *v5;
  *a2 = *v4;
  a2[1] = v7;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014SymbolVariantsF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2B5(uint64_t *a1, __int16 a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != a2)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 73);
  if (HIBYTE(a2) != 3)
  {
    if (HIBYTE(a2) == v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v5 != 3)
  {
LABEL_7:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolVariantsKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }
}

double key path setter for EnvironmentValues.symbolVariants : EnvironmentValues(__int16 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014SymbolVariantsF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014SymbolVariantsK033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Ttg5(v3, *a2);
  }

  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v248 = *MEMORY[0x1E69E9840];
  v219 = type metadata accessor for OSSignpostID();
  v215 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v13 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v214 = (&v195 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v217 = &v195 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v195 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v218 = &v195 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v209 = &v195 - v24;
  if (*(a4 + 64))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 53) = 1;
  }

  else if (*(a1 + 53) != 1)
  {
    goto LABEL_131;
  }

  v28 = *(a1 + 1);
  v245 = *a1;
  v246 = v28;
  *v247 = *(a1 + 2);
  *&v247[13] = *(a1 + 45);
  ResolvedShadowStyle.animatableData.getter(&v225);
  v29 = v225;
  v30 = v226;
  v31 = v227;
  v32 = v228;
  v33 = v229;
  if (*(a4 + 56))
  {
    goto LABEL_130;
  }

  LODWORD(v6) = HIDWORD(v225);
  LODWORD(v5) = v225;
  v34 = v226;
  v35 = v229;
  v37 = *(a4 + 40);
  v36 = *(a4 + 48);
  v38 = *(a4 + 32);
  LODWORD(v4) = *(a4 + 16);
  v39 = *(a4 + 20);
  LODWORD(v7) = *(a4 + 24);
  if (*&v225 == *&v4 && *(&v225 + 1) == v39 && *&v226 == *&v7 && *(&v226 + 1) == *(a4 + 28) && v38 == v227 && v37 == *&v228 && v36 == v229)
  {
    goto LABEL_130;
  }

  LODWORD(v206) = *(a4 + 28);
  v207 = v38;
  v210 = v37;
  v211 = v228;
  v212 = v36;
  v216 = v227;
  LODWORD(v220) = HIDWORD(v226);
  v203 = v20;
  v204 = a2;
  v213 = v13;
  v198 = v229;
  v199 = v228;
  v200 = v227;
  v201 = v226;
  v202 = v225;
  AGGraphClearUpdate();
  v40 = *(a4 + 16);
  v245 = *a4;
  v246 = v40;
  v41 = *(a4 + 48);
  *v247 = *(a4 + 32);
  *&v247[16] = v41;
  v208 = a4;
  *&v247[28] = *(a4 + 60);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v245, &v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
  v42 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v43 = Transaction.effectiveAnimation.getter(v42);
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v204;
    if (!v204)
    {

      a4 = v208;
      goto LABEL_129;
    }
  }

  v45 = *&v247[32];
  v46 = *&v5 - *&v4;
  v47 = *&v6 - v39;
  v48 = *&v34 - *&v7;
  v49 = *&v220 - *&v206;
  v50 = v216 - v207;
  v51 = *&v211 - v210;
  v52 = v35 - v212;
  v27 = *AGGraphGetValue();
  v205 = a1;
  v197 = a3;
  v195 = v44;
  v196 = v42;
  if (!v45)
  {
    v230 = v46;
    v231 = v47;
    v232 = v48;
    v233 = v49;
    v234 = v50;
    v235 = v51;
    v236 = v52;
    *&v237 = &type metadata for _ShadowEffect._Resolved;
    type metadata accessor for _ShadowEffect._Resolved.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v65 = swift_dynamicCast();
    if (v65)
    {
      v66 = v241;
    }

    else
    {
      v66 = 0;
    }

    if (v65)
    {
      v67 = *(&v241 + 1);
    }

    else
    {
      v67 = 0;
    }

    v69 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVySfAVySfAVyS2fGGGAVy12CoreGraphics7CGFloatVAVyA0_A0_GGG_Tt4B5Tm(v68, &v230, v42, v66, v67, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    LODWORD(v67) = CurrentAttribute;
    LODWORD(v71) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v72) = 0;
    }

    else
    {
      LODWORD(v72) = CurrentAttribute;
    }

    (*(*v44 + 96))(&v237);
    v73 = *(&v237 + 1);
    v74 = *&v237;
    v75 = *(&v238 + 1);
    v76 = v238;
    v77 = v239;
    v223 = 0x7FF8000000000000;
    v224 = 0x7FF8000000000000;
    v221 = NAN;
    v222 = 0x3FF0000000000000;
    v241 = v237;
    v242 = v238;
    v243 = v239;
    LODWORD(v220) = v240;
    LOBYTE(v244) = v240;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v241, &v224, &v223, &v222, &v221);
    v5 = v223;
    v4 = v224;
    v7 = v221;
    v6 = v222;
    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_199;
    }

    goto LABEL_41;
  }

  v230 = v46;
  v231 = v47;
  v232 = v48;
  v233 = v49;
  v234 = v50;
  v235 = v51;
  v236 = v52;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v245, &v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v241) = 0;
  v204 = v45;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v44, &v230, v42, a3, v27);
  v53 = AGGraphGetCurrentAttribute();
  v54 = v53;
  LODWORD(v220) = *MEMORY[0x1E698D3F8];
  if (v53 == v220)
  {
    v55 = 0;
  }

  else
  {
    v55 = v53;
  }

  LODWORD(v216) = v55;
  (*(*v44 + 96))(&v237);
  v56 = v237;
  v57 = v238;
  v58 = v239;
  v59 = v240;
  v223 = 0x7FF8000000000000;
  v224 = 0x7FF8000000000000;
  v221 = NAN;
  v222 = 0x3FF0000000000000;
  v241 = v237;
  v242 = v238;
  v243 = v239;
  LOBYTE(v244) = v240;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v241, &v224, &v223, &v222, &v221);
  v5 = v223;
  v4 = v224;
  v7 = v221;
  v6 = v222;
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      LODWORD(v214) = v59;
      v60 = static CustomEventTrace.recorder;
      v61 = v220;
      if (static CustomEventTrace.recorder)
      {
        v213 = *(static CustomEventTrace.recorder + 24);
        *(v213 + 4) = 1602;
        v62 = *(v60 + 16);
        LODWORD(v241) = LODWORD(v216);
        BYTE4(v241) = v54 == v61;
        *(&v241 + 1) = &type metadata for _ShadowEffect._Resolved;
        *&v242 = v4;
        *(&v242 + 1) = v5;
        v243 = v6;
        v244 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v216 = v63;

        v64 = v62;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v214);

        goto LABEL_50;
      }

      v86 = *(&v56 + 1);
      v85 = v56;
      v88 = *(&v57 + 1);
      v87 = v57;
      v89 = v58;
      v90 = v214;
    }

    else
    {
      v86 = *(&v56 + 1);
      v85 = v56;
      v88 = *(&v57 + 1);
      v87 = v57;
      v89 = v58;
      v90 = v59;
    }

    outlined consume of Animation.Function(v85, v86, v87, v88, v89, v90);
LABEL_50:
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v245, &v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState == -1)
    {
      goto LABEL_51;
    }

    goto LABEL_196;
  }

  __break(1u);
LABEL_196:
  swift_once();
LABEL_51:
  v96 = *(&static Signpost.animationState + 1);
  v71 = static Signpost.animationState;
  v97 = word_1ED5283E8;
  v98 = HIBYTE(word_1ED5283E8);
  v99 = byte_1ED5283EA;
  v100 = static os_signpost_type_t.event.getter();
  v241 = __PAIR128__(v96, v71);
  LOBYTE(v242) = v97;
  BYTE1(v242) = v98;
  BYTE2(v242) = v99;
  if (Signpost.isEnabled.getter())
  {
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v245, &v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    LODWORD(v216) = v100;
    v101 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_18DDAF080;
    v103 = AGGraphGetCurrentAttribute();
    v104 = v220;
    if (v103 == v220)
    {
      __break(1u);
    }

    else
    {
      v105 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v107 = MEMORY[0x1E69E6870];
      *(v102 + 56) = MEMORY[0x1E69E6810];
      *(v102 + 64) = v107;
      *(v102 + 32) = Counter;
      v108 = AGGraphGetCurrentAttribute();
      if (v108 != v104)
      {
        a4 = v102;
        v109 = MEMORY[0x1E69E76D0];
        *(v102 + 96) = MEMORY[0x1E69E7668];
        *(v102 + 104) = v109;
        *(v102 + 72) = v108;
        *(v102 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v102 + 144) = v110;
        *(v102 + 112) = 0x65766C6F7365525FLL;
        *(v102 + 120) = 0xE900000000000064;
        if (v98)
        {
          LOBYTE(v221) = LOBYTE(v216);
          v223 = v101;
          v224 = &dword_18D018000;
          *&v241 = v71;
          *(&v241 + 1) = v96;
          LOBYTE(v242) = v97;
          *&v237 = "Animation: (%p) [%d] %{public}@ updated";
          *(&v237 + 1) = 39;
          LOBYTE(v238) = 2;
          v222 = v102;
          v111 = v203;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v221, &v224, &v223, &v241, v203, &v237, &v222);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          (*(v215 + 8))(v111, v219);
        }

        else
        {
          v74 = v71;
          if (v71 == 20)
          {
            v112 = 3;
          }

          else
          {
            v112 = 4;
          }

          LODWORD(v71) = bswap32(v71) | (4 * WORD1(v71));
          LODWORD(v220) = LOBYTE(v216);
          *&v113 = v215 + 16;
          v206 = *(v215 + 16);
          v114 = v206(v217, v203, v219);
          v115 = 0;
          LOBYTE(v237) = 1;
          v216 = *&v112;
          v207 = v113;
          *&v212 = 16 * v112;
          v213 = *&v113 - 8;
          v210 = *&v74;
          v211 = v102 + 32;
          do
          {
            v214 = &v195;
            MEMORY[0x1EEE9AC00](v114);
            v118 = &v195 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
            a1 = v118 + 8;
            v119 = v216;
            v120 = v118 + 8;
            do
            {
              *(v120 - 1) = 0;
              *v120 = 0;
              v120 += 16;
              --*&v119;
            }

            while (v119 != 0.0);
            v121 = (v211 + 40 * v115);
            v122 = v216;
            while (1)
            {
              v123 = *(a4 + 16);
              if (v115 == v123)
              {
                break;
              }

              if (v115 >= v123)
              {
                goto LABEL_188;
              }

              ++v115;
              outlined init with copy of AnyTrackedValue(v121, &v241);
              v74 = a4;
              v124 = *(&v242 + 1);
              v125 = v243;
              __swift_project_boxed_opaque_existential_1(&v241, *(&v242 + 1));
              v126 = v125;
              a4 = v74;
              *(a1 - 1) = CVarArg.kdebugValue(_:)(v71 | v220, v124, v126);
              *a1 = v127 & 1;
              a1 += 2;
              v116 = __swift_destroy_boxed_opaque_existential_1(&v241);
              v121 += 5;
              --*&v122;
              if (v122 == 0.0)
              {
                goto LABEL_71;
              }
            }

            LOBYTE(v237) = 0;
LABEL_71:
            *&v74 = v210;
            if (*&v210 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v118[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v118[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v118[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v74 != 20 && v118[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v128 = *v213;
            v129 = v217;
            v130 = v219;
            (*v213)(v217, v219);
            v131 = __swift_project_value_buffer(v130, static OSSignpostID.continuation);
            v114 = v206(v129, v131, v130);
          }

          while ((v237 & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          v132 = v219;
          v128(v217, v219);
          v128(v203, v132);
        }

        goto LABEL_87;
      }
    }

    __break(1u);
    goto LABEL_204;
  }

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
LABEL_87:
  a4 = v208;
  for (a3 = v197; ; a3 = v197)
  {
    specialized AnimatorState.addListeners(transaction:)(v196);

    a1 = v205;
LABEL_129:
    v30 = v201;
    v29 = v202;
    v32 = v199;
    v31 = v200;
    v33 = v198;
LABEL_130:
    *(a4 + 16) = v29;
    *(a4 + 24) = v30;
    *(a4 + 32) = v31;
    *(a4 + 40) = v32;
    *(a4 + 48) = v33;
    *(a4 + 56) = 0;
LABEL_131:
    v74 = *(a4 + 64);
    if (*&v74 == 0.0)
    {
      return;
    }

    v163 = *(a1 + 1);
    v245 = *a1;
    v246 = v163;
    *v247 = *(a1 + 2);
    *&v247[13] = *(a1 + 45);

    ResolvedShadowStyle.animatableData.getter(&v241);
    LOBYTE(v245) = 0;
    v164 = specialized AnimatorState.update(_:at:environment:)(&v241, a3, v27);
    v116 = AGGraphGetCurrentAttribute();
    LODWORD(v71) = *MEMORY[0x1E698D3F8];
    if (v116 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v115) = 0;
    }

    else
    {
      LODWORD(v115) = v116;
    }

    v121 = &type metadata instantiation cache for TupleTypeDescription;
    if (v164)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_190;
      }

      goto LABEL_137;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_192;
    }

LABEL_150:
    v175 = v121[77];
    if (*(v175 + 16) >= 0x43uLL)
    {
      if (*(v175 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v245) = v115;
        BYTE4(v245) = v116 == v71;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_185;
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_142:
    v77 = *(&static Signpost.animationState + 1);
    v72 = static Signpost.animationState;
    v69 = word_1ED5283E8;
    v76 = HIBYTE(word_1ED5283E8);
    v167 = byte_1ED5283EA;
    v168 = static os_signpost_type_t.end.getter();
    v245 = __PAIR128__(v77, v72);
    LOBYTE(v246) = v69;
    BYTE1(v246) = v76;
    BYTE2(v246) = v167;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_184;
    }

    LODWORD(v220) = v168;
    v169 = one-time initialization token for _signpostLog;
    LODWORD(v67) = LODWORD(v207);

    if (v169 != -1)
    {
      swift_once();
    }

    v73 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v71)
    {
      break;
    }

    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    swift_once();
LABEL_41:
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      v78 = *(static CustomEventTrace.enabledCategories + 98);
      v204 = v69;
      if (v78 == 1)
      {
        v79 = v72;
        v80 = v77;
        v81 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v82 = *(v81 + 16);
          LODWORD(v241) = v79;
          BYTE4(v241) = v67 == v71;
          *(&v241 + 1) = &type metadata for _ShadowEffect._Resolved;
          *&v242 = v4;
          *(&v242 + 1) = v5;
          v243 = v6;
          v244 = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v217 = v83;

          v84 = v82;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v74, v73, v76, v75, v80, v220);

          goto LABEL_90;
        }

        v91 = v74;
        v92 = v73;
        v93 = v76;
        v94 = v75;
        v95 = v80;
      }

      else
      {
        v91 = v74;
        v92 = v73;
        v93 = v76;
        v94 = v75;
        v95 = v77;
      }

      outlined consume of Animation.Function(v91, v92, v93, v94, v95, v220);
LABEL_90:
      v133 = one-time initialization token for animationState;

      if (v133 == -1)
      {
        goto LABEL_91;
      }

      goto LABEL_201;
    }

    __break(1u);
LABEL_201:
    swift_once();
LABEL_91:
    v98 = *(&static Signpost.animationState + 1);
    v96 = static Signpost.animationState;
    LOBYTE(v104) = word_1ED5283E8;
    LOBYTE(v102) = HIBYTE(word_1ED5283E8);
    v134 = byte_1ED5283EA;
    v135 = static os_signpost_type_t.begin.getter();
    v241 = __PAIR128__(v98, v96);
    LOBYTE(v242) = v104;
    BYTE1(v242) = v102;
    BYTE2(v242) = v134;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v220) = v135;
      v136 = one-time initialization token for _signpostLog;

      if (v136 != -1)
      {
LABEL_204:
        swift_once();
      }

      v137 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v71)
      {
        __break(1u);
LABEL_206:
        __break(1u);
      }

      v139 = AGGraphGetAttributeGraph();
      *&v74 = COERCE_DOUBLE(AGGraphGetCounter());

      v140 = MEMORY[0x1E69E6870];
      *(v138 + 56) = MEMORY[0x1E69E6810];
      *(v138 + 64) = v140;
      *(v138 + 32) = *&v74;
      v141 = AGGraphGetCurrentAttribute();
      if (v141 == v71)
      {
        goto LABEL_206;
      }

      v142 = MEMORY[0x1E69E76D0];
      *(v138 + 96) = MEMORY[0x1E69E7668];
      *(v138 + 104) = v142;
      *(v138 + 72) = v141;
      *(v138 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v138 + 144) = v143;
      *(v138 + 112) = 0x65766C6F7365525FLL;
      *(v138 + 120) = 0xE900000000000064;
      if (v102)
      {
        LOBYTE(v221) = v220;
        v223 = v137;
        v224 = &dword_18D018000;
        *&v241 = v96;
        *(&v241 + 1) = v98;
        LOBYTE(v242) = v104;
        *&v237 = "Animation: (%p) [%d] %{public}@ started";
        *(&v237 + 1) = 39;
        LOBYTE(v238) = 2;
        v222 = v138;
        v144 = v214;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v221, &v224, &v223, &v241, v214, &v237, &v222);
        v145 = v204;

        (*(v215 + 8))(v144, v219);
      }

      else
      {
        *&v146 = v96;
        if (v96 == 20)
        {
          v147 = 3;
        }

        else
        {
          v147 = 4;
        }

        LODWORD(v71) = bswap32(v96) | (4 * WORD1(v96));
        v148 = v220;
        v149 = (v215 + 16);
        v203 = *(v215 + 16);
        v150 = v203(v213, v214, v219);
        v115 = 0;
        LOBYTE(v237) = 1;
        v217 = v147;
        v206 = v149;
        v207 = v146;
        v211 = 16 * v147;
        *&v212 = v149 - 8;
        v220 = v138;
        *&v210 = v138 + 32;
        do
        {
          v216 = COERCE_DOUBLE(&v195);
          MEMORY[0x1EEE9AC00](v150);
          a1 = (&v195 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0));
          v152 = a1 + 1;
          v153 = v217;
          v154 = a1 + 1;
          do
          {
            *(v154 - 1) = 0;
            *v154 = 0;
            v154 += 16;
            --v153;
          }

          while (v153);
          v121 = (*&v210 + 40 * v115);
          a4 = v217;
          while (1)
          {
            v155 = *(v220 + 16);
            if (v115 == v155)
            {
              break;
            }

            if (v115 >= v155)
            {
              goto LABEL_189;
            }

            ++v115;
            outlined init with copy of AnyTrackedValue(v121, &v241);
            v156 = *(&v242 + 1);
            v74 = v243;
            __swift_project_boxed_opaque_existential_1(&v241, *(&v242 + 1));
            *(v152 - 1) = CVarArg.kdebugValue(_:)(v71 | v148, v156, v74);
            *v152 = v157 & 1;
            v152 += 16;
            v116 = __swift_destroy_boxed_opaque_existential_1(&v241);
            v121 += 5;
            --a4;
            if (*&a4 == 0.0)
            {
              goto LABEL_110;
            }
          }

          LOBYTE(v237) = 0;
LABEL_110:
          v158 = v207;
          if (*&v207 == 20)
          {
            v74 = v213;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v74 = v213;
          }

          if (*(a1 + 8) == 1)
          {
            kdebug_trace_string();
          }

          if (*(a1 + 24) == 1)
          {
            kdebug_trace_string();
          }

          if (*(a1 + 40) == 1)
          {
            kdebug_trace_string();
          }

          if (*&v158 != 20 && *(a1 + 56) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v159 = **&v212;
          v160 = v219;
          (**&v212)(v74, v219);
          v161 = __swift_project_value_buffer(v160, static OSSignpostID.continuation);
          v150 = v203(v74, v161, v160);
        }

        while ((v237 & 1) != 0);
        v145 = v204;

        v162 = v219;
        v159(v74, v219);
        v159(v214, v162);
      }
    }

    else
    {
      v145 = v204;
    }

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
    a4 = v208;
    *(v208 + 64) = v145;
  }

  v67 = AGGraphGetAttributeGraph();
  *&v74 = COERCE_DOUBLE(AGGraphGetCounter());

  v170 = MEMORY[0x1E69E6870];
  *(v75 + 56) = MEMORY[0x1E69E6810];
  *(v75 + 64) = v170;
  *(v75 + 32) = *&v74;
  v171 = AGGraphGetCurrentAttribute();
  if (v171 == v71)
  {
    goto LABEL_198;
  }

  v172 = MEMORY[0x1E69E76D0];
  *(v75 + 96) = MEMORY[0x1E69E7668];
  *(v75 + 104) = v172;
  *(v75 + 72) = v171;
  *(v75 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v75 + 144) = v173;
  *(v75 + 112) = 0x65766C6F7365525FLL;
  *(v75 + 120) = 0xE900000000000064;
  if (v76)
  {
    LOBYTE(v221) = v220;
    v223 = v73;
    v224 = &dword_18D018000;
    *&v245 = v72;
    *(&v245 + 1) = v77;
    LOBYTE(v246) = v69;
    *&v237 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v237 + 1) = 37;
    LOBYTE(v238) = 2;
    v222 = v75;
    v174 = v209;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v221, &v224, &v223, &v245, v209, &v237, &v222);

    (*(v215 + 8))(v174, v219);
    goto LABEL_183;
  }

  *&v176 = v72;
  if (v72 == 20)
  {
    v177 = 3;
  }

  else
  {
    v177 = 4;
  }

  LODWORD(v71) = bswap32(v72) | (4 * WORD1(v72));
  a4 = v220;
  v178 = v215 + 16;
  v210 = *(v215 + 16);
  v179 = (*&v210)(v218, v209, v219);
  v115 = 0;
  LOBYTE(v237) = 1;
  v217 = v177;
  v215 = v178;
  v213 = 16 * v177;
  v214 = (v178 - 8);
  v220 = v75;
  *&v211 = v176;
  *&v212 = v75 + 32;
  do
  {
    v216 = COERCE_DOUBLE(&v195);
    MEMORY[0x1EEE9AC00](v179);
    a1 = (&v195 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0));
    v181 = a1 + 1;
    v182 = v217;
    v183 = a1 + 1;
    do
    {
      *(v183 - 1) = 0;
      *v183 = 0;
      v183 += 16;
      --v182;
    }

    while (v182);
    v121 = (*&v212 + 40 * v115);
    v184 = v217;
    while (1)
    {
      v185 = *(v220 + 16);
      if (v115 == v185)
      {
        break;
      }

      if (v115 >= v185)
      {
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        v193 = v116;
        swift_once();
        v116 = v193;
LABEL_137:
        v165 = v121[77];
        if (*(v165 + 16) >= 0x43uLL)
        {
          if (*(v165 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v245) = v115;
            BYTE4(v245) = v116 == v71;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v207 = *&v74;
          v208 = a4;
          v205 = a1;
          v166 = one-time initialization token for animationState;

          if (v166 != -1)
          {
            goto LABEL_194;
          }

          goto LABEL_142;
        }

        __break(1u);
LABEL_192:
        v194 = v116;
        swift_once();
        v116 = v194;
        goto LABEL_150;
      }

      ++v115;
      outlined init with copy of AnyTrackedValue(v121, &v245);
      v186 = *(&v246 + 1);
      v74 = *v247;
      __swift_project_boxed_opaque_existential_1(&v245, *(&v246 + 1));
      *(v181 - 1) = CVarArg.kdebugValue(_:)(v71 | a4, v186, v74);
      *v181 = v187 & 1;
      v181 += 16;
      v116 = __swift_destroy_boxed_opaque_existential_1(&v245);
      v121 += 5;
      if (!--v184)
      {
        goto LABEL_168;
      }
    }

    LOBYTE(v237) = 0;
LABEL_168:
    v188 = v211;
    if (v211 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a1 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v188 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v189 = *v214;
    v74 = v218;
    v190 = v219;
    (*v214)(v218, v219);
    v191 = __swift_project_value_buffer(v190, static OSSignpostID.continuation);
    v179 = (*&v210)(v74, v191, v190);
  }

  while ((v237 & 1) != 0);

  v192 = v219;
  v189(v218, v219);
  v189(v209, v192);
LABEL_183:

LABEL_184:
  specialized AnimatorState.removeListeners()();

  *(v208 + 64) = 0;
  a1 = v205;
LABEL_185:
  v245 = v241;
  v246 = v242;
  *v247 = v243;
  _ShadowEffect._Resolved.animatableData.setter(&v245);

  *(a1 + 53) = 1;
}

{
  v250 = *MEMORY[0x1E69E9840];
  v219 = type metadata accessor for OSSignpostID();
  v215 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v13 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v192 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v217 = &v192 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v192 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v218 = &v192 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v208 = &v192 - v25;
  if (*(a4 + 64))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 53) = 1;
  }

  else if (*(a1 + 53) != 1)
  {
    goto LABEL_130;
  }

  ResolvedShadowStyle.animatableData.getter(&v225);
  v29 = v225;
  v30 = v226;
  v31 = v227;
  v33 = v228;
  v32 = v229;
  v34 = v230;
  if (*(a4 + 56))
  {
    goto LABEL_129;
  }

  v7 = v28;
  LODWORD(v6) = HIDWORD(v227);
  v35 = *&v227;
  v37 = *(a4 + 40);
  v36 = *(a4 + 48);
  v38 = *(a4 + 16);
  LODWORD(v4) = *(a4 + 20);
  v39 = *(a4 + 24);
  LODWORD(v5) = *(a4 + 28);
  if (v225 != v38 || v226 != *&v4 || *&v227 != v39 || *(&v227 + 1) != *&v5 || v228 != *(a4 + 32) || v229 != v37 || v36 != v230)
  {
    v212 = *(a4 + 32);
    *&v213 = v37;
    v214 = v36;
    v220 = v230;
    v211 = a2;
    v216 = v13;
    v193 = v16;
    v197 = v21;
    v198 = v230;
    v203 = v225;
    v204 = v226;
    v199 = v227;
    v205 = v229;
    AGGraphClearUpdate();
    v40 = *(a4 + 16);
    v246 = *a4;
    v247 = v40;
    v41 = *(a4 + 48);
    v248 = *(a4 + 32);
    *v249 = v41;
    *&v249[12] = *(a4 + 60);
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v246, &v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
    v42 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v246, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v43 = Transaction.effectiveAnimation.getter(v42);
    if (v43)
    {
      v44 = v43;
      v202 = v33;
    }

    else
    {
      v44 = v211;
      if (!v211)
      {

        v28 = v7;
        goto LABEL_128;
      }

      v202 = v33;
    }

    v209 = a4;
    v45 = *&v249[16];
    v46 = v203 - v38;
    v47 = v204 - *&v4;
    v48 = v35 - v39;
    v49 = *&v6 - *&v5;
    v50 = v202 - *&v212;
    v51 = v205 - *&v213;
    v52 = v220 - v214;
    v28 = *AGGraphGetValue();
    v201 = a1;
    v195 = a3;
    v196 = v42;
    v194 = v44;
    if (!v45)
    {
      v231 = v46;
      v232 = v47;
      v233 = v48;
      v234 = v49;
      v235 = v50;
      v236 = v51;
      v237 = v52;
      *&v238 = &type metadata for ResolvedShadowStyle;
      type metadata accessor for ResolvedShadowStyle.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
      v65 = swift_dynamicCast();
      if (v65)
      {
        v66 = v242;
      }

      else
      {
        v66 = 0;
      }

      if (v65)
      {
        v67 = *(&v242 + 1);
      }

      else
      {
        v67 = 0;
      }

      v69 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVySfAVySfAVyS2fGGGAVy12CoreGraphics7CGFloatVAVyA0_A0_GGG_Tt4B5Tm(v68, &v231, v42, v66, v67, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, v28);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v71) = CurrentAttribute;
      LODWORD(v220) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == LODWORD(v220))
      {
        LODWORD(v72) = 0;
      }

      else
      {
        LODWORD(v72) = CurrentAttribute;
      }

      (*(*v44 + 96))(&v238);
      v74 = *(&v238 + 1);
      v73 = v238;
      v75 = *(&v239 + 1);
      a1 = v239;
      v223 = 0x7FF8000000000000;
      v224 = 0x7FF8000000000000;
      v221 = NAN;
      v222 = 0x3FF0000000000000;
      v242 = v238;
      v243 = v239;
      v76 = v240;
      v244 = v240;
      LODWORD(v217) = v241;
      LOBYTE(v245) = v241;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v242, &v224, &v223, &v222, &v221);
      v5 = v223;
      v4 = v224;
      v7 = v221;
      v6 = v222;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_198;
      }

      goto LABEL_42;
    }

    v231 = v46;
    v232 = v47;
    v233 = v48;
    v234 = v49;
    v235 = v50;
    v236 = v51;
    v237 = v52;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v246, &v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
    LOBYTE(v242) = 0;
    v200 = v45;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v44, &v231, v42, a3, v28);
    v53 = AGGraphGetCurrentAttribute();
    v54 = v53;
    LODWORD(v220) = *MEMORY[0x1E698D3F8];
    if (v53 == LODWORD(v220))
    {
      v55 = 0;
    }

    else
    {
      v55 = v53;
    }

    LODWORD(v216) = v55;
    (*(*v44 + 96))(&v238);
    v56 = v238;
    v57 = v239;
    v58 = v240;
    v59 = v241;
    v223 = 0x7FF8000000000000;
    v224 = 0x7FF8000000000000;
    v221 = NAN;
    v222 = 0x3FF0000000000000;
    v242 = v238;
    v243 = v239;
    v244 = v240;
    LOBYTE(v245) = v241;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v242, &v224, &v223, &v222, &v221);
    v5 = v223;
    v4 = v224;
    v7 = v221;
    v6 = v222;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    v33 = v202;
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_195:
      swift_once();
LABEL_52:
      v89 = *(&static Signpost.animationState + 1);
      v88 = static Signpost.animationState;
      v90 = word_1ED5283E8;
      v91 = HIBYTE(word_1ED5283E8);
      v92 = byte_1ED5283EA;
      v75 = static os_signpost_type_t.event.getter();
      v242 = __PAIR128__(v89, v88);
      LOBYTE(v243) = v90;
      BYTE1(v243) = v91;
      BYTE2(v243) = v92;
      if (Signpost.isEnabled.getter())
      {
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v246, &v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
        if (one-time initialization token for _signpostLog != -1)
        {
          swift_once();
        }

        LODWORD(v216) = v75;
        v93 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_18DDAF080;
        v95 = AGGraphGetCurrentAttribute();
        v96 = LODWORD(v220);
        if (v95 == LODWORD(v220))
        {
          __break(1u);
        }

        else
        {
          v75 = AGGraphGetAttributeGraph();
          Counter = AGGraphGetCounter();

          v98 = MEMORY[0x1E69E6870];
          *(v94 + 56) = MEMORY[0x1E69E6810];
          *(v94 + 64) = v98;
          *(v94 + 32) = Counter;
          v99 = AGGraphGetCurrentAttribute();
          if (v99 != v96)
          {
            v71 = v94;
            v100 = MEMORY[0x1E69E76D0];
            *(v94 + 96) = MEMORY[0x1E69E7668];
            *(v94 + 104) = v100;
            *(v94 + 72) = v99;
            *(v94 + 136) = MEMORY[0x1E69E6158];
            lazy protocol witness table accessor for type String and conformance String();
            *(v94 + 144) = v101;
            *(v94 + 112) = 0xD000000000000013;
            *(v94 + 120) = 0x800000018DD7ED10;
            if (v91)
            {
              LOBYTE(v221) = v216;
              v223 = v93;
              v224 = &dword_18D018000;
              *&v242 = v88;
              *(&v242 + 1) = v89;
              LOBYTE(v243) = v90;
              *&v238 = "Animation: (%p) [%d] %{public}@ updated";
              *(&v238 + 1) = 39;
              LOBYTE(v239) = 2;
              v222 = v94;
              v102 = v197;
              specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v221, &v224, &v223, &v242, v197, &v238, &v222);
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v246, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v246, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
              (*(v215 + 8))(v102, v219);
            }

            else
            {
              v103 = v88;
              if (v88 == 20)
              {
                v104 = 3;
              }

              else
              {
                v104 = 4;
              }

              v76 = bswap32(v88) | (4 * WORD1(v88));
              LODWORD(v220) = v216;
              v105 = (v215 + 16);
              v206 = *(v215 + 16);
              v106 = v206(v217, v197, v219);
              v107 = 0;
              LOBYTE(v238) = 1;
              v216 = v104;
              v207 = v105;
              v212 = 16 * v104;
              v213 = (v105 - 1);
              v210 = v103;
              v211 = (v71 + 4);
              do
              {
                v214 = COERCE_DOUBLE(&v192);
                MEMORY[0x1EEE9AC00](v106);
                v110 = &v192 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
                a1 = v110 + 8;
                v111 = v216;
                v112 = v110 + 8;
                do
                {
                  *(v112 - 1) = 0;
                  *v112 = 0;
                  v112 += 16;
                  v111 = (v111 - 1);
                }

                while (v111);
                v113 = v211 + 40 * v107;
                v114 = v216;
                while (1)
                {
                  v115 = v71[2];
                  if (v107 == v115)
                  {
                    break;
                  }

                  if (v107 >= v115)
                  {
                    goto LABEL_187;
                  }

                  ++v107;
                  outlined init with copy of AnyTrackedValue(v113, &v242);
                  v103 = v71;
                  v116 = *(&v243 + 1);
                  v117 = v244;
                  __swift_project_boxed_opaque_existential_1(&v242, *(&v243 + 1));
                  v118 = v117;
                  v71 = v103;
                  *(a1 - 1) = CVarArg.kdebugValue(_:)(v76 | LODWORD(v220), v116, v118);
                  *a1 = v119 & 1;
                  a1 += 2;
                  v108 = __swift_destroy_boxed_opaque_existential_1(&v242);
                  v113 += 40;
                  v114 = (v114 - 1);
                  if (!v114)
                  {
                    goto LABEL_72;
                  }
                }

                LOBYTE(v238) = 0;
LABEL_72:
                v103 = v210;
                if (v210 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                if (v110[8] == 1)
                {
                  kdebug_trace_string();
                }

                if (v110[24] == 1)
                {
                  kdebug_trace_string();
                }

                if (v110[40] == 1)
                {
                  kdebug_trace_string();
                }

                if (v103 != 20 && v110[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v120 = *v213;
                v121 = v217;
                v122 = v219;
                (*v213)(v217, v219);
                v123 = __swift_project_value_buffer(v122, static OSSignpostID.continuation);
                v106 = v206(v121, v123, v122);
              }

              while ((v238 & 1) != 0);
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v246, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v246, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
              v124 = v219;
              v120(v217, v219);
              v120(v197, v124);
            }

LABEL_88:
            a4 = v209;
            v75 = v196;
            goto LABEL_127;
          }
        }

        __break(1u);
        goto LABEL_203;
      }

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v246, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v246, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_88;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      LODWORD(v214) = v59;
      v60 = static CustomEventTrace.recorder;
      v61 = LODWORD(v220);
      if (static CustomEventTrace.recorder)
      {
        v213 = *(static CustomEventTrace.recorder + 24);
        *(v213 + 4) = 1602;
        v62 = *(v60 + 16);
        LODWORD(v242) = v216;
        BYTE4(v242) = v54 == v61;
        *(&v242 + 1) = &type metadata for ResolvedShadowStyle;
        *&v243 = v4;
        *(&v243 + 1) = v5;
        v244 = v6;
        v245 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v216 = v63;

        v64 = v62;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v56, *(&v56 + 1), v57, *(&v57 + 1), v58, LOBYTE(v214));

        goto LABEL_51;
      }

      v83 = *(&v56 + 1);
      v82 = v56;
      v85 = *(&v57 + 1);
      v84 = v57;
      v86 = v58;
      v87 = LOBYTE(v214);
    }

    else
    {
      v83 = *(&v56 + 1);
      v82 = v56;
      v85 = *(&v57 + 1);
      v84 = v57;
      v86 = v58;
      v87 = v59;
    }

    outlined consume of Animation.Function(v82, v83, v84, v85, v86, v87);
LABEL_51:
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v246, &v242, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_195;
  }

  v28 = v7;
LABEL_129:
  while (1)
  {
    *(a4 + 16) = LODWORD(v29) | (LODWORD(v30) << 32);
    *(a4 + 24) = v31;
    *(a4 + 32) = v33;
    *(a4 + 40) = v32;
    *(a4 + 48) = v34;
    *(a4 + 56) = 0;
LABEL_130:
    v71 = *(a4 + 64);
    if (!v71)
    {
      return;
    }

    v209 = a4;

    ResolvedShadowStyle.animatableData.getter(&v242);
    LOBYTE(v246) = 0;
    v159 = specialized AnimatorState.update(_:at:environment:)(&v242, a3, v28);
    v108 = AGGraphGetCurrentAttribute();
    v76 = *MEMORY[0x1E698D3F8];
    if (v108 == v76)
    {
      LODWORD(v107) = 0;
    }

    else
    {
      LODWORD(v107) = v108;
    }

    v103 = &type metadata instantiation cache for TupleTypeDescription;
    if (v159)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_189;
      }

      goto LABEL_136;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_191;
    }

LABEL_149:
    v171 = *(v103 + 616);
    if (*(v171 + 16) >= 0x43uLL)
    {
      if (*(v171 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v246) = v107;
        BYTE4(v246) = v108 == v76;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_184;
    }

    __break(1u);
LABEL_193:
    swift_once();
LABEL_141:
    v69 = *(&static Signpost.animationState + 1);
    v72 = static Signpost.animationState;
    v75 = word_1ED5283E8;
    v162 = HIBYTE(word_1ED5283E8);
    v163 = byte_1ED5283EA;
    v164 = static os_signpost_type_t.end.getter();
    v246 = __PAIR128__(v69, v72);
    LOBYTE(v247) = v75;
    BYTE1(v247) = v162;
    BYTE2(v247) = v163;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_183;
    }

    LODWORD(v220) = v164;
    v165 = one-time initialization token for _signpostLog;

    if (v165 != -1)
    {
      swift_once();
    }

    v201 = a1;
    v73 = _signpostLog;
    v207 = v71;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v76)
    {
      break;
    }

    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    swift_once();
LABEL_42:
    v33 = v202;
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_200:
      swift_once();
      goto LABEL_91;
    }

    v77 = *(static CustomEventTrace.enabledCategories + 98);
    v200 = v69;
    if (v77 == 1 && (v78 = static CustomEventTrace.recorder) != 0)
    {
      v79 = v71 == LODWORD(v220);
      *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
      v80 = *(v78 + 16);
      LODWORD(v242) = v72;
      BYTE4(v242) = v79;
      *(&v242 + 1) = &type metadata for ResolvedShadowStyle;
      *&v243 = v4;
      *(&v243 + 1) = v5;
      v244 = v6;
      v245 = v7;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v81 = v80;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v73, v74, a1, v75, v76, v217);
    }

    else
    {
      outlined consume of Animation.Function(v73, v74, a1, v75, v76, v217);
    }

    v125 = one-time initialization token for animationState;

    v75 = v196;
    if (v125 != -1)
    {
      goto LABEL_200;
    }

LABEL_91:
    v90 = *(&static Signpost.animationState + 1);
    v89 = static Signpost.animationState;
    v91 = word_1ED5283E8;
    LOBYTE(v94) = HIBYTE(word_1ED5283E8);
    v126 = byte_1ED5283EA;
    v127 = static os_signpost_type_t.begin.getter();
    v242 = __PAIR128__(v90, v89);
    LOBYTE(v243) = v91;
    BYTE1(v243) = v94;
    BYTE2(v243) = v126;
    v128 = Signpost.isEnabled.getter();
    LODWORD(v88) = LODWORD(v220);
    if (v128)
    {
      LODWORD(v217) = v127;
      v129 = one-time initialization token for _signpostLog;

      if (v129 != -1)
      {
LABEL_203:
        swift_once();
      }

      v214 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v130 = COERCE_DOUBLE(swift_allocObject());
      *(v130 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v88)
      {
        __break(1u);
LABEL_205:
        __break(1u);
      }

      v131 = AGGraphGetAttributeGraph();
      v132 = AGGraphGetCounter();

      v133 = MEMORY[0x1E69E6870];
      *(v130 + 56) = MEMORY[0x1E69E6810];
      *(v130 + 64) = v133;
      *(v130 + 32) = v132;
      v134 = AGGraphGetCurrentAttribute();
      if (v134 == v88)
      {
        goto LABEL_205;
      }

      v135 = MEMORY[0x1E69E76D0];
      *(v130 + 96) = MEMORY[0x1E69E7668];
      *(v130 + 104) = v135;
      *(v130 + 72) = v134;
      *(v130 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v130 + 144) = v136;
      *(v130 + 112) = 0xD000000000000013;
      *(v130 + 120) = 0x800000018DD7ED10;
      v137 = *&v130;
      v138 = v193;
      if ((v94 & 1) == 0)
      {
        v140 = v89;
        if (v89 == 20)
        {
          v141 = 3;
        }

        else
        {
          v141 = 4;
        }

        v76 = bswap32(v89) | (4 * WORD1(v89));
        v103 = v217;
        v142 = (v215 + 16);
        v206 = *(v215 + 16);
        v143 = v206(v216, v193, v219);
        v107 = 0;
        LOBYTE(v238) = 1;
        v207 = v142;
        v213 = 16 * v141;
        *&v214 = v142 - 1;
        v220 = v137;
        v211 = v140;
        v212 = *&v137 + 32;
        v210 = v141;
        do
        {
          v217 = &v192;
          MEMORY[0x1EEE9AC00](v143);
          a1 = (&v192 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0));
          v145 = a1 + 1;
          v146 = v141;
          v147 = a1 + 1;
          do
          {
            *(v147 - 1) = 0;
            *v147 = 0;
            v147 += 16;
            --v146;
          }

          while (v146);
          v71 = (v212 + 40 * v107);
          while (1)
          {
            v148 = *(*&v220 + 16);
            if (v107 == v148)
            {
              break;
            }

            if (v107 >= v148)
            {
              goto LABEL_188;
            }

            ++v107;
            outlined init with copy of AnyTrackedValue(v71, &v242);
            v149 = *(&v243 + 1);
            v150 = v244;
            __swift_project_boxed_opaque_existential_1(&v242, *(&v243 + 1));
            *(v145 - 1) = CVarArg.kdebugValue(_:)(v76 | v103, v149, v150);
            *v145 = v151 & 1;
            v145 += 16;
            v108 = __swift_destroy_boxed_opaque_existential_1(&v242);
            v71 += 5;
            if (!--v141)
            {
              goto LABEL_111;
            }
          }

          LOBYTE(v238) = 0;
LABEL_111:
          v152 = v211;
          if (v211 == 20)
          {
            v153 = v216;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v153 = v216;
          }

          if (*(a1 + 8) == 1)
          {
            kdebug_trace_string();
          }

          if (*(a1 + 24) == 1)
          {
            kdebug_trace_string();
          }

          if (*(a1 + 40) == 1)
          {
            kdebug_trace_string();
          }

          if (v152 != 20 && *(a1 + 56) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v154 = **&v214;
          v155 = v219;
          (**&v214)(v153, v219);
          v156 = __swift_project_value_buffer(v155, static OSSignpostID.continuation);
          v143 = v206(v153, v156, v155);
          v141 = v210;
        }

        while ((v238 & 1) != 0);
        v157 = v200;

        v158 = v219;
        v154(v153, v219);
        v154(v193, v158);

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v246, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
        a4 = v209;
        *(v209 + 64) = v157;
        v75 = v196;
        goto LABEL_127;
      }

      LOBYTE(v221) = v217;
      v223 = *&v214;
      v224 = &dword_18D018000;
      *&v242 = v89;
      *(&v242 + 1) = v90;
      LOBYTE(v243) = v91;
      *&v238 = "Animation: (%p) [%d] %{public}@ started";
      *(&v238 + 1) = 39;
      LOBYTE(v239) = 2;
      v222 = v130;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v221, &v224, &v223, &v242, v193, &v238, &v222);
      v139 = v200;

      (*(v215 + 8))(v138, v219);
    }

    else
    {
      v139 = v200;
    }

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v246, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedShadowStyle>, lazy protocol witness table accessor for type ResolvedShadowStyle and conformance ResolvedShadowStyle, &type metadata for ResolvedShadowStyle, type metadata accessor for AnimatableAttributeHelper);
    a4 = v209;
    *(v209 + 64) = v139;
LABEL_127:
    specialized AnimatorState.addListeners(transaction:)(v75);

    a1 = v201;
    a3 = v195;
LABEL_128:
    v32 = v205;
    v34 = v198;
    v31 = v199;
    v29 = v203;
    v30 = v204;
  }

  v71 = AGGraphGetAttributeGraph();
  a1 = AGGraphGetCounter();

  v166 = MEMORY[0x1E69E6870];
  *(v74 + 56) = MEMORY[0x1E69E6810];
  *(v74 + 64) = v166;
  *(v74 + 32) = a1;
  v167 = AGGraphGetCurrentAttribute();
  if (v167 == v76)
  {
    goto LABEL_197;
  }

  v168 = MEMORY[0x1E69E76D0];
  *(v74 + 96) = MEMORY[0x1E69E7668];
  *(v74 + 104) = v168;
  *(v74 + 72) = v167;
  *(v74 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v74 + 144) = v169;
  *(v74 + 112) = 0xD000000000000013;
  *(v74 + 120) = 0x800000018DD7ED10;
  if (v162)
  {
    LOBYTE(v221) = LOBYTE(v220);
    v223 = v73;
    v224 = &dword_18D018000;
    *&v246 = v72;
    *(&v246 + 1) = v69;
    LOBYTE(v247) = v75;
    *&v238 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v238 + 1) = 37;
    LOBYTE(v239) = 2;
    v222 = v74;
    v170 = v208;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v221, &v224, &v223, &v246, v208, &v238, &v222);

    (*(v215 + 8))(v170, v219);
    goto LABEL_182;
  }

  v211 = v72;
  if (v72 == 20)
  {
    v172 = 3;
  }

  else
  {
    v172 = 4;
  }

  v76 = bswap32(v72) | (4 * WORD1(v72));
  LODWORD(v220) = LOBYTE(v220);
  v173 = v215 + 16;
  v210 = *(v215 + 16);
  v174 = v210(v218, v208, v219);
  v107 = 0;
  LOBYTE(v238) = 1;
  v217 = v172;
  v215 = v173;
  v213 = 16 * v172;
  *&v214 = v173 - 8;
  v212 = v74 + 32;
  v175 = v74;
  do
  {
    v216 = &v192;
    MEMORY[0x1EEE9AC00](v174);
    a1 = (&v192 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0));
    v103 = (a1 + 1);
    v177 = v217;
    v178 = a1 + 1;
    do
    {
      *(v178 - 1) = 0;
      *v178 = 0;
      v178 += 16;
      --v177;
    }

    while (v177);
    v71 = (v212 + 40 * v107);
    v179 = v217;
    while (1)
    {
      v180 = *(v175 + 16);
      if (v107 == v180)
      {
        break;
      }

      if (v107 >= v180)
      {
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        v190 = v108;
        swift_once();
        v108 = v190;
LABEL_136:
        v160 = *(v103 + 616);
        if (*(v160 + 16) >= 0x43uLL)
        {
          if (*(v160 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v246) = v107;
            BYTE4(v246) = v108 == v76;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v161 = one-time initialization token for animationState;

          if (v161 != -1)
          {
            goto LABEL_193;
          }

          goto LABEL_141;
        }

        __break(1u);
LABEL_191:
        v191 = v108;
        swift_once();
        v108 = v191;
        goto LABEL_149;
      }

      ++v107;
      outlined init with copy of AnyTrackedValue(v71, &v246);
      v181 = *(&v247 + 1);
      v182 = v248;
      __swift_project_boxed_opaque_existential_1(&v246, *(&v247 + 1));
      *(v103 - 8) = CVarArg.kdebugValue(_:)(v76 | LODWORD(v220), v181, v182);
      *v103 = v183 & 1;
      v103 += 16;
      v108 = __swift_destroy_boxed_opaque_existential_1(&v246);
      v71 += 5;
      if (!--v179)
      {
        goto LABEL_167;
      }
    }

    LOBYTE(v238) = 0;
LABEL_167:
    v184 = v211;
    if (v211 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a1 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v184 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v185 = **&v214;
    v187 = v218;
    v186 = v219;
    (**&v214)(v218, v219);
    v188 = __swift_project_value_buffer(v186, static OSSignpostID.continuation);
    v174 = v210(v187, v188, v186);
  }

  while ((v238 & 1) != 0);

  v189 = v219;
  v185(v218, v219);
  v185(v208, v189);
LABEL_182:

  a1 = v201;
LABEL_183:
  specialized AnimatorState.removeListeners()();

  *(v209 + 64) = 0;
LABEL_184:
  v246 = v242;
  v247 = v243;
  *&v248 = v244;
  ResolvedShadowStyle.animatableData.setter(&v246);

  *(a1 + 53) = 1;
}

__n128 ResolvedShadowStyle.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v8 = *v1;
  v9 = *(v1 + 24);
  v3 = *(v1 + 40);
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v4 = v8;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v10, v8.f32[0], v8.u32[1], v8.f32[2], v8.f32[3]);
    v4 = v10;
  }

  v5.i64[0] = 0x4300000043000000;
  v5.i64[1] = 0x4300000043000000;
  v6 = vmulq_f32(v4, v5);
  result = v9;
  *a1 = v6;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  return result;
}

double GraphicsContext.drawLayer(flags:content:)(uint64_t a1, void (*a2)(void, __n128), uint64_t a3, uint64_t a4)
{
  v18[3] = a3;
  v6 = a1;
  v7 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = xmmword_18DD85500;
  *(v8 + 48) = 1065353216;
  *(v8 + 56) = 0x7FF8000000000000;
  v9 = *(a4 + 16);
  v10 = *(v9 + 64);
  if (v10 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v8 + 16) = v9;
  }

  else
  {
    v17 = a2;
    v16 = RBDrawingStateGetDisplayList();
    v12 = *(a4 + 32);
    v11 = *(a4 + 40);
    v13 = v12;
    v14 = v11;
    if (v12 == 1)
    {
      v13 = *(v9 + 48);
      v14 = *(v9 + 56);
    }

    v18[0] = v13;
    v18[1] = v14;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v12, v11);
    *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, v18);
    a2 = v17;
  }

  *(v8 + 24) = v7;
  *(v8 + 64) = 0;
  if ((v6 & 0x20) != 0)
  {
    *(v8 + 48) = *(a4 + 48);
    *(v8 + 52) = *(a4 + 52);
  }

  v18[0] = v8;

  (a2)(v18);

  RBDrawingStateDrawLayer();

  return result;
}

void outlined consume of GraphicsContext.Filter.Storage(id a1, id a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a11 >> 27;
  if (a11 >> 27 <= 0x11)
  {
    if (a11 >> 27 > 5)
    {
      if (v11 != 6 && v11 != 8)
      {
        return;
      }
    }

    else if (v11 != 3)
    {
      if (v11 == 5)
      {

        outlined consume of Path.Storage(a5, a6, a7, a8, a9);
      }

      return;
    }

    goto LABEL_14;
  }

  if (a11 >> 27 > 0x13)
  {
    if (v11 == 20)
    {
      v12 = a2 & 1;

      outlined consume of EitherGradient(a1, v12);
    }

    else if (v11 == 24)
    {
    }
  }

  else
  {
    if (v11 != 18)
    {
      if (v11 != 19)
      {
        return;
      }

LABEL_14:

      return;
    }

    outlined consume of GraphicsContext.Shading.Storage(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

double static GraphicsContext.Shading.radialGradient(_:center:startRadius:endRadius:options:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  return static GraphicsContext.Shading.radialGradient(_:center:startRadius:endRadius:options:)(a1, a2, 1, a3, a4, a5, a6, a7);
}

{
  return static GraphicsContext.Shading.radialGradient(_:center:startRadius:endRadius:options:)(a1, a2, 1, a3, a4, a5, a6, a7);
}

void DrawingGroupDisplayList.updateValue()()
{
  v75 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E698D3F8];
  if (v0[7] == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
    v3 = 0;
    v4 = *(v0 + 72);
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *Value;
    v2 = *(Value + 8);
    v3 = *(Value + 12);
    v4 = v7 & 1;
  }

  v8 = *(v5 + 16);
  *(v0 + 72) = v8 != 0;
  if (!v8)
  {

    *&v63 = MEMORY[0x1E69E7CC0];
    WORD4(v63) = 0;
    HIDWORD(v63) = 0;
    AGGraphSetOutputValue();

    return;
  }

  v61 = v4;
  v56 = v3;
  v57 = v2;
  v62 = v5;
  v9 = AGGraphGetValue();
  v11 = v10;
  v54 = *(v9 + 4);
  v55 = *v9;
  v53 = *(v9 + 8);
  v51 = *(v9 + 5);
  v52 = *(v9 + 12);
  type metadata accessor for CGSize(0);
  v12 = AGGraphGetValue();
  v14 = v13;
  width = *v12;
  height = v12[1];
  type metadata accessor for CGPoint(0);
  v17 = AGGraphGetValue();
  v19 = v18;
  v60 = *v17;
  v20 = AGGraphGetValue();
  v22 = v21;
  v24 = *v20;
  v23 = *(v20 + 8);
  v58 = *(v20 + 16);
  v59 = *(v20 + 32);
  if (v0[6] == v1)
  {

    v25 = 512;
  }

  else
  {
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for Image.DynamicRange?, &type metadata for Image.DynamicRange, MEMORY[0x1E69E6720]);

    v26 = AGGraphGetValue();
    v25 = *v26 | ((v27 & 1) << 8);
  }

  if ((v11 | v14 | v61))
  {
    v28 = 1;
    if ((v19 & 1) == 0 && (v14 & 1) == 0 && (v22 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((v25 & 0x300) == 0x200)
  {
    v28 = 0;
    if (((v19 | v22) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v28 = (v25 >> 8) & 1;
    if (((v19 | v22) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  LOBYTE(v68) = 1;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  memset(v66, 0, sizeof(v66));
  v67 = 1;
  *&v71 = v24;
  *(&v71 + 1) = v23;
  v72 = v60;
  v73 = vsubq_f64(v59, vsubq_f64(v60, v58));
  specialized ViewTransform.forEach(inverted:_:)(0, &v71, &v63, v73.f64[0]);
  x = 0.0;
  if ((v67 & 1) != 0 || (origin = v66[1].origin, size = v66[1].size, CGRectGetWidth(v66[1]) > width) && (v77.origin = origin, v77.size = size, CGRectGetHeight(v77) > height))
  {
    y = 0.0;
  }

  else
  {
    v78.origin.x = 0.0;
    v78.origin.y = 0.0;
    v78.size.width = width;
    v78.size.height = height;
    v82.origin = origin;
    v82.size = size;
    v79 = CGRectIntersection(v78, v82);
    x = v79.origin.x;
    y = v79.origin.y;
    width = v79.size.width;
    height = v79.size.height;
  }

  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  if (!CGRectEqualToRect(v80, *(v0 + 10)))
  {
    *(v0 + 5) = x;
    *(v0 + 6) = y;
    v28 = 1;
    *(v0 + 7) = width;
    *(v0 + 8) = height;
  }

LABEL_25:
  v33 = *(v0 + 5);
  v34 = *(v0 + 6);
  v35 = *(v0 + 7);
  v36 = *(v0 + 8);
  v81.origin.x = v33;
  v81.origin.y = v34;
  v81.size.width = v35;
  v81.size.height = v36;
  if (CGRectIsEmpty(v81))
  {

    *&v63 = MEMORY[0x1E69E7CC0];
    WORD4(v63) = 0;
    HIDWORD(v63) = 0;
    AGGraphSetOutputValue();
LABEL_44:

    return;
  }

  v37 = AGGraphGetValue();
  v40 = *v37;
  v39 = v37[1];
  if (((v28 | v19) & 1) != 0 || (v38 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v41 = ++static DisplayList.Version.lastValue;
    if (v28)
    {
      if (v41)
      {
        v42 = (2 * ((33 * (v41 >> 16)) ^ v41)) | 1;
      }

      else
      {
        LOWORD(v42) = 0;
      }

      *(v0 + 16) = v42;
    }

    v43 = v60.f64[1] - v39;
    v44 = v33 + v60.f64[0] - v40;
    v45 = v34 + v43;
    if (v25 == 3 || (v25 & 0x300) == 512)
    {
      LOBYTE(v25) = v51;
    }

    v47 = swift_allocObject();
    *(v47 + 16) = v62;
    *(v47 + 24) = v57;
    *(v47 + 28) = v56;
    *(v47 + 32) = v33;
    *(v47 + 40) = v34;
    *(v47 + 48) = v55;
    *(v47 + 52) = v54;
    *(v47 + 53) = v25;
    *(v47 + 56) = v53;
    *(v47 + 60) = v52;
    v48 = v47 | 0xB000000000000000;
    v49 = *(v0 + 16);
    v50 = *v0;
    *&v63 = v44;
    *(&v63 + 1) = v45;
    v64.f64[0] = v35;
    v64.f64[1] = v36;
    *&v65.f64[0] = v41;
    *&v65.f64[1] = v47 | 0xB000000000000000;
    v66[0].size.width = 0.0;
    v66[0].origin = v49;
    LODWORD(v66[0].size.height) = v50;
    v73 = v65;
    v74[0] = v49;
    *(v74 + 12) = *(&v66[0].origin.y + 4);
    v71 = v63;
    v72 = v64;
    outlined copy of DisplayList.Content.Value(v47 | 0xB000000000000000);
    outlined init with copy of DisplayList.Item(&v63, &v68);
    DisplayList.init(_:)(&v71, &v68);
    *&v71 = v68;
    WORD4(v71) = v69;
    HIDWORD(v71) = v70;
    AGGraphSetOutputValue();
    outlined destroy of DisplayList.Item(&v63);
    outlined consume of DisplayList.Content.Value(v48);
    goto LABEL_44;
  }
}

uint64_t sub_18D2B3D98()
{

  return swift_deallocObject();
}

uint64_t initializeWithCopy for _ShadowEffect(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 1);

  return a1;
}

uint64_t destroy for StrokeBorderShapeView(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)(a1, a2[2]);
  v5 = *(v4 + 56) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7 + 8;
  v10 = a2[3];
  v9 = a2[4];
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v22 = *(v9 - 8);
  v13 = *(v22 + 80);
  v14 = v13 & 0xF8 | 7;
  v15 = (v13 | *(v7 + 80)) & 0xF8 | v12 | 7;
  v16 = (v5 + v15) & ~v15;
  (*(v7 + 8))(v16, AssociatedTypeWitness);
  v17 = *(v8 + 56) + 7;

  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + v12 + 40;
  (*(v11 + 8))((v18 + v16) & ~v12, v10);
  v19 = *(v22 + 8);
  v20 = (v14 + (v18 & ~v12) + *(v11 + 64) + v16 + 2) & ~v14;

  return v19(v20, v9);
}

double static AnchorGeometryTransformModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, int *, __int128 *)@<X2>, ValueMetadata *a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v27 = *a1;
  v8 = *(a2 + 16);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v12 = *(a2 + 56);
  v11 = *(a2 + 60);
  v14 = (a2 + 24);
  v13 = *(a2 + 24);
  v30 = *a2;
  v31 = v8;
  v32 = v13;
  v15 = *(a2 + 36);
  v33 = *(a2 + 32);
  v34 = v15;
  v35 = v9;
  v36 = v10;
  v37 = v12;
  v38 = v11;
  v39 = *(a2 + 64);
  v40 = *(a2 + 80);
  a3(&v41, a1, &v30);
  if ((v15 & 0x20) != 0)
  {
    v30 = *a2;
    v16 = *v14;
    v31 = v8;
    v32 = v16;
    v33 = *(v14 + 2);
    v34 = v15;
    v35 = v9;
    v36 = v10;
    v37 = v12;
    v38 = v11;
    v39 = *(a2 + 64);
    v40 = *(a2 + 80);
    swift_beginAccess();
    v26 = CachedEnvironment.animatedPosition(for:)(&v30);
    v30 = *a2;
    v17 = *v14;
    v31 = v8;
    v32 = v17;
    v33 = *(v14 + 2);
    v34 = v15;
    v35 = v9;
    v36 = v10;
    v37 = v12;
    v38 = v11;
    v39 = *(a2 + 64);
    v40 = *(a2 + 80);
    v18 = CachedEnvironment.animatedCGSize(for:)(&v30);
    v19 = swift_endAccess();
    *&v30 = v10;
    DWORD2(v30) = v12;
    MEMORY[0x1EEE9AC00](v19);
    v21[2] = v28;
    v21[3] = v29;
    v22 = v27;
    v23 = v26;
    v24 = v18;
    v25 = v11;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)(&v30, v28, partial apply for implicit closure #1 in static AnchorGeometryTransformModifier._makeView(modifier:inputs:body:), v21, v28, v29);
  }

  *a6 = v41;
  result = v42;
  a6[1] = v42;
  return result;
}

uint64_t AnyTransition.FilterVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v7 = type metadata accessor for FilteredTransition(255, a2, a3, a4);
  v10 = type metadata accessor for UncheckedSendable(0, v7, v8, v9);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v32 = &v32 - v11;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UncheckedSendable(0, a2, v20, v21);
  v22 = *(v33 - 8);
  v23 = MEMORY[0x1EEE9AC00](v33);
  v25 = &v32 - v24;
  (*(v16 + 16))(v19, a1, a2, v23);
  UncheckedSendable.init(_:)(v19, a2, v25);
  v26 = *v4;
  v27 = v4[1];
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;

  v29 = v32;
  closure #1 in AnyTransition.FilterVisitor.visit<A>(_:)(partial apply for thunk for @escaping @callee_guaranteed (@inout Transaction, @unowned TransitionPhase) -> (), v28, a2, v34, v32);
  (*(v12 + 32))(v15, v29, v7);
  swift_getWitnessTable(protocol conformance descriptor for FilteredTransition<A>, v7);
  v30 = specialized AnyTransition.init<A>(_:)(v15, v7);

  (*(v12 + 8))(v15, v7);

  v4[2] = v30;
  return (*(v22 + 8))(v25, v33);
}

uint64_t sub_18D2B4974()
{

  return swift_deallocObject();
}

uint64_t closure #1 in AnyTransition.FilterVisitor.visit<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FilteredTransition(0, a3, a4, a3);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  Transition.transaction(_:)(partial apply for thunk for @escaping @callee_guaranteed (@inout Transaction, @in_guaranteed TransitionPhase) -> (@out ()), v13, a3, a4, v12);

  return UncheckedSendable.init(_:)(v12, v10, a5);
}

uint64_t Image.symbolRenderingMode(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.SymbolRenderingOptionsProvider>, lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider, &unk_1F00763C8, type metadata accessor for ImageProviderBox);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  *(v4 + 25) = 514;
  *(v4 + 27) = 1;

  return v4;
}

void type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type _DrawingGroupEffect.ChildEnvironment and conformance _DrawingGroupEffect.ChildEnvironment()
{
  if (!lazy protocol witness table cache variable for type _DrawingGroupEffect.ChildEnvironment and conformance _DrawingGroupEffect.ChildEnvironment)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DrawingGroupEffect.ChildEnvironment, &unk_1F00640E0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DrawingGroupEffect.ChildEnvironment and conformance _DrawingGroupEffect.ChildEnvironment);
  }
}

uint64_t specialized static EnvironmentalModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v6 = v5;
  v71 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v6, &v63);
  v9 = v63;
  v10 = v64;
  v11 = DWORD1(v64);
  v12 = a2[3];
  v59 = a2[2];
  v60 = v12;
  v61 = a2[4];
  v62 = *(a2 + 20);
  v13 = a2[1];
  v57 = *a2;
  v58 = v13;
  if (AGTypeGetKind() - 2 > 3)
  {
    outlined init with copy of _ViewInputs(a2, &v63);
    _StringGuts.grow(_:)(47);

    *&v63 = 0xD00000000000002DLL;
    *(&v63 + 1) = 0x800000018DD78740;
    MEMORY[0x193ABEDD0](0x45776F646168535FLL, 0xED00007463656666);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v14 = *(a2 + 2);
    swift_beginAccess();
    v15 = *(v14 + 16);
    type metadata accessor for PropertyList.Tracker();
    v16 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>(0, v17, v18, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = MEMORY[0x1E69E7CC8];
    *(v20 + 24) = 0;
    *(v20 + 32) = v21;
    v22 = MEMORY[0x1E69E7CC0];
    *(v20 + 40) = v21;
    *(v20 + 48) = v22;
    *(v20 + 56) = 0;
    *(v16 + 16) = v20;
    outlined init with copy of _ViewInputs(a2, &v63);
    outlined copy of DynamicPropertyCache.Fields.Layout(v9, *(&v9 + 1), v10);
    LOBYTE(v63) = v10;
    v23 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v57, v9, *(&v9 + 1), v10 | (v11 << 32), a1, v15, v16, 1, &v63);
    outlined consume of DynamicPropertyCache.Fields.Layout(v9, *(&v9 + 1), v10);

    v24 = v63;
    v32 = v64;
    v33 = *(&v63 + 1);
    v25 = BYTE8(v64);
    v53 = v59;
    v54 = v60;
    v55 = v61;
    v56 = v62;
    v51 = v57;
    v52 = v58;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v47 = v53;
    v48 = v54;
    v49 = v55;
    v50 = v56;
    v45 = v51;
    v46 = v52;
    v27 = v53;
    LODWORD(v47) = 0;
    v68 = v56;
    v66 = v54;
    v67 = v55;
    v63 = v51;
    v64 = v52;
    v65 = v47;
    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v54))
    {
      LODWORD(v37[0]) = v24;
      v70[0] = v63;
      v70[1] = v64;
      v70[2] = v65;
      v69[0] = v63;
      v69[1] = v64;
      v69[2] = v65;
      outlined init with copy of _ViewInputs(&v51, &v39);
      outlined init with copy of _ViewInputs(&v63, &v39);
      outlined init with copy of _GraphInputs(v70, &v39);
      _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13_ShadowEffectV9_ResolvedV_Tt1B5(v37, v69);
      outlined destroy of _GraphInputs(v70);
      _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA07_ShadowD0V9_ResolvedV_Tt3B5(v37[0], &v63, a3, v36);
    }

    else
    {
      v41 = v65;
      v42 = v66;
      v43 = v67;
      v44 = v68;
      v39 = v63;
      v40 = v64;
      outlined init with copy of _ViewInputs(&v51, v37);
      v28 = outlined init with copy of _ViewInputs(&v63, v37);
      a3(v36, v28, &v39);
    }

    outlined destroy of _ViewInputs(&v63);
    LODWORD(v47) = v27;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v36, &v45);
      AGSubgraphEndTreeElement();
    }

    v41 = v47;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v39 = v45;
    v40 = v46;
    outlined destroy of _ViewInputs(&v39);
    v29 = v36[0];
    v30 = v36[1];
    if ((v25 & 1) == 0)
    {
      LOBYTE(v37[0]) = v10;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v23, v9, *(&v9 + 1), (v11 << 32) | v10, v33, v32);
    }

    v37[2] = v59;
    v37[3] = v60;
    v37[4] = v61;
    v38 = v62;
    v37[0] = v57;
    v37[1] = v58;
    outlined destroy of _ViewInputs(v37);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v9, *(&v9 + 1), v10);
    *a5 = v29;
    a5[1] = v30;
  }

  return result;
}

void specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v16 = a4 & 1;
  v19 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v19);
    LOBYTE(v36) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ShadowEffect, &v36);
    v20 = v36;
    v21 = DWORD2(v36);
    v22 = HIDWORD(v36);
    if (HIDWORD(v36))
    {
      v27 = a8 & 1;
      v28 = *(a1 + 24);
      LODWORD(v32) = a6;
      *(&v32 + 1) = a7;
      LOBYTE(v33) = a8 & 1;
      *(&v33 + 4) = __PAIR64__(v28, a5);
      v34 = v36;
      v35 = 0;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v32, &v30, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      v23 = Attribute.init<A>(body:value:flags:update:)();
      v24 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>;
      goto LABEL_6;
    }

    *(&v36 + 1) = DWORD2(v36);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v36) = a6;
    *(&v36 + 1) = a7;
    LOBYTE(v37) = a8 & 1;
    DWORD1(v37) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v19);
    LOBYTE(v36) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ShadowEffect, &v36);
    v20 = v36;
    v21 = DWORD2(v36);
    v22 = HIDWORD(v36);
    if (HIDWORD(v36))
    {
      v27 = a8 & 1;
      v28 = *(a1 + 24);
      LODWORD(v32) = a6;
      *(&v32 + 1) = a7;
      LOBYTE(v33) = a8 & 1;
      *(&v33 + 4) = __PAIR64__(v28, a5);
      v34 = v36;
      v35 = 0;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v32, &v30, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      v23 = Attribute.init<A>(body:value:flags:update:)();
      v24 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>;
LABEL_6:
      v25 = v24;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v32, v24);
      *a9 = v23;
      LODWORD(v36) = a6;
      *(&v36 + 1) = a7;
      LOBYTE(v37) = v27;
      *(&v37 + 1) = v30;
      BYTE3(v37) = v31;
      *(&v37 + 4) = __PAIR64__(v28, a5);
      *&v38 = v20;
      *(&v38 + 1) = __PAIR64__(v22, v21);
      v39 = 0;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v36, v25);
      *(a9 + 8) = v20;
      *(a9 + 16) = v21 | (v22 << 32);
      *(a9 + 24) = 0;
      return;
    }

    *(&v36 + 1) = DWORD2(v36);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v36) = a6;
    *(&v36 + 1) = a7;
    LOBYTE(v37) = a8 & 1;
    DWORD1(v37) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  v26 = Attribute.init<A>(body:value:flags:update:)();

  *a9 = v26;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
}

{
  v40 = *MEMORY[0x1E69E9840];
  v16 = a4 & 1;
  v19 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v19);
    LOBYTE(v36) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ColorMonochromeEffect, &v36);
    v20 = v36;
    v21 = DWORD2(v36);
    v22 = HIDWORD(v36);
    if (HIDWORD(v36))
    {
      v27 = a8 & 1;
      v28 = *(a1 + 24);
      LODWORD(v32) = a6;
      *(&v32 + 1) = a7;
      LOBYTE(v33) = a8 & 1;
      *(&v33 + 4) = __PAIR64__(v28, a5);
      v34 = v36;
      v35 = 0;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v32, &v30, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      v23 = Attribute.init<A>(body:value:flags:update:)();
      v24 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>;
      goto LABEL_6;
    }

    *(&v36 + 1) = DWORD2(v36);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v36) = a6;
    *(&v36 + 1) = a7;
    LOBYTE(v37) = a8 & 1;
    DWORD1(v37) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v19);
    LOBYTE(v36) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ColorMonochromeEffect, &v36);
    v20 = v36;
    v21 = DWORD2(v36);
    v22 = HIDWORD(v36);
    if (HIDWORD(v36))
    {
      v27 = a8 & 1;
      v28 = *(a1 + 24);
      LODWORD(v32) = a6;
      *(&v32 + 1) = a7;
      LOBYTE(v33) = a8 & 1;
      *(&v33 + 4) = __PAIR64__(v28, a5);
      v34 = v36;
      v35 = 0;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v32, &v30, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      v23 = Attribute.init<A>(body:value:flags:update:)();
      v24 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>;
LABEL_6:
      v25 = v24;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v32, v24);
      *a9 = v23;
      LODWORD(v36) = a6;
      *(&v36 + 1) = a7;
      LOBYTE(v37) = v27;
      *(&v37 + 1) = v30;
      BYTE3(v37) = v31;
      *(&v37 + 4) = __PAIR64__(v28, a5);
      *&v38 = v20;
      *(&v38 + 1) = __PAIR64__(v22, v21);
      v39 = 0;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v36, v25);
      *(a9 + 8) = v20;
      *(a9 + 16) = v21 | (v22 << 32);
      *(a9 + 24) = 0;
      return;
    }

    *(&v36 + 1) = DWORD2(v36);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v36) = a6;
    *(&v36 + 1) = a7;
    LOBYTE(v37) = a8 & 1;
    DWORD1(v37) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMonochromeEffect>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  v26 = Attribute.init<A>(body:value:flags:update:)();

  *a9 = v26;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
}

{
  v40 = *MEMORY[0x1E69E9840];
  v16 = a4 & 1;
  v19 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v19);
    LOBYTE(v36) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _AlphaThresholdEffect, &v36);
    v20 = v36;
    v21 = DWORD2(v36);
    v22 = HIDWORD(v36);
    if (HIDWORD(v36))
    {
      v27 = a8 & 1;
      v28 = *(a1 + 24);
      LODWORD(v32) = a6;
      *(&v32 + 1) = a7;
      LOBYTE(v33) = a8 & 1;
      *(&v33 + 4) = __PAIR64__(v28, a5);
      v34 = v36;
      v35 = 0;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v32, &v30, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      v23 = Attribute.init<A>(body:value:flags:update:)();
      v24 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>;
      goto LABEL_6;
    }

    *(&v36 + 1) = DWORD2(v36);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v36) = a6;
    *(&v36 + 1) = a7;
    LOBYTE(v37) = a8 & 1;
    DWORD1(v37) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v19);
    LOBYTE(v36) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _AlphaThresholdEffect, &v36);
    v20 = v36;
    v21 = DWORD2(v36);
    v22 = HIDWORD(v36);
    if (HIDWORD(v36))
    {
      v27 = a8 & 1;
      v28 = *(a1 + 24);
      LODWORD(v32) = a6;
      *(&v32 + 1) = a7;
      LOBYTE(v33) = a8 & 1;
      *(&v33 + 4) = __PAIR64__(v28, a5);
      v34 = v36;
      v35 = 0;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v32, &v30, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      v23 = Attribute.init<A>(body:value:flags:update:)();
      v24 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>;
LABEL_6:
      v25 = v24;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v32, v24);
      *a9 = v23;
      LODWORD(v36) = a6;
      *(&v36 + 1) = a7;
      LOBYTE(v37) = v27;
      *(&v37 + 1) = v30;
      BYTE3(v37) = v31;
      *(&v37 + 4) = __PAIR64__(v28, a5);
      *&v38 = v20;
      *(&v38 + 1) = __PAIR64__(v22, v21);
      v39 = 0;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v36, v25);
      *(a9 + 8) = v20;
      *(a9 + 16) = v21 | (v22 << 32);
      *(a9 + 24) = 0;
      return;
    }

    *(&v36 + 1) = DWORD2(v36);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v36) = a6;
    *(&v36 + 1) = a7;
    LOBYTE(v37) = a8 & 1;
    DWORD1(v37) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_AlphaThresholdEffect>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  v26 = Attribute.init<A>(body:value:flags:update:)();

  *a9 = v26;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
}

{
  v40 = *MEMORY[0x1E69E9840];
  v16 = a4 & 1;
  v19 = a4 & 1;
  if ((a4 & 0x100000000) != 0)
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v19);
    LOBYTE(v36) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ColorMultiplyEffect, &v36);
    v20 = v36;
    v21 = DWORD2(v36);
    v22 = HIDWORD(v36);
    if (HIDWORD(v36))
    {
      v27 = a8 & 1;
      v28 = *(a1 + 24);
      LODWORD(v32) = a6;
      *(&v32 + 1) = a7;
      LOBYTE(v33) = a8 & 1;
      *(&v33 + 4) = __PAIR64__(v28, a5);
      v34 = v36;
      v35 = 0;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v32, &v30, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      v23 = Attribute.init<A>(body:value:flags:update:)();
      v24 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>;
      goto LABEL_6;
    }

    *(&v36 + 1) = DWORD2(v36);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v36) = a6;
    *(&v36 + 1) = a7;
    LOBYTE(v37) = a8 & 1;
    DWORD1(v37) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, AsyncThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  else
  {
    outlined copy of DynamicPropertyCache.Fields.Layout(a2, a3, v19);
    LOBYTE(v36) = v16;
    _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm(a2, a3, v16, a5, a1, &type metadata for _ColorMultiplyEffect, &v36);
    v20 = v36;
    v21 = DWORD2(v36);
    v22 = HIDWORD(v36);
    if (HIDWORD(v36))
    {
      v27 = a8 & 1;
      v28 = *(a1 + 24);
      LODWORD(v32) = a6;
      *(&v32 + 1) = a7;
      LOBYTE(v33) = a8 & 1;
      *(&v33 + 4) = __PAIR64__(v28, a5);
      v34 = v36;
      v35 = 0;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

      outlined init with copy of DynamicBody<EnvironmentalBodyAccessor<VariableBlurEffect>, MainThreadFlags>(&v32, &v30, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>);
      type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags> and conformance DynamicBody<A, B>, type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>, protocol conformance descriptor for DynamicBody<A, B>);
      v23 = Attribute.init<A>(body:value:flags:update:)();
      v24 = type metadata accessor for DynamicBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>;
LABEL_6:
      v25 = v24;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v32, v24);
      *a9 = v23;
      LODWORD(v36) = a6;
      *(&v36 + 1) = a7;
      LOBYTE(v37) = v27;
      *(&v37 + 1) = v30;
      BYTE3(v37) = v31;
      *(&v37 + 4) = __PAIR64__(v28, a5);
      *&v38 = v20;
      *(&v38 + 1) = __PAIR64__(v22, v21);
      v39 = 0;
      outlined destroy of ValueActionDispatcher<_ValueActionModifier2<Int>>(&v36, v25);
      *(a9 + 8) = v20;
      *(a9 + 16) = v21 | (v22 << 32);
      *(a9 + 24) = 0;
      return;
    }

    *(&v36 + 1) = DWORD2(v36);
    _DynamicPropertyBuffer.destroy()();
    LODWORD(v36) = a6;
    *(&v36 + 1) = a7;
    LOBYTE(v37) = a8 & 1;
    DWORD1(v37) = a5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>(0);
    lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags> and conformance StaticBody<A, B>, type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ColorMultiplyEffect>, MainThreadFlags>, protocol conformance descriptor for StaticBody<A, B>);
  }

  v26 = Attribute.init<A>(body:value:flags:update:)();

  *a9 = v26;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
}

void type metadata accessor for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<_ShadowEffect>, &type metadata for _ShadowEffect, &protocol witness table for _ShadowEffect, type metadata accessor for EnvironmentalBodyAccessor);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentalBodyAccessor<_ShadowEffect> and conformance EnvironmentalBodyAccessor<A>();
    v7[0] = v3;
    v7[1] = &type metadata for MainThreadFlags;
    v7[2] = v4;
    v7[3] = &protocol witness table for MainThreadFlags;
    v5 = type metadata accessor for StaticBody(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for StaticBody<EnvironmentalBodyAccessor<_ShadowEffect>, MainThreadFlags>);
    }
  }
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA07_ShadowD0V9_ResolvedV_Tt3B5@<X0>(unsigned int a1@<W0>, void *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ShadowEffect._Resolved>, &type metadata for _ShadowEffect._Resolved, &protocol witness table for _ShadowEffect._Resolved, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ShadowEffect._Resolved> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type RendererEffectDisplayList<_ShadowEffect._Resolved> and conformance RendererEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_ShadowEffect._Resolved> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_ShadowEffect._Resolved>, &type metadata for _ShadowEffect._Resolved, &protocol witness table for _ShadowEffect._Resolved, type metadata accessor for RendererEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_ShadowEffect._Resolved> and conformance RendererEffectDisplayList<A>);
  }
}

void lazy protocol witness table accessor for type DrawingGroupDisplayList and conformance DrawingGroupDisplayList()
{
  if (!lazy protocol witness table cache variable for type DrawingGroupDisplayList and conformance DrawingGroupDisplayList)
  {
    swift_getWitnessTable(protocol conformance descriptor for DrawingGroupDisplayList, &unk_1F0064010, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DrawingGroupDisplayList and conformance DrawingGroupDisplayList);
  }
}

uint64_t Image.SymbolRenderingOptionsProvider.resolve(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v2[8];
  v9 = v2[9];
  v10 = v2[10];
  v11 = v2[11];
  outlined init with copy of ImageResolutionContext(a1, v6);
  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6[*(v4 + 32) + 1] = v9;
    if ((v11 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v6[*(v4 + 32)] = v8;
  if ((v11 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v11 & 4) != 0)
  {
LABEL_4:
    v6[*(v4 + 32) + 2] = v10;
  }

LABEL_5:
  (*(*v7 + 80))(v6);
  return outlined destroy of ImageResolutionContext(v6);
}

void type metadata accessor for TransitionBox<IdentityTransition>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for TransitionBox<IdentityTransition>)
  {
    v4 = type metadata accessor for TransitionBox(0, &type metadata for IdentityTransition, &protocol witness table for IdentityTransition, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TransitionBox<IdentityTransition>);
    }
  }
}

void *static StrokeBorderShapeView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = *(a2 + 48);
  v64 = *(a2 + 32);
  v65 = v14;
  v66 = *(a2 + 64);
  v67 = *(a2 + 80);
  v15 = *(a2 + 16);
  v62 = *a2;
  v63 = v15;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v41 = a8;
  v35[1] = v13;
  *&v56 = a3;
  *(&v56 + 1) = a4;
  *&v57 = a5;
  *(&v57 + 1) = a6;
  *&v58 = a7;
  *(&v58 + 1) = a8;
  v16 = type metadata accessor for StrokeBorderShapeView(255, &v56);
  type metadata accessor for _GraphValue(0, v16, v17, v18);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for _StrokedShape(255, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), v21);
  swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>, v22);
  *&v56 = v22;
  *(&v56 + 1) = a4;
  *&v57 = v23;
  *(&v57 + 1) = a7;
  v24 = type metadata accessor for _ShapeView(255, &v56);
  v26 = type metadata accessor for _BackgroundModifier(255, a5, a8, v25);
  v28 = type metadata accessor for ModifiedContent(0, v24, v26, v27);
  _GraphValue.subscript.getter(partial apply for closure #1 in static StrokeBorderShapeView._makeView(view:inputs:), v28, v35);
  v29 = v35[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v50 = v64;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v48 = v62;
  v49 = v63;
  v55 = v67;
  v31 = v64;
  LODWORD(v50) = 0;
  v34 = v29;
  v54[0] = v62;
  v54[1] = v63;
  v54[3] = v65;
  v54[4] = v66;
  v54[2] = v50;
  v44 = v50;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v42 = v62;
  v43 = v63;
  outlined init with copy of _ViewInputs(&v62, &v56);
  outlined init with copy of _ViewInputs(v54, &v56);
  static ModifiedContent<>._makeView(view:inputs:)(&v34, &v42, v24, v26, &protocol witness table for _ShapeView<A, B>, &protocol witness table for _BackgroundModifier<A>, a9);
  v58 = v44;
  v59 = v45;
  v60 = v46;
  v61 = v47;
  v56 = v42;
  v57 = v43;
  outlined destroy of _ViewInputs(&v56);
  LODWORD(v50) = v31;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a9, &v48);
    AGSubgraphEndTreeElement();
  }

  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v42 = v48;
  v43 = v49;
  return outlined destroy of _ViewInputs(&v42);
}

uint64_t getEnumTagSinglePayload for Canvas(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 < a2 && *(a1 + ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 14))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return (*(v4 + 48))();
  }

  v9 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

_BYTE *partial apply for closure #1 in View.symbolVariant(_:)(_BYTE *result)
{
  v2 = *(v1 + 17);
  *result |= *(v1 + 16);
  v3 = result[1];
  if (v2 != 3)
  {
    v3 = v2;
  }

  result[1] = v3;
  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolVariantsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolVariantsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolVariantsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolVariantsKey>>);
    }
  }
}

void specialized StaticBody.updateValue()()
{
  v4 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v50 - v12;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v50 - v16);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v58 = type metadata accessor for ObservationCenter();
    v2 = v18[3];
    *&v57 = v2;
    outlined init with take of Any(&v57, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v48 = v17[2];

    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48 + 1, 1, v17);
    *(v21 + 24) = v49;

    v17 = v49;
    goto LABEL_9;
  }

  v2 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v6 + 56))(v17, 1, 1, v5);
  v51 = v6;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v55 = v17;
  v24 = *(StatusReg + 848);
  *(StatusReg + 848) = v55;
  v25 = *v4;
  v26 = *(v4 + 1);
  v27 = *(v4 + 16);

  Value = AGGraphGetValue();
  v29 = Value[1];
  v30 = Value[2];
  v31 = Value[3];

  specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v32, 1, v25, v26, v27, v29, v30, v31);

  *(StatusReg + 848) = v24;
  v33 = v55;
  v1 = v51;
  v34 = v52;
  outlined init with copy of ObservationTracking._AccessList?(v55, v52, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v1 + 48))(v34, 1, v5) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v35 = v34;
    goto LABEL_12;
  }

  v3 = *(v1 + 32);
  v36 = v54;
  v3(v54, v34, v5);
  (*(v1 + 16))(v53, v36, v5);
  swift_beginAccess();
  v17 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v39 = v17[2];
  v38 = v17[3];
  if (v39 >= v38 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v17);
  }

  v17[2] = v39 + 1;
  v3(v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v39, v53, v5);
  *(v21 + 24) = v17;
  swift_endAccess();
  (*(v1 + 8))(v54, v5);
  v35 = v55;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = *(v21 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v44 = *(v1 + 16);
    v42 = v1 + 16;
    v43 = v44;
    v45 = v40 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v46 = *(v42 + 56);
    v47 = (v42 - 8);
    v55 = *(v21 + 24);

    do
    {
      v43(v8, v45, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v2, v8);
      (*v47)(v8, v5);
      v45 += v46;
      --v41;
    }

    while (v41);
  }

  *(v21 + 24) = v50;
}

{
  v2 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v44[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v44[-v10];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v54 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v53 = v1;
    outlined init with take of Any(&v53, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v52;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    *(v20 + 24) = v13;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  v51 = v16;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = *(StatusReg + 848);
  v47 = v13;
  *(StatusReg + 848) = v51;
  v23 = *v2;
  v24 = *(v2 + 1);
  v45 = *(v2 + 16);

  Value = AGGraphGetValue();
  v26 = *Value;
  v27 = *(Value + 16);

  v29 = v23;
  v30 = v47;
  specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v28, v27, 1, v29, v24, v45, v26);

  *(StatusReg + 848) = v46;
  v31 = v51;
  outlined init with copy of ObservationTracking._AccessList?(v51, v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v30, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v30;
    goto LABEL_12;
  }

  v16 = *(v4 + 32);
  v33 = v50;
  (v16)(v50, v30, v3);
  (*(v4 + 16))(v49, v33, v3);
  v13 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v36 = v13[2];
  v35 = v13[3];
  if (v36 >= v35 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v13);
  }

  v13[2] = v36 + 1;
  (v16)(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, v49, v3);
  *(v20 + 24) = v13;
  (*(v4 + 8))(v50, v3);
  v32 = v51;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v37 = *(v20 + 24);
  v38 = *(v37 + 16);
  if (v38)
  {
    v41 = *(v4 + 16);
    v39 = v4 + 16;
    v40 = v41;
    v42 = v37 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v43 = *(v39 + 56);
    v51 = *(v20 + 24);

    do
    {
      v40(v6, v42, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v39 - 8))(v6, v3);
      v42 += v43;
      --v38;
    }

    while (v38);
  }

  *(v20 + 24) = v48;
}

{
  v2 = v0;
  v45 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v38 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v44 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v43 = v1;
    outlined init with take of Any(&v43, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v43);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v42;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v39 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v38 = v13;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v24 = *AGGraphGetValue();

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v25, v24);

  *(StatusReg + 848) = v23;
  v26 = v38;
  outlined init with copy of ObservationTracking._AccessList?(v16, v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v26, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v26;
    goto LABEL_12;
  }

  v27 = v41;
  v38 = *(v4 + 32);
  (v38)(v41, v26, v3);
  (*(v4 + 16))(v40, v27, v3);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v30 = v2[2];
  v29 = v2[3];
  if (v30 >= v29 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v2);
  }

  v2[2] = v30 + 1;
  (v38)(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, v40, v3);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v41, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v35 = *(v4 + 16);
    v33 = v4 + 16;
    v34 = v35;
    v36 = v31 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v37 = *(v33 + 56);
    v41 = *(v20 + 24);

    do
    {
      v34(v6, v36, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v33 - 8))(v6, v3);
      v36 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v39;
}

{
  v4 = v0;
  v58 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v49 - v12;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v49 - v16);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v57 = type metadata accessor for ObservationCenter();
    v2 = v18[3];
    *&v56 = v2;
    outlined init with take of Any(&v56, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v47 = v17[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v17);
    *(v21 + 24) = v48;

    v17 = v48;
    goto LABEL_9;
  }

  v2 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v6 + 56))(v17, 1, 1, v5);
  v50 = v6;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v54 = v17;
  v24 = *(StatusReg + 848);
  *(StatusReg + 848) = v54;
  v25 = *v4;
  v26 = *(v4 + 1);
  v27 = *(v4 + 16);

  Value = AGGraphGetValue();
  v29 = *(Value + 8);
  v30 = *(Value + 16);

  specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v31, 1, v25, v26, v27, v29, v30);

  *(StatusReg + 848) = v24;
  v32 = v54;
  v1 = v50;
  v33 = v51;
  outlined init with copy of ObservationTracking._AccessList?(v54, v51, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v1 + 48))(v33, 1, v5) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v34 = v33;
    goto LABEL_12;
  }

  v3 = *(v1 + 32);
  v35 = v53;
  v3(v53, v33, v5);
  (*(v1 + 16))(v52, v35, v5);
  swift_beginAccess();
  v17 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v38 = v17[2];
  v37 = v17[3];
  if (v38 >= v37 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v17);
  }

  v17[2] = v38 + 1;
  v3(v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v38, v52, v5);
  *(v21 + 24) = v17;
  swift_endAccess();
  (*(v1 + 8))(v53, v5);
  v34 = v54;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v34, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v39 = *(v21 + 24);
  v40 = *(v39 + 16);
  if (v40)
  {
    v43 = *(v1 + 16);
    v41 = v1 + 16;
    v42 = v43;
    v44 = v39 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v45 = *(v41 + 56);
    v46 = (v41 - 8);
    v54 = *(v21 + 24);

    do
    {
      v42(v8, v44, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v2, v8);
      (*v46)(v8, v5);
      v44 += v45;
      --v40;
    }

    while (v40);
  }

  *(v21 + 24) = v49;
}

{
  v3 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v45 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v53 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v52 = v1;
    outlined init with take of Any(&v52, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v52);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v51;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v43 = v14[2];

    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43 + 1, 1, v14);
    *(v21 + 24) = v44;

    v14 = v44;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v17, 1, 1, v4);
  v46 = v14;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v45 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  v24 = *v3;
  v50 = v17;
  v25 = *(v3 + 1);
  v26 = *(v3 + 16);

  v27 = *(AGGraphGetValue() + 8);

  specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v28, 1, v24, v25, v26, v27);
  v29 = v50;

  *(StatusReg + 848) = v45;
  v30 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v29, v46, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v5 + 48))(v30, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v31 = v30;
    goto LABEL_12;
  }

  v2 = *(v5 + 32);
  v32 = v49;
  v2(v49, v30, v4);
  (*(v5 + 16))(v48, v32, v4);
  swift_beginAccess();
  v14 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v35 = v14[2];
  v34 = v14[3];
  if (v35 >= v34 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v14);
  }

  v14[2] = v35 + 1;
  v2(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v35, v48, v4);
  *(v21 + 24) = v14;
  swift_endAccess();
  (*(v5 + 8))(v49, v4);
  v31 = v50;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v21 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v40 = *(v5 + 16);
    v38 = v5 + 16;
    v39 = v40;
    v41 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v42 = *(v38 + 56);
    v50 = *(v21 + 24);

    do
    {
      v39(v7, v41, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*(v38 - 8))(v7, v4);
      v41 += v42;
      --v37;
    }

    while (v37);
  }

  *(v21 + 24) = v47;
}

void specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7, double a8)
{
  v95 = *MEMORY[0x1E69E9840];
  v75 = type metadata accessor for OSSignpostID();
  v76 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v77 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v68 = v64 - v17;
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
    v86 = v26;
    v87 = v27;
    v88 = v28;
    v89 = v29;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v78) = v30;
    v64[1] = v21;
    v65 = v20;
    v66 = a1;
    v67 = a4;
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
      v40 = v78;
      if (v28)
      {
LABEL_17:
        v82 = v40;
        v80 = _signpostLog;
        v81 = &dword_18D018000;
        v86 = v26;
        v87 = v27;
        v83 = "%{public}@.body [in %{public}@]";
        v84 = 31;
        v85 = 2;
        v79 = v31;
        v41 = v68;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v82, &v81, &v80, &v86, v68, &v83, &v79);
        (*(v76 + 8))(v41, v75);
LABEL_46:

        a4 = v67;
        a1 = v66;
        v20 = v65;
LABEL_47:
        AGGraphClearUpdate();
        v83 = v20;
        v84 = a4;
        (*(*a1 + 120))(&v86, &v83);
        v90 = *&a6;
        v91 = a7;
        v92 = a8;
        v93 = 1056964608;
        v94 = 0;
        AGGraphSetUpdate();
        $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        AGGraphSetOutputValue();

        return;
      }
    }

    else
    {
      swift_once();
      v40 = v78;
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
    v45 = v76 + 16;
    v69 = *(v76 + 16);
    v46 = v69(v77, v68, v75);
    v47 = 0;
    LOBYTE(v83) = 1;
    v73 = 16 * v42;
    v76 = v45;
    v74 = (v45 - 8);
    v72 = v31 + 32;
    v71 = v26;
    v70 = v42;
    do
    {
      v78 = v64;
      MEMORY[0x1EEE9AC00](v46);
      v49 = v64 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      v53 = v72 + 40 * v47;
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
        outlined init with copy of AnyTrackedValue(v53, &v86);
        v55 = v90;
        v56 = *&v91;
        __swift_project_boxed_opaque_existential_1(&v86, v90);
        *(v50 - 1) = CVarArg.kdebugValue(_:)(v43 | v44, v55, v56);
        *v50 = v57 & 1;
        v50 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v86);
        v53 += 40;
        if (!--v42)
        {
          goto LABEL_31;
        }
      }

      LOBYTE(v83) = 0;
LABEL_31:
      v58 = v71;
      if (v71 == 20)
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

      v59 = *v74;
      v60 = v77;
      v61 = v75;
      (*v74)(v77, v75);
      v62 = __swift_project_value_buffer(v61, static OSSignpostID.continuation);
      v46 = v69(v60, v62, v61);
      v42 = v70;
    }

    while ((v83 & 1) != 0);
    v63 = v75;
    v59(v77, v75);
    v59(v68, v63);
    goto LABEL_46;
  }
}

void GraphicsContext.addFilter(_:options:)(__int128 *a1, uint64_t a2)
{
  v159 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v153 = *a1;
  v154 = v3;
  v4 = a1[3];
  v155 = a1[2];
  v156 = v4;
  v5 = a1[4];
  v157 = v5;
  v158 = *(a1 + 10);
  v6 = *(&v153 + 9) | (BYTE11(v153) << 16);
  v7 = v155;
  v8 = HIDWORD(v4);
  v9 = v5;
  v10 = v2;
  switch((*(&v158 + 1) >> 19) & 0x1F)
  {
    case 1uLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddRotationStyle();
      return;
    case 2uLL:
      GraphicsContext.copyOnWrite()();
      RBDrawingStateAddRotation3DStyle();
      return;
    case 3uLL:
      v31 = BYTE4(v155);

      GraphicsContext.copyOnWrite()();
      v32 = *v2;
      v33 = *(*v2 + 32);
      v34 = *(v32 + 40);
      if (v33 == 1)
      {
        v35 = *(v32 + 16);
        v36 = *(v35 + 48);
        v37 = *(v35 + 56);
      }

      else
      {
        v37 = *(v32 + 40);
        v36 = v33;
      }

      *&v147 = v36;
      *(&v147 + 1) = v37;
      v85 = *(*(v153 | (DWORD1(v153) << 32)) + 112);
      outlined init with copy of GraphicsContext.Filter.Storage(&v153, v146);
      v86 = outlined copy of EnvironmentValues?(v33, v34);
      v85(&v147, v86);
      outlined destroy of GraphicsContext.Filter.Storage(&v153);

      if (*(*(v32 + 16) + 64) != 2)
      {
        RBColorFromLinear();
      }

      specialized RBShadowFlags.init(_:)(v31);
      RBDrawingStateAddShadowStyle();
      goto LABEL_127;
    case 4uLL:
      v11 = BYTE8(v4);
      GraphicsContext.copyOnWrite()();
      if (*(*(*v2 + 16) + 64) != 2)
      {
        RBColorFromLinear();
      }

      specialized RBShadowFlags.init(_:)(v11);

      RBDrawingStateAddShadowStyle3();
      return;
    case 5uLL:
      v147 = v155;
      v148 = v4;
      LOBYTE(v149) = v5;
      outlined copy of Path.Storage(v155, *(&v155 + 1), v156, *(&v156 + 1), v5);
      GraphicsContext.copyOnWrite()();
      Path.retainRBPath()();
      *v146 = 0x3FF0000000000000uLL;
      *&v146[16] = 0;
      *&v146[24] = 0x3FF0000000000000;
      *&v146[32] = 0uLL;
      RBDrawingStateAddPathProjectionStyle();
      RBPathRelease();
      goto LABEL_127;
    case 6uLL:
      v54 = *(*v2 + 32);
      v55 = *(*v2 + 40);
      v56 = a2;
      if (v54 == 1)
      {
        v57 = *(*v2 + 16);
        v58 = *(v57 + 48);
        v59 = *(v57 + 56);
      }

      else
      {
        v59 = *(*v2 + 40);
        v58 = *(*v2 + 32);
      }

      v150 = v58;
      v151 = v59;
      v97 = *(*(v153 | (DWORD1(v153) << 32)) + 120);
      outlined init with copy of GraphicsContext.Filter.Storage(&v153, v146);
      v98 = outlined copy of EnvironmentValues?(v54, v55);
      v97(&v147, &v150, v98);

      GraphicsContext.copyOnWrite()();
      v99 = *v2;
      v100 = *(*(*v2 + 16) + 64);
      v102 = DWORD1(v147);
      v101 = v147;
      v104 = HIDWORD(v147);
      v103 = DWORD2(v147);
      if (v100 == 2)
      {
        v105 = v148;
        v106 = (v56 & 1) == 0;
LABEL_84:
        v107 = 1;
        goto LABEL_111;
      }

      RBColorFromLinear();
      v100 = *(*(v99 + 16) + 64);
      v105 = v148;
      v106 = (v56 & 1) == 0;
      if (v100 == 2)
      {
        goto LABEL_84;
      }

      v107 = 2;
LABEL_111:
      if (v106)
      {
        v123 = v107;
      }

      else
      {
        v123 = 1;
      }

      goto LABEL_114;
    case 7uLL:
      v38 = a2;
      v14 = DWORD1(v153);
      v13 = v153;
      v15 = BYTE8(v153) | (v6 << 8);
      v16 = HIDWORD(v153);
      GraphicsContext.copyOnWrite()();
      v39 = *v2;
      v18 = *(*(*v2 + 16) + 64);
      if (v18 == 2)
      {
        v19 = *&v154;
        v40 = (v38 & 1) == 0;
LABEL_77:
        v91 = 1;
        goto LABEL_102;
      }

      RBColorFromLinear();
      v13 = v87;
      v14 = v88;
      v15 = v89;
      v16 = v90;
      v18 = *(*(v39 + 16) + 64);
      v19 = *&v154;
      v40 = (v38 & 1) == 0;
      if (v18 == 2)
      {
        goto LABEL_77;
      }

      v91 = 2;
LABEL_102:
      if (v40)
      {
        v121 = v91;
      }

      else
      {
        v121 = 1;
      }

      goto LABEL_100;
    case 8uLL:
      v61 = *(*v2 + 32);
      v62 = *(*v2 + 40);
      v63 = a2;
      if (v61 == 1)
      {
        v64 = *(*v2 + 16);
        v65 = *(v64 + 48);
        v66 = *(v64 + 56);
      }

      else
      {
        v66 = *(*v2 + 40);
        v65 = *(*v2 + 32);
      }

      v150 = v65;
      v151 = v66;
      v108 = *(*(v153 | (DWORD1(v153) << 32)) + 120);
      outlined init with copy of GraphicsContext.Filter.Storage(&v153, v146);
      v109 = outlined copy of EnvironmentValues?(v61, v62);
      v108(&v147, &v150, v109);

      GraphicsContext.copyOnWrite()();
      v110 = *v2;
      v100 = *(*(*v2 + 16) + 64);
      v102 = DWORD1(v147);
      v101 = v147;
      v104 = HIDWORD(v147);
      v103 = DWORD2(v147);
      if (v100 == 2)
      {
        v105 = v148;
        v111 = (v63 & 1) == 0;
LABEL_89:
        v112 = 1;
        goto LABEL_116;
      }

      RBColorFromLinear();
      v100 = *(*(v110 + 16) + 64);
      v105 = v148;
      v111 = (v63 & 1) == 0;
      if (v100 == 2)
      {
        goto LABEL_89;
      }

      v112 = 2;
LABEL_116:
      if (v111)
      {
        v123 = v112;
      }

      else
      {
        v123 = 1;
      }

LABEL_114:
      *v146 = __PAIR64__(v102, v101);
      *&v146[8] = __PAIR64__(v104, v103);
      *&v146[16] = __PAIR64__(v105, v100);
      *&v146[24] = v123;
      RBDrawingStateAddStyle();
      goto LABEL_127;
    case 9uLL:
      v12 = a2;
      v14 = DWORD1(v153);
      v13 = v153;
      v15 = BYTE8(v153) | (v6 << 8);
      v16 = HIDWORD(v153);
      GraphicsContext.copyOnWrite()();
      v17 = *v2;
      v18 = *(*(*v2 + 16) + 64);
      if (v18 == 2)
      {
        v19 = *&v154;
        v20 = (v12 & 1) == 0;
LABEL_71:
        v84 = 1;
        goto LABEL_97;
      }

      RBColorFromLinear();
      v13 = v80;
      v14 = v81;
      v15 = v82;
      v16 = v83;
      v18 = *(*(v17 + 16) + 64);
      v19 = *&v154;
      v20 = (v12 & 1) == 0;
      if (v18 == 2)
      {
        goto LABEL_71;
      }

      v84 = 2;
LABEL_97:
      if (v20)
      {
        v121 = v84;
      }

      else
      {
        v121 = 1;
      }

LABEL_100:
      *v146 = __PAIR64__(v14, v13);
      *&v146[8] = __PAIR64__(v16, v15);
      *&v146[16] = __PAIR64__(LODWORD(v19), v18);
      *&v146[24] = v121;
      RBDrawingStateAddStyle();
      return;
    case 0xAuLL:
      *v146 = v153;
      v146[8] = BYTE8(v153);
      *&v146[9] = *(&v153 + 9);
      v146[11] = BYTE2(v6);
      *&v146[12] = HIDWORD(v153);
      *&v146[16] = v154;
      *&v146[32] = v155;
      *&v146[48] = v4;
      *&v146[64] = v5;
      GraphicsContext.copyOnWrite()();
      RBDrawingStateAddColorMatrixFilter();
      return;
    case 0xBuLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddHueRotationFilter();
      return;
    case 0xCuLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddSaturationFilter();
      return;
    case 0xDuLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddBrightnessFilter();
      return;
    case 0xEuLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddContrastFilter();
      return;
    case 0xFuLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddColorInvertFilter();
      return;
    case 0x10uLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddGrayscaleFilter();
      return;
    case 0x11uLL:
      if (COERCE_DOUBLE(v153 | (DWORD1(v153) << 32)) > 0.0)
      {
        GraphicsContext.copyOnWrite()();

        RBDrawingStateAddBlurFilter();
      }

      return;
    case 0x12uLL:
      *&v60 = v153 | (DWORD1(v153) << 32);
      if (v60 > 0.0)
      {
        v146[0] = BYTE8(v153);
        *&v146[1] = *(&v153 + 9);
        v146[3] = BYTE2(v6);
        *&v146[4] = HIDWORD(v153);
        *&v146[8] = v154;
        *&v146[24] = v155;
        *&v146[40] = v4;
        *&v146[56] = v9;
        v146[72] = v158;
        GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(v146, (2 * (a2 & 1)) | ((*(&v158 + 1) | ((*(&v158 + 5) | (HIBYTE(v158) << 16)) << 32)) >> 24), v60);
      }

      return;
    case 0x13uLL:
      v67 = *(&v153 + 1);
      v68 = *(*v2 + 32);
      v69 = *(*v2 + 40);
      v70 = v153;
      if (v68 == 1)
      {
        v71 = *(*v2 + 16);
        v72 = *(v71 + 48);
        v73 = *(v71 + 56);
      }

      else
      {
        v73 = *(*v2 + 40);
        v72 = *(*v2 + 32);
      }

      v150 = v72;
      v151 = v73;
      v113 = *(*(BYTE8(v153) | ((*&v6 & 0xFFFFFFLL) << 8) | (HIDWORD(v153) << 32)) + 120);
      outlined init with copy of GraphicsContext.Filter.Storage(&v153, v146);
      v114 = outlined copy of EnvironmentValues?(v68, v69);
      v113(&v147, &v150, v114);

      GraphicsContext.copyOnWrite()();
      if (v67 >= 1.0)
      {
        v67 = INFINITY;
      }

      v115 = *v2;
      v116 = *(*(*v2 + 16) + 64);
      v118 = DWORD1(v147);
      v117 = v147;
      v120 = HIDWORD(v147);
      v119 = DWORD2(v147);
      if (v116 != 2)
      {
        RBColorFromLinear();
        v116 = *(*(v115 + 16) + 64);
      }

      v146[0] = 3;
      *&v146[4] = __PAIR64__(LODWORD(v67), v70);
      *&v146[12] = v117;
      *&v146[16] = __PAIR64__(v119, v118);
      *&v146[24] = __PAIR64__(v116, v120);
      *&v146[32] = v148;
      RBDrawingStateAddStyle();
      goto LABEL_127;
    case 0x14uLL:
      outlined copy of EitherGradient(v153, BYTE8(v153) & 1);
      v42 = v2;
      GraphicsContext.copyOnWrite()();
      if (BYTE8(v153))
      {
        goto LABEL_67;
      }

      v43 = *((v153 | (DWORD1(v153) << 32)) + 0x10);
      if (v43 == 1)
      {
        v44 = ((v153 | (DWORD1(v153) << 32)) + 32);
LABEL_120:
        v124 = *v44;
        v125 = *v42;
        v126 = *(*v42 + 32);
        v127 = *(v125 + 40);
        if (v126 == 1)
        {
          v128 = *(v125 + 16);
          v129 = *(v128 + 48);
          v130 = *(v128 + 56);
        }

        else
        {
          v130 = *(v125 + 40);
          v129 = v126;
        }

        *v146 = v129;
        *&v146[8] = v130;
        v131 = *(*v124 + 120);

        v132 = outlined copy of EnvironmentValues?(v126, v127);
        v131(&v150, v146, v132);

        v133 = *(*(v125 + 16) + 64);
        v135 = HIDWORD(v150);
        v134 = v150;
        v137 = HIDWORD(v151);
        v136 = v151;
        if (v133 != 2)
        {
          RBColorFromLinear();
          v133 = *(*(v125 + 16) + 64);
        }

        *&v147 = __PAIR64__(v135, v134);
        *(&v147 + 1) = __PAIR64__(v137, v136);
        *&v148 = __PAIR64__(v135, v134);
        *(&v148 + 1) = __PAIR64__(v137, v136);
        v146[0] = 3;
        *&v146[4] = 0x3F80000000000000;
        *&v146[16] = 2;
        *&v146[24] = &v147;
        *&v146[32] = __PAIR64__(v152, v133);
        *&v146[48] = 0;
        RBDrawingStateAddStyle();
        goto LABEL_126;
      }

      if (!v43)
      {
        if (one-time initialization token for clear != -1)
        {
          swift_once();
        }

        v44 = &static Color.clear;
        goto LABEL_120;
      }

LABEL_67:
      *&v147 = v153 | (DWORD1(v153) << 32);
      BYTE8(v147) = BYTE8(v153) & 1;
      v74 = *(*v2 + 32);
      v75 = *(*v42 + 40);
      v76 = *(*v42 + 16);
      v77 = v74;
      v78 = v75;
      if (v74 == 1)
      {
        v77 = *(v76 + 48);
        v78 = *(v76 + 56);
      }

      *v146 = v77;
      *&v146[8] = v78;
      v79 = *(v76 + 64);
      outlined copy of EnvironmentValues?(v74, v75);
      specialized withGradient(_:in:colorSpace:do:)(&v147, v146, v79, v42, a2);

LABEL_126:

LABEL_127:
      outlined destroy of GraphicsContext.Filter.Storage(&v153);
      return;
    case 0x15uLL:
      v45 = a2;
      v47 = DWORD1(v153);
      v46 = v153;
      v48 = BYTE8(v153) | (v6 << 8);
      v49 = HIDWORD(v153);
      GraphicsContext.copyOnWrite()();
      v50 = *v2;
      v51 = *(*(*v2 + 16) + 64);
      if (v51 == 2)
      {
        v52 = *&v154;
        v53 = (v45 & 1) == 0;
LABEL_79:
        v96 = 1;
        goto LABEL_106;
      }

      RBColorFromLinear();
      v46 = v92;
      v47 = v93;
      v48 = v94;
      v49 = v95;
      v51 = *(*(v50 + 16) + 64);
      v52 = *&v154;
      v53 = (v45 & 1) == 0;
      if (v51 == 2)
      {
        goto LABEL_79;
      }

      v96 = 2;
LABEL_106:
      if (v53)
      {
        v122 = v96;
      }

      else
      {
        v122 = 1;
      }

      *v146 = *(&v154 + 4);
      *&v146[8] = __PAIR64__(v47, v46);
      *&v146[16] = __PAIR64__(v49, v48);
      *&v146[24] = __PAIR64__(LODWORD(v52), v51);
      *&v146[32] = v122;
      RBDrawingStateAddStyle();
      return;
    case 0x16uLL:
      GraphicsContext.copyOnWrite()();
      *v146 = v153;
      v146[8] = BYTE8(v153);
      *&v146[9] = *(&v153 + 9);
      v146[11] = BYTE2(v6);
      *&v146[12] = HIDWORD(v153);
      RBDrawingStateAddLuminanceCurveFilter();
      return;
    case 0x17uLL:
      v143 = v4;
      v145 = DWORD1(v4);
      v139 = DWORD2(v4);
      GraphicsContext.copyOnWrite()();
      *v146 = v153;
      v146[8] = BYTE8(v153);
      *&v146[9] = *(&v153 + 9);
      v146[11] = BYTE2(v6);
      *&v146[12] = HIDWORD(v153);
      *&v146[16] = v154;
      *&v146[32] = v155;
      *&v146[48] = __PAIR64__(v145, v143);
      *&v146[56] = __PAIR64__(v8, v139);
      RBDrawingStateAddRGBACurvesFilter();
      return;
    case 0x18uLL:
      v140 = DWORD2(v155);
      v141 = HIDWORD(v155);
      v138 = DWORD2(v4);
      v142 = v4;
      v144 = DWORD1(v4);
      v21 = v153 | (DWORD1(v153) << 32);
      v22 = v154 | (DWORD1(v154) << 32);
      v23 = *(*v2 + 32);
      v24 = *(*v10 + 40);
      v25 = v23;
      v26 = v24;
      if (v23 == 1)
      {
        v27 = *(*v10 + 16);
        v25 = *(v27 + 48);
        v26 = *(v27 + 56);

        v21 = v153 | (DWORD1(v153) << 32);
        v22 = v154 | (DWORD1(v154) << 32);
        v7 = v155;
      }

      *&v147 = v21;
      BYTE8(v147) = BYTE8(v153);
      *(&v147 + 9) = *(&v153 + 9);
      BYTE11(v147) = BYTE2(v6);
      HIDWORD(v147) = HIDWORD(v153);
      *&v148 = v22;
      *(&v148 + 1) = DWORD2(v154) | (HIDWORD(v154) << 32);
      v149 = v7;
      v150 = v25;
      v151 = v26;
      v28 = v7;
      outlined init with copy of GraphicsContext.Filter.Storage(&v153, v146);
      outlined copy of EnvironmentValues?(v23, v24);
      v29 = Shader.makeRBShader(in:)(&v150);
      outlined consume of EnvironmentValues?(v150, v151);
      if (!v29)
      {
        goto LABEL_127;
      }

      v30 = v29;
      GraphicsContext.copyOnWrite()();
      *v146 = 0uLL;
      *&v146[16] = v138 | (v8 << 32);
      *&v146[24] = v9;
      *&v147 = v29;
      *(&v147 + 1) = v140 | (v141 << 32);
      *&v148 = v142 | (v144 << 32);
      DWORD2(v148) = v28;
      Shader.ResolvedShader.rbFilterFlags.getter();
      RBDrawingStateAddShaderFilter();

      outlined destroy of GraphicsContext.Filter.Storage(&v153);
      return;
    case 0x19uLL:
      GraphicsContext.copyOnWrite()();

      RBDrawingStateAddLuminanceToAlphaFilter();
      return;
    default:
      *v146 = v153;
      v146[8] = BYTE8(v153);
      *&v146[9] = *(&v153 + 9);
      v146[11] = BYTE2(v6);
      *&v146[12] = HIDWORD(v153);
      *&v146[16] = v154;
      *&v146[32] = v155;
      *&v146[48] = v4;
      *&v146[64] = v5;
      GraphicsContext.copyOnWrite()();
      RBDrawingState.addProjectionTransform(_:)(v146, *(*v2 + 24));
      return;
  }
}

void GraphicsContext.Storage.Shared.setShading(_:in:)(__int128 *a1, uint64_t *a2)
{
  v3 = v2;
  v77 = *MEMORY[0x1E69E9840];
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v9);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[1];
  v73 = *a1;
  v74 = v15;
  v16 = a1[3];
  v75 = a1[2];
  *v76 = v16;
  *&v76[9] = *(a1 + 57);
  v17 = *a2;
  v18 = a2[1];
  v19 = *(&v73 + 9) | (BYTE11(v73) << 16);
  v20 = v75;
  HIDWORD(v21) = *&v76[20];
  if (v76[24] > 3u)
  {
    if (v76[24] > 5u)
    {
      if (v76[24] != 6)
      {
        v55 = v10;
        if (v76[24] == 7)
        {
          v54 = v73 | (DWORD1(v73) << 32);
          *&v37 = BYTE8(v73) | ((*&v19 & 0xFFFFFFLL) << 8) | (HIDWORD(v73) << 32);
          v38 = v74;
          v39 = v75;
          v40 = *v76;
          v41 = type metadata accessor for Text.Style(0);
          v42 = *(*(v41 - 8) + 56);
          v42(v8, 1, 1, v41);
          v52 = *MEMORY[0x1E698D3F8];
          v14[2] = 0;
          v53 = v3;
          v43 = v55;
          v51 = v55[6];
          v42(v14 + v51, 1, 1, v41);
          v44 = v43[7];
          v45 = v14 + v43[8];
          *v45 = 520;
          v45[2] = 2;
          *(v14 + v43[9]) = 3;
          v46 = v43[10];
          *(v14 + v46) = 1;
          *v14 = v17;
          v14[1] = v18;
          outlined init with copy of GraphicsContext.Shading.Storage(&v73, &v64);

          outlined assign with take of Text.Style?(v8, v14 + v51);
          *(v14 + v44) = v52;
          *(v14 + v46) = 0;
          v47 = v53;
          (*(*v54 + 80))(&v64, v14);
          outlined init with copy of GraphicsImage(&v64, &v69);
          outlined destroy of Image.Resolved(&v64);
          v62 = v67[1];
          v63[0] = v68[0];
          *(v63 + 12) = *(v68 + 12);
          *v60 = v64;
          *&v60[16] = v65;
          v61[0] = v66;
          v61[1] = v67[0];
          RBFill.setRepeatedImage(_:origin:scale:sourceRect:in:)(v60, *(v47 + 64), v37, *&v38, *(&v40 + 1), *(&v38 + 1), *&v39, *(&v39 + 1), *&v40);
          outlined destroy of GraphicsContext.Shading.Storage(&v73);
          v71[2] = v62;
          v72[0] = v63[0];
          *(v72 + 12) = *(v63 + 12);
          v69 = *v60;
          v70 = *&v60[16];
          v71[0] = v61[0];
          v71[1] = v61[1];
          outlined destroy of GraphicsImage(&v69);
          *(v47 + 272) = 0;

          _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v14, type metadata accessor for ImageResolutionContext);
          return;
        }

        goto LABEL_32;
      }

      *&v69 = v73;
      BYTE8(v69) = BYTE8(v73);
      *(&v69 + 9) = *(&v73 + 9);
      BYTE11(v69) = BYTE2(v19);
      HIDWORD(v69) = HIDWORD(v73);
      v70 = v74;
      v71[0] = v75;
      *&v71[1] = *v76;
      WORD4(v71[1]) = *&v76[8];
      v56 = v17;
      v57 = v18;
      v31 = *(**v76 + 120);
      v32 = a1[1];
      v64 = *a1;
      v65 = v32;
      v33 = a1[3];
      v66 = a1[2];
      v67[0] = v33;
      *(v67 + 9) = *(a1 + 57);
      outlined init with copy of MeshGradient(&v64, v60);
      v31(&v58, &v56);
      *v60 = v69;
      *&v60[16] = v70;
      v61[0] = v71[0];
      *(v61 + 10) = *(v71 + 10);
      v56 = v17;
      v57 = v18;

      specialized MeshGradient.withResolvedColors(in:_:)(&v56, v60, &v58, v3, &v69);
      outlined destroy of GraphicsContext.Shading.Storage(&v73);
LABEL_27:

      return;
    }

    if (v76[24] != 5)
    {
      goto LABEL_32;
    }

    v69 = v74;
    v70 = v75;
    v71[0] = *v76;
    LOBYTE(v71[1]) = v76[16];
    v35 = *(v3 + 64);
    if ((BYTE8(v73) & 1) == 0)
    {
      v36 = *((v73 | (DWORD1(v73) << 32)) + 0x10);
      if (v36 == 1)
      {
        outlined init with copy of GraphicsContext.Shading.Storage(&v73, &v64);
LABEL_30:

        *&v64 = v17;
        *(&v64 + 1) = v18;
        GraphicsContext.Storage.Shared.setColor(_:in:)(v49, &v64, v50);
        outlined destroy of GraphicsContext.Shading.Storage(&v73);
        goto LABEL_27;
      }

      if (!v36)
      {
        outlined copy of EitherGradient(v73, 0);
        if (one-time initialization token for clear != -1)
        {
          swift_once();
        }

        goto LABEL_30;
      }
    }

    v48 = HIDWORD(*&v76[16]);
    *v60 = v73 | (DWORD1(v73) << 32);
    v60[8] = BYTE8(v73) & 1;
    *&v64 = v17;
    *(&v64 + 1) = v18;

    specialized withGradient(_:in:colorSpace:do:)(v60, &v64, v35, v3, &v69, v48);
    goto LABEL_27;
  }

  if (v76[24] > 2u)
  {
    *v60 = *(&v75 + 1);
    *&v60[8] = *v76;
    *&v60[24] = *&v76[16];
    *&v69 = v73 | (DWORD1(v73) << 32);
    BYTE8(v69) = BYTE8(v73);
    BYTE11(v69) = BYTE2(v19);
    *(&v69 + 9) = *(&v73 + 9);
    HIDWORD(v69) = HIDWORD(v73);
    v70 = v74;
    LODWORD(v71[0]) = v75;
    v58 = v17;
    v59 = v18;
    outlined init with copy of GraphicsContext.Shading.Storage(&v73, &v64);

    v34 = Shader.makeRBShader(in:)(&v58);
    [*(v3 + 40) setShader:v34 bounds:v60 flags:{v20 & 1, outlined consume of EnvironmentValues?(v58, v59)}];

LABEL_13:
    outlined destroy of GraphicsContext.Shading.Storage(&v73);
    return;
  }

  if (v76[24] != 1)
  {
    if (v76[24] == 2)
    {
      LODWORD(v16) = DWORD1(v73);
      LODWORD(v21) = v73;
      LODWORD(v11) = BYTE8(v73) | (v19 << 8);
      LODWORD(v12) = HIDWORD(v73);
      [*(v3 + 40) setColor:1 colorSpace:{v21, *&v16, v11, v12}];
      *(v3 + 272) = 0;

      return;
    }

LABEL_32:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22 = v73 | (DWORD1(v73) << 32);
  v23 = *(v3 + 272);
  if (!v23 || v23 != v22)
  {
    v24 = *(v3 + 40);
    *&v69 = v17;
    *(&v69 + 1) = v18;
    v25 = *(*v22 + 120);
    outlined init with copy of GraphicsContext.Shading.Storage(&v73, &v64);

    v25(&v64, &v69);
    LODWORD(v27) = DWORD1(v64);
    LODWORD(v26) = v64;
    LODWORD(v29) = HIDWORD(v64);
    LODWORD(v28) = DWORD2(v64);
    if (*(v3 + 64) != 2)
    {
      RBColorFromLinear();
    }

    [v24 setColor_];
    LODWORD(v30) = v65;
    [v24 setHeadroom_];
    *(v3 + 272) = v22;

    goto LABEL_13;
  }
}

double static GraphicsContext.Shading.radialGradient(_:center:startRadius:endRadius:options:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = a3;
  *(a4 + 68) = a2;
  *(a4 + 72) = 5;

  return result;
}

{
  *a4 = a1;
  *(a4 + 8) = 1;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = a3;
  *(a4 + 68) = a2;
  *(a4 + 72) = 5;

  return result;
}

void specialized withGradient(_:in:colorSpace:do:)(uint64_t a1, double *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v81 = *MEMORY[0x1E69E9840];
  v69 = a4;
  v70 = a5;
  v71 = a6;
  v10 = *a1;
  v12 = *a2;
  v11 = *(a2 + 1);
  if (*(a1 + 8))
  {
    v78 = *a2;
    v79 = v11;
    v13 = *(*v10 + 112);

    v13(&v72, &v78);
    v78 = v72;
    LOBYTE(v79) = v73;
    HIDWORD(v79) = HIDWORD(v73);
    LOBYTE(v80) = v74;

    specialized withGradient(_:in:do:)(&v78, a3, a4, a5, a6, closure #1 in GraphicsContext.Storage.Shared.setGradient(_:geometry:options:in:colorSpace:)partial apply, partial apply for closure #1 in withGradient(_:in:do:), partial apply for closure #2 in withGradient(_:in:do:));

    return;
  }

  v14 = v10[2];
  v66 = 0.0;
  v67 = 1;
  MEMORY[0x1EEE9AC00](a1);
  v56[8] = v10;
  *&v56[9] = v12;
  v56[10] = v11;
  v57 = a3;
  v58 = &v66;
  MEMORY[0x1EEE9AC00](v15);
  v56[2] = partial apply for closure #1 in GraphicsContext.Storage.Shared.setGradient(_:geometry:options:in:colorSpace:);
  v56[3] = &v68;
  v56[4] = v14;
  v56[5] = v17;
  if (v14)
  {
    v65 = v16;
    v64 = v59;
    if (!(v14 >> 59))
    {
      v18 = a3;
      v61 = a6;
      v62 = a5;

      if ((16 * v14) >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v53 = swift_slowAlloc();
          closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v53, v14, v14, 1, partial apply for closure #1 in withGradient(_:in:colorSpace:do:), v65, partial apply for closure #2 in withGradient(_:in:colorSpace:do:), v56);
          MEMORY[0x193AC4820](v53, -1, -1);
LABEL_27:

          return;
        }
      }

      v63 = v56;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      if (v14 >= 0x81)
      {
        v54 = v56 - v21;
        v20 = swift_stdlib_isStackAllocationSafe();
        if ((v20 & 1) == 0)
        {
          v55 = swift_slowAlloc();
          closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v55, v14, v14, partial apply for closure #1 in withGradient(_:in:colorSpace:do:), v65, v54, v14, 1, partial apply for closure #2 in withGradient(_:in:colorSpace:do:));
          MEMORY[0x193AC4820](v55, -1, -1);
          goto LABEL_27;
        }
      }

      MEMORY[0x1EEE9AC00](v20);
      v65 = v56 - v24;
      if (v14 <= v10[2])
      {
        v59[1] = v22;
        v60 = a4;
        v25 = 0;
        v26 = v10 + 5;
        v59[0] = v23;
        v27 = (v23 + 8);
        do
        {
          v28 = *(v26 - 1);
          v72 = v12;
          v73 = v11;
          v29 = *(*v28 + 120);

          v29(&v78, &v72);

          v31 = HIDWORD(v78);
          v30 = LODWORD(v78);
          v33 = HIDWORD(v79);
          v32 = v79;
          if (v18 != 2)
          {
            RBColorFromLinear();
          }

          *(v27 - 2) = v30;
          *(v27 - 1) = v31;
          *v27 = v32;
          v27[1] = v33;
          v34 = v80;
          if ((v67 & 1) == 0 && v66 > v80)
          {
            v34 = v66;
          }

          v66 = v34;
          v67 = 0;
          v35 = *v26;
          v26 += 2;
          *(v65 + 8 * v25) = v35;
          v27 += 4;
          ++v25;
        }

        while (v14 != v25);
        v36 = v66;
        v37 = RBGradientFlags.union(_:)(v61, 0);
        v38 = *v62;
        v39 = *(v62 + 8);
        v40 = *(v62 + 16);
        v41 = *(v62 + 24);
        v42 = *(v62 + 32);
        v43 = *(v62 + 40);
        v44 = *(v62 + 48);
        v45 = v60;
        v46 = *(v60 + 40);
        if (v44 > 2)
        {
          if (v44 == 3)
          {
            v48 = *v62;
            v49 = *(v62 + 8);
            v50 = *(v62 + 16);
            [*(v60 + 40) setRadialGradientCenter:v14 startRadius:v59[0] endRadius:v65 stopCount:v37 colors:0.0 locations:0.0 flags:{*(v62 + 32), *(v62 + 40)}];
            v82.origin.x = v48;
            v82.origin.y = v49;
            v82.size.width = v50;
            v82.size.height = v41;
            Width = CGRectGetWidth(v82);
            v83.origin.x = v48;
            v83.origin.y = v49;
            v83.size.width = v50;
            v83.size.height = v41;
            Height = CGRectGetHeight(v83);
            v72 = Width;
            v73 = 0;
            v74 = 0;
            v75 = Height;
            v76 = v48;
            v77 = v49;
            [v46 concat_];
          }

          else if (v44 == 4)
          {
            [*(v60 + 40) setConicGradientCenter:v14 angle:v59[0] stopCount:v65 colors:v37 locations:v38 flags:{v39, v40}];
          }

          else
          {
            [*(v60 + 40) setAngularGradientCenter:v14 startAngle:v59[0] endAngle:0 stopCount:v65 colors:v37 colorSpace:v38 locations:v39 flags:{v40, *(v62 + 24), v42, v43}];
          }
        }

        else if (*(v62 + 48))
        {
          if (v44 == 1)
          {
            [*(v60 + 40) setRadialGradientCenter:v14 startRadius:v59[0] endRadius:v65 stopCount:v37 colors:v38 locations:v39 flags:{v40, *(v62 + 24), v42, v43}];
          }

          else
          {
            [*(v60 + 40) setRadialGradientStartCenter:v14 startRadius:v59[0] endCenter:v65 endRadius:v37 stopCount:v38 colors:v39 locations:v40 flags:{*(v62 + 24), v42, v43}];
          }
        }

        else
        {
          [*(v60 + 40) setAxialGradientStartPoint:v14 endPoint:v59[0] stopCount:v65 colors:v37 locations:v38 flags:{v39, v40, *(v62 + 24), v42, v43}];
        }

        *&v47 = v36;
        [v46 setHeadroom_];
        *(v45 + 272) = 0;

        goto LABEL_27;
      }

      __break(1u);
    }

    __break(1u);
  }
}

double outlined consume of EitherGradient(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t View.drawingGroup(opaque:colorMode:)()
{
  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  return View.modifier<A>(_:)();
}

uint64_t initializeWithCopy for StrokeBorderShapeView(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 16;
  (*v5)();
  v7 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9 + 16;
  v30 = a3[3];
  v11 = *(v30 - 8);
  v12 = *(v11 + 80);
  v32 = a3[4];
  v13 = *(v32 - 8);
  v14 = *(v13 + 80);
  v15 = v14 & 0xF8 | 7;
  v16 = (v14 | *(v9 + 80)) & 0xF8 | v12 | 7;
  v17 = v7 + v16;
  v18 = (v7 + v16 + a1) & ~v16;
  v19 = (v17 + a2) & ~v16;
  (*(v9 + 16))(v18, v19, AssociatedTypeWitness);
  v20 = *(v10 + 48) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);
  *(v21 + 12) = *(v22 + 12);
  *(v21 + 16) = *(v22 + 16);
  *(v21 + 24) = *(v22 + 24);
  *(v21 + 32) = *(v22 + 32);
  v23 = (v20 & 0xFFFFFFFFFFFFFFF8) + v12 + 40;
  v24 = *(v11 + 16);

  v24((v23 + v18) & ~v12, (v23 + v19) & ~v12, v30);
  v25 = *(v11 + 64);
  *(v25 + ((v23 + v18) & ~v12)) = *(v25 + ((v23 + v19) & ~v12));
  v26 = (v23 & ~v12) + v25 + v15 + 2;
  v27 = (v26 + v18) & ~v15;
  v28 = (v26 + v19) & ~v15;
  (*(v13 + 16))(v27, v28, v32);
  *((*(v13 + 64) + 7 + v27) & 0xFFFFFFFFFFFFFFF8) = *((*(v13 + 64) + 7 + v28) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t implicit closure #1 in static AnchorGeometryTransformModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v11[0] = a1;
  v11[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  v14 = type metadata accessor for AnchorGeometryTransform(0, a3, a4, v6);
  swift_getWitnessTable(protocol conformance descriptor for AnchorGeometryTransform<A>, v14);
  v15 = v7;
  v8 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in Attribute.init<A>(_:), v12, v14, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return AssociatedTypeWitness;
}

uint64_t AnyTransition.animation(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v8[0] = partial apply for closure #1 in AnyTransition.animation(_:);
  v8[1] = v4;
  v9 = 0;
  v5 = *(*a2 + 80);

  result = v5(v8, &unk_1F00ACE08, &protocol witness table for AnyTransition.FilterVisitor);
  v7 = v9;
  if (v9)
  {

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18D2B9E54()
{

  return swift_deallocObject();
}

void static TupleView._makeView(view:inputs:)(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[3];
  v25 = a2[2];
  v26 = v7;
  v27 = a2[4];
  v28 = *(a2 + 20);
  v8 = a2[1];
  v23 = *a2;
  v24 = v8;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5(a3, v21);
  v9 = *(*v21 + 16);
  if (v9 == 1)
  {
    *&v21[40] = v25;
    *&v21[56] = v26;
    *&v21[72] = v27;
    *&v21[8] = v23;
    *&v21[24] = v24;
    *&v21[88] = v28;
    *v21 = v6;
    v22 = 0uLL;
    outlined init with copy of _ViewInputs(&v23, v20);
    Unary = type metadata accessor for TupleView.MakeUnary(0, a3, v11, v12);
    TypeConformance<>.visitType<A>(visitor:)(v21, Unary, &protocol witness table for TupleView<A>.MakeUnary);
    v14 = v22;
    if (v22)
    {
      v15 = DWORD2(v22);
      v16 = HIDWORD(*(&v22 + 1));

      *a4 = v14;
      *(a4 + 8) = v15;
      *(a4 + 12) = v16;
      v20[4] = *&v21[64];
      v20[5] = *&v21[80];
      v20[6] = v22;
      v20[0] = *v21;
      v20[1] = *&v21[16];
      v20[2] = *&v21[32];
      v20[3] = *&v21[48];
      (*(*(Unary - 8) + 8))(v20, Unary);
    }

    else
    {
      __break(1u);
    }
  }

  else if (v9)
  {

    v19 = type metadata accessor for TupleView(0, a3, v17, v18);
    LODWORD(v20[0]) = v6;
    *&v21[32] = v25;
    *&v21[48] = v26;
    *&v21[64] = v27;
    *&v21[80] = v28;
    *v21 = v23;
    *&v21[16] = v24;
    static View.makeImplicitRoot(view:inputs:)(v20, v21, v19, &protocol witness table for TupleView<A>, a4);
  }

  else
  {

    *a4 = MEMORY[0x1E69E7CC0];
    v10 = *MEMORY[0x1E698D3F8];
    *(a4 + 8) = 0;
    *(a4 + 12) = v10;
  }
}

void *static AsymmetricTransition.properties.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  (*(a2 + 32))(&v9 + 1);
  v7 = BYTE1(v9);
  result = (*(a3 + 32))(&v9, a1, a3);
  *a4 = (v7 | v9) & 1;
  return result;
}

uint64_t static _DrawingGroupEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, void, void)@<X2>, void *a4@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v61 = *a2;
  v62 = v5;
  v6 = *(a2 + 48);
  v63 = *(a2 + 32);
  v64 = v6;
  v7 = *(a2 + 48);
  v65 = *(a2 + 64);
  v57 = *(a2 + 32);
  v58 = v7;
  v59 = *(a2 + 64);
  v8 = *(a2 + 16);
  v55 = *a2;
  v56 = v8;
  v51 = v63;
  v52 = v6;
  v53 = *(a2 + 64);
  v38 = *a1;
  v66 = *(a2 + 80);
  v9 = v61;
  v10 = v5;
  v11 = WORD2(v63);
  v60 = *(a2 + 80);
  v54 = *(a2 + 80);
  v49 = v61;
  v50 = v5;
  swift_beginAccess();
  outlined init with copy of _ViewInputs(&v61, v47);
  v12 = CachedEnvironment.animatedPosition(for:)(&v49);
  swift_endAccess();
  *&v49 = __PAIR64__(HIDWORD(v64), v12);
  v39 = HIDWORD(v64);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
  v13 = Attribute.init<A>(body:value:flags:update:)();
  v14 = v57;
  HIDWORD(v58) = v13;
  LODWORD(v57) = v57 | 4;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v15 = *(swift_dynamicCastClassUnconditional() + 248);

  LODWORD(v59) = v15;
  DWORD1(v59) = v15;
  v16 = v65;
  v17 = DWORD2(v65);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v18 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v19 = specialized CachedEnvironment.attribute<A>(id:_:)(v18, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
  swift_endAccess();
  *&v49 = __PAIR64__(v17, v16);
  DWORD2(v49) = v19;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  DWORD2(v59) = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v57) = v14 | 0x1C;
  if ((_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v9) & 1) == 0)
  {
    v37 = a3;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA21UsingGraphicsRendererV_Tt2g5(&v55, 1);

    LODWORD(v49) = *(v10 + 16);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type _DrawingGroupEffect.ChildEnvironment and conformance _DrawingGroupEffect.ChildEnvironment();
    v20 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v47[0]) = 1;
    v21 = MEMORY[0x1E69E7CC0];
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v21;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *(v23 + 64) = 0u;
    *(v23 + 80) = 256;
    *(v23 + 88) = v22;

    *&v56 = v23;
    if ((v14 & 0x20) == 0)
    {
      LODWORD(v57) = v14 | 0x3C;
    }

    a3 = v37;
  }

  v47[2] = v57;
  v47[3] = v58;
  v47[4] = v59;
  v48 = v60;
  v47[0] = v55;
  v47[1] = v56;
  *v45 = v57;
  *&v45[16] = v58;
  *&v45[32] = v59;
  v46 = v60;
  v43 = v55;
  v44 = v56;
  v24 = outlined init with copy of _ViewInputs(v47, &v49);
  a3(v41, v24, &v43);
  v51 = *v45;
  v52 = *&v45[16];
  v53 = *&v45[32];
  v54 = v46;
  v49 = v43;
  v50 = v44;
  outlined destroy of _ViewInputs(&v49);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v64) & 1) == 0)
  {
    goto LABEL_14;
  }

  v25 = ++lastIdentity;
  if ((v11 & 0x100) == 0)
  {
    v26 = *MEMORY[0x1E698D3F8];
LABEL_10:
    *&v43 = __PAIR64__(*(v10 + 16), v38);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for Image.DynamicRange?, &type metadata for Image.DynamicRange, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type DrawingGroupDynamicRange and conformance DrawingGroupDynamicRange();
    v27 = Attribute.init<A>(body:value:flags:update:)();
    *v45 = v63;
    *&v45[16] = v64;
    *&v45[32] = v65;
    v46 = v66;
    v43 = v61;
    v44 = v62;
    swift_beginAccess();
    v28 = CachedEnvironment.animatedPosition(for:)(&v43);
    *v45 = v63;
    *&v45[16] = v64;
    *&v45[32] = v65;
    v46 = v66;
    v43 = v61;
    v44 = v62;
    v29 = CachedEnvironment.animatedCGSize(for:)(&v43);
    swift_endAccess();
    v30 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v41[0]);
    v31 = *(MEMORY[0x1E695F040] + 16);
    *&v45[8] = *MEMORY[0x1E695F040];
    if ((v30 & 0x100000000) != 0)
    {
      v32 = v26;
    }

    else
    {
      v32 = v30;
    }

    *&v43 = __PAIR64__(v38, v25);
    *(&v43 + 1) = __PAIR64__(v29, v28);
    *&v44 = __PAIR64__(DWORD1(v65), v39);
    *(&v44 + 1) = __PAIR64__(v32, v27);
    *v45 = 0;
    *&v45[24] = v31;
    v45[40] = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type DrawingGroupDisplayList and conformance DrawingGroupDisplayList();
    v33 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v33, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_14:
    *v45 = v57;
    *&v45[16] = v58;
    *&v45[32] = v59;
    v46 = v60;
    v43 = v55;
    v44 = v56;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v41[0];
    a4[1] = v41[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v9, &v43);
  result = AGWeakAttributeGetAttribute();
  v26 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v25;
    v35 = Attribute<A>.subscript.modify(&v43, result);
    v36 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    (v35)(&v43, 0, v36);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ShadowEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static EnvironmentalModifier._makeView(modifier:inputs:body:)(v5, v9, a3, a5);
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13_ShadowEffectV9_ResolvedV_Tt1B5(unsigned int *result, uint64_t a2)
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
    v13 = 0;
    v12 = 0u;
    v11 = 0u;
    LOBYTE(v14) = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ShadowEffect._Resolved> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ShadowEffect._Resolved>, lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

void lazy protocol witness table accessor for type DrawingGroupDynamicRange and conformance DrawingGroupDynamicRange()
{
  if (!lazy protocol witness table cache variable for type DrawingGroupDynamicRange and conformance DrawingGroupDynamicRange)
  {
    swift_getWitnessTable(protocol conformance descriptor for DrawingGroupDynamicRange, &unk_1F00640B8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DrawingGroupDynamicRange and conformance DrawingGroupDynamicRange);
  }
}

void LayoutPriorityLayout.spacing(in:child:)(uint64_t a1, unsigned int *a2)
{
  if (a2[1] == *MEMORY[0x1E698D3F8])
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

  v3 = *InputValue;
  v4 = one-time initialization token for lockAssertionsAreEnabled;

  if (v4 != -1)
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
    (*(*v3 + 112))();
  }
}

uint64_t static _ForegroundStyleModifier2.graphInputsSemantics.getter()
{
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  return static Semantics.v4;
}

uint64_t static _ForegroundStyleModifier2._makeViewInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[7] = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = *(a2 + 16);
  swift_beginAccess();
  v12 = *(v11 + 16);
  v17[0] = v10;
  v17[1] = v12;
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v19 = type metadata accessor for _ForegroundStyleModifier2.ForegroundStyleEnvironment(0, v21);
  swift_getWitnessTable(protocol conformance descriptor for _ForegroundStyleModifier2<A, B>.ForegroundStyleEnvironment, v19);
  v20 = v13;
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, closure #1 in Attribute.init<A>(_:)partial apply, v18, v19, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  return _GraphInputs.environment.setter(v21[0]);
}

uint64_t one-time initialization function for accessibilityShowButtonShapes(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.accessibilityShowButtonShapes = result;
  return result;
}

id protocol witness for PlatformDrawable.options.setter in conformance RBDrawingLayer(int *a1)
{
  v1 = *(a1 + 2);
  v2 = a1[2];
  v3 = *(a1 + 12);
  v5 = *a1;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  return RBDrawingLayer.options.setter(&v5);
}

id RBDrawingLayer.options.setter(int *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = a1[2];
  v7 = *(a1 + 12);
  v8 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options];
  v9 = *v8;
  v10 = *(v8 + 2);
  v11 = *(v8 + 2);
  v12 = v8[12];
  *v8 = *a1;
  v8[4] = v4;
  v8[5] = v5;
  *(v8 + 2) = v6;
  v8[12] = v7;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  result = specialized static RasterizationOptions.== infix(_:_:)(&v22, &v17);
  if ((result & 1) == 0)
  {
    [v2 setOpaque_];
    v14 = *(v8 + 2);
    v15 = *(v8 + 2);
    v16 = v8[12];
    v22 = *v8;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    return PlatformDrawableOptions.update(rbLayer:)(v2);
  }

  return result;
}

void instantiation function for generic protocol witness table for Rectangle._Inset(uint64_t a1)
{
  lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset()
{
  if (!lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Rectangle._Inset, &type metadata for Rectangle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Rectangle._Inset, &type metadata for Rectangle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset);
  }
}

{
  if (!lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset)
  {
    swift_getWitnessTable(protocol conformance descriptor for Rectangle._Inset, &type metadata for Rectangle._Inset, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset);
  }
}

uint64_t type metadata completion function for FormatStyleBox(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _s10Foundation4DateV11FormatStyleVAeadAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void instantiation function for generic protocol witness table for Date.FormatStyle(uint64_t a1)
{
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  *(a1 + 8) = v2;
}

{
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_2(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  *(a1 + 8) = v2;
}

{
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void GraphicsContext.blendMode.setter(int a1)
{
  if (*(*v1 + 52) != a1)
  {
    GraphicsContext.copyOnWrite()();
    *(*v1 + 52) = a1;
  }
}

void ShapeStylePair._apply(to:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      return;
    }

    if (v5 != 4)
    {
      if (!(v4 | v3 | v2))
      {
        v11 = a1;
        outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
        *(v11 + 32) = 1;
        *(v11 + 40) = 4;
      }

      return;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
LABEL_17:
    *(a1 + 24) = v5;
    if (v2 > 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    if (v2)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
LABEL_18:
      (*(*(a2 + 40) + 32))();
      return;
    }

LABEL_26:
    v15 = *(*(a2 + 32) + 32);

    v15();
    return;
  }

  if (v5 != 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    LOBYTE(v5) = 2;
    goto LABEL_17;
  }

  if (v3 != v4)
  {
    if (v4 > 1)
    {
      *a1 = *a1;
      *(a1 + 8) = xmmword_18DD85550;
      *(a1 + 24) = 1;
      v6 = a2;
      v7 = a1;
      (*(*(a2 + 40) + 32))();
      v16 = v2;
      if (v3 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v3;
      }

      if (*(v7 + 40) == 1)
      {
        v9 = *(v7 + 32);

        outlined consume of _ShapeStyle_Shape.Result(v10, 1u);
        *(v7 + 32) = 0;
        *(v7 + 40) = 5;
      }

      else
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v16, v8);
      v12 = v7;
      v13 = *(v7 + 32);
      v14 = *(v12 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v13, v14);
      *(v12 + 32) = v9;
      *(v12 + 40) = 1;

      a1 = v12;
      a2 = v6;
    }

    if (v3 < 1 && v4 >= 1)
    {
      *a1 = v2;
      *(a1 + 8) = xmmword_18DD85550;
      *(a1 + 24) = 1;
      goto LABEL_26;
    }
  }
}

double outlined copy of _ShapeStyle_RenderedLayers.Layers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = (a9 >> 28) & 3;
  if (v9 == 1)
  {
  }

  else if (!v9)
  {
    return outlined copy of DisplayList.Item.Value(a6, a7, a8, a9);
  }

  return result;
}

uint64_t initializeWithCopy for _ShapeStyle_RenderedLayers.Layers(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  outlined copy of _ShapeStyle_RenderedLayers.Layers(*a2, v4, v5, v6, v7, v8, v9, v10, v11);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  return a1;
}

void DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(uint64_t a1, unsigned int a2, unint64_t *a3, double a4, double a5, double a6, double a7)
{
  if ((*(a1 + 8) & 0x10) != 0)
  {
    v95 = *a3;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    v8 = *a1;
    v98 = *(*a1 + 16);
    if (v98)
    {
      v92 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_60;
      }

      while (*(v8 + 2))
      {
        v13 = 0;
        v99 = 0;
        v14 = 0;
        v97 = v8 + 32;
        if (v95)
        {
          v15 = 2 * ((33 * (v95 >> 16)) ^ v95) + 1;
        }

        else
        {
          LOWORD(v15) = 0;
        }

        v87 = v15;
        v16 = 1;
        v93 = v8;
        while (1)
        {
          v17 = v14;
          v14 = v16;
          v18 = &v97[80 * v17];
          v19 = *(v18 + 8);
          if ((v19 >> 30) - 2 < 2)
          {
            goto LABEL_27;
          }

          v96 = v13;
          v20 = *(v18 + 5);
          v21 = *(v18 + 6);
          v22 = *(v18 + 7);
          if (v19 >> 30)
          {
            v41 = HIDWORD(v21);
            *&v104[0] = *(v18 + 7);
            WORD4(v104[0]) = v19;
            HIDWORD(v104[0]) = HIDWORD(v19);
            v42 = *v18 + a4;
            v43 = *(v18 + 1) + a5;
            v101 = v95;
            outlined copy of DisplayList.Effect(v20, v21, SBYTE4(v21));

            DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v104, a2, &v101, v42, v43, a6, a7);
            v45 = v44;
            if (BYTE4(v21) == 7)
            {
              v46 = *(v20 + 16);
              v47 = *(v20 + 28);
              v48 = *(v20 + 32);
              v102 = *(v20 + 24);
              v103 = v47;
              v100 = v95;
              v101 = v46;

              DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(&v101, a2, &v100, v42, v43, a6, a7);
              v45 |= v49;
              v50 = swift_allocObject();
              v51 = v102;
              v52 = v103;
              *(v50 + 16) = v101;
              *(v50 + 24) = v51;
              *(v50 + 28) = v52;
              *(v50 + 32) = v48;
              outlined consume of DisplayList.Effect(v20, v21, 7);
              LODWORD(v21) = 0;
              v20 = v50;
              LOBYTE(v41) = 7;
            }

            else if (BYTE4(v21) == 18)
            {
              if (v20 == v92)
              {
                v53 = *v18;
                v54 = *(v18 + 1);
                v55 = *(v18 + 2);
                v56 = *(v18 + 3);
                v101 = v95;
                v57 = (*(*v92 + 136))(v21, v104, a2, &v101, v53, v54, v55, v56, v42, v43, a6, a7);
                outlined consume of DisplayList.Effect(v20, v21, 18);
                v20 = 0;
                LODWORD(v21) = 0;
                v45 |= v57;
                LOBYTE(v41) = 20;
              }

              else
              {
                LOBYTE(v41) = 18;
              }
            }

            v58 = *&v104[0];
            v59 = WORD4(v104[0]) | (HIDWORD(v104[0]) << 32) | 0x40000000;
            v60 = *(v18 + 5);
            v61 = *(v18 + 6);
            v62 = *(v18 + 7);
            v63 = *(v18 + 8);
            *(v18 + 5) = v20;
            *(v18 + 6) = v21 | (v41 << 32);
            *(v18 + 7) = v58;
            *(v18 + 8) = v59;
            outlined consume of DisplayList.Item.Value(v60, v61, v62, v63);
            v8 = v93;
            v13 = v96;
            if (v45)
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v20 >> 60 != 11)
            {
              v13 = v96;
              goto LABEL_27;
            }

            v23 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v24 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            v25 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v26 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v91 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            v90 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
            v88 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
            v89 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
            *&v104[0] = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            WORD4(v104[0]) = v23;
            HIDWORD(v104[0]) = v24;
            v27 = *v18 + a4;
            v28 = *(v18 + 1) + a5;
            v101 = v95;
            outlined copy of DisplayList.Item.Value(v20, v21, v22, v19);
            outlined copy of DisplayList.Item.Value(v20, v21, v22, v19);

            DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v104, a2, &v101, v27, v28, a6, a7);
            v30 = v29;
            v31 = swift_allocObject();
            v32 = WORD4(v104[0]);
            v33 = HIDWORD(v104[0]);
            *(v31 + 16) = *&v104[0];
            *(v31 + 24) = v32;
            *(v31 + 28) = v33;
            *(v31 + 32) = v25;
            *(v31 + 40) = v26;
            *(v31 + 48) = v91;
            *(v31 + 52) = v90;
            *(v31 + 56) = v89;
            *(v31 + 60) = v88;
            outlined consume of DisplayList.Item.Value(v20, v21, v22, v19);
            v34 = v30 & 1;
            v35 = v87;
            if (!v34)
            {
              v35 = v21;
            }

            v36 = v31 | 0xB000000000000000;
            v8 = v93;
            v37 = *(v18 + 5);
            v38 = *(v18 + 6);
            v39 = *(v18 + 7);
            v40 = *(v18 + 8);
            *(v18 + 5) = v36;
            *(v18 + 6) = v35;
            *(v18 + 7) = 0;
            *(v18 + 8) = 0;
            outlined consume of DisplayList.Item.Value(v37, v38, v39, v40);
            outlined consume of DisplayList.Item.Value(v20, v21, v22, v19);
            v13 = v96;
            if (v34)
            {
LABEL_26:
              *(v18 + 4) = v95;
            }
          }

LABEL_27:
          if (v17 >= *(v8 + 2))
          {
            break;
          }

          v64 = *(v18 + 3);
          v104[2] = *(v18 + 2);
          v105[0] = v64;
          *(v105 + 12) = *(v18 + 60);
          v65 = *(v18 + 1);
          v104[0] = *v18;
          v104[1] = v65;
          DisplayList.Item.features.getter(&v101);
          v66 = *(v8 + 2);
          if (v17 >= v66)
          {
            goto LABEL_59;
          }

          v13 |= v101;
          v67 = *(v18 + 5);
          v68 = *(v18 + 8);
          v69 = v68 >> 30;
          if (v68 >> 30 > 1)
          {
            if (v69 != 2)
            {
              goto LABEL_9;
            }

            v71 = *(v67 + 16);
            if (v71)
            {
              if (v71 > 7)
              {
                v72 = v71 & 0x7FFFFFFFFFFFFFF8;
                v76 = (v67 + 188);
                v77 = 0uLL;
                v78 = v71 & 0x7FFFFFFFFFFFFFF8;
                v79 = 0uLL;
                do
                {
                  v80.i32[0] = *(v76 - 30);
                  v80.i32[1] = *(v76 - 20);
                  v80.i32[2] = *(v76 - 10);
                  v80.i32[3] = *v76;
                  v81.i32[0] = v76[10];
                  v81.i32[1] = v76[20];
                  v81.i32[2] = v76[30];
                  v81.i32[3] = v76[40];
                  v77 = vorrq_s8(v80, v77);
                  v79 = vorrq_s8(v81, v79);
                  v76 += 80;
                  v78 -= 8;
                }

                while (v78);
                v82 = vorrq_s8(v79, v77);
                *v82.i8 = vorr_s8(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
                v70 = v82.i32[0] | v82.i32[1];
                if (v71 == v72)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v70 = 0;
                v72 = 0;
              }

              v83 = v71 - v72;
              v84 = (v67 + 40 * v72 + 68);
              do
              {
                v85 = *v84;
                v84 += 10;
                v70 |= v85;
                --v83;
              }

              while (v83);
            }

            else
            {
              v70 = 0;
            }
          }

          else if (v69)
          {
            v73 = *(v18 + 6);
            if (BYTE4(v73) == 2)
            {
              outlined copy of DisplayList.Effect(*(v18 + 5), *(v18 + 6), 2);
              v75 = v67;
            }

            else
            {
              v74 = *(v18 + 7);
              if (BYTE4(v73) == 7)
              {
                v75 = *(v67 + 28);
                outlined copy of DisplayList.Item.Value(*(v18 + 5), *(v18 + 6), *(v18 + 7), *(v18 + 8));
                outlined consume of DisplayList.Effect(v67, v73, 7);
              }

              else if (BYTE4(v73) == 18)
              {
                (*(*v67 + 120))(v104);
                outlined copy of DisplayList.Item.Value(v67, v73, v74, v68);
                outlined consume of DisplayList.Effect(v67, v73, 18);

                v75 = v104[0];
              }

              else
              {
                outlined copy of DisplayList.Effect(*(v18 + 5), *(v18 + 6), SBYTE4(v73));

                outlined consume of DisplayList.Effect(v67, v73, SBYTE4(v73));

                v75 = 0;
              }

              v8 = v93;
            }

            v70 = v75 | HIDWORD(v68);
          }

          else
          {
            if (v67 >> 60 != 6 && v67 >> 60 != 11)
            {
LABEL_9:
              if (v14 == v98)
              {
                goto LABEL_56;
              }

              goto LABEL_10;
            }

            v70 = *((v67 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          }

LABEL_54:
          v99 |= v70;
          if (v14 == v98)
          {
LABEL_56:
            *a1 = v8;
            *(a1 + 12) = v99;
            *(a1 + 8) = v13;
            return;
          }

          v66 = *(v8 + 2);
LABEL_10:
          v16 = v14 + 1;
          if (v14 >= v66)
          {
            goto LABEL_61;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

LABEL_61:
      __break(1u);
    }
  }
}

uint64_t sub_18D2BBF88()
{

  return swift_deallocObject();
}

uint64_t sub_18D2BBFC0()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccentColorKey>, &type metadata for AccentColorKey, &protocol witness table for AccentColorKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Color?, &type metadata for Color, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccentColorKey>>(0);
        v20 = v15;
        v21 = &protocol witness table for TrackedValue<A>;
        v19[0] = v14;

        specialized Dictionary.subscript.setter(v19, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccentColorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccentColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccentColorKey>, &type metadata for AccentColorKey, &protocol witness table for AccentColorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccentColorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccentColorKey>>);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018TintAdjustmentModeI033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt1g5@<D0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018TintAdjustmentModeS033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 2;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for TintAdjustmentMode?, &type metadata for TintAdjustmentMode, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018TintAdjustmentModeS033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 2;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TintAdjustmentModeKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TintAdjustmentModeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TintAdjustmentModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TintAdjustmentModeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TintAdjustmentModeKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA07EnabledI033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v19);
        outlined init with take of AnyTrackedValue(v19, v20);
        v10 = v21;
        v11 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        (v11[1])(v19, MEMORY[0x1E69E6370], v10, v11);
        __swift_destroy_boxed_opaque_existential_1(v20);
      }

      else
      {
        v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(a1);
        if (v14)
        {
          v15 = *(v14 + 72);
        }

        else
        {
          v15 = 1;
        }

        LOBYTE(v19[0]) = v15;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnabledKey>>(0);
        v21 = v16;
        v22 = &protocol witness table for TrackedValue<A>;
        LOBYTE(v20[0]) = v15;
        specialized Dictionary.subscript.setter(v20, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  v12 = 1;
  *(v3 + 56) = 1;
  v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(a1);
  if (v13)
  {
    v12 = *(v13 + 72);
  }

  LOBYTE(v19[0]) = v12;
LABEL_14:
  v17 = LOBYTE(v19[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v17;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnabledKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnabledKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnabledKey>>);
    }
  }
}

void key path getter for EnvironmentValues.symbolRenderingMode : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = v6;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, v6);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = (v5 + 9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = &static SymbolRenderingOptionsKey.defaultValue;
    }
  }

  *a2 = *v4;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(uint64_t *a1, int a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a1);
  if (!v4 || (v5 = *(v4 + 36), v6 = *(v4 + 74), v13 = a2, v14 = BYTE2(a2), v11 = v5, v12 = v6, !specialized static SymbolRenderingOptions.== infix(_:_:)(&v13, &v11)))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>(0);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 74) = BYTE2(a2);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolRenderingOptionsKey>, &type metadata for SymbolRenderingOptionsKey, &protocol witness table for SymbolRenderingOptionsKey, type metadata accessor for EnvironmentPropertyKey);
    v10 = v9;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v7);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TintKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TintKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TintKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TintKey>>);
    }
  }
}

uint64_t _ForegroundStyleModifier2.ForegroundStyleEnvironment.modifier.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v7 = type metadata accessor for _ForegroundStyleModifier2(0, v10);
  Value = AGGraphGetValue();
  return (*(*(v7 - 8) + 16))(a6, Value, v7);
}

void type metadata accessor for ShapeStyleBox<ShapeStylePair<AnyShapeStyle, AnyShapeStyle>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void _s7SwiftUI13ShapeStyleBox33_C5308685324599C90E2F7A588812BB29LLCyAA0cD4PairVyAA03AnycD0VAHGGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for ShapeStyleBox(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t GraphicsContext.addFilter(_:in:)(__int128 *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v112 = *MEMORY[0x1E69E9840];
  v10 = a1[5];
  v107 = a1[4];
  v108 = v10;
  v109[0] = a1[6];
  v11 = v109[0];
  *(v109 + 12) = *(a1 + 108);
  v12 = a1[1];
  v103 = *a1;
  v104 = v12;
  v13 = a1[3];
  v105 = a1[2];
  v106 = v13;
  *(v111 + 12) = *(v109 + 12);
  v110[5] = v10;
  v111[0] = v11;
  v110[3] = v13;
  v110[4] = v107;
  v110[1] = v12;
  v110[2] = v105;
  v110[0] = v103;
  switch(_s7SwiftUI14GraphicsFilterOWOg(v110))
  {
    case 1u:
      result = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      if (*result > 0.0)
      {
        v47 = result;
        GraphicsContext.copyOnWrite()();
        v48 = *(v47 + 120);
        if (*(v47 + 8) == 1)
        {
          if (*(v47 + 9))
          {
            if (v48 >> 30)
            {
              return RBDrawingStateAddBlurFilter();
            }
          }

          else if (v48 >> 30)
          {
            return RBDrawingStateAddBlurFilter();
          }
        }

        else if (v48 >> 30)
        {
          return RBDrawingStateAddBlurFilter();
        }

        v75 = *(v47 + 112);
        v76 = *(*v5 + 16);
        v77 = *(v76 + 40);
        v78 = *(v47 + 32);
        v84 = *(v47 + 16);
        v85 = v78;
        v79 = *(v47 + 64);
        v86 = *(v47 + 48);
        v87 = v79;
        v80 = *(v47 + 96);
        v88 = *(v47 + 80);
        v89 = v80;
        v90 = v75;
        v91 = v48;
        v81 = *(v76 + 64);
        outlined init with copy of GraphicsFilter(&v103, &v96);
        v82 = v77;
        RBFill.setImage(_:destRect:in:)(&v84, v81, a2, a3, a4, a5);

        RBDrawingStateAddVariableBlurFilter();
        return outlined destroy of GraphicsFilter(&v103);
      }

      return result;
    case 2u:
    case 3u:
    case 0xFu:
    case 0x14u:
    case 0x15u:
    case 0x16u:
      return _s7SwiftUI14GraphicsFilterOWOj6_(v110);
    case 4u:
      v36 = *(_s7SwiftUI14GraphicsFilterOWOj6_(v110) + 52);
      v37 = v36 & 2;
      if (v36)
      {
        if ((v36 & 2) == 0)
        {
          if ((v36 & 0x10) != 0)
          {
            v37 = 37;
          }

          else
          {
            v37 = 5;
          }

LABEL_62:
          GraphicsContext.copyOnWrite()();
          if (*(*(*v5 + 16) + 64) != 2)
          {
            RBColorFromLinear();
          }

          specialized RBShadowFlags.init(_:)(v37);
          return RBDrawingStateAddShadowStyle3();
        }

        if ((v36 & 4) != 0)
        {
          v37 = 6;
        }

        else
        {
          v37 = 5;
        }

        if ((v36 & 4) != 0)
        {
          v38 = 38;
        }

        else
        {
          v38 = 37;
        }

        if ((v36 & 0x10) == 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if ((v36 & 2) != 0)
        {
          v38 = 34;
        }

        else
        {
          v38 = 32;
        }

        if ((v36 & 0x10) == 0)
        {
          goto LABEL_62;
        }
      }

      v37 = v38;
      goto LABEL_62;
    case 5u:
      v46 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v97 = *(v46 + 16);
      v98 = *(v46 + 32);
      v99 = *(v46 + 48);
      *&v100 = *(v46 + 64);
      v96 = *v46;
      GraphicsContext.copyOnWrite()();
      return RBDrawingState.addProjectionTransform(_:)(&v96, *(*v5 + 24));
    case 6u:
      v22 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v96 = *v22;
      v23 = *(v22 + 16);
      v24 = *(v22 + 32);
      v25 = *(v22 + 64);
      v99 = *(v22 + 48);
      v100 = v25;
      v97 = v23;
      v98 = v24;
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddColorMatrixFilter();
    case 7u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v51 = *v49;
      v50 = *(v49 + 4);
      v53 = *(v49 + 8);
      v52 = *(v49 + 12);
      v54 = *(v49 + 16);
      GraphicsContext.copyOnWrite()();
      v55 = *v5;
      v56 = *(*(*v5 + 16) + 64);
      if (v56 == 2)
      {
        v57 = v54;
LABEL_43:
        v70 = 1;
        goto LABEL_59;
      }

      RBColorFromLinear();
      v51 = v66;
      v50 = v67;
      v53 = v68;
      v52 = v69;
      v56 = *(*(v55 + 16) + 64);
      v57 = v54;
      if (v56 == 2)
      {
        goto LABEL_43;
      }

      v70 = 2;
      goto LABEL_59;
    case 8u:
      v58 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v51 = *v58;
      v50 = *(v58 + 4);
      v53 = *(v58 + 8);
      v52 = *(v58 + 12);
      v59 = *(v58 + 16);
      GraphicsContext.copyOnWrite()();
      v60 = *v5;
      v56 = *(*(*v5 + 16) + 64);
      if (v56 == 2)
      {
        v57 = v59;
      }

      else
      {
        RBColorFromLinear();
        v51 = v71;
        v50 = v72;
        v53 = v73;
        v52 = v74;
        v56 = *(*(v60 + 16) + 64);
        v57 = v59;
        if (v56 != 2)
        {
          v70 = 2;
LABEL_59:
          *&v96.f64[0] = __PAIR64__(v50, v51);
          *&v96.f64[1] = __PAIR64__(v52, v53);
          *&v97 = __PAIR64__(LODWORD(v57), v56);
          DWORD2(v97) = v70;
          return RBDrawingStateAddStyle();
        }
      }

      v70 = 1;
      goto LABEL_59;
    case 9u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddHueRotationFilter();
    case 0xAu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddSaturationFilter();
    case 0xBu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddBrightnessFilter();
    case 0xCu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddContrastFilter();
    case 0xDu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddGrayscaleFilter();
    case 0xEu:
      v26 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v28 = *v26;
      v27 = *(v26 + 4);
      v30 = *(v26 + 8);
      v29 = *(v26 + 12);
      v31 = *(v26 + 16);
      v32 = *(v26 + 20);
      GraphicsContext.copyOnWrite()();
      v33 = *v5;
      v34 = *(*(*v5 + 16) + 64);
      if (v34 == 2)
      {
        v35 = v31;
LABEL_38:
        v65 = 1;
        goto LABEL_47;
      }

      RBColorFromLinear();
      v28 = v61;
      v27 = v62;
      v30 = v63;
      v29 = v64;
      v34 = *(*(v33 + 16) + 64);
      v35 = v31;
      if (v34 == 2)
      {
        goto LABEL_38;
      }

      v65 = 2;
LABEL_47:
      v96.f64[0] = v32;
      *&v96.f64[1] = __PAIR64__(v27, v28);
      *&v97 = __PAIR64__(v29, v30);
      *(&v97 + 1) = __PAIR64__(LODWORD(v35), v34);
      LODWORD(v98) = v65;
      return RBDrawingStateAddStyle();
    case 0x10u:
      v83 = *_s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      v96 = v83;
      return RBDrawingStateAddLuminanceCurveFilter();
    case 0x11u:
      v19 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      GraphicsContext.copyOnWrite()();
      v20 = *(v19 + 16);
      v96 = *v19;
      v97 = v20;
      v21 = *(v19 + 48);
      v98 = *(v19 + 32);
      v99 = v21;
      return RBDrawingStateAddRGBACurvesFilter();
    case 0x12u:
      result = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v39 = *result;
      if (*result)
      {
        v41 = *(result + 32);
        v40 = *(result + 40);
        v42 = *(result + 24);
        v44 = *(result + 8);
        v43 = *(result + 16);
        v100 = v107;
        v101 = v108;
        *v102 = v109[0];
        *&v102[12] = *(v109 + 12);
        v96 = v103;
        v97 = v104;
        v98 = v105;
        v99 = v106;
        v45 = *_s7SwiftUI14GraphicsFilterOWOj6_(&v96);
        GraphicsContext.copyOnWrite()();
        v84 = 0uLL;
        *&v85 = v41;
        *(&v85 + 1) = v40;
        v92 = v39;
        v93 = v44;
        v94 = v43;
        v95 = v42;
        Shader.ResolvedShader.rbFilterFlags.getter();
        RBDrawingStateAddShaderFilter();
        return outlined destroy of GraphicsFilter(&v103);
      }

      return result;
    case 0x13u:
      v15 = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      v16 = *(v15 + 16);
      v17 = *(v15 + 20);
      type metadata accessor for ColorBox<ResolvedColorProvider>(0);
      v18 = swift_allocObject();
      *(v18 + 16) = *v15;
      *(v18 + 32) = v16;
      *&v84.f64[0] = v17 | 0x3F80000000000000;
      *&v84.f64[1] = v18;
      *&v89 = 2550136832;
      GraphicsContext.addFilter(_:options:)(&v84, 0);
      v98 = v86;
      v99 = v87;
      v100 = v88;
      *&v101 = v89;
      v96 = v84;
      v97 = v85;
      return outlined destroy of GraphicsContext.Filter(&v96);
    case 0x17u:
      return RBDrawingStateAddBlurFilter();
    case 0x18u:
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddLuminanceToAlphaFilter();
    case 0x19u:
      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddColorInvertFilter();
    default:
      result = _s7SwiftUI14GraphicsFilterOWOj6_(v110);
      if (*result <= 0.0)
      {
        return result;
      }

      GraphicsContext.copyOnWrite()();
      return RBDrawingStateAddBlurFilter();
  }
}

uint64_t specialized RBShadowFlags.init(_:)(char a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 3;
      if ((a1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      v1 = 0;
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v1 = 2;
    if ((a1 & 4) != 0)
    {
LABEL_4:
      v1 = v1 | 4;
    }
  }

LABEL_5:
  if ((a1 & 8) == 0)
  {
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v1 = v1 | 0x10;
    if ((a1 & 0x20) == 0)
    {
      return v1;
    }

    return v1 | 0x20;
  }

  v1 = v1 | 8;
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((a1 & 0x20) != 0)
  {
    return v1 | 0x20;
  }

  return v1;
}

void DisplayList.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {

    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = 80 * v7++ + 32;
      while (1)
      {
        v9 = *(a1 + v8 + 16);
        v10 = *(a1 + v8 + 48);
        v38 = *(a1 + v8 + 32);
        *v39 = v10;
        *&v39[12] = *(a1 + v8 + 60);
        v11 = *(a1 + v8 + 16);
        v37[0] = *(a1 + v8);
        v37[1] = v11;
        v12 = *(a1 + v8 + 48);
        v35[2] = v38;
        v36[0] = v12;
        *(v36 + 12) = *(a1 + v8 + 60);
        v35[0] = v37[0];
        v35[1] = v9;
        outlined init with copy of DisplayList.Item(v37, v34);
        DisplayList.Item.features.getter(v34);
        v5 |= v34[0];
        v13 = *(&v38 + 1);
        v14 = *&v39[20];
        v15 = *&v39[16] >> 30;
        if (*&v39[16] >> 30)
        {
          break;
        }

        if (*(&v38 + 1) >> 60 == 6 || *(&v38 + 1) >> 60 == 11)
        {
          v18 = *((*(&v38 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          goto LABEL_17;
        }

        outlined destroy of DisplayList.Item(v37);
        if (v4 == v7)
        {
          goto LABEL_38;
        }

        v8 += 80;
        if (v7++ >= *(a1 + 16))
        {
          goto LABEL_37;
        }
      }

      if (v15 != 1)
      {
        if (v15 != 2)
        {
          outlined destroy of DisplayList.Item(v37);
          goto LABEL_35;
        }

        v17 = *(*(&v38 + 1) + 16);
        if (v17)
        {
          if (v17 > 7)
          {
            v19 = v17 & 0x7FFFFFFFFFFFFFF8;
            v22 = (*(&v38 + 1) + 188);
            v23 = 0uLL;
            v24 = v17 & 0x7FFFFFFFFFFFFFF8;
            v25 = 0uLL;
            do
            {
              v26.i32[0] = *(v22 - 30);
              v26.i32[1] = *(v22 - 20);
              v26.i32[2] = *(v22 - 10);
              v26.i32[3] = *v22;
              v27.i32[0] = v22[10];
              v27.i32[1] = v22[20];
              v27.i32[2] = v22[30];
              v27.i32[3] = v22[40];
              v23 = vorrq_s8(v26, v23);
              v25 = vorrq_s8(v27, v25);
              v22 += 80;
              v24 -= 8;
            }

            while (v24);
            v28 = vorrq_s8(v25, v23);
            v29 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
            v18 = v29.i32[0] | v29.i32[1];
            if (v17 == v19)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v18 = 0;
            v19 = 0;
          }

          v30 = v17 - v19;
          v31 = (*(&v38 + 1) + 40 * v19 + 68);
          do
          {
            v32 = *v31;
            v31 += 10;
            v18 |= v32;
            --v30;
          }

          while (v30);
        }

        else
        {
          v18 = 0;
        }

LABEL_17:
        outlined destroy of DisplayList.Item(v37);
        goto LABEL_34;
      }

      v33 = a2;
      switch(v39[4])
      {
        case 2:

          v21 = v13;
          break;
        case 7:
          v21 = *(*(&v38 + 1) + 28);
          outlined consume of DisplayList.Effect(*(&v38 + 1), v39[0], 7);

          break;
        case 0x12:
          v20 = v39[0];
          (*(**(&v38 + 1) + 120))(v35);
          outlined consume of DisplayList.Effect(v13, v20, 18);

          v21 = v35[0];
          break;
        default:
          outlined consume of DisplayList.Effect(*(&v38 + 1), v39[0], v39[4]);

          v21 = 0;
          break;
      }

      v18 = v21 | v14;
      a2 = v33;
LABEL_34:
      v6 |= v18;
LABEL_35:
      if (v4 == v7)
      {
        goto LABEL_38;
      }
    }

    while (v7 < *(a1 + 16));
LABEL_37:
    __break(1u);
LABEL_38:
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
}