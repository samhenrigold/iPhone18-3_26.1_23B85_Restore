void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(__int128 *a1, void *a2, unsigned int a3, __int128 *a4)
{
  v291 = *MEMORY[0x1E69E9840];
  *&v239 = COERCE_DOUBLE(type metadata accessor for OSSignpostID());
  v236 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v13 = &v215 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v215 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v237 = &v215 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v215 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v238 = &v215 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v228 = &v215 - v25;
  if (*(a4 + 9))
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

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 73) = 1;
  }

  else if (*(a1 + 73) != 1)
  {
    goto LABEL_133;
  }

  v235 = v16;
  v29 = *(a1 + 53);
  v30 = *(a1 + 14);
  if (v29)
  {
    v31 = 0uLL;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
  }

  else
  {
    v35 = a1[1];
    v270[0] = *a1;
    v270[1] = v35;
    v270[2] = a1[2];
    *(&v270[2] + 13) = *(a1 + 45);
    ResolvedShadowStyle.animatableData.getter(&v247);
    v31 = v247;
    v32 = v248;
    v33 = v249;
    v34 = v250;
  }

  v242 = v29 & 1;
  if (*(a4 + 65))
  {
    goto LABEL_132;
  }

  LODWORD(v5) = *(a4 + 4);
  v36 = *(a4 + 24);
  v4 = *(a4 + 5);
  v7 = *(a4 + 6);
  v6 = *(a4 + 7);
  v37 = a4;
  v38 = *(a4 + 64);
  v285 = v5;
  v240 = v36;
  v286 = v36;
  v287 = v4;
  v288 = v7;
  v289 = v6;
  v290 = v38 & 1;
  v279 = v30;
  v233 = v31;
  v280 = v31;
  v281 = v32;
  v282 = v33;
  v232 = v34;
  v283 = v34;
  v29 = v242;
  v284 = v242;
  if ((_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZSf_AA16_ShapeStyle_PackV6EffectV4KindO0C4DataOTt1B5(&v279, &v285) & 1) == 0)
  {
    v234 = a2;
    v231 = v13;
    v219 = v21;
    v222 = a3;
    AGGraphClearUpdate();
    v39 = v37[3];
    v270[2] = v37[2];
    v270[3] = v39;
    v271 = v37[4];
    v272 = *(v37 + 20);
    v40 = *v37;
    v41 = v37[1];
    v227 = v37;
    v270[0] = v40;
    v270[1] = v41;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v270, &v266, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
    v42 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v270, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v221 = v42;
    v43 = Transaction.effectiveAnimation.getter(v42);
    if (v43)
    {
      v13 = v43;
      a3 = v222;
    }

    else
    {
      a3 = v222;
      v13 = v234;
      if (!v234)
      {

        a4 = v227;
        goto LABEL_131;
      }
    }

    v241 = v29;
    v217 = v33;
    v218 = v32;
    v44 = v32;
    v45 = v33;
    v46 = v232;
    v47 = v233;
    if ((v38 & 1) == 0)
    {
      if (v29)
      {
        v241 = 0;
        v44 = v4;
        v45 = v7;
        v46 = v6;
        v47 = v240;
      }

      else
      {
        v44 = v218 - v4;
        v45 = v217 - v7;
        v46 = v232 - v6;
        v48 = vsub_f32(vmovn_s64(v233), vmovn_s64(v240));
        v49.i64[0] = v48.u32[0];
        v49.i64[1] = v48.u32[1];
        v47 = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v233, 0x20uLL), vshrn_n_s64(v240, 0x20uLL)), 0x20uLL), v49);
        v241 = 0;
      }
    }

    v240 = v47;
    v216 = v30;
    v50 = v30 - *&v5;
    v51 = *(&v271 + 1);
    v52 = *AGGraphGetValue();
    v229 = a1;
    v215 = v13;
    if (v51)
    {
      v273 = v50;
      v274 = v240;
      v275 = v44;
      v276 = v45;
      v277 = v46;
      v278 = v241;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v270, &v266, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v266) = 0;
      v220 = v51;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v13, &v273, v221, a3, v52);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v54 = CurrentAttribute;
      v55 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == v55)
      {
        v56 = 0;
      }

      else
      {
        v56 = CurrentAttribute;
      }

      v240.i32[0] = v56;
      v57 = a1[3];
      v260 = a1[2];
      v261[0] = v57;
      *(v261 + 9) = *(a1 + 57);
      v58 = a1[1];
      v258 = *a1;
      v259 = v58;
      v264 = v260;
      v265[0] = v57;
      *(v265 + 9) = *(v261 + 9);
      v262 = v258;
      v263 = v58;
      outlined init with copy of _ShapeStyle_Pack.Effect(&v258, &v266);
      v59 = outlined destroy of _ShapeStyle_Pack.Effect(&v262);
      (*(*v13 + 96))(&v254, v59);
      v60 = *(&v254 + 1);
      v13 = *&v254;
      v61 = *(&v255 + 1);
      v62 = v255;
      v63 = v256;
      LODWORD(v64) = v257;
      v245 = 0x7FF8000000000000;
      v246 = NAN;
      v243 = NAN;
      *&v244 = 1.0;
      v266 = v254;
      v267 = v255;
      *&v268 = v256;
      BYTE8(v268) = v257;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v266, &v246, &v245, &v244, &v243);
      v5 = v245;
      v4 = v246;
      v7 = v243;
      v6 = *&v244;
      v28 = v52;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_206;
      }

      goto LABEL_28;
    }

    v273 = v50;
    v274 = v240;
    v275 = v44;
    v276 = v45;
    v277 = v46;
    v278 = v241;
    *&v262 = &type metadata for _ShapeStyle_Pack.Effect;
    type metadata accessor for _ShapeStyle_Pack.Effect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Type, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);
    v69 = swift_dynamicCast();
    if (v69)
    {
      v70 = v266;
    }

    else
    {
      v70 = 0;
    }

    if (v69)
    {
      v71 = *(&v266 + 1);
    }

    else
    {
      v71 = 0;
    }

    v72 = v221;

    v220 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAA16_ShapeStyle_PackV6EffectV4KindO0U4DataOG_Tt4B5(v73, &v273, v72, v70, v71, v52);
    v74 = AGGraphGetCurrentAttribute();
    v75 = v74;
    v76 = *MEMORY[0x1E698D3F8];
    if (v74 == *MEMORY[0x1E698D3F8])
    {
      v77 = 0;
    }

    else
    {
      v77 = v74;
    }

    LODWORD(v237) = v77;
    v78 = a1[3];
    v264 = a1[2];
    v265[0] = v78;
    *(v265 + 9) = *(a1 + 57);
    v79 = a1[1];
    v262 = *a1;
    v263 = v79;
    v268 = v264;
    v269[0] = v78;
    *(v269 + 9) = *(v265 + 9);
    v266 = v262;
    v267 = v79;
    outlined init with copy of _ShapeStyle_Pack.Effect(&v262, &v258);
    v80 = outlined destroy of _ShapeStyle_Pack.Effect(&v266);
    (*(*v13 + 96))(&v254, v80);
    v81 = v254;
    v82 = *(&v255 + 1);
    v83 = v256;
    v245 = 0x7FF8000000000000;
    v246 = NAN;
    v243 = NAN;
    *&v244 = 1.0;
    v258 = v254;
    v84 = v255;
    v259 = v255;
    *&v260 = v256;
    v240.i32[0] = v257;
    BYTE8(v260) = v257;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v258, &v246, &v245, &v244, &v243);
    v5 = v245;
    v4 = v246;
    v7 = v243;
    v6 = *&v244;
    v28 = v52;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    v30 = v216;
    v33 = v217;
    v32 = v218;
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_210;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v85 = v237;
      v234 = v82;
      v86 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        LODWORD(v230) = v76;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v226 = v83;
        v87 = *(v86 + 16);
        LODWORD(v258) = v85;
        BYTE4(v258) = v75 == v76;
        *(&v258 + 1) = &type metadata for _ShapeStyle_Pack.Effect;
        *&v259 = v4;
        *(&v259 + 1) = v5;
        *&v260 = v6;
        *(&v260 + 1) = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v88 = v87;
        v76 = v230;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v81, *(&v81 + 1), v84, v234, v226, v240.u8[0]);

        goto LABEL_92;
      }

      v95 = *(&v81 + 1);
      v94 = v81;
      v96 = v84;
      v97 = v234;
    }

    else
    {
      v95 = *(&v81 + 1);
      v94 = v81;
      v96 = v84;
      v97 = v82;
    }

    outlined consume of Animation.Function(v94, v95, v96, v97, v83, v240.u8[0]);
LABEL_92:
    v136 = one-time initialization token for animationState;

    if (v136 == -1)
    {
LABEL_93:
      v99 = *(&static Signpost.animationState + 1);
      v98 = static Signpost.animationState;
      v100 = word_1ED5283E8;
      v13 = HIBYTE(word_1ED5283E8);
      v137 = byte_1ED5283EA;
      v138 = static os_signpost_type_t.begin.getter();
      v258 = __PAIR128__(v99, v98);
      LOBYTE(v259) = v100;
      BYTE1(v259) = v13;
      BYTE2(v259) = v137;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v149 = v220;

        goto LABEL_129;
      }

      v240.i32[0] = v138;
      v101 = v76;
      v139 = one-time initialization token for _signpostLog;

      if (v139 != -1)
      {
        goto LABEL_213;
      }

      goto LABEL_95;
    }

LABEL_210:
    swift_once();
    goto LABEL_93;
  }

  a4 = v37;
LABEL_131:
  while (1)
  {
    v31 = v233;
    v34 = v232;
LABEL_132:
    LOBYTE(v270[0]) = v29 & 1;
    LOBYTE(v266) = 0;
    *(a4 + 4) = v30;
    *(a4 + 24) = v31;
    *(a4 + 5) = v32;
    *(a4 + 6) = v33;
    *(a4 + 7) = v34;
    *(a4 + 64) = v29 & 1;
    *(a4 + 65) = 0;
LABEL_133:
    v125 = *(a4 + 9);
    if (*&v125 == 0.0)
    {
      return;
    }

    v169 = *(a1 + 53);
    LODWORD(v4) = *(a1 + 14);
    v229 = a1;
    v227 = a4;
    if (v169)
    {

      v170 = 0;
      v171 = 0uLL;
      v172 = 0uLL;
    }

    else
    {
      v173 = a1[1];
      v270[0] = *a1;
      v270[1] = v173;
      v270[2] = a1[2];
      *(&v270[2] + 13) = *(a1 + 45);

      ResolvedShadowStyle.animatableData.getter(&v262);
      v171 = v262;
      v172 = v263;
      v170 = v264;
    }

    LODWORD(v270[0]) = LODWORD(v4);
    *(v270 + 8) = v171;
    *(&v270[1] + 8) = v172;
    *(&v270[2] + 1) = v170;
    LOBYTE(v270[3]) = v169 & 1;
    LOBYTE(v266) = 0;
    v174 = specialized AnimatorState.update(_:at:environment:)(v270, a3, v28);
    v119 = AGGraphGetCurrentAttribute();
    v61 = *MEMORY[0x1E698D3F8];
    if (v119 == v61)
    {
      LODWORD(v116) = 0;
    }

    else
    {
      LODWORD(v116) = v119;
    }

    v114 = &type metadata instantiation cache for TupleTypeDescription;
    if (v174)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_199;
      }

      goto LABEL_142;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_201;
    }

LABEL_155:
    v186 = *(v114 + 616);
    if (*(v186 + 16) >= 0x43uLL)
    {
      if (*(v186 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v266) = v116;
        BYTE4(v266) = v119 == v61;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_190;
    }

    __break(1u);
LABEL_203:
    swift_once();
LABEL_147:
    v177 = *(&static Signpost.animationState + 1);
    v64 = static Signpost.animationState;
    v62 = word_1ED5283E8;
    v54 = HIBYTE(word_1ED5283E8);
    v178 = byte_1ED5283EA;
    v179 = static os_signpost_type_t.end.getter();
    v266 = __PAIR128__(v177, v64);
    LOBYTE(v267) = v62;
    BYTE1(v267) = v54;
    BYTE2(v267) = v178;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_189;
    }

    v240.i32[0] = v179;
    v180 = one-time initialization token for _signpostLog;
    v63 = v226;

    if (v180 != -1)
    {
      swift_once();
    }

    v60 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v61)
    {
      break;
    }

    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    swift_once();
LABEL_28:
    v30 = v216;
    v33 = v217;
    v32 = v218;
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v235 = v63;
        v65 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          LODWORD(v234) = v55;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          LODWORD(v231) = v64;
          v66 = *(v65 + 16);
          LODWORD(v266) = v240.i32[0];
          BYTE4(v266) = v54 == v55;
          *(&v266 + 1) = &type metadata for _ShapeStyle_Pack.Effect;
          *&v267 = v4;
          *(&v267 + 1) = v5;
          *&v268 = v6;
          *(&v268 + 1) = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v240.i64[0] = v67;

          v68 = v66;
          v55 = v234;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v13, *&v60, v62, v61, v235, v231);

          goto LABEL_52;
        }

        v89 = v13;
        v90 = *&v60;
        v91 = v62;
        v92 = v61;
        v93 = v235;
      }

      else
      {
        v89 = v13;
        v90 = *&v60;
        v91 = v62;
        v92 = v61;
        v93 = v63;
      }

      outlined consume of Animation.Function(v89, v90, v91, v92, v93, v64);
LABEL_52:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v270, &v266, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_53;
      }

      goto LABEL_208;
    }

    __break(1u);
LABEL_208:
    swift_once();
LABEL_53:
    v99 = *(&static Signpost.animationState + 1);
    v98 = static Signpost.animationState;
    v100 = word_1ED5283E8;
    v101 = HIBYTE(word_1ED5283E8);
    v102 = byte_1ED5283EA;
    v103 = static os_signpost_type_t.event.getter();
    v266 = __PAIR128__(v99, v98);
    LOBYTE(v267) = v100;
    BYTE1(v267) = v101;
    BYTE2(v267) = v102;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v270, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v270, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
LABEL_89:
      a1 = v229;
      a4 = v227;
      a3 = v222;
      goto LABEL_130;
    }

    v240.i32[0] = v103;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v270, &v266, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v104 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v105 = COERCE_DOUBLE(swift_allocObject());
    *(v105 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v55)
    {
      __break(1u);
    }

    else
    {
      v13 = v55;
      v106 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v108 = MEMORY[0x1E69E6870];
      *(v105 + 56) = MEMORY[0x1E69E6810];
      *(v105 + 64) = v108;
      *(v105 + 32) = Counter;
      v109 = AGGraphGetCurrentAttribute();
      if (v109 != v13)
      {
        v110 = v105;
        v111 = MEMORY[0x1E69E76D0];
        *(v105 + 96) = MEMORY[0x1E69E7668];
        *(v105 + 104) = v111;
        *(v105 + 72) = v109;
        *(v105 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v105 + 144) = v112;
        *(v105 + 112) = 0x746365666645;
        *(v105 + 120) = 0xE600000000000000;
        if (v101)
        {
          LOBYTE(v243) = v240.i8[0];
          v245 = v104;
          v246 = COERCE_DOUBLE(&dword_18D018000);
          *&v266 = v98;
          *(&v266 + 1) = v99;
          LOBYTE(v267) = v100;
          *&v254 = "Animation: (%p) [%d] %{public}@ updated";
          *(&v254 + 1) = 39;
          LOBYTE(v255) = 2;
          v244 = v105;
          v113 = v219;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v243, &v246, &v245, &v266, v219, &v254, &v244);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v270, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v270, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
          (*(v236 + 8))(v113, v239);
        }

        else
        {
          v114 = v98;
          if (v98 == 20)
          {
            v115 = 3;
          }

          else
          {
            v115 = 4;
          }

          LODWORD(v116) = bswap32(v98) | (4 * WORD1(v98));
          v240.i32[0] = v240.u8[0];
          v117 = v236 + 16;
          v223 = *(v236 + 16);
          v118 = v223(v237, v219, v239);
          v61 = 0;
          LOBYTE(v254) = 1;
          v235 = v115;
          v224 = v117;
          v225 = v114;
          v230 = (16 * v115);
          v231 = (v117 - 8);
          v226 = v110 + 4;
          do
          {
            v234 = &v215;
            MEMORY[0x1EEE9AC00](v118);
            v13 = &v215 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
            v121 = (v13 + 8);
            v122 = v235;
            v123 = (v13 + 8);
            do
            {
              *(v123 - 1) = 0;
              *v123 = 0;
              v123 += 16;
              v122 = (v122 - 1);
            }

            while (v122);
            v124 = &v226[5 * v61];
            v125 = v235;
            while (1)
            {
              v126 = v110[2];
              if (v61 == v126)
              {
                break;
              }

              if (v61 >= v126)
              {
                goto LABEL_197;
              }

              ++v61;
              outlined init with copy of AnyTrackedValue(v124, &v266);
              v127 = *(&v267 + 1);
              v114 = v110;
              v128 = v268;
              __swift_project_boxed_opaque_existential_1(&v266, *(&v267 + 1));
              v129 = v128;
              v110 = v114;
              *(v121 - 1) = CVarArg.kdebugValue(_:)(v116 | v240.i32[0], v127, v129);
              *v121 = v130 & 1;
              v121 += 16;
              v119 = __swift_destroy_boxed_opaque_existential_1(&v266);
              v124 += 40;
              --v125;
              if (*&v125 == 0.0)
              {
                goto LABEL_73;
              }
            }

            LOBYTE(v254) = 0;
LABEL_73:
            v114 = v225;
            if (v225 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (*(v13 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v13 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v13 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v114 != 20 && *(v13 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v131 = *v231;
            v132 = v237;
            v133 = v239;
            (*v231)(v237, v239);
            v134 = __swift_project_value_buffer(v133, static OSSignpostID.continuation);
            v118 = v223(v132, v134, v133);
          }

          while ((v254 & 1) != 0);
          *&v13 = COERCE_DOUBLE(type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v270, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v270, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
          v135 = v239;
          v131(v237, v239);
          v131(v219, v135);
        }

        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_213:
    swift_once();
LABEL_95:
    v140 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v141 = COERCE_DOUBLE(swift_allocObject());
    *(v141 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v101)
    {
      __break(1u);
LABEL_215:
      __break(1u);
    }

    v142 = AGGraphGetAttributeGraph();
    v143 = AGGraphGetCounter();

    v144 = MEMORY[0x1E69E6870];
    *(v141 + 56) = MEMORY[0x1E69E6810];
    *(v141 + 64) = v144;
    *(v141 + 32) = v143;
    v145 = AGGraphGetCurrentAttribute();
    if (v145 == v101)
    {
      goto LABEL_215;
    }

    v125 = v141;
    v146 = MEMORY[0x1E69E76D0];
    *(v141 + 96) = MEMORY[0x1E69E7668];
    *(v141 + 104) = v146;
    *(v141 + 72) = v145;
    *(v141 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v141 + 144) = v147;
    *(v141 + 112) = 0x746365666645;
    *(v141 + 120) = 0xE600000000000000;
    if (v13)
    {
      LOBYTE(v243) = v240.i8[0];
      v245 = v140;
      v246 = COERCE_DOUBLE(&dword_18D018000);
      *&v258 = v98;
      *(&v258 + 1) = v99;
      LOBYTE(v259) = v100;
      *&v254 = "Animation: (%p) [%d] %{public}@ started";
      *(&v254 + 1) = 39;
      LOBYTE(v255) = 2;
      v244 = v141;
      v148 = v235;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v243, &v246, &v245, &v258, v235, &v254, &v244);
      v149 = v220;

      (*(v236 + 8))(v148, v239);
    }

    else
    {
      v150 = v98;
      if (v98 == 20)
      {
        v151 = 3;
      }

      else
      {
        v151 = 4;
      }

      LODWORD(v116) = bswap32(v98) | (4 * WORD1(v98));
      v114 = v240.u8[0];
      v152 = (v236 + 16);
      v219 = *(v236 + 16);
      v153 = v219(v231, v235, v239);
      v61 = 0;
      LOBYTE(v254) = 1;
      v237 = v151;
      v223 = v152;
      v224 = v150;
      v230 = v152 - 8;
      v240.i64[0] = v125;
      v225 = (v125 + 32);
      v226 = (16 * v151);
      do
      {
        v234 = &v215;
        MEMORY[0x1EEE9AC00](v153);
        v155 = &v215 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = (v155 + 8);
        v156 = v237;
        v157 = v155 + 8;
        do
        {
          *(v157 - 1) = 0;
          *v157 = 0;
          v157 += 16;
          --v156;
        }

        while (v156);
        v158 = v225 + 40 * v61;
        v159 = v237;
        while (1)
        {
          v160 = *(v240.i64[0] + 16);
          if (v61 == v160)
          {
            break;
          }

          if (v61 >= v160)
          {
            goto LABEL_198;
          }

          ++v61;
          outlined init with copy of AnyTrackedValue(v158, &v258);
          v161 = *(&v259 + 1);
          v125 = *&v260;
          __swift_project_boxed_opaque_existential_1(&v258, *(&v259 + 1));
          *(v13 - 8) = CVarArg.kdebugValue(_:)(v116 | v114, v161, v125);
          *v13 = v162 & 1;
          v13 += 16;
          v119 = __swift_destroy_boxed_opaque_existential_1(&v258);
          v158 += 40;
          if (!--v159)
          {
            goto LABEL_112;
          }
        }

        LOBYTE(v254) = 0;
LABEL_112:
        v163 = v224;
        if (v224 == 20)
        {
          v164 = v231;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v164 = v231;
        }

        if (v155[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v155[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v155[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v163 != 20 && v155[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v165 = *v230;
        v125 = v239;
        (*v230)(v164, v239);
        v166 = __swift_project_value_buffer(v125, static OSSignpostID.continuation);
        v153 = v219(v164, v166, v125);
      }

      while ((v254 & 1) != 0);
      v167 = v220;

      v168 = v239;
      v165(v164, v239);
      v165(v235, v168);
      v149 = v167;
    }

LABEL_129:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v270, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect and conformance _ShapeStyle_Pack.Effect, &type metadata for _ShapeStyle_Pack.Effect, type metadata accessor for AnimatableAttributeHelper);
    a4 = v227;
    *(v227 + 9) = v149;
    a1 = v229;
    a3 = v222;
LABEL_130:
    specialized AnimatorState.addListeners(transaction:)(v221);

    v29 = v242;
  }

  v63 = AGGraphGetAttributeGraph();
  *&v13 = COERCE_DOUBLE(AGGraphGetCounter());

  v181 = MEMORY[0x1E69E6870];
  *(v55 + 56) = MEMORY[0x1E69E6810];
  *(v55 + 64) = v181;
  *(v55 + 32) = *&v13;
  v182 = AGGraphGetCurrentAttribute();
  if (v182 == v61)
  {
    goto LABEL_205;
  }

  v13 = v55;
  v183 = MEMORY[0x1E69E76D0];
  *(v55 + 96) = MEMORY[0x1E69E7668];
  *(v55 + 104) = v183;
  *(v55 + 72) = v182;
  *(v55 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v55 + 144) = v184;
  *(v55 + 112) = 0x746365666645;
  *(v55 + 120) = 0xE600000000000000;
  if (v54)
  {
    LOBYTE(v244) = v240.i8[0];
    *&v254 = &dword_18D018000;
    v245 = v55;
    v246 = v60;
    *&v266 = v64;
    *(&v266 + 1) = v177;
    LOBYTE(v267) = v62;
    *&v258 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v258 + 1) = 37;
    LOBYTE(v259) = 2;
    v185 = v228;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v244, &v254, &v246, &v266, v228, &v258, &v245);

    (*(v236 + 8))(v185, v239);
    goto LABEL_188;
  }

  v125 = v64;
  if (v64 == 20)
  {
    v187 = 3;
  }

  else
  {
    v187 = 4;
  }

  v114 = bswap32(v64) | (4 * WORD1(v64));
  v240.i32[0] = v240.u8[0];
  v188 = v236 + 16;
  v230 = *(v236 + 16);
  v189 = (v230)(v238, v228, v239);
  v61 = 0;
  LOBYTE(v258) = 1;
  v236 = v188;
  v234 = (16 * v187);
  v235 = (v188 - 8);
  v232 = *&v125;
  v233.i64[0] = v13 + 32;
  v231 = v187;
  do
  {
    v237 = &v215;
    MEMORY[0x1EEE9AC00](v189);
    v191 = &v215 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
    v116 = v191 + 8;
    v192 = v187;
    v193 = v191 + 8;
    do
    {
      *(v193 - 1) = 0;
      *v193 = 0;
      v193 += 16;
      --v192;
    }

    while (v192);
    v194 = v233.i64[0] + 40 * v61;
    while (1)
    {
      v195 = *(v13 + 16);
      if (v61 == v195)
      {
        break;
      }

      if (v61 >= v195)
      {
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        v213 = v119;
        swift_once();
        v119 = v213;
LABEL_142:
        v175 = *(v114 + 616);
        if (*(v175 + 16) >= 0x43uLL)
        {
          if (*(v175 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v266) = v116;
            BYTE4(v266) = v119 == v61;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v176 = one-time initialization token for animationState;
          v226 = v125;

          if (v176 != -1)
          {
            goto LABEL_203;
          }

          goto LABEL_147;
        }

        __break(1u);
LABEL_201:
        v214 = v119;
        swift_once();
        v119 = v214;
        goto LABEL_155;
      }

      ++v61;
      outlined init with copy of AnyTrackedValue(v194, &v266);
      v196 = *(&v267 + 1);
      v125 = v13;
      v197 = v268;
      __swift_project_boxed_opaque_existential_1(&v266, *(&v267 + 1));
      v198 = v197;
      v13 = v125;
      *(v116 - 1) = CVarArg.kdebugValue(_:)(v114 | v240.i32[0], v196, v198);
      *v116 = v199 & 1;
      v116 += 16;
      v119 = __swift_destroy_boxed_opaque_existential_1(&v266);
      v194 += 40;
      if (!--v187)
      {
        goto LABEL_173;
      }
    }

    LOBYTE(v258) = 0;
LABEL_173:
    *&v125 = v232;
    if (*&v232 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v187 = v231;
    if (v191[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v191[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v191[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v125 != 20 && v191[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v200 = *v235;
    v202 = v238;
    v201 = v239;
    (*v235)(v238, v239);
    v203 = __swift_project_value_buffer(v201, static OSSignpostID.continuation);
    v189 = (v230)(v202, v203, v201);
  }

  while ((v258 & 1) != 0);

  v204 = v239;
  v200(v238, v239);
  v200(v228, v204);
LABEL_188:

LABEL_189:
  specialized AnimatorState.removeListeners()();

  *(v227 + 9) = 0;
LABEL_190:
  v205 = v229;
  v206 = *(&v270[0] + 1);
  v207 = *&v270[1];
  v208 = *(&v270[1] + 8);
  v209 = *(&v270[2] + 1);
  v210 = v270[3];
  *(v229 + 14) = v270[0];
  if (*(v205 + 53) & 1) != 0 || (v210)
  {

    LOBYTE(v266) = 1;
    *v205 = 0u;
    v205[1] = 0u;
    v205[2] = 0u;
    *(v205 + 45) = 0;
    *(v205 + 53) = 1;
  }

  else
  {
    *&v266 = v206;
    *(&v266 + 1) = v207;
    v267 = v208;
    *&v268 = v209;
    v211 = v205[1];
    v251 = *v205;
    v252 = v211;
    v253[0] = v205[2];
    *(v253 + 13) = *(v205 + 45);
    ResolvedShadowStyle.animatableData.setter(&v266);

    LOBYTE(v258) = 0;
    v212 = v252;
    *v205 = v251;
    v205[1] = v212;
    v205[2] = v253[0];
    *(v205 + 45) = *(v253 + 13);
    *(v205 + 53) = 0;
  }

  *(v205 + 73) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(_OWORD *a1, uint64_t (*a2)(void, void, void), int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(void), uint64_t a7, void (*a8)(float64x2_t *, int **), uint64_t (*a9)(unsigned __int128 *), uint64_t (*a10)(void))
{
  v242 = a8;
  v250 = a6;
  v244 = *&a5;
  LODWORD(v12) = a3;
  v307 = *MEMORY[0x1E69E9840];
  v249 = type metadata accessor for OSSignpostID();
  v246 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v16 = &v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v226 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v226 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v226 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v248 = &v226 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v238 = &v226 - v29;
  v239 = *&a2;
  if (*(a4 + 72))
  {
    Value = AGGraphGetValue();
    if (v31)
    {
      v32 = *Value;
    }

    else
    {
      v32 = -INFINITY;
    }
  }

  else
  {
    v32 = -INFINITY;
  }

  v33 = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  v245 = a1;
  if (v33)
  {
    *(a1 + 57) = 1;
  }

  else if (*(a1 + 57) != 1)
  {
    goto LABEL_94;
  }

  v234 = v19;
  v235 = v25;
  v34 = *(a1 + 8);
  v35 = *(a1 + 3);
  v36 = *(a1 + 16);
  v37 = *(a1 + 5);
  v38 = *(a1 + 6);
  v301.f64[0] = *a1;
  LOBYTE(v301.f64[1]) = v34;
  HIDWORD(v301.f64[1]) = v35;
  LOBYTE(v302) = v36;
  v247 = vmulq_f64(*(a1 + 24), vdupq_n_s64(0x4060000000000000uLL));
  ResolvedGradient.animatableData.getter(&v298);
  v39 = v298;
  v40 = v299;
  v251 = v299;
  v41 = *(a4 + 32);
  if (v41 == 0.0)
  {
    v50 = BYTE8(v298) | (HIDWORD(v298) << 32);
    goto LABEL_93;
  }

  v233 = a7;
  v243 = v22;
  v236 = v16;
  LODWORD(v240) = v12;
  v42 = *(a4 + 16);
  v43 = *(a4 + 49);
  v44 = *(a4 + 48);
  v45 = *(a4 + 40);
  v46 = a4 + 53;
  v47 = *(a4 + 53);
  a7 = a4;
  v48 = *(a4 + 56);
  v49 = *(a4 + 64);
  v232 = v42;
  v277 = v42;
  v278 = v41;
  v279 = v45;
  v280 = v44;
  v281 = v43;
  v282 = v47;
  v283 = *(v46 + 2);
  v284 = v48;
  v285 = v49;
  v271 = v247;
  v272 = v298;
  v241 = BYTE8(v298) | (HIDWORD(v298) << 32);
  v273 = v241;
  v274 = v299;
  v275 = v37;
  v276 = v38;
  if (_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAA22ResolvedGradientVectorVG_AITt1B5Tm(&v271, &v277))
  {
    a1 = v245;
    a4 = a7;
    LODWORD(v12) = v240;
    v50 = v241;
    goto LABEL_93;
  }

  v230 = v49;
  v231 = v48;
  v227 = v41;
  v228 = v39;

  AGGraphClearUpdate();
  v51 = *(a7 + 48);
  v303 = *(a7 + 32);
  v304 = v51;
  v305 = *(a7 + 64);
  v306 = *(a7 + 80);
  v52 = *a7;
  v53 = *(a7 + 16);
  v237 = a7;
  v301 = v52;
  v302 = v53;
  v54 = *&v244;
  v55 = v250;
  v56 = v233;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v301, &v298, *&v244, v250, v233, type metadata accessor for AnimatableAttributeHelper);
  a7 = v56;
  v57 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v301, v54, v55, a7, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v226 = v57;
  v229 = Transaction.effectiveAnimation.getter(v57);
  if (v229)
  {
    v58 = v228;
    v50 = v241;
  }

  else
  {
    v50 = v241;
    if (v239 == 0.0)
    {

      a1 = v245;
      a4 = v237;
      LODWORD(v12) = v240;
      goto LABEL_92;
    }

    v58 = v228;
  }

  *&v264 = v58;
  *(&v264 + 1) = v50;
  LOBYTE(v265) = v40;
  *(&v265 + 1) = v37;
  v261 = v265;
  v59 = *(&v305 + 1);
  v263 = v247;
  v266 = v38;
  v262 = v38;
  v259 = vsubq_f64(v247, v232);
  v260 = v264;
  v256.f64[0] = v227;
  LOBYTE(v256.f64[1]) = v45;
  HIDWORD(v256.f64[1]) = HIDWORD(v45);
  LOBYTE(v257) = v44 & 1;
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v263, &v298, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  ResolvedGradientVector.add(_:scaledBy:)(&v256, -1.0);
  *(&v261 + 1) = v37 - v231;
  v262 = v38 - v230;
  v32 = *AGGraphGetValue();
  if (v59 == 0.0)
  {
    v267 = v259;
    v268 = v260;
    v269 = v261;
    v270 = v262;
    a7 = v233;
    *&v256.f64[0] = v233;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v267, &v298, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    a10(0);
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    v84 = swift_dynamicCast();
    if (v84)
    {
      v85 = v298;
    }

    else
    {
      v85 = 0;
    }

    if (v84)
    {
      v86 = *(&v298 + 1);
    }

    else
    {
      v86 = 0;
    }

    v87 = v226;

    v88 = v229;

    v230 = COERCE_DOUBLE(_s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAA22ResolvedGradientVectorVGAZG_Tt4B5(v89, &v267, v87, v85, v86, v32));
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v50 = CurrentAttribute;
    v91 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v92 = 0;
    }

    else
    {
      v92 = CurrentAttribute;
    }

    v93 = v245[1];
    v256 = *v245;
    v257 = v93;
    v258[0] = v245[2];
    v94 = v258[0];
    *(v258 + 9) = *(v245 + 41);
    v298 = v256;
    v299 = v93;
    v300[0] = v94;
    *(v300 + 9) = *(v258 + 9);
    v242(&v256, &v292);
    v95 = a9(&v298);
    (*(*v88 + 96))(&v286, v95);
    v96 = v286;
    v97 = v287;
    v12 = v288;
    v98 = v289;
    v99 = v290;
    v254 = NAN;
    v255 = 0x7FF8000000000000;
    v252 = NAN;
    v253 = 0x3FF0000000000000;
    v292 = v286;
    v293 = v287;
    v294 = v288;
    v295 = v289;
    v296 = v290;
    LODWORD(v250) = v291;
    LOBYTE(v297) = v291;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v292, &v255, &v254, &v253, &v252);
    v100 = *&v254;
    v101 = v255;
    *&v102 = v252;
    v103 = v253;
    if (one-time initialization token for enabledCategories != -1)
    {
      v242 = v253;
      v243 = v255;
      v239 = v254;
      *&v235 = v252;
      swift_once();
      v102 = v235;
      v103 = v242;
      v101 = v243;
      v100 = *&v239;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v104 = *(static CustomEventTrace.enabledCategories + 98);
      LODWORD(v244) = v91;
      if (v104 == 1 && (v105 = static CustomEventTrace.recorder) != 0)
      {
        v106 = v50 == LODWORD(v244);
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v107 = v92;
        v108 = v98;
        v109 = *(v105 + 16);
        LODWORD(v292) = v107;
        BYTE4(v292) = v106;
        v293 = a7;
        v294 = v101;
        v295 = v100;
        v296 = v103;
        v297 = *&v102;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v243 = v110;

        a7 = v109;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v96, v97, v12, v108, v99, v250);
      }

      else
      {
        outlined consume of Animation.Function(v96, v97, v12, v98, v99, v250);
      }

      v111 = one-time initialization token for animationState;

      LODWORD(v12) = v240;
      v50 = v241;
      if (v111 == -1)
      {
LABEL_44:
        v112 = *(&static Signpost.animationState + 1);
        v68 = static Signpost.animationState;
        v113 = word_1ED5283E8;
        LOBYTE(v62) = HIBYTE(word_1ED5283E8);
        v114 = byte_1ED5283EA;
        LODWORD(v69) = static os_signpost_type_t.begin.getter();
        v292 = v68;
        v293 = v112;
        LOBYTE(v294) = v113;
        BYTE1(v294) = v62;
        BYTE2(v294) = v114;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v126 = v230;

          a4 = v237;
          *(v237 + 72) = v126;
          a1 = v245;
          goto LABEL_91;
        }

        v115 = one-time initialization token for _signpostLog;

        if (v115 != -1)
        {
          goto LABEL_196;
        }

        goto LABEL_46;
      }
    }

    swift_once();
    goto LABEL_44;
  }

  v267 = v259;
  v268 = v260;
  v269 = v261;
  v270 = v262;

  LOBYTE(v298) = 0;
  v60 = v229;
  v230 = v59;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v229, &v267, v226, v240, v32);
  v61 = AGGraphGetCurrentAttribute();
  v50 = v61;
  LODWORD(v62) = *MEMORY[0x1E698D3F8];
  if (v61 == *MEMORY[0x1E698D3F8])
  {
    LODWORD(v63) = 0;
  }

  else
  {
    LODWORD(v63) = v61;
  }

  v64 = v245[1];
  v256 = *v245;
  v257 = v64;
  v258[0] = v245[2];
  v65 = v258[0];
  *(v258 + 9) = *(v245 + 41);
  v298 = v256;
  v299 = v64;
  v300[0] = v65;
  *(v300 + 9) = *(v258 + 9);
  v242(&v256, &v292);
  v66 = a9(&v298);
  (*(*v60 + 96))(&v286, v66);
  v67 = v286;
  a7 = v287;
  v12 = v288;
  v68 = v289;
  v69 = v290;
  LODWORD(v60) = v291;
  v254 = NAN;
  v255 = 0x7FF8000000000000;
  v252 = NAN;
  v253 = 0x3FF0000000000000;
  v292 = v286;
  v293 = v287;
  v294 = v288;
  v295 = v289;
  v296 = v290;
  LOBYTE(v297) = v291;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v292, &v255, &v254, &v253, &v252);
  v70 = *&v254;
  v71 = v255;
  v72 = v252;
  v73 = v253;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_189;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_191:
      swift_once();
      goto LABEL_54;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v74 = v63;
      v75 = v68;
      v76 = v62;
      v62 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        LODWORD(v250) = v60;
        v77 = v76;
        v78 = v50 == v76;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v79 = *(v62 + 16);
        LODWORD(v292) = v74;
        BYTE4(v292) = v78;
        v293 = v233;
        v294 = v71;
        v295 = v70;
        v296 = v73;
        v297 = v72;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v244 = *&v80;

        v81 = v79;
        v82 = v69;
        v83 = v81;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v67, a7, v12, v75, v82, v250);
        LODWORD(v62) = v77;
      }

      else
      {
        outlined consume of Animation.Function(v67, a7, v12, v75, v69, v60);
        LODWORD(v62) = v76;
      }
    }

    else
    {
      outlined consume of Animation.Function(v67, a7, v12, v68, v69, v60);
    }

    v127 = one-time initialization token for animationState;

    LODWORD(v12) = v240;
    v50 = v241;
    if (v127 != -1)
    {
      goto LABEL_191;
    }

LABEL_54:
    v112 = *(&static Signpost.animationState + 1);
    v68 = static Signpost.animationState;
    v113 = word_1ED5283E8;
    a7 = HIBYTE(word_1ED5283E8);
    v128 = byte_1ED5283EA;
    v129 = static os_signpost_type_t.event.getter();
    v292 = v68;
    v293 = v112;
    LOBYTE(v294) = v113;
    BYTE1(v294) = a7;
    BYTE2(v294) = v128;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_90;
    }

    LODWORD(v250) = v129;
    v130 = one-time initialization token for _signpostLog;

    if (v130 != -1)
    {
      swift_once();
    }

    v244 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v69 = swift_allocObject();
    v69[1] = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v62)
    {
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      swift_once();
LABEL_46:
      LODWORD(v250) = v69;
      *&v243 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a7 = swift_allocObject();
      *(a7 + 16) = xmmword_18DDAF080;
      v116 = AGGraphGetCurrentAttribute();
      v117 = LODWORD(v244);
      if (v116 == LODWORD(v244))
      {
        __break(1u);
      }

      else
      {
        v118 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v120 = MEMORY[0x1E69E6870];
        *(a7 + 56) = MEMORY[0x1E69E6810];
        *(a7 + 64) = v120;
        *(a7 + 32) = Counter;
        v121 = AGGraphGetCurrentAttribute();
        if (v121 != v117)
        {
          v122 = MEMORY[0x1E69E76D0];
          *(a7 + 96) = MEMORY[0x1E69E7668];
          *(a7 + 104) = v122;
          *(a7 + 72) = v121;
          *(a7 + 136) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(a7 + 144) = v123;
          *(a7 + 112) = 0x746E6961505FLL;
          *(a7 + 120) = 0xE600000000000000;
          if (v62)
          {
            LOBYTE(v252) = v250;
            v254 = *&v243;
            v255 = &dword_18D018000;
            v292 = v68;
            v293 = v112;
            LOBYTE(v294) = v113;
            v286 = "Animation: (%p) [%d] %{public}@ started";
            v287 = 39;
            LOBYTE(v288) = 2;
            v253 = a7;
            v124 = v234;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v252, &v255, &v254, &v292, v234, &v286, &v253);
            v125 = v230;

            (*(v246 + 1))(v124, v249);

            a4 = v237;
            *(v237 + 72) = v125;
            a1 = v245;
            LODWORD(v12) = v240;
            goto LABEL_91;
          }

          if (v68 == 20)
          {
            v206 = 3;
          }

          else
          {
            v206 = 4;
          }

          v139 = bswap32(v68) | (4 * WORD1(v68));
          LODWORD(v250) = v250;
          *&v207 = v246 + 16;
          v231 = *(v246 + 2);
          v208 = (*&v231)(v236, v234, v249);
          v142 = 0;
          LOBYTE(v286) = 1;
          v232.f64[0] = v207;
          v242 = (16 * v206);
          v243 = (*&v207 - 8);
          *&v239 = a7 + 32;
          v235 = v68;
          v233 = v206;
          while (1)
          {
            v244 = COERCE_DOUBLE(&v226);
            MEMORY[0x1EEE9AC00](v208);
            v210 = &v226 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0);
            v69 = v210 + 8;
            v211 = v206;
            v212 = v210 + 8;
            do
            {
              *(v212 - 1) = 0;
              *v212 = 0;
              v212 += 16;
              --v211;
            }

            while (v211);
            v213 = *&v239 + 40 * v142;
            while (1)
            {
              v214 = *(a7 + 16);
              if (v142 == v214)
              {
                break;
              }

              if (v142 >= v214)
              {
                goto LABEL_181;
              }

              ++v142;
              outlined init with copy of AnyTrackedValue(v213, &v292);
              v215 = v295;
              v68 = a7;
              v216 = v296;
              __swift_project_boxed_opaque_existential_1(&v292, v295);
              v217 = v216;
              a7 = v68;
              *(v69 - 1) = CVarArg.kdebugValue(_:)(v139 | v250, v215, v217);
              *v69++ = v218 & 1;
              v143 = __swift_destroy_boxed_opaque_existential_1(&v292);
              v213 += 40;
              if (!--v206)
              {
                goto LABEL_162;
              }
            }

            LOBYTE(v286) = 0;
LABEL_162:
            v219 = v235;
            if (v235 == 20)
            {
              v187 = v236;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v187 = v236;
            }

            if (v210[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v210[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v210[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v219 != 20 && v210[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v179 = *v243;
            v220 = v249;
            (*v243)(v187, v249);
            v221 = __swift_project_value_buffer(v220, static OSSignpostID.continuation);
            v208 = (*&v231)(v187, v221, v220);
            v206 = v233;
            if ((v286 & 1) == 0)
            {
LABEL_179:
              v222 = v230;

              v223 = v249;
              v179(v187, v249);
              v179(v234, v223);

              a4 = v237;
              *(v237 + 72) = v222;
              a1 = v245;
              LODWORD(v12) = v240;
              v50 = v241;
              goto LABEL_91;
            }
          }
        }
      }

      __break(1u);
    }

    v131 = v62;
    v132 = AGGraphGetAttributeGraph();
    v62 = AGGraphGetCounter();

    v133 = MEMORY[0x1E69E6870];
    *(v69 + 7) = MEMORY[0x1E69E6810];
    *(v69 + 8) = v133;
    *(v69 + 4) = v62;
    v134 = AGGraphGetCurrentAttribute();
    if (v134 == v131)
    {
      goto LABEL_195;
    }

    v135 = MEMORY[0x1E69E76D0];
    *(v69 + 12) = MEMORY[0x1E69E7668];
    *(v69 + 13) = v135;
    *(v69 + 18) = v134;
    *(v69 + 17) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v69 + 18) = v136;
    *(v69 + 14) = 0x746E6961505FLL;
    *(v69 + 15) = 0xE600000000000000;
    if (a7)
    {
      LOBYTE(v252) = v250;
      v254 = v244;
      v255 = &dword_18D018000;
      v292 = v68;
      v293 = v112;
      LOBYTE(v294) = v113;
      v286 = "Animation: (%p) [%d] %{public}@ updated";
      v287 = 39;
      LOBYTE(v288) = 2;
      v253 = v69;
      v137 = v235;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v252, &v255, &v254, &v292, v235, &v286, &v253);

      (*(v246 + 1))(v137, v249);

      LODWORD(v12) = v240;
      goto LABEL_90;
    }

    if (v68 == 20)
    {
      v138 = 3;
    }

    else
    {
      v138 = 4;
    }

    v139 = bswap32(v68) | (4 * WORD1(v68));
    LODWORD(v250) = v250;
    *&v140 = v246 + 16;
    v231 = *(v246 + 2);
    v141 = (*&v231)(v243, v235, v249);
    v142 = 0;
    LOBYTE(v286) = 1;
    *&v239 = 16 * v138;
    v232.f64[0] = v140;
    v242 = (*&v140 - 8);
    v236 = (v69 + 2);
    v233 = v138;
    v234 = v68;
LABEL_66:
    v244 = COERCE_DOUBLE(&v226);
    MEMORY[0x1EEE9AC00](v141);
    v145 = &v226 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
    a7 = (v145 + 8);
    v146 = v138;
    v147 = v145 + 8;
    do
    {
      *(v147 - 1) = 0;
      *v147 = 0;
      v147 += 16;
      --v146;
    }

    while (v146);
    v148 = &v236[40 * v142];
    while (1)
    {
      v149 = *(v69 + 2);
      if (v142 == v149)
      {
        LOBYTE(v286) = 0;
LABEL_74:
        a7 = v234;
        if (v234 == 20)
        {
          v154 = v243;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v154 = v243;
        }

        if (v145[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v145[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v145[40] == 1)
        {
          kdebug_trace_string();
        }

        if (a7 != 20 && v145[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v155 = *v242;
        v156 = v249;
        (*v242)(v154, v249);
        v157 = __swift_project_value_buffer(v156, static OSSignpostID.continuation);
        v141 = (*&v231)(v154, v157, v156);
        v138 = v233;
        if ((v286 & 1) == 0)
        {

          v158 = v249;
          v155(v154, v249);
          v155(v235, v158);

          LODWORD(v12) = v240;
          v50 = v241;
LABEL_90:
          a1 = v245;
          a4 = v237;
LABEL_91:
          specialized AnimatorState.addListeners(transaction:)(v226);

          v298 = v259;
          v299 = v260;
          v300[0] = v261;
          *&v300[1] = v262;
          outlined destroy of Slice<IndexSet>(&v298, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

          v40 = v251;
LABEL_92:
          v39 = v228;
LABEL_93:

          *(a4 + 16) = v247;
          *(a4 + 32) = v39;
          *(a4 + 40) = v50;
          *(a4 + 48) = v40;
          *(a4 + 56) = v37;
          *(a4 + 64) = v38;
LABEL_94:
          v69 = *(a4 + 72);
          if (!v69)
          {
            return;
          }

          v237 = a4;
          v159 = *(a1 + 8);
          v160 = *(a1 + 3);
          v161 = *(a1 + 16);
          v37 = *(a1 + 5);
          v38 = *(a1 + 6);
          v162 = *(a1 + 3) * 128.0;
          v163 = *(a1 + 4) * 128.0;
          v301.f64[0] = *a1;
          LOBYTE(v301.f64[1]) = v159;
          HIDWORD(v301.f64[1]) = v160;
          LOBYTE(v302) = v161;

          ResolvedGradient.animatableData.getter(&v298);
          v301.f64[0] = v162;
          v301.f64[1] = v163;
          *&v302 = v298;
          BYTE8(v302) = BYTE8(v298);
          HIDWORD(v302) = HIDWORD(v298);
          LOBYTE(v303) = v299;
          LOBYTE(v298) = 0;
          *(&v303 + 1) = v37;
          *&v304 = v38;
          v164 = specialized AnimatorState.update(_:at:environment:)(&v301, v12, v32);
          v143 = AGGraphGetCurrentAttribute();
          v68 = *MEMORY[0x1E698D3F8];
          if (v143 == v68)
          {
            v139 = 0;
          }

          else
          {
            v139 = v143;
          }

          v142 = &type metadata instantiation cache for TupleTypeDescription;
          if (v164)
          {
            if (one-time initialization token for enabledCategories != -1)
            {
              goto LABEL_182;
            }

            goto LABEL_100;
          }

          if (one-time initialization token for enabledCategories == -1)
          {
LABEL_113:
            v175 = *(v142 + 616);
            if (*(v175 + 16) >= 0x43uLL)
            {
              if (*(v175 + 98) == 1 && static CustomEventTrace.recorder)
              {
                *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
                LODWORD(v298) = v139;
                BYTE4(v298) = v143 == v68;
                type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
                AGGraphAddTraceEvent();
              }

              specialized AnimatorState.nextUpdate()();
              goto LABEL_148;
            }

            __break(1u);
LABEL_186:
            swift_once();
            goto LABEL_105;
          }

LABEL_184:
          v225 = v143;
          swift_once();
          v143 = v225;
          goto LABEL_113;
        }

        goto LABEL_66;
      }

      if (v142 >= v149)
      {
        break;
      }

      ++v142;
      outlined init with copy of AnyTrackedValue(v148, &v292);
      v150 = v295;
      v68 = v69;
      v151 = v296;
      __swift_project_boxed_opaque_existential_1(&v292, v295);
      v152 = v151;
      v69 = v68;
      *(a7 - 8) = CVarArg.kdebugValue(_:)(v139 | v250, v150, v152);
      *a7 = v153 & 1;
      a7 += 16;
      v143 = __swift_destroy_boxed_opaque_existential_1(&v292);
      v148 += 40;
      if (!--v138)
      {
        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    v224 = v143;
    swift_once();
    v143 = v224;
LABEL_100:
    v165 = *(v142 + 616);
    if (*(v165 + 16) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_184;
    }

    if (*(v165 + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v298) = v139;
      BYTE4(v298) = v143 == v68;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v166 = one-time initialization token for animationState;

    if (v166 != -1)
    {
      goto LABEL_186;
    }

LABEL_105:
    v60 = *(&static Signpost.animationState + 1);
    v63 = static Signpost.animationState;
    v50 = word_1ED5283E8;
    LODWORD(v62) = HIBYTE(word_1ED5283E8);
    v167 = byte_1ED5283EA;
    v168 = static os_signpost_type_t.end.getter();
    v298 = __PAIR128__(v60, v63);
    LOBYTE(v299) = v50;
    BYTE1(v299) = v62;
    BYTE2(v299) = v167;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_147;
    }

    LODWORD(v250) = v168;
    v169 = one-time initialization token for _signpostLog;

    if (v169 != -1)
    {
      swift_once();
    }

    v67 = _signpostLog;
    v236 = v69;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v68)
    {
      __break(1u);
      goto LABEL_188;
    }

    v69 = AGGraphGetAttributeGraph();
    a7 = AGGraphGetCounter();

    v170 = MEMORY[0x1E69E6870];
    *(v12 + 56) = MEMORY[0x1E69E6810];
    *(v12 + 64) = v170;
    *(v12 + 32) = a7;
    v171 = AGGraphGetCurrentAttribute();
    if (v171 != v68)
    {
      break;
    }

LABEL_188:
    __break(1u);
LABEL_189:
    v250 = v71;
    v242 = v70;
    v244 = *&v73;
    v239 = v72;
    swift_once();
    v72 = v239;
    v73 = *&v244;
    v70 = v242;
    v71 = v250;
  }

  a7 = v12;
  v172 = MEMORY[0x1E69E76D0];
  *(v12 + 96) = MEMORY[0x1E69E7668];
  *(v12 + 104) = v172;
  *(v12 + 72) = v171;
  *(v12 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 144) = v173;
  *(v12 + 112) = 0x746E6961505FLL;
  *(v12 + 120) = 0xE600000000000000;
  if (v62)
  {
    LOBYTE(v286) = v250;
    v292 = &dword_18D018000;
    *&v263.f64[0] = v67;
    *&v298 = v63;
    *(&v298 + 1) = v60;
    LOBYTE(v299) = v50;
    *&v256.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v256.f64[1] = 37;
    LOBYTE(v257) = 2;
    *&v259.f64[0] = v12;
    v174 = v238;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v286, &v292, &v263, &v298, v238, &v256, &v259);

    (*(v246 + 1))(v174, v249);
  }

  else
  {
    v176 = v63;
    if (v63 == 20)
    {
      v177 = 3;
    }

    else
    {
      v177 = 4;
    }

    v178 = bswap32(v63) | (4 * WORD1(v63));
    LODWORD(v250) = v250;
    v179 = (v246 + 16);
    v239 = *(v246 + 2);
    v180 = (*&v239)(v248, v238, v249);
    v181 = 0;
    LOBYTE(v256.f64[0]) = 1;
    v246 = v179;
    v243 = (16 * v177);
    *&v244 = v179 - 8;
    v241 = v177;
    v242 = (a7 + 32);
    v240 = v176;
    do
    {
      *&v247.f64[0] = &v226;
      MEMORY[0x1EEE9AC00](v180);
      v183 = &v226 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
      v184 = v183 + 8;
      v185 = v177;
      v186 = v183 + 8;
      do
      {
        *(v186 - 1) = 0;
        *v186 = 0;
        v186 += 16;
        --v185;
      }

      while (v185);
      v187 = v242 + 40 * v181;
      while (1)
      {
        v188 = *(a7 + 16);
        if (v181 == v188)
        {
          break;
        }

        if (v181 >= v188)
        {
          __break(1u);
          goto LABEL_179;
        }

        ++v181;
        outlined init with copy of AnyTrackedValue(v187, &v298);
        v189 = *(&v299 + 1);
        v190 = a7;
        v191 = *&v300[0];
        v192 = __swift_project_boxed_opaque_existential_1(&v298, *(&v299 + 1));
        v193 = v189;
        v194 = v191;
        a7 = v190;
        v179 = v192;
        *(v184 - 1) = CVarArg.kdebugValue(_:)(v178 | v250, v193, v194);
        *v184 = v195 & 1;
        v184 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v298);
        v187 += 40;
        if (!--v177)
        {
          goto LABEL_131;
        }
      }

      LOBYTE(v256.f64[0]) = 0;
LABEL_131:
      v196 = v240;
      if (v240 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      v177 = v241;
      if (v183[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v183[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v183[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v196 != 20 && v183[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v179 = **&v244;
      v198 = v248;
      v197 = v249;
      (**&v244)(v248, v249);
      v199 = __swift_project_value_buffer(v197, static OSSignpostID.continuation);
      v180 = (*&v239)(v198, v199, v197);
    }

    while ((LOBYTE(v256.f64[0]) & 1) != 0);

    v200 = v249;
    v179(v248, v249);
    v179(v238, v200);
  }

LABEL_147:
  specialized AnimatorState.removeListeners()();

  *(v237 + 72) = 0;
LABEL_148:
  v201 = v245;
  v257 = v302;
  v258[0] = v303;
  v256 = v301;
  *&v258[1] = v304;
  v202 = v302;
  v203 = BYTE8(v302);
  v204 = HIDWORD(v302);
  v205 = v303;
  *(v245 + 24) = vmulq_f64(v301, vdupq_n_s64(0x3F80000000000000uLL));
  v292 = v202;
  LOBYTE(v293) = v203;
  HIDWORD(v293) = v204;
  LOBYTE(v294) = v205;
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v256, &v298, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  ResolvedGradient.animatableData.setter(&v292);

  *(v201 + 40) = *(v258 + 8);
  v298 = v301;
  v299 = v302;
  v300[0] = v303;
  *&v300[1] = v304;
  outlined destroy of Slice<IndexSet>(&v298, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  *(v201 + 57) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t Counter)
{
  v311 = *MEMORY[0x1E69E9840];
  v230 = type metadata accessor for OSSignpostID();
  v227 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v226 = &v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v209 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v228 = (&v209 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v209 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v229 = &v209 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v220 = &v209 - v20;
  if (*(Counter + 280))
  {
    Value = AGGraphGetValue();
    if (v22)
    {
      v23 = *Value;
    }

    else
    {
      v23 = -INFINITY;
    }
  }

  else
  {
    v23 = -INFINITY;
  }

  v24 = &v235;
  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 384) = 1;
  }

  else if (*(a1 + 384) != 1)
  {
    goto LABEL_121;
  }

  v25 = *(a1 + 208);
  *&v292[192] = *(a1 + 192);
  *&v292[208] = v25;
  v26 = *(a1 + 240);
  *&v292[224] = *(a1 + 224);
  *&v292[240] = v26;
  v27 = *(a1 + 144);
  *&v292[128] = *(a1 + 128);
  *&v292[144] = v27;
  v28 = *(a1 + 176);
  *&v292[160] = *(a1 + 160);
  *&v292[176] = v28;
  v29 = *(a1 + 64);
  *&v292[80] = *(a1 + 80);
  v30 = *(a1 + 112);
  *&v292[96] = *(a1 + 96);
  *&v292[112] = v30;
  v31 = *(a1 + 16);
  *v292 = *a1;
  *&v292[16] = v31;
  v32 = *(a1 + 48);
  *&v292[32] = *(a1 + 32);
  *&v292[48] = v32;
  *&v292[64] = v29;
  v33 = *(a1 + 336);
  v255 = *(a1 + 320);
  v256 = v33;
  v34 = *(a1 + 368);
  v257 = *(a1 + 352);
  v258 = v34;
  v35 = *(a1 + 272);
  v251 = *(a1 + 256);
  v252 = v35;
  v36 = *(a1 + 304);
  v253 = *(a1 + 288);
  v254 = v36;
  RoundedRectangularShapeCorners.animatableData.getter(&v259);
  memcpy(v293, (Counter + 16), sizeof(v293));
  memcpy(v294, (Counter + 16), 0x101uLL);
  if (_s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOg(v294) == 1)
  {
    goto LABEL_120;
  }

  *&v292[80] = v256;
  *&v292[96] = v257;
  *&v292[112] = v258;
  *v292 = v251;
  *&v292[16] = v252;
  *&v292[32] = v253;
  *&v292[48] = v254;
  *&v292[64] = v255;
  v280 = *&v293[64];
  v281 = *&v293[80];
  v282 = *&v293[96];
  v283 = *&v293[112];
  v276 = *v293;
  v277 = *&v293[16];
  v278 = *&v293[32];
  v279 = *&v293[48];
  if (specialized static RoundedRectangularShapeCorners.AnimatableData.== infix(_:_:)())
  {
    *&v292[80] = v264;
    *&v292[96] = v265;
    *&v292[112] = v266;
    *v292 = v259;
    *&v292[16] = v260;
    *&v292[32] = v261;
    *&v292[48] = v262;
    *&v292[64] = v263;
    v280 = *&v293[192];
    v281 = *&v293[208];
    v282 = *&v293[224];
    v283 = *&v293[240];
    v276 = *&v293[128];
    v277 = *&v293[144];
    v278 = *&v293[160];
    v279 = *&v293[176];
    if (specialized static RoundedRectangularShapeCorners.AnimatableData.== infix(_:_:)())
    {
      goto LABEL_120;
    }
  }

  v231 = a2;
  v210 = v11;
  v211 = v16;
  v215 = a3;
  AGGraphClearUpdate();
  v219 = Counter;
  memcpy(v292, Counter, sizeof(v292));
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v292, &v276, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
  v37 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v292, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v38 = Transaction.effectiveAnimation.getter(v37);
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = v231;
    if (!v231)
    {

      v24 = &v235;
      Counter = v219;
      a3 = v215;
      goto LABEL_120;
    }
  }

  v248 = v264;
  v249 = v265;
  v250 = v266;
  v244 = v260;
  v245 = v261;
  v246 = v262;
  v247 = v263;
  v239 = v255;
  v240 = v256;
  v241 = v257;
  v242 = v258;
  v243 = v259;
  v235 = v251;
  v236 = v252;
  v237 = v253;
  v238 = v254;
  v280 = v255;
  v281 = v256;
  v282 = v257;
  v283 = v258;
  v276 = v251;
  v277 = v252;
  v278 = v253;
  v279 = v254;
  v272 = v263;
  v273 = v264;
  v274 = v265;
  v275 = v266;
  v268 = v259;
  v269 = v260;
  v270 = v261;
  v271 = v262;
  v299 = *&v293[64];
  v300 = *&v293[80];
  v301 = *&v293[96];
  v302 = *&v293[112];
  v295 = *v293;
  v296 = *&v293[16];
  v297 = *&v293[32];
  v40 = *&v292[280];
  v298 = *&v293[48];
  static ConcentricRectangle.Uniformity.- infix(_:_:)(&v276);
  v280 = *&v293[192];
  v281 = *&v293[208];
  v282 = *&v293[224];
  v283 = *&v293[240];
  v276 = *&v293[128];
  v277 = *&v293[144];
  v278 = *&v293[160];
  v279 = *&v293[176];
  static RoundedRectangularShapeCorners.AnimatableData.- infix(_:_:)(&v268);
  v23 = *AGGraphGetValue();
  v218 = a1;
  v212 = v39;
  v213 = v37;
  if (!v40)
  {
    v288 = v247;
    v289 = v248;
    v290 = v249;
    v291 = v250;
    v284 = v243;
    v285 = v244;
    v286 = v245;
    v287 = v246;
    v280 = v239;
    v281 = v240;
    v282 = v241;
    v283 = v242;
    v276 = v235;
    v277 = v236;
    v278 = v237;
    v279 = v238;
    *&v268.f64[0] = &type metadata for ConcentricRectangle;
    type metadata accessor for ConcentricRectangle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == ConcentricRectangle.AnimatableData>.Type, &type metadata for ConcentricRectangle.AnimatableData);
    v59 = swift_dynamicCast();
    if (v59)
    {
      v60 = v295;
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = *(&v295 + 1);
    }

    else
    {
      v61 = 0;
    }

    v63 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA19ConcentricRectangleV14AnimatableDataV_Tt4B5(v62, &v276, v37, v60, v61, v23);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    a3 = CurrentAttribute;
    v65 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v66 = 0;
    }

    else
    {
      v66 = CurrentAttribute;
    }

    (*(*v39 + 96))(&v268);
    v67 = v268;
    v68 = v269;
    v69 = v270;
    v267 = 0x7FF8000000000000;
    v233 = 0x3FF0000000000000;
    v234 = 0x7FF8000000000000;
    v232 = NAN;
    v295 = v268;
    v296 = v269;
    *&v297 = v270;
    LODWORD(v231) = BYTE8(v270);
    BYTE8(v297) = BYTE8(v270);
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v295, &v267, &v234, &v233, &v232);
    v70 = v267;
    v71 = v233;
    v72 = v234;
    v73 = v232;
    if (one-time initialization token for enabledCategories != -1)
    {
      v228 = v267;
      v224 = v234;
      v225 = v233;
      v223 = *&v232;
      swift_once();
      v73 = *&v223;
      v72 = v224;
      v71 = v225;
      v70 = v228;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v74 = v66, (v75 = static CustomEventTrace.recorder) != 0))
      {
        v76 = a3 == v65;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v228 = v69;
        v77 = v65;
        v78 = *(v75 + 16);
        LODWORD(v295) = v74;
        BYTE4(v295) = v76;
        *(&v295 + 1) = &type metadata for ConcentricRectangle;
        *&v296 = v70;
        *(&v296 + 1) = v72;
        *&v297 = v71;
        *(&v297 + 1) = v73;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v225 = v79;

        v80 = v78;
        v65 = v77;
        v81 = v63;
        v82 = v80;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v67.f64[0], *&v67.f64[1], v68, *(&v68 + 1), v228, v231);

        v63 = v81;
      }

      else
      {
        outlined consume of Animation.Function(*&v67.f64[0], *&v67.f64[1], v68, *(&v68 + 1), v69, v231);
      }

      v89 = one-time initialization token for animationState;
      v214 = v63;

      a3 = v215;
      if (v89 == -1)
      {
LABEL_43:
        v91 = *(&static Signpost.animationState + 1);
        *&v90 = static Signpost.animationState;
        LOBYTE(v45) = word_1ED5283E8;
        LOBYTE(v92) = HIBYTE(word_1ED5283E8);
        v93 = byte_1ED5283EA;
        v94 = static os_signpost_type_t.begin.getter();
        v295 = __PAIR128__(*&v91, *&v90);
        LOBYTE(v296) = v45;
        BYTE1(v296) = v92;
        BYTE2(v296) = v93;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v107 = v214;

          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v292, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
          Counter = v219;
          v219[35] = v107;
          goto LABEL_119;
        }

        LODWORD(v231) = v94;
        LODWORD(Counter) = v65;
        v95 = one-time initialization token for _signpostLog;

        if (v95 != -1)
        {
          goto LABEL_194;
        }

        goto LABEL_45;
      }
    }

    swift_once();
    goto LABEL_43;
  }

  v307 = v247;
  v308 = v248;
  v309 = v249;
  v310 = v250;
  v303 = v243;
  v304 = v244;
  v305 = v245;
  v306 = v246;
  v299 = v239;
  v300 = v240;
  v301 = v241;
  v302 = v242;
  v295 = v235;
  v296 = v236;
  v297 = v237;
  v298 = v238;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v292, &v276, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v276) = 0;
  v214 = v40;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v39, &v295, v37, v215, v23);
  v41 = AGGraphGetCurrentAttribute();
  v42 = v41;
  LODWORD(v37) = *MEMORY[0x1E698D3F8];
  if (v41 == *MEMORY[0x1E698D3F8])
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  LODWORD(v231) = v43;
  (*(*v39 + 96))(&v268);
  Counter = *&v268.f64[1];
  v44 = *&v268.f64[0];
  v46 = *(&v269 + 1);
  v45 = v269;
  v47 = v270;
  LODWORD(v48) = BYTE8(v270);
  v267 = 0x7FF8000000000000;
  v233 = 0x3FF0000000000000;
  v234 = 0x7FF8000000000000;
  v232 = NAN;
  v276 = v268;
  v277 = v269;
  *&v278 = v270;
  BYTE8(v278) = BYTE8(v270);
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v276, &v267, &v234, &v233, &v232);
  v49 = v267;
  v50 = v233;
  v51 = v234;
  v52 = v232;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        LODWORD(v226) = v48;
        v53 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v54 = v42 == v37;
          v225 = *(static CustomEventTrace.recorder + 24);
          *(v225 + 2) = 1602;
          v55 = v37;
          v37 = *(v53 + 16);
          LODWORD(v276) = v231;
          BYTE4(v276) = v54;
          *(&v276 + 1) = &type metadata for ConcentricRectangle;
          *&v277 = v49;
          *(&v277 + 1) = v51;
          *&v278 = v50;
          *(&v278 + 1) = v52;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v231 = v56;

          v57 = v37;
          LODWORD(v37) = v55;
          v58 = v57;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v44, Counter, v45, v46, v47, v226);

          goto LABEL_53;
        }

        v83 = v44;
        v84 = Counter;
        v85 = v45;
        v86 = v46;
        v87 = v47;
        v88 = v226;
      }

      else
      {
        v83 = v44;
        v84 = Counter;
        v85 = v45;
        v86 = v46;
        v87 = v47;
        v88 = v48;
      }

      outlined consume of Animation.Function(v83, v84, v85, v86, v87, v88);
LABEL_53:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v292, &v276, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_189;
    }

    __break(1u);
LABEL_189:
    swift_once();
LABEL_54:
    v108 = *(&static Signpost.animationState + 1);
    v92 = static Signpost.animationState;
    *&v90 = word_1ED5283E8;
    *&v91 = HIBYTE(word_1ED5283E8);
    v109 = byte_1ED5283EA;
    v110 = static os_signpost_type_t.event.getter();
    v276 = __PAIR128__(v108, v92);
    LOBYTE(v277) = LOBYTE(v90);
    BYTE1(v277) = LOBYTE(v91);
    BYTE2(v277) = v109;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v292, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v292, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
LABEL_90:
      Counter = v219;
      a3 = v215;
      goto LABEL_119;
    }

    LODWORD(v231) = v110;
    v111 = v37;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v292, &v276, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v112 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v113 = swift_allocObject();
    *(v113 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v111)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v45) = v111;
      v114 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v115 = MEMORY[0x1E69E6870];
      v113[7] = MEMORY[0x1E69E6810];
      v113[8] = v115;
      v113[4] = Counter;
      v116 = AGGraphGetCurrentAttribute();
      if (v116 != v45)
      {
        Counter = v113;
        v117 = MEMORY[0x1E69E76D0];
        v113[12] = MEMORY[0x1E69E7668];
        v113[13] = v117;
        *(v113 + 18) = v116;
        v113[17] = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        v113[18] = v118;
        v113[14] = 0xD000000000000013;
        v113[15] = 0x800000018DD78EB0;
        if (LOBYTE(v91))
        {
          LOBYTE(v232) = v231;
          v267 = &dword_18D018000;
          v233 = v113;
          v234 = v112;
          *&v276 = v92;
          *(&v276 + 1) = v108;
          LOBYTE(v277) = LOBYTE(v90);
          *&v268.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v268.f64[1] = 39;
          LOBYTE(v269) = 2;
          v119 = v211;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v232, &v267, &v234, &v276, v211, &v268, &v233);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v292, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v292, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
          (*(v227 + 8))(v119, v230);
        }

        else
        {
          v120 = v92;
          if (v92 == 20)
          {
            v121 = 3;
          }

          else
          {
            v121 = 4;
          }

          v122 = bswap32(v92) | (4 * WORD1(v92));
          LODWORD(v231) = v231;
          v123 = (v227 + 16);
          v216 = *(v227 + 16);
          v124 = v216(v228, v211, v230);
          v47 = 0;
          LOBYTE(v268.f64[0]) = 1;
          v226 = v121;
          v217 = v123;
          v223 = 16 * v121;
          v224 = v123 - 8;
          v221 = v120;
          v222 = v113 + 4;
          do
          {
            v225 = &v209;
            MEMORY[0x1EEE9AC00](v124);
            a1 = &v209 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
            v24 = (a1 + 8);
            v127 = v226;
            v128 = (a1 + 8);
            do
            {
              *(v128 - 1) = 0;
              *v128 = 0;
              v128 += 16;
              --v127;
            }

            while (v127);
            v129 = &v222[5 * v47];
            v45 = v226;
            while (1)
            {
              v130 = *(Counter + 16);
              if (v47 == v130)
              {
                break;
              }

              if (v47 >= v130)
              {
                goto LABEL_178;
              }

              ++v47;
              outlined init with copy of AnyTrackedValue(v129, &v276);
              v131 = *(&v277 + 1);
              *&v91 = Counter;
              v132 = v278;
              __swift_project_boxed_opaque_existential_1(&v276, *(&v277 + 1));
              v133 = v132;
              Counter = *&v91;
              *(v24 - 1) = CVarArg.kdebugValue(_:)(v122 | v231, v131, v133);
              *v24++ = v134 & 1;
              v125 = __swift_destroy_boxed_opaque_existential_1(&v276);
              v129 += 40;
              if (!--v45)
              {
                goto LABEL_74;
              }
            }

            LOBYTE(v268.f64[0]) = 0;
LABEL_74:
            v135 = v221;
            if (v221 == 20)
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

            if (v135 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v136 = *v224;
            v137 = v228;
            v138 = v230;
            (*v224)(v228, v230);
            v139 = __swift_project_value_buffer(v138, static OSSignpostID.continuation);
            v124 = v216(v137, v139, v138);
          }

          while ((LOBYTE(v268.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v292, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v292, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
          v140 = v230;
          v136(v228, v230);
          v136(v211, v140);
        }

        goto LABEL_90;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_45:
    v96 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v97 = swift_allocObject();
    *(v97 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == Counter)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v98 = Counter;
    v99 = AGGraphGetAttributeGraph();
    v100 = AGGraphGetCounter();

    v101 = MEMORY[0x1E69E6870];
    v97[7] = MEMORY[0x1E69E6810];
    v97[8] = v101;
    v97[4] = v100;
    v102 = AGGraphGetCurrentAttribute();
    if (v102 == v98)
    {
      goto LABEL_196;
    }

    Counter = v97;
    v103 = MEMORY[0x1E69E76D0];
    v97[12] = MEMORY[0x1E69E7668];
    v97[13] = v103;
    *(v97 + 18) = v102;
    v97[17] = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v97[18] = v104;
    v97[14] = 0xD000000000000013;
    v97[15] = 0x800000018DD78EB0;
    if (v92)
    {
      LOBYTE(v232) = v231;
      v267 = &dword_18D018000;
      v233 = v97;
      v234 = v96;
      *&v295 = v90;
      *(&v295 + 1) = v91;
      LOBYTE(v296) = v45;
      *&v268.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v268.f64[1] = 39;
      LOBYTE(v269) = 2;
      v105 = v210;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v232, &v267, &v234, &v295, v210, &v268, &v233);
      v106 = v214;

      (*(v227 + 8))(v105, v230);
    }

    else
    {
      v45 = LOBYTE(v90);
      v122 = LOBYTE(v90) == 20 ? 3 : 4;
      a1 = bswap32(LOWORD(v90)) | (4 * HIWORD(LODWORD(v90)));
      LODWORD(v231) = v231;
      v141 = (v227 + 16);
      v216 = *(v227 + 16);
      v142 = v216(v226, v210, v230);
      v47 = 0;
      LOBYTE(v268.f64[0]) = 1;
      v217 = v141;
      v224 = (16 * v122);
      v225 = v141 - 8;
      v222 = v45;
      v223 = (v97 + 4);
      v221 = v122;
      do
      {
        v228 = &v209;
        MEMORY[0x1EEE9AC00](v142);
        *&v91 = &v209 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = (*&v91 + 8);
        v144 = v122;
        v145 = (*&v91 + 8);
        do
        {
          *(v145 - 1) = 0;
          *v145 = 0;
          v145 += 16;
          --v144;
        }

        while (v144);
        v129 = (v223 + 40 * v47);
        while (1)
        {
          v146 = *(Counter + 16);
          if (v47 == v146)
          {
            break;
          }

          if (v47 >= v146)
          {
            goto LABEL_179;
          }

          ++v47;
          outlined init with copy of AnyTrackedValue(v129, &v295);
          v147 = *(&v296 + 1);
          v45 = Counter;
          v148 = v297;
          __swift_project_boxed_opaque_existential_1(&v295, *(&v296 + 1));
          v149 = v148;
          Counter = v45;
          *(v24 - 1) = CVarArg.kdebugValue(_:)(a1 | v231, v147, v149);
          *v24++ = v150 & 1;
          v125 = __swift_destroy_boxed_opaque_existential_1(&v295);
          v129 += 40;
          if (!--v122)
          {
            goto LABEL_103;
          }
        }

        LOBYTE(v268.f64[0]) = 0;
LABEL_103:
        v45 = v222;
        if (v222 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v122 = v221;
        if (*(*&v91 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(*&v91 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(*&v91 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v45 != 20 && *(*&v91 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v151 = v226;
        v152 = *v225;
        v153 = v230;
        (*v225)(v226, v230);
        v154 = __swift_project_value_buffer(v153, static OSSignpostID.continuation);
        v142 = v216(v151, v154, v153);
      }

      while ((LOBYTE(v268.f64[0]) & 1) != 0);
      v106 = v214;

      v155 = v230;
      v152(v226, v230);
      v152(v210, v155);
    }

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v292, &lazy cache variable for type metadata for AnimatableAttributeHelper<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatableAttributeHelper);
    Counter = v219;
    v219[35] = v106;
    a3 = v215;
LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v213);

    a1 = v218;
    v24 = &v235;
LABEL_120:
    *&v292[192] = v263;
    *&v292[208] = v264;
    *&v292[224] = v265;
    *&v292[240] = v266;
    *&v292[128] = v259;
    *&v292[144] = v260;
    *&v292[160] = v261;
    *&v292[176] = v262;
    *&v292[80] = v256;
    *&v292[96] = v257;
    *&v292[112] = v258;
    *v292 = v251;
    *&v292[16] = v252;
    *&v292[32] = v253;
    *&v292[48] = v254;
    *&v292[64] = v255;
    _s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOi_(v292);
    memcpy((Counter + 16), v292, 0x101uLL);
LABEL_121:
    v122 = *(Counter + 280);
    if (!v122)
    {
      return;
    }

    v156 = *(a1 + 208);
    v294[12] = *(a1 + 192);
    v294[13] = v156;
    v157 = *(a1 + 240);
    v294[14] = *(a1 + 224);
    v294[15] = v157;
    v158 = *(a1 + 144);
    v294[8] = *(a1 + 128);
    v294[9] = v158;
    v159 = *(a1 + 176);
    v294[10] = *(a1 + 160);
    v294[11] = v159;
    v160 = *(a1 + 80);
    v294[4] = *(a1 + 64);
    v294[5] = v160;
    v161 = *(a1 + 112);
    v294[6] = *(a1 + 96);
    v294[7] = v161;
    v162 = *(a1 + 16);
    v294[0] = *a1;
    v294[1] = v162;
    v163 = *(a1 + 48);
    v294[2] = *(a1 + 32);
    v294[3] = v163;
    v164 = *(a1 + 320);
    *&v292[80] = *(a1 + 336);
    v165 = *(a1 + 368);
    *&v292[96] = *(a1 + 352);
    *&v292[112] = v165;
    v166 = *(a1 + 272);
    *v292 = *(a1 + 256);
    *&v292[16] = v166;
    v167 = *(a1 + 304);
    *&v91 = v292;
    *&v292[32] = *(a1 + 288);
    *&v292[48] = v167;
    *&v292[64] = v164;
    RoundedRectangularShapeCorners.animatableData.getter(&v292[128]);

    LOBYTE(v294[0]) = 0;
    v168 = specialized AnimatorState.update(_:at:environment:)(v292, a3, v23);
    v125 = AGGraphGetCurrentAttribute();
    v47 = *MEMORY[0x1E698D3F8];
    if (v125 == v47)
    {
      LODWORD(v45) = 0;
    }

    else
    {
      LODWORD(v45) = v125;
    }

    v129 = &type metadata instantiation cache for TupleTypeDescription;
    if (v168)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_127;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_182;
    }

LABEL_140:
    v180 = *(v129 + 77);
    if (*(v180 + 16) >= 0x43uLL)
    {
      if (*(v180 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v294[0]) = v45;
        BYTE4(v294[0]) = v125 == v47;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_175;
    }

    __break(1u);
LABEL_184:
    swift_once();
LABEL_132:
    v46 = *(&static Signpost.animationState + 1);
    v45 = static Signpost.animationState;
    v171 = word_1ED5283E8;
    v172 = HIBYTE(word_1ED5283E8);
    v173 = byte_1ED5283EA;
    v42 = static os_signpost_type_t.end.getter();
    v294[0] = __PAIR128__(v46, v45);
    LOBYTE(v294[1]) = v171;
    BYTE1(v294[1]) = v172;
    BYTE2(v294[1]) = v173;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v174 = one-time initialization token for _signpostLog;
    v44 = v217;

    if (v174 != -1)
    {
      swift_once();
    }

    LODWORD(v231) = v171;
    v48 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v47)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v225 = v50;
    v226 = v49;
    v223 = *&v52;
    v224 = v51;
    swift_once();
    v52 = *&v223;
    v51 = v224;
    v50 = v225;
    v49 = v226;
  }

  v44 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v175 = MEMORY[0x1E69E6870];
  v37[7] = MEMORY[0x1E69E6810];
  v37[8] = v175;
  v37[4] = Counter;
  v176 = AGGraphGetCurrentAttribute();
  if (v176 == v47)
  {
    goto LABEL_186;
  }

  Counter = v37;
  v177 = MEMORY[0x1E69E76D0];
  v37[12] = MEMORY[0x1E69E7668];
  v37[13] = v177;
  *(v37 + 18) = v176;
  v37[17] = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  v37[18] = v178;
  v37[14] = 0xD000000000000013;
  v37[15] = 0x800000018DD78EB0;
  if (v172)
  {
    LOBYTE(v234) = v42;
    *&v235 = &dword_18D018000;
    *&v268.f64[0] = v48;
    *&v294[0] = v45;
    *(&v294[0] + 1) = v46;
    LOBYTE(v294[1]) = v231;
    *&v251 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v251 + 1) = 37;
    LOBYTE(v252) = 2;
    v267 = v37;
    v179 = v220;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v234, &v235, &v268, v294, v220, &v251, &v267);

    (*(v227 + 8))(v179, v230);
    goto LABEL_173;
  }

  v47 = v45;
  v181 = v42;
  if (v45 == 20)
  {
    v122 = 3;
  }

  else
  {
    v122 = 4;
  }

  LODWORD(v45) = bswap32(v45) | (4 * WORD1(v45));
  LODWORD(v231) = v181;
  v182 = v227 + 16;
  v221 = *(v227 + 16);
  v183 = v221(v229, v220, v230);
  a1 = 0;
  LOBYTE(v251) = 1;
  v227 = v182;
  v225 = (16 * v122);
  v226 = (v182 - 8);
  v223 = v47;
  v224 = (v37 + 4);
  v222 = v122;
  do
  {
    v228 = &v209;
    MEMORY[0x1EEE9AC00](v183);
    *&v91 = &v209 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = (*&v91 + 8);
    v185 = v122;
    v186 = (*&v91 + 8);
    do
    {
      *(v186 - 1) = 0;
      *v186 = 0;
      v186 += 16;
      --v185;
    }

    while (v185);
    v129 = &v224[40 * a1];
    while (1)
    {
      v187 = *(Counter + 16);
      if (a1 == v187)
      {
        break;
      }

      if (a1 >= v187)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v207 = v125;
        swift_once();
        v125 = v207;
LABEL_127:
        v169 = *(v129 + 77);
        if (*(v169 + 16) >= 0x43uLL)
        {
          if (*(v169 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v294[0]) = v45;
            BYTE4(v294[0]) = v125 == v47;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v218 = a1;
          v219 = Counter;
          v170 = one-time initialization token for animationState;
          v217 = v122;

          if (v170 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v208 = v125;
        swift_once();
        v125 = v208;
        goto LABEL_140;
      }

      ++a1;
      outlined init with copy of AnyTrackedValue(v129, v294);
      v188 = *(&v294[1] + 1);
      v47 = Counter;
      v189 = *&v294[2];
      __swift_project_boxed_opaque_existential_1(v294, *(&v294[1] + 1));
      v190 = v189;
      Counter = v47;
      *(v24 - 1) = CVarArg.kdebugValue(_:)(v45 | v231, v188, v190);
      *v24++ = v191 & 1;
      v125 = __swift_destroy_boxed_opaque_existential_1(v294);
      v129 += 40;
      if (!--v122)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v251) = 0;
LABEL_158:
    v47 = v223;
    if (v223 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v122 = v222;
    if (*(*&v91 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(*&v91 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(*&v91 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v47 != 20 && *(*&v91 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v192 = *v226;
    v194 = v229;
    v193 = v230;
    (*v226)(v229, v230);
    v195 = __swift_project_value_buffer(v193, static OSSignpostID.continuation);
    v183 = v221(v194, v195, v193);
  }

  while ((v251 & 1) != 0);

  v196 = v230;
  v192(v229, v230);
  v192(v220, v196);
LABEL_173:

LABEL_174:
  specialized AnimatorState.removeListeners()();

  a1 = v218;
  v219[35] = 0;
  v24 = &v235;
  *&v91 = v292;
LABEL_175:
  v197 = *(*&v91 + 208);
  v24[99] = *(*&v91 + 192);
  v24[100] = v197;
  v198 = *(*&v91 + 240);
  v24[101] = *(*&v91 + 224);
  v24[102] = v198;
  v199 = *(*&v91 + 144);
  v24[95] = *(*&v91 + 128);
  v24[96] = v199;
  v200 = *(*&v91 + 176);
  v24[97] = *(*&v91 + 160);
  v24[98] = v200;
  v201 = v24[60];
  v202 = v24[61];
  v203 = v24[63];
  *(a1 + 288) = v24[62];
  *(a1 + 304) = v203;
  *(a1 + 256) = v201;
  *(a1 + 272) = v202;
  v204 = v24[64];
  v205 = v24[65];
  v206 = v24[67];
  *(a1 + 352) = v24[66];
  *(a1 + 368) = v206;
  *(a1 + 320) = v204;
  *(a1 + 336) = v205;
  RoundedRectangularShapeCorners.animatableData.setter(v294);

  *(a1 + 384) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, float32x2_t a5)
{
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x65766C6F7365525FLL, 0xE900000000000064, _ColorMultiplyEffect._Resolved.animatableData.setter, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMultiplyEffect._Resolved>, a5, lazy protocol witness table accessor for type _ColorMultiplyEffect._Resolved and conformance _ColorMultiplyEffect._Resolved, &type metadata for _ColorMultiplyEffect._Resolved, type metadata accessor for _ColorMultiplyEffect._Resolved.Type);
}

{
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x6465766C6F736552, 0xE800000000000000, Color.Resolved.animatableData.setter, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.Resolved>, a5, lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved, &type metadata for Color.Resolved, type metadata accessor for Color.Resolved.Type);
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(unint64_t a1, uint64_t Counter, int a3, uint64_t a4)
{
  LODWORD(v9) = a3;
  v238 = *MEMORY[0x1E69E9840];
  v214 = type metadata accessor for OSSignpostID();
  v210 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v209 = &v190[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v207 = &v190[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v211 = &v190[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v190[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v213 = &v190[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v204 = &v190[-v23];
  if (*(a4 + 40))
  {
    Value = AGGraphGetValue();
    if (v25)
    {
      v26 = *Value;
    }

    else
    {
      v26 = -INFINITY;
    }
  }

  else
  {
    v26 = -INFINITY;
  }

  v28 = &unk_1ED52E000;
  v29 = &static Color.Resolved.legacyInterpolation;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 20) = 1;
    goto LABEL_9;
  }

  if (*(a1 + 20) == 1)
  {
LABEL_9:
    v27.i32[0] = *a1;
    LODWORD(v6) = *(a1 + 4);
    v215 = v27;
    v27.i32[0] = *(a1 + 8);
    LODWORD(v5) = *(a1 + 12);
    v208 = v27;
    v27.i32[0] = *(a1 + 16);
    v212 = v27;
    if (one-time initialization token for legacyInterpolation != -1)
    {
      goto LABEL_205;
    }

    goto LABEL_10;
  }

LABEL_140:
  v153 = *(a4 + 40);
  if (!v153)
  {
    return;
  }

  v215 = *a1;
  LODWORD(v5) = *(a1 + 16);
  v154 = *(v28 + 487);

  if (v154 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*v29)
  {
    v155 = v215;
  }

  else
  {
    v224[0] = 2;
    ResolvedGradient.ColorSpace.convertIn(_:)(&v234, v215.f32[0], v215.u32[1], v215.f32[2], v215.f32[3]);
    v155 = v234;
  }

  v156.i64[0] = 0x4300000043000000;
  v156.i64[1] = 0x4300000043000000;
  *v224 = v5;
  *&v224[4] = vmulq_f32(v155, v156);
  LOBYTE(v234) = 0;
  v157 = specialized AnimatorState.update(_:at:environment:)(v224, v9, v26);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v49 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v159 = 0;
  }

  else
  {
    v159 = CurrentAttribute;
  }

  if (v157)
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
        LODWORD(v234) = v159;
        BYTE4(v234) = CurrentAttribute == v49;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      v202 = a4;
      v203 = a1;
      v160 = one-time initialization token for animationState;
      v201 = v153;

      if (v160 == -1)
      {
        goto LABEL_157;
      }

      goto LABEL_209;
    }

    __break(1u);
    goto LABEL_207;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
LABEL_207:
    v189 = CurrentAttribute;
    swift_once();
    CurrentAttribute = v189;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
      LODWORD(v234) = v159;
      BYTE4(v234) = CurrentAttribute == v49;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    specialized AnimatorState.nextUpdate()();
    goto LABEL_200;
  }

  __break(1u);
LABEL_209:
  swift_once();
LABEL_157:
  v161 = *(&static Signpost.animationState + 1);
  v54 = static Signpost.animationState;
  v56 = word_1ED5283E8;
  v52 = HIBYTE(word_1ED5283E8);
  v162 = byte_1ED5283EA;
  v163 = static os_signpost_type_t.end.getter();
  v234 = __PAIR128__(v161, v54);
  LOBYTE(v235) = v56;
  BYTE1(v235) = v52;
  BYTE2(v235) = v162;
  if ((Signpost.isEnabled.getter() & 1) == 0)
  {

    goto LABEL_199;
  }

  v215.i32[0] = v163;
  v164 = one-time initialization token for _signpostLog;
  LODWORD(v55) = v201;

  if (v164 != -1)
  {
    swift_once();
  }

  v51 = _signpostLog;
  OSSignpostID.init(log:object:)();
  type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_18DDAF080;
  if (AGGraphGetCurrentAttribute() == v49)
  {
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    swift_once();
    goto LABEL_36;
  }

  v55 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v165 = MEMORY[0x1E69E6870];
  *(v53 + 56) = MEMORY[0x1E69E6810];
  *(v53 + 64) = v165;
  *(v53 + 32) = Counter;
  v166 = AGGraphGetCurrentAttribute();
  if (v166 == v49)
  {
    goto LABEL_211;
  }

  v167 = v53;
  v168 = MEMORY[0x1E69E76D0];
  *(v53 + 96) = MEMORY[0x1E69E7668];
  *(v53 + 104) = v168;
  *(v53 + 72) = v166;
  *(v53 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v53 + 144) = v169;
  *(v53 + 112) = 0x65766C6F7365525FLL;
  *(v53 + 120) = 0xE900000000000064;
  if (v52)
  {
    v221 = v215.i8[0];
    v219 = v51;
    v220 = &dword_18D018000;
    *&v234 = v54;
    *(&v234 + 1) = v161;
    LOBYTE(v235) = v56;
    v217[0] = "Animation: (%p) [%d] %{public}@ ended";
    v217[1] = 37;
    v218 = 2;
    v216 = v53;
    v170 = v204;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v221, &v220, &v219, &v234, v204, v217, &v216);

    (*(v210 + 8))(v170, v214);
    goto LABEL_198;
  }

  v171 = v54;
  if (v54 == 20)
  {
    v172 = 3;
  }

  else
  {
    v172 = 4;
  }

  v29 = bswap32(v54) | (4 * WORD1(v54));
  a1 = v215.u8[0];
  v173 = v210 + 16;
  v205 = *(v210 + 16);
  v174 = v205(v213, v204, v214);
  v9 = 0;
  LOBYTE(v217[0]) = 1;
  v212.i64[0] = v172;
  v209 = (v173 - 8);
  v210 = v173;
  v215.i64[0] = v167;
  v207 = (v167 + 32);
  v208.i64[0] = 16 * v172;
  v206 = v171;
  do
  {
    v211 = v190;
    MEMORY[0x1EEE9AC00](v174);
    v19 = &v190[-((v175 + 15) & 0xFFFFFFFFFFFFFFF0)];
    Counter = (v19 + 8);
    v176 = v212.i64[0];
    v177 = v19 + 8;
    do
    {
      *(v177 - 1) = 0;
      *v177 = 0;
      v177 += 16;
      --v176;
    }

    while (v176);
    v28 = &v207[40 * v9];
    a4 = v212.i64[0];
    while (1)
    {
      v178 = *(v215.i64[0] + 16);
      if (v9 == v178)
      {
        break;
      }

      if (v9 >= v178)
      {
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        swift_once();
LABEL_10:
        swift_beginAccess();
        if (*v29)
        {
          v31 = v215;
          v31.i32[1] = v208.i32[0];
        }

        else
        {
          LOBYTE(v228) = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v234, v215.f32[0], v6, v208.f32[0], *&v5);
          LODWORD(v6) = DWORD1(v234);
          v31.i64[0] = __PAIR64__(DWORD2(v234), v234);
          LODWORD(v5) = HIDWORD(v234);
        }

        *&v30 = *&v6 * 128.0;
        *v31.f32 = vmul_f32(*v31.f32, 0x4300000043000000);
        *&v5 = *&v5 * 128.0;
        if (*(a4 + 32))
        {
          goto LABEL_139;
        }

        *&v4 = v26;
        v32 = *(a4 + 24);
        LODWORD(v6) = *(a4 + 28);
        LODWORD(v7) = *(a4 + 12);
        v33 = *(a4 + 16);
        v34 = *(a4 + 20);
        v35 = v31.f32[1];
        if (v212.f32[0] == *&v7)
        {
          v36 = v31.f32[0] == v33 && *&v30 == v34;
          v37 = v36 && v31.f32[1] == v32;
          if (v37 && *&v5 == *&v6)
          {
            v26 = *&v4;
            goto LABEL_139;
          }
        }

        v194 = v19;
        v197 = v30;
        v198 = v31;
        v203 = a1;
        AGGraphClearUpdate();
        v39 = *(a4 + 16);
        v234 = *a4;
        v235 = v39;
        v236 = *(a4 + 32);
        v202 = a4;
        v237 = *(a4 + 48);
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v234, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        v40 = *AGGraphGetValue();

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        AGGraphSetUpdate();
        v41 = Transaction.effectiveAnimation.getter(v40);
        if (v41)
        {
          v42 = v41;
          v196 = *&v5;
          goto LABEL_31;
        }

        a1 = v203;
        v28 = &unk_1ED52E000;
        if (!Counter)
        {

          a4 = v202;
          v26 = *&v4;
          v29 = &static Color.Resolved.legacyInterpolation;
          goto LABEL_138;
        }

        v196 = *&v5;

        v42 = Counter;
LABEL_31:
        v43 = *(&v236 + 1);
        v44 = v212.f32[0] - *&v7;
        v45 = v198.f32[0] - v33;
        v46 = *&v197 - v34;
        v47 = v196 - *&v6;
        v26 = *AGGraphGetValue();
        v191 = v9;
        v192 = v42;
        v193 = v40;
        if (!v43)
        {
          *v224 = &type metadata for _AlphaThresholdEffect._Resolved;
          type metadata accessor for _AlphaThresholdEffect._Resolved.Type();
          type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Type, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
          v61 = swift_dynamicCast();
          if (v61)
          {
            v62 = v228;
          }

          else
          {
            v62 = 0;
          }

          if (v61)
          {
            v63 = v229;
          }

          else
          {
            v63 = 0;
          }

          v222.i64[0] = __PAIR64__(LODWORD(v45), LODWORD(v44));
          v222.f32[2] = v46;
          v222.f32[3] = v35 - v32;
          v223 = v47;

          v195 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVySfAVyS2fGGGG_Tt4B5(v64, &v222, v40, v62, v63, v26);
          v65 = AGGraphGetCurrentAttribute();
          v66 = v65;
          LODWORD(v67) = *MEMORY[0x1E698D3F8];
          if (v65 == *MEMORY[0x1E698D3F8])
          {
            v68 = 0;
          }

          else
          {
            v68 = v65;
          }

          (*(*v42 + 96))(v224);
          v70 = *v224;
          v69 = *&v224[8];
          v71 = *&v224[16];
          v72 = v225;
          v73 = v226;
          v216 = 0x7FF8000000000000;
          v217[0] = 0x7FF8000000000000;
          v219 = 0x3FF0000000000000;
          v220 = 0x7FF8000000000000;
          v228 = *v224;
          v229 = *&v224[8];
          v230 = *&v224[16];
          v231 = v225;
          v232 = v226;
          v215.i32[0] = v227;
          LOBYTE(v233) = v227;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v228, v217, &v220, &v219, &v216);
          v7 = v216;
          v4 = v217[0];
          v6 = v219;
          v5 = v220;
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
            if (*(static CustomEventTrace.enabledCategories + 98) == 1)
            {
              v74 = v68;
              v75 = v71;
              v76 = static CustomEventTrace.recorder;
              if (static CustomEventTrace.recorder)
              {
                v77 = v66 == v67;
                v208.i64[0] = v73;
                *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
                LODWORD(v211) = v67;
                v67 = v72;
                v78 = *(v76 + 16);
                LODWORD(v228) = v74;
                BYTE4(v228) = v77;
                v229 = &type metadata for _AlphaThresholdEffect._Resolved;
                v230 = v4;
                v231 = v5;
                v232 = v6;
                v233 = v7;
                type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

                v79 = v78;
                AGGraphAddTraceEvent();
                v80 = v67;
                LODWORD(v67) = v211;
                outlined consume of Animation.Function(v70, v69, v75, v80, v208.i64[0], v215.u8[0]);

                goto LABEL_100;
              }

              v87 = v70;
              v88 = v69;
              v89 = v75;
            }

            else
            {
              v87 = v70;
              v88 = v69;
              v89 = v71;
            }

            outlined consume of Animation.Function(v87, v88, v89, v72, v73, v215.u8[0]);
LABEL_100:
            v121 = one-time initialization token for animationState;

            *&v5 = v196;
            if (v121 == -1)
            {
LABEL_101:
              v95 = *(&static Signpost.animationState + 1);
              v90 = static Signpost.animationState;
              LOBYTE(v52) = word_1ED5283E8;
              LODWORD(Counter) = HIBYTE(word_1ED5283E8);
              v122 = byte_1ED5283EA;
              v123 = static os_signpost_type_t.begin.getter();
              v228 = v90;
              v229 = v95;
              LOBYTE(v230) = v52;
              BYTE1(v230) = Counter;
              BYTE2(v230) = v122;
              if (Signpost.isEnabled.getter())
              {
                v215.i32[0] = v123;
                v124 = one-time initialization token for _signpostLog;

                if (v124 != -1)
                {
                  goto LABEL_219;
                }

                goto LABEL_103;
              }

              v134 = v195;

LABEL_136:
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
              a4 = v202;
              *(v202 + 40) = v134;
              LODWORD(v9) = v191;
              goto LABEL_137;
            }
          }

          swift_once();
          goto LABEL_101;
        }

        v222.i64[0] = __PAIR64__(LODWORD(v45), LODWORD(v44));
        v222.f32[2] = v46;
        v222.f32[3] = v35 - v32;
        v223 = v47;
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v234, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        LOBYTE(v228) = 0;
        v195 = v43;
        specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v42, &v222, v40, v9, v26);
        v48 = AGGraphGetCurrentAttribute();
        LODWORD(Counter) = v48;
        v49 = *MEMORY[0x1E698D3F8];
        if (v48 == *MEMORY[0x1E698D3F8])
        {
          v50 = 0;
        }

        else
        {
          v50 = v48;
        }

        v215.i32[0] = v50;
        (*(*v42 + 96))(v224);
        v52 = *v224;
        v51 = *&v224[8];
        v53 = *&v224[16];
        v54 = v226;
        LODWORD(v55) = v227;
        v216 = 0x7FF8000000000000;
        v217[0] = 0x7FF8000000000000;
        v219 = 0x3FF0000000000000;
        v220 = 0x7FF8000000000000;
        v228 = *v224;
        v229 = *&v224[8];
        v230 = *&v224[16];
        v231 = v225;
        v56 = v225;
        v232 = v226;
        LOBYTE(v233) = v227;
        static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v228, v217, &v220, &v219, &v216);
        v7 = v216;
        v4 = v217[0];
        v6 = v219;
        v5 = v220;
        if (one-time initialization token for enabledCategories != -1)
        {
          goto LABEL_212;
        }

LABEL_36:
        if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
        {
          __break(1u);
LABEL_214:
          swift_once();
          goto LABEL_61;
        }

        if (*(static CustomEventTrace.enabledCategories + 98) == 1)
        {
          LODWORD(v209) = v55;
          v57 = static CustomEventTrace.recorder;
          if (static CustomEventTrace.recorder)
          {
            v208.i32[0] = v49;
            *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
            v58 = *(v57 + 16);
            LODWORD(v228) = v215.i32[0];
            BYTE4(v228) = Counter == v49;
            v229 = &type metadata for _AlphaThresholdEffect._Resolved;
            v230 = v4;
            v231 = v5;
            v232 = v6;
            v233 = v7;
            type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
            v215.i64[0] = v59;

            v60 = v58;
            v49 = v208.i32[0];
            AGGraphAddTraceEvent();
            outlined consume of Animation.Function(v52, v51, v53, v56, v54, v209);

            goto LABEL_60;
          }

          v81 = v52;
          v82 = v51;
          v83 = v53;
          v84 = v56;
          v85 = v54;
          v86 = v209;
        }

        else
        {
          v81 = v52;
          v82 = v51;
          v83 = v53;
          v84 = v56;
          v85 = v54;
          v86 = v55;
        }

        outlined consume of Animation.Function(v81, v82, v83, v84, v85, v86);
LABEL_60:
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v234, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        *&v5 = v196;
        if (one-time initialization token for animationState != -1)
        {
          goto LABEL_214;
        }

LABEL_61:
        v90 = *(&static Signpost.animationState + 1);
        v67 = static Signpost.animationState;
        v91 = word_1ED5283E8;
        LODWORD(Counter) = HIBYTE(word_1ED5283E8);
        v92 = byte_1ED5283EA;
        v93 = static os_signpost_type_t.event.getter();
        v228 = v67;
        v229 = v90;
        LOBYTE(v230) = v91;
        BYTE1(v230) = Counter;
        BYTE2(v230) = v92;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          goto LABEL_97;
        }

        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v234, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        if (one-time initialization token for _signpostLog != -1)
        {
          swift_once();
        }

        v215.i32[0] = v93;
        v94 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v49)
        {
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          swift_once();
LABEL_103:
          v125 = _signpostLog;
          OSSignpostID.init(log:object:)();
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_18DDAF080;
          if (AGGraphGetCurrentAttribute() == v67)
          {
            __break(1u);
          }

          else
          {
            v127 = AGGraphGetAttributeGraph();
            v128 = AGGraphGetCounter();

            v129 = MEMORY[0x1E69E6870];
            *(v126 + 56) = MEMORY[0x1E69E6810];
            *(v126 + 64) = v129;
            *(v126 + 32) = v128;
            v130 = AGGraphGetCurrentAttribute();
            if (v130 != v67)
            {
              v131 = MEMORY[0x1E69E76D0];
              *(v126 + 96) = MEMORY[0x1E69E7668];
              *(v126 + 104) = v131;
              *(v126 + 72) = v130;
              *(v126 + 136) = MEMORY[0x1E69E6158];
              lazy protocol witness table accessor for type String and conformance String();
              *(v126 + 144) = v132;
              *(v126 + 112) = 0x65766C6F7365525FLL;
              *(v126 + 120) = 0xE900000000000064;
              if (Counter)
              {
                LOBYTE(v216) = v215.i8[0];
                v217[0] = &dword_18D018000;
                v219 = v126;
                v220 = v125;
                v228 = v90;
                v229 = v95;
                LOBYTE(v230) = v52;
                *v224 = "Animation: (%p) [%d] %{public}@ started";
                *&v224[8] = 39;
                v224[16] = 2;
                v133 = v207;
                specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v216, v217, &v220, &v228, v207, v224, &v219);
                v134 = v195;

                (*(v210 + 8))(v133, v214);
              }

              else
              {
                v135 = v90;
                if (v90 == 20)
                {
                  v136 = 3;
                }

                else
                {
                  v136 = 4;
                }

                v19 = (bswap32(v90) | (4 * WORD1(v90)));
                v29 = v215.u8[0];
                v137 = (v210 + 16);
                v194 = *(v210 + 16);
                v138 = (v194)(v209, v207, v214);
                v9 = 0;
                v224[0] = 1;
                v211 = v136;
                v199 = v137;
                v200 = v135;
                v205 = (16 * v136);
                v206 = v137 - 8;
                v215.i64[0] = v126;
                v201 = v126 + 32;
                do
                {
                  v208.i64[0] = v190;
                  MEMORY[0x1EEE9AC00](v138);
                  Counter = &v190[-((v139 + 15) & 0xFFFFFFFFFFFFFFF0)];
                  a4 = Counter + 8;
                  v140 = v211;
                  v141 = (Counter + 8);
                  do
                  {
                    *(v141 - 1) = 0;
                    *v141 = 0;
                    v141 += 16;
                    --v140;
                  }

                  while (v140);
                  v28 = (v201 + 40 * v9);
                  a1 = v211;
                  while (1)
                  {
                    v142 = *(v215.i64[0] + 16);
                    if (v9 == v142)
                    {
                      break;
                    }

                    if (v9 >= v142)
                    {
                      goto LABEL_204;
                    }

                    ++v9;
                    outlined init with copy of AnyTrackedValue(v28, &v228);
                    v143 = v231;
                    v144 = v232;
                    __swift_project_boxed_opaque_existential_1(&v228, v231);
                    *(a4 - 8) = CVarArg.kdebugValue(_:)(v19 | v29, v143, v144);
                    *a4 = v145 & 1;
                    a4 += 16;
                    __swift_destroy_boxed_opaque_existential_1(&v228);
                    v28 += 40;
                    if (!--a1)
                    {
                      goto LABEL_120;
                    }
                  }

                  v224[0] = 0;
LABEL_120:
                  v146 = v200;
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

                  if (v146 != 20 && *(Counter + 56) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v147 = *v206;
                  v148 = v209;
                  v149 = v214;
                  (*v206)(v209, v214);
                  v150 = __swift_project_value_buffer(v149, static OSSignpostID.continuation);
                  v138 = (v194)(v148, v150, v149);
                }

                while ((v224[0] & 1) != 0);
                v134 = v195;

                v151 = v214;
                v147(v209, v214);
                v147(v207, v151);
              }

              goto LABEL_136;
            }
          }

          __break(1u);
        }

        LODWORD(v52) = v49;
        v96 = AGGraphGetAttributeGraph();
        v97 = AGGraphGetCounter();

        v98 = MEMORY[0x1E69E6870];
        *(v95 + 56) = MEMORY[0x1E69E6810];
        *(v95 + 64) = v98;
        *(v95 + 32) = v97;
        v99 = AGGraphGetCurrentAttribute();
        if (v99 == v52)
        {
          goto LABEL_218;
        }

        v100 = v95;
        v101 = MEMORY[0x1E69E76D0];
        *(v95 + 96) = MEMORY[0x1E69E7668];
        *(v95 + 104) = v101;
        *(v95 + 72) = v99;
        *(v95 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v95 + 144) = v102;
        *(v95 + 112) = 0x65766C6F7365525FLL;
        *(v95 + 120) = 0xE900000000000064;
        if (Counter)
        {
          LOBYTE(v216) = v215.i8[0];
          v217[0] = &dword_18D018000;
          v219 = v95;
          v220 = v94;
          v228 = v67;
          v229 = v90;
          LOBYTE(v230) = v91;
          *v224 = "Animation: (%p) [%d] %{public}@ updated";
          *&v224[8] = 39;
          v224[16] = 2;
          v103 = v194;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v216, v217, &v220, &v228, v194, v224, &v219);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          (*(v210 + 8))(v103, v214);
        }

        else
        {
          v104 = v67;
          if (v67 == 20)
          {
            a4 = 3;
          }

          else
          {
            a4 = 4;
          }

          Counter = bswap32(v67) | (4 * WORD1(v67));
          v215.i32[0] = v215.u8[0];
          v105 = v210 + 16;
          v199 = *(v210 + 16);
          v106 = v199(v211, v194, v214);
          v9 = 0;
          v224[0] = 1;
          v200 = v105;
          v201 = a4;
          v207 = (16 * a4);
          v208.i64[0] = v105 - 8;
          v205 = v104;
          v206 = (v100 + 32);
          v29 = v100;
          do
          {
            v209 = v190;
            MEMORY[0x1EEE9AC00](v106);
            v19 = &v190[-((v107 + 15) & 0xFFFFFFFFFFFFFFF0)];
            a1 = (v19 + 8);
            v108 = a4;
            v109 = v19 + 8;
            do
            {
              *(v109 - 1) = 0;
              *v109 = 0;
              v109 += 16;
              --v108;
            }

            while (v108);
            v28 = &v206[40 * v9];
            while (1)
            {
              v110 = *(v100 + 16);
              if (v9 == v110)
              {
                break;
              }

              if (v9 >= v110)
              {
                goto LABEL_203;
              }

              ++v9;
              outlined init with copy of AnyTrackedValue(v28, &v228);
              v111 = v231;
              v112 = v232;
              __swift_project_boxed_opaque_existential_1(&v228, v231);
              v113 = v112;
              v100 = v29;
              *(a1 - 8) = CVarArg.kdebugValue(_:)(Counter | v215.i32[0], v111, v113);
              *a1 = v114 & 1;
              a1 += 16;
              __swift_destroy_boxed_opaque_existential_1(&v228);
              v28 += 40;
              if (!--a4)
              {
                goto LABEL_81;
              }
            }

            v224[0] = 0;
LABEL_81:
            v115 = v205;
            if (v205 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            a4 = v201;
            if (v19[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v19[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v19[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v115 != 20 && v19[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v116 = *v208.i64[0];
            v117 = v211;
            v118 = v214;
            (*v208.i64[0])(v211, v214);
            v119 = __swift_project_value_buffer(v118, static OSSignpostID.continuation);
            v106 = v199(v117, v119, v118);
            v100 = v29;
          }

          while ((v224[0] & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<_AlphaThresholdEffect._Resolved>, lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved, &type metadata for _AlphaThresholdEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          v120 = v214;
          v116(v211, v214);
          v116(v194, v120);
        }

LABEL_97:
        a4 = v202;
        LODWORD(v9) = v191;
LABEL_137:
        specialized AnimatorState.addListeners(transaction:)(v193);

        a1 = v203;
        v29 = &static Color.Resolved.legacyInterpolation;
        v28 = &unk_1ED52E000;
LABEL_138:
        LODWORD(v30) = v197;
        v31.i64[0] = v198.i64[0];
LABEL_139:
        v152.i64[0] = v212.u32[0];
        v152.i64[1] = v30;
        *(a4 + 12) = vorrq_s8(vshll_n_s32(*v31.f32, 0x20uLL), v152);
        *(a4 + 28) = v5;
        *(a4 + 32) = 0;
        goto LABEL_140;
      }

      ++v9;
      outlined init with copy of AnyTrackedValue(v28, &v234);
      v179 = *(&v235 + 1);
      v180 = v236;
      __swift_project_boxed_opaque_existential_1(&v234, *(&v235 + 1));
      *(Counter - 8) = CVarArg.kdebugValue(_:)(v29 | a1, v179, v180);
      *Counter = v181 & 1;
      Counter += 16;
      __swift_destroy_boxed_opaque_existential_1(&v234);
      v28 += 40;
      if (!--a4)
      {
        goto LABEL_183;
      }
    }

    LOBYTE(v217[0]) = 0;
LABEL_183:
    v182 = v206;
    if (v206 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v19[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v19[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v19[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v182 != 20 && v19[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v183 = *v209;
    v185 = v213;
    v184 = v214;
    (*v209)(v213, v214);
    v186 = __swift_project_value_buffer(v184, static OSSignpostID.continuation);
    v174 = v205(v185, v186, v184);
  }

  while ((v217[0] & 1) != 0);

  v187 = v214;
  v183(v213, v214);
  v183(v204, v187);
LABEL_198:

LABEL_199:
  specialized AnimatorState.removeListeners()();

  a1 = v203;
  *(v202 + 40) = 0;
LABEL_200:
  v234 = *v224;
  LODWORD(v235) = *&v224[16];
  _AlphaThresholdEffect._Resolved.animatableData.setter(&v234);

  *(a1 + 20) = 1;
}

{
  LODWORD(v9) = a3;
  v239 = *MEMORY[0x1E69E9840];
  v208 = type metadata accessor for OSSignpostID();
  v204 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v202 = &v182[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v201 = &v182[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v203 = &v182[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v182[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v207 = &v182[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v198 = &v182[-v23];
  if (*(a4 + 40))
  {
    Value = AGGraphGetValue();
    if (v25)
    {
      v26 = *Value;
    }

    else
    {
      v26 = -INFINITY;
    }
  }

  else
  {
    v26 = -INFINITY;
  }

  v27 = &v227;
  v29 = &unk_1ED52E000;
  v30 = &static Color.Resolved.legacyInterpolation;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 24) = 1;
    goto LABEL_9;
  }

  if (*(a1 + 24) == 1)
  {
LABEL_9:
    v7 = *a1;
    LODWORD(v6) = *(a1 + 4);
    LODWORD(v5) = *(a1 + 8);
    LODWORD(v4) = *(a1 + 12);
    LODWORD(v28) = *(a1 + 16);
    v206 = v28;
    LODWORD(v28) = *(a1 + 20);
    v205 = v28;
    if (one-time initialization token for legacyInterpolation != -1)
    {
      goto LABEL_198;
    }

    goto LABEL_10;
  }

LABEL_133:
  v149 = *(a4 + 40);
  if (!v149)
  {
    return;
  }

  v209 = *a1;
  v59 = *(a1 + 16);
  v150 = *(v29 + 3896);

  if (v150 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*v30)
  {
    v151 = v209;
  }

  else
  {
    LOBYTE(v227) = 2;
    ResolvedGradient.ColorSpace.convertIn(_:)(&v232, v209.f32[0], v209.u32[1], v209.f32[2], v209.f32[3]);
    v151 = *(v27 + 56);
  }

  v152.i64[0] = 0x4300000043000000;
  v152.i64[1] = 0x4300000043000000;
  *&v227 = v59;
  *(v27 + 8) = vmulq_f32(v151, v152);
  LOBYTE(v232) = 0;
  v153 = specialized AnimatorState.update(_:at:environment:)(&v227, v9, v26);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v51 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v155 = 0;
  }

  else
  {
    v155 = CurrentAttribute;
  }

  if (v153)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      v180 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v180;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
        LODWORD(v232) = v155;
        BYTE4(v232) = CurrentAttribute == v51;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      v196 = a4;
      v197 = a1;
      v156 = one-time initialization token for animationState;
      v195 = v149;

      if (v156 == -1)
      {
        goto LABEL_150;
      }

      goto LABEL_202;
    }

    __break(1u);
    goto LABEL_200;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
LABEL_200:
    v181 = CurrentAttribute;
    swift_once();
    CurrentAttribute = v181;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
      LODWORD(v232) = v155;
      BYTE4(v232) = CurrentAttribute == v51;
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
  v49 = *(&static Signpost.animationState + 1);
  v55 = static Signpost.animationState;
  v58 = word_1ED5283E8;
  v54 = HIBYTE(word_1ED5283E8);
  v157 = byte_1ED5283EA;
  v158 = static os_signpost_type_t.end.getter();
  v232 = v55;
  v233 = v49;
  LOBYTE(v234) = v58;
  BYTE1(v234) = v54;
  BYTE2(v234) = v157;
  if ((Signpost.isEnabled.getter() & 1) == 0)
  {

    goto LABEL_192;
  }

  v209.i32[0] = v158;
  v159 = one-time initialization token for _signpostLog;
  v57 = v195;

  if (v159 != -1)
  {
    swift_once();
  }

  v53 = _signpostLog;
  OSSignpostID.init(log:object:)();
  type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_18DDAF080;
  if (AGGraphGetCurrentAttribute() == v51)
  {
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    swift_once();
    goto LABEL_29;
  }

  v57 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v160 = MEMORY[0x1E69E6870];
  *(v56 + 56) = MEMORY[0x1E69E6810];
  *(v56 + 64) = v160;
  *(v56 + 32) = Counter;
  v161 = AGGraphGetCurrentAttribute();
  if (v161 == v51)
  {
    goto LABEL_204;
  }

  v162 = v56;
  v163 = MEMORY[0x1E69E76D0];
  *(v56 + 96) = MEMORY[0x1E69E7668];
  *(v56 + 104) = v163;
  *(v56 + 72) = v161;
  *(v56 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v56 + 144) = v164;
  *(v56 + 112) = 0x65766C6F7365525FLL;
  *(v56 + 120) = 0xE900000000000064;
  if (v54)
  {
    v215 = v209.i8[0];
    v213 = v53;
    v214 = &dword_18D018000;
    v232 = v55;
    v233 = v49;
    LOBYTE(v234) = v58;
    v211[0] = "Animation: (%p) [%d] %{public}@ ended";
    v211[1] = 37;
    v212 = 2;
    v210 = v56;
    v165 = v198;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v215, &v214, &v213, &v232, v198, v211, &v210);

    (*(v204 + 8))(v165, v208);
    goto LABEL_191;
  }

  v166 = v55;
  if (v55 == 20)
  {
    v30 = 3;
  }

  else
  {
    v30 = 4;
  }

  v29 = bswap32(v55) | (4 * WORD1(v55));
  a1 = v209.u8[0];
  v167 = v204 + 16;
  v199 = *(v204 + 16);
  v168 = (v199)(v207, v198, v208);
  v9 = 0;
  LOBYTE(v211[0]) = 1;
  *&v206 = v30;
  v204 = v167;
  v202 = (16 * v30);
  v203 = (v167 - 8);
  v209.i64[0] = v162;
  v200 = v166;
  v201 = (v162 + 32);
  do
  {
    *&v205 = v182;
    MEMORY[0x1EEE9AC00](v168);
    v19 = &v182[-((v169 + 15) & 0xFFFFFFFFFFFFFFF0)];
    Counter = (v19 + 8);
    v170 = v206;
    v171 = v19 + 8;
    do
    {
      *(v171 - 1) = 0;
      *v171 = 0;
      v171 += 16;
      --v170;
    }

    while (v170);
    v27 = &v201[5 * v9];
    a4 = v206;
    while (1)
    {
      v172 = *(v209.i64[0] + 16);
      if (v9 == v172)
      {
        break;
      }

      if (v9 >= v172)
      {
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        swift_once();
LABEL_10:
        swift_beginAccess();
        if ((*v30 & 1) == 0)
        {
          LOBYTE(v227) = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v232, v7, v6, *&v5, *&v4);
          LODWORD(v6) = HIDWORD(v232);
          v7 = *&v232;
          LODWORD(v4) = HIDWORD(v233);
          LODWORD(v5) = v233;
        }

        *&v31 = v7 * 128.0;
        *&v32 = *&v6 * 128.0;
        v33 = *&v5 * 128.0;
        *&v5 = *&v4 * 128.0;
        if (*(a4 + 36))
        {
          goto LABEL_132;
        }

        *&v4 = v26;
        LODWORD(v6) = *(a4 + 12);
        v7 = *(a4 + 16);
        v34 = *(a4 + 20);
        v35 = *(a4 + 24);
        v37 = *(a4 + 28);
        v36 = *(a4 + 32);
        if (*&v206 == *&v6 && *&v205 == v7 && *&v31 == v34 && *&v32 == v35 && v33 == v37 && *&v5 == v36)
        {
          v26 = *&v4;
          goto LABEL_132;
        }

        v186 = v19;
        v189 = v31;
        v190 = v32;
        v191 = v33;
        v197 = a1;
        AGGraphClearUpdate();
        v38 = *(a4 + 16);
        *(v27 + 56) = *a4;
        *(v27 + 72) = v38;
        *(v27 + 88) = *(a4 + 32);
        v196 = a4;
        v238 = *(a4 + 48);
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v232, &v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        v39 = *AGGraphGetValue();

        v40 = v39;
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        AGGraphSetUpdate();
        v41 = Transaction.effectiveAnimation.getter(v39);
        if (v41)
        {
          v42 = v41;
          v188 = *&v5;
          goto LABEL_24;
        }

        a1 = v197;
        if (!Counter)
        {

          a4 = v196;
          v27 = &v227;
          v26 = *&v4;
          v30 = &static Color.Resolved.legacyInterpolation;
          goto LABEL_131;
        }

        v188 = *&v5;

        v42 = Counter;
LABEL_24:
        v43 = v237;
        v44 = *&v206 - *&v6;
        v45 = *&v205 - v7;
        v46 = *&v189 - v34;
        v7 = *&v190 - v35;
        v47 = v191 - v37;
        v48 = v188 - v36;
        v26 = *AGGraphGetValue();
        v183 = v9;
        v184 = v42;
        v185 = v39;
        if (!v43)
        {
          *&v222 = &type metadata for _ColorMonochromeEffect._Resolved;
          type metadata accessor for _ColorMonochromeEffect._Resolved.Type();
          type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Type, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
          v65 = swift_dynamicCast();
          if (v65)
          {
            v66 = v227;
          }

          else
          {
            v66 = 0;
          }

          if (v65)
          {
            v67 = *(&v227 + 1);
          }

          else
          {
            v67 = 0;
          }

          v216 = v44;
          v217 = v45;
          v218 = v46;
          v219 = v7;
          v220 = v47;
          v221 = v48;

          v187 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVySfAVySfAVyS2fGGGGG_Tt4B5Tm(v68, &v216, v40, v66, v67, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>, v26);
          v69 = AGGraphGetCurrentAttribute();
          v70 = v69;
          LODWORD(v71) = *MEMORY[0x1E698D3F8];
          if (v69 == *MEMORY[0x1E698D3F8])
          {
            v72 = 0;
          }

          else
          {
            v72 = v69;
          }

          LODWORD(v203) = v72;
          (*(*v42 + 96))(&v222);
          v73 = v222;
          v74 = v223;
          v75 = v224;
          v76 = v225;
          v210 = 0x7FF8000000000000;
          v211[0] = 0x7FF8000000000000;
          v213 = 0x3FF0000000000000;
          v214 = 0x7FF8000000000000;
          v227 = v222;
          v228 = v223;
          v229 = v224;
          v230 = v225;
          v209.i32[0] = v226;
          LOBYTE(v231) = v226;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v227, v211, &v214, &v213, &v210);
          v6 = v210;
          v77 = v211[0];
          v5 = v213;
          v4 = v214;
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
            if (*(static CustomEventTrace.enabledCategories + 98) == 1)
            {
              v200 = v75;
              v78 = static CustomEventTrace.recorder;
              if (static CustomEventTrace.recorder)
              {
                v199 = v76;
                *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
                v79 = *(v78 + 16);
                LODWORD(v227) = v203;
                BYTE4(v227) = v70 == v71;
                *(&v227 + 1) = &type metadata for _ColorMonochromeEffect._Resolved;
                v228 = v77;
                v229 = v4;
                v230 = v5;
                v231 = v6;
                type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

                v80 = v79;
                AGGraphAddTraceEvent();
                outlined consume of Animation.Function(v73, *(&v73 + 1), v74, v200, v199, v209.u8[0]);

                goto LABEL_93;
              }

              v87 = *(&v73 + 1);
              v86 = v73;
              v88 = v74;
              v89 = v200;
            }

            else
            {
              v87 = *(&v73 + 1);
              v86 = v73;
              v88 = v74;
              v89 = v75;
            }

            outlined consume of Animation.Function(v86, v87, v88, v89, v76, v209.u8[0]);
LABEL_93:
            v120 = one-time initialization token for animationState;

            *&v5 = v188;
            if (v120 == -1)
            {
LABEL_94:
              v95 = *(&static Signpost.animationState + 1);
              v90 = static Signpost.animationState;
              LOBYTE(v54) = word_1ED5283E8;
              LODWORD(Counter) = HIBYTE(word_1ED5283E8);
              v121 = byte_1ED5283EA;
              v122 = static os_signpost_type_t.begin.getter();
              v227 = __PAIR128__(v95, v90);
              LOBYTE(v228) = v54;
              BYTE1(v228) = Counter;
              BYTE2(v228) = v121;
              if (Signpost.isEnabled.getter())
              {
                v209.i32[0] = v122;
                v123 = one-time initialization token for _signpostLog;

                if (v123 != -1)
                {
                  goto LABEL_212;
                }

                goto LABEL_96;
              }

              v133 = v187;

LABEL_129:
              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
              a4 = v196;
              *(v196 + 40) = v133;
              LODWORD(v9) = v183;
              goto LABEL_130;
            }
          }

          swift_once();
          goto LABEL_94;
        }

        v216 = v44;
        v217 = v45;
        v218 = v46;
        v219 = v7;
        v220 = v47;
        v221 = v48;
        v49 = &type metadata for _ColorMonochromeEffect._Resolved;
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v232, &v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        LOBYTE(v227) = 0;
        v187 = v43;
        specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v42, &v216, v39, v9, v26);
        v50 = AGGraphGetCurrentAttribute();
        LODWORD(Counter) = v50;
        v51 = *MEMORY[0x1E698D3F8];
        if (v50 == *MEMORY[0x1E698D3F8])
        {
          v52 = 0;
        }

        else
        {
          v52 = v50;
        }

        v209.i32[0] = v52;
        (*(*v42 + 96))(&v222);
        v53 = *(&v222 + 1);
        v54 = v222;
        v56 = v223;
        v55 = v224;
        v57 = v225;
        v58 = v226;
        v210 = 0x7FF8000000000000;
        v211[0] = 0x7FF8000000000000;
        v213 = 0x3FF0000000000000;
        v214 = 0x7FF8000000000000;
        v227 = v222;
        v228 = v223;
        v229 = v224;
        v230 = v225;
        LOBYTE(v231) = v226;
        static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v227, v211, &v214, &v213, &v210);
        v6 = v210;
        v59 = v211[0];
        v5 = v213;
        v4 = v214;
        if (one-time initialization token for enabledCategories != -1)
        {
          goto LABEL_205;
        }

LABEL_29:
        if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
        {
          __break(1u);
LABEL_207:
          swift_once();
          goto LABEL_54;
        }

        if (*(static CustomEventTrace.enabledCategories + 98) == 1)
        {
          v202 = v57;
          v60 = static CustomEventTrace.recorder;
          if (static CustomEventTrace.recorder)
          {
            LODWORD(v201) = v58;
            *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
            v61 = v49;
            v62 = *(v60 + 16);
            LODWORD(v227) = v209.i32[0];
            BYTE4(v227) = Counter == v51;
            *(&v227 + 1) = v61;
            v228 = v59;
            v229 = v4;
            v230 = v5;
            v231 = v6;
            type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
            v209.i64[0] = v63;

            v64 = v62;
            AGGraphAddTraceEvent();
            outlined consume of Animation.Function(v54, v53, v56, v55, v202, v201);

            goto LABEL_53;
          }

          v81 = v54;
          v82 = v53;
          v83 = v56;
          v84 = v55;
          v85 = v202;
        }

        else
        {
          v81 = v54;
          v82 = v53;
          v83 = v56;
          v84 = v55;
          v85 = v57;
        }

        outlined consume of Animation.Function(v81, v82, v83, v84, v85, v58);
LABEL_53:
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v232, &v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        *&v5 = v188;
        if (one-time initialization token for animationState != -1)
        {
          goto LABEL_207;
        }

LABEL_54:
        v90 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        v91 = word_1ED5283E8;
        LODWORD(Counter) = HIBYTE(word_1ED5283E8);
        v92 = byte_1ED5283EA;
        v93 = static os_signpost_type_t.event.getter();
        v227 = __PAIR128__(v90, v71);
        LOBYTE(v228) = v91;
        BYTE1(v228) = Counter;
        BYTE2(v228) = v92;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          goto LABEL_90;
        }

        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v232, &v227, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
        if (one-time initialization token for _signpostLog != -1)
        {
          swift_once();
        }

        v209.i32[0] = v93;
        v94 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v51)
        {
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          swift_once();
LABEL_96:
          v124 = _signpostLog;
          OSSignpostID.init(log:object:)();
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          v125 = swift_allocObject();
          *(v125 + 16) = xmmword_18DDAF080;
          if (AGGraphGetCurrentAttribute() == v71)
          {
            __break(1u);
          }

          else
          {
            v126 = AGGraphGetAttributeGraph();
            v127 = AGGraphGetCounter();

            v128 = MEMORY[0x1E69E6870];
            *(v125 + 56) = MEMORY[0x1E69E6810];
            *(v125 + 64) = v128;
            *(v125 + 32) = v127;
            v129 = AGGraphGetCurrentAttribute();
            if (v129 != v71)
            {
              v130 = MEMORY[0x1E69E76D0];
              *(v125 + 96) = MEMORY[0x1E69E7668];
              *(v125 + 104) = v130;
              *(v125 + 72) = v129;
              *(v125 + 136) = MEMORY[0x1E69E6158];
              lazy protocol witness table accessor for type String and conformance String();
              *(v125 + 144) = v131;
              *(v125 + 112) = 0x65766C6F7365525FLL;
              *(v125 + 120) = 0xE900000000000064;
              if (Counter)
              {
                LOBYTE(v210) = v209.i8[0];
                v211[0] = &dword_18D018000;
                v213 = v125;
                v214 = v124;
                *&v227 = v90;
                *(&v227 + 1) = v95;
                LOBYTE(v228) = v54;
                *&v222 = "Animation: (%p) [%d] %{public}@ started";
                *(&v222 + 1) = 39;
                LOBYTE(v223) = 2;
                v132 = v201;
                specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v210, v211, &v214, &v227, v201, &v222, &v213);
                v133 = v187;

                (*(v204 + 8))(v132, v208);
              }

              else
              {
                v134 = v90;
                if (v90 == 20)
                {
                  v135 = 3;
                }

                else
                {
                  v135 = 4;
                }

                v19 = (bswap32(v90) | (4 * WORD1(v90)));
                v29 = v209.u8[0];
                v30 = v204 + 16;
                v186 = *(v204 + 16);
                v136 = (v186)(v202, v201, v208);
                v9 = 0;
                LOBYTE(v222) = 1;
                v203 = v135;
                v192 = v30;
                v193 = v134;
                v199 = (v30 - 8);
                v209.i64[0] = v125;
                v194 = v125 + 32;
                v195 = 16 * v135;
                do
                {
                  v200 = v182;
                  MEMORY[0x1EEE9AC00](v136);
                  Counter = &v182[-((v137 + 15) & 0xFFFFFFFFFFFFFFF0)];
                  a4 = Counter + 8;
                  v138 = v203;
                  v139 = (Counter + 8);
                  do
                  {
                    *(v139 - 1) = 0;
                    *v139 = 0;
                    v139 += 16;
                    --v138;
                  }

                  while (v138);
                  v27 = (v194 + 40 * v9);
                  a1 = v203;
                  while (1)
                  {
                    v140 = *(v209.i64[0] + 16);
                    if (v9 == v140)
                    {
                      break;
                    }

                    if (v9 >= v140)
                    {
                      goto LABEL_197;
                    }

                    ++v9;
                    outlined init with copy of AnyTrackedValue(v27, &v227);
                    v141 = v229;
                    v30 = v230;
                    __swift_project_boxed_opaque_existential_1(&v227, v229);
                    *(a4 - 8) = CVarArg.kdebugValue(_:)(v19 | v29, v141, v30);
                    *a4 = v142 & 1;
                    a4 += 16;
                    __swift_destroy_boxed_opaque_existential_1(&v227);
                    v27 = (v27 + 40);
                    if (!--a1)
                    {
                      goto LABEL_113;
                    }
                  }

                  LOBYTE(v222) = 0;
LABEL_113:
                  v143 = v193;
                  if (v193 == 20)
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

                  if (v143 != 20 && *(Counter + 56) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v144 = *v199;
                  v145 = v202;
                  v30 = v208;
                  (*v199)(v202, v208);
                  v146 = __swift_project_value_buffer(v30, static OSSignpostID.continuation);
                  v136 = (v186)(v145, v146, v30);
                }

                while ((v222 & 1) != 0);
                v133 = v187;

                v147 = v208;
                v144(v202, v208);
                v144(v201, v147);
              }

              goto LABEL_129;
            }
          }

          __break(1u);
        }

        LODWORD(v54) = v51;
        v96 = AGGraphGetAttributeGraph();
        v97 = AGGraphGetCounter();

        v98 = MEMORY[0x1E69E6870];
        *(v95 + 56) = MEMORY[0x1E69E6810];
        *(v95 + 64) = v98;
        *(v95 + 32) = v97;
        v99 = AGGraphGetCurrentAttribute();
        if (v99 == v54)
        {
          goto LABEL_211;
        }

        v30 = v95;
        v100 = MEMORY[0x1E69E76D0];
        *(v95 + 96) = MEMORY[0x1E69E7668];
        *(v95 + 104) = v100;
        *(v95 + 72) = v99;
        *(v95 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v95 + 144) = v101;
        *(v95 + 112) = 0x65766C6F7365525FLL;
        *(v95 + 120) = 0xE900000000000064;
        if (Counter)
        {
          LOBYTE(v210) = v209.i8[0];
          v211[0] = &dword_18D018000;
          v213 = v95;
          v214 = v94;
          *&v227 = v71;
          *(&v227 + 1) = v90;
          LOBYTE(v228) = v91;
          *&v222 = "Animation: (%p) [%d] %{public}@ updated";
          *(&v222 + 1) = 39;
          LOBYTE(v223) = 2;
          v102 = v186;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v210, v211, &v214, &v227, v186, &v222, &v213);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          (*(v204 + 8))(v102, v208);
        }

        else
        {
          v103 = v71;
          if (v71 == 20)
          {
            a4 = 3;
          }

          else
          {
            a4 = 4;
          }

          Counter = bswap32(v71) | (4 * WORD1(v71));
          v209.i32[0] = v209.u8[0];
          v104 = v204 + 16;
          v192 = *(v204 + 16);
          v105 = v192(v203, v186, v208);
          v9 = 0;
          LOBYTE(v222) = 1;
          v193 = v104;
          v194 = a4;
          v200 = (16 * a4);
          v201 = (v104 - 8);
          v199 = (v30 + 32);
          v29 = v30;
          v195 = v103;
          do
          {
            v202 = v182;
            MEMORY[0x1EEE9AC00](v105);
            v19 = &v182[-((v106 + 15) & 0xFFFFFFFFFFFFFFF0)];
            a1 = (v19 + 8);
            v107 = a4;
            v108 = v19 + 8;
            do
            {
              *(v108 - 1) = 0;
              *v108 = 0;
              v108 += 16;
              --v107;
            }

            while (v107);
            v27 = &v199[40 * v9];
            while (1)
            {
              v109 = *(v30 + 16);
              if (v9 == v109)
              {
                break;
              }

              if (v9 >= v109)
              {
                goto LABEL_196;
              }

              ++v9;
              outlined init with copy of AnyTrackedValue(v27, &v227);
              v110 = v229;
              v111 = v230;
              __swift_project_boxed_opaque_existential_1(&v227, v229);
              v112 = v111;
              v30 = v29;
              *(a1 - 8) = CVarArg.kdebugValue(_:)(Counter | v209.i32[0], v110, v112);
              *a1 = v113 & 1;
              a1 += 16;
              __swift_destroy_boxed_opaque_existential_1(&v227);
              v27 = (v27 + 40);
              if (!--a4)
              {
                goto LABEL_74;
              }
            }

            LOBYTE(v222) = 0;
LABEL_74:
            v114 = v195;
            if (v195 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            a4 = v194;
            if (v19[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v19[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v19[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v114 != 20 && v19[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v115 = *v201;
            v116 = v203;
            v117 = v208;
            (*v201)(v203, v208);
            v118 = __swift_project_value_buffer(v117, static OSSignpostID.continuation);
            v105 = v192(v116, v118, v117);
            v30 = v29;
          }

          while ((v222 & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ColorMonochromeEffect._Resolved>, lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, type metadata accessor for AnimatableAttributeHelper);
          v119 = v208;
          v115(v203, v208);
          v115(v186, v119);
        }

LABEL_90:
        a4 = v196;
        LODWORD(v9) = v183;
LABEL_130:
        specialized AnimatorState.addListeners(transaction:)(v185);

        a1 = v197;
        v27 = &v227;
        v30 = &static Color.Resolved.legacyInterpolation;
        v29 = &unk_1ED52E000;
LABEL_131:
        v33 = v191;
        LODWORD(v31) = v189;
        LODWORD(v32) = v190;
LABEL_132:
        v148.i64[0] = v206;
        v148.i64[1] = v31;
        *(a4 + 12) = vorrq_s8(vshll_n_s32(__PAIR64__(v32, v205), 0x20uLL), v148);
        *(a4 + 28) = LODWORD(v33) | (v5 << 32);
        *(a4 + 36) = 0;
        goto LABEL_133;
      }

      ++v9;
      outlined init with copy of AnyTrackedValue(v27, &v232);
      v173 = v235;
      v30 = v236;
      __swift_project_boxed_opaque_existential_1(&v232, v235);
      *(Counter - 8) = CVarArg.kdebugValue(_:)(v29 | a1, v173, v30);
      *Counter = v174 & 1;
      Counter += 16;
      __swift_destroy_boxed_opaque_existential_1(&v232);
      v27 = (v27 + 40);
      if (!--a4)
      {
        goto LABEL_176;
      }
    }

    LOBYTE(v211[0]) = 0;
LABEL_176:
    v175 = v200;
    if (v200 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v19[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v19[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v19[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v175 != 20 && v19[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v176 = *v203;
    v177 = v207;
    v30 = v208;
    (*v203)(v207, v208);
    v178 = __swift_project_value_buffer(v30, static OSSignpostID.continuation);
    v168 = (v199)(v177, v178, v30);
  }

  while ((v211[0] & 1) != 0);

  v179 = v208;
  v176(v207, v208);
  v176(v198, v179);
LABEL_191:

LABEL_192:
  specialized AnimatorState.removeListeners()();

  a1 = v197;
  *(v196 + 40) = 0;
  v27 = &v227;
LABEL_193:
  *(v27 + 56) = v227;
  v234 = v228;
  _ColorMonochromeEffect._Resolved.animatableData.setter(&v232);

  *(a1 + 24) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, void (*a2)(char *, uint64_t), unsigned int a3, char *a4)
{
  v258 = *MEMORY[0x1E69E9840];
  v223 = type metadata accessor for OSSignpostID();
  v219 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v220 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v204 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v221 = &v204 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v204 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v222 = &v204 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v213 = &v204 - v23;
  if (*(a4 + 6))
  {
    Value = AGGraphGetValue();
    if (v25)
    {
      v26 = *Value;
    }

    else
    {
      v26 = -INFINITY;
    }
  }

  else
  {
    v26 = -INFINITY;
  }

  v27 = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  v28 = MEMORY[0x1E69E7DE0];
  if (v27)
  {
    a1[56] = 1;
  }

  else if (a1[56] != 1)
  {
    goto LABEL_123;
  }

  v224 = a2;
  v218 = v14;
  v29 = *(a1 + 2);
  v30 = *(a1 + 3);
  v31 = *(a1 + 6);
  v241 = v30;
  v242 = *&v29;
  v240 = v31;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v33 = v32;
  v34 = *(v28 - 8);
  v35 = v34[1];
  v35(&v240, v28);
  v35(&v241, v28);
  v35(&v242, v28);
  if (a4[40])
  {
    goto LABEL_122;
  }

  v5 = *(a4 + 3);
  v4 = *(a4 + 4);
  v6 = *(a4 + 2);
  if (_s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_A2HQP_Tt1g5(*&v29, v30, *&v31, v6, *&v5, *&v4))
  {
    goto LABEL_122;
  }

  v216 = v33;
  v204 = v19;
  v206 = a3;
  v212 = a1;
  AGGraphClearUpdate();
  v36 = *(a4 + 1);
  v255 = *a4;
  v256 = v36;
  *v257 = *(a4 + 2);
  v211 = a4;
  *&v257[12] = *(a4 + 44);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v255, &v249, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
  v37 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v255, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v207 = v37;
  v38 = Transaction.effectiveAnimation.getter(v37);
  v208 = v38;
  if (!v38)
  {
    if (!v224)
    {

      a4 = v211;
      a1 = v212;
      goto LABEL_121;
    }

    v208 = v38;
  }

  v215 = &v204;
  v235 = v30;
  v236 = v29;
  v233 = v6;
  v234 = v31;
  v231 = v4;
  v232 = v5;
  v39 = v34[8];
  v40 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v204 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v34[2];
  v43 = MEMORY[0x1E69E7DE0];
  v44 = v42(v41, &v236, MEMORY[0x1E69E7DE0], v40);
  v214 = &v204;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v42(v41, &v233, v43, v45);
  v224 = v216[1];
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v35(v41, v43);
  v46 = (v35)(v41, v43);
  v216 = &v204;
  v47 = MEMORY[0x1EEE9AC00](v46);
  v48 = v217;
  v49 = (&v204 - v217);
  v50 = v42((&v204 - v217), &v235, v43, v47);
  v215 = &v204;
  v51 = MEMORY[0x1EEE9AC00](v50);
  v42((&v204 - v48), &v232, v43, v51);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v35((&v204 - v48), v43);
  v52 = (v35)(v49, v43);
  v216 = &v204;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v54 = v217;
  v55 = (&v204 - v217);
  v56 = v42((&v204 - v217), &v234, v43, v53);
  v215 = &v204;
  v57 = MEMORY[0x1EEE9AC00](v56);
  v42((&v204 - v54), &v231, v43, v57);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v35((&v204 - v54), v43);
  v35(v55, v43);
  v58 = v238;
  v59 = v239;
  v60 = v237;
  v35(&v237, v43);
  v35(&v238, v43);
  v35(&v239, v43);
  v61 = *&v257[16];
  v26 = *AGGraphGetValue();
  if (!v61)
  {
    v230 = &type metadata for CornerMaskingConfiguration.CornerStyle;
    type metadata accessor for CornerMaskingConfiguration.CornerStyle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Type, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>);
    v76 = swift_dynamicCast();
    if (v76)
    {
      v77 = v229[0];
    }

    else
    {
      v77 = 0;
    }

    if (v76)
    {
      v78 = v229[1];
    }

    else
    {
      v78 = 0;
    }

    v84 = v207;

    v79 = v208;

    v81 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2YQPG_Tt4B5(v80, v84, v77, v78, v59, v58, v60, v26);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v83 = CurrentAttribute;
    LODWORD(v84) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v85 = 0;
    }

    else
    {
      v85 = CurrentAttribute;
    }

    LODWORD(v224) = v85;
    (*(*v79 + 96))(&v243);
    v87 = v243;
    v86 = v244;
    v89 = v245;
    v88 = v246;
    v90 = v247;
    v91 = v248;
    v227 = 0x7FF8000000000000;
    v228 = NAN;
    v225 = 0x7FF8000000000000;
    *&v226 = 1.0;
    v249 = v243;
    v250 = v244;
    v251 = v245;
    v252 = v246;
    v253 = v247;
    LOBYTE(v254) = v248;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v249, &v228, &v227, &v226, &v225);
    v5 = v227;
    v4 = *&v228;
    v92 = v225;
    v6 = *&v226;
    if (one-time initialization token for enabledCategories != -1)
    {
      v221 = v225;
      swift_once();
      v92 = v221;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_195;
    }

    v93 = *(static CustomEventTrace.enabledCategories + 98);
    v205 = v81;
    if (v93 == 1)
    {
      v221 = v90;
      v94 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        LODWORD(v217) = v91;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v95 = *(v94 + 16);
        LODWORD(v249) = v224;
        BYTE4(v249) = v83 == v84;
        *&v250 = COERCE_DOUBLE(&type metadata for CornerMaskingConfiguration.CornerStyle);
        v251 = v4;
        v252 = v5;
        v253 = *&v6;
        v254 = v92;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v96 = v95;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v87, v86, v89, v88, v221, v217);

        goto LABEL_83;
      }

      v102 = v87;
      v103 = v86;
      v104 = v89;
      v105 = v88;
      v106 = v221;
    }

    else
    {
      v102 = v87;
      v103 = v86;
      v104 = v89;
      v105 = v88;
      v106 = v90;
    }

    outlined consume of Animation.Function(v102, v103, v104, v105, v106, v91);
LABEL_83:
    v140 = one-time initialization token for animationState;

    if (v140 == -1)
    {
LABEL_84:
      v113 = *(&static Signpost.animationState + 1);
      v107 = *&static Signpost.animationState;
      LOBYTE(v67) = word_1ED5283E8;
      v109 = HIBYTE(word_1ED5283E8);
      v141 = byte_1ED5283EA;
      v142 = static os_signpost_type_t.begin.getter();
      v249 = v107;
      v250 = v113;
      LOBYTE(v251) = v67;
      BYTE1(v251) = v109;
      BYTE2(v251) = v141;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v153 = v205;

        goto LABEL_119;
      }

      LODWORD(v224) = v142;
      v143 = one-time initialization token for _signpostLog;

      if (v143 != -1)
      {
        goto LABEL_198;
      }

      goto LABEL_86;
    }

LABEL_195:
    swift_once();
    goto LABEL_84;
  }

  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v255, &v249, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v249) = 0;
  v62 = v208;
  v205 = v61;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v208, v207, v206, v59, v58, v60, v26);
  v63 = AGGraphGetCurrentAttribute();
  LODWORD(v28) = v63;
  LODWORD(v64) = *MEMORY[0x1E698D3F8];
  if (v63 == *MEMORY[0x1E698D3F8])
  {
    LODWORD(v65) = 0;
  }

  else
  {
    LODWORD(v65) = v63;
  }

  (*(*v62 + 96))(&v243);
  v67 = v243;
  v66 = v244;
  v68 = v245;
  v69 = v247;
  LODWORD(v62) = v248;
  v230 = 0x7FF8000000000000;
  v228 = 1.0;
  v229[0] = 0x7FF8000000000000;
  v227 = 0x7FF8000000000000;
  v249 = v243;
  v250 = v244;
  v251 = v245;
  v252 = v246;
  v70 = v246;
  v253 = v247;
  LOBYTE(v254) = v248;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v249, v229, &v230, &v228, &v227);
  v6 = v228;
  v4 = v229[0];
  v5 = v230;
  v71 = v227;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_191;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v224 = v69;
        v72 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v73 = v28 == v64;
          LODWORD(v220) = v62;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v74 = *(v72 + 16);
          LODWORD(v249) = v65;
          BYTE4(v249) = v73;
          *&v250 = COERCE_DOUBLE(&type metadata for CornerMaskingConfiguration.CornerStyle);
          v251 = v4;
          v252 = v5;
          v253 = *&v6;
          v254 = v71;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v75 = v74;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v67, v66, v68, v70, v224, v220);

          goto LABEL_43;
        }

        v97 = v67;
        v98 = v66;
        v99 = v68;
        v100 = v70;
        v101 = v224;
      }

      else
      {
        v97 = v67;
        v98 = v66;
        v99 = v68;
        v100 = v70;
        v101 = v69;
      }

      outlined consume of Animation.Function(v97, v98, v99, v100, v101, v62);
LABEL_43:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v255, &v249, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_193;
    }

    __break(1u);
LABEL_193:
    swift_once();
LABEL_44:
    v107 = *(&static Signpost.animationState + 1);
    v84 = static Signpost.animationState;
    v108 = word_1ED5283E8;
    v109 = HIBYTE(word_1ED5283E8);
    v110 = byte_1ED5283EA;
    v111 = static os_signpost_type_t.event.getter();
    v249 = v84;
    v250 = v107;
    LOBYTE(v251) = v108;
    BYTE1(v251) = v109;
    BYTE2(v251) = v110;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v255, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v255, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
LABEL_80:
      a4 = v211;
      goto LABEL_120;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v255, &v249, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    LODWORD(v224) = v111;
    v112 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v113 = COERCE_DOUBLE(swift_allocObject());
    *(v113 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v64)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v67) = v64;
      v114 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v116 = MEMORY[0x1E69E6870];
      *(v113 + 56) = MEMORY[0x1E69E6810];
      *(v113 + 64) = v116;
      *(v113 + 32) = Counter;
      v117 = AGGraphGetCurrentAttribute();
      if (v117 != v67)
      {
        v118 = MEMORY[0x1E69E76D0];
        *(v113 + 96) = MEMORY[0x1E69E7668];
        *(v113 + 104) = v118;
        *(v113 + 72) = v117;
        *(v113 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v113 + 144) = v119;
        *(v113 + 112) = 0x745372656E726F43;
        *(v113 + 120) = 0xEB00000000656C79;
        if (v109)
        {
          LOBYTE(v227) = v224;
          v228 = *&v113;
          v229[0] = &dword_18D018000;
          v230 = v112;
          v249 = v84;
          v250 = v107;
          LOBYTE(v251) = v108;
          v243 = "Animation: (%p) [%d] %{public}@ updated";
          v244 = 39;
          LOBYTE(v245) = 2;
          v120 = v204;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v227, v229, &v230, &v249, v204, &v243, &v228);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v255, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v255, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
          (*(v219 + 8))(v120, v223);
        }

        else
        {
          v121 = v84;
          if (v84 == 20)
          {
            v122 = 3;
          }

          else
          {
            v122 = 4;
          }

          v123 = bswap32(v84) | (4 * (v84 >> 16));
          v124 = v224;
          v125 = v219 + 16;
          v209 = *(v219 + 16);
          v126 = v209(v221, v204, v223);
          v65 = 0;
          LOBYTE(v243) = 1;
          v220 = v122;
          v210 = v125;
          v216 = (16 * v122);
          v217 = (v125 - 8);
          v224 = v113;
          v214 = v121;
          v215 = (v113 + 32);
          do
          {
            v218 = &v204;
            MEMORY[0x1EEE9AC00](v126);
            v129 = &v204 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
            a1 = v129 + 8;
            v130 = v220;
            v131 = v129 + 8;
            do
            {
              *(v131 - 1) = 0;
              *v131 = 0;
              v131 += 16;
              --v130;
            }

            while (v130);
            v28 = &v215[5 * v65];
            a4 = v220;
            while (1)
            {
              v132 = *(v224 + 2);
              if (v65 == v132)
              {
                break;
              }

              if (v65 >= v132)
              {
                goto LABEL_182;
              }

              ++v65;
              outlined init with copy of AnyTrackedValue(v28, &v249);
              v133 = v252;
              v125 = v253;
              __swift_project_boxed_opaque_existential_1(&v249, v252);
              *(a1 - 1) = CVarArg.kdebugValue(_:)(v123 | v124, v133, v125);
              *a1 = v134 & 1;
              a1 += 16;
              v127 = __swift_destroy_boxed_opaque_existential_1(&v249);
              v28 += 40;
              if (!--a4)
              {
                goto LABEL_64;
              }
            }

            LOBYTE(v243) = 0;
LABEL_64:
            v135 = v214;
            if (v214 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v129[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v129[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v129[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v135 != 20 && v129[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v136 = *v217;
            v125 = v221;
            v137 = v223;
            (*v217)(v221, v223);
            v138 = __swift_project_value_buffer(v137, static OSSignpostID.continuation);
            v126 = v209(v125, v138, v137);
          }

          while ((v243 & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v255, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v255, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
          v139 = v223;
          v136(v221, v223);
          v136(v204, v139);
        }

        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_198:
    swift_once();
LABEL_86:
    v144 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v84)
    {
      __break(1u);
LABEL_200:
      __break(1u);
    }

    v146 = AGGraphGetAttributeGraph();
    v147 = AGGraphGetCounter();

    v148 = MEMORY[0x1E69E6870];
    *(v145 + 56) = MEMORY[0x1E69E6810];
    *(v145 + 64) = v148;
    *(v145 + 32) = v147;
    v149 = AGGraphGetCurrentAttribute();
    if (v149 == v84)
    {
      goto LABEL_200;
    }

    v150 = MEMORY[0x1E69E76D0];
    *(v145 + 96) = MEMORY[0x1E69E7668];
    *(v145 + 104) = v150;
    *(v145 + 72) = v149;
    *(v145 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v145 + 144) = v151;
    *(v145 + 112) = 0x745372656E726F43;
    *(v145 + 120) = 0xEB00000000656C79;
    if (v109)
    {
      LOBYTE(v225) = v224;
      v227 = v144;
      v228 = COERCE_DOUBLE(&dword_18D018000);
      v249 = v107;
      v250 = v113;
      LOBYTE(v251) = v67;
      v243 = "Animation: (%p) [%d] %{public}@ started";
      v244 = 39;
      LOBYTE(v245) = 2;
      v226 = v145;
      v152 = v218;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v225, &v228, &v227, &v249, v218, &v243, &v226);
      v153 = v205;

      (*(v219 + 8))(v152, v223);
    }

    else
    {
      v154 = v107;
      v155 = v107 == 20 ? 3 : 4;
      v129 = (bswap32(v107) | (4 * WORD1(v107)));
      v124 = v224;
      v125 = v219 + 16;
      v204 = *(v219 + 16);
      v156 = v204(v220, v218, v223);
      v65 = 0;
      LOBYTE(v243) = 1;
      v221 = v155;
      v209 = v125;
      v210 = v154;
      v215 = (16 * v155);
      v216 = (v125 - 8);
      v224 = v145;
      v214 = (v145 + 32);
      do
      {
        v217 = &v204;
        MEMORY[0x1EEE9AC00](v156);
        v158 = &v204 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = v158 + 8;
        v159 = v221;
        v160 = v158 + 8;
        do
        {
          *(v160 - 1) = 0;
          *v160 = 0;
          v160 += 16;
          --v159;
        }

        while (v159);
        v28 = v214 + 40 * v65;
        a1 = v221;
        while (1)
        {
          v161 = *(v224 + 2);
          if (v65 == v161)
          {
            break;
          }

          if (v65 >= v161)
          {
            goto LABEL_183;
          }

          ++v65;
          outlined init with copy of AnyTrackedValue(v28, &v249);
          v162 = v252;
          v125 = v253;
          __swift_project_boxed_opaque_existential_1(&v249, v252);
          *(a4 - 1) = CVarArg.kdebugValue(_:)(v129 | v124, v162, v125);
          *a4 = v163 & 1;
          a4 += 16;
          v127 = __swift_destroy_boxed_opaque_existential_1(&v249);
          v28 += 40;
          if (!--a1)
          {
            goto LABEL_103;
          }
        }

        LOBYTE(v243) = 0;
LABEL_103:
        v164 = v210;
        if (v210 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v158[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v158[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v158[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v164 != 20 && v158[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v165 = *v216;
        v166 = v220;
        v125 = v223;
        (*v216)(v220, v223);
        v167 = __swift_project_value_buffer(v125, static OSSignpostID.continuation);
        v156 = v204(v166, v167, v125);
      }

      while ((v243 & 1) != 0);
      v153 = v205;

      v168 = v223;
      v165(v220, v223);
      v165(v218, v168);
    }

LABEL_119:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v255, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
    a4 = v211;
    *(v211 + 48) = v153;
LABEL_120:
    specialized AnimatorState.addListeners(transaction:)(v207);

    a1 = v212;
LABEL_121:
    a3 = v206;
    v28 = MEMORY[0x1E69E7DE0];
LABEL_122:
    *(a4 + 2) = v29;
    *(a4 + 3) = v30;
    *(a4 + 4) = v31;
    a4[40] = 0;
LABEL_123:
    v129 = *(a4 + 6);
    if (!v129)
    {
      return;
    }

    v30 = *(a1 + 3);
    v31 = *(a1 + 6);
    v229[0] = *(a1 + 2);
    v29 = v229[0];
    v241 = *&v31;
    v242 = v30;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v169 = *(*(v28 - 8) + 8);

    v169(&v241, v28);
    v169(&v242, v28);
    v169(v229, v28);
    v249 = v29;
    *&v250 = v30;
    v251 = v31;
    LOBYTE(v255) = 0;
    v170 = specialized AnimatorState.update(_:at:environment:)(&v249, a3, v26);
    v127 = AGGraphGetCurrentAttribute();
    LODWORD(v65) = *MEMORY[0x1E698D3F8];
    if (v127 == *MEMORY[0x1E698D3F8])
    {
      v124 = 0;
    }

    else
    {
      v124 = v127;
    }

    v125 = &type metadata instantiation cache for TupleTypeDescription;
    if (v170)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_184;
      }

      goto LABEL_129;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_186;
    }

LABEL_142:
    v182 = *(v125 + 616);
    if (*(v182 + 16) >= 0x43uLL)
    {
      if (*(v182 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v255) = v124;
        BYTE4(v255) = v127 == v65;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_177;
    }

    __break(1u);
LABEL_188:
    swift_once();
LABEL_134:
    v64 = *(&static Signpost.animationState + 1);
    v70 = static Signpost.animationState;
    v69 = word_1ED5283E8;
    v67 = HIBYTE(word_1ED5283E8);
    v173 = byte_1ED5283EA;
    v174 = static os_signpost_type_t.end.getter();
    v255 = __PAIR128__(v64, v70);
    LOBYTE(v256) = v69;
    BYTE1(v256) = v67;
    BYTE2(v256) = v173;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_176;
    }

    LODWORD(v224) = v174;
    v175 = one-time initialization token for _signpostLog;
    LODWORD(v62) = v210;

    if (v175 != -1)
    {
      swift_once();
    }

    v66 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v65)
    {
      break;
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    v224 = v71;
    swift_once();
    v71 = v224;
  }

  v62 = AGGraphGetAttributeGraph();
  v28 = AGGraphGetCounter();

  v176 = MEMORY[0x1E69E6870];
  *(v68 + 56) = MEMORY[0x1E69E6810];
  *(v68 + 64) = v176;
  *(v68 + 32) = v28;
  v177 = AGGraphGetCurrentAttribute();
  if (v177 == v65)
  {
    goto LABEL_190;
  }

  v178 = v68;
  v179 = MEMORY[0x1E69E76D0];
  *(v68 + 96) = MEMORY[0x1E69E7668];
  *(v68 + 104) = v179;
  *(v68 + 72) = v177;
  *(v68 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v68 + 144) = v180;
  *(v68 + 112) = 0x745372656E726F43;
  *(v68 + 120) = 0xEB00000000656C79;
  if (v67)
  {
    LOBYTE(v237) = v224;
    v239 = *&v66;
    v240 = &dword_18D018000;
    *&v255 = v70;
    *(&v255 + 1) = v64;
    LOBYTE(v256) = v69;
    v243 = "Animation: (%p) [%d] %{public}@ ended";
    v244 = 37;
    LOBYTE(v245) = 2;
    v238 = *&v68;
    v181 = v213;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v237, &v240, &v239, &v255, v213, &v243, &v238);

    (*(v219 + 8))(v181, v223);
    goto LABEL_175;
  }

  v183 = v70;
  if (v70 == 20)
  {
    v125 = 3;
  }

  else
  {
    v125 = 4;
  }

  v124 = bswap32(v70) | (4 * WORD1(v70));
  a1 = v224;
  v184 = v219 + 16;
  v214 = *(v219 + 16);
  v185 = v214(v222, v213, v223);
  v65 = 0;
  LOBYTE(v243) = 1;
  v221 = v125;
  v219 = v184;
  v217 = (16 * v125);
  v218 = (v184 - 8);
  v224 = v178;
  v215 = v183;
  v216 = (v178 + 32);
  do
  {
    v220 = &v204;
    MEMORY[0x1EEE9AC00](v185);
    v129 = &v204 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
    v187 = v129 + 8;
    v188 = v221;
    v189 = v129 + 8;
    do
    {
      *(v189 - 1) = 0;
      *v189 = 0;
      v189 += 16;
      --v188;
    }

    while (v188);
    v28 = &v216[5 * v65];
    a4 = v221;
    while (1)
    {
      v190 = *(v224 + 2);
      if (v65 == v190)
      {
        break;
      }

      if (v65 >= v190)
      {
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        v202 = v127;
        swift_once();
        v127 = v202;
LABEL_129:
        v171 = *(v125 + 616);
        if (*(v171 + 16) >= 0x43uLL)
        {
          if (*(v171 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v255) = v124;
            BYTE4(v255) = v127 == v65;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v211 = a4;
          v212 = a1;
          v172 = one-time initialization token for animationState;
          v210 = v129;

          if (v172 != -1)
          {
            goto LABEL_188;
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_186:
        v203 = v127;
        swift_once();
        v127 = v203;
        goto LABEL_142;
      }

      ++v65;
      outlined init with copy of AnyTrackedValue(v28, &v255);
      v191 = *(&v256 + 1);
      v125 = *v257;
      __swift_project_boxed_opaque_existential_1(&v255, *(&v256 + 1));
      *(v187 - 1) = CVarArg.kdebugValue(_:)(v124 | a1, v191, v125);
      *v187 = v192 & 1;
      v187 += 16;
      v127 = __swift_destroy_boxed_opaque_existential_1(&v255);
      v28 += 40;
      if (!--a4)
      {
        goto LABEL_160;
      }
    }

    LOBYTE(v243) = 0;
LABEL_160:
    v193 = v215;
    if (v215 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v129[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v129[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v129[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v193 != 20 && v129[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v194 = *v218;
    v195 = v222;
    v125 = v223;
    (*v218)(v222, v223);
    v196 = __swift_project_value_buffer(v125, static OSSignpostID.continuation);
    v185 = v214(v195, v196, v125);
  }

  while ((v243 & 1) != 0);

  v197 = v223;
  v194(v222, v223);
  v194(v213, v197);
LABEL_175:

LABEL_176:
  specialized AnimatorState.removeListeners()();

  a1 = v212;
  *(v211 + 48) = 0;
LABEL_177:
  v198 = v249;
  v199 = *&v250;
  v200 = v251;
  *(a1 + 2) = v249;
  *(a1 + 3) = v199;
  *(a1 + 6) = v200;
  v201 = v198;
  if (v199 == 1.0)
  {
    v201 = 0;
  }

  *a1 = v201;
  a1[8] = v199 == 1.0;
  *(a1 + 4) = v200;
  a1[40] = 0;
  a1[56] = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t Counter)
{
  v358 = *MEMORY[0x1E69E9840];
  v286 = type metadata accessor for OSSignpostID();
  v283 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v282 = (&v263 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v263 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v284 = (&v263 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v263 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v285 = &v263 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v263 - v20;
  if (*(Counter + 120))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  v25 = &v294;
  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 224) = 1;
  }

  else if (*(a1 + 224) != 1)
  {
    goto LABEL_122;
  }

  CornerMaskingConfiguration.animatableData.getter(&v324);
  v320 = v326;
  v321 = v327;
  v322 = v328;
  v323 = v329;
  v318 = v324;
  v319 = v325;
  if (*(Counter + 112))
  {
    goto LABEL_121;
  }

  v26 = *(Counter + 64);
  v354 = *(Counter + 48);
  v355 = v26;
  v27 = *(Counter + 96);
  v356 = *(Counter + 80);
  v357 = v27;
  v28 = *(Counter + 32);
  v352 = *(Counter + 16);
  v353 = v28;
  v331[0] = v352;
  v331[1] = v28;
  v331[2] = v354;
  v331[3] = v26;
  v331[4] = v356;
  v331[5] = v27;
  if (_s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_A11HQP_Tt1g5(&v324, v331))
  {
    goto LABEL_121;
  }

  v263 = v11;
  v275 = a1;
  v276 = v21;
  AGGraphClearUpdate();
  v29 = *(Counter + 64);
  v348 = *(Counter + 80);
  v30 = *(Counter + 112);
  v349 = *(Counter + 96);
  v350 = v30;
  v351 = *(Counter + 128);
  v31 = *(Counter + 48);
  v345 = *(Counter + 32);
  v346 = v31;
  v347 = v29;
  v33 = *Counter;
  v32 = *(Counter + 16);
  v274 = Counter;
  v343 = v33;
  v344 = v32;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v343, &v337, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
  v34 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v343, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v269 = v34;
  v270 = Transaction.effectiveAnimation.getter(v34);
  if (v270)
  {
    v264 = v16;
    v268 = a3;
  }

  else
  {
    if (!a2)
    {

      Counter = v274;
      a1 = v275;
      v25 = &v294;
      v21 = v276;
      goto LABEL_121;
    }

    v264 = v16;
    v268 = a3;

    v270 = a2;
  }

  LODWORD(v277) = DWORD1(v343);
  v271 = *(&v350 + 1);
  v303 = v327;
  v304 = v328;
  v305 = v329;
  v301 = v325;
  v302 = v326;
  v296 = v354;
  v297 = v355;
  v298 = v356;
  v299 = v357;
  v300 = v324;
  v294 = v352;
  v295 = v353;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v36 = v35;
  v273 = &v263;
  v37 = MEMORY[0x1E69E7DE0];
  v38 = *(MEMORY[0x1E69E7DE0] - 8);
  v39 = v38[8];
  v40 = MEMORY[0x1EEE9AC00](v35);
  v287 = v39;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = v38[2];
  v43 = v42(&v263 - v41, &v300, v37, v40);
  v267 = &v263;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v42(&v263 - v41, &v294, v37, v44);
  v280 = *(v36 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v45 = v38[1];
  v45(&v263 - v41, v37);
  v46 = (v45)(&v263 - v41, v37);
  v273 = &v263;
  v336[0] = &v306;
  v47 = MEMORY[0x1EEE9AC00](v46);
  v281 = v41;
  v48 = v42(&v263 - v41, (&v300 + 8), v37, v47);
  v267 = &v263;
  v49 = MEMORY[0x1EEE9AC00](v48);
  v42(&v263 - v41, (&v294 + 8), v37, v49);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v45(&v263 - v41, v37);
  v50 = (v45)(&v263 - v41, v37);
  v273 = &v263;
  v336[1] = &v307;
  v265 = &v308;
  v51 = MEMORY[0x1EEE9AC00](v50);
  v52 = v281;
  v53 = (&v263 - v281);
  v54 = v42((&v263 - v281), &v301, v37, v51);
  v267 = &v263;
  v55 = MEMORY[0x1EEE9AC00](v54);
  v42((&v263 - v52), &v295, v37, v55);
  v56 = v265;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v45((&v263 - v52), v37);
  v57 = (v45)(v53, v37);
  v273 = &v263;
  v336[2] = v56;
  v58 = MEMORY[0x1EEE9AC00](v57);
  v59 = v281;
  v60 = (&v263 - v281);
  v272 = (v38 + 2);
  v61 = v42((&v263 - v281), (&v301 + 8), v37, v58);
  v267 = &v263;
  v62 = MEMORY[0x1EEE9AC00](v61);
  v63 = (&v263 - v59);
  v42((&v263 - v59), (&v295 + 8), v37, v62);
  v64 = v42;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v279 = v45;
  v45(v63, v37);
  v65 = (v45)(v60, v37);
  v273 = &v263;
  v336[3] = &v309;
  v66 = MEMORY[0x1EEE9AC00](v65);
  v67 = v281;
  v68 = (&v263 - v281);
  v69 = v64(&v263 - v281, &v302, v37, v66);
  v267 = &v263;
  v70 = MEMORY[0x1EEE9AC00](v69);
  v71 = (&v263 - v67);
  v72 = (&v263 - v67);
  v73 = v64;
  v64(v72, &v296, v37, v70);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v74 = v279;
  (v279)(v71, v37);
  v75 = v74(v68, v37);
  v76 = v38 + 1;
  v273 = &v263;
  v336[4] = &v310;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v78 = v281;
  v79 = v73(&v263 - v281, &v302 + 8, v37, v77);
  v267 = &v263;
  v80 = MEMORY[0x1EEE9AC00](v79);
  v73(&v263 - v78, &v296 + 8, v37, v80);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v278 = v76;
  v74((&v263 - v78), v37);
  v81 = v74((&v263 - v78), v37);
  v273 = &v263;
  v336[5] = &v311;
  v82 = MEMORY[0x1EEE9AC00](v81);
  v83 = v73(&v263 - v78, &v303, v37, v82);
  v267 = &v263;
  v84 = MEMORY[0x1EEE9AC00](v83);
  v73(&v263 - v78, &v297, v37, v84);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v74((&v263 - v78), v37);
  v85 = v74((&v263 - v78), v37);
  v273 = &v263;
  v336[6] = &v312;
  v86 = MEMORY[0x1EEE9AC00](v85);
  v87 = v73(&v263 - v78, &v303 + 8, v37, v86);
  v267 = &v263;
  v88 = MEMORY[0x1EEE9AC00](v87);
  v73(&v263 - v78, &v297 + 8, v37, v88);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v74((&v263 - v78), v37);
  v89 = v74((&v263 - v78), v37);
  v273 = &v263;
  v336[7] = &v313;
  v90 = MEMORY[0x1EEE9AC00](v89);
  v91 = v281;
  v92 = (&v263 - v281);
  v93 = v73(&v263 - v281, &v304, v37, v90);
  v267 = &v263;
  v94 = MEMORY[0x1EEE9AC00](v93);
  v73(&v263 - v91, &v298, v37, v94);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v95 = (&v263 - v91);
  v96 = v279;
  (v279)(v95, v37);
  v97 = v96(v92, v37);
  v273 = &v263;
  v336[8] = &v314;
  v98 = MEMORY[0x1EEE9AC00](v97);
  v99 = v281;
  v266 = v73;
  v100 = v73(&v263 - v281, &v304 + 8, v37, v98);
  v267 = &v263;
  v101 = MEMORY[0x1EEE9AC00](v100);
  v73(&v263 - v99, &v298 + 8, v37, v101);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v96((&v263 - v99), v37);
  v102 = v96((&v263 - v99), v37);
  v273 = &v263;
  v336[9] = &v315;
  v103 = MEMORY[0x1EEE9AC00](v102);
  v104 = v266;
  v105 = (v266)(&v263 - v99, &v305, v37, v103);
  v267 = &v263;
  v106 = MEMORY[0x1EEE9AC00](v105);
  v104(&v263 - v99, &v299, v37, v106);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v107 = v279;
  (v279)(&v263 - v99, v37);
  v108 = v107(&v263 - v99, v37);
  v273 = &v263;
  v336[10] = &v316;
  v109 = MEMORY[0x1EEE9AC00](v108);
  v110 = v281;
  v111 = (&v263 - v281);
  v112 = (v104)(&v263 - v281, &v305 + 8, v37, v109);
  v267 = &v263;
  v113 = MEMORY[0x1EEE9AC00](v112);
  v114 = (&v263 - v110);
  v104(v114, (&v299 + 8), v37, v113);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v107(v114, v37);
  v107(v111, v37);
  v115 = v271;
  v336[11] = &v317;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v336, v330);
  v24 = *AGGraphGetValue();
  if (!v115)
  {
    v293 = &type metadata for CornerMaskingConfiguration;
    type metadata accessor for CornerMaskingConfiguration.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Type, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);
    v137 = swift_dynamicCast();
    if (v137)
    {
      v138 = v292[0];
    }

    else
    {
      v138 = 0;
    }

    if (v137)
    {
      v139 = v292[1];
    }

    else
    {
      v139 = 0;
    }

    type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>(0);
    swift_allocObject();
    v119 = v269;

    v140 = v270;

    v142 = specialized AnimatorState.init(animation:interval:at:in:finishingDefinition:)(v141, v330, v119, v138, v139, v24);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v144 = CurrentAttribute;
    LODWORD(v119) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v145 = 0;
    }

    else
    {
      v145 = CurrentAttribute;
    }

    LODWORD(v287) = v145;
    (*(*v140 + 96))(&v332);
    v146 = v332;
    v147 = v333;
    v148 = v334;
    v149 = v335;
    v290 = 0x7FF8000000000000;
    v291 = 0x7FF8000000000000;
    v288 = NAN;
    v289 = 0x3FF0000000000000;
    v337 = v332;
    v338 = v333;
    *&v339 = v334;
    BYTE8(v339) = v335;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v337, &v291, &v290, &v289, &v288);
    v150 = v290;
    v151 = v291;
    v152 = v288;
    v153 = v289;
    if (one-time initialization token for enabledCategories != -1)
    {
      v284 = v291;
      v280 = v290;
      v281 = v289;
      v279 = *&v288;
      swift_once();
      v152 = *&v279;
      v150 = v280;
      v153 = v281;
      v151 = v284;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v154 = *(static CustomEventTrace.enabledCategories + 98);
      v271 = v142;
      if (v154 == 1)
      {
        v284 = v148;
        v155 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v156 = v144 == v119;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v157 = *(v155 + 16);
          LODWORD(v337) = v287;
          BYTE4(v337) = v156;
          *(&v337 + 1) = &type metadata for CornerMaskingConfiguration;
          *&v338 = v151;
          *(&v338 + 1) = v150;
          *&v339 = v153;
          *(&v339 + 1) = v152;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          LODWORD(v287) = v149;

          v158 = v157;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v146, *(&v146 + 1), v147, *(&v147 + 1), v284, v287);
        }

        else
        {
          outlined consume of Animation.Function(v146, *(&v146 + 1), v147, *(&v147 + 1), v284, v149);
        }
      }

      else
      {
        outlined consume of Animation.Function(v146, *(&v146 + 1), v147, *(&v147 + 1), v148, v149);
      }

      v196 = one-time initialization token for animationState;

      if (v196 == -1)
      {
        goto LABEL_84;
      }
    }

    swift_once();
LABEL_84:
    Counter = *(&static Signpost.animationState + 1);
    v164 = static Signpost.animationState;
    v21 = word_1ED5283E8;
    v166 = HIBYTE(word_1ED5283E8);
    v197 = byte_1ED5283EA;
    v198 = static os_signpost_type_t.begin.getter();
    v337 = __PAIR128__(Counter, v164);
    LOBYTE(v338) = v21;
    BYTE1(v338) = v166;
    BYTE2(v338) = v197;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v209 = v271;

      goto LABEL_119;
    }

    LODWORD(v287) = v198;
    v199 = one-time initialization token for _signpostLog;

    if (v199 != -1)
    {
      goto LABEL_195;
    }

    goto LABEL_86;
  }

  Counter = &type metadata for CornerMaskingConfiguration;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v343, &v337, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v337) = 0;
  v116 = v270;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v270, v330, v269, v268, v24);
  v117 = AGGraphGetCurrentAttribute();
  v118 = v117;
  LODWORD(v287) = *MEMORY[0x1E698D3F8];
  if (v117 == v287)
  {
    LODWORD(v119) = 0;
  }

  else
  {
    LODWORD(v119) = v117;
  }

  (*(*v116 + 96))(&v332);
  v121 = *(&v332 + 1);
  v120 = v332;
  v122 = *(&v333 + 1);
  v123 = v333;
  v124 = v334;
  LODWORD(v125) = v335;
  v293 = 0x7FF8000000000000;
  v291 = 0x3FF0000000000000;
  v292[0] = 0x7FF8000000000000;
  v290 = 0x7FF8000000000000;
  v337 = v332;
  v338 = v333;
  *&v339 = v334;
  BYTE8(v339) = v335;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v337, v292, &v293, &v291, &v290);
  v126 = v291;
  v127 = v292[0];
  v128 = v293;
  v129 = v290;
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
        v130 = v119;
        v119 = v124;
        v131 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v132 = v118 == v287;
          v133 = Counter;
          Counter = *(static CustomEventTrace.recorder + 24);
          *(Counter + 4) = 1602;
          LODWORD(v282) = v125;
          v134 = *(v131 + 16);
          LODWORD(v337) = v130;
          BYTE4(v337) = v132;
          *(&v337 + 1) = v133;
          *&v338 = v127;
          *(&v338 + 1) = v128;
          *&v339 = v126;
          *(&v339 + 1) = v129;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v281 = v135;

          v136 = v134;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v120, v121, v123, v122, v119, v282);

          goto LABEL_44;
        }

        v159 = v120;
        v160 = v121;
        v161 = v123;
        v162 = v122;
        v163 = v119;
      }

      else
      {
        v159 = v120;
        v160 = v121;
        v161 = v123;
        v162 = v122;
        v163 = v124;
      }

      outlined consume of Animation.Function(v159, v160, v161, v162, v163, v125);
LABEL_44:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v343, &v337, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_190;
    }

    __break(1u);
LABEL_190:
    swift_once();
LABEL_45:
    v164 = *(&static Signpost.animationState + 1);
    v165 = static Signpost.animationState;
    v21 = word_1ED5283E8;
    v166 = HIBYTE(word_1ED5283E8);
    v167 = byte_1ED5283EA;
    v168 = static os_signpost_type_t.event.getter();
    v337 = __PAIR128__(v164, v165);
    LOBYTE(v338) = v21;
    BYTE1(v338) = v166;
    BYTE2(v338) = v167;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v343, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v343, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
LABEL_81:
      Counter = v274;
      goto LABEL_120;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v343, &v337, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    LODWORD(v282) = v168;
    v169 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v170 = swift_allocObject();
    *(v170 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v287)
    {
      __break(1u);
    }

    else
    {
      v171 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v172 = MEMORY[0x1E69E6870];
      *(v170 + 56) = MEMORY[0x1E69E6810];
      *(v170 + 64) = v172;
      *(v170 + 32) = Counter;
      v173 = AGGraphGetCurrentAttribute();
      if (v173 != v287)
      {
        Counter = v170;
        v174 = MEMORY[0x1E69E76D0];
        *(v170 + 96) = MEMORY[0x1E69E7668];
        *(v170 + 104) = v174;
        *(v170 + 72) = v173;
        *(v170 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v170 + 144) = v175;
        *(v170 + 112) = 0xD00000000000001ALL;
        *(v170 + 120) = 0x800000018DD7ECD0;
        if (v166)
        {
          LOBYTE(v290) = v282;
          v291 = v170;
          v292[0] = &dword_18D018000;
          v293 = v169;
          *&v337 = v165;
          *(&v337 + 1) = v164;
          LOBYTE(v338) = v21;
          *&v332 = "Animation: (%p) [%d] %{public}@ updated";
          *(&v332 + 1) = 39;
          LOBYTE(v333) = 2;
          v176 = v264;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v290, v292, &v293, &v337, v264, &v332, &v291);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v343, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v343, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
          (*(v283 + 8))(v176, v286);
        }

        else
        {
          v119 = v165;
          if (v165 == 20)
          {
            a1 = 3;
          }

          else
          {
            a1 = 4;
          }

          v21 = bswap32(v165) | (4 * WORD1(v165));
          LODWORD(v287) = v282;
          v177 = (v283 + 16);
          v272 = *(v283 + 16);
          v178 = v272(v284, v264, v286);
          v25 = 0;
          LOBYTE(v332) = 1;
          v273 = v177;
          v280 = (16 * a1);
          v281 = v177 - 1;
          v278 = v119;
          v279 = Counter + 32;
          v277 = a1;
          do
          {
            v282 = &v263;
            MEMORY[0x1EEE9AC00](v178);
            v181 = &v263 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
            v182 = (v181 + 8);
            v183 = a1;
            v184 = v181 + 8;
            do
            {
              *(v184 - 1) = 0;
              *v184 = 0;
              v184 += 16;
              --v183;
            }

            while (v183);
            v185 = (v279 + 40 * v25);
            while (1)
            {
              v186 = *(Counter + 16);
              if (v25 == v186)
              {
                break;
              }

              if (v25 >= v186)
              {
                goto LABEL_179;
              }

              ++v25;
              outlined init with copy of AnyTrackedValue(v185, &v337);
              v187 = *(&v338 + 1);
              v119 = Counter;
              v188 = v339;
              __swift_project_boxed_opaque_existential_1(&v337, *(&v338 + 1));
              v189 = v188;
              Counter = v119;
              *(v182 - 8) = CVarArg.kdebugValue(_:)(v21 | v287, v187, v189);
              *v182 = v190 & 1;
              v182 += 16;
              v179 = __swift_destroy_boxed_opaque_existential_1(&v337);
              v185 += 5;
              if (!--a1)
              {
                goto LABEL_65;
              }
            }

            LOBYTE(v332) = 0;
LABEL_65:
            v119 = v278;
            if (v278 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            a1 = v277;
            if (v181[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v181[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v181[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v119 != 20 && v181[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v191 = *v281;
            v192 = v284;
            v193 = v286;
            (*v281)(v284, v286);
            v194 = __swift_project_value_buffer(v193, static OSSignpostID.continuation);
            v178 = v272(v192, v194, v193);
          }

          while ((v332 & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v343, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v343, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
          v195 = v286;
          v191(v284, v286);
          v191(v264, v195);
        }

        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_195:
    swift_once();
LABEL_86:
    v200 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v201 = swift_allocObject();
    *(v201 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v119)
    {
      __break(1u);
LABEL_197:
      __break(1u);
    }

    v202 = AGGraphGetAttributeGraph();
    v203 = AGGraphGetCounter();

    v204 = MEMORY[0x1E69E6870];
    *(v201 + 56) = MEMORY[0x1E69E6810];
    *(v201 + 64) = v204;
    *(v201 + 32) = v203;
    v205 = AGGraphGetCurrentAttribute();
    if (v205 == v119)
    {
      goto LABEL_197;
    }

    a1 = v201;
    v206 = MEMORY[0x1E69E76D0];
    *(v201 + 96) = MEMORY[0x1E69E7668];
    *(v201 + 104) = v206;
    *(v201 + 72) = v205;
    *(v201 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v201 + 144) = v207;
    *(v201 + 112) = 0xD00000000000001ALL;
    *(v201 + 120) = 0x800000018DD7ECD0;
    if (v166)
    {
      LOBYTE(v288) = v287;
      v290 = v200;
      v291 = &dword_18D018000;
      *&v337 = v164;
      *(&v337 + 1) = Counter;
      LOBYTE(v338) = v21;
      *&v332 = "Animation: (%p) [%d] %{public}@ started";
      *(&v332 + 1) = 39;
      LOBYTE(v333) = 2;
      v289 = v201;
      v208 = v263;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v288, &v291, &v290, &v337, v263, &v332, &v289);
      v209 = v271;

      (*(v283 + 8))(v208, v286);
    }

    else
    {
      v210 = v164;
      v211 = v164 == 20 ? 3 : 4;
      Counter = bswap32(v164) | (4 * WORD1(v164));
      LODWORD(v287) = v287;
      v212 = (v283 + 16);
      v272 = *(v283 + 16);
      v213 = v272(v282, v263, v286);
      v182 = 0;
      LOBYTE(v332) = 1;
      v284 = v211;
      v273 = v212;
      v279 = 16 * v211;
      v280 = v212 - 1;
      v277 = v210;
      v278 = a1 + 32;
      do
      {
        v281 = &v263;
        MEMORY[0x1EEE9AC00](v213);
        v181 = &v263 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
        v119 = (v181 + 8);
        v215 = v284;
        v216 = v181 + 8;
        do
        {
          *(v216 - 1) = 0;
          *v216 = 0;
          v216 += 16;
          --v215;
        }

        while (v215);
        v185 = (v278 + 40 * v182);
        v25 = v284;
        while (1)
        {
          v217 = *(a1 + 16);
          if (v182 == v217)
          {
            break;
          }

          if (v182 >= v217)
          {
            goto LABEL_180;
          }

          ++v182;
          outlined init with copy of AnyTrackedValue(v185, &v337);
          v218 = *(&v338 + 1);
          v21 = a1;
          v219 = v339;
          __swift_project_boxed_opaque_existential_1(&v337, *(&v338 + 1));
          v220 = v219;
          a1 = v21;
          *(v119 - 8) = CVarArg.kdebugValue(_:)(Counter | v287, v218, v220);
          *v119 = v221 & 1;
          v119 += 16;
          v179 = __swift_destroy_boxed_opaque_existential_1(&v337);
          v185 += 5;
          if (!--v25)
          {
            goto LABEL_103;
          }
        }

        LOBYTE(v332) = 0;
LABEL_103:
        v222 = v277;
        if (v277 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v181[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v181[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v181[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v222 != 20 && v181[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v223 = *v280;
        v224 = v282;
        v225 = v286;
        (*v280)(v282, v286);
        v226 = __swift_project_value_buffer(v225, static OSSignpostID.continuation);
        v213 = v272(v224, v226, v225);
      }

      while ((v332 & 1) != 0);
      v209 = v271;

      v227 = v286;
      v223(v282, v286);
      v223(v263, v227);
    }

LABEL_119:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v343, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration>, lazy protocol witness table accessor for type CornerMaskingConfiguration and conformance CornerMaskingConfiguration, &type metadata for CornerMaskingConfiguration, type metadata accessor for AnimatableAttributeHelper);
    Counter = v274;
    *(v274 + 120) = v209;
LABEL_120:
    specialized AnimatorState.addListeners(transaction:)(v269);

    a1 = v275;
    v21 = v276;
    v25 = &v294;
    a3 = v268;
LABEL_121:
    LOBYTE(v343) = 0;
    v228 = v321;
    *(Counter + 48) = v320;
    *(Counter + 64) = v228;
    v229 = v323;
    *(Counter + 80) = v322;
    *(Counter + 96) = v229;
    v230 = v319;
    *(Counter + 16) = v318;
    *(Counter + 32) = v230;
    *(Counter + 112) = 0;
LABEL_122:
    v181 = *(Counter + 120);
    if (!v181)
    {
      return;
    }

    CornerMaskingConfiguration.animatableData.getter(&v337);
    LOBYTE(v343) = 0;
    v231 = specialized AnimatorState.update(_:at:environment:)(&v337, a3, v24);
    v179 = AGGraphGetCurrentAttribute();
    LODWORD(v119) = *MEMORY[0x1E698D3F8];
    if (v179 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v182) = 0;
    }

    else
    {
      LODWORD(v182) = v179;
    }

    v185 = &type metadata instantiation cache for TupleTypeDescription;
    if (v231)
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
    v242 = v185[77];
    if (*(v242 + 16) >= 0x43uLL)
    {
      if (*(v242 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v343) = v182;
        BYTE4(v343) = v179 == v119;
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
    v123 = *(&static Signpost.animationState + 1);
    v122 = static Signpost.animationState;
    v124 = word_1ED5283E8;
    v118 = HIBYTE(word_1ED5283E8);
    v234 = byte_1ED5283EA;
    v235 = static os_signpost_type_t.end.getter();
    v343 = __PAIR128__(v123, v122);
    LOBYTE(v344) = v124;
    BYTE1(v344) = v118;
    BYTE2(v344) = v234;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    LODWORD(v287) = v235;
    v236 = one-time initialization token for _signpostLog;
    v121 = v273;

    if (v236 != -1)
    {
      swift_once();
    }

    v120 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v119)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v281 = v126;
    v282 = v127;
    v279 = v129;
    v280 = v128;
    swift_once();
    v129 = v279;
    v128 = v280;
    v126 = v281;
    v127 = v282;
  }

  v121 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v237 = MEMORY[0x1E69E6870];
  *(v125 + 56) = MEMORY[0x1E69E6810];
  *(v125 + 64) = v237;
  *(v125 + 32) = Counter;
  v238 = AGGraphGetCurrentAttribute();
  if (v238 == v119)
  {
    goto LABEL_187;
  }

  Counter = v125;
  v239 = MEMORY[0x1E69E76D0];
  *(v125 + 96) = MEMORY[0x1E69E7668];
  *(v125 + 104) = v239;
  *(v125 + 72) = v238;
  *(v125 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v125 + 144) = v240;
  *(v125 + 112) = 0xD00000000000001ALL;
  *(v125 + 120) = 0x800000018DD7ECD0;
  if (v118)
  {
    LOBYTE(v294) = v287;
    v336[0] = &dword_18D018000;
    v306 = v120;
    *&v343 = v122;
    *(&v343 + 1) = v123;
    LOBYTE(v344) = v124;
    *&v352 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v352 + 1) = 37;
    LOBYTE(v353) = 2;
    *&v300 = v125;
    v241 = v276;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v294, v336, &v306, &v343, v276, &v352, &v300);

    (*(v283 + 8))(v241, v286);
    goto LABEL_174;
  }

  a1 = v122;
  if (v122 == 20)
  {
    v25 = 3;
  }

  else
  {
    v25 = 4;
  }

  v21 = bswap32(v122) | (4 * WORD1(v122));
  LODWORD(v287) = v287;
  v243 = v283 + 16;
  v277 = *(v283 + 16);
  v244 = v277(v285, v276, v286);
  v182 = 0;
  LOBYTE(v352) = 1;
  v283 = v243;
  v281 = (16 * v25);
  v282 = (v243 - 8);
  v279 = a1;
  v280 = (Counter + 32);
  v278 = v25;
  do
  {
    v284 = &v263;
    MEMORY[0x1EEE9AC00](v244);
    v181 = &v263 - ((v245 + 15) & 0xFFFFFFFFFFFFFFF0);
    v119 = (v181 + 8);
    v246 = v25;
    v247 = v181 + 8;
    do
    {
      *(v247 - 1) = 0;
      *v247 = 0;
      v247 += 16;
      --v246;
    }

    while (v246);
    v185 = &v280[5 * v182];
    while (1)
    {
      v248 = *(Counter + 16);
      if (v182 == v248)
      {
        break;
      }

      if (v182 >= v248)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v261 = v179;
        swift_once();
        v179 = v261;
LABEL_128:
        v232 = v185[77];
        if (*(v232 + 16) >= 0x43uLL)
        {
          if (*(v232 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v343) = v182;
            BYTE4(v343) = v179 == v119;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v275 = a1;
          v276 = v21;
          v273 = v181;
          v274 = Counter;
          v233 = one-time initialization token for animationState;

          if (v233 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v262 = v179;
        swift_once();
        v179 = v262;
        goto LABEL_141;
      }

      ++v182;
      outlined init with copy of AnyTrackedValue(v185, &v343);
      v249 = *(&v344 + 1);
      a1 = Counter;
      v250 = v345;
      __swift_project_boxed_opaque_existential_1(&v343, *(&v344 + 1));
      v251 = v250;
      Counter = a1;
      *(v119 - 8) = CVarArg.kdebugValue(_:)(v21 | v287, v249, v251);
      *v119 = v252 & 1;
      v119 += 16;
      v179 = __swift_destroy_boxed_opaque_existential_1(&v343);
      v185 += 5;
      if (!--v25)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v352) = 0;
LABEL_159:
    a1 = v279;
    if (v279 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v25 = v278;
    if (v181[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v181[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v181[40] == 1)
    {
      kdebug_trace_string();
    }

    if (a1 != 20 && v181[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v253 = *v282;
    v255 = v285;
    v254 = v286;
    (*v282)(v285, v286);
    v256 = __swift_project_value_buffer(v254, static OSSignpostID.continuation);
    v244 = v277(v255, v256, v254);
  }

  while ((v352 & 1) != 0);

  v257 = v286;
  v253(v285, v286);
  v253(v276, v257);
LABEL_174:

LABEL_175:
  specialized AnimatorState.removeListeners()();

  a1 = v275;
  *(v274 + 120) = 0;
  v25 = &v294;
LABEL_176:
  v258 = v340;
  *(v25 + 992) = v339;
  *(v25 + 1008) = v258;
  v259 = v342;
  *(v25 + 1024) = v341;
  *(v25 + 1040) = v259;
  v260 = v338;
  *(v25 + 960) = v337;
  *(v25 + 976) = v260;
  CornerMaskingConfiguration.animatableData.setter(&v343);

  *(a1 + 224) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t Counter, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v401 = *MEMORY[0x1E69E9840];
  v314 = type metadata accessor for OSSignpostID();
  v311 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314);
  v309 = (&v293 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v293 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v312 = (&v293 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v305 = (&v293 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v313 = &v293 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v304 = &v293 - v21;
  if (*(a4 + 128))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(Counter + 240) = 1;
  }

  else if (*(Counter + 240) != 1)
  {
    goto LABEL_123;
  }

  v25 = &v322;
  v26 = *(Counter + 8);
  v27 = *(Counter + 192);
  v384 = *(Counter + 176);
  v385 = v27;
  v28 = *(Counter + 224);
  v386 = *(Counter + 208);
  v387 = v28;
  v29 = *(Counter + 128);
  v380 = *(Counter + 112);
  v381 = v29;
  v30 = *(Counter + 160);
  v382 = *(Counter + 144);
  v383 = v30;
  v31 = *(Counter + 64);
  v376 = *(Counter + 48);
  v377 = v31;
  v32 = *(Counter + 96);
  v378 = *(Counter + 80);
  v379 = v32;
  v33 = *(Counter + 32);
  v374 = *(Counter + 16);
  v375 = v33;
  CornerMaskingConfiguration.animatableData.getter(&v352);
  if (*(a4 + 120))
  {
    goto LABEL_122;
  }

  v5 = *(a4 + 16);
  v34 = *(a4 + 72);
  v390 = *(a4 + 56);
  v391 = v34;
  v35 = *(a4 + 104);
  v392 = *(a4 + 88);
  v393 = v35;
  v36 = *(a4 + 40);
  v388 = *(a4 + 24);
  v389 = v36;
  if (v26 == *&v5)
  {
    v358[2] = v354;
    v358[3] = v355;
    v358[4] = v356;
    v358[5] = v357;
    v358[0] = v352;
    v358[1] = v353;
    v37 = *(a4 + 72);
    v359[2] = *(a4 + 56);
    v359[3] = v37;
    v38 = *(a4 + 104);
    v359[4] = *(a4 + 88);
    v359[5] = v38;
    v39 = *(a4 + 40);
    v359[0] = *(a4 + 24);
    v359[1] = v39;
    if (_s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_A11HQP_Tt1g5(v358, v359))
    {
      goto LABEL_122;
    }
  }

  v315 = a2;
  v293 = v13;
  v302 = Counter;
  AGGraphClearUpdate();
  v40 = *(a4 + 96);
  v41 = *(a4 + 112);
  v42 = *(a4 + 64);
  v372[5] = *(a4 + 80);
  v372[6] = v40;
  v373[0] = v41;
  *(v373 + 12) = *(a4 + 124);
  v43 = *(a4 + 48);
  v372[2] = *(a4 + 32);
  v372[3] = v43;
  v372[4] = v42;
  v44 = *(a4 + 16);
  v372[0] = *a4;
  v372[1] = v44;
  v4 = lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v372, &v365, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
  v45 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v372, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v296 = v45;
  v46 = Transaction.effectiveAnimation.getter(v45);
  v295 = a3;
  v297 = v46;
  if (v46)
  {
    v303 = a4;
  }

  else
  {
    if (!v315)
    {

      Counter = v302;
      v25 = &v322;
      goto LABEL_122;
    }

    v303 = a4;
  }

  v348 = v354;
  v349 = v355;
  v350 = v356;
  v351 = v357;
  v346 = v352;
  v347 = v353;
  v331 = v355;
  v332 = v356;
  v333 = v357;
  v329 = v353;
  v330 = v354;
  v324 = v390;
  v325 = v391;
  v326 = v392;
  LODWORD(v300) = DWORD1(v372[0]);
  v301 = *&v373[1];
  v47 = v26 - *&v5;
  v327 = v393;
  v328 = v352;
  v322 = v388;
  v323 = v389;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v49 = v48;
  v299 = &v293;
  v50 = MEMORY[0x1E69E7DE0];
  v51 = *(MEMORY[0x1E69E7DE0] - 8);
  v52 = v51[8];
  v53 = MEMORY[0x1EEE9AC00](v48);
  v315 = v52;
  v54 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = v51[2];
  v56 = (v55)(&v293 - v54, &v328, v50, v53);
  v298 = &v293;
  v57 = MEMORY[0x1EEE9AC00](v56);
  (v55)(&v293 - v54, &v322, v50, v57);
  v308 = *(v49 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v58 = v51[1];
  v58(&v293 - v54, v50);
  v59 = (v58)(&v293 - v54, v50);
  v299 = &v293;
  v364[0] = &v334;
  v60 = MEMORY[0x1EEE9AC00](v59);
  v307 = v54;
  v61 = (v55)(&v293 - v54, &v328 + 8, v50, v60);
  v298 = &v293;
  v62 = MEMORY[0x1EEE9AC00](v61);
  v310 = v55;
  (v55)(&v293 - v54, &v322 + 8, v50, v62);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v58(&v293 - v54, v50);
  v63 = (v58)(&v293 - v54, v50);
  v299 = &v293;
  v364[1] = &v335;
  v294 = &v336;
  v64 = MEMORY[0x1EEE9AC00](v63);
  v65 = v307;
  v66 = (v55)(&v293 - v307, &v329, v50, v64);
  v298 = &v293;
  v67 = MEMORY[0x1EEE9AC00](v66);
  (v55)(&v293 - v65, &v323, v50, v67);
  v68 = v294;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v58(&v293 - v65, v50);
  v69 = (v58)(&v293 - v65, v50);
  v299 = &v293;
  v364[2] = v68;
  v294 = &v337;
  v70 = MEMORY[0x1EEE9AC00](v69);
  v71 = v307;
  v72 = v310;
  v73 = (v310)(&v293 - v307, &v329 + 8, v50, v70);
  v298 = &v293;
  v74 = MEMORY[0x1EEE9AC00](v73);
  (v72)(&v293 - v71, &v323 + 8, v50, v74);
  v75 = v294;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v58(&v293 - v71, v50);
  v76 = (v58)(&v293 - v71, v50);
  v299 = &v293;
  v364[3] = v75;
  v77 = MEMORY[0x1EEE9AC00](v76);
  v78 = v307;
  v79 = v310;
  v80 = (v310)(&v293 - v307, &v330, v50, v77);
  v298 = &v293;
  v81 = MEMORY[0x1EEE9AC00](v80);
  (v79)(&v293 - v78, &v324, v50, v81);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v306 = v58;
  v58(&v293 - v78, v50);
  v82 = (v58)(&v293 - v78, v50);
  v299 = &v293;
  v364[4] = &v338;
  v294 = &v339;
  v83 = MEMORY[0x1EEE9AC00](v82);
  v84 = v307;
  v85 = v310;
  v86 = (v310)(&v293 - v307, &v330 + 8, v50, v83);
  v298 = &v293;
  v87 = MEMORY[0x1EEE9AC00](v86);
  (v85)(&v293 - v84, &v324 + 8, v50, v87);
  v88 = v294;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v89 = v306;
  v306(&v293 - v84, v50);
  v90 = v89(&v293 - v84, v50);
  v299 = &v293;
  v364[5] = v88;
  v91 = MEMORY[0x1EEE9AC00](v90);
  v92 = v307;
  v93 = v310;
  v94 = (v310)(&v293 - v307, &v331, v50, v91);
  v298 = &v293;
  v95 = MEMORY[0x1EEE9AC00](v94);
  (v93)(&v293 - v92, &v325, v50, v95);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v96 = v306;
  v306(&v293 - v92, v50);
  v97 = v96(&v293 - v92, v50);
  v299 = &v293;
  v364[6] = &v340;
  v98 = MEMORY[0x1EEE9AC00](v97);
  v99 = v310;
  v100 = (v310)(&v293 - v92, &v331 + 8, v50, v98);
  v298 = &v293;
  v101 = MEMORY[0x1EEE9AC00](v100);
  (v99)(&v293 - v92, &v325 + 8, v50, v101);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v96(&v293 - v92, v50);
  v102 = v96(&v293 - v92, v50);
  v299 = &v293;
  v364[7] = &v341;
  v294 = &v342;
  v103 = MEMORY[0x1EEE9AC00](v102);
  v104 = &v293 - v92;
  v105 = v92;
  v106 = &v293 - v92;
  v107 = v310;
  v108 = (v310)(v106, &v332, v50, v103);
  v298 = &v293;
  v109 = MEMORY[0x1EEE9AC00](v108);
  (v107)(&v293 - v105, &v326, v50, v109);
  v110 = v294;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v111 = &v293 - v105;
  v112 = v306;
  v306(v111, v50);
  v113 = v112(v104, v50);
  v299 = &v293;
  v364[8] = v110;
  v114 = MEMORY[0x1EEE9AC00](v113);
  v115 = v307;
  v116 = (v107)(&v293 - v307, &v332 + 8, v50, v114);
  v298 = &v293;
  v117 = MEMORY[0x1EEE9AC00](v116);
  (v107)(&v293 - v115, &v326 + 8, v50, v117);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v118 = v306;
  v306(&v293 - v115, v50);
  v119 = v118(&v293 - v115, v50);
  v299 = &v293;
  v364[9] = &v343;
  v120 = MEMORY[0x1EEE9AC00](v119);
  v121 = v307;
  v122 = v310;
  v123 = (v310)(&v293 - v307, &v333, v50, v120);
  v298 = &v293;
  v124 = MEMORY[0x1EEE9AC00](v123);
  (v122)(&v293 - v121, &v327, v50, v124);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v125 = v306;
  v306(&v293 - v121, v50);
  v126 = v125(&v293 - v121, v50);
  v299 = &v293;
  v364[10] = &v344;
  v127 = MEMORY[0x1EEE9AC00](v126);
  v128 = v310;
  v129 = (v310)(&v293 - v121, &v333 + 8, v50, v127);
  v298 = &v293;
  v130 = MEMORY[0x1EEE9AC00](v129);
  (v128)(&v293 - v121, &v327 + 8, v50, v130);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v125(&v293 - v121, v50);
  v131 = v50;
  v132 = v301;
  v125(&v293 - v121, v131);
  v364[11] = &v345;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v364, &v346);
  v24 = *AGGraphGetValue();
  if (!v132)
  {
    v365 = v47;
    v368 = v348;
    v369 = v349;
    v370 = v350;
    v371 = v351;
    v366 = v346;
    v367 = v347;
    v321 = &type metadata for PartialContainerRelativeShape;
    type metadata accessor for PartialContainerRelativeShape.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Type, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
    v152 = swift_dynamicCast();
    if (v152)
    {
      v153 = v320[0];
    }

    else
    {
      v153 = 0;
    }

    if (v152)
    {
      v154 = v320[1];
    }

    else
    {
      v154 = 0;
    }

    type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>(0);
    swift_allocObject();
    a4 = v296;

    v155 = v297;

    v301 = specialized AnimatorState.init(animation:interval:at:in:finishingDefinition:)(v156, &v365, a4, v153, v154, v24);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v158 = CurrentAttribute;
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v159 = 0;
    }

    else
    {
      v159 = CurrentAttribute;
    }

    (*(*v155 + 96))(&v360);
    v160 = v360;
    v161 = v361;
    v25 = *(&v362 + 1);
    v162 = v362;
    v163 = v363;
    v318 = 0x7FF8000000000000;
    v319 = NAN;
    v316 = 0x7FF8000000000000;
    v317 = 0x3FF0000000000000;
    v394 = *&v360;
    v395 = v361;
    v396 = v362;
    LOBYTE(v397) = v363;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v394, &v319, &v318, &v317, &v316);
    v164 = v318;
    *&v5 = v319;
    v165 = v316;
    v166 = v317;
    if (one-time initialization token for enabledCategories != -1)
    {
      v315 = v318;
      v310 = v317;
      v312 = v316;
      swift_once();
      v165 = v312;
      v166 = v310;
      v164 = v315;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_193;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v167 = v159;
      v168 = v162;
      v169 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v170 = v158 == a4;
        v312 = v25;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v315) = a4;
        v171 = v163;
        v172 = *(v169 + 16);
        LODWORD(v394) = v167;
        BYTE4(v394) = v170;
        *&v395 = &type metadata for PartialContainerRelativeShape;
        *(&v395 + 1) = v5;
        *&v396 = v164;
        *(&v396 + 1) = v166;
        *&v397 = v165;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v310 = v173;

        v174 = v172;
        AGGraphAddTraceEvent();
        v175 = v171;
        LODWORD(a4) = v315;
        outlined consume of Animation.Function(v160, v161, *(&v161 + 1), v168, v312, v175);

        goto LABEL_85;
      }

      v181 = v160;
      v183 = *(&v161 + 1);
      v182 = v161;
      v184 = v168;
    }

    else
    {
      v181 = v160;
      v183 = *(&v161 + 1);
      v182 = v161;
      v184 = v162;
    }

    outlined consume of Animation.Function(v181, v182, v183, v184, v25, v163);
LABEL_85:
    v217 = one-time initialization token for animationState;

    v25 = &v322;
    if (v217 == -1)
    {
LABEL_86:
      v186 = *(&static Signpost.animationState + 1);
      v185 = static Signpost.animationState;
      v4 = word_1ED5283E8;
      LOBYTE(Counter) = HIBYTE(word_1ED5283E8);
      v218 = byte_1ED5283EA;
      LODWORD(v138) = static os_signpost_type_t.begin.getter();
      v394 = *&v185;
      *&v395 = v186;
      BYTE8(v395) = v4;
      BYTE9(v395) = Counter;
      BYTE10(v395) = v218;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v230 = v301;

        goto LABEL_93;
      }

      v219 = one-time initialization token for _signpostLog;

      if (v219 != -1)
      {
        goto LABEL_196;
      }

      goto LABEL_88;
    }

LABEL_193:
    swift_once();
    goto LABEL_86;
  }

  v394 = v47;
  v397 = v348;
  v398 = v349;
  v399 = v350;
  v400 = v351;
  v395 = v346;
  v396 = v347;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v372, &v365, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v365) = 0;
  v133 = v297;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v297, &v394, v296, v295, v24);
  v134 = AGGraphGetCurrentAttribute();
  LODWORD(v135) = v134;
  LODWORD(a4) = *MEMORY[0x1E698D3F8];
  if (v134 == *MEMORY[0x1E698D3F8])
  {
    LODWORD(v136) = 0;
  }

  else
  {
    LODWORD(v136) = v134;
  }

  (*(*v133 + 96))(&v360);
  v4 = v360;
  v137 = *(&v361 + 1);
  v138 = v361;
  v139 = *(&v362 + 1);
  Counter = v362;
  LOBYTE(v133) = v363;
  v321 = 0x7FF8000000000000;
  v319 = 1.0;
  v320[0] = 0x7FF8000000000000;
  v318 = 0x7FF8000000000000;
  v365 = *&v360;
  v366 = v361;
  v367 = v362;
  LOBYTE(v368) = v363;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v365, v320, &v321, &v319, &v318);
  v140 = *&v319;
  v5 = v320[0];
  v141 = v321;
  v142 = v318;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_189;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v143 = v136;
        v144 = v139;
        v145 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v146 = v135 == a4;
          v310 = *(static CustomEventTrace.recorder + 24);
          *(v310 + 2) = 1602;
          LODWORD(v315) = a4;
          v147 = v133;
          v148 = *(v145 + 16);
          LODWORD(v365) = v143;
          BYTE4(v365) = v146;
          *&v366 = &type metadata for PartialContainerRelativeShape;
          *(&v366 + 1) = v5;
          *&v367 = v141;
          *(&v367 + 1) = v140;
          *&v368 = v142;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v309 = v149;

          v150 = v148;
          AGGraphAddTraceEvent();
          v151 = v147;
          LODWORD(a4) = v315;
          outlined consume of Animation.Function(v4, v138, v137, Counter, v144, v151);

          goto LABEL_45;
        }

        v176 = v4;
        v177 = v138;
        v178 = v137;
        v179 = Counter;
        v180 = v144;
      }

      else
      {
        v176 = v4;
        v177 = v138;
        v178 = v137;
        v179 = Counter;
        v180 = v139;
      }

      outlined consume of Animation.Function(v176, v177, v178, v179, v180, v133);
LABEL_45:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v372, &v365, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
      Counter = v302;
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_191;
    }

    __break(1u);
LABEL_191:
    swift_once();
LABEL_46:
    v185 = *(&static Signpost.animationState + 1);
    v186 = static Signpost.animationState;
    v4 = word_1ED5283E8;
    v187 = HIBYTE(word_1ED5283E8);
    v188 = byte_1ED5283EA;
    v189 = static os_signpost_type_t.event.getter();
    v365 = *&v186;
    *&v366 = v185;
    BYTE8(v366) = v4;
    BYTE9(v366) = v187;
    BYTE10(v366) = v188;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v372, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v372, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
LABEL_82:
      a4 = v303;
      v25 = &v322;
      goto LABEL_121;
    }

    LODWORD(v315) = v189;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v372, &v365, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v190 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v191 = swift_allocObject();
    *(v191 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == a4)
    {
      __break(1u);
    }

    else
    {
      v138 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v192 = MEMORY[0x1E69E6870];
      *(v191 + 56) = MEMORY[0x1E69E6810];
      *(v191 + 64) = v192;
      *(v191 + 32) = Counter;
      v193 = AGGraphGetCurrentAttribute();
      if (v193 != a4)
      {
        v194 = MEMORY[0x1E69E76D0];
        *(v191 + 96) = MEMORY[0x1E69E7668];
        *(v191 + 104) = v194;
        *(v191 + 72) = v193;
        *(v191 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v191 + 144) = v195;
        *(v191 + 112) = 0xD00000000000001DLL;
        *(v191 + 120) = 0x800000018DD78E50;
        if (v187)
        {
          LOBYTE(v318) = v315;
          v319 = *&v191;
          v320[0] = &dword_18D018000;
          v321 = v190;
          v365 = *&v186;
          *&v366 = v185;
          BYTE8(v366) = v4;
          v360 = "Animation: (%p) [%d] %{public}@ updated";
          *&v361 = 39;
          BYTE8(v361) = 2;
          v196 = v305;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v318, v320, &v321, &v365, v305, &v360, &v319);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v372, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v372, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
          (*(v311 + 8))(v196, v314);
        }

        else
        {
          a4 = v186;
          if (v186 == 20)
          {
            v197 = 3;
          }

          else
          {
            v197 = 4;
          }

          Counter = bswap32(v186) | (4 * WORD1(v186));
          LODWORD(v315) = v315;
          v198 = (v311 + 16);
          v298 = *(v311 + 16);
          v199 = (v298)(v312, v305, v314);
          v200 = 0;
          LOBYTE(v360) = 1;
          v310 = v197;
          v299 = v198;
          v300 = a4;
          v307 = 16 * v197;
          v308 = v198 - 1;
          v306 = (v191 + 32);
          v4 = v191;
          do
          {
            v309 = &v293;
            MEMORY[0x1EEE9AC00](v199);
            v203 = &v293 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
            v204 = v203 + 8;
            v205 = v310;
            v206 = v203 + 8;
            do
            {
              *(v206 - 1) = 0;
              *v206 = 0;
              v206 += 16;
              v205 = (v205 - 1);
            }

            while (v205);
            v138 = v306 + 40 * v200;
            v25 = v310;
            while (1)
            {
              v207 = *(v4 + 16);
              if (v200 == v207)
              {
                break;
              }

              if (v200 >= v207)
              {
                goto LABEL_180;
              }

              ++v200;
              outlined init with copy of AnyTrackedValue(v138, &v365);
              v208 = v367;
              a4 = v4;
              v209 = *(&v367 + 1);
              __swift_project_boxed_opaque_existential_1(&v365, v367);
              v210 = v209;
              v4 = a4;
              *(v204 - 1) = CVarArg.kdebugValue(_:)(Counter | v315, v208, v210);
              *v204 = v211 & 1;
              v204 += 16;
              v201 = __swift_destroy_boxed_opaque_existential_1(&v365);
              v138 += 40;
              if (!--v25)
              {
                goto LABEL_66;
              }
            }

            LOBYTE(v360) = 0;
LABEL_66:
            a4 = v300;
            if (v300 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v203[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v203[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v203[40] == 1)
            {
              kdebug_trace_string();
            }

            if (a4 != 20 && v203[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v212 = *v308;
            v213 = v312;
            v214 = v314;
            (*v308)(v312, v314);
            v215 = __swift_project_value_buffer(v214, static OSSignpostID.continuation);
            v199 = (v298)(v213, v215, v214);
          }

          while ((v360 & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v372, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v372, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
          v216 = v314;
          v212(v312, v314);
          v212(v305, v216);
        }

        Counter = v302;
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_196:
    swift_once();
LABEL_88:
    LODWORD(v315) = v138;
    v220 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v221 = swift_allocObject();
    *(v221 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == a4)
    {
      __break(1u);
LABEL_198:
      __break(1u);
    }

    v222 = AGGraphGetAttributeGraph();
    v223 = AGGraphGetCounter();

    v224 = MEMORY[0x1E69E6870];
    *(v221 + 56) = MEMORY[0x1E69E6810];
    *(v221 + 64) = v224;
    *(v221 + 32) = v223;
    v225 = AGGraphGetCurrentAttribute();
    if (v225 == a4)
    {
      goto LABEL_198;
    }

    v226 = v221;
    v227 = MEMORY[0x1E69E76D0];
    *(v221 + 96) = MEMORY[0x1E69E7668];
    *(v221 + 104) = v227;
    *(v221 + 72) = v225;
    *(v221 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v221 + 144) = v228;
    *(v221 + 112) = 0xD00000000000001DLL;
    *(v221 + 120) = 0x800000018DD78E50;
    v25 = &v322;
    if (Counter)
    {
      LOBYTE(v316) = v315;
      v318 = v220;
      v319 = COERCE_DOUBLE(&dword_18D018000);
      v394 = *&v185;
      *&v395 = v186;
      BYTE8(v395) = v4;
      v360 = "Animation: (%p) [%d] %{public}@ started";
      *&v361 = 39;
      BYTE8(v361) = 2;
      v317 = v221;
      v229 = v293;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v316, &v319, &v318, &v394, v293, &v360, &v317);
      v230 = v301;

      (*(v311 + 8))(v229, v314);

LABEL_93:
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v372, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
      Counter = v302;
      a4 = v303;
      *(v303 + 128) = v230;
    }

    else
    {
      v231 = v185;
      v232 = v185 == 20 ? 3 : 4;
      LODWORD(v200) = bswap32(v185) | (4 * WORD1(v185));
      v4 = v315;
      v233 = v311 + 16;
      v299 = *(v311 + 16);
      v234 = (v299)(v309, v293, v314);
      v204 = 0;
      LOBYTE(v360) = 1;
      v312 = v232;
      v300 = v233;
      v307 = 16 * v232;
      v308 = (v233 - 8);
      v315 = v226;
      v305 = v231;
      v306 = (v226 + 32);
      do
      {
        v310 = &v293;
        MEMORY[0x1EEE9AC00](v234);
        Counter = &v293 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = Counter + 8;
        v236 = v312;
        v237 = (Counter + 8);
        do
        {
          *(v237 - 1) = 0;
          *v237 = 0;
          v237 += 16;
          --v236;
        }

        while (v236);
        v138 = v306 + 40 * v204;
        v238 = v312;
        while (1)
        {
          v239 = *(v315 + 16);
          if (v204 == v239)
          {
            break;
          }

          if (v204 >= v239)
          {
            goto LABEL_181;
          }

          ++v204;
          outlined init with copy of AnyTrackedValue(v138, &v394);
          v25 = *(&v396 + 1);
          v240 = v396;
          __swift_project_boxed_opaque_existential_1(&v394, v396);
          *(a4 - 8) = CVarArg.kdebugValue(_:)(v200 | v4, v240, v25);
          *a4 = v241 & 1;
          a4 += 16;
          v201 = __swift_destroy_boxed_opaque_existential_1(&v394);
          v138 += 40;
          if (!--v238)
          {
            goto LABEL_106;
          }
        }

        LOBYTE(v360) = 0;
LABEL_106:
        v242 = v305;
        if (v305 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v25 = &v322;
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

        if (v242 != 20 && *(Counter + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v243 = v309;
        v244 = *v308;
        v245 = v314;
        (*v308)(v309, v314);
        v246 = __swift_project_value_buffer(v245, static OSSignpostID.continuation);
        v234 = (v299)(v243, v246, v245);
      }

      while ((v360 & 1) != 0);
      v247 = v301;

      v248 = v314;
      v244(v309, v314);
      v244(v293, v248);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v372, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
      Counter = v302;
      a4 = v303;
      *(v303 + 128) = v247;
    }

LABEL_121:
    specialized AnimatorState.addListeners(transaction:)(v296);

    a3 = v295;
LABEL_122:
    *(a4 + 16) = v26;
    v249 = *(v25 + 432);
    *(a4 + 56) = *(v25 + 416);
    *(a4 + 72) = v249;
    v250 = *(v25 + 464);
    *(a4 + 88) = *(v25 + 448);
    *(a4 + 104) = v250;
    v251 = *(v25 + 400);
    *(a4 + 24) = *(v25 + 384);
    LOBYTE(v372[0]) = 0;
    *(a4 + 40) = v251;
    *(a4 + 120) = 0;
LABEL_123:
    v138 = *(a4 + 128);
    if (!v138)
    {
      return;
    }

    v303 = a4;
    v26 = *(Counter + 8);
    v252 = *(Counter + 192);
    v384 = *(Counter + 176);
    v385 = v252;
    v253 = *(Counter + 224);
    v386 = *(Counter + 208);
    v387 = v253;
    v254 = *(Counter + 128);
    v380 = *(Counter + 112);
    v381 = v254;
    v255 = *(Counter + 160);
    v382 = *(Counter + 144);
    v383 = v255;
    v256 = *(Counter + 64);
    v376 = *(Counter + 48);
    v377 = v256;
    v257 = *(Counter + 96);
    v378 = *(Counter + 80);
    v379 = v257;
    v258 = *(Counter + 32);
    v25 = v372;
    v374 = *(Counter + 16);
    v375 = v258;

    CornerMaskingConfiguration.animatableData.getter((v372 + 8));
    *v372 = v26;
    LOBYTE(v388) = 0;
    v259 = specialized AnimatorState.update(_:at:environment:)(v372, a3, v24);
    v201 = AGGraphGetCurrentAttribute();
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (v201 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v200) = 0;
    }

    else
    {
      LODWORD(v200) = v201;
    }

    v204 = &type metadata instantiation cache for TupleTypeDescription;
    if (v259)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_182;
      }

      goto LABEL_129;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_184;
    }

LABEL_142:
    v270 = *(v204 + 77);
    if (*(v270 + 16) >= 0x43uLL)
    {
      if (*(v270 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v388) = v200;
        BYTE4(v388) = v201 == a4;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_177;
    }

    __break(1u);
LABEL_186:
    swift_once();
LABEL_134:
    v133 = *(&static Signpost.animationState + 1);
    v136 = static Signpost.animationState;
    v137 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v262 = byte_1ED5283EA;
    v263 = static os_signpost_type_t.end.getter();
    v388 = __PAIR128__(v133, v136);
    LOBYTE(v389) = v137;
    BYTE1(v389) = Counter;
    BYTE2(v389) = v262;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_176;
    }

    LODWORD(v315) = v263;
    v264 = one-time initialization token for _signpostLog;

    if (v264 != -1)
    {
      swift_once();
    }

    v139 = _signpostLog;
    v301 = v138;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != a4)
    {
      break;
    }

    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    v315 = v141;
    v309 = v140;
    v310 = v142;
    swift_once();
    v140 = v309;
    v142 = v310;
    v141 = v315;
  }

  v138 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v265 = MEMORY[0x1E69E6870];
  *(v135 + 56) = MEMORY[0x1E69E6810];
  *(v135 + 64) = v265;
  *(v135 + 32) = v4;
  v266 = AGGraphGetCurrentAttribute();
  if (v266 == a4)
  {
    goto LABEL_188;
  }

  v4 = v135;
  v267 = MEMORY[0x1E69E76D0];
  *(v135 + 96) = MEMORY[0x1E69E7668];
  *(v135 + 104) = v267;
  *(v135 + 72) = v266;
  *(v135 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v135 + 144) = v268;
  *(v135 + 112) = 0xD00000000000001DLL;
  *(v135 + 120) = 0x800000018DD78E50;
  if (Counter)
  {
    LOBYTE(v322) = v315;
    v364[0] = &dword_18D018000;
    v334 = v139;
    *&v388 = v136;
    *(&v388 + 1) = v133;
    LOBYTE(v389) = v137;
    *&v346 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v346 + 1) = 37;
    LOBYTE(v347) = 2;
    *&v328 = v135;
    v269 = v304;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v322, v364, &v334, &v388, v304, &v346, &v328);

    (*(v311 + 8))(v269, v314);
    goto LABEL_175;
  }

  v25 = v136;
  if (v136 == 20)
  {
    v271 = 3;
  }

  else
  {
    v271 = 4;
  }

  LODWORD(v200) = bswap32(v136) | (4 * WORD1(v136));
  LODWORD(v315) = v315;
  v272 = v311 + 16;
  v305 = *(v311 + 16);
  v273 = (v305)(v313, v304, v314);
  v204 = 0;
  LOBYTE(v346) = 1;
  v311 = v272;
  v309 = (16 * v271);
  v310 = (v272 - 8);
  v307 = v25;
  v308 = (v4 + 32);
  v306 = v271;
  do
  {
    v312 = &v293;
    MEMORY[0x1EEE9AC00](v273);
    Counter = &v293 - ((v274 + 15) & 0xFFFFFFFFFFFFFFF0);
    a4 = Counter + 8;
    v275 = v271;
    v276 = (Counter + 8);
    do
    {
      *(v276 - 1) = 0;
      *v276 = 0;
      v276 += 16;
      --v275;
    }

    while (v275);
    v138 = &v308[5 * v204];
    while (1)
    {
      v277 = *(v4 + 16);
      if (v204 == v277)
      {
        break;
      }

      if (v204 >= v277)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v291 = v201;
        swift_once();
        v201 = v291;
LABEL_129:
        v260 = *(v204 + 77);
        if (*(v260 + 16) >= 0x43uLL)
        {
          if (*(v260 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v388) = v200;
            BYTE4(v388) = v201 == a4;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v302 = Counter;
          v261 = one-time initialization token for animationState;

          if (v261 != -1)
          {
            goto LABEL_186;
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_184:
        v292 = v201;
        swift_once();
        v201 = v292;
        goto LABEL_142;
      }

      ++v204;
      outlined init with copy of AnyTrackedValue(v138, &v388);
      v278 = *(&v389 + 1);
      v25 = v4;
      v279 = v390;
      __swift_project_boxed_opaque_existential_1(&v388, *(&v389 + 1));
      v280 = v279;
      v4 = v25;
      *(a4 - 8) = CVarArg.kdebugValue(_:)(v200 | v315, v278, v280);
      *a4 = v281 & 1;
      a4 += 16;
      v201 = __swift_destroy_boxed_opaque_existential_1(&v388);
      v138 += 40;
      if (!--v271)
      {
        goto LABEL_160;
      }
    }

    LOBYTE(v346) = 0;
LABEL_160:
    v25 = v307;
    if (v307 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v271 = v306;
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

    if (v25 != 20 && *(Counter + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v282 = *v310;
    v284 = v313;
    v283 = v314;
    (*v310)(v313, v314);
    v285 = __swift_project_value_buffer(v283, static OSSignpostID.continuation);
    v273 = (v305)(v284, v285, v283);
  }

  while ((v346 & 1) != 0);

  v286 = v314;
  v282(v313, v314);
  v282(v304, v286);
LABEL_175:

LABEL_176:
  specialized AnimatorState.removeListeners()();

  Counter = v302;
  *(v303 + 128) = 0;
  v25 = v372;
LABEL_177:
  v287 = *v372;
  v288 = *(v25 + 56);
  v390 = *(v25 + 40);
  v391 = v288;
  v289 = *(v25 + 88);
  v392 = *(v25 + 72);
  v393 = v289;
  v290 = *(v25 + 24);
  v388 = *(v25 + 8);
  v389 = v290;
  *(Counter + 8) = *&v372[0];
  *Counter = v287 == 1.0;
  CornerMaskingConfiguration.animatableData.setter(&v388);

  *(Counter + 240) = 1;
}