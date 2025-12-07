uint64_t specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(uint64_t a1, uint64_t a2, double a3)
{
  v86 = a1;
  v6 = type metadata accessor for Spring();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v82 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Spring?, Spring?)(0, v8);
  v84 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v81 - v21;
  v23 = *a2 * *a2 + *(a2 + 8) * *(a2 + 8) + *(a2 + 16) * *(a2 + 16) + *(a2 + 24) * *(a2 + 24) + *(a2 + 32) * *(a2 + 32) + *(a2 + 40) * *(a2 + 40) + *(a2 + 48) * *(a2 + 48) + *(a2 + 56) * *(a2 + 56) + *(a2 + 64) * *(a2 + 64);
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v87 = v24;
  v25 = *(v24 + 44);
  outlined init with copy of Spring?(v3 + v25, v22, v26);
  v88 = v7;
  v27 = *(v7 + 48);
  v28 = v27(v22, 1, v6);
  outlined destroy of Spring?(v22, v29);
  if (v28 == 1)
  {
    v31 = *(v3 + 128);
    *&v92[32] = *(v3 + 112);
    *&v92[48] = v31;
    *&v92[57] = *(v3 + 137);
    v32 = *(v3 + 96);
    *v92 = *(v3 + 80);
    *&v92[16] = v32;
    result = specialized static Text.Effect.DrawingState.== infix(_:_:)(v92, a2);
    if ((result & 1) != 0 || (v34 = vmulq_f64(*&v92[8], *&v92[8]), v35 = *v92 * *v92 + v34.f64[0] + v34.f64[1], v36 = vmulq_f64(*&v92[24], *&v92[24]), v37 = v35 + v36.f64[0] + v36.f64[1], v38 = vmulq_f64(*&v92[40], *&v92[40]), v39 = v37 + v38.f64[0] + v38.f64[1], v40 = vmulq_f64(*&v92[56], *&v92[56]), vabdd_f64(v23, v39 + v40.f64[0] + v40.f64[1]) <= 0.001))
    {
      v58 = v3 + *(v87 + 52);
      *v58 = 0;
      *(v58 + 8) = 1;
      return result;
    }
  }

  v41 = vmulq_f64(*(v3 + 8), *(v3 + 8));
  v42 = *v3 * *v3 + v41.f64[0] + v41.f64[1];
  v43 = vmulq_f64(*(v3 + 24), *(v3 + 24));
  v44 = v42 + v43.f64[0] + v43.f64[1];
  v45 = vmulq_f64(*(v3 + 40), *(v3 + 40));
  v46 = v44 + v45.f64[0] + v45.f64[1];
  v47 = vmulq_f64(*(v3 + 56), *(v3 + 56));
  v30.n128_f64[0] = vabdd_f64(v23, v46 + v47.f64[0] + v47.f64[1]);
  v48 = v86;
  if (v30.n128_f64[0] > 0.001)
  {
    goto LABEL_12;
  }

  v81 = v25;
  v49 = v3 + v25;
  v50 = v85;
  outlined init with copy of Spring?(v49, v85, v30);
  v51 = v88;
  (*(v88 + 16))(v17, v48, v6);
  v52.n128_f64[0] = (*(v51 + 56))(v17, 0, 1, v6);
  v53 = *(v84 + 48);
  outlined init with copy of Spring?(v50, v12, v52);
  outlined init with copy of Spring?(v17, &v12[v53], v54);
  if (v27(v12, 1, v6) == 1)
  {
    outlined destroy of Spring?(v17, v55);
    outlined destroy of Spring?(v50, v56);
    if (v27(&v12[v53], 1, v6) == 1)
    {
      return outlined destroy of Spring?(v12, v57);
    }

    goto LABEL_11;
  }

  v59 = v83;
  outlined init with copy of Spring?(v12, v83, v55);
  if (v27(&v12[v53], 1, v6) == 1)
  {
    outlined destroy of Spring?(v17, v60);
    outlined destroy of Spring?(v85, v61);
    (*(v88 + 8))(v59, v6);
LABEL_11:
    outlined destroy of Text.Effect.PathInterpolator.Glyph(v12, type metadata accessor for (Spring?, Spring?));
    v48 = v86;
    v25 = v81;
LABEL_12:
    v62 = *(a2 + 48);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = v62;
    *(v3 + 57) = *(a2 + 57);
    v63 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v63;
    v64 = *(v3 + 128);
    v90[2] = *(v3 + 112);
    v91[0] = v64;
    *(v91 + 9) = *(v3 + 137);
    v65 = *(v3 + 80);
    v90[1] = *(v3 + 96);
    v90[0] = v65;
    specialized static Text.Effect.DrawingState.- infix(_:_:)(a2, v90, v89);
    lazy protocol witness table accessor for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState(v66, v67, v68);
    v69 = v3;
    Spring.settlingDuration<A>(target:initialVelocity:epsilon:)();
    v71.n128_f64[0] = v70 + a3;
    v72 = v3 + *(v87 + 52);
    *v72 = v71.n128_u64[0];
    *(v72 + 8) = 0;
    outlined destroy of Spring?(v3 + v25, v71);
    v73 = v88;
    (*(v88 + 16))(v69 + v25, v48, v6);
    return (*(v73 + 56))(v69 + v25, 0, 1, v6);
  }

  v74 = v88;
  v75 = v82;
  (*(v88 + 32))(v82, &v12[v53], v6);
  lazy protocol witness table accessor for type Spring and conformance Spring();
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  v77 = *(v74 + 8);
  v78.n128_f64[0] = v77(v75, v6);
  outlined destroy of Spring?(v17, v78);
  outlined destroy of Spring?(v85, v79);
  v80.n128_f64[0] = v77(v59, v6);
  v48 = v86;
  result = outlined destroy of Spring?(v12, v80);
  v25 = v81;
  if ((v76 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(uint64_t a1, double a2, double a3)
{
  v64 = a1;
  v6 = type metadata accessor for Spring();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Spring?, Spring?)(0, v8);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  v24 = a2 * a2;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v65 = v25;
  v26 = *(v25 + 44);
  outlined init with copy of Spring?(v3 + v26, v23, v27);
  v66 = v7;
  v28 = *(v7 + 48);
  v29 = v28(v23, 1, v6);
  result = outlined destroy of Spring?(v23, v30);
  if (v29 == 1)
  {
    v35 = v3[1];
    if (v35 == a2 || vabdd_f64(v24, v35 * v35) <= 0.001)
    {
      v45 = v3 + *(v65 + 52);
      *v45 = 0;
      v45[8] = 1;
      return result;
    }
  }

  v34.n128_f64[0] = vabdd_f64(v24, *v3 * *v3);
  v36 = v64;
  if (v34.n128_f64[0] > 0.001)
  {
    goto LABEL_12;
  }

  outlined init with copy of Spring?(v3 + v26, v20, v34);
  v37 = v66;
  (*(v66 + 16))(v17, v36, v6);
  v38.n128_f64[0] = (*(v37 + 56))(v17, 0, 1, v6);
  v39 = *(v11 + 48);
  v40 = v62;
  outlined init with copy of Spring?(v20, v62, v38);
  outlined init with copy of Spring?(v17, v40 + v39, v41);
  if (v28(v40, 1, v6) == 1)
  {
    outlined destroy of Spring?(v17, v42);
    outlined destroy of Spring?(v20, v43);
    if (v28((v40 + v39), 1, v6) == 1)
    {
      return outlined destroy of Spring?(v40, v44);
    }

    goto LABEL_11;
  }

  outlined init with copy of Spring?(v40, v63, v42);
  if (v28((v40 + v39), 1, v6) == 1)
  {
    outlined destroy of Spring?(v17, v46);
    outlined destroy of Spring?(v20, v47);
    (*(v66 + 8))(v63, v6);
LABEL_11:
    result = outlined destroy of Text.Effect.PathInterpolator.Glyph(v40, type metadata accessor for (Spring?, Spring?));
LABEL_12:
    *v3 = a2;
    v67 = a2 - v3[1];
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat(result, v32, v33);
    v48 = v3;
    Spring.settlingDuration<A>(target:initialVelocity:epsilon:)();
    v50.n128_f64[0] = v49 + a3;
    v51 = v3 + *(v65 + 52);
    *v51 = v50.n128_u64[0];
    v51[8] = 0;
    outlined destroy of Spring?(v3 + v26, v50);
    v52 = v66;
    (*(v66 + 16))(v48 + v26, v36, v6);
    return (*(v52 + 56))(v48 + v26, 0, 1, v6);
  }

  v53 = v66;
  v54 = v61;
  (*(v66 + 32))(v61, v40 + v39, v6);
  lazy protocol witness table accessor for type Spring and conformance Spring();
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v53 + 8);
  v57.n128_f64[0] = v56(v54, v6);
  outlined destroy of Spring?(v17, v57);
  outlined destroy of Spring?(v20, v58);
  v59.n128_f64[0] = v56(v63, v6);
  v36 = v64;
  result = outlined destroy of Spring?(v40, v59);
  if ((v55 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(unint64_t *a1, uint64_t a2)
{
  return specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(a1, a2, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>);
}

{
  return specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(a1, a2, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.WidthMultiplierAttribute>, lazy protocol witness table accessor for type Text.Effect.WidthMultiplierAttribute and conformance Text.Effect.WidthMultiplierAttribute, &type metadata for Text.Effect.WidthMultiplierAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.WidthMultiplierAttribute>);
}

uint64_t specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, unint64_t *a6)
{
  v11 = v6;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a3, a4, a5, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - v19;
  v21 = *(a2 + 16);
  v79[0] = *a2;
  v79[1] = v21;
  v79[2] = *(a2 + 32);
  v80 = *(a2 + 48);
  if (!*(v11[1] + 16))
  {
    goto LABEL_6;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v79);
  if ((v22 & 1) == 0)
  {
    goto LABEL_6;
  }

  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a6, a4, a5, type metadata accessor for Text.Effect.AttributeTracker.ValueBox);
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    goto LABEL_6;
  }

  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v23 + *(*v23 + 120), v17, a3, a4, a5);
  v24 = &v17[*(v15 + 48)];
  if (v24[8])
  {
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v17, a3, a4, a5);
LABEL_6:
    v25 = 1;
    goto LABEL_7;
  }

  v66 = *v24;
  v67 = &v17[*(v15 + 52)];
  v68 = *v67;
  v69 = v67[8];
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v17, a3, a4, a5);
  v25 = (v69 & 1) != 0 || v68 <= v66;
LABEL_7:
  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(a1, v20, a3, a4, a5);
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a6, a4, a5, type metadata accessor for Text.Effect.AttributeTracker.ValueBox);
  v26 = swift_allocObject();
  v27 = v26 + *(*v26 + 120);
  v77 = a3;
  outlined init with take of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v20, v27, a3, a4, a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v11[1];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v79, isUniquelyReferenced_nonNull_native);
  v11[1] = v78;
  v30 = a1;
  v31 = (a1 + *(v15 + 48));
  v32 = *v31;
  v33 = *(v31 + 8);
  if (v33 & 1) != 0 || (v34 = (v30 + *(v15 + 52)), (v34[1]))
  {
    if (!v25)
    {
      goto LABEL_10;
    }

    return _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v30, v77, a4, a5);
  }

  v46 = v32;
  v47 = *v34;
  if ((v25 ^ (*v34 > v32)))
  {
    return _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v30, v77, a4, a5);
  }

  if (v25)
  {
    v38 = 0;
    v52 = v30;
    goto LABEL_27;
  }

LABEL_10:
  v35 = v11[2];
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
    goto LABEL_44;
  }

  v76 = v32;
  v11[2] = v37;
  v38 = *(&v79[0] + 1);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v78 = v11[3];
  v40 = v78;
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
  v42 = v40[2];
  v43 = (v41 & 1) == 0;
  v36 = __OFADD__(v42, v43);
  v44 = v42 + v43;
  if (v36)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  LOBYTE(v20) = v41;
  if (v40[3] >= v44)
  {
    if ((v39 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, v39);
    v40 = v78;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
    if ((v20 & 1) != (v45 & 1))
    {
      goto LABEL_32;
    }
  }

  v11[3] = v40;
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_19:
  v20 = v29;
  specialized _NativeDictionary._insert(at:key:value:)();
  v29 = v20;
LABEL_20:
  while (1)
  {
    v49 = v40[7];
    v50 = *(v49 + 8 * v29);
    v36 = __OFSUB__(v50, 1);
    v51 = v50 - 1;
    if (!v36)
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    v73 = v29;
    specialized _NativeDictionary.copy()();
    v29 = v73;
    v40 = v78;
    v11[3] = v78;
    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  *(v49 + 8 * v29) = v51;
  if (v33)
  {
    v38 = specialized thunk for @callee_guaranteed () -> (@unowned Int);
    v52 = v30;
    goto LABEL_33;
  }

  v46 = v76;
  v52 = v30;
  v53 = (v30 + *(v15 + 52));
  v47 = *v53;
  v38 = specialized thunk for @callee_guaranteed () -> (@unowned Int);
  if (v53[1])
  {
    goto LABEL_33;
  }

LABEL_27:
  if (v47 > v46)
  {
    v54 = v11[2];
    v36 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v56 = v52;
      v11[2] = v55;
      v57 = *(&v79[0] + 1);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v78 = v11[3];
      v59 = v78;
      v52 = specialized __RawDictionaryStorage.find<A>(_:)(v57);
      v61 = v59[2];
      v62 = (v60 & 1) == 0;
      v36 = __OFADD__(v61, v62);
      v63 = v61 + v62;
      if (!v36)
      {
        LOBYTE(v20) = v60;
        if (v59[3] >= v63)
        {
          if ((v58 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, v58);
          v59 = v78;
          v52 = specialized __RawDictionaryStorage.find<A>(_:)(v57);
          if ((v20 & 1) != (v64 & 1))
          {
LABEL_32:
            v52 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_33;
          }
        }

        while (1)
        {
          v30 = v77;
          v11[3] = v59;
          if ((v20 & 1) == 0)
          {
            v11 = v52;
            specialized _NativeDictionary._insert(at:key:value:)();
            v52 = v11;
          }

          v70 = v59[7];
          v71 = *(v70 + 8 * v52);
          v36 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (!v36)
          {
            break;
          }

LABEL_50:
          __break(1u);
LABEL_51:
          v74 = v52;
          specialized _NativeDictionary.copy()();
          v52 = v74;
          v56 = v30;
          v59 = v78;
        }

        *(v70 + 8 * v52) = v72;
        v52 = v56;
        v65 = v30;
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_33:
  v65 = v77;
LABEL_42:
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v52, v65, a4, a5);
  return _sxRi_zRi0_zlySay7SwiftUI4TextV0C16AnimationSupportE6EffectO14KeyframeLayoutV8FragmentVGIsegr_SgWOe(v38, 0);
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerCy5ValueQzxm_AF18FragmentIdentifierVAF12ClusterIndexVtcAD0cfG0RzluisAF012DrawingStateG0O_Tt0g5(__int128 *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33[-v8];
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33[-v15];
  v34[0] = &type metadata for Text.Effect.DrawingStateAttribute;
  v34[1] = a2;
  v34[2] = a3;
  v34[3] = 0;
  v35 = 1;
  v36 = 0;
  v37 = 1;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v40 = xmmword_1EAEE98D0;
  v41[0] = unk_1EAEE98E0;
  *(v41 + 9) = unk_1EAEE98E9;
  v38 = static Text.Effect.DrawingState.zero;
  v39 = unk_1EAEE98C0;
  v17 = type metadata accessor for Spring();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v19 = a1[2];
  v20 = a1[3];
  v16[2] = v19;
  v16[3] = v20;
  v21 = *(a1 + 57);
  *(v16 + 57) = v21;
  v23 = *a1;
  v22 = a1[1];
  *v16 = *a1;
  v16[1] = v22;
  v16[7] = v19;
  v16[8] = v20;
  *(v16 + 137) = v21;
  v16[5] = v23;
  v16[6] = v22;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v41[0];
  *(v16 + 217) = *(v41 + 9);
  v16[12] = v26;
  v16[13] = v27;
  v16[10] = v24;
  v16[11] = v25;
  v28 = v11[11];
  v18(v16 + v28, 1, 1, v17);
  v29 = v11[13];
  v30 = v16 + v11[12];
  v31 = v16 + v29;
  outlined assign with take of Spring?(v9, v16 + v28);
  *v30 = 0;
  v30[8] = 1;
  *v31 = 0;
  v31[8] = 1;
  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v16, v13, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  swift_beginAccess();
  specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v13, v34, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>);
  swift_endAccess();
  return _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v16, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
}

void specialized Text.Effect.AttributeTracker.Tracker.ensureEntry<A>(for:value:)(uint64_t a1, __int128 *a2, __n128 a3)
{
  v4 = v3;
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v32 - v12);
  v14 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v14;
  v38[2] = *(a1 + 32);
  v39 = *(a1 + 48);
  if (!*(*v4 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v38), (v15 & 1) == 0))
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v36 = xmmword_1EAEE98D0;
    v37[0] = unk_1EAEE98E0;
    *(v37 + 9) = unk_1EAEE98E9;
    v34 = static Text.Effect.DrawingState.zero;
    v35 = unk_1EAEE98C0;
    v16 = type metadata accessor for Spring();
    v17 = *(*(v16 - 8) + 56);
    v17(v9, 1, 1, v16);
    v18 = a2[2];
    v19 = a2[3];
    v13[2] = v18;
    v13[3] = v19;
    v20 = *(a2 + 57);
    *(v13 + 57) = v20;
    v22 = *a2;
    v21 = a2[1];
    *v13 = *a2;
    v13[1] = v21;
    v13[7] = v18;
    v13[8] = v19;
    *(v13 + 137) = v20;
    v13[5] = v22;
    v13[6] = v21;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37[0];
    *(v13 + 217) = *(v37 + 9);
    v13[12] = v25;
    v13[13] = v26;
    v13[10] = v23;
    v13[11] = v24;
    v27 = v11[11];
    v17(v13 + v27, 1, 1, v16);
    v28 = v13 + v11[12];
    v29 = v13 + v11[13];
    outlined assign with take of Spring?(v9, v13 + v27);
    *v28 = 0;
    v28[8] = 1;
    *v29 = 0;
    v29[8] = 1;
    type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox);
    v30 = swift_allocObject();
    outlined init with take of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v13, v30 + *(*v30 + 120), &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v38, isUniquelyReferenced_nonNull_native);
    *v4 = v33;
  }
}

char *Text.Effect.TransformContext.subcomponents(for:)(uint64_t a1, __n128 a2)
{
  v50 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - v8;
  type metadata accessor for (offset: Int, element: Text.Effect.PathInterpolator.Glyph)(0, v7);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v45 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.PathInterpolator.Glyph)?, type metadata accessor for (offset: Int, element: Text.Effect.PathInterpolator.Glyph));
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v45 - v18);
  v21 = *(v2 + 320);
  v20 = *(v2 + 336);
  v22 = *(v2 + 304);
  v55[1] = *(v2 + 288);
  v55[2] = v22;
  v55[3] = v21;
  v56 = v20;
  v57 = *(v2 + 352);
  v55[0] = *(v2 + 272);
  if (*&v55[0])
  {
    v23 = a1 - v56;
    if (__OFSUB__(a1, v56))
    {
      goto LABEL_25;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
    }

    else
    {
      v24 = *(&v56 + 1);
      if (v23 < *(*(&v56 + 1) + 16))
      {
        v25 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
        v26 = *(v24 + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)) + *(*(v25 - 8) + 72) * v23 + *(v25 + 20));
        outlined init with copy of Text.Effect.TransformContext.DrawingMode(v55, v54);
        v52 = (v12 + 56);
        v51 = (v12 + 48);
        v53 = v26;

        v28 = 0;
        v29 = MEMORY[0x1E69E7CC0];
        v49 = v5;
        v48 = v9;
        for (i = v16; ; v16 = i)
        {
          v30 = *(v53 + 16);
          if (v28 == v30)
          {
            v31 = 1;
          }

          else
          {
            if (v28 >= v30)
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            v32 = v53 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v28;
            v33 = *(v11 + 48);
            v34 = v45;
            *v45 = v28;
            outlined init with copy of Text.Effect.PathInterpolator.Glyph(v32, v34 + v33, v27);
            outlined init with take of Text.Effect.PathInterpolator.Glyph(v34, v16, type metadata accessor for (offset: Int, element: Text.Effect.PathInterpolator.Glyph));
            v31 = 0;
            ++v28;
          }

          (*v52)(v16, v31, 1, v11);
          outlined init with take of (offset: Int, element: Text.Effect.PathInterpolator.Glyph)?(v16, v19);
          if ((*v51)(v19, 1, v11) == 1)
          {

            outlined destroy of Text.Effect.TransformContext.DrawingMode(v55);
            return v29;
          }

          v35 = *v19;
          outlined init with take of Text.Effect.PathInterpolator.Glyph(v19 + *(v11 + 48), v9, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
          outlined init with copy of Text.Effect.PathInterpolator.Glyph(v9, v5, v36);
          if (swift_getEnumCaseMultiPayload() - 3 >= 2)
          {
            outlined destroy of Text.Effect.PathInterpolator.Glyph(v5, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
            v37 = 1;
          }

          else
          {
            v37 = *(*v5 + 16);

            if (!v37)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
          }

          v38 = 0;
          v39 = *(v29 + 2);
          v40 = 24 * v39;
          do
          {
            v41 = *(v29 + 3);
            v42 = v39 + 1;
            if (v39 >= v41 >> 1)
            {
              v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v39 + 1, 1, v29);
            }

            *(v29 + 2) = v42;
            v43 = &v29[v40];
            *(v43 + 5) = v35;
            *(v43 + 6) = v38;
            *(v43 + 4) = a1;
            v40 += 24;
            v39 = v42;
            ++v38;
          }

          while (v37 != v38);
LABEL_6:
          v9 = v48;
          outlined destroy of Text.Effect.PathInterpolator.Glyph(v48, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
          v5 = v49;
        }
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Text.Effect.TransformContext.subcomponentBounds(for:)(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  v8 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v4[34])
  {
    goto LABEL_13;
  }

  v12 = v4[42];
  v13 = __OFSUB__(a1, v12);
  v14 = a1 - v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v4[43];
  if (v14 >= *(v15 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  v19 = *(v16 - 8);
  v18 = v16 - 8;
  v20 = *(v19 + 80);
  v21 = *(v19 + 72);
  if ((a2 & 0x8000000000000000) == 0)
  {
    v22 = *(v15 + ((v20 + 32) & ~v20) + v21 * v14 + *(v18 + 28));
    if (*(v22 + 16) > a2)
    {
      outlined init with copy of Text.Effect.PathInterpolator.Glyph(v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, v11, v17);
      Text.Effect.PathInterpolator.Glyph.bounds(for:)(a3);
      return outlined destroy of Text.Effect.PathInterpolator.Glyph(v11, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__n128 Text.Effect.TransformContext.record(target:for:spring:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v126 = a3;
  v10 = &v147;
  v11 = a1[3];
  v153 = a1[2];
  v154[0] = v11;
  *(v154 + 9) = *(a1 + 57);
  v12 = a1[1];
  v151 = *a1;
  v152 = v12;
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v122 - v14;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v24 = v122 - v23;
  if (__OFSUB__(*v6, a2))
  {
    __break(1u);
LABEL_47:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
LABEL_12:
    v38 = *(v10 + 2);
    v37 = *(v10 + 3);
    if (v38 >= v37 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v10);
    }

    v39 = v129[0];
    *(v5 + 24) = v129[1];
    v40 = v129[3];
    *(v5 + 40) = v129[2];
    *(v5 + 56) = v40;
    *(v5 + 72) = v129[4];
    *(v5 + 8) = v39;
    v41 = *a1;
    *(v5 + 104) = a1[1];
    v42 = a1[3];
    *(v5 + 120) = a1[2];
    *(v5 + 136) = v42;
    *(v5 + 145) = *(a1 + 57);
    *(v5 + 88) = v41;
    *&v138[0] = a2;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(v138);
    *(v10 + 2) = v38 + 1;
    v32 = &v10[216 * v38];
    goto LABEL_15;
  }

  v5 = v138;
  if (*v6 != a2)
  {
    a2 = *(v6 + 272);
    v33 = *(v6 + 328);
    v129[2] = *(v6 + 312);
    v129[3] = v33;
    v129[4] = *(v6 + 344);
    v34 = *(v6 + 296);
    v129[0] = *(v6 + 280);
    v129[1] = v34;
    if (!a2)
    {
      v62 = a1[3];
      v149 = a1[2];
      v150[0] = v62;
      *(v150 + 9) = *(a1 + 57);
      v54 = *a1;
      v53 = a1[1];
      goto LABEL_45;
    }

    v10 = *(v6 + 264);
    *&v127[0] = a2;
    v35 = *(v6 + 280);
    *(&v127[1] + 8) = *(v6 + 296);
    v36 = *(v6 + 328);
    *(&v127[2] + 8) = *(v6 + 312);
    *(&v127[3] + 8) = v36;
    *(&v127[4] + 8) = *(v6 + 344);
    *(v127 + 8) = v35;
    outlined init with copy of Text.Effect.PathInterpolator(v127, v138);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

  if (*(v6 + 16))
  {
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerCy5ValueQzxm_AF18FragmentIdentifierVAF12ClusterIndexVtcAD0cfG0RzluisAF012DrawingStateG0O_Tt0g5(a1, *(v6 + 8), a2, v22);
    v25 = *(v6 + 272);
    v26 = *(v6 + 328);
    v129[2] = *(v6 + 312);
    v129[3] = v26;
    v129[4] = *(v6 + 344);
    v27 = *(v6 + 296);
    v129[0] = *(v6 + 280);
    v129[1] = v27;
    if (!v25)
    {
      v149 = v153;
      v150[0] = v154[0];
      *(v150 + 9) = *(v154 + 9);
      goto LABEL_16;
    }

    v10 = *(v6 + 264);
    *&v127[0] = v25;
    v28 = *(v6 + 280);
    *(&v127[1] + 8) = *(v6 + 296);
    v29 = *(v6 + 328);
    *(&v127[2] + 8) = *(v6 + 312);
    *(&v127[3] + 8) = v29;
    *(&v127[4] + 8) = *(v6 + 344);
    *(v127 + 8) = v28;
    outlined init with copy of Text.Effect.PathInterpolator(v127, v138);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v31 = *(v10 + 2);
    v30 = *(v10 + 3);
    if (v31 >= v30 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v10);
    }

    *(&v138[1] + 8) = v129[1];
    *(&v138[2] + 8) = v129[2];
    *(&v138[3] + 8) = v129[3];
    *(&v138[4] + 8) = v129[4];
    *(v138 + 8) = v129[0];
    *(&v138[6] + 8) = v152;
    *(&v138[7] + 8) = v153;
    *(&v138[8] + 8) = v154[0];
    *(&v138[9] + 1) = *(v154 + 9);
    *(&v138[5] + 8) = v151;
    *&v138[0] = v25;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(v138);
    *(v10 + 2) = v31 + 1;
    v32 = &v10[216 * v31];
LABEL_15:
    v43 = v138[1];
    *(v32 + 2) = v138[0];
    *(v32 + 3) = v43;
    v44 = v138[2];
    v45 = v138[3];
    v46 = v138[5];
    *(v32 + 6) = v138[4];
    *(v32 + 7) = v46;
    *(v32 + 4) = v44;
    *(v32 + 5) = v45;
    v47 = v138[6];
    v48 = v138[7];
    v49 = v138[9];
    *(v32 + 10) = v138[8];
    *(v32 + 11) = v49;
    *(v32 + 8) = v47;
    *(v32 + 9) = v48;
    v50 = v138[10];
    v51 = v138[11];
    v52 = v138[12];
    v32[240] = v138[13];
    *(v32 + 13) = v51;
    *(v32 + 14) = v52;
    *(v32 + 12) = v50;
    *(v6 + 264) = v10;
    *(v150 + 9) = *(v154 + 9);
    v150[0] = v154[0];
    v149 = v153;
LABEL_16:
    v54 = v151;
    v53 = v152;
    goto LABEL_45;
  }

  if (*(v6 + 56))
  {
    v123 = v21;
    v124 = v20;
    v125 = v19;
    v55 = *(v6 + 256);
    v56 = *(v6 + 8);
    if (*(v6 + 40) - *(v6 + 24) < 0.0)
    {
      v57 = 0.0;
    }

    else
    {
      v57 = *(v6 + 40) - *(v6 + 24);
    }

    v143[0] = &type metadata for Text.Effect.DrawingStateAttribute;
    v143[1] = v56;
    v143[2] = a2;
    v143[3] = 0;
    v144 = 1;
    v145 = 0;
    v146 = 1;
    v139[0] = &type metadata for Text.Effect.DrawingStateAttribute;
    v139[1] = v56;
    v139[2] = a2;
    v139[3] = 0;
    v140 = 1;
    v141 = 0;
    v142 = 1;
    v58 = a1[3];
    v127[2] = a1[2];
    v127[3] = v58;
    *(&v127[3] + 9) = *(a1 + 57);
    v59 = a1[1];
    v127[0] = *a1;
    v127[1] = v59;
    swift_beginAccess();
    v122[1] = v55;
    if (*(*(v55 + 16) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v143), (v60 & 1) != 0) && (type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox), (v61 = swift_dynamicCastClass()) != 0))
    {
      outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v61 + *(*v61 + 120), v24, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    }

    else
    {
      if (one-time initialization token for zero != -1)
      {
        swift_once();
      }

      v138[2] = xmmword_1EAEE98D0;
      v138[3] = unk_1EAEE98E0;
      *(&v138[3] + 9) = unk_1EAEE98E9;
      v138[0] = static Text.Effect.DrawingState.zero;
      v138[1] = unk_1EAEE98C0;
      v64 = type metadata accessor for Spring();
      v65 = *(*(v64 - 8) + 56);
      v65(v15, 1, 1, v64);
      v66 = v65;
      *v24 = 0u;
      *(v24 + 1) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v24 + 2) = 0u;
      *(v24 + 3) = _Q1;
      *(v24 + 8) = 0x3FF0000000000000;
      v24[72] = 0;
      *(v24 + 5) = 0u;
      *(v24 + 6) = 0u;
      *(v24 + 7) = 0u;
      *(v24 + 8) = _Q1;
      *(v24 + 18) = 0x3FF0000000000000;
      v24[152] = 0;
      v72 = v138[3];
      *(v24 + 12) = v138[2];
      *(v24 + 13) = v72;
      *(v24 + 217) = *(&v138[3] + 9);
      v73 = v138[1];
      *(v24 + 10) = v138[0];
      *(v24 + 11) = v73;
      v74 = v125;
      v75 = *(v125 + 44);
      v66(&v24[v75], 1, 1, v64);
      v76 = &v24[*(v74 + 48)];
      v77 = &v24[*(v74 + 52)];
      outlined assign with take of Spring?(v15, &v24[v75]);
      *v76 = 0;
      v76[8] = 1;
      *v77 = 0;
      v77[8] = 1;
    }

    swift_endAccess();
    v78 = v126;
    if (Spring.isValid.getter())
    {
      v79 = a1[2];
      *(v24 + 7) = v79;
      *(v24 + 2) = v79;
      *(v24 + 24) = 0;
      *(v24 + 25) = 0;
      v138[2] = v127[2];
      v138[3] = v127[3];
      *(&v138[3] + 9) = *(&v127[3] + 9);
      v138[0] = v127[0];
      v138[1] = v127[1];
      v80 = specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(v78, v138, v57);
      v81 = &v24[*(v125 + 48)];
      lazy protocol witness table accessor for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState(v80, v82, v83);
      Spring.update<A>(value:velocity:target:deltaTime:)();
      *v81 = v57;
      v81[8] = 0;
    }

    else
    {
      v132 = v127[2];
      v133[0] = v127[3];
      *(v133 + 9) = *(&v127[3] + 9);
      v130 = v127[0];
      v131 = v127[1];
      v129[2] = v127[2];
      v129[3] = v127[3];
      *(&v129[3] + 9) = *(&v127[3] + 9);
      v129[0] = v127[0];
      v129[1] = v127[1];
      if (one-time initialization token for zero != -1)
      {
        swift_once();
      }

      v138[2] = xmmword_1EAEE98D0;
      v138[3] = unk_1EAEE98E0;
      *(&v138[3] + 9) = unk_1EAEE98E9;
      v138[0] = static Text.Effect.DrawingState.zero;
      v138[1] = unk_1EAEE98C0;
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v24, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
      v84 = type metadata accessor for Spring();
      v85 = *(v84 - 8);
      (*(v85 + 16))(v15, v78, v84);
      v86 = *(v85 + 56);
      v86(v15, 0, 1, v84);
      v87 = v133[0];
      *(v24 + 2) = v132;
      *(v24 + 3) = v87;
      *(v24 + 57) = *(v133 + 9);
      v88 = v131;
      *v24 = v130;
      *(v24 + 1) = v88;
      v89 = v129[3];
      *(v24 + 7) = v129[2];
      *(v24 + 8) = v89;
      *(v24 + 137) = *(&v129[3] + 9);
      v90 = v129[1];
      *(v24 + 5) = v129[0];
      *(v24 + 6) = v90;
      v91 = v138[3];
      *(v24 + 12) = v138[2];
      *(v24 + 13) = v91;
      *(v24 + 217) = *(&v138[3] + 9);
      v92 = v138[1];
      *(v24 + 10) = v138[0];
      *(v24 + 11) = v92;
      v93 = v125;
      v94 = *(v125 + 44);
      v86(&v24[v94], 1, 1, v84);
      v95 = &v24[*(v93 + 48)];
      v96 = &v24[*(v93 + 52)];
      outlined assign with take of Spring?(v15, &v24[v94]);
      *v95 = 0;
      v95[8] = 1;
      *v96 = 0;
      v96[8] = 1;
    }

    v97 = v124;
    outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v24, v124, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v98 = v123;
    outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v97, v123, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    swift_beginAccess();
    specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v98, v139, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>);
    swift_endAccess();
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v97, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v99 = *(v24 + 8);
    v136 = *(v24 + 7);
    v137[0] = v99;
    *(v137 + 9) = *(v24 + 137);
    v100 = *(v24 + 6);
    v134 = *(v24 + 5);
    v135 = v100;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v24, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  }

  else
  {
    memcpy(v138, v6, 0x179uLL);
    Text.Effect.TransformContext.cancelPosition(target:)(a1, &v134, v63);
  }

  v101 = *(v6 + 272);
  v102 = *(v6 + 328);
  v132 = *(v6 + 312);
  v133[0] = v102;
  v133[1] = *(v6 + 344);
  v103 = *(v6 + 296);
  v130 = *(v6 + 280);
  v131 = v103;
  if (v101)
  {
    v104 = *(v6 + 264);
    *&v129[0] = v101;
    v105 = *(v6 + 280);
    *(&v129[1] + 8) = *(v6 + 296);
    v106 = *(v6 + 328);
    *(&v129[2] + 8) = *(v6 + 312);
    *(&v129[3] + 8) = v106;
    *(&v129[4] + 8) = *(v6 + 344);
    *(v129 + 8) = v105;
    outlined init with copy of Text.Effect.PathInterpolator(v129, v127);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 2) + 1, 1, v104);
    }

    v108 = *(v104 + 2);
    v107 = *(v104 + 3);
    if (v108 >= v107 >> 1)
    {
      v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1, v104);
    }

    *(&v127[1] + 8) = v131;
    *(&v127[2] + 8) = v132;
    *(&v127[3] + 8) = v133[0];
    *(&v127[4] + 8) = v133[1];
    *(v127 + 8) = v130;
    *(&v127[6] + 8) = v135;
    *(&v127[7] + 8) = v136;
    *(&v127[8] + 8) = v137[0];
    *(&v127[9] + 1) = *(v137 + 9);
    *(&v127[5] + 8) = v134;
    *&v127[0] = v101;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(v127);
    *(v104 + 2) = v108 + 1;
    v109 = &v104[216 * v108];
    v110 = v127[1];
    *(v109 + 2) = v127[0];
    *(v109 + 3) = v110;
    v111 = v127[2];
    v112 = v127[3];
    v113 = v127[5];
    *(v109 + 6) = v127[4];
    *(v109 + 7) = v113;
    *(v109 + 4) = v111;
    *(v109 + 5) = v112;
    v114 = v127[6];
    v115 = v127[7];
    v116 = v127[9];
    *(v109 + 10) = v127[8];
    *(v109 + 11) = v116;
    *(v109 + 8) = v114;
    *(v109 + 9) = v115;
    v117 = v127[10];
    v118 = v127[11];
    v119 = v127[12];
    v109[240] = v128;
    *(v109 + 13) = v118;
    *(v109 + 14) = v119;
    *(v109 + 12) = v117;
    *(v6 + 264) = v104;
    *(v150 + 9) = *(v137 + 9);
    v150[0] = v137[0];
    v149 = v136;
  }

  else
  {
    v149 = v136;
    v150[0] = v137[0];
    *(v150 + 9) = *(v137 + 9);
  }

  v54 = v134;
  v53 = v135;
LABEL_45:
  v148 = v53;
  v147 = v54;
  v120 = v150[0];
  *(a4 + 32) = v149;
  *(a4 + 48) = v120;
  *(a4 + 57) = *(v150 + 9);
  result = v148;
  *a4 = v147;
  *(a4 + 16) = result;
  return result;
}

__n128 Text.Effect.TransformContext.update(target:for:spring:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a1[3];
  v105 = a1[2];
  v106[0] = v10;
  *(v106 + 9) = *(a1 + 57);
  v11 = a1[1];
  v103 = *a1;
  v104 = v11;
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v76 - v13;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v23 = &v76 - v22;
  if (__OFSUB__(*v4, a2))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*v4 != a2)
  {
    v24 = a1[3];
    v101 = a1[2];
    v102[0] = v24;
    *(v102 + 9) = *(a1 + 57);
    v26 = *a1;
    v25 = a1[1];
LABEL_6:
    v99 = v26;
    v100 = v25;
    goto LABEL_7;
  }

  if (*(v4 + 16))
  {
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerCy5ValueQzxm_AF18FragmentIdentifierVAF12ClusterIndexVtcAD0cfG0RzluisAF012DrawingStateG0O_Tt0g5(a1, *(v4 + 8), a2, v21);
    v101 = v105;
    v102[0] = v106[0];
    *(v102 + 9) = *(v106 + 9);
    v26 = v103;
    v25 = v104;
    goto LABEL_6;
  }

  if ((*(v4 + 56) & 1) == 0)
  {
    memcpy(v90, v4, 0x179uLL);
    Text.Effect.TransformContext.cancelPosition(target:)(a1, &v99, v37);
    goto LABEL_7;
  }

  v80 = v18;
  v81 = a3;
  v77 = v20;
  v79 = v19;
  v29 = *(v4 + 256);
  v30 = *(v4 + 8);
  if (*(v4 + 40) - *(v4 + 24) < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *(v4 + 40) - *(v4 + 24);
  }

  v95[0] = &type metadata for Text.Effect.DrawingStateAttribute;
  v95[1] = v30;
  v95[2] = a2;
  v95[3] = 0;
  v96 = 1;
  v97 = 0;
  v98 = 1;
  v91[0] = &type metadata for Text.Effect.DrawingStateAttribute;
  v91[1] = v30;
  v91[2] = a2;
  a2 = &v86;
  v91[3] = 0;
  v92 = 1;
  v93 = 0;
  v94 = 1;
  v31 = a1[3];
  v88 = a1[2];
  v89[0] = v31;
  *(v89 + 9) = *(a1 + 57);
  v32 = a1[1];
  v86 = *a1;
  v87 = v32;
  swift_beginAccess();
  v78 = v29;
  v33 = *(v29 + 16);
  a3 = &static Text.Effect.DrawingState.zero;
  if (!*(v33 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v95), (v34 & 1) == 0) || (type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox), (v35 = swift_dynamicCastClass()) == 0))
  {
    if (one-time initialization token for zero == -1)
    {
LABEL_18:
      v38 = a3[3];
      v90[2] = a3[2];
      v90[3] = v38;
      *(a2 + 137) = *(a3 + 57);
      v39 = a3[1];
      v90[0] = *a3;
      v90[1] = v39;
      v40 = type metadata accessor for Spring();
      v41 = *(*(v40 - 8) + 56);
      v41(v14, 1, 1, v40);
      v42 = v41;
      *v23 = 0u;
      *(v23 + 1) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v23 + 2) = 0u;
      *(v23 + 3) = _Q1;
      *(v23 + 8) = 0x3FF0000000000000;
      v23[72] = 0;
      *(v23 + 5) = 0u;
      *(v23 + 6) = 0u;
      *(v23 + 7) = 0u;
      *(v23 + 8) = _Q1;
      *(v23 + 18) = 0x3FF0000000000000;
      v23[152] = 0;
      v48 = v90[3];
      *(v23 + 12) = v90[2];
      *(v23 + 13) = v48;
      *(v23 + 217) = *(a2 + 137);
      v49 = v90[1];
      *(v23 + 10) = v90[0];
      *(v23 + 11) = v49;
      v50 = v80;
      v51 = *(v80 + 44);
      v42(&v23[v51], 1, 1, v40);
      v52 = &v23[*(v50 + 48)];
      v53 = &v23[*(v50 + 52)];
      outlined assign with take of Spring?(v14, &v23[v51]);
      *v52 = 0;
      v52[8] = 1;
      *v53 = 0;
      v53[8] = 1;
      v36 = v77;
      goto LABEL_19;
    }

LABEL_26:
    swift_once();
    goto LABEL_18;
  }

  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v35 + *(*v35 + 120), v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  v36 = v77;
LABEL_19:
  swift_endAccess();
  v54 = v81;
  if (Spring.isValid.getter())
  {
    v55 = a1[2];
    *(v23 + 7) = v55;
    *(v23 + 2) = v55;
    *(v23 + 24) = 0;
    *(v23 + 25) = 0;
    v90[2] = v88;
    v90[3] = v89[0];
    *(&v90[3] + 9) = *(v89 + 9);
    v90[0] = v86;
    v90[1] = v87;
    v56 = specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(v54, v90, v5);
    v57 = &v23[*(v80 + 48)];
    lazy protocol witness table accessor for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState(v56, v58, v59);
    Spring.update<A>(value:velocity:target:deltaTime:)();
    *v57 = v5;
    v57[8] = 0;
  }

  else
  {
    v84 = v88;
    v85[0] = v89[0];
    *(v85 + 9) = *(v89 + 9);
    v82 = v86;
    v83 = v87;
    v101 = v88;
    v102[0] = v89[0];
    *(v102 + 9) = *(v89 + 9);
    v99 = v86;
    v100 = v87;
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v90[2] = xmmword_1EAEE98D0;
    v90[3] = unk_1EAEE98E0;
    *(&v90[3] + 9) = unk_1EAEE98E9;
    v90[0] = static Text.Effect.DrawingState.zero;
    v90[1] = unk_1EAEE98C0;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v60 = type metadata accessor for Spring();
    v61 = *(v60 - 8);
    (*(v61 + 16))(v14, v81, v60);
    v62 = *(v61 + 56);
    v62(v14, 0, 1, v60);
    v63 = v85[0];
    *(v23 + 2) = v84;
    *(v23 + 3) = v63;
    *(v23 + 57) = *(v85 + 9);
    v64 = v83;
    *v23 = v82;
    *(v23 + 1) = v64;
    v65 = v102[0];
    *(v23 + 7) = v101;
    *(v23 + 8) = v65;
    *(v23 + 137) = *(v102 + 9);
    v66 = v100;
    *(v23 + 5) = v99;
    *(v23 + 6) = v66;
    v67 = v90[3];
    *(v23 + 12) = v90[2];
    *(v23 + 13) = v67;
    *(v23 + 217) = *(&v90[3] + 9);
    v68 = v90[1];
    *(v23 + 10) = v90[0];
    *(v23 + 11) = v68;
    v69 = v80;
    v70 = *(v80 + 44);
    v62(&v23[v70], 1, 1, v60);
    v71 = &v23[*(v69 + 48)];
    v72 = &v23[*(v69 + 52)];
    outlined assign with take of Spring?(v14, &v23[v70]);
    *v71 = 0;
    v71[8] = 1;
    *v72 = 0;
    v72[8] = 1;
  }

  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v23, v36, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  v73 = v79;
  outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v36, v79, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  swift_beginAccess();
  specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v73, v91, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>);
  swift_endAccess();
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v36, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
  v74 = *(v23 + 8);
  v101 = *(v23 + 7);
  v102[0] = v74;
  *(v102 + 9) = *(v23 + 137);
  v75 = *(v23 + 6);
  v99 = *(v23 + 5);
  v100 = v75;
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v23, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
LABEL_7:
  v27 = v102[0];
  *(a4 + 32) = v101;
  *(a4 + 48) = v27;
  *(a4 + 57) = *(v102 + 9);
  result = v100;
  *a4 = v99;
  *(a4 + 16) = result;
  return result;
}

void Text.Effect.TransformContext.cancelPosition(target:)(uint64_t a1@<X0>, __int128 *a2@<X8>, __n128 a3@<Q0>)
{
  v78 = a2;
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v71 - v6;
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.Value);
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v79 = (&v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v71 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - v12;
  v14 = type metadata accessor for Spring();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v71 - v19;
  if (*(v3 + 56))
  {
    __break(1u);
  }

  else
  {
    if (*(v3 + 40) - *(v3 + 48) < 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = *(v3 + 40) - *(v3 + 48);
    }

    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(v3 + 256);
    v26 = *v3;
    v25 = *(v3 + 8);
    v103[0] = &type metadata for Text.Effect.DrawingStateAttribute;
    v103[1] = v25;
    v103[2] = v26;
    v103[3] = 0;
    v104 = 1;
    v105 = 0;
    v106 = 1;
    v95[0] = &type metadata for Text.Effect.DrawingStateAttribute;
    v95[1] = v25;
    v95[2] = v26;
    v95[3] = 0;
    v96 = 1;
    v97 = 0;
    v98 = 1;
    swift_beginAccess();
    specialized Text.Effect.AttributeTracker.Tracker.ensureEntry<A>(for:value:)(v95, a1, v27);
    swift_endAccess();
    Spring.init(mass:stiffness:damping:allowOverDamping:)();
    v28 = Spring.settlingDuration.getter();
    MEMORY[0x19A8BD3C0](v28);
    Spring.dampingRatio.getter();
    Spring.init(response:dampingRatio:)();
    v74 = *(v15 + 8);
    v75 = v15 + 8;
    v74(v17, v14);
    v91 = 0u;
    v92 = 0u;
    *&v93 = v22;
    *(&v93 + 1) = v23;
    __asm { FMOV            V0.2D, #1.0 }

    v73 = _Q0;
    v94[0] = _Q0;
    *&v94[1] = 0x3FF0000000000000;
    BYTE8(v94[1]) = 0;
    swift_beginAccess();
    v76 = v24;
    v34 = *(*(v24 + 16) + 16);
    v81 = v20;
    v72 = v15;
    if (v34 && (specialized __RawDictionaryStorage.find<A>(_:)(v103), (v35 & 1) != 0) && (type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, type metadata accessor for Text.Effect.AttributeTracker.ValueBox), (v36 = swift_dynamicCastClass()) != 0))
    {
      outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v36 + *(*v36 + 120), v13, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    }

    else
    {
      if (one-time initialization token for zero != -1)
      {
        swift_once();
      }

      v101 = xmmword_1EAEE98D0;
      v102[0] = unk_1EAEE98E0;
      *(v102 + 9) = unk_1EAEE98E9;
      v99 = static Text.Effect.DrawingState.zero;
      v100 = unk_1EAEE98C0;
      v37 = *(v15 + 56);
      v38 = v80;
      v37(v80, 1, 1, v14);
      *v13 = 0u;
      *(v13 + 1) = 0u;
      v39 = v73;
      *(v13 + 2) = 0u;
      *(v13 + 3) = v39;
      *(v13 + 8) = 0x3FF0000000000000;
      v13[72] = 0;
      *(v13 + 5) = 0u;
      *(v13 + 6) = 0u;
      *(v13 + 7) = 0u;
      *(v13 + 8) = v39;
      *(v13 + 18) = 0x3FF0000000000000;
      v13[152] = 0;
      v40 = v102[0];
      *(v13 + 12) = v101;
      *(v13 + 13) = v40;
      *(v13 + 217) = *(v102 + 9);
      v41 = v100;
      *(v13 + 10) = v99;
      *(v13 + 11) = v41;
      v42 = v82;
      v43 = *(v82 + 44);
      v37(&v13[v43], 1, 1, v14);
      v44 = &v13[*(v42 + 48)];
      v45 = &v13[*(v42 + 52)];
      outlined assign with take of Spring?(v38, &v13[v43]);
      *v44 = 0;
      v44[8] = 1;
      *v45 = 0;
      v45[8] = 1;
      v20 = v81;
    }

    swift_endAccess();
    if (Spring.isValid.getter())
    {
      *(v13 + 14) = v22;
      *(v13 + 15) = v23;
      *(v13 + 4) = v22;
      *(v13 + 5) = v23;
      *(v13 + 24) = 0;
      *(v13 + 25) = 0;
      v101 = v93;
      v102[0] = v94[0];
      *(v102 + 9) = *(v94 + 9);
      v99 = v91;
      v100 = v92;
      v46 = specialized Text.Effect.AttributeTracker.Value.updateSettlingTime(spring:target:at:)(v20, &v99, v21);
      v47 = &v13[*(v82 + 48)];
      lazy protocol witness table accessor for type Text.Effect.DrawingState and conformance Text.Effect.DrawingState(v46, v48, v49);
      Spring.update<A>(value:velocity:target:deltaTime:)();
      *v47 = v21;
      v47[8] = 0;
      v50 = v14;
    }

    else
    {
      v85 = v93;
      v86[0] = v94[0];
      *(v86 + 9) = *(v94 + 9);
      v83 = v91;
      v84 = v92;
      v89 = v93;
      v90[0] = v94[0];
      *(v90 + 9) = *(v94 + 9);
      v87 = v91;
      v88 = v92;
      if (one-time initialization token for zero != -1)
      {
        swift_once();
      }

      v101 = xmmword_1EAEE98D0;
      v102[0] = unk_1EAEE98E0;
      *(v102 + 9) = unk_1EAEE98E9;
      v99 = static Text.Effect.DrawingState.zero;
      v100 = unk_1EAEE98C0;
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v13, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
      v51 = v72;
      v52 = v80;
      (*(v72 + 16))(v80, v20, v14);
      v53 = *(v51 + 56);
      v53(v52, 0, 1, v14);
      v54 = v86[0];
      *(v13 + 2) = v85;
      *(v13 + 3) = v54;
      *(v13 + 57) = *(v86 + 9);
      v55 = v84;
      *v13 = v83;
      *(v13 + 1) = v55;
      v56 = v90[0];
      *(v13 + 7) = v89;
      *(v13 + 8) = v56;
      *(v13 + 137) = *(v90 + 9);
      v57 = v88;
      *(v13 + 5) = v87;
      *(v13 + 6) = v57;
      v58 = v102[0];
      *(v13 + 12) = v101;
      *(v13 + 13) = v58;
      *(v13 + 217) = *(v102 + 9);
      v59 = v100;
      *(v13 + 10) = v99;
      *(v13 + 11) = v59;
      v60 = v82;
      v61 = *(v82 + 44);
      v53(&v13[v61], 1, 1, v14);
      v62 = &v13[*(v60 + 48)];
      v63 = &v13[*(v60 + 52)];
      outlined assign with take of Spring?(v52, &v13[v61]);
      *v62 = 0;
      v62[8] = 1;
      *v63 = 0;
      v63[8] = 1;
      v50 = v14;
    }

    v64 = v77;
    outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v13, v77, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v65 = v79;
    outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(v64, v79, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    swift_beginAccess();
    specialized Text.Effect.AttributeTracker.Tracker.subscript.setter(v65, v95, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.ValueBox<Text.Effect.DrawingStateAttribute>);
    swift_endAccess();
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v64, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v74(v81, v50);
    v66 = *(v13 + 8);
    v89 = *(v13 + 7);
    v90[0] = v66;
    *(v90 + 9) = *(v13 + 137);
    v67 = *(v13 + 6);
    v87 = *(v13 + 5);
    v88 = v67;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(v13, &lazy cache variable for type metadata for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>, lazy protocol witness table accessor for type Text.Effect.DrawingStateAttribute and conformance Text.Effect.DrawingStateAttribute, &type metadata for Text.Effect.DrawingStateAttribute);
    v68 = v90[0];
    v69 = v78;
    v78[2] = v89;
    v69[3] = v68;
    *(v69 + 57) = *(v90 + 9);
    v70 = v88;
    *v69 = v87;
    v69[1] = v70;
  }
}

__n128 Text.Effect.TransformContext.draw(state:keyPath:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *(v5 + 280);
  v63 = *(v5 + 296);
  v8 = *(v5 + 328);
  v64 = *(v5 + 312);
  v65 = v8;
  v66 = *(v5 + 344);
  v9 = *(v5 + 272);
  v62 = v7;
  if (v9)
  {
    v11 = *(v5 + 280);
    v58 = *(v5 + 296);
    v12 = *(v5 + 328);
    v59 = *(v5 + 312);
    v60 = v12;
    v61 = *(v5 + 344);
    v48 = *(v5 + 368);
    v49 = *(v5 + 360);
    v13 = *(v5 + 376);
    v14 = *(v5 + 264);
    v56 = v9;
    v57 = v11;
    outlined init with copy of Text.Effect.PathInterpolator(&v56, v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    *&v53[24] = v63;
    *&v53[40] = v64;
    *&v53[56] = v65;
    *&v53[72] = v66;
    *&v53[8] = v62;
    v17 = *a1;
    *&v53[104] = a1[1];
    v18 = a1[3];
    *&v53[120] = a1[2];
    *&v53[136] = v18;
    *&v53[145] = *(a1 + 57);
    *&v53[88] = v17;
    *v53 = v9;
    *&v53[164] = v49;
    *&v53[172] = v48;
    v53[180] = v13;
    *&v53[184] = a2;
    *&v54 = a3;
    *(&v54 + 1) = a4;
    v55 = a5 & 1;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi0_(v53);
    *(v14 + 2) = v16 + 1;
    v19 = &v14[216 * v16];
    v20 = *&v53[16];
    *(v19 + 2) = *v53;
    *(v19 + 3) = v20;
    v21 = *&v53[32];
    v22 = *&v53[48];
    v23 = *&v53[80];
    *(v19 + 6) = *&v53[64];
    *(v19 + 7) = v23;
    *(v19 + 4) = v21;
    *(v19 + 5) = v22;
    v24 = *&v53[96];
    v25 = *&v53[112];
    v26 = *&v53[144];
    *(v19 + 10) = *&v53[128];
    *(v19 + 11) = v26;
    *(v19 + 8) = v24;
    *(v19 + 9) = v25;
    result = *&v53[160];
    v28 = *&v53[176];
    v29 = v54;
    v19[240] = v55;
    *(v19 + 13) = v28;
    *(v19 + 14) = v29;
    *(v19 + 12) = result;
    *(v5 + 264) = v14;
  }

  else
  {
    v30 = *(v5 + 360);
    v31 = *(v5 + 368);
    v32 = *(v5 + 376);
    v33 = *(v5 + 264);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
    }

    v36 = a1[3];
    *&v53[32] = a1[2];
    *&v53[48] = v36;
    *&v53[57] = *(a1 + 57);
    v37 = a1[1];
    *v53 = *a1;
    *&v53[16] = v37;
    LOBYTE(v56) = v32;
    *&v53[76] = v30;
    *&v53[84] = v31;
    v53[92] = v32;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi_(v53);
    *(v33 + 2) = v35 + 1;
    v38 = &v33[216 * v35];
    v39 = *&v53[16];
    *(v38 + 2) = *v53;
    *(v38 + 3) = v39;
    v40 = *&v53[32];
    v41 = *&v53[48];
    v42 = *&v53[80];
    *(v38 + 6) = *&v53[64];
    *(v38 + 7) = v42;
    *(v38 + 4) = v40;
    *(v38 + 5) = v41;
    v43 = *&v53[96];
    v44 = *&v53[112];
    v45 = *&v53[144];
    *(v38 + 10) = *&v53[128];
    *(v38 + 11) = v45;
    *(v38 + 8) = v43;
    *(v38 + 9) = v44;
    result = *&v53[160];
    v46 = *&v53[176];
    v47 = v54;
    v38[240] = v55;
    *(v38 + 13) = v46;
    *(v38 + 14) = v47;
    *(v38 + 12) = result;
    *(v5 + 264) = v33;
  }

  return result;
}

__n128 Text.Effect.TransformContext.record(position:for:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a1[3];
  v83 = a1[2];
  v84[0] = v9;
  *(v84 + 9) = *(a1 + 57);
  v10 = a1[1];
  v81 = *a1;
  v82 = v10;
  if (__OFSUB__(*v3, a2))
  {
    __break(1u);
LABEL_22:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = v66;
  if (*v3 == a2)
  {
    if (v3[56])
    {
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerCy5ValueQzxm_AF18FragmentIdentifierVAF12ClusterIndexVtcAD0cfG0RzluisAF012DrawingStateG0O_Tt0g5(a1, *(v3 + 1), a2, v10);
      v74 = v83;
      v75[0] = v84[0];
      *(v75 + 9) = *(v84 + 9);
      v72 = v81;
      v73 = v82;
    }

    else
    {
      memcpy(__dst, v3, 0x179uLL);
      Text.Effect.TransformContext.cancelPosition(target:)(a1, &v72, v38);
    }

    v39 = *(v3 + 34);
    v40 = (v3 + 280);
    v41 = *(v3 + 328);
    v69 = *(v3 + 312);
    v70 = v41;
    v71 = *(v3 + 344);
    v42 = *(v3 + 296);
    v67 = *(v3 + 280);
    v68 = v42;
    if (v39)
    {
      v43 = *(v3 + 33);
      *&v66[0] = v39;
      v44 = *v40;
      *(&v66[1] + 8) = *(v4 + 296);
      v45 = *(v4 + 328);
      *(&v66[2] + 8) = *(v4 + 312);
      *(&v66[3] + 8) = v45;
      *(&v66[4] + 8) = *(v4 + 344);
      *(v66 + 8) = v44;
      outlined init with copy of Text.Effect.PathInterpolator(v66, v62);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
      }

      v47 = *(v43 + 2);
      v46 = *(v43 + 3);
      if (v47 >= v46 >> 1)
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v43);
      }

      *&v62[24] = v68;
      *&v62[40] = v69;
      *&v62[56] = v70;
      *&v62[72] = v71;
      *&v62[8] = v67;
      *&v62[104] = v73;
      *&v62[120] = v74;
      *&v62[136] = v75[0];
      *&v62[145] = *(v75 + 9);
      *&v62[88] = v72;
      *v62 = v39;
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(v62);
      *(v43 + 2) = v47 + 1;
      v48 = &v43[216 * v47];
      v49 = *&v62[16];
      *(v48 + 2) = *v62;
      *(v48 + 3) = v49;
      v50 = *&v62[32];
      v51 = *&v62[48];
      v52 = *&v62[80];
      *(v48 + 6) = *&v62[64];
      *(v48 + 7) = v52;
      *(v48 + 4) = v50;
      *(v48 + 5) = v51;
      v53 = *&v62[96];
      v54 = *&v62[112];
      v55 = *&v62[144];
      *(v48 + 10) = *&v62[128];
      *(v48 + 11) = v55;
      *(v48 + 8) = v53;
      *(v48 + 9) = v54;
      v56 = *&v62[160];
      v57 = v63;
      v58 = v64;
      v48[240] = v65;
      *(v48 + 13) = v57;
      *(v48 + 14) = v58;
      *(v48 + 12) = v56;
      *(v4 + 33) = v43;
      *(v80 + 9) = *(v75 + 9);
      v79 = v74;
      v80[0] = v75[0];
    }

    else
    {
      v79 = v74;
      v80[0] = v75[0];
      *(v80 + 9) = *(v75 + 9);
    }

    v36 = v72;
    v35 = v73;
    goto LABEL_20;
  }

  v6 = *(v3 + 34);
  v11 = (v3 + 280);
  v12 = *(v3 + 328);
  v66[2] = *(v3 + 312);
  v66[3] = v12;
  v66[4] = *(v3 + 344);
  v13 = *(v3 + 296);
  v66[0] = *(v3 + 280);
  v66[1] = v13;
  if (!v6)
  {
    v59 = a1[3];
    v79 = a1[2];
    v80[0] = v59;
    *(v80 + 9) = *(a1 + 57);
    v36 = *a1;
    v35 = a1[1];
    goto LABEL_20;
  }

  v7 = a1;
  v3 = *(v3 + 33);
  *v62 = v6;
  v14 = *v11;
  v15 = *(v4 + 312);
  v16 = *(v4 + 328);
  *&v62[24] = *(v4 + 296);
  *&v62[40] = v15;
  v17 = *(v4 + 344);
  *&v62[56] = v16;
  *&v62[72] = v17;
  *&v62[8] = v14;
  outlined init with copy of Text.Effect.PathInterpolator(v62, __dst);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_7:
  v19 = *(v3 + 2);
  v18 = *(v3 + 3);
  if (v19 >= v18 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v3);
  }

  v20 = *v5;
  *(&__dst[1] + 8) = v5[1];
  v21 = v5[3];
  *(&__dst[2] + 8) = v5[2];
  *(&__dst[3] + 8) = v21;
  *(&__dst[4] + 8) = v5[4];
  *(__dst + 8) = v20;
  v22 = *v7;
  *(&__dst[6] + 8) = v7[1];
  v23 = v7[3];
  *(&__dst[7] + 8) = v7[2];
  *(&__dst[8] + 8) = v23;
  *(&__dst[9] + 1) = *(v7 + 57);
  *(&__dst[5] + 8) = v22;
  *&__dst[0] = v6;
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11DisplayInfoV13DrawOperationOWOi1_(__dst);
  *(v3 + 2) = v19 + 1;
  v24 = &v3[216 * v19];
  v25 = __dst[1];
  *(v24 + 2) = __dst[0];
  *(v24 + 3) = v25;
  v26 = __dst[2];
  v27 = __dst[3];
  v28 = __dst[5];
  *(v24 + 6) = __dst[4];
  *(v24 + 7) = v28;
  *(v24 + 4) = v26;
  *(v24 + 5) = v27;
  v29 = __dst[6];
  v30 = __dst[7];
  v31 = __dst[9];
  *(v24 + 10) = __dst[8];
  *(v24 + 11) = v31;
  *(v24 + 8) = v29;
  *(v24 + 9) = v30;
  v32 = __dst[10];
  v33 = __dst[11];
  v34 = __dst[12];
  v24[240] = __dst[13];
  *(v24 + 13) = v33;
  *(v24 + 14) = v34;
  *(v24 + 12) = v32;
  *(v4 + 33) = v3;
  *(v80 + 9) = *(v84 + 9);
  v79 = v83;
  v80[0] = v84[0];
  v36 = v81;
  v35 = v82;
LABEL_20:
  v77 = v36;
  v78 = v35;
  v60 = v80[0];
  *(a3 + 32) = v79;
  *(a3 + 48) = v60;
  *(a3 + 57) = *(v80 + 9);
  result = v78;
  *a3 = v77;
  *(a3 + 16) = result;
  return result;
}

void type metadata accessor for (Spring?, Spring?)(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for (Spring?, Spring?))
  {
    type metadata accessor for Spring?(255, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Spring?, Spring?));
    }
  }
}

uint64_t outlined init with copy of Spring?(uint64_t a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Spring?(uint64_t a1, __n128 a2)
{
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for Spring?, MEMORY[0x1E6981850]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Text.Effect.PathInterpolator.Glyph(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Spring and conformance Spring()
{
  result = lazy protocol witness table cache variable for type Spring and conformance Spring;
  if (!lazy protocol witness table cache variable for type Spring and conformance Spring)
  {
    type metadata accessor for Spring();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spring and conformance Spring);
  }

  return result;
}

uint64_t outlined init with copy of Text.Effect.PathInterpolator.Glyph(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (offset: Int, element: Text.Effect.PathInterpolator.Glyph)(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: Text.Effect.PathInterpolator.Glyph))
  {
    type metadata accessor for Text.Effect.PathInterpolator.Glyph(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.PathInterpolator.Glyph));
    }
  }
}

void type metadata accessor for Spring?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined init with take of Text.Effect.PathInterpolator.Glyph(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (offset: Int, element: Text.Effect.PathInterpolator.Glyph)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Spring?(0, &lazy cache variable for type metadata for (offset: Int, element: Text.Effect.PathInterpolator.Glyph)?, type metadata accessor for (offset: Int, element: Text.Effect.PathInterpolator.Glyph));
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a3, a4, a5, type metadata accessor for Text.Effect.AttributeTracker.Value);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t outlined init with take of Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a3, a4, a5, type metadata accessor for Text.Effect.AttributeTracker.Value);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16AttributeTrackerC5ValueVy___AF012DrawingStateG0OGWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  type metadata accessor for Text.Effect.AttributeTracker.Value<Text.Effect.DrawingStateAttribute>(0, a2, a3, a4, type metadata accessor for Text.Effect.AttributeTracker.Value);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for Text.Effect.TransformContext.DrawingMode(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Effect.TransformContext.DrawingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Text.Effect.TransformContext.DrawingMode(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void Text.Effect.PathInterpolator.width(for:at:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[8];
  v10 = __OFSUB__(a1, v9);
  v11 = a1 - v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v2[9];
  if (v11 >= *(v12 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v8, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
  v13 = Text.Effect.PathInterpolator.MapKeys.index(for:)(v2[10], a2);
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(*&v8[*(v5 + 24)] + 16);
  if (v13 >= v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 + 1 < v14)
  {
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v8, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
    return;
  }

LABEL_13:
  __break(1u);
}

void Text.Effect.PathInterpolator.resolve(_:state:in:)(uint64_t (*a1)(char *, char *, uint64_t), double *a2, uint64_t a3, __n128 a4)
{
  v8 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[8];
  v17 = __OFSUB__(a1, v16);
  v18 = a1 - v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v4[9];
  if (v18 >= *(v19 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v18, v15, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
  v20 = *&v15[*(v12 + 20)];
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v4[10];
    v23 = v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v24 = *(v9 + 72);
    do
    {
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v23, v11, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
      Text.Effect.PathInterpolator.Glyph.resolve(cluster:state:mapKeys:in:)(a1, a2, v22, a3);
      outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v11, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
      v23 += v24;
      --v21;
    }

    while (v21);
  }

  outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v15, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
}

uint64_t Text.Layout.Cluster.stopKey.getter()
{
  v28 = type metadata accessor for Text.Layout.Run();
  v1 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Text.Layout.RunSlice();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Text.Layout.Cluster();
  (*(*(v10 - 8) + 16))(v9, v0, v10);
  v11 = *(v7 + 44);
  lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v9[v11] != v29[0])
  {
    v23 = "nary8{_NSRange=QQ}16^B32";
    v25 = (v3 + 16);
    v26 = (v1 + 8);
    v14 = v24;
    do
    {
      v15 = dispatch thunk of Collection.subscript.read();
      v16 = v27;
      (*v25)(v5);
      v15(v29, 0);
      dispatch thunk of Collection.formIndex(after:)();
      Text.Layout.RunSlice.run.getter();
      (*(v3 + 8))(v5, v16);
      v17 = Text.Layout.Run.font.getter();
      if (v17)
      {
        v18 = v17;
        v19 = CTFontCopyPostScriptName(v17);
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v20._countAndFlagsBits = 0x696261724146532ELL;
        v20._object = 0xE900000000000063;
        if (String.hasPrefix(_:)(v20))
        {

          (*v26)(v24, v28);
          v12 = 0;
          goto LABEL_3;
        }

        v21._object = (v23 | 0x8000000000000000);
        v21._countAndFlagsBits = 0xD000000000000012;
        v22 = String.hasPrefix(_:)(v21);

        v14 = v24;
        (*v26)(v24, v28);
        if (v22)
        {
          v12 = 1;
          goto LABEL_3;
        }
      }

      else
      {
        (*v26)(v14, v28);
      }

      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v9[v11] != v29[0]);
  }

  v12 = 2;
LABEL_3:
  outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v9, type metadata accessor for IndexingIterator<Text.Layout.Cluster>);
  return v12;
}

void Text.Effect.PathInterpolator.Glyph.bounds(for:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Text.Layout.RunSlice();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v46[0].a - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v2, v10, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v5 + 32))(v7, v10, v4);
      Text.Layout.RunSlice.quantizedImageBounds.getter();
      (*(v5 + 8))(v7, v4);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v12 = v10[3];
      v49 = v10[2];
      v50 = v12;
      v13 = v10[1];
      v47 = *v10;
      v48 = v13;
      if (*(*(&v50 + 1) + 16))
      {
        v14 = *(*(&v50 + 1) + 32);
        v15 = *(*(&v50 + 1) + 48);
        v56 = *(*(&v50 + 1) + 64);
        v54 = v14;
        v55 = v15;
        v16 = *(*(&v50 + 1) + 32);
        v59 = v56;
        v57 = v16;
        v58 = v15;
        outlined init with copy of Path.Storage(&v57, v46);
        Path.boundingRect.getter();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        outlined destroy of Path(&v54);
        v46[0].a = 1.0;
        v46[0].b = 0.0;
        v46[0].c = 0.0;
        v46[0].d = -1.0;
        *&v46[0].tx = v49;
LABEL_16:
        v60.origin.x = v18;
        v60.origin.y = v20;
        v60.size.width = v22;
        v60.size.height = v24;
        CGRectApplyAffineTransform(v60, v46);
        outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v47);
        return;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v43 = v10[5];
    v51 = v10[4];
    v52 = v43;
    v53 = v10[6];
    v44 = v10[1];
    v47 = *v10;
    v48 = v44;
    v45 = v10[3];
    v49 = v10[2];
    v50 = v45;
LABEL_18:
    v61.origin.x = *(&v51 + 1);
    *&v61.origin.y = v52;
    *&v61.size.height = v53;
    v46[0].a = 1.0;
    v46[0].b = 0.0;
    v46[0].c = 0.0;
    v46[0].d = -1.0;
    *&v46[0].tx = v49;
    CGRectApplyAffineTransform(v61, v46);
    outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v47);
    return;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(*v10 + 16) > a1)
      {
        v31 = (*v10 + (a1 << 6));
        v32 = v31[2];
        v33 = v31[3];
        v34 = v31[5];
        v49 = v31[4];
        v50 = v34;
        v47 = v32;
        v48 = v33;
        outlined init with copy of Text.Effect.PathInterpolator.PathGlyph(&v47, v46);

        if (*(*(&v50 + 1) + 16))
        {
          v35 = v49;
          v36 = *(*(&v50 + 1) + 32);
          v37 = *(*(&v50 + 1) + 48);
          v56 = *(*(&v50 + 1) + 64);
          v54 = v36;
          v55 = v37;
          v38 = *(*(&v50 + 1) + 32);
          v59 = v56;
          v57 = v38;
          v58 = v37;
          outlined init with copy of Path.Storage(&v57, v46);
          Path.boundingRect.getter();
          v18 = v39;
          v20 = v40;
          v22 = v41;
          v24 = v42;
          outlined destroy of Path(&v54);
          v46[0].a = 1.0;
          v46[0].b = 0.0;
          v46[0].c = 0.0;
          v46[0].d = -1.0;
          *&v46[0].tx = v35;
          goto LABEL_16;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 4)
  {

    return;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if (*(*v10 + 16) > a1)
  {
    v25 = (*v10 + 112 * a1);
    v26 = v25[2];
    v27 = v25[4];
    v48 = v25[3];
    v49 = v27;
    v47 = v26;
    v28 = v25[5];
    v29 = v25[6];
    v30 = v25[8];
    v52 = v25[7];
    v53 = v30;
    v50 = v28;
    v51 = v29;
    outlined init with copy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v47, v46);

    goto LABEL_18;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void closure #1 in Text.Effect.PathInterpolator.SmoothPathGlyph.path(cluster:state:mapKeys:stopSegment:)(uint64_t a1, uint64_t a2, long double a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, double *a8)
{
  v39 = *MEMORY[0x1E69E9840];
  specialized Text.Effect.StopSegment.cubicWeightsAndStates(at:)(a2, a5, &v33, a3);
  memcpy(__dst, v37, sizeof(__dst));
  Text.Effect.CubicStates.applying(weights:)(&v33, v33, v34, v35, v36);
  v12 = Text.Effect.PathInterpolator.MapKeys.index(for:)(a6, v33);
  v14 = a1 * a7;
  if ((a1 * a7) >> 64 != (a1 * a7) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = __OFADD__(v14, v12);
  v16 = v14 + v12;
  if (v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(a8 + 8);
  if (a7 != 1)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      v19 = *(v17 + 16);
      if (v16 < v19)
      {
        if (v16 + 1 < v19)
        {
          v18 = vaddq_f64(*(v17 + 32 + 16 * v16), vmulq_n_f64(vsubq_f64(*(v17 + 32 + 16 * (v16 + 1)), *(v17 + 32 + 16 * v16)), v13));
          goto LABEL_11;
        }

LABEL_18:
        __break(1u);
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 >= *(v17 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = *(v17 + 16 * v16 + 32);
LABEL_11:
  v29 = v18;
  v20 = a8[4];
  v21 = a8[5];
  v22 = v37[0];
  v23 = v37[1];
  CGAffineTransformMakeTranslation(&t1, v37[0], v37[1]);
  CGAffineTransformScale(&t2, &t1, v37[2], v37[3]);
  tx = t2.tx;
  ty = t2.ty;
  v27 = *&t2.c;
  v28 = *&t2.a;
  v26 = __sincos_stret(v36);
  t1.a = v26.__cosval;
  t1.b = v26.__sinval;
  t1.c = -v26.__sinval;
  t1.d = v26.__cosval;
  t1.tx = 0.0;
  t1.ty = 0.0;
  *&t2.a = v28;
  *&t2.c = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1 = v30;
  CGAffineTransformTranslate(&t2, &t1, -v22, -v23);
  t1 = t2;
  CGAffineTransformTranslate(&t2, &t1, v34, v35);
  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = -1.0;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1 = v30;
  CGPointApplyAffineTransform(v29, &t1);
}

unint64_t Text.Effect.PathInterpolator.MapKeys.index(for:)(unint64_t result, double a2)
{
  switch(result)
  {
    case 0uLL:
      return result;
    case 1uLL:
      return 0;
    case 2uLL:
      if (a2 <= -1.0)
      {
        return 0;
      }

      return a2 >= 0.0;
  }

  v2 = *(result + 16);
  if (!v2)
  {
    return v2 - 1;
  }

  v3 = 0;
  v4 = *(result + 16);
  while (1)
  {
    v5 = v4 >> 1;
    v6 = v3 + (v4 >> 1);
    if (__OFADD__(v3, v4 >> 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v6 >= v2)
    {
      goto LABEL_25;
    }

    if (*(result + 32 + 8 * v6) < a2)
    {
      break;
    }

LABEL_9:
    v4 = v5;
    if (v5 <= 0)
    {
      goto LABEL_16;
    }
  }

  v3 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    v5 = v4 + ~v5;
    goto LABEL_9;
  }

  __break(1u);
LABEL_16:
  if (v3 == v2)
  {
    return v2 - 1;
  }

  if (v3)
  {
    result = v3 - 1;
    if (!__OFSUB__(v3, 1))
    {
      if (result < v2)
      {
        if (v3 < v2)
        {
          return result;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

unint64_t Text.Effect.PathInterpolator.PathGlyph.path(state:mapKeys:)@<X0>(double *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = Text.Effect.PathInterpolator.MapKeys.index(for:)(a2, *a1);
  if (a2 - 1 < 2 || a2 && *(a2 + 16) != 1)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = *(v4 + 56);
      v9 = *(v8 + 16);
      if (result < v9)
      {
        v10 = v8 + 32;
        v11 = v8 + 32 + 40 * result;
        v12 = *v11;
        v13 = *(v11 + 16);
        v43 = *(v11 + 32);
        v41 = v12;
        v42 = v13;
        v14 = result + 1;
        if (result + 1 < v9)
        {
          v15 = (v10 + 40 * v14);
          v16 = *v15;
          v17 = v15[1];
          v40 = *(v15 + 32);
          v38 = v16;
          v39 = v17;
          v18 = *(*(v4 + 48) + 16);
          if (result < v18)
          {
            if (v14 < v18)
            {
              outlined init with copy of Path(&v41, &v35);
              outlined init with copy of Path(&v38, &v35);
              Path.mix(with:by:)();
              if (v31 == 255)
              {
                v27 = v30;
                v28 = v29;
                outlined destroy of Path(&v38);
                v20 = -1;
                v19 = &v41;
              }

              else
              {
                v35 = v29;
                v36 = v30;
                v37 = v31;
                v19 = v32;
                Path.dilatedGlyphPath(with:)();
                _sypSgWOhTm_2(&v29, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
                Path.offsetBy(dx:dy:)();
                v27 = v33[1];
                v28 = v33[0];
                v20 = v34;
                outlined destroy of Path(&v38);
                outlined destroy of Path(&v41);
              }

              goto LABEL_16;
            }

            goto LABEL_21;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result >= *(*(v4 + 48) + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = *(v4 + 56);
  if (result < *(v21 + 16))
  {
    v22 = v21 + 40 * result;
    v23 = *(v22 + 32);
    v24 = *(v22 + 48);
    v40 = *(v22 + 64);
    v38 = v23;
    v39 = v24;
    v25 = *(v22 + 64);
    v26 = *(v22 + 48);
    v41 = *(v22 + 32);
    v42 = v26;
    v43 = v25;
    outlined init with copy of Path.Storage(&v41, &v35);
    v19 = v33;
    Path.dilatedGlyphPath(with:)();
    outlined destroy of Path(&v38);
    Path.offsetBy(dx:dy:)();
    v27 = v36;
    v28 = v35;
    v20 = v37;
LABEL_16:
    result = outlined destroy of Path(v19);
    *a3 = v28;
    *(a3 + 16) = v27;
    *(a3 + 32) = v20;
    return result;
  }

LABEL_24:
  __break(1u);
  return result;
}

void Text.Effect.PathInterpolator.Interpolated.resolve(state:mapKeys:in:)(double *a1, unint64_t a2, uint64_t *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = Text.Effect.PathInterpolator.MapKeys.index(for:)(a2, *a1);
  v11 = v10;
  v13 = v12;
  v14 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 < *((*&v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(*&v14 + 8 * v10 + 32);
        goto LABEL_5;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = MEMORY[0x19A8BDB80](v10);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_5:
  v16 = v15;
  v17 = *(v3 + 1);
  v18 = *(v17 + 16);
  if (v11 >= v18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (v11 + 1 >= v18)
  {
    goto LABEL_23;
  }

  v19 = v17 + 32;
  v20 = (v19 + 16 * v11);
  v21 = (v19 + 16 * (v11 + 1));
  v22 = v3[2] + *v20 + v13 * (*v21 - *v20);
  v75 = v3[3] - (v20[1] + v13 * (v21[1] - v20[1]));
  v23 = *a3;
  v24 = a1[4];
  v25 = a1[5];
  CGAffineTransformMakeTranslation(&t1, v24, v25);
  CGAffineTransformScale(&t2, &t1, a1[6], a1[7]);
  tx = t2.tx;
  ty = t2.ty;
  v74 = *&t2.a;
  v73 = *&t2.c;
  v28 = a1[3];

  v29 = __sincos_stret(v28);
  t1.a = v29.__cosval;
  t1.b = v29.__sinval;
  t1.c = -v29.__sinval;
  t1.d = v29.__cosval;
  t1.tx = 0.0;
  t1.ty = 0.0;
  *&t2.a = v74;
  *&t2.c = v73;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v76, &t1, &t2);
  t1 = v76;
  CGAffineTransformTranslate(&t2, &t1, -v24, -v25);
  v30 = a1[1];
  v31 = a1[2];
  t1 = t2;
  CGAffineTransformTranslate(&t2, &t1, v30, v31);
  a = t2.a;
  b = t2.b;
  c = t2.c;
  d = t2.d;
  v37 = t2.tx;
  v36 = t2.ty;
  t1 = t2;
  if (!CGAffineTransformIsIdentity(&t1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Text.Effect.DrawingContext.Storage();
      v38 = swift_allocObject();
      *(v38 + 24) = 0x3FF0000000000000;
      *(v38 + 32) = 0;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0x3FF0000000000000;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      *(v38 + 80) = 0;
      *(v38 + 88) = 0;
      *(v38 + 72) = 0x3FF0000000000000;
      *(v38 + 96) = 1;
      *(v38 + 104) = 0u;
      *(v38 + 120) = 0u;
      *(v38 + 136) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v38 + 152) = _Q1;
      *(v38 + 168) = 0x3FF0000000000000;
      *(v38 + 176) = 0;
      *(v38 + 184) = 0u;
      *(v38 + 200) = 0u;
      *(v38 + 216) = 0;
      *(v38 + 16) = *(v23 + 16);
      v44 = *(v23 + 40);
      v45 = *(v23 + 56);
      *(v38 + 24) = *(v23 + 24);
      *(v38 + 40) = v44;
      *(v38 + 56) = v45;
      *(v38 + 72) = *(v23 + 72);
      v46 = *(v23 + 184);
      v47 = *(v23 + 192);
      v48 = *(v23 + 200);
      v49 = *(v23 + 208);
      v50 = *(v23 + 216);
      *(v38 + 184) = v46;
      *(v38 + 192) = v47;
      *(v38 + 200) = v48;
      *(v38 + 208) = v49;
      *(v38 + 216) = v50;
      v51 = *(v23 + 96);
      *(v38 + 80) = *(v23 + 80);
      *(v38 + 96) = v51;

      outlined copy of Text.Effect.StopCollector?(v46, v47, v48, v49, v50);

      v23 = v38;
    }

    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = v37;
    t1.ty = v36;
    if (!CGAffineTransformIsIdentity(&t1))
    {
      v52 = *(v23 + 24);
      v53 = *(v23 + 40);
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v37;
      t1.ty = v36;
      *&t2.a = v52;
      *&t2.c = v53;
      *&t2.tx = *(v23 + 56);
      CGAffineTransformConcat(&v76, &t1, &t2);
      v54 = *&v76.c;
      v55 = *&v76.tx;
      *(v23 + 24) = *&v76.a;
      *(v23 + 40) = v54;
      *(v23 + 56) = v55;
    }
  }

  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  v56 = v75;
  t1.tx = v22;
  t1.ty = v75;
  if (!CGAffineTransformIsIdentity(&t1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Text.Effect.DrawingContext.Storage();
      v57 = swift_allocObject();
      *(v57 + 24) = 0x3FF0000000000000;
      *(v57 + 32) = 0;
      *(v57 + 40) = 0;
      *(v57 + 48) = 0x3FF0000000000000;
      *(v57 + 56) = 0;
      *(v57 + 64) = 0;
      *(v57 + 80) = 0;
      *(v57 + 88) = 0;
      *(v57 + 72) = 0x3FF0000000000000;
      *(v57 + 96) = 1;
      *(v57 + 104) = 0u;
      *(v57 + 120) = 0u;
      *(v57 + 136) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v57 + 152) = _Q1;
      *(v57 + 168) = 0x3FF0000000000000;
      *(v57 + 176) = 0;
      *(v57 + 184) = 0u;
      *(v57 + 200) = 0u;
      *(v57 + 216) = 0;
      *(v57 + 16) = *(v23 + 16);
      v59 = *(v23 + 40);
      v60 = *(v23 + 56);
      *(v57 + 24) = *(v23 + 24);
      *(v57 + 40) = v59;
      *(v57 + 56) = v60;
      *(v57 + 72) = *(v23 + 72);
      v61 = *(v23 + 184);
      v62 = *(v23 + 192);
      v63 = *(v23 + 200);
      v64 = *(v23 + 208);
      v65 = *(v23 + 216);
      *(v57 + 184) = v61;
      *(v57 + 192) = v62;
      *(v57 + 200) = v63;
      *(v57 + 208) = v64;
      *(v57 + 216) = v65;
      v66 = *(v23 + 96);
      *(v57 + 80) = *(v23 + 80);
      *(v57 + 96) = v66;

      outlined copy of Text.Effect.StopCollector?(v61, v62, v63, v64, v65);

      v23 = v57;
    }

    t1.a = 1.0;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = 1.0;
    t1.tx = v22;
    t1.ty = v56;
    if (!CGAffineTransformIsIdentity(&t1))
    {
      v67 = *(v23 + 24);
      v68 = *(v23 + 40);
      t1.a = 1.0;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = 1.0;
      t1.tx = v22;
      t1.ty = v56;
      *&t2.a = v67;
      *&t2.c = v68;
      *&t2.tx = *(v23 + 56);
      CGAffineTransformConcat(&v76, &t1, &t2);
      v69 = *&v76.c;
      v70 = *&v76.tx;
      *(v23 + 24) = *&v76.a;
      *(v23 + 40) = v69;
      *(v23 + 56) = v70;
    }
  }

  v71 = v13;
  *v9 = v16;
  v9[2] = v71;
  swift_storeEnumTagMultiPayload();
  v72 = v16;
  Text.Effect.DrawingContext.Storage.append(_:)(v9);

  outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v9, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
}

void Text.Effect.PathInterpolator.Glyph.resolve(cluster:state:mapKeys:in:)(uint64_t (*a1)(char *, char *, uint64_t), double *a2, unint64_t a3, uint64_t a4)
{
  v333 = a1;
  v385 = *MEMORY[0x1E69E9840];
  v7 = COERCE_DOUBLE(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0));
  v339 = *(*&v7 - 8);
  v340 = v7;
  MEMORY[0x1EEE9AC00](*&v7);
  v347 = &v324 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v345 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v345);
  v332 = &v324 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  *&v346 = &v324 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v324 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v324 - v16;
  type metadata accessor for (CGPoint, Text.Layout.RunSlice)(0);
  v338 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v337 = &v324 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss12Zip2SequenceVySaySo7CGPointVG7SwiftUI4TextV6LayoutV8RunSliceVGMaTm_0(0, &lazy cache variable for type metadata for Zip2Sequence<[CGPoint], Text.Layout.RunSlice>, MEMORY[0x1E69E6AA0]);
  v341 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v348 = &v324 - v21;
  _ss12Zip2SequenceVySaySo7CGPointVG7SwiftUI4TextV6LayoutV8RunSliceVGMaTm_0(0, &lazy cache variable for type metadata for Zip2Sequence<[CGPoint], Text.Layout.RunSlice>.Iterator, MEMORY[0x1E69E6A98]);
  v330 = v22;
  MEMORY[0x1EEE9AC00](v22);
  *&v342 = &v324 - v23;
  v335 = type metadata accessor for Text.Layout.RunSlice();
  *&v343 = *(v335 - 8);
  MEMORY[0x1EEE9AC00](v335);
  *&v353.x = &v324 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  *&v336 = &v324 - v26;
  MEMORY[0x1EEE9AC00](v27);
  *&v331 = &v324 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v329 = &v324 - v30;
  v31 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v324 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a4;
  v34 = *(a4 + 8);
  v36 = *(a4 + 16);
  v37 = *(a4 + 24);
  v38 = *(a4 + 32);
  v334 = a4;
  tx = *(a4 + 40);
  v364[0] = v35;
  v327 = v36;
  *&v328 = v34;
  v364[1] = v34;
  v364[2] = v36;
  v326 = v37;
  v364[3] = v37;
  v365 = v38;
  v366 = tx;
  v344 = a2;
  v40 = *(v35 + 72);
  v41 = a2[8] * v40;

  v350 = a3;
  *&v352 = v17;
  LODWORD(v351) = v38;
  if (v41 == v40)
  {
    v42 = v349;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Text.Effect.DrawingContext.Storage();
      v43 = swift_allocObject();
      *(v43 + 24) = 0x3FF0000000000000;
      *(v43 + 32) = 0;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0x3FF0000000000000;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      *(v43 + 80) = 0;
      *(v43 + 88) = 0;
      *(v43 + 72) = 0x3FF0000000000000;
      *(v43 + 96) = 1;
      *(v43 + 104) = 0u;
      *(v43 + 120) = 0u;
      *(v43 + 136) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v43 + 152) = _Q1;
      *(v43 + 168) = 0x3FF0000000000000;
      *(v43 + 176) = 0;
      *(v43 + 184) = 0u;
      *(v43 + 200) = 0u;
      *(v43 + 216) = 0;
      *(v43 + 16) = *(v35 + 16);
      v49 = *(v35 + 40);
      v50 = *(v35 + 56);
      *(v43 + 24) = *(v35 + 24);
      *(v43 + 40) = v49;
      *(v43 + 56) = v50;
      *(v43 + 72) = *(v35 + 72);
      v51 = *(v35 + 184);
      v52 = *(v35 + 192);
      v53 = *(v35 + 200);
      v54 = *(v35 + 208);
      v325 = v14;
      v55 = *(v35 + 216);
      *(v43 + 184) = v51;
      *(v43 + 192) = v52;
      *(v43 + 200) = v53;
      *(v43 + 208) = v54;
      *(v43 + 216) = v55;
      v56 = *(v35 + 96);
      *(v43 + 80) = *(v35 + 80);
      *(v43 + 96) = v56;

      v57 = v53;
      a3 = v350;
      v58 = v55;
      v14 = v325;
      outlined copy of Text.Effect.StopCollector?(v51, v52, v57, v54, v58);

      v364[0] = v43;
      v35 = v43;
    }

    v42 = v349;
    *(v35 + 72) = v41;
  }

  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v42, v33, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v341 = v35;
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v310 = *(v33 + 1);
        v356 = *v33;
        v357 = v310;
        v311 = *(v33 + 3);
        v358[0] = *(v33 + 2);
        v358[1] = v311;
        Text.Effect.PathInterpolator.Interpolated.resolve(state:mapKeys:in:)(v344, a3, v364);
        outlined destroy of Text.Effect.PathInterpolator.Interpolated(&v356);
        goto LABEL_125;
      }

      v62 = *v33;
      *&v346 = *(*v33 + 16);
      if (v346)
      {
        if (*(*&v62 + 16))
        {
          v63 = 0;
          v344 = (*&v62 + 32);
          *&v342 = v350 + 1;
          v340 = v62;
          do
          {
            v64 = &v344[14 * v63];
            v65 = *v64;
            v66 = *(v64 + 2);
            *&v359.c = *(v64 + 1);
            *&v359.tx = v66;
            *&v359.a = v65;
            v67 = *(v64 + 3);
            v68 = *(v64 + 4);
            v69 = *(v64 + 6);
            v362 = *(v64 + 5);
            v363 = v69;
            v360 = v67;
            v361 = v68;
            v70 = *(v35 + 208);
            if (v70)
            {
              v72 = *(v35 + 184);
              v71 = *(v35 + 192);
              v73 = *(v35 + 200);
              v33 = *(v35 + 216);
              if (*(v33 + 2) && (v74 = specialized __RawDictionaryStorage.find<A>(_:)(v333), (v75 & 1) != 0))
              {
                v76 = *(*(v33 + 7) + 8 * v74);
                if ((v76 & 0x8000000000000000) != 0)
                {
                  goto LABEL_147;
                }

                if (v76 >= *(v70 + 16))
                {
                  goto LABEL_148;
                }

                v77 = v70 + 16 * v76;
                v78 = *(v77 + 32);
                v79 = *(v77 + 40);
                outlined copy of Text.Effect.StopCollector?(v72, v71, v73, v70, v33);
                *&v343 = v78;

                v349 = v79;

                outlined init with copy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v359, &v356);
                outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v72, v71, v73);

                v80 = v342;
                if (v350 >= 3)
                {
                  v80 = *(v350 + 16);
                }

                v81 = *(&v363 + 1);
                v82 = *(*(&v363 + 1) + 16);
                v372 = MEMORY[0x1E69E7CC0];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
                v83 = v372;
                v348 = v82;
                if (v82)
                {
                  v84 = 0;
                  tx = v359.tx;
                  ty = v359.ty;
                  v86 = (v81 + 40);
                  v347 = v81;
                  while (v84 < *(v81 + 16))
                  {
                    specialized Text.Effect.StopSegment.cubicWeightsAndStates(at:)(*(v86 - 1), v349, &v356, *v86);
                    memcpy(&v384, v358, 0x139uLL);
                    Text.Effect.CubicStates.applying(weights:)(&v375, *&v356, *(&v356 + 1), *&v357, *(&v357 + 1));
                    v87 = Text.Effect.PathInterpolator.MapKeys.index(for:)(v350, v375.a);
                    v89 = v84 * v80;
                    if ((v84 * v80) >> 64 != (v84 * v80) >> 63)
                    {
                      goto LABEL_131;
                    }

                    _VF = __OFADD__(v89, v87);
                    v90 = v89 + v87;
                    if (_VF)
                    {
                      goto LABEL_132;
                    }

                    if (v80 == 1)
                    {
                      if ((v90 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_133;
                      }

                      if (v90 >= *(v361 + 16))
                      {
                        goto LABEL_135;
                      }

                      v91 = *(v361 + 16 * v90 + 32);
                    }

                    else
                    {
                      if ((v90 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_134;
                      }

                      v92 = *(v361 + 16);
                      if (v90 >= v92)
                      {
                        goto LABEL_136;
                      }

                      if (v90 + 1 >= v92)
                      {
                        goto LABEL_137;
                      }

                      v91 = vaddq_f64(*(v361 + 32 + 16 * v90), vmulq_n_f64(vsubq_f64(*(v361 + 32 + 16 * (v90 + 1)), *(v361 + 32 + 16 * v90)), v88));
                    }

                    v353 = v91;
                    v93 = v375.tx;
                    v94 = v375.ty;
                    CGAffineTransformMakeTranslation(&v356, v375.tx, v375.ty);
                    CGAffineTransformScale(&v355, &v356, v376, v377);
                    v95 = v355.tx;
                    v96 = v355.ty;
                    v351 = *&v355.c;
                    v352 = *&v355.a;
                    v97 = __sincos_stret(v375.d);
                    *&v356 = v97.__cosval;
                    *(&v356 + 1) = *&v97.__sinval;
                    *&v357 = -v97.__sinval;
                    *(&v357 + 1) = *&v97.__cosval;
                    v358[0] = 0uLL;
                    *&v355.a = v352;
                    *&v355.c = v351;
                    v355.tx = v95;
                    v355.ty = v96;
                    CGAffineTransformConcat(&v354, &v356, &v355);
                    v356 = *&v354.a;
                    v357 = *&v354.c;
                    v358[0] = *&v354.tx;
                    CGAffineTransformTranslate(&v355, &v356, -v93, -v94);
                    v356 = *&v355.a;
                    v357 = *&v355.c;
                    v358[0] = *&v355.tx;
                    CGAffineTransformTranslate(&v355, &v356, v375.b, v375.c);
                    *&v357 = 0;
                    v356 = 0x3FF0000000000000uLL;
                    *(&v357 + 1) = 0xBFF0000000000000;
                    *v358 = tx;
                    *(v358 + 1) = ty;
                    CGAffineTransformConcat(&v354, &v356, &v355);
                    v356 = *&v354.a;
                    v357 = *&v354.c;
                    v358[0] = *&v354.tx;
                    v100 = CGPointApplyAffineTransform(v353, &v356);
                    y = v100.y;
                    x = v100.x;
                    v372 = v83;
                    v102 = *(v83 + 16);
                    v101 = *(v83 + 24);
                    if (v102 >= v101 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
                      y = v100.y;
                      x = v100.x;
                      v83 = v372;
                    }

                    ++v84;
                    *(v83 + 16) = v102 + 1;
                    v103 = v83 + 16 * v102;
                    *(v103 + 32) = x;
                    *(v103 + 40) = y;
                    v86 += 2;
                    v81 = v347;
                    if (v348 == v84)
                    {
                      goto LABEL_40;
                    }
                  }

                  __break(1u);
LABEL_131:
                  __break(1u);
LABEL_132:
                  __break(1u);
LABEL_133:
                  __break(1u);
LABEL_134:
                  __break(1u);
LABEL_135:
                  __break(1u);
LABEL_136:
                  __break(1u);
LABEL_137:
                  __break(1u);
LABEL_138:
                  __break(1u);
                  goto LABEL_139;
                }

LABEL_40:

                v104 = *(&v360 + 1);
                a_low = LODWORD(v359.a);
                a_high = HIDWORD(v359.a);
                LODWORD(v351) = LODWORD(v359.b);
                b_high = HIDWORD(v359.b);

                specialized Path.init(elements:points:)(v108, v104, v83, v373);

                Path.dilatedGlyphPath(with:)();
                v352 = v378;
                v353 = v379;
                v109 = v380;
                outlined destroy of Path(v373);
                v35 = v341;
                if (*(v341 + 96))
                {
                  v110 = v351;
                }

                else
                {
                  v110 = *(v341 + 88);
                  b_high = *(v341 + 92);
                  a_low = *(v341 + 80);
                  a_high = *(v341 + 84);
                }

                v111 = v332;
                v112 = v353;
                *v332 = v352;
                *(v111 + 16) = v112;
                *(v111 + 32) = v109;
                *(v111 + 36) = a_low;
                *(v111 + 40) = a_high;
                *(v111 + 44) = v110;
                *(v111 + 48) = b_high;
                swift_storeEnumTagMultiPayload();
                v381 = v378;
                v382 = v379;
                v383 = v380;
                outlined init with copy of Path.Storage(&v381, &v356);
                v33 = v35;
                Text.Effect.DrawingContext.Storage.append(_:)(v111);
                outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v359);
                outlined destroy of Path(&v378);
                outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v111, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
                v62 = v340;
              }

              else
              {
                outlined copy of Text.Effect.StopCollector?(v72, v71, v73, v70, v33);
                outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v72, v71, v73);

                v35 = v341;
              }
            }

            if (++v63 == v346)
            {
              goto LABEL_111;
            }
          }

          while (v63 < *(*&v62 + 16));
        }

        __break(1u);
        goto LABEL_47;
      }

LABEL_111:

      return;
    }

    v213 = *v33;
    v214 = *(*v33 + 16);
    if (!v214)
    {
      goto LABEL_111;
    }

    v215 = *v344;
    v349 = (v214 - 1);
    v216 = 32;
    v337 = v213;
    v338 = a3 - 1;
    __asm { FMOV            V0.2D, #1.0 }

    v336 = _Q0;
    while (1)
    {
      v348 = v216;
      v218 = &v213[v216];
      v219 = *v218;
      v220 = *(v218 + 1);
      v221 = *(v218 + 3);
      v358[0] = *(v218 + 2);
      v358[1] = v221;
      v356 = v219;
      v357 = v220;
      v222 = v221;
      v223 = Text.Effect.PathInterpolator.MapKeys.index(for:)(a3, v215);
      if (v338 < 2 || a3 && *(a3 + 16) != 1)
      {
        if ((v223 & 0x8000000000000000) != 0)
        {
          goto LABEL_138;
        }

        v224 = *(*(&v222 + 1) + 16);
        if (v223 >= v224)
        {
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
        }

        v225 = *(&v222 + 1) + 32 + 40 * v223;
        v226 = *v225;
        v227 = *(v225 + 16);
        LOBYTE(v355.tx) = *(v225 + 32);
        *&v355.a = v226;
        *&v355.c = v227;
        v228 = v223 + 1;
        if (v223 + 1 >= v224)
        {
          goto LABEL_140;
        }

        v229 = *(&v222 + 1) + 32 + 40 * v228;
        v230 = *v229;
        v231 = *(v229 + 16);
        LOBYTE(v354.tx) = *(v229 + 32);
        *&v354.a = v230;
        *&v354.c = v231;
        v232 = *(v222 + 16);
        if (v223 >= v232)
        {
          goto LABEL_141;
        }

        if (v228 >= v232)
        {
          goto LABEL_142;
        }

        outlined init with copy of Text.Effect.PathInterpolator.PathGlyph(&v356, &v384);
        outlined init with copy of Path(&v355, &v384);
        outlined init with copy of Path(&v354, &v384);
        Path.mix(with:by:)();
        if (v371 == 255)
        {
          outlined destroy of Path(&v354);
          outlined destroy of Path(&v355);
          outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v356);
          v297 = v349;
          if (!v349)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        }

        v378 = v370[0];
        v379 = v370[1];
        v380 = v371;
        v233 = &v372;
        Path.dilatedGlyphPath(with:)();
        _sypSgWOhTm_2(v370, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
        Path.offsetBy(dx:dy:)();
        v351 = v373[0];
        v352 = v373[1];
        LODWORD(v353.x) = v374;
        outlined destroy of Path(&v354);
        outlined destroy of Path(&v355);
      }

      else
      {
        if ((v223 & 0x8000000000000000) != 0)
        {
          goto LABEL_144;
        }

        if (v223 >= *(v222 + 16))
        {
          goto LABEL_145;
        }

        if (v223 >= *(*(&v222 + 1) + 16))
        {
          goto LABEL_146;
        }

        v234 = *(&v222 + 1) + 40 * v223;
        v235 = *(v234 + 32);
        v236 = *(v234 + 48);
        v383 = *(v234 + 64);
        v381 = v235;
        v382 = v236;
        outlined init with copy of Text.Effect.PathInterpolator.PathGlyph(&v356, &v384);
        outlined init with copy of Path(&v381, &v384);
        v233 = v367;
        Path.dilatedGlyphPath(with:)();
        outlined destroy of Path(&v381);
        Path.offsetBy(dx:dy:)();
        v351 = *&v367[40];
        v352 = v368;
        LODWORD(v353.x) = v369;
      }

      outlined destroy of Path(v233);
      v237 = v344;
      v238 = v344[4];
      v239 = v344[5];
      CGAffineTransformMakeTranslation(&v384, v238, v239);
      CGAffineTransformScale(&v359, &v384, v237[6], v237[7]);
      v240 = v359.tx;
      v241 = v359.ty;
      v342 = *&v359.c;
      v343 = *&v359.a;
      v242 = v237[3];

      v243 = __sincos_stret(v242);
      v384.a = v243.__cosval;
      v384.b = v243.__sinval;
      v384.c = -v243.__sinval;
      v384.d = v243.__cosval;
      v384.tx = 0.0;
      v384.ty = 0.0;
      *&v359.a = v343;
      *&v359.c = v342;
      v359.tx = v240;
      v359.ty = v241;
      CGAffineTransformConcat(&v375, &v384, &v359);
      v384 = v375;
      CGAffineTransformTranslate(&v359, &v384, -v238, -v239);
      v244 = v237[1];
      v245 = v237[2];
      v384 = v359;
      CGAffineTransformTranslate(&v359, &v384, v244, v245);
      a = v359.a;
      b = v359.b;
      c = v359.c;
      d = v359.d;
      v250 = v359.tx;
      v251 = v359.ty;
      v384 = v359;
      v252 = v35;
      if (!CGAffineTransformIsIdentity(&v384))
      {
        v252 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v252 = swift_allocObject();
          *(v252 + 24) = 0x3FF0000000000000;
          *(v252 + 32) = 0;
          *(v252 + 40) = 0;
          *(v252 + 48) = 0x3FF0000000000000;
          *(v252 + 56) = 0;
          *(v252 + 64) = 0;
          *(v252 + 80) = 0;
          *(v252 + 88) = 0;
          *(v252 + 72) = 0x3FF0000000000000;
          *(v252 + 96) = 1;
          *(v252 + 104) = 0u;
          *(v252 + 120) = 0u;
          *(v252 + 136) = 0u;
          *(v252 + 152) = v336;
          *(v252 + 168) = 0x3FF0000000000000;
          *(v252 + 176) = 0;
          *(v252 + 184) = 0u;
          *(v252 + 200) = 0u;
          *(v252 + 216) = 0;
          *(v252 + 16) = *(v35 + 16);
          v253 = *(v35 + 40);
          v254 = *(v35 + 56);
          *(v252 + 24) = *(v35 + 24);
          *(v252 + 40) = v253;
          *(v252 + 56) = v254;
          *(v252 + 72) = *(v35 + 72);
          v255 = *(v35 + 184);
          v256 = *(v35 + 192);
          v257 = *(v35 + 200);
          v258 = *(v35 + 208);
          v259 = *(v35 + 216);
          *(v252 + 184) = v255;
          *(v252 + 192) = v256;
          *(v252 + 200) = v257;
          *(v252 + 208) = v258;
          *(v252 + 216) = v259;
          v260 = *(v35 + 96);
          *(v252 + 80) = *(v35 + 80);
          *(v252 + 96) = v260;

          outlined copy of Text.Effect.StopCollector?(v255, v256, v257, v258, v259);
        }

        v384.a = a;
        v384.b = b;
        v384.c = c;
        v384.d = d;
        v384.tx = v250;
        v384.ty = v251;
        if (!CGAffineTransformIsIdentity(&v384))
        {
          v261 = *(v252 + 24);
          v262 = *(v252 + 40);
          v384.a = a;
          v384.b = b;
          v384.c = c;
          v384.d = d;
          v384.tx = v250;
          v384.ty = v251;
          *&v359.a = v261;
          *&v359.c = v262;
          *&v359.tx = *(v252 + 56);
          CGAffineTransformConcat(&v375, &v384, &v359);
          v263 = *&v375.c;
          v264 = *&v375.tx;
          *(v252 + 24) = *&v375.a;
          *(v252 + 40) = v263;
          *(v252 + 56) = v264;
        }
      }

      v265 = v358[0];
      v384.b = 0.0;
      v384.c = 0.0;
      v384.a = 1.0;
      v384.d = -1.0;
      *&v384.tx = v358[0];
      if (!CGAffineTransformIsIdentity(&v384))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v266 = swift_allocObject();
          *(v266 + 24) = 0x3FF0000000000000;
          *(v266 + 32) = 0;
          *(v266 + 40) = 0;
          *(v266 + 48) = 0x3FF0000000000000;
          *(v266 + 56) = 0;
          *(v266 + 64) = 0;
          *(v266 + 80) = 0;
          *(v266 + 88) = 0;
          *(v266 + 72) = 0x3FF0000000000000;
          *(v266 + 96) = 1;
          *(v266 + 104) = 0u;
          *(v266 + 120) = 0u;
          *(v266 + 136) = 0u;
          *(v266 + 152) = v336;
          *(v266 + 168) = 0x3FF0000000000000;
          *(v266 + 176) = 0;
          *(v266 + 184) = 0u;
          *(v266 + 200) = 0u;
          *(v266 + 216) = 0;
          *(v266 + 16) = *(v252 + 16);
          v267 = *(v252 + 40);
          v268 = *(v252 + 56);
          *(v266 + 24) = *(v252 + 24);
          *(v266 + 40) = v267;
          *(v266 + 56) = v268;
          *(v266 + 72) = *(v252 + 72);
          v269 = *(v252 + 184);
          v270 = *(v252 + 192);
          v271 = *(v252 + 200);
          v272 = *(v252 + 208);
          v273 = *(v252 + 216);
          *(v266 + 184) = v269;
          *(v266 + 192) = v270;
          *(v266 + 200) = v271;
          *(v266 + 208) = v272;
          *(v266 + 216) = v273;
          v274 = *(v252 + 96);
          *(v266 + 80) = *(v252 + 80);
          *(v266 + 96) = v274;

          outlined copy of Text.Effect.StopCollector?(v269, v270, v271, v272, v273);

          v252 = v266;
        }

        v384.b = 0.0;
        v384.c = 0.0;
        v384.a = 1.0;
        v384.d = -1.0;
        *&v384.tx = v265;
        if (!CGAffineTransformIsIdentity(&v384))
        {
          v275 = *(v252 + 24);
          v276 = *(v252 + 40);
          v384.b = 0.0;
          v384.c = 0.0;
          v384.a = 1.0;
          v384.d = -1.0;
          *&v384.tx = v265;
          *&v359.a = v275;
          *&v359.c = v276;
          *&v359.tx = *(v252 + 56);
          CGAffineTransformConcat(&v375, &v384, &v359);
          v277 = *&v375.c;
          v278 = *&v375.tx;
          *(v252 + 24) = *&v375.a;
          *(v252 + 40) = v277;
          *(v252 + 56) = v278;
        }
      }

      if (*(v252 + 96))
      {
        v279 = v356;
      }

      else
      {
        v279 = *(v252 + 80);
      }

      v280 = v346;
      v281 = v352;
      *v346 = v351;
      *(v280 + 16) = v281;
      x_low = LOBYTE(v353.x);
      *(v280 + 32) = LOBYTE(v353.x);
      *(v280 + 36) = v279;
      swift_storeEnumTagMultiPayload();
      v283 = *(v252 + 16);
      v284 = v280;
      v285 = v347;
      _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v284, v347, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
      v286 = v340;
      v287 = *(v252 + 24);
      v288 = *(v252 + 40);
      v289 = *(v252 + 56);
      *(v285 + *(*&v340 + 20)) = *(v252 + 72);
      v290 = (v285 + *(*&v286 + 24));
      *v290 = v287;
      v290[1] = v288;
      v290[2] = v289;
      swift_beginAccess();
      v291 = *(v283 + 16);
      v292 = v351;
      v293 = v352;
      outlined copy of Path.Storage(v351, *(&v351 + 1), v352, *(&v352 + 1), x_low);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v283 + 16) = v291;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v291 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v291[2] + 1, 1, v291);
        *(v283 + 16) = v291;
      }

      v296 = v291[2];
      v295 = v291[3];
      if (v296 >= v295 >> 1)
      {
        v291 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v295 > 1), v296 + 1, 1, v291);
      }

      v291[2] = v296 + 1;
      outlined init with take of Text.Effect.ResolvedDrawing.Operation(v347, v291 + ((*(v339 + 80) + 32) & ~*(v339 + 80)) + *(v339 + 72) * v296, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
      *(v283 + 16) = v291;
      swift_endAccess();
      outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v356);
      outlined consume of Path.Storage(v292, *(&v292 + 1), v293, *(&v293 + 1), LOBYTE(v353.x));
      outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v346, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);

      v35 = v341;
      a3 = v350;
      v213 = v337;
      v297 = v349;
      if (!v349)
      {
        goto LABEL_111;
      }

LABEL_110:
      v349 = (v297 - 1);
      v216 = (v348 + 64);
    }
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_47:
    v113 = v343;
    v114 = v343 + 32;
    v115 = *(v343 + 32);
    v116 = v329;
    v117 = v335;
    v115(v329, v33, v335);
    v118 = Text.Layout.RunSlice.positions.getter();
    v119 = *(v341 + 52);
    v120 = v113 + 16;
    v121 = *(v113 + 16);
    v122 = v348;
    v349 = v121;
    v350 = v120;
    (v121)(&v348[v119], v116, v117);
    v123 = v342;
    *v342 = v118;
    *(v123 + 8) = 0;
    v339 = v114;
    v333 = v115;
    v115(*&v331, &v122[v119], v117);
    v124 = v118;
    v125 = v123 + *(v330 + 52);
    lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060], MEMORY[0x1E6981068]);
    dispatch thunk of Sequence.makeIterator()();
    v332 = *(v124 + 16);
    if (v332)
    {
      v126 = 0;
      v340 = *&v328;
      v341 = v327;
      v331 = -tx;
      *&v343 = v343 + 8;
      v127 = (v124 + 40);
      __asm { FMOV            V0.2D, #1.0 }

      v328 = _Q0;
      while (1)
      {
        if (v126 >= *(v124 + 16))
        {
          goto LABEL_143;
        }

        v129 = *(v127 - 1);
        v130 = *v127;
        v347 = v127;
        v348 = v126 + 1;
        *(v342 + 8) = v126 + 1;
        type metadata accessor for IndexingIterator<Text.Layout.RunSlice>(0);
        v132 = *(v131 + 36);
        lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060], MEMORY[0x1E6981070]);
        dispatch thunk of Collection.endIndex.getter();
        if (*(v125 + v132) == *&v359.a)
        {
          break;
        }

        v133 = v125;
        v134 = v124;
        v135 = dispatch thunk of Collection.subscript.read();
        v136 = v336;
        v349(v336);
        v135(&v359, 0);
        v137 = v133;
        dispatch thunk of Collection.formIndex(after:)();
        v138 = v337;
        v139 = *(v338 + 48);
        v140 = v333;
        v333(&v337[v139], v136, v117);
        v140(*&v353.x, &v138[v139], v117);
        v141 = *(v35 + 24);
        v142 = *(v35 + 56);
        *&v384.c = *(v35 + 40);
        *&v384.tx = v142;
        *&v384.a = v141;
        Text.Layout.RunSlice.pointSize.getter();
        if ((v351 & 1) != 0 || v143 != v340)
        {
          v144 = v143;
          CGAffineTransformMakeScale(&v359, tx * v143, -(tx * v143));
          RBShapeGetFontQuantizationLevel();
          v145 = v334;
          *(v334 + 8) = v144;
          *(v145 + 16) = v146;
          v340 = v144;
          v341 = v146;
          *(v145 + 24) = v147;
          *(v145 + 32) = 0;
        }

        v359.b = 0.0;
        v359.c = 0.0;
        v359.a = tx;
        v359.d = v331;
        v359.tx = tx * v129;
        v359.ty = tx * v130;
        RBShapeGetPredictedFontQuantizationError();
        v149 = v148 / tx;
        v151 = v150 / tx;
        v124 = v134;
        v125 = v137;
        if (v148 / tx != 0.0 || v151 != 0.0)
        {
          v35 = v364[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Text.Effect.DrawingContext.Storage();
            v152 = swift_allocObject();
            *(v152 + 24) = 0x3FF0000000000000;
            *(v152 + 32) = 0;
            *(v152 + 40) = 0;
            *(v152 + 48) = 0x3FF0000000000000;
            *(v152 + 56) = 0;
            *(v152 + 64) = 0;
            *(v152 + 80) = 0;
            *(v152 + 88) = 0;
            *(v152 + 72) = 0x3FF0000000000000;
            *(v152 + 96) = 1;
            *(v152 + 104) = 0u;
            *(v152 + 120) = 0u;
            *(v152 + 136) = 0u;
            *(v152 + 152) = v328;
            *(v152 + 168) = 0x3FF0000000000000;
            *(v152 + 176) = 0;
            *(v152 + 184) = 0u;
            *(v152 + 200) = 0u;
            *(v152 + 216) = 0;
            *(v152 + 16) = *(v35 + 16);
            v153 = *(v35 + 40);
            v154 = *(v35 + 56);
            *(v152 + 24) = *(v35 + 24);
            *(v152 + 40) = v153;
            *(v152 + 56) = v154;
            *(v152 + 72) = *(v35 + 72);
            v155 = *(v35 + 184);
            v156 = *(v35 + 192);
            v157 = *(v35 + 200);
            v158 = *(v35 + 208);
            v159 = *(v35 + 216);
            *(v152 + 184) = v155;
            *(v152 + 192) = v156;
            *(v152 + 200) = v157;
            *(v152 + 208) = v158;
            *(v152 + 216) = v159;
            v160 = *(v35 + 96);
            *(v152 + 80) = *(v35 + 80);
            *(v152 + 96) = v160;

            v161 = v156;
            v117 = v335;
            outlined copy of Text.Effect.StopCollector?(v155, v161, v157, v158, v159);

            v364[0] = v152;
            v35 = v152;
          }

          v162 = *(v35 + 40);
          *&v359.a = *(v35 + 24);
          *&v359.c = v162;
          *&v359.tx = *(v35 + 56);
          CGAffineTransformTranslate(&v375, &v359, v149, v151);
          v163 = *&v375.c;
          v164 = *&v375.tx;
          *(v35 + 24) = *&v375.a;
          *(v35 + 40) = v163;
          *(v35 + 56) = v164;
        }

        v165 = v344;
        v166 = v344[4];
        v167 = v344[5];
        CGAffineTransformMakeTranslation(&v359, v166, v167);
        CGAffineTransformScale(&v375, &v359, v165[6], v165[7]);
        v168 = v375.tx;
        v169 = v375.ty;
        v351 = *&v375.a;
        v346 = *&v375.c;
        v170 = __sincos_stret(v165[3]);
        v359.a = v170.__cosval;
        v359.b = v170.__sinval;
        v359.c = -v170.__sinval;
        v359.d = v170.__cosval;
        v359.tx = 0.0;
        v359.ty = 0.0;
        *&v375.a = v351;
        *&v375.c = v346;
        v375.tx = v168;
        v375.ty = v169;
        CGAffineTransformConcat(&v355, &v359, &v375);
        v359 = v355;
        CGAffineTransformTranslate(&v375, &v359, -v166, -v167);
        v171 = v165[1];
        v172 = v165[2];
        v359 = v375;
        CGAffineTransformTranslate(&v375, &v359, v171, v172);
        v173 = v375.a;
        v174 = v375.b;
        v175 = v375.c;
        v176 = v375.d;
        v177 = v375.tx;
        v178 = v375.ty;
        v359 = v375;
        if (!CGAffineTransformIsIdentity(&v359))
        {
          v35 = v364[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Text.Effect.DrawingContext.Storage();
            v179 = swift_allocObject();
            *(v179 + 24) = 0x3FF0000000000000;
            *(v179 + 32) = 0;
            *(v179 + 40) = 0;
            *(v179 + 48) = 0x3FF0000000000000;
            *(v179 + 56) = 0;
            *(v179 + 64) = 0;
            *(v179 + 80) = 0;
            *(v179 + 88) = 0;
            *(v179 + 72) = 0x3FF0000000000000;
            *(v179 + 96) = 1;
            *(v179 + 104) = 0u;
            *(v179 + 120) = 0u;
            *(v179 + 136) = 0u;
            *(v179 + 152) = v328;
            *(v179 + 168) = 0x3FF0000000000000;
            *(v179 + 176) = 0;
            *(v179 + 184) = 0u;
            *(v179 + 200) = 0u;
            *(v179 + 216) = 0;
            *(v179 + 16) = *(v35 + 16);
            v180 = *(v35 + 40);
            v181 = *(v35 + 56);
            *(v179 + 24) = *(v35 + 24);
            *(v179 + 40) = v180;
            *(v179 + 56) = v181;
            *(v179 + 72) = *(v35 + 72);
            v182 = *(v35 + 184);
            v183 = *(v35 + 192);
            v184 = *(v35 + 200);
            v185 = *(v35 + 208);
            v186 = *(v35 + 216);
            *(v179 + 184) = v182;
            *(v179 + 192) = v183;
            *(v179 + 200) = v184;
            *(v179 + 208) = v185;
            *(v179 + 216) = v186;
            v187 = *(v35 + 96);
            *(v179 + 80) = *(v35 + 80);
            *(v179 + 96) = v187;

            v188 = v184;
            v117 = v335;
            outlined copy of Text.Effect.StopCollector?(v182, v183, v188, v185, v186);

            v364[0] = v179;
            v35 = v179;
          }

          v359.a = v173;
          v359.b = v174;
          v359.c = v175;
          v359.d = v176;
          v359.tx = v177;
          v359.ty = v178;
          if (!CGAffineTransformIsIdentity(&v359))
          {
            v189 = *(v35 + 24);
            v190 = *(v35 + 40);
            v359.a = v173;
            v359.b = v174;
            v359.c = v175;
            v359.d = v176;
            v359.tx = v177;
            v359.ty = v178;
            *&v375.a = v189;
            *&v375.c = v190;
            *&v375.tx = *(v35 + 56);
            CGAffineTransformConcat(&v355, &v359, &v375);
            v191 = *&v355.c;
            v192 = *&v355.tx;
            *(v35 + 24) = *&v355.a;
            *(v35 + 40) = v191;
            *(v35 + 56) = v192;
          }
        }

        type metadata accessor for (Text.Layout.RunSlice, Color.Resolved?)(0);
        v194 = *(v193 + 48);
        (v349)(v352, *&v353.x, v117);
        v195 = *(v35 + 96);
        v196 = 0uLL;
        if ((v195 & 1) == 0)
        {
          v196 = *(v35 + 80);
        }

        v197 = v352;
        v198 = v352 + v194;
        *v198 = v196;
        *(v198 + 16) = v195;
        swift_storeEnumTagMultiPayload();
        Text.Effect.DrawingContext.Storage.append(_:)(v197);
        outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v197, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
        v199 = *(v35 + 24);
        v200 = *(v35 + 40);
        v358[0] = *(v35 + 56);
        v356 = v199;
        v357 = v200;
        if (static CGAffineTransform.== infix(_:_:)())
        {
          v201 = *v343;
          (*v343)(*&v353.x, v117);
        }

        else
        {
          v202 = v364[0];
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v201 = *v343;
            (*v343)(*&v353.x, v117);
            v35 = v364[0];
          }

          else
          {
            type metadata accessor for Text.Effect.DrawingContext.Storage();
            v35 = swift_allocObject();
            *(v35 + 24) = 0x3FF0000000000000;
            *(v35 + 32) = 0;
            *(v35 + 40) = 0;
            *(v35 + 48) = 0x3FF0000000000000;
            *(v35 + 56) = 0;
            *(v35 + 64) = 0;
            *(v35 + 80) = 0;
            *(v35 + 88) = 0;
            *(v35 + 72) = 0x3FF0000000000000;
            *(v35 + 96) = 1;
            *(v35 + 104) = 0u;
            *(v35 + 120) = 0u;
            *(v35 + 136) = 0u;
            *(v35 + 152) = v328;
            *(v35 + 168) = 0x3FF0000000000000;
            *(v35 + 176) = 0;
            *(v35 + 184) = 0u;
            *(v35 + 200) = 0u;
            *(v35 + 216) = 0;
            *(v35 + 16) = *(v202 + 16);
            v203 = *(v202 + 40);
            v204 = *(v202 + 56);
            *(v35 + 24) = *(v202 + 24);
            *(v35 + 40) = v203;
            *(v35 + 56) = v204;
            *(v35 + 72) = *(v202 + 72);
            v205 = *(v202 + 184);
            v206 = *(v202 + 192);
            v207 = *(v202 + 200);
            v208 = *(v202 + 208);
            v209 = *(v202 + 216);
            *(v35 + 184) = v205;
            *(v35 + 192) = v206;
            *(v35 + 200) = v207;
            *(v35 + 208) = v208;
            *(v35 + 216) = v209;
            v210 = *(v202 + 96);
            *(v35 + 80) = *(v202 + 80);
            *(v35 + 96) = v210;

            v211 = v207;
            v117 = v335;
            v212 = outlined copy of Text.Effect.StopCollector?(v205, v206, v211, v208, v209);
            v201 = *v343;
            (*v343)(*&v353.x, v117, v212);

            v364[0] = v35;
          }

          *(v35 + 24) = *&v384.a;
          *(v35 + 40) = *&v384.c;
          *(v35 + 56) = *&v384.tx;
        }

        v126 = v348;
        LODWORD(v351) = 0;
        v127 = (v347 + 16);
        if (v332 == v348)
        {
          goto LABEL_123;
        }
      }

      v201 = *v343;
LABEL_123:
      v201(v329, v117);
    }

    else
    {
      (*(v343 + 8))(v329, v117);
    }

    v312 = v342;
    *(v342 + *(v330 + 56)) = 1;
    outlined destroy of Zip2Sequence<[CGPoint], Text.Layout.RunSlice>.Iterator(v312);
    goto LABEL_125;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v60 = *(v33 + 1);
    v356 = *v33;
    v357 = v60;
    v61 = *(v33 + 3);
    v358[0] = *(v33 + 2);
    v358[1] = v61;
    specialized Text.Effect.PathInterpolator.PathGlyph.resolve(cluster:state:mapKeys:in:)(v344, a3, v364);
    outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v356);
  }

  else
  {
    v298 = *(v33 + 5);
    v358[2] = *(v33 + 4);
    v358[3] = v298;
    v358[4] = *(v33 + 6);
    v299 = *(v33 + 1);
    v356 = *v33;
    v357 = v299;
    v300 = *(v33 + 3);
    v358[0] = *(v33 + 2);
    v358[1] = v300;
    v301 = *(v35 + 208);
    if (v301)
    {
      v325 = v14;
      v303 = *(v35 + 184);
      v302 = *(v35 + 192);
      v304 = *(v35 + 200);
      v305 = *(v35 + 216);
      if (!*(v305 + 16) || (v306 = specialized __RawDictionaryStorage.find<A>(_:)(v333), (v307 & 1) == 0))
      {
        outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v303, v302, v304);

        outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v356);
        outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v303, v302, v304);

        return;
      }

      v308 = *(*(v305 + 56) + 8 * v306);
      if ((v308 & 0x8000000000000000) != 0)
      {
        goto LABEL_149;
      }

      if (v308 >= *(v301 + 16))
      {
        goto LABEL_150;
      }

      v353 = *(v301 + 16 * v308 + 32);
      outlined copy of Text.Effect.StopCollector?(v303, v302, v304, v301, v305);

      outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v303, v302, v304);

      MEMORY[0x1EEE9AC00](v309);
      *(&v324 - 3) = v353;
      *(&v324 - 4) = v314;
      *(&v324 - 3) = v313;
      *(&v324 - 2) = &v356;
      v317 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySnySiGSay7SwiftUI4TextV0H16AnimationSupportE6EffectO9StopIndexVGG_So7CGPointVs5NeverOTg505_sSi7f3UI4h5V0C16ij2E6k2O9lm4VSo7n17VIgyyd_Si_AHtAJs5O11OIegnrzr_TRSiApTIgyyd_Tf1cn_nTf4ng_n(0, v315, v316, closure #1 in Text.Effect.PathInterpolator.SmoothPathGlyph.path(cluster:state:mapKeys:stopSegment:)partial apply);

      v318 = *(&v358[1] + 1);

      specialized Path.init(elements:points:)(v319, v318, v317, &v375);

      Path.dilatedGlyphPath(with:)();
      v352 = *&v359.a;
      v353 = *&v359.c;
      tx_low = LOBYTE(v359.tx);
      outlined destroy of Path(&v375);
      if (*(v35 + 96))
      {
        v321 = v356;
      }

      else
      {
        v321 = *(v35 + 80);
      }

      v322 = v325;
      v323 = v353;
      *v325 = v352;
      *(v322 + 16) = v323;
      *(v322 + 32) = tx_low;
      *(v322 + 36) = v321;
      swift_storeEnumTagMultiPayload();
      *&v384.a = *&v359.a;
      *&v384.c = *&v359.c;
      LOBYTE(v384.tx) = LOBYTE(v359.tx);
      outlined init with copy of Path.Storage(&v384, &v355);
      Text.Effect.DrawingContext.Storage.append(_:)(v322);
      outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v356);
      outlined destroy of Path(&v359);
      outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v322, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
    }

    else
    {
      outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v356);
    }
  }

LABEL_125:
}

void Text.Effect.PathInterpolator.Glyph.resolve(keyPath:state:mapKeys:in:)(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, unint64_t a5, uint64_t a6)
{
  *&v251 = a3;
  *&v247 = a1;
  v267 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v10);
  v245 = &v241 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v246 = (&v241 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v248 = &v241 - v15;
  *&v252 = type metadata accessor for Text.Layout.RunSlice();
  *&v250 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v249 = &v241 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v241 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(a6 + 24);
  v22 = *(a6 + 32);
  v23 = *(a6 + 40);
  v262 = *a6;
  v20 = v262;
  v263 = *(a6 + 8);
  v264 = v21;
  v265 = v22;
  v266 = v23;
  v24 = *(v262 + 72);
  v25 = a4[8] * v24;

  v26 = v20;
  if (v25 != v24)
  {
    v244 = v6;
    v26 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Text.Effect.DrawingContext.Storage();
      v26 = swift_allocObject();
      *(v26 + 24) = 0x3FF0000000000000;
      *(v26 + 32) = 0;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0x3FF0000000000000;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      *(v26 + 80) = 0;
      *(v26 + 88) = 0;
      *(v26 + 72) = 0x3FF0000000000000;
      *(v26 + 96) = 1;
      *(v26 + 104) = 0u;
      *(v26 + 120) = 0u;
      *(v26 + 136) = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      *(v26 + 152) = _Q1;
      *(v26 + 168) = 0x3FF0000000000000;
      *(v26 + 176) = 0;
      *(v26 + 184) = 0u;
      *(v26 + 200) = 0u;
      *(v26 + 216) = 0;
      *(v26 + 16) = *(v20 + 16);
      v32 = *(v20 + 40);
      v33 = *(v20 + 56);
      *(v26 + 24) = *(v20 + 24);
      *(v26 + 40) = v32;
      *(v26 + 56) = v33;
      *(v26 + 72) = *(v20 + 72);
      v241 = a5;
      v242 = a4;
      v35 = *(v20 + 184);
      v34 = *(v20 + 192);
      v243 = v10;
      v37 = *(v20 + 200);
      v36 = *(v20 + 208);
      v38 = *(v20 + 216);
      *(v26 + 184) = v35;
      *(v26 + 192) = v34;
      *(v26 + 200) = v37;
      *(v26 + 208) = v36;
      *(v26 + 216) = v38;
      v39 = *(v20 + 96);
      *(v26 + 80) = *(v20 + 80);
      *(v26 + 96) = v39;

      v40 = v35;
      v41 = v34;
      a5 = v241;
      a4 = v242;
      v42 = v36;
      v10 = v243;
      outlined copy of Text.Effect.StopCollector?(v40, v41, v37, v42, v38);

      v262 = v26;
    }

    *(v26 + 72) = v25;
    v6 = v244;
  }

  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v6, v19, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v164 = *v19;
      v165 = *(v20 + 112);
      v166 = *(v20 + 120);
      v167 = *(v20 + 128);
      v168 = *(v20 + 136);
      v169 = *(v20 + 144);
      v170 = *(v20 + 152);
      v171 = *(v20 + 160);
      CGAffineTransformMakeTranslation(&v253, v168, v169);
      CGAffineTransformScale(&v261, &v253, v170, v171);
      tx = v261.tx;
      ty = v261.ty;
      v252 = *&v261.a;
      v250 = *&v261.c;
      v174 = __sincos_stret(v167);
      v253.a = v174.__cosval;
      v253.b = v174.__sinval;
      v253.c = -v174.__sinval;
      v253.d = v174.__cosval;
      v253.tx = 0.0;
      v253.ty = 0.0;
      *&v261.a = v252;
      *&v261.c = v250;
      v261.tx = tx;
      v261.ty = ty;
      CGAffineTransformConcat(&v259, &v253, &v261);
      v253 = v259;
      CGAffineTransformTranslate(&v261, &v253, -v168, -v169);
      v253 = v261;
      CGAffineTransformTranslate(&v261, &v253, v165, v166);
      a = v261.a;
      b = v261.b;
      c = v261.c;
      d = v261.d;
      v179 = v261.tx;
      v180 = v261.ty;
      v253 = v261;
      if (!CGAffineTransformIsIdentity(&v253))
      {
        v181 = v262;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v182 = swift_allocObject();
          *(v182 + 24) = 0x3FF0000000000000;
          *(v182 + 32) = 0;
          *(v182 + 40) = 0;
          *(v182 + 48) = 0x3FF0000000000000;
          *(v182 + 56) = 0;
          *(v182 + 64) = 0;
          *(v182 + 80) = 0;
          *(v182 + 88) = 0;
          *(v182 + 72) = 0x3FF0000000000000;
          *(v182 + 96) = 1;
          *(v182 + 104) = 0u;
          *(v182 + 120) = 0u;
          *(v182 + 136) = 0u;
          __asm { FMOV            V1.2D, #1.0 }

          *(v182 + 152) = _Q1;
          *(v182 + 168) = 0x3FF0000000000000;
          *(v182 + 176) = 0;
          *(v182 + 184) = 0u;
          *(v182 + 200) = 0u;
          *(v182 + 216) = 0;
          *(v182 + 16) = *(v181 + 16);
          v184 = *(v181 + 40);
          v185 = *(v181 + 56);
          *(v182 + 24) = *(v181 + 24);
          *(v182 + 40) = v184;
          *(v182 + 56) = v185;
          *(v182 + 72) = *(v181 + 72);
          v241 = a5;
          v242 = a4;
          v186 = v181;
          v187 = *(v181 + 184);
          v188 = *(v181 + 192);
          v189 = *(v186 + 200);
          v190 = *(v186 + 208);
          v191 = *(v186 + 216);
          *(v182 + 184) = v187;
          *(v182 + 192) = v188;
          *(v182 + 200) = v189;
          *(v182 + 208) = v190;
          *(v182 + 216) = v191;
          v192 = *(v186 + 96);
          *(v182 + 80) = *(v186 + 80);
          *(v182 + 96) = v192;

          v193 = v187;
          v194 = v191;
          a5 = v241;
          a4 = v242;
          outlined copy of Text.Effect.StopCollector?(v193, v188, v189, v190, v194);

          v262 = v182;
          v181 = v182;
        }

        v253.a = a;
        v253.b = b;
        v253.c = c;
        v253.d = d;
        v253.tx = v179;
        v253.ty = v180;
        if (!CGAffineTransformIsIdentity(&v253))
        {
          v195 = *(v181 + 24);
          v196 = *(v181 + 40);
          v253.a = a;
          v253.b = b;
          v253.c = c;
          v253.d = d;
          v253.tx = v179;
          v253.ty = v180;
          *&v261.a = v195;
          *&v261.c = v196;
          *&v261.tx = *(v181 + 56);
          CGAffineTransformConcat(&v259, &v253, &v261);
          v197 = *&v259.c;
          v198 = *&v259.tx;
          *(v181 + 24) = *&v259.a;
          *(v181 + 40) = v197;
          *(v181 + 56) = v198;
        }
      }

      if ((v251 & 0x8000000000000000) == 0)
      {
        if (*(v164 + 16) > v251)
        {
          v199 = (v164 + (v251 << 6));
          v200 = v199[2];
          v201 = v199[3];
          v202 = v199[5];
          *&v253.tx = v199[4];
          v254 = v202;
          *&v253.a = v200;
          *&v253.c = v201;
          outlined init with copy of Text.Effect.PathInterpolator.PathGlyph(&v253, &v261);

LABEL_44:
          specialized Text.Effect.PathInterpolator.PathGlyph.resolve(cluster:state:mapKeys:in:)(a4, a5, &v262);
          outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v253);
LABEL_53:

          return;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v215 = v19[1];
        *&v253.a = *v19;
        *&v253.c = v215;
        v216 = v19[3];
        *&v253.tx = v19[2];
        v254 = v216;
        Text.Effect.PathInterpolator.Interpolated.resolve(state:mapKeys:in:)(a4, a5, &v262);
        outlined destroy of Text.Effect.PathInterpolator.Interpolated(&v253);
        goto LABEL_53;
      }

      if ((v251 & 0x8000000000000000) == 0)
      {
        if (*(*v19 + 16) > v251)
        {
          v80 = (*v19 + 112 * v251);
          v81 = v80[2];
          v82 = v80[4];
          *&v253.c = v80[3];
          *&v253.tx = v82;
          *&v253.a = v81;
          v83 = v80[5];
          v84 = v80[6];
          v85 = v80[8];
          v256 = v80[7];
          v257 = v85;
          v254 = v83;
          v255 = v84;
          outlined init with copy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v253, &v261);

          v86 = *(v26 + 208);
          if (v86)
          {
            v243 = v10;
            v88 = *(v26 + 184);
            v87 = *(v26 + 192);
            v89 = *(v26 + 200);
            v90 = *(v26 + 216);
            if (*(v90 + 16))
            {
              v91 = specialized __RawDictionaryStorage.find<A>(_:)(v247);
              if (v92)
              {
                v93 = *(*(v90 + 56) + 8 * v91);
                if ((v93 & 0x8000000000000000) == 0)
                {
                  if (v93 < *(v86 + 16))
                  {
                    v252 = *(v86 + 16 * v93 + 32);
                    outlined copy of Text.Effect.StopCollector?(v88, v87, v89, v86, v90);
                    *&v251 = v252;

                    outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v88, v87, v89);

                    v244 = v26;
                    v229 = *(&v254 + 1);
                    a_low = LODWORD(v253.a);
                    a_high = HIDWORD(v253.a);
                    LODWORD(v249) = HIDWORD(v253.b);
                    LODWORD(v250) = LODWORD(v253.b);
                    MEMORY[0x1EEE9AC00](v94);
                    *(&v241 - 3) = v252;
                    *(&v241 - 4) = a5;
                    *(&v241 - 3) = v232;
                    *(&v241 - 2) = &v253;
                    v235 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySnySiGSay7SwiftUI4TextV0H16AnimationSupportE6EffectO9StopIndexVGG_So7CGPointVs5NeverOTg505_sSi7f3UI4h5V0C16ij2E6k2O9lm4VSo7n17VIgyyd_Si_AHtAJs5O11OIegnrzr_TRSiApTIgyyd_Tf1cn_nTf4ng_n(0, v233, v234, partial apply for closure #1 in Text.Effect.PathInterpolator.SmoothPathGlyph.path(cluster:state:mapKeys:stopSegment:));

                    specialized Path.init(elements:points:)(v236, v229, v235, &v258);

                    Path.dilatedGlyphPath(with:)();
                    v251 = *&v259.a;
                    v252 = *&v259.c;
                    tx_low = LOBYTE(v259.tx);
                    outlined destroy of Path(&v258);
                    if (*(v244 + 96))
                    {
                      v227 = v245;
                      v238 = v250;
                      v239 = v249;
                    }

                    else
                    {
                      v238 = *(v244 + 88);
                      v239 = *(v244 + 92);
                      a_low = *(v244 + 80);
                      a_high = *(v244 + 84);
                      v227 = v245;
                    }

                    v240 = v252;
                    *v227 = v251;
                    *(v227 + 16) = v240;
                    *(v227 + 32) = tx_low;
                    *(v227 + 36) = a_low;
                    *(v227 + 40) = a_high;
                    *(v227 + 44) = v238;
                    *(v227 + 48) = v239;
                    goto LABEL_65;
                  }

LABEL_73:
                  __break(1u);
                }

LABEL_72:
                __break(1u);
                goto LABEL_73;
              }
            }

            outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v88, v87, v89);

            outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v253);
            v217 = v88;
            v218 = v87;
            goto LABEL_56;
          }

LABEL_52:
          outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v253);
          goto LABEL_53;
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (!EnumCaseMultiPayload)
  {
    v96 = v249;
    v95 = v250;
    (*(v250 + 32))(v249, v19, v252);
    v97 = *(v20 + 112);
    v98 = *(v20 + 120);
    v99 = *(v20 + 128);
    v100 = *(v20 + 136);
    v101 = *(v20 + 144);
    v102 = *(v20 + 152);
    v103 = *(v20 + 160);
    CGAffineTransformMakeTranslation(&v253, v100, v101);
    CGAffineTransformScale(&v261, &v253, v102, v103);
    v104 = v261.tx;
    v105 = v261.ty;
    v251 = *&v261.a;
    v247 = *&v261.c;
    v106 = __sincos_stret(v99);
    v253.a = v106.__cosval;
    v253.b = v106.__sinval;
    v253.c = -v106.__sinval;
    v253.d = v106.__cosval;
    v253.tx = 0.0;
    v253.ty = 0.0;
    *&v261.a = v251;
    *&v261.c = v247;
    v261.tx = v104;
    v261.ty = v105;
    CGAffineTransformConcat(&v259, &v253, &v261);
    v253 = v259;
    CGAffineTransformTranslate(&v261, &v253, -v100, -v101);
    v253 = v261;
    CGAffineTransformTranslate(&v261, &v253, v97, v98);
    v107 = v261.a;
    v108 = v261.b;
    v109 = v261.c;
    v110 = v261.d;
    v111 = v261.tx;
    v112 = v261.ty;
    v253 = v261;
    if (!CGAffineTransformIsIdentity(&v253))
    {
      v26 = v262;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v113 = swift_allocObject();
        *(v113 + 24) = 0x3FF0000000000000;
        *(v113 + 32) = 0;
        *(v113 + 40) = 0;
        *(v113 + 48) = 0x3FF0000000000000;
        *(v113 + 56) = 0;
        *(v113 + 64) = 0;
        *(v113 + 80) = 0;
        *(v113 + 88) = 0;
        *(v113 + 72) = 0x3FF0000000000000;
        *(v113 + 96) = 1;
        *(v113 + 104) = 0u;
        *(v113 + 120) = 0u;
        *(v113 + 136) = 0u;
        __asm { FMOV            V1.2D, #1.0 }

        *(v113 + 152) = _Q1;
        *(v113 + 168) = 0x3FF0000000000000;
        *(v113 + 176) = 0;
        *(v113 + 184) = 0u;
        *(v113 + 200) = 0u;
        *(v113 + 216) = 0;
        *(v113 + 16) = *(v26 + 16);
        v115 = *(v26 + 40);
        v116 = *(v26 + 56);
        *(v113 + 24) = *(v26 + 24);
        *(v113 + 40) = v115;
        *(v113 + 56) = v116;
        *(v113 + 72) = *(v26 + 72);
        v242 = a4;
        v117 = *(v26 + 184);
        v118 = *(v26 + 192);
        v119 = v26;
        v120 = *(v26 + 200);
        v121 = *(v119 + 208);
        v122 = *(v119 + 216);
        *(v113 + 184) = v117;
        *(v113 + 192) = v118;
        *(v113 + 200) = v120;
        *(v113 + 208) = v121;
        *(v113 + 216) = v122;
        v123 = *(v119 + 96);
        *(v113 + 80) = *(v119 + 80);
        *(v113 + 96) = v123;

        v124 = v117;
        a4 = v242;
        v96 = v249;
        outlined copy of Text.Effect.StopCollector?(v124, v118, v120, v121, v122);
        v95 = v250;

        v262 = v113;
        v26 = v113;
      }

      v253.a = v107;
      v253.b = v108;
      v253.c = v109;
      v253.d = v110;
      v253.tx = v111;
      v253.ty = v112;
      if (!CGAffineTransformIsIdentity(&v253))
      {
        v125 = *(v26 + 24);
        v126 = *(v26 + 40);
        v253.a = v107;
        v253.b = v108;
        v253.c = v109;
        v253.d = v110;
        v253.tx = v111;
        v253.ty = v112;
        *&v261.a = v125;
        *&v261.c = v126;
        *&v261.tx = *(v26 + 56);
        CGAffineTransformConcat(&v259, &v253, &v261);
        v127 = *&v259.c;
        v128 = *&v259.tx;
        *(v26 + 24) = *&v259.a;
        *(v26 + 40) = v127;
        *(v26 + 56) = v128;
      }
    }

    v129 = a4[4];
    v130 = a4[5];
    CGAffineTransformMakeTranslation(&v253, v129, v130);
    CGAffineTransformScale(&v261, &v253, a4[6], a4[7]);
    v131 = v261.tx;
    v132 = v261.ty;
    v251 = *&v261.a;
    v247 = *&v261.c;
    v133 = __sincos_stret(a4[3]);
    v253.a = v133.__cosval;
    v253.b = v133.__sinval;
    v253.c = -v133.__sinval;
    v253.d = v133.__cosval;
    v253.tx = 0.0;
    v253.ty = 0.0;
    *&v261.a = v251;
    *&v261.c = v247;
    v261.tx = v131;
    v261.ty = v132;
    CGAffineTransformConcat(&v259, &v253, &v261);
    v253 = v259;
    CGAffineTransformTranslate(&v261, &v253, -v129, -v130);
    v134 = a4[1];
    v135 = a4[2];
    v253 = v261;
    CGAffineTransformTranslate(&v261, &v253, v134, v135);
    v136 = v261.a;
    v137 = v261.b;
    v138 = v261.c;
    v139 = v261.d;
    v140 = v261.tx;
    v141 = v261.ty;
    v253 = v261;
    IsIdentity = CGAffineTransformIsIdentity(&v253);
    v143 = v248;
    if (!IsIdentity)
    {
      v26 = v262;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v144 = swift_allocObject();
        *(v144 + 24) = 0x3FF0000000000000;
        *(v144 + 32) = 0;
        *(v144 + 40) = 0;
        *(v144 + 48) = 0x3FF0000000000000;
        *(v144 + 56) = 0;
        *(v144 + 64) = 0;
        *(v144 + 80) = 0;
        *(v144 + 88) = 0;
        *(v144 + 72) = 0x3FF0000000000000;
        *(v144 + 96) = 1;
        *(v144 + 104) = 0u;
        *(v144 + 120) = 0u;
        *(v144 + 136) = 0u;
        __asm { FMOV            V1.2D, #1.0 }

        *(v144 + 152) = _Q1;
        *(v144 + 168) = 0x3FF0000000000000;
        *(v144 + 176) = 0;
        *(v144 + 184) = 0u;
        *(v144 + 200) = 0u;
        *(v144 + 216) = 0;
        *(v144 + 16) = *(v26 + 16);
        v146 = *(v26 + 40);
        v147 = *(v26 + 56);
        *(v144 + 24) = *(v26 + 24);
        *(v144 + 40) = v146;
        *(v144 + 56) = v147;
        *(v144 + 72) = *(v26 + 72);
        v148 = *(v26 + 184);
        v149 = *(v26 + 192);
        v150 = v26;
        v151 = *(v26 + 200);
        v152 = *(v150 + 208);
        v153 = *(v150 + 216);
        *(v144 + 184) = v148;
        *(v144 + 192) = v149;
        *(v144 + 200) = v151;
        *(v144 + 208) = v152;
        *(v144 + 216) = v153;
        v154 = *(v150 + 96);
        *(v144 + 80) = *(v150 + 80);
        *(v144 + 96) = v154;

        v155 = v148;
        v143 = v248;
        v96 = v249;
        outlined copy of Text.Effect.StopCollector?(v155, v149, v151, v152, v153);
        v95 = v250;

        v262 = v144;
        v26 = v144;
      }

      v253.a = v136;
      v253.b = v137;
      v253.c = v138;
      v253.d = v139;
      v253.tx = v140;
      v253.ty = v141;
      if (!CGAffineTransformIsIdentity(&v253))
      {
        v156 = *(v26 + 24);
        v157 = *(v26 + 40);
        v253.a = v136;
        v253.b = v137;
        v253.c = v138;
        v253.d = v139;
        v253.tx = v140;
        v253.ty = v141;
        *&v261.a = v156;
        *&v261.c = v157;
        *&v261.tx = *(v26 + 56);
        CGAffineTransformConcat(&v259, &v253, &v261);
        v158 = *&v259.c;
        v159 = *&v259.tx;
        *(v26 + 24) = *&v259.a;
        *(v26 + 40) = v158;
        *(v26 + 56) = v159;
      }
    }

    type metadata accessor for (Text.Layout.RunSlice, Color.Resolved?)(0);
    v161 = v143 + *(v160 + 48);
    (*(v95 + 16))(v143, v96, v252);
    v162 = *(v26 + 96);
    v163 = 0uLL;
    if ((v162 & 1) == 0)
    {
      v163 = *(v26 + 80);
    }

    *v161 = v163;
    *(v161 + 16) = v162;
    swift_storeEnumTagMultiPayload();
    Text.Effect.DrawingContext.Storage.append(_:)(v143);
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v143, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
    (*(v95 + 8))(v96, v252);
    goto LABEL_53;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v44 = v19[1];
    *&v253.a = *v19;
    *&v253.c = v44;
    v45 = v19[3];
    *&v253.tx = v19[2];
    v254 = v45;
    v46 = *(v20 + 112);
    v47 = *(v20 + 120);
    v48 = *(v20 + 128);
    v49 = *(v20 + 136);
    v50 = *(v20 + 144);
    v51 = *(v20 + 152);
    v52 = *(v20 + 160);
    CGAffineTransformMakeTranslation(&v261, v49, v50);
    CGAffineTransformScale(&v259, &v261, v51, v52);
    v53 = v259.tx;
    v54 = v259.ty;
    v251 = *&v259.c;
    v252 = *&v259.a;
    v55 = __sincos_stret(v48);
    v261.a = v55.__cosval;
    v261.b = v55.__sinval;
    v261.c = -v55.__sinval;
    v261.d = v55.__cosval;
    v261.tx = 0.0;
    v261.ty = 0.0;
    *&v259.a = v252;
    *&v259.c = v251;
    v259.tx = v53;
    v259.ty = v54;
    CGAffineTransformConcat(&v258, &v261, &v259);
    v261 = v258;
    CGAffineTransformTranslate(&v259, &v261, -v49, -v50);
    v261 = v259;
    CGAffineTransformTranslate(&v259, &v261, v46, v47);
    v56 = v259.a;
    v57 = v259.b;
    v58 = v259.c;
    v59 = v259.d;
    v60 = v259.tx;
    v61 = v259.ty;
    v261 = v259;
    if (!CGAffineTransformIsIdentity(&v261))
    {
      v62 = v262;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v63 = swift_allocObject();
        *(v63 + 24) = 0x3FF0000000000000;
        *(v63 + 32) = 0;
        *(v63 + 40) = 0;
        *(v63 + 48) = 0x3FF0000000000000;
        *(v63 + 56) = 0;
        *(v63 + 64) = 0;
        *(v63 + 80) = 0;
        *(v63 + 88) = 0;
        *(v63 + 72) = 0x3FF0000000000000;
        *(v63 + 96) = 1;
        *(v63 + 104) = 0u;
        *(v63 + 120) = 0u;
        *(v63 + 136) = 0u;
        __asm { FMOV            V1.2D, #1.0 }

        *(v63 + 152) = _Q1;
        *(v63 + 168) = 0x3FF0000000000000;
        *(v63 + 176) = 0;
        *(v63 + 184) = 0u;
        *(v63 + 200) = 0u;
        *(v63 + 216) = 0;
        *(v63 + 16) = *(v62 + 16);
        v65 = *(v62 + 40);
        v66 = *(v62 + 56);
        *(v63 + 24) = *(v62 + 24);
        *(v63 + 40) = v65;
        *(v63 + 56) = v66;
        *(v63 + 72) = *(v62 + 72);
        v67 = a4;
        v68 = *(v62 + 184);
        v69 = *(v62 + 192);
        v241 = a5;
        v70 = v62;
        v71 = *(v62 + 200);
        v72 = *(v70 + 208);
        v73 = *(v70 + 216);
        *(v63 + 184) = v68;
        *(v63 + 192) = v69;
        *(v63 + 200) = v71;
        *(v63 + 208) = v72;
        *(v63 + 216) = v73;
        v74 = *(v70 + 96);
        *(v63 + 80) = *(v70 + 80);
        *(v63 + 96) = v74;

        v75 = v68;
        a4 = v67;
        outlined copy of Text.Effect.StopCollector?(v75, v69, v71, v72, v73);
        a5 = v241;

        v262 = v63;
        v62 = v63;
      }

      v261.a = v56;
      v261.b = v57;
      v261.c = v58;
      v261.d = v59;
      v261.tx = v60;
      v261.ty = v61;
      if (!CGAffineTransformIsIdentity(&v261))
      {
        v76 = *(v62 + 24);
        v77 = *(v62 + 40);
        v261.a = v56;
        v261.b = v57;
        v261.c = v58;
        v261.d = v59;
        v261.tx = v60;
        v261.ty = v61;
        *&v259.a = v76;
        *&v259.c = v77;
        *&v259.tx = *(v62 + 56);
        CGAffineTransformConcat(&v258, &v261, &v259);
        v78 = *&v258.c;
        v79 = *&v258.tx;
        *(v62 + 24) = *&v258.a;
        *(v62 + 40) = v78;
        *(v62 + 56) = v79;
      }
    }

    goto LABEL_44;
  }

  v203 = v19[5];
  v255 = v19[4];
  v256 = v203;
  v257 = v19[6];
  v204 = v19[1];
  *&v253.a = *v19;
  *&v253.c = v204;
  v205 = v19[3];
  *&v253.tx = v19[2];
  v254 = v205;
  v206 = *(v26 + 208);
  if (!v206)
  {
    goto LABEL_52;
  }

  v207 = a5;
  v209 = *(v26 + 184);
  v208 = *(v26 + 192);
  v89 = *(v26 + 200);
  v210 = *(v26 + 216);
  if (*(v210 + 16))
  {
    v211 = specialized __RawDictionaryStorage.find<A>(_:)(v247);
    if (v212)
    {
      v243 = v10;
      v213 = *(*(v210 + 56) + 8 * v211);
      if ((v213 & 0x8000000000000000) == 0)
      {
        v244 = v26;
        if (v213 < *(v206 + 16))
        {
          v252 = *(v206 + 16 * v213 + 32);
          outlined copy of Text.Effect.StopCollector?(v209, v208, v89, v206, v210);

          outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v209, v208, v89);

          MEMORY[0x1EEE9AC00](v214);
          *(&v241 - 3) = v252;
          *(&v241 - 4) = v207;
          *(&v241 - 3) = v219;
          *(&v241 - 2) = &v253;
          v222 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySnySiGSay7SwiftUI4TextV0H16AnimationSupportE6EffectO9StopIndexVGG_So7CGPointVs5NeverOTg505_sSi7f3UI4h5V0C16ij2E6k2O9lm4VSo7n17VIgyyd_Si_AHtAJs5O11OIegnrzr_TRSiApTIgyyd_Tf1cn_nTf4ng_n(0, v220, v221, closure #1 in Text.Effect.PathInterpolator.SmoothPathGlyph.path(cluster:state:mapKeys:stopSegment:)partial apply);

          v223 = *(&v254 + 1);

          specialized Path.init(elements:points:)(v224, v223, v222, &v258);

          Path.dilatedGlyphPath(with:)();
          v251 = *&v259.a;
          v252 = *&v259.c;
          v225 = LOBYTE(v259.tx);
          outlined destroy of Path(&v258);
          if (*(v244 + 96))
          {
            v226 = *&v253.a;
          }

          else
          {
            v226 = *(v244 + 80);
          }

          v227 = v246;
          v228 = v252;
          *v246 = v251;
          *(v227 + 16) = v228;
          *(v227 + 32) = v225;
          *(v227 + 36) = v226;
LABEL_65:
          swift_storeEnumTagMultiPayload();
          *&v261.a = *&v259.a;
          *&v261.c = *&v259.c;
          LOBYTE(v261.tx) = LOBYTE(v259.tx);
          outlined init with copy of Path.Storage(&v261, &v260);
          Text.Effect.DrawingContext.Storage.append(_:)(v227);
          outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v253);
          outlined destroy of Path(&v259);
          outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v227, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
          goto LABEL_53;
        }

        goto LABEL_71;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }
  }

  outlined copy of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v209, v208, v89);

  outlined destroy of Text.Effect.PathInterpolator.SmoothPathGlyph(&v253);
  v217 = v209;
  v218 = v208;
LABEL_56:
  outlined consume of (key: Text.Effect.StopKey, segment: Text.Effect.StopCollector.Segment, indices: Set<Text.Effect.ClusterIndex>)?(v217, v218, v89);
}

uint64_t Text.Effect.PathInterpolator.Cluster.width(for:)(unint64_t a1)
{
  result = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(*(v1 + *(result + 24)) + 16);
  if (v4 <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 + 1 >= v4)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance Text.Effect.PathInterpolator.Fragment@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v2[1] + 16);
  v5 = __OFADD__(*v2, v4);
  v6 = *v2 + v4;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= *v2 && v3 < v6)
  {
    *a2 = v3;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance Text.Effect.PathInterpolator.Fragment(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(v1[1] + 16);
  v4 = __OFADD__(*v1, v3);
  v5 = *v1 + v3;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= *v1 && v2 < v5)
  {
    *result = v2;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance Text.Effect.PathInterpolator.Fragment(void *a1@<X8>)
{
  v2 = *(v1[1] + 16);
  if (__OFADD__(*v1, v2))
  {
    __break(1u);
  }

  else
  {
    *a1 = *v1 + v2;
  }
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Text.Effect.PathInterpolator.Fragment(uint64_t (**a1)(), void *a2))()
{
  v5 = *(type metadata accessor for Text.Effect.PathInterpolator.Cluster(0) - 8);
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2 - *v2;
  if (__OFSUB__(*a2, *v2))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v2[1];
  if (v7 < *(v8 + 16))
  {
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
    return protocol witness for Collection.subscript.read in conformance Text.Effect.PathInterpolator.Fragment;
  }

LABEL_10:
  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance Text.Effect.PathInterpolator.Fragment(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(*a1, type metadata accessor for Text.Effect.PathInterpolator.Cluster);

  free(v1);
}

void protocol witness for Collection.subscript.getter in conformance Text.Effect.PathInterpolator.Fragment(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(v4 + 16);
  v7 = *v2 + v6;
  if (__OFADD__(*v2, v6))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = *a1;
  if (*a1 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = a1[1];
  if (v7 >= v9)
  {
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v5;
    a2[3] = v4;

    return;
  }

LABEL_9:
  __break(1u);
}

void protocol witness for Collection.indices.getter in conformance Text.Effect.PathInterpolator.Fragment(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1[1] + 16);
  v4 = __OFADD__(*v1, v3);
  v5 = *v1 + v3;
  if (v4)
  {
    __break(1u);
  }

  else if (v5 >= v2)
  {
    *a1 = v2;
    a1[1] = v5;
    return;
  }

  __break(1u);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance Text.Effect.PathInterpolator.Fragment()
{
  v1 = *v0;
  v2 = *(v0[1] + 16);
  v3 = __OFADD__(*v0, v2);
  v4 = *v0 + v2;
  if (v3)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v4, v1))
  {
    return v4 == v1;
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance Text.Effect.PathInterpolator.Fragment@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v3[1] + 16);
  v6 = __OFADD__(*v3, v5);
  v7 = *v3 + v5;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= *v3 && v7 >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance Text.Effect.PathInterpolator.Fragment@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4, v4[1]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Effect.PathInterpolator.Fragment(uint64_t *result, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(v2[1] + 16);
  v5 = __OFADD__(*v2, v4);
  v6 = *v2 + v4;
  if (v5)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *result;
  v8 = *a2;
  if (v6 < *a2 || v8 < v3 || v7 < v3 || v6 < v7)
  {
    goto LABEL_15;
  }

  result = (v8 - v7);
  if (__OFSUB__(v8, v7))
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance Text.Effect.PathInterpolator.Fragment@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2[1] + 16);
  v4 = *v2 + v3;
  if (__OFADD__(*v2, v3))
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    if (*result >= *v2 && v5 < v4)
    {
      *a2 = v5 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance Text.Effect.PathInterpolator.Fragment(uint64_t *result)
{
  v2 = *(v1[1] + 16);
  v3 = *v1 + v2;
  if (__OFADD__(*v1, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    if (*result >= *v1 && v4 < v3)
    {
      *result = v4 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance Text.Effect.PathInterpolator.Fragment(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v2;
}

uint64_t protocol witness for Collection.count.getter in conformance Text.Effect.PathInterpolator.Fragment()
{
  v1 = *v0;
  v2 = *(v0[1] + 16);
  v3 = __OFADD__(*v0, v2);
  v4 = *v0 + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v4 - v1;
  if (v4 < v1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (__OFSUB__(v4, v1))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

char *protocol witness for Sequence._copyToContiguousArray() in conformance Text.Effect.PathInterpolator.Fragment()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, *(v0 + 8));

  return v1;
}

void Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, double a6)
{
  v582 = a4;
  v527 = a3;
  v518 = a2;
  v9 = type metadata accessor for Text.Effect.PathInterpolator.Cluster(0);
  v535 = *(v9 - 8);
  v536 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v540 = &v503 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v525 = &v503 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v516 = &v503 - v14;
  v576 = type metadata accessor for CGPathFillRule();
  v610 = *(v576 - 8);
  MEMORY[0x1EEE9AC00](v576);
  v575 = &v503 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v597 = type metadata accessor for Text.Effect.PathInterpolator.Glyph(0);
  v596 = *(v597 - 8);
  MEMORY[0x1EEE9AC00](v597);
  v17 = &v503 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v503 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v522 = (&v503 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v521 = (&v503 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v511 = (&v503 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v512 = (&v503 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v523 = &v503 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v529 = &v503 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v517 = (&v503 - v34);
  v533 = type metadata accessor for Text.Layout.Run();
  v609 = *(v533 - 8);
  MEMORY[0x1EEE9AC00](v533);
  v528 = &v503 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v581 = &v503 - v37;
  v604 = type metadata accessor for Text.Layout.RunSlice();
  v557 = *(v604 - 8);
  MEMORY[0x1EEE9AC00](v604);
  v589 = &v503 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v515 = &v503 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v591 = &v503 - v42;
  v43 = type metadata accessor for Text.Layout.Cluster();
  v546 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v541 = &v503 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v526 = &v503 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v607 = &v503 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v600 = &v503 - v50;
  v614 = type metadata accessor for Text.Layout.Line();
  v612 = *(v614 - 8);
  v51 = MEMORY[0x1EEE9AC00](v614);
  v613 = &v503 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *a1;
  v53 = *(a1 + 8);
  v562 = *(a1 + 16);
  v563 = v53;
  LODWORD(v606) = *(a1 + 24);
  v51.n128_u64[0] = *(a1 + 32);
  v586 = v51;
  *&v627 = specialized _copyCollectionToContiguousArray<A>(_:)(a5);
  specialized MutableCollection<>.sort(by:)(&v627);
  v55 = 0.0;
  v56 = v627;
  v619 = *(v627 + 16);
  if (!v619)
  {
LABEL_455:
    __break(1u);
LABEL_456:
    __break(1u);
LABEL_457:
    __break(1u);
LABEL_458:
    __break(1u);
LABEL_459:
    __break(1u);
    goto LABEL_460;
  }

  v57 = 0;
  if (*(v627 + 32) != a6)
  {
    while (v619 - 1 != v57)
    {
      v58 = *(v627 + 40 + 8 * v57++);
      if (v58 == a6)
      {
        goto LABEL_5;
      }
    }

LABEL_425:
    __break(1u);
LABEL_426:
    __break(1u);
LABEL_427:
    __break(1u);
LABEL_428:
    __break(1u);
LABEL_429:
    __break(1u);
LABEL_430:
    __break(1u);
LABEL_431:
    __break(1u);
LABEL_432:
    __break(1u);
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
LABEL_435:
    __break(1u);
LABEL_436:
    __break(1u);
LABEL_437:
    __break(1u);
    goto LABEL_438;
  }

LABEL_5:
  v509 = 0;
  v594 = v57;
  v590 = v20;
  v592 = v17;
  *&v627 = MEMORY[0x1E69E7CC0];
  v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v619, 0));
  v59 = 0;
  v605 = v627;
  v599 = v43;
  v593 = v56;
  v615 = a5;
  do
  {
    if (v59 >= *(v56 + 16))
    {
      goto LABEL_404;
    }

    if (!*(a5 + 16))
    {
      goto LABEL_405;
    }

    v55 = COERCE_DOUBLE(specialized __RawDictionaryStorage.find<A>(_:)(*(v56 + 8 * v59 + 32)));
    if ((v60 & 1) == 0)
    {
      goto LABEL_406;
    }

    v61 = (*(a5 + 56) + 56 * *&v55);
    v62 = *v61;
    v63 = *(v61 + 1);
    v64 = *(v61 + 2);
    v65 = *(v61 + 3);
    v66 = *(v61 + 5);
    v618 = *(v61 + 4);
    v617 = v66;
    v616 = v61[6];
    v67 = v605;
    *&v627 = v605;
    v69 = *(v605 + 16);
    v68 = *(v605 + 24);

    v55 = COERCE_DOUBLE();
    if (v69 >= v68 >> 1)
    {
      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1));
      v67 = v627;
    }

    ++v59;
    *(v67 + 16) = v69 + 1;
    v605 = v67;
    v70 = (v67 + 32 + 56 * v69);
    *v70 = v62;
    *(v70 + 1) = v63;
    *(v70 + 2) = v64;
    *(v70 + 3) = v65;
    v71 = v617;
    *(v70 + 4) = v618;
    *(v70 + 5) = v71;
    v70[6] = v616;
    v56 = v593;
    a5 = v615;
  }

  while (v619 != v59);
  v519 = v67 + 32;
  *&v627 = MEMORY[0x1E69E7CC0];
  v552 = v69 + 1;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69 + 1, 0);
  v72 = v627;
  v617 = v69;
  v73 = v69 + 1;
  v74 = 56;
  v75 = v605;
  do
  {
    v76 = *(*(v75 + v74) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
    *&v627 = v72;
    v78 = *(v72 + 16);
    v77 = *(v72 + 24);
    v55 = COERCE_DOUBLE();
    if (v78 >= v77 >> 1)
    {
      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1));
      v72 = v627;
    }

    *(v72 + 16) = v78 + 1;
    v79 = v72 + 32;
    *(v72 + 32 + 8 * v78) = v76;
    v74 += 56;
    --v73;
  }

  while (v73);
  if (v594 > v78)
  {
    goto LABEL_458;
  }

  v80 = *(*(v79 + 8 * v594) + 16);
  v81 = v78 + 1;
  v82 = 32;
  v83 = v617;
  while (v81)
  {
    v84 = *(*(v72 + v82) + 16);
    v82 += 8;
    --v81;
    if (v84 != v80)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
    }
  }

  v545 = v80;
  v553 = v79;
  v539 = v72;
  *&v627 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)(v552);
  v618 = *(v612 + 16);
  v85 = (v612 + 8);
  v86 = v83 + 1;
  v87 = (v75 + 56);
  do
  {
    v88 = v613;
    v89 = v614;
    (v618)(v613, *v87 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line, v614);

    Text.Layout.Line.origin.getter();
    v91 = v90;
    (*v85)(v88, v89);

    v92 = v627;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 16) + 1, 1);
      v92 = v627;
    }

    v94 = *(v92 + 16);
    v93 = *(v92 + 24);
    v95 = v619;
    if (v94 >= v93 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1);
      v92 = v627;
    }

    *(v92 + 16) = v94 + 1;
    *(v92 + 32 + 8 * v94) = v91;
    v87 += 7;
    --v86;
  }

  while (v86);
  if (!v545)
  {
    v574 = v92;

    v501 = 0;
    v561 = MEMORY[0x1E69E7CC0];
    v502 = v605;
    goto LABEL_394;
  }

  v543 = v92 + 32;
  v524 = 0;
  v513 = 0;
  v514 = 0;
  v96 = 0;
  v534 = (v519 + 56 * v594);
  v614 = v546 + 16;
  v611 = (v546 + 8);
  v603 = (v557 + 16);
  v542 = -v586.n128_f64[0];
  v551 = v95 - 1;
  v532 = (v609 + 8);
  v587 = (v557 + 32);
  v544 = (v557 + 8);
  v507 = v518 + 32;
  v520 = v582 & 6;
  v550 = *MEMORY[0x1E695EEB8];
  v548 = (v610 + 8);
  v549 = (v610 + 104);
  v506 = 40 * v594;
  v537 = v617 + 1;
  v547 = (v605 + 32);
  v530 = (v539 + 32);
  v574 = v92;
  v617 = v92 + 32;
  v561 = MEMORY[0x1E69E7CC0];
  v97 = v599;
LABEL_31:
  v555 = v96 + 1;
  v622 = MEMORY[0x1E69E7CC0];
  v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v552));
  v100 = v547;
  v101 = v537;
  do
  {
    v102 = *v100;
    v103 = v100[1];
    v104 = v100[2];
    v667 = *(v100 + 6);
    v666[1] = v103;
    v666[2] = v104;
    v666[0] = v102;
    v105 = v96 + v667;
    if (__OFADD__(v96, v667))
    {
      goto LABEL_398;
    }

    if (__OFADD__(v105, 1))
    {
      goto LABEL_399;
    }

    if (v105 + 1 < v105)
    {
      goto LABEL_400;
    }

    outlined init with copy of Text.Effect.BaseFragment(v666, &v621);
    Text.Effect.BaseFragment.typographicBounds(for:)(v105, v105 + 1, v623);
    outlined destroy of Text.Effect.BaseFragment(v666);
    v106 = v623[2];
    v107 = v622;
    v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
    if ((LOBYTE(v55) & 1) == 0)
    {
      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107[2] + 1, 1));
      v107 = v622;
    }

    v109 = v107[2];
    v108 = v107[3];
    if (v109 >= v108 >> 1)
    {
      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1));
      v107 = v622;
    }

    v107[2] = v109 + 1;
    v107[v109 + 4] = v106;
    v100 = (v100 + 56);
    --v101;
  }

  while (v101);
  v554 = v107;
  v110 = v594;
  v111 = *(v553 + 8 * v594);
  if (v96 >= *(v111 + 16))
  {
    goto LABEL_450;
  }

  v610 = (*(v546 + 80) + 32) & ~*(v546 + 80);
  v112 = *(v546 + 16);
  v609 = *(v546 + 72) * v96;
  v113 = v600;
  v613 = v112;
  v55 = COERCE_DOUBLE((v112)(v600, v111 + v610 + v609, v97));
  if (v110 >= *(v605 + 16))
  {
    goto LABEL_451;
  }

  v114 = *v534;
  v115 = v534[1];
  v116 = v534[2];
  v665 = *(v534 + 6);
  v664[1] = v115;
  v664[2] = v116;
  v664[0] = v114;
  outlined init with copy of Text.Effect.BaseFragment(v664, &v621);
  Text.Effect.BaseFragment.glyphIndices(for:)(v113);
  v565 = v117;
  outlined destroy of Text.Effect.BaseFragment(v664);
  v118 = (v582 & 1) == 0 || Text.Layout.Cluster.stopKey.getter() == 2;
  v119 = v619;
  if ((v582 & 2) == 0 && v118)
  {

    (v613)(v541, v600, v97);
    lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
    v120 = dispatch thunk of Collection.count.getter();
    if (v120)
    {
      v121 = v120;
      v622 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)(v120);
      v55 = COERCE_DOUBLE(dispatch thunk of Collection.startIndex.getter());
      v122 = v592;
      if (v121 < 0)
      {
        goto LABEL_459;
      }

      do
      {
        v475 = dispatch thunk of Collection.subscript.read();
        (*v603)(v122);
        v475(&v621, 0);
        swift_storeEnumTagMultiPayload();
        v159 = v622;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v159[2] + 1, 1);
          v159 = v622;
        }

        v477 = v159[2];
        v476 = v159[3];
        if (v477 >= v476 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v476 > 1), v477 + 1, 1);
          v159 = v622;
        }

        v159[2] = v477 + 1;
        v122 = v592;
        outlined init with take of Text.Effect.ResolvedDrawing.Operation(v592, v159 + ((*(v596 + 80) + 32) & ~*(v596 + 80)) + *(v596 + 72) * v477, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
        dispatch thunk of Collection.formIndex(after:)();
        --v121;
      }

      while (v121);
    }

    else
    {
      v159 = MEMORY[0x1E69E7CC0];
    }

    v479 = v540;
    v478 = v541;
    (v613)(v540, v541, v97);
    v480 = v536;
    *&v479[*(v536 + 20)] = v159;
    Text.Layout.Cluster.xrange.getter();
    v482 = v481;
    v484 = v483;
    v485 = *v611;
    (*v611)(v478, v97);
    v486 = &v479[*(v480 + 28)];
    *v486 = v482;
    *(v486 + 1) = v484;
    *&v479[*(v480 + 24)] = v554;
    v471 = v561;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v471 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v471[2] + 1, 1, v471);
    }

    v473 = v471[2];
    v487 = v471[3];
    v474 = v473 + 1;
    if (v473 >= v487 >> 1)
    {
      v471 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v487 > 1), v473 + 1, 1, v471);
    }

    v485();
    v98 = v540;
    goto LABEL_30;
  }

  v123 = *(v539 + 16);
  if (v123)
  {
    *&v621.a = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(v123);
    v124 = v530;
    v125 = v123;
    do
    {
      v126 = *v124;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      v127 = v126 + v610 + v609;
      v128 = v607;
      (v613)(v607, v127, v97);
      Text.Layout.Cluster.paths.getter();
      v130 = v129;
      (*v611)(v128, v97);
      a = v621.a;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&a + 16) + 1, 1);
        a = v621.a;
      }

      v133 = *(*&a + 16);
      v132 = *(*&a + 24);
      if (v133 >= v132 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1);
        a = v621.a;
      }

      *(*&a + 16) = v133 + 1;
      *(*&a + 8 * v133 + 32) = v130;
      ++v124;
      --v125;
    }

    while (v125);
    v616 = a;
    v119 = v619;
  }

  else
  {
    v616 = MEMORY[0x1E69E7CC0];
  }

  v134 = *(v553 + 8 * v594);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  v135 = v134 + v610 + v609;
  v136 = v607;
  (v613)(v607, v135, v97);
  Text.Layout.Cluster.glyphSlices.getter();
  v572 = v137;
  v595 = *v611;
  (v595)(v136, v97);
  v138 = *(v605 + 16);
  if (v138)
  {
    v622 = MEMORY[0x1E69E7CC0];
    v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v138));
    v139 = v547;
    while (1)
    {
      v140 = *v139;
      v141 = v139[1];
      v142 = v139[2];
      v663 = *(v139 + 6);
      v662[1] = v141;
      v662[2] = v142;
      v662[0] = v140;
      v143 = v96 + v663;
      if (__OFADD__(v96, v663))
      {
        break;
      }

      if (__OFADD__(v143, 1))
      {
        goto LABEL_413;
      }

      if (v143 + 1 < v143)
      {
        goto LABEL_414;
      }

      outlined init with copy of Text.Effect.BaseFragment(v662, &v621);
      Text.Effect.BaseFragment.typographicBounds(for:)(v143, v143 + 1, v624);
      outlined destroy of Text.Effect.BaseFragment(v662);
      v144 = v622;
      v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
      if (LOBYTE(v55))
      {
        v145 = v616;
        v146 = v144;
      }

      else
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v144[2] + 1, 1));
        v146 = v622;
        v145 = v616;
      }

      v148 = v146[2];
      v147 = v146[3];
      if (v148 >= v147 >> 1)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v147 > 1), v148 + 1, 1));
        v145 = v616;
        v146 = v622;
      }

      v149 = v624[0];
      v146[2] = v148 + 1;
      v146[v148 + 4] = v149;
      v139 = (v139 + 56);
      --v138;
      v119 = v619;
      if (!v138)
      {
        goto LABEL_72;
      }
    }

LABEL_412:
    __break(1u);
LABEL_413:
    __break(1u);
LABEL_414:
    __break(1u);
LABEL_415:
    __break(1u);
LABEL_416:
    __break(1u);
LABEL_417:
    __break(1u);
LABEL_418:
    __break(1u);
LABEL_419:
    __break(1u);
LABEL_420:
    __break(1u);
LABEL_421:
    __break(1u);
LABEL_422:
    __break(1u);
LABEL_423:
    __break(1u);
LABEL_424:
    __break(1u);
    goto LABEL_425;
  }

  v146 = MEMORY[0x1E69E7CC0];
  v145 = v616;
LABEL_72:
  v564 = v146;
  if (v123)
  {
    *&v621.a = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(v123);
    v150 = v530;
    do
    {
      v151 = *v150;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      v152 = v151 + v610 + v609;
      v153 = v607;
      (v613)(v607, v152, v97);
      Text.Layout.Cluster.positions.getter();
      v155 = v154;
      (v595)(v153, v97);
      v156 = v621.a;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v55 = v156;
      }

      else
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v156 + 16) + 1, 1);
        v55 = v621.a;
      }

      v158 = *(*&v55 + 16);
      v157 = *(*&v55 + 24);
      if (v158 >= v157 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v157 > 1), v158 + 1, 1);
        v55 = v621.a;
      }

      *(*&v55 + 16) = v158 + 1;
      *(*&v55 + 8 * v158 + 32) = v155;
      ++v150;
      --v123;
    }

    while (v123);
    v119 = v619;
    v145 = v616;
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  v160 = *(v572 + 16);
  v161 = *(*&v145 + 16);
  v608 = *&v145 + 32;
  v162 = 32;
  while (v161)
  {
    v163 = *(*(*&v145 + v162) + 16);
    v162 += 8;
    --v161;
    if (v163 != v160)
    {

      (v613)(v526, v600, v97);
      lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
      v164 = dispatch thunk of Collection.count.getter();
      if (v164)
      {
        v165 = v164;
        v622 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)(v164);
        v55 = COERCE_DOUBLE(dispatch thunk of Collection.startIndex.getter());
        v166 = v590;
        if (v165 < 0)
        {
          goto LABEL_467;
        }

        do
        {
          v488 = dispatch thunk of Collection.subscript.read();
          (*v603)(v166);
          v488(&v621, 0);
          swift_storeEnumTagMultiPayload();
          v461 = v622;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v461[2] + 1, 1);
            v461 = v622;
          }

          v490 = v461[2];
          v489 = v461[3];
          if (v490 >= v489 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v489 > 1), v490 + 1, 1);
            v461 = v622;
          }

          v461[2] = v490 + 1;
          v166 = v590;
          outlined init with take of Text.Effect.ResolvedDrawing.Operation(v590, v461 + ((*(v596 + 80) + 32) & ~*(v596 + 80)) + *(v596 + 72) * v490, type metadata accessor for Text.Effect.PathInterpolator.Glyph);
          dispatch thunk of Collection.formIndex(after:)();
          --v165;
        }

        while (v165);
      }

      else
      {
        v461 = MEMORY[0x1E69E7CC0];
      }

      v492 = v525;
      v491 = v526;
      (v613)(v525, v526, v97);
      v493 = v536;
      *&v492[*(v536 + 20)] = v461;
      Text.Layout.Cluster.xrange.getter();
      v495 = v494;
      v497 = v496;
      (v595)(v491, v97);
      v498 = &v492[*(v493 + 28)];
      *v498 = v495;
      *(v498 + 1) = v497;
      *&v492[*(v493 + 24)] = v554;
      v471 = v561;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v471 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v471[2] + 1, 1, v471);
      }

      v473 = v471[2];
      v499 = v471[3];
      v474 = v473 + 1;
      if (v473 >= v499 >> 1)
      {
        v471 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v499 > 1), v473 + 1, 1, v471);
      }

      v595();
      v98 = v525;
      goto LABEL_30;
    }
  }

  v573 = v55;
  if (!v160)
  {

    v460 = MEMORY[0x1E69E7CC0];
    goto LABEL_369;
  }

  if (one-time initialization token for black != -1)
  {
    v500 = v160;
    swift_once();
    v160 = v500;
    v55 = v573;
  }

  v167 = 0;
  v588 = (*(v557 + 80) + 32) & ~*(v557 + 80);
  v556 = v572 + v588;
  v567 = *&v55 + 32;
  v618 = (v564 + 4);
  v168 = v606 ^ 1;
  v508 = v565 + 32;
  v585 = MEMORY[0x1E69E7CC0];
  v615 = v96;
  v538 = v160;
  while (1)
  {
    if (v167 == v160)
    {
      goto LABEL_441;
    }

    v171 = v167;
    if (v167 >= *(v572 + 16))
    {
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
      goto LABEL_455;
    }

    v560 = static Color.Resolved.black;
    v598 = DWORD1(static Color.Resolved.black);
    v172 = HIDWORD(static Color.Resolved.black);
    v559 = DWORD2(static Color.Resolved.black);
    v601.f64[0] = *(v557 + 72);
    v173 = *(v557 + 16);
    v571 = *&v601.f64[0] * v167;
    *&v602.f64[0] = v173;
    v173(v591, v556 + *&v601.f64[0] * v167, v604);
    if (one-time initialization token for kitForegroundColor != -1)
    {
      swift_once();
    }

    Text.Layout.RunSlice.subscript.getter();
    v612 = v171;
    if (*&v621.d)
    {
      type metadata accessor for NSObject();
      v55 = COERCE_DOUBLE(swift_dynamicCast());
      v175 = v616;
      if (LOBYTE(v55))
      {
        v176 = v622;
        v177 = CGColorForCoreColor(v622, v174);
        if (v177)
        {
          v178 = v177;
          v179 = v524;
          if (v524 && (type metadata accessor for CGColorRef(0), lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef, &protocol conformance descriptor for CGColorRef), v180 = v179, v181 = static _CFObject.== infix(_:_:)(), v180, v119 = v619, (v181 & 1) != 0))
          {

            v598 = HIDWORD(v514);
            v559 = v513;
            v560 = v514;
            v172 = HIDWORD(v513);
            v175 = v616;
          }

          else
          {
            v182 = v178;
            v183 = Color.Resolved.init(failableCGColor:)(v182);
            v606 = v182;
            if (v185)
            {
              if (one-time initialization token for clear != -1)
              {
                swift_once();
              }

              v187 = static Color.Resolved.clear;
              v186 = *algn_1EAEE982C;
              v188 = dword_1EAEE9830;
              v558 = dword_1EAEE9834;

              v189 = v558;
            }

            else
            {
              v187 = v183;
              v188 = v184;

              v186 = HIDWORD(v187);
              v189 = HIDWORD(v188);
            }

            v559 = v188;
            v560 = v187;
            v598 = v186;
            v524 = v178;
            v513 = v188 | (v189 << 32);
            v514 = v187 | (v186 << 32);
            v175 = v616;
            v172 = v189;
          }

          v171 = v612;
        }

        else
        {
        }
      }
    }

    else
    {
      v55 = COERCE_DOUBLE(_sypSgWOhTm_2(&v621, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8));
      v175 = v616;
    }

    if (v594 >= *(*&v175 + 16))
    {
      goto LABEL_443;
    }

    v558 = v172;
    v190 = *(v608 + 8 * v594);
    if (v171 >= *(v190 + 16))
    {
      goto LABEL_444;
    }

    if (v594 >= *(*&v573 + 16))
    {
      goto LABEL_445;
    }

    v191 = *(v567 + 8 * v594);
    if (v171 >= *(v191 + 16))
    {
      goto LABEL_446;
    }

    if (v594 >= *(v574 + 16))
    {
      goto LABEL_447;
    }

    v606 = 40 * v171;
    v192 = v190 + 40 * v171;
    v193 = *(v192 + 32);
    v194 = *(v192 + 40);
    v195 = *(v192 + 48);
    v196 = *(v192 + 56);
    v197 = *(v192 + 64);
    v583 = *(v191 + 16 * v171 + 32);
    v198 = *(v543 + 8 * v594);
    v577 = v193;
    v578 = v194;
    v579 = v195;
    v580 = v196;
    v584 = v197;
    outlined copy of Path?(v193, v194, v195, v196, v197);
    Text.Layout.RunSlice.pointSize.getter();
    if ((v168 & (v54 == v199)) != 1)
    {
      v54 = v199;
      CGAffineTransformMakeScale(&v621, v586.n128_f64[0] * v199, -(v586.n128_f64[0] * v199));
      RBShapeGetFontQuantizationLevel();
      v562 = v201;
      v563 = v200;
    }

    v621.b = 0.0;
    v621.c = 0.0;
    *&v621.a = v586.n128_u64[0];
    v621.d = v542;
    *&v621.tx = vmulq_n_f64(v583, v586.n128_f64[0]);
    v55 = COERCE_DOUBLE(RBShapeGetPredictedFontQuantizationError());
    v204 = v567;
    v205 = *(v567 + 8 * v594);
    if (v171 >= *(v205 + 16))
    {
      goto LABEL_448;
    }

    if (v594 >= v564[2])
    {
      goto LABEL_449;
    }

    v566 = v171 + 1;
    v206 = v583.f64[0] + v202 / v586.n128_f64[0];
    v207 = v198 + v203 / v586.n128_f64[0];
    v208 = *(v205 + 16 * v171 + 32) - v618[v594];
    *&v621.a = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(v119);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v55 = COERCE_DOUBLE(specialized Array._checkSubscript(_:wasNativeTypeChecked:)());
    v209 = 0;
    do
    {
      v210 = *(v204 + 8 * v209);
      if (v171 >= *(v210 + 16))
      {
        __break(1u);
LABEL_398:
        __break(1u);
LABEL_399:
        __break(1u);
LABEL_400:
        __break(1u);
LABEL_401:
        __break(1u);
LABEL_402:
        __break(1u);
LABEL_403:
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
        goto LABEL_412;
      }

      v211 = *(v617 + 8 * v209);
      v212 = v618[v209];
      v213 = v210 + 16 * v171;
      v214 = *(v213 + 32);
      v215 = *(v213 + 40);
      v216 = v621.a;
      v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
      if ((LOBYTE(v55) & 1) == 0)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v216 + 16) + 1, 1));
        v216 = v621.a;
      }

      v218 = *(*&v216 + 16);
      v217 = *(*&v216 + 24);
      if (v218 >= v217 >> 1)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v217 > 1), v218 + 1, 1));
        v216 = v621.a;
      }

      ++v209;
      *(*&v216 + 16) = v218 + 1;
      v219 = (*&v216 + 32 + 16 * v218);
      *v219 = v214 - v212 - v208;
      v219[1] = -(v215 - v211);
    }

    while (v119 != v209);
    v583.f64[0] = v216;
    if (v119 == 1)
    {
      break;
    }

    if (v584 != 255)
    {
      v531 = *&v216 + 32;
      v657 = v577;
      v658 = v578;
      v659 = v579;
      v660 = v580;
      v661 = v584;
      v55 = COERCE_DOUBLE(outlined copy of Path.Storage(v577, v578, v579, v580, v584));
      v220 = 0;
      v221 = v594;
      while (v119 != v220)
      {
        if (v221 != v220)
        {
          if (v220 >= *(*&v616 + 16))
          {
            goto LABEL_428;
          }

          v222 = *(v608 + 8 * v220);
          if (v171 >= *(v222 + 16))
          {
            goto LABEL_429;
          }

          v223 = (v222 + v606);
          v224 = v223[64];
          if (v224 == 255 || (v226 = *(v223 + 6), v225 = *(v223 + 7), v228 = *(v223 + 4), v227 = *(v223 + 5), v652 = v228, v653 = v227, v654 = v226, v655 = v225, v656 = v224, outlined copy of Path.Storage(v228, v227, v226, v225, v224), v229 = Path.canMix(with:)(), v230 = v228, v171 = v612, v55 = COERCE_DOUBLE(outlined consume of Path?(v230, v227, v226, v225, v224)), v221 = v594, (v229 & 1) == 0))
          {
            outlined consume of Path?(v577, v578, v579, v580, v584);
            v231 = v581;
            v97 = v599;
            if ((v582 & 8) != 0)
            {
              goto LABEL_219;
            }

            goto LABEL_222;
          }
        }

        if (v119 == ++v220)
        {
          outlined consume of Path?(v577, v578, v579, v580, v584);
          v97 = v599;
          goto LABEL_159;
        }
      }

      goto LABEL_415;
    }

    v236 = 0;
    do
    {
      if (v119 == v236)
      {
        goto LABEL_420;
      }

      if (v594 != v236)
      {
        if (v236 >= *(*&v616 + 16))
        {
          goto LABEL_430;
        }

        v237 = *(v608 + 8 * v236);
        if (v171 >= *(v237 + 16))
        {
          goto LABEL_431;
        }

        v231 = v581;
        if (*(v237 + v606 + 64) != 255)
        {
          if ((v582 & 8) != 0)
          {
            goto LABEL_219;
          }

LABEL_222:

          (*&v602.f64[0])(v529, v556 + v571, v604);
          swift_storeEnumTagMultiPayload();
          v293 = v585;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v293 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v293[2] + 1, 1, v293);
          }

          v234 = v293[2];
          v294 = v293[3];
          v585 = v293;
          v235 = v234 + 1;
          if (v234 >= v294 >> 1)
          {
            v585 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v294 > 1), v234 + 1, 1, v585);
          }

          outlined consume of Path?(v577, v578, v579, v580, v584);
          (*v544)(v591, v604);
          v169 = v529;
          goto LABEL_94;
        }
      }

      ++v236;
    }

    while (v119 != v236);
    outlined copy of Path?(v577, v578, v579, v580, 0xFFu);
    v231 = v581;
    if ((v582 & 8) == 0)
    {
      goto LABEL_222;
    }

LABEL_219:
    Text.Layout.RunSlice.run.getter();
    v290 = Text.Layout.Run.font.getter();
    if (v290)
    {
      v291 = v290;
      v292 = CTFontCopyVariation(v290);

      (*v532)(v231, v533);
      if (v292)
      {

        goto LABEL_222;
      }
    }

    else
    {
      (*v532)(v231, v533);
    }

    *&v621.a = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)(v119);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v295 = v588 + v571;
    v296 = v530;
    v297 = v119;
    v298 = v604;
    v299 = v589;
    do
    {
      v300 = *v296;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      v301 = v607;
      (v613)(v607, v300 + v610 + v609, v97);
      Text.Layout.Cluster.glyphSlices.getter();
      v303 = v302;
      (v595)(v301, v97);
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      (*&v602.f64[0])(v299, v303 + v295, v298);

      v304 = v621.a;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v304 + 16) + 1, 1);
        v304 = v621.a;
      }

      v306 = *(*&v304 + 16);
      v305 = *(*&v304 + 24);
      v307 = v589;
      if (v306 >= v305 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v305 > 1), v306 + 1, 1);
        v307 = v589;
        v304 = v621.a;
      }

      *(*&v304 + 16) = v306 + 1;
      v308 = *&v304 + v588;
      v309 = *&v304 + v588 + v306 * *&v601.f64[0];
      v299 = v307;
      v298 = v604;
      v55 = COERCE_DOUBLE((*v587)(v309, v307, v604));
      v621.a = v304;
      ++v296;
      --v297;
    }

    while (v297);
    if (v594 >= *(*&v304 + 16))
    {
      goto LABEL_468;
    }

    v310 = v308 + *&v601.f64[0] * v594;
    v311 = v515;
    v312 = v604;
    (*&v602.f64[0])(v515, v310, v604);
    Text.Layout.RunSlice.quantizedImageBounds.getter();
    v314 = v313;
    v316 = v315;
    v318 = v317;
    v320 = v319;
    v321 = *v544;
    (*v544)(v311, v312);
    specialized Text.Effect.PathInterpolator.Interpolated.init(position:slices:relativePositions:bounds:displayScale:)(*&v304, *&v583.f64[0], v625, v206, v207, v314, v316, v318, v320, v586.n128_f64[0]);
    v322 = v625[1];
    v323 = v517;
    *v517 = v625[0];
    v323[1] = v322;
    v324 = v625[3];
    v323[2] = v625[2];
    v323[3] = v324;
    swift_storeEnumTagMultiPayload();
    v325 = v585;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v325 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v325[2] + 1, 1, v325);
    }

    v119 = v619;
    v234 = v325[2];
    v326 = v325[3];
    v585 = v325;
    v235 = v234 + 1;
    if (v234 >= v326 >> 1)
    {
      v585 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v326 > 1), v234 + 1, 1, v585);
    }

    outlined consume of Path?(v577, v578, v579, v580, v584);
    (v321)(v591, v604);
    v169 = v517;
LABEL_94:
    v170 = v585;
    v585[2] = v235;
    v55 = COERCE_DOUBLE(outlined init with take of Text.Effect.ResolvedDrawing.Operation(v169, v170 + ((*(v596 + 80) + 32) & ~*(v596 + 80)) + *(v596 + 72) * v234, type metadata accessor for Text.Effect.PathInterpolator.Glyph));
    v168 = 1;
    v160 = v538;
    v167 = v566;
    if (v566 == v538)
    {

      LODWORD(v606) = 0;
      v460 = v585;
LABEL_369:

      v462 = v607;
      v463 = v613;
      (v613)(v607, v600, v97);
      v464 = v516;
      v463(v516, v462, v97);
      v465 = v536;
      *&v464[*(v536 + 20)] = v460;
      Text.Layout.Cluster.xrange.getter();
      v467 = v466;
      v469 = v468;
      (v595)(v462, v97);
      v470 = &v464[*(v465 + 28)];
      *v470 = v467;
      *(v470 + 1) = v469;
      *&v464[*(v465 + 24)] = v554;
      v471 = v561;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v471 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v471[2] + 1, 1, v471);
      }

      v473 = v471[2];
      v472 = v471[3];
      v474 = v473 + 1;
      if (v473 >= v472 >> 1)
      {
        v471 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v472 > 1), v473 + 1, 1, v471);
      }

      v595();
      v98 = v516;
LABEL_30:
      v471[2] = v474;
      v99 = (*(v535 + 80) + 32) & ~*(v535 + 80);
      v561 = v471;
      outlined init with take of Text.Effect.ResolvedDrawing.Operation(v98, v471 + v99 + *(v535 + 72) * v473, type metadata accessor for Text.Effect.PathInterpolator.Cluster);
      v96 = v555;
      if (v555 != v545)
      {
        goto LABEL_31;
      }

      v502 = v605;
      v501 = v524;
LABEL_394:
      v55 = COERCE_DOUBLE();
      if (v594 < *(v502 + 16))
      {

        return;
      }

LABEL_466:
      __break(1u);
LABEL_467:
      __break(1u);
LABEL_468:
      __break(1u);
LABEL_469:
      __break(1u);
      goto LABEL_470;
    }
  }

  if (v584 == 255)
  {

    (*&v602.f64[0])(v523, v556 + v571, v604);
    swift_storeEnumTagMultiPayload();
    v232 = v585;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v232 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v232[2] + 1, 1, v232);
    }

    v234 = v232[2];
    v233 = v232[3];
    v585 = v232;
    v235 = v234 + 1;
    if (v234 >= v233 >> 1)
    {
      v585 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v233 > 1), v234 + 1, 1, v585);
    }

    (*v544)();
    v169 = v523;
    goto LABEL_94;
  }

  v531 = *&v216 + 32;
LABEL_159:
  v238 = v528;
  Text.Layout.RunSlice.run.getter();
  v55 = COERCE_DOUBLE((*v532)(v238, v533));
  if ((v582 & 1) == 0)
  {
    goto LABEL_197;
  }

  if (v171 >= *(v565 + 16))
  {
LABEL_460:
    __break(1u);
LABEL_461:
    __break(1u);
LABEL_462:
    __break(1u);
LABEL_463:
    __break(1u);
LABEL_464:
    __break(1u);
LABEL_465:
    __break(1u);
    goto LABEL_466;
  }

  if (!*(v527 + 16) || (v55 = COERCE_DOUBLE(specialized __RawDictionaryStorage.find<A>(_:)(*(v508 + 8 * v171))), (v239 & 1) == 0))
  {
LABEL_197:
    *&v621.a = MEMORY[0x1E69E7CC0];
    v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v119));
    v268 = 0;
    while (v119 != v268)
    {
      if (v268 >= *(*&v616 + 16))
      {
        goto LABEL_402;
      }

      v269 = *(v608 + 8 * v268);
      if (v171 >= *(v269 + 16))
      {
        goto LABEL_403;
      }

      v270 = (v269 + v606);
      v271 = v270[64];
      if (v271 == 255)
      {
        goto LABEL_481;
      }

      v272 = *(v270 + 4);
      v273 = *(v270 + 5);
      v274 = *(v270 + 6);
      v275 = *(v270 + 7);
      v276 = v621.a;
      outlined copy of Path.Storage(v272, v273, v274, v275, v270[64]);
      v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
      if ((LOBYTE(v55) & 1) == 0)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v276 + 16) + 1, 1));
        v276 = v621.a;
      }

      v278 = v598;
      v280 = *(*&v276 + 16);
      v279 = *(*&v276 + 24);
      if (v280 >= v279 >> 1)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v279 > 1), v280 + 1, 1));
        v278 = v598;
        v276 = v621.a;
      }

      ++v268;
      *(*&v276 + 16) = v280 + 1;
      v281 = *&v276 + 40 * v280;
      *(v281 + 32) = v272;
      *(v281 + 40) = v273;
      *(v281 + 48) = v274;
      *(v281 + 56) = v275;
      *(v281 + 64) = v271;
      v119 = v619;
      v97 = v599;
      v171 = v612;
      if (v619 == v268)
      {
        *&v627 = __PAIR64__(v278, v560);
        *(&v627 + 1) = __PAIR64__(v558, v559);
        v628 = 0uLL;
        *&v629 = v206;
        *(&v629 + 1) = v207;
        *&v630 = v583.f64[0];
        *(&v630 + 1) = v276;
        if (v520 == 6)
        {
          v282 = Text.Effect.PathInterpolator.PathGlyph.split()(v277);
          outlined destroy of Text.Effect.PathInterpolator.PathGlyph(&v627);
          *v521 = v282;
          swift_storeEnumTagMultiPayload();
          v283 = v585;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v283 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v283[2] + 1, 1, v283);
          }

          v234 = v283[2];
          v284 = v283[3];
          v585 = v283;
          v235 = v234 + 1;
          if (v234 >= v284 >> 1)
          {
            v585 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v284 > 1), v234 + 1, 1, v585);
          }

          outlined consume of Path?(v577, v578, v579, v580, v584);
          (*v544)(v591, v604);
          v169 = v521;
        }

        else
        {
          v285 = v628;
          v286 = v522;
          *v522 = v627;
          v286[1] = v285;
          v287 = v630;
          v286[2] = v629;
          v286[3] = v287;
          swift_storeEnumTagMultiPayload();
          v288 = v585;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v288 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v288[2] + 1, 1, v288);
          }

          v234 = v288[2];
          v289 = v288[3];
          v585 = v288;
          v235 = v234 + 1;
          if (v234 >= v289 >> 1)
          {
            v585 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v289 > 1), v234 + 1, 1, v585);
          }

          outlined consume of Path?(v577, v578, v579, v580, v584);
          (*v544)(v591, v604);
          v169 = v522;
        }

        goto LABEL_94;
      }
    }

    goto LABEL_401;
  }

  v240 = *(*(v527 + 56) + 8 * *&v55);
  if ((v240 & 0x8000000000000000) != 0)
  {
    goto LABEL_469;
  }

  if (v240 < *(v518 + 16))
  {
    v510 = *(v507 + 8 * v240);
    if (v520 != 6)
    {
      *&v621.a = MEMORY[0x1E69E7CC0];

      v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v119));
      v327 = 0;
      while (v119 != v327)
      {
        if (v327 >= *(*&v616 + 16))
        {
          goto LABEL_436;
        }

        v328 = *(v608 + 8 * v327);
        if (v171 >= *(v328 + 16))
        {
          goto LABEL_437;
        }

        v329 = (v328 + v606);
        v330 = v329[64];
        if (v330 == 255)
        {
          goto LABEL_488;
        }

        v331 = *(v329 + 6);
        v332 = *(v329 + 7);
        v333 = *(v329 + 5);
        v647 = *(v329 + 4);
        v334 = v647;
        v648 = v333;
        v649 = v331;
        v650 = v332;
        v651 = v330;
        v622 = MEMORY[0x1E69E7CC0];
        v620 = MEMORY[0x1E69E7CC0];
        MEMORY[0x1EEE9AC00](*&v55);
        outlined copy of Path.Storage(v334, v333, v331, v332, v330);
        Path.forEach(_:)();
        outlined consume of Path?(v334, v333, v331, v332, v330);
        v335 = v620;
        v336 = v622;
        v337 = v622[2];
        v338 = v621.a;
        v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
        if ((LOBYTE(v55) & 1) == 0)
        {
          v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v338 + 16) + 1, 1));
          v338 = v621.a;
        }

        v119 = v619;
        v340 = *(*&v338 + 16);
        v339 = *(*&v338 + 24);
        if (v340 >= v339 >> 1)
        {
          v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v339 > 1), v340 + 1, 1));
          v338 = v621.a;
        }

        ++v327;
        *(*&v338 + 16) = v340 + 1;
        v341 = *&v338;
        v342 = *&v338 + 32;
        v343 = (v342 + 24 * v340);
        *v343 = v335;
        v343[1] = v337;
        v343[2] = v336;
        v171 = v612;
        if (v119 == v327)
        {
          v571 = v341;
          if (v594 > v340)
          {
            goto LABEL_473;
          }

          v505 = (v342 + 24 * v594);
          v344 = *(*(v505 + 2) + 16);
          *&v55 = v119 * v344;
          if ((v119 * v344) >> 64 == (v119 * v344) >> 63)
          {
            v55 = COERCE_DOUBLE(_sSa9repeating5countSayxGx_SitcfCSo7CGPointV_Tt1g5(*&v55, 0.0, 0.0));
            v345 = *&v55;
            v346 = 0;
            v347 = v531;
            while (v346 != v119)
            {
              if (v344)
              {
                if (v346 >= *(*&v583.f64[0] + 16))
                {
                  goto LABEL_456;
                }

                if (v346 < *(v571 + 16))
                {
                  v349 = 0;
                  while (1)
                  {
                    v350 = v349 * v119;
                    if ((v349 * v119) >> 64 != (v349 * v119) >> 63)
                    {
                      goto LABEL_407;
                    }

                    v351 = v346 + v350;
                    if (__OFADD__(v346, v350))
                    {
                      goto LABEL_408;
                    }

                    v352 = *(v342 + 24 * v346 + 16);
                    if (v349 >= *(v352 + 16))
                    {
                      goto LABEL_409;
                    }

                    v353 = v347;
                    v354 = *(v347 + 16 * v346);
                    v601 = *(v352 + 16 * v349 + 32);
                    v602 = v354;
                    v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
                    if (LOBYTE(v55))
                    {
                      if ((v351 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_410;
                      }
                    }

                    else
                    {
                      v55 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew()(v345));
                      v345 = *&v55;
                      if ((v351 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_410;
                      }
                    }

                    if (v351 >= *(v345 + 16))
                    {
                      goto LABEL_411;
                    }

                    v347 = v353;
                    ++v349;
                    *(v345 + 16 * v351 + 32) = vaddq_f64(v602, v601);
                    if (v344 == v349)
                    {
                      goto LABEL_251;
                    }
                  }
                }

                goto LABEL_457;
              }

LABEL_251:
              ++v346;
              v348 = v612;
              if (v346 == v119)
              {
                v420 = v505[2];
                v421 = *(*&v420 + 16);
                if (v421)
                {
                  *&v621.a = MEMORY[0x1E69E7CC0];

                  v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v421));
                  v422 = 0;
                  v423 = *(v510 + 16);
                  v568 = *&v420 + 32;
                  v424 = v510 + 32;
                  v569 = v423 - 2;
                  v425 = v616;
                  v602.f64[0] = v420;
                  *&v601.f64[0] = v421;
                  v570 = v423;
                  while (v422 < *(*&v420 + 16))
                  {
                    v426 = 1.0;
                    if (v423)
                    {
                      v427 = 0;
                      v428 = v206 + *(v568 + 16 * v422);
                      v429 = *(v510 + 16);
                      v430 = v423;
                      while (1)
                      {
                        v431 = v430 >> 1;
                        v432 = v427 + (v430 >> 1);
                        if (__OFADD__(v427, v430 >> 1))
                        {
                          goto LABEL_426;
                        }

                        if (v432 >= v429)
                        {
                          goto LABEL_427;
                        }

                        if (*(v424 + 8 * v432) < v428)
                        {
                          v427 = v432 + 1;
                          if (__OFADD__(v432, 1))
                          {
                            goto LABEL_432;
                          }

                          v431 = v430 + ~v431;
                        }

                        v430 = v431;
                        if (v431 <= 0)
                        {
                          if (v427 == v423)
                          {
                            break;
                          }

                          if (!v427)
                          {
                            v433 = 0;
                            v426 = 0.0;
                            goto LABEL_345;
                          }

                          v433 = v427 - 1;
                          if (__OFSUB__(v427, 1))
                          {
                            goto LABEL_477;
                          }

                          if (v433 < v429)
                          {
                            if (__OFADD__(v433, 1))
                            {
                              goto LABEL_479;
                            }

                            if (v427 < v429)
                            {
                              v426 = (v428 - *(v424 + 8 * v433)) / (*(v424 + 8 * v427) - *(v424 + 8 * v433));
                              goto LABEL_345;
                            }

                            goto LABEL_480;
                          }

                          goto LABEL_478;
                        }
                      }
                    }

                    v433 = v569;
LABEL_345:
                    v434 = v621.a;
                    v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
                    if ((LOBYTE(v55) & 1) == 0)
                    {
                      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v434 + 16) + 1, 1));
                      v425 = v616;
                      v434 = v621.a;
                    }

                    v436 = *(*&v434 + 16);
                    v435 = *(*&v434 + 24);
                    if (v436 >= v435 >> 1)
                    {
                      v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v435 > 1), v436 + 1, 1));
                      v425 = v616;
                      v434 = v621.a;
                    }

                    ++v422;
                    *(*&v434 + 16) = v436 + 1;
                    v437 = *&v434 + 16 * v436;
                    *(v437 + 32) = v433;
                    *(v437 + 40) = v426;
                    v420 = v602.f64[0];
                    v423 = v570;
                    if (v422 == *&v601.f64[0])
                    {
                      v55 = COERCE_DOUBLE();
                      v348 = v612;
                      goto LABEL_353;
                    }
                  }

                  goto LABEL_461;
                }

                v434 = MEMORY[0x1E69E7CC0];
                v425 = v616;
LABEL_353:
                if (!*(*&v425 + 16))
                {
                  goto LABEL_486;
                }

                if (v348 >= *(*v608 + 16))
                {
                  goto LABEL_487;
                }

                v438 = (*v608 + v606);
                v439 = v438[64];
                if (v439 != 255)
                {
                  v441 = *(v438 + 6);
                  v440 = *(v438 + 7);
                  v442 = *(v438 + 4);
                  v443 = *(v438 + 5);
                  v642 = v442;
                  v643 = v443;
                  v644 = v441;
                  v645 = v440;
                  v646 = v439;
                  outlined copy of Path.Storage(v442, v443, v441, v440, v439);

                  Path.boundingRect.getter();
                  v445 = v444;
                  v447 = v446;
                  v449 = v448;
                  v451 = v450;
                  outlined consume of Path?(v442, v443, v441, v440, v439);
                  v452 = *v505;
                  v453 = *(v505 + 1);

                  v454 = v511;
                  v455 = v598;
                  *v511 = v560;
                  v454[1] = v455;
                  v456 = v558;
                  v454[2] = v559;
                  v454[3] = v456;
                  *(v454 + 2) = 0;
                  *(v454 + 3) = 0;
                  *(v454 + 4) = v206;
                  *(v454 + 5) = v207;
                  *(v454 + 6) = v452;
                  *(v454 + 7) = v453;
                  *(v454 + 8) = v345;
                  *(v454 + 9) = v445;
                  *(v454 + 10) = v447;
                  *(v454 + 11) = v449;
                  *(v454 + 12) = v451;
                  *(v454 + 13) = v434;
                  swift_storeEnumTagMultiPayload();
                  v457 = v585;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v457 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v457[2] + 1, 1, v457);
                  }

                  v97 = v599;
                  v234 = v457[2];
                  v458 = v457[3];
                  v585 = v457;
                  v235 = v234 + 1;
                  if (v234 >= v458 >> 1)
                  {
                    v585 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v458 > 1), v234 + 1, 1, v585);
                  }

                  outlined consume of Path?(v577, v578, v579, v580, v584);
                  (*v544)(v591, v604);
                  v169 = v511;
                  goto LABEL_94;
                }

                goto LABEL_490;
              }
            }

            goto LABEL_454;
          }

          goto LABEL_474;
        }
      }

      goto LABEL_435;
    }

    *&v621.a = MEMORY[0x1E69E7CC0];

    v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v119));
    v241 = 0.0;
    v242 = v616;
    while (*&v241 != v119)
    {
      if (*&v241 >= *(*&v242 + 16))
      {
        goto LABEL_439;
      }

      v243 = *(v608 + 8 * *&v241);
      if (v171 >= *(v243 + 16))
      {
        goto LABEL_440;
      }

      v602.f64[0] = v241;
      v244 = (v243 + v606);
      v245 = v244[64];
      if (v245 == 255)
      {
        goto LABEL_489;
      }

      v246 = v97;
      v247 = *(v244 + 5);
      v250 = *(v244 + 6);
      v249 = *(v244 + 7);
      v637 = *(v244 + 4);
      v248 = v637;
      v638 = v247;
      v639 = v250;
      v640 = v249;
      v641 = v245;
      (*v549)(v575, v550, v576);
      v568 = v248;
      v569 = v247;
      v570 = v250;
      v571 = v249;
      LODWORD(v601.f64[0]) = v245;
      outlined copy of Path.Storage(v248, v247, v250, v249, v245);
      v251 = Path.cgPath.getter();
      v252 = CGPathRef.componentsSeparated(using:)();

      if (v252 >> 62)
      {
        if (v252 < 0)
        {
          v267 = v252;
        }

        else
        {
          v267 = v252 & 0xFFFFFFFFFFFFFF8;
        }

        v253 = MEMORY[0x19A8BDCD0](v267);
      }

      else
      {
        v253 = *((v252 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v97 = v246;
      if (v253)
      {
        v622 = MEMORY[0x1E69E7CC0];
        v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v253));
        if (v253 < 0)
        {
          goto LABEL_452;
        }

        v254 = 0;
        do
        {
          if ((v252 & 0xC000000000000001) != 0)
          {
            MEMORY[0x19A8BDB80](v254, v252);
          }

          else
          {
            v255 = *(v252 + 8 * v254 + 32);
          }

          Path.init(_:)();
          v256 = v622;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v256[2] + 1, 1);
            v256 = v622;
          }

          v258 = v256[2];
          v257 = v256[3];
          if (v258 >= v257 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v257 > 1), v258 + 1, 1);
            v256 = v622;
          }

          ++v254;
          v256[2] = v258 + 1;
          v259 = &v256[5 * v258];
          v260 = v625[4];
          v261 = v625[5];
          v259[64] = v626;
          *(v259 + 2) = v260;
          *(v259 + 3) = v261;
        }

        while (v253 != v254);

        outlined consume of Path?(v568, v569, v570, v571, LOBYTE(v601.f64[0]));
        (*v548)(v575, v576);
        v97 = v599;
        v171 = v612;
      }

      else
      {

        outlined consume of Path?(v568, v569, v570, v571, LOBYTE(v601.f64[0]));
        (*v548)(v575, v576);
        v256 = MEMORY[0x1E69E7CC0];
      }

      v262 = v621.a;
      v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
      if ((LOBYTE(v55) & 1) == 0)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v262 + 16) + 1, 1));
        v262 = v621.a;
      }

      v242 = v616;
      v263 = v602.f64[0];
      v265 = *(*&v262 + 16);
      v264 = *(*&v262 + 24);
      if (v265 >= v264 >> 1)
      {
        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v264 > 1), v265 + 1, 1));
        v263 = v602.f64[0];
        v242 = v616;
        v262 = v621.a;
      }

      *&v241 = *&v263 + 1;
      *(*&v262 + 16) = v265 + 1;
      v266 = *&v262 + 32;
      *(*&v262 + 32 + 8 * v265) = v256;
      if (*&v241 == v119)
      {
        v355 = *(*&v262 + 32);
        v356 = v594;
        if (v594 >= *(v355 + 16))
        {
          goto LABEL_475;
        }

        v357 = v355 + v506;
        v358 = *(v357 + 32);
        v359 = *(v357 + 48);
        v636 = *(v357 + 64);
        v635[0] = v358;
        v635[1] = v359;
        v360 = *(v357 + 32);
        v361 = *(v357 + 48);
        v669 = *(v357 + 64);
        v668[0] = v360;
        v668[1] = v361;
        outlined init with copy of Path.Storage(v668, &v621);
        Path.boundingRect.getter();
        v363 = v362;
        v365 = v364;
        v367 = v366;
        v369 = v368;
        v55 = COERCE_DOUBLE(outlined destroy of Path(v635));
        if (v356 >= *(*&v262 + 16))
        {
          goto LABEL_476;
        }

        v370 = v585;
        v505 = *(*(v266 + 8 * v356) + 16);
        if (!v505)
        {

          v372 = MEMORY[0x1E69E7CC0];
LABEL_361:

          *v512 = v372;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v370 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v370[2] + 1, 1, v370);
          }

          v234 = v370[2];
          v459 = v370[3];
          v585 = v370;
          v235 = v234 + 1;
          if (v234 >= v459 >> 1)
          {
            v585 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v459 > 1), v234 + 1, 1, v585);
          }

          outlined consume of Path?(v577, v578, v579, v580, v584);
          (*v544)(v591, v604);
          v169 = v512;
          goto LABEL_94;
        }

        v371 = 0;
        v504 = v510 + 32;
        v372 = MEMORY[0x1E69E7CC0];
LABEL_271:
        v373 = *(v266 + 8 * v594);
        if (v371 < *(v373 + 16))
        {
          v571 = v266;
          v606 = 40 * v371;
          v374 = v373 + 40 * v371;
          v375 = *(v374 + 32);
          v376 = *(v374 + 48);
          v634 = *(v374 + 64);
          v633[0] = v375;
          v633[1] = v376;
          v622 = MEMORY[0x1E69E7CC0];
          v620 = MEMORY[0x1E69E7CC0];
          MEMORY[0x1EEE9AC00](*&v55);
          v378 = v377[8];
          v377[40] = v377[7];
          v377[41] = v378;
          v670[32] = v634;
          outlined init with copy of Path.Storage(v670, &v621);
          Path.forEach(_:)();
          outlined destroy of Path(v633);
          *&v601.f64[0] = v622;
          v379 = v622[2];
          *&v55 = v119 * v379;
          if ((v119 * v379) >> 64 != (v119 * v379) >> 63)
          {
            goto LABEL_463;
          }

          v612 = v622[2];
          v570 = v372;
          v380 = v371;
          v569 = v371 + 1;
          v568 = v620;
          v55 = COERCE_DOUBLE(_sSa9repeating5countSayxGx_SitcfCSo7CGPointV_Tt1g5(*&v55, 0.0, 0.0));
          v602.f64[0] = v55;
          v381 = 0;
LABEL_274:
          v382 = v381;
          v383 = v381;
          while (v383 < v119)
          {
            v381 = v383 + 1;
            if (__OFADD__(v383, 1))
            {
              goto LABEL_417;
            }

            if (v383 >= *(*&v262 + 16))
            {
              goto LABEL_418;
            }

            v384 = *(*&v262 + 8 * v383 + 32);
            if (v380 >= *(v384 + 16))
            {
              goto LABEL_419;
            }

            v385 = (v384 + v606);
            v386 = *(v385 + 2);
            v387 = *(v385 + 3);
            v632 = v385[64];
            v631[0] = v386;
            v631[1] = v387;
            v622 = MEMORY[0x1E69E7CC0];
            v620 = MEMORY[0x1E69E7CC0];
            MEMORY[0x1EEE9AC00](*&v55);
            v389 = v388[5];
            v388[43] = v388[4];
            v388[44] = v389;
            v671[32] = v632;
            outlined init with copy of Path.Storage(v671, &v621);
            Path.forEach(_:)();
            outlined destroy of Path(v631);
            v390 = v622;
            v55 = COERCE_DOUBLE();
            if (v612)
            {
              v119 = v619;
              if (v382 >= *(*&v583.f64[0] + 16))
              {
                goto LABEL_464;
              }

              if (v612 <= *&v390[1].f64[0])
              {
                v391 = v602.f64[0];
                v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
                if ((LOBYTE(v55) & 1) == 0)
                {
                  v55 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew()(*&v391));
                  v391 = v55;
                }

                v392 = 0;
                v393 = v531;
                v394 = v612;
                while (1)
                {
                  v395 = v392 * v119;
                  if ((v392 * v119) >> 64 != (v392 * v119) >> 63)
                  {
                    goto LABEL_421;
                  }

                  v396 = __OFADD__(v382, v395);
                  v397 = v382 + v395;
                  if (v396)
                  {
                    goto LABEL_422;
                  }

                  if ((v397 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_423;
                  }

                  if (v397 >= *(*&v391 + 16))
                  {
                    goto LABEL_424;
                  }

                  *(*&v391 + 32 + 16 * v397) = vaddq_f64(*(v393 + 16 * v382), v390[v392++ + 2]);
                  if (v394 == v392)
                  {
                    v602.f64[0] = v391;
                    v55 = COERCE_DOUBLE();
                    if (v381 != v119)
                    {
                      goto LABEL_274;
                    }

                    *&v621.a = MEMORY[0x1E69E7CC0];
                    v404 = v612;
                    v55 = COERCE_DOUBLE(specialized ContiguousArray.reserveCapacity(_:)(v612));
                    v405 = v404;
                    v406 = 0;
                    v407 = *(v510 + 16);
                    v408 = *&v601.f64[0] + 32;
                    v606 = v407 - 2;
                    while (v406 != v405)
                    {
                      if (v406 >= *(*&v601.f64[0] + 16))
                      {
                        goto LABEL_472;
                      }

                      v409 = 1.0;
                      if (v407)
                      {
                        v410 = 0;
                        v411 = v206 + *(v408 + 16 * v406);
                        v412 = *(v510 + 16);
                        v413 = v407;
                        while (1)
                        {
                          v414 = v413 >> 1;
                          v415 = v410 + (v413 >> 1);
                          if (__OFADD__(v410, v413 >> 1))
                          {
                            goto LABEL_433;
                          }

                          if (v415 >= v412)
                          {
                            goto LABEL_434;
                          }

                          if (*(v504 + 8 * v415) < v411)
                          {
                            v410 = v415 + 1;
                            if (__OFADD__(v415, 1))
                            {
                              goto LABEL_453;
                            }

                            v414 = v413 + ~v414;
                          }

                          v413 = v414;
                          if (v414 <= 0)
                          {
                            if (v410 == v407)
                            {
                              break;
                            }

                            if (!v410)
                            {
                              v416 = 0;
                              v409 = 0.0;
                              goto LABEL_319;
                            }

                            v416 = v410 - 1;
                            if (__OFSUB__(v410, 1))
                            {
                              goto LABEL_482;
                            }

                            if (v416 < v412)
                            {
                              if (__OFADD__(v416, 1))
                              {
                                goto LABEL_484;
                              }

                              if (v410 < v412)
                              {
                                v409 = (v411 - *(v504 + 8 * v416)) / (*(v504 + 8 * v410) - *(v504 + 8 * v416));
                                goto LABEL_319;
                              }

                              goto LABEL_485;
                            }

                            goto LABEL_483;
                          }
                        }
                      }

                      v416 = v606;
LABEL_319:
                      v398 = v621.a;
                      v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
                      if ((LOBYTE(v55) & 1) == 0)
                      {
                        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v398 + 16) + 1, 1));
                        v398 = v621.a;
                      }

                      v405 = v612;
                      v418 = *(*&v398 + 16);
                      v417 = *(*&v398 + 24);
                      if (v418 >= v417 >> 1)
                      {
                        v55 = COERCE_DOUBLE(specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v417 > 1), v418 + 1, 1));
                        v405 = v612;
                        v398 = v621.a;
                      }

                      ++v406;
                      *(*&v398 + 16) = v418 + 1;
                      v419 = *&v398 + 16 * v418;
                      *(v419 + 32) = v416;
                      *(v419 + 40) = v409;
                      if (v406 == v405)
                      {

                        goto LABEL_294;
                      }
                    }

                    goto LABEL_471;
                  }
                }
              }

              goto LABEL_465;
            }

            v55 = COERCE_DOUBLE();
            ++v383;
            v119 = v619;
            if (v381 == v619)
            {

              v398 = MEMORY[0x1E69E7CC0];
LABEL_294:
              v372 = v570;
              v55 = COERCE_DOUBLE(swift_isUniquelyReferenced_nonNull_native());
              v97 = v599;
              if ((LOBYTE(v55) & 1) == 0)
              {
                v55 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v372 + 16) + 1, 1, v372));
                v372 = *&v55;
              }

              v400 = *(v372 + 16);
              v399 = *(v372 + 24);
              v401 = v598;
              v402 = v612;
              if (v400 >= v399 >> 1)
              {
                v55 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v399 > 1), v400 + 1, 1, v372));
                v402 = v612;
                v401 = v598;
                v372 = *&v55;
              }

              *(v372 + 16) = v400 + 1;
              v403 = v372 + 112 * v400;
              *(v403 + 32) = v560;
              *(v403 + 36) = v401;
              *(v403 + 40) = v559;
              *(v403 + 44) = v558;
              *(v403 + 48) = 0;
              *(v403 + 56) = 0;
              *(v403 + 64) = v206;
              *(v403 + 72) = v207;
              *(v403 + 80) = v568;
              *(v403 + 88) = v402;
              *(v403 + 96) = v602.f64[0];
              *(v403 + 104) = v363;
              *(v403 + 112) = v365;
              *(v403 + 120) = v367;
              *(v403 + 128) = v369;
              v371 = v569;
              *(v403 + 136) = v398;
              v370 = v585;
              v266 = v571;
              if (v371 == v505)
              {

                goto LABEL_361;
              }

              goto LABEL_271;
            }
          }

          goto LABEL_416;
        }

        goto LABEL_462;
      }
    }

LABEL_438:
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    __break(1u);
    goto LABEL_442;
  }

LABEL_470:
  __break(1u);
LABEL_471:
  __break(1u);
LABEL_472:
  __break(1u);
LABEL_473:
  __break(1u);
LABEL_474:
  __break(1u);
LABEL_475:
  __break(1u);
LABEL_476:
  __break(1u);
LABEL_477:
  __break(1u);
LABEL_478:
  __break(1u);
LABEL_479:
  __break(1u);
LABEL_480:
  __break(1u);
LABEL_481:
  __break(1u);
LABEL_482:
  __break(1u);
LABEL_483:
  __break(1u);
LABEL_484:
  __break(1u);
LABEL_485:
  __break(1u);
LABEL_486:
  __break(1u);
LABEL_487:
  __break(1u);
LABEL_488:
  __break(1u);
LABEL_489:
  __break(1u);
LABEL_490:
  __break(1u);

  __break(1u);
}

void Text.Layout.Cluster.paths.getter()
{
  v25 = type metadata accessor for Text.Layout.RunSlice();
  v1 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Text.Layout.Cluster();
  (*(*(v8 - 8) + 16))(v7, v0, v8);
  v9 = *(v5 + 44);
  lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v7[v9] == v26[0])
  {
LABEL_2:
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v7, type metadata accessor for IndexingIterator<Text.Layout.Cluster>);
    return;
  }

  v24 = (v1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v23 = (v1 + 8);
  while (1)
  {
    v11 = dispatch thunk of Collection.subscript.read();
    v12 = v25;
    (*v24)(v3);
    v11(v26, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v13 = Text.Layout.RunSlice.paths.getter();
    (*v23)(v3, v12);
    v14 = *(v13 + 16);
    v15 = v10[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v10[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v10);
      if (*(v13 + 16))
      {
LABEL_15:
        if ((v10[3] >> 1) - v10[2] < v14)
        {
          goto LABEL_21;
        }

        _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(0, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80], MEMORY[0x1E69E6720]);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v19 = v10[2];
          v20 = __OFADD__(v19, v14);
          v21 = v19 + v14;
          if (v20)
          {
            goto LABEL_22;
          }

          v10[2] = v21;
        }

        goto LABEL_5;
      }
    }

    if (v14)
    {
      goto LABEL_20;
    }

LABEL_5:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v7[v9] == v26[0])
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void Text.Layout.Cluster.glyphSlices.getter()
{
  v1 = type metadata accessor for Text.Layout.RunSlice();
  v44 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v36 - v8;
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Text.Layout.Cluster();
  (*(*(v13 - 8) + 16))(v12, v0, v13);
  v14 = *(v10 + 44);
  v15 = lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v16 = MEMORY[0x1E69E7CC0];
  if (*&v12[v14] == v49[0])
  {
LABEL_2:
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v12, type metadata accessor for IndexingIterator<Text.Layout.Cluster>);
  }

  else
  {
    v46 = (v44 + 32);
    v47 = (v44 + 16);
    v36 = v12;
    v37 = (v44 + 8);
    v39 = v13;
    v40 = v6;
    v38 = v14;
    v41 = v15;
    while (1)
    {
      v43 = v16;
      v18 = dispatch thunk of Collection.subscript.read();
      v19 = v42;
      v45 = *v47;
      v45(v42);
      v18(v49, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v20 = *v46;
      (*v46)(v6, v19, v1);
      lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060], MEMORY[0x1E6981070]);
      v21 = dispatch thunk of Collection.count.getter();
      if (v21)
      {
        v22 = v21;
        v48 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
        v23 = v48;
        dispatch thunk of Collection.startIndex.getter();
        if (v22 < 0)
        {
          goto LABEL_28;
        }

        do
        {
          v24 = dispatch thunk of Collection.subscript.read();
          v45(v3);
          v24(v49, 0);
          v48 = v23;
          v25 = v6;
          v27 = *(v23 + 16);
          v26 = *(v23 + 24);
          if (v27 >= v26 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
            v23 = v48;
          }

          *(v23 + 16) = v27 + 1;
          v20((v23 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v27), v3, v1);
          dispatch thunk of Collection.formIndex(after:)();
          --v22;
          v6 = v25;
        }

        while (v22);
        v12 = v36;
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
      }

      v28 = *(v23 + 16);
      v16 = v43;
      v29 = v43[2];
      v30 = v29 + v28;
      if (__OFADD__(v29, v28))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v30 > v16[3] >> 1)
      {
        if (v29 <= v30)
        {
          v32 = v29 + v28;
        }

        else
        {
          v32 = v29;
        }

        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v32, 1, v16);
      }

      v6 = v40;
      if (*(v23 + 16))
      {
        if ((v16[3] >> 1) - v16[2] < v28)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        v17 = v38;
        if (v28)
        {
          v33 = v16[2];
          v34 = __OFADD__(v33, v28);
          v35 = v33 + v28;
          if (v34)
          {
            goto LABEL_30;
          }

          v16[2] = v35;
        }
      }

      else
      {

        v17 = v38;
        if (v28)
        {
          goto LABEL_27;
        }
      }

      (*v37)(v6, v1);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v12[v17] == v49[0])
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

void Text.Layout.Cluster.positions.getter()
{
  v26 = type metadata accessor for Text.Layout.RunSlice();
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<Text.Layout.Cluster>(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Text.Layout.Cluster();
  (*(*(v8 - 8) + 16))(v7, v0, v8);
  v9 = *(v5 + 44);
  lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.Cluster and conformance Text.Layout.Cluster, MEMORY[0x1E6981078], MEMORY[0x1E6981088]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v7[v9] == v27[0])
  {
LABEL_2:
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v7, type metadata accessor for IndexingIterator<Text.Layout.Cluster>);
    return;
  }

  v24 = (v1 + 8);
  v25 = (v1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = dispatch thunk of Collection.subscript.read();
    v12 = v26;
    (*v25)(v3);
    v11(v27, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v13 = Text.Layout.RunSlice.positions.getter();
    (*v24)(v3, v12);
    v14 = *(v13 + 16);
    v15 = *(v10 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= *(v10 + 3) >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v10);
      if (*(v13 + 16))
      {
LABEL_15:
        v19 = *(v10 + 2);
        if ((*(v10 + 3) >> 1) - v19 < v14)
        {
          goto LABEL_21;
        }

        memcpy(&v10[16 * v19 + 32], (v13 + 32), 16 * v14);

        if (v14)
        {
          v20 = *(v10 + 2);
          v21 = __OFADD__(v20, v14);
          v22 = v20 + v14;
          if (v21)
          {
            goto LABEL_22;
          }

          *(v10 + 2) = v22;
        }

        goto LABEL_5;
      }
    }

    if (v14)
    {
      goto LABEL_20;
    }

LABEL_5:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v7[v9] == v27[0])
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t Text.Effect.PathInterpolator.PathGlyph.split()(__n128 a1)
{
  v2 = type metadata accessor for CGPathFillRule();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 56);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v31 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v31)
    {
      goto LABEL_24;
    }

LABEL_27:

    _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.PathInterpolator.PathGlyph>, &type metadata for Text.Effect.PathInterpolator.PathGlyph, MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    v38 = *v1;
    v39 = *(v1 + 16);
    *(v37 + 16) = xmmword_195CC8D00;
    *(v37 + 32) = v38;
    v40 = *(v1 + 32);
    v41 = *(v1 + 48);
    *(v37 + 48) = v39;
    *(v37 + 64) = v40;
    *(v37 + 80) = v41;
    outlined init with copy of Text.Effect.PathInterpolator.PathGlyph(v1, &v82);
    return v37;
  }

  v67 = v1;
  v78 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = 0;
  v9 = v78;
  v75 = v6 + 32;
  LODWORD(v74) = *MEMORY[0x1E695EEB8];
  v11 = *(v3 + 104);
  v10 = v3 + 104;
  v72 = v2;
  v73 = v11;
  v68 = (v10 - 96);
  v69 = v7;
  v70 = v5;
  v71 = v10;
  do
  {
    v76 = v9;
    v77 = v8;
    v12 = (v75 + 40 * v8);
    v13 = *v12;
    v14 = v12[1];
    v93 = *(v12 + 32);
    v91 = v13;
    v92 = v14;
    (v73)(v5, v74, v2);
    v94[0] = v91;
    v94[1] = v92;
    v95 = v93;
    outlined init with copy of Path.Storage(v94, &v82);
    v15 = Path.cgPath.getter();
    v16 = CGPathRef.componentsSeparated(using:)();

    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v27 = v16;
      }

      else
      {
        v27 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v17 = MEMORY[0x19A8BDCD0](v27);
      if (!v17)
      {
LABEL_18:

        outlined destroy of Path(&v91);
        v5 = v70;
        v2 = v72;
        (*v68)(v70, v72);
        v20 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    *&v82 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      goto LABEL_45;
    }

    v19 = 0;
    v20 = v82;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A8BDB80](v19, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v19 + 32);
      }

      Path.init(_:)();
      *&v82 = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v20 = v82;
      }

      ++v19;
      *(v20 + 16) = v23 + 1;
      v24 = v20 + 40 * v23;
      v25 = v85;
      v26 = v86;
      *(v24 + 64) = v87;
      *(v24 + 32) = v25;
      *(v24 + 48) = v26;
    }

    while (v17 != v19);
    v5 = v70;
    v2 = v72;
    (*v68)(v70, v72);
    outlined destroy of Path(&v91);

LABEL_19:
    v9 = v76;
    v28 = v77;
    v78 = v76;
    v30 = *(v76 + 16);
    v29 = *(v76 + 24);
    v31 = v30 + 1;
    v32 = v69;
    if (v30 >= v29 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      v9 = v78;
    }

    v8 = v28 + 1;
    *(v9 + 16) = v31;
    *(v9 + 8 * v30 + 32) = v20;
  }

  while (v8 != v32);
  v1 = v67;
LABEL_24:
  v33 = *(v9 + 32);
  v71 = v9 + 32;
  v34 = *(v33 + 16);
  v35 = 32;
  while (v31)
  {
    v36 = *(*(v9 + v35) + 16);
    v35 += 8;
    --v31;
    if (v36 != v34)
    {
      goto LABEL_27;
    }
  }

  if (!v34)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v81 = MEMORY[0x1E69E7CC0];
  v76 = v9;
  v72 = v34;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
  v42 = 0;
  v37 = v81;
  v73 = *(v76 + 16);
  v43 = *v1;
  v89 = *(v1 + 16);
  v90 = v43;
  v88 = *(v1 + 32);
  v44 = *(v1 + 48);
  v70 = v44;
  while (1)
  {
    v45 = v73;
    v75 = v42;
    if (v73)
    {
      break;
    }

    v60 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v79 = v89;
    v80 = v88;
    v82 = v90;
    v83 = v89;
    v84 = v88;
    v81 = v37;
    v62 = *(v37 + 16);
    v61 = *(v37 + 24);

    if (v62 >= v61 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
      v37 = v81;
    }

    v42 = v75 + 1;
    *(v37 + 16) = v62 + 1;
    v63 = v37 + (v62 << 6);
    v64 = v82;
    v65 = v84;
    *(v63 + 48) = v83;
    *(v63 + 64) = v65;
    *(v63 + 32) = v64;
    *(v63 + 80) = v44;
    *(v63 + 88) = v60;
    if (v42 == v72)
    {

      return v37;
    }
  }

  v74 = v37;
  *&v82 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
  v46 = v75;
  v47 = v82;
  v77 = 40 * v75;
  v48 = v71;
  while (v46 < *(*v48 + 16))
  {
    v49 = *v48 + v77;
    v50 = *(v49 + 32);
    v51 = *(v49 + 40);
    v53 = *(v49 + 48);
    v52 = *(v49 + 56);
    v54 = *(v49 + 64);
    v55 = v47;
    result = outlined copy of Path.Storage(v50, v51, v53, v52, v54);
    v47 = v55;
    *&v82 = v55;
    v56 = *(v55 + 16);
    v57 = *(v47 + 24);
    v58 = v56 + 1;
    if (v56 >= v57 >> 1)
    {
      v69 = v56 + 1;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v56 + 1, 1);
      v58 = v69;
      v46 = v75;
      v47 = v82;
    }

    *(v47 + 16) = v58;
    v59 = v47 + 40 * v56;
    *(v59 + 32) = v50;
    *(v59 + 40) = v51;
    *(v59 + 48) = v53;
    *(v59 + 56) = v52;
    *(v59 + 64) = v54;
    v48 += 8;
    if (!--v45)
    {
      v60 = v47;
      v37 = v74;
      v44 = v70;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

char *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySnySiGSay7SwiftUI4TextV0H16AnimationSupportE6EffectO9StopIndexVGG_So7CGPointVs5NeverOTg505_sSi7f3UI4h5V0C16ij2E6k2O9lm4VSo7n17VIgyyd_Si_AHtAJs5O11OIegnrzr_TRSiApTIgyyd_Tf1cn_nTf4ng_n(char *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, double))
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v7 = result;
  v31 = *(a3 + 16);
  if (v31 >= v4)
  {
    v8 = a2 - result;
  }

  else
  {
    v8 = *(a3 + 16);
  }

  v37 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if (v4 < 0)
  {
    goto LABEL_41;
  }

  v30 = a3;
  v34 = v8;
  v35 = v7;
  if (v8)
  {
    if (a2 < v7)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v9 = (a3 + 40);
    v10 = v31;
    v11 = v8;
    v12 = v7;
    while (a2 != v12)
    {
      if (v12 >= a2)
      {
        goto LABEL_34;
      }

      if (!v10)
      {
        goto LABEL_35;
      }

      result = a4(v12, *(v9 - 1), *v9);
      v16 = *(v37 + 16);
      v15 = *(v37 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = v13;
        v19 = v14;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v14 = v19;
        v13 = v18;
      }

      *(v37 + 16) = v16 + 1;
      v17 = v37 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v9 += 2;
      --v10;
      ++v12;
      if (!--v11)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = v7;
LABEL_17:
  if (v12 == a2)
  {
    return v37;
  }

  if (a2 >= v35)
  {
    v20 = 0;
    v32 = v12 - a2;
    if (v12 <= a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = v12;
    }

    v33 = v21 - v12;
    v22 = (v30 + 16 * v34 + 40);
    while (v12 >= v35)
    {
      if (v33 == v20)
      {
        goto LABEL_37;
      }

      if (v31 - v34 == v20)
      {
        return v37;
      }

      if (v34 + v20 >= v31)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v34 + v20, 1))
      {
        goto LABEL_39;
      }

      result = a4(v12 + v20, *(v22 - 1), *v22);
      v26 = *(v37 + 16);
      v25 = *(v37 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = v23;
        v29 = v24;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v24 = v29;
        v23 = v28;
      }

      *(v37 + 16) = v26 + 1;
      v27 = v37 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      ++v20;
      v22 += 2;
      if (!(v32 + v20))
      {
        return v37;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_43:
  __break(1u);
  return result;
}

void specialized Text.Effect.PathInterpolator.Interpolated.init(position:slices:relativePositions:bounds:displayScale:)(unint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>)
{
  v48 = a9;
  v46 = a2;
  v47 = a3;
  v17 = type metadata accessor for EnvironmentValues();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = type metadata accessor for Text.Layout.RunSlice();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (v22)
  {
    v54 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v24 = *(v19 + 16);
    v23 = v19 + 16;
    v25 = *(v23 + 64);
    v49 = v22;
    v50 = a1;
    v26 = a1 + ((v25 + 32) & ~v25);
    v27 = (v23 - 8);
    v51 = *(v23 + 56);
    v52 = v24;
    v28 = v22;
    do
    {
      v29 = v23;
      v52(v21, v26, v18);
      v30 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
      [v30 setDeviceScale_];
      if (!*(Text.Layout.RunSlice.positions.getter() + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v31 = v30;
      EnvironmentValues.init()();
      v53 = GraphicsContext.init(displayList:environment:)();
      GraphicsContext.translateBy(x:y:)();
      GraphicsContext.draw(_:options:)();
      [v31 moveContents];

      (*v27)(v21, v18);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v26 += v51;
      --v28;
      v23 = v29;
    }

    while (v28);

    v32 = v54;
    v33 = v49;
    v34 = v49 - 1;
    if (v49 == 1)
    {

      v42 = MEMORY[0x1E69E7CC0];
LABEL_17:
      v43 = v47;
      *v47 = v42;
      *(v43 + 1) = v46;
      v43[2] = a4;
      v43[3] = a5;
      v43[4] = a6;
      v43[5] = a7;
      v44 = v48;
      v43[6] = a8;
      v43[7] = v44;
      return;
    }

    v54 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v32 & 0xC000000000000001) != 0 || (v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10), v33 <= v35) && v35 >= 2 && (v33 - 2) < v35)
    {
      v36 = objc_opt_self();
      v37 = 0;
      do
      {
        v40 = v37 + 1;
        if ((v32 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x19A8BDB80]();
          v39 = MEMORY[0x19A8BDB80](v40, v32);
        }

        else
        {
          v41 = v32 + 8 * v37;
          v38 = *(v41 + 32);
          v39 = *(v41 + 40);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        [v36 newInterpolatorWithFrom:v38 to:v39 options:0];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v37 = v40;
      }

      while (v34 != v40);

      v42 = v54;
      goto LABEL_17;
    }

LABEL_19:
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(double *a1)
{
  v1 = a1;
  v2 = *(a1 + 2);
  if (v2 == 2)
  {
    if (a1 == &outlined read-only object #1 of Text.Effect.PathInterpolator.MapKeys.init(_:) || *&qword_1F0A2BCC0 == a1[4] && *&qword_1F0A2BCC8 == a1[5])
    {

      return 1;
    }
  }

  else if (v2 == 1 && (a1 == &outlined read-only object #0 of Text.Effect.PathInterpolator.MapKeys.init(_:) || a1[4] == 0.0))
  {

    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(&outlined read-only object #2 of Text.Effect.PathInterpolator.MapKeys.init(_:), a1))
  {

    return 2;
  }

  return v1;
}

void specialized Text.Effect.PathInterpolator.PathGlyph.resolve(cluster:state:mapKeys:in:)(double *a1, unint64_t a2, uint64_t *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Text.Effect.PathInterpolator.PathGlyph.path(state:mapKeys:)(a1, a2, v83);
  v10 = v84;
  if (v84 != 255)
  {
    v11 = v83[0];
    v12 = v83[1];
    v13 = v83[2];
    v14 = v83[3];
    v15 = *a3;
    v16 = a1[4];
    v17 = a1[5];
    CGAffineTransformMakeTranslation(&t1, v16, v17);
    CGAffineTransformScale(&t2, &t1, a1[6], a1[7]);
    tx = t2.tx;
    ty = t2.ty;
    v79 = *&t2.a;
    v78 = *&t2.c;
    v20 = a1[3];

    v21 = __sincos_stret(v20);
    t1.a = v21.__cosval;
    t1.b = v21.__sinval;
    t1.c = -v21.__sinval;
    t1.d = v21.__cosval;
    t1.tx = 0.0;
    t1.ty = 0.0;
    *&t2.c = v78;
    *&t2.a = v79;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v80, &t1, &t2);
    t1 = v80;
    CGAffineTransformTranslate(&t2, &t1, -v16, -v17);
    v22 = a1[1];
    v23 = a1[2];
    t1 = t2;
    CGAffineTransformTranslate(&t2, &t1, v22, v23);
    a = t2.a;
    b = t2.b;
    c = t2.c;
    d = t2.d;
    v28 = t2.tx;
    v29 = t2.ty;
    t1 = t2;
    if (!CGAffineTransformIsIdentity(&t1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v30 = swift_allocObject();
        *(v30 + 24) = 0x3FF0000000000000;
        *(v30 + 32) = 0;
        *(v30 + 40) = 0;
        *(v30 + 48) = 0x3FF0000000000000;
        *(v30 + 56) = 0;
        *(v30 + 64) = 0;
        *(v30 + 80) = 0;
        *(v30 + 88) = 0;
        *(v30 + 72) = 0x3FF0000000000000;
        *(v30 + 96) = 1;
        *(v30 + 104) = 0u;
        *(v30 + 120) = 0u;
        *(v30 + 136) = 0u;
        __asm { FMOV            V1.2D, #1.0 }

        *(v30 + 152) = _Q1;
        *(v30 + 168) = 0x3FF0000000000000;
        *(v30 + 176) = 0;
        *(v30 + 184) = 0u;
        *(v30 + 200) = 0u;
        *(v30 + 216) = 0;
        *(v30 + 16) = *(v15 + 16);
        v36 = *(v15 + 40);
        v37 = *(v15 + 56);
        *(v30 + 24) = *(v15 + 24);
        *(v30 + 40) = v36;
        *(v30 + 56) = v37;
        *(v30 + 72) = *(v15 + 72);
        v76 = v14;
        LODWORD(v79) = v10;
        v38 = *(v15 + 184);
        v39 = *(v15 + 192);
        *&v78 = v11;
        v75 = v3;
        v40 = v12;
        v41 = *(v15 + 200);
        v42 = *(v15 + 208);
        v77 = v13;
        v43 = *(v15 + 216);
        *(v30 + 184) = v38;
        *(v30 + 192) = v39;
        *(v30 + 200) = v41;
        *(v30 + 208) = v42;
        *(v30 + 216) = v43;
        v44 = *(v15 + 96);
        *(v30 + 80) = *(v15 + 80);
        *(v30 + 96) = v44;

        v45 = v38;
        v14 = v76;
        v10 = v79;
        v46 = v41;
        v11 = v78;
        v47 = v42;
        v12 = v40;
        v3 = v75;
        v48 = v43;
        v13 = v77;
        outlined copy of Text.Effect.StopCollector?(v45, v39, v46, v47, v48);

        v15 = v30;
      }

      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v28;
      t1.ty = v29;
      if (!CGAffineTransformIsIdentity(&t1))
      {
        v49 = *(v15 + 24);
        v50 = *(v15 + 40);
        t1.a = a;
        t1.b = b;
        t1.c = c;
        t1.d = d;
        t1.tx = v28;
        t1.ty = v29;
        *&t2.a = v49;
        *&t2.c = v50;
        *&t2.tx = *(v15 + 56);
        CGAffineTransformConcat(&v80, &t1, &t2);
        v51 = *&v80.c;
        v52 = *&v80.tx;
        *(v15 + 24) = *&v80.a;
        *(v15 + 40) = v51;
        *(v15 + 56) = v52;
      }
    }

    v53 = v3[4];
    v54 = v3[5];
    t1.a = 1.0;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = -1.0;
    t1.tx = v53;
    t1.ty = v54;
    if (!CGAffineTransformIsIdentity(&t1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v13;
      v76 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for Text.Effect.DrawingContext.Storage();
        v56 = swift_allocObject();
        *(v56 + 24) = 0x3FF0000000000000;
        *(v56 + 32) = 0;
        *(v56 + 40) = 0;
        *(v56 + 48) = 0x3FF0000000000000;
        *(v56 + 56) = 0;
        *(v56 + 64) = 0;
        *(v56 + 80) = 0;
        *(v56 + 88) = 0;
        *(v56 + 72) = 0x3FF0000000000000;
        *(v56 + 96) = 1;
        *(v56 + 104) = 0u;
        *(v56 + 120) = 0u;
        *(v56 + 136) = 0u;
        __asm { FMOV            V1.2D, #1.0 }

        *(v56 + 152) = _Q1;
        *(v56 + 168) = 0x3FF0000000000000;
        *(v56 + 176) = 0;
        *(v56 + 184) = 0u;
        *(v56 + 200) = 0u;
        *(v56 + 216) = 0;
        *(v56 + 16) = *(v15 + 16);
        v58 = *(v15 + 40);
        v59 = *(v15 + 56);
        *(v56 + 24) = *(v15 + 24);
        *(v56 + 40) = v58;
        *(v56 + 56) = v59;
        *(v56 + 72) = *(v15 + 72);
        v60 = *(v15 + 184);
        v61 = *(v15 + 192);
        LODWORD(v79) = v10;
        *&v78 = v11;
        v62 = *(v15 + 200);
        v63 = *(v15 + 208);
        v75 = v3;
        v64 = v12;
        v65 = *(v15 + 216);
        *(v56 + 184) = v60;
        *(v56 + 192) = v61;
        *(v56 + 200) = v62;
        *(v56 + 208) = v63;
        *(v56 + 216) = v65;
        v66 = *(v15 + 96);
        *(v56 + 80) = *(v15 + 80);
        *(v56 + 96) = v66;

        LOBYTE(v10) = v79;
        v67 = v63;
        v11 = v78;
        v68 = v65;
        v12 = v64;
        v3 = v75;
        outlined copy of Text.Effect.StopCollector?(v60, v61, v62, v67, v68);

        v15 = v56;
      }

      t1.a = 1.0;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = -1.0;
      t1.tx = v53;
      t1.ty = v54;
      if (!CGAffineTransformIsIdentity(&t1))
      {
        v69 = *(v15 + 24);
        v70 = *(v15 + 40);
        t1.a = 1.0;
        t1.b = 0.0;
        t1.c = 0.0;
        t1.d = -1.0;
        t1.tx = v53;
        t1.ty = v54;
        *&t2.a = v69;
        *&t2.c = v70;
        *&t2.tx = *(v15 + 56);
        CGAffineTransformConcat(&v80, &t1, &t2);
        v71 = *&v80.c;
        v72 = *&v80.tx;
        *(v15 + 24) = *&v80.a;
        *(v15 + 40) = v71;
        *(v15 + 56) = v72;
      }

      v13 = v77;
      v14 = v76;
    }

    if (*(v15 + 96))
    {
      v73 = *v3;
    }

    else
    {
      v73 = *(v15 + 80);
    }

    *v9 = v11;
    *(v9 + 1) = v12;
    *(v9 + 2) = v13;
    *(v9 + 3) = v14;
    v9[32] = v10;
    *(v9 + 36) = v73;
    swift_storeEnumTagMultiPayload();
    outlined copy of Path.Storage(v11, v12, v13, v14, v10);
    Text.Effect.DrawingContext.Storage.append(_:)(v9);
    _sypSgWOhTm_2(v83, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
    outlined destroy of Text.Effect.ResolvedDrawing.Operation.Kind(v9, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
  }
}

uint64_t _sypSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO16PathInterpolatorV5GlyphOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (CGPoint, Text.Layout.RunSlice)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (CGPoint, Text.Layout.RunSlice))
  {
    type metadata accessor for CGPoint(255);
    type metadata accessor for Text.Layout.RunSlice();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CGPoint, Text.Layout.RunSlice));
    }
  }
}

unint64_t lazy protocol witness table accessor for type [CGPoint] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CGPoint] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CGPoint] and conformance [A])
  {
    type metadata accessor for [CGPoint](255, &lazy cache variable for type metadata for [CGPoint], type metadata accessor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CGPoint] and conformance [A]);
  }

  return result;
}

void _ss12Zip2SequenceVySaySo7CGPointVG7SwiftUI4TextV6LayoutV8RunSliceVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for [CGPoint](255, &lazy cache variable for type metadata for [CGPoint], type metadata accessor for CGPoint);
    v9[0] = v6;
    v9[1] = type metadata accessor for Text.Layout.RunSlice();
    v9[2] = lazy protocol witness table accessor for type [CGPoint] and conformance [A]();
    v9[3] = lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(&lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, MEMORY[0x1E6981060], MEMORY[0x1E6981068]);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.PathInterpolator.PathGlyph(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.PathInterpolator.PathGlyph(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.PathInterpolator.SmoothPathGlyph(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.PathInterpolator.SmoothPathGlyph(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Text.Effect.PathInterpolator.Interpolated(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.PathInterpolator.Interpolated(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for Text.Effect.PathInterpolator.Glyph(uint64_t a1)
{
  type metadata accessor for Text.Layout.RunSlice();
  if (v1 <= 0x3F)
  {
    _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(319, &lazy cache variable for type metadata for [Text.Effect.PathInterpolator.PathGlyph], &type metadata for Text.Effect.PathInterpolator.PathGlyph, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(319, &lazy cache variable for type metadata for [Text.Effect.PathInterpolator.SmoothPathGlyph], &type metadata for Text.Effect.PathInterpolator.SmoothPathGlyph, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.PathInterpolator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.PathInterpolator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for Text.Effect.PathInterpolator.Cluster(uint64_t a1)
{
  type metadata accessor for Text.Layout.Cluster();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [CGPoint](319, &lazy cache variable for type metadata for [Text.Effect.PathInterpolator.Glyph], type metadata accessor for Text.Effect.PathInterpolator.Glyph);
    if (v2 <= 0x3F)
    {
      _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(319, &lazy cache variable for type metadata for [Text.Effect.PathInterpolator.Metrics], &type metadata for Text.Effect.PathInterpolator.Metrics, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        _sSNy12CoreGraphics7CGFloatVGMaTm_0(319, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [CGPoint](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with take of Text.Effect.ResolvedDrawing.Operation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined copy of Path?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return outlined copy of Path.Storage(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void _s7SwiftUI5ColorV8ResolvedVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for Text.Effect.PathInterpolator.MapKeys(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Text.Effect.PathInterpolator.MapKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for Text.Effect.PathInterpolator.MapKeys(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.PathInterpolator.Fragment> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(255, a2, lazy protocol witness table accessor for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment, &type metadata for Text.Effect.PathInterpolator.Fragment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment;
  if (!lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment);
  }

  return result;
}

void _sSNy12CoreGraphics7CGFloatVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type Range<Text.Effect.ClusterIndex> and conformance <> Range<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for Range<Text.Effect.ClusterIndex>, lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex, &type metadata for Text.Effect.ClusterIndex, MEMORY[0x1E69E66A8]);
    v9 = lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex(v4, v5, v6);
    lazy protocol witness table accessor for type Int and conformance Int(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Text.Effect.PathInterpolator.Fragment> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for Slice<Text.Effect.PathInterpolator.Fragment>, lazy protocol witness table accessor for type Text.Effect.PathInterpolator.Fragment and conformance Text.Effect.PathInterpolator.Fragment, &type metadata for Text.Effect.PathInterpolator.Fragment, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeHorizontalTextEffect.LayoutState and conformance ShakeHorizontalTextEffect.LayoutState);
  }

  return result;
}

id closure #1 in ShakeHorizontalTextEffect.configuration(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<WeightDeltaModifier>, lazy protocol witness table accessor for type WeightDeltaModifier and conformance WeightDeltaModifier, &type metadata for WeightDeltaModifier, type metadata accessor for AnyDynamicFontModifier);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_195CD1880;
  *(v6 + 32) = 0x408F400000000000;
  v7 = Text.Effect.Content.modifier(_:)(v6, a1, a2, a3);

  return v7;
}

void closure #2 in ShakeHorizontalTextEffect.configuration(_:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v84 = a3;
  *&v88 = type metadata accessor for Text.Layout.Line();
  v83 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Text.Layout.Run();
  v74 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v80 = *(a1 + 5);
  v81 = v7;
  v10 = a2[1];
  v94 = *a2;
  v95 = v10;
  v96 = a2[2];
  v82 = a2;
  v97 = *(a2 + 6);
  v11 = *(&v94 + 1);
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.ConcreteLayoutState);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = v94;
  v14 = v96;
  swift_retain_n();
  v15 = v11;
  v16 = Text.Effect.Keyframes.subscript.getter(v11, v12, v13);
  if (!v16)
  {
    goto LABEL_50;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v79 = v9;
  v17 = *(v16 + 16);
  if (v14 >= v17)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v78 = v8;
  v18 = (v16 + 32);
  v11 = *(v16 + 32 + 8 * v14);
  v19 = 0;
  if (v14)
  {
    v20 = v14;
    while (1)
    {
      v21 = *(*(*v18 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v22 = __OFADD__(v19, v21);
      v19 += v21;
      if (v22)
      {
        break;
      }

      ++v18;
      if (!--v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_8:

  *&v109 = v13;
  *(&v109 + 1) = v15;
  v110 = v12;
  v111 = v11;
  v112 = v14;
  v113 = v17;
  v114 = v19;
  outlined init with copy of Text.Effect.BaseFragment(&v109, &v103);
  v23 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v103 = v23;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, isUniquelyReferenced_nonNull_native, 0.0);
  outlined destroy of Text.Effect.BaseFragment(&v109);
  v25 = v103;
  v11 = swift_allocObject();
  *(v11 + 16) = 1;
  v26 = Text.Effect.Keyframes.subscript.getter(v15, v11, v13);
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v14 >= v27)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v28 = *(v26 + 32 + 8 * v14);
    if (v14)
    {
      v29 = 0;
      v30 = 0;
      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v32 = *(*(*(v26 + 32 + 8 * v29) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v22 = __OFADD__(v30, v32);
        v30 += v32;
        if (v22)
        {
          goto LABEL_43;
        }

        if (__OFSUB__(v14, v31))
        {
          goto LABEL_44;
        }

        ++v29;
        if (v14 == v31)
        {
          goto LABEL_18;
        }
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v30 = 0;
LABEL_18:

    *&v103 = v13;
    *(&v103 + 1) = v15;
    v104 = v11;
    v105 = v28;
    v106 = v14;
    v107 = v27;
    v108 = v30;
    outlined init with copy of Text.Effect.BaseFragment(&v103, &v98);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *&v98 = v25;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v103, v33, 1.0);
    outlined destroy of Text.Effect.BaseFragment(&v103);
    v34 = v98;
    v90 = v94;
    v91 = v95;
    v92 = v96;
    v93 = v97;
    outlined init with copy of Text.Effect.DrawableFragment<ShakeHorizontalTextEffect>(v82, &v98, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<ShakeHorizontalTextEffect>, type metadata accessor for Text.Effect.DrawableFragment);

    v35 = specialized static Text.Effect.stopMarkers(_:)(&v94);
    Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(v84, v35, v36, 3, v34, 0.0);
    v38 = v37;
    v77 = v39;

    v40 = *(v34 + 16);
    if (v40)
    {
      v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(*(v34 + 16), 0);
      v41 = specialized Sequence._copySequenceContents(initializing:)(&v98, (v11 + 32), v40, v34);
      v42 = v98;
      v84 = *(&v99 + 1);
      v76 = v100;

      outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant(v42);
      if (v41 != v40)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v76 = v38;
    *&v98 = v11;
    specialized MutableCollection<>.sort(by:)(&v98);

    v75 = specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(v98);
    v98 = v90;
    v99 = v91;
    v100 = v92;
    v101 = v93;
    v43 = *(&v95 + 1);
    v44 = *(*(&v95 + 1) + 16);
    v45 = 0.0;
    if (v44 == *(*(&v95 + 1) + 24))
    {
LABEL_23:
      v46 = v45 * 0.25;
      specialized ShakeHorizontalTextEffect.xrange(for:)(v82);
      v48 = v47;
      v50 = v49;
      v52 = v80;
      v51 = v81;
      v53 = v49 - v47;
      v54 = v78;
      v55 = v79;
      v115 = v81;
      v116 = v78;
      v117[0] = v79;
      *&v90 = v80;
      v56 = swift_allocObject();
      *(v56 + 16) = v102;
      *(v56 + 32) = v51;
      *(v56 + 40) = v54;
      *(v56 + 48) = v55;
      *(v56 + 56) = v52;
      *(v56 + 64) = v46;
      *(v56 + 72) = v53;
      *(v56 + 80) = v48;
      *(v56 + 88) = v50;
      v57 = swift_allocObject();
      v58 = v99;
      *(v57 + 16) = v98;
      *(v57 + 32) = v58;
      *(v57 + 48) = v100;
      *(v57 + 64) = v101;
      *(v57 + 72) = 0;
      v59 = v77;
      *(v57 + 80) = v76;
      *(v57 + 88) = v59;
      *(v57 + 96) = v75;
      *(v57 + 104) = partial apply for closure #2 in closure #2 in ShakeHorizontalTextEffect.configuration(_:);
      *(v57 + 112) = v56;
      v60 = MEMORY[0x1E69E6F90];
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      v88 = xmmword_195CC8D00;
      *(inited + 16) = xmmword_195CC8D00;
      *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
      *(inited + 40) = v57;
      type metadata accessor for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v60);
      v62 = swift_initStackObject();
      *(v62 + 16) = v88;
      *(v62 + 32) = inited;
      outlined init with copy of [Text.Effect.Timing.Fragment](&v115, v89, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo);
      outlined init with copy of [Text.Effect.Timing.Fragment](&v116, v89, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment);
      outlined init with copy of Text.Effect.Timing.GlyphTiming(v117, v89, type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
      outlined init with copy of Text.Effect.ChunkCollection(&v90, v89);
      specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v62);
      swift_setDeallocating();
      outlined destroy of Text.Effect.Drawable(v62 + 32);
      return;
    }

    v63 = v83;
    v83 = *(v83 + 16);
    v84 = OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_line;
    v64 = (v63 + 8);
    v65 = (v74 + 8);
    v66 = v88;
    v67 = v44 + 1;
    while (1)
    {
      while (1)
      {
        v68 = v87;
        (v83)(v87, v43 + v84, v66);
        v11 = v86;
        Text.Layout.Line.subscript.getter();
        (*v64)(v68, v66);
        if (v67 - 1 < *(v43 + 16) || v67 - 1 >= *(v43 + 24))
        {
          goto LABEL_45;
        }

        v70 = Text.Layout.Run.font.getter();
        if (v70)
        {
          break;
        }

        (*v65)(v11, v85);
        if (v45 <= 0.0)
        {
          v45 = 0.0;
        }

LABEL_39:
        if (*(v43 + 24) == v67)
        {
          goto LABEL_23;
        }

        ++v67;
      }

      v71 = v70;
      Size = CTFontGetSize(v70);

      (*v65)(v11, v85);
      if (v45 <= Size)
      {
        v45 = Size;
        goto LABEL_39;
      }

      if (v67++ == *(v43 + 24))
      {
        goto LABEL_23;
      }
    }
  }

LABEL_50:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
}

void closure #2 in closure #2 in ShakeHorizontalTextEffect.configuration(_:)(unint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 64);
  v17 = *(a2 + 40) - *(a2 + 32);
  if (v17 >= 0.0)
  {
    v19 = v17 / v16;
    v18 = 0.0;
    if (v19 < 0.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0 / v16;
    if (v19 < 0.0)
    {
      goto LABEL_8;
    }
  }

  if (v19 <= 1.0)
  {
    v18 = v19;
  }

  else
  {
    v18 = 1.0;
  }

LABEL_8:
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (*(*(a3 + 16) + 16) <= a1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v20 = *(a3 + 32);
  if (*(v20 + 16) <= a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  outlined init with copy of Text.Effect.Timing.GlyphTiming(v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * a1, v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Text.Effect.Timing.GlyphTiming);
  v21 = 0.0;
  if (v18 < 1.0)
  {
    v22 = sin(v18 * -6.0 * 3.0);
    v21 = pow(2.71828183, -v18) * v22;
  }

  if (!__OFSUB__(*a2, a1))
  {
    v23 = *(a2 + 232);
    v25 = *(a2 + 216);
    v24 = *(a2 + 224);
    v26 = *(a2 + 208);
    v27 = 0.0;
    if (*a2 == a1)
    {
      v28 = *(a2 + 240);
    }

    else
    {
      v26 = 0.0;
      v25 = 0.0;
      v24 = 0.0;
      v23 = 0.0;
      v28 = 0.0;
    }

    v29 = v25 - v23;
    v30 = v28 + v23;
    MidX = CGRectGetMidX(*&v26);
    if (a5 <= 0.0)
    {
      v33 = 0.5;
    }

    else
    {
      v32 = (MidX - a6) / a5;
      if (v32 >= 0.0)
      {
        if (v32 <= 1.0)
        {
          v33 = v32;
        }

        else
        {
          v33 = 1.0;
        }

        if (v18 >= 1.0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v34 = sin(v18 * -6.0 * 3.0);
        v27 = pow(2.71828183, -v18) * v34;
        if (v27 > 0.0)
        {
          v35 = (1.0 - v33) * v27;
LABEL_30:
          *v42 = v35;
          *(v42 + 1) = v21 * a4;
          memset(&v42[1], 0, 32);
          __asm { FMOV            V0.2D, #1.0 }

          v42[3] = _Q0;
          v43 = 0x3FF0000000000000;
          v44 = 0;
          Text.Effect.TransformContext.record(target:for:spring:)(v42, a1, &v15[*(v12 + 24)], v41);
          Text.Effect.TransformContext.draw(state:keyPath:)(v41, 0, 0, 0, 1);
          outlined destroy of Text.Effect.Timing.GlyphTiming(v15);
          return;
        }

LABEL_29:
        v35 = fabs(v27) * v33;
        goto LABEL_30;
      }

      v33 = 0.0;
    }

    if (v18 >= 1.0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_34:
  __break(1u);
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance ShakeHorizontalTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized ShakeHorizontalTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ShakeHorizontalTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect(a1, a2, a3);
  *(a1 + 8) = v4;
  result = lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

double specialized ShakeHorizontalTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[24] = 1;
  v18[16] = 1;
  v21 = xmmword_195CCCD40;
  v22 = 1;
  v23 = 0;
  v24 = 0;
  v25 = 2;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = 0;
  v35 = xmmword_195CCB160;
  v36 = 0;
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static ShakeHorizontalTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<ShakeHorizontalTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<ShakeHorizontalTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD015ShakeHorizontalcF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

void *specialized ShakeHorizontalTextEffect.configuration(_:)()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = v0[2];
  v1 = v0[3];
  if (v2 >= v1 >> 1)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1, v0);
  }

  v0[2] = v2 + 1;
  v3 = &v0[4 * v2];
  v3[4] = 1;
  v3[5] = closure #1 in ShakeHorizontalTextEffect.configuration(_:);
  v3[6] = 0;
  *(v3 + 56) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #2 in ShakeHorizontalTextEffect.configuration(_:);
  *(v4 + 24) = 0;
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[2 * v7];
  v8[4] = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v8[5] = v4;
  return v0;
}

uint64_t *specialized ShakeHorizontalTextEffect.xrange(for:)(uint64_t *result)
{
  v1 = result[5];
  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    outlined init with copy of Text.Effect.Keyframes(&v25, v21);

LABEL_45:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = 0;
    v4 = *result;
    v3 = result[1];
    v5 = result[2];
    v6 = -INFINITY;
    v7 = INFINITY;
    while (v1 != v2)
    {
      if (v2 >= v1)
      {
        goto LABEL_34;
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_35;
      }

      v25 = v4;
      swift_beginAccess();
      v8 = *(v4 + 48);
      if (!*(v8 + 16))
      {
        goto LABEL_44;
      }

      outlined init with copy of Text.Effect.Keyframes(&v25, v21);

      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v5);
      if ((v10 & 1) == 0)
      {
        goto LABEL_45;
      }

      v11 = *(*(v8 + 56) + 16 * v9);
      swift_endAccess();
      v12 = *(v11 + 16);
      if (v2 >= v12)
      {
        goto LABEL_36;
      }

      v13 = *(v11 + 32 + 8 * v2);
      if (v2)
      {
        v14 = 0;
        v15 = 0;
        while ((v2 & ~(v2 >> 63)) != v14)
        {
          v16 = *(*(*(v11 + 32 + 8 * v14) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v17 = __OFADD__(v15, v16);
          v15 += v16;
          if (v17)
          {
            goto LABEL_32;
          }

          if (v2 == ++v14)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
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
        goto LABEL_42;
      }

      v15 = 0;
LABEL_17:
      v26[0] = v25;
      v26[1] = v3;
      v26[2] = v5;
      v26[3] = v13;
      v26[4] = v2;
      v26[5] = v12;
      v26[6] = v15;
      v18 = *(*(v13 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v19 = v15 + v18;
      if (__OFADD__(v15, v18))
      {
        goto LABEL_37;
      }

      if (v19 < v15)
      {
        goto LABEL_38;
      }

      if (__OFSUB__(v19, v15))
      {
        goto LABEL_39;
      }

      ++v2;

      if (v19 != v15)
      {
        while (v15 < v19)
        {
          Text.Effect.BaseFragment.typographicBounds(for:)(v15, v15 + 1, v22);
          *&v27.origin.x = v22[0];
          *&v27.size.width = v22[2];
          v27.origin.y = *&v22[1] - v23;
          v27.size.height = v23 + v24;
          MidX = CGRectGetMidX(v27);
          if (__OFSUB__(v19, v15 + 1))
          {
            goto LABEL_41;
          }

          if (v6 <= MidX)
          {
            v6 = MidX;
          }

          if (MidX < v7)
          {
            v7 = MidX;
          }

          ++v15;
          if (!--v18)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_40;
      }

LABEL_3:
      result = outlined destroy of Text.Effect.BaseFragment(v26);
      if (__OFSUB__(v1, v2))
      {
        goto LABEL_33;
      }
    }

    if (v7 > v6)
    {
      goto LABEL_43;
    }
  }

  return result;
}

void type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t outlined init with copy of Text.Effect.DrawableFragment<ShakeHorizontalTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for Text.Effect.ConcreteLayoutState<ShakeHorizontalTextEffect>(0, a3, lazy protocol witness table accessor for type ShakeHorizontalTextEffect and conformance ShakeHorizontalTextEffect, &type metadata for ShakeHorizontalTextEffect, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t GraphicsContext.draw(_:foregroundColor:options:)()
{
  return MEMORY[0x1EEDDF1B0]();
}

{
  return MEMORY[0x1EEDDF1B8]();
}

uint64_t GraphicsContext.draw(_:options:)()
{
  return MEMORY[0x1EEDDF1E8]();
}

{
  return MEMORY[0x1EEDDF1F8]();
}

uint64_t Path.init(_:)()
{
  return MEMORY[0x1EEDE3018]();
}

{
  return MEMORY[0x1EEDE3020]();
}

uint64_t Text.Layout.Line.characterRanges(runIndices:)()
{
  return MEMORY[0x1EEDE32F0]();
}

{
  return MEMORY[0x1EEDE32F8]();
}

uint64_t Text.Layout.Line.clusters(for:)()
{
  return MEMORY[0x1EEDE3330]();
}

{
  return MEMORY[0x1EEDE3338]();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return MEMORY[0x1EEDE3D78]();
}

{
  return MEMORY[0x1EEDE3D90]();
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}