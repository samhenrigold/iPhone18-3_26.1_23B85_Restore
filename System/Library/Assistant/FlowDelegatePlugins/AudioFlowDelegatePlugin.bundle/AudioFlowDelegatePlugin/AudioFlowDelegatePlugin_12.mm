uint64_t sub_16CE3C()
{
  sub_16CEA4();
  result = sub_2CEB60();
  qword_35F760 = result;
  return result;
}

unint64_t sub_16CEA4()
{
  result = qword_352F30;
  if (!qword_352F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_352F30);
  }

  return result;
}

char *sub_16CEF0(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2CEDA0())
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_2CECD0();
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v30 = v8;
      a1(&v25, &v30);
      if (v3)
      {

        return v7;
      }

      if (*(&v25 + 1))
      {
        v22 = v27;
        v23 = v28;
        v24 = v29;
        v20 = v25;
        v21 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_B934C(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_B934C((v10 > 1), v11 + 1, 1, v7);
        }

        v19 = v24;
        v17 = v22;
        v18 = v23;
        v12 = v20;
        v16 = v21;
        *(v7 + 2) = v11 + 1;
        v13 = &v7[72 * v11];
        *(v13 + 2) = v12;
        *(v13 + 12) = v19;
        *(v13 + 4) = v17;
        *(v13 + 5) = v18;
        *(v13 + 3) = v16;
      }

      else
      {
        v22 = v27;
        v23 = v28;
        v24 = v29;
        v20 = v25;
        v21 = v26;
        sub_30B8(&v20, &qword_34E968, &unk_2D2900);
      }

      ++v6;
      if (v9 == i)
      {
        return v7;
      }
    }

    if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_21;
    }

    v8 = *(a3 + 8 * v6 + 32);

    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void (*sub_16D130(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = a3 + 32; ; i += 72)
    {
      v7 = *(i + 16);
      v8 = *(i + 48);
      v22 = *(i + 32);
      v23 = v8;
      v9 = *(i + 16);
      v21[0] = *i;
      v21[1] = v9;
      v10 = *(i + 48);
      v18 = v22;
      v19 = v10;
      v24 = *(i + 64);
      v20 = *(i + 64);
      v16 = v21[0];
      v17 = v7;
      sub_333FC(v21, &v11);
      v5(&v16);
      if (v3)
      {
        break;
      }

      v13 = v18;
      v14 = v19;
      v15 = v20;
      v11 = v16;
      v12 = v17;
      result = sub_9AA00(&v11);
      if (!--v4)
      {
        return result;
      }
    }

    v13 = v18;
    v14 = v19;
    v15 = v20;
    v11 = v16;
    v12 = v17;
    return sub_9AA00(&v11);
  }

  return result;
}

void sub_16D228(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v210 = a3;
  v209 = a2;
  v193 = sub_2CB3E0();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = (&v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_20410(&unk_353040, &qword_2D1528);
  __chkstk_darwin(v7 - 8);
  v194 = (&v191 - v8);
  v208 = sub_2CA340();
  v206 = *(v208 - 8);
  v9 = __chkstk_darwin(v208);
  v195 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v200 = &v191 - v12;
  __chkstk_darwin(v11);
  v207 = &v191 - v13;
  v214 = sub_2CA810();
  v220 = *(v214 - 8);
  v14 = __chkstk_darwin(v214);
  v204 = &v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v213 = &v191 - v17;
  __chkstk_darwin(v16);
  v221 = &v191 - v18;
  v19 = sub_2CA870();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v224 = (&v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v21);
  v25 = &v191 - v24;
  __chkstk_darwin(v23);
  v27 = &v191 - v26;
  v28 = sub_2CE000();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v205 = &v191 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v203 = &v191 - v33;
  v34 = __chkstk_darwin(v32);
  v216 = &v191 - v35;
  v36 = __chkstk_darwin(v34);
  v197 = &v191 - v37;
  v38 = __chkstk_darwin(v36);
  v196 = &v191 - v39;
  v40 = __chkstk_darwin(v38);
  v202 = &v191 - v41;
  v42 = __chkstk_darwin(v40);
  v199 = &v191 - v43;
  v44 = __chkstk_darwin(v42);
  v201 = &v191 - v45;
  v46 = __chkstk_darwin(v44);
  v198 = &v191 - v47;
  __chkstk_darwin(v46);
  v49 = &v191 - v48;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v50 = sub_3ED0(v28, static Logger.default);
  swift_beginAccess();
  v51 = *(v29 + 16);
  v217 = v50;
  v218 = v51;
  v219 = v29 + 16;
  v51(v49, v50, v28);
  v52 = *(v20 + 16);
  v225 = a1;
  v226 = v52;
  v52(v27, a1, v19);
  v223 = v49;
  v53 = v20;
  v54 = sub_2CDFE0();
  v55 = v19;
  v56 = sub_2CE690();
  v57 = os_log_type_enabled(v54, v56);
  v222 = v29;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v215 = a4;
    v59 = v58;
    v60 = swift_slowAlloc();
    v212 = v28;
    v61 = v60;
    *&v228[0] = v60;
    *v59 = 136315138;
    v226(v25, v27, v55);
    v62 = sub_2CE2A0();
    v64 = v63;
    v211 = v53;
    v65 = *(v53 + 8);
    v65(v27, v55);
    v66 = sub_3F08(v62, v64, v228);

    *(v59 + 4) = v66;
    v67 = v65;
    _os_log_impl(&dword_0, v54, v56, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse %s", v59, 0xCu);
    sub_306C(v61);
    v28 = v212;

    a4 = v215;

    v68 = *(v222 + 8);
    v68(v223, v28);
    v69 = v55;
    v70 = v211;
  }

  else
  {

    v71 = v27;
    v67 = *(v53 + 8);
    v67(v71, v55);
    v68 = *(v29 + 8);
    v68(v223, v28);
    v69 = v55;
    v70 = v53;
  }

  v72 = v224;
  v226(v224, v225, v69);
  v73 = (*(v70 + 88))(v72, v69);
  if (v73 == enum case for Parse.NLv3IntentOnly(_:))
  {
    a4[3] = &type metadata for NilAppResolutionProvider;
    a4[4] = sub_17D750();
    *(a4 + 40) = 0;
LABEL_8:
    v74 = v72;
    v75 = v69;
LABEL_9:
    v67(v74, v75);
    return;
  }

  if (v73 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v70 + 96))(v72, v69);
    sub_20410(&qword_353070, &unk_2D0FB0);
    sub_2CA850();
    *(&v229 + 1) = sub_2CA830();
    a4[3] = &type metadata for CustomAppResolutionProvider;
    a4[4] = sub_17D7F8();
    v76 = swift_allocObject();
    *a4 = v76;
    v77 = v228[1];
    v76[1] = v228[0];
    v76[2] = v77;
    v76[3] = v229;

    *(a4 + 40) = 0;
    v78 = sub_2CAFE0();
    (*(*(v78 - 8) + 8))(v72, v78);
    return;
  }

  if (v73 != enum case for Parse.directInvocation(_:))
  {
    if (v73 != enum case for Parse.pommesResponse(_:))
    {
      if (v73 == enum case for Parse.uso(_:))
      {
        v211 = v70;
        v226 = v69;
        if (sub_2CA7C0())
        {
          if (sub_4259C())
          {
            v111 = v198;
            v218(v198, v217, v28);
            v112 = sub_2CDFE0();
            v113 = sub_2CE690();
            if (os_log_type_enabled(v112, v113))
            {
              v114 = swift_slowAlloc();
              *v114 = 0;
              _os_log_impl(&dword_0, v112, v113, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse returning NilAppResolutionProvider for uso Affinity task", v114, 2u);
            }

            v68(v111, v28);
            a4[3] = &type metadata for NilAppResolutionProvider;
            a4[4] = sub_17D750();
          }

          else
          {
            sub_2CD700();
            swift_allocObject();

            v160 = sub_2CD6B0();
            v218(v201, v217, v28);
            v161 = sub_2CDFE0();
            v162 = sub_2CE690();
            if (os_log_type_enabled(v161, v162))
            {
              v163 = swift_slowAlloc();
              *v163 = 0;
              _os_log_impl(&dword_0, v161, v162, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse returning UsoAppResolutionProvider for uso parse", v163, 2u);
            }

            v68(v201, v28);
            a4[3] = &type metadata for UsoAppResolutionProvider;
            a4[4] = sub_17D7A4();

            *a4 = v160;
          }

          *(a4 + 40) = 0;
        }

        else
        {
          v153 = v199;
          v218(v199, v217, v28);
          v154 = sub_2CDFE0();
          v155 = sub_2CE680();
          if (os_log_type_enabled(v154, v155))
          {
            v156 = swift_slowAlloc();
            *v156 = 0;
            _os_log_impl(&dword_0, v154, v155, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse Failed to get task from parse", v156, 2u);
          }

          v68(v153, v28);
          v157 = sub_2CB850();
          sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
          v158 = swift_allocError();
          (*(*(v157 - 8) + 104))(v159, enum case for PlaybackCode.ceGE16(_:), v157);
          *a4 = v158;
          *(a4 + 40) = 1;
        }

        v74 = v72;
        v75 = v226;
        goto LABEL_9;
      }

      if (v73 != enum case for Parse.ifClientAction(_:))
      {
        v218(v205, v217, v28);
        v147 = sub_2CDFE0();
        v148 = sub_2CE680();
        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          *v149 = 0;
          _os_log_impl(&dword_0, v147, v148, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse unsupported parse", v149, 2u);
        }

        v68(v205, v28);
        v150 = sub_2CB850();
        sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v151 = swift_allocError();
        (*(*(v150 - 8) + 104))(v152, enum case for PlaybackCode.ceGE22(_:), v150);
        *a4 = v151;
        *(a4 + 40) = 1;
        goto LABEL_8;
      }

      v215 = a4;
      (*(v70 + 96))(v72, v69);
      v115 = v206;
      v116 = v207;
      v117 = v208;
      (*(v206 + 32))(v207, v72, v208);
      v118 = v203;
      v218(v203, v217, v28);
      v119 = *(v115 + 16);
      v120 = v200;
      v119(v200, v116, v117);
      v121 = sub_2CDFE0();
      v122 = sub_2CE660();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v212 = v28;
        v125 = v124;
        *&v228[0] = v124;
        *v123 = 136315138;
        v119(v195, v120, v208);
        v126 = sub_2CE2A0();
        v128 = v127;
        v129 = *(v115 + 8);
        v129(v120, v208);
        v130 = sub_3F08(v126, v128, v228);

        *(v123 + 4) = v130;
        _os_log_impl(&dword_0, v121, v122, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse received IF client action parse: %s", v123, 0xCu);
        sub_306C(v125);

        v131 = v203;
        v132 = v212;
        v117 = v208;
      }

      else
      {

        v129 = *(v115 + 8);
        v129(v120, v117);
        v131 = v118;
        v132 = v28;
      }

      v68(v131, v132);
      v177 = v215;
      v178 = _s23AudioFlowDelegatePlugin13ShimUtilitiesV14getAppBundleId4fromSSSg07SiriKitB05ParseO_tFZ_0(v225);
      if (v179)
      {
        v180 = v178;
        v181 = v179;
        v182 = type metadata accessor for AppIdentifierAppResolutionProvider();
        v183 = swift_allocObject();
        *(v183 + 16) = v180;
        *(v183 + 24) = v181;
        *(v177 + 24) = v182;
        *(v177 + 32) = sub_17ECF8(&unk_353050, type metadata accessor for AppIdentifierAppResolutionProvider, &unk_2D3A24);
        *v177 = v183;
        v129(v207, v117);
        *(v177 + 40) = 0;
        return;
      }

      v184 = v191;
      sub_2CA330();
      v185 = v194;
      static ShimUtilities.getShimExperience(from:)(v184, v194);
      (*(v192 + 8))(v184, v193);
      v186 = type metadata accessor for ShimExperience(0);
      if ((*(*(v186 - 8) + 48))(v185, 1, v186) == 1)
      {
        sub_30B8(v185, &unk_353040, &qword_2D1528);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v190 = *v185;

          sub_16EE7C(v190, v177);

          v129(v207, v117);
          return;
        }

        sub_607B4(v185);
      }

      v187 = sub_2CB850();
      sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v188 = swift_allocError();
      (*(*(v187 - 8) + 104))(v189, enum case for PlaybackCode.ceGE96(_:), v187);
      v129(v207, v117);
      *v177 = v188;
      *(v177 + 40) = 1;
      return;
    }

    v89 = v28;
    (*(v70 + 96))(v72, v69);
    v90 = *v72;
    v91 = sub_1B7F14();
    if (v91)
    {
      v92 = v91;
      sub_16EE7C(v91, a4);

      return;
    }

    v140 = v202;
    v218(v202, v217, v89);
    v141 = sub_2CDFE0();
    v142 = sub_2CE680();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&dword_0, v141, v142, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse pommesResponse contains no AudioExperience", v143, 2u);
    }

    v68(v140, v89);
    v144 = sub_2CB850();
    sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v145 = swift_allocError();
    (*(*(v144 - 8) + 104))(v146, enum case for PlaybackCode.ceGE17(_:), v144);

LABEL_62:
    *a4 = v145;
    *(a4 + 40) = 1;
    return;
  }

  v79 = v70;
  v80 = v28;
  (*(v79 + 96))(v72, v69);
  v81 = v221;
  v82 = v214;
  (*(v220 + 32))(v221, v72, v214);
  sub_238E4C(v81, v228);
  v83 = *&v228[0];
  if (v230 <= 3u)
  {
    v84 = *(&v228[0] + 1);
    v85 = v213;
    v86 = v216;
    if (v230)
    {
      if (v230 == 3)
      {
        v87 = type metadata accessor for AppIdentifierAppResolutionProvider();
        v88 = swift_allocObject();
        *(v88 + 16) = v83;
        *(v88 + 24) = v84;
        a4[3] = v87;
        a4[4] = sub_17ECF8(&unk_353050, type metadata accessor for AppIdentifierAppResolutionProvider, &unk_2D3A24);
LABEL_38:
        *a4 = v88;
        (*(v220 + 8))(v221, v82);
        *(a4 + 40) = 0;
        return;
      }

      goto LABEL_22;
    }

    if (*(&v228[0] + 1))
    {
      v138 = type metadata accessor for AppIdentifierAppResolutionProvider();
      v88 = swift_allocObject();
      *(v88 + 16) = v83;
      *(v88 + 24) = v84;
      a4[3] = v138;
      a4[4] = sub_17ECF8(&unk_353050, type metadata accessor for AppIdentifierAppResolutionProvider, &unk_2D3A24);

      sub_30B8(v228, &qword_34CCB0, &qword_2D5710);
      goto LABEL_38;
    }

    v164 = v196;
    v218(v196, v217, v80);
    v165 = sub_2CDFE0();
    v166 = sub_2CE680();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&dword_0, v165, v166, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse Could not get app bundle id from .replayRequest direct invocation", v167, 2u);
    }

    v68(v164, v80);
    v168 = sub_2CB850();
    sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v145 = swift_allocError();
    v170 = v169;
    v171 = &enum case for PlaybackCode.ceGE20(_:);
    goto LABEL_61;
  }

  v85 = v213;
  v86 = v216;
  if (v230 == 4)
  {
    if (*&v228[0])
    {
      v139 = *&v228[0];
      sub_16EE7C(v139, a4);

      sub_30B8(v228, &qword_34CCB0, &qword_2D5710);
      (*(v220 + 8))(v221, v82);
      return;
    }

    v172 = v197;
    v218(v197, v217, v80);
    v173 = sub_2CDFE0();
    v174 = sub_2CE680();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&dword_0, v173, v174, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse Could not unwrap audioExperience from .playMediaShim direct invocation", v175, 2u);
    }

    v68(v172, v80);
    v168 = sub_2CB850();
    sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v145 = swift_allocError();
    v170 = v176;
    v171 = &enum case for PlaybackCode.ceGE95(_:);
LABEL_61:
    (*(*(v168 - 8) + 104))(v170, *v171, v168);
    sub_30B8(v228, &qword_34CCB0, &qword_2D5710);
    (*(v220 + 8))(v221, v82);
    goto LABEL_62;
  }

  if (v230 != 255)
  {
LABEL_22:
    sub_30B8(v228, &qword_34CCB0, &qword_2D5710);
  }

  v215 = a4;
  v218(v86, v217, v80);
  v93 = v220;
  v94 = *(v220 + 16);
  v94(v85, v221, v82);
  v95 = sub_2CDFE0();
  v96 = sub_2CE680();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    LODWORD(v226) = v96;
    v98 = v97;
    v99 = swift_slowAlloc();
    v212 = v80;
    v100 = v93;
    v101 = v99;
    v227 = v99;
    *v98 = 136315138;
    v94(v204, v85, v82);
    v102 = sub_2CE2A0();
    v104 = v103;
    v105 = v85;
    v106 = *(v100 + 8);
    v106(v105, v82);
    v107 = sub_3F08(v102, v104, &v227);

    *(v98 + 4) = v107;
    v108 = v82;
    _os_log_impl(&dword_0, v95, v226, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse received unsupported directInvocation: %s", v98, 0xCu);
    sub_306C(v101);

    v109 = v216;
    v110 = v212;
  }

  else
  {

    v108 = v82;
    v133 = v85;
    v106 = *(v93 + 8);
    v106(v133, v82);
    v109 = v86;
    v110 = v80;
  }

  v68(v109, v110);
  v134 = sub_2CB850();
  sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v135 = swift_allocError();
  (*(*(v134 - 8) + 104))(v136, enum case for PlaybackCode.ceGE21(_:), v134);
  v106(v221, v108);
  v137 = v215;
  *v215 = v135;
  *(v137 + 40) = 1;
}

unint64_t sub_16EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v156 = sub_2CD5D0();
  v135 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_2CAB40();
  v162 = *(v164 - 8);
  __chkstk_darwin(v164);
  v160 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&unk_353080, &qword_2D1460);
  v6 = __chkstk_darwin(v5 - 8);
  v142 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v150 = &v133 - v8;
  v9 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v9 - 8);
  v161 = &v133 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 1);
  v13 = __chkstk_darwin(v11);
  v154 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v136 = (&v133 - v16);
  v17 = __chkstk_darwin(v15);
  v137 = &v133 - v18;
  v19 = __chkstk_darwin(v17);
  v140 = &v133 - v20;
  __chkstk_darwin(v19);
  v22 = (&v133 - v21);
  v23 = sub_2CAA00();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v133 - v28;
  v163 = a1;
  sub_2CDA40();
  if (qword_34BF58 != -1)
  {
LABEL_54:
    swift_once();
  }

  v30 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v31 = *(v12 + 2);
  v148 = v30;
  v147 = v12 + 16;
  v146 = v31;
  v31(v22, v30, v11);
  v158 = v12;
  v159 = v29;
  v12 = v24 + 16;
  v32 = *(v24 + 2);
  v32(v27, v29, v23);
  v33 = v11;
  v34 = sub_2CDFE0();
  v35 = sub_2CE690();
  v36 = os_log_type_enabled(v34, v35);
  v145 = v33;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v144 = v24;
    v38 = v37;
    v153 = swift_slowAlloc();
    v166 = v153;
    *v38 = 136315138;
    sub_2CAA60();
    v165[3] = v23;
    v165[4] = sub_17ECF8(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
    v39 = sub_F390(v165);
    v32(v39, v27, v23);
    v40 = sub_2CAA50();
    v42 = v41;
    v151 = *(v144 + 1);
    v151(v27, v23);
    sub_306C(v165);
    v43 = sub_3F08(v40, v42, &v166);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_0, v34, v35, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse userDialogAct: %s", v38, 0xCu);
    sub_306C(v153);

    v24 = v144;

    v44 = *(v158 + 1);
    v45 = v145;
    v44(v22, v145);
    v46 = v32;
    v47 = v23;
  }

  else
  {

    v151 = *(v24 + 1);
    v151(v27, v23);
    v44 = *(v158 + 1);
    v44(v22, v33);
    v46 = v32;
    v47 = v23;
    v45 = v33;
  }

  v48 = sub_2CDB80();
  v50 = v49;
  v51 = sub_2CD700();
  v52 = v161;
  v46(v161, v159, v47);
  v53 = v24;
  v54 = *(v24 + 7);
  v55 = v47;
  v54(v52, 0, 1, v47);
  v163 = v51;
  v56 = sub_2CD600();
  if (!v56)
  {

    v75 = v154;
    v146(v154, v148, v45);
    v76 = sub_2CDFE0();
    v77 = sub_2CE680();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse AudioUsoIntent failed to be constructed", v78, 2u);
    }

    v44(v75, v45);
    v79 = type metadata accessor for AppIdentifierAppResolutionProvider();
    v80 = swift_allocObject();
    *(v80 + 16) = 0x6C7070612E6D6F63;
    *(v80 + 24) = 0xEF636973754D2E65;
    v81 = v157;
    *(v157 + 24) = v79;
    v81[4] = sub_17ECF8(&unk_353050, type metadata accessor for AppIdentifierAppResolutionProvider, &unk_2D3A24);
    *v81 = v80;
    result = (v151)(v159, v47);
    goto LABEL_49;
  }

  v139 = v56;
  result = sub_2CD690();
  v58 = v45;
  if (result >> 62)
  {
    v131 = v50;
    v132 = result;
    v59 = sub_2CEDA0();
    result = v132;
    v50 = v131;
  }

  else
  {
    v59 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  }

  v60 = v55;
  v141 = v44;
  v138 = v50;
  v134 = v48;
  if (!v59)
  {

    goto LABEL_31;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v29 = sub_2CECD0();
LABEL_12:

    if (v29)
    {
      v144 = v53;
      v133 = v55;

      v61 = sub_2CAAE0();
      v143 = v29;

      v161 = v61;
      v62 = *(v61 + 16);
      v63 = v164;
      v22 = v162;
      v23 = v160;
      v154 = v62;
      if (v62)
      {
        v27 = 0;
        v153 = &v161[(*(v162 + 80) + 32) & ~*(v162 + 80)];
        v152 = (v162 + 2);
        v149 = enum case for AudioUsoIntent.UsoNamespace.appBundleId(_:);
        v64 = (v135 + 104);
        v11 = (v135 + 8);
        v24 = (v162 + 1);
        do
        {
          if (v27 >= *(v161 + 2))
          {
            __break(1u);
            goto LABEL_54;
          }

          v22[2](v23, &v153[v22[9] * v27], v63);
          v65 = sub_2CAB00();
          v67 = v66;
          if (v65 == sub_2CD630() && v67 == v68)
          {
          }

          else
          {
            v29 = sub_2CEEA0();

            if ((v29 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v69 = sub_2CAB30();
          v71 = v70;
          v72 = v155;
          v29 = v156;
          (*v64)(v155, v149, v156);
          v73 = sub_2CD5C0();
          v12 = v74;
          (*v11)(v72, v29);
          if (v71)
          {
            if (v69 == v73 && v71 == v12)
            {

              v22 = v162;
              v23 = v160;
              goto LABEL_34;
            }

            v29 = sub_2CEEA0();

            v22 = v162;
            v23 = v160;
            if (v29)
            {

LABEL_34:
              v84 = v150;
              v63 = v164;
              v22[4](v150, v23, v164);
              (v22[7])(v84, 0, 1, v63);
              goto LABEL_35;
            }
          }

          else
          {

            v22 = v162;
            v23 = v160;
          }

LABEL_16:
          ++v27;
          v63 = v164;
          (*v24)(v23, v164);
        }

        while (v154 != v27);
      }

      v84 = v150;
      (v22[7])(v150, 1, 1, v63);
LABEL_35:
      v60 = v133;
      v83 = v22;
      v82 = v151;
      v58 = v145;
      v44 = v141;
      v85 = v143;
      goto LABEL_36;
    }

LABEL_31:
    v82 = v151;
    v83 = v162;
    v84 = v150;
    v63 = v164;
    v162[7](v150, 1, 1, v164);
    v85 = 0;
LABEL_36:
    v143 = v85;
    v86 = v84;
    v87 = v142;
    sub_F3F4(v86, v142, &unk_353080, &qword_2D1460);
    if ((v83[6])(v87, 1, v63) == 1)
    {
      sub_30B8(v87, &unk_353080, &qword_2D1460);
      v88 = v138;
      v89 = sub_2CBDF0();
      if (!v90)
      {
        v118 = v136;
        v146(v136, v148, v58);

        v119 = sub_2CDFE0();
        v120 = sub_2CE680();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v165[0] = v122;
          *v121 = 136315138;
          v123 = sub_3F08(v134, v88, v165);
          v151 = v82;
          v124 = v123;

          *(v121 + 4) = v124;
          _os_log_impl(&dword_0, v119, v120, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse pommesResponse contains invalid appBundleId in disambiguation response and invalid launchID %s", v121, 0xCu);
          sub_306C(v122);

          v82 = v151;
          v141(v136, v58);
        }

        else
        {

          v44(v118, v58);
        }

        v128 = sub_2CB850();
        sub_17ECF8(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v129 = swift_allocError();
        (*(*(v128 - 8) + 104))(v130, enum case for PlaybackCode.ceGE19(_:), v128);

        sub_30B8(v150, &unk_353080, &qword_2D1460);
        result = (v82)(v159, v60);
        *v157 = v129;
        v127 = 1;
        goto LABEL_50;
      }

      v91 = v89;
      v164 = v90;
      v92 = v88;
      v93 = v137;
      v146(v137, v148, v58);

      v94 = sub_2CDFE0();
      v95 = sub_2CE660();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = v91;
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v151 = v82;
        v99 = v98;
        v165[0] = v98;
        *v97 = 136315138;
        v100 = sub_3F08(v134, v92, v165);

        *(v97 + 4) = v100;
        _os_log_impl(&dword_0, v94, v95, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse resolving app from launchID %s", v97, 0xCu);
        sub_306C(v99);
        v82 = v151;

        v91 = v96;

        v101 = v93;
        v102 = v145;
      }

      else
      {

        v101 = v93;
        v102 = v58;
      }

      v141(v101, v102);
      v116 = type metadata accessor for AppIdentifierAppResolutionProvider();
      v117 = swift_allocObject();
      v125 = v164;
      *(v117 + 16) = v91;
      *(v117 + 24) = v125;
    }

    else
    {

      v103 = sub_2CAB20();
      v105 = v104;
      v83[1](v87, v63);
      v106 = v140;
      v146(v140, v148, v58);

      v107 = sub_2CDFE0();
      v108 = sub_2CE660();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = v103;
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v151 = v82;
        v112 = v111;
        v165[0] = v111;
        *v110 = 136315138;

        v113 = sub_3F08(v109, v105, v165);

        *(v110 + 4) = v113;
        _os_log_impl(&dword_0, v107, v108, "AppResolutionCommonStrategy#makeAppResolutionStateFromParse resolving app from AudioIntent %s", v110, 0xCu);
        sub_306C(v112);
        v82 = v151;

        v103 = v109;

        v114 = v106;
        v115 = v145;
      }

      else
      {

        v114 = v106;
        v115 = v58;
      }

      v141(v114, v115);
      v116 = type metadata accessor for AppIdentifierAppResolutionProvider();
      v117 = swift_allocObject();
      *(v117 + 16) = v103;
      *(v117 + 24) = v105;
    }

    v126 = v157;
    *(v157 + 24) = v116;
    v126[4] = sub_17ECF8(&unk_353050, type metadata accessor for AppIdentifierAppResolutionProvider, &unk_2D3A24);

    *v126 = v117;
    sub_30B8(v150, &unk_353080, &qword_2D1460);
    result = (v82)(v159, v60);
LABEL_49:
    v127 = 0;
LABEL_50:
    *(v157 + 40) = v127;
    return result;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v29 = *(result + 32);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1701E0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v53 = a5;
  v47 = a6;
  v48 = a4;
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v49 = *(a6 - 8);
  v7 = *(v49 + 64);
  __chkstk_darwin(a1);
  v8 = sub_2CE000();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v17 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v45 - v18;
  sub_F3F4(v54, v13, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v55;
    sub_30B8(v13, &unk_3519A0, &qword_2D0980);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = v51;
    v22 = sub_3ED0(v51, static Logger.default);
    swift_beginAccess();
    v23 = v50;
    (*(v50 + 16))(v10, v22, v21);
    v24 = sub_2CDFE0();
    v25 = sub_2CE680();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "AppResolutionCommonStrategy#makePromptForConfirmation missing confirmApp template", v26, 2u);
    }

    (*(v23 + 8))(v10, v21);
    sub_2C9D40();
    swift_allocObject();
    v27 = sub_2C9D20();
    sub_17ECF8(&unk_353010, &type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
    v28 = swift_allocError();
    *v29 = v27;
    v57[0] = v28;
    v58 = 1;
    v20(v57);
    v30 = qword_34C798;
    v31 = &qword_2D0DA0;
    v32 = v57;
  }

  else
  {
    v33 = v13;
    v34 = v19;
    v45 = v19;
    sub_14A58(v33, v19, &qword_34C6E8, &unk_2D0FF0);
    v35 = v52;
    v37 = v47;
    v36 = v48;
    (*(v52 + 56))(v47, v52);
    v38 = v49;
    (*(v49 + 16))(&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v37);
    sub_F3F4(v34, v17, &qword_34C6E8, &unk_2D0FF0);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = (v7 + v39 + *(v46 + 80)) & ~*(v46 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    *(v41 + 24) = v35;
    (*(v38 + 32))(v41 + v39, &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
    sub_14A58(v17, v41 + v40, &qword_34C6E8, &unk_2D0FF0);
    v42 = (v41 + ((v15 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    v43 = v56;
    *v42 = v55;
    v42[1] = v43;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();

    sub_B8280(v53, sub_17D4B8, v41);

    v32 = v45;
    v30 = &qword_34C6E8;
    v31 = &unk_2D0FF0;
  }

  return sub_30B8(v32, v30, v31);
}

uint64_t sub_1707CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t))
{
  v47 = a4;
  v45 = a3;
  v44 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  __chkstk_darwin(v44);
  v48 = &v39 - v12;
  v43 = sub_20410(&unk_353020, &unk_2D0970);
  v13 = __chkstk_darwin(v43);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v39 - v15;
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  (*(v18 + 16))(v20, v21, v17);
  v46 = a1;
  sub_F3F4(a1, v16, &unk_353020, &unk_2D0970);
  v22 = sub_2CDFE0();
  v23 = v17;
  v24 = sub_2CE690();
  if (os_log_type_enabled(v22, v24))
  {
    v25 = swift_slowAlloc();
    v41 = a2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v40 = a5;
    v28 = v27;
    v49 = v27;
    *v26 = 136315138;
    v39 = v23;
    sub_F3F4(v16, v42, &unk_353020, &unk_2D0970);
    v29 = sub_2CE2A0();
    v43 = a7;
    v30 = v29;
    v31 = a6;
    v33 = v32;
    sub_30B8(v16, &unk_353020, &unk_2D0970);
    v34 = sub_3F08(v30, v33, &v49);
    a6 = v31;

    *(v26 + 4) = v34;
    a7 = v43;
    _os_log_impl(&dword_0, v22, v24, "AppResolutionCommonStrategy#makePromptForConfirmation makeNLContextProvider returned: %s", v26, 0xCu);
    sub_306C(v28);
    a5 = v40;

    (*(v18 + 8))(v20, v39);
  }

  else
  {

    sub_30B8(v16, &unk_353020, &unk_2D0970);
    (*(v18 + 8))(v20, v23);
  }

  v35 = v48;
  sub_F3F4(v45, v48, &qword_34C6E8, &unk_2D0FF0);
  v36 = *(v35 + *(v44 + 48));
  sub_170C0C(v35, v36, v46, v47, a5, a6, a7);

  v37 = sub_2CA130();
  return (*(*(v37 - 8) + 8))(v35, v37);
}

uint64_t sub_170C0C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t))
{
  v92 = a7;
  v91 = a6;
  v95 = a4;
  v96 = a5;
  v94 = a3;
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  v87 = *(v9 - 8);
  v88 = *(v87 + 64);
  __chkstk_darwin(v9 - 8);
  v89 = &v78 - v10;
  v82 = sub_2CB260();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v78 - v18;
  __chkstk_darwin(v17);
  v21 = &v78 - v20;
  v22 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v23 = v22 - 8;
  v84 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v86 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v25;
  __chkstk_darwin(v24);
  v27 = &v78 - v26;
  v28 = sub_2CA130();
  (*(*(v28 - 8) + 16))(v27, a1, v28);
  v29 = *(v23 + 56);
  v93 = v27;
  *&v27[v29] = a2;
  v30 = qword_34BF58;
  v31 = a2;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v90 = *(v13 + 16);
  v90(v21, v32, v12);
  v33 = sub_2CDFE0();
  v34 = sub_2CE690();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v83 = v19;
    v36 = v35;
    v37 = swift_slowAlloc();
    v79 = v13;
    v78 = v12;
    v38 = v37;
    v99[0] = v37;
    *v36 = 136446210;
    v39 = sub_2CCCA0();
    v41 = v16;
    v42 = sub_3F08(v39, v40, v99);

    *(v36 + 4) = v42;
    v16 = v41;
    _os_log_impl(&dword_0, v33, v34, "AppResolutionCommonStrategy#confirmationViewOutput... %{public}s", v36, 0xCu);
    sub_306C(v38);
    v12 = v78;
    v13 = v79;

    v19 = v83;
  }

  v43 = *(v13 + 8);
  v43(v21, v12);
  (*(v92 + 6))(v99, v91);
  sub_35E0(v99, v100);
  v44 = sub_2CC4B0();
  sub_306C(v99);
  if (v44)
  {
    v45 = sub_2CB460();
    if (!v45)
    {
      sub_2CB180();
      v45 = sub_2CB170();
    }

    v46 = v45;
    v90(v19, v32, v12);

    v47 = sub_2CDFE0();
    v48 = sub_2CE660();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v92 = v43;
      v50 = v49;
      v51 = swift_slowAlloc();
      v83 = v19;
      v52 = v51;
      v99[0] = v51;
      *v50 = 136315138;
      sub_2CB130();
      v53 = v80;
      sub_2CD3C0();

      v54 = sub_2CB200();
      v56 = v55;
      (*(v81 + 8))(v53, v82);
      v57 = sub_3F08(v54, v56, v99);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_0, v47, v48, "AppResolutionCommonStrategy#confirmationViewOutput with responseMode = %s", v50, 0xCu);
      sub_306C(v52);

      v92(v83, v12);
    }

    else
    {

      v43(v19, v12);
    }

    v65 = v89;
    sub_F3F4(v94, v89, &unk_353020, &unk_2D0970);
    v66 = v93;
    v67 = v86;
    sub_F3F4(v93, v86, &qword_34C6E8, &unk_2D0FF0);
    v68 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v69 = (v88 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (*(v84 + 80) + v69 + 8) & ~*(v84 + 80);
    v71 = swift_allocObject();
    sub_14A58(v65, v71 + v68, &unk_353020, &unk_2D0970);
    *(v71 + v69) = v46;
    sub_14A58(v67, v71 + v70, &qword_34C6E8, &unk_2D0FF0);

    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    v72 = v66;
    v73 = &qword_34C6E8;
    v74 = &unk_2D0FF0;
  }

  else
  {
    v90(v16, v32, v12);
    v58 = sub_2CDFE0();
    v59 = sub_2CE690();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v99[0] = v61;
      *v60 = 136446210;
      v62 = sub_2CCCA0();
      v64 = sub_3F08(v62, v63, v99);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_0, v58, v59, "AppResolutionCommonStrategy#confirmationViewOutput creating confirmationViewOutput %{public}s", v60, 0xCu);
      sub_306C(v61);
    }

    v43(v16, v12);
    sub_2CB5B0();
    v75 = sub_2CA910();
    memset(v97, 0, sizeof(v97));
    v98 = 0;
    v100 = v75;
    v101 = &protocol witness table for AceOutput;
    sub_F390(v99);
    v76 = v93;
    sub_2C9DE0();
    sub_30B8(v97, &qword_34CC80, &qword_2D1520);
    v102 = 0;
    v95(v99);
    sub_30B8(v76, &qword_34C6E8, &unk_2D0FF0);
    v73 = qword_34C798;
    v74 = &qword_2D0DA0;
    v72 = v99;
  }

  return sub_30B8(v72, v73, v74);
}

uint64_t sub_1715F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[10] = swift_task_alloc();
  v5 = sub_2CE000();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_2C9B80();
  v4[14] = swift_task_alloc();
  v6 = sub_2CA630();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_17177C, 0, 0);
}

uint64_t sub_17177C(uint64_t a1)
{
  v31 = v1;
  v2 = *(v1 + 64);
  v28 = *(v1 + 48);
  sub_2C9B30();
  v3 = swift_task_alloc();
  *(v3 + 16) = v28;
  *(v3 + 32) = v2;
  sub_2CA560();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  v6 = *(v1 + 88);
  v7 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = sub_2CDFE0();
  v9 = sub_2CE690();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v1 + 96);
  v11 = *(v1 + 104);
  v13 = *(v1 + 88);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136446210;
    v16 = sub_2CCCA0();
    v18 = sub_3F08(v16, v17, &v30);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v8, v9, "AppResolutionCommonStrategy#confirmationViewOutput creating confirmationViewOutput using RF 2.0 %{public}s", v14, 0xCu);
    sub_306C(v15);
  }

  (*(v12 + 8))(v11, v13);
  v20 = *(v1 + 72);
  v19 = *(v1 + 80);
  v21 = *(v1 + 64);
  sub_2CA080();
  swift_allocObject();
  *(v1 + 144) = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v22 = swift_allocObject();
  *(v1 + 152) = v22;
  *(v22 + 16) = xmmword_2D0770;
  sub_F3F4(v21, v19, &qword_34C6E8, &unk_2D0FF0);
  *(v22 + 32) = *(v19 + *(v20 + 48));
  v23 = sub_2CA130();
  (*(*(v23 - 8) + 8))(v19, v23);
  v29 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v24 = swift_task_alloc();
  *(v1 + 160) = v24;
  *v24 = v1;
  v24[1] = sub_171AC4;
  v25 = *(v1 + 136);
  v26 = *(v1 + 40);

  return v29(v26, v22, v25);
}

uint64_t sub_171AC4()
{

  return _swift_task_switch(sub_171BF8, 0, 0);
}

uint64_t sub_171BF8()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_171CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_2CB260();
  __chkstk_darwin(v10 - 8);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  sub_F3F4(a2, &v17 - v12, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CA5F0();
  sub_2CA5A0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a4, v9, &qword_34C6E8, &unk_2D0FF0);
  v13 = *&v9[*(v7 + 56)];
  v14 = [v13 catId];

  sub_2CE270();
  sub_2CA590();
  v15 = sub_2CA130();
  return (*(*(v15 - 8) + 8))(v9, v15);
}

uint64_t sub_171ED0(char *a1, uint64_t a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v40 = a5;
  v41 = a6;
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v9 = sub_20410(&qword_3530D0, &qword_2D5728);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  v18 = *(v10 + 16);
  v37 = a2;
  v18(v12, a2, v9);
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = v21;
    v33 = swift_slowAlloc();
    v42[0] = v33;
    *v21 = 136315138;
    sub_2CA460();
    sub_2CCFB0();
    v22 = sub_2CE420();
    v34 = v13;
    v35 = v7;
    v23 = v22;
    v25 = v24;

    (*(v10 + 8))(v12, v9);
    v26 = sub_3F08(v23, v25, v42);

    v27 = v32;
    *(v32 + 1) = v26;
    _os_log_impl(&dword_0, v19, v20, "AppResolutionStrategy#makePromptForDisambiguation with apps: %s", v27, 0xCu);
    sub_306C(v33);

    (*(v14 + 8))(v16, v34);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
  }

  v29 = v40;
  v28 = v41;
  (*(v41 + 48))(v42, v40, v41);
  sub_35E0(v42, v42[3]);
  v30 = sub_2CC4B0();
  sub_306C(v42);
  if (v30)
  {
    return sub_1722AC(v36, v37, v38, v39, v29, v28);
  }

  else
  {
    return sub_172C04(v36, v37, v38, v39, v29, v28);
  }
}

uint64_t sub_1722AC(char *a1, uint64_t a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = a5;
  v85 = a4;
  v86 = a3;
  v11 = a1;
  v75 = *(a5 - 8);
  __chkstk_darwin(a1);
  v72 = v12;
  v79 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_20410(&qword_3530D0, &qword_2D5728);
  v71 = *(v77 - 8);
  v70 = *(v71 + 64);
  __chkstk_darwin(v77);
  v76 = &v64 - v13;
  v74 = sub_2CC590();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v78 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2CC990();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v83 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v64 - v20;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v23 = *(v17 + 16);
  v82 = v22;
  v81 = v17 + 16;
  v80 = v23;
  v23(v21, v22, v16);
  v24 = v17;
  v25 = sub_2CDFE0();
  v26 = sub_2CE690();
  v27 = os_log_type_enabled(v25, v26);
  v84 = v21;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v66 = a6;
    v30 = v29;
    v88[0] = v29;
    *v28 = 136446210;
    v31 = sub_2CCCA0();
    v65 = v16;
    v33 = sub_3F08(v31, v32, v88);
    v64 = v24;
    v34 = a2;
    v35 = v7;
    v36 = v11;
    v37 = v9;
    v38 = v33;
    v16 = v65;

    *(v28 + 4) = v38;
    v9 = v37;
    v11 = v36;
    v7 = v35;
    a2 = v34;
    _os_log_impl(&dword_0, v25, v26, "AppResolutionStrategy#promptForDisambiguationWithRF... %{public}s", v28, 0xCu);
    sub_306C(v30);
    a6 = v66;

    v39 = *(v64 + 8);
    v39(v84, v16);
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {

    v39 = *(v24 + 8);
    v39(v84, v16);
    if (!v11)
    {
LABEL_10:
      v92 = 0;
      v90 = 0u;
      v91 = 0u;
      goto LABEL_11;
    }
  }

  v87 = v11;
  swift_getAssociatedTypeWitness();
  v40 = v11;
  sub_20410(&qword_3530E0, &unk_2D69D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(&v91 + 1))
  {
    sub_F338(&v90, v88);
    v83 = v11;
    v84 = v40;
    sub_35E0(v88, v88[3]);
    v41 = v68;
    v42 = v67;
    v43 = v69;
    (*(v68 + 104))(v67, enum case for AcceptedSpeakerIdConfidence.anyConfidence(_:), v69);
    v82 = sub_2CCB40();
    v81 = v44;
    (*(v41 + 8))(v42, v43);
    sub_2CC580();
    v45 = v71;
    (*(v71 + 16))(v76, a2, v77);
    v46 = v75;
    (*(v75 + 16))(v79, v7, v9);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = (v70 + *(v46 + 80) + v47) & ~*(v46 + 80);
    v49 = a6;
    v50 = (v72 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v9;
    *(v51 + 24) = v49;
    (*(v45 + 32))(v51 + v47, v76, v77);
    (*(v46 + 32))(v51 + v48, v79, v9);
    *(v51 + v50) = v83;
    v52 = (v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8));
    v53 = v85;
    *v52 = v86;
    v52[1] = v53;
    v54 = v84;

    v55 = v78;
    sub_2CC570();

    (*(v73 + 8))(v55, v74);
    return sub_306C(v88);
  }

LABEL_11:
  sub_30B8(&v90, &qword_3530D8, &unk_2D5730);
  v57 = v83;
  v80(v83, v82, v16);
  v58 = sub_2CDFE0();
  v59 = sub_2CE680();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "Fatal: cannot case intent as PrivateMediaIntentDataProviding", v60, 2u);
  }

  v39(v57, v16);
  sub_2C9D40();
  swift_allocObject();
  v61 = sub_2C9D20();
  sub_17ECF8(&unk_353010, &type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
  v62 = swift_allocError();
  *v63 = v61;
  v88[0] = v62;
  v89 = 1;
  v86(v88);
  return sub_30B8(v88, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_172C04(void *a1, uint64_t a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v98 = a3;
  v99 = a6;
  v97 = a4;
  v100 = a5;
  v101 = a1;
  v88 = *(a5 - 8);
  __chkstk_darwin(a1);
  v83 = v7;
  v85 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2CC990();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2CC590();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v89 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_3530D0, &qword_2D5728);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v95 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v13;
  __chkstk_darwin(v12);
  v15 = &v71 - v14;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v94 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v71 - v20;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v23 = *(v17 + 16);
  v93 = v22;
  v92 = v17 + 16;
  v91 = v23;
  v23(v21, v22, v16);
  v25 = v11 + 16;
  v24 = *(v11 + 16);
  v82 = a2;
  v24(v15, a2, v10);
  v26 = v101;
  v96 = v17;
  v27 = v11;
  v28 = sub_2CDFE0();
  v29 = v16;
  v30 = sub_2CE690();
  v90 = v26;

  v31 = os_log_type_enabled(v28, v30);
  v80 = v10;
  v78 = v27;
  v75 = v25;
  v74 = v24;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v103[0] = v72;
    *v32 = 136315394;
    v73 = v29;
    v24(v95, v15, v10);
    v33 = sub_2CE2A0();
    v35 = v34;
    (*(v27 + 8))(v15, v10);
    v36 = sub_3F08(v33, v35, v103);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    *&v105 = v101;
    swift_getAssociatedTypeWitness();
    sub_2CEB90();
    v37 = sub_2CEB70();
    v39 = sub_3F08(v37, v38, v103);

    *(v32 + 14) = v39;
    _os_log_impl(&dword_0, v28, v30, "AppResolutionCommonStrategy#promptForDisambiguation with apps: %s, intent: %s", v32, 0x16u);
    swift_arrayDestroy();

    v40 = *(v96 + 8);
    v41 = v73;
    v40(v21, v73);
    if (!v101)
    {
      goto LABEL_10;
    }
  }

  else
  {

    (*(v27 + 8))(v15, v10);
    v40 = *(v96 + 8);
    v40(v21, v29);
    v41 = v29;
    if (!v101)
    {
LABEL_10:
      v107 = 0;
      v105 = 0u;
      v106 = 0u;
      goto LABEL_11;
    }
  }

  v42 = v90;
  v102 = v90;
  swift_getAssociatedTypeWitness();
  v43 = v42;
  sub_20410(&qword_3530E0, &unk_2D69D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(&v106 + 1))
  {
    sub_F338(&v105, v103);
    sub_2CC580();
    sub_35E0(v103, v103[3]);
    v44 = v79;
    v45 = *(v79 + 104);
    v46 = v77;
    v93 = v43;
    v47 = v81;
    v45(v77, enum case for AcceptedSpeakerIdConfidence.anyConfidence(_:), v81);
    v96 = sub_2CCB40();
    v94 = v48;
    (*(v44 + 8))(v46, v47);
    v49 = v80;
    v74(v95, v82, v80);
    v50 = v88;
    v51 = v85;
    v52 = v100;
    (*(v88 + 16))(v85, v84, v100);
    v53 = v78;
    v54 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v55 = (v76 + *(v50 + 80) + v54) & ~*(v50 + 80);
    v56 = (v83 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    v58 = v99;
    *(v57 + 16) = v52;
    *(v57 + 24) = v58;
    (*(v53 + 32))(v57 + v54, v95, v49);
    (*(v50 + 32))(v57 + v55, v51, v52);
    *(v57 + v56) = v101;
    v59 = (v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8));
    v60 = v97;
    *v59 = v98;
    v59[1] = v60;
    v61 = v93;

    v62 = v89;
    sub_2CC570();

    (*(v86 + 8))(v62, v87);
    return sub_306C(v103);
  }

LABEL_11:
  sub_30B8(&v105, &qword_3530D8, &unk_2D5730);
  v64 = v94;
  v91(v94, v93, v41);
  v65 = sub_2CDFE0();
  v66 = sub_2CE680();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_0, v65, v66, "Fatal: cannot case intent as PrivateMediaIntentDataProviding", v67, 2u);
  }

  v40(v64, v41);
  sub_2C9D40();
  swift_allocObject();
  v68 = sub_2C9D20();
  sub_17ECF8(&unk_353010, &type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
  v69 = swift_allocError();
  *v70 = v68;
  v103[0] = v69;
  v104 = 1;
  v98(v103);
  return sub_30B8(v103, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_1736D4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a5;
  v55 = a1;
  v14 = sub_20410(&qword_3530D0, &qword_2D5728);
  v60 = *(v14 - 8);
  v58 = *(v60 + 64);
  v15 = __chkstk_darwin(v14);
  v66 = &v51 - v16;
  v67 = a7;
  v59 = *(a7 - 8);
  v17 = __chkstk_darwin(v15);
  v56 = v18;
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v17;
  v19 = sub_2CA460();
  v20 = v19;
  v68[0] = _swiftEmptyArrayStorage;
  if (v19 >> 62)
  {
LABEL_28:
    v21 = sub_2CEDA0();
  }

  else
  {
    v21 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  }

  v63 = a6;
  v64 = a4;
  v65 = a8;
  if (v21)
  {
    v53 = a3;
    v54 = a2;
    a3 = 0;
    a2 = v20 & 0xC000000000000001;
    a8 = v20 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a2)
      {
        a6 = sub_2CECD0();
        v22 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v27 = v68[0];
          a8 = v65;
          a3 = v53;
          a2 = v54;
          goto LABEL_22;
        }
      }

      else
      {
        if (a3 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_28;
        }

        a6 = *(v20 + 8 * a3 + 32);

        v22 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          goto LABEL_19;
        }
      }

      a4 = sub_2CCF90();
      v24 = v23;
      v25 = sub_2CBD90();
      if (!v24)
      {
        break;
      }

      if (a4 == v25 && v24 == v26)
      {
      }

      else
      {
        a4 = sub_2CEEA0();

        if ((a4 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_6:
      ++a3;
      if (v22 == v21)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    sub_2CED00();
    sub_2CED30();
    sub_2CED40();
    sub_2CED10();
    goto LABEL_6;
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_22:

  __chkstk_darwin(v28);
  v29 = v67;
  *(&v51 - 4) = v67;
  *(&v51 - 3) = a8;
  v30 = v55;
  *(&v51 - 2) = a3;
  *(&v51 - 1) = v30;
  v31 = sub_16CEF0(sub_17F418, (&v51 - 6), v27);

  v68[0] = v31;

  sub_17C140(v68);

  v32 = v68[0];
  v55 = (*(a8 + 32))(v29, a8);
  v33 = *(v32 + 2);
  v34 = _swiftEmptyArrayStorage;
  v54 = v32;
  if (v33)
  {
    v68[0] = _swiftEmptyArrayStorage;
    sub_2CED20();
    v35 = v32 + 80;
    do
    {
      v35 += 72;

      sub_2CED00();
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      --v33;
    }

    while (v33);
    v34 = v68[0];
  }

  v53 = v34;
  v36 = *(a8 + 48);
  v37 = a8;
  v38 = v67;
  v36(v68, v67, v37);
  sub_35E0(v68, v68[3]);
  v52 = sub_2CC480();
  v39 = v59;
  v40 = v57;
  (*(v59 + 16))(v57, a3, v38);
  v41 = v60;
  v42 = a2;
  v43 = v62;
  (*(v60 + 16))(v66, v42, v62);
  v44 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v45 = (v56 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (*(v41 + 80) + v45 + 8) & ~*(v41 + 80);
  v47 = swift_allocObject();
  v48 = v65;
  *(v47 + 2) = v38;
  *(v47 + 3) = v48;
  v49 = v63;
  *(v47 + 4) = v61;
  *(v47 + 5) = v49;
  (*(v39 + 32))(&v47[v44], v40, v38);
  *&v47[v45] = v54;
  (*(v41 + 32))(&v47[v46], v66, v43);

  sub_28AFC4(v64, v52, sub_17E6CC, v47);

  return sub_306C(v68);
}

uint64_t sub_173C74(char *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = a6;
  v98 = a5;
  v99 = a4;
  v100 = a3;
  v101 = a2;
  v102 = a1;
  v10 = sub_2CD230();
  v93 = *(v10 - 8);
  v94 = v10;
  __chkstk_darwin(v10);
  v92 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v103 = *(v12 - 1);
  v104 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v96 = &v83 - v16;
  v89 = sub_20410(&unk_353020, &unk_2D0970);
  v17 = __chkstk_darwin(v89);
  v88 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v83 - v20;
  __chkstk_darwin(v19);
  v23 = &v83 - v22;
  v24 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v24);
  v26 = &v83 - v25;
  v97 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v27 = __chkstk_darwin(v97);
  v90 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v95 = &v83 - v30;
  __chkstk_darwin(v29);
  v32 = &v83 - v31;
  sub_F3F4(v102, v26, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v102 = v32;
    sub_14A58(v26, v32, &qword_34C6E8, &unk_2D0FF0);
    (*(a8 + 56))(a7, a8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v48 = swift_getAssociatedTypeWitness();
    sub_B7440(v98, AssociatedTypeWitness, v48, v23);
    v85 = a8;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v49 = v104;
    v50 = sub_3ED0(v104, static Logger.default);
    swift_beginAccess();
    v51 = v103;
    v52 = v96;
    (*(v103 + 16))(v96, v50, v49);
    v86 = v23;
    sub_F3F4(v23, v21, &unk_353020, &unk_2D0970);
    v53 = sub_2CDFE0();
    v54 = sub_2CE690();
    v55 = os_log_type_enabled(v53, v54);
    v87 = a7;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v107[0] = v84;
      *v56 = 136315394;
      sub_F3F4(v21, v88, &unk_353020, &unk_2D0970);
      v57 = sub_2CE2A0();
      v58 = v51;
      v60 = v59;
      sub_30B8(v21, &unk_353020, &unk_2D0970);
      v61 = sub_3F08(v57, v60, v107);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      v62 = sub_2CCCA0();
      v64 = sub_3F08(v62, v63, v107);

      *(v56 + 14) = v64;
      _os_log_impl(&dword_0, v53, v54, "AppResolutionStrategy#makePromptForDisambiguation makeNLContextProvider returned: %s %{public}s", v56, 0x16u);
      swift_arrayDestroy();

      (*(v58 + 8))(v96, v49);
    }

    else
    {

      sub_30B8(v21, &unk_353020, &unk_2D0970);
      (*(v51 + 8))(v52, v49);
    }

    v65 = v102;
    v66 = v95;
    sub_F3F4(v102, v95, &qword_34C6E8, &unk_2D0FF0);
    v67 = *(v66 + *(v97 + 48));
    v68 = [v67 dialog];

    sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
    v69 = sub_2CE410();

    if (v69 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = *(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_14:
        if ((v69 & 0xC000000000000001) != 0)
        {
          v70 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v70 = *(v69 + 32);
        }

        v71 = v70;

        v72 = [v71 fullPrint];

        v73 = sub_2CE270();
        v75 = v74;

LABEL_20:
        v76 = sub_2CA130();
        v104 = *(*(v76 - 8) + 8);
        v104(v66, v76);
        sub_20410(&qword_3530D0, &qword_2D5728);
        sub_2CA460();
        v77 = v92;
        sub_174770(v73, v75, v98, v92);

        v78 = v65;
        v79 = v65;
        v80 = v90;
        sub_F3F4(v78, v90, &qword_34C6E8, &unk_2D0FF0);
        v81 = *(v80 + *(v97 + 48));
        v82 = v86;
        sub_17DC04(v77, v80, v81, v86, v101, v100);

        (*(v93 + 8))(v77, v94);
        sub_30B8(v82, &unk_353020, &unk_2D0970);
        sub_30B8(v79, &qword_34C6E8, &unk_2D0FF0);
        return (v104)(v80, v76);
      }
    }

    v73 = 0;
    v75 = 0xE000000000000000;
    goto LABEL_20;
  }

  sub_30B8(v26, &unk_3519A0, &qword_2D0980);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v33 = v104;
  v34 = sub_3ED0(v104, static Logger.default);
  swift_beginAccess();
  v35 = v103;
  (*(v103 + 16))(v15, v34, v33);
  v36 = sub_2CDFE0();
  v37 = sub_2CE680();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v105[0] = v39;
    *v38 = 136446210;
    v40 = sub_2CCCA0();
    v42 = sub_3F08(v40, v41, v105);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v36, v37, "AppResolutionStrategy#promptForDisambiguationWithRF missing disambiguateApps dialog %{public}s", v38, 0xCu);
    sub_306C(v39);
  }

  (*(v35 + 8))(v15, v33);
  sub_2C9D40();
  swift_allocObject();
  v43 = sub_2C9D20();
  sub_17ECF8(&unk_353010, &type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
  v44 = swift_allocError();
  *v45 = v43;
  v105[0] = v44;
  v106 = 1;
  v101(v105);
  return sub_30B8(v105, qword_34C798, &qword_2D0DA0);
}

double sub_174770@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v109 = a3;
  v7 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v7 - 8);
  v99 = v85 - v8;
  v9 = sub_2CD220();
  v100 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v106 = v85 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v108 = v85 - v19;
  __chkstk_darwin(v18);
  v21 = v85 - v20;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v23 = *(v14 + 16);
  v91 = v22;
  v90 = v14 + 16;
  v89 = v23;
  v23(v21, v22, v13);
  v24 = sub_2CDFE0();
  v25 = sub_2CE670();
  v26 = os_log_type_enabled(v24, v25);
  v86 = a4;
  v85[2] = a2;
  v85[1] = a1;
  v85[0] = v17;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v110 = v28;
    *v27 = 136446210;
    v29 = sub_2CCCA0();
    v31 = sub_3F08(v29, v30, &v110);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_0, v24, v25, "MediaItemDisambiguationStrategy#disambiguationSnippet... %{public}s", v27, 0xCu);
    sub_306C(v28);
  }

  v92 = *(v14 + 8);
  v92(v21, v13);
  v32 = v108;
  v89(v108, v91, v13);
  v33 = v109;

  v34 = sub_2CDFE0();
  v35 = sub_2CE670();

  v36 = os_log_type_enabled(v34, v35);
  v101 = v9;
  v88 = v13;
  v87 = v14;
  if (!v36)
  {

    v92(v32, v13);
    v46 = v33[2];
    if (!v46)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  v37 = swift_slowAlloc();
  v105 = swift_slowAlloc();
  v110 = v105;
  *v37 = 136315394;
  v38 = v33[2];
  if (v38)
  {
    v39 = v33 + 7;
    v40 = _swiftEmptyArrayStorage;
    do
    {
      v42 = *(v39 - 1);
      v41 = *v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_B90C4(0, *(v40 + 2) + 1, 1, v40);
      }

      v44 = *(v40 + 2);
      v43 = *(v40 + 3);
      if (v44 >= v43 >> 1)
      {
        v40 = sub_B90C4((v43 > 1), v44 + 1, 1, v40);
      }

      *(v40 + 2) = v44 + 1;
      v45 = &v40[16 * v44];
      *(v45 + 4) = v42;
      *(v45 + 5) = v41;
      v39 += 9;
      --v38;
    }

    while (v38);
  }

  v62 = sub_2CE420();
  v64 = v63;

  v65 = sub_3F08(v62, v64, &v110);

  *(v37 + 4) = v65;
  *(v37 + 12) = 2082;
  v66 = sub_2CCCA0();
  v68 = sub_3F08(v66, v67, &v110);

  *(v37 + 14) = v68;
  _os_log_impl(&dword_0, v34, v35, "AppResolutionStrategy#disambiguationSnippet ordered: %s %{public}s", v37, 0x16u);
  swift_arrayDestroy();

  v92(v108, v88);
  v33 = v109;
  v46 = v109[2];
  if (v46)
  {
LABEL_15:
    v98 = sub_2C8D90();
    v47 = *(v98 - 8);
    v48 = *(v47 + 56);
    v96 = v47 + 56;
    v97 = v48;
    v49 = v101;
    v94 = v100 + 8;
    v95 = (v100 + 16);
    v93 = v100 + 32;
    v50 = v33 + 6;
    v51 = _swiftEmptyArrayStorage;
    v52 = v106;
    v53 = v107;
    do
    {
      v54 = *(v50 - 1);
      v108 = *(v50 - 2);
      v109 = v46;
      v55 = *v50;
      v102 = v50[1];
      v103 = v55;
      v57 = v50[3];
      v56 = v50[4];
      v58 = v50[6];
      v105 = v50[5];
      v97(v99, 1, 1, v98);
      v107 = v57;

      v106 = v56;

      v104 = v105;
      v105 = v58;

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v108 = v54;
      sub_2CD210();
      (*v95)(v53, v52, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_B91F8(0, v51[2] + 1, 1, v51);
      }

      v60 = v51[2];
      v59 = v51[3];
      if (v60 >= v59 >> 1)
      {
        v51 = sub_B91F8((v59 > 1), v60 + 1, 1, v51);
      }

      v61 = v100;
      v49 = v101;
      (*(v100 + 8))(v52, v101);
      v51[2] = v60 + 1;
      (*(v61 + 32))(v51 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60, v53, v49);
      v50 += 9;
      v46 = (v109 - 1);
    }

    while (v109 != (&dword_0 + 1));
  }

LABEL_23:
  v69 = v85[0];
  v70 = v88;
  v89(v85[0], v91, v88);
  v71 = sub_2CDFE0();
  v72 = sub_2CE670();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v73 = 136315394;

    v74 = sub_2CE420();
    v76 = v75;

    v77 = sub_3F08(v74, v76, &v110);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2082;
    v78 = sub_2CCCA0();
    v80 = sub_3F08(v78, v79, &v110);

    *(v73 + 14) = v80;
    _os_log_impl(&dword_0, v71, v72, "MediaItemDisambiguationStrategy#disambiguationSnippet returning items to disambiguate: %s %{public}s", v73, 0x16u);
    swift_arrayDestroy();
  }

  v92(v69, v70);
  v81 = v86;

  sub_2CD310();
  v82 = enum case for SiriAudioSnippets.disambiguation(_:);
  v83 = sub_2CD230();
  (*(*(v83 - 8) + 104))(v81, v82, v83);

  return result;
}

uint64_t sub_1751C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_2CB260();
  __chkstk_darwin(v10 - 8);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  sub_F3F4(a2, &v17 - v12, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a4, v9, &qword_34C6E8, &unk_2D0FF0);
  v13 = *&v9[*(v7 + 56)];
  v14 = [v13 catId];

  sub_2CE270();
  sub_2CA590();
  v15 = sub_2CA130();
  (*(*(v15 - 8) + 8))(v9, v15);
  sub_2CA5F0();
  return sub_2CA5A0();
}

uint64_t sub_1753F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_175494, 0, 0);
}

uint64_t sub_175494()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  sub_2CA080();
  swift_allocObject();
  v0[13] = sub_2CA070();
  v5 = sub_2CD230();
  v0[5] = v5;
  v0[6] = sub_17ECF8(&qword_34CC78, &type metadata accessor for SiriAudioSnippets, &protocol conformance descriptor for SiriAudioSnippets);
  v6 = sub_F390(v0 + 2);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  sub_20410(&unk_351900, &unk_2D0960);
  v7 = swift_allocObject();
  v0[14] = v7;
  *(v7 + 16) = xmmword_2D0770;
  sub_F3F4(v3, v1, &qword_34C6E8, &unk_2D0FF0);
  *(v7 + 32) = *(v1 + *(v2 + 48));
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v1, v8);
  v13 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_7EF60;
  v10 = v0[10];
  v11 = v0[7];

  return v13(v11, v0 + 2, v7, v10);
}

uint64_t sub_17569C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = a7;
  v69 = a6;
  v68 = a5;
  v70 = a4;
  v67 = *(a7 - 1);
  __chkstk_darwin(a1);
  v65 = v12;
  v66 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C8EC0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2CE000();
  v17 = *(v74 - 8);
  __chkstk_darwin(v74);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_3530D0, &qword_2D5728);
  v20 = sub_2CA460();
  v76 = v9;
  v77 = a8;
  v73 = a8;
  v78 = a3;
  v79 = a1;
  v21 = sub_16CEF0(sub_17EC60, v75, v20);

  v80[0] = v21;

  sub_17C140(v80);
  v64 = v13;
  v71 = v19;
  v72 = v17;

  v22 = v80[0];
  if (qword_34BF58 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v23 = v74;
    v24 = sub_3ED0(v74, static Logger.default);
    swift_beginAccess();
    v25 = v71;
    v26 = v72;
    (*(v72 + 16))(v71, v24, v23);

    v27 = sub_2CDFE0();
    v28 = sub_2CE670();

    v63 = v28;
    if (!os_log_type_enabled(v27, v28))
    {

      (*(v26 + 8))(v25, v23);
      v37 = v64;
      goto LABEL_15;
    }

    v29 = v27;
    v59 = v16;
    v60 = v14;
    v61 = a3;
    v62 = v9;
    v30 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v80[0] = v57;
    v58 = v30;
    *v30 = 136315138;
    v31 = *(v22 + 2);
    if (!v31)
    {
      break;
    }

    v32 = 0;
    v9 = v22 + 56;
    v16 = _swiftEmptyArrayStorage;
    while (v32 < *(v22 + 2))
    {
      v14 = *(v9 - 1);
      v33 = *v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_B90C4(0, *(v16 + 2) + 1, 1, v16);
      }

      v35 = *(v16 + 2);
      v34 = *(v16 + 3);
      if (v35 >= v34 >> 1)
      {
        v16 = sub_B90C4((v34 > 1), v35 + 1, 1, v16);
      }

      ++v32;
      *(v16 + 2) = v35 + 1;
      v36 = &v16[16 * v35];
      *(v36 + 4) = v14;
      *(v36 + 5) = v33;
      v9 += 9;
      a3 = v74;
      if (v31 == v32)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  a3 = v74;
LABEL_14:
  v38 = sub_2CE420();
  v40 = v39;

  v41 = sub_3F08(v38, v40, v80);

  v42 = v58;
  *(v58 + 1) = v41;
  _os_log_impl(&dword_0, v29, v63, "AppResolutionCommonStrategy#promptForDisambiguation ordered: %s", v42, 0xCu);
  sub_306C(v57);

  (*(v72 + 8))(v71, a3);
  v9 = v62;
  a3 = v61;
  v37 = v64;
  v14 = v60;
  v16 = v59;
LABEL_15:
  sub_2CB570();
  v43 = v73;
  v74 = sub_175F94(v22, v16, v9, v73);
  (*(v14 + 8))(v16, v37);
  v72 = (*(v43 + 32))(v9, v43);
  v44 = *(v22 + 2);
  v45 = _swiftEmptyArrayStorage;
  if (v44)
  {
    v80[0] = _swiftEmptyArrayStorage;
    sub_2CED20();
    v46 = v22 + 80;
    do
    {
      v46 += 72;

      sub_2CED00();
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      --v44;
    }

    while (v44);
    v45 = v80[0];
  }

  v71 = v45;
  v47 = v73;
  (*(v73 + 48))(v80, v9, v73);
  sub_35E0(v80, v80[3]);
  v48 = sub_2CC480();
  v49 = v67;
  v50 = v66;
  (*(v67 + 16))(v66, a3, v9);
  v51 = (*(v49 + 80) + 48) & ~*(v49 + 80);
  v52 = (v65 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 2) = v9;
  *(v53 + 3) = v47;
  v54 = v9;
  v55 = v69;
  *(v53 + 4) = v68;
  *(v53 + 5) = v55;
  (*(v49 + 32))(&v53[v51], v50, v54);
  *&v53[v52] = v22;
  *&v53[(v52 + 15) & 0xFFFFFFFFFFFFFFF8] = v74;

  sub_28AFC4(v70, v48, sub_17EC80, v53);

  return sub_306C(v80);
}

__n128 sub_175E14@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(a4 + 24);

  v10(v20, a3, a4);
  type metadata accessor for AppInfoBuilder();
  swift_initStackObject();
  v11 = v21;
  v12 = v22;
  v13 = sub_F9A0(v20, v21);
  __chkstk_darwin(v13);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v15);

  sub_188F64(v9, v15, a2, v11, v12, v23);
  sub_306C(v20);
  v17 = v23[3];
  *(a5 + 32) = v23[2];
  *(a5 + 48) = v17;
  *(a5 + 64) = v24;
  result = v23[1];
  *a5 = v23[0];
  *(a5 + 16) = result;
  return result;
}

uint64_t sub_175F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = a3;
  v7 = _swiftEmptyArrayStorage;
  v6[3] = a4;
  v6[5] = a2;
  v6[6] = &v7;
  sub_16D130(sub_17F1BC, v6, a1);
  sub_2AD30(a1);
  sub_2C9960();
  swift_allocObject();
  return sub_2C9950();
}

uint64_t sub_176044(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, void *a7, uint64_t a8)
{
  v302 = a7;
  v274 = a6;
  v292 = a5;
  v300 = a2;
  v301 = a4;
  v299 = a3;
  v291 = sub_2CA910();
  v290 = *(v291 - 8);
  __chkstk_darwin(v291);
  v289 = &v268 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = sub_2C8E80();
  v282 = *(v283 - 8);
  __chkstk_darwin(v283);
  v281 = &v268 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = sub_20410(&unk_353020, &unk_2D0970);
  v12 = __chkstk_darwin(v277);
  v276 = &v268 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v298 = (&v268 - v15);
  __chkstk_darwin(v14);
  v17 = &v268 - v16;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v303 = v18;
  v304 = v19;
  v20 = __chkstk_darwin(v18);
  v288 = &v268 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v275 = &v268 - v23;
  v24 = __chkstk_darwin(v22);
  v272 = &v268 - v25;
  v26 = __chkstk_darwin(v24);
  v271 = &v268 - v27;
  v28 = __chkstk_darwin(v26);
  v287 = &v268 - v29;
  v30 = __chkstk_darwin(v28);
  v285 = &v268 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v268 - v33;
  __chkstk_darwin(v32);
  v36 = &v268 - v35;
  v37 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v37);
  v39 = &v268 - v38;
  v293 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v40 = __chkstk_darwin(v293);
  v273 = &v268 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v270 = &v268 - v43;
  v44 = __chkstk_darwin(v42);
  v284 = &v268 - v45;
  v46 = __chkstk_darwin(v44);
  v280 = &v268 - v47;
  v48 = __chkstk_darwin(v46);
  v286 = &v268 - v49;
  v50 = __chkstk_darwin(v48);
  v279 = (&v268 - v51);
  v52 = __chkstk_darwin(v50);
  v278 = &v268 - v53;
  __chkstk_darwin(v52);
  v55 = &v268 - v54;
  sub_F3F4(a1, v39, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v39, &unk_3519A0, &qword_2D0980);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v56 = v303;
    v57 = sub_3ED0(v303, static Logger.default);
    swift_beginAccess();
    v58 = v304;
    (*(v304 + 16))(v36, v57, v56);
    v59 = sub_2CDFE0();
    v60 = sub_2CE680();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v300;
    if (v61)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v59, v60, "AppResolutionCommonStrategy#promptForDisambiguation missing disambiguateApps template", v63, 2u);
    }

    (*(v58 + 8))(v36, v56);
    sub_2C9D40();
    swift_allocObject();
    v64 = sub_2C9D20();
    sub_17ECF8(&unk_353010, &type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
    v65 = swift_allocError();
    *v66 = v64;
    *&v306 = v65;
    v309 = 1;
    v62(&v306);
  }

  else
  {
    sub_14A58(v39, v55, &qword_34C6E8, &unk_2D0FF0);
    (*(a8 + 56))(v302, a8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v268 = a8;
    v68 = swift_getAssociatedTypeWitness();
    sub_B7440(v292, AssociatedTypeWitness, v68, v17);
    v69 = v55;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v70 = v303;
    v71 = sub_3ED0(v303, static Logger.default);
    swift_beginAccess();
    v72 = v304;
    v73 = *(v304 + 16);
    v295 = v304 + 16;
    v296 = v71;
    v294 = v73;
    v73(v34, v71, v70);
    v269 = v17;
    v74 = v298;
    sub_F3F4(v17, v298, &unk_353020, &unk_2D0970);
    v75 = sub_2CDFE0();
    v76 = sub_2CE690();
    v77 = os_log_type_enabled(v75, v76);
    v297 = v55;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v306 = v79;
      *v78 = 136315138;
      sub_F3F4(v74, v276, &unk_353020, &unk_2D0970);
      v80 = sub_2CE2A0();
      v81 = v74;
      v82 = v80;
      v84 = v83;
      v70 = v303;
      sub_30B8(v81, &unk_353020, &unk_2D0970);
      v85 = sub_3F08(v82, v84, &v306);
      v86 = v304;

      *(v78 + 4) = v85;
      _os_log_impl(&dword_0, v75, v76, "AppResolutionCommonStrategy#promptForDisambiguation makeNLContextProvider returned: %s", v78, 0xCu);
      sub_306C(v79);
      v72 = v86;

      v69 = v297;

      v87 = v86;
    }

    else
    {

      sub_30B8(v74, &unk_353020, &unk_2D0970);
      v87 = v72;
    }

    v298 = *(v87 + 8);
    (v298)(v34, v70);
    v88 = v293;
    v89 = v302;
    v90 = v268;
    v91 = (*(v268 + 64))(v302, v268);
    v91();

    sub_2C9C00();

    if (sub_2CB640())
    {

      v92 = v278;
      sub_F3F4(v69, v278, &qword_34C6E8, &unk_2D0FF0);

      v93 = sub_2CA100();
      v94 = sub_2CA130();
      v95 = *(v94 - 8);
      v96 = *(v95 + 8);
      v301 = v95 + 8;
      v302 = v96;
      (v96)(v92, v94);
      v97 = (v93 + 40);
      v98 = *(v93 + 16) + 1;
      while (--v98)
      {
        v100 = *(v97 - 1);
        v99 = *v97;
        v97 += 2;
        v101 = HIBYTE(v99) & 0xF;
        if ((v99 & 0x2000000000000000) == 0)
        {
          v101 = v100 & 0xFFFFFFFFFFFFLL;
        }

        if (v101)
        {

          goto LABEL_29;
        }
      }

      v100 = 0;
      v99 = 0;
LABEL_29:

      v119 = v279;
      sub_F3F4(v69, v279, &qword_34C6E8, &unk_2D0FF0);

      v120 = sub_2CA110();
      (v302)(v119, v94);
      v121 = (v120 + 40);
      v122 = *(v120 + 16) + 1;
      v123 = v285;
      v292 = v94;
      while (--v122)
      {
        v125 = *(v121 - 1);
        v124 = *v121;
        v121 += 2;
        v126 = HIBYTE(v124) & 0xF;
        if ((v124 & 0x2000000000000000) == 0)
        {
          v126 = v125 & 0xFFFFFFFFFFFFLL;
        }

        if (v126)
        {

          goto LABEL_36;
        }
      }

      v125 = 0;
      v124 = 0;
LABEL_36:

      v127 = v303;
      v294(v123, v296, v303);

      v128 = sub_2CDFE0();
      v129 = sub_2CE670();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v279 = swift_slowAlloc();
        v305 = v279;
        *&v306 = v100;
        *v130 = 136315394;
        *(&v306 + 1) = v99;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v131 = sub_2CE2A0();
        v133 = sub_3F08(v131, v132, &v305);

        *(v130 + 4) = v133;
        v69 = v297;
        *(v130 + 12) = 2080;
        *&v306 = v125;
        *(&v306 + 1) = v124;
        v134 = sub_2CE2A0();
        v136 = sub_3F08(v134, v135, &v305);

        *(v130 + 14) = v136;
        _os_log_impl(&dword_0, v128, v129, "AppResolutionCommonStrategy#promptForDisambiguation using CarPlay dialog-only views. From template:: print:%s, speak:%s", v130, 0x16u);
        swift_arrayDestroy();

        v137 = v285;
      }

      else
      {

        v137 = v123;
      }

      (v298)(v137, v127);
      v70 = v127;
      v150 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
      v151 = v281;
      sub_2C8E70();
      sub_2C8E50();
      (*(v282 + 8))(v151, v283);
      v152 = sub_2CE260();

      [v150 setAceId:v152];

      v153 = v286;
      sub_F3F4(v69, v286, &qword_34C6E8, &unk_2D0FF0);
      v154 = v293;

      sub_2CA0D0();
      v155 = sub_2CE260();

      v156 = v292;
      v157 = v302;
      (v302)(v153, v292);
      [v150 setDialogIdentifier:v155];

      v158 = v280;
      sub_F3F4(v69, v280, &qword_34C6E8, &unk_2D0FF0);

      v159 = sub_2CA100();
      v157(v158, v156);
      v160 = (v159 + 40);
      v161 = *(v159 + 16) + 1;
      while (--v161)
      {
        v163 = *(v160 - 1);
        v162 = *v160;
        v160 += 2;
        v164 = HIBYTE(v162) & 0xF;
        if ((v162 & 0x2000000000000000) == 0)
        {
          v164 = v163 & 0xFFFFFFFFFFFFLL;
        }

        if (v164)
        {

          v165 = sub_2CE260();

          goto LABEL_52;
        }
      }

      v165 = 0;
LABEL_52:
      [v150 setText:v165];

      v166 = v284;
      sub_F3F4(v297, v284, &qword_34C6E8, &unk_2D0FF0);
      v167 = *(v166 + *(v154 + 48));
      v168 = v150;

      v169 = sub_2CA110();
      (v302)(v166, v156);
      v170 = (v169 + 40);
      v171 = *(v169 + 16) + 1;
      v142 = v300;
      v144 = v298;
      while (--v171)
      {
        v173 = *(v170 - 1);
        v172 = *v170;
        v170 += 2;
        v174 = HIBYTE(v172) & 0xF;
        if ((v172 & 0x2000000000000000) == 0)
        {
          v174 = v173 & 0xFFFFFFFFFFFFLL;
        }

        if (v174)
        {

LABEL_60:
          v177 = sub_2CE260();

          goto LABEL_61;
        }
      }

      v175 = [v168 text];
      if (v175)
      {
        v176 = v175;
        sub_2CE270();

        goto LABEL_60;
      }

      v177 = 0;
LABEL_61:
      [v168 setSpeakableText:v177];

      [v168 setCanUseServerTTS:1];
      sub_334A0(0, &qword_353110, NSNumber_ptr);
      isa = sub_2CEB10(1).super.super.isa;
      [v168 setListenAfterSpeaking:isa];

      v179 = v287;
      v294(v287, v296, v70);
      v180 = v168;
      v181 = sub_2CDFE0();
      v182 = sub_2CE670();

      if (os_log_type_enabled(v181, v182))
      {
        v183 = v70;
        v184 = swift_slowAlloc();
        v302 = swift_slowAlloc();
        v305 = v302;
        *v184 = 136315394;
        v185 = [v180 text];
        if (v185)
        {
          v186 = v185;
          v187 = sub_2CE270();
          v189 = v188;
        }

        else
        {
          v187 = 0;
          v189 = 0;
        }

        *&v306 = v187;
        *(&v306 + 1) = v189;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v201 = sub_2CE2A0();
        v203 = sub_3F08(v201, v202, &v305);

        *(v184 + 4) = v203;
        *(v184 + 12) = 2080;
        v204 = [v180 speakableText];
        if (v204)
        {
          v205 = v144;
          v206 = v142;
          v207 = v204;
          v208 = sub_2CE270();
          v210 = v209;

          v142 = v206;
          v144 = v205;
          v183 = v303;
        }

        else
        {
          v208 = 0;
          v210 = 0;
        }

        *&v306 = v208;
        *(&v306 + 1) = v210;
        v213 = sub_2CE2A0();
        v215 = sub_3F08(v213, v214, &v305);

        *(v184 + 14) = v215;
        _os_log_impl(&dword_0, v181, v182, "AppResolutionCommonStrategy#promptForDisambiguation CarPlay view print:%s, speak:%s", v184, 0x16u);
        swift_arrayDestroy();

        (v144)(v287, v183);
        v190 = v288;
        v70 = v183;
      }

      else
      {

        (v144)(v179, v70);
        v190 = v288;
      }

      sub_20410(&unk_351900, &unk_2D0960);
      v216 = swift_allocObject();
      *(v216 + 16) = xmmword_2D0770;
      *(v216 + 32) = v180;
    }

    else
    {
      (*(v90 + 48))(&v306, v89, v90);
      sub_35E0(&v306, *(&v307 + 1));
      v102 = sub_2CC430();
      sub_306C(&v306);
      if (v102)
      {

        v103 = v272;
        v294(v272, v296, v70);
        v104 = sub_2CDFE0();
        v105 = sub_2CE670();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&dword_0, v104, v105, "AppResolutionCommonStrategy#promptForDisambiguation using pym-compatible snippet", v106, 2u);
        }

        v287 = (v72 + 8);
        (v298)(v103, v70);
        v302 = sub_1780D4(v292, v302, v90);
        v107 = v297;
        v108 = v270;
        sub_F3F4(v297, v270, &qword_34C6E8, &unk_2D0FF0);

        v109 = sub_2CA100();
        v110 = sub_2CA130();
        v111 = *(v110 - 8);
        v112 = *(v111 + 8);
        v113 = (v111 + 8);
        v112(v108, v110);
        v114 = (v109 + 40);
        v115 = *(v109 + 16) + 1;
        while (--v115)
        {
          v117 = *(v114 - 1);
          v116 = *v114;
          v114 += 2;
          v118 = HIBYTE(v116) & 0xF;
          if ((v116 & 0x2000000000000000) == 0)
          {
            v118 = v117 & 0xFFFFFFFFFFFFLL;
          }

          if (v118)
          {

            goto LABEL_66;
          }
        }

        v116 = 0;
LABEL_66:

        v191 = v273;
        sub_F3F4(v107, v273, &qword_34C6E8, &unk_2D0FF0);

        v192 = sub_2CA110();
        v292 = v112;
        v112(v191, v110);
        v193 = (v192 + 40);
        v194 = *(v192 + 16) + 1;
        v301 = v110;
        while (--v194)
        {
          v195 = *(v193 - 1);
          v196 = *v193;
          v193 += 2;
          v197 = HIBYTE(v196) & 0xF;
          if ((v196 & 0x2000000000000000) == 0)
          {
            v197 = v195 & 0xFFFFFFFFFFFFLL;
          }

          if (v197)
          {

            goto LABEL_73;
          }
        }

        v196 = 0;
LABEL_73:

        v198 = [objc_allocWithZone(SADialogText) init];
        v199 = v298;
        v285 = v113;
        if (v116)
        {

          v200 = sub_2CE260();
        }

        else
        {
          v200 = 0;
        }

        [v198 setText:v200];

        v211 = v196 != 0;
        if (v196)
        {

          v212 = sub_2CE260();
        }

        else
        {
          v212 = 0;
        }

        [v198 setSpeakableTextOverride:v212];

        v217 = [objc_allocWithZone(SADialog) init];
        [v217 setCanUseServerTTS:1];
        sub_2CBC60();
        sub_35E0(&v306, *(&v307 + 1));
        v218 = sub_2CBE50();
        sub_306C(&v306);
        [v217 setPrintedOnly:(v218 & 1) == 0];

        if (v116)
        {

          v211 = 0;
        }

        v219 = v303;
        v220 = v297;
        v144 = v199;
        [v217 setSpokenOnly:v211];
        v221 = v198;
        [v217 setCaption:v221];
        [v217 setContent:v221];

        v222 = v286;
        sub_F3F4(v220, v286, &qword_34C6E8, &unk_2D0FF0);

        sub_2CA0D0();
        v223 = sub_2CE260();

        v292(v222, v301);
        [v217 setDialogIdentifier:v223];

        v224 = v302;
        [v224 setDialog:v217];
        sub_2CBC60();
        sub_35E0(&v306, *(&v307 + 1));
        v225 = [objc_allocWithZone(NSNumber) initWithBool:sub_2CBE50() & 1];
        sub_306C(&v306);
        [v224 setListenAfterSpeaking:v225];

        v226 = v275;
        v294(v275, v296, v219);
        v227 = v217;
        v228 = v224;
        v229 = v227;
        v230 = sub_2CDFE0();
        v231 = sub_2CE690();

        if (os_log_type_enabled(v230, v231))
        {
          v298 = v144;
          v232 = swift_slowAlloc();
          v233 = swift_slowAlloc();
          v302 = swift_slowAlloc();
          *&v306 = v302;
          *v232 = 136447746;
          v234 = sub_2CCC90();
          v236 = sub_3F08(v234, v235, &v306);

          *(v232 + 4) = v236;
          *(v232 + 12) = 1026;
          v237 = [v229 printedOnly];

          *(v232 + 14) = v237;
          *(v232 + 18) = 1026;
          v238 = [v229 spokenOnly];

          *(v232 + 20) = v238;
          *(v232 + 24) = 2114;
          v239 = [v229 caption];
          *(v232 + 26) = v239;
          *v233 = v239;
          *(v232 + 34) = 2114;
          v240 = [v229 content];
          *(v232 + 36) = v240;
          v233[1] = v240;
          *(v232 + 44) = 2114;
          v241 = [v229 dialogIdentifier];
          if (v241)
          {
            v242 = v241;
            v243 = sub_2CE270();
            v245 = v244;

            sub_10C40();
            swift_allocError();
            *v246 = v243;
            v246[1] = v245;
            v241 = _swift_stdlib_bridgeErrorToNSError();
            v247 = v241;
          }

          else
          {
            v247 = 0;
          }

          v142 = v300;
          *(v232 + 46) = v241;
          v233[2] = v247;
          *(v232 + 54) = 2112;
          v248 = [v228 listenAfterSpeaking];
          *(v232 + 56) = v248;
          v233[3] = v248;
          _os_log_impl(&dword_0, v230, v231, "AppResolutionCommonStrategy#promptForDisambiguation %{public}s pym built and set SADialog printedOnly:%{BOOL,public}d, spokenOnly:%{BOOL,public}d, caption:%{public}@, content:%{public}@, dialogIdentifier:%{public}@, listenAfterSpeaking: %@", v232, 0x40u);
          sub_20410(&unk_34FC00, &unk_2D0150);
          swift_arrayDestroy();

          sub_306C(v302);

          v70 = v303;
          v144 = v298;
          (v298)(v275, v303);
        }

        else
        {
          v70 = v219;

          (v144)(v226, v219);
          v142 = v300;
        }

        sub_20410(&unk_351900, &unk_2D0960);
        v249 = swift_allocObject();
        *(v249 + 16) = xmmword_2D0770;
        *(v249 + 32) = v228;
      }

      else
      {
        v138 = v271;
        v294(v271, v296, v70);
        v139 = sub_2CDFE0();
        v140 = sub_2CE670();
        v141 = os_log_type_enabled(v139, v140);
        v142 = v300;
        if (v141)
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&dword_0, v139, v140, "AppResolutionCommonStrategy#promptForDisambiguation using legacy snippet", v143, 2u);
        }

        v144 = v298;
        (v298)(v138, v70);
        v145 = v292;
        v146 = *(v292 + 2);
        if (v146)
        {
          *&v306 = _swiftEmptyArrayStorage;
          sub_2CED20();
          v147 = v145 + 80;
          do
          {
            v147 += 72;

            sub_2CED00();
            sub_2CED30();
            sub_2CED40();
            sub_2CED10();
            --v146;
          }

          while (v146);
        }

        v148 = sub_2CB540();
        swift_allocObject();
        v149 = sub_2CB530();
        *(&v307 + 1) = v148;
        v308 = sub_17ECF8(&unk_353100, &type metadata accessor for SiriEnvironmentBackedDeviceState, &protocol conformance descriptor for SiriEnvironmentBackedDeviceState);
        *&v306 = v149;
        sub_2CA3B0();

        sub_306C(&v306);
      }

      v190 = v288;
    }

    v294(v190, v296, v70);

    v250 = sub_2CDFE0();
    v251 = sub_2CE690();

    if (os_log_type_enabled(v250, v251))
    {
      v252 = swift_slowAlloc();
      v298 = v144;
      v253 = v142;
      v254 = v190;
      v255 = v252;
      v256 = swift_slowAlloc();
      *&v306 = v256;
      *v255 = 136315138;
      sub_334A0(0, &qword_34CD10, SAAceView_ptr);
      v257 = sub_2CE420();
      v259 = v258;

      v260 = sub_3F08(v257, v259, &v306);

      *(v255 + 4) = v260;
      _os_log_impl(&dword_0, v250, v251, "AppResolutionCommonStrategy#promptForDisambiguation views: %s", v255, 0xCu);
      sub_306C(v256);

      v261 = v254;
      v142 = v253;
      (v298)(v261, v70);
    }

    else
    {

      (v144)(v190, v70);
    }

    v308 = 0;
    v306 = 0u;
    v307 = 0u;
    v262 = v289;
    v263 = v269;
    sub_2C9E00();

    sub_30B8(&v306, &qword_34CC80, &qword_2D1520);
    v264 = v291;
    *(&v307 + 1) = v291;
    v308 = &protocol witness table for AceOutput;
    v265 = sub_F390(&v306);
    v266 = v290;
    (*(v290 + 16))(v265, v262, v264);
    v309 = 0;
    v142(&v306);
    (*(v266 + 8))(v262, v264);
    sub_30B8(v263, &unk_353020, &unk_2D0970);
    sub_30B8(v297, &qword_34C6E8, &unk_2D0FF0);
  }

  return sub_30B8(&v306, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_1780D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[7] = _swiftEmptyArrayStorage;
  v5[2] = a2;
  v5[3] = a3;
  if (sub_99044(sub_17ED40, v5, a1) >> 62)
  {
    sub_334A0(0, &unk_351910, SFCardSection_ptr);
    sub_2CED90();
  }

  else
  {

    sub_2CEEB0();
    sub_334A0(0, &unk_351910, SFCardSection_ptr);
  }

  sub_334A0(0, &qword_3500B8, SACardSnippet_ptr);
  v3 = sub_2CE640();

  return v3;
}

uint64_t sub_178220(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v174 = a4;
  v173 = a3;
  v179 = a5;
  v166 = *(a5 - 8);
  __chkstk_darwin(a1);
  v165 = v9;
  v175 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CD040();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v157 = (&v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v176 = &v153 - v15;
  v163 = v16;
  __chkstk_darwin(v14);
  v18 = &v153 - v17;
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v162 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v156 = &v153 - v24;
  v25 = __chkstk_darwin(v23);
  v161 = &v153 - v26;
  v27 = __chkstk_darwin(v25);
  v160 = &v153 - v28;
  __chkstk_darwin(v27);
  v30 = &v153 - v29;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v32 = *(v20 + 16);
  v171 = v31;
  v170 = v20 + 16;
  v169 = v32;
  v32(v30, v31, v19);
  v33 = *(v11 + 2);
  v168 = v11 + 16;
  v167 = v33;
  v33(v18, a2, v10);
  v34 = a1;
  v35 = sub_2CDFE0();
  v36 = sub_2CE690();
  v178 = v20;
  v37 = v36;

  v38 = os_log_type_enabled(v35, v37);
  v177 = v10;
  v180 = v19;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v158 = a2;
    v40 = v39;
    v172 = swift_slowAlloc();
    v185[0] = v172;
    *v40 = 136315394;
    *&v181 = v34;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v155 = v34;
    v42 = AssociatedTypeWitness;
    WitnessTable = swift_getWitnessTable();
    v44 = sub_D7E44(&v181, v42, WitnessTable);
    v46 = a6;
    v47 = v10;
    v48 = sub_3F08(v44, v45, v185);

    *(v40 + 4) = v48;
    *(v40 + 12) = 2080;
    sub_17ECF8(&unk_34C160, &type metadata accessor for AppResolutionResult.AppResolutionResultError, &protocol conformance descriptor for AppResolutionResult.AppResolutionResultError);
    v49 = sub_2CEEF0();
    v51 = v50;
    v52 = v47;
    a6 = v46;
    v159 = *(v11 + 1);
    v159(v18, v52);
    v53 = sub_3F08(v49, v51, v185);
    v34 = v155;

    *(v40 + 14) = v53;
    _os_log_impl(&dword_0, v35, v37, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse intent: %s, reason:%s", v40, 0x16u);
    swift_arrayDestroy();

    a2 = v158;

    v54 = *(v178 + 8);
    v55 = v30;
    v56 = v180;
  }

  else
  {

    v159 = *(v11 + 1);
    v159(v18, v10);
    v54 = *(v178 + 8);
    v55 = v30;
    v56 = v19;
  }

  v172 = v54;
  (v54)(v55, v56);
  v57 = sub_2CB460();
  if (!v57)
  {
    sub_2CB180();
    v57 = sub_2CB170();
  }

  v58 = v57;
  type metadata accessor for InternalRenderingFlowStrategy();
  v59 = swift_allocObject();
  v184 = v34;
  swift_getAssociatedTypeWitness();
  v60 = v34;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v183 = 0;
    v181 = 0u;
    v182 = 0u;
    sub_30B8(&v181, &qword_3530A0, &qword_2D1EF8);
    goto LABEL_15;
  }

  sub_F338(&v181, v185);
  sub_35E0(v185, v185[3]);
  if (!sub_2CC140() || (v61 = *(v11 + 13), v155 = v59, v62 = v176, v154 = a6, v63 = v177, v61(v176, enum case for AppResolutionResult.AppResolutionResultError.noAppFound(_:), v177), v64 = sub_2CD030(), v65 = v62, v59 = v155, v66 = v63, a6 = v154, v159(v65, v66), (v64 & 1) == 0))
  {
    sub_306C(v185);
LABEL_15:
    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    if (v72)
    {
      v73 = v72;
      v160 = v58;
      v74 = a2;
      v75 = v60;
      v76 = sub_1D2364(&off_3303F0);
      sub_F1954(&unk_330410);
      if ((v76 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v73, &off_330420))
      {
        v162 = v75;
        v77 = v11;
        v78 = v161;
        v169(v161, v171, v180);
        v79 = sub_2CDFE0();
        v80 = sub_2CE690();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_0, v79, v80, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse Intent is PodcastPromotion.", v81, 2u);
        }

        v172(v78, v180);
        v82 = v164;
        v83 = v179;
        v180 = (*(a6 + 32))(v179, a6);
        v167(v176, v74, v177);
        v84 = v166;
        (*(v166 + 16))(v175, v82, v83);
        v85 = (v11[80] + 48) & ~v11[80];
        v86 = (v163 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
        v87 = a6;
        v88 = (*(v84 + 80) + v86 + 16) & ~*(v84 + 80);
        v89 = swift_allocObject();
        *(v89 + 2) = v83;
        *(v89 + 3) = v87;
        v90 = v162;
        *(v89 + 4) = v59;
        *(v89 + 5) = v90;
        v77[4](&v89[v85], v176, v177);
        v91 = &v89[v86];
        v92 = v174;
        *v91 = v173;
        v91[1] = v92;
        (*(v84 + 32))(&v89[v88], v175, v83);
        v93 = v90;

        sub_28891C(v93, sub_17D974, v89);
      }

      v94 = v75;
      if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v73, &off_330450))
      {
        v95 = v157;
        v96 = v74;
        v97 = v177;
        v167(v157, v74, v177);
        if ((*(v11 + 11))(v95, v97) == enum case for AppResolutionResult.AppResolutionResultError.appNotSupported(_:))
        {
          v155 = v59;
          v98 = v11;
          (*(v11 + 12))(v95, v97);
          v99 = *v95;
          v100 = sub_2CCF90();
          if (v101)
          {
            v102 = v101;
            v161 = v99;
            v159 = v100;
            if ((sub_2CBDB0() & 1) == 0)
            {
              v132 = a6;
              v133 = v97;
              v134 = v156;
              v169(v156, v171, v180);
              v135 = sub_2CDFE0();
              v136 = sub_2CE690();
              if (os_log_type_enabled(v135, v136))
              {
                v137 = swift_slowAlloc();
                *v137 = 0;
                _os_log_impl(&dword_0, v135, v136, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse unsupported lyrics search, building custom error dialog", v137, 2u);
              }

              v172(v134, v180);
              v154 = v132;
              v138 = v164;
              v139 = v179;
              v180 = (*(v132 + 32))(v179, v132);
              sub_2CCFB0();

              v178 = sub_2CCF80();
              v167(v176, v96, v133);
              v140 = v166;
              v141 = v138;
              v142 = v139;
              (*(v166 + 16))(v175, v141, v139);
              v143 = (*(v98 + 80) + 48) & ~*(v98 + 80);
              v144 = (v163 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
              v145 = (*(v140 + 80) + v144 + 16) & ~*(v140 + 80);
              v146 = (v165 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
              v172 = ((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
              v147 = swift_allocObject();
              v148 = v154;
              *(v147 + 16) = v142;
              *(v147 + 24) = v148;
              *(v147 + 32) = v155;
              *(v147 + 40) = v94;
              v98[4]((v147 + v143), v176, v177);
              v149 = (v147 + v144);
              v150 = v174;
              *v149 = v173;
              v149[1] = v150;
              (*(v140 + 32))(v147 + v145, v175, v142);
              v151 = (v147 + v146);
              *v151 = v159;
              v151[1] = v102;
              *(v172 + v147) = v160;
              v152 = v94;

              sub_2879AC(v178, v152, sub_17D84C, v147);
            }
          }

          else
          {
          }

          v59 = v155;
        }

        else
        {

          v159(v95, v97);
        }
      }

      else
      {
      }
    }

    v111 = v162;
    v169(v162, v171, v180);
    v112 = sub_2CDFE0();
    v113 = sub_2CE690();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_0, v112, v113, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse non-play or non-lyrics or non-appNotSupported, using default rendering...", v114, 2u);
    }

    v172(v111, v180);
    v185[0] = v59;
    sub_17ECF8(&qword_3530A8, type metadata accessor for InternalRenderingFlowStrategy, &unk_2D5678);
    sub_2C9440();
  }

  v162 = v11;
  v67 = [v60 launchId];
  v158 = a2;
  if (v67)
  {
    v68 = v67;
    v69 = sub_2CE270();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  v103 = v160;
  v169(v160, v171, v180);

  v104 = sub_2CDFE0();
  v105 = sub_2CE690();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v106 = 138412290;
    if (v71)
    {
      sub_10C40();
      v171 = swift_allocError();
      *v108 = v69;
      v108[1] = v71;

      v109 = _swift_stdlib_bridgeErrorToNSError();
      v110 = v109;
    }

    else
    {
      v109 = 0;
      v110 = 0;
    }

    *(v106 + 4) = v109;
    *v107 = v110;
    _os_log_impl(&dword_0, v104, v105, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse Intent is SiriForAirPlay with launchID: %@", v106, 0xCu);
    sub_30B8(v107, &unk_34FC00, &unk_2D0150);

    a6 = v154;
  }

  v160 = v58;

  v172(v103, v180);
  v116 = v164;
  v180 = (*(a6 + 32))(v179, a6);
  v178 = sub_112C0(_swiftEmptyArrayStorage);
  sub_2CCFB0();
  v172 = sub_2CCF80();
  v184 = v60;
  v171 = v60;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v183 = 0;
    v181 = 0u;
    v182 = 0u;
  }

  v117 = v176;
  v118 = v177;
  v167(v176, v158, v177);
  v119 = v166;
  v120 = v179;
  (*(v166 + 16))(v175, v116, v179);
  v121 = v162;
  v122 = (v162[80] + 48) & ~v162[80];
  v123 = (v163 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = (*(v119 + 80) + v123 + 16) & ~*(v119 + 80);
  v125 = swift_allocObject();
  v126 = v154;
  *(v125 + 2) = v120;
  *(v125 + 3) = v126;
  v127 = v171;
  *(v125 + 4) = v155;
  *(v125 + 5) = v127;
  v121[4](&v125[v122], v117, v118);
  v128 = &v125[v123];
  v129 = v174;
  *v128 = v173;
  v128[1] = v129;
  (*(v119 + 32))(&v125[v124], v175, v120);
  v130 = *(*v180 + 504);
  v131 = v127;

  v130(v178, v172, &v181, sub_17DAF4, v125);

  sub_30B8(&v181, &qword_34C6C0, &qword_2D0710);
  return sub_306C(v185);
}

uint64_t sub_17966C(void (*a1)(char *, void *, uint64_t, void *, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, void *, uint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  v47[1] = a7;
  v48 = a8;
  v56 = a5;
  v57 = a6;
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v10 - 8);
  v51 = v47 - v11;
  v12 = sub_2CE000();
  v49 = *(v12 - 8);
  v50 = v12;
  __chkstk_darwin(v12);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v15);
  v17 = v47 - v16;
  v18 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v19 = __chkstk_darwin(v18);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = v47 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = v47 - v26;
  __chkstk_darwin(v25);
  v29 = v47 - v28;
  sub_F3F4(v55, v17, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v17, &unk_3519A0, &qword_2D0980);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = v50;
    v31 = sub_3ED0(v50, static Logger.default);
    swift_beginAccess();
    v32 = v49;
    (*(v49 + 16))(v14, v31, v30);
    v33 = sub_2CDFE0();
    v34 = sub_2CE680();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse error evaluating failure template", v35, 2u);
    }

    (*(v32 + 8))(v14, v30);
    v58[5] = v52;
    type metadata accessor for InternalRenderingFlowStrategy();
    sub_17ECF8(&qword_3530A8, type metadata accessor for InternalRenderingFlowStrategy, &unk_2D5678);
    return sub_2C9440();
  }

  else
  {
    v55 = a10;
    sub_14A58(v17, v29, &qword_34C6E8, &unk_2D0FF0);
    (*(a9 + 40))(v58, v48, a9);
    v37 = sub_35E0(v58, v58[3]);
    sub_F3F4(v29, v27, &qword_34C6E8, &unk_2D0FF0);
    v38 = *&v27[*(v18 + 48)];
    v54 = *v37;
    v39 = sub_2CA130();
    v40 = *(v39 - 8);
    (*(v40 + 16))(v24, v27, v39);
    *&v24[*(v18 + 48)] = v38;
    sub_F3F4(v24, v21, &qword_34C6E8, &unk_2D0FF0);
    v41 = *&v21[*(v18 + 48)];
    v42 = sub_2CA000();
    v43 = v51;
    (*(*(v42 - 8) + 56))(v51, 1, 1, v42);
    v44 = v57;

    v45 = v38;
    v55(v21, v41, v43, _swiftEmptyArrayStorage, v54, v56, v44);

    sub_30B8(v43, &unk_353020, &unk_2D0970);
    sub_30B8(v24, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v29, &qword_34C6E8, &unk_2D0FF0);
    v46 = *(v40 + 8);
    v46(v21, v39);
    v46(v27, v39);
    return sub_306C(v58);
  }
}

uint64_t sub_179C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a8;
  v47 = a2;
  v52 = a6;
  v53 = a7;
  v50 = a1;
  v51 = a5;
  v48 = a3;
  v49 = a4;
  v12 = *(a11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(a1);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v44 = *(v14 - 8);
  v45 = v14;
  __chkstk_darwin(v14);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  v19 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v41 = *(v19 - 8);
  v20 = *(v41 + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v22 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v41 - v23;
  sub_F3F4(v50, v18, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v18, &unk_3519A0, &qword_2D0980);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v25 = v45;
    v26 = sub_3ED0(v45, static Logger.default);
    swift_beginAccess();
    v28 = v43;
    v27 = v44;
    (*(v44 + 16))(v43, v26, v25);
    v29 = sub_2CDFE0();
    v30 = sub_2CE680();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse error evaluating failure template", v31, 2u);
    }

    (*(v27 + 8))(v28, v25);
    v54 = v47;
    type metadata accessor for InternalRenderingFlowStrategy();
    sub_17ECF8(&qword_3530A8, type metadata accessor for InternalRenderingFlowStrategy, &unk_2D5678);
    return sub_2C9440();
  }

  else
  {
    v48 = a12;
    v49 = a10;
    v50 = a9;
    sub_14A58(v18, v24, &qword_34C6E8, &unk_2D0FF0);
    v33 = v42;
    (*(v12 + 16))(v42, v53, a11);
    sub_F3F4(v24, v22, &qword_34C6E8, &unk_2D0FF0);
    v34 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v35 = (v13 + *(v41 + 80) + v34) & ~*(v41 + 80);
    v36 = (v20 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = a11;
    v38 = v48;
    *(v37 + 24) = v48;
    (*(v12 + 32))(v37 + v34, v33);
    sub_14A58(v22, v37 + v35, &qword_34C6E8, &unk_2D0FF0);
    v39 = (v37 + v36);
    v40 = v52;
    *v39 = v51;
    v39[1] = v40;
    *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = v49;

    sub_17B084(v46, v50, sub_17E3CC, v37, a11, v38);

    return sub_30B8(v24, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_17A1AC(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = a8;
  v86 = a7;
  v82 = a6;
  v99 = a4;
  v100 = a5;
  v96 = a3;
  v85 = a2;
  v95 = a1;
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v8 - 8);
  v94 = &v79 - v9;
  v89 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v88 = *(v89 - 8);
  v10 = *(v88 + 64);
  v11 = __chkstk_darwin(v89);
  v93 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v92 = &v79 - v13;
  __chkstk_darwin(v12);
  v98 = &v79 - v14;
  v15 = sub_2C9B80();
  __chkstk_darwin(v15 - 8);
  v16 = sub_2CA630();
  v90 = *(v16 - 8);
  v91 = v16;
  v17 = __chkstk_darwin(v16);
  v84 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v18;
  __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v97 = sub_2CE000();
  v101 = *(v97 - 8);
  v21 = __chkstk_darwin(v97);
  v80 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v79 - v23;
  v25 = sub_20410(&unk_3530C0, &unk_2D0A40);
  __chkstk_darwin(v25 - 8);
  v27 = &v79 - v26;
  v28 = sub_2CD230();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v81 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = (&v79 - v32);
  v35 = v34;
  sub_F3F4(v95, v27, &unk_3530C0, &unk_2D0A40);
  if ((*(v29 + 48))(v27, 1, v35) == 1)
  {
    v36 = v96;
    sub_30B8(v27, &unk_3530C0, &unk_2D0A40);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = v97;
    v38 = sub_3ED0(v97, static Logger.default);
    swift_beginAccess();
    v101[2](v24, v38, v37);
    v39 = sub_2CDFE0();
    v40 = sub_2CE680();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse returning error output without snippet.", v41, 2u);
    }

    (v101[1])(v24, v37);
    (*(v87 + 40))(v102, v86);
    sub_35E0(v102, v102[3]);
    v42 = v98;
    sub_F3F4(v36, v98, &qword_34C6E8, &unk_2D0FF0);
    v43 = v89;
    v44 = *(v42 + *(v89 + 48));
    v45 = sub_2CA130();
    v46 = *(v45 - 8);
    v47 = v92;
    (*(v46 + 16))(v92, v42, v45);
    *(v47 + *(v43 + 48)) = v44;
    v48 = v93;
    sub_F3F4(v47, v93, &qword_34C6E8, &unk_2D0FF0);
    v49 = *(v48 + *(v43 + 48));
    v50 = sub_2CA000();
    v51 = v94;
    (*(*(v50 - 8) + 56))(v94, 1, 1, v50);
    v52 = v44;
    sub_1C3480(v48, v49, v51, _swiftEmptyArrayStorage, v99, v100);

    sub_30B8(v51, &unk_353020, &unk_2D0970);
    sub_30B8(v47, &qword_34C6E8, &unk_2D0FF0);
    v53 = *(v46 + 8);
    v53(v48, v45);
    v53(v42, v45);
    return sub_306C(v102);
  }

  else
  {
    v93 = v29;
    v94 = v10;
    v55 = *(v29 + 32);
    v56 = v35;
    v92 = (v29 + 32);
    v89 = v55;
    v55(v33, v27, v35);
    v57 = sub_2C9B20();
    __chkstk_darwin(v57);
    v58 = v96;
    *(&v79 - 2) = v82;
    *(&v79 - 1) = v58;
    v95 = v20;
    sub_2CA560();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v59 = v97;
    v60 = sub_3ED0(v97, static Logger.default);
    swift_beginAccess();
    v61 = v80;
    v101[2](v80, v60, v59);
    v62 = sub_2CDFE0();
    v63 = sub_2CE680();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_0, v62, v63, "AppResolutionCommonStrategy#makeAppResolutionUnsuccessfulResponse returning error output with a button snippet.", v64, 2u);
    }

    (v101[1])(v61, v59);
    v65 = v93;
    v66 = *(v93 + 16);
    v67 = v81;
    v79 = v56;
    v66(v81, v33, v56);
    v68 = v98;
    sub_F3F4(v58, v98, &qword_34C6E8, &unk_2D0FF0);
    v70 = v90;
    v69 = v91;
    v71 = *(v90 + 16);
    v101 = v33;
    v72 = v84;
    v71(v84, v95, v91);
    v73 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v74 = (v30 + *(v88 + 80) + v73) & ~*(v88 + 80);
    v75 = &v94[*(v70 + 80) + v74] & ~*(v70 + 80);
    v76 = swift_allocObject();
    v77 = v67;
    v78 = v79;
    (v89)(v76 + v73, v77, v79);
    sub_14A58(v68, v76 + v74, &qword_34C6E8, &unk_2D0FF0);
    (*(v70 + 32))(v76 + v75, v72, v69);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    (*(v70 + 8))(v95, v69);
    return (*(v65 + 8))(v101, v78);
  }
}

uint64_t sub_17AC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = sub_2CB260();
  __chkstk_darwin(v8 - 8);
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a3, v7, &qword_34C6E8, &unk_2D0FF0);
  v9 = *&v7[*(v5 + 56)];
  v10 = [v9 catId];

  sub_2CE270();
  sub_2CA590();
  v11 = sub_2CA130();
  return (*(*(v11 - 8) + 8))(v7, v11);
}

uint64_t sub_17ADD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_17AE7C, 0, 0);
}

uint64_t sub_17AE7C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  sub_2CA080();
  swift_allocObject();
  v0[13] = sub_2CA070();
  v5 = sub_2CD230();
  v0[5] = v5;
  v0[6] = sub_17ECF8(&qword_34CC78, &type metadata accessor for SiriAudioSnippets, &protocol conformance descriptor for SiriAudioSnippets);
  v6 = sub_F390(v0 + 2);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  sub_20410(&unk_351900, &unk_2D0960);
  v7 = swift_allocObject();
  v0[14] = v7;
  *(v7 + 16) = xmmword_2D0770;
  sub_F3F4(v3, v1, &qword_34C6E8, &unk_2D0FF0);
  *(v7 + 32) = *(v1 + *(v2 + 48));
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v1, v8);
  v13 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_2D160;
  v10 = v0[10];
  v11 = v0[7];

  return v13(v11, v0 + 2, v7, v10);
}

uint64_t sub_17B084(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v28 = a5;
  v29 = a3;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);

  v17 = sub_2CDFE0();
  v18 = sub_2CE680();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = a6;
    v22 = a4;
    v23 = v21;
    v32[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_3F08(a1, a2, v32);
    _os_log_impl(&dword_0, v17, v18, "AppResolutionCommonStrategy#unsupportedValueSnippet for app: %{public}s", v20, 0xCu);
    sub_306C(v23);
    a4 = v22;
    a6 = v27;
  }

  (*(v13 + 8))(v15, v12);
  (*(a6 + 24))(v32, v28, a6);
  sub_35E0(v32, v32[3]);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = v29;
  v24[5] = a4;

  sub_2CBC50();

  sub_30B8(v30, &qword_34E970, &qword_2D2910);
  return sub_306C(v32);
}

uint64_t sub_17B390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v40 = a3;
  v41 = a4;
  v39[1] = a1;
  v7 = sub_2CE000();
  v39[0] = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CD2E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CD2C0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20410(&unk_3530C0, &unk_2D0A40);
  __chkstk_darwin(v18 - 8);
  v20 = v39 - v19;
  if (a2)
  {
    v21 = objc_allocWithZone(SAAppsLaunchApp);

    v22 = [v21 init];
    v23 = sub_2CE260();
    [v22 setLaunchId:v23];

    (*(v15 + 104))(v17, enum case for SiriAudioActionButtonSnippetRole.standard(_:), v14);
    (*(v11 + 104))(v13, enum case for SiriAudioActionButtonSnippetStyle.button(_:), v10);
    v24 = v22;
    sub_2CD2D0();
    v25 = enum case for SiriAudioSnippets.actionButton(_:);
    v26 = sub_2CD230();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v20, v25, v26);
    (*(v27 + 56))(v20, 0, 1, v26);
    v42(v20);
  }

  else
  {
    v29 = v41;
    v28 = v42;
    v30 = v39[0];
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v31 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v30 + 16))(v9, v31, v7);

    v32 = sub_2CDFE0();
    v33 = sub_2CE680();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v29;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_3F08(v40, v34, &v44);
      _os_log_impl(&dword_0, v32, v33, "AppResolutionCommonStrategy#unsupportedValueSnippet error resolving display name for app: %{public}s", v35, 0xCu);
      sub_306C(v36);
    }

    (*(v30 + 8))(v9, v7);
    v37 = sub_2CD230();
    (*(*(v37 - 8) + 56))(v20, 1, 1, v37);
    v28(v20);
  }

  return sub_30B8(v20, &unk_3530C0, &unk_2D0A40);
}

uint64_t sub_17B8B4@<X0>(__int128 *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v7 = a1[3];
  v14 = a1[2];
  v15 = v7;
  v16 = *(a1 + 8);
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  v9 = sub_17B9B4(&v12, a3, a4);
  swift_unknownObjectRetain();
  sub_2CE3F0();
  if (*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a2 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_2CE430();
  }

  sub_2CE460();
  v10 = sub_17ED64(v9, v13, *(&v13 + 1), v12, *(&v12 + 1));
  result = swift_unknownObjectRelease();
  *a5 = v10;
  return result;
}

id sub_17B9B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[1];
  v34 = *a1;
  v35 = v10;
  v36 = 3;
  v11 = sub_235B38();
  if (v11)
  {
    v12 = *(a3 + 72);
    v13 = v11;
    v12(&v29, a2, a3);
    sub_35E0(&v29, *(&v30 + 1));
    sub_2CA160();
    if (v14)
    {
      v15 = sub_2CE260();
    }

    else
    {
      v15 = 0;
    }

    sub_306C(&v29);
    [v13 setRefId:v15];
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v16 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v9, v16, v6);
    sub_333FC(a1, &v29);
    v17 = sub_2CDFE0();
    v18 = sub_2CE680();
    sub_9AA00(a1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      v21 = *(a1 + 3);
      v31 = *(a1 + 2);
      v32 = v21;
      v33 = a1[8];
      v22 = *(a1 + 1);
      v29 = *a1;
      v30 = v22;
      sub_333FC(a1, v27);
      v23 = sub_2CE2A0();
      v25 = sub_3F08(v23, v24, &v28);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_0, v17, v18, "AppResolutionCommonStrategy#generateCommandForAppConcept cannot construct rske for app: %s", v19, 0xCu);
      sub_306C(v20);
    }

    (*(v7 + 8))(v9, v6);
    return [objc_allocWithZone(SASendCommands) init];
  }

  return v13;
}

uint64_t sub_17BCE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v9 = *(a1 + 64);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  result = sub_17F1E0(v8);
  if (result)
  {

    sub_2CE3F0();
    if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_2CE430();
    }

    sub_2CE460();
  }

  return result;
}

unint64_t sub_17BDC0()
{
  result = qword_353000;
  if (!qword_353000)
  {
    sub_2DB30(&qword_353008, &qword_2D5670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353000);
  }

  return result;
}

uint64_t sub_17BFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for InternalRenderingFlowStrategy();

  return AppResolutionFlowStrategy.makeAppResolutionSuccessfulResponse(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_17C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for InternalRenderingFlowStrategy();

  return sub_2C9440();
}

uint64_t sub_17C0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for InternalRenderingFlowStrategy();

  return AppResolutionFlowStrategy.makeErrorOutput(intent:error:completion:)(a1, a2, a3, a4, v11, a6);
}

void sub_17C140(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_17D0F8(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = v2 + 32;
  v4[1] = v3;
  sub_17C1AC(v4);
  *a1 = v2;
}

void sub_17C1AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_2CEE60(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_2CE450();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_17C444(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_17C2A4(0, v2, 1, a1);
  }
}

uint64_t sub_17C2A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    sub_17E984();
    v8 = (v7 + 72 * v4);
    v9 = v6 - v4 + 1;
LABEL_5:
    v10 = v9;
    for (i = v8; ; i = (i - 72))
    {
      result = sub_2CE240();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v8 = (v8 + 72);
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v12 = i - 72;
      v16 = i[1];
      v17 = i[2];
      v18 = i[3];
      v19 = *(i + 8);
      v15 = *i;
      v13 = *(i - 24);
      i[2] = *(i - 40);
      i[3] = v13;
      *(i + 8) = *(i - 1);
      v14 = *(i - 56);
      *i = *(i - 72);
      i[1] = v14;
      *v12 = v15;
      *(v12 + 64) = v19;
      *(v12 + 32) = v17;
      *(v12 + 48) = v18;
      *(v12 + 16) = v16;
      if (!v10)
      {
        goto LABEL_4;
      }

      ++v10;
    }

    __break(1u);
  }

  return result;
}

void sub_17C444(char **a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v7 = v4;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_92:
    v6 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    v5 = a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v10 = sub_17D0D0(v10);
    }

    v79 = *(v10 + 2);
    if (v79 >= 2)
    {
      do
      {
        v80 = *v5;
        if (!*v5)
        {
          goto LABEL_129;
        }

        v5 = *&v10[16 * v79];
        v81 = *&v10[16 * v79 + 24];
        sub_17CC90((v80 + 72 * v5), (v80 + 72 * *&v10[16 * v79 + 16]), (v80 + 72 * v81), v7);
        if (v6)
        {
          break;
        }

        if (v81 < v5)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_17D0D0(v10);
        }

        if (v79 - 2 >= *(v10 + 2))
        {
          goto LABEL_119;
        }

        v82 = &v10[16 * v79];
        *v82 = v5;
        *(v82 + 1) = v81;
        sub_17D044(v79 - 1);
        v79 = *(v10 + 2);
        v5 = a3;
      }

      while (v79 > 1);
    }

LABEL_102:

    return;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    if (v9 + 1 >= v8)
    {
      v15 = v9 + 1;
    }

    else
    {
      v5 = *a3;
      sub_17E984();
      v6 = sub_2CE240();
      v13 = (v11 + 2);
      if (v11 + 2 >= v8)
      {
        v15 = v11 + 2;
      }

      else
      {
        v14 = v5 + 72 * v11 + 144;
        while (1)
        {
          v5 = v13;
          if ((v6 ^ sub_2CE240()))
          {
            break;
          }

          v13 = (v5 + 1);
          v14 += 72;
          if (v8 == v5 + 1)
          {
            v12 = v5;
            v15 = v8;
            goto LABEL_14;
          }
        }

        v12 = (v5 - 1);
        v15 = v5;
      }

LABEL_14:
      v16 = a3;
      if ((v6 & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v15 < v11)
      {
        goto LABEL_122;
      }

      if (v11 > v12)
      {
        goto LABEL_17;
      }

      v6 = v7;
      v29 = 72 * v15 - 72;
      v5 = 72 * v11;
      v30 = v15;
      v31 = v11;
      do
      {
        if (v31 != --v30)
        {
          v33 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v32 = v33 + v29;
          v93 = *(v33 + v5 + 16);
          v95 = *(v33 + v5 + 32);
          v97 = *(v33 + v5 + 48);
          v99 = *(v33 + v5 + 64);
          v91 = *(v33 + v5);
          memmove(v33 + v5, v33 + v29, 0x48uLL);
          *(v32 + 1) = v93;
          *(v32 + 2) = v95;
          *(v32 + 3) = v97;
          *(v32 + 8) = v99;
          *v32 = v91;
        }

        ++v31;
        v29 -= 72;
        v5 += 72;
      }

      while (v31 < v30);
      v7 = v6;
    }

    v16 = a3;
LABEL_17:
    v17 = v16[1];
    if (v15 < v17)
    {
      if (__OFSUB__(v15, v11))
      {
        goto LABEL_121;
      }

      if (v15 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_123;
        }

        if (v11 + a4 >= v17)
        {
          v5 = v16[1];
        }

        else
        {
          v5 = v11 + a4;
        }

        if (v5 < v11)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v15 != v5)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v15 < v11)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_B9248(0, *(v10 + 2) + 1, 1, v10);
    }

    v35 = *(v10 + 2);
    v34 = *(v10 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v10 = sub_B9248((v34 > 1), v35 + 1, 1, v10);
    }

    *(v10 + 2) = v36;
    v37 = &v10[16 * v35];
    *(v37 + 4) = v11;
    *(v37 + 5) = v15;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    v88 = v15;
    if (v35)
    {
      while (1)
      {
        v38 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v10 + 4);
          v40 = *(v10 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_61:
          if (v42)
          {
            goto LABEL_109;
          }

          v55 = &v10[16 * v36];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_112;
          }

          v61 = &v10[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_116;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v36 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v65 = &v10[16 * v36];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_75:
        if (v60)
        {
          goto LABEL_111;
        }

        v68 = &v10[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_82:
        v76 = v38 - 1;
        if (v38 - 1 >= v36)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v16)
        {
          goto LABEL_127;
        }

        v77 = *&v10[16 * v76 + 32];
        v5 = *&v10[16 * v38 + 40];
        sub_17CC90((*v16 + 72 * v77), (*v16 + 72 * *&v10[16 * v38 + 32]), (*v16 + 72 * v5), v6);
        if (v7)
        {
          goto LABEL_102;
        }

        if (v5 < v77)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_17D0D0(v10);
        }

        if (v76 >= *(v10 + 2))
        {
          goto LABEL_106;
        }

        v78 = &v10[16 * v76];
        *(v78 + 4) = v77;
        *(v78 + 5) = v5;
        sub_17D044(v38);
        v36 = *(v10 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v10[16 * v36 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_107;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_108;
      }

      v50 = &v10[16 * v36];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_110;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_113;
      }

      if (v54 >= v46)
      {
        v72 = &v10[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_117;
        }

        if (v41 < v75)
        {
          v38 = v36 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    v8 = v16[1];
    v9 = v88;
    if (v88 >= v8)
    {
      goto LABEL_92;
    }
  }

  v84 = v7;
  v18 = v15;
  v19 = *v16;
  v6 = sub_17E984();
  v20 = v19 + 72 * v18;
  v21 = v11;
  v22 = v18;
  v83 = v21;
  v23 = v21 - v18 + 1;
  v87 = v5;
LABEL_28:
  v24 = v23;
  for (i = v20; ; i = (i - 72))
  {
    if ((sub_2CE240() & 1) == 0)
    {
LABEL_27:
      v20 += 72;
      --v23;
      v22 = (v22 + 1);
      v5 = v87;
      if (v22 != v87)
      {
        goto LABEL_28;
      }

      v15 = v87;
      v11 = v83;
      v7 = v84;
      v16 = a3;
      goto LABEL_41;
    }

    if (!v19)
    {
      break;
    }

    v26 = i - 72;
    v92 = i[1];
    v94 = i[2];
    v96 = i[3];
    v98 = *(i + 8);
    v90 = *i;
    v27 = *(i - 24);
    i[2] = *(i - 40);
    i[3] = v27;
    *(i + 8) = *(i - 1);
    v28 = *(i - 56);
    *i = *(i - 72);
    i[1] = v28;
    *v26 = v90;
    *(v26 + 64) = v98;
    *(v26 + 32) = v94;
    *(v26 + 48) = v96;
    *(v26 + 16) = v92;
    if (!v24)
    {
      goto LABEL_27;
    }

    ++v24;
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

uint64_t sub_17CC90(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 72;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 72;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[72 * v9] <= __dst)
    {
      memmove(__dst, __src, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 < 72 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_40;
    }

    sub_17E984();
    while ((sub_2CE240() & 1) != 0)
    {
      v13 = v6;
      v14 = v7 == v6;
      v6 += 72;
      if (!v14)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7 += 72;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_40;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 72;
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(v7, v13, 0x48uLL);
    goto LABEL_14;
  }

  if (__dst != a2 || &a2[72 * v11] <= __dst)
  {
    memmove(__dst, a2, 72 * v11);
  }

  v12 = &v4[72 * v11];
  if (v10 >= 72 && v6 > v7)
  {
    sub_17E984();
    do
    {
      v15 = v6 - 72;
      v5 -= 72;
      v16 = v12;
      while (1)
      {
        v12 = v16;
        v17 = v5 + 72;
        if (sub_2CE240())
        {
          break;
        }

        v16 -= 72;
        if (v17 < v12 || v5 >= v12 || v17 != v12)
        {
          memmove(v5, v12 - 72, 0x48uLL);
        }

        v5 -= 72;
        if (v16 <= v4)
        {
          v12 -= 72;
          goto LABEL_40;
        }
      }

      if (v17 < v6 || v5 >= v6 || v17 != v6)
      {
        memmove(v5, v6 - 72, 0x48uLL);
      }

      if (v16 <= v4)
      {
        break;
      }

      v6 -= 72;
    }

    while (v15 > v7);
    v6 = v15;
  }

LABEL_40:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_17D044(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_17D0D0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_17D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  v9 = *(a4 - 8);
  __chkstk_darwin(a1);
  v27 = v10;
  v29 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = a5;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "AppResolutionCommonStrategy#makePromptForConfirmation...", v18, 2u);
    a5 = v26;
  }

  (*(v12 + 8))(v14, v11);
  v19 = v28;
  (*(a5 + 32))(a4, a5);
  v20 = v29;
  (*(v9 + 16))(v29, v19, a4);
  v21 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v22 = (v27 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = v30;
  *(v23 + 40) = a3;
  (*(v9 + 32))(v23 + v21, v20, a4);
  *(v23 + v22) = a1;

  sub_2872F4(v24, sub_17D44C, v23);
}

uint64_t sub_17D4B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  v7 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1707CC(a1, v1 + v5, v1 + v8, v10, v11, v3, v4);
}

uint64_t sub_17D5D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24C84;

  return sub_1715F4(a1, v1 + v6, v10, v1 + v9);
}

unint64_t sub_17D750()
{
  result = qword_353060;
  if (!qword_353060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353060);
  }

  return result;
}

unint64_t sub_17D7A4()
{
  result = qword_353068;
  if (!qword_353068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353068);
  }

  return result;
}

unint64_t sub_17D7F8()
{
  result = qword_353078;
  if (!qword_353078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353078);
  }

  return result;
}

uint64_t sub_17D84C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_2CD040() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + *(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v9 = (*(*(v3 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_179C50(a1, v1[4], v1[5], v1 + v6, *(v1 + v7), *(v1 + v7 + 8), v1 + v8, *(v1 + v9), *(v1 + v9 + 8), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

uint64_t sub_17D98C()
{
  v1 = *(v0 + 16);
  v2 = sub_2CD040();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 - 8);
  v6 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);

  (*(v3 + 8))(v0 + v4, v2);

  (*(v5 + 8))(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_17DB0C(void (*a1)(char *, void *, uint64_t, void *, uint64_t, uint64_t, uint64_t), void (*a2)(char *, void *, uint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(sub_2CD040() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_17966C(a1, v2[4], v2[5], v2 + v8, *(v2 + v9), *(v2 + v9 + 8), v2 + ((v9 + *(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80)), v5, v6, a2);
}

uint64_t sub_17DC04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v80 = a5;
  v81 = a6;
  v10 = sub_2CD230();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v76 = v11;
  v77 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C9B80();
  __chkstk_darwin(v12 - 8);
  v72 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2CA630();
  v73 = *(v84 - 8);
  v14 = __chkstk_darwin(v84);
  v74 = v15;
  v75 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v83 = &v62 - v16;
  v67 = sub_2CB260();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v23 = v22 - 8;
  v69 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v70 = v25;
  v71 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v62 - v26;
  v28 = sub_2CA130();
  (*(*(v28 - 8) + 16))(v27, a2, v28);
  v29 = *(v23 + 56);
  v82 = v27;
  *&v27[v29] = a3;
  v30 = a3;
  v31 = sub_2CB460();
  if (!v31)
  {
    sub_2CB180();
    v31 = sub_2CB170();
  }

  v32 = v31;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v33 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  (*(v19 + 16))(v21, v33, v18);

  v34 = sub_2CDFE0();
  v35 = v21;
  v36 = sub_2CE660();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v64 = a1;
    v39 = v38;
    v85 = v38;
    *v37 = 136315138;
    sub_2CB130();
    v63 = v35;
    v40 = v65;
    sub_2CD3C0();

    v41 = sub_2CB200();
    v62 = v18;
    v42 = v32;
    v43 = a4;
    v45 = v44;
    (*(v66 + 8))(v40, v67);
    v46 = sub_3F08(v41, v45, &v85);
    a4 = v43;
    v32 = v42;

    *(v37 + 4) = v46;
    _os_log_impl(&dword_0, v34, v36, "AppResolutionCommonStrategy#clarificationOutput with responseMode = %s", v37, 0xCu);
    sub_306C(v39);
    a1 = v64;

    (*(v19 + 8))(v63, v62);
  }

  else
  {

    (*(v19 + 8))(v35, v18);
  }

  v68 = v32;
  v47 = sub_2C9B40();
  __chkstk_darwin(v47);
  *(&v62 - 4) = a4;
  *(&v62 - 3) = v32;
  v48 = v82;
  v49 = v83;
  *(&v62 - 2) = v82;
  sub_2CA560();
  v51 = v77;
  v50 = v78;
  v52 = v79;
  (*(v78 + 16))(v77, a1, v79);
  v53 = v71;
  sub_F3F4(v48, v71, &qword_34C6E8, &unk_2D0FF0);
  v54 = v73;
  v55 = v75;
  (*(v73 + 16))(v75, v49, v84);
  v56 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v57 = (v76 + *(v69 + 80) + v56) & ~*(v69 + 80);
  v58 = (v70 + *(v54 + 80) + v57) & ~*(v54 + 80);
  v59 = swift_allocObject();
  (*(v50 + 32))(v59 + v56, v51, v52);
  sub_14A58(v53, v59 + v57, &qword_34C6E8, &unk_2D0FF0);
  v60 = v84;
  (*(v54 + 32))(v59 + v58, v55, v84);
  sub_20410(&unk_353030, &unk_2D1450);
  sub_2CE4F0();

  (*(v54 + 8))(v83, v60);
  return sub_30B8(v82, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_17E3CC(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  v7 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1 + v9;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v1 + v10);

  return sub_17A1AC(a1, v1 + v5, v1 + v8, v12, v13, v14, v3, v4);
}

uint64_t sub_17E508(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_17ADD8(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_17E6CC(char *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = (*(*(v3 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_20410(&qword_3530D0, &qword_2D5728) - 8);
  v8 = v1[4];
  v9 = v1[5];
  v10 = *(v1 + v6);
  v11 = v1 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_173C74(a1, v8, v9, v1 + v5, v10, v11, v3, v4);
}

uint64_t sub_17E7D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24C84;

  return sub_1753F0(a1, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_17E984()
{
  result = qword_3530E8;
  if (!qword_3530E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3530E8);
  }

  return result;
}

uint64_t sub_17E9D8()
{
  v1 = *(v0 + 16);
  v2 = sub_20410(&qword_3530D0, &qword_2D5728);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v2);
  (*(v5 + 8))(v0 + v6, v1);

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_17EB30(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(sub_20410(&qword_3530D0, &qword_2D5728) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = (*(*(v4 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v9);
  v11 = (v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return a2(a1, v2 + v7, v2 + v8, v10, v12, v13, v4, v5);
}

uint64_t sub_17EC80(uint64_t a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 48) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_176044(a1, *(v1 + 32), *(v1 + 40), v1 + v2, *(v1 + v3), *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_17ECF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_17ED64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a2;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  swift_unknownObjectRetain();

  v13 = sub_2CDFE0();
  v14 = sub_2CE660();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = a3;
    v16 = v15;
    v32 = swift_slowAlloc();
    v36 = a1;
    v37 = v32;
    *v16 = 136315394;
    swift_unknownObjectRetain();
    sub_20410(&unk_351990, &unk_2D49A8);
    v17 = sub_2CE2A0();
    v33 = a1;
    v19 = a5;
    v20 = sub_3F08(v17, v18, &v37);

    *(v16 + 4) = v20;
    a5 = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_3F08(v35, v34, &v37);
    _os_log_impl(&dword_0, v13, v14, "AppResolutionCommonStrategy#createRowCardSectionWithCommand Creating RowCardSection with command %s title %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  (*(v9 + 8))(v11, v8);
  v21 = [objc_allocWithZone(SFRowCardSection) init];
  v22 = sub_2CE260();
  v23 = [objc_opt_self() textWithString:v22];

  [v21 setLeadingText:v23];
  sub_20410(&unk_351900, &unk_2D0960);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0770;
  v25 = v21;
  *(v24 + 32) = sub_2C9C60();
  sub_334A0(0, &qword_3519E0, SFAbstractCommand_ptr);
  isa = sub_2CE400().super.isa;

  [v25 setCommands:isa];

  if (a5)
  {
    v27 = [objc_allocWithZone(SFAppIconImage) init];
    v28 = sub_2CE260();
    [v27 setBundleIdentifier:v28];

    v29 = v27;
    [v29 setSize:{29.0, 29.0}];
    [v25 setImage:v29];
  }

  return v25;
}

uint64_t sub_17F1E0(uint64_t *a1)
{
  sub_2C99A0();
  sub_2C9970();
  sub_2C9980();

  sub_2C9990();
  sub_2CE3F0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_2CE430();
  }

  sub_2CE460();
  v3 = *a1;
  v2 = a1[1];
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x64496D657469;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v5 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  sub_237DEC(0xD000000000000034, 0x80000000002DA910, v5);

  sub_2C9930();
  swift_allocObject();
  v6 = sub_2C9910();

  return v6;
}

unint64_t sub_17F3C4()
{
  result = qword_353130;
  if (!qword_353130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_353130);
  }

  return result;
}

void *sub_17F430(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    sub_2DBFC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    sub_B96A0();
    v4 = a1 + 40;
    do
    {
      v5 = sub_2CEBC0();
      v13 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        v12 = v5;
        v10 = v6;
        sub_2DBFC((v7 > 1), v8 + 1, 1);
        v6 = v10;
        v5 = v12;
        v2 = v13;
      }

      v2[2] = v8 + 1;
      v9 = &v2[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_17F540(uint64_t a1, uint64_t a2)
{
  v3 = sub_2CD4E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_186D70(&qword_353140, &type metadata accessor for CommonAudio.Modifier, &protocol conformance descriptor for CommonAudio.Modifier), v7 = sub_2CE220(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_186D70(&qword_353148, &type metadata accessor for CommonAudio.Modifier, &protocol conformance descriptor for CommonAudio.Modifier);
      v15 = sub_2CE250();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_17F758(uint64_t a1, uint64_t a2)
{
  v3 = sub_2CD500();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_186D70(&qword_353150, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute), v7 = sub_2CE220(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_186D70(&qword_353158, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute);
      v15 = sub_2CE250();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_17F970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2CEF50();
  sub_2CE310();
  v6 = sub_2CEF80();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2CEEA0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_17FA80(uint64_t a1, unsigned int *a2)
{
  v3 = sub_2CAE60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34CFD0, &qword_2D1030);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_20410(&qword_34CFC0, &qword_2D1020);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - v14;
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  if (sub_2CAD70())
  {
    sub_2CAE50();
  }

  else
  {
    (*(v4 + 56))(v17, 1, 1, v3);
  }

  (*(v4 + 104))(v15, *a2, v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v18 = *(v6 + 48);
  sub_F3F4(v17, v8, &qword_34CFC0, &qword_2D1020);
  sub_F3F4(v15, &v8[v18], &qword_34CFC0, &qword_2D1020);
  v19 = *(v4 + 48);
  if (v19(v8, 1, v3) != 1)
  {
    sub_F3F4(v8, v12, &qword_34CFC0, &qword_2D1020);
    if (v19(&v8[v18], 1, v3) != 1)
    {
      v21 = v25;
      (*(v4 + 32))(v25, &v8[v18], v3);
      sub_186D70(&qword_34CFE8, &type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues, &protocol conformance descriptor for UsoEntity_common_MediaItemType.DefinedValues);
      v20 = sub_2CE250();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_30B8(v15, &qword_34CFC0, &qword_2D1020);
      sub_30B8(v17, &qword_34CFC0, &qword_2D1020);
      v22(v12, v3);
      sub_30B8(v8, &qword_34CFC0, &qword_2D1020);
      return v20 & 1;
    }

    sub_30B8(v15, &qword_34CFC0, &qword_2D1020);
    sub_30B8(v17, &qword_34CFC0, &qword_2D1020);
    (*(v4 + 8))(v12, v3);
    goto LABEL_9;
  }

  sub_30B8(v15, &qword_34CFC0, &qword_2D1020);
  sub_30B8(v17, &qword_34CFC0, &qword_2D1020);
  if (v19(&v8[v18], 1, v3) != 1)
  {
LABEL_9:
    sub_30B8(v8, &qword_34CFD0, &qword_2D1030);
    v20 = 0;
    return v20 & 1;
  }

  sub_30B8(v8, &qword_34CFC0, &qword_2D1020);
  v20 = 1;
  return v20 & 1;
}

id sub_17FF0C(uint64_t a1, void (*a2)(uint64_t), _BYTE *a3, uint64_t a4, id a5)
{
  v771 = a3;
  v766 = a2;
  v690 = sub_2CD4E0();
  v689 = *(v690 - 8);
  __chkstk_darwin(v690);
  v688 = &v663[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v718 = sub_2CD560();
  v716 = *(v718 - 8);
  v9 = __chkstk_darwin(v718);
  v687 = &v663[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v682 = &v663[-v11];
  v685 = sub_20410(&qword_34D680, &qword_2D1580);
  __chkstk_darwin(v685);
  v686 = &v663[-v12];
  v673 = sub_20410(&qword_34D688, &qword_2D1588);
  __chkstk_darwin(v673);
  v675 = &v663[-v13];
  v739 = sub_2CD4C0();
  v760 = *(v739 - 8);
  __chkstk_darwin(v739);
  v701 = &v663[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v732 = sub_2CD4A0();
  v722 = *(v732 - 8);
  __chkstk_darwin(v732);
  v692 = &v663[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v715 = sub_20410(&qword_34D690, &qword_2D1590);
  __chkstk_darwin(v715);
  v731 = &v663[-v16];
  v17 = sub_20410(&qword_34D698, &qword_2D1598);
  v18 = __chkstk_darwin(v17 - 8);
  v698 = &v663[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v750 = &v663[-v21];
  __chkstk_darwin(v20);
  v751 = &v663[-v22];
  v759 = sub_2CE000();
  v758 = *(v759 - 8);
  __chkstk_darwin(v759);
  v757 = &v663[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_20410(&unk_353080, &qword_2D1460);
  __chkstk_darwin(v24 - 8);
  v711 = &v663[-v25];
  v710 = sub_2CD5D0();
  v709 = *(v710 - 8);
  __chkstk_darwin(v710);
  v708 = &v663[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_20410(&qword_34D6A0, &unk_2D3490);
  v28 = __chkstk_darwin(v27 - 8);
  v695 = &v663[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __chkstk_darwin(v28);
  v683 = &v663[-v31];
  v32 = __chkstk_darwin(v30);
  v694 = &v663[-v33];
  __chkstk_darwin(v32);
  v765 = &v663[-v34];
  v35 = sub_2CD540();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v753 = &v663[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v783 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v38 = __chkstk_darwin(v783);
  v763 = &v663[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = __chkstk_darwin(v38);
  v706 = &v663[-v41];
  v42 = __chkstk_darwin(v40);
  v705 = &v663[-v43];
  v44 = __chkstk_darwin(v42);
  v721 = &v663[-v45];
  v46 = __chkstk_darwin(v44);
  v725 = &v663[-v47];
  v48 = __chkstk_darwin(v46);
  v720 = &v663[-v49];
  v50 = __chkstk_darwin(v48);
  v761 = &v663[-v51];
  __chkstk_darwin(v50);
  v777 = &v663[-v52];
  v772 = sub_2CD500();
  v781 = *(v772 - 8);
  __chkstk_darwin(v772);
  v767 = &v663[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v752 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v54 = __chkstk_darwin(v752);
  v730 = &v663[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = __chkstk_darwin(v54);
  v680 = &v663[-v57];
  v58 = __chkstk_darwin(v56);
  v702 = &v663[-v59];
  v60 = __chkstk_darwin(v58);
  v717 = &v663[-v61];
  __chkstk_darwin(v60);
  v773 = &v663[-v62];
  v63 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v64 = __chkstk_darwin(v63 - 8);
  v693 = &v663[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = __chkstk_darwin(v64);
  v748 = &v663[-v67];
  v68 = __chkstk_darwin(v66);
  v727 = &v663[-v69];
  v70 = __chkstk_darwin(v68);
  v697 = &v663[-v71];
  v72 = __chkstk_darwin(v70);
  v696 = &v663[-v73];
  v74 = __chkstk_darwin(v72);
  v684 = &v663[-v75];
  v76 = __chkstk_darwin(v74);
  v676 = &v663[-v77];
  v78 = __chkstk_darwin(v76);
  v679 = &v663[-v79];
  v80 = __chkstk_darwin(v78);
  v678 = &v663[-v81];
  v82 = __chkstk_darwin(v80);
  v742 = &v663[-v83];
  v84 = __chkstk_darwin(v82);
  v743 = &v663[-v85];
  v86 = __chkstk_darwin(v84);
  v744 = &v663[-v87];
  v88 = __chkstk_darwin(v86);
  v745 = &v663[-v89];
  v90 = __chkstk_darwin(v88);
  v782 = &v663[-v91];
  __chkstk_darwin(v90);
  v764 = &v663[-v92];
  v737 = sub_2CD570();
  v738 = *(v737 - 8);
  v93 = __chkstk_darwin(v737);
  v668 = &v663[-((v94 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v93);
  v770 = &v663[-v95];
  v96 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  v97 = __chkstk_darwin(v96 - 8);
  v669 = &v663[-((v98 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = __chkstk_darwin(v97);
  v674 = &v663[-v100];
  v101 = __chkstk_darwin(v99);
  v672 = &v663[-v102];
  __chkstk_darwin(v101);
  v775 = &v663[-v103];
  v104 = sub_20410(&qword_34D6C8, &unk_2D15C0);
  __chkstk_darwin(v104 - 8);
  v106 = &v663[-v105];
  v107 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v108 = __chkstk_darwin(v107 - 8);
  v699 = &v663[-((v109 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = __chkstk_darwin(v108);
  v681 = &v663[-v111];
  v112 = __chkstk_darwin(v110);
  v677 = &v663[-v113];
  v114 = __chkstk_darwin(v112);
  v700 = &v663[-v115];
  v116 = __chkstk_darwin(v114);
  v691 = &v663[-v117];
  v118 = __chkstk_darwin(v116);
  v714 = &v663[-v119];
  v120 = __chkstk_darwin(v118);
  v749 = &v663[-v121];
  v122 = __chkstk_darwin(v120);
  v728 = &v663[-v123];
  v124 = __chkstk_darwin(v122);
  v703 = &v663[-v125];
  v126 = __chkstk_darwin(v124);
  v704 = &v663[-v127];
  v128 = __chkstk_darwin(v126);
  v726 = &v663[-v129];
  v130 = __chkstk_darwin(v128);
  v746 = &v663[-v131];
  v132 = __chkstk_darwin(v130);
  v747 = &v663[-v133];
  v134 = __chkstk_darwin(v132);
  v741 = &v663[-v135];
  v136 = __chkstk_darwin(v134);
  v723 = &v663[-v137];
  v138 = __chkstk_darwin(v136);
  v713 = &v663[-v139];
  v140 = __chkstk_darwin(v138);
  v768 = &v663[-v141];
  v142 = __chkstk_darwin(v140);
  v755 = &v663[-v143];
  v144 = __chkstk_darwin(v142);
  v740 = &v663[-v145];
  v146 = __chkstk_darwin(v144);
  v719 = &v663[-v147];
  v148 = __chkstk_darwin(v146);
  v712 = &v663[-v149];
  v150 = __chkstk_darwin(v148);
  v762 = &v663[-v151];
  v152 = __chkstk_darwin(v150);
  v754 = &v663[-v153];
  v154 = __chkstk_darwin(v152);
  v156 = &v663[-v155];
  v157 = __chkstk_darwin(v154);
  v778 = &v663[-v158];
  v159 = __chkstk_darwin(v157);
  v779 = &v663[-v160];
  v161 = __chkstk_darwin(v159);
  v163 = &v663[-v162];
  v164 = __chkstk_darwin(v161);
  v166 = &v663[-v165];
  __chkstk_darwin(v164);
  v168 = &v663[-((v167 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v736 = v169;
  (*(v169 + 16))(v168, a1, a4);
  v769 = sub_2CD770();
  v780 = v170;
  v789 = a4;
  sub_2CD780();
  v171 = *(v36 + 48);
  v172 = v171(v166, 1, v35);
  v787 = v168;
  v774 = v36;
  v784 = v36 + 48;
  v785 = v171;
  *&v788 = v35;
  if (v172 == 1)
  {
    sub_30B8(v166, &qword_34D6D0, qword_2D34A0);
    sub_2CD8D0();
    if (v171(v163, 1, v35) == 1)
    {
      sub_30B8(v163, &qword_34D6D0, qword_2D34A0);
      v776 = 0;
    }

    else
    {
      v776 = sub_2AA0F4();
      (*(v774 + 8))(v163, v788);
    }
  }

  else
  {
    v776 = sub_2AA0F4();
    (*(v36 + 8))(v166, v35);
  }

  v173 = v737;
  v174 = v775;
  sub_2CD830();
  v175 = sub_2CD4B0();
  v176 = *(v175 - 8);
  v177 = (*(v176 + 48))(v106, 1, v175);
  v724 = v156;
  if (v177 == 1)
  {
    sub_30B8(v106, &qword_34D6C8, &unk_2D15C0);
    v775 = 0;
  }

  else
  {
    v775 = sub_2AA118();
    (*(v176 + 8))(v106, v175);
  }

  v178 = sub_2CD880();
  v735 = sub_17F430(v178);

  v179 = sub_2CD850();
  v180 = sub_2CD710();
  v791 = v179;
  sub_80D34(v180);
  v181 = sub_17F430(v791);

  if (v181[2] != 1)
  {
    v771 = 0;
    v186 = 0;
    v184 = v738;
    v185 = v782;
    goto LABEL_20;
  }

  v182 = sub_2CBD90();
  v184 = v738;
  v185 = v782;
  if (v771)
  {
    if (v182 == v766 && v183 == v771)
    {
    }

    else
    {
      v187 = sub_2CEEA0();

      if ((v187 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (v181[2])
    {
      v186 = v181[5];
      v771 = v181[4];

      goto LABEL_20;
    }
  }

  else
  {
  }

LABEL_19:
  v771 = 0;
  v186 = 0;
LABEL_20:
  v733 = sub_1866D0(v787, v789, a5);
  sub_2CD900();
  v188 = *(v184 + 48);
  v671 = v184 + 48;
  v189 = v188(v174, 1, v173);
  v734 = v181;
  v670 = v188;
  if (v189 == 1)
  {
    sub_30B8(v174, &qword_34D6C0, &qword_2D15B8);
    v707 = 0;
  }

  else
  {
    v190 = v770;
    (*(v184 + 16))(v770, v174, v173);
    v191 = (*(v184 + 88))(v190, v173);
    if (v191 == enum case for CommonAudio.Reference.definite(_:))
    {
      v707 = 1;
    }

    else
    {
      if (v191 != enum case for CommonAudio.Reference.indefinite(_:))
      {
        (*(v184 + 8))(v190, v173);
      }

      v707 = 0;
    }

    (*(v184 + 8))(v174, v173);
  }

  sub_20410(&qword_34D6D8, &qword_2D15D0);
  v192 = v781;
  v193 = *(v781 + 72);
  v194 = (*(v781 + 80) + 32) & ~*(v781 + 80);
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_2D0E40;
  v196 = v195 + v194;
  v198 = v192 + 104;
  v197 = *(v192 + 104);
  v199 = v195 + v194;
  v729 = enum case for CommonAudio.Attribute.affinity(_:);
  v200 = v772;
  v197(v199);
  v766 = v197;
  (v197)(v196 + v193, enum case for CommonAudio.Attribute.recommended(_:), v200);
  sub_186A50(v195);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  LOBYTE(v195) = sub_2CD950();

  v786 = a5;
  v756 = v198;
  if (v195)
  {
    goto LABEL_29;
  }

  v770 = v186;
  v202 = v764;
  sub_2CD840();
  v203 = v760;
  v204 = v739;
  v667 = *(v760 + 104);
  v667(v185, enum case for CommonAudio.Verb.start(_:), v739);
  v205 = *(v203 + 56);
  v666 = v203 + 56;
  v665 = v205;
  v205(v185, 0, 1, v204);
  v206 = *(v752 + 48);
  v207 = v185;
  v208 = v773;
  sub_F3F4(v202, v773, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v207, &v208[v206], &qword_34D6B8, &qword_2D15B0);
  v209 = *(v203 + 48);
  if (v209(v208, 1, v204) == 1)
  {
    sub_30B8(v207, &qword_34D6B8, &qword_2D15B0);
    v208 = v773;
    sub_30B8(v202, &qword_34D6B8, &qword_2D15B0);
    v210 = v209(&v208[v206], 1, v204);
    v211 = v748;
    if (v210 == 1)
    {
      sub_30B8(v208, &qword_34D6B8, &qword_2D15B0);
LABEL_43:
      v730 = &dword_8;
      v186 = v770;
      goto LABEL_49;
    }

    goto LABEL_35;
  }

  v212 = v697;
  sub_F3F4(v208, v697, &qword_34D6B8, &qword_2D15B0);
  if (v209(&v208[v206], 1, v204) == 1)
  {
    sub_30B8(v782, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v764, &qword_34D6B8, &qword_2D15B0);
    (*(v760 + 8))(v212, v204);
    v211 = v748;
LABEL_35:
    sub_30B8(v208, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_36;
  }

  v219 = v760;
  v220 = v701;
  (*(v760 + 32))(v701, &v208[v206], v204);
  sub_186D70(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v664 = sub_2CE250();
  v221 = *(v219 + 8);
  v221(v220, v204);
  sub_30B8(v782, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v764, &qword_34D6B8, &qword_2D15B0);
  v221(v212, v204);
  sub_30B8(v208, &qword_34D6B8, &qword_2D15B0);
  v211 = v748;
  if (v664)
  {
    goto LABEL_43;
  }

LABEL_36:
  v213 = v727;
  sub_2CD840();
  v667(v211, enum case for CommonAudio.Verb.play(_:), v204);
  v214 = v213;
  v665(v211, 0, 1, v204);
  v215 = *(v752 + 48);
  v216 = v730;
  sub_F3F4(v213, v730, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v211, &v216[v215], &qword_34D6B8, &qword_2D15B0);
  if (v209(v216, 1, v204) == 1)
  {
    sub_30B8(v211, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v213, &qword_34D6B8, &qword_2D15B0);
    v217 = v209(&v216[v215], 1, v204);
    v186 = v770;
    if (v217 == 1)
    {
      sub_30B8(v216, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_45;
    }

LABEL_41:
    sub_30B8(v216, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_46;
  }

  v218 = v693;
  sub_F3F4(v216, v693, &qword_34D6B8, &qword_2D15B0);
  if (v209(&v216[v215], 1, v204) == 1)
  {
    sub_30B8(v211, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v213, &qword_34D6B8, &qword_2D15B0);
    (*(v760 + 8))(v218, v204);
    v186 = v770;
    goto LABEL_41;
  }

  v222 = v760;
  v223 = v701;
  (*(v760 + 32))(v701, &v216[v215], v204);
  sub_186D70(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v224 = sub_2CE250();
  v225 = *(v222 + 8);
  v225(v223, v204);
  sub_30B8(v748, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v214, &qword_34D6B8, &qword_2D15B0);
  v225(v218, v204);
  sub_30B8(v216, &qword_34D6B8, &qword_2D15B0);
  v186 = v770;
  if ((v224 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_45:
  v226 = sub_2CD8E0();
  v227 = v689;
  v228 = v688;
  v229 = v690;
  (*(v689 + 104))(v688, enum case for CommonAudio.Modifier.moreOf(_:), v690);
  v230 = sub_17F540(v228, v226);

  (*(v227 + 8))(v228, v229);
  if ((v230 & 1) == 0)
  {
LABEL_46:
    v231 = v767;
    v232 = v772;
    (v766)(v767, enum case for CommonAudio.Attribute.discovery(_:), v772);
    v233 = sub_2CD910();
    (*(v781 + 8))(v231, v232);
    v201 = v775;
    if (v233)
    {
      v201 = (&dword_0 + 1);
    }

    goto LABEL_48;
  }

LABEL_29:
  v201 = &dword_8;
LABEL_48:
  v730 = v201;
LABEL_49:
  v234 = v767;
  v235 = v772;
  (v766)(v767, enum case for CommonAudio.Attribute.addToUnspecifiedPlaylist(_:), v772);
  v236 = sub_2CD910();
  v237 = *(v781 + 8);
  v781 += 8;
  v727 = v237;
  v237(v234, v235);
  v238 = v776;
  if (v236)
  {
    v238 = 0;
  }

  v748 = v238;
  v239 = sub_2CD740();
  if (!v239[2])
  {
    goto LABEL_55;
  }

  v241 = v239[4];
  v240 = v239[5];
  v242 = v239[6];
  v243 = v239[7];

  v244 = sub_BF40C(v241, v240);
  if (!v245)
  {

LABEL_55:

    v247 = v774;
    v248 = sub_2CD8B0();
    if (v248[2])
    {
      v246 = v248[5];
      v764 = v248[4];
    }

    else
    {

      v764 = 0;
      v246 = 0;
    }

    goto LABEL_58;
  }

  v246 = v245;
  v764 = v244;

  v769 = v242;
  v780 = v243;
  v247 = v774;
LABEL_58:
  v249 = sub_2CD730();
  v250 = v779;
  if (v249[2])
  {
    v251 = v249[5];
    v771 = v249[4];

    v773 = (&dword_0 + 1);
    v186 = v251;
  }

  else
  {

    v773 = 0;
  }

  v252 = v778;
  v782 = v246;
  if (v246)
  {

    sub_2CD8D0();
    v253 = v788;
    (*(v247 + 104))(v252, enum case for CommonAudio.MediaType.news(_:), v788);
    v254 = v247;
    (*(v247 + 56))(v252, 0, 1, v253);
    v255 = *(v783 + 12);
    v256 = v252;
    v257 = v777;
    sub_F3F4(v250, v777, &qword_34D6D0, qword_2D34A0);
    v258 = v257;
    sub_F3F4(v256, &v257[v255], &qword_34D6D0, qword_2D34A0);
    v259 = v785;
    if (v785(v257, 1, v253) == 1)
    {
      sub_30B8(v256, &qword_34D6D0, qword_2D34A0);
      v260 = v777;
      sub_30B8(v250, &qword_34D6D0, qword_2D34A0);
      v247 = v254;
      if (v259(&v260[v255], 1, v788) == 1)
      {
        sub_30B8(v260, &qword_34D6D0, qword_2D34A0);
LABEL_70:

        v771 = v764;
        v186 = v246;
        goto LABEL_71;
      }
    }

    else
    {
      v261 = v257;
      v262 = v724;
      sub_F3F4(v261, v724, &qword_34D6D0, qword_2D34A0);
      if (v259(&v258[v255], 1, v788) != 1)
      {
        v247 = v254;
        v263 = *(v254 + 32);
        v264 = &v258[v255];
        v265 = v258;
        v266 = v753;
        v770 = v186;
        v267 = v788;
        v263(v753, v264, v788);
        sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
        v268 = sub_2CE250();
        v269 = *(v247 + 8);
        v269(v266, v267);
        sub_30B8(v778, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v779, &qword_34D6D0, qword_2D34A0);
        v186 = v770;
        v269(v262, v267);
        v246 = v782;
        sub_30B8(v265, &qword_34D6D0, qword_2D34A0);
        if (v268)
        {
          goto LABEL_70;
        }

LABEL_68:

        goto LABEL_71;
      }

      sub_30B8(v778, &qword_34D6D0, qword_2D34A0);
      v260 = v777;
      sub_30B8(v779, &qword_34D6D0, qword_2D34A0);
      v247 = v254;
      (*(v254 + 8))(v262, v788);
    }

    sub_30B8(v260, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_68;
  }

LABEL_71:
  v270 = sub_2CD760();
  v271 = v270[2];
  v272 = v762;
  v770 = v186;
  if (v271)
  {
    v273 = v270[4];
    v274 = v270[5];

    v275 = sub_BF40C(v273, v274);
    v277 = v276;

    v775 = v277;
    if (v277)
    {
      v724 = v275;
LABEL_79:
      v286 = v754;
      goto LABEL_82;
    }
  }

  else
  {

    v275 = 0;
  }

  v278 = sub_2CD790();
  if (!v278[2])
  {
    v724 = v275;

    v775 = 0;
    goto LABEL_79;
  }

  v279 = v278[4];
  v280 = v278[5];
  v282 = v278[6];
  v281 = v278[7];

  v283 = sub_BF40C(v279, v280);
  v775 = v284;
  if (v284)
  {
    v285 = v283;

    v769 = v282;
    v780 = v281;
    v724 = v285;
  }

  else
  {
    v724 = v275;

    v775 = 0;
  }

  v247 = v774;
  v286 = v754;
  v272 = v762;
LABEL_82:
  sub_2CD8D0();
  v287 = v272;
  v288 = v272;
  v289 = v788;
  v778 = *(v247 + 104);
  v779 = (v247 + 104);
  (v778)(v287, enum case for CommonAudio.MediaType.playlist(_:), v788);
  v776 = *(v247 + 56);
  v777 = (v247 + 56);
  (v776)(v288, 0, 1, v289);
  v290 = *(v783 + 12);
  v291 = v761;
  sub_F3F4(v286, v761, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v288, v291 + v290, &qword_34D6D0, qword_2D34A0);
  v292 = v785;
  if (v785(v291, 1, v289) == 1)
  {
    v293 = v292;
    sub_30B8(v288, &qword_34D6D0, qword_2D34A0);
    v294 = v761;
    sub_30B8(v286, &qword_34D6D0, qword_2D34A0);
    if (v293(v294 + v290, 1, v788) == 1)
    {
      v295 = v782;
LABEL_91:
      sub_30B8(v294, &qword_34D6D0, qword_2D34A0);
      goto LABEL_96;
    }

    goto LABEL_87;
  }

  v296 = v712;
  sub_F3F4(v291, v712, &qword_34D6D0, qword_2D34A0);
  if (v292(v291 + v290, 1, v788) == 1)
  {
    sub_30B8(v762, &qword_34D6D0, qword_2D34A0);
    v294 = v761;
    sub_30B8(v754, &qword_34D6D0, qword_2D34A0);
    (*(v247 + 8))(v296, v788);
LABEL_87:
    sub_30B8(v294, &qword_34D6A8, &unk_2D15A0);
    v297 = v720;
    v298 = v740;
    goto LABEL_88;
  }

  v310 = v753;
  v311 = v788;
  (*(v247 + 32))(v753, v291 + v290, v788);
  sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v312 = sub_2CE250();
  v313 = *(v247 + 8);
  v313(v310, v311);
  sub_30B8(v762, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v754, &qword_34D6D0, qword_2D34A0);
  v313(v296, v311);
  v247 = v774;
  sub_30B8(v291, &qword_34D6D0, qword_2D34A0);
  v295 = v782;
  v297 = v720;
  v298 = v740;
  if ((v312 & 1) == 0)
  {
LABEL_88:
    v299 = v719;
    sub_2CD8D0();
    v300 = v788;
    (v778)(v298, enum case for CommonAudio.MediaType.musicPlaylist(_:), v788);
    (v776)(v298, 0, 1, v300);
    v301 = *(v783 + 12);
    sub_F3F4(v299, v297, &qword_34D6D0, qword_2D34A0);
    sub_F3F4(v298, v297 + v301, &qword_34D6D0, qword_2D34A0);
    v302 = v785;
    if (v785(v297, 1, v300) == 1)
    {
      sub_30B8(v298, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v299, &qword_34D6D0, qword_2D34A0);
      v303 = v302(v297 + v301, 1, v788);
      v295 = v782;
      if (v303 == 1)
      {
        v294 = v297;
        goto LABEL_91;
      }
    }

    else
    {
      v304 = v699;
      sub_F3F4(v297, v699, &qword_34D6D0, qword_2D34A0);
      if (v302(v297 + v301, 1, v788) != 1)
      {
        v314 = v753;
        v315 = v788;
        (*(v247 + 32))(v753, v297 + v301, v788);
        sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
        v316 = sub_2CE250();
        v317 = *(v247 + 8);
        v317(v314, v315);
        sub_30B8(v740, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v299, &qword_34D6D0, qword_2D34A0);
        v317(v304, v315);
        sub_30B8(v297, &qword_34D6D0, qword_2D34A0);
        v305 = v775;
        v318 = (v775 != 0) | v316 ^ 1;
        v309 = v724;
        if ((v318 & 1) == 0)
        {
          v309 = 0;
        }

        v295 = v782;
        if (v782)
        {
          v306 = v768;
          v307 = v745;
          v308 = v744;
          if (v318)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        }

        v306 = v768;
LABEL_108:
        v307 = v745;
        v308 = v744;
        goto LABEL_109;
      }

      sub_30B8(v740, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v299, &qword_34D6D0, qword_2D34A0);
      (*(v247 + 8))(v304, v788);
    }

    sub_30B8(v297, &qword_34D6A8, &unk_2D15A0);
    v305 = v775;
    v306 = v768;
    v307 = v745;
    v308 = v744;
    v309 = v724;
    goto LABEL_109;
  }

LABEL_96:
  v305 = v775;
  v309 = v724;
  if (!v775)
  {
    v309 = 0;
  }

  if (!v295)
  {
    v306 = v768;
    goto LABEL_108;
  }

  v306 = v768;
  v307 = v745;
  v308 = v744;
  if (!v775)
  {
LABEL_105:
    v309 = sub_BF40C(v764, v295);
    v305 = v319;
  }

LABEL_109:
  v320 = sub_2CD930();
  v775 = v305;
  LODWORD(v762) = v320;
  if (!v305)
  {
    v321 = v743;
    v322 = v742;
    v305 = v770;
    goto LABEL_123;
  }

  if (v320)
  {

    v773 = (&dword_4 + 1);
    v771 = v309;
    v321 = v743;
    v322 = v742;
    goto LABEL_123;
  }

  sub_2CD840();
  v323 = v760;
  v324 = v739;
  (*(v760 + 104))(v308, enum case for CommonAudio.Verb.update(_:), v739);
  (*(v323 + 56))(v308, 0, 1, v324);
  v325 = *(v752 + 48);
  v326 = v717;
  sub_F3F4(v307, v717, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v308, &v326[v325], &qword_34D6B8, &qword_2D15B0);
  v327 = v323;
  v328 = v326;
  v329 = *(v327 + 48);
  if (v329(v328, 1, v324) == 1)
  {
    sub_30B8(v308, &qword_34D6B8, &qword_2D15B0);
    v330 = v717;
    sub_30B8(v307, &qword_34D6B8, &qword_2D15B0);
    v331 = v329(&v330[v325], 1, v324);
    v332 = v775;
    v306 = v768;
    if (v331 == 1)
    {
      sub_30B8(v330, &qword_34D6B8, &qword_2D15B0);
      v322 = v742;
      v305 = v770;
LABEL_121:

      goto LABEL_122;
    }

    goto LABEL_118;
  }

  v333 = v696;
  sub_F3F4(v328, v696, &qword_34D6B8, &qword_2D15B0);
  if (v329((v328 + v325), 1, v324) == 1)
  {
    sub_30B8(v744, &qword_34D6B8, &qword_2D15B0);
    v330 = v717;
    sub_30B8(v745, &qword_34D6B8, &qword_2D15B0);
    (*(v760 + 8))(v333, v324);
    v332 = v775;
    v306 = v768;
LABEL_118:
    sub_30B8(v330, &qword_34D6B0, &unk_2D4FC0);
    v322 = v742;
    goto LABEL_119;
  }

  v334 = v760;
  v335 = v701;
  (*(v760 + 32))(v701, v328 + v325, v324);
  sub_186D70(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v336 = sub_2CE250();
  v337 = *(v334 + 8);
  v337(v335, v324);
  sub_30B8(v744, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v745, &qword_34D6B8, &qword_2D15B0);
  v337(v696, v324);
  sub_30B8(v328, &qword_34D6B8, &qword_2D15B0);
  v332 = v775;
  v306 = v768;
  v322 = v742;
  v305 = v770;
  if (v336)
  {
    goto LABEL_121;
  }

LABEL_119:

  v773 = (&dword_4 + 1);
  v771 = v309;
  v305 = v332;
LABEL_122:
  v321 = v743;
LABEL_123:
  v338 = sub_2CD800();
  if (v338[2])
  {
    v339 = v338[4];
    v340 = v338[5];

    v341 = sub_BF40C(v339, v340);
    v343 = v342;

    if (!v343)
    {
      goto LABEL_135;
    }

    if ((v762 & 1) == 0)
    {
      v762 = v341;
      v770 = v305;
      sub_2CD840();
      v344 = v321;
      v345 = v760;
      v346 = v739;
      (*(v760 + 104))(v322, enum case for CommonAudio.Verb.update(_:), v739);
      (*(v345 + 56))(v322, 0, 1, v346);
      v347 = *(v752 + 48);
      v348 = v702;
      sub_F3F4(v344, v702, &qword_34D6B8, &qword_2D15B0);
      sub_F3F4(v322, &v348[v347], &qword_34D6B8, &qword_2D15B0);
      v349 = v345;
      v350 = v348;
      v351 = *(v349 + 48);
      if (v351(v350, 1, v346) == 1)
      {
        sub_30B8(v322, &qword_34D6B8, &qword_2D15B0);
        v352 = v702;
        sub_30B8(v344, &qword_34D6B8, &qword_2D15B0);
        if (v351(&v352[v347], 1, v346) == 1)
        {
          sub_30B8(v352, &qword_34D6B8, &qword_2D15B0);
          v305 = v770;
          v306 = v768;
          goto LABEL_134;
        }

        goto LABEL_131;
      }

      v353 = v684;
      sub_F3F4(v350, v684, &qword_34D6B8, &qword_2D15B0);
      if (v351((v350 + v347), 1, v346) == 1)
      {
        sub_30B8(v742, &qword_34D6B8, &qword_2D15B0);
        v352 = v702;
        sub_30B8(v743, &qword_34D6B8, &qword_2D15B0);
        (*(v760 + 8))(v353, v346);
LABEL_131:
        sub_30B8(v352, &qword_34D6B0, &unk_2D4FC0);
        v306 = v768;
        v341 = v762;
        goto LABEL_132;
      }

      v354 = v760;
      v355 = v350 + v347;
      v356 = v350;
      v357 = v701;
      (*(v760 + 32))(v701, v355, v346);
      sub_186D70(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
      LODWORD(v761) = sub_2CE250();
      v358 = *(v354 + 8);
      v358(v357, v346);
      sub_30B8(v742, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v743, &qword_34D6B8, &qword_2D15B0);
      v358(v353, v346);
      sub_30B8(v356, &qword_34D6B8, &qword_2D15B0);
      v305 = v770;
      v306 = v768;
      v341 = v762;
      if (v761)
      {
        goto LABEL_134;
      }
    }

LABEL_132:

    sub_2CD8F0();
    v771 = v341;
LABEL_137:
    v360 = v755;
    goto LABEL_158;
  }

LABEL_134:

LABEL_135:
  v359 = v765;
  sub_2CD8F0();
  if (v305)
  {
    v343 = v305;
    goto LABEL_137;
  }

  v361 = *(v716 + 48);
  if (v361(v359, 1, v718) == 1)
  {
    sub_2CD8C0();
    if (v362)
    {
      v363 = *(sub_2CD7A0() + 16);

      if (!v363)
      {
        v611 = v681;
        sub_2CD8D0();
        if (v785(v611, 1, v788) == 1)
        {
          sub_30B8(v611, &qword_34D6D0, qword_2D34A0);
          v343 = 0;
          v360 = v755;
          v306 = v768;
          goto LABEL_158;
        }

        v612 = sub_2CD530();
        v614 = v774 + 8;
        v613 = *(v774 + 8);
        v613(v611, v788);
        v306 = v768;
        if (v612)
        {
          v761 = v613;
          v762 = v614;
          if (v782)
          {
            v615 = sub_BF40C(v764, v782);
            if (v616)
            {
              v770 = v616;
              v771 = v615;
              v617 = v678;
              v618 = v679;
              goto LABEL_339;
            }
          }

          v619 = sub_2CD890();
          v620 = sub_7EF68(v619);
          v622 = v621;

          v617 = v678;
          v618 = v679;
          if (v622 || (v623 = sub_2CD860(), v620 = sub_7EF68(v623), v622 = v624, , v622) || (v625 = sub_2CD730(), v620 = sub_7EF68(v625), v622 = v626, , v622))
          {
            v770 = v622;
            v771 = v620;
LABEL_339:
            sub_2CD840();
            v627 = v760;
            v628 = v739;
            (*(v760 + 104))(v618, enum case for CommonAudio.Verb.start(_:), v739);
            (*(v627 + 56))(v618, 0, 1, v628);
            v629 = *(v752 + 48);
            v630 = v680;
            sub_F3F4(v617, v680, &qword_34D6B8, &qword_2D15B0);
            v631 = v630;
            sub_F3F4(v618, &v630[v629], &qword_34D6B8, &qword_2D15B0);
            v632 = *(v627 + 48);
            if (v632(v631, 1, v628) == 1)
            {
              sub_30B8(v618, &qword_34D6B8, &qword_2D15B0);
              v633 = v680;
              sub_30B8(v617, &qword_34D6B8, &qword_2D15B0);
              if (v632(&v633[v629], 1, v628) == 1)
              {
                sub_30B8(v633, &qword_34D6B8, &qword_2D15B0);
                v306 = v768;
                goto LABEL_347;
              }
            }

            else
            {
              v634 = v676;
              sub_F3F4(v631, v676, &qword_34D6B8, &qword_2D15B0);
              if (v632((v631 + v629), 1, v628) != 1)
              {
                v636 = v760;
                v637 = v701;
                (*(v760 + 32))(v701, v631 + v629, v628);
                sub_186D70(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
                v638 = sub_2CE250();
                v639 = *(v636 + 8);
                v639(v637, v628);
                sub_30B8(v679, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v617, &qword_34D6B8, &qword_2D15B0);
                v639(v676, v628);
                sub_30B8(v631, &qword_34D6B8, &qword_2D15B0);
                v306 = v768;
                if ((v638 & 1) == 0)
                {
                  v635 = v677;
                  v343 = v770;
                  goto LABEL_356;
                }

LABEL_347:
                v640 = v672;
                sub_2CD900();
                v641 = v738;
                v642 = v674;
                v643 = v737;
                (*(v738 + 104))(v674, enum case for CommonAudio.Reference.definite(_:), v737);
                (*(v641 + 56))(v642, 0, 1, v643);
                v644 = *(v673 + 48);
                v645 = v675;
                sub_F3F4(v640, v675, &qword_34D6C0, &qword_2D15B8);
                v646 = &v645[v644];
                v647 = v645;
                v648 = v643;
                sub_F3F4(v642, v646, &qword_34D6C0, &qword_2D15B8);
                v649 = v670;
                if (v670(v647, 1, v643) == 1)
                {
                  sub_30B8(v642, &qword_34D6C0, &qword_2D15B8);
                  v650 = v675;
                  sub_30B8(v640, &qword_34D6C0, &qword_2D15B8);
                  v651 = v649(&v650[v644], 1, v643);
                  v343 = v770;
                  if (v651 == 1)
                  {
                    sub_30B8(v650, &qword_34D6C0, &qword_2D15B8);
                    v635 = v677;
LABEL_355:

                    v771 = 0;
                    v343 = 0xE000000000000000;
LABEL_356:
                    sub_2CD8D0();
                    v662 = v785(v635, 1, v788);
                    v360 = v755;
                    if (v662 == 1)
                    {
                      sub_30B8(v635, &qword_34D6D0, qword_2D34A0);
                      v773 = 0;
                    }

                    else
                    {
                      v773 = sub_2AA4C4();
                      (v761)(v635, v788);
                    }

                    goto LABEL_158;
                  }
                }

                else
                {
                  v652 = v669;
                  sub_F3F4(v647, v669, &qword_34D6C0, &qword_2D15B8);
                  if (v649(v647 + v644, 1, v648) != 1)
                  {
                    v653 = v640;
                    v654 = v738;
                    v655 = v647 + v644;
                    v656 = v668;
                    (*(v738 + 32))(v668, v655, v648);
                    sub_186D70(&qword_34D700, &type metadata accessor for CommonAudio.Reference, &protocol conformance descriptor for CommonAudio.Reference);
                    v657 = v652;
                    v658 = v648;
                    v659 = v647;
                    v660 = sub_2CE250();
                    v661 = *(v654 + 8);
                    v661(v656, v658);
                    sub_30B8(v674, &qword_34D6C0, &qword_2D15B8);
                    sub_30B8(v653, &qword_34D6C0, &qword_2D15B8);
                    v661(v657, v658);
                    sub_30B8(v659, &qword_34D6C0, &qword_2D15B8);
                    v635 = v677;
                    v343 = v770;
                    if ((v660 & 1) == 0)
                    {
                      goto LABEL_356;
                    }

                    goto LABEL_355;
                  }

                  sub_30B8(v674, &qword_34D6C0, &qword_2D15B8);
                  v650 = v675;
                  sub_30B8(v640, &qword_34D6C0, &qword_2D15B8);
                  (*(v738 + 8))(v652, v648);
                  v343 = v770;
                }

                sub_30B8(v650, &qword_34D688, &qword_2D1588);
                v635 = v677;
                goto LABEL_356;
              }

              sub_30B8(v679, &qword_34D6B8, &qword_2D15B0);
              v633 = v680;
              sub_30B8(v617, &qword_34D6B8, &qword_2D15B0);
              (*(v760 + 8))(v634, v628);
            }

            sub_30B8(v633, &qword_34D6B0, &unk_2D4FC0);
            v635 = v677;
            v343 = v770;
            v306 = v768;
            goto LABEL_356;
          }
        }

        v343 = 0;
        goto LABEL_137;
      }
    }
  }

  v791 = 0;
  v792 = 0xE000000000000000;
  v364 = sub_2CD7A0();
  if (v364[2])
  {
    v365 = v364[4];
    v366 = v364[5];

    v793._countAndFlagsBits = v365;
    v793._object = v366;
    sub_2CE350(v793);
  }

  v367 = sub_2CD8C0();
  if (v368)
  {
    goto LABEL_154;
  }

  v369 = v367;
  v370 = v716;
  v371 = v694;
  v372 = v718;
  (*(v716 + 104))(v694, enum case for CommonAudio.RadioType.am(_:), v718);
  (*(v370 + 56))(v371, 0, 1, v372);
  v373 = v359;
  v374 = *(v685 + 48);
  v375 = v686;
  sub_F3F4(v373, v686, &qword_34D6A0, &unk_2D3490);
  sub_F3F4(v371, &v375[v374], &qword_34D6A0, &unk_2D3490);
  if (v361(v375, 1, v372) == 1)
  {
    sub_30B8(v371, &qword_34D6A0, &unk_2D3490);
    if (v361(&v375[v374], 1, v372) == 1)
    {
      sub_30B8(v375, &qword_34D6A0, &unk_2D3490);
      v359 = v765;
LABEL_152:
      sub_20410(&qword_34CEA8, &unk_2D0EB0);
      v384 = swift_allocObject();
      *(v384 + 16) = xmmword_2D0090;
      *(v384 + 56) = &type metadata for Double;
      *(v384 + 64) = &protocol witness table for Double;
      *(v384 + 32) = v369;
      v377._countAndFlagsBits = sub_2CE280();
      goto LABEL_153;
    }

    goto LABEL_149;
  }

  v376 = v683;
  sub_F3F4(v375, v683, &qword_34D6A0, &unk_2D3490);
  if (v361(&v375[v374], 1, v372) == 1)
  {
    sub_30B8(v694, &qword_34D6A0, &unk_2D3490);
    (*(v716 + 8))(v376, v372);
LABEL_149:
    sub_30B8(v375, &qword_34D680, &qword_2D1580);
    v359 = v765;
    goto LABEL_150;
  }

  v378 = v716;
  v379 = &v375[v374];
  v380 = v682;
  (*(v716 + 32))(v682, v379, v372);
  sub_186D70(&qword_34D6F8, &type metadata accessor for CommonAudio.RadioType, &protocol conformance descriptor for CommonAudio.RadioType);
  v381 = v375;
  v382 = sub_2CE250();
  v383 = *(v378 + 8);
  v383(v380, v372);
  sub_30B8(v694, &qword_34D6A0, &unk_2D3490);
  v383(v683, v372);
  sub_30B8(v381, &qword_34D6A0, &unk_2D3490);
  v359 = v765;
  if (v382)
  {
    goto LABEL_152;
  }

LABEL_150:
  v377._countAndFlagsBits = sub_2CE510();
LABEL_153:
  sub_BF464(v377);

LABEL_154:
  v385 = v695;
  sub_F3F4(v359, v695, &qword_34D6A0, &unk_2D3490);
  v386 = v718;
  if (v361(v385, 1, v718) == 1)
  {
    sub_30B8(v385, &qword_34D6A0, &unk_2D3490);
  }

  else
  {
    v387 = v716;
    v388 = v687;
    (*(v716 + 32))(v687, v385, v386);
    v794._countAndFlagsBits = sub_2CD550();
    sub_BF464(v794);

    (*(v387 + 8))(v388, v386);
  }

  v360 = v755;
  v306 = v768;
  v343 = v792;
  v771 = v791;
  v748 = &dword_10;
LABEL_158:
  v389 = sub_2CD750();
  if (v389[2])
  {
    v390 = v389[4];
    v391 = v389[5];

    v761 = sub_BF40C(v390, v391);
    v762 = v392;
  }

  else
  {

    v761 = 0;
    v762 = 0;
  }

  sub_2CD8D0();
  LODWORD(v760) = enum case for CommonAudio.MediaType.podcast(_:);
  v393 = v788;
  (v778)(v306);
  (v776)(v306, 0, 1, v393);
  v394 = *(v783 + 12);
  v395 = v725;
  sub_F3F4(v360, v725, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v306, &v395[v394], &qword_34D6D0, qword_2D34A0);
  v396 = v785;
  v397 = v785(v395, 1, v393);
  v770 = v343;
  if (v397 == 1)
  {
    sub_30B8(v306, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v360, &qword_34D6D0, qword_2D34A0);
    v398 = v396(&v395[v394], 1, v788);
    v399 = v771;
    if (v398 == 1)
    {
      goto LABEL_170;
    }

    goto LABEL_166;
  }

  v400 = v713;
  sub_F3F4(v395, v713, &qword_34D6D0, qword_2D34A0);
  if (v396(&v395[v394], 1, v788) == 1)
  {
    sub_30B8(v768, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v755, &qword_34D6D0, qword_2D34A0);
    (*(v774 + 8))(v400, v788);
    v399 = v771;
LABEL_166:
    sub_30B8(v395, &qword_34D6A8, &unk_2D15A0);
    v401 = v721;
    v402 = v741;
    goto LABEL_167;
  }

  v414 = v774;
  v415 = v753;
  v416 = v788;
  (*(v774 + 32))(v753, &v395[v394], v788);
  sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v417 = sub_2CE250();
  v418 = *(v414 + 8);
  v418(v415, v416);
  sub_30B8(v768, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v755, &qword_34D6D0, qword_2D34A0);
  v418(v400, v416);
  sub_30B8(v395, &qword_34D6D0, qword_2D34A0);
  v401 = v721;
  v402 = v741;
  v399 = v771;
  if (v417)
  {
    goto LABEL_179;
  }

LABEL_167:
  v403 = v723;
  sub_2CD8D0();
  v404 = v788;
  (v778)(v402, enum case for CommonAudio.MediaType.episode(_:), v788);
  (v776)(v402, 0, 1, v404);
  v405 = *(v783 + 12);
  sub_F3F4(v403, v401, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v402, v401 + v405, &qword_34D6D0, qword_2D34A0);
  v406 = v402;
  v407 = v785;
  if (v785(v401, 1, v404) != 1)
  {
    v408 = v700;
    sub_F3F4(v401, v700, &qword_34D6D0, qword_2D34A0);
    if (v407(v401 + v405, 1, v788) != 1)
    {
      v419 = v774;
      v420 = v753;
      v421 = v788;
      (*(v774 + 32))(v753, v401 + v405, v788);
      sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
      v422 = sub_2CE250();
      v423 = v401;
      v424 = *(v419 + 8);
      v424(v420, v421);
      sub_30B8(v741, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v723, &qword_34D6D0, qword_2D34A0);
      v425 = v421;
      v399 = v771;
      v424(v408, v425);
      sub_30B8(v423, &qword_34D6D0, qword_2D34A0);
      if (v422)
      {
        goto LABEL_179;
      }

LABEL_174:
      v409 = v726;
      v410 = v747;
      v411 = v746;
      v412 = v770;
      v413 = v762;
      if (!v762)
      {
        goto LABEL_182;
      }

      goto LABEL_181;
    }

    sub_30B8(v741, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v723, &qword_34D6D0, qword_2D34A0);
    (*(v774 + 8))(v408, v788);
LABEL_173:
    sub_30B8(v401, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_174;
  }

  sub_30B8(v406, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v403, &qword_34D6D0, qword_2D34A0);
  if (v785((v401 + v405), 1, v788) != 1)
  {
    goto LABEL_173;
  }

  v395 = v401;
LABEL_170:
  sub_30B8(v395, &qword_34D6D0, qword_2D34A0);
LABEL_179:
  v409 = v726;
  v410 = v747;
  v411 = v746;
  v412 = v770;
  v413 = v762;
  if (v762 || (v426 = , v761 = v764, (v413 = v426) != 0))
  {
LABEL_181:

    v773 = (&dword_4 + 2);
    v399 = v761;
    v412 = v413;
  }

LABEL_182:
  v427 = sub_2CD7D0();
  v428 = sub_7EF68(v427);
  v430 = v429;

  if (!v430 || (v770 = sub_BF40C(v428, v430), v432 = v431, , (v771 = v432) == 0))
  {
    v770 = v399;
    v771 = v412;
LABEL_188:
    v442 = v728;
    goto LABEL_189;
  }

  sub_2CD8D0();
  v433 = v788;
  (v778)(v411, v760, v788);
  (v776)(v411, 0, 1, v433);
  v434 = *(v783 + 12);
  v435 = v705;
  sub_F3F4(v410, v705, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v411, &v435[v434], &qword_34D6D0, qword_2D34A0);
  v436 = v785;
  if (v785(v435, 1, v433) == 1)
  {
    sub_30B8(v411, &qword_34D6D0, qword_2D34A0);
    v437 = v410;
    v438 = v788;
    sub_30B8(v437, &qword_34D6D0, qword_2D34A0);
    v439 = v436(&v435[v434], 1, v438);
    v440 = v774;
    v441 = v706;
    if (v439 == 1)
    {
      sub_30B8(v435, &qword_34D6D0, qword_2D34A0);
LABEL_255:
      v773 = (&dword_4 + 2);
      goto LABEL_188;
    }

    goto LABEL_208;
  }

  v469 = v409;
  sub_F3F4(v435, v409, &qword_34D6D0, qword_2D34A0);
  v470 = v436(&v435[v434], 1, v788);
  v440 = v774;
  if (v470 == 1)
  {
    sub_30B8(v746, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v747, &qword_34D6D0, qword_2D34A0);
    (*(v440 + 8))(v469, v788);
    v441 = v706;
LABEL_208:
    sub_30B8(v435, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_209;
  }

  v542 = v753;
  v543 = v788;
  (*(v774 + 32))(v753, &v435[v434], v788);
  sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  LODWORD(v768) = sub_2CE250();
  v544 = *(v440 + 8);
  v544(v542, v543);
  sub_30B8(v746, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v747, &qword_34D6D0, qword_2D34A0);
  v544(v469, v543);
  sub_30B8(v435, &qword_34D6D0, qword_2D34A0);
  v441 = v706;
  if (v768)
  {
    goto LABEL_255;
  }

LABEL_209:
  v471 = v440;
  v472 = v704;
  sub_2CD8D0();
  v473 = v703;
  v474 = v788;
  (v778)(v703, enum case for CommonAudio.MediaType.episode(_:), v788);
  (v776)(v473, 0, 1, v474);
  v475 = *(v783 + 12);
  sub_F3F4(v472, v441, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v473, v441 + v475, &qword_34D6D0, qword_2D34A0);
  v476 = v785;
  if (v785(v441, 1, v474) == 1)
  {
    sub_30B8(v473, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v472, &qword_34D6D0, qword_2D34A0);
    v477 = v476(v441 + v475, 1, v788);
    v442 = v728;
    if (v477 == 1)
    {
      sub_30B8(v441, &qword_34D6D0, qword_2D34A0);
      v773 = (&dword_4 + 2);
      goto LABEL_189;
    }
  }

  else
  {
    v541 = v691;
    sub_F3F4(v441, v691, &qword_34D6D0, qword_2D34A0);
    if (v476(v441 + v475, 1, v788) != 1)
    {
      v562 = v753;
      v563 = v788;
      (*(v471 + 32))(v753, v441 + v475, v788);
      sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
      v564 = sub_2CE250();
      v565 = *(v471 + 8);
      v565(v562, v563);
      sub_30B8(v703, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v704, &qword_34D6D0, qword_2D34A0);
      v565(v541, v563);
      sub_30B8(v441, &qword_34D6D0, qword_2D34A0);
      v566 = v773;
      if (v564)
      {
        v566 = (&dword_4 + 2);
      }

      v773 = v566;
      goto LABEL_188;
    }

    sub_30B8(v703, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v704, &qword_34D6D0, qword_2D34A0);
    (*(v471 + 8))(v541, v788);
    v442 = v728;
  }

  sub_30B8(v441, &qword_34D6A8, &unk_2D15A0);
LABEL_189:
  v443 = sub_2CD7C0();
  v444 = sub_7EFAC(v443);
  v446 = v445;
  v762 = v447;
  v768 = v448;

  v760 = v444;
  if (v446)
  {

    v761 = sub_BF40C(v444, v446);
    v450 = v449;
  }

  else
  {
    v761 = 0;
    v450 = 0;
  }

  v451 = v749;
  sub_2CD8D0();
  v452 = v788;
  (v778)(v451, enum case for CommonAudio.MediaType.audioBook(_:), v788);
  (v776)(v451, 0, 1, v452);
  v453 = *(v783 + 12);
  v454 = v763;
  sub_F3F4(v442, v763, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v451, &v454[v453], &qword_34D6D0, qword_2D34A0);
  v455 = v785;
  if (v785(v454, 1, v452) == 1)
  {
    sub_30B8(v451, &qword_34D6D0, qword_2D34A0);
    v456 = v763;
    sub_30B8(v442, &qword_34D6D0, qword_2D34A0);
    if (v455(&v456[v453], 1, v788) == 1)
    {
      sub_30B8(v456, &qword_34D6D0, qword_2D34A0);
      v457 = v750;
      v458 = v768;
      v459 = v762;
      goto LABEL_202;
    }

    goto LABEL_197;
  }

  v460 = v714;
  sub_F3F4(v454, v714, &qword_34D6D0, qword_2D34A0);
  if (v455(&v454[v453], 1, v788) == 1)
  {
    sub_30B8(v451, &qword_34D6D0, qword_2D34A0);
    v456 = v763;
    sub_30B8(v442, &qword_34D6D0, qword_2D34A0);
    (*(v774 + 8))(v460, v788);
LABEL_197:
    sub_30B8(v456, &qword_34D6A8, &unk_2D15A0);
    v457 = v750;
    v458 = v768;
    v459 = v762;
LABEL_198:
    if (v450)
    {
      goto LABEL_203;
    }

    sub_6FB3C(v760, v446, v459, v458);
LABEL_200:
    v461 = v732;
    v462 = v731;
    goto LABEL_215;
  }

  v463 = v788;
  v464 = v774;
  v465 = &v454[v453];
  v466 = v753;
  (*(v774 + 32))(v753, v465, v788);
  sub_186D70(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v467 = sub_2CE250();
  v468 = *(v464 + 8);
  v468(v466, v463);
  sub_30B8(v749, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v442, &qword_34D6D0, qword_2D34A0);
  v468(v460, v463);
  sub_30B8(v763, &qword_34D6D0, qword_2D34A0);
  v457 = v750;
  v458 = v768;
  v459 = v762;
  if ((v467 & 1) == 0)
  {
    goto LABEL_198;
  }

LABEL_202:
  if (v450)
  {
LABEL_203:

    if (v446)
    {
    }

    else
    {
      v458 = 0;
      v459 = 0;
    }

    goto LABEL_214;
  }

  sub_6FB3C(v760, v446, v459, v458);

  if (!v478)
  {
    v450 = 0;
    goto LABEL_200;
  }

  v450 = v478;
  v761 = v764;
  v458 = v780;
  v459 = v769;
LABEL_214:
  v461 = v732;
  v462 = v731;

  v773 = (&dword_8 + 2);
  v769 = v459;
  v780 = v458;
  v770 = v761;
  v771 = v450;
LABEL_215:
  v479 = sub_2CD7B0();
  v480 = v751;
  v776 = v450;
  if (v479)
  {
    v481 = v479;
    if (sub_2CD960() || sub_2CD990())
    {
      v482 = v709;
      v483 = *(v709 + 104);
      v484 = v708;
      v779 = v481;
      v485 = v710;
      v483(v708, enum case for AudioUsoIntent.UsoNamespace.identifier(_:), v710);
      sub_2CD700();
      sub_2CD630();
      v783 = sub_2CAD90();

      (*(v482 + 8))(v484, v485);
      v486 = sub_20410(&qword_34D6F0, &unk_2D15D8);
      v487 = sub_2CD620();
      v488 = *(v487 - 8);
      v489 = (*(v488 + 80) + 32) & ~*(v488 + 80);
      v778 = v486;
      v490 = swift_allocObject();
      v788 = xmmword_2D0090;
      *(v490 + 16) = xmmword_2D0090;
      v491 = enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:);
      v492 = *(v488 + 104);
      v492(v490 + v489, enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:), v487);
      v785 = sub_2CADA0();

      v493 = swift_allocObject();
      *(v493 + 16) = v788;
      v492(v493 + v489, v491, v487);
      v784 = sub_2CADA0();

      v494 = swift_allocObject();
      *(v494 + 16) = v788;
      v492(v494 + v489, v491, v487);
      v495 = sub_2CADA0();

      v496 = v711;
      sub_7F014(v783, v711);

      v497 = sub_2CAB40();
      v498 = *(v497 - 8);
      if ((*(v498 + 48))(v496, 1, v497) == 1)
      {
        sub_30B8(v496, &unk_353080, &qword_2D1460);
      }

      else
      {
        v499 = sub_2CAB20();
        v501 = v500;
        (*(v498 + 8))(v496, v497);
        v502 = sub_BF40C(v499, v501);
        v504 = v503;

        if (v504)
        {

          v769 = v502;
          v780 = v504;
        }
      }

      v505 = v748;
      v506 = v784;
      if (v785 && (, v507 = sub_2CADC0(), v509 = v508, , v509))
      {
        v510 = sub_BF40C(v507, v509);
        v512 = v511;

        v785 = v512;
        if (v512)
        {
          v513 = v510;
        }

        else
        {
          v513 = 0;
        }

        v783 = v513;
        if (!v506)
        {
          goto LABEL_236;
        }
      }

      else
      {
        v783 = 0;
        v785 = 0;
        if (!v506)
        {
          goto LABEL_236;
        }
      }

      v514 = sub_2CADC0();
      v516 = v515;

      if (v516)
      {
        v517 = sub_BF40C(v514, v516);
        v519 = v518;

        v784 = v519;
        if (v519)
        {
          v520 = v517;
        }

        else
        {
          v520 = 0;
        }

        v778 = v520;
        if (v495)
        {
LABEL_237:

          v521 = sub_2CADC0();
          v523 = v522;

          if (v523)
          {
            v524 = sub_BF40C(v521, v523);
            v526 = v525;

            if (v526)
            {

              v527 = 1;
              v770 = v524;
              v771 = v526;
            }

            else
            {
              v527 = 1;
            }

            goto LABEL_257;
          }

LABEL_240:
          v527 = 1;
          goto LABEL_257;
        }

LABEL_235:

        goto LABEL_240;
      }

LABEL_236:
      v778 = 0;
      v784 = 0;
      if (v495)
      {
        goto LABEL_237;
      }

      goto LABEL_235;
    }
  }

  sub_2CD820();
  v528 = v722;
  (*(v722 + 104))(v457, enum case for CommonAudio.Noun.library(_:), v461);
  (*(v528 + 56))(v457, 0, 1, v461);
  v529 = *(v715 + 48);
  sub_F3F4(v480, v462, &qword_34D698, &qword_2D1598);
  sub_F3F4(v457, v462 + v529, &qword_34D698, &qword_2D1598);
  v530 = v480;
  v531 = *(v528 + 48);
  if (v531(v462, 1, v461) == 1)
  {
    sub_30B8(v457, &qword_34D698, &qword_2D1598);
    sub_30B8(v530, &qword_34D698, &qword_2D1598);
    v532 = v531(v462 + v529, 1, v461);
    v505 = v748;
    if (v532 == 1)
    {
      sub_30B8(v462, &qword_34D698, &qword_2D1598);
      v778 = 0;
      v783 = 0;
      v784 = 0;
      v785 = 0;
      v527 = 2;
      goto LABEL_257;
    }

    goto LABEL_247;
  }

  v533 = v698;
  sub_F3F4(v462, v698, &qword_34D698, &qword_2D1598);
  v534 = v531(v462 + v529, 1, v461);
  v505 = v748;
  if (v534 == 1)
  {
    sub_30B8(v750, &qword_34D698, &qword_2D1598);
    sub_30B8(v751, &qword_34D698, &qword_2D1598);
    (*(v722 + 8))(v533, v461);
LABEL_247:
    sub_30B8(v462, &qword_34D690, &qword_2D1590);
    v778 = 0;
    v783 = 0;
    v784 = 0;
    v785 = 0;
    v527 = v707;
    goto LABEL_257;
  }

  v535 = v722;
  v536 = v462 + v529;
  v537 = v692;
  (*(v722 + 32))(v692, v536, v461);
  sub_186D70(&qword_34D6E8, &type metadata accessor for CommonAudio.Noun, &protocol conformance descriptor for CommonAudio.Noun);
  v538 = sub_2CE250();
  v539 = *(v535 + 8);
  v539(v537, v461);
  sub_30B8(v750, &qword_34D698, &qword_2D1598);
  sub_30B8(v751, &qword_34D698, &qword_2D1598);
  v539(v533, v461);
  sub_30B8(v462, &qword_34D698, &qword_2D1598);
  v778 = 0;
  v783 = 0;
  v784 = 0;
  v785 = 0;
  v540 = (v538 & 1) == 0;
  v527 = v707;
  if (!v540)
  {
    v527 = 2;
  }

LABEL_257:
  v545 = sub_2CD720();
  v546 = v767;
  v547 = v772;
  (v766)(v767, v729, v772);
  v548 = sub_17F758(v546, v545);

  v727(v546, v547);
  v549 = 2;
  if ((v548 & 1) == 0)
  {
    v549 = v527;
  }

  v774 = v549;
  v550 = sub_2CD860();
  v551 = sub_7EF68(v550);
  v553 = v552;

  if (!v553)
  {
    v554 = v770;
    v556 = v771;
    v560 = v773;
    goto LABEL_279;
  }

  v554 = sub_BF40C(v551, v553);
  v556 = v555;

  v557 = v771;
  v558 = v770;
  v559 = v782;
  if (v782)
  {
    v560 = v773;
    if (v556)
    {
      if (v505)
      {
        if (v505 == &dword_0 + 2)
        {

          v505 = 0;
          v560 = 0;
          v784 = v557;
          v558 = v764;
          v557 = v559;
LABEL_277:

          v778 = v554;
          v784 = v556;
          goto LABEL_278;
        }

        goto LABEL_268;
      }

      goto LABEL_270;
    }
  }

  else
  {
    v560 = v773;
    if (v556)
    {
      if (v505)
      {
LABEL_268:
        v561 = v505 == &dword_0 + 2;
        if (v771)
        {
          goto LABEL_277;
        }

LABEL_271:
        if (v561)
        {
          v560 = (&dword_0 + 2);
          goto LABEL_279;
        }

        v557 = 0;
        goto LABEL_277;
      }

LABEL_270:
      v561 = 1;
      if (v771)
      {
        goto LABEL_277;
      }

      goto LABEL_271;
    }
  }

LABEL_278:
  v554 = v558;
  v556 = v557;
LABEL_279:
  v567 = sub_2CD890();
  v568 = sub_7EF68(v567);
  v570 = v569;

  if (v570)
  {
    v571 = sub_BF40C(v568, v570);
    v573 = v572;
  }

  else
  {
    v571 = 0;
    v573 = 0;
  }

  v574 = sub_2CD7F0();
  *&v788 = sub_7EFAC(v574);
  v781 = v575;
  v779 = v576;
  v578 = v577;

  if (!v578)
  {
    v579 = sub_2CD7E0();
    *&v788 = sub_7EFAC(v579);
    v781 = v580;
    v779 = v581;
    v578 = v582;

    if (!v578)
    {
      v777 = 0;
      v587 = v782;
      if (v782)
      {
        goto LABEL_287;
      }

LABEL_292:
      if (v573)
      {
        if (!v505)
        {
          v588 = 0;
          v589 = 0;
          if (v556)
          {
            goto LABEL_295;
          }

          goto LABEL_298;
        }

        goto LABEL_294;
      }

LABEL_296:
      v571 = v554;
      v573 = v556;
LABEL_302:
      if (!v560 || v505)
      {
        if (v505 == &dword_10 + 2)
        {
          if (v560 == &dword_4 + 1)
          {
            v505 = (&dword_4 + 1);
          }

          else
          {
            v505 = (&dword_10 + 2);
          }
        }
      }

      else
      {
        v505 = v560;
      }

      if (v587)
      {
        if (!v505)
        {
          goto LABEL_314;
        }

        if (!v573)
        {

          goto LABEL_315;
        }
      }

      v764 = v571;
      goto LABEL_315;
    }
  }

  v777 = v578;
  v583 = sub_BF40C(v788, v578);
  if (v584)
  {
    v585 = v583;
    v586 = v584;

    v571 = v585;
    v573 = v586;
  }

  v587 = v782;
  if (!v782)
  {
    goto LABEL_292;
  }

LABEL_287:
  if (!v573)
  {
    goto LABEL_296;
  }

  if (!v505)
  {
    v589 = 0;
    v588 = 1;
    if (v556)
    {
      goto LABEL_295;
    }

    goto LABEL_298;
  }

  if (v505 != &dword_0 + 3)
  {
LABEL_294:
    v588 = 0;
    v589 = v505 != &dword_0 + 3;
    if (v556)
    {
LABEL_295:
      v783 = v571;
      v785 = v573;
      v573 = v556;
LABEL_301:

      v571 = v554;
      goto LABEL_302;
    }

LABEL_298:
    if (v589 || (v588 & 1) != 0)
    {
      v783 = v571;
      v785 = v573;
      v573 = 0;
    }

    else
    {
      if (!v777)
      {
        v560 = (&dword_0 + 3);
        goto LABEL_302;
      }

      v610 = v779;

      v560 = (&dword_0 + 3);
      v769 = v781;
      v780 = v610;
      v554 = v571;
    }

    goto LABEL_301;
  }

  v783 = v571;
  v785 = v573;
LABEL_314:

  v782 = v587;
LABEL_315:
  v590 = v758;
  v591 = v757;
  v592 = v787;
  if (sub_2CD920())
  {
    sub_2CD4F0();
  }

  sub_334A0(0, &qword_34D6E0, INMediaSearch_ptr);
  v786 = v733;

  v593 = sub_2CE630();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v594 = v759;
  v595 = sub_3ED0(v759, static Logger.default);
  swift_beginAccess();
  (*(v590 + 16))(v591, v595, v594);
  v596 = v593;
  v597 = sub_2CDFE0();
  v598 = sub_2CE690();

  v599 = os_log_type_enabled(v597, v598);
  v600 = v789;
  if (v599)
  {
    v601 = swift_slowAlloc();
    v602 = swift_slowAlloc();
    v790 = v602;
    *v601 = 136315138;
    v603 = v596;
    v604 = [v603 description];
    v605 = sub_2CE270();
    v607 = v606;

    v608 = sub_3F08(v605, v607, &v790);

    *(v601 + 4) = v608;
    _os_log_impl(&dword_0, v597, v598, "ConverterHelpers#convertMediaSearch mediaSearch: %s", v601, 0xCu);
    sub_306C(v602);

    (*(v758 + 8))(v757, v759);
    (*(v736 + 8))(v787, v789);
  }

  else
  {

    (*(v590 + 8))(v591, v594);
    (*(v736 + 8))(v592, v600);
  }

  sub_6FB3C(v788, v777, v781, v779);
  sub_30B8(v765, &qword_34D6A0, &unk_2D3490);
  return v596;
}

id sub_1866D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20410(&qword_34D710, &qword_2D15E8);
  v20[0] = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_20410(&qword_34D718, &unk_2D15F0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v20 - v10;
  v12 = *(a2 - 8);
  __chkstk_darwin(v9);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, a2);
  sub_2CD870();
  v15 = sub_2CD4D0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {
    sub_30B8(v11, &qword_34D718, &unk_2D15F0);
  }

  else
  {
    v17 = sub_2AA550();
    (*(v16 + 8))(v11, v15);
    if (v17)
    {
      goto LABEL_7;
    }
  }

  if (sub_2CD8A0())
  {
    sub_2CB0C0();
    sub_334A0(0, &qword_34D720, INDateComponentsRange_ptr);
    sub_2CB1E0();
    v18 = sub_2CB1F0();
    (*(v20[0] + 8))(v7, v5);
    v22 = sub_2CAD30();
    v18(&v21, &v22);

    v17 = v21;
  }

  else
  {
    v17 = 0;
  }

LABEL_7:
  (*(v12 + 8))(v14, a2);
  return v17;
}

void *sub_186A50(uint64_t a1)
{
  v2 = sub_2CD500();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_20410(&qword_353160, &qword_2D96A0);
    v9 = sub_2CEC90();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_186D70(&qword_353150, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute);
      v16 = sub_2CE220();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_186D70(&qword_353158, &type metadata accessor for CommonAudio.Attribute, &protocol conformance descriptor for CommonAudio.Attribute);
          v23 = sub_2CE250();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_186D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

objc_class *sub_186DB8(uint64_t a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_334A0(0, &qword_34D6E0, INMediaSearch_ptr);
  v8 = sub_2CE630();
  v9 = [a2 identifier];
  if (v9)
  {
    v10 = v9;
    sub_2CE270();
  }

  v11 = sub_2CE620();

  v12 = v11;
  v13.super.isa = sub_62CF4(a1, 0, 0);
  isa = v13.super.isa;
  v15.super.isa = sub_2CE610(v13).super.isa;

  v16 = [(objc_class *)v15.super.isa artistName];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = sub_2CE270();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
LABEL_7:
    v22 = [a2 artist];
    if (v22)
    {

      v23 = [a2 artist];
      if (v23)
      {
        v24 = v23;
        sub_2CE270();
      }

      v25 = sub_2CE620();

      v15.super.isa = v25;
    }
  }

  v26 = [(objc_class *)v15.super.isa mediaName];
  if (!v26)
  {
    goto LABEL_15;
  }

  v27 = v26;
  v28 = sub_2CE270();
  v30 = v29;

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
LABEL_15:
    v32 = [a2 title];
    if (v32)
    {

      v33 = [a2 title];
      if (v33)
      {
        v34 = v33;
        sub_2CE270();
      }

      v35 = sub_2CE620();

      v15.super.isa = v35;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v36 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v36, v4);
  v37 = v15.super.isa;
  v38 = sub_2CDFE0();
  v39 = sub_2CE690();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v53 = v41;
    *v40 = 136315138;
    v42 = v37;
    v43 = [(objc_class *)v42 description];
    v52 = v4;
    v44 = v43;
    v45 = sub_2CE270();
    v51 = v7;
    v46 = v45;
    v48 = v47;

    v49 = sub_3F08(v46, v48, &v53);

    *(v40 + 4) = v49;
    _os_log_impl(&dword_0, v38, v39, "ConverterHelpers#convertDisambiguatedMediaSearch updatedMediaSearch: %s", v40, 0xCu);
    sub_306C(v41);

    (*(v5 + 8))(v51, v52);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return v37;
}

uint64_t sub_187344()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v3, v0);
  v10 = sub_2CC040();
  v11 = &protocol witness table for NowPlayingProvider;
  sub_F390(&v9);
  sub_2CC030();
  v7 = v0;
  v8 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v6);
  sub_2CC2A0();
  type metadata accessor for UpdateMediaAffinityFlowStrategy();
  v4 = swift_allocObject();
  sub_F338(&v9, v4 + 16);
  result = sub_F338(&v6, v4 + 56);
  qword_35F768 = v4;
  return result;
}

uint64_t sub_187484()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v3, v0);
  result = sub_70B6C();
  qword_35F770 = result;
  return result;
}

uint64_t sub_187554()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v3, v0);
  sub_2CD100();
  result = sub_2CD0F0();
  static UpdateMediaAffinity.intentHandler = result;
  return result;
}

uint64_t *UpdateMediaAffinity.intentHandler.unsafeMutableAddressor()
{
  if (qword_34BFB0 != -1)
  {
    swift_once();
  }

  return &static UpdateMediaAffinity.intentHandler;
}

id static UpdateMediaAffinity.intentHandler.getter()
{
  if (qword_34BFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static UpdateMediaAffinity.intentHandler;

  return v0;
}

void static UpdateMediaAffinity.intentHandler.setter(uint64_t a1)
{
  if (qword_34BFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static UpdateMediaAffinity.intentHandler;
  static UpdateMediaAffinity.intentHandler = a1;
}

uint64_t (*static UpdateMediaAffinity.intentHandler.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_34BFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18781C()
{

  sub_306C((v0 + 24));
  sub_306C((v0 + 64));
  sub_306C((v0 + 104));

  sub_306C((v0 + 160));

  return v0;
}

uint64_t sub_18787C()
{
  sub_18781C();

  return swift_deallocClassInstance();
}

uint64_t _s25NeedsConfirmationStrategyCMa_1(uint64_t a1)
{
  result = qword_3531B8;
  if (!qword_3531B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1878F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v31 = a2;
  v30 = sub_2CE990();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CE180();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AddMediaCatDialogService();
  v7 = swift_allocObject();
  *(v7 + 55) = -18;
  *(v7 + 16) = 0xD000000000000011;
  *(v7 + 24) = 0x80000000002DA8D0;
  *(v7 + 32) = a1;
  strcpy((v7 + 40), "AddMediaIntent");
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v8 = sub_2CC2B0();
  v41 = v8;
  v42 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v40);
  sub_2CC2A0();
  v9 = sub_2CC360();
  v38 = v9;
  v39 = &protocol witness table for StringsFileResolver;
  sub_F390(&v37);
  sub_2CC350();
  v10 = sub_2CB4A0();
  v11 = sub_2CB490();
  v35 = v10;
  v36 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v34 = v11;
  type metadata accessor for AddMediaDialogProvider(0);
  v12 = swift_allocObject();
  v12[15] = v7;
  sub_EEAC(&v40, (v12 + 16));
  sub_EEAC(&v34, (v12 + 21));
  sub_EEAC(&v37, v33);
  sub_F338(&v34, v32);
  sub_306C(&v37);
  sub_306C(&v40);
  v12[13] = 0xD000000000000011;
  v12[14] = 0x80000000002DA8D0;
  v12[2] = a1;
  sub_F338(v33, (v12 + 3));
  sub_F338(v32, (v12 + 8));
  v41 = v9;
  v42 = &protocol witness table for StringsFileResolver;
  sub_F390(&v40);
  sub_2CC350();
  sub_20410(&qword_3532E0, qword_2D5890);
  v13 = swift_allocObject();
  sub_F338(&v40, v13 + 16);
  *(v13 + 56) = v12;
  v41 = v8;
  v42 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v40);

  sub_2CC2A0();
  type metadata accessor for SiriAudioOutputProvider();
  v14 = swift_allocObject();
  sub_F338(&v40, v14 + 16);
  v41 = v8;
  v42 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v40);
  sub_2CC2A0();
  v15 = sub_2CB490();
  v38 = v10;
  v39 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v37 = v15;
  v16 = sub_2CC900();
  swift_allocObject();
  v17 = sub_2CC8F0();
  v41 = v16;
  v42 = &protocol witness table for AppleMediaServicesProvider;
  *&v40 = v17;
  v38 = v8;
  v39 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v37);
  sub_2CC2A0();
  v18 = sub_2CB490();
  v35 = v10;
  v36 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v34 = v18;
  if (qword_34BF88 != -1)
  {
    swift_once();
  }

  v19 = qword_35F740;

  sub_2C9A00();
  v20 = v25;
  sub_2CE170();
  v21 = v28;
  sub_2CE980();
  v22 = sub_2CBA00();

  sub_306C(v31);
  (*(v29 + 8))(v21, v30);
  (*(v26 + 8))(v20, v27);
  v3[26] = v22;
  v3[2] = v12;
  sub_F338(&v40, (v3 + 3));
  sub_F338(&v37, (v3 + 8));
  sub_F338(&v34, (v3 + 13));
  v3[18] = v19;
  sub_F338(v33, (v3 + 20));
  v3[25] = v14;
  v3[19] = v13;
  return v3;
}

uint64_t sub_187E44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v89 = a8;
  v90 = a7;
  v69 = a6;
  v84 = a5;
  v79 = a4;
  v74 = a2;
  v75 = a3;
  v87 = a1;
  v8 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v67 - v9;
  v85 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v85);
  v86 = (&v67 - v11);
  v12 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v12 - 8);
  v83 = &v67 - v13;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v14 - 8);
  v82 = &v67 - v15;
  v16 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v16 - 8);
  v80 = &v67 - v17;
  v72 = sub_2CCB30();
  v18 = *(v72 - 8);
  __chkstk_darwin(v72);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2CCAC0();
  v21 = *(v71 - 8);
  __chkstk_darwin(v71);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v67 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v68 = &v67 - v29;
  __chkstk_darwin(v28);
  v31 = &v67 - v30;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v70 = v10;
  v32 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  v33 = v25;
  v34 = *(v25 + 16);
  v77 = v25 + 16;
  v78 = v32;
  v35 = v24;
  v76 = v34;
  v34(v31, v32, v24);
  v36 = sub_2CDFE0();
  v37 = sub_2CE670();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "FlowResponseUtils#submitGenericError Handling dialog Result...", v38, 2u);
  }

  v39 = *(v33 + 8);
  v73 = v35;
  v88 = v33 + 8;
  v81 = v39;
  v39(v31, v35);
  v40 = v71;
  (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.ModuleName.fru(_:), v71);
  v41 = v72;
  (*(v18 + 104))(v20, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v72);
  v75 = sub_2CCAE0();
  (*(v18 + 8))(v20, v41);
  (*(v21 + 8))(v23, v40);
  sub_35E0(v79, v79[3]);
  v42 = enum case for ActivityType.failed(_:);
  v43 = sub_2C9C20();
  v44 = *(v43 - 8);
  v45 = v80;
  (*(v44 + 104))(v80, v42, v43);
  (*(v44 + 56))(v45, 0, 1, v43);
  v46 = sub_2CA130();
  v47 = v82;
  (*(*(v46 - 8) + 56))(v82, 1, 1, v46);
  v48 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v49 = sub_2C98F0();
  v50 = *(v49 - 8);
  v51 = v83;
  (*(v50 + 104))(v83, v48, v49);
  (*(v50 + 56))(v51, 0, 1, v49);
  sub_2CB4E0();

  sub_30B8(v51, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v47, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v45, &qword_34CB88, &unk_2D0D90);
  v52 = v86;
  sub_188844(v87, v86);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = *v52;
    v54 = v67;
    v55 = v73;
    v76(v67, v78, v73);
    v56 = sub_2CDFE0();
    v57 = sub_2CE680();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v56, v57, "FlowResponseUtils#submitGenericError Could not properly create dialog", v58, 2u);
    }

    v81(v54, v55);
    swift_errorRetain();
    v90(v53);
  }

  else
  {
    v60 = v70;
    sub_24BE0(v52, v70);
    sub_2CB5B0();
    sub_2C9C10();
    swift_allocObject();
    sub_2C9BF0();
    v61 = sub_2C9BD0();
    sub_35E0(v69, v69[3]);
    sub_2CA150();
    v62 = v68;
    v63 = v73;
    v76(v68, v78, v73);
    v64 = sub_2CDFE0();
    v65 = sub_2CE670();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v64, v65, "FlowResponseUtils#submitGenericError Dialog successfully generated", v66, 2u);
    }

    v81(v62, v63);
    v90(0);

    return sub_30B8(v60, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_188844(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3519A0, &qword_2D0980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_1888B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v31 = a8;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v18 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v18 && (a1 != a4 || a5 != a2) && (sub_2CEEA0() & 1) == 0)
    {
      v19 = qword_34BF58;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = sub_3ED0(v14, static Logger.default);
      swift_beginAccess();
      (*(v15 + 16))(v17, v20, v14);

      v21 = sub_2CDFE0();
      v22 = sub_2CE670();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v29 = v21;
        v24 = v23;
        v30 = swift_slowAlloc();
        v32[0] = v30;
        *v24 = 136315394;
        *(v24 + 4) = sub_3F08(a1, a2, v32);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_3F08(a6, a7, v32);
        v25 = v29;
        _os_log_impl(&dword_0, v29, v22, "DisplayApp#init found override display name: %s for bundle: %s", v24, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v15 + 8))(v17, v14);
      v26 = v31;
      swift_beginAccess();
      *(v26 + 16) = a1;
      *(v26 + 24) = a2;
    }
  }

  return sub_2CEA40();
}