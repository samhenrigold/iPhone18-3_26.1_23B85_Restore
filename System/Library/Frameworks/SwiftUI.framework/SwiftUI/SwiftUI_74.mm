uint64_t closure #1 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - v16;
  (*(v7 + 16))(v9, a1, v6, v15);
  if ((*(v10 + 48))(v9, 1, a4) == 1)
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  (*(v10 + 32))(v17, v9, a4);
  (*(v10 + 16))(v13, v17, a4);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v19 = round(1.0 / v20[1]);
  result = (*(v10 + 8))(v17, a4);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = v19 + 1;
  if (__OFADD__(v19, 1))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void *closure #2 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  lazy protocol witness table accessor for type Double and conformance Double();
  return BinaryFloatingPoint.init<A>(_:)();
}

double closure #3 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)@<D0>(uint64_t a1@<X0>, uint64_t a5@<X3>, uint64_t a8@<X6>, uint64_t *x8_0@<X8>)
{
  v13 = type metadata accessor for SliderMark(0, a5, a8, a5);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v14);
  return SliderMark<>.init<A>(_:)(v16, a5, a8, x8_0);
}

double closure #5 in Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)@<D0>(uint64_t a1@<X0>, uint64_t a5@<X3>, uint64_t a8@<X6>, double *x8_0@<X8>)
{
  v12 = type metadata accessor for SliderTick(0, a5, a8, a5);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  return SliderTick<>.init<A>(_:)(v15, a5, x8_0);
}

uint64_t Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, double a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v170 = a8;
  v144 = a7;
  v143 = a6;
  v171 = a5;
  v172 = a4;
  v179 = a3;
  v180 = a1;
  v142 = a9;
  v147 = a21;
  v174 = a20;
  v182 = a19;
  v181 = a18;
  v175 = a16;
  v177 = a15;
  v139 = a13;
  v169 = a12;
  v167 = *(*&a15 - 8);
  v168 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v165 = v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 16);
  v25 = *(v24 + 24);
  v178 = type metadata accessor for ClosedRange();
  v166 = type metadata accessor for Optional();
  v141 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v135 = v128 - v26;
  v164 = *(a16 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v159 = v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v158 = v128 - v30;
  v163 = type metadata accessor for Optional();
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v133 = (v128 - v31);
  v149 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v161 = type metadata accessor for Binding();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v154 = v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v157 = v128 - v34;
  v176 = type metadata accessor for Optional();
  v156 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v152 = v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v151 = v128 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v128 - v39;
  v150 = *(v24 + 8);
  *&v196 = a17;
  *(&v196 + 1) = v150;
  *&v197 = v25;
  *(&v197 + 1) = a21;
  v155 = type metadata accessor for Normalizing(0, &v196);
  v140 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v42 = v128 - v41;
  v153 = *(a17 - 8);
  v43 = v153;
  MEMORY[0x1EEE9AC00](v44);
  v46 = v128 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = v128 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = v128 - v51;
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = v128 - v55;
  v57 = *(v43 + 16);
  v57(v128 - v55, a2, a17, v54);
  v58 = *(v178 + 36);
  v173 = a2;
  v59 = a2 + v58;
  v60 = v147;
  (v57)(v52, v59, a17);
  (v57)(v49, v56, a17);
  v145 = v52;
  (v57)(v46, v52, a17);
  v61 = *(v156 + 16);
  v128[1] = v156 + 16;
  v128[0] = v61;
  v61(v40, v179, v176);
  v132 = v49;
  v134 = v40;
  Normalizing.init(min:max:stride:)(v49, v46, v40, a17, v150, v149, v60, v42);
  v62 = type metadata accessor for Binding();
  swift_getWitnessTable(protocol conformance descriptor for Normalizing<A>, v155);
  v63 = v157;
  v150 = v62;
  v64 = v153;
  Binding.projecting<A>(_:)();
  v65 = v63;
  v66 = AssociatedTypeWitness;
  (*(v160 + 16))(v154, v65, v161);
  v184 = v177;
  v185 = v175;
  v186 = a17;
  v187 = v181;
  v188 = v182;
  v189 = v174;
  v190 = v60;
  v191 = v42;
  v67 = v162;
  v137 = v42;
  v68 = v163;
  v69 = v133;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:), v183, MEMORY[0x1E69E73E0], v66, v70, v151);
  (*(v67 + 16))(v69, v172, v68);
  v71 = 1;
  v72 = (*(v64 + 48))(v69, 1, a17);
  v136 = v56;
  if (v72 == 1)
  {
    v73 = v67;
    v74 = v68;
    v75 = v174;
    v76 = v152;
    v77 = v147;
  }

  else
  {
    v76 = v152;
    v75 = v174;
    v77 = v147;
    BinaryFloatingPoint<>.normalize(min:max:)(v56, v145, a17, v174, v147);
    v71 = 0;
    v73 = v64;
    v74 = a17;
  }

  v146 = a14;
  (*(v73 + 8))(v69, v74);
  v78 = (*(*(v66 - 8) + 56))(v76, v71, 1, v66);
  MEMORY[0x1EEE9AC00](v78);
  v79 = v177;
  v80 = v175;
  v120 = v177;
  v121 = v175;
  v122 = a17;
  v123 = v181;
  v124 = v182;
  v125 = v75;
  v126 = v77;
  type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:), &v119, MEMORY[0x1E69E73E0], v81, v82, v194);
  v131 = v194[0];
  v130 = v194[1];
  v129 = v195;
  v83 = *(v164 + 16);
  v83(v158, v170, v80);
  v83(v159, v168, v80);
  MEMORY[0x18D00ACC0](v150);
  v84 = v178;
  v85 = *(v178 - 8);
  v86 = v135;
  v87 = v173;
  v85[2](v135, v173, v178);
  v133 = v85;
  (v85[7])(v86, 0, 1, v84);
  (v128[0])(v134, v179, v176);
  AccessibilityBoundedNumber.init<A>(for:in:by:)();
  v193[0] = v196;
  v193[1] = v197;
  v88 = (*(v167 + 16))(v165, v169, COERCE_DOUBLE(*&v79));
  v138 = a17;
  if (v139)
  {
    v135 = v128;
    v192 = v139;
    MEMORY[0x1EEE9AC00](v88);
    v120 = v79;
    v121 = v80;
    v122 = a17;
    v123 = v181;
    v124 = v182;
    v125 = v174;
    v126 = v77;
    v127 = v87;
    type metadata accessor for SliderMark(255, a17, v174, v89);
    v90 = type metadata accessor for Array();
    v91 = AssociatedTypeWitness;
    v92 = v77;
    v94 = type metadata accessor for SliderMark(0, AssociatedTypeWitness, v77, v93);
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v90);
    v149 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:), &v119, v90, v94, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v96);
  }

  else
  {
    v91 = AssociatedTypeWitness;
    v92 = v77;
    v149 = 0;
  }

  v97 = a11;
  if (v146)
  {
    v135 = v128;
    v192 = v146;
    LODWORD(v139) = a11;
    MEMORY[0x1EEE9AC00](v88);
    v134 = 0;
    v132 = &v119;
    v98 = v177;
    v99 = v175;
    v120 = v177;
    v121 = v175;
    v100 = v138;
    v101 = v181;
    v122 = v138;
    v123 = v181;
    v124 = v182;
    v125 = v102;
    v103 = v92;
    v104 = v173;
    v126 = v92;
    v127 = v173;
    type metadata accessor for SliderTick(255, v138, v102, v105);
    v106 = type metadata accessor for Array();
    v108 = type metadata accessor for SliderTick(0, v91, v92, v107);
    v109 = swift_getWitnessTable(MEMORY[0x1E69E6340], v106);
    v110 = v106;
    v111 = v100;
    v113 = v104;
    v114 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #4 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:), v132, v110, v108, MEMORY[0x1E69E73E0], v109, MEMORY[0x1E69E7410], v112);

    v97 = v139;
    v115 = v182;
  }

  else
  {
    v114 = 0;
    v99 = v175;
    v113 = v173;
    v98 = v177;
    v103 = v92;
    v115 = v182;
    v101 = v181;
    v111 = v138;
  }

  Slider.init<A>(value:skipDistance:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:accessibilityValue:label:marks:ticks:)(v154, v151, v152, v131, v130, v129, v143, v144, v142, v158, v159, v97 & 1, v193, v165, v149, *&v114, v98, v99, v91, v101, v115, v103);
  (*(v167 + 8))(v169, COERCE_DOUBLE(*&v98));
  v116 = *(v164 + 8);
  v116(v168, v99);
  v116(v170, v99);
  (*(v141 + 8))(v171, v166);
  (*(v162 + 8))(v172, v163);
  (*(v156 + 8))(v179, v176);
  (*(*(v150 - 8) + 8))(v180);
  (*(v160 + 8))(v157, v161);
  v117 = *(v153 + 8);
  v117(v145, v111);
  v117(v136, v111);
  (*(v140 + 8))(v137, v155);
  return v133[1](v113, v178);
}

uint64_t Normalizing.init(min:max:stride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a5;
  v80 = a2;
  v77 = a3;
  v81 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(swift_getAssociatedConformanceWitness() + 8);
  v69 = *(v67 + 16);
  v66 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v66);
  v68 = v58 - v13;
  v64 = type metadata accessor for FloatingPointRoundingRule();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v74 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v58 - v16;
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v60 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = v58 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v73 = v58 - v23;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v70 = v58 - v26;
  v27 = *(a4 - 8);
  v28 = *(v27 + 16);
  v28(a8, v81, a4, v25);
  v82[0] = a4;
  v82[1] = v79;
  v76 = a6;
  v82[2] = a6;
  v82[3] = a7;
  v29 = v15;
  v30 = v74;
  v65 = a7;
  v31 = type metadata accessor for Normalizing(0, v82);
  v32 = a8 + *(v31 + 52);
  v79 = a4;
  (v28)(v32, v80, a4);
  v72 = v31;
  v33 = *(v31 + 56);
  v34 = *(v30 + 16);
  v78 = a8;
  v35 = a8 + v33;
  v36 = v77;
  v34(v35, v77, v29);
  v34(v17, v36, v29);
  v37 = v75;
  v38 = (*(v75 + 48))(v17, 1, AssociatedTypeWitness);
  v71 = v29;
  if (v38 == 1)
  {
    v39 = *(v30 + 8);
    v39(v17, v29);
    v40 = v72;
    v41 = v79;
    v43 = v80;
    v42 = v81;
    dispatch thunk of Strideable.distance(to:)();
    v39(v36, v71);
    v44 = *(v27 + 8);
    v44(v43, v41);
    v44(v42, v41);
    return (*(v37 + 56))(v78 + *(v40 + 60), 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v59 = v27;
    v46 = *(v37 + 32);
    v58[1] = v37 + 32;
    v58[0] = v46;
    v46(v70, v17, AssociatedTypeWitness);
    v47 = v60;
    dispatch thunk of Strideable.distance(to:)();
    v48 = v63;
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v49 = *(v37 + 8);
    v49(v47, AssociatedTypeWitness);
    v50 = v62;
    v51 = v61;
    v52 = v64;
    (*(v62 + 104))(v61, *MEMORY[0x1E69E7048], v64);
    dispatch thunk of FloatingPoint.rounded(_:)();
    (*(v50 + 8))(v51, v52);
    v49(v48, AssociatedTypeWitness);
    v53 = v78;
    dispatch thunk of static Numeric.* infix(_:_:)();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    swift_getAssociatedConformanceWitness();
    v54 = dispatch thunk of static Comparable.> infix(_:_:)();
    v49(v48, AssociatedTypeWitness);
    if (v54)
    {
      (*(v74 + 8))(v77, v71);
      v55 = *(v59 + 8);
      v56 = v79;
      v55(v80, v79);
      v55(v81, v56);
      v49(v70, AssociatedTypeWitness);
      v57 = *(v72 + 60);
      (v58[0])(v53 + v57, v73, AssociatedTypeWitness);
      return (*(v75 + 56))(v53 + v57, 0, 1, AssociatedTypeWitness);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a8 + 16);
  v11 = *(v10 + 24);
  swift_getAssociatedTypeWitness();
  v12 = *(v10 + 8);
  v14[0] = a5;
  v14[1] = v12;
  v14[2] = v11;
  v14[3] = a9;
  type metadata accessor for Normalizing(0, v14);
  return dispatch thunk of static FloatingPoint./ infix(_:_:)();
}

uint64_t BinaryFloatingPoint<>.normalize(min:max:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v14 - v10;
  dispatch thunk of Strideable.distance(to:)();
  dispatch thunk of Strideable.distance(to:)();
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  v12 = *(v6 + 8);
  v12(v8, AssociatedTypeWitness);
  return (v12)(v11, AssociatedTypeWitness);
}

void *closure #2 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, double *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(v10, a1, v12, v8);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v13 = v19;
  v14 = type metadata accessor for ClosedRange();
  (v11)(v10, a1 + *(v14 + 36), a2);
  result = BinaryFloatingPoint.init<A>(_:)();
  v16 = v18;
  if (v13 > v18)
  {
    __break(1u);
  }

  else
  {
    *a4 = v13;
    a4[1] = v16;
  }

  return result;
}

uint64_t Slider.init<>(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  v20 = a1[6];
  v21 = v3;
  v22 = a1[8];
  v4 = a1[3];
  v16 = a1[2];
  v17 = v4;
  v5 = a1[5];
  v18 = a1[4];
  v19 = v5;
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  v7 = *(&v14 + 1);
  *a2 = v14;
  *(a2 + 8) = v7;
  v8 = v17;
  v9 = v16;
  *(a2 + 16) = v15;
  *(a2 + 32) = v9;
  *(a2 + 48) = v8;
  *(a2 + 72) = *(&v18 + 1);
  v10 = v18;
  *(a2 + 56) = *(&v17 + 1);
  *(a2 + 64) = v10;
  *(a2 + 106) = BYTE8(v20);
  *(a2 + 104) = 1;
  v12 = *(&v19 + 1);
  v11 = v20;
  *(a2 + 80) = v19;
  *(a2 + 88) = v11;

  result = outlined destroy of SliderStyleConfiguration(&v14);
  *(a2 + 96) = v12;
  return result;
}

uint64_t Slider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedSliderStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  v94 = v4;
  *&v107 = *(a1 + 16);
  *&v106 = *(a1 + 32);
  type metadata accessor for AccessibilityLabelModifier.ChildModifier(255, v107, v106, v5);
  v97 = type metadata accessor for ModifiedContent();
  v99 = lazy protocol witness table accessor for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label();
  v157[0] = v106;
  v157[1] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v6 = MEMORY[0x1E697E858];
  v95 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v97, v157);
  *&v146 = &type metadata for SliderStyleConfiguration.Label;
  *(&v146 + 1) = v97;
  *&v147 = v99;
  *(&v147 + 1) = WitnessTable;
  type metadata accessor for StaticSourceWriter(255, &v146);
  v91 = type metadata accessor for ModifiedContent();
  v104 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v72 - v7;
  v8 = *(a1 + 24);
  v9 = *(a1 + 40);
  v84 = v9;
  v85 = v8;
  type metadata accessor for AccessibilityLabelModifier.ChildModifier(255, v8, v9, v10);
  v11 = type metadata accessor for ModifiedContent();
  v12 = lazy protocol witness table accessor for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel();
  v98 = v12;
  v156[0] = v9;
  v156[1] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v13 = swift_getWitnessTable(v6, v11, v156);
  *&v146 = &type metadata for SliderStyleConfiguration.MinimumValueLabel;
  *(&v146 + 1) = v11;
  v86 = v13;
  v87 = v11;
  *&v147 = v12;
  *(&v147 + 1) = v13;
  v14 = v13;
  type metadata accessor for StaticSourceWriter(255, &v146);
  v92 = type metadata accessor for ModifiedContent();
  v103 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v72 - v15;
  v100 = lazy protocol witness table accessor for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel();
  *&v146 = &type metadata for SliderStyleConfiguration.MaximumValueLabel;
  *(&v146 + 1) = v11;
  *&v147 = v100;
  *(&v147 + 1) = v14;
  type metadata accessor for StaticSourceWriter(255, &v146);
  v16 = type metadata accessor for ModifiedContent();
  v17 = *(v16 - 8);
  v101 = v16;
  v102 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v72 - v20;
  v108 = v2;
  v21 = *v2;
  v22 = v2[1];
  v23 = v2[2];
  v24 = v2[3];
  v25 = v2[4];
  v76 = v2[5];
  v77 = v25;
  v26 = *(v2 + 48);
  v27 = v2[7];
  v72 = v2[8];
  v28 = v2[9];
  v30 = v2[11];
  v29 = v2[12];
  v74 = v2[10];
  v73 = *(v2 + *(a1 + 88));
  v31 = v2 + *(a1 + 96);
  v33 = *v31;
  v32 = *(v31 + 8);
  v34 = *(v31 + 16);
  v35 = *(v31 + 24);
  v75 = v26;
  LOBYTE(v146) = v26;
  *&v182 = v21;
  *(&v182 + 1) = v22;
  *&v183 = v23;
  *(&v183 + 1) = v24;
  *&v184 = v25;
  *(&v184 + 1) = v76;
  LOBYTE(v185) = v26;
  *(&v185 + 1) = v27;
  v81 = v27;
  v82 = v30;
  *&v186 = v72;
  *(&v186 + 1) = v28;
  *&v187 = v74;
  *(&v187 + 1) = v29;
  v83 = v29;
  *&v188 = v30;
  BYTE8(v188) = v73;
  *&v189 = v33;
  *(&v189 + 1) = v32;
  *&v190 = v34;
  *(&v190 + 1) = v35;

  if (v33)
  {
    v36 = v32;
  }

  else
  {
    v36 = 0;
  }

  if (v33)
  {
    v37 = v34;
  }

  else
  {
    v37 = 0;
  }

  v79 = v37;
  v80 = v36;
  *&v158 = v21;
  *(&v158 + 1) = v22;
  if (v33)
  {
    v38 = v35;
  }

  else
  {
    v38 = 0;
  }

  v78 = v38;
  v159 = v23;
  v160 = v24;
  v161 = v77;
  v162 = v76;
  v163 = v75;
  v164 = v27;
  v39 = v72;
  v165 = v72;
  v166 = v28;
  v167 = v74;
  v168 = v29;
  v169 = v30;
  v170 = v73;
  v171 = v33;
  v172 = v32;
  v173 = v34;
  v174 = v35;
  v40 = swift_allocObject();
  v41 = v189;
  v40[7] = v188;
  v40[8] = v41;
  v40[9] = v190;
  v42 = v185;
  v40[3] = v184;
  v40[4] = v42;
  v43 = v187;
  v40[5] = v186;
  v40[6] = v43;
  v44 = v183;
  v40[1] = v182;
  v40[2] = v44;
  v45 = swift_allocObject();
  v46 = v189;
  v45[7] = v188;
  v45[8] = v46;
  v45[9] = v190;
  v47 = v185;
  v45[3] = v184;
  v45[4] = v47;
  v48 = v187;
  v45[5] = v186;
  v45[6] = v48;
  v49 = v183;
  v45[1] = v182;
  v45[2] = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = v33;
  *(v50 + 24) = v32;
  *(v50 + 32) = v34;
  *(v50 + 40) = v35;
  v51 = v189;
  *(v50 + 144) = v188;
  *(v50 + 160) = v51;
  *(v50 + 176) = v190;
  v52 = v185;
  *(v50 + 80) = v184;
  *(v50 + 96) = v52;
  v53 = v187;
  *(v50 + 112) = v186;
  *(v50 + 128) = v53;
  v54 = v183;
  *(v50 + 48) = v182;
  *(v50 + 64) = v54;
  *&v128 = v33;
  *(&v128 + 1) = v80;
  *&v129 = v79;
  *(&v129 + 1) = v78;
  LOBYTE(v130) = 1;
  *(&v130 + 1) = partial apply for closure #2 in AccessibilitySliderModifier.init(_:value:);
  *&v131 = v40;
  *(&v131 + 1) = partial apply for closure #3 in AccessibilitySliderModifier.init(_:value:);
  *&v132 = v45;
  *(&v132 + 1) = partial apply for closure #4 in AccessibilitySliderModifier.init(_:value:);
  *&v133 = v50;
  *(&v133 + 1) = v81;
  v134 = v39;
  v181 = v39;
  v179 = v132;
  v180 = v133;
  v175 = v128;
  v176 = v129;
  v178 = v131;
  v177 = v130;
  outlined init with copy of SliderStyleConfiguration(&v182, &v146);
  outlined init with copy of SliderStyleConfiguration(&v182, &v146);
  outlined init with copy of SliderStyleConfiguration(&v182, &v146);
  outlined copy of AccessibilityBoundedNumber?(v33, v32, v34, v35);
  outlined init with copy of SliderStyleConfiguration(&v182, &v146);
  outlined copy of AccessibilityBoundedNumber?(v33, v32, v34, v35);

  outlined copy of AccessibilityBoundedNumber?(v33, v32, v34, v35);

  outlined init with copy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(&v128, &v146, &lazy cache variable for type metadata for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration, type metadata accessor for AccessibilityAdjustableModifier.Configuration);
  specialized AccessibilityAdjustableModifier.body(content:)(&v158, &v146);
  outlined destroy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(&v128);
  outlined destroy of SliderStyleConfiguration(&v182);
  outlined destroy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(&v128);
  v141 = v152;
  v142 = v153;
  v143 = v154;
  v144 = v155;
  v137 = v148;
  v138 = v149;
  v139 = v150;
  v140 = v151;
  v135 = v146;
  v136 = v147;
  v145[6] = v152;
  v145[7] = v153;
  v145[8] = v154;
  v145[9] = v155;
  v145[1] = v147;
  v145[2] = v148;
  v145[3] = v149;
  v145[4] = v150;
  v145[5] = v151;
  v145[0] = v146;
  outlined init with copy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(&v135, &v118);
  outlined destroy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(v145);
  v124 = v141;
  v125 = v142;
  v126 = v143;
  v127 = v144;
  v120 = v137;
  v121 = v138;
  v122 = v139;
  v123 = v140;
  v118 = v135;
  v119 = v136;
  *&v55 = v107;
  *(&v55 + 1) = v85;
  *&v56 = v106;
  *(&v56 + 1) = v84;
  v106 = v56;
  v107 = v55;
  v113[1] = v55;
  v113[2] = v56;
  v57 = v108;
  v114 = v108;
  v58 = lazy protocol witness table accessor for type ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v59 = v88;
  View.viewAlias<A, B>(_:_:)(&type metadata for SliderStyleConfiguration.Label, partial apply for closure #1 in Slider.body.getter, v113, v94, &type metadata for SliderStyleConfiguration.Label, v97, v58);
  v152 = v124;
  v153 = v125;
  v154 = v126;
  v155 = v127;
  v148 = v120;
  v149 = v121;
  v150 = v122;
  v151 = v123;
  v146 = v118;
  v147 = v119;
  outlined destroy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(&v146);
  v111[1] = v107;
  v111[2] = v106;
  v112 = v57;
  v117[0] = v58;
  v117[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v60 = v95;
  v61 = v91;
  v62 = swift_getWitnessTable(v95, v91, v117);
  v63 = v89;
  v64 = v87;
  View.viewAlias<A, B>(_:_:)(&type metadata for SliderStyleConfiguration.MinimumValueLabel, partial apply for closure #2 in Slider.body.getter, v111, v61, &type metadata for SliderStyleConfiguration.MinimumValueLabel, v87, v62);
  (*(v104 + 8))(v59, v61);
  v109[1] = v107;
  v109[2] = v106;
  v110 = v108;
  v116[0] = v62;
  v116[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v65 = v92;
  v66 = swift_getWitnessTable(v60, v92, v116);
  v67 = v90;
  View.viewAlias<A, B>(_:_:)(&type metadata for SliderStyleConfiguration.MaximumValueLabel, partial apply for closure #3 in Slider.body.getter, v109, v65, &type metadata for SliderStyleConfiguration.MaximumValueLabel, v64, v66);
  outlined destroy of SliderStyleConfiguration(&v182);
  (*(v103 + 8))(v63, v65);
  v115[0] = v66;
  v115[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v68 = v101;
  swift_getWitnessTable(v60, v101, v115);
  v69 = v96;
  static ViewBuilder.buildExpression<A>(_:)();
  v70 = *(v102 + 8);
  v70(v67, v68);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v70)(v69, v68);
}

unint64_t lazy protocol witness table accessor for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SliderStyleConfiguration.Label, &type metadata for SliderStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SliderStyleConfiguration.Label, &type metadata for SliderStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel()
{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SliderStyleConfiguration.MinimumValueLabel, &type metadata for SliderStyleConfiguration.MinimumValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SliderStyleConfiguration.MinimumValueLabel, &type metadata for SliderStyleConfiguration.MinimumValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel()
{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SliderStyleConfiguration.MaximumValueLabel, &type metadata for SliderStyleConfiguration.MaximumValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel;
  if (!lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SliderStyleConfiguration.MaximumValueLabel, &type metadata for SliderStyleConfiguration.MaximumValueLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel);
  }

  return result;
}

uint64_t closure #1 in Slider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a1;
  v24 = a6;
  type metadata accessor for AccessibilityLabelModifier.ChildModifier(255, a2, a4, a4);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  type metadata accessor for Slider(0, v26);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v18 = type metadata accessor for AccessibilityLabelModifier(0, a2, a4, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabelModifier<A>, v18, v23, v24);
  v25[0] = a4;
  v25[1] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v20 = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v25);
  View.accessibilityConfiguration<A>(_:)(v20, a2, v18, a4, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)();
  v21 = *(v11 + 8);
  v21(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v16, v10);
}

uint64_t closure #2 in Slider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a1;
  v24 = a6;
  type metadata accessor for AccessibilityLabelModifier.ChildModifier(255, a3, a5, a4);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  type metadata accessor for Slider(0, v26);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v18 = type metadata accessor for AccessibilityLabelModifier(0, a3, a5, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabelModifier<A>, v18, v23, v24);
  v25[0] = a5;
  v25[1] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v20 = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v25);
  View.accessibilityConfiguration<A>(_:)(v20, a3, v18, a5, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)();
  v21 = *(v11 + 8);
  v21(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v16, v10);
}

uint64_t closure #3 in Slider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a1;
  v24 = a6;
  type metadata accessor for AccessibilityLabelModifier.ChildModifier(255, a3, a5, a4);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  type metadata accessor for Slider(0, v26);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v18 = type metadata accessor for AccessibilityLabelModifier(0, a3, a5, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabelModifier<A>, v18, v23, v24);
  v25[0] = a5;
  v25[1] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  v20 = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v25);
  View.accessibilityConfiguration<A>(_:)(v20, a3, v18, a5, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)();
  v21 = *(v11 + 8);
  v21(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v16, v10);
}

uint64_t Slider.init<A>(value:in:onEditingChanged:minimumValueLabel:maximumValueLabel:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v73 = a8;
  v74 = a7;
  v64 = a5;
  v76 = a3;
  v77 = a4;
  v79 = a2;
  v60 = a1;
  v75 = a9;
  v69 = a6;
  v70 = a16;
  v62 = a11;
  v71 = a10;
  v72 = a13;
  v68 = a14;
  v66 = a15;
  MEMORY[0x1EEE9AC00](a1);
  v67 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v53 - v22;
  v23 = type metadata accessor for ClosedRange();
  v24 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v53 - v25;
  v54 = &v53 - v25;
  v27 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v53 - v28;
  v55 = &v53 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v53 - v32;
  v57 = &v53 - v32;
  v34 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v53 - v36;
  v58 = &v53 - v36;
  v59 = type metadata accessor for Binding();
  v61 = *(v59 - 8);
  v38 = MEMORY[0x1EEE9AC00](v59);
  v40 = &v53 - v39;
  (*(v41 + 16))(&v53 - v39, a1, v38);
  v42 = *(v34 + 16);
  v56 = v23;
  v42(v37, v79, v23);
  (*(*(AssociatedTypeWitness - 8) + 56))(v33, 1, 1, AssociatedTypeWitness);
  (*(*(a12 - 8) + 56))(v29, 1, 1, a12);
  (*(v34 + 56))(v26, 1, 1, v23);
  v43 = *(v78 + 16);
  v44 = v63;
  v45 = v64;
  v46 = v62;
  v43(v63, v64, v62);
  v47 = v65;
  v48 = v69;
  v49 = (v43)(v65, v69, v46);
  v50 = v67;
  v74(v49);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v40, v58, v57, v55, v54, v76, v77, v44, v75, v47, 1u, v50, 0, 0, v71, v46, a12, v72, v68, v66, v70);
  v51 = *(v78 + 8);
  v51(v48, v46);
  v51(v45, v46);
  (*(v34 + 8))(v79, v56);
  return (*(v61 + 8))(v60, v59);
}

uint64_t Slider.init<A>(value:in:step:onEditingChanged:minimumValueLabel:maximumValueLabel:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t)@<X7>, double *a9@<X8>, uint64_t a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v75 = a8;
  v74 = a7;
  v73 = a6;
  v78 = a5;
  v77 = a4;
  v81 = a3;
  v92 = a1;
  v76 = a9;
  v91 = a14;
  v89 = a15;
  v90 = a17;
  v84 = a16;
  v72 = a10;
  v88 = a11;
  v86 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v71 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v61 - v23;
  v24 = type metadata accessor for ClosedRange();
  v25 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v87 = &v61 - v26;
  v27 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v67 = &v61 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v82 = &v61 - v30;
  v79 = v24;
  v80 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v85 = &v61 - v32;
  v33 = type metadata accessor for Binding();
  v65 = v33;
  v66 = *(v33 - 8);
  v34 = v66;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v61 - v35;
  v62 = &v61 - v35;
  v37 = type metadata accessor for StrideThrough();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v61 - v39;
  v64 = a2;
  v41 = v81;
  stride<A>(from:through:by:)();
  v93 = v88;
  v94 = v86;
  v95 = a13;
  v96 = v91;
  v97 = v89;
  v98 = v84;
  v99 = v90;
  type metadata accessor for SliderTick(0, a13, v84, v42);
  swift_getWitnessTable(MEMORY[0x1E69E6B80], v37);
  v63 = Sequence.compactMap<A>(_:)();
  (*(v38 + 8))(v40, v37);
  (*(v34 + 16))(v36, v92, v33);
  v43 = v80;
  v44 = v79;
  (*(v80 + 16))(v85, a2, v79);
  v45 = *(AssociatedTypeWitness - 8);
  v46 = v82;
  v47 = v41;
  v48 = AssociatedTypeWitness;
  (*(v45 + 16))(v82, v47);
  (*(v45 + 56))(v46, 0, 1, v48);
  v61 = a13;
  v49 = v67;
  (*(*(a13 - 8) + 56))(v67, 1, 1, a13);
  (*(v43 + 56))(v87, 1, 1, v44);
  v50 = v68;
  v51 = *(v68 + 16);
  v52 = v69;
  v53 = v73;
  v54 = v86;
  v51(v69, v73, v86);
  v55 = v70;
  v56 = v74;
  v57 = (v51)(v70, v74, v54);
  v58 = v71;
  v75(v57);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v62, v85, v82, v49, v87, v77, v78, v52, v76, v55, 1u, v58, 0, v63, v88, v54, v61, v91, v89, v84, v90);
  v59 = *(v50 + 8);
  v59(v56, v54);
  v59(v53, v54);
  (*(v45 + 8))(v81, AssociatedTypeWitness);
  (*(v80 + 8))(v64, v79);
  return (*(v66 + 8))(v92, v65);
}

uint64_t Slider<>.init<A>(value:in:onEditingChanged:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, double a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v47 = a5;
  v48 = a7;
  v50 = a3;
  v51 = a4;
  v52 = a2;
  v53 = a1;
  v49 = a9;
  v45 = a12;
  v46 = a6;
  v43 = a11;
  v44 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClosedRange();
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v40 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v40 - v23;
  v40 = &v40 - v23;
  v25 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v40 - v27;
  v41 = type metadata accessor for Binding();
  v29 = *(v41 - 8);
  v30 = MEMORY[0x1EEE9AC00](v41);
  v32 = &v40 - v31;
  (*(v29 + 16))(&v40 - v31, v53, v30);
  (*(v25 + 16))(v28, v52, v14);
  (*(*(AssociatedTypeWitness - 8) + 56))(v24, 1, 1, AssociatedTypeWitness);
  v33 = v20;
  (*(*(a8 - 8) + 56))(v20, 1, 1, a8);
  v34 = v17;
  v35 = (*(v25 + 56))(v17, 1, 1, v14);
  v36 = v42;
  v47(v35);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v32, v28, v40, v33, v34, v50, v51, v37, v49, v39, 0, v36, 0, 0, v48, MEMORY[0x1E6981E70], a8, v44, MEMORY[0x1E6981E60], v43, v45);
  (*(v25 + 8))(v52, v14);
  return (*(v29 + 8))(v53, v41);
}

uint64_t Slider<>.init<A>(value:in:step:onEditingChanged:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, double a8@<X7>, double *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v60 = a7;
  v61 = a6;
  v63 = a4;
  v64 = a5;
  v67 = a2;
  v68 = a1;
  v62 = a9;
  v70 = a8;
  v71 = a11;
  v69 = a13;
  v66 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v59 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ClosedRange();
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v58 = &v48 - v17;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v57 = &v48 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v65 = &v48 - v21;
  v48 = v15;
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v54 = &v48 - v23;
  v24 = type metadata accessor for Binding();
  v52 = v24;
  v53 = *(v24 - 8);
  v25 = v53;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - v26;
  v50 = &v48 - v26;
  v28 = type metadata accessor for StrideThrough();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v48 - v30;
  v32 = v67;
  v49 = a3;
  stride<A>(from:through:by:)();
  v72 = v70;
  v73 = a10;
  v74 = v71;
  v75 = v66;
  v76 = v69;
  type metadata accessor for SliderTick(0, a10, v66, v33);
  swift_getWitnessTable(MEMORY[0x1E69E6B80], v28);
  v51 = Sequence.compactMap<A>(_:)();
  (*(v29 + 8))(v31, v28);
  (*(v25 + 16))(v27, v68, v24);
  v34 = v55;
  v35 = v54;
  v36 = v48;
  (*(v55 + 16))(v54, v32, v48);
  v37 = AssociatedTypeWitness;
  v38 = *(AssociatedTypeWitness - 8);
  v39 = v65;
  (*(v38 + 16))(v65, a3, AssociatedTypeWitness);
  (*(v38 + 56))(v39, 0, 1, v37);
  v40 = v57;
  (*(*(a10 - 8) + 56))(v57, 1, 1, a10);
  v41 = v34;
  v42 = v58;
  v43 = (*(v34 + 56))(v58, 1, 1, v36);
  v44 = v59;
  v61(v43);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v50, v35, v65, v40, v42, v63, v64, v45, v62, v47, 0, v44, 0, v51, v70, MEMORY[0x1E6981E70], a10, v71, MEMORY[0x1E6981E60], v66, v69);
  (*(v38 + 8))(v49, v37);
  (*(v41 + 8))(v67, v36);
  return (*(v53 + 8))(v68, v52);
}

__n128 Slider<>.init<A>(value:in:onEditingChanged:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a7;
  v41 = a6;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v11 = type metadata accessor for ClosedRange();
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v40 = &v37 - v13;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v39 = &v37 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v37 - v18;
  v37 = &v37 - v18;
  v20 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v38 = type metadata accessor for Binding();
  v24 = *(v38 - 8);
  v25 = MEMORY[0x1EEE9AC00](v38);
  v27 = &v37 - v26;
  (*(v24 + 16))(&v37 - v26, v45, v25);
  (*(v20 + 16))(v23, a2, v11);
  (*(*(AssociatedTypeWitness - 8) + 56))(v19, 1, 1, AssociatedTypeWitness);
  v28 = v39;
  (*(*(a5 - 8) + 56))(v39, 1, 1, a5);
  v29 = v40;
  (*(v20 + 56))(v40, 1, 1, v11);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v27, v23, v37, v28, v29, v43, v44, v30, v46, v35, 0, v36, 0, 0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], a5, MEMORY[0x1E6981E60], MEMORY[0x1E6981E60], v41, v42);
  (*(v20 + 8))(a2, v11);
  (*(v24 + 8))(v45, v38);
  v31 = v46[7];
  *(a8 + 96) = v46[6];
  *(a8 + 112) = v31;
  *(a8 + 128) = v46[8];
  v32 = v46[3];
  *(a8 + 32) = v46[2];
  *(a8 + 48) = v32;
  v33 = v46[5];
  *(a8 + 64) = v46[4];
  *(a8 + 80) = v33;
  result = v46[1];
  *a8 = v46[0];
  *(a8 + 16) = result;
  return result;
}

__n128 Slider<>.init<A>(value:in:step:onEditingChanged:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a8;
  v42 = a7;
  v45 = a5;
  v44 = a4;
  v47 = a3;
  v48 = a2;
  v46 = a1;
  v11 = type metadata accessor for ClosedRange();
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v41 = &v38 - v13;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - v15;
  v38 = &v38 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v38 - v19;
  v21 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  v39 = &v38 - v23;
  v40 = type metadata accessor for Binding();
  v25 = *(v40 - 8);
  v26 = MEMORY[0x1EEE9AC00](v40);
  v28 = &v38 - v27;
  (*(v25 + 16))(&v38 - v27, v46, v26);
  (*(v21 + 16))(v24, v48, v11);
  v29 = *(AssociatedTypeWitness - 8);
  (*(v29 + 16))(v20, v47, AssociatedTypeWitness);
  (*(v29 + 56))(v20, 0, 1, AssociatedTypeWitness);
  (*(*(a6 - 8) + 56))(v16, 1, 1, a6);
  v30 = v41;
  (*(v21 + 56))(v41, 1, 1, v11);
  Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(v28, v39, v20, v38, v30, v44, v45, v31, v49, v36, 0, v37, 0, 0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], a6, MEMORY[0x1E6981E60], MEMORY[0x1E6981E60], v42, v43);
  (*(v29 + 8))(v47, AssociatedTypeWitness);
  (*(v21 + 8))(v48, v11);
  (*(v25 + 8))(v46, v40);
  v32 = v49[7];
  *(a9 + 96) = v49[6];
  *(a9 + 112) = v32;
  *(a9 + 128) = v49[8];
  v33 = v49[3];
  *(a9 + 32) = v49[2];
  *(a9 + 48) = v33;
  v34 = v49[5];
  *(a9 + 64) = v49[4];
  *(a9 + 80) = v34;
  result = v49[1];
  *a9 = v49[0];
  *(a9 + 16) = result;
  return result;
}

uint64_t Normalizing.get(base:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v7 - v4;
  dispatch thunk of Strideable.distance(to:)();
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  return (*(v3 + 8))(v5, AssociatedTypeWitness);
}

uint64_t Normalizing.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v56 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  v69 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v53 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v54 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v55 = v53 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v68 = v53 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v64 = v53 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v60 = v53 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v62 = v53 - v28;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v65 = v53 - v31;
  v32 = *(*(v8 - 8) + 8);
  v66 = v8;
  v67 = a1;
  v32(a1, v8, v30);
  v33 = a3;
  v34 = *(a3 + 56);
  v61 = v11;
  v35 = *(v11 + 16);
  v36 = v3;
  v35(v15, v3 + v34, v10);
  v70 = v16;
  v37 = *(v16 + 48);
  if (v37(v15, 1, AssociatedTypeWitness) == 1)
  {
    v38 = v15;
    v39 = v70;
  }

  else
  {
    v53[0] = *(v70 + 32);
    (v53[0])(v62, v15, AssociatedTypeWitness);
    v40 = *(v33 + 60);
    v53[1] = v36;
    v38 = v59;
    v35(v59, v36 + v40, v10);
    if (v37(v38, 1, AssociatedTypeWitness) != 1)
    {
      (v53[0])(v60, v38, AssociatedTypeWitness);
      v44 = v70;
      (*(v70 + 16))(v54, v63, AssociatedTypeWitness);
      v45 = v55;
      dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
      v63 = *(swift_getAssociatedConformanceWitness() + 8);
      dispatch thunk of static Numeric.* infix(_:_:)();
      v43 = *(v44 + 8);
      v43(v45, AssociatedTypeWitness);
      v46 = v56;
      v47 = v57;
      v48 = v58;
      (*(v57 + 104))(v56, *MEMORY[0x1E69E7038], v58);
      v49 = v64;
      v50 = v68;
      dispatch thunk of FloatingPoint.rounded(_:)();
      (*(v47 + 8))(v46, v48);
      v43(v50, AssociatedTypeWitness);
      v42 = v65;
      v51 = v62;
      dispatch thunk of static Numeric.* infix(_:_:)();
      v43(v49, AssociatedTypeWitness);
      v43(v60, AssociatedTypeWitness);
      v43(v51, AssociatedTypeWitness);
      goto LABEL_7;
    }

    v39 = v70;
    (*(v70 + 8))(v62, AssociatedTypeWitness);
  }

  (*(v61 + 8))(v38, v10);
  (*(v39 + 16))(v68, v63, AssociatedTypeWitness);
  v41 = v64;
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  swift_getAssociatedConformanceWitness();
  v42 = v65;
  dispatch thunk of static Numeric.* infix(_:_:)();
  v43 = *(v39 + 8);
  v43(v41, AssociatedTypeWitness);
LABEL_7:
  dispatch thunk of Strideable.advanced(by:)();
  return (v43)(v42, AssociatedTypeWitness);
}

uint64_t static Normalizing.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v44 - v12;
  v53 = v13;
  v14 = type metadata accessor for Optional();
  v54 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v50 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v58[0] = a3;
  v58[1] = a4;
  v58[2] = a5;
  v58[3] = v56;
  v23 = type metadata accessor for Normalizing(0, v58);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v46 = a5;
  v47 = v23;
  v24 = *(v23 + 56);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = *(v54 + 16);
  v48 = a1;
  v26(v22, a1 + v24, v14);
  v56 = a2;
  v26(&v22[v25], a2 + v24, v14);
  v27 = *(v55 + 48);
  v28 = v53;
  if (v27(v22, 1, v53) != 1)
  {
    v26(v18, v22, v14);
    if (v27(&v22[v25], 1, v28) != 1)
    {
      v45 = v27;
      (*(v55 + 32))(v51, &v22[v25], v28);
      swift_getAssociatedConformanceWitness();
      LODWORD(v44) = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v55 + 8);
      v30(v51, v28);
      v30(v18, v28);
      v29 = *(v54 + 8);
      v29(v22, v14);
      if ((v44 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    (*(v55 + 8))(v18, v28);
LABEL_8:
    (*(v52 + 8))(v22, TupleTypeMetadata2);
    goto LABEL_16;
  }

  if (v27(&v22[v25], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  v45 = v27;
  v29 = *(v54 + 8);
  v29(v22, v14);
LABEL_10:
  v44 = v29;
  v31 = *(v47 + 60);
  v32 = *(TupleTypeMetadata2 + 48);
  v33 = v50;
  v26(v50, v48 + v31, v14);
  v26(&v33[v32], v56 + v31, v14);
  v34 = v45;
  if (v45(v33, 1, v28) == 1)
  {
    if (v34(&v33[v32], 1, v28) == 1)
    {
      v44(v33, v14);
      swift_getAssociatedConformanceWitness();
LABEL_19:
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v36 & 1;
    }

    goto LABEL_15;
  }

  v35 = v49;
  v26(v49, v33, v14);
  if (v34(&v33[v32], 1, v28) == 1)
  {
    (*(v55 + 8))(v35, v28);
LABEL_15:
    (*(v52 + 8))(v33, TupleTypeMetadata2);
    goto LABEL_16;
  }

  v38 = v33;
  v39 = v55;
  v40 = v51;
  (*(v55 + 32))(v51, &v38[v32], v28);
  swift_getAssociatedConformanceWitness();
  v41 = v35;
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = *(v39 + 8);
  v43(v40, v28);
  v43(v41, v28);
  v44(v38, v14);
  if (v42)
  {
    goto LABEL_19;
  }

LABEL_16:
  v36 = 0;
  return v36 & 1;
}

uint64_t Normalizing.hash(into:)(uint64_t a1, void *a2)
{
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  Optional<A>.hash(into:)();
  Optional<A>.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int Normalizing.hashValue.getter(void *a1)
{
  Hasher.init(_seed:)();
  Normalizing.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Normalizing<A>(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  Normalizing.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t closure #1 in Slider.init<A>(value:in:step:onEditingChanged:minimumValueLabel:maximumValueLabel:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X6>, char *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  SliderTick.init(_:)(v9, a2, a4, a3);
  v12 = type metadata accessor for SliderTick(0, a2, a3, v11);
  return (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
}

uint64_t closure #1 in Slider<>.init<A>(value:in:step:onEditingChanged:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  SliderTick.init(_:)(v9, a2, a4, a3);
  v12 = type metadata accessor for SliderTick(0, a2, a3, v11);
  return (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = (v2 + 6);
      v10 = -1;
      for (i = 1; i != v3; ++i)
      {
        v12 = *&v2[2 * i + 5];
        v13 = v10;
        v14 = v9;
        do
        {
          if (v12 >= *(v14 - 1))
          {
            break;
          }

          v15 = *v14;
          *v14 = *(v14 - 1);
          *(v14 - 1) = v12;
          *(v14 - 2) = v15;
          v14 -= 2;
        }

        while (!__CFADD__(v13++, 1));
        v9 += 2;
        --v10;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for SliderTick<Double>(0, &lazy cache variable for type metadata for SliderTick<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderTick);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v8 + 32;
    v17[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v17, v18, v19, v6, v5);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = v2 + 6;
      v10 = -1;
      for (i = 1; i != v3; ++i)
      {
        v12 = *&v2[5 * i + 8];
        v13 = v10;
        v14 = v9;
        do
        {
          if (v12 >= *(v14 + 2))
          {
            break;
          }

          v15 = *(v14 + 3);
          v16 = *(v14 + 5);
          v17 = *v14;
          *(v14 + 3) = *(v14 - 1);
          *(v14 + 5) = v17;
          v14[7] = v14[2];
          *(v14 - 1) = v15;
          *v14 = v16;
          *(v14 + 2) = v12;
          v14 -= 5;
        }

        while (!__CFADD__(v13++, 1));
        v9 += 5;
        --v10;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for SliderTick<Double>(0, &lazy cache variable for type metadata for SliderMark<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderMark);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = v8 + 32;
    v19[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v19, v20, v21, v6, v5);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void specialized AccessibilityAdjustableModifier.body(content:)(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = v2[5];
  v31 = v2[4];
  v32 = v6;
  v33 = *(v2 + 12);
  v7 = v2[1];
  v27 = *v2;
  v28 = v7;
  v8 = v2[3];
  v29 = v2[2];
  v30 = v8;
  v9 = v5 & 1;
  v34[0] = v27;
  v34[1] = v7;
  v35 = v33;
  v34[2] = v29;
  v34[3] = v8;
  v34[4] = v31;
  v34[5] = v6;
  v10 = swift_allocObject();
  v11 = v2[5];
  *(v10 + 80) = v2[4];
  *(v10 + 96) = v11;
  *(v10 + 112) = *(v2 + 12);
  v12 = v2[1];
  *(v10 + 16) = *v2;
  *(v10 + 32) = v12;
  v13 = v2[3];
  *(v10 + 48) = v2[2];
  *(v10 + 64) = v13;
  type metadata accessor for _ContiguousArrayStorage<AnyAccessibilityAction>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63400;
  v15 = AccessibilityActionHandlerSeed++;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityAdjustableAction>>(0);
  *(v14 + 56) = v16;
  *(v14 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v17 = swift_allocObject();
  *(v14 + 32) = v17;
  *(v17 + 16) = v9;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 2;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0;
  *(v17 + 96) = partial apply for specialized closure #1 in AccessibilityAdjustableModifier.body(content:);
  *(v17 + 104) = v10;
  *(v17 + 112) = v15;
  *(v14 + 72) = 0;
  v24[0] = v14;
  outlined init with copy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(v34, __src, &lazy cache variable for type metadata for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>, type metadata accessor for AccessibilityAdjustableModifier);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

  AccessibilityProperties.init<A>(_:_:)();
  outlined init with copy of AccessibilityProperties(v26, v24);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v26);
  type metadata accessor for _ContiguousArrayStorage<AnyAccessibilityAction>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v18 = swift_allocObject();
  memcpy((v18 + 16), __src, 0x128uLL);
  v19 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v19;
  *(a2 + 128) = a1[8];
  v20 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v20;
  v21 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v21;
  v22 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v22;
  *(a2 + 144) = v18;
  *(a2 + 152) = 0;
  outlined init with copy of ResolvedSliderStyle(a1, __src);

  v23[2] = a2;
  v23[3] = &v27;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI24AccessibilitySliderValueV_s5NeverOytTB5(partial apply for specialized closure #2 in AccessibilityAdjustableModifier.body(content:), v23, v27, *(&v27 + 1), v28, *(&v28 + 1));
}

uint64_t specialized closure #2 in AccessibilityAdjustableModifier.body(content:)(void *a1, void *a2, void *a3, void *a4, _OWORD *a5, uint64_t a6)
{
  v12 = a5[7];
  v38[6] = a5[6];
  v38[7] = v12;
  v13 = a5[9];
  v38[8] = a5[8];
  v39 = v13;
  v14 = a5[3];
  v38[2] = a5[2];
  v38[3] = v14;
  v15 = a5[5];
  v38[4] = a5[4];
  v38[5] = v15;
  v16 = a5[1];
  v38[0] = *a5;
  v38[1] = v16;
  *&v41 = a1;
  *(&v41 + 1) = a2;
  *&v42 = a3;
  *(&v42 + 1) = a4;
  outlined init with copy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(v38, v51);
  lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
  lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
  lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  AccessibilityValueStorage.init<A>(_:description:)();
  v40 = v39;
  v21 = v39;
  swift_beginAccess();
  outlined init with copy of AccessibilityValueStorage(v51, &v41);
  outlined init with copy of AccessibilityAttachmentModifier(&v40, v37);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(v21 + 80, &v41);
  outlined destroy of AccessibilityValueStorage?(v21 + 80);
  outlined init with copy of AccessibilityValueStorage(&v41, v21 + 80);
  outlined destroy of AccessibilityValueStorage(&v41);
  swift_endAccess();
  outlined destroy of AccessibilityValueStorage(v51);
  outlined destroy of AccessibilityAttachmentModifier(&v40);
  v22 = swift_allocObject();
  v23 = *(a6 + 80);
  *(v22 + 80) = *(a6 + 64);
  *(v22 + 96) = v23;
  *(v22 + 112) = *(a6 + 96);
  v24 = *(a6 + 16);
  *(v22 + 16) = *a6;
  *(v22 + 32) = v24;
  v25 = *(a6 + 48);
  *(v22 + 48) = *(a6 + 32);
  *(v22 + 64) = v25;
  outlined init with copy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(a6, v51, &lazy cache variable for type metadata for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>, type metadata accessor for AccessibilityAdjustableModifier);
  specialized ModifiedContent<>.accessibilitySetValueAction(_:)(partial apply for specialized closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:), v22, &v41);

  outlined destroy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(v38);
  v26 = a5[7];
  v51[6] = a5[6];
  v51[7] = v26;
  v27 = a5[9];
  v51[8] = a5[8];
  v51[9] = v27;
  v28 = a5[3];
  v51[2] = a5[2];
  v51[3] = v28;
  v29 = a5[5];
  v51[4] = a5[4];
  v51[5] = v29;
  v30 = a5[1];
  v51[0] = *a5;
  v51[1] = v30;
  v31 = v48;
  a5[6] = v47;
  a5[7] = v31;
  v32 = v50;
  a5[8] = v49;
  a5[9] = v32;
  v33 = v44;
  a5[2] = v43;
  a5[3] = v33;
  v34 = v46;
  a5[4] = v45;
  a5[5] = v34;
  v35 = v42;
  *a5 = v41;
  a5[1] = v35;
  return outlined destroy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(v51);
}

id outlined copy of AccessibilityBoundedNumber?(id result, void *a2, void *a3, void *a4)
{
  if (result)
  {
    v5 = result;
    v6 = a4;
    v7 = v5;
    v8 = a2;

    return a3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedSliderStyle and conformance ResolvedSliderStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle;
  if (!lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedSliderStyle, &type metadata for ResolvedSliderStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle;
  if (!lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedSliderStyle, &type metadata for ResolvedSliderStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedSliderStyle and conformance ResolvedSliderStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue()
{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980350], MEMORY[0x1E6980340], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980348], MEMORY[0x1E6980340], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980338], MEMORY[0x1E6980340], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(uint64_t a1)
{
  type metadata accessor for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(0, &lazy cache variable for type metadata for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration, type metadata accessor for AccessibilityAdjustableModifier.Configuration);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedSliderStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedSliderStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedSliderStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ResolvedSliderStyle and conformance ResolvedSliderStyle();
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata completion function for Slider(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Slider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a3 + 16;
  v4 = *(a3 + 16);
  v5 = *(v6 + 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = v9 + v8;
  v11 = *(v4 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64) + 7;
  v14 = (*(v11 + 80) | *(v7 + 80)) & 0x100000;
  v15 = *a2;
  *a1 = *a2;
  if ((v12 | v8) > 7 || v14 != 0 || ((v13 + ((v12 + v9 + ((v9 + v8 + ((v8 + 104) & ~v8)) & ~v8) + 1) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    v18 = v15 + (((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16));
  }

  else
  {
    v56 = ~v8;
    v57 = v13;
    v58 = a1;
    v19 = a2[2];
    a1[1] = a2[1];
    a1[2] = v19;
    v20 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = *v23;
    *(v22 + 16) = *(v23 + 16);
    *v22 = v24;
    v25 = ((v20 + 39) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v21 + 39) & 0xFFFFFFFFFFFFFFF8);
    v27 = v26[1];
    *v25 = *v26;
    v25[1] = v27;
    v28 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
    v29 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v28 = *v29;
    v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v30 = *v31;
    v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = *v33;
    v33 += 15;
    *v32 = v34;
    v35 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    v36 = (v33 & 0xFFFFFFFFFFFFFFF8) + 8;
    *v35++ = *(v33 & 0xFFFFFFFFFFFFFFF8);
    v53 = *(v7 + 16);
    v54 = v9;
    v55 = v4;

    v53(v35, v36, v5);
    v37 = (v35 + v10) & v56;
    v38 = (v10 + v36) & v56;
    v53(v37, v38, v5);
    *(v37 + v54) = *(v38 + v54);
    v39 = (v37 + v54 + v12 + 1) & ~v12;
    v40 = (v38 + v54 + v12 + 1) & ~v12;
    (*(v11 + 16))(v39, v40, v55);
    v41 = (v57 + v39) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v57 + v40) & 0xFFFFFFFFFFFFFFF8;
    v43 = *v42;
    if (*v42 < 0xFFFFFFFFuLL)
    {
      v51 = *(v42 + 16);
      *v41 = *v42;
      *(v41 + 16) = v51;
    }

    else
    {
      *v41 = v43;
      v44 = *(v42 + 8);
      *(v41 + 8) = v44;
      v45 = *(v42 + 16);
      *(v41 + 16) = v45;
      v46 = *(v42 + 24);
      *(v41 + 24) = v46;
      v47 = v43;
      v48 = v44;
      v49 = v45;
      v50 = v46;
    }

    return v58;
  }

  return v18;
}

void destroy for Slider(void *a1, uint64_t a2)
{

  v4 = (((((((((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = *(v6 + 80);
  v10 = (v4 + v9 + 8) & ~v9;
  v7(v10, v5);
  v11 = *(v8 + 56);
  v12 = (v11 + v9 + v10) & ~v9;
  v7(v12, v5);
  v13 = *(*(a2 + 16) - 8);
  v14 = v13 + 8;
  v15 = (v11 + *(v13 + 80) + v12 + 1) & ~*(v13 + 80);
  (*(v13 + 8))(v15);
  v16 = (*(v14 + 56) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v16 >= 0xFFFFFFFFuLL)
  {

    v17 = *(v16 + 24);
  }
}

uint64_t *initializeWithCopy for Slider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  v4 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v4;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  *(v6 + 16) = *(v7 + 16);
  *v6 = v8;
  v9 = ((v5 + 39) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v4 + 39) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = *(a3 + 24);
  v21 = *(*(v20 - 8) + 16);
  v22 = *(v20 - 8) + 16;
  v23 = *(*(v20 - 8) + 80);
  v24 = (v18 + v23 + 8) & ~v23;
  v25 = (v19 + v23 + 8) & ~v23;

  v21(v24, v25, v20);
  v26 = *(v22 + 48);
  v27 = (v26 + v23 + v24) & ~v23;
  v28 = (v26 + v23 + v25) & ~v23;
  v21(v27, v28, v20);
  *(v27 + v26) = *(v28 + v26);
  v29 = *(*(a3 + 16) - 8);
  v30 = v29 + 16;
  v31 = *(v29 + 80);
  v32 = (v31 + 1 + v27 + v26) & ~v31;
  v33 = (v31 + 1 + v28 + v26) & ~v31;
  (*(v29 + 16))(v32, v33);
  v34 = *(v30 + 48) + 7;
  v35 = (v34 + v32) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v34 + v33) & 0xFFFFFFFFFFFFFFF8;
  v37 = *v36;
  if (*v36 < 0xFFFFFFFFuLL)
  {
    v45 = *(v36 + 16);
    *v35 = *v36;
    *(v35 + 16) = v45;
  }

  else
  {
    *v35 = v37;
    v38 = *(v36 + 8);
    *(v35 + 8) = v38;
    v39 = *(v36 + 16);
    *(v35 + 16) = v39;
    v40 = *(v36 + 24);
    *(v35 + 24) = v40;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    v44 = v40;
  }

  return a1;
}

uint64_t *assignWithCopy for Slider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  *(v8 + 16) = *(v9 + 16);
  *v8 = v10;
  v11 = ((v6 + 39) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;

  v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  v17 += 15;
  *v16 = v18;
  v16 += 15;
  v19 = (v17 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v16 & 0xFFFFFFFFFFFFFFF8) = *(v17 & 0xFFFFFFFFFFFFFFF8);
  v20 = (v16 & 0xFFFFFFFFFFFFFFF8) + 15;

  v20 &= 0xFFFFFFFFFFFFFFF8;
  v19 &= 0xFFFFFFFFFFFFFFF8;
  *v20 = *v19;

  v21 = *(a3 + 24);
  v22 = *(v21 - 8);
  v23 = *(v22 + 24);
  v24 = v22 + 24;
  v25 = *(v22 + 80);
  v26 = (v25 + 8 + v20) & ~v25;
  v27 = (v25 + 8 + v19) & ~v25;
  v23(v26, v27, v21);
  v28 = *(v24 + 40);
  v29 = (v28 + v25 + v26) & ~v25;
  v30 = (v28 + v25 + v27) & ~v25;
  v23(v29, v30, v21);
  v31 = (v29 + v28);
  *v31 = *(v30 + v28);
  v32 = *(*(a3 + 16) - 8);
  v33 = v32 + 24;
  v34 = *(v32 + 80);
  v35 = &v31[v34 + 1] & ~v34;
  v36 = (v34 + 1 + v30 + v28) & ~v34;
  (*(v32 + 24))(v35, v36);
  v37 = *(v33 + 40) + 7;
  v38 = (v37 + v35) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v37 + v36) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v38;
  v41 = *v39;
  if (*v38 < 0xFFFFFFFFuLL)
  {
    if (v41 >= 0xFFFFFFFF)
    {
      *v38 = v41;
      v52 = *(v39 + 8);
      *(v38 + 8) = v52;
      v53 = *(v39 + 16);
      *(v38 + 16) = v53;
      v54 = *(v39 + 24);
      *(v38 + 24) = v54;
      v55 = v41;
      v56 = v52;
      v57 = v53;
      v58 = v54;
      return a1;
    }

LABEL_7:
    v59 = *(v39 + 16);
    *v38 = *v39;
    *(v38 + 16) = v59;
    return a1;
  }

  if (v41 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *v38 = v41;
  v42 = v41;

  v43 = *(v38 + 8);
  v44 = *(v39 + 8);
  *(v38 + 8) = v44;
  v45 = v44;

  v46 = *(v38 + 16);
  v47 = *(v39 + 16);
  *(v38 + 16) = v47;
  v48 = v47;

  v49 = *(v38 + 24);
  v50 = *(v39 + 24);
  *(v38 + 24) = v50;
  v51 = v50;

  return a1;
}

uint64_t initializeWithTake for Slider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 16) = *(v8 + 16);
  *v7 = v9;
  v10 = ((v5 + 39) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v6 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = *(a3 + 24);
  v21 = *(v20 - 8);
  v22 = *(v21 + 32);
  v23 = v21 + 32;
  v24 = *(v21 + 80);
  v25 = (v18 + v24 + 8) & ~v24;
  v26 = (v19 + v24 + 8) & ~v24;
  v22(v25, v26, v20);
  v27 = *(v23 + 32);
  v28 = (v27 + v24 + v25) & ~v24;
  v29 = (v27 + v24 + v26) & ~v24;
  v22(v28, v29, v20);
  v30 = (v28 + v27);
  *v30 = *(v29 + v27);
  v31 = *(*(a3 + 16) - 8);
  v32 = v31 + 32;
  v33 = *(v31 + 80);
  v34 = &v30[v33 + 1] & ~v33;
  v35 = (v33 + 1 + v29 + v27) & ~v33;
  (*(v31 + 32))(v34, v35);
  v36 = *(v32 + 32) + 7;
  v37 = ((v36 + v34) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v36 + v35) & 0xFFFFFFFFFFFFFFF8);
  v39 = v38[1];
  *v37 = *v38;
  v37[1] = v39;
  return a1;
}

uint64_t *assignWithTake for Slider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = (a2 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 15;
  v9 = *v7;
  v7 += 39;
  *v6 = v9;
  v10 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v11 = *v8;
  *(v10 + 16) = *(v8 + 16);
  *v10 = v11;
  v12 = ((v6 + 39) & 0xFFFFFFFFFFFFFFF8);
  v13 = (v7 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v12 = *(v7 & 0xFFFFFFFFFFFFFFF8);

  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *(v13 & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  v16 += 15;
  *v15 = v17;
  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = (v16 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v18 = *(v16 & 0xFFFFFFFFFFFFFFF8);

  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = v19 & 0xFFFFFFFFFFFFFFF8;
  *v20 = *(v19 & 0xFFFFFFFFFFFFFFF8);

  v22 = *(a3 + 24);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v23 + 40;
  v26 = *(v23 + 80);
  v27 = (v20 + v26 + 8) & ~v26;
  v28 = (v26 + 8 + v21) & ~v26;
  v24(v27, v28, v22);
  v29 = *(v25 + 24);
  v30 = (v29 + v26 + v27) & ~v26;
  v31 = (v29 + v26 + v28) & ~v26;
  v24(v30, v31, v22);
  v32 = (v30 + v29);
  *v32 = *(v31 + v29);
  v33 = *(*(a3 + 16) - 8);
  v34 = v33 + 40;
  v35 = *(v33 + 80);
  v36 = &v32[v35 + 1] & ~v35;
  v37 = (v35 + 1 + v31 + v29) & ~v35;
  (*(v33 + 40))(v36, v37);
  v38 = *(v34 + 24) + 7;
  v39 = (v38 + v36) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v38 + v37) & 0xFFFFFFFFFFFFFFF8;
  v41 = *v39;
  if (*v39 < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*v40 < 0xFFFFFFFFuLL)
  {

LABEL_5:
    v45 = *(v40 + 16);
    *v39 = *v40;
    *(v39 + 16) = v45;
    return a1;
  }

  *v39 = *v40;

  v42 = *(v39 + 8);
  *(v39 + 8) = *(v40 + 8);

  v43 = *(v39 + 16);
  *(v39 + 16) = *(v40 + 16);

  v44 = *(v39 + 24);
  *(v39 + 24) = *(v40 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for Slider(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v10 + v9;
  v15 = v10 + v11 + 1;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v16 = ((*(*(v6 - 8) + 64) + ((v15 + ((v14 + ((v9 + 104) & ~v9)) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v17 = a2 - v13;
  v18 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = v17 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v16);
      if (!v22)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v22 = *(a1 + v16);
      if (!v22)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v21 || (v22 = *(a1 + v16)) == 0)
  {
LABEL_30:
    if ((v12 & 0x80000000) != 0)
    {
      v27 = (((((((((((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v27);
      }

      else
      {
        return (*(v7 + 48))((v15 + ((v14 + v27) & ~v9)) & ~v11, v8, v6);
      }
    }

    else
    {
      v26 = *(a1 + 1);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }

  v24 = v22 - 1;
  if (v18)
  {
    v24 = 0;
    v25 = *a1;
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v24) + 1;
}

void *storeEnumTagSinglePayload for Slider(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v6 <= *(v8 + 84))
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = v10 + v11 + 1;
  v15 = ((*(*(v7 - 8) + 64) + ((v14 + ((v10 + v9 + ((v9 + 104) & ~v9)) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v13 >= a3)
  {
    v19 = 0;
    v20 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = a3 - v13;
    if (((*(*(v7 - 8) + 64) + ((v14 + ((v10 + v9 + ((v9 + 104) & ~v9)) & ~v9)) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(result + v15) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v15) = 0;
      }

      else if (v19)
      {
        *(result + v15) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if ((v12 & 0x80000000) != 0)
        {
          v24 = (((((((((((((result + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
          if (v6 == v13)
          {
            v25 = *(v5 + 56);

            return v25(v24);
          }

          else
          {
            v26 = *(v8 + 56);
            v27 = (v14 + ((v10 + v9 + v24) & ~v9)) & ~v11;

            return v26(v27);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          result[1] = 0;
          result[2] = 0;
          *result = a2 & 0x7FFFFFFF;
        }

        else
        {
          result[1] = a2 - 1;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(v7 - 8) + 64) + ((v14 + ((v10 + v9 + ((v9 + 104) & ~v9)) & ~v9)) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((*(*(v7 - 8) + 64) + ((v14 + ((v10 + v9 + ((v9 + 104) & ~v9)) & ~v9)) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v22 = ~v13 + a2;
    v23 = result;
    bzero(result, v15);
    result = v23;
    *v23 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(result + v15) = v21;
    }

    else
    {
      *(result + v15) = v21;
    }
  }

  else if (v19)
  {
    *(result + v15) = v21;
  }

  return result;
}

void type metadata accessor for ModifiedContent<ResolvedSliderStyle, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t partial apply for closure #4 in Slider.init<A>(value:in:step:neutralValue:enabledBounds:onEditingChanged:minimumValueLabel:maximumValueLabel:customMinMaxValueLabels:label:marks:ticks:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = v4[4];
  v8 = v4[7];
  v9 = v4[8];
  v10 = v4[9];
  v11 = a3(0, v7, v8);
  return a4(v10, v11, v9);
}

void outlined consume of AccessibilityBoundedNumber?(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t outlined consume of SliderMark<Double>?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return outlined consume of Text?(result, a2, a3, a4);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<SliderTick<Double>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for SliderTick<Double>(255, a3, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  v87 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v6 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9, a5);
      v9 = result;
    }

    v79 = (v9 + 16);
    v80 = *(v9 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v9 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v6);
        if (v5)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      a5 = *(*a3 + 16 * v8 + 8);
      v11 = 16 * v10;
      v12 = *a3 + 16 * v10;
      v13 = *(v12 + 8);
      v14 = v10 + 2;
      v15 = (v12 + 40);
      v16 = a5;
      while (v7 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((a5 < v13) ^ v18) & 1) == 0)
        {
          v8 = v14 - 1;
          if (a5 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (a5 >= v13)
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
        v19 = 0;
        v20 = 16 * v8;
        v21 = v10;
        do
        {
          if (v21 != v8 + v19 - 1)
          {
            v25 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v25 + v11);
            v23 = v25 + v20;
            v24 = *v22;
            a5 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = a5;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v8 + v19);
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

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v6 = *(v9 + 16);
    v33 = *(v9 + 24);
    v34 = v6 + 1;
    if (v6 >= v33 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v6 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v34;
    v35 = v9 + 32;
    v36 = (v9 + 32 + 16 * v6);
    *v36 = v10;
    v36[1] = v8;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v6)
    {
      while (1)
      {
        v6 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v9 + 32);
          v38 = *(v9 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v9 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v6);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v6 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v9 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v6);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v6 - 1 >= v34)
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

        v74 = (v35 + 16 * (v6 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v6);
        v77 = v76[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v5)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v6 > *(v9 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v9 + 16);
        if (v6 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v6), v76 + 2, 16 * (v78 - 1 - v6));
        *(v9 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v9 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v6);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v6 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    a4 = v86;
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v26 = *a3;
  v27 = *a3 + 16 * v8;
  v28 = v10 - v8;
LABEL_30:
  a5 = *(v26 + 16 * v8 + 8);
  v29 = v28;
  v30 = v27;
  while (1)
  {
    if (a5 >= *(v30 - 1))
    {
LABEL_29:
      ++v8;
      v27 += 16;
      --v28;
      if (v8 != v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      goto LABEL_37;
    }

    if (!v26)
    {
      break;
    }

    v31 = *v30;
    *v30 = *(v30 - 1);
    *(v30 - 1) = a5;
    *(v30 - 2) = v31;
    v30 -= 2;
    if (__CFADD__(v29++, 1))
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
  return result;
}

{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8, a5);
      v8 = result;
    }

    v85 = (v8 + 16);
    v86 = *(v8 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v8 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v94);
        if (v5)
        {
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
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      a5 = *(*a3 + 40 * v7 + 32);
      v10 = 40 * v9;
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 32);
      v13 = v9 + 2;
      v14 = (v11 + 112);
      v15 = a5;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((a5 < v12) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (a5 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (a5 >= v12)
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
        v18 = 40 * v7 - 40;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            a5 = *(v27 + v10 + 32);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = *(v22 + 4);
            v26 = v22[1];
            *v21 = *v22;
            v21[1] = v26;
            *(v21 + 4) = v25;
            *v22 = v23;
            v22[1] = v24;
            *(v22 + 4) = a5;
          }

          ++v20;
          v18 -= 40;
          v10 += 40;
        }

        while (v20 < v19);
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

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v38 = *(v8 + 16);
    v37 = *(v8 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v39;
    v40 = v8 + 32;
    v41 = (v8 + 32 + 16 * v38);
    *v41 = v9;
    v41[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v8 + 32);
          v44 = *(v8 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v8 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
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
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v8 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
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
        if (v42 - 1 >= v39)
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * *v80), (*a3 + 40 * *v82), *a3 + 40 * v83, v94);
        if (v5)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v8 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v8 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v8 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
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
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
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

  v28 = *a3;
  v29 = *a3 + 40 * v7 - 8;
  v30 = v9 - v7;
LABEL_30:
  a5 = *(v28 + 40 * v7 + 32);
  v31 = v30;
  v32 = v29;
  while (1)
  {
    if (a5 >= *v32)
    {
LABEL_29:
      ++v7;
      v29 += 40;
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

    v33 = *(v32 + 8);
    v34 = *(v32 + 24);
    v35 = *(v32 - 16);
    *(v32 + 8) = *(v32 - 32);
    *(v32 + 24) = v35;
    *(v32 + 40) = *v32;
    *(v32 - 32) = v33;
    *(v32 - 16) = v34;
    *v32 = a5;
    v32 -= 40;
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
  return result;
}

{
  v94 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_188:
    v6 = *v94;
    if (!*v94)
    {
      goto LABEL_226;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_220:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7, a5);
      v7 = result;
    }

    v128 = v7;
    v87 = *(v7 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = *&v7[16 * v87];
        v89 = *&v7[16 * v87 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 168 * v88), (*a3 + 168 * *&v7[16 * v87 + 16]), (*a3 + 168 * v89), v6);
        if (v102)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_213;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7, a5);
        }

        if (v87 - 2 >= *(v7 + 2))
        {
          goto LABEL_214;
        }

        v90 = &v7[16 * v87];
        *v90 = v88;
        *(v90 + 1) = v89;
        v128 = v7;
        result = specialized Array.remove(at:)(v87 - 1);
        v7 = v128;
        v87 = *(v128 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_224;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v8 = v6;
  if (v6 + 1 >= v5)
  {
    v5 = v6 + 1;
  }

  else
  {
    v9 = *a3;
    outlined init with copy of NavigationRequest(*a3 + 168 * (v6 + 1), &v117);
    v10 = 168 * v6;
    v11 = v9 + 168 * v6;
    outlined init with copy of NavigationRequest(v11, v116);
    v99 = NavigationRequest.Action.equivalenceClass.getter();
    v97 = NavigationRequest.Action.equivalenceClass.getter();
    outlined destroy of NavigationRequest(v116);
    result = outlined destroy of NavigationRequest(&v117);
    v92 = v6;
    v12 = v6 + 2;
    v13 = v11 + 336;
    while (2)
    {
      if (v5 != v12)
      {
        outlined init with copy of NavigationRequest(v13, &v117);
        outlined init with copy of NavigationRequest(v13 - 168, v116);
        outlined init with copy of NavigationRequest.Action(&v117, &v103);
        v6 = 25;
        switch(v115)
        {
          case 0:
            outlined destroy of NavigationRequest.Action(&v103);
            v6 = 5;
            goto LABEL_33;
          case 1:
          case 4:
            outlined destroy of NavigationRequest.Action(&v103);
            v6 = 20;
            goto LABEL_33;
          case 2:
            _s2os6LoggerVSgWOhTm_2(&v103, type metadata accessor for Binding<AnyListSelection>);
            v6 = 20;
            goto LABEL_33;
          case 3:
          case 5:
            outlined destroy of NavigationRequest.Action(&v103);
            v6 = 15;
            goto LABEL_33;
          case 6:
            outlined destroy of NavigationRequest.Action(&v103);
            goto LABEL_25;
          case 7:
LABEL_25:
            v6 = 30;
            goto LABEL_33;
          case 8:
            goto LABEL_33;
          case 9:
            v6 = 60;
            goto LABEL_33;
          case 10:
          case 17:

            outlined destroy of AnyNavigationLinkPresentedValue(&v103);
            v6 = 40;
            goto LABEL_33;
          case 13:

            outlined destroy of NavigationLinkSelectionIdentifier(&v104);
            v6 = 40;
            goto LABEL_33;
          case 14:

            outlined destroy of NavigationLinkSelectionIdentifier(&v104);
            goto LABEL_27;
          case 18:

            outlined destroy of NavigationLinkSelectionIdentifier(&v105);
            v6 = 50;
            goto LABEL_33;
          case 19:
            outlined destroy of NavigationRequest.Action(&v103);
            v6 = 50;
            goto LABEL_33;
          case 20:
            goto LABEL_31;
          case 21:
            outlined destroy of NavigationRequest.Action(&v103);
LABEL_27:
            v6 = 80;
            goto LABEL_33;
          case 22:
            if (v108 | v103 | v109 | v114 | v113 | v112 | v111 | v110 | v107 | v106 | v105 | v104)
            {
              v16 = v109 | v108 | v114 | v113 | v112 | v111 | v110 | v107 | v106 | v105 | v104;
              if (v103 != 1 || v16)
              {
                if (v103 != 4 || v16)
                {
LABEL_32:
                  outlined destroy of NavigationRequest.Action(&v103);
                  v6 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
LABEL_31:
                  v6 = 70;
                }
              }

              else
              {
                v6 = 6;
              }
            }

            else
            {
              v6 = 0;
            }

LABEL_33:
            v17 = v5;
            outlined init with copy of NavigationRequest.Action(v116, &v103);
            v14 = 25;
            switch(v115)
            {
              case 0:
                outlined destroy of NavigationRequest.Action(&v103);
                v14 = 5;
                goto LABEL_7;
              case 1:
              case 4:
                outlined destroy of NavigationRequest.Action(&v103);
                goto LABEL_41;
              case 2:
                _s2os6LoggerVSgWOhTm_2(&v103, type metadata accessor for Binding<AnyListSelection>);
LABEL_41:
                v14 = 20;
                goto LABEL_7;
              case 3:
              case 5:
                outlined destroy of NavigationRequest.Action(&v103);
                v14 = 15;
                goto LABEL_7;
              case 6:
                outlined destroy of NavigationRequest.Action(&v103);
                goto LABEL_49;
              case 7:
LABEL_49:
                v14 = 30;
                goto LABEL_7;
              case 8:
                goto LABEL_7;
              case 9:
                v14 = 60;
                goto LABEL_7;
              case 10:
              case 17:

                outlined destroy of AnyNavigationLinkPresentedValue(&v103);
                v14 = 40;
                goto LABEL_7;
              case 13:

                outlined destroy of NavigationLinkSelectionIdentifier(&v104);
                v14 = 40;
                goto LABEL_7;
              case 14:

                outlined destroy of NavigationLinkSelectionIdentifier(&v104);
                goto LABEL_51;
              case 18:

                outlined destroy of NavigationLinkSelectionIdentifier(&v105);
                v14 = 50;
                goto LABEL_7;
              case 19:
                outlined destroy of NavigationRequest.Action(&v103);
                v14 = 50;
                goto LABEL_7;
              case 20:
                goto LABEL_55;
              case 21:
                outlined destroy of NavigationRequest.Action(&v103);
LABEL_51:
                v14 = 80;
                goto LABEL_7;
              case 22:
                if (v108 | v103 | v109 | v114 | v113 | v112 | v111 | v110 | v107 | v106 | v105 | v104)
                {
                  v18 = v109 | v108 | v114 | v113 | v112 | v111 | v110 | v107 | v106 | v105 | v104;
                  if (v103 != 1 || v18)
                  {
                    if (v103 != 4 || v18)
                    {
LABEL_56:
                      outlined destroy of NavigationRequest.Action(&v103);
                      v14 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
LABEL_55:
                      v14 = 70;
                    }
                  }

                  else
                  {
                    v14 = 6;
                  }
                }

                else
                {
                  v14 = 0;
                }

LABEL_7:
                outlined destroy of NavigationRequest(v116);
                result = outlined destroy of NavigationRequest(&v117);
                v15 = v6 >= v14;
                ++v12;
                v13 += 168;
                v5 = v17;
                if (((v99 < v97) ^ v15))
                {
                  continue;
                }

                v5 = v12 - 1;
                break;
              default:
                goto LABEL_56;
            }

            break;
          default:
            goto LABEL_32;
        }
      }

      break;
    }

    if (v99 < v97)
    {
      v19 = v92;
      if (v5 < v92)
      {
        goto LABEL_217;
      }

      if (v92 >= v5)
      {
        v8 = v92;
        goto LABEL_70;
      }

      v20 = 168 * v5 - 168;
      v6 = v5;
      do
      {
        if (v19 != --v6)
        {
          v22 = *a3;
          if (!*a3)
          {
            goto LABEL_223;
          }

          v21 = v22 + v20;
          v124 = *(v22 + v10 + 112);
          v125 = *(v22 + v10 + 128);
          v126 = *(v22 + v10 + 144);
          v127 = *(v22 + v10 + 160);
          v120 = *(v22 + v10 + 48);
          v121 = *(v22 + v10 + 64);
          v122 = *(v22 + v10 + 80);
          v123 = *(v22 + v10 + 96);
          v117 = *(v22 + v10);
          v118 = *(v22 + v10 + 16);
          v119 = *(v22 + v10 + 32);
          result = memmove((v22 + v10), (v22 + v20), 0xA8uLL);
          *(v21 + 112) = v124;
          *(v21 + 128) = v125;
          *(v21 + 144) = v126;
          *(v21 + 160) = v127;
          *(v21 + 48) = v120;
          *(v21 + 64) = v121;
          *(v21 + 80) = v122;
          *(v21 + 96) = v123;
          *v21 = v117;
          *(v21 + 16) = v118;
          a5 = *&v119;
          *(v21 + 32) = v119;
        }

        ++v19;
        v20 -= 168;
        v10 += 168;
      }

      while (v19 < v6);
    }

    v8 = v92;
  }

LABEL_70:
  v23 = a3[1];
  if (v5 >= v23)
  {
    goto LABEL_79;
  }

  if (__OFSUB__(v5, v8))
  {
    goto LABEL_216;
  }

  if (v5 - v8 >= a4)
  {
    goto LABEL_79;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_218;
  }

  if (v8 + a4 >= v23)
  {
    v6 = a3[1];
  }

  else
  {
    v6 = v8 + a4;
  }

  if (v6 < v8)
  {
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  if (v5 == v6)
  {
LABEL_79:
    v6 = v5;
    if (v5 < v8)
    {
      goto LABEL_215;
    }

    goto LABEL_80;
  }

  v71 = v8;
  v72 = *a3;
  v73 = *a3 + 168 * v5;
  v93 = v71;
  v74 = v71 - v5;
  v95 = v6;
LABEL_131:
  v98 = v73;
  v100 = v5;
  v96 = v74;
  v75 = v73;
  while (2)
  {
    outlined init with copy of NavigationRequest(v75, &v117);
    v76 = (v75 - 168);
    outlined init with copy of NavigationRequest(v75 - 168, v116);
    outlined init with copy of NavigationRequest.Action(&v117, &v103);
    v77 = 25;
    switch(v115)
    {
      case 0:
        outlined destroy of NavigationRequest.Action(&v103);
        v77 = 5;
        break;
      case 1:
      case 4:
        outlined destroy of NavigationRequest.Action(&v103);
        v77 = 20;
        break;
      case 2:
        _s2os6LoggerVSgWOhTm_2(&v103, type metadata accessor for Binding<AnyListSelection>);
        v77 = 20;
        break;
      case 3:
      case 5:
        outlined destroy of NavigationRequest.Action(&v103);
        v77 = 15;
        break;
      case 6:
        outlined destroy of NavigationRequest.Action(&v103);
        goto LABEL_148;
      case 7:
LABEL_148:
        v77 = 30;
        break;
      case 8:
        break;
      case 9:
        v77 = 60;
        break;
      case 10:
      case 17:

        outlined destroy of AnyNavigationLinkPresentedValue(&v103);
        v77 = 40;
        break;
      case 13:

        outlined destroy of NavigationLinkSelectionIdentifier(&v104);
        v77 = 40;
        break;
      case 14:

        outlined destroy of NavigationLinkSelectionIdentifier(&v104);
        goto LABEL_150;
      case 18:

        outlined destroy of NavigationLinkSelectionIdentifier(&v105);
        v77 = 50;
        break;
      case 19:
        outlined destroy of NavigationRequest.Action(&v103);
        v77 = 50;
        break;
      case 20:
        goto LABEL_154;
      case 21:
        outlined destroy of NavigationRequest.Action(&v103);
LABEL_150:
        v77 = 80;
        break;
      case 22:
        if (v108 | v103 | v109 | v114 | v113 | v112 | v111 | v110 | v107 | v106 | v105 | v104)
        {
          v78 = v109 | v108 | v114 | v113 | v112 | v111 | v110 | v107 | v106 | v105 | v104;
          if (v103 != 1 || v78)
          {
            if (v103 != 4 || v78)
            {
LABEL_155:
              outlined destroy of NavigationRequest.Action(&v103);
              v77 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
LABEL_154:
              v77 = 70;
            }
          }

          else
          {
            v77 = 6;
          }
        }

        else
        {
          v77 = 0;
        }

        break;
      default:
        goto LABEL_155;
    }

    outlined init with copy of NavigationRequest.Action(v116, &v103);
    v79 = 25;
    switch(v115)
    {
      case 0:
        outlined destroy of NavigationRequest.Action(&v103);
        v79 = 5;
        goto LABEL_180;
      case 1:
      case 4:
        outlined destroy of NavigationRequest.Action(&v103);
        v79 = 20;
        goto LABEL_180;
      case 2:
        _s2os6LoggerVSgWOhTm_2(&v103, type metadata accessor for Binding<AnyListSelection>);
        v79 = 20;
        goto LABEL_180;
      case 3:
      case 5:
        outlined destroy of NavigationRequest.Action(&v103);
        v79 = 15;
        goto LABEL_180;
      case 6:
        outlined destroy of NavigationRequest.Action(&v103);
        goto LABEL_172;
      case 7:
LABEL_172:
        v79 = 30;
        goto LABEL_180;
      case 8:
        goto LABEL_180;
      case 9:
        v79 = 60;
        goto LABEL_180;
      case 10:
      case 17:

        outlined destroy of AnyNavigationLinkPresentedValue(&v103);
        v79 = 40;
        goto LABEL_180;
      case 13:

        outlined destroy of NavigationLinkSelectionIdentifier(&v104);
        v79 = 40;
        goto LABEL_180;
      case 14:

        outlined destroy of NavigationLinkSelectionIdentifier(&v104);
        goto LABEL_174;
      case 18:

        outlined destroy of NavigationLinkSelectionIdentifier(&v105);
        v79 = 50;
        goto LABEL_180;
      case 19:
        outlined destroy of NavigationRequest.Action(&v103);
        v79 = 50;
        goto LABEL_180;
      case 20:
        goto LABEL_178;
      case 21:
        outlined destroy of NavigationRequest.Action(&v103);
LABEL_174:
        v79 = 80;
        goto LABEL_180;
      case 22:
        if (v108 | v103 | v109 | v114 | v113 | v112 | v111 | v110 | v107 | v106 | v105 | v104)
        {
          v80 = v109 | v108 | v114 | v113 | v112 | v111 | v110 | v107 | v106 | v105 | v104;
          if (v103 != 1 || v80)
          {
            if (v103 != 4 || v80)
            {
LABEL_179:
              outlined destroy of NavigationRequest.Action(&v103);
              v79 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
LABEL_178:
              v79 = 70;
            }
          }

          else
          {
            v79 = 6;
          }
        }

        else
        {
          v79 = 0;
        }

LABEL_180:
        outlined destroy of NavigationRequest(v116);
        result = outlined destroy of NavigationRequest(&v117);
        if (v77 >= v79)
        {
          goto LABEL_130;
        }

        if (v72)
        {
          v124 = *(v75 + 112);
          v125 = *(v75 + 128);
          v126 = *(v75 + 144);
          v127 = *(v75 + 160);
          v120 = *(v75 + 48);
          v121 = *(v75 + 64);
          v122 = *(v75 + 80);
          v123 = *(v75 + 96);
          v117 = *v75;
          v118 = *(v75 + 16);
          v119 = *(v75 + 32);
          v81 = *(v75 - 24);
          *(v75 + 128) = *(v75 - 40);
          *(v75 + 144) = v81;
          *(v75 + 160) = *(v75 - 8);
          v82 = *(v75 - 88);
          *(v75 + 64) = *(v75 - 104);
          *(v75 + 80) = v82;
          v83 = *(v75 - 56);
          *(v75 + 96) = *(v75 - 72);
          *(v75 + 112) = v83;
          v84 = *(v75 - 152);
          *v75 = *v76;
          *(v75 + 16) = v84;
          v85 = *(v75 - 120);
          *(v75 + 32) = *(v75 - 136);
          *(v75 + 48) = v85;
          *(v75 - 56) = v124;
          *(v75 - 40) = v125;
          *(v75 - 24) = v126;
          *(v75 - 8) = v127;
          *(v75 - 120) = v120;
          *(v75 - 104) = v121;
          *(v75 - 88) = v122;
          *(v75 - 72) = v123;
          *v76 = v117;
          *(v75 - 152) = v118;
          a5 = *&v119;
          *(v75 - 136) = v119;
          v75 -= 168;
          if (!__CFADD__(v74++, 1))
          {
            continue;
          }

LABEL_130:
          v5 = v100 + 1;
          v73 = v98 + 168;
          v6 = v95;
          v74 = v96 - 1;
          if (v100 + 1 != v95)
          {
            goto LABEL_131;
          }

          v8 = v93;
          if (v95 < v93)
          {
            goto LABEL_215;
          }

LABEL_80:
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
            v7 = result;
          }

          v25 = *(v7 + 2);
          v24 = *(v7 + 3);
          v26 = v25 + 1;
          if (v25 >= v24 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v7);
            v7 = result;
          }

          *(v7 + 2) = v26;
          v27 = &v7[16 * v25];
          *(v27 + 4) = v8;
          *(v27 + 5) = v6;
          v28 = *v94;
          if (!*v94)
          {
            goto LABEL_225;
          }

          if (v25)
          {
            while (1)
            {
              v29 = v26 - 1;
              if (v26 >= 4)
              {
                break;
              }

              if (v26 == 3)
              {
                v30 = *(v7 + 4);
                v31 = *(v7 + 5);
                v40 = __OFSUB__(v31, v30);
                v32 = v31 - v30;
                v33 = v40;
LABEL_99:
                if (v33)
                {
                  goto LABEL_204;
                }

                v46 = &v7[16 * v26];
                v48 = *v46;
                v47 = *(v46 + 1);
                v49 = __OFSUB__(v47, v48);
                v50 = v47 - v48;
                v51 = v49;
                if (v49)
                {
                  goto LABEL_207;
                }

                v52 = &v7[16 * v29 + 32];
                v54 = *v52;
                v53 = *(v52 + 1);
                v40 = __OFSUB__(v53, v54);
                v55 = v53 - v54;
                if (v40)
                {
                  goto LABEL_210;
                }

                if (__OFADD__(v50, v55))
                {
                  goto LABEL_211;
                }

                if (v50 + v55 >= v32)
                {
                  if (v32 < v55)
                  {
                    v29 = v26 - 2;
                  }

                  goto LABEL_120;
                }

                goto LABEL_113;
              }

              v56 = &v7[16 * v26];
              v58 = *v56;
              v57 = *(v56 + 1);
              v40 = __OFSUB__(v57, v58);
              v50 = v57 - v58;
              v51 = v40;
LABEL_113:
              if (v51)
              {
                goto LABEL_206;
              }

              v59 = &v7[16 * v29];
              v61 = *(v59 + 4);
              v60 = *(v59 + 5);
              v40 = __OFSUB__(v60, v61);
              v62 = v60 - v61;
              if (v40)
              {
                goto LABEL_209;
              }

              if (v62 < v50)
              {
                goto LABEL_3;
              }

LABEL_120:
              v67 = v29 - 1;
              if (v29 - 1 >= v26)
              {
                __break(1u);
LABEL_200:
                __break(1u);
LABEL_201:
                __break(1u);
LABEL_202:
                __break(1u);
LABEL_203:
                __break(1u);
LABEL_204:
                __break(1u);
LABEL_205:
                __break(1u);
LABEL_206:
                __break(1u);
LABEL_207:
                __break(1u);
LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
LABEL_211:
                __break(1u);
LABEL_212:
                __break(1u);
LABEL_213:
                __break(1u);
LABEL_214:
                __break(1u);
LABEL_215:
                __break(1u);
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
                goto LABEL_219;
              }

              if (!*a3)
              {
                goto LABEL_222;
              }

              v68 = *&v7[16 * v67 + 32];
              v69 = *&v7[16 * v29 + 40];
              specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 168 * v68), (*a3 + 168 * *&v7[16 * v29 + 32]), (*a3 + 168 * v69), v28);
              if (v102)
              {
              }

              if (v69 < v68)
              {
                goto LABEL_200;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7, a5);
              }

              if (v67 >= *(v7 + 2))
              {
                goto LABEL_201;
              }

              v70 = &v7[16 * v67];
              *(v70 + 4) = v68;
              *(v70 + 5) = v69;
              v128 = v7;
              result = specialized Array.remove(at:)(v29);
              v7 = v128;
              v26 = *(v128 + 2);
              if (v26 <= 1)
              {
                goto LABEL_3;
              }
            }

            v34 = &v7[16 * v26 + 32];
            v35 = *(v34 - 64);
            v36 = *(v34 - 56);
            v40 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            if (v40)
            {
              goto LABEL_202;
            }

            v39 = *(v34 - 48);
            v38 = *(v34 - 40);
            v40 = __OFSUB__(v38, v39);
            v32 = v38 - v39;
            v33 = v40;
            if (v40)
            {
              goto LABEL_203;
            }

            v41 = &v7[16 * v26];
            v43 = *v41;
            v42 = *(v41 + 1);
            v40 = __OFSUB__(v42, v43);
            v44 = v42 - v43;
            if (v40)
            {
              goto LABEL_205;
            }

            v40 = __OFADD__(v32, v44);
            v45 = v32 + v44;
            if (v40)
            {
              goto LABEL_208;
            }

            if (v45 >= v37)
            {
              v63 = &v7[16 * v29 + 32];
              v65 = *v63;
              v64 = *(v63 + 1);
              v40 = __OFSUB__(v64, v65);
              v66 = v64 - v65;
              if (v40)
              {
                goto LABEL_212;
              }

              if (v32 < v66)
              {
                v29 = v26 - 2;
              }

              goto LABEL_120;
            }

            goto LABEL_99;
          }

LABEL_3:
          v5 = a3[1];
          if (v6 >= v5)
          {
            goto LABEL_188;
          }

          goto LABEL_4;
        }

        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
        return result;
      default:
        goto LABEL_179;
    }
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
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
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
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

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
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
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
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

      if (v6[1] <= v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) <= *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
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
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
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

      if (*v6 <= *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 <= *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[4] < v4[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t specialized closure #1 in AccessibilityAdjustableModifier.body(content:)@<X0>(char *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a2[5];
  v6 = a2[7];
  v7 = a2[11];
  v8 = v7(1);
  if (v4)
  {
    v5 = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    v5(v8);
  }

LABEL_6:
  *a3 = 2;
  return v7(0);
}

void type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityAdjustableAction>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityAdjustableAction>>)
  {
    type metadata accessor for SliderTick<Double>(255, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityAdjustableAction>, lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction, &type metadata for AccessibilityAdjustableAction, type metadata accessor for AccessibilityActionStorage);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type AccessibilityActionStorage<AccessibilityAdjustableAction> and conformance AccessibilityActionStorage<A>(&lazy protocol witness table cache variable for type AccessibilityActionStorage<AccessibilityAdjustableAction> and conformance AccessibilityActionStorage<A>, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityAdjustableAction>, lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction, &type metadata for AccessibilityAdjustableAction);
    v6 = type metadata accessor for AnyAccessibilityAction.ConcreteBase(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityAdjustableAction>>);
    }
  }
}

uint64_t outlined init with copy of AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *))
{
  type metadata accessor for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for AccessibilityAdjustableModifier<ResolvedSliderStyle, AccessibilitySliderValue>.Configuration(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ResolvedSliderStyle and conformance ResolvedSliderStyle();
    v7 = lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
    v8 = lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
    v9 = lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
    v12[0] = &type metadata for ResolvedSliderStyle;
    v12[1] = MEMORY[0x1E6980340];
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v8;
    v12[5] = v9;
    v10 = a3(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t specialized closure #2 in AccessibilityAdjustableModifier.body(content:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a3 + 80);
  v12[4] = *(a3 + 64);
  v12[5] = v8;
  v13 = *(a3 + 96);
  v9 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v9;
  v10 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v10;
  return specialized closure #2 in AccessibilityAdjustableModifier.body(content:)(v5, v4, v7, v6, a2, v12);
}

void type metadata accessor for _ContiguousArrayStorage<AnyAccessibilityAction>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t partial apply for specialized closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 88);
  v4 = *(v1 + 104);
  v4(1);
  v6 = v2;
  v3(&v6);
  return (v4)(0);
}

uint64_t partial apply for specialized closure #1 in ModifiedContent<>.accessibilityAction<A>(_:label:image:_:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *a1;
  result = v4(&v6);
  *a2 = 2;
  return result;
}

void type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilitySetValueAction>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilitySetValueAction>>)
  {
    type metadata accessor for SliderTick<Double>(255, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilitySetValueAction>, lazy protocol witness table accessor for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction, &type metadata for AccessibilitySetValueAction, type metadata accessor for AccessibilityActionStorage);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type AccessibilityActionStorage<AccessibilityAdjustableAction> and conformance AccessibilityActionStorage<A>(&lazy protocol witness table cache variable for type AccessibilityActionStorage<AccessibilitySetValueAction> and conformance AccessibilityActionStorage<A>, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilitySetValueAction>, lazy protocol witness table accessor for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction, &type metadata for AccessibilitySetValueAction);
    v6 = type metadata accessor for AnyAccessibilityAction.ConcreteBase(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilitySetValueAction>>);
    }
  }
}

void type metadata accessor for SliderTick<Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type AccessibilityActionStorage<AccessibilityAdjustableAction> and conformance AccessibilityActionStorage<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SliderTick<Double>(255, a2, a3, a4, type metadata accessor for AccessibilityActionStorage);
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityActionStorage<A>, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for Normalizing(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = v4;
    v1 = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      if (v5 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      else
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t *initializeBufferWithCopyOfBuffer for Normalizing(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v8;
  v10 = v7 + v8;
  v11 = (v7 + v9) & ~v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = v7 + v14;
  v16 = *(v13 + 64);
  if (*(v13 + 84))
  {
    v17 = *(v13 + 64);
  }

  else
  {
    v17 = v16 + 1;
  }

  if ((v14 | v8) > 7 || ((*(v13 + 80) | v8) & 0x100000) != 0 || ((v17 + v14 + ((v17 + v14 + ((v15 + v11) & ~v14)) & ~v14)) & ~v14) + v16 > 0x18)
  {
    v20 = *a2;
    *a1 = *a2;
    a1 = (v20 + (((v14 | v8) + 16) & ~(v14 | v8)));
  }

  else
  {
    v31 = AssociatedTypeWitness;
    v32 = v17 + v14;
    __n = v17;
    v30 = ~v14;
    v21 = *(v6 + 16);
    v21(a1, a2, v5);
    v22 = (a2 + v10) & ~v9;
    v21(((a1 + v10) & ~v9), v22, v5);
    v23 = ((((a1 + v10) & ~v9) + v15) & v30);
    v24 = ((v22 + v15) & v30);
    v25 = *(v13 + 48);
    if (v25(v24, 1, v31))
    {
      memcpy(v23, v24, __n);
    }

    else
    {
      (*(v13 + 16))(v23, v24, v31);
      (*(v13 + 56))(v23, 0, 1, v31);
    }

    v26 = ((v23 + v32) & v30);
    v27 = ((v24 + v32) & v30);
    if (v25(v27, 1, v31))
    {
      memcpy(v26, v27, __n);
      (*(v13 + 16))((v26 + v32) & v30, (v27 + v32) & v30, v31);
    }

    else
    {
      v28 = *(v13 + 16);
      v28(v26, v27, v31);
      (*(v13 + 56))(v26, 0, 1, v31);
      v28(((v26 + v32) & v30), ((v27 + v32) & v30), v31);
    }
  }

  return a1;
}

uint64_t destroy for Normalizing(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(a1, v3);
  v6 = *(v4 + 64);
  v7 = (v6 + a1 + *(v4 + 80)) & ~*(v4 + 80);
  v5(v7, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ~v10;
  v12 = (v7 + v6 + v10) & ~v10;
  v20 = v9;
  v13 = *(v9 + 48);
  if (!v13(v12, 1, AssociatedTypeWitness))
  {
    (*(v20 + 8))(v12, AssociatedTypeWitness);
  }

  if (*(v20 + 84))
  {
    v14 = *(v20 + 64);
  }

  else
  {
    v14 = *(v20 + 64) + 1;
  }

  v15 = (v12 + v10 + v14) & v11;
  v16 = v13(v15, 1, AssociatedTypeWitness);
  v17 = *(v20 + 8);
  if (!v16)
  {
    v19 = *(v20 + 8);
    v17(v15, AssociatedTypeWitness);
    v17 = v19;
  }

  return (v17)((v14 + v10 + v15) & v11, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for Normalizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v27 = a1;
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = ~v14;
  v16 = ((v8 + v14 + v10) & ~v14);
  v17 = ((v8 + v14 + v11) & ~v14);
  v18 = *(v13 + 48);
  if (v18(v17, 1, AssociatedTypeWitness))
  {
    v19 = *(v13 + 84);
    v20 = *(v13 + 64);
    if (v19)
    {
      v21 = *(v13 + 64);
    }

    else
    {
      v21 = v20 + 1;
    }

    memcpy(v16, v17, v21);
  }

  else
  {
    (*(v13 + 16))(v16, v17, AssociatedTypeWitness);
    (*(v13 + 56))(v16, 0, 1, AssociatedTypeWitness);
    v19 = *(v13 + 84);
    v20 = *(v13 + 64);
  }

  if (v19)
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 + 1;
  }

  v23 = ((v16 + v14 + v22) & v15);
  v24 = ((v17 + v14 + v22) & v15);
  if (v18(v24, 1, AssociatedTypeWitness))
  {
    memcpy(v23, v24, v22);
    (*(v13 + 16))((v23 + v22 + v14) & v15, (v24 + v22 + v14) & v15, AssociatedTypeWitness);
  }

  else
  {
    v25 = *(v13 + 16);
    v25(v23, v24, AssociatedTypeWitness);
    (*(v13 + 56))(v23, 0, 1, AssociatedTypeWitness);
    v25(((v23 + v22 + v14) & v15), ((v24 + v22 + v14) & v15), AssociatedTypeWitness);
  }

  return v27;
}

uint64_t assignWithCopy for Normalizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v31 = a1;
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = v8 + v14;
  v16 = v8 + v14 + v10;
  v17 = ~v14;
  v18 = (v16 & ~v14);
  v19 = ((v15 + v11) & ~v14);
  v20 = *(v13 + 48);
  LODWORD(v10) = v20(v18, 1, AssociatedTypeWitness);
  v21 = v20(v19, 1, AssociatedTypeWitness);
  if (v10)
  {
    if (!v21)
    {
      (*(v13 + 16))(v18, v19, AssociatedTypeWitness);
      (*(v13 + 56))(v18, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v22 = *(v13 + 84);
    v23 = *(v13 + 64);
  }

  else
  {
    if (!v21)
    {
      (*(v13 + 24))(v18, v19, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v13 + 8))(v18, AssociatedTypeWitness);
    v22 = *(v13 + 84);
    v23 = *(v13 + 64);
  }

  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  memcpy(v18, v19, v24);
LABEL_12:
  if (*(v13 + 84))
  {
    v25 = *(v13 + 64);
  }

  else
  {
    v25 = *(v13 + 64) + 1;
  }

  v26 = ((v18 + v14 + v25) & v17);
  v27 = ((v19 + v14 + v25) & v17);
  v28 = v20(v26, 1, AssociatedTypeWitness);
  v29 = v20(v27, 1, AssociatedTypeWitness);
  if (!v28)
  {
    if (!v29)
    {
      (*(v13 + 24))(v26, v27, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v13 + 8))(v26, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v29)
  {
LABEL_20:
    memcpy(v26, v27, v25);
    goto LABEL_21;
  }

  (*(v13 + 16))(v26, v27, AssociatedTypeWitness);
  (*(v13 + 56))(v26, 0, 1, AssociatedTypeWitness);
LABEL_21:
  (*(v13 + 24))((v26 + v25 + v14) & v17, (v27 + v25 + v14) & v17, AssociatedTypeWitness);
  return v31;
}

uint64_t initializeWithTake for Normalizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v27 = a1;
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = ~v14;
  v16 = ((v8 + v14 + v10) & ~v14);
  v17 = ((v8 + v14 + v11) & ~v14);
  v18 = *(v13 + 48);
  if (v18(v17, 1, AssociatedTypeWitness))
  {
    v19 = *(v13 + 84);
    v20 = *(v13 + 64);
    if (v19)
    {
      v21 = *(v13 + 64);
    }

    else
    {
      v21 = v20 + 1;
    }

    memcpy(v16, v17, v21);
  }

  else
  {
    (*(v13 + 32))(v16, v17, AssociatedTypeWitness);
    (*(v13 + 56))(v16, 0, 1, AssociatedTypeWitness);
    v19 = *(v13 + 84);
    v20 = *(v13 + 64);
  }

  if (v19)
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 + 1;
  }

  v23 = ((v16 + v14 + v22) & v15);
  v24 = ((v17 + v14 + v22) & v15);
  if (v18(v24, 1, AssociatedTypeWitness))
  {
    memcpy(v23, v24, v22);
    (*(v13 + 32))((v23 + v22 + v14) & v15, (v24 + v22 + v14) & v15, AssociatedTypeWitness);
  }

  else
  {
    v25 = *(v13 + 32);
    v25(v23, v24, AssociatedTypeWitness);
    (*(v13 + 56))(v23, 0, 1, AssociatedTypeWitness);
    v25(((v23 + v22 + v14) & v15), ((v24 + v22 + v14) & v15), AssociatedTypeWitness);
  }

  return v27;
}

uint64_t assignWithTake for Normalizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v31 = a1;
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = v8 + v14;
  v16 = v8 + v14 + v10;
  v17 = ~v14;
  v18 = (v16 & ~v14);
  v19 = ((v15 + v11) & ~v14);
  v20 = *(v13 + 48);
  LODWORD(v10) = v20(v18, 1, AssociatedTypeWitness);
  v21 = v20(v19, 1, AssociatedTypeWitness);
  if (v10)
  {
    if (!v21)
    {
      (*(v13 + 32))(v18, v19, AssociatedTypeWitness);
      (*(v13 + 56))(v18, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v22 = *(v13 + 84);
    v23 = *(v13 + 64);
  }

  else
  {
    if (!v21)
    {
      (*(v13 + 40))(v18, v19, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v13 + 8))(v18, AssociatedTypeWitness);
    v22 = *(v13 + 84);
    v23 = *(v13 + 64);
  }

  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  memcpy(v18, v19, v24);
LABEL_12:
  if (*(v13 + 84))
  {
    v25 = *(v13 + 64);
  }

  else
  {
    v25 = *(v13 + 64) + 1;
  }

  v26 = ((v18 + v14 + v25) & v17);
  v27 = ((v19 + v14 + v25) & v17);
  v28 = v20(v26, 1, AssociatedTypeWitness);
  v29 = v20(v27, 1, AssociatedTypeWitness);
  if (!v28)
  {
    if (!v29)
    {
      (*(v13 + 40))(v26, v27, AssociatedTypeWitness);
      goto LABEL_21;
    }

    (*(v13 + 8))(v26, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v29)
  {
LABEL_20:
    memcpy(v26, v27, v25);
    goto LABEL_21;
  }

  (*(v13 + 32))(v26, v27, AssociatedTypeWitness);
  (*(v13 + 56))(v26, 0, 1, AssociatedTypeWitness);
LABEL_21:
  (*(v13 + 40))((v26 + v25 + v14) & v17, (v27 + v25 + v14) & v17, AssociatedTypeWitness);
  return v31;
}

uint64_t getEnumTagSinglePayload for Normalizing(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = v6;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 64);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  if (v11 > v14)
  {
    v14 = *(v10 + 84);
  }

  v15 = *(v9 + 80);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (v11)
  {
    v18 = *(v10 + 64);
  }

  else
  {
    v18 = v17 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v12 + v15;
  v20 = v18 + v16;
  if (a2 <= v14)
  {
    goto LABEL_36;
  }

  v21 = ((v20 + ((v20 + ((v12 + v16 + (v19 & ~v15)) & ~v16)) & ~v16)) & ~v16) + v17;
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((a2 - v14 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v24 < 2)
    {
LABEL_35:
      if (v14)
      {
LABEL_36:
        if (v7 == v14)
        {
          v28 = *(v9 + 48);

          return v28(a1, v7, v5);
        }

        else
        {
          v30 = (((a1 + v19) & ~v15) + v12 + v16) & ~v16;
          if (v13 == v14)
          {
            v31 = (*(v10 + 48))(v30);
            if (v31 >= 2)
            {
              return v31 - 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v32 = *(v10 + 48);
            v33 = (v20 + ((v20 + v30) & ~v16)) & ~v16;

            return v32(v33);
          }
        }
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_35;
  }

LABEL_22:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = v21;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v14 + (v27 | v25) + 1;
}

void storeEnumTagSinglePayload for Normalizing(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = v8;
  v12 = 0;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 64);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  if (v14 > v17)
  {
    v17 = *(v13 + 84);
  }

  v18 = *(v11 + 80);
  v19 = *(v13 + 80);
  v20 = *(v13 + 64);
  if (v14)
  {
    v21 = *(v13 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = v21 + v19;
  v23 = ((v22 + ((v22 + ((v15 + v19 + ((v15 + v18) & ~v18)) & ~v19)) & ~v19)) & ~v19) + v20;
  if (a3 <= v17)
  {
    goto LABEL_22;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v17 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v24))
    {
      v12 = 4;
      if (v17 >= a2)
      {
        goto LABEL_32;
      }

      goto LABEL_23;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 >= 2)
    {
      v12 = v25;
    }

    else
    {
      v12 = 0;
    }

LABEL_22:
    if (v17 >= a2)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v12 = 1;
  if (v17 >= a2)
  {
LABEL_32:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v23] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      *&a1[v23] = 0;
    }

    else if (v12)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    if (!a2)
    {
      return;
    }

LABEL_39:
    if (v9 == v17)
    {
      v29 = *(v11 + 56);

      v29(a1, a2, v9, v7);
    }

    else
    {
      v30 = ((&a1[v15 + v18] & ~v18) + v15 + v19) & ~v19;
      v31 = *(v13 + 56);
      if (v16 == v17)
      {
        v32 = (a2 + 1);
      }

      else
      {
        v30 = (v22 + ((v22 + v30) & ~v19)) & ~v19;
        v32 = a2;
      }

      v31(v30, v32);
    }

    return;
  }

LABEL_23:
  v26 = ~v17 + a2;
  if (v23 >= 4)
  {
    bzero(a1, v23);
    *a1 = v26;
    v27 = 1;
    if (v12 > 1)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v27 = (v26 >> (8 * v23)) + 1;
  if (!v23)
  {
LABEL_52:
    if (v12 > 1)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v28 = v26 & ~(-1 << (8 * v23));
  bzero(a1, v23);
  if (v23 == 3)
  {
    *a1 = v28;
    a1[2] = BYTE2(v28);
    goto LABEL_52;
  }

  if (v23 == 2)
  {
    *a1 = v28;
    if (v12 > 1)
    {
LABEL_56:
      if (v12 == 2)
      {
        *&a1[v23] = v27;
      }

      else
      {
        *&a1[v23] = v27;
      }

      return;
    }
  }

  else
  {
    *a1 = v26;
    if (v12 > 1)
    {
      goto LABEL_56;
    }
  }

LABEL_53:
  if (v12)
  {
    a1[v23] = v27;
  }
}

double specialized Clamping.get(base:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  result = v6;
  if (v6 < 0.0)
  {
    result = 0.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t specialized Clamping.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v22 = a1;
  v25 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v23 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  v19 = *(v9 + 8);
  v19(a1, a2, v16);
  dispatch thunk of BinaryFloatingPoint.init(_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v20 = v23;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  Comparable.clamp(min:max:)();
  (v19)(v20, a2);
  (v19)(v14, a2);
  return (v19)(v18, a2);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance OpenScenePayload(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return specialized static OpenScenePayload.== infix(_:_:)(v7, v8);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OpenScenePayload.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x4449656E656373;
  if (v2 != 1)
  {
    v4 = 1635017060;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x63617073656D616ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0xE700000000000000;
  v8 = 0x4449656E656373;
  if (*a2 != 1)
  {
    v8 = 1635017060;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x63617073656D616ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OpenScenePayload.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance OpenScenePayload.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OpenScenePayload.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance OpenScenePayload.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized OpenScenePayload.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance OpenScenePayload.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xE700000000000000;
  v5 = 0x4449656E656373;
  if (v2 != 1)
  {
    v5 = 1635017060;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x63617073656D616ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance OpenScenePayload.CodingKeys()
{
  v1 = 0x4449656E656373;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63617073656D616ELL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance OpenScenePayload.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized OpenScenePayload.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OpenScenePayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OpenScenePayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void OpenScenePayload.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedDecodingContainer<OpenScenePayload.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<OpenScenePayload.CodingKeys>, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  v18 = *(v3 + 16);
  v16 = 0;
  lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    goto LABEL_2;
  }

  v10 = *(v3 + 4);
  if (*(v3 + 40))
  {
    *&v17 = _typeName(_:qualified:)();
    *(&v17 + 1) = v11;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    v16 = v10;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v12);
  }

  else
  {
  }

  LOBYTE(v17) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();

  v13 = *(v3 + 7);
  if (v13 >> 60 == 15)
  {
LABEL_2:
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v14 = *(v3 + 6);
    *&v17 = v14;
    *(&v17 + 1) = v13;
    v16 = 2;
    outlined copy of Data._Representation(v14, v13);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    outlined consume of Data?(v14, v13);
  }
}

double protocol witness for Decodable.init(from:) in conformance OpenScenePayload@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized OpenScenePayload.init(from:)(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t OpenScenePayload.description.getter()
{
  v1 = v0;
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v12 = 0x63617073656D616ELL;
  v13 = 0xEB00000000203A65;
  v2 = SceneList.Namespace.description.getter(*v1, *(v1 + 8), *(v1 + 16));
  MEMORY[0x18D00C9B0](v2);

  MEMORY[0x18D00C9B0](0x49656E656373202CLL, 0xEB00000000203A44);
  v3 = *(v0 + 32);
  if (*(v0 + 40))
  {
    *&v14 = _typeName(_:qualified:)();
    *(&v14 + 1) = v4;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    LOBYTE(v11) = v3;
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v5);

    v3 = *(&v14 + 1);
    v6 = v14;
  }

  else
  {
    v7 = *(v0 + 24);

    v6 = v7;
  }

  MEMORY[0x18D00C9B0](v6, v3);

  MEMORY[0x18D00C9B0](0x203A61746164202CLL, 0xE800000000000000);
  v14 = *(v1 + 48);
  v11 = *(v1 + 48);
  outlined init with copy of Data?(&v14, &v10);
  type metadata accessor for Data?();
  v8 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v8);

  return v12;
}

uint64_t _s7SwiftUI35OpenSceneConnectionOptionDefinitionO0D16BridgingDelegate_pSo7UISceneCIegg_Ieghno_AcD_pxq_Ri_zRi0_zRi__Ri0__r0_lyAFytIsegnr_Iegnr_TR03_s7a4UI35cdefg8O19scenei11MethodyySo7j7CcAC0d8H27I0_pYbcvpZfiyAFcAcG_pYbcfu_Tf3nnpf_n@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of _Benchmark(a1, v5);
  v3 = swift_allocObject();
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v5, v3 + 16);
  result = swift_allocObject();
  *(result + 16) = partial apply for implicit closure #2 in implicit closure #1 in variable initialization expression of static OpenSceneConnectionOptionDefinition.sceneDelegateMethod;
  *(result + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIScene) -> ();
  a2[1] = result;
  return result;
}

double protocol witness for static UISceneConnectionOptionDefinition.invokeSceneDelegate(_:scene:payload:) in conformance OpenSceneConnectionOptionDefinition(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  static UISceneConnectionOptionDefinition<>.invokeSceneDelegate(_:scene:payload:)();

  return result;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x18CFFF420]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x18CFFF420]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x18CFFF420]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL specialized static OpenScenePayload.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v5 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v5 != 2 || (v4 | v3) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (v2 != v3 || v4 != a1[1])
    {
      v8 = a1;
      v9 = a2;
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v9;
      v11 = v10;
      a1 = v8;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v14 = a1[3];
  v13 = a1[4];
  v16 = a2[3];
  v15 = a2[4];
  if ((a1[5] & 1) == 0)
  {
    if ((a2[5] & 1) == 0)
    {
      if (v14 != v16 || v13 != v15)
      {
        v25 = a1;
        v26 = a2;
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
        a2 = v26;
        v28 = v27;
        a1 = v25;
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_36;
    }

    v18 = a1;
    v19 = a2;

    *&v36 = _typeName(_:qualified:)();
    *(&v36 + 1) = v20;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    LOBYTE(v35) = v15;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    v15 = *(&v36 + 1);
    if (v14 != v36)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if ((a2[5] & 1) == 0)
  {
    v18 = a1;
    v19 = a2;
    *&v36 = _typeName(_:qualified:)();
    *(&v36 + 1) = v22;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    LOBYTE(v35) = v13;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v23);

    v13 = *(&v36 + 1);

    if (v36 != v16)
    {
      goto LABEL_31;
    }

LABEL_29:
    if (v13 == v15)
    {

      a2 = v19;
      a1 = v18;
LABEL_36:
      v29 = *(a1 + 3);
      v35 = *(a2 + 3);
      v36 = v29;
      v30 = v29;
      v31 = v35;
      if (*(&v29 + 1) >> 60 == 15)
      {
        if (*(&v35 + 1) >> 60 == 15)
        {
          outlined init with copy of Data?(&v36, v34);
          outlined init with copy of Data?(&v35, v34);
          outlined consume of Data?(v30, *(&v30 + 1));
          return 1;
        }
      }

      else if (*(&v35 + 1) >> 60 != 15)
      {
        outlined init with copy of Data?(&v36, v34);
        outlined init with copy of Data?(&v35, v34);
        v33 = specialized static Data.== infix(_:_:)(v30, *(&v30 + 1), v31, *(&v31 + 1));
        outlined consume of Data?(v31, *(&v31 + 1));
        outlined consume of Data?(v30, *(&v30 + 1));
        return v33;
      }

      outlined init with copy of Data?(&v36, v34);
      outlined init with copy of Data?(&v35, v34);
      outlined consume of Data?(v30, *(&v30 + 1));
      outlined consume of Data?(v31, *(&v31 + 1));
      return 0;
    }

LABEL_31:
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a2 = v19;
    a1 = v18;
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_36;
  }

  v17 = 0;
  if (v14 == v16 && a1[4] == v15)
  {
    goto LABEL_36;
  }

  return v17;
}

void specialized OpenScenePayload.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for KeyedDecodingContainer<OpenScenePayload.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<OpenScenePayload.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined consume of Data?(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v24) = 0;
    lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v28;
    v23 = v29;
    v45 = v30;
    LOBYTE(v28) = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v12;
    v21 = v11;
    v42 = 0;
    v38 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    v14 = v39;
    v13 = v40;
    outlined consume of Data?(0, 0xF000000000000000);
    v15 = v10;
    v16 = v23;
    *&v24 = v10;
    *(&v24 + 1) = v23;
    LOBYTE(v10) = v45;
    LOBYTE(v25) = v45;
    *(&v25 + 1) = v43[0];
    DWORD1(v25) = *(v43 + 3);
    v17 = v21;
    *(&v25 + 1) = v21;
    *&v26 = v22;
    v44 = v42;
    BYTE8(v26) = v42;
    *(&v26 + 9) = *v41;
    HIDWORD(v26) = *&v41[3];
    *&v27 = v14;
    *(&v27 + 1) = v13;
    outlined init with copy of OpenScenePayload(&v24, &v28);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v28 = v15;
    v29 = v16;
    v30 = v10;
    *v31 = v43[0];
    *&v31[3] = *(v43 + 3);
    v32 = v17;
    v33 = v22;
    v34 = v44;
    *v35 = *v41;
    *&v35[3] = *&v41[3];
    v36 = v14;
    v37 = v13;
    outlined destroy of OpenScenePayload(&v28);
    v18 = v25;
    *a2 = v24;
    a2[1] = v18;
    v19 = v27;
    a2[2] = v26;
    a2[3] = v19;
  }
}

unint64_t lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenScenePayload.CodingKeys, &unk_1EFFA9698, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenScenePayload.CodingKeys, &unk_1EFFA9698, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenScenePayload.CodingKeys, &unk_1EFFA9698, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenScenePayload.CodingKeys, &unk_1EFFA9698, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<OpenScenePayload.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type OpenScenePayload.CodingKeys and conformance OpenScenePayload.CodingKeys();
    v7 = a3(a1, &unk_1EFFA9698, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of Data?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Data?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Data?()
{
  if (!lazy cache variable for type metadata for Data?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Data?);
    }
  }
}

double destroy for OpenScenePayload(uint64_t a1)
{
  outlined consume of SceneList.Namespace(*a1, *(a1 + 8), *(a1 + 16));
  outlined consume of SceneID(*(a1 + 24), *(a1 + 32), *(a1 + 40));
  v3 = *(a1 + 56);
  if (v3 >> 60 != 15)
  {
    v4 = *(a1 + 48);

    return outlined consume of Data._Representation(v4, v3);
  }

  return result;
}

uint64_t initializeWithCopy for OpenScenePayload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of SceneID(v7, v8, v9);
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(a2 + 56);
  if (v10 >> 60 == 15)
  {
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v11 = *(a2 + 48);
    outlined copy of Data._Representation(v11, v10);
    *(a1 + 48) = v11;
    *(a1 + 56) = v10;
  }

  return a1;
}

uint64_t assignWithCopy for OpenScenePayload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  outlined consume of SceneList.Namespace(v7, v8, v9);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  outlined copy of SceneID(v10, v11, v12);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  outlined consume of SceneID(v13, v14, v15);
  v16 = *(a2 + 56);
  if (*(a1 + 56) >> 60 != 15)
  {
    if (v16 >> 60 != 15)
    {
      v18 = *(a2 + 48);
      outlined copy of Data._Representation(v18, v16);
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      *(a1 + 48) = v18;
      *(a1 + 56) = v16;
      outlined consume of Data._Representation(v19, v20);
      return a1;
    }

    outlined destroy of Data(a1 + 48);
    goto LABEL_6;
  }

  if (v16 >> 60 == 15)
  {
LABEL_6:
    *(a1 + 48) = *(a2 + 48);
    return a1;
  }

  v17 = *(a2 + 48);
  outlined copy of Data._Representation(v17, v16);
  *(a1 + 48) = v17;
  *(a1 + 56) = v16;
  return a1;
}

uint64_t assignWithTake for OpenScenePayload(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  v7 = *(a1 + 16);
  *(a1 + 16) = v4;
  outlined consume of SceneList.Namespace(v5, v6, v7);
  v8 = *(a2 + 40);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v8;
  outlined consume of SceneID(v9, v10, v11);
  v12 = *(a1 + 56);
  if (v12 >> 60 != 15)
  {
    v13 = *(a2 + 56);
    if (v13 >> 60 != 15)
    {
      v14 = *(a1 + 48);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v13;
      outlined consume of Data._Representation(v14, v12);
      return a1;
    }

    outlined destroy of Data(a1 + 48);
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for OpenScenePayload(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OpenScenePayload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OpenScenePayload and conformance OpenScenePayload()
{
  result = lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload;
  if (!lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenScenePayload, &type metadata for OpenScenePayload, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload;
  if (!lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenScenePayload, &type metadata for OpenScenePayload, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpenScenePayload and conformance OpenScenePayload);
  }

  return result;
}

unint64_t specialized OpenScenePayload.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OpenScenePayload.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UIScene) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in variable initialization expression of static OpenSceneConnectionOptionDefinition.sceneDelegateMethod(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t closure #1 in static GestureContainerDefinition.printGestureContainerAncestors(_:)(uint64_t a1)
{
  type metadata accessor for ViewResponderGestureContainer();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    v1 = ViewResponderGestureContainer.description.getter();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_getObjectType();
    v2 = AGTypeID.description.getter();
    MEMORY[0x18D00C9B0](v2);

    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  return v1;
}

uint64_t specialized static GestureContainerDefinition.printGestureContainerAncestors(_:)(uint64_t a1)
{
  v11 = specialized thunk for @escaping @callee_guaranteed (@guaranteed _UIGestureRecognizerContainer) -> (@owned String);
  v12 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = thunk for @escaping @callee_guaranteed (@guaranteed _UIGestureRecognizerContainer) -> (@owned String?);
  v10 = &block_descriptor_16;
  v1 = _Block_copy(&v7);

  v2 = _UIGestureRecognizerContainerAncestralDescription();
  _Block_release(v1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v7 = 0;
  v8 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v7 = 0xD000000000000013;
  v8 = 0x800000018CD43630;
  MEMORY[0x18D00C9B0](v3, v5);

  MEMORY[0x18D0097D0](v7, v8);
}

void PointerBridge.preferencesDidChange(_:)(void *a1)
{
  v2 = v1;
  PreferenceValues.subscript.getter();
  v3 = OBJC_IVAR____TtC7SwiftUI13PointerBridge_hasHoverEffectSeed;
  if (v13 == -1 || v13 != *(v1 + OBJC_IVAR____TtC7SwiftUI13PointerBridge_hasHoverEffectSeed))
  {
    v4 = v1 + OBJC_IVAR____TtC7SwiftUI13PointerBridge_host;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v5 + 16) + 8));
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = OBJC_IVAR____TtC7SwiftUI13PointerBridge_interaction;
      v9 = *(v2 + OBJC_IVAR____TtC7SwiftUI13PointerBridge_interaction);
      if (v9)
      {
        if ((v12 & 1) == 0)
        {
          v10 = v9;
          [v7 removeInteraction_];

          v11 = 0;
LABEL_10:
          v7 = *(v2 + v8);
          *(v2 + v8) = v11;
        }
      }

      else if (v12)
      {
        v11 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
        [v7 swiftui:v11 addManagedInteraction:?];

        goto LABEL_10;
      }

      *(v2 + v3) = v13;
    }
  }
}

uint64_t PointerBridge.hoverEffectResponder(for:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI13PointerBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v5 + 16) + 8));
    swift_unknownObjectRelease();
    if (!v7)
    {
      return 0;
    }

    [a1 location];
    [v7 convertPoint:0 toView:?];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v3 + 8);
      v9 = swift_getObjectType();
      v10 = (*(v8 + 24))(v9, v8);
      swift_unknownObjectRelease();
      if (v10)
      {
        type metadata accessor for ViewResponder();
        if (!swift_dynamicCastClass())
        {

          return 0;
        }

        v11 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();

        if (v11)
        {
          type metadata accessor for HoverEffectResponder(0);
          ResponderNode.firstAncestor<A>(ofType:)();

          return 0;
        }
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL PointerIdentifier.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v6);
  if (v7)
  {
    type metadata accessor for PointerIdentifier();
    if (swift_dynamicCast())
    {
      v2 = *&v5[OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base];

      return v2 && *(v1 + OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base) == v2;
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  }

  v2 = 0;
  return v2 && *(v1 + OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base) == v2;
}

uint64_t PointerIdentifier.description.getter()
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD43730);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](62, 0xE100000000000000);
  return 0;
}

uint64_t PointerIdentifier.pointerStyle(host:)(UIView *a1)
{
  v3 = type metadata accessor for UIPointerEffect();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v97 - v8);
  type metadata accessor for UIPointerShape?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v97 - v13);
  result = 0;
  if (*(*(v1 + OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base) + 296) == 3)
  {
    return result;
  }

  v107 = *(*(v1 + OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base) + 296);
  v108 = v12;
  v109 = v6;
  v110 = v4;
  v111 = v3;
  v16 = OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base;

  UIViewSnapshotResponder.contentPath.getter(&v127);
  y = *(&v127 + 1);
  v105 = v127;
  v102 = *(&v128 + 1);
  width = *&v128;
  v101 = v129;

  LODWORD(v121) = *(*(v1 + v16) + 300);
  v113 = a1;
  v17 = UIView.findPortal(kind:id:excludingGroups:)(4, &v121, 0);
  LODWORD(v106) = v18;
  v99 = v16;
  v100 = v1;
  v19 = *(v1 + v16);
  v112 = v17;
  v20 = v17;

  v21 = v20;
  v22 = [v20 superview];
  MEMORY[0x18D00ABE0]();
  AGGraphClearUpdate();
  v23 = *(v19 + 136);
  v123 = *(v19 + 120);
  v124 = v23;
  v125 = *(v19 + 152);
  v126 = *(v19 + 168);
  v24 = *(v19 + 104);
  v121 = *(v19 + 88);
  v122 = v24;
  _ViewInputs.position.getter();
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v26 = *Value;
  v27 = Value[1];
  AGGraphSetUpdate();
  v28 = *(v19 + 240);
  v29 = *(v19 + 248);
  UIViewSnapshotResponder.contentPath.getter(v130);
  if (v131 == 255)
  {
    v33 = 0.0;
    v31 = 0.0;
  }

  else
  {
    v134 = v130[0];
    v135 = v130[1];
    v136 = v131;
    Path.boundingRect.getter();
    v31 = v30;
    v33 = v32;
    outlined destroy of AnyAccessibilityValue?(v130, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
  }

  v34 = v26 - v28;
  v35 = v27 - v29;
  if (v112)
  {
    v36 = v20;
    [v36 convertPoint:v113 toCoordinateSpace:{0.0, 0.0}];
    v38 = v37;
    v40 = v39;
    *v132 = v34;
    *(v132 + 1) = v35;
    hostingViewCoordinateSpace.getter();
    v116 = 1;
    AGGraphClearUpdate();
    LOBYTE(v121) = 17;
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228]);
    static Update.dispatchImmediately<A>(reason:_:)();
    AGGraphSetUpdate();
    if (v117 == 1)
    {
      ViewTransform.init()();
    }

    else
    {
      v121 = v117;
      v122 = v118;
      v123 = v119;
    }

    ViewTransform.appendPosition(_:)(*(v19 + 240));
    ApplyViewTransform.convert(to:transform:)();
    outlined destroy of CoordinateSpace(v114);

    v43 = *(v132 + 1) - v40;
    v44 = v40 - *(v132 + 1);
    if (v106)
    {
      v31 = v38 - *v132;
    }

    else
    {
      v31 = *v132 - v38;
    }

    if (v106)
    {
      v33 = v44;
    }

    else
    {
      v33 = v43;
    }

    [v36 bounds];
  }

  else
  {
    v41 = *(v19 + 224);
    v42 = *(v19 + 232);
  }

  v45 = v31;
  v46 = v33;
  v137 = CGRectOffset(*(&v41 - 2), v34, v35);
  v114[0].i64[0] = *&v137.origin.x;
  v114[0].i64[1] = *&v137.origin.y;
  v114[1].i64[0] = *&v137.size.width;
  v114[1].i64[1] = *&v137.size.height;
  v115 = 0;
  v47 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(v114, v113, 2, v22);
  v49 = v48;
  v106 = [objc_allocWithZone(MEMORY[0x1E69DCE38]) initWithContainer:v48 center:{v47, v50}];

  static Update.end()();

  v51 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v52 = [objc_opt_self() clearColor];
  [(UIView *)v51 setBackgroundColor:v52];

  v53 = type metadata accessor for UIPointerShape();
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v55(v14, 1, 1, v53);
  if (v129 == 255)
  {
    v56 = v14;
    v57 = v21;

    goto LABEL_27;
  }

  v98 = v55;
  v132[0] = v127;
  v132[1] = v128;
  v133 = v129;
  outlined copy of Path.Storage(v105, *&y, *&width, v102, v101);
  if (Path.isEmpty.getter())
  {
    v56 = v14;
    v57 = v21;

    outlined destroy of AnyAccessibilityValue?(&v127, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
LABEL_27:
    v84 = v108;
    goto LABEL_28;
  }

  Path.roundedRect()();
  v58 = v124;
  if (v124 == 2 || (v59 = v123, v60 = v122, v61 = v121, (v124 & 1) == 0) && (LOBYTE(v124) = 0, FixedRoundedRect.rect.getter(), v63 = v62, v117 = v61, v118 = v60, v119 = v59, v120 = 0, FixedRoundedRect.rect.getter(), v63 != v64) || (v121 = v61, v122 = v60, v123 = v59, v65 = v58 & 1, LOBYTE(v124) = v65, FixedRoundedRect.cornerSize.getter(), v67 = v66, v117 = v61, v118 = v60, v119 = v59, v120 = v65, FixedRoundedRect.cornerSize.getter(), v67 != v68))
  {
    v57 = v21;

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath, 0x1E69DC728);
    v85 = UIBezierPath.init(_:)(v132);
    outlined destroy of UIPointerShape?(v14);
    *v14 = v85;
    (*(v54 + 104))(v14, *MEMORY[0x1E69DBED8], v53);
    v56 = v14;
    v98(v14, 0, 1, v53);
    goto LABEL_27;
  }

  v102 = *(v100 + v99);
  v121 = v61;
  v122 = v60;
  v123 = v59;
  LOBYTE(v124) = v65;

  FixedRoundedRect.rect.getter();
  v70 = v69;
  width = v72;
  y = v71;
  v74 = v73;
  LODWORD(v105) = v65;
  v57 = v21;
  v75 = [v21 superview];

  v138.origin.x = v70;
  v138.size.width = width;
  v138.origin.y = y;
  v138.size.height = v74;
  v139 = UIViewSnapshotResponder.convertRectToTargetSpace(_:host:preferredContainer:)(v138, v113, v75);
  x = v139.origin.x;
  width = v139.size.width;
  y = v139.origin.y;
  height = v139.size.height;

  v121 = v61;
  v122 = v60;
  v123 = v59;
  LOBYTE(v124) = v105;
  FixedRoundedRect.cornerSize.getter();
  v79 = v78;
  outlined destroy of AnyAccessibilityValue?(&v127, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
  outlined destroy of UIPointerShape?(v14);
  v80 = v108;
  v81 = width;
  v82 = y;
  *v108 = x;
  v80[1] = v82;
  v80[2] = v81;
  v80[3] = height;
  *(v80 + 4) = v79;
  (*(v54 + 104))(v80, *MEMORY[0x1E69DBED0], v53);
  v98(v80, 0, 1, v53);
  v83 = v14;
  v84 = v80;
  v56 = v83;
  outlined init with take of UIPointerShape?(v80, v83);
LABEL_28:
  v86 = v57;
  if (!v112)
  {
    v87 = *(v100 + v99);

    AGGraphClearUpdate();
    closure #1 in UIViewSnapshotResponder.snapshotView(host:)(v87, v113, &v121);
    AGGraphSetUpdate();

    v86 = v121;
  }

  v88 = objc_allocWithZone(MEMORY[0x1E69DD070]);
  v89 = v57;
  v90 = v51;
  v113 = v51;
  v91 = v106;
  v92 = [v88 initWithView:v86 parameters:v90 target:v106];

  v93 = v110;
  v94 = *(v110 + 104);
  *v9 = v92;
  v95 = v111;
  v94(v9, **(&unk_1E7237AC0 + v107), v111);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerStyle, 0x1E69DCDD0);
  (*(v93 + 16))(v109, v9, v95);
  outlined init with copy of UIPointerShape?(v56, v84);
  v96 = UIPointerStyle.init(effect:shape:)();

  outlined destroy of AnyAccessibilityValue?(&v127, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
  (*(v93 + 8))(v9, v95);
  outlined destroy of UIPointerShape?(v56);
  return v96;
}

id PointerIdentifier.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PointerIdentifier();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void type metadata accessor for UIPointerShape?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIPointerShape?)
  {
    type metadata accessor for UIPointerShape();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIPointerShape?);
    }
  }
}

uint64_t outlined init with copy of UIPointerShape?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIPointerShape?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UIPointerShape?(uint64_t a1)
{
  type metadata accessor for UIPointerShape?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of UIPointerShape?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIPointerShape?(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized PointerBridge.pointerInteraction(_:regionFor:defaultRegion:)(void *a1)
{
  MEMORY[0x18D00ABE0]();
  v2 = PointerBridge.hoverEffectResponder(for:)(a1);
  if (v2)
  {
    v3 = v2;

    UIViewSnapshotResponder.contentPath.getter(v29);
    if (v30 == 255)
    {
      v9 = *(v3 + 224);
      v11 = *(v3 + 232);
      v5 = 0;
      v7 = 0;
    }

    else
    {
      v31 = v29[0];
      v32 = v29[1];
      v33 = v30;
      Path.boundingRect.getter();
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      outlined destroy of AnyAccessibilityValue?(v29, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
    }

    v25 = v5;
    v26 = v7;
    v27 = v9;
    v28 = v11;
    hostingViewCoordinateSpace.getter();
    v24 = 1;
    AGGraphClearUpdate();
    LOBYTE(v20) = 17;
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228]);
    static Update.dispatchImmediately<A>(reason:_:)();
    AGGraphSetUpdate();
    if (v17 == 1)
    {
      ViewTransform.init()();
    }

    else
    {
      v20 = v17;
      v21 = v18;
      v22 = v19;
    }

    ViewTransform.appendPosition(_:)(*(v3 + 240));

    CGRect.convert(to:transform:)();

    outlined destroy of CoordinateSpace(v23);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerRegion, 0x1E69DCDC0);
    v13 = type metadata accessor for PointerIdentifier();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC7SwiftUIP33_E281E5F41850D012D9603104FBB83C5417PointerIdentifier_base] = v3;
    v16.receiver = v14;
    v16.super_class = v13;

    *&v17 = objc_msgSendSuper2(&v16, sel_init);
    lazy protocol witness table accessor for type PointerIdentifier and conformance NSObject();
    AnyHashable.init<A>(_:)();
    v12 = UIPointerRegion.init(rect:identifier:)();

    static Update.end()();
  }

  else
  {
    static Update.end()();
    return 0;
  }

  return v12;
}

uint64_t specialized PointerBridge.pointerInteraction(_:styleFor:)()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI13PointerBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v3 + 16) + 8));
    swift_unknownObjectRelease();
    if (v5)
    {
      UIPointerRegion.identifier.getter();
      if (v9)
      {
        v6.isa = AnyHashable._bridgeToObjectiveC()().isa;
        outlined destroy of AnyHashable(v8);
        type metadata accessor for PointerIdentifier();
        if (swift_dynamicCastClass())
        {
          v7 = PointerIdentifier.pointerStyle(host:)(v5);

          return v7;
        }
      }

      else
      {

        outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PointerIdentifier and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type PointerIdentifier and conformance NSObject;
  if (!lazy protocol witness table cache variable for type PointerIdentifier and conformance NSObject)
  {
    v3 = type metadata accessor for PointerIdentifier();
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PointerIdentifier and conformance NSObject);
  }

  return result;
}

uint64_t _SymmetricallyScaledText.source.getter()
{
  v1 = *v0;
  outlined copy of Text.Storage(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t _SymmetricallyScaledText.source.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

uint64_t _SymmetricallyScaledText.reference.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Text.Storage(v1, *(v0 + 40), *(v0 + 48));

  return v1;
}

uint64_t _SymmetricallyScaledText.reference.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined consume of Text.Storage(*(v4 + 32), *(v4 + 40), *(v4 + 48));

  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3 & 1;
  *(v4 + 56) = a4;
  return result;
}

uint64_t _SymmetricallyScaledText.init(source:reference:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  return result;
}

uint64_t static _SymmetricallyScaledText._makeView(view:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v17 = *(a2 + 32);
  v18 = v8;
  v10 = *(a2 + 48);
  v19 = *(a2 + 64);
  v11 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v11;
  v24 = v17;
  v25 = v10;
  v26 = *(a2 + 64);
  v12 = *a1;
  v20 = *(a2 + 80);
  v27 = *(a2 + 80);
  v22 = v16[0];
  v23 = v9;
  v13 = _ViewInputs.textAccessibilityProvider.getter();
  v21 = v12;
  return static _SymmetricallyScaledText.makeView<A>(_:view:inputs:)(v13, &v21, v16, v13, v14);
}

uint64_t static _SymmetricallyScaledText.makeView<A>(_:view:inputs:)(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v20 = *a3;
  v7 = a3[2];
  v8 = *(a3 + 5);
  v26 = *(a3 + 3);
  v27 = v8;
  v28[0] = *(a3 + 7);
  *(v28 + 12) = *(a3 + 68);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v10 = AGGraphCreateOffsetAttribute2();
  swift_beginAccess();
  v11 = *(v7 + 16);
  PropertyList.subscript.getter();
  v12 = v29;
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  *&v29 = __PAIR64__(v10, OffsetAttribute2);
  DWORD2(v29) = v11;
  *v30 = PropertyList.Tracker.init()();
  memset(&v30[8], 0, 80);
  *&v30[88] = v12;
  v31 = 0;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for ModifiedContent();
  v15 = type metadata accessor for SymmetricTextChildQuery(0, a4, a5, v14);
  v18 = a3[1];
  HIDWORD(v29) = v18;
  v24[3] = *&v30[48];
  v24[4] = *&v30[64];
  v24[5] = *&v30[80];
  v25 = 0;
  v24[1] = *&v30[16];
  v24[2] = *&v30[32];
  v23 = v29;
  v24[0] = *v30;
  v16 = *(v15 - 8);
  (*(v16 + 16))(v22, &v29, v15);
  swift_getWitnessTable(protocol conformance descriptor for SymmetricTextChildQuery<A>, v15);
  _GraphValue.init<A>(_:)();
  *&v23 = v20;
  *(&v23 + 1) = v18;
  *&v24[0] = v7;
  *(v24 + 8) = v26;
  *(&v24[1] + 8) = v27;
  *(&v24[2] + 8) = v28[0];
  *(&v24[3] + 4) = *(v28 + 12);
  v21[0] = swift_getAssociatedConformanceWitness();
  v21[1] = &protocol witness table for SymmetricallyScaledTextLayout;
  swift_getWitnessTable(MEMORY[0x1E697E858], v13, v21);
  static View.makeDebuggableView(view:inputs:)();
  return (*(v16 + 8))(&v29, v15);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _SymmetricallyScaledText(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v17 = *(a2 + 32);
  v18 = v8;
  v10 = *(a2 + 48);
  v19 = *(a2 + 64);
  v11 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v11;
  v24 = v17;
  v25 = v10;
  v26 = *(a2 + 64);
  v12 = *a1;
  v20 = *(a2 + 80);
  v27 = *(a2 + 80);
  v22 = v16[0];
  v23 = v9;
  v13 = _ViewInputs.textAccessibilityProvider.getter();
  v21 = v12;
  return static _SymmetricallyScaledText.makeView<A>(_:view:inputs:)(v13, &v21, v16, v13, v14);
}

uint64_t destroy for _SymmetricallyScaledText(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
}

uint64_t initializeWithCopy for _SymmetricallyScaledText(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);

  outlined copy of Text.Storage(v7, v8, v9);
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for _SymmetricallyScaledText(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  outlined copy of Text.Storage(v10, v11, v12);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  outlined consume of Text.Storage(v13, v14, v15);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for _SymmetricallyScaledText(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  v8 = *(a2 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

void destroy for SymmetricTextChildQuery(uint64_t a1)
{

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  if (*(a1 + 96))
  {
    outlined consume of Text.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88));
  }
}

uint64_t initializeWithCopy for SymmetricTextChildQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 64);

  if (!v5)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    v9 = *(a2 + 96);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_6;
  }

  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  outlined copy of Text.Storage(v6, v7, v8);
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v5;

  v9 = *(a2 + 96);
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  outlined copy of Text.Storage(v10, v11, v12);
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = v9;

LABEL_6:
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithCopy for SymmetricTextChildQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v4 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v4)
    {
      v5 = *(a2 + 40);
      v6 = *(a2 + 48);
      v7 = *(a2 + 56);
      outlined copy of Text.Storage(v5, v6, v7);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *(a1 + 40) = v5;
      *(a1 + 48) = v6;
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v14 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v14;
    }
  }

  else if (v4)
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(a2 + 56);
    outlined copy of Text.Storage(v11, v12, v13);
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v15 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v15;
  }

  v16 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v16)
    {
      v17 = *(a2 + 72);
      v18 = *(a2 + 80);
      v19 = *(a2 + 88);
      outlined copy of Text.Storage(v17, v18, v19);
      v20 = *(a1 + 72);
      v21 = *(a1 + 80);
      v22 = *(a1 + 88);
      *(a1 + 72) = v17;
      *(a1 + 80) = v18;
      *(a1 + 88) = v19;
      outlined consume of Text.Storage(v20, v21, v22);
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of Text(a1 + 72);
      v26 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = v26;
    }
  }

  else if (v16)
  {
    v23 = *(a2 + 72);
    v24 = *(a2 + 80);
    v25 = *(a2 + 88);
    outlined copy of Text.Storage(v23, v24, v25);
    *(a1 + 72) = v23;
    *(a1 + 80) = v24;
    *(a1 + 88) = v25;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v27 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v27;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithTake for SymmetricTextChildQuery(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  if (*(a1 + 64))
  {
    v4 = *(a2 + 64);
    if (v4)
    {
      v5 = *(a2 + 56);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v5;
      outlined consume of Text.Storage(v6, v7, v8);
      *(a1 + 64) = v4;

      if (!*(a1 + 96))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  if (!*(a1 + 96))
  {
LABEL_10:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_11;
  }

LABEL_7:
  v9 = *(a2 + 96);
  if (!v9)
  {
    outlined destroy of Text(a1 + 72);
    goto LABEL_10;
  }

  v10 = *(a2 + 88);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v10;
  outlined consume of Text.Storage(v11, v12, v13);
  *(a1 + 96) = v9;

LABEL_11:
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for SymmetricTextChildQuery(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for SymmetricTextChildQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for SymmetricallyScaledTextLayout(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for SymmetricallyScaledTextLayout(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

void SymmetricTextChildQuery.updateValue()(uint64_t a1)
{
  v2 = v1;
  v140 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v112 = a1;
  v107 = v3;
  v106 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v105 = &v101[-v6];
  v109 = v7;
  v115 = type metadata accessor for ModifiedContent();
  v111 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v110 = &v101[-v8];
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v119 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v101[-v12];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v101[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Value = AGGraphGetValue();
  v18 = v17;
  v19 = *(Value + 8);
  v20 = *(Value + 16);
  v21 = *(Value + 24);
  v125 = *Value;
  v126 = v19;
  v127 = v20;
  outlined copy of Text.Storage(v125, v19, v20);
  v128 = v21;

  v22 = AGGraphGetValue();
  v24 = v23;
  v26 = *v22;
  v25 = *(v22 + 8);
  v27 = *(v22 + 16);
  v123 = *(v22 + 24);
  v122 = v26;
  v124 = v25;
  outlined copy of Text.Storage(v26, v25, v27);

  v28 = AGGraphGetValue();
  v30 = v29;
  v31 = *v28;
  v32 = *(v1 + 104);
  v113 = v28[1];
  if (v32)
  {
  }

  else
  {
    if (*(v1 + 24))
    {

      if (ResolvedStyledText.isDynamic.getter())
      {
        v33 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }

    if (*(v1 + 32))
    {
      v33 = ResolvedStyledText.isDynamic.getter();
      goto LABEL_10;
    }
  }

  v33 = 0;
LABEL_10:
  v121 = v14;
  v34 = *(v1 + 24);
  v129 = v27;
  v114 = v13;
  v117 = v31;
  if (v34)
  {
    v116 = v34;
    if (v18 & 1) == 0 || (v35 = *(v1 + 64)) != 0 && (v37 = *(v2 + 48), v36 = *(v2 + 56), v38 = *(v2 + 40), v27 = v125, v39 = v126, v104 = v30, v40 = v127, outlined copy of Text.Storage(v125, v126, v127), *&v103 = v24, , outlined copy of Text?(v38, v37, v36, v35), LOBYTE(v134) = v36 & 1, v102 = static Text.== infix(_:_:)(), v41 = v40, v30 = v104, outlined consume of Text.Storage(v27, v39, v41), LOBYTE(v24) = v103, , v42 = v37, v13 = v114, outlined consume of Text?(v38, v42, v36, v35), LOBYTE(v27) = v129, (v102))
    {
      if (v24 & 1) == 0 || (v43 = *(v2 + 96)) != 0 && (v45 = *(v2 + 80), v44 = *(v2 + 88), v46 = *(v2 + 72), v47 = v122, v104 = v30, v30 = v124, outlined copy of Text.Storage(v122, v124, v27), , outlined copy of Text?(v46, v45, v44, v43), LOBYTE(v134) = v44 & 1, LODWORD(v103) = static Text.== infix(_:_:)(), v48 = v30, LOBYTE(v30) = v104, outlined consume of Text.Storage(v47, v48, v129), , outlined consume of Text?(v46, v45, v44, v43), (v103))
      {
        if ((v30 & 1) == 0 || (, v49 = PropertyList.Tracker.hasDifferentUsedValues(_:)(), , (v49 & 1) == 0))
        {
          if (AGGraphGetOutputValue())
          {
            if ((v33 & 1) == 0 || (v50 = *(v2 + 24), v51 = *(v2 + 112), *AGGraphGetValue() < v51))
            {
              outlined consume of Text.Storage(v122, v124, v129);

              outlined consume of Text.Storage(v125, v126, v127);

              return;
            }

            v116 = v50;
          }
        }
      }
    }
  }

  else
  {
    v116 = 0;
  }

  LODWORD(v104) = v33;
  PropertyList.Tracker.reset()();

  EnvironmentValues.init(_:tracker:)();
  v52 = *(v2 + 40);
  v53 = *(v2 + 48);
  v54 = *(v2 + 56);
  v55 = *(v2 + 64);
  v56 = v125;
  v57 = v126;
  v58 = v127;
  outlined copy of Text.Storage(v125, v126, v127);
  v59 = v128;

  outlined consume of Text?(v52, v53, v54, v55);
  *(v2 + 40) = v56;
  *(v2 + 48) = v57;
  *(v2 + 56) = v58;
  *(v2 + 64) = v59;
  v60 = *(v2 + 72);
  v61 = *(v2 + 80);
  v62 = *(v2 + 88);
  v63 = *(v2 + 96);
  v64 = v13;
  v65 = v122;
  v66 = v124;
  v67 = v129;
  outlined copy of Text.Storage(v122, v124, v129);
  v68 = v123;

  outlined consume of Text?(v60, v61, v62, v63);
  *(v2 + 72) = v65;
  *(v2 + 80) = v66;
  v69 = v64;
  *(v2 + 88) = v67;
  *(v2 + 96) = v68;
  v70 = v118;
  EnvironmentValues.stringResolutionDate.getter();
  v71 = v121;
  v72 = *(v121 + 48);
  if (v72(v70, 1, v69) == 1)
  {
    v116 = *(v2 + 24);
    *&v134 = *AGGraphGetValue();
    v73 = v120;
    static Date.now.getter();
    if (v72(v70, 1, v69) != 1)
    {
      outlined destroy of Date?(v70);
    }
  }

  else
  {
    v73 = v120;
    (*(v71 + 32))(v120, v70, v69);
  }

  v74 = v119;
  (*(v71 + 16))(v119, v73, v69);
  (*(v71 + 56))(v74, 0, 1, v69);
  EnvironmentValues.stringResolutionDate.setter();
  v75 = v139;
  v134 = v139;
  v138 = 0uLL;
  v132 = 128;

  v119 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();

  v134 = v75;
  v138 = 0uLL;
  v132 = 128;

  v76 = v122;
  v118 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();

  type metadata accessor for ResolvedStyledText();
  v138 = v75;
  v131 = *(v2 + 104);

  Text.isCollapsible()();
  v133 = 2;
  default argument 1 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  v130 = 0;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v103 = xmmword_18CD68310;
  v137 = xmmword_18CD68310;
  default argument 7 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  default argument 8 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  LOWORD(v99) = 768;
  v97 = default argument 9 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  v98 = &v133;
  v77 = static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();

  outlined consume of ResolvedTextSuffix(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, v137);

  v138 = v139;
  v131 = *(v2 + 104);

  v78 = v124;
  v79 = v129;
  Text.isCollapsible()();
  outlined consume of Text.Storage(v76, v78, v79);

  v133 = 2;
  default argument 1 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  v130 = 0;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v137 = v103;
  default argument 7 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  default argument 8 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  LOWORD(v99) = 768;
  v97 = default argument 9 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  v98 = &v133;
  v80 = v2;
  v81 = static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();

  outlined consume of ResolvedTextSuffix(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, v137);

  v82 = v77;

  *(v80 + 24) = v77;

  v129 = v80;
  *(v80 + 32) = v81;

  v83 = v125;
  *&v134 = v77;
  *(&v134 + 1) = v125;
  v84 = v126;
  *&v135 = v126;
  LOBYTE(v77) = v127;
  BYTE8(v135) = v127;
  v136 = v128;
  *&v137 = 0;
  BYTE8(v137) = 0;
  type metadata accessor for AccessibilityStyledTextContentView();
  v85 = v105;
  AccessibilityStyledTextContentView.body.getter();

  outlined consume of Text.Storage(v83, v84, v77);

  *&v138 = v82;
  *(&v138 + 1) = v81;
  v86 = v109;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v88 = v110;
  MEMORY[0x18D00A570](&v138, v86, &unk_1EFFA9910, AssociatedConformanceWitness);
  v89 = (*(v108 + 8))(v85, v86);
  v90 = MEMORY[0x1EEE9AC00](v89);
  v99 = v112;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SymmetricTextChildQuery<A>, v90);
  v91 = v115;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v88, partial apply for closure #1 in StatefulRule.value.setter, &v97, v115, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v92);
  (*(v111 + 8))(v88, v91);
  if (v104)
  {
    *&v138 = *AGGraphGetValue();
    v93 = v120;
    ResolvedStyledText.nextUpdate(after:equivalentDate:reduceFrequency:)();

    v94 = *&v134;
    v132 = *AGGraphGetValue();
    ResolvedStyledText.nextUpdate(after:equivalentDate:reduceFrequency:)();

    if (*&v138 < v94)
    {
      v94 = *&v138;
    }

    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();

    (*(v121 + 8))(v93, v114);

    type metadata accessor for ViewGraph();
    v95 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v96 = *(v95 + 376);
    if (v94 < v96)
    {
      v96 = v94;
    }

    *(v95 + 376) = v96;
  }

  else
  {

    (*(v121 + 8))(v120, v114);
  }
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance SymmetricTextChildQuery<A>@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance SymmetricTextChildQuery<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SymmetricTextChildQuery<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t SymmetricallyScaledTextLayout.sizeThatFits(in:context:child:)()
{
  v0 = _ProposedSize.fixingUnspecifiedDimensions(at:)(__PAIR128__(0x7FF0000000000000, 0x7FF0000000000000));
  dispatch thunk of ResolvedStyledText.drawingScale(size:)();
  v2 = v1;
  v3 = dispatch thunk of ResolvedStyledText.drawingScale(size:)();
  if (v2 > v4)
  {
    v3 = ResolvedStyledText.scaleFactorOverride.setter();
  }

  return MEMORY[0x18D007250](v3, v0.width, v0.height);
}

void *protocol witness for UnaryLayout.placement(of:in:) in conformance SymmetricallyScaledTextLayout()
{
  PlacementContext.size.getter();
  static UnitPoint.topLeading.getter();

  return _Placement.init(proposedSize:anchoring:at:)();
}

unint64_t lazy protocol witness table accessor for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout()
{
  result = lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout;
  if (!lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SymmetricallyScaledTextLayout, &unk_1EFFA9910, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout;
  if (!lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SymmetricallyScaledTextLayout, &unk_1EFFA9910, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout;
  if (!lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SymmetricallyScaledTextLayout, &unk_1EFFA9910, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout;
  if (!lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SymmetricallyScaledTextLayout, &unk_1EFFA9910, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SymmetricallyScaledTextLayout(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = a2[3];
  v16[2] = a2[2];
  v16[3] = v12;
  v16[4] = a2[4];
  v17 = *(a2 + 20);
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  v18 = v11;
  v14 = lazy protocol witness table accessor for type SymmetricallyScaledTextLayout and conformance SymmetricallyScaledTextLayout();
  return (*(v14 + 80))(&v18, v16, a3, a4, a5, v14);
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

void *outlined consume of ResolvedTextSuffix(void *result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Layout.Line.Line(result, a2);
  }

  return result;
}

double outlined consume of Text.Layout.Line.Line(void *a1, uint64_t a2)
{

  return result;
}

void type metadata accessor for FocusedValueModifier<ServiceItemHandler?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FocusedValueModifier<ServiceItemHandler?>)
  {
    type metadata accessor for ServiceItemHandler?();
    v5 = type metadata accessor for FocusedValueModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for FocusedValueModifier<ServiceItemHandler?>);
    }
  }
}

void type metadata accessor for ServiceItemHandler?()
{
  if (!lazy cache variable for type metadata for ServiceItemHandler?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ServiceItemHandler?);
    }
  }
}

double destroy for ServiceItemHandler(void *a1)
{

  if (a1[1])
  {
  }

  if (a1[3])
  {
  }

  return result;
}

void *initializeWithCopy for ServiceItemHandler(void *a1, void *a2)
{
  *a1 = *a2;
  v5 = a2 + 1;
  v4 = a2[1];

  if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
  }

  else
  {
    *(a1 + 1) = *v5;
  }

  v7 = a2[3];
  if (v7)
  {
    v8 = a2[4];
    a1[3] = v7;
    a1[4] = v8;
  }

  else
  {
    *(a1 + 3) = *(a2 + 3);
  }

  return a1;
}

void *assignWithCopy for ServiceItemHandler(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      v5 = a2[2];
      a1[1] = v4;
      a1[2] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;

    goto LABEL_8;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_8:
  v7 = a2[3];
  if (!a1[3])
  {
    if (v7)
    {
      v9 = a2[4];
      a1[3] = v7;
      a1[4] = v9;

      return a1;
    }

LABEL_14:
    *(a1 + 3) = *(a2 + 3);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[4];
  a1[3] = v7;
  a1[4] = v8;

  return a1;
}