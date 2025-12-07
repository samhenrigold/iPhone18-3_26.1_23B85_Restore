uint64_t sub_100030FBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v261 = sub_1000431E4();
  v4 = *(v261 - 8);
  v5 = __chkstk_darwin(v261);
  v7 = &v237 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v237 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v237 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v237 - v15;
  v17 = __chkstk_darwin(v14);
  v255 = &v237 - v18;
  v19 = __chkstk_darwin(v17);
  v254 = (&v237 - v20);
  v21 = __chkstk_darwin(v19);
  v253 = (&v237 - v22);
  v23 = __chkstk_darwin(v21);
  v252 = &v237 - v24;
  v25 = __chkstk_darwin(v23);
  v251 = &v237 - v26;
  __chkstk_darwin(v25);
  v250 = &v237 - v27;
  v256 = sub_100043004();
  v258 = *(v256 - 8);
  v28 = __chkstk_darwin(v256);
  v30 = &v237 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v249 = &v237 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v237 - v34;
  __chkstk_darwin(v33);
  v260 = &v237 - v36;
  v37 = sub_100043564();
  if (!v37)
  {
    goto LABEL_8;
  }

  v259 = v4;
  v257 = a2;
  v38 = v37;
  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39)
  {
    swift_unknownObjectRelease();
    a2 = v257;
    v4 = v259;
LABEL_8:
    v67 = sub_1000211D4();
    v68 = v261;
    (*(v4 + 16))(v7, v67, v261);
    v69 = a1;
    v70 = sub_1000431C4();
    v71 = sub_1000434A4();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = v4;
      v74 = a2;
      v75 = swift_slowAlloc();
      *v72 = 138543362;
      *(v72 + 4) = v69;
      *v75 = v69;
      v76 = v69;
      _os_log_impl(&_mh_execute_header, v70, v71, "CloudKit record has invalid payload field: %{public}@", v72, 0xCu);
      sub_100029814(v75, &qword_100067060, &qword_100046E00);
      a2 = v74;
      v4 = v73;
    }

    (*(v4 + 8))(v7, v68);
    goto LABEL_11;
  }

  v40 = v39;
  v248 = v38;
  v41 = [v39 fileURL];
  if (!v41)
  {
    v80 = sub_1000211D4();
    v81 = v259;
    v82 = v261;
    (*(v259 + 16))(v10, v80, v261);
    swift_unknownObjectRetain();
    v83 = sub_1000431C4();
    v84 = sub_1000434A4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138543362;
      *(v85 + 4) = v40;
      *v86 = v40;
      swift_unknownObjectRetain();
      _os_log_impl(&_mh_execute_header, v83, v84, "CloudKit asset doesn't have a file URL: %{public}@", v85, 0xCu);
      sub_100029814(v86, &qword_100067060, &qword_100046E00);
      v81 = v259;

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    a2 = v257;
    (*(v81 + 8))(v10, v82);
    v77 = 1;
    goto LABEL_12;
  }

  v42 = v41;
  sub_100042FA4();

  v43 = v258;
  v44 = v260;
  v45 = v256;
  (*(v258 + 32))(v260, v35, v256);
  v46 = v270;
  v47 = sub_100043024();
  v49 = v259;
  if (v46)
  {

    v50 = sub_1000211D4();
    v51 = v261;
    (*(v49 + 16))(v13, v50, v261);
    (*(v43 + 16))(v30, v44, v45);
    v52 = v45;
    v53 = v43;
    v54 = sub_1000431C4();
    v55 = sub_1000434A4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v270 = 0;
      v57 = v56;
      v255 = swift_slowAlloc();
      v262 = v255;
      *v57 = 136446210;
      v254 = v54;
      v58 = v52;
      v59 = sub_100042FC4();
      v61 = v60;
      v62 = *(v53 + 8);
      v63 = v30;
      v64 = v58;
      v62(v63, v58);
      v65 = sub_100015730(v59, v61, &v262);

      *(v57 + 4) = v65;
      v66 = v254;
      _os_log_impl(&_mh_execute_header, v254, v55, "Unable to read CloudKit asset file URL: %{public}s", v57, 0xCu);
      sub_100013B7C(v255);

      swift_unknownObjectRelease();

      (*(v259 + 8))(v13, v261);
      v62(v260, v64);
    }

    else
    {
      swift_unknownObjectRelease();

      v102 = *(v53 + 8);
      v102(v30, v52);
      (*(v49 + 8))(v13, v51);
      v102(v260, v52);
    }

LABEL_37:
    v77 = 1;
    a2 = v257;
    goto LABEL_12;
  }

  v246 = v47;
  v247 = v48;
  v87 = sub_100043564();
  a2 = v257;
  v270 = 0;
  if (!v87 || (v268 = v87, sub_100013A34(&qword_1000670C8, &qword_100048628), (swift_dynamicCast() & 1) == 0))
  {
    v103 = sub_1000211D4();
    v104 = v261;
    (*(v49 + 16))(v16, v103, v261);
    v105 = a1;
    v106 = sub_1000431C4();
    v107 = sub_1000434A4();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v108 = 138543362;
      *(v108 + 4) = v105;
      *v109 = v105;
      v110 = v105;
      _os_log_impl(&_mh_execute_header, v106, v107, "CloudKit record has invalid salt: %{public}@", v108, 0xCu);
      sub_100029814(v109, &qword_100067060, &qword_100046E00);
      a2 = v257;
    }

    sub_10001316C(v246, v247);
    swift_unknownObjectRelease();
    (*(v49 + 8))(v16, v104);
    goto LABEL_58;
  }

  v88 = v263;
  v245 = v262;
  v89 = sub_100043564();
  if (!v89 || (v262 = v89, (swift_dynamicCast() & 1) == 0))
  {
    v111 = sub_1000211D4();
    v112 = v261;
    (*(v49 + 16))(v255, v111, v261);
    v113 = a1;
    v114 = sub_1000431C4();
    v115 = sub_1000434A4();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = v88;
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v117 = 138412290;
      *(v117 + 4) = v113;
      *v118 = v113;
      v119 = v113;
      _os_log_impl(&_mh_execute_header, v114, v115, "CloudKit record has invalid size: %@, privacy: .public", v117, 0xCu);
      sub_100029814(v118, &qword_100067060, &qword_100046E00);
      a2 = v257;

      v88 = v116;
    }

    sub_10001316C(v245, v88);
    sub_10001316C(v246, v247);
    swift_unknownObjectRelease();
    (*(v49 + 8))(v255, v112);
    goto LABEL_58;
  }

  v90 = v268;
  v91 = sub_100043564();
  if (!v91 || (v268 = v91, (swift_dynamicCast() & 1) == 0))
  {
    v120 = sub_1000211D4();
    v121 = v261;
    (*(v49 + 16))(v254, v120, v261);
    v122 = a1;
    v123 = sub_1000431C4();
    v124 = sub_1000434A4();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = v88;
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v126 = 138543362;
      *(v126 + 4) = v122;
      *v127 = v122;
      v128 = v122;
      _os_log_impl(&_mh_execute_header, v123, v124, "CloudKit record has invalid details zone: %{public}@", v126, 0xCu);
      sub_100029814(v127, &qword_100067060, &qword_100046E00);
      a2 = v257;

      v88 = v125;
    }

    sub_10001316C(v245, v88);
    sub_10001316C(v246, v247);
    swift_unknownObjectRelease();
    (*(v49 + 8))(v254, v121);
    goto LABEL_58;
  }

  v254 = v262;
  v255 = v90;
  v92 = v263;
  v93 = sub_100043564();
  if (!v93 || (v268 = v93, (swift_dynamicCast() & 1) == 0))
  {

    v129 = sub_1000211D4();
    v130 = v261;
    (*(v49 + 16))(v253, v129, v261);
    v131 = a1;
    v132 = sub_1000431C4();
    v133 = sub_1000434A4();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = v88;
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *v135 = 138543362;
      *(v135 + 4) = v131;
      *v136 = v131;
      v137 = v131;
      _os_log_impl(&_mh_execute_header, v132, v133, "CloudKit record has invalid update zone: %{public}@", v135, 0xCu);
      sub_100029814(v136, &qword_100067060, &qword_100046E00);
      a2 = v257;

      v88 = v134;
    }

    sub_10001316C(v245, v88);
    sub_10001316C(v246, v247);
    swift_unknownObjectRelease();
    (*(v49 + 8))(v253, v130);
    goto LABEL_58;
  }

  v94 = v263;
  v253 = v262;
  v95 = sub_100043564();
  if (!v95 || (v268 = v95, (swift_dynamicCast() & 1) == 0))
  {

    v138 = sub_1000211D4();
    v139 = v261;
    (*(v49 + 16))(v252, v138, v261);
    v140 = a1;
    v141 = sub_1000431C4();
    v142 = sub_1000434A4();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = v88;
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v144 = 138543362;
      *(v144 + 4) = v140;
      *v145 = v140;
      v146 = v140;
      _os_log_impl(&_mh_execute_header, v141, v142, "CloudKit record has invalid id: %{public}@", v144, 0xCu);
      sub_100029814(v145, &qword_100067060, &qword_100046E00);
      a2 = v257;

      v88 = v143;
    }

    sub_10001316C(v245, v88);
    sub_10001316C(v246, v247);
    swift_unknownObjectRelease();
    (*(v49 + 8))(v252, v139);
    goto LABEL_58;
  }

  v244 = v262;
  v252 = v263;
  v96 = sub_100043564();
  if (!v96 || (v268 = v96, (swift_dynamicCast() & 1) == 0))
  {

    v147 = v261;
    v148 = sub_1000211D4();
    (*(v49 + 16))(v251, v148, v147);
    v149 = a1;
    v150 = sub_1000431C4();
    v151 = sub_1000434A4();

    if (os_log_type_enabled(v150, v151))
    {
      v152 = v88;
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *v153 = 138543362;
      *(v153 + 4) = v149;
      *v154 = v149;
      v155 = v149;
      _os_log_impl(&_mh_execute_header, v150, v151, "CloudKit record has invalid algorithm: %{public}@", v153, 0xCu);
      sub_100029814(v154, &qword_100067060, &qword_100046E00);
      a2 = v257;

      v88 = v152;
    }

    sub_10001316C(v245, v88);
    sub_10001316C(v246, v247);
    swift_unknownObjectRelease();
    (*(v49 + 8))(v251, v147);
LABEL_58:
    (*(v258 + 8))(v260, v45);
LABEL_11:
    v77 = 1;
LABEL_12:
    v78 = type metadata accessor for BloomFilterRecord(0);
    return (*(*(v78 - 8) + 56))(a2, v77, 1, v78);
  }

  v242 = v94;
  v243 = v92;
  v251 = v88;
  v240 = v262;
  v241 = v263;
  v97 = sub_100043564();
  if (!v97 || (v262 = v97, (swift_dynamicCast() & 1) == 0))
  {

    v156 = sub_1000211D4();
    (*(v259 + 16))(v250, v156, v261);
    v157 = a1;
    v158 = sub_1000431C4();
    v159 = sub_1000434A4();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v160 = 138543362;
      *(v160 + 4) = v157;
      *v161 = v157;
      v162 = v157;
      _os_log_impl(&_mh_execute_header, v158, v159, "CloudKit record has invalid bitsPerEntry count: %{public}@", v160, 0xCu);
      sub_100029814(v161, &qword_100067060, &qword_100046E00);
    }

    sub_10001316C(v245, v251);
    sub_10001316C(v246, v247);
    swift_unknownObjectRelease();
    (*(v259 + 8))(v250, v261);
    (*(v258 + 8))(v260, v256);
    goto LABEL_37;
  }

  v261 = v268;
  v98 = sub_100043564();
  if (v98)
  {
    v268 = v98;
    v99 = swift_dynamicCast();
    v100 = v262;
    if (!v99)
    {
      v100 = 0;
    }

    v238 = v100;
    if (v99)
    {
      v101 = v263;
    }

    else
    {
      v101 = 0;
    }

    v250 = v101;
  }

  else
  {
    v238 = 0;
    v250 = 0;
  }

  v163 = sub_100043564();
  v259 = 0xF000000000000000;
  if (v163)
  {
    v268 = v163;
    v164 = swift_dynamicCast();
    v165 = v262;
    if (!v164)
    {
      v165 = 0;
    }

    v239 = v165;
    v166 = 0xF000000000000000;
    if (v164)
    {
      v166 = v263;
    }

    v259 = v166;
  }

  else
  {
    v239 = 0;
  }

  v167 = v246;
  v168 = v247;
  sub_100013104(v246, v247);
  v169 = sub_100017418(v167, v168);
  v171 = v170;
  sub_10001316C(v167, v168);
  v172 = v245;
  v173 = v251;
  sub_100013104(v245, v251);
  v174 = sub_100017418(v172, v173);
  v176 = v175;
  sub_10001316C(v172, v173);
  v268 = v169;
  v269 = v171;
  v264 = &type metadata for Data;
  v265 = &protocol witness table for Data;
  v262 = v174;
  v263 = v176;
  v177 = sub_100013B38(&v262, &type metadata for Data);
  v178 = *v177;
  v179 = v177[1];
  sub_100013104(v169, v171);
  sub_100013104(v174, v176);
  sub_100018620(v178, v179, &v268);
  sub_10001316C(v174, v176);
  sub_10001316C(v169, v171);
  result = sub_100013B7C(&v262);
  if (HIDWORD(v255))
  {
    __break(1u);
    goto LABEL_75;
  }

  v181 = v268;
  v180 = v269;
  LODWORD(v262) = v255;
  v270 = sub_100035BFC();
  v182 = sub_1000170EC(&v262, &type metadata for UInt32);
  v184 = v183;
  v266 = v181;
  v267 = v180;
  v264 = &type metadata for Data;
  v265 = &protocol witness table for Data;
  v262 = v182;
  v263 = v183;
  v185 = sub_100013B38(&v262, &type metadata for Data);
  v187 = *v185;
  v186 = v185[1];
  sub_100013104(v181, v180);
  sub_100013104(v182, v184);
  sub_100018620(v187, v186, &v266);
  sub_10001316C(v182, v184);
  sub_10001316C(v181, v180);
  sub_100013B7C(&v262);
  v188 = v266;
  v189 = v267;
  v190 = v242;

  v191 = sub_10001721C(v253, v190);
  v193 = v192;

  v268 = v188;
  v269 = v189;
  v264 = &type metadata for Data;
  v265 = &protocol witness table for Data;
  v262 = v191;
  v263 = v193;
  v194 = sub_100013B38(&v262, &type metadata for Data);
  v195 = *v194;
  v196 = v194[1];
  sub_100013104(v188, v189);
  sub_100013104(v191, v193);
  sub_100018620(v195, v196, &v268);
  sub_10001316C(v191, v193);
  sub_10001316C(v188, v189);
  sub_100013B7C(&v262);
  v197 = v268;
  v198 = v269;
  v199 = v243;

  v200 = sub_10001721C(v254, v199);
  v202 = v201;

  v266 = v197;
  v267 = v198;
  v264 = &type metadata for Data;
  v265 = &protocol witness table for Data;
  v262 = v200;
  v263 = v202;
  v203 = sub_100013B38(&v262, &type metadata for Data);
  v204 = *v203;
  v205 = v203[1];
  sub_100013104(v197, v198);
  sub_100013104(v200, v202);
  sub_100018620(v204, v205, &v266);
  sub_10001316C(v200, v202);
  sub_10001316C(v197, v198);
  sub_100013B7C(&v262);
  v206 = v266;
  v207 = v267;
  v208 = sub_10001721C(v238, v250);
  v210 = v209;
  v268 = v206;
  v269 = v207;
  v264 = &type metadata for Data;
  v265 = &protocol witness table for Data;
  v262 = v208;
  v263 = v209;
  v211 = sub_100013B38(&v262, &type metadata for Data);
  v212 = *v211;
  v213 = v211[1];
  sub_100013104(v206, v207);
  sub_100013104(v208, v210);
  sub_100018620(v212, v213, &v268);
  sub_10001316C(v208, v210);
  sub_10001316C(v206, v207);
  sub_100013B7C(&v262);
  v214 = v268;
  v215 = v269;
  v216 = v241;

  v217 = sub_10001721C(v240, v216);
  v219 = v218;

  v266 = v214;
  v267 = v215;
  v264 = &type metadata for Data;
  v265 = &protocol witness table for Data;
  v262 = v217;
  v263 = v219;
  v220 = sub_100013B38(&v262, &type metadata for Data);
  v221 = *v220;
  v222 = v220[1];
  sub_100013104(v214, v215);
  sub_100013104(v217, v219);
  sub_100018620(v221, v222, &v266);
  sub_10001316C(v217, v219);
  sub_10001316C(v214, v215);
  result = sub_100013B7C(&v262);
  if ((v261 & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (!HIDWORD(v261))
  {
    v223 = v266;
    v224 = v267;
    LODWORD(v262) = v261;
    v225 = sub_1000170EC(&v262, &type metadata for UInt32);
    v227 = v226;
    v268 = v223;
    v269 = v224;
    v264 = &type metadata for Data;
    v265 = &protocol witness table for Data;
    v262 = v225;
    v263 = v226;
    v228 = sub_100013B38(&v262, &type metadata for Data);
    v229 = *v228;
    v230 = v228[1];
    sub_100013104(v223, v224);
    sub_100013104(v225, v227);
    sub_100018620(v229, v230, &v268);
    sub_10001316C(v225, v227);
    sub_10001316C(v223, v224);
    sub_100013B7C(&v262);
    v231 = v268;
    v232 = v269;
    sub_10002F8B4(v268, v269, v239, v259, a1);
    v233 = v258;
    v234 = v249;
    v235 = v260;
    v236 = v256;
    (*(v258 + 16))(v249, v260, v256);
    a2 = v257;
    sub_10003EDB0(v234, v245, v251, v255, v254, v243, v253, v242, v257, v244, v252, v240, v241, v261, v238, v250);
    sub_100013158(v239, v259);
    sub_10001316C(v231, v232);
    sub_10001316C(v246, v247);
    swift_unknownObjectRelease();
    (*(v233 + 8))(v235, v236);
    v77 = 0;
    goto LABEL_12;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_100032B90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_1000431E4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v76 - v9;
  __chkstk_darwin(v8);
  v78 = &v76 - v11;
  v81 = sub_100043004();
  v79 = *(v81 - 8);
  v12 = __chkstk_darwin(v81);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v76 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v76 - v19;
  __chkstk_darwin(v18);
  v80 = &v76 - v21;
  v22 = sub_100043564();
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  v25 = v23;
  if (!v24)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v48 = sub_1000211D4();
    v49 = v3;
    (*(v4 + 16))(v7, v48, v3);
    v50 = a1;
    v51 = sub_1000431C4();
    v52 = sub_1000434A4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138543362;
      *(v53 + 4) = v50;
      *v54 = v50;
      v55 = v50;
      _os_log_impl(&_mh_execute_header, v51, v52, "CloudKit record has invalid payload field: %{public}@", v53, 0xCu);
      sub_100029814(v54, &qword_100067060, &qword_100046E00);
    }

    (*(v4 + 8))(v7, v49);
    goto LABEL_11;
  }

  v26 = v24;
  v27 = [v24 fileURL];
  if (v27)
  {
    v28 = v27;
    sub_100042FA4();

    v30 = v79;
    v29 = v80;
    v31 = v20;
    v32 = v81;
    (*(v79 + 32))(v80, v31, v81);
    v33 = v83;
    v34 = sub_100043024();
    if (v33)
    {
      v83 = 0;

      v36 = sub_1000211D4();
      v37 = v3;
      (*(v4 + 16))(v78, v36, v3);
      (*(v30 + 16))(v14, v29, v32);
      v38 = sub_1000431C4();
      v39 = sub_1000434A4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v84[0] = v41;
        *v40 = 136446210;
        v42 = sub_100042FC4();
        v77 = v37;
        v44 = v43;
        v79 = *(v30 + 8);
        v45 = v14;
        v46 = v81;
        (v79)(v45, v81);
        v47 = sub_100015730(v42, v44, v84);

        *(v40 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v38, v39, "Unable to read CloudKit asset file URL: %{public}s", v40, 0xCu);
        sub_100013B7C(v41);

        swift_unknownObjectRelease();

        (*(v4 + 8))(v78, v77);
        (v79)(v80, v46);
      }

      else
      {
        swift_unknownObjectRelease();

        v71 = *(v30 + 8);
        v71(v14, v32);
        (*(v4 + 8))(v78, v37);
        v71(v29, v32);
      }

LABEL_11:
      v56 = 1;
      v57 = v82;
      goto LABEL_12;
    }

    v65 = v34;
    v66 = v35;
    v67 = sub_100043564();
    v68 = 0xF000000000000000;
    if (v67)
    {
      v84[3] = v67;
      sub_100013A34(&qword_1000670C8, &qword_100048628);
      v69 = swift_dynamicCast();
      if (v69)
      {
        v70 = v84[0];
      }

      else
      {
        v70 = 0;
      }

      if (v69)
      {
        v68 = v84[1];
      }
    }

    else
    {
      v70 = 0;
    }

    sub_100013104(v65, v66);
    v72 = sub_100017418(v65, v66);
    v74 = v73;
    sub_10001316C(v65, v66);
    v83 = v70;
    sub_10002F8B4(v72, v74, v70, v68, a1);
    v75 = v79;
    (*(v79 + 16))(v17, v80, v81);
    v57 = v82;
    sub_10003EEF0(v17, v82);
    sub_100013158(v83, v68);
    sub_10001316C(v72, v74);
    sub_10001316C(v65, v66);
    swift_unknownObjectRelease();
    (*(v75 + 8))(v80, v81);
    v56 = 0;
  }

  else
  {
    v60 = sub_1000211D4();
    (*(v4 + 16))(v10, v60, v3);
    swift_unknownObjectRetain();
    v61 = sub_1000431C4();
    v62 = sub_1000434A4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138543362;
      *(v63 + 4) = v26;
      *v64 = v26;
      swift_unknownObjectRetain();
      _os_log_impl(&_mh_execute_header, v61, v62, "CloudKit asset doesn't have a file URL: %{public}@", v63, 0xCu);
      sub_100029814(v64, &qword_100067060, &qword_100046E00);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v10, v3);
    v56 = 1;
    v57 = v82;
  }

LABEL_12:
  v58 = type metadata accessor for DocumentCheckerRecord(0);
  return (*(*(v58 - 8) + 56))(v57, v56, 1, v58);
}

uint64_t sub_10003342C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000431E4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v112 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v112 - v14;
  __chkstk_darwin(v13);
  v17 = &v112 - v16;
  v18 = sub_100043564();
  if (!v18 || (*&v123 = v2, v124 = v18, sub_100013A34(&qword_1000670C8, &qword_100048628), (swift_dynamicCast() & 1) == 0))
  {
    v30 = sub_1000211D4();
    (*(v6 + 16))(v9, v30, v5);
    v31 = a1;
    v32 = sub_1000431C4();
    v33 = sub_1000434A4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *&v123 = v6;
      v35 = v34;
      v36 = swift_slowAlloc();
      *v35 = 138543362;
      *(v35 + 4) = v31;
      *v36 = v31;
      v37 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "CloudKit record has invalid update number: %{public}@", v35, 0xCu);
      sub_100029814(v36, &qword_100067060, &qword_100046E00);

      v6 = v123;
    }

    result = (*(v6 + 8))(v9, v5);
    goto LABEL_19;
  }

  v19 = v130;
  v20 = sub_100043564();
  if (!v20 || (v130 = v20, (swift_dynamicCast() & 1) == 0))
  {
    v43 = sub_1000211D4();
    (*(v6 + 16))(v12, v43, v5);
    v44 = a1;
    v45 = sub_1000431C4();
    v46 = sub_1000434A4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138543362;
      *(v47 + 4) = v44;
      *v48 = v44;
      v49 = v44;
      _os_log_impl(&_mh_execute_header, v45, v46, "CloudKit record has invalid data: %{public}@", v47, 0xCu);
      sub_100029814(v48, &qword_100067060, &qword_100046E00);
    }

    result = (*(v6 + 8))(v12, v5);
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    goto LABEL_23;
  }

  v21 = v124;
  *&v121 = v125;
  v22 = sub_100043564();
  if (!v22 || (v124 = v22, (swift_dynamicCast() & 1) == 0))
  {
    v50 = sub_1000211D4();
    (*(v6 + 16))(v15, v50, v5);
    v51 = a1;
    v52 = sub_1000431C4();
    v53 = sub_1000434A4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v122 = v5;
      v56 = v21;
      v57 = v55;
      *v54 = 138543362;
      *(v54 + 4) = v51;
      *v55 = v51;
      v58 = v51;
      _os_log_impl(&_mh_execute_header, v52, v53, "CloudKit record has invalid entryCount: %{public}@", v54, 0xCu);
      sub_100029814(v57, &qword_100067060, &qword_100046E00);

      v59 = v56;
      v5 = v122;
      sub_10001316C(v59, v121);
    }

    else
    {
      sub_10001316C(v21, v121);
    }

    result = (*(v6 + 8))(v15, v5);
    goto LABEL_19;
  }

  v23 = v130;
  v24 = sub_100043564();
  if (!v24 || (v130 = v24, (swift_dynamicCast() & 1) == 0))
  {
    v60 = sub_1000211D4();
    (*(v6 + 16))(v17, v60, v5);
    v61 = a1;
    v62 = sub_1000431C4();
    v63 = sub_1000434A4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v120 = v21;
      v66 = v65;
      *v64 = 138543362;
      *(v64 + 4) = v61;
      *v65 = v61;
      v67 = v61;
      _os_log_impl(&_mh_execute_header, v62, v63, "CloudKit record has invalid uuid: %{public}@", v64, 0xCu);
      sub_100029814(v66, &qword_100067060, &qword_100046E00);

      sub_10001316C(v120, v121);
    }

    else
    {
      sub_10001316C(v21, v121);
    }

    result = (*(v6 + 8))(v17, v5);
LABEL_19:
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    goto LABEL_23;
  }

  v25 = v125;
  v116 = v124;
  v26 = sub_100043564();
  if (v26)
  {
    v130 = v26;
    v27 = swift_dynamicCast();
    v28 = v124;
    if (!v27)
    {
      v28 = 0;
    }

    v115 = v28;
    if (v27)
    {
      v29 = v125;
    }

    else
    {
      v29 = 0;
    }

    v133 = v29;
  }

  else
  {
    v115 = 0;
    v133 = 0;
  }

  v68 = v121;
  v69 = sub_100043564();
  v70 = 0xF000000000000000;
  v118 = v19;
  v117 = v23;
  if (v69)
  {
    v130 = v69;
    v71 = swift_dynamicCast();
    v72 = v124;
    if (!v71)
    {
      v72 = 0;
    }

    v113 = v72;
    if (v71)
    {
      v70 = v125;
    }

    v114 = v70;
  }

  else
  {
    v114 = 0xF000000000000000;
    v113 = 0;
  }

  sub_100013104(v21, v68);
  v73 = sub_100017418(v21, v68);
  v75 = v74;
  result = sub_10001316C(v21, v68);
  if ((v118 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v119 = v25;
  *&v120 = v21;
  if (HIDWORD(v118))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  LODWORD(v124) = v118;
  v112 = sub_100035BFC();
  v76 = sub_1000170EC(&v124, &type metadata for UInt32);
  v78 = v77;
  v128 = v73;
  v129 = v75;
  v126 = &type metadata for Data;
  v127 = &protocol witness table for Data;
  v124 = v76;
  v125 = v77;
  v79 = sub_100013B38(&v124, &type metadata for Data);
  v81 = *v79;
  v80 = v79[1];
  sub_100013104(v73, v75);
  sub_100013104(v76, v78);
  v82 = v123;
  sub_100018620(v81, v80, &v128);
  sub_10001316C(v76, v78);
  sub_10001316C(v73, v75);
  result = sub_100013B7C(&v124);
  if ((v117 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!HIDWORD(v117))
  {
    v83 = v128;
    v84 = v129;
    LODWORD(v124) = v117;
    v85 = sub_1000170EC(&v124, &type metadata for UInt32);
    v87 = v86;
    v130 = v83;
    v131 = v84;
    v126 = &type metadata for Data;
    v127 = &protocol witness table for Data;
    v124 = v85;
    v125 = v86;
    v88 = sub_100013B38(&v124, &type metadata for Data);
    v89 = *v88;
    v90 = v88[1];
    sub_100013104(v83, v84);
    sub_100013104(v85, v87);
    sub_100018620(v89, v90, &v130);
    sub_10001316C(v85, v87);
    sub_10001316C(v83, v84);
    sub_100013B7C(&v124);
    v91 = v130;
    v92 = v131;
    v93 = v119;

    v94 = sub_10001721C(v116, v93);
    v96 = v95;

    v128 = v91;
    v129 = v92;
    v126 = &type metadata for Data;
    v127 = &protocol witness table for Data;
    v124 = v94;
    v125 = v96;
    v97 = sub_100013B38(&v124, &type metadata for Data);
    v98 = *v97;
    v99 = v97[1];
    sub_100013104(v91, v92);
    sub_100013104(v94, v96);
    sub_100018620(v98, v99, &v128);
    sub_10001316C(v94, v96);
    sub_10001316C(v91, v92);
    sub_100013B7C(&v124);
    v100 = v128;
    v101 = v129;
    v102 = sub_10001721C(v115, v133);
    v104 = v103;
    v130 = v100;
    v131 = v101;
    v126 = &type metadata for Data;
    v127 = &protocol witness table for Data;
    v124 = v102;
    v125 = v103;
    v105 = sub_100013B38(&v124, &type metadata for Data);
    v106 = *v105;
    v107 = v105[1];
    sub_100013104(v100, v101);
    sub_100013104(v102, v104);
    sub_100018620(v106, v107, &v130);
    sub_10001316C(v102, v104);
    sub_10001316C(v100, v101);
    sub_100013B7C(&v124);
    v108 = v130;
    v109 = v131;
    v110 = v113;
    v111 = v114;
    sub_10002F8B4(v130, v131, v113, v114, a1);
    if (v82)
    {
      sub_10001316C(v108, v109);
      sub_100013158(v110, v111);

      return sub_10001316C(v120, v121);
    }

    sub_10003EF5C(v118, v120, v121, v117, v116, v119, v115, v133, v132);
    v123 = v132[0];
    v122 = v132[1];
    v121 = v132[2];
    v120 = v132[3];
    sub_10001316C(v108, v109);
    result = sub_100013158(v110, v111);
    v42 = v120;
    v41 = v121;
    v40 = v122;
    v39 = v123;
LABEL_23:
    *a2 = v39;
    a2[1] = v40;
    a2[2] = v41;
    a2[3] = v42;
    return result;
  }

LABEL_50:
  __break(1u);
  return result;
}

void sub_100034098(uint64_t a1, unint64_t a2, int a3)
{
  v92 = sub_1000431E4();
  v7 = *(v92 - 8);
  v8 = __chkstk_darwin(v92);
  v10 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v85 = v80 - v12;
  v13 = __chkstk_darwin(v11);
  v87 = v80 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = v80 - v16;
  v18 = (*v3 + 104);
  v90 = *v18;
  v91 = v3;
  v89 = v18;
  (v90)(v97, v15);
  v19 = v97[0];
  v102 = v97[4];
  sub_100029070(&v102, &v95, &qword_100066EE0, &qword_100048500);

  v101 = v97[3];
  sub_100029814(&v101, &qword_100066EE0, &qword_100048500);
  sub_100029814(&v102, &qword_100066EE0, &qword_100048500);
  v20 = v102;
  if (!v102)
  {
    v38 = sub_1000211D4();
    (*(v7 + 16))(v10, v38, v92);
    v39 = sub_1000431C4();
    v40 = sub_1000434A4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Attempt to fetch warning details with no zone", v41, 2u);
    }

    (*(v7 + 8))(v10, v92);
    sub_100035A20();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();
    return;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v86 = v21 + 16;
  v88 = v21;
  *(v21 + 24) = -1;
  v95 = 0x73616864632F3176;
  v96 = 0xEA00000000002F68;
  LODWORD(v94) = a3;
  v103._countAndFlagsBits = sub_1000437E4();
  sub_100043394(v103);

  v104._countAndFlagsBits = 47;
  v104._object = 0xE100000000000000;
  sub_100043394(v104);
  v105._countAndFlagsBits = sub_1000137B0(a1, a2);
  sub_100043394(v105);

  v22 = v95;
  v23 = v96;
  v24 = sub_100036008(0, &qword_100067138, CKRecordID_ptr);

  v25.super.isa = [v20 zoneID];
  v106._countAndFlagsBits = v22;
  v106._object = v23;
  v26.super.isa = sub_100043464(v106, v25).super.isa;
  v27 = sub_1000211D4();
  v28 = *(v7 + 16);
  v81 = v27;
  v83 = v7 + 16;
  v82 = v28;
  (v28)(v17);

  v29 = sub_1000431C4();
  v30 = sub_100043494();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v80[1] = v24;
    v32 = v31;
    v33 = swift_slowAlloc();
    v95 = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_100015730(v22, v23, &v95);
    _os_log_impl(&_mh_execute_header, v29, v30, "CloudKit fetch for warning: %{public}s", v32, 0xCu);
    sub_100013B7C(v33);
    v34 = v92;

    v35 = *(v7 + 8);
    v36 = v17;
    v37 = v34;
  }

  else
  {

    v35 = *(v7 + 8);
    v36 = v17;
    v37 = v92;
  }

  v84 = v35;
  v35(v36, v37);
  sub_100013A34(&unk_100066EF0, &qword_100048508);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1000484D0;
  *(v43 + 32) = v26;
  v44 = objc_allocWithZone(CKFetchRecordsOperation);
  v45 = v26.super.isa;
  isa = sub_1000433F4().super.isa;

  v47 = [v44 initWithRecordIDs:isa];

  v48 = v88;

  sub_1000434E4();
  v49 = v47;
  v50 = [v49 configuration];
  if (!v50)
  {
    __break(1u);
    goto LABEL_28;
  }

  v51 = v50;
  [v50 setQualityOfService:25];

  v52 = [v49 configuration];
  if (!v52)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v53 = v52;
  [v52 setTimeoutIntervalForRequest:10.0];

  v54 = [v49 configuration];
  if (!v54)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v55 = v54;
  [v54 setTimeoutIntervalForResource:60.0];

  v56 = [v49 configuration];
  if (!v56)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v57 = v56;
  [v56 setPreferAnonymousRequests:1];

  v58 = [v49 configuration];
  if (!v58)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v59 = sub_1000432E4();
  [v58 set_sourceApplicationSecondaryIdentifier:v59];

  v90(v98);
  v60 = v98[1];

  v100 = v98[3];
  sub_100029814(&v100, &qword_100066EE0, &qword_100048500);
  v99 = v98[4];
  sub_100029814(&v99, &qword_100066EE0, &qword_100048500);
  [v60 addOperation:v49];

  [v49 waitUntilFinished];
  swift_beginAccess();
  v61 = *(v48 + 24);
  if (v61 == 255)
  {
    v65 = v85;
    v82(v85, v81, v92);
    v66 = sub_1000431C4();
    v67 = sub_1000434A4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "CloudKit results block never called.", v68, 2u);
    }

    v84(v65, v92);
    sub_100035A20();
    swift_allocError();
    *v69 = 0;
    swift_willThrow();

    sub_100029814(&v102, &qword_100066EE0, &qword_100048500);
  }

  else
  {
    v91 = v45;
    v62 = *(v48 + 16);
    if (v61)
    {
      v94 = *(v48 + 16);
      sub_1000360BC(v62, v61);
      sub_1000360BC(v62, v61);
      sub_100035F40(v62, 1);
      sub_100013A34(&qword_100066690, &qword_100048510);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        v63 = v93;
        v94 = v93;
        sub_100036134(&qword_1000670E0, type metadata accessor for CKError, &unk_1000487E0);
        sub_100042EF4();

        v64 = v87;
        if (v93 == 11)
        {
          sub_1000360D4(v62, v61);
          sub_1000360D4(v62, v61);

          sub_100029814(&v102, &qword_100066EE0, &qword_100048500);
          return;
        }
      }

      else
      {
        v64 = v87;
      }

      v82(v64, v81, v92);
      sub_100035F40(v62, 1);
      v71 = sub_1000431C4();
      v72 = sub_1000434A4();
      sub_1000360D4(v62, v61);
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v90 = v7;
        v74 = v73;
        v75 = swift_slowAlloc();
        v93 = v62;
        v94 = v75;
        *v74 = 136446210;
        sub_100035F40(v62, 1);
        v76 = sub_100043364();
        v78 = sub_100015730(v76, v77, &v94);

        *(v74 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v71, v72, "CloudKit unexpected error during fetch: %{public}s", v74, 0xCu);
        sub_100013B7C(v75);

        v79 = v87;
      }

      else
      {

        v79 = v64;
      }

      v84(v79, v92);
      swift_willThrow();
      sub_1000360D4(v62, v61);

      sub_100029814(&v102, &qword_100066EE0, &qword_100048500);
    }

    else
    {
      v70 = v62;

      sub_100029814(&v102, &qword_100066EE0, &qword_100048500);
    }
  }
}

uint64_t sub_100034C90()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_10001316C(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034CD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034D10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034D48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  sub_100029814(v0 + 56, &unk_100066EC0, &unk_1000484E0);

  return _swift_deallocClassInstance(v0, 97, 7);
}

uint64_t sub_100034F00(uint64_t a1)
{
  v2 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError, &unk_1000487E0);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100034F6C(uint64_t a1)
{
  v2 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError, &unk_1000487E0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100034FD8(void *a1, uint64_t a2)
{
  v4 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError, &unk_1000487E0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10003508C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError, &unk_1000487E0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100035108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000438A4();
  sub_1000432C4();
  return sub_1000438C4();
}

uint64_t sub_100035168(uint64_t a1)
{
  v2 = sub_100036134(&qword_100067158, type metadata accessor for CKError, &unk_10004879C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000351D4(uint64_t a1)
{
  v2 = sub_100036134(&qword_100067158, type metadata accessor for CKError, &unk_10004879C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100035240(uint64_t a1)
{
  v2 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError, &unk_1000487E0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000352AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100036134(&qword_1000670E0, type metadata accessor for CKError, &unk_1000487E0);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

Swift::Int sub_100035330(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013A34(&qword_100067108, &unk_100048640);
    v2 = sub_1000436E4();
    v19 = v2;
    sub_100043674();
    v3 = sub_100043694();
    if (v3)
    {
      v4 = v3;
      sub_100036008(0, &qword_100067100, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100036008(0, &unk_100067110, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1000355C0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_100043574(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100043694();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_10003557C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100043574(*(v2 + 40));

  return sub_100035C50(a1, v4);
}

uint64_t sub_1000355C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100013A34(&qword_100067108, &unk_100048640);
  result = sub_1000436D4();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_100043574(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_100035828(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10003557C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000355C0(v13, a3 & 1);
      v8 = sub_10003557C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100036008(0, &qword_100067100, CKRecordZoneID_ptr);
        sub_100043814();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100035D24();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_1000359A0()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100035A20()
{
  result = qword_100066F00;
  if (!qword_100066F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066F00);
  }

  return result;
}

uint64_t sub_100035A74()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100035AD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100035B74()
{
  result = qword_100066F08;
  if (!qword_100066F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066F08);
  }

  return result;
}

unint64_t sub_100035BFC()
{
  result = qword_1000670D0;
  if (!qword_1000670D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000670D0);
  }

  return result;
}

unint64_t sub_100035C50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100036008(0, &qword_100067100, CKRecordZoneID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100043584();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_100035D24()
{
  v1 = v0;
  sub_100013A34(&qword_100067108, &unk_100048640);
  v2 = *v0;
  v3 = sub_1000436C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100035E84(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_100013158(a2, a3);
  }
}

unint64_t sub_100035EEC()
{
  result = qword_1000670E8;
  if (!qword_1000670E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000670E8);
  }

  return result;
}

id sub_100035F40(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100035F4C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100035F58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100013A34(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100035FC0()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_100035F4C(*(v0 + 16), v1 & 1);
  }

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100036008(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_100036050(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v3 + 16) = a2;
  v7 = *(v3 + 24);
  a3 &= 1u;
  *(v3 + 24) = a3;
  sub_1000360D4(v6, v7);
  return sub_100035F40(a2, a3);
}

id sub_1000360BC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_100035F40(result, a2 & 1);
  }

  return result;
}

void sub_1000360D4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_100035F4C(a1, a2 & 1);
  }
}

uint64_t sub_100036134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100036344()
{
  result = qword_100067180;
  if (!qword_100067180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067180);
  }

  return result;
}

__CFString *sub_100036434()
{
  v0 = sub_100042F54();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100013A34(&qword_100066838, &qword_1000473E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_100043004();
  sub_1000168B0(v7, qword_10006AA50);
  sub_1000161D0(v7, qword_10006AA50);
  result = sub_100016914();
  if (result)
  {
    v9 = result;
    sub_100043314();

    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
    return sub_100042FE4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100036600@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_baseURL;
  swift_beginAccess();
  v4 = sub_100043004();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100036688(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_baseURL;
  swift_beginAccess();
  v4 = sub_100043004();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_100036778()
{
  v1 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_db;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1000367CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_db;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1000368CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_filter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100036A1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_100029EB0(v2 + v4, a2);
}

uint64_t sub_100036A90(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  sub_100013B7C((v3 + v6));
  a3(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t sub_100036BE8(void *a1, void *a2)
{
  v23 = a1;
  v25 = a2;
  v3 = sub_100042F54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100043004();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006A3A0 != -1)
  {
    swift_once();
  }

  sub_1000161D0(v7, qword_10006AA50);
  v24[0] = 0xD000000000000011;
  v24[1] = 0x800000010004CAF0;
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_10003CF7C();
  sub_100042FF4();
  (*(v4 + 8))(v6, v3);
  v11 = [objc_opt_self() defaultManager];
  sub_100042FC4();
  v12 = sub_1000432E4();

  v13 = [v11 fileExistsAtPath:v12];

  if (!v13)
  {
    (*(v8 + 8))(v10, v7);
    v17 = 0;
LABEL_7:
    v18 = v25;
    sub_100029EB0(v25, v24);
    v14 = (*(v22[1] + 272))(v23, v17, v24);
    sub_100013B7C(v18);
    return v14;
  }

  sub_100042E74();
  swift_allocObject();
  v14 = sub_100042E64();
  v15 = sub_100043024();
  if (!v2)
  {
    v19 = v15;
    v20 = v16;
    type metadata accessor for BloomFilter();
    sub_10003D274(&qword_100067208, &unk_1000480C8);
    sub_100042E54();
    (*(v8 + 8))(v10, v7);
    sub_10001316C(v19, v20);

    v17 = v24[0];
    goto LABEL_7;
  }

  sub_100013B7C(v25);
  (*(v8 + 8))(v10, v7);
  return v14;
}

uint64_t sub_100036FC8(void *a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_10003CFD0(a1, a2, a3);

  return v6;
}

uint64_t sub_100037030@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v98 = a4;
  v10 = sub_100013A34(&qword_100066E80, &qword_1000483E0);
  __chkstk_darwin(v10 - 8);
  v94 = &v88 - v11;
  v12 = type metadata accessor for LaunchWarningDetails(0);
  v99 = *(v12 - 8);
  v100 = v12;
  __chkstk_darwin(v12);
  v93 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000431E4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v92 = &v88 - v20;
  v21 = __chkstk_darwin(v19);
  v91 = &v88 - v22;
  __chkstk_darwin(v21);
  v95 = &v88 - v23;
  v96 = a3;
  __src = bswap32(a3);
  v102 = sub_1000131C0(&__src, &v102);
  v103 = v24 & 0xFFFFFFFFFFFFFFLL;
  v97 = a1;
  v25 = a2;
  v26 = sub_1000430D4();
  v28 = v102;
  v27 = v103;
  v29 = (*(*v6 + 176))(v26);
  if (v29)
  {
    v90 = v15;
    v30 = v29;
    v31 = (*(*v29 + 168))(v28, v27);
    if (v5)
    {

      return sub_10001316C(v28, v27);
    }

    v88 = v30;
    v89 = 0;
    if (sub_100021B98(v31 & 1, 1))
    {
      v94 = v27;
      v38 = sub_1000212A8();
      v39 = v90;
      v40 = v95;
      v41 = v14;
      (*(v90 + 16))(v95, v38, v14);
      v42 = v97;
      v43 = v25;
      v44 = v40;
      sub_100013104(v97, v43);
      v45 = sub_1000431C4();
      v46 = sub_1000434B4();
      sub_10001316C(v42, v43);
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v93 = v41;
        v48 = v47;
        v49 = swift_slowAlloc();
        v102 = v49;
        *v48 = 67109378;
        *(v48 + 4) = v96;
        *(v48 + 8) = 2082;
        v50 = sub_1000137B0(v42, v43);
        v52 = v39;
        v53 = sub_100015730(v50, v51, &v102);

        *(v48 + 10) = v53;
        _os_log_impl(&_mh_execute_header, v45, v46, "Item not present in bloom filter: %u, %{public}s", v48, 0x12u);
        sub_100013B7C(v49);

        sub_10001316C(v28, v94);

        (*(v52 + 8))(v44, v93);
      }

      else
      {

        sub_10001316C(v28, v94);

        (*(v39 + 8))(v44, v41);
      }

      v37 = 1;
    }

    else
    {
      (*(*v6 + 200))(&v102);
      v55 = v104;
      v54 = v105;
      sub_100013B38(&v102, v104);
      v56 = v94;
      v57 = v97;
      v58 = v89;
      (*(v54 + 8))(v97, v25, v96, v55, v54);
      if (v58)
      {

        sub_10001316C(v28, v27);
        return sub_100013B7C(&v102);
      }

      v60 = (*(v99 + 48))(v56, 1, v100);
      v61 = (v90 + 16);
      if (v60 != 1)
      {
        sub_10003D19C(v56, v93, type metadata accessor for LaunchWarningDetails);
        sub_100013B7C(&v102);
        sub_1000212A8();
        v76 = v91;
        v77 = v57;
        (*v61)();
        sub_100013104(v57, v25);
        v78 = sub_1000431C4();
        v79 = sub_1000434B4();
        sub_10001316C(v77, v25);
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v89 = 0;
          v81 = v80;
          v82 = v78;
          v83 = swift_slowAlloc();
          v102 = v83;
          *v81 = 67109378;
          *(v81 + 4) = v96;
          *(v81 + 8) = 2082;
          v84 = sub_1000137B0(v77, v25);
          v86 = sub_100015730(v84, v85, &v102);

          *(v81 + 10) = v86;
          _os_log_impl(&_mh_execute_header, v82, v79, "Launch warning found: %u, %{public}s", v81, 0x12u);
          sub_100013B7C(v83);

          sub_10001316C(v28, v27);

          (*(v90 + 8))(v91, v14);
        }

        else
        {

          sub_10001316C(v28, v27);

          (*(v90 + 8))(v76, v14);
        }

        v87 = v98;
        sub_10003D19C(v93, v98, type metadata accessor for LaunchWarningDetails);
        v59 = v87;
        v37 = 0;
        return (*(v99 + 56))(v59, v37, 1, v100);
      }

      sub_100029814(v56, &qword_100066E80, &qword_1000483E0);
      sub_100013B7C(&v102);
      v62 = sub_1000212A8();
      v63 = v92;
      (*v61)(v92, v62, v14);
      v64 = v57;
      sub_100013104(v57, v25);
      v65 = sub_1000431C4();
      v66 = sub_1000434B4();
      sub_10001316C(v64, v25);
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v93 = v14;
        v68 = v65;
        v69 = v25;
        v70 = v67;
        v71 = swift_slowAlloc();
        v102 = v71;
        *v70 = 67109378;
        *(v70 + 4) = v96;
        *(v70 + 8) = 2082;
        v72 = sub_1000137B0(v64, v69);
        v74 = v27;
        v75 = sub_100015730(v72, v73, &v102);

        *(v70 + 10) = v75;
        _os_log_impl(&_mh_execute_header, v68, v66, "No launch warning present: %u, %{public}s", v70, 0x12u);
        sub_100013B7C(v71);

        sub_10001316C(v28, v74);

        (*(v90 + 8))(v92, v93);
      }

      else
      {

        sub_10001316C(v28, v27);

        (*(v90 + 8))(v63, v14);
      }

      v37 = 1;
    }
  }

  else
  {
    v94 = v27;
    v33 = sub_1000212A8();
    (*(v15 + 16))(v18, v33, v14);
    v34 = sub_1000431C4();
    v35 = sub_1000434A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "No bloom filter configured.", v36, 2u);
    }

    sub_10001316C(v28, v94);

    (*(v15 + 8))(v18, v14);
    v37 = 1;
  }

  v59 = v98;
  return (*(v99 + 56))(v59, v37, 1, v100);
}

uint64_t sub_100037A20()
{
  v1 = v0;
  v2 = sub_100013A34(&qword_100066ED0, &unk_1000484F0);
  __chkstk_darwin(v2 - 8);
  v322 = &v286 - v3;
  v321 = type metadata accessor for DocumentCheckerRecord(0);
  v320 = *(v321 - 8);
  __chkstk_darwin(v321);
  v315 = &v286 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_1000431B4();
  v327 = *(v316 - 8);
  __chkstk_darwin(v316);
  v309 = &v286 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100013A34(&qword_100067210, &unk_100048910);
  v7 = __chkstk_darwin(v6 - 8);
  v313 = &v286 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v312 = &v286 - v10;
  v11 = __chkstk_darwin(v9);
  v311 = &v286 - v12;
  __chkstk_darwin(v11);
  v329 = &v286 - v13;
  v326 = sub_100042F54();
  v324 = *(v326 - 8);
  __chkstk_darwin(v326);
  v325 = &v286 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = sub_100043004();
  v335 = *(v342 - 1);
  v15 = __chkstk_darwin(v342);
  v323 = &v286 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v302 = &v286 - v18;
  v19 = __chkstk_darwin(v17);
  v306 = &v286 - v20;
  v21 = __chkstk_darwin(v19);
  v328 = &v286 - v22;
  __chkstk_darwin(v21);
  v330 = &v286 - v23;
  v343 = sub_1000431E4();
  v340 = *(v343 - 8);
  v24 = __chkstk_darwin(v343);
  v314 = &v286 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v305 = &v286 - v27;
  v28 = __chkstk_darwin(v26);
  v310 = &v286 - v29;
  v30 = __chkstk_darwin(v28);
  v307 = &v286 - v31;
  v32 = __chkstk_darwin(v30);
  v317 = &v286 - v33;
  __chkstk_darwin(v32);
  v319 = &v286 - v34;
  v35 = sub_100013A34(&qword_100066ED8, &unk_100048D00);
  __chkstk_darwin(v35 - 8);
  v37 = &v286 - v36;
  v337 = type metadata accessor for BloomFilterRecord(0);
  v331 = *(v337 - 1);
  v38 = __chkstk_darwin(v337);
  v304 = &v286 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v318 = (&v286 - v41);
  __chkstk_darwin(v40);
  v336 = &v286 - v42;
  v332 = type metadata accessor for BaseZoneSyncResult(0);
  v43 = __chkstk_darwin(v332);
  v45 = &v286 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v43);
  v48 = &v286 - v47;
  __chkstk_darwin(v46);
  v50 = &v286 - v49;
  v51 = swift_allocObject();
  v344 = v51;
  *(v51 + 16) = 0;
  v303 = v51 + 16;
  v52 = swift_allocObject();
  v345 = v52;
  *(v52 + 16) = 0;
  v308 = (v52 + 16);
  v53 = *(*v0 + 152);
  v338 = *v0 + 152;
  v339 = v53;
  v54 = v53();
  v55 = sub_10001AFF8();
  v57 = v56;

  v58 = *(*v1 + 200);
  v59 = *v1 + 200;
  v346 = v1;
  v334 = v58;
  v333 = v59;
  v58(&v349);
  v61 = v351;
  v60 = v352;
  sub_100013B38(&v349, v351);
  v62 = v341;
  (*(v60 + 16))(v55, v57, v61, v60);
  if (v62)
  {
    sub_100013158(v55, v57);
    sub_100013B7C(&v349);
    v348 = v62;
    swift_errorRetain();
    sub_100013A34(&qword_100066690, &qword_100048510);
    if (!swift_dynamicCast())
    {
    }

    v64 = v346;
    v65 = (v339)(v63);
    sub_10001B038();

    v334(&v349);
    v66 = v351;
    v67 = v352;
    sub_100013B38(&v349, v351);
    (*(v67 + 16))(0, 0xF000000000000000, v66, v67);
    v68 = 0;
    v301 = v62;
    v70 = v50;
    sub_10003D19C(v45, v50, type metadata accessor for BaseZoneSyncResult);
    sub_100013B7C(&v349);
  }

  else
  {
    sub_100013158(v55, v57);
    sub_10003D19C(v48, v50, type metadata accessor for BaseZoneSyncResult);
    sub_100013B7C(&v349);
    v301 = 0;
    v68 = 0;
    v70 = v50;
    v64 = v346;
  }

  sub_100029070(v70, v37, &qword_100066ED8, &unk_100048D00);
  LODWORD(v341) = (*(v331 + 48))(v37, 1, v337);
  v71 = v342;
  v72 = v343;
  v73 = v340;
  if (v341 == 1)
  {
    sub_100029814(v37, &qword_100066ED8, &unk_100048D00);
  }

  else
  {
    v298 = 0;
    v331 = v70;
    v74 = v336;
    sub_10003D19C(v37, v336, type metadata accessor for BloomFilterRecord);
    v75 = sub_1000211D4();
    v76 = *(v73 + 16);
    v77 = v319;
    v300 = v73 + 16;
    v299 = v76;
    v76(v319, v75, v72);
    v78 = v318;
    sub_10003D830(v74, v318, type metadata accessor for BloomFilterRecord);
    v79 = sub_1000431C4();
    v80 = sub_1000434B4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v349 = v82;
      *v81 = 136446210;
      v83 = v337;
      v84 = (v78 + v337[9]);
      v85 = *v84;
      v86 = v84[1];

      sub_10003D898(v78, type metadata accessor for BloomFilterRecord);
      v87 = sub_100015730(v85, v86, &v349);
      v88 = v340;

      *(v81 + 4) = v87;
      v64 = v346;
      _os_log_impl(&_mh_execute_header, v79, v80, "Setting up new base filter: %{public}s", v81, 0xCu);
      sub_100013B7C(v82);

      v72 = v343;
      v74 = v336;

      v319 = *(v88 + 8);
      v89 = (v319)(v77, v72);
      v90 = v329;
    }

    else
    {

      sub_10003D898(v78, type metadata accessor for BloomFilterRecord);
      v319 = *(v73 + 8);
      v89 = (v319)(v77, v72);
      v90 = v329;
      v83 = v337;
    }

    v121 = v339;
    v122 = (v339)(v89);
    sub_10001B250();

    v123 = v121();
    v124 = (v74 + v83[7]);
    v125 = v124[1];
    v297 = *v124;
    v296 = v125;
    sub_10001B354(v297, v125);

    v126 = v121();
    v127 = (v74 + v83[8]);
    v128 = v127[1];
    v295 = *v127;
    v294 = v128;
    sub_10001B0BC(v295, v128);

    v129 = (*(*v64 + 176))();
    if (v129)
    {
      v130 = v129;
      v131 = sub_1000212A8();
      v132 = v317;
      v299(v317, v131, v72);

      v133 = sub_1000431C4();
      v134 = sub_100043494();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v318 = swift_slowAlloc();
        v349 = v318;
        *v135 = 136446210;
        v136 = v335;
        v137 = v330;
        v138 = v342;
        (*(v335 + 16))(v330, *(v130 + 40) + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url, v342);
        v139 = sub_100042FC4();
        v141 = v140;
        (*(v136 + 8))(v137, v138);
        v142 = sub_100015730(v139, v141, &v349);

        *(v135 + 4) = v142;
        _os_log_impl(&_mh_execute_header, v133, v134, "Removing old bloom filter: %{public}s", v135, 0xCu);
        sub_100013B7C(v318);

        (v319)(v317, v343);
      }

      else
      {

        (v319)(v132, v72);
        v138 = v342;
        v136 = v335;
        v137 = v330;
      }

      v143 = [objc_opt_self() defaultManager];
      (*(v136 + 16))(v137, *(v130 + 40) + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url, v138);
      sub_100042F84(v144);
      v146 = v145;
      (*(v136 + 8))(v137, v138);
      v349 = 0;
      v147 = [v143 removeItemAtURL:v146 error:&v349];

      v64 = v346;
      if (!v147)
      {
        v174 = v349;
        sub_100042F44();

        swift_willThrow();

        v175 = v331;
LABEL_57:
        sub_10003D898(v175, type metadata accessor for BaseZoneSyncResult);
        v222 = type metadata accessor for BloomFilterRecord;
        v223 = v336;
        goto LABEL_65;
      }

      v148 = v349;

      v90 = v329;
      v83 = v337;
    }

    v149 = (*v64 + 128);
    v150 = v330;
    v293 = *v149;
    v292 = v149;
    v293();
    v349 = 0x6C69666D6F6F6C62;
    v350 = 0xEF6E69622E726574;
    v151 = v324;
    v152 = *(v324 + 104);
    v153 = v325;
    v291 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v154 = v326;
    v290 = v152;
    v152(v325);
    v289 = sub_10003CF7C();
    sub_100042FF4();
    v288 = *(v151 + 8);
    v288(v153, v154);
    v155 = *(v335 + 8);
    v318 = (v335 + 8);
    v317 = v155;
    (v155)(v150, v342);
    v156 = v327;
    v157 = v316;
    (*(v327 + 56))(v90, 1, 1, v316);
    v158 = (v336 + v83[12]);
    v159 = v158[1];
    if (v159)
    {
      v160 = *v158;

      v161 = v311;
      v287 = v160;
      sub_10001C014(v160, v159, v311);
      sub_100029814(v90, &qword_100067210, &unk_100048910);
      sub_10003D30C(v161, v90);
      v156 = v327;
      v162 = v312;
      sub_100029070(v90, v312, &qword_100067210, &unk_100048910);
      if ((*(v156 + 48))(v162, 1, v157) == 1)
      {
        sub_100029814(v162, &qword_100067210, &unk_100048910);
        v163 = sub_1000212A8();
        v164 = v307;
        v165 = v343;
        v299(v307, v163, v343);

        v166 = sub_1000431C4();
        v167 = sub_1000434A4();

        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          v349 = v169;
          *v168 = 136446210;
          v170 = v287;
          *(v168 + 4) = sub_100015730(v287, v159, &v349);
          _os_log_impl(&_mh_execute_header, v166, v167, "Update asset had invalid compression type: %{public}s", v168, 0xCu);
          sub_100013B7C(v169);

          v90 = v329;

          (v319)(v164, v165);
          v171 = v331;
          v172 = v328;
          v173 = v317;
        }

        else
        {

          (v319)(v164, v165);
          v171 = v331;
          v172 = v328;
          v173 = v317;
          v170 = v287;
        }

        sub_10003D2B8();
        swift_allocError();
        *v224 = v170;
        *(v224 + 8) = v159;
        *(v224 + 16) = 1;
        swift_willThrow();
        sub_100029814(v90, &qword_100067210, &unk_100048910);
        v173(v172, v342);
LABEL_56:
        v175 = v171;
        goto LABEL_57;
      }

      sub_100029814(v162, &qword_100067210, &unk_100048910);
    }

    v176 = v313;
    sub_100029070(v90, v313, &qword_100067210, &unk_100048910);
    if ((*(v156 + 48))(v176, 1, v157) == 1)
    {
      sub_100029814(v176, &qword_100067210, &unk_100048910);
      v177 = [objc_opt_self() defaultManager];
      v178 = v336;
      sub_100042F84(v179);
      v181 = v180;
      v182 = v328;
      sub_100042F84(&v353);
      v184 = v183;
      v349 = 0;
      v185 = [v177 copyItemAtURL:v181 toURL:v183 error:&v349];

      if (!v185)
      {
        v221 = v349;
        sub_100042F44();

        swift_willThrow();
        sub_100029814(v329, &qword_100067210, &unk_100048910);
        (v317)(v182, v342);
        sub_10003D898(v331, type metadata accessor for BaseZoneSyncResult);
        v222 = type metadata accessor for BloomFilterRecord;
        v223 = v178;
LABEL_65:
        sub_10003D898(v223, v222);
      }

      v186 = v349;
      v187 = v331;
      v188 = v178;
    }

    else
    {
      v189 = v309;
      (*(v156 + 32))(v309, v176, v157);
      v188 = v336;
      v190 = v298;
      sub_10001C1AC(v336, v328, v189);
      v298 = v190;
      if (v190)
      {
        v191 = sub_1000212A8();
        v192 = v305;
        v193 = v343;
        v299(v305, v191, v343);
        v194 = v304;
        sub_10003D830(v188, v304, type metadata accessor for BloomFilterRecord);
        v195 = sub_1000431C4();
        v196 = sub_1000434A4();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v349 = v198;
          *v197 = 136446210;
          v199 = (v194 + v83[9]);
          v200 = v194;
          v201 = *v199;
          v202 = v199[1];

          sub_10003D898(v200, type metadata accessor for BloomFilterRecord);
          v203 = sub_100015730(v201, v202, &v349);
          v189 = v309;

          *(v197 + 4) = v203;
          _os_log_impl(&_mh_execute_header, v195, v196, "Base asset had invalid payload: %{public}s", v197, 0xCu);
          sub_100013B7C(v198);
          v90 = v329;
        }

        else
        {

          sub_10003D898(v194, type metadata accessor for BloomFilterRecord);
        }

        (v319)(v192, v193);
        v171 = v331;
        v243 = v328;
        sub_10003D2B8();
        swift_allocError();
        *v244 = 0;
        *(v244 + 8) = 0;
        *(v244 + 16) = 2;
        swift_willThrow();

        (*(v327 + 8))(v189, v316);
        sub_100029814(v90, &qword_100067210, &unk_100048910);
        (v317)(v243, v342);
        goto LABEL_56;
      }

      (*(v156 + 8))(v189, v157);
      v187 = v331;
      v182 = v328;
    }

    type metadata accessor for BloomFilterDiskStorage(0);
    v225 = v306;
    v226 = v342;
    (*(v335 + 16))(v306, v182, v342);
    v227 = v337;
    v228 = v298;
    v229 = sub_10001F8EC(v225, *(v188 + v337[6]));
    v327 = v228;
    if (v228)
    {
      sub_100029814(v329, &qword_100067210, &unk_100048910);
      (v317)(v182, v226);
      sub_10003D898(v187, type metadata accessor for BaseZoneSyncResult);
      sub_10003D898(v188, type metadata accessor for BloomFilterRecord);
    }

    v230 = v229;
    v319 = type metadata accessor for BloomFilter();
    v231 = (v188 + v227[5]);
    v232 = *v231;
    v233 = v231[1];
    v234 = v227[9];
    v235 = (v188 + v227[10]);
    v236 = v235[1];
    v316 = *v235;
    v237 = *(v188 + v227[11]);
    v238 = v188 + v234;
    v239 = *(v188 + v234);
    v240 = *(v238 + 8);

    sub_100013104(v232, v233);

    v241 = v327;
    v242 = sub_100021BA8(v230, v232, v233, v316, v236, v237, v239, v240);
    if (v241)
    {

      sub_100029814(v329, &qword_100067210, &unk_100048910);
      (v317)(v328, v342);
      sub_10003D898(v331, type metadata accessor for BaseZoneSyncResult);
      sub_10003D898(v336, type metadata accessor for BloomFilterRecord);
    }

    v265 = v242;
    v337 = v230;
    v266 = v330;
    v293();
    v349 = 0xD000000000000011;
    v350 = 0x800000010004CAF0;
    v267 = v325;
    v268 = v326;
    v290(v325, v291, v326);
    sub_100042FF4();
    v288(v267, v268);
    (v317)(v266, v342);
    sub_100042EA4();
    swift_allocObject();
    sub_100042E94();
    v349 = v265;
    sub_10003D274(&qword_100067218, &unk_1000480F0);
    v269 = sub_100042E84();
    v271 = v270;
    sub_1000430C4();
    v272 = v336;
    v273 = v346;
    v274 = *(*v346 + 184);
    v298 = 0;

    v327 = v265;
    v276 = v274(v275);
    v277 = v339;
    v278 = (v339)(v276);
    sub_10001B354(v297, v296);

    v279 = v277();
    v280 = v294;
    sub_10001B0BC(v295, v294);

    v281 = v277();
    sub_10001B250();

    v334(&v349);
    v282 = v272;
    v284 = v351;
    v283 = v352;
    sub_100013B38(&v349, v351);
    (*(v283 + 32))(v295, v280, v297, v296, v284, v283);
    sub_10001316C(v269, v271);

    v64 = v273;
    v71 = v342;

    v285 = v317;
    (v317)(v302, v71);
    sub_100029814(v329, &qword_100067210, &unk_100048910);
    v285(v328, v71);
    sub_10003D898(v282, type metadata accessor for BloomFilterRecord);
    sub_100013B7C(&v349);
    v70 = v331;
    v68 = v298;
  }

  v91 = v70 + *(v332 + 24);
  v92 = *(v91 + 8);
  if (v92 >> 60 != 15)
  {
    v93 = *v91;
    v94 = sub_100013104(*v91, *(v91 + 8));
    v95 = (v339)(v94);
    sub_10001B018(v93, v92);

    sub_100013158(v93, v92);
  }

  v96 = v322;
  sub_100029070(v70 + *(v332 + 20), v322, &qword_100066ED0, &unk_1000484F0);
  v97 = (*(v320 + 48))(v96, 1, v321);
  v98 = v323;
  if (v97 == 1)
  {
    v99 = sub_100029814(v96, &qword_100066ED0, &unk_1000484F0);
    v100 = 0;
LABEL_38:
    v117 = v341;
    goto LABEL_39;
  }

  v331 = v70;
  v101 = v96;
  v102 = v315;
  v103 = sub_10003D19C(v101, v315, type metadata accessor for DocumentCheckerRecord);
  v104 = v330;
  (*(*v64 + 128))(v103);
  v349 = 0xD00000000000001FLL;
  v350 = 0x800000010004CAD0;
  v105 = v324;
  v106 = v325;
  v107 = v326;
  (*(v324 + 104))(v325, enum case for URL.DirectoryHint.inferFromPath(_:), v326);
  sub_10003CF7C();
  sub_100042FF4();
  v108 = v106;
  v109 = v71;
  (*(v105 + 8))(v108, v107);
  v110 = v335 + 8;
  v111 = *(v335 + 8);
  v111(v104, v71);
  sub_100016920();
  if (!v68)
  {
    v111(v98, v71);
    v99 = sub_10003D898(v102, type metadata accessor for DocumentCheckerRecord);
    v100 = 256;
    v64 = v346;
    v70 = v331;
    goto LABEL_38;
  }

  v335 = v110;
  v112 = sub_1000212A8();
  v113 = v340;
  (*(v340 + 16))(v314, v112, v343);
  swift_errorRetain();
  v114 = sub_1000431C4();
  v115 = sub_1000434A4();

  v116 = os_log_type_enabled(v114, v115);
  v117 = v341;
  if (v116)
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v118 = 138543362;
    swift_errorRetain();
    v120 = _swift_stdlib_bridgeErrorToNSError();
    *(v118 + 4) = v120;
    *v119 = v120;
    _os_log_impl(&_mh_execute_header, v114, v115, "Failed to install document checker: %{public}@", v118, 0xCu);
    sub_100029814(v119, &qword_100067060, &qword_100046E00);
    v117 = v341;

    v98 = v323;
  }

  (*(v113 + 8))(v314, v343);
  v111(v98, v109);
  v99 = sub_10003D898(v315, type metadata accessor for DocumentCheckerRecord);
  v100 = 0;
  v68 = 0;
  v64 = v346;
  v70 = v331;
LABEL_39:
  v204 = (*(*v64 + 176))(v99);
  if (v204)
  {
    v205 = v204;
    LODWORD(v342) = v100;
    v206 = swift_allocObject();
    v207 = v344;
    v206[2] = v345;
    v206[3] = v64;
    v206[4] = v205;
    v206[5] = v207;

    v209 = (v339)(v208);
    v210 = sub_10001B0D8();
    v212 = v211;

    v334(&v349);
    v213 = v351;
    v214 = v352;
    sub_100013B38(&v349, v351);
    (*(v214 + 24))(sub_10003D254, v206, v210, v212, v213, v214);
    if (v68)
    {
      sub_100013158(v210, v212);
      sub_100013B7C(&v349);
      v348 = v68;
      swift_errorRetain();
      sub_100013A34(&qword_100066690, &qword_100048510);
      if (!swift_dynamicCast())
      {
        sub_10003D898(v70, type metadata accessor for BaseZoneSyncResult);
      }

      v218 = (v339)(v217);
      sub_10001B250();

      v334(&v349);
      v219 = v351;
      v220 = v352;
      sub_100013B38(&v349, v351);
      (*(v220 + 24))(sub_10003D254, v206, 0, 0xF000000000000000, v219, v220);
      v246 = v245;
      v337 = v247;
      sub_100013B7C(&v349);
    }

    else
    {
      v246 = v216;
      v337 = v215;
      sub_100013158(v210, v212);
      sub_100013B7C(&v349);
    }

    v248 = v308;
    swift_beginAccess();
    v249 = *v248;
    v250 = v343;
    v251 = v310;
    if (*v248)
    {
      v346 = v246;
      v252 = v249;
      swift_errorRetain();
      v253 = sub_1000212A8();
      v254 = v340;
      (*(v340 + 16))(v251, v253, v250);
      swift_errorRetain();
      v255 = sub_1000431C4();
      v256 = sub_1000434A4();
      v327 = v252;

      if (os_log_type_enabled(v255, v256))
      {
        v257 = swift_slowAlloc();
        v342 = swift_slowAlloc();
        v348 = v342;
        *v257 = 136446210;
        v347 = v327;
        swift_errorRetain();
        sub_100013A34(&qword_100066690, &qword_100048510);
        v258 = sub_100043364();
        v260 = v70;
        v261 = sub_100015730(v258, v259, &v348);

        *(v257 + 4) = v261;
        v70 = v260;
        _os_log_impl(&_mh_execute_header, v255, v256, "Update entry sync error: %{public}s", v257, 0xCu);
        sub_100013B7C(v342);

        (*(v254 + 8))(v310, v343);
      }

      else
      {

        (*(v254 + 8))(v251, v250);
      }

      swift_willThrow();

      sub_100013158(v337, v346);

      v222 = type metadata accessor for BaseZoneSyncResult;
      v223 = v70;
      goto LABEL_65;
    }

    if (v246 >> 60 == 15)
    {
      sub_10003D898(v70, type metadata accessor for BaseZoneSyncResult);
    }

    else
    {
      v262 = v246;
      v263 = v339();
      v264 = v337;
      sub_10001B194(v337, v262);

      sub_100013158(v264, v262);

      sub_10003D898(v70, type metadata accessor for BaseZoneSyncResult);
    }

    swift_beginAccess();

    v117 = v341;
    v100 = v342;
  }

  else
  {
    sub_10003D898(v70, type metadata accessor for BaseZoneSyncResult);
  }

  return v100 | (v117 != 1);
}

uint64_t sub_10003A4B4(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v121 = a5;
  v122 = a4;
  v126 = a1;
  v127 = a3;
  v6 = sub_1000431B4();
  v7 = *(v6 - 8);
  v124 = v6;
  v125 = v7;
  __chkstk_darwin(v6);
  v123 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100013A34(&qword_100067210, &unk_100048910);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v109 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v109 - v17;
  __chkstk_darwin(v16);
  v20 = &v109 - v19;
  v21 = sub_1000431E4();
  v128 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v109 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v109 - v29;
  __chkstk_darwin(v28);
  v129 = &v109 - v31;
  result = swift_beginAccess();
  if (*(a2 + 16))
  {
    return result;
  }

  v117 = v18;
  v114 = v15;
  v115 = v12;
  v112 = v27;
  v116 = v30;
  v111 = v24;
  v119 = v20;
  v113 = a2;
  v33 = sub_1000211D4();
  v34 = v128;
  v118 = *(v128 + 16);
  v118(v129, v33, v21);
  v35 = v126;
  sub_10003D8F8(v126, v131);
  v36 = sub_1000431C4();
  v37 = sub_1000434B4();
  v38 = os_log_type_enabled(v36, v37);
  v120 = v21;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v131[0] = v40;
    *v39 = 134218242;
    *(v39 + 4) = *v35;
    sub_10003D954(v35);
    *(v39 + 12) = 2082;
    *(v39 + 14) = sub_100015730(v35[4], v35[5], v131);
    _os_log_impl(&_mh_execute_header, v36, v37, "Merging in bloom filter update: %lld for filter %{public}s", v39, 0x16u);
    sub_100013B7C(v40);

    v41 = *(v34 + 8);
    v42 = v129;
    v43 = v120;
  }

  else
  {
    sub_10003D954(v35);

    v41 = *(v34 + 8);
    v42 = v129;
    v43 = v21;
  }

  v129 = v41;
  (v41)(v42, v43);
  v45 = v35[4];
  v44 = v35[5];
  v46 = *(*v127 + 176);

  v48 = (v46)(v47);
  if (!v48)
  {
    v110 = v45;
    v127 = v46;

    goto LABEL_16;
  }

  v50 = *(v48 + 16);
  v49 = *(v48 + 24);

  if (v45 != v50 || v44 != v49)
  {
    v127 = v46;
    v110 = v45;
    v53 = sub_1000437F4();

    v51 = v119;
    v52 = v117;
    if (v53)
    {
      goto LABEL_11;
    }

LABEL_16:
    v72 = sub_1000212A8();
    v73 = v116;
    v74 = v120;
    v118(v116, v72, v120);
    sub_10003D8F8(v35, v131);

    v75 = sub_1000431C4();
    v76 = sub_1000434A4();
    sub_10003D954(v35);

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v77 = 136446466;
      *(v77 + 4) = sub_100015730(v110, v44, &v132);
      *(v77 + 12) = 2082;
      v78 = v127();
      if (v78)
      {
        v79 = *(v78 + 16);
        v80 = *(v78 + 24);
      }

      else
      {
        v79 = 0;
        v80 = 0;
      }

      v131[0] = v79;
      v131[1] = v80;
      sub_100013A34(&qword_100066D88, &qword_100048210);
      v93 = sub_100043364();
      v95 = sub_100015730(v93, v94, &v132);

      *(v77 + 14) = v95;
      _os_log_impl(&_mh_execute_header, v75, v76, "Update asset had incorrect ID: %{public}s, %{public}s", v77, 0x16u);
      swift_arrayDestroy();

      return (v129)(v73, v120);
    }

    else
    {

      return (v129)(v73, v74);
    }
  }

  v51 = v119;
  v52 = v117;
LABEL_11:
  v55 = v124;
  v54 = v125;
  (*(v125 + 56))(v51, 1, 1, v124);
  v56 = v35[7];
  v57 = v115;
  if (v56)
  {
    v58 = v51;
    v59 = v35[6];

    sub_10001C014(v59, v56, v52);
    sub_100029814(v58, &qword_100067210, &unk_100048910);
    sub_10003D30C(v52, v58);
    v60 = v58;
    v61 = v114;
    v55 = v124;
    v54 = v125;
    sub_100029070(v60, v114, &qword_100067210, &unk_100048910);
    if ((*(v54 + 48))(v61, 1, v55) == 1)
    {
      sub_100029814(v61, &qword_100067210, &unk_100048910);
      v62 = sub_1000212A8();
      v63 = v112;
      v64 = v120;
      v118(v112, v62, v120);

      v65 = sub_1000431C4();
      v66 = sub_1000434A4();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v131[0] = v68;
        *v67 = 136446210;
        *(v67 + 4) = sub_100015730(v59, v56, v131);
        _os_log_impl(&_mh_execute_header, v65, v66, "Update asset had invalid compression type: %{public}s", v67, 0xCu);
        sub_100013B7C(v68);
      }

      (v129)(v63, v64);
      v69 = v113;
      sub_10003D2B8();
      v70 = swift_allocError();
      *v71 = v59;
      *(v71 + 8) = v56;
      *(v71 + 16) = 1;
      sub_100029814(v119, &qword_100067210, &unk_100048910);
      swift_beginAccess();
      *(v69 + 16) = v70;
    }

    sub_100029814(v61, &qword_100067210, &unk_100048910);
    v51 = v119;
  }

  v82 = v35[1];
  v81 = v35[2];
  sub_100029070(v51, v57, &qword_100067210, &unk_100048910);
  if ((*(v54 + 48))(v57, 1, v55) == 1)
  {
    sub_100013104(v82, v81);
    sub_100029814(v57, &qword_100067210, &unk_100048910);
    goto LABEL_29;
  }

  v83 = v57;
  v84 = v123;
  (*(v54 + 32))(v123, v83, v55);
  sub_100013104(v82, v81);
  v85 = v130;
  v86 = sub_10001C90C(v82, v81, v84);
  if (!v85)
  {
    v96 = v86;
    v97 = v54;
    v98 = v87;
    v130 = 0;
    (*(v97 + 8))(v84, v55);
    sub_10001316C(v82, v81);
    v82 = v96;
    v81 = v98;
LABEL_29:
    sub_100013104(v82, v81);
    v99 = v130;
    v100 = sub_100018C84(v82, v81);
    if (v99)
    {
      sub_100029814(v51, &qword_100067210, &unk_100048910);
      return sub_10001316C(v82, v81);
    }

    else
    {
      sub_100018CEC(v100);
      sub_100029814(v51, &qword_100067210, &unk_100048910);

      sub_10001316C(v82, v81);
      v101 = v121;
      result = swift_beginAccess();
      v102 = *(v101 + 16);
      v103 = __OFADD__(v102, 1);
      v104 = v102 + 1;
      if (v103)
      {
        __break(1u);
      }

      else
      {
        *(v101 + 16) = v104;
      }
    }

    return result;
  }

  v88 = sub_1000212A8();
  v89 = v111;
  v118(v111, v88, v120);
  sub_10003D8F8(v35, v131);
  v90 = sub_1000431C4();
  v91 = sub_1000434A4();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    *(v92 + 4) = *v35;
    sub_10003D954(v35);
    _os_log_impl(&_mh_execute_header, v90, v91, "Update asset %lld had invalid compressed data", v92, 0xCu);
    v55 = v124;
  }

  else
  {
    sub_10003D954(v35);
  }

  v105 = v113;
  v106 = v123;

  (v129)(v89, v120);
  sub_10003D2B8();
  v107 = swift_allocError();
  *v108 = 0;
  *(v108 + 8) = 0;
  *(v108 + 16) = 2;
  sub_10001316C(v82, v81);
  (*(v125 + 8))(v106, v55);
  sub_100029814(v51, &qword_100067210, &unk_100048910);
  swift_beginAccess();
  *(v105 + 16) = v107;
}

void *sub_10003B1A8()
{
  v10 = _swiftEmptyArrayStorage;
  (*(*v0 + 224))(v7);
  v1 = v8;
  v2 = v9;
  sub_100013B38(v7, v8);
  v5 = v0;
  v6 = &v10;
  (*(v2 + 8))(sub_10003D39C, &v4, v1, v2);
  sub_100013B7C(v7);
  return v10;
}

void sub_10003B270(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v168 = a3;
  v166 = type metadata accessor for LaunchWarningController.NewLaunchWarning(0);
  v167 = *(v166 - 8);
  __chkstk_darwin(v166);
  v169 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s18LaunchWarningEntryVMa(0);
  v187 = *(v6 - 8);
  v188 = v6;
  v7 = __chkstk_darwin(v6);
  v170 = (&v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v171 = (&v165 - v9);
  v10 = sub_100013A34(&qword_100066E80, &qword_1000483E0);
  __chkstk_darwin(v10 - 8);
  v186 = &v165 - v11;
  v183 = type metadata accessor for LaunchWarningDetails(0);
  v182 = *(v183 - 8);
  v12 = __chkstk_darwin(v183);
  v172 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v178 = &v165 - v15;
  __chkstk_darwin(v14);
  v185 = &v165 - v16;
  v17 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  v18 = __chkstk_darwin(v17 - 8);
  v179 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v191 = &v165 - v20;
  v21 = type metadata accessor for AppRecord(0);
  v22 = __chkstk_darwin(v21);
  v190 = (&v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __chkstk_darwin(v22);
  v176 = &v165 - v25;
  v26 = __chkstk_darwin(v24);
  v173 = &v165 - v27;
  v28 = __chkstk_darwin(v26);
  v177 = &v165 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v165 - v31;
  __chkstk_darwin(v30);
  v34 = &v165 - v33;
  v35 = sub_1000431E4();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v189 = &v165 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v180 = &v165 - v40;
  v41 = __chkstk_darwin(v39);
  v174 = &v165 - v42;
  v43 = __chkstk_darwin(v41);
  v175 = &v165 - v44;
  v45 = __chkstk_darwin(v43);
  v181 = &v165 - v46;
  __chkstk_darwin(v45);
  v48 = &v165 - v47;
  v49 = sub_1000212A8();
  v50 = *(v36 + 16);
  v192 = v36 + 16;
  v193 = v49;
  v194 = v50;
  (v50)(v48);
  v198 = a1;
  sub_10003D830(a1, v34, type metadata accessor for AppRecord);
  v51 = sub_1000431C4();
  v52 = sub_100043494();
  v53 = os_log_type_enabled(v51, v52);
  v196 = a2;
  v197 = v35;
  v195 = v36;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v199 = v55;
    *v54 = 136446210;
    sub_10003D830(v34, v32, type metadata accessor for AppRecord);
    v56 = sub_100043364();
    v58 = v57;
    sub_10003D898(v34, type metadata accessor for AppRecord);
    v59 = sub_100015730(v56, v58, &v199);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v51, v52, "Visiting application: %{public}s", v54, 0xCu);
    sub_100013B7C(v55);
    v35 = v197;

    v36 = v195;
  }

  else
  {

    sub_10003D898(v34, type metadata accessor for AppRecord);
  }

  v60 = *(v36 + 8);
  v60(v48, v35);
  v61 = v198;
  v62 = (v198 + *(v21 + 36));
  v63 = v62[2];
  if (v63 >> 60 == 15)
  {
    v64 = v189;
    v194(v189, v193, v35);
    v65 = v61;
    v66 = v64;
    v67 = v190;
    sub_10003D830(v65, v190, type metadata accessor for AppRecord);
    v68 = sub_1000431C4();
    v69 = sub_100043494();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v184 = v60;
      v71 = v70;
      v72 = swift_slowAlloc();
      v199 = v72;
      *v71 = 136446210;
      v73 = sub_100042FC4();
      v74 = v67;
      v76 = v75;
      sub_10003D898(v74, type metadata accessor for AppRecord);
      v77 = sub_100015730(v73, v76, &v199);

      *(v71 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v68, v69, "Unable to find cdhash for %{public}s", v71, 0xCu);
      sub_100013B7C(v72);

      v184(v66, v197);
    }

    else
    {

      sub_10003D898(v67, type metadata accessor for AppRecord);
      v60(v64, v35);
    }
  }

  else
  {
    v184 = v60;
    v78 = *v62;
    v79 = v62[1];
    v80 = *(*v196 + 152);
    v81 = *v196 + 152;
    v82 = sub_100013104(v79, v63);
    v190 = v80;
    v83 = v80(v82);
    sub_100013104(v79, v63);
    v84 = v191;
    v85 = v78;
    v86 = v202;
    sub_100028074(v78, v79, v63, v191);
    v202 = v86;
    if (v86)
    {
      sub_10003D814(v78, v79, v63);
      sub_10003D814(v78, v79, v63);
    }

    else
    {
      v189 = v81;
      sub_10003D814(v78, v79, v63);

      if ((*(v187 + 48))(v84, 1, v188) == 1)
      {
        v87 = v61;
        sub_100029814(v84, &qword_100066DA0, &qword_1000482E0);
        v88 = *(*v196 + 280);
        sub_100013104(v79, v63);
        v89 = v186;
        v90 = v202;
        v88(v79, v63, v78);
        sub_10003D814(v78, v79, v63);
        v91 = v63;
        v92 = v90;
        if (v90)
        {
          sub_10003D814(v78, v79, v91);
        }

        else if ((*(v182 + 48))(v89, 1, v183) == 1)
        {
          v202 = 0;
          sub_100029814(v89, &qword_100066E80, &qword_1000483E0);
          v93 = v180;
          v94 = v197;
          v194(v180, v193, v197);
          v95 = v176;
          sub_10003D830(v87, v176, type metadata accessor for AppRecord);
          v96 = sub_1000431C4();
          v97 = sub_100043494();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v191 = v79;
            v99 = v85;
            v100 = v95;
            v101 = v98;
            v102 = swift_slowAlloc();
            v199 = v102;
            *v101 = 136446210;
            v103 = sub_100042FC4();
            v105 = v104;
            sub_10003D898(v100, type metadata accessor for AppRecord);
            v106 = sub_100015730(v103, v105, &v199);

            *(v101 + 4) = v106;
            _os_log_impl(&_mh_execute_header, v96, v97, "Found no launch warning for %{public}s", v101, 0xCu);
            sub_100013B7C(v102);

            sub_10003D814(v99, v191, v91);
            v107 = v180;
            v108 = v197;
          }

          else
          {

            sub_10003D814(v85, v79, v91);
            sub_10003D898(v95, type metadata accessor for AppRecord);
            v107 = v93;
            v108 = v94;
          }

          v184(v107, v108);
        }

        else
        {
          v182 = v78;
          v191 = v79;
          v109 = v185;
          sub_10003D19C(v89, v185, type metadata accessor for LaunchWarningDetails);
          v110 = v181;
          v194(v181, v193, v197);
          v111 = v87;
          v112 = v177;
          sub_10003D830(v111, v177, type metadata accessor for AppRecord);
          v113 = v178;
          sub_10003D830(v109, v178, type metadata accessor for LaunchWarningDetails);
          v114 = sub_1000431C4();
          v115 = sub_1000434B4();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v202 = 0;
            v117 = v116;
            v199 = swift_slowAlloc();
            *v117 = 136446466;
            v118 = v115;
            v119 = sub_100042FC4();
            v121 = v120;
            sub_10003D898(v112, type metadata accessor for AppRecord);
            v122 = sub_100015730(v119, v121, &v199);

            *(v117 + 4) = v122;
            *(v117 + 12) = 2082;
            sub_10003D830(v113, v172, type metadata accessor for LaunchWarningDetails);
            v123 = sub_100043364();
            v125 = v124;
            sub_10003D898(v113, type metadata accessor for LaunchWarningDetails);
            v126 = sub_100015730(v123, v125, &v199);

            *(v117 + 14) = v126;
            _os_log_impl(&_mh_execute_header, v114, v118, "Found launch warning for %{public}s with details: %{public}s", v117, 0x16u);
            swift_arrayDestroy();

            v92 = v202;

            v127 = v181;
          }

          else
          {

            sub_10003D898(v113, type metadata accessor for LaunchWarningDetails);
            sub_10003D898(v112, type metadata accessor for AppRecord);
            v127 = v110;
          }

          v128 = v197;
          v129 = v184;
          v130 = (v184)(v127, v197);
          v131 = v179;
          v132 = v190(v130);
          sub_100028688(v185, v131);
          if (v92)
          {

            (*(v187 + 56))(v131, 1, 1, v188);
            sub_100029814(v131, &qword_100066DA0, &qword_1000482E0);
            v133 = v174;
            v194(v174, v193, v128);
            v134 = v173;
            sub_10003D830(v198, v173, type metadata accessor for AppRecord);
            v135 = v128;
            v136 = sub_1000431C4();
            v137 = sub_1000434A4();
            if (os_log_type_enabled(v136, v137))
            {
              v138 = v134;
              v139 = swift_slowAlloc();
              v140 = swift_slowAlloc();
              v199 = v140;
              *v139 = 136446210;
              v141 = sub_100042FC4();
              v143 = v142;
              sub_10003D898(v138, type metadata accessor for AppRecord);
              v144 = sub_100015730(v141, v143, &v199);

              *(v139 + 4) = v144;
              _os_log_impl(&_mh_execute_header, v136, v137, "Error creating new launch warning for %{public}s", v139, 0xCu);
              sub_100013B7C(v140);

              sub_10003D814(v182, v191, v91);
              v184(v133, v197);
            }

            else
            {

              sub_10003D814(v182, v191, v91);
              sub_10003D898(v134, type metadata accessor for AppRecord);
              v129(v133, v135);
            }

            sub_10003D898(v185, type metadata accessor for LaunchWarningDetails);
          }

          else
          {
            v202 = 0;

            (*(v187 + 56))(v131, 0, 1, v188);
            v145 = v171;
            sub_10003D19C(v131, v171, _s18LaunchWarningEntryVMa);
            v194(v175, v193, v128);
            v146 = v170;
            sub_10003D830(v145, v170, _s18LaunchWarningEntryVMa);
            v147 = sub_1000431C4();
            v148 = sub_1000434B4();
            if (os_log_type_enabled(v147, v148))
            {
              v149 = swift_slowAlloc();
              *v149 = 134349056;
              v150 = v146;
              v151 = *v146;
              sub_10003D898(v150, _s18LaunchWarningEntryVMa);
              *(v149 + 4) = v151;
              _os_log_impl(&_mh_execute_header, v147, v148, "Created launch warning entry: %{public}llu", v149, 0xCu);
            }

            else
            {
              sub_10003D898(v146, _s18LaunchWarningEntryVMa);
            }

            v184(v175, v197);
            type metadata accessor for LaunchWarningMark();
            v152 = sub_1000213E0(*v145);
            (*(*v196 + 224))(&v199);
            v153 = v200;
            v154 = v201;
            sub_100013B38(&v199, v200);
            v155 = v198;
            v156 = v202;
            (*(v154 + 16))(v152, v198, v153, v154);
            if (v156)
            {

              sub_10003D814(v182, v191, v91);
              sub_10003D898(v145, _s18LaunchWarningEntryVMa);
              sub_10003D898(v185, type metadata accessor for LaunchWarningDetails);
              sub_100013B7C(&v199);
            }

            else
            {
              sub_100013B7C(&v199);
              v157 = v155;
              v158 = v169;
              sub_10003D830(v157, v169, type metadata accessor for AppRecord);
              sub_10003D830(v185, v158 + *(v166 + 20), type metadata accessor for LaunchWarningDetails);
              v159 = v168;
              v160 = *v168;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v159 = v160;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v160 = sub_10003CD8C(0, v160[2] + 1, 1, v160);
                *v159 = v160;
              }

              v163 = v160[2];
              v162 = v160[3];
              if (v163 >= v162 >> 1)
              {
                *v159 = sub_10003CD8C((v162 > 1), v163 + 1, 1, v160);
              }

              sub_10003D814(v182, v191, v91);
              sub_10003D898(v145, _s18LaunchWarningEntryVMa);
              sub_10003D898(v185, type metadata accessor for LaunchWarningDetails);
              v164 = *v159;
              *(v164 + 16) = v163 + 1;
              sub_10003D19C(v169, v164 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v163, type metadata accessor for LaunchWarningController.NewLaunchWarning);
            }
          }
        }
      }

      else
      {
        sub_10003D814(v78, v79, v63);
        sub_100029814(v84, &qword_100066DA0, &qword_1000482E0);
      }
    }
  }
}

uint64_t sub_10003C7E0(uint64_t a1)
{
  v3 = type metadata accessor for AppRecord(0);
  v4 = __chkstk_darwin(v3);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v46 = sub_1000431E4();
  v8 = *(v46 - 8);
  v9 = __chkstk_darwin(v46);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v39 - v13;
  (*(*v1 + 224))(v43, v12);
  v16 = v44;
  v15 = v45;
  sub_100013B38(v43, v44);
  v41 = v3;
  v17 = (*(v15 + 24))(*(a1 + *(v3 + 20)), *(a1 + *(v3 + 20) + 8), v16, v15);
  sub_100013B7C(v43);
  v18 = sub_1000212A8();
  v42 = v8;
  v19 = *(v8 + 16);
  if (v17)
  {
    v19(v14, v18, v46);
    sub_10003D830(a1, v7, type metadata accessor for AppRecord);
    v20 = sub_1000431C4();
    v21 = sub_1000434B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43[0] = v23;
      *v22 = 136446210;
      v24 = &v7[*(v41 + 20)];
      v25 = *v24;
      v26 = v24[1];

      sub_10003D898(v7, type metadata accessor for AppRecord);
      v27 = sub_100015730(v25, v26, v43);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Successfully terminated app: %{public}s", v22, 0xCu);
      sub_100013B7C(v23);
    }

    else
    {

      sub_10003D898(v7, type metadata accessor for AppRecord);
    }

    (*(v42 + 8))(v14, v46);
  }

  else
  {
    v28 = v11;
    v19(v11, v18, v46);
    v29 = v40;
    sub_10003D830(a1, v40, type metadata accessor for AppRecord);
    v30 = sub_1000431C4();
    v31 = sub_1000434A4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43[0] = v33;
      *v32 = 136446210;
      v34 = (v29 + *(v41 + 20));
      v35 = *v34;
      v36 = v34[1];

      sub_10003D898(v29, type metadata accessor for AppRecord);
      v37 = sub_100015730(v35, v36, v43);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to terminate app: %{public}s", v32, 0xCu);
      sub_100013B7C(v33);
    }

    else
    {

      sub_10003D898(v29, type metadata accessor for AppRecord);
    }

    (*(v42 + 8))(v28, v46);
  }

  return v17 & 1;
}

uint64_t sub_10003CCA0()
{
  v1 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_baseURL;
  v2 = sub_100043004();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100013B7C((v0 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_cloudkit));
  sub_100013B7C((v0 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_appManager));
  sub_100013B7C((v0 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_metrics));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void *sub_10003CD8C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100013A34(&qword_100067420, &unk_100048A80);
  v10 = *(type metadata accessor for LaunchWarningController.NewLaunchWarning(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LaunchWarningController.NewLaunchWarning(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10003CF64(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10003CF7C()
{
  result = qword_100067200;
  if (!qword_100067200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067200);
  }

  return result;
}

uint64_t sub_10003CFD0(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_filter;
  *(v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_filter) = 0;
  *(v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_db) = a1;
  swift_beginAccess();
  *(v4 + v8) = a2;
  sub_100029EB0(a3, v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_cloudkit);
  v9 = qword_10006A3A0;
  v10 = a1;

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_100043004();
  v12 = sub_1000161D0(v11, qword_10006AA50);
  (*(*(v11 - 8) + 16))(v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_baseURL, v12, v11);
  v13 = type metadata accessor for AppManager();
  v14 = sub_100015538();
  v15 = (v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_appManager);
  v15[3] = v13;
  v15[4] = &off_10005E338;
  *v15 = v14;
  v18 = type metadata accessor for MetricReporter();
  v19 = &off_10005F9E8;
  *&v17 = sub_100015538();
  sub_100013B7C(a3);
  sub_10003CF64(&v17, v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningController_metrics);
  return v4;
}

uint64_t sub_10003D164()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003D204()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003D274(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BloomFilter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003D2B8()
{
  result = qword_100067220;
  if (!qword_100067220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067220);
  }

  return result;
}

uint64_t sub_10003D30C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100067210, &unk_100048910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D3B8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10003D40C(uint64_t a1)
{
  result = sub_100043004();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for LaunchWarningController.SyncResult(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LaunchWarningController.SyncResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchWarningController.SyncResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10003D590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppRecord(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for LaunchWarningDetails(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003D694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AppRecord(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for LaunchWarningDetails(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10003D790(uint64_t a1)
{
  result = type metadata accessor for AppRecord(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LaunchWarningDetails(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003D814(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_10001316C(a2, a3);
  }

  return result;
}

uint64_t sub_10003D830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003D898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003EBC4();
  v5 = sub_100036344();

  return Error<>._code.getter(a1, a2, v4, v5);
}

void sub_10003DA04(__int16 a1, uint64_t a2, __int16 a3, double a4)
{
  v8 = sub_1000432E4();
  v9 = swift_allocObject();
  *(v9 + 16) = a1 & 1;
  *(v9 + 17) = HIBYTE(a1) & 1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3 & 1;
  *(v9 + 33) = HIBYTE(a3) & 1;
  *(v9 + 40) = a4;
  v11[4] = sub_10003DB38;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003DCF8;
  v11[3] = &unk_10005F880;
  v10 = _Block_copy(v11);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

unint64_t sub_10003DB38()
{
  sub_100013A34(&qword_100067500, &qword_100048CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048A90;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000010004CCF0;
  *(inited + 48) = sub_100043434();
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x800000010004CD10;
  *(inited + 72) = sub_100043434();
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x800000010004CD30;
  *(inited + 96) = sub_100043434();
  *(inited + 104) = 0x65746C694677656ELL;
  *(inited + 112) = 0xE900000000000072;
  *(inited + 120) = sub_100043434();
  *(inited + 128) = 0x70616C45656D6974;
  *(inited + 136) = 0xEB00000000646573;
  *(inited + 144) = sub_100043444();
  *(inited + 152) = 0x6F43657461647075;
  *(inited + 160) = 0xEB00000000746E75;
  *(inited + 168) = sub_100043454();
  v1 = sub_10003EC18(inited);
  swift_setDeallocating();
  sub_100013A34(&qword_100067508, &qword_100048CF0);
  swift_arrayDestroy();
  return v1;
}

Class sub_10003DCF8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10003ED1C();
    v4.super.isa = sub_1000432A4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_10003DD84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003DD9C(uint64_t a1, double a2)
{
  v4 = sub_1000432E4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_10003DEDC;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10003DCF8;
  v7[3] = &unk_10005F8D0;
  v6 = _Block_copy(v7);
  swift_errorRetain();

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_10003DEA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10003DEDC()
{
  v0 = sub_100042F34();
  sub_100013A34(&qword_100067500, &qword_100048CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048AA0;
  *(inited + 32) = 1701080931;
  *(inited + 40) = 0xE400000000000000;
  [v0 code];
  *(inited + 48) = sub_100043454();
  *(inited + 56) = 0x6E69616D6F64;
  *(inited + 64) = 0xE600000000000000;
  result = [v0 domain];
  if (result)
  {
    *(inited + 72) = result;
    *(inited + 80) = 0x70616C45656D6974;
    *(inited + 88) = 0xEB00000000646573;
    *(inited + 96) = sub_100043444();
    v3 = sub_10003EC18(inited);
    swift_setDeallocating();
    sub_100013A34(&qword_100067508, &qword_100048CF0);
    swift_arrayDestroy();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003E020(int a1, uint64_t a2, unint64_t a3, char a4, char a5)
{
  v10 = sub_1000432E4();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a5 & 1;
  *(v11 + 41) = a4;
  v13[4] = sub_10003E14C;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10003DCF8;
  v13[3] = &unk_10005F920;
  v12 = _Block_copy(v13);
  sub_100013104(a2, a3);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

unint64_t sub_10003E14C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100013A34(&qword_100067500, &qword_100048CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048AB0;
  *(inited + 32) = 0x687361686463;
  *(inited + 40) = 0xE600000000000000;
  sub_1000137B0(v1, v2);
  v4 = sub_1000432E4();

  *(inited + 48) = v4;
  *(inited + 56) = 0x7954687361686463;
  *(inited + 64) = 0xEA00000000006570;
  *(inited + 72) = sub_1000438D4();
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_100043454();
  *(inited + 104) = 0x74616E696D726574;
  *(inited + 112) = 0xEA00000000006465;
  *(inited + 120) = sub_100043434();
  v5 = sub_10003EC18(inited);
  swift_setDeallocating();
  sub_100013A34(&qword_100067508, &qword_100048CF0);
  swift_arrayDestroy();
  return v5;
}

void sub_10003E2B0(int a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000432E4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v9[4] = sub_10003E40C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10003DCF8;
  v9[3] = &unk_10005F970;
  v8 = _Block_copy(v9);
  sub_100013104(a2, a3);

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

uint64_t sub_10003E3C8(uint64_t a1)
{
  sub_10001316C(*(v1 + 24), *(v1 + 32));

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_10003E40C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_100013A34(&qword_100067500, &qword_100048CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048AC0;
  *(inited + 32) = 0x687361686463;
  *(inited + 40) = 0xE600000000000000;
  sub_1000137B0(v2, v1);
  v4 = sub_1000432E4();

  *(inited + 48) = v4;
  *(inited + 56) = 0x7954687361686463;
  *(inited + 64) = 0xEA00000000006570;
  *(inited + 72) = sub_1000438D4();
  v5 = sub_10003EC18(inited);
  swift_setDeallocating();
  sub_100013A34(&qword_100067508, &qword_100048CF0);
  swift_arrayDestroy();
  return v5;
}

void sub_10003E518(uint64_t a1, void *a2, char a3)
{
  v6 = sub_1000432E4();
  v8 = *a1;
  v7 = *(a1 + 8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = v9;
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 56) = a2;
  *(v11 + 64) = a3 & 1;
  aBlock[4] = sub_10003E6CC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003DCF8;
  aBlock[3] = &unk_10005F9C0;
  v13 = _Block_copy(aBlock);
  v14 = v8;
  v15 = v7;
  v16 = v10;
  sub_10003E8F8(&v21, v18);
  sub_10003E8F8(&v20, v18);
  v17 = a2;

  AnalyticsSendEventLazy();
  _Block_release(v13);
}

uint64_t sub_10003E66C()
{

  return _swift_deallocObject(v0, 65, 7);
}

id sub_10003E6CC()
{
  v1 = *(v0 + 56);
  sub_100013A34(&qword_100067500, &qword_100048CE8);
  inited = swift_initStackObject();
  *(inited + 32) = 0x656E6961746E6F63;
  *(inited + 16) = xmmword_100048AD0;
  *(inited + 40) = 0xE900000000000072;
  v3 = [*(v0 + 16) containerIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_100043314();
  }

  *(inited + 48) = sub_1000432E4();
  *(inited + 56) = 1701736314;
  *(inited + 64) = 0xE400000000000000;
  v5 = [*(v0 + 32) zoneID];
  result = [v5 zoneName];
  if (result)
  {
    v7 = result;

    *(inited + 72) = v7;
    *(inited + 80) = 0x795464726F636572;
    *(inited + 88) = 0xEA00000000006570;
    sub_100043554();
    *(inited + 96) = sub_1000432E4();
    *(inited + 104) = 0x444964726F636572;
    *(inited + 112) = 0xE800000000000000;
    v8 = [v1 recordID];
    result = [v8 recordName];
    if (result)
    {
      v9 = result;

      *(inited + 120) = v9;
      *(inited + 128) = 0x726F727265;
      *(inited + 136) = 0xE500000000000000;
      *(inited + 144) = sub_100043454();
      v10 = sub_10003EC18(inited);
      swift_setDeallocating();
      sub_100013A34(&qword_100067508, &qword_100048CF0);
      swift_arrayDestroy();
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003E8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066EE0, &qword_100048500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003E96C()
{
  result = qword_100067428;
  if (!qword_100067428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067428);
  }

  return result;
}

unint64_t sub_10003E9C4()
{
  result = qword_100067430;
  if (!qword_100067430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067430);
  }

  return result;
}

unint64_t sub_10003EBC4()
{
  result = qword_1000674F8;
  if (!qword_1000674F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000674F8);
  }

  return result;
}

unint64_t sub_10003EC18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100013A34(&qword_100067510, &qword_100048CF8);
    v3 = sub_1000436F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100018358(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003ED1C()
{
  result = qword_100067518;
  if (!qword_100067518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100067518);
  }

  return result;
}

int *sub_10003EDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v23 = sub_100043004();
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  result = type metadata accessor for BloomFilterRecord(0);
  v25 = (a9 + result[5]);
  *v25 = a2;
  v25[1] = a3;
  *(a9 + result[6]) = a4;
  v26 = (a9 + result[7]);
  *v26 = a5;
  v26[1] = a6;
  v27 = (a9 + result[8]);
  *v27 = a7;
  v27[1] = a8;
  v28 = (a9 + result[9]);
  *v28 = a10;
  v28[1] = a11;
  v29 = (a9 + result[10]);
  *v29 = a12;
  v29[1] = a13;
  *(a9 + result[11]) = a14;
  v30 = (a9 + result[12]);
  *v30 = a15;
  v30[1] = a16;
  return result;
}

uint64_t sub_10003EEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100043004();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_10003EF5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_10003EF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100035F58(a1, a5, &qword_100066ED8, &unk_100048D00);
  v9 = type metadata accessor for BaseZoneSyncResult(0);
  result = sub_100035F58(a2, a5 + *(v9 + 20), &qword_100066ED0, &unk_1000484F0);
  v11 = (a5 + *(v9 + 24));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

unint64_t sub_10003F028()
{
  result = qword_100067520;
  if (!qword_100067520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067520);
  }

  return result;
}

uint64_t sub_10003F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100043004();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003F164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100043004();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10003F220(uint64_t a1)
{
  sub_100043004();
  if (v1 <= 0x3F)
  {
    sub_10001600C(319, &qword_100066590, &type metadata for String);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10003F2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100043004();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003F370(uint64_t a1, uint64_t a2)
{
  v4 = sub_100043004();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003F400(uint64_t a1)
{
  result = sub_100043004();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_10003F46C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10003F480(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003F4C8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_10003F53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100013A34(&qword_100066ED8, &unk_100048D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100013A34(&qword_100066ED0, &unk_1000484F0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10003F680(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100013A34(&qword_100066ED8, &unk_100048D00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100013A34(&qword_100066ED0, &unk_1000484F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10003F7B0(uint64_t a1)
{
  sub_10003F894(319, &qword_1000676A0, type metadata accessor for BloomFilterRecord);
  if (v1 <= 0x3F)
  {
    sub_10003F894(319, &unk_1000676A8, type metadata accessor for DocumentCheckerRecord);
    if (v2 <= 0x3F)
    {
      sub_10001600C(319, &qword_100066598, &type metadata for Data);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003F894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000435A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003F8E8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003F910(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10003F964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_10003F9C8(void *a1)
{
  if (![a1 caseInsensitiveCompare:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "fbe71da1-0834-4d49-9b41-d3fa7f9e4d4f")}])
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 20)
    {
      break;
    }

    v4 = [a1 caseInsensitiveCompare:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", (&off_10005FCD8)[v2 + 1])}];
    v2 = v3 + 1;
  }

  while (v4);
  return v3 < 0x14;
}

void sub_10003FAA4(sqlite3 **a1)
{
  sqlite3_errmsg(*a1);
  sqlite3_errcode(*a1);
  sub_100002F24();
  sub_100002F54(&_mh_execute_header, v2, v3, "SQL error '%{public}s' (%1d)", v4, v5, v6, v7);
}

void sub_10003FC4C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 1024;
  *&v3[14] = a2;
  sub_100002F04(&_mh_execute_header, a2, a3, "Unable to table row count for %{public}@: %d", *v3, *&v3[8], *&v3[16]);
}

void sub_10003FCC4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error opening DB: %d", v2, 8u);
}

void sub_10003FD3C()
{
  __error();
  sub_10000328C();
  sub_100002F54(&_mh_execute_header, v0, v1, "unable to set filesystem permissions on db: %d, %s", v2, v3, v4, v5);
}

void sub_10003FDBC()
{
  __error();
  sub_10000328C();
  sub_100002F54(&_mh_execute_header, v0, v1, "unable to check filesystem permissions on db: %d, %s", v2, v3, v4, v5);
}

void sub_10003FE3C()
{
  __error();
  sub_10000328C();
  sub_100002F54(&_mh_execute_header, v0, v1, "unable to open file to update permissions: %d, %s", v2, v3, v4, v5);
}

void sub_10003FF10(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2080;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Caller (pid %d) does not have required entitlement '%s'", v3, 0x12u);
}

void sub_10003FF98(NSObject *a1)
{
  v2 = *__error();
  v3 = 138412546;
  v4 = @"/private/var/db/MobileIdentityData";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Unable to create data directory '%@' (error %{errno}d)!", &v3, 0x12u);
}

void sub_1000400C4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Launch warning sync had error: %@", &v2, 0xCu);
}

void sub_100040324()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSDictionary *wl_MAECopyActivationRecordWithError(NSError *__autoreleasing *)"];
  [v0 handleFailureInFunction:v1 file:@"online_auth_agent.m" lineNumber:67 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100040844(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *MobileActivationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"online_auth_agent.m" lineNumber:66 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100040CA0(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't get device identity %{public}@", &v3, 0xCu);
}

void sub_100040D20(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create CMS blob, got error %d", v2, 8u);
}

void sub_100040EA8(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  sub_100008738(&_mh_execute_header, v2, v3, "Could not convert dictionary to JSON: %{public}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100040F9C(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  sub_100008738(&_mh_execute_header, v2, v3, "session error: %{public}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100041024(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

void sub_1000410E0(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create profiles table: %s", v3, v4, v5, v6);
}

void sub_100041154(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create certificates table: %s", v3, v4, v5, v6);
}

void sub_1000411C8(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create certificates index: %s", v3, v4, v5, v6);
}

void sub_10004123C(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create certificates provisioning cache: %s", v3, v4, v5, v6);
}

void sub_1000412B0(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create entitlements provisioning cache: %s", v3, v4, v5, v6);
}

void sub_100041324(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create entitlements index: %s", v3, v4, v5, v6);
}

void sub_100041398(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't add is_der to the profiles table: %s", v3, v4, v5, v6);
}

void sub_10004140C(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the xml profiles table: %s", v3, v4, v5, v6);
}

void sub_100041480(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't update is_beta column: %s", v3, v4, v5, v6);
}

void sub_1000414F4(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the trusted team IDs table: %s", v3, v4, v5, v6);
}

void sub_100041568(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Error searching for zero length signatures: %s", v3, v4, v5, v6);
}

void sub_1000415DC(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't replace signature with nil: %s", v3, v4, v5, v6);
}

void sub_100041650(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the team ID info table: %s", v3, v4, v5, v6);
}

void sub_1000416C4(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't fetch trusted team ID info: %s", v3, v4, v5, v6);
}

void sub_100041738(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't insert team ID info: %s", v3, v4, v5, v6);
}

void sub_1000417AC(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the signing identities table: %s", v3, v4, v5, v6);
}

void sub_100041820(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't fetch trusted signing identities from profiles: %s", v3, v4, v5, v6);
}

void sub_100041894(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't fetch trusted signing identities from xml_profiles_cache: %s", v3, v4, v5, v6);
}

void sub_100041908(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't insert into signing identities: %s", v3, v4, v5, v6);
}

void sub_10004197C(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the online auth table: %s", v3, v4, v5, v6);
}

void sub_1000419F0(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the banned profile UUIDs table: %s", v3, v4, v5, v6);
}

void sub_100041A64(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't create the banned cdhashes table: %s", v3, v4, v5, v6);
}

void sub_100041AD8(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't fetch single asterisk wildcard predicates: %s", v3, v4, v5, v6);
}

void sub_100041B4C(uint64_t a1)
{
  sub_10000D6F8(a1);
  sub_10000D718();
  sub_100008738(&_mh_execute_header, v1, v2, "Couldn't insert new types for single asterisk wildcard predicates: %s", v3, v4, v5, v6);
}

void sub_100041CA8()
{
  sub_10000DBFC();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100041D1C()
{
  sub_10000DBFC();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Denylist entries offset %u is past denylist size %lld", v2, 0x12u);
}

void sub_100041DA4()
{
  __error();
  sub_10000DBFC();
  sub_10000DC08(&_mh_execute_header, v0, v1, "Could not map denylist, error %{errno}d", v2, v3, v4, v5);
}

void sub_100041EA4()
{
  __error();
  sub_10000DBFC();
  sub_10000DC08(&_mh_execute_header, v0, v1, "Could not open denylist, error %{errno}d", v2, v3, v4, v5);
}

void sub_100041F60()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100041F9C()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042018()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042054(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not read in internal auth list, error %@", &v2, 0xCu);
}

void sub_100042198(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Skipping asset with NULL attributes (this should not happen).", buf, 2u);
}

void sub_1000421D8()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004229C()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000422D8()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042388()
{
  sub_1000105A4();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000423F8()
{
  sub_1000105A4();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042468()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000424A4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Size mismatch while copying denylist, %ld total, %lld copied.", &v4, 0x16u);
}

void sub_100042530()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_10001056C();
  sub_10001055C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_1000425D0()
{
  __error();
  sub_10001055C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042658()
{
  sub_100010598();
  __error();
  v0 = __error();
  strerror(*v0);
  sub_100010538();
  sub_10001055C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000426F0()
{
  sub_100010598();
  __error();
  v0 = __error();
  strerror(*v0);
  sub_100010538();
  sub_10001055C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100042788()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000427C4()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042800()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004283C()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042878()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_10001056C();
  sub_10001055C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_100042918()
{
  sub_1000105A4();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042988()
{
  __error();
  sub_10001055C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100042A10()
{
  sub_100010598();
  __error();
  v0 = __error();
  strerror(*v0);
  sub_100010538();
  sub_10001055C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100042AA8()
{
  sub_100010598();
  __error();
  v0 = __error();
  strerror(*v0);
  sub_100010538();
  sub_10001055C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100042B40()
{
  sub_100003F54();
  sub_10000670C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100042B7C()
{
  sub_100010598();
  __error();
  v0 = __error();
  strerror(*v0);
  sub_100010538();
  sub_10001055C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100042C14(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 URL];
  v8 = [v7 path];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "App revalidation: CDHash missing for %@", a1, 0xCu);
}

CFMutableDictionaryRef sub_100042D2C()
{
  connect = 0;
  result = IOServiceMatching("IOAESAccelerator");
  if (result)
  {
    v1 = result;
    CFRetain(result);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v1);
    if (MatchingService)
    {
      v3 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      CFRelease(v1);
      IOObjectRelease(v3);
      return connect;
    }

    else
    {
      CFRelease(v1);
      return 0;
    }
  }

  return result;
}