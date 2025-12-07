uint64_t static FixedWidthInteger.&>> infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13);
  (*(*(a5 + 8) + 96))(v13, a4, a6, a3);
  (*(a5 + 200))(a1, v18, a3, a5);
  return (*(v15 + 8))(v18, a3);
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t a1)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __buf = 0;
  swift_stdlib_random(&__buf, 8uLL);
  result = (__buf * a1) >> 64;
  if (__buf * a1 < a1)
  {
    v3 = -a1 % a1;
    if (v3 > __buf * a1)
    {
      do
      {
        __buf = 0;
        swift_stdlib_random(&__buf, 8uLL);
      }

      while (v3 > __buf * a1);
      return (__buf * a1) >> 64;
    }
  }

  return result;
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = *(a3 + 8);
  v7 = v6(a2, a3);
  v8 = v7 * a1;
  result = (v7 * a1) >> 64;
  if (v8 < a1)
  {
    v10 = -a1 % a1;
    if (v10 > v8)
    {
      do
      {
        v11 = v6(a2, a3);
      }

      while (v10 > v11 * a1);
      return (v11 * a1) >> 64;
    }
  }

  return result;
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v246 = a1;
  v241 = a3;
  v6 = *(a3 + 8);
  v7 = *(v6 + 24);
  swift_getAssociatedTypeWitness(255, v7, a2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v9 = v8;
  v212 = *(swift_getAssociatedConformanceWitness(v7, a2, v8, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v212, v9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v211 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v210 = v202 - v12;
  v223 = v7;
  v216 = *(v7 + 16);
  swift_getAssociatedTypeWitness(0, v216, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v215 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v214 = v202 - v15;
  v16 = swift_checkMetadataState(0, v9);
  v17 = *(v16 - 1);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v222 = v202 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v237 = v202 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v202 - v25;
  v209 = v27;
  swift_getTupleTypeMetadata2(0, a2, v27, "high low ", 0);
  v213 = v28;
  v29 = *(v28 - 8);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v242 = v202 - v32;
  v217 = *(a2 - 1);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = (v202 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v249 = v202 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v236 = v202 - v42;
  MEMORY[0x1EEE9AC00](v41, v43);
  v243 = v202 - v44;
  v45 = *(v6 + 64);
  v46 = v45(a2, v6);
  v239 = v6 + 64;
  v208 = a4;
  v202[0] = v29;
  v238 = v45;
  v225 = v36;
  if (v46)
  {
    v240 = *(v6 + 128);
    v47 = v240(a2, v6);
    if (v47 < 64)
    {
      v50 = (*(v6 + 120))(a2, v6);
      v51 = v217;
      if (!v50)
      {
        goto LABEL_58;
      }

      goto LABEL_13;
    }

LABEL_12:
    v250 = 0;
    v59 = *(v6 + 96);
    v60 = lazy protocol witness table accessor for type Int and conformance Int(v47, v48, v49);
    v61 = v17;
    v62 = v243;
    v59(&v250, &type metadata for Int, v60, a2, v6);
    v63 = (*(*(*(v6 + 16) + 8) + 8))(v246, v62, a2);
    v51 = v217;
    v64 = v62;
    v17 = v61;
    v45 = v238;
    (*(v217 + 8))(v64, a2);
    if (v63)
    {
      goto LABEL_58;
    }

    goto LABEL_13;
  }

  v52 = v45(a2, v6);
  v240 = *(v6 + 128);
  v47 = v240(a2, v6);
  if (v52)
  {
    if (v47 > 64)
    {
      goto LABEL_12;
    }

    v53 = v216;
    v54 = v215;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v216, a2, v215, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v56 = v214;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v54, AssociatedConformanceWitness);
    v57 = v243;
    (v53[3])(v56, a2, v53);
    LOBYTE(v54) = (*(*(*(v6 + 32) + 8) + 32))(v246, v57, a2);
    (*(v217 + 8))(v57, a2);
    if ((v54 & 1) == 0)
    {
      v51 = v217;
      v45 = v238;
      goto LABEL_13;
    }
  }

  else if (v47 >= 64)
  {
    goto LABEL_12;
  }

  v58 = (*(v6 + 120))(a2, v6);
  v51 = v217;
  v45 = v238;
  if (!v58)
  {
LABEL_58:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_13:
  v65 = v236;
  v66 = v241;
  specialized static FixedWidthInteger._random<A>(using:)(a2, v241, v236);
  v67 = *(v213 + 48);
  v68 = *(v66 + 120);
  v69 = v242;
  v227 = v66 + 120;
  v226 = v68;
  v68(v242, &v242[v67], v246, a2, v66);
  v244 = *(v51 + 8);
  v245 = v51 + 8;
  v244(v65, a2);
  v224 = v17;
  v70 = *(v17 + 16);
  v235 = v67;
  v71 = v26;
  v72 = v26;
  v73 = v209;
  v231 = v17 + 16;
  v230 = v70;
  v70(v71, &v69[v67], v209);
  v74 = swift_getAssociatedConformanceWitness(v6, a2, v73, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v75 = *(v74 + 64);
  v76 = v6;
  v77 = v75(v73, v74);
  v78 = v45(a2, v76);
  v247 = v74;
  v248 = v76;
  v229 = v74 + 64;
  v228 = v75;
  if (((v77 ^ v78) & 1) == 0)
  {
    v233 = *(v74 + 128);
    v234 = v74 + 128;
    v95 = v233(v73, v74);
    v96 = v246;
    v232 = v76 + 128;
    if (v95 >= v240(a2, v76))
    {
      v103 = v243;
      (*(v217 + 16))(v243, v96, a2);
      v104 = v237;
      (*(v74 + 96))(v103, a2, v76, v73, v74);
      v105 = swift_getAssociatedConformanceWitness(v223, a2, v73, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v91 = (*(v105 + 16))(v72, v104, v73, v105);
      v106 = *(v224 + 8);
      v106(v104, v73);
      v106(v72, v73);
      v94 = v244;
    }

    else
    {
      v97 = v243;
      (*(v76 + 96))(v72, v73, v74, a2, v76);
      v91 = (*(*(*(v76 + 32) + 8) + 16))(v97, v96, a2);
      v94 = v244;
      v244(v97, a2);
    }

    v93 = v208;
    v83 = a2;
LABEL_24:
    v99 = v213;
    if ((v91 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_25;
  }

  v79 = v75(v73, v74);
  v80 = *(v74 + 128);
  v221 = v72;
  v233 = v80;
  v234 = v74 + 128;
  v81 = v80(v73, v74);
  v232 = v76 + 128;
  v82 = v240(a2, v76);
  v83 = a2;
  if (v79)
  {
    v84 = v224;
    if (v82 >= v81)
    {
      v173 = v212;
      v174 = v209;
      v175 = v211;
      v176 = swift_getAssociatedConformanceWitness(v212, v209, v211, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v177 = v210;
      (*(v176 + 8))(&qword_18071E0A8, 256, v175, v176);
      v178 = v237;
      (v173[3])(v177, v174, v173);
      v179 = swift_getAssociatedConformanceWitness(v223, a2, v174, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v180 = v221;
      LOBYTE(v175) = (*(v179 + 16))(v221, v178, v174, v179);
      v181 = *(v84 + 8);
      v181(v178, v174);
      if (v175)
      {
        v181(v180, v174);
        v107 = v247;
        v94 = v244;
        goto LABEL_26;
      }

      v199 = v248;
      v200 = v243;
      v201 = v208;
      (*(v248 + 96))(v180, v174, v247, v83, v248);
      v91 = (*(*(*(v199 + 32) + 8) + 16))(v200, v246, v83);
      v94 = v244;
      v244(v200, v83);
      v93 = v201;
    }

    else
    {
      v85 = v243;
      (*(v217 + 16))(v243, v246, a2);
      v86 = v237;
      v87 = a2;
      v88 = v209;
      (*(v247 + 96))(v85, v87, v248, v209);
      v89 = swift_getAssociatedConformanceWitness(v223, v83, v88, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v90 = v221;
      v91 = (*(v89 + 16))(v221, v86, v88, v89);
      v92 = *(v84 + 8);
      v92(v86, v88);
      v92(v90, v88);
      v93 = v208;
      v94 = v244;
    }

    goto LABEL_24;
  }

  v94 = v244;
  v98 = v224;
  v99 = v213;
  if (v81 >= v82)
  {
    v182 = v216;
    v183 = v215;
    v184 = swift_getAssociatedConformanceWitness(v216, v83, v215, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v185 = v214;
    (*(v184 + 8))(&qword_18071E0A8, 256, v183, v184);
    v186 = v243;
    (v182[3])(v185, v83, v182);
    v187 = v248;
    v188 = v246;
    LOBYTE(v183) = (*(*(*(v248 + 32) + 8) + 40))(v246, v186, v83);
    v94(v186, v83);
    v189 = v247;
    v190 = v208;
    if ((v183 & 1) == 0)
    {
      (*(v98 + 8))(v221, v209);
      v99 = v213;
      v93 = v190;
      goto LABEL_48;
    }

    (*(v217 + 16))(v186, v188, v83);
    v191 = *(v189 + 96);
    v192 = v189;
    v193 = v237;
    v194 = v209;
    v191(v186, v83, v187, v209, v192);
    v195 = swift_getAssociatedConformanceWitness(v223, v83, v194, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v196 = v221;
    v197 = (*(v195 + 16))(v221, v193, v194, v195);
    v198 = *(v98 + 8);
    v198(v193, v194);
    v198(v196, v194);
    v99 = v213;
    v93 = v190;
    v94 = v244;
    if ((v197 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v100 = v248;
    v101 = v243;
    (*(v248 + 96))(v221, v209, v247, v83, v248);
    v102 = (*(*(*(v100 + 32) + 8) + 16))(v101, v246, v83);
    v94(v101, v83);
    v93 = v208;
    if ((v102 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

LABEL_25:
  v107 = v247;
LABEL_26:
  v108 = v216;
  v109 = v215;
  v110 = swift_getAssociatedConformanceWitness(v216, v83, v215, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v111 = *(v110 + 8);
  v112 = v214;
  v207 = v110;
  v206 = v110 + 8;
  v205 = v111;
  (v111)(&qword_18071E0A8, 256, v109);
  v113 = v108[3];
  v114 = v225;
  v204 = v108 + 3;
  v203 = v113;
  (v113)(v112, v83, v108);
  v115 = v243;
  v116 = v246;
  (*(v241 + 88))(v243, v246, v83);
  v94(v114, v83);
  v117 = v248;
  (*(v248 + 168))(v115, v116, v83, v248);
  v94(v115, v83);
  v220 = (v217 + 16);
  v219 = v107 + 96;
  v221 = (v224 + 8);
  v218 = v117 + 96;
  v202[1] = v212 + 3;
  v225 = (v217 + 40);
  v224 += 40;
  v118 = v222;
  v119 = v242;
  v120 = v235;
  v121 = v83;
  v122 = v238;
  v123 = v209;
  for (i = v107; ; i = v247)
  {
    v230(v118, &v119[v120], v123);
    v135 = v123;
    v136 = v123;
    v137 = v228;
    v138 = v228(v135, i);
    v139 = v118;
    v140 = v248;
    if (((v138 ^ v122(v121, v248)) & 1) == 0)
    {
      v146 = v233(v136, i);
      v147 = v249;
      v123 = v136;
      v83 = v121;
      if (v146 >= v240(v121, v140))
      {
        v125 = v243;
        (*v220)(v243, v147, v83);
        v126 = v237;
        (*(i + 96))(v125, v83, v140, v136, i);
        v127 = swift_getAssociatedConformanceWitness(v223, v83, v136, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v128 = (*(v127 + 16))(v139, v126, v136, v127);
        v129 = *v221;
        (*v221)(v126, v136);
        v129(v139, v136);
        v118 = v139;
        v130 = v126;
        v131 = v125;
        v132 = v244;
        if ((v128 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v148 = v243;
        (*(v140 + 96))(v139, v136, i, v121, v140);
        v149 = v147;
        v131 = v148;
        v150 = (*(*(*(v140 + 32) + 8) + 16))(v148, v149, v121);
        v132 = v244;
        v244(v148, v121);
        v118 = v139;
        v130 = v237;
        if ((v150 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_28;
    }

    v141 = v137(v136, i);
    v142 = v233(v136, i);
    v143 = v240(v121, v140);
    v123 = v136;
    v83 = v121;
    if ((v141 & 1) == 0)
    {
      break;
    }

    v130 = v237;
    v144 = v244;
    v145 = v221;
    if (v143 < v142)
    {
      v131 = v243;
      (*v220)(v243, v249, v121);
      (*(v247 + 96))(v131, v121, v248, v123);
      goto LABEL_43;
    }

    v155 = v212;
    v156 = v211;
    v157 = swift_getAssociatedConformanceWitness(v212, v123, v211, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v158 = v210;
    (*(v157 + 8))(&qword_18071E0A8, 256, v156, v157);
    (v155[3])(v158, v123, v155);
    v159 = swift_getAssociatedConformanceWitness(v223, v121, v123, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v118 = v222;
    LOBYTE(v156) = (*(v159 + 16))(v222, v130, v123, v159);
    v160 = *v145;
    (*v145)(v130, v123);
    v131 = v243;
    if (v156)
    {
      v160(v118, v123);
      v132 = v244;
    }

    else
    {
      v168 = v248;
      (*(v248 + 96))(v222, v123, v247, v121, v248);
      v169 = *(v168 + 32);
      v118 = v222;
      v170 = (*(*(v169 + 8) + 16))(v131, v249, v121);
      v132 = v244;
      v244(v131, v121);
      if ((v170 & 1) == 0)
      {
LABEL_46:
        v132(v249, v83);
        goto LABEL_47;
      }
    }

LABEL_28:
    v133 = v236;
    v134 = v241;
    specialized static FixedWidthInteger._random<A>(using:)(v83, v241, v236);
    v226(v131, v130, v246, v83, v134);
    v132(v133, v83);
    v119 = v242;
    (*v225)(v242, v131, v83);
    v120 = v235;
    (*v224)(&v119[v235], v130, v123);
    v121 = v83;
    v122 = v238;
  }

  v144 = v244;
  if (v142 < v143)
  {
    v151 = v248;
    v131 = v243;
    v152 = v222;
    (*(v248 + 96))(v222, v136, v247, v121, v248);
    v153 = *(v151 + 32);
    v118 = v152;
    v154 = (*(*(v153 + 8) + 16))(v131, v249, v121);
    v132 = v144;
    v144(v131, v121);
    v130 = v237;
    if ((v154 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  v161 = v214;
  v205(&qword_18071E0A8, 256);
  v131 = v243;
  (v203)(v161, v121, v216);
  v162 = v248;
  v163 = v249;
  v164 = (*(*(*(v248 + 32) + 8) + 40))(v249, v131, v121);
  v144(v131, v121);
  v130 = v237;
  v145 = v221;
  if (v164)
  {
    (*v220)(v131, v163, v121);
    (*(v247 + 96))(v131, v121, v162, v123);
LABEL_43:
    v165 = swift_getAssociatedConformanceWitness(v223, v121, v123, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v118 = v222;
    v166 = (*(v165 + 16))(v222, v130, v123, v165);
    v167 = *v145;
    (*v145)(v130, v123);
    v167(v118, v123);
    v132 = v144;
    if ((v166 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  (*v221)(v222, v123);
  v144(v163, v121);
LABEL_47:
  v93 = v208;
  v99 = v213;
LABEL_48:
  v171 = v242;
  (*(v217 + 16))(v93, v242, v83);
  return (*(v202[0] + 8))(v171, v99);
}

uint64_t RandomNumberGenerator.next<A>(upperBound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v213 = a4;
  v212 = a2;
  v182 = a6;
  v219 = a5;
  v8 = *(a5 + 8);
  v9 = *(v8 + 24);
  swift_getAssociatedTypeWitness(255, v9, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v11 = v10;
  v187 = *(swift_getAssociatedConformanceWitness(v9, a3, v10, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v187, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v186 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v185 = &v174 - v14;
  v15 = swift_checkMetadataState(0, v11);
  v198 = *(v15 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v194 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v215 = &v174 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v199 = &v174 - v23;
  swift_getTupleTypeMetadata2(0, a3, v15, "high low ", 0);
  v25 = v24;
  v175 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v221 = &v174 - v27;
  v196 = v9;
  v190 = *(v9 + 16);
  swift_getAssociatedTypeWitness(0, v190, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v189 = v28;
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v188 = &v174 - v31;
  v32 = *(a3 - 1);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = (&v174 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v224 = &v174 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v211 = &v174 - v42;
  MEMORY[0x1EEE9AC00](v41, v43);
  v222 = &v174 - v44;
  v45 = *(v8 + 64);
  v46 = v45(a3, v8);
  v220 = a1;
  v225 = v8;
  v183 = v25;
  v216 = v45;
  v217 = v8 + 64;
  v195 = v36;
  if ((v46 & 1) == 0)
  {
    v53 = v45(a3, v8);
    v218 = *(v8 + 128);
    v54 = v218(a3, v8);
    if (v53)
    {
      v52 = v194;
      if (v54 <= 64)
      {
        v57 = v190;
        v58 = v189;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v190, a3, v189, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v60 = v188;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v58, AssociatedConformanceWitness);
        v61 = v222;
        (v57[3])(v60, a3, v57);
        v50 = v220;
        LOBYTE(v58) = (*(*(*(v8 + 32) + 8) + 32))(v220, v61, a3);
        (*(v32 + 8))(v61, a3);
        v25 = v183;
        if ((v58 & 1) == 0 || (*(v8 + 120))(a3, v8))
        {
          goto LABEL_16;
        }

LABEL_11:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v52 = v194;
      if (v54 < 64)
      {
        v50 = v220;
        v66 = (*(v8 + 120))(a3, v8);
        v25 = v183;
        if (v66)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }
    }

    v226 = 0;
    v67 = *(v8 + 96);
    v68 = lazy protocol witness table accessor for type Int and conformance Int(v54, v55, v56);
    v69 = v222;
    v67(&v226, &type metadata for Int, v68, a3, v225);
    v8 = v225;
    v50 = v220;
    v70 = (*(*(*(v225 + 16) + 8) + 8))(v220, v69, a3);
    (*(v32 + 8))(v69, a3);
    v25 = v183;
    if (v70)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v218 = *(v8 + 128);
  v47 = v218(a3, v8);
  v50 = a1;
  if (v47 >= 64)
  {
    v226 = 0;
    v62 = *(v8 + 96);
    v63 = lazy protocol witness table accessor for type Int and conformance Int(v47, v48, v49);
    v64 = v222;
    v62(&v226, &type metadata for Int, v63, a3, v225);
    v8 = v225;
    v65 = (*(*(*(v225 + 16) + 8) + 8))(a1, v64, a3);
    (*(v32 + 8))(v64, a3);
    v52 = v194;
    if (v65)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v51 = (*(v8 + 120))(a3, v8);
    v52 = v194;
    if (!v51)
    {
      goto LABEL_11;
    }
  }

LABEL_16:
  v71 = v211;
  v72 = v219;
  static FixedWidthInteger._random<A>(using:)(v214, a3, v212, v219, v213, v211);
  v73 = v50;
  v74 = *(v25 + 48);
  v75 = *(v72 + 120);
  v76 = v221;
  v201 = v72 + 120;
  v200 = v75;
  v75(v221, &v221[v74], v73, a3, v72);
  v184 = v32;
  v77 = v8;
  v78 = v32 + 8;
  v197 = *(v32 + 8);
  v197(v71, a3);
  v79 = *(v198 + 16);
  v210 = v74;
  v80 = &v76[v74];
  v81 = v77;
  v205 = v198 + 16;
  v204 = v79;
  v79(v199, v80, v15);
  v82 = swift_getAssociatedConformanceWitness(v77, a3, v15, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v83 = *(v82 + 64);
  LODWORD(v72) = v83(v15, v82);
  v84 = v216(a3, v77);
  v223 = v78;
  v209 = v82;
  v203 = v82 + 64;
  v202 = v83;
  if (((v72 ^ v84) & 1) == 0)
  {
    v92 = v199;
    v207 = *(v82 + 128);
    v208 = v82 + 128;
    v93 = v207(v15, v82);
    v94 = v220;
    v206 = v77 + 128;
    v90 = v93 < v218(a3, v77);
    v95 = v222;
    if (v90)
    {
      (*(v77 + 96))(v92, v15, v82, a3, v77);
      v96 = (*(*(*(v77 + 32) + 8) + 16))(v95, v94, a3);
      v197(v95, a3);
      v97 = v182;
      if ((v96 & 1) == 0)
      {
        goto LABEL_61;
      }

      v89 = v81;
      goto LABEL_35;
    }

    (*(v184 + 16))(v222, v94, a3);
    v98 = v215;
    (*(v82 + 96))(v95, a3, v77, v15, v82);
    v99 = swift_getAssociatedConformanceWitness(v196, a3, v15, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v100 = (*(v99 + 16))(v92, v98, v15, v99);
    v101 = *(v198 + 8);
    v101(v98, v15);
    v102 = v92;
    goto LABEL_33;
  }

  v85 = v83(v15, v82);
  v207 = *(v82 + 128);
  v208 = v82 + 128;
  v86 = v207(v15, v82);
  v206 = v77 + 128;
  v87 = v218(a3, v77);
  v88 = v222;
  v89 = v77;
  if ((v85 & 1) == 0)
  {
    v90 = v86 < v87;
    v91 = v215;
    if (v90)
    {
      (*(v77 + 96))(v199, v15, v82, a3, v77);
      v100 = (*(*(*(v77 + 32) + 8) + 16))(v88, v220, a3);
      v197(v88, a3);
      goto LABEL_34;
    }

    v111 = v190;
    v112 = v189;
    v113 = swift_getAssociatedConformanceWitness(v190, a3, v189, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v114 = v188;
    (*(v113 + 8))(&qword_18071E0A8, 256, v112, v113);
    v88 = v222;
    (v111[3])(v114, a3, v111);
    v115 = v220;
    v116 = (*(*(*(v89 + 32) + 8) + 40))(v220, v88, a3);
    v197(v88, a3);
    if ((v116 & 1) == 0)
    {
      (*(v198 + 8))(v199, v15);
      goto LABEL_60;
    }

    (*(v184 + 16))(v88, v115, a3);
    goto LABEL_32;
  }

  v90 = v87 < v86;
  v91 = v215;
  if (v90)
  {
    (*(v184 + 16))(v222, v220, a3);
LABEL_32:
    (*(v82 + 96))(v88, a3, v89, v15, v82);
    v117 = swift_getAssociatedConformanceWitness(v196, a3, v15, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v118 = v199;
    v100 = (*(v117 + 16))(v199, v91, v15, v117);
    v101 = *(v198 + 8);
    v101(v91, v15);
    v102 = v118;
LABEL_33:
    v101(v102, v15);
    v89 = v225;
    goto LABEL_34;
  }

  v103 = v187;
  v104 = v186;
  v105 = swift_getAssociatedConformanceWitness(v187, v15, v186, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v106 = v185;
  (*(v105 + 8))(&qword_18071E0A8, 256, v104, v105);
  (v103[3])(v106, v15, v103);
  v107 = swift_getAssociatedConformanceWitness(v196, a3, v15, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
  v108 = v199;
  v109 = (*(v107 + 16))(v199, v91, v15, v107);
  v110 = *(v198 + 8);
  v110(v91, v15);
  if ((v109 & 1) == 0)
  {
    v89 = v225;
    (*(v225 + 96))(v108, v15, v82, a3, v225);
    v100 = (*(*(*(v89 + 32) + 8) + 16))(v88, v220, a3);
    v197(v88, a3);
    v52 = v194;
LABEL_34:
    v97 = v182;
    if ((v100 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_35;
  }

  v110(v108, v15);
  v89 = v225;
  v52 = v194;
LABEL_35:
  v119 = v190;
  v120 = v189;
  v121 = swift_getAssociatedConformanceWitness(v190, a3, v189, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v122 = *(v121 + 8);
  v123 = v188;
  v181 = v121;
  v180 = v121 + 8;
  v179 = v122;
  (v122)(&qword_18071E0A8, 256, v120);
  v124 = v119[3];
  v125 = v195;
  v178 = v119 + 3;
  v177 = v124;
  (v124)(v123, a3, v119);
  v126 = v220;
  v127 = v222;
  (*(v219 + 88))(v222, v220, a3);
  v128 = v125;
  v129 = v197;
  v197(v128, a3);
  (*(v89 + 168))(v127, v126, a3, v89);
  v129(v127, a3);
  v130 = v129;
  v193 = (v184 + 16);
  v131 = v209;
  v192 = v209 + 96;
  v195 = (v198 + 8);
  v191 = v89 + 96;
  v176 = v187 + 3;
  v199 = (v184 + 40);
  v198 += 40;
  v132 = v221;
  v133 = v210;
  while (1)
  {
    v204(v52, &v132[v133], v15);
    v139 = v202;
    v140 = v202(v15, v131);
    v141 = v52;
    v142 = v225;
    if (((v140 ^ v216(a3, v225)) & 1) == 0)
    {
      v149 = v207(v15, v131);
      v150 = v224;
      if (v149 < v218(a3, v142))
      {
        v134 = v222;
        (*(v142 + 96))(v141, v15, v131, a3, v142);
        v135 = (*(*(*(v142 + 32) + 8) + 16))(v134, v150, a3);
        v130 = v197;
        v197(v134, a3);
        v52 = v141;
        v136 = v215;
        if ((v135 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_37;
      }

      v134 = v222;
      (*v193)(v222, v150, a3);
      v151 = v215;
      (*(v131 + 96))(v134, a3, v142, v15, v131);
      v152 = swift_getAssociatedConformanceWitness(v196, a3, v15, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v153 = (*(v152 + 16))(v141, v151, v15, v152);
      v154 = *v195;
      (*v195)(v151, v15);
      v154(v141, v15);
      v52 = v141;
      v136 = v151;
      goto LABEL_51;
    }

    v143 = v139(v15, v131);
    v144 = v207(v15, v131);
    v145 = v218(a3, v142);
    if (v143)
    {
      v136 = v215;
      if (v145 < v144)
      {
        v134 = v222;
        (*v193)(v222, v224, a3);
        (*(v131 + 96))(v134, a3, v225, v15, v131);
        v146 = swift_getAssociatedConformanceWitness(v196, a3, v15, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v52 = v194;
        v147 = (*(v146 + 16))(v194, v136, v15, v146);
        v148 = *v195;
        (*v195)(v136, v15);
        v148(v52, v15);
        if ((v147 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_37;
      }

      v159 = v187;
      v160 = v186;
      v161 = swift_getAssociatedConformanceWitness(v187, v15, v186, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v162 = v185;
      (*(v161 + 8))(&qword_18071E0A8, 256, v160, v161);
      (v159[3])(v162, v15, v159);
      v163 = swift_getAssociatedConformanceWitness(v196, a3, v15, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v52 = v194;
      LOBYTE(v160) = (*(v163 + 16))(v194, v136, v15, v163);
      v164 = *v195;
      (*v195)(v136, v15);
      if (v160)
      {
        v164(v52, v15);
        v134 = v222;
        v130 = v197;
        goto LABEL_37;
      }

      v171 = v225;
      v134 = v222;
      (*(v225 + 96))(v52, v15, v131, a3, v225);
      v156 = (*(*(*(v171 + 32) + 8) + 16))(v134, v224, a3);
      v157 = v134;
      v158 = a3;
      v130 = v197;
      goto LABEL_54;
    }

    v136 = v215;
    if (v144 >= v145)
    {
      break;
    }

    v155 = v225;
    v134 = v222;
    v52 = v194;
    (*(v225 + 96))(v194, v15, v131, a3, v225);
    v156 = (*(*(*(v155 + 32) + 8) + 16))(v134, v224, a3);
    v157 = v134;
    v158 = a3;
LABEL_54:
    v130(v157, v158);
    if ((v156 & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_37:
    v137 = v211;
    v138 = v219;
    static FixedWidthInteger._random<A>(using:)(v214, a3, v212, v219, v213, v211);
    v200(v134, v136, v220, a3, v138);
    v130(v137, a3);
    v132 = v221;
    (*v199)(v221, v134, a3);
    v133 = v210;
    (*v198)(&v132[v210], v136, v15);
    v131 = v209;
  }

  v165 = v188;
  v179(&qword_18071E0A8, 256);
  v134 = v222;
  (v177)(v165, a3, v190);
  v167 = v224;
  v166 = v225;
  v168 = (*(*(*(v225 + 32) + 8) + 40))(v224, v134, a3);
  v130(v134, a3);
  v52 = v194;
  if (v168)
  {
    (*v193)(v134, v167, a3);
    (*(v131 + 96))(v134, a3, v166, v15, v131);
    v169 = swift_getAssociatedConformanceWitness(v196, a3, v15, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    v153 = (*(v169 + 16))(v52, v136, v15, v169);
    v170 = *v195;
    (*v195)(v136, v15);
    v170(v52, v15);
LABEL_51:
    v130 = v197;
    if ((v153 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_37;
  }

  (*v195)(v194, v15);
  v130 = v197;
LABEL_59:
  v130(v224, a3);
LABEL_60:
  v97 = v182;
LABEL_61:
  v172 = v221;
  (*(v184 + 16))(v97, v221, a3);
  return (*(v175 + 8))(v172, v183);
}

uint64_t specialized static FixedWidthInteger.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, swift *a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a2;
  v65 = a5;
  v8 = *(a4 + 1);
  v63 = *(v8 + 3);
  swift_getAssociatedTypeWitness(255, v63, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v63, a3, v9, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v56 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v56, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v53 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v52 = &v51 - v14;
  v57 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_checkMetadataState(0, v10);
  v19 = *(v18 - 1);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v60 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v58 = &v51 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = &v51 - v28;
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v51 - v31;
  type metadata accessor for ClosedRange(0, a3, *(*(v8 + 4) + 8), v33);
  v34 = *(a4 + 11);
  v61 = a1;
  v34(v17, a1, a3, a4);
  v35 = swift_getAssociatedConformanceWitness(v8, a3, v18, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v36 = *(v35 + 96);
  v55 = v17;
  v37 = v17;
  v38 = v35;
  v66 = v8;
  v51 = v36;
  v36(v37, a3, v8, v18, v35);
  v62 = a4;
  v39 = swift_getAssociatedConformanceWitness(a4, a3, v18, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  (*(v39 + 64))(v18, v39);
  v40 = swift_getAssociatedConformanceWitness(v63, a3, v18, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
  LOBYTE(v10) = (*(*(v40 + 8) + 8))(v32, v29, v18);
  v41 = *(v19 + 8);
  v63 = (v19 + 8);
  v41(v29, v18);
  if (v10)
  {
    v41(v32, v18);
    specialized static FixedWidthInteger._random<A>(using:)(v18, v39, v29);
  }

  else
  {
    v54 = v38;
    v42 = v56;
    v43 = v53;
    v44 = swift_getAssociatedConformanceWitness(v56, v18, v53, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v45 = v52;
    (*(v44 + 8))(&qword_1806729C0, 512, v43, v44);
    (v42[3])(v45, v18, v42);
    (*(*(AssociatedConformanceWitness + 8) + 32))(v32, v29, v18);
    v41(v29, v18);
    v46 = v55;
    (*(v57 + 16))(v55, v61, a3);
    v47 = v58;
    v51(v46, a3, v66, v18, v54);
    swift_getAssociatedConformanceWitness(v62, a3, v18, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: UnsignedInteger);
    v48 = v60;
    specialized RandomNumberGenerator.next<A>(upperBound:)(v32, v18, v39, v60);
    v41(v32, v18);
    (*(v39 + 80))(v29, v48, v18, v39);
    v41(v48, v18);
    v49 = v47;
    v38 = v54;
    v41(v49, v18);
  }

  return (*(v66 + 12))(v29, v18, v38, a3);
}

uint64_t static FixedWidthInteger.random<A>(in:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, swift *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v67 = a2;
  v68 = a6;
  v69 = a7;
  v10 = *(a5 + 1);
  v65 = *(v10 + 3);
  v66 = a4;
  swift_getAssociatedTypeWitness(255, v65, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v65, a3, v11, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v61 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v61, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v57 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v56 = &v53 - v16;
  v59 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_checkMetadataState(0, v12);
  v21 = *(v20 - 1);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v62 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v60 = &v53 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = &v53 - v30;
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &v53 - v33;
  type metadata accessor for ClosedRange(0, a3, *(*(v10 + 4) + 8), v35);
  v36 = *(a5 + 11);
  v64 = a1;
  v36(v19, a1, a3, a5);
  v37 = swift_getAssociatedConformanceWitness(v10, a3, v20, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v38 = *(v37 + 96);
  v58 = v19;
  v39 = v19;
  v40 = v37;
  v70 = v10;
  v54 = v38;
  v38(v39, a3, v10, v20, v37);
  v41 = swift_getAssociatedConformanceWitness(a5, a3, v20, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  (*(v41 + 64))(v20, v41);
  v42 = swift_getAssociatedConformanceWitness(v65, a3, v20, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
  LOBYTE(v12) = (*(*(v42 + 8) + 8))(v34, v31, v20);
  v43 = *(v21 + 8);
  v65 = (v21 + 8);
  v43(v31, v20);
  if (v12)
  {
    v43(v34, v20);
    static FixedWidthInteger._random<A>(using:)(v67, v20, v66, v41, v68, v31);
  }

  else
  {
    v44 = v61;
    v45 = v57;
    v46 = swift_getAssociatedConformanceWitness(v61, v20, v57, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v47 = *(v46 + 8);
    v55 = v40;
    v48 = v56;
    v47(&qword_1806729C0, 512, v45, v46);
    (v44[3])(v48, v20, v44);
    (*(*(AssociatedConformanceWitness + 8) + 32))(v34, v31, v20);
    v43(v31, v20);
    v49 = v58;
    (*(v59 + 16))(v58, v64, a3);
    v50 = v60;
    v54(v49, a3, v70, v20, v55);
    v51 = v62;
    RandomNumberGenerator.next<A>(upperBound:)(v34, v66, v20, v68, v41, v62);
    v43(v34, v20);
    (*(v41 + 80))(v31, v51, v20, v41);
    v43(v51, v20);
    v43(v50, v20);
    v40 = v55;
  }

  return (*(v70 + 12))(v31, v20, v40, a3);
}

uint64_t static FixedWidthInteger._nonMaskingRightShiftGeneric<A>(_:_:)(uint64_t a1, void (*a2)(char *, uint64_t), Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v172 = a1;
  v173 = a2;
  v174 = *(a5 + 8);
  v10 = *(*(v174 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v169 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v165 = v157 - v14;
  v179 = *(a3 - 1);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v170 = v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v167 = v157 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v171 = v157 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v175 = v157 - v26;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = v157 - v28;
  v161 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v161, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v31 = v30;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v160 = v157 - v34;
  v166 = *(a4 - 1);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v162 = v157 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v38);
  v163 = v157 - v39;
  v40 = *(a5 + 56);
  v177 = a5 + 56;
  v178 = a5;
  v176 = v40;
  v41 = v40(a3, a5);
  v42 = -v41;
  if (__OFSUB__(0, v41))
  {
    __break(1u);
LABEL_64:
    (a4)(v171, a3);
    v145 = v176(a3, v178);
    if (!__OFSUB__(0, v145))
    {
      v146 = v178;
      if (-v145 < v29)
      {
        v147 = (a4)(v31, a3);
        v180[0] = -v29;
        v148 = v174;
        v149 = *(v174 + 96);
        v152 = lazy protocol witness table accessor for type Int and conformance Int(v147, v150, v151);
        v153 = v167;
        v149(v180, &type metadata for Int, v152, a3, v148);
        v141 = v164;
        v154 = v175;
        (*(v146 + 216))(v175, v153, a3, v146);
        (a4)(v153, a3);
        (a4)(v154, a3);
        goto LABEL_61;
      }

      goto LABEL_72;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    (a4)(v175, a3);
    v141 = v164;
    v155 = v164;
    v156 = v31;
    goto LABEL_68;
  }

  v164 = v29;
  v44 = (a6 + 64);
  v43 = *(a6 + 64);
  v45 = v43(a4, a6);
  v168 = v10;
  v158 = v31;
  if (v45)
  {
    v46 = *(a6 + 128);
    v47 = (v46)(a4, a6);
    if (v47 < 64)
    {
      goto LABEL_11;
    }

LABEL_16:
    v180[0] = v42;
    v60 = *(a6 + 96);
    v61 = lazy protocol witness table accessor for type Int and conformance Int(v47, v48, v49);
    v159 = (a6 + 64);
    v31 = v46;
    v62 = v43;
    v63 = v163;
    v60(v180, &type metadata for Int, v61, a4, a6);
    v64 = (*(*(*(a6 + 32) + 8) + 16))(v173, v63, a4);
    v65 = v63;
    v43 = v62;
    v46 = v31;
    v44 = v159;
    (*(v166 + 8))(v65, a4);
    if ((v64 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v50 = v43(a4, a6);
  v46 = *(a6 + 128);
  v47 = (v46)(a4, a6);
  if ((v50 & 1) == 0)
  {
    if (v47 < 64)
    {
      goto LABEL_11;
    }

    if (v42 < 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v159 = v46;
  v157[0] = v43;
  if (v47 > 64)
  {
    v180[0] = v42;
    v51 = *(a6 + 96);
    v52 = lazy protocol witness table accessor for type Int and conformance Int(v47, v48, v49);
    v53 = v163;
    v51(v180, &type metadata for Int, v52, a4, a6);
    v54 = (*(*(*(a6 + 32) + 8) + 16))(v173, v53, a4);
    (*(v166 + 8))(v53, a4);
    v43 = v157[0];
    v46 = v159;
    if ((v54 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v55 = v161;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v161, a4, v31, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v57 = v160;
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v31, AssociatedConformanceWitness);
  v58 = v163;
  (v55[3])(v57, a4, v55);
  v59 = (*(*(*(a6 + 32) + 8) + 16))(v173, v58, a4);
  (*(v166 + 8))(v58, a4);
  v43 = v157[0];
  v46 = v159;
  if (v59)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((*(a6 + 120))(a4, a6) >= v42)
  {
LABEL_19:
    v68 = v176(a3, v178);
    v69 = v43(a4, a6);
    v70 = (v46)(a4, a6);
    v157[1] = a6 + 128;
    if (v69)
    {
      if (v70 > 64)
      {
        v180[0] = v68;
        v73 = *(a6 + 96);
        v74 = lazy protocol witness table accessor for type Int and conformance Int(v70, v71, v72);
        v159 = v44;
        v75 = v46;
        v76 = v43;
        v77 = v163;
        v73(v180, &type metadata for Int, v74, a4, a6);
        v78 = v173;
        v79 = (*(*(*(a6 + 32) + 8) + 16))(v77, v173, a4);
        goto LABEL_27;
      }
    }

    else if (v70 > 63)
    {
      v78 = v173;
      if ((v68 & 0x8000000000000000) == 0)
      {
        v180[0] = v68;
        v80 = *(a6 + 96);
        v81 = lazy protocol witness table accessor for type Int and conformance Int(v70, v71, v72);
        v159 = v44;
        v75 = v46;
        v76 = v43;
        v77 = v163;
        v80(v180, &type metadata for Int, v81, a4, a6);
        v79 = (*(*(*(a6 + 32) + 8) + 16))(v77, v78, a4);
LABEL_27:
        v82 = v79;
        v83 = v77;
        v43 = v76;
        v46 = v75;
        (*(v166 + 8))(v83, a4);
        if (v82)
        {
          goto LABEL_28;
        }

LABEL_29:
        v84 = v162;
        (*(v166 + 16))(v162, v78, a4);
        if ((v43(a4, a6) & 1) == 0 || (v46)(a4, a6) < 65)
        {
          goto LABEL_43;
        }

        if (v43(a4, a6))
        {
          v85 = (v46)(a4, a6);
          if (v85 >= 64)
          {
            v180[0] = 0x8000000000000000;
            v88 = *(a6 + 96);
            v89 = lazy protocol witness table accessor for type Int and conformance Int(v85, v86, v87);
            v90 = v46;
            v91 = v43;
            v92 = v163;
            v88(v180, &type metadata for Int, v89, a4, a6);
            v84 = v162;
            v93 = (*(*(*(a6 + 32) + 8) + 16))(v162, v92, a4);
            v94 = v92;
            v43 = v91;
            v46 = v90;
            (*(v166 + 8))(v94, a4);
            if (v93)
            {
              goto LABEL_47;
            }

LABEL_43:
            v108 = v43;
            v109 = (v46)(a4, a6);
            v67 = v168;
            if (v109 <= 64 && ((v46)(a4, a6) != 64 || (v108(a4, a6) & 1) != 0))
            {
              goto LABEL_53;
            }

            v110 = v108(a4, a6);
            v111 = (v46)(a4, a6);
            if (v110)
            {
              if (v111 >= 65)
              {
                goto LABEL_46;
              }
            }

            else if (v111 >= 64)
            {
LABEL_46:
              v180[0] = 0x7FFFFFFFFFFFFFFFLL;
              v114 = *(a6 + 96);
              v115 = lazy protocol witness table accessor for type Int and conformance Int(v111, v112, v113);
              v116 = v163;
              v114(v180, &type metadata for Int, v115, a4, a6);
              v117 = (*(*(*(a6 + 32) + 8) + 16))(v116, v84, a4);
              (*(v166 + 8))(v116, a4);
              if (v117)
              {
                goto LABEL_47;
              }

              goto LABEL_53;
            }

            (*(a6 + 120))(a4, a6);
LABEL_53:
            v29 = (*(a6 + 120))(a4, a6);
            (*(v166 + 8))(v84, a4);
            goto LABEL_54;
          }

LABEL_42:
          (*(a6 + 120))(a4, a6);
          goto LABEL_43;
        }

        v95 = v43(a4, a6);
        v96 = (v46)(a4, a6);
        if ((v95 & 1) == 0)
        {
          if (v96 >= 64)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        v99 = v161;
        v159 = v46;
        v157[0] = v43;
        if (v96 <= 64)
        {
          v104 = v158;
          v105 = swift_getAssociatedConformanceWitness(v161, a4, v158, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v106 = v160;
          (*(v105 + 8))(&qword_18071E0A8, 256, v104, v105);
          v107 = v163;
          (v99[3])(v106, a4, v99);
          LOBYTE(v104) = (*(*(*(a6 + 32) + 8) + 16))(v84, v107, a4);
          (*(v166 + 8))(v107, a4);
          v43 = v157[0];
          v46 = v159;
          if ((v104 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v180[0] = 0x8000000000000000;
          v100 = *(a6 + 96);
          v101 = lazy protocol witness table accessor for type Int and conformance Int(v96, v97, v98);
          v102 = v163;
          v100(v180, &type metadata for Int, v101, a4, a6);
          v84 = v162;
          v103 = (*(*(*(a6 + 32) + 8) + 16))(v162, v102, a4);
          (*(v166 + 8))(v102, a4);
          v43 = v157[0];
          v46 = v159;
          if ((v103 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

LABEL_47:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_28:
      v29 = v176(a3, v178);
      v67 = v168;
      goto LABEL_54;
    }

    v78 = v173;
    if (v68 >= (*(a6 + 120))(a4, a6))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_17:
  v66 = v176(a3, v178);
  v29 = -v66;
  if (__OFSUB__(0, v66))
  {
    __break(1u);
    goto LABEL_70;
  }

  v67 = v168;
LABEL_54:
  a4 = *(v179 + 32);
  (a4)(v175, v172, a3);
  v118 = (*(v174 + 64))(a3);
  v119 = v169;
  v31 = v170;
  v173 = a4;
  if (v118)
  {
    v120 = v176(a3, v178);
    if (!__OFSUB__(v120, 1))
    {
      v180[0] = v120 - 1;
      v123 = v174;
      v124 = *(v174 + 96);
      v125 = lazy protocol witness table accessor for type Int and conformance Int(v120, v121, v122);
      v126 = v167;
      v67 = v168;
      v127 = v123;
      v128 = v178;
      v129 = v179;
      v124(v180, &type metadata for Int, v125, a3, v127);
      (*(v128 + 200))(v175, v126, a3, v128);
      v130 = v126;
      v119 = v169;
      v31 = v170;
      (*(v129 + 8))(v130, a3);
      v131 = swift_getAssociatedConformanceWitness(v67, a3, v119, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v132 = v165;
      goto LABEL_58;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v131 = swift_getAssociatedConformanceWitness(v67, a3, v169, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v132 = v165;
  (*(v131 + 8))(&qword_18071E0A8, 256, v119, v131);
  (*(v67 + 3))(v132, a3, v67);
LABEL_58:
  (*(v131 + 8))(&qword_18071E0A8, 256, v119, v131);
  (*(v67 + 3))(v132, a3, v67);
  a4 = *(v179 + 8);
  v179 += 8;
  if (v29 < 0)
  {
    goto LABEL_64;
  }

  (a4)(v31, a3);
  if (v29 >= v176(a3, v178))
  {
    (a4)(v175, a3);
    v141 = v164;
    v155 = v164;
    v156 = v171;
LABEL_68:
    v143 = v173;
    (v173)(v155, v156, a3);
    return (v143)(v172, v141, a3);
  }

  v133 = (a4)(v171, a3);
  v180[0] = v29;
  v134 = v178;
  v135 = v174;
  v136 = *(v174 + 96);
  v139 = lazy protocol witness table accessor for type Int and conformance Int(v133, v137, v138);
  v140 = v167;
  v136(v180, &type metadata for Int, v139, a3, v135);
  v141 = v164;
  v142 = v175;
  (*(v134 + 200))(v175, v140, a3, v134);
  (a4)(v140, a3);
  (a4)(v142, a3);
LABEL_61:
  v143 = v173;
  return (v143)(v172, v141, a3);
}

uint64_t static FixedWidthInteger.>>= infix<A>(_:_:)(void (*a1)(char *, uint64_t), char *a2, Class *a3, Class *a4, uint64_t (*a5)(const char *, char *), char *a6)
{
  v6 = a6;
  v8 = a4;
  v160 = a1;
  v148 = *(*(a6 + 3) + 16);
  swift_getAssociatedTypeWitness(0, v148, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v147 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v146 = &v144 - v13;
  v161 = *(a5 + 1);
  v14 = *(*(v161 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v14, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v158 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v152 = &v144 - v18;
  v165 = *(a3 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v157 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v155 = &v144 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v159 = &v144 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v162 = &v144 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v144 - v33;
  v153 = *(v8 - 1);
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v149 = &v144 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v38);
  v150 = &v144 - v39;
  v163 = *(a5 + 7);
  v164 = (a5 + 56);
  v40 = v163(a3, a5);
  v41 = -v40;
  if (__OFSUB__(0, v40))
  {
    __break(1u);
    goto LABEL_63;
  }

  v154 = a5;
  v151 = v34;
  v34 = (v6 + 64);
  v42 = *(v6 + 8);
  v43 = v42(v8, v6);
  v156 = v14;
  if (v43)
  {
    a5 = *(v6 + 16);
    v44 = a5(v8, v6);
    if (v44 < 64)
    {
LABEL_14:
      if ((*(v6 + 15))(v8, v6) >= v41)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_11:
    v166[0] = v41;
    v52 = *(v6 + 12);
    v53 = lazy protocol witness table accessor for type Int and conformance Int(v44, v45, v46);
    v145 = (v6 + 64);
    v54 = v42;
    v55 = v150;
    v52(v166, &type metadata for Int, v53, v8, v6);
    v56 = (*(*(*(v6 + 4) + 8) + 16))(a2, v55, v8);
    v57 = v55;
    v42 = v54;
    v34 = v145;
    (*(v153 + 1))(v57, v8);
    if ((v56 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v47 = v42(v8, v6);
  a5 = *(v6 + 16);
  v44 = a5(v8, v6);
  if ((v47 & 1) == 0)
  {
    if (v44 < 64)
    {
      goto LABEL_14;
    }

    if (v41 <= 0)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v145 = v42;
  if (v44 > 64)
  {
    v166[0] = v41;
    v48 = *(v6 + 12);
    v49 = lazy protocol witness table accessor for type Int and conformance Int(v44, v45, v46);
    v50 = v150;
    v48(v166, &type metadata for Int, v49, v8, v6);
    v51 = (*(*(*(v6 + 4) + 8) + 16))(a2, v50, v8);
    (*(v153 + 1))(v50, v8);
    v42 = v145;
    if ((v51 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v58 = v147;
  v59 = v148;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v148, v8, v147, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v61 = *(AssociatedConformanceWitness + 8);
  v144 = a2;
  v62 = v146;
  v61(&qword_18071E0A8, 256, v58, AssociatedConformanceWitness);
  v63 = v150;
  v64 = v62;
  a2 = v144;
  (v59[3])(v64, v8, v59);
  LOBYTE(v58) = (*(*(*(v6 + 4) + 8) + 16))(a2, v63, v8);
  (*(v153 + 1))(v63, v8);
  v42 = v145;
  if ((v58 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  a5 = v154;
  v65 = v163(a3, v154);
  v34 = -v65;
  if (!__OFSUB__(0, v65))
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_18:
  v66 = v163(a3, v154);
  v67 = v42(v8, v6);
  v144 = v6 + 128;
  v68 = a5(v8, v6);
  if ((v67 & 1) == 0)
  {
    if (v68 >= 64)
    {
      if ((v66 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_26:
      a5 = v154;
      v34 = v163(a3, v154);
LABEL_27:
      v8 = v160;
      v77 = v156;
      v78 = v158;
      goto LABEL_53;
    }

LABEL_22:
    if (v66 >= (*(v6 + 15))(v8, v6))
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v68 <= 64)
  {
    goto LABEL_22;
  }

LABEL_25:
  v166[0] = v66;
  v71 = *(v6 + 12);
  v72 = lazy protocol witness table accessor for type Int and conformance Int(v68, v69, v70);
  v145 = v34;
  v73 = v42;
  v74 = v150;
  v71(v166, &type metadata for Int, v72, v8, v6);
  v75 = (*(*(*(v6 + 4) + 8) + 16))(v74, a2, v8);
  v76 = v74;
  v42 = v73;
  v34 = v145;
  (*(v153 + 1))(v76, v8);
  if (v75)
  {
    goto LABEL_26;
  }

LABEL_28:
  v79 = v149;
  (*(v153 + 2))(v149, a2, v8);
  if ((v42(v8, v6) & 1) == 0 || a5(v8, v6) < 65)
  {
    goto LABEL_42;
  }

  if ((v42(v8, v6) & 1) == 0)
  {
    v89 = v42(v8, v6);
    v90 = a5(v8, v6);
    if ((v89 & 1) == 0)
    {
      v79 = v149;
      if (v90 >= 64)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v145 = a5;
    v93 = v42;
    if (v90 <= 64)
    {
      v98 = v147;
      v99 = v148;
      v100 = swift_getAssociatedConformanceWitness(v148, v8, v147, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v101 = v146;
      (*(v100 + 8))(&qword_18071E0A8, 256, v98, v100);
      v102 = v150;
      (v99[3])(v101, v8, v99);
      v79 = v149;
      LOBYTE(v98) = (*(*(*(v6 + 4) + 8) + 16))(v149, v102, v8);
      (*(v153 + 1))(v102, v8);
      v42 = v93;
      a5 = v145;
      if ((v98 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v166[0] = 0x8000000000000000;
      v94 = *(v6 + 12);
      v95 = lazy protocol witness table accessor for type Int and conformance Int(v90, v91, v92);
      v96 = v150;
      v94(v166, &type metadata for Int, v95, v8, v6);
      v79 = v149;
      v97 = (*(*(*(v6 + 4) + 8) + 16))(v149, v96, v8);
      (*(v153 + 1))(v96, v8);
      v42 = v93;
      a5 = v145;
      if ((v97 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_46:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v80 = a5(v8, v6);
  if (v80 < 64)
  {
LABEL_41:
    (*(v6 + 15))(v8, v6);
    goto LABEL_42;
  }

  v166[0] = 0x8000000000000000;
  v83 = *(v6 + 12);
  v84 = lazy protocol witness table accessor for type Int and conformance Int(v80, v81, v82);
  v145 = v34;
  v85 = v42;
  v86 = v150;
  v83(v166, &type metadata for Int, v84, v8, v6);
  v79 = v149;
  v87 = (*(*(*(v6 + 4) + 8) + 16))(v149, v86, v8);
  v88 = v86;
  v42 = v85;
  (*(v153 + 1))(v88, v8);
  if (v87)
  {
    goto LABEL_46;
  }

LABEL_42:
  v103 = a5(v8, v6);
  v77 = v156;
  v78 = v158;
  if (v103 <= 64 && (a5(v8, v6) != 64 || (v42(v8, v6) & 1) != 0))
  {
    goto LABEL_52;
  }

  v104 = v42(v8, v6);
  v105 = a5(v8, v6);
  if (v104)
  {
    if (v105 >= 65)
    {
      goto LABEL_45;
    }

LABEL_51:
    v79 = v149;
    (*(v6 + 15))(v8, v6);
    goto LABEL_52;
  }

  if (v105 < 64)
  {
    goto LABEL_51;
  }

LABEL_45:
  v166[0] = 0x7FFFFFFFFFFFFFFFLL;
  v108 = *(v6 + 12);
  v109 = lazy protocol witness table accessor for type Int and conformance Int(v105, v106, v107);
  v110 = v150;
  v108(v166, &type metadata for Int, v109, v8, v6);
  v79 = v149;
  v111 = (*(*(*(v6 + 4) + 8) + 16))(v110, v149, v8);
  (*(v153 + 1))(v110, v8);
  if (v111)
  {
    goto LABEL_46;
  }

LABEL_52:
  v34 = (*(v6 + 15))(v8, v6);
  (*(v153 + 1))(v79, v8);
  a5 = v154;
  v8 = v160;
LABEL_53:
  v112 = *(v165 + 32);
  v112(v162, v8, a3);
  v113 = (*(v161 + 64))(a3);
  v6 = v157;
  v153 = v112;
  if (v113)
  {
    v114 = v163(a3, a5);
    if (__OFSUB__(v114, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    v166[0] = v114 - 1;
    v117 = v161;
    v118 = *(v161 + 96);
    v119 = lazy protocol witness table accessor for type Int and conformance Int(v114, v115, v116);
    v120 = v155;
    v121 = v117;
    v78 = v158;
    v118(v166, &type metadata for Int, v119, a3, v121);
    v6 = v157;
    (*(a5 + 25))(v162, v120, a3, a5);
    v77 = v156;
    (*(v165 + 8))(v120, a3);
    v122 = swift_getAssociatedConformanceWitness(v77, a3, v78, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v123 = v152;
  }

  else
  {
    v122 = swift_getAssociatedConformanceWitness(v77, a3, v78, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v123 = v152;
    (*(v122 + 8))(&qword_18071E0A8, 256, v78, v122);
    (*(v77 + 3))(v123, a3, v77);
  }

  (*(v122 + 8))(&qword_18071E0A8, 256, v78, v122);
  (*(v77 + 3))(v123, a3, v77);
  v8 = *(v165 + 8);
  v165 += 8;
  if (v34 < 0)
  {
LABEL_63:
    (v8)(v159, a3);
    v135 = v163(a3, a5);
    if (!__OFSUB__(0, v135))
    {
      if (-v135 < v34)
      {
        v136 = (v8)(v6, a3);
        v166[0] = -v34;
        v137 = v161;
        v138 = *(v161 + 96);
        v141 = lazy protocol witness table accessor for type Int and conformance Int(v136, v139, v140);
        v130 = v155;
        v138(v166, &type metadata for Int, v141, a3, v137);
        v131 = v151;
        v132 = v162;
        (*(a5 + 27))(v162, v130, a3, a5);
        goto LABEL_60;
      }

      goto LABEL_70;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    (v8)(v162, a3);
    v131 = v151;
    v142 = v151;
    v143 = v6;
    goto LABEL_67;
  }

  (v8)(v6, a3);
  if (v34 >= v163(a3, a5))
  {
    (v8)(v162, a3);
    v131 = v151;
    v142 = v151;
    v143 = v159;
LABEL_67:
    v133 = v153;
    v153(v142, v143, a3);
    return v133(v160, v131, a3);
  }

  v124 = (v8)(v159, a3);
  v166[0] = v34;
  v125 = v161;
  v126 = *(v161 + 96);
  v129 = lazy protocol witness table accessor for type Int and conformance Int(v124, v127, v128);
  v130 = v155;
  v126(v166, &type metadata for Int, v129, a3, v125);
  v131 = v151;
  v132 = v162;
  (*(a5 + 25))(v162, v130, a3, a5);
LABEL_60:
  (v8)(v130, a3);
  (v8)(v132, a3);
  v133 = v153;
  return v133(v160, v131, a3);
}

uint64_t static FixedWidthInteger._nonMaskingRightShift(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a2;
  v53 = a1;
  v49 = a5;
  v7 = *(a4 + 8);
  v8 = *(*(v7 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v48 - v13;
  v52 = *(a3 - 1);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v48 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v48 - v24;
  v26 = (*(v7 + 64))(a3, v7);
  v50 = v18;
  v54 = v25;
  if (v26)
  {
    v48 = v22;
    v27 = (*(a4 + 56))(a3, a4);
    if (__OFSUB__(v27, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    v55 = v27 - 1;
    v30 = *(v7 + 96);
    v31 = lazy protocol witness table accessor for type Int and conformance Int(v27, v28, v29);
    v22 = v48;
    v30(&v55, &type metadata for Int, v31, a3, v7);
    (*(a4 + 200))(v53, v22, a3, a4);
    v32 = v52;
    (*(v52 + 8))(v22, a3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
    (*(v8 + 24))(v14, a3, v8);
    v32 = v52;
  }

  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  v18 = v50;
  (*(v8 + 24))(v14, a3, v8);
  v34 = *(v32 + 8);
  v35 = v51;
  if (v51 < 0)
  {
    v34(v54, a3);
    v42 = (*(a4 + 56))(a3, a4);
    if (!__OFSUB__(0, v42))
    {
      if (-v42 < v35)
      {
        v43 = (v34)(v18, a3);
        v55 = -v35;
        v44 = *(v7 + 96);
        v47 = lazy protocol witness table accessor for type Int and conformance Int(v43, v45, v46);
        v44(&v55, &type metadata for Int, v47, a3, v7);
        (*(a4 + 216))(v53, v22, a3, a4);
        return (v34)(v22, a3);
      }

      return (*(v52 + 32))(v49, v18, a3);
    }

LABEL_16:
    __break(1u);
    return (*(v52 + 32))(v49, v18, a3);
  }

  v34(v18, a3);
  if ((*(a4 + 56))(a3, a4) > v35)
  {
    v36 = (v34)(v54, a3);
    v55 = v35;
    v37 = *(v7 + 96);
    v40 = lazy protocol witness table accessor for type Int and conformance Int(v36, v38, v39);
    v37(&v55, &type metadata for Int, v40, a3, v7);
    (*(a4 + 200))(v53, v22, a3, a4);
    return (v34)(v22, a3);
  }

  return (*(v52 + 32))(v49, v54, a3);
}

uint64_t static FixedWidthInteger._nonMaskingLeftShiftGeneric<A>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + 8);
  v159 = a1;
  v160 = v11;
  v12 = *(*(v11 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v12, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v156 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v155 = &v142 - v16;
  v165 = *(a3 - 1);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v158 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v153 = &v142 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v157 = &v142 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v161 = &v142 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v142 - v30;
  v147 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v147, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v146 = v32;
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v145 = &v142 - v35;
  v152 = *(a4 - 1);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v148 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v39);
  v149 = &v142 - v40;
  v41 = *(a5 + 56);
  v163 = a5 + 56;
  v164 = a5;
  v162 = v41;
  v42 = v41(a3, a5);
  v43 = -v42;
  if (__OFSUB__(0, v42))
  {
    __break(1u);
LABEL_60:
    (a4)(v158, a3);
    v130 = v162(a3, v164);
    if (!__OFSUB__(0, v130))
    {
      v131 = v164;
      if (-v130 < v31)
      {
        v132 = (a4)(v157, a3);
        v166[0] = -v31;
        v133 = v160;
        v134 = *(v160 + 96);
        v137 = lazy protocol witness table accessor for type Int and conformance Int(v132, v135, v136);
        v138 = v153;
        v134(v166, &type metadata for Int, v137, a3, v133);
        v126 = v150;
        v139 = v161;
        (*(v131 + 200))(v161, v138, a3, v131);
        (a4)(v138, a3);
        (a4)(v139, a3);
        goto LABEL_57;
      }

      goto LABEL_68;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    (a4)(v161, a3);
    v126 = v150;
    v140 = v150;
    v141 = v157;
    goto LABEL_64;
  }

  v150 = v31;
  v44 = *(a6 + 64);
  v45 = v44(a4, a6);
  v154 = v12;
  if (v45)
  {
    v151 = *(a6 + 128);
    v46 = v151(a4, a6);
    if (v46 < 64)
    {
LABEL_14:
      if ((*(a6 + 120))(a4, a6) < v43)
      {
        goto LABEL_15;
      }

LABEL_17:
      v70 = v162(a3, v164);
      v71 = v44(a4, a6);
      v72 = v151(a4, a6);
      v144 = v44;
      if (v71)
      {
        if (v72 > 64)
        {
LABEL_24:
          v166[0] = v70;
          v75 = *(a6 + 96);
          v76 = lazy protocol witness table accessor for type Int and conformance Int(v72, v73, v74);
          v77 = v149;
          v75(v166, &type metadata for Int, v76, a4, a6);
          v78 = (*(*(*(a6 + 32) + 8) + 16))(v77, a2, a4);
          (*(v152 + 1))(v77, a4);
          if (v78)
          {
            goto LABEL_25;
          }

LABEL_26:
          v79 = v148;
          (*(v152 + 2))(v148, a2, a4);
          if ((v144(a4, a6) & 1) != 0 && v151(a4, a6) >= 65)
          {
            v80 = v144;
            if (v144(a4, a6))
            {
              v81 = v151(a4, a6);
              if (v81 < 64)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v84 = v80(a4, a6);
              v81 = v151(a4, a6);
              if ((v84 & 1) == 0)
              {
                if (v81 >= 64)
                {
                  goto LABEL_39;
                }

                goto LABEL_38;
              }

              if (v81 <= 64)
              {
                v89 = v146;
                v90 = v147;
                AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v147, a4, v146, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v92 = v145;
                (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v89, AssociatedConformanceWitness);
                v93 = v149;
                (v90[3])(v92, a4, v90);
                LOBYTE(v89) = (*(*(*(a6 + 32) + 8) + 16))(v79, v93, a4);
                (*(v152 + 1))(v93, a4);
                if ((v89 & 1) == 0)
                {
LABEL_38:
                  (*(a6 + 120))(a4, a6);
                  goto LABEL_39;
                }

LABEL_43:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v166[0] = 0x8000000000000000;
            v85 = *(a6 + 96);
            v86 = lazy protocol witness table accessor for type Int and conformance Int(v81, v82, v83);
            v87 = v149;
            v85(v166, &type metadata for Int, v86, a4, a6);
            v88 = (*(*(*(a6 + 32) + 8) + 16))(v79, v87, a4);
            (*(v152 + 1))(v87, a4);
            if (v88)
            {
              goto LABEL_43;
            }
          }

LABEL_39:
          v94 = v151(a4, a6);
          v69 = v154;
          if (v94 <= 64 && (v151(a4, a6) != 64 || (v144(a4, a6) & 1) != 0))
          {
            goto LABEL_49;
          }

          v95 = v144(a4, a6);
          v96 = v151(a4, a6);
          if (v95)
          {
            if (v96 >= 65)
            {
              goto LABEL_42;
            }
          }

          else if (v96 >= 64)
          {
LABEL_42:
            v166[0] = 0x7FFFFFFFFFFFFFFFLL;
            v99 = *(a6 + 96);
            v100 = lazy protocol witness table accessor for type Int and conformance Int(v96, v97, v98);
            v101 = v149;
            v99(v166, &type metadata for Int, v100, a4, a6);
            v102 = (*(*(*(a6 + 32) + 8) + 16))(v101, v79, a4);
            (*(v152 + 1))(v101, a4);
            if (v102)
            {
              goto LABEL_43;
            }

LABEL_49:
            v31 = (*(a6 + 120))(a4, a6);
            (*(v152 + 1))(v79, a4);
            goto LABEL_50;
          }

          (*(a6 + 120))(a4, a6);
          goto LABEL_49;
        }
      }

      else if (v72 > 63)
      {
        if ((v70 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_25:
        v31 = v162(a3, v164);
        v69 = v154;
        goto LABEL_50;
      }

      if (v70 >= (*(a6 + 120))(a4, a6))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_10;
  }

  v49 = v44(a4, a6);
  v151 = *(a6 + 128);
  v46 = v151(a4, a6);
  if ((v49 & 1) == 0)
  {
    if (v46 < 64)
    {
      goto LABEL_14;
    }

    if (v43 < 1)
    {
      goto LABEL_17;
    }

LABEL_10:
    v166[0] = v43;
    v57 = *(a6 + 96);
    v58 = lazy protocol witness table accessor for type Int and conformance Int(v46, v47, v48);
    v59 = a2;
    v60 = v44;
    v61 = v149;
    v57(v166, &type metadata for Int, v58, a4, a6);
    v55 = (*(*(*(a6 + 32) + 8) + 16))(v59, v61, a4);
    v62 = v61;
    v44 = v60;
    a2 = v59;
    (*(v152 + 1))(v62, a4);
LABEL_11:
    if ((v55 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v143 = a2;
  if (v46 > 64)
  {
    v166[0] = v43;
    v50 = *(a6 + 96);
    v51 = lazy protocol witness table accessor for type Int and conformance Int(v46, v47, v48);
    v52 = v44;
    v53 = v149;
    v50(v166, &type metadata for Int, v51, a4, a6);
    v54 = v143;
    v55 = (*(*(*(a6 + 32) + 8) + 16))(v143, v53, a4);
    v56 = v53;
    v44 = v52;
    a2 = v54;
    (*(v152 + 1))(v56, a4);
    goto LABEL_11;
  }

  v63 = v146;
  v64 = v147;
  v65 = swift_getAssociatedConformanceWitness(v147, a4, v146, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v66 = v145;
  (*(v65 + 8))(&qword_18071E0A8, 256, v63, v65);
  v67 = v149;
  (v64[3])(v66, a4, v64);
  a2 = v143;
  LOBYTE(v63) = (*(*(*(a6 + 32) + 8) + 16))(v143, v67, a4);
  (*(v152 + 1))(v67, a4);
  if ((v63 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v68 = v162(a3, v164);
  v31 = -v68;
  if (__OFSUB__(0, v68))
  {
    __break(1u);
    goto LABEL_66;
  }

  v69 = v154;
LABEL_50:
  a4 = *(v165 + 32);
  (a4)(v161, v159, a3);
  v103 = (*(v160 + 64))(a3);
  v105 = v155;
  v104 = v156;
  v152 = a4;
  if (v103)
  {
    v106 = v162(a3, v164);
    if (!__OFSUB__(v106, 1))
    {
      v166[0] = v106 - 1;
      v109 = v160;
      v110 = *(v160 + 96);
      v111 = lazy protocol witness table accessor for type Int and conformance Int(v106, v107, v108);
      v112 = v153;
      v69 = v154;
      v113 = v109;
      v114 = v164;
      v115 = v165;
      v110(v166, &type metadata for Int, v111, a3, v113);
      (*(v114 + 200))(v161, v112, a3, v114);
      v116 = v112;
      v105 = v155;
      v104 = v156;
      (*(v115 + 8))(v116, a3);
      v117 = swift_getAssociatedConformanceWitness(v69, a3, v104, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      goto LABEL_54;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v117 = swift_getAssociatedConformanceWitness(v69, a3, v156, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(v117 + 8))(&qword_18071E0A8, 256, v104, v117);
  (*(v69 + 3))(v105, a3, v69);
LABEL_54:
  (*(v117 + 8))(&qword_18071E0A8, 256, v104, v117);
  (*(v69 + 3))(v105, a3, v69);
  a4 = *(v165 + 8);
  v165 += 8;
  if (v31 < 0)
  {
    goto LABEL_60;
  }

  (a4)(v157, a3);
  if (v31 >= v162(a3, v164))
  {
    (a4)(v161, a3);
    v126 = v150;
    v140 = v150;
    v141 = v158;
LABEL_64:
    v128 = v152;
    (v152)(v140, v141, a3);
    return (v128)(v159, v126, a3);
  }

  v118 = (a4)(v158, a3);
  v166[0] = v31;
  v119 = v164;
  v120 = v160;
  v121 = *(v160 + 96);
  v124 = lazy protocol witness table accessor for type Int and conformance Int(v118, v122, v123);
  v125 = v153;
  v121(v166, &type metadata for Int, v124, a3, v120);
  v126 = v150;
  v127 = v161;
  (*(v119 + 216))(v161, v125, a3, v119);
  (a4)(v125, a3);
  (a4)(v127, a3);
LABEL_57:
  v128 = v152;
  return (v128)(v159, v126, a3);
}

uint64_t static FixedWidthInteger.<<= infix<A>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v158 = a1;
  v146 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v146, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v145 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v144 = &v141 - v13;
  v159 = *(a5 + 8);
  v14 = *(*(v159 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v14, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v155 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v154 = &v141 - v18;
  v164 = *(a3 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v157 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v152 = &v141 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v156 = &v141 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v160 = &v141 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v141 - v33;
  v151 = *(v8 - 1);
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v147 = &v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v38);
  v148 = &v141 - v39;
  v40 = *(a5 + 56);
  v162 = a5 + 56;
  v163 = a5;
  v161 = v40;
  v41 = v40(a3, a5);
  v42 = -v41;
  if (__OFSUB__(0, v41))
  {
    __break(1u);
    goto LABEL_62;
  }

  v149 = v34;
  v43 = *(a6 + 64);
  v44 = v43(v8, a6);
  v153 = v14;
  if (v44)
  {
    v150 = *(a6 + 128);
    v45 = v150(v8, a6);
    if (v45 < 64)
    {
LABEL_14:
      if ((*(a6 + 120))(v8, a6) >= v42)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v48 = v43(v8, a6);
  v150 = *(a6 + 128);
  v45 = v150(v8, a6);
  if ((v48 & 1) == 0)
  {
    if (v45 < 64)
    {
      goto LABEL_14;
    }

    if (v42 <= 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    v165[0] = v42;
    v56 = *(a6 + 96);
    v57 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
    v58 = a2;
    v59 = v43;
    v60 = v148;
    v56(v165, &type metadata for Int, v57, v8, a6);
    v54 = (*(*(*(a6 + 32) + 8) + 16))(v58, v60, v8);
    v61 = v60;
    v43 = v59;
    a2 = v58;
    (*(v151 + 1))(v61, v8);
LABEL_11:
    if ((v54 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v142 = a2;
  if (v45 > 64)
  {
    v165[0] = v42;
    v49 = *(a6 + 96);
    v50 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
    v51 = v43;
    v52 = v148;
    v49(v165, &type metadata for Int, v50, v8, a6);
    v53 = v142;
    v54 = (*(*(*(a6 + 32) + 8) + 16))(v142, v52, v8);
    v55 = v52;
    v43 = v51;
    a2 = v53;
    (*(v151 + 1))(v55, v8);
    goto LABEL_11;
  }

  v62 = v145;
  v63 = v146;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v146, v8, v145, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v65 = v144;
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v62, AssociatedConformanceWitness);
  v66 = v148;
  (v63[3])(v65, v8, v63);
  a2 = v142;
  LOBYTE(v62) = (*(*(*(a6 + 32) + 8) + 16))(v142, v66, v8);
  (*(v151 + 1))(v66, v8);
  if ((v62 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v67 = v161(a3, v163);
  v34 = -v67;
  if (!__OFSUB__(0, v67))
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_18:
  v68 = v161(a3, v163);
  v69 = v43(v8, a6);
  v70 = v150(v8, a6);
  v143 = v43;
  if ((v69 & 1) == 0)
  {
    if (v70 >= 64)
    {
      if ((v68 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_26:
      v34 = v161(a3, v163);
LABEL_27:
      v77 = v153;
      goto LABEL_52;
    }

LABEL_22:
    if (v68 >= (*(a6 + 120))(v8, a6))
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v70 <= 64)
  {
    goto LABEL_22;
  }

LABEL_25:
  v165[0] = v68;
  v73 = *(a6 + 96);
  v74 = lazy protocol witness table accessor for type Int and conformance Int(v70, v71, v72);
  v75 = v148;
  v73(v165, &type metadata for Int, v74, v8, a6);
  v76 = (*(*(*(a6 + 32) + 8) + 16))(v75, a2, v8);
  (*(v151 + 1))(v75, v8);
  if (v76)
  {
    goto LABEL_26;
  }

LABEL_28:
  v78 = v147;
  (*(v151 + 2))(v147, a2, v8);
  if ((v143(v8, a6) & 1) != 0 && v150(v8, a6) >= 65)
  {
    v79 = v143;
    if (v143(v8, a6))
    {
      v80 = v150(v8, a6);
      if (v80 < 64)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v83 = v79(v8, a6);
      v80 = v150(v8, a6);
      if ((v83 & 1) == 0)
      {
        if (v80 >= 64)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (v80 <= 64)
      {
        v88 = v145;
        v89 = v146;
        v90 = swift_getAssociatedConformanceWitness(v146, v8, v145, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v91 = v144;
        (*(v90 + 8))(&qword_18071E0A8, 256, v88, v90);
        v92 = v148;
        (v89[3])(v91, v8, v89);
        LOBYTE(v88) = (*(*(*(a6 + 32) + 8) + 16))(v78, v92, v8);
        (*(v151 + 1))(v92, v8);
        if ((v88 & 1) == 0)
        {
LABEL_40:
          (*(a6 + 120))(v8, a6);
          goto LABEL_41;
        }

LABEL_45:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v165[0] = 0x8000000000000000;
    v84 = *(a6 + 96);
    v85 = lazy protocol witness table accessor for type Int and conformance Int(v80, v81, v82);
    v86 = v148;
    v84(v165, &type metadata for Int, v85, v8, a6);
    v87 = (*(*(*(a6 + 32) + 8) + 16))(v78, v86, v8);
    (*(v151 + 1))(v86, v8);
    if (v87)
    {
      goto LABEL_45;
    }
  }

LABEL_41:
  v93 = v150(v8, a6);
  v77 = v153;
  if (v93 <= 64 && (v150(v8, a6) != 64 || (v143(v8, a6) & 1) != 0))
  {
    goto LABEL_51;
  }

  v94 = v143(v8, a6);
  v95 = v150(v8, a6);
  if (v94)
  {
    if (v95 >= 65)
    {
      goto LABEL_44;
    }

LABEL_50:
    (*(a6 + 120))(v8, a6);
    goto LABEL_51;
  }

  if (v95 < 64)
  {
    goto LABEL_50;
  }

LABEL_44:
  v165[0] = 0x7FFFFFFFFFFFFFFFLL;
  v98 = *(a6 + 96);
  v99 = lazy protocol witness table accessor for type Int and conformance Int(v95, v96, v97);
  v100 = v148;
  v98(v165, &type metadata for Int, v99, v8, a6);
  v101 = (*(*(*(a6 + 32) + 8) + 16))(v100, v78, v8);
  (*(v151 + 1))(v100, v8);
  if (v101)
  {
    goto LABEL_45;
  }

LABEL_51:
  v34 = (*(a6 + 120))(v8, a6);
  (*(v151 + 1))(v78, v8);
LABEL_52:
  v8 = *(v164 + 32);
  (v8)(v160, v158, a3);
  v102 = (*(v159 + 64))(a3);
  v104 = v154;
  v103 = v155;
  v151 = v8;
  if (v102)
  {
    v105 = v161(a3, v163);
    if (__OFSUB__(v105, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    v165[0] = v105 - 1;
    v108 = v159;
    v109 = *(v159 + 96);
    v110 = lazy protocol witness table accessor for type Int and conformance Int(v105, v106, v107);
    v111 = v152;
    v77 = v153;
    v112 = v108;
    v113 = v163;
    v114 = v164;
    v109(v165, &type metadata for Int, v110, a3, v112);
    (*(v113 + 200))(v160, v111, a3, v113);
    v115 = v111;
    v104 = v154;
    v103 = v155;
    (*(v114 + 8))(v115, a3);
    v116 = swift_getAssociatedConformanceWitness(v77, a3, v103, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  }

  else
  {
    v116 = swift_getAssociatedConformanceWitness(v77, a3, v155, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(v116 + 8))(&qword_18071E0A8, 256, v103, v116);
    (*(v77 + 3))(v104, a3, v77);
  }

  (*(v116 + 8))(&qword_18071E0A8, 256, v103, v116);
  (*(v77 + 3))(v104, a3, v77);
  v8 = *(v164 + 8);
  v164 += 8;
  if (v34 < 0)
  {
LABEL_62:
    (v8)(v157, a3);
    v129 = v161(a3, v163);
    if (!__OFSUB__(0, v129))
    {
      v130 = v163;
      if (-v129 < v34)
      {
        v131 = (v8)(v156, a3);
        v165[0] = -v34;
        v132 = v159;
        v133 = *(v159 + 96);
        v136 = lazy protocol witness table accessor for type Int and conformance Int(v131, v134, v135);
        v137 = v152;
        v133(v165, &type metadata for Int, v136, a3, v132);
        v125 = v149;
        v138 = v160;
        (*(v130 + 200))(v160, v137, a3, v130);
        (v8)(v137, a3);
        (v8)(v138, a3);
        goto LABEL_59;
      }

      goto LABEL_69;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    (v8)(v160, a3);
    v125 = v149;
    v139 = v149;
    v140 = v156;
    goto LABEL_66;
  }

  (v8)(v156, a3);
  if (v34 >= v161(a3, v163))
  {
    (v8)(v160, a3);
    v125 = v149;
    v139 = v149;
    v140 = v157;
LABEL_66:
    v127 = v151;
    (v151)(v139, v140, a3);
    return (v127)(v158, v125, a3);
  }

  v117 = (v8)(v157, a3);
  v165[0] = v34;
  v118 = v163;
  v119 = v159;
  v120 = *(v159 + 96);
  v123 = lazy protocol witness table accessor for type Int and conformance Int(v117, v121, v122);
  v124 = v152;
  v120(v165, &type metadata for Int, v123, a3, v119);
  v125 = v149;
  v126 = v160;
  (*(v118 + 216))(v160, v124, a3, v118);
  (v8)(v124, a3);
  (v8)(v126, a3);
LABEL_59:
  v127 = v151;
  return (v127)(v158, v125, a3);
}

uint64_t static FixedWidthInteger._nonMaskingLeftShift(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v53 = a2;
  v55 = a1;
  v7 = *(a4 + 8);
  v8 = *(*(v7 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v48 - v13;
  v54 = *(a3 - 1);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v56 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v48 - v23;
  v25 = (*(v7 + 64))(a3, v7);
  v50 = v7;
  v51 = v24;
  if (v25)
  {
    v26 = (*(a4 + 56))(a3, a4);
    if (__OFSUB__(v26, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    v57 = v26 - 1;
    v49 = *(v7 + 96);
    v29 = lazy protocol witness table accessor for type Int and conformance Int(v26, v27, v28);
    v49(&v57, &type metadata for Int, v29, a3, v7);
    (*(a4 + 200))(v55, v21, a3, a4);
    v30 = v54;
    (*(v54 + 8))(v21, a3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
    (*(v8 + 24))(v14, a3, v8);
    v30 = v54;
  }

  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  (*(v8 + 24))(v14, a3, v8);
  v32 = *(v30 + 8);
  v33 = v53;
  if (v53 < 0)
  {
    v32(v56, a3);
    v41 = (*(a4 + 56))(a3, a4);
    v7 = v52;
    if (!__OFSUB__(0, v41))
    {
      if (-v41 < v33)
      {
        v42 = (v32)(v51, a3);
        v57 = -v33;
        v43 = v50;
        v44 = *(v50 + 96);
        v47 = lazy protocol witness table accessor for type Int and conformance Int(v42, v45, v46);
        v44(&v57, &type metadata for Int, v47, a3, v43);
        (*(a4 + 200))(v55, v21, a3, a4);
        return (v32)(v21, a3);
      }

      return (*(v54 + 32))(v7, v51, a3);
    }

LABEL_16:
    __break(1u);
    return (*(v54 + 32))(v7, v51, a3);
  }

  v32(v51, a3);
  if ((*(a4 + 56))(a3, a4) > v33)
  {
    v34 = (v32)(v56, a3);
    v57 = v33;
    v35 = v50;
    v36 = *(v50 + 96);
    v39 = lazy protocol witness table accessor for type Int and conformance Int(v34, v37, v38);
    v36(&v57, &type metadata for Int, v39, a3, v35);
    (*(a4 + 216))(v55, v21, a3, a4);
    return (v32)(v21, a3);
  }

  return (*(v54 + 32))(v52, v56, a3);
}

uint64_t _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs7_Int128V_SdTt1g5(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a2.n128_u64[0] >> 52) & 0x7FF;
  v5 = a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  if (!(v4 | a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL))
  {
    goto LABEL_40;
  }

  if (v4 == 2047 || (v6 = Double.exponent.getter(a2.n128_f64[0]), v6 > 127))
  {
    result = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    return result;
  }

  v7 = v6;
  v8 = Double.significandWidth.getter(v2);
  result = v7 >= v8;
  v10 = v8 + __clz(__rbit64(v5));
  v11 = v7 - v10;
  if (__OFSUB__(v7, v10))
  {
    __break(1u);
LABEL_40:
    *a1 = 0;
    *(a1 + 8) = 0;
    result = 1;
    goto LABEL_37;
  }

  if (v11 - 129 <= 0xFFFFFFFFFFFFFEFELL)
  {
    goto LABEL_6;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    if (v10 - v7 >= 0x40)
    {
      v12 = 0;
    }

    else
    {
      v12 = v5 >> (v10 - v7);
    }

    if (v11 <= 0xFFFFFFFFFFFFFF80)
    {
      v12 = 0;
    }

    v13 = 0;
    if (v7 == 127)
    {
      goto LABEL_47;
    }

    goto LABEL_17;
  }

  if (v11 >= 0x80)
  {
LABEL_6:
    v12 = 0;
    v13 = 0;
    if (v7 == 127)
    {
      goto LABEL_47;
    }

LABEL_17:
    if (v7 < 0)
    {
      v14 = 0;
      v15 = 0;
    }

    else if (v7 > 0x3F)
    {
      v14 = 0;
      v15 = 1 << v7;
    }

    else if (v7)
    {
      v15 = 1uLL >> -v7;
      v14 = 1 << v7;
    }

    else
    {
      v15 = 0;
      v14 = 1;
    }

    v16 = v14 | v12;
    v17 = v15 | v13;
    v19 = v13 < 0 && v17 != 0;
    if (v2 >= 0.0)
    {
      if (!v19)
      {
LABEL_36:
        *a1 = v16;
        *(a1 + 8) = v17;
LABEL_37:
        *(a1 + 16) = 0;
        return result;
      }
    }

    else if (!v19)
    {
      v20 = v16 == 0;
      v16 = -v16;
      if (v20)
      {
        v17 = -v17;
      }

      else
      {
        v17 = ~v17;
      }

      goto LABEL_36;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000028, 0x800000018066E8B0 | 0x8000000000000000, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x278uLL, 0);
  }

  if (v11 <= 0x3F)
  {
    v12 = v5 << v11;
    if (v11)
    {
      v13 = v5 >> -v11;
    }

    else
    {
      v12 = v5;
      v13 = 0;
    }

    if (v7 == 127)
    {
      goto LABEL_47;
    }

    goto LABEL_17;
  }

  v12 = 0;
  v13 = v5 << v11;
  if (v7 != 127)
  {
    goto LABEL_17;
  }

LABEL_47:
  v21 = v7 >= v8;
  v22 = v13 | v12;
  v23 = v2 < 0.0 && v22 == 0;
  v24 = !v23;
  result = v21 & ~v24;
  v25 = 0x8000000000000000;
  if (!v23)
  {
    v25 = 0;
  }

  *a1 = 0;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24;
  return result;
}

uint64_t static FixedWidthInteger._convert<A>(from:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v10 = *(a3 - 1);
  v285 = a1;
  v286 = v10;
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v260 = &v254 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v259 = &v254 - v14;
  v294 = v15;
  v300 = *(v15 + 1);
  v16 = *(v300 + 3);
  v263 = *(v16 + 16);
  swift_getAssociatedTypeWitness(0, v263, v17, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v261 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v262 = &v254 - v20;
  swift_getAssociatedTypeWitness(255, v16, v8, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v22 = v21;
  v254 = v16;
  v272 = *(swift_getAssociatedConformanceWitness(v16, v8, v21, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v272, v22, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v270 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v271 = &v254 - v25;
  v256 = type metadata accessor for Optional(255, v8, v26, v27);
  swift_getTupleTypeMetadata2(0, v256, &type metadata for Bool, 0, 0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v255 = &v254 - v30;
  v295 = swift_checkMetadataState(0, v22);
  v288 = *(v295 - 1);
  v32 = MEMORY[0x1EEE9AC00](v295, v31);
  v269 = &v254 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v291 = &v254 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v287 = &v254 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v293 = &v254 - v41;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v273 = v42;
  v276 = *(v42 - 8);
  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v277 = &v254 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v46);
  v292 = &v254 - v47;
  v48 = *(a6 + 16);
  swift_getAssociatedTypeWitness(255, v48, a4, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v50 = v49;
  v303 = *(swift_getAssociatedConformanceWitness(v48, a4, v49, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v274 = *(v303 + 24);
  v266 = *(v274 + 2);
  swift_getAssociatedTypeWitness(0, v266, v50, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v265 = v51;
  MEMORY[0x1EEE9AC00](v51, v52);
  v264 = &v254 - v53;
  v54 = swift_checkMetadataState(0, v50);
  v301 = *(v54 - 1);
  v56 = MEMORY[0x1EEE9AC00](v54, v55);
  v275 = &v254 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v56, v58);
  v61 = &v254 - v60;
  v63 = MEMORY[0x1EEE9AC00](v59, v62);
  v296 = &v254 - v64;
  v283 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v63, v65);
  v282 = &v254 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = *(*(*(v48 + 16) + 8) + 16);
  swift_getAssociatedTypeWitness(0, v281, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v279 = v67;
  MEMORY[0x1EEE9AC00](v67, v68);
  v280 = &v254 - v69;
  v70 = *(v48 + 384);
  v302 = a4;
  v298 = v48;
  if (v70(a4, v48))
  {
    v207 = v263;
    v208 = v261;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v263, v8, v261, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v210 = v262;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v208, AssociatedConformanceWitness);
    v211 = v285;
    (v207[3])(v210, v8, v207);
    v205 = 1;
    (*(v286 + 56))(v211, 0, 1, v8);
    return v205 & 1;
  }

  v71 = *(v298 + 376);
  v299 = a2;
  if ((v71(v302) & 1) == 0)
  {
    goto LABEL_53;
  }

  v289 = *(v300 + 8);
  v290 = v300 + 64;
  if ((v289(v8) & 1) == 0)
  {
    v284 = v54;
    v72 = v281;
    v73 = v302;
    v74 = v279;
    v75 = swift_getAssociatedConformanceWitness(v281, v302, v279, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v76 = v280;
    (*(v75 + 8))(&unk_18071E0B0, 257, v74, v75);
    v77 = v282;
    v78 = v76;
    v79 = v298;
    v54 = v284;
    (v72[3])(v78, v73, v72);
    LOBYTE(v79) = (*(*(*(v79 + 24) + 8) + 40))(v299, v77, v73);
    (*(v283 + 8))(v77, v73);
    if ((v79 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v80 = v296;
  (*(v298 + 176))(v302);
  v81 = *(v294 + 7);
  v258 = v294 + 56;
  v257 = v81;
  v82 = (v81)(v8);
  v84 = (v303 + 64);
  v83 = *(v303 + 64);
  v85 = v83(v54);
  v284 = v84;
  v268 = v83;
  if ((v85 & 1) == 0)
  {
    v89 = v83;
    v90 = v61;
    v91 = v303;
    v92 = v89(v54, v303);
    v278 = *(v91 + 128);
    v86 = v278(v54, v91);
    if (v92)
    {
      if (v86 > 64)
      {
        v304 = v82;
        v93 = v8;
        v94 = v303;
        v95 = *(v303 + 96);
        v96 = lazy protocol witness table accessor for type Int and conformance Int(v86, v87, v88);
        v95(&v304, &type metadata for Int, v96, v54, v94);
        v97 = *(v94 + 32);
        v8 = v93;
        v98 = (*(*(v97 + 8) + 16))(v80, v90, v54);
        (*(v301 + 8))(v90, v54);
        v61 = v90;
        v83 = v268;
        if ((v98 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_20;
      }

      v100 = v266;
      v101 = v265;
      v102 = swift_getAssociatedConformanceWitness(v266, v54, v265, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v103 = v264;
      (*(v102 + 8))(&qword_18071E0A8, 256, v101, v102);
      v61 = v90;
      (v100[3])(v103, v54, v100);
      LOBYTE(v101) = (*(*(*(v303 + 32) + 8) + 16))(v80, v90, v54);
      (*(v301 + 8))(v90, v54);
      if (v101)
      {
        v83 = v268;
        goto LABEL_20;
      }

      v99 = (*(v303 + 120))(v54) < v82;
    }

    else
    {
      if (v86 >= 64)
      {
        if (v82 < 1)
        {
          goto LABEL_52;
        }

        v61 = v90;
        goto LABEL_19;
      }

      v99 = (*(v303 + 120))(v54) < v82;
      v61 = v90;
    }

    v83 = v268;
    if (v99)
    {
      goto LABEL_20;
    }

LABEL_52:
    (*(v301 + 8))(v80, v54);
LABEL_53:
    (*(v286 + 56))(v285, 1, 1, v8);
    v205 = 0;
    return v205 & 1;
  }

  v278 = *(v303 + 128);
  v86 = (v278)(v54);
  if (v86 >= 64)
  {
LABEL_19:
    v304 = v82;
    v104 = v303;
    v105 = *(v303 + 96);
    v106 = lazy protocol witness table accessor for type Int and conformance Int(v86, v87, v88);
    v105(&v304, &type metadata for Int, v106, v54, v104);
    v107 = *(v104 + 32);
    v83 = v268;
    v108 = (*(*(v107 + 8) + 16))(v80, v61, v54);
    (*(v301 + 8))(v61, v54);
    if (v108)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

  if ((*(v303 + 120))(v54) >= v82)
  {
    goto LABEL_52;
  }

LABEL_20:
  v109 = (*(a6 + 136))(v302, a6);
  v110 = (v83)(v54, v303);
  v297 = v8;
  v267 = a6;
  if (v110)
  {
    v111 = (v278)(v54);
    if (v111 >= 64)
    {
      v304 = v109;
      v126 = v303;
      v127 = *(v303 + 96);
      v128 = lazy protocol witness table accessor for type Int and conformance Int(v111, v112, v113);
      v127(&v304, &type metadata for Int, v128, v54, v126);
      v124 = (*(*(*(v126 + 32) + 8) + 16))(v80, v61, v54);
      v129 = v301;
      (*(v301 + 8))(v61, v54);
      v125 = v129;
      goto LABEL_29;
    }
  }

  else
  {
    v114 = v83;
    v115 = v303;
    v116 = v114(v54, v303);
    v117 = v278(v54, v115);
    if (v116)
    {
      if (v117 <= 64)
      {
        v165 = v266;
        v166 = v265;
        v167 = swift_getAssociatedConformanceWitness(v266, v54, v265, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v168 = v264;
        (*(v167 + 8))(&qword_18071E0A8, 256, v166, v167);
        (v165[3])(v168, v54, v165);
        LOBYTE(v168) = (*(*(*(v303 + 32) + 8) + 16))(v80, v61, v54);
        v125 = v301;
        (*(v301 + 8))(v61, v54);
        v124 = (v168 & 1) != 0 || (*(v303 + 120))(v54) < v109;
      }

      else
      {
        v304 = v109;
        v120 = v301;
        v121 = v303;
        v122 = *(v303 + 96);
        v123 = lazy protocol witness table accessor for type Int and conformance Int(v117, v118, v119);
        v122(&v304, &type metadata for Int, v123, v54, v121);
        v124 = (*(*(*(v121 + 32) + 8) + 16))(v80, v61, v54);
        v125 = v120;
        (*(v120 + 8))(v61, v54);
      }

      goto LABEL_29;
    }

    if (v117 >= 64)
    {
      v125 = v301;
      if (v109 < 1)
      {
        v124 = 0;
      }

      else
      {
        v304 = v109;
        v169 = v303;
        v170 = *(v303 + 96);
        v171 = lazy protocol witness table accessor for type Int and conformance Int(v117, v118, v119);
        v170(&v304, &type metadata for Int, v171, v54, v169);
        v124 = (*(*(*(v169 + 32) + 8) + 16))(v296, v61, v54);
        (*(v125 + 8))(v61, v54);
      }

      goto LABEL_29;
    }
  }

  v124 = (*(v303 + 120))(v54) < v109;
  v125 = v301;
LABEL_29:
  LODWORD(v266) = v124 ^ 1;
  v130 = v267;
  v131 = v302;
  (*(v267 + 120))(v302, v267);
  v132 = v131;
  v133 = v273;
  v134 = *(swift_getAssociatedConformanceWitness(v130, v132, v273, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v135 = (*(v134 + 144))(v133, v134);
  v136 = v133;
  v137 = v135 + v109;
  v304 = v137;
  v138 = *(v303 + 88);
  v267 = lazy protocol witness table accessor for type Int and conformance Int(v135, v139, v140);
  v138(&v304, &type metadata for Int);
  v141 = v275;
  (*(*(v274 + 1) + 40))(v296, v61, v54);
  v142 = v125 + 8;
  v143 = *(v125 + 8);
  v274 = v61;
  v301 = v142;
  v143(v61, v54);
  v144 = v295;
  v145 = v297;
  v146 = swift_getAssociatedConformanceWitness(v294, v297, v295, &protocol requirements base descriptor for FixedWidthInteger, associated conformance descriptor for FixedWidthInteger.Numeric.Magnitude: FixedWidthInteger);
  if (v137 >= (*(v146 + 56))(v144, v146))
  {
    v154 = v277;
    v155 = v292;
    (*(v134 + 256))(v292, v141, v54, v303, v136, v134);
    v143(v141, v54);
    (*(v276 + 8))(v155, v136);
    v149 = v300;
    v156 = v295;
    v157 = swift_getAssociatedConformanceWitness(v300, v145, v295, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
    (*(v157 + 96))(v154, v136, v134, v156, v157);
  }

  else
  {
    v147 = v277;
    (*(v276 + 32))(v277, v292, v136);
    v148 = v141;
    v149 = v300;
    v150 = v295;
    v151 = swift_getAssociatedConformanceWitness(v300, v297, v295, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
    v152 = v287;
    (*(v151 + 96))(v147, v136, v134, v150, v151);
    (*(v151 + 256))(v152, v148, v54, v303, v150, v151);
    (*(v288 + 8))(v152, v150);
    v153 = v148;
    v145 = v297;
    v143(v153, v54);
  }

  v158 = v143;
  v159 = (v289)(v145, v149);
  v160 = v296;
  if (v159)
  {
    v161 = v257(v145, v294) - 1;
    v162 = v303;
    v163 = (v268)(v54, v303);
    v164 = v278(v54, v162);
    if (v163)
    {
      if (v164 > 64)
      {
        goto LABEL_44;
      }
    }

    else if (v164 >= 64)
    {
      if (v161 < 0)
      {
        goto LABEL_45;
      }

LABEL_44:
      v304 = v161;
      v172 = v303;
      v173 = v274;
      (*(v303 + 96))(&v304, &type metadata for Int, v267, v54, v303);
      v174 = (*(*(*(v172 + 16) + 8) + 8))(v173, v160, v54);
      v158(v173, v54);
      if ((v174 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_58:
      v212 = v145;
      v158(v160, v54);
      v213 = v281;
      v214 = v302;
      v215 = v279;
      v216 = swift_getAssociatedConformanceWitness(v281, v302, v279, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v217 = v280;
      (*(v216 + 8))(&qword_18071E0A8, 256, v215, v216);
      v218 = v282;
      (v213[3])(v217, v214, v213);
      LOBYTE(v215) = (*(*(*(v298 + 24) + 8) + 16))(v299, v218, v214);
      (*(v283 + 8))(v218, v214);
      if ((v215 & 1) == 0)
      {
        (*(v288 + 8))(v293, v295);
        v205 = 0;
        v225 = 1;
LABEL_78:
        v252 = v285;
        v251 = v286;
        v253 = v256;
        v250 = v255;
        goto LABEL_79;
      }

      v219 = v295;
      v220 = swift_getAssociatedConformanceWitness(v300, v212, v295, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v221 = *(v220 + 64);
      if (v221(v219, v220))
      {
        v222 = v295;
        if ((*(v220 + 128))() < 64)
        {
          v223 = v293;
          v224 = (*(v220 + 120))(v222, v220);
          (*(v288 + 8))(v223, v222);
          goto LABEL_71;
        }

        v304 = 0;
        v239 = v287;
        (*(v220 + 96))(&v304, &type metadata for Int, v267, v222, v220);
        v240 = swift_getAssociatedConformanceWitness(v254, v297, v222, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v241 = v293;
        v242 = (*(*(v240 + 8) + 8))(v293, v239, v222);
        v243 = *(v288 + 8);
        v243(v239, v222);
        v244 = v241;
        v245 = v222;
      }

      else
      {
        v226 = v295;
        v227 = v221(v295, v220);
        v228 = v226;
        v229 = (*(v220 + 128))(v226, v220);
        if (v227)
        {
          if (v229 <= 64)
          {
            v230 = v272;
            v231 = v270;
            v232 = swift_getAssociatedConformanceWitness(v272, v226, v270, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v233 = v271;
            (*(v232 + 8))(&qword_18071E0A8, 256, v231, v232);
            v234 = v287;
            (v230[3])(v233, v228, v230);
            v235 = swift_getAssociatedConformanceWitness(v254, v297, v228, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
            LOBYTE(v231) = (*(v235 + 32))(v293, v234, v228, v235);
            v236 = *(v288 + 8);
            v236(v234, v228);
            if (v231)
            {
              v237 = v293;
              v238 = (*(v220 + 120))(v228, v220);
              v236(v237, v228);
              if (!v238)
              {
                goto LABEL_75;
              }
            }

            else
            {
              v236(v293, v228);
            }

            goto LABEL_77;
          }
        }

        else if (v229 < 64)
        {
          v246 = v293;
          v224 = (*(v220 + 120))(v228, v220);
          (*(v288 + 8))(v246, v228);
LABEL_71:
          if (!v224)
          {
            goto LABEL_75;
          }

          goto LABEL_77;
        }

        v304 = 0;
        v247 = v287;
        (*(v220 + 96))(&v304, &type metadata for Int, v267, v226, v220);
        v248 = swift_getAssociatedConformanceWitness(v254, v297, v226, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v249 = v293;
        v242 = (*(*(v248 + 8) + 8))(v293, v247, v226);
        v243 = *(v288 + 8);
        v243(v247, v228);
        v244 = v249;
        v245 = v228;
      }

      v243(v244, v245);
      if (v242)
      {
LABEL_75:
        v250 = v255;
        v212 = v297;
        (*(v294 + 9))(v297);
        v225 = 0;
        v252 = v285;
        v251 = v286;
        v253 = v256;
        v205 = v266;
LABEL_79:
        (*(v251 + 56))(v250, v225, 1, v212);
        (*(*(v253 - 1) + 32))(v252, v250, v253);
        return v205 & 1;
      }

LABEL_77:
      v205 = 0;
      v225 = 1;
      v212 = v297;
      goto LABEL_78;
    }

    if (v161 != (*(v303 + 120))(v54))
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_45:
  v175 = v272;
  v176 = v295;
  v177 = v270;
  v178 = swift_getAssociatedConformanceWitness(v272, v295, v270, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v179 = v271;
  (*(v178 + 8))(&qword_1806729C0, 512, v177, v178);
  v180 = v269;
  v181 = v176;
  (v175[3])(v179, v176, v175);
  v182 = v300;
  v183 = swift_getAssociatedConformanceWitness(v300, v145, v176, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v184 = v287;
  (*(v183 + 256))(v180, v160, v54, v303, v181, v183);
  v185 = *(v288 + 8);
  v185(v180, v181);
  v158(v160, v54);
  v186 = v293;
  (*(v183 + 208))(v184, v293, v181, v183);
  v187 = v184;
  v188 = v181;
  v185(v187, v181);
  v185(v186, v181);
  v189 = v297;
  if ((v289)(v297, v182) & 1) != 0 && (v190 = v281, v191 = v302, v192 = v279, v193 = swift_getAssociatedConformanceWitness(v281, v302, v279, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), v194 = v280, (*(v193 + 8))(&qword_18071E0A8, 256, v192, v193), v195 = v282, (v190[3])(v194, v191, v190), LOBYTE(v192) = (*(*(*(v298 + 24) + 8) + 16))(v299, v195, v191), (*(v283 + 8))(v195, v191), (v192))
  {
    v196 = v263;
    v197 = v261;
    v198 = swift_getAssociatedConformanceWitness(v263, v189, v261, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v199 = v262;
    (*(v198 + 8))(&qword_18071E0A8, 256, v197, v198);
    v200 = v259;
    (v196[3])(v199, v189, v196);
    v201 = v260;
    (*(v300 + 11))(v291, v188, v183, v189);
    v202 = v285;
    (*(v294 + 11))(v285, v201, v189);
    v203 = v286;
    v204 = *(v286 + 8);
    v204(v201, v297);
    v204(v200, v297);
    v189 = v297;
  }

  else
  {
    v202 = v285;
    (*(v300 + 11))(v291, v188, v183, v189);
    v203 = v286;
  }

  v205 = v266;
  (*(v203 + 56))(v202, 0, 1, v189);
  return v205 & 1;
}

unint64_t _ss17FixedWidthIntegerPsEyxqd__cSBRd__lufCs7_Int128V_SdTt1g5(__n128 a1)
{
  _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs7_Int128V_SdTt1g5(&v91, a1);
  if (v93)
  {
    v2 = _StringGuts.init(_initialCapacity:)(80);
    v4 = v3;
    v91 = v2;
    v92 = v3;
    TypeName = swift_getTypeName(&type metadata for Double, 0);
    if (v6 < 0)
    {
      goto LABEL_64;
    }

    v7 = TypeName;
    v8 = v6;
    v9 = validateUTF8(_:)(TypeName, v6);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v13 = repairUTF8(_:firstKnownBrokenRange:)(v7, v8, v10, v11);
    }

    else
    {
      v13 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v7, v8, v9 & 1, v12);
    }

    v23 = v13;
    v24 = v14;
    v25 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v25 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25 && (v2 & ~v4 & 0x2000000000000000) == 0)
    {
      v4;
      v91 = v23;
      v92 = v24;
      goto LABEL_20;
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v35 = specialized _SmallString.init(_:appending:)(v2, v4, v13, v14);
        if ((v37 & 1) == 0)
        {
          v87 = v35;
          v88 = v36;
          v4;
          v24;
          v91 = v87;
          v92 = v88;
          v24 = v88;
          v23 = v87;
LABEL_20:
          v38 = HIBYTE(v24) & 0xF;
          if ((v24 & 0x2000000000000000) == 0)
          {
            v38 = v23 & 0xFFFFFFFFFFFFLL;
          }

          if (v38 || (v23 & ~v24 & 0x2000000000000000) != 0)
          {
            if ((0x800000018066D440 & 0x2000000000000000 & v24) != 0 && (v39 = specialized _SmallString.init(_:appending:)(v23, v24, 0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000), (v41 & 1) == 0))
            {
              v43 = v39;
              v44 = v40;
              v24;
              0x800000018066D440 | 0x8000000000000000;
              v91 = v43;
              v92 = v44;
            }

            else
            {
              if ((0x800000018066D440 & 0x2000000000000000) != 0)
              {
                v42 = (0x800000018066D440 >> 56) & 0xF;
              }

              else
              {
                v42 = 30;
              }

              _StringGuts.append(_:)(0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000, 0, v42, v26, v27, v28, v29, v30, v31, v32, v33);
              0x800000018066D440 | 0x8000000000000000;
            }
          }

          else
          {
            v24;
            v91 = 0xD00000000000001ELL;
            v92 = 0x800000018066D440 | 0x8000000000000000;
          }

          v45 = swift_getTypeName(&type metadata for _Int128, 0);
          if ((v46 & 0x8000000000000000) == 0)
          {
            v47 = v45;
            v48 = v46;
            v49 = validateUTF8(_:)(v45, v46);
            if ((v49 & 0x8000000000000000) != 0)
            {
              v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
            }

            else
            {
              v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
            }

            v63 = v53;
            v64 = v54;
            v65 = v92;
            v66 = HIBYTE(v92) & 0xF;
            if ((v92 & 0x2000000000000000) == 0)
            {
              v66 = v91 & 0xFFFFFFFFFFFFLL;
            }

            if (!v66 && (v91 & ~v92 & 0x2000000000000000) == 0)
            {
              v92;
              v91 = v63;
              v92 = v64;
              goto LABEL_49;
            }

            if ((v92 & 0x2000000000000000) != 0)
            {
              if ((v54 & 0x2000000000000000) != 0)
              {
                v76 = specialized _SmallString.init(_:appending:)(v91, v92, v53, v54);
                if ((v78 & 1) == 0)
                {
                  v89 = v76;
                  v90 = v77;
                  v65;
                  v64;
                  v91 = v89;
                  v92 = v90;
                  v64 = v90;
                  v63 = v89;
LABEL_49:
                  v79 = 0x800000018066D460 | 0x8000000000000000;
                  v80 = HIBYTE(v64) & 0xF;
                  if ((v64 & 0x2000000000000000) == 0)
                  {
                    v80 = v63 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v80 || (v63 & ~v64 & 0x2000000000000000) != 0)
                  {
                    if ((0x800000018066D460 & 0x2000000000000000 & v64) != 0 && (v82 = specialized _SmallString.init(_:appending:)(v63, v64, 0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000), (v84 & 1) == 0))
                    {
                      v81 = v82;
                      v86 = v83;
                      v64;
                      0x800000018066D460 | 0x8000000000000000;
                      v79 = v86;
                    }

                    else
                    {
                      if ((0x800000018066D460 & 0x2000000000000000) != 0)
                      {
                        v85 = (0x800000018066D460 >> 56) & 0xF;
                      }

                      else
                      {
                        v85 = 46;
                      }

                      _StringGuts.append(_:)(0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000, 0, v85, v67, v68, v69, v70, v71, v72, v73, v74);
                      0x800000018066D460 | 0x8000000000000000;
                      v81 = v91;
                      v79 = v92;
                    }
                  }

                  else
                  {
                    v64;
                    v81 = 0xD00000000000002ELL;
                  }

                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v81, v79, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL, 0);
                }

                goto LABEL_47;
              }
            }

            else if ((v54 & 0x2000000000000000) != 0)
            {
LABEL_47:
              v75 = HIBYTE(v64) & 0xF;
              goto LABEL_48;
            }

            v75 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_48:
            _StringGuts.append(_:)(v63, v64, 0, v75, v55, v56, v57, v58, v59, v60, v61, v62);
            v64;
            v63 = v91;
            v64 = v92;
            goto LABEL_49;
          }

LABEL_64:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_18;
      }
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
LABEL_18:
      v34 = HIBYTE(v24) & 0xF;
      goto LABEL_19;
    }

    v34 = v13 & 0xFFFFFFFFFFFFLL;
LABEL_19:
    _StringGuts.append(_:)(v23, v24, 0, v34, v15, v16, v17, v18, v19, v20, v21, v22);
    v24;
    v23 = v91;
    v24 = v92;
    goto LABEL_20;
  }

  return v91;
}

uint64_t FixedWidthInteger.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Optional(0, a2, a3, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v108 - v15;
  static FixedWidthInteger._convert<A>(from:)(&v108 - v15, a1, a2, a3, a4, a5);
  v17 = *(a2 - 1);
  if ((*(v17 + 48))(v16, 1, a2) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v19 = _StringGuts.init(_initialCapacity:)(80);
    v21 = v20;
    v108 = v19;
    v109 = v20;
    TypeName = swift_getTypeName(a3, 0);
    if (v23 < 0)
    {
      goto LABEL_64;
    }

    v24 = TypeName;
    v25 = v23;
    v26 = validateUTF8(_:)(TypeName, v23);
    if ((v26 & 0x8000000000000000) != 0)
    {
      v30 = repairUTF8(_:firstKnownBrokenRange:)(v24, v25, v27, v28);
    }

    else
    {
      v30 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v24, v25, v26 & 1, v29);
    }

    v40 = v30;
    v41 = v31;
    v42 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v42 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v42 && (v19 & ~v21 & 0x2000000000000000) == 0)
    {
      v21;
      v108 = v40;
      v109 = v41;
      goto LABEL_20;
    }

    if ((v21 & 0x2000000000000000) != 0)
    {
      if ((v31 & 0x2000000000000000) != 0)
      {
        v52 = specialized _SmallString.init(_:appending:)(v19, v21, v30, v31);
        if ((v54 & 1) == 0)
        {
          v104 = v52;
          v105 = v53;
          v41;
          v21;
          v108 = v104;
          v109 = v105;
          v41 = v105;
          v40 = v104;
LABEL_20:
          v55 = HIBYTE(v41) & 0xF;
          if ((v41 & 0x2000000000000000) == 0)
          {
            v55 = v40 & 0xFFFFFFFFFFFFLL;
          }

          if (v55 || (v40 & ~v41 & 0x2000000000000000) != 0)
          {
            if (("Swift/Random.swift" & 0x2000000000000000 & v41) != 0 && (v56 = specialized _SmallString.init(_:appending:)(v40, v41, 0xD00000000000001ELL, 0x800000018066D440), (v58 & 1) == 0))
            {
              v60 = v56;
              v61 = v57;
              v41;
              v108 = v60;
              v109 = v61;
            }

            else
            {
              if (("Swift/Random.swift" & 0x2000000000000000) != 0)
              {
                v59 = ("Swift/Random.swift" >> 56) & 0xF;
              }

              else
              {
                v59 = 30;
              }

              _StringGuts.append(_:)(0xD00000000000001ELL, 0x800000018066D440, 0, v59, v43, v44, v45, v46, v47, v48, v49, v50);
            }
          }

          else
          {
            v41;
            v108 = 0xD00000000000001ELL;
            v109 = 0x800000018066D440;
          }

          v62 = swift_getTypeName(a2, 0);
          if ((v63 & 0x8000000000000000) == 0)
          {
            v64 = v62;
            v65 = v63;
            v66 = validateUTF8(_:)(v62, v63);
            if ((v66 & 0x8000000000000000) != 0)
            {
              v70 = repairUTF8(_:firstKnownBrokenRange:)(v64, v65, v67, v68);
            }

            else
            {
              v70 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v64, v65, v66 & 1, v69);
            }

            v80 = v70;
            v81 = v71;
            v82 = v109;
            v83 = HIBYTE(v109) & 0xF;
            if ((v109 & 0x2000000000000000) == 0)
            {
              v83 = v108 & 0xFFFFFFFFFFFFLL;
            }

            if (!v83 && (v108 & ~v109 & 0x2000000000000000) == 0)
            {
              v109;
              v108 = v80;
              v109 = v81;
              goto LABEL_49;
            }

            if ((v109 & 0x2000000000000000) != 0)
            {
              if ((v71 & 0x2000000000000000) != 0)
              {
                v93 = specialized _SmallString.init(_:appending:)(v108, v109, v70, v71);
                if ((v95 & 1) == 0)
                {
                  v106 = v93;
                  v107 = v94;
                  v81;
                  v82;
                  v108 = v106;
                  v109 = v107;
                  v81 = v107;
                  v80 = v106;
LABEL_49:
                  v96 = 0x800000018066D460 | 0x8000000000000000;
                  v97 = HIBYTE(v81) & 0xF;
                  if ((v81 & 0x2000000000000000) == 0)
                  {
                    v97 = v80 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v97 || (v80 & ~v81 & 0x2000000000000000) != 0)
                  {
                    if ((0x800000018066D460 & 0x2000000000000000 & v81) != 0 && (v99 = specialized _SmallString.init(_:appending:)(v80, v81, 0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000), (v101 & 1) == 0))
                    {
                      v98 = v99;
                      v103 = v100;
                      0x800000018066D460 | 0x8000000000000000;
                      v81;
                      v96 = v103;
                    }

                    else
                    {
                      if ((0x800000018066D460 & 0x2000000000000000) != 0)
                      {
                        v102 = (0x800000018066D460 >> 56) & 0xF;
                      }

                      else
                      {
                        v102 = 46;
                      }

                      _StringGuts.append(_:)(0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000, 0, v102, v84, v85, v86, v87, v88, v89, v90, v91);
                      0x800000018066D460 | 0x8000000000000000;
                      v98 = v108;
                      v96 = v109;
                    }
                  }

                  else
                  {
                    v81;
                    v98 = 0xD00000000000002ELL;
                  }

                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v98, v96, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL, 0);
                }

                goto LABEL_47;
              }
            }

            else if ((v71 & 0x2000000000000000) != 0)
            {
LABEL_47:
              v92 = HIBYTE(v81) & 0xF;
              goto LABEL_48;
            }

            v92 = v70 & 0xFFFFFFFFFFFFLL;
LABEL_48:
            _StringGuts.append(_:)(v80, v81, 0, v92, v72, v73, v74, v75, v76, v77, v78, v79);
            v81;
            v80 = v108;
            v81 = v109;
            goto LABEL_49;
          }

LABEL_64:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_18;
      }
    }

    else if ((v31 & 0x2000000000000000) != 0)
    {
LABEL_18:
      v51 = HIBYTE(v41) & 0xF;
      goto LABEL_19;
    }

    v51 = v30 & 0xFFFFFFFFFFFFLL;
LABEL_19:
    _StringGuts.append(_:)(v40, v41, 0, v51, v32, v33, v34, v35, v36, v37, v38, v39);
    v41;
    v40 = v108;
    v41 = v109;
    goto LABEL_20;
  }

  (*(*(a3 - 1) + 1))(a1, a3);
  return (*(v17 + 32))(a6, v16, a2);
}

uint64_t FixedWidthInteger.init<A>(exactly:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v12 = type metadata accessor for Optional(0, a2, a3, a4);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v25 - v19;
  LOBYTE(v7) = static FixedWidthInteger._convert<A>(from:)(&v25 - v19, a1, a2, a3, v7, a5);
  (*(*(a3 - 1) + 1))(a1, a3);
  if (v7)
  {
    (*(v13 + 32))(v17, v20, v12);
    v21 = *(a2 - 1);
    v22 = v21;
    if ((*(v21 + 48))(v17, 1, a2) != 1)
    {
      (*(v21 + 32))(a6, v17, a2);
      v23 = 0;
      return (*(v22 + 56))(a6, v23, 1, a2);
    }

    (*(v13 + 8))(v17, v12);
  }

  else
  {
    (*(v13 + 8))(v20, v12);
    v21 = *(a2 - 1);
  }

  v22 = v21;
  v23 = 1;
  return (*(v22 + 56))(a6, v23, 1, a2);
}

uint64_t FixedWidthInteger.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v144 = a1;
  v136 = a6;
  v10 = *(a4 + 8);
  v130 = *(*(v10 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v130, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v129 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v128 = &v120 - v13;
  v127 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v127, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v126 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v125 = &v120 - v17;
  v18 = *(a3 - 1);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v142 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = *(v9 - 1);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v140 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v138 = &v120 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v120 - v29;
  v31 = *(a4 + 72);
  v137 = a4;
  v124 = (a4 + 72);
  v123 = v31;
  v31(v9, a4);
  v32 = *(a5 + 64);
  v33 = v32(a3, a5);
  v34 = *(v10 + 64);
  v132 = v10 + 64;
  v134 = v34;
  v35 = v34(v9, v10);
  v141 = v18;
  v135 = v32;
  v143 = v10;
  if (((v33 ^ v35) & 1) == 0)
  {
    v122 = (a5 + 64);
    v47 = v144;
    v133 = *(a5 + 128);
    v48 = v133(a3, a5);
    v131 = *(v10 + 128);
    v41 = a5;
    if (v48 >= v131(v9, v10))
    {
      v63 = v142;
      (*(a5 + 96))(v30, v9, v10, a3, a5);
      v51 = (*(*(*(a5 + 32) + 8) + 16))(v47, v63, a3);
      (*(v18 + 8))(v63, a3);
    }

    else
    {
      v49 = v142;
      (*(v18 + 16))(v142, v47, a3);
      v50 = v138;
      (*(v10 + 96))(v49, a3, v41, v9, v10);
      v51 = (*(*(*(v10 + 32) + 8) + 16))(v50, v30, v9);
      v52 = *(v139 + 8);
      v52(v50, v9);
      v52(v30, v9);
    }

    v62 = v140;
    v46 = v134;
    v45 = v135;
    v43 = a3;
    if (v51)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v36 = v32(a3, a5);
  v37 = *(a5 + 128);
  v121 = a3;
  v133 = v37;
  v38 = v37(a3, a5);
  v39 = *(v10 + 128);
  v122 = v30;
  v131 = v39;
  v40 = v39(v9, v10);
  v41 = a5;
  if ((v36 & 1) == 0)
  {
    if (v38 >= v40)
    {
      v76 = v129;
      v77 = v130;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v130, v9, v129, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v79 = v128;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v76, AssociatedConformanceWitness);
      v80 = v138;
      (v77[3])(v79, v9, v77);
      v81 = v143;
      v82 = v122;
      LOBYTE(v76) = (*(*(*(v143 + 32) + 8) + 40))(v122, v80, v9);
      v83 = *(v139 + 8);
      v83(v80, v9);
      if ((v76 & 1) == 0)
      {
        v83(v82, v9);
        v46 = v134;
        v45 = v135;
        v43 = v121;
        v62 = v140;
        goto LABEL_23;
      }

      v84 = v142;
      v85 = v82;
      v43 = v121;
      (*(v41 + 96))(v85, v9, v81, v121, v41);
      v86 = (*(*(*(v41 + 32) + 8) + 16))(v144, v84, v43);
      (*(v141 + 8))(v84, v43);
      v46 = v134;
      v45 = v135;
      v62 = v140;
      if ((v86 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v53 = v142;
      v54 = v9;
      v55 = v121;
      (*(v141 + 16))(v142, v144, v121);
      v56 = v143;
      v57 = v138;
      (*(v143 + 96))(v53, v55, a5, v54, v143);
      v58 = v122;
      v59 = (*(*(*(v56 + 32) + 8) + 16))(v57, v122, v54);
      v60 = *(v139 + 8);
      v60(v57, v54);
      v61 = v58;
      v43 = v55;
      v9 = v54;
      v60(v61, v54);
      v46 = v134;
      v45 = v135;
      v62 = v140;
      if ((v59 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_15:
    (*(v141 + 8))(v144, v43);
    return v123(v9, v137);
  }

  if (v40 < v38)
  {
    v42 = v142;
    v43 = v121;
    (*(a5 + 96))(v122, v9, v143, v121, a5);
    v44 = (*(*(*(a5 + 32) + 8) + 16))(v144, v42, v43);
    (*(v141 + 8))(v42, v43);
    v46 = v134;
    v45 = v135;
    goto LABEL_20;
  }

  v64 = v9;
  v65 = v126;
  v66 = v127;
  v67 = v121;
  v68 = swift_getAssociatedConformanceWitness(v127, v121, v126, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v69 = v125;
  (*(v68 + 8))(&qword_18071E0A8, 256, v65, v68);
  v70 = v142;
  (v66[3])(v69, v67, v66);
  v71 = v144;
  LOBYTE(v65) = (*(*(*(a5 + 32) + 8) + 16))(v144, v70, v67);
  v72 = v141;
  (*(v141 + 8))(v70, v67);
  v73 = v143;
  v74 = v122;
  if (v65)
  {
    (*(v139 + 8))(v122, v64);
    v43 = v67;
    v9 = v64;
    goto LABEL_15;
  }

  (*(v72 + 16))(v70, v71, v67);
  v87 = v138;
  (*(v73 + 96))(v70, v67, v41, v64, v73);
  v44 = (*(*(*(v73 + 32) + 8) + 16))(v87, v74, v64);
  v88 = *(v139 + 8);
  v88(v87, v64);
  v88(v74, v64);
  v46 = v134;
  v45 = v135;
  v43 = v67;
  v9 = v64;
LABEL_20:
  v62 = v140;
  if (v44)
  {
    goto LABEL_15;
  }

LABEL_23:
  v89 = v45;
  v90 = *(v137 + 64);
  v91 = v62;
  v134 = (v137 + 64);
  v124 = v90;
  (v90)(v9);
  v92 = v46(v9, v143);
  if (((v92 ^ v89(v43, v41)) & 1) == 0)
  {
    v93 = v143;
    v101 = v131(v9, v143);
    v96 = v144;
    if (v101 >= v133(v43, v41))
    {
      v99 = v141;
      v104 = v142;
      (*(v141 + 16))(v142, v96, v43);
      v100 = v138;
      (*(v93 + 96))(v104, v43, v41, v9, v93);
      v105 = (*(*(*(v93 + 32) + 8) + 16))(v91, v100, v9);
      goto LABEL_41;
    }

    v102 = v142;
    (*(v41 + 96))(v91, v9, v93, v43, v41);
LABEL_31:
    v103 = (*(*(*(v41 + 32) + 8) + 16))(v102, v96, v43);
    v99 = v141;
    (*(v141 + 8))(v102, v43);
    goto LABEL_32;
  }

  v93 = v143;
  v94 = v46(v9, v143);
  v95 = v131(v9, v93);
  v96 = v144;
  v97 = v133(v43, v41);
  if ((v94 & 1) == 0)
  {
    v102 = v142;
    if (v95 >= v97)
    {
      v113 = v126;
      v114 = v127;
      v115 = swift_getAssociatedConformanceWitness(v127, v43, v126, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v116 = v125;
      (*(v115 + 8))(&qword_18071E0A8, 256, v113, v115);
      (v114[3])(v116, v43, v114);
      LOBYTE(v113) = (*(*(*(v41 + 32) + 8) + 40))(v96, v102, v43);
      v99 = v141;
      (*(v141 + 8))(v102, v43);
      if ((v113 & 1) == 0)
      {
        (*(v139 + 8))(v140, v9);
        return (*(v93 + 96))(v96, v43, v41, v9, v93);
      }

      (*(v99 + 16))(v102, v96, v43);
      v100 = v138;
      (*(v93 + 96))(v102, v43, v41, v9, v93);
      goto LABEL_40;
    }

    (*(v41 + 96))(v140, v9, v93, v43, v41);
    goto LABEL_31;
  }

  v98 = v142;
  if (v97 < v95)
  {
    v99 = v141;
    (*(v141 + 16))(v142, v96, v43);
    v100 = v138;
    (*(v93 + 96))(v98, v43, v41, v9, v93);
LABEL_40:
    v91 = v140;
    v105 = (*(*(*(v93 + 32) + 8) + 16))(v140, v100, v9);
LABEL_41:
    v117 = v105;
    v118 = *(v139 + 8);
    v119 = v100;
    v96 = v144;
    v118(v119, v9);
    v118(v91, v9);
    if ((v117 & 1) == 0)
    {
      return (*(v93 + 96))(v96, v43, v41, v9, v93);
    }

LABEL_37:
    (*(v99 + 8))(v96, v43);
    return v124(v9, v137);
  }

  v106 = v129;
  v107 = v130;
  v108 = swift_getAssociatedConformanceWitness(v130, v9, v129, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v109 = v128;
  (*(v108 + 8))(&qword_18071E0A8, 256, v106, v108);
  v110 = v138;
  (v107[3])(v109, v9, v107);
  v111 = v140;
  LOBYTE(v106) = (*(*(*(v93 + 32) + 8) + 16))(v140, v110, v9);
  v112 = *(v139 + 8);
  v112(v110, v9);
  if (v106)
  {
    v112(v111, v9);
    v99 = v141;
    v96 = v144;
    goto LABEL_37;
  }

  (*(v41 + 96))(v111, v9, v93, v43, v41);
  v96 = v144;
  v103 = (*(*(*(v41 + 32) + 8) + 16))(v98, v144, v43);
  v99 = v141;
  (*(v141 + 8))(v98, v43);
LABEL_32:
  if (v103)
  {
    goto LABEL_37;
  }

  return (*(v93 + 96))(v96, v43, v41, v9, v93);
}

uint64_t specialized static FixedWidthInteger._truncatingInit<A>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v38 = a1;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryInteger, associated type descriptor for BinaryInteger.Words);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v37 = &v34 - v8;
  v36 = *(*(*(swift_getAssociatedConformanceWitness(a3, a2, v6, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.BinaryInteger.Words: RandomAccessCollection) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v36, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v35 = v9;
  v39 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v34 - v12;
  v14 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v11, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v18, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v34 - v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v18, a2, v20, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v20, AssociatedConformanceWitness);
  (*(v18 + 24))(v23, a2, v18);
  v25 = (*(*(*(a3 + 32) + 8) + 16))(v38, v17, a2);
  (*(v14 + 8))(v17, a2);
  v26 = v25 << 63 >> 63;
  v27 = a2;
  v28 = v35;
  (*(a3 + 112))(v27, a3);
  v29 = v36;
  (v36[4])(v6);
  v30 = swift_getAssociatedConformanceWitness(v29, v6, v28, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v31 = *(v30 + 16);
  v31(&v40, v28, v30);
  if (v41)
  {
    v32 = v26;
  }

  else
  {
    v32 = v40;
    v31(&v40, v28, v30);
    if ((v41 & 1) == 0)
    {
      v31(&v40, v28, v30);
    }
  }

  (*(v39 + 8))(v13, v28);
  return v32;
}

uint64_t specialized static FixedWidthInteger._truncatingInit<A>(_:)(char *a1, Class *a2, uint64_t a3)
{
  v49 = a1;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryInteger, associated type descriptor for BinaryInteger.Words);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v48 = &v44 - v8;
  v47 = *(*(*(swift_getAssociatedConformanceWitness(a3, a2, v6, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.BinaryInteger.Words: RandomAccessCollection) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness(0, v47, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v45 = *(v9 - 8);
  v46 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v44 - v12;
  v14 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v11, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v18, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v44 - v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v18, a2, v20, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v20, AssociatedConformanceWitness);
  (*(v18 + 24))(v23, a2, v18);
  v25 = (*(*(*(a3 + 32) + 8) + 16))(v49, v17, a2);
  (*(v14 + 8))(v17, a2);
  v26 = v25 << 63 >> 63;
  (*(a3 + 112))(a2, a3);
  v27 = v47[4];
  v49 = v13;
  v28 = v47;
  (v27)(v6);
  v29 = v28;
  v30 = v46;
  v31 = swift_getAssociatedConformanceWitness(v29, v6, v46, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v32 = 0;
  v33 = 0;
  v34 = *(v31 + 16);
  v35 = v26;
  v36 = v26;
  while (1)
  {
    v34(&v50, v30, v31);
    if (v51)
    {
      break;
    }

    v37 = v32 < 0x80;
    if (v33)
    {
      v37 = v33 < 0;
    }

    if (!v37)
    {
      break;
    }

    v38 = v50 ^ v36;
    if ((v32 & 0x7F) != 0)
    {
      v39 = v50 ^ v36;
    }

    else
    {
      v39 = 0;
    }

    if ((v32 & 0x7F) >= 0x40)
    {
      v38 = 0;
    }

    v26 ^= v38;
    v35 ^= v39;
    v40 = v32 >= 0xFFFFFFFFFFFFFFC0;
    if (v32 < 0xFFFFFFFFFFFFFFC0)
    {
      v41 = v33;
    }

    else
    {
      v41 = v33 + 1;
    }

    v32 += 64;
    v42 = v33 == 0x7FFFFFFFFFFFFFFFLL;
    v33 = v41;
    if (v42)
    {
      v33 = v41;
      if (v40)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }
  }

  (*(v45 + 8))(v49, v30);
  return v26;
}

uint64_t static FixedWidthInteger._truncatingInit<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a1;
  v96 = a6;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for BinaryInteger, associated type descriptor for BinaryInteger.Words);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v86 = &v78 - v13;
  v85 = *(*(*(swift_getAssociatedConformanceWitness(a5, a3, v11, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.BinaryInteger.Words: RandomAccessCollection) + 8) + 8) + 8);
  v88 = v11;
  swift_getAssociatedTypeWitness(0, v85, v11, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v100 = v14;
  v82 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v99 = &v78 - v17;
  v83 = *(a2 - 1);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v94 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v93 = &v78 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v101 = &v78 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v102 = &v78 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v95 = &v78 - v31;
  v97 = *(a4 + 8);
  v98 = a4;
  v92 = *(v97 + 24);
  v32 = *(v92 + 16);
  swift_getAssociatedTypeWitness(0, v32, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v81 = v33;
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v84 = &v78 - v36;
  v37 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v41, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v43 = v42;
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v78 - v45;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v41, a3, v43, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v43, AssociatedConformanceWitness);
  (*(v41 + 24))(v46, a3, v41);
  v89 = a5;
  v48 = (*(*(*(a5 + 32) + 8) + 16))(v91, v40, a3);
  v49 = *(v37 + 8);
  v87 = a3;
  v50 = a3;
  v51 = v81;
  v49(v40, v50);
  v52 = swift_getAssociatedConformanceWitness(v32, a2, v51, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v53 = v84;
  v80 = *(v52 + 8);
  v80(&qword_18071E0A8, 256, v51, v52);
  v90 = v32;
  v54 = v32;
  v55 = v95;
  v56 = v54[3];
  v57 = v97;
  v79 = v48;
  if (v48)
  {
    v58 = v56;
    (v56)(v53, a2, v90);
    (*(v57 + 184))(v55, a2, v57);
    (*(v83 + 8))(v55, a2);
  }

  else
  {
    v58 = v56;
    (v56)(v53, a2, v90);
  }

  v80(&qword_18071E0A8, 256, v51, v52);
  v59 = v102;
  (v58)(v53, a2, v90);
  v60 = v98;
  v61 = (*(v98 + 56))(a2, v98);
  v62 = *(v60 + 136);
  v62(v61, a2, v60);
  (*(v89 + 112))(v87);
  v63 = v85;
  v64 = v88;
  (v85[4])(v88, v85);
  v65 = v63;
  v66 = v100;
  v67 = swift_getAssociatedConformanceWitness(v65, v64, v100, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v90 = *(v67 + 16);
  v91 = v67;
  (v90)(&v103, v66);
  if ((v104 & 1) == 0)
  {
    v68 = v98;
    v89 = *(*(v97 + 32) + 8);
    v87 = *(v89 + 16);
    v88 = (v89 + 16);
    v69 = v103;
    v85 = (v98 + 216);
    v86 = v79 << 63 >> 63;
    v70 = (v83 + 8);
    v84 = (v97 + 232);
    do
    {
      if (((v87)(v59, v101, a2, v89) & 1) == 0)
      {
        break;
      }

      v71 = v94;
      v62(v69 ^ v86, a2, v68);
      v72 = v93;
      (*(v68 + 216))(v71, v102, a2, v68);
      v73 = *v70;
      v74 = v71;
      v59 = v102;
      (*v70)(v74, a2);
      (*(v97 + 232))(v96, v72, a2);
      v73(v72, a2);
      v75 = v95;
      v62(64, a2, v68);
      (*(*(v92 + 8) + 32))(v59, v75, a2);
      v73(v75, a2);
      (v90)(&v103, v100, v91);
      v69 = v103;
    }

    while (v104 != 1);
  }

  (*(v82 + 8))(v99, v100);
  v76 = *(v83 + 8);
  v76(v101, a2);
  return (v76)(v59, a2);
}

uint64_t static FixedWidthInteger.&-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v10, a1);
  (*(a4 + 88))(a1, a2, a3, a4);
  return (*(v8 + 8))(v10, a3);
}

uint64_t static FixedWidthInteger.&*= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v9, a1);
  (*(a4 + 96))(a1, v9, a3, a4);
  return (*(v7 + 8))(v9, a3);
}

uint64_t specialized static FixedWidthInteger._random<A>(using:)@<X0>(Class *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v66 = a3;
  v5 = *(a2 + 8);
  v63 = *(v5 + 24);
  v6 = *(v63 + 16);
  swift_getAssociatedTypeWitness(0, v6, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v58 - v11;
  v64 = *(a1 - 1);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v62 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v65 = v58 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v61 = v58 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v58 - v23;
  v25 = *(a2 + 56);
  if (v25(a1, a2) < 65)
  {
    __buf = 0;
    swift_stdlib_random(&__buf, 8uLL);
    v53 = *(v5 + 96);
    v57 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v54, v55, v56);
    return v53(&__buf, &type metadata for UInt64, v57, a1, v5);
  }

  else
  {
    v60 = v5;
    v26 = v66;
    v27 = v25(a1, a2);
    if (v27 >= 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 + 63;
    }

    v29 = v27 - (v28 & 0xFFFFFFFFFFFFFFC0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a1, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v8, AssociatedConformanceWitness);
    v31 = *(v6 + 24);
    v59 = v24;
    v31(v12, a1, v6);
    v32 = ((v29 > 0) | (v29 >> 63)) + (v28 >> 6);
    if (v32 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v33 = v26;
    v34 = v64;
    v35 = v60;
    if (v32)
    {
      v36 = 0;
      v58[1] = a2 + 216;
      v58[2] = v60 + 96;
      v58[0] = v64 + 8;
      v37 = 0x200000000000000;
      while (1)
      {
        __buf = 0;
        swift_stdlib_random(&__buf, 8uLL);
        v38 = *(v35 + 96);
        v42 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v39, v40, v41);
        result = v38(&__buf, &type metadata for UInt64, v42, a1, v35);
        if (!v37)
        {
          break;
        }

        __buf = v36;
        v46 = lazy protocol witness table accessor for type Int and conformance Int(result, v44, v45);
        v47 = v62;
        v38(&__buf, &type metadata for Int, v46, a1, v35);
        v48 = v61;
        (*(a2 + 216))(v65, v47, a1, a2);
        v49 = *v58[0];
        v50 = v47;
        v51 = v65;
        (*v58[0])(v50, a1);
        v49(v51, a1);
        (*(*(v63 + 8) + 32))(v59, v48, a1);
        v52 = v48;
        v34 = v64;
        v49(v52, a1);
        v35 = v60;
        --v37;
        v36 += 64;
        --v32;
        v33 = v66;
        if (!v32)
        {
          return (*(v34 + 32))(v33, v59, a1);
        }
      }

      __break(1u);
    }

    else
    {
      return (*(v34 + 32))(v33, v59, a1);
    }
  }

  return result;
}

uint64_t static FixedWidthInteger._random<A>(using:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a6;
  v77 = a5;
  v74 = a1;
  v75 = a3;
  v8 = *(a4 + 8);
  v71 = *(v8 + 24);
  v9 = *(v71 + 16);
  swift_getAssociatedTypeWitness(0, v9, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v61 - v14;
  v73 = *(a2 - 1);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v70 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v72 = &v61 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v69 = &v61 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v61 - v26;
  v28 = *(a4 + 56);
  if (v28(a2, a4) <= 64)
  {
    v78 = (*(v77 + 8))(v75);
    v57 = *(v8 + 96);
    v60 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v78, v58, v59);
    return v57(&v78, &type metadata for UInt64, v60, a2, v8);
  }

  else
  {
    v68 = v8;
    v29 = a4;
    v30 = v28(a2, a4);
    if (v30 >= 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 + 63;
    }

    v32 = v30 - (v31 & 0xFFFFFFFFFFFFFFC0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a2, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
    (*(v9 + 24))(v15, a2, v9);
    v34 = ((v32 > 0) | (v32 >> 63)) + (v31 >> 6);
    if (v34 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v67 = v27;
    v36 = v76;
    v35 = v77;
    v37 = v68;
    if (v34)
    {
      v38 = v29;
      v39 = 0;
      v40 = v77 + 8;
      v41 = *(v77 + 8);
      v66 = v29 + 216;
      v65 = (v73 + 8);
      v42 = 0x200000000000000;
      while (1)
      {
        if (!v34)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v62 = v34;
        v63 = v41;
        v64 = v40;
        v78 = v41(v75, v35);
        v43 = *(v37 + 96);
        v46 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v78, v44, v45);
        v47 = v72;
        result = v43(&v78, &type metadata for UInt64, v46, a2, v37);
        if (!v42)
        {
          break;
        }

        v78 = v39;
        v51 = lazy protocol witness table accessor for type Int and conformance Int(result, v49, v50);
        v52 = v70;
        v43(&v78, &type metadata for Int, v51, a2, v37);
        v53 = v69;
        (*(v38 + 216))(v47, v52, a2, v38);
        v54 = v47;
        v61 = v42;
        v55 = *v65;
        v56 = v52;
        v36 = v76;
        (*v65)(v56, a2);
        v55(v54, a2);
        (*(*(v71 + 8) + 32))(v67, v53, a2);
        v55(v53, a2);
        v35 = v77;
        v42 = v61 - 1;
        v39 += 64;
        v34 = v62 - 1;
        v41 = v63;
        v40 = v64;
        if (v62 == 1)
        {
          return (*(v73 + 32))(v36, v67, a2);
        }
      }

      __break(1u);
    }

    else
    {
      return (*(v73 + 32))(v36, v67, a2);
    }
  }

  return result;
}

uint64_t UnsignedInteger<>.init<A>(exactly:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = a4;
  v9 = a2;
  v99 = *(a4 + 8);
  v89 = *(*(v99 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v89, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v88 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v87 = &v85 - v15;
  v16 = *(v9 - 1);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v91 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v98 = &v85 - v22;
  v101 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v21, v23);
  v96 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v95, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v94 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v93 = &v85 - v27;
  v92 = *(a5 + 64);
  if (v92(a3, a5))
  {
    v100 = v7;
    v28 = v9;
    v97 = v16;
    v29 = a1;
    v30 = a6;
    v31 = v94;
    v32 = v95;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v95, a3, v94, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v34 = v93;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v31, AssociatedConformanceWitness);
    v35 = v32[3];
    v36 = v96;
    v37 = v34;
    v38 = v32;
    a6 = v30;
    a1 = v29;
    v16 = v97;
    v9 = v28;
    v7 = v100;
    (v35)(v37, a3, v38);
    LOBYTE(v31) = (*(*(*(a5 + 32) + 8) + 16))(a1, v36, a3);
    (*(v101 + 8))(v36, a3);
    if (v31)
    {
      goto LABEL_25;
    }
  }

  v90 = *(a5 + 128);
  v39 = v90(a3, a5);
  v100 = a1;
  v40 = v39 < (*(v7 + 56))(v9, v7);
  a1 = v100;
  if (v40)
  {
    goto LABEL_5;
  }

  v97 = v16;
  v86 = a6;
  (*(v7 + 64))(v9, v7);
  v42 = v99;
  v43 = v9;
  v44 = *(v99 + 64);
  v45 = v44(v43, v99);
  if (((v45 ^ v92(a3, a5)) & 1) == 0)
  {
    v55 = v98;
    v56 = (*(v42 + 128))(v43, v42);
    a1 = v100;
    if (v56 >= v90(a3, a5))
    {
      v60 = v96;
      (*(v101 + 16))(v96, a1, a3);
      v61 = v91;
      (*(v42 + 96))(v60, a3, a5, v43, v42);
      v62 = (*(*(*(v42 + 32) + 8) + 16))(v55, v61, v43);
      v16 = v97;
      v63 = *(v97 + 8);
      v63(v61, v43);
      v63(v55, v43);
      v9 = v43;
      a6 = v86;
      if (v62)
      {
        goto LABEL_25;
      }

      goto LABEL_5;
    }

    v57 = v96;
    (*(a5 + 96))(v55, v43, v42, a3, a5);
    v54 = (*(*(*(a5 + 32) + 8) + 16))(v57, a1, a3);
    (*(v101 + 8))(v57, a3);
    v9 = v43;
    a6 = v86;
    goto LABEL_24;
  }

  v46 = v44(v43, v42);
  v47 = (*(v42 + 128))(v43, v42);
  v48 = v90(a3, a5);
  v9 = v43;
  v49 = v42;
  if (v46)
  {
    a6 = v86;
    v50 = v97;
    if (v48 >= v47)
    {
      v64 = v88;
      v65 = v89;
      v66 = swift_getAssociatedConformanceWitness(v89, v9, v88, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v67 = v87;
      (*(v66 + 8))(&qword_18071E0A8, 256, v64, v66);
      v68 = v91;
      (v65[3])(v67, v9, v65);
      v69 = v98;
      LOBYTE(v64) = (*(*(*(v49 + 32) + 8) + 16))(v98, v68, v9);
      v70 = v9;
      v71 = *(v50 + 8);
      v71(v68, v70);
      a1 = v100;
      if (v64)
      {
        v71(v69, v70);
        v9 = v70;
        v16 = v97;
LABEL_25:
        (*(v101 + 8))(a1, a3);
        v41 = 1;
        return (*(v16 + 56))(a6, v41, 1, v9);
      }

      v83 = v96;
      (*(a5 + 96))(v69, v70, v49, a3, a5);
      v54 = (*(*(*(a5 + 32) + 8) + 16))(v83, a1, a3);
      (*(v101 + 8))(v83, a3);
      goto LABEL_23;
    }

    a1 = v100;
    v51 = v96;
    (*(v101 + 16))(v96, v100, a3);
    v52 = v91;
    (*(v42 + 96))(v51, a3, a5, v9, v42);
    v53 = v98;
    v54 = (*(*(*(v42 + 32) + 8) + 16))(v98, v52, v9);
  }

  else
  {
    a6 = v86;
    v16 = v97;
    if (v47 < v48)
    {
      v58 = v96;
      (*(a5 + 96))(v98, v9, v49, a3, a5);
      a1 = v100;
      v59 = (*(*(*(a5 + 32) + 8) + 16))(v58, v100, a3);
      (*(v101 + 8))(v58, a3);
      if (v59)
      {
        goto LABEL_25;
      }

      goto LABEL_5;
    }

    v73 = v94;
    v72 = v95;
    v74 = swift_getAssociatedConformanceWitness(v95, a3, v94, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v75 = v93;
    (*(v74 + 8))(&qword_18071E0A8, 256, v73, v74);
    v76 = v96;
    (v72[3])(v75, a3, v72);
    a1 = v100;
    LOBYTE(v73) = (*(*(*(a5 + 32) + 8) + 40))(v100, v76, a3);
    v77 = v101;
    (*(v101 + 8))(v76, a3);
    if ((v73 & 1) == 0)
    {
      (*(v16 + 8))(v98, v9);
      goto LABEL_5;
    }

    v78 = *(v77 + 16);
    v79 = v98;
    v78(v76, a1, a3);
    v80 = v76;
    v52 = v91;
    (*(v49 + 96))(v80, a3, a5, v9, v49);
    v81 = *(*(*(v49 + 32) + 8) + 16);
    v53 = v79;
    v54 = v81(v79, v52, v9);
    v50 = v16;
  }

  v70 = v9;
  v82 = *(v50 + 8);
  v82(v52, v9);
  v82(v53, v9);
LABEL_23:
  v9 = v70;
LABEL_24:
  v16 = v97;
  if (v54)
  {
    goto LABEL_25;
  }

LABEL_5:
  (*(v99 + 96))(a1, a3, a5, v9);
  v41 = 0;
  return (*(v16 + 56))(a6, v41, 1, v9);
}

uint64_t static UnsignedInteger<>.min.getter(Class *a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v3, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, a1, v5, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v5, AssociatedConformanceWitness);
  return (*(v3 + 24))(v8, a1, v3);
}

unint64_t specialized UnsignedInteger<>.dividingFullWidth(_:)(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  if (!(a6 | a7) || __PAIR128__(a3, a2) >= __PAIR128__(a7, a6))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = __clz(a7);
  v9 = __clz(a6) + 64;
  if (!a7)
  {
    v8 = v9;
  }

  if (!(a6 & (a6 - 1) | a7 & ((a6 != 0) + a7 - 1)))
  {
    v10 = v8 + 1;
    v11 = 127 - v8;
    v12 = v11 & 0x7F;
    v13 = ((2 * a5) << ~v11) | (a4 >> v11);
    v14 = a5 >> v11;
    if ((v12 & 0x40) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if ((v10 & 0x40) != 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = a2 << v10;
    }

    result = v15 | v16;
    v18 = ((a6 != 0) + a7 - 1) & a5;
    v19 = (a6 - 1) & a4;
    goto LABEL_54;
  }

  v20 = v8 & 0x7F;
  v21 = ~v8;
  if ((-v8 & 0x40) != 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = a5 >> -v8;
  }

  v23 = ((2 * a5) << (v8 - 1)) | (a4 >> -v8);
  if ((-v8 & 0x40) != 0)
  {
    v23 = a5 >> -v8;
  }

  if (!v8)
  {
    v23 = 0;
    v22 = 0;
  }

  if ((v8 & 0x40) != 0)
  {
    v24 = a6 << v8;
  }

  else
  {
    v24 = (a7 << v8) | (a6 >> 1 >> ~v8);
  }

  if ((v8 & 0x40) != 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = a6 << v8;
  }

  v26 = (a3 << v8) | (a2 >> 1 >> v21);
  v27 = a2 << v8;
  if ((v8 & 0x40) != 0)
  {
    v26 = a2 << v8;
    v27 = 0;
  }

  v28 = v22 | v26;
  v29 = v23 | v27;
  v30 = (a5 << v8) | (a4 >> 1 >> v21);
  v31 = a4 << v8;
  if ((v20 & 0x40) != 0)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  if ((v20 & 0x40) != 0)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  if (v25)
  {
    if (v24)
    {
      v34 = __udivti3();
      v36 = v34;
      v38 = (__PAIR128__(v28, v29) - __PAIR128__(v35, v34) * v24) >> 64;
      v37 = v29 - v34 * v24;
      do
      {
        if (!v35 && __PAIR128__(v37, v32) >= v36 * v25)
        {
          break;
        }

        v39 = v36-- != 0;
        v35 = v39 + v35 - 1;
        v39 = __CFADD__(v37, v24);
        v37 += v24;
        if (v39)
        {
          ++v38;
        }
      }

      while (!v38);
      v41 = v32 - v36 * v25;
      v40 = (__PAIR128__(v29, v32) - __PAIR128__(v35, v36) * __PAIR128__(v24, v25)) >> 64;
      result = __udivti3();
      v43 = v42;
      v45 = (__PAIR128__(v40, v41) - __PAIR128__(v42, result) * v24) >> 64;
      v44 = v41 - result * v24;
      do
      {
        if (!v43 && __PAIR128__(v44, v33) >= result * v25)
        {
          break;
        }

        v39 = result-- != 0;
        v43 = v39 + v43 - 1;
        v39 = __CFADD__(v44, v24);
        v44 += v24;
        if (v39)
        {
          ++v45;
        }
      }

      while (!v45);
      v46 = (__PAIR128__(v41, v33) - __PAIR128__(v43, result) * __PAIR128__(v24, v25)) >> 64;
      v47 = v46 >> v20;
      v19 = ((2 * v46) << ~v20) | ((v33 - result * v25) >> v20);
      if ((v20 & 0x40) != 0)
      {
        v19 = v47;
        v18 = 0;
      }

      else
      {
        v18 = v47;
      }

      goto LABEL_54;
    }

LABEL_56:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v24)
  {
    goto LABEL_56;
  }

  __udivti3();
  result = __udivti3();
  v48 = v32 - result * v24;
  v18 = v48 >> v20;
  v19 = ((2 * v48) << ~v20) | (v33 >> v20);
  if ((v20 & 0x40) != 0)
  {
    v19 = v18;
    v18 = 0;
  }

LABEL_54:
  *a1 = v19;
  a1[1] = v18;
  return result;
}

void static SignedInteger._maskingAdd(_:_:)()
{
  static SignedInteger._maskingAdd(_:_:)();
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000018066D490, "Swift/Integers.swift", 0x14uLL, 2, 0xD2AuLL, 0);
}

void static SignedInteger._maskingSubtract(_:_:)()
{
  static SignedInteger._maskingSubtract(_:_:)();
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000018066D490, "Swift/Integers.swift", 0x14uLL, 2, 0xD2FuLL, 0);
}

uint64_t static SignedInteger<>.min.getter(Class *a1, uint64_t a2)
{
  v4 = *(a1 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  v12 = *(*(*(v11 + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v12, a1, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v22 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a1, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&unk_18071E0B0, 257, v14, AssociatedConformanceWitness);
  (*(v12 + 24))(v17, a1, v12);
  v19 = (*(a2 + 56))(a1, a2);
  (*(a2 + 136))(v19 - 1, a1, a2);
  (*(a2 + 216))(v10, v7, a1, a2);
  v20 = *(v4 + 8);
  v20(v7, a1);
  return (v20)(v10, a1);
}

BOOL specialized SignedInteger<>.isMultiple(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & a2) == 0xFFFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if (!(a1 | a2))
  {
    return (a3 | a4) == 0;
  }

  v5 = __modti3();
  return (v5 | v6) == 0;
}

{
  if (a2 == -1)
  {
    if (a1 == -1)
    {
      return 1;
    }

    goto LABEL_6;
  }

  if (a2 || a1)
  {
LABEL_6:
    v6 = _Int128.remainderReportingOverflow(dividingBy:)(*&a1);
    if (v6.overflow)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = v6.partialValue.high | v6.partialValue.low;
    return v4 == 0;
  }

  v4 = a4 | a3;
  return v4 == 0;
}

BOOL specialized SignedInteger<>.isMultiple(of:)(char a1, char a2)
{
  if (a1 == 255)
  {
    return 1;
  }

  if (a1)
  {
    return a2 % a1 == 0;
  }

  return a2 == 0;
}

BOOL specialized SignedInteger<>.isMultiple(of:)(__int16 a1, __int16 a2)
{
  if (a1 == 0xFFFF)
  {
    return 1;
  }

  if (a1)
  {
    return a2 % a1 == 0;
  }

  return a2 == 0;
}

BOOL specialized SignedInteger<>.isMultiple(of:)(int a1, int a2)
{
  if (a1 == -1)
  {
    return 1;
  }

  if (a1)
  {
    return a2 % a1 == 0;
  }

  return a2 == 0;
}

uint64_t SignedInteger<>.isMultiple(of:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 8);
  v103 = *(*(v7 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v103, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v104 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v101 - v11;
  v13 = *(a2 - 1);
  v15 = MEMORY[0x1EEE9AC00](v10, v14);
  v106 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v101 - v18;
  v20 = *(v7 + 64);
  v21 = v20(a2, v7);
  v107 = v20;
  v108 = v7 + 64;
  v105 = v3;
  if (v21)
  {
    v109 = *(v7 + 128);
    v22 = v109(a2, v7);
    if (v22 >= 64)
    {
      v110 = 0;
      v102 = a1;
      v35 = v13;
      v36 = *(v7 + 96);
      v37 = lazy protocol witness table accessor for type Int and conformance Int(v22, v23, v24);
      v36(&v110, &type metadata for Int, v37, a2, v7);
      a1 = v102;
      v13 = v35;
      v38 = (*(*(*(v7 + 16) + 8) + 8))(v102, v19, a2);
      (*(v35 + 8))(v19, a2);
      if (v38)
      {
        goto LABEL_23;
      }
    }

    else if (!(*(v7 + 120))(a2, v7))
    {
      goto LABEL_23;
    }

LABEL_10:
    v39 = v107;
    if (v107(a2, v7))
    {
      v40 = v109(a2, v7);
      if (v40 >= 64)
      {
        v110 = -1;
        v43 = v13;
        v44 = a1;
        v45 = *(v7 + 96);
        v46 = lazy protocol witness table accessor for type Int and conformance Int(v40, v41, v42);
        v45(&v110, &type metadata for Int, v46, a2, v7);
        a1 = v44;
        v47 = (*(*(*(v7 + 16) + 8) + 8))(v44, v19, a2);
        goto LABEL_16;
      }
    }

    else
    {
      v48 = a1;
      v49 = v39(a2, v7);
      v50 = v48;
      v51 = v109(a2, v7);
      if (v49)
      {
        if (v51 > 64)
        {
          v110 = -1;
          v43 = v13;
          v54 = *(v7 + 96);
          v55 = lazy protocol witness table accessor for type Int and conformance Int(v51, v52, v53);
          v54(&v110, &type metadata for Int, v55, a2, v7);
          a1 = v48;
          v47 = (*(*(*(v7 + 16) + 8) + 8))(v48, v19, a2);
LABEL_16:
          v56 = v47;
          (*(v43 + 8))(v19, a2);
          if ((v56 & 1) == 0)
          {
            goto LABEL_38;
          }

LABEL_41:
          v77 = 1;
          return v77 & 1;
        }

        v81 = v103;
        v80 = v104;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v103, a2, v104, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v80, AssociatedConformanceWitness);
        (v81[3])(v12, a2, v81);
        a1 = v50;
        LOBYTE(v80) = (*(*(*(v7 + 32) + 8) + 32))(v50, v19, a2);
        (*(v13 + 8))(v19, a2);
        if ((v80 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        a1 = v48;
        if (v51 >= 64)
        {
LABEL_38:
          (*(v7 + 168))(v105, a1, a2, v7);
          v83 = v107;
          if (v107(a2, v7))
          {
            v84 = v109(a2, v7);
            if (v84 >= 64)
            {
              goto LABEL_49;
            }

            goto LABEL_47;
          }

          v87 = v83(a2, v7);
          v84 = v109(a2, v7);
          if (v87)
          {
            if (v84 <= 64)
            {
              v89 = v103;
              v88 = v104;
              v90 = swift_getAssociatedConformanceWitness(v103, a2, v104, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              (*(v90 + 8))(&qword_18071E0A8, 256, v88, v90);
              (v89[3])(v12, a2, v89);
              LOBYTE(v88) = (*(*(*(v7 + 32) + 8) + 32))(v106, v19, a2);
              v91 = *(v13 + 8);
              v91(v19, a2);
              if ((v88 & 1) == 0)
              {
                v91(v106, a2);
LABEL_51:
                v77 = 0;
                return v77 & 1;
              }

              v92 = v106;
              v93 = (*(v7 + 120))(a2, v7);
              v91(v92, a2);
LABEL_48:
              v77 = v93 == 0;
              return v77 & 1;
            }
          }

          else if (v84 < 64)
          {
LABEL_47:
            v94 = v106;
            v93 = (*(v7 + 120))(a2, v7);
            (*(v13 + 8))(v94, a2);
            goto LABEL_48;
          }

LABEL_49:
          v110 = 0;
          v95 = v13;
          v96 = *(v7 + 96);
          v97 = lazy protocol witness table accessor for type Int and conformance Int(v84, v85, v86);
          v96(&v110, &type metadata for Int, v97, a2, v7);
          v98 = v106;
          v77 = (*(*(*(v7 + 16) + 8) + 8))(v106, v19, a2);
          v99 = *(v95 + 8);
          v99(v19, a2);
          v99(v98, a2);
          return v77 & 1;
        }
      }
    }

    if ((*(v7 + 120))(a2, v7) != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  v25 = a1;
  v26 = v20(a2, v7);
  v27 = v25;
  v109 = *(v7 + 128);
  v28 = v109(a2, v7);
  if ((v26 & 1) == 0)
  {
    if (v28 < 64)
    {
      a1 = v25;
      v34 = (*(v7 + 120))(a2, v7);
      goto LABEL_20;
    }

LABEL_22:
    v110 = 0;
    v57 = *(v7 + 96);
    v58 = lazy protocol witness table accessor for type Int and conformance Int(v28, v29, v30);
    v57(&v110, &type metadata for Int, v58, a2, v7);
    a1 = v25;
    v59 = (*(*(*(v7 + 16) + 8) + 8))(v25, v19, a2);
    (*(v13 + 8))(v19, a2);
    v4 = v105;
    if (v59)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (v28 > 64)
  {
    goto LABEL_22;
  }

  v32 = v103;
  v31 = v104;
  v33 = swift_getAssociatedConformanceWitness(v103, a2, v104, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(v33 + 8))(&qword_18071E0A8, 256, v31, v33);
  (v32[3])(v12, a2, v32);
  a1 = v27;
  LOBYTE(v31) = (*(*(*(v7 + 32) + 8) + 32))(v27, v19, a2);
  (*(v13 + 8))(v19, a2);
  if ((v31 & 1) == 0)
  {
    goto LABEL_10;
  }

  v34 = (*(v7 + 120))(a2, v7);
LABEL_20:
  v4 = v105;
  if (v34)
  {
    goto LABEL_10;
  }

LABEL_23:
  v60 = v107;
  if ((v107(a2, v7) & 1) == 0)
  {
    v64 = v12;
    v65 = v4;
    v66 = v13;
    v67 = v60(a2, v7);
    v68 = v65;
    v69 = v109(a2, v7);
    if (v67)
    {
      if (v69 <= 64)
      {
        v73 = v103;
        v72 = v104;
        v74 = swift_getAssociatedConformanceWitness(v103, a2, v104, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(v74 + 8))(&qword_18071E0A8, 256, v72, v74);
        (v73[3])(v64, a2, v73);
        LOBYTE(v72) = (*(*(*(v7 + 32) + 8) + 32))(v68, v19, a2);
        (*(v66 + 8))(v19, a2);
        if ((v72 & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_34:
        v77 = (*(v7 + 120))(a2, v7) == 0;
        return v77 & 1;
      }
    }

    else if (v69 < 64)
    {
      goto LABEL_34;
    }

    v110 = 0;
    v78 = *(v7 + 96);
    v79 = lazy protocol witness table accessor for type Int and conformance Int(v69, v70, v71);
    v78(&v110, &type metadata for Int, v79, a2, v7);
    v77 = (*(*(*(v7 + 16) + 8) + 8))(v68, v19, a2);
    (*(v66 + 8))(v19, a2);
    return v77 & 1;
  }

  v61 = v109(a2, v7);
  if (v61 < 64)
  {
    goto LABEL_34;
  }

  v110 = 0;
  v75 = *(v7 + 96);
  v76 = lazy protocol witness table accessor for type Int and conformance Int(v61, v62, v63);
  v75(&v110, &type metadata for Int, v76, a2, v7);
  v77 = (*(*(*(v7 + 16) + 8) + 8))(v4, v19, a2);
  (*(v13 + 8))(v19, a2);
  return v77 & 1;
}

uint64_t specialized SignedInteger<>.dividingFullWidth(_:)(uint64_t *a1, unint64_t a2, int64_t a3, int64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  v11 = __CFSUB__(0, v7, a4 == 0);
  v12 = -__PAIR128__(v7, a4) >> 64;
  v13 = !v11;
  v14 = v13 ^ 1u;
  v15 = ~a3;
  v11 = __CFADD__(v14, ~a2);
  v16 = v14 + ~a2;
  if (v11)
  {
    v15 = -a3;
  }

  if (a3 < 0)
  {
    a4 = -a4;
    a5 = v12;
    a2 = v16;
    a3 = v15;
  }

  v17 = __PAIR128__(a7 ^ (a7 >> 63), a6 ^ (a7 >> 63)) - __PAIR128__(a7 >> 63, a7 >> 63);
  result = specialized UnsignedInteger<>.dividingFullWidth(_:)(&v24, a2, a3, a4, a5, v17, *(&v17 + 1));
  if (((a7 ^ v9) & 0x8000000000000000) == 0)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      v21 = v25;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000051, 0x80000001806718B0, "Swift/Int128.swift", 0x12uLL, 2, 0x9FuLL, 0);
  }

  if (__PAIR128__(v19, result) >= __PAIR128__(0x8000000000000000, 1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = -result;
  v21 = v25;
  if (v25 < 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v22 = v24;
  v23 = -__PAIR128__(v20, v24) >> 64;
  if (v9 < 0)
  {
    v22 = -v24;
    v21 = v23;
  }

  *a1 = v22;
  a1[1] = v21;
  return result;
}

uint64_t JoinedSequence._separator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  result = *(v2 + v4);
  *(v2 + v4) = a1;
  return result;
}

uint64_t JoinedSequence.init<A>(base:separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  (*(*(a2 - 8) + 32))(a7, a1);
  v13 = (*(a5 + 56))(a3, a5);
  result = type metadata accessor for JoinedSequence(0, a2, a4, a6);
  *(a7 + *(result + 44)) = v13;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JoinedSequence<A>.Iterator._JoinIteratorState(uint64_t a1)
{
  specialized Hasher.init(_seed:)(a1, v3);
  JoinedSequence.Iterator._JoinIteratorState.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t FlattenSequence.Iterator._inner.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 32);
  swift_getAssociatedTypeWitness(255, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = type metadata accessor for Optional(0, v7, v8, v9);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, v2 + v4, v10);
}

uint64_t FlattenSequence.Iterator._inner.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = *(a2 + 32);
  swift_getAssociatedTypeWitness(255, *(a2 + 24), *(a2 + 16), &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(255, v5, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v10 = type metadata accessor for Optional(0, v7, v8, v9);
  v11 = *(*(v10 - 8) + 40);

  return v11(v2 + v4, a1, v10);
}

uint64_t JoinedSequence.Iterator._separatorData.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  result = *(v2 + v4);
  *(v2 + v4) = a1;
  return result;
}

uint64_t JoinedSequence.Iterator._separator.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));
  result = *v6;
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t JoinedSequence.Iterator.init<A>(base:separator:)@<X0>(uint64_t a1@<X0>, Class *a2@<X2>, uint64_t a3@<X3>, int **a4@<X4>, uint64_t a5@<X5>, int **a6@<X6>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for JoinedSequence.Iterator(0, a2, a4, a6);
  v14 = v13[11];
  swift_getAssociatedTypeWitness(255, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, a6, v15, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v16 - 8) + 56))(a7 + v14, 1, 1, v16);
  v17 = (a7 + v13[13]);
  *v17 = 0;
  v17[1] = 0;
  *(a7 + v13[14]) = 0;
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  (*(*(v18 - 8) + 32))(a7, a1, v18);
  result = (*(a5 + 56))(a3, a5);
  *(a7 + v13[12]) = result;
  return result;
}

uint64_t JoinedSequence.Iterator.next()@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v111 = a2;
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v124 = *(a1 + 2);
  v125 = v5;
  swift_getAssociatedTypeWitness(255, v5, v124, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  swift_getAssociatedTypeWitness(255, v6, v7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v120 = type metadata accessor for Optional(0, v9, v11, v12);
  v13 = *(v120 - 8);
  v15 = MEMORY[0x1EEE9AC00](v120, v14);
  v114 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v110 = &v96 - v18;
  swift_getAssociatedTypeWitness(255, v6, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v20 = v19;
  v118 = type metadata accessor for Optional(0, v19, v21, v22);
  v23 = *(v118 - 8);
  v25 = MEMORY[0x1EEE9AC00](v118, v24);
  v107 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v106 = &v96 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v96 - v31;
  v109 = type metadata accessor for Optional(0, v8, v33, v34);
  v36 = MEMORY[0x1EEE9AC00](v109, v35);
  v105 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = &v96 - v40;
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v113 = &v96 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v45);
  v112 = &v96 - v46;
  v126 = v10 - 8;
  v127 = v10;
  v102 = v13;
  v47 = (v13 + 8);
  v48 = v4[14];
  v123 = (v49 + 48);
  v50 = (v49 + 32);
  v121 = v6;
  v115 = v6 + 4;
  v116 = v47;
  v51 = v20;
  v119 = v20 - 8;
  v117 = (v23 + 40);
  v108 = (v52 + 8);
  v104 = (v23 + 16);
  v103 = (v23 + 8);
  v122 = v20;
  v128 = v48;
  while (2)
  {
    for (i = *(v3 + v48); i > 1u; i = 1)
    {
      if (i != 2)
      {
        return (*(*(v127 - 8) + 56))(v111, 1, 1);
      }

      v64 = (v3 + v4[13]);
      v65 = *v64;
      if (!*v64)
      {
        goto LABEL_28;
      }

      v66 = *(v65 + 16);
      v67 = v64[1];
      if (v67 != v66)
      {
        if (v67 >= v66)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v93 = v127;
        v94 = *(v127 - 8);
        v95 = v114;
        (*(v94 + 16))(v114, v65 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v67, v127);
        v64[1] = v67 + 1;
        (*(v94 + 56))(v95, 0, 1, v93);
        return (*(v102 + 32))(v111, v95, v120);
      }

      v68 = v114;
      (*(*(v127 - 8) + 56))(v114, 1, 1);
      (*v116)(v68, v120);
LABEL_3:
      *(v3 + v128) = 1;
    }

    if (i)
    {
      v69 = v4[11];
      v100 = *(v51 - 8);
      v70 = *(v100 + 48);
      v101 = v100 + 48;
      if (v70(v3 + v69, 1, v51) == 1)
      {
LABEL_28:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v121, v8, v51, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v72 = *(AssociatedConformanceWitness + 16);
      v99 = v69;
      v73 = v51;
      v74 = v110;
      v72(v73, AssociatedConformanceWitness);
      v75 = *(v127 - 8);
      if ((*(v75 + 48))(v74, 1) != 1)
      {
        return (*(v102 + 32))(v111, v110, v120);
      }

      v96 = v75;
      v97 = v70;
      v98 = v4;
      v77 = v124;
      v76 = v125;
      swift_getAssociatedTypeWitness(255, v125, v124, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
      v79 = v78;
      v80 = swift_getAssociatedConformanceWitness(v76, v77, v78, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v81 = *(v80 + 16);
      v82 = swift_checkMetadataState(0, v79);
      v83 = v105;
      v81(v82, v80);
      if ((*v123)(v83, 1, v8) == 1)
      {
        (*v108)(v83, v109);
        v84 = 1;
        v4 = v98;
        v51 = v122;
        v85 = v106;
      }

      else
      {
        v85 = v106;
        (v121[4])(v8);
        v84 = 0;
        v4 = v98;
        v51 = v122;
      }

      (*(v100 + 56))(v85, v84, 1, v51);
      v86 = v118;
      v87 = v99;
      (*v117)(v3 + v99, v85, v118);
      v88 = v107;
      (*v104)(v107, v3 + v87, v86);
      LODWORD(v87) = v97(v88, 1, v51);
      (*v103)(v88, v86);
      if (v87 == 1)
      {
        (*v116)(v110, v120);
        *(v3 + v128) = 3;
        return (*(v96 + 56))(v111, 1, 1);
      }

      v89 = *(v3 + v4[12]);
      v90 = *v116;
      v48 = v128;
      if (*(v89 + 16))
      {
        *(v3 + v4[12]);
        v90(v110, v120);
        v91 = (v3 + v4[13]);
        *v91;
        *v91 = v89;
        v91[1] = 0;
        v51 = v122;
        *(v3 + v48) = 2;
      }

      else
      {
        v90(v110, v120);
      }

      continue;
    }

    break;
  }

  v54 = v4;
  v56 = v124;
  v55 = v125;
  swift_getAssociatedTypeWitness(255, v125, v124, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v58 = v57;
  v59 = swift_getAssociatedConformanceWitness(v55, v56, v57, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v60 = *(v59 + 16);
  v61 = swift_checkMetadataState(0, v58);
  v60(v61, v59);
  if ((*v123)(v41, 1, v8) != 1)
  {
    v62 = *v50;
    v63 = v112;
    (*v50)(v112, v41, v8);
    v62(v113, v63, v8);
    (v121[4])(v8);
    v51 = v122;
    (*(*(v122 - 8) + 56))(v32, 0, 1, v122);
    v4 = v54;
    (*v117)(v3 + v54[11], v32, v118);
    goto LABEL_3;
  }

  (*v108)(v41, v109);
  *(v3 + v128) = 3;
  return (*(*(v127 - 8) + 56))(v111, 1, 1);
}

uint64_t JoinedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v8 + 32))(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v6);
  v9 = *(a1 + 24);
  (*(v9 + 32))(v6, v9);
  v10 = *(v3 + *(a1 + 44));
  v11 = *(a1 + 32);
  v12 = type metadata accessor for JoinedSequence.Iterator(0, v6, v9, v11);
  v13 = v12[11];
  swift_getAssociatedTypeWitness(255, v9, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  swift_getAssociatedTypeWitness(0, v11, v14, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  result = (*(*(v15 - 8) + 56))(a3 + v13, 1, 1, v15);
  v17 = (a3 + v12[13]);
  *v17 = 0;
  v17[1] = 0;
  *(a3 + v12[14]) = 0;
  *(a3 + v12[12]) = v10;
  return result;
}

__objc2_class **JoinedSequence._copyToContiguousArray()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v98 = v2;
  swift_getAssociatedTypeWitness(0, v2, v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v5 = v4;
  v95 = *(v4 - 1);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v86 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v85 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v100 = &v84 - v13;
  v16 = type metadata accessor for Optional(0, v5, v14, v15);
  v88 = *(v16 - 8);
  v89 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v87 = &v84 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = &v84 - v26;
  v28 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v25, v29);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v2, v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v102 = v32;
  v91 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v37);
  v101 = &v84 - v38;
  v99 = *(a1 + 32);
  swift_getAssociatedTypeWitness(0, v99, v5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v90 = v39;
  v104 = &_swiftEmptyArrayStorage;
  v40 = a1;
  v41 = *(v93 + *(a1 + 44));
  v42 = *(v41 + 16);
  (*(v28 + 16))(v31);
  v43 = *(v98 + 4);
  v44 = (v95 + 48);
  v92 = v40;
  if (v42)
  {
    v45 = v98;
    v43(v3, v98);
    v46 = v45;
    v47 = v102;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v46, v3, v102, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v49 = v87;
    v84 = *(AssociatedConformanceWitness + 16);
    v84(v47, AssociatedConformanceWitness);
    v50 = *v44;
    if ((*v44)(v49, 1, v5) == 1)
    {
      (*(v91 + 8))(v36, v47);
      (*(*(v92 - 8) + 8))(v93);
      (*(v88 + 8))(v49);
    }

    else
    {
      v101 = v36;
      v96 = v50;
      v97 = v44;
      v63 = *(v95 + 32);
      v98 = (AssociatedConformanceWitness + 16);
      v64 = v85;
      v63(v85, v49, v5);
      v65 = v100;
      v63(v100, v64, v5);
      v68 = type metadata accessor for ContiguousArray(0, v90, v66, v67);
      ContiguousArray.append<A>(contentsOf:)(v65, v68, v5, v99);
      v69 = v102;
      v95 = AssociatedConformanceWitness;
      v70 = AssociatedConformanceWitness;
      v71 = v96;
      v72 = v84;
      v84(v102, v70);
      v73 = v72;
      v74 = v71(v20, 1, v5);
      v75 = v86;
      if (v74 != 1)
      {
        v94 = v41;
        do
        {
          v63(v75, v20, v5);
          v103 = v41;
          v41;
          WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v68, v76);
          ContiguousArray.append<A>(contentsOf:)(&v103, v68, v68, WitnessTable);
          v78 = v68;
          v79 = v69;
          v80 = v5;
          v81 = v100;
          v63(v100, v75, v80);
          v82 = v81;
          v5 = v80;
          v69 = v79;
          v68 = v78;
          ContiguousArray.append<A>(contentsOf:)(v82, v78, v5, v99);
          v73(v69, v95);
          v41 = v94;
        }

        while (v96(v20, 1, v5) != 1);
      }

      (*(v91 + 8))(v101, v69);
      (*(*(v92 - 8) + 8))(v93);
      (*(v88 + 8))(v20);
    }
  }

  else
  {
    v51 = v98;
    v43(v3, v98);
    v52 = v102;
    v53 = swift_getAssociatedConformanceWitness(v51, v3, v102, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v97 = *(v53 + 16);
    v98 = v53;
    v96 = (v53 + 16);
    v97(v52);
    v54 = *v44;
    v55 = v54(v27, 1, v5);
    v56 = v99;
    v57 = v100;
    v58 = v90;
    if (v55 != 1)
    {
      v59 = *(v95 + 32);
      do
      {
        v59(v57, v27, v5);
        v62 = type metadata accessor for ContiguousArray(0, v58, v60, v61);
        ContiguousArray.append<A>(contentsOf:)(v57, v62, v5, v56);
        (v97)(v102, v98);
      }

      while (v54(v27, 1, v5) != 1);
    }

    (*(v91 + 8))(v101, v102);
    (*(*(v92 - 8) + 8))(v93);
  }

  return v104;
}

uint64_t Sequence<>.joined<A>(separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v15 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*(a2 - 8) + 32))(a7, v7, a2);
  v16 = (*(a5 + 56))(a3, a5);
  result = type metadata accessor for JoinedSequence(0, a2, a4, a6);
  *(a7 + *(result + 44)) = v16;
  return result;
}

unint64_t AnyKeyPath._kvcKeyPathString.getter()
{
  v1 = *(v0 + 16);
  if (v1 >= 1)
  {
    return specialized String.init(validatingUTF8:)(v1);
  }

  else
  {
    return 0;
  }
}

void *static AnyKeyPath._create(capacityInBytes:initializedBy:)(uint64_t a1, void (*a2)(void *, char *))
{
  v5 = a1 + 3;
  if (a1 >= 0)
  {
    v5 = a1;
  }

  v6 = swift_allocObject(v2, (((*(v2 + 48) + 3) & 0x1FFFFFFFCLL) + (v5 & 0xFFFFFFFFFFFFFFFCLL)), *(v2 + 52) | 3);
  v6[2] = 0;
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = v6 + a1 + 24;
  v8 = v6;
  a2(v6 + 3, v7);
  return v8;
}

Swift::UnsafeMutableRawBufferPointer __swiftcall UnsafeMutableRawBufferPointer.init(start:count:)(Swift::UnsafeMutableRawPointer_optional start, Swift::Int count)
{
  if (count < 0)
  {
LABEL_8:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (count)
  {
    if (!start.value._rawValue)
    {
      goto LABEL_8;
    }
  }

  else if (!start.value._rawValue)
  {
    v2 = 0;
    goto LABEL_9;
  }

  v2 = start.value._rawValue + count;
LABEL_9:
  result._end.value._rawValue = v2;
  result._position = start;
  return result;
}

uint64_t AnyKeyPath._storedInlineOffset.getter()
{
  v1 = specialized KeyPathBuffer.init(base:)(v0 + 24);
  if (v1 && v2 != v1)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 3) == 0)
      {
        v6 = v1;
        goto LABEL_16;
      }

      v5 = -v1 & 3;
      v6 = (v1 + v5);
      if (__OFADD__(v1, v5))
      {
        goto LABEL_53;
      }

      v7 = __OFSUB__(v2 - v1, v5);
      v8 = v2 - v1 - v5;
      if (v7)
      {
        goto LABEL_54;
      }

      if (v8 < 0)
      {
        goto LABEL_50;
      }

      if (v8)
      {
        break;
      }

      if (v6)
      {
        goto LABEL_15;
      }

      v2 = 0;
LABEL_16:
      v9 = v2 - v6 - 4;
      if (__OFSUB__(v2 - v6, 4))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      v10 = v6 + 1;
      v11 = *v6;
      v12 = (v11 >> 24) & 0x7F;
      if (v12 != 1)
      {
        if (v12 == 2)
        {
          if ((v11 & 0x400000) != 0)
          {
            v13 = 28;
          }

          else
          {
            v13 = 20;
          }

          if ((v11 & 0x80000) != 0)
          {
            if ((v11 & 0x400000) != 0)
            {
              v14 = 6;
            }

            else
            {
              v14 = 4;
            }

            v15 = &v6[v14 + 2];
            if ((v15 & 7) != 0)
            {
              goto LABEL_55;
            }

            v13 += ((v11 >> 1) & 8) + *v15 + 16;
            if (v13 < 0)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_22;
        }

        if (v12 != 3)
        {
          v13 = 0;
          v1 = (v6 + 1);
          goto LABEL_35;
        }
      }

      v13 = 4 * ((~v11 & 0x7FFFFF) == 0);
LABEL_22:
      if (v9 < v13)
      {
        goto LABEL_50;
      }

      v1 = v10 + v13;
LABEL_35:
      v2 = v10 + v9;
      if (v9 == v13)
      {
        v16 = 1;
        if (v12 != 1)
        {
          return 0;
        }
      }

      else
      {
        v17 = _ss12MemoryLayoutOsRi_zrlE26_roundingUpBaseToAlignmentyS2WFZypXp_Tt0g5(v1, v2);
        v19 = v18 - v17 - 8;
        if (__OFSUB__(v18 - v17, 8))
        {
          __break(1u);
LABEL_50:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v19 < 0)
        {
          goto LABEL_50;
        }

        v20 = v17;
        v1 = v17 + 8;
        v2 = v1 + v19;
        v16 = *v20 == 0;
        if (v12 != 1)
        {
          return 0;
        }
      }

      v21 = v11 & 0x7FFFFF;
      if ((v11 & 0x7FFFFF) == 0x7FFFFF)
      {
        if (v13 <= 3)
        {
          goto LABEL_50;
        }

        if ((v10 & 3) != 0)
        {
          goto LABEL_55;
        }

        v21 = *v10;
      }

      v7 = __OFADD__(v3, v21);
      v3 += v21;
      if (v7)
      {
        goto LABEL_52;
      }

      if (v16)
      {
        return v3;
      }
    }

    if (!v6)
    {
      goto LABEL_50;
    }

LABEL_15:
    v2 = v6 + v8;
    goto LABEL_16;
  }

  return 0;
}

uint64_t KeyPathBuffer.next()()
{
  v1 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(v0, 1);
  if ((v1 & 0x80000000) != 0)
  {
    *(v0 + 17) = 0;
  }

  v2 = *v0;
  v3 = RawKeyPathComponent.bodySize.getter(v1, *v0);
  _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v2, v3);
  _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(v0, v3);
  if (*v0 && *(v0 + 8) != *v0)
  {
    _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFypXp_Tt0g5(v0, 1);
  }

  return v1;
}

uint64_t RawKeyPathComponent.Header.kind.getter(unsigned int a1)
{
  v1 = HIBYTE(a1) & 0x7F;
  if (v1 < 4)
  {
    return 0x2030100u >> (8 * v1);
  }

  if ((a1 & 0xFFFFFF) == 0)
  {
    return 4;
  }

  if ((a1 & 0xFFFFFF) == 1)
  {
    return 6;
  }

  return 5;
}

void AnyKeyPath.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  v1 = specialized KeyPathBuffer.init(base:)((v0 + 3));
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    if (v2 != v1)
    {
      while (1)
      {
        if ((v3 & 3) != 0)
        {
          v5 = -v3 & 3;
          if (__OFADD__(v3, v5))
          {
            goto LABEL_89;
          }

          if (__OFSUB__(v4 - v3, v5))
          {
            goto LABEL_90;
          }

          v6 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v3 + v5, v4 - v3 - v5);
          v4 = v7;
        }

        else
        {
          v6 = v3;
        }

        v8 = v4 - v6 - 4;
        if (__OFSUB__(v4 - v6, 4))
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v8 < 0)
        {
          goto LABEL_87;
        }

        v9 = *v6;
        v10 = RawKeyPathComponent.Header.kind.getter(*v6);
        if ((v10 - 4) >= 3)
        {
          if ((v10 - 1) >= 2)
          {
            if ((v9 & 0x400000) != 0)
            {
              v11 = 28;
            }

            else
            {
              v11 = 20;
            }

            if ((v9 & 0x80000) != 0)
            {
              v23 = 6;
              if ((v9 & 0x400000) == 0)
              {
                v23 = 4;
              }

              v24 = &v6[v23 + 2];
              if ((v24 & 7) != 0)
              {
                goto LABEL_92;
              }

              v11 += ((v9 >> 1) & 8) + *v24 + 16;
              if (v11 < 0)
              {
                goto LABEL_87;
              }
            }
          }

          else
          {
            v11 = 4 * ((~v9 & 0x7FFFFF) == 0);
          }
        }

        else
        {
          v11 = 0;
        }

        if (v8 - v11 < 0)
        {
          goto LABEL_87;
        }

        v12 = v6 + 1;
        v13 = v6 + v11 + 4;
        if (v8 == v11)
        {
          v14 = 0;
          v3 = v6 + v11 + 4;
        }

        else
        {
          if ((v13 & 7) != 0)
          {
            v15 = -v13 & 7;
            if (__OFADD__(v13, v15))
            {
              __break(1u);
LABEL_87:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v16 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(&v13[v15], v8 - v11 - v15);
            v4 = v17;
          }

          else
          {
            v16 = (v6 + v11 + 4);
          }

          if (__OFSUB__(v4 - v16, 8))
          {
            goto LABEL_91;
          }

          if (v4 - v16 - 8 < 0)
          {
            goto LABEL_87;
          }

          v3 = (v16 + 1);
          v14 = *v16;
        }

        v18 = RawKeyPathComponent.Header.kind.getter(v9);
        if (v18 > 3)
        {
          if (v18 == 4)
          {
            v22 = 2;
          }

          else if (v18 == 5)
          {
            v22 = 3;
          }

          else
          {
            v22 = 4;
          }
        }

        else
        {
          if (v18 == 1)
          {
            v25 = v9 & 0x7FFFFF;
            if ((v9 & 0x7FFFFF) == 0x7FFFFF)
            {
              if (v11 < 4)
              {
                goto LABEL_87;
              }

              if ((v12 & 3) != 0)
              {
                goto LABEL_92;
              }

              v25 = *v12;
            }

            v20 = v25;
            v21 = 0;
          }

          else
          {
            if (v18 != 2)
            {
              v26 = _sSW4load14fromByteOffset2asxSi_xmtlFSV_Tt1g5(4, (v6 + 1), v6 + v11 + 4);
              if ((v9 & 0x200000) != 0)
              {
                v27 = 1;
              }

              else
              {
                v27 = (v9 >> 19) & 2;
              }

              if ((v9 & 0x80000) != 0)
              {
                v33 = 24;
                if ((v9 & 0x400000) != 0)
                {
                  v34 = 6;
                }

                else
                {
                  v34 = 4;
                }

                v35 = &v6[v34 + 2];
                if ((v9 & 0x10) == 0)
                {
                  v33 = 16;
                }

                if ((v35 & 7) != 0)
                {
                  goto LABEL_92;
                }

                if ((*v35 & 0x8000000000000000) != 0)
                {
                  goto LABEL_87;
                }

                if ((v9 & 0x10) != 0)
                {
                  v36 = *(v35 + 16);
                }

                else
                {
                  v36 = 0;
                }

                v28 = v35 + v33;
                v29 = v35 + v33 + *v35;
                v30 = *(v35 + 8);
                if ((v9 & 0x400000) != 0)
                {
                  goto LABEL_74;
                }

LABEL_57:
                Hasher._combine(_:)(5uLL);
                Hasher._combine(_:)(v26);
                Hasher._combine(_:)(v27);
                if (!v30)
                {
                  goto LABEL_85;
                }

                v31 = ComputedArgumentWitnessesPtr.hash.getter(v30);
                if (!v28)
                {
                  goto LABEL_97;
                }

                v32 = v29 - v28 - v36;
                if (__OFSUB__(v29 - v28, v36))
                {
                  __break(1u);
LABEL_95:
                  __break(1u);
LABEL_96:
                  __break(1u);
LABEL_97:
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }
              }

              else
              {
                v28 = 0;
                v29 = 0;
                v30 = 0;
                v36 = 0;
                if ((v9 & 0x400000) == 0)
                {
                  goto LABEL_57;
                }

LABEL_74:
                if ((v9 & 0x800000) != 0)
                {
                  Hasher._combine(_:)(6uLL);
                  Hasher._combine(_:)(v26);
                  Hasher._combine(_:)(v27);
                  if (!v30)
                  {
                    goto LABEL_85;
                  }

                  v31 = ComputedArgumentWitnessesPtr.hash.getter(v30);
                  if (!v28)
                  {
                    goto LABEL_97;
                  }

                  v32 = v29 - v28 - v36;
                  if (__OFSUB__(v29 - v28, v36))
                  {
                    goto LABEL_96;
                  }
                }

                else
                {
                  Hasher._combine(_:)(7uLL);
                  Hasher._combine(_:)(v26);
                  Hasher._combine(_:)(v27);
                  if (!v30)
                  {
                    goto LABEL_85;
                  }

                  v31 = ComputedArgumentWitnessesPtr.hash.getter(v30);
                  if (!v28)
                  {
                    goto LABEL_97;
                  }

                  v32 = v29 - v28 - v36;
                  if (__OFSUB__(v29 - v28, v36))
                  {
                    goto LABEL_95;
                  }
                }
              }

              v22 = v31(v28, v32);
              if (!v22)
              {
                goto LABEL_85;
              }

              goto LABEL_84;
            }

            v19 = v9 & 0x7FFFFF;
            if ((v9 & 0x7FFFFF) == 0x7FFFFF)
            {
              if (v11 < 4)
              {
                goto LABEL_87;
              }

              if ((v12 & 3) != 0)
              {
                goto LABEL_92;
              }

              v19 = *v12;
            }

            v20 = v19;
            v21 = 1;
          }

          Hasher._combine(_:)(v21);
          v22 = v20;
        }

LABEL_84:
        Hasher._combine(_:)(v22);
LABEL_85:
        if (!v14)
        {
          return;
        }

        Hasher._combine(_:)(v14);
      }
    }
  }
}

uint64_t RawKeyPathComponent.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a1;
  v8 = RawKeyPathComponent.Header.kind.getter(a1);
  if (v8 > 3)
  {
    v16 = 0xA000000000000000;
    v17 = 1;
    if (v8 != 5)
    {
      v17 = 2;
      v16 = 0xA000000000000000;
    }

    if (v8 == 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = v17;
    }

    if (v8 == 4)
    {
      v16 = 0xA000000000000000;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    result = 0;
  }

  else if (v8 == 1)
  {
    v9 = v6 & 0x7FFFFF;
    if (v9 == 0x7FFFFF)
    {
      v18 = _sSW4load14fromByteOffset2asxSi_xmtlFs6UInt32V_Tt1g5(0, a2, a3);
      v16 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      result = 0;
      v9 = v18;
    }

    else
    {
      v16 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      result = 0;
    }
  }

  else if (v8 == 2)
  {
    v9 = v6 & 0x7FFFFF;
    if (v9 == 0x7FFFFF)
    {
      v10 = _sSW4load14fromByteOffset2asxSi_xmtlFs6UInt32V_Tt1g5(0, a2, a3);
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      result = 0;
      v16 = 0x2000000000000000;
      v9 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      result = 0;
      v16 = 0x2000000000000000;
    }
  }

  else
  {
    v9 = _sSW4load14fromByteOffset2asxSi_xmtlFSV_Tt1g5(4, a2, a3);
    if ((v6 & 0x200000) != 0)
    {
      v19 = 1;
    }

    else
    {
      v19 = (v6 >> 19) & 2;
    }

    if ((v6 & 0x80000) != 0)
    {
      v20 = RawKeyPathComponent._computedArgumentSize.getter(v6, a2);
      if (v20 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v21 = 24;
      if ((v6 & 0x400000) != 0)
      {
        v22 = 24;
      }

      else
      {
        v22 = 16;
      }

      v23 = a2 + v22;
      if ((v6 & 0x10) == 0)
      {
        v21 = 16;
      }

      v12 = v23 + v21 + 4;
      v13 = v12 + v20;
      v14 = RawKeyPathComponent._computedArgumentWitnesses.getter(v6, a2);
      result = RawKeyPathComponent._computedArgumentWitnessSizeAdjustment.getter(v6, a2);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      result = 0;
    }

    v11 = a2 + 12;
    v24 = v19 | 0x6000000000000000;
    if ((v6 & 0x800000) == 0)
    {
      v24 = v19 | 0x8000000000000000;
    }

    v16 = v19 | 0x4000000000000000;
    if ((v6 & 0x400000) != 0)
    {
      v16 = v24;
    }
  }

  *a4 = v9;
  a4[1] = v16;
  a4[2] = v11;
  a4[3] = v12;
  a4[4] = v13;
  a4[5] = v14;
  a4[6] = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyKeyPath()
{
  specialized Hasher.init(_seed:)(0, v1);
  AnyKeyPath.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyKeyPath(uint64_t a1)
{
  specialized Hasher.init(_seed:)(a1, v2);
  AnyKeyPath.hash(into:)();
  return Hasher._finalize()();
}

void KeyPath._projectReadOnly(from:)(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(*v3 + 136);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v62[-1] - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v62[-1] - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v62[-1] - v19;
  v22 = *(v21 + 128);
  v23 = v3[2];
  if (v23 && v23 < 0)
  {
    if ((*(*(v22 - 8) + 64) & 0x8000000000000000) == 0)
    {
      v24 = *(v18 + 16);
      v25 = &a1[~v23];
LABEL_5:
      v26 = a3;
LABEL_38:

      v24(v26, v25, v6);
      return;
    }

    goto LABEL_42;
  }

  v61 = v18;
  v27 = specialized KeyPathBuffer.init(base:)((v3 + 3));
  v63[0] = v27;
  v63[1] = v28;
  v64 = v29 & 0x101;
  v65 = BYTE2(v29) & 1;
  if (!v27 || v28 == v27)
  {
LABEL_37:
    v24 = *(v61 + 16);
    v26 = a3;
    v25 = a1;
    goto LABEL_38;
  }

  if ((v29 & 0x10000) == 0)
  {
    if (v28 >= 0xFFFFFFFFFFFFFFF9)
    {
      __break(1u);
    }

    else
    {
      if (((v28 + 7) & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_50;
      }

      isStackAllocationSafe = MEMORY[0x1EEE9AC00](v27, v28);
      *(&v61 - 6) = v22;
      *(&v61 - 5) = v6;
      v57 = a1;
      v58 = v22;
      v59 = v63;
      v60 = v6;
      if (v51 == 63)
      {
        LODWORD(v59) = 0;
        v58 = 41;
        LOBYTE(v57) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v28 = 1 << v50;
      if (1 << v50 <= 1024)
      {
LABEL_47:
        MEMORY[0x1EEE9AC00](isStackAllocationSafe, v28);
        _ss41_withUnprotectedUnsafeTemporaryAllocation9byteCount9alignment_xSi_SixSwKXEtKRi_zlFxBpKXEfU_(&v62[-1] - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v52, partial apply for closure #2 in closure #2 in KeyPath._projectReadOnly(from:));
        v53 = *(v61 + 32);
        v61 += 32;
        v53(v12, &v62[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        v53(a3, v12, v6);
        return;
      }
    }

    v54 = v28;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v28 = v54;
    if ((isStackAllocationSafe & 1) == 0)
    {
      v55 = v54;
      v56 = swift_slowAlloc(v54, 0xFFFFFFFFFFFFFFFFLL);
      _ss41_withUnprotectedUnsafeTemporaryAllocation9byteCount9alignment_xSi_SixSwKXEtKRi_zlFxBpKXEfU_(v56, v55, partial apply for closure #2 in closure #2 in KeyPath._projectReadOnly(from:));
      v56;
      return;
    }

    goto LABEL_47;
  }

  v30 = KeyPathBuffer.next()();
  v32 = v31;
  v34 = v33;
  bzero(a3, v7);
  RawKeyPathComponent.value.getter(v30, v32, v34, &v66);
  v35 = v66;
  v36 = v67 >> 61;
  if ((v67 >> 61) <= 1)
  {
    if (v36)
    {
      v44 = *a1;
      swift_beginAccess(v44 + v66, v62, 0, 0);
      (*(v61 + 16))(a3, v44 + v35, v6);
      return;
    }

    if ((*(*(v22 - 8) + 64) & 0x8000000000000000) == 0)
    {
      v24 = *(v61 + 16);
      v25 = &a1[v66];
      goto LABEL_5;
    }

LABEL_42:
    LODWORD(v59) = 0;
    v58 = 1215;
    LOBYTE(v57) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v37 = v68;
  v38 = v69;
  v39 = v71;
  if ((v36 - 2) >= 3)
  {
    v45 = v69 | v68;
    v46 = v71 | v72;
    if (v67 != 0xA000000000000000 || v45 | v66 | v70 | v46)
    {
      if (v67 != 0xA000000000000000 || v66 != 1 || v45 | v70 | v46)
      {
        (*(v61 + 16))(v20, a1, v6);
        (*(v61 + 104))(v20, 0, v6);
        (*(v61 + 32))(a3, v20, v6);
        return;
      }

      if ((*(*(v22 - 8) + 88))(a1, v22))
      {
        LODWORD(v59) = 0;
        v58 = 1881;
        LOBYTE(v57) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v47 = (*(*(v22 - 8) + 88))(a1, v22);
      if (v47)
      {
        v57 = v22;
        v58 = v6;
        v59 = v6;
        LODWORD(v60) = MEMORY[0x1EEE9AC00](v47, v48);
        _sSpsRi_zrlE17withMemoryRebound2to8capacity_qd_1_qd__m_Siqd_1_Spyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSiSpyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyqd__s5NeverOytIsgyrzr_AFytA2HRsd_0_ytRsd_1_Ri_zRi_d__r_1_lIetMygyrzo_Tp5(1, partial apply for closure #2 in RawKeyPathComponent._projectReadOnly<A, B, C>(_:to:endingWith:_:pointer:), (&v61 - 6), a3, v6, v6);
        return;
      }
    }

    goto LABEL_37;
  }

  if ((v68 & 7) != 0)
  {
    LODWORD(v59) = 0;
    v58 = 449;
    LOBYTE(v57) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v40 = v70;
  swift_getFunctionTypeMetadata3(0x20003uLL, v22, &type metadata for UnsafeRawPointer, &type metadata for Int, v6);
  if (!*v37)
  {
LABEL_50:
    LODWORD(v59) = 0;
    v58 = 377;
    LOBYTE(v57) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v39)
  {
    v41 = v38 == 0;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40 - v38;
  }

  if (v41)
  {
    v43 = v37;
  }

  else
  {
    v43 = v38;
  }

  (*v37)(a1, v43, v42);
  (*(v61 + 32))(a3, v16, v6);
}

uint64_t closure #2 in closure #2 in KeyPath._projectReadOnly(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47[1] = a9;
  v48 = a6;
  v13 = a1;
  v57 = a7;
  v58 = a8;
  v51 = a8;
  v59 = a3;
  v49 = a7;
  _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(closure #1 in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)partial apply, v56, a1, a2, a7);
  v14 = v9;
  v50 = a2;
  v55 = a2 - v13;
  while (1)
  {
    v54 = v14;
    v15 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(a5, 1);
    if ((v15 & 0x80000000) != 0)
    {
      *(a5 + 17) = 0;
    }

    v16 = *a5;
    v17 = RawKeyPathComponent.Header.kind.getter(v15);
    if ((v17 - 4) < 3)
    {
LABEL_8:
      v18 = 0;
      v19 = 0;
      v20 = 0;
      if (!v16)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if ((v17 - 1) < 2)
    {
      if ((~v15 & 0x7FFFFF) != 0)
      {
        goto LABEL_8;
      }

      v18 = 4;
LABEL_13:
      if (!v16)
      {
        LODWORD(v46) = 0;
        v45 = 1216;
        LOBYTE(v44) = 2;
LABEL_33:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_14;
    }

    v18 = 28;
    if ((v15 & 0x400000) == 0)
    {
      v18 = 20;
    }

    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    v41 = 24;
    if ((v15 & 0x400000) == 0)
    {
      v41 = 16;
    }

    v42 = v16 + v41 + 4;
    if ((v42 & 7) != 0)
    {
      LODWORD(v46) = 0;
      v45 = 449;
      LOBYTE(v44) = 2;
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 += ((v15 >> 1) & 8) + *v42 + 16;
    if (v18 < 0)
    {
      LODWORD(v46) = 0;
      v45 = 1215;
      LOBYTE(v44) = 2;
      goto LABEL_33;
    }

LABEL_14:
    v20 = v18 + v16;
    v19 = v18;
LABEL_15:
    _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(a5, v19);
    if (*a5 && a5[1] != *a5)
    {
      v22 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFypXp_Tt0g5(a5, 1);
    }

    else
    {
      v22 = v48;
    }

    v60 = 0;
    v23 = *(a4 - 8);
    v24 = MEMORY[0x1EEE9AC00](v47, v21);
    v27 = v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!v13)
    {
LABEL_35:
      LODWORD(v46) = 0;
      v45 = 1212;
      LOBYTE(v44) = 2;
      goto LABEL_39;
    }

    if ((*(v23 + 80) & v13) != 0)
    {
      LODWORD(v46) = 0;
      v45 = 1000;
      LOBYTE(v44) = 2;
      goto LABEL_33;
    }

    v28 = *(v23 + 72);
    if (!v28)
    {
      LODWORD(v46) = 0;
      v45 = 9012;
      LOBYTE(v44) = 2;
      goto LABEL_41;
    }

    if (v55 == 0x8000000000000000 && v28 == -1)
    {
      LODWORD(v46) = 0;
      v45 = 9019;
      LOBYTE(v44) = 2;
LABEL_41:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v29 = v55 / v28;
    if (v29 < 0)
    {
      LODWORD(v46) = 0;
      v45 = 74;
      LOBYTE(v44) = 2;
LABEL_39:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (!v29)
    {
      goto LABEL_35;
    }

    v30 = *(v23 + 32);
    v53 = v24;
    v52 = v25;
    v31 = v30(v27, v13, a4);
    MEMORY[0x1EEE9AC00](v31, v32);
    v33 = v50;
    v34 = v51;
    v47[-10] = v49;
    v47[-9] = v34;
    v47[-8] = a4;
    v47[-7] = v22;
    LODWORD(v47[-6]) = v15;
    v47[-5] = v16;
    v44 = v20;
    v45 = v27;
    v46 = &v60;
    v36 = v35;
    v37 = v54;
    _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(partial apply for closure #2 in projectNew #1 <A, B><A1><A2>(_:) in projectCurrent #1 <A, B><A1>(_:) in closure #2 in closure #2 in KeyPath._projectReadOnly(from:), &v47[-12], v35, v33, v22);
    v14 = v37;
    v38 = v60;
    v39 = (*(v23 + 8))(v27, a4);
    if ((v52 | v38))
    {
      break;
    }

    a4 = v22;
    v13 = v36;
  }

  MEMORY[0x1EEE9AC00](v39, v40);
  v46 = v49;
  return _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(partial apply for closure #2 in closure #2 in closure #2 in KeyPath._projectReadOnly(from:), &v44, v36, v50, v51);
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys5UInt8VsAD_pq0_Isgyrzr_Swq0_sAD_pAFRszsAD_pRs_Ri_0_r1_lIetMgyrzo_Tpq5SiSg_Tgq5055_sSw39withContiguousMutableStorageIfAvailableyxSgxSrys5F25VGzKXEKlFAbEKXEfU_Si_TGq5SryAFGxsAD_pRi_zRi0_zlySiIsglrzo_Tf1cn_n(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t *))
{
  if (!a1)
  {
    return specialized closure #1 in UnsafeMutableRawBufferPointer.withContiguousMutableStorageIfAvailable<A>(_:)(0, 0, a3);
  }

  v3 = a2 - a1;
  if (v3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return specialized closure #1 in UnsafeMutableRawBufferPointer.withContiguousMutableStorageIfAvailable<A>(_:)(a1, v3, a3);
}

uint64_t _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    result = (a1)(0, 0, 0, a4, a5);
    if (!v5)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = *(a5 - 8);
  if ((*(v6 + 80) & a3) != 0)
  {
    goto LABEL_11;
  }

  v7 = *(v6 + 72);
  if (!v7 || a4 - a3 == 0x8000000000000000 && v7 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a4 - a3) / v7 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = a1(a3);
  if (v5)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t closure #2 in projectNew #1 <A, B><A1><A2>(_:) in projectCurrent #1 <A, B><A1>(_:) in closure #2 in closure #2 in KeyPath._projectReadOnly(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a6;
  v50 = a7;
  v13 = *(a9 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v48 - v18;
  RawKeyPathComponent.value.getter(v20, v21, v22, &v55);
  v23 = v55;
  v24 = v56 >> 61;
  if ((v56 >> 61) <= 1)
  {
    if (v24)
    {
      a5 = *a5;
      swift_beginAccess(&a5[v55], v54, 0, 0);
    }

    else if ((*(*(a8 - 8) + 64) & 0x8000000000000000) != 0)
    {
      LODWORD(v46) = 0;
      v45 = 1215;
      LOBYTE(v44) = 2;
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return (*(v13 + 16))(a1, &a5[v23], a9);
  }

  else
  {
    v25 = a8;
    v26 = a5;
    v51 = a1;
    v52 = a9;
    v53 = v9;
    v27 = v57;
    v28 = v58;
    v30 = v59;
    v29 = v60;
    if ((v24 - 2) >= 3)
    {
      v37 = v58 | v57;
      v38 = v60 | v61;
      if (v56 != 0xA000000000000000 || v37 | v55 | v59 | v38)
      {
        if (v56 != 0xA000000000000000 || v55 != 1 || v37 | v59 | v38)
        {
          v43 = v52;
          (*(v13 + 16))(v19, v26, v52);
          (*(v13 + 104))(v19, 0, v43);
          return (*(v13 + 32))(v51, v19, v43);
        }

        if ((*(*(v25 - 8) + 88))(v26))
        {
          LODWORD(v46) = 0;
          v45 = 1881;
          LOBYTE(v44) = 2;
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        v39 = v25;
        v40 = (*(*(v25 - 8) + 88))(v26);
        if (v40)
        {
          *v49 = 1;
          v42 = MEMORY[0x1EEE9AC00](v40, v41);
          v44 = v39;
          v46 = v50;
          v47 = v42;
          return _sSpsRi_zrlE17withMemoryRebound2to8capacity_qd_1_qd__m_Siqd_1_Spyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSiSpyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyqd__s5NeverOytIsgyrzr_AFytA2HRsd_0_ytRsd_1_Ri_zRi_d__r_1_lIetMygyrzo_Tp5(1, closure #2 in RawKeyPathComponent._projectReadOnly<A, B, C>(_:to:endingWith:_:pointer:)partial apply, (&v48 - 6), v51, v52, v50);
        }
      }

      return (*(v13 + 16))(v51, v26, v52);
    }

    v31 = v52;
    v32 = ComputedAccessorsPtr.getter<A, B>()(v57, v25, v52);
    if (v29)
    {
      v33 = v28 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = v30 - v28;
    }

    if (v33)
    {
      v35 = v27;
    }

    else
    {
      v35 = v28;
    }

    v32(v26, v35, v34);
    return (*(v13 + 32))(v51, v16, v31);
  }
}

uint64_t KeyPath.deinit()
{
  v1 = specialized KeyPathBuffer.init(base:)(v0 + 24);
  if ((v3 & 1) == 0)
  {
    if (v1)
    {
      goto LABEL_4;
    }

    v4 = 0;
    while (1)
    {
      v8 = v2 - v4 - 4;
      if (__OFSUB__(v2 - v4, 4))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v9 = v4 + 1;
      v10 = *v4;
      v11 = BYTE3(v10) & 0x7F;
      if ((v10 & 0x7D000000) == 0x1000000)
      {
        break;
      }

      if (v11 == 2)
      {
        v12 = 28;
        if ((v10 & 0x400000) == 0)
        {
          v12 = 20;
        }

        if ((v10 & 0x80000) != 0)
        {
          v13 = 6;
          if ((v10 & 0x400000) == 0)
          {
            v13 = 4;
          }

          v14 = &v4[v13 + 2];
          if ((v14 & 7) != 0)
          {
            goto LABEL_56;
          }

          v12 += ((v10 >> 1) & 8) + *v14 + 16;
          if (v12 < 0)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_18;
      }

      v12 = 0;
      v1 = (v4 + 1);
LABEL_30:
      v2 = v9 + v8;
      v15 = 1;
      if (v8 != v12)
      {
        v16 = _ss12MemoryLayoutOsRi_zrlE26_roundingUpBaseToAlignmentyS2WFZypXp_Tt0g5(v1, v2);
        v18 = v17 - v16 - 8;
        if (__OFSUB__(v17 - v16, 8))
        {
          goto LABEL_55;
        }

        if (v18 < 0)
        {
LABEL_51:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v19 = v16;
        v1 = v16 + 8;
        v2 = v1 + v18;
        v15 = *v19 == 0;
      }

      if ((v10 & 0x7D000000) != 0x1000000 && v11 == 2 && (v10 & 0x80000) != 0)
      {
        v20 = 6;
        if ((v10 & 0x400000) == 0)
        {
          v20 = 4;
        }

        v21 = &v4[v20];
        v22 = &v4[v20 + 4];
        if ((v22 & 7) != 0)
        {
          goto LABEL_56;
        }

        v23 = *v22;
        if ((v23 & 7) != 0)
        {
          goto LABEL_56;
        }

        if (*v23)
        {
          v24 = v21 + 2;
          v25 = 3;
          if ((v10 & 0x10) == 0)
          {
            v25 = 2;
          }

          if ((v24 & 7) != 0)
          {
            goto LABEL_56;
          }

          v26 = v1;
          v27 = v2;
          v28 = 0;
          if ((v10 & 0x10) != 0)
          {
            v28 = v24[2];
          }

          (*v23)(&v24[v25], *v24 - v28);
          v2 = v27;
          v1 = v26;
        }
      }

      if (v15)
      {
        return v0;
      }

LABEL_4:
      if ((v1 & 3) != 0)
      {
        v5 = -v1 & 3;
        v4 = (v1 + v5);
        if (__OFADD__(v1, v5))
        {
          goto LABEL_53;
        }

        v6 = __OFSUB__(v2 - v1, v5);
        v7 = v2 - v1 - v5;
        if (v6)
        {
          goto LABEL_54;
        }

        if (v7 < 0)
        {
          goto LABEL_51;
        }

        if (v7)
        {
          if (!v4)
          {
            goto LABEL_51;
          }

LABEL_13:
          v2 = v4 + v7;
        }

        else
        {
          if (v4)
          {
            goto LABEL_13;
          }

          v2 = 0;
        }
      }

      else
      {
        v4 = v1;
      }
    }

    v12 = 4 * ((~v10 & 0x7FFFFF) == 0);
LABEL_18:
    v1 = v9 + v12;
    if (v8 < v12)
    {
      goto LABEL_51;
    }

    goto LABEL_30;
  }

  return v0;
}

void **WritableKeyPath._projectMutableAddress(from:)(void **a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[2];
  if (v4 < 0)
  {
    return (a1 + ~v4);
  }

  v5 = *v1;
  v27 = 0;
  v28 = a1;
  v7 = *(v3 + 152);
  v8 = specialized KeyPathBuffer.init(base:)((v2 + 3));
  if (!v8)
  {
    return a1;
  }

  v10 = v8;
  v11 = v9;
  if (v9 == v8)
  {
    return a1;
  }

  while (1)
  {
    if ((v10 & 3) == 0)
    {
      v14 = v10;
      goto LABEL_16;
    }

    v13 = -v10 & 3;
    v14 = (v10 + v13);
    if (__OFADD__(v10, v13))
    {
      goto LABEL_43;
    }

    v15 = __OFSUB__(&v11[-v10], v13);
    v16 = &v11[-v10 - v13];
    if (v15)
    {
      goto LABEL_44;
    }

    if (v16 < 0)
    {
      goto LABEL_40;
    }

    if (v16)
    {
      if (!v14)
      {
        goto LABEL_40;
      }

LABEL_15:
      v11 = &v14[v16];
      goto LABEL_16;
    }

    if (v14)
    {
      goto LABEL_15;
    }

    v11 = 0;
LABEL_16:
    v17 = v11 - v14 - 4;
    if (__OFSUB__(v11 - v14, 4))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    v18 = (v14 + 4);
    v19 = *v14;
    if ((v19 & 0x7D000000) == 0x1000000)
    {
      v20 = 4 * ((~v19 & 0x7FFFFF) == 0);
    }

    else
    {
      if ((BYTE3(v19) & 0x7F) != 2)
      {
        v21 = (v14 + 4);
        if (v11 - v14 == 4)
        {
          break;
        }

        goto LABEL_33;
      }

      v20 = 28;
      if ((v19 & 0x400000) == 0)
      {
        v20 = 20;
      }

      if ((v19 & 0x80000) != 0)
      {
        v22 = 24;
        if ((v19 & 0x400000) == 0)
        {
          v22 = 16;
        }

        v23 = &v14[v22 + 8];
        if ((v23 & 7) != 0)
        {
          goto LABEL_45;
        }

        v20 += ((v19 >> 1) & 8) + *v23 + 16;
        if (v20 < 0)
        {
          goto LABEL_40;
        }
      }
    }

    if (v17 < v20)
    {
      goto LABEL_40;
    }

    v21 = v18 + v20;
    if (v17 == v20)
    {
      break;
    }

LABEL_33:
    v24 = _ss12MemoryLayoutOsRi_zrlE26_roundingUpBaseToAlignmentyS2WFZypXp_Tt0g5(v21, v18 + v17);
    if (__OFSUB__(v25 - v24, 8))
    {
      goto LABEL_42;
    }

    if (v25 - v24 - 8 < 0)
    {
LABEL_40:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v10 = (v24 + 1);
    v11 = v25;
    v26 = *v24;
    specialized project #1 <A, B><A1>(_:) in closure #1 in WritableKeyPath._projectMutableAddress(from:)(&v28, v19, v18, v21, &v27, *v24, v7);
    v7 = v26;
    if (!v26)
    {
      return v28;
    }
  }

  specialized project #1 <A, B><A1>(_:) in closure #1 in WritableKeyPath._projectMutableAddress(from:)(&v28, v19, v18, v21, &v27, *(v5 + 160), v7);
  return v28;
}

void WritableKeyPath.__deallocating_deinit()
{
  KeyPath.deinit();

  swift_deallocClassInstance(v0);
}

uint64_t ReferenceWritableKeyPath._projectMutableAddress(from:)(__int128 *a1)
{
  v3 = *v1;
  v9 = 0;
  v4 = specialized KeyPathBuffer.init(base:)((v1 + 3));
  specialized closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(v4, v6, v5 & 0x10101, a1, &v9, *(v3 + 176), *(v3 + 184), &v8);
  return v8;
}

uint64_t specialized closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)@<X0>(uint64_t isStackAllocationSafe@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, __int128 *a4@<X3>, char **a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v106 = a7;
  LODWORD(v12) = a3 >> 8;
  v116 = isStackAllocationSafe;
  v117 = a2;
  v118 = a3;
  v119 = BYTE2(a3);
  if (a2 >= 0xFFFFFFFFFFFFFFF9)
  {
    goto LABEL_64;
  }

  v13 = ((a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (!v13)
  {
    LODWORD(v100) = 0;
    v99 = 377;
    LOBYTE(v98) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14 = -__clz(*v13);
  if ((v14 & 0x3F) == 0x3FLL)
  {
    LODWORD(v100) = 0;
    v99 = 41;
    LOBYTE(v98) = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = a6;
  v8 = a2;
  v10 = isStackAllocationSafe;
  v102 = a5;
  v103 = a8;
  v15 = 1 << v14;
  v105 = 1 << v14;
  if (1 << v14 >= 1025)
  {
LABEL_65:
    v62 = a4;
    v63 = a3;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v64 = v62;
    v15 = v105;
    if (isStackAllocationSafe)
    {
      goto LABEL_5;
    }

    v65 = v64;
    v66 = swift_slowAlloc(v105, 0xFFFFFFFFFFFFFFFFLL);
    MEMORY[0x1EEE9AC00](v66, v67);
    v98 = v11;
    v99 = v106;
    v100 = v65;
    v111 = v68;
    _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(closure #1 in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)partial apply, &v96, v68, v68 + v15, v11);
    v110 = v9;
    if ((v63 & 0x100) == 0)
    {
      v78 = v11;
LABEL_98:
      v115 = v78;
      v91 = __swift_allocate_boxed_opaque_existential_0Tm(&v114);
      v92 = *(v78 - 8);
      if ((*(v92 + 80) & v111) == 0)
      {
        v93 = *(v92 + 72);
        if (v93)
        {
          v94 = v15 / v93;
          if ((v94 & 0x8000000000000000) == 0)
          {
            if (v94)
            {
              v95 = v111;
              (*(v92 + 32))(v91, v111, v78);
              v95;
              goto LABEL_58;
            }

            goto LABEL_106;
          }

LABEL_105:
          LODWORD(v100) = 0;
          v99 = 74;
          LOBYTE(v98) = 2;
          goto LABEL_107;
        }

LABEL_104:
        LODWORD(v100) = 0;
        v99 = 9012;
        LOBYTE(v98) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_103:
      LODWORD(v100) = 0;
      v99 = 1000;
      LOBYTE(v98) = 2;
      goto LABEL_93;
    }

    v104 = v11;
    v69 = v11;
    v70 = v111;
    while (1)
    {
      v71 = *_ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs19RawKeyPathComponentV6HeaderV_Tt0g5(&v116, 1);
      if ((v71 & 0x80000000) != 0)
      {
        HIBYTE(v118) = 0;
      }

      v72 = v116;
      v73 = RawKeyPathComponent.Header.kind.getter(v71);
      if ((v73 - 4) >= 3)
      {
        if ((v73 - 1) >= 2)
        {
          v74 = 28;
          if ((v71 & 0x400000) == 0)
          {
            v74 = 20;
          }

          if ((v71 & 0x80000) == 0)
          {
            goto LABEL_79;
          }

          v89 = 24;
          if ((v71 & 0x400000) == 0)
          {
            v89 = 16;
          }

          v90 = v72 + v89 + 4;
          if ((v90 & 7) != 0)
          {
            goto LABEL_95;
          }

          v74 += ((v71 >> 1) & 8) + *v90 + 16;
          if (v74 < 0)
          {
            goto LABEL_92;
          }

LABEL_80:
          v76 = v74 + v72;
          v75 = v74;
          goto LABEL_81;
        }

        if ((~v71 & 0x7FFFFF) == 0)
        {
          v74 = 4;
LABEL_79:
          if (!v72)
          {
            goto LABEL_108;
          }

          goto LABEL_80;
        }
      }

      v74 = 0;
      v75 = 0;
      v76 = 0;
      if (v72)
      {
        goto LABEL_80;
      }

LABEL_81:
      _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFs4Int8V_Tt0g5Tm(&v116, v75);
      v77 = _ss4_pop4from2as5countSRyxGSWz_xmSits15BitwiseCopyableRzlFypXp_Tt0g5(&v116, 1);
      v78 = *v77;
      LOBYTE(v114) = 0;
      v79 = *(v69 - 8);
      MEMORY[0x1EEE9AC00](v77, v80);
      v82 = &v101 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
      if ((*(v79 + 80) & v111) != 0)
      {
        goto LABEL_103;
      }

      v83 = *(v79 + 72);
      if (!v83)
      {
        goto LABEL_104;
      }

      v84 = v105 / v83;
      if (v84 < 0)
      {
        goto LABEL_105;
      }

      if (!v84)
      {
        goto LABEL_106;
      }

      v85 = (*(v79 + 32))(v82, v70, v69);
      v109 = &v101;
      MEMORY[0x1EEE9AC00](v85, v86);
      v87 = v106;
      *(&v101 - 10) = v104;
      *(&v101 - 9) = v87;
      *(&v101 - 8) = v78;
      *(&v101 - 7) = v69;
      v96 = v71;
      v97 = v72;
      v98 = v76;
      v99 = v82;
      v100 = &v114;
      v15 = v105;
      v88 = v110;
      _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(closure #2 in projectCurrent #1 <A, B><A1><A2>(_:) in projectNew #1 <A, B><A1>(_:) in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)partial apply, (&v101 - 12), v70, v70 + v105, v78);
      v110 = v88;
      if (v114)
      {
        goto LABEL_94;
      }

      (*(v79 + 8))(v82, v69);
      v69 = v78;
      if ((v71 & 0x80000000) != 0)
      {
        goto LABEL_98;
      }
    }
  }

LABEL_5:
  v101 = &v101;
  v16 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, a2);
  MEMORY[0x1EEE9AC00](v16, v17);
  v98 = v11;
  v99 = v106;
  v100 = v18;
  v111 = v19;
  _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(partial apply for closure #1 in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:), &v96, v19, v19 + v15, v11);
  v110 = v9;
  if (v12)
  {
    v104 = v11;
    v20 = v11;
    while (1)
    {
      if ((v10 & 3) == 0)
      {
        v12 = v10;
        goto LABEL_17;
      }

      v21 = -v10 & 3;
      v12 = (v10 + v21);
      if (__OFADD__(v10, v21))
      {
        goto LABEL_61;
      }

      v22 = __OFSUB__(v8 - v10, v21);
      v23 = v8 - v10 - v21;
      if (v22)
      {
        goto LABEL_62;
      }

      if (v23 < 0)
      {
        goto LABEL_92;
      }

      if (v23)
      {
        break;
      }

      if (v12)
      {
        goto LABEL_16;
      }

      v8 = 0;
LABEL_17:
      v22 = __OFSUB__(v8 - v12, 4);
      v8 = v8 - v12 - 4;
      if (v22)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if (v8 < 0)
      {
        goto LABEL_92;
      }

      v11 = *v12;
      v24 = RawKeyPathComponent.Header.kind.getter(*v12);
      if (v24 - 4 < 3)
      {
        goto LABEL_23;
      }

      if (v24 - 1 < 2)
      {
        if ((~v11 & 0x7FFFFF) == 0)
        {
          v26 = 4;
          goto LABEL_24;
        }

LABEL_23:
        v26 = 0;
        goto LABEL_24;
      }

      v26 = 28;
      if ((v11 & 0x400000) == 0)
      {
        v26 = 20;
      }

      if ((v11 & 0x80000) != 0)
      {
        v52 = 6;
        if ((v11 & 0x400000) == 0)
        {
          v52 = 4;
        }

        v53 = &v12[v52 + 2];
        if ((v53 & 7) != 0)
        {
LABEL_95:
          LODWORD(v100) = 0;
          v99 = 449;
          LOBYTE(v98) = 2;
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v26 += ((v11 >> 1) & 8) + *v53 + 16;
        if (v26 < 0)
        {
          goto LABEL_92;
        }
      }

LABEL_24:
      v27 = v8 - v26;
      if (v8 - v26 < 0)
      {
        goto LABEL_92;
      }

      v28 = (v12 + v26 + 4);
      if ((v28 & 7) != 0)
      {
        v29 = -v28 & 7;
        v30 = (v28 + v29);
        if (__OFADD__(v28, v29))
        {
          goto LABEL_63;
        }

        v31 = v27 - v29;
        if (v31 < 0)
        {
          goto LABEL_92;
        }

        if (v31)
        {
          if (!v30)
          {
LABEL_108:
            LODWORD(v100) = 0;
            v99 = 1216;
            LOBYTE(v98) = 2;
LABEL_93:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else if (!v30)
        {
          v32 = 0;
          goto LABEL_34;
        }

        v32 = v30 + v31;
      }

      else
      {
        v32 = v12 + v8 + 4;
        v30 = v28;
      }

LABEL_34:
      v33 = v32 - v30;
      v8 = v33 - 8;
      if (__OFSUB__(v33, 8))
      {
        goto LABEL_60;
      }

      if (v8 < 0)
      {
LABEL_92:
        LODWORD(v100) = 0;
        v99 = 1215;
        LOBYTE(v98) = 2;
        goto LABEL_93;
      }

      v34 = *v30;
      LOBYTE(v114) = 0;
      v35 = *(v20 - 8);
      MEMORY[0x1EEE9AC00](v24, v25);
      v40 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      if ((*(v35 + 80) & v111 & 0xF0) != 0)
      {
        goto LABEL_103;
      }

      v41 = *(v35 + 72);
      if (!v41)
      {
        goto LABEL_104;
      }

      v42 = v15 / v41;
      if (v42 < 0)
      {
        goto LABEL_105;
      }

      if (!v42)
      {
        goto LABEL_106;
      }

      v107 = v38;
      v108 = v37;
      v43 = *(v35 + 32);
      v44 = v111;
      v109 = v36;
      v45 = v43(v40, v111, v20);
      MEMORY[0x1EEE9AC00](v45, v46);
      v47 = v106;
      *(&v101 - 10) = v104;
      *(&v101 - 9) = v47;
      *(&v101 - 8) = v34;
      *(&v101 - 7) = v20;
      v96 = v11;
      v97 = v108;
      v98 = v109;
      v99 = v40;
      v100 = &v114;
      v49 = v44 + v48;
      v50 = v44;
      v51 = v34;
      v9 = v110;
      _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFACq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOq0_Isgyrzr_Swq0_A2FRs_Ri_zRi_0_r1_lIetMgyrzo_Tp5(partial apply for closure #2 in projectCurrent #1 <A, B><A1><A2>(_:) in projectNew #1 <A, B><A1>(_:) in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:), (&v101 - 12), v50, v49, v34);
      if (v114)
      {
LABEL_94:
        LODWORD(v100) = 0;
        v99 = 581;
        LOBYTE(v98) = 2;
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v110 = v9;
      v10 = (v30 + 1);
      v8 += (v30 + 1);
      (*(v35 + 8))(v40, v20);
      v20 = v51;
      v15 = v105;
      if ((v11 & 0x80000000) != 0)
      {
        LOBYTE(v12) = 0;
        goto LABEL_53;
      }
    }

    if (!v12)
    {
      goto LABEL_108;
    }

LABEL_16:
    v8 = v12 + v23;
    goto LABEL_17;
  }

  v51 = v11;
LABEL_53:
  v116 = v10;
  v117 = v8;
  HIBYTE(v118) = v12;
  v113 = v51;
  v54 = __swift_allocate_boxed_opaque_existential_0Tm(&v112);
  v55 = *(v51 - 8);
  if ((*(v55 + 80) & v111 & 0xF0) != 0)
  {
    goto LABEL_103;
  }

  v56 = *(v55 + 72);
  if (!v56)
  {
    goto LABEL_104;
  }

  v57 = v15 / v56;
  if (v57 < 0)
  {
    goto LABEL_105;
  }

  if (!v57)
  {
LABEL_106:
    LODWORD(v100) = 0;
    v99 = 1212;
    LOBYTE(v98) = 2;
LABEL_107:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v55 + 32))(v54, v111, v51);
  outlined init with take of Any(&v112, &v114);
LABEL_58:
  v58 = v115;
  v59 = __swift_project_boxed_opaque_existential_0Tm(&v114, v115);
  v60 = specialized formalMutation #1 <A, B><A1>(_:) in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(v59, &v116, v102, v106, v58);
  *v103 = v60;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v114);
}

uint64_t closure #1 in closure #2 in closure #2 in KeyPath._projectReadOnly(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v10, v11);
  if (a2 <= 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v7 + 32))(a1, v9, a4);
}

uint64_t closure #2 in projectCurrent #1 <A, B><A1><A2>(_:) in projectNew #1 <A, B><A1>(_:) in closure #1 in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a6;
  v14 = *(a8 - 8);
  v53 = a9;
  v15 = MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v48 - v19;
  RawKeyPathComponent.value.getter(v21, v22, v23, &v55);
  v24 = v55;
  v25 = v56 >> 61;
  if ((v56 >> 61) <= 1)
  {
    if (v25)
    {
      a5 = *a5;
      swift_beginAccess(&a5[v55], v54, 0, 0);
    }

    else if ((*(*(v53 - 8) + 64) & 0x8000000000000000) != 0)
    {
      LODWORD(v46) = 0;
      v45 = 1215;
      LOBYTE(v44) = 2;
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return (*(v14 + 16))(a1, &a5[v24], a8);
  }

  else
  {
    v48 = a7;
    v26 = a5;
    v50 = a1;
    v51 = a8;
    v52 = v9;
    v27 = v57;
    v28 = v58;
    v30 = v59;
    v29 = v60;
    if ((v25 - 2) >= 3)
    {
      v37 = v58 | v57;
      v38 = v60 | v61;
      if (v56 != 0xA000000000000000 || v37 | v55 | v59 | v38)
      {
        if (v56 != 0xA000000000000000 || v55 != 1 || v37 | v59 | v38)
        {
          v43 = v51;
          (*(v14 + 16))(v20, v26, v51);
          (*(v14 + 104))(v20, 0, v43);
          return (*(v14 + 32))(v50, v20, v43);
        }

        if ((*(*(v53 - 8) + 88))(v26))
        {
          LODWORD(v46) = 0;
          v45 = 1881;
          LOBYTE(v44) = 2;
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        v39 = v53;
        v40 = (*(*(v53 - 8) + 88))(v26, v53);
        if (v40)
        {
          *v49 = 1;
          v42 = MEMORY[0x1EEE9AC00](v40, v41);
          v44 = v39;
          v46 = v48;
          v47 = v42;
          return _sSpsRi_zrlE17withMemoryRebound2to8capacity_qd_1_qd__m_Siqd_1_Spyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSiSpyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyqd__s5NeverOytIsgyrzr_AFytA2HRsd_0_ytRsd_1_Ri_zRi_d__r_1_lIetMygyrzo_Tp5(1, closure #2 in RawKeyPathComponent._projectReadOnly<A, B, C>(_:to:endingWith:_:pointer:)partial apply, (&v48 - 6), v50, v51, v48);
        }
      }

      return (*(v14 + 16))(v50, v26, v51);
    }

    v31 = v51;
    v32 = ComputedAccessorsPtr.getter<A, B>()(v57, v53, v51);
    if (v29)
    {
      v33 = v28 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = v30 - v28;
    }

    if (v33)
    {
      v35 = v27;
    }

    else
    {
      v35 = v28;
    }

    v32(v26, v35, v34);
    return (*(v14 + 32))(v50, v17, v31);
  }
}

char *specialized formalMutation #1 <A, B><A1>(_:) in closure #1 in ReferenceWritableKeyPath._projectMutableAddress(from:)(uint64_t a1, uint64_t *a2, char **a3, uint64_t a4, uint64_t a5)
{
  v117 = a4;
  v121 = a3;
  v133 = *MEMORY[0x1E69E9840];
  v7 = *(*(a5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v9;
  (*(v9 + 16))(v8);
  if (v7 < 0)
  {
LABEL_85:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = a5;
  v11 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a5;
  v116 = v11;
  do
  {
    v18 = v10;
    v20 = *a2;
    v19 = a2[1];
    if (!*a2)
    {
      v22 = 0;
      goto LABEL_17;
    }

    if ((v20 & 3) == 0)
    {
      v22 = *a2;
      goto LABEL_17;
    }

    v21 = -*a2 & 3;
    v22 = (v20 + v21);
    if (__OFADD__(v20, v21))
    {
      goto LABEL_89;
    }

    v23 = v19 - v20;
    v24 = __OFSUB__(v23, v21);
    v25 = v23 - v21;
    if (v24)
    {
      goto LABEL_90;
    }

    if (v25 < 0)
    {
      goto LABEL_85;
    }

    if (v25)
    {
      if (!v22)
      {
        goto LABEL_85;
      }

LABEL_16:
      v19 = v22 + v25;
      goto LABEL_17;
    }

    if (v22)
    {
      goto LABEL_16;
    }

    v19 = 0;
LABEL_17:
    *a2 = v22;
    a2[1] = v19;
    v26 = v19 - v22;
    v27 = v26 - 4;
    if (__OFSUB__(v26, 4))
    {
      __break(1u);
LABEL_87:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v27 < 0)
    {
      goto LABEL_85;
    }

    v28 = (v22 + 1);
    v29 = v22 + v26;
    *a2 = (v22 + 1);
    a2[1] = v29;
    v30 = *v22;
    if ((v30 & 0x80000000) != 0)
    {
      *(a2 + 17) = 0;
    }

    if ((v30 & 0x7D000000) == 0x1000000)
    {
      v31 = 4 * ((~v30 & 0x7FFFFF) == 0);
    }

    else if ((BYTE3(v30) & 0x7F) == 2)
    {
      v31 = 28;
      if ((v30 & 0x400000) == 0)
      {
        v31 = 20;
      }

      if ((v30 & 0x80000) != 0)
      {
        v32 = 6;
        if ((v30 & 0x400000) == 0)
        {
          v32 = 4;
        }

        v33 = &v22[v32 + 2];
        if ((v33 & 7) != 0)
        {
          goto LABEL_87;
        }

        v31 += ((v30 >> 1) & 8) + *v33 + 16;
        if (v31 < 0)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      v31 = 0;
    }

    *a2 = v28;
    a2[1] = v29;
    v34 = v27 - v31;
    if (v27 - v31 < 0)
    {
      goto LABEL_85;
    }

    v35 = v28 + v31;
    *a2 = v28 + v31;
    a2[1] = v29;
    if (v27 == v31)
    {
      v36 = 1;
      v10 = v117;
      goto LABEL_48;
    }

    if ((v35 & 7) != 0)
    {
      v37 = -v35 & 7;
      v38 = (v35 + v37);
      if (__OFADD__(v35, v37))
      {
        goto LABEL_91;
      }

      v39 = v34 - v37;
      if (v39 < 0)
      {
        goto LABEL_85;
      }

      if (v39)
      {
        if (!v38)
        {
          goto LABEL_85;
        }

LABEL_44:
        v29 = v38 + v39;
        goto LABEL_45;
      }

      if (v38)
      {
        goto LABEL_44;
      }

      v29 = 0;
    }

    else
    {
      v38 = (v28 + v31);
    }

LABEL_45:
    v40 = v29 - v38;
    v24 = __OFSUB__(v40, 8);
    v41 = v40 - 8;
    if (v24)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v41 < 0)
    {
      goto LABEL_85;
    }

    *a2 = (v38 + 1);
    a2[1] = v38 + v41 + 8;
    v10 = *v38;
    v36 = *v38 == 0;
LABEL_48:
    v42 = RawKeyPathComponent.value.getter(v30, v28, v35, &v127);
    v46 = v128 >> 61;
    if ((v128 >> 61) <= 2)
    {
      if (v46)
      {
        v12 = *v11;
        v11 = (*v11 + v127);
        v13 = v121;
        v14 = v10;
        v15 = *v121;
        v16 = type metadata accessor for ClassHolder(0, v14, v44, v45);
        v17 = swift_allocObject(v16, 0x38, 7uLL);
        *(v17 + 2) = v15;
        *(v17 + 3) = v12;
        v10 = v14;
        swift_beginAccess(v11, v17 + 4, 0x21uLL, v107);
        *v13 = v17;
        swift_unknownObjectRetain(v12);
      }

      else
      {
        v11 += v127;
      }
    }

    else
    {
      v122 = v11;
      v47 = v130;
      v49 = v131;
      v48 = v132;
      if (v46 == 3)
      {
        if (v132)
        {
          v78 = v130 == 0;
        }

        else
        {
          v78 = 1;
        }

        if (v78)
        {
          v79 = 0;
        }

        else
        {
          v79 = v131 - v130;
        }

        if (v78)
        {
          v80 = v129;
        }

        else
        {
          v80 = v130;
        }

        v81 = (v129 + 1);
        if (((v129 + 1) & 7) != 0)
        {
          goto LABEL_87;
        }

        v82 = v129;
        v119 = v36;
        v83 = *v121;
        v123 = v10;
        v124 = v18;
        v125 = &type metadata for UnsafeRawPointer;
        v126 = &type metadata for Int;
        swift_getFunctionTypeMetadata(0x2020004uLL, &v123, &parameter_flags, &unk_1EEEAC658);
        v84 = *v81;
        if (!*v81)
        {
          goto LABEL_92;
        }

        if ((v82 & 7) != 0)
        {
          goto LABEL_87;
        }

        v114 = v79;
        v115 = v84;
        v118 = v83;
        FunctionTypeMetadata3 = swift_getFunctionTypeMetadata3(0x20003uLL, v18, &type metadata for UnsafeRawPointer, &type metadata for Int, v10);
        v87 = *v82;
        if (!*v82)
        {
          goto LABEL_92;
        }

        v113 = &v104;
        v112 = *(v10 - 8);
        v88 = MEMORY[0x1EEE9AC00](FunctionTypeMetadata3, v86);
        v111 = &v104;
        v120 = v10;
        v89 = *(v18 - 8);
        MEMORY[0x1EEE9AC00](v88, v90);
        v92 = &v104 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
        v93 = v122;
        (*(v89 + 16))(v92, v122, v18);
        v94 = v114;
        v87(v92, v80, v114);
        (*(v89 + 8))(v92, v18);
        v10 = v120;
        v96 = type metadata accessor for MutatingWritebackBuffer(0, v18, v120, v95);
        v97 = swift_allocObject(v96, *(v96 + 48), *(v96 + 52));
        *(v97 + 2) = v118;
        *(v97 + 3) = v93;
        *(v97 + 4) = v115;
        *(v97 + 5) = v80;
        *(v97 + 6) = v94;
        v11 = &v97[*(*v97 + 136)];
        (*(v112 + 4))(v11, v111, v10);
        *v121 = v97;
        v8 = v116;
        v36 = v119;
      }

      else if (v46 == 4)
      {
        v119 = v36;
        v120 = v10;
        v115 = &v104;
        v50 = *(v18 - 8);
        v51 = v129;
        v52 = *(v50 + 64);
        MEMORY[0x1EEE9AC00](v42, v43);
        v118 = v18;
        v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
        v54 = &v104 - v53;
        v114 = v50;
        v55 = *(v50 + 16);
        v56 = v55(&v104 - v53, v122, v118);
        v122 = &v104;
        if (v48)
        {
          v58 = v47 == 0;
        }

        else
        {
          v58 = 1;
        }

        if (v58)
        {
          v59 = 0;
        }

        else
        {
          v59 = v49 - v47;
        }

        if (v58)
        {
          v60 = v51;
        }

        else
        {
          v60 = v47;
        }

        v113 = v60;
        v112 = *v121;
        MEMORY[0x1EEE9AC00](v56, v57);
        v61 = &v104 - v53;
        v62 = v118;
        v111 = v54;
        v55(v61, v54, v118);
        v63 = v51 + 1;
        if (((v51 + 1) & 7) != 0)
        {
          goto LABEL_87;
        }

        v64 = v51;
        v65 = v59;
        v10 = v120;
        v123 = v120;
        v124 = v62;
        v125 = &type metadata for UnsafeRawPointer;
        v126 = &type metadata for Int;
        swift_getFunctionTypeMetadata(0x20004uLL, &v123, 0, &unk_1EEEAC658);
        if (!*v63)
        {
          goto LABEL_92;
        }

        if ((v64 & 7) != 0)
        {
          goto LABEL_87;
        }

        v66 = *v63;
        v67 = swift_getFunctionTypeMetadata3(0x20003uLL, v62, &type metadata for UnsafeRawPointer, &type metadata for Int, v10);
        if (!*v64)
        {
          goto LABEL_92;
        }

        v110 = &v104;
        v109 = *(v10 - 8);
        MEMORY[0x1EEE9AC00](v67, v68);
        v70 = &v104 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
        v71 = v111;
        v72 = v113;
        v108 = v65;
        v73(v111, v113, v65);
        v74 = v114;
        (*(v114 + 8))(v71, v62);
        v76 = type metadata accessor for NonmutatingWritebackBuffer(0, v62, v10, v75);
        v77 = swift_allocObject(v76, *(v76 + 48), *(v76 + 52));
        *(v77 + 2) = v112;
        (*(v74 + 32))(&v77[*(*v77 + 104)], v61, v62);
        *&v77[*(*v77 + 112)] = v66;
        *&v77[*(*v77 + 120)] = v72;
        *&v77[*(*v77 + 128)] = v108;
        v11 = &v77[*(*v77 + 136)];
        (*(v109 + 32))(v11, v70, v10);
        *v121 = v77;
        v8 = v116;
        v36 = v119;
      }

      else
      {
        v98 = type metadata accessor for Optional(0, v10, v44, v45);
        v99 = *(v98 - 8);
        MEMORY[0x1EEE9AC00](v98, v100);
        v102 = &v104 - v101;
        v11 = v122;
        (*(v99 + 16))(&v104 - v101, v122, v98);
        if ((*(*(v10 - 8) + 48))(v102, 1, v10) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        (*(v99 + 8))(v102, v98);
      }
    }
  }

  while (!v36);
  (*(v106 + 8))(v8, v105);
  return v11;
}