uint64_t sub_1EE8(void *a1)
{
  sub_106870();
  sub_106850();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_137060, &qword_10BC60);
  sub_104AC0();
  sub_262C(a1, v4);
  sub_2690();
  sub_104A90();
  sub_104AE0();
  sub_262C(a1, v3);
  sub_26E4();
  sub_104A40();
  sub_104AB0();
  sub_2738(a1);
  sub_2784(v3);
  return sub_27D8(v4);
}

uint64_t sub_2068()
{
  v1 = v0[2];
  v2 = [v1 alarmSearch];
  v3 = [v1 alarms];
  if (v3)
  {
    v4 = v3;
    sub_106AA0();
    v5 = sub_106EE0();
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  _s17ResultSetProviderCMa();
  swift_allocObject();
  v0[3] = sub_C1F58(v2, v5);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_2194;

  return sub_C208C();
}

uint64_t sub_2194(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_22EC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_22EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t variable initialization expression of UndoChangeStatusFlow.operation@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for AlarmNLv4Constants.AlarmVerb.enable(_:);
  v3 = sub_106960();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_24B8(void (*a1)(void))
{
  v2 = sub_106200();
  __chkstk_darwin(v2 - 8);
  a1(0);
  sub_1061E0();
  return sub_1060D0();
}

uint64_t sub_2570@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_25E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_262C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2690()
{
  result = qword_137068;
  if (!qword_137068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137068);
  }

  return result;
}

unint64_t sub_26E4()
{
  result = qword_137070;
  if (!qword_137070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137070);
  }

  return result;
}

uint64_t sub_2738(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t type metadata accessor for SearchAlarmCATs_Async(uint64_t a1)
{
  result = qword_1373E0;
  if (!qword_1373E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_28C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t sub_2A4C()
{
  sub_1060E0();

  return swift_deallocClassInstance();
}

uint64_t sub_2A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&unk_137430, &qword_107DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2AF4(uint64_t a1)
{
  v2 = sub_25E4(&unk_137430, &qword_107DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2B5C(unsigned __int8 a1)
{
  sub_107190(20);

  v1 = sub_106E60();
  v3 = v2;

  v5._countAndFlagsBits = v1;
  v5._object = v3;
  sub_106E80(v5);

  return 0xD000000000000012;
}

unint64_t sub_2D40(char a1)
{
  sub_107190(20);

  v5._countAndFlagsBits = sub_106E60();
  sub_106E80(v5);

  v6._countAndFlagsBits = 0x2E65756C61562ELL;
  v6._object = 0xE700000000000000;
  sub_106E80(v6);
  v1 = sub_106E40();
  v3 = v2;

  v7._countAndFlagsBits = v1;
  v7._object = v3;
  sub_106E80(v7);

  return 0xD000000000000012;
}

uint64_t sub_2E70()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137440);
  sub_135C4(v0, qword_137440);
  return sub_106A80();
}

uint64_t sub_2EBC@<X0>(char *a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v321 = a2;
  v328 = a4;
  v311 = sub_1065A0();
  v310 = *(v311 - 8);
  __chkstk_darwin(v311);
  v309 = &v280 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_1053C0();
  v314 = *(v315 - 8);
  v7 = __chkstk_darwin(v315);
  v306 = &v280 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v313 = &v280 - v10;
  __chkstk_darwin(v9);
  v316 = &v280 - v11;
  v12 = sub_105520();
  v322 = *(v12 - 8);
  v323 = v12;
  v13 = __chkstk_darwin(v12);
  v320 = &v280 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v293 = &v280 - v15;
  v303 = sub_105460();
  v308 = *(v303 - 8);
  v16 = __chkstk_darwin(v303);
  v289 = &v280 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v299 = &v280 - v18;
  v19 = sub_105410();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v282 = &v280 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v283 = &v280 - v24;
  v25 = __chkstk_darwin(v23);
  v284 = &v280 - v26;
  __chkstk_darwin(v25);
  v312 = &v280 - v27;
  v28 = sub_105380();
  v302 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v298 = &v280 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v285 = &v280 - v32;
  __chkstk_darwin(v31);
  v286 = &v280 - v33;
  v297 = sub_106960();
  v301 = *(v297 - 8);
  __chkstk_darwin(v297);
  v288 = &v280 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_25E4(&qword_137498, &unk_108C50);
  v35 = __chkstk_darwin(v296);
  v290 = &v280 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v295 = &v280 - v37;
  v38 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v39 = __chkstk_darwin(v38 - 8);
  v287 = &v280 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v291 = &v280 - v42;
  v43 = __chkstk_darwin(v41);
  v292 = &v280 - v44;
  v45 = __chkstk_darwin(v43);
  v305 = &v280 - v46;
  v47 = __chkstk_darwin(v45);
  v307 = &v280 - v48;
  __chkstk_darwin(v47);
  v294 = &v280 - v49;
  v50 = sub_25E4(&qword_1374F0, &qword_1080F0);
  __chkstk_darwin(v50 - 8);
  v318 = &v280 - v51;
  v52 = sub_1053E0();
  v53 = *(v52 - 8);
  v54 = __chkstk_darwin(v52);
  v319 = &v280 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v329 = (&v280 - v56);
  v57 = sub_105E80();
  v324 = *(v57 - 8);
  v325 = v57;
  v58 = __chkstk_darwin(v57);
  v326 = (&v280 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v58);
  v61 = &v280 - v60;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v62 = sub_106D20();
  v327 = sub_135C4(v62, qword_137440);
  v63 = sub_106D10();
  v64 = sub_106FA0();
  v65 = os_log_type_enabled(v63, v64);
  v317 = a3;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v304 = v52;
    v300 = v28;
    v281 = v19;
    v67 = v66;
    v68 = v20;
    v69 = a1;
    v70 = swift_slowAlloc();
    *&v331 = v70;
    *v67 = 136315138;
    v330 = a3;
    swift_getMetatypeMetadata();
    v71 = sub_106E30();
    v73 = v53;
    v74 = sub_722E8(v71, v72, &v331);

    *(v67 + 4) = v74;
    v53 = v73;
    _os_log_impl(&dword_0, v63, v64, "AlarmFlowUtils.decideActionForInput with intent type: %s", v67, 0xCu);
    sub_2738(v70);
    a1 = v69;
    v20 = v68;

    v19 = v281;
    v28 = v300;
    v52 = v304;
  }

  v75 = sub_13AA4(a1);
  v76 = v329;
  if ((v75 & 1) == 0)
  {
    return sub_104E60();
  }

  sub_105360();
  v77 = (*(v53 + 88))(v76, v52);
  if (v77 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v316 = a1;
    v78 = v53;
    (*(v53 + 96))(v76, v52);
    goto LABEL_11;
  }

  if (v77 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v316 = a1;
    v78 = v53;
    (*(v53 + 96))(v76, v52);
    sub_25E4(&qword_13B010, &unk_1087A0);

LABEL_11:
    v80 = v325;
    v81 = *(v324 + 32);
    v81(v61, v76, v325);
    v82 = v326;
    v81(v326, v61, v80);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    v83 = sub_B3800(v82);
    v84 = sub_106D10();
    v85 = sub_106FC0();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = v52;
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v331 = v88;
      *v87 = 136315138;
      v330 = v83;
      sub_14F4C(&qword_137480, type metadata accessor for AlarmNLIntent, &unk_10A860);
      v89 = sub_105620();
      v91 = sub_722E8(v89, v90, &v331);

      *(v87 + 4) = v91;
      _os_log_impl(&dword_0, v84, v85, "alarmNLIntent: %s", v87, 0xCu);
      sub_2738(v88);

      v52 = v86;
    }

    v92 = sub_B372C();
    if (v92 > 1)
    {
      if (v92 != 2)
      {
        v107 = v319;
        sub_105360();
        v108 = sub_106630();
        v109 = v318;
        (*(*(v108 - 8) + 56))(v318, 1, 1, v108);
        v110 = sub_579C(v107, v109);
        sub_16F70(v109, &qword_1374F0, &qword_1080F0);
        (*(v78 + 8))(v107, v52);
        if (!v110 || (v111 = swift_dynamicCastUnknownClass(), v110, !v111))
        {
          v122 = sub_106D10();
          v123 = sub_106FB0();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            *&v331 = v125;
            *v124 = 136315138;
            v126 = sub_107480();
            v128 = sub_722E8(v126, v127, &v331);

            *(v124 + 4) = v128;
            _os_log_impl(&dword_0, v122, v123, "Flows stack receives unexpected intent type. Expecting: %s", v124, 0xCu);
            sub_2738(v125);
          }

          sub_104E60();
        }

        v112 = sub_106D10();
        v113 = sub_106FC0();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_0, v112, v113, "Request was not cancelled by user. Proceed.", v114, 2u);
        }

        goto LABEL_27;
      }
    }

    else if (!v92 || (v321 & 1) != 0)
    {
LABEL_27:
      sub_104E50();
    }

    sub_104E40();
  }

  if (v77 == enum case for Parse.directInvocation(_:))
  {
    (*(v53 + 96))(v76, v52);
    v93 = v314;
    v94 = v316;
    v95 = v315;
    (*(v314 + 32))(v316, v76, v315);
    v96 = *(v93 + 16);
    v97 = v313;
    v96(v313, v94, v95);
    v98 = sub_106D10();
    v99 = sub_106FC0();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *&v331 = v101;
      *v100 = 136315138;
      v96(v306, v97, v95);
      v102 = sub_106E30();
      v104 = v103;
      v105 = *(v93 + 8);
      v105(v97, v95);
      v106 = sub_722E8(v102, v104, &v331);

      *(v100 + 4) = v106;
      _os_log_impl(&dword_0, v98, v99, "[AlarmFlowUtils.decideActionForDisambiguationInput] Got directInvocation in input parse: %s", v100, 0xCu);
      sub_2738(v101);
      v94 = v316;
    }

    else
    {

      v105 = *(v93 + 8);
      v105(v97, v95);
    }

    v129 = sub_1053B0();
    if (v129)
    {
      v130 = v129;
      v131 = v310;
      v132 = v309;
      v133 = v311;
      (*(v310 + 104))(v309, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v311);
      v134 = sub_106590();
      v136 = v135;
      (*(v131 + 8))(v132, v133);
      if (*(v130 + 16) && (v137 = sub_32658(v134, v136), (v138 & 1) != 0))
      {
        sub_135FC(*(v130 + 56) + 32 * v137, &v331);
      }

      else
      {
        v331 = 0u;
        v332 = 0u;
      }

      if (*(&v332 + 1))
      {
        if (swift_dynamicCast())
        {

          sub_104E50();
          return (v105)(v94, v95);
        }
      }

      else
      {
        sub_16F70(&v331, &qword_137490, qword_108C80);
      }
    }

    v164 = sub_106D10();
    v165 = sub_106FB0();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      *v166 = 0;
      _os_log_impl(&dword_0, v164, v165, "[AlarmFlowUtils.decideActionForDisambiguationInput] Direct invocation parse contains invalid alarm ID", v166, 2u);
    }

    sub_104E60();
    return (v105)(v94, v95);
  }

  if (v77 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v316 = a1;
    (*(v53 + 96))(v76, v52);
    v115 = *v76;
    if (v321)
    {
      objc_opt_self();
      v116 = swift_dynamicCastObjCClass();
      v117 = v305;
      v118 = v307;
      if (v116 || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        v119 = sub_106D10();
        v120 = sub_106FC0();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          *v121 = 0;
          _os_log_impl(&dword_0, v119, v120, "User accepted the task, will handle.", v121, 2u);
LABEL_116:
        }

LABEL_117:

        sub_104E50();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      objc_opt_self();
      v148 = swift_dynamicCastObjCClass();
      v117 = v305;
      v118 = v307;
      if (v148)
      {
        v149 = sub_106D10();
        v150 = sub_106FC0();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          *v151 = 0;
          _os_log_impl(&dword_0, v149, v150, "User cancelled the task.", v151, 2u);
        }

        sub_104E40();
        return swift_unknownObjectRelease();
      }
    }

    swift_getObjectType();
    v175 = sub_107000();
    v304 = v52;
    v280 = v53;
    v329 = v115;
    if (v175)
    {
      v176 = v294;
      sub_274CC(v294);

      v177 = 0;
    }

    else
    {
      v177 = 1;
      v176 = v294;
    }

    v188 = v301;
    v189 = *(v301 + 56);
    v190 = v297;
    v189(v176, v177, 1, v297);
    (*(v188 + 104))(v118, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v190);
    v189(v118, 0, 1, v190);
    v191 = *(v296 + 48);
    v192 = v295;
    sub_14994(v176, v295, &unk_1374A0, &qword_10BB30);
    v193 = v192;
    sub_14994(v118, v192 + v191, &unk_1374A0, &qword_10BB30);
    v194 = *(v188 + 48);
    if (v194(v193, 1, v190) == 1)
    {
      sub_16F70(v118, &unk_1374A0, &qword_10BB30);
      v195 = v295;
      sub_16F70(v176, &unk_1374A0, &qword_10BB30);
      if (v194(v195 + v191, 1, v190) == 1)
      {
        sub_16F70(v195, &unk_1374A0, &qword_10BB30);
        v196 = v329;
LABEL_113:
        swift_unknownObjectRetain();
        v119 = sub_106D10();
        v204 = sub_106FC0();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v119, v204))
        {
          goto LABEL_117;
        }

        v205 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *&v331 = v206;
        *v205 = 136315138;
        v330 = v196;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v268 = sub_106E30();
        v270 = sub_722E8(v268, v269, &v331);

        *(v205 + 4) = v270;
        v210 = "Received .noVerb in nlv4 firstUsoTask – handling: %s";
        goto LABEL_115;
      }
    }

    else
    {
      sub_14994(v193, v117, &unk_1374A0, &qword_10BB30);
      if (v194(v193 + v191, 1, v190) != 1)
      {
        v263 = v301;
        v264 = v288;
        (*(v301 + 32))(v288, v193 + v191, v190);
        sub_14F4C(&qword_138400, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
        v265 = v193;
        v266 = sub_106E00();
        v267 = *(v263 + 8);
        v267(v264, v190);
        sub_16F70(v307, &unk_1374A0, &qword_10BB30);
        sub_16F70(v294, &unk_1374A0, &qword_10BB30);
        v267(v117, v190);
        sub_16F70(v265, &unk_1374A0, &qword_10BB30);
        v197 = v304;
        v198 = v280;
        v196 = v329;
        if (v266)
        {
          goto LABEL_113;
        }

LABEL_92:
        v199 = v319;
        sub_105360();
        v200 = sub_106630();
        v201 = v318;
        (*(*(v200 - 8) + 56))(v318, 1, 1, v200);
        v202 = sub_579C(v199, v201);
        sub_16F70(v201, &qword_1374F0, &qword_1080F0);
        (*(v198 + 8))(v199, v197);
        if (!v202 || (v203 = swift_dynamicCastUnknownClass(), v202, !v203))
        {
          v211 = v302;
          v212 = v286;
          (*(v302 + 16))(v286, v316, v28);
          v213 = sub_106D10();
          v214 = sub_106FB0();
          if (os_log_type_enabled(v213, v214))
          {
            v215 = swift_slowAlloc();
            *&v331 = swift_slowAlloc();
            *v215 = 136315394;
            v216 = sub_107480();
            v218 = sub_722E8(v216, v217, &v331);

            *(v215 + 4) = v218;
            *(v215 + 12) = 2080;
            sub_14F4C(&unk_1374D0, &type metadata accessor for Input, &protocol conformance descriptor for Input);
            v219 = sub_107340();
            v221 = v220;
            (*(v211 + 8))(v212, v28);
            v222 = sub_722E8(v219, v221, &v331);

            *(v215 + 14) = v222;
            _os_log_impl(&dword_0, v213, v214, "Intent from parse does not match IntentType. Expected %s, received %s", v215, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            (*(v211 + 8))(v212, v28);
          }

          sub_104E60();
          return swift_unknownObjectRelease();
        }

        swift_unknownObjectRetain();
        v119 = sub_106D10();
        v204 = sub_106FC0();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v119, v204))
        {
          goto LABEL_117;
        }

        v205 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *&v331 = v206;
        *v205 = 136315138;
        v330 = v196;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v207 = sub_106E30();
        v209 = sub_722E8(v207, v208, &v331);

        *(v205 + 4) = v209;
        v210 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_115:
        _os_log_impl(&dword_0, v119, v204, v210, v205, 0xCu);
        sub_2738(v206);

        goto LABEL_116;
      }

      sub_16F70(v307, &unk_1374A0, &qword_10BB30);
      v195 = v295;
      sub_16F70(v294, &unk_1374A0, &qword_10BB30);
      (*(v301 + 8))(v117, v190);
    }

    sub_16F70(v195, &qword_137498, &unk_108C50);
    v197 = v304;
    v198 = v280;
    v196 = v329;
    goto LABEL_92;
  }

  if (v77 != enum case for Parse.uso(_:))
  {
    v152 = v52;
    v153 = v302;
    v154 = v298;
    (*(v302 + 16))(v298, a1, v28);
    v155 = sub_106D10();
    v156 = sub_106FB0();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *&v331 = v158;
      *v157 = 136315138;
      v159 = v154;
      sub_105360();
      v160 = sub_106E30();
      v280 = v53;
      v162 = v161;
      (*(v153 + 8))(v159, v28);
      v163 = sub_722E8(v160, v162, &v331);
      v53 = v280;

      *(v157 + 4) = v163;
      _os_log_impl(&dword_0, v155, v156, "Received an unsupported parse for disambiguation window prompt: %s", v157, 0xCu);
      sub_2738(v158);

      v76 = v329;
    }

    else
    {

      (*(v153 + 8))(v154, v28);
    }

    sub_104E60();
    return (*(v53 + 8))(v76, v152);
  }

  v300 = v28;
  v316 = a1;
  v280 = v53;
  v139 = *(v53 + 96);
  v304 = v52;
  v139(v76, v52);
  v326 = v20;
  (v20[4])(v312, v76, v19);
  v140 = v299;
  sub_105400();
  v141 = sub_105450();
  v142 = *(v308 + 8);
  v308 += 8;
  v329 = v142;
  result = (v142)(v140, v303);
  v143 = *(v141 + 16);
  v144 = (v322 + 8);
  if (v321)
  {
    v145 = 0;
    v146 = v293;
    while (1)
    {
      if (v143 == v145)
      {
        goto LABEL_79;
      }

      if (v145 >= *(v141 + 16))
      {
        goto LABEL_131;
      }

      (*(v322 + 16))(v146, v141 + ((*(v322 + 80) + 32) & ~*(v322 + 80)) + *(v322 + 72) * v145, v323);
      if (sub_1054C0() & 1) != 0 || (sub_1054F0())
      {
        break;
      }

      v147 = sub_1054D0();
      result = (*v144)(v146, v323);
      ++v145;
      if (v147)
      {

LABEL_82:
        v183 = sub_106D10();
        v184 = sub_106FC0();
        v185 = os_log_type_enabled(v183, v184);
        v186 = v326;
        if (v185)
        {
          v187 = swift_slowAlloc();
          *v187 = 0;
          _os_log_impl(&dword_0, v183, v184, "USO parse userDialogActs contains hasAccepted, hasWantedToProceed or hasRejected; returning .handle() since these are window actions", v187, 2u);
        }

        sub_104E50();
        return v186[1](v312, v19);
      }
    }

    (*v144)(v146, v323);
    goto LABEL_82;
  }

  v167 = 0;
  v168 = v323;
  do
  {
    if (v143 == v167)
    {
LABEL_79:

      v178 = v289;
      sub_105400();
      v179 = sub_105440();
      (v329)(v178, v303);
      if (v179)
      {
        v180 = v292;
        sub_274CC(v292);

        v181 = 0;
        v182 = v297;
      }

      else
      {
        v181 = 1;
        v182 = v297;
        v180 = v292;
      }

      v223 = v291;
      v224 = v301;
      v225 = *(v301 + 56);
      v225(v180, v181, 1, v182);
      (*(v224 + 104))(v223, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v182);
      v225(v223, 0, 1, v182);
      v226 = *(v296 + 48);
      v227 = v290;
      sub_14994(v180, v290, &unk_1374A0, &qword_10BB30);
      sub_14994(v223, v227 + v226, &unk_1374A0, &qword_10BB30);
      v228 = *(v224 + 48);
      if (v228(v227, 1, v182) == 1)
      {
        sub_16F70(v223, &unk_1374A0, &qword_10BB30);
        sub_16F70(v180, &unk_1374A0, &qword_10BB30);
        v229 = v228(v227 + v226, 1, v182) == 1;
        v230 = v227;
        v231 = v326;
        if (!v229)
        {
          goto LABEL_105;
        }

        sub_16F70(v230, &unk_1374A0, &qword_10BB30);
      }

      else
      {
        v232 = v287;
        sub_14994(v227, v287, &unk_1374A0, &qword_10BB30);
        if (v228(v227 + v226, 1, v182) == 1)
        {
          sub_16F70(v223, &unk_1374A0, &qword_10BB30);
          sub_16F70(v180, &unk_1374A0, &qword_10BB30);
          (*(v301 + 8))(v232, v182);
          v230 = v227;
          v231 = v326;
LABEL_105:
          sub_16F70(v230, &qword_137498, &unk_108C50);
          v233 = v280;
LABEL_106:
          v234 = v319;
          sub_105360();
          v235 = sub_106630();
          v236 = v318;
          (*(*(v235 - 8) + 56))(v318, 1, 1, v235);
          v237 = sub_579C(v234, v236);
          sub_16F70(v236, &qword_1374F0, &qword_1080F0);
          (*(v233 + 8))(v234, v304);
          if (!v237 || (v238 = swift_dynamicCastUnknownClass(), v237, !v238))
          {
            v250 = v302;
            v251 = v285;
            v252 = v300;
            (*(v302 + 16))(v285, v316, v300);
            v253 = sub_106D10();
            v254 = sub_106FB0();
            if (os_log_type_enabled(v253, v254))
            {
              v255 = swift_slowAlloc();
              *&v331 = swift_slowAlloc();
              *v255 = 136315394;
              v256 = sub_107480();
              v258 = sub_722E8(v256, v257, &v331);

              *(v255 + 4) = v258;
              *(v255 + 12) = 2080;
              sub_14F4C(&unk_1374D0, &type metadata accessor for Input, &protocol conformance descriptor for Input);
              v259 = sub_107340();
              v261 = v260;
              (*(v250 + 8))(v251, v252);
              v262 = sub_722E8(v259, v261, &v331);

              *(v255 + 14) = v262;
              _os_log_impl(&dword_0, v253, v254, "Intent from parse does not match IntentType. Expected %s, received %s", v255, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v250 + 8))(v251, v252);
            }

            sub_104E60();
            return v326[1](v312, v19);
          }

          v239 = v231[2];
          v240 = v282;
          (v239)(v282, v312, v19);
          v241 = sub_106D10();
          v242 = sub_106FC0();
          if (os_log_type_enabled(v241, v242))
          {
            v243 = swift_slowAlloc();
            v329 = swift_slowAlloc();
            *&v331 = v329;
            *v243 = 136315138;
            (v239)(v283, v240, v19);
            v244 = sub_106E30();
            v246 = v245;
            v247 = v231[1];
            v247(v240, v19);
            v248 = sub_722E8(v244, v246, &v331);

            *(v243 + 4) = v248;
            v249 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_122:
            _os_log_impl(&dword_0, v241, v242, v249, v243, 0xCu);
            sub_2738(v329);

LABEL_124:
            sub_104E50();
            return v247(v312, v19);
          }

          goto LABEL_123;
        }

        v271 = v301;
        v272 = v227 + v226;
        v273 = v288;
        (*(v301 + 32))(v288, v272, v182);
        sub_14F4C(&qword_138400, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
        LODWORD(v329) = sub_106E00();
        v274 = *(v271 + 8);
        v274(v273, v182);
        sub_16F70(v223, &unk_1374A0, &qword_10BB30);
        sub_16F70(v180, &unk_1374A0, &qword_10BB30);
        v274(v232, v182);
        sub_16F70(v227, &unk_1374A0, &qword_10BB30);
        v233 = v280;
        v231 = v326;
        if ((v329 & 1) == 0)
        {
          goto LABEL_106;
        }
      }

      v275 = v231[2];
      v240 = v284;
      (v275)(v284, v312, v19);
      v241 = sub_106D10();
      v242 = sub_106FC0();
      if (os_log_type_enabled(v241, v242))
      {
        v243 = swift_slowAlloc();
        v329 = swift_slowAlloc();
        *&v331 = v329;
        *v243 = 136315138;
        (v275)(v283, v240, v19);
        v276 = sub_106E30();
        v278 = v277;
        v247 = v231[1];
        v247(v240, v19);
        v279 = sub_722E8(v276, v278, &v331);

        *(v243 + 4) = v279;
        v249 = "Received .noVerb in USO firstUsoTask – handling: %s";
        goto LABEL_122;
      }

LABEL_123:

      v247 = v231[1];
      v247(v240, v19);
      goto LABEL_124;
    }

    if (v167 >= *(v141 + 16))
    {
      __break(1u);
LABEL_131:
      __break(1u);
      return result;
    }

    v169 = v322;
    v170 = v320;
    (*(v322 + 16))(v320, v141 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v322 + 72) * v167++, v168);
    v171 = sub_1054D0();
    result = (*(v169 + 8))(v170, v168);
  }

  while ((v171 & 1) == 0);

  v172 = sub_106D10();
  v173 = sub_106FC0();
  if (os_log_type_enabled(v172, v173))
  {
    v174 = swift_slowAlloc();
    *v174 = 0;
    _os_log_impl(&dword_0, v172, v173, "USO parse userDialogActs contains hasRejected, and we're in a non-windowed config -- returning .cancel()!", v174, 2u);
  }

  sub_104E40();
  return v326[1](v312, v19);
}

void *sub_579C(void (*a1)(void, void), uint64_t a2)
{
  v499 = a1;
  v3 = sub_25E4(&qword_137500, &qword_107E10);
  __chkstk_darwin(v3 - 8);
  v431 = &v423 - v4;
  v5 = sub_25E4(&qword_137508, &qword_107E18);
  __chkstk_darwin(v5 - 8);
  v424 = &v423 - v6;
  v7 = sub_25E4(&qword_137510, &qword_107E20);
  __chkstk_darwin(v7 - 8);
  v425 = &v423 - v8;
  v9 = sub_25E4(&unk_1374A0, &qword_10BB30);
  __chkstk_darwin(v9 - 8);
  v476 = &v423 - v10;
  v463 = sub_106960();
  v464 = *(v463 - 8);
  v11 = __chkstk_darwin(v463);
  v457 = &v423 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v460 = &v423 - v13;
  v477 = sub_1065A0();
  v486 = *(v477 - 8);
  v14 = __chkstk_darwin(v477);
  v429 = &v423 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v433 = &v423 - v17;
  v18 = __chkstk_darwin(v16);
  v426 = &v423 - v19;
  v20 = __chkstk_darwin(v18);
  v434 = &v423 - v21;
  v22 = __chkstk_darwin(v20);
  v428 = &v423 - v23;
  v24 = __chkstk_darwin(v22);
  v436 = &v423 - v25;
  v26 = __chkstk_darwin(v24);
  v445 = &v423 - v27;
  __chkstk_darwin(v26);
  v475 = &v423 - v28;
  v489 = sub_1065E0();
  v492 = *(v489 - 8);
  v29 = __chkstk_darwin(v489);
  v448 = &v423 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v488 = &v423 - v31;
  v32 = sub_1053C0();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v478 = &v423 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v452 = &v423 - v37;
  v38 = __chkstk_darwin(v36);
  v465 = &v423 - v39;
  v40 = __chkstk_darwin(v38);
  v435 = &v423 - v41;
  __chkstk_darwin(v40);
  v43 = &v423 - v42;
  v442 = sub_1047F0();
  v441 = *(v442 - 8);
  __chkstk_darwin(v442);
  v440 = &v423 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v444 = sub_1047D0();
  v443 = *(v444 - 8);
  v45 = __chkstk_darwin(v444);
  v427 = &v423 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v439 = &v423 - v47;
  v447 = sub_1045E0();
  v446 = *(v447 - 8);
  v48 = __chkstk_darwin(v447);
  v430 = &v423 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v432 = &v423 - v51;
  __chkstk_darwin(v50);
  v438 = &v423 - v52;
  v53 = sub_25E4(&qword_137518, &qword_107E28);
  __chkstk_darwin(v53 - 8);
  v470 = &v423 - v54;
  v55 = sub_104670();
  v471 = *(v55 - 8);
  v56 = __chkstk_darwin(v55);
  v437 = &v423 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v450 = &v423 - v58;
  v455 = sub_106DB0();
  v454 = *(v455 - 8);
  v59 = __chkstk_darwin(v455);
  v449 = &v423 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v451 = &v423 - v61;
  v459 = sub_106010();
  v458 = *(v459 - 8);
  v62 = __chkstk_darwin(v459);
  v500 = &v423 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v453 = &v423 - v65;
  v66 = __chkstk_darwin(v64);
  v456 = &v423 - v67;
  __chkstk_darwin(v66);
  v461 = &v423 - v68;
  v469 = sub_106040();
  v468 = *(v469 - 8);
  __chkstk_darwin(v469);
  v467 = &v423 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v473 = sub_1050A0();
  v472 = *(v473 - 8);
  __chkstk_darwin(v473);
  v485 = &v423 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v481 = sub_105460();
  v480 = *(v481 - 8);
  __chkstk_darwin(v481);
  v479 = &v423 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v484 = sub_105410();
  v483 = *(v484 - 8);
  __chkstk_darwin(v484);
  v482 = &v423 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_105E80();
  v496 = *(v73 - 8);
  v497 = v73;
  v74 = __chkstk_darwin(v73);
  v491 = &v423 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __chkstk_darwin(v74);
  v495 = &v423 - v77;
  __chkstk_darwin(v76);
  v494 = &v423 - v78;
  *&v503 = sub_1053E0();
  v501 = *(v503 - 8);
  v79 = __chkstk_darwin(v503);
  v462 = &v423 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __chkstk_darwin(v79);
  v466 = &v423 - v82;
  __chkstk_darwin(v81);
  v502 = (&v423 - v83);
  v84 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v85 = __chkstk_darwin(v84);
  v487 = &v423 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __chkstk_darwin(v85);
  v89 = &v423 - v88;
  __chkstk_darwin(v87);
  v91 = &v423 - v90;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v92 = sub_106D20();
  v93 = sub_135C4(v92, qword_137440);
  v498 = a2;
  sub_14994(a2, v91, &qword_1374F0, &qword_1080F0);
  v94 = sub_106D10();
  v95 = sub_106FC0();
  v96 = os_log_type_enabled(v94, v95);
  v490 = v32;
  v474 = v55;
  if (v96)
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v493 = v33;
    v99 = v98;
    *&v506 = v98;
    *v97 = 136315138;
    sub_14994(v91, v89, &qword_1374F0, &qword_1080F0);
    v100 = sub_106E30();
    v102 = v101;
    sub_16F70(v91, &qword_1374F0, &qword_1080F0);
    v103 = sub_722E8(v100, v102, &v506);

    *(v97 + 4) = v103;
    _os_log_impl(&dword_0, v94, v95, "AlarmFlowUtils.makeIntentFromParse() called with halInfo %s.", v97, 0xCu);
    sub_2738(v99);
    v33 = v493;
  }

  else
  {

    sub_16F70(v91, &qword_1374F0, &qword_1080F0);
  }

  v104 = v499;
  v105 = v500;
  v106 = v501;
  v107 = v502;
  v108 = v501[2];
  v109 = v503;
  v108(v502, v499, v503);
  v110 = (v106[11])(v107, v109);
  if (v110 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (v106[12])(v107, v109);
    v111 = v496;
    v112 = v494;
    v113 = v107;
    v114 = v497;
    (*(v496 + 32))(v494, v113, v497);
    v115 = v495;
    (*(v111 + 16))(v495, v112, v114);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    sub_B3800(v115);
    v116 = sub_B4AF8();
    v117 = sub_B372C() == 0;
    v118 = sub_51180(v116, v498, v117);
    if (v118)
    {
      v119 = v118;
      v120 = sub_106D10();
      v121 = sub_106FC0();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_0, v120, v121, "Get a halIntent from NLv3IntentPlusServerConversion.", v122, 2u);
      }

      (*(v111 + 8))(v112, v114);
      return v119;
    }

    else
    {
      (*(v111 + 8))(v112, v114);

      return v116;
    }
  }

  if (v110 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (v106[12])(v107, v109);
    sub_25E4(&qword_13B010, &unk_1087A0);
    v125 = v496;
    v124 = v497;
    v126 = v491;
    (*(v496 + 32))(v491, v107, v497);
    v127 = v495;
    (*(v125 + 16))(v495, v126, v124);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    sub_B3800(v127);
    v128 = sub_1053D0();
    v129 = sub_B372C() == 0;
    v130 = sub_51180(v128, v498, v129);
    if (v130)
    {
      v131 = v130;
      v132 = sub_106D10();
      v133 = sub_106FC0();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_0, v132, v133, "Get a halIntent from NLv3IntentPlusServerConversion.", v134, 2u);
      }

      (*(v125 + 8))(v126, v124);
      return v131;
    }

    else
    {
      (*(v125 + 8))(v126, v124);

      return v128;
    }
  }

  if (v110 != enum case for Parse.directInvocation(_:))
  {
    if (v110 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (v106[12])(v107, v109);
      v146 = sub_8A314(*v107, v498);
      if (v146)
      {
        v147 = v146;
        swift_unknownObjectRelease();
        return v147;
      }

      v194 = sub_106D10();
      v195 = sub_106FB0();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        *v196 = 0;
        _os_log_impl(&dword_0, v194, v195, "Failed to parse alarm intent from userDialogAct", v196, 2u);
      }

      swift_unknownObjectRelease();
      return 0;
    }

    if (v110 == enum case for Parse.uso(_:))
    {
      (v106[12])(v107, v109);
      v154 = v483;
      v155 = v482;
      v156 = v484;
      (*(v483 + 32))(v482, v107, v484);
      v157 = v479;
      sub_105400();
      v158 = sub_8A4A8(v157, v498);
      (*(v480 + 8))(v157, v481);
      if (v158)
      {
        (*(v154 + 8))(v155, v156);
        return v158;
      }

      v207 = sub_106D10();
      v208 = sub_106FB0();
      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        *v209 = 0;
        _os_log_impl(&dword_0, v207, v208, "Failed to parse alarm intent from userDialogAct", v209, 2u);
      }

      (*(v154 + 8))(v155, v156);
      return 0;
    }

    if (v110 != enum case for Parse.ifClientAction(_:))
    {
      v197 = v466;
      v108(v466, v104, v109);
      v198 = sub_106D10();
      v199 = sub_106FB0();
      if (os_log_type_enabled(v198, v199))
      {
        v200 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        *&v506 = v201;
        *v200 = 136315138;
        v108(v462, v197, v503);
        v202 = sub_106E30();
        v204 = v203;
        v205 = v501[1];
        v205(v197, v503);
        v206 = sub_722E8(v202, v204, &v506);

        *(v200 + 4) = v206;
        _os_log_impl(&dword_0, v198, v199, "Received an unsupported input: %s", v200, 0xCu);
        sub_2738(v201);

        v109 = v503;
      }

      else
      {

        v205 = v501[1];
        v205(v197, v109);
      }

      v205(v502, v109);
      return 0;
    }

    (v106[12])(v107, v109);
    v173 = v472;
    v174 = v473;
    (*(v472 + 32))(v485, v107, v473);
    v501 = [objc_allocWithZone(sub_106800()) init];
    v175 = v467;
    sub_105090();
    v176 = sub_106020();
    (*(v468 + 8))(v175, v469);
    v177 = v474;
    v178 = v471;
    if (!*(v176 + 16))
    {
      goto LABEL_88;
    }

    v179 = sub_32658(0x6C6562616CLL, 0xE500000000000000);
    if (v180)
    {
      v181 = *(*(v176 + 56) + 8 * v179);
      if (*(v181 + 16))
      {
        v182 = v458;
        v183 = *(v458 + 16);
        v184 = v461;
        v185 = v459;
        v183(v461, v181 + ((*(v458 + 80) + 32) & ~*(v458 + 80)), v459);
        v186 = v456;
        v183(v456, v184, v185);
        if ((*(v182 + 88))(v186, v185) == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
        {
          (*(v182 + 96))(v186, v185);
          v187 = v454;
          v188 = v451;
          v189 = v186;
          v190 = v455;
          (*(v454 + 32))(v451, v189, v455);
          sub_106DA0();
          v192 = v191;
          (*(v187 + 8))(v188, v190);
          if (v192)
          {
            (*(v182 + 8))(v461, v185);
            v193 = sub_106E10();

            [v501 setLabel:v193];

            v173 = v472;
            v105 = v500;
            v177 = v474;
            v174 = v473;
            goto LABEL_82;
          }

          v244 = *(v182 + 8);
          v105 = v500;
        }

        else
        {
          v244 = *(v182 + 8);
          v244(v186, v185);
        }

        v177 = v474;
        v174 = v473;
        v244(v461, v185);
        v173 = v472;
      }
    }

LABEL_82:
    if (*(v176 + 16))
    {
      v261 = sub_32658(1701669236, 0xE400000000000000);
      if (v262)
      {
        v263 = *(*(v176 + 56) + 8 * v261);

        if (*(v263 + 16))
        {
          v264 = v458;
          v265 = v453;
          v266 = v459;
          (*(v458 + 16))(v453, v263 + ((*(v264 + 80) + 32) & ~*(v264 + 80)), v459);
          v267 = v264;

          (*(v264 + 32))(v105, v265, v266);
          v268 = (*(v264 + 88))(v105, v266);
          v269 = v470;
          if (v268 == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
          {
            (*(v267 + 96))(v105, v266);
            v270 = v105;
            v271 = v454;
            v272 = v449;
            v273 = v455;
            (*(v454 + 32))(v449, v270, v455);
            sub_10C0C(v269);
            (*(v271 + 8))(v272, v273);
            if ((*(v178 + 48))(v269, 1, v177) != 1)
            {
              v274 = v450;
              (*(v178 + 32))(v450, v269, v177);
              v275 = v437;
              (*(v178 + 16))(v437, v274, v177);
              v276 = sub_106D10();
              v277 = sub_106FC0();
              if (os_log_type_enabled(v276, v277))
              {
                v278 = swift_slowAlloc();
                v279 = swift_slowAlloc();
                *&v506 = v279;
                *v278 = 136315138;
                sub_14F4C(&qword_137548, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v280 = sub_107340();
                v282 = v281;
                v283 = *(v178 + 8);
                v283(v275, v474);
                v284 = sub_722E8(v280, v282, &v506);

                *(v278 + 4) = v284;
                _os_log_impl(&dword_0, v276, v277, "ifClientActionParse time: %s", v278, 0xCu);
                sub_2738(v279);
                v177 = v474;
              }

              else
              {

                v283 = *(v178 + 8);
                v283(v275, v177);
              }

              v315 = v439;
              sub_104790();
              v316 = v440;
              sub_1047E0();
              v317 = v438;
              v318 = v450;
              sub_104720();
              (*(v441 + 8))(v316, v442);
              (*(v443 + 8))(v315, v444);
              isa = sub_104560().super.isa;
              (*(v446 + 8))(v317, v447);
              v320 = v501;
              [v501 setTime:isa];

              v283(v318, v177);
              (*(v472 + 8))(v485, v473);
              return v320;
            }

            (*(v173 + 8))(v485, v174);
LABEL_91:
            sub_16F70(v269, &qword_137518, &qword_107E28);
            return v501;
          }

          (*(v173 + 8))(v485, v174);
          (*(v267 + 8))(v105, v266);
LABEL_90:
          (*(v178 + 56))(v269, 1, 1, v177);
          goto LABEL_91;
        }

        (*(v173 + 8))(v485, v174);

LABEL_89:
        v269 = v470;
        goto LABEL_90;
      }
    }

LABEL_88:

    (*(v173 + 8))(v485, v174);
    goto LABEL_89;
  }

  v500 = v93;
  (v106[12])(v107, v109);
  v493 = v33;
  v135 = v490;
  (*(v33 + 32))(v43, v107, v490);
  v423 = v43;
  v136 = sub_1053A0();
  v138 = v137;
  v139 = v492;
  v140 = v488;
  v141 = v489;
  *&v503 = *(v492 + 104);
  (v503)(v488, enum case for DirectInvocationUtils.Alarm.URI.stopAlarm(_:), v489);
  v142 = sub_1065D0();
  v144 = v143;
  v145 = *(v139 + 8);
  v492 = v139 + 8;
  v145(v140, v141);
  if (v136 == v142 && v138 == v144)
  {

LABEL_26:
    v149 = v487;
    sub_14994(v498, v487, &qword_1374F0, &qword_1080F0);
    v150 = sub_106630();
    v151 = *(v150 - 8);
    v152 = (*(v151 + 48))(v149, 1, v150);
    v153 = v493;
    if (v152 != 1)
    {
      v159 = sub_106600();
      (*(v153 + 8))(v423, v135);
      (*(v151 + 8))(v149, v150);
      return v159;
    }

    (*(v493 + 8))(v423, v135);
    sub_16F70(v149, &qword_1374F0, &qword_1080F0);
    return 0;
  }

  v148 = sub_107370();

  if (v148)
  {
    goto LABEL_26;
  }

  v160 = sub_1053B0();
  v161 = v493;
  if (!v160)
  {
    goto LABEL_62;
  }

  v502 = v160;
  v162 = v486;
  v163 = v475;
  v164 = v477;
  v497 = *(v486 + 104);
  v498 = v486 + 104;
  v497(v475, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v477);
  v165 = sub_106590();
  v167 = v166;
  v168 = *(v162 + 8);
  v486 = v162 + 8;
  v499 = v168;
  v168(v163, v164);
  v169 = v502;
  if (v502[2])
  {
    v170 = sub_32658(v165, v167);
    v171 = v476;
    if (v172)
    {
      sub_135FC(*(v169 + 56) + 32 * v170, &v506);
    }

    else
    {
      v506 = 0u;
      v507 = 0u;
    }
  }

  else
  {
    v506 = 0u;
    v507 = 0u;
    v171 = v476;
  }

  if (!*(&v507 + 1))
  {

    v214 = &qword_137490;
    v215 = qword_108C80;
    v216 = &v506;
    goto LABEL_60;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_62;
  }

  sub_106940();
  v210 = v464;
  v211 = v171;
  v212 = v171;
  v213 = v463;
  if ((*(v464 + 48))(v211, 1, v463) == 1)
  {

    v214 = &unk_1374A0;
    v215 = &qword_10BB30;
    v216 = v212;
LABEL_60:
    sub_16F70(v216, v214, v215);
LABEL_62:
    v217 = v135;
    v218 = *(v161 + 16);
    v219 = v478;
    v220 = v423;
    v218(v478, v423, v217);
    v221 = sub_106D10();
    v222 = sub_106FB0();
    if (!os_log_type_enabled(v221, v222))
    {

      v231 = *(v161 + 8);
      v231(v219, v217);
      v231(v220, v217);
      return 0;
    }

    v223 = swift_slowAlloc();
    v224 = v161;
    v225 = swift_slowAlloc();
    *&v506 = v225;
    *v223 = 136315138;
    v218(v465, v219, v217);
    v226 = sub_106E30();
    v228 = v227;
    v229 = *(v224 + 8);
    v229(v219, v217);
    v230 = sub_722E8(v226, v228, &v506);

    *(v223 + 4) = v230;
    _os_log_impl(&dword_0, v221, v222, "Received unexpected directInvocation in FlowStrategy: %s", v223, 0xCu);
    sub_2738(v225);

LABEL_64:
    v229(v423, v217);
    return 0;
  }

  v232 = v460;
  (*(v210 + 32))(v460, v212, v213);
  v233 = v457;
  (*(v210 + 16))(v457, v232, v213);
  v234 = (*(v210 + 88))(v233, v213);
  if (v234 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:) || v234 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:))
  {
    goto LABEL_159;
  }

  if (v234 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
  {

    v501 = [objc_allocWithZone(sub_106800()) init];
    v235 = sub_1053A0();
    v237 = v236;
    v238 = v448;
    v239 = v489;
    (v503)(v448, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v489);
    v240 = sub_1065D0();
    v242 = v241;
    v145(v238, v239);
    v243 = v502;
    if (v235 == v240 && v237 == v242)
    {

      goto LABEL_97;
    }

    v285 = sub_107370();

    if (v285)
    {
LABEL_97:
      v286 = sub_106D10();
      v287 = sub_106FC0();
      v288 = os_log_type_enabled(v286, v287);
      v289 = v423;
      if (v288)
      {
        v290 = swift_slowAlloc();
        *v290 = 0;
        _os_log_impl(&dword_0, v286, v287, "Making CreateAlarmIntent from undo directInvocation", v290, 2u);
      }

      v291 = v445;
      v292 = v477;
      v497(v445, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmSnapshotsJson(_:), v477);
      v293 = sub_106590();
      v295 = v294;
      v499(v291, v292);
      v296 = v490;
      if (*(v243 + 16) && (v297 = sub_32658(v293, v295), (v298 & 1) != 0))
      {
        sub_135FC(*(v243 + 56) + 32 * v297, &v506);
      }

      else
      {
        v506 = 0u;
        v507 = 0u;
      }

      if (*(&v507 + 1))
      {
        if (swift_dynamicCast())
        {
          v300 = v504;
          v299 = v505;
          sub_1044D0();
          swift_allocObject();
          sub_1044C0();
          sub_25E4(&qword_137530, &qword_1087D0);
          sub_14E2C();
          sub_1044B0();

          if (*(v506 + 16))
          {
            v503 = *(v506 + 32);
            v389 = *(v506 + 48);
            v388 = *(v506 + 56);
            v390 = *(v506 + 64);
            v391 = *(v506 + 72);

            v506 = v503;
            *&v507 = v389;
            *(&v507 + 1) = v388;
            v508 = v390;
            v509 = v391;
            v254 = sub_22820(&v506);
            sub_14DD8(v300, v299);

            goto LABEL_154;
          }

          sub_14DD8(v300, v299);
          v296 = v490;
          v289 = v423;
        }
      }

      else
      {
        sub_16F70(&v506, &qword_137490, qword_108C80);
      }

      v321 = sub_106D10();
      v322 = sub_106FB0();
      v323 = os_log_type_enabled(v321, v322);
      v324 = v463;
      if (v323)
      {
        v325 = swift_slowAlloc();
        *v325 = 0;
        _os_log_impl(&dword_0, v321, v322, "Missing alarmSnapshot in userData from directInvocation", v325, 2u);
      }

      (*(v464 + 8))(v460, v324);
      (*(v493 + 8))(v289, v296);
      return 0;
    }

    v326 = v493;
    v327 = *(v493 + 16);
    v328 = v435;
    v329 = v490;
    v327(v435, v423, v490);
    v330 = sub_106D10();
    v331 = sub_106FC0();
    if (os_log_type_enabled(v330, v331))
    {
      v332 = swift_slowAlloc();
      v333 = swift_slowAlloc();
      *&v506 = v333;
      *v332 = 136315138;
      v327(v465, v328, v329);
      v334 = sub_106E30();
      v336 = v335;
      *&v503 = *(v493 + 8);
      (v503)(v328, v329);
      v337 = sub_722E8(v334, v336, &v506);

      *(v332 + 4) = v337;
      _os_log_impl(&dword_0, v330, v331, "Making CreateAlarmIntent from directionInvocation: %s", v332, 0xCu);
      sub_2738(v333);
    }

    else
    {

      *&v503 = *(v326 + 8);
      (v503)(v328, v329);
    }

    v358 = v436;
    v359 = v477;
    v497(v436, enum case for DirectInvocationUtils.Alarm.UserInfoKey.hour(_:), v477);
    v360 = sub_106590();
    v362 = v361;
    v499(v358, v359);
    sub_2B430(v360, v362, v243, &v506);

    if (*(&v507 + 1))
    {
      if (swift_dynamicCast())
      {
        v363 = v428;
        v364 = v477;
        v497(v428, enum case for DirectInvocationUtils.Alarm.UserInfoKey.minute(_:), v477);
        v365 = sub_106590();
        v367 = v366;
        v499(v363, v364);
        sub_2B430(v365, v367, v243, &v506);

        if (*(&v507 + 1))
        {
          if (swift_dynamicCast())
          {
            v368 = v427;
            sub_104790();
            v369 = v443;
            v370 = *(v443 + 56);
            v371 = v425;
            v372 = v444;
            v370(v425, 1, 1, v444);
            (*(v441 + 56))(v424, 1, 1, v442);
            v373 = v432;
            sub_1045C0();
            sub_104590();
            sub_1045B0();
            (*(v369 + 16))(v371, v368, v372);
            v370(v371, 0, 1, v372);
            sub_1045D0();
            v374 = v431;
            sub_10F44(v373, v368, v431);
            if ((*(v446 + 48))(v374, 1, v447) == 1)
            {

              sub_16F70(v431, &qword_137500, &qword_107E10);
              v375 = sub_106D10();
              v376 = sub_106FB0();
              if (os_log_type_enabled(v375, v376))
              {
                v377 = swift_slowAlloc();
                *v377 = 0;
                _os_log_impl(&dword_0, v375, v376, "Failed to get next calendar date from directInvocation payload", v377, 2u);
              }

              (*(v443 + 8))(v427, v444);
              (*(v446 + 8))(v432, v447);
LABEL_172:
              (*(v464 + 8))(v460, v463);
              (v503)(v423, v490);
              return 0;
            }

            goto LABEL_177;
          }
        }

        else
        {
          sub_16F70(&v506, &qword_137490, qword_108C80);
        }

        v243 = v502;
      }
    }

    else
    {
      sub_16F70(&v506, &qword_137490, qword_108C80);
    }

    v405 = v434;
    v406 = v477;
    v497(v434, enum case for DirectInvocationUtils.Alarm.UserInfoKey.dateComponents(_:), v477);
    v407 = sub_106590();
    v409 = v408;
    v499(v405, v406);
    sub_2B430(v407, v409, v243, &v506);

    if (*(&v507 + 1))
    {
      if (swift_dynamicCast())
      {
        v411 = v504;
        v410 = v505;
        sub_1044D0();
        swift_allocObject();
        sub_1044C0();
        sub_14F4C(&qword_137528, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
        sub_1044B0();

        sub_14DD8(v411, v410);
        v431 = v430;
        goto LABEL_178;
      }
    }

    else
    {

      sub_16F70(&v506, &qword_137490, qword_108C80);
    }

    v412 = sub_106D10();
    v413 = sub_106FB0();
    if (os_log_type_enabled(v412, v413))
    {
      v414 = swift_slowAlloc();
      *v414 = 0;
      _os_log_impl(&dword_0, v412, v413, "Unexpected type in userData of directInvocation", v414, 2u);
    }

    goto LABEL_172;
  }

  v245 = v502;
  if (v234 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {

    v246 = sub_106D10();
    v247 = sub_106FC0();
    v248 = os_log_type_enabled(v246, v247);
    v249 = v490;
    v250 = v423;
    if (v248)
    {
      v251 = swift_slowAlloc();
      *v251 = 0;
      _os_log_impl(&dword_0, v246, v247, "Making DeleteAlarmIntent from directInvocation", v251, 2u);
    }

    sub_149FC(v245);
    v253 = v252;

    if (!v253)
    {
      (*(v464 + 8))(v460, v463);
      (*(v161 + 8))(v250, v249);
      return 0;
    }

    v254 = [objc_allocWithZone(sub_106840()) init];
    sub_106A50();
    v255 = v161;
    v256 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v257 = sub_106E10();
    v258 = sub_106E10();
    v259 = [v256 initWithIdentifier:v257 displayString:v258];

    sub_16F28(0, &qword_137520, NSNumber_ptr);
    v260 = sub_107090(1).super.super.isa;
    [v259 setIncludeSleepAlarm:v260];

    [v254 setAlarmSearch:v259];
    (*(v464 + 8))(v460, v463);
    (*(v255 + 8))(v250, v249);
    return v254;
  }

  v301 = v490;
  if (v234 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
  {
    goto LABEL_107;
  }

  if (v234 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
  {
    goto LABEL_120;
  }

  v161 = v493;
  if (v234 == enum case for AlarmNLv4Constants.AlarmVerb.read(_:) || v234 == enum case for AlarmNLv4Constants.AlarmVerb.request(_:) || v234 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:) || v234 == enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
  {
    goto LABEL_159;
  }

  if (v234 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
  {

    v378 = sub_106D10();
    v379 = sub_106FC0();
    if (os_log_type_enabled(v378, v379))
    {
      v380 = swift_slowAlloc();
      *v380 = 0;
      _os_log_impl(&dword_0, v378, v379, "Making update UpdateAlarmIntent from directInvocation", v380, 2u);
    }

    sub_149FC(v502);
    v382 = v381;

    if (v382)
    {
      v254 = [objc_allocWithZone(sub_1068D0()) init];
      sub_106A50();
      v383 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v384 = sub_106E10();
      v385 = sub_106E10();
      v386 = [v383 initWithIdentifier:v384 displayString:v385];

      sub_16F28(0, &qword_137520, NSNumber_ptr);
      v387 = sub_107090(1).super.super.isa;
      [v386 setIncludeSleepAlarm:v387];

      [v254 setAlarmSearch:v386];
LABEL_154:
      (*(v464 + 8))(v460, v463);
      (*(v493 + 8))(v423, v490);
      return v254;
    }

    goto LABEL_156;
  }

  v161 = v493;
  if (v234 == enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
  {
LABEL_159:

    v392 = *(v161 + 16);
    v393 = v452;
    v394 = v423;
    v217 = v490;
    v392(v452, v423, v490);
    v395 = sub_106D10();
    v396 = sub_106FB0();
    if (!os_log_type_enabled(v395, v396))
    {

      v404 = *(v161 + 8);
      v404(v393, v217);
      (*(v464 + 8))(v460, v463);
      v404(v394, v217);
      return 0;
    }

    v397 = swift_slowAlloc();
    v398 = v161;
    v399 = swift_slowAlloc();
    *&v506 = v399;
    *v397 = 136315138;
    v392(v465, v393, v217);
    v400 = sub_106E30();
    v402 = v401;
    v229 = *(v398 + 8);
    v229(v393, v217);
    v403 = sub_722E8(v400, v402, &v506);

    *(v397 + 4) = v403;
    _os_log_impl(&dword_0, v395, v396, "Received unhandled verb in directInvocation in FlowStrategy: %s", v397, 0xCu);
    sub_2738(v399);

    (*(v464 + 8))(v460, v463);
    goto LABEL_64;
  }

  v301 = v490;
  v245 = v502;
  if (v234 != enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
  {
    if (v234 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
    {
LABEL_120:

      v338 = sub_106D10();
      v339 = sub_106FC0();
      if (os_log_type_enabled(v338, v339))
      {
        v340 = swift_slowAlloc();
        *v340 = 0;
        _os_log_impl(&dword_0, v338, v339, "Making enable ChangeAlarmStatusIntent from directInvocation", v340, 2u);
      }

      sub_149FC(v245);
      if (v341)
      {
        v342 = [objc_allocWithZone(sub_1067A0()) init];
        sub_106A50();
        v343 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v344 = sub_106E10();
        v345 = sub_106E10();
        v346 = [v343 initWithIdentifier:v344 displayString:v345];

        sub_16F28(0, &qword_137520, NSNumber_ptr);
        v347 = sub_107090(1).super.super.isa;
        [v346 setIncludeSleepAlarm:v347];

        [v342 setAlarmSearch:v346];
        v312 = v342;
        [v342 setOperation:1];
        v313 = enum case for DirectInvocationUtils.Alarm.UserInfoKey.handleSilently(_:);
        v314 = &v461;
        goto LABEL_124;
      }

LABEL_156:
      (*(v464 + 8))(v460, v463);
      (*(v493 + 8))(v423, v490);
      return 0;
    }

    if (v234 != enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
    {
      sub_107360();
      __break(1u);
LABEL_177:
      (*(v443 + 8))(v427, v444);
      (*(v446 + 8))(v432, v447);
LABEL_178:
      (*(v446 + 32))(v432, v431, v447);
      v415 = sub_104560().super.isa;
      [v501 setTime:v415];

      v416 = v426;
      v417 = v477;
      v497(v426, enum case for DirectInvocationUtils.Alarm.UserInfoKey.label(_:), v477);
      v418 = sub_106590();
      v420 = v419;
      v499(v416, v417);
      sub_2B430(v418, v420, v502, &v506);

      if (*(&v507 + 1))
      {
        if (swift_dynamicCast())
        {
          v421 = sub_106E10();

LABEL_183:
          v422 = v501;
          [v501 setLabel:v421];

          (*(v446 + 8))(v432, v447);
          (*(v464 + 8))(v460, v463);
          (v503)(v423, v490);
          return v422;
        }
      }

      else
      {
        sub_16F70(&v506, &qword_137490, qword_108C80);
      }

      v421 = 0;
      goto LABEL_183;
    }
  }

LABEL_107:

  v302 = sub_106D10();
  v303 = sub_106FC0();
  if (os_log_type_enabled(v302, v303))
  {
    v304 = swift_slowAlloc();
    *v304 = 0;
    _os_log_impl(&dword_0, v302, v303, "Making disable ChangeAlarmStatusIntent from directInvocation", v304, 2u);
  }

  sub_149FC(v245);
  if (!v305)
  {

    (*(v464 + 8))(v460, v463);
    (*(v493 + 8))(v423, v301);
    return 0;
  }

  v306 = [objc_allocWithZone(sub_1067A0()) init];
  sub_106A50();
  v307 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v308 = sub_106E10();
  v309 = sub_106E10();
  v310 = [v307 initWithIdentifier:v308 displayString:v309];

  sub_16F28(0, &qword_137520, NSNumber_ptr);
  v311 = sub_107090(1).super.super.isa;
  [v310 setIncludeSleepAlarm:v311];

  [v306 setAlarmSearch:v310];
  v312 = v306;
  [v306 setOperation:2];
  v313 = enum case for DirectInvocationUtils.Alarm.UserInfoKey.handleSilently(_:);
  v314 = &v465;
LABEL_124:
  v348 = *(v314 - 32);
  v349 = v477;
  v497(v348, v313, v477);
  v350 = sub_106590();
  v352 = v351;
  v499(v348, v349);
  sub_2B430(v350, v352, v245, &v506);

  if (*(&v507 + 1))
  {
    if (swift_dynamicCast())
    {
      v353 = v504;
      v354 = sub_106D10();
      v355 = sub_106FC0();
      if (os_log_type_enabled(v354, v355))
      {
        v356 = swift_slowAlloc();
        *v356 = 67109120;
        *(v356 + 4) = v353;
        _os_log_impl(&dword_0, v354, v355, "Setting handleSilently = %{BOOL}d", v356, 8u);
      }

      v357 = sub_107080(v353).super.super.isa;
      [v312 setHandleSilently:v357];
    }

    (*(v464 + 8))(v460, v463);
    (*(v493 + 8))(v423, v490);
    return v312;
  }

  else
  {
    (*(v464 + 8))(v460, v463);
    (*(v493 + 8))(v423, v490);
    sub_16F70(&v506, &qword_137490, qword_108C80);
    return v312;
  }
}

uint64_t sub_99E8@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v68 = sub_105520();
  v1 = *(v68 - 8);
  v2 = __chkstk_darwin(v68);
  v61 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v60 - v4;
  v6 = sub_105460();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_105410();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1053E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_105E80();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v60 - v18;
  sub_105360();
  v20 = (*(v10 + 88))(v12, v9);
  if (v20 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v20 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      (*(v10 + 96))(v12, v9);
      sub_25E4(&qword_13B010, &unk_1087A0);

      goto LABEL_5;
    }

    if (v20 == enum case for Parse.directInvocation(_:))
    {
LABEL_14:
      v35 = sub_104E70();
      (*(*(v35 - 8) + 56))(v69, 1, 1, v35);
      return (*(v10 + 8))(v12, v9);
    }

    if (v20 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v10 + 96))(v12, v9);
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
LABEL_48:
          v59 = sub_104E70();
          return (*(*(v59 - 8) + 56))(v69, 1, 1, v59);
        }

        if (qword_136C50 != -1)
        {
          swift_once();
        }

        v53 = sub_106D20();
        sub_135C4(v53, qword_137440);
        v37 = sub_106D10();
        v38 = sub_106FC0();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          v40 = "validateCancellation: Received UserDialogAct - UserCancelled";
          goto LABEL_34;
        }

LABEL_35:

        v31 = v69;
        sub_104E40();
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      if (qword_136C50 == -1)
      {
LABEL_18:
        v36 = sub_106D20();
        sub_135C4(v36, qword_137440);
        v37 = sub_106D10();
        v38 = sub_106FC0();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          v40 = "validateCancellation: Received UserDialogAct - UserRejected";
LABEL_34:
          _os_log_impl(&dword_0, v37, v38, v40, v39, 2u);

          goto LABEL_35;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v20 != enum case for Parse.uso(_:))
      {
        goto LABEL_14;
      }

      (*(v10 + 96))(v12, v9);
      v41 = v65;
      (*(v65 + 32))(v66, v12, v67);
      v42 = v62;
      sub_105400();
      v43 = sub_105450();
      (*(v63 + 8))(v42, v64);
      v44 = 0;
      v45 = *(v43 + 16);
      v46 = v68;
      while (1)
      {
        if (v45 == v44)
        {
          v54 = 0;
          v55 = v61;
          v56 = v68;
          do
          {
            if (v45 == v54)
            {
              (*(v41 + 8))(v66, v67);

              goto LABEL_48;
            }

            if (v54 >= *(v43 + 16))
            {
              goto LABEL_50;
            }

            (*(v1 + 16))(v55, v43 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v54++, v56);
            v57 = sub_1054E0();
            (*(v1 + 8))(v55, v56);
          }

          while ((v57 & 1) == 0);

          if (qword_136C50 != -1)
          {
            swift_once();
          }

          v58 = sub_106D20();
          sub_135C4(v58, qword_137440);
          v49 = sub_106D10();
          v50 = sub_106FC0();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            v52 = "validateCancellation: USO parse userDialogActs contains hasCancelled; returning .cancel()";
            goto LABEL_44;
          }

          goto LABEL_45;
        }

        if (v44 >= *(v43 + 16))
        {
          break;
        }

        (*(v1 + 16))(v5, v43 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v44++, v46);
        v47 = sub_1054D0();
        (*(v1 + 8))(v5, v46);
        if (v47)
        {

          if (qword_136C50 != -1)
          {
            swift_once();
          }

          v48 = sub_106D20();
          sub_135C4(v48, qword_137440);
          v49 = sub_106D10();
          v50 = sub_106FC0();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            v52 = "validateCancellation: USO parse userDialogActs contains hasRejected; returning .cancel()";
LABEL_44:
            _os_log_impl(&dword_0, v49, v50, v52, v51, 2u);
          }

LABEL_45:

          v31 = v69;
          sub_104E40();
          (*(v41 + 8))(v66, v67);
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
    }

    swift_once();
    goto LABEL_18;
  }

  (*(v10 + 96))(v12, v9);
LABEL_5:
  v21 = *(v14 + 32);
  v21(v19, v12, v13);
  v21(v17, v19, v13);
  type metadata accessor for AlarmNLIntent(0);
  swift_allocObject();
  v22 = sub_B3800(v17);
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v23 = sub_106D20();
  sub_135C4(v23, qword_137440);

  v24 = sub_106D10();
  v25 = sub_106FC0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v70 = v22;
    v71 = v27;
    *v26 = 136315138;
    sub_14F4C(&qword_137480, type metadata accessor for AlarmNLIntent, &unk_10A860);
    v28 = sub_105620();
    v30 = sub_722E8(v28, v29, &v71);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v24, v25, "validateCancellation: %s", v26, 0xCu);
    sub_2738(v27);
  }

  if (sub_B372C() - 1 < 2)
  {
    v31 = v69;
    sub_104E40();

LABEL_11:
    v32 = sub_104E70();
    return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  }

  v34 = sub_104E70();
  (*(*(v34 - 8) + 56))(v69, 1, 1, v34);
}

uint64_t sub_A570@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v218) = a2;
  v215 = a1;
  v199 = sub_105380();
  v191 = *(v199 - 8);
  __chkstk_darwin(v199);
  v198 = &v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E4(&unk_1383C0, &qword_107DF0);
  __chkstk_darwin(v5 - 8);
  v182 = &v180 - v6;
  v184 = sub_106440();
  v183 = *(v184 - 8);
  v7 = __chkstk_darwin(v184);
  v181 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v185 = &v180 - v9;
  v194 = sub_1065A0();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E4(&unk_137460, &unk_108C60);
  __chkstk_darwin(v11 - 8);
  v205 = &v180 - v12;
  v209 = sub_1050D0();
  v206 = *(v209 - 8);
  v13 = __chkstk_darwin(v209);
  v202 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v201 = &v180 - v15;
  v207 = sub_1053C0();
  v16 = *(v207 - 8);
  v17 = __chkstk_darwin(v207);
  v187 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v203 = &v180 - v20;
  __chkstk_darwin(v19);
  v22 = &v180 - v21;
  v23 = sub_105520();
  v24 = *(v23 - 8);
  v213 = v23;
  v214 = v24;
  v25 = __chkstk_darwin(v23);
  v200 = &v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v204 = &v180 - v28;
  v29 = __chkstk_darwin(v27);
  v208 = &v180 - v30;
  __chkstk_darwin(v29);
  v210 = &v180 - v31;
  v190 = sub_105460();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v188 = &v180 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_105410();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v195 = &v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_1053E0();
  v34 = *(v217 - 8);
  v35 = __chkstk_darwin(v217);
  v186 = &v180 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v216 = &v180 - v37;
  v38 = sub_105E80();
  v211 = *(v38 - 8);
  v212 = v38;
  v39 = __chkstk_darwin(v38);
  v41 = &v180 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = &v180 - v42;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v44 = sub_106D20();
  v45 = sub_135C4(v44, qword_137440);
  v46 = sub_106D10();
  v47 = sub_106FC0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "AlarmFlowUtils.validateConfirmation(input:isRoomConfirmation:)", v48, 2u);
  }

  if (v218)
  {
    v49 = sub_106D10();
    v50 = sub_106FC0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "Searching for room confirmation, which alarms doesn't support", v51, 2u);
    }

    return sub_104E60();
  }

  v53 = v34;
  v54 = a3;
  v56 = v215;
  v55 = v216;
  sub_105360();
  v57 = v217;
  v58 = (*(v53 + 88))(v55, v217);
  if (v58 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v53 + 96))(v55, v57);
LABEL_15:
    v59 = v55;
    v60 = v212;
    v61 = *(v211 + 32);
    v61(v43, v59, v212);
    v61(v41, v43, v60);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    v62 = sub_B3800(v41);
    v63 = sub_106D10();
    v64 = sub_106FC0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v221[0] = v66;
      *v65 = 136315138;
      v219 = v62;
      sub_14F4C(&qword_137480, type metadata accessor for AlarmNLIntent, &unk_10A860);
      v67 = sub_105620();
      v69 = sub_722E8(v67, v68, v221);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_0, v63, v64, "validateConfirmation: %s", v65, 0xCu);
      sub_2738(v66);
    }

    v70 = sub_B372C();
    if ((v70 - 1) >= 2)
    {
      if (v70)
      {
        sub_104E60();
      }

      else
      {
        sub_104E50();
      }
    }

    else
    {
      sub_104E40();
    }
  }

  if (v58 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v53 + 96))(v55, v217);
    sub_25E4(&qword_13B010, &unk_1087A0);

    goto LABEL_15;
  }

  v71 = v54;
  if (v58 != enum case for Parse.directInvocation(_:))
  {
    if (v58 != enum case for Parse.NLv4IntentOnly(_:))
    {
      v106 = v217;
      if (v58 == enum case for Parse.uso(_:))
      {
        v218 = v71;
        (*(v53 + 96))(v55, v217);
        (*(v196 + 32))(v195, v55, v197);
        v107 = v188;
        sub_105400();
        v108 = sub_105450();
        result = (*(v189 + 8))(v107, v190);
        v109 = 0;
        v110 = *(v108 + 16);
        v111 = v213;
        v112 = v214;
        do
        {
          if (v110 == v109)
          {
            v130 = 0;
            v131 = v213;
            v132 = v214;
            do
            {
              if (v110 == v130)
              {
                v157 = 0;
                v158 = v213;
                v159 = v214;
                do
                {
                  if (v110 == v157)
                  {
                    v166 = 0;
                    v167 = v213;
                    v168 = v214;
                    do
                    {
                      if (v110 == v166)
                      {

                        sub_104E60();
                        return (*(v196 + 8))(v195, v197);
                      }

                      if (v166 >= *(v108 + 16))
                      {
                        goto LABEL_111;
                      }

                      v169 = v200;
                      (*(v168 + 16))(v200, v108 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v166++, v167);
                      v170 = sub_1054E0();
                      result = (*(v168 + 8))(v169, v167);
                    }

                    while ((v170 & 1) == 0);

                    v162 = sub_106D10();
                    v163 = sub_106FC0();
                    if (!os_log_type_enabled(v162, v163))
                    {
                      goto LABEL_88;
                    }

                    v164 = swift_slowAlloc();
                    *v164 = 0;
                    v165 = "validateConfirmation: USO parse userDialogActs contains hasCancelled; returning .cancel()";
                    goto LABEL_87;
                  }

                  if (v157 >= *(v108 + 16))
                  {
                    goto LABEL_110;
                  }

                  v160 = v204;
                  (*(v159 + 16))(v204, v108 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v157++, v158);
                  v161 = sub_1054D0();
                  result = (*(v159 + 8))(v160, v158);
                }

                while ((v161 & 1) == 0);

                v162 = sub_106D10();
                v163 = sub_106FC0();
                if (!os_log_type_enabled(v162, v163))
                {
                  goto LABEL_88;
                }

                v164 = swift_slowAlloc();
                *v164 = 0;
                v165 = "validateConfirmation: USO parse userDialogActs contains hasRejected; returning .cancel()";
LABEL_87:
                _os_log_impl(&dword_0, v162, v163, v165, v164, 2u);

LABEL_88:

                sub_104E40();
                return (*(v196 + 8))(v195, v197);
              }

              if (v130 >= *(v108 + 16))
              {
                goto LABEL_109;
              }

              v133 = v208;
              (*(v132 + 16))(v208, v108 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v130++, v131);
              v134 = sub_1054F0();
              result = (*(v132 + 8))(v133, v131);
            }

            while ((v134 & 1) == 0);

            v115 = sub_106D10();
            v116 = sub_106FC0();
            if (!os_log_type_enabled(v115, v116))
            {
              goto LABEL_59;
            }

            v117 = swift_slowAlloc();
            *v117 = 0;
            v118 = "validateConfirmation: USO parse userDialogActs contains hasWantedToProceed; returning .handle()";
            goto LABEL_58;
          }

          if (v109 >= *(v108 + 16))
          {
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            return result;
          }

          v113 = v210;
          (*(v112 + 16))(v210, v108 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v109++, v111);
          v114 = sub_1054C0();
          result = (*(v112 + 8))(v113, v111);
        }

        while ((v114 & 1) == 0);

        v115 = sub_106D10();
        v116 = sub_106FC0();
        if (!os_log_type_enabled(v115, v116))
        {
          goto LABEL_59;
        }

        v117 = swift_slowAlloc();
        *v117 = 0;
        v118 = "validateConfirmation: USO parse userDialogActs contains hasAccepted; returning .handle()";
LABEL_58:
        _os_log_impl(&dword_0, v115, v116, v118, v117, 2u);

LABEL_59:

        sub_104E50();
        return (*(v196 + 8))(v195, v197);
      }

      else
      {
        v119 = v191;
        (*(v191 + 16))(v198, v56, v199);
        v120 = sub_106D10();
        v121 = sub_106FB0();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v123 = v198;
          v218 = v71;
          v124 = v122;
          v125 = swift_slowAlloc();
          v221[0] = v125;
          *v124 = 136315138;
          sub_105360();
          v126 = sub_106E30();
          v128 = v127;
          (*(v119 + 8))(v123, v199);
          v129 = sub_722E8(v126, v128, v221);
          v106 = v217;

          *(v124 + 4) = v129;
          _os_log_impl(&dword_0, v120, v121, "validateConfirmation: Received unsupported parse for confirmation: %s", v124, 0xCu);
          sub_2738(v125);
        }

        else
        {

          (*(v119 + 8))(v198, v199);
        }

        sub_104E60();
        return (*(v53 + 8))(v216, v106);
      }
    }

    (*(v53 + 96))(v55, v217);
    v94 = *v55;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      swift_unknownObjectRetain();
      v95 = sub_106D10();
      v96 = sub_106FC0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v221[0] = v98;
        *v97 = 136315138;
        v219 = v94;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v99 = sub_106E30();
        v101 = sub_722E8(v99, v100, v221);

        *(v97 + 4) = v101;
        _os_log_impl(&dword_0, v95, v96, "validateConfirmation: Received UserDialogAct - %s", v97, 0xCu);
        sub_2738(v98);
      }

      sub_104E50();
      return swift_unknownObjectRelease();
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v153 = sub_106D10();
      v154 = sub_106FC0();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        v156 = "validateConfirmation: Received UserDialogAct - UserRejected";
LABEL_92:
        _os_log_impl(&dword_0, v153, v154, v156, v155, 2u);
      }
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        sub_104E60();
        return swift_unknownObjectRelease();
      }

      v153 = sub_106D10();
      v154 = sub_106FC0();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        v156 = "validateConfirmation: Received UserDialogAct - UserCancelled";
        goto LABEL_92;
      }
    }

    sub_104E40();
    return swift_unknownObjectRelease();
  }

  v215 = v45;
  (*(v53 + 96))(v55, v217);
  v72 = v16;
  v73 = *(v16 + 32);
  v74 = v207;
  v73(v22, v55, v207);
  v75 = v205;
  sub_106580();
  v76 = v206;
  if ((*(v206 + 48))(v75, 1, v209) == 1)
  {
    sub_16F70(v75, &unk_137460, &unk_108C60);
    v77 = sub_1053B0();
    if (v77)
    {
      v78 = v77;
      v218 = v72;
      v79 = v193;
      v80 = v192;
      v81 = v194;
      (*(v193 + 104))(v192, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v194);
      v82 = sub_106590();
      v84 = v83;
      (*(v79 + 8))(v80, v81);
      if (*(v78 + 16))
      {
        v217 = v22;
        v85 = sub_32658(v82, v84);
        v87 = v86;

        if (v87)
        {
          sub_135FC(*(v78 + 56) + 32 * v85, v221);

          v88 = swift_dynamicCast();
          v22 = v217;
          if (v88)
          {
            v90 = v219;
            v89 = v220;

            v91 = v182;
            sub_106420();
            v92 = v183;
            v93 = v184;
            if ((*(v183 + 48))(v91, 1, v184) != 1)
            {
              (*(v92 + 32))(v185, v91, v93);

              v171 = sub_106D10();
              v172 = sub_106FC0();

              if (os_log_type_enabled(v171, v172))
              {
                v173 = swift_slowAlloc();
                v174 = swift_slowAlloc();
                v221[0] = v174;
                *v173 = 136315138;
                v175 = sub_722E8(v90, v89, v221);

                *(v173 + 4) = v175;
                _os_log_impl(&dword_0, v171, v172, "validateConfirmation: Received confirmation directInvocation, buttonPressed: %s", v173, 0xCu);
                sub_2738(v174);
                v92 = v183;

                v93 = v184;
              }

              else
              {
              }

              v176 = v181;
              (*(v92 + 104))(v181, enum case for ButtonOption.yes(_:), v93);
              sub_14F4C(&qword_138410, &type metadata accessor for ButtonOption, &protocol conformance descriptor for ButtonOption);
              sub_106EB0();
              sub_106EB0();
              if (v221[0] == v219 && v221[1] == v220)
              {
                v177 = 1;
              }

              else
              {
                v177 = sub_107370();
              }

              v178 = *(v92 + 8);
              v178(v176, v93);

              v179 = (v218 + 8);
              if (v177)
              {
                sub_104E50();
              }

              else
              {
                sub_104E40();
              }

              v178(v185, v93);
              return (*v179)(v217, v74);
            }

            sub_16F70(v91, &unk_1383C0, &qword_107DF0);
          }
        }

        else
        {

          v22 = v217;
        }
      }

      else
      {
      }

      v72 = v218;
    }

    v218 = v71;
    v140 = *(v72 + 16);
    v140(v203, v22, v74);
    v141 = sub_106D10();
    v142 = sub_106FC0();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v217 = v22;
      v145 = v144;
      v221[0] = v144;
      *v143 = 136315138;
      v146 = v203;
      v140(v187, v203, v74);
      v147 = sub_106E30();
      v149 = v148;
      v150 = v146;
      v151 = *(v72 + 8);
      v151(v150, v74);
      v152 = sub_722E8(v147, v149, v221);

      *(v143 + 4) = v152;
      _os_log_impl(&dword_0, v141, v142, "validateConfirmation: Request was not cancelled by user. Proceed with directInvocation %s", v143, 0xCu);
      sub_2738(v145);
      v22 = v217;
    }

    else
    {

      v151 = *(v72 + 8);
      v151(v203, v74);
    }

    sub_104E50();
    return (v151)(v22, v74);
  }

  v102 = v201;
  v103 = v209;
  (*(v76 + 32))(v201, v75, v209);
  v104 = v202;
  (*(v76 + 16))(v202, v102, v103);
  v105 = (*(v76 + 88))(v104, v103);
  if (v105 == enum case for ConfirmationResponse.confirmed(_:))
  {
    sub_104E50();
LABEL_49:
    (*(v76 + 8))(v102, v209);
    return (*(v72 + 8))(v22, v74);
  }

  if (v105 == enum case for ConfirmationResponse.rejected(_:))
  {
    sub_104E40();
    goto LABEL_49;
  }

  v135 = sub_106D10();
  v136 = sub_106FB0();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *v137 = 0;
    _os_log_impl(&dword_0, v135, v136, "validateConfirmation: Received an unknown, unhandled SiriKit confirmation, returning .ignore() for interaction", v137, 2u);
    v102 = v201;
  }

  sub_104E60();
  v138 = *(v76 + 8);
  v139 = v209;
  v138(v102, v209);
  (*(v72 + 8))(v22, v74);
  return (v138)(v202, v139);
}

void sub_C140(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v568 = a4;
  v499 = a3;
  v531 = a2;
  v567 = a1;
  v564 = a6;
  v7 = sub_25E4(&unk_1383C0, &qword_107DF0);
  __chkstk_darwin(v7 - 8);
  v502 = &v470 - v8;
  v509 = sub_106440();
  v9 = *(v509 - 8);
  v10 = __chkstk_darwin(v509);
  v498 = &v470 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v470 - v12;
  v513 = sub_1065A0();
  v512 = *(v513 - 8);
  __chkstk_darwin(v513);
  v511 = &v470 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25E4(&unk_137460, &unk_108C60);
  __chkstk_darwin(v15 - 8);
  v523 = &v470 - v16;
  v525 = sub_1050D0();
  v524 = *(v525 - 8);
  v17 = __chkstk_darwin(v525);
  v518 = &v470 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v517 = &v470 - v19;
  v527 = sub_1053C0();
  v528 = *(v527 - 8);
  __chkstk_darwin(v527);
  v526 = &v470 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v536 = sub_105520();
  v539 = *(v536 - 8);
  v21 = __chkstk_darwin(v536);
  v505 = &v470 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v535 = &v470 - v23;
  v514 = sub_105460();
  v519 = *(v514 - 8);
  v24 = __chkstk_darwin(v514);
  v484 = &v470 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v504 = &v470 - v27;
  __chkstk_darwin(v26);
  v510 = &v470 - v28;
  v29 = sub_105410();
  v516 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v481 = &v470 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v478 = &v470 - v33;
  v34 = __chkstk_darwin(v32);
  v476 = &v470 - v35;
  __chkstk_darwin(v34);
  v520 = &v470 - v36;
  v507 = sub_105380();
  v506 = *(v507 - 8);
  v37 = __chkstk_darwin(v507);
  v503 = &v470 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v482 = &v470 - v40;
  __chkstk_darwin(v39);
  v479 = &v470 - v41;
  v493 = sub_106960();
  v495 = *(v493 - 8);
  __chkstk_darwin(v493);
  v477 = &v470 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v492 = sub_25E4(&qword_137498, &unk_108C50);
  v43 = __chkstk_darwin(v492);
  v486 = &v470 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v480 = &v470 - v45;
  v46 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v47 = __chkstk_darwin(v46 - 8);
  v485 = &v470 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v491 = &v470 - v50;
  v51 = __chkstk_darwin(v49);
  v483 = &v470 - v52;
  v53 = __chkstk_darwin(v51);
  v475 = &v470 - v54;
  v55 = __chkstk_darwin(v53);
  v489 = &v470 - v56;
  __chkstk_darwin(v55);
  v490 = &v470 - v57;
  v544 = sub_1053E0();
  v542 = *(v544 - 8);
  v58 = __chkstk_darwin(v544);
  v532 = &v470 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v543 = &v470 - v60;
  v548 = sub_105E80();
  v547 = *(v548 - 8);
  v61 = __chkstk_darwin(v548);
  v540 = &v470 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v546 = &v470 - v63;
  v553 = sub_104E70();
  v557 = *(v553 - 8);
  __chkstk_darwin(v553);
  v534 = &v470 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v551 = sub_25E4(&unk_1383D0, &qword_107DF8);
  __chkstk_darwin(v551);
  v561 = &v470 - v65;
  v66 = sub_25E4(&unk_1374B0, &unk_108C70);
  v67 = __chkstk_darwin(v66 - 8);
  v541 = &v470 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __chkstk_darwin(v67);
  v556 = &v470 - v70;
  __chkstk_darwin(v69);
  v552 = &v470 - v71;
  v569 = sub_106450();
  v565 = *(v569 - 8);
  v72 = __chkstk_darwin(v569);
  v496 = &v470 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __chkstk_darwin(v72);
  v497 = &v470 - v75;
  v76 = __chkstk_darwin(v74);
  v487 = &v470 - v77;
  v78 = __chkstk_darwin(v76);
  v488 = &v470 - v79;
  v80 = __chkstk_darwin(v78);
  v521 = &v470 - v81;
  v82 = __chkstk_darwin(v80);
  v522 = &v470 - v83;
  __chkstk_darwin(v82);
  v558 = &v470 - v84;
  v566 = sub_25E4(&unk_1383E0, &qword_107E00);
  v85 = __chkstk_darwin(v566);
  v538 = &v470 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __chkstk_darwin(v85);
  v559 = &v470 - v88;
  v89 = __chkstk_darwin(v87);
  v560 = &v470 - v90;
  __chkstk_darwin(v89);
  v92 = &v470 - v91;
  v93 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v94 = __chkstk_darwin(v93 - 8);
  v500 = &v470 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __chkstk_darwin(v94);
  v494 = &v470 - v97;
  v98 = __chkstk_darwin(v96);
  v530 = &v470 - v99;
  v100 = __chkstk_darwin(v98);
  v533 = &v470 - v101;
  v102 = __chkstk_darwin(v100);
  v537 = &v470 - v103;
  v104 = __chkstk_darwin(v102);
  v545 = &v470 - v105;
  v106 = __chkstk_darwin(v104);
  v562 = &v470 - v107;
  v108 = __chkstk_darwin(v106);
  v110 = &v470 - v109;
  v111 = __chkstk_darwin(v108);
  v563 = &v470 - v112;
  v113 = __chkstk_darwin(v111);
  v555 = &v470 - v114;
  __chkstk_darwin(v113);
  v116 = &v470 - v115;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v117 = sub_106D20();
  v118 = sub_135C4(v117, qword_137440);
  v119 = sub_106D10();
  v120 = sub_106FA0();
  v121 = os_log_type_enabled(v119, v120);
  v508 = v9;
  v529 = a5;
  v554 = v118;
  v515 = v29;
  v501 = v13;
  if (v121)
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *&v572 = v123;
    *v122 = 136315138;
    v570 = a5;
    swift_getMetatypeMetadata();
    v124 = sub_106E30();
    v126 = sub_722E8(v124, v125, &v572);

    *(v122 + 4) = v126;
    _os_log_impl(&dword_0, v119, v120, "AlarmFlowUtils.decideActionForInput with intent type: %s", v122, 0xCu);
    sub_2738(v123);
    v127 = v567;
  }

  else
  {

    v127 = v567;
  }

  v128 = sub_13AA4(v127);
  v129 = v569;
  if ((v128 & 1) == 0)
  {
    goto LABEL_60;
  }

  v472 = v110;
  v130 = v565;
  v132 = v565 + 104;
  v131 = *(v565 + 104);
  v471 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v549 = v131;
  v131(v116);
  v133 = v130 + 56;
  v550 = *(v130 + 56);
  v550(v116, 0, 1, v129);
  v134 = *(v566 + 48);
  sub_14994(v568, v92, &unk_1374C0, &unk_1087B0);
  v135 = v92;
  sub_14994(v116, &v92[v134], &unk_1374C0, &unk_1087B0);
  v137 = v130 + 48;
  v136 = *(v130 + 48);
  if (v136(v135, 1, v129) == 1)
  {
    sub_16F70(v116, &unk_1374C0, &unk_1087B0);
    v138 = v136(v135 + v134, 1, v129);
    v139 = v563;
    if (v138 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v140 = v555;
  sub_14994(v135, v555, &unk_1374C0, &unk_1087B0);
  if (v136(v135 + v134, 1, v129) == 1)
  {
    sub_16F70(v116, &unk_1374C0, &unk_1087B0);
    (*(v565 + 8))(v140, v129);
    v139 = v563;
LABEL_12:
    sub_16F70(v135, &unk_1383E0, &qword_107E00);
    goto LABEL_13;
  }

  v473 = v136;
  v154 = v127;
  v474 = v133;
  v155 = v565;
  v156 = v135 + v134;
  v157 = v558;
  (*(v565 + 32))(v558, v156, v129);
  sub_14F4C(&qword_1374E0, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v470 = sub_106E00();
  v158 = *(v155 + 8);
  v158(v157, v569);
  sub_16F70(v116, &unk_1374C0, &unk_1087B0);
  v158(v140, v569);
  v129 = v569;
  v133 = v474;
  v127 = v154;
  v136 = v473;
  sub_16F70(v135, &unk_1374C0, &unk_1087B0);
  v139 = v563;
  if (v470)
  {
    goto LABEL_30;
  }

LABEL_13:
  v141 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v555 = v132;
  v549(v139, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v129);
  v474 = v133;
  v550(v139, 0, 1, v129);
  v142 = *(v566 + 48);
  v135 = v560;
  sub_14994(v568, v560, &unk_1374C0, &unk_1087B0);
  sub_14994(v139, v135 + v142, &unk_1374C0, &unk_1087B0);
  if (v136(v135, 1, v129) == 1)
  {
    sub_16F70(v139, &unk_1374C0, &unk_1087B0);
    if (v136(v135 + v142, 1, v129) == 1)
    {
LABEL_15:
      sub_16F70(v135, &unk_1374C0, &unk_1087B0);
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v143 = v472;
  sub_14994(v135, v472, &unk_1374C0, &unk_1087B0);
  if (v136(v135 + v142, 1, v129) == 1)
  {
    sub_16F70(v563, &unk_1374C0, &unk_1087B0);
    (*(v565 + 8))(v143, v129);
LABEL_18:
    v470 = v141;
    sub_16F70(v135, &unk_1383E0, &qword_107E00);
    goto LABEL_19;
  }

  v470 = v141;
  v473 = v136;
  v165 = v565;
  v166 = v135 + v142;
  v167 = v558;
  (*(v565 + 32))(v558, v166, v129);
  sub_14F4C(&qword_1374E0, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v168 = sub_106E00();
  v169 = *(v165 + 8);
  v169(v167, v569);
  sub_16F70(v563, &unk_1374C0, &unk_1087B0);
  v169(v143, v569);
  v136 = v473;
  v129 = v569;
  sub_16F70(v135, &unk_1374C0, &unk_1087B0);
  if (v168)
  {
LABEL_30:
    v170 = v562;
    v549(v562, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v129);
    v550(v170, 0, 1, v129);
    v171 = *(v566 + 48);
    v172 = v559;
    sub_14994(v568, v559, &unk_1374C0, &unk_1087B0);
    sub_14994(v170, v172 + v171, &unk_1374C0, &unk_1087B0);
    if (v136(v172, 1, v129) == 1)
    {
      sub_16F70(v170, &unk_1374C0, &unk_1087B0);
      if (v136(v172 + v171, 1, v129) == 1)
      {
        sub_16F70(v172, &unk_1374C0, &unk_1087B0);
        v173 = 1;
LABEL_37:
        sub_A570(v127, v173 & 1, v564);
        return;
      }
    }

    else
    {
      v174 = v545;
      sub_14994(v172, v545, &unk_1374C0, &unk_1087B0);
      if (v136(v172 + v171, 1, v129) != 1)
      {
        v175 = v565;
        v176 = v172 + v171;
        v177 = v558;
        (*(v565 + 32))(v558, v176, v129);
        sub_14F4C(&qword_1374E0, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v173 = sub_106E00();
        v178 = *(v175 + 8);
        v178(v177, v129);
        sub_16F70(v562, &unk_1374C0, &unk_1087B0);
        v178(v174, v129);
        sub_16F70(v172, &unk_1374C0, &unk_1087B0);
        goto LABEL_37;
      }

      sub_16F70(v562, &unk_1374C0, &unk_1087B0);
      (*(v565 + 8))(v174, v129);
    }

    sub_16F70(v172, &unk_1383E0, &qword_107E00);
    v173 = 0;
    goto LABEL_37;
  }

LABEL_19:
  v563 = v137;
  v473 = v136;
  v144 = v552;
  sub_99E8(v552);
  v145 = v556;
  sub_104E40();
  v146 = v557;
  v147 = v553;
  (*(v557 + 56))(v145, 0, 1, v553);
  v148 = *(v551 + 48);
  v149 = v561;
  sub_14994(v144, v561, &unk_1374B0, &unk_108C70);
  sub_14994(v145, v149 + v148, &unk_1374B0, &unk_108C70);
  v150 = *(v146 + 48);
  if (v150(v149, 1, v147) == 1)
  {
    sub_16F70(v145, &unk_1374B0, &unk_108C70);
    v151 = v561;
    sub_16F70(v144, &unk_1374B0, &unk_108C70);
    v152 = v150(v151 + v148, 1, v147);
    v153 = v568;
    if (v152 == 1)
    {
      sub_16F70(v151, &unk_1374B0, &unk_108C70);
      goto LABEL_47;
    }
  }

  else
  {
    v159 = v541;
    sub_14994(v149, v541, &unk_1374B0, &unk_108C70);
    if (v150(v149 + v148, 1, v147) != 1)
    {
      v197 = v557;
      v198 = v149 + v148;
      v199 = v534;
      (*(v557 + 32))(v534, v198, v147);
      sub_14F4C(&qword_1374E8, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
      v200 = sub_106E00();
      v201 = *(v197 + 8);
      v201(v199, v147);
      sub_16F70(v556, &unk_1374B0, &unk_108C70);
      sub_16F70(v144, &unk_1374B0, &unk_108C70);
      v201(v159, v147);
      v129 = v569;
      sub_16F70(v149, &unk_1374B0, &unk_108C70);
      v160 = v567;
      v153 = v568;
      v161 = v543;
      if (v200)
      {
LABEL_47:
        v202 = v537;
        v549(v537, enum case for DecideAction.PromptExpectation.slot(_:), v129);
        v550(v202, 0, 1, v129);
        v203 = *(v566 + 48);
        v204 = v538;
        sub_14994(v153, v538, &unk_1374C0, &unk_1087B0);
        sub_14994(v202, v204 + v203, &unk_1374C0, &unk_1087B0);
        v205 = v473;
        if (v473(v204, 1, v129) == 1)
        {
          sub_16F70(v202, &unk_1374C0, &unk_1087B0);
          if (v205(v204 + v203, 1, v129) == 1)
          {
            sub_16F70(v204, &unk_1374C0, &unk_1087B0);
LABEL_75:
            v247 = sub_106D10();
            v248 = sub_106FC0();
            if (os_log_type_enabled(v247, v248))
            {
              v249 = swift_slowAlloc();
              *v249 = 0;
              _os_log_impl(&dword_0, v247, v248, "Received cancel input slow prompt input – .cancel()", v249, 2u);
            }

            sub_104E40();
            return;
          }
        }

        else
        {
          v210 = v533;
          sub_14994(v204, v533, &unk_1374C0, &unk_1087B0);
          if (v205(v204 + v203, 1, v129) != 1)
          {
            v242 = v565;
            v243 = v204 + v203;
            v244 = v558;
            (*(v565 + 32))(v558, v243, v129);
            sub_14F4C(&qword_1374E0, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
            v245 = sub_106E00();
            v246 = *(v242 + 8);
            v246(v244, v129);
            sub_16F70(v202, &unk_1374C0, &unk_1087B0);
            v246(v210, v129);
            sub_16F70(v204, &unk_1374C0, &unk_1087B0);
            if (v245)
            {
              goto LABEL_75;
            }

            goto LABEL_57;
          }

          sub_16F70(v202, &unk_1374C0, &unk_1087B0);
          (*(v565 + 8))(v210, v129);
        }

        sub_16F70(v204, &unk_1383E0, &qword_107E00);
LABEL_57:
        v211 = sub_106D10();
        v212 = sub_106FC0();
        if (os_log_type_enabled(v211, v212))
        {
          v213 = swift_slowAlloc();
          *v213 = 0;
          _os_log_impl(&dword_0, v211, v212, "Received cancel input on non-confirmation, non-slot prompt input – .ignore()", v213, 2u);
        }

LABEL_60:
        sub_104E60();
        return;
      }

      goto LABEL_27;
    }

    sub_16F70(v556, &unk_1374B0, &unk_108C70);
    v151 = v561;
    sub_16F70(v144, &unk_1374B0, &unk_108C70);
    (*(v557 + 8))(v159, v147);
    v153 = v568;
  }

  sub_16F70(v151, &unk_1383D0, &qword_107DF8);
  v160 = v567;
  v161 = v543;
LABEL_27:
  sub_105360();
  v162 = v542;
  v163 = v544;
  v164 = (*(v542 + 88))(v161, v544);
  if (v164 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v162 + 96))(v161, v163);
    goto LABEL_40;
  }

  if (v164 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v162 + 96))(v161, v163);
    sub_25E4(&qword_13B010, &unk_1087A0);

LABEL_40:
    v179 = v547;
    v180 = v546;
    v181 = v548;
    (*(v547 + 32))(v546, v161, v548);
    v182 = v540;
    (*(v179 + 16))(v540, v180, v181);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    v183 = sub_B3800(v182);

    v184 = sub_106D10();
    v185 = sub_106FC0();

    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      *&v572 = v187;
      *v186 = 136315138;
      v570 = v183;
      sub_14F4C(&qword_137480, type metadata accessor for AlarmNLIntent, &unk_10A860);
      v188 = sub_105620();
      v190 = sub_722E8(v188, v189, &v572);

      *(v186 + 4) = v190;
      _os_log_impl(&dword_0, v184, v185, "alarmNLIntent: %s", v186, 0xCu);
      sub_2738(v187);
    }

    v191 = v568;
    v192 = v473;
    v193 = sub_B372C();
    v129 = v569;
    if ((v193 - 1) < 2)
    {
      (*(v547 + 8))(v546, v548);
      v194 = sub_106D10();
      v195 = sub_106FC0();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        *v196 = 0;
        _os_log_impl(&dword_0, v194, v195, "User cancel the alarm request.", v196, 2u);
      }

      sub_104E40();
      goto LABEL_89;
    }

    if (v193)
    {
      (*(v547 + 8))(v546, v548);
      v236 = v532;
      sub_105360();
      v237 = sub_579C(v236, v531);
      (*(v542 + 8))(v236, v544);
      if (v237)
      {
        v238 = swift_dynamicCastUnknownClass();

        if (v238)
        {
          v239 = sub_106D10();
          v240 = sub_106FC0();
          if (os_log_type_enabled(v239, v240))
          {
            v241 = swift_slowAlloc();
            *v241 = 0;
            _os_log_impl(&dword_0, v239, v240, "Request was not cancelled by user. Proceed.", v241, 2u);
          }

          sub_104E50();
          goto LABEL_89;
        }
      }

      v207 = sub_106D10();
      v254 = sub_106FB0();
      if (!os_log_type_enabled(v207, v254))
      {
        goto LABEL_88;
      }

      v255 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      *&v572 = v256;
      *v255 = 136315138;
      v257 = sub_107480();
      v259 = sub_722E8(v257, v258, &v572);

      *(v255 + 4) = v259;
      _os_log_impl(&dword_0, v207, v254, "Flows stack receives unexpected intent type. Expecting: %s", v255, 0xCu);
      sub_2738(v256);

      goto LABEL_87;
    }

    v206 = v530;
    sub_14994(v191, v530, &unk_1374C0, &unk_1087B0);
    if (v192(v206, 1, v129) == 1)
    {
      (*(v547 + 8))(v546, v548);
      sub_16F70(v206, &unk_1374C0, &unk_1087B0);
      v207 = sub_106D10();
      v208 = sub_106FC0();
      if (!os_log_type_enabled(v207, v208))
      {
LABEL_88:

        sub_104E60();
LABEL_89:

        return;
      }

      v209 = swift_slowAlloc();
      *v209 = 0;
      _os_log_impl(&dword_0, v207, v208, "User returned accepted for non-prompt input. Ignoring.", v209, 2u);
LABEL_87:

      goto LABEL_88;
    }

    v260 = v565;
    v261 = v522;
    (*(v565 + 32))(v522, v206, v129);
    v262 = v521;
    (*(v260 + 16))(v521, v261, v129);
    v263 = (*(v260 + 88))(v262, v129);
    if (v263 != v471)
    {
      if (v263 == enum case for DecideAction.PromptExpectation.slot(_:))
      {
        (*(v547 + 8))(v546, v548);
        v264 = sub_106D10();
        v265 = sub_106FC0();
        if (os_log_type_enabled(v264, v265))
        {
          v266 = swift_slowAlloc();
          *v266 = 0;
          _os_log_impl(&dword_0, v264, v265, "User returned accepted for non-binary input. Ignoring.", v266, 2u);
          v129 = v569;
        }

        sub_104E60();
LABEL_117:

        goto LABEL_118;
      }

      if (v263 != v470)
      {
LABEL_221:
        sub_107360();
        __break(1u);
        goto LABEL_222;
      }
    }

    (*(v547 + 8))(v546, v548);
    v300 = sub_106D10();
    v301 = sub_106FC0();
    if (os_log_type_enabled(v300, v301))
    {
      v302 = swift_slowAlloc();
      *v302 = 0;
      _os_log_impl(&dword_0, v300, v301, "User accepted the task, will handle.", v302, 2u);
      v129 = v569;
    }

    sub_104E50();
    goto LABEL_117;
  }

  if (v164 == enum case for Parse.directInvocation(_:))
  {
    (*(v162 + 96))(v161, v163);
    v214 = v528;
    v215 = v526;
    v216 = v527;
    (*(v528 + 32))(v526, v161, v527);
    v217 = v523;
    sub_106580();
    v218 = v524;
    v219 = v525;
    if ((*(v524 + 48))(v217, 1, v525) == 1)
    {
      sub_16F70(v217, &unk_137460, &unk_108C60);
      goto LABEL_64;
    }

    v267 = v517;
    (*(v218 + 32))(v517, v217, v219);
    v268 = v518;
    (*(v218 + 16))(v518, v267, v219);
    v269 = (*(v218 + 88))(v268, v219);
    if (v269 == enum case for ConfirmationResponse.confirmed(_:))
    {
      sub_104E50();
    }

    else
    {
      if (v269 != enum case for ConfirmationResponse.rejected(_:))
      {
        v314 = *(v218 + 8);
        v314(v267, v219);
        v314(v518, v219);
LABEL_64:
        v220 = sub_1053B0();
        if (v220)
        {
          v221 = v220;
          v222 = v512;
          v223 = v511;
          v224 = v513;
          (*(v512 + 104))(v511, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v513);
          v225 = sub_106590();
          v227 = v226;
          (*(v222 + 8))(v223, v224);
          sub_2B430(v225, v227, v221, &v572);

          if (!v573)
          {
            v233 = &qword_137490;
            v234 = qword_108C80;
            v235 = &v572;
LABEL_120:
            sub_16F70(v235, v233, v234);
            goto LABEL_121;
          }

          if (swift_dynamicCast())
          {
            v229 = v570;
            v228 = v571;

            v230 = v502;
            sub_106420();
            v231 = v508;
            v232 = v509;
            if ((*(v508 + 48))(v230, 1, v509) != 1)
            {
              (*(v231 + 32))(v501, v230, v232);

              v331 = sub_106D10();
              v332 = sub_106FC0();

              if (os_log_type_enabled(v331, v332))
              {
                v333 = swift_slowAlloc();
                v334 = swift_slowAlloc();
                *&v572 = v334;
                *v333 = 136315138;
                v335 = sub_722E8(v229, v228, &v572);

                *(v333 + 4) = v335;
                _os_log_impl(&dword_0, v331, v332, "Received confirmation directInvocation, buttonPressed: %s", v333, 0xCu);
                sub_2738(v334);
              }

              else
              {
              }

              v355 = v508;
              v356 = v498;
              v357 = v509;
              (*(v508 + 104))(v498, enum case for ButtonOption.yes(_:), v509);
              v358 = v501;
              v359 = sub_34350();
              v360 = *(v355 + 8);
              v360(v356, v357);
              v361 = (v528 + 8);
              if (v359)
              {
                sub_104E50();
              }

              else
              {
                sub_104E40();
              }

              v360(v358, v357);
              (*v361)(v215, v216);
              return;
            }

            v233 = &unk_1383C0;
            v234 = &qword_107DF0;
            v235 = v230;
            goto LABEL_120;
          }
        }

LABEL_121:
        v303 = sub_106D10();
        v304 = sub_106FC0();
        if (os_log_type_enabled(v303, v304))
        {
          v305 = swift_slowAlloc();
          *v305 = 0;
          _os_log_impl(&dword_0, v303, v304, "Request was not cancelled by user. Proceed.", v305, 2u);
        }

        sub_104E50();
        goto LABEL_124;
      }

      sub_104E40();
    }

    (*(v218 + 8))(v267, v219);
LABEL_124:
    (*(v214 + 8))(v215, v216);
    return;
  }

  if (v164 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v162 + 96))(v161, v163);
    v250 = *v161;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v251 = sub_106D10();
      v252 = sub_106FC0();
      if (os_log_type_enabled(v251, v252))
      {
        v253 = swift_slowAlloc();
        *v253 = 0;
        _os_log_impl(&dword_0, v251, v252, "User cancelled the task.", v253, 2u);
      }

      sub_104E40();
      goto LABEL_84;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v327 = v494;
      sub_14994(v153, v494, &unk_1374C0, &unk_1087B0);
      if (v473(v327, 1, v129) != 1)
      {
        v365 = v565;
        v261 = v488;
        (*(v565 + 32))(v488, v327, v129);
        v366 = v487;
        (*(v365 + 16))(v487, v261, v129);
        v367 = (*(v365 + 88))(v366, v129);
        if (v367 != v471)
        {
          if (v367 == enum case for DecideAction.PromptExpectation.slot(_:))
          {
            v368 = sub_106D10();
            v369 = sub_106FC0();
            if (os_log_type_enabled(v368, v369))
            {
              v370 = swift_slowAlloc();
              *v370 = 0;
              _os_log_impl(&dword_0, v368, v369, "User returned accepted for non-binary input. Ignoring.", v370, 2u);
            }

            sub_104E60();
            swift_unknownObjectRelease();
            (*(v565 + 8))(v261, v569);
            return;
          }

          if (v367 != v470)
          {
            goto LABEL_221;
          }
        }

        v413 = sub_106D10();
        v414 = sub_106FC0();
        if (os_log_type_enabled(v413, v414))
        {
          v415 = swift_slowAlloc();
          *v415 = 0;
          _os_log_impl(&dword_0, v413, v414, "User accepted the task, will handle.", v415, 2u);
          v129 = v569;
        }

        sub_104E50();
        swift_unknownObjectRelease();
LABEL_118:
        (*(v565 + 8))(v261, v129);
        return;
      }

      sub_16F70(v327, &unk_1374C0, &unk_1087B0);
      v328 = sub_106D10();
      v329 = sub_106FC0();
      if (os_log_type_enabled(v328, v329))
      {
        v330 = swift_slowAlloc();
        *v330 = 0;
        _os_log_impl(&dword_0, v328, v329, "User returned accepted for non-prompt input. Ignoring.", v330, 2u);
      }

      goto LABEL_214;
    }

    if ((v499 & 1) == 0)
    {
      goto LABEL_206;
    }

    swift_getObjectType();
    if (sub_107000())
    {
      v362 = v490;
      sub_274CC(v490);

      v363 = 0;
      v364 = v480;
    }

    else
    {
      v363 = 1;
      v364 = v480;
      v362 = v490;
    }

    v427 = v495;
    v428 = *(v495 + 56);
    v429 = v493;
    v428(v362, v363, 1, v493);
    v430 = v489;
    (*(v427 + 104))(v489, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v429);
    v428(v430, 0, 1, v429);
    v431 = v362;
    v432 = *(v492 + 48);
    sub_14994(v431, v364, &unk_1374A0, &qword_10BB30);
    sub_14994(v430, v364 + v432, &unk_1374A0, &qword_10BB30);
    v433 = *(v427 + 48);
    if (v433(v364, 1, v429) == 1)
    {
      sub_16F70(v489, &unk_1374A0, &qword_10BB30);
      sub_16F70(v490, &unk_1374A0, &qword_10BB30);
      if (v433(v364 + v432, 1, v429) == 1)
      {
        sub_16F70(v364, &unk_1374A0, &qword_10BB30);
        goto LABEL_216;
      }
    }

    else
    {
      v434 = v475;
      sub_14994(v364, v475, &unk_1374A0, &qword_10BB30);
      if (v433(v364 + v432, 1, v429) != 1)
      {
        v459 = v495;
        v460 = v364 + v432;
        v461 = v477;
        (*(v495 + 32))(v477, v460, v429);
        sub_14F4C(&qword_138400, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
        v462 = sub_106E00();
        v463 = *(v459 + 8);
        v463(v461, v429);
        sub_16F70(v489, &unk_1374A0, &qword_10BB30);
        sub_16F70(v490, &unk_1374A0, &qword_10BB30);
        v463(v434, v429);
        sub_16F70(v364, &unk_1374A0, &qword_10BB30);
        v160 = v567;
        if (v462)
        {
LABEL_216:
          swift_unknownObjectRetain();
          v438 = sub_106D10();
          v464 = sub_106FC0();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v438, v464))
          {
            v465 = swift_slowAlloc();
            v466 = swift_slowAlloc();
            *&v572 = v466;
            *v465 = 136315138;
            v570 = v250;
            swift_unknownObjectRetain();
            sub_25E4(&unk_137470, &unk_10BC40);
            v467 = sub_106E30();
            v469 = sub_722E8(v467, v468, &v572);

            *(v465 + 4) = v469;
            _os_log_impl(&dword_0, v438, v464, "decideActionForInput decide handle disambiguation userDialogAct: %s", v465, 0xCu);
            sub_2738(v466);
          }

          goto LABEL_218;
        }

LABEL_206:
        v435 = v532;
        sub_105360();
        v436 = sub_579C(v435, v531);
        (*(v542 + 8))(v435, v544);
        if (!v436 || (v437 = swift_dynamicCastUnknownClass(), v436, !v437))
        {
          v445 = v506;
          v446 = v479;
          v447 = v507;
          (*(v506 + 16))(v479, v160, v507);
          v448 = sub_106D10();
          v449 = sub_106FB0();
          if (os_log_type_enabled(v448, v449))
          {
            v450 = v446;
            v451 = swift_slowAlloc();
            *&v572 = swift_slowAlloc();
            *v451 = 136315394;
            v452 = sub_107480();
            v454 = sub_722E8(v452, v453, &v572);

            *(v451 + 4) = v454;
            *(v451 + 12) = 2080;
            sub_14F4C(&unk_1374D0, &type metadata accessor for Input, &protocol conformance descriptor for Input);
            v455 = sub_107340();
            v457 = v456;
            (*(v445 + 8))(v450, v447);
            v458 = sub_722E8(v455, v457, &v572);

            *(v451 + 14) = v458;
            _os_log_impl(&dword_0, v448, v449, "Intent from parse does not match IntentType. Expected %s, received %s", v451, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            (*(v445 + 8))(v446, v447);
          }

LABEL_214:
          sub_104E60();
LABEL_84:
          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRetain();
        v438 = sub_106D10();
        v439 = sub_106FC0();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v438, v439))
        {
          v440 = swift_slowAlloc();
          v441 = swift_slowAlloc();
          *&v572 = v441;
          *v440 = 136315138;
          v570 = v250;
          swift_unknownObjectRetain();
          sub_25E4(&unk_137470, &unk_10BC40);
          v442 = sub_106E30();
          v444 = sub_722E8(v442, v443, &v572);

          *(v440 + 4) = v444;
          _os_log_impl(&dword_0, v438, v439, "decideActionForInput decide handle userDialogAct: %s", v440, 0xCu);
          sub_2738(v441);
        }

LABEL_218:

        sub_104E50();
        goto LABEL_84;
      }

      sub_16F70(v489, &unk_1374A0, &qword_10BB30);
      sub_16F70(v490, &unk_1374A0, &qword_10BB30);
      (*(v495 + 8))(v434, v429);
    }

    sub_16F70(v364, &qword_137498, &unk_108C50);
    v160 = v567;
    goto LABEL_206;
  }

  if (v164 != enum case for Parse.uso(_:))
  {
    if (v164 == enum case for Parse.ifClientAction(_:))
    {
      v287 = *(v162 + 8);
      v288 = v544;
      v287(v161, v544);
      v289 = v532;
      sub_105360();
      v290 = sub_579C(v289, v531);
      v287(v289, v288);
      v291 = v290;
      v292 = sub_106D10();
      v293 = sub_106FC0();

      if (os_log_type_enabled(v292, v293))
      {
        v294 = swift_slowAlloc();
        v295 = swift_slowAlloc();
        *&v572 = v295;
        *v294 = 136315138;
        v570 = v290;
        v296 = v291;
        sub_25E4(&unk_1383F0, &qword_107E08);
        v297 = sub_106E30();
        v299 = sub_722E8(v297, v298, &v572);

        *(v294 + 4) = v299;
        _os_log_impl(&dword_0, v292, v293, "Handling ifClientAction for intent: %s", v294, 0xCu);
        sub_2738(v295);
      }

      sub_104E50();
    }

    else
    {
      v315 = v506;
      v316 = v503;
      v317 = v507;
      (*(v506 + 16))(v503, v160, v507);
      v318 = sub_106D10();
      v319 = sub_106FB0();
      if (os_log_type_enabled(v318, v319))
      {
        v320 = swift_slowAlloc();
        v321 = swift_slowAlloc();
        *&v572 = v321;
        *v320 = 136315138;
        sub_105360();
        v322 = v544;
        v323 = sub_106E30();
        v325 = v324;
        (*(v315 + 8))(v316, v317);
        v326 = sub_722E8(v323, v325, &v572);
        v161 = v543;

        *(v320 + 4) = v326;
        _os_log_impl(&dword_0, v318, v319, "Received an unsupported parse: %s", v320, 0xCu);
        sub_2738(v321);

        v162 = v542;
      }

      else
      {

        (*(v315 + 8))(v316, v317);
        v322 = v544;
      }

      sub_104E60();
      (*(v162 + 8))(v161, v322);
    }

    return;
  }

  (*(v162 + 96))(v161, v163);
  (*(v516 + 32))(v520, v161, v515);
  v270 = v510;
  sub_105400();
  v271 = sub_105450();
  v272 = *(v519 + 8);
  v519 += 8;
  v272(v270, v514);
  v273 = 0;
  v274 = *(v271 + 16);
  v566 = v539 + 16;
  v275 = (v539 + 8);
  v276 = v539;
  while (v274 != v273)
  {
    if (v273 >= *(v271 + 16))
    {
      __break(1u);
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    v277 = v535;
    v278 = v536;
    (*(v276 + 16))(v535, v271 + ((*(v276 + 80) + 32) & ~*(v276 + 80)) + *(v276 + 72) * v273++, v536);
    v279 = sub_1054C0();
    (*(v276 + 8))(v277, v278);
    if (v279)
    {

      v280 = v500;
      sub_14994(v568, v500, &unk_1374C0, &unk_1087B0);
      v281 = v569;
      if (v473(v280, 1, v569) == 1)
      {
        sub_16F70(v280, &unk_1374C0, &unk_1087B0);
        v282 = sub_106D10();
        v283 = sub_106FC0();
        v284 = os_log_type_enabled(v282, v283);
        v285 = v516;
        if (v284)
        {
          v286 = swift_slowAlloc();
          *v286 = 0;
          _os_log_impl(&dword_0, v282, v283, "User returned accepted for non-prompt input. Ignoring.", v286, 2u);
        }

        sub_104E60();
        goto LABEL_173;
      }

      v336 = v565;
      v337 = v497;
      (*(v565 + 32))(v497, v280, v281);
      v338 = v496;
      (*(v336 + 16))(v496, v337, v281);
      v339 = (*(v336 + 88))(v338, v281);
      v285 = v516;
      if (v339 == v471)
      {
        goto LABEL_169;
      }

      if (v339 == enum case for DecideAction.PromptExpectation.slot(_:))
      {
        v340 = sub_106D10();
        v341 = sub_106FC0();
        if (os_log_type_enabled(v340, v341))
        {
          v342 = swift_slowAlloc();
          *v342 = 0;
          _os_log_impl(&dword_0, v340, v341, "User returned accepted for non-binary input. Ignoring.", v342, 2u);
        }

        sub_104E60();
LABEL_172:
        (*(v565 + 8))(v337, v569);
        goto LABEL_173;
      }

      if (v339 == v470)
      {
LABEL_169:
        v371 = sub_106D10();
        v372 = sub_106FC0();
        if (os_log_type_enabled(v371, v372))
        {
          v373 = swift_slowAlloc();
          *v373 = 0;
          _os_log_impl(&dword_0, v371, v372, "User accepted the task, will handle.", v373, 2u);
        }

        sub_104E50();
        goto LABEL_172;
      }

LABEL_222:
      sub_107360();
      __break(1u);
      return;
    }
  }

  v306 = v504;
  sub_105400();
  v307 = sub_105450();
  v308 = v272;
  v272(v306, v514);
  v309 = 0;
  v310 = *(v307 + 16);
  v311 = v536;
  v312 = v505;
  while (1)
  {
    if (v310 == v309)
    {

      v343 = v567;
      if (v499)
      {
        v344 = v484;
        sub_105400();
        v345 = sub_105440();
        v308(v344, v514);
        if (v345)
        {
          v346 = v483;
          sub_274CC(v483);

          v347 = 0;
          v348 = v486;
          v349 = v492;
          v350 = v485;
        }

        else
        {
          v347 = 1;
          v348 = v486;
          v349 = v492;
          v350 = v485;
          v346 = v483;
        }

        v374 = v495;
        v375 = *(v495 + 56);
        v376 = v493;
        v375(v346, v347, 1, v493);
        v377 = v491;
        (*(v374 + 104))(v491, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v376);
        v375(v377, 0, 1, v376);
        v378 = *(v349 + 48);
        sub_14994(v346, v348, &unk_1374A0, &qword_10BB30);
        sub_14994(v377, v348 + v378, &unk_1374A0, &qword_10BB30);
        v379 = *(v374 + 48);
        if (v379(v348, 1, v376) == 1)
        {
          sub_16F70(v377, &unk_1374A0, &qword_10BB30);
          sub_16F70(v346, &unk_1374A0, &qword_10BB30);
          if (v379(v348 + v378, 1, v376) == 1)
          {
            sub_16F70(v348, &unk_1374A0, &qword_10BB30);
            goto LABEL_194;
          }

          goto LABEL_180;
        }

        sub_14994(v348, v350, &unk_1374A0, &qword_10BB30);
        if (v379(v348 + v378, 1, v376) == 1)
        {
          sub_16F70(v491, &unk_1374A0, &qword_10BB30);
          sub_16F70(v346, &unk_1374A0, &qword_10BB30);
          (*(v495 + 8))(v350, v376);
LABEL_180:
          sub_16F70(v348, &qword_137498, &unk_108C50);
          v343 = v567;
          goto LABEL_181;
        }

        v416 = v346;
        v417 = v495;
        v418 = v348 + v378;
        v419 = v477;
        (*(v495 + 32))(v477, v418, v376);
        sub_14F4C(&qword_138400, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
        v420 = sub_106E00();
        v421 = *(v417 + 8);
        v421(v419, v376);
        sub_16F70(v491, &unk_1374A0, &qword_10BB30);
        sub_16F70(v416, &unk_1374A0, &qword_10BB30);
        v421(v350, v376);
        sub_16F70(v348, &unk_1374A0, &qword_10BB30);
        v343 = v567;
        if (v420)
        {
LABEL_194:
          v383 = v516;
          v422 = *(v516 + 16);
          v385 = v476;
          v386 = v515;
          v422(v476, v520, v515);
          v387 = sub_106D10();
          v388 = sub_106FC0();
          if (os_log_type_enabled(v387, v388))
          {
            v389 = swift_slowAlloc();
            v390 = swift_slowAlloc();
            *&v572 = v390;
            *v389 = 136315138;
            v422(v478, v385, v386);
            v423 = sub_106E30();
            v425 = v424;
            v394 = *(v383 + 8);
            v394(v385, v386);
            v426 = sub_722E8(v423, v425, &v572);

            *(v389 + 4) = v426;
            v396 = "decideActionForInput decide handle disambiguation UsoParse: %s";
            goto LABEL_196;
          }

          goto LABEL_197;
        }
      }

LABEL_181:
      v380 = v532;
      sub_105360();
      v381 = sub_579C(v380, v531);
      (*(v542 + 8))(v380, v544);
      if (!v381 || (v382 = swift_dynamicCastUnknownClass(), v381, !v382))
      {
        v397 = v506;
        v398 = v482;
        v399 = v507;
        (*(v506 + 16))(v482, v343, v507);
        v400 = sub_106D10();
        v401 = sub_106FB0();
        v402 = os_log_type_enabled(v400, v401);
        v403 = v516;
        if (v402)
        {
          v404 = swift_slowAlloc();
          *&v572 = swift_slowAlloc();
          *v404 = 136315394;
          v405 = sub_107480();
          v407 = sub_722E8(v405, v406, &v572);

          *(v404 + 4) = v407;
          *(v404 + 12) = 2080;
          sub_14F4C(&unk_1374D0, &type metadata accessor for Input, &protocol conformance descriptor for Input);
          v408 = sub_107340();
          v410 = v409;
          (*(v397 + 8))(v398, v399);
          v411 = sub_722E8(v408, v410, &v572);

          *(v404 + 14) = v411;
          _os_log_impl(&dword_0, v400, v401, "Intent from parse does not match IntentType. Expected %s, received %s", v404, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v397 + 8))(v398, v399);
        }

        v412 = v515;
        sub_104E60();
        (*(v403 + 8))(v520, v412);
        return;
      }

      v383 = v516;
      v384 = *(v516 + 16);
      v385 = v481;
      v386 = v515;
      v384(v481, v520, v515);
      v387 = sub_106D10();
      v388 = sub_106FC0();
      if (os_log_type_enabled(v387, v388))
      {
        v389 = swift_slowAlloc();
        v390 = swift_slowAlloc();
        *&v572 = v390;
        *v389 = 136315138;
        v384(v478, v385, v386);
        v391 = sub_106E30();
        v393 = v392;
        v394 = *(v383 + 8);
        v394(v385, v386);
        v395 = sub_722E8(v391, v393, &v572);

        *(v389 + 4) = v395;
        v396 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_196:
        _os_log_impl(&dword_0, v387, v388, v396, v389, 0xCu);
        sub_2738(v390);

LABEL_198:
        sub_104E50();
        v394(v520, v386);
        return;
      }

LABEL_197:

      v394 = *(v383 + 8);
      v394(v385, v386);
      goto LABEL_198;
    }

    if (v309 >= *(v307 + 16))
    {
      goto LABEL_220;
    }

    (*(v539 + 16))(v312, v307 + ((*(v539 + 80) + 32) & ~*(v539 + 80)) + *(v539 + 72) * v309, v311);
    if (sub_1054D0())
    {
      break;
    }

    ++v309;
    v313 = sub_1054E0();
    (*v275)(v312, v311);
    if (v313)
    {

      goto LABEL_152;
    }
  }

  (*v275)(v312, v311);
LABEL_152:
  v351 = sub_106D10();
  v352 = sub_106FC0();
  v353 = os_log_type_enabled(v351, v352);
  v285 = v516;
  if (v353)
  {
    v354 = swift_slowAlloc();
    *v354 = 0;
    _os_log_impl(&dword_0, v351, v352, "User cancelled/rejected the task, will cancel the request.", v354, 2u);
  }

  sub_104E40();
LABEL_173:
  (*(v285 + 8))(v520, v515);
}

uint64_t sub_10C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_106D90();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_106DB0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = *(v8 + 16);
  v14(&v21 - v12, v2, v7);
  if ((*(v8 + 88))(v13, v7) != enum case for TypedValue.primitive(_:))
  {
    goto LABEL_5;
  }

  v14(v11, v13, v7);
  (*(v8 + 96))(v11, v7);
  v15 = swift_projectBox();
  v16 = v22;
  if ((*(v22 + 88))(v15, v4) != enum case for TypedValue.PrimitiveValue.date(_:))
  {

LABEL_5:
    v19 = sub_104670();
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    return (*(v8 + 8))(v13, v7);
  }

  (*(v16 + 16))(v6, v15, v4);
  (*(v16 + 96))(v6, v4);
  v17 = sub_104670();
  v18 = *(v17 - 8);
  (*(v18 + 32))(a1, v6, v17);
  (*(v18 + 56))(a1, 0, 1, v17);

  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_10F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v59 = a1;
  v61 = a3;
  v58 = sub_104740();
  v3 = *(v58 - 8);
  __chkstk_darwin(v58);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_104750();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_104710();
  v11 = *(v10 - 8);
  v55 = v10;
  v56 = v11;
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E4(&qword_137518, &qword_107E28);
  __chkstk_darwin(v14 - 8);
  v16 = &v53 - v15;
  v62 = sub_104670();
  v57 = *(v62 - 8);
  v17 = __chkstk_darwin(v62);
  v54 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v53 - v20;
  __chkstk_darwin(v19);
  v60 = &v53 - v22;
  sub_106210();
  (*(v11 + 104))(v13, enum case for Calendar.MatchingPolicy.strict(_:), v10);
  v23 = v6;
  (*(v7 + 104))(v9, enum case for Calendar.RepeatedTimePolicy.first(_:), v6);
  v24 = v58;
  (*(v3 + 104))(v5, enum case for Calendar.SearchDirection.forward(_:), v58);
  sub_1047A0();
  (*(v3 + 8))(v5, v24);
  (*(v7 + 8))(v9, v23);
  v25 = v13;
  v26 = v57;
  (*(v56 + 8))(v25, v55);
  v27 = v62;
  v28 = *(v26 + 8);
  v28(v21, v62);
  if ((*(v26 + 48))(v16, 1, v27) == 1)
  {
    sub_16F70(v16, &qword_137518, &qword_107E28);
    v29 = 1;
    v30 = v61;
  }

  else
  {
    v31 = v60;
    (*(v26 + 32))(v60, v16, v27);
    if (qword_136C50 != -1)
    {
      swift_once();
    }

    v32 = sub_106D20();
    sub_135C4(v32, qword_137440);
    v33 = v54;
    (*(v26 + 16))(v54, v31, v27);
    v34 = sub_106D10();
    v35 = sub_106FA0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v64 = v37;
      *v36 = 136315138;
      sub_14F4C(&qword_137548, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v38 = sub_107340();
      v39 = v33;
      v41 = v40;
      v28(v39, v27);
      v42 = sub_722E8(v38, v41, &v64);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_0, v34, v35, "Next date matching time: %s", v36, 0xCu);
      sub_2738(v37);
    }

    else
    {

      v28(v33, v27);
    }

    sub_25E4(&qword_137550, &qword_107E30);
    v43 = sub_1047B0();
    v44 = *(v43 - 8);
    v45 = *(v44 + 72);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_107DE0;
    v48 = v47 + v46;
    v49 = *(v44 + 104);
    v49(v48, enum case for Calendar.Component.year(_:), v43);
    v49(v48 + v45, enum case for Calendar.Component.month(_:), v43);
    v49(v48 + 2 * v45, enum case for Calendar.Component.day(_:), v43);
    v49(v48 + 3 * v45, enum case for Calendar.Component.hour(_:), v43);
    v49(v48 + 4 * v45, enum case for Calendar.Component.minute(_:), v43);
    sub_84558(v47);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v50 = v60;
    v30 = v61;
    sub_104730();

    v28(v50, v62);
    v29 = 0;
  }

  v51 = sub_1045E0();
  return (*(*(v51 - 8) + 56))(v30, v29, 1, v51);
}

uint64_t sub_1174C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a2;
  v202 = sub_105380();
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v200 = &v188 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E4(&unk_1383C0, &qword_107DF0);
  __chkstk_darwin(v4 - 8);
  v192 = &v188 - v5;
  v194 = sub_106440();
  v193 = *(v194 - 8);
  v6 = __chkstk_darwin(v194);
  v190 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v189 = &v188 - v9;
  __chkstk_darwin(v8);
  v191 = &v188 - v10;
  v205 = sub_1065A0();
  v204 = *(v205 - 8);
  __chkstk_darwin(v205);
  v203 = &v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25E4(&unk_137460, &unk_108C60);
  __chkstk_darwin(v12 - 8);
  v212 = &v188 - v13;
  v14 = sub_1053C0();
  v215 = *(v14 - 8);
  v216 = v14;
  v15 = __chkstk_darwin(v14);
  v213 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v210 = &v188 - v18;
  v19 = __chkstk_darwin(v17);
  v211 = &v188 - v20;
  __chkstk_darwin(v19);
  v214 = &v188 - v21;
  v22 = sub_104C50();
  v221 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v219 = &v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v220 = &v188 - v25;
  v26 = sub_105520();
  v27 = *(v26 - 8);
  v217 = v26;
  v218 = v27;
  v28 = __chkstk_darwin(v26);
  v196 = &v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v188 - v30;
  v206 = sub_105460();
  v199 = *(v206 - 8);
  v32 = __chkstk_darwin(v206);
  v195 = &v188 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v198 = &v188 - v34;
  v208 = sub_105410();
  v207 = *(v208 - 8);
  __chkstk_darwin(v208);
  v209 = &v188 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1053E0();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v197 = &v188 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = (&v188 - v40);
  v42 = sub_105E80();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v46 = &v188 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = &v188 - v47;
  sub_105360();
  v49 = (*(v37 + 88))(v41, v36);
  if (v49 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v37 + 96))(v41, v36);
LABEL_5:
    v50 = *(v43 + 32);
    v50(v48, v41, v42);
    v50(v46, v48, v42);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    v51 = sub_B3800(v46);
    if (qword_136C50 != -1)
    {
      swift_once();
    }

    v52 = sub_106D20();
    sub_135C4(v52, qword_137440);

    v53 = sub_106D10();
    v54 = sub_106FC0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v225[0] = v56;
      *v55 = 136315138;
      v223 = v51;
      sub_14F4C(&qword_137480, type metadata accessor for AlarmNLIntent, &unk_10A860);
      v57 = sub_105620();
      v59 = sub_722E8(v57, v58, v225);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_0, v53, v54, "alarmNLIntent: %s", v55, 0xCu);
      sub_2738(v56);
    }

    v60 = v219;
    v61 = sub_B372C();
    v63 = v220;
    v62 = v221;
    v64 = v221[13];
    v64(v220, **(&off_12FB70 + v61), v22);
    v64(v60, enum case for SiriKitConfirmationState.confirmed(_:), v22);
    sub_14F4C(&qword_1374F8, &type metadata accessor for SiriKitConfirmationState, &protocol conformance descriptor for SiriKitConfirmationState);
    sub_106EB0();
    sub_106EB0();
    if (v225[0] == v223 && v225[1] == v224)
    {

      v65 = v62[1];
      v65(v60, v22);
      v65(v63, v22);

LABEL_67:
      v68 = &enum case for ConfirmationResponse.confirmed(_:);
      goto LABEL_68;
    }

    v66 = sub_107370();

    v67 = v62[1];
    v67(v60, v22);
    v67(v63, v22);

    if (v66)
    {
      goto LABEL_67;
    }

LABEL_13:
    v68 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_68:
    v152 = *v68;
    v153 = sub_1050D0();
    return (*(*(v153 - 8) + 104))(v222, v152, v153);
  }

  if (v49 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v37 + 96))(v41, v36);
    sub_25E4(&qword_13B010, &unk_1087A0);

    goto LABEL_5;
  }

  if (v49 != enum case for Parse.directInvocation(_:))
  {
    if (v49 != enum case for Parse.NLv4IntentOnly(_:))
    {
      if (v49 == enum case for Parse.uso(_:))
      {
        (*(v37 + 96))(v41, v36);
        (*(v207 + 32))(v209, v41, v208);
        v105 = v198;
        sub_105400();
        v106 = sub_105450();
        v107 = *(v199 + 8);
        v107(v105, v206);
        v69 = 0;
        v70 = *(v106 + 16);
        v108 = v217;
        v109 = (v218 + 8);
        while (v70 != v69)
        {
          if (v69 >= *(v106 + 16))
          {
            __break(1u);
            goto LABEL_103;
          }

          (*(v218 + 16))(v31, v106 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v69, v108);
          if (sub_1054C0())
          {

            (*v109)(v31, v108);
            goto LABEL_62;
          }

          ++v69;
          v110 = sub_1054F0();
          (*v109)(v31, v108);
          if (v110)
          {

LABEL_62:
            if (qword_136C50 != -1)
            {
              swift_once();
            }

            v148 = sub_106D20();
            sub_135C4(v148, qword_137440);
            v149 = sub_106D10();
            v150 = sub_106FC0();
            if (os_log_type_enabled(v149, v150))
            {
              v151 = swift_slowAlloc();
              *v151 = 0;
              _os_log_impl(&dword_0, v149, v150, "User accepted the task, will handle.", v151, 2u);
            }

            (*(v207 + 8))(v209, v208);
            goto LABEL_67;
          }
        }

        v141 = v195;
        sub_105400();
        v142 = sub_105450();
        v107(v141, v206);
        v143 = 0;
        v144 = *(v142 + 16);
        v145 = v217;
        v146 = v196;
        while (1)
        {
          if (v144 == v143)
          {
            (*(v207 + 8))(v209, v208);

            goto LABEL_13;
          }

          if (v143 >= *(v142 + 16))
          {
            __break(1u);
            goto LABEL_105;
          }

          (*(v218 + 16))(v146, v142 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v143, v145);
          if (sub_1054D0())
          {
            break;
          }

          ++v143;
          v147 = sub_1054E0();
          (*v109)(v146, v145);
          if (v147)
          {

            goto LABEL_76;
          }
        }

        (*v109)(v146, v145);
LABEL_76:
        if (qword_136C50 != -1)
        {
          swift_once();
        }

        v159 = sub_106D20();
        sub_135C4(v159, qword_137440);
        v160 = sub_106D10();
        v161 = sub_106FC0();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          *v162 = 0;
          _os_log_impl(&dword_0, v160, v161, "User cancelled/rejected the task, will cancel the request.", v162, 2u);
        }

        (*(v207 + 8))(v209, v208);
        goto LABEL_13;
      }

      if (qword_136C50 != -1)
      {
        swift_once();
      }

      v112 = sub_106D20();
      sub_135C4(v112, qword_137440);
      v113 = v201;
      v114 = v200;
      v115 = v202;
      (*(v201 + 16))(v200, a1, v202);
      v116 = sub_106D10();
      v117 = sub_106FB0();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v225[0] = v221;
        *v118 = 136315138;
        LODWORD(v220) = v117;
        sub_105360();
        v119 = sub_106E30();
        v120 = v114;
        v122 = v121;
        (*(v113 + 8))(v120, v115);
        v123 = sub_722E8(v119, v122, v225);

        *(v118 + 4) = v123;
        _os_log_impl(&dword_0, v116, v220, "Received not an supported input: %s", v118, 0xCu);
        sub_2738(v221);
      }

      else
      {

        (*(v113 + 8))(v114, v115);
      }

      v124 = enum case for ConfirmationResponse.rejected(_:);
      v125 = sub_1050D0();
      (*(*(v125 - 8) + 104))(v222, v124, v125);
      return (*(v37 + 8))(v41, v36);
    }

    (*(v37 + 96))(v41, v36);
    v82 = *v41;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      if (qword_136C50 != -1)
      {
LABEL_105:
        swift_once();
      }

      v83 = sub_106D20();
      sub_135C4(v83, qword_137440);
      v84 = sub_106D10();
      v85 = sub_106FC0();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_0, v84, v85, "Received UserDialogAct - UserAccepted", v86, 2u);
      }

      swift_unknownObjectRelease();
      goto LABEL_67;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_136C50 != -1)
      {
        swift_once();
      }

      v154 = sub_106D20();
      sub_135C4(v154, qword_137440);
      v155 = sub_106D10();
      v156 = sub_106FC0();
      if (!os_log_type_enabled(v155, v156))
      {
        goto LABEL_88;
      }

      v157 = swift_slowAlloc();
      *v157 = 0;
      v158 = "Received UserDialogAct - UserRejected";
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        if (qword_136C50 != -1)
        {
          swift_once();
        }

        v181 = sub_106D20();
        sub_135C4(v181, qword_137440);
        swift_unknownObjectRetain();
        v155 = sub_106D10();
        v182 = sub_106FB0();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v155, v182))
        {
          swift_unknownObjectRelease();

          goto LABEL_13;
        }

        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v225[0] = v184;
        *v183 = 136315138;
        v223 = v82;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v185 = sub_106E30();
        v187 = sub_722E8(v185, v186, v225);

        *(v183 + 4) = v187;
        _os_log_impl(&dword_0, v155, v182, "Received unsupported userDialogAct for confirmation: %s", v183, 0xCu);
        sub_2738(v184);

        goto LABEL_87;
      }

      if (qword_136C50 != -1)
      {
        swift_once();
      }

      v163 = sub_106D20();
      sub_135C4(v163, qword_137440);
      v155 = sub_106D10();
      v156 = sub_106FC0();
      if (!os_log_type_enabled(v155, v156))
      {
        goto LABEL_88;
      }

      v157 = swift_slowAlloc();
      *v157 = 0;
      v158 = "Received UserDialogAct - UserCancelled";
    }

    _os_log_impl(&dword_0, v155, v156, v158, v157, 2u);
LABEL_87:

LABEL_88:

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  (*(v37 + 96))(v41, v36);
  v69 = v214;
  v31 = v215;
  v70 = v216;
  (*(v215 + 4))(v214, v41, v216);
  if (qword_136C50 != -1)
  {
LABEL_103:
    swift_once();
  }

  v71 = sub_106D20();
  v72 = sub_135C4(v71, qword_137440);
  v73 = v211;
  v221 = *(v31 + 2);
  (v221)(v211, v69, v70);
  v219 = v72;
  v74 = sub_106D10();
  v75 = sub_106FC0();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v225[0] = v77;
    *v76 = 136315138;
    (v221)(v210, v73, v70);
    v78 = sub_106E30();
    v80 = v79;
    v220 = *(v31 + 1);
    (v220)(v73, v216);
    v81 = sub_722E8(v78, v80, v225);
    v70 = v216;

    *(v76 + 4) = v81;
    v69 = v214;
    _os_log_impl(&dword_0, v74, v75, "Handling direct invocation: %s", v76, 0xCu);
    sub_2738(v77);
  }

  else
  {

    v220 = *(v31 + 1);
    (v220)(v73, v70);
  }

  v87 = v212;
  v88 = v213;
  sub_106580();
  v89 = sub_1050D0();
  v90 = *(v89 - 8);
  if ((*(v90 + 48))(v87, 1, v89) != 1)
  {
    (v220)(v69, v70);
    return (*(v90 + 32))(v222, v87, v89);
  }

  v217 = v90;
  v218 = v89;
  sub_16F70(v87, &unk_137460, &unk_108C60);
  v91 = sub_1053B0();
  if (!v91)
  {
    goto LABEL_50;
  }

  v92 = v91;
  v93 = v204;
  v94 = v203;
  v95 = v205;
  (*(v204 + 104))(v203, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v205);
  v96 = sub_106590();
  v98 = v97;
  (*(v93 + 8))(v94, v95);
  if (!*(v92 + 16))
  {

LABEL_48:

    goto LABEL_49;
  }

  v99 = sub_32658(v96, v98);
  v101 = v100;

  if ((v101 & 1) == 0)
  {
    goto LABEL_48;
  }

  sub_135FC(*(v92 + 56) + 32 * v99, v225);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_48;
  }

  v102 = v192;
  sub_106420();
  v103 = v193;
  v104 = v194;
  if ((*(v193 + 48))(v102, 1, v194) == 1)
  {

    sub_16F70(v102, &unk_1383C0, &qword_107DF0);
LABEL_49:
    v88 = v213;
LABEL_50:
    (v221)(v88, v69, v70);
    v126 = sub_106D10();
    v127 = sub_106FB0();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v225[0] = v129;
      *v128 = 136315138;
      v130 = v220;
      (v221)(v210, v88, v70);
      v131 = sub_106E30();
      v132 = v88;
      v133 = v131;
      v135 = v134;
      v130(v132, v70);
      v136 = sub_722E8(v133, v135, v225);

      *(v128 + 4) = v136;
      _os_log_impl(&dword_0, v126, v127, "Received unsupported directInvocation for alarm confirmation: %s", v128, 0xCu);
      sub_2738(v129);

      v130(v214, v70);
    }

    else
    {

      v137 = v220;
      (v220)(v88, v70);
      v137(v69, v70);
    }

    v139 = v217;
    v138 = v218;
    v140 = enum case for ConfirmationResponse.rejected(_:);
    return (*(v139 + 104))(v222, v140, v138);
  }

  v164 = v191;
  (*(v103 + 32))(v191, v102, v104);
  v165 = v189;
  v221 = *(v103 + 16);
  (v221)(v189, v164, v104);
  v166 = v103;
  v167 = sub_106D10();
  v168 = sub_106FC0();
  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v225[0] = v170;
    *v169 = 136315138;
    LODWORD(v219) = v168;
    v171 = sub_106430();
    v173 = v172;
    v174 = *(v166 + 8);
    v174(v165, v194);
    v175 = sub_722E8(v171, v173, v225);
    v164 = v191;

    *(v169 + 4) = v175;
    _os_log_impl(&dword_0, v167, v219, "Received confirmation directionInvocation, buttonPressed: %s", v169, 0xCu);
    sub_2738(v170);
    v70 = v216;

    v104 = v194;

    v176 = v214;
    v177 = v193;
  }

  else
  {

    v177 = v166;
    v174 = *(v166 + 8);
    v174(v165, v104);
    v176 = v214;
  }

  v178 = v190;
  (v221)(v190, v164, v104);
  v179 = (*(v177 + 88))(v178, v104);
  if (v179 == enum case for ButtonOption.yes(_:))
  {

    v174(v164, v104);
    (v220)(v176, v70);
    v180 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_96:
    v140 = *v180;
    v139 = v217;
    v138 = v218;
    return (*(v139 + 104))(v222, v140, v138);
  }

  if (v179 == enum case for ButtonOption.cancel(_:))
  {

    v174(v164, v104);
    (v220)(v176, v70);
    v180 = &enum case for ConfirmationResponse.rejected(_:);
    goto LABEL_96;
  }

  result = sub_107360();
  __break(1u);
  return result;
}

uint64_t sub_135C4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_135FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_13658()
{
  sub_105940();
  sub_14994(v9, v7, &qword_137490, qword_108C80);
  if (v8)
  {
    sub_14994(v7, v6, &qword_137490, qword_108C80);
    sub_105D80();
    if (swift_dynamicCast() || (sub_105A20(), swift_dynamicCast()) || (sub_105A30(), swift_dynamicCast()) || (sub_105AC0(), swift_dynamicCast()) || (sub_105A50(), swift_dynamicCast()) || (sub_105990(), swift_dynamicCast()) || (sub_105AD0(), swift_dynamicCast()) || (sub_105A90(), swift_dynamicCast()) || (sub_105B80(), swift_dynamicCast()) || (sub_105AA0(), swift_dynamicCast()) || (sub_105A60(), swift_dynamicCast()) || (sub_105A70(), swift_dynamicCast()) || (sub_1059E0(), swift_dynamicCast()) || (sub_105A40(), swift_dynamicCast()) || (sub_105A80(), swift_dynamicCast()) || (sub_105AB0(), swift_dynamicCast()) || (sub_1059A0(), swift_dynamicCast()) || (sub_1059D0(), swift_dynamicCast()) || (sub_1059B0(), swift_dynamicCast()))
    {
      sub_16F70(v9, &qword_137490, qword_108C80);

      sub_2738(v6);
      v0 = 1;
      goto LABEL_28;
    }

    sub_2738(v6);
  }

  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_137440);
  v2 = sub_106D10();
  v3 = sub_106FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Alarm flow received non-alarm NLv4 parse", v4, 2u);
  }

  sub_16F70(v9, &qword_137490, qword_108C80);
  v0 = 0;
LABEL_28:
  sub_16F70(v7, &qword_137490, qword_108C80);
  return v0;
}

uint64_t sub_13AA4(uint64_t a1)
{
  v2 = sub_105380();
  v79 = *(v2 - 8);
  v80 = v2;
  __chkstk_darwin(v2);
  v78 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1053C0();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_105520();
  v90 = *(v7 - 8);
  v91 = v7;
  __chkstk_darwin(v7);
  v89 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_105460();
  v86 = *(v84 - 8);
  v9 = __chkstk_darwin(v84);
  v77 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v77 - v11;
  v85 = sub_105410();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E4(&qword_137488, &qword_10A960);
  __chkstk_darwin(v13 - 8);
  v15 = &v77 - v14;
  v16 = sub_1053E0();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  __chkstk_darwin(v18);
  v20 = &v77 - v19;
  v21 = sub_105E80();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105360();
  v25 = (*(v17 + 88))(v20, v16);
  if (v25 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v17 + 96))(v20, v16);
  }

  else
  {
    if (v25 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      if (v25 == enum case for Parse.directInvocation(_:))
      {
        (*(v17 + 96))(v20, v16);
        v37 = v87;
        v36 = v88;
        (*(v87 + 32))(v6, v20, v88);
        v38 = sub_106570();
        (*(v37 + 8))(v6, v36);
        v32 = v38 ^ 1;
        return v32 & 1;
      }

      if (v25 == enum case for Parse.NLv4IntentOnly(_:))
      {
        (*(v17 + 96))(v20, v16);
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
                swift_getObjectType();
                if (sub_107000())
                {
                  v32 = sub_13658();
                  swift_unknownObjectRelease();

                  return v32 & 1;
                }

                if (qword_136C50 != -1)
                {
                  swift_once();
                }

                v73 = sub_106D20();
                sub_135C4(v73, qword_137440);
                v74 = sub_106D10();
                v75 = sub_106FC0();
                if (os_log_type_enabled(v74, v75))
                {
                  v76 = swift_slowAlloc();
                  *v76 = 0;
                  _os_log_impl(&dword_0, v74, v75, "NLv4IntentOnly parse received is NOT valid alarm input: not able to get alarmTask", v76, 2u);
                }

                swift_unknownObjectRelease();

                goto LABEL_11;
              }
            }
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (v25 == enum case for Parse.uso(_:))
        {
          (*(v17 + 96))(v20, v16);
          v47 = v82;
          v46 = v83;
          (*(v83 + 32))(v82, v20, v85);
          v48 = v81;
          sub_105400();
          v33 = sub_105450();
          v49 = *(v86 + 8);
          v86 += 8;
          v49(v48, v84);
          v50 = 0;
          v51 = *(v33 + 16);
          v35 = (v90 + 1);
          while (v51 != v50)
          {
            if (v50 >= *(v33 + 16))
            {
              __break(1u);
              goto LABEL_65;
            }

            v52 = v89;
            (v90[2])(v89, v33 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + v90[9] * v50, v91);
            if (sub_1054C0() & 1) != 0 || (sub_1054E0() & 1) != 0 || (sub_1054D0())
            {

              (*v35)(v52, v91);
              goto LABEL_43;
            }

            v53 = sub_1054F0();
            (*v35)(v52, v91);
            ++v50;
            if (v53)
            {

LABEL_43:
              (*(v46 + 8))(v47, v85);
              goto LABEL_16;
            }
          }

          v67 = v77;
          sub_105400();
          v68 = sub_105440();
          v49(v67, v84);
          if (v68)
          {
            v32 = sub_13658();

            (*(v46 + 8))(v47, v85);
            return v32 & 1;
          }

          if (qword_136C50 != -1)
          {
            swift_once();
          }

          v69 = sub_106D20();
          sub_135C4(v69, qword_137440);
          v70 = sub_106D10();
          v71 = sub_106FC0();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_0, v70, v71, "NLv4IntentOnly parse received is NOT valid alarm input: not able to get alarmTask", v72, 2u);
          }

          (*(v46 + 8))(v47, v85);
          goto LABEL_11;
        }

        if (v25 != enum case for Parse.ifClientAction(_:))
        {
          if (qword_136C50 != -1)
          {
            swift_once();
          }

          v54 = sub_106D20();
          sub_135C4(v54, qword_137440);
          v56 = v78;
          v55 = v79;
          v57 = v80;
          (*(v79 + 16))(v78, a1, v80);
          v58 = sub_106D10();
          v59 = sub_106FC0();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            LODWORD(v91) = v59;
            v61 = v56;
            v62 = v60;
            v90 = swift_slowAlloc();
            v92 = v90;
            *v62 = 136315138;
            sub_105360();
            v63 = sub_106E30();
            v65 = v64;
            (*(v55 + 8))(v61, v57);
            v66 = sub_722E8(v63, v65, &v92);

            *(v62 + 4) = v66;
            _os_log_impl(&dword_0, v58, v91, "Parse received is NOT valid alarm input: %s", v62, 0xCu);
            sub_2738(v90);
          }

          else
          {

            (*(v55 + 8))(v56, v57);
          }

          (*(v17 + 8))(v20, v16);
          goto LABEL_11;
        }

        (*(v17 + 8))(v20, v16);
      }

LABEL_16:
      v32 = 1;
      return v32 & 1;
    }

    (*(v17 + 96))(v20, v16);
    sub_25E4(&qword_13B010, &unk_1087A0);
  }

  (*(v22 + 32))(v24, v20, v21);
  sub_105E70();
  (*(v22 + 8))(v24, v21);
  v26 = sub_1058A0();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v15, 1, v26) != 1)
  {
    v33 = sub_105880();
    v35 = v34;
    (*(v27 + 8))(v15, v26);
    if ((v33 != 0x6D72616C61 || v35 != 0xE500000000000000) && (sub_107370() & 1) == 0)
    {
      if (qword_136C50 != -1)
      {
LABEL_65:
        swift_once();
      }

      v40 = sub_106D20();
      sub_135C4(v40, qword_137440);

      v41 = sub_106D10();
      v42 = sub_106FC0();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v92 = v44;
        *v43 = 136315138;
        v45 = sub_722E8(v33, v35, &v92);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_0, v41, v42, "NLv3IntentPlusServerConversion parse received is NOT a valid alarm input: alarm flow received unexpected domain %s", v43, 0xCu);
        sub_2738(v44);
      }

      else
      {
      }

      goto LABEL_11;
    }

    goto LABEL_16;
  }

  sub_16F70(v15, &qword_137488, &qword_10A960);
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v28 = sub_106D20();
  sub_135C4(v28, qword_137440);
  v29 = sub_106D10();
  v30 = sub_106FC0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "NLv3IntentPlusServerConversion parse received is NOT a valid alarm input: domainNode in nlv3Intent is nil", v31, 2u);
  }

LABEL_11:
  v32 = 0;
  return v32 & 1;
}

uint64_t *sub_14930(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_14994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_25E4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_149FC(uint64_t a1)
{
  v2 = sub_1065A0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:);
  v34 = *(v3 + 104);
  v34(&v33 - v7, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v2);
  v10 = sub_106590();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v8, v2);
  if (*(a1 + 16))
  {
    v14 = sub_32658(v10, v12);
    v16 = v15;

    if (v16)
    {
      sub_135FC(*(a1 + 56) + 32 * v14, v36);
      sub_25E4(&qword_137558, &qword_109540);
      if (swift_dynamicCast())
      {
        if (*(v35 + 16))
        {
          v17 = *(v35 + 32);

          return v17;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
  }

  v34(v6, v9, v2);
  v19 = sub_106590();
  v21 = v20;
  v13(v6, v2);
  if (!*(a1 + 16))
  {
LABEL_11:

    goto LABEL_12;
  }

  v22 = sub_32658(v19, v21);
  v24 = v23;

  if (v24)
  {
    sub_135FC(*(a1 + 56) + 32 * v22, v36);
    if (swift_dynamicCast())
    {
      return v35;
    }
  }

LABEL_12:
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v25 = sub_106D20();
  sub_135C4(v25, qword_137440);

  v26 = sub_106D10();
  v27 = sub_106FB0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36[0] = v29;
    *v28 = 136315138;
    v30 = sub_106DD0();
    v32 = sub_722E8(v30, v31, v36);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_0, v26, v27, "Unable to parse alarm ID from directInvocation.userData: %s", v28, 0xCu);
    sub_2738(v29);
  }

  return 0;
}

uint64_t sub_14DD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_14E2C()
{
  result = qword_137538;
  if (!qword_137538)
  {
    sub_14EB0(&qword_137530, &qword_1087D0);
    sub_14EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137538);
  }

  return result;
}

uint64_t sub_14EB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_14EF8()
{
  result = qword_137540;
  if (!qword_137540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137540);
  }

  return result;
}

uint64_t sub_14F4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_14F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v221 = a3;
  v226 = a1;
  v4 = sub_25E4(&unk_1374A0, &qword_10BB30);
  __chkstk_darwin(v4 - 8);
  v197 = &v195 - v5;
  v203 = sub_1065A0();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v201 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_1065E0();
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v211 = &v195 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1053C0();
  v217 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v199 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v204 = &v195 - v12;
  __chkstk_darwin(v11);
  v214 = &v195 - v13;
  v207 = sub_105460();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v205 = &v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_105410();
  v208 = *(v210 - 8);
  __chkstk_darwin(v210);
  v209 = &v195 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_106960();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v196 = &v195 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v216 = &v195 - v21;
  v22 = __chkstk_darwin(v20);
  v220 = &v195 - v23;
  v24 = __chkstk_darwin(v22);
  v219 = &v195 - v25;
  __chkstk_darwin(v24);
  v222 = &v195 - v26;
  v228 = sub_1053E0();
  v27 = *(v228 - 8);
  v28 = __chkstk_darwin(v228);
  v198 = &v195 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v200 = &v195 - v31;
  __chkstk_darwin(v30);
  v227 = &v195 - v32;
  v33 = sub_105E80();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v223 = &v195 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v195 - v37;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v39 = sub_106D20();
  v229 = sub_135C4(v39, qword_137440);
  v40 = sub_106D10();
  v41 = sub_106FC0();
  v42 = os_log_type_enabled(v40, v41);
  v224 = v17;
  v225 = a2;
  v215 = v8;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v218 = v16;
    v45 = v44;
    v231 = v44;
    *v43 = 136315138;
    v230 = a2;
    sub_25E4(&qword_137560, &qword_107E38);
    v46 = sub_106E30();
    v48 = sub_722E8(v46, v47, &v231);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_0, v40, v41, "Testing for incompatible parse for current IntentType: %s", v43, 0xCu);
    sub_2738(v45);
    v16 = v218;
  }

  v49 = *(v27 + 16);
  v50 = v226;
  v51 = v227;
  v52 = v228;
  v49(v227, v226, v228);
  v53 = (*(v27 + 88))(v51, v52);
  if (v53 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v27 + 96))(v51, v52);
LABEL_9:
    v54 = *(v34 + 32);
    v54(v38, v51, v33);
    v55 = v223;
    v54(v223, v38, v33);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    v56 = sub_B3800(v55);
    v57 = sub_B20AC();
    v58 = v224;
    if (v57 == 11)
    {

      v59 = sub_106D10();
      v60 = sub_106FC0();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v231 = v62;
        *v61 = 136315138;
        LOBYTE(v230) = *(v56 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb);
        sub_25E4(&qword_137568, &qword_10A8F0);
        v63 = sub_106E30();
        v65 = sub_722E8(v63, v64, &v231);

        *(v61 + 4) = v65;
        _os_log_impl(&dword_0, v59, v60, "nlv3 verb doesn't exist: %s", v61, 0xCu);
        sub_2738(v62);
      }

LABEL_13:
      v66 = sub_106800();
      return v66 != v225;
    }

    v68 = v219;
    sub_ADBA8(v57, v219);
    v69 = v222;
    (*(v58 + 32))(v222, v68, v16);
    v70 = *(v58 + 16);
    v71 = v220;
    v70(v220, v69, v16);
    v72 = sub_106D10();
    v73 = sub_106FC0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v228 = v56;
      v75 = v16;
      v76 = v74;
      v77 = swift_slowAlloc();
      v231 = v77;
      *v76 = 136315138;
      v70(v216, v71, v75);
      v78 = sub_106E30();
      v80 = v79;
      v81 = *(v58 + 8);
      v81(v71, v75);
      v82 = sub_722E8(v78, v80, &v231);

      *(v76 + 4) = v82;
      _os_log_impl(&dword_0, v72, v73, "nlv3 using verb: %s", v76, 0xCu);
      sub_2738(v77);
      v69 = v222;

      v16 = v75;
    }

    else
    {

      v81 = *(v58 + 8);
      v81(v71, v16);
    }

    v95 = v225;
    v96 = sub_8A634(v69, v221);
    if (v96 && v96 != v95)
    {
      v218 = v16;
      v97 = v96;
      v98 = sub_106D10();
      v99 = sub_106FC0();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = v95;
        v101 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        *v101 = 136315394;
        v230 = v100;
        sub_25E4(&qword_137560, &qword_107E38);
        v102 = sub_106E30();
        v104 = sub_722E8(v102, v103, &v231);

        *(v101 + 4) = v104;
        *(v101 + 12) = 2080;
        v230 = v97;
        v105 = sub_106E30();
        v107 = sub_722E8(v105, v106, &v231);

        *(v101 + 14) = v107;
        _os_log_impl(&dword_0, v98, v99, "nlv3 incompatible parse expecting type %s, received %s", v101, 0x16u);
        swift_arrayDestroy();

        v108 = v222;
      }

      else
      {

        v108 = v69;
      }

      v81(v108, v218);
      return 1;
    }

    v109 = sub_106D10();
    v110 = sub_106FC0();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_0, v109, v110, "nlv3 parse generated unknown or matching intent type", v111, 2u);
    }

    else
    {
    }

    v81(v69, v16);
    return 0;
  }

  if (v53 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v27 + 96))(v51, v52);
    sub_25E4(&qword_13B010, &unk_1087A0);

    goto LABEL_9;
  }

  if (v53 != enum case for Parse.directInvocation(_:))
  {
    if (v53 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v27 + 96))(v51, v52);
      swift_getObjectType();
      if (sub_107000())
      {
        v112 = v216;
        sub_274CC(v216);
        v113 = sub_8A634(v112, v221);
        (*(v224 + 8))(v112, v16);
        if (v113 && v113 != v225)
        {
          v114 = sub_106D10();
          v115 = sub_106FC0();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v231 = swift_slowAlloc();
            *v116 = 136315394;
            v230 = v225;
            sub_25E4(&qword_137560, &qword_107E38);
            v117 = sub_106E30();
            v119 = sub_722E8(v117, v118, &v231);

            *(v116 + 4) = v119;
            *(v116 + 12) = 2080;
            v230 = v113;
            v120 = sub_106E30();
            v122 = sub_722E8(v120, v121, &v231);

            *(v116 + 14) = v122;
            _os_log_impl(&dword_0, v114, v115, "nlv4 incompatible parse expecting type %s, received %s", v116, 0x16u);
            swift_arrayDestroy();
          }

          swift_unknownObjectRelease();

          return 1;
        }
      }

      v162 = sub_106D10();
      v163 = sub_106FC0();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        *v164 = 0;
        _os_log_impl(&dword_0, v162, v163, "nlv4 parse generated unknown or matching intent type", v164, 2u);
      }

      swift_unknownObjectRelease();
    }

    else if (v53 == enum case for Parse.uso(_:))
    {
      (*(v27 + 96))(v51, v52);
      v127 = v208;
      v128 = v209;
      v129 = v210;
      (*(v208 + 32))(v209, v51, v210);
      v130 = v205;
      sub_105400();
      v131 = sub_105440();
      (*(v206 + 8))(v130, v207);
      if (v131)
      {
        v132 = v216;
        sub_274CC(v216);
        v133 = sub_8A634(v132, v221);
        (*(v224 + 8))(v132, v16);
        v134 = v225;
        if (v133 && v133 != v225)
        {
          v135 = sub_106D10();
          v136 = sub_106FC0();
          if (os_log_type_enabled(v135, v136))
          {
            v137 = v127;
            v138 = v134;
            v139 = swift_slowAlloc();
            v231 = swift_slowAlloc();
            *v139 = 136315394;
            v230 = v138;
            sub_25E4(&qword_137560, &qword_107E38);
            v140 = sub_106E30();
            v142 = sub_722E8(v140, v141, &v231);

            *(v139 + 4) = v142;
            *(v139 + 12) = 2080;
            v230 = v133;
            v143 = sub_106E30();
            v145 = sub_722E8(v143, v144, &v231);

            *(v139 + 14) = v145;
            _os_log_impl(&dword_0, v135, v136, "uso incompatible parse expecting type %s, received %s", v139, 0x16u);
            swift_arrayDestroy();

            (*(v137 + 8))(v209, v210);
          }

          else
          {

            (*(v127 + 8))(v128, v129);
          }

          return 1;
        }
      }

      v175 = sub_106D10();
      v176 = sub_106FC0();
      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        *v177 = 0;
        _os_log_impl(&dword_0, v175, v176, "uso parse generated unknown or matching intent type", v177, 2u);
      }

      (*(v127 + 8))(v128, v129);
    }

    else if (v53 == enum case for Parse.ifClientAction(_:))
    {
      (*(v27 + 8))(v51, v52);
    }

    else
    {
      v165 = v200;
      v49(v200, v50, v52);
      v166 = sub_106D10();
      v167 = sub_106FB0();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v231 = v169;
        *v168 = 136315138;
        v49(v198, v165, v228);
        v170 = sub_106E30();
        v172 = v171;
        v173 = *(v27 + 8);
        v173(v165, v228);
        v174 = sub_722E8(v170, v172, &v231);

        *(v168 + 4) = v174;
        _os_log_impl(&dword_0, v166, v167, "Received a currently un-handled input for incompatibility check (add more parses): %s", v168, 0xCu);
        sub_2738(v169);
        v52 = v228;

        v51 = v227;
      }

      else
      {

        v173 = *(v27 + 8);
        v173(v165, v52);
      }

      v173(v51, v52);
    }

    return 0;
  }

  (*(v27 + 96))(v51, v52);
  v83 = v214;
  v84 = v215;
  (*(v217 + 32))(v214, v51);
  v85 = v83;
  v86 = sub_1053A0();
  v88 = v87;
  v89 = v212;
  v90 = v211;
  v91 = v213;
  (*(v212 + 104))(v211, enum case for DirectInvocationUtils.Alarm.URI.stopAlarm(_:), v213);
  v92 = sub_1065D0();
  v94 = v93;
  (*(v89 + 8))(v90, v91);
  if (v86 == v92 && v88 == v94)
  {

LABEL_42:
    v124 = sub_106D10();
    v125 = sub_106FC0();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_0, v124, v125, "Received stop direct invocation, comparing to DismissAlarmHalIntent", v126, 2u);
    }

    (*(v217 + 8))(v85, v84);
    v66 = sub_106910();
    return v66 != v225;
  }

  v123 = sub_107370();

  if (v123)
  {
    goto LABEL_42;
  }

  v146 = sub_1053B0();
  v147 = v84;
  v148 = v85;
  v149 = v217;
  if (!v146)
  {
LABEL_73:
    v178 = *(v149 + 16);
    v179 = v204;
    v178(v204, v148, v147);
    v180 = sub_106D10();
    v181 = sub_106FB0();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v231 = v229;
      *v182 = 136315138;
      v178(v199, v179, v147);
      v183 = sub_106E30();
      v185 = v184;
      v186 = *(v149 + 8);
      v186(v179, v147);
      v187 = sub_722E8(v183, v185, &v231);

      *(v182 + 4) = v187;
      _os_log_impl(&dword_0, v180, v181, "Received unexpected directInvocation in FlowStrategy: %s", v182, 0xCu);
      sub_2738(v229);

      v186(v148, v147);
    }

    else
    {

      v188 = *(v149 + 8);
      v188(v179, v147);
      v188(v148, v147);
    }

    return 0;
  }

  v150 = v146;
  v151 = v202;
  v152 = v201;
  v153 = v203;
  (*(v202 + 104))(v201, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v203);
  v154 = sub_106590();
  v156 = v155;
  (*(v151 + 8))(v152, v153);
  if (!*(v150 + 16))
  {

    goto LABEL_72;
  }

  v157 = sub_32658(v154, v156);
  v159 = v158;

  if ((v159 & 1) == 0)
  {
LABEL_72:

    goto LABEL_73;
  }

  sub_135FC(*(v150 + 56) + 32 * v157, &v231);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_73;
  }

  v160 = v197;
  sub_106940();
  v161 = v224;
  if ((*(v224 + 48))(v160, 1, v16) == 1)
  {
    sub_16F70(v160, &unk_1374A0, &qword_10BB30);
    goto LABEL_73;
  }

  v189 = v196;
  (*(v161 + 32))(v196, v160, v16);
  v190 = sub_8A634(v189, v221);
  if (!v190)
  {
    v192 = sub_106D10();
    v193 = sub_106FC0();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      *v194 = 0;
      _os_log_impl(&dword_0, v192, v193, "direct invocation parse generated unknown intent type, comparing to CreateAlarmIntent", v194, 2u);
    }

    (*(v161 + 8))(v189, v16);
    (*(v149 + 8))(v148, v147);
    goto LABEL_13;
  }

  v191 = v190;
  (*(v161 + 8))(v189, v16);
  (*(v149 + 8))(v148, v147);
  return v191 != v225;
}

uint64_t sub_169D8(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = a2;
  v40[1] = a1;
  v4 = sub_104C30();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v40 - v11;
  sub_14994(a3, v40 - v11, &qword_1374F0, &qword_1080F0);
  v13 = sub_106630();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    sub_16F70(v12, &qword_1374F0, &qword_1080F0);
LABEL_8:
    if (qword_136C50 != -1)
    {
      swift_once();
    }

    v20 = sub_106D20();
    sub_135C4(v20, qword_137440);
    v21 = sub_106D10();
    v22 = sub_106FC0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "makeIntentExecutionBehavior: No eligible devices for remote execution found. Continuing local execution.", v23, 2u);
    }

    sub_104C80();

    v24 = v43;
    sub_1069B0();
    sub_16F28(0, &qword_137570, INIntent_ptr);
    v25 = v24;
    sub_104C20();
    v26 = sub_104C70();
    (*(v41 + 8))(v6, v42);
    return v26;
  }

  v16 = sub_106520();
  v17 = *(v14 + 8);
  v17(v12, v13);
  if (!v16)
  {
    goto LABEL_8;
  }

  sub_14994(a3, v10, &qword_1374F0, &qword_1080F0);
  if (v15(v10, 1, v13) == 1)
  {
    sub_16F70(v10, &qword_1374F0, &qword_1080F0);
  }

  else
  {
    sub_106610();
    v19 = v18;
    v17(v10, v13);
    if (v19)
    {

      goto LABEL_8;
    }
  }

  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v27 = sub_106D20();
  sub_135C4(v27, qword_137440);
  v28 = v16;
  v29 = v43;
  v30 = sub_106D10();
  v31 = sub_106FC0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44 = v34;
    *v32 = 136315394;
    v35 = sub_106C40();
    v37 = sub_722E8(v35, v36, &v44);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2112;
    *(v32 + 14) = v29;
    *v33 = v29;
    v38 = v29;
    _os_log_impl(&dword_0, v30, v31, "makeIntentExecutionBehavior: Handle on target device: %s, for intent: %@", v32, 0x16u);
    sub_16F70(v33, &qword_137578, &unk_10B4E0);

    sub_2738(v34);
  }

  sub_104C80();
  v26 = sub_104C60();

  return v26;
}

uint64_t sub_16F28(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_16F70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_25E4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_16FD0(unint64_t a1)
{
  v2 = *v1;
  if (a1 >> 62)
  {
    v5 = a1;
    v6 = sub_107270();
    a1 = v5;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1071C0();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
LABEL_9:
  v7 = v4;
  [v2 setAlarm:?];
}

void sub_17098(uint64_t a1)
{
  v2 = *v1;
  sub_106AA0();
  isa = sub_106ED0().super.isa;
  [v2 setAlarms:isa];
}

uint64_t sub_17108()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137580);
  sub_135C4(v0, qword_137580);
  return sub_106A80();
}

Swift::Int sub_1715C()
{
  sub_107400();
  sub_107410(0);
  return sub_107420();
}

Swift::Int sub_171C8(uint64_t a1)
{
  sub_107400();
  sub_107410(0);
  return sub_107420();
}

uint64_t sub_17218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_104D60();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_25E4(&qword_137598, &unk_107EB0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for ErrorNotFoundParameters(0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_106200();
  v3[18] = swift_task_alloc();
  v5 = sub_106D20();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = sub_106300();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v7 = sub_106320();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v8 = sub_104FF0();
  v3[30] = v8;
  v3[31] = *(v8 - 8);
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_17540, 0, 0);
}

uint64_t sub_17540()
{
  v76 = v0;
  if (qword_136C58 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_135C4(v0[19], qword_137580);
  v3 = v1;
  v4 = sub_106D10();
  v5 = sub_106FC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = [v6 unsupportedReason];

    _os_log_impl(&dword_0, v4, v5, "AlarmOutputFactory.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v7, 0xCu);

    v8 = v0[5];
  }

  else
  {

    v8 = v0[5];
    v4 = v8;
  }

  [v8 unsupportedReason];
  v9 = sub_106860();
  if (v10)
  {
    v11 = sub_106D10();
    v12 = sub_106FB0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "AlarmOutputFactory.makeUnsupportedValueOutput got no error reason!", v13, 2u);
    }

    sub_19F30();
    swift_allocError();
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v9;
    sub_104FE0();
    if (v16 == 1)
    {
      v29 = v0[21];
      v31 = v0[19];
      v30 = v0[20];
      v32 = v0[4];
      (*(v0[23] + 104))(v0[24], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[22]);
      (*(v30 + 16))(v29, v2, v31);
      mach_absolute_time();
      sub_106330();
      if (v32)
      {
        v33 = sub_CF1C4();
      }

      else
      {
        v33 = _swiftEmptyArrayStorage;
      }

      v46 = v0[16];
      v47 = v0[14];
      type metadata accessor for ErrorCATPatternsExecutor(0);
      sub_1061E0();
      v0[40] = sub_1060D0();
      v48 = sub_106160();
      v49 = *(*(v48 - 8) + 56);
      v50 = 1;
      v49(v46, 1, 1, v48);
      *(v46 + v47[5]) = 0;
      *(v46 + v47[6]) = v33;
      v51 = v47[7];
      *(v46 + v51) = 0;
      if (v32)
      {
        v52 = v0[4];
        *(v46 + v51) = sub_1CE68();
        v53 = [v52 label];
        if (v53)
        {
          v54 = v53;
          sub_106E20();

          sub_106E50();

          v50 = 0;
        }

        else
        {
          v50 = 1;
        }
      }

      v69 = v0[16];
      v70 = v0[12];
      v49(v70, v50, 1, v48);
      sub_1A814(v70, v69);
      v66 = sub_1FB6C();
      v0[41] = v66;
      v74 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v67 = swift_task_alloc();
      v0[42] = v67;
      *v67 = v0;
      v68 = sub_185E0;
    }

    else if (v16 == 2)
    {
      v17 = v0[21];
      v19 = v0[19];
      v18 = v0[20];
      v20 = v0[17];
      v21 = v0[14];
      v73 = v0[4];
      (*(v0[23] + 104))(v0[24], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[22]);
      (*(v18 + 16))(v17, v2, v19);
      mach_absolute_time();
      sub_106330();
      type metadata accessor for ErrorCATPatternsExecutor(0);
      sub_1061E0();
      v0[33] = sub_1060D0();
      v22 = sub_106160();
      v23 = *(*(v22 - 8) + 56);
      v24 = 1;
      v23(v20, 1, 1, v22);
      *(v20 + v21[5]) = 1;
      *(v20 + v21[6]) = _swiftEmptyArrayStorage;
      v25 = v21[7];
      *(v20 + v25) = 0;
      if (v73)
      {
        v26 = v0[4];
        *(v20 + v25) = sub_1CE68();
        v27 = [v26 label];
        if (v27)
        {
          v28 = v27;
          sub_106E20();

          sub_106E50();

          v24 = 0;
        }

        else
        {
          v24 = 1;
        }
      }

      v64 = v0[17];
      v65 = v0[13];
      v23(v65, v24, 1, v22);
      sub_1A814(v65, v64);
      v66 = sub_1FB6C();
      v0[34] = v66;
      v74 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v67 = swift_task_alloc();
      v0[35] = v67;
      *v67 = v0;
      v68 = sub_17F74;
    }

    else
    {
      v34 = sub_106D10();
      v35 = sub_106FC0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v75 = v37;
        *v36 = 136315138;
        v0[2] = v16;
        v38 = sub_106E30();
        v40 = sub_722E8(v38, v39, &v75);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_0, v34, v35, "#Response Handling unknown SearchAlarmAlarmsUnsupportedReason: %s", v36, 0xCu);
        sub_2738(v37);
      }

      v41 = v0[21];
      v43 = v0[19];
      v42 = v0[20];
      v44 = v0[4];
      (*(v0[23] + 104))(v0[24], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[22]);
      (*(v42 + 16))(v41, v2, v43);
      mach_absolute_time();
      sub_106330();
      if (v44)
      {
        v45 = sub_CF1C4();
      }

      else
      {
        v45 = _swiftEmptyArrayStorage;
      }

      v55 = v0[14];
      v56 = v0[15];
      type metadata accessor for ErrorCATPatternsExecutor(0);
      sub_1061E0();
      v0[47] = sub_1060D0();
      v57 = sub_106160();
      v58 = *(*(v57 - 8) + 56);
      v59 = 1;
      v58(v56, 1, 1, v57);
      *(v56 + v55[5]) = 0;
      *(v56 + v55[6]) = v45;
      v60 = v55[7];
      *(v56 + v60) = 0;
      if (v44)
      {
        v61 = v0[4];
        *(v56 + v60) = sub_1CE68();
        v62 = [v61 label];
        if (v62)
        {
          v63 = v62;
          sub_106E20();

          sub_106E50();

          v59 = 0;
        }

        else
        {
          v59 = 1;
        }
      }

      v71 = v0[15];
      v72 = v0[11];
      v58(v72, v59, 1, v57);
      sub_1A814(v72, v71);
      v66 = sub_1FB6C();
      v0[48] = v66;
      v74 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v67 = swift_task_alloc();
      v0[49] = v67;
      *v67 = v0;
      v68 = sub_18C54;
    }

    v67[1] = v68;

    return v74(0x6F4E23726F727245, 0xEE00646E756F4674, v66);
  }
}

uint64_t sub_17F74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v4 = sub_182FC;
  }

  else
  {
    v4 = sub_180B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_180B0()
{
  v1 = v0[17];

  sub_1A884(v1);
  sub_104D20();
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_1817C;
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[10];
  v6 = v0[3];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v5, v3, v4, 0);
}

uint64_t sub_1817C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = v2[36];
  (*(v2[7] + 8))(v2[10], v2[6]);

  if (v0)
  {
    v4 = sub_192C8;
  }

  else
  {
    v4 = sub_18480;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_182FC()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[17];

  sub_1A884(v7);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_18480()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[29], v0[25]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_185E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v4 = sub_18968;
  }

  else
  {
    v4 = sub_1871C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1871C()
{
  v1 = v0[16];

  sub_1A884(v1);
  sub_104D20();
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_187E8;
  v3 = v0[32];
  v4 = v0[28];
  v5 = v0[9];
  v6 = v0[3];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v5, v3, v4, 0);
}

uint64_t sub_187E8()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = v2[43];
  (*(v2[7] + 8))(v2[9], v2[6]);

  if (v0)
  {
    v4 = sub_19430;
  }

  else
  {
    v4 = sub_18AF0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_18968()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[16];

  sub_1A884(v7);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_18AF0()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[28], v0[25]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_18C54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v4 = sub_18FDC;
  }

  else
  {
    v4 = sub_18D90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_18D90()
{
  v1 = v0[15];

  sub_1A884(v1);
  sub_104D20();
  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_18E5C;
  v3 = v0[32];
  v4 = v0[27];
  v5 = v0[8];
  v6 = v0[3];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v5, v3, v4, 0);
}

uint64_t sub_18E5C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = v2[50];
  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v4 = sub_1959C;
  }

  else
  {
    v4 = sub_19164;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_18FDC()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[15];

  sub_1A884(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_19164()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_192C8()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[29], v0[25]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19430()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[28], v0[25]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1959C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_106200();
  v3[5] = swift_task_alloc();
  v4 = sub_106D20();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_106300();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_106320();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_198B0, 0, 0);
}

uint64_t sub_198B0()
{
  (*(v0[10] + 104))(v0[11], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[9]);
  if (qword_136C58 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_135C4(v3, qword_137580);
  (*(v2 + 16))(v1, v4, v3);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[15] = sub_1060D0();
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_19A54;

  return v7(0xD000000000000013, 0x800000000010C480, _swiftEmptyArrayStorage);
}

uint64_t sub_19A54(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_19D20, 0, 0);
  }

  else
  {
    v4[18] = a1;

    v6 = swift_task_alloc();
    v4[19] = v6;
    *v6 = v5;
    v6[1] = sub_19BF4;
    v7 = v4[14];
    v8 = v4[3];
    v9 = v4[4];
    v10 = v4[2];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v8, v9, v7, 0);
  }
}

uint64_t sub_19BF4()
{
  v2 = *(*v1 + 144);
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_19E80;
  }

  else
  {
    v3 = sub_19DD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_19D20()
{

  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19DD8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19E80()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_19F30()
{
  result = qword_1375A0;
  if (!qword_1375A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375A0);
  }

  return result;
}

uint64_t sub_19F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return _swift_task_switch(sub_19FA8, 0, 0);
}

uint64_t sub_19FA8()
{
  sub_106560();
  sub_106550();
  sub_106540();

  sub_1A8E0(v0 + 2, v0[5]);
  sub_104CC0();
  sub_104DD0();
  swift_allocObject();
  sub_104DB0();
  sub_2738(v0 + 2);
  v1 = sub_104DC0();

  v2 = [objc_allocWithZone(SAUIAddViews) init];
  v0[16] = v2;
  if (v1 >> 62)
  {
    sub_16F28(0, &qword_1375B8, SAAceView_ptr);

    sub_107260();
  }

  else
  {

    sub_107380();
    sub_16F28(0, &qword_1375B8, SAAceView_ptr);
  }

  sub_72890(v3);
  sub_16F28(0, &qword_1375B8, SAAceView_ptr);
  isa = sub_106ED0().super.isa;

  [v2 setViews:isa];

  sub_104D30();
  v5 = sub_106E10();

  [v2 setDialogPhase:v5];

  sub_104CA0();
  v6 = v0[10];
  v7 = v0[11];
  sub_1A8E0(v0 + 7, v6);
  v8 = swift_task_alloc();
  v0[17] = v8;
  v9 = sub_16F28(0, &qword_1375C0, SABaseCommand_ptr);
  *v8 = v0;
  v8[1] = sub_1A278;

  return AceServiceInvokerAsync.submit<A>(_:)(v2, v6, v9, v7);
}

uint64_t sub_1A278(void *a1)
{
  *(*v2 + 144) = v1;

  if (v1)
  {
    v4 = sub_1A4E4;
  }

  else
  {

    v4 = sub_1A394;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1A394()
{
  sub_2738(v0 + 7);
  if (qword_136C58 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_137580);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "generateCustomFlowOutput completed successfully.", v4, 2u);
  }

  v5 = v0[16];
  v6 = v0[13];

  sub_222B8(v6);
  sub_104F00();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A4E4()
{
  sub_2738((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A550@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25E4(&qword_1375A8, &qword_10AA90);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = sub_104D60();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_104CF0();
  sub_222B8(a1);
  (*(v10 + 8))(v12, v9);
  sub_106560();
  sub_106550();
  sub_106540();

  sub_106550();
  sub_106540();

  sub_1A8E0(v19, v19[3]);
  sub_104CC0();
  v13 = sub_104FF0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a2, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  v15 = sub_105430();
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  a3[3] = v15;
  a3[4] = &protocol witness table for AceOutput;
  sub_1A924(a3);
  sub_104ED0();
  sub_16F70(v17, &qword_1375B0, &qword_107EC0);
  sub_16F70(v8, &qword_1375A8, &qword_10AA90);
  sub_2738(v20);
  return sub_2738(v19);
}

uint64_t sub_1A814(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A884(uint64_t a1)
{
  found = type metadata accessor for ErrorNotFoundParameters(0);
  (*(*(found - 8) + 8))(a1, found);
  return a1;
}

void *sub_1A8E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_1A924(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmOutputFactory.TemplatingError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AlarmOutputFactory.TemplatingError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1AA74()
{
  result = qword_1375C8;
  if (!qword_1375C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375C8);
  }

  return result;
}

uint64_t sub_1AAC8(void *a1)
{
  sub_1068D0();
  sub_1068C0();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_1375D0, &qword_107FA0);
  sub_104AC0();
  sub_262C(a1, v5);
  _s18NeedsValueStrategyCMa_0();
  v2 = swift_allocObject();
  sub_1AD44(v5, v2 + 16);
  *&v5[0] = v2;
  sub_1AD5C();
  sub_104A30();
  sub_104AA0();
  sub_25E4(&qword_1375E0, &unk_107FB0);
  sub_1ADB4();
  sub_104A70();
  sub_104AF0();
  sub_262C(a1, v5);
  sub_1AE18();
  sub_104A90();
  sub_104AE0();
  sub_262C(a1, v4);
  sub_1AE6C();
  sub_104A50();
  sub_104AB0();

  sub_2738(a1);
  sub_1AEC0(v4);
  return sub_1AF14(v5);
}

uint64_t sub_1ACB8(void *a1, uint64_t a2)
{
  *a1 = sub_C040C();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1AD44(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1AD5C()
{
  result = qword_1375D8;
  if (!qword_1375D8)
  {
    _s18NeedsValueStrategyCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375D8);
  }

  return result;
}

unint64_t sub_1ADB4()
{
  result = qword_1375E8;
  if (!qword_1375E8)
  {
    sub_14EB0(&qword_1375E0, &unk_107FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375E8);
  }

  return result;
}

unint64_t sub_1AE18()
{
  result = qword_1375F0;
  if (!qword_1375F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375F0);
  }

  return result;
}

unint64_t sub_1AE6C()
{
  result = qword_1375F8;
  if (!qword_1375F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375F8);
  }

  return result;
}

uint64_t sub_1AF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_106630();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1063B0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B0B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_106630();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1063B0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _s20HandleIntentStrategyVMa(uint64_t a1)
{
  result = qword_137670;
  if (!qword_137670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B224(uint64_t a1)
{
  result = sub_1B2C0();
  if (v2 <= 0x3F)
  {
    result = sub_106630();
    if (v3 <= 0x3F)
    {
      result = sub_1063B0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B2C0()
{
  result = qword_137680;
  if (!qword_137680)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_137680);
  }

  return result;
}

uint64_t sub_1B324()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137600);
  sub_135C4(v0, qword_137600);
  return sub_106A80();
}

uint64_t sub_1B370(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_106BE0();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_104D60();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_106D20();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = sub_106300();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v8 = sub_106320();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v9 = sub_104FF0();
  v3[26] = v9;
  v3[27] = *(v9 - 8);
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1B600, 0, 0);
}

uint64_t sub_1B600()
{
  if (qword_136C60 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4(*(v0 + 136), qword_137600);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DismissAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  *(v0 + 232) = _s20HandleIntentStrategyVMa(0);
  sub_106630();
  v5 = sub_106530();
  *(v0 + 288) = v5 & 1;
  sub_25E4(&qword_1376C8, &qword_10B020);
  v6 = sub_105170();
  v7 = [v6 alarmId];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = sub_106E20();
  v10 = v9;

  v11 = sub_106520();
  if (v11)
  {
    v12 = v11;

LABEL_8:
    sub_104FE0();
    goto LABEL_10;
  }

  v13 = *(v0 + 224);
  sub_25E4(&qword_1376D0, &unk_1080E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_107FC0;
  *(inited + 32) = v8;
  v15 = inited + 32;
  *(inited + 40) = v10;
  sub_BD348(inited, v13);
  swift_setDeallocating();
  sub_1CDA8(v15);
LABEL_10:
  v16 = *(v0 + 152);
  v17 = *(v0 + 136);
  v18 = *(v0 + 144);
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 160));
  (*(v18 + 16))(v16, v1, v17);
  mach_absolute_time();
  sub_106330();
  if (qword_136C90 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 80);
  v20 = swift_task_alloc();
  *(v0 + 240) = v20;
  *(v20 + 16) = v19;
  v21 = swift_task_alloc();
  *(v0 + 248) = v21;
  *v21 = v0;
  v21[1] = sub_1B944;

  return sub_D29F4(v5 & 1, sub_1CDA0, v20);
}

uint64_t sub_1B944(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_1BE0C;
  }

  else
  {
    v4 = sub_1BA80;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1BA80(uint64_t a1)
{
  sub_104CF0();
  v2 = swift_task_alloc();
  *(v1 + 272) = v2;
  *v2 = v1;
  v2[1] = sub_1BB34;
  v3 = *(v1 + 288);
  v4 = *(v1 + 224);
  v5 = *(v1 + 200);
  v6 = *(v1 + 128);
  v7 = *(v1 + 64);

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v6, v4, v5, v3);
}

uint64_t sub_1BB34()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = v2[32];
  (*(v2[15] + 8))(v2[16], v2[14]);

  if (v0)
  {
    v4 = sub_1BF68;
  }

  else
  {
    v4 = sub_1BCB4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1BCB4()
{
  v1 = v0[28];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v10 = v0[23];
  v11 = v0[26];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  (*(v6 + 104))(v5, enum case for CrossDeviceCommandExecution.Result.success(_:), v7);
  sub_106380();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v3, v10);
  (*(v2 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BE0C()
{
  v1 = v0[28];
  v2 = v0[27];
  v8 = v0[26];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v4 + 104))(v3, enum case for CrossDeviceCommandExecution.Result.error(_:), v5);
  sub_106380();
  (*(v4 + 8))(v3, v5);
  swift_willThrow();
  (*(v2 + 8))(v1, v8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BF68()
{
  v1 = v0[28];
  v2 = v0[27];
  v8 = v0[26];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v4 + 104))(v3, enum case for CrossDeviceCommandExecution.Result.error(_:), v5);
  sub_106380();
  (*(v4 + 8))(v3, v5);
  swift_willThrow();
  (*(v2 + 8))(v1, v8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C0C4(uint64_t a1)
{
  v2 = sub_25E4(&qword_137598, &unk_107EB0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v23 - v7;
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  _s20HandleIntentStrategyVMa(0);
  sub_106630();
  v11 = sub_106520();
  if (v11)
  {
    v12 = v11;
    sub_106C20();

    v13 = sub_106160();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_106160();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = type metadata accessor for StopIntentHandledElsewhereParameters(0);
  sub_1A814(v10, a1 + v15[6]);
  v16 = sub_106520();
  if (v16)
  {
    v17 = v16;
    sub_106C30();
  }

  else
  {
    v18 = sub_106160();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  }

  sub_1A814(v8, a1 + v15[8]);
  v19 = sub_106520();
  if (v19)
  {
    v20 = v19;
    sub_106C10();
  }

  else
  {
    v21 = sub_106160();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  }

  return sub_1A814(v5, a1 + v15[5]);
}

uint64_t sub_1C358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_1C41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_1C4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  return _swift_task_switch(sub_1C504, 0, 0);
}

uint64_t sub_1C504()
{
  v1 = sub_106620();
  sub_106390();

  sub_104DA0();
  sub_104D90();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C5A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_1C650;

  return sub_1B370(a1, a2);
}

uint64_t sub_1C650()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1C784, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1C784()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1C850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_1C914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_1C9D8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CA94;

  return sub_D4258(a1);
}

uint64_t sub_1CA94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  sub_25E4(&qword_1374F0, &qword_1080F0);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1CC28, 0, 0);
}

uint64_t sub_1CC28()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v0[5] + 20);
  v6 = sub_106630();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v3 + v5, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v8 = sub_169D8(v4, v2, v1);
  sub_1CDFC(v1);

  v9 = v0[1];

  return v9(v8);
}

unint64_t sub_1CD48()
{
  result = qword_1376B8;
  if (!qword_1376B8)
  {
    _s20HandleIntentStrategyVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1376B8);
  }

  return result;
}

uint64_t sub_1CDFC(uint64_t a1)
{
  v2 = sub_25E4(&qword_1374F0, &qword_1080F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CE68()
{
  v1 = v0;
  v2 = sub_104740();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v73 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_104750();
  v72 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_104710();
  v70 = *(v74 - 8);
  __chkstk_darwin(v74);
  v67 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1047D0();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v65 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&qword_137518, &qword_107E28);
  __chkstk_darwin(v9 - 8);
  v66 = v59 - v10;
  v11 = sub_104670();
  v64 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = v59 - v15;
  v16 = sub_25E4(&qword_137500, &qword_107E10);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v59 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v59 - v24;
  __chkstk_darwin(v23);
  v27 = v59 - v26;
  [v1 period];
  v28 = sub_106A40();
  if (v28 != sub_106A40())
  {
    return 0;
  }

  v62 = v2;
  v29 = [v1 time];
  v60 = v11;
  v61 = v3;
  if (v29)
  {
    v30 = v29;
    sub_104570();

    v31 = sub_1045E0();
    (*(*(v31 - 8) + 56))(v25, 0, 1, v31);
  }

  else
  {
    v31 = sub_1045E0();
    (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  }

  sub_1D68C(v25, v27);
  sub_1045E0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v27, 1, v31))
  {
    v34 = &qword_137500;
    v35 = &qword_107E10;
    v36 = v27;
  }

  else
  {
    v59[1] = sub_104580();
    v39 = v38;
    sub_16F70(v27, &qword_137500, &qword_107E10);
    if (v39)
    {
      return 0;
    }

    v40 = [v1 time];
    if (v40)
    {
      v41 = v40;
      sub_104570();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    (*(v32 + 56))(v19, v42, 1, v31);
    sub_1D68C(v19, v22);
    if (v33(v22, 1, v31))
    {
      v34 = &qword_137500;
      v35 = &qword_107E10;
      v36 = v22;
    }

    else
    {
      sub_1045A0();
      v44 = v43;
      sub_16F70(v22, &qword_137500, &qword_107E10);
      if (v44)
      {
        return 0;
      }

      v45 = v65;
      sub_106240();
      sub_106210();
      v46 = v70;
      v47 = v67;
      (*(v70 + 104))(v67, enum case for Calendar.MatchingPolicy.nextTime(_:), v74);
      v49 = v71;
      v48 = v72;
      (*(v72 + 104))(v71, enum case for Calendar.RepeatedTimePolicy.first(_:), v75);
      v50 = v61;
      v51 = v62;
      v52 = v73;
      (*(v61 + 104))(v73, enum case for Calendar.SearchDirection.forward(_:), v62);
      v53 = v66;
      sub_104760();
      (*(v50 + 8))(v52, v51);
      (*(v48 + 8))(v49, v75);
      (*(v46 + 8))(v47, v74);
      v54 = v64;
      v55 = *(v64 + 8);
      v56 = v60;
      v55(v14, v60);
      (*(v68 + 8))(v45, v69);
      if ((*(v54 + 48))(v53, 1, v56) != 1)
      {
        v57 = v63;
        (*(v54 + 32))(v63, v53, v56);
        sub_106090();
        swift_allocObject();
        sub_106080();
        sub_104660();
        sub_106070();

        v58 = sub_106060();

        v55(v57, v56);
        return v58;
      }

      v34 = &qword_137518;
      v35 = &qword_107E28;
      v36 = v53;
    }
  }

  sub_16F70(v36, v34, v35);
  return 0;
}

uint64_t sub_1D68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137500, &qword_107E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6FC()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_1376D8);
  sub_135C4(v0, qword_1376D8);
  return sub_106A80();
}

id sub_1D748(uint64_t a1)
{
  v1 = sub_106290();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25E4(&qword_1376F0, &unk_10A900);
  __chkstk_darwin(v5 - 8);
  v7 = &v25[-v6];
  sub_106280();
  sub_106270();
  (*(v2 + 8))(v4, v1);
  v8 = sub_106D80();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_16F70(v7, &qword_1376F0, &unk_10A900);
LABEL_4:
    if (qword_136C68 != -1)
    {
      swift_once();
    }

    v10 = sub_106D20();
    sub_135C4(v10, qword_1376D8);
    v14 = sub_106D10();
    v11 = sub_106FC0();
    if (os_log_type_enabled(v14, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v14, v11, "Resolved alarm from SRR is nil!", v12, 2u);
    }

LABEL_8:

    return 0;
  }

  sub_106AA0();
  v14 = sub_106D50();
  (*(v9 + 8))(v7, v8);
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = [v14 identifier];
  if (!v15)
  {
    if (qword_136C68 != -1)
    {
      swift_once();
    }

    v21 = sub_106D20();
    sub_135C4(v21, qword_1376D8);
    v22 = sub_106D10();
    v23 = sub_106FB0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Resolved alarm from SRR is not nil, but alarmId of the resolved alarm is nil!", v24, 2u);
    }

    goto LABEL_8;
  }

  v16 = v15;
  sub_106A50();
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v18 = sub_106E10();
  v19 = [v17 initWithIdentifier:v16 displayString:v18];

  sub_1F7B8();
  isa = sub_107090(1).super.super.isa;
  [v19 setIncludeSleepAlarm:isa];

  return v19;
}

id sub_1DB58(uint64_t a1)
{
  v2 = sub_106290();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_105B30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E4(&qword_1376F8, &qword_1080F8);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_25E4(&qword_137700, &qword_108100);
  v12 = __chkstk_darwin(v11 - 8);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v41 - v15;
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  v19 = sub_105830();
  if (!v19)
  {
    goto LABEL_9;
  }

  v43 = a1;
  v44 = v3;
  v42 = v2;
  v46 = v19;
  sub_105B20();
  (*(v6 + 104))(v16, enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:), v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v20 = *(v8 + 48);
  sub_14994(v18, v10, &qword_137700, &qword_108100);
  sub_14994(v16, &v10[v20], &qword_137700, &qword_108100);
  v21 = *(v6 + 48);
  if (v21(v10, 1, v5) == 1)
  {
    sub_16F70(v16, &qword_137700, &qword_108100);
    sub_16F70(v18, &qword_137700, &qword_108100);
    if (v21(&v10[v20], 1, v5) == 1)
    {
      sub_16F70(v10, &qword_137700, &qword_108100);
LABEL_17:
      if (qword_136C68 != -1)
      {
        swift_once();
      }

      v37 = sub_106D20();
      sub_135C4(v37, qword_1376D8);
      v38 = sub_106D10();
      v39 = sub_106FC0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "Skipping SRR for .common_ListPosition_Next requests", v40, 2u);
      }

      return 0;
    }
  }

  else
  {
    v22 = v47;
    sub_14994(v10, v47, &qword_137700, &qword_108100);
    if (v21(&v10[v20], 1, v5) != 1)
    {
      v32 = &v10[v20];
      v33 = v45;
      (*(v6 + 32))(v45, v32, v5);
      sub_1F804(&qword_137708, &type metadata accessor for UsoEntity_common_ListPosition.DefinedValues, &protocol conformance descriptor for UsoEntity_common_ListPosition.DefinedValues);
      v34 = v22;
      v35 = sub_106E00();
      v36 = *(v6 + 8);
      v36(v33, v5);
      sub_16F70(v16, &qword_137700, &qword_108100);
      sub_16F70(v18, &qword_137700, &qword_108100);
      v36(v34, v5);
      sub_16F70(v10, &qword_137700, &qword_108100);
      v3 = v44;
      if (v35)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    sub_16F70(v16, &qword_137700, &qword_108100);
    sub_16F70(v18, &qword_137700, &qword_108100);
    (*(v6 + 8))(v22, v5);
  }

  sub_16F70(v10, &qword_1376F8, &qword_1080F8);
  v3 = v44;
LABEL_8:

  v2 = v42;
LABEL_9:
  v23 = v48;
  sub_106280();
  sub_105600();
  v24 = sub_106260();

  (*(v3 + 8))(v23, v2);
  if (v24)
  {
    v25 = sub_105600();
    v26 = sub_1D748(v25);

    return v26;
  }

  if (qword_136C68 != -1)
  {
    swift_once();
  }

  v28 = sub_106D20();
  sub_135C4(v28, qword_1376D8);
  v29 = sub_106D10();
  v30 = sub_106FC0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "There's no referenceType or usoListPosition in uso graph. Skip calling SRR.", v31, 2u);
  }

  return 0;
}

uint64_t sub_1E22C()
{
  v0 = sub_25E4(&qword_1376F0, &unk_10A900);
  __chkstk_darwin(v0 - 8);
  v2 = &v17[-v1];
  v3 = sub_106290();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_105600();
  sub_106280();

  v7 = sub_106260();

  v8 = *(v4 + 8);
  v8(v6, v3);
  if (v7)
  {
    sub_106280();
    sub_106270();
    v8(v6, v3);
    v9 = sub_106D80();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v2, 1, v9) == 1)
    {
      sub_16F70(v2, &qword_1376F0, &unk_10A900);
    }

    else
    {
      sub_106AA0();
      v16 = sub_106D50();
      (*(v10 + 8))(v2, v9);
      if (v16)
      {
        goto LABEL_10;
      }
    }
  }

  if (qword_136C68 != -1)
  {
    swift_once();
  }

  v11 = sub_106D20();
  sub_135C4(v11, qword_1376D8);
  v12 = sub_106D10();
  v13 = sub_106FC0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Resolved alarm from SRR is nil!", v14, 2u);
  }

  v16 = 0;
LABEL_10:

  return v16;
}

void *sub_1E540(uint64_t a1)
{
  v2 = sub_106290();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v56 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E4(&qword_1376F0, &unk_10A900);
  __chkstk_darwin(v4 - 8);
  v59 = &v56 - v5;
  v6 = sub_105B70();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&qword_137710, &qword_108108);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_25E4(&qword_137718, &qword_108110);
  v13 = __chkstk_darwin(v12 - 8);
  v61 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v56 - v16;
  __chkstk_darwin(v15);
  v19 = &v56 - v18;
  if (a1)
  {
    v62 = sub_105600();
    if (sub_105840())
    {
      sub_105B60();

      goto LABEL_6;
    }
  }

  else
  {
    v62 = 0;
  }

  (*(v7 + 56))(v19, 1, 1, v6);
LABEL_6:
  (*(v7 + 104))(v17, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v6);
  (*(v7 + 56))(v17, 0, 1, v6);
  v20 = *(v9 + 48);
  sub_14994(v19, v11, &qword_137718, &qword_108110);
  sub_14994(v17, &v11[v20], &qword_137718, &qword_108110);
  v21 = *(v7 + 48);
  if (v21(v11, 1, v6) == 1)
  {
    sub_16F70(v17, &qword_137718, &qword_108110);
    sub_16F70(v19, &qword_137718, &qword_108110);
    if (v21(&v11[v20], 1, v6) == 1)
    {
      sub_16F70(v11, &qword_137718, &qword_108110);
      v22 = v62;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v23 = v61;
  sub_14994(v11, v61, &qword_137718, &qword_108110);
  if (v21(&v11[v20], 1, v6) == 1)
  {
    sub_16F70(v17, &qword_137718, &qword_108110);
    sub_16F70(v19, &qword_137718, &qword_108110);
    (*(v7 + 8))(v23, v6);
LABEL_11:
    sub_16F70(v11, &qword_137710, &qword_108108);
    v22 = v62;
LABEL_17:
    if (qword_136C68 != -1)
    {
      swift_once();
    }

    v33 = sub_106D20();
    sub_135C4(v33, qword_1376D8);

    v34 = sub_106D10();
    v35 = sub_106FC0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v63 = v22;
      v64 = v37;
      *v36 = 136315138;

      sub_25E4(&qword_137720, &qword_108118);
      v38 = sub_106E30();
      v40 = sub_722E8(v38, v39, &v64);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v34, v35, "Failed to resolve NoEntity reference to Alarm reference: %s", v36, 0xCu);
      sub_2738(v37);
    }

    else
    {
    }

    return 0;
  }

  v24 = v60;
  (*(v7 + 32))(v60, &v11[v20], v6);
  sub_1F804(qword_137728, &type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues, &protocol conformance descriptor for UsoEntity_common_ReferenceType.DefinedValues);
  v25 = v23;
  v26 = sub_106E00();
  v27 = *(v7 + 8);
  v27(v24, v6);
  sub_16F70(v17, &qword_137718, &qword_108110);
  sub_16F70(v19, &qword_137718, &qword_108110);
  v27(v25, v6);
  sub_16F70(v11, &qword_137718, &qword_108110);
  v22 = v62;
  if ((v26 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  sub_105B10();
  swift_allocObject();
  sub_105B00();
  v28 = sub_105950();

  if (!v28)
  {
    goto LABEL_17;
  }

  v29 = v56;
  sub_106280();
  v30 = v59;
  sub_106270();
  (*(v57 + 8))(v29, v58);
  v31 = sub_106D80();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {

    sub_16F70(v30, &qword_1376F0, &unk_10A900);
    goto LABEL_17;
  }

  sub_106AA0();
  v42 = sub_106D50();
  (*(v32 + 8))(v30, v31);
  if (!v42)
  {

    goto LABEL_17;
  }

  if (qword_136C68 != -1)
  {
    swift_once();
  }

  v43 = sub_106D20();
  sub_135C4(v43, qword_1376D8);
  v44 = v42;
  v45 = sub_106D10();
  v46 = sub_106FC0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v64 = v48;
    *v47 = 136315138;
    v49 = v44;
    v50 = [v49 description];
    v62 = v22;
    v51 = v50;
    v52 = sub_106E20();
    v54 = v53;

    v55 = sub_722E8(v52, v54, &v64);

    *(v47 + 4) = v55;
    _os_log_impl(&dword_0, v45, v46, "resolvedNoEntityReference: Resolved NoEntity reference %s from SRR. Using it to search alarm.", v47, 0xCu);
    sub_2738(v48);
  }

  return v42;
}

id sub_1EED0(uint64_t a1)
{
  v1 = sub_106960();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105940();
  if (v44)
  {
    sub_1F7A8(v43, v45);
    sub_135FC(v45, v43);
    sub_105A20();
    if (swift_dynamicCast())
    {

      sub_105930();
LABEL_14:

      if (v42)
      {
        v9 = sub_AA950(0);

LABEL_16:

        sub_2738(v45);
LABEL_19:
        v10 = v43;
LABEL_20:
        sub_2738(v10);
        return v9;
      }

      sub_2738(v45);
LABEL_18:

      v9 = 0;
      goto LABEL_19;
    }

    sub_105A50();
    if (swift_dynamicCast() || (sub_105AC0(), swift_dynamicCast()) || (sub_105A30(), swift_dynamicCast()))
    {
LABEL_13:

      sub_1059F0();
      goto LABEL_14;
    }

    sub_105AA0();
    if (swift_dynamicCast())
    {

      sub_105C60();
      if (v42)
      {
        v12 = sub_AB3EC(0);
      }

      else
      {
        v12 = 0;
      }

      sub_105C60();

      if (v42)
      {
        v9 = sub_AA950(v12);

        goto LABEL_16;
      }

      sub_2738(v45);

      goto LABEL_18;
    }

    sub_105A60();
    if (swift_dynamicCast())
    {
LABEL_26:

      sub_105570();
      goto LABEL_14;
    }

    sub_105A70();
    if (swift_dynamicCast())
    {

      sub_105570();

      if (v42)
      {

        v13 = sub_105600();

        v9 = sub_1D748(v13);

        goto LABEL_16;
      }
    }

    else
    {
      sub_105B80();
      if (swift_dynamicCast())
      {
        goto LABEL_13;
      }

      sub_105D80();
      if (swift_dynamicCast())
      {
        goto LABEL_13;
      }

      sub_105AD0();
      if (swift_dynamicCast())
      {

        sub_105C40();
        goto LABEL_14;
      }

      sub_105990();
      if (swift_dynamicCast())
      {
        goto LABEL_13;
      }

      if (swift_dynamicCast())
      {
        goto LABEL_26;
      }
    }

    sub_2738(v43);
    if (sub_105E40() && (v14 = sub_1E22C(), , v14) || (v15 = sub_27744()) != 0 && (v14 = sub_1E540(v15), , v14))
    {
      v16 = [v14 identifier];
      if (v16)
      {
        v17 = v16;
        if (qword_136C68 != -1)
        {
          swift_once();
        }

        v18 = sub_106D20();
        sub_135C4(v18, qword_1376D8);
        v19 = v14;
        v20 = sub_106D10();
        v21 = sub_106FC0();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v43[0] = v23;
          *v22 = 136315138;
          v24 = v19;
          v25 = [v24 description];
          v26 = sub_106E20();
          v28 = v27;

          v29 = sub_722E8(v26, v28, v43);

          *(v22 + 4) = v29;
          _os_log_impl(&dword_0, v20, v21, "Found alarm reference from task: %s", v22, 0xCu);
          sub_2738(v23);
        }

        sub_106A50();
        v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v31 = sub_106E10();
        v9 = [v30 initWithIdentifier:v17 displayString:v31];

        sub_1F7B8();
        isa = sub_107090(1).super.super.isa;
        [v9 setIncludeSleepAlarm:isa];

        v10 = v45;
        goto LABEL_20;
      }
    }

    if (qword_136C68 != -1)
    {
      swift_once();
    }

    v33 = sub_106D20();
    sub_135C4(v33, qword_1376D8);

    v34 = sub_106D10();
    v35 = sub_106FB0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43[0] = v37;
      *v36 = 136315138;
      sub_274CC(v4);
      v38 = sub_106950();
      v40 = v39;
      (*(v2 + 8))(v4, v1);
      v41 = sub_722E8(v38, v40, v43);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_0, v34, v35, "Unable to get alarmSearch from alarmTask. Verb is %s", v36, 0xCu);
      sub_2738(v37);
    }

    sub_2738(v45);
  }

  else
  {
    sub_16F70(v43, &qword_137490, qword_108C80);
    if (qword_136C68 != -1)
    {
      swift_once();
    }

    v5 = sub_106D20();
    sub_135C4(v5, qword_1376D8);
    v6 = sub_106D10();
    v7 = sub_106FB0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "NLv4TranslationParse: Dialog act is not a UsoTask_noVerb_common_Alarm or has no target, cannot support input", v8, 2u);
    }
  }

  return 0;
}

_OWORD *sub_1F7A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1F7B8()
{
  result = qword_137520;
  if (!qword_137520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_137520);
  }

  return result;
}

uint64_t sub_1F804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1F878(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}