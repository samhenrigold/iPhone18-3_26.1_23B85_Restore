void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, void *Counter)
{
  v214 = *MEMORY[0x1E69E9840];
  v196 = type metadata accessor for OSSignpostID();
  v193 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v14 = (&v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v173 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v173 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v173 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v195 = &v173 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v186 = &v173 - v27;
  if (Counter[7])
  {
    Value = AGGraphGetValue();
    if (v29)
    {
      v30 = *Value;
    }

    else
    {
      v30 = -INFINITY;
    }
  }

  else
  {
    v30 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 64) = 1;
  }

  else if (*(a1 + 64) != 1)
  {
    goto LABEL_124;
  }

  *&v31 = *(a1 + 16);
  v33 = *(a1 + 24);
  *&v32 = *(a1 + 56);
  if (Counter[6])
  {
    goto LABEL_123;
  }

  v34 = *(Counter + 2);
  v35.f64[0] = *(a1 + 16);
  v35.f64[1] = *(a1 + 56);
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v35, *(Counter + 1)), vceqq_f64(v33, v34)))))
  {
    goto LABEL_123;
  }

  v190 = *(Counter + 1);
  v194 = v34;
  v191 = v20;
  v173 = v17;
  v179 = v32;
  v180 = v33;
  v181 = v31;
  v184 = a1;
  AGGraphClearUpdate();
  v36 = *(Counter + 1);
  v209 = *Counter;
  v210 = v36;
  v37 = *(Counter + 3);
  v211 = *(Counter + 2);
  v212 = v37;
  v185 = Counter;
  v213 = *(Counter + 16);
  v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
  v38 = &type metadata for Edge.Corner.Style;
  v39 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v40 = Transaction.effectiveAnimation.getter(v39);
  if (v40)
  {
    v41 = v40;
    v192 = v14;
    v174 = v23;
  }

  else
  {
    if (!a2)
    {

      a1 = v184;
      Counter = v185;
      goto LABEL_122;
    }

    v192 = v14;
    v174 = v23;

    v41 = a2;
  }

  v42 = *(&v212 + 1);
  v43 = *&v181 - *&v190;
  v44 = *&v179 - *(&v190 + 1);
  v45 = v180.f64[0] - v194.f64[0];
  v46 = v180.f64[1] - v194.f64[1];
  v30 = *AGGraphGetValue();
  v177 = a3;
  v176 = v39;
  v175 = v41;
  if (!v42)
  {
    *&v201.f64[0] = &type metadata for Edge.Corner.Style;
    type metadata accessor for Edge.Corner.Style.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Edge.Corner.Style.AnimatableData>.Type, &type metadata for Edge.Corner.Style.AnimatableData);
    v62 = swift_dynamicCast();
    if (v62)
    {
      v63 = v205;
    }

    else
    {
      v63 = 0;
    }

    if (v62)
    {
      v64 = *(&v205 + 1);
    }

    else
    {
      v64 = 0;
    }

    v178 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA4EdgeOAAE6CornerO5StyleV14AnimatableDataV_Tt4B5(v65, v39, v63, v64, v43, v44, v45, v46, v30);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v67 = CurrentAttribute;
    LODWORD(v39) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v68 = 0;
    }

    else
    {
      v68 = CurrentAttribute;
    }

    LODWORD(v190) = v68;
    (*(*v41 + 96))(&v201);
    v69 = v201;
    v70 = *(&v202 + 1);
    v71 = v203;
    v200 = 0x7FF8000000000000;
    v199 = 0x7FF8000000000000;
    v198 = 0x3FF0000000000000;
    v197 = NAN;
    v205 = v201;
    v191 = v202;
    v206 = v202;
    v207 = v203;
    LODWORD(v194.f64[0]) = v204;
    LOBYTE(v208) = v204;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v205, &v200, &v199, &v198, &v197);
    v5 = v200;
    v6 = v199;
    v7 = v198;
    v8 = v197;
    a1 = v184;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_196;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v189 = v71;
      v72 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v73 = *(v72 + 16);
        LODWORD(v205) = v190;
        BYTE4(v205) = v67 == v39;
        *(&v205 + 1) = &type metadata for Edge.Corner.Style;
        *&v206 = v5;
        *(&v206 + 1) = v6;
        v207 = v7;
        v208 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v74 = v73;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v69.f64[0], *&v69.f64[1], v191, v70, v189, LOBYTE(v194.f64[0]));

        a1 = v184;
        goto LABEL_84;
      }

      v76 = *&v69.f64[1];
      v75 = *&v69.f64[0];
      v77 = v191;
      v78 = v70;
      v79 = v189;
    }

    else
    {
      v76 = *&v69.f64[1];
      v75 = *&v69.f64[0];
      v77 = v191;
      v78 = v70;
      v79 = v71;
    }

    outlined consume of Animation.Function(v75, v76, v77, v78, v79, LOBYTE(v194.f64[0]));
LABEL_84:
    v112 = one-time initialization token for animationState;
    v38 = v178;

    if (v112 == -1)
    {
LABEL_85:
      v80 = *(&static Signpost.animationState + 1);
      *&v81 = static Signpost.animationState;
      LOBYTE(Counter) = word_1ED5283E8;
      v4 = HIBYTE(word_1ED5283E8);
      v113 = byte_1ED5283EA;
      v84 = static os_signpost_type_t.begin.getter();
      v205 = __PAIR128__(*&v80, *&v81);
      LOBYTE(v206) = Counter;
      BYTE1(v206) = v4;
      BYTE2(v206) = v113;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
        Counter = v185;
        v185[7] = v38;
        goto LABEL_120;
      }

      v114 = one-time initialization token for _signpostLog;

      if (v114 != -1)
      {
        goto LABEL_199;
      }

      goto LABEL_87;
    }

LABEL_196:
    swift_once();
    goto LABEL_85;
  }

  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v205) = 0;
  v47.n128_f64[0] = v43;
  v48.n128_f64[0] = v44;
  v49.n128_f64[0] = v45;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v41, v39, a3, v47, v48, v49, v46, v30);
  v50 = AGGraphGetCurrentAttribute();
  a1 = v50;
  v51 = *MEMORY[0x1E698D3F8];
  if (v50 == v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50;
  }

  LODWORD(v192) = v52;
  (*(*v41 + 96))(&v201);
  v4 = *&v201.f64[1];
  v53 = *&v201.f64[0];
  v54 = v202;
  v200 = 0x7FF8000000000000;
  v199 = 0x7FF8000000000000;
  v198 = 0x3FF0000000000000;
  v197 = NAN;
  v205 = v201;
  v206 = v202;
  v55 = *(&v202 + 1);
  v56 = v203;
  v207 = v203;
  LODWORD(v194.f64[0]) = v204;
  LOBYTE(v208) = v204;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v205, &v200, &v199, &v198, &v197);
  v5 = v200;
  v6 = v199;
  v7 = v198;
  v8 = v197;
  Counter = v185;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_192;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_194:
      swift_once();
      goto LABEL_45;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v57 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v58 = a1 == v51;
        LODWORD(v190) = v51;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v59 = *(v57 + 16);
        LODWORD(v205) = v192;
        BYTE4(v205) = v58;
        *(&v205 + 1) = &type metadata for Edge.Corner.Style;
        *&v206 = v5;
        *(&v206 + 1) = v6;
        v207 = v7;
        v208 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v192 = v60;

        v61 = v59;
        v51 = v190;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v53, v4, v54, v55, v56, LOBYTE(v194.f64[0]));
      }

      else
      {
        outlined consume of Animation.Function(v53, v4, v54, v55, v56, LOBYTE(v194.f64[0]));
      }

      Counter = v185;
    }

    else
    {
      outlined consume of Animation.Function(v53, v4, v54, v55, v56, LOBYTE(v194.f64[0]));
    }

    v178 = v42;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
    a1 = v184;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_194;
    }

LABEL_45:
    v80 = *(&static Signpost.animationState + 1);
    v39 = static Signpost.animationState;
    *&v81 = word_1ED5283E8;
    v82 = HIBYTE(word_1ED5283E8);
    v83 = byte_1ED5283EA;
    v84 = static os_signpost_type_t.event.getter();
    v205 = __PAIR128__(*&v80, v39);
    LOBYTE(v206) = LOBYTE(v81);
    BYTE1(v206) = v82;
    BYTE2(v206) = v83;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
LABEL_81:
      v111 = v176;
      goto LABEL_121;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v85 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v51)
    {
      __break(1u);
    }

    else
    {
      v4 = v51;
      v86 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v87 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v87;
      *(a1 + 32) = Counter;
      v88 = AGGraphGetCurrentAttribute();
      if (v88 != v4)
      {
        v89 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v89;
        *(a1 + 72) = v88;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(a1 + 144) = v90;
        *(a1 + 112) = 0x656C797453;
        *(a1 + 120) = 0xE500000000000000;
        Counter = v185;
        if (v82)
        {
          LOBYTE(v197) = v84;
          v200 = &dword_18D018000;
          v199 = v85;
          *&v205 = v39;
          *(&v205 + 1) = v80;
          LOBYTE(v206) = LOBYTE(v81);
          *&v201.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v201.f64[1] = 39;
          LOBYTE(v202) = 2;
          v198 = a1;
          v91 = v174;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v197, &v200, &v199, &v205, v174, &v201, &v198);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
          (*(v193 + 8))(v91, v196);

          a1 = v184;
        }

        else
        {
          v51 = v39;
          if (v39 == 20)
          {
            v92 = 3;
          }

          else
          {
            v92 = 4;
          }

          v93 = bswap32(v39) | (4 * (v39 >> 16));
          v94 = v84;
          v95 = v193 + 16;
          v182 = *(v193 + 16);
          v96 = v182(v191, v174, v196);
          v97 = 0;
          LOBYTE(v201.f64[0]) = 1;
          *&v194.f64[0] = v92;
          v189 = 16 * v92;
          v183 = v95;
          *&v190 = v95 - 8;
          v188 = a1 + 32;
          v187 = v51;
          do
          {
            v192 = &v173;
            MEMORY[0x1EEE9AC00](v96);
            Counter = (&v173 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
            v55 = (Counter + 1);
            v100 = v194.f64[0];
            v101 = Counter + 1;
            do
            {
              *(v101 - 1) = 0;
              *v101 = 0;
              v101 += 16;
              --*&v100;
            }

            while (v100 != 0.0);
            v4 = v188 + 40 * v97;
            v102 = *&v194.f64[0];
            while (1)
            {
              v103 = *(a1 + 16);
              if (v97 == v103)
              {
                break;
              }

              if (v97 >= v103)
              {
                goto LABEL_183;
              }

              ++v97;
              outlined init with copy of AnyTrackedValue(v4, &v205);
              v104 = *(&v206 + 1);
              v51 = v207;
              __swift_project_boxed_opaque_existential_1(&v205, *(&v206 + 1));
              *(v55 - 8) = CVarArg.kdebugValue(_:)(v93 | v94, v104, v51);
              *v55 = v105 & 1;
              v55 += 16;
              v98 = __swift_destroy_boxed_opaque_existential_1(&v205);
              v4 += 40;
              if (!--v102)
              {
                goto LABEL_65;
              }
            }

            LOBYTE(v201.f64[0]) = 0;
LABEL_65:
            v51 = v187;
            if (v187 == 20)
            {
              v106 = v191;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v106 = v191;
            }

            if (*(Counter + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(Counter + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(Counter + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v51 != 20 && *(Counter + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v107 = *v190;
            v108 = v196;
            (*v190)(v106, v196);
            v109 = __swift_project_value_buffer(v108, static OSSignpostID.continuation);
            v96 = v182(v106, v109, v108);
          }

          while ((LOBYTE(v201.f64[0]) & 1) != 0);
          v4 = &type metadata for Edge.Corner.Style;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
          v110 = v196;
          v107(v106, v196);
          v107(v174, v110);

          a1 = v184;
          Counter = v185;
        }

        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_199:
    swift_once();
LABEL_87:
    v115 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v39)
    {
      __break(1u);
LABEL_201:
      __break(1u);
    }

    v117 = AGGraphGetAttributeGraph();
    v118 = AGGraphGetCounter();

    v119 = MEMORY[0x1E69E6870];
    *(v116 + 56) = MEMORY[0x1E69E6810];
    *(v116 + 64) = v119;
    *(v116 + 32) = v118;
    v120 = AGGraphGetCurrentAttribute();
    if (v120 == v39)
    {
      goto LABEL_201;
    }

    v121 = MEMORY[0x1E69E76D0];
    *(v116 + 96) = MEMORY[0x1E69E7668];
    *(v116 + 104) = v121;
    *(v116 + 72) = v120;
    *(v116 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v116 + 144) = v122;
    *(v116 + 112) = 0x656C797453;
    *(v116 + 120) = 0xE500000000000000;
    v123 = v173;
    if (v4)
    {
      LOBYTE(v197) = v84;
      v200 = &dword_18D018000;
      v199 = v115;
      *&v205 = v81;
      *(&v205 + 1) = v80;
      LOBYTE(v206) = Counter;
      *&v201.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v201.f64[1] = 39;
      LOBYTE(v202) = 2;
      v198 = v116;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v197, &v200, &v199, &v205, v173, &v201, &v198);
      v124 = v178;

      (*(v193 + 8))(v123, v196);
    }

    else
    {
      v51 = LOBYTE(v81);
      v102 = LOBYTE(v81) == 20 ? 3 : 4;
      a1 = bswap32(LOWORD(v81)) | (4 * HIWORD(LODWORD(v81)));
      v94 = v84;
      v125 = v193 + 16;
      v182 = *(v193 + 16);
      v126 = v182(v192, v173, v196);
      v55 = 0;
      LOBYTE(v201.f64[0]) = 1;
      *&v190 = 16 * v102;
      v183 = v125;
      v191 = (v125 - 8);
      v189 = v116 + 32;
      v188 = v51;
      v187 = v102;
      do
      {
        *&v194.f64[0] = &v173;
        MEMORY[0x1EEE9AC00](v126);
        v4 = &v173 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
        Counter = (v4 + 8);
        v128 = v102;
        v129 = (v4 + 8);
        do
        {
          *(v129 - 1) = 0;
          *v129 = 0;
          v129 += 16;
          --v128;
        }

        while (v128);
        v130 = v189 + 40 * v55;
        while (1)
        {
          v131 = *(v116 + 16);
          if (v55 == v131)
          {
            break;
          }

          if (v55 >= v131)
          {
            goto LABEL_184;
          }

          ++v55;
          outlined init with copy of AnyTrackedValue(v130, &v205);
          v132 = *(&v206 + 1);
          v51 = v207;
          __swift_project_boxed_opaque_existential_1(&v205, *(&v206 + 1));
          *(Counter - 1) = CVarArg.kdebugValue(_:)(a1 | v94, v132, v51);
          *Counter = v133 & 1;
          Counter += 2;
          v98 = __swift_destroy_boxed_opaque_existential_1(&v205);
          v130 += 40;
          if (!--v102)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v201.f64[0]) = 0;
LABEL_104:
        v51 = v188;
        if (v188 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (*(v4 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v51 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v134 = *v191;
        v135 = v192;
        v136 = v196;
        (*v191)(v192, v196);
        v137 = __swift_project_value_buffer(v136, static OSSignpostID.continuation);
        v126 = v182(v135, v137, v136);
        v102 = v187;
      }

      while ((LOBYTE(v201.f64[0]) & 1) != 0);
      v124 = v178;

      v138 = v196;
      v134(v192, v196);
      v134(v173, v138);
    }

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
    Counter = v185;
    v185[7] = v124;
    a1 = v184;
LABEL_120:
    v111 = v176;
LABEL_121:
    specialized AnimatorState.addListeners(transaction:)(v111);

    a3 = v177;
LABEL_122:
    *&v31 = v181;
    v33 = v180;
    *&v32 = v179;
LABEL_123:
    *(&v31 + 1) = v32;
    *(Counter + 1) = v31;
    *(Counter + 2) = v33;
    *(Counter + 48) = 0;
LABEL_124:
    v51 = Counter[7];
    if (!v51)
    {
      return;
    }

    v139 = *(a1 + 56);
    *&v205 = *(a1 + 16);
    *(&v205 + 1) = v139;
    v206 = *(a1 + 24);

    LOBYTE(v209) = 0;
    v140 = specialized AnimatorState.update(_:at:environment:)(&v205, a3, v30);
    v98 = AGGraphGetCurrentAttribute();
    v55 = *MEMORY[0x1E698D3F8];
    if (v98 == v55)
    {
      v94 = 0;
    }

    else
    {
      v94 = v98;
    }

    v102 = &type metadata instantiation cache for TupleTypeDescription;
    if (v140)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_185;
      }

      goto LABEL_130;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_187;
    }

LABEL_143:
    v151 = *(v102 + 616);
    if (*(v151 + 16) >= 0x43uLL)
    {
      if (*(v151 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v209) = v94;
        BYTE4(v209) = v98 == v55;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_178;
    }

    __break(1u);
LABEL_189:
    swift_once();
LABEL_135:
    v56 = *(&static Signpost.animationState + 1);
    v143 = static Signpost.animationState;
    v54 = word_1ED5283E8;
    v42 = HIBYTE(word_1ED5283E8);
    v144 = byte_1ED5283EA;
    v51 = static os_signpost_type_t.end.getter();
    v209 = __PAIR128__(v56, v143);
    LOBYTE(v210) = v54;
    BYTE1(v210) = v42;
    BYTE2(v210) = v144;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_177;
    }

    v184 = a1;
    v145 = one-time initialization token for _signpostLog;

    if (v145 != -1)
    {
      swift_once();
    }

    v185 = Counter;
    v53 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v55)
    {
      break;
    }

    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    swift_once();
  }

  Counter = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v146 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v146;
  *(a1 + 32) = v4;
  v147 = AGGraphGetCurrentAttribute();
  if (v147 == v55)
  {
    goto LABEL_191;
  }

  v148 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v148;
  *(a1 + 72) = v147;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 144) = v149;
  *(a1 + 112) = 0x656C797453;
  *(a1 + 120) = 0xE500000000000000;
  if (v42)
  {
    LOBYTE(v197) = v51;
    v200 = &dword_18D018000;
    v199 = v53;
    *&v209 = v143;
    *(&v209 + 1) = v56;
    LOBYTE(v210) = v54;
    *&v201.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v201.f64[1] = 37;
    LOBYTE(v202) = 2;
    v198 = a1;
    v150 = v186;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v197, &v200, &v199, &v209, v186, &v201, &v198);

    (*(v193 + 8))(v150, v196);
    goto LABEL_176;
  }

  v152 = v143;
  if (v143 == 20)
  {
    v102 = 3;
  }

  else
  {
    v102 = 4;
  }

  v55 = bswap32(v143) | (4 * WORD1(v143));
  v94 = v51;
  v153 = v193 + 16;
  v187 = *(v193 + 16);
  v154 = v187(v195, v186, v196);
  v155 = 0;
  LOBYTE(v201.f64[0]) = 1;
  v191 = (16 * v102);
  v193 = v153;
  v192 = (v153 - 8);
  *&v190 = a1 + 32;
  v189 = v152;
  v188 = v102;
  do
  {
    *&v194.f64[0] = &v173;
    MEMORY[0x1EEE9AC00](v154);
    Counter = (&v173 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0));
    v157 = Counter + 1;
    v158 = v102;
    v159 = Counter + 1;
    do
    {
      *(v159 - 1) = 0;
      *v159 = 0;
      v159 += 16;
      --v158;
    }

    while (v158);
    v4 = v190 + 40 * v155;
    while (1)
    {
      v160 = *(a1 + 16);
      if (v155 == v160)
      {
        break;
      }

      if (v155 >= v160)
      {
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        v171 = v98;
        swift_once();
        v98 = v171;
LABEL_130:
        v141 = *(v102 + 616);
        if (*(v141 + 16) >= 0x43uLL)
        {
          if (*(v141 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v209) = v94;
            BYTE4(v209) = v98 == v55;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v142 = one-time initialization token for animationState;
          v183 = v51;

          if (v142 != -1)
          {
            goto LABEL_189;
          }

          goto LABEL_135;
        }

        __break(1u);
LABEL_187:
        v172 = v98;
        swift_once();
        v98 = v172;
        goto LABEL_143;
      }

      ++v155;
      outlined init with copy of AnyTrackedValue(v4, &v209);
      v161 = *(&v210 + 1);
      v51 = v211;
      __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      *(v157 - 1) = CVarArg.kdebugValue(_:)(v55 | v94, v161, v51);
      *v157 = v162 & 1;
      v157 += 16;
      v98 = __swift_destroy_boxed_opaque_existential_1(&v209);
      v4 += 40;
      if (!--v102)
      {
        goto LABEL_161;
      }
    }

    LOBYTE(v201.f64[0]) = 0;
LABEL_161:
    v163 = v189;
    if (v189 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(Counter + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(Counter + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(Counter + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v163 != 20 && *(Counter + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v164 = *v192;
    v51 = v195;
    v165 = v196;
    (*v192)(v195, v196);
    v166 = __swift_project_value_buffer(v165, static OSSignpostID.continuation);
    v154 = v187(v51, v166, v165);
    v102 = v188;
  }

  while ((LOBYTE(v201.f64[0]) & 1) != 0);

  v167 = v196;
  v164(v195, v196);
  v164(v186, v167);
LABEL_176:

  a1 = v184;
  Counter = v185;
LABEL_177:
  specialized AnimatorState.removeListeners()();

  Counter[7] = 0;
LABEL_178:
  v168 = v205;
  v169 = v206;
  *(a1 + 16) = v205;
  *(a1 + 24) = v169;
  *(a1 + 56) = v168.f64[1];
  v170 = *(&v169 + 1) == 1.0;
  if (*&v169 != 1.0)
  {
    v170 = *&v168.f64[0];
  }

  *a1 = v170;
  *(a1 + 8) = *&v169 == 1.0;
  *(a1 + 32) = *(&v169 + 1);
  *(a1 + 40) = v168.f64[1];
  *(a1 + 48) = 0;
  *(a1 + 64) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t Counter, uint64_t a2, unsigned int a3, ValueMetadata *a4)
{
  v228 = *MEMORY[0x1E69E9840];
  v203 = type metadata accessor for OSSignpostID();
  v199 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v14 = (&v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v179 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v179 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v179 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v202 = (&v179 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v193 = (&v179 - v27);
  if (a4[2].Description)
  {
    Value = AGGraphGetValue();
    if (v29)
    {
      v30 = *Value;
    }

    else
    {
      v30 = -INFINITY;
    }
  }

  else
  {
    v30 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(Counter + 24) = 1;
  }

  else if (*(Counter + 24) != 1)
  {
    goto LABEL_139;
  }

  v33 = *Counter;
  v34 = *(Counter + 4);
  v35 = *(Counter + 20);
  v33.i32[1] = *(Counter + 8);
  v34.i32[1] = *(Counter + 12);
  *&v32 = vmul_f32(v33, 0x4300000043000000);
  *&v31 = vmul_f32(v34, 0x4300000043000000);
  v36 = *(Counter + 16) * 128.0;
  v37 = v35 * 128.0;
  if ((a4[2].Kind & 0x100000000) != 0)
  {
    goto LABEL_138;
  }

  v201 = v30;
  LODWORD(v8) = HIDWORD(a4->Description);
  v38 = *&a4[1].Kind;
  v39 = *(&a4[1].Kind + 1);
  v40 = *&a4[1].Description;
  v41 = *(&a4[1].Description + 1);
  LODWORD(v5) = a4[2].Kind;
  LODWORD(v6) = DWORD1(v32);
  LODWORD(v7) = DWORD1(v31);
  v42 = *&v32 == *&v8 && *&v31 == v38;
  if (v42 && *(&v32 + 1) == v39 && *(&v31 + 1) == v40 && v36 == v41 && v37 == *&v5)
  {
    v30 = v201;
    goto LABEL_138;
  }

  v188 = a3;
  v200 = v14;
  v198 = v20;
  v184 = v36;
  v185 = v35 * 128.0;
  v186 = v31;
  v187 = v32;
  v191 = Counter;
  AGGraphClearUpdate();
  v47 = a4[1];
  v224 = *a4;
  v225 = v47;
  v226 = a4[2];
  v192 = a4;
  Kind = a4[3].Kind;
  v4 = &type metadata for Color.ResolvedDuotone;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v224, &v219, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
  v48 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v49 = Transaction.effectiveAnimation.getter(v48);
  if (v49)
  {
    v50 = v49;
    a3 = v188;
  }

  else
  {
    a3 = v188;
    if (!a2)
    {

      Counter = v191;
      a4 = v192;
      v30 = v201;
      goto LABEL_137;
    }

    v50 = a2;
  }

  Description = v226.Description;
  v52 = *&v187 - *&v8;
  v53 = *&v186 - v38;
  v54 = *&v6 - v39;
  v55 = *&v7 - v40;
  v56 = v184 - v41;
  v57 = v185 - *&v5;
  v30 = *AGGraphGetValue();
  v182 = v48;
  v183 = v50;
  if (!Description)
  {
    v180 = v17;
    v214.i64[0] = &type metadata for Color.ResolvedDuotone;
    type metadata accessor for Color.ResolvedDuotone.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v70 = swift_dynamicCast();
    if (v70)
    {
      v71 = v219;
    }

    else
    {
      v71 = 0;
    }

    if (v70)
    {
      v72 = *(&v219 + 1);
    }

    else
    {
      v72 = 0;
    }

    v208 = v52;
    v209 = v53;
    v210 = v54;
    v211 = v55;
    v212 = v56;
    v213 = v57;

    v74 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVySfAVySfAVyS2fGGGGG_Tt4B5Tm(v73, &v208, v48, v71, v72, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, v30);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v76 = CurrentAttribute;
    LODWORD(v201) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == LODWORD(v201))
    {
      v77 = 0;
    }

    else
    {
      v77 = CurrentAttribute;
    }

    (*(*v50 + 96))(&v214);
    v78 = v214;
    v207 = 0x7FF8000000000000;
    v206 = 0x7FF8000000000000;
    v205 = 0x3FF0000000000000;
    v204 = NAN;
    v219 = v214;
    v79 = v215;
    v220 = v215;
    v196 = v216;
    v221 = v216;
    v197 = v217;
    v222 = v217;
    LODWORD(v198) = v218;
    LOBYTE(v223) = v218;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v219, &v207, &v206, &v205, &v204);
    v5 = v207;
    v6 = v206;
    v7 = v205;
    v8 = v204;
    a4 = v192;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v80 = static CustomEventTrace.recorder) != 0)
      {
        v81 = v76 == LODWORD(v201);
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v82 = *(v80 + 16);
        LODWORD(v219) = v77;
        BYTE4(v219) = v81;
        *(&v219 + 1) = &type metadata for Color.ResolvedDuotone;
        v220 = v5;
        v221 = v6;
        v222 = v7;
        v223 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v83 = v82;
        a4 = v192;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v78.i64[0], v78.i64[1], v79, v196, v197, v198);
      }

      else
      {
        outlined consume of Animation.Function(v78.i64[0], v78.i64[1], v79, v196, v197, v198);
      }

      v84 = one-time initialization token for animationState;

      if (v84 == -1)
      {
        goto LABEL_58;
      }
    }

    swift_once();
LABEL_58:
    v86 = *(&static Signpost.animationState + 1);
    v85 = static Signpost.animationState;
    LOBYTE(Counter) = word_1ED5283E8;
    v4 = HIBYTE(word_1ED5283E8);
    v87 = byte_1ED5283EA;
    v88 = static os_signpost_type_t.begin.getter();
    v219 = __PAIR128__(v86, v85);
    v220.i8[0] = Counter;
    v220.i8[1] = v4;
    v220.i8[2] = v87;
    v89 = Signpost.isEnabled.getter();
    LODWORD(v90) = LODWORD(v201);
    if ((v89 & 1) == 0)
    {

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_135;
    }

    v91 = one-time initialization token for _signpostLog;

    if (v91 != -1)
    {
      goto LABEL_212;
    }

    goto LABEL_60;
  }

  v208 = v52;
  v209 = v53;
  v210 = v54;
  v211 = v55;
  v212 = v56;
  v213 = v57;
  a4 = &type metadata for Color.ResolvedDuotone;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v224, &v219, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v219) = 0;
  v181 = Description;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v50, &v208, v48, a3, v30);
  v58 = AGGraphGetCurrentAttribute();
  v59 = v58;
  LODWORD(v201) = *MEMORY[0x1E698D3F8];
  if (v58 == LODWORD(v201))
  {
    v60 = 0;
  }

  else
  {
    v60 = v58;
  }

  LODWORD(v197) = v60;
  (*(*v50 + 96))(&v214);
  v4 = v214.i64[1];
  v61 = v214.i64[0];
  v62 = v215;
  v207 = 0x7FF8000000000000;
  v206 = 0x7FF8000000000000;
  v205 = 0x3FF0000000000000;
  v204 = NAN;
  v219 = v214;
  v220 = v215;
  v63 = v216;
  v221 = v216;
  v64 = v217;
  v222 = v217;
  LODWORD(v200) = v218;
  LOBYTE(v223) = v218;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v219, &v207, &v206, &v205, &v204);
  v5 = v207;
  v6 = v206;
  v7 = v205;
  v8 = v204;
  Counter = v191;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_205;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_207:
      swift_once();
      goto LABEL_69;
    }

    v42 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v180 = v23;
    if (v42)
    {
      v65 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v66 = v59 == LODWORD(v201);
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v67 = *(v65 + 16);
        LODWORD(v219) = v197;
        BYTE4(v219) = v66;
        *(&v219 + 1) = a4;
        v220 = v5;
        v221 = v6;
        v222 = v7;
        v223 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v197 = v68;

        v69 = v67;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v61, v4, v62, v63, v64, v200);
      }

      else
      {
        outlined consume of Animation.Function(v61, v4, v62, v63, v64, v200);
      }

      Counter = v191;
    }

    else
    {
      outlined consume of Animation.Function(v61, v4, v62, v63, v64, v200);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v224, &v219, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_207;
    }

LABEL_69:
    v90 = *(&static Signpost.animationState + 1);
    v85 = static Signpost.animationState;
    v86 = word_1ED5283E8;
    v88 = HIBYTE(word_1ED5283E8);
    v99 = byte_1ED5283EA;
    v4 = static os_signpost_type_t.event.getter();
    v219 = __PAIR128__(v90, v85);
    v220.i8[0] = v86;
    v220.i8[1] = v88;
    v220.i8[2] = v99;
    v100 = Signpost.isEnabled.getter();
    v101 = LODWORD(v201);
    if ((v100 & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
LABEL_106:
      a4 = v192;
      v127 = v182;
      goto LABEL_136;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v224, &v219, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v102 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v101)
    {
      __break(1u);
    }

    else
    {
      a4 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v103 = MEMORY[0x1E69E6870];
      *(v74 + 56) = MEMORY[0x1E69E6810];
      *(v74 + 64) = v103;
      *(v74 + 32) = Counter;
      v104 = AGGraphGetCurrentAttribute();
      if (v104 != v101)
      {
        v105 = MEMORY[0x1E69E76D0];
        *(v74 + 96) = MEMORY[0x1E69E7668];
        *(v74 + 104) = v105;
        *(v74 + 72) = v104;
        *(v74 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v74 + 144) = v106;
        *(v74 + 112) = 0x6465766C6F736552;
        *(v74 + 120) = 0xEF656E6F746F7544;
        if (v88)
        {
          LOBYTE(v204) = v4;
          v207 = &dword_18D018000;
          v206 = v102;
          *&v219 = v85;
          *(&v219 + 1) = v90;
          v220.i8[0] = v86;
          v214.i64[0] = "Animation: (%p) [%d] %{public}@ updated";
          v214.i64[1] = 39;
          v215.i8[0] = 2;
          v205 = v74;
          v107 = v180;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v204, &v207, &v206, &v219, v180, &v214, &v205);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
          (*(v199 + 8))(v107, v203);
        }

        else
        {
          v108 = v85;
          if (v85 == 20)
          {
            v109 = 3;
          }

          else
          {
            v109 = 4;
          }

          v110 = bswap32(v85) | (4 * WORD1(v85));
          v111 = v4;
          v112 = (v199 + 16);
          v189 = *(v199 + 16);
          v113 = v189(v198, v180, v203);
          v114 = 0;
          v214.i8[0] = 1;
          v201 = *&v109;
          v196 = 16 * v109;
          v190 = v112;
          v197 = (v112 - 8);
          v195 = (v74 + 32);
          v194 = v108;
          do
          {
            v200 = &v179;
            MEMORY[0x1EEE9AC00](v113);
            Counter = &v179 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
            v63 = (Counter + 8);
            v117 = v201;
            v118 = (Counter + 8);
            do
            {
              *(v118 - 1) = 0;
              *v118 = 0;
              v118 += 16;
              --*&v117;
            }

            while (v117 != 0.0);
            v4 = &v195[40 * v114];
            v64 = *&v201;
            while (1)
            {
              v119 = *(v74 + 16);
              if (v114 == v119)
              {
                break;
              }

              if (v114 >= v119)
              {
                goto LABEL_196;
              }

              ++v114;
              outlined init with copy of AnyTrackedValue(v4, &v219);
              v120 = v221;
              a4 = v222;
              __swift_project_boxed_opaque_existential_1(&v219, v221);
              *(v63 - 1) = CVarArg.kdebugValue(_:)(v110 | v111, v120, a4);
              *v63 = v121 & 1;
              v63 += 16;
              v115 = __swift_destroy_boxed_opaque_existential_1(&v219);
              v4 += 40;
              if (!--v64)
              {
                goto LABEL_89;
              }
            }

            v214.i8[0] = 0;
LABEL_89:
            v122 = v194;
            if (v194 == 20)
            {
              a4 = v198;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              a4 = v198;
            }

            if (*(Counter + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(Counter + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(Counter + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v122 != 20 && *(Counter + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v123 = v197->Kind;
            v124 = v203;
            (v197->Kind)(a4, v203);
            v125 = __swift_project_value_buffer(v124, static OSSignpostID.continuation);
            v113 = v189(a4, v125, v124);
          }

          while ((v214.i8[0] & 1) != 0);
          v4 = &type metadata for Color.ResolvedDuotone;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
          v126 = v203;
          v123(a4, v203);
          v123(v180, v126);
        }

        Counter = v191;
        goto LABEL_106;
      }
    }

    __break(1u);
LABEL_212:
    swift_once();
LABEL_60:
    v92 = _signpostLog;
    v181 = v74;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v63 = swift_allocObject();
    *(v63 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v90)
    {
      __break(1u);
LABEL_214:
      __break(1u);
    }

    a4 = AGGraphGetAttributeGraph();
    v93 = AGGraphGetCounter();

    v94 = MEMORY[0x1E69E6870];
    *(v63 + 7) = MEMORY[0x1E69E6810];
    *(v63 + 8) = v94;
    *(v63 + 4) = v93;
    v95 = AGGraphGetCurrentAttribute();
    if (v95 == v90)
    {
      goto LABEL_214;
    }

    v96 = MEMORY[0x1E69E76D0];
    *(v63 + 12) = MEMORY[0x1E69E7668];
    *(v63 + 13) = v96;
    *(v63 + 18) = v95;
    *(v63 + 17) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v63 + 18) = v97;
    *(v63 + 14) = 0x6465766C6F736552;
    *(v63 + 15) = 0xEF656E6F746F7544;
    if (v4)
    {
      LOBYTE(v204) = v88;
      v207 = &dword_18D018000;
      v206 = v92;
      *&v219 = v85;
      *(&v219 + 1) = v86;
      v220.i8[0] = Counter;
      v214.i64[0] = "Animation: (%p) [%d] %{public}@ started";
      v214.i64[1] = 39;
      v215.i8[0] = 2;
      v205 = v63;
      v98 = v180;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v204, &v207, &v206, &v219, v180, &v214, &v205);
      v74 = v181;

      (*(v199 + 8))(v98, v203);
    }

    else
    {
      v194 = v85;
      v128 = v85 == 20 ? 3 : 4;
      Counter = bswap32(v85) | (4 * WORD1(v85));
      v111 = v88;
      v129 = (v199 + 16);
      v189 = *(v199 + 16);
      v130 = v189(v200, v180, v203);
      v131 = 0;
      v214.i8[0] = 1;
      v201 = *&v128;
      v196 = 16 * v128;
      v190 = v129;
      v197 = (v129 - 8);
      v195 = v63 + 32;
      do
      {
        v198 = &v179;
        MEMORY[0x1EEE9AC00](v130);
        v4 = &v179 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
        v114 = v4 + 8;
        v133 = v201;
        v134 = (v4 + 8);
        do
        {
          *(v134 - 1) = 0;
          *v134 = 0;
          v134 += 16;
          --*&v133;
        }

        while (v133 != 0.0);
        v135 = &v195[40 * v131];
        v64 = *&v201;
        while (1)
        {
          v136 = *(v63 + 2);
          if (v131 == v136)
          {
            break;
          }

          if (v131 >= v136)
          {
            goto LABEL_197;
          }

          ++v131;
          outlined init with copy of AnyTrackedValue(v135, &v219);
          v137 = v221;
          a4 = v222;
          __swift_project_boxed_opaque_existential_1(&v219, v221);
          *(v114 - 8) = CVarArg.kdebugValue(_:)(Counter | v111, v137, a4);
          *v114 = v138 & 1;
          v114 += 16;
          v115 = __swift_destroy_boxed_opaque_existential_1(&v219);
          v135 += 40;
          if (!--v64)
          {
            goto LABEL_119;
          }
        }

        v214.i8[0] = 0;
LABEL_119:
        v139 = v194;
        if (v194 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (*(v4 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v139 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v140 = v197->Kind;
        v141 = v200;
        v142 = v203;
        (v197->Kind)(v200, v203);
        v143 = __swift_project_value_buffer(v142, static OSSignpostID.continuation);
        v130 = v189(v141, v143, v142);
      }

      while ((v214.i8[0] & 1) != 0);
      v74 = v181;

      v144 = v203;
      v140(v141, v203);
      v140(v180, v144);
    }

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
    a4 = v192;
LABEL_135:
    a4[2].Description = v74;
    Counter = v191;
    v127 = v182;
LABEL_136:
    specialized AnimatorState.addListeners(transaction:)(v127);

    a3 = v188;
LABEL_137:
    *&v32 = v187;
    *&v31 = v186;
    v37 = v185;
    v36 = v184;
LABEL_138:
    v145.i64[0] = v32;
    v145.i64[1] = DWORD1(v32);
    *(&a4->Description + 4) = vorrq_s8(vshll_n_s32(*&v31, 0x20uLL), v145);
    *(&a4[1].Description + 4) = (LODWORD(v36) | (LODWORD(v37) << 32));
    BYTE4(a4[2].Kind) = 0;
LABEL_139:
    v63 = a4[2].Description;
    if (!v63)
    {
      return;
    }

    v146.i64[0] = 0x4300000043000000;
    v146.i64[1] = 0x4300000043000000;
    v219 = vmulq_f32(*Counter, v146);
    v220 = vmul_f32(*(Counter + 16), 0x4300000043000000);

    LOBYTE(v224) = 0;
    v147 = specialized AnimatorState.update(_:at:environment:)(&v219, a3, v30);
    v115 = AGGraphGetCurrentAttribute();
    v64 = *MEMORY[0x1E698D3F8];
    if (v115 == v64)
    {
      LODWORD(v114) = 0;
    }

    else
    {
      LODWORD(v114) = v115;
    }

    v111 = &type metadata instantiation cache for TupleTypeDescription;
    if (v147)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_198;
      }

      goto LABEL_145;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_200;
    }

LABEL_158:
    v158 = *(v111 + 616);
    if (*(v158 + 16) >= 0x43uLL)
    {
      if (*(v158 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v224) = v114;
        BYTE4(v224) = v115 == v64;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_193;
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_150:
    v150 = *(&static Signpost.animationState + 1);
    v23 = static Signpost.animationState;
    v62 = word_1ED5283E8;
    v59 = HIBYTE(word_1ED5283E8);
    v151 = byte_1ED5283EA;
    a4 = static os_signpost_type_t.end.getter();
    v224 = __PAIR128__(v150, v23);
    LOBYTE(v225.Kind) = v62;
    BYTE1(v225.Kind) = v59;
    BYTE2(v225.Kind) = v151;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_192;
    }

    v191 = Counter;
    v152 = one-time initialization token for _signpostLog;

    if (v152 != -1)
    {
      swift_once();
    }

    v61 = _signpostLog;
    v190 = v63;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    Counter = swift_allocObject();
    *(Counter + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v64)
    {
      break;
    }

    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    swift_once();
  }

  v63 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v153 = MEMORY[0x1E69E6870];
  *(Counter + 56) = MEMORY[0x1E69E6810];
  *(Counter + 64) = v153;
  *(Counter + 32) = v4;
  v154 = AGGraphGetCurrentAttribute();
  if (v154 == v64)
  {
    goto LABEL_204;
  }

  v155 = MEMORY[0x1E69E76D0];
  *(Counter + 96) = MEMORY[0x1E69E7668];
  *(Counter + 104) = v155;
  *(Counter + 72) = v154;
  *(Counter + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(Counter + 144) = v156;
  *(Counter + 112) = 0x6465766C6F736552;
  *(Counter + 120) = 0xEF656E6F746F7544;
  if (v59)
  {
    LOBYTE(v204) = a4;
    v207 = &dword_18D018000;
    v206 = v61;
    *&v224 = v23;
    *(&v224 + 1) = v150;
    LOBYTE(v225.Kind) = v62;
    v214.i64[0] = "Animation: (%p) [%d] %{public}@ ended";
    v214.i64[1] = 37;
    v215.i8[0] = 2;
    v205 = Counter;
    v157 = v193;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v204, &v207, &v206, &v224, v193, &v214, &v205);

    (*(v199 + 8))(v157, v203);
    goto LABEL_191;
  }

  v159 = v23;
  if (v23 == 20)
  {
    v160 = 3;
  }

  else
  {
    v160 = 4;
  }

  v111 = bswap32(v23) | (4 * (v23 >> 16));
  LODWORD(v114) = a4;
  v161 = v199 + 16;
  v194 = *(v199 + 16);
  v162 = (v194)(v202, v193, v203);
  v163 = 0;
  v214.i8[0] = 1;
  v201 = *&v160;
  v197 = (16 * v160);
  v199 = v161;
  v198 = (v161 - 8);
  v196 = Counter + 32;
  v195 = v159;
  do
  {
    v200 = &v179;
    MEMORY[0x1EEE9AC00](v162);
    v63 = &v179 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
    v165 = v63 + 8;
    v166 = v201;
    v167 = v63 + 8;
    do
    {
      *(v167 - 1) = 0;
      *v167 = 0;
      v167 += 16;
      --*&v166;
    }

    while (v166 != 0.0);
    v4 = v196 + 40 * v163;
    v64 = *&v201;
    while (1)
    {
      v168 = *(Counter + 16);
      if (v163 == v168)
      {
        break;
      }

      if (v163 >= v168)
      {
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        v177 = v115;
        swift_once();
        v115 = v177;
LABEL_145:
        v148 = *(v111 + 616);
        if (*(v148 + 16) >= 0x43uLL)
        {
          if (*(v148 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v224) = v114;
            BYTE4(v224) = v115 == v64;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v192 = a4;
          v149 = one-time initialization token for animationState;

          if (v149 != -1)
          {
            goto LABEL_202;
          }

          goto LABEL_150;
        }

        __break(1u);
LABEL_200:
        v178 = v115;
        swift_once();
        v115 = v178;
        goto LABEL_158;
      }

      ++v163;
      outlined init with copy of AnyTrackedValue(v4, &v224);
      v169 = v225.Description;
      a4 = v226.Kind;
      __swift_project_boxed_opaque_existential_1(&v224, v225.Description);
      *(v165 - 1) = CVarArg.kdebugValue(_:)(v111 | v114, v169, a4);
      *v165 = v170 & 1;
      v165 += 16;
      v115 = __swift_destroy_boxed_opaque_existential_1(&v224);
      v4 += 40;
      if (!--v64)
      {
        goto LABEL_176;
      }
    }

    v214.i8[0] = 0;
LABEL_176:
    v171 = v195;
    if (v195 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v63[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v63[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v63[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v171 != 20 && v63[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v172 = v198->Kind;
    a4 = v202;
    v173 = v203;
    (v198->Kind)(v202, v203);
    v174 = __swift_project_value_buffer(v173, static OSSignpostID.continuation);
    v162 = (v194)(a4, v174, v173);
  }

  while ((v214.i8[0] & 1) != 0);

  v175 = v203;
  v172(v202, v203);
  v172(v193, v175);
LABEL_191:

  Counter = v191;
LABEL_192:
  specialized AnimatorState.removeListeners()();

  v192[2].Description = 0;
LABEL_193:
  v176.i64[0] = 0x3C0000003C000000;
  v176.i64[1] = 0x3C0000003C000000;
  *Counter = vmulq_f32(v219, v176);
  *(Counter + 16) = vmul_f32(v220, 0x3C0000003C000000);
  *(Counter + 24) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t *a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(float, float, float, float), unint64_t *a8, float32x2_t a10, uint64_t (*a9)(void), uint64_t (*a11)(void), void (*a12)(void))
{
  v215 = a8;
  v208 = a7;
  LODWORD(v21) = a3;
  v238 = *MEMORY[0x1E69E9840];
  v218 = type metadata accessor for OSSignpostID();
  v214 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  Counter = &v190 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v190 - v27;
  MEMORY[0x1EEE9AC00](v29);
  *&v216 = &v190 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v190 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v217 = &v190 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v207 = &v190 - v37;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v39)
    {
      v40 = *Value;
    }

    else
    {
      v40 = -INFINITY;
    }
  }

  else
  {
    v40 = -INFINITY;
  }

  v41 = &static Color.Resolved.legacyInterpolation;
  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 16) = 1;
    goto LABEL_9;
  }

  if (*(a1 + 16) == 1)
  {
LABEL_9:
    LODWORD(v16) = *a1;
    LODWORD(v15) = *(a1 + 1);
    LODWORD(v14) = *(a1 + 2);
    LODWORD(v13) = *(a1 + 3);
    if (one-time initialization token for legacyInterpolation != -1)
    {
      goto LABEL_192;
    }

    goto LABEL_10;
  }

LABEL_127:
  v156 = *(a4 + 32);
  if (!v156)
  {
    return;
  }

  v216 = *a1;
  v157 = one-time initialization token for legacyInterpolation;

  if (v157 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v158 = *v41;
  v211 = a5;
  if (v158)
  {
    v159 = &v238;
  }

  else
  {
    v230.i8[0] = 2;
    ResolvedGradient.ColorSpace.convertIn(_:)(&v224, *&v216, DWORD1(v216), *(&v216 + 2), *(&v216 + 3));
    v159 = &v239;
  }

  v160.i64[0] = 0x4300000043000000;
  v160.i64[1] = 0x4300000043000000;
  v223 = vmulq_f32(v159[-16], v160);
  LOBYTE(v224) = 0;
  v161 = specialized AnimatorState.update(_:at:environment:)(&v223, v21, v40);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v64 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v163 = 0;
  }

  else
  {
    v163 = CurrentAttribute;
  }

  if (v161)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      v188 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v188;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
        LODWORD(v224) = v163;
        BYTE4(v224) = CurrentAttribute == v64;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      v205 = a4;
      v206 = a1;
      v164 = one-time initialization token for animationState;
      v204 = v156;

      if (v164 == -1)
      {
        goto LABEL_144;
      }

      goto LABEL_196;
    }

    __break(1u);
    goto LABEL_194;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
LABEL_194:
    v189 = CurrentAttribute;
    swift_once();
    CurrentAttribute = v189;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
      LODWORD(v224) = v163;
      BYTE4(v224) = CurrentAttribute == v64;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    specialized AnimatorState.nextUpdate()();
    goto LABEL_187;
  }

  __break(1u);
LABEL_196:
  swift_once();
LABEL_144:
  v63 = *(&static Signpost.animationState + 1);
  v62 = static Signpost.animationState;
  v165 = word_1ED5283E8;
  v166 = HIBYTE(word_1ED5283E8);
  v167 = byte_1ED5283EA;
  v59 = static os_signpost_type_t.end.getter();
  v224 = v62;
  v225 = v63;
  LOBYTE(v226) = v165;
  BYTE1(v226) = v166;
  BYTE2(v226) = v167;
  if ((Signpost.isEnabled.getter() & 1) == 0)
  {

    goto LABEL_186;
  }

  v168 = one-time initialization token for _signpostLog;

  if (v168 != -1)
  {
    swift_once();
  }

  v209 = a6;
  v61 = _signpostLog;
  OSSignpostID.init(log:object:)();
  type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18DDAF080;
  if (AGGraphGetCurrentAttribute() == v64)
  {
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    swift_once();
    goto LABEL_27;
  }

  a6 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v169 = MEMORY[0x1E69E6870];
  *(v21 + 56) = MEMORY[0x1E69E6810];
  *(v21 + 64) = v169;
  *(v21 + 32) = Counter;
  v170 = AGGraphGetCurrentAttribute();
  if (v170 == v64)
  {
    goto LABEL_198;
  }

  v171 = MEMORY[0x1E69E76D0];
  *(v21 + 96) = MEMORY[0x1E69E7668];
  *(v21 + 104) = v171;
  *(v21 + 72) = v170;
  *(v21 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v21 + 144) = v172;
  v173 = v209;
  *(v21 + 112) = v211;
  *(v21 + 120) = v173;
  if (v166)
  {
    v222 = v59;
    v221 = &dword_18D018000;
    v220 = v61;
    v224 = v62;
    v225 = v63;
    LOBYTE(v226) = v165;
    v230 = "Animation: (%p) [%d] %{public}@ ended";
    v231 = 37;
    LOBYTE(v232) = 2;
    v219 = v21;
    v174 = v207;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v222, &v221, &v220, &v224, v207, &v230, &v219);

    (*(v214 + 8))(v174, v218);
    goto LABEL_185;
  }

  if (v62 == 20)
  {
    v41 = 3;
  }

  else
  {
    v41 = 4;
  }

  a5 = bswap32(v62) | (4 * WORD1(v62));
  a4 = v59;
  a2 = v214 + 16;
  v209 = *(v214 + 16);
  v175 = v209(v217, v207, v218);
  a6 = 0;
  v230.i8[0] = 1;
  *&v216 = v41;
  v212 = (16 * v41);
  v214 = a2;
  v213 = (a2 - 8);
  v211 = v21 + 32;
  v210 = v62;
  do
  {
    v215 = &v190;
    MEMORY[0x1EEE9AC00](v175);
    v28 = &v190 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = (v28 + 8);
    v177 = v216;
    v178 = (v28 + 8);
    do
    {
      *(v178 - 1) = 0;
      *v178 = 0;
      v178 += 16;
      --v177;
    }

    while (v177);
    Counter = v211 + 40 * a6;
    a1 = v216;
    while (1)
    {
      v179 = *(v21 + 16);
      if (a6 == v179)
      {
        break;
      }

      if (a6 >= v179)
      {
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        swift_once();
LABEL_10:
        swift_beginAccess();
        v42 = *v41;
        v213 = a2;
        if ((v42 & 1) == 0)
        {
          LOBYTE(v236) = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v224, *&v16, v15, *&v14, *&v13);
          LODWORD(v15) = HIDWORD(v224);
          LODWORD(v16) = v224;
          LODWORD(v13) = HIDWORD(v225);
          LODWORD(v14) = v225;
        }

        v12 = *&v16 * 128.0;
        v17 = *&v15 * 128.0;
        v43 = *&v14 * 128.0;
        *&v16 = *&v13 * 128.0;
        if (*(a4 + 28))
        {
          goto LABEL_126;
        }

        v15 = *&v40;
        LODWORD(v13) = *(a4 + 12);
        LODWORD(v14) = *(a4 + 16);
        v44 = *(a4 + 20);
        v45 = *(a4 + 24);
        if (v12 == *&v13 && v17 == *&v14 && v43 == v44 && *&v16 == v45)
        {
          v40 = *&v15;
          goto LABEL_126;
        }

        v212 = Counter;
        v190 = v28;
        v191 = v33;
        v209 = a6;
        LODWORD(v210) = v21;
        v196 = v43;
        AGGraphClearUpdate();
        v46 = *(a4 + 16);
        v236 = *a4;
        *v237 = v46;
        *&v237[12] = *(a4 + 28);
        v47 = v215;
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v236, &v224, v215, a9, a11, type metadata accessor for AnimatableAttributeHelper);
        v48 = *AGGraphGetValue();

        v197 = a9;
        v204 = a11;
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, v47, a9, a11, type metadata accessor for AnimatableAttributeHelper);
        AGGraphSetUpdate();
        v195 = v48;
        v49 = Transaction.effectiveAnimation.getter(v48);
        if (v49)
        {
          Counter = v49;
          v194 = *&v16;
          LODWORD(v21) = v210;
          goto LABEL_22;
        }

        v41 = &static Color.Resolved.legacyInterpolation;
        LODWORD(v21) = v210;
        Counter = v213;
        if (!v213)
        {

          v40 = *&v15;
          v43 = v196;
          a6 = v209;
          goto LABEL_126;
        }

        v194 = *&v16;

LABEL_22:
        v211 = a5;
        v50 = *&v237[16];
        v51 = v12 - *&v13;
        v52 = v17 - *&v14;
        v53 = v196 - v44;
        v54 = v194 - v45;
        v40 = *AGGraphGetValue();
        v206 = a1;
        v205 = a4;
        v192 = Counter;
        if (!v50)
        {
          v230 = v204;
          a12(0);
          type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Type, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
          v69 = swift_dynamicCast();
          if (v69)
          {
            v70 = v224;
          }

          else
          {
            v70 = 0;
          }

          if (v69)
          {
            v71 = v225;
          }

          else
          {
            v71 = 0;
          }

          v72 = v195;

          v193 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVyS2fGGG_Tt4B5(v73, v72, v70, v71, v51, v52, v53, v54, v40);
          v74 = AGGraphGetCurrentAttribute();
          v75 = v74;
          v76.i32[0] = *MEMORY[0x1E698D3F8];
          if (v74 == *MEMORY[0x1E698D3F8])
          {
            v77 = 0;
          }

          else
          {
            v77 = v74;
          }

          LODWORD(v213) = v77;
          (*(*Counter + 96))(&v230);
          v78 = v230;
          v79 = v231;
          v80 = v233;
          v81 = v234;
          v223.i64[0] = 0x7FF8000000000000;
          v221 = 0x7FF8000000000000;
          v220 = 0x3FF0000000000000;
          v219 = 0x7FF8000000000000;
          v224 = v230;
          v225 = v231;
          v82 = v232;
          v226 = v232;
          v227 = v233;
          v228 = v234;
          LODWORD(v216) = v235;
          LOBYTE(v229) = v235;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v224, &v223, &v221, &v220, &v219);
          v13 = v223.i64[0];
          v14 = v221;
          v15 = v220;
          v16 = v219;
          if (one-time initialization token for enabledCategories != -1)
          {
            swift_once();
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
          {
            __break(1u);
          }

          else
          {
            if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v83 = static CustomEventTrace.recorder) != 0)
            {
              LODWORD(v203) = v76.i32[0];
              *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
              v21 = *(v83 + 16);
              LODWORD(v224) = v213;
              BYTE4(v224) = v75 == v76.i32[0];
              v225 = v204;
              v226 = v13;
              v227 = v14;
              v228 = v15;
              v229 = v16;
              type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
              v213 = v84;

              v85 = v21;
              LODWORD(v21) = v210;
              v86 = v85;
              AGGraphAddTraceEvent();
              v76.i32[0] = v203;
              outlined consume of Animation.Function(v78, v79, v82, v80, v81, v216);
            }

            else
            {
              outlined consume of Animation.Function(v78, v79, v82, v80, v81, v216);
            }

            v92 = one-time initialization token for animationState;
            v78 = v193;

            *&v16 = v194;
            if (v92 == -1)
            {
              goto LABEL_49;
            }
          }

          swift_once();
LABEL_49:
          v94 = *(&static Signpost.animationState + 1);
          v93 = static Signpost.animationState;
          LOBYTE(Counter) = word_1ED5283E8;
          v95 = HIBYTE(word_1ED5283E8);
          v96 = byte_1ED5283EA;
          v97 = static os_signpost_type_t.begin.getter();
          v224 = v93;
          v225 = v94;
          LOBYTE(v226) = Counter;
          BYTE1(v226) = v95;
          BYTE2(v226) = v96;
          if (Signpost.isEnabled.getter())
          {
            v98 = one-time initialization token for _signpostLog;

            if (v98 != -1)
            {
              goto LABEL_206;
            }

            goto LABEL_51;
          }

          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, v215, v197, v204, type metadata accessor for AnimatableAttributeHelper);
          a4 = v205;
          v205[4] = v78;
          goto LABEL_123;
        }

        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v236, &v224, v215, v197, v204, type metadata accessor for AnimatableAttributeHelper);
        LOBYTE(v224) = 0;
        v55.n128_f32[0] = v51;
        v56.n128_f32[0] = v52;
        v57.n128_f32[0] = v53;
        v193 = v50;
        specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(Counter, v195, v21, v55, v56, v57, v54, v40);
        v58 = AGGraphGetCurrentAttribute();
        LODWORD(v21) = v58;
        v59 = *MEMORY[0x1E698D3F8];
        if (v58 == *MEMORY[0x1E698D3F8])
        {
          v60 = 0;
        }

        else
        {
          v60 = v58;
        }

        LODWORD(v213) = v60;
        (*(*Counter + 96))(&v230);
        v61 = v230;
        v62 = v231;
        Counter = v232;
        v63 = v233;
        a6 = v234;
        v64 = v235;
        v223.i64[0] = 0x7FF8000000000000;
        v221 = 0x7FF8000000000000;
        v220 = 0x3FF0000000000000;
        v219 = 0x7FF8000000000000;
        v224 = v230;
        v225 = v231;
        v226 = v232;
        v227 = v233;
        v228 = v234;
        LOBYTE(v229) = v235;
        static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v224, &v223, &v221, &v220, &v219);
        v13 = v223.i64[0];
        v14 = v221;
        v15 = v220;
        v16 = v219;
        if (one-time initialization token for enabledCategories != -1)
        {
          goto LABEL_199;
        }

LABEL_27:
        if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
        {
          __break(1u);
LABEL_201:
          swift_once();
          goto LABEL_60;
        }

        if (*(static CustomEventTrace.enabledCategories + 98) == 1)
        {
          v212 = a6;
          v65 = static CustomEventTrace.recorder;
          if (static CustomEventTrace.recorder)
          {
            LODWORD(v203) = v64;
            *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
            v66 = *(v65 + 16);
            LODWORD(v224) = v213;
            BYTE4(v224) = v21 == v59;
            v225 = v204;
            v226 = v13;
            v227 = v14;
            v228 = v15;
            v229 = v16;
            type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
            v213 = v67;

            v68 = v66;
            AGGraphAddTraceEvent();
            outlined consume of Animation.Function(v61, v62, Counter, v63, v212, v203);

            goto LABEL_59;
          }

          v87 = v61;
          v88 = v62;
          v89 = Counter;
          v90 = v63;
          v91 = v212;
        }

        else
        {
          v87 = v61;
          v88 = v62;
          v89 = Counter;
          v90 = v63;
          v91 = a6;
        }

        outlined consume of Animation.Function(v87, v88, v89, v90, v91, v64);
LABEL_59:
        LODWORD(v62) = v59;
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v236, &v224, v215, v197, v204, type metadata accessor for AnimatableAttributeHelper);
        LODWORD(v21) = v210;
        *&v16 = v194;
        Counter = v192;
        if (one-time initialization token for animationState != -1)
        {
          goto LABEL_201;
        }

LABEL_60:
        v93 = *(&static Signpost.animationState + 8);
        v76 = static Signpost.animationState;
        v94 = word_1ED5283E8;
        v95 = HIBYTE(word_1ED5283E8);
        v109 = byte_1ED5283EA;
        v97 = static os_signpost_type_t.event.getter();
        v224 = v76;
        v225 = v93;
        LOBYTE(v226) = v94;
        BYTE1(v226) = v95;
        BYTE2(v226) = v109;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v122 = v215;
          v123 = v197;
          v124 = v204;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, v215, v197, v204, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, v122, v123, v124, type metadata accessor for AnimatableAttributeHelper);
          a4 = v205;
          a5 = v211;
LABEL_68:
          a6 = v209;
          goto LABEL_125;
        }

        LODWORD(v213) = v97;
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v236, &v224, v215, v197, v204, type metadata accessor for AnimatableAttributeHelper);
        if (one-time initialization token for _signpostLog != -1)
        {
          swift_once();
        }

        v110 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v62)
        {
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          swift_once();
LABEL_51:
          LODWORD(v216) = v97;
          v99 = _signpostLog;
          OSSignpostID.init(log:object:)();
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          v33 = swift_allocObject();
          *(v33 + 1) = xmmword_18DDAF080;
          if (AGGraphGetCurrentAttribute() == v76.i32[0])
          {
            __break(1u);
          }

          else
          {
            v100 = AGGraphGetAttributeGraph();
            v101 = AGGraphGetCounter();

            v102 = MEMORY[0x1E69E6870];
            *(v33 + 7) = MEMORY[0x1E69E6810];
            *(v33 + 8) = v102;
            *(v33 + 4) = v101;
            v103 = AGGraphGetCurrentAttribute();
            if (v103 != v76.i32[0])
            {
              v104 = MEMORY[0x1E69E76D0];
              *(v33 + 12) = MEMORY[0x1E69E7668];
              *(v33 + 13) = v104;
              *(v33 + 18) = v103;
              *(v33 + 17) = MEMORY[0x1E69E6158];
              lazy protocol witness table accessor for type String and conformance String();
              *(v33 + 18) = v105;
              a5 = v211;
              v106 = v209;
              *(v33 + 14) = v211;
              *(v33 + 15) = v106;
              if (v95)
              {
                LOBYTE(v219) = v216;
                v223.i64[0] = &dword_18D018000;
                v221 = v99;
                v224 = v93;
                v225 = v94;
                LOBYTE(v226) = Counter;
                v230 = "Animation: (%p) [%d] %{public}@ started";
                v231 = 39;
                LOBYTE(v232) = 2;
                v220 = v33;
                v107 = v190;
                specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v219, &v223, &v221, &v224, v190, &v230, &v220);
                v108 = v193;

                (*(v214 + 8))(v107, v218);

                outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, v215, v197, v204, type metadata accessor for AnimatableAttributeHelper);
                a4 = v205;
                v205[4] = v108;
                a6 = v209;
LABEL_124:
                Counter = v192;
                goto LABEL_125;
              }

              v141 = v93.u8[0];
              if (v93.u8[0] == 20)
              {
                a2 = 3;
              }

              else
              {
                a2 = 4;
              }

              Counter = bswap32(v93.u16[0]) | (4 * HIWORD(v93.i32[0]));
              a5 = v216;
              v41 = v214 + 16;
              v198 = *(v214 + 16);
              v142 = v198(v212, v190, v218);
              a4 = 0;
              v230.i8[0] = 1;
              *&v216 = a2;
              v202 = 16 * a2;
              v199 = v41;
              v203 = (v41 - 8);
              v201 = v33 + 32;
              v200 = v141;
              do
              {
                v213 = &v190;
                MEMORY[0x1EEE9AC00](v142);
                v28 = &v190 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
                a1 = (v28 + 8);
                v144 = v216;
                v145 = (v28 + 8);
                do
                {
                  *(v145 - 1) = 0;
                  *v145 = 0;
                  v145 += 16;
                  --v144;
                }

                while (v144);
                a6 = &v201[40 * a4];
                v21 = v216;
                while (1)
                {
                  v146 = *(v33 + 2);
                  if (a4 == v146)
                  {
                    break;
                  }

                  if (a4 >= v146)
                  {
                    goto LABEL_191;
                  }

                  ++a4;
                  outlined init with copy of AnyTrackedValue(a6, &v224);
                  a2 = v227;
                  v147 = v228;
                  v148 = __swift_project_boxed_opaque_existential_1(&v224, v227);
                  v149 = v147;
                  v41 = v148;
                  *(a1 - 1) = CVarArg.kdebugValue(_:)(Counter | a5, a2, v149);
                  *a1 = v150 & 1;
                  a1 += 2;
                  __swift_destroy_boxed_opaque_existential_1(&v224);
                  a6 += 40;
                  if (!--v21)
                  {
                    goto LABEL_108;
                  }
                }

                v230.i8[0] = 0;
LABEL_108:
                v151 = v200;
                if (v200 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                LODWORD(v21) = v210;
                if (*(v28 + 8) == 1)
                {
                  kdebug_trace_string();
                }

                if (*(v28 + 24) == 1)
                {
                  kdebug_trace_string();
                }

                if (*(v28 + 40) == 1)
                {
                  kdebug_trace_string();
                }

                if (v151 != 20 && *(v28 + 56) == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                a2 = *v203;
                v152 = v212;
                v41 = v218;
                (*v203)(v212, v218);
                v153 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
                v142 = v198(v152, v153, v41);
              }

              while ((v230.i8[0] & 1) != 0);
              v154 = v193;

              v155 = v218;
              (a2)(v212, v218);
              (a2)(v190, v155);

              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, v215, v197, v204, type metadata accessor for AnimatableAttributeHelper);
              a4 = v205;
              v205[4] = v154;
LABEL_123:
              a6 = v209;
              a5 = v211;
              goto LABEL_124;
            }
          }

          __break(1u);
        }

        v97 = v62;
        v111 = AGGraphGetAttributeGraph();
        v112 = AGGraphGetCounter();

        v113 = MEMORY[0x1E69E6870];
        *(v21 + 56) = MEMORY[0x1E69E6810];
        *(v21 + 64) = v113;
        *(v21 + 32) = v112;
        v114 = AGGraphGetCurrentAttribute();
        if (v114 == v97)
        {
          goto LABEL_205;
        }

        v115 = MEMORY[0x1E69E76D0];
        *(v21 + 96) = MEMORY[0x1E69E7668];
        *(v21 + 104) = v115;
        *(v21 + 72) = v114;
        *(v21 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v21 + 144) = v116;
        v117 = v209;
        *(v21 + 112) = v211;
        *(v21 + 120) = v117;
        if (v95)
        {
          LOBYTE(v219) = v213;
          v223.i64[0] = &dword_18D018000;
          v221 = v110;
          v224 = v76;
          v225 = v93;
          LOBYTE(v226) = v94;
          v230 = "Animation: (%p) [%d] %{public}@ updated";
          v231 = 39;
          LOBYTE(v232) = 2;
          v220 = v21;
          v118 = v191;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v219, &v223, &v221, &v224, v191, &v230, &v220);
          v119 = v215;
          v120 = v197;
          v121 = v204;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, v215, v197, v204, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, v119, v120, v121, type metadata accessor for AnimatableAttributeHelper);
          (*(v214 + 8))(v118, v218);

          a4 = v205;
          a5 = v211;
          LODWORD(v21) = v210;
          goto LABEL_68;
        }

        if (v76.u8[0] == 20)
        {
          a2 = 3;
        }

        else
        {
          a2 = 4;
        }

        v28 = bswap32(v76.u16[0]) | (4 * HIWORD(v76.i32[0]));
        a6 = v213;
        v41 = v214 + 16;
        v198 = *(v214 + 16);
        v125 = v198(v216, v191, v218);
        a4 = 0;
        v230.i8[0] = 1;
        v213 = a2;
        v202 = 16 * a2;
        v199 = v41;
        v203 = (v41 - 8);
        v201 = (v21 + 32);
        v200 = v76.u8[0];
        do
        {
          v212 = &v190;
          MEMORY[0x1EEE9AC00](v125);
          Counter = &v190 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
          a5 = Counter + 8;
          v127 = v213;
          v128 = (Counter + 8);
          do
          {
            *(v128 - 1) = 0;
            *v128 = 0;
            v128 += 16;
            v127 = (v127 - 1);
          }

          while (v127);
          v33 = &v201[40 * a4];
          a1 = v213;
          while (1)
          {
            v129 = *(v21 + 16);
            if (a4 == v129)
            {
              break;
            }

            if (a4 >= v129)
            {
              goto LABEL_190;
            }

            ++a4;
            outlined init with copy of AnyTrackedValue(v33, &v224);
            a2 = v227;
            v130 = v228;
            v131 = __swift_project_boxed_opaque_existential_1(&v224, v227);
            v132 = v130;
            v41 = v131;
            *(a5 - 8) = CVarArg.kdebugValue(_:)(v28 | a6, a2, v132);
            *a5 = v133 & 1;
            a5 += 16;
            __swift_destroy_boxed_opaque_existential_1(&v224);
            v33 += 40;
            a1 = (a1 - 1);
            if (!a1)
            {
              goto LABEL_81;
            }
          }

          v230.i8[0] = 0;
LABEL_81:
          v134 = v200;
          if (v200 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          if (*(Counter + 8) == 1)
          {
            kdebug_trace_string();
          }

          if (*(Counter + 24) == 1)
          {
            kdebug_trace_string();
          }

          if (*(Counter + 40) == 1)
          {
            kdebug_trace_string();
          }

          if (v134 != 20 && *(Counter + 56) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v41 = *v203;
          v135 = v216;
          a2 = v218;
          (*v203)(v216, v218);
          v136 = __swift_project_value_buffer(a2, static OSSignpostID.continuation);
          v125 = v198(v135, v136, a2);
        }

        while ((v230.i8[0] & 1) != 0);
        v137 = v215;
        v138 = v197;
        v139 = v204;
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, v215, v197, v204, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, v137, v138, v139, type metadata accessor for AnimatableAttributeHelper);
        v140 = v218;
        (v41)(v216, v218);
        (v41)(v191, v140);

        a4 = v205;
        a6 = v209;
        a5 = v211;
        LODWORD(v21) = v210;
        Counter = v192;
LABEL_125:
        specialized AnimatorState.addListeners(transaction:)(v195);

        a1 = v206;
        v41 = &static Color.Resolved.legacyInterpolation;
        v43 = v196;
LABEL_126:
        *(a4 + 12) = LODWORD(v12) | (LODWORD(v17) << 32);
        *(a4 + 20) = LODWORD(v43) | (v16 << 32);
        *(a4 + 28) = 0;
        goto LABEL_127;
      }

      ++a6;
      outlined init with copy of AnyTrackedValue(Counter, &v224);
      v180 = v227;
      a2 = v228;
      v181 = __swift_project_boxed_opaque_existential_1(&v224, v227);
      v182 = v180;
      v41 = v181;
      *(v33 - 1) = CVarArg.kdebugValue(_:)(a5 | a4, v182, a2);
      *v33 = v183 & 1;
      v33 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v224);
      Counter += 40;
      a1 = (a1 - 1);
      if (!a1)
      {
        goto LABEL_170;
      }
    }

    v230.i8[0] = 0;
LABEL_170:
    v184 = v210;
    if (v210 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(v28 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v28 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v28 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v184 != 20 && *(v28 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    a2 = *v213;
    v185 = v217;
    v41 = v218;
    (*v213)(v217, v218);
    v186 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
    v175 = v209(v185, v186, v41);
  }

  while ((v230.i8[0] & 1) != 0);

  v187 = v218;
  (a2)(v217, v218);
  (a2)(v207, v187);
LABEL_185:

LABEL_186:
  specialized AnimatorState.removeListeners()();

  v205[4] = 0;
  a1 = v206;
LABEL_187:
  v208(v223.f32[0], v223.f32[1], v223.f32[2], v223.f32[3]);

  *(a1 + 16) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(void *a1, uint64_t a2, int a3, unint64_t a4)
{

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x7465736E495FLL, 0xE600000000000000, &type metadata for Circle._Inset.Kind, type metadata accessor for Circle._Inset.Type);
}

{

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x7465736E495FLL, 0xE600000000000000, &type metadata for Ellipse._Inset.Kind, type metadata accessor for Ellipse._Inset.Type);
}

{

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x7465736E495FLL, 0xE600000000000000, &type metadata for Rectangle._Inset.Kind, type metadata accessor for Rectangle._Inset.Type);
}

{
  v4 = MEMORY[0x1E69E63B0];

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x656C62756F44, 0xE600000000000000, v4, type metadata accessor for Double.Type);
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x657A69534743, 0xE600000000000000, outlined init with copy of AnimatableAttributeHelper<CGSize>, outlined destroy of AnimatableAttributeHelper<CGSize>, type metadata accessor for CGSize, &lazy cache variable for type metadata for CGSize.Type, type metadata accessor for CGSize);
}

{
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x746E696F504743, 0xE700000000000000, outlined init with copy of AnimatableAttributeHelper<CGPoint>, outlined destroy of AnimatableAttributeHelper<CGPoint>, type metadata accessor for CGPoint, &lazy cache variable for type metadata for CGPoint.Type, type metadata accessor for CGPoint);
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7, void (*a8)(unsigned __int128 *, __n128), uint64_t (*a9)(void), unint64_t *a10, uint64_t (*a11)(uint64_t))
{
  v215 = a8;
  v239 = *MEMORY[0x1E69E9840];
  v220 = type metadata accessor for OSSignpostID();
  v216 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v217 = v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  Counter = v198 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v218 = v198 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v198 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v219 = v198 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v210 = v198 - v34;
  if (*(a4 + 40))
  {
    Value = AGGraphGetValue();
    if (v36)
    {
      v37 = *Value;
    }

    else
    {
      v37 = -INFINITY;
    }
  }

  else
  {
    v37 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    a1[16] = 1;
  }

  else if (a1[16] != 1)
  {
    goto LABEL_122;
  }

  v13 = *a1;
  v14 = *(a1 + 1);
  if (*(a4 + 32))
  {
    goto LABEL_121;
  }

  v12 = *(a4 + 16);
  v11 = *(a4 + 24);
  if (v13 == *&v12 && v14 == v11)
  {
    goto LABEL_121;
  }

  v200 = v30;
  AGGraphClearUpdate();
  v38 = *(a4 + 16);
  v235 = *a4;
  v236 = v38;
  v237 = *(a4 + 32);
  v238 = *(a4 + 48);
  (a7)(&v235, &v230);
  v39 = *AGGraphGetValue();

  (v215)(&v235);
  AGGraphSetUpdate();
  v202 = v39;
  v40 = Transaction.effectiveAnimation.getter(v39);
  if (v40)
  {
    v41 = v40;
    v212 = a6;
  }

  else
  {
    if (!a2)
    {

      goto LABEL_121;
    }

    v212 = a6;

    v41 = a2;
  }

  v213 = a5;
  v42 = v13 - *&v12;
  v43 = v14 - v11;
  v44 = *(&v237 + 1);
  v37 = *AGGraphGetValue();
  v204 = a1;
  v203 = a4;
  v199 = a3;
  v198[1] = v41;
  if (!v44)
  {
    v63 = a9(0);
    *&v225.f64[0] = v63;
    type metadata accessor for CGRect.Type(0, a10, a11);
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, CGFloat>>.Type, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v64 = swift_dynamicCast();
    if (v64)
    {
      v65 = v230;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = *(&v230 + 1);
    }

    else
    {
      v66 = 0;
    }

    v55 = v202;

    v201 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(v67, v55, v65, v66, v42, v43, v37);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v69 = CurrentAttribute;
    LODWORD(v55) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v70 = 0;
    }

    else
    {
      v70 = CurrentAttribute;
    }

    (*(*v41 + 96))(&v225);
    v71 = v225;
    v72 = v226;
    v73 = v227;
    v74 = v228;
    v224 = NAN;
    v223 = NAN;
    v222 = 0x3FF0000000000000;
    v221 = NAN;
    v230 = v225;
    v231 = *&v226;
    v232 = v227;
    v233 = v228;
    LODWORD(v218) = v229;
    LOBYTE(v234) = v229;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v230, &v224, &v223, &v222, &v221);
    v11 = v224;
    *&v12 = v223;
    v75 = v222;
    v76 = v221;
    if (one-time initialization token for enabledCategories != -1)
    {
      v214 = v222;
      *&v211 = v221;
      swift_once();
      v76 = *&v211;
      v75 = v214;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_192;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v214 = v73;
      v77 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v78 = v63;
        v79 = *(v77 + 16);
        LODWORD(v230) = v70;
        BYTE4(v230) = v69 == v55;
        *(&v230 + 1) = v78;
        v231 = v11;
        v232 = v12;
        v233 = v75;
        v234 = v76;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v211 = v80;

        v81 = v74;
        v82 = v79;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v71.f64[0], *&v71.f64[1], v72, v214, v81, v218);

        goto LABEL_84;
      }

      v89 = *&v71.f64[1];
      v88 = *&v71.f64[0];
      v90 = v72;
      v91 = v214;
    }

    else
    {
      v89 = *&v71.f64[1];
      v88 = *&v71.f64[0];
      v90 = v72;
      v91 = v73;
    }

    outlined consume of Animation.Function(v88, v89, v90, v91, v74, v218);
LABEL_84:
    v130 = one-time initialization token for animationState;

    if (v130 == -1)
    {
LABEL_85:
      v93 = *(&static Signpost.animationState + 1);
      v92 = static Signpost.animationState;
      v95 = word_1ED5283E8;
      v97 = HIBYTE(word_1ED5283E8);
      v131 = byte_1ED5283EA;
      LODWORD(v99) = static os_signpost_type_t.begin.getter();
      v230 = __PAIR128__(v93, v92);
      LOBYTE(v231) = v95;
      BYTE1(v231) = v97;
      BYTE2(v231) = v131;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v142 = v201;

        (v215)(&v235);
        a4 = v203;
        *(v203 + 40) = v142;
        goto LABEL_119;
      }

      v132 = one-time initialization token for _signpostLog;

      if (v132 != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_87;
    }

LABEL_192:
    swift_once();
    goto LABEL_85;
  }

  v45 = (a7)(&v235, &v230);
  LOBYTE(v230) = 0;
  v45.n128_f64[0] = v42;
  v46.n128_f64[0] = v43;
  v47 = v41;
  v201 = v44;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v41, v202, a3, v45, v46, v37);
  v48 = AGGraphGetCurrentAttribute();
  v49 = v48;
  LODWORD(v217) = *MEMORY[0x1E698D3F8];
  if (v48 == v217)
  {
    v50 = 0;
  }

  else
  {
    v50 = v48;
  }

  LODWORD(v214) = v50;
  *&v211 = COERCE_DOUBLE(a9(0));
  (*(*v47 + 96))(&v225);
  v51 = *&v225.f64[1];
  v52 = *&v225.f64[0];
  v53 = v227;
  Counter = v228;
  LODWORD(v54) = v229;
  v224 = NAN;
  v223 = NAN;
  v222 = 0x3FF0000000000000;
  v221 = NAN;
  v230 = v225;
  v231 = *&v226;
  v55 = v226;
  v232 = v227;
  v233 = v228;
  LOBYTE(v234) = v229;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v230, &v224, &v223, &v222, &v221);
  v11 = v224;
  *&v12 = v223;
  v56 = v222;
  v57 = v221;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v209 = Counter;
        Counter = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v58 = v49 == v217;
          v207 = *(static CustomEventTrace.recorder + 24);
          *(v207 + 4) = 1602;
          LODWORD(v208) = v54;
          v59 = *(Counter + 16);
          LODWORD(v230) = v214;
          BYTE4(v230) = v58;
          *(&v230 + 1) = v211;
          v231 = v11;
          v232 = v12;
          v233 = v56;
          v234 = v57;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v214 = v60;

          v61 = v59;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v52, v51, v55, v53, v209, LOBYTE(v208));

          goto LABEL_45;
        }

        v83 = v52;
        v84 = v51;
        v85 = v55;
        v86 = v53;
        v87 = v209;
      }

      else
      {
        v83 = v52;
        v84 = v51;
        v85 = v55;
        v86 = v53;
        v87 = Counter;
      }

      v62.n128_f64[0] = outlined consume of Animation.Function(v83, v84, v85, v86, v87, v54);
LABEL_45:
      (a7)(&v235, &v230, v62);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_190;
    }

    __break(1u);
LABEL_190:
    swift_once();
LABEL_46:
    v93 = *(&static Signpost.animationState + 1);
    v92 = static Signpost.animationState;
    v94 = word_1ED5283E8;
    v95 = HIBYTE(word_1ED5283E8);
    v96 = byte_1ED5283EA;
    v97 = static os_signpost_type_t.event.getter();
    v230 = __PAIR128__(v93, v92);
    LOBYTE(v231) = v94;
    BYTE1(v231) = v95;
    BYTE2(v231) = v96;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v108 = v215;
      (v215)(&v235);
      (v108)(&v235);
      goto LABEL_81;
    }

    (a7)(&v235, &v230);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v98 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v217)
    {
      __break(1u);
    }

    else
    {
      v100 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v101 = MEMORY[0x1E69E6870];
      *(v99 + 56) = MEMORY[0x1E69E6810];
      *(v99 + 64) = v101;
      *(v99 + 32) = Counter;
      v102 = AGGraphGetCurrentAttribute();
      if (v102 != v217)
      {
        v103 = MEMORY[0x1E69E76D0];
        *(v99 + 96) = MEMORY[0x1E69E7668];
        *(v99 + 104) = v103;
        *(v99 + 72) = v102;
        *(v99 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v99 + 144) = v104;
        a5 = v213;
        v105 = v212;
        *(v99 + 112) = v213;
        *(v99 + 120) = v105;
        if (v95)
        {
          LOBYTE(v221) = v97;
          v224 = COERCE_DOUBLE(&dword_18D018000);
          v223 = v98;
          *&v230 = v92;
          *(&v230 + 1) = v93;
          LOBYTE(v231) = v94;
          *&v225.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v225.f64[1] = 39;
          LOBYTE(v226) = 2;
          v222 = v99;
          v106 = v200;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v221, &v224, &v223, &v230, v200, &v225, &v222);
          v107 = v215;
          (v215)(&v235);
          (v107)(&v235);
          (*(v216 + 8))(v106, v220);

          a4 = v203;
          goto LABEL_120;
        }

        v109 = v92;
        if (v92 == 20)
        {
          v110 = 3;
        }

        else
        {
          v110 = 4;
        }

        v55 = bswap32(v92) | (4 * WORD1(v92));
        a6 = v97;
        v111 = v216 + 16;
        v205 = *(v216 + 16);
        v112 = v205(v218, v200, v220);
        v53 = 0;
        LOBYTE(v225.f64[0]) = 1;
        v217 = v110;
        v209 = (16 * v110);
        v206 = v111;
        v211 = v111 - 8;
        *&v208 = v99 + 32;
        v207 = v109;
        do
        {
          v214 = v198;
          MEMORY[0x1EEE9AC00](v112);
          a4 = v198 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
          a7 = (a4 + 8);
          v115 = v217;
          v116 = (a4 + 8);
          do
          {
            *(v116 - 1) = 0;
            *v116 = 0;
            v116 += 16;
            --v115;
          }

          while (v115);
          v117 = *&v208 + 40 * v53;
          a1 = v217;
          while (1)
          {
            v118 = *(v99 + 16);
            if (v53 == v118)
            {
              break;
            }

            if (v53 >= v118)
            {
              goto LABEL_179;
            }

            ++v53;
            outlined init with copy of AnyTrackedValue(v117, &v230);
            v119 = v232;
            v120 = v233;
            v121 = __swift_project_boxed_opaque_existential_1(&v230, v232);
            v122 = v119;
            v110 = v121;
            *(a7 - 1) = CVarArg.kdebugValue(_:)(v55 | a6, v122, v120);
            *a7 = v123 & 1;
            a7 += 2;
            v113 = __swift_destroy_boxed_opaque_existential_1(&v230);
            v117 += 40;
            if (!--a1)
            {
              goto LABEL_66;
            }
          }

          LOBYTE(v225.f64[0]) = 0;
LABEL_66:
          v124 = v207;
          if (v207 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          if (*(a4 + 8) == 1)
          {
            kdebug_trace_string();
          }

          if (*(a4 + 24) == 1)
          {
            kdebug_trace_string();
          }

          if (*(a4 + 40) == 1)
          {
            kdebug_trace_string();
          }

          if (v124 != 20 && *(a4 + 56) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v125 = *v211;
          v126 = v218;
          v110 = v220;
          (*v211)(v218, v220);
          v127 = __swift_project_value_buffer(v110, static OSSignpostID.continuation);
          v112 = v205(v126, v127, v110);
        }

        while ((LOBYTE(v225.f64[0]) & 1) != 0);
        v128 = v215;
        (v215)(&v235);
        (v128)(&v235);
        v129 = v220;
        v125(v218, v220);
        v125(v200, v129);

LABEL_81:
        a4 = v203;
        a5 = v213;
        goto LABEL_120;
      }
    }

    __break(1u);
LABEL_195:
    swift_once();
LABEL_87:
    LODWORD(v218) = v99;
    v133 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v55)
    {
      __break(1u);
LABEL_197:
      __break(1u);
    }

    v134 = AGGraphGetAttributeGraph();
    v135 = AGGraphGetCounter();

    v136 = MEMORY[0x1E69E6870];
    *(a1 + 7) = MEMORY[0x1E69E6810];
    *(a1 + 8) = v136;
    *(a1 + 4) = v135;
    v137 = AGGraphGetCurrentAttribute();
    if (v137 == v55)
    {
      goto LABEL_197;
    }

    v138 = MEMORY[0x1E69E76D0];
    *(a1 + 12) = MEMORY[0x1E69E7668];
    *(a1 + 13) = v138;
    *(a1 + 18) = v137;
    *(a1 + 17) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a1 + 18) = v139;
    a5 = v213;
    v140 = v212;
    *(a1 + 14) = v213;
    *(a1 + 15) = v140;
    if (v97)
    {
      LOBYTE(v221) = v218;
      v224 = COERCE_DOUBLE(&dword_18D018000);
      v223 = v133;
      *&v230 = v92;
      *(&v230 + 1) = v93;
      LOBYTE(v231) = v95;
      *&v225.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v225.f64[1] = 39;
      LOBYTE(v226) = 2;
      v222 = a1;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v221, &v224, &v223, &v230, Counter, &v225, &v222);
      v141 = v201;

      (*(v216 + 8))(Counter, v220);

      (v215)(&v235);
      a4 = v203;
      *(v203 + 40) = v141;
    }

    else
    {
      v143 = v92;
      v144 = v92 == 20 ? 3 : 4;
      v55 = bswap32(v92) | (4 * WORD1(v92));
      a6 = v218;
      v110 = v216 + 16;
      v200 = *(v216 + 16);
      v145 = v200(v217, Counter, v220);
      v53 = 0;
      LOBYTE(v225.f64[0]) = 1;
      v218 = v144;
      v209 = (16 * v144);
      v205 = v110;
      v211 = v110 - 8;
      *&v208 = a1 + 32;
      v207 = Counter;
      v206 = v143;
      do
      {
        v214 = v198;
        MEMORY[0x1EEE9AC00](v145);
        a7 = (v198 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0));
        a4 = (a7 + 1);
        v147 = v218;
        v148 = a7 + 1;
        do
        {
          *(v148 - 1) = 0;
          *v148 = 0;
          v148 += 16;
          --v147;
        }

        while (v147);
        v149 = *&v208 + 40 * v53;
        v150 = v218;
        while (1)
        {
          v151 = *(a1 + 2);
          if (v53 == v151)
          {
            break;
          }

          if (v53 >= v151)
          {
            goto LABEL_180;
          }

          ++v53;
          outlined init with copy of AnyTrackedValue(v149, &v230);
          v152 = v232;
          v153 = v233;
          v154 = __swift_project_boxed_opaque_existential_1(&v230, v232);
          v155 = v152;
          v110 = v154;
          *(a4 - 8) = CVarArg.kdebugValue(_:)(v55 | a6, v155, v153);
          *a4 = v156 & 1;
          a4 += 16;
          v113 = __swift_destroy_boxed_opaque_existential_1(&v230);
          v149 += 40;
          if (!--v150)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v225.f64[0]) = 0;
LABEL_104:
        v157 = v206;
        if (v206 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v158 = v207;
        if (*(a7 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(a7 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(a7 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v157 != 20 && *(a7 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v159 = *v211;
        v160 = v217;
        v110 = v220;
        (*v211)(v217, v220);
        v161 = __swift_project_value_buffer(v110, static OSSignpostID.continuation);
        v145 = v200(v160, v161, v110);
      }

      while ((LOBYTE(v225.f64[0]) & 1) != 0);
      v162 = v201;

      v163 = v220;
      v159(v217, v220);
      v159(v158, v163);

      (v215)(&v235);
      a4 = v203;
      *(v203 + 40) = v162;
LABEL_119:
      a5 = v213;
    }

LABEL_120:
    specialized AnimatorState.addListeners(transaction:)(v202);

    a1 = v204;
    a6 = v212;
    a3 = v199;
LABEL_121:
    *(a4 + 16) = v13;
    *(a4 + 24) = v14;
    *(a4 + 32) = 0;
LABEL_122:
    a7 = *(a4 + 40);
    if (!a7)
    {
      return;
    }

    v213 = a5;
    v225 = *a1;

    LOBYTE(v235) = 0;
    v164 = specialized AnimatorState.update(_:at:environment:)(&v225, a3, v37);
    v113 = AGGraphGetCurrentAttribute();
    v55 = *MEMORY[0x1E698D3F8];
    if (v113 == v55)
    {
      LODWORD(v53) = 0;
    }

    else
    {
      LODWORD(v53) = v113;
    }

    v110 = &type metadata instantiation cache for TupleTypeDescription;
    if (v164)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v176 = *(v110 + 616);
    if (*(v176 + 16) >= 0x43uLL)
    {
      if (*(v176 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v235) = v53;
        BYTE4(v235) = v113 == v55;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v54 = *(&static Signpost.animationState + 1);
    v53 = static Signpost.animationState;
    v49 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v167 = byte_1ED5283EA;
    v51 = static os_signpost_type_t.end.getter();
    v235 = __PAIR128__(v54, v53);
    LOBYTE(v236) = v49;
    BYTE1(v236) = Counter;
    BYTE2(v236) = v167;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v168 = one-time initialization token for _signpostLog;

    if (v168 != -1)
    {
      swift_once();
    }

    v203 = a4;
    v204 = a1;
    *&v52 = COERCE_DOUBLE(_signpostLog);
    v209 = a7;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v55)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v209 = v56;
    v208 = v57;
    swift_once();
    v57 = v208;
    v56 = v209;
  }

  a7 = AGGraphGetAttributeGraph();
  v169 = AGGraphGetCounter();

  v170 = MEMORY[0x1E69E6870];
  *(a1 + 7) = MEMORY[0x1E69E6810];
  *(a1 + 8) = v170;
  *(a1 + 4) = v169;
  v171 = AGGraphGetCurrentAttribute();
  if (v171 == v55)
  {
    goto LABEL_187;
  }

  v172 = MEMORY[0x1E69E76D0];
  *(a1 + 12) = MEMORY[0x1E69E7668];
  *(a1 + 13) = v172;
  *(a1 + 18) = v171;
  *(a1 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 18) = v173;
  v174 = v212;
  *(a1 + 14) = v213;
  *(a1 + 15) = v174;
  if (Counter)
  {
    LOBYTE(v221) = v51;
    v224 = COERCE_DOUBLE(&dword_18D018000);
    v223 = *&v52;
    *&v235 = v53;
    *(&v235 + 1) = v54;
    LOBYTE(v236) = v49;
    *&v230 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v230 + 1) = 37;
    LOBYTE(v231) = 2;
    v222 = a1;
    v175 = v210;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v221, &v224, &v223, &v235, v210, &v230, &v222);

    (*(v216 + 8))(v175, v220);
    goto LABEL_174;
  }

  v177 = v53;
  if (v53 == 20)
  {
    v110 = 3;
  }

  else
  {
    v110 = 4;
  }

  v55 = bswap32(v53) | (4 * WORD1(v53));
  LODWORD(v53) = v51;
  v178 = v216 + 16;
  v211 = *(v216 + 16);
  v179 = (v211)(v219, v210, v220);
  a4 = 0;
  LOBYTE(v230) = 1;
  v218 = v110;
  v214 = (16 * v110);
  v216 = v178;
  v215 = (v178 - 8);
  v213 = (a1 + 32);
  v212 = v177;
  do
  {
    v217 = v198;
    MEMORY[0x1EEE9AC00](v179);
    a7 = (v198 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0));
    v181 = a7 + 1;
    v182 = v218;
    v183 = a7 + 1;
    do
    {
      *(v183 - 1) = 0;
      *v183 = 0;
      v183 += 16;
      --v182;
    }

    while (v182);
    v184 = v213 + 40 * a4;
    a6 = v218;
    while (1)
    {
      v185 = *(a1 + 2);
      if (a4 == v185)
      {
        break;
      }

      if (a4 >= v185)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v196 = v113;
        swift_once();
        v113 = v196;
LABEL_128:
        v165 = *(v110 + 616);
        if (*(v165 + 16) >= 0x43uLL)
        {
          if (*(v165 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v235) = v53;
            BYTE4(v235) = v113 == v55;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v212 = a6;
          v166 = one-time initialization token for animationState;

          if (v166 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v197 = v113;
        swift_once();
        v113 = v197;
        goto LABEL_141;
      }

      ++a4;
      outlined init with copy of AnyTrackedValue(v184, &v235);
      v186 = *(&v236 + 1);
      v187 = v237;
      v188 = __swift_project_boxed_opaque_existential_1(&v235, *(&v236 + 1));
      v189 = v186;
      v110 = v188;
      *(v181 - 1) = CVarArg.kdebugValue(_:)(v55 | v53, v189, v187);
      *v181 = v190 & 1;
      v181 += 16;
      v113 = __swift_destroy_boxed_opaque_existential_1(&v235);
      v184 += 40;
      if (!--a6)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v230) = 0;
LABEL_159:
    v191 = v212;
    if (v212 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a7 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a7 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a7 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v191 != 20 && *(a7 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v192 = *v215;
    v193 = v219;
    v110 = v220;
    (*v215)(v219, v220);
    v194 = __swift_project_value_buffer(v110, static OSSignpostID.continuation);
    v179 = (v211)(v193, v194, v110);
  }

  while ((v230 & 1) != 0);

  v195 = v220;
  v192(v219, v220);
  v192(v210, v195);
LABEL_174:

  a1 = v204;
  a4 = v203;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 40) = 0;
LABEL_176:
  *a1 = v225;
  a1[16] = 1;
}

Swift::Void __swiftcall AnimatableFrameAttributeVFD.destroy()()
{
  if (*(v0 + 72))
  {
    specialized AnimatorState.removeListeners()();
  }
}

_DWORD *AnimatableAttributeHelper.phase.getter@<X0>(_DWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t (*AnimatableAttributeHelper.phase.modify(_DWORD *a1))(_DWORD *a1)
{
  a1[2] = *v1;
  *a1 = *AGGraphGetValue();
  return GraphHost.Data.phase.modify;
}

uint64_t (*AnimatableAttributeHelper.$phase.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return DefaultLayoutResponderFilter.$children.modify;
}

double AnimatableAttributeHelper.time.getter@<D0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  *a1 = *Value;
  return result;
}

uint64_t (*AnimatableAttributeHelper.time.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 4);
  *a1 = *AGGraphGetValue();
  return GraphHost.Data.time.modify;
}

_DWORD *(*AnimatableAttributeHelper.$time.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return SecondaryLayerGeometryQuery.$layoutDirection.modify;
}

double AnimatableAttributeHelper.transaction.getter()
{
  specialized AnimatableAttributeHelper.transaction.getter();

  return result;
}

double key path getter for AnimatableAttributeHelper.transaction : <A>AnimatableAttributeHelper<A>@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for AnimatableAttributeHelper(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  *a4 = specialized AnimatableAttributeHelper.transaction.getter();

  return result;
}

double key path setter for AnimatableAttributeHelper.transaction : <A>AnimatableAttributeHelper<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnimatableAttributeHelper(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);

  specialized AnimatableAttributeHelper.transaction.setter(v4);

  return result;
}

double AnimatableAttributeHelper.transaction.setter(uint64_t a1, __n128 a2)
{
  specialized AnimatableAttributeHelper.transaction.setter(a1);

  return result;
}

double (*AnimatableAttributeHelper.transaction.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = *(v1 + 8);
  *a1 = *AGGraphGetValue();

  return GraphHost.Data.transaction.modify;
}

_DWORD *(*AnimatableAttributeHelper.$transaction.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return _ViewInputs.time.modify;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV3KeyVAA0V4PairVyAX4FillO0V4DataOA0_ySfAA0vW0VyA0_ySfAX6EffectV4KindOA3_OGGGGG_Tt4B5(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, double a7)
{
  type metadata accessor for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>(0);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v14 + 32) = v15;
  *(v14 + 40) = 1;
  *(v14 + 80) = 1;
  *(v14 + 88) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = v15;
  *(v14 + 84) = 0;
  *(v14 + 96) = v15;
  *(v14 + 104) = v15;
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0;
  *(v14 + 136) = v15;
  *(v14 + 16) = a1;
  *(v14 + 24) = v16;
  swift_beginAccess();
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;

  *(v14 + 120) = a5;
  *(v14 + 128) = a6;
  *(v14 + 48) = a7;
  *(v14 + 64) = a7;
  v17 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v18 & 1) == 0)
  {
    if (v17 <= 0.0)
    {
      *(v14 + 56) = 0;
    }

    else
    {
      v21 = log2(v17 * 240.0);
      v22 = exp2(floor(v21 + 0.01)) * 0.00416666667;
      *(v14 + 56) = v22;
      if (v22 >= 0.0166666667)
      {

        v19 = 0;
        goto LABEL_3;
      }
    }

    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4);
    v19 = v23;
    v20 = HIDWORD(v23) & 1;

    goto LABEL_9;
  }

  v19 = 0;
  *(v14 + 56) = 0;
LABEL_3:
  LOBYTE(v20) = 1;
LABEL_9:
  *(v14 + 84) = v19;
  *(v14 + 88) = v20;
  return v14;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  type metadata accessor for AnimatorState<AnimatablePair<CGFloat, CGFloat>>(0);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v14 + 40) = 0;
  *(v14 + 92) = 1;
  *(v14 + 32) = 0;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 64) = 0;
  *(v14 + 88) = 0;
  *(v14 + 96) = v15;
  *(v14 + 104) = v15;
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0;
  *(v14 + 136) = v15;
  *(v14 + 16) = a1;
  *(v14 + 24) = v16;
  swift_beginAccess();
  *(v14 + 32) = a5;
  *(v14 + 120) = a3;
  *(v14 + 128) = a4;
  *(v14 + 40) = a6;
  *(v14 + 48) = a7;
  *(v14 + 64) = a7;

  v17 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v18 & 1) == 0)
  {
    if (v17 <= 0.0)
    {
      *(v14 + 56) = 0;
    }

    else
    {
      v21 = log2(v17 * 240.0);
      v22 = exp2(floor(v21 + 0.01)) * 0.00416666667;
      *(v14 + 56) = v22;
      if (v22 >= 0.0166666667)
      {

        v19 = 0;
        goto LABEL_3;
      }
    }

    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v19 = v23;
    v20 = HIDWORD(v23) & 1;

    goto LABEL_9;
  }

  v19 = 0;
  *(v14 + 56) = 0;
LABEL_3:
  LOBYTE(v20) = 1;
LABEL_9:
  *(v14 + 88) = v19;
  *(v14 + 92) = v20;
  return v14;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for AnimatorState<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 32) = 0;
  *(v12 + 76) = 1;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = v13;
  *(v12 + 88) = v13;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  *(v12 + 32) = a5;
  *(v12 + 104) = a3;
  *(v12 + 112) = a4;
  *(v12 + 40) = a6;
  *(v12 + 56) = a6;

  v15 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v16 & 1) == 0)
  {
    if (v15 <= 0.0)
    {
      *(v12 + 48) = 0;
    }

    else
    {
      v19 = log2(v15 * 240.0);
      v20 = exp2(floor(v19 + 0.01)) * 0.00416666667;
      *(v12 + 48) = v20;
      if (v20 >= 0.0166666667)
      {

        v17 = 0;
        goto LABEL_3;
      }
    }

    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v17 = v21;
    v18 = HIDWORD(v21) & 1;

    goto LABEL_9;
  }

  v17 = 0;
  *(v12 + 48) = 0;
LABEL_3:
  LOBYTE(v18) = 1;
LABEL_9:
  *(v12 + 72) = v17;
  *(v12 + 76) = v18;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA18_AnyAnimatableDataV_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v14 = type metadata accessor for ZeroVTable();
  v15 = MEMORY[0x1E69E7CA8] + 8;
  *(v12 + 64) = MEMORY[0x1E69E7CA8] + 8;
  *(v12 + 32) = v14;
  *(v12 + 128) = v15;
  *(v12 + 88) = 0;
  *(v12 + 96) = v14;
  *(v12 + 136) = 0;
  *(v12 + 140) = 1;
  *(v12 + 144) = v13;
  *(v12 + 152) = v13;
  *(v12 + 160) = 0;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 184) = v13;
  *(v12 + 16) = a1;
  swift_beginAccess();

  outlined assign with copy of _AnyAnimatableData(a2, v12 + 32);
  swift_endAccess();
  *(v12 + 168) = a4;
  *(v12 + 176) = a5;
  *(v12 + 72) = a6;
  *(v12 + 88) = a6;
  v16 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v17 & 1) == 0)
  {
    if (v16 <= 0.0)
    {
      *(v12 + 80) = 0;
    }

    else
    {
      v20 = log2(v16 * 240.0);
      v21 = exp2(floor(v20 + 0.01)) * 0.00416666667;
      *(v12 + 80) = v21;
      if (v21 >= 0.0166666667)
      {
        outlined destroy of _AnyAnimatableData(a2);

        v18 = 0;
        goto LABEL_3;
      }
    }

    v22 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v18 = v22;
    v19 = HIDWORD(v22) & 1;

    outlined destroy of _AnyAnimatableData(a2);

    goto LABEL_9;
  }

  outlined destroy of _AnyAnimatableData(a2);

  v18 = 0;
  *(v12 + 80) = 0;
LABEL_3:
  LOBYTE(v19) = 1;
LABEL_9:
  *(v12 + 136) = v18;
  *(v12 + 140) = v19;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAA05KeyedU5ArrayVySiAA04_AnyU4DataVG12CoreGraphics7CGFloatVG_Tt4B5(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>(0);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v16 + 40) = 1;
  *(v16 + 88) = 1;
  *(v16 + 108) = 1;
  *(v16 + 32) = v17;
  *(v16 + 48) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = v17;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 112) = v17;
  *(v16 + 120) = v17;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 144) = 0;
  *(v16 + 152) = v17;
  *(v16 + 16) = a1;
  *(v16 + 24) = v18;
  swift_beginAccess();
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 48) = a7;

  *(v16 + 136) = a5;
  *(v16 + 144) = a6;
  *(v16 + 56) = a8;
  *(v16 + 72) = a8;
  v19 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v20 & 1) == 0)
  {
    if (v19 <= 0.0)
    {
      *(v16 + 64) = 0;
    }

    else
    {
      v23 = log2(v19 * 240.0);
      v24 = exp2(floor(v23 + 0.01)) * 0.00416666667;
      *(v16 + 64) = v24;
      if (v24 >= 0.0166666667)
      {

        v21 = 0;
        goto LABEL_3;
      }
    }

    v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4);
    v21 = v25;
    v22 = HIDWORD(v25) & 1;

    goto LABEL_9;
  }

  v21 = 0;
  *(v16 + 64) = 0;
LABEL_3:
  LOBYTE(v22) = 1;
LABEL_9:
  *(v16 + 104) = v21;
  *(v16 + 108) = v22;
  return v16;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAVyAyVyAyVyAVyA2YGAZGGGGG_Tt4B5(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>(0);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 188) = 1;
  *(v12 + 32) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(v12 + 144) = 0u;
  *(v12 + 160) = 0u;
  *(v12 + 172) = 0u;
  *(v12 + 192) = v13;
  *(v12 + 200) = v13;
  *(v12 + 208) = 0;
  *(v12 + 216) = 0;
  *(v12 + 224) = 0;
  *(v12 + 232) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = a2[1];
  *(v12 + 32) = *a2;
  v16 = a2[2];
  v17 = a2[3];
  *(v12 + 48) = v15;
  *(v12 + 64) = v16;
  *(v12 + 80) = v17;
  *(v12 + 216) = a4;
  *(v12 + 224) = a5;
  *(v12 + 96) = a6;
  *(v12 + 112) = a6;

  v18 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v19 & 1) == 0)
  {
    if (v18 <= 0.0)
    {
      *(v12 + 104) = 0;
    }

    else
    {
      v22 = log2(v18 * 240.0);
      v23 = exp2(floor(v22 + 0.01)) * 0.00416666667;
      *(v12 + 104) = v23;
      if (v23 >= 0.0166666667)
      {

        v20 = 0;
        goto LABEL_3;
      }
    }

    v24 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v20 = v24;
    v21 = HIDWORD(v24) & 1;

    goto LABEL_9;
  }

  v20 = 0;
  *(v12 + 104) = 0;
LABEL_3:
  LOBYTE(v21) = 1;
LABEL_9:
  *(v12 + 184) = v20;
  *(v12 + 188) = v21;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 32) = 0;
  *(v12 + 76) = 1;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = v13;
  *(v12 + 88) = v13;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  *(v12 + 32) = a5;
  *(v12 + 104) = a3;
  *(v12 + 112) = a4;
  *(v12 + 40) = a6;
  *(v12 + 56) = a6;

  v15 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v16 & 1) == 0)
  {
    if (v15 <= 0.0)
    {
      *(v12 + 48) = 0;
    }

    else
    {
      v19 = log2(v15 * 240.0);
      v20 = exp2(floor(v19 + 0.01)) * 0.00416666667;
      *(v12 + 48) = v20;
      if (v20 >= 0.0166666667)
      {

        v17 = 0;
        goto LABEL_3;
      }
    }

    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v17 = v21;
    v18 = HIDWORD(v21) & 1;

    goto LABEL_9;
  }

  v17 = 0;
  *(v12 + 48) = 0;
LABEL_3:
  LOBYTE(v18) = 1;
LABEL_9:
  *(v12 + 72) = v17;
  *(v12 + 76) = v18;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16ShaderVectorDataV_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 32) = v13;
  *(v12 + 76) = 1;
  *(v12 + 56) = 0;
  *(v12 + 64) = v13;
  *(v12 + 72) = 0;
  *(v12 + 80) = v13;
  *(v12 + 88) = v13;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  *(v12 + 32) = a2;

  *(v12 + 104) = a4;
  *(v12 + 112) = a5;
  *(v12 + 40) = a6;
  *(v12 + 56) = a6;
  v15 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v16 & 1) == 0)
  {
    if (v15 <= 0.0)
    {
      *(v12 + 48) = 0;
    }

    else
    {
      v19 = log2(v15 * 240.0);
      v20 = exp2(floor(v19 + 0.01)) * 0.00416666667;
      *(v12 + 48) = v20;
      if (v20 >= 0.0166666667)
      {

        v17 = 0;
        goto LABEL_3;
      }
    }

    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v17 = v21;
    v18 = HIDWORD(v21) & 1;

    goto LABEL_9;
  }

  v17 = 0;
  *(v12 + 48) = 0;
LABEL_3:
  LOBYTE(v18) = 1;
LABEL_9:
  *(v12 + 72) = v17;
  *(v12 + 76) = v18;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), double a6, double a7, double a8, double a9, double a10)
{
  a5(0);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E7CC0];
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v19 + 124) = 1;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  *(v19 + 108) = 0u;
  *(v19 + 128) = v20;
  *(v19 + 136) = v20;
  *(v19 + 144) = 0;
  *(v19 + 152) = 0;
  *(v19 + 160) = 0;
  *(v19 + 168) = v20;
  *(v19 + 16) = a1;
  *(v19 + 24) = v21;
  swift_beginAccess();
  *(v19 + 32) = a6;
  *(v19 + 40) = a7;
  *(v19 + 48) = a8;
  *(v19 + 152) = a3;
  *(v19 + 160) = a4;
  *(v19 + 56) = a9;
  *(v19 + 64) = a10;
  *(v19 + 80) = a10;

  v22 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v23 & 1) == 0)
  {
    if (v22 <= 0.0)
    {
      *(v19 + 72) = 0;
    }

    else
    {
      v26 = log2(v22 * 240.0);
      v27 = exp2(floor(v26 + 0.01)) * 0.00416666667;
      *(v19 + 72) = v27;
      if (v27 >= 0.0166666667)
      {

        v24 = 0;
        goto LABEL_3;
      }
    }

    v28 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v24 = v28;
    v25 = HIDWORD(v28) & 1;

    goto LABEL_9;
  }

  v24 = 0;
  *(v19 + 72) = 0;
LABEL_3:
  LOBYTE(v25) = 1;
LABEL_9:
  *(v19 + 120) = v24;
  *(v19 + 124) = v25;
  return v19;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAYGG_Tt4B5Tm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), double a6, double a7, double a8, double a9)
{
  a5(0);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 108) = 1;
  *(v17 + 32) = 0;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0;
  *(v17 + 112) = v18;
  *(v17 + 120) = v18;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = 0;
  *(v17 + 152) = v18;
  *(v17 + 16) = a1;
  *(v17 + 24) = v19;
  swift_beginAccess();
  *(v17 + 32) = a6;
  *(v17 + 40) = a7;
  *(v17 + 48) = a8;
  *(v17 + 136) = a3;
  *(v17 + 144) = a4;
  *(v17 + 56) = a9;
  *(v17 + 72) = a9;

  v20 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v21 & 1) == 0)
  {
    if (v20 <= 0.0)
    {
      *(v17 + 64) = 0;
    }

    else
    {
      v24 = log2(v20 * 240.0);
      v25 = exp2(floor(v24 + 0.01)) * 0.00416666667;
      *(v17 + 64) = v25;
      if (v25 >= 0.0166666667)
      {

        v22 = 0;
        goto LABEL_3;
      }
    }

    v26 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v22 = v26;
    v23 = HIDWORD(v26) & 1;

    goto LABEL_9;
  }

  v22 = 0;
  *(v17 + 64) = 0;
LABEL_3:
  LOBYTE(v23) = 1;
LABEL_9:
  *(v17 + 104) = v22;
  *(v17 + 108) = v23;
  return v17;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAZGAA22ResolvedGradientVectorVG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>(0);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 48) = 0u;
  *(v12 + 80) = 1;
  *(v12 + 160) = 1;
  *(v12 + 168) = 1;
  *(v12 + 32) = 0u;
  *(v12 + 64) = v13;
  *(v12 + 72) = 0;
  *(v12 + 76) = 0;
  *(v12 + 104) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0;
  *(v12 + 144) = v13;
  *(v12 + 152) = 0;
  *(v12 + 156) = 0;
  *(v12 + 164) = 0;
  *(v12 + 176) = v13;
  *(v12 + 184) = v13;
  *(v12 + 192) = 0;
  *(v12 + 200) = 0;
  *(v12 + 208) = 0;
  *(v12 + 216) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(v12 + 48);
  v16 = *(v12 + 64);
  v28[0] = *(v12 + 32);
  v28[1] = v15;
  v28[2] = v16;
  v29 = *(v12 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, v27, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  v17 = *(a2 + 16);
  *(v12 + 32) = *a2;
  v18 = *(a2 + 32);
  *(v12 + 48) = v17;
  *(v12 + 64) = v18;
  *(v12 + 80) = *(a2 + 48);
  outlined destroy of Slice<IndexSet>(v28, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  *(v12 + 200) = a4;
  *(v12 + 208) = a5;
  *(v12 + 88) = a6;
  *(v12 + 104) = a6;
  v19 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v20 & 1) == 0)
  {
    if (v19 <= 0.0)
    {
      *(v12 + 96) = 0;
    }

    else
    {
      v23 = log2(v19 * 240.0);
      v24 = exp2(floor(v23 + 0.01)) * 0.00416666667;
      *(v12 + 96) = v24;
      if (v24 >= 0.0166666667)
      {
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

        v21 = 0;
        goto LABEL_3;
      }
    }

    v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v21 = v25;
    v22 = HIDWORD(v25) & 1;

    outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

    goto LABEL_9;
  }

  outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

  v21 = 0;
  *(v12 + 96) = 0;
LABEL_3:
  LOBYTE(v22) = 1;
LABEL_9:
  *(v12 + 164) = v21;
  *(v12 + 168) = v22;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAA22ResolvedGradientVectorVGAZG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>(0);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 32) = 0;
  *(v12 + 64) = 1;
  *(v12 + 144) = 1;
  *(v12 + 172) = 1;
  *(v12 + 40) = 0;
  *(v12 + 48) = v13;
  *(v12 + 56) = 0;
  *(v12 + 60) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = 0;
  *(v12 + 128) = v13;
  *(v12 + 136) = 0;
  *(v12 + 140) = 0;
  *(v12 + 168) = 0;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 176) = v13;
  *(v12 + 184) = v13;
  *(v12 + 192) = 0;
  *(v12 + 200) = 0;
  *(v12 + 208) = 0;
  *(v12 + 216) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(v12 + 48);
  v16 = *(v12 + 64);
  v28[0] = *(v12 + 32);
  v28[1] = v15;
  v28[2] = v16;
  v29 = *(v12 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, v27, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  v17 = *(a2 + 16);
  *(v12 + 32) = *a2;
  v18 = *(a2 + 32);
  *(v12 + 48) = v17;
  *(v12 + 64) = v18;
  *(v12 + 80) = *(a2 + 48);
  outlined destroy of Slice<IndexSet>(v28, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  *(v12 + 200) = a4;
  *(v12 + 208) = a5;
  *(v12 + 88) = a6;
  *(v12 + 104) = a6;
  v19 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v20 & 1) == 0)
  {
    if (v19 <= 0.0)
    {
      *(v12 + 96) = 0;
    }

    else
    {
      v23 = log2(v19 * 240.0);
      v24 = exp2(floor(v23 + 0.01)) * 0.00416666667;
      *(v12 + 96) = v24;
      if (v24 >= 0.0166666667)
      {
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

        v21 = 0;
        goto LABEL_3;
      }
    }

    v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v21 = v25;
    v22 = HIDWORD(v25) & 1;

    outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

    goto LABEL_9;
  }

  outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

  v21 = 0;
  *(v12 + 96) = 0;
LABEL_3:
  LOBYTE(v22) = 1;
LABEL_9:
  *(v12 + 168) = v21;
  *(v12 + 172) = v22;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAA22ResolvedGradientVectorVGAVyS2dGG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>(0);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 32) = 0;
  *(v12 + 64) = 1;
  *(v12 + 144) = 1;
  *(v12 + 172) = 1;
  *(v12 + 40) = 0;
  *(v12 + 48) = v13;
  *(v12 + 56) = 0;
  *(v12 + 60) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = 0;
  *(v12 + 128) = v13;
  *(v12 + 136) = 0;
  *(v12 + 140) = 0;
  *(v12 + 168) = 0;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 176) = v13;
  *(v12 + 184) = v13;
  *(v12 + 192) = 0;
  *(v12 + 200) = 0;
  *(v12 + 208) = 0;
  *(v12 + 216) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(v12 + 48);
  v16 = *(v12 + 64);
  v28[0] = *(v12 + 32);
  v28[1] = v15;
  v28[2] = v16;
  v29 = *(v12 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, v27, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  v17 = *(a2 + 16);
  *(v12 + 32) = *a2;
  v18 = *(a2 + 32);
  *(v12 + 48) = v17;
  *(v12 + 64) = v18;
  *(v12 + 80) = *(a2 + 48);
  outlined destroy of Slice<IndexSet>(v28, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  *(v12 + 200) = a4;
  *(v12 + 208) = a5;
  *(v12 + 88) = a6;
  *(v12 + 104) = a6;
  v19 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v20 & 1) == 0)
  {
    if (v19 <= 0.0)
    {
      *(v12 + 96) = 0;
    }

    else
    {
      v23 = log2(v19 * 240.0);
      v24 = exp2(floor(v23 + 0.01)) * 0.00416666667;
      *(v12 + 96) = v24;
      if (v24 >= 0.0166666667)
      {
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

        v21 = 0;
        goto LABEL_3;
      }
    }

    v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v21 = v25;
    v22 = HIDWORD(v25) & 1;

    outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

    goto LABEL_9;
  }

  outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

  v21 = 0;
  *(v12 + 96) = 0;
LABEL_3:
  LOBYTE(v22) = 1;
LABEL_9:
  *(v12 + 168) = v21;
  *(v12 + 172) = v22;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA22ResolvedGradientVectorV_Tt4B5(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, double a8)
{
  v12 = a3;
  v15 = HIDWORD(a3);
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimatorState);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v16 + 48) = 1;
  *(v16 + 96) = 1;
  *(v16 + 104) = 1;
  *(v16 + 32) = v17;
  *(v16 + 40) = 0;
  *(v16 + 44) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = v17;
  *(v16 + 88) = 0;
  *(v16 + 92) = 0;
  *(v16 + 100) = 0;
  *(v16 + 112) = v17;
  *(v16 + 120) = v17;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 144) = 0;
  *(v16 + 152) = v17;
  *(v16 + 16) = a1;
  *(v16 + 24) = v18;
  swift_beginAccess();
  *(v16 + 32) = a2;
  *(v16 + 40) = v12;
  *(v16 + 44) = v15;
  *(v16 + 48) = a4 & 1;

  *(v16 + 136) = a6;
  *(v16 + 144) = a7;
  *(v16 + 56) = a8;
  *(v16 + 72) = a8;
  v19 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a5));
  if ((v20 & 1) == 0)
  {
    if (v19 <= 0.0)
    {
      *(v16 + 64) = 0;
    }

    else
    {
      v23 = log2(v19 * 240.0);
      v24 = exp2(floor(v23 + 0.01)) * 0.00416666667;
      *(v16 + 64) = v24;
      if (v24 >= 0.0166666667)
      {

        v21 = 0;
        goto LABEL_3;
      }
    }

    v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a5);
    v21 = v25;
    v22 = HIDWORD(v25) & 1;

    goto LABEL_9;
  }

  v21 = 0;
  *(v16 + 64) = 0;
LABEL_3:
  LOBYTE(v22) = 1;
LABEL_9:
  *(v16 + 100) = v21;
  *(v16 + 104) = v22;
  return v16;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAA16_ShapeStyle_PackV4FillO0U4DataOAVySfAA0U5ArrayVyAVySfAX6EffectV4KindOA_OGGGG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>(0);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 9;
  *(v12 + 240) = 9;
  *(v12 + 268) = 1;
  *(v12 + 32) = 0u;
  *(v12 + 120) = 0;
  *(v12 + 128) = v13;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 216) = 0u;
  *(v12 + 232) = 0;
  *(v12 + 248) = 0;
  *(v12 + 256) = v13;
  *(v12 + 264) = 0;
  *(v12 + 272) = v13;
  *(v12 + 280) = v13;
  *(v12 + 288) = 0;
  *(v12 + 296) = 0;
  *(v12 + 304) = 0;
  *(v12 + 312) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(v12 + 80);
  v16 = *(v12 + 112);
  v32[4] = *(v12 + 96);
  v32[5] = v16;
  v33 = *(v12 + 128);
  v17 = *(v12 + 48);
  v18 = *(v12 + 64);
  v32[0] = *(v12 + 32);
  v32[1] = v17;
  v32[2] = v18;
  v32[3] = v15;

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, v31, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v21 = *(a2 + 32);
  *(v12 + 80) = *(a2 + 48);
  *(v12 + 96) = v19;
  *(v12 + 112) = v20;
  *(v12 + 128) = *(a2 + 96);
  v22 = *(a2 + 16);
  *(v12 + 32) = *a2;
  *(v12 + 48) = v22;
  *(v12 + 64) = v21;
  outlined destroy of Slice<IndexSet>(v32, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  *(v12 + 296) = a4;
  *(v12 + 304) = a5;
  *(v12 + 136) = a6;
  *(v12 + 152) = a6;
  v23 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v24 & 1) == 0)
  {
    if (v23 <= 0.0)
    {
      *(v12 + 144) = 0;
    }

    else
    {
      v27 = log2(v23 * 240.0);
      v28 = exp2(floor(v27 + 0.01)) * 0.00416666667;
      *(v12 + 144) = v28;
      if (v28 >= 0.0166666667)
      {
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

        v25 = 0;
        goto LABEL_3;
      }
    }

    v29 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v25 = v29;
    v26 = HIDWORD(v29) & 1;

    outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

    goto LABEL_9;
  }

  outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

  v25 = 0;
  *(v12 + 144) = 0;
LABEL_3:
  LOBYTE(v26) = 1;
LABEL_9:
  *(v12 + 264) = v25;
  *(v12 + 268) = v26;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16_ShapeStyle_PackV4FillO14AnimatableDataO_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 9;
  *(v12 + 224) = 9;
  *(v12 + 232) = 1;
  *(v12 + 32) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 216) = 0;
  *(v12 + 228) = 0;
  *(v12 + 240) = v13;
  *(v12 + 248) = v13;
  *(v12 + 256) = 0;
  *(v12 + 264) = 0;
  *(v12 + 272) = 0;
  *(v12 + 280) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(v12 + 96);
  v29[3] = *(v12 + 80);
  v29[4] = v15;
  v30 = *(v12 + 112);
  v29[0] = *(v12 + 32);
  v16 = *(v12 + 64);
  v29[1] = *(v12 + 48);
  v29[2] = v16;

  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(a2, v28);
  v17 = *(a2 + 32);
  v18 = *(a2 + 64);
  *(v12 + 80) = *(a2 + 48);
  *(v12 + 96) = v18;
  *(v12 + 112) = *(a2 + 80);
  v19 = *(a2 + 16);
  *(v12 + 32) = *a2;
  *(v12 + 48) = v19;
  *(v12 + 64) = v17;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v29);
  *(v12 + 264) = a4;
  *(v12 + 272) = a5;
  *(v12 + 120) = a6;
  *(v12 + 136) = a6;
  v20 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v21 & 1) == 0)
  {
    if (v20 <= 0.0)
    {
      *(v12 + 128) = 0;
    }

    else
    {
      v24 = log2(v20 * 240.0);
      v25 = exp2(floor(v24 + 0.01)) * 0.00416666667;
      *(v12 + 128) = v25;
      if (v25 >= 0.0166666667)
      {
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(a2);

        v22 = 0;
        goto LABEL_3;
      }
    }

    v26 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v22 = v26;
    v23 = HIDWORD(v26) & 1;

    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(a2);

    goto LABEL_9;
  }

  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(a2);

  v22 = 0;
  *(v12 + 128) = 0;
LABEL_3:
  LOBYTE(v23) = 1;
LABEL_9:
  *(v12 + 228) = v22;
  *(v12 + 232) = v23;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16_ShapeStyle_PackV6EffectV4KindO14AnimatableDataO_Tt4B5(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  *(v12 + 144) = 1;
  *(v12 + 152) = 1;
  *(v12 + 32) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(v12 + 148) = 0;
  *(v12 + 160) = v13;
  *(v12 + 168) = v13;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 0;
  *(v12 + 200) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v15;
  *(v12 + 57) = *(a2 + 25);
  *(v12 + 184) = a4;
  *(v12 + 192) = a5;
  *(v12 + 80) = a6;
  *(v12 + 96) = a6;

  v16 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v17 & 1) == 0)
  {
    if (v16 <= 0.0)
    {
      *(v12 + 88) = 0;
    }

    else
    {
      v20 = log2(v16 * 240.0);
      v21 = exp2(floor(v20 + 0.01)) * 0.00416666667;
      *(v12 + 88) = v21;
      if (v21 >= 0.0166666667)
      {

        v18 = 0;
        goto LABEL_3;
      }
    }

    v22 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v18 = v22;
    v19 = HIDWORD(v22) & 1;

    goto LABEL_9;
  }

  v18 = 0;
  *(v12 + 88) = 0;
LABEL_3:
  LOBYTE(v19) = 1;
LABEL_9:
  *(v12 + 148) = v18;
  *(v12 + 152) = v19;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAA16_ShapeStyle_PackV6EffectV4KindO0U4DataOG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>(0);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 80) = 1;
  *(v12 + 160) = 1;
  *(v12 + 168) = 1;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 152) = 0;
  *(v12 + 164) = 0;
  *(v12 + 176) = v13;
  *(v12 + 184) = v13;
  *(v12 + 192) = 0;
  *(v12 + 200) = 0;
  *(v12 + 208) = 0;
  *(v12 + 216) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(a2 + 16);
  *(v12 + 32) = *a2;
  v16 = *(a2 + 32);
  *(v12 + 48) = v15;
  *(v12 + 64) = v16;
  *(v12 + 80) = *(a2 + 48);
  *(v12 + 200) = a4;
  *(v12 + 208) = a5;
  *(v12 + 88) = a6;
  *(v12 + 104) = a6;

  v17 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v18 & 1) == 0)
  {
    if (v17 <= 0.0)
    {
      *(v12 + 96) = 0;
    }

    else
    {
      v21 = log2(v17 * 240.0);
      v22 = exp2(floor(v21 + 0.01)) * 0.00416666667;
      *(v12 + 96) = v22;
      if (v22 >= 0.0166666667)
      {

        v19 = 0;
        goto LABEL_3;
      }
    }

    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v19 = v23;
    v20 = HIDWORD(v23) & 1;

    goto LABEL_9;
  }

  v19 = 0;
  *(v12 + 96) = 0;
LABEL_3:
  LOBYTE(v20) = 1;
LABEL_9:
  *(v12 + 164) = v19;
  *(v12 + 168) = v20;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA19ConcentricRectangleV14AnimatableDataV_Tt4B5(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static ConcentricRectangle.Uniformity.zero.getter(v50);
  static RoundedRectangularShapeCorners.AnimatableData.zero.getter(v51);
  v14 = v50[5];
  *(v12 + 96) = v50[4];
  *(v12 + 112) = v14;
  v15 = v50[7];
  *(v12 + 128) = v50[6];
  *(v12 + 144) = v15;
  v16 = v50[1];
  *(v12 + 32) = v50[0];
  *(v12 + 48) = v16;
  v17 = v50[3];
  *(v12 + 64) = v50[2];
  *(v12 + 80) = v17;
  v18 = v51[0];
  v19 = v51[1];
  v20 = v51[3];
  *(v12 + 192) = v51[2];
  *(v12 + 208) = v20;
  *(v12 + 160) = v18;
  *(v12 + 176) = v19;
  v21 = v51[4];
  v22 = v51[5];
  v23 = v51[7];
  *(v12 + 256) = v51[6];
  *(v12 + 272) = v23;
  *(v12 + 224) = v21;
  *(v12 + 240) = v22;
  *(v12 + 304) = 0;
  static ConcentricRectangle.Uniformity.zero.getter(v52);
  static RoundedRectangularShapeCorners.AnimatableData.zero.getter(v53);
  v24 = v52[5];
  *(v12 + 376) = v52[4];
  *(v12 + 392) = v24;
  v25 = v52[7];
  *(v12 + 408) = v52[6];
  *(v12 + 424) = v25;
  v26 = v52[1];
  *(v12 + 312) = v52[0];
  *(v12 + 328) = v26;
  v27 = v52[3];
  *(v12 + 344) = v52[2];
  *(v12 + 360) = v27;
  v28 = v53[0];
  v29 = v53[1];
  v30 = v53[3];
  *(v12 + 472) = v53[2];
  *(v12 + 488) = v30;
  *(v12 + 440) = v28;
  *(v12 + 456) = v29;
  v31 = v53[4];
  v32 = v53[5];
  v33 = v53[7];
  *(v12 + 536) = v53[6];
  *(v12 + 552) = v33;
  *(v12 + 504) = v31;
  *(v12 + 520) = v32;
  *(v12 + 568) = 0;
  *(v12 + 572) = 1;
  *(v12 + 576) = v13;
  *(v12 + 584) = v13;
  *(v12 + 592) = 0;
  *(v12 + 600) = 0u;
  *(v12 + 616) = v13;
  *(v12 + 16) = a1;
  swift_beginAccess();
  v34 = a2[13];
  *(v12 + 224) = a2[12];
  *(v12 + 240) = v34;
  v35 = a2[15];
  *(v12 + 256) = a2[14];
  *(v12 + 272) = v35;
  v36 = a2[9];
  *(v12 + 160) = a2[8];
  *(v12 + 176) = v36;
  v37 = a2[11];
  *(v12 + 192) = a2[10];
  *(v12 + 208) = v37;
  v38 = a2[5];
  *(v12 + 96) = a2[4];
  *(v12 + 112) = v38;
  v39 = a2[7];
  *(v12 + 128) = a2[6];
  *(v12 + 144) = v39;
  v40 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v40;
  v41 = a2[3];
  *(v12 + 64) = a2[2];
  *(v12 + 80) = v41;
  *(v12 + 600) = a4;
  *(v12 + 608) = a5;
  *(v12 + 288) = a6;
  *(v12 + 304) = a6;

  v42 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v43 & 1) == 0)
  {
    if (v42 <= 0.0)
    {
      *(v12 + 296) = 0;
    }

    else
    {
      v46 = log2(v42 * 240.0);
      v47 = exp2(floor(v46 + 0.01)) * 0.00416666667;
      *(v12 + 296) = v47;
      if (v47 >= 0.0166666667)
      {

        v44 = 0;
        goto LABEL_3;
      }
    }

    v48 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v44 = v48;
    v45 = HIDWORD(v48) & 1;

    goto LABEL_9;
  }

  v44 = 0;
  *(v12 + 296) = 0;
LABEL_3:
  LOBYTE(v45) = 1;
LABEL_9:
  *(v12 + 568) = v44;
  *(v12 + 572) = v45;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVyS2fGGG_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7, float a8, double a9)
{
  type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v18 + 40) = 0;
  *(v18 + 92) = 1;
  *(v18 + 32) = 0;
  *(v18 + 72) = 0;
  *(v18 + 80) = 0;
  *(v18 + 64) = 0;
  *(v18 + 88) = 0;
  *(v18 + 96) = v19;
  *(v18 + 104) = v19;
  *(v18 + 112) = 0;
  *(v18 + 120) = 0;
  *(v18 + 128) = 0;
  *(v18 + 136) = v19;
  *(v18 + 16) = a1;
  *(v18 + 24) = v20;
  swift_beginAccess();
  *(v18 + 32) = a5;
  *(v18 + 36) = a6;
  *(v18 + 40) = a7;
  *(v18 + 44) = a8;
  *(v18 + 120) = a3;
  *(v18 + 128) = a4;
  *(v18 + 48) = a9;
  *(v18 + 64) = a9;

  v21 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v22 & 1) == 0)
  {
    if (v21 <= 0.0)
    {
      *(v18 + 56) = 0;
    }

    else
    {
      v25 = log2(v21 * 240.0);
      v26 = exp2(floor(v25 + 0.01)) * 0.00416666667;
      *(v18 + 56) = v26;
      if (v26 >= 0.0166666667)
      {

        v23 = 0;
        goto LABEL_3;
      }
    }

    v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v23 = v27;
    v24 = HIDWORD(v27) & 1;

    goto LABEL_9;
  }

  v23 = 0;
  *(v18 + 56) = 0;
LABEL_3:
  LOBYTE(v24) = 1;
LABEL_9:
  *(v18 + 88) = v23;
  *(v18 + 92) = v24;
  return v18;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVySfAVyS2fGGGG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>(0);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 40) = 0;
  *(v12 + 104) = 1;
  *(v12 + 32) = 0;
  *(v12 + 48) = 0;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 112) = v13;
  *(v12 + 120) = v13;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  *(v12 + 152) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  *(v12 + 32) = *a2;
  *(v12 + 48) = *(a2 + 16);
  *(v12 + 136) = a4;
  *(v12 + 144) = a5;
  *(v12 + 56) = a6;
  *(v12 + 72) = a6;

  v15 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v16 & 1) == 0)
  {
    if (v15 <= 0.0)
    {
      *(v12 + 64) = 0;
    }

    else
    {
      v19 = log2(v15 * 240.0);
      v20 = exp2(floor(v19 + 0.01)) * 0.00416666667;
      *(v12 + 64) = v20;
      if (v20 >= 0.0166666667)
      {

        v17 = 0;
        goto LABEL_3;
      }
    }

    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v17 = v21;
    v18 = HIDWORD(v21) & 1;

    goto LABEL_9;
  }

  v17 = 0;
  *(v12 + 64) = 0;
LABEL_3:
  LOBYTE(v18) = 1;
LABEL_9:
  *(v12 + 100) = v17;
  *(v12 + 104) = v18;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVySfAVySfAVyS2fGGGAVy12CoreGraphics7CGFloatVAVyA0_A0_GGG_Tt4B5Tm(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), double a7)
{
  a6(0);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0;
  *(v13 + 140) = 1;
  *(v13 + 32) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0;
  *(v13 + 144) = v14;
  *(v13 + 152) = v14;
  *(v13 + 160) = 0;
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;
  *(v13 + 184) = v14;
  *(v13 + 16) = a1;
  *(v13 + 24) = v15;
  swift_beginAccess();
  v16 = *(a2 + 16);
  *(v13 + 32) = *a2;
  *(v13 + 48) = v16;
  *(v13 + 64) = *(a2 + 32);
  *(v13 + 168) = a4;
  *(v13 + 176) = a5;
  *(v13 + 72) = a7;
  *(v13 + 88) = a7;

  v17 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v18 & 1) == 0)
  {
    if (v17 <= 0.0)
    {
      *(v13 + 80) = 0;
    }

    else
    {
      v21 = log2(v17 * 240.0);
      v22 = exp2(floor(v21 + 0.01)) * 0.00416666667;
      *(v13 + 80) = v22;
      if (v22 >= 0.0166666667)
      {

        v19 = 0;
        goto LABEL_3;
      }
    }

    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v19 = v23;
    v20 = HIDWORD(v23) & 1;

    goto LABEL_9;
  }

  v19 = 0;
  *(v13 + 80) = 0;
LABEL_3:
  LOBYTE(v20) = 1;
LABEL_9:
  *(v13 + 136) = v19;
  *(v13 + 140) = v20;
  return v13;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2YQPG_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>(0);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v17 = MEMORY[0x1E69E7DE0];
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v19 = v38;
  v18 = v39;
  v20 = v37;
  v21 = *(*(v17 - 8) + 8);
  v21(&v37, v17);
  v21(&v38, v17);
  v21(&v39, v17);
  *(v15 + 32) = v18;
  *(v15 + 40) = v19;
  *(v15 + 48) = v20;
  *(v15 + 72) = 0;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v23 = v35;
  v22 = v36;
  v24 = v34;
  v21(&v34, v17);
  v21(&v35, v17);
  v21(&v36, v17);
  *(v15 + 80) = v22;
  *(v15 + 88) = v23;
  *(v15 + 96) = v24;
  *(v15 + 104) = 0;
  *(v15 + 108) = 1;
  *(v15 + 112) = v16;
  *(v15 + 120) = v16;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 144) = 0;
  *(v15 + 152) = v16;
  *(v15 + 16) = a1;
  swift_beginAccess();
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  *(v15 + 48) = a7;
  *(v15 + 136) = a3;
  *(v15 + 144) = a4;
  *(v15 + 56) = a8;
  *(v15 + 72) = a8;

  v25 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v26 & 1) == 0)
  {
    if (v25 <= 0.0)
    {
      *(v15 + 64) = 0;
    }

    else
    {
      v29 = log2(v25 * 240.0);
      v30 = exp2(floor(v29 + 0.01)) * 0.00416666667;
      *(v15 + 64) = v30;
      if (v30 >= 0.0166666667)
      {

        v27 = 0;
        goto LABEL_3;
      }
    }

    v31 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v27 = v31;
    v28 = HIDWORD(v31) & 1;

    goto LABEL_9;
  }

  v27 = 0;
  *(v15 + 64) = 0;
LABEL_3:
  LOBYTE(v28) = 1;
LABEL_9:
  *(v15 + 104) = v27;
  *(v15 + 108) = v28;
  return v15;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA30RoundedRectangularShapeCornersV14AnimatableDataV_Tt4B5(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static RoundedRectangularShapeCorners.AnimatableData.zero.getter((v12 + 32));
  *(v12 + 176) = 0;
  static RoundedRectangularShapeCorners.AnimatableData.zero.getter((v12 + 184));
  *(v12 + 312) = 0;
  *(v12 + 316) = 1;
  *(v12 + 320) = v13;
  *(v12 + 328) = v13;
  *(v12 + 336) = 0;
  *(v12 + 344) = 0;
  *(v12 + 352) = 0;
  *(v12 + 360) = v13;
  *(v12 + 16) = a1;
  swift_beginAccess();
  v14 = a2[5];
  *(v12 + 96) = a2[4];
  *(v12 + 112) = v14;
  v15 = a2[7];
  *(v12 + 128) = a2[6];
  *(v12 + 144) = v15;
  v16 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v16;
  v17 = a2[3];
  *(v12 + 64) = a2[2];
  *(v12 + 80) = v17;
  *(v12 + 344) = a4;
  *(v12 + 352) = a5;
  *(v12 + 160) = a6;
  *(v12 + 176) = a6;

  v18 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v19 & 1) == 0)
  {
    if (v18 <= 0.0)
    {
      *(v12 + 168) = 0;
    }

    else
    {
      v22 = log2(v18 * 240.0);
      v23 = exp2(floor(v22 + 0.01)) * 0.00416666667;
      *(v12 + 168) = v23;
      if (v23 >= 0.0166666667)
      {

        v20 = 0;
        goto LABEL_3;
      }
    }

    v24 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v20 = v24;
    v21 = HIDWORD(v24) & 1;

    goto LABEL_9;
  }

  v20 = 0;
  *(v12 + 168) = 0;
LABEL_3:
  LOBYTE(v21) = 1;
LABEL_9:
  *(v12 + 312) = v20;
  *(v12 + 316) = v21;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA4EdgeOAAE6CornerO5StyleV14AnimatableDataV_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimatorState);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v18 + 124) = 1;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 108) = 0u;
  *(v18 + 128) = v19;
  *(v18 + 136) = v19;
  *(v18 + 144) = 0;
  *(v18 + 152) = 0;
  *(v18 + 160) = 0;
  *(v18 + 168) = v19;
  *(v18 + 16) = a1;
  *(v18 + 24) = v20;
  swift_beginAccess();
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = a7;
  *(v18 + 152) = a3;
  *(v18 + 160) = a4;
  *(v18 + 56) = a8;
  *(v18 + 64) = a9;
  *(v18 + 80) = a9;

  v21 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v22 & 1) == 0)
  {
    if (v21 <= 0.0)
    {
      *(v18 + 72) = 0;
    }

    else
    {
      v25 = log2(v21 * 240.0);
      v26 = exp2(floor(v25 + 0.01)) * 0.00416666667;
      *(v18 + 72) = v26;
      if (v26 >= 0.0166666667)
      {

        v23 = 0;
        goto LABEL_3;
      }
    }

    v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v23 = v27;
    v24 = HIDWORD(v27) & 1;

    goto LABEL_9;
  }

  v23 = 0;
  *(v18 + 72) = 0;
LABEL_3:
  LOBYTE(v24) = 1;
LABEL_9:
  *(v18 + 120) = v23;
  *(v18 + 124) = v24;
  return v18;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVySfAVySfAVyS2fGGGGG_Tt4B5Tm(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), double a7)
{
  a6(0);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 108) = 1;
  *(v13 + 32) = 0;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = v14;
  *(v13 + 120) = v14;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 144) = 0;
  *(v13 + 152) = v14;
  *(v13 + 16) = a1;
  *(v13 + 24) = v15;
  swift_beginAccess();
  *(v13 + 32) = *a2;
  *(v13 + 48) = *(a2 + 16);
  *(v13 + 136) = a4;
  *(v13 + 144) = a5;
  *(v13 + 56) = a7;
  *(v13 + 72) = a7;

  v16 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v17 & 1) == 0)
  {
    if (v16 <= 0.0)
    {
      *(v13 + 64) = 0;
    }

    else
    {
      v20 = log2(v16 * 240.0);
      v21 = exp2(floor(v20 + 0.01)) * 0.00416666667;
      *(v13 + 64) = v21;
      if (v21 >= 0.0166666667)
      {

        v18 = 0;
        goto LABEL_3;
      }
    }

    v22 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v18 = v22;
    v19 = HIDWORD(v22) & 1;

    goto LABEL_9;
  }

  v18 = 0;
  *(v13 + 64) = 0;
LABEL_3:
  LOBYTE(v19) = 1;
LABEL_9:
  *(v13 + 104) = v18;
  *(v13 + 108) = v19;
  return v13;
}

Swift::Void __swiftcall AnimatorState.removeListeners()()
{
  v2 = v1;
  v3 = *v1;
  v4 = type metadata accessor for AnimatorState.Fork(0, v3[10], v3[11], v0);
  v40 = *(v4 - 8);
  v37 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - v5;
  v7 = v3[21];
  swift_beginAccess();
  v8 = *&v7[v2];
  if (v8 >> 62)
  {
    goto LABEL_58;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = v2;
    v12 = *&v7[v2];
    if (v12 >> 62)
    {
      v13 = __CocoaSet.count.getter();
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_6:
        if (v13 < 1)
        {
          __break(1u);
          goto LABEL_66;
        }

        for (i = 0; i != v13; ++i)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x193AC03C0](i, v12);
          }

          else
          {
            v15 = *(v12 + 8 * i + 32);
          }

          (*(*v15 + 96))();
        }
      }
    }

    v2 = v11;
    *&v7[v11] = v10;
  }

  v16 = *(*v2 + 176);
  swift_beginAccess();
  v17 = *(v2 + v16);
  if (v17 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_26;
    }

LABEL_16:
    v18 = v2;
    v19 = *(v2 + v16);
    if (v19 >> 62)
    {
      v20 = __CocoaSet.count.getter();
      if (v20)
      {
LABEL_18:
        if (v20 >= 1)
        {

          for (j = 0; j != v20; ++j)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x193AC03C0](j, v19);
            }

            else
            {
              v22 = *(v19 + 8 * j + 32);
            }

            (*(*v22 + 96))();
          }

          goto LABEL_25;
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v2 = v18;
    *(v18 + v16) = v10;

    goto LABEL_26;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v23 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v23)
  {
    return;
  }

  v24 = *(*v2 + 200);
  swift_beginAccess();
  v41[0] = *(v2 + v24);
  v25 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v25);
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    v36[1] = v25;
    v36[2] = v24;
    v36[3] = v2;
    v26 = *(v2 + v24);

    if (MEMORY[0x193ABF2C0](v27, v4))
    {
      v28 = 0;
      v38 = *(v4 + 48);
      v39 = (v40 + 16);
      v7 = (v40 + 8);
      do
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          (*(v40 + 16))(v6, v26 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v28, v4);
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v35 = _ArrayBuffer._getElementSlowPath(_:)();
          if (v37 != 8)
          {
            goto LABEL_67;
          }

          v41[0] = v35;
          (*v39)(v6, v41, v4);
          swift_unknownObjectRelease();
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            v9 = __CocoaSet.count.getter();
            goto LABEL_3;
          }
        }

        v31 = *&v6[v38];
        v32 = *v7;

        v32(v6, v4);
        if (v31 >> 62)
        {
          v2 = __CocoaSet.count.getter();
          if (!v2)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v2 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v2)
          {
            goto LABEL_37;
          }
        }

        if (v2 < 1)
        {
          goto LABEL_57;
        }

        for (k = 0; k != v2; ++k)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x193AC03C0](k, v31);
          }

          else
          {
            v34 = *(v31 + 8 * k + 32);
          }

          (*(*v34 + 96))();
        }

LABEL_37:
      }

      while (v28 != MEMORY[0x193ABF2C0](v26, v4));
    }

    swift_beginAccess();
    Array.removeAll(keepingCapacity:)(0);
    swift_endAccess();
  }
}

uint64_t specialized AnimatorState.Fork.update(time:environment:)(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = v2[1];

  v32[0] = v5;
  v32[1] = AGCreateWeakAttribute();
  v33 = 0;
  v6 = v3[7];
  if (v6)
  {
    v7 = v3[8];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>(0);
    v9 = v8;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>, MEMORY[0x1E69E6720]);
    v31[3] = v10;
    v31[0] = v6;
    v31[1] = v7;
    specialized Dictionary.subscript.setter(v31, v9);
  }

  v11 = *v3;
  v12 = v3[2];
  v13 = v3[3];
  v14 = *(v3 + 12);
  v28[0] = v12;
  v28[1] = v13;
  v29 = *(v3 + 2);
  v30 = v14;
  type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>(0);
  if (v15 == MEMORY[0x1E69E63B0])
  {
    v26[0] = v12;
    (*(*v11 + 120))(v31, v26, v32, MEMORY[0x1E69E63B0], &protocol witness table for Double, a2);
    v20 = v31[0];
  }

  else
  {
    v16 = v15;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v16 == v17)
    {
      v21 = v17;
      v26[0] = v12;
      v26[1] = v13;
      v27 = v29;
      v22 = *(*v11 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v22(v31, v26, v32, v21, v23, a2);
    }

    else
    {
      v18 = *(*v11 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v18(v31, v28, v32, v16, v19, a2);
    }

    v20 = v31[0];
  }

  if (v20)
  {
    outlined consume of ScrapeableContent?(v20);
    v24 = HIBYTE(v33);
  }

  else
  {
    outlined consume of ScrapeableContent?(0);
    v24 = 1;
  }

  return v24;
}

{
  v3 = v2;
  v5 = v2[1];

  v32[0] = v5;
  v32[1] = AGCreateWeakAttribute();
  v33 = 0;
  v6 = v3[7];
  if (v6)
  {
    v7 = v3[8];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>(0);
    v9 = v8;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
    v30[3] = v10;
    v30[0] = v6;
    v30[1] = v7;
    specialized Dictionary.subscript.setter(v30, v9);
  }

  v11 = *v3;
  v12 = v3[4];
  v27 = *(v3 + 1);
  v28 = v12;
  v23 = *(v3 + 5);
  v29 = v23;
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
  if (v13 == MEMORY[0x1E69E63B0])
  {
    *&v24 = v27;
    (*(*v11 + 120))(v30, &v24, v32, MEMORY[0x1E69E63B0], &protocol witness table for Double, a2);
  }

  else
  {
    v14 = v13;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v14 == v15)
    {
      v18 = v15;
      v24 = v27;
      v25 = v12;
      v26 = v23;
      v19 = *(*v11 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v19(v30, &v24, v32, v18, v20, a2);
    }

    else
    {
      v16 = *(*v11 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v16(v30, &v27, v32, v14, v17, a2);
    }
  }

  v21 = v31 | HIBYTE(v33);

  return v21 & 1;
}

{
  v3 = v2;
  v5 = v2[1];

  v30[0] = v5;
  v30[1] = AGCreateWeakAttribute();
  v31 = 0;
  v6 = v3[9];
  if (v6)
  {
    v7 = v3[10];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>(0);
    v9 = v8;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>, MEMORY[0x1E69E6720]);
    v28[3] = v10;
    v28[0] = v6;
    v28[1] = v7;
    specialized Dictionary.subscript.setter(v28, v9);
  }

  v11 = *v3;
  v12 = *(v3 + 2);
  v24 = *(v3 + 1);
  v25 = v12;
  v26 = *(v3 + 3);
  v27 = *(v3 + 64);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>(0);
  if (v13 == MEMORY[0x1E69E63B0])
  {
    *&v23[0] = v24;
    (*(*v11 + 120))(v28, v23, v30, MEMORY[0x1E69E63B0], &protocol witness table for Double, a2);
    if (v29)
    {
      goto LABEL_8;
    }

LABEL_10:

    v18 = 1;
    goto LABEL_11;
  }

  v14 = v13;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v14 == v15)
  {
    v19 = v15;
    v23[0] = v24;
    v23[1] = v25;
    v20 = *(*v11 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v20(v28, v23, v30, v19, v21, a2);
    if (v29)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v16 = *(*v11 + 120);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>, protocol conformance descriptor for AnimatablePair<A, B>);
  v16(v28, &v24, v30, v14, v17, a2);
  if (!v29)
  {
    goto LABEL_10;
  }

LABEL_8:

  v18 = HIBYTE(v31);
LABEL_11:

  return v18;
}

{
  v3 = v2;
  v5 = v2[1];

  v31[0] = v5;
  v31[1] = AGCreateWeakAttribute();
  v32 = 0;
  v6 = v3[9];
  if (v6)
  {
    v7 = v3[10];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>(0);
    v9 = v8;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v30 = v10;
    v28[0] = v6;
    v28[1] = v7;
    specialized Dictionary.subscript.setter(v28, v9);
  }

  v11 = *v3;
  v12 = *(v3 + 2);
  v24 = *(v3 + 1);
  v25 = v12;
  v26 = *(v3 + 3);
  v27 = v3[8];
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v13 == MEMORY[0x1E69E63B0])
  {
    *&v23[0] = v24;
    (*(*v11 + 120))(v28, v23, v31, MEMORY[0x1E69E63B0], &protocol witness table for Double, a2);
    if (v29)
    {
      goto LABEL_8;
    }

LABEL_10:

    v18 = 1;
    goto LABEL_11;
  }

  v14 = v13;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v14 == v15)
  {
    v19 = v15;
    v23[0] = v24;
    v23[1] = v25;
    v20 = *(*v11 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v20(v28, v23, v31, v19, v21, a2);
    if (v29)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v16 = *(*v11 + 120);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v16(v28, &v24, v31, v14, v17, a2);
  if (!v29)
  {
    goto LABEL_10;
  }

LABEL_8:

  v18 = HIBYTE(v32);
LABEL_11:

  return v18;
}

{
  v3 = v2;
  v5 = v2[1];

  v31[0] = v5;
  v31[1] = AGCreateWeakAttribute();
  v32 = 0;
  v6 = v3[9];
  if (v6)
  {
    v7 = v3[10];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>(0);
    v9 = v8;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>, MEMORY[0x1E69E6720]);
    v30 = v10;
    v28[0] = v6;
    v28[1] = v7;
    specialized Dictionary.subscript.setter(v28, v9);
  }

  v11 = *v3;
  v12 = *(v3 + 2);
  v24 = *(v3 + 1);
  v25 = v12;
  v26 = *(v3 + 3);
  v27 = v3[8];
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>(0);
  if (v13 == MEMORY[0x1E69E63B0])
  {
    *&v23[0] = v24;
    (*(*v11 + 120))(v28, v23, v31, MEMORY[0x1E69E63B0], &protocol witness table for Double, a2);
    if (v29)
    {
      goto LABEL_8;
    }

LABEL_10:

    v18 = 1;
    goto LABEL_11;
  }

  v14 = v13;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v14 == v15)
  {
    v19 = v15;
    v23[0] = v24;
    v23[1] = v25;
    v20 = *(*v11 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v20(v28, v23, v31, v19, v21, a2);
    if (v29)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v16 = *(*v11 + 120);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v16(v28, &v24, v31, v14, v17, a2);
  if (!v29)
  {
    goto LABEL_10;
  }

LABEL_8:

  v18 = HIBYTE(v32);
LABEL_11:

  return v18;
}

{
  v3 = v2;
  v5 = v2[1];

  v29[0] = v5;
  v29[1] = AGCreateWeakAttribute();
  v30 = 0;
  v6 = v3[5];
  if (v6)
  {
    v7 = v3[6];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimationFinishingDefinitionKey);
    v9 = v8;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
    v26[3] = v10;
    v26[0] = v6;
    v26[1] = v7;
    specialized Dictionary.subscript.setter(v26, v9);
  }

  v11 = *v3;
  v12 = v3[2];
  v13 = *(v3 + 24);
  v14 = *(v3 + 7);
  v15 = *(v3 + 32);
  v27 = v12;
  LOBYTE(v28) = v13;
  DWORD1(v28) = v14;
  BYTE8(v28) = v15;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v16 == &type metadata for ResolvedGradientVector)
  {
    v23 = v12;
    v24 = v28;
    v25 = v29[0];
    v20 = *(*v11 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v20(v26, &v23, v29, &type metadata for ResolvedGradientVector, v21, a2);
    if (v26[0])
    {
      goto LABEL_5;
    }

LABEL_7:

    v19 = 1;
    goto LABEL_8;
  }

  v17 = *(*v11 + 120);
  lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector();
  v17(v26, &v27, v29, &type metadata for ResolvedGradientVector, v18, a2);
  if (!v26[0])
  {
    goto LABEL_7;
  }

LABEL_5:

  v19 = HIBYTE(v30);
LABEL_8:

  return v19;
}

{
  v3 = v2;
  v5 = v2[1];

  v46[0] = v5;
  v46[1] = AGCreateWeakAttribute();
  v47 = 0;
  v6 = v3[15];
  if (v6)
  {
    v7 = v3[16];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>(0);
    v9 = v8;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>, MEMORY[0x1E69E6720]);
    *(&v40 + 1) = v10;
    *&v39 = v6;
    *(&v39 + 1) = v7;
    specialized Dictionary.subscript.setter(&v39, v9);
  }

  v11 = *v3;
  v12 = *(v3 + 6);
  v36 = *(v3 + 5);
  v37 = v12;
  v38 = v3[14];
  v13 = *(v3 + 2);
  v32 = *(v3 + 1);
  v33 = v13;
  v14 = *(v3 + 4);
  v34 = *(v3 + 3);
  v35 = v14;
  type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>(0);
  if (v15 == MEMORY[0x1E69E63B0])
  {
    *&v25 = v32;
    (*(*v11 + 120))(&v39, &v25, v46, MEMORY[0x1E69E63B0], &protocol witness table for Double, a2);
    if (v45)
    {
      goto LABEL_8;
    }

LABEL_10:
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    outlined destroy of Slice<IndexSet>(&v25, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
    v20 = 1;
    goto LABEL_11;
  }

  v16 = v15;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v16 == v17)
  {
    v21 = v17;
    v25 = v32;
    v26 = v33;
    v22 = *(*v11 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v22(&v39, &v25, v46, v21, v23, a2);
    if (v45)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v18 = *(*v11 + 120);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
  v18(&v39, &v32, v46, v16, v19, a2);
  if (!v45)
  {
    goto LABEL_10;
  }

LABEL_8:
  v29 = v43;
  v30 = v44;
  v31 = v45;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  outlined destroy of Slice<IndexSet>(&v25, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
  v20 = HIBYTE(v47);
LABEL_11:

  return v20;
}

{
  v3 = v2;
  v5 = v2[1];

  v39[0] = v5;
  v39[1] = AGCreateWeakAttribute();
  v40 = 0;
  v6 = v3[13];
  if (v6)
  {
    v7 = v3[14];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v9 = v8;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    *(&v34 + 1) = v10;
    *&v33 = v6;
    *(&v33 + 1) = v7;
    specialized Dictionary.subscript.setter(&v33, v9);
  }

  v11 = *v3;
  v12 = *(v3 + 4);
  v29 = *(v3 + 3);
  v30 = v12;
  v31 = *(v3 + 5);
  v32 = *(v3 + 96);
  v13 = *(v3 + 2);
  v27 = *(v3 + 1);
  v28 = v13;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v14 == &type metadata for _ShapeStyle_Pack.Fill.AnimatableData)
  {
    v21 = v27;
    v22 = v28;
    v17 = *(*v11 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v17(&v33, &v21, v39, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v18, a2);
  }

  else
  {
    v15 = *(*v11 + 120);
    lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData();
    v15(&v33, &v27, v39, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v16, a2);
  }

  v23 = v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v21 = v33;
  v22 = v34;
  if (v38 == 255)
  {
    outlined destroy of HitTestableEvent?(&v21, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    v19 = 1;
  }

  else
  {
    outlined destroy of HitTestableEvent?(&v21, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    v19 = HIBYTE(v40);
  }

  return v19;
}

{
  v3 = v2;
  v5 = v2[1];

  v30[0] = v5;
  v30[1] = AGCreateWeakAttribute();
  v31 = 0;
  v6 = v3[8];
  if (v6)
  {
    v7 = v3[9];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v9 = v8;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
    v28[3] = v10;
    v28[0] = v6;
    v28[1] = v7;
    specialized Dictionary.subscript.setter(v28, v9);
  }

  v11 = *v3;
  v12 = v3[2];
  v13 = v3[3];
  v14 = v3[4];
  v15 = *(v3 + 56);
  v25[0] = v12;
  v25[1] = v13;
  v25[2] = v14;
  v23 = *(v3 + 5);
  v26 = v23;
  v27 = v15;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v16 == &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    v24[0] = v12;
    v24[1] = v13;
    v24[2] = v14;
    v24[3] = v23;
    v19 = *(*v11 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v19(v28, v24, v30, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v20, a2);
  }

  else
  {
    v17 = *(*v11 + 120);
    lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData();
    v17(v28, v25, v30, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v18, a2);
  }

  v21 = v29 | HIBYTE(v31);

  return v21 & 1;
}

{
  v3 = v2;
  v5 = v2[1];

  v34[0] = v5;
  v34[1] = AGCreateWeakAttribute();
  v35 = 0;
  v6 = v3[9];
  if (v6)
  {
    v7 = v3[10];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>(0);
    v9 = v8;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>, MEMORY[0x1E69E6720]);
    v32[3] = v10;
    v32[0] = v6;
    v32[1] = v7;
    specialized Dictionary.subscript.setter(v32, v9);
  }

  v11 = *v3;
  v12 = v3[3];
  v13 = v3[4];
  v14 = v3[7];
  v15 = *(v3 + 64);
  LODWORD(v28[0]) = *(v3 + 4);
  v28[1] = v12;
  v28[2] = v13;
  v26 = *(v3 + 5);
  v29 = v26;
  v30 = v14;
  v31 = v15;
  type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>(0);
  if (v16 == MEMORY[0x1E69E63B0])
  {
    v27[0] = v28[0];
    (*(*v11 + 120))(v32, v27, v34, MEMORY[0x1E69E63B0], &protocol witness table for Double, a2);
  }

  else
  {
    v17 = v16;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v17 == v18)
    {
      v21 = v18;
      v27[0] = v28[0];
      v27[1] = v12;
      v27[2] = v13;
      v27[3] = v26;
      v22 = *(*v11 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v22(v32, v27, v34, v21, v23, a2);
    }

    else
    {
      v19 = *(*v11 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>, protocol conformance descriptor for AnimatablePair<A, B>);
      v19(v32, v28, v34, v17, v20, a2);
    }
  }

  v24 = v33 | HIBYTE(v35);

  return v24 & 1;
}

{
  v3 = v2;
  v5 = v2[1];

  v46[0] = v5;
  v46[1] = AGCreateWeakAttribute();
  v47 = 0;
  v6 = v3[34];
  if (v6)
  {
    v7 = v3[35];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v9 = v8;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
    *&__src[24] = v10;
    *__src = v6;
    *&__src[8] = v7;
    specialized Dictionary.subscript.setter(__src, v9);
  }

  v11 = *v3;
  v12 = *(v3 + 14);
  v41 = *(v3 + 13);
  v42 = v12;
  v13 = *(v3 + 16);
  v43 = *(v3 + 15);
  v44 = v13;
  v14 = *(v3 + 10);
  v37 = *(v3 + 9);
  v38 = v14;
  v15 = *(v3 + 12);
  v39 = *(v3 + 11);
  v40 = v15;
  v16 = *(v3 + 6);
  v33 = *(v3 + 5);
  v34 = v16;
  v17 = *(v3 + 8);
  v35 = *(v3 + 7);
  v36 = v17;
  v18 = *(v3 + 2);
  v29 = *(v3 + 1);
  v30 = v18;
  v19 = *(v3 + 4);
  v31 = *(v3 + 3);
  v32 = v19;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v20 == &type metadata for ConcentricRectangle.AnimatableData)
  {
    v28[0] = v29;
    v28[1] = v30;
    v23 = *(*v11 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v23(__src, v28, v46, &type metadata for ConcentricRectangle.AnimatableData, v24, a2);
  }

  else
  {
    v21 = *(*v11 + 120);
    lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData();
    v21(__src, &v29, v46, &type metadata for ConcentricRectangle.AnimatableData, v22, a2);
  }

  memcpy(v28, __src, 0x101uLL);
  v25 = _s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOg(v28) == 1;
  v26 = v25 | HIBYTE(v47);

  return v26 & 1;
}

{
  v3 = v2;
  v5 = v2[1];

  v34[0] = v5;
  v34[1] = AGCreateWeakAttribute();
  v35 = 0;
  v6 = v3[14];
  if (v6)
  {
    v7 = v3[15];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>(0);
    v9 = v8;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
    v32[3] = v10;
    v32[0] = v6;
    v32[1] = v7;
    specialized Dictionary.subscript.setter(v32, v9);
  }

  v11 = *v3;
  v12 = *(v3 + 4);
  v28 = *(v3 + 3);
  v29 = v12;
  v13 = *(v3 + 6);
  v30 = *(v3 + 5);
  v31 = v13;
  v14 = *(v3 + 2);
  v26 = *(v3 + 1);
  v27 = v14;
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>(0);
  if (v15 == MEMORY[0x1E69E63B0])
  {
    *&v25[0] = v26;
    (*(*v11 + 120))(v32, v25, v34, MEMORY[0x1E69E63B0], &protocol witness table for Double, a2);
  }

  else
  {
    v16 = v15;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v16 == v17)
    {
      v20 = v17;
      v25[0] = v26;
      v25[1] = v27;
      v21 = *(*v11 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v21(v32, v25, v34, v20, v22, a2);
    }

    else
    {
      v18 = *(*v11 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>, protocol conformance descriptor for AnimatableValues<Pack{repeat A}>);
      v18(v32, &v26, v34, v16, v19, a2);
    }
  }

  v23 = v33 | HIBYTE(v35);

  return v23 & 1;
}

{
  v3 = v2;
  v5 = v2[1];

  v35[0] = v5;
  v35[1] = AGCreateWeakAttribute();
  v36 = 0;
  v6 = v3[15];
  if (v6)
  {
    v7 = v3[16];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>(0);
    v9 = v8;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>, MEMORY[0x1E69E6720]);
    v33[3] = v10;
    v33[0] = v6;
    v33[1] = v7;
    specialized Dictionary.subscript.setter(v33, v9);
  }

  v11 = *v3;
  v12 = *(v3 + 6);
  v30 = *(v3 + 5);
  v31 = v12;
  v32 = v3[14];
  v13 = *(v3 + 2);
  v26 = *(v3 + 1);
  v27 = v13;
  v14 = *(v3 + 4);
  v28 = *(v3 + 3);
  v29 = v14;
  type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>(0);
  if (v15 == MEMORY[0x1E69E63B0])
  {
    *&v25[0] = v26;
    (*(*v11 + 120))(v33, v25, v35, MEMORY[0x1E69E63B0], &protocol witness table for Double, a2);
  }

  else
  {
    v16 = v15;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v16 == v17)
    {
      v20 = v17;
      v25[0] = v26;
      v25[1] = v27;
      v21 = *(*v11 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v21(v33, v25, v35, v20, v22, a2);
    }

    else
    {
      v18 = *(*v11 + 120);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>, protocol conformance descriptor for AnimatablePair<A, B>);
      v18(v33, &v26, v35, v16, v19, a2);
    }
  }

  v23 = v34 | HIBYTE(v36);

  return v23 & 1;
}

{
  v3 = v2;
  v5 = v2[1];

  v50[0] = v5;
  v50[1] = AGCreateWeakAttribute();
  v51 = 0;
  v6 = v3[18];
  if (v6)
  {
    v7 = v3[19];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v9 = v8;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
    *(&v42 + 1) = v10;
    *&v41 = v6;
    *(&v41 + 1) = v7;
    specialized Dictionary.subscript.setter(&v41, v9);
  }

  v11 = *v3;
  v12 = *(v3 + 6);
  v37 = *(v3 + 5);
  v38 = v12;
  v13 = *(v3 + 8);
  v39 = *(v3 + 7);
  v40 = v13;
  v14 = *(v3 + 2);
  v33 = *(v3 + 1);
  v34 = v14;
  v15 = *(v3 + 4);
  v35 = *(v3 + 3);
  v36 = v15;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v16 == &type metadata for RoundedRectangularShapeCorners.AnimatableData)
  {
    v24 = v33;
    v25 = v34;
    v19 = *(*v11 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v19(&v41, &v24, v50, &type metadata for RoundedRectangularShapeCorners.AnimatableData, v20, a2);
  }

  else
  {
    v17 = *(*v11 + 120);
    lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData();
    v17(&v41, &v33, v50, &type metadata for RoundedRectangularShapeCorners.AnimatableData, v18, a2);
  }

  v30 = v47;
  v31 = v48;
  v32 = v49;
  v26 = v43;
  v27 = v44;
  v28 = v45;
  v29 = v46;
  v24 = v41;
  v25 = v42;
  v21 = _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOg(&v24) == 1;
  v22 = v21 | HIBYTE(v51);

  return v22 & 1;
}

{
  v3 = v2;
  v5 = v2[1];

  v27[0] = v5;
  v27[1] = AGCreateWeakAttribute();
  v28 = 0;
  v6 = v3[6];
  if (v6)
  {
    v7 = v3[7];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v9 = v8;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
    v25[3] = v10;
    v25[0] = v6;
    v25[1] = v7;
    specialized Dictionary.subscript.setter(v25, v9);
  }

  v11 = *v3;
  v12 = v3[2];
  v13 = v3[3];
  v14 = v3[4];
  v15 = v3[5];
  v24[0] = v12;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v16 == &type metadata for Edge.Corner.Style.AnimatableData)
  {
    v23[0] = v12;
    v23[1] = v13;
    v23[2] = v14;
    v23[3] = v15;
    v19 = *(*v11 + 120);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
    v19(v25, v23, v27, &type metadata for Edge.Corner.Style.AnimatableData, v20, a2);
  }

  else
  {
    v17 = *(*v11 + 120);
    lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData();
    v17(v25, v24, v27, &type metadata for Edge.Corner.Style.AnimatableData, v18, a2);
  }

  v21 = v26 | HIBYTE(v28);

  return v21 & 1;
}

uint64_t AnimatorState.Fork.update(time:environment:)(unint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v21 = v3[1];
  v11 = *(a2 + 24);

  AnimationContext.init(state:environment:isLogicallyComplete:)(&v21, 0, v22);
  v13 = (v3 + *(a2 + 44));
  v14 = *v13;
  if (*v13)
  {
    v15 = v13[1];
    v16 = type metadata accessor for AnimationContext(0, v6, v11, v12);
    AnimationContext.finishingDefinition.setter(v14, v15, v16);
  }

  Animation.animate<A>(value:time:context:)(v3 + *(a2 + 40), v22, *v3, v6, v11, v10, a3);
  v17 = (*(*(v6 - 8) + 48))(v10, 1, v6) == 1;
  v18 = v17 | v23;
  (*(v8 + 8))(v10, v7);

  return v18 & 1;
}

void specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((*(v4 + 112) & 1) == 0)
  {
    swift_beginAccess();
    v9 = *(v4 + 104);
    if (v9 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v10 = *(v4 + 128);
    v18 = *(v4 + 120);
    v11 = a4 & 1;
    v12 = *(v4 + 104);
    swift_beginAccess();
    v13 = *(v4 + 136);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 136) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      *(v4 + 136) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[7 * v16];
    v17[4] = a1;
    v17[5] = a2;
    v17[6] = a3;
    *(v17 + 56) = v11;
    v17[8] = v18;
    v17[9] = v10;
    v17[10] = v12;
    *(v4 + 136) = v13;
    swift_endAccess();
    *(v4 + 104) = MEMORY[0x1E69E7CC0];
  }
}

void specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if ((*(v4 + 112) & 1) == 0)
  {
    swift_beginAccess();
    v9 = *(v4 + 104);
    if (v9 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v10 = *(v4 + 120);
    v11 = *(v4 + 128);
    v12 = *(v4 + 104);
    swift_beginAccess();
    v13 = *(v4 + 136);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 136) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      *(v4 + 136) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[7 * v16];
    *(v17 + 4) = a1;
    *(v17 + 5) = a2;
    v17[6] = a3;
    v17[7] = a4;
    *(v17 + 8) = v10;
    *(v17 + 9) = v11;
    *(v17 + 10) = v12;
    *(v4 + 136) = v13;
    swift_endAccess();
    *(v4 + 104) = MEMORY[0x1E69E7CC0];
  }
}

void specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(v3 + 96) & 1) == 0)
  {
    swift_beginAccess();
    v7 = *(v3 + 88);
    if (v7 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = *(v3 + 88);
    swift_beginAccess();
    v11 = *(v3 + 120);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 120) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      *(v3 + 120) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[6 * v14];
    *(v15 + 4) = a1;
    *(v15 + 5) = a2;
    v15[6] = a3;
    *(v15 + 7) = v8;
    *(v15 + 8) = v9;
    *(v15 + 9) = v10;
    *(v3 + 120) = v11;
    swift_endAccess();
    *(v3 + 88) = MEMORY[0x1E69E7CC0];
  }
}

{
  if ((*(v3 + 96) & 1) == 0)
  {
    swift_beginAccess();
    v7 = *(v3 + 88);
    if (v7 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = *(v3 + 88);
    swift_beginAccess();
    v11 = *(v3 + 120);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 120) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      *(v3 + 120) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[6 * v14];
    *(v15 + 4) = a1;
    *(v15 + 5) = a2;
    v15[6] = a3;
    *(v15 + 7) = v8;
    *(v15 + 8) = v9;
    *(v15 + 9) = v10;
    *(v3 + 120) = v11;
    swift_endAccess();
    *(v3 + 88) = MEMORY[0x1E69E7CC0];
  }
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, double a3, double a4, double a5)
{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    *&v24 = v10;
    *(&v24 + 1) = a2;
    *&v25 = a3;
    *(&v25 + 1) = a4;
    *&v26 = a5;
    *(&v26 + 1) = v12;
    *&v27 = v13;
    *(&v27 + 1) = v14;
    swift_beginAccess();
    v15 = *(v5 + 152);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v24, v23, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 152) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
      *(v5 + 152) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    v19 = &v15[8 * v18];
    v20 = v24;
    v21 = v25;
    v22 = v27;
    v19[4] = v26;
    v19[5] = v22;
    v19[2] = v20;
    v19[3] = v21;
    *(v5 + 152) = v15;
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v23[0] = v10;
    v23[1] = a2;
    *&v23[2] = a3;
    *&v23[3] = a4;
    *&v23[4] = a5;
    v23[5] = v12;
    v23[6] = v13;
    v23[7] = v14;
    return outlined destroy of Slice<IndexSet>(v23, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
  }

  return result;
}

{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    *&v24 = v10;
    *(&v24 + 1) = a2;
    *&v25 = a3;
    *(&v25 + 1) = a4;
    *&v26 = a5;
    *(&v26 + 1) = v12;
    *&v27 = v13;
    *(&v27 + 1) = v14;
    swift_beginAccess();
    v15 = *(v5 + 152);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v24, v23, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 152) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
      *(v5 + 152) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    v19 = &v15[8 * v18];
    v20 = v24;
    v21 = v25;
    v22 = v27;
    v19[4] = v26;
    v19[5] = v22;
    v19[2] = v20;
    v19[3] = v21;
    *(v5 + 152) = v15;
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v23[0] = v10;
    v23[1] = a2;
    *&v23[2] = a3;
    *&v23[3] = a4;
    *&v23[4] = a5;
    v23[5] = v12;
    v23[6] = v13;
    v23[7] = v14;
    return outlined destroy of Slice<IndexSet>(v23, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
  }

  return result;
}

{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    v16[0] = v10;
    v16[1] = a2;
    *&v16[2] = a3;
    *&v16[3] = a4;
    *&v16[4] = a5;
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v14;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v16, v15, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    specialized Array.append(_:)(v16);
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v15[0] = v10;
    v15[1] = a2;
    *&v15[2] = a3;
    *&v15[3] = a4;
    *&v15[4] = a5;
    v15[5] = v12;
    v15[6] = v13;
    v15[7] = v14;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
  }

  return result;
}

{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    v16[0] = v10;
    v16[1] = a2;
    *&v16[2] = a3;
    *&v16[3] = a4;
    *&v16[4] = a5;
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v14;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v16, v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
    specialized Array.append(_:)(v16);
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v15[0] = v10;
    v15[1] = a2;
    *&v15[2] = a3;
    *&v15[3] = a4;
    *&v15[4] = a5;
    v15[5] = v12;
    v15[6] = v13;
    v15[7] = v14;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
  }

  return result;
}

{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    v16[0] = v10;
    v16[1] = a2;
    *&v16[2] = a3;
    *&v16[3] = a4;
    *&v16[4] = a5;
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v14;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v16, v15, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
    specialized Array.append(_:)(v16);
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v15[0] = v10;
    v15[1] = a2;
    *&v15[2] = a3;
    *&v15[3] = a4;
    *&v15[4] = a5;
    v15[5] = v12;
    v15[6] = v13;
    v15[7] = v14;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, double a5)
{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    v15 = a4 & 1;
    *&v31 = v10;
    *(&v31 + 1) = a2;
    *&v32 = a3;
    BYTE8(v32) = a4 & 1;
    *&v33 = a5;
    v24 = v12;
    *(&v33 + 1) = v12;
    *&v34 = v13;
    *(&v34 + 1) = v14;
    swift_beginAccess();
    v16 = *(v5 + 152);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v31, v25, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 152) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      *(v5 + 152) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[8 * v19];
    v21 = v31;
    v22 = v32;
    v23 = v34;
    v20[4] = v33;
    v20[5] = v23;
    v20[2] = v21;
    v20[3] = v22;
    *(v5 + 152) = v16;
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v25[0] = v10;
    v25[1] = a2;
    v25[2] = a3;
    v26 = v15;
    v27 = a5;
    v28 = v24;
    v29 = v13;
    v30 = v14;
    return outlined destroy of Slice<IndexSet>(v25, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, __int128 *a3)
{
  if ((*(v3 + 208) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 200);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 216);
    v9 = *(v3 + 224);
    v10 = *(v3 + 200);
    v11 = a3[1];
    v31 = *a3;
    v32 = v11;
    v12 = a3[3];
    v33 = a3[2];
    v34 = v12;
    *&v35 = v6;
    *(&v35 + 1) = a2;
    v38 = v33;
    v39 = v12;
    v36 = v31;
    v37 = v11;
    *&v40 = v8;
    *(&v40 + 1) = v9;
    v41 = v10;
    swift_beginAccess();
    v13 = *(v3 + 232);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v35, v23, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 232) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      *(v3 + 232) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[13 * v16];
    v18 = v35;
    v19 = v37;
    *(v17 + 3) = v36;
    *(v17 + 4) = v19;
    *(v17 + 2) = v18;
    v20 = v38;
    v21 = v39;
    v22 = v40;
    v17[16] = v41;
    *(v17 + 6) = v21;
    *(v17 + 7) = v22;
    *(v17 + 5) = v20;
    *(v3 + 232) = v13;
    swift_endAccess();
    *(v3 + 200) = MEMORY[0x1E69E7CC0];

    v23[0] = v6;
    v23[1] = a2;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v8;
    v29 = v9;
    v30 = v10;
    return outlined destroy of Slice<IndexSet>(v23, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 128) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 120);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = *(v3 + 120);
    v25 = *a3;
    v26 = *(a3 + 4);
    *&v27 = v6;
    *(&v27 + 1) = a2;
    v28 = v25;
    LODWORD(v29) = v26;
    *(&v29 + 1) = v8;
    *&v30 = v9;
    *(&v30 + 1) = v10;
    swift_beginAccess();
    v11 = *(v3 + 152);

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v27, v19, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimatorState.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 152) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      *(v3 + 152) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[8 * v14];
    v16 = v27;
    v17 = v28;
    v18 = v30;
    v15[4] = v29;
    v15[5] = v18;
    v15[2] = v16;
    v15[3] = v17;
    *(v3 + 152) = v11;
    swift_endAccess();
    *(v3 + 120) = MEMORY[0x1E69E7CC0];

    v19[0] = v6;
    v19[1] = a2;
    v20 = v25;
    v21 = v26;
    v22 = v8;
    v23 = v9;
    v24 = v10;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v19, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

{
  if ((*(v3 + 160) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 152);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 168);
    v9 = *(v3 + 176);
    v10 = *(v3 + 152);
    v11 = *a3;
    v12 = a3[1];
    v13 = *(a3 + 8);
    v21[0] = v6;
    v21[1] = a2;
    v22 = v11;
    v23 = v12;
    v24 = v13;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v14, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v21, v14, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
    specialized Array.append(_:)(v21);
    swift_endAccess();
    *(v3 + 152) = MEMORY[0x1E69E7CC0];

    v14[0] = v6;
    v14[1] = a2;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    return outlined destroy of Slice<IndexSet>(v14, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 160) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 152);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 168);
    v9 = *(v3 + 176);
    v10 = *(v3 + 152);
    v20[0] = v6;
    v20[1] = a2;
    v11 = a3[1];
    v21 = *a3;
    v22 = v11;
    v23 = *(a3 + 4);
    v24 = v8;
    v25 = v9;
    v26 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v20, v13, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
    specialized Array.append(_:)(v20);
    swift_endAccess();
    *(v3 + 152) = MEMORY[0x1E69E7CC0];

    v13[0] = v6;
    v13[1] = a2;
    v12 = a3[1];
    v14 = *a3;
    v15 = v12;
    v16 = *(a3 + 4);
    v17 = v8;
    v18 = v9;
    v19 = v10;
    return outlined destroy of Slice<IndexSet>(v13, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 192) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 184);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 200);
    v9 = *(v3 + 208);
    v10 = *(v3 + 184);
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    v14 = *(a3 + 48);
    v23[0] = v6;
    v23[1] = a2;
    v27 = v14;
    v25 = v12;
    v26 = v13;
    v24 = v11;
    v28 = v8;
    v29 = v9;
    v30 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v15, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v23, v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
    specialized Array.append(_:)(v23);
    swift_endAccess();
    *(v3 + 184) = MEMORY[0x1E69E7CC0];

    v15[0] = v6;
    v15[1] = a2;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 192) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 184);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 200);
    v9 = *(v3 + 208);
    v10 = *(v3 + 184);
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    v14 = *(a3 + 6);
    v23[0] = v6;
    v23[1] = a2;
    v25 = v12;
    v26 = v13;
    v24 = v11;
    v27 = v14;
    v28 = v8;
    v29 = v9;
    v30 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v15, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v23, v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    specialized Array.append(_:)(v23);
    swift_endAccess();
    *(v3 + 184) = MEMORY[0x1E69E7CC0];

    v15[0] = v6;
    v15[1] = a2;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 192) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 184);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 200);
    v9 = *(v3 + 208);
    v10 = *(v3 + 184);
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    v14 = *(a3 + 6);
    v23[0] = v6;
    v23[1] = a2;
    v25 = v12;
    v26 = v13;
    v24 = v11;
    v27 = v14;
    v28 = v8;
    v29 = v9;
    v30 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v15, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v23, v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
    specialized Array.append(_:)(v23);
    swift_endAccess();
    *(v3 + 184) = MEMORY[0x1E69E7CC0];

    v15[0] = v6;
    v15[1] = a2;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 288) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 280);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = a3[3];
    v19 = a3[4];
    v20 = a3[5];
    v9 = a3[1];
    v16 = v9;
    v17 = a3[2];
    v18 = v8;
    v34 = *a3;
    v15 = v34;
    v35 = v9;
    v10 = a3[5];
    v38 = v19;
    v39 = v10;
    v11 = *(v3 + 296);
    v12 = *(v3 + 304);
    v13 = *(v3 + 280);
    v21 = *(a3 + 12);
    v33[0] = v6;
    v33[1] = a2;
    v14 = *(a3 + 12);
    v36 = v17;
    v37 = v8;
    v40 = v14;
    v41 = v11;
    v42 = v12;
    v43 = v13;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v22, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v33, v22, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
    specialized Array.append(_:)(v33);
    swift_endAccess();
    *(v3 + 280) = MEMORY[0x1E69E7CC0];

    v22[0] = v6;
    v22[1] = a2;
    v27 = v19;
    v28 = v20;
    v23 = v15;
    v24 = v16;
    v26 = v18;
    v25 = v17;
    v29 = v21;
    v30 = v11;
    v31 = v12;
    v32 = v13;
    return outlined destroy of Slice<IndexSet>(v22, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 256) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 248);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = a3[1];
    v15 = a3[2];
    v16 = a3[3];
    v17 = a3[4];
    v14 = v8;
    v30 = *a3;
    v13 = v30;
    v31 = v8;
    v9 = a3[4];
    v33 = v16;
    v34 = v9;
    v10 = *(v3 + 264);
    v11 = *(v3 + 272);
    v12 = *(v3 + 248);
    v18 = *(a3 + 80);
    *&v29 = v6;
    *(&v29 + 1) = a2;
    v35 = *(a3 + 80);
    v32 = v15;
    v36 = v10;
    v37 = v11;
    v38 = v12;
    swift_beginAccess();

    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(a3, v19);

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v29, v19, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimatorState.Fork);
    specialized Array.append(_:)(&v29);
    swift_endAccess();
    *(v3 + 248) = MEMORY[0x1E69E7CC0];

    v19[0] = v6;
    v19[1] = a2;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v20 = v13;
    v21 = v14;
    v26 = v10;
    v27 = v11;
    v28 = v12;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v19, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

{
  if ((*(v3 + 176) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 168);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v9 = *(v3 + 184);
    v8 = *(v3 + 192);
    v10 = *(v3 + 168);
    v19[0] = v6;
    v19[1] = a2;
    v11 = a3[1];
    v20 = *a3;
    v21[0] = v11;
    *(v21 + 9) = *(a3 + 25);
    v22 = v9;
    v23 = v8;
    v24 = v10;
    swift_beginAccess();

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v19, v13, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimatorState.Fork);
    specialized Array.append(_:)(v19);
    swift_endAccess();
    *(v3 + 168) = MEMORY[0x1E69E7CC0];

    v13[0] = v6;
    v13[1] = a2;
    v12 = a3[1];
    v14 = *a3;
    v15[0] = v12;
    *(v15 + 9) = *(a3 + 25);
    v16 = v9;
    v17 = v8;
    v18 = v10;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v13, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

{
  if ((*(v3 + 192) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 184);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 200);
    v9 = *(v3 + 208);
    v10 = *(v3 + 184);
    v21[0] = v6;
    v21[1] = a2;
    v11 = a3[1];
    v22 = *a3;
    v23 = v11;
    v24 = a3[2];
    v25 = *(a3 + 48);
    v26 = v8;
    v27 = v9;
    v28 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v21, v13, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
    specialized Array.append(_:)(v21);
    swift_endAccess();
    *(v3 + 184) = MEMORY[0x1E69E7CC0];

    v13[0] = v6;
    v13[1] = a2;
    v12 = a3[1];
    v14 = *a3;
    v15 = v12;
    v16 = a3[2];
    v17 = *(a3 + 48);
    v18 = v8;
    v19 = v9;
    v20 = v10;
    return outlined destroy of Slice<IndexSet>(v13, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 592) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 584);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 600);
    v26 = *(v3 + 608);
    v9 = *(v3 + 584);
    v47[0] = v6;
    v47[1] = a2;
    v10 = a3[13];
    v60 = a3[12];
    v61 = v10;
    v11 = a3[15];
    v62 = a3[14];
    v63 = v11;
    v12 = a3[9];
    v56 = a3[8];
    v57 = v12;
    v13 = a3[11];
    v58 = a3[10];
    v59 = v13;
    v14 = a3[5];
    v52 = a3[4];
    v53 = v14;
    v15 = a3[7];
    v54 = a3[6];
    v55 = v15;
    v16 = a3[1];
    v48 = *a3;
    v49 = v16;
    v17 = a3[3];
    v50 = a3[2];
    v51 = v17;
    v64 = v8;
    v65 = v26;
    v66 = v9;
    swift_beginAccess();

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v47, v27, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimatorState.Fork);
    specialized Array.append(_:)(v47);
    swift_endAccess();
    *(v3 + 584) = MEMORY[0x1E69E7CC0];

    v27[0] = v6;
    v27[1] = a2;
    v18 = a3[13];
    v40 = a3[12];
    v41 = v18;
    v19 = a3[15];
    v42 = a3[14];
    v43 = v19;
    v20 = a3[9];
    v36 = a3[8];
    v37 = v20;
    v21 = a3[11];
    v38 = a3[10];
    v39 = v21;
    v22 = a3[5];
    v32 = a3[4];
    v33 = v22;
    v23 = a3[7];
    v34 = a3[6];
    v35 = v23;
    v24 = a3[1];
    v28 = *a3;
    v29 = v24;
    v25 = a3[3];
    v30 = a3[2];
    v31 = v25;
    v44 = v8;
    v45 = v26;
    v46 = v9;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v27, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

{
  if ((*(v3 + 128) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 120);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = *(v3 + 120);
    v17[0] = v6;
    v17[1] = a2;
    v18 = *a3;
    v19 = *(a3 + 4);
    v20 = v8;
    v21 = v9;
    v22 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v17, v11, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
    specialized Array.append(_:)(v17);
    swift_endAccess();
    *(v3 + 120) = MEMORY[0x1E69E7CC0];

    v11[0] = v6;
    v11[1] = a2;
    v12 = *a3;
    v13 = *(a3 + 4);
    v14 = v8;
    v15 = v9;
    v16 = v10;
    return outlined destroy of Slice<IndexSet>(v11, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 160) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 152);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 168);
    v9 = *(v3 + 176);
    v10 = *(v3 + 152);
    v20[0] = v6;
    v20[1] = a2;
    v11 = a3[1];
    v21 = *a3;
    v22 = v11;
    v23 = *(a3 + 4);
    v24 = v8;
    v25 = v9;
    v26 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v20, v13, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
    specialized Array.append(_:)(v20);
    swift_endAccess();
    *(v3 + 152) = MEMORY[0x1E69E7CC0];

    v13[0] = v6;
    v13[1] = a2;
    v12 = a3[1];
    v14 = *a3;
    v15 = v12;
    v16 = *(a3 + 4);
    v17 = v8;
    v18 = v9;
    v19 = v10;
    return outlined destroy of Slice<IndexSet>(v13, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 128) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 120);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = *(v3 + 120);
    v17[0] = v6;
    v17[1] = a2;
    v18 = *a3;
    v19 = *(a3 + 2);
    v20 = v8;
    v21 = v9;
    v22 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v17, v11, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
    specialized Array.append(_:)(v17);
    swift_endAccess();
    *(v3 + 120) = MEMORY[0x1E69E7CC0];

    v11[0] = v6;
    v11[1] = a2;
    v12 = *a3;
    v13 = *(a3 + 2);
    v14 = v8;
    v15 = v9;
    v16 = v10;
    return outlined destroy of Slice<IndexSet>(v11, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 272) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 264);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 280);
    v9 = *(v3 + 288);
    v10 = *(v3 + 264);
    v27[0] = v6;
    v27[1] = a2;
    v11 = a3[3];
    v30 = a3[2];
    v31 = v11;
    v12 = a3[5];
    v32 = a3[4];
    v33 = v12;
    v13 = a3[1];
    v28 = *a3;
    v29 = v13;
    v34 = v8;
    v35 = v9;
    v36 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v27, v17, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
    specialized Array.append(_:)(v27);
    swift_endAccess();
    *(v3 + 264) = MEMORY[0x1E69E7CC0];

    v17[0] = v6;
    v17[1] = a2;
    v14 = a3[3];
    v20 = a3[2];
    v21 = v14;
    v15 = a3[5];
    v22 = a3[4];
    v23 = v15;
    v16 = a3[1];
    v18 = *a3;
    v19 = v16;
    v24 = v8;
    v25 = v9;
    v26 = v10;
    return outlined destroy of Slice<IndexSet>(v17, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 288) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 280);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 296);
    v9 = *(v3 + 304);
    v10 = *(v3 + 280);
    v30[0] = v6;
    v30[1] = a2;
    v11 = a3[5];
    v35 = a3[4];
    v36 = v11;
    v12 = *(a3 + 12);
    v13 = a3[1];
    v31 = *a3;
    v32 = v13;
    v14 = a3[3];
    v33 = a3[2];
    v34 = v14;
    v37 = v12;
    v38 = v8;
    v39 = v9;
    v40 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v30, v19, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
    specialized Array.append(_:)(v30);
    swift_endAccess();
    *(v3 + 280) = MEMORY[0x1E69E7CC0];

    v19[0] = v6;
    v19[1] = a2;
    v15 = a3[5];
    v24 = a3[4];
    v25 = v15;
    v16 = *(a3 + 12);
    v17 = a3[1];
    v20 = *a3;
    v21 = v17;
    v18 = a3[2];
    v23 = a3[3];
    v22 = v18;
    v26 = v16;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    return outlined destroy of Slice<IndexSet>(v19, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 336) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 328);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 344);
    v18 = *(v3 + 352);
    v9 = *(v3 + 328);
    *&v31[0] = v6;
    *(&v31[0] + 1) = a2;
    v10 = a3[5];
    v31[5] = a3[4];
    v31[6] = v10;
    v11 = a3[7];
    v31[7] = a3[6];
    v31[8] = v11;
    v12 = a3[1];
    v31[1] = *a3;
    v31[2] = v12;
    v13 = a3[3];
    v31[3] = a3[2];
    v31[4] = v13;
    v32 = v8;
    v33 = v18;
    v34 = v9;
    swift_beginAccess();

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v31, v19, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimatorState.Fork);
    specialized Array.append(_:)(v31);
    swift_endAccess();
    *(v3 + 328) = MEMORY[0x1E69E7CC0];

    v19[0] = v6;
    v19[1] = a2;
    v14 = a3[5];
    v24 = a3[4];
    v25 = v14;
    v15 = a3[7];
    v26 = a3[6];
    v27 = v15;
    v16 = a3[1];
    v20 = *a3;
    v21 = v16;
    v17 = a3[3];
    v22 = a3[2];
    v23 = v17;
    v28 = v8;
    v29 = v18;
    v30 = v9;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v19, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

{
  if ((*(v3 + 128) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 120);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = *(v3 + 120);
    v17[0] = v6;
    v17[1] = a2;
    v18 = *a3;
    v19 = *(a3 + 2);
    v20 = v8;
    v21 = v9;
    v22 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v17, v11, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
    specialized Array.append(_:)(v17);
    swift_endAccess();
    *(v3 + 120) = MEMORY[0x1E69E7CC0];

    v11[0] = v6;
    v11[1] = a2;
    v12 = *a3;
    v13 = *(a3 + 2);
    v14 = v8;
    v15 = v9;
    v16 = v10;
    return outlined destroy of Slice<IndexSet>(v11, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
  }

  return result;
}