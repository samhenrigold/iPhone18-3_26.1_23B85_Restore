void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v234 = *MEMORY[0x1E69E9840];
  v200 = type metadata accessor for OSSignpostID();
  v198 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v11 = (v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = v183 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v201 = (v183 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v199 = (v183 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v202 = v183 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v183 - v22;
  if (*(a4 + 32))
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

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 124) = 1;
  }

  else if (*(a1 + 124) != 1)
  {
    goto LABEL_121;
  }

  v5 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_120;
  }

  v4 = *(a4 + 16);
  if (v5 == v4)
  {
    goto LABEL_120;
  }

  v187 = v14;
  v190 = v23;
  v191 = a1;
  AGGraphClearUpdate();
  v189 = a4;
  v27 = *(a4 + 32);

  v28 = *AGGraphGetValue();

  v186 = v27;

  AGGraphSetUpdate();
  v29 = Transaction.effectiveAnimation.getter(v28);
  if (v29)
  {
    v30 = v29;
    v197 = v11;
  }

  else
  {
    if (!a2)
    {

      v23 = v190;
      a1 = v191;
      a4 = v189;
      goto LABEL_120;
    }

    v197 = v11;

    v30 = a2;
  }

  v31 = v191;
  v32 = v5 - v4;
  v26 = *AGGraphGetValue();
  v185 = a3;
  v183[1] = v30;
  v184 = v28;
  if (!v186)
  {
    *&v220 = &type metadata for VariableBlurStyle;
    type metadata accessor for VariableBlurStyle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type, MEMORY[0x1E69E7DE0]);
    v71 = swift_dynamicCast();
    if (v71)
    {
      v72 = v227;
    }

    else
    {
      v72 = 0;
    }

    if (v71)
    {
      v73 = *(&v227 + 1);
    }

    else
    {
      v73 = 0;
    }

    v183[0] = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(v74, v28, v72, v73, v32, v26);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v76 = CurrentAttribute;
    LODWORD(v203) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v203)
    {
      v77 = 0;
    }

    else
    {
      v77 = CurrentAttribute;
    }

    v78 = v31[5];
    v224 = v31[4];
    v225 = v78;
    v226[0] = v31[6];
    v79 = v226[0];
    *(v226 + 12) = *(v31 + 108);
    v80 = v31[1];
    v220 = *v31;
    v221 = v80;
    v81 = v31[3];
    v222 = v31[2];
    v223 = v81;
    *(v233 + 12) = *(v226 + 12);
    v232 = v78;
    v233[0] = v79;
    v230 = v81;
    v231 = v224;
    v228 = v80;
    v229 = v222;
    v227 = v220;
    outlined init with copy of VariableBlurStyle(&v220, &v214);
    v82 = outlined destroy of VariableBlurStyle(&v227);
    (*(*v30 + 96))(&v208, v82);
    v84 = v208;
    v83 = v209;
    v85 = v212;
    v86 = v213;
    v206 = 0x7FF8000000000000;
    v207 = NAN;
    v204 = NAN;
    v205 = 0x3FF0000000000000;
    v214 = v208;
    v215 = v209;
    v87 = v210;
    v216 = *&v210;
    v217 = v211;
    v201 = v211;
    v218 = v212;
    LOBYTE(v219) = v213;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v214, &v207, &v206, &v205, &v204);
    v88 = v206;
    v4 = v207;
    v89 = v204;
    v90 = v205;
    if (one-time initialization token for enabledCategories != -1)
    {
      v199 = v206;
      v195 = v205;
      *&v196 = v204;
      swift_once();
      v90 = v195;
      v89 = *&v196;
      v88 = v199;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_191;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v199 = v85;
      v91 = static CustomEventTrace.recorder;
      v92 = v203;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v196) = v86;
        v93 = *(v91 + 16);
        LODWORD(v214) = v77;
        BYTE4(v214) = v76 == v92;
        v215 = &type metadata for VariableBlurStyle;
        v216 = v4;
        v217 = v88;
        v218 = v90;
        v219 = v89;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v94 = v93;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v84, v83, v87, v201, v199, v196);

        goto LABEL_82;
      }

      v95 = v84;
      v96 = v83;
      v97 = v87;
      v98 = v201;
      v99 = v199;
    }

    else
    {
      v95 = v84;
      v96 = v83;
      v97 = v87;
      v98 = v201;
      v99 = v85;
    }

    outlined consume of Animation.Function(v95, v96, v97, v98, v99, v86);
LABEL_82:
    v119 = one-time initialization token for animationState;
    v83 = v183[0];

    if (v119 == -1)
    {
LABEL_83:
      v55 = *(&static Signpost.animationState + 1);
      v54 = static Signpost.animationState;
      v56 = word_1ED5283E8;
      v57 = HIBYTE(word_1ED5283E8);
      v120 = byte_1ED5283EA;
      LODWORD(v35) = static os_signpost_type_t.begin.getter();
      v214 = v54;
      v215 = v55;
      LOBYTE(v216) = v56;
      BYTE1(v216) = v57;
      BYTE2(v216) = v120;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        goto LABEL_118;
      }

      v121 = one-time initialization token for _signpostLog;

      if (v121 != -1)
      {
        goto LABEL_194;
      }

      goto LABEL_85;
    }

LABEL_191:
    swift_once();
    goto LABEL_83;
  }

  LOBYTE(v227) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v30, v28, a3, v32, v26);
  v33 = AGGraphGetCurrentAttribute();
  v34 = v33;
  LODWORD(v35) = *MEMORY[0x1E698D3F8];
  if (v33 == *MEMORY[0x1E698D3F8])
  {
    v36 = 0;
  }

  else
  {
    v36 = v33;
  }

  v37 = v31[5];
  v224 = v31[4];
  v225 = v37;
  v226[0] = v31[6];
  v38 = v226[0];
  *(v226 + 12) = *(v31 + 108);
  v39 = v31[1];
  v220 = *v31;
  v221 = v39;
  v40 = v31[3];
  v222 = v31[2];
  v223 = v40;
  *(v233 + 12) = *(v226 + 12);
  v232 = v37;
  v233[0] = v38;
  v230 = v40;
  v231 = v224;
  v228 = v39;
  v229 = v222;
  v227 = v220;
  outlined init with copy of VariableBlurStyle(&v220, &v214);
  v41 = outlined destroy of VariableBlurStyle(&v227);
  (*(*v30 + 96))(&v208, v41);
  v23 = v208;
  v42 = v209;
  a4 = v210;
  v43 = v211;
  v44 = v212;
  v206 = 0x7FF8000000000000;
  v207 = NAN;
  v204 = NAN;
  v205 = 0x3FF0000000000000;
  v214 = v208;
  v215 = v209;
  v216 = *&v210;
  v217 = v211;
  v218 = v212;
  LODWORD(v203) = v213;
  LOBYTE(v219) = v213;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v214, &v207, &v206, &v205, &v204);
  v45 = v206;
  v4 = v207;
  v46 = v204;
  v47 = v205;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_26;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v48 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v197 = v43;
      v49 = *(v48 + 16);
      LODWORD(v214) = v36;
      BYTE4(v214) = v34 == v35;
      v215 = &type metadata for VariableBlurStyle;
      v216 = v4;
      v217 = v45;
      v218 = v47;
      v219 = v46;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v50 = v49;
      v51 = a4;
      v52 = v50;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v23, v42, v51, v197, v44, v203);
    }

    else
    {
      outlined consume of Animation.Function(v23, v42, a4, v43, v44, v203);
    }

    v53 = one-time initialization token for animationState;

    if (v53 != -1)
    {
      goto LABEL_189;
    }

LABEL_26:
    v55 = *(&static Signpost.animationState + 1);
    v54 = static Signpost.animationState;
    v56 = word_1ED5283E8;
    v57 = HIBYTE(word_1ED5283E8);
    v58 = byte_1ED5283EA;
    v59 = static os_signpost_type_t.event.getter();
    v214 = v54;
    v215 = v55;
    LOBYTE(v216) = v56;
    BYTE1(v216) = v57;
    BYTE2(v216) = v58;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_79:
      a1 = v191;
      a4 = v189;
      goto LABEL_119;
    }

    LODWORD(v203) = v59;
    v60 = one-time initialization token for _signpostLog;

    if (v60 != -1)
    {
      swift_once();
    }

    v61 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v35)
    {
      __break(1u);
    }

    else
    {
      v63 = v35;
      v35 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v65 = MEMORY[0x1E69E6870];
      *(v62 + 56) = MEMORY[0x1E69E6810];
      *(v62 + 64) = v65;
      *(v62 + 32) = Counter;
      v66 = AGGraphGetCurrentAttribute();
      if (v66 != v63)
      {
        v67 = v62;
        v68 = MEMORY[0x1E69E76D0];
        *(v62 + 96) = MEMORY[0x1E69E7668];
        *(v62 + 104) = v68;
        *(v62 + 72) = v66;
        *(v62 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v62 + 144) = v69;
        *(v62 + 112) = 0xD000000000000011;
        *(v62 + 120) = 0x800000018DD7EB90;
        if (v57)
        {
          LOBYTE(v204) = v203;
          v206 = v61;
          v207 = COERCE_DOUBLE(&dword_18D018000);
          v214 = v54;
          v215 = v55;
          LOBYTE(v216) = v56;
          v208 = "Animation: (%p) [%d] %{public}@ updated";
          v209 = 39;
          LOBYTE(v210) = 2;
          v205 = v62;
          v70 = v199;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v204, &v207, &v206, &v214, v199, &v208, &v205);

          (*(v198 + 8))(v70, v200);
        }

        else
        {
          v100 = v54;
          if (v54 == 20)
          {
            a1 = 3;
          }

          else
          {
            a1 = 4;
          }

          LODWORD(v54) = bswap32(v54) | (4 * (v54 >> 16));
          LODWORD(v203) = v203;
          v101 = (v198 + 16);
          v187 = *(v198 + 16);
          v102 = (v187)(v201, v199, v200);
          v23 = 0;
          LOBYTE(v208) = 1;
          v188 = v101;
          v195 = 16 * a1;
          v196 = v101 - 8;
          v193 = v100;
          v194 = v62 + 32;
          v192 = a1;
          do
          {
            v197 = v183;
            MEMORY[0x1EEE9AC00](v102);
            a4 = v183 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
            v105 = a4 + 8;
            v106 = a1;
            v107 = (a4 + 8);
            do
            {
              *(v107 - 1) = 0;
              *v107 = 0;
              v107 += 16;
              --v106;
            }

            while (v106);
            v108 = (v194 + 40 * v23);
            while (1)
            {
              v109 = *(v67 + 16);
              if (v23 == v109)
              {
                break;
              }

              if (v23 >= v109)
              {
                goto LABEL_178;
              }

              ++v23;
              outlined init with copy of AnyTrackedValue(v108, &v214);
              v100 = v67;
              v110 = v217;
              v111 = v218;
              __swift_project_boxed_opaque_existential_1(&v214, v217);
              v112 = v111;
              v67 = v100;
              *(v105 - 8) = CVarArg.kdebugValue(_:)(v54 | v203, v110, v112);
              *v105 = v113 & 1;
              v105 += 16;
              v103 = __swift_destroy_boxed_opaque_existential_1(&v214);
              v108 += 5;
              if (!--a1)
              {
                goto LABEL_63;
              }
            }

            LOBYTE(v208) = 0;
LABEL_63:
            v100 = v193;
            if (v193 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            a1 = v192;
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

            if (v100 != 20 && *(a4 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v114 = *v196;
            v115 = v200;
            v116 = v201;
            (*v196)(v201, v200);
            v117 = __swift_project_value_buffer(v115, static OSSignpostID.continuation);
            v102 = (v187)(v116, v117, v115);
          }

          while ((v208 & 1) != 0);

          v118 = v200;
          v114(v201, v200);
          v114(v199, v118);
        }

        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_85:
    LODWORD(v201) = v35;
    v199 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_18DDAF080;
    v123 = AGGraphGetCurrentAttribute();
    v124 = v203;
    if (v123 == v203)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v125 = AGGraphGetAttributeGraph();
    v126 = AGGraphGetCounter();

    v127 = MEMORY[0x1E69E6870];
    *(v122 + 56) = MEMORY[0x1E69E6810];
    *(v122 + 64) = v127;
    *(v122 + 32) = v126;
    v128 = AGGraphGetCurrentAttribute();
    if (v128 == v124)
    {
      goto LABEL_196;
    }

    v129 = MEMORY[0x1E69E76D0];
    *(v122 + 96) = MEMORY[0x1E69E7668];
    *(v122 + 104) = v129;
    *(v122 + 72) = v128;
    v203 = v122;
    *(v122 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v203[18] = v130;
    v203[14] = 0xD000000000000011;
    v203[15] = 0x800000018DD7EB90;
    v131 = v203;
    if (v57)
    {
      LOBYTE(v204) = v201;
      v206 = v199;
      v207 = COERCE_DOUBLE(&dword_18D018000);
      v214 = v54;
      v215 = v55;
      LOBYTE(v216) = v56;
      v208 = "Animation: (%p) [%d] %{public}@ started";
      v209 = 39;
      LOBYTE(v210) = 2;
      v205 = v203;
      v132 = v187;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v204, &v207, &v206, &v214, v187, &v208, &v205);
      v83 = v183[0];

      (*(v198 + 8))(v132, v200);
    }

    else
    {
      v133 = v54;
      a4 = v54 == 20 ? 3 : 4;
      LODWORD(v54) = bswap32(v54) | (4 * (v54 >> 16));
      LODWORD(v100) = v201;
      v134 = v198 + 16;
      v188 = *(v198 + 16);
      v135 = v188(v197, v187, v200);
      v136 = v131;
      v105 = 0;
      LOBYTE(v208) = 1;
      v192 = v134;
      v193 = a4;
      v199 = (v134 - 8);
      v195 = (v136 + 4);
      v196 = 16 * a4;
      v194 = v133;
      do
      {
        v201 = v183;
        MEMORY[0x1EEE9AC00](v135);
        v23 = v183 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
        a1 = v23 + 8;
        v138 = a4;
        v139 = (v23 + 8);
        do
        {
          *(v139 - 1) = 0;
          *v139 = 0;
          v139 += 16;
          --v138;
        }

        while (v138);
        v108 = (v195 + 40 * v105);
        while (1)
        {
          v140 = v203[2];
          if (v105 == v140)
          {
            break;
          }

          if (v105 >= v140)
          {
            goto LABEL_179;
          }

          ++v105;
          outlined init with copy of AnyTrackedValue(v108, &v214);
          v141 = v217;
          v142 = v218;
          __swift_project_boxed_opaque_existential_1(&v214, v217);
          *(a1 - 8) = CVarArg.kdebugValue(_:)(v54 | v100, v141, v142);
          *a1 = v143 & 1;
          a1 += 16;
          v103 = __swift_destroy_boxed_opaque_existential_1(&v214);
          v108 += 5;
          if (!--a4)
          {
            goto LABEL_102;
          }
        }

        LOBYTE(v208) = 0;
LABEL_102:
        v144 = v194;
        if (v194 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        a4 = v193;
        if (*(v23 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v23 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v23 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v144 != 20 && *(v23 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v145 = v200;
        v146 = *v199;
        v147 = v197;
        (*v199)(v197, v200);
        v148 = __swift_project_value_buffer(v145, static OSSignpostID.continuation);
        v135 = v188(v147, v148, v145);
      }

      while ((v208 & 1) != 0);
      v83 = v183[0];

      v149 = v200;
      v146(v197, v200);
      v146(v187, v149);
    }

LABEL_118:
    a4 = v189;
    *(v189 + 32) = v83;
    a1 = v191;
LABEL_119:
    v23 = v190;
    a3 = v185;
    specialized AnimatorState.addListeners(transaction:)(v184);

LABEL_120:
    *(a4 + 16) = v5;
    *(a4 + 24) = 0;
LABEL_121:
    v105 = *(a4 + 32);
    if (!v105)
    {
      return;
    }

    v214 = *a1;

    LOBYTE(v227) = 0;
    v150 = specialized AnimatorState.update(_:at:environment:)(&v214, a3, v26);
    v103 = AGGraphGetCurrentAttribute();
    LODWORD(v54) = *MEMORY[0x1E698D3F8];
    if (v103 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v100) = 0;
    }

    else
    {
      LODWORD(v100) = v103;
    }

    v108 = &type metadata instantiation cache for TupleTypeDescription;
    if (v150)
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
    v164 = v108[77];
    if (*(v164 + 16) >= 0x43uLL)
    {
      if (*(v164 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v227) = v100;
        BYTE4(v227) = v103 == v54;
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
    v35 = *(&static Signpost.animationState + 1);
    v153 = static Signpost.animationState;
    v43 = word_1ED5283E8;
    v34 = HIBYTE(word_1ED5283E8);
    v154 = byte_1ED5283EA;
    v155 = static os_signpost_type_t.end.getter();
    v201 = v153;
    v227 = __PAIR128__(v35, v153);
    v199 = v35;
    LOBYTE(v228) = v43;
    BYTE1(v228) = v34;
    BYTE2(v228) = v154;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    LODWORD(v197) = v155;
    v156 = one-time initialization token for _signpostLog;
    v44 = v192;

    if (v156 != -1)
    {
      swift_once();
    }

    v189 = a4;
    v191 = a1;
    v157 = COERCE_DOUBLE(_signpostLog);
    v190 = v23;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDAF080;
    v158 = AGGraphGetCurrentAttribute();
    v36 = v203;
    if (v158 != v203)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    *&v196 = v46;
    v197 = v45;
    v195 = v47;
    swift_once();
    v47 = v195;
    v46 = *&v196;
    v45 = v197;
  }

  a4 = AGGraphGetAttributeGraph();
  v23 = AGGraphGetCounter();

  v159 = MEMORY[0x1E69E6870];
  *(v42 + 56) = MEMORY[0x1E69E6810];
  *(v42 + 64) = v159;
  *(v42 + 32) = v23;
  v160 = AGGraphGetCurrentAttribute();
  v44 = v197;
  if (v160 == v36)
  {
    goto LABEL_186;
  }

  v161 = MEMORY[0x1E69E76D0];
  *(v42 + 96) = MEMORY[0x1E69E7668];
  *(v42 + 104) = v161;
  *(v42 + 72) = v160;
  *(v42 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v42 + 144) = v162;
  *(v42 + 112) = 0xD000000000000011;
  *(v42 + 120) = 0x800000018DD7EB90;
  v163 = v190;
  if (v34)
  {
    LOBYTE(v205) = v44;
    v207 = v157;
    v208 = &dword_18D018000;
    *&v227 = v201;
    *(&v227 + 1) = v199;
    LOBYTE(v228) = v43;
    *&v220 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v220 + 1) = 37;
    LOBYTE(v221) = 2;
    v206 = v42;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v205, &v208, &v207, &v227, v190, &v220, &v206);

    (*(v198 + 8))(v163, v200);
    goto LABEL_173;
  }

  v194 = v201;
  if (v201 == 20)
  {
    v165 = 3;
  }

  else
  {
    v165 = 4;
  }

  LODWORD(v100) = bswap32(v201) | (4 * (v201 >> 16));
  LODWORD(v203) = v44;
  v166 = v198 + 16;
  v193 = *(v198 + 16);
  v167 = v193(v202, v190, v200);
  v23 = 0;
  LOBYTE(v220) = 1;
  v201 = v165;
  v198 = v166;
  v196 = 16 * v165;
  v197 = (v166 - 8);
  v195 = v42 + 32;
  v105 = v42;
  do
  {
    v199 = v183;
    MEMORY[0x1EEE9AC00](v167);
    a4 = v183 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = (a4 + 8);
    v169 = v201;
    v170 = (a4 + 8);
    do
    {
      *(v170 - 1) = 0;
      *v170 = 0;
      v170 += 16;
      --v169;
    }

    while (v169);
    v108 = (v195 + 40 * v23);
    a1 = v201;
    while (1)
    {
      v171 = *(v105 + 16);
      if (v23 == v171)
      {
        break;
      }

      if (v23 >= v171)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v181 = v103;
        swift_once();
        v103 = v181;
LABEL_127:
        v151 = v108[77];
        if (*(v151 + 16) >= 0x43uLL)
        {
          if (*(v151 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v227) = v100;
            BYTE4(v227) = v103 == v54;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          LODWORD(v203) = v54;
          v152 = one-time initialization token for animationState;
          v192 = v105;

          if (v152 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v182 = v103;
        swift_once();
        v103 = v182;
        goto LABEL_140;
      }

      ++v23;
      outlined init with copy of AnyTrackedValue(v108, &v227);
      v172 = *(&v228 + 1);
      v173 = v229;
      __swift_project_boxed_opaque_existential_1(&v227, *(&v228 + 1));
      *(v54 - 1) = CVarArg.kdebugValue(_:)(v100 | v203, v172, v173);
      *v54 = v174 & 1;
      v54 += 16;
      v103 = __swift_destroy_boxed_opaque_existential_1(&v227);
      v108 += 5;
      if (!--a1)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v220) = 0;
LABEL_158:
    v175 = v194;
    if (v194 == 20)
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

    if (v175 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v176 = *v197;
    v177 = v202;
    v178 = v200;
    (*v197)(v202, v200);
    v179 = __swift_project_value_buffer(v178, static OSSignpostID.continuation);
    v167 = v193(v177, v179, v178);
  }

  while ((v220 & 1) != 0);

  v180 = v200;
  v176(v202, v200);
  v176(v190, v180);
LABEL_173:

  a1 = v191;
  a4 = v189;
LABEL_174:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_175:
  *a1 = v214;
  *(a1 + 124) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v241 = *MEMORY[0x1E69E9840];
  v214 = type metadata accessor for OSSignpostID();
  v210 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v13 = (&v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v192 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v212 = (&v192 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v192 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v213 = &v192 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v204 = &v192 - v25;
  if (*(a4 + 56))
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
    a1[64] = 1;
  }

  else if (a1[64] != 1)
  {
    goto LABEL_122;
  }

  v29 = *a1;
  v30 = *(a1 + 2);
  if (*(a4 + 48))
  {
    goto LABEL_121;
  }

  v31 = *(a4 + 32);
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v29, *(a4 + 16)), vceqq_f64(v30, v31)))))
  {
    goto LABEL_121;
  }

  v209 = *(a4 + 16);
  v215 = v31;
  v208 = a2;
  v211 = v13;
  v192 = v16;
  v193 = v21;
  v198 = v30;
  v199 = v29;
  v196 = a3;
  AGGraphClearUpdate();
  v32 = *(a4 + 16);
  v236 = *a4;
  v237 = v32;
  v33 = *(a4 + 48);
  v238 = *(a4 + 32);
  v239 = v33;
  v240 = *(a4 + 64);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v236, &v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
  v34 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v197 = v34;
  v35 = Transaction.effectiveAnimation.getter(v34);
  if (v35)
  {
    v36 = v35;
    a3 = v196;
  }

  else
  {
    a3 = v196;
    v36 = v208;
    if (!v208)
    {
      goto LABEL_120;
    }
  }

  v203 = a4;
  v37 = *(&v239 + 1);
  v38 = v199.f64[0] - *&v209;
  v39 = v199.f64[1] - *(&v209 + 1);
  v40 = v198.f64[0] - v215.f64[0];
  v41 = v198.f64[1] - v215.f64[1];
  v28 = *AGGraphGetValue();
  v200 = a1;
  v194 = v36;
  if (!v37)
  {
    *&v219.f64[0] = &type metadata for ViewGeometry;
    type metadata accessor for ViewGeometry.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v61 = swift_dynamicCast();
    if (v61)
    {
      v62 = *&v232.f64[0];
    }

    else
    {
      v62 = 0;
    }

    if (v61)
    {
      v63 = *&v232.f64[1];
    }

    else
    {
      v63 = 0;
    }

    v64 = v197;

    v66 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v65, v64, v62, v63, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v38, v39, v40, v41, v28);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v68 = CurrentAttribute;
    v69 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v70 = 0;
    }

    else
    {
      v70 = CurrentAttribute;
    }

    v71 = *(a1 + 1);
    v219 = *a1;
    v220 = v71;
    v72 = *(a1 + 3);
    v221 = *(a1 + 2);
    v222 = v72;
    v232 = v219;
    v233 = v71;
    v234 = v221;
    v235 = v72;
    outlined init with copy of ViewGeometry(&v219, &v228);
    v73 = outlined destroy of ViewGeometry(&v232);
    (*(*v36 + 96))(&v224, v73);
    v74 = v224;
    v75 = v226;
    v223 = 0x7FF8000000000000;
    v217 = 0x3FF0000000000000;
    v218 = 0x7FF8000000000000;
    v216 = NAN;
    v228 = v224;
    *&v209 = v225;
    v229 = v225;
    v212 = *(&v225 + 1);
    *&v230 = v226;
    LODWORD(v215.f64[0]) = v227;
    BYTE8(v230) = v227;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v228, &v223, &v218, &v217, &v216);
    v4 = v223;
    v6 = v217;
    v5 = v218;
    v7 = v216;
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
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v76 = static CustomEventTrace.recorder) != 0)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v208 = v75;
        v77 = *(v76 + 16);
        LODWORD(v228) = v70;
        BYTE4(v228) = v68 == v69;
        *(&v228 + 1) = &type metadata for ViewGeometry;
        *&v229 = v4;
        *(&v229 + 1) = v5;
        *&v230 = v6;
        *(&v230 + 1) = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v78 = v77;
        v79 = v66;
        v80 = v78;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v74.f64[0], *&v74.f64[1], v209, v212, v208, LOBYTE(v215.f64[0]));

        v66 = v79;
      }

      else
      {
        outlined consume of Animation.Function(*&v74.f64[0], *&v74.f64[1], v209, v212, v75, LOBYTE(v215.f64[0]));
      }

      v86 = one-time initialization token for animationState;
      v195 = v66;

      if (v86 == -1)
      {
        goto LABEL_42;
      }
    }

    swift_once();
LABEL_42:
    v87 = *(&static Signpost.animationState + 1);
    *&v88 = static Signpost.animationState;
    LOBYTE(Counter) = word_1ED5283E8;
    LOBYTE(v53) = HIBYTE(word_1ED5283E8);
    v89 = byte_1ED5283EA;
    v90 = static os_signpost_type_t.begin.getter();
    v228 = __PAIR128__(*&v87, *&v88);
    LOBYTE(v229) = Counter;
    BYTE1(v229) = v53;
    BYTE2(v229) = v89;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v102 = v195;

      goto LABEL_118;
    }

    LODWORD(v215.f64[0]) = v90;
    v91 = v69;
    v92 = one-time initialization token for _signpostLog;

    if (v92 != -1)
    {
      goto LABEL_195;
    }

    goto LABEL_44;
  }

  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v236, &v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v232.f64[0]) = 0;
  v42.n128_f64[0] = v38;
  v43.n128_f64[0] = v39;
  v44.n128_f64[0] = v40;
  v195 = v37;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v36, v197, a3, v42, v43, v44, v41, v28);
  v45 = AGGraphGetCurrentAttribute();
  v46 = v45;
  LODWORD(v47) = *MEMORY[0x1E698D3F8];
  if (v45 == *MEMORY[0x1E698D3F8])
  {
    v48 = 0;
  }

  else
  {
    v48 = v45;
  }

  LODWORD(v215.f64[0]) = v48;
  v49 = *(a1 + 1);
  v228 = *a1;
  v229 = v49;
  v50 = *(a1 + 3);
  v230 = *(a1 + 2);
  v231 = v50;
  v219 = v228;
  v220 = v49;
  v221 = v230;
  v222 = v50;
  outlined init with copy of ViewGeometry(&v228, &v232);
  v51 = outlined destroy of ViewGeometry(&v219);
  (*(*v36 + 96))(&v224, v51);
  v52 = *&v224.f64[1];
  v53 = *&v224.f64[0];
  v54 = *(&v225 + 1);
  v55 = v225;
  Counter = v226;
  LODWORD(v57) = v227;
  v223 = 0x7FF8000000000000;
  v217 = 0x3FF0000000000000;
  v218 = 0x7FF8000000000000;
  v216 = NAN;
  v232 = v224;
  v233 = v225;
  *&v234 = v226;
  BYTE8(v234) = v227;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v232, &v223, &v218, &v217, &v216);
  v4 = v223;
  v6 = v217;
  v5 = v218;
  v7 = v216;
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
        v211 = Counter;
        Counter = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          LODWORD(v209) = v47;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          LODWORD(v208) = v57;
          v58 = Counter[2];
          LODWORD(v232.f64[0]) = LODWORD(v215.f64[0]);
          BYTE4(v232.f64[0]) = v46 == v47;
          *&v232.f64[1] = &type metadata for ViewGeometry;
          *&v233 = v4;
          *(&v233 + 1) = v5;
          *&v234 = v6;
          *(&v234 + 1) = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v215.f64[0] = v59;

          v60 = v58;
          LODWORD(v47) = v209;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v53, v52, v55, v54, v211, v208);

          goto LABEL_52;
        }

        v81 = v53;
        v82 = v52;
        v83 = v55;
        v84 = v54;
        v85 = v211;
      }

      else
      {
        v81 = v53;
        v82 = v52;
        v83 = v55;
        v84 = v54;
        v85 = Counter;
      }

      outlined consume of Animation.Function(v81, v82, v83, v84, v85, v57);
LABEL_52:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v236, &v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_53;
      }

      goto LABEL_190;
    }

    __break(1u);
LABEL_190:
    swift_once();
LABEL_53:
    v87 = *(&static Signpost.animationState + 1);
    *&v88 = static Signpost.animationState;
    v103 = word_1ED5283E8;
    v91 = HIBYTE(word_1ED5283E8);
    v104 = byte_1ED5283EA;
    v105 = static os_signpost_type_t.event.getter();
    v232 = __PAIR128__(*&v87, *&v88);
    LOBYTE(v233) = v103;
    BYTE1(v233) = v91;
    BYTE2(v233) = v104;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
LABEL_89:
      a1 = v200;
      a4 = v203;
      a3 = v196;
      goto LABEL_119;
    }

    LODWORD(v215.f64[0]) = v105;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v236, &v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v106 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v47)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v53) = v47;
      v108 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v109 = MEMORY[0x1E69E6870];
      *(v107 + 56) = MEMORY[0x1E69E6810];
      *(v107 + 64) = v109;
      *(v107 + 32) = Counter;
      v110 = AGGraphGetCurrentAttribute();
      if (v110 != v53)
      {
        v47 = v107;
        v111 = MEMORY[0x1E69E76D0];
        *(v107 + 96) = MEMORY[0x1E69E7668];
        *(v107 + 104) = v111;
        *(v107 + 72) = v110;
        *(v107 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v107 + 144) = v112;
        strcpy((v107 + 112), "ViewGeometry");
        *(v107 + 125) = 0;
        *(v107 + 126) = -5120;
        if (v91)
        {
          LOBYTE(v216) = LOBYTE(v215.f64[0]);
          v217 = v107;
          v218 = v106;
          v232.f64[0] = v88;
          v232.f64[1] = v87;
          LOBYTE(v233) = v103;
          v223 = &dword_18D018000;
          *&v224.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v224.f64[1] = 39;
          LOBYTE(v225) = 2;
          v113 = v193;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v216, &v223, &v218, &v232, v193, &v224, &v217);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
          (*(v210 + 8))(v113, v214);
        }

        else
        {
          v114 = LOBYTE(v88);
          if (LOBYTE(v88) == 20)
          {
            v115 = 3;
          }

          else
          {
            v115 = 4;
          }

          v116 = (bswap32(LOWORD(v88)) | (4 * HIWORD(LODWORD(v88))));
          LODWORD(v215.f64[0]) = LOBYTE(v215.f64[0]);
          v117 = (v210 + 16);
          v201 = *(v210 + 16);
          v118 = v201(v212, v193, v214);
          a1 = 0;
          LOBYTE(v224.f64[0]) = 1;
          v211 = v115;
          v202 = v117;
          v207 = 16 * v115;
          v208 = v117 - 1;
          v205 = v114;
          v206 = v47 + 32;
          v119 = v47;
          do
          {
            *&v209 = &v192;
            MEMORY[0x1EEE9AC00](v118);
            v122 = &v192 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
            v123 = v122 + 8;
            v124 = v211;
            v125 = v122 + 8;
            do
            {
              *(v125 - 1) = 0;
              *v125 = 0;
              v125 += 16;
              --v124;
            }

            while (v124);
            v126 = v206 + 40 * a1;
            v127 = v211;
            while (1)
            {
              v128 = *(v47 + 16);
              if (a1 == v128)
              {
                break;
              }

              if (a1 >= v128)
              {
                goto LABEL_179;
              }

              ++a1;
              outlined init with copy of AnyTrackedValue(v126, &v232);
              v129 = *(&v233 + 1);
              v130 = v234;
              __swift_project_boxed_opaque_existential_1(&v232, *(&v233 + 1));
              v131 = v130;
              v47 = v119;
              *(v123 - 1) = CVarArg.kdebugValue(_:)(v116 | LODWORD(v215.f64[0]), v129, v131);
              *v123 = v132 & 1;
              v123 += 16;
              v120 = __swift_destroy_boxed_opaque_existential_1(&v232);
              v126 += 40;
              if (!--v127)
              {
                goto LABEL_73;
              }
            }

            LOBYTE(v224.f64[0]) = 0;
LABEL_73:
            v133 = v205;
            if (v205 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v122[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v122[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v122[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v133 != 20 && v122[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v134 = *v208;
            v135 = v212;
            v136 = v214;
            (*v208)(v212, v214);
            v137 = __swift_project_value_buffer(v136, static OSSignpostID.continuation);
            v118 = v201(v135, v137, v136);
            v47 = v119;
          }

          while ((LOBYTE(v224.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
          v138 = v214;
          v134(v212, v214);
          v134(v193, v138);
        }

        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_195:
    swift_once();
LABEL_44:
    v93 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v91)
    {
      __break(1u);
LABEL_197:
      __break(1u);
    }

    v47 = AGGraphGetAttributeGraph();
    v95 = AGGraphGetCounter();

    v96 = MEMORY[0x1E69E6870];
    *(v94 + 56) = MEMORY[0x1E69E6810];
    *(v94 + 64) = v96;
    *(v94 + 32) = v95;
    v97 = AGGraphGetCurrentAttribute();
    if (v97 == v91)
    {
      goto LABEL_197;
    }

    v98 = *&v94;
    v99 = MEMORY[0x1E69E76D0];
    *(v94 + 96) = MEMORY[0x1E69E7668];
    *(v94 + 104) = v99;
    *(v94 + 72) = v97;
    *(v94 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v94 + 144) = v100;
    strcpy((v94 + 112), "ViewGeometry");
    *(v94 + 125) = 0;
    *(v94 + 126) = -5120;
    if (v53)
    {
      LOBYTE(v216) = LOBYTE(v215.f64[0]);
      v217 = v94;
      v218 = v93;
      *&v228 = v88;
      *(&v228 + 1) = v87;
      LOBYTE(v229) = Counter;
      v223 = &dword_18D018000;
      *&v224.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v224.f64[1] = 39;
      LOBYTE(v225) = 2;
      v101 = v192;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v216, &v223, &v218, &v228, v192, &v224, &v217);
      v102 = v195;

      (*(v210 + 8))(v101, v214);
    }

    else
    {
      v139 = LOBYTE(v88);
      v140 = LOBYTE(v88) == 20 ? 3 : 4;
      v116 = (bswap32(LOWORD(v88)) | (4 * HIWORD(LODWORD(v88))));
      v141 = LOBYTE(v215.f64[0]);
      v142 = (v210 + 16);
      v201 = *(v210 + 16);
      v143 = v201(v211, v192, v214);
      v144 = v98;
      v127 = 0;
      LOBYTE(v224.f64[0]) = 1;
      v202 = v142;
      v208 = (16 * v140);
      *&v209 = v142 - 1;
      v215.f64[0] = v144;
      v206 = v139;
      v207 = *&v144 + 32;
      v205 = v140;
      do
      {
        v212 = &v192;
        MEMORY[0x1EEE9AC00](v143);
        a1 = &v192 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
        v123 = a1 + 8;
        v146 = v140;
        v147 = a1 + 8;
        do
        {
          *(v147 - 1) = 0;
          *v147 = 0;
          v147 += 16;
          --v146;
        }

        while (v146);
        v148 = v207 + 40 * v127;
        while (1)
        {
          v149 = *(*&v215.f64[0] + 16);
          if (v127 == v149)
          {
            break;
          }

          if (v127 >= v149)
          {
            goto LABEL_180;
          }

          ++v127;
          outlined init with copy of AnyTrackedValue(v148, &v228);
          v150 = *(&v229 + 1);
          v47 = v230;
          __swift_project_boxed_opaque_existential_1(&v228, *(&v229 + 1));
          *(v123 - 1) = CVarArg.kdebugValue(_:)(v116 | v141, v150, v47);
          *v123 = v151 & 1;
          v123 += 16;
          v120 = __swift_destroy_boxed_opaque_existential_1(&v228);
          v148 += 40;
          if (!--v140)
          {
            goto LABEL_102;
          }
        }

        LOBYTE(v224.f64[0]) = 0;
LABEL_102:
        v152 = v206;
        if (v206 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v140 = v205;
        if (a1[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v152 != 20 && a1[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v153 = *v209;
        v154 = v211;
        v47 = v214;
        (*v209)(v211, v214);
        v155 = __swift_project_value_buffer(v47, static OSSignpostID.continuation);
        v143 = v201(v154, v155, v47);
      }

      while ((LOBYTE(v224.f64[0]) & 1) != 0);
      v102 = v195;

      v156 = v214;
      v153(v211, v214);
      v153(v192, v156);
    }

LABEL_118:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v236, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
    a4 = v203;
    *(v203 + 56) = v102;
    a1 = v200;
    a3 = v196;
LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v197);

LABEL_120:

    v30 = v198;
    v29 = v199;
LABEL_121:
    *(a4 + 16) = v29;
    *(a4 + 32) = v30;
    *(a4 + 48) = 0;
LABEL_122:
    v127 = *(a4 + 56);
    if (!v127)
    {
      return;
    }

    v203 = a4;
    v157 = *(a1 + 2);
    v232 = *a1;
    v233 = v157;

    LOBYTE(v236) = 0;
    v158 = specialized AnimatorState.update(_:at:environment:)(&v232, a3, v28);
    v120 = AGGraphGetCurrentAttribute();
    LODWORD(v47) = *MEMORY[0x1E698D3F8];
    if (v120 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v123) = 0;
    }

    else
    {
      LODWORD(v123) = v120;
    }

    v116 = &type metadata instantiation cache for TupleTypeDescription;
    if (v158)
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
    v171 = v116[77];
    if (*(v171 + 16) >= 0x43uLL)
    {
      if (*(v171 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v236) = v123;
        BYTE4(v236) = v120 == v47;
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
    v57 = static Signpost.animationState;
    v55 = word_1ED5283E8;
    v46 = HIBYTE(word_1ED5283E8);
    v161 = byte_1ED5283EA;
    v162 = static os_signpost_type_t.end.getter();
    v236 = __PAIR128__(v54, v57);
    LOBYTE(v237) = v55;
    BYTE1(v237) = v46;
    BYTE2(v237) = v161;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    LODWORD(v215.f64[0]) = v162;
    v163 = one-time initialization token for _signpostLog;
    Counter = v202;

    if (v163 != -1)
    {
      swift_once();
    }

    v200 = a1;
    v52 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v53 = COERCE_DOUBLE(swift_allocObject());
    *(v53 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v47)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    swift_once();
  }

  Counter = AGGraphGetAttributeGraph();
  v164 = AGGraphGetCounter();

  v165 = MEMORY[0x1E69E6870];
  *(v53 + 56) = MEMORY[0x1E69E6810];
  *(v53 + 64) = v165;
  *(v53 + 32) = v164;
  v166 = AGGraphGetCurrentAttribute();
  if (v166 == v47)
  {
    goto LABEL_187;
  }

  v167 = *&v53;
  v168 = MEMORY[0x1E69E76D0];
  *(v53 + 96) = MEMORY[0x1E69E7668];
  *(v53 + 104) = v168;
  *(v53 + 72) = v166;
  *(v53 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v53 + 144) = v169;
  strcpy((v53 + 112), "ViewGeometry");
  *(v53 + 125) = 0;
  *(v53 + 126) = -5120;
  if (v46)
  {
    LOBYTE(v218) = LOBYTE(v215.f64[0]);
    *&v228 = &dword_18D018000;
    v223 = v53;
    *&v224.f64[0] = v52;
    *&v236 = v57;
    *(&v236 + 1) = v54;
    LOBYTE(v237) = v55;
    *&v219.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v219.f64[1] = 37;
    LOBYTE(v220) = 2;
    v170 = v204;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v218, &v228, &v224, &v236, v204, &v219, &v223);

    (*(v210 + 8))(v170, v214);
    goto LABEL_174;
  }

  v172 = v57;
  if (v57 == 20)
  {
    v47 = 3;
  }

  else
  {
    v47 = 4;
  }

  v116 = (bswap32(v57) | (4 * WORD1(v57)));
  v127 = LOBYTE(v215.f64[0]);
  v173 = v210 + 16;
  v205 = *(v210 + 16);
  v174 = v205(v213, v204, v214);
  a1 = 0;
  LOBYTE(v219.f64[0]) = 1;
  v212 = v47;
  v210 = v173;
  v208 = (16 * v47);
  *&v209 = v173 - 8;
  v215.f64[0] = v167;
  v206 = v172;
  v207 = *&v167 + 32;
  do
  {
    v211 = &v192;
    MEMORY[0x1EEE9AC00](v174);
    v176 = &v192 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
    v123 = v176 + 8;
    v177 = v212;
    v178 = v176 + 8;
    do
    {
      *(v178 - 1) = 0;
      *v178 = 0;
      v178 += 16;
      --v177;
    }

    while (v177);
    v179 = v207 + 40 * a1;
    v180 = v212;
    while (1)
    {
      v181 = *(*&v215.f64[0] + 16);
      if (a1 == v181)
      {
        break;
      }

      if (a1 >= v181)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v190 = v120;
        swift_once();
        v120 = v190;
LABEL_128:
        v159 = v116[77];
        if (*(v159 + 16) >= 0x43uLL)
        {
          if (*(v159 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v236) = v123;
            BYTE4(v236) = v120 == v47;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v160 = one-time initialization token for animationState;
          v202 = v127;

          if (v160 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v191 = v120;
        swift_once();
        v120 = v191;
        goto LABEL_141;
      }

      ++a1;
      outlined init with copy of AnyTrackedValue(v179, &v236);
      v182 = *(&v237 + 1);
      v47 = v238;
      __swift_project_boxed_opaque_existential_1(&v236, *(&v237 + 1));
      *(v123 - 1) = CVarArg.kdebugValue(_:)(v116 | v127, v182, v47);
      *v123 = v183 & 1;
      v123 += 16;
      v120 = __swift_destroy_boxed_opaque_existential_1(&v236);
      v179 += 40;
      if (!--v180)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v219.f64[0]) = 0;
LABEL_159:
    v184 = v206;
    if (v206 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v176[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v176[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v176[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v184 != 20 && v176[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v185 = *v209;
    v186 = v213;
    v47 = v214;
    (*v209)(v213, v214);
    v187 = __swift_project_value_buffer(v47, static OSSignpostID.continuation);
    v174 = v205(v186, v187, v47);
  }

  while ((LOBYTE(v219.f64[0]) & 1) != 0);

  v188 = v214;
  v185(v213, v214);
  v185(v204, v188);
LABEL_174:

  a1 = v200;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(v203 + 56) = 0;
LABEL_176:
  v189 = v233;
  *a1 = v232;
  *(a1 + 2) = v189;
  *(a1 + 3) = v189;
  a1[64] = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(_BYTE *a1, void *a2, unsigned int a3, float32x4_t *a4)
{
  v262 = *MEMORY[0x1E69E9840];
  v218 = type metadata accessor for OSSignpostID();
  v214 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v216 = &v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v194 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v194 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v194 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v217 = &v194 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v207 = &v194 - v21;
  if (a4[3].i64[1])
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

  v25 = &v230;
  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    a1[72] = 1;
  }

  else if (a1[72] != 1)
  {
    goto LABEL_96;
  }

  MeshGradient._Paint.animatableData.getter(&v227);
  v26 = a4[1].i64[0];
  if (!v26)
  {
    goto LABEL_95;
  }

  v215 = a2;
  v208 = a1;
  v27 = a3;
  v212 = v11;
  v213 = v14;
  v196 = v17;
  v29 = a4[1].i64[1];
  v28 = a4[2].i64[0];
  v30 = a4[2].u64[1];
  v31 = a4[3].i32[0];
  v235[0] = v26;
  v235[1] = v29;
  v235[2] = v28;
  v235[3] = v30;
  v219 = HIDWORD(v30);
  v236 = v31;
  v233[0] = v227;
  v233[1] = v228;
  v234 = v229;
  if (_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZAA0C5ArrayVySfG_ACyAGyACySfACySfACyS2fGGGGAA5ColorVAAE11ResolvedHDRV01_C0VGTt1B5(v233, v235))
  {
    a3 = v27;
    a1 = v208;
    goto LABEL_95;
  }

  v198 = v27;
  v199 = *&v31;
  v200 = v30;
  v201 = v26;
  v197 = v29;
  v203 = v28;
  outlined copy of AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>?(v26, v29);
  AGGraphClearUpdate();
  v32 = a4[1];
  v259[0] = *a4;
  v259[1] = v32;
  v33 = a4[3];
  v259[2] = a4[2];
  v260 = v33;
  v206 = a4;
  v261 = a4[4].i32[0];
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v259, &v254, &lazy cache variable for type metadata for AnimatableAttributeHelper<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
  v34 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v259, &lazy cache variable for type metadata for AnimatableAttributeHelper<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v35 = Transaction.effectiveAnimation.getter(v34);
  if (v35)
  {
    v36 = v35;
    a3 = v198;
  }

  else
  {
    a3 = v198;
    v36 = v215;
    if (!v215)
    {
      outlined consume of ScrapeableContent?(v201);

      a1 = v208;
      a4 = v206;
      v25 = &v230;
      goto LABEL_95;
    }
  }

  v37 = v197;
  v38 = *&v203;
  LODWORD(v211) = HIDWORD(v28);
  LODWORD(v215) = v200;
  v39 = *&v219;
  v40 = v199;
  v41 = v228;
  v42 = v229;
  v224 = v227;
  v225 = v228;
  v226 = v229;

  _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(&v224, v201);
  _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v224.i8[8], v37);
  v225.f32[0] = v41.f32[0] - v38;
  v225.f32[1] = v41.f32[1] - *&v211;
  v225.f32[2] = v41.f32[2] - *&v215;
  v225.f32[3] = v41.f32[3] - v39;
  if (v42 > v40)
  {
    v43 = v42;
  }

  else
  {
    v43 = v40;
  }

  v44 = v260.i64[1];
  v226 = v43;
  v24 = *AGGraphGetValue();
  v194 = v36;
  v195 = v34;
  if (!v44)
  {
    v230 = v224;
    v231 = v225;
    v232 = v226;
    *&v249 = &type metadata for MeshGradient._Paint;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v230, &v254, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    type metadata accessor for MeshGradient._Paint.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Type, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    v80 = swift_dynamicCast();
    if (v80)
    {
      v81 = v254;
    }

    else
    {
      v81 = 0;
    }

    if (v80)
    {
      v82 = *(&v254 + 1);
    }

    else
    {
      v82 = 0;
    }

    type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>(0);
    swift_allocObject();

    v202 = specialized AnimatorState.init(animation:interval:at:in:finishingDefinition:)(v83, &v230, v34, v81, v82, v24);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v85 = CurrentAttribute;
    LODWORD(a1) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v86 = 0;
    }

    else
    {
      v86 = CurrentAttribute;
    }

    v87 = *(v208 + 3);
    v251 = *(v208 + 2);
    v252 = v87;
    v253 = *(v208 + 8);
    v88 = *(v208 + 1);
    v249 = *v208;
    v250 = v88;
    v256 = v251;
    v257 = v87;
    v258 = v253;
    v254 = v249;
    v255 = v88;
    outlined init with copy of MeshGradient._Paint(&v249, &v243);
    v89 = outlined destroy of MeshGradient._Paint(&v254);
    (*(*v36 + 96))(&v237, v89);
    v91 = v237;
    v90 = v238;
    v92 = v239;
    v93 = v241;
    v222 = 0x7FF8000000000000;
    v223 = 0x7FF8000000000000;
    v220 = NAN;
    *&v221 = 1.0;
    v243 = v237;
    v244 = v238;
    v245 = v239;
    v215 = v240;
    v246 = v240;
    v247 = v241;
    LODWORD(v219) = v242;
    LOBYTE(v248) = v242;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v243, &v223, &v222, &v221, &v220);
    v94 = v222;
    v95 = v223;
    v96 = v220;
    v97 = v221;
    if (one-time initialization token for enabledCategories != -1)
    {
      v213 = v223;
      v210 = v222;
      v211 = v221;
      v209 = v220;
      swift_once();
      v96 = v209;
      v94 = v210;
      v97 = v211;
      v95 = v213;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v98 = static CustomEventTrace.recorder) != 0)
      {
        LODWORD(v213) = a1;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v211 = v93;
        v99 = *(v98 + 16);
        LODWORD(v243) = v86;
        BYTE4(v243) = v85 == a1;
        v244 = &type metadata for MeshGradient._Paint;
        v245 = v95;
        v246 = v94;
        v247 = v97;
        v248 = v96;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v100 = v99;
        LODWORD(a1) = v213;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v91, v90, v92, v215, v211, v219);
      }

      else
      {
        outlined consume of Animation.Function(v91, v90, v92, v215, v93, v219);
      }

      v101 = one-time initialization token for animationState;

      if (v101 == -1)
      {
LABEL_55:
        v66 = *(&static Signpost.animationState + 1);
        v65 = static Signpost.animationState;
        LOBYTE(v36) = word_1ED5283E8;
        v68 = HIBYTE(word_1ED5283E8);
        v102 = byte_1ED5283EA;
        v103 = static os_signpost_type_t.begin.getter();
        v243 = v65;
        v244 = v66;
        LOBYTE(v245) = v36;
        BYTE1(v245) = v68;
        BYTE2(v245) = v102;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v117 = v202;

          a4 = v206;
          v206[3].i64[1] = v117;
          a1 = v208;
          goto LABEL_93;
        }

        LODWORD(v219) = v103;
        v104 = one-time initialization token for _signpostLog;

        if (v104 != -1)
        {
          goto LABEL_198;
        }

        goto LABEL_57;
      }
    }

    swift_once();
    goto LABEL_55;
  }

  v230 = v224;
  v231 = v225;
  v232 = v226;

  LOBYTE(v254) = 0;
  v202 = v44;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v36, &v230, v34, a3, v24);
  v45 = AGGraphGetCurrentAttribute();
  v46 = v45;
  LODWORD(a1) = *MEMORY[0x1E698D3F8];
  if (v45 == *MEMORY[0x1E698D3F8])
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  LODWORD(v219) = v47;
  v48 = *(v208 + 3);
  v251 = *(v208 + 2);
  v252 = v48;
  v253 = *(v208 + 8);
  v49 = *(v208 + 1);
  v249 = *v208;
  v250 = v49;
  v256 = v251;
  v257 = v48;
  v258 = v253;
  v254 = v249;
  v255 = v49;
  outlined init with copy of MeshGradient._Paint(&v249, &v243);
  v50 = outlined destroy of MeshGradient._Paint(&v254);
  (*(*v36 + 96))(&v237, v50);
  v52 = v237;
  v51 = v238;
  v53 = v239;
  v54 = v241;
  LODWORD(v55) = v242;
  v222 = 0x7FF8000000000000;
  v223 = 0x7FF8000000000000;
  v220 = NAN;
  *&v221 = 1.0;
  v243 = v237;
  v244 = v238;
  v245 = v239;
  v56 = v240;
  v246 = v240;
  v247 = v241;
  LOBYTE(v248) = v242;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v243, &v223, &v222, &v221, &v220);
  v57 = v222;
  v58 = v223;
  v59 = v220;
  v60 = v221;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_191;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_193:
      swift_once();
      goto LABEL_30;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v36 = static CustomEventTrace.recorder) != 0)
    {
      LODWORD(v216) = a1;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v215) = v55;
      v61 = *(v36 + 16);
      LODWORD(v243) = v219;
      BYTE4(v243) = v46 == a1;
      v244 = &type metadata for MeshGradient._Paint;
      v245 = v58;
      v246 = v57;
      v247 = v60;
      v248 = v59;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      v219 = v62;

      v63 = v61;
      LODWORD(a1) = v216;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v52, v51, v53, v56, v54, v215);
    }

    else
    {
      outlined consume of Animation.Function(v52, v51, v53, v56, v54, v55);
    }

    v64 = one-time initialization token for animationState;

    if (v64 != -1)
    {
      goto LABEL_193;
    }

LABEL_30:
    v66 = *(&static Signpost.animationState + 1);
    v65 = static Signpost.animationState;
    v67 = word_1ED5283E8;
    v68 = HIBYTE(word_1ED5283E8);
    v69 = byte_1ED5283EA;
    v70 = static os_signpost_type_t.event.getter();
    v243 = v65;
    v244 = v66;
    LOBYTE(v245) = v67;
    BYTE1(v245) = v68;
    BYTE2(v245) = v69;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_92;
    }

    LODWORD(v219) = v70;
    v71 = one-time initialization token for _signpostLog;

    if (v71 != -1)
    {
      swift_once();
    }

    v72 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v73 = COERCE_DOUBLE(swift_allocObject());
    *(v73 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == a1)
    {
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      swift_once();
LABEL_57:
      v105 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v106 = COERCE_DOUBLE(swift_allocObject());
      *(v106 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == a1)
      {
        __break(1u);
      }

      else
      {
        v107 = a1;
        v108 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v110 = MEMORY[0x1E69E6870];
        *(v106 + 56) = MEMORY[0x1E69E6810];
        *(v106 + 64) = v110;
        *(v106 + 32) = Counter;
        v111 = AGGraphGetCurrentAttribute();
        if (v111 != v107)
        {
          v112 = MEMORY[0x1E69E76D0];
          *(v106 + 96) = MEMORY[0x1E69E7668];
          *(v106 + 104) = v112;
          *(v106 + 72) = v111;
          *(v106 + 136) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(v106 + 144) = v113;
          *(v106 + 112) = 0x746E6961505FLL;
          *(v106 + 120) = 0xE600000000000000;
          v114 = v106;
          v115 = v212;
          if (v68)
          {
            LOBYTE(v220) = v219;
            v222 = v105;
            v223 = &dword_18D018000;
            v243 = v65;
            v244 = v66;
            LOBYTE(v245) = v36;
            v237 = "Animation: (%p) [%d] %{public}@ started";
            v238 = 39;
            LOBYTE(v239) = 2;
            v221 = v106;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v220, &v223, &v222, &v243, v212, &v237, &v221);
            v116 = v202;

            (*(v214 + 1))(v115, v218);
          }

          else
          {
            v178 = v65;
            if (v65 == 20)
            {
              v179 = 3;
            }

            else
            {
              v179 = 4;
            }

            a4 = (bswap32(v65) | (4 * (v65 >> 16)));
            v54 = v219;
            v129 = v214 + 16;
            v196 = *(v214 + 2);
            v180 = v196(v216, v212, v218);
            v122 = 0;
            LOBYTE(v237) = 1;
            v215 = v179;
            v204 = v129;
            v205 = v178;
            v210 = 16 * v179;
            v211 = v129 - 8;
            v219 = v114;
            *&v209 = v114 + 32;
            do
            {
              v213 = &v194;
              MEMORY[0x1EEE9AC00](v180);
              v182 = &v194 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v182 + 8;
              v183 = v215;
              v184 = v182 + 8;
              do
              {
                *(v184 - 1) = 0;
                *v184 = 0;
                v184 += 16;
                --v183;
              }

              while (v183);
              v128 = (*&v209 + 40 * v122);
              v25 = v215;
              while (1)
              {
                v185 = *(v219 + 16);
                if (v122 == v185)
                {
                  break;
                }

                if (v122 >= v185)
                {
                  goto LABEL_183;
                }

                ++v122;
                outlined init with copy of AnyTrackedValue(v128, &v243);
                v186 = v246;
                v129 = v247;
                __swift_project_boxed_opaque_existential_1(&v243, v246);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(a4 | v54, v186, v129);
                *a1 = v187 & 1;
                a1 += 16;
                v123 = __swift_destroy_boxed_opaque_existential_1(&v243);
                v128 += 5;
                if (!--v25)
                {
                  goto LABEL_164;
                }
              }

              LOBYTE(v237) = 0;
LABEL_164:
              v188 = v205;
              if (v205 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (v182[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v182[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v182[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v188 != 20 && v182[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v156 = *v211;
              v129 = v216;
              v189 = v218;
              (*v211)(v216, v218);
              v190 = __swift_project_value_buffer(v189, static OSSignpostID.continuation);
              v180 = v196(v129, v190, v189);
            }

            while ((v237 & 1) != 0);
LABEL_180:
            v116 = v202;

            v191 = v218;
            v156(v216, v218);
            v156(v212, v191);
          }

          a4 = v206;
          v206[3].i64[1] = v116;
          a1 = v208;
          v25 = &v230;
          a3 = v198;
          goto LABEL_94;
        }
      }

      __break(1u);
    }

    LODWORD(v36) = a1;
    v74 = AGGraphGetAttributeGraph();
    a1 = AGGraphGetCounter();

    v75 = MEMORY[0x1E69E6870];
    *(v73 + 56) = MEMORY[0x1E69E6810];
    *(v73 + 64) = v75;
    *(v73 + 32) = a1;
    v76 = AGGraphGetCurrentAttribute();
    if (v76 == v36)
    {
      goto LABEL_197;
    }

    v77 = MEMORY[0x1E69E76D0];
    *(v73 + 96) = MEMORY[0x1E69E7668];
    *(v73 + 104) = v77;
    *(v73 + 72) = v76;
    *(v73 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v73 + 144) = v78;
    *(v73 + 112) = 0x746E6961505FLL;
    *(v73 + 120) = 0xE600000000000000;
    if (v68)
    {
      LOBYTE(v220) = v219;
      v222 = v72;
      v223 = &dword_18D018000;
      v243 = v65;
      v244 = v66;
      LOBYTE(v245) = v67;
      v237 = "Animation: (%p) [%d] %{public}@ updated";
      v238 = 39;
      LOBYTE(v239) = 2;
      v221 = v73;
      v79 = v196;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v220, &v223, &v222, &v243, v196, &v237, &v221);

      (*(v214 + 1))(v79, v218);
      goto LABEL_91;
    }

    *&v118 = v65;
    if (v65 == 20)
    {
      v119 = 3;
    }

    else
    {
      v119 = 4;
    }

    v25 = bswap32(v65) | (4 * (v65 >> 16));
    v54 = v219;
    v120 = v214 + 16;
    v204 = *(v214 + 2);
    v121 = v204(v213, v196, v218);
    v122 = 0;
    LOBYTE(v237) = 1;
    v216 = v119;
    v205 = v120;
    v211 = 16 * v119;
    v212 = v120 - 8;
    v219 = v73;
    v209 = v118;
    v210 = v73 + 32;
LABEL_67:
    v215 = &v194;
    MEMORY[0x1EEE9AC00](v121);
    a4 = (&v194 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
    v125 = &a4->i8[8];
    v126 = v216;
    v127 = &a4->i8[8];
    do
    {
      *(v127 - 1) = 0;
      *v127 = 0;
      v127 += 16;
      --v126;
    }

    while (v126);
    v128 = (v210 + 40 * v122);
    v129 = v216;
    while (1)
    {
      v130 = *(v219 + 16);
      if (v122 == v130)
      {
        LOBYTE(v237) = 0;
LABEL_75:
        v133 = v209;
        if (*&v209 == 20)
        {
          a1 = v213;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          a1 = v213;
        }

        if (a4->i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[1].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[2].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (*&v133 != 20 && a4[3].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v134 = *v212;
        v135 = v218;
        (*v212)(a1, v218);
        v136 = __swift_project_value_buffer(v135, static OSSignpostID.continuation);
        v121 = v204(a1, v136, v135);
        if ((v237 & 1) == 0)
        {

          v137 = v218;
          v134(a1, v218);
          v134(v196, v137);
LABEL_91:

LABEL_92:
          a1 = v208;
          a4 = v206;
LABEL_93:
          v25 = &v230;
          a3 = v198;
LABEL_94:
          specialized AnimatorState.addListeners(transaction:)(v195);

          outlined consume of ScrapeableContent?(v201);
LABEL_95:
          outlined consume of ScrapeableContent?(a4[1].i64[0]);
          v138 = LODWORD(v229);
          v139 = v228;
          a4[1] = v227;
          a4[2] = v139;
          a4[3].i32[0] = v138;
LABEL_96:
          v129 = a4[3].i64[1];
          if (!v129)
          {
            return;
          }

          MeshGradient._Paint.animatableData.getter(&v249);
          LOBYTE(v254) = 0;
          v140 = specialized AnimatorState.update(_:at:environment:)(&v249, a3, v24);
          v123 = AGGraphGetCurrentAttribute();
          v54 = *MEMORY[0x1E698D3F8];
          if (v123 == v54)
          {
            LODWORD(v122) = 0;
          }

          else
          {
            LODWORD(v122) = v123;
          }

          v128 = &type metadata instantiation cache for TupleTypeDescription;
          if (v140)
          {
            if (one-time initialization token for enabledCategories != -1)
            {
              goto LABEL_184;
            }

            goto LABEL_102;
          }

          if (one-time initialization token for enabledCategories == -1)
          {
LABEL_115:
            v151 = v128[77];
            if (*(v151 + 16) >= 0x43uLL)
            {
              if (*(v151 + 98) == 1 && static CustomEventTrace.recorder)
              {
                *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
                LODWORD(v254) = v122;
                BYTE4(v254) = v123 == v54;
                type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
                AGGraphAddTraceEvent();
              }

              specialized AnimatorState.nextUpdate()();
              goto LABEL_150;
            }

            __break(1u);
LABEL_188:
            swift_once();
            goto LABEL_107;
          }

LABEL_186:
          v193 = v123;
          swift_once();
          v123 = v193;
          goto LABEL_115;
        }

        goto LABEL_67;
      }

      if (v122 >= v130)
      {
        break;
      }

      ++v122;
      outlined init with copy of AnyTrackedValue(v128, &v243);
      v131 = v246;
      a1 = v247;
      __swift_project_boxed_opaque_existential_1(&v243, v246);
      *(v125 - 1) = CVarArg.kdebugValue(_:)(v25 | v54, v131, a1);
      *v125 = v132 & 1;
      v125 += 16;
      v123 = __swift_destroy_boxed_opaque_existential_1(&v243);
      v128 += 5;
      if (!--v129)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    v192 = v123;
    swift_once();
    v123 = v192;
LABEL_102:
    v141 = v128[77];
    if (*(v141 + 16) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_186;
    }

    if (*(v141 + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v254) = v122;
      BYTE4(v254) = v123 == v54;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v205 = v129;
    v206 = a4;
    v208 = a1;
    v142 = one-time initialization token for animationState;

    if (v142 != -1)
    {
      goto LABEL_188;
    }

LABEL_107:
    v52 = *(&static Signpost.animationState + 1);
    v55 = static Signpost.animationState;
    v46 = word_1ED5283E8;
    v56 = HIBYTE(word_1ED5283E8);
    v143 = byte_1ED5283EA;
    v144 = static os_signpost_type_t.end.getter();
    v254 = __PAIR128__(v52, v55);
    LOBYTE(v255) = v46;
    BYTE1(v255) = v56;
    BYTE2(v255) = v143;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_149;
    }

    LODWORD(v219) = v144;
    v145 = one-time initialization token for _signpostLog;
    v53 = v205;

    if (v145 != -1)
    {
      swift_once();
    }

    v51 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v54)
    {
      __break(1u);
      goto LABEL_190;
    }

    v53 = AGGraphGetAttributeGraph();
    a1 = AGGraphGetCounter();

    v146 = MEMORY[0x1E69E6870];
    *(v36 + 56) = MEMORY[0x1E69E6810];
    *(v36 + 64) = v146;
    *(v36 + 32) = a1;
    v147 = AGGraphGetCurrentAttribute();
    if (v147 != v54)
    {
      break;
    }

LABEL_190:
    __break(1u);
LABEL_191:
    v215 = v60;
    v216 = v58;
    *&v211 = v59;
    v212 = v57;
    swift_once();
    v59 = *&v211;
    v57 = v212;
    v60 = v215;
    v58 = v216;
  }

  v148 = MEMORY[0x1E69E76D0];
  *(v36 + 96) = MEMORY[0x1E69E7668];
  *(v36 + 104) = v148;
  *(v36 + 72) = v147;
  *(v36 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v36 + 144) = v149;
  *(v36 + 112) = 0x746E6961505FLL;
  *(v36 + 120) = 0xE600000000000000;
  if (v56)
  {
    v224.i8[0] = v219;
    *&v259[0] = &dword_18D018000;
    v237 = v51;
    *&v254 = v55;
    *(&v254 + 1) = v52;
    LOBYTE(v255) = v46;
    v243 = "Animation: (%p) [%d] %{public}@ ended";
    v244 = 37;
    LOBYTE(v245) = 2;
    v227.i64[0] = v36;
    v150 = v207;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v224, v259, &v237, &v254, v207, &v243, &v227);

    (*(v214 + 1))(v150, v218);
  }

  else
  {
    v152 = v55;
    if (v55 == 20)
    {
      v153 = 3;
    }

    else
    {
      v153 = 4;
    }

    v154 = bswap32(v55) | (4 * WORD1(v55));
    v155 = v219;
    v156 = (v214 + 16);
    v209 = *(v214 + 2);
    v157 = (*&v209)(v217, v207, v218);
    v158 = 0;
    LOBYTE(v243) = 1;
    v216 = v153;
    v214 = v156;
    v212 = (16 * v153);
    v213 = (v156 - 8);
    v219 = v36;
    v210 = v152;
    v211 = v36 + 32;
    do
    {
      v215 = &v194;
      MEMORY[0x1EEE9AC00](v157);
      v160 = &v194 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
      v161 = v160 + 8;
      v162 = v216;
      v163 = v160 + 8;
      do
      {
        *(v163 - 1) = 0;
        *v163 = 0;
        v163 += 16;
        --v162;
      }

      while (v162);
      v164 = v211 + 40 * v158;
      v165 = v216;
      while (1)
      {
        v166 = *(v219 + 16);
        if (v158 == v166)
        {
          break;
        }

        if (v158 >= v166)
        {
          __break(1u);
          goto LABEL_180;
        }

        ++v158;
        outlined init with copy of AnyTrackedValue(v164, &v254);
        v167 = *(&v255 + 1);
        v168 = v256;
        v169 = __swift_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
        v170 = v167;
        v156 = v169;
        *(v161 - 1) = CVarArg.kdebugValue(_:)(v154 | v155, v170, v168);
        *v161 = v171 & 1;
        v161 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v254);
        v164 += 40;
        if (!--v165)
        {
          goto LABEL_133;
        }
      }

      LOBYTE(v243) = 0;
LABEL_133:
      v172 = v210;
      if (v210 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v160[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v160[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v160[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v172 != 20 && v160[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v156 = *v213;
      v174 = v217;
      v173 = v218;
      (*v213)(v217, v218);
      v175 = __swift_project_value_buffer(v173, static OSSignpostID.continuation);
      v157 = (*&v209)(v174, v175, v173);
    }

    while ((v243 & 1) != 0);

    v176 = v218;
    v156(v217, v218);
    v156(v207, v176);
  }

LABEL_149:
  specialized AnimatorState.removeListeners()();

  v206[3].i64[1] = 0;
  a1 = v208;
  v25 = &v230;
LABEL_150:
  v177 = v251;
  v254 = v249;
  *(v25 + 352) = *(v25 + 272);
  LODWORD(v256) = v177;

  MeshGradient._Paint.animatableData.setter(&v254);

  a1[72] = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(_OWORD *a1, uint64_t (*a2)(void, void, void), uint64_t a3, uint64_t a4)
{
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, &lazy cache variable for type metadata for AnimatableAttributeHelper<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint, &type metadata for RadialGradient._Paint, outlined init with copy of RadialGradient._Paint, outlined destroy of LinearGradient._Paint, type metadata accessor for RadialGradient._Paint.Type);
}

{
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, &lazy cache variable for type metadata for AnimatableAttributeHelper<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint, &type metadata for EllipticalGradient._Paint, outlined init with copy of EllipticalGradient._Paint, outlined destroy of EllipticalGradient._Paint, type metadata accessor for EllipticalGradient._Paint.Type);
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  LODWORD(v5) = a3;
  v290 = *MEMORY[0x1E69E9840];
  v232 = type metadata accessor for OSSignpostID();
  v229 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v9 = (&v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v209 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v230 = &v209 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v209 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v231 = &v209 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v222 = &v209 - v21;
  if (a4[9])
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

  v25 = &v260;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 57) = 1;
  }

  else if (*(a1 + 57) != 1)
  {
    goto LABEL_124;
  }

  *&v233.f64[0] = a2;
  LODWORD(v227) = v5;
  v226 = v9;
  v26 = *(a1 + 8);
  v27 = *(a1 + 12);
  v28 = *(a1 + 16);
  v29 = *(a1 + 40);
  v30 = *(a1 + 48);
  v284.f64[0] = *a1;
  LOBYTE(v284.f64[1]) = v26;
  HIDWORD(v284.f64[1]) = v27;
  LOBYTE(v285) = v28;
  v31 = v29 * 128.0;
  v32 = v30 * 128.0;
  v228 = vmulq_f64(*(a1 + 24), vdupq_n_s64(0x4060000000000000uLL));
  ResolvedGradient.animatableData.getter(&v281);
  v5 = *&v281;
  v33 = LOBYTE(v282.f64[0]);
  v234 = LOBYTE(v282.f64[0]);
  v34 = *(a4 + 4);
  if (v34 != 0.0)
  {
    v211 = v17;
    v219 = v12;
    v35 = *(a4 + 49);
    v36 = *(a4 + 48);
    v37 = a4[5];
    v38 = *(a4 + 53);
    v39 = *(a4 + 7);
    v40 = *(a4 + 8);
    v223 = *(a4 + 1);
    v260 = v223;
    v261 = v34;
    v262 = v37;
    v263 = v36;
    v264 = v35;
    v265 = v38;
    v266 = *(a4 + 55);
    v267 = v39;
    v268 = v40;
    v254 = v228;
    v255 = v281;
    v224 = v39;
    v225 = BYTE8(v281) | (HIDWORD(v281) << 32);
    v256 = v225;
    v257 = LOBYTE(v282.f64[0]);
    v258 = v31;
    v259 = v32;
    if (_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAA22ResolvedGradientVectorVG_AITt1B5Tm(&v254, &v260))
    {
LABEL_11:
      v41 = v225;
      goto LABEL_123;
    }

    v212 = v5;
    v213 = v34;
    v221 = a1;

    *&v218 = COERCE_DOUBLE(AGGraphClearUpdate());
    v42 = *(a4 + 3);
    v286 = *(a4 + 2);
    v287 = v42;
    v288 = *(a4 + 4);
    v289 = *(a4 + 20);
    v43 = *a4;
    v44 = *(a4 + 1);
    v220 = a4;
    v284 = v43;
    v285 = v44;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v284, &v281, &lazy cache variable for type metadata for AnimatableAttributeHelper<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
    v45 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v284, &lazy cache variable for type metadata for AnimatableAttributeHelper<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v46 = Transaction.effectiveAnimation.getter(v45);
    if (v46)
    {
      v214 = v46;
      v47 = v221;
      v48 = v212;
    }

    else
    {
      if (!*&v233.f64[0])
      {

        a4 = v220;
        a1 = v221;
        v25 = &v260;
        v5 = v212;
        goto LABEL_11;
      }

      v47 = v221;
      v48 = v212;
    }

    *&v247.f64[0] = v48;
    *&v247.f64[1] = v225;
    LOBYTE(v248.f64[0]) = v33;
    v248.f64[1] = v31;
    v249 = v32;
    v244 = v248;
    v49 = *(&v288 + 1);
    v246 = v228;
    v245 = v32;
    v242 = vsubq_f64(v228, v223);
    v243 = v247;
    v239.f64[0] = v213;
    LOBYTE(v239.f64[1]) = v37;
    HIDWORD(v239.f64[1]) = HIDWORD(v37);
    LOBYTE(v240.f64[0]) = v36 & 1;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v246, &v281, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    ResolvedGradientVector.add(_:scaledBy:)(&v239, -1.0);
    v244.f64[1] = v31 - v224;
    v245 = v32 - v40;
    v24 = *AGGraphGetValue();
    v209 = v45;
    if (v49)
    {
      v250 = v242;
      v251 = v243;
      v252 = v244;
      v253 = v245;

      LOBYTE(v281) = 0;
      v50 = v214;
      v210 = v49;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v214, &v250, v45, v227, v24);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v45) = CurrentAttribute;
      LODWORD(v52) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v5) = 0;
      }

      else
      {
        LODWORD(v5) = CurrentAttribute;
      }

      v53 = *(v47 + 16);
      v239 = *v47;
      v240 = v53;
      v241[0] = *(v47 + 32);
      v54 = v241[0];
      *(v241 + 9) = *(v47 + 41);
      v281 = v239;
      v282 = v53;
      v283[0] = v54;
      *(v283 + 9) = *(v241 + 9);
      outlined init with copy of AngularGradient._Paint(&v239, &v275);
      v55 = outlined destroy of LinearGradient._Paint(&v281);
      (*(*v50 + 96))(&v269, v55);
      v56 = v269;
      v57 = v270;
      v58 = v271;
      v59 = v272;
      v60 = v273;
      LODWORD(v50) = v274;
      v237 = NAN;
      v238 = NAN;
      v235 = NAN;
      *&v236 = 1.0;
      v275 = v269;
      v276 = v270;
      v277 = *&v271;
      v278 = *&v272;
      v279 = v273;
      LOBYTE(v280) = v274;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v275, &v238, &v237, &v236, &v235);
      *&v61 = v237;
      v62 = v238;
      v63 = v235;
      v64 = v236;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_190;
      }

      goto LABEL_22;
    }

    v250 = v242;
    v251 = v243;
    v252 = v244;
    v253 = v245;
    *&v239.f64[0] = &type metadata for AngularGradient._Paint;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v250, &v281, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    type metadata accessor for AngularGradient._Paint.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    v85 = swift_dynamicCast();
    if (v85)
    {
      v86 = v281;
    }

    else
    {
      v86 = 0;
    }

    if (v85)
    {
      v87 = *(&v281 + 1);
    }

    else
    {
      v87 = 0;
    }

    v88 = v214;

    v210 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAA22ResolvedGradientVectorVGAVyS2dGG_Tt4B5(v89, &v250, v45, v86, v87, v24);
    *&v90 = COERCE_DOUBLE(AGGraphGetCurrentAttribute());
    a1 = v90;
    v91 = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      v92 = 0;
    }

    else
    {
      v92 = v90;
    }

    v93 = *(v47 + 16);
    v239 = *v47;
    v240 = v93;
    v241[0] = *(v47 + 32);
    v94 = v241[0];
    *(v241 + 9) = *(v47 + 41);
    v281 = v239;
    v282 = v93;
    v283[0] = v94;
    *(v283 + 9) = *(v241 + 9);
    outlined init with copy of AngularGradient._Paint(&v239, &v275);
    v95 = outlined destroy of LinearGradient._Paint(&v281);
    (*(*v88 + 96))(&v269, v95);
    v96 = v269;
    v97 = v270;
    a4 = v271;
    v25 = v272;
    v98 = v273;
    v237 = NAN;
    v238 = NAN;
    v235 = NAN;
    *&v236 = 1.0;
    v275 = v269;
    v276 = v270;
    v277 = *&v271;
    v278 = *&v272;
    v279 = v273;
    LODWORD(v233.f64[0]) = v274;
    LOBYTE(v280) = v274;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v275, &v238, &v237, &v236, &v235);
    v99 = v237;
    *&v100 = v238;
    v101 = v235;
    v102 = *&v236;
    if (one-time initialization token for enabledCategories != -1)
    {
      *&v230 = v238;
      v223.f64[0] = v237;
      v224 = *&v236;
      *&v218 = v235;
      swift_once();
      v101 = *&v218;
      v102 = v224;
      v99 = v223.f64[0];
      v100 = v230;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_194;
    }

    v103 = *(static CustomEventTrace.enabledCategories + 98);
    LODWORD(v230) = v91;
    if (v103 == 1)
    {
      v104 = v92;
      v105 = v25;
      v106 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v107 = a1 == v91;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v108 = *(v106 + 16);
        LODWORD(v275) = v104;
        BYTE4(v275) = v107;
        v276 = &type metadata for AngularGradient._Paint;
        v277 = *&v100;
        v278 = v99;
        v279 = *&v102;
        v280 = v101;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v224 = v109;

        v110 = v108;
        v111 = v98;
        v112 = v110;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v96, v97, a4, v105, v111, LOBYTE(v233.f64[0]));

        goto LABEL_84;
      }

      v113 = v96;
      v114 = v97;
      v115 = a4;
      v116 = v105;
    }

    else
    {
      v113 = v96;
      v114 = v97;
      v115 = a4;
      v116 = v25;
    }

    outlined consume of Animation.Function(v113, v114, v115, v116, v98, LOBYTE(v233.f64[0]));
LABEL_84:
    v214 = v88;
    v137 = one-time initialization token for animationState;

    a4 = v220;
    a1 = v221;
    v25 = &v260;
    if (v137 == -1)
    {
LABEL_85:
      v72 = *(&static Signpost.animationState + 1);
      v60 = *&static Signpost.animationState;
      v73 = word_1ED5283E8;
      LOBYTE(v5) = HIBYTE(word_1ED5283E8);
      v138 = byte_1ED5283EA;
      v139 = static os_signpost_type_t.begin.getter();
      v275 = v60;
      v276 = v72;
      LOBYTE(v277) = v73;
      BYTE1(v277) = v5;
      BYTE2(v277) = v138;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v153 = v210;

        a4[9] = v153;
        goto LABEL_122;
      }

      LODWORD(v233.f64[0]) = v139;
      v140 = one-time initialization token for _signpostLog;

      if (v140 != -1)
      {
        goto LABEL_197;
      }

      goto LABEL_87;
    }

LABEL_194:
    swift_once();
    goto LABEL_85;
  }

  v41 = BYTE8(v281) | (HIDWORD(v281) << 32);
LABEL_123:
  while (1)
  {

    *(a4 + 1) = v228;
    *(a4 + 4) = *&v5;
    a4[5] = v41;
    a4[6] = v33;
    *(a4 + 7) = v31;
    *(a4 + 8) = v32;
    LODWORD(v5) = v227;
LABEL_124:
    v117 = a4[9];
    if (*&v117 == 0.0)
    {
      return;
    }

    v170 = *(a1 + 8);
    v171 = *(a1 + 12);
    v172 = *(a1 + 16);
    v31 = *(a1 + 40);
    v32 = *(a1 + 48);
    v173 = *(a1 + 24) * 128.0;
    v174 = *(a1 + 32) * 128.0;
    v284.f64[0] = *a1;
    LOBYTE(v284.f64[1]) = v170;
    HIDWORD(v284.f64[1]) = v171;
    LOBYTE(v285) = v172;

    ResolvedGradient.animatableData.getter(&v281);
    v284.f64[0] = v173;
    v284.f64[1] = v174;
    *&v285 = v281;
    BYTE8(v285) = BYTE8(v281);
    HIDWORD(v285) = HIDWORD(v281);
    LOBYTE(v286) = LOBYTE(v282.f64[0]);
    LOBYTE(v281) = 0;
    *(&v286 + 1) = v31 * 128.0;
    *&v287 = v32 * 128.0;
    v175 = specialized AnimatorState.update(_:at:environment:)(&v284, v5, v24);
    v122 = AGGraphGetCurrentAttribute();
    v60 = *MEMORY[0x1E698D3F8];
    if (v122 == v60)
    {
      LODWORD(v118) = 0;
    }

    else
    {
      LODWORD(v118) = v122;
    }

    v121 = &type metadata instantiation cache for TupleTypeDescription;
    if (v175)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_183;
      }

      goto LABEL_130;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_185;
    }

LABEL_143:
    v186 = *(v121 + 616);
    if (*(v186 + 16) >= 0x43uLL)
    {
      if (*(v186 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v281) = v118;
        BYTE4(v281) = v122 == v60;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_178;
    }

    __break(1u);
LABEL_187:
    swift_once();
LABEL_135:
    v52 = *(&static Signpost.animationState + 1);
    v50 = static Signpost.animationState;
    v56 = word_1ED5283E8;
    v59 = HIBYTE(word_1ED5283E8);
    v178 = byte_1ED5283EA;
    v179 = static os_signpost_type_t.end.getter();
    v281 = __PAIR128__(v52, v50);
    LOBYTE(v282.f64[0]) = v56;
    BYTE1(v282.f64[0]) = v59;
    BYTE2(v282.f64[0]) = v178;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_177;
    }

    LODWORD(v233.f64[0]) = v179;
    v180 = one-time initialization token for _signpostLog;
    LODWORD(v45) = v219;

    if (v180 != -1)
    {
      swift_once();
    }

    v57 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v58 = COERCE_DOUBLE(swift_allocObject());
    *(v58 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v60)
    {
      break;
    }

    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    v233.f64[0] = v62;
    v224 = *&v61;
    v226 = v64;
    v223.f64[0] = v63;
    swift_once();
    v63 = v223.f64[0];
    v64 = v226;
    *&v61 = v224;
    v62 = v233.f64[0];
LABEL_22:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_192:
      swift_once();
      goto LABEL_28;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v65 = v5, (v5 = static CustomEventTrace.recorder) != 0))
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v233.f64[0]) = v50;
      v66 = *(v5 + 16);
      LODWORD(v275) = v65;
      BYTE4(v275) = v45 == v52;
      v276 = &type metadata for AngularGradient._Paint;
      v277 = v62;
      v278 = *&v61;
      v279 = v64;
      v280 = v63;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      v226 = v67;

      v68 = v66;
      v69 = v59;
      v70 = v68;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v56, v57, v58, v69, v60, LOBYTE(v233.f64[0]));
    }

    else
    {
      outlined consume of Animation.Function(v56, v57, v58, v59, v60, v50);
    }

    LODWORD(v45) = v52;
    v71 = one-time initialization token for animationState;

    if (v71 != -1)
    {
      goto LABEL_192;
    }

LABEL_28:
    v72 = *(&static Signpost.animationState + 1);
    v60 = *&static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v275 = v60;
    v276 = v72;
    LOBYTE(v277) = v73;
    BYTE1(v277) = v74;
    BYTE2(v277) = v75;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_81:
      a4 = v220;
      a1 = v221;
      goto LABEL_121;
    }

    LODWORD(v233.f64[0]) = v76;
    v77 = one-time initialization token for _signpostLog;

    if (v77 != -1)
    {
      swift_once();
    }

    *&v226 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v45)
    {
      __break(1u);
    }

    else
    {
      v78 = v45;
      v79 = AGGraphGetAttributeGraph();
      *&v5 = COERCE_DOUBLE(AGGraphGetCounter());

      v80 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v80;
      *(a1 + 32) = *&v5;
      v81 = AGGraphGetCurrentAttribute();
      if (v81 != v78)
      {
        v82 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v82;
        *(a1 + 72) = v81;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(a1 + 144) = v83;
        *(a1 + 112) = 0x746E6961505FLL;
        *(a1 + 120) = 0xE600000000000000;
        if (v74)
        {
          LOBYTE(v235) = LOBYTE(v233.f64[0]);
          v237 = *&v226;
          v238 = COERCE_DOUBLE(&dword_18D018000);
          v275 = v60;
          v276 = v72;
          LOBYTE(v277) = v73;
          v269 = "Animation: (%p) [%d] %{public}@ updated";
          v270 = 39;
          LOBYTE(v271) = 2;
          v236 = a1;
          v84 = v211;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v235, &v238, &v237, &v275, v211, &v269, &v236);

          (*(v229 + 8))(v84, v232);
        }

        else
        {
          if (v60 == 20)
          {
            v117 = 3;
          }

          else
          {
            v117 = 4;
          }

          LODWORD(v118) = bswap32(v60) | (4 * WORD1(v60));
          LODWORD(v233.f64[0]) = LOBYTE(v233.f64[0]);
          v119 = v229 + 16;
          v215 = *(v229 + 16);
          v120 = v215(v230, v211, v232);
          v121 = 0;
          LOBYTE(v269) = 1;
          *&v223.f64[0] = 16 * v117;
          v216 = v119;
          v217 = v117;
          *&v224 = v119 - 8;
          v218 = v60;
          v219 = (a1 + 32);
          do
          {
            *&v226 = COERCE_DOUBLE(&v209);
            MEMORY[0x1EEE9AC00](v120);
            v5 = &v209 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = (v5 + 8);
            v124 = v117;
            v125 = (v5 + 8);
            do
            {
              *(v125 - 1) = 0;
              *v125 = 0;
              v125 += 16;
              --v124;
            }

            while (v124);
            v25 = (v219 + 40 * v121);
            while (1)
            {
              v126 = *(a1 + 16);
              if (v121 == v126)
              {
                break;
              }

              if (v121 >= v126)
              {
                goto LABEL_181;
              }

              ++v121;
              outlined init with copy of AnyTrackedValue(v25, &v275);
              v127 = *&v278;
              v60 = a1;
              v128 = v279;
              __swift_project_boxed_opaque_existential_1(&v275, *&v278);
              v129 = v128;
              a1 = v60;
              *(a4 - 1) = CVarArg.kdebugValue(_:)(v118 | LODWORD(v233.f64[0]), v127, v129);
              *a4 = v130 & 1;
              a4 += 2;
              v122 = __swift_destroy_boxed_opaque_existential_1(&v275);
              v25 = (v25 + 40);
              --v117;
              if (*&v117 == 0.0)
              {
                goto LABEL_65;
              }
            }

            LOBYTE(v269) = 0;
LABEL_65:
            v131 = v218;
            if (v218 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (*(v5 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v5 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v5 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v131 != 20 && *(v5 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v132 = **&v224;
            v133 = v230;
            v134 = v232;
            (**&v224)(v230, v232);
            v135 = __swift_project_value_buffer(v134, static OSSignpostID.continuation);
            v120 = v215(v133, v135, v134);
            v117 = v217;
          }

          while ((v269 & 1) != 0);

          v136 = v232;
          v132(v230, v232);
          v132(v211, v136);
        }

        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_87:
    v141 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v142 = COERCE_DOUBLE(swift_allocObject());
    *(v142 + 16) = xmmword_18DDAF080;
    v143 = AGGraphGetCurrentAttribute();
    v144 = v230;
    if (v143 == v230)
    {
      __break(1u);
LABEL_199:
      __break(1u);
    }

    v145 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    v147 = MEMORY[0x1E69E6870];
    *(v142 + 56) = MEMORY[0x1E69E6810];
    *(v142 + 64) = v147;
    *(v142 + 32) = Counter;
    v148 = AGGraphGetCurrentAttribute();
    if (v148 == v144)
    {
      goto LABEL_199;
    }

    v25 = v142;
    v149 = MEMORY[0x1E69E76D0];
    *(v142 + 96) = MEMORY[0x1E69E7668];
    *(v142 + 104) = v149;
    *(v142 + 72) = v148;
    *(v142 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v142 + 144) = v150;
    *(v142 + 112) = 0x746E6961505FLL;
    *(v142 + 120) = 0xE600000000000000;
    if (v5)
    {
      LOBYTE(v235) = LOBYTE(v233.f64[0]);
      v237 = v141;
      v238 = COERCE_DOUBLE(&dword_18D018000);
      v275 = v60;
      v276 = v72;
      LOBYTE(v277) = v73;
      v269 = "Animation: (%p) [%d] %{public}@ started";
      v270 = 39;
      LOBYTE(v271) = 2;
      v236 = v142;
      v151 = v219;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v235, &v238, &v237, &v275, v219, &v269, &v236);
      v152 = v210;

      (*(v229 + 8))(v151, v232);
    }

    else
    {
      v154 = v60;
      if (v60 == 20)
      {
        v155 = 3;
      }

      else
      {
        v155 = 4;
      }

      LODWORD(v118) = bswap32(v60) | (4 * WORD1(v60));
      v60 = LOBYTE(v233.f64[0]);
      v156 = (v229 + 16);
      v211 = *(v229 + 16);
      v157 = v211(v226, v219, v232);
      v121 = 0;
      LOBYTE(v269) = 1;
      v230 = v155;
      v215 = v156;
      v216 = v154;
      *&v223.f64[0] = v156 - 8;
      *&v233.f64[0] = v25;
      v217 = v25 + 2;
      v218 = 16 * v155;
      do
      {
        v224 = COERCE_DOUBLE(&v209);
        MEMORY[0x1EEE9AC00](v157);
        a4 = (&v209 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0));
        v5 = (a4 + 1);
        v159 = v230;
        v160 = a4 + 1;
        do
        {
          *(v160 - 1) = 0;
          *v160 = 0;
          v160 += 16;
          --v159;
        }

        while (v159);
        v117 = v217 + 40 * v121;
        a1 = v230;
        while (1)
        {
          v161 = *(*&v233.f64[0] + 16);
          if (v121 == v161)
          {
            break;
          }

          if (v121 >= v161)
          {
            goto LABEL_182;
          }

          ++v121;
          outlined init with copy of AnyTrackedValue(v117, &v275);
          v162 = *&v278;
          v25 = v279;
          __swift_project_boxed_opaque_existential_1(&v275, *&v278);
          *(v5 - 8) = CVarArg.kdebugValue(_:)(v118 | v60, v162, v25);
          *v5 = v163 & 1;
          v5 += 16;
          v122 = __swift_destroy_boxed_opaque_existential_1(&v275);
          v117 += 40;
          --a1;
          if (*&a1 == 0.0)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v269) = 0;
LABEL_104:
        v164 = v216;
        if (v216 == 20)
        {
          v25 = v226;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v25 = v226;
        }

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

        if (v164 != 20 && *(a4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v165 = **&v223.f64[0];
        v166 = v232;
        (**&v223.f64[0])(v25, v232);
        v167 = __swift_project_value_buffer(v166, static OSSignpostID.continuation);
        v157 = v211(v25, v167, v166);
      }

      while ((v269 & 1) != 0);
      v152 = v210;

      v168 = v232;
      v165(v25, v232);
      v165(v219, v168);
    }

    a4 = v220;
    a1 = v221;
    v220[9] = v152;
LABEL_121:
    v25 = &v260;
LABEL_122:
    v5 = v212;
    v41 = v225;
    specialized AnimatorState.addListeners(transaction:)(v209);

    v169 = v243;
    v25[11] = v242;
    v25[12] = v169;
    v25[13] = v244;
    *&v283[1] = v245;
    outlined destroy of Slice<IndexSet>(&v281, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

    v33 = v234;
  }

  v45 = AGGraphGetAttributeGraph();
  *&v5 = COERCE_DOUBLE(AGGraphGetCounter());

  v181 = MEMORY[0x1E69E6870];
  *(v58 + 56) = MEMORY[0x1E69E6810];
  *(v58 + 64) = v181;
  *(v58 + 32) = *&v5;
  v182 = AGGraphGetCurrentAttribute();
  if (v182 == v60)
  {
    goto LABEL_189;
  }

  v5 = v58;
  v183 = MEMORY[0x1E69E76D0];
  *(v58 + 96) = MEMORY[0x1E69E7668];
  *(v58 + 104) = v183;
  *(v58 + 72) = v182;
  *(v58 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v58 + 144) = v184;
  *(v58 + 112) = 0x746E6961505FLL;
  *(v58 + 120) = 0xE600000000000000;
  if (v59)
  {
    LOBYTE(v269) = LOBYTE(v233.f64[0]);
    v275 = &dword_18D018000;
    *&v246.f64[0] = v57;
    *&v281 = v50;
    *(&v281 + 1) = v52;
    LOBYTE(v282.f64[0]) = v56;
    *&v239.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v239.f64[1] = 37;
    LOBYTE(v240.f64[0]) = 2;
    *&v242.f64[0] = v58;
    v185 = v222;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v269, &v275, &v246, &v281, v222, &v239, &v242);

    (*(v229 + 8))(v185, v232);
    goto LABEL_176;
  }

  v117 = v50;
  if (v50 == 20)
  {
    a1 = 3;
  }

  else
  {
    a1 = 4;
  }

  v60 = bswap32(v50) | (4 * WORD1(v50));
  LODWORD(v233.f64[0]) = LOBYTE(v233.f64[0]);
  v187 = v229 + 16;
  v223.f64[0] = *(v229 + 16);
  v188 = (*&v223.f64[0])(v231, v222, v232);
  v121 = 0;
  LOBYTE(v239.f64[0]) = 1;
  v229 = v187;
  v227 = 16 * a1;
  *&v228.f64[0] = v187 - 8;
  v225 = a1;
  v226 = (v5 + 32);
  v224 = *&v117;
  do
  {
    *&v230 = COERCE_DOUBLE(&v209);
    MEMORY[0x1EEE9AC00](v188);
    a4 = (&v209 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0));
    v118 = a4 + 1;
    v190 = a1;
    v191 = a4 + 1;
    do
    {
      *(v191 - 1) = 0;
      *v191 = 0;
      v191 += 16;
      --v190;
    }

    while (v190);
    v25 = (v226 + 40 * v121);
    while (1)
    {
      v192 = *(v5 + 16);
      if (v121 == v192)
      {
        break;
      }

      if (v121 >= v192)
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        v207 = v122;
        swift_once();
        v122 = v207;
LABEL_130:
        v176 = *(v121 + 616);
        if (*(v176 + 16) >= 0x43uLL)
        {
          if (*(v176 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v281) = v118;
            BYTE4(v281) = v122 == v60;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v220 = a4;
          v221 = a1;
          v177 = one-time initialization token for animationState;
          v219 = v117;

          if (v177 != -1)
          {
            goto LABEL_187;
          }

          goto LABEL_135;
        }

        __break(1u);
LABEL_185:
        v208 = v122;
        swift_once();
        v122 = v208;
        goto LABEL_143;
      }

      ++v121;
      outlined init with copy of AnyTrackedValue(v25, &v281);
      v193 = *&v282.f64[1];
      v117 = v5;
      v194 = *&v283[0];
      __swift_project_boxed_opaque_existential_1(&v281, *&v282.f64[1]);
      v195 = v194;
      v5 = v117;
      *(v118 - 1) = CVarArg.kdebugValue(_:)(v60 | LODWORD(v233.f64[0]), v193, v195);
      *v118 = v196 & 1;
      v118 += 16;
      v122 = __swift_destroy_boxed_opaque_existential_1(&v281);
      v25 = (v25 + 40);
      --a1;
      if (*&a1 == 0.0)
      {
        goto LABEL_161;
      }
    }

    LOBYTE(v239.f64[0]) = 0;
LABEL_161:
    *&v117 = v224;
    if (*&v224 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    a1 = v225;
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

    if (v117 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v197 = **&v228.f64[0];
    v199 = v231;
    v198 = v232;
    (**&v228.f64[0])(v231, v232);
    v200 = __swift_project_value_buffer(v198, static OSSignpostID.continuation);
    v188 = (*&v223.f64[0])(v199, v200, v198);
  }

  while ((LOBYTE(v239.f64[0]) & 1) != 0);

  v201 = v232;
  v197(v231, v232);
  v197(v222, v201);
LABEL_176:

LABEL_177:
  specialized AnimatorState.removeListeners()();

  a1 = v221;
  v220[9] = 0;
  v25 = &v260;
LABEL_178:
  v202 = v25[19];
  v240 = v25[18];
  v241[0] = v202;
  v239 = v25[17];
  *&v241[1] = v287;
  v203 = *&v240.f64[0];
  v204 = LOBYTE(v240.f64[1]);
  v205 = HIDWORD(v240.f64[1]);
  v233 = vdupq_n_s64(0x3F80000000000000uLL);
  *(a1 + 24) = vmulq_f64(v239, v233);
  v275 = v203;
  LOBYTE(v276) = v204;
  HIDWORD(v276) = v205;
  LOBYTE(v277) = LOBYTE(v202.f64[0]);
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v239, &v281, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  ResolvedGradient.animatableData.setter(&v275);

  *(a1 + 40) = vmulq_f64(*(v241 + 8), v233);
  v206 = v25[18];
  v25[11] = v25[17];
  v25[12] = v206;
  v25[13] = v25[19];
  *&v283[1] = v287;
  outlined destroy of Slice<IndexSet>(&v281, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  *(a1 + 57) = 1;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(void *a1, uint64_t a2, int a3, unint64_t a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t (*a8)(void))
{
  v204 = a7;
  LODWORD(v14) = a3;
  v227 = *MEMORY[0x1E69E9840];
  v208 = type metadata accessor for OSSignpostID();
  v206 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v18 = &v187 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v187 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v207 = (&v187 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v205 = (&v187 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v209 = &v187 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v199 = &v187 - v29;
  if (*(a4 + 32))
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

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 8) = 1;
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_121;
  }

  v9 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_120;
  }

  v8 = *(a4 + 16);
  if (v9 == v8)
  {
    goto LABEL_120;
  }

  v202 = a6;
  v200 = v18;
  v191 = v21;
  v197 = a1;
  AGGraphClearUpdate();
  v33 = *(a4 + 32);

  v18 = *AGGraphGetValue();

  v190 = v33;

  v34 = v18;
  AGGraphSetUpdate();
  v189 = Transaction.effectiveAnimation.getter(v18);
  if (!v189)
  {
    a6 = v202;
    if (!a2)
    {

      a1 = v197;
      goto LABEL_120;
    }

    v189 = a2;
  }

  v203 = a5;
  v198 = a4;
  v35 = v9 - v8;
  v32 = *AGGraphGetValue();
  LODWORD(v201) = v14;
  v188 = v18;
  if (!v190)
  {
    v221 = v204;
    a8(0);
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type, MEMORY[0x1E69E63B0]);
    v53 = swift_dynamicCast();
    if (v53)
    {
      v54 = v215;
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = v216;
    }

    else
    {
      v55 = 0;
    }

    v56 = v189;

    v187 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v57, v34, v54, v55, v35, v32);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v59 = CurrentAttribute;
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v60 = 0;
    }

    else
    {
      v60 = CurrentAttribute;
    }

    (*(*v56 + 96))(&v221);
    v61 = v221;
    v62 = v222;
    v64 = v223;
    v63 = v224;
    v65 = v226;
    v214 = NAN;
    v215 = v221;
    v211 = 0x3FF0000000000000;
    v212 = NAN;
    v210 = 0x7FF8000000000000;
    v216 = v222;
    v217 = *&v223;
    v218 = v224;
    v219 = v225;
    v207 = v225;
    LOBYTE(v220) = v226;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v215, &v214, &v212, &v211, &v210);
    v8 = v214;
    v66 = v211;
    v67 = *&v212;
    v68 = v210;
    a1 = v197;
    if (one-time initialization token for enabledCategories != -1)
    {
      v205 = *&v212;
      v195 = v211;
      v196 = v210;
      swift_once();
      v68 = v196;
      v66 = v195;
      v67 = v205;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_191:
      swift_once();
LABEL_83:
      v89 = *(&static Signpost.animationState + 1);
      v88 = static Signpost.animationState;
      v18 = word_1ED5283E8;
      v90 = HIBYTE(word_1ED5283E8);
      v122 = byte_1ED5283EA;
      v123 = static os_signpost_type_t.begin.getter();
      v215 = v88;
      v216 = v89;
      LOBYTE(v217) = v18;
      BYTE1(v217) = v90;
      BYTE2(v217) = v122;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        a4 = v198;
        *(v198 + 32) = v59;
        goto LABEL_119;
      }

      LODWORD(v207) = v123;
      v124 = one-time initialization token for _signpostLog;

      if (v124 != -1)
      {
        goto LABEL_194;
      }

      goto LABEL_85;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v69 = v60;
      v70 = v63;
      v71 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v72 = v59 == a4;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v205) = a4;
        v73 = v65;
        v74 = *(v71 + 16);
        LODWORD(v215) = v69;
        BYTE4(v215) = v72;
        v216 = v204;
        v217 = v8;
        v218 = v67;
        v219 = v66;
        v220 = v68;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v204 = v75;

        v76 = v74;
        LODWORD(v14) = v201;
        v77 = v76;
        a1 = v197;
        AGGraphAddTraceEvent();
        v78 = v73;
        LODWORD(a4) = v205;
        outlined consume of Animation.Function(v61, v62, v64, v70, v207, v78);

        goto LABEL_82;
      }

      v83 = v61;
      v84 = v62;
      v85 = v64;
      v86 = v70;
    }

    else
    {
      v83 = v61;
      v84 = v62;
      v85 = v64;
      v86 = v63;
    }

    outlined consume of Animation.Function(v83, v84, v85, v86, v207, v65);
LABEL_82:
    v121 = one-time initialization token for animationState;
    v59 = v187;

    if (v121 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_191;
  }

  LOBYTE(v215) = 0;
  v36 = v189;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v189, v18, v14, v35, v32);
  v37 = AGGraphGetCurrentAttribute();
  LODWORD(v14) = v37;
  LODWORD(a4) = *MEMORY[0x1E698D3F8];
  if (v37 == *MEMORY[0x1E698D3F8])
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  LODWORD(v200) = v38;
  (*(*v36 + 96))(&v221);
  v40 = v221;
  v39 = v222;
  v41 = v223;
  v42 = v224;
  v18 = v225;
  LOBYTE(v43) = v226;
  v214 = NAN;
  v215 = v221;
  v211 = 0x3FF0000000000000;
  v212 = NAN;
  v210 = 0x7FF8000000000000;
  v216 = v222;
  v217 = *&v223;
  v218 = v224;
  v219 = v225;
  LOBYTE(v220) = v226;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v215, &v214, &v212, &v211, &v210);
  v8 = v214;
  v44 = v211;
  v45 = *&v212;
  v46 = v210;
  a1 = v197;
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
        v196 = v42;
        v47 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v48 = v14 == a4;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v194 = v18;
          LODWORD(v195) = a4;
          v49 = v43;
          v50 = *(v47 + 16);
          LODWORD(v215) = v200;
          BYTE4(v215) = v48;
          v216 = v204;
          v217 = v8;
          v218 = v45;
          v219 = v44;
          v220 = v46;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v51 = v50;
          a1 = v197;
          AGGraphAddTraceEvent();
          v52 = v49;
          LODWORD(a4) = v195;
          outlined consume of Animation.Function(v40, v39, v41, v196, v194, v52);

          goto LABEL_43;
        }

        v79 = v40;
        v80 = v39;
        v81 = v41;
        v82 = v196;
      }

      else
      {
        v79 = v40;
        v80 = v39;
        v81 = v41;
        v82 = v42;
      }

      outlined consume of Animation.Function(v79, v80, v81, v82, v18, v43);
LABEL_43:
      v87 = one-time initialization token for animationState;

      LODWORD(v14) = v201;
      if (v87 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_189;
    }

    __break(1u);
LABEL_189:
    swift_once();
LABEL_44:
    v89 = *(&static Signpost.animationState + 1);
    v88 = static Signpost.animationState;
    a6 = word_1ED5283E8;
    v90 = HIBYTE(word_1ED5283E8);
    v91 = byte_1ED5283EA;
    v18 = static os_signpost_type_t.event.getter();
    v215 = v88;
    v216 = v89;
    LOBYTE(v217) = a6;
    BYTE1(v217) = v90;
    BYTE2(v217) = v91;
    if (Signpost.isEnabled.getter())
    {
      v92 = one-time initialization token for _signpostLog;

      if (v92 != -1)
      {
        swift_once();
      }

      v40 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == a4)
      {
        __break(1u);
      }

      else
      {
        v93 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v95 = MEMORY[0x1E69E6870];
        *(v14 + 56) = MEMORY[0x1E69E6810];
        *(v14 + 64) = v95;
        *(v14 + 32) = Counter;
        v96 = AGGraphGetCurrentAttribute();
        if (v96 != a4)
        {
          v97 = MEMORY[0x1E69E76D0];
          *(v14 + 96) = MEMORY[0x1E69E7668];
          *(v14 + 104) = v97;
          *(v14 + 72) = v96;
          *(v14 + 136) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(v14 + 144) = v98;
          v99 = v202;
          *(v14 + 112) = v203;
          *(v14 + 120) = v99;
          if (v90)
          {
            LOBYTE(v210) = v18;
            v214 = COERCE_DOUBLE(&dword_18D018000);
            v215 = v88;
            v211 = v14;
            *&v212 = v40;
            v216 = v89;
            LOBYTE(v217) = a6;
            v221 = "Animation: (%p) [%d] %{public}@ updated";
            v222 = 39;
            LOBYTE(v223) = 2;
            v100 = v205;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v210, &v214, &v212, &v215, v205, &v221, &v211);

            (*(v206 + 8))(v100, v208);
          }

          else
          {
            v101 = v88;
            v102 = v18;
            if (v88 == 20)
            {
              v18 = 3;
            }

            else
            {
              v18 = 4;
            }

            v103 = bswap32(v88) | (4 * WORD1(v88));
            LODWORD(a4) = v102;
            v104 = (v206 + 16);
            v191 = *(v206 + 16);
            v105 = v191(v207, v205, v208);
            v41 = 0;
            LOBYTE(v221) = 1;
            v196 = (16 * v18);
            v192 = v104;
            v200 = v104 - 8;
            v195 = v14 + 32;
            v194 = v101;
            v193 = v18;
            do
            {
              v204 = &v187;
              MEMORY[0x1EEE9AC00](v105);
              a1 = (&v187 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
              v42 = a1 + 1;
              v108 = v18;
              v109 = a1 + 1;
              do
              {
                *(v109 - 1) = 0;
                *v109 = 0;
                v109 += 16;
                --v108;
              }

              while (v108);
              v110 = v195 + 40 * v41;
              while (1)
              {
                v111 = *(v14 + 16);
                if (v41 == v111)
                {
                  break;
                }

                if (v41 >= v111)
                {
                  goto LABEL_178;
                }

                ++v41;
                outlined init with copy of AnyTrackedValue(v110, &v215);
                v112 = v218;
                a6 = v219;
                v113 = __swift_project_boxed_opaque_existential_1(&v215, v218);
                v114 = v112;
                v40 = v113;
                *(v42 - 1) = CVarArg.kdebugValue(_:)(v103 | a4, v114, a6);
                *v42 = v115 & 1;
                v42 += 16;
                v106 = __swift_destroy_boxed_opaque_existential_1(&v215);
                v110 += 40;
                if (!--v18)
                {
                  goto LABEL_64;
                }
              }

              LOBYTE(v221) = 0;
LABEL_64:
              v116 = v194;
              if (v194 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v18 = v193;
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

              if (v116 != 20 && *(a1 + 56) == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v117 = *v200;
              v118 = v207;
              v40 = v208;
              (*v200)(v207, v208);
              v119 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
              v105 = v191(v118, v119, v40);
            }

            while ((v221 & 1) != 0);

            v120 = v208;
            v117(v207, v208);
            v117(v205, v120);
          }

          a1 = v197;
          a4 = v198;
          LODWORD(v14) = v201;
          goto LABEL_119;
        }
      }

      __break(1u);
LABEL_194:
      swift_once();
LABEL_85:
      v125 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a6 = swift_allocObject();
      *(a6 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == a4)
      {
        __break(1u);
LABEL_196:
        __break(1u);
      }

      v126 = AGGraphGetAttributeGraph();
      v42 = AGGraphGetCounter();

      v127 = MEMORY[0x1E69E6870];
      *(a6 + 56) = MEMORY[0x1E69E6810];
      *(a6 + 64) = v127;
      *(a6 + 32) = v42;
      v128 = AGGraphGetCurrentAttribute();
      if (v128 == a4)
      {
        goto LABEL_196;
      }

      v129 = MEMORY[0x1E69E76D0];
      *(a6 + 96) = MEMORY[0x1E69E7668];
      *(a6 + 104) = v129;
      *(a6 + 72) = v128;
      *(a6 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a6 + 144) = v130;
      v131 = v202;
      *(a6 + 112) = v203;
      *(a6 + 120) = v131;
      if (v90)
      {
        LOBYTE(v210) = v207;
        v214 = COERCE_DOUBLE(&dword_18D018000);
        v215 = v88;
        v211 = a6;
        *&v212 = v125;
        v216 = v89;
        LOBYTE(v217) = v18;
        v221 = "Animation: (%p) [%d] %{public}@ started";
        v222 = 39;
        LOBYTE(v223) = 2;
        v132 = v191;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v210, &v214, &v212, &v215, v191, &v221, &v211);
        v133 = v187;

        (*(v206 + 8))(v132, v208);
      }

      else
      {
        v134 = v88;
        v135 = v88 == 20 ? 3 : 4;
        v136 = bswap32(v88) | (4 * WORD1(v88));
        LODWORD(a4) = v207;
        v40 = (v206 + 16);
        v192 = *(v206 + 16);
        v137 = v192(v200, v191, v208);
        v41 = 0;
        LOBYTE(v221) = 1;
        v207 = v135;
        v196 = (16 * v135);
        v193 = v40;
        v204 = v40 - 1;
        v195 = a6 + 32;
        v194 = v134;
        do
        {
          v205 = &v187;
          MEMORY[0x1EEE9AC00](v137);
          a1 = (&v187 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0));
          v18 = (a1 + 1);
          v139 = v207;
          v140 = a1 + 1;
          do
          {
            *(v140 - 1) = 0;
            *v140 = 0;
            v140 += 16;
            --v139;
          }

          while (v139);
          v141 = v195 + 40 * v41;
          v142 = v207;
          while (1)
          {
            v143 = *(a6 + 16);
            if (v41 == v143)
            {
              break;
            }

            if (v41 >= v143)
            {
              goto LABEL_179;
            }

            ++v41;
            outlined init with copy of AnyTrackedValue(v141, &v215);
            v144 = v218;
            v42 = v219;
            v145 = __swift_project_boxed_opaque_existential_1(&v215, v218);
            v146 = v144;
            v40 = v145;
            *(v18 - 8) = CVarArg.kdebugValue(_:)(v136 | a4, v146, v42);
            *v18 = v147 & 1;
            v18 += 16;
            v106 = __swift_destroy_boxed_opaque_existential_1(&v215);
            v141 += 40;
            if (!--v142)
            {
              goto LABEL_102;
            }
          }

          LOBYTE(v221) = 0;
LABEL_102:
          v18 = v194;
          if (v194 == 20)
          {
            v42 = v200;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
            LODWORD(v14) = v201;
          }

          else
          {
            kdebug_trace();
            LODWORD(v14) = v201;
            v42 = v200;
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

          if (v18 != 20 && *(a1 + 56) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v148 = *v204;
          v40 = v208;
          (*v204)(v42, v208);
          v149 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
          v137 = v192(v42, v149, v40);
        }

        while ((v221 & 1) != 0);
        v150 = v187;

        v151 = v42;
        v133 = v150;
        v152 = v208;
        v148(v151, v208);
        v148(v191, v152);
      }

      a4 = v198;
      *(v198 + 32) = v133;
      a1 = v197;
    }

    else
    {

      a4 = v198;
    }

LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v188);

    a6 = v202;
    a5 = v203;
LABEL_120:
    *(a4 + 16) = v9;
    *(a4 + 24) = 0;
LABEL_121:
    v42 = *(a4 + 32);
    if (!v42)
    {
      return;
    }

    v203 = a5;
    v198 = a4;
    v214 = *a1;

    LOBYTE(v215) = 0;
    v153 = specialized AnimatorState.update(_:at:environment:)(&v214, v14, v32);
    v106 = AGGraphGetCurrentAttribute();
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (v106 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v41) = 0;
    }

    else
    {
      LODWORD(v41) = v106;
    }

    v40 = &type metadata instantiation cache for TupleTypeDescription;
    if (v153)
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
    v164 = v40[77];
    if (*(v164 + 16) >= 0x43uLL)
    {
      if (*(v164 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v215) = v41;
        BYTE4(v215) = v106 == a4;
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
    v43 = *(&static Signpost.animationState + 1);
    v41 = static Signpost.animationState;
    LODWORD(v14) = word_1ED5283E8;
    a6 = HIBYTE(word_1ED5283E8);
    v156 = byte_1ED5283EA;
    v39 = static os_signpost_type_t.end.getter();
    v215 = v41;
    v216 = v43;
    LOBYTE(v217) = v14;
    BYTE1(v217) = a6;
    BYTE2(v217) = v156;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v197 = a1;
    v157 = one-time initialization token for _signpostLog;

    if (v157 != -1)
    {
      swift_once();
    }

    v40 = _signpostLog;
    v196 = v42;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != a4)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v196 = v45;
    v194 = v44;
    v195 = v46;
    swift_once();
    v46 = v195;
    v44 = v194;
    v45 = v196;
  }

  v42 = AGGraphGetAttributeGraph();
  v18 = AGGraphGetCounter();

  v158 = MEMORY[0x1E69E6870];
  a1[7] = MEMORY[0x1E69E6810];
  a1[8] = v158;
  a1[4] = v18;
  v159 = AGGraphGetCurrentAttribute();
  if (v159 == a4)
  {
    goto LABEL_186;
  }

  v160 = MEMORY[0x1E69E76D0];
  a1[12] = MEMORY[0x1E69E7668];
  a1[13] = v160;
  *(a1 + 18) = v159;
  a1[17] = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  a1[18] = v161;
  v162 = v202;
  a1[14] = v203;
  a1[15] = v162;
  if (a6)
  {
    v213 = v39;
    v211 = v40;
    *&v212 = &dword_18D018000;
    v215 = v41;
    v216 = v43;
    LOBYTE(v217) = v14;
    v221 = "Animation: (%p) [%d] %{public}@ ended";
    v222 = 37;
    LOBYTE(v223) = 2;
    v210 = a1;
    v163 = v199;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v213, &v212, &v211, &v215, v199, &v221, &v210);

    (*(v206 + 8))(v163, v208);
    goto LABEL_173;
  }

  v165 = v41;
  if (v41 == 20)
  {
    v166 = 3;
  }

  else
  {
    v166 = 4;
  }

  v18 = bswap32(v41) | (4 * WORD1(v41));
  LODWORD(v41) = v39;
  v167 = v206 + 16;
  v200 = *(v206 + 16);
  v168 = (v200)(v209, v199, v208);
  a4 = 0;
  LOBYTE(v221) = 1;
  v204 = (16 * v166);
  v206 = v167;
  v205 = (v167 - 8);
  v203 = a1 + 4;
  v202 = v165;
  v201 = v166;
  do
  {
    v207 = &v187;
    MEMORY[0x1EEE9AC00](v168);
    v42 = &v187 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
    v170 = v42 + 8;
    v171 = v166;
    v172 = v42 + 8;
    do
    {
      *(v172 - 1) = 0;
      *v172 = 0;
      v172 += 16;
      --v171;
    }

    while (v171);
    v173 = &v203[5 * a4];
    while (1)
    {
      v174 = a1[2];
      if (a4 == v174)
      {
        break;
      }

      if (a4 >= v174)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v185 = v106;
        swift_once();
        v106 = v185;
LABEL_127:
        v154 = v40[77];
        if (*(v154 + 16) >= 0x43uLL)
        {
          if (*(v154 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v215) = v41;
            BYTE4(v215) = v106 == a4;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v202 = a6;
          v155 = one-time initialization token for animationState;

          if (v155 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v186 = v106;
        swift_once();
        v106 = v186;
        goto LABEL_140;
      }

      ++a4;
      outlined init with copy of AnyTrackedValue(v173, &v215);
      v175 = v218;
      a6 = v219;
      v176 = __swift_project_boxed_opaque_existential_1(&v215, v218);
      v177 = v175;
      v40 = v176;
      *(v170 - 1) = CVarArg.kdebugValue(_:)(v18 | v41, v177, a6);
      *v170 = v178 & 1;
      v170 += 16;
      v106 = __swift_destroy_boxed_opaque_existential_1(&v215);
      v173 += 40;
      if (!--v166)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v221) = 0;
LABEL_158:
    v179 = v202;
    if (v202 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v42[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v42[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v42[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v179 != 20 && v42[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v180 = *v205;
    v181 = v209;
    v40 = v208;
    (*v205)(v209, v208);
    v182 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
    v168 = (v200)(v181, v182, v40);
    v166 = v201;
  }

  while ((v221 & 1) != 0);

  v183 = v208;
  v180(v209, v208);
  v180(v199, v183);
LABEL_173:

  a1 = v197;
LABEL_174:
  v184 = v198;
  specialized AnimatorState.removeListeners()();

  *(v184 + 32) = 0;
LABEL_175:
  *a1 = v214;
  *(a1 + 8) = 1;
}

{
  v204 = a7;
  LODWORD(v14) = a3;
  v227 = *MEMORY[0x1E69E9840];
  v208 = type metadata accessor for OSSignpostID();
  v206 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v18 = &v187 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v187 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v207 = (&v187 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v205 = (&v187 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v209 = &v187 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v199 = &v187 - v29;
  if (*(a4 + 32))
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

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 8) = 1;
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_121;
  }

  v9 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_120;
  }

  v8 = *(a4 + 16);
  if (v9 == v8)
  {
    goto LABEL_120;
  }

  v202 = a6;
  v200 = v18;
  v191 = v21;
  v197 = a1;
  AGGraphClearUpdate();
  v33 = *(a4 + 32);

  v18 = *AGGraphGetValue();

  v190 = v33;

  v34 = v18;
  AGGraphSetUpdate();
  v189 = Transaction.effectiveAnimation.getter(v18);
  if (!v189)
  {
    a6 = v202;
    if (!a2)
    {

      a1 = v197;
      goto LABEL_120;
    }

    v189 = a2;
  }

  v203 = a5;
  v198 = a4;
  v35 = v9 - v8;
  v32 = *AGGraphGetValue();
  LODWORD(v201) = v14;
  v188 = v18;
  if (!v190)
  {
    v221 = v204;
    a8(0);
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type, MEMORY[0x1E69E7DE0]);
    v53 = swift_dynamicCast();
    if (v53)
    {
      v54 = v215;
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = v216;
    }

    else
    {
      v55 = 0;
    }

    v56 = v189;

    v187 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(v57, v34, v54, v55, v35, v32);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v59 = CurrentAttribute;
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v60 = 0;
    }

    else
    {
      v60 = CurrentAttribute;
    }

    (*(*v56 + 96))(&v221);
    v61 = v221;
    v62 = v222;
    v64 = v223;
    v63 = v224;
    v65 = v226;
    v214 = NAN;
    v215 = v221;
    v211 = 0x3FF0000000000000;
    v212 = NAN;
    v210 = 0x7FF8000000000000;
    v216 = v222;
    v217 = *&v223;
    v218 = v224;
    v219 = v225;
    v207 = v225;
    LOBYTE(v220) = v226;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v215, &v214, &v212, &v211, &v210);
    v8 = v214;
    v66 = v211;
    v67 = *&v212;
    v68 = v210;
    a1 = v197;
    if (one-time initialization token for enabledCategories != -1)
    {
      v205 = *&v212;
      v195 = v211;
      v196 = v210;
      swift_once();
      v68 = v196;
      v66 = v195;
      v67 = v205;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_191:
      swift_once();
LABEL_83:
      v89 = *(&static Signpost.animationState + 1);
      v88 = static Signpost.animationState;
      v18 = word_1ED5283E8;
      v90 = HIBYTE(word_1ED5283E8);
      v122 = byte_1ED5283EA;
      v123 = static os_signpost_type_t.begin.getter();
      v215 = v88;
      v216 = v89;
      LOBYTE(v217) = v18;
      BYTE1(v217) = v90;
      BYTE2(v217) = v122;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        a4 = v198;
        *(v198 + 32) = v59;
        goto LABEL_119;
      }

      LODWORD(v207) = v123;
      v124 = one-time initialization token for _signpostLog;

      if (v124 != -1)
      {
        goto LABEL_194;
      }

      goto LABEL_85;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v69 = v60;
      v70 = v63;
      v71 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v72 = v59 == a4;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v205) = a4;
        v73 = v65;
        v74 = *(v71 + 16);
        LODWORD(v215) = v69;
        BYTE4(v215) = v72;
        v216 = v204;
        v217 = v8;
        v218 = v67;
        v219 = v66;
        v220 = v68;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v204 = v75;

        v76 = v74;
        LODWORD(v14) = v201;
        v77 = v76;
        a1 = v197;
        AGGraphAddTraceEvent();
        v78 = v73;
        LODWORD(a4) = v205;
        outlined consume of Animation.Function(v61, v62, v64, v70, v207, v78);

        goto LABEL_82;
      }

      v83 = v61;
      v84 = v62;
      v85 = v64;
      v86 = v70;
    }

    else
    {
      v83 = v61;
      v84 = v62;
      v85 = v64;
      v86 = v63;
    }

    outlined consume of Animation.Function(v83, v84, v85, v86, v207, v65);
LABEL_82:
    v121 = one-time initialization token for animationState;
    v59 = v187;

    if (v121 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_191;
  }

  LOBYTE(v215) = 0;
  v36 = v189;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v189, v18, v14, v35, v32);
  v37 = AGGraphGetCurrentAttribute();
  LODWORD(v14) = v37;
  LODWORD(a4) = *MEMORY[0x1E698D3F8];
  if (v37 == *MEMORY[0x1E698D3F8])
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  LODWORD(v200) = v38;
  (*(*v36 + 96))(&v221);
  v40 = v221;
  v39 = v222;
  v41 = v223;
  v42 = v224;
  v18 = v225;
  LOBYTE(v43) = v226;
  v214 = NAN;
  v215 = v221;
  v211 = 0x3FF0000000000000;
  v212 = NAN;
  v210 = 0x7FF8000000000000;
  v216 = v222;
  v217 = *&v223;
  v218 = v224;
  v219 = v225;
  LOBYTE(v220) = v226;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v215, &v214, &v212, &v211, &v210);
  v8 = v214;
  v44 = v211;
  v45 = *&v212;
  v46 = v210;
  a1 = v197;
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
        v196 = v42;
        v47 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v48 = v14 == a4;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v194 = v18;
          LODWORD(v195) = a4;
          v49 = v43;
          v50 = *(v47 + 16);
          LODWORD(v215) = v200;
          BYTE4(v215) = v48;
          v216 = v204;
          v217 = v8;
          v218 = v45;
          v219 = v44;
          v220 = v46;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v51 = v50;
          a1 = v197;
          AGGraphAddTraceEvent();
          v52 = v49;
          LODWORD(a4) = v195;
          outlined consume of Animation.Function(v40, v39, v41, v196, v194, v52);

          goto LABEL_43;
        }

        v79 = v40;
        v80 = v39;
        v81 = v41;
        v82 = v196;
      }

      else
      {
        v79 = v40;
        v80 = v39;
        v81 = v41;
        v82 = v42;
      }

      outlined consume of Animation.Function(v79, v80, v81, v82, v18, v43);
LABEL_43:
      v87 = one-time initialization token for animationState;

      LODWORD(v14) = v201;
      if (v87 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_189;
    }

    __break(1u);
LABEL_189:
    swift_once();
LABEL_44:
    v89 = *(&static Signpost.animationState + 1);
    v88 = static Signpost.animationState;
    a6 = word_1ED5283E8;
    v90 = HIBYTE(word_1ED5283E8);
    v91 = byte_1ED5283EA;
    v18 = static os_signpost_type_t.event.getter();
    v215 = v88;
    v216 = v89;
    LOBYTE(v217) = a6;
    BYTE1(v217) = v90;
    BYTE2(v217) = v91;
    if (Signpost.isEnabled.getter())
    {
      v92 = one-time initialization token for _signpostLog;

      if (v92 != -1)
      {
        swift_once();
      }

      v40 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == a4)
      {
        __break(1u);
      }

      else
      {
        v93 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v95 = MEMORY[0x1E69E6870];
        *(v14 + 56) = MEMORY[0x1E69E6810];
        *(v14 + 64) = v95;
        *(v14 + 32) = Counter;
        v96 = AGGraphGetCurrentAttribute();
        if (v96 != a4)
        {
          v97 = MEMORY[0x1E69E76D0];
          *(v14 + 96) = MEMORY[0x1E69E7668];
          *(v14 + 104) = v97;
          *(v14 + 72) = v96;
          *(v14 + 136) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(v14 + 144) = v98;
          v99 = v202;
          *(v14 + 112) = v203;
          *(v14 + 120) = v99;
          if (v90)
          {
            LOBYTE(v210) = v18;
            v214 = COERCE_DOUBLE(&dword_18D018000);
            v215 = v88;
            v211 = v14;
            *&v212 = v40;
            v216 = v89;
            LOBYTE(v217) = a6;
            v221 = "Animation: (%p) [%d] %{public}@ updated";
            v222 = 39;
            LOBYTE(v223) = 2;
            v100 = v205;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v210, &v214, &v212, &v215, v205, &v221, &v211);

            (*(v206 + 8))(v100, v208);
          }

          else
          {
            v101 = v88;
            v102 = v18;
            if (v88 == 20)
            {
              v18 = 3;
            }

            else
            {
              v18 = 4;
            }

            v103 = bswap32(v88) | (4 * WORD1(v88));
            LODWORD(a4) = v102;
            v104 = (v206 + 16);
            v191 = *(v206 + 16);
            v105 = v191(v207, v205, v208);
            v41 = 0;
            LOBYTE(v221) = 1;
            v196 = (16 * v18);
            v192 = v104;
            v200 = v104 - 8;
            v195 = v14 + 32;
            v194 = v101;
            v193 = v18;
            do
            {
              v204 = &v187;
              MEMORY[0x1EEE9AC00](v105);
              a1 = (&v187 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
              v42 = a1 + 1;
              v108 = v18;
              v109 = a1 + 1;
              do
              {
                *(v109 - 1) = 0;
                *v109 = 0;
                v109 += 16;
                --v108;
              }

              while (v108);
              v110 = v195 + 40 * v41;
              while (1)
              {
                v111 = *(v14 + 16);
                if (v41 == v111)
                {
                  break;
                }

                if (v41 >= v111)
                {
                  goto LABEL_178;
                }

                ++v41;
                outlined init with copy of AnyTrackedValue(v110, &v215);
                v112 = v218;
                a6 = v219;
                v113 = __swift_project_boxed_opaque_existential_1(&v215, v218);
                v114 = v112;
                v40 = v113;
                *(v42 - 1) = CVarArg.kdebugValue(_:)(v103 | a4, v114, a6);
                *v42 = v115 & 1;
                v42 += 16;
                v106 = __swift_destroy_boxed_opaque_existential_1(&v215);
                v110 += 40;
                if (!--v18)
                {
                  goto LABEL_64;
                }
              }

              LOBYTE(v221) = 0;
LABEL_64:
              v116 = v194;
              if (v194 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v18 = v193;
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

              if (v116 != 20 && *(a1 + 56) == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v117 = *v200;
              v118 = v207;
              v40 = v208;
              (*v200)(v207, v208);
              v119 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
              v105 = v191(v118, v119, v40);
            }

            while ((v221 & 1) != 0);

            v120 = v208;
            v117(v207, v208);
            v117(v205, v120);
          }

          a1 = v197;
          a4 = v198;
          LODWORD(v14) = v201;
          goto LABEL_119;
        }
      }

      __break(1u);
LABEL_194:
      swift_once();
LABEL_85:
      v125 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a6 = swift_allocObject();
      *(a6 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == a4)
      {
        __break(1u);
LABEL_196:
        __break(1u);
      }

      v126 = AGGraphGetAttributeGraph();
      v42 = AGGraphGetCounter();

      v127 = MEMORY[0x1E69E6870];
      *(a6 + 56) = MEMORY[0x1E69E6810];
      *(a6 + 64) = v127;
      *(a6 + 32) = v42;
      v128 = AGGraphGetCurrentAttribute();
      if (v128 == a4)
      {
        goto LABEL_196;
      }

      v129 = MEMORY[0x1E69E76D0];
      *(a6 + 96) = MEMORY[0x1E69E7668];
      *(a6 + 104) = v129;
      *(a6 + 72) = v128;
      *(a6 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(a6 + 144) = v130;
      v131 = v202;
      *(a6 + 112) = v203;
      *(a6 + 120) = v131;
      if (v90)
      {
        LOBYTE(v210) = v207;
        v214 = COERCE_DOUBLE(&dword_18D018000);
        v215 = v88;
        v211 = a6;
        *&v212 = v125;
        v216 = v89;
        LOBYTE(v217) = v18;
        v221 = "Animation: (%p) [%d] %{public}@ started";
        v222 = 39;
        LOBYTE(v223) = 2;
        v132 = v191;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v210, &v214, &v212, &v215, v191, &v221, &v211);
        v133 = v187;

        (*(v206 + 8))(v132, v208);
      }

      else
      {
        v134 = v88;
        v135 = v88 == 20 ? 3 : 4;
        v136 = bswap32(v88) | (4 * WORD1(v88));
        LODWORD(a4) = v207;
        v40 = (v206 + 16);
        v192 = *(v206 + 16);
        v137 = v192(v200, v191, v208);
        v41 = 0;
        LOBYTE(v221) = 1;
        v207 = v135;
        v196 = (16 * v135);
        v193 = v40;
        v204 = v40 - 1;
        v195 = a6 + 32;
        v194 = v134;
        do
        {
          v205 = &v187;
          MEMORY[0x1EEE9AC00](v137);
          a1 = (&v187 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0));
          v18 = (a1 + 1);
          v139 = v207;
          v140 = a1 + 1;
          do
          {
            *(v140 - 1) = 0;
            *v140 = 0;
            v140 += 16;
            --v139;
          }

          while (v139);
          v141 = v195 + 40 * v41;
          v142 = v207;
          while (1)
          {
            v143 = *(a6 + 16);
            if (v41 == v143)
            {
              break;
            }

            if (v41 >= v143)
            {
              goto LABEL_179;
            }

            ++v41;
            outlined init with copy of AnyTrackedValue(v141, &v215);
            v144 = v218;
            v42 = v219;
            v145 = __swift_project_boxed_opaque_existential_1(&v215, v218);
            v146 = v144;
            v40 = v145;
            *(v18 - 8) = CVarArg.kdebugValue(_:)(v136 | a4, v146, v42);
            *v18 = v147 & 1;
            v18 += 16;
            v106 = __swift_destroy_boxed_opaque_existential_1(&v215);
            v141 += 40;
            if (!--v142)
            {
              goto LABEL_102;
            }
          }

          LOBYTE(v221) = 0;
LABEL_102:
          v18 = v194;
          if (v194 == 20)
          {
            v42 = v200;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
            LODWORD(v14) = v201;
          }

          else
          {
            kdebug_trace();
            LODWORD(v14) = v201;
            v42 = v200;
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

          if (v18 != 20 && *(a1 + 56) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v148 = *v204;
          v40 = v208;
          (*v204)(v42, v208);
          v149 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
          v137 = v192(v42, v149, v40);
        }

        while ((v221 & 1) != 0);
        v150 = v187;

        v151 = v42;
        v133 = v150;
        v152 = v208;
        v148(v151, v208);
        v148(v191, v152);
      }

      a4 = v198;
      *(v198 + 32) = v133;
      a1 = v197;
    }

    else
    {

      a4 = v198;
    }

LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v188);

    a6 = v202;
    a5 = v203;
LABEL_120:
    *(a4 + 16) = v9;
    *(a4 + 24) = 0;
LABEL_121:
    v42 = *(a4 + 32);
    if (!v42)
    {
      return;
    }

    v203 = a5;
    v198 = a4;
    v214 = *a1;

    LOBYTE(v215) = 0;
    v153 = specialized AnimatorState.update(_:at:environment:)(&v214, v14, v32);
    v106 = AGGraphGetCurrentAttribute();
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (v106 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v41) = 0;
    }

    else
    {
      LODWORD(v41) = v106;
    }

    v40 = &type metadata instantiation cache for TupleTypeDescription;
    if (v153)
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
    v164 = v40[77];
    if (*(v164 + 16) >= 0x43uLL)
    {
      if (*(v164 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v215) = v41;
        BYTE4(v215) = v106 == a4;
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
    v43 = *(&static Signpost.animationState + 1);
    v41 = static Signpost.animationState;
    LODWORD(v14) = word_1ED5283E8;
    a6 = HIBYTE(word_1ED5283E8);
    v156 = byte_1ED5283EA;
    v39 = static os_signpost_type_t.end.getter();
    v215 = v41;
    v216 = v43;
    LOBYTE(v217) = v14;
    BYTE1(v217) = a6;
    BYTE2(v217) = v156;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v197 = a1;
    v157 = one-time initialization token for _signpostLog;

    if (v157 != -1)
    {
      swift_once();
    }

    v40 = _signpostLog;
    v196 = v42;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != a4)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v196 = v45;
    v194 = v44;
    v195 = v46;
    swift_once();
    v46 = v195;
    v44 = v194;
    v45 = v196;
  }

  v42 = AGGraphGetAttributeGraph();
  v18 = AGGraphGetCounter();

  v158 = MEMORY[0x1E69E6870];
  a1[7] = MEMORY[0x1E69E6810];
  a1[8] = v158;
  a1[4] = v18;
  v159 = AGGraphGetCurrentAttribute();
  if (v159 == a4)
  {
    goto LABEL_186;
  }

  v160 = MEMORY[0x1E69E76D0];
  a1[12] = MEMORY[0x1E69E7668];
  a1[13] = v160;
  *(a1 + 18) = v159;
  a1[17] = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  a1[18] = v161;
  v162 = v202;
  a1[14] = v203;
  a1[15] = v162;
  if (a6)
  {
    v213 = v39;
    v211 = v40;
    *&v212 = &dword_18D018000;
    v215 = v41;
    v216 = v43;
    LOBYTE(v217) = v14;
    v221 = "Animation: (%p) [%d] %{public}@ ended";
    v222 = 37;
    LOBYTE(v223) = 2;
    v210 = a1;
    v163 = v199;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v213, &v212, &v211, &v215, v199, &v221, &v210);

    (*(v206 + 8))(v163, v208);
    goto LABEL_173;
  }

  v165 = v41;
  if (v41 == 20)
  {
    v166 = 3;
  }

  else
  {
    v166 = 4;
  }

  v18 = bswap32(v41) | (4 * WORD1(v41));
  LODWORD(v41) = v39;
  v167 = v206 + 16;
  v200 = *(v206 + 16);
  v168 = (v200)(v209, v199, v208);
  a4 = 0;
  LOBYTE(v221) = 1;
  v204 = (16 * v166);
  v206 = v167;
  v205 = (v167 - 8);
  v203 = a1 + 4;
  v202 = v165;
  v201 = v166;
  do
  {
    v207 = &v187;
    MEMORY[0x1EEE9AC00](v168);
    v42 = &v187 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
    v170 = v42 + 8;
    v171 = v166;
    v172 = v42 + 8;
    do
    {
      *(v172 - 1) = 0;
      *v172 = 0;
      v172 += 16;
      --v171;
    }

    while (v171);
    v173 = &v203[5 * a4];
    while (1)
    {
      v174 = a1[2];
      if (a4 == v174)
      {
        break;
      }

      if (a4 >= v174)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v185 = v106;
        swift_once();
        v106 = v185;
LABEL_127:
        v154 = v40[77];
        if (*(v154 + 16) >= 0x43uLL)
        {
          if (*(v154 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v215) = v41;
            BYTE4(v215) = v106 == a4;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v202 = a6;
          v155 = one-time initialization token for animationState;

          if (v155 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v186 = v106;
        swift_once();
        v106 = v186;
        goto LABEL_140;
      }

      ++a4;
      outlined init with copy of AnyTrackedValue(v173, &v215);
      v175 = v218;
      a6 = v219;
      v176 = __swift_project_boxed_opaque_existential_1(&v215, v218);
      v177 = v175;
      v40 = v176;
      *(v170 - 1) = CVarArg.kdebugValue(_:)(v18 | v41, v177, a6);
      *v170 = v178 & 1;
      v170 += 16;
      v106 = __swift_destroy_boxed_opaque_existential_1(&v215);
      v173 += 40;
      if (!--v166)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v221) = 0;
LABEL_158:
    v179 = v202;
    if (v202 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v42[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v42[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v42[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v179 != 20 && v42[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v180 = *v205;
    v181 = v209;
    v40 = v208;
    (*v205)(v209, v208);
    v182 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
    v168 = (v200)(v181, v182, v40);
    v166 = v201;
  }

  while ((v221 & 1) != 0);

  v183 = v208;
  v180(v209, v208);
  v180(v199, v183);
LABEL_173:

  a1 = v197;
LABEL_174:
  v184 = v198;
  specialized AnimatorState.removeListeners()();

  *(v184 + 32) = 0;
LABEL_175:
  *a1 = v214;
  *(a1 + 8) = 1;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(__n128 *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v318 = *MEMORY[0x1E69E9840];
  v232 = type metadata accessor for OSSignpostID();
  v228 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v10 = &v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v210 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v230 = &v210 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v210 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v231 = &v210 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v210 - v22);
  v24 = *(a4 + 120);
  v233 = a2;
  if (v24)
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

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    a1[7].n128_u8[8] = 1;
  }

  else if (a1[7].n128_u8[8] != 1)
  {
    goto LABEL_94;
  }

  v215 = v18;
  v29 = a1[3];
  v30 = a1[1];
  v301 = a1[2];
  v302 = v29;
  v31 = a1[3];
  v303[0] = a1[4];
  v32 = a1[1];
  v300[0] = *a1;
  v300[1] = v32;
  *(&v303[0].n128_u64[1] + 6) = *(&a1[4].n128_u64[1] + 6);
  v274 = v301;
  v275 = v31;
  v276[0] = a1[4];
  v33 = a1[5].n128_f32[2];
  v34 = a1[7].n128_i64[0];
  *(v276 + 14) = *(&a1[4].n128_u64[1] + 6);
  v272 = v300[0];
  v273 = v30;
  outlined init with copy of _ShapeStyle_Pack.Fill(v300, &v265);
  _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(&v272, &v294);
  specialized Array<A>.animatableData.getter(v34, &v272);
  v35 = *(a4 + 112);
  v310 = v35;
  v36 = *(a4 + 96);
  v308 = *(a4 + 80);
  v309 = v36;
  v37 = *(a4 + 32);
  v304 = *(a4 + 16);
  v305 = v37;
  v38 = *(a4 + 48);
  v307 = *(a4 + 64);
  v306 = v38;
  v227 = v272;
  if (!v35)
  {
    goto LABEL_93;
  }

  v39 = *(a4 + 64);
  v40 = *(a4 + 32);
  v290 = *(a4 + 48);
  v291 = v39;
  v41 = *(a4 + 64);
  v292 = *(a4 + 80);
  v42 = *(a4 + 32);
  v288 = *(a4 + 16);
  v289 = v42;
  v284[2] = v296;
  v284[3] = v297;
  v284[4] = v298;
  v284[0] = v294;
  v284[1] = v295;
  v293 = *(a4 + 96);
  v280[2] = v290;
  v280[3] = v41;
  v280[4] = *(a4 + 80);
  LODWORD(v4) = DWORD2(v309);
  v43 = HIDWORD(v309);
  v285 = v299;
  v286 = v33;
  v287 = v272;
  v281 = *(a4 + 96);
  v280[0] = v288;
  v280[1] = v40;
  v282 = *(&v309 + 1);
  v283 = v35;
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v304, &v272, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
  if (specialized static _ShapeStyle_Pack.Fill.AnimatableData.== infix(_:_:)(v284, v280) & 1) != 0 && v33 == *&v4 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14AnimatablePairVySfAC16_ShapeStyle_PackV6EffectV4KindO0D4DataOG_Tt1g5(v227, v35))
  {
    outlined destroy of Slice<IndexSet>(&v304, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
    goto LABEL_93;
  }

  v229 = v10;
  v211 = v13;
  v221 = a1;
  v222 = v23;
  AGGraphClearUpdate();
  v44 = *(a4 + 112);
  v277 = *(a4 + 96);
  v278 = v44;
  v279 = *(a4 + 128);
  v45 = *(a4 + 48);
  v274 = *(a4 + 32);
  v275 = v45;
  v46 = *(a4 + 80);
  v276[0] = *(a4 + 64);
  v276[1] = v46;
  v48 = *a4;
  v47 = *(a4 + 16);
  v216 = a4;
  v272 = v48;
  v273 = v47;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v272, &v265, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Style>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Style and conformance _ShapeStyle_Pack.Style, &type metadata for _ShapeStyle_Pack.Style, type metadata accessor for AnimatableAttributeHelper);
  v49 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v272, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Style>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Style and conformance _ShapeStyle_Pack.Style, &type metadata for _ShapeStyle_Pack.Style, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v50 = Transaction.effectiveAnimation.getter(v49);
  if (v50)
  {
    a4 = v50;
    v214 = a3;
    goto LABEL_18;
  }

  a4 = v233;
  if (v233)
  {
    v214 = a3;

LABEL_18:
    v51 = v221;
    *&v263 = v299;
    v262[2] = v296;
    v262[3] = v297;
    v262[4] = v298;
    v262[0] = v294;
    v262[1] = v295;
    *(&v263 + 2) = v33;
    v264 = v227;
    *v261 = v227;
    v257 = v296;
    v258 = v297;
    v255 = v294;
    v256 = v295;
    v259 = v298;
    v260 = v263;
    v267 = v290;
    v268 = v291;
    v269[0] = v292;
    *&v269[1] = v293;
    v265 = v288;
    v266 = v289;
    *(&v269[1] + 1) = __PAIR64__(v43, v4);
    v270.n128_u64[0] = v35;
    v52 = *(&v278 + 1);
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v262, &v247, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(&v255, &v265);
    *(&v260 + 2) = v33 - *&v4;
    _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(v261, v270.n128_i64[0]);
    v27 = *AGGraphGetValue();
    v212 = a4;
    v213 = v49;
    if (!v52)
    {
      v315 = v259;
      v316 = v260;
      v317 = *v261;
      v311 = v255;
      v312 = v256;
      v313 = v257;
      v314 = v258;
      *&v247 = &type metadata for _ShapeStyle_Pack.Style;
      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v311, &v265, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
      type metadata accessor for _ShapeStyle_Pack.Style.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Type, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
      v91 = swift_dynamicCast();
      if (v91)
      {
        v92 = v265;
      }

      else
      {
        v92 = 0;
      }

      if (v91)
      {
        v93 = *(&v265 + 1);
      }

      else
      {
        v93 = 0;
      }

      v217 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAA16_ShapeStyle_PackV4FillO0U4DataOAVySfAA0U5ArrayVyAVySfAX6EffectV4KindOA_OGGGG_Tt4B5(v94, &v311, v49, v92, v93, v27);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v93) = CurrentAttribute;
      v96 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v73) = 0;
      }

      else
      {
        LODWORD(v73) = CurrentAttribute;
      }

      v97 = v51[5];
      v251 = v51[4];
      v252 = v97;
      v253 = v51[6];
      v254 = v51[7].n128_u64[0];
      v98 = v51[1];
      v247 = *v51;
      v248 = v98;
      v99 = v51[3];
      v249 = v51[2];
      v250 = v99;
      v271 = v254;
      v269[1] = v97;
      v270 = v253;
      v268 = v99;
      v269[0] = v251;
      v266 = v98;
      v267 = v249;
      v265 = v247;
      outlined init with copy of _ShapeStyle_Pack.Style(&v247, &v242);
      v100 = outlined destroy of _ShapeStyle_Pack.Style(&v265);
      (*(*a4 + 96))(&v238, v100);
      v101 = *(&v238 + 1);
      v102 = v238;
      v103 = v239;
      v104 = v240;
      LOBYTE(a4) = v241;
      v236 = 0x7FF8000000000000;
      v237 = 0x7FF8000000000000;
      v234 = NAN;
      v235 = 0x3FF0000000000000;
      v242 = v238;
      v243 = v239;
      v233 = *(&v239 + 1);
      v244.n128_u64[0] = v240;
      v244.n128_u8[8] = v241;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v242, &v237, &v236, &v235, &v234);
      v105 = v236;
      v4 = v237;
      v106 = v234;
      v107 = v235;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_190;
      }

      goto LABEL_47;
    }

    v315 = v259;
    v316 = v260;
    v317 = *v261;
    v311 = v255;
    v312 = v256;
    v313 = v257;
    v314 = v258;

    LOBYTE(v265) = 0;
    v217 = v52;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(a4, &v311, v49, v214, v27);
    v53 = AGGraphGetCurrentAttribute();
    v54 = v53;
    v55 = *MEMORY[0x1E698D3F8];
    if (v53 == *MEMORY[0x1E698D3F8])
    {
      v56 = 0;
    }

    else
    {
      v56 = v53;
    }

    LODWORD(v233) = v56;
    v57 = v51[5];
    v251 = v51[4];
    v252 = v57;
    v253 = v51[6];
    v254 = v51[7].n128_u64[0];
    v58 = v51[1];
    v247 = *v51;
    v248 = v58;
    v59 = v51[3];
    v249 = v51[2];
    v250 = v59;
    v271 = v254;
    v269[1] = v57;
    v270 = v253;
    v268 = v59;
    v269[0] = v251;
    v266 = v58;
    v267 = v249;
    v265 = v247;
    outlined init with copy of _ShapeStyle_Pack.Style(&v247, &v242);
    v60 = outlined destroy of _ShapeStyle_Pack.Style(&v265);
    (*(*a4 + 96))(&v238, v60);
    v61 = v238;
    v62 = v239;
    v63 = v240;
    v64 = v241;
    v236 = 0x7FF8000000000000;
    v237 = 0x7FF8000000000000;
    v234 = NAN;
    v235 = 0x3FF0000000000000;
    v242 = v238;
    v243 = v239;
    v244.n128_u64[0] = v240;
    v244.n128_u8[8] = v241;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v242, &v237, &v236, &v235, &v234);
    v65 = v236;
    v4 = v237;
    v66 = v234;
    v67 = v235;
    if (one-time initialization token for enabledCategories != -1)
    {
      v229 = v236;
      v225 = v235;
      *&v226 = v234;
      swift_once();
      v67 = v225;
      v66 = *&v226;
      v65 = v229;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v68 = static CustomEventTrace.recorder) != 0)
      {
        v229 = v63;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        LODWORD(v226) = v64;
        v69 = *(v68 + 16);
        LODWORD(v242) = v233;
        BYTE4(v242) = v54 == v55;
        *(&v242 + 1) = &type metadata for _ShapeStyle_Pack.Style;
        v243.n128_u64[0] = v4;
        v243.n128_u64[1] = v65;
        v244.n128_u64[0] = v67;
        v244.n128_f64[1] = v66;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v233 = v70;

        v71 = v69;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v61, *(&v61 + 1), v62, *(&v62 + 1), v229, v226);
      }

      else
      {
        outlined consume of Animation.Function(v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64);
      }

      v72 = one-time initialization token for animationState;

      if (v72 == -1)
      {
LABEL_30:
        v74 = *(&static Signpost.animationState + 1);
        v73 = static Signpost.animationState;
        v75 = word_1ED5283E8;
        v76 = HIBYTE(word_1ED5283E8);
        v77 = byte_1ED5283EA;
        v78 = static os_signpost_type_t.event.getter();
        v242 = __PAIR128__(v74, v73);
        v243.n128_u8[0] = v75;
        v243.n128_u8[1] = v76;
        v243.n128_u8[2] = v77;
        if (Signpost.isEnabled.getter())
        {
          LODWORD(v233) = v78;
          v79 = v55;
          v80 = one-time initialization token for _signpostLog;

          if (v80 != -1)
          {
            swift_once();
          }

          v81 = _signpostLog;
          OSSignpostID.init(log:object:)();
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_18DDAF080;
          if (AGGraphGetCurrentAttribute() == v55)
          {
            __break(1u);
          }

          else
          {
            v83 = AGGraphGetAttributeGraph();
            Counter = AGGraphGetCounter();

            v85 = MEMORY[0x1E69E6870];
            *(v82 + 56) = MEMORY[0x1E69E6810];
            *(v82 + 64) = v85;
            *(v82 + 32) = Counter;
            v86 = AGGraphGetCurrentAttribute();
            if (v86 != v79)
            {
              v87 = v82;
              v88 = MEMORY[0x1E69E76D0];
              *(v82 + 96) = MEMORY[0x1E69E7668];
              *(v82 + 104) = v88;
              *(v82 + 72) = v86;
              *(v82 + 136) = MEMORY[0x1E69E6158];
              lazy protocol witness table accessor for type String and conformance String();
              *(v82 + 144) = v89;
              *(v82 + 112) = 0x656C797453;
              *(v82 + 120) = 0xE500000000000000;
              if (v76)
              {
                LOBYTE(v234) = v233;
                v236 = v81;
                v237 = &dword_18D018000;
                *&v242 = v73;
                *(&v242 + 1) = v74;
                v243.n128_u8[0] = v75;
                *&v238 = "Animation: (%p) [%d] %{public}@ updated";
                *(&v238 + 1) = 39;
                LOBYTE(v239) = 2;
                v235 = v82;
                v90 = v215;
                specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v234, &v237, &v236, &v242, v215, &v238, &v235);

                (*(v228 + 8))(v90, v232);
              }

              else
              {
                if (v73 == 20)
                {
                  a4 = 3;
                }

                else
                {
                  a4 = 4;
                }

                LODWORD(v131) = bswap32(v73) | (4 * WORD1(v73));
                LODWORD(v233) = v233;
                v132 = v228 + 16;
                v219 = *(v228 + 16);
                v133 = v219(v230, v215, v232);
                v134 = 0;
                LOBYTE(v238) = 1;
                v220 = v132;
                v225 = 16 * a4;
                v226 = v132 - 8;
                v223 = v73;
                v224 = v87 + 32;
                v73 = v87;
                v218 = a4;
                do
                {
                  v229 = &v210;
                  MEMORY[0x1EEE9AC00](v133);
                  v23 = (&v210 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0));
                  a1 = (v23 + 1);
                  v137 = a4;
                  v138 = v23 + 1;
                  do
                  {
                    *(v138 - 1) = 0;
                    *v138 = 0;
                    v138 += 16;
                    --v137;
                  }

                  while (v137);
                  v139 = v224 + 40 * v134;
                  while (1)
                  {
                    v140 = *(v87 + 16);
                    if (v134 == v140)
                    {
                      break;
                    }

                    if (v134 >= v140)
                    {
                      goto LABEL_179;
                    }

                    ++v134;
                    outlined init with copy of AnyTrackedValue(v139, &v242);
                    v141 = v243.n128_i64[1];
                    v142 = v244.n128_u64[0];
                    __swift_project_boxed_opaque_existential_1(&v242, v243.n128_i64[1]);
                    v143 = v142;
                    v87 = v73;
                    a1[-1].n128_u64[1] = CVarArg.kdebugValue(_:)(v131 | v233, v141, v143);
                    a1->n128_u8[0] = v144 & 1;
                    ++a1;
                    v135 = __swift_destroy_boxed_opaque_existential_1(&v242);
                    v139 += 40;
                    if (!--a4)
                    {
                      goto LABEL_75;
                    }
                  }

                  LOBYTE(v238) = 0;
LABEL_75:
                  v145 = v223;
                  if (v223 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  a4 = v218;
                  if (*(v23 + 8) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (*(v23 + 24) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (*(v23 + 40) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v145 != 20 && *(v23 + 56) == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v146 = *v226;
                  v147 = v230;
                  v148 = v232;
                  (*v226)(v230, v232);
                  v149 = __swift_project_value_buffer(v148, static OSSignpostID.continuation);
                  v133 = v219(v147, v149, v148);
                  v87 = v73;
                }

                while ((v238 & 1) != 0);

                v150 = v232;
                v146(v230, v232);
                v146(v215, v150);
              }

LABEL_91:
              a1 = v221;
              a4 = v216;
              goto LABEL_92;
            }
          }

          __break(1u);
          goto LABEL_195;
        }

        goto LABEL_91;
      }
    }

    swift_once();
    goto LABEL_30;
  }

  outlined destroy of Slice<IndexSet>(&v304, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);

  a1 = v221;
  v23 = v222;
  a4 = v216;
LABEL_93:
  while (1)
  {
    v151 = *(a4 + 96);
    v276[0] = *(a4 + 80);
    v276[1] = v151;
    *&v277 = *(a4 + 112);
    v152 = *(a4 + 32);
    v272 = *(a4 + 16);
    v273 = v152;
    v153 = *(a4 + 64);
    v274 = *(a4 + 48);
    v275 = v153;
    result = outlined destroy of Slice<IndexSet>(&v272, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
    v154 = v297;
    *(a4 + 48) = v296;
    *(a4 + 64) = v154;
    *(a4 + 80) = v298;
    *(a4 + 96) = v299;
    v155 = v295;
    *(a4 + 16) = v294;
    *(a4 + 32) = v155;
    *(a4 + 104) = v33;
    *(a4 + 112) = v227;
LABEL_94:
    v87 = *(a4 + 120);
    if (!v87)
    {
      return result;
    }

    v156 = a1[3];
    v157 = a1[1];
    v244 = a1[2];
    v245 = v156;
    v158 = a1[3];
    v246[0] = a1[4];
    v159 = a1[1];
    v242 = *a1;
    v243 = v159;
    *(&v246[0].n128_u64[1] + 6) = *(&a1[4].n128_u64[1] + 6);
    v267 = v244;
    v268 = v158;
    v269[0] = a1[4];
    v33 = a1[5].n128_f32[2];
    v139 = &a1[7];
    v160 = a1[7].n128_i64[0];
    *(v269 + 14) = *(&a1[4].n128_u64[1] + 6);
    v265 = v242;
    v266 = v157;

    outlined init with copy of _ShapeStyle_Pack.Fill(&v242, &v272);
    _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(&v265, &v272);
    specialized Array<A>.animatableData.getter(v160, &v277);
    *(&v276[1] + 2) = v33;
    LOBYTE(v265) = 0;
    v161 = specialized AnimatorState.update(_:at:environment:)(&v272, a3, v27);
    v135 = AGGraphGetCurrentAttribute();
    LODWORD(v73) = *MEMORY[0x1E698D3F8];
    if (v135 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v131) = 0;
    }

    else
    {
      LODWORD(v131) = v135;
    }

    v134 = &type metadata instantiation cache for TupleTypeDescription;
    if (v161)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_100;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_113:
    v174 = *(v134 + 616);
    if (*(v174 + 16) >= 0x43uLL)
    {
      if (*(v174 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v265) = v131;
        BYTE4(v265) = v135 == v73;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_148;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_105:
    v93 = *(&static Signpost.animationState + 1);
    v103 = static Signpost.animationState;
    v96 = word_1ED5283E8;
    v102 = HIBYTE(word_1ED5283E8);
    v165 = byte_1ED5283EA;
    v166 = static os_signpost_type_t.end.getter();
    v233 = v103;
    v265 = __PAIR128__(v93, v103);
    v230 = v93;
    v266.n128_u8[0] = v96;
    v266.n128_u8[1] = v102;
    v266.n128_u8[2] = v165;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_147;
    }

    LODWORD(v229) = v166;
    v167 = one-time initialization token for _signpostLog;

    if (v167 != -1)
    {
      swift_once();
    }

    v216 = a4;
    v221 = a1;
    v101 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v73)
    {
      break;
    }

    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    v230 = v105;
    v225 = v107;
    *&v226 = v106;
    swift_once();
    v107 = v225;
    v106 = *&v226;
    v105 = v230;
LABEL_47:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_192:
      swift_once();
      goto LABEL_54;
    }

    v108 = *(static CustomEventTrace.enabledCategories + 98);
    LODWORD(v230) = v96;
    if (v108 == 1 && (v109 = static CustomEventTrace.recorder) != 0)
    {
      v110 = v93 == v96;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
      v111 = *(v109 + 16);
      LODWORD(v242) = v73;
      BYTE4(v242) = v110;
      *(&v242 + 1) = &type metadata for _ShapeStyle_Pack.Style;
      v243.n128_u64[0] = v4;
      v243.n128_u64[1] = v105;
      v244.n128_u64[0] = v107;
      v244.n128_f64[1] = v106;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      v226 = v112;

      v113 = a4;
      v114 = v111;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v102, v101, v103, v233, v104, v113);
    }

    else
    {
      outlined consume of Animation.Function(v102, v101, v103, v233, v104, a4);
    }

    v115 = one-time initialization token for animationState;

    if (v115 != -1)
    {
      goto LABEL_192;
    }

LABEL_54:
    v74 = *(&static Signpost.animationState + 1);
    v73 = static Signpost.animationState;
    v75 = word_1ED5283E8;
    v76 = HIBYTE(word_1ED5283E8);
    v116 = byte_1ED5283EA;
    v117 = static os_signpost_type_t.begin.getter();
    v242 = __PAIR128__(v74, v73);
    v243.n128_u8[0] = v75;
    v243.n128_u8[1] = v76;
    v243.n128_u8[2] = v116;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v130 = v217;

      goto LABEL_61;
    }

    LODWORD(v233) = v117;
    v118 = one-time initialization token for _signpostLog;

    if (v118 != -1)
    {
LABEL_195:
      swift_once();
    }

    v119 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_18DDAF080;
    v121 = AGGraphGetCurrentAttribute();
    v122 = v230;
    if (v121 == v230)
    {
      __break(1u);
LABEL_197:
      __break(1u);
    }

    v123 = AGGraphGetAttributeGraph();
    v124 = AGGraphGetCounter();

    v125 = MEMORY[0x1E69E6870];
    *(v120 + 56) = MEMORY[0x1E69E6810];
    *(v120 + 64) = v125;
    *(v120 + 32) = v124;
    v126 = AGGraphGetCurrentAttribute();
    if (v126 == v122)
    {
      goto LABEL_197;
    }

    a4 = v120;
    v127 = MEMORY[0x1E69E76D0];
    *(v120 + 96) = MEMORY[0x1E69E7668];
    *(v120 + 104) = v127;
    *(v120 + 72) = v126;
    *(v120 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v120 + 144) = v128;
    *(v120 + 112) = 0x656C797453;
    *(v120 + 120) = 0xE500000000000000;
    v129 = v211;
    if (v76)
    {
      LOBYTE(v234) = v233;
      v236 = v119;
      v237 = &dword_18D018000;
      *&v242 = v73;
      *(&v242 + 1) = v74;
      v243.n128_u8[0] = v75;
      *&v238 = "Animation: (%p) [%d] %{public}@ started";
      *(&v238 + 1) = 39;
      LOBYTE(v239) = 2;
      v235 = a4;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v234, &v237, &v236, &v242, v211, &v238, &v235);
      v130 = v217;

      (*(v228 + 8))(v129, v232);

LABEL_61:
      a4 = v216;
      *(v216 + 120) = v130;
      a1 = v221;
      goto LABEL_92;
    }

    if (v73 == 20)
    {
      v190 = 3;
    }

    else
    {
      v190 = 4;
    }

    LODWORD(v131) = bswap32(v73) | (4 * WORD1(v73));
    LODWORD(v233) = v233;
    v191 = (v228 + 16);
    v87 = v190;
    v218 = *(v228 + 16);
    v192 = v218(v229, v211, v232);
    v134 = 0;
    LOBYTE(v238) = 1;
    v219 = v191;
    v220 = v87;
    v225 = 16 * v87;
    v226 = v191 - 8;
    v223 = v73;
    v224 = a4 + 32;
    do
    {
      v230 = &v210;
      MEMORY[0x1EEE9AC00](v192);
      a1 = (&v210 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = &a1->n128_u64[1];
      v194 = v87;
      v195 = &a1->n128_u64[1];
      do
      {
        *(v195 - 1) = 0;
        *v195 = 0;
        v195 += 2;
        --v194;
      }

      while (v194);
      v139 = v224 + 40 * v134;
      while (1)
      {
        v196 = *(a4 + 16);
        if (v134 == v196)
        {
          break;
        }

        if (v134 >= v196)
        {
          goto LABEL_180;
        }

        ++v134;
        outlined init with copy of AnyTrackedValue(v139, &v242);
        v73 = a4;
        v197 = v243.n128_i64[1];
        v198 = v244.n128_u64[0];
        __swift_project_boxed_opaque_existential_1(&v242, v243.n128_i64[1]);
        v199 = v198;
        a4 = v73;
        *(v23 - 1) = CVarArg.kdebugValue(_:)(v131 | v233, v197, v199);
        *v23 = v200 & 1;
        v23 += 2;
        v135 = __swift_destroy_boxed_opaque_existential_1(&v242);
        v139 += 40;
        if (!--v87)
        {
          goto LABEL_162;
        }
      }

      LOBYTE(v238) = 0;
LABEL_162:
      v201 = v223;
      if (v223 == 20)
      {
        v202 = v229;
        OSSignpostID.rawValue.getter();
        kdebug_trace();
      }

      else
      {
        kdebug_trace();
        v202 = v229;
      }

      if (a1->n128_u8[8] == 1)
      {
        kdebug_trace_string();
      }

      if (a1[1].n128_u8[8] == 1)
      {
        kdebug_trace_string();
      }

      if (a1[2].n128_u8[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v201 != 20 && a1[3].n128_u8[8] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v203 = *v226;
      v204 = v232;
      (*v226)(v202, v232);
      v205 = __swift_project_value_buffer(v204, static OSSignpostID.continuation);
      v192 = v218(v202, v205, v204);
      v87 = v220;
    }

    while ((v238 & 1) != 0);
    v206 = v217;

    v207 = v232;
    v203(v202, v232);
    v203(v211, v207);

    a4 = v216;
    *(v216 + 120) = v206;
    a1 = v221;
LABEL_92:
    v23 = v222;
    a3 = v214;
    specialized AnimatorState.addListeners(transaction:)(v213);

    v269[0] = v259;
    v269[1] = v260;
    v270.n128_u64[0] = *v261;
    v265 = v255;
    v266 = v256;
    v267 = v257;
    v268 = v258;
    outlined destroy of Slice<IndexSet>(&v265, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    outlined destroy of Slice<IndexSet>(&v304, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
  }

  v168 = AGGraphGetAttributeGraph();
  v103 = AGGraphGetCounter();

  v169 = MEMORY[0x1E69E6870];
  *(v104 + 56) = MEMORY[0x1E69E6810];
  *(v104 + 64) = v169;
  *(v104 + 32) = v103;
  v170 = AGGraphGetCurrentAttribute();
  if (v170 == v73)
  {
    goto LABEL_189;
  }

  v171 = MEMORY[0x1E69E76D0];
  *(v104 + 96) = MEMORY[0x1E69E7668];
  *(v104 + 104) = v171;
  *(v104 + 72) = v170;
  *(v104 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v104 + 144) = v172;
  *(v104 + 112) = 0x656C797453;
  *(v104 + 120) = 0xE500000000000000;
  v173 = v222;
  if (v102)
  {
    LOBYTE(v262[0]) = v229;
    *&v304 = &dword_18D018000;
    *&v284[0] = v101;
    *&v265 = v233;
    *(&v265 + 1) = v230;
    v266.n128_u8[0] = v96;
    *&v247 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v247 + 1) = 37;
    v248.n128_u8[0] = 2;
    *&v280[0] = v104;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(v262, &v304, v284, &v265, v222, &v247, v280);

    (*(v228 + 8))(v173, v232);
    goto LABEL_146;
  }

  v175 = v233;
  if (v233 == 20)
  {
    v139 = 3;
  }

  else
  {
    v139 = 4;
  }

  LODWORD(v73) = bswap32(v233) | (4 * WORD1(v233));
  v134 = v229;
  v176 = v228 + 16;
  v223 = *(v228 + 16);
  v177 = (v223)(v231, v222, v232);
  v87 = 0;
  LOBYTE(v247) = 1;
  v230 = v139;
  v228 = v176;
  v226 = 16 * v139;
  v227 = (v176 - 8);
  v233 = v104;
  v224 = v175;
  v225 = v104 + 32;
  do
  {
    v229 = &v210;
    MEMORY[0x1EEE9AC00](v177);
    v23 = (&v210 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0));
    v131 = v23 + 1;
    v179 = v230;
    v180 = v23 + 1;
    do
    {
      *(v180 - 1) = 0;
      *v180 = 0;
      v180 += 16;
      --v179;
    }

    while (v179);
    a1 = (v225 + 40 * v87);
    a4 = v230;
    while (1)
    {
      v181 = *(v233 + 16);
      if (v87 == v181)
      {
        break;
      }

      if (v87 >= v181)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v208 = v135;
        swift_once();
        v135 = v208;
LABEL_100:
        v162 = *(v134 + 616);
        if (*(v162 + 16) >= 0x43uLL)
        {
          v163 = *(v162 + 98);
          v219 = v139;
          if (v163 == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v265) = v131;
            BYTE4(v265) = v135 == v73;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v222 = v23;
          v164 = one-time initialization token for animationState;
          v220 = v87;

          if (v164 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_105;
        }

        __break(1u);
LABEL_183:
        v209 = v135;
        swift_once();
        v135 = v209;
        goto LABEL_113;
      }

      ++v87;
      outlined init with copy of AnyTrackedValue(a1, &v265);
      v182 = v266.n128_i64[1];
      v139 = v267.n128_u64[0];
      __swift_project_boxed_opaque_existential_1(&v265, v266.n128_i64[1]);
      *(v131 - 1) = CVarArg.kdebugValue(_:)(v73 | v134, v182, v139);
      *v131 = v183 & 1;
      v131 += 16;
      v135 = __swift_destroy_boxed_opaque_existential_1(&v265);
      a1 = (a1 + 40);
      if (!--a4)
      {
        goto LABEL_131;
      }
    }

    LOBYTE(v247) = 0;
LABEL_131:
    v184 = v224;
    if (v224 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(v23 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v23 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v23 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v184 != 20 && *(v23 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v185 = *v227;
    v139 = v231;
    v186 = v232;
    (*v227)(v231, v232);
    v187 = __swift_project_value_buffer(v186, static OSSignpostID.continuation);
    v177 = (v223)(v139, v187, v186);
  }

  while ((v247 & 1) != 0);

  v188 = v232;
  v185(v231, v232);
  v185(v222, v188);
LABEL_146:

  a1 = v221;
  a4 = v216;
LABEL_147:
  specialized AnimatorState.removeListeners()();

  *(a4 + 120) = 0;
LABEL_148:
  v251 = v276[0];
  v252 = v276[1];
  v253.n128_u64[0] = v277;
  v247 = v272;
  v248 = v273;
  v249 = v274;
  v250 = v275;
  v306 = v274;
  v307 = v275;
  v308 = v276[0];
  LOBYTE(v309) = v276[1];
  v304 = v272;
  v305 = v273;
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v247, &v265, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(a1);
  a1[5].n128_u32[2] = v252.n128_u32[2];

  specialized Array<A>.animatableData.setter(v189);

  outlined destroy of Slice<IndexSet>(&v247, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

  v269[0] = v276[0];
  v269[1] = v276[1];
  v270.n128_u64[0] = v277;
  v265 = v272;
  v266 = v273;
  v267 = v274;
  v268 = v275;
  result = outlined destroy of Slice<IndexSet>(&v265, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  a1[7].n128_u8[8] = 1;
  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(unint64_t a1, unint64_t a2, unsigned int a3, char *a4)
{
  v288 = *MEMORY[0x1E69E9840];
  v221 = type metadata accessor for OSSignpostID();
  v217 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  Counter = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v202 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v219 = &v202 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v216 = (&v202 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v220 = &v202 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v210 = &v202 - v20;
  v21 = *(a4 + 13);
  v222 = a2;
  if (v21)
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

  v25 = v278;
  v26 = &v252;
  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 86) = 1;
  }

  else if (*(a1 + 86) != 1)
  {
    goto LABEL_121;
  }

  v28 = *(a1 + 48);
  v29 = *(a1 + 16);
  v279 = *(a1 + 32);
  v280 = v28;
  v30 = *(a1 + 48);
  v281[0] = *(a1 + 64);
  v31 = *(a1 + 16);
  v278[0] = *a1;
  v278[1] = v31;
  v259 = v279;
  v260 = v30;
  v261[0] = *(a1 + 64);
  *(v281 + 14) = *(a1 + 78);
  *(v261 + 14) = *(a1 + 78);
  v257 = v278[0];
  v258 = v29;
  outlined init with copy of _ShapeStyle_Pack.Fill(v278, &v252);
  _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(&v257, &v270);
  v277 = a4[96];
  v32 = *(a4 + 4);
  v276[2] = *(a4 + 3);
  v276[3] = v32;
  v276[4] = *(a4 + 5);
  v33 = *(a4 + 2);
  v276[0] = *(a4 + 1);
  v276[1] = v33;
  if (v277 == 255)
  {
    goto LABEL_120;
  }

  v34 = *(a4 + 4);
  v266 = *(a4 + 3);
  v267 = v34;
  v268 = *(a4 + 5);
  v269 = a4[96];
  v35 = *(a4 + 2);
  v264 = *(a4 + 1);
  v265 = v35;
  outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(v276, &v257, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for HitTestableEvent?);
  if ((specialized static _ShapeStyle_Pack.Fill.AnimatableData.== infix(_:_:)(&v270, &v264) & 1) == 0)
  {
    v218 = Counter;
    v209 = a1;
    AGGraphClearUpdate();
    v37 = *(a4 + 5);
    v261[0] = *(a4 + 4);
    v261[1] = v37;
    v262 = *(a4 + 6);
    v263 = *(a4 + 28);
    v38 = *(a4 + 1);
    v257 = *a4;
    v258 = v38;
    v39 = *(a4 + 2);
    v40 = *(a4 + 3);
    v208 = a4;
    v259 = v39;
    v260 = v40;
    Counter = &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Fill>;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v257, &v252, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Fill>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill and conformance _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill, type metadata accessor for AnimatableAttributeHelper);
    v41 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v257, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Fill>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill and conformance _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v42 = Transaction.effectiveAnimation.getter(v41);
    if (v42)
    {
      v43 = v42;
      v206 = v12;
      v204 = a3;
    }

    else
    {
      v43 = v222;
      if (!v222)
      {
        v26 = &v252;
        v254 = v266;
        v255 = v267;
        v256[0] = v268;
        LOBYTE(v256[1]) = v269;
        v252 = v264;
        v253 = v265;
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v252);

        a4 = v208;
        a1 = v209;
        v25 = v278;
        goto LABEL_120;
      }

      v206 = v12;
      v204 = a3;
    }

    v44 = v209;
    v45 = *(&v262 + 1);
    v250[2] = v272;
    v250[3] = v273;
    v250[4] = v274;
    v251 = v275;
    v250[0] = v270;
    v250[1] = v271;
    v249 = v275;
    v247 = v273;
    v248 = v274;
    v245 = v271;
    v246 = v272;
    v244 = v270;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v250, &v252);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(&v244, &v264);
    v24 = *AGGraphGetValue();
    v202 = v43;
    v203 = v41;
    if (v45)
    {
      v284 = v246;
      v285 = v247;
      v286 = v248;
      v287 = v249;
      v282 = v244;
      v283 = v245;

      LOBYTE(v252) = 0;
      v205 = v45;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v43, &v282, v41, v204, v24);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(Counter) = CurrentAttribute;
      LODWORD(v222) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == v222)
      {
        v47 = 0;
      }

      else
      {
        v47 = CurrentAttribute;
      }

      LODWORD(v218) = v47;
      v48 = *(v44 + 48);
      v241 = *(v44 + 32);
      v242 = v48;
      v243[0] = *(v44 + 64);
      v49 = v243[0];
      *(v243 + 14) = *(v44 + 78);
      v50 = *(v44 + 16);
      v239 = *v44;
      v240 = v50;
      v255 = v48;
      v256[0] = v49;
      v253 = v50;
      v254 = v241;
      *(v256 + 14) = *(v243 + 14);
      v252 = v239;
      outlined init with copy of _ShapeStyle_Pack.Fill(&v239, &v233);
      v51 = outlined destroy of _ShapeStyle_Pack.Fill(&v252);
      (*(*v43 + 96))(&v227, v51);
      v53 = v227;
      v52 = v228;
      v54 = v229;
      v55 = v231;
      LOBYTE(v56) = v232;
      v225 = 0x7FF8000000000000;
      v226 = 0x7FF8000000000000;
      v223 = NAN;
      v224 = 0x3FF0000000000000;
      v233 = v227;
      v234 = v228;
      v235 = v229;
      v236 = v230;
      v57 = v230;
      v237 = v231;
      LOBYTE(v238) = v232;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v233, &v226, &v225, &v224, &v223);
      v58 = v225;
      v59 = v226;
      v60 = v223;
      v61 = v224;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_187;
      }

      goto LABEL_21;
    }

    v284 = v246;
    v285 = v247;
    v286 = v248;
    v287 = v249;
    v282 = v244;
    v283 = v245;
    *&v239 = &type metadata for _ShapeStyle_Pack.Fill;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v282, &v252);
    type metadata accessor for _ShapeStyle_Pack.Fill.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _ShapeStyle_Pack.Fill.AnimatableData>.Type, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    v83 = swift_dynamicCast();
    if (v83)
    {
      v84 = v252;
    }

    else
    {
      v84 = 0;
    }

    if (v83)
    {
      v85 = *(&v252 + 1);
    }

    else
    {
      v85 = 0;
    }

    v205 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16_ShapeStyle_PackV4FillO14AnimatableDataO_Tt4B5(v86, &v282, v41, v84, v85, v24);
    v87 = AGGraphGetCurrentAttribute();
    LODWORD(Counter) = v87;
    v88 = *MEMORY[0x1E698D3F8];
    if (v87 == *MEMORY[0x1E698D3F8])
    {
      v89 = 0;
    }

    else
    {
      v89 = v87;
    }

    v90 = *(v44 + 48);
    v241 = *(v44 + 32);
    v242 = v90;
    v243[0] = *(v44 + 64);
    v91 = v243[0];
    *(v243 + 14) = *(v44 + 78);
    v92 = *(v44 + 16);
    v239 = *v44;
    v240 = v92;
    v255 = v90;
    v256[0] = v91;
    v253 = v92;
    v254 = v241;
    *(v256 + 14) = *(v243 + 14);
    v252 = v239;
    outlined init with copy of _ShapeStyle_Pack.Fill(&v239, &v233);
    v93 = outlined destroy of _ShapeStyle_Pack.Fill(&v252);
    (*(*v43 + 96))(&v227, v93);
    v95 = v227;
    v94 = v228;
    v96 = v229;
    v97 = v230;
    v98 = v231;
    v225 = 0x7FF8000000000000;
    v226 = 0x7FF8000000000000;
    v223 = NAN;
    v224 = 0x3FF0000000000000;
    v233 = v227;
    v234 = v228;
    v235 = v229;
    v236 = v230;
    v237 = v231;
    LODWORD(v222) = v232;
    LOBYTE(v238) = v232;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v233, &v226, &v225, &v224, &v223);
    v99 = v225;
    v100 = v226;
    v101 = v223;
    v102 = v224;
    if (one-time initialization token for enabledCategories != -1)
    {
      v219 = v226;
      v215 = v225;
      v216 = v224;
      *&v214 = v223;
      swift_once();
      v101 = *&v214;
      v99 = v215;
      v102 = v216;
      v100 = v219;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v103 = static CustomEventTrace.recorder) != 0)
      {
        v219 = v97;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v104 = v89;
        v105 = v98;
        v106 = *(v103 + 16);
        LODWORD(v233) = v104;
        BYTE4(v233) = Counter == v88;
        v234 = &type metadata for _ShapeStyle_Pack.Fill;
        v235 = v100;
        v236 = v99;
        v237 = v102;
        v238 = v101;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v216 = v107;

        Counter = v106;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v95, v94, v96, v219, v105, v222);
      }

      else
      {
        outlined consume of Animation.Function(v95, v94, v96, v97, v98, v222);
      }

      v108 = one-time initialization token for animationState;

      if (v108 == -1)
      {
        goto LABEL_52;
      }
    }

    swift_once();
LABEL_52:
    v67 = *(&static Signpost.animationState + 1);
    v57 = static Signpost.animationState;
    v68 = word_1ED5283E8;
    LOBYTE(v76) = HIBYTE(word_1ED5283E8);
    v109 = byte_1ED5283EA;
    v110 = static os_signpost_type_t.begin.getter();
    v233 = v57;
    v234 = v67;
    LOBYTE(v235) = v68;
    BYTE1(v235) = v76;
    BYTE2(v235) = v109;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v121 = v205;

      goto LABEL_59;
    }

    LODWORD(v222) = v110;
    LODWORD(Counter) = v88;
    v111 = one-time initialization token for _signpostLog;

    if (v111 != -1)
    {
      goto LABEL_194;
    }

    goto LABEL_54;
  }

  v259 = v266;
  v260 = v267;
  v261[0] = v268;
  LOBYTE(v261[1]) = v269;
  v257 = v264;
  v258 = v265;
  for (i = &v257; ; i = &v252)
  {
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(i);
LABEL_120:
    v156 = *(a4 + 4);
    v259 = *(a4 + 3);
    v260 = v156;
    v261[0] = *(a4 + 5);
    LOBYTE(v261[1]) = a4[96];
    v157 = *(a4 + 2);
    v257 = *(a4 + 1);
    v258 = v157;
    result = outlined destroy of HitTestableEvent?(&v257, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    v158 = v273;
    *(a4 + 3) = v272;
    *(a4 + 4) = v158;
    *(a4 + 5) = v274;
    a4[96] = v275;
    v159 = v271;
    *(a4 + 1) = v270;
    *(a4 + 2) = v159;
LABEL_121:
    v160 = *(a4 + 13);
    if (!v160)
    {
      return result;
    }

    v161 = *(a1 + 48);
    v162 = *(a1 + 16);
    v259 = *(a1 + 32);
    v260 = v161;
    v163 = *(a1 + 48);
    v261[0] = *(a1 + 64);
    v164 = *(a1 + 16);
    v257 = *a1;
    v258 = v164;
    v254 = v259;
    v255 = v163;
    v256[0] = *(a1 + 64);
    *(v261 + 14) = *(a1 + 78);
    *(v256 + 14) = *(a1 + 78);
    v252 = v257;
    v253 = v162;

    outlined init with copy of _ShapeStyle_Pack.Fill(&v257, v278);
    _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(&v252, v278);
    LOBYTE(v252) = 0;
    v211 = v160;
    v165 = specialized AnimatorState.update(_:at:environment:)(v278, a3, v24);
    v125 = AGGraphGetCurrentAttribute();
    v57 = *MEMORY[0x1E698D3F8];
    if (v125 == v57)
    {
      LODWORD(v122) = 0;
    }

    else
    {
      LODWORD(v122) = v125;
    }

    v55 = &type metadata instantiation cache for TupleTypeDescription;
    if (v165)
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
    v178 = *(v55 + 616);
    if (*(v178 + 16) >= 0x43uLL)
    {
      if (*(v178 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v252) = v122;
        BYTE4(v252) = v125 == v57;
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
    v56 = *(&static Signpost.animationState + 1);
    v55 = static Signpost.animationState;
    v53 = word_1ED5283E8;
    v168 = HIBYTE(word_1ED5283E8);
    v169 = byte_1ED5283EA;
    v170 = static os_signpost_type_t.end.getter();
    v252 = __PAIR128__(v56, v55);
    LOBYTE(v253) = v53;
    BYTE1(v253) = v168;
    BYTE2(v253) = v169;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    LODWORD(v222) = v170;
    v171 = one-time initialization token for _signpostLog;
    v54 = v211;

    if (v171 != -1)
    {
      swift_once();
    }

    v52 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v172 = swift_allocObject();
    *(v172 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v57)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v214 = v61;
    v215 = v59;
    v212 = v60;
    v213 = v58;
    swift_once();
    v60 = v212;
    v58 = v213;
    v61 = v214;
    v59 = v215;
LABEL_21:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_27;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v62 = static CustomEventTrace.recorder, v63 = v222, static CustomEventTrace.recorder))
    {
      v214 = *(static CustomEventTrace.recorder + 24);
      v215 = v55;
      *(v214 + 4) = 1602;
      v64 = *(v62 + 16);
      LODWORD(v233) = v218;
      BYTE4(v233) = Counter == v63;
      v234 = &type metadata for _ShapeStyle_Pack.Fill;
      v235 = v59;
      v236 = v58;
      v237 = v61;
      v238 = v60;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      v218 = v65;

      Counter = v64;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v53, v52, v54, v57, v215, v56);
    }

    else
    {
      outlined consume of Animation.Function(v53, v52, v54, v57, v55, v56);
    }

    v66 = one-time initialization token for animationState;

    if (v66 != -1)
    {
      goto LABEL_189;
    }

LABEL_27:
    v67 = *(&static Signpost.animationState + 1);
    v57 = static Signpost.animationState;
    v68 = word_1ED5283E8;
    v69 = HIBYTE(word_1ED5283E8);
    v70 = byte_1ED5283EA;
    v71 = static os_signpost_type_t.event.getter();
    v233 = v57;
    v234 = v67;
    LOBYTE(v235) = v68;
    BYTE1(v235) = v69;
    BYTE2(v235) = v70;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_89:
      a4 = v208;
      a1 = v209;
      goto LABEL_118;
    }

    LODWORD(v218) = v71;
    v72 = one-time initialization token for _signpostLog;

    if (v72 != -1)
    {
      swift_once();
    }

    v73 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_18DDAF080;
    v75 = AGGraphGetCurrentAttribute();
    v76 = v222;
    if (v75 == v222)
    {
      __break(1u);
    }

    else
    {
      v77 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v78 = MEMORY[0x1E69E6870];
      *(v74 + 56) = MEMORY[0x1E69E6810];
      *(v74 + 64) = v78;
      *(v74 + 32) = Counter;
      v79 = AGGraphGetCurrentAttribute();
      if (v79 != v76)
      {
        Counter = v74;
        v80 = MEMORY[0x1E69E76D0];
        *(v74 + 96) = MEMORY[0x1E69E7668];
        *(v74 + 104) = v80;
        *(v74 + 72) = v79;
        *(v74 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v74 + 144) = v81;
        *(v74 + 112) = 1819044166;
        *(v74 + 120) = 0xE400000000000000;
        if (v69)
        {
          LOBYTE(v223) = v218;
          v225 = v73;
          v226 = &dword_18D018000;
          v233 = v57;
          v234 = v67;
          LOBYTE(v235) = v68;
          v227 = "Animation: (%p) [%d] %{public}@ updated";
          v228 = 39;
          LOBYTE(v229) = 2;
          v224 = v74;
          v82 = v216;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v223, &v226, &v225, &v233, v216, &v227, &v224);

          (*(v217 + 8))(v82, v221);
        }

        else
        {
          if (v57 == 20)
          {
            a1 = 3;
          }

          else
          {
            a1 = 4;
          }

          LODWORD(v122) = bswap32(v57) | (4 * WORD1(v57));
          LODWORD(v222) = v218;
          v123 = (v217 + 16);
          v206 = *(v217 + 16);
          v124 = v206(v219, v216, v221);
          v55 = 0;
          LOBYTE(v227) = 1;
          v207 = v123;
          v214 = 16 * a1;
          v215 = v123 - 8;
          *&v212 = v57;
          v213 = (Counter + 32);
          v211 = a1;
          do
          {
            v218 = &v202;
            MEMORY[0x1EEE9AC00](v124);
            a4 = &v202 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
            v25 = a4 + 8;
            v127 = a1;
            v128 = a4 + 8;
            do
            {
              *(v128 - 1) = 0;
              *v128 = 0;
              v128 += 16;
              --v127;
            }

            while (v127);
            v26 = (v213 + 40 * v55);
            while (1)
            {
              v129 = *(Counter + 2);
              if (v55 == v129)
              {
                break;
              }

              if (v55 >= v129)
              {
                goto LABEL_178;
              }

              ++v55;
              outlined init with copy of AnyTrackedValue(v26, &v233);
              v57 = Counter;
              v130 = v236;
              v131 = v237;
              __swift_project_boxed_opaque_existential_1(&v233, v236);
              v132 = v131;
              Counter = v57;
              *(v25 - 1) = CVarArg.kdebugValue(_:)(v122 | v222, v130, v132);
              *v25 = v133 & 1;
              v25 += 16;
              v125 = __swift_destroy_boxed_opaque_existential_1(&v233);
              v26 = (v26 + 40);
              if (!--a1)
              {
                goto LABEL_73;
              }
            }

            LOBYTE(v227) = 0;
LABEL_73:
            v134 = v212;
            if (*&v212 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (a4[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[40] == 1)
            {
              kdebug_trace_string();
            }

            if (*&v134 != 20 && a4[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v135 = *v215;
            v136 = v219;
            v137 = v221;
            (*v215)(v219, v221);
            v138 = __swift_project_value_buffer(v137, static OSSignpostID.continuation);
            v124 = v206(v136, v138, v137);
            a1 = v211;
          }

          while ((v227 & 1) != 0);

          v139 = v221;
          v135(v219, v221);
          v135(v216, v139);
        }

        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_54:
    v112 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == Counter)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v114 = AGGraphGetAttributeGraph();
    v115 = AGGraphGetCounter();

    v116 = MEMORY[0x1E69E6870];
    *(v113 + 56) = MEMORY[0x1E69E6810];
    *(v113 + 64) = v116;
    *(v113 + 32) = v115;
    v117 = AGGraphGetCurrentAttribute();
    if (v117 == Counter)
    {
      goto LABEL_196;
    }

    a1 = v113;
    v118 = MEMORY[0x1E69E76D0];
    *(v113 + 96) = MEMORY[0x1E69E7668];
    *(v113 + 104) = v118;
    *(v113 + 72) = v117;
    *(v113 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v113 + 144) = v119;
    *(v113 + 112) = 1819044166;
    *(v113 + 120) = 0xE400000000000000;
    if (v76)
    {
      LOBYTE(v223) = v222;
      v225 = v112;
      v226 = &dword_18D018000;
      v233 = v57;
      v234 = v67;
      LOBYTE(v235) = v68;
      v227 = "Animation: (%p) [%d] %{public}@ started";
      v228 = 39;
      LOBYTE(v229) = 2;
      v224 = v113;
      v120 = v206;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v223, &v226, &v225, &v233, v206, &v227, &v224);
      v121 = v205;

      (*(v217 + 8))(v120, v221);

LABEL_59:
      a4 = v208;
      *(v208 + 13) = v121;
    }

    else
    {
      *&v140 = v57;
      if (v57 == 20)
      {
        v141 = 3;
      }

      else
      {
        v141 = 4;
      }

      LODWORD(v122) = bswap32(v57) | (4 * WORD1(v57));
      v57 = v222;
      v142 = v217 + 16;
      v207 = *(v217 + 16);
      v143 = v207(v218, v206, v221);
      v55 = 0;
      LOBYTE(v227) = 1;
      v219 = v141;
      v211 = v142;
      v212 = v140;
      v214 = 16 * v141;
      v215 = (v142 - 8);
      v222 = a1;
      v213 = a1 + 32;
      do
      {
        v216 = &v202;
        MEMORY[0x1EEE9AC00](v143);
        Counter = &v202 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = Counter + 8;
        v145 = v219;
        v146 = Counter + 8;
        do
        {
          *(v146 - 1) = 0;
          *v146 = 0;
          v146 += 16;
          --v145;
        }

        while (v145);
        v26 = (v213 + 40 * v55);
        v25 = v219;
        while (1)
        {
          v147 = *(v222 + 16);
          if (v55 == v147)
          {
            break;
          }

          if (v55 >= v147)
          {
            goto LABEL_179;
          }

          ++v55;
          outlined init with copy of AnyTrackedValue(v26, &v233);
          v148 = v236;
          a1 = v237;
          __swift_project_boxed_opaque_existential_1(&v233, v236);
          *(a4 - 1) = CVarArg.kdebugValue(_:)(v122 | v57, v148, a1);
          *a4 = v149 & 1;
          a4 += 16;
          v125 = __swift_destroy_boxed_opaque_existential_1(&v233);
          v26 = (v26 + 40);
          if (!--v25)
          {
            goto LABEL_102;
          }
        }

        LOBYTE(v227) = 0;
LABEL_102:
        v150 = v212;
        if (*&v212 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (Counter[8] == 1)
        {
          kdebug_trace_string();
        }

        if (Counter[24] == 1)
        {
          kdebug_trace_string();
        }

        if (Counter[40] == 1)
        {
          kdebug_trace_string();
        }

        if (*&v150 != 20 && Counter[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v151 = *v215;
        v152 = v218;
        a1 = v221;
        (*v215)(v218, v221);
        v153 = __swift_project_value_buffer(a1, static OSSignpostID.continuation);
        v143 = v207(v152, v153, a1);
      }

      while ((v227 & 1) != 0);
      v154 = v205;

      v155 = v221;
      v151(v152, v221);
      v151(v206, v155);

      a4 = v208;
      *(v208 + 13) = v154;
    }

    a1 = v209;
LABEL_118:
    v26 = &v252;
    v25 = v278;
    a3 = v204;
    specialized AnimatorState.addListeners(transaction:)(v203);

    v241 = v246;
    v242 = v247;
    v243[0] = v248;
    LOBYTE(v243[1]) = v249;
    v239 = v244;
    v240 = v245;
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v239);
    v254 = v266;
    v255 = v267;
    v256[0] = v268;
    LOBYTE(v256[1]) = v269;
    v252 = v264;
    v253 = v265;
  }

  v54 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v173 = MEMORY[0x1E69E6870];
  *(v172 + 56) = MEMORY[0x1E69E6810];
  *(v172 + 64) = v173;
  *(v172 + 32) = Counter;
  v174 = AGGraphGetCurrentAttribute();
  if (v174 == v57)
  {
    goto LABEL_186;
  }

  Counter = v172;
  v175 = MEMORY[0x1E69E76D0];
  *(v172 + 96) = MEMORY[0x1E69E7668];
  *(v172 + 104) = v175;
  *(v172 + 72) = v174;
  *(v172 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v172 + 144) = v176;
  *(v172 + 112) = 1819044166;
  *(v172 + 120) = 0xE400000000000000;
  if (v168)
  {
    LOBYTE(v250[0]) = v222;
    v233 = &dword_18D018000;
    *&v276[0] = v52;
    *&v252 = v55;
    *(&v252 + 1) = v56;
    LOBYTE(v253) = v53;
    *&v239 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v239 + 1) = 37;
    LOBYTE(v240) = 2;
    *&v264 = v172;
    v177 = v210;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(v250, &v233, v276, &v252, v210, &v239, &v264);

    (*(v217 + 8))(v177, v221);
    goto LABEL_173;
  }

  if (v55 == 20)
  {
    v179 = 3;
  }

  else
  {
    v179 = 4;
  }

  v57 = bswap32(v55) | (4 * WORD1(v55));
  LODWORD(v222) = v222;
  v180 = v217 + 16;
  v212 = *(v217 + 16);
  v181 = (*&v212)(v220, v210, v221);
  a1 = 0;
  LOBYTE(v239) = 1;
  v219 = v179;
  v217 = v180;
  v215 = (16 * v179);
  v216 = (v180 - 8);
  v213 = v55;
  v214 = v172 + 32;
  do
  {
    v218 = &v202;
    MEMORY[0x1EEE9AC00](v181);
    a4 = &v202 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
    v122 = a4 + 8;
    v183 = v219;
    v184 = a4 + 8;
    do
    {
      *(v184 - 1) = 0;
      *v184 = 0;
      v184 += 16;
      --v183;
    }

    while (v183);
    v26 = (v214 + 40 * a1);
    v25 = v219;
    while (1)
    {
      v185 = *(Counter + 2);
      if (a1 == v185)
      {
        break;
      }

      if (a1 >= v185)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v200 = v125;
        swift_once();
        v125 = v200;
LABEL_127:
        v166 = *(v55 + 616);
        if (*(v166 + 16) >= 0x43uLL)
        {
          if (*(v166 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v252) = v122;
            BYTE4(v252) = v125 == v57;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v208 = a4;
          v209 = a1;
          v167 = one-time initialization token for animationState;

          if (v167 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v201 = v125;
        swift_once();
        v125 = v201;
        goto LABEL_140;
      }

      ++a1;
      outlined init with copy of AnyTrackedValue(v26, &v252);
      v186 = *(&v253 + 1);
      v55 = Counter;
      v187 = v254;
      __swift_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));
      v188 = v187;
      Counter = v55;
      *(v122 - 1) = CVarArg.kdebugValue(_:)(v57 | v222, v186, v188);
      *v122 = v189 & 1;
      v122 += 16;
      v125 = __swift_destroy_boxed_opaque_existential_1(&v252);
      v26 = (v26 + 40);
      if (!--v25)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v239) = 0;
LABEL_158:
    v190 = v213;
    if (v213 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a4[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v190 != 20 && a4[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v191 = *v216;
    v193 = v220;
    v192 = v221;
    (*v216)(v220, v221);
    v194 = __swift_project_value_buffer(v192, static OSSignpostID.continuation);
    v181 = (*&v212)(v193, v194, v192);
  }

  while ((v239 & 1) != 0);

  v195 = v221;
  v191(v220, v221);
  v191(v210, v195);
LABEL_173:

LABEL_174:
  specialized AnimatorState.removeListeners()();

  a1 = v209;
  *(v208 + 13) = 0;
  v26 = &v252;
  v25 = v278;
LABEL_175:
  v196 = *(v25 + 3);
  v26[2] = *(v25 + 2);
  v26[3] = v196;
  v26[4] = *(v25 + 4);
  LOBYTE(v256[1]) = v281[1];
  v197 = *(v25 + 1);
  *v26 = *v25;
  v26[1] = v197;
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(a1);

  v198 = *(v25 + 3);
  v26[2] = *(v25 + 2);
  v26[3] = v198;
  v26[4] = *(v25 + 4);
  LOBYTE(v256[1]) = v281[1];
  v199 = *(v25 + 1);
  *v26 = *v25;
  v26[1] = v199;
  result = outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v252);
  *(a1 + 86) = 1;
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(__int128 *a1, char *a2, unsigned int a3, uint64_t a4)
{
  v258 = *MEMORY[0x1E69E9840];
  v231 = type metadata accessor for OSSignpostID();
  v228 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v11 = &v207 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v207 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v229 = &v207 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v207 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v230 = &v207 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v219 = &v207 - v23;
  if (*(a4 + 64))
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

  v227 = a4;
  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 54) = 1;
  }

  else if (*(a1 + 54) != 1)
  {
    v35 = *(v227 + 64);
    if (!v35)
    {
      return;
    }

    goto LABEL_143;
  }

  v226 = v11;
  v27 = *(a1 + 53);
  if (v27)
  {
    v28 = 0uLL;
    v4 = 0.0;
    v29 = 0uLL;
  }

  else
  {
    v30 = a1[1];
    v252 = *a1;
    v253 = v30;
    v254[0] = a1[2];
    *(v254 + 13) = *(a1 + 45);
    ResolvedShadowStyle.animatableData.getter(v239);
    v28 = v239[0];
    v29 = v239[1];
    v4 = v240;
  }

  v31 = v227;
  if (*(v227 + 57))
  {
    goto LABEL_142;
  }

  v32 = *(v227 + 16);
  v33 = *(v227 + 32);
  v5 = *(v227 + 48);
  v34 = *(v227 + 56);
  if ((v27 & 1) == 0)
  {
    if ((*(v227 + 56) & 1) == 0 && *v28.i32 == *v32.i32 && *&v28.i32[1] == *&v32.i32[1] && *&v28.i32[2] == *&v32.i32[2] && *&v28.i32[3] == *&v32.i32[3])
    {
      v41 = vzip1q_s64(v29, v33);
      if (vmovn_s64(vceqq_f64(vdupq_laneq_s64(v41, 1), v41)).u8[0])
      {
        v42 = vzip2q_s64(v29, v33);
        if ((vmovn_s64(vceqq_f64(vdupq_laneq_s64(v42, 1), v42)).u32[0] & 1) != 0 && v4 == v5)
        {
          goto LABEL_142;
        }
      }
    }

LABEL_19:
    v225 = *(v227 + 32);
    v232 = v32;
    v224 = a2;
    v208 = v14;
    v209 = v19;
    v213 = v29;
    v214 = v28;
    v215 = v27;
    v216 = a3;
    AGGraphClearUpdate();
    v36 = *(v31 + 16);
    v252 = *v31;
    v253 = v36;
    v37 = *(v31 + 48);
    v254[0] = *(v31 + 32);
    v254[1] = v37;
    *(&v254[1] + 12) = *(v31 + 60);
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v252, &v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
    v38 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v252, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v212 = v38;
    v39 = Transaction.effectiveAnimation.getter(v38);
    if (v39)
    {
      v40 = v39;
      LOBYTE(v27) = v215;
      a3 = v216;
    }

    else
    {
      LOBYTE(v27) = v215;
      a3 = v216;
      v40 = v224;
      if (!v224)
      {

        v31 = v227;
        goto LABEL_141;
      }
    }

    v43 = v4;
    v44 = v27;
    v45 = v214;
    v46 = v213;
    if ((v34 & 1) == 0)
    {
      v44 = 0;
      if (v27)
      {
        v43 = v5;
        v45 = v232;
        v46 = v225;
      }

      else
      {
        v46 = vsubq_f64(v213, v225);
        v43 = v4 - v5;
        v47 = vsub_f32(vmovn_s64(v214), vmovn_s64(v232));
        v48.i64[0] = v47.u32[0];
        v48.i64[1] = v47.u32[1];
        v45 = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v214, 0x20uLL), vshrn_n_s64(v232, 0x20uLL)), 0x20uLL), v48);
      }
    }

    v255[0] = v45;
    v255[1] = v46;
    v256 = v43;
    v257 = v44 & 1;
    v49 = *&v254[2];
    v26 = *AGGraphGetValue();
    v220 = a1;
    v210 = v40;
    if (v49)
    {
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v252, &v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v248) = 0;
      v211 = v49;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v40, v255[0].i8, v212, a3, v26);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v51) = CurrentAttribute;
      v52 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        v53 = 0;
      }

      else
      {
        v53 = CurrentAttribute;
      }

      LODWORD(v226) = v53;
      (*(*v40 + 96))(&v244);
      v54 = *(&v244 + 1);
      v35 = v244;
      v55 = v245;
      LODWORD(v56) = v247;
      v233 = 0x7FF8000000000000;
      v234[0] = 0x7FF8000000000000;
      v236 = 0x3FF0000000000000;
      v237 = NAN;
      v248 = v244;
      v249 = v245;
      v57 = *(&v245 + 1);
      v232.i64[0] = v246;
      v250 = v246;
      LOBYTE(v251) = v247;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v248, v234, &v237, &v236, &v233);
      v58 = v233;
      v5 = *v234;
      v59 = v236;
      v60 = v237;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_215;
      }

      goto LABEL_40;
    }

    *&v244 = &type metadata for _ShapeStyle_Pack.Effect.Kind;
    type metadata accessor for _ShapeStyle_Pack.Effect.Kind.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _ShapeStyle_Pack.Effect.Kind.AnimatableData>.Type, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = v248;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = *(&v248 + 1);
    }

    else
    {
      v69 = 0;
    }

    v74 = v212;

    v71 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16_ShapeStyle_PackV6EffectV4KindO14AnimatableDataO_Tt4B5(v70, v255, v74, v68, v69, v26);
    v72 = AGGraphGetCurrentAttribute();
    v73 = v72;
    LODWORD(v74) = *MEMORY[0x1E698D3F8];
    if (v72 == *MEMORY[0x1E698D3F8])
    {
      v75 = 0;
    }

    else
    {
      v75 = v72;
    }

    LODWORD(v229) = v75;
    (*(*v40 + 96))(&v244);
    v76 = v244;
    v77 = v245;
    v78 = v246;
    v233 = 0x7FF8000000000000;
    v234[0] = 0x7FF8000000000000;
    v236 = 0x3FF0000000000000;
    v237 = NAN;
    v248 = v244;
    v249 = v245;
    v250 = v246;
    v232.i32[0] = v247;
    LOBYTE(v251) = v247;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v248, v234, &v237, &v236, &v233);
    v79 = v233;
    v5 = *v234;
    v80 = v236;
    v81 = v237;
    if (one-time initialization token for enabledCategories != -1)
    {
      v224 = v233;
      v225.f64[0] = v237;
      v223 = v236;
      swift_once();
      v80 = v223;
      v79 = v224;
      v81 = v225.f64[0];
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_219;
    }

    v82 = *(static CustomEventTrace.enabledCategories + 98);
    v211 = v71;
    if (v82 == 1)
    {
      v225.f64[0] = *(&v77 + 1);
      if (static CustomEventTrace.recorder)
      {
        v224 = v78;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v83 = *(*(&v77 + 1) + 16);
        LODWORD(v248) = v229;
        BYTE4(v248) = v73 == v74;
        *(&v248 + 1) = &type metadata for _ShapeStyle_Pack.Effect.Kind;
        *&v249 = v5;
        *(&v249 + 1) = v81;
        v250 = v80;
        v251 = v79;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v84 = v83;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v76, *(&v76 + 1), v77, *&v225.f64[0], v224, v232.u8[0]);

        goto LABEL_102;
      }

      v86 = *(&v76 + 1);
      v85 = v76;
      v87 = v77;
      v88 = *&v225.f64[0];
    }

    else
    {
      v86 = *(&v76 + 1);
      v85 = v76;
      v88 = *(&v77 + 1);
      v87 = v77;
    }

    outlined consume of Animation.Function(v85, v86, v87, v88, v78, v232.u8[0]);
LABEL_102:
    v127 = one-time initialization token for animationState;

    if (v127 == -1)
    {
LABEL_103:
      v90 = *(&static Signpost.animationState + 1);
      v89 = static Signpost.animationState;
      LOBYTE(v51) = word_1ED5283E8;
      v91 = HIBYTE(word_1ED5283E8);
      v128 = byte_1ED5283EA;
      v129 = static os_signpost_type_t.begin.getter();
      v248 = __PAIR128__(v90, v89);
      LOBYTE(v249) = v51;
      BYTE1(v249) = v91;
      BYTE2(v249) = v128;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v141 = v211;

        goto LABEL_139;
      }

      v232.i32[0] = v129;
      v130 = one-time initialization token for _signpostLog;

      if (v130 != -1)
      {
        goto LABEL_222;
      }

      goto LABEL_105;
    }

LABEL_219:
    swift_once();
    goto LABEL_103;
  }

  if ((*(v227 + 56) & 1) == 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
LABEL_142:
    *(v31 + 16) = v28;
    *(v31 + 32) = v29;
    *(v31 + 48) = v4;
    *(v31 + 56) = v27 & 1;
    *(v31 + 57) = 0;
    v35 = *(v31 + 64);
    if (!v35)
    {
      return;
    }

LABEL_143:
    v162 = *(a1 + 53);
    v220 = a1;
    if (v162)
    {

      v163 = 0;
      v164 = 0uLL;
      v165 = 0uLL;
    }

    else
    {
      v166 = a1[1];
      v252 = *a1;
      v253 = v166;
      v254[0] = a1[2];
      *(v254 + 13) = *(a1 + 45);

      ResolvedShadowStyle.animatableData.getter(&v244);
      v164 = v244;
      v165 = v245;
      v163 = v246;
    }

    v252 = v164;
    v253 = v165;
    *&v254[0] = v163;
    BYTE8(v254[0]) = v162 & 1;
    LOBYTE(v248) = 0;
    v167 = specialized AnimatorState.update(_:at:environment:)(&v252, a3, v26);
    v110 = AGGraphGetCurrentAttribute();
    v57 = *MEMORY[0x1E698D3F8];
    if (v110 == v57)
    {
      v106 = 0;
    }

    else
    {
      v106 = v110;
    }

    v109 = &type metadata instantiation cache for TupleTypeDescription;
    if (v167)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_208;
      }

      goto LABEL_151;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_210;
    }

LABEL_164:
    v181 = *(v109 + 616);
    if (*(v181 + 16) >= 0x43uLL)
    {
      if (*(v181 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v248) = v106;
        BYTE4(v248) = v110 == v57;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_199;
    }

    __break(1u);
LABEL_212:
    swift_once();
LABEL_156:
    v170 = *(&static Signpost.animationState + 1);
    v56 = static Signpost.animationState;
    v55 = word_1ED5283E8;
    v52 = HIBYTE(word_1ED5283E8);
    v171 = byte_1ED5283EA;
    v172 = static os_signpost_type_t.end.getter();
    v248 = __PAIR128__(v170, v56);
    LOBYTE(v249) = v55;
    BYTE1(v249) = v52;
    BYTE2(v249) = v171;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_198;
    }

    v232.i32[0] = v172;
    v173 = one-time initialization token for _signpostLog;

    if (v173 != -1)
    {
      swift_once();
    }

    v54 = _signpostLog;
    v218 = v35;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v57)
    {
      break;
    }

    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    v225.f64[0] = v60;
    v222 = v59;
    v223 = v58;
    swift_once();
    v59 = v222;
    v58 = v223;
    v60 = v225.f64[0];
LABEL_40:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_217:
      swift_once();
      goto LABEL_64;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      LODWORD(v225.f64[0]) = v56;
      v61 = v52;
      v62 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        LODWORD(v224) = v61;
        v63 = v51 == v61;
        v51 = *(static CustomEventTrace.recorder + 24);
        *(v51 + 4) = 1602;
        v64 = *(v62 + 16);
        LODWORD(v248) = v226;
        BYTE4(v248) = v63;
        *(&v248 + 1) = &type metadata for _ShapeStyle_Pack.Effect.Kind;
        *&v249 = v5;
        *(&v249 + 1) = v60;
        v250 = v59;
        v251 = v58;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v226 = v65;

        v66 = v64;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v35, v54, v55, v57, v232.i64[0], LOBYTE(v225.f64[0]));
        v52 = v224;
      }

      else
      {
        outlined consume of Animation.Function(v35, v54, v55, v57, v232.i64[0], LOBYTE(v225.f64[0]));
        v52 = v61;
      }
    }

    else
    {
      outlined consume of Animation.Function(v35, v54, v55, v57, v232.i64[0], v56);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v252, &v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_217;
    }

LABEL_64:
    v74 = *(&static Signpost.animationState + 1);
    v89 = static Signpost.animationState;
    v90 = word_1ED5283E8;
    v91 = HIBYTE(word_1ED5283E8);
    v92 = byte_1ED5283EA;
    v93 = static os_signpost_type_t.event.getter();
    v248 = __PAIR128__(v74, v89);
    LOBYTE(v249) = v90;
    BYTE1(v249) = v91;
    BYTE2(v249) = v92;
    if (Signpost.isEnabled.getter())
    {
      v232.i32[0] = v93;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v252, &v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for _signpostLog != -1)
      {
        swift_once();
      }

      v94 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v52)
      {
        __break(1u);
      }

      else
      {
        LODWORD(v51) = v52;
        v96 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v98 = MEMORY[0x1E69E6870];
        *(v95 + 56) = MEMORY[0x1E69E6810];
        *(v95 + 64) = v98;
        *(v95 + 32) = Counter;
        v99 = AGGraphGetCurrentAttribute();
        if (v99 != v51)
        {
          v100 = v95;
          v101 = MEMORY[0x1E69E76D0];
          *(v95 + 96) = MEMORY[0x1E69E7668];
          *(v95 + 104) = v101;
          *(v95 + 72) = v99;
          *(v95 + 136) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(v95 + 144) = v102;
          *(v95 + 112) = 1684957515;
          *(v95 + 120) = 0xE400000000000000;
          if (v91)
          {
            LOBYTE(v233) = v232.i8[0];
            v234[0] = &dword_18D018000;
            v236 = v95;
            v237 = v94;
            *&v248 = v89;
            *(&v248 + 1) = v74;
            LOBYTE(v249) = v90;
            *&v244 = "Animation: (%p) [%d] %{public}@ updated";
            *(&v244 + 1) = 39;
            LOBYTE(v245) = 2;
            v103 = v209;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v233, v234, &v237, &v248, v209, &v244, &v236);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v252, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v252, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
            (*(v228 + 8))(v103, v231);
          }

          else
          {
            v104 = v89;
            if (v89 == 20)
            {
              v105 = 3;
            }

            else
            {
              v105 = 4;
            }

            v106 = bswap32(v89) | (4 * WORD1(v89));
            v232.i32[0] = v232.u8[0];
            v107 = (v228 + 16);
            v217 = *(v228 + 16);
            v108 = v217(v229, v209, v231);
            v109 = 0;
            LOBYTE(v244) = 1;
            v218 = v107;
            v224 = (16 * v105);
            *&v225.f64[0] = v107 - 8;
            v222 = v104;
            v223 = v100 + 32;
            v221 = v105;
            do
            {
              v226 = &v207;
              MEMORY[0x1EEE9AC00](v108);
              v112 = &v207 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
              v57 = (v112 + 8);
              v113 = v105;
              v114 = v112 + 8;
              do
              {
                *(v114 - 1) = 0;
                *v114 = 0;
                v114 += 16;
                --v113;
              }

              while (v113);
              v35 = (v223 + 40 * v109);
              while (1)
              {
                v115 = *(v100 + 16);
                if (v109 == v115)
                {
                  break;
                }

                if (v109 >= v115)
                {
                  goto LABEL_206;
                }

                ++v109;
                outlined init with copy of AnyTrackedValue(v35, &v248);
                v116 = v100;
                v117 = *(&v249 + 1);
                v118 = v250;
                __swift_project_boxed_opaque_existential_1(&v248, *(&v249 + 1));
                v119 = v118;
                v100 = v116;
                *(v57 - 8) = CVarArg.kdebugValue(_:)(v106 | v232.i32[0], v117, v119);
                *v57 = v120 & 1;
                v57 += 16;
                v110 = __swift_destroy_boxed_opaque_existential_1(&v248);
                v35 += 40;
                if (!--v105)
                {
                  goto LABEL_84;
                }
              }

              LOBYTE(v244) = 0;
LABEL_84:
              v121 = v222;
              if (v222 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (v112[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v112[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v112[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v121 != 20 && v112[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v122 = **&v225.f64[0];
              v123 = v229;
              v124 = v231;
              (**&v225.f64[0])(v229, v231);
              v125 = __swift_project_value_buffer(v124, static OSSignpostID.continuation);
              v108 = v217(v123, v125, v124);
              v105 = v221;
            }

            while ((v244 & 1) != 0);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v252, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v252, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
            v126 = v231;
            v122(v229, v231);
            v122(v209, v126);
          }

          goto LABEL_140;
        }
      }

      __break(1u);
LABEL_222:
      swift_once();
LABEL_105:
      v131 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v132 = swift_allocObject();
      *(v132 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v74)
      {
        __break(1u);
LABEL_224:
        __break(1u);
      }

      v133 = AGGraphGetAttributeGraph();
      v134 = AGGraphGetCounter();

      v135 = MEMORY[0x1E69E6870];
      *(v132 + 56) = MEMORY[0x1E69E6810];
      *(v132 + 64) = v135;
      *(v132 + 32) = v134;
      v136 = AGGraphGetCurrentAttribute();
      if (v136 == v74)
      {
        goto LABEL_224;
      }

      v137 = v132;
      v138 = MEMORY[0x1E69E76D0];
      *(v132 + 96) = MEMORY[0x1E69E7668];
      *(v132 + 104) = v138;
      *(v132 + 72) = v136;
      *(v132 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v132 + 144) = v139;
      *(v132 + 112) = 1684957515;
      *(v132 + 120) = 0xE400000000000000;
      if (v91)
      {
        LOBYTE(v233) = v232.i8[0];
        v234[0] = &dword_18D018000;
        v236 = v132;
        v237 = v131;
        *&v248 = v89;
        *(&v248 + 1) = v90;
        LOBYTE(v249) = v51;
        *&v244 = "Animation: (%p) [%d] %{public}@ started";
        *(&v244 + 1) = 39;
        LOBYTE(v245) = 2;
        v140 = v208;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v233, v234, &v237, &v248, v208, &v244, &v236);
        v141 = v211;

        (*(v228 + 8))(v140, v231);
      }

      else
      {
        v142 = v89;
        if (v89 == 20)
        {
          v143 = 3;
        }

        else
        {
          v143 = 4;
        }

        v106 = bswap32(v89) | (4 * WORD1(v89));
        v144 = v232.u8[0];
        v145 = (v228 + 16);
        v217 = *(v228 + 16);
        v146 = v217(v226, v208, v231);
        v109 = 0;
        LOBYTE(v244) = 1;
        v229 = v143;
        v218 = v145;
        v223 = 16 * v143;
        v224 = v145 - 8;
        v232.i64[0] = v137;
        v221 = v142;
        v222 = v137 + 32;
        do
        {
          *&v225.f64[0] = &v207;
          MEMORY[0x1EEE9AC00](v146);
          v148 = &v207 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
          v57 = (v148 + 8);
          v149 = v229;
          v150 = v148 + 8;
          do
          {
            *(v150 - 1) = 0;
            *v150 = 0;
            v150 += 16;
            --v149;
          }

          while (v149);
          v35 = (v222 + 40 * v109);
          v151 = v229;
          while (1)
          {
            v152 = *(v232.i64[0] + 16);
            if (v109 == v152)
            {
              break;
            }

            if (v109 >= v152)
            {
              goto LABEL_207;
            }

            ++v109;
            outlined init with copy of AnyTrackedValue(v35, &v248);
            v153 = *(&v249 + 1);
            v154 = v250;
            __swift_project_boxed_opaque_existential_1(&v248, *(&v249 + 1));
            *(v57 - 8) = CVarArg.kdebugValue(_:)(v106 | v144, v153, v154);
            *v57 = v155 & 1;
            v57 += 16;
            v110 = __swift_destroy_boxed_opaque_existential_1(&v248);
            v35 += 40;
            if (!--v151)
            {
              goto LABEL_122;
            }
          }

          LOBYTE(v244) = 0;
LABEL_122:
          v156 = v221;
          if (v221 == 20)
          {
            v157 = v226;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v157 = v226;
          }

          if (v148[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v148[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v148[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v156 != 20 && v148[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v158 = *v224;
          v159 = v231;
          (*v224)(v157, v231);
          v160 = __swift_project_value_buffer(v159, static OSSignpostID.continuation);
          v146 = v217(v157, v160, v159);
        }

        while ((v244 & 1) != 0);
        v141 = v211;

        v161 = v231;
        v158(v157, v231);
        v158(v208, v161);
      }

LABEL_139:
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v252, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
      *(v227 + 64) = v141;
    }

    else
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v252, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v252, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeStyle_Pack.Effect.Kind>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind and conformance _ShapeStyle_Pack.Effect.Kind, &type metadata for _ShapeStyle_Pack.Effect.Kind, type metadata accessor for AnimatableAttributeHelper);
    }

LABEL_140:
    specialized AnimatorState.addListeners(transaction:)(v212);

    a1 = v220;
    v31 = v227;
    LOBYTE(v27) = v215;
    a3 = v216;
LABEL_141:
    v29 = v213;
    v28 = v214;
  }

  v35 = AGGraphGetAttributeGraph();
  v174 = AGGraphGetCounter();

  v175 = MEMORY[0x1E69E6870];
  *(v51 + 56) = MEMORY[0x1E69E6810];
  *(v51 + 64) = v175;
  *(v51 + 32) = v174;
  v176 = AGGraphGetCurrentAttribute();
  if (v176 == v57)
  {
    goto LABEL_214;
  }

  v177 = v51;
  v178 = MEMORY[0x1E69E76D0];
  *(v51 + 96) = MEMORY[0x1E69E7668];
  *(v51 + 104) = v178;
  *(v51 + 72) = v176;
  *(v51 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v51 + 144) = v179;
  *(v51 + 112) = 1684957515;
  *(v51 + 120) = 0xE400000000000000;
  if (v52)
  {
    v238 = v232.i8[0];
    v236 = v54;
    v237 = COERCE_DOUBLE(&dword_18D018000);
    *&v248 = v56;
    *(&v248 + 1) = v170;
    LOBYTE(v249) = v55;
    v234[0] = "Animation: (%p) [%d] %{public}@ ended";
    v234[1] = 37;
    v235 = 2;
    v233 = v51;
    v180 = v219;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v238, &v237, &v236, &v248, v219, v234, &v233);

    (*(v228 + 8))(v180, v231);
    goto LABEL_197;
  }

  v182 = v56;
  if (v56 == 20)
  {
    v183 = 3;
  }

  else
  {
    v183 = 4;
  }

  v106 = bswap32(v56) | (4 * WORD1(v56));
  v232.i32[0] = v232.u8[0];
  v184 = v228 + 16;
  v221 = *(v228 + 16);
  v185 = v221(v230, v219, v231);
  v109 = 0;
  LOBYTE(v234[0]) = 1;
  v228 = v184;
  v226 = (v184 - 8);
  v224 = (v177 + 32);
  *&v225.f64[0] = 16 * v183;
  v222 = v182;
  v223 = v183;
  do
  {
    v229 = &v207;
    MEMORY[0x1EEE9AC00](v185);
    v187 = &v207 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = (v187 + 8);
    v188 = v183;
    v189 = v187 + 8;
    do
    {
      *(v189 - 1) = 0;
      *v189 = 0;
      v189 += 16;
      --v188;
    }

    while (v188);
    v35 = &v224[40 * v109];
    while (1)
    {
      v190 = *(v177 + 16);
      if (v109 == v190)
      {
        break;
      }

      if (v109 >= v190)
      {
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        v205 = v110;
        swift_once();
        v110 = v205;
LABEL_151:
        v168 = *(v109 + 616);
        if (*(v168 + 16) >= 0x43uLL)
        {
          if (*(v168 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v248) = v106;
            BYTE4(v248) = v110 == v57;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v169 = one-time initialization token for animationState;

          if (v169 != -1)
          {
            goto LABEL_212;
          }

          goto LABEL_156;
        }

        __break(1u);
LABEL_210:
        v206 = v110;
        swift_once();
        v110 = v206;
        goto LABEL_164;
      }

      ++v109;
      outlined init with copy of AnyTrackedValue(v35, &v248);
      v191 = v177;
      v192 = *(&v249 + 1);
      v193 = v250;
      __swift_project_boxed_opaque_existential_1(&v248, *(&v249 + 1));
      v194 = v193;
      v177 = v191;
      *(v57 - 8) = CVarArg.kdebugValue(_:)(v106 | v232.i32[0], v192, v194);
      *v57 = v195 & 1;
      v57 += 16;
      v110 = __swift_destroy_boxed_opaque_existential_1(&v248);
      v35 += 40;
      if (!--v183)
      {
        goto LABEL_182;
      }
    }

    LOBYTE(v234[0]) = 0;
LABEL_182:
    v196 = v222;
    if (v222 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v183 = v223;
    if (v187[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v187[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v187[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v196 != 20 && v187[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v197 = *v226;
    v199 = v230;
    v198 = v231;
    (*v226)(v230, v231);
    v200 = __swift_project_value_buffer(v198, static OSSignpostID.continuation);
    v185 = v221(v199, v200, v198);
  }

  while ((v234[0] & 1) != 0);

  v201 = v231;
  v197(v230, v231);
  v197(v219, v201);
LABEL_197:

LABEL_198:
  specialized AnimatorState.removeListeners()();

  *(v227 + 64) = 0;
LABEL_199:
  v202 = v220;
  if (*(v220 + 53) & 1) != 0 || (BYTE8(v254[0]))
  {

    LOBYTE(v248) = 1;
    *v202 = 0u;
    v202[1] = 0u;
    v202[2] = 0u;
    *(v202 + 45) = 0;
    *(v202 + 53) = 1;
  }

  else
  {
    v248 = v252;
    v249 = v253;
    v250 = *&v254[0];
    v203 = v220[1];
    v241 = *v220;
    v242 = v203;
    v243[0] = v220[2];
    *(v243 + 13) = *(v220 + 45);
    ResolvedShadowStyle.animatableData.setter(&v248);

    LOBYTE(v234[0]) = 0;
    v204 = v242;
    *v202 = v241;
    v202[1] = v204;
    v202[2] = v243[0];
    *(v202 + 45) = *(v243 + 13);
    *(v202 + 53) = 0;
  }

  *(v202 + 54) = 1;
}