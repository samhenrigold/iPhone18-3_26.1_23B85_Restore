uint64_t sub_1000170CC(uint64_t a1)
{
  v3 = *v2;
  v3[240] = a1;
  v3[241] = v1;

  if (v1)
  {
    v4 = v3[203];
    v5 = v3[202];
    v6 = v3[181];
    v7 = v3[176];
    v8 = v3[175];

    (*(v7 + 8))(v6, v8);

    v9 = sub_1000221F0;
  }

  else
  {

    v9 = sub_1000172F0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000172F0()
{
  v582 = v0;
  v1 = v0;
  v2 = v0[241];

  v4 = sub_10000E950(v3);
  v574 = v2;
  v0[242] = v4;

  swift_bridgeObjectRetain_n();
  v5 = sub_10002C958();
  v6 = sub_10002CB98();
  v578 = v0;
  v544 = v4;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    v581[0] = v8;
    *v7 = 136315138;
    v10 = v4[2];
    v11 = v4;
    if (v10)
    {
      v542 = v8;
      v549 = v6;
      v559 = v5;
      v12 = v1[88];
      v580[0] = _swiftEmptyArrayStorage;
      sub_10000DB24(0, v10, 0);
      v13 = _swiftEmptyArrayStorage;
      v14 = *(v12 + 16);
      v12 += 16;
      v15 = v11 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v564 = *(v12 + 56);
      v568 = v14;
      v16 = (v12 - 8);
      do
      {
        v17 = v578[103];
        v18 = v578[87];
        v568(v17, v15, v18);
        v19 = sub_10002C728();
        v21 = v20;
        (*v16)(v17, v18);
        v580[0] = v13;
        v23 = *(v13 + 2);
        v22 = *(v13 + 3);
        if (v23 >= v22 >> 1)
        {
          sub_10000DB24((v22 > 1), v23 + 1, 1);
          v13 = v580[0];
        }

        *(v13 + 2) = v23 + 1;
        v24 = &v13[16 * v23];
        *(v24 + 4) = v19;
        *(v24 + 5) = v21;
        v15 += v564;
        --v10;
      }

      while (v10);
      v1 = v578;
      v5 = v559;
      v6 = v549;
      v9 = v542;
    }

    v25 = sub_10002CA98();
    v27 = v26;

    v28 = sub_10000B7BC(v25, v27, v581);

    *(v7 + 4) = v28;
    v4 = v544;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v5, v6, "Retrieved registered dynamic tasks: %s", v7, 0xCu);
    sub_1000067EC(v9);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_bridgeObjectRetain_n();
  v29 = sub_10002C958();
  v30 = sub_10002CB98();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v1[228];
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v581[0] = v34;
    *v33 = 134218242;
    *(v33 + 4) = *(v32 + 16);

    *(v33 + 12) = 2080;
    sub_100008968(v32, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, v580);
    v35 = sub_10002CA98();
    v37 = v36;

    v38 = v35;
    v1 = v578;
    v39 = sub_10000B7BC(v38, v37, v581);
    v4 = v544;

    *(v33 + 14) = v39;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v29, v30, "Processing TaskParametersRecords (count: %ld): %s", v33, 0x16u);
    sub_1000067EC(v34);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v40 = v4[2];
  v1[243] = v40;
  v569 = v40;
  if (v40)
  {
    v502 = v1[128];
    v41 = v1[127];
    v42 = v1[88];
    v43 = v1[75];
    v44 = v1[71];
    v45 = *(v42 + 80);
    *(v1 + 525) = v45;
    v560 = v4 + ((v45 + 32) & ~v45);
    swift_beginAccess();
    swift_beginAccess();
    v46 = 0;
    v565 = v42;
    v535 = (v41 + 48);
    v521 = (v43 + 56);
    v515 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v512 = (v44 + 104);
    v509 = (v44 + 8);
    v507 = (v43 + 8);
    v505 = (v43 + 16);
    v47 = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v539 = v47;
    v555 = (v42 + 8);
    while (1)
    {
      if (v46 >= v4[2])
      {
        __break(1u);
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      v52 = v1[230];
      v53 = v1[102];
      v54 = v1[87];
      v55 = *(v565 + 72);
      v1[244] = v55;
      v56 = *(v565 + 16);
      v1[245] = v56;
      v1[246] = v47;
      v56(v53, &v560[v55 * v46], v54);
      v57 = *(v52 + 16);
      v1[247] = v57;

      v58 = sub_10002C728();
      v60 = sub_100008480(v58, v59, v57);

      if (v60)
      {
        v56(v1[101], v1[102], v1[87]);
        v61 = sub_10002C958();
        v62 = sub_10002CBA8();
        v63 = os_log_type_enabled(v61, v62);
        v64 = v1[101];
        v65 = v1[87];
        if (v63)
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v580[0] = v67;
          *v66 = 136315138;
          v68 = sub_10002C728();
          v70 = sub_10000B7BC(v68, v69, v580);
          v4 = v544;

          *(v66 + 4) = v70;
          v48 = v555;
          (*v555)(v64, v65);
          _os_log_impl(&_mh_execute_header, v61, v62, "Skipping task. It is being removed: %s", v66, 0xCu);
          sub_1000067EC(v67);
          v1 = v578;
        }

        else
        {

          v48 = v555;
          (*v555)(v64, v65);
        }
      }

      else
      {
        v71 = *(v1[229] + 16);

        v72 = sub_10002C728();
        v74 = sub_100008480(v72, v73, v71);

        if (v74)
        {
          v75 = v1[228];
          v76 = v1[126];
          v77 = v1[122];
          v78 = v1[102];
          *(swift_task_alloc() + 16) = v78;
          sub_1000087D0(sub_10002BD9C, v75, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, v77);

          v79 = (*v535)(v77, 1, v76);
          v80 = v1[122];
          v81 = v1[102];
          if (v79 == 1)
          {
            v82 = v1[99];
            v83 = v1[87];
            sub_10002B7B4(v80, &qword_100038660, &qword_10002DF28);
            v56(v82, v81, v83);
            v84 = sub_10002C958();
            v85 = sub_10002CB98();
            v86 = os_log_type_enabled(v84, v85);
            v87 = v1[99];
            v88 = v1[87];
            if (v86)
            {
              v89 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v580[0] = v90;
              *v89 = 136315138;
              v91 = sub_10002C728();
              v93 = sub_10000B7BC(v91, v92, v580);

              *(v89 + 4) = v93;
              v1 = v578;
              v48 = v555;
              (*v555)(v87, v88);
              _os_log_impl(&_mh_execute_header, v84, v85, "Skipping task. No TaskParametersRecord found for: %s", v89, 0xCu);
              sub_1000067EC(v90);
              v4 = v544;
            }

            else
            {

              v48 = v555;
              (*v555)(v87, v88);
            }
          }

          else
          {
            sub_10002B814(v80, v1[129], type metadata accessor for TaskParametersRecord);
            sub_10002C708();
            if (!v104)
            {
              sub_100005AD8(v1[129], v1[128], type metadata accessor for TaskParametersRecord);
              v122 = sub_10002C958();
              v123 = sub_10002CBB8();
              v124 = os_log_type_enabled(v122, v123);
              v125 = v1[128];
              if (v124)
              {
                v126 = swift_slowAlloc();
                v127 = swift_slowAlloc();
                v580[0] = v127;
                *v126 = 136315138;
                v128 = *v125;
                v129 = v502[1];

                v130 = sub_10000B7BC(v128, v129, v580);

                *(v126 + 4) = v130;
                sub_100005B40(v125, type metadata accessor for TaskParametersRecord);
                _os_log_impl(&_mh_execute_header, v122, v123, "Task %s doesn't have a valid taskFolder. Skipping task.", v126, 0xCu);
                sub_1000067EC(v127);
              }

              else
              {

                sub_100005B40(v125, type metadata accessor for TaskParametersRecord);
              }

              v48 = v555;
              v47 = v539;
              sub_100005B40(v1[129], type metadata accessor for TaskParametersRecord);
              goto LABEL_16;
            }

            v105 = v1[85];
            v530 = v1[74];
            v106 = v1[72];
            v107 = v1[70];
            (*v521)(v1[73], 1, 1);
            v108 = *v512;
            (*v512)(v106, v515, v107);

            sub_10002C558();
            v1[39] = 0x6574656D61726170;
            v1[40] = 0xEF6E6F736A2E7372;
            v108(v106, v515, v107);
            sub_10002B6D0();
            sub_10002C568();
            (*v509)(v106, v107);
            v109 = *v507;
            (*v507)(v105, v530);
            sub_10002C588();
            v110 = v1[86];
            if (v574)
            {
              (*v505)(v1[78], v110, v1[74]);
              swift_errorRetain();
              swift_errorRetain();
              v111 = sub_10002C958();
              v112 = sub_10002CBB8();
              v113 = os_log_type_enabled(v111, v112);
              v114 = v1[86];
              v115 = v1[78];
              v116 = v1[74];
              if (v113)
              {
                logb = v111;
                v117 = swift_slowAlloc();
                v500 = swift_slowAlloc();
                v528 = swift_slowAlloc();
                v580[0] = v528;
                *v117 = 136315394;
                sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                v118 = sub_10002CD38();
                v501 = v114;
                v120 = sub_10000B7BC(v118, v119, v580);

                *(v117 + 4) = v120;
                v109(v115, v116);
                *(v117 + 12) = 2112;
                swift_errorRetain();
                v121 = _swift_stdlib_bridgeErrorToNSError();
                *(v117 + 14) = v121;
                *v500 = v121;

                _os_log_impl(&_mh_execute_header, logb, v112, "Failed at writing taskParamFile: %s : %@", v117, 0x16u);
                sub_10002B7B4(v500, &qword_1000386C8, &qword_10002DF80);

                sub_1000067EC(v528);

                v109(v501, v116);
              }

              else
              {

                v109(v115, v116);

                v109(v114, v116);
              }

              v4 = v544;
              v48 = v555;
              v47 = v539;
              v1 = v578;
              sub_100005B40(v578[129], type metadata accessor for TaskParametersRecord);
              v574 = 0;
              goto LABEL_16;
            }

            v131 = v1[129];
            v109(v110, v1[74]);

            sub_100005B40(v131, type metadata accessor for TaskParametersRecord);
            v574 = 0;
            v4 = v544;
            v48 = v555;
          }

          v47 = v539;
        }

        else
        {
          v56(v1[100], v1[102], v1[87]);
          v94 = sub_10002C958();
          v95 = sub_10002CBA8();
          v96 = os_log_type_enabled(v94, v95);
          v97 = v1[100];
          v98 = v1[87];
          if (v96)
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v580[0] = v100;
            *v99 = 136315138;
            v101 = sub_10002C728();
            v103 = sub_10000B7BC(v101, v102, v580);
            v1 = v578;

            *(v99 + 4) = v103;
            v4 = v544;
            v48 = v555;
            (*v555)(v97, v98);
            _os_log_impl(&_mh_execute_header, v94, v95, "Skipping task. It was not registered locally: %s", v99, 0xCu);
            sub_1000067EC(v100);
            v47 = v539;
          }

          else
          {

            v48 = v555;
            (*v555)(v97, v98);
          }
        }
      }

LABEL_16:
      ++v46;
      v49 = v1[102];
      v50 = v1[87];
      v51 = *v48;
      v1[248] = *v48;
      v1[249] = v48 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v51(v49, v50);
      if (v569 == v46)
      {
        v132 = 0;
        while (1)
        {
          v1[250] = v132;
          v133 = v1[242];
          if (v132 >= *(v133 + 16))
          {
            break;
          }

          v134 = v1[247];
          (v1[245])(v1[98], v133 + ((*(v1 + 2100) + 32) & ~*(v1 + 2100)) + v1[244] * v132, v1[87]);

          v135 = sub_10002C728();
          v137 = sub_100008480(v135, v136, v134);

          if (v137)
          {
            (v1[245])(v1[97], v1[98], v1[87]);
            v229 = sub_10002C958();
            v230 = sub_10002CB98();
            v231 = os_log_type_enabled(v229, v230);
            v232 = v1[248];
            v233 = v1[97];
            v234 = v1[87];
            if (v231)
            {
              v235 = swift_slowAlloc();
              v236 = swift_slowAlloc();
              v580[0] = v236;
              *v235 = 136315138;
              v237 = sub_10002C728();
              v239 = sub_10000B7BC(v237, v238, v580);

              *(v235 + 4) = v239;
              v1 = v578;
              v232(v233, v234);
              _os_log_impl(&_mh_execute_header, v229, v230, "Task %s is being removed.", v235, 0xCu);
              sub_1000067EC(v236);
            }

            else
            {

              v232(v233, v234);
            }

            v1[251] = sub_10002C758();
            v240 = sub_10002C728();
            v242 = v241;
            v1[252] = v241;
            v243 = _s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu;
            v244 = swift_task_alloc();
            v1[253] = v244;
            *v244 = v1;
            v244[1] = sub_10001BC2C;
            v245 = v1[179];

            return ((&_s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu + v243))(v240, v242, v245);
          }

          (v1[248])(v1[98], v1[87]);
          v132 = v1[250] + 1;
          if (v132 == v1[243])
          {
            goto LABEL_45;
          }
        }

LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
      }
    }
  }

LABEL_45:
  v138 = v1[229];
  v139 = swift_allocObject();
  v1[255] = v139;
  swift_beginAccess();
  v140 = *(v138 + 16);
  *(v139 + 16) = v140;
  v510 = (v139 + 16);
  v1[256] = v140;
  v570 = v140;

  v141 = sub_10002C958();
  v142 = sub_10002CB98();
  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v581[0] = 0;
    v580[0] = 0;
    *v143 = 0;
    v579[0] = v143 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v579, v581, v580);
    _os_log_impl(&_mh_execute_header, v141, v142, "Querying registered tasks for existing payloads...", v143, 2u);
  }

  if (v1[243])
  {
    v144 = 0;
    v145 = v1[88];
    v146 = v1[75];
    v147 = v1[71];
    v556 = v1[242] + ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v561 = v145;
    v148 = (v145 + 8);
    log = (v146 + 56);
    v524 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v522 = (v147 + 104);
    v516 = (v147 + 8);
    v513 = (v146 + 8);
    v566 = (v145 + 8);
    do
    {
      if (v144 >= *(v1[242] + 16))
      {
        goto LABEL_179;
      }

      v150 = *(v561 + 16);
      v150(v1[95], v556 + *(v561 + 72) * v144, v1[87]);

      v151 = sub_10002C728();
      v153 = sub_100008480(v151, v152, v570);

      if (v153)
      {
        sub_10002C708();
        if (v154)
        {
          v531 = v150;
          v545 = v144;
          v536 = v1[85];
          v155 = v1[84];
          v540 = v1[74];
          v156 = v1[72];
          v157 = v1[70];
          (log->isa)(v1[73], 1, 1);
          v158 = *v522;
          (*v522)(v156, v524, v157);

          sub_10002C558();
          v1[43] = 0x737465737361;
          v1[44] = 0xE600000000000000;
          v158(v156, v524, v157);
          sub_10002B6D0();
          sub_10002C568();
          (*v516)(v156, v157);
          v159 = *v513;
          (*v513)(v155, v540);
          sub_10002C548(0);
          v159(v536, v540);
          v160 = [objc_opt_self() defaultManager];
          v161 = sub_10002CA18();
          LODWORD(v156) = [v160 fileExistsAtPath:v161];

          if (v156)
          {
            v531(v1[93], v1[95], v1[87]);
            v162 = sub_10002C958();
            v163 = sub_10002CB98();
            v164 = os_log_type_enabled(v162, v163);
            v165 = v1[93];
            v166 = v1[87];
            if (v164)
            {
              v537 = v1[87];
              v167 = swift_slowAlloc();
              v168 = swift_slowAlloc();
              v580[0] = v168;
              *v167 = 136315138;
              v169 = sub_10002C728();
              v171 = sub_10000B7BC(v169, v170, v580);

              *(v167 + 4) = v171;
              v1 = v578;

              v172 = *v566;
              (*v566)(v165, v537);
              _os_log_impl(&_mh_execute_header, v162, v163, "Assets already available. Skipping payload download for task: %s", v167, 0xCu);
              sub_1000067EC(v168);
            }

            else
            {

              v172 = *v566;
              (*v566)(v165, v166);
            }

            v195 = v1[95];
            v196 = v1[87];
            v197 = sub_10002C728();
            sub_10000BEB4(v197, v198);

            v172(v195, v196);
            v144 = v545;
            v148 = v566;
          }

          else
          {
            v148 = v566;
            (*v566)(v1[95], v1[87]);

            v144 = v545;
          }

          goto LABEL_50;
        }

        v150(v1[92], v1[95], v1[87]);
        v173 = sub_10002C958();
        v186 = sub_10002CB98();
        v187 = os_log_type_enabled(v173, v186);
        v176 = v1[95];
        v177 = v1[92];
        v178 = v1[87];
        if (v187)
        {
          v188 = v144;
          v189 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v580[0] = v190;
          *v189 = 136315138;
          v191 = sub_10002C728();
          v193 = sub_10000B7BC(v191, v192, v580);

          *(v189 + 4) = v193;
          v1 = v578;
          v194 = *v566;
          (*v566)(v177, v178);
          _os_log_impl(&_mh_execute_header, v173, v186, "Skipping registeredTask %s due to lack of taskFolder.", v189, 0xCu);
          sub_1000067EC(v190);
          v148 = v566;

          v144 = v188;

          v194(v176, v178);
          goto LABEL_50;
        }
      }

      else
      {
        v150(v1[94], v1[95], v1[87]);
        v173 = sub_10002C958();
        v174 = sub_10002CB98();
        v175 = os_log_type_enabled(v173, v174);
        v176 = v1[95];
        v177 = v1[94];
        v178 = v1[87];
        if (v175)
        {
          v179 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          v580[0] = v180;
          *v179 = 136315138;
          v181 = sub_10002C728();
          v183 = v144;
          v184 = sub_10000B7BC(v181, v182, v580);
          v148 = v566;

          *(v179 + 4) = v184;
          v185 = *v566;
          (*v566)(v177, v178);
          _os_log_impl(&_mh_execute_header, v173, v174, "Skipping payloads for registeredTask %s it was not added in this run.", v179, 0xCu);
          sub_1000067EC(v180);
          v1 = v578;

          v185(v176, v178);
          v144 = v183;
          goto LABEL_50;
        }
      }

      v149 = *v148;
      (*v148)(v177, v178);

      v149(v176, v178);
LABEL_50:
      ++v144;
    }

    while (v144 != v1[243]);
  }

  v199 = sub_10002C958();
  v200 = sub_10002CB98();
  if (!os_log_type_enabled(v199, v200))
  {

    if ((sub_10002CB18() & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_72:
    v217 = v1[203];

    v218 = sub_10002C958();
    v219 = sub_10002CB98();
    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      v581[0] = 0;
      v580[0] = 0;
      *v220 = 0;
      v579[0] = v220 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v579, v581, v580);
      _os_log_impl(&_mh_execute_header, v218, v219, "Task cancelled before querying for TaskPayloads.", v220, 2u);
    }

    v1 = v578;
    v221 = v578[203];
    v222 = v578[202];
    v223 = v578[201];
    v224 = v578[200];
    v550 = v578[199];
    v225 = v578[198];
    v226 = v578[197];
    v571 = v578[188];
    v227 = v578[187];
    v567 = v578[186];
    v228 = objc_allocWithZone(sub_10002C7C8());
    v498 = sub_10002C7B8();

    sub_100007A74(v226);
    (*(v227 + 8))(v571, v567);
    goto LABEL_175;
  }

  v201 = swift_slowAlloc();
  v202 = swift_slowAlloc();
  v580[0] = v202;
  *v201 = 136315138;
  swift_beginAccess();

  v203 = sub_10002CB38();
  v205 = v204;

  v206 = sub_10000B7BC(v203, v205, v580);

  *(v201 + 4) = v206;

  _os_log_impl(&_mh_execute_header, v199, v200, "Computed payloadsTaskNames: %s", v201, 0xCu);
  sub_1000067EC(v202);

  if (sub_10002CB18())
  {
    goto LABEL_72;
  }

LABEL_66:
  swift_beginAccess();
  v207 = *v510;
  if (*(*v510 + 16))
  {
    swift_retain_n();
    v208 = sub_10002C958();
    v209 = sub_10002CB98();
    if (os_log_type_enabled(v208, v209))
    {
      v210 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v212 = v211;
      v581[0] = v211;
      *v210 = 136315138;
      v213 = *(v207 + 16);
      if (v213)
      {
        v562 = v211;
        v214 = sub_10000B738(v213, 0);
        v215 = sub_10000E634(v580, v214 + 4, v213, v207);
        v216 = v580[0];
        swift_bridgeObjectRetain_n();
        sub_10002B724(v216);
        if (v215 != v213)
        {
          goto LABEL_185;
        }

        v1 = v578;
        v212 = v562;
      }

      else
      {

        v214 = _swiftEmptyArrayStorage;
      }

      v580[0] = v214;
      sub_10000BFF0(v580);
      if (v574)
      {
      }

      v315 = sub_10002CA98();
      v317 = v316;

      v318 = sub_10000B7BC(v315, v317, v581);

      *(v210 + 4) = v318;

      _os_log_impl(&_mh_execute_header, v208, v209, "Querying TaskPayloads for new tasks: %s", v210, 0xCu);
      sub_1000067EC(v212);
    }

    else
    {
    }

    v319 = v1[212];
    v320 = v1[203];
    v321 = v1[202];
    v322 = v1[201];
    v323 = swift_allocObject();
    *(v323 + 16) = xmmword_10002DE40;
    *(v323 + 56) = &type metadata for String;
    *(v323 + 64) = v319;
    *(v323 + 32) = 0x656D614E6B736174;
    *(v323 + 40) = 0xE800000000000000;

    v325 = sub_100008AE8(v324);

    *(v323 + 96) = sub_100005338(&qword_1000386D8, &qword_10002DFA0);
    *(v323 + 104) = sub_10002B880(&qword_1000386E0, &qword_1000386D8, &qword_10002DFA0, &protocol conformance descriptor for [A]);
    *(v323 + 72) = v325;
    v326 = sub_10002CB88();
    v584._countAndFlagsBits = 0x6C7961506B736154;
    v584._object = 0xEC0000007364616FLL;
    isa = sub_10002CBC8(v584, v326).super.isa;
    v578[257] = isa;
    v328 = swift_task_alloc();
    v578[258] = v328;
    *(v328 + 16) = isa;
    *(v328 + 24) = v322;
    v329 = swift_task_alloc();
    v578[259] = v329;
    *(v329 + 16) = &unk_10002DFB0;
    *(v329 + 24) = v328;
    v330 = swift_task_alloc();
    v578[260] = v330;
    *v330 = v578;
    v330[1] = sub_10001F8D0;
    v331 = v578[219];

    return CKDatabase.configuredWith<A>(configuration:group:body:)(v578 + 37, v320, v321, &unk_10002DFB8, v329, v331);
  }

  v247 = v1[203];

  v248 = _swiftEmptyArrayStorage[2];
  if (v248)
  {
    v249 = 0;
    v250 = &_swiftEmptyArrayStorage[6];
    v551 = v1[65];
    v557 = v1[69];
    v572 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v249 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_181;
      }

      v251 = *(v250 - 2);
      v252 = *(v250 - 1);
      if (*v250)
      {
        sub_10002B400(*(v250 - 1), 1);
        sub_10002B400(v252, 1);
        sub_10002B400(v252, 1);
        v253 = v251;
        v254 = sub_10002C958();
        v255 = sub_10002CBB8();
        if (os_log_type_enabled(v254, v255))
        {
          v256 = swift_slowAlloc();
          v257 = swift_slowAlloc();
          *v256 = 138412290;
          swift_errorRetain();
          v258 = _swift_stdlib_bridgeErrorToNSError();
          *(v256 + 4) = v258;
          *v257 = v258;

          sub_10002B40C(v252, 1);
          sub_10002B40C(v252, 1);
          _os_log_impl(&_mh_execute_header, v254, v255, "Error: %@", v256, 0xCu);
          sub_10002B7B4(v257, &qword_1000386C8, &qword_10002DF80);
          v1 = v578;

          sub_10002B40C(v252, 1);
        }

        else
        {

          sub_10002B40C(v252, 1);
          sub_10002B40C(v252, 1);
        }

        v268 = v1[197];
        v269 = *(v268 + 96);
        v270 = __OFADD__(v269, 1);
        v271 = v269 + 1;
        if (v270)
        {
          goto LABEL_182;
        }

        *(v268 + 96) = v271;
      }

      else
      {
        v260 = v1[63];
        v259 = v1[64];
        sub_10002B400(*(v250 - 1), 0);
        sub_10002B400(v252, 0);
        v261 = v251;
        sub_1000049E8(v252, v260);
        if ((*(v551 + 48))(v260, 1, v259) == 1)
        {
          sub_10002B7B4(v1[63], &qword_100038640, &qword_10002DF00);
          v262 = v252;
          v263 = sub_10002C958();
          v264 = sub_10002CBB8();
          if (os_log_type_enabled(v263, v264))
          {
            v265 = swift_slowAlloc();
            v266 = v248;
            v267 = swift_slowAlloc();
            *v265 = 138412290;
            *(v265 + 4) = v262;
            *v267 = v252;

            sub_10002B40C(v252, 0);
            _os_log_impl(&_mh_execute_header, v263, v264, "Skipping record: %@", v265, 0xCu);
            sub_10002B7B4(v267, &qword_1000386C8, &qword_10002DF80);
            v248 = v266;

            sub_10002B40C(v252, 0);
          }

          else
          {

            sub_10002B40C(v252, 0);
            sub_10002B40C(v252, 0);
          }

          goto LABEL_84;
        }

        v272 = v1[208];
        v273 = v1[69];
        v274 = v1;
        v275 = v1[63];

        sub_10002B814(v275, v273, type metadata accessor for TaskPayloadRecord);
        if ((sub_100008480(v557[2], v557[3], v272) & 1) == 0)
        {
          v286 = sub_10002C958();
          v287 = sub_10002CBA8();
          v288 = os_log_type_enabled(v286, v287);
          v289 = v274[69];
          if (v288)
          {
            v290 = swift_slowAlloc();
            v581[0] = 0;
            v580[0] = 0;
            *v290 = 0;
            v579[0] = v290 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v579, v581, v580);
            v291 = v287;
            v292 = v286;
            v293 = "Skipping taskPayloadRecord because associated with an unavailable extensionId.";
            goto LABEL_108;
          }

LABEL_109:

          sub_10002B40C(v252, 0);
          sub_100005B40(v289, type metadata accessor for TaskPayloadRecord);
LABEL_84:
          v1 = v578;
          goto LABEL_85;
        }

        v276 = v274[256];
        v277 = *v274[69];
        v278 = v557[1];

        LOBYTE(v277) = sub_100008480(v277, v278, v276);

        v1 = v274;
        if ((v277 & 1) == 0)
        {
          v286 = sub_10002C958();
          v294 = sub_10002CBA8();
          v295 = os_log_type_enabled(v286, v294);
          v289 = v274[69];
          if (v295)
          {
            v290 = swift_slowAlloc();
            v581[0] = 0;
            v580[0] = 0;
            *v290 = 0;
            v579[0] = v290 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v579, v581, v580);
            v291 = v294;
            v292 = v286;
            v293 = "Skipping taskPayloadRecord because associated with an unavailable taskName.";
LABEL_108:
            _os_log_impl(&_mh_execute_header, v292, v291, v293, v290, 2u);
          }

          goto LABEL_109;
        }

        sub_100005AD8(v274[69], v274[68], type metadata accessor for TaskPayloadRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v572 = sub_10000B55C(0, v572[2] + 1, 1, v572, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v280 = v572[2];
        v279 = v572[3];
        if (v280 >= v279 >> 1)
        {
          v572 = sub_10000B55C((v279 > 1), v280 + 1, 1, v572, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v281 = v274[197];
        v282 = v1[69];
        v283 = v1[68];
        v572[2] = v280 + 1;
        sub_10002B814(v283, v572 + ((*(v551 + 80) + 32) & ~*(v551 + 80)) + *(v551 + 72) * v280, type metadata accessor for TaskPayloadRecord);
        sub_10002B40C(v252, 0);
        sub_100005B40(v282, type metadata accessor for TaskPayloadRecord);
        v284 = *(v281 + 88);
        v270 = __OFADD__(v284, 1);
        v285 = v284 + 1;
        if (v270)
        {
          goto LABEL_184;
        }

        *(v1[197] + 88) = v285;
      }

LABEL_85:
      ++v249;
      v250 += 24;
      if (v248 == v249)
      {
        goto LABEL_112;
      }
    }
  }

  v572 = _swiftEmptyArrayStorage;
LABEL_112:

  if (sub_10002CB18())
  {

    v296 = sub_10002C958();
    v297 = sub_10002CB98();
    if (os_log_type_enabled(v296, v297))
    {
      v298 = swift_slowAlloc();
      v581[0] = 0;
      v580[0] = 0;
      *v298 = 0;
      v579[0] = v298 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v579, v581, v580);
      _os_log_impl(&_mh_execute_header, v296, v297, "Task cancelled before processing TaskPayloads.", v298, 2u);
    }

    v299 = v1[203];
    v300 = v1[202];
    v301 = v1[201];
    v302 = v1[200];
    v552 = v1[199];
    v303 = v1[198];
    v304 = v1[197];
    v575 = v1[188];
    v305 = v1[187];
    v573 = v1[186];
    v306 = objc_allocWithZone(sub_10002C7C8());
    v498 = sub_10002C7B8();

    goto LABEL_173;
  }

  swift_bridgeObjectRetain_n();
  v307 = sub_10002C958();
  v308 = sub_10002CB98();
  if (os_log_type_enabled(v307, v308))
  {
    v309 = swift_slowAlloc();
    v310 = swift_slowAlloc();
    v581[0] = v310;
    *v309 = 134218242;
    *(v309 + 4) = v572[2];

    *(v309 + 12) = 2080;
    sub_100008968(v572, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v580);
    v311 = sub_10002CA98();
    v313 = v312;

    v314 = sub_10000B7BC(v311, v313, v581);

    *(v309 + 14) = v314;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v307, v308, "Processing TaskPayloadRecords (count: %ld): %s", v309, 0x16u);
    sub_1000067EC(v310);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  if (!v1[243])
  {
LABEL_163:
    v467 = v1[195];
    v468 = v1[170];
    v469 = v1[164];

    sub_10002C5D8();
    sub_10002C598();
    v471 = v470;
    v467(v468, v469);
    v472 = objc_allocWithZone(NSUserDefaults);
    v473 = sub_10002CA18();
    v474 = [v472 initWithSuiteName:v473];

    if (v474)
    {
      v475 = sub_10002C958();
      v476 = sub_10002CB98();
      if (os_log_type_enabled(v475, v476))
      {
        v477 = swift_slowAlloc();
        *v477 = 134217984;
        *(v477 + 4) = v471;

        _os_log_impl(&_mh_execute_header, v475, v476, "Marking lastSuccessTimestamp: %f", v477, 0xCu);
      }

      else
      {
      }

      v489 = sub_10002CB28().super.super.isa;
      v490 = sub_10002CA18();
      [v474 setValue:v489 forKey:v490];

      v1 = v578;
    }

    else
    {
    }

    v491 = v1[203];
    v492 = v1[202];
    v493 = v1[201];
    v494 = v1[200];
    v552 = v1[199];
    v495 = v1[198];
    v304 = v1[197];
    v575 = v1[188];
    v305 = v1[187];
    v573 = v1[186];
    v496 = objc_allocWithZone(sub_10002C7C8());
    v498 = sub_10002C7B8();

LABEL_173:

    v488 = v304;
    goto LABEL_174;
  }

  v332 = 0;
  v558 = (v1[65] + 48);
  v333 = v1[75];
  v334 = v1[71];
  v514 = (v334 + 104);
  v511 = (v334 + 8);
  v553 = (v333 + 8);
  v523 = (v333 + 16);
  v563 = v1[88];
  v335 = (v563 + 8);
  v499 = v1[66];
  v529 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v543 = (v563 + 8);
  loga = (v333 + 56);
  while (1)
  {
    v338 = v1[242];
    if (*(v338 + 16) <= v332)
    {
      goto LABEL_183;
    }

    v339 = *(v563 + 16);
    v339(v1[91], v338 + ((*(v563 + 80) + 32) & ~*(v563 + 80)) + *(v563 + 72) * v332, v1[87]);
    if (sub_10002CB18())
    {
      break;
    }

    v340 = v1[91];
    v341 = v1[64];
    v342 = v1[62];
    *(swift_task_alloc() + 16) = v340;
    sub_1000087D0(sub_10002B6B0, v572, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v342);

    if ((*v558)(v342, 1, v341) == 1)
    {
      v343 = v1[91];
      v344 = v1[90];
      v345 = v1[87];
      sub_10002B7B4(v1[62], &qword_100038640, &qword_10002DF00);
      v339(v344, v343, v345);
      v346 = sub_10002C958();
      v347 = sub_10002CB98();
      v348 = os_log_type_enabled(v346, v347);
      v349 = v1[90];
      v350 = v1[87];
      if (v348)
      {
        v351 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        v580[0] = v352;
        *v351 = 136315138;
        v353 = sub_10002C728();
        v355 = sub_10000B7BC(v353, v354, v580);
        v335 = (v563 + 8);

        *(v351 + 4) = v355;
        v1 = v578;
        v336 = *v543;
        (*v543)(v349, v350);
        _os_log_impl(&_mh_execute_header, v346, v347, "Skipping task. No TaskPayloadRecord found for: %s", v351, 0xCu);
        sub_1000067EC(v352);
      }

      else
      {

        v336 = *v335;
        (*v335)(v349, v350);
      }
    }

    else
    {
      sub_10002B814(v1[62], v1[67], type metadata accessor for TaskPayloadRecord);
      sub_10002C708();
      if (!v356)
      {
        sub_100005AD8(v1[67], v1[66], type metadata accessor for TaskPayloadRecord);
        v384 = sub_10002C958();
        v385 = sub_10002CBB8();
        v386 = os_log_type_enabled(v384, v385);
        v387 = v1[67];
        v388 = v1[66];
        if (v386)
        {
          v389 = swift_slowAlloc();
          v390 = swift_slowAlloc();
          v580[0] = v390;
          *v389 = 136315138;
          v391 = *v388;
          v392 = *(v499 + 8);

          v393 = sub_10000B7BC(v391, v392, v580);
          v1 = v578;

          *(v389 + 4) = v393;
          sub_100005B40(v388, type metadata accessor for TaskPayloadRecord);
          _os_log_impl(&_mh_execute_header, v384, v385, "Task %s doesn't have a valid taskFolder. Skipping task.", v389, 0xCu);
          sub_1000067EC(v390);

          v394 = v387;
          v335 = (v563 + 8);
        }

        else
        {
          sub_100005B40(v1[66], type metadata accessor for TaskPayloadRecord);

          v394 = v387;
        }

        sub_100005B40(v394, type metadata accessor for TaskPayloadRecord);
        v336 = *v335;
        goto LABEL_131;
      }

      v538 = v332;
      v357 = v1[85];
      v546 = v1[74];
      v358 = v1[72];
      v359 = v1[70];
      v517 = loga->isa;
      (loga->isa)(v1[73], 1, 1);
      v360 = *v514;
      (*v514)(v358, v529, v359);

      v361 = v360;
      sub_10002C558();
      v1[25] = 0x737465737361;
      v1[26] = 0xE600000000000000;
      v360(v358, v529, v359);
      sub_10002B6D0();
      sub_10002C568();
      v362 = *v511;
      (*v511)(v358, v359);
      v363 = v546;
      v547 = *v553;
      (*v553)(v357, v363);
      v364 = objc_opt_self();
      v365 = [v364 defaultManager];
      sub_10002C548(0);
      v366 = sub_10002CA18();

      v1[48] = 0;
      LODWORD(v358) = [v365 createDirectoryAtPath:v366 withIntermediateDirectories:1 attributes:0 error:v1 + 48];

      v367 = v1[48];
      v368 = v1[74];
      if (!v358)
      {
        v395 = v1[83];
        v396 = v1[77];
        v397 = v367;
        sub_10002C508();

        swift_willThrow();
        (*v523)(v396, v395, v368);
        swift_errorRetain();
        swift_errorRetain();
        v398 = v1;
        v399 = sub_10002C958();
        v400 = sub_10002CBB8();
        v401 = os_log_type_enabled(v399, v400);
        v402 = v398[83];
        v403 = v398[77];
        v404 = v398[74];
        v405 = v398[67];
        if (v401)
        {
          v406 = swift_slowAlloc();
          v576 = v402;
          v407 = swift_slowAlloc();
          v518 = swift_slowAlloc();
          v580[0] = v518;
          *v406 = 136315394;
          sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v408 = sub_10002CD38();
          v532 = v405;
          v410 = sub_10000B7BC(v408, v409, v580);

          *(v406 + 4) = v410;
          v547(v403, v404);
          *(v406 + 12) = 2112;
          swift_errorRetain();
          v411 = _swift_stdlib_bridgeErrorToNSError();
          *(v406 + 14) = v411;
          *v407 = v411;

          _os_log_impl(&_mh_execute_header, v399, v400, "Failed at creating taskAssetsURL: %s : %@", v406, 0x16u);
          sub_10002B7B4(v407, &qword_1000386C8, &qword_10002DF80);

          sub_1000067EC(v518);

          v547(v576, v404);
          v412 = v532;
        }

        else
        {

          v547(v403, v404);

          v547(v402, v404);
          v412 = v405;
        }

        sub_100005B40(v412, type metadata accessor for TaskPayloadRecord);
        v335 = (v563 + 8);
        v336 = *v543;
        v1 = v578;
        goto LABEL_131;
      }

      v503 = v364;
      v504 = v362;
      v369 = v1[82];
      v508 = v1[81];
      v370 = v578[72];
      v371 = v578[70];
      v517(v578[73], 1, 1, v368);
      v361(v370, v529, v371);
      v372 = v367;

      v1 = v578;
      sub_10002C558();
      v373 = *v523;
      (*v523)(v508, v369, v368);
      v374 = sub_10002C958();
      v375 = sub_10002CB98();
      v376 = os_log_type_enabled(v374, v375);
      v377 = v578[81];
      v378 = v578[74];
      if (v376)
      {
        v379 = swift_slowAlloc();
        v380 = swift_slowAlloc();
        v580[0] = v380;
        *v379 = 136315138;
        sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v381 = sub_10002CD38();
        v383 = sub_10000B7BC(v381, v382, v580);

        *(v379 + 4) = v383;
        v547(v377, v378);
        _os_log_impl(&_mh_execute_header, v374, v375, "Processing: %s", v379, 0xCu);
        sub_1000067EC(v380);
        v1 = v578;
      }

      else
      {

        v547(v377, v378);
      }

      if (sub_100008DB0(v1[82], v1[83]))
      {
        v373(v1[80], v1[83], v1[74]);
        v413 = sub_10002C958();
        v414 = sub_10002CB98();
        v415 = os_log_type_enabled(v413, v414);
        v416 = v1[83];
        v417 = v1[82];
        v418 = v1[80];
        v419 = v1[74];
        v420 = v1[67];
        if (v415)
        {
          v421 = swift_slowAlloc();
          v533 = v420;
          v422 = swift_slowAlloc();
          v580[0] = v422;
          *v421 = 136315138;
          sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v423 = sub_10002CD38();
          v519 = v416;
          v425 = sub_10000B7BC(v423, v424, v580);

          *(v421 + 4) = v425;

          v547(v418, v419);
          _os_log_impl(&_mh_execute_header, v413, v414, "TaskPayload extracted at: %s", v421, 0xCu);
          sub_1000067EC(v422);

          v1 = v578;

          v547(v417, v419);
          v547(v519, v419);
          v426 = v533;
        }

        else
        {

          v547(v418, v419);

          v547(v417, v419);
          v547(v416, v419);
          v426 = v420;
        }
      }

      else
      {
        v427 = sub_10002C958();
        v428 = sub_10002CB98();
        if (os_log_type_enabled(v427, v428))
        {
          v429 = swift_slowAlloc();
          v581[0] = 0;
          v580[0] = 0;
          *v429 = 0;
          v579[0] = v429 + 2;
          sub_10000B2CC(_swiftEmptyArrayStorage, v579, v581, v580);
          _os_log_impl(&_mh_execute_header, v427, v428, "Failed at processing archive, copying raw archive into taskFolder.", v429, 2u);
        }

        v430 = v1[72];
        v431 = v1[70];
        v1[45] = 0x612E737465737361;
        v1[46] = 0xEA00000000007261;
        v361(v430, v529, v431);
        sub_10002C568();
        v504(v430, v431);
        v432 = [v503 defaultManager];
        sub_10002C528(v433);
        v435 = v434;
        sub_10002C528(v436);
        v438 = v437;
        v1[50] = 0;
        v439 = [v432 copyItemAtURL:v435 toURL:v437 error:v1 + 50];

        v440 = v1[50];
        v441 = v1[74];
        if (!v439)
        {
          v447 = v1[79];
          v448 = v1[76];
          v449 = v440;
          sub_10002C508();

          swift_willThrow();
          v373(v448, v447, v441);
          swift_errorRetain();
          swift_errorRetain();
          v450 = sub_10002C958();
          v451 = sub_10002CBB8();
          v452 = os_log_type_enabled(v450, v451);
          v453 = v1[83];
          v454 = v1[82];
          v455 = v1[79];
          v456 = v1[76];
          v457 = v1;
          v458 = v1[74];
          v459 = v457[67];
          if (v452)
          {
            v577 = v454;
            v460 = swift_slowAlloc();
            v534 = v453;
            v461 = swift_slowAlloc();
            v506 = swift_slowAlloc();
            v580[0] = v506;
            *v460 = 136315394;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v462 = sub_10002CD38();
            v520 = v459;
            v464 = sub_10000B7BC(v462, v463, v580);

            *(v460 + 4) = v464;
            v547(v456, v458);
            *(v460 + 12) = 2112;
            swift_errorRetain();
            v465 = _swift_stdlib_bridgeErrorToNSError();
            *(v460 + 14) = v465;
            *v461 = v465;

            _os_log_impl(&_mh_execute_header, v450, v451, "Failed at asset to: %s : %@", v460, 0x16u);
            sub_10002B7B4(v461, &qword_1000386C8, &qword_10002DF80);

            sub_1000067EC(v506);

            v547(v455, v458);
            v547(v577, v458);
            v547(v534, v458);
            v466 = v520;
          }

          else
          {

            v547(v456, v458);

            v547(v455, v458);
            v547(v454, v458);
            v547(v453, v458);
            v466 = v459;
          }

          sub_100005B40(v466, type metadata accessor for TaskPayloadRecord);
          v335 = (v563 + 8);
          v332 = v538;
          v336 = *v543;
          v1 = v578;
          goto LABEL_131;
        }

        v442 = v1[83];
        v443 = v1[82];
        v444 = v1[79];
        v445 = v1[67];
        v446 = v440;

        v547(v444, v441);
        v547(v443, v441);
        v547(v442, v441);
        v426 = v445;
      }

      sub_100005B40(v426, type metadata accessor for TaskPayloadRecord);
      v335 = (v563 + 8);
      v336 = *v543;
      v332 = v538;
    }

LABEL_131:
    ++v332;
    v337 = v1[243];
    v336(v1[91], v1[87]);
    if (v332 == v337)
    {
      goto LABEL_163;
    }
  }

  v478 = sub_10002C958();
  v479 = sub_10002CB98();
  if (os_log_type_enabled(v478, v479))
  {
    v480 = swift_slowAlloc();
    v581[0] = 0;
    v580[0] = 0;
    *v480 = 0;
    v579[0] = v480 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v579, v581, v580);
    _os_log_impl(&_mh_execute_header, v478, v479, "Task cancelled while processing TaskPayloads.", v480, 2u);
  }

  v481 = v1[203];
  v482 = v1[202];
  v483 = v1[201];
  v484 = v1[200];
  v541 = v1[199];
  v485 = v1[198];
  v486 = v1[197];
  v305 = v1[187];
  v573 = v1[186];
  v575 = v1[188];
  v548 = v1[87];
  v554 = v1[91];
  v487 = objc_allocWithZone(sub_10002C7C8());
  v498 = sub_10002C7B8();

  (*v543)(v554, v548);

  v488 = v486;
LABEL_174:
  sub_100007A74(v488);
  (*(v305 + 8))(v575, v573);
LABEL_175:

  v497 = v1[1];

  return v497(v498);
}

uint64_t sub_10001BC2C(char a1)
{
  v3 = *v2;
  *(v3 + 2105) = a1;
  *(v3 + 2032) = v1;

  if (v1)
  {
    v4 = sub_10002660C;
  }

  else
  {
    v4 = sub_10001BDB4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001BDB4()
{
  v453 = v0;
  (v0[245])(v0[96], v0[98], v0[87]);
  v1 = sub_10002C958();
  v2 = sub_10002CB98();
  v449 = v0;
  if (os_log_type_enabled(v1, v2))
  {
    v437 = *(v0 + 2105);
    v3 = v0[248];
    v442 = v0[98];
    v4 = v0[96];
    v5 = v0[87];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v451[0] = v7;
    *v6 = 136315394;
    v8 = sub_10002C728();
    v10 = sub_10000B7BC(v8, v9, v451);

    *(v6 + 4) = v10;
    v3(v4, v5);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v437;
    _os_log_impl(&_mh_execute_header, v1, v2, "Task %s is removed: %{BOOL}d.", v6, 0x12u);
    sub_1000067EC(v7);

    v3(v442, v5);
  }

  else
  {
    v11 = v0[248];
    v12 = v0[98];
    v13 = v0[87];
    v11(v0[96], v13);

    v11(v12, v13);
  }

  v396 = v0[254];
  while (1)
  {
    v14 = v0[250] + 1;
    if (v14 == v0[243])
    {
      break;
    }

    v0[250] = v14;
    v15 = v0[242];
    if (v14 >= *(v15 + 16))
    {
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
    }

    v16 = v0[247];
    (v0[245])(v0[98], v15 + ((*(v0 + 2100) + 32) & ~*(v0 + 2100)) + v0[244] * v14, v0[87]);

    v17 = sub_10002C728();
    v19 = sub_100008480(v17, v18, v16);

    if (v19)
    {
      (v0[245])(v0[97], v0[98], v0[87]);
      v114 = sub_10002C958();
      v115 = sub_10002CB98();
      v116 = os_log_type_enabled(v114, v115);
      v117 = v0[248];
      v118 = v0[97];
      v119 = v0[87];
      if (v116)
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v451[0] = v121;
        *v120 = 136315138;
        v122 = sub_10002C728();
        v124 = sub_10000B7BC(v122, v123, v451);

        *(v120 + 4) = v124;
        v117(v118, v119);
        _os_log_impl(&_mh_execute_header, v114, v115, "Task %s is being removed.", v120, 0xCu);
        sub_1000067EC(v121);
      }

      else
      {

        v117(v118, v119);
      }

      v0[251] = sub_10002C758();
      v172 = sub_10002C728();
      v174 = v173;
      v0[252] = v173;
      v175 = _s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu;
      v176 = swift_task_alloc();
      v0[253] = v176;
      *v176 = v0;
      v176[1] = sub_10001BC2C;
      v177 = v0[179];

      return ((&_s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu + v175))(v172, v174, v177);
    }

    (v0[248])(v0[98], v0[87]);
  }

  v20 = v0[229];
  v21 = swift_allocObject();
  v0[255] = v21;
  swift_beginAccess();
  v22 = *(v20 + 16);
  *(v21 + 16) = v22;
  v393 = (v21 + 16);
  v0[256] = v22;
  v443 = v22;

  v23 = sub_10002C958();
  v24 = sub_10002CB98();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v452[0] = 0;
    v451[0] = 0;
    *v25 = 0;
    v450[0] = v25 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v450, v452, v451);
    _os_log_impl(&_mh_execute_header, v23, v24, "Querying registered tasks for existing payloads...", v25, 2u);
  }

  if (v0[243])
  {
    v26 = 0;
    v27 = v0[88];
    v28 = v0[75];
    v29 = v0[71];
    v434 = v0[242] + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v438 = v27;
    v30 = (v27 + 8);
    v409 = (v28 + 56);
    v407 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v406 = (v29 + 104);
    v404 = (v29 + 8);
    v399 = (v28 + 8);
    v431 = (v27 + 8);
    do
    {
      if (v26 >= *(v0[242] + 16))
      {
        __break(1u);
        goto LABEL_144;
      }

      v32 = *(v438 + 16);
      v32(v0[95], v434 + *(v438 + 72) * v26, v0[87]);

      v33 = sub_10002C728();
      v35 = sub_100008480(v33, v34, v443);

      if (v35)
      {
        sub_10002C708();
        if (v36)
        {
          v424 = v26;
          v37 = v0[84];
          v414 = v0[85];
          v418 = v0[74];
          v38 = v0[72];
          v39 = v0[70];
          (*v409)(v0[73], 1, 1);
          v40 = *v406;
          (*v406)(v38, v407, v39);

          sub_10002C558();
          v449[43] = 0x737465737361;
          v449[44] = 0xE600000000000000;
          v40(v38, v407, v39);
          v0 = v449;
          sub_10002B6D0();
          sub_10002C568();
          (*v404)(v38, v39);
          v41 = *v399;
          (*v399)(v37, v418);
          sub_10002C548(0);
          v41(v414, v418);
          v42 = [objc_opt_self() defaultManager];
          v43 = sub_10002CA18();
          LODWORD(v41) = [v42 fileExistsAtPath:v43];

          if (v41)
          {
            v32(v449[93], v449[95], v449[87]);
            v44 = sub_10002C958();
            v45 = sub_10002CB98();
            v46 = os_log_type_enabled(v44, v45);
            v47 = v449[93];
            v48 = v449[87];
            if (v46)
            {
              v49 = swift_slowAlloc();
              v415 = v48;
              v50 = swift_slowAlloc();
              v451[0] = v50;
              *v49 = 136315138;
              v51 = sub_10002C728();
              v53 = sub_10000B7BC(v51, v52, v451);

              *(v49 + 4) = v53;

              v54 = *v431;
              (*v431)(v47, v415);
              _os_log_impl(&_mh_execute_header, v44, v45, "Assets already available. Skipping payload download for task: %s", v49, 0xCu);
              sub_1000067EC(v50);
            }

            else
            {

              v54 = *v431;
              (*v431)(v47, v48);
            }

            v26 = v424;
            v77 = v449[95];
            v78 = v449[87];
            v79 = sub_10002C728();
            sub_10000BEB4(v79, v80);

            v54(v77, v78);
            v30 = v431;
          }

          else
          {
            v30 = v431;
            (*v431)(v449[95], v449[87]);

            v26 = v424;
          }

          goto LABEL_15;
        }

        v32(v0[92], v0[95], v0[87]);
        v55 = sub_10002C958();
        v68 = sub_10002CB98();
        v69 = os_log_type_enabled(v55, v68);
        v58 = v0[95];
        v59 = v0[92];
        v60 = v0[87];
        if (v69)
        {
          v70 = v26;
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v451[0] = v72;
          *v71 = 136315138;
          v73 = sub_10002C728();
          v75 = sub_10000B7BC(v73, v74, v451);

          *(v71 + 4) = v75;
          v76 = *v431;
          (*v431)(v59, v60);
          _os_log_impl(&_mh_execute_header, v55, v68, "Skipping registeredTask %s due to lack of taskFolder.", v71, 0xCu);
          sub_1000067EC(v72);
          v30 = v431;

          v26 = v70;

          v76(v58, v60);
          goto LABEL_14;
        }
      }

      else
      {
        v32(v0[94], v0[95], v0[87]);
        v55 = sub_10002C958();
        v56 = sub_10002CB98();
        v57 = os_log_type_enabled(v55, v56);
        v58 = v0[95];
        v59 = v0[94];
        v60 = v0[87];
        if (v57)
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v451[0] = v62;
          *v61 = 136315138;
          v63 = sub_10002C728();
          v65 = v26;
          v66 = sub_10000B7BC(v63, v64, v451);
          v30 = v431;

          *(v61 + 4) = v66;
          v67 = *v431;
          (*v431)(v59, v60);
          _os_log_impl(&_mh_execute_header, v55, v56, "Skipping payloads for registeredTask %s it was not added in this run.", v61, 0xCu);
          sub_1000067EC(v62);

          v67(v58, v60);
          v26 = v65;
          goto LABEL_14;
        }
      }

      v31 = *v30;
      (*v30)(v59, v60);

      v31(v58, v60);
LABEL_14:
      v0 = v449;
LABEL_15:
      ++v26;
    }

    while (v26 != v0[243]);
  }

  v81 = sub_10002C958();
  v82 = sub_10002CB98();
  if (!os_log_type_enabled(v81, v82))
  {

    if ((sub_10002CB18() & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_37:
    v100 = v0;
    v101 = v0[203];

    v102 = sub_10002C958();
    v103 = sub_10002CB98();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v452[0] = 0;
      v451[0] = 0;
      *v104 = 0;
      v450[0] = v104 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v450, v452, v451);
      _os_log_impl(&_mh_execute_header, v102, v103, "Task cancelled before querying for TaskPayloads.", v104, 2u);
    }

    v105 = v449;
    v106 = v449[203];
    v107 = v449[202];
    v108 = v449[201];
    v109 = v449[200];
    v425 = v449[199];
    v110 = v449[198];
    v111 = v449[197];
    v439 = v449[188];
    v112 = v449[187];
    v435 = v449[186];
    v113 = objc_allocWithZone(sub_10002C7C8());
    v386 = sub_10002C7B8();

    sub_100007A74(v111);
    (*(v112 + 8))(v439, v435);
    goto LABEL_140;
  }

  v83 = swift_slowAlloc();
  v84 = swift_slowAlloc();
  v451[0] = v84;
  *v83 = 136315138;
  swift_beginAccess();

  v85 = sub_10002CB38();
  v87 = v86;

  v88 = sub_10000B7BC(v85, v87, v451);

  *(v83 + 4) = v88;

  _os_log_impl(&_mh_execute_header, v81, v82, "Computed payloadsTaskNames: %s", v83, 0xCu);
  sub_1000067EC(v84);

  if (sub_10002CB18())
  {
    goto LABEL_37;
  }

LABEL_31:
  swift_beginAccess();
  v89 = *v393;
  if (*(*v393 + 16))
  {
    swift_retain_n();
    v90 = sub_10002C958();
    v91 = sub_10002CB98();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = v93;
      v452[0] = v93;
      *v92 = 136315138;
      v95 = *(v89 + 16);
      if (v95)
      {
        v432 = v93;
        v444 = v90;
        v96 = sub_10000B738(v95, 0);
        v97 = sub_10000E634(v451, v96 + 4, v95, v89);
        v98 = v451[0];
        swift_bridgeObjectRetain_n();
        sub_10002B724(v98);
        if (v97 != v95)
        {
          goto LABEL_149;
        }

        v99 = v396;
        v90 = v444;
        v94 = v432;
      }

      else
      {

        v96 = _swiftEmptyArrayStorage;
        v99 = v396;
      }

      v451[0] = v96;
      sub_10000BFF0(v451);
      if (v99)
      {
      }

      v199 = sub_10002CA98();
      v201 = v200;

      v202 = sub_10000B7BC(v199, v201, v452);

      *(v92 + 4) = v202;

      _os_log_impl(&_mh_execute_header, v90, v91, "Querying TaskPayloads for new tasks: %s", v92, 0xCu);
      sub_1000067EC(v94);
    }

    else
    {
    }

    v203 = v449[212];
    v204 = v449[203];
    v205 = v449[202];
    v206 = v449[201];
    v207 = swift_allocObject();
    *(v207 + 16) = xmmword_10002DE40;
    *(v207 + 56) = &type metadata for String;
    *(v207 + 64) = v203;
    *(v207 + 32) = 0x656D614E6B736174;
    *(v207 + 40) = 0xE800000000000000;

    v209 = sub_100008AE8(v208);

    *(v207 + 96) = sub_100005338(&qword_1000386D8, &qword_10002DFA0);
    *(v207 + 104) = sub_10002B880(&qword_1000386E0, &qword_1000386D8, &qword_10002DFA0, &protocol conformance descriptor for [A]);
    *(v207 + 72) = v209;
    v210 = sub_10002CB88();
    v455._countAndFlagsBits = 0x6C7961506B736154;
    v455._object = 0xEC0000007364616FLL;
    isa = sub_10002CBC8(v455, v210).super.isa;
    v449[257] = isa;
    v212 = swift_task_alloc();
    v449[258] = v212;
    *(v212 + 16) = isa;
    *(v212 + 24) = v206;
    v213 = swift_task_alloc();
    v449[259] = v213;
    *(v213 + 16) = &unk_10002DFB0;
    *(v213 + 24) = v212;
    v214 = swift_task_alloc();
    v449[260] = v214;
    *v214 = v449;
    v214[1] = sub_10001F8D0;
    v215 = v449[219];

    return CKDatabase.configuredWith<A>(configuration:group:body:)(v449 + 37, v204, v205, &unk_10002DFB8, v213, v215);
  }

  v125 = v0[203];

  v126 = v0;
  v445 = _swiftEmptyArrayStorage[2];
  if (v445)
  {
    v127 = 0;
    v128 = &_swiftEmptyArrayStorage[6];
    v426 = v0[65];
    v429 = v0[69];
    v440 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v127 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_145;
      }

      v129 = *(v128 - 2);
      v130 = *(v128 - 1);
      if (*v128)
      {
        sub_10002B400(*(v128 - 1), 1);
        sub_10002B400(v130, 1);
        sub_10002B400(v130, 1);
        v131 = v129;
        v132 = sub_10002C958();
        v133 = sub_10002CBB8();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          *v134 = 138412290;
          swift_errorRetain();
          v136 = _swift_stdlib_bridgeErrorToNSError();
          *(v134 + 4) = v136;
          *v135 = v136;

          sub_10002B40C(v130, 1);
          sub_10002B40C(v130, 1);
          _os_log_impl(&_mh_execute_header, v132, v133, "Error: %@", v134, 0xCu);
          sub_10002B7B4(v135, &qword_1000386C8, &qword_10002DF80);

          sub_10002B40C(v130, 1);
        }

        else
        {

          sub_10002B40C(v130, 1);
          sub_10002B40C(v130, 1);
        }

        v145 = v126[197];
        v146 = *(v145 + 96);
        v147 = __OFADD__(v146, 1);
        v148 = v146 + 1;
        if (v147)
        {
          goto LABEL_146;
        }

        *(v145 + 96) = v148;
      }

      else
      {
        v138 = v126[63];
        v137 = v126[64];
        sub_10002B400(*(v128 - 1), 0);
        sub_10002B400(v130, 0);
        v139 = v129;
        sub_1000049E8(v130, v138);
        if ((*(v426 + 48))(v138, 1, v137) == 1)
        {
          sub_10002B7B4(v126[63], &qword_100038640, &qword_10002DF00);
          v140 = v130;
          v141 = sub_10002C958();
          v142 = sub_10002CBB8();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            *v143 = 138412290;
            *(v143 + 4) = v140;
            *v144 = v130;

            sub_10002B40C(v130, 0);
            _os_log_impl(&_mh_execute_header, v141, v142, "Skipping record: %@", v143, 0xCu);
            sub_10002B7B4(v144, &qword_1000386C8, &qword_10002DF80);
            v126 = v449;

            sub_10002B40C(v130, 0);
          }

          else
          {

            sub_10002B40C(v130, 0);
            sub_10002B40C(v130, 0);
          }

          goto LABEL_45;
        }

        v149 = v126[208];
        v150 = v126[69];
        v151 = v126[63];

        sub_10002B814(v151, v150, type metadata accessor for TaskPayloadRecord);
        if ((sub_100008480(v429[2], v429[3], v149) & 1) == 0)
        {
          v162 = sub_10002C958();
          v163 = sub_10002CBA8();
          v164 = os_log_type_enabled(v162, v163);
          v165 = v126[69];
          if (v164)
          {
            v166 = swift_slowAlloc();
            v452[0] = 0;
            v451[0] = 0;
            *v166 = 0;
            v450[0] = v166 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v450, v452, v451);
            v167 = v163;
            v168 = v162;
            v169 = "Skipping taskPayloadRecord because associated with an unavailable extensionId.";
            goto LABEL_68;
          }

LABEL_69:

          sub_10002B40C(v130, 0);
          sub_100005B40(v165, type metadata accessor for TaskPayloadRecord);
          goto LABEL_45;
        }

        v152 = v126[256];
        v153 = *v126[69];
        v154 = v429[1];

        LOBYTE(v153) = sub_100008480(v153, v154, v152);

        if ((v153 & 1) == 0)
        {
          v162 = sub_10002C958();
          v170 = sub_10002CBA8();
          v171 = os_log_type_enabled(v162, v170);
          v165 = v126[69];
          if (v171)
          {
            v166 = swift_slowAlloc();
            v452[0] = 0;
            v451[0] = 0;
            *v166 = 0;
            v450[0] = v166 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v450, v452, v451);
            v167 = v170;
            v168 = v162;
            v169 = "Skipping taskPayloadRecord because associated with an unavailable taskName.";
LABEL_68:
            _os_log_impl(&_mh_execute_header, v168, v167, v169, v166, 2u);
          }

          goto LABEL_69;
        }

        sub_100005AD8(v126[69], v126[68], type metadata accessor for TaskPayloadRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v440 = sub_10000B55C(0, v440[2] + 1, 1, v440, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v156 = v440[2];
        v155 = v440[3];
        if (v156 >= v155 >> 1)
        {
          v440 = sub_10000B55C((v155 > 1), v156 + 1, 1, v440, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v157 = v126[197];
        v158 = v126[69];
        v159 = v126[68];
        v440[2] = v156 + 1;
        sub_10002B814(v159, v440 + ((*(v426 + 80) + 32) & ~*(v426 + 80)) + *(v426 + 72) * v156, type metadata accessor for TaskPayloadRecord);
        sub_10002B40C(v130, 0);
        sub_100005B40(v158, type metadata accessor for TaskPayloadRecord);
        v160 = *(v157 + 88);
        v147 = __OFADD__(v160, 1);
        v161 = v160 + 1;
        if (v147)
        {
          goto LABEL_148;
        }

        *(v126[197] + 88) = v161;
      }

LABEL_45:
      ++v127;
      v128 += 24;
      if (v445 == v127)
      {
        goto LABEL_76;
      }
    }
  }

  v440 = _swiftEmptyArrayStorage;
LABEL_76:

  if (sub_10002CB18())
  {

    v179 = sub_10002C958();
    v180 = sub_10002CB98();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v452[0] = 0;
      v451[0] = 0;
      *v181 = 0;
      v450[0] = v181 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v450, v452, v451);
      _os_log_impl(&_mh_execute_header, v179, v180, "Task cancelled before processing TaskPayloads.", v181, 2u);
    }

    v105 = v126;
    v182 = v126[203];
    v183 = v126[202];
    v184 = v126[201];
    v185 = v126[200];
    v427 = v126[199];
    v186 = v126[198];
    v187 = v105[197];
    v446 = v105[188];
    v188 = v105[187];
    v441 = v105[186];
    v189 = objc_allocWithZone(sub_10002C7C8());
    v386 = sub_10002C7B8();

    goto LABEL_138;
  }

  v190 = v440;
  swift_bridgeObjectRetain_n();
  v191 = sub_10002C958();
  v192 = sub_10002CB98();
  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v452[0] = v194;
    *v193 = 134218242;
    *(v193 + 4) = v440[2];

    *(v193 + 12) = 2080;
    sub_100008968(v440, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v451);
    v195 = sub_10002CA98();
    v197 = v196;

    v198 = sub_10000B7BC(v195, v197, v452);

    *(v193 + 14) = v198;
    v190 = v440;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v191, v192, "Processing TaskPayloadRecords (count: %ld): %s", v193, 0x16u);
    sub_1000067EC(v194);

    if (!v126[243])
    {
      goto LABEL_128;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    if (!v126[243])
    {
LABEL_128:
      v355 = v126[195];
      v356 = v126[170];
      v357 = v126[164];

      sub_10002C5D8();
      sub_10002C598();
      v359 = v358;
      v355(v356, v357);
      v360 = objc_allocWithZone(NSUserDefaults);
      v361 = sub_10002CA18();
      v362 = [v360 initWithSuiteName:v361];

      if (v362)
      {
        v363 = sub_10002C958();
        v364 = sub_10002CB98();
        if (os_log_type_enabled(v363, v364))
        {
          v365 = swift_slowAlloc();
          *v365 = 134217984;
          *(v365 + 4) = v359;

          _os_log_impl(&_mh_execute_header, v363, v364, "Marking lastSuccessTimestamp: %f", v365, 0xCu);
        }

        else
        {
        }

        v377 = sub_10002CB28().super.super.isa;
        v378 = sub_10002CA18();
        [v362 setValue:v377 forKey:v378];

        v126 = v449;
      }

      else
      {
      }

      v105 = v126;
      v379 = v126[203];
      v380 = v126[202];
      v381 = v126[201];
      v382 = v126[200];
      v427 = v126[199];
      v383 = v126[198];
      v187 = v105[197];
      v446 = v105[188];
      v188 = v105[187];
      v441 = v105[186];
      v384 = objc_allocWithZone(sub_10002C7C8());
      v386 = sub_10002C7B8();

LABEL_138:

      v376 = v187;
      goto LABEL_139;
    }
  }

  v216 = 0;
  v217 = v126[88];
  v218 = v217 + 16;
  v430 = (v126[65] + 48);
  v219 = v126[75];
  v220 = (v219 + 56);
  v221 = v126[71];
  v392 = (v221 + 104);
  v391 = (v221 + 8);
  v422 = (v219 + 8);
  v405 = (v219 + 16);
  v433 = v217;
  v387 = v126[66];
  v408 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v416 = v217 + 16;
  v428 = (v219 + 56);
  v436 = (v217 + 8);
  while (1)
  {
    v224 = v126[242];
    if (*(v224 + 16) <= v216)
    {
      goto LABEL_147;
    }

    v225 = *(v433 + 16);
    v225(v126[91], v224 + ((*(v433 + 80) + 32) & ~*(v433 + 80)) + *(v433 + 72) * v216, v126[87]);
    if (sub_10002CB18())
    {
      break;
    }

    v226 = v126[91];
    v227 = v126[64];
    v228 = v126[62];
    *(swift_task_alloc() + 16) = v226;
    sub_1000087D0(sub_10002B6B0, v190, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v228);

    if ((*v430)(v228, 1, v227) == 1)
    {
      v229 = v126[91];
      v230 = v126[90];
      v231 = v126[87];
      sub_10002B7B4(v126[62], &qword_100038640, &qword_10002DF00);
      v232 = v231;
      v233 = v218;
      v225(v230, v229, v232);
      v234 = sub_10002C958();
      v235 = sub_10002CB98();
      v236 = os_log_type_enabled(v234, v235);
      v237 = v126[90];
      v238 = v126[87];
      if (v236)
      {
        v239 = swift_slowAlloc();
        v447 = v216;
        v240 = swift_slowAlloc();
        v451[0] = v240;
        *v239 = 136315138;
        v241 = sub_10002C728();
        v243 = sub_10000B7BC(v241, v242, v451);
        v220 = v428;

        *(v239 + 4) = v243;
        v126 = v449;
        v222 = *v436;
        (*v436)(v237, v238);
        _os_log_impl(&_mh_execute_header, v234, v235, "Skipping task. No TaskPayloadRecord found for: %s", v239, 0xCu);
        sub_1000067EC(v240);
        v216 = v447;
        v218 = v416;

        v190 = v440;
      }

      else
      {

        v222 = *v436;
        (*v436)(v237, v238);
        v190 = v440;
        v218 = v233;
      }
    }

    else
    {
      sub_10002B814(v126[62], v126[67], type metadata accessor for TaskPayloadRecord);
      sub_10002C708();
      if (v244)
      {
        v448 = v216;
        v245 = v126[85];
        v419 = v126[74];
        v246 = v126[72];
        v247 = v220;
        v248 = v126[70];
        v394 = *v247;
        (*v247)(v126[73], 1, 1);
        v249 = *v392;
        (*v392)(v246, v408, v248);

        sub_10002C558();
        v126[25] = 0x737465737361;
        v126[26] = 0xE600000000000000;
        v400 = v249;
        v249(v246, v408, v248);
        sub_10002B6D0();
        sub_10002C568();
        v250 = *v391;
        (*v391)(v246, v248);
        v251 = v419;
        v420 = *v422;
        (*v422)(v245, v251);
        v252 = objc_opt_self();
        v253 = [v252 defaultManager];
        sub_10002C548(0);
        v254 = sub_10002CA18();

        v126[48] = 0;
        v255 = [v253 createDirectoryAtPath:v254 withIntermediateDirectories:1 attributes:0 error:v126 + 48];

        v256 = v126[48];
        v257 = v126[74];
        if (v255)
        {
          v388 = v252;
          v389 = v250;
          v258 = v126[82];
          v410 = v126[81];
          v259 = v126[72];
          v260 = v126[70];
          v394(v126[73], 1, 1, v257);
          v400(v259, v408, v260);
          v261 = v256;

          v126 = v449;
          sub_10002C558();
          v262 = *v405;
          (*v405)(v410, v258, v257);
          v263 = sub_10002C958();
          v264 = sub_10002CB98();
          v265 = os_log_type_enabled(v263, v264);
          v266 = v449[81];
          v267 = v449[74];
          if (v265)
          {
            v268 = swift_slowAlloc();
            v269 = swift_slowAlloc();
            v451[0] = v269;
            *v268 = 136315138;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v270 = sub_10002CD38();
            v272 = sub_10000B7BC(v270, v271, v451);

            *(v268 + 4) = v272;
            v126 = v449;
            v420(v266, v267);
            _os_log_impl(&_mh_execute_header, v263, v264, "Processing: %s", v268, 0xCu);
            sub_1000067EC(v269);
          }

          else
          {

            v420(v266, v267);
          }

          if ((sub_100008DB0(v126[82], v126[83]) & 1) == 0)
          {
            v317 = sub_10002C958();
            v318 = sub_10002CB98();
            if (os_log_type_enabled(v317, v318))
            {
              v319 = swift_slowAlloc();
              v452[0] = 0;
              v451[0] = 0;
              *v319 = 0;
              v450[0] = v319 + 2;
              sub_10000B2CC(_swiftEmptyArrayStorage, v450, v452, v451);
              _os_log_impl(&_mh_execute_header, v317, v318, "Failed at processing archive, copying raw archive into taskFolder.", v319, 2u);
            }

            v320 = v126[72];
            v321 = v126[70];
            v126[45] = 0x612E737465737361;
            v126[46] = 0xEA00000000007261;
            v400(v320, v408, v321);
            sub_10002C568();
            v389(v320, v321);
            v322 = [v388 defaultManager];
            sub_10002C528(v323);
            v325 = v324;
            sub_10002C528(v326);
            v328 = v327;
            v126[50] = 0;
            v329 = [v322 copyItemAtURL:v325 toURL:v327 error:v126 + 50];

            v330 = v126[50];
            v331 = v126[74];
            if (v329)
            {
              v332 = v126[83];
              v333 = v126[82];
              v334 = v126[79];
              v335 = v126[67];
              v336 = v330;

              v420(v334, v331);
              v420(v333, v331);
              v420(v332, v331);
              sub_100005B40(v335, type metadata accessor for TaskPayloadRecord);
              v190 = v440;
              v222 = *v436;
              v216 = v448;
              v218 = v416;
              v220 = v428;
            }

            else
            {
              v337 = v126[79];
              v338 = v126[76];
              v339 = v330;
              sub_10002C508();

              swift_willThrow();
              v262(v338, v337, v331);
              swift_errorRetain();
              swift_errorRetain();
              v340 = sub_10002C958();
              v341 = sub_10002CBB8();
              v342 = os_log_type_enabled(v340, v341);
              v343 = v126[83];
              v344 = v126[82];
              v413 = v126[79];
              v345 = v126[76];
              v346 = v126[74];
              v347 = v126[67];
              if (v342)
              {
                v403 = v126[82];
                v348 = swift_slowAlloc();
                v398 = v343;
                v349 = swift_slowAlloc();
                v390 = swift_slowAlloc();
                v451[0] = v390;
                *v348 = 136315394;
                sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                v350 = sub_10002CD38();
                v395 = v347;
                v352 = sub_10000B7BC(v350, v351, v451);
                v126 = v449;

                *(v348 + 4) = v352;
                v420(v345, v346);
                *(v348 + 12) = 2112;
                swift_errorRetain();
                v353 = _swift_stdlib_bridgeErrorToNSError();
                *(v348 + 14) = v353;
                *v349 = v353;

                _os_log_impl(&_mh_execute_header, v340, v341, "Failed at asset to: %s : %@", v348, 0x16u);
                sub_10002B7B4(v349, &qword_1000386C8, &qword_10002DF80);

                sub_1000067EC(v390);

                v420(v413, v346);
                v420(v403, v346);
                v420(v398, v346);
                v354 = v395;
              }

              else
              {

                v420(v345, v346);

                v420(v413, v346);
                v420(v344, v346);
                v420(v343, v346);
                v354 = v347;
              }

              sub_100005B40(v354, type metadata accessor for TaskPayloadRecord);
              v216 = v448;
              v220 = v428;
              v190 = v440;
              v222 = *v436;
              v218 = v416;
            }

            goto LABEL_95;
          }

          v262(v126[80], v126[83], v126[74]);
          v302 = sub_10002C958();
          v303 = sub_10002CB98();
          v304 = os_log_type_enabled(v302, v303);
          v305 = v126[83];
          v306 = v126[82];
          v307 = v126[80];
          v308 = v126[74];
          v309 = v126[67];
          if (v304)
          {
            v310 = swift_slowAlloc();
            v412 = v309;
            v311 = swift_slowAlloc();
            v451[0] = v311;
            *v310 = 136315138;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v312 = sub_10002CD38();
            v402 = v305;
            v314 = sub_10000B7BC(v312, v313, v451);
            v126 = v449;

            *(v310 + 4) = v314;

            v420(v307, v308);
            _os_log_impl(&_mh_execute_header, v302, v303, "TaskPayload extracted at: %s", v310, 0xCu);
            sub_1000067EC(v311);

            v420(v306, v308);
            v420(v402, v308);
            v315 = v412;
          }

          else
          {

            v420(v307, v308);

            v420(v306, v308);
            v420(v305, v308);
            v315 = v309;
          }

          sub_100005B40(v315, type metadata accessor for TaskPayloadRecord);
          v220 = v428;
          v316 = v436;
          v190 = v440;
        }

        else
        {
          v285 = v126[83];
          v286 = v126[77];
          v287 = v256;
          sub_10002C508();

          swift_willThrow();
          (*v405)(v286, v285, v257);
          swift_errorRetain();
          swift_errorRetain();
          v288 = sub_10002C958();
          v289 = sub_10002CBB8();
          v290 = os_log_type_enabled(v288, v289);
          v291 = v126[83];
          v292 = v126[77];
          v293 = v126[74];
          v294 = v126[67];
          if (v290)
          {
            v295 = swift_slowAlloc();
            v411 = v291;
            v296 = swift_slowAlloc();
            v397 = swift_slowAlloc();
            v451[0] = v397;
            *v295 = 136315394;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v297 = sub_10002CD38();
            v401 = v294;
            v299 = sub_10000B7BC(v297, v298, v451);
            v126 = v449;

            *(v295 + 4) = v299;
            v420(v292, v293);
            *(v295 + 12) = 2112;
            swift_errorRetain();
            v300 = _swift_stdlib_bridgeErrorToNSError();
            *(v295 + 14) = v300;
            *v296 = v300;

            _os_log_impl(&_mh_execute_header, v288, v289, "Failed at creating taskAssetsURL: %s : %@", v295, 0x16u);
            sub_10002B7B4(v296, &qword_1000386C8, &qword_10002DF80);

            sub_1000067EC(v397);

            v420(v411, v293);
            v301 = v401;
          }

          else
          {

            v420(v292, v293);

            v420(v291, v293);
            v301 = v294;
          }

          sub_100005B40(v301, type metadata accessor for TaskPayloadRecord);
          v190 = v440;
          v220 = v428;
          v316 = v436;
        }

        v222 = *v316;
        v216 = v448;
        v218 = v416;
      }

      else
      {
        sub_100005AD8(v126[67], v126[66], type metadata accessor for TaskPayloadRecord);
        v273 = sub_10002C958();
        v274 = sub_10002CBB8();
        v275 = os_log_type_enabled(v273, v274);
        v276 = v126[67];
        v277 = v126[66];
        if (v275)
        {
          v278 = swift_slowAlloc();
          v279 = v216;
          v280 = swift_slowAlloc();
          v451[0] = v280;
          *v278 = 136315138;
          v281 = *v277;
          v282 = *(v387 + 8);

          v283 = sub_10000B7BC(v281, v282, v451);
          v126 = v449;

          *(v278 + 4) = v283;
          sub_100005B40(v277, type metadata accessor for TaskPayloadRecord);
          _os_log_impl(&_mh_execute_header, v273, v274, "Task %s doesn't have a valid taskFolder. Skipping task.", v278, 0xCu);
          sub_1000067EC(v280);
          v216 = v279;

          v284 = v276;
          v220 = v428;
        }

        else
        {
          sub_100005B40(v126[66], type metadata accessor for TaskPayloadRecord);

          v284 = v276;
        }

        sub_100005B40(v284, type metadata accessor for TaskPayloadRecord);
        v190 = v440;
        v222 = *v436;
      }
    }

LABEL_95:
    ++v216;
    v223 = v126[243];
    v222(v126[91], v126[87]);
    if (v216 == v223)
    {
      goto LABEL_128;
    }
  }

  v366 = sub_10002C958();
  v367 = sub_10002CB98();
  if (os_log_type_enabled(v366, v367))
  {
    v368 = swift_slowAlloc();
    v452[0] = 0;
    v451[0] = 0;
    *v368 = 0;
    v450[0] = v368 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v450, v452, v451);
    _os_log_impl(&_mh_execute_header, v366, v367, "Task cancelled while processing TaskPayloads.", v368, 2u);
  }

  v369 = v126[203];
  v370 = v126[202];
  v105 = v126;
  v371 = v126[201];
  v372 = v105[200];
  v373 = v105[198];
  v374 = v105[197];
  v446 = v105[188];
  v188 = v105[187];
  v441 = v105[186];
  v423 = v105[91];
  v417 = v105[199];
  v421 = v105[87];
  v375 = objc_allocWithZone(sub_10002C7C8());
  v386 = sub_10002C7B8();

  (*v436)(v423, v421);

  v376 = v374;
LABEL_139:
  sub_100007A74(v376);
  (*(v188 + 8))(v446, v441);
LABEL_140:

  v385 = v105[1];

  return v385(v386);
}

uint64_t sub_10001F8D0()
{
  v2 = *v1;
  *(*v1 + 2088) = v0;

  if (v0)
  {
    v3 = *(v2 + 1624);

    v4 = sub_10002A2D0;
  }

  else
  {
    v5 = *(v2 + 1624);

    v4 = sub_10001FAA8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001FAA8()
{
  v275 = v0;
  v1 = *(v0 + 1576);

  v2 = *(v0 + 296);
  v3 = *(v2 + 16);
  *(v1 + 80) = v3;
  if (v3)
  {
    v4 = 0;
    v253 = *(v0 + 520);
    v5 = (v2 + 48);
    v256 = *(v0 + 552);
    v260 = v2;
    v262 = _swiftEmptyArrayStorage;
    v264 = v3;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
      }

      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      if (*v5)
      {
        sub_10002B400(*(v5 - 1), 1);
        sub_10002B400(v7, 1);
        sub_10002B400(v7, 1);
        v8 = v6;
        v9 = sub_10002C958();
        v10 = sub_10002CBB8();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          *v11 = 138412290;
          swift_errorRetain();
          v13 = _swift_stdlib_bridgeErrorToNSError();
          *(v11 + 4) = v13;
          *v12 = v13;

          sub_10002B40C(v7, 1);
          sub_10002B40C(v7, 1);
          _os_log_impl(&_mh_execute_header, v9, v10, "Error: %@", v11, 0xCu);
          sub_10002B7B4(v12, &qword_1000386C8, &qword_10002DF80);

          v3 = v264;

          sub_10002B40C(v7, 1);
        }

        else
        {

          sub_10002B40C(v7, 1);
          sub_10002B40C(v7, 1);
        }

        v22 = *(v0 + 1576);
        v23 = *(v22 + 96);
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_90;
        }

        *(v22 + 96) = v25;
      }

      else
      {
        v15 = *(v0 + 504);
        v14 = *(v0 + 512);
        sub_10002B400(*(v5 - 1), 0);
        sub_10002B400(v7, 0);
        v16 = v6;
        sub_1000049E8(v7, v15);
        if ((*(v253 + 48))(v15, 1, v14) == 1)
        {
          sub_10002B7B4(*(v0 + 504), &qword_100038640, &qword_10002DF00);
          v17 = v7;
          v18 = sub_10002C958();
          v19 = sub_10002CBB8();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            *v20 = 138412290;
            *(v20 + 4) = v17;
            *v21 = v7;

            sub_10002B40C(v7, 0);
            _os_log_impl(&_mh_execute_header, v18, v19, "Skipping record: %@", v20, 0xCu);
            sub_10002B7B4(v21, &qword_1000386C8, &qword_10002DF80);
            v3 = v264;

            v2 = v260;

            sub_10002B40C(v7, 0);
          }

          else
          {

            sub_10002B40C(v7, 0);
            sub_10002B40C(v7, 0);
          }

          goto LABEL_4;
        }

        v26 = *(v0 + 1664);
        v27 = *(v0 + 552);
        v28 = *(v0 + 504);

        sub_10002B814(v28, v27, type metadata accessor for TaskPayloadRecord);
        if ((sub_100008480(v256[2], v256[3], v26) & 1) == 0)
        {
          v39 = sub_10002C958();
          v40 = sub_10002CBA8();
          v41 = os_log_type_enabled(v39, v40);
          v42 = *(v0 + 552);
          if (v41)
          {
            v43 = swift_slowAlloc();
            v273 = 0;
            v274[0] = 0;
            *v43 = 0;
            v272[0] = v43 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v272, &v273, v274);
            v2 = v260;
            v44 = v40;
            v45 = v39;
            v46 = "Skipping taskPayloadRecord because associated with an unavailable extensionId.";
            goto LABEL_27;
          }

LABEL_28:

          sub_10002B40C(v7, 0);
          sub_100005B40(v42, type metadata accessor for TaskPayloadRecord);
          goto LABEL_4;
        }

        v29 = *(v0 + 2048);
        v30 = **(v0 + 552);
        v31 = v256[1];

        LOBYTE(v30) = sub_100008480(v30, v31, v29);

        if ((v30 & 1) == 0)
        {
          v39 = sub_10002C958();
          v47 = sub_10002CBA8();
          v48 = os_log_type_enabled(v39, v47);
          v42 = *(v0 + 552);
          if (v48)
          {
            v43 = swift_slowAlloc();
            v273 = 0;
            v274[0] = 0;
            *v43 = 0;
            v272[0] = v43 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v272, &v273, v274);
            v2 = v260;
            v44 = v47;
            v45 = v39;
            v46 = "Skipping taskPayloadRecord because associated with an unavailable taskName.";
LABEL_27:
            _os_log_impl(&_mh_execute_header, v45, v44, v46, v43, 2u);
          }

          goto LABEL_28;
        }

        sub_100005AD8(*(v0 + 552), *(v0 + 544), type metadata accessor for TaskPayloadRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v262 = sub_10000B55C(0, v262[2] + 1, 1, v262, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v33 = v262[2];
        v32 = v262[3];
        if (v33 >= v32 >> 1)
        {
          v262 = sub_10000B55C((v32 > 1), v33 + 1, 1, v262, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v34 = *(v0 + 1576);
        v35 = *(v0 + 552);
        v36 = *(v0 + 544);
        v262[2] = v33 + 1;
        sub_10002B814(v36, v262 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * v33, type metadata accessor for TaskPayloadRecord);
        sub_10002B40C(v7, 0);
        sub_100005B40(v35, type metadata accessor for TaskPayloadRecord);
        v37 = *(v34 + 88);
        v24 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v24)
        {
          goto LABEL_92;
        }

        *(*(v0 + 1576) + 88) = v38;
        v2 = v260;
        v3 = v264;
      }

LABEL_4:
      ++v4;
      v5 += 24;
      if (v3 == v4)
      {
        goto LABEL_30;
      }
    }
  }

  v262 = _swiftEmptyArrayStorage;
LABEL_30:

  if (sub_10002CB18())
  {

    v49 = sub_10002C958();
    v50 = sub_10002CB98();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v273 = 0;
      v274[0] = 0;
      *v51 = 0;
      v272[0] = v51 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v272, &v273, v274);
      _os_log_impl(&_mh_execute_header, v49, v50, "Task cancelled before processing TaskPayloads.", v51, 2u);
    }

    v52 = *(v0 + 1624);
    v53 = *(v0 + 1616);
    v54 = *(v0 + 1608);
    v55 = *(v0 + 1600);
    v257 = *(v0 + 1592);
    v56 = *(v0 + 1584);
    v57 = *(v0 + 1576);
    v267 = *(v0 + 1504);
    v58 = *(v0 + 1496);
    v265 = *(v0 + 1488);
    v59 = objc_allocWithZone(sub_10002C7C8());
    v230 = sub_10002C7B8();

    goto LABEL_85;
  }

  v60 = v262;
  swift_bridgeObjectRetain_n();
  v61 = sub_10002C958();
  v62 = sub_10002CB98();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v273 = v64;
    *v63 = 134218242;
    *(v63 + 4) = v262[2];

    *(v63 + 12) = 2080;
    sub_100008968(v262, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v274);
    v65 = sub_10002CA98();
    v67 = v66;

    v68 = sub_10000B7BC(v65, v67, &v273);

    *(v63 + 14) = v68;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v61, v62, "Processing TaskPayloadRecords (count: %ld): %s", v63, 0x16u);
    sub_1000067EC(v64);

    if (!*(v0 + 1944))
    {
      goto LABEL_75;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    if (!*(v0 + 1944))
    {
LABEL_75:
      v198 = *(v0 + 1560);
      v199 = *(v0 + 1360);
      v200 = *(v0 + 1312);

      sub_10002C5D8();
      sub_10002C598();
      v202 = v201;
      v198(v199, v200);
      v203 = objc_allocWithZone(NSUserDefaults);
      v204 = sub_10002CA18();
      v205 = [v203 initWithSuiteName:v204];

      if (v205)
      {
        v206 = sub_10002C958();
        v207 = sub_10002CB98();
        if (os_log_type_enabled(v206, v207))
        {
          v208 = swift_slowAlloc();
          *v208 = 134217984;
          *(v208 + 4) = v202;

          _os_log_impl(&_mh_execute_header, v206, v207, "Marking lastSuccessTimestamp: %f", v208, 0xCu);
        }

        else
        {
        }

        isa = sub_10002CB28().super.super.isa;
        v221 = sub_10002CA18();
        [v205 setValue:isa forKey:v221];
      }

      else
      {
      }

      v222 = *(v0 + 1624);
      v223 = *(v0 + 1616);
      v224 = *(v0 + 1608);
      v225 = *(v0 + 1600);
      v257 = *(v0 + 1592);
      v226 = *(v0 + 1584);
      v57 = *(v0 + 1576);
      v267 = *(v0 + 1504);
      v58 = *(v0 + 1496);
      v265 = *(v0 + 1488);
      v227 = objc_allocWithZone(sub_10002C7C8());
      v230 = sub_10002C7B8();

LABEL_85:

      sub_100007A74(v57);
      (*(v58 + 8))(v267, v265);
      goto LABEL_86;
    }
  }

  v69 = 0;
  v258 = (*(v0 + 520) + 48);
  v70 = *(v0 + 600);
  v71 = (v70 + 56);
  v72 = *(v0 + 568);
  v244 = (v72 + 104);
  v236 = (v72 + 8);
  v254 = (v70 + 8);
  v242 = (v70 + 16);
  v261 = *(v0 + 704);
  v73 = (v261 + 8);
  v231 = *(v0 + 528);
  v252 = (v261 + 8);
  v263 = (v70 + 56);
  v243 = enum case for URL.DirectoryHint.inferFromPath(_:);
  while (1)
  {
    v77 = *(v0 + 1936);
    if (*(v77 + 16) <= v69)
    {
      goto LABEL_91;
    }

    v78 = *(v261 + 16);
    v78(*(v0 + 728), v77 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v69, *(v0 + 696));
    if (sub_10002CB18())
    {
      break;
    }

    v268 = v69;
    v79 = *(v0 + 728);
    v80 = *(v0 + 512);
    v81 = *(v0 + 496);
    *(swift_task_alloc() + 16) = v79;
    sub_1000087D0(sub_10002B6B0, v60, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v81);

    if ((*v258)(v81, 1, v80) == 1)
    {
      v82 = *(v0 + 728);
      v83 = *(v0 + 720);
      v84 = *(v0 + 696);
      sub_10002B7B4(*(v0 + 496), &qword_100038640, &qword_10002DF00);
      v78(v83, v82, v84);
      v85 = sub_10002C958();
      v86 = sub_10002CB98();
      v87 = os_log_type_enabled(v85, v86);
      v88 = *(v0 + 720);
      v89 = *(v0 + 696);
      if (v87)
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v274[0] = v91;
        *v90 = 136315138;
        v92 = sub_10002C728();
        v94 = sub_10000B7BC(v92, v93, v274);

        *(v90 + 4) = v94;
        v73 = (v261 + 8);
        v74 = *v252;
        (*v252)(v88, v89);
        _os_log_impl(&_mh_execute_header, v85, v86, "Skipping task. No TaskPayloadRecord found for: %s", v90, 0xCu);
        sub_1000067EC(v91);
      }

      else
      {

        v74 = *v73;
        (*v73)(v88, v89);
      }
    }

    else
    {
      sub_10002B814(*(v0 + 496), *(v0 + 536), type metadata accessor for TaskPayloadRecord);
      sub_10002C708();
      if (v95)
      {
        v96 = *(v0 + 680);
        v248 = *(v0 + 592);
        v97 = *(v0 + 576);
        v98 = *(v0 + 560);
        v238 = *v71;
        (*v71)(*(v0 + 584), 1, 1);
        v99 = *v244;
        (*v244)(v97, v243, v98);

        sub_10002C558();
        *(v0 + 200) = 0x737465737361;
        *(v0 + 208) = 0xE600000000000000;
        v237 = v99;
        v99(v97, v243, v98);
        sub_10002B6D0();
        sub_10002C568();
        v234 = *v236;
        (*v236)(v97, v98);
        v100 = *v254;
        (*v254)(v96, v248);
        v101 = objc_opt_self();
        v102 = [v101 defaultManager];
        sub_10002C548(0);
        v103 = sub_10002CA18();

        *(v0 + 384) = 0;
        v104 = [v102 createDirectoryAtPath:v103 withIntermediateDirectories:1 attributes:0 error:v0 + 384];

        v105 = *(v0 + 384);
        v106 = *(v0 + 592);
        if (!v104)
        {
          v132 = *(v0 + 664);
          v133 = *(v0 + 616);
          v134 = v105;
          sub_10002C508();

          swift_willThrow();
          (*v242)(v133, v132, v106);
          swift_errorRetain();
          swift_errorRetain();
          v135 = sub_10002C958();
          v136 = sub_10002CBB8();
          v137 = os_log_type_enabled(v135, v136);
          v138 = *(v0 + 664);
          v139 = *(v0 + 616);
          v140 = *(v0 + 592);
          v141 = *(v0 + 536);
          if (v137)
          {
            v250 = v100;
            v142 = swift_slowAlloc();
            v270 = v138;
            v143 = swift_slowAlloc();
            v240 = swift_slowAlloc();
            v274[0] = v240;
            *v142 = 136315394;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v144 = sub_10002CD38();
            v245 = v141;
            v146 = sub_10000B7BC(v144, v145, v274);

            *(v142 + 4) = v146;
            v250(v139, v140);
            *(v142 + 12) = 2112;
            swift_errorRetain();
            v147 = _swift_stdlib_bridgeErrorToNSError();
            *(v142 + 14) = v147;
            *v143 = v147;

            _os_log_impl(&_mh_execute_header, v135, v136, "Failed at creating taskAssetsURL: %s : %@", v142, 0x16u);
            sub_10002B7B4(v143, &qword_1000386C8, &qword_10002DF80);

            sub_1000067EC(v240);

            v250(v270, v140);
            v148 = v245;
          }

          else
          {

            v100(v139, v140);

            v100(v138, v140);
            v148 = v141;
          }

          sub_100005B40(v148, type metadata accessor for TaskPayloadRecord);
          v73 = (v261 + 8);
LABEL_63:
          v75 = v268;
LABEL_71:
          v74 = *v73;
          v60 = v262;
          goto LABEL_41;
        }

        v232 = v101;
        v249 = v100;
        v107 = *(v0 + 656);
        v233 = *(v0 + 648);
        v108 = *(v0 + 576);
        v109 = *(v0 + 560);
        v238(*(v0 + 584), 1, 1, v106);
        v237(v108, v243, v109);
        v110 = v105;

        sub_10002C558();
        v239 = *v242;
        (*v242)(v233, v107, v106);
        v111 = sub_10002C958();
        v112 = sub_10002CB98();
        v113 = os_log_type_enabled(v111, v112);
        v114 = *(v0 + 648);
        v115 = *(v0 + 592);
        if (v113)
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v274[0] = v117;
          *v116 = 136315138;
          sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v118 = sub_10002CD38();
          v120 = sub_10000B7BC(v118, v119, v274);

          *(v116 + 4) = v120;
          v249(v114, v115);
          _os_log_impl(&_mh_execute_header, v111, v112, "Processing: %s", v116, 0xCu);
          sub_1000067EC(v117);
        }

        else
        {

          v100(v114, v115);
        }

        v60 = v262;
        if (sub_100008DB0(*(v0 + 656), *(v0 + 664)))
        {
          v239(*(v0 + 640), *(v0 + 664), *(v0 + 592));
          v149 = sub_10002C958();
          v150 = sub_10002CB98();
          v151 = os_log_type_enabled(v149, v150);
          v152 = *(v0 + 664);
          v153 = *(v0 + 656);
          v154 = *(v0 + 640);
          v155 = *(v0 + 592);
          v156 = *(v0 + 536);
          if (v151)
          {
            v246 = *(v0 + 664);
            v157 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v274[0] = v158;
            *v157 = 136315138;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v159 = sub_10002CD38();
            v161 = sub_10000B7BC(v159, v160, v274);

            *(v157 + 4) = v161;

            v249(v154, v155);
            _os_log_impl(&_mh_execute_header, v149, v150, "TaskPayload extracted at: %s", v157, 0xCu);
            sub_1000067EC(v158);

            v249(v153, v155);
            v249(v246, v155);
          }

          else
          {

            v249(v154, v155);

            v249(v153, v155);
            v249(v152, v155);
          }

          sub_100005B40(v156, type metadata accessor for TaskPayloadRecord);
          v75 = v268;
          v73 = (v261 + 8);
          goto LABEL_71;
        }

        v162 = sub_10002C958();
        v163 = sub_10002CB98();
        v73 = (v261 + 8);
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          v273 = 0;
          v274[0] = 0;
          *v164 = 0;
          v272[0] = v164 + 2;
          sub_10000B2CC(_swiftEmptyArrayStorage, v272, &v273, v274);
          _os_log_impl(&_mh_execute_header, v162, v163, "Failed at processing archive, copying raw archive into taskFolder.", v164, 2u);
        }

        v165 = *(v0 + 576);
        v166 = *(v0 + 560);
        *(v0 + 360) = 0x612E737465737361;
        *(v0 + 368) = 0xEA00000000007261;
        v237(v165, v243, v166);
        sub_10002C568();
        v234(v165, v166);
        v167 = [v232 defaultManager];
        sub_10002C528(v168);
        v170 = v169;
        sub_10002C528(v171);
        v173 = v172;
        *(v0 + 400) = 0;
        v174 = [v167 copyItemAtURL:v170 toURL:v172 error:v0 + 400];

        v175 = *(v0 + 400);
        v176 = *(v0 + 592);
        if (!v174)
        {
          v182 = *(v0 + 632);
          v183 = *(v0 + 608);
          v184 = v175;
          sub_10002C508();

          swift_willThrow();
          v239(v183, v182, v176);
          swift_errorRetain();
          swift_errorRetain();
          v185 = sub_10002C958();
          v186 = sub_10002CBB8();
          v187 = os_log_type_enabled(v185, v186);
          v188 = *(v0 + 664);
          v271 = *(v0 + 656);
          v247 = *(v0 + 632);
          v189 = *(v0 + 608);
          v190 = *(v0 + 592);
          v191 = *(v0 + 536);
          if (v187)
          {
            v192 = swift_slowAlloc();
            v241 = v191;
            v193 = swift_slowAlloc();
            v235 = swift_slowAlloc();
            v274[0] = v235;
            *v192 = 136315394;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v194 = sub_10002CD38();
            v196 = sub_10000B7BC(v194, v195, v274);

            *(v192 + 4) = v196;
            v249(v189, v190);
            *(v192 + 12) = 2112;
            swift_errorRetain();
            v197 = _swift_stdlib_bridgeErrorToNSError();
            *(v192 + 14) = v197;
            *v193 = v197;

            _os_log_impl(&_mh_execute_header, v185, v186, "Failed at asset to: %s : %@", v192, 0x16u);
            sub_10002B7B4(v193, &qword_1000386C8, &qword_10002DF80);

            sub_1000067EC(v235);

            v73 = (v261 + 8);

            v249(v247, v190);
            v249(v271, v190);
            v249(v188, v190);
            sub_100005B40(v241, type metadata accessor for TaskPayloadRecord);
          }

          else
          {

            v249(v189, v190);

            v249(v247, v190);
            v249(v271, v190);
            v249(v188, v190);
            sub_100005B40(v191, type metadata accessor for TaskPayloadRecord);
          }

          goto LABEL_63;
        }

        v177 = *(v0 + 664);
        v178 = *(v0 + 656);
        v179 = *(v0 + 632);
        v180 = *(v0 + 536);
        v181 = v175;

        v249(v179, v176);
        v249(v178, v176);
        v249(v177, v176);
        v131 = v180;
      }

      else
      {
        sub_100005AD8(*(v0 + 536), *(v0 + 528), type metadata accessor for TaskPayloadRecord);
        v121 = sub_10002C958();
        v122 = sub_10002CBB8();
        v123 = os_log_type_enabled(v121, v122);
        v124 = *(v0 + 536);
        v125 = *(v0 + 528);
        if (v123)
        {
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v274[0] = v127;
          *v126 = 136315138;
          v128 = *v125;
          v129 = *(v231 + 8);

          v130 = sub_10000B7BC(v128, v129, v274);
          v73 = (v261 + 8);

          *(v126 + 4) = v130;
          sub_100005B40(v125, type metadata accessor for TaskPayloadRecord);
          _os_log_impl(&_mh_execute_header, v121, v122, "Task %s doesn't have a valid taskFolder. Skipping task.", v126, 0xCu);
          sub_1000067EC(v127);
        }

        else
        {
          sub_100005B40(*(v0 + 528), type metadata accessor for TaskPayloadRecord);
        }

        v131 = v124;
      }

      sub_100005B40(v131, type metadata accessor for TaskPayloadRecord);
      v74 = *v73;
    }

    v75 = v268;
LABEL_41:
    v69 = v75 + 1;
    v76 = *(v0 + 1944);
    v74(*(v0 + 728), *(v0 + 696));
    v71 = v263;
    if (v69 == v76)
    {
      goto LABEL_75;
    }
  }

  v209 = sub_10002C958();
  v210 = sub_10002CB98();
  if (os_log_type_enabled(v209, v210))
  {
    v211 = swift_slowAlloc();
    v273 = 0;
    v274[0] = 0;
    *v211 = 0;
    v272[0] = v211 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v272, &v273, v274);
    _os_log_impl(&_mh_execute_header, v209, v210, "Task cancelled while processing TaskPayloads.", v211, 2u);
  }

  v212 = *(v0 + 1624);
  v213 = *(v0 + 1616);
  v214 = *(v0 + 1608);
  v215 = *(v0 + 1600);
  v251 = *(v0 + 1592);
  v216 = *(v0 + 1584);
  v217 = *(v0 + 1576);
  v269 = *(v0 + 1504);
  v218 = *(v0 + 1496);
  v266 = *(v0 + 1488);
  v255 = *(v0 + 696);
  v259 = *(v0 + 728);
  v219 = objc_allocWithZone(sub_10002C7C8());
  v230 = sub_10002C7B8();

  (*v252)(v259, v255);

  sub_100007A74(v217);
  (*(v218 + 8))(v269, v266);
LABEL_86:

  v228 = *(v0 + 8);

  return v228(v230);
}

uint64_t sub_1000221F0(uint64_t a1)
{
  v22 = v1;
  v2 = sub_10002C958();
  v3 = sub_10002CBB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v20 = 0;
    v21[0] = 0;
    *v4 = 0;
    v19 = v4 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, &v19, &v20, v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "Invalid remote reply when requesting active tasks.", v4, 2u);
  }

  v5 = v1[203];
  v6 = v1[202];
  v7 = v1[201];
  v8 = v1[200];
  v16 = v1[199];
  v9 = v1[198];
  v10 = v1[197];
  v18 = v1[188];
  v11 = v1[187];
  v17 = v1[186];
  v12 = objc_allocWithZone(sub_10002C7C8());
  v15 = sub_10002C7B8();

  sub_100007A74(v10);
  (*(v11 + 8))(v18, v17);

  v13 = v1[1];

  return v13(v15);
}

uint64_t sub_100022908(uint64_t a1)
{
  v22 = v1;
  v2 = sub_10002C958();
  v3 = sub_10002CBB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v20 = 0;
    v21[0] = 0;
    *v4 = 0;
    v19 = v4 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, &v19, &v20, v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed at fetching available extentions from mlhostd.", v4, 2u);
  }

  v5 = v1[203];
  v6 = v1[202];
  v7 = v1[201];
  v8 = v1[200];
  v9 = v1[199];
  v10 = v1[198];
  v11 = v1[197];
  v12 = v1[187];
  v17 = v1[186];
  v18 = v1[188];
  v13 = objc_allocWithZone(sub_10002C7C8());
  v16 = sub_10002C7B8();

  sub_100007A74(v11);
  (*(v12 + 8))(v18, v17);

  v14 = v1[1];

  return v14(v16);
}

uint64_t sub_100022FDC()
{
  v12 = v0;
  v1 = v0[185];
  (*(v0[187] + 56))(v1, 1, 1, v0[186]);
  sub_10002B7B4(v1, &qword_100038678, &qword_10002DF40);
  v2 = sub_10002C958();
  v3 = sub_10002CBB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = 0;
    v11[0] = 0;
    *v4 = 0;
    v9 = v4 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, &v9, &v10, v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed at querying mlhostd.", v4, 2u);
  }

  v5 = objc_allocWithZone(sub_10002C7C8());
  v8 = sub_10002C7B8();

  v6 = v0[1];

  return v6(v8);
}

uint64_t sub_100023688()
{
  v63 = v0;
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1560);
  v4 = *(v0 + 1352);
  v5 = *(v0 + 1312);

  v3(v4, v5);
  *(v0 + 440) = v1;
  swift_errorRetain();
  sub_100005338(&qword_1000386B8, &qword_10002DF78);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 432);
    v7 = sub_10002C958();
    v8 = sub_10002CBB8();
    v57 = v6;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v57;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;

      _os_log_impl(&_mh_execute_header, v7, v8, "CKError: %@", v9, 0xCu);
      sub_10002B7B4(v10, &qword_1000386C8, &qword_10002DF80);

      v6 = v57;
    }

    else
    {

      v7 = v6;
    }

    *(v0 + 408) = v6;
    sub_10002B3B8(&qword_1000384F0, type metadata accessor for CKError, &unk_10002D968);
    sub_10002C4D8();
    if (*(v0 + 448) == 7)
    {
      v18 = sub_10002C958();
      v19 = sub_10002CB98();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v62[0] = 0;
        v59[0] = 0;
        *v20 = 0;
        v58 = v20 + 2;
        sub_10000B2CC(_swiftEmptyArrayStorage, &v58, v62, v59);
        _os_log_impl(&_mh_execute_header, v18, v19, "Found CloudKit rate-limit, deferring execution.", v20, 2u);
      }

      v21 = *(v0 + 1624);
      v22 = *(v0 + 1616);
      v23 = *(v0 + 1608);
      v24 = *(v0 + 1600);
      v25 = *(v0 + 1584);
      v26 = *(v0 + 1576);
      v54 = *(v0 + 1504);
      v27 = *(v0 + 1496);
      v48 = *(v0 + 1592);
      v51 = *(v0 + 1488);
      v28 = objc_allocWithZone(sub_10002C7C8());
      v47 = sub_10002C7B8();

      sub_100007A74(v26);
      (*(v27 + 8))(v54, v51);
    }

    else
    {
      v37 = *(v0 + 1624);
      v38 = *(v0 + 1616);
      v39 = *(v0 + 1608);
      v40 = *(v0 + 1600);
      v41 = *(v0 + 1584);
      v42 = *(v0 + 1576);
      v56 = *(v0 + 1504);
      v43 = *(v0 + 1496);
      v50 = *(v0 + 1592);
      v53 = *(v0 + 1488);
      v60 = &type metadata for CloudError;
      v61 = sub_10002B364();
      LOBYTE(v59[0]) = 1;
      v44 = objc_allocWithZone(sub_10002C7C8());
      v47 = sub_10002C7A8();

      sub_100007A74(v42);
      (*(v43 + 8))(v56, v53);
    }
  }

  else
  {

    swift_errorRetain();
    swift_errorRetain();
    v13 = sub_10002C958();
    v14 = sub_10002CBB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;

      _os_log_impl(&_mh_execute_header, v13, v14, "Error: %@", v15, 0xCu);
      sub_10002B7B4(v16, &qword_1000386C8, &qword_10002DF80);
    }

    else
    {
    }

    v29 = *(v0 + 1624);
    v30 = *(v0 + 1616);
    v31 = *(v0 + 1608);
    v32 = *(v0 + 1600);
    v33 = *(v0 + 1584);
    v34 = *(v0 + 1576);
    v55 = *(v0 + 1504);
    v35 = *(v0 + 1496);
    v49 = *(v0 + 1592);
    v52 = *(v0 + 1488);
    v60 = &type metadata for CloudError;
    v61 = sub_10002B364();
    LOBYTE(v59[0]) = 1;
    v36 = objc_allocWithZone(sub_10002C7C8());
    v47 = sub_10002C7A8();

    sub_100007A74(v34);
    (*(v35 + 8))(v55, v52);
  }

  v45 = *(v0 + 8);

  return v45(v47);
}

uint64_t sub_1000242D8()
{
  v59 = v0;
  v1 = *(v0 + 1816);

  *(v0 + 456) = v1;
  swift_errorRetain();
  sub_100005338(&qword_1000386B8, &qword_10002DF78);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 464);
    v3 = sub_10002C958();
    v4 = sub_10002CBB8();
    v53 = v2;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v2;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;

      v2 = v53;
      _os_log_impl(&_mh_execute_header, v3, v4, "CKError: %@", v5, 0xCu);
      sub_10002B7B4(v6, &qword_1000386C8, &qword_10002DF80);
    }

    else
    {

      v3 = v2;
    }

    *(v0 + 376) = v2;
    sub_10002B3B8(&qword_1000384F0, type metadata accessor for CKError, &unk_10002D968);
    sub_10002C4D8();
    if (*(v0 + 472) == 7)
    {
      v14 = sub_10002C958();
      v15 = sub_10002CB98();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v58[0] = 0;
        v55[0] = 0;
        *v16 = 0;
        v54 = v16 + 2;
        sub_10000B2CC(_swiftEmptyArrayStorage, &v54, v58, v55);
        _os_log_impl(&_mh_execute_header, v14, v15, "Found CloudKit rate-limit, deferring execution.", v16, 2u);
      }

      v17 = *(v0 + 1624);
      v18 = *(v0 + 1616);
      v19 = *(v0 + 1608);
      v20 = *(v0 + 1600);
      v21 = *(v0 + 1584);
      v22 = *(v0 + 1576);
      v50 = *(v0 + 1504);
      v23 = *(v0 + 1496);
      v44 = *(v0 + 1592);
      v47 = *(v0 + 1488);
      v24 = objc_allocWithZone(sub_10002C7C8());
      v43 = sub_10002C7B8();

      sub_100007A74(v22);
      (*(v23 + 8))(v50, v47);
    }

    else
    {
      v33 = *(v0 + 1624);
      v34 = *(v0 + 1616);
      v35 = *(v0 + 1608);
      v36 = *(v0 + 1600);
      v37 = *(v0 + 1584);
      v38 = *(v0 + 1576);
      v52 = *(v0 + 1504);
      v39 = *(v0 + 1496);
      v46 = *(v0 + 1592);
      v49 = *(v0 + 1488);
      v56 = &type metadata for CloudError;
      v57 = sub_10002B364();
      LOBYTE(v55[0]) = 1;
      v40 = objc_allocWithZone(sub_10002C7C8());
      v43 = sub_10002C7A8();

      sub_100007A74(v38);
      (*(v39 + 8))(v52, v49);
    }
  }

  else
  {

    swift_errorRetain();
    swift_errorRetain();
    v9 = sub_10002C958();
    v10 = sub_10002CBB8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;

      _os_log_impl(&_mh_execute_header, v9, v10, "Error: %@", v11, 0xCu);
      sub_10002B7B4(v12, &qword_1000386C8, &qword_10002DF80);
    }

    else
    {
    }

    v25 = *(v0 + 1624);
    v26 = *(v0 + 1616);
    v27 = *(v0 + 1608);
    v28 = *(v0 + 1600);
    v29 = *(v0 + 1584);
    v30 = *(v0 + 1576);
    v51 = *(v0 + 1504);
    v31 = *(v0 + 1496);
    v45 = *(v0 + 1592);
    v48 = *(v0 + 1488);
    v56 = &type metadata for CloudError;
    v57 = sub_10002B364();
    LOBYTE(v55[0]) = 1;
    v32 = objc_allocWithZone(sub_10002C7C8());
    v43 = sub_10002C7A8();

    sub_100007A74(v30);
    (*(v31 + 8))(v51, v48);
  }

  v41 = *(v0 + 8);

  return v41(v43);
}

uint64_t sub_100024F2C()
{
  v174 = v0;
  (*(*(v0 + 1136) + 16))(*(v0 + 1144), *(v0 + 1192), *(v0 + 1128));
  v1 = sub_10002C958();
  v2 = sub_10002CBB8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 992);
  v7 = (*(v0 + 1136) + 8);
  if (v3)
  {
    v171 = *(v0 + 992);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v173[0] = v9;
    *v8 = 136315138;
    v10 = sub_10002C808();
    v12 = sub_10000B7BC(v10, v11, v173);

    *(v8 + 4) = v12;
    v13 = *v7;
    (*v7)(v4, v5);
    _os_log_impl(&_mh_execute_header, v1, v2, "Invalid remote reply for taskName: %s", v8, 0xCu);
    sub_1000067EC(v9);

    v14 = v171;
  }

  else
  {
    v13 = *v7;
    (*v7)(*(v0 + 1144), *(v0 + 1128));

    v14 = v6;
  }

  sub_10002B7B4(v14, &qword_100038660, &qword_10002DF28);
  v15 = *(v0 + 1576);
  v16 = *(v15 + 48);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  v19 = *(v0 + 1248);
  v20 = *(v0 + 1192);
  v21 = *(v0 + 1128);
  *(v15 + 48) = v18;
  sub_100005B40(v19, type metadata accessor for TaskRecord);
  v13(v20, v21);
  v22 = *(v0 + 1824);
  v23 = *(v0 + 1864) + 1;
  if (v23 == *(v0 + 1856))
  {
LABEL_6:
    *(v0 + 1896) = v22;

    v24 = sub_10002C958();
    v25 = sub_10002CB98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v173[0] = v27;
      *v26 = 136315138;
      swift_beginAccess();

      v28 = sub_10002CB38();
      v30 = v29;

      v31 = sub_10000B7BC(v28, v30, v173);

      *(v26 + 4) = v31;

      _os_log_impl(&_mh_execute_header, v24, v25, "Computed addedTaskNames: %s", v26, 0xCu);
      sub_1000067EC(v27);
    }

    else
    {
    }

    v117 = sub_10002C958();
    v118 = sub_10002CB98();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v173[0] = v120;
      *v119 = 136315138;
      swift_beginAccess();

      v121 = sub_10002CB38();
      v123 = v122;

      v124 = sub_10000B7BC(v121, v123, v173);

      *(v119 + 4) = v124;

      _os_log_impl(&_mh_execute_header, v117, v118, "Computed removalTaskNames: %s", v119, 0xCu);
      sub_1000067EC(v120);
    }

    else
    {
    }

    *(v0 + 1904) = sub_10002C758();
    v125 = _s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu;
    v126 = swift_task_alloc();
    *(v0 + 1912) = v126;
    *v126 = v0;
    v126[1] = sub_1000170CC;
    v127 = *(v0 + 1448);

    return ((&_s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu + v125))(v127);
  }

  while (1)
  {
    *(v0 + 1864) = v23;
    v32 = *(v0 + 1768);
    if (v23 >= *(v32 + 16))
    {
      __break(1u);
LABEL_47:
      sub_10002B7B4(*(v0 + 984), &qword_100038660, &qword_10002DF28);
      goto LABEL_52;
    }

    v33 = *(v0 + 1248);
    v34 = *(v0 + 1216);
    sub_100005AD8(v32 + ((*(v0 + 2096) + 32) & ~*(v0 + 2096)) + *(*(v0 + 1224) + 72) * v23, v33, type metadata accessor for TaskRecord);
    if (*(v33 + *(v34 + 36)) == 2)
    {
      sub_100005AD8(*(v0 + 1248), *(v0 + 1240), type metadata accessor for TaskRecord);
      v35 = sub_10002C958();
      v36 = sub_10002CB98();
      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 1240);
      if (v37)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v173[0] = v40;
        *v39 = 136315138;
        v42 = *v38;
        v41 = v38[1];

        v43 = sub_10000B7BC(v42, v41, v173);

        *(v39 + 4) = v43;
        sub_100005B40(v38, type metadata accessor for TaskRecord);
        _os_log_impl(&_mh_execute_header, v35, v36, "Task %s is marked as canceled, skipping.", v39, 0xCu);
        sub_1000067EC(v40);
      }

      else
      {

        sub_100005B40(v38, type metadata accessor for TaskRecord);
      }

      v44 = *(v0 + 1248);
      v45 = *v44;
      v46 = v44[1];

      sub_10000BD64((v0 + 184), v45, v46);

      sub_100005B40(v44, type metadata accessor for TaskRecord);
      goto LABEL_15;
    }

    sub_10002B3B8(&qword_1000386D0, &type metadata accessor for TaskDefinition, &protocol conformance descriptor for TaskDefinition);
    sub_10002C468();
    v47 = *(v0 + 1824);
    v48 = *(v0 + 1192);
    v49 = *(v0 + 1136);
    v50 = *(v0 + 1128);
    v51 = *(v0 + 1112);
    v52 = *(v0 + 1016);
    v165 = *(v0 + 1008);
    v53 = *(v0 + 992);
    v54 = *(v0 + 984);
    (*(v49 + 56))(v51, 0, 1, v50);
    (*(v49 + 32))(v48, v51, v50);
    *(swift_task_alloc() + 16) = v48;
    sub_1000087D0(sub_10002B72C, v47, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, v53);

    sub_10002B74C(v53, v54, &qword_100038660, &qword_10002DF28);
    v55 = (*(v52 + 48))(v54, 1, v165);
    if (v55 == 1)
    {
      goto LABEL_47;
    }

    sub_10002B814(*(v0 + 984), *(v0 + 1040), type metadata accessor for TaskParametersRecord);
    sub_10002B880(&qword_100038708, &qword_100038658, &qword_10002DF20, &protocol conformance descriptor for MLHostParameters<A>);
    sub_10002C438();
    v56 = *(v0 + 920);
    v57 = *(v0 + 904);
    v58 = *(v0 + 896);
    v59 = *(v0 + 888);
    v60 = *(v0 + 880);
    v61 = *(v0 + 848);
    v62 = *(v0 + 840);
    (*(v57 + 56))(v59, 0, 1, v58);
    (*(v57 + 32))(v56, v59, v58);
    sub_10002C878();
    v63 = sub_10002C8D8();
    v64 = *(v61 + 8);
    v64(v60, v62);
    if (v63)
    {
      v65._rawValue = v63;
      if (!sub_10002C928(v65))
      {
        (*(*(v0 + 1136) + 16))(*(v0 + 1184), *(v0 + 1192), *(v0 + 1128));
        v83 = sub_10002C958();
        v84 = sub_10002CB98();
        v85 = os_log_type_enabled(v83, v84);
        v86 = *(v0 + 1184);
        v87 = *(v0 + 1136);
        v88 = *(v0 + 1128);
        if (v85)
        {
          v89 = swift_slowAlloc();
          v167 = v88;
          v90 = swift_slowAlloc();
          v173[0] = v90;
          *v89 = 136315138;
          v91 = sub_10002C808();
          v93 = sub_10000B7BC(v91, v92, v173);

          *(v89 + 4) = v93;

          v94 = v167;
          v168 = *(v87 + 8);
          v168(v86, v94);
          _os_log_impl(&_mh_execute_header, v83, v84, "Skipping registration of task %s as it does not satisfy the targeting rules.", v89, 0xCu);
          sub_1000067EC(v90);
        }

        else
        {

          v168 = *(v87 + 8);
          v168(v86, v88);
        }

        v107 = *(v0 + 1248);
        v161 = *(v0 + 1128);
        log = *(v0 + 1192);
        v108 = *(v0 + 1040);
        v109 = *(v0 + 992);
        v110 = *(v0 + 920);
        v111 = *(v0 + 904);
        v112 = *(v0 + 896);
        v113 = *v107;
        v114 = v107[1];

        sub_10000BD64((v0 + 216), v113, v114);
        goto LABEL_37;
      }
    }

    v66 = *(v0 + 872);
    v67 = *(v0 + 840);
    sub_10002C878();
    v68 = sub_10002C8E8();
    v64(v66, v67);
    if (!v68)
    {
      goto LABEL_24;
    }

    v69._rawValue = v68;
    if (sub_10002C938(v69))
    {
      break;
    }

    (*(*(v0 + 1136) + 16))(*(v0 + 1176), *(v0 + 1192), *(v0 + 1128));
    v95 = sub_10002C958();
    v96 = sub_10002CB98();
    v97 = os_log_type_enabled(v95, v96);
    v98 = *(v0 + 1176);
    v99 = *(v0 + 1136);
    v100 = *(v0 + 1128);
    if (v97)
    {
      v101 = swift_slowAlloc();
      v169 = v100;
      v102 = swift_slowAlloc();
      v173[0] = v102;
      *v101 = 136315138;
      v103 = sub_10002C808();
      v105 = sub_10000B7BC(v103, v104, v173);

      *(v101 + 4) = v105;

      v106 = v169;
      v168 = *(v99 + 8);
      v168(v98, v106);
      _os_log_impl(&_mh_execute_header, v95, v96, "Skipping registration of task %s as it does not satisfy the os eligibility rules.", v101, 0xCu);
      sub_1000067EC(v102);
    }

    else
    {

      v168 = *(v99 + 8);
      v168(v98, v100);
    }

    v107 = *(v0 + 1248);
    v161 = *(v0 + 1128);
    log = *(v0 + 1192);
    v108 = *(v0 + 1040);
    v109 = *(v0 + 992);
    v110 = *(v0 + 920);
    v111 = *(v0 + 904);
    v112 = *(v0 + 896);
    v115 = *v107;
    v116 = v107[1];

    sub_10000BD64((v0 + 232), v115, v116);
LABEL_37:

    (*(v111 + 8))(v110, v112);
    sub_10002B7B4(v109, &qword_100038660, &qword_10002DF28);
    sub_100005B40(v108, type metadata accessor for TaskParametersRecord);
    sub_100005B40(v107, type metadata accessor for TaskRecord);
    v168(log, v161);
LABEL_38:
    v22 = *(v0 + 1824);
LABEL_15:
    v23 = *(v0 + 1864) + 1;
    if (v23 == *(v0 + 1856))
    {
      goto LABEL_6;
    }
  }

LABEL_24:
  v70 = *(v0 + 864);
  v71 = *(v0 + 840);
  sub_10002C878();
  v72 = sub_10002C8F8();
  v64(v70, v71);
  if (v72 != 2 && (v72 & 1) != 0)
  {
    v73 = sub_10002C958();
    v74 = sub_10002CB98();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 67109376;
      *(v75 + 4) = 1;
      *(v75 + 8) = 1024;
      *(v75 + 10) = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Skipping registration of task because betaOnly is %{BOOL}d and isSeedDevice is %{BOOL}d", v75, 0xEu);
    }

    v76 = *(v0 + 1248);
    v77 = *(v0 + 1136);
    loga = *(v0 + 1128);
    v166 = *(v0 + 1192);
    v158 = *(v0 + 992);
    v160 = *(v0 + 1040);
    v78 = *(v0 + 920);
    v79 = *(v0 + 904);
    v80 = *(v0 + 896);

    v81 = *v76;
    v82 = v76[1];

    sub_10000BD64((v0 + 248), v81, v82);

    (*(v79 + 8))(v78, v80);
    sub_10002B7B4(v158, &qword_100038660, &qword_10002DF28);
    sub_100005B40(v160, type metadata accessor for TaskParametersRecord);
    sub_100005B40(v76, type metadata accessor for TaskRecord);
    (*(v77 + 8))(v166, loga);
    goto LABEL_38;
  }

  v129 = *(v0 + 920);
  v130 = *(v0 + 912);
  v131 = *(v0 + 904);
  v132 = *(v0 + 896);
  (*(*(v0 + 1136) + 16))(*(v0 + 1168), *(v0 + 1192), *(v0 + 1128));
  (*(v131 + 16))(v130, v129, v132);
  v133 = sub_10002C958();
  v134 = sub_10002CBA8();
  v135 = os_log_type_enabled(v133, v134);
  v136 = *(v0 + 1168);
  v137 = *(v0 + 1136);
  v170 = *(v0 + 920);
  v172 = *(v0 + 912);
  v138 = *(v0 + 904);
  v139 = *(v0 + 896);
  if (v135)
  {
    v157 = *(v0 + 856);
    v159 = *(v0 + 840);
    v156 = *(v0 + 1128);
    logb = v133;
    v140 = swift_slowAlloc();
    v173[0] = swift_slowAlloc();
    *v140 = 136315394;
    v141 = sub_10002C808();
    v143 = sub_10000B7BC(v141, v142, v173);

    *(v140 + 4) = v143;
    (*(v137 + 8))(v136, v156);
    *(v140 + 12) = 2080;
    v144 = v139;
    sub_10002C878();
    sub_10002B3B8(&qword_100038710, &type metadata accessor for MLHostSystemParameters, &protocol conformance descriptor for MLHostSystemParameters);
    v145 = sub_10002CD38();
    v147 = v146;
    v64(v157, v159);
    v148 = sub_10000B7BC(v145, v147, v173);

    *(v140 + 14) = v148;
    v149 = *(v138 + 8);
    v149(v172, v144);
    _os_log_impl(&_mh_execute_header, logb, v134, "Parsed TaskParameters successfully for task %s: %s", v140, 0x16u);
    swift_arrayDestroy();

    v150 = v170;
    v151 = v144;
  }

  else
  {
    (*(v137 + 8))(v136, *(v0 + 1128));
    v149 = *(v138 + 8);
    v149(v172, v139);

    v150 = v170;
    v151 = v139;
  }

  v149(v150, v151);
  sub_100005B40(*(v0 + 1040), type metadata accessor for TaskParametersRecord);
LABEL_52:
  *(v0 + 1872) = sub_10002C758();
  v152 = _s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu;
  v153 = swift_task_alloc();
  *(v0 + 1880) = v153;
  *v153 = v0;
  v153[1] = sub_100015478;
  v154 = *(v0 + 1456);
  v155 = *(v0 + 1192);

  return ((&_s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu + v152))(v155, v154);
}

uint64_t sub_10002660C()
{
  v468 = v0;
  v451 = v0[245];
  v1 = v0[180];
  v2 = v0[178];
  v447 = v0[177];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[98];
  v6 = v0[89];
  v7 = v0[87];
  v8 = *(v3 + 32);
  v8(v1, v0[179], v4);
  v8(v2, v1, v4);
  v9 = v7;
  v10 = v0;
  v451(v6, v5, v9);
  v443 = *(v3 + 16);
  v443(v447, v2, v4);
  v11 = sub_10002C958();
  v12 = sub_10002CBB8();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[248];
  v15 = v0[178];
  v16 = v0[177];
  v17 = v0[176];
  v18 = v10[175];
  v452 = v15;
  v457 = v10[98];
  v19 = v10[89];
  v20 = v10[87];
  v464 = v10;
  if (v13)
  {
    v21 = swift_slowAlloc();
    v435 = swift_slowAlloc();
    v440 = swift_slowAlloc();
    v466[0] = v440;
    *v21 = 136315394;
    v22 = sub_10002C728();
    v427 = v12;
    v24 = sub_10000B7BC(v22, v23, v466);

    *(v21 + 4) = v24;
    v14(v19, v20);
    *(v21 + 12) = 2112;
    sub_10002B3B8(&qword_1000386F8, &type metadata accessor for MLHostClientError, &protocol conformance descriptor for MLHostClientError);
    swift_allocError();
    v443(v25, v16, v18);
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v26;
    *v435 = v26;
    v27 = *(v17 + 8);
    v27(v16, v18);
    _os_log_impl(&_mh_execute_header, v11, v427, "Failed to remove task %s: %@", v21, 0x16u);
    sub_10002B7B4(v435, &qword_1000386C8, &qword_10002DF80);

    sub_1000067EC(v440);

    v10 = v464;

    v27(v452, v18);
    v14(v457, v20);
  }

  else
  {

    v28 = *(v17 + 8);
    v28(v16, v18);
    v14(v19, v20);
    v28(v452, v18);
    v14(v457, v20);
  }

  while (1)
  {
    v34 = v10[250] + 1;
    if (v34 == v10[243])
    {
      break;
    }

    v10[250] = v34;
    v29 = v10[242];
    if (v34 >= *(v29 + 16))
    {
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
    }

    v30 = v10[247];
    (v10[245])(v10[98], v29 + ((*(v10 + 2100) + 32) & ~*(v10 + 2100)) + v10[244] * v34, v10[87]);

    v31 = sub_10002C728();
    v33 = sub_100008480(v31, v32, v30);

    if (v33)
    {
      (v10[245])(v10[97], v10[98], v10[87]);
      v125 = sub_10002C958();
      v126 = sub_10002CB98();
      v127 = os_log_type_enabled(v125, v126);
      v128 = v10[248];
      v129 = v10[97];
      v130 = v10[87];
      if (v127)
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v466[0] = v132;
        *v131 = 136315138;
        v133 = sub_10002C728();
        v135 = sub_10000B7BC(v133, v134, v466);

        *(v131 + 4) = v135;
        v10 = v464;
        v128(v129, v130);
        _os_log_impl(&_mh_execute_header, v125, v126, "Task %s is being removed.", v131, 0xCu);
        sub_1000067EC(v132);
      }

      else
      {

        v128(v129, v130);
      }

      v10[251] = sub_10002C758();
      v183 = sub_10002C728();
      v185 = v184;
      v10[252] = v184;
      v186 = _s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu;
      v187 = swift_task_alloc();
      v10[253] = v187;
      *v187 = v10;
      v187[1] = sub_10001BC2C;
      v188 = v10[179];

      return ((&_s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu + v186))(v183, v185, v188);
    }

    (v10[248])(v10[98], v10[87]);
  }

  v35 = v10[229];
  v36 = swift_allocObject();
  v10[255] = v36;
  swift_beginAccess();
  v37 = *(v35 + 16);
  *(v36 + 16) = v37;
  v405 = (v36 + 16);
  v10[256] = v37;
  v453 = v37;

  v38 = sub_10002C958();
  v39 = sub_10002CB98();
  if (!os_log_type_enabled(v38, v39))
  {

    if (!v10[243])
    {
      goto LABEL_29;
    }

    goto LABEL_12;
  }

  v40 = swift_slowAlloc();
  v467[0] = 0;
  v466[0] = 0;
  *v40 = 0;
  v465[0] = v40 + 2;
  sub_10000B2CC(_swiftEmptyArrayStorage, v465, v467, v466);
  _os_log_impl(&_mh_execute_header, v38, v39, "Querying registered tasks for existing payloads...", v40, 2u);

  if (v10[243])
  {
LABEL_12:
    v41 = 0;
    v42 = v10[88];
    v43 = v10[75];
    v44 = v10[71];
    v444 = v10[242] + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v448 = v42;
    v45 = (v42 + 8);
    v419 = (v43 + 56);
    v417 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v416 = (v44 + 104);
    v414 = (v44 + 8);
    v409 = (v43 + 8);
    v458 = (v42 + 8);
    do
    {
      if (v41 >= *(v10[242] + 16))
      {
        __break(1u);
        goto LABEL_140;
      }

      v47 = *(v448 + 16);
      v47(v10[95], v444 + *(v448 + 72) * v41, v10[87]);

      v48 = sub_10002C728();
      v50 = sub_100008480(v48, v49, v453);

      if (v50)
      {
        sub_10002C708();
        if (v51)
        {
          v52 = v10[84];
          v424 = v10[85];
          v428 = v10[74];
          v53 = v10[72];
          v54 = v10[70];
          (*v419)(v10[73], 1, 1);
          v55 = *v416;
          (*v416)(v53, v417, v54);

          sub_10002C558();
          v464[43] = 0x737465737361;
          v464[44] = 0xE600000000000000;
          v55(v53, v417, v54);
          v10 = v464;
          sub_10002B6D0();
          sub_10002C568();
          (*v414)(v53, v54);
          v56 = *v409;
          (*v409)(v52, v428);
          sub_10002C548(0);
          v56(v424, v428);
          v57 = [objc_opt_self() defaultManager];
          v58 = sub_10002CA18();
          LODWORD(v56) = [v57 fileExistsAtPath:v58];

          if (v56)
          {
            v47(v464[93], v464[95], v464[87]);
            v59 = sub_10002C958();
            v60 = sub_10002CB98();
            v61 = os_log_type_enabled(v59, v60);
            v62 = v464[93];
            v429 = v464[87];
            v45 = v458;
            if (v61)
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              v466[0] = v64;
              *v63 = 136315138;
              v65 = sub_10002C728();
              v67 = sub_10000B7BC(v65, v66, v466);

              *(v63 + 4) = v67;
              v45 = v458;

              v68 = *v458;
              (*v458)(v62, v429);
              _os_log_impl(&_mh_execute_header, v59, v60, "Assets already available. Skipping payload download for task: %s", v63, 0xCu);
              sub_1000067EC(v64);
            }

            else
            {

              v68 = *v458;
              (*v458)(v62, v429);
            }

            v89 = v464[95];
            v90 = v464[87];
            v91 = sub_10002C728();
            sub_10000BEB4(v91, v92);

            v68(v89, v90);
          }

          else
          {
            v45 = v458;
            (*v458)(v464[95], v464[87]);
          }

          goto LABEL_15;
        }

        v47(v10[92], v10[95], v10[87]);
        v69 = sub_10002C958();
        v81 = sub_10002CB98();
        v82 = os_log_type_enabled(v69, v81);
        v72 = v10[95];
        v73 = v10[92];
        v74 = v10[87];
        if (v82)
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v466[0] = v84;
          *v83 = 136315138;
          v85 = sub_10002C728();
          v87 = sub_10000B7BC(v85, v86, v466);

          *(v83 + 4) = v87;
          v45 = v458;
          v88 = *v458;
          (*v458)(v73, v74);
          _os_log_impl(&_mh_execute_header, v69, v81, "Skipping registeredTask %s due to lack of taskFolder.", v83, 0xCu);
          sub_1000067EC(v84);

          v88(v72, v74);
          goto LABEL_14;
        }
      }

      else
      {
        v47(v10[94], v10[95], v10[87]);
        v69 = sub_10002C958();
        v70 = sub_10002CB98();
        v71 = os_log_type_enabled(v69, v70);
        v72 = v10[95];
        v73 = v10[94];
        v74 = v10[87];
        if (v71)
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v466[0] = v76;
          *v75 = 136315138;
          v77 = sub_10002C728();
          v79 = sub_10000B7BC(v77, v78, v466);

          *(v75 + 4) = v79;
          v80 = *v458;
          (*v458)(v73, v74);
          _os_log_impl(&_mh_execute_header, v69, v70, "Skipping payloads for registeredTask %s it was not added in this run.", v75, 0xCu);
          sub_1000067EC(v76);
          v45 = v458;

          v80(v72, v74);
          goto LABEL_14;
        }
      }

      v46 = *v45;
      (*v45)(v73, v74);

      v46(v72, v74);
LABEL_14:
      v10 = v464;
LABEL_15:
      ++v41;
    }

    while (v41 != v10[243]);
  }

LABEL_29:

  v93 = sub_10002C958();
  v94 = sub_10002CB98();
  if (!os_log_type_enabled(v93, v94))
  {

    if ((sub_10002CB18() & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_37:
    v112 = v10[203];

    v113 = sub_10002C958();
    v114 = sub_10002CB98();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v467[0] = 0;
      v466[0] = 0;
      *v115 = 0;
      v465[0] = v115 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v465, v467, v466);
      _os_log_impl(&_mh_execute_header, v113, v114, "Task cancelled before querying for TaskPayloads.", v115, 2u);
    }

    v116 = v464;
    v117 = v464[203];
    v118 = v464[202];
    v119 = v464[201];
    v120 = v464[200];
    v436 = v464[199];
    v121 = v464[198];
    v122 = v464[197];
    v454 = v464[188];
    v123 = v464[187];
    v449 = v464[186];
    v124 = objc_allocWithZone(sub_10002C7C8());
    v397 = sub_10002C7B8();

    sub_100007A74(v122);
    (*(v123 + 8))(v454, v449);
    goto LABEL_136;
  }

  v95 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  v466[0] = v96;
  *v95 = 136315138;
  swift_beginAccess();

  v97 = sub_10002CB38();
  v99 = v98;

  v100 = sub_10000B7BC(v97, v99, v466);

  *(v95 + 4) = v100;

  _os_log_impl(&_mh_execute_header, v93, v94, "Computed payloadsTaskNames: %s", v95, 0xCu);
  sub_1000067EC(v96);

  if (sub_10002CB18())
  {
    goto LABEL_37;
  }

LABEL_31:
  swift_beginAccess();
  v101 = v10;
  v102 = *v405;
  if (*(*v405 + 16))
  {
    swift_retain_n();
    v103 = sub_10002C958();
    v104 = sub_10002CB98();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = v106;
      v467[0] = v106;
      *v105 = 136315138;
      v108 = *(v102 + 16);
      if (v108)
      {
        v445 = v106;
        v459 = v103;
        v109 = sub_10000B738(v108, 0);
        v110 = sub_10000E634(v466, v109 + 4, v108, v102);
        v111 = v466[0];
        swift_bridgeObjectRetain_n();
        sub_10002B724(v111);
        if (v110 != v108)
        {
          goto LABEL_145;
        }

        v103 = v459;
        v107 = v445;
      }

      else
      {

        v109 = _swiftEmptyArrayStorage;
      }

      v466[0] = v109;
      sub_10000BFF0(v466);

      v210 = sub_10002CA98();
      v212 = v211;

      v213 = sub_10000B7BC(v210, v212, v467);

      *(v105 + 4) = v213;

      _os_log_impl(&_mh_execute_header, v103, v104, "Querying TaskPayloads for new tasks: %s", v105, 0xCu);
      sub_1000067EC(v107);
    }

    else
    {
    }

    v214 = v464[212];
    v215 = v464[203];
    v216 = v464[202];
    v217 = v464[201];
    v218 = swift_allocObject();
    *(v218 + 16) = xmmword_10002DE40;
    *(v218 + 56) = &type metadata for String;
    *(v218 + 64) = v214;
    *(v218 + 32) = 0x656D614E6B736174;
    *(v218 + 40) = 0xE800000000000000;

    v220 = sub_100008AE8(v219);

    *(v218 + 96) = sub_100005338(&qword_1000386D8, &qword_10002DFA0);
    *(v218 + 104) = sub_10002B880(&qword_1000386E0, &qword_1000386D8, &qword_10002DFA0, &protocol conformance descriptor for [A]);
    *(v218 + 72) = v220;
    v221 = sub_10002CB88();
    v470._countAndFlagsBits = 0x6C7961506B736154;
    v470._object = 0xEC0000007364616FLL;
    isa = sub_10002CBC8(v470, v221).super.isa;
    v464[257] = isa;
    v223 = swift_task_alloc();
    v464[258] = v223;
    *(v223 + 16) = isa;
    *(v223 + 24) = v217;
    v224 = swift_task_alloc();
    v464[259] = v224;
    *(v224 + 16) = &unk_10002DFB0;
    *(v224 + 24) = v223;
    v225 = swift_task_alloc();
    v464[260] = v225;
    *v225 = v464;
    v225[1] = sub_10001F8D0;
    v226 = v464[219];

    return CKDatabase.configuredWith<A>(configuration:group:body:)(v464 + 37, v215, v216, &unk_10002DFB8, v224, v226);
  }

  v136 = v101[203];

  v137 = v101;
  v460 = _swiftEmptyArrayStorage[2];
  if (v460)
  {
    v138 = 0;
    v139 = &_swiftEmptyArrayStorage[6];
    v437 = v101[65];
    v441 = v101[69];
    v455 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v138 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_141;
      }

      v140 = *(v139 - 2);
      v141 = *(v139 - 1);
      if (*v139)
      {
        sub_10002B400(*(v139 - 1), 1);
        sub_10002B400(v141, 1);
        sub_10002B400(v141, 1);
        v142 = v140;
        v143 = sub_10002C958();
        v144 = sub_10002CBB8();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          *v145 = 138412290;
          swift_errorRetain();
          v147 = _swift_stdlib_bridgeErrorToNSError();
          *(v145 + 4) = v147;
          *v146 = v147;

          sub_10002B40C(v141, 1);
          sub_10002B40C(v141, 1);
          _os_log_impl(&_mh_execute_header, v143, v144, "Error: %@", v145, 0xCu);
          sub_10002B7B4(v146, &qword_1000386C8, &qword_10002DF80);

          sub_10002B40C(v141, 1);
        }

        else
        {

          sub_10002B40C(v141, 1);
          sub_10002B40C(v141, 1);
        }

        v156 = v137[197];
        v157 = *(v156 + 96);
        v158 = __OFADD__(v157, 1);
        v159 = v157 + 1;
        if (v158)
        {
          goto LABEL_142;
        }

        *(v156 + 96) = v159;
      }

      else
      {
        v149 = v137[63];
        v148 = v137[64];
        sub_10002B400(*(v139 - 1), 0);
        sub_10002B400(v141, 0);
        v150 = v140;
        sub_1000049E8(v141, v149);
        if ((*(v437 + 48))(v149, 1, v148) == 1)
        {
          sub_10002B7B4(v137[63], &qword_100038640, &qword_10002DF00);
          v151 = v141;
          v152 = sub_10002C958();
          v153 = sub_10002CBB8();
          if (os_log_type_enabled(v152, v153))
          {
            v154 = swift_slowAlloc();
            v155 = swift_slowAlloc();
            *v154 = 138412290;
            *(v154 + 4) = v151;
            *v155 = v141;

            sub_10002B40C(v141, 0);
            _os_log_impl(&_mh_execute_header, v152, v153, "Skipping record: %@", v154, 0xCu);
            sub_10002B7B4(v155, &qword_1000386C8, &qword_10002DF80);
            v137 = v464;

            sub_10002B40C(v141, 0);
          }

          else
          {

            sub_10002B40C(v141, 0);
            sub_10002B40C(v141, 0);
          }

          goto LABEL_45;
        }

        v160 = v137[208];
        v161 = v137[69];
        v162 = v137[63];

        sub_10002B814(v162, v161, type metadata accessor for TaskPayloadRecord);
        if ((sub_100008480(v441[2], v441[3], v160) & 1) == 0)
        {
          v173 = sub_10002C958();
          v174 = sub_10002CBA8();
          v175 = os_log_type_enabled(v173, v174);
          v176 = v137[69];
          if (v175)
          {
            v177 = swift_slowAlloc();
            v467[0] = 0;
            v466[0] = 0;
            *v177 = 0;
            v465[0] = v177 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v465, v467, v466);
            v178 = v174;
            v179 = v173;
            v180 = "Skipping taskPayloadRecord because associated with an unavailable extensionId.";
            goto LABEL_68;
          }

LABEL_69:

          sub_10002B40C(v141, 0);
          sub_100005B40(v176, type metadata accessor for TaskPayloadRecord);
          goto LABEL_45;
        }

        v163 = v137[256];
        v164 = *v137[69];
        v165 = v441[1];

        LOBYTE(v164) = sub_100008480(v164, v165, v163);

        if ((v164 & 1) == 0)
        {
          v173 = sub_10002C958();
          v181 = sub_10002CBA8();
          v182 = os_log_type_enabled(v173, v181);
          v176 = v137[69];
          if (v182)
          {
            v177 = swift_slowAlloc();
            v467[0] = 0;
            v466[0] = 0;
            *v177 = 0;
            v465[0] = v177 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v465, v467, v466);
            v178 = v181;
            v179 = v173;
            v180 = "Skipping taskPayloadRecord because associated with an unavailable taskName.";
LABEL_68:
            _os_log_impl(&_mh_execute_header, v179, v178, v180, v177, 2u);
          }

          goto LABEL_69;
        }

        sub_100005AD8(v137[69], v137[68], type metadata accessor for TaskPayloadRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v455 = sub_10000B55C(0, v455[2] + 1, 1, v455, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v167 = v455[2];
        v166 = v455[3];
        if (v167 >= v166 >> 1)
        {
          v455 = sub_10000B55C((v166 > 1), v167 + 1, 1, v455, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v168 = v137[197];
        v169 = v137[69];
        v170 = v137[68];
        v455[2] = v167 + 1;
        sub_10002B814(v170, v455 + ((*(v437 + 80) + 32) & ~*(v437 + 80)) + *(v437 + 72) * v167, type metadata accessor for TaskPayloadRecord);
        sub_10002B40C(v141, 0);
        sub_100005B40(v169, type metadata accessor for TaskPayloadRecord);
        v171 = *(v168 + 88);
        v158 = __OFADD__(v171, 1);
        v172 = v171 + 1;
        if (v158)
        {
          goto LABEL_144;
        }

        *(v137[197] + 88) = v172;
      }

LABEL_45:
      ++v138;
      v139 += 24;
      if (v460 == v138)
      {
        goto LABEL_76;
      }
    }
  }

  v455 = _swiftEmptyArrayStorage;
LABEL_76:

  if (sub_10002CB18())
  {

    v190 = sub_10002C958();
    v191 = sub_10002CB98();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      v467[0] = 0;
      v466[0] = 0;
      *v192 = 0;
      v465[0] = v192 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v465, v467, v466);
      _os_log_impl(&_mh_execute_header, v190, v191, "Task cancelled before processing TaskPayloads.", v192, 2u);
    }

    v116 = v137;
    v193 = v137[203];
    v194 = v137[202];
    v195 = v137[201];
    v196 = v137[200];
    v438 = v137[199];
    v197 = v137[198];
    v198 = v116[197];
    v461 = v116[188];
    v199 = v116[187];
    v456 = v116[186];
    v200 = objc_allocWithZone(sub_10002C7C8());
    v397 = sub_10002C7B8();

    goto LABEL_134;
  }

  v201 = v455;
  swift_bridgeObjectRetain_n();
  v202 = sub_10002C958();
  v203 = sub_10002CB98();
  if (os_log_type_enabled(v202, v203))
  {
    v204 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    v467[0] = v205;
    *v204 = 134218242;
    *(v204 + 4) = v455[2];

    *(v204 + 12) = 2080;
    sub_100008968(v455, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v466);
    v206 = sub_10002CA98();
    v208 = v207;

    v209 = sub_10000B7BC(v206, v208, v467);

    *(v204 + 14) = v209;
    v201 = v455;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v202, v203, "Processing TaskPayloadRecords (count: %ld): %s", v204, 0x16u);
    sub_1000067EC(v205);

    if (!v137[243])
    {
      goto LABEL_124;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    if (!v137[243])
    {
LABEL_124:
      v366 = v137[195];
      v367 = v137[170];
      v368 = v137[164];

      sub_10002C5D8();
      sub_10002C598();
      v370 = v369;
      v366(v367, v368);
      v371 = objc_allocWithZone(NSUserDefaults);
      v372 = sub_10002CA18();
      v373 = [v371 initWithSuiteName:v372];

      if (v373)
      {
        v374 = sub_10002C958();
        v375 = sub_10002CB98();
        if (os_log_type_enabled(v374, v375))
        {
          v376 = swift_slowAlloc();
          *v376 = 134217984;
          *(v376 + 4) = v370;

          _os_log_impl(&_mh_execute_header, v374, v375, "Marking lastSuccessTimestamp: %f", v376, 0xCu);
        }

        else
        {
        }

        v388 = sub_10002CB28().super.super.isa;
        v389 = sub_10002CA18();
        [v373 setValue:v388 forKey:v389];

        v137 = v464;
      }

      else
      {
      }

      v116 = v137;
      v390 = v137[203];
      v391 = v137[202];
      v392 = v137[201];
      v393 = v137[200];
      v438 = v137[199];
      v394 = v137[198];
      v198 = v116[197];
      v461 = v116[188];
      v199 = v116[187];
      v456 = v116[186];
      v395 = objc_allocWithZone(sub_10002C7C8());
      v397 = sub_10002C7B8();

LABEL_134:

      v387 = v198;
      goto LABEL_135;
    }
  }

  v227 = 0;
  v228 = v137[88];
  v229 = v228 + 16;
  v442 = (v137[65] + 48);
  v230 = v137[75];
  v231 = (v230 + 56);
  v232 = v137[71];
  v403 = (v232 + 104);
  v402 = (v232 + 8);
  v433 = (v230 + 8);
  v415 = (v230 + 16);
  v446 = v228;
  v398 = v137[66];
  v418 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v425 = v228 + 16;
  v439 = (v230 + 56);
  v450 = (v228 + 8);
  while (1)
  {
    v235 = v137[242];
    if (*(v235 + 16) <= v227)
    {
      goto LABEL_143;
    }

    v236 = *(v446 + 16);
    v236(v137[91], v235 + ((*(v446 + 80) + 32) & ~*(v446 + 80)) + *(v446 + 72) * v227, v137[87]);
    if (sub_10002CB18())
    {
      break;
    }

    v237 = v137[91];
    v238 = v137[64];
    v239 = v137[62];
    *(swift_task_alloc() + 16) = v237;
    sub_1000087D0(sub_10002B6B0, v201, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v239);

    if ((*v442)(v239, 1, v238) == 1)
    {
      v240 = v137[91];
      v241 = v137[90];
      v242 = v137[87];
      sub_10002B7B4(v137[62], &qword_100038640, &qword_10002DF00);
      v243 = v242;
      v244 = v229;
      v236(v241, v240, v243);
      v245 = sub_10002C958();
      v246 = sub_10002CB98();
      v247 = os_log_type_enabled(v245, v246);
      v248 = v137[90];
      v249 = v137[87];
      if (v247)
      {
        v250 = swift_slowAlloc();
        v462 = v227;
        v251 = swift_slowAlloc();
        v466[0] = v251;
        *v250 = 136315138;
        v252 = sub_10002C728();
        v254 = sub_10000B7BC(v252, v253, v466);
        v231 = v439;

        *(v250 + 4) = v254;
        v137 = v464;
        v233 = *v450;
        (*v450)(v248, v249);
        _os_log_impl(&_mh_execute_header, v245, v246, "Skipping task. No TaskPayloadRecord found for: %s", v250, 0xCu);
        sub_1000067EC(v251);
        v227 = v462;
        v229 = v425;

        v201 = v455;
      }

      else
      {

        v233 = *v450;
        (*v450)(v248, v249);
        v201 = v455;
        v229 = v244;
      }
    }

    else
    {
      sub_10002B814(v137[62], v137[67], type metadata accessor for TaskPayloadRecord);
      sub_10002C708();
      if (v255)
      {
        v463 = v227;
        v256 = v137[85];
        v430 = v137[74];
        v257 = v137[72];
        v258 = v231;
        v259 = v137[70];
        v406 = *v258;
        (*v258)(v137[73], 1, 1);
        v260 = *v403;
        (*v403)(v257, v418, v259);

        sub_10002C558();
        v137[25] = 0x737465737361;
        v137[26] = 0xE600000000000000;
        v410 = v260;
        v260(v257, v418, v259);
        sub_10002B6D0();
        sub_10002C568();
        v261 = *v402;
        (*v402)(v257, v259);
        v262 = v430;
        v431 = *v433;
        (*v433)(v256, v262);
        v263 = objc_opt_self();
        v264 = [v263 defaultManager];
        sub_10002C548(0);
        v265 = sub_10002CA18();

        v137[48] = 0;
        v266 = [v264 createDirectoryAtPath:v265 withIntermediateDirectories:1 attributes:0 error:v137 + 48];

        v267 = v137[48];
        v268 = v137[74];
        if (v266)
        {
          v399 = v263;
          v400 = v261;
          v269 = v137[82];
          v420 = v137[81];
          v270 = v137[72];
          v271 = v137[70];
          v406(v137[73], 1, 1, v268);
          v410(v270, v418, v271);
          v272 = v267;

          v137 = v464;
          sub_10002C558();
          v273 = *v415;
          (*v415)(v420, v269, v268);
          v274 = sub_10002C958();
          v275 = sub_10002CB98();
          v276 = os_log_type_enabled(v274, v275);
          v277 = v464[81];
          v278 = v464[74];
          if (v276)
          {
            v279 = swift_slowAlloc();
            v280 = swift_slowAlloc();
            v466[0] = v280;
            *v279 = 136315138;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v281 = sub_10002CD38();
            v283 = sub_10000B7BC(v281, v282, v466);

            *(v279 + 4) = v283;
            v137 = v464;
            v431(v277, v278);
            _os_log_impl(&_mh_execute_header, v274, v275, "Processing: %s", v279, 0xCu);
            sub_1000067EC(v280);
          }

          else
          {

            v431(v277, v278);
          }

          if ((sub_100008DB0(v137[82], v137[83]) & 1) == 0)
          {
            v328 = sub_10002C958();
            v329 = sub_10002CB98();
            if (os_log_type_enabled(v328, v329))
            {
              v330 = swift_slowAlloc();
              v467[0] = 0;
              v466[0] = 0;
              *v330 = 0;
              v465[0] = v330 + 2;
              sub_10000B2CC(_swiftEmptyArrayStorage, v465, v467, v466);
              _os_log_impl(&_mh_execute_header, v328, v329, "Failed at processing archive, copying raw archive into taskFolder.", v330, 2u);
            }

            v331 = v137[72];
            v332 = v137[70];
            v137[45] = 0x612E737465737361;
            v137[46] = 0xEA00000000007261;
            v410(v331, v418, v332);
            sub_10002C568();
            v400(v331, v332);
            v333 = [v399 defaultManager];
            sub_10002C528(v334);
            v336 = v335;
            sub_10002C528(v337);
            v339 = v338;
            v137[50] = 0;
            v340 = [v333 copyItemAtURL:v336 toURL:v338 error:v137 + 50];

            v341 = v137[50];
            v342 = v137[74];
            if (v340)
            {
              v343 = v137[83];
              v344 = v137[82];
              v345 = v137[79];
              v346 = v137[67];
              v347 = v341;

              v431(v345, v342);
              v431(v344, v342);
              v431(v343, v342);
              sub_100005B40(v346, type metadata accessor for TaskPayloadRecord);
              v201 = v455;
              v233 = *v450;
              v227 = v463;
              v229 = v425;
              v231 = v439;
            }

            else
            {
              v348 = v137[79];
              v349 = v137[76];
              v350 = v341;
              sub_10002C508();

              swift_willThrow();
              v273(v349, v348, v342);
              swift_errorRetain();
              swift_errorRetain();
              v351 = sub_10002C958();
              v352 = sub_10002CBB8();
              v353 = os_log_type_enabled(v351, v352);
              v354 = v137[83];
              v355 = v137[82];
              v423 = v137[79];
              v356 = v137[76];
              v357 = v137[74];
              v358 = v137[67];
              if (v353)
              {
                v413 = v137[82];
                v359 = swift_slowAlloc();
                v408 = v354;
                v360 = swift_slowAlloc();
                v401 = swift_slowAlloc();
                v466[0] = v401;
                *v359 = 136315394;
                sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                v361 = sub_10002CD38();
                v404 = v358;
                v363 = sub_10000B7BC(v361, v362, v466);
                v137 = v464;

                *(v359 + 4) = v363;
                v431(v356, v357);
                *(v359 + 12) = 2112;
                swift_errorRetain();
                v364 = _swift_stdlib_bridgeErrorToNSError();
                *(v359 + 14) = v364;
                *v360 = v364;

                _os_log_impl(&_mh_execute_header, v351, v352, "Failed at asset to: %s : %@", v359, 0x16u);
                sub_10002B7B4(v360, &qword_1000386C8, &qword_10002DF80);

                sub_1000067EC(v401);

                v431(v423, v357);
                v431(v413, v357);
                v431(v408, v357);
                v365 = v404;
              }

              else
              {

                v431(v356, v357);

                v431(v423, v357);
                v431(v355, v357);
                v431(v354, v357);
                v365 = v358;
              }

              sub_100005B40(v365, type metadata accessor for TaskPayloadRecord);
              v227 = v463;
              v231 = v439;
              v201 = v455;
              v233 = *v450;
              v229 = v425;
            }

            goto LABEL_91;
          }

          v273(v137[80], v137[83], v137[74]);
          v313 = sub_10002C958();
          v314 = sub_10002CB98();
          v315 = os_log_type_enabled(v313, v314);
          v316 = v137[83];
          v317 = v137[82];
          v318 = v137[80];
          v319 = v137[74];
          v320 = v137[67];
          if (v315)
          {
            v321 = swift_slowAlloc();
            v422 = v320;
            v322 = swift_slowAlloc();
            v466[0] = v322;
            *v321 = 136315138;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v323 = sub_10002CD38();
            v412 = v316;
            v325 = sub_10000B7BC(v323, v324, v466);
            v137 = v464;

            *(v321 + 4) = v325;

            v431(v318, v319);
            _os_log_impl(&_mh_execute_header, v313, v314, "TaskPayload extracted at: %s", v321, 0xCu);
            sub_1000067EC(v322);

            v431(v317, v319);
            v431(v412, v319);
            v326 = v422;
          }

          else
          {

            v431(v318, v319);

            v431(v317, v319);
            v431(v316, v319);
            v326 = v320;
          }

          sub_100005B40(v326, type metadata accessor for TaskPayloadRecord);
          v231 = v439;
          v327 = v450;
          v201 = v455;
        }

        else
        {
          v296 = v137[83];
          v297 = v137[77];
          v298 = v267;
          sub_10002C508();

          swift_willThrow();
          (*v415)(v297, v296, v268);
          swift_errorRetain();
          swift_errorRetain();
          v299 = sub_10002C958();
          v300 = sub_10002CBB8();
          v301 = os_log_type_enabled(v299, v300);
          v302 = v137[83];
          v303 = v137[77];
          v304 = v137[74];
          v305 = v137[67];
          if (v301)
          {
            v306 = swift_slowAlloc();
            v421 = v302;
            v307 = swift_slowAlloc();
            v407 = swift_slowAlloc();
            v466[0] = v407;
            *v306 = 136315394;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v308 = sub_10002CD38();
            v411 = v305;
            v310 = sub_10000B7BC(v308, v309, v466);
            v137 = v464;

            *(v306 + 4) = v310;
            v431(v303, v304);
            *(v306 + 12) = 2112;
            swift_errorRetain();
            v311 = _swift_stdlib_bridgeErrorToNSError();
            *(v306 + 14) = v311;
            *v307 = v311;

            _os_log_impl(&_mh_execute_header, v299, v300, "Failed at creating taskAssetsURL: %s : %@", v306, 0x16u);
            sub_10002B7B4(v307, &qword_1000386C8, &qword_10002DF80);

            sub_1000067EC(v407);

            v431(v421, v304);
            v312 = v411;
          }

          else
          {

            v431(v303, v304);

            v431(v302, v304);
            v312 = v305;
          }

          sub_100005B40(v312, type metadata accessor for TaskPayloadRecord);
          v201 = v455;
          v231 = v439;
          v327 = v450;
        }

        v233 = *v327;
        v227 = v463;
        v229 = v425;
      }

      else
      {
        sub_100005AD8(v137[67], v137[66], type metadata accessor for TaskPayloadRecord);
        v284 = sub_10002C958();
        v285 = sub_10002CBB8();
        v286 = os_log_type_enabled(v284, v285);
        v287 = v137[67];
        v288 = v137[66];
        if (v286)
        {
          v289 = swift_slowAlloc();
          v290 = v227;
          v291 = swift_slowAlloc();
          v466[0] = v291;
          *v289 = 136315138;
          v292 = *v288;
          v293 = *(v398 + 8);

          v294 = sub_10000B7BC(v292, v293, v466);
          v137 = v464;

          *(v289 + 4) = v294;
          sub_100005B40(v288, type metadata accessor for TaskPayloadRecord);
          _os_log_impl(&_mh_execute_header, v284, v285, "Task %s doesn't have a valid taskFolder. Skipping task.", v289, 0xCu);
          sub_1000067EC(v291);
          v227 = v290;

          v295 = v287;
          v231 = v439;
        }

        else
        {
          sub_100005B40(v137[66], type metadata accessor for TaskPayloadRecord);

          v295 = v287;
        }

        sub_100005B40(v295, type metadata accessor for TaskPayloadRecord);
        v201 = v455;
        v233 = *v450;
      }
    }

LABEL_91:
    ++v227;
    v234 = v137[243];
    v233(v137[91], v137[87]);
    if (v227 == v234)
    {
      goto LABEL_124;
    }
  }

  v377 = sub_10002C958();
  v378 = sub_10002CB98();
  if (os_log_type_enabled(v377, v378))
  {
    v379 = swift_slowAlloc();
    v467[0] = 0;
    v466[0] = 0;
    *v379 = 0;
    v465[0] = v379 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v465, v467, v466);
    _os_log_impl(&_mh_execute_header, v377, v378, "Task cancelled while processing TaskPayloads.", v379, 2u);
  }

  v380 = v137[203];
  v381 = v137[202];
  v116 = v137;
  v382 = v137[201];
  v383 = v116[200];
  v384 = v116[198];
  v385 = v116[197];
  v461 = v116[188];
  v199 = v116[187];
  v456 = v116[186];
  v434 = v116[91];
  v426 = v116[199];
  v432 = v116[87];
  v386 = objc_allocWithZone(sub_10002C7C8());
  v397 = sub_10002C7B8();

  (*v450)(v434, v432);

  v387 = v385;
LABEL_135:
  sub_100007A74(v387);
  (*(v199 + 8))(v461, v456);
LABEL_136:

  v396 = v116[1];

  return v396(v397);
}

uint64_t sub_10002A2D0()
{
  v55 = v0;
  v1 = *(v0 + 2088);

  *(v0 + 424) = v1;
  swift_errorRetain();
  sub_100005338(&qword_1000386B8, &qword_10002DF78);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 480);
    v3 = sub_10002C958();
    v4 = sub_10002CBB8();
    v51 = v2;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v2;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;

      v2 = v51;
      _os_log_impl(&_mh_execute_header, v3, v4, "CKError: %@", v5, 0xCu);
      sub_10002B7B4(v6, &qword_1000386C8, &qword_10002DF80);
    }

    else
    {

      v3 = v2;
    }

    *(v0 + 416) = v2;
    sub_10002B3B8(&qword_1000384F0, type metadata accessor for CKError, &unk_10002D968);
    sub_10002C4D8();
    if (*(v0 + 392) == 7)
    {
      v14 = sub_10002C958();
      v15 = sub_10002CB98();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v54[0] = 0;
        v53[0] = 0;
        *v16 = 0;
        v52 = v16 + 2;
        sub_10000B2CC(_swiftEmptyArrayStorage, &v52, v54, v53);
        _os_log_impl(&_mh_execute_header, v14, v15, "Found CloudKit rate-limit, deferring execution.", v16, 2u);
      }

      v17 = *(v0 + 1624);
      v18 = *(v0 + 1616);
      v19 = *(v0 + 1608);
      v20 = *(v0 + 1600);
      v44 = *(v0 + 1592);
      v21 = *(v0 + 1584);
      v22 = *(v0 + 1576);
      v48 = *(v0 + 1504);
      v23 = *(v0 + 1496);
      v47 = *(v0 + 1488);
      v24 = objc_allocWithZone(sub_10002C7C8());
      v43 = sub_10002C7B8();

      v25 = v22;
    }

    else
    {
      v34 = *(v0 + 1624);
      v35 = *(v0 + 1616);
      v36 = *(v0 + 1608);
      v37 = *(v0 + 1600);
      v46 = *(v0 + 1592);
      v38 = *(v0 + 1584);
      v39 = *(v0 + 1576);
      v48 = *(v0 + 1504);
      v23 = *(v0 + 1496);
      v47 = *(v0 + 1488);
      v53[3] = &type metadata for CloudError;
      v53[4] = sub_10002B364();
      LOBYTE(v53[0]) = 1;
      v40 = objc_allocWithZone(sub_10002C7C8());
      v43 = sub_10002C7A8();

      v25 = v39;
    }

    sub_100007A74(v25);
    (*(v23 + 8))(v48, v47);
  }

  else
  {

    swift_errorRetain();
    swift_errorRetain();
    v9 = sub_10002C958();
    v10 = sub_10002CBB8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;

      _os_log_impl(&_mh_execute_header, v9, v10, "Error: %@", v11, 0xCu);
      sub_10002B7B4(v12, &qword_1000386C8, &qword_10002DF80);
    }

    else
    {
    }

    v26 = *(v0 + 1624);
    v27 = *(v0 + 1616);
    v28 = *(v0 + 1608);
    v29 = *(v0 + 1600);
    v45 = *(v0 + 1592);
    v30 = *(v0 + 1584);
    v31 = *(v0 + 1576);
    v50 = *(v0 + 1504);
    v32 = *(v0 + 1496);
    v49 = *(v0 + 1488);
    v33 = objc_allocWithZone(sub_10002C7C8());
    v43 = sub_10002C7B8();

    sub_100007A74(v31);
    (*(v32 + 8))(v50, v49);
  }

  v41 = *(v0 + 8);

  return v41(v43);
}

uint64_t sub_10002AFF4()
{

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_10002B02C()
{
  result = qword_100038690;
  if (!qword_100038690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038690);
  }

  return result;
}

unint64_t sub_10002B080()
{
  result = qword_1000386A0;
  if (!qword_1000386A0)
  {
    sub_10002B9AC(255, &qword_100038698, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000386A0);
  }

  return result;
}

uint64_t sub_10002B0E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B190;

  return sub_10000807C(a1, v5, v4);
}

uint64_t sub_10002B190(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_10002B29C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002BDC0;

  return sub_10000826C(a1, a2, v6);
}

unint64_t sub_10002B364()
{
  result = qword_1000386C0;
  if (!qword_1000386C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000386C0);
  }

  return result;
}

uint64_t sub_10002B3B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10002B400(void *a1, char a2)
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

void sub_10002B40C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10002B418(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002BDC4;

  return sub_100008618(a1, v5, v4);
}

uint64_t sub_10002B4C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000A6C4;

  return sub_10000826C(a1, a2, v6);
}

uint64_t sub_10002B588()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B5C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002B608(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002BDC4;

  return sub_100008618(a1, v5, v4);
}

unint64_t sub_10002B6D0()
{
  result = qword_1000386E8;
  if (!qword_1000386E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000386E8);
  }

  return result;
}

uint64_t sub_10002B74C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005338(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002B7B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005338(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002B814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B880(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002B5C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002B8C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002B92C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B9AC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t *sub_10002B9F4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 sub_10002BA58(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10002BA84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002BACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002BC94()
{
  result = qword_1000387B8;
  if (!qword_1000387B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000387B8);
  }

  return result;
}

unint64_t sub_10002BCEC()
{
  result = qword_1000387C0;
  if (!qword_1000387C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000387C0);
  }

  return result;
}

unint64_t sub_10002BD44()
{
  result = qword_1000387C8;
  if (!qword_1000387C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000387C8);
  }

  return result;
}

uint64_t Array<A>.mean()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1);
  v3 = sub_10002CAD8();
  v4 = v3 - 1;
  if (v3 < 1)
  {
    return 0;
  }

  v5 = 0.0;
  v6 = 1;
  while (1)
  {
    sub_10002CB08();
    sub_10002C3A4();
    sub_10002C9B8();
    v5 = v5 + (v9 - v5) / v6;
    if (!v4)
    {
      break;
    }

    --v4;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      return *&v5;
    }
  }

  return *&v5;
}

uint64_t Array<A>.median()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  __chkstk_darwin(v9);
  v12 = sub_10002CAD8();
  if (v12 < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v16 = *&a1;
    sub_10002CAF8();
    swift_getWitnessTable();
    sub_10002CA58();
    sub_10002CB08();
    if (v12)
    {

      sub_10002C3A4();
      sub_10002C9B8();
      *&result = v16;
    }

    else
    {
      sub_10002CB08();

      sub_10002CC78();
      v13 = *(v5 + 8);
      v13(v8, a2);
      v13(v11, a2);
      sub_10002C3A4();
      sub_10002C9B8();
      *&result = v16 * 0.5;
    }
  }

  return result;
}

uint64_t Array<A>.stddev()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v8 = sub_10002CAD8();
  if (v8 < 2)
  {
    return 0;
  }

  v16 = v8;
  result = Array<A>.mean()(a1, a2, a3);
  if ((v10 & 1) == 0)
  {
    v11 = *&result;
    if (sub_10002CAE8())
    {
      v12 = 0;
      v13 = 0.0;
      while (1)
      {
        v14 = sub_10002CAC8();
        sub_10002CAA8();
        if (v14)
        {
          (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, a2);
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          result = sub_10002CC58();
          if (v7 != 8)
          {
            __break(1u);
            return result;
          }

          v17 = *&result;
          (*(v6 + 16))(&v16 - 2, &v17, a2);
          swift_unknownObjectRelease();
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        sub_10002C3A4();
        sub_10002C9B8();
        v13 = v13 + (v17 - v11) * (v17 - v11);
        ++v12;
        if (v15 == sub_10002CAE8())
        {
          return sqrt(v13 / v16);
        }
      }
    }

    v13 = 0.0;
    return sqrt(v13 / v16);
  }

  return result;
}

unint64_t sub_10002C3A4()
{
  result = qword_1000387D0;
  if (!qword_1000387D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000387D0);
  }

  return result;
}