uint64_t sub_188D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18A9F0(v7, v9) & 1;
}

uint64_t sub_188D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CB7D0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_18AB4C();
    v21 = sub_2CE250();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

void sub_188F64(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v218 = a6;
  v235 = a4;
  v230 = a7;
  v10 = sub_2CE130();
  isa = v10[-1].isa;
  v223 = v10;
  __chkstk_darwin(v10);
  v219 = &v201[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2CE1A0();
  v220 = *(v12 - 8);
  v221 = v12;
  v13 = __chkstk_darwin(v12);
  v216 = &v201[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v217 = &v201[-v15];
  v231 = sub_2CB7D0();
  v228 = v231[-1].isa;
  v16 = __chkstk_darwin(v231);
  v236 = &v201[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v212 = &v201[-v18];
  v19 = sub_2CE000();
  v237 = *(v19 - 8);
  v238 = v19;
  v20 = __chkstk_darwin(v19);
  v227 = &v201[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v210 = &v201[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v201[-v25];
  v27 = __chkstk_darwin(v24);
  v224 = &v201[-v28];
  v29 = __chkstk_darwin(v27);
  v215 = &v201[-v30];
  v31 = __chkstk_darwin(v29);
  v226 = &v201[-v32];
  v33 = __chkstk_darwin(v31);
  v213 = &v201[-v34];
  v35 = __chkstk_darwin(v33);
  v211 = &v201[-v36];
  __chkstk_darwin(v35);
  v214 = &v201[-v37];
  v225 = sub_2C8EC0();
  v38 = *(v225 - 8);
  v39 = __chkstk_darwin(v225);
  v41 = &v201[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = *(a5 - 8);
  __chkstk_darwin(v39);
  v44 = &v201[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v229 = v42;
  v45 = *(v42 + 32);
  v232 = v44;
  v233 = a5;
  v45(v44, a3, a5);
  v239 = a1;
  v46 = sub_2CCF90();
  if (!v47)
  {
    goto LABEL_6;
  }

  v48 = v47;
  v234 = v46;
  v49 = sub_2CA0A0();
  if (!v49)
  {

LABEL_6:

    if (qword_34BF58 != -1)
    {
LABEL_70:
      swift_once();
    }

    v63 = v238;
    v64 = sub_3ED0(v238, static Logger.default);
    swift_beginAccess();
    v65 = v237;
    v66 = v227;
    (*(v237 + 16))(v227, v64, v63);

    v67 = sub_2CDFE0();
    v68 = sub_2CE680();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = v66;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v256[0] = v71;
      *v70 = 136446210;
      v240 = sub_2CCF90();
      v241 = v72;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v73 = sub_2CE2A0();
      v75 = sub_3F08(v73, v74, v256);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_0, v67, v68, "DisplayApp#init could not build display app for bundle: %{public}s", v70, 0xCu);
      sub_306C(v71);

      (*(v65 + 8))(v69, v238);
    }

    else
    {

      (*(v65 + 8))(v66, v63);
    }

    (*(v229 + 8))(v232, v233);
    goto LABEL_11;
  }

  v50 = v49;

  v51 = v235;

  v208 = v50;
  v52 = v50;

  sub_2CB570();
  v53 = sub_B8CF4();
  v55 = v54;
  v209 = v52;

  v58 = *(v38 + 8);
  v57 = (v38 + 8);
  v56 = v58;
  v58(v41, v225);
  v207 = v26;
  v227 = v55;
  if (!v55)
  {
    v206 = v56;
    v227 = v57;
    v83 = v237;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v84 = v238;
    v85 = sub_3ED0(v238, static Logger.default);
    swift_beginAccess();
    v86 = *(v83 + 16);
    v87 = v214;
    v204 = v83 + 16;
    v205 = v85;
    v203 = v86;
    v86(v214, v85, v84);

    v88 = sub_2CDFE0();
    v89 = sub_2CE680();

    v90 = os_log_type_enabled(v88, v89);
    v61 = v234;
    if (v90)
    {
      v91 = swift_slowAlloc();
      v202 = v89;
      v92 = v91;
      v93 = v88;
      v94 = swift_slowAlloc();
      *&v249 = v94;
      *v92 = 136315138;
      *(v92 + 4) = sub_3F08(v61, v48, &v249);
      _os_log_impl(&dword_0, v93, v202, "DisplayApp#init couldn't find localized name for app info: %s, trying app name...", v92, 0xCu);
      sub_306C(v94);

      v95 = v237;
    }

    else
    {

      v95 = v83;
    }

    v96 = *(v95 + 8);
    v96(v87, v84);
    sub_2CA420();
    swift_allocObject();
    sub_2CA410();
    sub_2CB570();
    v53 = sub_2CA400();
    v98 = v97;

    v206(v41, v225);
    v62 = v226;
    if (v98)
    {
      v227 = v98;
      v59 = v237;
      v60 = v238;
      goto LABEL_19;
    }

    v119 = v211;
    v120 = v238;
    v203(v211, v205, v238);

    v121 = sub_2CDFE0();
    v122 = sub_2CE680();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *&v249 = v124;
      *v123 = 136315138;
      v125 = sub_3F08(v234, v48, &v249);

      *(v123 + 4) = v125;
      _os_log_impl(&dword_0, v121, v122, "DisplayApp#init couldn't find localized name for app: %s", v123, 0xCu);
      sub_306C(v124);

      v126 = v211;
    }

    else
    {

      v126 = v119;
    }

    v96(v126, v120);
    (*(v229 + 8))(v232, v233);

LABEL_11:
    v76 = 0;
    v48 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v51 = 0;
    goto LABEL_68;
  }

  v59 = v237;
  v60 = v238;
  v61 = v234;
  v62 = v226;
LABEL_19:
  v99 = HIBYTE(v227) & 0xF;
  if ((v227 & 0x2000000000000000) == 0)
  {
    v99 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (v99)
  {
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v225 = v53;
    v100 = sub_3ED0(v60, static Logger.default);
    swift_beginAccess();
    v101 = *(v59 + 16);
    v102 = v213;
    v211 = v100;
    v205 = v101;
    v206 = (v59 + 16);
    v101(v213, v100, v60);

    v103 = sub_2CDFE0();
    v104 = sub_2CE680();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v249 = v106;
      *v105 = 136315138;
      v107 = sub_2CE420();
      v109 = sub_3F08(v107, v108, &v249);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_0, v103, v104, "DisplayApp#init Empty bundleIDs, looking in installed apps: %s", v105, 0xCu);
      sub_306C(v106);

      v110 = v238;
      v61 = v234;
      v111 = *(v237 + 8);
      v112 = v102;
    }

    else
    {

      v111 = *(v59 + 8);
      v112 = v102;
      v110 = v60;
    }

    v214 = v111;
    (v111)(v112, v110);
    v113 = *(v51 + 16);
    v114 = v231;
    if (v113)
    {
      v115 = 0;
      v116 = (v228 + 8);
      while (1)
      {
        if (v115 >= *(v51 + 16))
        {
          __break(1u);
          goto LABEL_70;
        }

        (*(v228 + 16))(v236, v51 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v115, v114);
        if (sub_2CB7B0() == v61 && v48 == v117)
        {
          break;
        }

        v118 = sub_2CEEA0();

        if (v118)
        {
          goto LABEL_41;
        }

        ++v115;
        v114 = v231;
        (*v116)(v236, v231);
        if (v113 == v115)
        {
          goto LABEL_35;
        }
      }

LABEL_41:

      v127 = v231;
      v128 = v212;
      (*(v228 + 32))(v212, v236, v231);
      v129 = sub_2CB7C0();
      v53 = v225;
      if (v130)
      {
        v131 = v129;
        v132 = v130;

        v133 = v210;
        v134 = v238;
        v205(v210, v211, v238);

        v135 = sub_2CDFE0();
        v136 = sub_2CE690();

        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *&v249 = swift_slowAlloc();
          *v137 = 136315394;
          *(v137 + 4) = sub_3F08(v131, v132, &v249);
          *(v137 + 12) = 2080;
          *(v137 + 14) = sub_3F08(v234, v48, &v249);
          _os_log_impl(&dword_0, v135, v136, "DisplayApp#init overriding empty displayName with:%s for identifier:%s", v137, 0x16u);
          swift_arrayDestroy();
          v51 = v235;

          v138 = v237;
          v139 = v210;
        }

        else
        {

          v138 = v237;
          v139 = v133;
        }

        (v214)(v139, v134);
        (*v116)(v212, v231);
        v53 = v131;
        v227 = v132;
        v60 = v134;
        v59 = v138;
      }

      else
      {
        (*v116)(v128, v127);
        v59 = v237;
        v60 = v238;
      }

      v62 = v226;
    }

    else
    {
LABEL_35:

      v59 = v237;
      v60 = v238;
      v53 = v225;
      v62 = v226;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v140 = sub_3ED0(v60, static Logger.default);
  swift_beginAccess();
  v141 = *(v59 + 16);
  v231 = v140;
  v228 = v59 + 16;
  v214 = v141;
  (v141)(v62, v140, v60);

  v142 = v227;

  v143 = sub_2CDFE0();
  v144 = v59;
  v145 = sub_2CE690();

  v146 = os_log_type_enabled(v143, v145);
  v225 = v53;
  if (v146)
  {
    v147 = swift_slowAlloc();
    *&v249 = swift_slowAlloc();
    *v147 = 136315394;

    v148 = sub_3F08(v53, v142, &v249);

    *(v147 + 4) = v148;
    v149 = v234;
    v51 = v235;
    *(v147 + 12) = 2080;
    *(v147 + 14) = sub_3F08(v149, v48, &v249);
    _os_log_impl(&dword_0, v143, v145, "DisplayApp#init found default displayName:%s for identifier:%s", v147, 0x16u);
    swift_arrayDestroy();

    v150 = v60;
    v236 = *(v144 + 8);
    (v236)(v226, v60);
  }

  else
  {

    v150 = v60;
    v236 = *(v144 + 8);
    (v236)(v62, v60);
  }

  v151 = sub_2CBDB0();
  v81 = v239;
  if (v151)
  {
    v152 = v215;
    v153 = v150;
    (v214)(v215, v231, v150);

    v154 = sub_2CDFE0();
    v155 = sub_2CE670();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      *&v249 = v157;
      *v156 = 136315138;
      v158 = v234;
      *(v156 + 4) = sub_3F08(v234, v48, &v249);
      _os_log_impl(&dword_0, v154, v155, "DisplayApp#init checking for override name for identifier:%s...", v156, 0xCu);
      sub_306C(v157);

      (v236)(v152, v153);
    }

    else
    {

      (v236)(v152, v153);
      v158 = v234;
    }

    v159 = v225;
    v160 = dispatch_semaphore_create(0);
    v161 = swift_allocObject();
    *(v161 + 16) = 0;
    v226 = (v161 + 16);
    *(v161 + 24) = 0;
    v251 = 0;
    v249 = 0u;
    v250 = 0u;
    v162 = swift_allocObject();
    v162[2] = v160;
    v162[3] = v159;
    v162[4] = v227;
    v162[5] = v158;
    v162[6] = v48;
    v162[7] = v161;

    v163 = v160;

    sub_2CBC50();

    sub_18A864(&v249);
    v164 = v216;
    sub_2CE190();
    v165 = v219;
    *v219 = 1;
    v167 = isa;
    v166 = v223;
    (*(isa + 13))(v165, enum case for DispatchTimeInterval.seconds(_:), v223);
    v168 = v217;
    sub_2CE1B0();
    (*(v167 + 1))(v165, v166);
    v169 = v221;
    v170 = *(v220 + 8);
    v170(v164, v221);
    v223 = v163;
    sub_2CEA20();
    v171 = v168;
    v172 = v161;
    v170(v171, v169);
    v173 = v224;
    v174 = v238;
    (v214)(v224, v231, v238);

    v175 = sub_2CDFE0();
    v176 = sub_2CE670();
    v177 = v234;
    v178 = v176;

    if (os_log_type_enabled(v175, v178))
    {
      v179 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      *v179 = 136315394;
      swift_beginAccess();
      v180 = *(v172 + 24);
      *&v249 = *(v172 + 16);
      *(&v249 + 1) = v180;

      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v181 = sub_2CE2A0();
      v183 = v182;

      v184 = sub_3F08(v181, v183, &v240);

      *(v179 + 4) = v184;
      v174 = v238;
      *(v179 + 12) = 2080;
      *(v179 + 14) = sub_3F08(v177, v48, &v240);
      _os_log_impl(&dword_0, v175, v178, "DisplayApp#init override name:%s for identifier:%s...", v179, 0x16u);
      swift_arrayDestroy();

      v185 = v224;
    }

    else
    {

      v185 = v173;
    }

    (v236)(v185, v174);
    v81 = v239;
    swift_beginAccess();
    v186 = *(v172 + 24);
    v79 = v225;
    if (v186)
    {
      v226 = v172;
      v77 = *(v172 + 16);
      (v214)(v207, v231, v174);
      swift_bridgeObjectRetain_n();

      v187 = v227;

      v188 = sub_2CDFE0();
      v189 = sub_2CE670();

      v231 = v188;
      v190 = os_log_type_enabled(v188, v189);
      v80 = v187;
      if (v190)
      {
        v191 = swift_slowAlloc();
        v228 = swift_slowAlloc();
        *&v249 = v228;
        *v191 = 136315650;
        v192 = sub_3F08(v77, v186, &v249);

        *(v191 + 4) = v192;
        *(v191 + 12) = 2080;
        v193 = sub_3F08(v79, v187, &v249);

        *(v191 + 14) = v193;
        *(v191 + 22) = 2080;
        v194 = sub_3F08(v234, v48, &v249);

        *(v191 + 24) = v194;
        v81 = v239;
        v195 = v189;
        v196 = v231;
        _os_log_impl(&dword_0, v231, v195, "DisplayApp#init found using primary:%s, alternate:%s for app:%s", v191, 0x20u);
        swift_arrayDestroy();

        v197 = v238;
        v198 = v207;
      }

      else
      {

        v198 = v207;
        v197 = v174;
      }

      (v236)(v198, v197);

      v78 = v186;
      v51 = v235;
    }

    else
    {

      v80 = 0;
      v77 = v79;
      v79 = 0;
      v51 = v235;
      v78 = v227;
    }
  }

  else
  {

    v80 = 0;
    v77 = v225;
    v79 = 0;
    v78 = v227;
  }

  v76 = v234;
  v240 = v234;
  v241 = v48;
  v242 = v77;
  v243 = v78;
  v244 = v79;
  v245 = v80;
  v199 = v209;
  v246 = v81;
  v247 = v209;
  v248 = v51;
  sub_333FC(&v240, &v249);
  (*(v229 + 8))(v232, v233);
  *&v249 = v76;
  *(&v249 + 1) = v48;
  *&v250 = v77;
  *(&v250 + 1) = v78;
  v251 = v79;
  v252 = v80;
  v253 = v81;
  v254 = v199;
  v255 = v51;
  sub_9AA00(&v249);
  v82 = v208;
LABEL_68:
  v200 = v230;
  *v230 = v76;
  v200[1] = v48;
  v200[2] = v77;
  v200[3] = v78;
  v200[4] = v79;
  v200[5] = v80;
  v200[6] = v81;
  v200[7] = v82;
  v200[8] = v51;
}

uint64_t sub_18A864(uint64_t a1)
{
  v2 = sub_20410(&qword_34E970, &qword_2D2910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_18A8CC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18A8F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18A938(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18A99C()
{
  result = qword_353380;
  if (!qword_353380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353380);
  }

  return result;
}

uint64_t sub_18A9F0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2CEEA0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2CEEA0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_2CEEA0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_2CCFB0();
  if ((sub_2CCFA0() & 1) == 0)
  {
    return 0;
  }

  sub_18AB00();
  if ((sub_2CEB30() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[8];
  v9 = a2[8];

  return sub_188D80(v8, v9);
}

unint64_t sub_18AB00()
{
  result = qword_34DD50;
  if (!qword_34DD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34DD50);
  }

  return result;
}

unint64_t sub_18AB4C()
{
  result = qword_353388;
  if (!qword_353388)
  {
    sub_2CB7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353388);
  }

  return result;
}

uint64_t sub_18ABA4()
{

  sub_306C((v0 + 24));
  sub_306C((v0 + 64));
  sub_18ACA4(v0 + qword_3566B0);

  return swift_deallocClassInstance();
}

uint64_t _s21ConfirmIntentStrategyCMa(uint64_t a1)
{
  result = qword_3533B8;
  if (!qword_3533B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18ACA4(uint64_t a1)
{
  v2 = sub_20410(qword_34F2C8, &unk_2D3070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShazamSuccessfulMatchModel.serializedData.getter()
{
  sub_2C8B80();
  swift_allocObject();
  sub_2C8B70();
  type metadata accessor for ShazamSuccessfulMatchModel(0);
  sub_18C5E0(&qword_352D40, type metadata accessor for ShazamSuccessfulMatchModel, &protocol conformance descriptor for ShazamSuccessfulMatchModel);
  v0 = sub_2C8B60();

  return v0;
}

uint64_t type metadata accessor for ShazamSuccessfulMatchModel(uint64_t a1)
{
  result = qword_353568;
  if (!qword_353568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AE80(uint64_t (*a1)(void), uint64_t a2)
{
  sub_2C8B80();
  swift_allocObject();
  sub_2C8B70();
  a1();
  v3 = sub_2C8B60();

  return v3;
}

uint64_t sub_18AF20(uint64_t a1)
{
  v2 = sub_18AFDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18AF5C(uint64_t a1)
{
  v2 = sub_18AFDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_18AFDC()
{
  result = qword_3534B8;
  if (!qword_3534B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3534B8);
  }

  return result;
}

unint64_t sub_18B0A8()
{
  result = qword_3534C0;
  if (!qword_3534C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3534C0);
  }

  return result;
}

uint64_t sub_18B0FC(uint64_t a1)
{
  v2 = sub_18B2D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18B138(uint64_t a1)
{
  v2 = sub_18B2D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_18B1B8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_20410(a2, a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_35E0(a1, a1[3]);
  a4();
  sub_2CEFF0();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_18B2D8()
{
  result = qword_3534D0;
  if (!qword_3534D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3534D0);
  }

  return result;
}

uint64_t sub_18B370(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_20410(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_35E0(a1, a1[3]);
  a6();
  sub_2CEFF0();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_18B4C4(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_2C8B50();
  swift_allocObject();
  sub_2C8B40();
  a3();
  sub_2C8B30();
  sub_52628(a1, a2);
}

unint64_t sub_18B564()
{
  result = qword_3534D8;
  if (!qword_3534D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3534D8);
  }

  return result;
}

unint64_t sub_18B5B8(char a1)
{
  result = 0x44496D617A616873;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65726E6567;
      break;
    case 5:
    case 6:
      result = 0x73754D656C707061;
      break;
    case 7:
      result = 0x4C5255626577;
      break;
    case 8:
      result = 0x556B726F77747261;
      break;
    case 9:
      result = 0x4C52556F65646976;
      break;
    case 10:
      result = 0x746963696C707865;
      break;
    case 11:
      result = 1668445033;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18B714@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18CB6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_18B748(uint64_t a1)
{
  v2 = sub_18BB58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18B784(uint64_t a1)
{
  v2 = sub_18BB58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShazamSuccessfulMatchModel.encode(to:)(void *a1)
{
  v3 = sub_20410(&qword_3534E0, &unk_2D5A00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_35E0(a1, a1[3]);
  sub_18BB58();
  sub_2CEFF0();
  v8[31] = 0;
  sub_2CEE30();
  if (!v1)
  {
    v8[30] = 1;
    sub_2CEE30();
    v8[29] = 2;
    sub_2CEE30();
    v8[28] = 3;
    sub_2CEE30();
    v8[27] = 4;
    sub_2CEE30();
    v8[26] = 5;
    sub_2CEE30();
    type metadata accessor for ShazamSuccessfulMatchModel(0);
    v8[25] = 6;
    sub_2C8D90();
    sub_18C5E0(&qword_3534F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_2CEE50();
    v8[24] = 7;
    sub_2CEE50();
    v8[15] = 8;
    sub_2CEE50();
    v8[14] = 9;
    sub_2CEE50();
    v8[13] = 10;
    sub_2CEE40();
    v8[12] = 11;
    sub_2CEE30();
    v8[11] = 12;
    sub_2CEE40();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_18BB58()
{
  result = qword_3534E8;
  if (!qword_3534E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3534E8);
  }

  return result;
}

void ShazamSuccessfulMatchModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_20410(&unk_3519B0, &qword_2D1230);
  v4 = __chkstk_darwin(v3 - 8);
  v56 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v51 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = v51 - v10;
  __chkstk_darwin(v9);
  v13 = v51 - v12;
  v60 = sub_20410(&qword_3534F8, &qword_2D5A10);
  v57 = *(v60 - 8);
  __chkstk_darwin(v60);
  v15 = v51 - v14;
  matched = type metadata accessor for ShazamSuccessfulMatchModel(0);
  __chkstk_darwin(matched);
  v18 = (v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v62 = a1;
  sub_35E0(a1, v19);
  sub_18BB58();
  v59 = v15;
  v20 = v61;
  sub_2CEFE0();
  if (v20)
  {
    sub_306C(v62);
    return;
  }

  v21 = v13;
  v54 = v8;
  v55 = v11;
  v23 = v57;
  v22 = v58;
  v61 = matched;
  v75 = 0;
  v24 = v59;
  v25 = v60;
  *v18 = sub_2CEE00();
  v18[1] = v26;
  v74 = 1;
  v18[2] = sub_2CEE00();
  v18[3] = v27;
  v73 = 2;
  v52 = 0;
  v18[4] = sub_2CEE00();
  v18[5] = v28;
  v72 = 3;
  v18[6] = sub_2CEE00();
  v18[7] = v29;
  v71 = 4;
  v18[8] = sub_2CEE00();
  v18[9] = v30;
  v70 = 5;
  v31 = sub_2CEE00();
  v53 = 0;
  v18[10] = v31;
  v18[11] = v32;
  v33 = sub_2C8D90();
  v69 = 6;
  v34 = sub_18C5E0(&qword_353500, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v51[0] = v33;
  v51[1] = v34;
  v35 = v53;
  sub_2CEE20();
  v53 = v35;
  if (v35)
  {
    (*(v23 + 8))(v24, v25);
    v36 = 0;
    v37 = 0;
  }

  else
  {
    sub_7FD30(v21, v18 + v61[10]);
    v68 = 7;
    v38 = v55;
    v39 = v53;
    sub_2CEE20();
    v53 = v39;
    if (v39)
    {
      (*(v23 + 8))(v24, v60);
      v37 = 0;
      v36 = 1;
    }

    else
    {
      sub_7FD30(v38, v18 + v61[11]);
      v67 = 8;
      v40 = v53;
      v41 = v54;
      v42 = v60;
      sub_2CEE20();
      v53 = v40;
      if (!v40)
      {
        sub_7FD30(v41, v18 + v61[12]);
        v66 = 9;
        v45 = v53;
        sub_2CEE20();
        if (v45)
        {
          (*(v23 + 8))(v59, v60);
          sub_306C(v62);

          v47 = v61;
          sub_7FDA0(v18 + v61[10]);
          sub_7FDA0(v18 + v47[11]);
          sub_7FDA0(v18 + v47[12]);
        }

        else
        {
          sub_7FD30(v56, v18 + v61[13]);
          v65 = 10;
          *(v18 + v61[14]) = sub_2CEE10();
          v64 = 11;
          v46 = sub_2CEE00();
          v48 = (v18 + v61[15]);
          *v48 = v46;
          v48[1] = v49;
          v63 = 12;
          v50 = sub_2CEE10();
          (*(v23 + 8))(v59, v60);
          *(v18 + v61[16]) = v50;
          sub_18C418(v18, v22);
          sub_306C(v62);
          sub_18C47C(v18);
        }

        return;
      }

      (*(v23 + 8))(v24, v42);
      v36 = 1;
      v37 = 1;
    }
  }

  v43 = v52;
  sub_306C(v62);

  if (!v43)
  {
  }

  v44 = v61;
  if (v36)
  {
    sub_7FDA0(v18 + v61[10]);
    if ((v37 & 1) == 0)
    {
      return;
    }
  }

  else if (!v37)
  {
    return;
  }

  sub_7FDA0(v18 + v44[11]);
}

uint64_t sub_18C418(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel(0);
  (*(*(matched - 8) + 16))(a2, a1, matched);
  return a2;
}

uint64_t sub_18C47C(uint64_t a1)
{
  matched = type metadata accessor for ShazamSuccessfulMatchModel(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t ShazamSuccessfulMatchModel.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_2C8B50();
  swift_allocObject();
  sub_2C8B40();
  type metadata accessor for ShazamSuccessfulMatchModel(0);
  sub_18C5E0(&qword_353508, type metadata accessor for ShazamSuccessfulMatchModel, &protocol conformance descriptor for ShazamSuccessfulMatchModel);
  sub_2C8B30();
  sub_52628(a1, a2);
}

uint64_t sub_18C5E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_18C670(uint64_t a1)
{
  sub_18C748(319, &qword_34EE78, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_7FEC8(319);
    if (v2 <= 0x3F)
    {
      sub_18C748(319, &unk_353578, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18C748(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ShazamSuccessfulMatchModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShazamSuccessfulMatchModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18C908()
{
  result = qword_3535D8;
  if (!qword_3535D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3535D8);
  }

  return result;
}

unint64_t sub_18C960()
{
  result = qword_3535E0;
  if (!qword_3535E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3535E0);
  }

  return result;
}

unint64_t sub_18C9B8()
{
  result = qword_3535E8;
  if (!qword_3535E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3535E8);
  }

  return result;
}

unint64_t sub_18CA10()
{
  result = qword_3535F0;
  if (!qword_3535F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3535F0);
  }

  return result;
}

unint64_t sub_18CA68()
{
  result = qword_3535F8;
  if (!qword_3535F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3535F8);
  }

  return result;
}

unint64_t sub_18CAC0()
{
  result = qword_353600;
  if (!qword_353600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353600);
  }

  return result;
}

unint64_t sub_18CB18()
{
  result = qword_353608;
  if (!qword_353608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353608);
  }

  return result;
}

uint64_t sub_18CB6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D617A616873 && a2 == 0xE800000000000000;
  if (v4 || (sub_2CEEA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xEC00000044496369 || (sub_2CEEA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xED00004C52556369 || (sub_2CEEA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_2CEEA0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4C52556F65646976 && a2 == 0xE800000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF746E65746E6F43 || (sub_2CEEA0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1668445033 && a2 == 0xE400000000000000 || (sub_2CEEA0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000002DE2D0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_2CEEA0();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void *StringsBackedAppNameResolver.shared.unsafeMutableAddressor()
{
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  return &static StringsBackedAppNameResolver.shared;
}

uint64_t sub_18D000()
{
  v5 = sub_2CBBA0();
  v6 = &protocol witness table for AppNameResolver;
  sub_F390(&v4);
  sub_2CBB90();
  v2 = sub_2CC360();
  v3 = &protocol witness table for StringsFileResolver;
  sub_F390(&v1);
  sub_2CC350();
  sub_F338(&v4, &static StringsBackedAppNameResolver.shared);
  return sub_F338(&v1, &unk_35F7A8);
}

uint64_t StringsBackedAppNameResolver.init(coreAppNameResolver:stringsFileResolver:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_F338(a1, a3);

  return sub_F338(a2, a3 + 40);
}

uint64_t static StringsBackedAppNameResolver.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_34BFB8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_285EC(&static StringsBackedAppNameResolver.shared, v2);
}

uint64_t StringsBackedAppNameResolver.localizedAppName(for:helper:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v24 = a1;
  v25 = a2;
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = qword_34BF98;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "stringsBackedAppNameLocalizedAppName";
  *(v19 + 24) = 36;
  *(v19 + 32) = 2;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = sub_18D44C;
  v20[1] = v14;

  v21 = sub_2CE9E0();
  sub_2CDF90(v21, &dword_0, v16, "stringsBackedAppNameLocalizedAppName", 36, 2, v13, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_18E548;
  *(v22 + 24) = v19;

  sub_18D47C(sub_18E588, v22, v24, v25, v27, v26);

  (*(v8 + 8))(v13, v7);
}

uint64_t sub_18D47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v11 = sub_2CE150();
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CE180();
  v14 = *(v27 - 8);
  __chkstk_darwin(v27);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = sub_18E68C;
  v18[5] = v17;

  v19 = sub_2CBB80();
  sub_285EC(a5, v33);
  sub_18E6B4(v26, v31);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = v33[3];
  *(v20 + 64) = v33[2];
  *(v20 + 80) = v21;
  *(v20 + 96) = v33[4];
  v22 = v33[1];
  *(v20 + 32) = v33[0];
  *(v20 + 48) = v22;
  *(v20 + 112) = sub_18E694;
  *(v20 + 120) = v18;
  v23 = v31[1];
  *(v20 + 128) = v31[0];
  *(v20 + 144) = v23;
  *(v20 + 160) = v32;
  aBlock[4] = sub_18E724;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_3378B0;
  v24 = _Block_copy(aBlock);

  sub_2CE160();
  v29 = _swiftEmptyArrayStorage;
  sub_10101C();
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v24);

  (*(v28 + 8))(v13, v11);
  (*(v14 + 8))(v16, v27);
}

uint64_t sub_18D7F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a4;
  v44 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v42 - v16;
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  if (sub_2CBE10() == a1 && v20 == a2)
  {

LABEL_5:
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v19, v22, v10);
    v23 = sub_2CDFE0();
    v24 = sub_2CE670();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "StringsBackedAppNameResolver: resolving music localized name from Strings", v25, 2u);
    }

    (*(v11 + 8))(v19, v10);
    v26 = 0x754D20656C707041;
    v27 = 0xEB00000000636973;
    v28 = 0;
    return sub_18DD58(v28, v26, v27, v43, v44);
  }

  v42 = a6;
  v21 = sub_2CEEA0();

  if (v21)
  {
    goto LABEL_5;
  }

  if (sub_2CBE30() == a1 && v30 == a2)
  {

LABEL_15:
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v32 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v17, v32, v10);
    v33 = sub_2CDFE0();
    v34 = sub_2CE670();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "StringsBackedAppNameResolver: resolving podcasts localized name from Strings", v35, 2u);
    }

    (*(v11 + 8))(v17, v10);
    v26 = 0x6F5020656C707041;
    v27 = 0xEE00737473616364;
    v28 = 1;
    return sub_18DD58(v28, v26, v27, v43, v44);
  }

  v31 = sub_2CEEA0();

  if (v31)
  {
    goto LABEL_15;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v36 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v36, v10);
  v37 = sub_2CDFE0();
  v38 = sub_2CE670();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "StringsBackedAppNameResolver: resolving localized name from core app name resolver", v39, 2u);
  }

  (*(v11 + 8))(v14, v10);
  sub_35E0(a3, a3[3]);
  v40 = swift_allocObject();
  v40[2] = a1;
  v40[3] = a2;
  v41 = v44;
  v40[4] = v43;
  v40[5] = v41;

  sub_2CBC50();
}

uint64_t sub_18DD58(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v35 = a2;
  v34 = a1;
  v7 = sub_2CDFD0();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  v9 = __chkstk_darwin(v7);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "StringsBackedAppNameResolver: getting app name from Strings...", v19, 2u);
  }

  (*(v13 + 8))(v15, v12);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  v24 = v31;
  v23 = v32;
  v25 = v33;
  (*(v32 + 16))(v31, v11, v33);
  v26 = (*(v23 + 80) + 33) & ~*(v23 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = "stringsBackedAppNameStringsExecute";
  *(v27 + 24) = 34;
  *(v27 + 32) = 2;
  (*(v23 + 32))(v27 + v26, v24, v25);
  v28 = (v27 + ((v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_18EBA4;
  v28[1] = v20;

  v29 = sub_2CE9E0();
  sub_2CDF90(v29, &dword_0, v22, "stringsBackedAppNameStringsExecute", 34, 2, v11, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);

  sub_18E790(v37, v34 & 1, v35, v36, sub_18EBA8, v27);

  (*(v23 + 8))(v11, v25);
}

uint64_t sub_18E190(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v29 = a6;
  v27 = a3;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  v17 = a2;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v28 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v26 = a5;
    v32 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_3F08(v27, a4, &v32);
    *(v19 + 12) = 2080;
    v21 = a1;
    v30 = a1;
    v31 = v28;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v22 = sub_2CE2A0();
    v24 = sub_3F08(v22, v23, &v32);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_0, v15, v16, "StringsBackedAppNameResolver: resolved localized name for bundle: %s as %s", v19, 0x16u);
    swift_arrayDestroy();
    a5 = v26;

    v17 = v28;

    (*(v11 + 8))(v13, v10);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    v21 = a1;
  }

  return a5(v21, v17);
}

uint64_t sub_18E47C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *))
{
  v8 = *a1;
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(&v8);
}

uint64_t sub_18E588(__int128 *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

__n128 sub_18E5C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_18E5E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E970, &qword_2D2910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E750()
{

  return _swift_deallocObject(v0, 48);
}

double sub_18E790(void *a1, char a2, char *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v37 = a6;
  v38 = a5;
  v36 = a4;
  v33 = a3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C8EC0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35E0(a1 + 5, a1[8]);
  if (a2)
  {
    v16 = 0xD000000000000016;
  }

  else
  {
    v16 = 0xD000000000000013;
  }

  if (a2)
  {
    v17 = "NameStringsExecute";
  }

  else
  {
    v17 = "RESOURCE_BUTTON_LABEL";
  }

  type metadata accessor for AudioFlowDelegatePlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v32 = v16;
  v36 = sub_2CC620();
  v21 = v20;
  v33 = v17;

  (*(v13 + 8))(v15, v12);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = v34;
  v23 = sub_3ED0(v34, static Logger.default);
  swift_beginAccess();
  v24 = v35;
  (*(v35 + 16))(v11, v23, v22);

  v25 = sub_2CDFE0();
  v26 = sub_2CE690();

  v27 = v11;
  if (os_log_type_enabled(v25, v26))
  {
    v28 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v28 = 136315394;
    v29 = sub_3F08(v32, v33 | 0x8000000000000000, v39);

    *(v28 + 4) = v29;
    *(v28 + 12) = 2080;
    v30 = v36;
    *(v28 + 14) = sub_3F08(v36, v21, v39);
    _os_log_impl(&dword_0, v25, v26, "StringsBackedAppNameResolver: for input: %s found localized: %s", v28, 0x16u);
    swift_arrayDestroy();

    (*(v24 + 8))(v27, v22);
  }

  else
  {

    (*(v24 + 8))(v11, v22);
    v30 = v36;
  }

  v39[0] = v30;
  v39[1] = v21;
  v38(v39);

  return result;
}

uint64_t _s11descr32D959O21ConfirmIntentStrategyCMa(uint64_t a1)
{
  result = qword_353638;
  if (!qword_353638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18EBF8()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CE180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v8 = sub_2CBA00();
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_353730 = v8;
  return result;
}

uint64_t sub_18ED90()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CE180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v8 = sub_2CBA00();
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_353738 = v8;
  return result;
}

uint64_t sub_18EF28()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CE180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v8 = sub_2CBA00();
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_353740 = v8;
  return result;
}

uint64_t sub_18F0C0()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CE180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v8 = sub_2CBA00();
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_353748 = v8;
  return result;
}

uint64_t sub_18F258()
{
  result = sub_2CCC60();
  qword_353750 = result;
  return result;
}

uint64_t sub_18F290@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_F3F4(v1 + 192, &v4, &qword_3538C0, &qword_2D5F88);
  if (v5)
  {
    return sub_F338(&v4, a1);
  }

  sub_30B8(&v4, &qword_3538C0, &qword_2D5F88);
  sub_18F358(v1);
  sub_EEAC(a1, &v4);
  swift_beginAccess();
  sub_19532C(&v4, v1 + 192);
  return swift_endAccess();
}

uint64_t sub_18F358(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2CDFE0();
  v8 = sub_2CE690();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "AudioFlowDelegatePlugin#controlsProvider initializing ControlsFlowProvider...", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return (*(a1 + 176))(v10);
}

uint64_t sub_18F524@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_2CDC30();
  a1[4] = &protocol witness table for ControlsFlowProvider;
  sub_F390(a1);
  return sub_2CDC20();
}

uint64_t sub_18F568(uint64_t a1, unint64_t a2)
{
  v101 = *v2;
  v102 = sub_2C8E30();
  v98 = *(v102 - 8);
  v5 = __chkstk_darwin(v102);
  v91 = v6;
  v92 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v100 = &v86 - v7;
  v97 = sub_2CDFD0();
  v95 = *(v97 - 8);
  v8 = __chkstk_darwin(v97);
  v93 = v9;
  v94 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = &v86 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v104 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v99 = &v86 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v86 - v18;
  __chkstk_darwin(v17);
  v21 = &v86 - v20;
  sub_20410(&qword_352D78, &unk_2D5320);
  v22 = swift_allocBox();
  v24 = v23;
  v25 = sub_2CC950();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v90 = v19;
  v26 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v105 = *(v12 + 16);
  v106 = (v12 + 16);
  v105(v21, v26, v11);

  v27 = v21;
  v28 = sub_2CDFE0();
  v29 = sub_2CE690();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v89 = v26;
    v31 = v30;
    v32 = swift_slowAlloc();
    v103 = v22;
    v107 = v32;
    *v31 = 136446466;
    v33 = sub_2CCCC0();
    v35 = sub_3F08(v33, v34, &v107);
    v88 = v27;
    v36 = v12;
    v37 = v11;
    v38 = a1;
    v39 = a2;
    v40 = v35;

    *(v31 + 4) = v40;
    a2 = v39;
    v41 = v38;
    v11 = v37;
    v12 = v36;
    *(v31 + 12) = 2080;
    a1 = v41;
    *(v31 + 14) = sub_3F08(v41, a2, &v107);
    _os_log_impl(&dword_0, v28, v29, "AudioFlowDelegatePlugin#warmup %{public}s for refId: %s", v31, 0x16u);
    swift_arrayDestroy();
    v22 = v103;

    v26 = v89;

    v42 = *(v36 + 8);
    v42(v88, v11);
  }

  else
  {

    v42 = *(v12 + 8);
    v42(v27, v11);
  }

  if (qword_353760 && (qword_353758 == a1 && qword_353760 == a2 || (sub_2CEEA0() & 1) != 0))
  {
    v43 = v104;
    v105(v104, v26, v11);

    v44 = sub_2CDFE0();
    v45 = sub_2CE690();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = a2;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v107 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_3F08(a1, v46, &v107);
      _os_log_impl(&dword_0, v44, v45, "AudioFlowDelegatePlugin#warmup we have already done warmup for refId: %s", v47, 0xCu);
      sub_306C(v48);

      v49 = v104;
LABEL_20:
      v42(v49, v11);
    }

    goto LABEL_19;
  }

  if (qword_34BFE0 != -1)
  {
    swift_once();
  }

  if (![qword_353750 tryLock])
  {
    v43 = v99;
    v105(v99, v26, v11);

    v44 = sub_2CDFE0();
    v57 = sub_2CE690();

    if (os_log_type_enabled(v44, v57))
    {
      v58 = a2;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v107 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_3F08(a1, v58, &v107);
      _os_log_impl(&dword_0, v44, v57, "AudioFlowDelegatePlugin#warmup already in warmup. Rejecting warmup request for: %s", v59, 0xCu);
      sub_306C(v60);

      v49 = v99;
      goto LABEL_20;
    }

LABEL_19:

    v49 = v43;
    goto LABEL_20;
  }

  v103 = v22;
  v50 = v90;
  v105(v90, v26, v11);

  v51 = sub_2CDFE0();
  v52 = sub_2CE690();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v106 = v12;
    v54 = a2;
    v55 = v53;
    v56 = swift_slowAlloc();
    v107 = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_3F08(a1, v54, &v107);
    _os_log_impl(&dword_0, v51, v52, "AudioFlowDelegatePlugin#warmup aquired lock for: %s... set warmupRefID to the same", v55, 0xCu);
    sub_306C(v56);

    a2 = v54;
  }

  v42(v50, v11);
  qword_353758 = a1;
  qword_353760 = a2;

  v61 = sub_2CE9F0();
  v62 = a2;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v63 = qword_35F760;
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_2D0090;
  *(v64 + 56) = &type metadata for String;
  *(v64 + 64) = sub_1087C();
  v87 = a1;
  *(v64 + 32) = a1;
  *(v64 + 40) = v62;

  v65 = v96;
  sub_2CDFC0();
  sub_2CDF90(v61, &dword_0, v63, "audioFlowDelegatePluginWarmupEvent", 34, 2, v65, "refId=%{signpost.telemetry:string1,public}@", 43, 2, v64);

  v104 = v62;
  v66 = v95;
  v67 = *(v95 + 8);
  v105 = (v95 + 8);
  v106 = v67;
  v68 = v97;
  v67(v65, v97);
  v69 = v100;
  sub_2C8E20();
  v70 = v98;
  v71 = v92;
  v72 = v102;
  (*(v98 + 16))(v92, v69, v102);
  v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v74 = (v91 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (*(v70 + 32))(v75 + v73, v71, v72);
  *(v75 + v74) = v101;

  v76 = v63;
  sub_2CDFB0();
  v77 = v94;
  (*(v66 + 16))(v94, v65, v68);
  v78 = (*(v66 + 80) + 33) & ~*(v66 + 80);
  v79 = (v93 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  *(v80 + 16) = "audioFlowDelegatePluginWarmup";
  *(v80 + 24) = 29;
  *(v80 + 32) = 2;
  (*(v66 + 32))(v80 + v78, v77, v68);
  v81 = (v80 + v79);
  *v81 = sub_1951CC;
  v81[1] = v75;

  v82 = sub_2CE9E0();
  LOBYTE(v85) = 2;
  sub_2CDF90(v82, &dword_0, v76, "audioFlowDelegatePluginWarmup", 29, 2, v65, " enableTelemetry=YES ", 21, v85, _swiftEmptyArrayStorage);
  v83 = swift_allocObject();
  *(v83 + 16) = sub_13B2C;
  *(v83 + 24) = v80;

  sub_1906A4(sub_13BD8, v83, v87, v104, v103, v101);

  v106(v65, v68);
  (*(v70 + 8))(v100, v102);
}

id sub_1901A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C8E30();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v45 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v38[-v8];
  v44 = sub_20410(&qword_352D78, &unk_2D5320);
  v10 = __chkstk_darwin(v44);
  v43 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v38[-v12];
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  sub_F3F4(a1, v13, &qword_352D78, &unk_2D5320);
  (*(v5 + 16))(v9, a2, v4);
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  v21 = v9;
  if (os_log_type_enabled(v19, v20))
  {
    v22 = swift_slowAlloc();
    v42 = v15;
    v23 = v22;
    v40 = swift_slowAlloc();
    v46 = v40;
    *v23 = 136446722;
    v24 = sub_2CCCC0();
    v39 = v20;
    v26 = sub_3F08(v24, v25, &v46);
    v41 = v14;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    sub_F3F4(v13, v43, &qword_352D78, &unk_2D5320);
    v28 = sub_2CE2A0();
    v44 = v17;
    v29 = v4;
    v31 = v30;
    sub_30B8(v13, &qword_352D78, &unk_2D5320);
    v32 = sub_3F08(v28, v31, &v46);

    *(v23 + 14) = v32;
    *(v23 + 22) = 2048;
    v33 = v45;
    sub_2C8E20();
    sub_2C8DD0();
    v35 = v34;
    v36 = *(v5 + 8);
    v36(v33, v29);
    v36(v21, v29);
    *(v23 + 24) = v35;
    _os_log_impl(&dword_0, v19, v39, "AudioFlowDelegatePlugin#warmup %{public}s complete with code:%s in %f seconds", v23, 0x20u);
    swift_arrayDestroy();

    (*(v42 + 8))(v44, v41);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
    sub_30B8(v13, &qword_352D78, &unk_2D5320);
    (*(v15 + 8))(v17, v14);
  }

  if (qword_34BFE0 != -1)
  {
    swift_once();
  }

  return [qword_353750 unlock];
}

uint64_t sub_1906A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[0] = a6;
  v11 = sub_2CE150();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2CE180();
  v15 = *(v23 - 8);
  __chkstk_darwin(v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFC0 != -1)
  {
    swift_once();
  }

  v22[1] = qword_353730;
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a1;
  v19 = v22[0];
  v18[6] = a2;
  v18[7] = v19;
  aBlock[4] = sub_195268;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_337A68;
  v20 = _Block_copy(aBlock);

  sub_2CE160();
  v24 = _swiftEmptyArrayStorage;
  sub_E960(&qword_34FF20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80, &protocol conformance descriptor for [A]);
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v20);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v23);
}

uint64_t sub_1909DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v106 = a5;
  v107 = a4;
  v102 = a2;
  v91 = a1;
  v86 = sub_2CB6C0();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2CB850();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v8 - 8);
  v105 = &v78 - v9;
  v101 = sub_2CB700();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v95 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2CE130();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v94 = (&v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = sub_2CE1A0();
  v96 = *(v97 - 8);
  v12 = __chkstk_darwin(v97);
  v92 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v93 = &v78 - v14;
  v108 = sub_2CE000();
  v104 = *(v108 - 8);
  v15 = __chkstk_darwin(v108);
  v80 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v78 = &v78 - v17;
  v90 = sub_2CC2B0();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CE150();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_2CE180();
  v23 = *(v116 - 8);
  __chkstk_darwin(v116);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a3;
  v79 = swift_projectBox();
  v26 = dispatch_group_create();
  dispatch_group_enter(v26);
  if (qword_34BFD0 != -1)
  {
    swift_once();
  }

  v115 = qword_353740;
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v123 = sub_195290;
  v124 = v27;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_A4294;
  v122 = &unk_337AB8;
  v28 = _Block_copy(&aBlock);
  v89 = v26;
  sub_2CE160();
  v118 = _swiftEmptyArrayStorage;
  v29 = sub_E960(&qword_34FF20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v30 = sub_20410(&qword_34DD48, &qword_2D5F80);
  v111 = sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80, &protocol conformance descriptor for [A]);
  v112 = v30;
  v114 = v29;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v28);
  v31 = v22;
  v110 = *(v20 + 8);
  v110(v22, v19);
  v32 = *(v23 + 8);
  v113 = v25;
  v109 = v32;
  v32(v25, v116);

  v33 = v87;
  sub_2CC2A0();
  LOBYTE(v28) = sub_2CC270();
  (*(v88 + 8))(v33, v90);
  v90 = v20 + 8;
  v34 = v19;
  v115 = v23 + 8;
  if (v28)
  {
    v35 = v89;
    dispatch_group_enter(v89);
    if (qword_34BFD8 != -1)
    {
      swift_once();
    }

    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v123 = sub_1952A4;
    v124 = v36;
    aBlock = _NSConcreteStackBlock;
    v120 = 1107296256;
    v121 = sub_A4294;
    v122 = &unk_337B58;
    v37 = _Block_copy(&aBlock);
    v38 = v35;
    v39 = v113;
    sub_2CE160();
    v118 = _swiftEmptyArrayStorage;
    v40 = v31;
    sub_2CEC10();
    sub_2CE9C0();
    _Block_release(v37);
    v110(v31, v34);
    v41 = v116;
    v109(v39, v116);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v42 = v108;
    v43 = sub_3ED0(v108, static Logger.default);
    swift_beginAccess();
    v44 = v104;
    v45 = v78;
    (*(v104 + 16))(v78, v43, v42);
    v46 = sub_2CDFE0();
    v47 = sub_2CE670();
    v48 = os_log_type_enabled(v46, v47);
    v41 = v116;
    v40 = v31;
    if (v48)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v46, v47, "AudioFlowDelegatePlugin#warmup skipping app selection warmup on disabled platform", v49, 2u);
    }

    (*(v44 + 8))(v45, v42);
    v35 = v89;
  }

  dispatch_group_enter(v35);
  if (qword_34BFC8 != -1)
  {
    swift_once();
  }

  v50 = swift_allocObject();
  v51 = v102;
  v50[2] = v91;
  v50[3] = v51;
  v50[4] = v103;
  v50[5] = v35;
  v123 = sub_195298;
  v124 = v50;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_A4294;
  v122 = &unk_337B08;
  v52 = _Block_copy(&aBlock);
  v53 = v35;

  v54 = v113;
  sub_2CE160();
  v117 = _swiftEmptyArrayStorage;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v52);
  v110(v40, v34);
  v109(v54, v41);

  v55 = v92;
  sub_2CE190();
  v56 = v99;
  v57 = v95;
  v58 = v101;
  (*(v99 + 104))(v95, enum case for Completions.TimeoutMillis.audioFlowDelegatePluginWarmup(_:), v101);
  v59 = sub_2CB6F0();
  (*(v56 + 8))(v57, v58);
  v60 = v94;
  *v94 = v59;
  v61 = v98;
  v62 = v100;
  (*(v98 + 104))(v60, enum case for DispatchTimeInterval.milliseconds(_:), v100);
  v63 = v93;
  sub_2CE1B0();
  (*(v61 + 8))(v60, v62);
  v64 = *(v96 + 8);
  v65 = v97;
  v64(v55, v97);
  sub_2CE950();
  v64(v63, v65);
  if (sub_2CE140())
  {
    v66 = v79;
    swift_beginAccess();
    v67 = v66;
    v68 = v105;
    sub_F3F4(v67, v105, &qword_352D78, &unk_2D5320);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v69 = v108;
    v70 = sub_3ED0(v108, static Logger.default);
    swift_beginAccess();
    v71 = v104;
    v72 = v80;
    (*(v104 + 16))(v80, v70, v69);
    v73 = sub_2CDFE0();
    v74 = sub_2CE680();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_0, v73, v74, "AudioFlowDelegatePlugin#warmup timed out", v75, 2u);
      v69 = v108;
    }

    (*(v71 + 8))(v72, v69);
    (*(v81 + 104))(v82, enum case for PlaybackCode.unknown(_:), v83);
    (*(v85 + 104))(v84, enum case for DomainCode.audioFlow(_:), v86);
    v68 = v105;
    sub_2CC930();
    v76 = sub_2CC950();
    (*(*(v76 - 8) + 56))(v68, 0, 1, v76);
  }

  v107(v68);

  return sub_30B8(v68, &qword_352D78, &unk_2D5320);
}

uint64_t sub_1919BC(void *a1)
{
  v2 = sub_2CC590();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2CDFE0();
  v12 = sub_2CE690();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "AudioFlowDelegatePlugin#warmup InstalledAppProvider apps...", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  sub_2CC580();
  *(swift_allocObject() + 16) = a1;
  v14 = a1;
  sub_2CC570();

  return (*(v3 + 8))(v5, v2);
}

void sub_191C68(uint64_t a1, NSObject *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2CDFE0();
  v10 = sub_2CE690();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(a1 + 16);

    _os_log_impl(&dword_0, v9, v10, "AudioFlowDelegatePlugin#warmup InstalledAppProvider apps:%ld", v11, 0xCu);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  dispatch_group_leave(a2);
}

uint64_t sub_191E54(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2CDFE0();
  v8 = sub_2CE690();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "AudioFlowDelegatePlugin#warmup PlayMediaAppSelector...", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_2CC5C0();
  *(swift_allocObject() + 16) = a1;
  v10 = a1;
  sub_2CC5A0();
}

void sub_192058(char a1, NSObject *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2CDFE0();
  v10 = sub_2CE690();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v9, v10, "AudioFlowDelegatePlugin#warmup PlayMediaAppSelector success?:%{BOOL}d", v11, 8u);
  }

  (*(v5 + 8))(v7, v4);
  dispatch_group_leave(a2);
}

uint64_t sub_192224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2CDFE0();
  v12 = sub_2CE690();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "AudioFlowDelegatePlugin#warmup MediaPlaybackLite#warm starting...", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  sub_2CBED0();
  sub_2CBEC0();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;

  v15 = a4;
  sub_2CBEA0();
}

void sub_192458(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v28 = a3;
  v27 = sub_20410(&qword_352D78, &unk_2D5320);
  v4 = __chkstk_darwin(v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v14, v9);
  sub_F3F4(a1, v8, &qword_352D78, &unk_2D5320);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29[0] = v19;
    *v18 = 136446210;
    v26 = v13;
    sub_F3F4(v8, v6, &qword_352D78, &unk_2D5320);
    v20 = sub_2CE2A0();
    v27 = v9;
    v21 = a1;
    v23 = v22;
    sub_30B8(v8, &qword_352D78, &unk_2D5320);
    v24 = sub_3F08(v20, v23, v29);
    a1 = v21;

    *(v18 + 4) = v24;
    v13 = v26;
    _os_log_impl(&dword_0, v15, v16, "AudioFlowDelegatePlugin#warmup MediaPlaybackLite#warm complete with code:%{public}s", v18, 0xCu);
    sub_306C(v19);

    (*(v10 + 8))(v25, v27);
  }

  else
  {

    sub_30B8(v8, &qword_352D78, &unk_2D5320);
    (*(v10 + 8))(v12, v9);
  }

  swift_beginAccess();
  sub_1952BC(a1, v13, &qword_352D78, &unk_2D5320);
  dispatch_group_leave(v28);
}

uint64_t sub_1927D0(uint64_t a1)
{
  v2 = sub_2CA870();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CA7B0();
  __chkstk_darwin(v6 - 8);
  sub_20410(&qword_352490, &unk_2D4D70);
  if (qword_34BF20 != -1)
  {
    swift_once();
  }

  v14 = qword_35F500;
  v7 = qword_34BF28;

  if (v7 != -1)
  {
    swift_once();
  }

  (*(v3 + 16))(v5, a1, v2);

  sub_2CA7A0();
  sub_2CA830();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v14 = sub_2CA8A0();
  sub_72068(&qword_352498, &qword_352490, &unk_2D4D70, &protocol conformance descriptor for RCHFlow<A>);
  v8 = sub_2C97B0();

  sub_20410(&qword_3524A0, &qword_2D5F70);
  sub_2C9620();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2D0090;
  sub_2C9610();
  type metadata accessor for GuardedFlow();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = 0;
  *(v10 + 32) = v9;
  v14 = v10;
  sub_E960(&qword_3524A8, 255, type metadata accessor for GuardedFlow, &protocol conformance descriptor for GuardedFlow);
  v11 = sub_2C97B0();

  return v11;
}

uint64_t sub_192B40(uint64_t a1)
{
  v2 = sub_2CA870();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CA7B0();
  __chkstk_darwin(v6 - 8);
  sub_20410(&qword_3538A0, &qword_2D5F68);
  if (qword_34BFA0 != -1)
  {
    swift_once();
  }

  v14 = qword_35F768;
  v7 = qword_34BFA8;

  if (v7 != -1)
  {
    swift_once();
  }

  (*(v3 + 16))(v5, a1, v2);

  sub_2CA7A0();
  sub_2CA830();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v14 = sub_2CA8A0();
  sub_72068(&qword_3538A8, &qword_3538A0, &qword_2D5F68, &protocol conformance descriptor for RCHFlow<A>);
  v8 = sub_2C97B0();

  sub_20410(&qword_3524A0, &qword_2D5F70);
  sub_2C9620();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2D0090;
  sub_2C9610();
  type metadata accessor for GuardedFlow();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = 0;
  *(v10 + 32) = v9;
  v14 = v10;
  sub_E960(&qword_3524A8, 255, type metadata accessor for GuardedFlow, &protocol conformance descriptor for GuardedFlow);
  v11 = sub_2C97B0();

  return v11;
}

uint64_t sub_192EB0(char *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CA870();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = -1;
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  if (qword_34BFA0 != -1)
  {
    swift_once();
  }

  v14 = qword_35F768;

  v15 = v13;
  v16 = a1;
  sub_10B83C(a1, 0, v14, v12, v15);

  sub_2CE960();
  swift_beginAccess();
  v17 = *(v12 + 24);
  if (v17 == 255 || (v17 & 1) != 0)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = v32;
    v19 = sub_3ED0(v32, static Logger.default);
    swift_beginAccess();
    v20 = v33;
    (*(v33 + 16))(v5, v19, v18);
    v21 = sub_2CDFE0();
    v22 = sub_2CE680();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "AudioFlowDelegatePlugin#makeFlow makeIntentFromParse for UpdateMediaAffinity intent returned failure to construct intent", v23, 2u);
    }

    else
    {
    }

    (*(v20 + 8))(v5, v18);

    return 0;
  }

  else
  {
    v25 = *(v12 + 16);
    (*(v30 + 16))(v8, v16, v31);
    sub_195158(v25, 0);
    sub_2CA7A0();
    v26 = sub_2CA7B0();
    (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
    sub_195158(v25, 0);
    v27 = sub_1933A8(v16, v25);
    sub_2CA430();
    v28 = sub_193714(v11, v34, v25, v27);

    sub_A4194(v25, v17);
    sub_A4194(v25, v17);

    sub_306C(v34);
    sub_30B8(v11, &qword_34E480, &qword_2D2280);

    return v28;
  }
}

void sub_19332C(void *a1, char a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = *(a3 + 24);
  a2 &= 1u;
  *(a3 + 24) = a2;
  sub_A4194(v8, v9);
  sub_195158(a1, a2);
  dispatch_group_leave(a4);
}

uint64_t sub_1933A8(uint64_t a1, void *a2)
{
  v4 = sub_2CA870();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CA7B0();
  __chkstk_darwin(v8 - 8);
  sub_20410(&qword_3538A0, &qword_2D5F68);
  if (qword_34BFA0 != -1)
  {
    swift_once();
  }

  v18 = qword_35F768;
  v9 = qword_34BFA8;

  if (v9 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, a1, v4);

  sub_2CA7A0();
  v10 = a2;
  v18 = sub_2CA8A0();
  sub_72068(&qword_3538A8, &qword_3538A0, &qword_2D5F68, &protocol conformance descriptor for RCHFlow<A>);
  v11 = sub_2C97B0();

  sub_20410(&qword_3524A0, &qword_2D5F70);
  sub_2C9620();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2D0090;
  sub_2C9610();
  type metadata accessor for GuardedFlow();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = 0;
  *(v13 + 32) = v12;
  v18 = v13;
  sub_E960(&qword_3524A8, 255, type metadata accessor for GuardedFlow, &protocol conformance descriptor for GuardedFlow);
  v14 = sub_2C97B0();

  v18 = v14;
  sub_2C95D0();
  v15 = sub_2C97B0();

  return v15;
}

uint64_t sub_193714(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_2CC2B0();
  v53 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  sub_F3F4(a1, &v50 - v14, &qword_34E480, &qword_2D2280);
  sub_EEAC(a2, v78);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = v10;
  v17 = qword_34BFB8;

  if (v17 != -1)
  {
    swift_once();
  }

  v77[3] = &type metadata for StringsBackedAppNameResolver;
  v50 = sub_2869C();
  v77[4] = v50;
  v77[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v77[0] + 16);
  sub_2C9A00();
  v18 = v11;
  v75[3] = v11;
  v75[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v75);
  sub_2CC2A0();
  v74[3] = sub_2CC040();
  v74[4] = &protocol witness table for NowPlayingProvider;
  sub_F390(v74);
  sub_2CC030();
  v19 = sub_2CB4A0();
  v20 = sub_2CB490();
  v73[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v73[3] = v19;
  v73[0] = v20;
  v54 = type metadata accessor for AudioAppResolutionFlow(0);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input;
  v23 = sub_2CA7B0();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent;
  *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent) = 0;
  swift_beginAccess();
  v55 = v15;
  sub_1952BC(v15, v21 + v22, &qword_34E480, &qword_2D2280);
  swift_endAccess();
  v25 = *(v21 + v24);
  *(v21 + v24) = a3;

  sub_EEAC(v77, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appNameResolver);
  sub_EEAC(v76, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_aceService);
  sub_EEAC(v78, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_outputPublisher);
  v26 = (v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nextAppAcceptingFlow);
  *v26 = sub_1945D8;
  v26[1] = v16;
  sub_EEAC(v75, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_featureFlags);
  sub_EEAC(v74, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nowPlayingProvider);
  sub_EEAC(v73, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_siriKitTaskLoggingProvider);
  sub_EEAC(v77, v72);
  sub_EEAC(v76, v71);
  v27 = CATDefaultMode;
  v28 = sub_2CBC00();
  v29 = a3;
  v30 = sub_2CBBF0();
  v31 = v51;
  sub_2CC2A0();
  v32 = sub_F9A0(v72, v72[3]);
  v52 = &v50;
  __chkstk_darwin(v32);
  v34 = (&v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  type metadata accessor for CatService();
  v36 = swift_allocObject();
  v70[3] = &type metadata for StringsBackedAppNameResolver;
  v70[4] = v50;
  v37 = swift_allocObject();
  v70[0] = v37;
  v38 = v34[3];
  v37[3] = v34[2];
  v37[4] = v38;
  v37[5] = v34[4];
  v39 = v34[1];
  v37[1] = *v34;
  v37[2] = v39;
  v69[3] = v28;
  v69[4] = &protocol witness table for MorphunProvider;
  v69[0] = v30;
  v68[3] = v18;
  v68[4] = &protocol witness table for FeatureFlagProvider;
  v40 = sub_F390(v68);
  v41 = v53;
  (*(v53 + 16))(v40, v31, v18);
  *(v36 + 296) = v27;
  sub_EEAC(v68, v36 + 256);
  sub_EEAC(v70, v67);
  sub_EEAC(v69, v66);
  sub_EEAC(v71, v65);
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v42 = sub_2CCA30();

  v43 = sub_2CCA20();
  v62[3] = v42;
  v62[4] = &protocol witness table for MultiUserConnectionProvider;
  v62[0] = v43;
  v61[3] = sub_2CB9E0();
  v61[4] = &protocol witness table for DeviceProvider;
  sub_F390(v61);
  sub_2CB9C0();
  sub_EEAC(v67, v36 + 16);
  sub_EEAC(v66, v36 + 216);
  sub_EEAC(v65, v36 + 56);
  sub_EEAC(v62, v36 + 96);
  sub_EEAC(v61, v36 + 176);
  sub_F3F4(v63, &v56, qword_34C708, &qword_2D1620);
  if (v57)
  {

    sub_30B8(v63, qword_34C708, &qword_2D1620);
    sub_306C(v65);
    sub_306C(v66);
    sub_306C(v67);
    (*(v41 + 8))(v31, v18);
    sub_306C(v71);
    sub_306C(v68);
    sub_306C(v69);
    sub_306C(v70);
    sub_306C(v61);
    sub_306C(v62);
    sub_F338(&v56, &v58);
  }

  else
  {
    sub_EEAC(v65, &v58);
    v44 = sub_2C9E60();
    swift_allocObject();
    v45 = sub_2C9E50();
    v59 = v44;
    v60 = &protocol witness table for ContactsManager;

    *&v58 = v45;
    sub_30B8(v63, qword_34C708, &qword_2D1620);
    sub_306C(v65);
    sub_306C(v66);
    sub_306C(v67);
    (*(v41 + 8))(v31, v18);
    sub_306C(v71);
    sub_306C(v68);
    sub_306C(v69);
    sub_306C(v70);
    sub_306C(v61);
    sub_306C(v62);
    if (v57)
    {
      sub_30B8(&v56, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v58, v36 + 136);
  sub_306C(v72);
  *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_catService) = v36;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v46 = swift_allocObject();

  sub_306C(v76);
  sub_306C(v78);
  sub_30B8(v55, &qword_34E480, &qword_2D2280);
  sub_306C(v73);
  sub_306C(v74);
  sub_306C(v75);
  sub_306C(v77);
  v46[2] = 0xD000000000000011;
  v46[3] = 0x80000000002DA8D0;
  v46[4] = v36;
  *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_commonMediaIntentCatDialogService) = v46;
  v47 = (v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appResolutionFlowProducer);
  *v47 = sub_104BA4;
  v47[1] = 0;
  *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_state) = 0;
  v78[0] = v21;
  sub_E960(&qword_353898, 255, type metadata accessor for AudioAppResolutionFlow, &unk_2D41F0);
  v48 = sub_2C97B0();

  return v48;
}

uint64_t sub_19400C()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);
  sub_306C(v0 + 17);

  sub_30B8((v0 + 24), &qword_3538C0, &qword_2D5F88);

  return swift_deallocClassInstance();
}

uint64_t sub_1940C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_194184();
  *a1 = result;
  return result;
}

uint64_t sub_194184()
{
  v0 = sub_2CC2B0();
  v23[0] = *(v0 - 8);
  v1 = v23[0];
  __chkstk_darwin(v0);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AudioFlowProvider();
  v5 = swift_allocObject();
  v31 = v0;
  v32 = &protocol witness table for FeatureFlagProvider;
  sub_F390(v30);
  sub_2CC2A0();
  v6 = sub_2CB4A0();
  v7 = sub_2CB490();
  v28 = v6;
  v29 = &protocol witness table for SiriKitTaskLoggingProvider;
  v27[0] = v7;
  v8 = sub_2CC900();
  swift_allocObject();
  v9 = sub_2CC8F0();
  sub_2CC2A0();
  v10 = sub_2CB490();
  v32 = &off_3367A0;
  v31 = v4;
  v29 = &protocol witness table for AppleMediaServicesProvider;
  v30[0] = v5;
  v28 = v8;
  v27[0] = v9;
  v26[3] = v0;
  v26[4] = &protocol witness table for FeatureFlagProvider;
  v11 = sub_F390(v26);
  (*(v1 + 16))(v11, v3, v0);
  v25[3] = v6;
  v25[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v25[0] = v10;
  type metadata accessor for AudioFlowDelegatePlugin();
  v12 = swift_allocObject();
  v13 = sub_F9A0(v30, v31);
  __chkstk_darwin(v13);
  v15 = (v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v24[4] = &off_3367A0;
  v24[3] = v4;
  v24[0] = v17;
  *(v12 + 192) = 0u;
  *(v12 + 208) = 0u;
  *(v12 + 224) = 0;
  v18 = type metadata accessor for AceServiceExecutorProviderWrapper();
  v19 = swift_allocObject();
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 88) = 0u;
  *(v19 + 104) = 0u;
  *(v19 + 120) = 0;
  *(v19 + 16) = sub_18F51C;
  *(v19 + 24) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = sub_18F520;
  *(v19 + 80) = 0;
  v23[4] = v18;
  v23[5] = sub_E960(&qword_353890, 255, type metadata accessor for AceServiceExecutorProviderWrapper, &unk_2D5034);
  v23[1] = v19;

  sub_2CBC70();
  sub_EEAC(v24, v12 + 16);
  *(v12 + 176) = sub_18F524;
  *(v12 + 184) = 0;
  sub_EEAC(v27, v12 + 56);
  sub_EEAC(v26, v12 + 96);
  sub_EEAC(v25, v12 + 136);
  sub_2CCD80();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CCD60();

  (*(v23[0] + 8))(v3, v0);
  sub_306C(v25);
  sub_306C(v26);
  sub_306C(v27);
  sub_306C(v24);
  sub_306C(v30);
  return v12;
}

void sub_1945E4()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = sub_2CE260();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v7 = sub_2CE260();
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      sub_2CEC00();
      swift_unknownObjectRelease();
      sub_30B8(v14, &qword_34CEA0, &qword_2D0FC0);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v9 = sub_3ED0(v0, static Logger.default);
      swift_beginAccess();
      (*(v1 + 16))(v3, v9, v0);
      v10 = sub_2CDFE0();
      v11 = sub_2CE660();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v10, v11, "AudioFlowDelegatePlugin#clearExistingEndSpeechTime removing existing key", v12, 2u);
      }

      (*(v1 + 8))(v3, v0);
      v13 = sub_2CE260();
      [v6 removeObjectForKey:v13];
    }

    else
    {

      memset(v14, 0, sizeof(v14));
      sub_30B8(v14, &qword_34CEA0, &qword_2D0FC0);
    }
  }
}

uint64_t sub_1948B0(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)())
{
  v8 = sub_2CC2B0();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  sub_F3F4(a1, &v47 - v12, &qword_34E480, &qword_2D2280);
  sub_EEAC(a3, v76);
  v14 = qword_34BFB8;

  if (v14 != -1)
  {
    swift_once();
  }

  v75[3] = &type metadata for StringsBackedAppNameResolver;
  v48 = sub_2869C();
  v75[4] = v48;
  v75[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v75[0] + 16);
  sub_2C9A00();
  v73[3] = v8;
  v73[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v73);
  sub_2CC2A0();
  v15 = sub_2CB4A0();
  v16 = sub_2CB490();
  v72 = &protocol witness table for SiriKitTaskLoggingProvider;
  v71 = v15;
  *&v70 = v16;
  v51 = type metadata accessor for SiriForAirPlayFlow(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input;
  v19 = sub_2CA7B0();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = v8;
  v21 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent;
  *(v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent) = 0;
  swift_beginAccess();
  v52 = v13;
  sub_1952BC(v13, v17 + v18, &qword_34E480, &qword_2D2280);
  swift_endAccess();
  v22 = *(v17 + v21);
  *(v17 + v21) = a2;

  sub_EEAC(v76, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_outputPublisher);
  sub_EEAC(v73, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_featureFlags);
  sub_EEAC(v75, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_appNameResolver);
  sub_EEAC(v74, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_aceService);
  v23 = (v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_nextLocalFlow);
  *v23 = sub_195150;
  v23[1] = a4;
  sub_EEAC(v75, v69);
  sub_EEAC(v74, v68);
  v24 = CATDefaultMode;
  v25 = sub_2CBC00();
  v26 = a2;
  v27 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v28 = swift_allocObject();
  v29 = sub_F9A0(v69, v69[3]);
  v49 = &v47;
  __chkstk_darwin(v29);
  v31 = (&v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v67[3] = &type metadata for StringsBackedAppNameResolver;
  v67[4] = v48;
  v33 = swift_allocObject();
  v67[0] = v33;
  v34 = v31[3];
  v33[3] = v31[2];
  v33[4] = v34;
  v33[5] = v31[4];
  v35 = v31[1];
  v33[1] = *v31;
  v33[2] = v35;
  v66[3] = v25;
  v66[4] = &protocol witness table for MorphunProvider;
  v66[0] = v27;
  v65[3] = v20;
  v65[4] = &protocol witness table for FeatureFlagProvider;
  v36 = sub_F390(v65);
  v37 = v50;
  (*(v50 + 16))(v36, v10, v20);
  *(v28 + 296) = v24;
  sub_EEAC(v65, v28 + 256);
  sub_EEAC(v67, v64);
  sub_EEAC(v66, v63);
  sub_EEAC(v68, v62);
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v38 = sub_2CCA30();
  v39 = sub_2CCA20();
  v59[3] = v38;
  v59[4] = &protocol witness table for MultiUserConnectionProvider;
  v59[0] = v39;
  v58[3] = sub_2CB9E0();
  v58[4] = &protocol witness table for DeviceProvider;
  sub_F390(v58);
  sub_2CB9C0();
  sub_EEAC(v64, v28 + 16);
  sub_EEAC(v63, v28 + 216);
  sub_EEAC(v62, v28 + 56);
  sub_EEAC(v59, v28 + 96);
  sub_EEAC(v58, v28 + 176);
  sub_F3F4(v60, &v53, qword_34C708, &qword_2D1620);
  if (v54)
  {

    sub_30B8(v60, qword_34C708, &qword_2D1620);
    sub_306C(v62);
    sub_306C(v63);
    sub_306C(v64);
    (*(v37 + 8))(v10, v20);
    sub_306C(v68);
    sub_306C(v65);
    sub_306C(v66);
    sub_306C(v67);
    sub_306C(v58);
    sub_306C(v59);
    sub_F338(&v53, &v55);
  }

  else
  {
    sub_EEAC(v62, &v55);
    v40 = sub_2C9E60();
    swift_allocObject();
    v41 = sub_2C9E50();
    v56 = v40;
    v57 = &protocol witness table for ContactsManager;

    *&v55 = v41;
    sub_30B8(v60, qword_34C708, &qword_2D1620);
    sub_306C(v62);
    sub_306C(v63);
    sub_306C(v64);
    (*(v37 + 8))(v10, v20);
    sub_306C(v68);
    sub_306C(v65);
    sub_306C(v66);
    sub_306C(v67);
    sub_306C(v58);
    sub_306C(v59);
    if (v54)
    {
      sub_30B8(&v53, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v55, v28 + 136);
  sub_306C(v69);
  type metadata accessor for PlayMediaCatDialogService();
  v42 = swift_allocObject();
  v42[5] = 0x6964654D79616C50;
  v42[6] = 0xEF746E65746E4961;
  v42[2] = 0xD000000000000011;
  v42[3] = 0x80000000002DA8D0;
  v42[4] = v28;
  *(v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_playMediaCatDialogService) = v42;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v43 = swift_allocObject();
  v43[2] = 0xD000000000000011;
  v43[3] = 0x80000000002DA8D0;
  v43[4] = v28;
  *(v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_commonMediaIntentCatDialogService) = v43;
  sub_2C9C10();
  swift_allocObject();

  v44 = sub_2C9BF0();
  sub_306C(v74);
  sub_306C(v76);
  sub_30B8(v52, &qword_34E480, &qword_2D2280);
  sub_306C(v73);
  sub_306C(v75);
  *(v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_viewFactory) = v44;
  sub_F338(&v70, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_siriKitTaskLoggingProvider);
  v76[0] = v17;
  sub_E960(&qword_351318, 255, type metadata accessor for SiriForAirPlayFlow, &unk_2D2BC8);
  v45 = sub_2C97B0();

  return v45;
}

id sub_195158(void *a1, char a2)
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

uint64_t sub_195164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1951CC(uint64_t a1)
{
  v3 = *(sub_2C8E30() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1901A8(a1, v4);
}

uint64_t sub_195278(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1952BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_20410(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_19532C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_3538C0, &qword_2D5F88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1953FC(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 40);
    do
    {
      if (*v4)
      {
        if (a2)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && *(v4 - 1) == a1)
      {
        return 1;
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return 0;
}

BOOL sub_195444(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1954B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_1B7EB0(a4, a5, a6);
  }

  while ((sub_2CE250() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_1955C0(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_2CDD00();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34DA20, &qword_2D1900);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v30 = &v23 - v8;
  v25 = sub_20410(&qword_353CB8, &qword_2D60A0);
  __chkstk_darwin(v25);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = (v4 + 48);
  v23 = (v4 + 32);
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  v27 = (v4 + 8);
  v28 = v14;
  v15 = v25;
  while (1)
  {
    v16 = *(v15 + 48);
    sub_F3F4(v13, v10, &qword_34DA20, &qword_2D1900);
    sub_F3F4(v29, &v10[v16], &qword_34DA20, &qword_2D1900);
    v17 = *v12;
    if ((*v12)(v10, 1, v3) == 1)
    {
      break;
    }

    sub_F3F4(v10, v30, &qword_34DA20, &qword_2D1900);
    if (v17(&v10[v16], 1, v3) == 1)
    {
      (*v27)(v30, v3);
      goto LABEL_4;
    }

    v18 = v24;
    (*v23)(v24, &v10[v16], v3);
    sub_1B7EB0(&qword_353CC0, &type metadata accessor for DeviceType, &protocol conformance descriptor for DeviceType);
    v26 = sub_2CE250();
    v19 = v12;
    v20 = *v27;
    v21 = v18;
    v15 = v25;
    (*v27)(v21, v3);
    v20(v30, v3);
    v12 = v19;
    sub_30B8(v10, &qword_34DA20, &qword_2D1900);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v13 += v28;
    if (!--v11)
    {
      return 0;
    }
  }

  if (v17(&v10[v16], 1, v3) != 1)
  {
LABEL_4:
    sub_30B8(v10, &qword_353CB8, &qword_2D60A0);
    goto LABEL_5;
  }

  sub_30B8(v10, &qword_34DA20, &qword_2D1900);
  return 1;
}

uint64_t sub_1959CC(uint64_t a1, char *a2, char *a3)
{
  v51 = a2;
  v56 = a1;
  v5 = sub_2CE000();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v59 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = sub_112C0(_swiftEmptyArrayStorage);
  v54 = v3[2];
  v55 = v14;
  v15 = v3[13];
  v48 = v3[14];
  v60 = 0x80000000002DEA30;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v57 = v8;
  v58 = v7;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = v51;
  v20[1] = a3;

  v21 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v50 = v15;
  *(v22 + 32) = v15;
  v24 = v48;
  *(v22 + 40) = v48;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0xD000000000000019;
  *(v22 + 80) = v60;

  LOBYTE(v45) = 2;
  v51 = v13;
  sub_2CDF90(v21, &dword_0, v16, "catServiceExecute", 17, 2, v13, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v45, v22);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13CD4;
  *(v25 + 24) = v19;
  v49 = v25;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v53;
  v28 = sub_3ED0(v53, static Logger.default);
  swift_beginAccess();
  v29 = v52;
  v30 = v59;
  (*(v52 + 16))(v59, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v50;
    *(v33 + 4) = sub_3F08(v50, v24, &v61);
    *(v33 + 12) = 2080;
    v35 = v60;
    *(v33 + 14) = sub_3F08(0xD000000000000019, v60, &v61);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v59, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v60;
    v34 = v50;
  }

  v61 = v34;
  v62 = v24;

  v65._countAndFlagsBits = 35;
  v65._object = 0xE100000000000000;
  sub_2CE350(v65);
  v66._countAndFlagsBits = 0xD000000000000019;
  v66._object = v35;
  sub_2CE350(v66);
  v37 = v61;
  v36 = v62;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13D84;
  v40[4] = v49;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v55;
  *(&v47 - 10) = v54;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v56;
  *(&v47 - 7) = v63;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v37;
  v44 = v36;
  v45 = sub_3E010;
  v46 = v40;

  sub_2CB0F0();

  (*(v57 + 8))(v51, v58);
  return sub_30B8(v63, &qword_34C6C0, &qword_2D0710);
}

id sub_196098()
{
  v0 = sub_2CA3C0();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for BehaviorAfterSpeaking.defaultBehavior(_:));
  sub_2CA0B0();
  v3 = [objc_allocWithZone(DialogExecutionResult) init];
  v4 = sub_2CE260();
  [v3 setCatId:v4];

  v5 = [objc_allocWithZone(DialogElement) init];
  v6 = sub_2CE260();
  [v5 setId:v6];

  sub_20410(&unk_351900, &unk_2D0960);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2D0770;
  *(v7 + 32) = v5;
  sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
  v8 = v5;
  isa = sub_2CE400().super.isa;

  [v3 setDialog:isa];

  return v3;
}

uint64_t sub_1962B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_112C0(_swiftEmptyArrayStorage);
  v12[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v12[4] = &off_3381B8;
  v12[0] = a2;
  v10 = a2;
  sub_24763C(v9, a1, v12, a4, a5);

  return sub_30B8(v12, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_19636C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6)
{
  v12 = sub_2CE000();
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = __chkstk_darwin(v12);
  v75 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v81 = &v68 - v15;
  v80 = sub_2CC760();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v74 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20410(&qword_34FCB0, &unk_2D8580);
  __chkstk_darwin(v17);
  v79 = &v68 - v18;
  v19 = sub_20410(&qword_34FCB8, &unk_2D3580);
  v20 = __chkstk_darwin(v19 - 8);
  v77 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v68 - v23;
  __chkstk_darwin(v22);
  v26 = &v68 - v25;
  v76 = a3;
  if (sub_2CE7E0())
  {
    return sub_3D150(a1, a2, a5, a6);
  }

  v73 = a6;
  v72 = a1;
  if ((sub_1A0498(a2, a4) & 1) == 0)
  {
    v71 = a4;
    v70 = a5;
    v69 = a2;
    sub_2CCF90();
    v28 = sub_2CBDB0();

    if ((v28 & 1) == 0)
    {
      sub_2CC8E0();
      sub_2CBC60();
      sub_35E0(&v87, *(&v88 + 1));
      sub_2CBE60();
      sub_306C(&v87);
      v29 = sub_2CC8D0();

      if (v29)
      {
        sub_2CC8B0();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v32 = v79;
      v31 = v80;
      v33 = v78;
      v34 = *(v78 + 56);
      v34(v26, v30, 1, v80);
      (*(v33 + 104))(v24, enum case for AirPlayRouteSetupState.error(_:), v31);
      v34(v24, 0, 1, v31);
      v35 = *(v17 + 48);
      sub_F3F4(v26, v32, &qword_34FCB8, &unk_2D3580);
      sub_F3F4(v24, v32 + v35, &qword_34FCB8, &unk_2D3580);
      v36 = *(v33 + 48);
      if (v36(v32, 1, v31) == 1)
      {
        sub_30B8(v24, &qword_34FCB8, &unk_2D3580);
        sub_30B8(v26, &qword_34FCB8, &unk_2D3580);
        if (v36(v32 + v35, 1, v31) == 1)
        {
          sub_30B8(v32, &qword_34FCB8, &unk_2D3580);
LABEL_27:
          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v59 = v83;
          v60 = sub_3ED0(v83, static Logger.default);
          swift_beginAccess();
          v61 = v82;
          v62 = v75;
          (*(v82 + 16))(v75, v60, v59);
          v63 = sub_2CDFE0();
          v64 = sub_2CE670();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_0, v63, v64, "PlayMediaDialogProvider#makeFailureHandlingIntentDialog returning AirPlay error for SFA request", v65, 2u);
          }

          (*(v61 + 8))(v62, v59);
          v66 = sub_112C0(_swiftEmptyArrayStorage);
          *(&v88 + 1) = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
          v89 = &off_3381B8;
          *&v87 = v76;
          v67 = v76;
          sub_251318(v66, v69, &v87, v70, v73);
LABEL_24:

          return sub_30B8(&v87, &qword_34C6C0, &qword_2D0710);
        }

        goto LABEL_14;
      }

      v37 = v77;
      sub_F3F4(v32, v77, &qword_34FCB8, &unk_2D3580);
      if (v36(v32 + v35, 1, v31) == 1)
      {
        sub_30B8(v24, &qword_34FCB8, &unk_2D3580);
        sub_30B8(v26, &qword_34FCB8, &unk_2D3580);
        (*(v33 + 8))(v37, v31);
LABEL_14:
        sub_30B8(v32, &qword_34FCB0, &unk_2D8580);
        goto LABEL_15;
      }

      v57 = v74;
      (*(v33 + 32))(v74, v32 + v35, v31);
      sub_1B7EB0(&qword_34FCC8, &type metadata accessor for AirPlayRouteSetupState, &protocol conformance descriptor for AirPlayRouteSetupState);
      LODWORD(v80) = sub_2CE250();
      v58 = *(v33 + 8);
      v58(v57, v31);
      sub_30B8(v24, &qword_34FCB8, &unk_2D3580);
      sub_30B8(v26, &qword_34FCB8, &unk_2D3580);
      v58(v37, v31);
      sub_30B8(v32, &qword_34FCB8, &unk_2D3580);
      if (v80)
      {
        goto LABEL_27;
      }
    }

LABEL_15:
    v38 = &selRef_hasTwoOrMoreRooms;
    [v71 code];
    v39 = INPlayMediaIntentResponseCodeGetName();
    v40 = sub_2CE270();
    v42 = v41;

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v43 = v83;
    v44 = sub_3ED0(v83, static Logger.default);
    swift_beginAccess();
    v45 = v81;
    v46 = v82;
    (*(v82 + 16))(v81, v44, v43);

    v47 = sub_2CDFE0();
    v48 = sub_2CE670();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = v45;
      v51 = swift_slowAlloc();
      *&v87 = v51;
      *v49 = 136315138;
      *(v49 + 4) = sub_3F08(v40, v42, &v87);
      _os_log_impl(&dword_0, v47, v48, "PlayMediaDialogProvider#makeFailureHandlingIntentDialog with code: %s", v49, 0xCu);
      sub_306C(v51);

      v52 = v50;
      v38 = &selRef_hasTwoOrMoreRooms;
      (*(v46 + 8))(v52, v43);
    }

    else
    {

      (*(v46 + 8))(v45, v43);
    }

    v53 = v73;
    v86 = v72;
    v85 = &type metadata for String;
    *&v84 = v40;
    *(&v84 + 1) = v42;

    sub_270DC4(&v84, 1701080931, 0xE400000000000000, &v87);
    sub_30B8(&v87, &qword_34CEA0, &qword_2D0FC0);
    if (sub_2CB640())
    {
      v54 = 1;
    }

    else
    {
      v54 = sub_2CB650();
    }

    v85 = &type metadata for Bool;
    LOBYTE(v84) = v54 & 1;
    sub_270DC4(&v84, 0xD000000000000010, 0x80000000002DEA50, &v87);
    sub_30B8(&v87, &qword_34CEA0, &qword_2D0FC0);
    v55 = [v71 v38[27]];
    type metadata accessor for INPlayMediaIntentResponseCode(0);
    v85 = v56;
    *&v84 = v55;
    sub_270DC4(&v84, 0xD000000000000012, 0x80000000002DEA70, &v87);
    sub_30B8(&v87, &qword_34CEA0, &qword_2D0FC0);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    sub_243394(v86, v69, &v87, v70, v53);
    goto LABEL_24;
  }

  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_242D10(v72, a2, &v87, a5, v73);
  return sub_30B8(&v87, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_196E80(uint64_t a1, void *a2, char *a3, char *a4, char *a5)
{
  v6 = v5;
  v118 = a1;
  v119 = a5;
  v104 = *v6;
  v105 = a3;
  v100 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v100);
  v101 = &v97 - v9;
  v10 = sub_2C98F0();
  v115 = *(v10 - 8);
  v116 = v10;
  v11 = __chkstk_darwin(v10);
  v98 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v97 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v15 = __chkstk_darwin(v14 - 8);
  v99 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v97 - v17;
  v18 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v19 = __chkstk_darwin(v18 - 8);
  v103 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v117 = &v97 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v23 = __chkstk_darwin(v22 - 8);
  v102 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v97 - v25;
  v27 = sub_2CCB20();
  v113 = *(v27 - 8);
  v114 = v27;
  __chkstk_darwin(v27);
  v110 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CCB30();
  v111 = *(v29 - 8);
  v112 = v29;
  __chkstk_darwin(v29);
  v108 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_2CCAC0();
  v31 = *(v109 - 8);
  __chkstk_darwin(v109);
  v33 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2CE000();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v97 - v39;
  v120 = a2;
  v121 = a2;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (sub_2CC120())
  {
    v105 = a4;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v104 = v26;
    v41 = sub_3ED0(v34, static Logger.default);
    swift_beginAccess();
    (*(v35 + 16))(v40, v41, v34);
    v42 = sub_2CDFE0();
    v43 = sub_2CE690();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "PlayMediaDialogProvider#makeIntentHandledDialog User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v44, 2u);
    }

    (*(v35 + 8))(v40, v34);
    v45 = v109;
    (*(v31 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.pmdp(_:), v109);
    v47 = v111;
    v46 = v112;
    v48 = v108;
    (*(v111 + 104))(v108, enum case for AdditionalMetricsDescription.SourceFunction.postHandleDlg(_:), v112);
    v50 = v113;
    v49 = v114;
    v51 = v110;
    (*(v113 + 104))(v110, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v114);
    v102 = sub_2CCAD0();
    v103 = v52;
    (*(v50 + 8))(v51, v49);
    (*(v47 + 8))(v48, v46);
    (*(v31 + 8))(v33, v45);
    v114 = sub_35E0(v6 + 31, v6[34]);
    v53 = enum case for ActivityType.completed(_:);
    v54 = sub_2C9C20();
    v55 = *(v54 - 8);
    v56 = v104;
    (*(v55 + 104))(v104, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    v57 = v117;

    v58 = sub_2CA130();
    (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
    v59 = v115;
    v60 = v116;
    v61 = *(v115 + 104);
    v62 = v106;
    v61(v106, enum case for SiriKitReliabilityCodes.success(_:), v116);
    if (sub_2CE740())
    {
      (*(v59 + 8))(v62, v60);
      v63 = v107;
      v61(v107, enum case for SiriKitReliabilityCodes.ampServerError(_:), v60);
    }

    else
    {
      v63 = v107;
      (*(v59 + 32))(v107, v62, v60);
    }

    (*(v59 + 56))(v63, 0, 1, v60);
    sub_2CE710();
    v92 = v117;
    v91 = v118;
    sub_2CB4E0();

    sub_30B8(v63, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v92, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v56, &qword_34CB88, &unk_2D0D90);
    return sub_1959CC(v91, v105, v119);
  }

  else
  {
    sub_35E0(v6 + 16, v6[19]);
    if ((sub_2CC430() & 1) != 0 && (sub_2CB640() & 1) == 0 && sub_2CE810())
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v105 = a4;
      v64 = sub_3ED0(v34, static Logger.default);
      swift_beginAccess();
      (*(v35 + 16))(v38, v64, v34);
      v65 = sub_2CDFE0();
      v66 = sub_2CE690();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_0, v65, v66, "PlayMediaDialogProvider#makeIntentHandledDialog suppressing dialog: pym enabled, not-CarPlay, and new playback producing - no templating dialog", v67, 2u);
      }

      (*(v35 + 8))(v38, v34);
      v68 = v109;
      (*(v31 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.pmdp(_:), v109);
      v70 = v111;
      v69 = v112;
      v71 = v108;
      (*(v111 + 104))(v108, enum case for AdditionalMetricsDescription.SourceFunction.postHandleDlg(_:), v112);
      v73 = v113;
      v72 = v114;
      v74 = v110;
      (*(v113 + 104))(v110, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v114);
      v107 = sub_2CCAD0();
      v117 = v75;
      (*(v73 + 8))(v74, v72);
      (*(v70 + 8))(v71, v69);
      (*(v31 + 8))(v33, v68);
      sub_35E0(v6 + 31, v6[34]);
      v76 = enum case for ActivityType.completed(_:);
      v77 = sub_2C9C20();
      v78 = *(v77 - 8);
      v79 = v102;
      (*(v78 + 104))(v102, v76, v77);
      (*(v78 + 56))(v79, 0, 1, v77);
      v80 = v103;

      v81 = sub_2CA130();
      (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
      v83 = v115;
      v82 = v116;
      v84 = *(v115 + 104);
      v85 = v98;
      v84(v98, enum case for SiriKitReliabilityCodes.success(_:), v116);
      if (sub_2CE740())
      {
        (*(v83 + 8))(v85, v82);
        v86 = v99;
        v84(v99, enum case for SiriKitReliabilityCodes.ampServerError(_:), v82);
      }

      else
      {
        v86 = v99;
        (*(v83 + 32))(v99, v85, v82);
      }

      (*(v83 + 56))(v86, 0, 1, v82);
      sub_2CE710();
      v93 = v102;
      v94 = v103;
      sub_2CB4E0();

      sub_30B8(v86, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v94, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v93, &qword_34CB88, &unk_2D0D90);
      v95 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
      v96 = v101;
      *(v96 + v95) = sub_196098();
      swift_storeEnumTagMultiPayload();
      (v105)(v96);
      return sub_30B8(v96, &unk_3519A0, &qword_2D0980);
    }

    else
    {

      v87 = v118;

      v88 = v120;

      return sub_197D48(0, v87, v88, v105, v6, v6, v87, v88, a4, v89, v104);
    }
  }
}

uint64_t sub_197D48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1B137C(a1, a2, a3, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_197DC8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v106 = a3;
  v5 = sub_20410(&qword_34E000, &qword_2D1D48);
  __chkstk_darwin(v5 - 8);
  v7 = &v94 - v6;
  v109 = sub_2C8E30();
  v103 = *(v109 - 8);
  v8 = __chkstk_darwin(v109);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v102 = &v94 - v11;
  __chkstk_darwin(v10);
  v108 = &v94 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v94 - v19;
  v21 = __chkstk_darwin(v18);
  v107 = &v94 - v22;
  v23 = __chkstk_darwin(v21);
  v105 = &v94 - v24;
  __chkstk_darwin(v23);
  v26 = &v94 - v25;
  v27 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v27 - 8);
  v29 = &v94 - v28;
  v30 = sub_2CBF80();
  v111 = *(v30 - 8);
  v112 = v30;
  __chkstk_darwin(v30);
  v110 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2CE730() & 1) != 0 && (v32 = sub_2CCF90(), v33))
  {
    v34 = v32;
    v35 = v33;
    sub_F3F4(a4, v29, &qword_34DD30, &unk_2D1BC0);
    v37 = v111;
    v36 = v112;
    if ((*(v111 + 48))(v29, 1, v112) == 1)
    {

      sub_30B8(v29, &qword_34DD30, &unk_2D1BC0);
LABEL_16:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v48 = sub_3ED0(v13, static Logger.default);
      swift_beginAccess();
      (*(v14 + 16))(v20, v48, v13);
      v49 = sub_2CDFE0();
      v50 = sub_2CE670();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_0, v49, v50, "PlayMediaDialogProvider#appSpecified false as no app selection report, or it wasn't used", v51, 2u);
      }

      (*(v14 + 8))(v20, v13);
      v42 = 0;
      return v42 & 1;
    }

    v101 = v34;
    v43 = v110;
    (*(v37 + 32))(v110, v29, v36);
    if ((sub_2CBEE0() & 1) == 0)
    {
      (*(v37 + 8))(v43, v36);

      goto LABEL_16;
    }

    sub_35E0(v106, *(v106 + 3));
    v45 = sub_2CC470();
    v46 = v44;
    if (v44)
    {
      if (v101 == v45 && v35 == v44)
      {
        v47 = 1;
      }

      else
      {
        v47 = sub_2CEEA0();
      }
    }

    else
    {
      v47 = 0;
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v52 = sub_3ED0(v13, static Logger.default);
    swift_beginAccess();
    v53 = *(v14 + 16);
    v100 = v52;
    v99 = v14 + 16;
    v98 = v53;
    v53(v26, v52, v13);

    v54 = sub_2CDFE0();
    v55 = sub_2CE670();

    v56 = os_log_type_enabled(v54, v55);
    v97 = v47;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v95 = v45;
      v58 = v57;
      v96 = swift_slowAlloc();
      v114 = v96;
      *v58 = 67109634;
      *(v58 + 4) = v47 & 1;
      *(v58 + 8) = 2080;
      v59 = sub_3F08(v101, v35, &v114);

      *(v58 + 10) = v59;
      *(v58 + 18) = 2080;
      v113[0] = v95;
      v113[1] = v46;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v60 = sub_2CE2A0();
      v62 = sub_3F08(v60, v61, &v114);

      *(v58 + 20) = v62;
      _os_log_impl(&dword_0, v54, v55, "PlayMediaDialogProvider#appSpecified sameBundlePass:%{BOOL}d -- current:%s, previous: %s", v58, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

    v101 = *(v14 + 8);
    v101(v26, v13);
    v63 = v109;
    v64 = v105;
    sub_35E0(v106, *(v106 + 3));
    sub_2CC450();
    v65 = v103;
    v66 = *(v103 + 48);
    if (v66(v7, 1, v63) == 1)
    {
      v67 = v108;
      sub_2C8DF0();
      if (v66(v7, 1, v63) != 1)
      {
        sub_30B8(v7, &qword_34E000, &qword_2D1D48);
      }
    }

    else
    {
      v67 = v108;
      (*(v65 + 32))(v108, v7, v63);
    }

    v68 = v102;
    sub_2C8E20();
    sub_2C8DD0();
    v70 = v69;
    v106 = *(v65 + 8);
    v106(v68, v63);
    sub_2CCC40();
    v72 = v71;
    v98(v64, v100, v13);
    v73 = *(v65 + 16);
    v74 = v104;
    v73(v104, v67, v63);
    v75 = sub_2CDFE0();
    v76 = sub_2CE670();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v113[0] = v78;
      *v77 = 67109890;
      *(v77 + 4) = v70 < v72;
      *(v77 + 8) = 2080;
      sub_1B7EB0(&qword_353CA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v79 = sub_2CEE70();
      v81 = v80;
      v82 = v74;
      v83 = v106;
      v106(v82, v109);
      v84 = sub_3F08(v79, v81, v113);
      v63 = v109;

      *(v77 + 10) = v84;
      *(v77 + 18) = 2048;
      *(v77 + 20) = v70;
      *(v77 + 28) = 2048;
      sub_2CCC40();
      *(v77 + 30) = v85;
      _os_log_impl(&dword_0, v75, v76, "PlayMediaDialogProvider#appSpecified appSelectionUseIntervalPass:%{BOOL}d -- last:%s, interval:%fs, window:%fs", v77, 0x26u);
      sub_306C(v78);

      v86 = v105;
    }

    else
    {

      v87 = v74;
      v83 = v106;
      v106(v87, v63);
      v86 = v64;
    }

    v101(v86, v13);
    v88 = v110;
    v89 = v97;
    v42 = v97 ^ 1 | (v70 >= v72);
    v98(v107, v100, v13);
    v90 = sub_2CDFE0();
    v91 = sub_2CE660();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 67109632;
      *(v92 + 4) = v42 & 1;
      *(v92 + 8) = 1024;
      v63 = v109;
      *(v92 + 10) = v89 & 1;
      *(v92 + 14) = 1024;
      *(v92 + 16) = v70 < v72;
      _os_log_impl(&dword_0, v90, v91, "PlayMediaDialogProvider#appSpecified %{BOOL}d as sameBundlePass:%{BOOL}d, appSelectionUseIntervalPass:%{BOOL}d", v92, 0x14u);
      v88 = v110;
    }

    v101(v107, v13);
    v83(v108, v63);
    (*(v111 + 8))(v88, v112);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v38 = sub_3ED0(v13, static Logger.default);
    swift_beginAccess();
    (*(v14 + 16))(v17, v38, v13);
    v39 = sub_2CDFE0();
    v40 = sub_2CE670();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "PlayMediaDialogProvider#appSpecified true as reflecting specified app", v41, 2u);
    }

    (*(v14 + 8))(v17, v13);
    v42 = 1;
  }

  return v42 & 1;
}

uint64_t sub_198AAC(uint64_t a1, void *a2, char *a3, char *a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v8 = [a2 privatePlayMediaIntentData];
  v9 = [v8 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v10.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v9)
  {
    v11 = sub_2CEB30();

    v10.super.super.isa = v9;
  }

  else
  {
    v11 = 0;
  }

  *(inited + 48) = v11 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000021;
  *(inited + 88) = 0x80000000002DEA00;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  v12 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v16[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v16[4] = &off_3381B8;
  v16[0] = a2;
  v13 = a2;
  sub_24267C(v12, a1, v16, a3, a4);

  return sub_30B8(v16, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_198CC0(uint64_t a1, void *a2, char *a3, char *a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1010;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v8 = [a2 privatePlayMediaIntentData];
  v9 = [v8 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v10.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v9)
  {
    v11 = sub_2CEB30();

    v10.super.super.isa = v9;
  }

  else
  {
    v11 = 0;
  }

  *(inited + 48) = v11 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x676E6F537369;
  *(inited + 88) = 0xE600000000000000;
  v12 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  *(inited + 96) = sub_2CBFA0() == 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6D75626C417369;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = sub_2CBFA0() == 2;
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "noLiveVersion");
  *(inited + 190) = -4864;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v13 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v17[3] = v12;
  v17[4] = &off_3381B8;
  v17[0] = a2;
  v14 = a2;
  sub_24267C(v13, a1, v17, a3, a4);

  return sub_30B8(v17, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_198F58(uint64_t a1, void *a2, char *a3, char *a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1010;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v8 = [a2 privatePlayMediaIntentData];
  v9 = [v8 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v10.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v9)
  {
    v11 = sub_2CEB30();

    v10.super.super.isa = v9;
  }

  else
  {
    v11 = 0;
  }

  *(inited + 48) = v11 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x676E6F537369;
  *(inited + 88) = 0xE600000000000000;
  v12 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  *(inited + 96) = sub_2CBFA0() == 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6D75626C417369;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = sub_2CBFA0() == 2;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x80000000002DE9E0;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v13 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v17[3] = v12;
  v17[4] = &off_3381B8;
  v17[0] = a2;
  v14 = a2;
  sub_24267C(v13, a1, v17, a3, a4);

  return sub_30B8(v17, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1991E8(uint64_t a1, void *a2, char *a3, char *a4)
{
  v22 = a3;
  v23 = a4;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D5F90;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v7 = [a2 privatePlayMediaIntentData];
  v8 = [v7 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v9.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v8)
  {
    v10 = sub_2CEB30();

    v9.super.super.isa = v8;
  }

  else
  {
    v10 = 0;
  }

  *(inited + 48) = v10 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x676E6F537369;
  *(inited + 88) = 0xE600000000000000;
  v11 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  *(inited + 96) = sub_2CBFA0() == 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6D75626C417369;
  *(inited + 136) = 0xE700000000000000;
  v24[0] = a2;
  *(inited + 144) = sub_2CBFA0() == 2;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x747369747261;
  *(inited + 184) = 0xE600000000000000;
  v12 = [a2 mediaSearch];
  if (!v12 || (v13 = v12, v14 = [v12 artistName], v13, !v14))
  {
    v18 = (inited + 192);
    *(inited + 216) = &type metadata for String;
    goto LABEL_9;
  }

  v15 = sub_2CE270();
  v17 = v16;

  v18 = (inited + 192);
  *(inited + 216) = &type metadata for String;
  if (!v17)
  {
LABEL_9:
    *v18 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_10;
  }

  *v18 = v15;
LABEL_10:
  *(inited + 200) = v17;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000000002DE9C0;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v19 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v24[3] = v11;
  v24[4] = &off_3381B8;
  v24[0] = a2;
  v20 = a2;
  sub_24267C(v19, a1, v24, v22, v23);

  return sub_30B8(v24, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_19950C(uint64_t a1, void *a2, char *a3, char *a4)
{
  v22 = a3;
  v23 = a4;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D5F90;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v7 = [a2 privatePlayMediaIntentData];
  v8 = [v7 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v9.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v8)
  {
    v10 = sub_2CEB30();

    v9.super.super.isa = v8;
  }

  else
  {
    v10 = 0;
  }

  *(inited + 48) = v10 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x676E6F537369;
  *(inited + 88) = 0xE600000000000000;
  v11 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  *(inited + 96) = sub_2CBFA0() == 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6D75626C417369;
  *(inited + 136) = 0xE700000000000000;
  v24[0] = a2;
  *(inited + 144) = sub_2CBFA0() == 2;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x747369747261;
  *(inited + 184) = 0xE600000000000000;
  v12 = [a2 mediaSearch];
  if (!v12 || (v13 = v12, v14 = [v12 artistName], v13, !v14))
  {
    v18 = (inited + 192);
    *(inited + 216) = &type metadata for String;
    goto LABEL_9;
  }

  v15 = sub_2CE270();
  v17 = v16;

  v18 = (inited + 192);
  *(inited + 216) = &type metadata for String;
  if (!v17)
  {
LABEL_9:
    *v18 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_10;
  }

  *v18 = v15;
LABEL_10:
  *(inited + 200) = v17;
  strcpy((inited + 224), "noMoreResults");
  *(inited + 238) = -4864;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v19 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v24[3] = v11;
  v24[4] = &off_3381B8;
  v24[0] = a2;
  v20 = a2;
  sub_24267C(v19, a1, v24, v22, v23);

  return sub_30B8(v24, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_199838(uint64_t a1, void *a2, char *a3, char *a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0xD00000000000001ELL;
  v9 = inited + 32;
  *(inited + 40) = 0x80000000002DE9A0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v10 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(v9, &qword_34CBA0, &unk_2D0FE0);
  v13[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v13[4] = &off_3381B8;
  v13[0] = a2;
  v11 = a2;
  sub_24267C(v10, a1, v13, a3, a4);

  return sub_30B8(v13, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_199978(uint64_t a1, void *a2, char *a3, char *a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0xD000000000000012;
  v9 = inited + 32;
  *(inited + 40) = 0x80000000002DE980;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v10 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(v9, &qword_34CBA0, &unk_2D0FE0);
  v13[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v13[4] = &off_3381B8;
  v13[0] = a2;
  v11 = a2;
  sub_24267C(v10, a1, v13, a3, a4);

  return sub_30B8(v13, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_199AB8(uint64_t a1, void *a2, char *a3, char *a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0xD000000000000018;
  v9 = inited + 32;
  *(inited + 40) = 0x80000000002DE960;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v10 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(v9, &qword_34CBA0, &unk_2D0FE0);
  v13[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v13[4] = &off_3381B8;
  v13[0] = a2;
  v11 = a2;
  sub_24267C(v10, a1, v13, a3, a4);

  return sub_30B8(v13, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_199BF8(uint64_t a1, void *a2, char *a3, char *a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1010;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v8 = [a2 privatePlayMediaIntentData];
  v9 = [v8 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v10.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v9)
  {
    v11 = sub_2CEB30();

    v10.super.super.isa = v9;
  }

  else
  {
    v11 = 0;
  }

  *(inited + 48) = v11 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 1448375145;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = sub_2CB630() & 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6F50656D6F487369;
  *(inited + 136) = 0xE900000000000064;
  *(inited + 144) = sub_2CB650() & 1;
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "nothingPlaying");
  *(inited + 191) = -18;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v12 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v16[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v16[4] = &off_3381B8;
  v16[0] = a2;
  v13 = a2;
  sub_24267C(v12, a1, v16, a3, a4);

  return sub_30B8(v16, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_199E60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v13 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v16[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v16[4] = &off_3381B8;
  v16[0] = a4;
  v14 = a4;
  sub_247CC0(v13, a1, v16, a5, a6);

  return sub_30B8(v16, &qword_34C6C0, &qword_2D0710);
}

double sub_199FB8(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7)
{
  v243 = a6;
  v244 = a7;
  v249 = a3;
  v11 = sub_20410(&qword_353CD0, &qword_2D60B8);
  __chkstk_darwin(v11 - 8);
  v219 = &v217 - v12;
  v224 = sub_2CB850();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v221 = &v217 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v14 - 8);
  v240 = &v217 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v16 - 8);
  v239 = &v217 - v17;
  v18 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v18 - 8);
  v238 = &v217 - v19;
  v237 = sub_2CCB30();
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v234 = &v217 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_2CCAC0();
  v21 = *(v235 - 8);
  __chkstk_darwin(v235);
  v23 = &v217 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v220 = &v217 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v222 = &v217 - v29;
  v30 = __chkstk_darwin(v28);
  v217 = &v217 - v31;
  v32 = __chkstk_darwin(v30);
  v218 = &v217 - v33;
  v34 = __chkstk_darwin(v32);
  v225 = &v217 - v35;
  __chkstk_darwin(v34);
  v37 = &v217 - v36;
  v245 = a1;
  v248 = [a1 unsupportedReason];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v38 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  v39 = *(v25 + 16);
  v228 = v38;
  v227 = v25 + 16;
  v226 = v39;
  v39(v37, v38, v24);

  v40 = sub_2CDFE0();
  v41 = sub_2CE670();

  v42 = os_log_type_enabled(v40, v41);
  v246 = a5;
  v250 = a2;
  v232 = v25;
  v241 = a4;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v254 = v44;
    *v43 = 136315394;
    v45 = sub_2CE2F0();
    v47 = sub_3F08(v45, v46, &v254);

    *(v43 + 4) = v47;
    a2 = v250;
    *(v43 + 12) = 2048;
    *(v43 + 14) = v248;
    _os_log_impl(&dword_0, v40, v41, "PlayeMediaDialogProvider#chooseUnsupportedReason for parameterName %s and reason %ld", v43, 0x16u);
    sub_306C(v44);

    v48 = v232;
  }

  else
  {

    v48 = v25;
  }

  (*(v48 + 8))(v37, v24);
  sub_112C0(_swiftEmptyArrayStorage);

  v49 = sub_1D05D8();
  v51 = v50;
  v52 = sub_1D05E4();
  v229 = v24;
  if (v51 | v53)
  {
    v230 = v49;
    v231 = v52;
    v242 = v51;
    v247 = v53;
  }

  else
  {
    v54 = [a2 mediaSearch];
    if (v54 && (v55 = v54, v56 = [v54 mediaName], v55, v56))
    {
      v230 = sub_2CE270();
      v58 = v57;
    }

    else
    {
      v230 = 0;
      v58 = 0;
    }

    v59 = [a2 mediaSearch];
    v242 = v58;
    if (v59 && (v60 = v59, v61 = [v59 artistName], v60, v61))
    {
      v231 = sub_2CE270();
      v247 = v62;
    }

    else
    {
      v231 = 0;
      v247 = 0;
    }
  }

  v63 = v235;
  (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.ModuleName.pmdp(_:), v235);
  v64 = v236;
  v65 = v234;
  v66 = v237;
  (*(v236 + 104))(v234, enum case for AdditionalMetricsDescription.SourceFunction.unsupportedReason(_:), v237);
  v67 = v245;
  v254 = [v245 unsupportedReason];
  sub_2CEE70();
  [v67 resolutionResultCode];
  v233 = sub_2CCAE0();

  (*(v64 + 8))(v65, v66);
  (*(v21 + 8))(v23, v63);
  sub_35E0(v251 + 31, v251[34]);
  v68 = enum case for ActivityType.failed(_:);
  v69 = sub_2C9C20();
  v70 = *(v69 - 8);
  v71 = v238;
  (*(v70 + 104))(v238, v68, v69);
  (*(v70 + 56))(v71, 0, 1, v69);
  v72 = sub_2CA130();
  v73 = v239;
  (*(*(v72 - 8) + 56))(v239, 1, 1, v72);
  v74 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
  v75 = sub_2C98F0();
  v76 = *(v75 - 8);
  v77 = v240;
  (*(v76 + 104))(v240, v74, v75);
  (*(v76 + 56))(v77, 0, 1, v75);
  v78 = v246;
  v79 = v250;
  sub_2CB4E0();

  sub_30B8(v77, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v73, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v71, &qword_34CB88, &unk_2D0D90);
  v80 = v249;
  v81 = v241;
  if ((v249 != 0x657449616964656DLL || v241 != 0xEA0000000000736DLL) && (sub_2CEEA0() & 1) == 0)
  {
    sub_20410(&unk_353120, &unk_2D0B50);
    v94 = swift_allocObject();
    v95 = v94;
    *(v94 + 16) = xmmword_2D1010;
    *(v94 + 32) = 0x656C746974;
    v96 = v242;
    v97 = v230;
    if (!v242)
    {
      v97 = 0;
    }

    v98 = 0xE000000000000000;
    if (!v242)
    {
      v96 = 0xE000000000000000;
    }

    *(v94 + 40) = 0xE500000000000000;
    *(v94 + 48) = v97;
    *(v94 + 56) = v96;
    *(v94 + 72) = &type metadata for String;
    *(v94 + 80) = 0x747369747261;
    v99 = v231;
    if (v247)
    {
      v98 = v247;
    }

    else
    {
      v99 = 0;
    }

    *(v94 + 88) = 0xE600000000000000;
    *(v94 + 96) = v99;
    *(v94 + 104) = v98;
    *(v94 + 120) = &type metadata for String;
    *(v94 + 128) = 0x6574656D61726170;
    *(v94 + 136) = 0xE900000000000072;
    *(v94 + 144) = v80;
    *(v94 + 152) = v81;
    *(v94 + 168) = &type metadata for String;
    strcpy((v94 + 176), "isPersonalized");
    *(v94 + 191) = -18;

    v100 = [v79 privatePlayMediaIntentData];
    v101 = [v100 isPersonalizedRequest];

    sub_334A0(0, &qword_353110, NSNumber_ptr);
    v102.super.super.isa = sub_2CEB10(1).super.super.isa;
    if (v101)
    {
      v103 = sub_2CEB30();

      v102.super.super.isa = v101;
    }

    else
    {
      v103 = 0;
    }

    *(v95 + 216) = &type metadata for Bool;
    *(v95 + 192) = v103 & 1;
    v108 = sub_112C0(v95);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v257 = &off_3381B8;
    v254 = v79;
    v109 = v79;
    sub_248344(v108, v78, &v254, v243, v244);

    goto LABEL_71;
  }

  if (v248 <= 4)
  {
    if (v248 <= 2)
    {
      v82 = v247;
      if (v248 != (&dword_0 + 1))
      {
        if (v248 == (&dword_0 + 2))
        {
          v254 = v79;
          v83 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
          v84 = sub_2CBFA0();
          if (v84 <= 0xF && ((1 << v84) & 0x81C0) != 0)
          {

            sub_20410(&unk_353120, &unk_2D0B50);
            v85 = swift_allocObject();
            *(v85 + 16) = xmmword_2D0090;
            *(v85 + 32) = 0x656C746974;
            *(v85 + 40) = 0xE500000000000000;
            v86 = sub_1D05D8();
            *(v85 + 72) = &type metadata for String;
            if (v87)
            {
              v88 = v86;
            }

            else
            {
              v88 = 0;
            }

            v89 = 0xE000000000000000;
            if (v87)
            {
              v89 = v87;
            }

            *(v85 + 48) = v88;
            *(v85 + 56) = v89;
            v90 = sub_112C0(v85);
            swift_setDeallocating();
            sub_30B8(v85 + 32, &qword_34CBA0, &unk_2D0FE0);
            swift_deallocClassInstance();
            v256 = v83;
            v257 = &off_3381B8;
            v254 = v79;
            v91 = v79;
            sub_24C478(v90, v78, &v254, v243, v244);
          }

          else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v79, &off_32F7D0))
          {
            v133 = v78;
            sub_20410(&unk_353120, &unk_2D0B50);
            v134 = swift_allocObject();
            v135 = v134;
            *(v134 + 16) = xmmword_2D1010;
            *(v134 + 32) = 0x656C746974;
            v136 = v242;
            v137 = v230;
            if (!v242)
            {
              v137 = 0;
            }

            v138 = 0xE000000000000000;
            if (!v242)
            {
              v136 = 0xE000000000000000;
            }

            *(v134 + 40) = 0xE500000000000000;
            *(v134 + 48) = v137;
            *(v134 + 56) = v136;
            *(v134 + 72) = &type metadata for String;
            *(v134 + 80) = 0x747369747261;
            v139 = v231;
            if (v82)
            {
              v138 = v82;
            }

            else
            {
              v139 = 0;
            }

            *(v134 + 88) = 0xE600000000000000;
            *(v134 + 96) = v139;
            *(v134 + 104) = v138;
            *(v134 + 120) = &type metadata for String;
            *(v134 + 128) = 0x6574656D61726170;
            *(v134 + 136) = 0xE900000000000072;
            *(v134 + 144) = v80;
            *(v134 + 152) = v81;
            *(v134 + 168) = &type metadata for String;
            strcpy((v134 + 176), "isPersonalized");
            *(v134 + 191) = -18;

            v140 = [v79 privatePlayMediaIntentData];
            v141 = [v140 isPersonalizedRequest];

            sub_334A0(0, &qword_353110, NSNumber_ptr);
            v142.super.super.isa = sub_2CEB10(1).super.super.isa;
            if (v141)
            {
              v143 = sub_2CEB30();

              v142.super.super.isa = v141;
            }

            else
            {
              v143 = 0;
            }

            *(v135 + 216) = &type metadata for Bool;
            *(v135 + 192) = v143 & 1;
            v150 = sub_112C0(v135);
            swift_setDeallocating();
            sub_20410(&qword_34CBA0, &unk_2D0FE0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v256 = v83;
            v257 = &off_3381B8;
            v254 = v79;
            v151 = v79;
            sub_248344(v150, v133, &v254, v243, v244);
          }

          else
          {

            v146 = sub_112C0(_swiftEmptyArrayStorage);
            v256 = v83;
            v257 = &off_3381B8;
            v254 = v79;
            v147 = v79;
            sub_39630(v146, v78, &v254, v243, v244);
          }

          goto LABEL_70;
        }

        goto LABEL_59;
      }

      if (sub_2CE7B0())
      {
        sub_2CCF90();
        v110 = sub_2CBDB0();

        if (v110)
        {
          sub_19C73C(v78, v79, v243, v244);
          goto LABEL_66;
        }
      }

      v124 = sub_112C0(_swiftEmptyArrayStorage);
      v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v257 = &off_3381B8;
      v254 = v79;
      v125 = v79;
      sub_38FC0(v124, v78, &v254, v243, v244);
      goto LABEL_70;
    }

    if (v248 != (&dword_0 + 3))
    {

      v104 = sub_112C0(_swiftEmptyArrayStorage);
      v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v257 = &off_3381B8;
      v254 = v79;
      v105 = v79;
      sub_38950(v104, v78, &v254, v243, v244);
      goto LABEL_70;
    }

    sub_20410(&unk_353120, &unk_2D0B50);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_2D0090;
    *(v113 + 32) = 0x707954616964656DLL;
    *(v113 + 40) = 0xE900000000000065;
    sub_2CE710();
    v114 = INMediaItemTypeGetName();
    if (v114)
    {
      v115 = v114;
      v116 = sub_2CE270();
      v118 = v117;

      v119 = (v113 + 48);
      *(v113 + 72) = &type metadata for String;
      if (v118)
      {
        *v119 = v116;
LABEL_69:
        *(v113 + 56) = v118;
        v128 = sub_112C0(v113);
        swift_setDeallocating();
        sub_30B8(v113 + 32, &qword_34CBA0, &unk_2D0FE0);
        swift_deallocClassInstance();
        v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v257 = &off_3381B8;
        v254 = v79;
        v129 = v79;
        sub_246FB8(v128, v78, &v254, v243, v244);
        goto LABEL_70;
      }
    }

    else
    {
      v119 = (v113 + 48);
      *(v113 + 72) = &type metadata for String;
    }

    *v119 = 0;
    v118 = 0xE000000000000000;
    goto LABEL_69;
  }

  if (v248 <= 6)
  {
    if (v248 != (&dword_4 + 1))
    {

      sub_2CC230();
      v92 = sub_2CC1A0();
      v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v257 = &off_3381B8;
      v254 = v79;
      v93 = v79;
      sub_2448A0(v92, v78, &v254, v243, v244);

      sub_30B8(&v254, &qword_34C6C0, &qword_2D0710);
      sub_2CC1C0();
LABEL_66:

      return result;
    }

    v111 = sub_112C0(_swiftEmptyArrayStorage);
    v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v257 = &off_3381B8;
    v254 = v79;
    v112 = v79;
    sub_33504(v111, v78, &v254, v243, v244);
LABEL_70:

LABEL_71:

    sub_30B8(&v254, &qword_34C6C0, &qword_2D0710);
    return result;
  }

  if (v248 == (&dword_4 + 3))
  {

    v120 = sub_2CE740();
    v121 = sub_112C0(_swiftEmptyArrayStorage);
    v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v257 = &off_3381B8;
    v254 = v79;
    v122 = v79;
    if (v120)
    {
      sub_34F18(v121, v78, &v254, v243, v244);
    }

    else
    {
      sub_39CA0(v121, v78, &v254, v243, v244);
    }

    goto LABEL_70;
  }

  if (v248 == &dword_8)
  {

    v106 = sub_112C0(_swiftEmptyArrayStorage);
    v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v257 = &off_3381B8;
    v254 = v79;
    v107 = v79;
    sub_3C470(v106, v78, &v254, v243, v244);
    goto LABEL_70;
  }

LABEL_59:
  if (_INPlayMediaMediaItemUnsupportedReasonAppNotAvailable == v248)
  {

    v123 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3A980(v123, v78, v243, v244);
LABEL_65:

    goto LABEL_66;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonAppNotConfigured == v248)
  {

    v126 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B03C(v126, v78, v243, v244);
    goto LABEL_65;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonAppAccountFailure == v248)
  {

    sub_20410(&unk_353120, &unk_2D0B50);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_2D0090;
    *(v130 + 32) = 0xD000000000000013;
    *(v130 + 40) = 0x80000000002DE940;
    v131 = sub_1D21B0();
    *(v130 + 72) = &type metadata for Bool;
    *(v130 + 48) = v131 & 1;
    v132 = sub_112C0(v130);
    swift_setDeallocating();
    sub_30B8(v130 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    sub_3B6F8(v132, v78, v243, v244);
    goto LABEL_65;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonAppDoesntSupportIntent == v248)
  {

    v144 = sub_112C0(_swiftEmptyArrayStorage);
    v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v257 = &off_3381B8;
    v254 = v79;
    v145 = v79;
    sub_3A310(v144, v78, &v254, v243, v244);
    goto LABEL_70;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonPlaybackDeviceNotFound == v248)
  {

    v148 = sub_112C0(_swiftEmptyArrayStorage);
    v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v257 = &off_3381B8;
    v254 = v79;
    v149 = v79;
    sub_24AA5C(v148, v78, &v254, v243, v244);
    goto LABEL_70;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonEmptyLibrary == v248)
  {

    sub_20410(&unk_353120, &unk_2D0B50);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_2D0E40;
    *(v152 + 32) = 0x736163646F507369;
    *(v152 + 40) = 0xE900000000000074;
    v254 = v79;
    v153 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v154 = sub_2CBFA0();
    *(v152 + 48) = (v154 < 0x10) & (0x81C0u >> v154);
    *(v152 + 72) = &type metadata for Bool;
    *(v152 + 80) = 0x656C746974;
    *(v152 + 88) = 0xE500000000000000;
    v155 = sub_1D05D8();
    *(v152 + 120) = &type metadata for String;
    if (v156)
    {
      v157 = v155;
    }

    else
    {
      v157 = 0;
    }

    v158 = 0xE000000000000000;
    if (v156)
    {
      v158 = v156;
    }

    *(v152 + 96) = v157;
    *(v152 + 104) = v158;
    v159 = sub_112C0(v152);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v256 = v153;
    v257 = &off_3381B8;
    v254 = v79;
    v160 = v79;
    sub_2496D0(v159, v78, &v254, v243, v244);
    goto LABEL_70;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonCreateRadioFailed == v248)
  {

    v161 = sub_112C0(_swiftEmptyArrayStorage);
    v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v257 = &off_3381B8;
    v254 = v79;
    v162 = v79;
    sub_24A3D8(v161, v78, &v254, v243, v244);
    goto LABEL_70;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonUnsupportedPlaybackQueueLocation == v248)
  {

    v163 = sub_112C0(_swiftEmptyArrayStorage);
    v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v257 = &off_3381B8;
    v254 = v79;
    v164 = v79;
    sub_249D54(v163, v78, &v254, v243, v244);
    goto LABEL_70;
  }

  if (sub_2CE8B0())
  {

    v165 = v225;
    v166 = v229;
    v226(v225, v228, v229);
    v167 = sub_2CDFE0();
    v168 = sub_2CE670();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&dword_0, v167, v168, "Overriding not-found dialog for play this. Returning special dialog", v169, 2u);
    }

    (*(v232 + 8))(v165, v166);
    v170 = sub_112C0(_swiftEmptyArrayStorage);
    v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v257 = &off_3381B8;
    v254 = v79;
    v171 = v79;
    sub_252818(v170, v78, &v254, v243, v244);
    goto LABEL_70;
  }

  v172 = sub_2CCF90();
  v174 = v173;
  v175 = sub_2CBE10();
  if (!v174)
  {
    v177 = v81;

    goto LABEL_116;
  }

  v177 = v81;
  if (v172 == v175 && v174 == v176)
  {
  }

  else
  {
    v178 = sub_2CEEA0();

    if ((v178 & 1) == 0)
    {
      goto LABEL_116;
    }
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v79, &off_32F800))
  {
    v226(v218, v228, v229);
    v179 = sub_2CDFE0();
    v180 = sub_2CE670();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      *v181 = 0;
      _os_log_impl(&dword_0, v179, v180, "Overriding not-found dialog for non subscriber", v181, 2u);
    }

    (*(v232 + 8))(v218, v229);
    sub_20410(&unk_353120, &unk_2D0B50);
    v182 = swift_allocObject();
    *(v182 + 16) = xmmword_2D5FA0;
    *(v182 + 32) = 0x656C746974;
    *(v182 + 40) = 0xE500000000000000;
    v254 = v230;
    v255 = v242;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v183 = sub_2CEB80();

    ObjectType = swift_getObjectType();
    *(v182 + 48) = v183;
    *(v182 + 72) = ObjectType;
    *(v182 + 80) = 0x747369747261;
    *(v182 + 88) = 0xE600000000000000;
    v254 = v231;
    v255 = v247;
    v185 = sub_2CEB80();
    v186 = swift_getObjectType();
    *(v182 + 96) = v185;
    *(v182 + 120) = v186;
    *(v182 + 128) = 0x6574656D61726170;
    *(v182 + 136) = 0xE900000000000072;
    *(v182 + 144) = 0xD000000000000012;
    *(v182 + 152) = 0x80000000002DE920;
    *(v182 + 168) = &type metadata for String;
    strcpy((v182 + 176), "isPersonalized");
    *(v182 + 191) = -18;
    v187 = [v250 privatePlayMediaIntentData];
    v188 = [v187 isPersonalizedRequest];
    goto LABEL_129;
  }

LABEL_116:
  objc_opt_self();
  v189 = v245;
  if (!swift_dynamicCastObjCClass())
  {
    v226(v220, v228, v229);
    v192 = v189;
    v193 = sub_2CDFE0();
    v194 = sub_2CE660();

    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v254 = v196;
      *v195 = 136315138;
      v253 = swift_getObjectType();
      sub_20410(&qword_353CE0, qword_2D60C0);
      v197 = sub_2CE2A0();
      v199 = sub_3F08(v197, v198, &v254);

      *(v195 + 4) = v199;
      _os_log_impl(&dword_0, v193, v194, "PlayeMediaDialogProvider#chooseUnsupportedReason intentResolutionResult type not being handled (yet) today: %s", v195, 0xCu);
      sub_306C(v196);
    }

    v200 = *(v232 + 8);
    v201 = &v252;
    goto LABEL_128;
  }

  v190 = v189;
  sub_2CE590();
  v191 = v219;
  sub_2CB830();
  if ((*(v223 + 48))(v191, 1, v224) == 1)
  {
    sub_30B8(v191, &qword_353CD0, &qword_2D60B8);
LABEL_125:
    v226(v222, v228, v229);
    v204 = sub_2CDFE0();
    v205 = sub_2CE670();
    if (os_log_type_enabled(v204, v205))
    {
      v206 = swift_slowAlloc();
      *v206 = 0;
      _os_log_impl(&dword_0, v204, v205, "PlayeMediaDialogProvider#chooseUnsupportedReason result is not PFSQ terminating...", v206, 2u);
    }

    v200 = *(v232 + 8);
    v201 = &v254;
LABEL_128:
    v200(*(v201 - 32), v229);
    sub_20410(&unk_353120, &unk_2D0B50);
    v182 = swift_allocObject();
    *(v182 + 16) = xmmword_2D5FA0;
    *(v182 + 32) = 0x656C746974;
    *(v182 + 40) = 0xE500000000000000;
    v254 = v230;
    v255 = v242;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v207 = sub_2CEB80();

    v208 = swift_getObjectType();
    *(v182 + 48) = v207;
    *(v182 + 72) = v208;
    *(v182 + 80) = 0x747369747261;
    *(v182 + 88) = 0xE600000000000000;
    v254 = v231;
    v255 = v247;
    v209 = sub_2CEB80();
    v210 = swift_getObjectType();
    *(v182 + 96) = v209;
    *(v182 + 120) = v210;
    *(v182 + 128) = 0x6574656D61726170;
    v211 = v249;
    *(v182 + 136) = 0xE900000000000072;
    *(v182 + 144) = v211;
    *(v182 + 152) = v177;
    *(v182 + 168) = &type metadata for String;
    strcpy((v182 + 176), "isPersonalized");
    *(v182 + 191) = -18;

    v187 = [v250 privatePlayMediaIntentData];
    v188 = [v187 isPersonalizedRequest];
LABEL_129:
    v212 = v188;

    sub_334A0(0, &qword_353110, NSNumber_ptr);
    v213.super.super.isa = sub_2CEB10(1).super.super.isa;
    if (v212)
    {
      v214 = sub_2CEB30();

      v213.super.super.isa = v212;
    }

    else
    {
      v214 = 0;
    }

    *(v182 + 192) = v214 & 1;
    *(v182 + 216) = &type metadata for Bool;
    *(v182 + 224) = 0x6563617073;
    *(v182 + 232) = 0xE500000000000000;
    *(v182 + 240) = 32;
    *(v182 + 248) = 0xE100000000000000;
    *(v182 + 264) = &type metadata for String;
    *(v182 + 272) = 0x77745F6563617073;
    *(v182 + 312) = &type metadata for String;
    *(v182 + 280) = 0xE90000000000006FLL;
    *(v182 + 288) = 32;
    *(v182 + 296) = 0xE100000000000000;
    v215 = sub_112C0(v182);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v256 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v257 = &off_3381B8;
    v254 = v250;
    v216 = v250;
    sub_248344(v215, v246, &v254, v243, v244);

    goto LABEL_71;
  }

  (*(v223 + 32))(v221, v191, v224);
  sub_2CB750();
  if ((sub_2CB740() & 1) == 0)
  {
    (*(v223 + 8))(v221, v224);
    goto LABEL_125;
  }

  v202 = v251[15];
  v203 = sub_112C0(_swiftEmptyArrayStorage);
  sub_270F9C(v203, v202, v221, v246, v250, v243, v244);
  (*(v223 + 8))(v221, v224);

  return result;
}

uint64_t sub_19C5F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6F50656D6F487369;
  *(inited + 40) = 0xE900000000000064;
  v9 = sub_2CB650();
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v9 & 1;
  v10 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v13[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v13[4] = &off_3381B8;
  v13[0] = a2;
  v11 = a2;
  sub_2489C8(v10, a1, v13, a3, a4);

  return sub_30B8(v13, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_19C73C(uint64_t a1, void *a2, char *a3, char *a4)
{
  v225 = a4;
  v224 = a3;
  v240 = a2;
  v223 = a1;
  v4 = sub_2C92E0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v221 = &v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v202 = &v198 - v9;
  v10 = __chkstk_darwin(v8);
  v215 = &v198 - v11;
  v12 = __chkstk_darwin(v10);
  v220 = &v198 - v13;
  __chkstk_darwin(v12);
  v15 = &v198 - v14;
  v16 = sub_2CB850();
  v238 = *(v16 - 8);
  __chkstk_darwin(v16);
  v209 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_20410(&qword_353CC8, &unk_2D60A8);
  __chkstk_darwin(v229);
  v239 = &v198 - v18;
  v227 = sub_2CC950();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v213 = &v198 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v20 - 8);
  v22 = &v198 - v21;
  v23 = sub_20410(&qword_353CD0, &qword_2D60B8);
  v24 = __chkstk_darwin(v23 - 8);
  v218 = &v198 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v236 = &v198 - v27;
  __chkstk_darwin(v26);
  v237 = &v198 - v28;
  v29 = sub_20410(&qword_353C88, &unk_2D6070);
  v30 = __chkstk_darwin(v29 - 8);
  v207 = &v198 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v201 = &v198 - v33;
  v34 = __chkstk_darwin(v32);
  v210 = &v198 - v35;
  v36 = __chkstk_darwin(v34);
  v204 = &v198 - v37;
  v38 = __chkstk_darwin(v36);
  v217 = &v198 - v39;
  __chkstk_darwin(v38);
  v242 = &v198 - v40;
  v41 = sub_2CE000();
  v42 = *(v41 - 8);
  v43 = __chkstk_darwin(v41);
  v203 = &v198 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v211 = &v198 - v46;
  v47 = __chkstk_darwin(v45);
  v200 = &v198 - v48;
  v49 = __chkstk_darwin(v47);
  v199 = &v198 - v50;
  v51 = __chkstk_darwin(v49);
  v208 = &v198 - v52;
  v53 = __chkstk_darwin(v51);
  v205 = &v198 - v54;
  v55 = __chkstk_darwin(v53);
  v214 = &v198 - v56;
  __chkstk_darwin(v55);
  v58 = &v198 - v57;
  if (qword_34BF58 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v59 = sub_3ED0(v41, static Logger.default);
    swift_beginAccess();
    v60 = v42;
    v61 = *(v42 + 16);
    v232 = v59;
    v241 = v41;
    v233 = v42 + 16;
    v231 = v61;
    v61(v58, v59, v41);
    v62 = sub_2CDFE0();
    v63 = sub_2CE670();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_0, v62, v63, "PlayeMediaDialogProvider#invalidTokensHelper", v64, 2u);
    }

    v65 = *(v60 + 8);
    v235 = v60 + 8;
    v234 = v65;
    v65(v58, v241);
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    *(inited + 32) = 0x6F50656D6F487369;
    *(inited + 40) = 0xE900000000000064;
    v67 = sub_2CB650();
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = v67 & 1;
    v68 = sub_112C0(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
    v248 = v68;
    v69 = sub_2CBB70();
    sub_2CBB60();
    v228 = sub_2CBB20();

    sub_2CBB60();
    v222 = sub_2CBB30();

    sub_2CBB60();
    v219 = sub_2CBB50();
    v216 = v70;

    v71 = [v240 privatePlayMediaIntentData];
    v206 = v69;
    v212 = v68;
    if (v71)
    {
      v72 = v71;
      v73 = [v71 pegasusMetaData];

      v74 = v237;
      v75 = v236;
      if (v73)
      {
        v76 = sub_2C8DC0();
        v78 = v77;
      }

      else
      {
        v76 = 0;
        v78 = 0xF000000000000000;
      }
    }

    else
    {
      v76 = 0;
      v78 = 0xF000000000000000;
      v74 = v237;
      v75 = v236;
    }

    sub_2C9210();
    sub_5267C(v76, v78);
    sub_2CB750();
    sub_2CB730();
    v79 = v226;
    v80 = v227;
    v81 = (*(v226 + 48))(v22, 1, v227);
    v230 = v4;
    if (v81)
    {
      sub_30B8(v22, &qword_352D78, &unk_2D5320);
      v82 = 1;
    }

    else
    {
      v83 = v213;
      (*(v79 + 16))(v213, v22, v80);
      sub_30B8(v22, &qword_352D78, &unk_2D5320);
      sub_2CC940();
      (*(v79 + 8))(v83, v80);
      v82 = 0;
    }

    v84 = v238;
    v85 = *(v238 + 56);
    v85(v74, v82, 1, v16);
    (*(v84 + 104))(v75, enum case for PlaybackCode.gdprNeededInGroup(_:), v16);
    v85(v75, 0, 1, v16);
    v86 = *(v229 + 48);
    v87 = v74;
    v88 = v74;
    v89 = v239;
    sub_F3F4(v87, v239, &qword_353CD0, &qword_2D60B8);
    v90 = v89;
    sub_F3F4(v75, v89 + v86, &qword_353CD0, &qword_2D60B8);
    v91 = *(v84 + 48);
    if (v91(v90, 1, v16) == 1)
    {
      sub_30B8(v75, &qword_353CD0, &qword_2D60B8);
      v92 = v239;
      sub_30B8(v88, &qword_353CD0, &qword_2D60B8);
      v93 = v91(&v92[v86], 1, v16);
      v94 = v240;
      v4 = v230;
      v42 = v228;
      if (v93 == 1)
      {
        sub_30B8(v92, &qword_353CD0, &qword_2D60B8);
LABEL_28:
        v115 = v214;
        v116 = v241;
        v231(v214, v232, v241);
        v117 = sub_2CDFE0();
        v118 = sub_2CE660();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&dword_0, v117, v118, "PlayeMediaDialogProvider#invalidTokensHelper PFSQ gdprNeededInGroup", v119, 2u);
        }

        v234(v115, v116);
        v246 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v247 = &off_3381B8;
        *&v245 = v94;
        v120 = v94;
        sub_35588(v212, v223, &v245, v224, v225);
LABEL_72:

LABEL_73:
        sub_30B8(v242, &qword_353C88, &unk_2D6070);
        return sub_30B8(&v245, &qword_34C6C0, &qword_2D0710);
      }

      goto LABEL_17;
    }

    v95 = v218;
    sub_F3F4(v90, v218, &qword_353CD0, &qword_2D60B8);
    v96 = v91((v90 + v86), 1, v16);
    v4 = v230;
    v42 = v228;
    if (v96 == 1)
    {
      sub_30B8(v236, &qword_353CD0, &qword_2D60B8);
      v92 = v239;
      sub_30B8(v237, &qword_353CD0, &qword_2D60B8);
      (*(v238 + 8))(v95, v16);
      v94 = v240;
LABEL_17:
      sub_30B8(v92, &qword_353CC8, &unk_2D60A8);
      v97 = v221;
      goto LABEL_18;
    }

    v111 = v238;
    v112 = v90 + v86;
    v113 = v209;
    (*(v238 + 32))(v209, v112, v16);
    sub_1B7EB0(&qword_353CD8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    LODWORD(v229) = sub_2CE250();
    v114 = *(v111 + 8);
    v114(v113, v16);
    sub_30B8(v236, &qword_353CD0, &qword_2D60B8);
    sub_30B8(v237, &qword_353CD0, &qword_2D60B8);
    v114(v218, v16);
    sub_30B8(v90, &qword_353CD0, &qword_2D60B8);
    v94 = v240;
    v97 = v221;
    if (v229)
    {
      goto LABEL_28;
    }

LABEL_18:
    v58 = v217;
    sub_F3F4(v242, v217, &qword_353C88, &unk_2D6070);
    v98 = sub_2C9240();
    v99 = *(v98 - 8);
    v100 = v99 + 48;
    v239 = *(v99 + 48);
    if ((v239)(v58, 1, v98) == 1)
    {
      break;
    }

    v228 = v99 + 48;
    v22 = sub_2C9230();
    v236 = v99;
    v101 = *(v99 + 8);
    v229 = v98;
    v101(v58, v98);
    v41 = 0;
    v102 = *(v22 + 2);
    v16 = v5 + 16;
    while (1)
    {
      if (v102 == v41)
      {

        v94 = v240;
        v97 = v221;
        v98 = v229;
        v100 = v228;
        v99 = v236;
        goto LABEL_32;
      }

      if (v41 >= *(v22 + 2))
      {
        break;
      }

      (*(v5 + 16))(v15, &v22[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v41++], v4);
      v58 = sub_2C92D0();
      (*(v5 + 8))(v15, v4);
      if (v42 == v58)
      {

        v103 = v205;
        v231(v205, v232, v241);
        v104 = sub_2CDFE0();
        v105 = sub_2CE660();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&dword_0, v104, v105, "PlayeMediaDialogProvider#invalidTokensHelper GDPR required", v106, 2u);
        }

        v234(v103, v241);
        v244 = &type metadata for Int;
        *&v243 = v42;
        sub_2CC230();
        v107 = sub_2CC200();
        sub_270DC4(&v243, v107, v108, &v245);

        sub_30B8(&v245, &qword_34CEA0, &qword_2D0FC0);
        v109 = v248;
        v246 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v247 = &off_3381B8;
        *&v245 = v240;
        v110 = v240;
        sub_24D1A8(v109, v223, &v245, v224, v225);
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  sub_30B8(v58, &qword_353C88, &unk_2D6070);
LABEL_32:
  v121 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v94, &off_32F7A0);
  v122 = v241;
  if (v121)
  {
    v123 = v208;
    v231(v208, v232, v241);
    v124 = sub_2CDFE0();
    v125 = sub_2CE660();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_0, v124, v125, "PlayeMediaDialogProvider#invalidTokensHelper sign into Music account required", v126, 2u);
    }

    v234(v123, v122);
    v244 = &type metadata for String;
    strcpy(&v243, "NonSubscriber");
    HIWORD(v243) = -4864;
    sub_2CC230();
    v127 = sub_2CC200();
    sub_270DC4(&v243, v127, v128, &v245);

    sub_30B8(&v245, &qword_34CEA0, &qword_2D0FC0);
    v129 = v248;
    v246 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v247 = &off_3381B8;
    *&v245 = v94;
    v130 = v94;
    sub_241FF8(v129, v223, &v245, v224, v225);
    goto LABEL_72;
  }

  v131 = sub_2CB650();
  v132 = v210;
  if ((v131 & 1) == 0)
  {
LABEL_48:
    if (sub_2CB650())
    {
      sub_F3F4(v242, v132, &qword_353C88, &unk_2D6070);
      if ((v239)(v132, 1, v98) != 1)
      {
        v228 = v100;
        v149 = sub_2C9230();
        v236 = v99;
        v150 = *(v99 + 8);
        v229 = v98;
        v226 = v99 + 8;
        v222 = v150;
        result = v150(v132, v98);
        v151 = 0;
        v227 = *(v149 + 16);
        v237 = v5 + 16;
        v238 = v5 + 8;
        while (1)
        {
          if (v227 == v151)
          {

            v97 = v221;
            v98 = v229;
            v99 = v236;
            goto LABEL_58;
          }

          if (v151 >= *(v149 + 16))
          {
            goto LABEL_91;
          }

          v152 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v153 = *(v5 + 72);
          v154 = *(v5 + 16);
          v155 = v215;
          v154(v215, v149 + v152 + v153 * v151, v4);
          if (v219 == sub_2C92D0())
          {
            break;
          }

          ++v151;
          v156 = sub_2C92D0();
          v157 = *v238;
          result = (*v238)(v155, v4);
          if (v216 == v156)
          {
            goto LABEL_75;
          }
        }

        v157 = *v238;
        (*v238)(v155, v4);
LABEL_75:

        v174 = v200;
        v231(v200, v232, v241);
        v175 = sub_2CDFE0();
        v176 = sub_2CE660();
        v177 = os_log_type_enabled(v175, v176);
        v178 = v201;
        if (v177)
        {
          v179 = swift_slowAlloc();
          *v179 = 0;
          _os_log_impl(&dword_0, v175, v176, "PlayeMediaDialogProvider#invalidTokensHelper auth issue", v179, 2u);
        }

        v234(v174, v241);
        sub_F3F4(v242, v178, &qword_353C88, &unk_2D6070);
        v180 = v229;
        v181 = (v239)(v178, 1, v229);
        v182 = v202;
        if (v181 == 1)
        {
          sub_30B8(v178, &qword_353C88, &unk_2D6070);
        }

        else
        {
          v183 = sub_2C9230();
          result = v222(v178, v180);
          v184 = v183 + v152;
          v185 = -*(v183 + 16);
          v186 = -1;
          while (v185 + v186 != -1)
          {
            if (++v186 >= *(v183 + 16))
            {
              goto LABEL_92;
            }

            v187 = v184 + v153;
            (v154)(v182);
            v188 = sub_2C92D0();
            result = (v157)(v182, v4);
            v184 = v187;
            if (v219 == v188)
            {

              v244 = &type metadata for Int;
              *&v243 = v219;
              sub_2CC230();
              v189 = sub_2CC200();
              sub_270DC4(&v243, v189, v190, &v245);

              sub_30B8(&v245, &qword_34CEA0, &qword_2D0FC0);
              v191 = v225;
              v192 = v224;
              v193 = v223;
              goto LABEL_86;
            }
          }
        }

        v191 = v225;
        v192 = v224;
        v193 = v223;
        v244 = &type metadata for Int;
        *&v243 = v216;
        sub_2CC230();
        v194 = sub_2CC200();
        sub_270DC4(&v243, v194, v195, &v245);

        sub_30B8(&v245, &qword_34CEA0, &qword_2D0FC0);
LABEL_86:
        v196 = v248;
        v246 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v247 = &off_3381B8;
        *&v245 = v240;
        v197 = v240;
        sub_24E540(v196, v193, &v245, v192, v191);
        goto LABEL_72;
      }

      sub_30B8(v132, &qword_353C88, &unk_2D6070);
    }

LABEL_58:
    v231(v211, v232, v241);
    v158 = sub_2CDFE0();
    v159 = sub_2CE660();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 0;
      _os_log_impl(&dword_0, v158, v159, "PlayeMediaDialogProvider#invalidTokensHelper invalid token", v160, 2u);
    }

    v234(v211, v241);
    sub_2CBB60();
    v22 = sub_2CBB40();

    v58 = v207;
    sub_F3F4(v242, v207, &qword_353C88, &unk_2D6070);
    if ((v239)(v58, 1, v98) == 1)
    {
      sub_30B8(v58, &qword_353C88, &unk_2D6070);
LABEL_70:
      v166 = v225;
      v167 = v224;
      v168 = v223;
    }

    else
    {
      v15 = sub_2C9230();
      (*(v99 + 8))(v58, v98);
      v41 = 0;
      v161 = *(v15 + 2);
      v16 = v5 + 16;
      v42 = v5 + 8;
      do
      {
        if (v161 == v41)
        {

          goto LABEL_70;
        }

        if (v41 >= *(v15 + 2))
        {
          goto LABEL_88;
        }

        (*(v5 + 16))(v97, &v15[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v41++], v4);
        v58 = sub_2C92D0();
        (*(v5 + 8))(v97, v4);
      }

      while (v22 != v58);

      v162 = v203;
      v231(v203, v232, v241);
      v163 = sub_2CDFE0();
      v164 = sub_2CE660();
      v165 = os_log_type_enabled(v163, v164);
      v166 = v225;
      v167 = v224;
      v168 = v223;
      if (v165)
      {
        v169 = swift_slowAlloc();
        *v169 = 0;
        _os_log_impl(&dword_0, v163, v164, "PlayeMediaDialogProvider#invalidTokensHelper no special handling for multiUserIdNotFoundError", v169, 2u);
      }

      v234(v162, v241);
      v244 = &type metadata for Int;
      *&v243 = v22;
      sub_2CC230();
      v170 = sub_2CC200();
      sub_270DC4(&v243, v170, v171, &v245);

      sub_30B8(&v245, &qword_34CEA0, &qword_2D0FC0);
    }

    v172 = v248;
    v246 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v247 = &off_3381B8;
    *&v245 = v240;
    v173 = v240;
    sub_3BDB4(v172, v168, &v245, v167, v166);
    goto LABEL_72;
  }

  v236 = v99;
  v133 = v204;
  sub_F3F4(v242, v204, &qword_353C88, &unk_2D6070);
  if ((v239)(v133, 1, v98) == 1)
  {
    sub_30B8(v133, &qword_353C88, &unk_2D6070);
LABEL_47:
    v99 = v236;
    goto LABEL_48;
  }

  v228 = v100;
  v134 = sub_2C9230();
  v135 = *(v236 + 8);
  v229 = v98;
  result = v135(v133, v98);
  v137 = 0;
  v138 = *(v134 + 16);
  while (1)
  {
    if (v138 == v137)
    {

      v132 = v210;
      v98 = v229;
      v100 = v228;
      goto LABEL_47;
    }

    if (v137 >= *(v134 + 16))
    {
      break;
    }

    v139 = v220;
    (*(v5 + 16))(v220, v134 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v137++, v4);
    v140 = sub_2C92D0();
    result = (*(v5 + 8))(v139, v4);
    if (v222 == v140)
    {

      v141 = v199;
      v142 = v241;
      v231(v199, v232, v241);
      v143 = sub_2CDFE0();
      v144 = sub_2CE660();
      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        *v145 = 0;
        _os_log_impl(&dword_0, v143, v144, "PlayeMediaDialogProvider#invalidTokensHelper invalid user identity", v145, 2u);
      }

      v234(v141, v142);
      v244 = &type metadata for Int;
      *&v243 = v222;
      sub_2CC230();
      v146 = sub_2CC200();
      sub_270DC4(&v243, v146, v147, &v245);

      sub_30B8(&v245, &qword_34CEA0, &qword_2D0FC0);

      v246 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v247 = &off_3381B8;
      *&v245 = v240;
      v148 = v240;
      sub_24DEC0(v223, &v245, v224, v225);
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_19E834()
{

  sub_306C(v0 + 16);
  sub_306C(v0 + 21);
  sub_306C(v0 + 26);
  return sub_306C(v0 + 31);
}

void sub_19E8F0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

double sub_19E928(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, char *a6, char *a7)
{
  v184 = a1;
  v185 = a6;
  v186 = a7;
  v174 = a4;
  v175 = a2;
  v176 = a3;
  v8 = sub_2CE000();
  v187 = *(v8 - 8);
  v188 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v174 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v174 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v174 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v174 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v174 - v25;
  v27 = __chkstk_darwin(v24);
  v189 = &v174 - v28;
  v29 = __chkstk_darwin(v27);
  v183 = &v174 - v30;
  v31 = __chkstk_darwin(v29);
  v182 = &v174 - v32;
  v33 = __chkstk_darwin(v31);
  v181 = &v174 - v34;
  v35 = __chkstk_darwin(v33);
  v180 = &v174 - v36;
  v37 = __chkstk_darwin(v35);
  v179 = &v174 - v38;
  v39 = __chkstk_darwin(v37);
  v177 = &v174 - v40;
  __chkstk_darwin(v39);
  v178 = &v174 - v41;
  sub_112C0(_swiftEmptyArrayStorage);

  v42 = sub_1D2364(&off_32F830);
  sub_F1954(&unk_32F850);
  if ((v42 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F860))
  {
    v189 = a5;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v43 = v188;
    v44 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    v45 = v187;
    (*(v187 + 16))(v11, v44, v43);
    v46 = sub_2CDFE0();
    v47 = sub_2CE670();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "Calling podcast promotion canned dialog", v48, 2u);
    }

    (*(v45 + 8))(v11, v43);
    sub_1D15EC();
    v50 = v49;
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000016;
    *(inited + 16) = xmmword_2D5F90;
    *(inited + 40) = 0x80000000002DE7E0;
    if (v50)
    {
      v52 = sub_2CE2B0();
      v54 = v53;
      v55 = sub_2CE2B0();
      if (v54)
      {
        if (v52 == v55 && v54 == v56)
        {
          v57 = 1;
        }

        else
        {
          v57 = sub_2CEEA0();
        }

        *(inited + 48) = v57 & 1;
        *(inited + 72) = &type metadata for Bool;
        strcpy((inited + 80), "isStoryTelling");
        *(inited + 95) = -18;
        goto LABEL_23;
      }
    }

    else
    {
      sub_2CE2B0();
    }

    *(inited + 48) = 0;
    *(inited + 72) = &type metadata for Bool;
    strcpy((inited + 80), "isStoryTelling");
    *(inited + 95) = -18;
    if (!v50)
    {
      sub_2CE2B0();
      goto LABEL_27;
    }

LABEL_23:
    v65 = sub_2CE2B0();
    v67 = v66;
    v68 = sub_2CE2B0();
    if (v67)
    {
      if (v65 == v68 && v67 == v69)
      {
        v70 = 1;
      }

      else
      {
        v70 = sub_2CEEA0();
      }

      *(inited + 96) = v70 & 1;
      *(inited + 120) = &type metadata for Bool;
      strcpy((inited + 128), "isStorySleep");
      *(inited + 141) = 0;
      *(inited + 142) = -5120;
      goto LABEL_31;
    }

LABEL_27:

    *(inited + 96) = 0;
    *(inited + 120) = &type metadata for Bool;
    strcpy((inited + 128), "isStorySleep");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    if (!v50)
    {
      sub_2CE2B0();
      goto LABEL_35;
    }

LABEL_31:
    v71 = sub_2CE2B0();
    v73 = v72;
    v74 = sub_2CE2B0();
    if (v73)
    {
      if (v71 == v74 && v73 == v75)
      {
        v76 = 1;
      }

      else
      {
        v76 = sub_2CEEA0();
      }

      *(inited + 144) = v76 & 1;
      *(inited + 168) = &type metadata for Bool;
      *(inited + 176) = 0xD000000000000011;
      *(inited + 184) = 0x80000000002DE800;
      goto LABEL_39;
    }

LABEL_35:

    *(inited + 144) = 0;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 176) = 0xD000000000000011;
    *(inited + 184) = 0x80000000002DE800;
    if (!v50)
    {
      sub_2CE2B0();
      goto LABEL_43;
    }

LABEL_39:
    v77 = sub_2CE2B0();
    v79 = v78;
    v80 = sub_2CE2B0();
    if (v79)
    {
      if (v77 == v80 && v79 == v81)
      {
        v82 = 1;
      }

      else
      {
        v82 = sub_2CEEA0();
      }

      *(inited + 192) = v82 & 1;
      *(inited + 216) = &type metadata for Bool;
      strcpy((inited + 224), "isWordOfTheDay");
      *(inited + 239) = -18;
      goto LABEL_47;
    }

LABEL_43:

    *(inited + 192) = 0;
    *(inited + 216) = &type metadata for Bool;
    strcpy((inited + 224), "isWordOfTheDay");
    *(inited + 239) = -18;
    if (!v50)
    {
      sub_2CE2B0();
      v83 = 0;
LABEL_53:

      *(inited + 264) = &type metadata for Bool;
      *(inited + 240) = v83 & 1;
      v89 = sub_112C0(inited);
      swift_setDeallocating();
      sub_20410(&qword_34CBA0, &unk_2D0FE0);
      swift_arrayDestroy();
      v191 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v192 = &off_3381B8;
      v190[0] = v189;
      v90 = v189;
      sub_24904C(v89, v184, v190, v185, v186);
LABEL_54:

      sub_30B8(v190, &qword_34C6C0, &qword_2D0710);
      return result;
    }

LABEL_47:
    v84 = sub_2CE2B0();
    v86 = v85;

    v87 = sub_2CE2B0();
    if (v86)
    {
      if (v84 == v87 && v86 == v88)
      {

        v83 = 1;
      }

      else
      {
        v83 = sub_2CEEA0();
      }
    }

    else
    {
      v83 = 0;
    }

    goto LABEL_53;
  }

  if (sub_2CE870())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v58 = v188;
    v59 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    v60 = v187;
    (*(v187 + 16))(v14, v59, v58);
    v61 = sub_2CDFE0();
    v62 = sub_2CE660();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "PlayMediaDialogProvider going to makePlaybackQueueTokenRestrictedContent", v63, 2u);
    }

    (*(v60 + 8))(v14, v188);
    sub_19C5F4(v184, a5, v185, v186);
    return result;
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F890))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v91 = v188;
    v92 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    v93 = v187;
    (*(v187 + 16))(v17, v92, v91);
    v94 = sub_2CDFE0();
    v95 = sub_2CE660();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_0, v94, v95, "PlayMediaDialogProvider going to not found for Acoustic ID follow up when entity not found in AMP catalog", v96, 2u);
    }

    (*(v93 + 8))(v17, v188);
    sub_20410(&unk_353120, &unk_2D0B50);
    v97 = swift_initStackObject();
    *(v97 + 16) = xmmword_2D0090;
    *(v97 + 32) = 0x79616C507369;
    v98 = v97 + 32;
    *(v97 + 40) = 0xE600000000000000;
    *(v97 + 72) = &type metadata for Bool;
    *(v97 + 48) = 0;
LABEL_67:
    v104 = sub_112C0(v97);
    swift_setDeallocating();
    sub_30B8(v98, &qword_34CBA0, &unk_2D0FE0);
    v191 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v192 = &off_3381B8;
    v190[0] = a5;
    v105 = a5;
LABEL_68:
    sub_382E0(v104, v184, v190, v185, v186);
    goto LABEL_54;
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F8C0))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v99 = v188;
    v100 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    (*(v187 + 16))(v20, v100, v99);
    v101 = sub_2CDFE0();
    v102 = sub_2CE660();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_0, v101, v102, "PlayMediaDialogProvider going to Non-subscriber dialog for Acoustic ID follow up", v103, 2u);
    }

    (*(v187 + 8))(v20, v188);
    sub_20410(&unk_353120, &unk_2D0B50);
    v97 = swift_initStackObject();
    *(v97 + 16) = xmmword_2D0090;
    *(v97 + 32) = 0x79616C507369;
    v98 = v97 + 32;
    *(v97 + 40) = 0xE600000000000000;
    *(v97 + 72) = &type metadata for Bool;
    *(v97 + 48) = 1;
    goto LABEL_67;
  }

  v106 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F8F0);
  v107 = v187;
  if (v106)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v108 = v188;
    v109 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    (*(v107 + 16))(v23, v109, v108);
    v110 = sub_2CDFE0();
    v111 = sub_2CE660();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_0, v110, v111, "PlayMediaDialogProvider going to CannotReferencePodcastsAudiobooks for related follow up", v112, 2u);
    }

    (*(v107 + 8))(v23, v188);
    sub_198AAC(v184, a5, v185, v186);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F920))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v113 = v188;
    v114 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    (*(v107 + 16))(v26, v114, v113);
    v115 = sub_2CDFE0();
    v116 = sub_2CE660();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_0, v115, v116, "PlayMediaDialogProvider going to NoLiveVersion for related follow up", v117, 2u);
    }

    (*(v107 + 8))(v26, v188);
    sub_198CC0(v184, a5, v185, v186);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F950))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v118 = v188;
    v119 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    v120 = v189;
    (*(v107 + 16))(v189, v119, v118);
    v121 = sub_2CDFE0();
    v122 = sub_2CE660();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_0, v121, v122, "PlayMediaDialogProvider going to NoAcousticVersion for related follow up", v123, 2u);
    }

    (*(v107 + 8))(v120, v188);
    sub_198F58(v184, a5, v185, v186);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F980))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v124 = v188;
    v125 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    v126 = v183;
    (*(v107 + 16))(v183, v125, v124);
    v127 = sub_2CDFE0();
    v128 = sub_2CE660();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_0, v127, v128, "PlayMediaDialogProvider going to NoAlternateArtistVersion for related follow up", v129, 2u);
    }

    (*(v107 + 8))(v126, v188);
    sub_1991E8(v184, a5, v185, v186);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F9B0))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v130 = v188;
    v131 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    v132 = v182;
    (*(v107 + 16))(v182, v131, v130);
    v133 = sub_2CDFE0();
    v134 = sub_2CE660();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_0, v133, v134, "PlayMediaDialogProvider going to NoMoreResults for related follow up", v135, 2u);
    }

    (*(v107 + 8))(v132, v188);
    sub_19950C(v184, a5, v185, v186);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F9E0))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v136 = v188;
    v137 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    v138 = v181;
    (*(v107 + 16))(v181, v137, v136);
    v139 = sub_2CDFE0();
    v140 = sub_2CE660();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_0, v139, v140, "PlayMediaDialogProvider going to ReferencedMediaMissingMetadata for related follow up", v141, 2u);
    }

    (*(v107 + 8))(v138, v188);
    sub_199838(v184, a5, v185, v186);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32FA10))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v142 = v188;
    v143 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    v144 = v180;
    (*(v107 + 16))(v180, v143, v142);
    v145 = sub_2CDFE0();
    v146 = sub_2CE660();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&dword_0, v145, v146, "PlayMediaDialogProvider going to ExceptionSearching for related follow up", v147, 2u);
    }

    (*(v107 + 8))(v144, v188);
    sub_199978(v184, a5, v185, v186);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32FA40))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v148 = v188;
    v149 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    v150 = v179;
    (*(v107 + 16))(v179, v149, v148);
    v151 = sub_2CDFE0();
    v152 = sub_2CE660();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_0, v151, v152, "PlayMediaDialogProvider going to DidntFindSpecificVersion for related follow up", v153, 2u);
    }

    (*(v107 + 8))(v150, v188);
    sub_199AB8(v184, a5, v185, v186);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32FA70))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v154 = v188;
    v155 = sub_3ED0(v188, static Logger.default);
    swift_beginAccess();
    v156 = v177;
    (*(v107 + 16))(v177, v155, v154);
    v157 = sub_2CDFE0();
    v158 = sub_2CE660();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 0;
      _os_log_impl(&dword_0, v157, v158, "PlayMediaDialogProvider going to NothingPlaying for related follow up", v159, 2u);
    }

    (*(v107 + 8))(v156, v188);
    sub_199BF8(v184, a5, v185, v186);
  }

  else
  {
    if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32FAA0))
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v160 = v188;
      v161 = sub_3ED0(v188, static Logger.default);
      swift_beginAccess();
      (*(v187 + 16))(v178, v161, v160);
      v162 = sub_2CDFE0();
      v163 = sub_2CE660();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        *v164 = 0;
        _os_log_impl(&dword_0, v162, v163, "PlayMediaDialogProvider showing not found for request for different related version follow up", v164, 2u);
      }

      (*(v187 + 8))(v178, v188);
      sub_20410(&unk_353120, &unk_2D0B50);
      v165 = swift_initStackObject();
      *(v165 + 16) = xmmword_2D0090;
      *(v165 + 32) = 0x79616C507369;
      v166 = v165 + 32;
      *(v165 + 40) = 0xE600000000000000;
      *(v165 + 72) = &type metadata for Bool;
      *(v165 + 48) = 1;
      v104 = sub_112C0(v165);
      swift_setDeallocating();
      sub_30B8(v166, &qword_34CBA0, &unk_2D0FE0);
      v191 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v192 = &off_3381B8;
      v190[0] = a5;
      v167 = a5;
      goto LABEL_68;
    }

    v168 = v174;
    v169 = v175;
    v170 = v176;
    v171 = v184;
    v172 = v185;
    v173 = v186;

    return sub_199FB8(v168, a5, v169, v170, v171, v172, v173);
  }

  return result;
}

uint64_t sub_1A0498(uint64_t a1, void *a2)
{
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 code] != &dword_4 + 2)
  {
    return 0;
  }

  sub_2CCF90();
  v7 = sub_2CBE20();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v4 + 16))(v6, v8, v3);
  v9 = sub_2CDFE0();
  v10 = sub_2CE670();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "PlayMediaDialogProvider#isNoAudioBooksToContinueError no Audio Books to continue", v11, 2u);
  }

  (*(v4 + 8))(v6, v3);
  return 1;
}

uint64_t sub_1A0698(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v7 = sub_1D05D8();
  v33 = a4;
  if (!v8)
  {
    v11 = sub_1D05D8();
    v10 = v16;
    *(inited + 72) = &type metadata for String;
    if (!v16)
    {
      goto LABEL_6;
    }

LABEL_9:
    *(inited + 48) = v11;
    goto LABEL_10;
  }

  v9 = v7;
  v10 = v8;
  v35 = v7;
  v36 = v8;
  sub_B96A0();
  v11 = sub_2CEBD0();
  v13 = v12;
  v14 = sub_2CE320();
  result = sub_2CE320();
  if (__OFSUB__(v14, result))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v14 - result < 35 || sub_2CE320() <= 5)
  {

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v9;
    goto LABEL_10;
  }

  v10 = v13;
  *(inited + 72) = &type metadata for String;
  if (v13)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(inited + 48) = 0;
  v10 = 0xE000000000000000;
LABEL_10:
  *(inited + 56) = v10;
  *(inited + 80) = 0x747369747261;
  *(inited + 88) = 0xE600000000000000;
  v17 = sub_1D05E4();
  if (!v18)
  {
    v25 = sub_1D05E4();
    v27 = (inited + 96);
    *(inited + 120) = &type metadata for String;
    if (v26)
    {
      v20 = v26;
      *v27 = v25;
      v24 = a3;
LABEL_27:
      *(inited + 104) = v20;
      v30 = sub_112C0(inited);
      swift_setDeallocating();
      sub_20410(&qword_34CBA0, &unk_2D0FE0);
      swift_arrayDestroy();
      v37 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v38 = &off_3381B8;
      v35 = a2;
      v31 = a2;
      sub_24CAFC(v30, a1, &v35, v24, v33);

      return sub_30B8(&v35, &qword_34C6C0, &qword_2D0710);
    }

    v24 = a3;
    goto LABEL_26;
  }

  v19 = v17;
  v20 = v18;
  v21 = sub_1D05D8();
  if (!v22)
  {
    sub_1D05D8();
    v24 = a3;
    if (!v28)
    {
LABEL_23:
      *(inited + 120) = &type metadata for String;
      *(inited + 96) = v19;
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v35 = v21;
  v36 = v22;
  sub_B96A0();
  sub_2CEBD0();
  v23 = sub_2CE320();
  result = sub_2CE320();
  if (!__OFSUB__(v23, result))
  {
    if (v23 - result >= 35)
    {
      v24 = a3;
      sub_2CE320();
    }

    else
    {

      v24 = a3;
    }

LABEL_21:
    if (sub_2CE320() > 59)
    {
    }

    else
    {
      v35 = v19;
      v36 = v20;
      sub_B96A0();
      v29 = sub_2CEBF0();

      if ((v29 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v27 = (inited + 96);
    *(inited + 120) = &type metadata for String;
LABEL_26:
    *v27 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_1A0B34()
{
  v1 = v0;
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *sub_35E0(v0 + 1, v0[4]);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (!*(v7 + 16))
  {
    if (*v1 <= 0)
    {
      goto LABEL_4;
    }

    return sub_2CE6D0();
  }

  v8 = sub_4F538(0xD00000000000001ALL, 0x80000000002DA500);
  if ((v9 & 1) == 0)
  {

    if (*v1 < 1)
    {
      goto LABEL_4;
    }

    return sub_2CE6D0();
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  if (v10 < *v1)
  {
    return sub_2CE6D0();
  }

LABEL_4:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v5, v11, v2);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, &v19);
    _os_log_impl(&dword_0, v12, v13, "DialogMemoryUseCase#%s#meetsCondition dialog occurence exceeded the dialog memory limit", v14, 0xCu);
    sub_306C(v15);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_1A0DE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v9 = sub_1D05D8();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  *(inited + 48) = v11;
  *(inited + 56) = v12;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x747369747261;
  *(inited + 88) = 0xE600000000000000;
  v13 = sub_1D05E4();
  *(inited + 120) = &type metadata for String;
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  *(inited + 96) = v15;
  *(inited + 104) = v16;
  v17 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v20[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v20[4] = &off_3381B8;
  v20[0] = a2;
  v18 = a2;
  sub_23B4FC(v17, a1, v20, a3, a4);

  return sub_30B8(v20, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A0F78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v92 = a3;
  v93 = a4;
  v91 = a1;
  v87 = sub_2CE000();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v82 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C8F00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2C8F20();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2C8E30();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v88 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1D15EC();
  v95 = v12;
  v13 = sub_1D05D8();
  v15 = v14;
  v90 = a2;
  v17 = sub_1D05E4();
  v18 = v16;
  if (!v15 && !v16 && !v95)
  {
    v19 = v90;
    v20 = [v90 playbackQueueLocation] == &dword_0 + 2;
    v21 = [v19 playbackQueueLocation] == &dword_0 + 3;
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0E40;
    *(inited + 32) = 0xD00000000000001BLL;
    *(inited + 40) = 0x80000000002DE780;
    *(inited + 48) = v20;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD00000000000001CLL;
    *(inited + 88) = 0x80000000002DE7A0;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = v21;
    v23 = sub_112C0(inited);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v97 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v98 = &off_3381B8;
    v96[0] = v19;
    v24 = v19;
    sub_23A7A4(v23, v91, v96, v92, v93);

    return sub_30B8(v96, &qword_34C6C0, &qword_2D0710);
  }

  sub_2C8E20();
  sub_2C8EF0();
  (*(v7 + 104))(v9, enum case for Calendar.Component.hour(_:), v6);
  v80 = sub_2C8F10();
  (*(v7 + 8))(v9, v6);
  sub_20410(&unk_353120, &unk_2D0B50);
  v25 = swift_initStackObject();
  v26 = v25;
  *(v25 + 16) = xmmword_2D5FB0;
  *(v25 + 32) = 0x656C746974;
  if (v15)
  {
    v27 = v13;
  }

  else
  {
    v27 = 0;
  }

  v28 = 0xE000000000000000;
  if (v15)
  {
    v29 = v15;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  *(v25 + 40) = 0xE500000000000000;
  *(v25 + 48) = v27;
  *(v25 + 56) = v29;
  *(v25 + 72) = &type metadata for String;
  *(v25 + 80) = 0x747369747261;
  if (v18)
  {
    v30 = v17;
  }

  else
  {
    v30 = 0;
  }

  if (v18)
  {
    v28 = v18;
  }

  *(v25 + 88) = 0xE600000000000000;
  *(v25 + 96) = v30;
  *(v25 + 104) = v28;
  *(v25 + 120) = &type metadata for String;
  *(v25 + 128) = 0xD000000000000016;
  *(v25 + 136) = 0x80000000002DE7E0;
  v31 = v95;
  if (v95)
  {
    v32 = sub_2CE2B0();
    v34 = v33;
    v35 = sub_2CE2B0();
    v37 = v87;
    v38 = v85;
    if (v34)
    {
      if (v32 == v35 && v34 == v36)
      {
        v39 = 1;
      }

      else
      {
        v39 = sub_2CEEA0();
      }

      *(v26 + 144) = v39 & 1;
      *(v26 + 168) = &type metadata for Bool;
      strcpy((v26 + 176), "isStoryTelling");
      *(v26 + 191) = -18;
      goto LABEL_27;
    }

    v31 = v95;
  }

  else
  {
    sub_2CE2B0();
    v37 = v87;
    v38 = v85;
  }

  *(v26 + 144) = 0;
  *(v26 + 168) = &type metadata for Bool;
  strcpy((v26 + 176), "isStoryTelling");
  *(v26 + 191) = -18;
  if (!v31)
  {
    sub_2CE2B0();
    goto LABEL_32;
  }

LABEL_27:
  v40 = sub_2CE2B0();
  v42 = v41;
  v43 = sub_2CE2B0();
  if (v42)
  {
    if (v40 == v43 && v42 == v44)
    {
      v45 = 1;
    }

    else
    {
      v45 = sub_2CEEA0();
    }

    *(v26 + 192) = v45 & 1;
    *(v26 + 216) = &type metadata for Bool;
    strcpy((v26 + 224), "isStorySleep");
    *(v26 + 237) = 0;
    *(v26 + 238) = -5120;
    v31 = v95;
    goto LABEL_36;
  }

  v31 = v95;
LABEL_32:

  *(v26 + 192) = 0;
  *(v26 + 216) = &type metadata for Bool;
  strcpy((v26 + 224), "isStorySleep");
  *(v26 + 237) = 0;
  *(v26 + 238) = -5120;
  if (!v31)
  {
    sub_2CE2B0();
    goto LABEL_41;
  }

LABEL_36:
  v46 = v31;
  v47 = sub_2CE2B0();
  v49 = v48;
  v50 = sub_2CE2B0();
  if (v49)
  {
    if (v47 == v50 && v49 == v51)
    {
      v52 = 1;
    }

    else
    {
      v52 = sub_2CEEA0();
    }

    *(v26 + 240) = v52 & 1;
    *(v26 + 264) = &type metadata for Bool;
    *(v26 + 272) = 0xD000000000000011;
    *(v26 + 280) = 0x80000000002DE800;
    v31 = v46;
    goto LABEL_45;
  }

  v31 = v46;
LABEL_41:

  *(v26 + 240) = 0;
  *(v26 + 264) = &type metadata for Bool;
  *(v26 + 272) = 0xD000000000000011;
  *(v26 + 280) = 0x80000000002DE800;
  if (!v31)
  {
    sub_2CE2B0();
    goto LABEL_50;
  }

LABEL_45:
  v53 = v31;
  v54 = sub_2CE2B0();
  v56 = v55;
  v57 = sub_2CE2B0();
  if (v56)
  {
    if (v54 == v57 && v56 == v58)
    {
      v59 = 1;
    }

    else
    {
      v59 = sub_2CEEA0();
    }

    *(v26 + 288) = v59 & 1;
    *(v26 + 312) = &type metadata for Bool;
    strcpy((v26 + 320), "isWordOfTheDay");
    *(v26 + 335) = -18;
    goto LABEL_54;
  }

  v31 = v53;
LABEL_50:

  *(v26 + 288) = 0;
  *(v26 + 312) = &type metadata for Bool;
  strcpy((v26 + 320), "isWordOfTheDay");
  *(v26 + 335) = -18;
  if (v31)
  {
LABEL_54:
    v61 = sub_2CE2B0();
    v63 = v62;

    v64 = sub_2CE2B0();
    if (v63)
    {
      if (v61 == v64 && v63 == v65)
      {

        v60 = 1;
      }

      else
      {
        v60 = sub_2CEEA0();
      }
    }

    else
    {
      v60 = 0;
    }

    goto LABEL_60;
  }

  sub_2CE2B0();
  v60 = 0;
LABEL_60:

  *(v26 + 336) = v60 & 1;
  *(v26 + 360) = &type metadata for Bool;
  *(v26 + 368) = 0x746867694E7369;
  *(v26 + 376) = 0xE700000000000000;
  v66 = (v80 - 20) < 0xFFFFFFFFFFFFFFF1;
  *(v26 + 408) = &type metadata for Bool;
  *(v26 + 384) = v66;
  v67 = sub_112C0(v26);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v68 = v82;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v69 = sub_3ED0(v37, static Logger.default);
  swift_beginAccess();
  (*(v38 + 16))(v68, v69, v37);

  v70 = sub_2CDFE0();
  v71 = sub_2CE660();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = v68;
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v96[0] = v74;
    *v73 = 136315394;
    v75 = sub_2CE210();
    v77 = sub_3F08(v75, v76, v96);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2048;
    *(v73 + 14) = v80;
    _os_log_impl(&dword_0, v70, v71, "PlayMediaDialogProvider#makePodcastPromotion Dialog params for podcastPromotion: %s, current time hour: %ld", v73, 0x16u);
    sub_306C(v74);

    (*(v38 + 8))(v72, v87);
  }

  else
  {

    (*(v38 + 8))(v68, v37);
  }

  v97 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v98 = &off_3381B8;
  v96[0] = v90;
  v78 = v90;
  sub_23E3F4(v67, v91, v96, v92, v93);

  (*(v84 + 8))(v89, v86);
  (*(v81 + 8))(v88, v83);
  return sub_30B8(v96, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A1C48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v7 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v10 = sub_2CBF80();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v26 = a1;
  v11 = sub_197DC8(a1, a2, (v4 + 128), v9);
  sub_30B8(v9, &qword_34DD30, &unk_2D1BC0);
  v12 = sub_1D05D8();
  v14 = v13;
  v15 = sub_2CE710();
  v16 = sub_2CE710() == 5 || sub_2CE710() == 19;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v18 = inited;
  *(inited + 32) = 0x656C746974;
  *(inited + 16) = xmmword_2D5FA0;
  v19 = 0xE000000000000000;
  if (v14)
  {
    v19 = v14;
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v20;
  *(inited + 56) = v19;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6F696461527369;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v15 == 16;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x696C79616C507369;
  *(inited + 136) = 0xEA00000000007473;
  *(inited + 144) = v16;
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "isAppSpecified");
  *(inited + 191) = -18;
  *(inited + 192) = v11 & 1;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD00000000000001BLL;
  *(inited + 232) = 0x80000000002DE780;
  *(inited + 240) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(v18 + 264) = &type metadata for Bool;
  *(v18 + 272) = 0xD00000000000001CLL;
  *(v18 + 280) = 0x80000000002DE7A0;
  v21 = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(v18 + 312) = &type metadata for Bool;
  *(v18 + 288) = v21;
  v22 = sub_112C0(v18);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v29[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v29[4] = &off_3381B8;
  v29[0] = a2;
  v23 = a2;
  sub_23F7F8(v22, v26, v29, v27, v28);

  return sub_30B8(v29, &qword_34C6C0, &qword_2D0710);
}

void sub_1A1FBC(unint64_t a1, void *a2, uint64_t a3, id a4)
{
  v64 = sub_1D15EC();
  v9 = v8;
  v62 = sub_1D05D8();
  v11 = v10;
  v63 = sub_1D05E4();
  v13 = v12;
  v14 = [a2 mediaItems];
  if (!v14)
  {
    v65 = _swiftEmptyArrayStorage;
    if (v11)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v15 = v14;
  v59 = v11;
  v60 = v13;
  v61 = v9;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v16 = sub_2CE410();

  v17 = v16 >> 62;
  if (!(v16 >> 62))
  {
    v18 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    v19 = v18 != 0;
    if (v18 >= v19)
    {
      goto LABEL_4;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_47:
  v53 = sub_2CEDA0();
  if ((v53 & 0x8000000000000000) == 0)
  {
    v18 = v53;
    v19 = v53 != 0;
    if (sub_2CEDA0() >= v19)
    {
      if (sub_2CEDA0() >= v18)
      {
LABEL_4:
        if ((v16 & 0xC000000000000001) != 0)
        {

          if (v18 >= 2)
          {
            v20 = v19;
            do
            {
              v21 = v20 + 1;
              sub_2CECC0(v20);
              v20 = v21;
            }

            while (v18 != v21);
          }
        }

        else
        {
        }

        v58 = a1;

        if (v17)
        {
          sub_2CEDB0();
          a1 = v22;
          v19 = v23;
          v25 = v24;

          v18 = v25 >> 1;
        }

        else
        {
          a1 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
        }

        swift_unknownObjectRetain();
        if (v19 == v18)
        {
          v65 = _swiftEmptyArrayStorage;
        }

        else
        {
          v65 = _swiftEmptyArrayStorage;
          v16 = &selRef_hasTwoOrMoreRooms;
          v17 = v19;
          v56 = a3;
          v57 = a4;
          do
          {
            a3 = v17;
            while (1)
            {
              if (v17 < v19 || a3 >= v18)
              {
                __break(1u);
                goto LABEL_47;
              }

              v26 = a3 + 1;
              a4 = *(a1 + 8 * a3);
              v27 = [a4 artist];
              if (v27)
              {
                break;
              }

              ++a3;
              if (v18 == v26)
              {
                a3 = v56;
                a4 = v57;
                goto LABEL_30;
              }
            }

            v28 = v27;
            v29 = sub_2CE270();
            v54 = v30;
            v55 = v29;

            v31 = v65;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = sub_B90C4(0, *(v65 + 2) + 1, 1, v65);
            }

            v33 = *(v31 + 2);
            v32 = *(v31 + 3);
            if (v33 >= v32 >> 1)
            {
              v31 = sub_B90C4((v32 > 1), v33 + 1, 1, v31);
            }

            *(v31 + 2) = v33 + 1;
            v65 = v31;
            v34 = &v31[16 * v33];
            *(v34 + 4) = v55;
            *(v34 + 5) = v54;
            v17 = a3 + 1;
            v35 = v18 - 1 == a3;
            a3 = v56;
            a4 = v57;
          }

          while (!v35);
        }

LABEL_30:
        swift_unknownObjectRelease_n();
        a1 = v58;
        v9 = v61;
        v11 = v59;
        v13 = v60;
        if (v59)
        {
          goto LABEL_34;
        }

LABEL_31:
        if (!v13 && !v9)
        {

          v36 = [a2 playbackQueueLocation] == &dword_0 + 2;
          v37 = [a2 playbackQueueLocation] == &dword_0 + 3;
          sub_20410(&unk_353120, &unk_2D0B50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2D0E40;
          *(inited + 32) = 0xD00000000000001BLL;
          *(inited + 40) = 0x80000000002DE780;
          *(inited + 48) = v36;
          *(inited + 72) = &type metadata for Bool;
          *(inited + 80) = 0xD00000000000001CLL;
          *(inited + 88) = 0x80000000002DE7A0;
          *(inited + 120) = &type metadata for Bool;
          *(inited + 96) = v37;
          v39 = sub_112C0(inited);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          v67 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
          v68 = &off_3381B8;
          v66[0] = a2;
          v40 = a2;
          sub_23A7A4(v39, a1, v66, a3, a4);
LABEL_45:

          sub_30B8(v66, &qword_34C6C0, &qword_2D0710);
          return;
        }

LABEL_34:
        v41 = *(v65 + 2);
        sub_20410(&unk_353120, &unk_2D0B50);
        v42 = swift_initStackObject();
        v43 = v11;
        v44 = v42;
        *(v42 + 16) = xmmword_2D5F90;
        *(v42 + 32) = 0x656C746974;
        v45 = v62;
        if (!v43)
        {
          v45 = 0;
        }

        v46 = 0xE000000000000000;
        if (!v43)
        {
          v43 = 0xE000000000000000;
        }

        *(v42 + 40) = 0xE500000000000000;
        *(v42 + 48) = v45;
        *(v42 + 56) = v43;
        *(v42 + 72) = &type metadata for String;
        *(v42 + 80) = 0x6369706F74;
        v47 = v64;
        if (v9)
        {
          v48 = v9;
        }

        else
        {
          v47 = 0;
          v48 = 0xE000000000000000;
        }

        *(v42 + 88) = 0xE500000000000000;
        *(v42 + 96) = v47;
        *(v42 + 104) = v48;
        *(v42 + 120) = &type metadata for String;
        *(v42 + 128) = 0x72656469766F7270;
        v49 = v63;
        if (v13)
        {
          v46 = v13;
        }

        else
        {
          v49 = 0;
        }

        *(v42 + 136) = 0xE800000000000000;
        *(v42 + 144) = v49;
        *(v42 + 152) = v46;
        *(v42 + 168) = &type metadata for String;
        *(v42 + 176) = 0xD000000000000014;
        *(v42 + 184) = 0x80000000002DE820;
        v50 = sub_20410(&qword_353CA0, &unk_2D6090);
        v44[24] = v65;
        v44[27] = v50;
        v44[28] = 0xD00000000000001CLL;
        v44[33] = &type metadata for Int;
        v44[29] = 0x80000000002DE840;
        v44[30] = v41;
        v51 = sub_112C0(v44);
        swift_setDeallocating();
        sub_20410(&qword_34CBA0, &unk_2D0FE0);
        swift_arrayDestroy();
        v67 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v68 = &off_3381B8;
        v66[0] = a2;
        v52 = a2;
        sub_23C274(v51, a1, v66, a3, a4);
        goto LABEL_45;
      }

      __break(1u);
    }

    goto LABEL_51;
  }

LABEL_52:
  __break(1u);
}

uint64_t sub_1A2614(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v37 = a3;
  v38 = a4;
  v5 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v5 - 8);
  v7 = v35 - v6;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D5FA0;
  *(inited + 32) = 0x656C746974;
  v35[1] = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  v9 = sub_2CE710();
  v10 = sub_2CE710();
  if (v9 == 7 || v10 == 8)
  {
    v11 = sub_1D05E4();
  }

  else
  {
    v11 = sub_1D05D8();
  }

  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "episodeTitle");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v15 = sub_1D05D8();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  *(inited + 96) = v17;
  *(inited + 104) = v18;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x707954616964656DLL;
  *(inited + 136) = 0xE900000000000065;
  v19 = sub_2CE710();
  *(inited + 144) = sub_1E93D4(v19);
  *(inited + 152) = v20;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x747365646C4F7369;
  *(inited + 184) = 0xE800000000000000;
  v21 = [a2 mediaSearch];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 sortOrder];

    v24 = v23 == &dword_0 + 2;
  }

  else
  {
    v24 = 0;
  }

  *(inited + 192) = v24;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x74736577654E7369;
  *(inited + 232) = 0xE800000000000000;
  v25 = [a2 mediaSearch];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 sortOrder];

    v28 = v27 == &dword_0 + 1;
  }

  else
  {
    v28 = 0;
  }

  *(inited + 240) = v28;
  *(inited + 264) = &type metadata for Bool;
  strcpy((inited + 272), "isAppSpecified");
  *(inited + 287) = -18;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v29 = sub_2CBF80();
    (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  }

  v30 = v36;
  v31 = sub_197DC8(v36, a2, (v35[2] + 128), v7);
  sub_30B8(v7, &qword_34DD30, &unk_2D1BC0);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v31 & 1;
  v32 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v39[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v39[4] = &off_3381B8;
  v39[0] = a2;
  v33 = a2;
  sub_23BBA8(v32, v30, v39, v37, v38);

  return sub_30B8(v39, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A29E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v7 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0050;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v11 = sub_1D05D8();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v12)
  {
    v14 = v12;
  }

  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6F696461527369;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_2CE710() == 16;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000000002DE780;
  *(inited + 144) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD00000000000001CLL;
  *(inited + 184) = 0x80000000002DE7A0;
  *(inited + 192) = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x696C79616C507369;
  *(inited + 232) = 0xEA00000000007473;
  v15 = sub_2CE710() == 5 || sub_2CE710() == 19;
  *(inited + 240) = v15;
  *(inited + 264) = &type metadata for Bool;
  strcpy((inited + 272), "isAppSpecified");
  *(inited + 287) = -18;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v16 = sub_2CBF80();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  v17 = sub_197DC8(a1, a2, (v4 + 128), v9);
  sub_30B8(v9, &qword_34DD30, &unk_2D1BC0);
  *(inited + 288) = v17 & 1;
  *(inited + 312) = &type metadata for Bool;
  strcpy((inited + 320), "isPersonalized");
  *(inited + 335) = -18;
  v18 = [a2 privatePlayMediaIntentData];
  v19 = [v18 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v20.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v19)
  {
    v21 = sub_2CEB30();

    v20.super.super.isa = v19;
  }

  else
  {
    v21 = 0;
  }

  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = v21 & 1;
  v22 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v27[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v27[4] = &off_3381B8;
  v27[0] = a2;
  v23 = a2;
  sub_23FEC8(v22, a1, v27, v25, v26);

  return sub_30B8(v27, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A2E08(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a5;
  v40 = a6;
  v41 = a1;
  v11 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 32) = 0x656C746974;
  *(inited + 16) = xmmword_2D5FA0;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = &type metadata for String;
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v16 = [a4 mediaSearch];
    if (v16 && (v17 = v16, v18 = [v16 mediaName], v17, v18))
    {
      a2 = sub_2CE270();
      v15 = v19;
    }

    else
    {
      a2 = 0;
      v15 = 0xE000000000000000;
    }
  }

  *(inited + 48) = a2;
  *(inited + 56) = v15;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000000002DE860;

  v20 = [a4 mediaContainer];
  if (v20 && (v21 = v20, v22 = [v20 type], v21, v22 == &dword_0 + 2))
  {
    v23 = 1;
  }

  else
  {
    v42[0] = a4;
    sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    if (sub_2CBFA0() == 2 && (v24 = [a4 mediaSearch]) != 0)
    {
      v25 = v24;
      v26 = [v24 sortOrder];

      v23 = v26 == &dword_8;
    }

    else
    {
      v23 = 0;
    }
  }

  *(inited + 96) = v23;
  *(inited + 120) = &type metadata for Bool;
  strcpy((inited + 128), "isAppSpecified");
  *(inited + 143) = -18;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v27 = sub_2CBF80();
    (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  }

  v28 = sub_197DC8(v41, a4, (v7 + 128), v13);
  sub_30B8(v13, &qword_34DD30, &unk_2D1BC0);
  *(inited + 144) = v28 & 1;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x80000000002DE880;
  v29 = [a4 privatePlayMediaIntentData];
  v30 = [v29 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v31.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v30)
  {
    v32 = sub_2CEB30();

    v31.super.super.isa = v30;
  }

  else
  {
    v32 = 0;
  }

  *(inited + 192) = v32 & 1;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x7478654E7369;
  *(inited + 232) = 0xE600000000000000;
  v33 = [a4 playbackQueueLocation] == &dword_0 + 2 || objc_msgSend(a4, "playbackQueueLocation") == &dword_0 + 1;
  *(inited + 240) = v33;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0x726574614C7369;
  *(inited + 280) = 0xE700000000000000;
  v34 = [a4 playbackQueueLocation] == &dword_0 + 3;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v34;
  v35 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v42[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v42[4] = &off_3381B8;
  v42[0] = a4;
  v36 = a4;
  sub_2412CC(v35, v41, v42, v39, v40);

  return sub_30B8(v42, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A32FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v77 = a3;
  v78 = a4;
  v8 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v8 - 8);
  v10 = v67 - v9;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v11 = sub_2CBF80();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  v76 = a1;
  v74 = sub_197DC8(a1, a2, (v4 + 128), v10);
  sub_30B8(v10, &qword_34DD30, &unk_2D1BC0);
  v12 = &selRef_hasTwoOrMoreRooms;
  v13 = [a2 mediaSearch];
  if (v13 && (v14 = v13, v15 = [v13 sortOrder], v14, v15 == &dword_4 + 1) || (v16 = objc_msgSend(a2, "mediaSearch")) != 0 && (v17 = v16, v18 = objc_msgSend(v16, "sortOrder"), v17, v18 == &dword_0 + 3))
  {
    v19 = sub_1D15EC();
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v23 = sub_1D05E4();
      v25 = v24;
      if (!v24)
      {
LABEL_10:
        v70 = 0;
        goto LABEL_20;
      }

LABEL_13:
      if (v21 == v23 && v22 == v25)
      {

        v70 = 0;
        v68 = 0;
        v69 = 0;
        goto LABEL_22;
      }

      v29 = sub_2CEEA0();

      v70 = 0;
      if (v29)
      {
        v68 = 0;
        v69 = 0;
LABEL_21:
        v25 = v22;
        goto LABEL_22;
      }

LABEL_20:
      v30 = sub_1D05E4();
      v68 = v31;
      v69 = v30;
      goto LABEL_21;
    }
  }

  v21 = sub_1D05D8();
  v22 = v26;
  v27 = sub_1D05E4();
  v25 = v28;
  if (v22)
  {
    v23 = v27;
    if (!v28)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (v28)
  {

    v22 = 0;
    v70 = 1;
    goto LABEL_20;
  }

  v68 = 0;
  v69 = 0;
  v70 = 1;
LABEL_22:
  v79[0] = a2;
  v72 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v32 = sub_2CBFA0();
  v33 = v32 == 1 || v32 == 18;
  v34 = !v33;
  v71 = v34;
  v35 = [a2 mediaSearch];
  v75 = v5;
  v73 = v21;
  if (v35 && (v36 = v35, v37 = [v35 artistName], v36, v37))
  {
    v67[0] = sub_2CE270();
    v39 = v38;
  }

  else
  {
    v67[0] = 0;
    v39 = 0;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D5FB0;
  *(inited + 32) = 0x747365427369;
  v67[1] = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  v41 = [a2 mediaSearch];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 genreNames];

    if (v43)
    {
      v44 = sub_2CE410();

      if (v44[2])
      {
        v45 = v44[4];
        v46 = v44[5];

        v47 = HIBYTE(v46) & 0xF;
        v33 = (v46 & 0x2000000000000000) == 0;
        v12 = &selRef_hasTwoOrMoreRooms;
        if (v33)
        {
          v47 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (v47)
        {
          goto LABEL_42;
        }
      }

      else
      {
      }
    }
  }

  v48 = [a2 v12[33]];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 sortOrder];

    v51 = v50 == &dword_0 + 3;
    goto LABEL_43;
  }

LABEL_42:
  v51 = 0;
LABEL_43:
  *(inited + 48) = v51;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x7473726F577369;
  *(inited + 88) = 0xE700000000000000;
  v52 = [a2 mediaSearch];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 sortOrder];

    v55 = v54 == &dword_4;
  }

  else
  {
    v55 = 0;
  }

  *(inited + 96) = v55;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x656C746974;
  v56 = v73;
  if (v70)
  {
    v56 = 0;
  }

  v57 = 0xE000000000000000;
  if (v70)
  {
    v58 = 0xE000000000000000;
  }

  else
  {
    v58 = v25;
  }

  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = v56;
  *(inited + 152) = v58;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x747369747261;
  v60 = v68;
  v59 = v69;
  if (!v68)
  {
    v59 = 0;
    v60 = 0xE000000000000000;
  }

  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = v59;
  *(inited + 200) = v60;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x7053747369747261;
  v61 = v67[0];
  if (v39)
  {
    v57 = v39;
  }

  else
  {
    v61 = 0;
  }

  *(inited + 232) = 0xEF64656966696365;
  *(inited + 240) = v61;
  *(inited + 248) = v57;
  *(inited + 264) = &type metadata for String;
  strcpy((inited + 272), "isAppSpecified");
  *(inited + 287) = -18;
  *(inited + 288) = v74 & 1;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0xD00000000000001BLL;
  *(inited + 328) = 0x80000000002DE780;
  *(inited + 336) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(inited + 360) = &type metadata for Bool;
  *(inited + 368) = 0xD00000000000001CLL;
  *(inited + 376) = 0x80000000002DE7A0;
  v62 = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v62;
  v63 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v79[3] = v72;
  v79[4] = &off_3381B8;
  v79[0] = a2;
  if (v71)
  {
    v64 = a2;
    sub_23F14C(v63, v76, v79, v77, v78);
  }

  else
  {
    v65 = a2;
    sub_23EAA0(v63, v76, v79, v77, v78);
  }

  return sub_30B8(v79, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A39E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  v64 = a3;
  v65 = a4;
  v5 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - v6;
  v8 = sub_2CE710();
  v9 = [a2 mediaSearch];
  v61 = v7;
  if (!v9 || (v10 = v9, v11 = [v9 sortOrder], v10, v11 != &dword_4 + 1))
  {
    v12 = [a2 mediaSearch];
    if (!v12 || (v13 = v12, v14 = [v12 sortOrder], v13, v14 != &dword_0 + 3))
    {
      v19 = 0;
LABEL_18:
      v59 = v19;
      v23 = sub_1D05D8();
      v24 = v25;
      goto LABEL_19;
    }
  }

  v15 = sub_1D15EC();
  if (v16)
  {
    v17 = v15 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v19 = 0;
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v17;
  }

  if (!v20)
  {
    goto LABEL_18;
  }

  if (v8 == 19)
  {
    goto LABEL_18;
  }

  v21 = sub_1D15EC();
  v19 = 1;
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v21;
  v24 = v22;
  v59 = 1;
LABEL_19:
  v26 = [a2 mediaSearch];
  if (v26 && (v27 = v26, v28 = [v26 artistName], v27, v28))
  {
    v29 = sub_2CE270();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  v32 = [a2 backingStore];
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = [v33 playShuffled];
  }

  else
  {
    v34 = 0;
  }

  v35 = [a2 playbackRepeatMode];
  v60 = v8;
  if (v35 == &dword_0 + 2)
  {
    v36 = 1;
    if ((v31 & 0x2000000000000000) == 0)
    {
LABEL_28:
      v37 = v29 & 0xFFFFFFFFFFFFLL;
      goto LABEL_31;
    }
  }

  else
  {
    v36 = [a2 playbackRepeatMode] == &dword_0 + 3;
    if ((v31 & 0x2000000000000000) == 0)
    {
      goto LABEL_28;
    }
  }

  v37 = HIBYTE(v31) & 0xF;
LABEL_31:
  v38 = v37 == 0;
  v58 = v38 && v36;
  v39 = v38 & v34;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v41 = inited;
  *(inited + 16) = xmmword_2D1060;
  *(inited + 32) = 0x656C746974;
  if (v24)
  {
    v42 = v23;
  }

  else
  {
    v42 = 0;
  }

  if (v24)
  {
    v43 = v24;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v42;
  *(inited + 56) = v43;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x747369747261;
  *(inited + 88) = 0xE600000000000000;
  v44 = sub_1D05E4();
  if (v45)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  *(v41 + 96) = v46;
  *(v41 + 104) = v47;
  *(v41 + 120) = &type metadata for String;
  *(v41 + 128) = 0x7053747369747261;
  *(v41 + 136) = 0xEF64656966696365;
  *(v41 + 144) = v29;
  *(v41 + 152) = v31;
  *(v41 + 168) = &type metadata for String;
  *(v41 + 176) = 0xD00000000000001BLL;
  *(v41 + 184) = 0x80000000002DE780;
  *(v41 + 192) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(v41 + 216) = &type metadata for Bool;
  *(v41 + 224) = 0xD00000000000001CLL;
  *(v41 + 232) = 0x80000000002DE7A0;
  *(v41 + 240) = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(v41 + 264) = &type metadata for Bool;
  *(v41 + 272) = 0x667568536E4F7369;
  *(v41 + 280) = 0xEB00000000656C66;
  *(v41 + 288) = v39;
  *(v41 + 312) = &type metadata for Bool;
  *(v41 + 320) = 0x657065526E4F7369;
  *(v41 + 328) = 0xEA00000000007461;
  *(v41 + 336) = v58;
  *(v41 + 360) = &type metadata for Bool;
  *(v41 + 368) = 0x6E6547706F547369;
  *(v41 + 376) = 0xEA00000000006572;
  *(v41 + 384) = v59;
  *(v41 + 408) = &type metadata for Bool;
  strcpy((v41 + 416), "isUserPlaylist");
  *(v41 + 431) = -18;
  *(v41 + 432) = 0;
  *(v41 + 456) = &type metadata for Bool;
  strcpy((v41 + 464), "isAppSpecified");
  *(v41 + 479) = -18;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    v48 = v61;
    sub_2CC0B0();
  }

  else
  {
    v49 = sub_2CBF80();
    v48 = v61;
    (*(*(v49 - 8) + 56))(v61, 1, 1, v49);
  }

  v50 = v60 == 19;
  v51 = v63;
  v52 = sub_197DC8(v63, a2, (v62 + 128), v48);
  sub_30B8(v48, &qword_34DD30, &unk_2D1BC0);
  *(v41 + 480) = v52 & 1;
  *(v41 + 504) = &type metadata for Bool;
  *(v41 + 512) = 0xD000000000000019;
  *(v41 + 520) = 0x80000000002DE900;
  *(v41 + 552) = &type metadata for Bool;
  *(v41 + 528) = v50;
  *(v41 + 560) = 0x6564616365447369;
  *(v41 + 568) = 0xEF6E6F6974617453;
  v53 = sub_1D1750();
  *(v41 + 600) = &type metadata for Bool;
  *(v41 + 576) = v53 & 1;
  v54 = sub_112C0(v41);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v66[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v66[4] = &off_3381B8;
  v66[0] = a2;
  v55 = a2;
  sub_23AE50(v54, v51, v66, v64, v65);

  return sub_30B8(v66, &qword_34C6C0, &qword_2D0710);
}