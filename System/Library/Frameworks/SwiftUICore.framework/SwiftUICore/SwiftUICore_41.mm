uint64_t specialized AnimatorState.update(_:at:environment:)(uint64_t *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  if (v8 + v7 * -0.5 >= a3)
  {
LABEL_20:
    swift_beginAccess();
    outlined init with copy of _AnyAnimatableData((v3 + 96), &v39);
    v27 = *a1;
    if (*a1 == v39)
    {
      (*(v27 + 96))(a1 + 1, &v39 + 8);
    }

    else if (v27 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(a1);
      v28 = v40;
      *a1 = v39;
      *(a1 + 1) = v28;
      a1[4] = v41;
      goto LABEL_25;
    }

    outlined destroy of _AnyAnimatableData(&v39);
LABEL_25:
    swift_beginAccess();
    outlined init with copy of _AnyAnimatableData((v4 + 32), &v39);
    v29 = *a1;
    if (*a1 == v39)
    {
      (*(v29 + 104))(a1 + 1, &v39 + 8);
    }

    else if (v29 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(a1);
      outlined init with copy of _AnyAnimatableData(&v39, a1);
      (*(*a1 + 112))(a1 + 1);
    }

LABEL_36:
    outlined destroy of _AnyAnimatableData(&v39);
    return 0;
  }

  if (*(v3 + 141) > 1u)
  {
    if (*(v3 + 141) != 2)
    {
      goto LABEL_11;
    }

    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 72))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 72) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

  if (!*(v3 + 141))
  {
    *(v3 + 72) = a3;
    v10 = 1;
LABEL_10:
    *(v3 + 141) = v10;
    goto LABEL_11;
  }

  *(v3 + 141) = 2;
  swift_beginAccess();
  if ((static CoreTesting.isRunning & 1) == 0)
  {
    *(v3 + 88) = v8 - *(v3 + 72) + a3;
    *(v3 + 72) = a3;
    goto LABEL_20;
  }

LABEL_11:
  v13 = a3 - *(v3 + 72);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 160);

  v36[0] = v14;
  v36[1] = AGCreateWeakAttribute();
  v37 = 0;
  v38 = v15;
  v16 = *(v4 + 168);
  if (v16)
  {
    v17 = *(v4 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
    *(&v40 + 1) = v20;
    *&v39 = v16;
    *(&v39 + 1) = v17;
    specialized Dictionary.subscript.setter(&v39, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  outlined init with copy of _AnyAnimatableData((v4 + 32), v33);
  v22 = *(*v21 + 120);
  lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData();
  v24 = v23;

  v22(v34, v33, v36, &type metadata for _AnyAnimatableData, v24, v13);

  outlined destroy of _AnyAnimatableData(v33);
  if (!*&v34[0])
  {

    outlined destroy of HitTestableEvent?(v34, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
    return 1;
  }

  v39 = v34[0];
  v40 = v34[1];
  v41 = v35;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v38, a2 | ((HIDWORD(a2) & 1) << 32), v13);
  *(v4 + 24) = v36[0];

  v25 = *a1;
  if (*a1 == v39)
  {
    (*(v25 + 96))(a1 + 1, &v39 + 8);
  }

  else if (v25 == type metadata accessor for ZeroVTable())
  {
    outlined destroy of _AnyAnimatableData(a1);
    outlined init with copy of _AnyAnimatableData(&v39, a1);
  }

  outlined init with copy of _AnyAnimatableData((v4 + 32), v34);
  v30 = *a1;
  if (*a1 == *&v34[0])
  {
    (*(v30 + 104))(a1 + 1, v34 + 8);
  }

  else if (v30 == type metadata accessor for ZeroVTable())
  {
    outlined destroy of _AnyAnimatableData(a1);
    outlined init with copy of _AnyAnimatableData(v34, a1);
    (*(*a1 + 112))(a1 + 1);
  }

  outlined destroy of _AnyAnimatableData(v34);
  swift_beginAccess();
  outlined assign with copy of _AnyAnimatableData(&v39, v4 + 96);
  swift_endAccess();
  *(v4 + 88) = a3;
  v31 = *(v4 + 80);
  if (v31 <= 0.0)
  {
    goto LABEL_36;
  }

  v32 = round(a3 / v31);
  outlined destroy of _AnyAnimatableData(&v39);
  *(v4 + 88) = (v32 + 1.0) * *(v4 + 80);
  return 0;
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    swift_beginAccess();
    v11 = *(v3 + 80);
    v207 = a1;
    *&v223 = *a1;
    v229 = *(a1 + 1);
    v221[0] = v11;
    v227 = *(v3 + 88);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v206 = v12;
    v198 = v193;
    v13 = MEMORY[0x1E69E7DE0];
    v14 = *(MEMORY[0x1E69E7DE0] - 8);
    v15 = v14[8];
    v16 = MEMORY[0x1EEE9AC00](v12);
    v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
    v199 = v15;
    v200 = v17;
    v18 = v14[2];
    v19 = v18(v193 - v17, &v223, v13, v16);
    v201 = v18;
    v202 = (v14 + 2);
    v20 = MEMORY[0x1EEE9AC00](v19);
    v204 = v4;
    v18(v193 - v17, v221, v13, v20);
    v203 = v206[1];
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v21 = v14[1];
    v205 = (v14 + 1);
    v206 = v21;
    (v21)(v193 - v17, v13);
    (v21)(v193 - v17, v13);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
    v23 = v22;
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
    v25 = v24;
    v194 = v193;
    v26 = *(v23 - 8);
    v27 = v26[8];
    v28 = MEMORY[0x1EEE9AC00](v24);
    v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
    v196 = v27;
    v197 = v29;
    v30 = v26[2];
    v31 = v30(v193 - v29, &v229, v23, v28);
    v195 = v30;
    v32 = MEMORY[0x1EEE9AC00](v31);
    v33(v193 - v29, &v227, v23, v32);
    v198 = *(v25 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v34 = v26[1];
    v34(v193 - v29, v23);
    v34(v193 - v29, v23);
    v35 = v225;
    v36 = v230;
    v37 = v231;
    v34(&v230, v23);
    v38 = MEMORY[0x1E69E7DE0];
    (v206)(&v225, MEMORY[0x1E69E7DE0]);
    v39 = v207;
    *v207 = v35;
    v39[1] = v36;
    v39[2] = v37;
    v40 = v204;
    v41 = swift_beginAccess();
    v194 = v193;
    v42 = v40[4];
    v217[0] = v35;
    v208[0] = v36;
    v208[1] = v37;
    *&v215 = v42;
    v232 = *(v40 + 5);
    v43 = MEMORY[0x1EEE9AC00](v41);
    v44 = v200;
    v45 = v193 - v200;
    v46 = v38;
    v47 = v201;
    v48 = (v201)(v193 - v200, v217, v46, v43);
    v204 = v193;
    v49 = MEMORY[0x1EEE9AC00](v48);
    v50 = v193 - v44;
    v51 = v193 - v44;
    v52 = MEMORY[0x1E69E7DE0];
    v47(v51, &v215, MEMORY[0x1E69E7DE0], v49);
    v53 = v52;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v54 = v52;
    v55 = v206;
    (v206)(v50, v54);
    v56 = v55(v45, v53);
    v204 = v193;
    v57 = MEMORY[0x1EEE9AC00](v56);
    v58 = v197;
    v59 = v193 - v197;
    v60 = v195;
    v61 = (v195)(v193 - v197, v208, v23, v57);
    v62 = MEMORY[0x1EEE9AC00](v61);
    v60(v193 - v58, &v232, v23, v62);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v34(v193 - v58, v23);
    v34(v59, v23);
    v63 = v219[0];
    v64 = v213;
    v65 = v214;
    v34(&v213, v23);
    v66 = v219;
    goto LABEL_6;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_12:
      *(v3 + 109) = v10;
      goto LABEL_13;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_13;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
    swift_beginAccess();
    v144 = *(v3 + 80);
    v207 = a1;
    v221[0] = *a1;
    v229 = *(a1 + 1);
    v219[0] = v144;
    v227 = *(v3 + 88);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v206 = v145;
    v146 = MEMORY[0x1E69E7DE0];
    v147 = *(MEMORY[0x1E69E7DE0] - 8);
    v148 = v147[8];
    v149 = MEMORY[0x1EEE9AC00](v145);
    v150 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
    v200 = v148;
    v201 = v150;
    v151 = v147[2];
    v152 = v151(v193 - v150, v221, v146, v149);
    v202 = v151;
    v203 = v147 + 2;
    v199 = v193;
    v153 = MEMORY[0x1EEE9AC00](v152);
    v154(v193 - v150, v219, v146, v153);
    v204 = v206[1];
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v155 = v147[1];
    v205 = (v147 + 1);
    v206 = v155;
    (v155)(v193 - v150, v146);
    (v155)(v193 - v150, v146);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
    v157 = v156;
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
    v159 = v158;
    v195 = v193;
    v160 = *(v157 - 8);
    v161 = v160[8];
    v162 = MEMORY[0x1EEE9AC00](v158);
    v163 = v193 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
    v197 = v161;
    v198 = ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
    v164 = v160[2];
    v165 = v164(v163, &v229, v157, v162);
    v196 = v164;
    v166 = MEMORY[0x1EEE9AC00](v165);
    v167(v163, &v227, v157, v166);
    v199 = *(v159 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v168 = v160[1];
    v168(v163, v157);
    v168(v163, v157);
    v169 = v223;
    v170 = v230;
    v171 = v231;
    v168(&v230, v157);
    v172 = MEMORY[0x1E69E7DE0];
    (v206)(&v223, MEMORY[0x1E69E7DE0]);
    v173 = v207;
    *v207 = v169;
    v173[1] = v170;
    v173[2] = v171;
    v174 = swift_beginAccess();
    v195 = v193;
    v175 = *(v4 + 32);
    *&v215 = v169;
    *&v232 = v170;
    *(&v232 + 1) = v171;
    v226[0] = v175;
    v225 = *(v4 + 40);
    v176 = MEMORY[0x1EEE9AC00](v174);
    v177 = v201;
    v178 = v202;
    v179 = (v193 - v201);
    v180 = (v202)(v193 - v201, &v215, v172, v176);
    v194 = v193;
    v181 = MEMORY[0x1EEE9AC00](v180);
    v182 = (v193 - v177);
    v183 = (v193 - v177);
    v184 = MEMORY[0x1E69E7DE0];
    v178(v183, v226, MEMORY[0x1E69E7DE0], v181);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v185 = v206;
    (v206)(v182, v184);
    v186 = v185(v179, v184);
    v204 = v193;
    v187 = MEMORY[0x1EEE9AC00](v186);
    v188 = v198;
    v189 = (v193 - v198);
    v190 = v196;
    v191 = (v196)(v193 - v198, &v232, v157, v187);
    v192 = MEMORY[0x1EEE9AC00](v191);
    v190(v193 - v188, &v225, v157, v192);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v168((v193 - v188), v157);
    v168(v189, v157);
    v63 = v217[0];
    v64 = v213;
    v65 = v214;
    v168(&v213, v157);
    v66 = v217;
LABEL_6:
    (v206)(v66, MEMORY[0x1E69E7DE0]);
    result = 0;
    v68 = v207;
    *v207 = v63;
    v68[1] = v64;
    v68[2] = v65;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v69 = fmax(v7, 0.0166666667);
    v70 = v69 + v69;
    if (v69 + v69 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v70;
      }
    }

    v10 = 3;
    goto LABEL_12;
  }

LABEL_13:
  v71 = a3 - *(v3 + 56);
  swift_beginAccess();
  v72 = *(v3 + 24);
  v73 = *(v4 + 128);

  *&v232 = v72;
  *(&v232 + 1) = AGCreateWeakAttribute();
  v233 = 0;
  v234 = v73;
  v74 = *(v4 + 136);
  if (v74)
  {
    v75 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>(0);
    v77 = v76;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>, MEMORY[0x1E69E6720]);
    v212 = v78;
    v209 = v74;
    v210 = v75;
    specialized Dictionary.subscript.setter(&v209, v77);
  }

  swift_beginAccess();
  v79 = *(v4 + 16);
  swift_beginAccess();
  v80 = *(v4 + 48);
  v227 = *(v4 + 32);
  v228 = v80;
  v81 = *(*v79 + 120);
  type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>(0);
  v83 = v82;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>, protocol conformance descriptor for AnimatableValues<Pack{repeat A}>);
  v85 = v84;

  v81(&v209, &v227, &v232, v83, v85, v71);

  if (v212)
  {

    return 1;
  }

  else
  {
    v87 = v210;
    v86 = v211;
    v88 = v209;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v234, a2 | ((HIDWORD(a2) & 1) << 32), v71);
    *(v4 + 24) = v232;

    v207 = a1;
    v224 = *a1;
    v223 = *(a1 + 1);
    v221[1] = v86;
    v222 = v88;
    v221[0] = v87;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v206 = v89;
    v90 = MEMORY[0x1E69E7DE0];
    v91 = *(MEMORY[0x1E69E7DE0] - 8);
    v92 = v91[8];
    v93 = MEMORY[0x1EEE9AC00](v89);
    v94 = v193 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
    v199 = v92;
    v200 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
    v95 = v91[2];
    v96 = v95(v94, &v224, v90, v93);
    v201 = v95;
    v202 = (v91 + 2);
    v204 = v193;
    v97 = MEMORY[0x1EEE9AC00](v96);
    v98(v94, &v222, v90, v97);
    v203 = v206[1];
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v99 = v91[1];
    v205 = v99;
    v206 = v91 + 1;
    v99(v94, v90);
    v99(v94, v90);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
    v101 = v100;
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
    v204 = v102;
    v194 = v193;
    v103 = *(v101 - 8);
    v104 = v103[8];
    v105 = MEMORY[0x1EEE9AC00](v102);
    v106 = v193 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
    v196 = v104;
    v197 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
    v107 = v103[2];
    v108 = v107(v106, &v223, v101, v105);
    v195 = v107;
    v109 = MEMORY[0x1EEE9AC00](v108);
    v107(v106, v221, v101, v109);
    v198 = v204[1];
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v204 = v4;
    v110 = v103[1];
    v110(v106, v101);
    v110(v106, v101);
    v112 = *(&v225 + 1);
    v111 = v226[0];
    v113 = v225;
    v110(&v225, v101);
    v114 = MEMORY[0x1E69E7DE0];
    v115 = v205(v226, MEMORY[0x1E69E7DE0]);
    v194 = v193;
    v116 = v207;
    *v207 = v111;
    v116[1] = v113;
    v116[2] = v112;
    v117 = v204[4];
    v217[1] = v112;
    v218 = v111;
    v216 = v117;
    v217[0] = v113;
    v215 = *(v204 + 5);
    v118 = MEMORY[0x1EEE9AC00](v115);
    v119 = v200;
    v120 = v193 - v200;
    v121 = v114;
    v122 = v201;
    v123 = (v201)(v193 - v200, &v218, v121, v118);
    v193[1] = v193;
    v124 = MEMORY[0x1EEE9AC00](v123);
    v125 = v193 - v119;
    v126 = v193 - v119;
    v127 = MEMORY[0x1E69E7DE0];
    v122(v126, &v216, MEMORY[0x1E69E7DE0], v124);
    v128 = v127;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v129 = v127;
    v130 = v205;
    v205(v125, v129);
    v131 = v130(v120, v128);
    v203 = v193;
    v132 = MEMORY[0x1EEE9AC00](v131);
    v133 = v197;
    v134 = v193 - v197;
    v135 = v195;
    v136 = (v195)(v193 - v197, v217, v101, v132);
    v137 = MEMORY[0x1EEE9AC00](v136);
    v135(v193 - v133, &v215, v101, v137);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v110(v193 - v133, v101);
    v110(v134, v101);
    v139 = v219[1];
    v138 = v220;
    v140 = v219[0];
    v110(v219, v101);
    v141 = v204;
    v205(&v220, MEMORY[0x1E69E7DE0]);
    v142 = v207;
    *v207 = v138;
    v142[1] = v140;
    v142[2] = v139;
    swift_beginAccess();
    *(v141 + 11) = v87;
    *(v141 + 12) = v86;
    v141[9] = a3;
    *(v141 + 10) = v88;
    v143 = v141[8];
    if (v143 > 0.0)
    {
      v141[9] = v143 * (round(a3 / v143) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    swift_beginAccess();
    v11 = *(v3 + 80);
    v12 = *(v3 + 88);
    v13 = *(v3 + 96);
    v14 = a1[1];
    v15 = a1[2];
    v203[0] = *a1;
    v218 = v15;
    v219[0] = v14;
    v216 = v12;
    v217 = v11;
    v215 = v13;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v194 = v16;
    v190 = v185;
    v17 = MEMORY[0x1E69E7DE0];
    v18 = *(MEMORY[0x1E69E7DE0] - 8);
    v19 = v18[8];
    v20 = MEMORY[0x1EEE9AC00](v16);
    v192 = v4;
    v189 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
    v21 = v18[2];
    v22 = v21(v185 - v189, v203, v17, v20);
    v193 = a1;
    v23 = MEMORY[0x1EEE9AC00](v22);
    v24 = v185 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21(v24, &v217, v17, v23);
    v191 = v18 + 2;
    v25 = v21;
    v194 = *(v194 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v26 = v18[1];
    v26(v24, v17);
    v27 = (v26)(v24, v17);
    v190 = v185;
    v28 = MEMORY[0x1EEE9AC00](v27);
    v29 = v189;
    v30 = v25(v185 - v189, v219, v17, v28);
    v187 = v185;
    v31 = MEMORY[0x1EEE9AC00](v30);
    v25(v185 - v29, &v216, v17, v31);
    v32 = v25;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v26(v185 - v29, v17);
    v33 = (v26)(v185 - v29, v17);
    v190 = v185;
    v34 = MEMORY[0x1EEE9AC00](v33);
    v35 = v29;
    v36 = v32(v185 - v29, &v218, v17, v34);
    v187 = v185;
    v37 = MEMORY[0x1EEE9AC00](v36);
    v32(v185 - v29, &v215, v17, v37);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v26(v185 - v29, v17);
    v26(v185 - v29, v17);
    v38 = v202[0];
    v39 = v197[0];
    v40 = v195[0];
    v26(v195, v17);
    v26(v197, v17);
    v26(v202, v17);
    v42 = v192;
    v41 = v193;
    *v193 = v38;
    v41[1] = v39;
    v41[2] = v40;
    v43 = swift_beginAccess();
    v190 = v185;
    v44 = v42[4];
    v45 = v42[5];
    v46 = v42[6];
    v210 = v39;
    v211 = v38;
    v208 = v44;
    v209 = v40;
    v206 = v46;
    v207 = v45;
    v188 = v19;
    v47 = MEMORY[0x1EEE9AC00](v43);
    v48 = v32(v185 - v35, &v211, v17, v47);
    v192 = v185;
    v49 = MEMORY[0x1EEE9AC00](v48);
    v32(v185 - v35, &v208, v17, v49);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v26(v185 - v35, v17);
    v50 = (v26)(v185 - v35, v17);
    v192 = v185;
    v51 = MEMORY[0x1EEE9AC00](v50);
    v52 = v32(v185 - v35, &v210, v17, v51);
    v190 = v185;
    v53 = MEMORY[0x1EEE9AC00](v52);
    v32(v185 - v35, &v207, v17, v53);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v26(v185 - v35, v17);
    v54 = (v26)(v185 - v35, v17);
    v192 = v185;
    v55 = MEMORY[0x1EEE9AC00](v54);
    v56 = v32(v185 - v35, &v209, v17, v55);
    v57 = MEMORY[0x1EEE9AC00](v56);
    v32(v185 - v35, &v206, v17, v57);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v26(v185 - v35, v17);
    v26(v185 - v35, v17);
    v59 = v213;
    v58 = v214;
    v60 = v212;
    v26(&v212, v17);
    v26(&v213, v17);
    v61 = &v214;
    goto LABEL_6;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_12:
      *(v3 + 109) = v10;
      goto LABEL_13;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_13;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
    swift_beginAccess();
    v140 = *(v3 + 80);
    v141 = *(v3 + 88);
    v142 = *(v3 + 96);
    v143 = *a1;
    v144 = a1[2];
    v218 = a1[1];
    v219[0] = v143;
    v216 = v140;
    v217 = v144;
    v215 = v141;
    v214 = v142;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v194 = v145;
    v190 = v185;
    v17 = MEMORY[0x1E69E7DE0];
    v146 = *(MEMORY[0x1E69E7DE0] - 8);
    v147 = v146[8];
    v148 = MEMORY[0x1EEE9AC00](v145);
    v192 = v4;
    v189 = (v147 + 15) & 0xFFFFFFFFFFFFFFF0;
    v149 = v146[2];
    v150 = v149(v185 - v189, v219, v17, v148);
    v193 = a1;
    v151 = MEMORY[0x1EEE9AC00](v150);
    v152 = v185 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
    v149(v152, &v216, v17, v151);
    v191 = v146 + 2;
    v153 = v149;
    v194 = *(v194 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v26 = v146[1];
    v26(v152, v17);
    v154 = (v26)(v152, v17);
    v190 = v185;
    v155 = MEMORY[0x1EEE9AC00](v154);
    v156 = v189;
    v157 = v153(v185 - v189, &v218, v17, v155);
    v187 = v185;
    v158 = MEMORY[0x1EEE9AC00](v157);
    v153(v185 - v156, &v215, v17, v158);
    v159 = v153;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v26(v185 - v156, v17);
    v160 = (v26)(v185 - v156, v17);
    v190 = v185;
    v161 = MEMORY[0x1EEE9AC00](v160);
    v162 = v156;
    v163 = v159(v185 - v156, &v217, v17, v161);
    v187 = v185;
    v164 = MEMORY[0x1EEE9AC00](v163);
    v159(v185 - v156, &v214, v17, v164);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v26(v185 - v156, v17);
    v26(v185 - v156, v17);
    v165 = v202[0];
    v166 = v197[0];
    v167 = v203[0];
    v26(v203, v17);
    v26(v197, v17);
    v26(v202, v17);
    v169 = v192;
    v168 = v193;
    *v193 = v165;
    v168[1] = v166;
    v168[2] = v167;
    v170 = swift_beginAccess();
    v190 = v185;
    v171 = v169[4];
    v172 = v169[5];
    v173 = v169[6];
    v209 = v166;
    v210 = v165;
    v208 = v167;
    v206 = v172;
    v207 = v171;
    v201[0] = v173;
    v188 = v147;
    v174 = MEMORY[0x1EEE9AC00](v170);
    v175 = v159(v185 - v162, &v210, v17, v174);
    v192 = v185;
    v176 = MEMORY[0x1EEE9AC00](v175);
    v159(v185 - v162, &v207, v17, v176);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v26(v185 - v162, v17);
    v177 = (v26)(v185 - v162, v17);
    v192 = v185;
    v178 = MEMORY[0x1EEE9AC00](v177);
    v179 = v159(v185 - v162, &v209, v17, v178);
    v190 = v185;
    v180 = MEMORY[0x1EEE9AC00](v179);
    v159(v185 - v162, &v206, v17, v180);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v26(v185 - v162, v17);
    v181 = (v26)(v185 - v162, v17);
    v192 = v185;
    v182 = MEMORY[0x1EEE9AC00](v181);
    v183 = v159(v185 - v162, &v208, v17, v182);
    v184 = MEMORY[0x1EEE9AC00](v183);
    v159(v185 - v162, v201, v17, v184);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v26(v185 - v162, v17);
    v26(v185 - v162, v17);
    v59 = v212;
    v58 = v213;
    v60 = v211;
    v26(&v211, v17);
    v26(&v212, v17);
    v61 = &v213;
LABEL_6:
    v26(v61, v17);
    result = 0;
    v63 = v193;
    *v193 = v58;
    v63[1] = v59;
    v63[2] = v60;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v64 = fmax(v7, 0.0166666667);
    v65 = v64 + v64;
    if (v64 + v64 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v65;
      }
    }

    v10 = 3;
    goto LABEL_12;
  }

LABEL_13:
  v66 = a3 - *(v3 + 56);
  swift_beginAccess();
  v67 = *(v3 + 24);
  v68 = *(v4 + 128);

  v203[0] = v67;
  v203[1] = AGCreateWeakAttribute();
  v204 = 0;
  v205 = v68;
  v69 = *(v4 + 136);
  if (v69)
  {
    v70 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>(0);
    v72 = v71;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
    v196[3] = v73;
    v196[0] = v69;
    v196[1] = v70;
    specialized Dictionary.subscript.setter(v196, v72);
  }

  swift_beginAccess();
  v74 = *(v4 + 16);
  swift_beginAccess();
  v75 = *(v4 + 32);
  v76 = *(v4 + 40);
  v77 = *(v4 + 48);

  v78 = specialized Animation.animate<A>(value:time:context:)(v203, v74, v75, v76, v77, v66);
  v80 = v79;
  v82 = v81;
  v84 = v83;

  if (v84)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v205, a2 | ((HIDWORD(a2) & 1) << 32), v66);
    *(v4 + 24) = v203[0];

    v85 = *a1;
    v86 = a1[2];
    v215 = a1[1];
    v216 = v85;
    v214 = v86;
    v212 = v80;
    v213 = v78;
    v211 = v82;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v191 = v78;
    v194 = v87;
    v188 = v185;
    v88 = MEMORY[0x1E69E7DE0];
    v89 = *(MEMORY[0x1E69E7DE0] - 8);
    v192 = v4;
    v90 = v89;
    v91 = *(v89 + 64);
    v92 = MEMORY[0x1EEE9AC00](v87);
    v93 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
    v190 = v82;
    v94 = *(v90 + 16);
    v95 = v94(v185 - v93, &v216, v88, v92);
    v193 = a1;
    v186 = v185;
    v96 = MEMORY[0x1EEE9AC00](v95);
    v189 = v80;
    v94(v185 - v93, &v213, v88, v96);
    v194 = *(v194 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v97 = *(v90 + 8);
    v97(v185 - v93, v88);
    v98 = (v97)(v185 - v93, v88);
    v188 = v185;
    v99 = MEMORY[0x1EEE9AC00](v98);
    v100 = v94(v185 - v93, &v215, v88, v99);
    v186 = v185;
    v101 = MEMORY[0x1EEE9AC00](v100);
    v94(v185 - v93, &v212, v88, v101);
    v187 = v94;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v97(v185 - v93, v88);
    v102 = (v97)(v185 - v93, v88);
    v188 = v185;
    v103 = MEMORY[0x1EEE9AC00](v102);
    v104 = v94(v185 - v93, &v214, v88, v103);
    v186 = v185;
    v105 = MEMORY[0x1EEE9AC00](v104);
    v94(v185 - v93, &v211, v88, v105);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v97(v185 - v93, v88);
    v97(v185 - v93, v88);
    v107 = v218;
    v106 = v219[0];
    v108 = v217;
    v97(&v217, v88);
    v97(&v218, v88);
    v109 = (v97)(v219, v88);
    v188 = v185;
    v110 = v192;
    v111 = v193;
    *v193 = v106;
    v111[1] = v107;
    v111[2] = v108;
    v112 = v110[4];
    v113 = v192[5];
    v114 = v192[6];
    v206 = v107;
    v207 = v106;
    v200 = v112;
    v201[0] = v108;
    v198 = v114;
    v199 = v113;
    v115 = MEMORY[0x1EEE9AC00](v109);
    v185[0] = v93;
    v116 = v185 - v93;
    v117 = v185 - v93;
    v118 = v187;
    v119 = (v187)(v117, &v207, v88, v115);
    v186 = v185;
    v120 = MEMORY[0x1EEE9AC00](v119);
    v121 = v185 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    v118(v121, &v200, v88, v120);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v97(v121, v88);
    v122 = (v97)(v116, v88);
    v188 = v185;
    v123 = MEMORY[0x1EEE9AC00](v122);
    v124 = v185[0];
    v125 = v185 - v185[0];
    v185[1] = v90 + 16;
    v126 = (v118)(v185 - v185[0], &v206, v88, v123);
    v186 = v185;
    v127 = MEMORY[0x1EEE9AC00](v126);
    v118(v185 - v124, &v199, v88, v127);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v97(v185 - v124, v88);
    v128 = (v97)(v125, v88);
    v188 = v185;
    v129 = MEMORY[0x1EEE9AC00](v128);
    v130 = (v118)(v185 - v124, v201, v88, v129);
    v131 = MEMORY[0x1EEE9AC00](v130);
    v118(v185 - v124, &v198, v88, v131);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v97(v185 - v124, v88);
    v97(v185 - v124, v88);
    v133 = v209;
    v132 = v210;
    v134 = v208;
    v97(&v208, v88);
    v97(&v209, v88);
    v97(&v210, v88);
    v136 = v192;
    v135 = v193;
    *v193 = v132;
    v135[1] = v133;
    v135[2] = v134;
    swift_beginAccess();
    v138 = v189;
    v137 = v190;
    *(v136 + 10) = v191;
    *(v136 + 11) = v138;
    *(v136 + 12) = v137;
    v136[9] = a3;
    v139 = v136[8];
    if (v139 > 0.0)
    {
      v136[9] = v139 * (round(a3 / v139) + 1.0);
    }

    return 0;
  }
}

uint64_t AnimatableMaterialProviderBox.setAnimatableData(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, v1 + *(v2 + 216), v3, v5);
  _AnyAnimatableData.update<A>(_:)(v7, v3, *(v2 + 240));
  swift_allocObject();
  v8 = specialized AnimatableMaterialProviderBox.init(_:)(v7);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t _AnyAnimatableData.update<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v12[-v7];
  v9 = *v3;
  result = type metadata accessor for VTable(0, a2, a3, v10);
  if (v9 == result)
  {
    outlined init with copy of Any((v3 + 1), v12);
    swift_dynamicCast();
    return (*(a3 + 32))(v8, a2, a3);
  }

  return result;
}

void Color.Resolved.animatableData.setter(float a1, float a2, float a3, float a4)
{
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v12 = a4;
    v13 = a3;
    v14 = a2;
    v15 = a1;
    swift_once();
    a1 = v15;
    a2 = v14;
    a3 = v13;
    a4 = v12;
  }

  v5 = a1 * 0.0078125;
  v6 = a2 * 0.0078125;
  v7 = a3 * 0.0078125;
  v8 = a4 * 0.0078125;
  swift_beginAccess();
  if ((static Color.Resolved.legacyInterpolation & 1) == 0)
  {
    v19 = 2;
    v16 = __PAIR64__(LODWORD(v6), LODWORD(v5));
    v17 = v7;
    v18 = v8;
    v5 = ResolvedGradient.ColorSpace.convertOut(_:)(&v16);
    v6 = v9;
    v7 = v10;
    v8 = v11;
  }

  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance _AnyAnimatableData@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for ZeroVTable();
  a1[4] = MEMORY[0x1E69E7CA8] + 8;
  *a1 = result;
  return result;
}

uint64_t static VTable.scale(_:by:)(uint64_t a1, double a2)
{
  outlined init with take of Any(a1, &v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(a1 + 24) = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_1(a1);
  swift_dynamicCast();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness, a2);
}

float protocol witness for VectorArithmetic.scale(by:) in conformance Float(double a1)
{
  v2 = a1;
  result = *v1 * v2;
  *v1 = result;
  return result;
}

uint64_t protocol witness for VectorArithmetic.scale(by:) in conformance AnimatableValues<Pack{repeat A}>(uint64_t TupleTypeMetadata, double a2)
{
  v3 = TupleTypeMetadata;
  v5 = *(TupleTypeMetadata + 16);
  if (v5 != 1)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v8 = 0;
      v9 = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_8;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_8;
      }

      v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v5 != v8)
      {
LABEL_8:
        v14 = v5 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v43[1] = v43;
  v20 = MEMORY[0x1EEE9AC00](v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v43 - v22;
  v49 = v21;
  v44 = v23;
  v45 = v2;
  v24 = *(v23 + 16);
  v46 = v25;
  v26 = v24(v20);
  if (v5)
  {
    v27 = (*(v3 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v28 = (*(v3 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v29 = (v46 + 32);
    v30 = v5;
    v47 = v5;
    do
    {
      if (v5 == 1)
      {
        v31 = v48;
      }

      else
      {
        v31 = &v48[*v29];
      }

      v33 = *v27++;
      v32 = v33;
      v34 = *v28++;
      v35 = *(v32 - 8);
      v36 = MEMORY[0x1EEE9AC00](v26);
      v38 = v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 16))(v38, v49 + v39, v32, v36);
      VectorArithmetic.scaled(by:)(v32, v34, v31, a2);
      v26 = (*(v35 + 8))(v38, v32);
      v29 += 4;
      --v30;
      v5 = v47;
    }

    while (v30);
  }

  v40 = v44;
  v41 = v46;
  (*(v44 + 40))(v45, v48, v46);
  return (*(v40 + 8))(v49, v41);
}

uint64_t specialized static _AnyAnimatableData.-= infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1;
  if (*a1 == *a2)
  {
    return (*(v4 + 104))(a1 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v4 == result)
  {
    outlined destroy of _AnyAnimatableData(a1);
    outlined init with copy of _AnyAnimatableData(a2, a1);
    return (*(*a1 + 112))(a1 + 1);
  }

  return result;
}

double static VTable.magnitudeSquared(_:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v9[-v4];
  outlined init with copy of Any(a1, v9);
  swift_dynamicCast();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  return v7;
}

double protocol witness for VectorArithmetic.magnitudeSquared.getter in conformance AnimatableValues<Pack{repeat A}>(uint64_t TupleTypeMetadata)
{
  v1 = TupleTypeMetadata;
  v2 = *(TupleTypeMetadata + 16);
  if (v2 == 1)
  {
    v3 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v2)
    {
      v6 = 0;
      v7 = *(v1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v2 < 4)
      {
        goto LABEL_9;
      }

      if (&v5[-v7] < 0x20)
      {
        goto LABEL_9;
      }

      v6 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = (v7 + 16);
      v9 = v5 + 16;
      v10 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v11 = *v8;
        *(v9 - 1) = *(v8 - 1);
        *v9 = v11;
        v8 += 2;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v2 != v6)
      {
LABEL_9:
        v12 = v2 - v6;
        v13 = 8 * v6;
        v14 = &v5[8 * v6];
        v15 = (v7 + v13);
        do
        {
          v16 = *v15++;
          *v14 = v16;
          v14 += 8;
          --v12;
        }

        while (v12);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = TupleTypeMetadata;
  }

  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v36 = v19;
  v20 = *(v19 + 16);
  v38 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20(v17);
  v37 = v3;
  if (v2)
  {
    v22 = (*(v1 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v23 = (*(v1 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v3 + 32);
    v25 = 0.0;
    v26 = v2;
    do
    {
      v29 = *v22;
      v30 = *v23;
      v31 = *(*v22 - 8);
      MEMORY[0x1EEE9AC00](v21);
      v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v26 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v24;
      }

      (*(v31 + 16))(v33, &v38[v27], v29);
      v28 = (*(v30 + 24))(v29, v30);
      v21 = (*(v31 + 8))(v33, v29);
      v25 = v25 + v28;
      v24 += 4;
      ++v23;
      ++v22;
      --v2;
    }

    while (v2);
  }

  else
  {
    v25 = 0.0;
  }

  (*(v36 + 8))(v38, v37);
  return v25;
}

void specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(char a1, unint64_t a2, double a3)
{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  Description = v10[-1].Description;
  MEMORY[0x1EEE9AC00](v10);
  i = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 160) & 1) == 0 && (a1)
  {
    *(v4 + 160) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 152);
    if (v13 >> 62)
    {
      goto LABEL_62;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 184) + 16))
      {
        return;
      }

      v53 = v10;
      v56 = i;
      IndexSet.init()();
      v58 = *(*(v4 + 184) + 16);
      if (!v58)
      {
LABEL_53:
        swift_beginAccess();
        a2 = v55;
        v48 = v56;
        specialized Collection.subscript.getter(v55, v49);
        v51 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 184), a2, v50);
        v52 = *(*(v4 + 184) + 16);
        if (v52 < v51)
        {
          goto LABEL_61;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v51, v52);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        Description[1](v48, v53);
        return;
      }

      v19 = 0;
      v20 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v20 = a2;
      }

      v57 = v20;
      v10 = &type metadata for _AnyAnimatableData;
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 184);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 184) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 184) = v21;
        }

        if (v19 >= v21[2])
        {
          break;
        }

        v23 = &v21[10 * v19];
        v24 = v23 + 4;
        v25 = v23[5];

        v26 = AGCreateWeakAttribute();
        v63[0] = v25;
        v63[1] = v26;
        v64 = 0;
        v27 = v23[11];
        if (v27)
        {
          v28 = v23[12];
          type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
          a2 = v29;
          type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
          v62 = v30;
          *&v61 = v27;
          *(&v61 + 1) = v28;
          outlined init with take of Any(&v61, v60);
          v31 = swift_isUniquelyReferenced_nonNull_native();
          v59 = v25;
          v63[0] = 0x8000000000000000;
          i = specialized __RawDictionaryStorage.find<A>(_:)(a2);
          v33 = v25[2];
          v34 = (v32 & 1) == 0;
          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_58;
          }

          v36 = v32;
          if (v25[3] >= v35)
          {
            if ((v31 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v31);
            v37 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
            if ((v36 & 1) != (v38 & 1))
            {
              goto LABEL_67;
            }

            i = v37;
          }

          v39 = v59;
          if (v36)
          {
            v40 = (v59[7] + 32 * i);
            __swift_destroy_boxed_opaque_existential_1(v40);
            outlined init with take of Any(v60, v40);
          }

          else
          {
            v59[(i >> 6) + 8] |= 1 << i;
            *(v39[6] + 8 * i) = a2;
            outlined init with take of Any(v60, (v39[7] + 32 * i));
            v41 = v39[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_60;
            }

            v39[2] = v43;
          }

          v63[0] = v39;
        }

        a2 = *(**v24 + 120);
        i = **v24 + 120;
        lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData();
        (a2)(&v61, v24 + 2, v63, &type metadata for _AnyAnimatableData, v44, a3);
        if (v61)
        {
          outlined destroy of HitTestableEvent?(&v61, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
          a2 = HIBYTE(v64);

          v45 = *(v4 + 184);
          swift_endAccess();
          if ((a2 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          outlined destroy of HitTestableEvent?(&v61, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
          v45 = *(v4 + 184);
          swift_endAccess();
        }

        if (v19 >= *(v45 + 16))
        {
          goto LABEL_57;
        }

        a2 = *(v45 + 80 * v19 + 104);
        if (a2 >> 62)
        {
          v46 = __CocoaSet.count.getter();
          if (v46)
          {
LABEL_45:
            if (v46 < 1)
            {
              goto LABEL_59;
            }

            for (i = 0; i != v46; ++i)
            {
              if ((a2 & 0xC000000000000001) != 0)
              {
                v47 = MEMORY[0x193AC03C0](i, a2);
              }

              else
              {
                v47 = *(a2 + 8 * i + 32);
              }

              (*(*v47 + 96))();
            }
          }
        }

        else
        {
          v46 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v46)
          {
            goto LABEL_45;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_22:
        if (++v19 == v58)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 152);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 152) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {
    v16 = i;

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v18 = *(v14 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    i = v16;
    goto LABEL_14;
  }

  __break(1u);
LABEL_67:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 112) & 1) == 0 && (a1)
  {
    *(v4 + 112) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 104);
    if (v14 >> 62)
    {
      goto LABEL_63;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 136) + 16))
      {
        return;
      }

      v58 = v10;
      v56 = v12;
      v57 = v11;
      v12 = v59;
      IndexSet.init()();
      v19 = *(*(v4 + 136) + 16);
      if (!v19)
      {
LABEL_54:
        swift_beginAccess();
        v51 = v58;
        specialized Collection.subscript.getter(v58, v52);
        v54 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 136), v51, v53);
        v55 = *(*(v4 + 136) + 16);
        if (v55 < v54)
        {
          goto LABEL_62;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v54, v55);
        outlined destroy of Slice<IndexSet>(v51, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v56 + 8))(v12, v57);
        return;
      }

      v20 = 0;
      v21 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v21 = a2;
      }

      v60 = v21;
      while (1)
      {
        swift_beginAccess();
        v10 = *(v4 + 136);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 136) = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          *(v4 + 136) = v10;
        }

        if (v20 >= *(v10 + 16))
        {
          break;
        }

        a2 = v10 + 56 * v20;
        v23 = *(a2 + 40);

        v24 = AGCreateWeakAttribute();
        v65[0] = v23;
        v65[1] = v24;
        v66 = 0;
        v25 = *(a2 + 64);
        if (!v25)
        {
          goto LABEL_39;
        }

        v26 = *(a2 + 72);
        type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>(0);
        v28 = v27;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>, MEMORY[0x1E69E6720]);
        v64 = v29;
        *&v63 = v25;
        *(&v63 + 1) = v26;
        outlined init with take of Any(&v63, v62);
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v61 = v23;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
        v31 = *(v23 + 16);
        v32 = (v30 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          goto LABEL_59;
        }

        v34 = v30;
        if (*(v23 + 24) >= v33)
        {
          if (v11)
          {
            v11 = v61;
            if ((v30 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v11 = v61;
            if ((v34 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v11);
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
          if ((v34 & 1) != (v36 & 1))
          {
            goto LABEL_68;
          }

          v12 = v35;
          v11 = v61;
          if ((v34 & 1) == 0)
          {
LABEL_36:
            *(v11 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v11 + 48) + 8 * v12) = v28;
            outlined init with take of Any(v62, (*(v11 + 56) + 32 * v12));
            v38 = *(v11 + 16);
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_61;
            }

            *(v11 + 16) = v40;
            goto LABEL_38;
          }
        }

        v37 = (*(v11 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v37);
        outlined init with take of Any(v62, v37);
LABEL_38:
        v65[0] = v11;
        v12 = v59;
LABEL_39:
        v41 = *(a2 + 32);
        v42 = *(a2 + 56);
        *&v62[0] = *(a2 + 48);
        BYTE8(v62[0]) = v42;
        v43 = *(*v41 + 120);
        v11 = *v41 + 120;
        type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>(0);
        v45 = v44;
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>> and conformance KeyedAnimatableArray<A, B>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>, protocol conformance descriptor for KeyedAnimatableArray<A, B>);
        v43(&v63, v62, v65, v45, v46, a3);
        if (v63)
        {

          v47 = HIBYTE(v66);

          *(v4 + 136) = v10;
          swift_endAccess();
          if ((v47 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          *(v4 + 136) = v10;
          swift_endAccess();
        }

        if (v20 >= *(v10 + 16))
        {
          goto LABEL_58;
        }

        v48 = *(a2 + 80);
        if (v48 >> 62)
        {
          v10 = __CocoaSet.count.getter();
          if (v10)
          {
LABEL_46:
            if (v10 < 1)
            {
              goto LABEL_60;
            }

            a2 = v48 & 0xC000000000000001;

            for (i = 0; i != v10; ++i)
            {
              if (a2)
              {
                v50 = MEMORY[0x193AC03C0](i, v48);
              }

              else
              {
                v50 = *(v48 + 8 * i + 32);
              }

              (*(*v50 + 96))();
            }
          }
        }

        else
        {
          v10 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
            goto LABEL_46;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_22:
        if (++v20 == v19)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 104);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 104) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_68:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 120);
    if (v14 >> 62)
    {
      goto LABEL_63;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return;
      }

      v59 = v10;
      v57 = v12;
      v58 = v11;
      v12 = v60;
      IndexSet.init()();
      v19 = *(*(v4 + 152) + 16);
      if (!v19)
      {
LABEL_54:
        swift_beginAccess();
        v52 = v59;
        specialized Collection.subscript.getter(v59, v53);
        v55 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 152), v52, v54);
        v56 = *(*(v4 + 152) + 16);
        if (v56 < v55)
        {
          goto LABEL_62;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v55, v56);
        outlined destroy of Slice<IndexSet>(v52, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v57 + 8))(v12, v58);
        return;
      }

      v20 = 0;
      v21 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v21 = a2;
      }

      v61 = v21;
      while (1)
      {
        swift_beginAccess();
        v10 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          *(v4 + 152) = v10;
        }

        if (v20 >= *(v10 + 16))
        {
          break;
        }

        a2 = v10 + (v20 << 6);
        v23 = *(a2 + 40);

        v24 = AGCreateWeakAttribute();
        v67[0] = v23;
        v67[1] = v24;
        v68 = 0;
        v25 = *(a2 + 72);
        if (!v25)
        {
          goto LABEL_39;
        }

        v26 = *(a2 + 80);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>(0);
        v28 = v27;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>, MEMORY[0x1E69E6720]);
        v66 = v29;
        *&v65 = v25;
        *(&v65 + 1) = v26;
        outlined init with take of Any(&v65, &v63);
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v62 = v23;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
        v31 = *(v23 + 16);
        v32 = (v30 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          goto LABEL_59;
        }

        v34 = v30;
        if (*(v23 + 24) >= v33)
        {
          if (v11)
          {
            v11 = v62;
            if ((v30 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v11 = v62;
            if ((v34 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v11);
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
          if ((v34 & 1) != (v36 & 1))
          {
            goto LABEL_68;
          }

          v12 = v35;
          v11 = v62;
          if ((v34 & 1) == 0)
          {
LABEL_36:
            *(v11 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v11 + 48) + 8 * v12) = v28;
            outlined init with take of Any(&v63, (*(v11 + 56) + 32 * v12));
            v38 = *(v11 + 16);
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_61;
            }

            *(v11 + 16) = v40;
            goto LABEL_38;
          }
        }

        v37 = (*(v11 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v37);
        outlined init with take of Any(&v63, v37);
LABEL_38:
        v67[0] = v11;
        v12 = v60;
LABEL_39:
        v41 = *(a2 + 32);
        v42 = *(a2 + 56);
        v43 = *(a2 + 64);
        *&v63 = *(a2 + 48);
        BYTE8(v63) = v42;
        v64 = v43;
        v44 = *(*v41 + 120);
        v11 = *v41 + 120;
        type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>(0);
        v46 = v45;
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
        v44(&v65, &v63, v67, v46, v47, a3);
        if (v65)
        {

          v48 = HIBYTE(v68);

          *(v4 + 152) = v10;
          swift_endAccess();
          if ((v48 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          *(v4 + 152) = v10;
          swift_endAccess();
        }

        if (v20 >= *(v10 + 16))
        {
          goto LABEL_58;
        }

        v49 = *(a2 + 88);
        if (v49 >> 62)
        {
          v10 = __CocoaSet.count.getter();
          if (v10)
          {
LABEL_46:
            if (v10 < 1)
            {
              goto LABEL_60;
            }

            a2 = v49 & 0xC000000000000001;

            for (i = 0; i != v10; ++i)
            {
              if (a2)
              {
                v51 = MEMORY[0x193AC03C0](i, v49);
              }

              else
              {
                v51 = *(v49 + 8 * i + 32);
              }

              (*(*v51 + 96))();
            }
          }
        }

        else
        {
          v10 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
            goto LABEL_46;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_22:
        if (++v20 == v19)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 120);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_68:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 208) & 1) == 0 && (a1)
  {
    *(v4 + 208) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 200);
    if (v13 >> 62)
    {
      goto LABEL_62;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 232) + 16))
      {
        return;
      }

      v61 = v12;
      IndexSet.init()();
      v19 = *(*(v4 + 232) + 16);
      if (!v19)
      {
LABEL_53:
        swift_beginAccess();
        v52 = v60;
        v12 = v61;
        specialized Collection.subscript.getter(v60, v53);
        v55 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 232), v52, v54);
        v56 = *(*(v4 + 232) + 16);
        if (v56 < v55)
        {
          goto LABEL_61;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v55, v56);
        outlined destroy of Slice<IndexSet>(v52, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v58 + 8))(v12, v59);
        return;
      }

      v20 = 0;
      v21 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v21 = a2;
      }

      v62 = v21;
      while (1)
      {
        swift_beginAccess();
        v22 = *(v4 + 232);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 232) = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
          *(v4 + 232) = v22;
        }

        if (v20 >= v22[2])
        {
          break;
        }

        a2 = &v22[13 * v20];
        v24 = *(a2 + 40);

        v25 = AGCreateWeakAttribute();
        v71[0] = v24;
        v71[1] = v25;
        v72 = 0;
        v12 = *(a2 + 112);
        if (!v12)
        {
          goto LABEL_39;
        }

        v26 = *(a2 + 120);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>(0);
        v28 = v27;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>, MEMORY[0x1E69E6720]);
        v65 = v29;
        *&v64 = v12;
        *(&v64 + 1) = v26;
        outlined init with take of Any(&v64, &v67);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        *&v63[0] = v24;
        v71[0] = 0x8000000000000000;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
        v33 = *(v24 + 16);
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_58;
        }

        v12 = v31;
        if (*(v24 + 24) >= v35)
        {
          if (v30)
          {
            v38 = *&v63[0];
            if ((v31 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v38 = *&v63[0];
            if ((v12 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v30);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
          if ((v12 & 1) != (v37 & 1))
          {
            goto LABEL_67;
          }

          v32 = v36;
          v38 = *&v63[0];
          if ((v12 & 1) == 0)
          {
LABEL_36:
            v38[(v32 >> 6) + 8] |= 1 << v32;
            *(v38[6] + 8 * v32) = v28;
            outlined init with take of Any(&v67, (v38[7] + 32 * v32));
            v40 = v38[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_60;
            }

            v38[2] = v42;
            goto LABEL_38;
          }
        }

        v39 = (v38[7] + 32 * v32);
        __swift_destroy_boxed_opaque_existential_1(v39);
        outlined init with take of Any(&v67, v39);
LABEL_38:

        v71[0] = v38;
LABEL_39:
        v43 = *(a2 + 32);
        v67 = *(a2 + 48);
        v68 = *(a2 + 64);
        v69 = *(a2 + 80);
        v70 = *(a2 + 96);
        v63[0] = v67;
        v63[1] = v68;
        v63[2] = v69;
        v63[3] = v70;
        v12 = *(*v43 + 120);
        a2 = *v43 + 120;
        type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>(0);
        v45 = v44;
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
        (v12)(&v64, v63, v71, v45, v46, a3);
        if (v66)
        {

          v47 = *(v4 + 232);
          swift_endAccess();
        }

        else
        {
          v48 = HIBYTE(v72);

          v47 = *(v4 + 232);
          swift_endAccess();
          if ((v48 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        if (v20 >= *(v47 + 16))
        {
          goto LABEL_57;
        }

        v49 = *(v47 + 104 * v20 + 128);
        if (v49 >> 62)
        {
          v12 = __CocoaSet.count.getter();
          if (v12)
          {
LABEL_45:
            if (v12 < 1)
            {
              goto LABEL_59;
            }

            a2 = v49 & 0xC000000000000001;

            for (i = 0; i != v12; ++i)
            {
              if (a2)
              {
                v51 = MEMORY[0x193AC03C0](i, v49);
              }

              else
              {
                v51 = *(v49 + 8 * i + 32);
              }

              (*(*v51 + 96))();
            }
          }
        }

        else
        {
          v12 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_45;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_22:
        if (++v20 == v19)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 200);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 200) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {
    v16 = v12;

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v18 = *(v14 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    v12 = v16;
    goto LABEL_14;
  }

  __break(1u);
LABEL_67:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  Description = v10[-1].Description;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 120);
    if (v13 >> 62)
    {
      goto LABEL_61;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return;
      }

      v58 = v10;
      v61 = v12;
      IndexSet.init()();
      v63 = *(*(v4 + 152) + 16);
      if (!v63)
      {
LABEL_52:
        swift_beginAccess();
        v53 = v60;
        v12 = v61;
        specialized Collection.subscript.getter(v60, v54);
        v56 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 152), v53, v55);
        v57 = *(*(v4 + 152) + 16);
        if (v57 < v56)
        {
          goto LABEL_60;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v56, v57);
        outlined destroy of Slice<IndexSet>(v53, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        Description[1](v12, v58);
        return;
      }

      v19 = 0;
      v20 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v20 = a2;
      }

      v62 = v20;
      v10 = &type metadata for Color.ResolvedHDR._Animatable;
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 152) = v21;
        }

        if (v19 >= v21[2])
        {
          break;
        }

        v23 = &v21[8 * v19];
        a2 = (v23 + 4);
        v24 = v23[5];

        v25 = AGCreateWeakAttribute();
        v70[0] = v24;
        v70[1] = v25;
        v71 = 0;
        v26 = v23[9];
        if (v26)
        {
          v27 = v23[10];
          v12 = lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable;
          type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimationFinishingDefinitionKey);
          v29 = v28;
          type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
          v69 = v30;
          *&v67 = v26;
          *(&v67 + 1) = v27;
          outlined init with take of Any(&v67, &v65);
          v31 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v24;
          v70[0] = 0x8000000000000000;
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          v34 = v24[2];
          v35 = (v32 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_57;
          }

          v12 = v32;
          if (v24[3] >= v36)
          {
            if ((v31 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, v31);
            v37 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
            if ((v12 & 1) != (v38 & 1))
            {
              goto LABEL_66;
            }

            v33 = v37;
          }

          v39 = v64;
          if (v12)
          {
            v40 = (v64[7] + 32 * v33);
            __swift_destroy_boxed_opaque_existential_1(v40);
            outlined init with take of Any(&v65, v40);
          }

          else
          {
            v64[(v33 >> 6) + 8] |= 1 << v33;
            *(v39[6] + 8 * v33) = v29;
            outlined init with take of Any(&v65, (v39[7] + 32 * v33));
            v41 = v39[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_59;
            }

            v39[2] = v43;
          }

          v70[0] = v39;
        }

        v44 = *a2;
        v45 = *(a2 + 32);
        v65 = *(a2 + 16);
        v66 = v45;
        v46 = *(*v44 + 120);
        v12 = *v44 + 120;
        lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable();
        v46(&v67, &v65, v70, &type metadata for Color.ResolvedHDR._Animatable, v47, a3);
        if (v68 == 1)
        {

          v48 = *(v4 + 152);
          swift_endAccess();
        }

        else
        {
          v49 = HIBYTE(v71);

          v48 = *(v4 + 152);
          swift_endAccess();
          if ((v49 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        if (v19 >= *(v48 + 16))
        {
          goto LABEL_56;
        }

        v50 = *(v48 + (v19 << 6) + 88);
        if (v50 >> 62)
        {
          v12 = __CocoaSet.count.getter();
          if (v12)
          {
LABEL_44:
            if (v12 < 1)
            {
              goto LABEL_58;
            }

            a2 = v50 & 0xC000000000000001;

            for (i = 0; i != v12; ++i)
            {
              if (a2)
              {
                v52 = MEMORY[0x193AC03C0](i, v50);
              }

              else
              {
                v52 = *(v50 + 8 * i + 32);
              }

              (*(*v52 + 96))();
            }
          }
        }

        else
        {
          v12 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_44;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_22:
        if (++v19 == v63)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 120);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {
    v16 = v12;

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v18 = *(v14 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    v12 = v16;
    goto LABEL_14;
  }

  __break(1u);
LABEL_66:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v53 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[6].Kind & 1) == 0 && (a1)
  {
    LOBYTE(v4[6].Kind) = a1 & 1;
    swift_beginAccess();
    Description = v4[5].Description;
    if (Description >> 62)
    {
      goto LABEL_63;
    }

    if (*((Description & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(v4[7].Description + 2))
      {
        return;
      }

      v52 = v10;
      IndexSet.init()();
      v58 = *(v4[7].Description + 2);
      if (!v58)
      {
LABEL_54:
        swift_beginAccess();
        a2 = v54;
        specialized Collection.subscript.getter(v54, v48);
        v50 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(&v4[7].Description, a2, v49);
        v51 = *(v4[7].Description + 2);
        if (v51 < v50)
        {
          goto LABEL_62;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v50, v51);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v53 + 8))(v12, v52);
        return;
      }

      v18 = 0;
      v19 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v19 = a2;
      }

      v57 = v19;
      v55 = v12;
      v56 = v4;
      v10 = &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>;
      while (1)
      {
        swift_beginAccess();
        a2 = v4[7].Description;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4[7].Description = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          v4[7].Description = a2;
        }

        if (v18 >= *(a2 + 16))
        {
          break;
        }

        v21 = (a2 + 48 * v18);
        v22 = v21[5];

        v23 = AGCreateWeakAttribute();
        v63[0] = v22;
        v63[1] = v23;
        v64 = 0;
        v24 = v21[7];
        if (!v24)
        {
          goto LABEL_39;
        }

        v12 = v21[8];
        v4 = &type metadata for ShaderVectorData;
        type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for AnimationFinishingDefinitionKey);
        v26 = v25;
        type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
        v62 = v27;
        *&v61 = v24;
        *(&v61 + 1) = v12;
        outlined init with take of Any(&v61, v60);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v59 = v22;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
        v31 = v22[2];
        v32 = (v29 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          goto LABEL_59;
        }

        v12 = v29;
        if (v22[3] >= v33)
        {
          v4 = v56;
          if (v28)
          {
            v36 = v59;
            if ((v29 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v36 = v59;
            if ((v12 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v28);
          v34 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
          v4 = v56;
          if ((v12 & 1) != (v35 & 1))
          {
            goto LABEL_68;
          }

          v30 = v34;
          v36 = v59;
          if ((v12 & 1) == 0)
          {
LABEL_36:
            v36[(v30 >> 6) + 8] |= 1 << v30;
            *(v36[6] + 8 * v30) = v26;
            outlined init with take of Any(v60, (v36[7] + 32 * v30));
            v38 = v36[2];
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_61;
            }

            v36[2] = v40;
            goto LABEL_38;
          }
        }

        v37 = (v36[7] + 32 * v30);
        __swift_destroy_boxed_opaque_existential_1(v37);
        outlined init with take of Any(v60, v37);
LABEL_38:
        v63[0] = v36;
        v12 = v55;
LABEL_39:
        v41 = v21[4];
        *&v60[0] = v21[6];
        v42 = *(*v41 + 120);
        lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData();
        v42(&v61, v60, v63, &type metadata for ShaderVectorData, v43, a3);
        if (v61)
        {

          v44 = HIBYTE(v64);

          v4[7].Description = a2;
          swift_endAccess();
          if ((v44 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          v4[7].Description = a2;
          swift_endAccess();
        }

        if (v18 >= *(a2 + 16))
        {
          goto LABEL_58;
        }

        a2 = v21[9];
        if (a2 >> 62)
        {
          v45 = __CocoaSet.count.getter();
          if (v45)
          {
LABEL_46:
            if (v45 < 1)
            {
              goto LABEL_60;
            }

            for (i = 0; i != v45; ++i)
            {
              if ((a2 & 0xC000000000000001) != 0)
              {
                v47 = MEMORY[0x193AC03C0](i, a2);
              }

              else
              {
                v47 = *(a2 + 8 * i + 32);
              }

              (*(*v47 + 96))();
            }
          }
        }

        else
        {
          v45 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v45)
          {
            goto LABEL_46;
          }
        }

        IndexSet.insert(_:)(v18);
LABEL_22:
        if (++v18 == v58)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = v4[5].Description;
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      v4[5].Description = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_68:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 160) & 1) == 0 && (a1)
  {
    *(v4 + 160) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 152);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 184) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 184) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 184, v28, v30);
        v32 = *(*(v4 + 184) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 80;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 184);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 184) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 184) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 184) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[10 * v19 + 13];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 80;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 152);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 152) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 160) & 1) == 0 && (a1)
  {
    *(v4 + 160) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 152);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 184) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 184) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 184, v28, v30);
        v32 = *(*(v4 + 184) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 80;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 184);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 184) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 184) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 184) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[10 * v19 + 13];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 80;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 152);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 152) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 192) & 1) == 0 && (a1)
  {
    *(v4 + 192) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 184);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 216) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 216) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 216, v28, v30);
        v32 = *(*(v4 + 216) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 96;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 216);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 216) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 216) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 216) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[12 * v19 + 15];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 96;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 184);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 184) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 192) & 1) == 0 && (a1)
  {
    *(v4 + 192) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 184);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 216) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 216) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 216, v28, v30);
        v32 = *(*(v4 + 216) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 96;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 216);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 216) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 216) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 216) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[12 * v19 + 15];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 96;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 184);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 184) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 192) & 1) == 0 && (a1)
  {
    *(v4 + 192) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 184);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 216) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 216) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 216, v28, v30);
        v32 = *(*(v4 + 216) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 96;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 216);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 216) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 216) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 216) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[12 * v19 + 15];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 96;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 184);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 184) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 120);
    if (v14 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return;
      }

      v31 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 152) + 16);
      if (!v10)
      {
LABEL_36:
        swift_beginAccess();
        v10 = v31;
        specialized Collection.subscript.getter(v31, v27);
        a2 = 0;
        v29 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, v10, v28);
        v30 = *(*(v4 + 152) + 16);
        if (v30 < v29)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v29, v30);
        outlined destroy of Slice<IndexSet>(v10, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v32 + 8))(v13, v33);
        return;
      }

      v19 = 0;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 152) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 152) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[8 * v19 + 11];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v26 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v26 = *(v23 + 8 * i + 32);
              }

              (*(*v26 + 96))();
            }
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v10)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 120);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 288) & 1) == 0 && (a1)
  {
    *(v4 + 288) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 280);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 312) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 312) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 312, v28, v30);
        v32 = *(*(v4 + 312) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 144;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 312);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 312) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 312) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 312) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[18 * v19 + 21];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 144;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 280);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 280) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 256) & 1) == 0 && (a1)
  {
    *(v4 + 256) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 248);
    if (v14 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 280) + 16))
      {
        return;
      }

      v31 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 280) + 16);
      if (!v10)
      {
LABEL_36:
        swift_beginAccess();
        v10 = v31;
        specialized Collection.subscript.getter(v31, v27);
        a2 = 0;
        v29 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 280, v10, v28);
        v30 = *(*(v4 + 280) + 16);
        if (v30 < v29)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v29, v30);
        outlined destroy of Slice<IndexSet>(v10, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v32 + 8))(v13, v33);
        return;
      }

      v19 = 0;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 280);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 280) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 280) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 280) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[16 * v19 + 19];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v26 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v26 = *(v23 + 8 * i + 32);
              }

              (*(*v26 + 96))();
            }
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v10)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 248);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 248) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 176) & 1) == 0 && (a1)
  {
    *(v4 + 176) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 168);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 200) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 200) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 200, v28, v30);
        v32 = *(*(v4 + 200) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 88;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 200);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 200) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 200) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 200) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[11 * v19 + 14];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 88;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 168);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 168) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 192) & 1) == 0 && (a1)
  {
    *(v4 + 192) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 184);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 216) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 216) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 216, v28, v30);
        v32 = *(*(v4 + 216) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 96;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 216);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 216) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 216) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 216) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[12 * v19 + 15];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 96;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 184);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 184) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 592) & 1) == 0 && (a1)
  {
    *(v4 + 592) = a1 & 1;
    v13 = v4 + 584;
    swift_beginAccess();
    v14 = *(v4 + 584);
    if (v14 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      v13 = v4 + 616;
      swift_beginAccess();
      if (!*(*(v4 + 616) + 16))
      {
        return;
      }

      v34 = v10;
      IndexSet.init()();
      v20 = *(*v13 + 16);
      if (!v20)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v36;
        specialized Collection.subscript.getter(v36, v30);
        a2 = 0;
        v32 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v13, v29, v31);
        v33 = *(*v13 + 16);
        if (v33 < v32)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v32, v33);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v35 + 8))(v12, v34);
        return;
      }

      v4 = 0;
      v10 = 296;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *v13 = v21;
        }

        if (v4 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *v13 = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v4 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[37 * v4 + 40];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 296;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v4);
LABEL_20:
        if (++v4 == v20)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *v13;
    if (!(*v13 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *v13 = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {
    v17 = v12;

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v19 = *(v15 + 8 * j + 32);
      }

      (*(*v19 + 96))();
    }

    v12 = v17;
    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 272) & 1) == 0 && (a1)
  {
    *(v4 + 272) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 264);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 296) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 296) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 296, v28, v30);
        v32 = *(*(v4 + 296) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 136;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 296);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 296) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 296) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 296) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[17 * v19 + 20];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 136;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 264);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 264) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 288) & 1) == 0 && (a1)
  {
    *(v4 + 288) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 280);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 312) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 312) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 312, v28, v30);
        v32 = *(*(v4 + 312) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 144;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 312);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 312) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 312) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 312) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[18 * v19 + 21];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 144;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 280);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 280) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 336) & 1) == 0 && (a1)
  {
    *(v4 + 336) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 328);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 360) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 360) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 360, v28, v30);
        v32 = *(*(v4 + 360) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 168;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 360);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 360) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 360) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 360) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[21 * v19 + 24];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 168;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 328);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 328) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 144) & 1) == 0 && (a1)
  {
    *(v4 + 144) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 136);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 168) + 16))
      {
        return;
      }

      v33 = v10;
      IndexSet.init()();
      v18 = *(*(v4 + 168) + 16);
      if (!v18)
      {
LABEL_36:
        swift_beginAccess();
        v28 = v35;
        specialized Collection.subscript.getter(v35, v29);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 168, v28, v30);
        v32 = *(*(v4 + 168) + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v28, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v34 + 8))(v12, v33);
        return;
      }

      v19 = 0;
      v10 = 72;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v20 = *(v4 + 168);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 168) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          *(v4 + 168) = v20;
        }

        if (v19 >= v20[2])
        {
          break;
        }

        v22 = specialized AnimatorState.Fork.update(time:environment:)(a2, a3);
        *(v4 + 168) = v20;
        swift_endAccess();
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v19 >= v20[2])
        {
          goto LABEL_40;
        }

        v23 = v20[9 * v19 + 12];
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
          if (v24)
          {
LABEL_28:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            v25 = v12;

            for (i = 0; i != v24; ++i)
            {
              if ((v23 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v23);
              }

              else
              {
                v27 = *(v23 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }

            v12 = v25;
            v10 = 72;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_20:
        if (++v19 == v18)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 136);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 136) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

double sub_18D27E720(double a1)
{
  result = *v1 * a1;
  *v1 = result;
  return result;
}

uint64_t _ViewOutputs.layoutComputer.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 12) = v2;
  v3 = *(v1 + 8);
  if ((v3 & 0x80) == 0)
  {
    *(v1 + 8) = v3 | 0x80;
  }

  return result;
}

void *outlined init with copy of _AnyAnimatableData(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[4];
  a2[4] = v3;
  (**(v3 - 8))(a2 + 1, a1 + 1);
  return a2;
}

double _s7SwiftUI14GraphicsFilterOSgWOi0_(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 1023213056;
  return result;
}

uint64_t _s7SwiftUI14GraphicsFilterOSgWOg(uint64_t a1)
{
  v1 = (((*(a1 + 120) >> 13) & 0x1E000 | (*(a1 + 120) >> 11) & 0x1FFFu) >> 12) & 0xFFFE001F | (32 * ((*(a1 + 120) >> 11) & 0xF80 | (*(a1 + 120) >> 9) & 0xFFF));
  v2 = v1 ^ 0x1FFF8;
  v3 = 0x20000 - v1;
  if (v2 >= 0x1FFE8)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance AnyLayout()
{
  return (*(**v0 + 128))();
}

{
  return (*(**v0 + 136))();
}

uint64_t _AnyLayoutBox.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  v38 = a5;
  v40 = a2;
  v41 = a4;
  v36 = a3;
  v39 = a1;
  v18 = *(*v11 + 184);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v33 - v20;
  v23 = *(v22 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v33 - v25;
  v27 = *a6;
  v33 = *(a6 + 1);
  v28 = *(a6 + 16);
  LODWORD(v25) = *(a6 + 17);
  v34 = v27;
  v35 = v25;
  outlined init with copy of Any(a7 + 8, v48);
  swift_dynamicCast();
  v29 = *(*v11 + 200);
  swift_beginAccess();
  (*(v19 + 16))(v21, v11 + v29, v18);
  v44 = v34;
  v45 = v33;
  v46 = v28;
  v30 = *(v23 + 72);
  v47 = v35;
  v43 = v36 & 1;
  v42 = v38 & 1;
  v31 = v30(v39, v40, a8, a9, a10, a11);
  (*(v19 + 8))(v21, v18);
  $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(a7, v26, v18, v23);
  (*(v37 + 8))(v26, AssociatedTypeWitness);
  return v31;
}

{
  v38 = a5;
  v40 = a2;
  v41 = a4;
  v36 = a3;
  v39 = a1;
  v18 = *(*v11 + 184);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v33 - v20;
  v23 = *(v22 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v33 - v25;
  v27 = *a6;
  v33 = *(a6 + 1);
  v28 = *(a6 + 16);
  LODWORD(v25) = *(a6 + 17);
  v34 = v27;
  v35 = v25;
  outlined init with copy of Any(a7 + 8, v48);
  swift_dynamicCast();
  v29 = *(*v11 + 200);
  swift_beginAccess();
  (*(v19 + 16))(v21, v11 + v29, v18);
  v44 = v34;
  v45 = v33;
  v46 = v28;
  v30 = *(v23 + 80);
  v47 = v35;
  v43 = v36 & 1;
  v42 = v38 & 1;
  v31 = v30(v39, v40, a8, a9, a10, a11);
  (*(v19 + 8))(v21, v18);
  $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(a7, v26, v18, v23);
  (*(v37 + 8))(v26, AssociatedTypeWitness);
  return v31;
}

uint64_t _AnyLayoutBox.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, int *a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v35 = a2;
  v36 = a4;
  v37 = a1;
  v38 = a3;
  v17 = *(*v10 + 184);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v31 - v19;
  v22 = *(v21 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v31 - v24;
  v26 = *a5;
  v31 = *(a5 + 1);
  v27 = *(a5 + 16);
  LODWORD(v24) = *(a5 + 17);
  v32 = v26;
  v33 = v24;
  outlined init with copy of Any(a6 + 8, v45);
  swift_dynamicCast();
  v28 = *(*v10 + 200);
  swift_beginAccess();
  (*(v18 + 16))(v20, v10 + v28, v17);
  v41 = v32;
  v42 = v31;
  v43 = v27;
  v29 = *(v22 + 64);
  v44 = v33;
  v40 = v35 & 1;
  v39 = v36 & 1;
  v29(v37, a7, a8, a9, a10);
  (*(v18 + 8))(v20, v17);
  $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(a6, v25, v17, v22);
  return (*(v34 + 8))(v25, AssociatedTypeWitness);
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v202 = *MEMORY[0x1E69E9840];
  v184 = type metadata accessor for OSSignpostID();
  v181 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v16 = (&v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v165 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v165 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v165 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v183 = &v165 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v174 = &v165 - v29;
  if (*(a4 + 48))
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
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_125;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  if (*(a4 + 40))
  {
    goto LABEL_124;
  }

  v6 = *(a4 + 24);
  v5 = *(a4 + 32);
  v7 = *(a4 + 16);
  if (v8 == v7 && v9 == *&v6 && v10 == v5)
  {
    goto LABEL_124;
  }

  v180 = v16;
  v179 = *&v22;
  v165 = v19;
  v171 = a1;
  AGGraphClearUpdate();
  v33 = *(a4 + 16);
  v199 = *a4;
  v200 = v33;
  *v201 = *(a4 + 32);
  *&v201[12] = *(a4 + 44);
  v4 = &type metadata for RoundedRectangle._Inset;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v199, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
  v34 = *AGGraphGetValue();

  v35 = v34;
  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v36 = Transaction.effectiveAnimation.getter(v34);
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_123;
    }

    v37 = a2;
  }

  v38 = *&v201[16];
  v39 = v8 - v7;
  v40 = v9 - *&v6;
  v41 = v10 - v5;
  v32 = *AGGraphGetValue();
  v170 = a4;
  v166 = a3;
  v168 = v35;
  v167 = v37;
  if (!v38)
  {
    *&v189.f64[0] = &type metadata for RoundedRectangle._Inset;
    type metadata accessor for RoundedRectangle._Inset.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);
    v71 = swift_dynamicCast();
    if (v71)
    {
      v72 = *&v194.f64[0];
    }

    else
    {
      v72 = 0;
    }

    if (v71)
    {
      v73 = *&v194.f64[1];
    }

    else
    {
      v73 = 0;
    }

    v169 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAYGG_Tt4B5Tm(v74, v35, v72, v73, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>, v39, v40, v41, v32);
    *&v75 = COERCE_DOUBLE(AGGraphGetCurrentAttribute());
    a4 = v75;
    LODWORD(v55) = *MEMORY[0x1E698D3F8];
    if (v75 == *MEMORY[0x1E698D3F8])
    {
      v76 = 0;
    }

    else
    {
      v76 = v75;
    }

    (*(*v37 + 96))(&v189);
    v77 = v189;
    v78 = v190;
    v79 = v191;
    v80 = v192;
    v188 = NAN;
    v187 = NAN;
    *&v186 = 1.0;
    v185 = NAN;
    v194 = v189;
    v195 = *&v190;
    v196 = v191;
    v197 = *&v192;
    LODWORD(v182) = v193;
    LOBYTE(v198) = v193;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v188, &v187, &v186, &v185);
    v5 = v188;
    *&v6 = v187;
    v7 = *&v186;
    v81 = v185;
    if (one-time initialization token for enabledCategories != -1)
    {
      v179 = v185;
      swift_once();
      v81 = v179;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v82 = static CustomEventTrace.recorder) != 0)
      {
        v83 = a4 == LODWORD(v55);
        v178 = v80;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v179) = LODWORD(v55);
        *&v55 = v78;
        v84 = *(v82 + 16);
        LODWORD(v194.f64[0]) = v76;
        BYTE4(v194.f64[0]) = v83;
        *&v194.f64[1] = &type metadata for RoundedRectangle._Inset;
        v195 = v5;
        v196 = v6;
        v197 = v7;
        v198 = v81;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v85 = v84;
        AGGraphAddTraceEvent();
        v86 = *&v55;
        LODWORD(v55) = LODWORD(v179);
        outlined consume of Animation.Function(*&v77.f64[0], *&v77.f64[1], v86, v79, v178, v182);
      }

      else
      {
        outlined consume of Animation.Function(*&v77.f64[0], *&v77.f64[1], v78, v79, v80, v182);
      }

      v87 = one-time initialization token for animationState;

      a4 = v170;
      if (v87 == -1)
      {
        goto LABEL_54;
      }
    }

    swift_once();
LABEL_54:
    v60 = *(&static Signpost.animationState + 1);
    *&v56 = static Signpost.animationState;
    LODWORD(v4) = word_1ED5283E8;
    v57 = HIBYTE(word_1ED5283E8);
    v88 = byte_1ED5283EA;
    LOBYTE(v62) = static os_signpost_type_t.begin.getter();
    v194 = __PAIR128__(v60, *&v56);
    LOBYTE(v195) = v4;
    BYTE1(v195) = v57;
    BYTE2(v195) = v88;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v98 = v169;

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_61;
    }

    v89 = one-time initialization token for _signpostLog;

    if (v89 != -1)
    {
      goto LABEL_198;
    }

    goto LABEL_56;
  }

  v165 = v25;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v199, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v194.f64[0]) = 0;
  v42.n128_f64[0] = v39;
  v43.n128_f64[0] = v40;
  v169 = v38;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v37, v35, a3, v42, v43, v41, v32);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  LODWORD(v4) = CurrentAttribute;
  v45 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v46 = 0;
  }

  else
  {
    v46 = CurrentAttribute;
  }

  (*(*v37 + 96))(&v189);
  v47 = *&v189.f64[1];
  v48 = *&v189.f64[0];
  v49 = v190;
  v188 = NAN;
  v187 = NAN;
  *&v186 = 1.0;
  v185 = NAN;
  v194 = v189;
  v195 = *&v190;
  v50 = v191;
  v196 = v191;
  v180 = v192;
  v197 = *&v192;
  LODWORD(v182) = v193;
  LOBYTE(v198) = v193;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v188, &v187, &v186, &v185);
  v5 = v188;
  *&v6 = v187;
  v7 = *&v186;
  v51 = v185;
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
      goto LABEL_29;
    }

    v52 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v178) = v45;
    if (v52 && (v53 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v54 = *(v53 + 16);
      LODWORD(v194.f64[0]) = v46;
      BYTE4(v194.f64[0]) = v4 == v45;
      *&v194.f64[1] = &type metadata for RoundedRectangle._Inset;
      v195 = v5;
      v196 = v6;
      v197 = v7;
      v198 = v51;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v4 = v54;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v48, v47, v49, v50, v180, v182);
    }

    else
    {
      outlined consume of Animation.Function(v48, v47, v49, v50, v180, v182);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v199, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_193;
    }

LABEL_29:
    v56 = *(&static Signpost.animationState + 1);
    *&v55 = static Signpost.animationState;
    v57 = word_1ED5283E8;
    v58 = HIBYTE(word_1ED5283E8);
    v59 = byte_1ED5283EA;
    v60 = static os_signpost_type_t.event.getter();
    v194 = __PAIR128__(*&v56, *&v55);
    LOBYTE(v195) = v57;
    BYTE1(v195) = v58;
    BYTE2(v195) = v59;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
LABEL_92:
      a4 = v170;
      a3 = v166;
      goto LABEL_122;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v199, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v61 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v62 = COERCE_DOUBLE(swift_allocObject());
    *(v62 + 16) = xmmword_18DDAF080;
    v63 = AGGraphGetCurrentAttribute();
    LODWORD(v4) = v178;
    if (v63 == v178)
    {
      __break(1u);
    }

    else
    {
      v64 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v66 = MEMORY[0x1E69E6870];
      *(v62 + 56) = MEMORY[0x1E69E6810];
      *(v62 + 64) = v66;
      *(v62 + 32) = Counter;
      v67 = AGGraphGetCurrentAttribute();
      if (v67 != v4)
      {
        v68 = MEMORY[0x1E69E76D0];
        *(v62 + 96) = MEMORY[0x1E69E7668];
        *(v62 + 104) = v68;
        *(v62 + 72) = v67;
        *(v62 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v62 + 144) = v69;
        *(v62 + 112) = 0x7465736E495FLL;
        *(v62 + 120) = 0xE600000000000000;
        if (v58)
        {
          LOBYTE(v185) = v60;
          v188 = COERCE_DOUBLE(&dword_18D018000);
          v187 = v61;
          v194.f64[0] = v55;
          v194.f64[1] = v56;
          LOBYTE(v195) = v57;
          *&v189.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v189.f64[1] = 39;
          LOBYTE(v190) = 2;
          v186 = v62;
          v70 = v165;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v185, &v188, &v187, &v194, v165, &v189, &v186);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          (*(v181 + 8))(v70, v184);
        }

        else
        {
          v99 = LOBYTE(v55);
          if (LOBYTE(v55) == 20)
          {
            v97 = 3;
          }

          else
          {
            v97 = 4;
          }

          a4 = bswap32(LOWORD(v55)) | (4 * HIWORD(LODWORD(v55)));
          v50 = v60;
          v100 = v181 + 16;
          v172 = *(v181 + 16);
          v101 = v172(*&v179, v165, v184);
          v102 = 0;
          LOBYTE(v189.f64[0]) = 1;
          v182 = v97;
          v177 = 16 * v97;
          v173 = v100;
          v178 = (v100 - 8);
          v176 = v62 + 32;
          v175 = v99;
          do
          {
            v180 = &v165;
            MEMORY[0x1EEE9AC00](v101);
            a1 = &v165 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
            v105 = (a1 + 8);
            v106 = v182;
            v107 = (a1 + 8);
            do
            {
              *(v107 - 1) = 0;
              *v107 = 0;
              v107 += 16;
              v106 = (v106 - 1);
            }

            while (v106);
            v4 = (v176 + 40 * v102);
            p_Description = v182;
            while (1)
            {
              v109 = *(v62 + 16);
              if (v102 == v109)
              {
                break;
              }

              if (v102 >= v109)
              {
                goto LABEL_182;
              }

              ++v102;
              outlined init with copy of AnyTrackedValue(v4, &v194);
              v97 = v196;
              v110 = *&v197;
              __swift_project_boxed_opaque_existential_1(&v194, v196);
              *(v105 - 1) = CVarArg.kdebugValue(_:)(a4 | v50, v97, v110);
              *v105 = v111 & 1;
              v105 += 16;
              v103 = __swift_destroy_boxed_opaque_existential_1(&v194);
              v4 = (v4 + 40);
              if (!--p_Description)
              {
                goto LABEL_75;
              }
            }

            LOBYTE(v189.f64[0]) = 0;
LABEL_75:
            v4 = v175;
            if (v175 == 20)
            {
              v112 = v179;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v112 = v179;
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

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v113 = *v178;
            v97 = v184;
            (*v178)(*&v112, v184);
            v114 = __swift_project_value_buffer(v97, static OSSignpostID.continuation);
            v101 = v172(*&v112, v114, v97);
          }

          while ((LOBYTE(v189.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          v115 = v184;
          v113(*&v112, v184);
          v113(v165, v115);
        }

        goto LABEL_92;
      }
    }

    __break(1u);
LABEL_198:
    swift_once();
LABEL_56:
    v90 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v55))
    {
      __break(1u);
LABEL_200:
      __break(1u);
    }

    v91 = AGGraphGetAttributeGraph();
    v92 = AGGraphGetCounter();

    v93 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v93;
    *(a4 + 32) = v92;
    v94 = AGGraphGetCurrentAttribute();
    if (v94 == LODWORD(v55))
    {
      goto LABEL_200;
    }

    v95 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v95;
    *(a4 + 72) = v94;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 144) = v96;
    *(a4 + 112) = 0x7465736E495FLL;
    *(a4 + 120) = 0xE600000000000000;
    v97 = v165;
    if (v57)
    {
      LOBYTE(v185) = v62;
      v188 = COERCE_DOUBLE(&dword_18D018000);
      v187 = v90;
      v194.f64[0] = v56;
      *&v194.f64[1] = v60;
      LOBYTE(v195) = v4;
      *&v189.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v189.f64[1] = 39;
      LOBYTE(v190) = 2;
      v186 = a4;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v185, &v188, &v187, &v194, v165, &v189, &v186);
      v98 = v169;

      (*(v181 + 8))(v97, v184);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      a4 = v170;
LABEL_61:
      *(a4 + 48) = v98;
    }

    else
    {
      v116 = LOBYTE(v56);
      v117 = v62;
      v118 = LOBYTE(v56) == 20 ? 3 : 4;
      a1 = bswap32(LOWORD(v56)) | (4 * HIWORD(LODWORD(v56)));
      v50 = v117;
      v119 = v181 + 16;
      v172 = *(v181 + 16);
      v120 = v172(v180, v165, v184);
      v102 = 0;
      LOBYTE(v189.f64[0]) = 1;
      v178 = (16 * v118);
      v173 = v119;
      *&v179 = v119 - 8;
      v177 = a4 + 32;
      v175 = v116;
      v176 = v118;
      do
      {
        v182 = &v165;
        MEMORY[0x1EEE9AC00](v120);
        v4 = (&v165 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
        p_Description = &v4->Description;
        v122 = v118;
        v123 = &v4->Description;
        do
        {
          *(v123 - 1) = 0;
          *v123 = 0;
          v123 += 2;
          --v122;
        }

        while (v122);
        v124 = v177 + 40 * v102;
        while (1)
        {
          v125 = *(a4 + 16);
          if (v102 == v125)
          {
            break;
          }

          if (v102 >= v125)
          {
            goto LABEL_183;
          }

          ++v102;
          outlined init with copy of AnyTrackedValue(v124, &v194);
          v97 = v196;
          v126 = *&v197;
          __swift_project_boxed_opaque_existential_1(&v194, v196);
          *(p_Description - 8) = CVarArg.kdebugValue(_:)(a1 | v50, v97, v126);
          *p_Description = v127 & 1;
          p_Description += 16;
          v103 = __swift_destroy_boxed_opaque_existential_1(&v194);
          v124 += 40;
          if (!--v118)
          {
            goto LABEL_105;
          }
        }

        LOBYTE(v189.f64[0]) = 0;
LABEL_105:
        v128 = v175;
        if (v175 == 20)
        {
          v129 = v180;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v129 = v180;
        }

        v118 = v176;
        if (LOBYTE(v4->Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[1].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[2].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (v128 != 20 && LOBYTE(v4[3].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v97 = **&v179;
        v130 = v184;
        (**&v179)(v129, v184);
        v131 = __swift_project_value_buffer(v130, static OSSignpostID.continuation);
        v120 = v172(v129, v131, v130);
      }

      while ((LOBYTE(v189.f64[0]) & 1) != 0);
      v132 = v169;

      v133 = v184;
      (v97)(v129, v184);
      (v97)(v165, v133);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      a4 = v170;
      *(v170 + 48) = v132;
    }

    a3 = v166;
LABEL_122:
    specialized AnimatorState.addListeners(transaction:)(v168);

LABEL_123:

    a1 = v171;
LABEL_124:
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = v10;
    *(a4 + 40) = 0;
LABEL_125:
    p_Description = *(a4 + 48);
    if (!p_Description)
    {
      return;
    }

    v134 = *(a1 + 24);
    v194 = *a1;
    v195 = v134;

    LOBYTE(v199) = 0;
    v135 = specialized AnimatorState.update(_:at:environment:)(&v194, a3, v32);
    v103 = AGGraphGetCurrentAttribute();
    v50 = *MEMORY[0x1E698D3F8];
    if (v103 == v50)
    {
      LODWORD(v102) = 0;
    }

    else
    {
      LODWORD(v102) = v103;
    }

    v97 = &type metadata instantiation cache for TupleTypeDescription;
    if (v135)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_184;
      }

      goto LABEL_131;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_186;
    }

LABEL_144:
    v146 = *(v97 + 616);
    if (*(v146 + 16) >= 0x43uLL)
    {
      if (*(v146 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v199) = v102;
        BYTE4(v199) = v103 == v50;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_179;
    }

    __break(1u);
LABEL_188:
    swift_once();
LABEL_136:
    v49 = *(&static Signpost.animationState + 1);
    v102 = static Signpost.animationState;
    v46 = word_1ED5283E8;
    v48 = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v45 = static os_signpost_type_t.end.getter();
    v199 = __PAIR128__(v49, v102);
    LOBYTE(v200) = v46;
    BYTE1(v200) = v48;
    BYTE2(v200) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_178;
    }

    v171 = a1;
    v139 = one-time initialization token for _signpostLog;

    if (v139 != -1)
    {
      swift_once();
    }

    v170 = a4;
    *&v47 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v50)
    {
      break;
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    *&v177 = v51;
    swift_once();
    v51 = *&v177;
  }

  v140 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v141 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v141;
  *(a1 + 32) = v4;
  v142 = AGGraphGetCurrentAttribute();
  if (v142 == v50)
  {
    goto LABEL_190;
  }

  v143 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v143;
  *(a1 + 72) = v142;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 144) = v144;
  *(a1 + 112) = 0x7465736E495FLL;
  *(a1 + 120) = 0xE600000000000000;
  if (v48)
  {
    LOBYTE(v185) = v45;
    v188 = COERCE_DOUBLE(&dword_18D018000);
    v187 = *&v47;
    *&v199 = v102;
    *(&v199 + 1) = v49;
    LOBYTE(v200) = v46;
    *&v189.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v189.f64[1] = 37;
    LOBYTE(v190) = 2;
    v186 = a1;
    v145 = v174;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v185, &v188, &v187, &v199, v174, &v189, &v186);

    (*(v181 + 8))(v145, v184);
    goto LABEL_177;
  }

  v147 = v102;
  if (v102 == 20)
  {
    p_Description = 3;
  }

  else
  {
    p_Description = 4;
  }

  v50 = bswap32(v102) | (4 * WORD1(v102));
  LODWORD(v102) = v45;
  v97 = v181 + 16;
  v175 = *(v181 + 16);
  v148 = (v175)(v183, v174, v184);
  v149 = 0;
  LOBYTE(v189.f64[0]) = 1;
  *&v179 = 16 * p_Description;
  v181 = v97;
  v180 = (v97 - 8);
  v178 = (a1 + 32);
  v177 = v147;
  v176 = p_Description;
  do
  {
    v182 = &v165;
    MEMORY[0x1EEE9AC00](v148);
    a4 = &v165 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
    v151 = (a4 + 8);
    v152 = p_Description;
    v153 = (a4 + 8);
    do
    {
      *(v153 - 1) = 0;
      *v153 = 0;
      v153 += 16;
      --v152;
    }

    while (v152);
    v4 = &v178[5 * v149];
    while (1)
    {
      v154 = *(a1 + 16);
      if (v149 == v154)
      {
        break;
      }

      if (v149 >= v154)
      {
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        v163 = v103;
        swift_once();
        v103 = v163;
LABEL_131:
        v136 = *(v97 + 616);
        if (*(v136 + 16) >= 0x43uLL)
        {
          if (*(v136 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v199) = v102;
            BYTE4(v199) = v103 == v50;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v137 = one-time initialization token for animationState;
          v173 = p_Description;

          if (v137 != -1)
          {
            goto LABEL_188;
          }

          goto LABEL_136;
        }

        __break(1u);
LABEL_186:
        v164 = v103;
        swift_once();
        v103 = v164;
        goto LABEL_144;
      }

      ++v149;
      outlined init with copy of AnyTrackedValue(v4, &v199);
      v155 = *(&v200 + 1);
      v97 = *v201;
      __swift_project_boxed_opaque_existential_1(&v199, *(&v200 + 1));
      *(v151 - 1) = CVarArg.kdebugValue(_:)(v50 | v102, v155, v97);
      *v151 = v156 & 1;
      v151 += 16;
      v103 = __swift_destroy_boxed_opaque_existential_1(&v199);
      v4 = (v4 + 40);
      if (!--p_Description)
      {
        goto LABEL_162;
      }
    }

    LOBYTE(v189.f64[0]) = 0;
LABEL_162:
    v157 = v177;
    if (v177 == 20)
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

    if (v157 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v97 = *v180;
    v158 = v183;
    v159 = v184;
    (*v180)(v183, v184);
    v160 = __swift_project_value_buffer(v159, static OSSignpostID.continuation);
    v148 = (v175)(v158, v160, v159);
    p_Description = v176;
  }

  while ((LOBYTE(v189.f64[0]) & 1) != 0);

  v161 = v184;
  (v97)(v183, v184);
  (v97)(v174, v161);
LABEL_177:

  a1 = v171;
  a4 = v170;
LABEL_178:
  specialized AnimatorState.removeListeners()();

  *(a4 + 48) = 0;
LABEL_179:
  v162 = v195;
  *a1 = v194;
  *(a1 + 24) = v162;
  *(a1 + 32) = 1;
}

{
  v202 = *MEMORY[0x1E69E9840];
  v184 = type metadata accessor for OSSignpostID();
  v181 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v15 = (&v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v163 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v163 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v163 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v183 = &v163 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v174 = &v163 - v28;
  if (*(a4 + 48))
  {
    Value = AGGraphGetValue();
    if (v30)
    {
      v31 = *Value;
    }

    else
    {
      v31 = -INFINITY;
    }
  }

  else
  {
    v31 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 24) = 1;
  }

  else if (*(a1 + 24) != 1)
  {
    goto LABEL_129;
  }

  v32 = vmulq_f64(*a1, vdupq_n_s64(0x4060000000000000uLL));
  v8 = *(a1 + 16) * 128.0;
  if (*(a4 + 40))
  {
    goto LABEL_128;
  }

  v6 = *(a4 + 24);
  v5 = *(a4 + 32);
  v7 = *(a4 + 16);
  v9 = v32.f64[1];
  v33 = v32.f64[0] == v7 && v32.f64[1] == *&v6;
  if (v33 && v8 == v5)
  {
    goto LABEL_128;
  }

  v180 = v15;
  v179 = v21;
  v164 = v18;
  v169 = v32;
  v171 = a1;
  AGGraphClearUpdate();
  v35 = *(a4 + 16);
  v199 = *a4;
  v200 = v35;
  *v201 = *(a4 + 32);
  *&v201[12] = *(a4 + 44);
  v4 = &type metadata for _RotationEffect;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v199, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
  v36 = *AGGraphGetValue();

  v37 = v36;
  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v38 = Transaction.effectiveAnimation.getter(v36);
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_127;
    }

    v39 = a2;
  }

  v40 = *&v201[16];
  v41 = v169.f64[0] - v7;
  v42 = v9 - *&v6;
  v43 = v8 - v5;
  v31 = *AGGraphGetValue();
  v170 = a4;
  v165 = a3;
  v167 = v37;
  v166 = v39;
  if (!v40)
  {
    *&v189.f64[0] = &type metadata for _RotationEffect;
    type metadata accessor for _RotationEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
    v71 = swift_dynamicCast();
    if (v71)
    {
      v72 = v194;
    }

    else
    {
      v72 = 0;
    }

    if (v71)
    {
      v73 = *(&v194 + 1);
    }

    else
    {
      v73 = 0;
    }

    v168 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAYGG_Tt4B5Tm(v74, v37, v72, v73, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>, v41, v42, v43, v31);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    a4 = CurrentAttribute;
    LODWORD(v55) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v76 = 0;
    }

    else
    {
      v76 = CurrentAttribute;
    }

    (*(*v39 + 96))(&v189);
    v77 = v189;
    v78 = *&v190;
    v79 = v191;
    v80 = v192;
    v188 = NAN;
    v187 = NAN;
    *&v186 = 1.0;
    v185 = NAN;
    v194 = v189;
    v195 = v190;
    v196 = v191;
    v197 = *&v192;
    LODWORD(v182) = v193;
    LOBYTE(v198) = v193;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v188, &v187, &v186, &v185);
    v5 = v188;
    *&v6 = v187;
    v7 = *&v186;
    v9 = v185;
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
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v81 = static CustomEventTrace.recorder) != 0)
      {
        v82 = a4 == LODWORD(v55);
        v178 = v80;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v179) = LODWORD(v55);
        *&v55 = v78;
        v83 = *(v81 + 16);
        LODWORD(v194) = v76;
        BYTE4(v194) = v82;
        *(&v194 + 1) = &type metadata for _RotationEffect;
        v195 = v5;
        v196 = v6;
        v197 = v7;
        v198 = v9;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v84 = v83;
        AGGraphAddTraceEvent();
        v85 = *&v55;
        LODWORD(v55) = v179;
        outlined consume of Animation.Function(*&v77.f64[0], *&v77.f64[1], v85, v79, v178, v182);
      }

      else
      {
        outlined consume of Animation.Function(*&v77.f64[0], *&v77.f64[1], v78, v79, v80, v182);
      }

      v86 = one-time initialization token for animationState;

      a4 = v170;
      if (v86 == -1)
      {
        goto LABEL_58;
      }
    }

    swift_once();
LABEL_58:
    v60 = *(&static Signpost.animationState + 1);
    *&v56 = static Signpost.animationState;
    LODWORD(v4) = word_1ED5283E8;
    v57 = HIBYTE(word_1ED5283E8);
    v87 = byte_1ED5283EA;
    LOBYTE(v62) = static os_signpost_type_t.begin.getter();
    v194 = __PAIR128__(v60, *&v56);
    LOBYTE(v195) = v4;
    BYTE1(v195) = v57;
    BYTE2(v195) = v87;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v97 = v168;

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_65;
    }

    v88 = one-time initialization token for _signpostLog;

    if (v88 != -1)
    {
      goto LABEL_202;
    }

    goto LABEL_60;
  }

  v164 = v24;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v199, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v194) = 0;
  v44.n128_f64[0] = v41;
  v45.n128_f64[0] = v42;
  v168 = v40;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v39, v37, a3, v44, v45, v43, v31);
  v46 = AGGraphGetCurrentAttribute();
  LODWORD(v4) = v46;
  v47 = *MEMORY[0x1E698D3F8];
  if (v46 == *MEMORY[0x1E698D3F8])
  {
    v48 = 0;
  }

  else
  {
    v48 = v46;
  }

  (*(*v39 + 96))(&v189);
  v49 = *&v189.f64[1];
  v50 = *&v189.f64[0];
  v51 = *&v190;
  v188 = NAN;
  v187 = NAN;
  *&v186 = 1.0;
  v185 = NAN;
  v194 = v189;
  v195 = v190;
  v196 = v191;
  v52 = v191;
  v180 = v192;
  v197 = *&v192;
  LODWORD(v182) = v193;
  LOBYTE(v198) = v193;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v194, &v188, &v187, &v186, &v185);
  v5 = v188;
  *&v6 = v187;
  v7 = *&v186;
  v9 = v185;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_195;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_197:
      swift_once();
      goto LABEL_33;
    }

    v33 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v178) = v47;
    if (v33 && (v53 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v54 = *(v53 + 16);
      LODWORD(v194) = v48;
      BYTE4(v194) = v4 == v47;
      *(&v194 + 1) = &type metadata for _RotationEffect;
      v195 = v5;
      v196 = v6;
      v197 = v7;
      v198 = v9;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v4 = v54;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v50, v49, v51, v52, v180, v182);
    }

    else
    {
      outlined consume of Animation.Function(v50, v49, v51, v52, v180, v182);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v199, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_197;
    }

LABEL_33:
    v56 = *(&static Signpost.animationState + 1);
    *&v55 = static Signpost.animationState;
    v57 = word_1ED5283E8;
    v58 = HIBYTE(word_1ED5283E8);
    v59 = byte_1ED5283EA;
    v60 = static os_signpost_type_t.event.getter();
    v194 = __PAIR128__(*&v56, *&v55);
    LOBYTE(v195) = v57;
    BYTE1(v195) = v58;
    BYTE2(v195) = v59;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
LABEL_96:
      a4 = v170;
      a3 = v165;
      goto LABEL_126;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v199, &v194, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v61 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v62 = COERCE_DOUBLE(swift_allocObject());
    *(v62 + 16) = xmmword_18DDAF080;
    v63 = AGGraphGetCurrentAttribute();
    LODWORD(v4) = v178;
    if (v63 == v178)
    {
      __break(1u);
    }

    else
    {
      v64 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v66 = MEMORY[0x1E69E6870];
      *(v62 + 56) = MEMORY[0x1E69E6810];
      *(v62 + 64) = v66;
      *(v62 + 32) = Counter;
      v67 = AGGraphGetCurrentAttribute();
      if (v67 != v4)
      {
        v68 = MEMORY[0x1E69E76D0];
        *(v62 + 96) = MEMORY[0x1E69E7668];
        *(v62 + 104) = v68;
        *(v62 + 72) = v67;
        *(v62 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v62 + 144) = v69;
        *(v62 + 112) = 0x6F697461746F525FLL;
        *(v62 + 120) = 0xEF7463656666456ELL;
        if (v58)
        {
          LOBYTE(v185) = v60;
          v188 = COERCE_DOUBLE(&dword_18D018000);
          v187 = v61;
          *&v194 = v55;
          *(&v194 + 1) = v56;
          LOBYTE(v195) = v57;
          *&v189.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v189.f64[1] = 39;
          LOBYTE(v190) = 2;
          v186 = v62;
          v70 = v164;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v185, &v188, &v187, &v194, v164, &v189, &v186);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
          (*(v181 + 8))(v70, v184);
        }

        else
        {
          if (LOBYTE(v55) == 20)
          {
            v98 = 3;
          }

          else
          {
            v98 = 4;
          }

          v99 = bswap32(LOWORD(v55)) | (4 * HIWORD(LODWORD(v55)));
          a4 = v60;
          v100 = v181 + 16;
          v172 = *(v181 + 16);
          v101 = v172(v179, v164, v184);
          v102 = 0;
          LOBYTE(v189.f64[0]) = 1;
          v182 = v98;
          v177 = 16 * v98;
          v173 = v100;
          v178 = (v100 - 8);
          v176 = v62 + 32;
          v175 = LOBYTE(v55);
          do
          {
            v180 = &v163;
            MEMORY[0x1EEE9AC00](v101);
            a1 = &v163 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
            v52 = a1 + 8;
            v105 = v182;
            v106 = (a1 + 8);
            do
            {
              *(v106 - 1) = 0;
              *v106 = 0;
              v106 += 16;
              v105 = (v105 - 1);
            }

            while (v105);
            v4 = (v176 + 40 * v102);
            p_Description = v182;
            while (1)
            {
              v108 = *(v62 + 16);
              if (v102 == v108)
              {
                break;
              }

              if (v102 >= v108)
              {
                goto LABEL_186;
              }

              ++v102;
              outlined init with copy of AnyTrackedValue(v4, &v194);
              v98 = v196;
              v109 = *&v197;
              __swift_project_boxed_opaque_existential_1(&v194, v196);
              *(v52 - 8) = CVarArg.kdebugValue(_:)(v99 | a4, v98, v109);
              *v52 = v110 & 1;
              v52 += 16;
              v103 = __swift_destroy_boxed_opaque_existential_1(&v194);
              v4 = (v4 + 40);
              if (!--p_Description)
              {
                goto LABEL_79;
              }
            }

            LOBYTE(v189.f64[0]) = 0;
LABEL_79:
            v4 = v175;
            if (v175 == 20)
            {
              v111 = v179;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v111 = v179;
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

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v112 = *v178;
            v98 = v184;
            (*v178)(v111, v184);
            v113 = __swift_project_value_buffer(v98, static OSSignpostID.continuation);
            v101 = v172(v111, v113, v98);
          }

          while ((LOBYTE(v189.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
          v114 = v184;
          v112(v111, v184);
          v112(v164, v114);
        }

        goto LABEL_96;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_60:
    v89 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v55))
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v90 = AGGraphGetAttributeGraph();
    v91 = AGGraphGetCounter();

    v92 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v92;
    *(a4 + 32) = v91;
    v93 = AGGraphGetCurrentAttribute();
    if (v93 == LODWORD(v55))
    {
      goto LABEL_204;
    }

    v94 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v94;
    *(a4 + 72) = v93;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 144) = v95;
    *(a4 + 112) = 0x6F697461746F525FLL;
    *(a4 + 120) = 0xEF7463656666456ELL;
    if (v57)
    {
      LOBYTE(v185) = v62;
      v188 = COERCE_DOUBLE(&dword_18D018000);
      v187 = v89;
      *&v194 = v56;
      *(&v194 + 1) = v60;
      LOBYTE(v195) = v4;
      *&v189.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v189.f64[1] = 39;
      LOBYTE(v190) = 2;
      v186 = a4;
      v96 = v164;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v185, &v188, &v187, &v194, v164, &v189, &v186);
      v97 = v168;

      (*(v181 + 8))(v96, v184);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v170;
LABEL_65:
      *(a4 + 48) = v97;
    }

    else
    {
      v115 = LOBYTE(v56);
      v116 = v62;
      v117 = LOBYTE(v56) == 20 ? 3 : 4;
      a1 = bswap32(LOWORD(v56)) | (4 * HIWORD(LODWORD(v56)));
      v52 = v116;
      v98 = v181 + 16;
      v172 = *(v181 + 16);
      v118 = v172(v180, v164, v184);
      v102 = 0;
      LOBYTE(v189.f64[0]) = 1;
      v178 = (16 * v117);
      v173 = v98;
      v179 = (v98 - 8);
      v177 = a4 + 32;
      v175 = v115;
      v176 = v117;
      do
      {
        v182 = &v163;
        MEMORY[0x1EEE9AC00](v118);
        v4 = (&v163 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
        p_Description = &v4->Description;
        v120 = v117;
        v121 = &v4->Description;
        do
        {
          *(v121 - 1) = 0;
          *v121 = 0;
          v121 += 2;
          --v120;
        }

        while (v120);
        v122 = v177 + 40 * v102;
        while (1)
        {
          v123 = *(a4 + 16);
          if (v102 == v123)
          {
            break;
          }

          if (v102 >= v123)
          {
            goto LABEL_187;
          }

          ++v102;
          outlined init with copy of AnyTrackedValue(v122, &v194);
          v98 = v196;
          v124 = *&v197;
          __swift_project_boxed_opaque_existential_1(&v194, v196);
          *(p_Description - 8) = CVarArg.kdebugValue(_:)(a1 | v52, v98, v124);
          *p_Description = v125 & 1;
          p_Description += 16;
          v103 = __swift_destroy_boxed_opaque_existential_1(&v194);
          v122 += 40;
          if (!--v117)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v189.f64[0]) = 0;
LABEL_109:
        v126 = v175;
        if (v175 == 20)
        {
          v127 = v180;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v127 = v180;
        }

        v117 = v176;
        if (LOBYTE(v4->Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[1].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[2].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (v126 != 20 && LOBYTE(v4[3].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v98 = *v179;
        v128 = v184;
        (*v179)(v127, v184);
        v129 = __swift_project_value_buffer(v128, static OSSignpostID.continuation);
        v118 = v172(v127, v129, v128);
      }

      while ((LOBYTE(v189.f64[0]) & 1) != 0);
      v130 = v168;

      v131 = v184;
      (v98)(v127, v184);
      (v98)(v164, v131);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v199, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v170;
      *(v170 + 48) = v130;
    }

    a3 = v165;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v167);

LABEL_127:

    a1 = v171;
    v32 = v169;
LABEL_128:
    *(a4 + 16) = v32;
    *(a4 + 32) = v8;
    *(a4 + 40) = 0;
LABEL_129:
    p_Description = *(a4 + 48);
    if (!p_Description)
    {
      return;
    }

    v132 = *(a1 + 16) * 128.0;
    v194 = vmulq_f64(*a1, vdupq_n_s64(0x4060000000000000uLL));
    v195 = v132;

    LOBYTE(v199) = 0;
    v133 = specialized AnimatorState.update(_:at:environment:)(&v194, a3, v31);
    v103 = AGGraphGetCurrentAttribute();
    v52 = *MEMORY[0x1E698D3F8];
    if (v103 == v52)
    {
      LODWORD(v102) = 0;
    }

    else
    {
      LODWORD(v102) = v103;
    }

    v98 = &type metadata instantiation cache for TupleTypeDescription;
    if (v133)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v144 = *(v98 + 616);
    if (*(v144 + 16) >= 0x43uLL)
    {
      if (*(v144 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v199) = v102;
        BYTE4(v199) = v103 == v52;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v51 = *(&static Signpost.animationState + 1);
    v102 = static Signpost.animationState;
    v48 = word_1ED5283E8;
    v50 = HIBYTE(word_1ED5283E8);
    v136 = byte_1ED5283EA;
    v47 = static os_signpost_type_t.end.getter();
    v199 = __PAIR128__(v51, v102);
    LOBYTE(v200) = v48;
    BYTE1(v200) = v50;
    BYTE2(v200) = v136;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    v171 = a1;
    v137 = one-time initialization token for _signpostLog;

    if (v137 != -1)
    {
      swift_once();
    }

    v170 = a4;
    *&v49 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v52)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
  }

  v138 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v139 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v139;
  *(a1 + 32) = v4;
  v140 = AGGraphGetCurrentAttribute();
  if (v140 == v52)
  {
    goto LABEL_194;
  }

  v141 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v141;
  *(a1 + 72) = v140;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 144) = v142;
  *(a1 + 112) = 0x6F697461746F525FLL;
  *(a1 + 120) = 0xEF7463656666456ELL;
  if (v50)
  {
    LOBYTE(v185) = v47;
    v188 = COERCE_DOUBLE(&dword_18D018000);
    v187 = *&v49;
    *&v199 = v102;
    *(&v199 + 1) = v51;
    LOBYTE(v200) = v48;
    *&v189.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v189.f64[1] = 37;
    LOBYTE(v190) = 2;
    v186 = a1;
    v143 = v174;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v185, &v188, &v187, &v199, v174, &v189, &v186);

    (*(v181 + 8))(v143, v184);
    goto LABEL_181;
  }

  v145 = v102;
  if (v102 == 20)
  {
    p_Description = 3;
  }

  else
  {
    p_Description = 4;
  }

  v52 = bswap32(v102) | (4 * WORD1(v102));
  LODWORD(v102) = v47;
  v98 = v181 + 16;
  v175 = *(v181 + 16);
  v146 = (v175)(v183, v174, v184);
  v147 = 0;
  LOBYTE(v189.f64[0]) = 1;
  v179 = (16 * p_Description);
  v181 = v98;
  v180 = (v98 - 8);
  v178 = (a1 + 32);
  v177 = v145;
  v176 = p_Description;
  do
  {
    v182 = &v163;
    MEMORY[0x1EEE9AC00](v146);
    a4 = &v163 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
    v149 = (a4 + 8);
    v150 = p_Description;
    v151 = (a4 + 8);
    do
    {
      *(v151 - 1) = 0;
      *v151 = 0;
      v151 += 16;
      --v150;
    }

    while (v150);
    v4 = &v178[5 * v147];
    while (1)
    {
      v152 = *(a1 + 16);
      if (v147 == v152)
      {
        break;
      }

      if (v147 >= v152)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v161 = v103;
        swift_once();
        v103 = v161;
LABEL_135:
        v134 = *(v98 + 616);
        if (*(v134 + 16) >= 0x43uLL)
        {
          if (*(v134 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v199) = v102;
            BYTE4(v199) = v103 == v52;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v135 = one-time initialization token for animationState;
          v173 = p_Description;

          if (v135 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v162 = v103;
        swift_once();
        v103 = v162;
        goto LABEL_148;
      }

      ++v147;
      outlined init with copy of AnyTrackedValue(v4, &v199);
      v153 = *(&v200 + 1);
      v98 = *v201;
      __swift_project_boxed_opaque_existential_1(&v199, *(&v200 + 1));
      *(v149 - 1) = CVarArg.kdebugValue(_:)(v52 | v102, v153, v98);
      *v149 = v154 & 1;
      v149 += 16;
      v103 = __swift_destroy_boxed_opaque_existential_1(&v199);
      v4 = (v4 + 40);
      if (!--p_Description)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v189.f64[0]) = 0;
LABEL_166:
    v155 = v177;
    if (v177 == 20)
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

    if (v155 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v98 = *v180;
    v156 = v183;
    v157 = v184;
    (*v180)(v183, v184);
    v158 = __swift_project_value_buffer(v157, static OSSignpostID.continuation);
    v146 = (v175)(v156, v158, v157);
    p_Description = v176;
  }

  while ((LOBYTE(v189.f64[0]) & 1) != 0);

  v159 = v184;
  (v98)(v183, v184);
  (v98)(v174, v159);
LABEL_181:

  a1 = v171;
  a4 = v170;
LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(a4 + 48) = 0;
LABEL_183:
  v160 = v195 * 0.0078125;
  *a1 = vmulq_f64(v194, vdupq_n_s64(0x3F80000000000000uLL));
  *(a1 + 16) = v160;
  *(a1 + 24) = 1;
}

{
  v210 = *MEMORY[0x1E69E9840];
  v192 = type metadata accessor for OSSignpostID();
  v188 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v16 = (&v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v173 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v173 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v173 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v191 = &v173 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v182 = &v173 - v29;
  if (*(a4 + 48))
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
    *(a1 + 40) = 1;
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_127;
  }

  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  if (*(a4 + 40))
  {
    goto LABEL_126;
  }

  v6 = *(a4 + 24);
  v5 = *(a4 + 32);
  v7 = *(a4 + 16);
  if (v8 == v7 && v9 == *&v6 && v10 == v5)
  {
    goto LABEL_126;
  }

  v189 = v16;
  v187 = v22;
  v173 = v19;
  v179 = a1;
  AGGraphClearUpdate();
  v33 = *(a4 + 16);
  v207 = *a4;
  v208 = v33;
  *v209 = *(a4 + 32);
  *&v209[12] = *(a4 + 44);
  v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v207, &v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
  v34 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v207, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v35 = Transaction.effectiveAnimation.getter(v34);
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_125;
    }

    v36 = a2;
  }

  v37 = *&v209[16];
  v38 = v8 - v7;
  v39 = v9 - *&v6;
  v40 = v10 - v5;
  v32 = *AGGraphGetValue();
  v178 = a4;
  v174 = a3;
  v176 = v34;
  v175 = v36;
  if (!v37)
  {
    *&v197.f64[0] = &type metadata for StrokeStyle;
    type metadata accessor for StrokeStyle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    v70 = swift_dynamicCast();
    if (v70)
    {
      v71 = v202;
    }

    else
    {
      v71 = 0;
    }

    if (v70)
    {
      v72 = *(&v202 + 1);
    }

    else
    {
      v72 = 0;
    }

    v177 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAYGG_Tt4B5Tm(v73, v34, v71, v72, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, v38, v39, v40, v32);
    *&v74 = COERCE_DOUBLE(AGGraphGetCurrentAttribute());
    a4 = v74;
    LODWORD(v54) = *MEMORY[0x1E698D3F8];
    if (v74 == *MEMORY[0x1E698D3F8])
    {
      v75 = 0;
    }

    else
    {
      v75 = v74;
    }

    (*(*v36 + 96))(&v197);
    v76 = v197;
    v77 = v198;
    v78 = v199;
    v79 = v200;
    v196 = NAN;
    v195 = NAN;
    *&v194 = 1.0;
    v193 = NAN;
    v202 = v197;
    v203 = *&v198;
    v204 = v199;
    v205 = *&v200;
    LODWORD(v190) = v201;
    LOBYTE(v206) = v201;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v202, &v196, &v195, &v194, &v193);
    v5 = v196;
    *&v6 = v195;
    v7 = *&v194;
    *&v80 = v193;
    if (one-time initialization token for enabledCategories != -1)
    {
      v187 = *&v193;
      swift_once();
      v80 = v187;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_197;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v81 = v75;
      v82 = v77;
      v83 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v84 = a4 == LODWORD(v54);
        v187 = v79;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v85 = v78;
        v86 = *(v83 + 16);
        LODWORD(v202) = v81;
        BYTE4(v202) = v84;
        *(&v202 + 1) = &type metadata for StrokeStyle;
        v203 = v5;
        v204 = v6;
        v205 = v7;
        v206 = *&v80;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v87 = v86;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v76.f64[0], *&v76.f64[1], v82, v85, v187, v190);

        goto LABEL_86;
      }

      v89 = *&v76.f64[1];
      v88 = *&v76.f64[0];
      v90 = v82;
    }

    else
    {
      v89 = *&v76.f64[1];
      v88 = *&v76.f64[0];
      v90 = v77;
    }

    outlined consume of Animation.Function(v88, v89, v90, v78, v79, v190);
LABEL_86:
    v108 = one-time initialization token for animationState;

    a4 = v178;
    if (v108 == -1)
    {
LABEL_87:
      v59 = *(&static Signpost.animationState + 1);
      *&v55 = static Signpost.animationState;
      LODWORD(v4) = word_1ED5283E8;
      v56 = HIBYTE(word_1ED5283E8);
      v109 = byte_1ED5283EA;
      LOBYTE(v61) = static os_signpost_type_t.begin.getter();
      v202 = __PAIR128__(v59, *&v55);
      LOBYTE(v203) = v4;
      BYTE1(v203) = v56;
      BYTE2(v203) = v109;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v118 = v177;

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v207, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
        goto LABEL_94;
      }

      v110 = one-time initialization token for _signpostLog;

      if (v110 != -1)
      {
        goto LABEL_200;
      }

      goto LABEL_89;
    }

LABEL_197:
    swift_once();
    goto LABEL_87;
  }

  v173 = v25;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v207, &v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v202) = 0;
  v41.n128_f64[0] = v38;
  v42.n128_f64[0] = v39;
  v177 = v37;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v36, v34, a3, v41, v42, v40, v32);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  LODWORD(v4) = CurrentAttribute;
  LODWORD(v44) = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    LODWORD(v45) = 0;
  }

  else
  {
    LODWORD(v45) = CurrentAttribute;
  }

  (*(*v36 + 96))(&v197);
  v46 = *&v197.f64[1];
  v47 = *&v197.f64[0];
  v48 = v198;
  v196 = NAN;
  v195 = NAN;
  *&v194 = 1.0;
  v193 = NAN;
  v202 = v197;
  v203 = *&v198;
  v49 = v199;
  v204 = v199;
  v189 = v200;
  v205 = *&v200;
  LODWORD(v190) = v201;
  LOBYTE(v206) = v201;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v202, &v196, &v195, &v194, &v193);
  v5 = v196;
  *&v6 = v195;
  v7 = *&v194;
  v50 = v193;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_193;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_195:
      swift_once();
      goto LABEL_29;
    }

    v51 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v186) = v44;
    if (v51 && (v52 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v53 = *(v52 + 16);
      LODWORD(v202) = v45;
      BYTE4(v202) = v4 == v44;
      *(&v202 + 1) = &type metadata for StrokeStyle;
      v203 = v5;
      v204 = v6;
      v205 = v7;
      v206 = v50;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v4 = v53;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v47, v46, v48, v49, v189, v190);
    }

    else
    {
      outlined consume of Animation.Function(v47, v46, v48, v49, v189, v190);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v207, &v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_195;
    }

LABEL_29:
    v55 = *(&static Signpost.animationState + 1);
    *&v54 = static Signpost.animationState;
    v56 = word_1ED5283E8;
    v57 = HIBYTE(word_1ED5283E8);
    v58 = byte_1ED5283EA;
    v59 = static os_signpost_type_t.event.getter();
    v202 = __PAIR128__(*&v55, *&v54);
    LOBYTE(v203) = v56;
    BYTE1(v203) = v57;
    BYTE2(v203) = v58;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v207, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v207, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
LABEL_83:
      a4 = v178;
      a3 = v174;
      goto LABEL_124;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v207, &v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v60 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v61 = COERCE_DOUBLE(swift_allocObject());
    *(v61 + 16) = xmmword_18DDAF080;
    v62 = AGGraphGetCurrentAttribute();
    LODWORD(v4) = v186;
    if (v62 == v186)
    {
      __break(1u);
    }

    else
    {
      v63 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v65 = MEMORY[0x1E69E6870];
      *(v61 + 56) = MEMORY[0x1E69E6810];
      *(v61 + 64) = v65;
      *(v61 + 32) = Counter;
      v66 = AGGraphGetCurrentAttribute();
      if (v66 != v4)
      {
        v67 = MEMORY[0x1E69E76D0];
        *(v61 + 96) = MEMORY[0x1E69E7668];
        *(v61 + 104) = v67;
        *(v61 + 72) = v66;
        *(v61 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v61 + 144) = v68;
        *(v61 + 112) = 0x7453656B6F727453;
        *(v61 + 120) = 0xEB00000000656C79;
        if (v57)
        {
          LOBYTE(v193) = v59;
          v196 = COERCE_DOUBLE(&dword_18D018000);
          v195 = v60;
          *&v202 = v54;
          *(&v202 + 1) = v55;
          LOBYTE(v203) = v56;
          *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v197.f64[1] = 39;
          LOBYTE(v198) = 2;
          v194 = v61;
          v69 = v173;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v202, v173, &v197, &v194);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v207, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v207, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
          (*(v188 + 8))(v69, v192);
        }

        else
        {
          v91 = LOBYTE(v54);
          if (LOBYTE(v54) == 20)
          {
            v44 = 3;
          }

          else
          {
            v44 = 4;
          }

          a4 = bswap32(LOWORD(v54)) | (4 * HIWORD(LODWORD(v54)));
          v92 = v59;
          v93 = (v188 + 16);
          v180 = *(v188 + 16);
          v94 = v180(v187, v173, v192);
          v95 = 0;
          LOBYTE(v197.f64[0]) = 1;
          v190 = v44;
          v185 = 16 * v44;
          v181 = v93;
          v186 = (v93 - 8);
          v184 = v61 + 32;
          v183 = v91;
          do
          {
            v189 = &v173;
            MEMORY[0x1EEE9AC00](v94);
            a1 = &v173 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
            v98 = (a1 + 8);
            v99 = v190;
            v100 = (a1 + 8);
            do
            {
              *(v100 - 1) = 0;
              *v100 = 0;
              v100 += 16;
              v99 = (v99 - 1);
            }

            while (v99);
            v4 = (v184 + 40 * v95);
            v45 = v190;
            while (1)
            {
              v101 = *(v61 + 16);
              if (v95 == v101)
              {
                break;
              }

              if (v95 >= v101)
              {
                goto LABEL_184;
              }

              ++v95;
              outlined init with copy of AnyTrackedValue(v4, &v202);
              v44 = v204;
              v102 = *&v205;
              __swift_project_boxed_opaque_existential_1(&v202, v204);
              *(v98 - 1) = CVarArg.kdebugValue(_:)(a4 | v92, v44, v102);
              *v98 = v103 & 1;
              v98 += 16;
              v96 = __swift_destroy_boxed_opaque_existential_1(&v202);
              v4 += 40;
              if (!--v45)
              {
                goto LABEL_66;
              }
            }

            LOBYTE(v197.f64[0]) = 0;
LABEL_66:
            v4 = v183;
            if (v183 == 20)
            {
              v104 = v187;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v104 = v187;
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

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v105 = *v186;
            v44 = v192;
            (*v186)(v104, v192);
            v106 = __swift_project_value_buffer(v44, static OSSignpostID.continuation);
            v94 = v180(v104, v106, v44);
          }

          while ((LOBYTE(v197.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v207, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v207, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
          v107 = v192;
          v105(v104, v192);
          v105(v173, v107);
        }

        goto LABEL_83;
      }
    }

    __break(1u);
LABEL_200:
    swift_once();
LABEL_89:
    v111 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v54))
    {
      __break(1u);
LABEL_202:
      __break(1u);
    }

    v112 = AGGraphGetAttributeGraph();
    v113 = AGGraphGetCounter();

    v114 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v114;
    *(a4 + 32) = v113;
    v115 = AGGraphGetCurrentAttribute();
    if (v115 == LODWORD(v54))
    {
      goto LABEL_202;
    }

    v116 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v116;
    *(a4 + 72) = v115;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 144) = v117;
    *(a4 + 112) = 0x7453656B6F727453;
    *(a4 + 120) = 0xEB00000000656C79;
    v44 = v173;
    if (v56)
    {
      LOBYTE(v193) = v61;
      v196 = COERCE_DOUBLE(&dword_18D018000);
      v195 = v111;
      *&v202 = v55;
      *(&v202 + 1) = v59;
      LOBYTE(v203) = v4;
      *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v197.f64[1] = 39;
      LOBYTE(v198) = 2;
      v194 = a4;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v202, v173, &v197, &v194);
      v118 = v177;

      (*(v188 + 8))(v44, v192);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v207, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v178;
LABEL_94:
      *(a4 + 48) = v118;
    }

    else
    {
      v119 = LOBYTE(v55);
      v120 = v61;
      v121 = LOBYTE(v55) == 20 ? 3 : 4;
      a1 = bswap32(LOWORD(v55)) | (4 * HIWORD(LODWORD(v55)));
      v92 = v120;
      v122 = (v188 + 16);
      v180 = *(v188 + 16);
      v123 = v180(v189, v173, v192);
      v95 = 0;
      LOBYTE(v197.f64[0]) = 1;
      v186 = (16 * v121);
      v181 = v122;
      v187 = (v122 - 8);
      v185 = a4 + 32;
      v183 = v119;
      v184 = v121;
      do
      {
        v190 = &v173;
        MEMORY[0x1EEE9AC00](v123);
        v4 = &v173 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
        v45 = v4 + 8;
        v125 = v121;
        v126 = v4 + 8;
        do
        {
          *(v126 - 1) = 0;
          *v126 = 0;
          v126 += 16;
          --v125;
        }

        while (v125);
        v127 = v185 + 40 * v95;
        while (1)
        {
          v128 = *(a4 + 16);
          if (v95 == v128)
          {
            break;
          }

          if (v95 >= v128)
          {
            goto LABEL_185;
          }

          ++v95;
          outlined init with copy of AnyTrackedValue(v127, &v202);
          v44 = v204;
          v129 = *&v205;
          __swift_project_boxed_opaque_existential_1(&v202, v204);
          *(v45 - 1) = CVarArg.kdebugValue(_:)(a1 | v92, v44, v129);
          *v45 = v130 & 1;
          v45 += 16;
          v96 = __swift_destroy_boxed_opaque_existential_1(&v202);
          v127 += 40;
          if (!--v121)
          {
            goto LABEL_107;
          }
        }

        LOBYTE(v197.f64[0]) = 0;
LABEL_107:
        v131 = v183;
        if (v183 == 20)
        {
          v132 = v189;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v132 = v189;
        }

        v121 = v184;
        if (v4[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v4[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v4[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v131 != 20 && v4[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v44 = *v187;
        v133 = v192;
        (*v187)(v132, v192);
        v134 = __swift_project_value_buffer(v133, static OSSignpostID.continuation);
        v123 = v180(v132, v134, v133);
      }

      while ((LOBYTE(v197.f64[0]) & 1) != 0);
      v135 = v177;

      v136 = v192;
      (v44)(v132, v192);
      (v44)(v173, v136);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v207, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v178;
      *(v178 + 48) = v135;
    }

    a3 = v174;
LABEL_124:
    specialized AnimatorState.addListeners(transaction:)(v176);

LABEL_125:

    a1 = v179;
LABEL_126:
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = v10;
    *(a4 + 40) = 0;
LABEL_127:
    v45 = *(a4 + 48);
    if (!v45)
    {
      return;
    }

    v137 = *(a1 + 16);
    v138 = *(a1 + 32);
    *&v202 = *a1;
    *(&v202 + 1) = v137;
    v203 = v138;

    LOBYTE(v207) = 0;
    v139 = specialized AnimatorState.update(_:at:environment:)(&v202, a3, v32);
    v96 = AGGraphGetCurrentAttribute();
    LODWORD(v44) = *MEMORY[0x1E698D3F8];
    if (v96 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v95) = 0;
    }

    else
    {
      LODWORD(v95) = v96;
    }

    v92 = &type metadata instantiation cache for TupleTypeDescription;
    if (v139)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_186;
      }

      goto LABEL_133;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_188;
    }

LABEL_146:
    v151 = *(v92 + 616);
    if (*(v151 + 16) >= 0x43uLL)
    {
      if (*(v151 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v207) = v95;
        BYTE4(v207) = v96 == v44;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_181;
    }

    __break(1u);
LABEL_190:
    swift_once();
LABEL_138:
    v142 = *(&static Signpost.animationState + 1);
    v49 = static Signpost.animationState;
    v48 = word_1ED5283E8;
    v47 = HIBYTE(word_1ED5283E8);
    v143 = byte_1ED5283EA;
    v45 = static os_signpost_type_t.end.getter();
    v207 = __PAIR128__(v142, v49);
    LOBYTE(v208) = v48;
    BYTE1(v208) = v47;
    BYTE2(v208) = v143;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_180;
    }

    v179 = a1;
    v144 = one-time initialization token for _signpostLog;

    if (v144 != -1)
    {
      swift_once();
    }

    v178 = a4;
    *&v46 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v44)
    {
      break;
    }

    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    *&v185 = v50;
    swift_once();
    v50 = *&v185;
  }

  v145 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v146 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v146;
  *(a1 + 32) = v4;
  v147 = AGGraphGetCurrentAttribute();
  if (v147 == v44)
  {
    goto LABEL_192;
  }

  v148 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v148;
  *(a1 + 72) = v147;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 144) = v149;
  *(a1 + 112) = 0x7453656B6F727453;
  *(a1 + 120) = 0xEB00000000656C79;
  if (v47)
  {
    LOBYTE(v193) = v45;
    v196 = COERCE_DOUBLE(&dword_18D018000);
    v195 = *&v46;
    *&v207 = v49;
    *(&v207 + 1) = v142;
    LOBYTE(v208) = v48;
    *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v197.f64[1] = 37;
    LOBYTE(v198) = 2;
    v194 = a1;
    v150 = v182;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v207, v182, &v197, &v194);

    (*(v188 + 8))(v150, v192);
    goto LABEL_179;
  }

  v152 = v49;
  if (v49 == 20)
  {
    v153 = 3;
  }

  else
  {
    v153 = 4;
  }

  v92 = bswap32(v49) | (4 * WORD1(v49));
  LODWORD(v95) = v45;
  v154 = v188 + 16;
  v183 = *(v188 + 16);
  v155 = (v183)(v191, v182, v192);
  v156 = 0;
  LOBYTE(v197.f64[0]) = 1;
  v190 = v153;
  v186 = (16 * v153);
  v188 = v154;
  v187 = v154 - 8;
  v185 = a1 + 32;
  v184 = v152;
  do
  {
    v189 = &v173;
    MEMORY[0x1EEE9AC00](v155);
    a4 = &v173 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = (a4 + 8);
    v159 = v190;
    v160 = (a4 + 8);
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      v159 = (v159 - 1);
    }

    while (v159);
    v4 = (v185 + 40 * v156);
    v44 = v190;
    while (1)
    {
      v161 = *(a1 + 16);
      if (v156 == v161)
      {
        break;
      }

      if (v156 >= v161)
      {
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        v171 = v96;
        swift_once();
        v96 = v171;
LABEL_133:
        v140 = *(v92 + 616);
        if (*(v140 + 16) >= 0x43uLL)
        {
          if (*(v140 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v207) = v95;
            BYTE4(v207) = v96 == v44;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v141 = one-time initialization token for animationState;
          v181 = v45;

          if (v141 != -1)
          {
            goto LABEL_190;
          }

          goto LABEL_138;
        }

        __break(1u);
LABEL_188:
        v172 = v96;
        swift_once();
        v96 = v172;
        goto LABEL_146;
      }

      ++v156;
      outlined init with copy of AnyTrackedValue(v4, &v207);
      v162 = *(&v208 + 1);
      v45 = *v209;
      __swift_project_boxed_opaque_existential_1(&v207, *(&v208 + 1));
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v92 | v95, v162, v45);
      *v158 = v163 & 1;
      v158 += 16;
      v96 = __swift_destroy_boxed_opaque_existential_1(&v207);
      v4 += 40;
      if (!--v44)
      {
        goto LABEL_164;
      }
    }

    LOBYTE(v197.f64[0]) = 0;
LABEL_164:
    v164 = v184;
    if (v184 == 20)
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

    if (v164 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v165 = *v187;
    v45 = v191;
    v166 = v192;
    (*v187)(v191, v192);
    v167 = __swift_project_value_buffer(v166, static OSSignpostID.continuation);
    v155 = (v183)(v45, v167, v166);
  }

  while ((LOBYTE(v197.f64[0]) & 1) != 0);

  v168 = v192;
  v165(v191, v192);
  v165(v182, v168);
LABEL_179:

  a1 = v179;
  a4 = v178;
LABEL_180:
  specialized AnimatorState.removeListeners()();

  *(a4 + 48) = 0;
LABEL_181:
  v169 = *(&v202 + 1);
  v170 = v203;
  *a1 = v202;
  *(a1 + 16) = v169;
  *(a1 + 32) = v170;
  *(a1 + 40) = 1;
}

{
  v267 = *MEMORY[0x1E69E9840];
  v217 = type metadata accessor for OSSignpostID();
  v214 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  Counter = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v192 - v11;
  MEMORY[0x1EEE9AC00](v13);
  *&v215 = &v192 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v192 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v216 = &v192 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v207 = &v192 - v21;
  v22 = *(a4 + 72);
  *&v218 = a2;
  if (v22)
  {
    Value = AGGraphGetValue();
    if (v24)
    {
      v25 = *Value;
    }

    else
    {
      v25 = -INFINITY;
    }
  }

  else
  {
    v25 = -INFINITY;
  }

  v26 = &v258;
  v27 = &v227;
  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 57) = 1;
  }

  else if (*(a1 + 57) != 1)
  {
    goto LABEL_123;
  }

  v208 = v17;
  v204 = v12;
  v28 = *(a1 + 8);
  v29 = *(a1 + 12);
  v30 = *(a1 + 16);
  v261.f64[0] = *a1;
  LOBYTE(v261.f64[1]) = v28;
  HIDWORD(v261.f64[1]) = v29;
  LOBYTE(v262) = v30;
  v31 = *(a1 + 40);
  v212 = *(a1 + 24);
  v213 = v31;
  ResolvedGradient.animatableData.getter(&v258);
  v32 = v258;
  v33 = LOBYTE(v259.f64[0]);
  v219 = LOBYTE(v259.f64[0]);
  v34 = *(a4 + 48);
  if (v34)
  {
    v211 = Counter;
    LODWORD(v209) = a3;
    v35 = *(a4 + 16);
    v36 = *(a4 + 32);
    v37 = *(a4 + 64);
    v38 = a4;
    v39 = *(a4 + 56);
    v202 = v36;
    v203 = v35;
    v242[0] = v35;
    v242[1] = v36;
    v243 = v34;
    v244 = v39;
    v245 = v37;
    v238[0] = v212;
    v238[1] = v213;
    v239 = v258;
    v210 = BYTE8(v258) | (HIDWORD(v258) << 32);
    v240 = v210;
    v241 = LOBYTE(v259.f64[0]);
    if (_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAIG_AA22ResolvedGradientVectorVTt1B5(v238, v242))
    {
      a4 = v38;
      a3 = v209;
      Counter = v210;
      goto LABEL_122;
    }

    v195 = v34;
    v196 = v32;
    v205 = a1;

    v201 = AGGraphClearUpdate();
    v40 = *(v38 + 48);
    v263 = *(v38 + 32);
    v264 = v40;
    v265 = *(v38 + 64);
    v266 = *(v38 + 80);
    v41 = *v38;
    v42 = *(v38 + 16);
    v206 = v38;
    v261 = v41;
    v262 = v42;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v261, &v258, &lazy cache variable for type metadata for AnimatableAttributeHelper<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for AnimatableAttributeHelper);
    v43 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v261, &lazy cache variable for type metadata for AnimatableAttributeHelper<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v194 = v43;
    v197 = Transaction.effectiveAnimation.getter(v43);
    if (v197)
    {
      v27 = v205;
      v44 = v196;
      Counter = v210;
    }

    else
    {
      Counter = v210;
      if (!v218)
      {

        a1 = v205;
        a4 = v206;
        v27 = &v227;
        v26 = &v258;
        a3 = v209;
        goto LABEL_121;
      }

      v27 = v205;
      v44 = v196;
    }

    v45 = *(&v265 + 1);
    v231[0] = v212;
    v231[1] = v213;
    *&v232 = v44;
    *(&v232 + 1) = Counter;
    v233 = v33;
    v230 = v33;
    v229 = v232;
    v227 = vsubq_f64(v212, v203);
    v228 = vsubq_f64(v213, v202);
    *&v224 = v195;
    BYTE8(v224) = v39;
    HIDWORD(v224) = HIDWORD(v39);
    LOBYTE(v225) = v37 & 1;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v231, &v258, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    ResolvedGradientVector.add(_:scaledBy:)(&v224, -1.0);
    v25 = *AGGraphGetValue();
    if (v45)
    {
      v234 = v227;
      v235 = v228;
      v236 = v229;
      v237 = v230;

      LOBYTE(v258) = 0;
      v46 = v197;
      v193 = v45;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v197, &v234, v194, v209, v25);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(Counter) = CurrentAttribute;
      LODWORD(v48) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        v49 = 0;
      }

      else
      {
        v49 = CurrentAttribute;
      }

      LODWORD(v218) = v49;
      v50 = v27[1];
      v224 = *v27;
      v225 = v50;
      v226[0] = v27[2];
      v51 = v226[0];
      *(v226 + 9) = *(v27 + 41);
      v258 = v224;
      v259 = v50;
      v260[0] = v51;
      *(v260 + 9) = *(v226 + 9);
      outlined init with copy of LinearGradient.AbsolutePaint(&v224, &v252);
      v52 = outlined destroy of LinearGradient._Paint(&v258);
      (*(*v46 + 96))(&v246, v52);
      v53 = v246;
      v54 = v247;
      v55 = v248;
      v56 = v249;
      v57 = v250;
      LODWORD(v46) = v251;
      v222 = NAN;
      v223 = 0x7FF8000000000000;
      v220 = NAN;
      v221 = 0x3FF0000000000000;
      v252 = v246;
      v253 = v247;
      v254 = v248;
      v255 = *&v249;
      v256 = v250;
      LOBYTE(v257) = v251;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v252, &v223, &v222, &v221, &v220);
      v58 = v222;
      v59 = v223;
      v60 = v220;
      v61 = v221;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_189;
      }

      goto LABEL_22;
    }

    v234 = v227;
    v235 = v228;
    v236 = v229;
    v237 = v230;
    *&v224 = &type metadata for LinearGradient.AbsolutePaint;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v234, &v258, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    type metadata accessor for LinearGradient.AbsolutePaint.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v80 = swift_dynamicCast();
    if (v80)
    {
      v81 = v258;
    }

    else
    {
      v81 = 0;
    }

    if (v80)
    {
      v82 = *(&v258 + 1);
    }

    else
    {
      v82 = 0;
    }

    v83 = v194;

    v84 = v197;

    v193 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAZGAA22ResolvedGradientVectorVG_Tt4B5(v85, &v234, v83, v81, v82, v25);
    v86 = AGGraphGetCurrentAttribute();
    a1 = v86;
    v87 = *MEMORY[0x1E698D3F8];
    if (v86 == *MEMORY[0x1E698D3F8])
    {
      v88 = 0;
    }

    else
    {
      v88 = v86;
    }

    v89 = v27[1];
    v224 = *v27;
    v225 = v89;
    v226[0] = v27[2];
    v90 = v226[0];
    *(v226 + 9) = *(v27 + 41);
    v258 = v224;
    v259 = v89;
    v260[0] = v90;
    *(v260 + 9) = *(v226 + 9);
    outlined init with copy of LinearGradient.AbsolutePaint(&v224, &v252);
    v91 = outlined destroy of LinearGradient._Paint(&v258);
    (*(*v84 + 96))(&v246, v91);
    v53 = v246;
    v92 = v247;
    v26 = v248;
    v93 = v249;
    v94 = v250;
    v222 = NAN;
    v223 = 0x7FF8000000000000;
    v220 = NAN;
    v221 = 0x3FF0000000000000;
    v252 = v246;
    v253 = v247;
    v254 = v248;
    v255 = *&v249;
    v256 = v250;
    LODWORD(v218) = v251;
    LOBYTE(v257) = v251;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v252, &v223, &v222, &v221, &v220);
    v95 = v222;
    v96 = v223;
    v97 = v220;
    v98 = v221;
    if (one-time initialization token for enabledCategories != -1)
    {
      *&v215 = v223;
      v203.f64[0] = v222;
      v208 = v221;
      v202.f64[0] = v220;
      swift_once();
      v97 = v202.f64[0];
      v98 = v208;
      v95 = v203.f64[0];
      v96 = v215;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v99 = static CustomEventTrace.recorder) != 0)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        *&v215 = v94;
        v100 = *(v99 + 16);
        LODWORD(v252) = v88;
        BYTE4(v252) = a1 == v87;
        v253 = &type metadata for LinearGradient.AbsolutePaint;
        v254 = v96;
        v255 = v95;
        v256 = v98;
        v257 = v97;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v208 = v101;

        v102 = v100;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v53, v92, v26, v93, v215, v218);
      }

      else
      {
        outlined consume of Animation.Function(v53, v92, v26, v93, v94, v218);
      }

      LODWORD(v53) = v87;
      v103 = one-time initialization token for animationState;

      a1 = v205;
      v27 = &v227;
      v26 = &v258;
      if (v103 == -1)
      {
        goto LABEL_53;
      }
    }

    swift_once();
LABEL_53:
    v67 = *(&static Signpost.animationState + 1);
    v66 = static Signpost.animationState;
    v68 = word_1ED5283E8;
    LOBYTE(Counter) = HIBYTE(word_1ED5283E8);
    v104 = byte_1ED5283EA;
    LODWORD(v218) = static os_signpost_type_t.begin.getter();
    v252 = v66;
    v253 = v67;
    LOBYTE(v254) = v68;
    BYTE1(v254) = Counter;
    BYTE2(v254) = v104;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v116 = v193;

      a4 = v206;
      *(v206 + 72) = v116;
      goto LABEL_120;
    }

    v105 = one-time initialization token for _signpostLog;

    if (v105 != -1)
    {
      goto LABEL_196;
    }

    goto LABEL_55;
  }

  Counter = BYTE8(v258) | (HIDWORD(v258) << 32);
LABEL_122:
  while (1)
  {

    v152 = v213;
    *(a4 + 16) = v212;
    *(a4 + 32) = v152;
    *(a4 + 48) = v32;
    *(a4 + 56) = Counter;
    *(a4 + 64) = v33;
LABEL_123:
    v118 = *(a4 + 72);
    if (!v118)
    {
      return;
    }

    v206 = a4;
    v153 = *(a1 + 8);
    v154 = *(a1 + 12);
    v155 = *(a1 + 16);
    *&v258 = *a1;
    BYTE8(v258) = v153;
    HIDWORD(v258) = v154;
    LOBYTE(v259.f64[0]) = v155;

    v218 = *(a1 + 24);
    v215 = *(a1 + 40);
    ResolvedGradient.animatableData.getter(&v224);
    v156 = v224;
    v157 = BYTE8(v224);
    v158 = HIDWORD(v224);
    v159 = v225;
    v160 = v215;
    v26[6] = v218;
    v26[7] = v160;
    *&v263 = v156;
    BYTE8(v263) = v157;
    HIDWORD(v263) = v158;
    LOBYTE(v264) = v159;
    LOBYTE(v258) = 0;
    v161 = specialized AnimatorState.update(_:at:environment:)(&v261, a3, v25);
    v122 = AGGraphGetCurrentAttribute();
    v57 = *MEMORY[0x1E698D3F8];
    if (v122 == v57)
    {
      LODWORD(v119) = 0;
    }

    else
    {
      LODWORD(v119) = v122;
    }

    v117 = &type metadata instantiation cache for TupleTypeDescription;
    if (v161)
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
    v172 = *(v117 + 616);
    if (*(v172 + 16) >= 0x43uLL)
    {
      if (*(v172 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v258) = v119;
        BYTE4(v258) = v122 == v57;
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
    v48 = *(&static Signpost.animationState + 1);
    v46 = static Signpost.animationState;
    v53 = word_1ED5283E8;
    v56 = HIBYTE(word_1ED5283E8);
    v164 = byte_1ED5283EA;
    v165 = static os_signpost_type_t.end.getter();
    v258 = __PAIR128__(v48, v46);
    LOBYTE(v259.f64[0]) = v53;
    BYTE1(v259.f64[0]) = v56;
    BYTE2(v259.f64[0]) = v164;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_176;
    }

    LODWORD(v218) = v165;
    v166 = one-time initialization token for _signpostLog;
    LODWORD(v27) = v204;

    if (v166 != -1)
    {
      swift_once();
    }

    v54 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v57)
    {
      break;
    }

    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    v211 = v59;
    v203.f64[0] = v58;
    v204 = v61;
    v202.f64[0] = v60;
    swift_once();
    v60 = v202.f64[0];
    v61 = v204;
    v58 = v203.f64[0];
    v59 = v211;
LABEL_22:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_191:
      swift_once();
      goto LABEL_28;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v62 = static CustomEventTrace.recorder) != 0)
    {
      v211 = v56;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v204) = v46;
      v63 = *(v62 + 16);
      LODWORD(v252) = v218;
      BYTE4(v252) = Counter == v48;
      v253 = &type metadata for LinearGradient.AbsolutePaint;
      v254 = v59;
      v255 = v58;
      v256 = v61;
      v257 = v60;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      *&v218 = v64;

      Counter = v63;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v53, v54, v55, v211, v57, v204);
    }

    else
    {
      outlined consume of Animation.Function(v53, v54, v55, v56, v57, v46);
    }

    LODWORD(v27) = v48;
    v65 = one-time initialization token for animationState;
    LODWORD(v53) = v193;

    if (v65 != -1)
    {
      goto LABEL_191;
    }

LABEL_28:
    v67 = *(&static Signpost.animationState + 1);
    v66 = static Signpost.animationState;
    v68 = word_1ED5283E8;
    v69 = HIBYTE(word_1ED5283E8);
    v70 = byte_1ED5283EA;
    v71 = static os_signpost_type_t.event.getter();
    v252 = v66;
    v253 = v67;
    LOBYTE(v254) = v68;
    BYTE1(v254) = v69;
    BYTE2(v254) = v70;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_89:
      a1 = v205;
      a4 = v206;
      goto LABEL_119;
    }

    LODWORD(v218) = v71;
    v72 = one-time initialization token for _signpostLog;

    if (v72 != -1)
    {
      swift_once();
    }

    *&v211 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v27)
    {
      __break(1u);
    }

    else
    {
      v73 = v27;
      v74 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v75 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v75;
      *(a1 + 32) = Counter;
      v76 = AGGraphGetCurrentAttribute();
      if (v76 != v73)
      {
        v77 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v77;
        *(a1 + 72) = v76;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(a1 + 144) = v78;
        strcpy((a1 + 112), "AbsolutePaint");
        *(a1 + 126) = -4864;
        if (v69)
        {
          LOBYTE(v220) = v218;
          v222 = *&v211;
          v223 = &dword_18D018000;
          v252 = v66;
          v253 = v67;
          LOBYTE(v254) = v68;
          v246 = "Animation: (%p) [%d] %{public}@ updated";
          v247 = 39;
          LOBYTE(v248) = 2;
          v221 = a1;
          v79 = v208;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v220, &v223, &v222, &v252, v208, &v246, &v221);

          (*(v214 + 8))(v79, v217);
        }

        else
        {
          v117 = v66;
          if (v66 == 20)
          {
            v118 = 3;
          }

          else
          {
            v118 = 4;
          }

          LODWORD(v119) = bswap32(v66) | (4 * (v66 >> 16));
          LODWORD(v218) = v218;
          v120 = v214 + 16;
          v198 = *(v214 + 16);
          v121 = v198(v215, v208, v217);
          v57 = 0;
          LOBYTE(v246) = 1;
          *&v203.f64[0] = 16 * v118;
          v199 = v120;
          v200 = v118;
          v204 = (v120 - 8);
          v201 = v117;
          *&v202.f64[0] = a1 + 32;
          do
          {
            *&v211 = COERCE_DOUBLE(&v192);
            MEMORY[0x1EEE9AC00](v121);
            Counter = &v192 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
            v26 = (Counter + 8);
            v124 = v118;
            v125 = (Counter + 8);
            do
            {
              *(v125 - 1) = 0;
              *v125 = 0;
              v125 += 16;
              --v124;
            }

            while (v124);
            v27 = (*&v202.f64[0] + 40 * v57);
            while (1)
            {
              v126 = *(a1 + 16);
              if (v57 == v126)
              {
                break;
              }

              if (v57 >= v126)
              {
                goto LABEL_180;
              }

              ++v57;
              outlined init with copy of AnyTrackedValue(v27, &v252);
              v127 = *&v255;
              v117 = a1;
              v128 = v256;
              __swift_project_boxed_opaque_existential_1(&v252, *&v255);
              v129 = v128;
              a1 = v117;
              *(v26 - 1) = CVarArg.kdebugValue(_:)(v119 | v218, v127, v129);
              *v26++ = v130 & 1;
              v122 = __swift_destroy_boxed_opaque_existential_1(&v252);
              v27 = (v27 + 40);
              if (!--v118)
              {
                goto LABEL_73;
              }
            }

            LOBYTE(v246) = 0;
LABEL_73:
            v117 = v201;
            if (v201 == 20)
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

            if (v117 != 20 && *(Counter + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v131 = *v204;
            v132 = v215;
            v133 = v217;
            (*v204)(v215, v217);
            v134 = __swift_project_value_buffer(v133, static OSSignpostID.continuation);
            v121 = v198(v132, v134, v133);
            v118 = v200;
          }

          while ((v246 & 1) != 0);

          v135 = v217;
          v131(v215, v217);
          v131(v208, v135);
        }

        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_196:
    swift_once();
LABEL_55:
    v106 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v53)
    {
      __break(1u);
LABEL_198:
      __break(1u);
    }

    v108 = AGGraphGetAttributeGraph();
    v109 = AGGraphGetCounter();

    v110 = MEMORY[0x1E69E6870];
    *(v107 + 56) = MEMORY[0x1E69E6810];
    *(v107 + 64) = v110;
    *(v107 + 32) = v109;
    v111 = AGGraphGetCurrentAttribute();
    if (v111 == v53)
    {
      goto LABEL_198;
    }

    v27 = v107;
    v112 = MEMORY[0x1E69E76D0];
    *(v107 + 96) = MEMORY[0x1E69E7668];
    *(v107 + 104) = v112;
    *(v107 + 72) = v111;
    *(v107 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v107 + 144) = v113;
    strcpy((v107 + 112), "AbsolutePaint");
    *(v107 + 126) = -4864;
    if (Counter)
    {
      LOBYTE(v220) = v218;
      v222 = v106;
      v223 = &dword_18D018000;
      v252 = v66;
      v253 = v67;
      LOBYTE(v254) = v68;
      v246 = "Animation: (%p) [%d] %{public}@ started";
      v247 = 39;
      LOBYTE(v248) = 2;
      v221 = v107;
      v114 = v204;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v220, &v223, &v222, &v252, v204, &v246, &v221);
      v115 = v193;

      (*(v214 + 8))(v114, v217);
    }

    else
    {
      v136 = v66;
      if (v66 == 20)
      {
        v137 = 3;
      }

      else
      {
        v137 = 4;
      }

      LODWORD(v119) = bswap32(v66) | (4 * (v66 >> 16));
      v117 = v218;
      v138 = v214 + 16;
      v198 = *(v214 + 16);
      v139 = v198(v211, v204, v217);
      v57 = 0;
      LOBYTE(v246) = 1;
      *&v215 = v137;
      v199 = v138;
      v200 = v136;
      *&v203.f64[0] = v138 - 8;
      *&v218 = v27;
      v201 = &v27[2];
      *&v202.f64[0] = 16 * v137;
      do
      {
        v208 = &v192;
        MEMORY[0x1EEE9AC00](v139);
        v26 = (&v192 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0));
        Counter = v26 + 8;
        v141 = v215;
        v142 = v26 + 8;
        do
        {
          *(v142 - 1) = 0;
          *v142 = 0;
          v142 += 16;
          --v141;
        }

        while (v141);
        v118 = v201 + 40 * v57;
        a1 = v215;
        while (1)
        {
          v143 = *(v218 + 16);
          if (v57 == v143)
          {
            break;
          }

          if (v57 >= v143)
          {
            goto LABEL_181;
          }

          ++v57;
          outlined init with copy of AnyTrackedValue(v118, &v252);
          v144 = *&v255;
          v27 = v256;
          __swift_project_boxed_opaque_existential_1(&v252, *&v255);
          *(Counter - 8) = CVarArg.kdebugValue(_:)(v119 | v117, v144, v27);
          *Counter = v145 & 1;
          Counter += 16;
          v122 = __swift_destroy_boxed_opaque_existential_1(&v252);
          v118 += 40;
          if (!--a1)
          {
            goto LABEL_102;
          }
        }

        LOBYTE(v246) = 0;
LABEL_102:
        v146 = v200;
        if (v200 == 20)
        {
          v27 = v211;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v27 = v211;
        }

        if (*(v26 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v26 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v26 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v146 != 20 && *(v26 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v147 = **&v203.f64[0];
        v148 = v217;
        (**&v203.f64[0])(v27, v217);
        v149 = __swift_project_value_buffer(v148, static OSSignpostID.continuation);
        v139 = v198(v27, v149, v148);
      }

      while ((v246 & 1) != 0);
      v115 = v193;

      v150 = v217;
      v147(v27, v217);
      v147(v204, v150);
    }

    a1 = v205;
    a4 = v206;
    *(v206 + 72) = v115;
LABEL_119:
    v27 = &v227;
    v26 = &v258;
LABEL_120:
    a3 = v209;
    Counter = v210;
    specialized AnimatorState.addListeners(transaction:)(v194);

    v151 = v228;
    *v26 = v227;
    v26[1] = v151;
    v26[2] = v27[2];
    LOBYTE(v260[1]) = v230;
    outlined destroy of Slice<IndexSet>(&v258, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

    v33 = v219;
LABEL_121:
    v32 = v196;
  }

  v27 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v167 = MEMORY[0x1E69E6870];
  *(v55 + 56) = MEMORY[0x1E69E6810];
  *(v55 + 64) = v167;
  *(v55 + 32) = Counter;
  v168 = AGGraphGetCurrentAttribute();
  if (v168 == v57)
  {
    goto LABEL_188;
  }

  Counter = v55;
  v169 = MEMORY[0x1E69E76D0];
  *(v55 + 96) = MEMORY[0x1E69E7668];
  *(v55 + 104) = v169;
  *(v55 + 72) = v168;
  *(v55 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v55 + 144) = v170;
  strcpy((v55 + 112), "AbsolutePaint");
  *(v55 + 126) = -4864;
  if (v56)
  {
    LOBYTE(v246) = v218;
    v252 = &dword_18D018000;
    *&v231[0] = v54;
    *&v258 = v46;
    *(&v258 + 1) = v48;
    LOBYTE(v259.f64[0]) = v53;
    *&v224 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v224 + 1) = 37;
    LOBYTE(v225) = 2;
    *&v227.f64[0] = v55;
    v171 = v207;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v246, &v252, v231, &v258, v207, &v224, &v227);

    (*(v214 + 8))(v171, v217);
    goto LABEL_175;
  }

  v118 = v46;
  if (v46 == 20)
  {
    a1 = 3;
  }

  else
  {
    a1 = 4;
  }

  v117 = bswap32(v46) | (4 * WORD1(v46));
  LODWORD(v218) = v218;
  v173 = v214 + 16;
  v208 = *(v214 + 16);
  v174 = (v208)(v216, v207, v217);
  v57 = 0;
  LOBYTE(v224) = 1;
  v214 = v173;
  *&v213.f64[0] = v173 - 8;
  v211 = (Counter + 32);
  *&v212.f64[0] = 16 * a1;
  v209 = v118;
  v210 = a1;
  do
  {
    *&v215 = &v192;
    MEMORY[0x1EEE9AC00](v174);
    v26 = (&v192 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0));
    v119 = v26 + 8;
    v176 = a1;
    v177 = v26 + 8;
    do
    {
      *(v177 - 1) = 0;
      *v177 = 0;
      v177 += 16;
      --v176;
    }

    while (v176);
    v27 = (v211 + 40 * v57);
    while (1)
    {
      v178 = *(Counter + 16);
      if (v57 == v178)
      {
        break;
      }

      if (v57 >= v178)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v190 = v122;
        swift_once();
        v122 = v190;
LABEL_129:
        v162 = *(v117 + 616);
        if (*(v162 + 16) >= 0x43uLL)
        {
          if (*(v162 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v258) = v119;
            BYTE4(v258) = v122 == v57;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v204 = v118;
          v205 = a1;
          v163 = one-time initialization token for animationState;

          if (v163 != -1)
          {
            goto LABEL_186;
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_184:
        v191 = v122;
        swift_once();
        v122 = v191;
        goto LABEL_142;
      }

      ++v57;
      outlined init with copy of AnyTrackedValue(v27, &v258);
      v179 = *&v259.f64[1];
      v118 = Counter;
      v180 = *&v260[0];
      __swift_project_boxed_opaque_existential_1(&v258, *&v259.f64[1]);
      v181 = v180;
      Counter = v118;
      *(v119 - 1) = CVarArg.kdebugValue(_:)(v117 | v218, v179, v181);
      *v119 = v182 & 1;
      v119 += 16;
      v122 = __swift_destroy_boxed_opaque_existential_1(&v258);
      v27 = (v27 + 40);
      if (!--a1)
      {
        goto LABEL_160;
      }
    }

    LOBYTE(v224) = 0;
LABEL_160:
    v118 = v209;
    if (v209 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    a1 = v210;
    if (*(v26 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v26 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v26 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v118 != 20 && *(v26 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v183 = **&v213.f64[0];
    v185 = v216;
    v184 = v217;
    (**&v213.f64[0])(v216, v217);
    v186 = __swift_project_value_buffer(v184, static OSSignpostID.continuation);
    v174 = (v208)(v185, v186, v184);
  }

  while ((v224 & 1) != 0);

  v187 = v217;
  v183(v216, v217);
  v183(v207, v187);
LABEL_175:

LABEL_176:
  specialized AnimatorState.removeListeners()();

  a1 = v205;
  *(v206 + 72) = 0;
  v27 = &v227;
  v26 = &v258;
LABEL_177:
  v188 = v26[7];
  v224 = v26[6];
  v225 = v188;
  v226[0] = v26[8];
  *(a1 + 24) = v224;
  LOBYTE(v226[1]) = v264;
  *(a1 + 40) = v188;
  v252 = *&v226[0];
  LOBYTE(v253) = BYTE8(v226[0]);
  HIDWORD(v253) = HIDWORD(v226[0]);
  LOBYTE(v254) = v226[1];
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v224, &v258, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  ResolvedGradient.animatableData.setter(&v252);

  v189 = v26[7];
  v27[26] = v26[6];
  v27[27] = v189;
  v27[28] = v26[8];
  LOBYTE(v260[1]) = v264;
  outlined destroy of Slice<IndexSet>(&v258, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  *(a1 + 57) = 1;
}

{
  v272 = *MEMORY[0x1E69E9840];
  v222 = type metadata accessor for OSSignpostID();
  v219 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v9 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v197 - v11;
  MEMORY[0x1EEE9AC00](v13);
  *&v220.f64[0] = &v197 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v197 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v221 = &v197 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v212 = &v197 - v21;
  v22 = *(a4 + 72);
  *&v223.f64[0] = a2;
  if (v22)
  {
    Value = AGGraphGetValue();
    if (v24)
    {
      v25 = *Value;
    }

    else
    {
      v25 = -INFINITY;
    }
  }

  else
  {
    v25 = -INFINITY;
  }

  v26 = &v263;
  v27 = &v232;
  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 57) = 1;
  }

  else if (*(a1 + 57) != 1)
  {
    goto LABEL_123;
  }

  v213 = v17;
  v209 = v12;
  v28 = *a1;
  v29 = *(a1 + 8);
  v30 = *(a1 + 12);
  v31 = *(a1 + 16);
  v32 = vdupq_n_s64(0x4060000000000000uLL);
  v33 = vmulq_f64(*(a1 + 24), v32);
  v217 = vmulq_f64(*(a1 + 40), v32);
  v218 = v33;
  v266.f64[0] = v28;
  LOBYTE(v266.f64[1]) = v29;
  HIDWORD(v266.f64[1]) = v30;
  LOBYTE(v267) = v31;
  ResolvedGradient.animatableData.getter(&v263);
  v34 = v263;
  v35 = LOBYTE(v264.f64[0]);
  v224 = LOBYTE(v264.f64[0]);
  v36 = *(a4 + 48);
  if (v36 != 0.0)
  {
    v216 = v9;
    LODWORD(v214) = a3;
    v38 = *(a4 + 16);
    v37 = *(a4 + 32);
    v39 = *(a4 + 64);
    v40 = a4;
    v41 = *(a4 + 56);
    v207 = v38;
    v208 = v37;
    v247[0] = v38;
    v247[1] = v37;
    v248 = v36;
    v249 = v41;
    v250 = v39;
    v243[0] = v218;
    v243[1] = v217;
    v244 = v263;
    v215 = BYTE8(v263) | (HIDWORD(v263) << 32);
    v245 = v215;
    v246 = LOBYTE(v264.f64[0]);
    if (_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAIG_AA22ResolvedGradientVectorVTt1B5(v243, v247))
    {
      a4 = v40;
      a3 = v214;
      v9 = v215;
      goto LABEL_122;
    }

    v200 = v36;
    v201 = v34;
    v210 = a1;

    v206 = AGGraphClearUpdate();
    v42 = *(v40 + 48);
    v268 = *(v40 + 32);
    v269 = v42;
    v270 = *(v40 + 64);
    v271 = *(v40 + 80);
    v43 = *v40;
    v44 = *(v40 + 16);
    v211 = v40;
    v266 = v43;
    v267 = v44;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v266, &v263, &lazy cache variable for type metadata for AnimatableAttributeHelper<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint, &type metadata for LinearGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
    v45 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v266, &lazy cache variable for type metadata for AnimatableAttributeHelper<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint, &type metadata for LinearGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v199 = v45;
    v202 = Transaction.effectiveAnimation.getter(v45);
    if (v202)
    {
      v27 = v210;
      v46 = v201;
      v9 = v215;
    }

    else
    {
      v9 = v215;
      if (!*&v223.f64[0])
      {

        a1 = v210;
        a4 = v211;
        v27 = &v232;
        v26 = &v263;
        a3 = v214;
        goto LABEL_121;
      }

      v27 = v210;
      v46 = v201;
    }

    v47 = *(&v270 + 1);
    v236[0] = v218;
    v236[1] = v217;
    *&v237 = v46;
    *(&v237 + 1) = v9;
    v238 = v35;
    v235 = v35;
    v234 = v237;
    v232 = vsubq_f64(v218, v207);
    v233 = vsubq_f64(v217, v208);
    v229.f64[0] = v200;
    LOBYTE(v229.f64[1]) = v41;
    HIDWORD(v229.f64[1]) = HIDWORD(v41);
    LOBYTE(v230.f64[0]) = v39 & 1;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v236, &v263, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    ResolvedGradientVector.add(_:scaledBy:)(&v229, -1.0);
    v25 = *AGGraphGetValue();
    if (v47)
    {
      v239 = v232;
      v240 = v233;
      v241 = v234;
      v242 = v235;

      LOBYTE(v263) = 0;
      v48 = v202;
      v198 = v47;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v202, &v239, v199, v214, v25);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v9) = CurrentAttribute;
      LODWORD(v50) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        v51 = 0;
      }

      else
      {
        v51 = CurrentAttribute;
      }

      LODWORD(v223.f64[0]) = v51;
      v52 = v27[1];
      v229 = *v27;
      v230 = v52;
      v231[0] = v27[2];
      v53 = v231[0];
      *(v231 + 9) = *(v27 + 41);
      v263 = v229;
      v264 = v52;
      v265[0] = v53;
      *(v265 + 9) = *(v231 + 9);
      outlined init with copy of LinearGradient._Paint(&v229, &v257);
      v54 = outlined destroy of LinearGradient._Paint(&v263);
      (*(*v48 + 96))(&v251, v54);
      v55 = v251;
      v56 = v252;
      v57 = v253;
      v58 = v254;
      v59 = v255;
      LODWORD(v48) = v256;
      v227 = NAN;
      v228 = 0x7FF8000000000000;
      v225 = NAN;
      v226 = 0x3FF0000000000000;
      v257 = v251;
      v258 = v252;
      v259 = v253;
      v260 = *&v254;
      v261 = v255;
      LOBYTE(v262) = v256;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v257, &v228, &v227, &v226, &v225);
      v60 = v227;
      v61 = v228;
      v62 = v225;
      v63 = v226;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_189;
      }

      goto LABEL_22;
    }

    v239 = v232;
    v240 = v233;
    v241 = v234;
    v242 = v235;
    *&v229.f64[0] = &type metadata for LinearGradient._Paint;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v239, &v263, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    type metadata accessor for LinearGradient._Paint.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v82 = swift_dynamicCast();
    if (v82)
    {
      v83 = v263;
    }

    else
    {
      v83 = 0;
    }

    if (v82)
    {
      v84 = *(&v263 + 1);
    }

    else
    {
      v84 = 0;
    }

    v85 = v199;

    v86 = v202;

    v198 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAZGAA22ResolvedGradientVectorVG_Tt4B5(v87, &v239, v85, v83, v84, v25);
    v88 = AGGraphGetCurrentAttribute();
    a1 = v88;
    v89 = *MEMORY[0x1E698D3F8];
    if (v88 == *MEMORY[0x1E698D3F8])
    {
      v90 = 0;
    }

    else
    {
      v90 = v88;
    }

    v91 = v27[1];
    v229 = *v27;
    v230 = v91;
    v231[0] = v27[2];
    v92 = v231[0];
    *(v231 + 9) = *(v27 + 41);
    v263 = v229;
    v264 = v91;
    v265[0] = v92;
    *(v265 + 9) = *(v231 + 9);
    outlined init with copy of LinearGradient._Paint(&v229, &v257);
    v93 = outlined destroy of LinearGradient._Paint(&v263);
    (*(*v86 + 96))(&v251, v93);
    v55 = v251;
    v94 = v252;
    v26 = v253;
    v95 = v254;
    v96 = v255;
    v227 = NAN;
    v228 = 0x7FF8000000000000;
    v225 = NAN;
    v226 = 0x3FF0000000000000;
    v257 = v251;
    v258 = v252;
    v259 = v253;
    v260 = *&v254;
    v261 = v255;
    LODWORD(v223.f64[0]) = v256;
    LOBYTE(v262) = v256;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v257, &v228, &v227, &v226, &v225);
    v97 = v227;
    v98 = v228;
    v99 = v225;
    v100 = v226;
    if (one-time initialization token for enabledCategories != -1)
    {
      *&v220.f64[0] = v228;
      v208.f64[0] = v227;
      v213 = v226;
      v207.f64[0] = v225;
      swift_once();
      v99 = v207.f64[0];
      v100 = v213;
      v97 = v208.f64[0];
      v98 = *&v220.f64[0];
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v101 = static CustomEventTrace.recorder) != 0)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        *&v220.f64[0] = v96;
        v102 = *(v101 + 16);
        LODWORD(v257) = v90;
        BYTE4(v257) = a1 == v89;
        v258 = &type metadata for LinearGradient._Paint;
        v259 = v98;
        v260 = v97;
        v261 = v100;
        v262 = v99;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v213 = v103;

        v104 = v102;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v55, v94, v26, v95, *&v220.f64[0], LOBYTE(v223.f64[0]));
      }

      else
      {
        outlined consume of Animation.Function(v55, v94, v26, v95, v96, LOBYTE(v223.f64[0]));
      }

      LODWORD(v55) = v89;
      v105 = one-time initialization token for animationState;

      a1 = v210;
      v27 = &v232;
      v26 = &v263;
      if (v105 == -1)
      {
        goto LABEL_53;
      }
    }

    swift_once();
LABEL_53:
    v69 = *(&static Signpost.animationState + 1);
    v68 = static Signpost.animationState;
    v70 = word_1ED5283E8;
    LOBYTE(v9) = HIBYTE(word_1ED5283E8);
    v106 = byte_1ED5283EA;
    LODWORD(v223.f64[0]) = static os_signpost_type_t.begin.getter();
    v257 = v68;
    v258 = v69;
    LOBYTE(v259) = v70;
    BYTE1(v259) = v9;
    BYTE2(v259) = v106;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v118 = v198;

      a4 = v211;
      *(v211 + 72) = v118;
      goto LABEL_120;
    }

    v107 = one-time initialization token for _signpostLog;

    if (v107 != -1)
    {
      goto LABEL_196;
    }

    goto LABEL_55;
  }

  v9 = BYTE8(v263) | (HIDWORD(v263) << 32);
LABEL_122:
  while (1)
  {

    v154 = v217;
    *(a4 + 16) = v218;
    *(a4 + 32) = v154;
    *(a4 + 48) = v34;
    *(a4 + 56) = *&v9;
    *(a4 + 64) = v35;
LABEL_123:
    v120 = *(a4 + 72);
    if (!v120)
    {
      return;
    }

    v211 = a4;
    v155 = *(a1 + 8);
    v156 = *(a1 + 12);
    v157 = *(a1 + 16);
    *&v263 = *a1;
    BYTE8(v263) = v155;
    HIDWORD(v263) = v156;
    LOBYTE(v264.f64[0]) = v157;

    v158 = *(a1 + 40);
    v159 = vdupq_n_s64(0x4060000000000000uLL);
    v223 = vmulq_f64(*(a1 + 24), v159);
    v220 = vmulq_f64(v158, v159);
    ResolvedGradient.animatableData.getter(&v229);
    v160 = v229.f64[0];
    v161 = LOBYTE(v229.f64[1]);
    v162 = HIDWORD(v229.f64[1]);
    v163 = LOBYTE(v230.f64[0]);
    v164 = v220;
    v26[6] = v223;
    v26[7] = v164;
    *&v268 = v160;
    BYTE8(v268) = v161;
    HIDWORD(v268) = v162;
    LOBYTE(v269) = v163;
    LOBYTE(v263) = 0;
    v165 = specialized AnimatorState.update(_:at:environment:)(&v266, a3, v25);
    v124 = AGGraphGetCurrentAttribute();
    v59 = *MEMORY[0x1E698D3F8];
    if (v124 == v59)
    {
      LODWORD(v121) = 0;
    }

    else
    {
      LODWORD(v121) = v124;
    }

    v119 = &type metadata instantiation cache for TupleTypeDescription;
    if (v165)
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
    v176 = *(v119 + 616);
    if (*(v176 + 16) >= 0x43uLL)
    {
      if (*(v176 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v263) = v121;
        BYTE4(v263) = v124 == v59;
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
    v50 = *(&static Signpost.animationState + 1);
    v48 = static Signpost.animationState;
    v55 = word_1ED5283E8;
    v58 = HIBYTE(word_1ED5283E8);
    v168 = byte_1ED5283EA;
    v169 = static os_signpost_type_t.end.getter();
    v263 = __PAIR128__(v50, v48);
    LOBYTE(v264.f64[0]) = v55;
    BYTE1(v264.f64[0]) = v58;
    BYTE2(v264.f64[0]) = v168;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_176;
    }

    LODWORD(v223.f64[0]) = v169;
    v170 = one-time initialization token for _signpostLog;
    LODWORD(v27) = v209;

    if (v170 != -1)
    {
      swift_once();
    }

    v56 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v59)
    {
      break;
    }

    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    v216 = v61;
    v208.f64[0] = v60;
    v209 = v63;
    v207.f64[0] = v62;
    swift_once();
    v62 = v207.f64[0];
    v63 = v209;
    v60 = v208.f64[0];
    v61 = v216;
LABEL_22:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_191:
      swift_once();
      goto LABEL_28;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v64 = static CustomEventTrace.recorder) != 0)
    {
      v216 = v58;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v209) = v48;
      v65 = *(v64 + 16);
      LODWORD(v257) = LODWORD(v223.f64[0]);
      BYTE4(v257) = v9 == v50;
      v258 = &type metadata for LinearGradient._Paint;
      v259 = v61;
      v260 = v60;
      v261 = v63;
      v262 = v62;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      v223.f64[0] = v66;

      *&v9 = COERCE_DOUBLE(v65);
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v55, v56, v57, v216, v59, v209);
    }

    else
    {
      outlined consume of Animation.Function(v55, v56, v57, v58, v59, v48);
    }

    LODWORD(v27) = v50;
    v67 = one-time initialization token for animationState;
    LODWORD(v55) = v198;

    if (v67 != -1)
    {
      goto LABEL_191;
    }

LABEL_28:
    v69 = *(&static Signpost.animationState + 1);
    v68 = static Signpost.animationState;
    v70 = word_1ED5283E8;
    v71 = HIBYTE(word_1ED5283E8);
    v72 = byte_1ED5283EA;
    v73 = static os_signpost_type_t.event.getter();
    v257 = v68;
    v258 = v69;
    LOBYTE(v259) = v70;
    BYTE1(v259) = v71;
    BYTE2(v259) = v72;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_89:
      a1 = v210;
      a4 = v211;
      goto LABEL_119;
    }

    LODWORD(v223.f64[0]) = v73;
    v74 = one-time initialization token for _signpostLog;

    if (v74 != -1)
    {
      swift_once();
    }

    *&v216 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v27)
    {
      __break(1u);
    }

    else
    {
      v75 = v27;
      v76 = AGGraphGetAttributeGraph();
      *&v9 = COERCE_DOUBLE(AGGraphGetCounter());

      v77 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v77;
      *(a1 + 32) = *&v9;
      v78 = AGGraphGetCurrentAttribute();
      if (v78 != v75)
      {
        v79 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v79;
        *(a1 + 72) = v78;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(a1 + 144) = v80;
        *(a1 + 112) = 0x746E6961505FLL;
        *(a1 + 120) = 0xE600000000000000;
        if (v71)
        {
          LOBYTE(v225) = LOBYTE(v223.f64[0]);
          v227 = *&v216;
          v228 = &dword_18D018000;
          v257 = v68;
          v258 = v69;
          LOBYTE(v259) = v70;
          v251 = "Animation: (%p) [%d] %{public}@ updated";
          v252 = 39;
          LOBYTE(v253) = 2;
          v226 = a1;
          v81 = v213;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v225, &v228, &v227, &v257, v213, &v251, &v226);

          (*(v219 + 8))(v81, v222);
        }

        else
        {
          v119 = v68;
          if (v68 == 20)
          {
            v120 = 3;
          }

          else
          {
            v120 = 4;
          }

          LODWORD(v121) = bswap32(v68) | (4 * (v68 >> 16));
          LODWORD(v223.f64[0]) = LOBYTE(v223.f64[0]);
          v122 = v219 + 16;
          v203 = *(v219 + 16);
          v123 = v203(*&v220.f64[0], v213, v222);
          v59 = 0;
          LOBYTE(v251) = 1;
          *&v208.f64[0] = 16 * v120;
          v204 = v122;
          v205 = v120;
          v209 = (v122 - 8);
          v206 = v119;
          *&v207.f64[0] = a1 + 32;
          do
          {
            *&v216 = COERCE_DOUBLE(&v197);
            MEMORY[0x1EEE9AC00](v123);
            v9 = &v197 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
            v26 = (v9 + 8);
            v126 = v120;
            v127 = (v9 + 8);
            do
            {
              *(v127 - 1) = 0;
              *v127 = 0;
              v127 += 16;
              --v126;
            }

            while (v126);
            v27 = (*&v207.f64[0] + 40 * v59);
            while (1)
            {
              v128 = *(a1 + 16);
              if (v59 == v128)
              {
                break;
              }

              if (v59 >= v128)
              {
                goto LABEL_180;
              }

              ++v59;
              outlined init with copy of AnyTrackedValue(v27, &v257);
              v129 = *&v260;
              v119 = a1;
              v130 = v261;
              __swift_project_boxed_opaque_existential_1(&v257, *&v260);
              v131 = v130;
              a1 = v119;
              *(v26 - 1) = CVarArg.kdebugValue(_:)(v121 | LODWORD(v223.f64[0]), v129, v131);
              *v26++ = v132 & 1;
              v124 = __swift_destroy_boxed_opaque_existential_1(&v257);
              v27 = (v27 + 40);
              if (!--v120)
              {
                goto LABEL_73;
              }
            }

            LOBYTE(v251) = 0;
LABEL_73:
            v119 = v206;
            if (v206 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (*(v9 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v9 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v9 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v119 != 20 && *(v9 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v133 = *v209;
            v134 = v220.f64[0];
            v135 = v222;
            (*v209)(*&v220.f64[0], v222);
            v136 = __swift_project_value_buffer(v135, static OSSignpostID.continuation);
            v123 = v203(*&v134, v136, v135);
            v120 = v205;
          }

          while ((v251 & 1) != 0);

          v137 = v222;
          v133(*&v220.f64[0], v222);
          v133(v213, v137);
        }

        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_196:
    swift_once();
LABEL_55:
    v108 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v55)
    {
      __break(1u);
LABEL_198:
      __break(1u);
    }

    v110 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    v112 = MEMORY[0x1E69E6870];
    *(v109 + 56) = MEMORY[0x1E69E6810];
    *(v109 + 64) = v112;
    *(v109 + 32) = Counter;
    v113 = AGGraphGetCurrentAttribute();
    if (v113 == v55)
    {
      goto LABEL_198;
    }

    v27 = v109;
    v114 = MEMORY[0x1E69E76D0];
    *(v109 + 96) = MEMORY[0x1E69E7668];
    *(v109 + 104) = v114;
    *(v109 + 72) = v113;
    *(v109 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v109 + 144) = v115;
    *(v109 + 112) = 0x746E6961505FLL;
    *(v109 + 120) = 0xE600000000000000;
    if (v9)
    {
      LOBYTE(v225) = LOBYTE(v223.f64[0]);
      v227 = v108;
      v228 = &dword_18D018000;
      v257 = v68;
      v258 = v69;
      LOBYTE(v259) = v70;
      v251 = "Animation: (%p) [%d] %{public}@ started";
      v252 = 39;
      LOBYTE(v253) = 2;
      v226 = v109;
      v116 = v209;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v225, &v228, &v227, &v257, v209, &v251, &v226);
      v117 = v198;

      (*(v219 + 8))(v116, v222);
    }

    else
    {
      v138 = v68;
      if (v68 == 20)
      {
        v139 = 3;
      }

      else
      {
        v139 = 4;
      }

      LODWORD(v121) = bswap32(v68) | (4 * (v68 >> 16));
      v119 = LOBYTE(v223.f64[0]);
      v140 = v219 + 16;
      v203 = *(v219 + 16);
      v141 = v203(v216, v209, v222);
      v59 = 0;
      LOBYTE(v251) = 1;
      *&v220.f64[0] = v139;
      v204 = v140;
      v205 = v138;
      *&v208.f64[0] = v140 - 8;
      *&v223.f64[0] = v27;
      v206 = &v27[2];
      *&v207.f64[0] = 16 * v139;
      do
      {
        v213 = &v197;
        MEMORY[0x1EEE9AC00](v141);
        v26 = (&v197 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0));
        v9 = v26 + 8;
        v143 = v220.f64[0];
        v144 = v26 + 8;
        do
        {
          *(v144 - 1) = 0;
          *v144 = 0;
          v144 += 16;
          --*&v143;
        }

        while (v143 != 0.0);
        v120 = v206 + 40 * v59;
        a1 = *&v220.f64[0];
        while (1)
        {
          v145 = *(*&v223.f64[0] + 16);
          if (v59 == v145)
          {
            break;
          }

          if (v59 >= v145)
          {
            goto LABEL_181;
          }

          ++v59;
          outlined init with copy of AnyTrackedValue(v120, &v257);
          v146 = *&v260;
          v27 = v261;
          __swift_project_boxed_opaque_existential_1(&v257, *&v260);
          *(v9 - 8) = CVarArg.kdebugValue(_:)(v121 | v119, v146, v27);
          *v9 = v147 & 1;
          v9 += 16;
          v124 = __swift_destroy_boxed_opaque_existential_1(&v257);
          v120 += 40;
          if (!--a1)
          {
            goto LABEL_102;
          }
        }

        LOBYTE(v251) = 0;
LABEL_102:
        v148 = v205;
        if (v205 == 20)
        {
          v27 = v216;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v27 = v216;
        }

        if (*(v26 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v26 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v26 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v148 != 20 && *(v26 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v149 = **&v208.f64[0];
        v150 = v222;
        (**&v208.f64[0])(v27, v222);
        v151 = __swift_project_value_buffer(v150, static OSSignpostID.continuation);
        v141 = v203(v27, v151, v150);
      }

      while ((v251 & 1) != 0);
      v117 = v198;

      v152 = v222;
      v149(v27, v222);
      v149(v209, v152);
    }

    a1 = v210;
    a4 = v211;
    *(v211 + 72) = v117;
LABEL_119:
    v27 = &v232;
    v26 = &v263;
LABEL_120:
    a3 = v214;
    v9 = v215;
    specialized AnimatorState.addListeners(transaction:)(v199);

    v153 = v233;
    *v26 = v232;
    v26[1] = v153;
    v26[2] = v27[2];
    LOBYTE(v265[1]) = v235;
    outlined destroy of Slice<IndexSet>(&v263, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

    v35 = v224;
LABEL_121:
    v34 = v201;
  }

  v27 = AGGraphGetAttributeGraph();
  *&v9 = COERCE_DOUBLE(AGGraphGetCounter());

  v171 = MEMORY[0x1E69E6870];
  *(v57 + 56) = MEMORY[0x1E69E6810];
  *(v57 + 64) = v171;
  *(v57 + 32) = *&v9;
  v172 = AGGraphGetCurrentAttribute();
  if (v172 == v59)
  {
    goto LABEL_188;
  }

  v9 = v57;
  v173 = MEMORY[0x1E69E76D0];
  *(v57 + 96) = MEMORY[0x1E69E7668];
  *(v57 + 104) = v173;
  *(v57 + 72) = v172;
  *(v57 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v57 + 144) = v174;
  *(v57 + 112) = 0x746E6961505FLL;
  *(v57 + 120) = 0xE600000000000000;
  if (v58)
  {
    LOBYTE(v251) = LOBYTE(v223.f64[0]);
    v257 = &dword_18D018000;
    *&v236[0] = v56;
    *&v263 = v48;
    *(&v263 + 1) = v50;
    LOBYTE(v264.f64[0]) = v55;
    *&v229.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v229.f64[1] = 37;
    LOBYTE(v230.f64[0]) = 2;
    *&v232.f64[0] = v57;
    v175 = v212;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v251, &v257, v236, &v263, v212, &v229, &v232);

    (*(v219 + 8))(v175, v222);
    goto LABEL_175;
  }

  v120 = v48;
  if (v48 == 20)
  {
    a1 = 3;
  }

  else
  {
    a1 = 4;
  }

  v119 = bswap32(v48) | (4 * WORD1(v48));
  LODWORD(v223.f64[0]) = LOBYTE(v223.f64[0]);
  v177 = v219 + 16;
  v213 = *(v219 + 16);
  v178 = (v213)(v221, v212, v222);
  v59 = 0;
  LOBYTE(v229.f64[0]) = 1;
  v219 = v177;
  *&v218.f64[0] = v177 - 8;
  v216 = (v9 + 32);
  *&v217.f64[0] = 16 * a1;
  v214 = v120;
  v215 = a1;
  do
  {
    *&v220.f64[0] = &v197;
    MEMORY[0x1EEE9AC00](v178);
    v26 = (&v197 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0));
    v121 = v26 + 8;
    v180 = a1;
    v181 = v26 + 8;
    do
    {
      *(v181 - 1) = 0;
      *v181 = 0;
      v181 += 16;
      --v180;
    }

    while (v180);
    v27 = (v216 + 40 * v59);
    while (1)
    {
      v182 = *(v9 + 16);
      if (v59 == v182)
      {
        break;
      }

      if (v59 >= v182)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v195 = v124;
        swift_once();
        v124 = v195;
LABEL_129:
        v166 = *(v119 + 616);
        if (*(v166 + 16) >= 0x43uLL)
        {
          if (*(v166 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v263) = v121;
            BYTE4(v263) = v124 == v59;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v209 = v120;
          v210 = a1;
          v167 = one-time initialization token for animationState;

          if (v167 != -1)
          {
            goto LABEL_186;
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_184:
        v196 = v124;
        swift_once();
        v124 = v196;
        goto LABEL_142;
      }

      ++v59;
      outlined init with copy of AnyTrackedValue(v27, &v263);
      v183 = *&v264.f64[1];
      v120 = v9;
      v184 = *&v265[0];
      __swift_project_boxed_opaque_existential_1(&v263, *&v264.f64[1]);
      v185 = v184;
      v9 = v120;
      *(v121 - 1) = CVarArg.kdebugValue(_:)(v119 | LODWORD(v223.f64[0]), v183, v185);
      *v121 = v186 & 1;
      v121 += 16;
      v124 = __swift_destroy_boxed_opaque_existential_1(&v263);
      v27 = (v27 + 40);
      if (!--a1)
      {
        goto LABEL_160;
      }
    }

    LOBYTE(v229.f64[0]) = 0;
LABEL_160:
    v120 = v214;
    if (v214 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    a1 = v215;
    if (*(v26 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v26 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v26 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v120 != 20 && *(v26 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v187 = **&v218.f64[0];
    v189 = v221;
    v188 = v222;
    (**&v218.f64[0])(v221, v222);
    v190 = __swift_project_value_buffer(v188, static OSSignpostID.continuation);
    v178 = (v213)(v189, v190, v188);
  }

  while ((LOBYTE(v229.f64[0]) & 1) != 0);

  v191 = v222;
  v187(v221, v222);
  v187(v212, v191);
LABEL_175:

LABEL_176:
  specialized AnimatorState.removeListeners()();

  a1 = v210;
  *(v211 + 72) = 0;
  v27 = &v232;
  v26 = &v263;
LABEL_177:
  v192 = v26[7];
  v229 = v26[6];
  v230 = v192;
  v231[0] = v26[8];
  v193 = vdupq_n_s64(0x3F80000000000000uLL);
  *(a1 + 24) = vmulq_f64(v229, v193);
  LOBYTE(v231[1]) = v269;
  *(a1 + 40) = vmulq_f64(v192, v193);
  v257 = *&v231[0];
  LOBYTE(v258) = BYTE8(v231[0]);
  HIDWORD(v258) = HIDWORD(v231[0]);
  LOBYTE(v259) = v231[1];
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v229, &v263, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  ResolvedGradient.animatableData.setter(&v257);

  v194 = v26[7];
  v27[27] = v26[6];
  v27[28] = v194;
  v27[29] = v26[8];
  LOBYTE(v265[1]) = v269;
  outlined destroy of Slice<IndexSet>(&v263, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  *(a1 + 57) = 1;
}

{
  v254 = *MEMORY[0x1E69E9840];
  v224 = type metadata accessor for OSSignpostID();
  v220 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v221 = (&v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v203 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v222 = &v203 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v203 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v223 = &v203 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v203 - v21;
  if (*(a4 + 40))
  {
    Value = AGGraphGetValue();
    if (v24)
    {
      v25 = *Value;
    }

    else
    {
      v25 = -INFINITY;
    }
  }

  else
  {
    v25 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 17) = 1;
  }

  else if (*(a1 + 17) != 1)
  {
    goto LABEL_130;
  }

  ResolvedGradient.animatableData.getter(&v234);
  v26 = *(a4 + 16);
  v27 = v234;
  if (!v26)
  {
    goto LABEL_129;
  }

  v205 = v12;
  v206 = v17;
  v212 = v22;
  v213 = a4;
  v210 = a1;
  v28 = *(a4 + 32);
  v30 = *(a4 + 24);
  v29 = *(a4 + 28);
  v31 = v235;
  LODWORD(v4) = v236;
  v32 = v237;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(v234, v26) & 1) != 0 && v31 == v30)
  {
    if (v32)
    {
      if (v28)
      {
        goto LABEL_48;
      }
    }

    else if ((v28 & 1) == 0 && *&v4 == v29)
    {
      goto LABEL_48;
    }
  }

  LODWORD(v218) = v32;
  *&v219 = v29;
  LODWORD(v225) = v28;
  v217 = a2;
  v209 = a3;
  v208 = v26;

  AGGraphClearUpdate();
  v33 = *(v213 + 16);
  v250 = *v213;
  v251 = v33;
  v252 = *(v213 + 32);
  v253 = *(v213 + 48);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v250, &v244, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedGradient>, lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient, &type metadata for ResolvedGradient, type metadata accessor for AnimatableAttributeHelper);
  v34 = *AGGraphGetValue();

  v35 = v34;
  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v250, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedGradient>, lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient, &type metadata for ResolvedGradient, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v36 = Transaction.effectiveAnimation.getter(v34);
  if (v36)
  {
    v37 = v36;
    a3 = v209;
    goto LABEL_21;
  }

  a3 = v209;
  v37 = v217;
  if (v217)
  {

LABEL_21:
    v230 = v27;
    v231 = v31;
    v232 = v4;
    v233 = v218;
    v244 = v208;
    LOBYTE(v245) = v30;
    v38 = *(&v252 + 1);
    HIDWORD(v245) = LODWORD(v219);
    LOBYTE(v246) = v225 & 1;

    ResolvedGradientVector.add(_:scaledBy:)(&v244, -1.0);
    v25 = *AGGraphGetValue();
    v203 = v37;
    v204 = v34;
    if (!v38)
    {
      v63 = v230;
      v64 = v231;
      v65 = v233;
      a1 = v232;
      v238 = &type metadata for ResolvedGradient;
      type metadata accessor for ResolvedGradient.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == ResolvedGradientVector>.Type, &type metadata for ResolvedGradientVector);

      v66 = swift_dynamicCast();
      if (v66)
      {
        v67 = v244;
      }

      else
      {
        v67 = 0;
      }

      if (v66)
      {
        v68 = v245;
      }

      else
      {
        v68 = 0;
      }

      v207 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA22ResolvedGradientVectorV_Tt4B5(v69, v63, v64 | (a1 << 32), v65, v35, v67, v68, v25);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(a1) = CurrentAttribute;
      LODWORD(v67) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v71) = 0;
      }

      else
      {
        LODWORD(v71) = CurrentAttribute;
      }

      (*(*v37 + 96))(&v238);
      v72 = v238;
      v73 = v239;
      v22 = v240;
      v74 = v241;
      v75 = v243;
      v228 = 0x7FF8000000000000;
      v229 = 0x7FF8000000000000;
      v226 = NAN;
      *&v227 = 1.0;
      v244 = v238;
      v245 = v239;
      v246 = v240;
      v247 = v241;
      v76 = v242;
      v248 = *&v242;
      LOBYTE(v249) = v243;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v244, &v229, &v228, &v227, &v226);
      v77 = v228;
      v4 = v229;
      v78 = v226;
      v79 = *&v227;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_198;
      }

      goto LABEL_41;
    }

    v39 = v230;
    v40 = v231;
    v41 = v233;
    v42 = v232;

    LOBYTE(v244) = 0;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v37, v39, v40 | (v42 << 32), v41, v34, a3, v25);
    v43 = AGGraphGetCurrentAttribute();
    v44 = v43;
    LODWORD(v225) = *MEMORY[0x1E698D3F8];
    if (v43 == v225)
    {
      v45 = 0;
    }

    else
    {
      v45 = v43;
    }

    (*(*v37 + 96))(&v238);
    v47 = v238;
    v46 = v239;
    v49 = v240;
    v48 = v241;
    v50 = v243;
    v228 = 0x7FF8000000000000;
    v229 = 0x7FF8000000000000;
    v226 = NAN;
    *&v227 = 1.0;
    v244 = v238;
    v245 = v239;
    v246 = v240;
    v247 = v241;
    v51 = v242;
    v248 = *&v242;
    LOBYTE(v249) = v243;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v244, &v229, &v228, &v227, &v226);
    v52 = v228;
    v4 = v229;
    v53 = v226;
    v54 = v227;
    if (one-time initialization token for enabledCategories != -1)
    {
      v221 = v228;
      v218 = v227;
      v219 = v226;
      swift_once();
      v54 = v218;
      v53 = v219;
      v52 = v221;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_195:
      swift_once();
LABEL_52:
      v98 = *(&static Signpost.animationState + 1);
      v97 = static Signpost.animationState;
      v99 = word_1ED5283E8;
      v100 = HIBYTE(word_1ED5283E8);
      v101 = byte_1ED5283EA;
      v102 = static os_signpost_type_t.event.getter();
      v244 = v97;
      v245 = v98;
      LOBYTE(v246) = v99;
      BYTE1(v246) = v100;
      BYTE2(v246) = v101;
      if (Signpost.isEnabled.getter())
      {
        LODWORD(v221) = v102;
        v103 = one-time initialization token for _signpostLog;

        if (v103 != -1)
        {
          swift_once();
        }

        v104 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        *&v105 = COERCE_DOUBLE(swift_allocObject());
        *(v105 + 16) = xmmword_18DDAF080;
        v106 = AGGraphGetCurrentAttribute();
        v107 = v225;
        if (v106 == v225)
        {
          __break(1u);
        }

        else
        {
          v108 = AGGraphGetAttributeGraph();
          Counter = AGGraphGetCounter();

          v110 = MEMORY[0x1E69E6870];
          *(v105 + 56) = MEMORY[0x1E69E6810];
          *(v105 + 64) = v110;
          *(v105 + 32) = Counter;
          v111 = AGGraphGetCurrentAttribute();
          if (v111 != v107)
          {
            v112 = v105;
            v113 = MEMORY[0x1E69E76D0];
            *(v105 + 96) = MEMORY[0x1E69E7668];
            *(v105 + 104) = v113;
            *(v105 + 72) = v111;
            v114 = COERCE_DOUBLE(0x800000018DD7ED90);
            *(v105 + 136) = MEMORY[0x1E69E6158];
            lazy protocol witness table accessor for type String and conformance String();
            *(v105 + 144) = v115;
            *(v105 + 112) = 0xD000000000000010;
            *(v105 + 120) = 0x800000018DD7ED90;
            v116 = v206;
            if (v100)
            {
              LOBYTE(v226) = v221;
              v228 = v104;
              v229 = &dword_18D018000;
              v244 = v97;
              v245 = v98;
              LOBYTE(v246) = v99;
              v238 = "Animation: (%p) [%d] %{public}@ updated";
              v239 = 39;
              LOBYTE(v240) = 2;
              v227 = v105;
              specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v226, &v229, &v228, &v244, v206, &v238, &v227);

              (*(v220 + 8))(v116, v224);
            }

            else
            {
              v117 = v97;
              if (v97 == 20)
              {
                a4 = 3;
              }

              else
              {
                a4 = 4;
              }

              v22 = bswap32(v97) | (4 * (v97 >> 16));
              v118 = v221;
              v119 = (v220 + 16);
              v214 = *(v220 + 16);
              v120 = (v214)(v222, v206, v224);
              v121 = 0;
              LOBYTE(v238) = 1;
              v215 = v119;
              v216 = v117;
              v218 = (16 * a4);
              *&v219 = v119 - 8;
              v225 = v112;
              v217 = v112 + 32;
              v211 = a4;
              do
              {
                v221 = &v203;
                MEMORY[0x1EEE9AC00](v120);
                v124 = &v203 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
                a1 = (v124 + 8);
                v125 = a4;
                v126 = v124 + 8;
                do
                {
                  *(v126 - 1) = 0;
                  *v126 = 0;
                  v126 += 16;
                  --v125;
                }

                while (v125);
                v127 = v217 + 40 * v121;
                while (1)
                {
                  v128 = *(v225 + 16);
                  if (v121 == v128)
                  {
                    break;
                  }

                  if (v121 >= v128)
                  {
                    goto LABEL_187;
                  }

                  ++v121;
                  outlined init with copy of AnyTrackedValue(v127, &v244);
                  v129 = v247;
                  v114 = v248;
                  __swift_project_boxed_opaque_existential_1(&v244, v247);
                  *(a1 - 8) = CVarArg.kdebugValue(_:)(v22 | v118, v129, *&v114);
                  *a1 = v130 & 1;
                  a1 += 16;
                  v122 = __swift_destroy_boxed_opaque_existential_1(&v244);
                  v127 += 40;
                  if (!--a4)
                  {
                    goto LABEL_72;
                  }
                }

                LOBYTE(v238) = 0;
LABEL_72:
                v131 = v216;
                if (v216 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                a4 = v211;
                if (v124[8] == 1)
                {
                  kdebug_trace_string();
                }

                if (v124[24] == 1)
                {
                  kdebug_trace_string();
                }

                if (v124[40] == 1)
                {
                  kdebug_trace_string();
                }

                if (v131 != 20 && v124[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v132 = **&v219;
                v133 = v222;
                v114 = *&v224;
                (**&v219)(v222, v224);
                v134 = __swift_project_value_buffer(*&v114, static OSSignpostID.continuation);
                v120 = (v214)(v133, v134, *&v114);
              }

              while ((v238 & 1) != 0);

              v135 = v224;
              v132(v222, v224);
              v132(v206, v135);
            }

LABEL_88:
            a4 = v213;
            goto LABEL_128;
          }
        }

        __break(1u);
        goto LABEL_203;
      }

      goto LABEL_88;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      LODWORD(v221) = v50;
      v55 = static CustomEventTrace.recorder;
      v56 = v225;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v57 = v45;
        v58 = v38;
        v59 = *(v55 + 16);
        LODWORD(v244) = v57;
        BYTE4(v244) = v44 == v56;
        v245 = &type metadata for ResolvedGradient;
        v246 = v4;
        v247 = v52;
        v248 = *&v54;
        v249 = v53;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v219 = v60;

        v61 = v59;
        v38 = v58;
        v62 = v61;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v47, v46, v49, v48, v51, v221);

        goto LABEL_51;
      }

      v84 = v47;
      v85 = v46;
      v86 = v49;
      v87 = v48;
      v88 = v51;
      v89 = v221;
    }

    else
    {
      v84 = v47;
      v85 = v46;
      v86 = v49;
      v87 = v48;
      v88 = v51;
      v89 = v50;
    }

    outlined consume of Animation.Function(v84, v85, v86, v87, v88, v89);
LABEL_51:
    v96 = one-time initialization token for animationState;
    v207 = v38;

    if (v96 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_195;
  }

LABEL_48:
  a1 = v210;
  v22 = v212;
  a4 = v213;
LABEL_129:
  while (1)
  {

    v166 = v237;
    v167 = v235 | (v236 << 32);
    *(a4 + 16) = v27;
    *(a4 + 24) = v167;
    *(a4 + 32) = v166;
LABEL_130:
    v168 = *(a4 + 40);
    if (!v168)
    {
      return;
    }

    ResolvedGradient.animatableData.getter(&v244);
    LOBYTE(v250) = 0;
    v214 = v168;
    v169 = specialized AnimatorState.update(_:at:environment:)(v25, &v244, a3);
    v122 = AGGraphGetCurrentAttribute();
    LODWORD(v114) = *MEMORY[0x1E698D3F8];
    if (v122 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v121) = 0;
    }

    else
    {
      LODWORD(v121) = v122;
    }

    v118 = &type metadata instantiation cache for TupleTypeDescription;
    if (v169)
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
    v183 = *(v118 + 616);
    if (*(v183 + 16) >= 0x43uLL)
    {
      if (*(v183 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v250) = v121;
        BYTE4(v250) = v122 == LODWORD(v114);
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
    v172 = *(&static Signpost.animationState + 1);
    v67 = static Signpost.animationState;
    v173 = word_1ED5283E8;
    v73 = HIBYTE(word_1ED5283E8);
    v174 = byte_1ED5283EA;
    v175 = static os_signpost_type_t.end.getter();
    v221 = v172;
    v222 = v67;
    v250 = __PAIR128__(v172, v67);
    v74 = v173;
    LOBYTE(v251) = v173;
    BYTE1(v251) = v73;
    BYTE2(v251) = v174;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_183;
    }

    LODWORD(v219) = v175;
    v176 = one-time initialization token for _signpostLog;
    v76 = v214;

    if (v176 != -1)
    {
      swift_once();
    }

    v213 = a4;
    v210 = a1;
    v72 = _signpostLog;
    v212 = v22;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_18DDAF080;
    v177 = AGGraphGetCurrentAttribute();
    v75 = v225;
    if (v177 != v225)
    {
      break;
    }

    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    v225 = v77;
    v219 = v79;
    *&v222 = v78;
    swift_once();
    v78 = *&v222;
    v79 = v219;
    v77 = v225;
LABEL_41:
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        LODWORD(v225) = v75;
        v80 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          LODWORD(v222) = v67;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v81 = v71;
          v82 = *(v80 + 16);
          LODWORD(v244) = v81;
          BYTE4(v244) = a1 == v67;
          v245 = &type metadata for ResolvedGradient;
          v246 = v4;
          v247 = v77;
          v248 = v79;
          v249 = v78;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v83 = v82;
          LODWORD(v67) = v222;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v72, v73, v22, v74, v76, v225);

          goto LABEL_91;
        }

        v90 = v72;
        v91 = v73;
        v92 = v22;
        v93 = v74;
        v94 = v76;
        v95 = v225;
      }

      else
      {
        v90 = v72;
        v91 = v73;
        v92 = v22;
        v93 = v74;
        v94 = v76;
        v95 = v75;
      }

      outlined consume of Animation.Function(v90, v91, v92, v93, v94, v95);
LABEL_91:
      v136 = one-time initialization token for animationState;

      if (v136 == -1)
      {
        goto LABEL_92;
      }

      goto LABEL_200;
    }

    __break(1u);
LABEL_200:
    swift_once();
LABEL_92:
    v105 = *(&static Signpost.animationState + 1);
    v97 = static Signpost.animationState;
    v100 = word_1ED5283E8;
    v99 = HIBYTE(word_1ED5283E8);
    v137 = byte_1ED5283EA;
    v138 = static os_signpost_type_t.begin.getter();
    v244 = v97;
    v245 = v105;
    LOBYTE(v246) = v100;
    BYTE1(v246) = v99;
    BYTE2(v246) = v137;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v225) = v138;
      v107 = v67;
      v139 = one-time initialization token for _signpostLog;

      if (v139 != -1)
      {
LABEL_203:
        swift_once();
      }

      v140 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v141 = COERCE_DOUBLE(swift_allocObject());
      *(v141 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v107)
      {
        __break(1u);
LABEL_205:
        __break(1u);
      }

      v142 = AGGraphGetAttributeGraph();
      v143 = AGGraphGetCounter();

      v144 = MEMORY[0x1E69E6870];
      *(v141 + 56) = MEMORY[0x1E69E6810];
      *(v141 + 64) = v144;
      *(v141 + 32) = v143;
      v145 = AGGraphGetCurrentAttribute();
      if (v145 == v107)
      {
        goto LABEL_205;
      }

      v146 = MEMORY[0x1E69E76D0];
      *(v141 + 96) = MEMORY[0x1E69E7668];
      *(v141 + 104) = v146;
      *(v141 + 72) = v145;
      *(v141 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v141 + 144) = v147;
      *(v141 + 112) = 0xD000000000000010;
      *(v141 + 120) = 0x800000018DD7ED90;
      v148 = v205;
      if (v99)
      {
        LOBYTE(v226) = v225;
        v228 = v140;
        v229 = &dword_18D018000;
        v244 = v97;
        v245 = v105;
        LOBYTE(v246) = v100;
        v238 = "Animation: (%p) [%d] %{public}@ started";
        v239 = 39;
        LOBYTE(v240) = 2;
        v227 = v141;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v226, &v229, &v228, &v244, v205, &v238, &v227);
        v149 = v207;

        (*(v220 + 8))(v148, v224);
      }

      else
      {
        v150 = v97;
        if (v97 == 20)
        {
          v151 = 3;
        }

        else
        {
          v151 = 4;
        }

        v118 = bswap32(v97) | (4 * (v97 >> 16));
        LODWORD(v121) = v225;
        *&v114 = v220 + 16;
        v211 = *(v220 + 16);
        v152 = v211(v221, v205, v224);
        v153 = 0;
        LOBYTE(v238) = 1;
        v222 = v151;
        v214 = *&v114;
        v215 = v150;
        v217 = 16 * v151;
        v218 = (*&v114 - 8);
        v225 = v141;
        v216 = v141 + 32;
        do
        {
          v219 = COERCE_DOUBLE(&v203);
          MEMORY[0x1EEE9AC00](v152);
          v22 = &v203 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v22 + 8;
          v155 = v222;
          v156 = (v22 + 8);
          do
          {
            *(v156 - 1) = 0;
            *v156 = 0;
            v156 += 16;
            --v155;
          }

          while (v155);
          a1 = v216 + 40 * v153;
          v157 = v222;
          while (1)
          {
            v158 = *(v225 + 16);
            if (v153 == v158)
            {
              break;
            }

            if (v153 >= v158)
            {
              goto LABEL_188;
            }

            ++v153;
            outlined init with copy of AnyTrackedValue(a1, &v244);
            v159 = v247;
            v114 = v248;
            __swift_project_boxed_opaque_existential_1(&v244, v247);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v118 | v121, v159, *&v114);
            *a4 = v160 & 1;
            a4 += 16;
            v122 = __swift_destroy_boxed_opaque_existential_1(&v244);
            a1 += 40;
            if (!--v157)
            {
              goto LABEL_111;
            }
          }

          LOBYTE(v238) = 0;
LABEL_111:
          v161 = v215;
          if (v215 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          if (*(v22 + 8) == 1)
          {
            kdebug_trace_string();
          }

          if (*(v22 + 24) == 1)
          {
            kdebug_trace_string();
          }

          if (*(v22 + 40) == 1)
          {
            kdebug_trace_string();
          }

          if (v161 != 20 && *(v22 + 56) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v162 = *v218;
          v163 = v221;
          v114 = *&v224;
          (*v218)(v221, v224);
          v164 = __swift_project_value_buffer(*&v114, static OSSignpostID.continuation);
          v152 = v211(v163, v164, *&v114);
        }

        while ((v238 & 1) != 0);
        v149 = v207;

        v165 = v224;
        v162(v221, v224);
        v162(v205, v165);
      }
    }

    else
    {
      v149 = v207;
    }

    a4 = v213;
    *(v213 + 40) = v149;
LABEL_128:
    specialized AnimatorState.addListeners(transaction:)(v204);

    v27 = v234;
    a1 = v210;
    v22 = v212;
    a3 = v209;
  }

  a1 = AGGraphGetAttributeGraph();
  v22 = AGGraphGetCounter();

  v178 = MEMORY[0x1E69E6870];
  *(v71 + 56) = MEMORY[0x1E69E6810];
  *(v71 + 64) = v178;
  *(v71 + 32) = v22;
  v179 = AGGraphGetCurrentAttribute();
  if (v179 == v75)
  {
    goto LABEL_197;
  }

  v180 = MEMORY[0x1E69E76D0];
  *(v71 + 96) = MEMORY[0x1E69E7668];
  *(v71 + 104) = v180;
  *(v71 + 72) = v179;
  *(v71 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v71 + 144) = v181;
  *(v71 + 112) = 0xD000000000000010;
  *(v71 + 120) = 0x800000018DD7ED90;
  v182 = v212;
  if (v73)
  {
    LOBYTE(v228) = LOBYTE(v219);
    v234 = &dword_18D018000;
    v229 = v71;
    v230 = v72;
    *&v250 = v222;
    *(&v250 + 1) = v221;
    LOBYTE(v251) = v74;
    v238 = "Animation: (%p) [%d] %{public}@ ended";
    v239 = 37;
    LOBYTE(v240) = 2;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v228, &v234, &v230, &v250, v212, &v238, &v229);

    (*(v220 + 8))(v182, v224);
    goto LABEL_182;
  }

  v216 = v222;
  if (v222 == 20)
  {
    v184 = 3;
  }

  else
  {
    v184 = 4;
  }

  LODWORD(v121) = bswap32(v222) | (4 * WORD1(v222));
  LODWORD(v225) = LOBYTE(v219);
  v185 = v220 + 16;
  v215 = *(v220 + 16);
  v186 = v215(v223, v212, v224);
  v118 = 0;
  LOBYTE(v238) = 1;
  v222 = v184;
  v220 = v185;
  v218 = (16 * v184);
  *&v219 = v185 - 8;
  v217 = v71 + 32;
  v187 = v71;
  do
  {
    v221 = &v203;
    MEMORY[0x1EEE9AC00](v186);
    v22 = &v203 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v114 = v22 + 8;
    v189 = v222;
    v190 = (v22 + 8);
    do
    {
      *(v190 - 1) = 0;
      *v190 = 0;
      v190 += 16;
      --v189;
    }

    while (v189);
    a1 = v217 + 40 * v118;
    a4 = v222;
    while (1)
    {
      v191 = *(v187 + 16);
      if (v118 == v191)
      {
        break;
      }

      if (v118 >= v191)
      {
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        v201 = v122;
        swift_once();
        v122 = v201;
LABEL_136:
        v170 = *(v118 + 616);
        if (*(v170 + 16) >= 0x43uLL)
        {
          if (*(v170 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v250) = v121;
            BYTE4(v250) = v122 == LODWORD(v114);
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          LODWORD(v225) = LODWORD(v114);
          v171 = one-time initialization token for animationState;

          if (v171 != -1)
          {
            goto LABEL_193;
          }

          goto LABEL_141;
        }

        __break(1u);
LABEL_191:
        v202 = v122;
        swift_once();
        v122 = v202;
        goto LABEL_149;
      }

      ++v118;
      outlined init with copy of AnyTrackedValue(a1, &v250);
      v192 = *(&v251 + 1);
      v193 = v252;
      __swift_project_boxed_opaque_existential_1(&v250, *(&v251 + 1));
      *(*&v114 - 8) = CVarArg.kdebugValue(_:)(v121 | v225, v192, v193);
      **&v114 = v194 & 1;
      *&v114 += 16;
      v122 = __swift_destroy_boxed_opaque_existential_1(&v250);
      a1 += 40;
      if (!--a4)
      {
        goto LABEL_167;
      }
    }

    LOBYTE(v238) = 0;
LABEL_167:
    v195 = v216;
    if (v216 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(v22 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v22 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v22 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v195 != 20 && *(v22 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v196 = **&v219;
    v198 = v223;
    v197 = v224;
    (**&v219)(v223, v224);
    v199 = __swift_project_value_buffer(v197, static OSSignpostID.continuation);
    v186 = v215(v198, v199, v197);
  }

  while ((v238 & 1) != 0);

  v200 = v224;
  v196(v223, v224);
  v196(v212, v200);
LABEL_182:

  a1 = v210;
  a4 = v213;
LABEL_183:
  specialized AnimatorState.removeListeners()();

  *(a4 + 40) = 0;
LABEL_184:
  *&v250 = v244;
  BYTE8(v250) = v245;
  HIDWORD(v250) = HIDWORD(v245);
  LOBYTE(v251) = v246;

  ResolvedGradient.animatableData.setter(&v250);

  *(a1 + 17) = 1;
}

{
  v210 = *MEMORY[0x1E69E9840];
  v192 = type metadata accessor for OSSignpostID();
  v188 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v16 = (&v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v171 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v171 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v171 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v191 = &v171 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v182 = &v171 - v29;
  if (*(a4 + 56))
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
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_129;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v33 = *(a1 + 24);
  if (*(a4 + 48))
  {
    goto LABEL_128;
  }

  v34 = v32;
  v5 = *(a4 + 32);
  v35 = *(a4 + 40);
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  if (v8 != v7 || v9 != v6 || v10 != v5 || v33 != v35)
  {
    v189 = v16;
    v187 = v22;
    v171 = v19;
    v177 = v33;
    v179 = a1;
    AGGraphClearUpdate();
    v36 = *(a4 + 16);
    v205 = *a4;
    v206 = v36;
    v37 = *(a4 + 48);
    v207 = *(a4 + 32);
    v208 = v37;
    v209 = *(a4 + 64);
    v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
    v38 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v39 = Transaction.effectiveAnimation.getter(v38);
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      if (!a2)
      {

        a1 = v179;
        v32 = v34;
        goto LABEL_127;
      }

      v40 = a2;
    }

    v41 = *(&v208 + 1);
    v42 = v8 - v7;
    v43 = v9 - v6;
    v44 = v10 - v5;
    v45 = v177 - v35;
    v46 = *AGGraphGetValue();
    v178 = a4;
    v172 = a3;
    v175 = v46;
    v174 = v38;
    v173 = v40;
    if (v41)
    {
      v171 = v25;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v201.f64[0]) = 0;
      v47.n128_f64[0] = v42;
      v48.n128_f64[0] = v43;
      v49.n128_f64[0] = v44;
      v176 = v41;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v40, v38, a3, v47, v48, v49, v45, v46);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v51 = CurrentAttribute;
      LODWORD(v52) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v53) = 0;
      }

      else
      {
        LODWORD(v53) = CurrentAttribute;
      }

      (*(*v40 + 96))(&v197);
      v54 = *&v197.f64[1];
      v4 = *&v197.f64[0];
      v55 = v198;
      v196 = NAN;
      v195 = NAN;
      *&v194 = 1.0;
      v193 = NAN;
      v201 = v197;
      v202 = v198;
      v56 = *(&v198 + 1);
      v189 = v199;
      v203 = *&v199;
      LODWORD(v190) = v200;
      LOBYTE(v204) = v200;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v196, &v195, &v194, &v193);
      v32 = v196;
      v5 = v195;
      v6 = *&v194;
      v7 = v193;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_24;
    }

    *&v197.f64[0] = &type metadata for RectangleCornerRadii;
    type metadata accessor for RectangleCornerRadii.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v77 = swift_dynamicCast();
    if (v77)
    {
      v78 = *&v201.f64[0];
    }

    else
    {
      v78 = 0;
    }

    if (v77)
    {
      v79 = *&v201.f64[1];
    }

    else
    {
      v79 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v80, v38, v78, v79, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v42, v43, v44, v45, v46);
    v81 = AGGraphGetCurrentAttribute();
    a4 = v81;
    LODWORD(v61) = *MEMORY[0x1E698D3F8];
    if (v81 == *MEMORY[0x1E698D3F8])
    {
      v82 = 0;
    }

    else
    {
      v82 = v81;
    }

    (*(*v40 + 96))(&v197);
    v83 = v197;
    v84 = v198;
    v85 = v199;
    v196 = NAN;
    v195 = NAN;
    *&v194 = 1.0;
    v193 = NAN;
    v201 = v197;
    v202 = v198;
    v203 = *&v199;
    LODWORD(v190) = v200;
    LOBYTE(v204) = v200;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v196, &v195, &v194, &v193);
    v32 = v196;
    v5 = v195;
    v6 = *&v194;
    v7 = v193;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_199;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        v187 = v85;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v86 = *(v84 + 16);
        LODWORD(v201.f64[0]) = v82;
        BYTE4(v201.f64[0]) = a4 == LODWORD(v61);
        *&v201.f64[1] = &type metadata for RectangleCornerRadii;
        *&v202 = v32;
        *(&v202 + 1) = v5;
        v203 = v6;
        v204 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v87 = v86;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v83.f64[0], *&v83.f64[1], v84, *(&v84 + 1), v187, v190);

        goto LABEL_88;
      }

      v89 = *&v83.f64[1];
      v88 = *&v83.f64[0];
      v90 = v84;
    }

    else
    {
      v89 = *&v83.f64[1];
      v88 = *&v83.f64[0];
      v90 = v84;
    }

    outlined consume of Animation.Function(v88, v89, v90, *(&v84 + 1), v85, v190);
LABEL_88:
    v108 = one-time initialization token for animationState;

    a4 = v178;
    v32 = v175;
    if (v108 == -1)
    {
LABEL_89:
      v66 = *(&static Signpost.animationState + 1);
      *&v62 = static Signpost.animationState;
      v4 = word_1ED5283E8;
      v63 = HIBYTE(word_1ED5283E8);
      v109 = byte_1ED5283EA;
      LOBYTE(v68) = static os_signpost_type_t.begin.getter();
      v201 = __PAIR128__(v66, *&v62);
      LOBYTE(v202) = v4;
      BYTE1(v202) = v63;
      BYTE2(v202) = v109;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v119 = v176;

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
        goto LABEL_96;
      }

      v110 = one-time initialization token for _signpostLog;

      if (v110 != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_91;
    }

LABEL_199:
    swift_once();
    goto LABEL_89;
  }

  v32 = v34;
LABEL_128:
  while (1)
  {
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = v10;
    *(a4 + 40) = v33;
    *(a4 + 48) = 0;
LABEL_129:
    v53 = *(a4 + 56);
    if (!v53)
    {
      return;
    }

    v137 = *(a1 + 16);
    v201 = *a1;
    v202 = v137;

    LOBYTE(v205) = 0;
    v138 = specialized AnimatorState.update(_:at:environment:)(&v201, a3, v32);
    v97 = AGGraphGetCurrentAttribute();
    LODWORD(v52) = *MEMORY[0x1E698D3F8];
    if (v97 == *MEMORY[0x1E698D3F8])
    {
      v93 = 0;
    }

    else
    {
      v93 = v97;
    }

    v96 = &type metadata instantiation cache for TupleTypeDescription;
    if (v138)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v150 = *(v96 + 616);
    if (*(v150 + 16) >= 0x43uLL)
    {
      if (*(v150 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v205) = v93;
        BYTE4(v205) = v97 == v52;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v141 = *(&static Signpost.animationState + 1);
    v56 = static Signpost.animationState;
    v55 = word_1ED5283E8;
    v51 = HIBYTE(word_1ED5283E8);
    v142 = byte_1ED5283EA;
    v53 = static os_signpost_type_t.end.getter();
    v205 = __PAIR128__(v141, v56);
    LOBYTE(v206) = v55;
    BYTE1(v206) = v51;
    BYTE2(v206) = v142;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    v179 = a1;
    v143 = one-time initialization token for _signpostLog;

    if (v143 != -1)
    {
      swift_once();
    }

    v178 = a4;
    *&v54 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v52)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
LABEL_24:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_197:
      swift_once();
      goto LABEL_31;
    }

    v57 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v186) = v52;
    if (v57 && (v58 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v59 = *(v58 + 16);
      LODWORD(v201.f64[0]) = v53;
      BYTE4(v201.f64[0]) = v51 == v52;
      *&v201.f64[1] = &type metadata for RectangleCornerRadii;
      *&v202 = v32;
      *(&v202 + 1) = v5;
      v203 = v6;
      v204 = v7;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v60 = v59;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v4, v54, v55, v56, v189, v190);
    }

    else
    {
      outlined consume of Animation.Function(v4, v54, v55, v56, v189, v190);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
    v32 = v175;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_197;
    }

LABEL_31:
    v62 = *(&static Signpost.animationState + 1);
    *&v61 = static Signpost.animationState;
    v63 = word_1ED5283E8;
    v64 = HIBYTE(word_1ED5283E8);
    v65 = byte_1ED5283EA;
    v66 = static os_signpost_type_t.event.getter();
    v201 = __PAIR128__(*&v62, *&v61);
    LOBYTE(v202) = v63;
    BYTE1(v202) = v64;
    BYTE2(v202) = v65;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
LABEL_85:
      a4 = v178;
      a3 = v172;
      goto LABEL_126;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v67 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v68 = COERCE_DOUBLE(swift_allocObject());
    *(v68 + 16) = xmmword_18DDAF080;
    v69 = AGGraphGetCurrentAttribute();
    v4 = v186;
    if (v69 == v186)
    {
      __break(1u);
    }

    else
    {
      v70 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v72 = MEMORY[0x1E69E6870];
      *(v68 + 56) = MEMORY[0x1E69E6810];
      *(v68 + 64) = v72;
      *(v68 + 32) = Counter;
      v73 = AGGraphGetCurrentAttribute();
      if (v73 != v4)
      {
        v74 = MEMORY[0x1E69E76D0];
        *(v68 + 96) = MEMORY[0x1E69E7668];
        *(v68 + 104) = v74;
        *(v68 + 72) = v73;
        *(v68 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v68 + 144) = v75;
        *(v68 + 112) = 0xD000000000000014;
        *(v68 + 120) = 0x800000018DD7EC90;
        if (v64)
        {
          LOBYTE(v193) = v66;
          v196 = COERCE_DOUBLE(&dword_18D018000);
          v195 = v67;
          v201.f64[0] = v61;
          v201.f64[1] = v62;
          LOBYTE(v202) = v63;
          *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v197.f64[1] = 39;
          LOBYTE(v198) = 2;
          v194 = v68;
          v76 = v171;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v201, v171, &v197, &v194);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
          (*(v188 + 8))(v76, v192);
        }

        else
        {
          v91 = LOBYTE(v61);
          if (LOBYTE(v61) == 20)
          {
            v52 = 3;
          }

          else
          {
            v52 = 4;
          }

          v92 = bswap32(LOWORD(v61)) | (4 * HIWORD(LODWORD(v61)));
          v93 = v66;
          v94 = (v188 + 16);
          v180 = *(v188 + 16);
          v95 = v180(v187, v171, v192);
          v96 = 0;
          LOBYTE(v197.f64[0]) = 1;
          v190 = v52;
          v185 = 16 * v52;
          v181 = v94;
          v186 = (v94 - 8);
          v184 = v68 + 32;
          v183 = v91;
          do
          {
            v189 = &v171;
            MEMORY[0x1EEE9AC00](v95);
            a1 = &v171 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = a1 + 8;
            v99 = v190;
            v100 = (a1 + 8);
            do
            {
              *(v100 - 1) = 0;
              *v100 = 0;
              v100 += 16;
              v99 = (v99 - 1);
            }

            while (v99);
            v4 = v184 + 40 * v96;
            v53 = v190;
            while (1)
            {
              v101 = *(v68 + 16);
              if (v96 == v101)
              {
                break;
              }

              if (v96 >= v101)
              {
                goto LABEL_186;
              }

              ++v96;
              outlined init with copy of AnyTrackedValue(v4, &v201);
              v52 = *(&v202 + 1);
              v102 = *&v203;
              __swift_project_boxed_opaque_existential_1(&v201, *(&v202 + 1));
              *(a4 - 8) = CVarArg.kdebugValue(_:)(v92 | v93, v52, v102);
              *a4 = v103 & 1;
              a4 += 16;
              v97 = __swift_destroy_boxed_opaque_existential_1(&v201);
              v4 += 40;
              if (!--v53)
              {
                goto LABEL_68;
              }
            }

            LOBYTE(v197.f64[0]) = 0;
LABEL_68:
            v4 = v183;
            if (v183 == 20)
            {
              v104 = v187;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v104 = v187;
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

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v105 = *v186;
            v52 = v192;
            (*v186)(v104, v192);
            v106 = __swift_project_value_buffer(v52, static OSSignpostID.continuation);
            v95 = v180(v104, v106, v52);
          }

          while ((LOBYTE(v197.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
          v107 = v192;
          v105(v104, v192);
          v105(v171, v107);
        }

        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_91:
    v111 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v61))
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v112 = AGGraphGetAttributeGraph();
    v113 = AGGraphGetCounter();

    v114 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v114;
    *(a4 + 32) = v113;
    v115 = AGGraphGetCurrentAttribute();
    if (v115 == LODWORD(v61))
    {
      goto LABEL_204;
    }

    v116 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v116;
    *(a4 + 72) = v115;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 144) = v117;
    *(a4 + 112) = 0xD000000000000014;
    *(a4 + 120) = 0x800000018DD7EC90;
    if (v63)
    {
      LOBYTE(v193) = v68;
      v196 = COERCE_DOUBLE(&dword_18D018000);
      v195 = v111;
      v201.f64[0] = v62;
      *&v201.f64[1] = v66;
      LOBYTE(v202) = v4;
      *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v197.f64[1] = 39;
      LOBYTE(v198) = 2;
      v194 = a4;
      v118 = v171;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v201, v171, &v197, &v194);
      v119 = v176;

      (*(v188 + 8))(v118, v192);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
      a4 = v178;
LABEL_96:
      *(a4 + 56) = v119;
    }

    else
    {
      v120 = LOBYTE(v62);
      v121 = v68;
      if (LOBYTE(v62) == 20)
      {
        v122 = 3;
      }

      else
      {
        v122 = 4;
      }

      a1 = bswap32(LOWORD(v62)) | (4 * HIWORD(LODWORD(v62)));
      v93 = v121;
      v52 = v188 + 16;
      v180 = *(v188 + 16);
      v123 = v180(v189, v171, v192);
      v96 = 0;
      LOBYTE(v197.f64[0]) = 1;
      v186 = (16 * v122);
      v181 = v52;
      v187 = (v52 - 8);
      v185 = a4 + 32;
      v183 = v120;
      v184 = v122;
      do
      {
        v190 = &v171;
        MEMORY[0x1EEE9AC00](v123);
        v4 = &v171 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
        v53 = (v4 + 8);
        v125 = v122;
        v126 = (v4 + 8);
        do
        {
          *(v126 - 1) = 0;
          *v126 = 0;
          v126 += 16;
          --v125;
        }

        while (v125);
        v127 = v185 + 40 * v96;
        while (1)
        {
          v128 = *(a4 + 16);
          if (v96 == v128)
          {
            break;
          }

          if (v96 >= v128)
          {
            goto LABEL_187;
          }

          ++v96;
          outlined init with copy of AnyTrackedValue(v127, &v201);
          v52 = *(&v202 + 1);
          v129 = *&v203;
          __swift_project_boxed_opaque_existential_1(&v201, *(&v202 + 1));
          *(v53 - 1) = CVarArg.kdebugValue(_:)(a1 | v93, v52, v129);
          *v53 = v130 & 1;
          v53 += 16;
          v97 = __swift_destroy_boxed_opaque_existential_1(&v201);
          v127 += 40;
          if (!--v122)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v197.f64[0]) = 0;
LABEL_109:
        v131 = v183;
        if (v183 == 20)
        {
          v132 = v189;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v132 = v189;
        }

        v122 = v184;
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

        if (v131 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v52 = *v187;
        v133 = v192;
        (*v187)(v132, v192);
        v134 = __swift_project_value_buffer(v133, static OSSignpostID.continuation);
        v123 = v180(v132, v134, v133);
      }

      while ((LOBYTE(v197.f64[0]) & 1) != 0);
      v135 = v176;

      v136 = v192;
      (v52)(v132, v192);
      (v52)(v171, v136);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<RectangleCornerRadii>, lazy protocol witness table accessor for type RectangleCornerRadii and conformance RectangleCornerRadii, &type metadata for RectangleCornerRadii, type metadata accessor for AnimatableAttributeHelper);
      a4 = v178;
      *(v178 + 56) = v135;
    }

    a3 = v172;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v174);

    a1 = v179;
LABEL_127:
    v33 = v177;
  }

  v144 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v145 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v145;
  *(a1 + 32) = v4;
  v146 = AGGraphGetCurrentAttribute();
  if (v146 == v52)
  {
    goto LABEL_194;
  }

  v147 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v147;
  *(a1 + 72) = v146;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 144) = v148;
  *(a1 + 112) = 0xD000000000000014;
  *(a1 + 120) = 0x800000018DD7EC90;
  if (v51)
  {
    LOBYTE(v193) = v53;
    v196 = COERCE_DOUBLE(&dword_18D018000);
    v195 = *&v54;
    *&v205 = v56;
    *(&v205 + 1) = v141;
    LOBYTE(v206) = v55;
    *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v197.f64[1] = 37;
    LOBYTE(v198) = 2;
    v194 = a1;
    v149 = v182;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v205, v182, &v197, &v194);

    (*(v188 + 8))(v149, v192);
    goto LABEL_181;
  }

  v151 = v56;
  if (v56 == 20)
  {
    v152 = 3;
  }

  else
  {
    v152 = 4;
  }

  v93 = bswap32(v56) | (4 * WORD1(v56));
  v96 = v53;
  v153 = v188 + 16;
  v183 = *(v188 + 16);
  v154 = v183(v191, v182, v192);
  v155 = 0;
  LOBYTE(v197.f64[0]) = 1;
  v190 = v152;
  v186 = (16 * v152);
  v188 = v153;
  v187 = (v153 - 8);
  v185 = a1 + 32;
  v184 = v151;
  do
  {
    v189 = &v171;
    MEMORY[0x1EEE9AC00](v154);
    a4 = &v171 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
    v157 = (a4 + 8);
    v158 = v190;
    v159 = (a4 + 8);
    do
    {
      *(v159 - 1) = 0;
      *v159 = 0;
      v159 += 16;
      v158 = (v158 - 1);
    }

    while (v158);
    v4 = v185 + 40 * v155;
    v52 = v190;
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
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v169 = v97;
        swift_once();
        v97 = v169;
LABEL_135:
        v139 = *(v96 + 616);
        if (*(v139 + 16) >= 0x43uLL)
        {
          if (*(v139 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v205) = v93;
            BYTE4(v205) = v97 == v52;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v140 = one-time initialization token for animationState;
          v181 = v53;

          if (v140 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v170 = v97;
        swift_once();
        v97 = v170;
        goto LABEL_148;
      }

      ++v155;
      outlined init with copy of AnyTrackedValue(v4, &v205);
      v161 = *(&v206 + 1);
      v53 = v207;
      __swift_project_boxed_opaque_existential_1(&v205, *(&v206 + 1));
      *(v157 - 1) = CVarArg.kdebugValue(_:)(v93 | v96, v161, v53);
      *v157 = v162 & 1;
      v157 += 16;
      v97 = __swift_destroy_boxed_opaque_existential_1(&v205);
      v4 += 40;
      if (!--v52)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v197.f64[0]) = 0;
LABEL_166:
    v163 = v184;
    if (v184 == 20)
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

    if (v163 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v164 = *v187;
    v53 = v191;
    v165 = v192;
    (*v187)(v191, v192);
    v166 = __swift_project_value_buffer(v165, static OSSignpostID.continuation);
    v154 = v183(v53, v166, v165);
  }

  while ((LOBYTE(v197.f64[0]) & 1) != 0);

  v167 = v192;
  v164(v191, v192);
  v164(v182, v167);
LABEL_181:

  a1 = v179;
  a4 = v178;
LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(a4 + 56) = 0;
LABEL_183:
  v168 = v202;
  *a1 = v201;
  *(a1 + 16) = v168;
  *(a1 + 32) = 1;
}

{
  v236 = *MEMORY[0x1E69E9840];
  *&v210 = COERCE_DOUBLE(type metadata accessor for OSSignpostID());
  v207 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v14 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v185 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v208 = &v185 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v185 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v209 = &v185 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v199 = &v185 - v26;
  if (*(a4 + 64))
  {
    Value = AGGraphGetValue();
    if (v28)
    {
      v29 = *Value;
    }

    else
    {
      v29 = -INFINITY;
    }
  }

  else
  {
    v29 = -INFINITY;
  }

  v30 = &v232;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 48) = 1;
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_129;
  }

  v5 = *a1;
  v7 = *(a1 + 8);
  v31 = *(a1 + 16);
  v32 = *(a1 + 24);
  v33 = *(a1 + 40);
  if (*(a4 + 56))
  {
    goto LABEL_128;
  }

  *&v6 = v29;
  v35 = *(a4 + 40);
  v34 = *(a4 + 48);
  v36 = *(a4 + 24);
  v4 = *(a4 + 32);
  v8 = *(a4 + 16);
  if (v5 != v8 || v7 != v36 || v31 != v4 || v32 != v35 || v33 != v34)
  {
    v206 = v14;
    v186 = v17;
    v187 = v22;
    v192 = v33;
    v193 = v32;
    v194 = v31;
    v195 = a3;
    AGGraphClearUpdate();
    v37 = *(a4 + 16);
    v232 = *a4;
    v233 = v37;
    v38 = *(a4 + 48);
    v234 = *(a4 + 32);
    *v235 = v38;
    *&v235[12] = *(a4 + 60);
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v232, &v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    v39 = *AGGraphGetValue();

    LODWORD(v14) = v39;
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v40 = Transaction.effectiveAnimation.getter(v39);
    if (v40)
    {
      v41 = v40;
      a3 = v195;
    }

    else
    {
      a3 = v195;
      if (!a2)
      {

        v30 = &v232;
        v29 = *&v6;
        goto LABEL_127;
      }

      v41 = a2;
    }

    v200 = a1;
    v42 = *&v235[16];
    v43 = v5 - v8;
    v190 = v7;
    v44 = v7 - v36;
    v45 = v194 - v4;
    v46 = v193 - v35;
    v47 = v192 - v34;
    v29 = *AGGraphGetValue();
    v198 = a4;
    v188 = v41;
    v189 = v39;
    if (v42)
    {
      v216.f64[0] = v43;
      v216.f64[1] = v44;
      v217 = v45;
      v218 = v46;
      v219 = v47;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v232, &v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v226) = 0;
      v191 = v42;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v41, &v216, v39, a3, v29);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v14) = CurrentAttribute;
      LODWORD(v49) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        v50 = 0;
      }

      else
      {
        v50 = CurrentAttribute;
      }

      LODWORD(v211) = v50;
      (*(*v41 + 96))(&v220);
      v52 = v220;
      v51 = v221;
      v53 = v222;
      v54 = v224;
      Counter = v225;
      v214 = NAN;
      v215 = NAN;
      v212 = NAN;
      *&v213 = 1.0;
      v226 = v220;
      v227 = v221;
      v228 = *&v222;
      v229 = v223;
      v56 = v223;
      v230 = *&v224;
      LOBYTE(v231) = v225;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v226, &v215, &v214, &v213, &v212);
      *&v6 = v214;
      v4 = v215;
      v8 = v212;
      v7 = *&v213;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_25;
    }

    v220 = &type metadata for UnevenRoundedRectangle._Inset;
    type metadata accessor for UnevenRoundedRectangle._Inset.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>);
    v59 = swift_dynamicCast();
    if (v59)
    {
      v60 = v226;
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = v227;
    }

    else
    {
      v61 = 0;
    }

    v216.f64[0] = v43;
    v216.f64[1] = v44;
    v217 = v45;
    v218 = v46;
    v219 = v47;

    v191 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVySfAVySfAVyS2fGGGAVy12CoreGraphics7CGFloatVAVyA0_A0_GGG_Tt4B5Tm(v62, &v216, v39, v60, v61, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>, v29);
    v63 = AGGraphGetCurrentAttribute();
    v64 = v63;
    LODWORD(v65) = *MEMORY[0x1E698D3F8];
    if (v63 == *MEMORY[0x1E698D3F8])
    {
      v66 = 0;
    }

    else
    {
      v66 = v63;
    }

    LODWORD(v208) = v66;
    (*(*v41 + 96))(&v220);
    v68 = v220;
    v67 = v221;
    v69 = v222;
    v70 = v223;
    v71 = v224;
    v214 = NAN;
    v215 = NAN;
    v212 = NAN;
    *&v213 = 1.0;
    v226 = v220;
    v227 = v221;
    v228 = *&v222;
    v229 = v223;
    v230 = *&v224;
    LODWORD(v211) = v225;
    LOBYTE(v231) = v225;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v226, &v215, &v214, &v213, &v212);
    *&v6 = v214;
    v4 = v215;
    v8 = v212;
    v7 = *&v213;
    v30 = &v232;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_199;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v205 = v70;
      v72 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v73 = v64 == v65;
        v204 = v71;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v74 = *(v72 + 16);
        LODWORD(v226) = v208;
        BYTE4(v226) = v73;
        v227 = &type metadata for UnevenRoundedRectangle._Inset;
        v228 = v4;
        v229 = v6;
        v230 = v7;
        v231 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v75 = v74;
        v30 = &v232;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v68, v67, v69, v205, v204, v211);

        goto LABEL_89;
      }

      v82 = v68;
      v83 = v67;
      v84 = v69;
      v85 = v205;
    }

    else
    {
      v82 = v68;
      v83 = v67;
      v84 = v69;
      v85 = v70;
    }

    outlined consume of Animation.Function(v82, v83, v84, v85, v71, v211);
LABEL_89:
    v118 = one-time initialization token for animationState;

    v7 = v190;
    if (v118 == -1)
    {
LABEL_90:
      Counter = *(&static Signpost.animationState + 1);
      v86 = static Signpost.animationState;
      LODWORD(v14) = word_1ED5283E8;
      v88 = HIBYTE(word_1ED5283E8);
      v119 = byte_1ED5283EA;
      v120 = static os_signpost_type_t.begin.getter();
      v226 = v86;
      v227 = Counter;
      LOBYTE(v228) = v14;
      BYTE1(v228) = v88;
      BYTE2(v228) = v119;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v131 = v191;

        goto LABEL_125;
      }

      LODWORD(v211) = v120;
      v121 = one-time initialization token for _signpostLog;

      if (v121 != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_92;
    }

LABEL_199:
    swift_once();
    goto LABEL_90;
  }

  v29 = *&v6;
LABEL_128:
  while (1)
  {
    *(a4 + 16) = v5;
    *(a4 + 24) = v7;
    *(a4 + 32) = v31;
    *(a4 + 40) = v32;
    *(a4 + 48) = v33;
    *(a4 + 56) = 0;
LABEL_129:
    Counter = *(a4 + 64);
    if (!Counter)
    {
      return;
    }

    v198 = a4;
    v147 = *(a1 + 40);
    v148 = *a1;
    v149 = *(a1 + 16);
    v200 = a1;
    v232 = v148;
    v233 = v149;
    *&v234 = v147;

    LOBYTE(v226) = 0;
    v150 = specialized AnimatorState.update(_:at:environment:)(&v232, a3, v29);
    v105 = AGGraphGetCurrentAttribute();
    LODWORD(v49) = *MEMORY[0x1E698D3F8];
    if (v105 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v104) = 0;
    }

    else
    {
      LODWORD(v104) = v105;
    }

    v102 = &type metadata instantiation cache for TupleTypeDescription;
    if (v150)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v162 = *(v102 + 616);
    if (*(v162 + 16) >= 0x43uLL)
    {
      if (*(v162 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v226) = v104;
        BYTE4(v226) = v105 == LODWORD(v49);
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      v163 = v200;
      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v153 = *(&static Signpost.animationState + 1);
    v54 = static Signpost.animationState;
    v53 = word_1ED5283E8;
    v52 = HIBYTE(word_1ED5283E8);
    v154 = byte_1ED5283EA;
    v155 = static os_signpost_type_t.end.getter();
    v226 = v54;
    v227 = v153;
    LOBYTE(v228) = v53;
    BYTE1(v228) = v52;
    BYTE2(v228) = v154;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    LODWORD(v211) = v155;
    v156 = one-time initialization token for _signpostLog;

    if (v156 != -1)
    {
      swift_once();
    }

    *&v51 = COERCE_DOUBLE(_signpostLog);
    v197 = *&Counter;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v56 = COERCE_DOUBLE(swift_allocObject());
    *(v56 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != LODWORD(v49))
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
LABEL_25:
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        LODWORD(v206) = Counter;
        Counter = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          LODWORD(v205) = LODWORD(v49);
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v57 = *(Counter + 16);
          LODWORD(v226) = v211;
          BYTE4(v226) = v14 == LODWORD(v49);
          v227 = &type metadata for UnevenRoundedRectangle._Inset;
          v228 = v4;
          v229 = v6;
          v230 = v7;
          v231 = v8;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v211 = v58;

          v14 = v57;
          LODWORD(v49) = v205;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v52, v51, v53, v56, v54, v206);

          goto LABEL_49;
        }

        v76 = v52;
        v77 = v51;
        v78 = v53;
        v79 = v56;
        v80 = v54;
        v81 = v206;
      }

      else
      {
        v76 = v52;
        v77 = v51;
        v78 = v53;
        v79 = v56;
        v80 = v54;
        v81 = Counter;
      }

      outlined consume of Animation.Function(v76, v77, v78, v79, v80, v81);
LABEL_49:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v232, &v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      v7 = v190;
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_50;
      }

      goto LABEL_197;
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_50:
    v86 = *(&static Signpost.animationState + 1);
    v65 = static Signpost.animationState;
    v87 = word_1ED5283E8;
    v88 = HIBYTE(word_1ED5283E8);
    v89 = byte_1ED5283EA;
    v90 = static os_signpost_type_t.event.getter();
    v226 = v65;
    v227 = v86;
    LOBYTE(v228) = v87;
    BYTE1(v228) = v88;
    BYTE2(v228) = v89;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
LABEL_86:
      a1 = v200;
      a4 = v198;
      v30 = &v232;
      goto LABEL_126;
    }

    LODWORD(v211) = v90;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v232, &v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v91 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v92 = COERCE_DOUBLE(swift_allocObject());
    *(v92 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v49))
    {
      __break(1u);
    }

    else
    {
      LODWORD(v14) = LODWORD(v49);
      v93 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v94 = MEMORY[0x1E69E6870];
      *(v92 + 56) = MEMORY[0x1E69E6810];
      *(v92 + 64) = v94;
      *(v92 + 32) = Counter;
      v95 = AGGraphGetCurrentAttribute();
      if (v95 != v14)
      {
        v96 = MEMORY[0x1E69E76D0];
        *(v92 + 96) = MEMORY[0x1E69E7668];
        *(v92 + 104) = v96;
        *(v92 + 72) = v95;
        *(v92 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v92 + 144) = v97;
        *(v92 + 112) = 0x7465736E495FLL;
        *(v92 + 120) = 0xE600000000000000;
        if (v88)
        {
          LOBYTE(v212) = v211;
          v214 = v91;
          v215 = COERCE_DOUBLE(&dword_18D018000);
          v226 = v65;
          v227 = v86;
          LOBYTE(v228) = v87;
          v220 = "Animation: (%p) [%d] %{public}@ updated";
          v221 = 39;
          LOBYTE(v222) = 2;
          v213 = v92;
          v98 = v187;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v212, &v215, &v214, &v226, v187, &v220, &v213);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          (*(v207 + 8))(v98, v210);
        }

        else
        {
          v99 = v65;
          if (v65 == 20)
          {
            v100 = 3;
          }

          else
          {
            v100 = 4;
          }

          v101 = bswap32(v65) | (4 * WORD1(v65));
          v102 = v211;
          *&v49 = v207 + 16;
          v196 = *(v207 + 16);
          v103 = v196(v208, v187, v210);
          v104 = 0;
          LOBYTE(v220) = 1;
          v206 = v100;
          v197 = v49;
          v203 = 16 * v100;
          v204 = (*&v49 - 8);
          v211 = v92;
          v201 = v99;
          v202 = v92 + 32;
          do
          {
            v205 = &v185;
            MEMORY[0x1EEE9AC00](v103);
            v14 = &v185 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
            v107 = v14 + 8;
            v108 = v206;
            v109 = v14 + 8;
            do
            {
              *(v109 - 1) = 0;
              *v109 = 0;
              v109 += 16;
              v108 = (v108 - 1);
            }

            while (v108);
            Counter = v202 + 40 * v104;
            v30 = v206;
            while (1)
            {
              v110 = *(v211 + 16);
              if (v104 == v110)
              {
                break;
              }

              if (v104 >= v110)
              {
                goto LABEL_186;
              }

              ++v104;
              outlined init with copy of AnyTrackedValue(Counter, &v226);
              v111 = v229;
              v49 = v230;
              __swift_project_boxed_opaque_existential_1(&v226, v229);
              *(v107 - 1) = CVarArg.kdebugValue(_:)(v101 | v102, v111, *&v49);
              *v107 = v112 & 1;
              v107 += 16;
              v105 = __swift_destroy_boxed_opaque_existential_1(&v226);
              Counter += 40;
              if (!--v30)
              {
                goto LABEL_70;
              }
            }

            LOBYTE(v220) = 0;
LABEL_70:
            v113 = v201;
            if (v201 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v14[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v14[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v14[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v113 != 20 && v14[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v114 = *v204;
            v49 = *&v208;
            v115 = v210;
            (*v204)(v208, v210);
            v116 = __swift_project_value_buffer(v115, static OSSignpostID.continuation);
            v103 = v196(*&v49, v116, v115);
          }

          while ((v220 & 1) != 0);
          v14 = type metadata accessor for AnimatableAttributeHelper;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          v117 = v210;
          v114(v208, v210);
          v114(v187, v117);
        }

        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_92:
    v122 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v123 = COERCE_DOUBLE(swift_allocObject());
    *(v123 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v65)
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v124 = AGGraphGetAttributeGraph();
    v125 = AGGraphGetCounter();

    v126 = MEMORY[0x1E69E6870];
    *(v123 + 56) = MEMORY[0x1E69E6810];
    *(v123 + 64) = v126;
    *(v123 + 32) = v125;
    v127 = AGGraphGetCurrentAttribute();
    if (v127 == v65)
    {
      goto LABEL_204;
    }

    v128 = MEMORY[0x1E69E76D0];
    *(v123 + 96) = MEMORY[0x1E69E7668];
    *(v123 + 104) = v128;
    *(v123 + 72) = v127;
    *(v123 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v123 + 144) = v129;
    *(v123 + 112) = 0x7465736E495FLL;
    *(v123 + 120) = 0xE600000000000000;
    v30 = &v232;
    if (v88)
    {
      LOBYTE(v212) = v211;
      v214 = v122;
      v215 = COERCE_DOUBLE(&dword_18D018000);
      v226 = v86;
      v227 = Counter;
      LOBYTE(v228) = v14;
      v220 = "Animation: (%p) [%d] %{public}@ started";
      v221 = 39;
      LOBYTE(v222) = 2;
      v213 = v123;
      v130 = v186;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v212, &v215, &v214, &v226, v186, &v220, &v213);
      v131 = v191;

      (*(v207 + 8))(v130, v210);
    }

    else
    {
      v201 = v86;
      if (v86 == 20)
      {
        v132 = 3;
      }

      else
      {
        v132 = 4;
      }

      LODWORD(v14) = bswap32(v86) | (4 * WORD1(v86));
      v102 = v211;
      *&v49 = v207 + 16;
      v196 = *(v207 + 16);
      v133 = v196(v206, v186, v210);
      v104 = 0;
      LOBYTE(v220) = 1;
      v208 = v132;
      v197 = v49;
      v203 = 16 * v132;
      v204 = (*&v49 - 8);
      v211 = v123;
      v202 = v123 + 32;
      do
      {
        v205 = &v185;
        MEMORY[0x1EEE9AC00](v133);
        v135 = &v185 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = (v135 + 8);
        v136 = v208;
        v137 = v135 + 8;
        do
        {
          *(v137 - 1) = 0;
          *v137 = 0;
          v137 += 16;
          --v136;
        }

        while (v136);
        Counter = v202 + 40 * v104;
        v138 = v208;
        while (1)
        {
          v139 = *(v211 + 16);
          if (v104 == v139)
          {
            break;
          }

          if (v104 >= v139)
          {
            goto LABEL_187;
          }

          ++v104;
          outlined init with copy of AnyTrackedValue(Counter, &v226);
          v140 = v229;
          v49 = v230;
          __swift_project_boxed_opaque_existential_1(&v226, v229);
          *(v30 - 8) = CVarArg.kdebugValue(_:)(v14 | v102, v140, *&v49);
          *v30 = v141 & 1;
          v30 += 16;
          v105 = __swift_destroy_boxed_opaque_existential_1(&v226);
          Counter += 40;
          if (!--v138)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v220) = 0;
LABEL_109:
        v142 = v201;
        if (v201 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v30 = &v232;
        if (v135[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v135[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v135[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v142 != 20 && v135[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v143 = *v204;
        v144 = v206;
        v49 = *&v210;
        (*v204)(v206, v210);
        v145 = __swift_project_value_buffer(*&v49, static OSSignpostID.continuation);
        v133 = v196(v144, v145, *&v49);
      }

      while ((v220 & 1) != 0);
      v131 = v191;

      v146 = v210;
      v143(v206, v210);
      v143(v186, v146);
    }

LABEL_125:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v232, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    a4 = v198;
    *(v198 + 64) = v131;
    a1 = v200;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v189);

    a3 = v195;
LABEL_127:
    v32 = v193;
    v31 = v194;
    v33 = v192;
  }

  Counter = AGGraphGetAttributeGraph();
  v14 = AGGraphGetCounter();

  v157 = MEMORY[0x1E69E6870];
  *(v56 + 56) = MEMORY[0x1E69E6810];
  *(v56 + 64) = v157;
  *(v56 + 32) = v14;
  v158 = AGGraphGetCurrentAttribute();
  if (v158 == LODWORD(v49))
  {
    goto LABEL_194;
  }

  v14 = v56;
  v159 = MEMORY[0x1E69E76D0];
  *(v56 + 96) = MEMORY[0x1E69E7668];
  *(v56 + 104) = v159;
  *(v56 + 72) = v158;
  *(v56 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v56 + 144) = v160;
  *(v56 + 112) = 0x7465736E495FLL;
  *(v56 + 120) = 0xE600000000000000;
  if (v52)
  {
    LOBYTE(v212) = v211;
    v214 = *&v51;
    v215 = COERCE_DOUBLE(&dword_18D018000);
    v226 = v54;
    v227 = v153;
    LOBYTE(v228) = v53;
    v220 = "Animation: (%p) [%d] %{public}@ ended";
    v221 = 37;
    LOBYTE(v222) = 2;
    v213 = v56;
    v161 = v199;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v212, &v215, &v214, &v226, v199, &v220, &v213);

    (*(v207 + 8))(v161, v210);
    goto LABEL_181;
  }

  v30 = v54;
  if (v54 == 20)
  {
    v164 = 3;
  }

  else
  {
    v164 = 4;
  }

  v102 = bswap32(v54) | (4 * WORD1(v54));
  LODWORD(v211) = v211;
  v165 = v207 + 16;
  v201 = *(v207 + 16);
  v166 = (v201)(v209, v199, v210);
  v104 = 0;
  LOBYTE(v220) = 1;
  v207 = v165;
  v205 = (16 * v164);
  v206 = (v165 - 8);
  v203 = v30;
  v204 = (v14 + 32);
  v202 = v164;
  do
  {
    *&v208 = COERCE_DOUBLE(&v185);
    MEMORY[0x1EEE9AC00](v166);
    v168 = &v185 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v49 = v168 + 8;
    v169 = v164;
    v170 = v168 + 8;
    do
    {
      *(v170 - 1) = 0;
      *v170 = 0;
      v170 += 16;
      --v169;
    }

    while (v169);
    Counter = &v204[5 * v104];
    while (1)
    {
      v171 = *(v14 + 2);
      if (v104 == v171)
      {
        break;
      }

      if (v104 >= v171)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v183 = v105;
        swift_once();
        v105 = v183;
LABEL_135:
        v151 = *(v102 + 616);
        if (*(v151 + 16) >= 0x43uLL)
        {
          if (*(v151 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v226) = v104;
            BYTE4(v226) = v105 == LODWORD(v49);
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v152 = one-time initialization token for animationState;

          if (v152 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v184 = v105;
        swift_once();
        v105 = v184;
        goto LABEL_148;
      }

      ++v104;
      outlined init with copy of AnyTrackedValue(Counter, &v226);
      v30 = v14;
      v172 = v229;
      v173 = *&v230;
      __swift_project_boxed_opaque_existential_1(&v226, v229);
      v174 = v173;
      v14 = v30;
      *(*&v49 - 8) = CVarArg.kdebugValue(_:)(v102 | v211, v172, v174);
      **&v49 = v175 & 1;
      *&v49 += 16;
      v105 = __swift_destroy_boxed_opaque_existential_1(&v226);
      Counter += 40;
      if (!--v164)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v220) = 0;
LABEL_166:
    v30 = v203;
    if (v203 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v164 = v202;
    if (v168[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v168[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v168[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v30 != 20 && v168[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v176 = v206->f64[0];
    v178 = v209;
    v177 = v210;
    (*&v206->f64[0])(v209, v210);
    v179 = __swift_project_value_buffer(v177, static OSSignpostID.continuation);
    v166 = (v201)(v178, v179, v177);
  }

  while ((v220 & 1) != 0);

  v180 = v210;
  (*&v176)(v209, v210);
  (*&v176)(v199, v180);
LABEL_181:

LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(v198 + 64) = 0;
  v163 = v200;
  v30 = &v232;
LABEL_183:
  v181 = v234;
  v182 = *(v30 + 16);
  *v163 = *v30;
  *(v163 + 16) = v182;
  *(v163 + 40) = v181;
  *(v163 + 48) = 1;
}

{
  v210 = *MEMORY[0x1E69E9840];
  v192 = type metadata accessor for OSSignpostID();
  v188 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v16 = (&v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v171 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v171 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v171 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v191 = &v171 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v182 = &v171 - v29;
  if (*(a4 + 56))
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
    *(a1 + 33) = 1;
  }

  else if (*(a1 + 33) != 1)
  {
    goto LABEL_129;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v33 = *(a1 + 24);
  if (*(a4 + 48))
  {
    goto LABEL_128;
  }

  v34 = v32;
  v5 = *(a4 + 32);
  v35 = *(a4 + 40);
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  if (v8 != v7 || v9 != v6 || v10 != v5 || v33 != v35)
  {
    v189 = v16;
    v187 = v22;
    v171 = v19;
    v177 = v33;
    v179 = a1;
    AGGraphClearUpdate();
    v36 = *(a4 + 16);
    v205 = *a4;
    v206 = v36;
    v37 = *(a4 + 48);
    v207 = *(a4 + 32);
    v208 = v37;
    v209 = *(a4 + 64);
    v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    v38 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v39 = Transaction.effectiveAnimation.getter(v38);
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      if (!a2)
      {

        a1 = v179;
        v32 = v34;
        goto LABEL_127;
      }

      v40 = a2;
    }

    v41 = *(&v208 + 1);
    v42 = v8 - v7;
    v43 = v9 - v6;
    v44 = v10 - v5;
    v45 = v177 - v35;
    v46 = *AGGraphGetValue();
    v178 = a4;
    v172 = a3;
    v175 = v46;
    v174 = v38;
    v173 = v40;
    if (v41)
    {
      v171 = v25;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v201.f64[0]) = 0;
      v47.n128_f64[0] = v42;
      v48.n128_f64[0] = v43;
      v49.n128_f64[0] = v44;
      v176 = v41;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v40, v38, a3, v47, v48, v49, v45, v46);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v51 = CurrentAttribute;
      LODWORD(v52) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v53) = 0;
      }

      else
      {
        LODWORD(v53) = CurrentAttribute;
      }

      (*(*v40 + 96))(&v197);
      v54 = *&v197.f64[1];
      v4 = *&v197.f64[0];
      v55 = v198;
      v196 = NAN;
      v195 = NAN;
      *&v194 = 1.0;
      v193 = NAN;
      v201 = v197;
      v202 = v198;
      v56 = *(&v198 + 1);
      v189 = v199;
      v203 = *&v199;
      LODWORD(v190) = v200;
      LOBYTE(v204) = v200;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v196, &v195, &v194, &v193);
      v32 = v196;
      v5 = v195;
      v6 = *&v194;
      v7 = v193;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_24;
    }

    *&v197.f64[0] = &type metadata for UnevenRoundedRectangle;
    type metadata accessor for UnevenRoundedRectangle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v77 = swift_dynamicCast();
    if (v77)
    {
      v78 = *&v201.f64[0];
    }

    else
    {
      v78 = 0;
    }

    if (v77)
    {
      v79 = *&v201.f64[1];
    }

    else
    {
      v79 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v80, v38, v78, v79, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v42, v43, v44, v45, v46);
    v81 = AGGraphGetCurrentAttribute();
    a4 = v81;
    LODWORD(v61) = *MEMORY[0x1E698D3F8];
    if (v81 == *MEMORY[0x1E698D3F8])
    {
      v82 = 0;
    }

    else
    {
      v82 = v81;
    }

    (*(*v40 + 96))(&v197);
    v83 = v197;
    v84 = v198;
    v85 = v199;
    v196 = NAN;
    v195 = NAN;
    *&v194 = 1.0;
    v193 = NAN;
    v201 = v197;
    v202 = v198;
    v203 = *&v199;
    LODWORD(v190) = v200;
    LOBYTE(v204) = v200;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v196, &v195, &v194, &v193);
    v32 = v196;
    v5 = v195;
    v6 = *&v194;
    v7 = v193;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_199;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        v187 = v85;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v86 = *(v84 + 16);
        LODWORD(v201.f64[0]) = v82;
        BYTE4(v201.f64[0]) = a4 == LODWORD(v61);
        *&v201.f64[1] = &type metadata for UnevenRoundedRectangle;
        *&v202 = v32;
        *(&v202 + 1) = v5;
        v203 = v6;
        v204 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v87 = v86;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v83.f64[0], *&v83.f64[1], v84, *(&v84 + 1), v187, v190);

        goto LABEL_88;
      }

      v89 = *&v83.f64[1];
      v88 = *&v83.f64[0];
      v90 = v84;
    }

    else
    {
      v89 = *&v83.f64[1];
      v88 = *&v83.f64[0];
      v90 = v84;
    }

    outlined consume of Animation.Function(v88, v89, v90, *(&v84 + 1), v85, v190);
LABEL_88:
    v108 = one-time initialization token for animationState;

    a4 = v178;
    v32 = v175;
    if (v108 == -1)
    {
LABEL_89:
      v66 = *(&static Signpost.animationState + 1);
      *&v62 = static Signpost.animationState;
      v4 = word_1ED5283E8;
      v63 = HIBYTE(word_1ED5283E8);
      v109 = byte_1ED5283EA;
      LOBYTE(v68) = static os_signpost_type_t.begin.getter();
      v201 = __PAIR128__(v66, *&v62);
      LOBYTE(v202) = v4;
      BYTE1(v202) = v63;
      BYTE2(v202) = v109;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v119 = v176;

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
        goto LABEL_96;
      }

      v110 = one-time initialization token for _signpostLog;

      if (v110 != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_91;
    }

LABEL_199:
    swift_once();
    goto LABEL_89;
  }

  v32 = v34;
LABEL_128:
  while (1)
  {
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = v10;
    *(a4 + 40) = v33;
    *(a4 + 48) = 0;
LABEL_129:
    v53 = *(a4 + 56);
    if (!v53)
    {
      return;
    }

    v137 = *(a1 + 16);
    v201 = *a1;
    v202 = v137;

    LOBYTE(v205) = 0;
    v138 = specialized AnimatorState.update(_:at:environment:)(&v201, a3, v32);
    v97 = AGGraphGetCurrentAttribute();
    LODWORD(v52) = *MEMORY[0x1E698D3F8];
    if (v97 == *MEMORY[0x1E698D3F8])
    {
      v93 = 0;
    }

    else
    {
      v93 = v97;
    }

    v96 = &type metadata instantiation cache for TupleTypeDescription;
    if (v138)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v150 = *(v96 + 616);
    if (*(v150 + 16) >= 0x43uLL)
    {
      if (*(v150 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v205) = v93;
        BYTE4(v205) = v97 == v52;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v141 = *(&static Signpost.animationState + 1);
    v56 = static Signpost.animationState;
    v55 = word_1ED5283E8;
    v51 = HIBYTE(word_1ED5283E8);
    v142 = byte_1ED5283EA;
    v53 = static os_signpost_type_t.end.getter();
    v205 = __PAIR128__(v141, v56);
    LOBYTE(v206) = v55;
    BYTE1(v206) = v51;
    BYTE2(v206) = v142;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    v179 = a1;
    v143 = one-time initialization token for _signpostLog;

    if (v143 != -1)
    {
      swift_once();
    }

    v178 = a4;
    *&v54 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v52)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
LABEL_24:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_197:
      swift_once();
      goto LABEL_31;
    }

    v57 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v186) = v52;
    if (v57 && (v58 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v59 = *(v58 + 16);
      LODWORD(v201.f64[0]) = v53;
      BYTE4(v201.f64[0]) = v51 == v52;
      *&v201.f64[1] = &type metadata for UnevenRoundedRectangle;
      *&v202 = v32;
      *(&v202 + 1) = v5;
      v203 = v6;
      v204 = v7;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v60 = v59;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v4, v54, v55, v56, v189, v190);
    }

    else
    {
      outlined consume of Animation.Function(v4, v54, v55, v56, v189, v190);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    v32 = v175;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_197;
    }

LABEL_31:
    v62 = *(&static Signpost.animationState + 1);
    *&v61 = static Signpost.animationState;
    v63 = word_1ED5283E8;
    v64 = HIBYTE(word_1ED5283E8);
    v65 = byte_1ED5283EA;
    v66 = static os_signpost_type_t.event.getter();
    v201 = __PAIR128__(*&v62, *&v61);
    LOBYTE(v202) = v63;
    BYTE1(v202) = v64;
    BYTE2(v202) = v65;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
LABEL_85:
      a4 = v178;
      a3 = v172;
      goto LABEL_126;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v67 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v68 = COERCE_DOUBLE(swift_allocObject());
    *(v68 + 16) = xmmword_18DDAF080;
    v69 = AGGraphGetCurrentAttribute();
    v4 = v186;
    if (v69 == v186)
    {
      __break(1u);
    }

    else
    {
      v70 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v72 = MEMORY[0x1E69E6870];
      *(v68 + 56) = MEMORY[0x1E69E6810];
      *(v68 + 64) = v72;
      *(v68 + 32) = Counter;
      v73 = AGGraphGetCurrentAttribute();
      if (v73 != v4)
      {
        v74 = MEMORY[0x1E69E76D0];
        *(v68 + 96) = MEMORY[0x1E69E7668];
        *(v68 + 104) = v74;
        *(v68 + 72) = v73;
        *(v68 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v68 + 144) = v75;
        *(v68 + 112) = 0xD000000000000016;
        *(v68 + 120) = 0x800000018DD78ED0;
        if (v64)
        {
          LOBYTE(v193) = v66;
          v196 = COERCE_DOUBLE(&dword_18D018000);
          v195 = v67;
          v201.f64[0] = v61;
          v201.f64[1] = v62;
          LOBYTE(v202) = v63;
          *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v197.f64[1] = 39;
          LOBYTE(v198) = 2;
          v194 = v68;
          v76 = v171;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v201, v171, &v197, &v194);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          (*(v188 + 8))(v76, v192);
        }

        else
        {
          v91 = LOBYTE(v61);
          if (LOBYTE(v61) == 20)
          {
            v52 = 3;
          }

          else
          {
            v52 = 4;
          }

          v92 = bswap32(LOWORD(v61)) | (4 * HIWORD(LODWORD(v61)));
          v93 = v66;
          v94 = (v188 + 16);
          v180 = *(v188 + 16);
          v95 = v180(v187, v171, v192);
          v96 = 0;
          LOBYTE(v197.f64[0]) = 1;
          v190 = v52;
          v185 = 16 * v52;
          v181 = v94;
          v186 = (v94 - 8);
          v184 = v68 + 32;
          v183 = v91;
          do
          {
            v189 = &v171;
            MEMORY[0x1EEE9AC00](v95);
            a1 = &v171 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = a1 + 8;
            v99 = v190;
            v100 = (a1 + 8);
            do
            {
              *(v100 - 1) = 0;
              *v100 = 0;
              v100 += 16;
              v99 = (v99 - 1);
            }

            while (v99);
            v4 = v184 + 40 * v96;
            v53 = v190;
            while (1)
            {
              v101 = *(v68 + 16);
              if (v96 == v101)
              {
                break;
              }

              if (v96 >= v101)
              {
                goto LABEL_186;
              }

              ++v96;
              outlined init with copy of AnyTrackedValue(v4, &v201);
              v52 = *(&v202 + 1);
              v102 = *&v203;
              __swift_project_boxed_opaque_existential_1(&v201, *(&v202 + 1));
              *(a4 - 8) = CVarArg.kdebugValue(_:)(v92 | v93, v52, v102);
              *a4 = v103 & 1;
              a4 += 16;
              v97 = __swift_destroy_boxed_opaque_existential_1(&v201);
              v4 += 40;
              if (!--v53)
              {
                goto LABEL_68;
              }
            }

            LOBYTE(v197.f64[0]) = 0;
LABEL_68:
            v4 = v183;
            if (v183 == 20)
            {
              v104 = v187;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v104 = v187;
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

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v105 = *v186;
            v52 = v192;
            (*v186)(v104, v192);
            v106 = __swift_project_value_buffer(v52, static OSSignpostID.continuation);
            v95 = v180(v104, v106, v52);
          }

          while ((LOBYTE(v197.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          v107 = v192;
          v105(v104, v192);
          v105(v171, v107);
        }

        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_91:
    v111 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v61))
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v112 = AGGraphGetAttributeGraph();
    v113 = AGGraphGetCounter();

    v114 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v114;
    *(a4 + 32) = v113;
    v115 = AGGraphGetCurrentAttribute();
    if (v115 == LODWORD(v61))
    {
      goto LABEL_204;
    }

    v116 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v116;
    *(a4 + 72) = v115;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 144) = v117;
    *(a4 + 112) = 0xD000000000000016;
    *(a4 + 120) = 0x800000018DD78ED0;
    if (v63)
    {
      LOBYTE(v193) = v68;
      v196 = COERCE_DOUBLE(&dword_18D018000);
      v195 = v111;
      v201.f64[0] = v62;
      *&v201.f64[1] = v66;
      LOBYTE(v202) = v4;
      *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v197.f64[1] = 39;
      LOBYTE(v198) = 2;
      v194 = a4;
      v118 = v171;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v201, v171, &v197, &v194);
      v119 = v176;

      (*(v188 + 8))(v118, v192);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v178;
LABEL_96:
      *(a4 + 56) = v119;
    }

    else
    {
      v120 = LOBYTE(v62);
      v121 = v68;
      if (LOBYTE(v62) == 20)
      {
        v122 = 3;
      }

      else
      {
        v122 = 4;
      }

      a1 = bswap32(LOWORD(v62)) | (4 * HIWORD(LODWORD(v62)));
      v93 = v121;
      v52 = v188 + 16;
      v180 = *(v188 + 16);
      v123 = v180(v189, v171, v192);
      v96 = 0;
      LOBYTE(v197.f64[0]) = 1;
      v186 = (16 * v122);
      v181 = v52;
      v187 = (v52 - 8);
      v185 = a4 + 32;
      v183 = v120;
      v184 = v122;
      do
      {
        v190 = &v171;
        MEMORY[0x1EEE9AC00](v123);
        v4 = &v171 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
        v53 = (v4 + 8);
        v125 = v122;
        v126 = (v4 + 8);
        do
        {
          *(v126 - 1) = 0;
          *v126 = 0;
          v126 += 16;
          --v125;
        }

        while (v125);
        v127 = v185 + 40 * v96;
        while (1)
        {
          v128 = *(a4 + 16);
          if (v96 == v128)
          {
            break;
          }

          if (v96 >= v128)
          {
            goto LABEL_187;
          }

          ++v96;
          outlined init with copy of AnyTrackedValue(v127, &v201);
          v52 = *(&v202 + 1);
          v129 = *&v203;
          __swift_project_boxed_opaque_existential_1(&v201, *(&v202 + 1));
          *(v53 - 1) = CVarArg.kdebugValue(_:)(a1 | v93, v52, v129);
          *v53 = v130 & 1;
          v53 += 16;
          v97 = __swift_destroy_boxed_opaque_existential_1(&v201);
          v127 += 40;
          if (!--v122)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v197.f64[0]) = 0;
LABEL_109:
        v131 = v183;
        if (v183 == 20)
        {
          v132 = v189;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v132 = v189;
        }

        v122 = v184;
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

        if (v131 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v52 = *v187;
        v133 = v192;
        (*v187)(v132, v192);
        v134 = __swift_project_value_buffer(v133, static OSSignpostID.continuation);
        v123 = v180(v132, v134, v133);
      }

      while ((LOBYTE(v197.f64[0]) & 1) != 0);
      v135 = v176;

      v136 = v192;
      (v52)(v132, v192);
      (v52)(v171, v136);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v178;
      *(v178 + 56) = v135;
    }

    a3 = v172;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v174);

    a1 = v179;
LABEL_127:
    v33 = v177;
  }

  v144 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v145 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v145;
  *(a1 + 32) = v4;
  v146 = AGGraphGetCurrentAttribute();
  if (v146 == v52)
  {
    goto LABEL_194;
  }

  v147 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v147;
  *(a1 + 72) = v146;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 144) = v148;
  *(a1 + 112) = 0xD000000000000016;
  *(a1 + 120) = 0x800000018DD78ED0;
  if (v51)
  {
    LOBYTE(v193) = v53;
    v196 = COERCE_DOUBLE(&dword_18D018000);
    v195 = *&v54;
    *&v205 = v56;
    *(&v205 + 1) = v141;
    LOBYTE(v206) = v55;
    *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v197.f64[1] = 37;
    LOBYTE(v198) = 2;
    v194 = a1;
    v149 = v182;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v205, v182, &v197, &v194);

    (*(v188 + 8))(v149, v192);
    goto LABEL_181;
  }

  v151 = v56;
  if (v56 == 20)
  {
    v152 = 3;
  }

  else
  {
    v152 = 4;
  }

  v93 = bswap32(v56) | (4 * WORD1(v56));
  v96 = v53;
  v153 = v188 + 16;
  v183 = *(v188 + 16);
  v154 = v183(v191, v182, v192);
  v155 = 0;
  LOBYTE(v197.f64[0]) = 1;
  v190 = v152;
  v186 = (16 * v152);
  v188 = v153;
  v187 = (v153 - 8);
  v185 = a1 + 32;
  v184 = v151;
  do
  {
    v189 = &v171;
    MEMORY[0x1EEE9AC00](v154);
    a4 = &v171 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
    v157 = (a4 + 8);
    v158 = v190;
    v159 = (a4 + 8);
    do
    {
      *(v159 - 1) = 0;
      *v159 = 0;
      v159 += 16;
      v158 = (v158 - 1);
    }

    while (v158);
    v4 = v185 + 40 * v155;
    v52 = v190;
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
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v169 = v97;
        swift_once();
        v97 = v169;
LABEL_135:
        v139 = *(v96 + 616);
        if (*(v139 + 16) >= 0x43uLL)
        {
          if (*(v139 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v205) = v93;
            BYTE4(v205) = v97 == v52;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v140 = one-time initialization token for animationState;
          v181 = v53;

          if (v140 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v170 = v97;
        swift_once();
        v97 = v170;
        goto LABEL_148;
      }

      ++v155;
      outlined init with copy of AnyTrackedValue(v4, &v205);
      v161 = *(&v206 + 1);
      v53 = v207;
      __swift_project_boxed_opaque_existential_1(&v205, *(&v206 + 1));
      *(v157 - 1) = CVarArg.kdebugValue(_:)(v93 | v96, v161, v53);
      *v157 = v162 & 1;
      v157 += 16;
      v97 = __swift_destroy_boxed_opaque_existential_1(&v205);
      v4 += 40;
      if (!--v52)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v197.f64[0]) = 0;
LABEL_166:
    v163 = v184;
    if (v184 == 20)
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

    if (v163 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v164 = *v187;
    v53 = v191;
    v165 = v192;
    (*v187)(v191, v192);
    v166 = __swift_project_value_buffer(v165, static OSSignpostID.continuation);
    v154 = v183(v53, v166, v165);
  }

  while ((LOBYTE(v197.f64[0]) & 1) != 0);

  v167 = v192;
  v164(v191, v192);
  v164(v182, v167);
LABEL_181:

  a1 = v179;
  a4 = v178;
LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(a4 + 56) = 0;
LABEL_183:
  v168 = v202;
  *a1 = v201;
  *(a1 + 16) = v168;
  *(a1 + 33) = 1;
}

{
  v276 = *MEMORY[0x1E69E9840];
  v204 = type metadata accessor for OSSignpostID();
  v200 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v9 = &v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v184 - v11;
  MEMORY[0x1EEE9AC00](v13);
  Counter = (&v184 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v184 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v203 = &v184 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v193 = &v184 - v22;
  if (*(a4 + 152))
  {
    Value = AGGraphGetValue();
    if (v24)
    {
      v25 = *Value;
    }

    else
    {
      v25 = -INFINITY;
    }
  }

  else
  {
    v25 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 256) = 1;
  }

  else if (*(a1 + 256) != 1)
  {
    goto LABEL_120;
  }

  RoundedRectangularShapeCorners.animatableData.getter(&v219);
  v26 = *(a4 + 96);
  v27 = *(a4 + 128);
  v256 = *(a4 + 112);
  v257 = v27;
  v28 = *(a4 + 32);
  v29 = *(a4 + 64);
  v252 = *(a4 + 48);
  v253 = v29;
  v31 = *(a4 + 64);
  v30 = *(a4 + 80);
  v32 = v30;
  v255 = *(a4 + 96);
  v254 = v30;
  v33 = *(a4 + 32);
  v250 = *(a4 + 16);
  v251 = v33;
  v34 = *(a4 + 128);
  v265 = v256;
  v266 = v34;
  v261 = v252;
  v262 = v31;
  v264 = v26;
  v263 = v32;
  v258 = *(a4 + 144);
  v267 = *(a4 + 144);
  v260 = v28;
  v259 = v250;
  if (_s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOg(&v259) == 1)
  {
    goto LABEL_119;
  }

  v218[4] = v254;
  v218[5] = v255;
  v218[6] = v256;
  v218[7] = v257;
  v218[0] = v250;
  v218[1] = v251;
  v218[2] = v252;
  v218[3] = v253;
  if (specialized static RoundedRectangularShapeCorners.AnimatableData.== infix(_:_:)())
  {
    goto LABEL_119;
  }

  v202 = v9;
  v199 = Counter;
  v184 = v12;
  v185 = v18;
  v188 = a3;
  AGGraphClearUpdate();
  v35 = *(a4 + 144);
  v247 = *(a4 + 128);
  v248 = v35;
  v249 = *(a4 + 160);
  v36 = *(a4 + 80);
  v243 = *(a4 + 64);
  v244 = v36;
  v37 = *(a4 + 112);
  v245 = *(a4 + 96);
  v246 = v37;
  v38 = *(a4 + 16);
  v239 = *a4;
  v240 = v38;
  v39 = *(a4 + 48);
  v241 = *(a4 + 32);
  v242 = v39;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v239, &v231, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
  Counter = &type metadata for RoundedRectangularShapeCorners;
  v40 = *AGGraphGetValue();

  LOBYTE(v9) = v40;
  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v189 = Transaction.effectiveAnimation.getter(v40);
  if (v189)
  {
    a3 = v188;
  }

  else
  {
    a3 = v188;
    if (!a2)
    {

      goto LABEL_119;
    }

    v189 = a2;
  }

  v194 = a1;
  v214 = v223;
  v215 = v224;
  v216 = v225;
  v217 = v226;
  v210 = v219;
  v211 = v220;
  v212 = v221;
  v213 = v222;
  v235 = v223;
  v236 = v224;
  v237 = v225;
  v238 = v226;
  v231 = v219;
  v232 = v220;
  v41 = *(&v248 + 1);
  v233 = v221;
  v234 = v222;
  static RoundedRectangularShapeCorners.AnimatableData.- infix(_:_:)(&v231);
  v25 = *AGGraphGetValue();
  v192 = a4;
  v186 = v40;
  if (!v41)
  {
    v235 = v214;
    v236 = v215;
    v237 = v216;
    v238 = v217;
    v231 = v210;
    v232 = v211;
    v233 = v212;
    v234 = v213;
    *&v227 = &type metadata for RoundedRectangularShapeCorners;
    type metadata accessor for RoundedRectangularShapeCorners.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == RoundedRectangularShapeCorners.AnimatableData>.Type, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
    v70 = swift_dynamicCast();
    if (v70)
    {
      v71 = v268;
    }

    else
    {
      v71 = 0;
    }

    if (v70)
    {
      v72 = *(&v268 + 1);
    }

    else
    {
      v72 = 0;
    }

    v73 = v189;

    v75 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA30RoundedRectangularShapeCornersV14AnimatableDataV_Tt4B5(v74, &v231, v40, v71, v72, v25);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v77 = CurrentAttribute;
    LODWORD(v205) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v205)
    {
      v78 = 0;
    }

    else
    {
      v78 = CurrentAttribute;
    }

    LODWORD(v199) = v78;
    (*(*v73 + 96))(&v227);
    v79 = v227;
    v80 = v229;
    v208 = NAN;
    v209 = 0x7FF8000000000000;
    v206 = NAN;
    v207 = 0x3FF0000000000000;
    v268 = v227;
    v81 = v228;
    v269 = v228;
    v82 = *(&v228 + 1);
    *&v270 = v229;
    LODWORD(v201) = v230;
    BYTE8(v270) = v230;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v268, &v209, &v208, &v207, &v206);
    v83 = *&v208;
    v84 = v209;
    v85 = v206;
    v86 = v207;
    if (one-time initialization token for enabledCategories != -1)
    {
      v197 = v207;
      v198 = v209;
      v195 = v206;
      *&v196 = v208;
      swift_once();
      v85 = v195;
      v83 = v196;
      v86 = v197;
      v84 = v198;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v87 = *(static CustomEventTrace.enabledCategories + 98);
      v187 = v75;
      if (v87 == 1 && (v88 = static CustomEventTrace.recorder) != 0)
      {
        v89 = v77 == v205;
        v198 = v80;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v90 = *(v88 + 16);
        LODWORD(v268) = v199;
        BYTE4(v268) = v89;
        *(&v268 + 1) = &type metadata for RoundedRectangularShapeCorners;
        *&v269 = v84;
        *(&v269 + 1) = v83;
        *&v270 = v86;
        *(&v270 + 1) = v85;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v91 = v90;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v79, *(&v79 + 1), v81, v82, v198, v201);
      }

      else
      {
        outlined consume of Animation.Function(v79, *(&v79 + 1), v81, v82, v80, v201);
      }

      v113 = one-time initialization token for animationState;

      if (v113 == -1)
      {
        goto LABEL_82;
      }
    }

    swift_once();
LABEL_82:
    Counter = *(&static Signpost.animationState + 1);
    *&v59 = static Signpost.animationState;
    LOBYTE(v9) = word_1ED5283E8;
    LOBYTE(v57) = HIBYTE(word_1ED5283E8);
    v114 = byte_1ED5283EA;
    LODWORD(v45) = static os_signpost_type_t.begin.getter();
    v268 = __PAIR128__(Counter, *&v59);
    LOBYTE(v269) = v9;
    BYTE1(v269) = v57;
    BYTE2(v269) = v114;
    v115 = Signpost.isEnabled.getter();
    LODWORD(v58) = v205;
    if ((v115 & 1) == 0)
    {
      Counter = v187;

      goto LABEL_117;
    }

    v116 = one-time initialization token for _signpostLog;

    if (v116 != -1)
    {
      goto LABEL_193;
    }

    goto LABEL_84;
  }

  v272 = v214;
  v273 = v215;
  v274 = v216;
  v275 = v217;
  v268 = v210;
  v269 = v211;
  v270 = v212;
  v271 = v213;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v239, &v231, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v231) = 0;
  v42 = v189;
  v187 = v41;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v189, &v268, v40, a3, v25);
  v43 = AGGraphGetCurrentAttribute();
  v44 = v43;
  LODWORD(v45) = *MEMORY[0x1E698D3F8];
  if (v43 == *MEMORY[0x1E698D3F8])
  {
    v46 = 0;
  }

  else
  {
    v46 = v43;
  }

  LODWORD(v202) = v46;
  (*(*v42 + 96))(&v227);
  Counter = *(&v227 + 1);
  v47 = v227;
  v48 = v228;
  v208 = NAN;
  v209 = 0x7FF8000000000000;
  v206 = NAN;
  v207 = 0x3FF0000000000000;
  v231 = v227;
  v49 = *(&v228 + 1);
  v232 = v228;
  v50 = v229;
  *&v233 = v229;
  LODWORD(v205) = v230;
  BYTE8(v233) = v230;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v231, &v209, &v208, &v207, &v206);
  v51 = *&v208;
  v52 = v209;
  v53 = v206;
  v54 = v207;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_186;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_188:
      swift_once();
      goto LABEL_26;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v9 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v201) = LODWORD(v45);
      v55 = *(v9 + 16);
      LODWORD(v231) = v202;
      BYTE4(v231) = v44 == LODWORD(v45);
      *(&v231 + 1) = &type metadata for RoundedRectangularShapeCorners;
      *&v232 = v52;
      *(&v232 + 1) = v51;
      *&v233 = v54;
      *(&v233 + 1) = v53;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      v202 = v56;

      v45 = COERCE_DOUBLE(v55);
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v47, Counter, v48, v49, v50, v205);

      LODWORD(v45) = v201;
    }

    else
    {
      outlined consume of Animation.Function(v47, Counter, v48, v49, v50, v205);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v239, &v231, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
    Counter = v187;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_188;
    }

LABEL_26:
    v58 = *(&static Signpost.animationState + 1);
    v57 = static Signpost.animationState;
    *&v59 = word_1ED5283E8;
    v60 = HIBYTE(word_1ED5283E8);
    v61 = byte_1ED5283EA;
    v62 = static os_signpost_type_t.event.getter();
    v231 = __PAIR128__(v58, v57);
    LOBYTE(v232) = LOBYTE(v59);
    BYTE1(v232) = v60;
    BYTE2(v232) = v61;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v205) = v62;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v239, &v231, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for _signpostLog != -1)
      {
        swift_once();
      }

      v63 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v64 = COERCE_DOUBLE(swift_allocObject());
      *(v64 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == LODWORD(v45))
      {
        __break(1u);
      }

      else
      {
        LODWORD(v9) = LODWORD(v45);
        v45 = COERCE_DOUBLE(AGGraphGetAttributeGraph());
        Counter = AGGraphGetCounter();

        v65 = MEMORY[0x1E69E6870];
        *(v64 + 56) = MEMORY[0x1E69E6810];
        *(v64 + 64) = v65;
        *(v64 + 32) = Counter;
        v66 = AGGraphGetCurrentAttribute();
        if (v66 != v9)
        {
          v45 = *&v64;
          v67 = MEMORY[0x1E69E76D0];
          *(v64 + 96) = MEMORY[0x1E69E7668];
          *(v64 + 104) = v67;
          *(v64 + 72) = v66;
          *(v64 + 136) = MEMORY[0x1E69E6158];
          lazy protocol witness table accessor for type String and conformance String();
          *(v64 + 144) = v68;
          *(v64 + 112) = 0xD00000000000001ELL;
          *(v64 + 120) = 0x800000018DD7ECF0;
          if (v60)
          {
            LOBYTE(v206) = v205;
            v208 = v63;
            v209 = &dword_18D018000;
            *&v231 = v57;
            *(&v231 + 1) = v58;
            LOBYTE(v232) = LOBYTE(v59);
            *&v227 = "Animation: (%p) [%d] %{public}@ updated";
            *(&v227 + 1) = 39;
            LOBYTE(v228) = 2;
            v207 = v64;
            v69 = v185;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v206, &v209, &v208, &v231, v185, &v227, &v207);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
            (*(v200 + 8))(v69, v204);
          }

          else
          {
            *&v59 = v57;
            if (v57 == 20)
            {
              v92 = 3;
            }

            else
            {
              v92 = 4;
            }

            v93 = bswap32(v57) | (4 * WORD1(v57));
            LODWORD(v205) = v205;
            v94 = (v200 + 16);
            v190 = *(v200 + 16);
            v95 = v190(v199, v185, v204);
            v50 = 0;
            LOBYTE(v227) = 1;
            v202 = v92;
            v191 = *&v94;
            v197 = 16 * v92;
            v198 = v94 - 1;
            v195 = v59;
            v196 = *&v45 + 32;
            do
            {
              v201 = &v184;
              MEMORY[0x1EEE9AC00](v95);
              v98 = &v184 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
              v99 = v98 + 8;
              v100 = v202;
              v101 = v98 + 8;
              do
              {
                *(v101 - 1) = 0;
                *v101 = 0;
                v101 += 16;
                --v100;
              }

              while (v100);
              Counter = (v196 + 40 * v50);
              v102 = v202;
              while (1)
              {
                v103 = *(*&v45 + 16);
                if (v50 == v103)
                {
                  break;
                }

                if (v50 >= v103)
                {
                  goto LABEL_177;
                }

                ++v50;
                outlined init with copy of AnyTrackedValue(Counter, &v231);
                v104 = *(&v232 + 1);
                v59 = v45;
                v105 = v233;
                __swift_project_boxed_opaque_existential_1(&v231, *(&v232 + 1));
                v106 = v105;
                v45 = v59;
                *(v99 - 1) = CVarArg.kdebugValue(_:)(v93 | v205, v104, v106);
                *v99 = v107 & 1;
                v99 += 16;
                v96 = __swift_destroy_boxed_opaque_existential_1(&v231);
                Counter = (Counter + 40);
                if (!--v102)
                {
                  goto LABEL_63;
                }
              }

              LOBYTE(v227) = 0;
LABEL_63:
              v59 = v195;
              if (*&v195 == 20)
              {
                v108 = v199;
                OSSignpostID.rawValue.getter();
                kdebug_trace();
              }

              else
              {
                kdebug_trace();
                v108 = v199;
              }

              if (v98[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v98[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v98[40] == 1)
              {
                kdebug_trace_string();
              }

              if (*&v59 != 20 && v98[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v109 = *v198;
              v110 = v204;
              (*v198)(v108, v204);
              v111 = __swift_project_value_buffer(v110, static OSSignpostID.continuation);
              v95 = v190(v108, v111, v110);
            }

            while ((v227 & 1) != 0);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
            v112 = v204;
            v109(v108, v204);
            v109(v185, v112);
          }

          a4 = v192;
          Counter = v187;
          goto LABEL_118;
        }
      }

      __break(1u);
LABEL_193:
      swift_once();
LABEL_84:
      LODWORD(v201) = LODWORD(v45);
      v117 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v58)
      {
        __break(1u);
LABEL_195:
        __break(1u);
      }

      v119 = AGGraphGetAttributeGraph();
      v120 = AGGraphGetCounter();

      v121 = MEMORY[0x1E69E6870];
      *(v118 + 56) = MEMORY[0x1E69E6810];
      *(v118 + 64) = v121;
      *(v118 + 32) = v120;
      v122 = AGGraphGetCurrentAttribute();
      if (v122 == v58)
      {
        goto LABEL_195;
      }

      v123 = MEMORY[0x1E69E76D0];
      *(v118 + 96) = MEMORY[0x1E69E7668];
      *(v118 + 104) = v123;
      *(v118 + 72) = v122;
      *(v118 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v118 + 144) = v124;
      *(v118 + 112) = 0xD00000000000001ELL;
      *(v118 + 120) = 0x800000018DD7ECF0;
      v125 = v118;
      if (v57)
      {
        LOBYTE(v206) = v201;
        v208 = v117;
        v209 = &dword_18D018000;
        *&v268 = v59;
        *(&v268 + 1) = Counter;
        LOBYTE(v269) = v9;
        *&v227 = "Animation: (%p) [%d] %{public}@ started";
        *(&v227 + 1) = 39;
        LOBYTE(v228) = 2;
        v207 = v118;
        v126 = v184;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v206, &v209, &v208, &v268, v184, &v227, &v207);
        Counter = v187;

        (*(v200 + 8))(v126, v204);
      }

      else
      {
        *&v127 = LOBYTE(v59);
        v128 = LOBYTE(v59) == 20 ? 3 : 4;
        v129 = bswap32(LOWORD(v59)) | (4 * HIWORD(LODWORD(v59)));
        LODWORD(v59) = v201;
        v130 = (v200 + 16);
        v190 = *(v200 + 16);
        v131 = v190(v202, v184, v204);
        v132 = v125;
        v50 = 0;
        LOBYTE(v227) = 1;
        v191 = *&v130;
        v198 = (16 * v128);
        v199 = (v130 - 1);
        v205 = v132;
        v196 = v128;
        v197 = v132 + 32;
        v195 = v127;
        do
        {
          v201 = &v184;
          MEMORY[0x1EEE9AC00](v131);
          Counter = (&v184 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0));
          *&v45 = &Counter->Description;
          v134 = v128;
          p_Description = &Counter->Description;
          do
          {
            *(p_Description - 1) = 0;
            *p_Description = 0;
            p_Description += 2;
            --v134;
          }

          while (v134);
          v93 = v197 + 40 * v50;
          while (1)
          {
            v136 = *(v205 + 16);
            if (v50 == v136)
            {
              break;
            }

            if (v50 >= v136)
            {
              goto LABEL_178;
            }

            ++v50;
            outlined init with copy of AnyTrackedValue(v93, &v268);
            v137 = *(&v269 + 1);
            v138 = v270;
            __swift_project_boxed_opaque_existential_1(&v268, *(&v269 + 1));
            *(*&v45 - 8) = CVarArg.kdebugValue(_:)(v129 | LODWORD(v59), v137, v138);
            **&v45 = v139 & 1;
            *&v45 += 16;
            v96 = __swift_destroy_boxed_opaque_existential_1(&v268);
            v93 += 40;
            --v128;
            if (*&v128 == 0.0)
            {
              goto LABEL_101;
            }
          }

          LOBYTE(v227) = 0;
LABEL_101:
          v140 = v195;
          if (*&v195 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v128 = v196;
          if (LOBYTE(Counter->Description) == 1)
          {
            kdebug_trace_string();
          }

          if (LOBYTE(Counter[1].Description) == 1)
          {
            kdebug_trace_string();
          }

          if (LOBYTE(Counter[2].Description) == 1)
          {
            kdebug_trace_string();
          }

          if (*&v140 != 20 && LOBYTE(Counter[3].Description) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          Kind = v199->Kind;
          v142 = v202;
          v143 = v204;
          (v199->Kind)(v202, v204);
          v144 = __swift_project_value_buffer(v143, static OSSignpostID.continuation);
          v131 = v190(v142, v144, v143);
        }

        while ((v227 & 1) != 0);
        Counter = v187;

        v145 = v204;
        Kind(v202, v204);
        Kind(v184, v145);
      }

LABEL_117:
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
      a4 = v192;
      *(v192 + 152) = Counter;
    }

    else
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v239, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
      a4 = v192;
    }

LABEL_118:
    specialized AnimatorState.addListeners(transaction:)(v186);

    a1 = v194;
    a3 = v188;
LABEL_119:
    v243 = v223;
    v244 = v224;
    v245 = v225;
    v246 = v226;
    v239 = v219;
    v240 = v220;
    v241 = v221;
    v242 = v222;
    _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOi_(&v239);
    v146 = v246;
    *(a4 + 112) = v245;
    *(a4 + 128) = v146;
    *(a4 + 144) = v247;
    v147 = v242;
    *(a4 + 48) = v241;
    *(a4 + 64) = v147;
    v148 = v244;
    *(a4 + 80) = v243;
    *(a4 + 96) = v148;
    v149 = v240;
    *(a4 + 16) = v239;
    *(a4 + 32) = v149;
LABEL_120:
    v45 = *(a4 + 152);
    if (v45 == 0.0)
    {
      return;
    }

    v192 = a4;
    v194 = a1;
    RoundedRectangularShapeCorners.animatableData.getter(&v239);

    LOBYTE(v259) = 0;
    v150 = specialized AnimatorState.update(_:at:environment:)(&v239, a3, v25);
    v96 = AGGraphGetCurrentAttribute();
    v50 = *MEMORY[0x1E698D3F8];
    if (v96 == v50)
    {
      LODWORD(v59) = 0;
    }

    else
    {
      LODWORD(v59) = v96;
    }

    v93 = &type metadata instantiation cache for TupleTypeDescription;
    if (v150)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_179;
      }

      goto LABEL_126;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_181;
    }

LABEL_139:
    v162 = *(v93 + 616);
    if (*(v162 + 16) >= 0x43uLL)
    {
      if (*(v162 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v259) = LODWORD(v59);
        BYTE4(v259) = v96 == v50;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_174;
    }

    __break(1u);
LABEL_183:
    swift_once();
LABEL_131:
    v48 = *(&static Signpost.animationState + 1);
    v153 = static Signpost.animationState;
    v44 = word_1ED5283E8;
    LOBYTE(v9) = HIBYTE(word_1ED5283E8);
    v154 = byte_1ED5283EA;
    v155 = static os_signpost_type_t.end.getter();
    v259 = __PAIR128__(v48, v153);
    LOBYTE(v260) = v44;
    BYTE1(v260) = v9;
    BYTE2(v260) = v154;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_173;
    }

    LODWORD(v205) = v155;
    v156 = one-time initialization token for _signpostLog;

    if (v156 != -1)
    {
      swift_once();
    }

    v47 = _signpostLog;
    v191 = v45;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v50)
    {
      break;
    }

    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    v201 = v52;
    v197 = v51;
    v198 = v54;
    *&v196 = v53;
    swift_once();
    v53 = *&v196;
    v51 = v197;
    v54 = v198;
    v52 = v201;
  }

  v45 = COERCE_DOUBLE(AGGraphGetAttributeGraph());
  Counter = AGGraphGetCounter();

  v157 = MEMORY[0x1E69E6870];
  *(v49 + 56) = MEMORY[0x1E69E6810];
  *(v49 + 64) = v157;
  *(v49 + 32) = Counter;
  v158 = AGGraphGetCurrentAttribute();
  if (v158 == v50)
  {
    goto LABEL_185;
  }

  v159 = MEMORY[0x1E69E76D0];
  *(v49 + 96) = MEMORY[0x1E69E7668];
  *(v49 + 104) = v159;
  *(v49 + 72) = v158;
  *(v49 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v49 + 144) = v160;
  *(v49 + 112) = 0xD00000000000001ELL;
  *(v49 + 120) = 0x800000018DD7ECF0;
  if (v9)
  {
    LOBYTE(v209) = v205;
    *&v218[0] = &dword_18D018000;
    *&v210 = v47;
    *&v259 = v153;
    *(&v259 + 1) = v48;
    LOBYTE(v260) = v44;
    *&v219 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v219 + 1) = 37;
    LOBYTE(v220) = 2;
    *&v227 = v49;
    v161 = v193;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v209, v218, &v210, &v259, v193, &v219, &v227);

    (*(v200 + 8))(v161, v204);
    goto LABEL_172;
  }

  v163 = v153;
  if (v153 == 20)
  {
    v164 = 3;
  }

  else
  {
    v164 = 4;
  }

  v165 = bswap32(v153) | (4 * WORD1(v153));
  v50 = v205;
  v166 = v200 + 16;
  v195 = *(v200 + 16);
  v167 = (*&v195)(v203, v193, v204);
  v59 = 0.0;
  LOBYTE(v219) = 1;
  v202 = v164;
  v200 = v166;
  v198 = (16 * v164);
  v199 = (v166 - 8);
  v205 = v49;
  v196 = v163;
  v197 = v49 + 32;
  do
  {
    v201 = &v184;
    MEMORY[0x1EEE9AC00](v167);
    Counter = (&v184 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0));
    v93 = &Counter->Description;
    v169 = v202;
    v170 = &Counter->Description;
    do
    {
      *(v170 - 1) = 0;
      *v170 = 0;
      v170 += 2;
      --v169;
    }

    while (v169);
    v171 = v197 + 40 * *&v59;
    v172 = v202;
    while (1)
    {
      v173 = *(v205 + 16);
      if (*&v59 == v173)
      {
        break;
      }

      if (*&v59 >= v173)
      {
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        v182 = v96;
        swift_once();
        v96 = v182;
LABEL_126:
        v151 = *(v93 + 616);
        if (*(v151 + 16) >= 0x43uLL)
        {
          if (*(v151 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v259) = LODWORD(v59);
            BYTE4(v259) = v96 == v50;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v152 = one-time initialization token for animationState;

          if (v152 != -1)
          {
            goto LABEL_183;
          }

          goto LABEL_131;
        }

        __break(1u);
LABEL_181:
        v183 = v96;
        swift_once();
        v96 = v183;
        goto LABEL_139;
      }

      ++*&v59;
      outlined init with copy of AnyTrackedValue(v171, &v259);
      v174 = *(&v260 + 1);
      v45 = *&v261;
      __swift_project_boxed_opaque_existential_1(&v259, *(&v260 + 1));
      *(v93 - 8) = CVarArg.kdebugValue(_:)(v165 | v50, v174, *&v45);
      *v93 = v175 & 1;
      v93 += 16;
      v96 = __swift_destroy_boxed_opaque_existential_1(&v259);
      v171 += 40;
      if (!--v172)
      {
        goto LABEL_157;
      }
    }

    LOBYTE(v219) = 0;
LABEL_157:
    v176 = v196;
    if (v196 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (LOBYTE(Counter->Description) == 1)
    {
      kdebug_trace_string();
    }

    if (LOBYTE(Counter[1].Description) == 1)
    {
      kdebug_trace_string();
    }

    if (LOBYTE(Counter[2].Description) == 1)
    {
      kdebug_trace_string();
    }

    if (v176 != 20 && LOBYTE(Counter[3].Description) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v177 = v199->Kind;
    v45 = *&v203;
    v178 = v204;
    (v199->Kind)(v203, v204);
    v179 = __swift_project_value_buffer(v178, static OSSignpostID.continuation);
    v167 = (*&v195)(COERCE_DOUBLE(*&v45), v179, v178);
  }

  while ((v219 & 1) != 0);

  v180 = v204;
  v177(v203, v204);
  v177(v193, v180);
LABEL_172:

LABEL_173:
  specialized AnimatorState.removeListeners()();

  *(v192 + 152) = 0;
LABEL_174:
  v181 = v194;
  v263 = v243;
  v264 = v244;
  v265 = v245;
  v266 = v246;
  v259 = v239;
  v260 = v240;
  v261 = v241;
  v262 = v242;
  RoundedRectangularShapeCorners.animatableData.setter(&v259);

  *(v181 + 256) = 1;
}

{
  v200 = *MEMORY[0x1E69E9840];
  v181 = type metadata accessor for OSSignpostID();
  v178 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v14 = (&v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v162 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v162 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v162 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v180 = &v162 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v171 = &v162 - v27;
  if (*(a4 + 40))
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

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_124;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  if (*(a4 + 32))
  {
    goto LABEL_123;
  }

  v6 = *(a4 + 16);
  v5 = *(a4 + 24);
  if (v7 == *&v6 && v8 == v5)
  {
    goto LABEL_123;
  }

  v177 = v14;
  v176 = v20;
  v162 = v17;
  v168 = a1;
  AGGraphClearUpdate();
  v31 = *(a4 + 16);
  v196 = *a4;
  v197 = v31;
  v198 = *(a4 + 32);
  v199 = *(a4 + 48);
  v4 = &type metadata for ViewSize;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v196, &v191, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
  v32 = *AGGraphGetValue();

  v33 = v32;
  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v34 = Transaction.effectiveAnimation.getter(v32);
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_122;
    }

    v35 = a2;
  }

  v36 = *(&v198 + 1);
  v37 = v7 - *&v6;
  v38 = v8 - v5;
  v30 = *AGGraphGetValue();
  v167 = a4;
  v163 = a3;
  v165 = v33;
  v164 = v35;
  if (!v36)
  {
    *&v186.f64[0] = &type metadata for ViewSize;
    type metadata accessor for ViewSize.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, CGFloat>>.Type, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v69 = swift_dynamicCast();
    if (v69)
    {
      v70 = v191;
    }

    else
    {
      v70 = 0;
    }

    if (v69)
    {
      v71 = *(&v191 + 1);
    }

    else
    {
      v71 = 0;
    }

    v166 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(v72, v33, v70, v71, v37, v38, v30);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    a4 = CurrentAttribute;
    LODWORD(v53) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v74 = 0;
    }

    else
    {
      v74 = CurrentAttribute;
    }

    (*(*v35 + 96))(&v186);
    v75 = v186;
    v76 = v187;
    v77 = v188;
    v78 = v189;
    v185 = NAN;
    v184 = NAN;
    v183 = 0x3FF0000000000000;
    v182 = NAN;
    v191 = v186;
    v192 = *&v187;
    v193 = v188;
    v194 = v189;
    LODWORD(v179) = v190;
    LOBYTE(v195) = v190;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v191, &v185, &v184, &v183, &v182);
    v5 = v185;
    *&v6 = v184;
    v79 = v183;
    v80 = *&v182;
    if (one-time initialization token for enabledCategories != -1)
    {
      v176 = v183;
      v175 = *&v182;
      swift_once();
      v80 = v175;
      v79 = v176;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v81 = static CustomEventTrace.recorder) != 0)
      {
        v82 = a4 == v53;
        v175 = v78;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v176) = v53;
        v53 = v76;
        v83 = *(v81 + 16);
        LODWORD(v191) = v74;
        BYTE4(v191) = v82;
        *(&v191 + 1) = &type metadata for ViewSize;
        v192 = v5;
        v193 = v6;
        v194 = v79;
        v195 = *&v80;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v84 = v83;
        AGGraphAddTraceEvent();
        v85 = v53;
        LODWORD(v53) = v176;
        outlined consume of Animation.Function(*&v75.f64[0], *&v75.f64[1], v85, v77, v175, v179);
      }

      else
      {
        outlined consume of Animation.Function(*&v75.f64[0], *&v75.f64[1], v76, v77, v78, v179);
      }

      v86 = one-time initialization token for animationState;

      a4 = v167;
      if (v86 == -1)
      {
        goto LABEL_53;
      }
    }

    swift_once();
LABEL_53:
    v58 = *(&static Signpost.animationState + 1);
    v54 = static Signpost.animationState;
    LODWORD(v4) = word_1ED5283E8;
    v55 = HIBYTE(word_1ED5283E8);
    v87 = byte_1ED5283EA;
    LOBYTE(v60) = static os_signpost_type_t.begin.getter();
    v191 = __PAIR128__(v58, v54);
    LOBYTE(v192) = v4;
    BYTE1(v192) = v55;
    BYTE2(v192) = v87;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v97 = v166;

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_60;
    }

    v88 = one-time initialization token for _signpostLog;

    if (v88 != -1)
    {
      goto LABEL_197;
    }

    goto LABEL_55;
  }

  v162 = v23;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v196, &v191, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v191) = 0;
  v39.n128_f64[0] = v37;
  v40.n128_f64[0] = v38;
  v166 = v36;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v35, v33, a3, v39, v40, v30);
  v41 = AGGraphGetCurrentAttribute();
  LODWORD(v4) = v41;
  v42 = *MEMORY[0x1E698D3F8];
  if (v41 == *MEMORY[0x1E698D3F8])
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  (*(*v35 + 96))(&v186);
  v44 = *&v186.f64[1];
  v45 = *&v186.f64[0];
  v46 = v187;
  v185 = NAN;
  v184 = NAN;
  v183 = 0x3FF0000000000000;
  v182 = NAN;
  v191 = v186;
  v192 = *&v187;
  v47 = v188;
  v193 = v188;
  v194 = v189;
  v177 = v189;
  LODWORD(v179) = v190;
  LOBYTE(v195) = v190;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v191, &v185, &v184, &v183, &v182);
  v5 = v185;
  *&v6 = v184;
  v48 = v183;
  v49 = v182;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_190;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_192:
      swift_once();
      goto LABEL_28;
    }

    v50 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v175) = v42;
    if (v50 && (v51 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v52 = *(v51 + 16);
      LODWORD(v191) = v43;
      BYTE4(v191) = v4 == v42;
      *(&v191 + 1) = &type metadata for ViewSize;
      v192 = v5;
      v193 = v6;
      v194 = v48;
      v195 = v49;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v4 = v52;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v45, v44, v46, v47, v177, v179);
    }

    else
    {
      outlined consume of Animation.Function(v45, v44, v46, v47, v177, v179);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v196, &v191, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_192;
    }

LABEL_28:
    v54 = *(&static Signpost.animationState + 1);
    v53 = static Signpost.animationState;
    v55 = word_1ED5283E8;
    v56 = HIBYTE(word_1ED5283E8);
    v57 = byte_1ED5283EA;
    v58 = static os_signpost_type_t.event.getter();
    v191 = __PAIR128__(v54, v53);
    LOBYTE(v192) = v55;
    BYTE1(v192) = v56;
    BYTE2(v192) = v57;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
LABEL_91:
      a4 = v167;
      a3 = v163;
      goto LABEL_121;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v196, &v191, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v59 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_18DDAF080;
    v61 = AGGraphGetCurrentAttribute();
    LODWORD(v4) = v175;
    if (v61 == v175)
    {
      __break(1u);
    }

    else
    {
      v62 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v64 = MEMORY[0x1E69E6870];
      *(v60 + 56) = MEMORY[0x1E69E6810];
      *(v60 + 64) = v64;
      *(v60 + 32) = Counter;
      v65 = AGGraphGetCurrentAttribute();
      if (v65 != v4)
      {
        v66 = MEMORY[0x1E69E76D0];
        *(v60 + 96) = MEMORY[0x1E69E7668];
        *(v60 + 104) = v66;
        *(v60 + 72) = v65;
        *(v60 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v60 + 144) = v67;
        *(v60 + 112) = 0x657A695377656956;
        *(v60 + 120) = 0xE800000000000000;
        if (v56)
        {
          LOBYTE(v182) = v58;
          v185 = COERCE_DOUBLE(&dword_18D018000);
          v184 = v59;
          *&v191 = v53;
          *(&v191 + 1) = v54;
          LOBYTE(v192) = v55;
          *&v186.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v186.f64[1] = 39;
          LOBYTE(v187) = 2;
          v183 = v60;
          v68 = v162;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v182, &v185, &v184, &v191, v162, &v186, &v183);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
          (*(v178 + 8))(v68, v181);
        }

        else
        {
          if (v53 == 20)
          {
            v98 = 3;
          }

          else
          {
            v98 = 4;
          }

          v99 = bswap32(v53) | (4 * WORD1(v53));
          a4 = v58;
          v100 = v178 + 16;
          v169 = *(v178 + 16);
          v101 = v169(v176, v162, v181);
          v102 = 0;
          LOBYTE(v186.f64[0]) = 1;
          v179 = v98;
          v174 = 16 * v98;
          v170 = v100;
          v175 = v100 - 8;
          *&v173 = v60 + 32;
          v172 = v53;
          do
          {
            v177 = &v162;
            MEMORY[0x1EEE9AC00](v101);
            a1 = &v162 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
            v47 = a1 + 8;
            v105 = v179;
            v106 = (a1 + 8);
            do
            {
              *(v106 - 1) = 0;
              *v106 = 0;
              v106 += 16;
              v105 = (v105 - 1);
            }

            while (v105);
            v4 = (*&v173 + 40 * v102);
            p_Description = v179;
            while (1)
            {
              v108 = *(v60 + 16);
              if (v102 == v108)
              {
                break;
              }

              if (v102 >= v108)
              {
                goto LABEL_181;
              }

              ++v102;
              outlined init with copy of AnyTrackedValue(v4, &v191);
              v98 = v193;
              v109 = v194;
              __swift_project_boxed_opaque_existential_1(&v191, v193);
              *(v47 - 8) = CVarArg.kdebugValue(_:)(v99 | a4, v98, v109);
              *v47 = v110 & 1;
              v47 += 16;
              v103 = __swift_destroy_boxed_opaque_existential_1(&v191);
              v4 = (v4 + 40);
              if (!--p_Description)
              {
                goto LABEL_74;
              }
            }

            LOBYTE(v186.f64[0]) = 0;
LABEL_74:
            v4 = v172;
            if (v172 == 20)
            {
              v111 = v176;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v111 = v176;
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

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v112 = *v175;
            v98 = v181;
            (*v175)(v111, v181);
            v113 = __swift_project_value_buffer(v98, static OSSignpostID.continuation);
            v101 = v169(v111, v113, v98);
          }

          while ((LOBYTE(v186.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
          v114 = v181;
          v112(v111, v181);
          v112(v162, v114);
        }

        goto LABEL_91;
      }
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_55:
    v89 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v53)
    {
      __break(1u);
LABEL_199:
      __break(1u);
    }

    v90 = AGGraphGetAttributeGraph();
    v91 = AGGraphGetCounter();

    v92 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v92;
    *(a4 + 32) = v91;
    v93 = AGGraphGetCurrentAttribute();
    if (v93 == v53)
    {
      goto LABEL_199;
    }

    v94 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v94;
    *(a4 + 72) = v93;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 144) = v95;
    *(a4 + 112) = 0x657A695377656956;
    *(a4 + 120) = 0xE800000000000000;
    if (v55)
    {
      LOBYTE(v182) = v60;
      v185 = COERCE_DOUBLE(&dword_18D018000);
      v184 = v89;
      *&v191 = v54;
      *(&v191 + 1) = v58;
      LOBYTE(v192) = v4;
      *&v186.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v186.f64[1] = 39;
      LOBYTE(v187) = 2;
      v183 = a4;
      v96 = v162;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v182, &v185, &v184, &v191, v162, &v186, &v183);
      v97 = v166;

      (*(v178 + 8))(v96, v181);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
      a4 = v167;
LABEL_60:
      *(a4 + 40) = v97;
    }

    else
    {
      v115 = v54;
      v116 = v60;
      v117 = v54 == 20 ? 3 : 4;
      a1 = bswap32(v54) | (4 * WORD1(v54));
      v47 = v116;
      v98 = v178 + 16;
      v169 = *(v178 + 16);
      v118 = v169(v177, v162, v181);
      v102 = 0;
      LOBYTE(v186.f64[0]) = 1;
      v175 = 16 * v117;
      v170 = v98;
      v176 = (v98 - 8);
      v174 = a4 + 32;
      v172 = v115;
      v173 = *&v117;
      do
      {
        v179 = &v162;
        MEMORY[0x1EEE9AC00](v118);
        v4 = (&v162 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
        p_Description = &v4->Description;
        v120 = v117;
        v121 = &v4->Description;
        do
        {
          *(v121 - 1) = 0;
          *v121 = 0;
          v121 += 2;
          --v120;
        }

        while (v120);
        v122 = v174 + 40 * v102;
        while (1)
        {
          v123 = *(a4 + 16);
          if (v102 == v123)
          {
            break;
          }

          if (v102 >= v123)
          {
            goto LABEL_182;
          }

          ++v102;
          outlined init with copy of AnyTrackedValue(v122, &v191);
          v98 = v193;
          v124 = v194;
          __swift_project_boxed_opaque_existential_1(&v191, v193);
          *(p_Description - 8) = CVarArg.kdebugValue(_:)(a1 | v47, v98, v124);
          *p_Description = v125 & 1;
          p_Description += 16;
          v103 = __swift_destroy_boxed_opaque_existential_1(&v191);
          v122 += 40;
          if (!--v117)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v186.f64[0]) = 0;
LABEL_104:
        v126 = v172;
        if (v172 == 20)
        {
          v127 = v177;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v127 = v177;
        }

        v117 = *&v173;
        if (LOBYTE(v4->Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[1].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[2].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (v126 != 20 && LOBYTE(v4[3].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v98 = *v176;
        v128 = v181;
        (*v176)(v127, v181);
        v129 = __swift_project_value_buffer(v128, static OSSignpostID.continuation);
        v118 = v169(v127, v129, v128);
      }

      while ((LOBYTE(v186.f64[0]) & 1) != 0);
      v130 = v166;

      v131 = v181;
      (v98)(v127, v181);
      (v98)(v162, v131);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
      a4 = v167;
      *(v167 + 40) = v130;
    }

    a3 = v163;
LABEL_121:
    specialized AnimatorState.addListeners(transaction:)(v165);

LABEL_122:

    a1 = v168;
LABEL_123:
    *(a4 + 16) = v7;
    *(a4 + 24) = v8;
    *(a4 + 32) = 0;
LABEL_124:
    p_Description = *(a4 + 40);
    if (!p_Description)
    {
      return;
    }

    v186 = *a1;

    LOBYTE(v196) = 0;
    v132 = specialized AnimatorState.update(_:at:environment:)(&v186, a3, v30);
    v103 = AGGraphGetCurrentAttribute();
    v47 = *MEMORY[0x1E698D3F8];
    if (v103 == v47)
    {
      LODWORD(v102) = 0;
    }

    else
    {
      LODWORD(v102) = v103;
    }

    v98 = &type metadata instantiation cache for TupleTypeDescription;
    if (v132)
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
    v143 = *(v98 + 616);
    if (*(v143 + 16) >= 0x43uLL)
    {
      if (*(v143 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v196) = v102;
        BYTE4(v196) = v103 == v47;
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
    v46 = *(&static Signpost.animationState + 1);
    v102 = static Signpost.animationState;
    v43 = word_1ED5283E8;
    v45 = HIBYTE(word_1ED5283E8);
    v135 = byte_1ED5283EA;
    v42 = static os_signpost_type_t.end.getter();
    v196 = __PAIR128__(v46, v102);
    LOBYTE(v197) = v43;
    BYTE1(v197) = v45;
    BYTE2(v197) = v135;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_177;
    }

    v168 = a1;
    v136 = one-time initialization token for _signpostLog;

    if (v136 != -1)
    {
      swift_once();
    }

    v167 = a4;
    *&v44 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v47)
    {
      break;
    }

    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    v174 = v48;
    v173 = v49;
    swift_once();
    v49 = v173;
    v48 = v174;
  }

  v137 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v138 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v138;
  *(a1 + 32) = v4;
  v139 = AGGraphGetCurrentAttribute();
  if (v139 == v47)
  {
    goto LABEL_189;
  }

  v140 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v140;
  *(a1 + 72) = v139;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 144) = v141;
  *(a1 + 112) = 0x657A695377656956;
  *(a1 + 120) = 0xE800000000000000;
  if (v45)
  {
    LOBYTE(v182) = v42;
    v185 = COERCE_DOUBLE(&dword_18D018000);
    v184 = *&v44;
    *&v196 = v102;
    *(&v196 + 1) = v46;
    LOBYTE(v197) = v43;
    *&v191 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v191 + 1) = 37;
    LOBYTE(v192) = 2;
    v183 = a1;
    v142 = v171;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v182, &v185, &v184, &v196, v171, &v191, &v183);

    (*(v178 + 8))(v142, v181);
    goto LABEL_176;
  }

  v144 = v102;
  if (v102 == 20)
  {
    p_Description = 3;
  }

  else
  {
    p_Description = 4;
  }

  v47 = bswap32(v102) | (4 * WORD1(v102));
  LODWORD(v102) = v42;
  v98 = v178 + 16;
  v172 = *(v178 + 16);
  v145 = (v172)(v180, v171, v181);
  v146 = 0;
  LOBYTE(v191) = 1;
  v176 = (16 * p_Description);
  v178 = v98;
  v177 = (v98 - 8);
  v175 = a1 + 32;
  v174 = v144;
  v173 = *&p_Description;
  do
  {
    v179 = &v162;
    MEMORY[0x1EEE9AC00](v145);
    a4 = &v162 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
    v148 = (a4 + 8);
    v149 = p_Description;
    v150 = (a4 + 8);
    do
    {
      *(v150 - 1) = 0;
      *v150 = 0;
      v150 += 16;
      --v149;
    }

    while (v149);
    v4 = (v175 + 40 * v146);
    while (1)
    {
      v151 = *(a1 + 16);
      if (v146 == v151)
      {
        break;
      }

      if (v146 >= v151)
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        v160 = v103;
        swift_once();
        v103 = v160;
LABEL_130:
        v133 = *(v98 + 616);
        if (*(v133 + 16) >= 0x43uLL)
        {
          if (*(v133 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v196) = v102;
            BYTE4(v196) = v103 == v47;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v134 = one-time initialization token for animationState;
          v170 = p_Description;

          if (v134 != -1)
          {
            goto LABEL_187;
          }

          goto LABEL_135;
        }

        __break(1u);
LABEL_185:
        v161 = v103;
        swift_once();
        v103 = v161;
        goto LABEL_143;
      }

      ++v146;
      outlined init with copy of AnyTrackedValue(v4, &v196);
      v152 = *(&v197 + 1);
      v98 = v198;
      __swift_project_boxed_opaque_existential_1(&v196, *(&v197 + 1));
      *(v148 - 1) = CVarArg.kdebugValue(_:)(v47 | v102, v152, v98);
      *v148 = v153 & 1;
      v148 += 16;
      v103 = __swift_destroy_boxed_opaque_existential_1(&v196);
      v4 = (v4 + 40);
      if (!--p_Description)
      {
        goto LABEL_161;
      }
    }

    LOBYTE(v191) = 0;
LABEL_161:
    v154 = v174;
    if (v174 == 20)
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

    if (v154 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v98 = *v177;
    v155 = v180;
    v156 = v181;
    (*v177)(v180, v181);
    v157 = __swift_project_value_buffer(v156, static OSSignpostID.continuation);
    v145 = (v172)(v155, v157, v156);
    p_Description = *&v173;
  }

  while ((v191 & 1) != 0);

  v158 = v181;
  (v98)(v180, v181);
  (v98)(v171, v158);
LABEL_176:

  a1 = v168;
  a4 = v167;
LABEL_177:
  specialized AnimatorState.removeListeners()();

  *(a4 + 40) = 0;
LABEL_178:
  v159 = v186;
  *a1 = v186;
  *(a1 + 16) = v159;
  *(a1 + 32) = 1;
}