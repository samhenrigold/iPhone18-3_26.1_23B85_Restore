uint64_t sub_61368()
{

  return _swift_task_switch(sub_6149C, 0, 0);
}

uint64_t sub_6149C()
{
  v1 = *(v0 + 872);

  sub_729D4(v2, sub_72CFC);
  v3 = *(v0 + 912);
  sub_BD4A4(v3, *(v0 + 1240));
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_108:
    if (sub_107270())
    {
      v5 = sub_107270();
      goto LABEL_3;
    }

LABEL_110:

    v201 = sub_106D10();
    v202 = sub_106FC0();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      *v203 = 0;
      _os_log_impl(&dword_0, v201, v202, "No alarms updated.", v203, 2u);
    }

    v204 = *(v0 + 1216);
    v73 = v0;
    v205 = *(v0 + 1208);
    v206 = v73[150];

    (*(v205 + 104))(v204, enum case for SiriTimeEventSender.ReasonDescription.noAlarmsUpdated(_:), v206);
    v76 = swift_task_alloc();
    v73[204] = v76;
    *v76 = v73;
    v77 = sub_64EE8;
    goto LABEL_113;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_110;
  }

LABEL_3:
  v211 = v0;
  if (v5 != 1)
  {
    v213 = v1;
    v21 = sub_106D10();
    v22 = sub_106FC0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Multiple alarms updated.", v23, 2u);
    }

    v210 = *(v0 + 1560);
    v24 = *(v0 + 2104);
    v25 = *(v0 + 1544);
    v26 = v21;
    v27 = *(v0 + 1536);
    v28 = *(v0 + 1288);
    v29 = *(v0 + 1280);
    v30 = *(v0 + 1248);
    v31 = *(v0 + 944);

    v25(v28, v31 + v27, v30);
    v210(v29, v24, v30);
    sub_106EB0();
    sub_106EB0();
    v32 = *(v0 + 1584);
    v33 = *(v0 + 1288);
    v34 = *(v0 + 1280);
    v35 = *(v0 + 1248);
    if (*(v0 + 664) == *(v0 + 840) && *(v0 + 672) == *(v0 + 848))
    {
      v32(*(v0 + 1280), *(v0 + 1248));
      v32(v33, v35);
    }

    else
    {
      v36 = sub_107370();
      v32(v34, v35);
      v32(v33, v35);

      if ((v36 & 1) == 0)
      {
        v103 = *(v0 + 1560);
        v104 = *(v0 + 1264);
        v105 = *(v0 + 1248);
        (*(v0 + 1544))(*(v0 + 1272), *(v0 + 944) + *(v0 + 1536), v105);
        v103(v104, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v105);
        sub_106EB0();
        sub_106EB0();
        v106 = *(v0 + 1584);
        v107 = *(v0 + 1272);
        v108 = *(v0 + 1264);
        v109 = *(v0 + 1248);
        if (*(v0 + 696) == *(v0 + 712) && *(v0 + 704) == *(v0 + 720))
        {
          v106(*(v0 + 1264), *(v0 + 1248));
          v106(v107, v109);
        }

        else
        {
          v123 = sub_107370();
          v106(v108, v109);
          v106(v107, v109);

          if ((v123 & 1) == 0)
          {

LABEL_98:
            v184 = *(v0 + 968);
            v185 = *(v0 + 960);
            v186 = *(v0 + 952);
            v187 = *(v0 + 944);
            v188 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
            swift_beginAccess();
            sub_14994(v187 + v188, v186, &qword_137FD0, &unk_1087C0);
            v189 = (*(v184 + 48))(v186, 1, v185);
            v190 = *(v0 + 1528);
            v191 = *(v0 + 1520);
            v192 = *(v0 + 1240);
            v193 = *(v0 + 1232);
            v194 = *(v0 + 1224);
            if (v189 == 1)
            {
              v195 = *(v0 + 944);
              sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
              sub_104F00();
            }

            else
            {
              v196 = *(v0 + 976);
              v197 = *(v0 + 968);
              v215 = *(v0 + 1240);
              v198 = *(v0 + 960);
              v195 = *(v0 + 944);
              (*(v197 + 32))(v196, *(v0 + 952), v198);
              sub_104F10();

              v199 = v198;
              v192 = v215;
              (*(v197 + 8))(v196, v199);
            }

            (*(v193 + 8))(v192, v194);
            sub_73574(v195);

            v200 = *(v0 + 8);

            return v200();
          }
        }

        v124 = sub_106D10();
        v125 = sub_106FC0();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_0, v124, v125, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v126, 2u);
        }

        v127 = *(v0 + 1440);
        v128 = *(v0 + 1080);
        v129 = *(v0 + 1072);
        v130 = v211[133];
        v131 = v211[132];
        v132 = v211[131];
        v133 = v211[130];

        (*(v129 + 104))(v128, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v130);
        v134 = *(v132 + 16);
        v4 = v132 + 16;
        v134(v131, v127, v133);
        mach_absolute_time();
        sub_106330();
        v135 = v1;
        if (v1 >> 62)
        {
          v3 = sub_107270();
        }

        else
        {
          v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
        }

        v136 = 0;
        v0 = v211;
        v1 &= 0xC000000000000001;
        v137 = (v211[128] + 8);
        while (v3 != v136)
        {
          if (v1)
          {
            v138 = sub_1071C0();
          }

          else
          {
            if (v136 >= *(&dword_10 + (v213 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_107;
            }

            v138 = *(v135 + 8 * v136 + 32);
          }

          v139 = v138;
          v4 = v136 + 1;
          if (__OFADD__(v136, 1))
          {
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v140 = *(v0 + 1032);
          v141 = *(v0 + 1016);
          sub_106210();
          v142 = sub_75DD4(0, v140, 0);

          v143 = v140;
          v135 = v213;
          (*v137)(v143, v141);
          ++v136;
          if (v142)
          {
            sub_106EC0();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_106F10();
              v0 = v211;
            }

            sub_106F20();
            v136 = v4;
          }
        }

        v144 = *(v0 + 992);
        v145 = v0;
        v146 = *(v0 + 984);

        v147 = sub_106160();
        v148 = *(*(v147 - 8) + 56);
        v148(v144, 1, 1, v147);
        v149 = v146[16];
        v148(v144 + v149, 1, 1, v147);
        v150 = v146[5];
        *(v144 + v150) = 0;
        *(v144 + v146[6]) = 0;
        *(v144 + v146[7]) = 0;
        *(v144 + v146[8]) = 1;
        *(v144 + v146[9]) = 0;
        *(v144 + v146[10]) = 0;
        *(v144 + v146[11]) = 0;
        *(v144 + v146[12]) = 0;
        *(v144 + v146[13]) = 0;
        *(v144 + v146[14]) = _swiftEmptyArrayStorage;
        v151 = v146[15];
        *(v144 + v151) = 0;
        v152 = v146[17];
        *(v144 + v152) = 0;
        sub_16F70(v144 + v149, &qword_137598, &unk_107EB0);
        v148(v144 + v149, 1, 1, v147);
        *(v144 + v152) = 0;
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v153 = v145[191];

        *(v144 + v150) = sub_1060F0();
        if (v153)
        {
          v154 = v145[129];
          v155 = v145[127];
          sub_106210();
          v156 = sub_75DD4(0, v154, 0);
          (*v137)(v154, v155);
        }

        else
        {
          v156 = 0;
        }

        *(v144 + v151) = v156;
        v175 = sub_20734();
        v145[254] = v175;
        v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v176 = swift_task_alloc();
        v145[255] = v176;
        *v176 = v145;
        v176[1] = sub_69D44;
        v98 = 0xD000000000000011;
        v101 = 0x800000000010CFB0;
        v102 = v175;
        goto LABEL_94;
      }
    }

    v37 = sub_106D10();
    v38 = sub_106FC0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v39, 2u);
    }

    v40 = *(v0 + 1440);
    v41 = *(v0 + 1080);
    v42 = *(v0 + 1072);
    v43 = v211[133];
    v44 = v211[132];
    v45 = v211[131];
    v46 = v211[130];

    (*(v42 + 104))(v41, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v43);
    v47 = *(v45 + 16);
    v4 = v45 + 16;
    v47(v44, v40, v46);
    mach_absolute_time();
    sub_106330();
    v48 = v1;
    v0 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      v3 = sub_107270();
    }

    else
    {
      v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    v49 = 0;
    v1 &= 0xC000000000000001;
    v50 = (v211[128] + 8);
    while (v3 != v49)
    {
      if (v1)
      {
        v51 = sub_1071C0();
      }

      else
      {
        if (v49 >= *(&dword_10 + (v213 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_105;
        }

        v51 = *(v48 + 8 * v49 + 32);
      }

      v52 = v51;
      v4 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v53 = v211[129];
      v54 = v211[127];
      sub_106210();
      v55 = sub_75DD4(0, v53, 0);

      v56 = v53;
      v48 = v213;
      (*v50)(v56, v54);
      ++v49;
      if (v55)
      {
        sub_106EC0();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_106F10();
        }

        sub_106F20();
        v49 = v4;
      }
    }

    v57 = v211[126];
    v58 = v211[125];

    v59 = sub_106160();
    v60 = *(*(v59 - 8) + 56);
    v60(v57, 1, 1, v59);
    v61 = v58[16];
    v60(v57 + v61, 1, 1, v59);
    v62 = v58[5];
    *(v57 + v62) = 0;
    *(v57 + v58[6]) = 0;
    *(v57 + v58[7]) = 0;
    *(v57 + v58[8]) = 1;
    *(v57 + v58[9]) = 0;
    *(v57 + v58[10]) = 0;
    *(v57 + v58[11]) = 0;
    *(v57 + v58[12]) = 0;
    *(v57 + v58[13]) = 0;
    *(v57 + v58[14]) = _swiftEmptyArrayStorage;
    v63 = v58[15];
    *(v57 + v63) = 0;
    v64 = v58[17];
    *(v57 + v64) = 0;
    sub_16F70(v57 + v61, &qword_137598, &unk_107EB0);
    v60(v57 + v61, 1, 1, v59);
    *(v57 + v64) = 0;
    sub_106100();
    if (qword_136E48 != -1)
    {
      swift_once();
    }

    v65 = v211[191];

    *(v57 + v62) = sub_1060F0();
    if (v65)
    {
      v66 = v211[129];
      v67 = v211[127];
      sub_106210();
      v68 = sub_75DD4(0, v66, 0);
      (*v50)(v66, v67);
    }

    else
    {
      v68 = 0;
    }

    *(v57 + v63) = v68;
    v99 = sub_20764();
    v211[246] = v99;
    v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v100 = swift_task_alloc();
    v211[247] = v100;
    *v100 = v211;
    v100[1] = sub_68E3C;
    v101 = 0x800000000010CFD0;
    v98 = 0xD000000000000010;
    v102 = v99;
    goto LABEL_94;
  }

  v6 = sub_106D10();
  v7 = sub_106FC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "One alarm updated.", v8, 2u);
  }

  if (v4)
  {
    if (sub_107270())
    {
      goto LABEL_8;
    }
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_8:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = sub_1071C0();
    }

    else
    {
      if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_119;
      }

      v9 = *(v3 + 32);
    }

    v212 = v9;
    *(v0 + 1640) = v9;
    v209 = *(v0 + 1560);
    v10 = *(v0 + 2104);
    v11 = *(v0 + 1544);
    v12 = *(v0 + 1536);
    v13 = *(v0 + 1320);
    v14 = *(v0 + 1312);
    v15 = *(v0 + 1248);
    v16 = *(v0 + 944);

    v11(v13, v16 + v12, v15);
    v209(v14, v10, v15);
    sub_106EB0();
    sub_106EB0();
    v17 = *(v0 + 1584);
    v18 = *(v0 + 1320);
    v19 = *(v0 + 1312);
    v20 = *(v0 + 1248);
    if (*(v0 + 760) == *(v0 + 776) && *(v0 + 768) == *(v0 + 784))
    {
      v17(*(v0 + 1312), *(v0 + 1248));
      v17(v18, v20);

      goto LABEL_44;
    }

    v78 = sub_107370();
    v17(v19, v20);
    v17(v18, v20);

    if (v78)
    {
LABEL_44:
      sub_104CF0();
      v79 = sub_106D10();
      v80 = sub_106FC0();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v81, 2u);
      }

      v82 = *(v0 + 1440);
      v83 = *(v0 + 1080);
      v84 = *(v0 + 1072);
      v85 = *(v0 + 1064);
      v86 = *(v0 + 1056);
      v87 = *(v0 + 1048);
      v88 = *(v0 + 1040);

      (*(v84 + 104))(v83, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v85);
      (*(v87 + 16))(v86, v82, v88);
      mach_absolute_time();
      sub_106330();
      v89 = [v212 sleepAlarmAttribute];
      if (!v89)
      {
        v110 = *(v0 + 1032);
        v111 = *(v0 + 1024);
        v112 = *(v0 + 1016);
        sub_106210();
        v113 = sub_75DD4(0, v110, 0);
        *(v0 + 1704) = v113;
        (*(v111 + 8))(v110, v112);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v114 = sub_1060F0();
        *(v0 + 1712) = v114;
        v95 = "s#SuccessSleepDisabled";
        v96 = sub_74800(v113, v114, 0);
        v211[215] = v96;
        v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v115 = swift_task_alloc();
        v211[216] = v115;
        *v115 = v211;
        v115[1] = sub_65F28;
        v98 = 0xD000000000000020;
        goto LABEL_93;
      }

      sub_106100();
      if (qword_136E48 == -1)
      {
LABEL_48:
        v90 = *(v0 + 1032);
        v91 = *(v0 + 1024);
        v92 = v211[127];

        v93 = sub_1060F0();
        v211[206] = v93;
        sub_106210();
        v94 = sub_75DD4(0, v90, 0);
        v211[207] = v94;
        (*(v91 + 8))(v90, v92);
        v95 = "s#SuccessEnabled";
        v96 = sub_75DC8(0, v93, v94);
        v211[208] = v96;
        v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v97 = swift_task_alloc();
        v211[209] = v97;
        *v97 = v211;
        v97[1] = sub_65304;
        v98 = 0xD000000000000025;
LABEL_93:
        v101 = v95 | 0x8000000000000000;
        v102 = v96;
LABEL_94:

        return v214(v98, v101, v102);
      }

LABEL_119:
      swift_once();
      goto LABEL_48;
    }

    v116 = *(v0 + 1560);
    v117 = *(v0 + 1296);
    v118 = *(v0 + 1248);
    (*(v0 + 1544))(*(v0 + 1304), *(v0 + 944) + *(v0 + 1536), v118);
    v116(v117, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v118);
    sub_106EB0();
    sub_106EB0();
    v119 = *(v0 + 1584);
    v120 = *(v0 + 1304);
    v121 = *(v0 + 1296);
    v122 = *(v0 + 1248);
    if (*(v0 + 792) == *(v0 + 808) && *(v0 + 800) == *(v0 + 816))
    {
      v119(*(v0 + 1296), *(v0 + 1248));
      v119(v120, v122);

LABEL_81:
      v158 = sub_106D10();
      v159 = sub_106FC0();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_0, v158, v159, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v160, 2u);
      }

      v161 = *(v0 + 1440);
      v162 = *(v0 + 1080);
      v163 = *(v0 + 1072);
      v164 = v211[133];
      v165 = v211[132];
      v166 = v211[131];
      v167 = v211[130];

      (*(v163 + 104))(v162, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v164);
      (*(v166 + 16))(v165, v161, v167);
      mach_absolute_time();
      sub_106330();
      v168 = [v212 sleepAlarmAttribute];
      if (v168)
      {

        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v169 = v211[129];
        v170 = v211[128];
        v171 = v211[127];

        v172 = sub_1060F0();
        v211[225] = v172;
        sub_106210();
        v173 = sub_75DD4(0, v169, 0);
        v211[226] = v173;
        (*(v170 + 8))(v169, v171);
        v95 = "s#SuccessDisabled";
        v96 = sub_75DC8(0, v172, v173);
        v211[227] = v96;
        v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v174 = swift_task_alloc();
        v211[228] = v174;
        *v174 = v211;
        v174[1] = sub_66EC4;
        v98 = 0xD000000000000026;
      }

      else
      {
        v177 = v211[129];
        v178 = v211[128];
        v179 = v211[127];
        sub_106210();
        v180 = sub_75DD4(0, v177, 0);
        v211[235] = v180;
        (*(v178 + 8))(v177, v179);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v181 = sub_1060F0();
        v211[236] = v181;
        v95 = "ModifyAll#Enable";
        v96 = sub_75DC8(v180, v181, 0);
        v211[237] = v96;
        v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v182 = swift_task_alloc();
        v211[238] = v182;
        *v182 = v211;
        v182[1] = sub_67DD4;
        v98 = 0xD000000000000021;
      }

      goto LABEL_93;
    }

    v157 = sub_107370();
    v119(v121, v122);
    v119(v120, v122);

    if (v157)
    {
      goto LABEL_81;
    }

    goto LABEL_98;
  }

  v69 = sub_106D10();
  v70 = sub_106FB0();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_0, v69, v70, "Can't retrieve changed alarm or it's snippet information.", v71, 2u);
  }

  v72 = *(v0 + 1216);
  v73 = v0;
  v74 = *(v0 + 1208);
  v75 = v73[150];

  (*(v74 + 104))(v72, enum case for SiriTimeEventSender.ReasonDescription.failedToFetchChangedAlarm(_:), v75);
  v76 = swift_task_alloc();
  v73[245] = v76;
  *v76 = v73;
  v77 = sub_68CE4;
LABEL_113:
  v76[1] = v77;
  v207 = v73[152];
  v208 = v73[117];

  return sub_6E8C0(v208, v207);
}

uint64_t sub_63128()
{

  return _swift_task_switch(sub_6325C, 0, 0);
}

uint64_t sub_6325C()
{
  v1 = *(v0 + 864);

  sub_729D4(v2, sub_72CFC);
  v3 = *(v0 + 912);
  sub_BD4A4(v3, *(v0 + 1240));
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_108:
    if (sub_107270())
    {
      v5 = sub_107270();
      goto LABEL_3;
    }

LABEL_110:

    v201 = sub_106D10();
    v202 = sub_106FC0();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      *v203 = 0;
      _os_log_impl(&dword_0, v201, v202, "No alarms updated.", v203, 2u);
    }

    v204 = *(v0 + 1216);
    v73 = v0;
    v205 = *(v0 + 1208);
    v206 = v73[150];

    (*(v205 + 104))(v204, enum case for SiriTimeEventSender.ReasonDescription.noAlarmsUpdated(_:), v206);
    v76 = swift_task_alloc();
    v73[204] = v76;
    *v76 = v73;
    v77 = sub_64EE8;
    goto LABEL_113;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_110;
  }

LABEL_3:
  v211 = v0;
  if (v5 != 1)
  {
    v213 = v1;
    v21 = sub_106D10();
    v22 = sub_106FC0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Multiple alarms updated.", v23, 2u);
    }

    v210 = *(v0 + 1560);
    v24 = *(v0 + 2104);
    v25 = *(v0 + 1544);
    v26 = v21;
    v27 = *(v0 + 1536);
    v28 = *(v0 + 1288);
    v29 = *(v0 + 1280);
    v30 = *(v0 + 1248);
    v31 = *(v0 + 944);

    v25(v28, v31 + v27, v30);
    v210(v29, v24, v30);
    sub_106EB0();
    sub_106EB0();
    v32 = *(v0 + 1584);
    v33 = *(v0 + 1288);
    v34 = *(v0 + 1280);
    v35 = *(v0 + 1248);
    if (*(v0 + 664) == *(v0 + 840) && *(v0 + 672) == *(v0 + 848))
    {
      v32(*(v0 + 1280), *(v0 + 1248));
      v32(v33, v35);
    }

    else
    {
      v36 = sub_107370();
      v32(v34, v35);
      v32(v33, v35);

      if ((v36 & 1) == 0)
      {
        v103 = *(v0 + 1560);
        v104 = *(v0 + 1264);
        v105 = *(v0 + 1248);
        (*(v0 + 1544))(*(v0 + 1272), *(v0 + 944) + *(v0 + 1536), v105);
        v103(v104, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v105);
        sub_106EB0();
        sub_106EB0();
        v106 = *(v0 + 1584);
        v107 = *(v0 + 1272);
        v108 = *(v0 + 1264);
        v109 = *(v0 + 1248);
        if (*(v0 + 696) == *(v0 + 712) && *(v0 + 704) == *(v0 + 720))
        {
          v106(*(v0 + 1264), *(v0 + 1248));
          v106(v107, v109);
        }

        else
        {
          v123 = sub_107370();
          v106(v108, v109);
          v106(v107, v109);

          if ((v123 & 1) == 0)
          {

LABEL_98:
            v184 = *(v0 + 968);
            v185 = *(v0 + 960);
            v186 = *(v0 + 952);
            v187 = *(v0 + 944);
            v188 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
            swift_beginAccess();
            sub_14994(v187 + v188, v186, &qword_137FD0, &unk_1087C0);
            v189 = (*(v184 + 48))(v186, 1, v185);
            v190 = *(v0 + 1528);
            v191 = *(v0 + 1520);
            v192 = *(v0 + 1240);
            v193 = *(v0 + 1232);
            v194 = *(v0 + 1224);
            if (v189 == 1)
            {
              v195 = *(v0 + 944);
              sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
              sub_104F00();
            }

            else
            {
              v196 = *(v0 + 976);
              v197 = *(v0 + 968);
              v215 = *(v0 + 1240);
              v198 = *(v0 + 960);
              v195 = *(v0 + 944);
              (*(v197 + 32))(v196, *(v0 + 952), v198);
              sub_104F10();

              v199 = v198;
              v192 = v215;
              (*(v197 + 8))(v196, v199);
            }

            (*(v193 + 8))(v192, v194);
            sub_73574(v195);

            v200 = *(v0 + 8);

            return v200();
          }
        }

        v124 = sub_106D10();
        v125 = sub_106FC0();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_0, v124, v125, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v126, 2u);
        }

        v127 = *(v0 + 1440);
        v128 = *(v0 + 1080);
        v129 = *(v0 + 1072);
        v130 = v211[133];
        v131 = v211[132];
        v132 = v211[131];
        v133 = v211[130];

        (*(v129 + 104))(v128, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v130);
        v134 = *(v132 + 16);
        v4 = v132 + 16;
        v134(v131, v127, v133);
        mach_absolute_time();
        sub_106330();
        v135 = v1;
        if (v1 >> 62)
        {
          v3 = sub_107270();
        }

        else
        {
          v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
        }

        v136 = 0;
        v0 = v211;
        v1 &= 0xC000000000000001;
        v137 = (v211[128] + 8);
        while (v3 != v136)
        {
          if (v1)
          {
            v138 = sub_1071C0();
          }

          else
          {
            if (v136 >= *(&dword_10 + (v213 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_107;
            }

            v138 = *(v135 + 8 * v136 + 32);
          }

          v139 = v138;
          v4 = v136 + 1;
          if (__OFADD__(v136, 1))
          {
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v140 = *(v0 + 1032);
          v141 = *(v0 + 1016);
          sub_106210();
          v142 = sub_75DD4(0, v140, 0);

          v143 = v140;
          v135 = v213;
          (*v137)(v143, v141);
          ++v136;
          if (v142)
          {
            sub_106EC0();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_106F10();
              v0 = v211;
            }

            sub_106F20();
            v136 = v4;
          }
        }

        v144 = *(v0 + 992);
        v145 = v0;
        v146 = *(v0 + 984);

        v147 = sub_106160();
        v148 = *(*(v147 - 8) + 56);
        v148(v144, 1, 1, v147);
        v149 = v146[16];
        v148(v144 + v149, 1, 1, v147);
        v150 = v146[5];
        *(v144 + v150) = 0;
        *(v144 + v146[6]) = 0;
        *(v144 + v146[7]) = 0;
        *(v144 + v146[8]) = 1;
        *(v144 + v146[9]) = 0;
        *(v144 + v146[10]) = 0;
        *(v144 + v146[11]) = 0;
        *(v144 + v146[12]) = 0;
        *(v144 + v146[13]) = 0;
        *(v144 + v146[14]) = _swiftEmptyArrayStorage;
        v151 = v146[15];
        *(v144 + v151) = 0;
        v152 = v146[17];
        *(v144 + v152) = 0;
        sub_16F70(v144 + v149, &qword_137598, &unk_107EB0);
        v148(v144 + v149, 1, 1, v147);
        *(v144 + v152) = 0;
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v153 = v145[191];

        *(v144 + v150) = sub_1060F0();
        if (v153)
        {
          v154 = v145[129];
          v155 = v145[127];
          sub_106210();
          v156 = sub_75DD4(0, v154, 0);
          (*v137)(v154, v155);
        }

        else
        {
          v156 = 0;
        }

        *(v144 + v151) = v156;
        v175 = sub_20734();
        v145[254] = v175;
        v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v176 = swift_task_alloc();
        v145[255] = v176;
        *v176 = v145;
        v176[1] = sub_69D44;
        v98 = 0xD000000000000011;
        v101 = 0x800000000010CFB0;
        v102 = v175;
        goto LABEL_94;
      }
    }

    v37 = sub_106D10();
    v38 = sub_106FC0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v39, 2u);
    }

    v40 = *(v0 + 1440);
    v41 = *(v0 + 1080);
    v42 = *(v0 + 1072);
    v43 = v211[133];
    v44 = v211[132];
    v45 = v211[131];
    v46 = v211[130];

    (*(v42 + 104))(v41, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v43);
    v47 = *(v45 + 16);
    v4 = v45 + 16;
    v47(v44, v40, v46);
    mach_absolute_time();
    sub_106330();
    v48 = v1;
    v0 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      v3 = sub_107270();
    }

    else
    {
      v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    v49 = 0;
    v1 &= 0xC000000000000001;
    v50 = (v211[128] + 8);
    while (v3 != v49)
    {
      if (v1)
      {
        v51 = sub_1071C0();
      }

      else
      {
        if (v49 >= *(&dword_10 + (v213 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_105;
        }

        v51 = *(v48 + 8 * v49 + 32);
      }

      v52 = v51;
      v4 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v53 = v211[129];
      v54 = v211[127];
      sub_106210();
      v55 = sub_75DD4(0, v53, 0);

      v56 = v53;
      v48 = v213;
      (*v50)(v56, v54);
      ++v49;
      if (v55)
      {
        sub_106EC0();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_106F10();
        }

        sub_106F20();
        v49 = v4;
      }
    }

    v57 = v211[126];
    v58 = v211[125];

    v59 = sub_106160();
    v60 = *(*(v59 - 8) + 56);
    v60(v57, 1, 1, v59);
    v61 = v58[16];
    v60(v57 + v61, 1, 1, v59);
    v62 = v58[5];
    *(v57 + v62) = 0;
    *(v57 + v58[6]) = 0;
    *(v57 + v58[7]) = 0;
    *(v57 + v58[8]) = 1;
    *(v57 + v58[9]) = 0;
    *(v57 + v58[10]) = 0;
    *(v57 + v58[11]) = 0;
    *(v57 + v58[12]) = 0;
    *(v57 + v58[13]) = 0;
    *(v57 + v58[14]) = _swiftEmptyArrayStorage;
    v63 = v58[15];
    *(v57 + v63) = 0;
    v64 = v58[17];
    *(v57 + v64) = 0;
    sub_16F70(v57 + v61, &qword_137598, &unk_107EB0);
    v60(v57 + v61, 1, 1, v59);
    *(v57 + v64) = 0;
    sub_106100();
    if (qword_136E48 != -1)
    {
      swift_once();
    }

    v65 = v211[191];

    *(v57 + v62) = sub_1060F0();
    if (v65)
    {
      v66 = v211[129];
      v67 = v211[127];
      sub_106210();
      v68 = sub_75DD4(0, v66, 0);
      (*v50)(v66, v67);
    }

    else
    {
      v68 = 0;
    }

    *(v57 + v63) = v68;
    v99 = sub_20764();
    v211[246] = v99;
    v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v100 = swift_task_alloc();
    v211[247] = v100;
    *v100 = v211;
    v100[1] = sub_68E3C;
    v101 = 0x800000000010CFD0;
    v98 = 0xD000000000000010;
    v102 = v99;
    goto LABEL_94;
  }

  v6 = sub_106D10();
  v7 = sub_106FC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "One alarm updated.", v8, 2u);
  }

  if (v4)
  {
    if (sub_107270())
    {
      goto LABEL_8;
    }
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_8:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = sub_1071C0();
    }

    else
    {
      if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_119;
      }

      v9 = *(v3 + 32);
    }

    v212 = v9;
    *(v0 + 1640) = v9;
    v209 = *(v0 + 1560);
    v10 = *(v0 + 2104);
    v11 = *(v0 + 1544);
    v12 = *(v0 + 1536);
    v13 = *(v0 + 1320);
    v14 = *(v0 + 1312);
    v15 = *(v0 + 1248);
    v16 = *(v0 + 944);

    v11(v13, v16 + v12, v15);
    v209(v14, v10, v15);
    sub_106EB0();
    sub_106EB0();
    v17 = *(v0 + 1584);
    v18 = *(v0 + 1320);
    v19 = *(v0 + 1312);
    v20 = *(v0 + 1248);
    if (*(v0 + 760) == *(v0 + 776) && *(v0 + 768) == *(v0 + 784))
    {
      v17(*(v0 + 1312), *(v0 + 1248));
      v17(v18, v20);

      goto LABEL_44;
    }

    v78 = sub_107370();
    v17(v19, v20);
    v17(v18, v20);

    if (v78)
    {
LABEL_44:
      sub_104CF0();
      v79 = sub_106D10();
      v80 = sub_106FC0();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v81, 2u);
      }

      v82 = *(v0 + 1440);
      v83 = *(v0 + 1080);
      v84 = *(v0 + 1072);
      v85 = *(v0 + 1064);
      v86 = *(v0 + 1056);
      v87 = *(v0 + 1048);
      v88 = *(v0 + 1040);

      (*(v84 + 104))(v83, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v85);
      (*(v87 + 16))(v86, v82, v88);
      mach_absolute_time();
      sub_106330();
      v89 = [v212 sleepAlarmAttribute];
      if (!v89)
      {
        v110 = *(v0 + 1032);
        v111 = *(v0 + 1024);
        v112 = *(v0 + 1016);
        sub_106210();
        v113 = sub_75DD4(0, v110, 0);
        *(v0 + 1704) = v113;
        (*(v111 + 8))(v110, v112);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v114 = sub_1060F0();
        *(v0 + 1712) = v114;
        v95 = "s#SuccessSleepDisabled";
        v96 = sub_74800(v113, v114, 0);
        v211[215] = v96;
        v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v115 = swift_task_alloc();
        v211[216] = v115;
        *v115 = v211;
        v115[1] = sub_65F28;
        v98 = 0xD000000000000020;
        goto LABEL_93;
      }

      sub_106100();
      if (qword_136E48 == -1)
      {
LABEL_48:
        v90 = *(v0 + 1032);
        v91 = *(v0 + 1024);
        v92 = v211[127];

        v93 = sub_1060F0();
        v211[206] = v93;
        sub_106210();
        v94 = sub_75DD4(0, v90, 0);
        v211[207] = v94;
        (*(v91 + 8))(v90, v92);
        v95 = "s#SuccessEnabled";
        v96 = sub_75DC8(0, v93, v94);
        v211[208] = v96;
        v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v97 = swift_task_alloc();
        v211[209] = v97;
        *v97 = v211;
        v97[1] = sub_65304;
        v98 = 0xD000000000000025;
LABEL_93:
        v101 = v95 | 0x8000000000000000;
        v102 = v96;
LABEL_94:

        return v214(v98, v101, v102);
      }

LABEL_119:
      swift_once();
      goto LABEL_48;
    }

    v116 = *(v0 + 1560);
    v117 = *(v0 + 1296);
    v118 = *(v0 + 1248);
    (*(v0 + 1544))(*(v0 + 1304), *(v0 + 944) + *(v0 + 1536), v118);
    v116(v117, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v118);
    sub_106EB0();
    sub_106EB0();
    v119 = *(v0 + 1584);
    v120 = *(v0 + 1304);
    v121 = *(v0 + 1296);
    v122 = *(v0 + 1248);
    if (*(v0 + 792) == *(v0 + 808) && *(v0 + 800) == *(v0 + 816))
    {
      v119(*(v0 + 1296), *(v0 + 1248));
      v119(v120, v122);

LABEL_81:
      v158 = sub_106D10();
      v159 = sub_106FC0();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_0, v158, v159, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v160, 2u);
      }

      v161 = *(v0 + 1440);
      v162 = *(v0 + 1080);
      v163 = *(v0 + 1072);
      v164 = v211[133];
      v165 = v211[132];
      v166 = v211[131];
      v167 = v211[130];

      (*(v163 + 104))(v162, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v164);
      (*(v166 + 16))(v165, v161, v167);
      mach_absolute_time();
      sub_106330();
      v168 = [v212 sleepAlarmAttribute];
      if (v168)
      {

        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v169 = v211[129];
        v170 = v211[128];
        v171 = v211[127];

        v172 = sub_1060F0();
        v211[225] = v172;
        sub_106210();
        v173 = sub_75DD4(0, v169, 0);
        v211[226] = v173;
        (*(v170 + 8))(v169, v171);
        v95 = "s#SuccessDisabled";
        v96 = sub_75DC8(0, v172, v173);
        v211[227] = v96;
        v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v174 = swift_task_alloc();
        v211[228] = v174;
        *v174 = v211;
        v174[1] = sub_66EC4;
        v98 = 0xD000000000000026;
      }

      else
      {
        v177 = v211[129];
        v178 = v211[128];
        v179 = v211[127];
        sub_106210();
        v180 = sub_75DD4(0, v177, 0);
        v211[235] = v180;
        (*(v178 + 8))(v177, v179);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v181 = sub_1060F0();
        v211[236] = v181;
        v95 = "ModifyAll#Enable";
        v96 = sub_75DC8(v180, v181, 0);
        v211[237] = v96;
        v214 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v182 = swift_task_alloc();
        v211[238] = v182;
        *v182 = v211;
        v182[1] = sub_67DD4;
        v98 = 0xD000000000000021;
      }

      goto LABEL_93;
    }

    v157 = sub_107370();
    v119(v121, v122);
    v119(v120, v122);

    if (v157)
    {
      goto LABEL_81;
    }

    goto LABEL_98;
  }

  v69 = sub_106D10();
  v70 = sub_106FB0();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_0, v69, v70, "Can't retrieve changed alarm or it's snippet information.", v71, 2u);
  }

  v72 = *(v0 + 1216);
  v73 = v0;
  v74 = *(v0 + 1208);
  v75 = v73[150];

  (*(v74 + 104))(v72, enum case for SiriTimeEventSender.ReasonDescription.failedToFetchChangedAlarm(_:), v75);
  v76 = swift_task_alloc();
  v73[245] = v76;
  *v76 = v73;
  v77 = sub_68CE4;
LABEL_113:
  v76[1] = v77;
  v207 = v73[152];
  v208 = v73[117];

  return sub_6E8C0(v208, v207);
}

uint64_t sub_64EE8()
{
  v1 = *(*v0 + 1216);
  v2 = *(*v0 + 1208);
  v3 = *(*v0 + 1200);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_65040, 0, 0);
}

uint64_t sub_65040()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1224);
  v5 = *(v0 + 944);

  (*(v3 + 8))(v2, v4);
  sub_73574(v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_65304(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1680) = v1;

  if (v1)
  {
    v5 = sub_65930;
  }

  else
  {
    *(v4 + 1688) = a1;
    v5 = sub_65448;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_65448()
{

  v1 = swift_task_alloc();
  v0[212] = v1;
  *v1 = v0;
  v1[1] = sub_65504;
  v2 = v0[155];
  v3 = v0[149];
  v4 = v0[141];
  v5 = v0[117];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v5, v3, v2, v4);
}

uint64_t sub_65504()
{
  v1 = *(*v0 + 1688);

  return _swift_task_switch(sub_65618, 0, 0);
}

uint64_t sub_65618()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1232);
  v13 = *(v0 + 1224);
  v14 = *(v0 + 1240);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1144);
  v6 = *(v0 + 1136);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);
  v12 = *(v0 + 944);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v14, v13);
  sub_73574(v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_65930()
{
  v43 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1392);
  v7 = *(v0 + 1200);
  v8 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v6, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v7);
  v5(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v6, v8 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v10 = sub_106D10();
  v11 = sub_106FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1640);
    v13 = *(v0 + 1144);
    v39 = *(v0 + 1136);
    v40 = *(v0 + 1192);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v42 = v15;
    *v14 = 136315138;
    *(v0 + 880) = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v16 = sub_106E30();
    v18 = sub_722E8(v16, v17, &v42);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v14, 0xCu);
    sub_2738(v15);

    (*(v13 + 8))(v40, v39);
  }

  else
  {
    v19 = *(v0 + 1192);
    v20 = *(v0 + 1144);
    v21 = *(v0 + 1136);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  v25 = *(v0 + 944);
  v26 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v25 + v26, v24, &qword_137FD0, &unk_1087C0);
  v27 = (*(v22 + 48))(v24, 1, v23);
  v28 = *(v0 + 1528);
  v29 = *(v0 + 1520);
  v30 = *(v0 + 1240);
  v31 = *(v0 + 1232);
  v32 = *(v0 + 1224);
  if (v27 == 1)
  {
    v33 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v34 = *(v0 + 976);
    v41 = *(v0 + 1240);
    v35 = *(v0 + 968);
    v36 = *(v0 + 960);
    v33 = *(v0 + 944);
    (*(v35 + 32))(v34, *(v0 + 952), v36);
    sub_104F10();

    (*(v35 + 8))(v34, v36);
    v30 = v41;
  }

  (*(v31 + 8))(v30, v32);
  sub_73574(v33);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_65F28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1736) = a1;
  *(v3 + 1744) = v1;

  if (v1)
  {
    v4 = sub_662DC;
  }

  else
  {
    v4 = sub_66068;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_66068()
{

  sub_104CF0();
  v1 = swift_task_alloc();
  v0[219] = v1;
  *v1 = v0;
  v1[1] = sub_66134;
  v2 = v0[155];
  v3 = v0[148];
  v4 = v0[141];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 32, v3, v2, v4, 0);
}

uint64_t sub_66134()
{
  v2 = *v1;
  v2[220] = v0;

  v3 = v2[217];
  v4 = v2[148];
  v5 = v2[143];
  v6 = v2[142];
  v9 = *(v5 + 8);
  v7 = v5 + 8;
  v8 = v9;
  if (v0)
  {
    v8(v4, v6);

    v10 = sub_6B030;
  }

  else
  {
    v2[221] = v8;
    v2[222] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v6);

    v10 = sub_668D4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_662DC()
{
  v43 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1744);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1392);
  v7 = *(v0 + 1200);
  v8 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v6, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v7);
  v5(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v6, v8 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v10 = sub_106D10();
  v11 = sub_106FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1640);
    v13 = *(v0 + 1144);
    v39 = *(v0 + 1136);
    v40 = *(v0 + 1192);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v42 = v15;
    *v14 = 136315138;
    *(v0 + 880) = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v16 = sub_106E30();
    v18 = sub_722E8(v16, v17, &v42);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v14, 0xCu);
    sub_2738(v15);

    (*(v13 + 8))(v40, v39);
  }

  else
  {
    v19 = *(v0 + 1192);
    v20 = *(v0 + 1144);
    v21 = *(v0 + 1136);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  v25 = *(v0 + 944);
  v26 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v25 + v26, v24, &qword_137FD0, &unk_1087C0);
  v27 = (*(v22 + 48))(v24, 1, v23);
  v28 = *(v0 + 1528);
  v29 = *(v0 + 1520);
  v30 = *(v0 + 1240);
  v31 = *(v0 + 1232);
  v32 = *(v0 + 1224);
  if (v27 == 1)
  {
    v33 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v34 = *(v0 + 976);
    v41 = *(v0 + 1240);
    v35 = *(v0 + 968);
    v36 = *(v0 + 960);
    v33 = *(v0 + 944);
    (*(v35 + 32))(v34, *(v0 + 952), v36);
    sub_104F10();

    (*(v35 + 8))(v34, v36);
    v30 = v41;
  }

  (*(v31 + 8))(v30, v32);
  sub_73574(v33);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_668D4()
{
  sub_105180();
  v1 = v0[5];
  v2 = v0[6];
  sub_1A8E0(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[223] = v3;
  *v3 = v0;
  v3[1] = sub_66998;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 32, v1, v2);
}

uint64_t sub_66998()
{
  *(*v1 + 1792) = v0;

  if (v0)
  {
    v2 = sub_6B60C;
  }

  else
  {
    v2 = sub_66AAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_66AAC()
{
  v1 = *(v0 + 1768);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1096);
  v6 = *(v0 + 1088);

  sub_2738((v0 + 256));
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  sub_2738((v0 + 16));
  v7 = *(v0 + 968);
  v8 = *(v0 + 960);
  v9 = *(v0 + 952);
  v10 = *(v0 + 944);
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v10 + v11, v9, &qword_137FD0, &unk_1087C0);
  v12 = (*(v7 + 48))(v9, 1, v8);
  v13 = *(v0 + 1528);
  v14 = *(v0 + 1520);
  v15 = *(v0 + 1240);
  v16 = *(v0 + 1232);
  v17 = *(v0 + 1224);
  if (v12 == 1)
  {
    v18 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v19 = *(v0 + 976);
    v24 = *(v0 + 1240);
    v20 = *(v0 + 968);
    v21 = *(v0 + 960);
    v18 = *(v0 + 944);
    (*(v20 + 32))(v19, *(v0 + 952), v21);
    sub_104F10();

    (*(v20 + 8))(v19, v21);
    v15 = v24;
  }

  (*(v16 + 8))(v15, v17);
  sub_73574(v18);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_66EC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1832) = a1;
  *(v3 + 1840) = v1;

  if (v1)
  {
    v4 = sub_67250;
  }

  else
  {
    v4 = sub_67004;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_67004()
{

  sub_104CF0();
  v1 = swift_task_alloc();
  v0[231] = v1;
  *v1 = v0;
  v1[1] = sub_670D0;
  v2 = v0[155];
  v3 = v0[147];
  v4 = v0[140];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 42, v3, v2, v4, 0);
}

uint64_t sub_670D0()
{
  v2 = *v1;
  *(*v1 + 1856) = v0;

  v3 = v2[229];
  (*(v2[143] + 8))(v2[147], v2[142]);

  if (v0)
  {
    v4 = sub_6BC00;
  }

  else
  {
    v4 = sub_67800;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_67250()
{
  v37 = v0;
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1392);
  v7 = *(v0 + 1200);
  v8 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v6, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v7);
  v5(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v6, v8 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v10 = sub_106D10();
  v11 = sub_106FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1640);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136315138;
    *(v0 + 888) = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v15 = sub_106E30();
    v17 = sub_722E8(v15, v16, &v36);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v13, 0xCu);
    sub_2738(v14);
  }

  else
  {
  }

  v18 = *(v0 + 968);
  v19 = *(v0 + 960);
  v20 = *(v0 + 952);
  v21 = *(v0 + 944);
  v22 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v21 + v22, v20, &qword_137FD0, &unk_1087C0);
  v23 = (*(v18 + 48))(v20, 1, v19);
  v24 = *(v0 + 1528);
  v25 = *(v0 + 1520);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1232);
  v28 = *(v0 + 1224);
  if (v23 == 1)
  {
    v29 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v30 = *(v0 + 976);
    v35 = *(v0 + 1240);
    v31 = *(v0 + 968);
    v32 = *(v0 + 960);
    v29 = *(v0 + 944);
    (*(v31 + 32))(v30, *(v0 + 952), v32);
    sub_104F10();

    (*(v31 + 8))(v30, v32);
    v26 = v35;
  }

  (*(v27 + 8))(v26, v28);
  sub_73574(v29);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_67800()
{
  sub_105180();
  v1 = v0[40];
  v2 = v0[41];
  sub_1A8E0(v0 + 37, v1);
  v3 = swift_task_alloc();
  v0[233] = v3;
  *v3 = v0;
  v3[1] = sub_678C4;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 42, v1, v2);
}

uint64_t sub_678C4()
{
  *(*v1 + 1872) = v0;

  if (v0)
  {
    v2 = sub_6C194;
  }

  else
  {
    v2 = sub_679D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_679D8()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  sub_2738((v0 + 336));
  (*(v2 + 8))(v1, v3);
  sub_2738((v0 + 296));
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);
  v7 = *(v0 + 944);
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v7 + v8, v6, &qword_137FD0, &unk_1087C0);
  v9 = (*(v4 + 48))(v6, 1, v5);
  v10 = *(v0 + 1528);
  v11 = *(v0 + 1520);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1232);
  v14 = *(v0 + 1224);
  if (v9 == 1)
  {
    v15 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v16 = *(v0 + 976);
    v21 = *(v0 + 1240);
    v17 = *(v0 + 968);
    v18 = *(v0 + 960);
    v15 = *(v0 + 944);
    (*(v17 + 32))(v16, *(v0 + 952), v18);
    sub_104F10();

    (*(v17 + 8))(v16, v18);
    v12 = v21;
  }

  (*(v13 + 8))(v12, v14);
  sub_73574(v15);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_67DD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1912) = a1;
  *(v3 + 1920) = v1;

  if (v1)
  {
    v4 = sub_68160;
  }

  else
  {
    v4 = sub_67F14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_67F14()
{

  sub_104CF0();
  v1 = swift_task_alloc();
  v0[241] = v1;
  *v1 = v0;
  v1[1] = sub_67FE0;
  v2 = v0[155];
  v3 = v0[146];
  v4 = v0[140];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 27, v3, v2, v4, 0);
}

uint64_t sub_67FE0()
{
  v2 = *v1;
  *(*v1 + 1936) = v0;

  v3 = v2[239];
  (*(v2[143] + 8))(v2[146], v2[142]);

  if (v0)
  {
    v4 = sub_6C740;
  }

  else
  {
    v4 = sub_68710;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_68160()
{
  v37 = v0;
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1920);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1392);
  v7 = *(v0 + 1200);
  v8 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v6, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v7);
  v5(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v6, v8 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v10 = sub_106D10();
  v11 = sub_106FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1640);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136315138;
    *(v0 + 888) = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v15 = sub_106E30();
    v17 = sub_722E8(v15, v16, &v36);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v13, 0xCu);
    sub_2738(v14);
  }

  else
  {
  }

  v18 = *(v0 + 968);
  v19 = *(v0 + 960);
  v20 = *(v0 + 952);
  v21 = *(v0 + 944);
  v22 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v21 + v22, v20, &qword_137FD0, &unk_1087C0);
  v23 = (*(v18 + 48))(v20, 1, v19);
  v24 = *(v0 + 1528);
  v25 = *(v0 + 1520);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1232);
  v28 = *(v0 + 1224);
  if (v23 == 1)
  {
    v29 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v30 = *(v0 + 976);
    v35 = *(v0 + 1240);
    v31 = *(v0 + 968);
    v32 = *(v0 + 960);
    v29 = *(v0 + 944);
    (*(v31 + 32))(v30, *(v0 + 952), v32);
    sub_104F10();

    (*(v31 + 8))(v30, v32);
    v26 = v35;
  }

  (*(v27 + 8))(v26, v28);
  sub_73574(v29);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_68710()
{
  sub_105180();
  v1 = v0[50];
  v2 = v0[51];
  sub_1A8E0(v0 + 47, v1);
  v3 = swift_task_alloc();
  v0[243] = v3;
  *v3 = v0;
  v3[1] = sub_687D4;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 27, v1, v2);
}

uint64_t sub_687D4()
{
  *(*v1 + 1952) = v0;

  if (v0)
  {
    v2 = sub_6CCD4;
  }

  else
  {
    v2 = sub_688E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_688E8()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  sub_2738((v0 + 216));
  (*(v2 + 8))(v1, v3);
  sub_2738((v0 + 376));
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);
  v7 = *(v0 + 944);
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v7 + v8, v6, &qword_137FD0, &unk_1087C0);
  v9 = (*(v4 + 48))(v6, 1, v5);
  v10 = *(v0 + 1528);
  v11 = *(v0 + 1520);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1232);
  v14 = *(v0 + 1224);
  if (v9 == 1)
  {
    v15 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v16 = *(v0 + 976);
    v21 = *(v0 + 1240);
    v17 = *(v0 + 968);
    v18 = *(v0 + 960);
    v15 = *(v0 + 944);
    (*(v17 + 32))(v16, *(v0 + 952), v18);
    sub_104F10();

    (*(v17 + 8))(v16, v18);
    v12 = v21;
  }

  (*(v13 + 8))(v12, v14);
  sub_73574(v15);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_68CE4()
{
  v1 = *(*v0 + 1216);
  v2 = *(*v0 + 1208);
  v3 = *(*v0 + 1200);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_74310, 0, 0);
}

uint64_t sub_68E3C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1984) = a1;
  *(v3 + 1992) = v1;

  if (v1)
  {
    v4 = sub_691D0;
  }

  else
  {
    v4 = sub_68F7C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_68F7C()
{
  sub_73CB4(v0[126], type metadata accessor for ModifyAllEnableParameters);
  sub_104CF0();
  v1 = swift_task_alloc();
  v0[250] = v1;
  *v1 = v0;
  v1[1] = sub_69050;
  v2 = v0[155];
  v3 = v0[145];
  v4 = v0[139];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 17, v3, v2, v4, 0);
}

uint64_t sub_69050()
{
  v2 = *v1;
  *(*v1 + 2008) = v0;

  v3 = v2[248];
  (*(v2[143] + 8))(v2[145], v2[142]);

  if (v0)
  {
    v4 = sub_6D280;
  }

  else
  {
    v4 = sub_69778;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_691D0()
{
  v36 = v0;
  v1 = v0[139];
  v2 = v0[137];
  v3 = v0[136];
  sub_73CB4(v0[126], type metadata accessor for ModifyAllEnableParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[249];
  v5 = v0[181];
  v6 = v0[174];
  v7 = v0[150];
  v8 = v0[118];
  (*(v0[151] + 104))(v6, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v7);
  v5(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v6, v8 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v10 = sub_106D10();
  v11 = sub_106FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136315138;
    v0[112] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v14 = sub_106E30();
    v16 = sub_722E8(v14, v15, &v35);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v12, 0xCu);
    sub_2738(v13);
  }

  else
  {
  }

  v17 = v0[121];
  v18 = v0[120];
  v19 = v0[119];
  v20 = v0[118];
  v21 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v20 + v21, v19, &qword_137FD0, &unk_1087C0);
  v22 = (*(v17 + 48))(v19, 1, v18);
  v23 = v0[191];
  v24 = v0[190];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[153];
  if (v22 == 1)
  {
    v28 = v0[118];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v29 = v0[122];
    v34 = v0[155];
    v30 = v0[121];
    v31 = v0[120];
    v28 = v0[118];
    (*(v30 + 32))(v29, v0[119], v31);
    sub_104F10();

    (*(v30 + 8))(v29, v31);
    v25 = v34;
  }

  (*(v26 + 8))(v25, v27);
  sub_73574(v28);

  v32 = v0[1];

  return v32();
}

uint64_t sub_69778()
{
  sub_105180();
  v1 = v0[25];
  v2 = v0[26];
  sub_1A8E0(v0 + 22, v1);
  v3 = swift_task_alloc();
  v0[252] = v3;
  *v3 = v0;
  v3[1] = sub_6983C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 17, v1, v2);
}

uint64_t sub_6983C()
{
  *(*v1 + 2024) = v0;

  if (v0)
  {
    v2 = sub_6D804;
  }

  else
  {
    v2 = sub_69950;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_69950()
{
  v1 = v0[139];
  v2 = v0[137];
  v3 = v0[136];
  sub_2738(v0 + 17);
  (*(v2 + 8))(v1, v3);
  sub_2738(v0 + 22);
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  v7 = v0[118];
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v7 + v8, v6, &qword_137FD0, &unk_1087C0);
  v9 = (*(v4 + 48))(v6, 1, v5);
  v10 = v0[191];
  v11 = v0[190];
  v12 = v0[155];
  v13 = v0[154];
  v14 = v0[153];
  if (v9 == 1)
  {
    v15 = v0[118];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v16 = v0[122];
    v21 = v0[155];
    v17 = v0[121];
    v18 = v0[120];
    v15 = v0[118];
    (*(v17 + 32))(v16, v0[119], v18);
    sub_104F10();

    (*(v17 + 8))(v16, v18);
    v12 = v21;
  }

  (*(v13 + 8))(v12, v14);
  sub_73574(v15);

  v19 = v0[1];

  return v19();
}

uint64_t sub_69D44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2048) = a1;
  *(v3 + 2056) = v1;

  if (v1)
  {
    v4 = sub_6A0D8;
  }

  else
  {
    v4 = sub_69E84;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_69E84()
{
  sub_73CB4(v0[124], type metadata accessor for ModifyAllDisableParameters);
  sub_104CF0();
  v1 = swift_task_alloc();
  v0[258] = v1;
  *v1 = v0;
  v1[1] = sub_69F58;
  v2 = v0[155];
  v3 = v0[144];
  v4 = v0[138];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 7, v3, v2, v4, 0);
}

uint64_t sub_69F58()
{
  v2 = *v1;
  *(*v1 + 2072) = v0;

  v3 = v2[256];
  (*(v2[143] + 8))(v2[144], v2[142]);

  if (v0)
  {
    v4 = sub_6DDA0;
  }

  else
  {
    v4 = sub_6A680;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6A0D8()
{
  v36 = v0;
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];
  sub_73CB4(v0[124], type metadata accessor for ModifyAllDisableParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[257];
  v5 = v0[181];
  v6 = v0[174];
  v7 = v0[150];
  v8 = v0[118];
  (*(v0[151] + 104))(v6, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v7);
  v5(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v6, v8 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v10 = sub_106D10();
  v11 = sub_106FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136315138;
    v0[113] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v14 = sub_106E30();
    v16 = sub_722E8(v14, v15, &v35);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v12, 0xCu);
    sub_2738(v13);
  }

  else
  {
  }

  v17 = v0[121];
  v18 = v0[120];
  v19 = v0[119];
  v20 = v0[118];
  v21 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v20 + v21, v19, &qword_137FD0, &unk_1087C0);
  v22 = (*(v17 + 48))(v19, 1, v18);
  v23 = v0[191];
  v24 = v0[190];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[153];
  if (v22 == 1)
  {
    v28 = v0[118];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v29 = v0[122];
    v34 = v0[155];
    v30 = v0[121];
    v31 = v0[120];
    v28 = v0[118];
    (*(v30 + 32))(v29, v0[119], v31);
    sub_104F10();

    (*(v30 + 8))(v29, v31);
    v25 = v34;
  }

  (*(v26 + 8))(v25, v27);
  sub_73574(v28);

  v32 = v0[1];

  return v32();
}

uint64_t sub_6A680()
{
  sub_105180();
  v1 = v0[15];
  v2 = v0[16];
  sub_1A8E0(v0 + 12, v1);
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_6A744;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v1, v2);
}

uint64_t sub_6A744()
{
  *(*v1 + 2088) = v0;

  if (v0)
  {
    v2 = sub_6E324;
  }

  else
  {
    v2 = sub_6A858;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6A858()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];
  sub_2738(v0 + 7);
  (*(v2 + 8))(v1, v3);
  sub_2738(v0 + 12);
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  v7 = v0[118];
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v7 + v8, v6, &qword_137FD0, &unk_1087C0);
  v9 = (*(v4 + 48))(v6, 1, v5);
  v10 = v0[191];
  v11 = v0[190];
  v12 = v0[155];
  v13 = v0[154];
  v14 = v0[153];
  if (v9 == 1)
  {
    v15 = v0[118];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v16 = v0[122];
    v21 = v0[155];
    v17 = v0[121];
    v18 = v0[120];
    v15 = v0[118];
    (*(v17 + 32))(v16, v0[119], v18);
    sub_104F10();

    (*(v17 + 8))(v16, v18);
    v12 = v21;
  }

  (*(v13 + 8))(v12, v14);
  sub_73574(v15);

  v19 = v0[1];

  return v19();
}

uint64_t sub_6AC4C()
{
  v1 = *(*v0 + 1216);
  v2 = *(*v0 + 1208);
  v3 = *(*v0 + 1200);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_6ADA4, 0, 0);
}

uint64_t sub_6ADA4()
{
  sub_73574(*(v0 + 944));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6B030()
{
  v40 = v0;
  (*(*(v0 + 1096) + 8))(*(v0 + 1128), *(v0 + 1088));
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1392);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v3, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v4);
  v2(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v3, v5 + v6, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v7 = sub_106D10();
  v8 = sub_106FB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1640);
    v10 = *(v0 + 1144);
    v36 = *(v0 + 1136);
    v37 = *(v0 + 1192);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = v12;
    *v11 = 136315138;
    *(v0 + 880) = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v13 = sub_106E30();
    v15 = sub_722E8(v13, v14, &v39);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v7, v8, "Error in RF path: %s", v11, 0xCu);
    sub_2738(v12);

    (*(v10 + 8))(v37, v36);
  }

  else
  {
    v16 = *(v0 + 1192);
    v17 = *(v0 + 1144);
    v18 = *(v0 + 1136);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 968);
  v20 = *(v0 + 960);
  v21 = *(v0 + 952);
  v22 = *(v0 + 944);
  v23 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v22 + v23, v21, &qword_137FD0, &unk_1087C0);
  v24 = (*(v19 + 48))(v21, 1, v20);
  v25 = *(v0 + 1528);
  v26 = *(v0 + 1520);
  v27 = *(v0 + 1240);
  v28 = *(v0 + 1232);
  v29 = *(v0 + 1224);
  if (v24 == 1)
  {
    v30 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v31 = *(v0 + 976);
    v38 = *(v0 + 1240);
    v32 = *(v0 + 968);
    v33 = *(v0 + 960);
    v30 = *(v0 + 944);
    (*(v32 + 32))(v31, *(v0 + 952), v33);
    sub_104F10();

    (*(v32 + 8))(v31, v33);
    v27 = v38;
  }

  (*(v28 + 8))(v27, v29);
  sub_73574(v30);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_6B60C()
{
  v43 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  sub_2738((v0 + 256));
  (*(v2 + 8))(v1, v3);
  sub_2738((v0 + 16));
  v4 = *(v0 + 1792);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1392);
  v7 = *(v0 + 1200);
  v8 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v6, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v7);
  v5(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v6, v8 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v10 = sub_106D10();
  v11 = sub_106FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1640);
    v13 = *(v0 + 1144);
    v39 = *(v0 + 1136);
    v40 = *(v0 + 1192);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v42 = v15;
    *v14 = 136315138;
    *(v0 + 880) = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v16 = sub_106E30();
    v18 = sub_722E8(v16, v17, &v42);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v14, 0xCu);
    sub_2738(v15);

    (*(v13 + 8))(v40, v39);
  }

  else
  {
    v19 = *(v0 + 1192);
    v20 = *(v0 + 1144);
    v21 = *(v0 + 1136);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  v25 = *(v0 + 944);
  v26 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v25 + v26, v24, &qword_137FD0, &unk_1087C0);
  v27 = (*(v22 + 48))(v24, 1, v23);
  v28 = *(v0 + 1528);
  v29 = *(v0 + 1520);
  v30 = *(v0 + 1240);
  v31 = *(v0 + 1232);
  v32 = *(v0 + 1224);
  if (v27 == 1)
  {
    v33 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v34 = *(v0 + 976);
    v41 = *(v0 + 1240);
    v35 = *(v0 + 968);
    v36 = *(v0 + 960);
    v33 = *(v0 + 944);
    (*(v35 + 32))(v34, *(v0 + 952), v36);
    sub_104F10();

    (*(v35 + 8))(v34, v36);
    v30 = v41;
  }

  (*(v31 + 8))(v30, v32);
  sub_73574(v33);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_6BC00()
{
  v34 = v0;
  (*(*(v0 + 1096) + 8))(*(v0 + 1120), *(v0 + 1088));
  v1 = *(v0 + 1856);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1392);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v3, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v4);
  v2(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v3, v5 + v6, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v7 = sub_106D10();
  v8 = sub_106FB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1640);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136315138;
    *(v0 + 888) = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v12 = sub_106E30();
    v14 = sub_722E8(v12, v13, &v33);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v7, v8, "Error in RF path: %s", v10, 0xCu);
    sub_2738(v11);
  }

  else
  {
  }

  v15 = *(v0 + 968);
  v16 = *(v0 + 960);
  v17 = *(v0 + 952);
  v18 = *(v0 + 944);
  v19 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v18 + v19, v17, &qword_137FD0, &unk_1087C0);
  v20 = (*(v15 + 48))(v17, 1, v16);
  v21 = *(v0 + 1528);
  v22 = *(v0 + 1520);
  v23 = *(v0 + 1240);
  v24 = *(v0 + 1232);
  v25 = *(v0 + 1224);
  if (v20 == 1)
  {
    v26 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v27 = *(v0 + 976);
    v32 = *(v0 + 1240);
    v28 = *(v0 + 968);
    v29 = *(v0 + 960);
    v26 = *(v0 + 944);
    (*(v28 + 32))(v27, *(v0 + 952), v29);
    sub_104F10();

    (*(v28 + 8))(v27, v29);
    v23 = v32;
  }

  (*(v24 + 8))(v23, v25);
  sub_73574(v26);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_6C194()
{
  v37 = v0;
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  sub_2738((v0 + 336));
  (*(v2 + 8))(v1, v3);
  sub_2738((v0 + 296));
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1392);
  v7 = *(v0 + 1200);
  v8 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v6, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v7);
  v5(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v6, v8 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v10 = sub_106D10();
  v11 = sub_106FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1640);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136315138;
    *(v0 + 888) = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v15 = sub_106E30();
    v17 = sub_722E8(v15, v16, &v36);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v13, 0xCu);
    sub_2738(v14);
  }

  else
  {
  }

  v18 = *(v0 + 968);
  v19 = *(v0 + 960);
  v20 = *(v0 + 952);
  v21 = *(v0 + 944);
  v22 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v21 + v22, v20, &qword_137FD0, &unk_1087C0);
  v23 = (*(v18 + 48))(v20, 1, v19);
  v24 = *(v0 + 1528);
  v25 = *(v0 + 1520);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1232);
  v28 = *(v0 + 1224);
  if (v23 == 1)
  {
    v29 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v30 = *(v0 + 976);
    v35 = *(v0 + 1240);
    v31 = *(v0 + 968);
    v32 = *(v0 + 960);
    v29 = *(v0 + 944);
    (*(v31 + 32))(v30, *(v0 + 952), v32);
    sub_104F10();

    (*(v31 + 8))(v30, v32);
    v26 = v35;
  }

  (*(v27 + 8))(v26, v28);
  sub_73574(v29);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_6C740()
{
  v34 = v0;
  (*(*(v0 + 1096) + 8))(*(v0 + 1120), *(v0 + 1088));
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1392);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v3, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v4);
  v2(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v3, v5 + v6, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v7 = sub_106D10();
  v8 = sub_106FB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1640);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136315138;
    *(v0 + 888) = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v12 = sub_106E30();
    v14 = sub_722E8(v12, v13, &v33);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v7, v8, "Error in RF path: %s", v10, 0xCu);
    sub_2738(v11);
  }

  else
  {
  }

  v15 = *(v0 + 968);
  v16 = *(v0 + 960);
  v17 = *(v0 + 952);
  v18 = *(v0 + 944);
  v19 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v18 + v19, v17, &qword_137FD0, &unk_1087C0);
  v20 = (*(v15 + 48))(v17, 1, v16);
  v21 = *(v0 + 1528);
  v22 = *(v0 + 1520);
  v23 = *(v0 + 1240);
  v24 = *(v0 + 1232);
  v25 = *(v0 + 1224);
  if (v20 == 1)
  {
    v26 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v27 = *(v0 + 976);
    v32 = *(v0 + 1240);
    v28 = *(v0 + 968);
    v29 = *(v0 + 960);
    v26 = *(v0 + 944);
    (*(v28 + 32))(v27, *(v0 + 952), v29);
    sub_104F10();

    (*(v28 + 8))(v27, v29);
    v23 = v32;
  }

  (*(v24 + 8))(v23, v25);
  sub_73574(v26);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_6CCD4()
{
  v37 = v0;
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  sub_2738((v0 + 216));
  (*(v2 + 8))(v1, v3);
  sub_2738((v0 + 376));
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1392);
  v7 = *(v0 + 1200);
  v8 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v6, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v7);
  v5(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v6, v8 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v10 = sub_106D10();
  v11 = sub_106FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1640);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136315138;
    *(v0 + 888) = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v15 = sub_106E30();
    v17 = sub_722E8(v15, v16, &v36);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v13, 0xCu);
    sub_2738(v14);
  }

  else
  {
  }

  v18 = *(v0 + 968);
  v19 = *(v0 + 960);
  v20 = *(v0 + 952);
  v21 = *(v0 + 944);
  v22 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v21 + v22, v20, &qword_137FD0, &unk_1087C0);
  v23 = (*(v18 + 48))(v20, 1, v19);
  v24 = *(v0 + 1528);
  v25 = *(v0 + 1520);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1232);
  v28 = *(v0 + 1224);
  if (v23 == 1)
  {
    v29 = *(v0 + 944);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v30 = *(v0 + 976);
    v35 = *(v0 + 1240);
    v31 = *(v0 + 968);
    v32 = *(v0 + 960);
    v29 = *(v0 + 944);
    (*(v31 + 32))(v30, *(v0 + 952), v32);
    sub_104F10();

    (*(v31 + 8))(v30, v32);
    v26 = v35;
  }

  (*(v27 + 8))(v26, v28);
  sub_73574(v29);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_6D280()
{
  v33 = v0;
  (*(v0[137] + 8))(v0[139], v0[136]);
  v1 = v0[251];
  v2 = v0[181];
  v3 = v0[174];
  v4 = v0[150];
  v5 = v0[118];
  (*(v0[151] + 104))(v3, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v4);
  v2(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v3, v5 + v6, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v7 = sub_106D10();
  v8 = sub_106FB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315138;
    v0[112] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v11 = sub_106E30();
    v13 = sub_722E8(v11, v12, &v32);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "Error in RF path: %s", v9, 0xCu);
    sub_2738(v10);
  }

  else
  {
  }

  v14 = v0[121];
  v15 = v0[120];
  v16 = v0[119];
  v17 = v0[118];
  v18 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v17 + v18, v16, &qword_137FD0, &unk_1087C0);
  v19 = (*(v14 + 48))(v16, 1, v15);
  v20 = v0[191];
  v21 = v0[190];
  v22 = v0[155];
  v23 = v0[154];
  v24 = v0[153];
  if (v19 == 1)
  {
    v25 = v0[118];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v26 = v0[122];
    v31 = v0[155];
    v27 = v0[121];
    v28 = v0[120];
    v25 = v0[118];
    (*(v27 + 32))(v26, v0[119], v28);
    sub_104F10();

    (*(v27 + 8))(v26, v28);
    v22 = v31;
  }

  (*(v23 + 8))(v22, v24);
  sub_73574(v25);

  v29 = v0[1];

  return v29();
}

uint64_t sub_6D804()
{
  v36 = v0;
  v1 = v0[139];
  v2 = v0[137];
  v3 = v0[136];
  sub_2738(v0 + 17);
  (*(v2 + 8))(v1, v3);
  sub_2738(v0 + 22);
  v4 = v0[253];
  v5 = v0[181];
  v6 = v0[174];
  v7 = v0[150];
  v8 = v0[118];
  (*(v0[151] + 104))(v6, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v7);
  v5(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v6, v8 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v10 = sub_106D10();
  v11 = sub_106FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136315138;
    v0[112] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v14 = sub_106E30();
    v16 = sub_722E8(v14, v15, &v35);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v12, 0xCu);
    sub_2738(v13);
  }

  else
  {
  }

  v17 = v0[121];
  v18 = v0[120];
  v19 = v0[119];
  v20 = v0[118];
  v21 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v20 + v21, v19, &qword_137FD0, &unk_1087C0);
  v22 = (*(v17 + 48))(v19, 1, v18);
  v23 = v0[191];
  v24 = v0[190];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[153];
  if (v22 == 1)
  {
    v28 = v0[118];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v29 = v0[122];
    v34 = v0[155];
    v30 = v0[121];
    v31 = v0[120];
    v28 = v0[118];
    (*(v30 + 32))(v29, v0[119], v31);
    sub_104F10();

    (*(v30 + 8))(v29, v31);
    v25 = v34;
  }

  (*(v26 + 8))(v25, v27);
  sub_73574(v28);

  v32 = v0[1];

  return v32();
}

uint64_t sub_6DDA0()
{
  v33 = v0;
  (*(v0[137] + 8))(v0[138], v0[136]);
  v1 = v0[259];
  v2 = v0[181];
  v3 = v0[174];
  v4 = v0[150];
  v5 = v0[118];
  (*(v0[151] + 104))(v3, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v4);
  v2(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v3, v5 + v6, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v7 = sub_106D10();
  v8 = sub_106FB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315138;
    v0[113] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v11 = sub_106E30();
    v13 = sub_722E8(v11, v12, &v32);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "Error in RF path: %s", v9, 0xCu);
    sub_2738(v10);
  }

  else
  {
  }

  v14 = v0[121];
  v15 = v0[120];
  v16 = v0[119];
  v17 = v0[118];
  v18 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v17 + v18, v16, &qword_137FD0, &unk_1087C0);
  v19 = (*(v14 + 48))(v16, 1, v15);
  v20 = v0[191];
  v21 = v0[190];
  v22 = v0[155];
  v23 = v0[154];
  v24 = v0[153];
  if (v19 == 1)
  {
    v25 = v0[118];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v26 = v0[122];
    v31 = v0[155];
    v27 = v0[121];
    v28 = v0[120];
    v25 = v0[118];
    (*(v27 + 32))(v26, v0[119], v28);
    sub_104F10();

    (*(v27 + 8))(v26, v28);
    v22 = v31;
  }

  (*(v23 + 8))(v22, v24);
  sub_73574(v25);

  v29 = v0[1];

  return v29();
}

uint64_t sub_6E324()
{
  v36 = v0;
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];
  sub_2738(v0 + 7);
  (*(v2 + 8))(v1, v3);
  sub_2738(v0 + 12);
  v4 = v0[261];
  v5 = v0[181];
  v6 = v0[174];
  v7 = v0[150];
  v8 = v0[118];
  (*(v0[151] + 104))(v6, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v7);
  v5(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v6, v8 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v10 = sub_106D10();
  v11 = sub_106FB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136315138;
    v0[113] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v14 = sub_106E30();
    v16 = sub_722E8(v14, v15, &v35);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v10, v11, "Error in RF path: %s", v12, 0xCu);
    sub_2738(v13);
  }

  else
  {
  }

  v17 = v0[121];
  v18 = v0[120];
  v19 = v0[119];
  v20 = v0[118];
  v21 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v20 + v21, v19, &qword_137FD0, &unk_1087C0);
  v22 = (*(v17 + 48))(v19, 1, v18);
  v23 = v0[191];
  v24 = v0[190];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[153];
  if (v22 == 1)
  {
    v28 = v0[118];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v29 = v0[122];
    v34 = v0[155];
    v30 = v0[121];
    v31 = v0[120];
    v28 = v0[118];
    (*(v30 + 32))(v29, v0[119], v31);
    sub_104F10();

    (*(v30 + 8))(v29, v31);
    v25 = v34;
  }

  (*(v26 + 8))(v25, v27);
  sub_73574(v28);

  v32 = v0[1];

  return v32();
}

uint64_t sub_6E8C0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_104FF0();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = sub_104D60();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  sub_106200();
  v3[24] = swift_task_alloc();
  v6 = sub_106D20();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v7 = sub_106300();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v8 = sub_106320();
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  sub_25E4(&qword_137FF0, &unk_10C0F0);
  v3[34] = swift_task_alloc();
  sub_25E4(&qword_137FF8, &qword_1087F0);
  v3[35] = swift_task_alloc();
  v9 = sub_104DE0();
  v3[36] = v9;
  v3[37] = *(v9 - 8);
  v3[38] = swift_task_alloc();
  sub_25E4(&qword_137FE8, &unk_1087E0);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_6EC24, 0, 0);
}

uint64_t sub_6EC24()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = sub_1062D0();
  v8 = *(v7 - 8);
  v36 = *(v8 + 16);
  v36(v2, v5, v7);
  v37 = v7;
  v35 = *(v8 + 56);
  v35(v2, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v2, v6 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  (*(v4 + 104))(v1, enum case for ActivityType.failed(_:), v3);
  if (qword_136D08 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 280);
  v11 = sub_1062E0();
  sub_135C4(v11, qword_13B6E0);
  v12 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v13 = sub_104C40();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v10, v12, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  if (qword_136D10 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 312);
  v16 = *(v0 + 296);
  v31 = *(v0 + 304);
  v32 = *(v0 + 288);
  v18 = *(v0 + 272);
  v17 = *(v0 + 280);
  v19 = *(v0 + 232);
  v33 = *(v0 + 224);
  v34 = *(v0 + 240);
  v20 = *(v0 + 128);
  v21 = sub_1062F0();
  v22 = sub_135C4(v21, qword_13B6F8);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v18, v22, v21);
  (*(v23 + 56))(v18, 0, 1, v21);
  v36(v15, v20, v37);
  v35(v15, 0, 1, v37);
  sub_1062C0();
  sub_16F70(v15, &qword_137FE8, &unk_1087E0);
  sub_16F70(v18, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v17, &qword_137FF8, &qword_1087F0);
  (*(v16 + 8))(v31, v32);
  (*(v19 + 104))(v34, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v33);
  if (qword_136D00 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 208);
  v24 = *(v0 + 216);
  v26 = *(v0 + 200);
  v27 = sub_135C4(v26, qword_138830);
  *(v0 + 320) = v27;
  (*(v25 + 16))(v24, v27, v26);
  mach_absolute_time();
  sub_106330();
  sub_105180();
  v28 = *(v0 + 40);
  *(v0 + 328) = v28;
  *(v0 + 344) = sub_1A8E0((v0 + 16), v28);
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  *(v0 + 352) = sub_1060D0();
  v38 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v29 = swift_task_alloc();
  *(v0 + 360) = v29;
  *v29 = v0;
  v29[1] = sub_6F140;

  return v38(0xD000000000000013, 0x800000000010C480, _swiftEmptyArrayStorage);
}

uint64_t sub_6F140(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_6F538;
  }

  else
  {
    *(v4 + 376) = a1;

    v5 = sub_6F270;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_6F270(uint64_t a1)
{
  sub_104D20();
  sub_104FE0();
  v2 = swift_task_alloc();
  v1[48] = v2;
  *v2 = v1;
  v2[1] = sub_6F330;
  v3 = v1[33];
  v4 = v1[23];
  v5 = v1[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v1 + 7, v4, v5, v3, 0);
}

uint64_t sub_6F330()
{
  v2 = *(*v1 + 376);
  v3 = *v1;
  v3[49] = v0;

  if (v0)
  {
    v5 = v3[22];
    v4 = v3[23];
    v6 = v3[21];
    (*(v3[19] + 8))(v3[20], v3[18]);
    (*(v5 + 8))(v4, v6);

    return _swift_task_switch(sub_6F8F8, 0, 0);
  }

  else
  {
    v8 = v3[22];
    v7 = v3[23];
    v9 = v3[21];
    (*(v3[19] + 8))(v3[20], v3[18]);
    (*(v8 + 8))(v7, v9);
    v10 = swift_task_alloc();
    v3[50] = v10;
    *v10 = v3;
    v10[1] = sub_6F6C8;
    v11 = v3[42];
    v12 = v3[41];

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v3 + 7, v12, v11);
  }
}

uint64_t sub_6F538()
{

  (*(v0[32] + 8))(v0[33], v0[31]);
  sub_2738(v0 + 2);
  v1 = sub_106D10();
  v2 = sub_106FB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Failed to produce Incomplete response.", v3, 2u);
  }

  sub_104F00();

  v4 = v0[1];

  return v4();
}

uint64_t sub_6F6C8()
{
  v2 = *v1;
  *(v2 + 408) = v0;

  sub_2738((v2 + 56));
  if (v0)
  {
    v3 = sub_6FA80;
  }

  else
  {
    v3 = sub_6F7E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_6F7E4()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  sub_2738(v0 + 2);
  sub_104F00();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_6F8F8()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  sub_2738(v0 + 2);
  v1 = sub_106D10();
  v2 = sub_106FB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Failed to produce Incomplete response.", v3, 2u);
  }

  sub_104F00();

  v4 = v0[1];

  return v4();
}

uint64_t sub_6FA80()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  sub_2738(v0 + 2);
  v1 = sub_106D10();
  v2 = sub_106FB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Failed to produce Incomplete response.", v3, 2u);
  }

  sub_104F00();

  v4 = v0[1];

  return v4();
}

uint64_t sub_6FC08(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = sub_25E4(&qword_138A48, &qword_109638);
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v18 - v4;
  v6 = sub_106D00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106A50();
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_106E10();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  sub_106FF0();
  sub_106CF0();
  sub_106CE0();
  (*(v7 + 8))(v9, v6);
  sub_262C(a2 + 48, v21);
  v18 = v21[4];
  sub_1A8E0(v21, v21[3]);
  v13 = v19;
  (*(v3 + 16))(v5, v20, v19);
  v14 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v3 + 32))(v15 + v14, v5, v13);
  v16 = v12;

  sub_106B60();

  return sub_2738(v21);
}

uint64_t sub_6FEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = sub_25E4(&qword_1381C8, &qword_109640);
  __chkstk_darwin(v4);
  v6 = (&v21 - v5);
  v7 = sub_106D00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  sub_106CF0();
  sub_106CE0();
  (*(v8 + 8))(v10, v7);
  sub_14994(a1, v6, &qword_1381C8, &qword_109640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v11 = sub_106D20();
    sub_135C4(v11, qword_138830);
    v12 = sub_106D10();
    v13 = sub_106FC0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "No alarms are available...", v14, 2u);
    }

    v22 = _swiftEmptyArrayStorage;
    sub_25E4(&qword_138A48, &qword_109638);
    sub_106F60();
    return sub_16F70(v6, &qword_1381C8, &qword_109640);
  }

  else
  {
    v16 = *v6;
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v17 = sub_106D20();
    sub_135C4(v17, qword_138830);
    v18 = sub_106D10();
    v19 = sub_106FC0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "found all alarms.", v20, 2u);
    }

    v22 = v16;
    sub_25E4(&qword_138A48, &qword_109638);
    return sub_106F60();
  }
}

uint64_t sub_70244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a3;
  v4 = sub_25E4(&qword_138A48, &qword_109638);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_106D00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  sub_106CF0();
  sub_106CE0();
  (*(v9 + 8))(v11, v8);
  sub_262C(a2 + 48, v18);
  sub_1A8E0(v18, v18[3]);
  (*(v5 + 16))(v7, v16, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v5 + 32))(v13 + v12, v7, v4);

  sub_106B50();

  return sub_2738(v18);
}

uint64_t sub_704A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a3;
  v4 = sub_25E4(&qword_138A48, &qword_109638);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_106D00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  sub_106CF0();
  sub_106CE0();
  (*(v9 + 8))(v11, v8);
  sub_262C(a2 + 48, v18);
  sub_1A8E0(v18, v18[3]);
  (*(v5 + 16))(v7, v16, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v5 + 32))(v13 + v12, v7, v4);

  sub_106B70();

  return sub_2738(v18);
}

uint64_t sub_7070C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v35 = a6;
  v36 = a7;
  v38 = a5;
  v39 = a1;
  v40 = a3;
  v7 = sub_106990();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&qword_1381C8, &qword_109640);
  __chkstk_darwin(v10);
  v12 = (&v34 - v11);
  v13 = sub_106D00();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  sub_106CF0();
  sub_106CE0();
  (*(v14 + 8))(v16, v13);
  sub_14994(v39, v12, &qword_1381C8, &qword_109640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v37;
    (*(v37 + 32))(v9, v12, v7);
    v18 = v7;
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v19 = sub_106D20();
    sub_135C4(v19, qword_138830);
    v20 = sub_106D10();
    v21 = sub_106FC0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, v36, v22, 2u);
    }

    v41[0] = _swiftEmptyArrayStorage;
    sub_25E4(&qword_138A48, &qword_109638);
    sub_106F60();
    v23 = sub_106750();
    v41[3] = v23;
    v41[4] = &protocol witness table for ABCReport;
    v24 = sub_1A924(v41);
    sub_73FEC(&qword_1381C0, &type metadata accessor for AlarmOperationError, &protocol conformance descriptor for AlarmOperationError);
    swift_allocError();
    (*(v17 + 16))(v25, v9, v18);
    *v24 = sub_1045F0();
    v26 = enum case for ErrorSubType.managerReturnedError(_:);
    v27 = sub_106460();
    (*(*(v27 - 8) + 104))(v24, v26, v27);
    (*(*(v23 - 8) + 104))(v24, enum case for ABCReport.alarmUndoHandle(_:), v23);
    sub_1064D0();
    (*(v17 + 8))(v9, v18);
    sub_2738(v41);
  }

  else
  {
    v29 = *v12;
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v30 = sub_106D20();
    sub_135C4(v30, qword_138830);
    v31 = sub_106D10();
    v32 = sub_106FC0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, v35, v33, 2u);
    }

    v41[0] = v29;
    sub_25E4(&qword_138A48, &qword_109638);
    return sub_106F60();
  }
}

uint64_t sub_70C60(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v3 = sub_25E4(&qword_138A30, &qword_109620);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-1] - v5;
  v7 = sub_106D00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  sub_106CF0();
  sub_106CE0();
  (*(v8 + 8))(v10, v7);
  sub_262C(a2 + 48, v15);
  sub_1A8E0(v15, v15[3]);
  (*(v4 + 16))(v6, v14, v3);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v4 + 32))(v12 + v11, v6, v3);

  sub_106B00();

  return sub_2738(v15);
}

uint64_t sub_70EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a3;
  v4 = sub_25E4(&qword_138A30, &qword_109620);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = &v24 - v6;
  v7 = sub_25E4(&qword_138A38, &qword_109628);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_106D00();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v26 = a2;
  sub_106CF0();
  sub_106CE0();
  v14 = *(v11 + 8);
  v14(v13, v10);
  sub_14994(v27, v9, &qword_138A38, &qword_109628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v15 = sub_106D20();
    sub_135C4(v15, qword_138830);
    v16 = sub_106D10();
    v17 = sub_106FB0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Failed to enable sleep alarm.", v18, 2u);
    }

    v29[0] = 0;
    sub_106F60();
    return sub_16F70(v9, &qword_138A38, &qword_109628);
  }

  else
  {
    sub_106FF0();
    sub_106CF0();
    sub_106CE0();
    v14(v13, v10);
    v20 = v26;
    sub_262C(v26 + 48, v29);
    sub_1A8E0(v29, v29[3]);
    v21 = v25;
    (*(v5 + 16))(v25, v28, v4);
    v22 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    (*(v5 + 32))(v23 + v22, v21, v4);

    sub_106B20();

    return sub_2738(v29);
  }
}

uint64_t sub_712EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E4(&qword_138A40, &qword_109630);
  __chkstk_darwin(v3);
  v5 = (&v15 - v4);
  v6 = sub_106D00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  sub_106CF0();
  sub_106CE0();
  (*(v7 + 8))(v9, v6);
  sub_14994(a1, v5, &qword_138A40, &qword_109630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v10 = sub_106D20();
    sub_135C4(v10, qword_138830);
    v11 = sub_106D10();
    v12 = sub_106FB0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Failed to retrieve new sleep alarm after enabling.", v13, 2u);
    }

    v16 = 0;
    sub_25E4(&qword_138A30, &qword_109620);
    sub_106F60();
    return sub_16F70(v5, &qword_138A40, &qword_109630);
  }

  else
  {
    v16 = *v5;
    sub_25E4(&qword_138A30, &qword_109620);
    return sub_106F60();
  }
}

uint64_t sub_715B4(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v3 = sub_25E4(&qword_138A30, &qword_109620);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-1] - v5;
  v7 = sub_106D00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  sub_106CF0();
  sub_106CE0();
  (*(v8 + 8))(v10, v7);
  sub_262C(a2 + 48, v15);
  sub_1A8E0(v15, v15[3]);
  (*(v4 + 16))(v6, v14, v3);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v4 + 32))(v12 + v11, v6, v3);

  sub_106B10();

  return sub_2738(v15);
}

uint64_t sub_71814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a3;
  v4 = sub_25E4(&qword_138A30, &qword_109620);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = &v24 - v6;
  v7 = sub_25E4(&qword_138A38, &qword_109628);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_106D00();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v26 = a2;
  sub_106CF0();
  sub_106CE0();
  v14 = *(v11 + 8);
  v14(v13, v10);
  sub_14994(v27, v9, &qword_138A38, &qword_109628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v15 = sub_106D20();
    sub_135C4(v15, qword_138830);
    v16 = sub_106D10();
    v17 = sub_106FB0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Failed to disable sleep alarm.", v18, 2u);
    }

    v29[0] = 0;
    sub_106F60();
    return sub_16F70(v9, &qword_138A38, &qword_109628);
  }

  else
  {
    sub_106FF0();
    sub_106CF0();
    sub_106CE0();
    v14(v13, v10);
    v20 = v26;
    sub_262C(v26 + 48, v29);
    sub_1A8E0(v29, v29[3]);
    v21 = v25;
    (*(v5 + 16))(v25, v28, v4);
    v22 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    (*(v5 + 32))(v23 + v22, v21, v4);

    sub_106B20();

    return sub_2738(v29);
  }
}

uint64_t sub_71C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v4 = sub_25E4(&qword_138A40, &qword_109630);
  __chkstk_darwin(v4);
  v6 = (&v29 - v5);
  v7 = sub_106D00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  sub_106CF0();
  sub_106CE0();
  (*(v8 + 8))(v10, v7);
  sub_14994(a1, v6, &qword_138A40, &qword_109630);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = *v6;
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v17 = sub_106D20();
    sub_135C4(v17, qword_138830);
    v18 = v16;
    v19 = sub_106D10();
    v20 = sub_106FC0();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_16;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    if (v16)
    {
      v23 = [v18 identifier];
      if (v23)
      {
        v24 = v23;
        v25 = sub_106E20();
        v27 = v26;

        v23 = v25;
LABEL_15:
        v28 = sub_722E8(v23, v27, &v30);

        *(v21 + 4) = v28;
        _os_log_impl(&dword_0, v19, v20, "Found next sleep alarm %s", v21, 0xCu);
        sub_2738(v22);

LABEL_16:

        v30 = v16;
        sub_25E4(&qword_138A30, &qword_109620);
        return sub_106F60();
      }
    }

    else
    {
      v23 = 0;
    }

    v27 = 0xE000000000000000;
    goto LABEL_15;
  }

  if (qword_136D00 != -1)
  {
    swift_once();
  }

  v11 = sub_106D20();
  sub_135C4(v11, qword_138830);
  v12 = sub_106D10();
  v13 = sub_106FB0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Failed to retrieve new sleep alarm after disabling.", v14, 2u);
  }

  v30 = 0;
  sub_25E4(&qword_138A30, &qword_109620);
  sub_106F60();
  return sub_16F70(v6, &qword_138A40, &qword_109630);
}

uint64_t UndoChangeStatusFlow.deinit()
{

  sub_2738((v0 + 48));
  v1 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_operation;
  v2 = sub_106960();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction, &qword_137FD0, &unk_1087C0);
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason, &qword_137FE8, &unk_1087E0);
  return v0;
}

uint64_t UndoChangeStatusFlow.__deallocating_deinit()
{
  UndoChangeStatusFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_72210(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return UndoChangeStatusFlow.execute()(a1);
}

uint64_t sub_722AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UndoChangeStatusFlow(0);

  return sub_104B80();
}

unint64_t sub_722E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_723B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_135FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2738(v11);
  return v7;
}

unint64_t sub_723B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_724C0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1071E0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id *sub_724C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_7250C(a1, a2);
  sub_7263C(&off_12F4B8);
  return v3;
}

id *sub_7250C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_72728(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1071E0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_106E90();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_72728(v10, 0);
        result = sub_107180();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_7263C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_7279C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id *sub_72728(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_25E4(&qword_138A58, &qword_109648);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *sub_7279C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_25E4(&qword_138A58, &qword_109648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_728A8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = (*v1)[2];
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= (v3[3] >> 1))
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_AD7F0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_104D80();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = &v9[v2];
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_729D4(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_107270();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v2 >> 62))
  {
    v6 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_107270();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_72ACC(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_72ACC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_107270();
LABEL_9:
  result = sub_1071D0();
  *v2 = result;
  return result;
}

uint64_t sub_72B6C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_107270();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_107270();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_742BC(&qword_138A68, &qword_138A60, qword_109650);
          for (i = 0; i != v6; ++i)
          {
            sub_25E4(&qword_138A60, qword_109650);
            v9 = sub_72F14(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_74270();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_72CFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_107270();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_107270();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_742BC(&qword_138A50, &qword_1387B8, &qword_1094D8);
          for (i = 0; i != v6; ++i)
          {
            sub_25E4(&qword_1387B8, &qword_1094D8);
            v9 = sub_72E8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_106AA0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_72E8C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1071C0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_72F0C;
  }

  __break(1u);
  return result;
}

void (*sub_72F14(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1071C0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_74328;
  }

  __break(1u);
  return result;
}

char *sub_72F94(uint64_t a1, char *a2)
{
  v4 = sub_106200();
  __chkstk_darwin(v4 - 8);
  v14 = sub_106AC0();
  v15 = &protocol witness table for SiriAlarmManagerImpl;
  *&v13 = a1;
  type metadata accessor for ChangeAlarmStatusCATs_Async(0);
  sub_1061E0();
  *(a2 + 2) = sub_1060D0();
  type metadata accessor for ChangeAlarmStatusCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 3) = sub_1060D0();
  type metadata accessor for ModifyAllCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 4) = sub_1060D0();
  *(a2 + 5) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  v5 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_operation;
  v6 = enum case for AlarmNLv4Constants.AlarmVerb.enable(_:);
  v7 = sub_106960();
  (*(*(v7 - 8) + 104))(&a2[v5], v6, v7);
  *&a2[OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_alarmIds] = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  v9 = sub_104E10();
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  v11 = sub_1062D0();
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  sub_1AD44(&v13, (a2 + 48));
  return a2;
}

char *sub_7319C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_106200();
  __chkstk_darwin(v8 - 8);
  v19 = a3;
  v20 = a4;
  v9 = sub_1A924(&v18);
  (*(*(a3 - 8) + 32))(v9, a1, a3);
  type metadata accessor for ChangeAlarmStatusCATs_Async(0);
  sub_1061E0();
  *(a2 + 2) = sub_1060D0();
  type metadata accessor for ChangeAlarmStatusCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 3) = sub_1060D0();
  type metadata accessor for ModifyAllCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 4) = sub_1060D0();
  *(a2 + 5) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  v10 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_operation;
  v11 = enum case for AlarmNLv4Constants.AlarmVerb.enable(_:);
  v12 = sub_106960();
  (*(*(v12 - 8) + 104))(&a2[v10], v11, v12);
  *&a2[OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_alarmIds] = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  v14 = sub_104E10();
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  v16 = sub_1062D0();
  (*(*(v16 - 8) + 56))(&a2[v15], 1, 1, v16);
  sub_1AD44(&v18, (a2 + 48));
  return a2;
}

char *sub_733D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UndoChangeStatusFlow(0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_7319C(v9, v10, a3, a4);
}

uint64_t type metadata accessor for UndoChangeStatusFlow(uint64_t a1)
{
  result = qword_1388A0;
  if (!qword_1388A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7351C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_107370() & 1;
  }
}

uint64_t sub_73574(uint64_t a1)
{
  v2 = sub_25E4(&qword_137FF0, &unk_10C0F0);
  __chkstk_darwin(v2 - 8);
  v45 = &v41 - v3;
  v4 = sub_25E4(&qword_137FF8, &qword_1087F0);
  __chkstk_darwin(v4 - 8);
  v44 = &v41 - v5;
  v6 = sub_104DE0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&qword_137FE8, &unk_1087E0);
  v11 = __chkstk_darwin(v10 - 8);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_1062D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_14994(a1 + v19, v14, &qword_137FE8, &unk_1087E0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_16F70(v14, &qword_137FE8, &unk_1087E0);
    (*(v7 + 104))(v9, enum case for ActivityType.completed(_:), v6);
    if (qword_136D08 != -1)
    {
      swift_once();
    }

    v20 = sub_1062E0();
    sub_135C4(v20, qword_13B6E0);
    v21 = sub_104C40();
    v22 = v44;
    (*(*(v21 - 8) + 56))(v44, 1, 1, v21);
    if (qword_136D10 != -1)
    {
      swift_once();
    }

    v23 = sub_1062F0();
    v24 = sub_135C4(v23, qword_13B6F8);
    v25 = *(v23 - 8);
    v26 = v45;
    (*(v25 + 16))(v45, v24, v23);
    (*(v25 + 56))(v26, 0, 1, v23);
    v27 = v43;
    (*(v16 + 56))(v43, 1, 1, v15);
    sub_1062C0();
    sub_16F70(v27, &qword_137FE8, &unk_1087E0);
    sub_16F70(v26, &qword_137FF0, &unk_10C0F0);
    sub_16F70(v22, &qword_137FF8, &qword_1087F0);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v29 = v15;
    (*(v16 + 32))(v18, v14, v15);
    v30 = *(v7 + 104);
    v42 = v9;
    v30(v9, enum case for ActivityType.failed(_:), v6);
    v41 = v6;
    v31 = v18;
    if (qword_136D08 != -1)
    {
      swift_once();
    }

    v32 = sub_1062E0();
    sub_135C4(v32, qword_13B6E0);
    v33 = sub_104C40();
    v34 = v44;
    (*(*(v33 - 8) + 56))(v44, 1, 1, v33);
    if (qword_136D10 != -1)
    {
      swift_once();
    }

    v35 = sub_1062F0();
    v36 = sub_135C4(v35, qword_13B6F8);
    v37 = *(v35 - 8);
    v38 = v45;
    (*(v37 + 16))(v45, v36, v35);
    (*(v37 + 56))(v38, 0, 1, v35);
    v39 = v43;
    (*(v16 + 16))(v43, v31, v29);
    (*(v16 + 56))(v39, 0, 1, v29);
    v40 = v42;
    sub_1062C0();
    sub_16F70(v39, &qword_137FE8, &unk_1087E0);
    sub_16F70(v38, &qword_137FF0, &unk_10C0F0);
    sub_16F70(v34, &qword_137FF8, &qword_1087F0);
    (*(v7 + 8))(v40, v41);
    return (*(v16 + 8))(v31, v29);
  }
}

uint64_t sub_73CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_73D3C(uint64_t a1)
{
  sub_106960();
  if (v1 <= 0x3F)
  {
    sub_73EB0(319, &qword_138038, &type metadata accessor for PluginAction);
    if (v2 <= 0x3F)
    {
      sub_73EB0(319, &unk_1388B0, &type metadata accessor for SiriTimeEventSender.ReasonDescription);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_73EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1070E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_73FEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_740FC(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_25E4(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_741E4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_25E4(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = v4 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a4(a1, v7, v8);
}

unint64_t sub_74270()
{
  result = qword_1375B8;
  if (!qword_1375B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1375B8);
  }

  return result;
}

uint64_t sub_742BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_14EB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7436C(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v5 = sub_106200();
  __chkstk_darwin(v5 - 8);
  a2(0);
  sub_1061E0();
  result = sub_1060D0();
  *a3 = result;
  return result;
}

uint64_t sub_74468()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  sub_25E4(&qword_137880, &unk_108290);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_109670;
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x800000000010C590;
  sub_14994(v0, v3, &qword_137598, &unk_107EB0);
  v5 = sub_106160();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_16F70(v3, &qword_137598, &unk_107EB0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v5;
    v7 = sub_1A924((v4 + 48));
    (*(v6 + 32))(v7, v3, v5);
  }

  *(v4 + 80) = 0x6D72616C61;
  *(v4 + 88) = 0xE500000000000000;
  MultipleParameters = type metadata accessor for CreateAlarmCreateMultipleParameters(0);
  v9 = *(v0 + MultipleParameters[5]);
  if (v9)
  {
    v10 = type metadata accessor for AlarmAlarm(0);
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v11;
  *(v4 + 120) = v10;
  *(v4 + 128) = 7368801;
  *(v4 + 136) = 0xE300000000000000;
  v12 = *(v0 + MultipleParameters[6]);
  if (v12)
  {
    v13 = sub_106100();
    v14 = v12;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(v4 + 144) = v14;
  *(v4 + 168) = v13;
  *(v4 + 176) = 0xD000000000000015;
  *(v4 + 184) = 0x800000000010D380;
  *(v4 + 192) = *(v0 + MultipleParameters[7]);
  *(v4 + 216) = &type metadata for Bool;
  *(v4 + 224) = 0xD000000000000014;
  *(v4 + 232) = 0x800000000010D3A0;
  *(v4 + 240) = *(v0 + MultipleParameters[8]);
  *(v4 + 264) = &type metadata for Bool;
  strcpy((v4 + 272), "hideSleepAlarm");
  *(v4 + 287) = -18;
  *(v4 + 288) = *(v0 + MultipleParameters[9]);
  *(v4 + 312) = &type metadata for Bool;
  *(v4 + 320) = 0xD000000000000014;
  *(v4 + 328) = 0x800000000010CA10;
  *(v4 + 336) = *(v0 + MultipleParameters[10]);
  *(v4 + 360) = &type metadata for Bool;
  *(v4 + 368) = 0x736D657469;
  *(v4 + 376) = 0xE500000000000000;
  v15 = *(v0 + MultipleParameters[11]);
  v16 = sub_25E4(&qword_137B40, &unk_108390);
  *(v4 + 384) = v15;
  *(v4 + 408) = v16;
  *(v4 + 416) = 0xD000000000000017;
  *(v4 + 424) = 0x800000000010D3C0;
  *(v4 + 432) = *(v0 + MultipleParameters[12]);
  *(v4 + 456) = &type metadata for Bool;
  *(v4 + 464) = 0x616C417065656C73;
  *(v4 + 472) = 0xEA00000000006D72;
  v17 = *(v0 + MultipleParameters[13]);
  if (v17)
  {
    v18 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    v18 = 0;
    *(v4 + 488) = 0;
    *(v4 + 496) = 0;
  }

  *(v4 + 480) = v17;
  *(v4 + 504) = v18;

  return v4;
}

uint64_t sub_74804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_25E4(&qword_137880, &unk_108290);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_109680;
  *(v8 + 32) = 0x6D72616C61;
  *(v8 + 40) = 0xE500000000000000;
  if (a1)
  {
    v9 = type metadata accessor for AlarmAlarm(0);
    v10 = a1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  *(v8 + 48) = v10;
  *(v8 + 72) = v9;
  *(v8 + 80) = 7368801;
  *(v8 + 88) = 0xE300000000000000;
  if (a2)
  {
    v11 = sub_106100();
    v12 = a2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v12;
  *(v8 + 120) = v11;
  *(v8 + 128) = 0xD000000000000015;
  *(v8 + 136) = 0x800000000010D380;
  *(v8 + 144) = a3 & 1;
  *(v8 + 168) = &type metadata for Bool;
  *(v8 + 176) = 0xD000000000000014;
  *(v8 + 184) = 0x800000000010D3A0;
  *(v8 + 192) = BYTE1(a3) & 1;
  *(v8 + 216) = &type metadata for Bool;
  *(v8 + 224) = 0xD000000000000014;
  *(v8 + 232) = 0x800000000010CA10;
  *(v8 + 240) = BYTE2(a3) & 1;
  *(v8 + 264) = &type metadata for Bool;
  *(v8 + 272) = 0xD000000000000017;
  *(v8 + 280) = 0x800000000010D3C0;
  *(v8 + 288) = HIBYTE(a3) & 1;
  *(v8 + 312) = &type metadata for Bool;
  *(v8 + 320) = 0x616C417065656C73;
  *(v8 + 328) = 0xEA00000000006D72;
  if (a4)
  {
    v13 = type metadata accessor for AlarmAlarm(0);
    v14 = a4;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v8 + 344) = 0;
    *(v8 + 352) = 0;
  }

  *(v8 + 336) = v14;
  *(v8 + 360) = v13;

  return v8;
}

uint64_t sub_749DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25E4(&qword_137880, &unk_108290);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_109690;
  *(v6 + 32) = 0x6D72616C61;
  *(v6 + 40) = 0xE500000000000000;
  if (a1)
  {
    v7 = type metadata accessor for AlarmAlarm(0);
    v8 = a1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  *(v6 + 48) = v8;
  *(v6 + 72) = v7;
  *(v6 + 80) = 7368801;
  *(v6 + 88) = 0xE300000000000000;
  if (a2)
  {
    v9 = sub_106100();
    v10 = a2;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v10;
  *(v6 + 120) = v9;
  *(v6 + 128) = 0x616C417065656C73;
  *(v6 + 136) = 0xEA00000000006D72;
  if (a3)
  {
    v11 = type metadata accessor for AlarmAlarm(0);
    v12 = a3;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v12;
  *(v6 + 168) = v11;

  return v6;
}

uint64_t sub_74B10(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_25E4(&qword_137598, &unk_107EB0);
  v3[5] = swift_task_alloc();
  type metadata accessor for CreateAlarmPromptForTimeParameters(0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_74BDC, 0, 0);
}

uint64_t sub_74BDC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  v4 = sub_106160();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2, 1, 1, v4);
  v3(v2);
  sub_25E4(&qword_137880, &unk_108290);
  v6 = swift_allocObject();
  v0[7] = v6;
  *(v6 + 16) = xmmword_107FC0;
  *(v6 + 32) = 0x6C6562616CLL;
  *(v6 + 40) = 0xE500000000000000;
  sub_14994(v2, v1, &qword_137598, &unk_107EB0);
  v7 = (*(v5 + 48))(v1, 1, v4);
  v8 = v0[5];
  if (v7 == 1)
  {
    sub_16F70(v0[5], &qword_137598, &unk_107EB0);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v4;
    v9 = sub_1A924((v6 + 48));
    (*(v5 + 32))(v9, v8, v4);
  }

  v12 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_74DF4;

  return v12(0xD000000000000019, 0x800000000010D360, v6);
}

uint64_t sub_74DF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_74FD0;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_74F40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_74F40()
{
  sub_757A4(v0[6], type metadata accessor for CreateAlarmPromptForTimeParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_74FD0()
{
  sub_757A4(*(v0 + 48), type metadata accessor for CreateAlarmPromptForTimeParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7505C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_25E4(&qword_137598, &unk_107EB0);
  v3[5] = swift_task_alloc();
  type metadata accessor for CreateAlarmSleepUnsupportedParameters(0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_75128, 0, 0);
}

uint64_t sub_75128()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  v4 = sub_106160();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2, 1, 1, v4);
  v3(v2);
  sub_25E4(&qword_137880, &unk_108290);
  v6 = swift_allocObject();
  v0[7] = v6;
  *(v6 + 16) = xmmword_107FC0;
  *(v6 + 32) = 0xD000000000000014;
  *(v6 + 40) = 0x800000000010D320;
  sub_14994(v2, v1, &qword_137598, &unk_107EB0);
  v7 = (*(v5 + 48))(v1, 1, v4);
  v8 = v0[5];
  if (v7 == 1)
  {
    sub_16F70(v0[5], &qword_137598, &unk_107EB0);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v4;
    v9 = sub_1A924((v6 + 48));
    (*(v5 + 32))(v9, v8, v4);
  }

  v12 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_7534C;

  return v12(0xD00000000000001CLL, 0x800000000010D340, v6);
}

uint64_t sub_7534C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_75528;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_75498;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_75498()
{
  sub_757A4(v0[6], type metadata accessor for CreateAlarmSleepUnsupportedParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_75528()
{
  sub_757A4(*(v0 + 48), type metadata accessor for CreateAlarmSleepUnsupportedParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_755B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_14994(a1, v11, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v12;
}

uint64_t sub_757A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_75838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_75914(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

void sub_759D8(uint64_t a1)
{
  sub_75B74(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_75B74(319, &unk_137A20, type metadata accessor for AlarmAlarm, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_75B74(319, &qword_137A10, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_75B74(319, &qword_137A18, type metadata accessor for AlarmAlarm, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_75B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_75C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_75CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_75D28(uint64_t a1)
{
  sub_75B74(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_75DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v95 = a3;
  v98 = sub_106410();
  v94 = *(v98 - 1);
  __chkstk_darwin(v98);
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&qword_137598, &unk_107EB0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v87 - v14;
  v16 = __chkstk_darwin(v13);
  v96 = v87 - v17;
  v18 = __chkstk_darwin(v16);
  v97 = v87 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v87 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v87 - v24;
  __chkstk_darwin(v23);
  v27 = v87 - v26;
  v101 = sub_78C9C();
  if (!v101)
  {
    return 0;
  }

  v28 = [v3 sleepAlarmAttribute];
  v29 = v28;
  if (v28)
  {
  }

  v89 = v29;
  v91 = a2;
  v92 = v15;
  v93 = v12;
  if (a1)
  {
    v30 = a1;
  }

  else
  {
    type metadata accessor for AlarmAlarm.Builder(0);
    swift_allocObject();
    v30 = sub_7F454();
  }

  v87[1] = sub_ED47C(v4);
  v90 = v32;
  v87[0] = v33;
  v88 = v34;
  v35 = v4;
  v36 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_action;
  swift_beginAccess();
  sub_14994(v30 + v36, v27, &qword_137598, &unk_107EB0);

  v37 = sub_106160();
  v102 = *(v37 - 8);
  v38 = *(v102 + 48);
  v99 = v37;
  v39 = v38(v27, 1);
  sub_16F70(v27, &qword_137598, &unk_107EB0);
  v100 = v35;
  if (v39 == 1)
  {
    v40 = [v35 sleepAlarmAttribute];
    if (v40)
    {

      v41 = &enum case for PunchOutApp.sleepAlarm(_:);
    }

    else
    {
      v41 = &enum case for PunchOutApp.alarm(_:);
    }

    v42 = v94;
    v43 = v98;
    (*(v94 + 104))(v8, *v41, v98);
    sub_1063F0();
    (*(v42 + 8))(v8, v43);
    swift_beginAccess();
    sub_7C2E0(v25, v30 + v36);
    swift_endAccess();
    sub_16F70(v25, &qword_137598, &unk_107EB0);
    v35 = v100;
  }

  v44 = [v35 label];
  if (v44)
  {
    v45 = v44;
    sub_106E20();

    sub_106E50();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = v102 + 56;
  v98 = *(v102 + 56);
  (v98)(v22, v46, 1, v99);
  v48 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_label;
  swift_beginAccess();
  sub_7C2E0(v22, v30 + v48);
  swift_endAccess();
  sub_16F70(v22, &qword_137598, &unk_107EB0);
  *(v30 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_time) = v101;

  v49 = [v35 enabled];
  v102 = v47;
  if (v49)
  {

    v50 = [v35 enabled];
    sub_1F7B8();
    v51.super.super.isa = sub_107090(1).super.super.isa;
    if (v50)
    {
      v52 = sub_1070A0();

      v51.super.super.isa = v50;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 0;
  }

  *(v30 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enabled) = v52 & 1;
  v53 = sub_EA7B0(v35, 1);
  v54 = objc_opt_self();
  sub_106560();
  sub_106550();
  sub_106540();

  sub_1A8E0(v103, v104);
  v55 = sub_104CE0();
  v56 = [v54 runSiriKitExecutorCommandWithContext:v55 payload:v53];

  sub_2738(v103);
  v57 = v97;
  sub_7901C(v97);

  v58 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enableAction;
  swift_beginAccess();
  sub_7C2E0(v57, v30 + v58);
  swift_endAccess();
  sub_16F70(v57, &qword_137598, &unk_107EB0);
  v59 = sub_EA7BC(v100, 1);
  sub_106550();
  sub_106540();

  sub_1A8E0(v103, v104);
  v60 = v57;
  v61 = sub_104CE0();
  v62 = v100;
  v63 = [v54 runSiriKitExecutorCommandWithContext:v61 payload:v59];

  sub_2738(v103);
  sub_7901C(v57);

  v64 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_disableAction;
  swift_beginAccess();
  sub_7C2E0(v57, v30 + v64);
  swift_endAccess();
  sub_16F70(v57, &qword_137598, &unk_107EB0);
  v65 = [v62 repeatSchedule];
  if (v65)
  {
    v66 = v65;
    sub_1069A0();
    sub_106EE0();
  }

  v67 = v90;
  v68 = v89 != 0;
  v69 = sub_1070D0();

  *(v30 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isRecurrent) = v69 & 1;
  *(v30 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSleepAlarm) = v68;
  *(v30 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_days) = sub_79628();

  sub_79DB4(v95, v57);
  v70 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_labelForSnippetWithRecurrence;
  swift_beginAccess();
  sub_7C2E0(v57, v30 + v70);
  swift_endAccess();
  sub_16F70(v57, &qword_137598, &unk_107EB0);
  *(v30 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSetWitchingHoursForToday) = sub_D17AC(v91) & 1;
  sub_EE12C(v62);
  v71 = v99;
  if (v72)
  {
    v73 = v96;
    sub_106E50();

    v74 = 0;
  }

  else
  {
    v74 = 1;
    v73 = v96;
  }

  v75 = v98;
  (v98)(v73, v74, 1, v71);
  v76 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_formattedTimeString;
  swift_beginAccess();
  sub_7C2E0(v73, v30 + v76);
  swift_endAccess();
  sub_16F70(v73, &qword_137598, &unk_107EB0);
  if (!v67)
  {
    v80 = v92;
    v75(v92, 1, 1, v71);
    v81 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_timeOnlyString;
    swift_beginAccess();
    sub_7C2E0(v80, v30 + v81);
    swift_endAccess();
    sub_16F70(v80, &qword_137598, &unk_107EB0);
LABEL_32:
    v79 = v93;
    v75(v93, 1, 1, v71);
    goto LABEL_33;
  }

  v77 = v92;
  sub_106E50();

  v75(v77, 0, 1, v71);
  v78 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_timeOnlyString;
  swift_beginAccess();
  sub_7C2E0(v77, v30 + v78);
  swift_endAccess();
  sub_16F70(v77, &qword_137598, &unk_107EB0);

  if (!v88)
  {
    v75 = v98;
    goto LABEL_32;
  }

  v79 = v93;
  sub_106E50();

  v75 = v98;
  (v98)(v79, 0, 1, v71);
LABEL_33:
  v82 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_meridian;
  swift_beginAccess();
  sub_7C2E0(v79, v30 + v82);
  swift_endAccess();
  sub_16F70(v79, &qword_137598, &unk_107EB0);
  v83 = [v62 identifier];
  if (v83)
  {
    v84 = v83;
    sub_106E20();
  }

  sub_106A30();

  sub_106140();
  v75(v60, 0, 1, v71);
  v85 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_alarmIDString;
  swift_beginAccess();
  sub_1A814(v60, v30 + v85);
  swift_endAccess();
  type metadata accessor for AlarmAlarm(0);
  swift_allocObject();
  v31 = sub_7F738(v30);

  return v31;
}

uint64_t sub_769D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v112 = a4;
  v113 = a3;
  v114 = a2;
  v125 = a5;
  v111 = sub_104700();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_106410();
  v105 = *(v8 - 8);
  v106 = v8;
  __chkstk_darwin(v8);
  v104 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = __chkstk_darwin(v10 - 8);
  v115 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v117 = v96 - v13;
  v14 = sub_25E4(&qword_137518, &qword_107E28);
  __chkstk_darwin(v14 - 8);
  v116 = v96 - v15;
  v16 = sub_25E4(&qword_137598, &unk_107EB0);
  v17 = __chkstk_darwin(v16 - 8);
  v103 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = v96 - v20;
  __chkstk_darwin(v19);
  v23 = v96 - v22;
  v24 = sub_106160();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v102 = v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v122 = v96 - v29;
  __chkstk_darwin(v28);
  v124 = v96 - v30;
  v31 = sub_104670();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v120 = v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = v96 - v35;
  sub_106210();
  v118 = v5;
  v37 = sub_75DD4(0, v36, 0);
  v119 = v32;
  v38 = *(v32 + 8);
  v121 = v31;
  v107 = v38;
  v108 = v32 + 8;
  v38(v36, v31);
  if (!v37)
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v41 = sub_106D20();
    sub_135C4(v41, qword_138C90);
    v42 = sub_106D10();
    v43 = sub_106FB0();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v125;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v42, v43, "Can NOT retrieve alarm data.", v46, 2u);
    }

    goto LABEL_15;
  }

  v101 = a1;
  sub_14994(v37 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString, v23, &qword_137598, &unk_107EB0);
  v39 = *(v25 + 48);
  v40 = v39(v23, 1, v24);
  v123 = v37;
  if (v40 == 1)
  {
    v21 = v23;
LABEL_10:
    v45 = v125;
    sub_16F70(v21, &qword_137598, &unk_107EB0);
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v50 = sub_106D20();
    sub_135C4(v50, qword_138C90);
    v42 = sub_106D10();
    v51 = sub_106FB0();
    if (os_log_type_enabled(v42, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v42, v51, "Can NOT retrieve alarm formattedTimeString or labelForSnippetWithRecurrence.", v52, 2u);
    }

LABEL_15:

LABEL_16:
    v53 = 1;
    goto LABEL_17;
  }

  v100 = v36;
  v48 = v25 + 32;
  v47 = *(v25 + 32);
  v49 = v124;
  v47(v124, v23, v24);
  sub_14994(v37 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence, v21, &qword_137598, &unk_107EB0);
  v98 = v39;
  if (v39(v21, 1, v24) == 1)
  {
    (*(v25 + 8))(v49, v24);
    goto LABEL_10;
  }

  v97 = v25;
  v56 = v122;
  v47(v122, v21, v24);
  v57 = v116;
  v58 = v118;
  sub_EC644(v118, v116);
  v59 = v119;
  v60 = v121;
  v61 = (*(v119 + 48))(v57, 1, v121);
  v99 = v24;
  if (v61 == 1)
  {
    sub_16F70(v57, &qword_137518, &qword_107E28);
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v62 = sub_106D20();
    sub_135C4(v62, qword_138C90);
    v63 = sub_106D10();
    v64 = sub_106FB0();
    v65 = os_log_type_enabled(v63, v64);
    v45 = v125;
    v66 = v97;
    if (v65)
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_0, v63, v64, "Can NOT retrieve alarm Date.", v67, 2u);
    }

    v68 = *(v66 + 8);
    v69 = v99;
    v68(v56, v99);
    v68(v124, v69);
    goto LABEL_16;
  }

  v96[0] = v47;
  v96[1] = v48;
  (*(v59 + 32))(v120, v57, v60);
  v70 = v105;
  v71 = v106;
  v72 = *(v105 + 104);
  v73 = v104;
  v72(v104, enum case for PunchOutApp.alarm(_:), v106);
  v74 = v117;
  sub_106400();
  v75 = *(v70 + 8);
  v75(v73, v71);
  v76 = [v58 sleepAlarmAttribute];
  if (v76)
  {

    v72(v73, enum case for PunchOutApp.sleepAlarm(_:), v71);
    v77 = v115;
    sub_106400();
    v75(v73, v71);
    sub_16F70(v74, &unk_137430, &qword_107DC0);
    sub_7C278(v77, v74, &unk_137430, &qword_107DC0);
  }

  v78 = v100;
  if (*(v123 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time))
  {

    v79 = v103;
    sub_106050();
    v80 = v99;
    v81 = v98(v79, 1, v99);
    v82 = v120;
    if (v81 == 1)
    {

      sub_16F70(v79, &qword_137598, &unk_107EB0);
      v116 = 0;
      v106 = 0xE000000000000000;
    }

    else
    {
      v83 = v102;
      (v96[0])(v102, v79, v80);
      sub_106150();
      v116 = sub_106E60();
      v106 = v84;

      (*(v97 + 8))(v83, v99);
    }
  }

  else
  {
    v116 = 0;
    v106 = 0xE000000000000000;
    v82 = v120;
  }

  v85 = [v118 identifier];
  if (v85)
  {
    v86 = v85;
    v118 = sub_106E20();
    v114 = v87;
  }

  else
  {
    v118 = 0;
    v114 = 0xE000000000000000;
  }

  v105 = sub_106150();
  v104 = v88;
  (*(v119 + 16))(v78, v82, v121);
  LODWORD(v119) = *(v123 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enabled);
  v103 = sub_106150();
  v102 = v89;
  v90 = qword_136ED0;

  if (v90 != -1)
  {
    swift_once();
  }

  v91 = v111;
  v92 = sub_135C4(v111, qword_13AF68);
  (*(v109 + 16))(v110, v92, v91);
  v93 = v117;
  sub_14994(v117, v115, &unk_137430, &qword_107DC0);
  v45 = v125;
  sub_106AD0();

  sub_16F70(v93, &unk_137430, &qword_107DC0);
  v107(v120, v121);
  v94 = *(v97 + 8);
  v95 = v99;
  v94(v122, v99);
  v94(v124, v95);
  v53 = 0;
LABEL_17:
  v54 = sub_106AE0();
  return (*(*(v54 - 8) + 56))(v45, v53, 1, v54);
}

uint64_t sub_77720(uint64_t a1)
{
  v2 = v1;
  v4 = sub_104670();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33[-1] - v9;
  v11 = [v2 identifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_106E20();
    v15 = v14;

    sub_EB5A8(a1, v13, v15);

    swift_getObjectType();
    sub_79224(v10);
    swift_unknownObjectRelease();
    type metadata accessor for AlarmAlarm.Builder(0);
    swift_allocObject();
    v16 = sub_7F454();
    v17 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_action;
    swift_beginAccess();
    sub_7C2E0(v10, v16 + v17);
    swift_endAccess();

    sub_106210();
    v18 = sub_75DD4(v16, v7, 0);

    (*(v5 + 8))(v7, v4);
    sub_16F70(v10, &qword_137598, &unk_107EB0);
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v19 = sub_106D20();
    sub_135C4(v19, qword_138C90);
    v20 = v2;
    v21 = sub_106D10();
    v22 = sub_106FB0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136315138;
      v25 = v20;
      v26 = [v25 description];
      v27 = sub_106E20();
      v29 = v28;

      v30 = sub_722E8(v27, v29, v33);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_0, v21, v22, "Alarm ID was nil for alarm: %s", v23, 0xCu);
      sub_2738(v24);
    }

    return 0;
  }

  return v18;
}

uint64_t sub_77AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v84 = a2;
  v3 = sub_104700();
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v74 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E4(&qword_137518, &qword_107E28);
  __chkstk_darwin(v5 - 8);
  v78 = v67 - v6;
  v7 = sub_25E4(&qword_137598, &unk_107EB0);
  v8 = __chkstk_darwin(v7 - 8);
  v83 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v67 - v10;
  v12 = sub_106160();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v67 - v17;
  v19 = sub_104670();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v80 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v67 - v23;
  sub_106210();
  v79 = v2;
  v25 = sub_75DD4(0, v24, 0);
  v77 = v20;
  v27 = *(v20 + 8);
  v26 = v20 + 8;
  v81 = v19;
  v72 = v27;
  v27(v24, v19);
  if (!v25)
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v31 = sub_106D20();
    sub_135C4(v31, qword_138C90);
    v32 = sub_106D10();
    v33 = sub_106FB0();
    v34 = os_log_type_enabled(v32, v33);
    v30 = v84;
    if (v34)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v32, v33, "Can NOT retrieve alarm data.", v35, 2u);
    }

    goto LABEL_15;
  }

  v71 = v16;
  v82 = v18;
  sub_14994(v25 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString, v11, &qword_137598, &unk_107EB0);
  v28 = *(v13 + 48);
  if (v28(v11, 1, v12) == 1)
  {
    v29 = v11;
    v30 = v84;
LABEL_10:
    sub_16F70(v29, &qword_137598, &unk_107EB0);
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v38 = sub_106D20();
    sub_135C4(v38, qword_138C90);
    v32 = sub_106D10();
    v39 = sub_106FB0();
    if (os_log_type_enabled(v32, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v32, v39, "Can NOT retrieve alarm formattedTimeString or labelForSnippetWithRecurrence.", v40, 2u);
    }

LABEL_15:

LABEL_16:
    v41 = 1;
    goto LABEL_17;
  }

  v69 = v26;
  v36 = v82;
  v37 = *(v13 + 32);
  v37();
  v70 = v25;
  v29 = v83;
  sub_14994(v25 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence, v83, &qword_137598, &unk_107EB0);
  if (v28(v29, 1, v12) == 1)
  {
    (*(v13 + 8))(v36, v12);
    v30 = v84;
    goto LABEL_10;
  }

  v68 = v13;
  v83 = v12;
  (v37)(v71, v29, v12);
  v45 = v78;
  v44 = v79;
  sub_EC644(v79, v78);
  v46 = v77;
  v47 = v81;
  if ((*(v77 + 48))(v45, 1, v81) == 1)
  {
    sub_16F70(v45, &qword_137518, &qword_107E28);
    v30 = v84;
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v48 = sub_106D20();
    sub_135C4(v48, qword_138C90);
    v49 = sub_106D10();
    v50 = sub_106FB0();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v83;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v49, v50, "Can NOT retrieve alarm Date.", v53, 2u);
    }

    v54 = *(v68 + 8);
    v54(v71, v52);
    v54(v82, v52);
    goto LABEL_16;
  }

  v55 = v80;
  (*(v46 + 32))(v80, v45, v47);
  v56 = [v44 identifier];
  if (v56)
  {
    v57 = v56;
    v58 = sub_106E20();
    v78 = v59;
    v79 = v58;
  }

  else
  {
    v78 = 0xE000000000000000;
    v79 = 0;
  }

  v60 = sub_106150();
  v67[0] = v61;
  v67[1] = v60;
  (*(v46 + 16))(v24, v55, v47);
  v62 = v71;
  sub_106150();
  sub_106950();
  if (qword_136ED0 != -1)
  {
    swift_once();
  }

  v63 = v76;
  v64 = sub_135C4(v76, qword_13AF68);
  (*(v75 + 16))(v74, v64, v63);
  v30 = v84;
  sub_106B80();

  v72(v80, v47);
  v65 = *(v68 + 8);
  v66 = v83;
  v65(v62, v83);
  v65(v82, v66);
  v41 = 0;
LABEL_17:
  v42 = sub_106B90();
  return (*(*(v42 - 8) + 56))(v30, v41, 1, v42);
}

uint64_t sub_78384()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_138C90);
  sub_135C4(v0, qword_138C90);
  return sub_106A60();
}

void sub_783D0()
{
  v0 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v26 - v1;
  v3 = sub_104640();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  sub_78768(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_16F70(v2, &unk_137430, &qword_107DC0);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    v10 = [objc_allocWithZone(SAAlarmObject) init];
    sub_104610(v11);
    v13 = v12;
    [v10 setIdentifier:v12];

    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v14 = sub_106D20();
    sub_135C4(v14, qword_138C90);
    v15 = v10;
    v16 = sub_106D10();
    v17 = sub_106FC0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      v27 = v18;
      *v18 = 136315138;
      v19 = [v15 identifier];

      if (v19)
      {
        sub_104620();

        v20 = sub_104600();
        v22 = v21;
        v23 = *(v4 + 8);
        v23(v7, v3);
        v24 = sub_722E8(v20, v22, &v29);

        v25 = v27;
        *(v27 + 1) = v24;
        _os_log_impl(&dword_0, v16, v17, "toSAAlarm: %s", v25, 0xCu);
        sub_2738(v28);

        v23(v9, v3);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }
  }
}

uint64_t sub_78768@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_106BB0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_104550();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 identifier];
  if (v10)
  {
    v11 = v10;
    sub_106E20();
  }

  v12 = sub_106A30();
  v14 = v13;

  if (v14)
  {
    v45 = v12;
    v46 = v14;
    sub_104530();
    sub_7C40C();
    v15 = sub_107100();
    v17 = v16;
    (*(v7 + 8))(v9, v6);

    if (v17)
    {
      (*(v3 + 104))(v5, enum case for AlarmInternalIdentifierPrefix.idPrefix(_:), v2);
      v18 = sub_106BA0();
      v20 = v19;
      (*(v3 + 8))(v5, v2);
      v45 = v18;
      v46 = v20;

      v48._countAndFlagsBits = v15;
      v48._object = v17;
      sub_106E80(v48);

      sub_104630();
    }

    else
    {
      if (qword_136D28 != -1)
      {
        swift_once();
      }

      v33 = sub_106D20();
      sub_135C4(v33, qword_138C90);
      v34 = sub_106D10();
      v35 = sub_106FB0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_0, v34, v35, "toAlarmId: Unable to add percent encoding to URL", v36, 2u);
      }

      v37 = sub_104640();
      return (*(*(v37 - 8) + 56))(v44, 1, 1, v37);
    }
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v22 = sub_106D20();
    sub_135C4(v22, qword_138C90);
    v23 = v1;
    v24 = sub_106D10();
    v25 = sub_106FB0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v45 = v27;
      *v26 = 136315138;
      v28 = [v23 identifier];
      if (v28)
      {
        v29 = v28;
        v30 = sub_106E20();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0xE000000000000000;
      }

      v38 = sub_722E8(v30, v32, &v45);

      *(v26 + 4) = v38;
      _os_log_impl(&dword_0, v24, v25, "INAlarm+Additions Bad alarm identifier: %s", v26, 0xCu);
      sub_2738(v27);
    }

    v39 = sub_104640();
    v40 = *(*(v39 - 8) + 56);
    v41 = v39;
    v42 = v44;

    return v40(v42, 1, 1, v41);
  }
}

uint64_t sub_78C9C()
{
  v1 = v0;
  v2 = sub_1047D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E4(&qword_137518, &qword_107E28);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_104670();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  sub_106240();
  sub_106210();
  sub_CF984(v5, v13, v1, v8);
  v16 = *(v10 + 8);
  v16(v13, v9);
  (*(v3 + 8))(v5, v2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_16F70(v8, &qword_137518, &qword_107E28);
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v17 = sub_106D20();
    sub_135C4(v17, qword_138C90);
    v18 = sub_106D10();
    v19 = sub_106FB0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Can't get nextFiringDate.", v20, 2u);
    }

    return 0;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    sub_106090();
    swift_allocObject();
    sub_106080();
    v22 = v16;
    sub_104660();
    sub_106070();

    v23 = sub_106060();

    v22(v15, v9);
    return v23;
  }
}

uint64_t sub_7901C@<X0>(uint64_t a1@<X8>)
{
  sub_1070B0();
  if (v3)
  {
    sub_106E50();

    v4 = 0;
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v5 = sub_106D20();
    sub_135C4(v5, qword_138C90);
    v6 = v1;
    v7 = sub_106D10();
    v8 = sub_106FB0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      v11 = v6;
      v12 = [v11 description];
      v13 = sub_106E20();
      v15 = v14;

      v16 = sub_722E8(v13, v15, &v20);

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Failed to serialize disambiguation action: %s", v9, 0xCu);
      sub_2738(v10);
    }

    v4 = 1;
  }

  v17 = sub_106160();
  v18 = *(*(v17 - 8) + 56);

  return v18(a1, v4, 1, v17);
}

uint64_t sub_79224@<X0>(uint64_t a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRetain();
    sub_1070B0();
    if (v5)
    {
      sub_106E50();
      swift_unknownObjectRelease();

      v6 = sub_106160();
      v7 = *(*(v6 - 8) + 56);
      v8 = v6;
      v9 = a2;
      v10 = 0;
    }

    else
    {
      if (qword_136D28 != -1)
      {
        swift_once();
      }

      v21 = sub_106D20();
      sub_135C4(v21, qword_138C90);
      swift_unknownObjectRetain();
      v22 = sub_106D10();
      v23 = sub_106FB0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v32 = v25;
        *v24 = 136315138;
        swift_unknownObjectRetain();
        v26 = [v4 description];
        v27 = sub_106E20();
        v29 = v28;
        swift_unknownObjectRelease();

        v30 = sub_722E8(v27, v29, &v32);

        *(v24 + 4) = v30;
        _os_log_impl(&dword_0, v22, v23, "Failed to serialize disambiguation action: %s", v24, 0xCu);
        sub_2738(v25);
      }

      swift_unknownObjectRelease();

      v31 = sub_106160();
      v7 = *(*(v31 - 8) + 56);
      v8 = v31;
      v9 = a2;
      v10 = 1;
    }

    return v7(v9, v10, 1, v8);
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v11 = sub_106D20();
    sub_135C4(v11, qword_138C90);
    swift_unknownObjectRetain();
    v12 = sub_106D10();
    v13 = sub_106FB0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136315138;
      swift_unknownObjectRetain();
      v16 = sub_106E30();
      v18 = sub_722E8(v16, v17, &v32);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_0, v12, v13, "Unable to cast SAClientBoundCommand to SABaseCommand: %s", v14, 0xCu);
      sub_2738(v15);
    }

    v19 = sub_106160();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

id *sub_79628()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v46 = &v40 - v5;
  v45 = sub_25E4(&qword_138CB8, &qword_1097D0);
  __chkstk_darwin(v45);
  v7 = &v40 - v6;
  v8 = sub_106160();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = sub_106200();
  __chkstk_darwin(v14);
  v15 = [v0 repeatSchedule];
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = v15;
  v41 = v13;
  sub_1069A0();
  v17 = sub_106EE0();

  type metadata accessor for AlarmBaseCATs_Async(0);
  sub_25E4(&qword_138CC0, &qword_1097D8);
  v18 = swift_allocObject();
  v40 = xmmword_107FC0;
  *(v18 + 16) = xmmword_107FC0;
  sub_1061F0();
  v47 = v18;
  sub_7C350();
  sub_25E4(&qword_138CD0, &qword_1097E0);
  sub_7C3A8();
  sub_107110();
  v19 = sub_1060D0();
  if (qword_136D28 != -1)
  {
    swift_once();
  }

  v20 = sub_106D20();
  sub_135C4(v20, qword_138C90);

  v21 = sub_106D10();
  v22 = sub_106FC0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109632;
    *(v23 + 4) = Array<A>.isWeekdays.getter(v17) & 1;
    *(v23 + 8) = 1024;
    *(v23 + 10) = Array<A>.isWeekends.getter(v17) & 1;
    *(v23 + 14) = 1024;
    *(v23 + 16) = Array<A>.isEveryday.getter(v17) & 1;

    _os_log_impl(&dword_0, v21, v22, "getDayOfWeekSpeakableArray, %{BOOL}d, %{BOOL}d, %{BOOL}d ", v23, 0x14u);
  }

  else
  {
  }

  if ((Array<A>.isWeekdays.getter(v17) & 1) == 0 && (Array<A>.isWeekends.getter(v17) & 1) == 0 && (Array<A>.isEveryday.getter(v17) & 1) == 0)
  {
    goto LABEL_16;
  }

  v42 = v7;
  v43 = v19;
  v25 = Array<A>.isEveryday.getter(v17);
  v26 = Array<A>.isWeekdays.getter(v17);
  v27 = Array<A>.isWeekends.getter(v17);
  v28 = v46;
  (*(v9 + 56))(v46, 1, 1, v8);
  sub_25E4(&qword_137880, &unk_108290);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1097B0;
  *(v29 + 32) = 0xD000000000000014;
  *(v29 + 40) = 0x800000000010D420;
  *(v29 + 48) = 0;
  *(v29 + 72) = &type metadata for Bool;
  *(v29 + 80) = 0xD000000000000010;
  *(v29 + 88) = 0x800000000010D440;
  *(v29 + 96) = 0;
  *(v29 + 120) = &type metadata for Bool;
  *(v29 + 128) = 0x6479726576457369;
  *(v29 + 136) = 0xEA00000000007961;
  *(v29 + 144) = v25 & 1;
  *(v29 + 168) = &type metadata for Bool;
  *(v29 + 176) = 0x61646B6565577369;
  *(v29 + 184) = 0xEA00000000007379;
  *(v29 + 192) = v26 & 1;
  *(v29 + 216) = &type metadata for Bool;
  *(v29 + 224) = 0x6E656B6565577369;
  *(v29 + 232) = 0xEA00000000007364;
  *(v29 + 240) = v27 & 1;
  *(v29 + 264) = &type metadata for Bool;
  *(v29 + 272) = 0x656557664F796164;
  *(v29 + 280) = 0xE90000000000006BLL;
  sub_14994(v28, v4, &qword_137598, &unk_107EB0);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v29 + 288) = 0u;
    *(v29 + 304) = 0u;
  }

  else
  {
    *(v29 + 312) = v8;
    v30 = sub_1A924((v29 + 288));
    (*(v9 + 32))(v30, v4, v8);
  }

  v32 = v42;
  v31 = v43;
  sub_1060C0();
  v19 = v31;

  sub_16F70(v46, &qword_137598, &unk_107EB0);
  sub_107430();
  v34 = v33;
  sub_16F70(v32, &qword_138CB8, &qword_1097D0);
  if (v34)
  {

    v35 = v44;
    sub_106E50();

    v36 = *(v9 + 32);
    v37 = v41;
    v36(v41, v35, v8);
    sub_25E4(&qword_138CE0, &qword_1097E8);
    v38 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v40;
    v36((v24 + v38), v37, v8);
  }

  else
  {
LABEL_16:
    v24 = sub_7AD3C(v19, 0, 0, v17);
  }

  return v24;
}

uint64_t sub_79DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_25E4(&qword_137598, &unk_107EB0);
  v4 = __chkstk_darwin(v3 - 8);
  v95 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v87 - v7;
  __chkstk_darwin(v6);
  v98 = (&v87 - v9);
  v100 = sub_25E4(&qword_138CB8, &qword_1097D0);
  v10 = __chkstk_darwin(v100);
  v94 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v87 - v12;
  v13 = sub_106160();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v89 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v96 = &v87 - v18;
  v19 = __chkstk_darwin(v17);
  v92 = &v87 - v20;
  v21 = __chkstk_darwin(v19);
  v99 = &v87 - v22;
  v23 = __chkstk_darwin(v21);
  v90 = &v87 - v24;
  __chkstk_darwin(v23);
  v26 = &v87 - v25;
  v27 = sub_106200();
  __chkstk_darwin(v27);
  if (a1)
  {
    v28 = a1;
  }

  else
  {
    type metadata accessor for AlarmBaseCATs_Async(0);
    sub_25E4(&qword_138CC0, &qword_1097D8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_107FC0;
    sub_1061F0();
    v102 = v29;
    sub_7C350();
    sub_25E4(&qword_138CD0, &qword_1097E0);
    sub_7C3A8();
    sub_107110();
    v28 = sub_1060D0();
  }

  v30 = [v101 repeatSchedule];
  if (v30)
  {
    v31 = v30;
    v88 = v26;
    sub_1069A0();
    v32 = sub_106EE0();

    if ((Array<A>.isWeekdays.getter(v32) & 1) == 0 && (Array<A>.isWeekends.getter(v32) & 1) == 0 && (Array<A>.isEveryday.getter(v32) & 1) == 0)
    {
      goto LABEL_42;
    }

    v93 = v28;
    v33 = Array<A>.isEveryday.getter(v32);
    v34 = Array<A>.isWeekdays.getter(v32);
    v35 = Array<A>.isWeekends.getter(v32);
    v36 = v98;
    (*(v14 + 56))(v98, 1, 1, v13);
    sub_25E4(&qword_137880, &unk_108290);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1097B0;
    *(v37 + 32) = 0xD000000000000014;
    *(v37 + 40) = 0x800000000010D420;
    *(v37 + 48) = 1;
    *(v37 + 72) = &type metadata for Bool;
    *(v37 + 80) = 0xD000000000000010;
    *(v37 + 88) = 0x800000000010D440;
    *(v37 + 96) = 1;
    *(v37 + 120) = &type metadata for Bool;
    *(v37 + 128) = 0x6479726576457369;
    *(v37 + 136) = 0xEA00000000007961;
    *(v37 + 144) = v33 & 1;
    *(v37 + 168) = &type metadata for Bool;
    *(v37 + 176) = 0x61646B6565577369;
    *(v37 + 184) = 0xEA00000000007379;
    *(v37 + 192) = v34 & 1;
    *(v37 + 216) = &type metadata for Bool;
    *(v37 + 224) = 0x6E656B6565577369;
    *(v37 + 232) = 0xEA00000000007364;
    *(v37 + 240) = v35 & 1;
    *(v37 + 264) = &type metadata for Bool;
    *(v37 + 272) = 0x656557664F796164;
    *(v37 + 280) = 0xE90000000000006BLL;
    sub_14994(v36, v8, &qword_137598, &unk_107EB0);
    if ((*(v14 + 48))(v8, 1, v13) == 1)
    {
      sub_16F70(v8, &qword_137598, &unk_107EB0);
      *(v37 + 288) = 0u;
      *(v37 + 304) = 0u;
    }

    else
    {
      *(v37 + 312) = v13;
      v39 = sub_1A924((v37 + 288));
      (*(v14 + 32))(v39, v8, v13);
    }

    v28 = v93;
    v40 = v91;
    sub_1060C0();

    sub_16F70(v98, &qword_137598, &unk_107EB0);
    sub_107430();
    v42 = v41;
    sub_16F70(v40, &qword_138CB8, &qword_1097D0);
    if (v42)
    {

      v43 = v90;
      sub_106E50();

      v44 = *(v14 + 32);
      v45 = v88;
      v44(v88, v43, v13);
      sub_25E4(&qword_138CE0, &qword_1097E8);
      v46 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v38 = swift_allocObject();
      *(v38 + 1) = xmmword_107FC0;
      v44(v38 + v46, v45, v13);
    }

    else
    {
LABEL_42:
      if (v32 >> 62)
      {
        v47 = sub_107270();
      }

      else
      {
        v47 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
      }

      v38 = sub_7AD3C(v28, v47 > 1, v47 < 2, v32);
    }

    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v48 = sub_106D20();
    sub_135C4(v48, qword_138C90);

    v49 = sub_106D10();
    v50 = sub_106FC0();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v13;
      v53 = swift_slowAlloc();
      v102 = v53;
      *v51 = 136315138;
      v54 = sub_106EF0();
      v55 = v28;
      v57 = v56;

      v58 = sub_722E8(v54, v57, &v102);
      v28 = v55;

      *(v51 + 4) = v58;
      _os_log_impl(&dword_0, v49, v50, "[SiriAlarm.buildLocalizedSnippetLabel] Repeat schedule has days: %s", v51, 0xCu);
      sub_2738(v53);
      v13 = v52;
    }

    else
    {
    }
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  v59 = v95;
  v60 = [v101 label];
  if (v60)
  {
    v61 = v60;
    sub_106E20();

    sub_106E50();

    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  v63 = v99;
  v64 = v96;
  v101 = *(v14 + 56);
  (v101)(v59, v62, 1, v13);
  v65 = v94;
  sub_57BF0(v59, v38);

  sub_16F70(v59, &qword_137598, &unk_107EB0);
  sub_107430();
  v67 = v66;
  sub_16F70(v65, &qword_138CB8, &qword_1097D0);
  if (v67)
  {
    v100 = v14 + 56;
    v68 = v92;
    sub_106E50();

    v98 = *(v14 + 32);
    (v98)(v63, v68, v13);
    v69 = v13;
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v70 = sub_106D20();
    sub_135C4(v70, qword_138C90);
    v71 = *(v14 + 16);
    v71(v64, v63, v13);
    v72 = sub_106D10();
    v73 = sub_106FC0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v93 = v28;
      v96 = v75;
      v102 = v75;
      *v74 = 136315138;
      v71(v89, v64, v13);
      v76 = sub_106E30();
      v78 = v77;
      (*(v14 + 8))(v64, v69);
      v79 = sub_722E8(v76, v78, &v102);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_0, v72, v73, "[SiriAlarm.buildLocalizedSnippetLabel] Created localized snippet label: %s", v74, 0xCu);
      sub_2738(v96);

      v63 = v99;
    }

    else
    {

      (*(v14 + 8))(v64, v13);
    }

    v13 = v69;
    v85 = v97;
    (v98)(v97, v63, v69);
    v84 = 0;
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v80 = sub_106D20();
    sub_135C4(v80, qword_138C90);
    v81 = sub_106D10();
    v82 = sub_106FB0();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_0, v81, v82, "[SiriAlarm.buildLocalizedSnippetLabel] Failed to execute CAT to create localized snippet label!", v83, 2u);
    }

    v84 = 1;
    v85 = v97;
  }

  return (v101)(v85, v84, 1, v13);
}

uint64_t sub_7AA9C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    sub_106E20();

    sub_107190(20);

    v21[0] = 0xD000000000000012;
    v21[1] = 0x800000000010C460;
    v23._countAndFlagsBits = sub_106E60();
    sub_106E80(v23);

    sub_104E20();
    v5 = 0;
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v6 = sub_106D20();
    sub_135C4(v6, qword_138C90);
    v7 = v1;
    v8 = sub_106D10();
    v9 = sub_106FB0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315138;
      v12 = v7;
      v13 = [v12 description];
      v14 = sub_106E20();
      v16 = v15;

      v17 = sub_722E8(v14, v16, v21);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_0, v8, v9, "DisplayHints failed to extract alarm ID from alarm: %s", v10, 0xCu);
      sub_2738(v11);
    }

    v5 = 1;
  }

  v18 = sub_104E30();
  v19 = *(*(v18 - 8) + 56);

  return v19(a1, v5, 1, v18);
}

id *sub_7AD3C(uint64_t a1, char a2, char a3, unint64_t a4)
{
  LOBYTE(v5) = a3;
  LOBYTE(v6) = a2;
  v51 = a1;
  v7 = sub_25E4(&qword_137598, &unk_107EB0);
  v8 = __chkstk_darwin(v7 - 8);
  v50 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v34 - v10;
  v49 = sub_25E4(&qword_138CB8, &qword_1097D0);
  __chkstk_darwin(v49);
  v48 = &v34 - v11;
  v12 = sub_106160();
  v35 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v34 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v52 = &v34 - v15;
  if (a4 >> 62)
  {
LABEL_32:
    v16 = sub_107270();
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8));
    if (v16)
    {
LABEL_3:
      v17 = 0;
      v46 = a4 & 0xFFFFFFFFFFFFFF8;
      v47 = a4 & 0xC000000000000001;
      v42 = 0x800000000010D420;
      v43 = (v35 + 56);
      v41 = v6 & 1;
      v40 = 0x800000000010D440;
      v39 = v5 & 1;
      v53 = (v35 + 32);
      v37 = "forceEveryPrefix";
      v38 = (v35 + 48);
      v18 = _swiftEmptyArrayStorage;
      v36 = xmmword_1097B0;
      v44 = v16;
      v45 = a4;
      while (1)
      {
        if (v47)
        {
          v21 = sub_1071C0();
        }

        else
        {
          if (v17 >= *(v46 + 16))
          {
            goto LABEL_31;
          }

          v21 = *(a4 + 8 * v17 + 32);
        }

        v6 = v21;
        a4 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v22 = [v21 repeatSchedule];
        if (v22 <= 2)
        {
          if (v22 > 1 && v22 != &dword_0 + 2)
          {
LABEL_35:
            v55 = v22;
            result = sub_1073A0();
            __break(1u);
            return result;
          }
        }

        else if (v22 > 4 && v22 != &dword_4 + 1 && v22 != &dword_4 + 2)
        {
          goto LABEL_35;
        }

        v23 = v54;
        sub_106E50();

        (*v43)(v23, 0, 1, v12);
        sub_25E4(&qword_137880, &unk_108290);
        v24 = swift_allocObject();
        *(v24 + 16) = v36;
        v25 = v42;
        *(v24 + 32) = 0xD000000000000014;
        *(v24 + 40) = v25;
        *(v24 + 48) = v41;
        *(v24 + 72) = &type metadata for Bool;
        *(v24 + 80) = 0xD000000000000010;
        *(v24 + 88) = v40;
        *(v24 + 96) = v39;
        *(v24 + 120) = &type metadata for Bool;
        *(v24 + 128) = 0x6479726576457369;
        *(v24 + 136) = 0xEA00000000007961;
        *(v24 + 144) = 0;
        *(v24 + 168) = &type metadata for Bool;
        *(v24 + 176) = 0x61646B6565577369;
        *(v24 + 184) = 0xEA00000000007379;
        *(v24 + 192) = 0;
        *(v24 + 216) = &type metadata for Bool;
        *(v24 + 224) = 0x6E656B6565577369;
        *(v24 + 232) = 0xEA00000000007364;
        *(v24 + 240) = 0;
        *(v24 + 264) = &type metadata for Bool;
        *(v24 + 272) = 0x656557664F796164;
        *(v24 + 280) = 0xE90000000000006BLL;
        v26 = v50;
        sub_14994(v23, v50, &qword_137598, &unk_107EB0);
        if ((*v38)(v26, 1, v12) == 1)
        {
          sub_16F70(v26, &qword_137598, &unk_107EB0);
          *(v24 + 288) = 0u;
          *(v24 + 304) = 0u;
        }

        else
        {
          *(v24 + 312) = v12;
          v27 = sub_1A924((v24 + 288));
          (*v53)(v27, v26, v12);
        }

        v28 = v48;
        sub_1060C0();

        sub_16F70(v54, &qword_137598, &unk_107EB0);
        sub_107430();
        v5 = v29;
        sub_16F70(v28, &qword_138CB8, &qword_1097D0);
        if (v5)
        {
          v30 = v34;
          sub_106E50();

          v6 = *v53;
          (*v53)(v52, v30, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_AD7C8(0, v18[2] + 1, 1, v18);
          }

          v32 = v18[2];
          v31 = v18[3];
          v5 = (v32 + 1);
          v19 = v44;
          if (v32 >= v31 >> 1)
          {
            v18 = sub_AD7C8((v31 > 1), v32 + 1, 1, v18);
          }

          v18[2] = v5;
          (v6)(v18 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v32, v52, v12);
        }

        else
        {

          v19 = v44;
        }

        ++v17;
        v20 = a4 == v19;
        a4 = v45;
        if (v20)
        {
          return v18;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_7B448()
{
  v1 = v0;
  v2 = sub_25E4(&qword_137500, &qword_107E10);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v46 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v46 - v10;
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  sub_105B10();
  swift_allocObject();
  v14 = sub_105B00();
  v15 = [v0 label];
  if (v15)
  {
    v16 = v15;
    sub_106E20();

    sub_105AF0();
  }

  v47 = v14;
  v17 = [v1 dateTime];
  if (v17)
  {
    v18 = v17;
    sub_104570();

    v19 = sub_1045E0();
    (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  }

  else
  {
    v19 = sub_1045E0();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  }

  sub_7C278(v11, v13, &qword_137500, &qword_107E10);
  sub_1045E0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v13, 1, v19))
  {
    goto LABEL_7;
  }

  v46 = sub_104580();
  v23 = v22;
  sub_16F70(v13, &qword_137500, &qword_107E10);
  if (v23)
  {
    goto LABEL_9;
  }

  v29 = [v1 dateTime];
  if (v29)
  {
    v30 = v29;
    sub_104570();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v20 + 56))(v5, v31, 1, v19);
  sub_7C278(v5, v8, &qword_137500, &qword_107E10);
  if (v21(v8, 1, v19))
  {
    v13 = v8;
LABEL_7:
    sub_16F70(v13, &qword_137500, &qword_107E10);
LABEL_9:
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v24 = sub_106D20();
    sub_135C4(v24, qword_138C90);
    v25 = sub_106D10();
    v26 = sub_106FB0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "alarm.dateTime is nil. Failed to build alarm Uso Entity for RRaaS/NL!", v27, 2u);
    }

    return v47;
  }

  sub_1045A0();
  v33 = v32;
  sub_16F70(v8, &qword_137500, &qword_107E10);
  if (v33)
  {
    goto LABEL_9;
  }

  sub_105BB0();
  swift_allocObject();
  v34 = sub_105BA0();
  sub_105B90();
  swift_allocObject();
  sub_105BA0();
  sub_105B90();
  sub_105DE0();
  swift_allocObject();
  sub_105DD0();

  sub_105DB0();

  sub_105DC0();

  sub_105C00();
  swift_allocObject();
  sub_105BF0();

  sub_105BE0();

  v35 = v47;
  sub_105AE0();

  if (qword_136D28 != -1)
  {
    swift_once();
  }

  v36 = sub_106D20();
  sub_135C4(v36, qword_138C90);

  v37 = sub_106D10();
  v38 = sub_106FC0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v46 = v34;
    v40 = v39;
    v41 = swift_slowAlloc();
    v48 = v35;
    v49 = v41;
    *v40 = 136315138;
    v42 = v35;

    v43 = sub_106E30();
    v45 = sub_722E8(v43, v44, &v49);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_0, v37, v38, "Returning alarmBuilder: %s", v40, 0xCu);
    sub_2738(v41);

    return v42;
  }

  else
  {

    return v35;
  }
}

uint64_t sub_7BB20()
{
  sub_7B448();
  v1 = sub_105950();

  if (!v1)
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v2 = sub_106D20();
    sub_135C4(v2, qword_138C90);
    v3 = v0;
    v4 = sub_106D10();
    v5 = sub_106FB0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      sub_7B448();
      sub_105B10();
      v8 = sub_106E30();
      v10 = sub_722E8(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v4, v5, "Fail to build uso entity %s", v6, 0xCu);
      sub_2738(v7);
    }
  }

  return v1;
}

uint64_t sub_7BCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v56 = a4;
  v10 = sub_25E4(&qword_138CA8, &qword_1097C0);
  v11 = __chkstk_darwin(v10 - 8);
  v55 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v53 - v13;
  v15 = sub_25E4(&qword_1376F0, &unk_10A900);
  __chkstk_darwin(v15 - 8);
  v17 = v53 - v16;
  v18 = sub_106D80();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v60 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v5;
  v21 = sub_7BB20();
  v61 = v18;
  if (v21)
  {
    v53[1] = a3;
    v58 = v19;
    v59 = a5;
    v22 = [v62 identifier];
    if (v22)
    {
      v23 = v22;
      v24 = sub_106E20();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v53[0] = a1;
    v54 = a2;
    v63[0] = v24;
    v63[1] = v26;
    sub_25E4(&qword_138CB0, &qword_1097C8);
    v57 = sub_106E30();
    if (qword_136E38 != -1)
    {
      swift_once();
    }

    v27 = sub_106D40();
    v28 = *(v27 - 8);
    v29 = *(v28 + 56);
    v30 = v28 + 56;
    v29(v14, 1, 1, v27);
    sub_106AA0();

    v31 = v62;
    sub_106D60();
    v57 = v30;
    v62 = v29;
    v46 = v58;
    v47 = *(v58 + 56);
    v48 = v61;
    v47(v17, 0, 1, v61);
    v49 = *(v46 + 32);
    v50 = v60;
    v49(v60, v17, v48);
    if (v54)
    {
      if ((v56 & 1) == 0)
      {

        v51 = v55;
        sub_106D30();
        v62(v51, 0, 1, v27);
        v50 = v60;
        sub_106D70();
      }
    }

    v52 = v59;
    v49(v59, v50, v48);
    return (v47)(v52, 0, 1, v48);
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v32 = sub_106D20();
    sub_135C4(v32, qword_138C90);
    v33 = v62;
    v34 = sub_106D10();
    v35 = sub_106FB0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v19;
      v38 = swift_slowAlloc();
      v63[0] = v38;
      *v36 = 136315138;
      v39 = v33;
      v40 = [v39 description];
      v41 = sub_106E20();
      v43 = v42;

      v44 = sub_722E8(v41, v43, v63);

      *(v36 + 4) = v44;
      _os_log_impl(&dword_0, v34, v35, "Fail to build rr entity from alarm %s", v36, 0xCu);
      sub_2738(v38);
      v19 = v37;

      v18 = v61;
    }

    return (*(v19 + 56))(a5, 1, 1, v18);
  }
}

uint64_t sub_7C278(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_25E4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_7C2E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_7C350()
{
  result = qword_138CC8;
  if (!qword_138CC8)
  {
    sub_106200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_138CC8);
  }

  return result;
}

unint64_t sub_7C3A8()
{
  result = qword_138CD8;
  if (!qword_138CD8)
  {
    sub_14EB0(&qword_138CD0, &qword_1097E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_138CD8);
  }

  return result;
}

unint64_t sub_7C40C()
{
  result = qword_138CE8;
  if (!qword_138CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_138CE8);
  }

  return result;
}

uint64_t type metadata accessor for AlarmBaseCATs_Sync(uint64_t a1)
{
  result = qword_138CF0;
  if (!qword_138CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7C4EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_7C6DC()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v25 - v9;
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  sub_25E4(&qword_137880, &unk_108290);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1097B0;
  strcpy((v13 + 32), "cancelAction");
  *(v13 + 45) = 0;
  *(v13 + 46) = -5120;
  sub_14994(v0, v12, &qword_137598, &unk_107EB0);
  v14 = sub_106160();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, v14);
  v26 = v4;
  if (v17 == 1)
  {
    sub_16F70(v12, &qword_137598, &unk_107EB0);
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
  }

  else
  {
    *(v13 + 72) = v14;
    v18 = sub_1A924((v13 + 48));
    (*(v15 + 32))(v18, v12, v14);
  }

  *(v13 + 80) = 0x614E656369766564;
  *(v13 + 88) = 0xEA0000000000656DLL;
  v19 = type metadata accessor for SnoozeConfirmOtherRoomParameters(0);
  sub_14994(v0 + v19[5], v10, &qword_137598, &unk_107EB0);
  if (v16(v10, 1, v14) == 1)
  {
    sub_16F70(v10, &qword_137598, &unk_107EB0);
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
  }

  else
  {
    *(v13 + 120) = v14;
    v20 = sub_1A924((v13 + 96));
    (*(v15 + 32))(v20, v10, v14);
  }

  *(v13 + 128) = 0x6E756D6D6F437369;
  *(v13 + 136) = 0xEA00000000006C61;
  *(v13 + 144) = *(v0 + v19[6]);
  *(v13 + 168) = &type metadata for Bool;
  *(v13 + 176) = 0x6E6F737265507369;
  *(v13 + 184) = 0xEA00000000006C61;
  *(v13 + 192) = *(v0 + v19[7]);
  *(v13 + 216) = &type metadata for Bool;
  *(v13 + 224) = 0x656D614E6D6F6F72;
  *(v13 + 232) = 0xE800000000000000;
  sub_14994(v0 + v19[8], v7, &qword_137598, &unk_107EB0);
  if (v16(v7, 1, v14) == 1)
  {
    sub_16F70(v7, &qword_137598, &unk_107EB0);
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
  }

  else
  {
    *(v13 + 264) = v14;
    v21 = sub_1A924((v13 + 240));
    (*(v15 + 32))(v21, v7, v14);
  }

  v22 = v26;
  *(v13 + 272) = 0x6F69746341736579;
  *(v13 + 280) = 0xE90000000000006ELL;
  sub_14994(v0 + v19[9], v22, &qword_137598, &unk_107EB0);
  if (v16(v22, 1, v14) == 1)
  {
    sub_16F70(v22, &qword_137598, &unk_107EB0);
    *(v13 + 288) = 0u;
    *(v13 + 304) = 0u;
  }

  else
  {
    *(v13 + 312) = v14;
    v23 = sub_1A924((v13 + 288));
    (*(v15 + 32))(v23, v22, v14);
  }

  return v13;
}

uint64_t sub_7CB40()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v25 - v9;
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  sub_25E4(&qword_137880, &unk_108290);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_108210;
  *(v13 + 32) = 0x6D614E6D72616C61;
  *(v13 + 40) = 0xE900000000000065;
  sub_14994(v0, v12, &qword_137598, &unk_107EB0);
  v14 = sub_106160();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, v14);
  v26 = v4;
  if (v17 == 1)
  {
    sub_16F70(v12, &qword_137598, &unk_107EB0);
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
  }

  else
  {
    *(v13 + 72) = v14;
    v18 = sub_1A924((v13 + 48));
    (*(v15 + 32))(v18, v12, v14);
  }

  *(v13 + 80) = 0x614E656369766564;
  *(v13 + 88) = 0xEA0000000000656DLL;
  v19 = type metadata accessor for SnoozeIntentHandledParameters(0);
  sub_14994(v0 + v19[5], v10, &qword_137598, &unk_107EB0);
  if (v16(v10, 1, v14) == 1)
  {
    sub_16F70(v10, &qword_137598, &unk_107EB0);
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
  }

  else
  {
    *(v13 + 120) = v14;
    v20 = sub_1A924((v13 + 96));
    (*(v15 + 32))(v20, v10, v14);
  }

  *(v13 + 128) = 0x7954676F6C616964;
  *(v13 + 136) = 0xEA00000000006570;
  sub_14994(v0 + v19[6], v7, &qword_137598, &unk_107EB0);
  if (v16(v7, 1, v14) == 1)
  {
    sub_16F70(v7, &qword_137598, &unk_107EB0);
    *(v13 + 144) = 0u;
    *(v13 + 160) = 0u;
  }

  else
  {
    *(v13 + 168) = v14;
    v21 = sub_1A924((v13 + 144));
    (*(v15 + 32))(v21, v7, v14);
  }

  v22 = v26;
  *(v13 + 176) = 0x656D614E6D6F6F72;
  *(v13 + 184) = 0xE800000000000000;
  sub_14994(v0 + v19[7], v22, &qword_137598, &unk_107EB0);
  if (v16(v22, 1, v14) == 1)
  {
    sub_16F70(v22, &qword_137598, &unk_107EB0);
    *(v13 + 192) = 0u;
    *(v13 + 208) = 0u;
  }

  else
  {
    *(v13 + 216) = v14;
    v23 = sub_1A924((v13 + 192));
    (*(v15 + 32))(v23, v22, v14);
  }

  return v13;
}

uint64_t sub_7CF48(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 89) = a2;
  *(v5 + 88) = a1;
  *(v5 + 40) = type metadata accessor for SnoozeConfirmOtherRoomParameters(0);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_7CFE8, 0, 0);
}

uint64_t sub_7CFE8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 89);
  v5 = *(v0 + 88);
  v6 = sub_106160();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[5], 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  v7(v1 + v2[9], 1, 1, v6);
  *(v1 + v2[6]) = v5;
  *(v1 + v2[7]) = v4;
  v3(v1);
  v8 = sub_7C6DC();
  *(v0 + 56) = v8;
  v11 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_7D1A8;

  return v11(0xD000000000000017, 0x800000000010D510, v8);
}

uint64_t sub_7D1A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_7D37C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_7D2F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_7D2F4()
{
  sub_7DA80(v0[6], type metadata accessor for SnoozeConfirmOtherRoomParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_7D37C()
{
  sub_7DA80(*(v0 + 48), type metadata accessor for SnoozeConfirmOtherRoomParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7D400(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for SnoozeIntentHandledParameters(0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_7D498, 0, 0);
}

uint64_t sub_7D498()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = sub_106160();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v5(v1 + v2[5], 1, 1, v4);
  v5(v1 + v2[6], 1, 1, v4);
  v5(v1 + v2[7], 1, 1, v4);
  v3(v1);
  v6 = sub_7CB40();
  v0[7] = v6;
  v9 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_7D638;

  return v9(0xD000000000000014, 0x800000000010D4F0, v6);
}

uint64_t sub_7D638(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_7D80C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_7D784;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_7D784()
{
  sub_7DA80(v0[6], type metadata accessor for SnoozeIntentHandledParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_7D80C()
{
  sub_7DA80(*(v0 + 48), type metadata accessor for SnoozeIntentHandledParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7D890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_14994(a1, v11, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v12;
}

uint64_t sub_7DA80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_7DAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_7DBE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_7DCA4(uint64_t a1)
{
  sub_7DD24(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_7DD24(uint64_t a1)
{
  if (!qword_1378F8)
  {
    sub_106160();
    v1 = sub_1070E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1378F8);
    }
  }
}

uint64_t sub_7DD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_7DE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_7DE98(uint64_t a1)
{
  sub_7DD24(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_7DF18()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_138EC8);
  sub_135C4(v0, qword_138EC8);
  return sub_106A80();
}

uint64_t sub_7DF64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_7DF84, 0, 0);
}

uint64_t sub_7DF84()
{
  sub_25E4(&qword_138EE0, &qword_109990);
  v1 = sub_1051F0();
  v0[4] = v1;
  v2 = sub_105200();
  v0[5] = v2;
  if (qword_136D30 != -1)
  {
    swift_once();
  }

  v3 = sub_106D20();
  sub_135C4(v3, qword_138EC8);
  v4 = v2;
  v5 = sub_106D10();
  v6 = sub_106FC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = [v4 unsupportedReason];

    _os_log_impl(&dword_0, v5, v6, "SearchAlarm.UnsupportedValueStrategy.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v7, 0xCu);
  }

  else
  {

    v5 = v4;
  }

  v8 = [v1 alarmSearch];
  v0[6] = v8;
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_7E174;
  v10 = v0[2];

  return sub_17218(v10, v8, v4);
}

uint64_t sub_7E174()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_7E2F8;
  }

  else
  {

    v3 = sub_7E290;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7E290()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_7E2F8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_7E368(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_7DF64(a1, a2);
}

uint64_t sub_7E428()
{
  sub_25E4(&qword_138EE0, &qword_109990);
  v1 = sub_1051F0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_7E500()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  sub_25E4(&qword_137880, &unk_108290);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_109670;
  strcpy((v4 + 32), "isMixedAlarms");
  *(v4 + 46) = -4864;
  *(v4 + 48) = *v0;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 80) = 0xD000000000000010;
  *(v4 + 88) = 0x800000000010C5B0;
  *(v4 + 96) = v0[1];
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0xD000000000000018;
  *(v4 + 136) = 0x800000000010C5D0;
  *(v4 + 144) = v0[2];
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 176) = 0xD000000000000012;
  *(v4 + 184) = 0x800000000010C5F0;
  *(v4 + 192) = v0[3];
  *(v4 + 216) = &type metadata for Bool;
  *(v4 + 224) = 0xD000000000000016;
  *(v4 + 232) = 0x800000000010C610;
  *(v4 + 240) = v0[4];
  *(v4 + 264) = &type metadata for Bool;
  *(v4 + 272) = 0xD000000000000016;
  *(v4 + 280) = 0x800000000010C630;
  *(v4 + 288) = v0[5];
  *(v4 + 312) = &type metadata for Bool;
  *(v4 + 320) = 0xD000000000000017;
  *(v4 + 328) = 0x800000000010C650;
  *(v4 + 336) = v0[6];
  *(v4 + 360) = &type metadata for Bool;
  *(v4 + 368) = 0x68637461577369;
  *(v4 + 376) = 0xE700000000000000;
  *(v4 + 384) = v0[7];
  *(v4 + 408) = &type metadata for Bool;
  *(v4 + 416) = 0xD000000000000012;
  *(v4 + 424) = 0x800000000010C670;
  v5 = type metadata accessor for DeleteAllIntentHandledParameters(0);
  sub_14994(&v0[*(v5 + 48)], v3, &qword_137598, &unk_107EB0);
  v6 = sub_106160();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_16F70(v3, &qword_137598, &unk_107EB0);
    *(v4 + 432) = 0u;
    *(v4 + 448) = 0u;
  }

  else
  {
    *(v4 + 456) = v6;
    v8 = sub_1A924((v4 + 432));
    (*(v7 + 32))(v8, v3, v6);
  }

  *(v4 + 464) = 0xD000000000000011;
  *(v4 + 472) = 0x800000000010C690;
  v9 = *&v0[*(v5 + 52)];
  if (v9)
  {
    v10 = sub_1060A0();
  }

  else
  {
    v10 = 0;
    *(v4 + 488) = 0;
    *(v4 + 496) = 0;
  }

  *(v4 + 480) = v9;
  *(v4 + 504) = v10;

  return v4;
}

uint64_t sub_7E81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_14994(a1, v11, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v12;
}

uint64_t sub_7EA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_7EAEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 48);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52)) = a2;
  }

  return result;
}

void sub_7EBB4(uint64_t a1)
{
  sub_7EC90(319, &qword_1378F8, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    sub_7EC90(319, &unk_137908, &type metadata accessor for DialogCalendar);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_7EC90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1070E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for UpdateAlarmCATsSimple(uint64_t a1)
{
  result = qword_138FE8;
  if (!qword_138FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7ED70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_25E4(&qword_137598, &unk_107EB0);
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_7EE10, 0, 0);
}

uint64_t sub_7EE10()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_25E4(&qword_137880, &unk_108290);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_1094F0;
  *(v3 + 32) = 0x6C6562614C77656ELL;
  *(v3 + 40) = 0xE800000000000000;
  sub_14994(v2, v1, &qword_137598, &unk_107EB0);
  v4 = sub_106160();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[5];
  if (v6 == 1)
  {
    sub_16F70(v0[5], &qword_137598, &unk_107EB0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v8 = sub_1A924((v3 + 48));
    (*(v5 + 32))(v8, v7, v4);
  }

  v9 = v0[3];
  *(v3 + 80) = 0x6D72616C61;
  *(v3 + 88) = 0xE500000000000000;
  v10 = 0;
  if (v9)
  {
    v10 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v9;
  *(v3 + 120) = v10;
  v13 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_7F038;

  return v13(0xD000000000000028, 0x800000000010D5A0, v3);
}

uint64_t sub_7F038(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 64) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_58208, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_7F194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_14994(a1, v11, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_106170();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v12;
}

uint64_t sub_7F33C(uint64_t a1, uint64_t a2)
{
  v3 = sub_106200();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_106180();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t sub_7F454()
{
  v1 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_label;
  v2 = sub_106160();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_time) = 0;
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_formattedTimeString, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_timeOnlyString, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_meridian, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enabled) = 0;
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isRecurrent) = 0;
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSleepAlarm) = 0;
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_days) = _swiftEmptyArrayStorage;
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_labelForSnippetWithRecurrence, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSetWitchingHoursForToday) = 0;
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isTomorrow) = 0;
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_overrideTomorrowCalendarLogic) = 0;
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_action, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enableAction, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_disableAction, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_alarmIDString, 1, 1, v2);
  return v0;
}

uint64_t sub_7F658()
{
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_label);

  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_formattedTimeString);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_timeOnlyString);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_meridian);

  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_labelForSnippetWithRecurrence);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_action);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enableAction);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_disableAction);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_alarmIDString);
  return v0;
}

uint64_t sub_7F738(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_label;
  swift_beginAccess();
  sub_826B8(a1 + v3, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_label);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_time);
  v4 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_formattedTimeString;
  swift_beginAccess();
  sub_826B8(a1 + v4, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString);
  v5 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_timeOnlyString;
  swift_beginAccess();
  sub_826B8(a1 + v5, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_timeOnlyString);
  v6 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_meridian;
  swift_beginAccess();
  sub_826B8(a1 + v6, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_meridian);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enabled) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enabled);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isRecurrent) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isRecurrent);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSleepAlarm) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSleepAlarm);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_days) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_days);
  v7 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_labelForSnippetWithRecurrence;
  swift_beginAccess();
  sub_826B8(a1 + v7, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSetWitchingHoursForToday) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSetWitchingHoursForToday);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isTomorrow) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isTomorrow);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_overrideTomorrowCalendarLogic) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_overrideTomorrowCalendarLogic);
  v8 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_action;
  swift_beginAccess();
  sub_826B8(a1 + v8, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_action);
  v9 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enableAction;
  swift_beginAccess();
  sub_826B8(a1 + v9, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enableAction);
  v10 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_disableAction;
  swift_beginAccess();
  sub_826B8(a1 + v10, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_disableAction);
  v11 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_alarmIDString;
  swift_beginAccess();
  sub_826B8(a1 + v11, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_alarmIDString);

  if (!sub_7FAEC())
  {
    v12 = sub_1061C0();
    sub_106FB0();
    sub_25E4(&qword_1395C0, &qword_109B90);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_107FC0;
    v18 = *v1;
    sub_25E4(&qword_1395C8, &qword_109B98);
    v14 = sub_106E30();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_82728();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_106CD0("Building an instance of %s without all required inputs", v18);
  }

  return v1;
}

BOOL sub_7FAEC()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v16 - v6;
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  sub_826B8(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString, &v16 - v8);
  v10 = sub_106160();
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v9, 1, v10);
  sub_82544(v9);
  if (v12 == 1)
  {
    return 0;
  }

  sub_826B8(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_timeOnlyString, v7);
  v13 = v11(v7, 1, v10);
  sub_82544(v7);
  if (v13 == 1)
  {
    return 0;
  }

  sub_826B8(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_meridian, v4);
  v15 = v11(v4, 1, v10) != 1;
  sub_82544(v4);
  return v15;
}

uint64_t sub_7FCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v83 = a3;
  v5 = sub_25E4(&qword_137598, &unk_107EB0);
  v6 = __chkstk_darwin(v5 - 8);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v80 = &v80 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v80 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v80 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v80 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v80 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v80 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v80 - v26;
  __chkstk_darwin(v25);
  v29 = &v80 - v28;
  if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (result = sub_107370(), (result & 1) != 0))
  {
    sub_826B8(v82 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_label, v29);
    v31 = sub_106160();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v29, 1, v31) == 1)
    {
      v33 = v29;
LABEL_6:
      result = sub_82544(v33);
LABEL_7:
      v34 = v83;
      *v83 = 0u;
      *(v34 + 1) = 0u;
      return result;
    }

    v35 = v83;
    v83[3] = v31;
    v36 = sub_1A924(v35);
    return (*(v32 + 32))(v36, v29, v31);
  }

  else
  {
    if (a1 == 1701669236 && a2 == 0xE400000000000000 || (result = sub_107370(), (result & 1) != 0))
    {
      v37 = *(v82 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time);
      if (!v37)
      {
        goto LABEL_7;
      }

      v38 = sub_1060A0();
      v39 = v83;
      v83[3] = v38;
      *v39 = v37;
    }

    if (a1 == 0xD000000000000013 && 0x800000000010C1E0 == a2 || (sub_107370() & 1) != 0)
    {
      sub_826B8(v82 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString, v27);
      v40 = sub_106160();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v27, 1, v40) == 1)
      {
        v33 = v27;
        goto LABEL_6;
      }

      v42 = v83;
      v83[3] = v40;
      v43 = sub_1A924(v42);
      return (*(v41 + 32))(v43, v27, v40);
    }

    else if (a1 == 0x796C6E4F656D6974 && a2 == 0xEE00676E69727453 || (sub_107370() & 1) != 0)
    {
      sub_826B8(v82 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_timeOnlyString, v24);
      v44 = sub_106160();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(v24, 1, v44) == 1)
      {
        v33 = v24;
        goto LABEL_6;
      }

      v46 = v83;
      v83[3] = v44;
      v47 = sub_1A924(v46);
      return (*(v45 + 32))(v47, v24, v44);
    }

    else
    {
      if ((a1 != 0x6E6169646972656DLL || a2 != 0xE800000000000000) && (sub_107370() & 1) == 0)
      {
        result = 0x64656C62616E65;
        if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (result = sub_107370(), (result & 1) != 0))
        {
          v52 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enabled;
        }

        else
        {
          result = 0x7272756365527369;
          if (a1 == 0x7272756365527369 && a2 == 0xEB00000000746E65 || (result = sub_107370(), (result & 1) != 0))
          {
            v52 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isRecurrent;
          }

          else
          {
            result = 0x417065656C537369;
            if (a1 == 0x417065656C537369 && a2 == 0xEC0000006D72616CLL || (result = sub_107370(), (result & 1) != 0))
            {
              v52 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSleepAlarm;
            }

            else
            {
              if (a1 == 1937334628 && a2 == 0xE400000000000000 || (sub_107370() & 1) != 0)
              {
                v55 = *(v82 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_days);
                v56 = sub_25E4(&qword_137888, &unk_10A130);
                v57 = v83;
                v83[3] = v56;
                *v57 = v55;
              }

              if (a1 == 0xD00000000000001DLL && 0x800000000010C240 == a2 || (sub_107370() & 1) != 0)
              {
                sub_826B8(v82 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence, v18);
                v58 = sub_106160();
                v59 = *(v58 - 8);
                if ((*(v59 + 48))(v18, 1, v58) == 1)
                {
                  v33 = v18;
                  goto LABEL_6;
                }

                v60 = v83;
                v83[3] = v58;
                v61 = sub_1A924(v60);
                return (*(v59 + 32))(v61, v18, v58);
              }

              result = 0xD00000000000001ALL;
              if (a1 == 0xD00000000000001ALL && 0x800000000010C260 == a2 || (result = sub_107370(), (result & 1) != 0))
              {
                v52 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSetWitchingHoursForToday;
              }

              else
              {
                result = 0x72726F6D6F547369;
                if (a1 == 0x72726F6D6F547369 && a2 == 0xEA0000000000776FLL || (result = sub_107370(), (result & 1) != 0))
                {
                  v52 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isTomorrow;
                }

                else
                {
                  if (a1 != 0xD00000000000001DLL || 0x800000000010C290 != a2)
                  {
                    result = sub_107370();
                    if ((result & 1) == 0)
                    {
                      if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_107370() & 1) != 0)
                      {
                        sub_826B8(v82 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_action, v15);
                        v62 = sub_106160();
                        v63 = *(v62 - 8);
                        if ((*(v63 + 48))(v15, 1, v62) == 1)
                        {
                          v33 = v15;
                          goto LABEL_6;
                        }

                        v64 = v83;
                        v83[3] = v62;
                        v65 = sub_1A924(v64);
                        return (*(v63 + 32))(v65, v15, v62);
                      }

                      else if (a1 == 0x6341656C62616E65 && a2 == 0xEC0000006E6F6974 || (sub_107370() & 1) != 0)
                      {
                        sub_826B8(v82 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enableAction, v12);
                        v66 = sub_106160();
                        v67 = *(v66 - 8);
                        if ((*(v67 + 48))(v12, 1, v66) == 1)
                        {
                          v33 = v12;
                          goto LABEL_6;
                        }

                        v68 = v83;
                        v83[3] = v66;
                        v69 = sub_1A924(v68);
                        return (*(v67 + 32))(v69, v12, v66);
                      }

                      else if (a1 == 0x41656C6261736964 && a2 == 0xED00006E6F697463 || (sub_107370() & 1) != 0)
                      {
                        v70 = v80;
                        sub_826B8(v82 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_disableAction, v80);
                        v71 = sub_106160();
                        v72 = *(v71 - 8);
                        if ((*(v72 + 48))(v70, 1, v71) == 1)
                        {
                          v33 = v80;
                          goto LABEL_6;
                        }

                        v73 = v83;
                        v83[3] = v71;
                        v74 = sub_1A924(v73);
                        return (*(v72 + 32))(v74, v80, v71);
                      }

                      else
                      {
                        if (a1 != 0x5344496D72616C61 || a2 != 0xED0000676E697274)
                        {
                          result = sub_107370();
                          if ((result & 1) == 0)
                          {
                            goto LABEL_7;
                          }
                        }

                        v75 = v81;
                        sub_826B8(v82 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_alarmIDString, v81);
                        v76 = sub_106160();
                        v77 = *(v76 - 8);
                        if ((*(v77 + 48))(v75, 1, v76) == 1)
                        {
                          v33 = v81;
                          goto LABEL_6;
                        }

                        v78 = v83;
                        v83[3] = v76;
                        v79 = sub_1A924(v78);
                        return (*(v77 + 32))(v79, v81, v76);
                      }
                    }
                  }

                  v52 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_overrideTomorrowCalendarLogic;
                }
              }
            }
          }
        }

        v53 = v83;
        v54 = *(v82 + v52);
        v83[3] = &type metadata for Bool;
        *v53 = v54;
        return result;
      }

      sub_826B8(v82 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_meridian, v21);
      v48 = sub_106160();
      v49 = *(v48 - 8);
      if ((*(v49 + 48))(v21, 1, v48) == 1)
      {
        v33 = v21;
        goto LABEL_6;
      }

      v50 = v83;
      v83[3] = v48;
      v51 = sub_1A924(v50);
      return (*(v49 + 32))(v51, v21, v48);
    }
  }
}