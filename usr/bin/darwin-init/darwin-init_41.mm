uint64_t sub_100336FC0()
{

  return _swift_task_switch(sub_1003370BC, 0, 0);
}

uint64_t sub_1003370BC()
{
  v194 = v0;
  v1 = *(*(v0 + 4408) + 48);
  if (v1(*(v0 + 4384), 1, *(v0 + 4400)) == 1)
  {
    if (!*(*(v0 + 4672) + 16) || (v2 = (*(v0 + 4616) + *(*(v0 + 4568) + 20)), v3 = sub_100013364(*v2, v2[1]), (v4 & 1) == 0))
    {
      v13 = *(v0 + 4616);

      v14 = type metadata accessor for CryptexManager.CryptexConfig;
      v15 = v13;
LABEL_17:
      sub_100340E64(v15, v14);
      goto LABEL_18;
    }

    v5 = *(v0 + 4544);
    v6 = *(v0 + 4536);
    v7 = *(v0 + 4480);
    sub_100340DFC(*(*(v0 + 4672) + 56) + *(*(v0 + 4488) + 72) * v3, v6, type metadata accessor for Config.Cryptex.Cryptex);
    sub_100340D94(v6, v5, type metadata accessor for Config.Cryptex.Cryptex);
    *(v0 + 273) = 3;
    v8 = *(v5 + *(v7 + 40));
    v9 = v8[2];
    if (v9 < 2)
    {
      goto LABEL_141;
    }

    v10 = (v9 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v9 == v10)
    {
      v187 = v1;

      v11 = v8;
    }

    else
    {
      sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      v11[2] = v10;
      v11[3] = 2 * ((v12 - 32) / 40);
      sub_1000039E8(&qword_1004AAA08, &qword_1003F40C8);
      swift_arrayInitWithCopy();
      v9 = v11[2];
      if (!v9)
      {

        v16 = _swiftEmptyArrayStorage;
LABEL_16:
        v24 = *(v0 + 4616);
        v25 = *(v0 + 4544);
        v26 = *(v0 + 4344);
        v193[0] = v16;
        (*(*v26 + 120))(v0 + 273, v193, "apply(on:auth:diavloURL:env:reporter:)", 38, 2, 832, &type metadata for Config.Cryptex.CryptexApplyError, &protocol witness table for Config.Cryptex.CryptexApplyError);

        sub_100340E64(v24, type metadata accessor for CryptexManager.CryptexConfig);
        v14 = type metadata accessor for Config.Cryptex.Cryptex;
        v15 = v25;
        goto LABEL_17;
      }

      v187 = v1;
    }

    *(v0 + 4304) = _swiftEmptyArrayStorage;
    sub_1003110E8(0, v9, 0);
    v16 = *(v0 + 4304);
    v17 = (v11 + 4);
    do
    {
      sub_100003B20(v17, v0 + 4144);
      sub_10000E2A8((v0 + 4144), *(v0 + 4168));
      v18 = dispatch thunk of CodingKey.stringValue.getter();
      v20 = v19;
      sub_100003C3C((v0 + 4144));
      *(v0 + 4304) = v16;
      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        sub_1003110E8((v21 > 1), v22 + 1, 1);
        v16 = *(v0 + 4304);
      }

      v16[2] = v22 + 1;
      v23 = &v16[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v17 += 40;
      --v9;
    }

    while (v9);

    v1 = v187;
    goto LABEL_16;
  }

  sub_100340E64(*(v0 + 4616), type metadata accessor for CryptexManager.CryptexConfig);

LABEL_18:
  v27 = *(v0 + 4400);
  v28 = *(v0 + 4392);
  sub_10003E154(*(v0 + 4384), v28, &qword_1004B0140, &qword_100406380);
  if (v1(v28, 1, v27) != 1)
  {
    v30 = *(v0 + 4448);
    v31 = *(v0 + 4440);
    sub_100340D94(*(v0 + 4392), v30, type metadata accessor for CryptexManager.PersonalizedCryptex);
    sub_100340DFC(v30, v31, type metadata accessor for CryptexManager.PersonalizedCryptex);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v0 + 4784);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_21;
  }

  sub_100013F2C(*(v0 + 4392), &qword_1004B0140, &qword_100406380);
  v29 = *(v0 + 4784);
LABEL_24:
  v37 = *(v0 + 4776) + 1;
  if (v37 != *(v0 + 4752))
  {
    *(v0 + 4784) = v29;
    *(v0 + 4776) = v37;
    v92 = *(v0 + 4712);
    if (v37 < *(v92 + 16))
    {
      v93 = *(v0 + 540);
      v94 = *(v0 + 4616);
      sub_100340DFC(v92 + ((*(v0 + 276) + 32) & ~*(v0 + 276)) + *(*(v0 + 4576) + 72) * v37, v94, type metadata accessor for CryptexManager.CryptexConfig);
      v95 = *(v94 + v93);
      if (v95 == 2 || (v95 & 1) != 0)
      {
        v96 = URL.scheme.getter();
        if (v97)
        {
          if (v96 == 2020568683 && v97 == 0xE400000000000000)
          {

LABEL_106:
            v137 = *(v0 + 4744);

LABEL_107:
            *(v0 + 4792) = v137;
            v192 = (*(v0 + 4760) + **(v0 + 4760));
            v138 = swift_task_alloc();
            *(v0 + 4800) = v138;
            *v138 = v0;
            v138[1] = sub_100336FC0;
            v139 = *(v0 + 4616);
            v140 = *(v0 + 4384);

            return v192(v140, v139, v137);
          }

          v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v134)
          {
            goto LABEL_106;
          }
        }

        v135 = *(v0 + 4616);
        v136 = *(v0 + 4568);
        if (*(v135 + *(v136 + 36) + 8) || *(v135 + *(v136 + 44)))
        {
          goto LABEL_106;
        }
      }

      if (qword_1004A9F68 == -1)
      {
LABEL_111:
        v142 = *(v0 + 4616);
        v143 = *(v0 + 4608);
        sub_1000270B4(*(v0 + 4696), static Logger.cryptexcache);
        sub_100340DFC(v142, v143, type metadata accessor for CryptexManager.CryptexConfig);
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.default.getter();
        v146 = os_log_type_enabled(v144, v145);
        v147 = *(v0 + 4608);
        if (v146)
        {
          v148 = *(v0 + 4568);
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v193[0] = v150;
          *v149 = 136315138;
          v151 = (v147 + *(v148 + 20));
          v152 = *v151;
          v153 = v151[1];

          sub_100340E64(v147, type metadata accessor for CryptexManager.CryptexConfig);
          v154 = sub_1000026C0(v152, v153, v193);

          *(v149 + 4) = v154;
          _os_log_impl(&_mh_execute_header, v144, v145, "[%s] Not cacheable", v149, 0xCu);
          sub_100003C3C(v150);
        }

        else
        {

          sub_100340E64(v147, type metadata accessor for CryptexManager.CryptexConfig);
        }

        v137 = 0;
        goto LABEL_107;
      }

LABEL_142:
      swift_once();
      goto LABEL_111;
    }

    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v38 = *(v29 + 16);
  if (v38)
  {
    v39 = *(v0 + 4568);
    v40 = *(v0 + 4416);
    v180 = (v40 + v39[6]);
    v41 = *(v0 + 4400);
    v188 = v40;
    v179 = (v40 + *(v41 + 28));
    v42 = *(v0 + 4408);
    v43 = v29 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v44 = *(v0 + 1066);
    if (v44 == 5)
    {
      v44 = *(v0 + 1065);
    }

    v178 = v44;
    v173 = *(v0 + 4672);
    v169 = *(v0 + 4576);
    v171 = *(v0 + 4488);
    v170 = *(v0 + 4480);
    v177 = *(v41 + 20);
    v174 = *(v42 + 72);
    v172 = *(v0 + 4568);
    v175 = v39[10];
    v176 = v39[12];
    v45 = *(v0 + 4688);
    v190 = _swiftEmptyArrayStorage;
    do
    {
      v184 = v43;
      v185 = v38;
      sub_100340DFC(v43, *(v0 + 4416), type metadata accessor for CryptexManager.PersonalizedCryptex);
      v49 = *(v188 + v176);
      v50 = *v180;
      v51 = v180[1];
      v52 = *v179;
      v53 = v179[1];
      v54 = *(v188 + v175);
      v193[0] = _swiftEmptyArrayStorage;
      if (v53)
      {
        sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_100376BB0;
        *(v55 + 56) = &type metadata for String;
        *(v55 + 64) = &protocol witness table for String;
        *(v55 + 72) = v52;
        strcpy((v55 + 32), "--signing-url");
        *(v55 + 46) = -4864;
        *(v55 + 96) = &type metadata for String;
        *(v55 + 104) = &protocol witness table for String;
        *(v55 + 80) = v53;

        sub_10034A380(v55);
      }

      if (v49 != 4)
      {
        sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_100376BB0;
        *(v56 + 56) = &type metadata for String;
        *(v56 + 64) = &protocol witness table for String;
        *(v56 + 32) = 0xD000000000000015;
        *(v56 + 40) = 0x800000010043DD90;
        if (v49 > 1)
        {
          if (v49 == 2)
          {
            v57 = 0xE700000000000000;
            v58 = 0x79726F74636166;
          }

          else
          {
            v57 = 0xE400000000000000;
            v58 = 1701736302;
          }
        }

        else if (v49)
        {
          v57 = 0xE600000000000000;
          v58 = 0x6F6C76616964;
        }

        else
        {
          v57 = 0xE500000000000000;
          v58 = 0x7573746174;
        }

        *(v56 + 96) = &type metadata for String;
        *(v56 + 104) = &protocol witness table for String;
        *(v56 + 72) = v58;
        *(v56 + 80) = v57;
        sub_10034A380(v56);
      }

      sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_100376A40;
      *(v59 + 56) = &type metadata for String;
      v29 = &protocol witness table for String;
      *(v59 + 64) = &protocol witness table for String;
      *(v59 + 32) = 0x6C6C6174736E69;
      *(v59 + 40) = 0xE700000000000000;
      sub_10034A380(v59);
      if (v51)
      {
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_100376BB0;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = &protocol witness table for String;
        *(v60 + 32) = 0x6E61697261762D2DLL;
        *(v60 + 40) = 0xE900000000000074;
        *(v60 + 96) = &type metadata for String;
        *(v60 + 104) = &protocol witness table for String;
        *(v60 + 72) = v50;
        *(v60 + 80) = v51;

        sub_10034A380(v60);
      }

      if (v178 <= 1)
      {
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_100376A40;
        *(v61 + 56) = &type metadata for String;
        *(v61 + 64) = &protocol witness table for String;
        *(v61 + 32) = 0xD000000000000013;
        *(v61 + 40) = 0x800000010043DDB0;
        sub_10034A380(v61);
      }

      if (v54 != 2 && (v54 & 1) != 0)
      {
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_100376A40;
        *(v62 + 56) = &type metadata for String;
        *(v62 + 64) = &protocol witness table for String;
        *(v62 + 32) = 0x7277646165722D2DLL;
        *(v62 + 40) = 0xEB00000000657469;
        sub_10034A380(v62);
      }

      v63 = *(v0 + 4728);
      v64 = *(v0 + 4456);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_100376F00;
      *(v65 + 56) = &type metadata for String;
      *(v65 + 64) = &protocol witness table for String;
      strcpy((v65 + 32), "--ticket-path");
      *(v65 + 46) = -4864;
      v66 = FilePath.string.getter();
      *(v65 + 96) = &type metadata for String;
      *(v65 + 104) = &protocol witness table for String;
      *(v65 + 72) = v66;
      *(v65 + 80) = v67;
      *(v65 + 136) = v64;
      *(v65 + 144) = sub_100340CDC(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v68 = sub_100064BF8((v65 + 112));
      v63(v68, v188 + v177, v64);
      sub_10034A380(v65);
      if (qword_1004A9E00 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for URL();
      v70 = sub_1000270B4(v69, qword_1004AAA50);
      sub_10034B9E0(v70, v193[0]);
      if (v45)
      {

        if (qword_1004A9DF8 != -1)
        {
          swift_once();
        }

        sub_1000270B4(*(v0 + 4696), static LibCryptex.logger);
        swift_errorRetain();
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v193[0] = v74;
          *v73 = 136315138;
          swift_getErrorValue();
          v75 = Error.localizedDescription.getter();
          v77 = sub_1000026C0(v75, v76, v193);

          *(v73 + 4) = v77;
          _os_log_impl(&_mh_execute_header, v71, v72, "Unable to install cryptex, %s", v73, 0xCu);
          sub_100003C3C(v74);
        }

        else
        {
        }

        *(v0 + 275) = 4;
        if (!*(v173 + 16))
        {
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          v29 = sub_10018D110(0, *(v29 + 16) + 1, 1, v29);
LABEL_21:
          v34 = *(v29 + 16);
          v33 = *(v29 + 24);
          if (v34 >= v33 >> 1)
          {
            v29 = sub_10018D110((v33 > 1), v34 + 1, 1, v29);
          }

          v35 = *(v0 + 4440);
          v36 = *(v0 + 4408);
          sub_100340E64(*(v0 + 4448), type metadata accessor for CryptexManager.PersonalizedCryptex);
          *(v29 + 16) = v34 + 1;
          sub_100340D94(v35, v29 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v34, type metadata accessor for CryptexManager.PersonalizedCryptex);
          goto LABEL_24;
        }

        v84 = (*(v0 + 4416) + *(v172 + 20));
        v85 = sub_100013364(*v84, v84[1]);
        if ((v86 & 1) == 0)
        {
          goto LABEL_135;
        }

        v87 = *(v0 + 4512);
        sub_100340DFC(*(v173 + 56) + *(v171 + 72) * v85, v87, type metadata accessor for Config.Cryptex.Cryptex);
        v88 = *(v87 + *(v170 + 40));
        v89 = *(v88 + 16);
        if (v89 < 2)
        {
          goto LABEL_136;
        }

        swift_unknownObjectRetain();
        if (v89 != (2 * v89 - 1) >> 1)
        {
          sub_1001EF574(v88, v88 + 32, 0, 2 * v89 - 1);
          v91 = v90;

          v88 = v91;
        }

        v46 = *(v0 + 4512);
        v47 = *(v0 + 4416);
        v48 = *(v0 + 4344);
        JSONPointer.init(codingKeys:)(v88);
        sub_100340E64(v46, type metadata accessor for Config.Cryptex.Cryptex);
        (*(*v48 + 120))(v0 + 275, v193, "apply(on:auth:diavloURL:env:reporter:)", 38, 2, 860, &type metadata for Config.Cryptex.CryptexApplyError, &protocol witness table for Config.Cryptex.CryptexApplyError);

        sub_100340E64(v47, type metadata accessor for CryptexManager.PersonalizedCryptex);
      }

      else
      {
        v78 = *(v0 + 4584);
        v79 = *(v0 + 4416);

        sub_100340DFC(v79, v78, type metadata accessor for CryptexManager.CryptexConfig);
        sub_100340E64(v79, type metadata accessor for CryptexManager.PersonalizedCryptex);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v80 = v190;
        }

        else
        {
          v80 = sub_10018D0E8(0, v190[2] + 1, 1, v190);
        }

        v82 = v80[2];
        v81 = v80[3];
        if (v82 >= v81 >> 1)
        {
          v80 = sub_10018D0E8((v81 > 1), v82 + 1, 1, v80);
        }

        v83 = *(v0 + 4584);
        v80[2] = v82 + 1;
        v190 = v80;
        sub_100340D94(v83, v80 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v82, type metadata accessor for CryptexManager.CryptexConfig);
      }

      v45 = 0;
      v43 = v184 + v174;
      v38 = v185 - 1;
    }

    while (v185 != 1);

    v98 = v190;
  }

  else
  {

    v98 = _swiftEmptyArrayStorage;
  }

  v99 = sub_100187404(_swiftEmptyArrayStorage);
  v100 = v98[2];
  v101 = v98;
  if (v100)
  {
    v102 = 0;
    v103 = *(v0 + 4672);
    v104 = *(v0 + 4576);
    v189 = (*(v0 + 4592) + *(*(v0 + 4568) + 20));
    v191 = v98;
    v186 = v98 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v183 = *(v0 + 4488);
    v181 = v104;
    v182 = v98[2];
    while (1)
    {
      if (v102 >= v101[2])
      {
        __break(1u);
        goto LABEL_134;
      }

      sub_100340DFC(&v186[*(v104 + 72) * v102], *(v0 + 4592), type metadata accessor for CryptexManager.CryptexConfig);
      v108 = *v189;
      v107 = v189[1];
      if (!*(v103 + 16) || (v109 = sub_100013364(v108, v107), (v110 & 1) == 0))
      {
        v123 = sub_100013364(v108, v107);
        if (v124)
        {
          v125 = v123;
          v126 = swift_isUniquelyReferenced_nonNull_native();
          v193[0] = v99;
          if (!v126)
          {
            sub_1001844F0();
            v99 = v193[0];
          }

          v127 = *(v0 + 4360);

          sub_100340D94(v99[7] + *(v183 + 72) * v125, v127, type metadata accessor for Config.Cryptex.Cryptex);
          sub_10033DDE0(v125, v99, type metadata accessor for Config.Cryptex.Cryptex);
          v105 = 0;
        }

        else
        {
          v105 = 1;
        }

        v106 = *(v0 + 4592);
        v29 = *(v0 + 4360);
        (*(v183 + 56))(v29, v105, 1, *(v0 + 4480));
        sub_100013F2C(v29, &qword_1004AD198, &qword_1003FC2B0);
        sub_100340E64(v106, type metadata accessor for CryptexManager.CryptexConfig);
        goto LABEL_81;
      }

      v111 = *(v0 + 4504);
      v112 = *(v0 + 4496);
      v113 = v103;
      v114 = *(v183 + 72);
      sub_100340DFC(*(v103 + 56) + v114 * v109, v111, type metadata accessor for Config.Cryptex.Cryptex);
      sub_100340D94(v111, v112, type metadata accessor for Config.Cryptex.Cryptex);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v193[0] = v99;
      v115 = sub_100013364(v108, v107);
      v117 = v99[2];
      v118 = (v116 & 1) == 0;
      v119 = __OFADD__(v117, v118);
      v120 = v117 + v118;
      if (v119)
      {
        goto LABEL_137;
      }

      v121 = v116;
      if (v99[3] < v120)
      {
        break;
      }

      if (v29)
      {
        goto LABEL_94;
      }

      v129 = v115;
      sub_1001844F0();
      v115 = v129;
      v99 = v193[0];
      v128 = *(v0 + 4496);
      if ((v121 & 1) == 0)
      {
LABEL_97:
        v99[(v115 >> 6) + 8] |= 1 << v115;
        v130 = (v99[6] + 16 * v115);
        *v130 = v108;
        v130[1] = v107;
        sub_100340D94(v128, v99[7] + v115 * v114, type metadata accessor for Config.Cryptex.Cryptex);
        v131 = v99[2];
        v119 = __OFADD__(v131, 1);
        v132 = v131 + 1;
        if (v119)
        {
          goto LABEL_138;
        }

        v99[2] = v132;

        goto LABEL_99;
      }

LABEL_95:
      sub_10022091C(v128, v99[7] + v115 * v114);
LABEL_99:
      sub_100340E64(*(v0 + 4592), type metadata accessor for CryptexManager.CryptexConfig);
      v103 = v113;
      v104 = v181;
      v100 = v182;
LABEL_81:
      ++v102;
      v101 = v191;
      if (v100 == v102)
      {
        goto LABEL_100;
      }
    }

    sub_100182898(v120, v29);
    v99 = v193[0];
    v115 = sub_100013364(v108, v107);
    if ((v121 & 1) != (v122 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_94:
    v128 = *(v0 + 4496);
    if ((v121 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_95;
  }

LABEL_100:
  v133 = *(v0 + 1067);

  *(v0 + 256) = v99;
  if ((v133 & 1) != 0 && (static Network.unsetUplinkBandwidthLimit()() & 1) == 0)
  {
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&_mh_execute_header, v155, v156, "Failed to unset bandwith limit.", v157, 2u);
    }

    v158 = Config.Analytics.submit.modify();
    v160 = v159;
    memmove((v0 + 2944), v159, 0x81uLL);
    if (sub_100218DC8((v0 + 2944)) != 1)
    {
      v160[6] = 0;
      *(v160 + 56) = 1;
    }

    (v158)(v0 + 4216, 0);
  }

  else
  {
  }

  v161 = *(v0 + 104);
  v162 = *(v0 + 136);
  *(v0 + 2904) = *(v0 + 120);
  *(v0 + 2920) = v162;
  *(v0 + 2936) = *(v0 + 152);
  v163 = *(v0 + 40);
  v164 = *(v0 + 72);
  *(v0 + 2840) = *(v0 + 56);
  *(v0 + 2856) = v164;
  *(v0 + 2872) = *(v0 + 88);
  *(v0 + 2888) = v161;
  *(v0 + 2808) = *(v0 + 24);
  *(v0 + 2824) = v163;
  v165 = *(v0 + 168);
  v166 = *(v0 + 256);
  v167 = *(v0 + 272);
  if (sub_100218DC8((v0 + 2808)) != 1 || v165 || v166 || v167 != 2)
  {
    memcpy((v0 + 1600), (v0 + 16), 0x101uLL);
    DInitData.init(rawValue:)();
    memcpy((v0 + 280), (v0 + 1600), 0x101uLL);
  }

  else
  {
    memcpy((v0 + 1864), (v0 + 16), 0x101uLL);
    sub_1002208C8(v0 + 1864);
    sub_100218CA0(v0 + 280);
  }

  memcpy(*(v0 + 4328), (v0 + 280), 0x101uLL);

  v168 = *(v0 + 8);

  return v168();
}

uint64_t sub_1003389BC()
{

  return _swift_task_switch(sub_100338AB8, 0, 0);
}

uint64_t sub_100338AB8()
{
  v172 = v0;
  v1 = *(*(v0 + 4408) + 48);
  if (v1(*(v0 + 4368), 1, *(v0 + 4400)) == 1)
  {
    if (*(*(v0 + 4672) + 16))
    {
      v2 = (*(v0 + 4600) + *(*(v0 + 4568) + 20));
      v3 = sub_100013364(*v2, v2[1]);
      if (v4)
      {
        v5 = *(v0 + 4528);
        v6 = *(v0 + 4520);
        v7 = *(v0 + 4480);
        sub_100340DFC(*(*(v0 + 4672) + 56) + *(*(v0 + 4488) + 72) * v3, v6, type metadata accessor for Config.Cryptex.Cryptex);
        result = sub_100340D94(v6, v5, type metadata accessor for Config.Cryptex.Cryptex);
        *(v0 + 274) = 3;
        v9 = *(v5 + *(v7 + 40));
        v10 = v9[2];
        if (v10 < 2)
        {
          goto LABEL_124;
        }

        v11 = (v10 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v10 == v11)
        {
          v165 = v1;

          v12 = v9;
        }

        else
        {
          sub_1000039E8(&qword_1004AAA00, &qword_1003FC3A0);
          v12 = swift_allocObject();
          v13 = j__malloc_size(v12);
          v12[2] = v11;
          v12[3] = 2 * ((v13 - 32) / 40);
          sub_1000039E8(&qword_1004AAA08, &qword_1003F40C8);
          swift_arrayInitWithCopy();
          v10 = v12[2];
          if (!v10)
          {

            v136 = _swiftEmptyArrayStorage;
LABEL_111:
            v144 = *(v0 + 4600);
            v145 = *(v0 + 4528);
            v146 = *(v0 + 4344);
            v171[0] = v136;
            (*(*v146 + 120))(v0 + 274, v171, "apply(on:auth:diavloURL:env:reporter:)", 38, 2, 848, &type metadata for Config.Cryptex.CryptexApplyError, &protocol witness table for Config.Cryptex.CryptexApplyError);

            sub_100340E64(v144, type metadata accessor for CryptexManager.CryptexConfig);
            v15 = type metadata accessor for Config.Cryptex.Cryptex;
            v14 = v145;
            goto LABEL_9;
          }

          v165 = v1;
        }

        *(v0 + 4312) = _swiftEmptyArrayStorage;
        sub_1003110E8(0, v10, 0);
        v136 = *(v0 + 4312);
        v137 = (v12 + 4);
        do
        {
          sub_100003B20(v137, v0 + 4104);
          sub_10000E2A8((v0 + 4104), *(v0 + 4128));
          v138 = dispatch thunk of CodingKey.stringValue.getter();
          v140 = v139;
          sub_100003C3C((v0 + 4104));
          *(v0 + 4312) = v136;
          v142 = v136[2];
          v141 = v136[3];
          if (v142 >= v141 >> 1)
          {
            sub_1003110E8((v141 > 1), v142 + 1, 1);
            v136 = *(v0 + 4312);
          }

          v136[2] = v142 + 1;
          v143 = &v136[2 * v142];
          v143[4] = v138;
          v143[5] = v140;
          v137 += 40;
          --v10;
        }

        while (v10);

        v1 = v165;
        goto LABEL_111;
      }
    }
  }

  v14 = *(v0 + 4600);
  v15 = type metadata accessor for CryptexManager.CryptexConfig;
LABEL_9:
  sub_100340E64(v14, v15);
  v16 = *(v0 + 4400);
  v17 = *(v0 + 4376);
  sub_10003E154(*(v0 + 4368), v17, &qword_1004B0140, &qword_100406380);
  if (v1(v17, 1, v16) != 1)
  {
    v19 = *(v0 + 4432);
    v20 = *(v0 + 4424);
    sub_100340D94(*(v0 + 4376), v19, type metadata accessor for CryptexManager.PersonalizedCryptex);
    sub_100340DFC(v19, v20, type metadata accessor for CryptexManager.PersonalizedCryptex);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v0 + 4840);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_12;
  }

  result = sub_100013F2C(*(v0 + 4376), &qword_1004B0140, &qword_100406380);
  v18 = *(v0 + 4840);
LABEL_15:
  v26 = *(v0 + 4832) + 1;
  if (v26 != *(v0 + 4808))
  {
    *(v0 + 4840) = v18;
    *(v0 + 4832) = v26;
    v81 = *(v0 + 4712);
    if (v26 < *(v81 + 16))
    {
      v82 = *(v0 + 4816);
      sub_100340DFC(v81 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 4576) + 72) * v26, *(v0 + 4600), type metadata accessor for CryptexManager.CryptexConfig);
      v169 = (v82 + *v82);
      v83 = swift_task_alloc();
      *(v0 + 4848) = v83;
      *v83 = v0;
      v83[1] = sub_1003389BC;
      v84 = *(v0 + 4600);
      v85 = *(v0 + 4368);

      return (v169)(v85, v84, 0);
    }

    __break(1u);
LABEL_124:
    __break(1u);
    return result;
  }

  v27 = *(v18 + 16);
  if (v27)
  {
    v28 = *(v0 + 4568);
    v29 = *(v0 + 4416);
    v158 = (v29 + v28[6]);
    v30 = *(v0 + 4400);
    v166 = v29;
    v157 = (v29 + *(v30 + 28));
    v31 = *(v0 + 4408);
    v32 = v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v33 = *(v0 + 1066);
    if (v33 == 5)
    {
      v33 = *(v0 + 1065);
    }

    v156 = v33;
    v151 = *(v0 + 4672);
    v147 = *(v0 + 4576);
    v149 = *(v0 + 4488);
    v148 = *(v0 + 4480);
    v155 = *(v30 + 20);
    v152 = *(v31 + 72);
    v150 = *(v0 + 4568);
    v153 = v28[10];
    v154 = v28[12];
    v34 = *(v0 + 4688);
    v168 = _swiftEmptyArrayStorage;
    do
    {
      v162 = v32;
      v163 = v27;
      sub_100340DFC(v32, *(v0 + 4416), type metadata accessor for CryptexManager.PersonalizedCryptex);
      v38 = *(v166 + v154);
      v39 = *v158;
      v40 = v158[1];
      v41 = *v157;
      v42 = v157[1];
      v43 = *(v166 + v153);
      v171[0] = _swiftEmptyArrayStorage;
      if (v42)
      {
        sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_100376BB0;
        *(v44 + 56) = &type metadata for String;
        *(v44 + 64) = &protocol witness table for String;
        *(v44 + 72) = v41;
        strcpy((v44 + 32), "--signing-url");
        *(v44 + 46) = -4864;
        *(v44 + 96) = &type metadata for String;
        *(v44 + 104) = &protocol witness table for String;
        *(v44 + 80) = v42;

        sub_10034A380(v44);
      }

      if (v38 != 4)
      {
        sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_100376BB0;
        *(v45 + 56) = &type metadata for String;
        *(v45 + 64) = &protocol witness table for String;
        *(v45 + 32) = 0xD000000000000015;
        *(v45 + 40) = 0x800000010043DD90;
        if (v38 > 1)
        {
          if (v38 == 2)
          {
            v46 = 0xE700000000000000;
            v47 = 0x79726F74636166;
          }

          else
          {
            v46 = 0xE400000000000000;
            v47 = 1701736302;
          }
        }

        else if (v38)
        {
          v46 = 0xE600000000000000;
          v47 = 0x6F6C76616964;
        }

        else
        {
          v46 = 0xE500000000000000;
          v47 = 0x7573746174;
        }

        *(v45 + 96) = &type metadata for String;
        *(v45 + 104) = &protocol witness table for String;
        *(v45 + 72) = v47;
        *(v45 + 80) = v46;
        sub_10034A380(v45);
      }

      sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_100376A40;
      *(v48 + 56) = &type metadata for String;
      v18 = &protocol witness table for String;
      *(v48 + 64) = &protocol witness table for String;
      *(v48 + 32) = 0x6C6C6174736E69;
      *(v48 + 40) = 0xE700000000000000;
      sub_10034A380(v48);
      if (v40)
      {
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_100376BB0;
        *(v49 + 56) = &type metadata for String;
        *(v49 + 64) = &protocol witness table for String;
        *(v49 + 32) = 0x6E61697261762D2DLL;
        *(v49 + 40) = 0xE900000000000074;
        *(v49 + 96) = &type metadata for String;
        *(v49 + 104) = &protocol witness table for String;
        *(v49 + 72) = v39;
        *(v49 + 80) = v40;

        sub_10034A380(v49);
      }

      if (v156 <= 1)
      {
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_100376A40;
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = &protocol witness table for String;
        *(v50 + 32) = 0xD000000000000013;
        *(v50 + 40) = 0x800000010043DDB0;
        sub_10034A380(v50);
      }

      if (v43 != 2 && (v43 & 1) != 0)
      {
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_100376A40;
        *(v51 + 56) = &type metadata for String;
        *(v51 + 64) = &protocol witness table for String;
        *(v51 + 32) = 0x7277646165722D2DLL;
        *(v51 + 40) = 0xEB00000000657469;
        sub_10034A380(v51);
      }

      v52 = *(v0 + 4728);
      v53 = *(v0 + 4456);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100376F00;
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = &protocol witness table for String;
      strcpy((v54 + 32), "--ticket-path");
      *(v54 + 46) = -4864;
      v55 = FilePath.string.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = &protocol witness table for String;
      *(v54 + 72) = v55;
      *(v54 + 80) = v56;
      *(v54 + 136) = v53;
      *(v54 + 144) = sub_100340CDC(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v57 = sub_100064BF8((v54 + 112));
      v52(v57, v166 + v155, v53);
      sub_10034A380(v54);
      if (qword_1004A9E00 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for URL();
      v59 = sub_1000270B4(v58, qword_1004AAA50);
      sub_10034B9E0(v59, v171[0]);
      if (v34)
      {

        if (qword_1004A9DF8 != -1)
        {
          swift_once();
        }

        sub_1000270B4(*(v0 + 4696), static LibCryptex.logger);
        swift_errorRetain();
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v171[0] = v63;
          *v62 = 136315138;
          swift_getErrorValue();
          v64 = Error.localizedDescription.getter();
          v66 = sub_1000026C0(v64, v65, v171);

          *(v62 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v60, v61, "Unable to install cryptex, %s", v62, 0xCu);
          sub_100003C3C(v63);
        }

        else
        {
        }

        *(v0 + 275) = 4;
        if (!*(v151 + 16))
        {
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
          v18 = sub_10018D110(0, *(v18 + 16) + 1, 1, v18);
LABEL_12:
          v23 = *(v18 + 16);
          v22 = *(v18 + 24);
          if (v23 >= v22 >> 1)
          {
            v18 = sub_10018D110((v22 > 1), v23 + 1, 1, v18);
          }

          v24 = *(v0 + 4424);
          v25 = *(v0 + 4408);
          sub_100340E64(*(v0 + 4432), type metadata accessor for CryptexManager.PersonalizedCryptex);
          *(v18 + 16) = v23 + 1;
          result = sub_100340D94(v24, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, type metadata accessor for CryptexManager.PersonalizedCryptex);
          goto LABEL_15;
        }

        v73 = (*(v0 + 4416) + *(v150 + 20));
        v74 = sub_100013364(*v73, v73[1]);
        if ((v75 & 1) == 0)
        {
          goto LABEL_118;
        }

        v76 = *(v0 + 4512);
        sub_100340DFC(*(v151 + 56) + *(v149 + 72) * v74, v76, type metadata accessor for Config.Cryptex.Cryptex);
        v77 = *(v76 + *(v148 + 40));
        v78 = *(v77 + 16);
        if (v78 < 2)
        {
          goto LABEL_119;
        }

        swift_unknownObjectRetain();
        if (v78 != (2 * v78 - 1) >> 1)
        {
          sub_1001EF574(v77, v77 + 32, 0, 2 * v78 - 1);
          v80 = v79;

          v77 = v80;
        }

        v35 = *(v0 + 4512);
        v36 = *(v0 + 4416);
        v37 = *(v0 + 4344);
        JSONPointer.init(codingKeys:)(v77);
        sub_100340E64(v35, type metadata accessor for Config.Cryptex.Cryptex);
        (*(*v37 + 120))(v0 + 275, v171, "apply(on:auth:diavloURL:env:reporter:)", 38, 2, 860, &type metadata for Config.Cryptex.CryptexApplyError, &protocol witness table for Config.Cryptex.CryptexApplyError);

        sub_100340E64(v36, type metadata accessor for CryptexManager.PersonalizedCryptex);
      }

      else
      {
        v67 = *(v0 + 4584);
        v68 = *(v0 + 4416);

        sub_100340DFC(v68, v67, type metadata accessor for CryptexManager.CryptexConfig);
        sub_100340E64(v68, type metadata accessor for CryptexManager.PersonalizedCryptex);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v69 = v168;
        }

        else
        {
          v69 = sub_10018D0E8(0, v168[2] + 1, 1, v168);
        }

        v71 = v69[2];
        v70 = v69[3];
        if (v71 >= v70 >> 1)
        {
          v69 = sub_10018D0E8((v70 > 1), v71 + 1, 1, v69);
        }

        v72 = *(v0 + 4584);
        v69[2] = v71 + 1;
        v168 = v69;
        sub_100340D94(v72, v69 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v71, type metadata accessor for CryptexManager.CryptexConfig);
      }

      v34 = 0;
      v32 = v162 + v152;
      v27 = v163 - 1;
    }

    while (v163 != 1);

    v86 = v168;
  }

  else
  {

    v86 = _swiftEmptyArrayStorage;
  }

  v87 = sub_100187404(_swiftEmptyArrayStorage);
  v88 = v86[2];
  v89 = v86;
  if (v88)
  {
    v90 = 0;
    v91 = *(v0 + 4672);
    v92 = *(v0 + 4576);
    v167 = (*(v0 + 4592) + *(*(v0 + 4568) + 20));
    v170 = v86;
    v164 = v86 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
    v161 = *(v0 + 4488);
    v159 = v92;
    v160 = v86[2];
    while (1)
    {
      if (v90 >= v89[2])
      {
        __break(1u);
        goto LABEL_117;
      }

      sub_100340DFC(&v164[*(v92 + 72) * v90], *(v0 + 4592), type metadata accessor for CryptexManager.CryptexConfig);
      v96 = *v167;
      v95 = v167[1];
      if (!*(v91 + 16) || (v97 = sub_100013364(v96, v95), (v98 & 1) == 0))
      {
        v111 = sub_100013364(v96, v95);
        if (v112)
        {
          v113 = v111;
          v114 = swift_isUniquelyReferenced_nonNull_native();
          v171[0] = v87;
          if (!v114)
          {
            sub_1001844F0();
            v87 = v171[0];
          }

          v115 = *(v0 + 4360);

          sub_100340D94(v87[7] + *(v161 + 72) * v113, v115, type metadata accessor for Config.Cryptex.Cryptex);
          sub_10033DDE0(v113, v87, type metadata accessor for Config.Cryptex.Cryptex);
          v93 = 0;
        }

        else
        {
          v93 = 1;
        }

        v94 = *(v0 + 4592);
        v18 = *(v0 + 4360);
        (*(v161 + 56))(v18, v93, 1, *(v0 + 4480));
        sub_100013F2C(v18, &qword_1004AD198, &qword_1003FC2B0);
        sub_100340E64(v94, type metadata accessor for CryptexManager.CryptexConfig);
        goto LABEL_69;
      }

      v99 = *(v0 + 4504);
      v100 = *(v0 + 4496);
      v101 = v91;
      v102 = *(v161 + 72);
      sub_100340DFC(*(v91 + 56) + v102 * v97, v99, type metadata accessor for Config.Cryptex.Cryptex);
      sub_100340D94(v99, v100, type metadata accessor for Config.Cryptex.Cryptex);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v171[0] = v87;
      v103 = sub_100013364(v96, v95);
      v105 = v87[2];
      v106 = (v104 & 1) == 0;
      v107 = __OFADD__(v105, v106);
      v108 = v105 + v106;
      if (v107)
      {
        goto LABEL_120;
      }

      v109 = v104;
      if (v87[3] < v108)
      {
        break;
      }

      if (v18)
      {
        goto LABEL_82;
      }

      v117 = v103;
      sub_1001844F0();
      v103 = v117;
      v87 = v171[0];
      v116 = *(v0 + 4496);
      if ((v109 & 1) == 0)
      {
LABEL_85:
        v87[(v103 >> 6) + 8] |= 1 << v103;
        v118 = (v87[6] + 16 * v103);
        *v118 = v96;
        v118[1] = v95;
        sub_100340D94(v116, v87[7] + v103 * v102, type metadata accessor for Config.Cryptex.Cryptex);
        v119 = v87[2];
        v107 = __OFADD__(v119, 1);
        v120 = v119 + 1;
        if (v107)
        {
          goto LABEL_121;
        }

        v87[2] = v120;

        goto LABEL_87;
      }

LABEL_83:
      sub_10022091C(v116, v87[7] + v103 * v102);
LABEL_87:
      sub_100340E64(*(v0 + 4592), type metadata accessor for CryptexManager.CryptexConfig);
      v91 = v101;
      v92 = v159;
      v88 = v160;
LABEL_69:
      ++v90;
      v89 = v170;
      if (v88 == v90)
      {
        goto LABEL_88;
      }
    }

    sub_100182898(v108, v18);
    v87 = v171[0];
    v103 = sub_100013364(v96, v95);
    if ((v109 & 1) != (v110 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_82:
    v116 = *(v0 + 4496);
    if ((v109 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_83;
  }

LABEL_88:
  v121 = *(v0 + 1067);

  *(v0 + 256) = v87;
  if ((v121 & 1) != 0 && (static Network.unsetUplinkBandwidthLimit()() & 1) == 0)
  {
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&_mh_execute_header, v122, v123, "Failed to unset bandwith limit.", v124, 2u);
    }

    v125 = Config.Analytics.submit.modify();
    v127 = v126;
    memmove((v0 + 2944), v126, 0x81uLL);
    if (sub_100218DC8((v0 + 2944)) != 1)
    {
      v127[6] = 0;
      *(v127 + 56) = 1;
    }

    (v125)(v0 + 4216, 0);
  }

  else
  {
  }

  v128 = *(v0 + 104);
  v129 = *(v0 + 136);
  *(v0 + 2904) = *(v0 + 120);
  *(v0 + 2920) = v129;
  *(v0 + 2936) = *(v0 + 152);
  v130 = *(v0 + 40);
  v131 = *(v0 + 72);
  *(v0 + 2840) = *(v0 + 56);
  *(v0 + 2856) = v131;
  *(v0 + 2872) = *(v0 + 88);
  *(v0 + 2888) = v128;
  *(v0 + 2808) = *(v0 + 24);
  *(v0 + 2824) = v130;
  v132 = *(v0 + 168);
  v133 = *(v0 + 256);
  v134 = *(v0 + 272);
  if (sub_100218DC8((v0 + 2808)) != 1 || v132 || v133 || v134 != 2)
  {
    memcpy((v0 + 1600), (v0 + 16), 0x101uLL);
    DInitData.init(rawValue:)();
    memcpy((v0 + 280), (v0 + 1600), 0x101uLL);
  }

  else
  {
    memcpy((v0 + 1864), (v0 + 16), 0x101uLL);
    sub_1002208C8(v0 + 1864);
    sub_100218CA0(v0 + 280);
  }

  memcpy(*(v0 + 4328), (v0 + 280), 0x101uLL);

  v135 = *(v0 + 8);

  return v135();
}

double Config.FeatureFlag.apply(on:configSecurityPolicy:)@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = v2[5];
  v30 = v2[4];
  v31 = v4;
  v32[0] = v2[6];
  *(v32 + 9) = *(v2 + 105);
  v5 = v2[1];
  v26 = *v2;
  v27 = v5;
  v6 = v2[3];
  v28 = v2[2];
  v29 = v6;
  if (*(v2 + 2))
  {
    v7 = sub_10033ADB4(a1);
  }

  else
  {
    if (!*(v2 + 10))
    {
LABEL_7:
      sub_10033FBD4(&v19);
      goto LABEL_8;
    }

    v7 = sub_10033B508(a1);
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v16 = v30;
  v17 = v31;
  *v18 = v32[0];
  *&v18[9] = *(v32 + 9);
  v12 = v26;
  v13 = v27;
  v14 = v28;
  v15 = v29;
  DInitData.init(rawValue:)();
  sub_1001D8878(v2, &v19);
  v23 = v16;
  v24 = v17;
  v25[0] = *v18;
  *(v25 + 9) = *&v18[9];
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
LABEL_8:
  v8 = v24;
  a2[4] = v23;
  a2[5] = v8;
  a2[6] = v25[0];
  *(a2 + 105) = *(v25 + 9);
  v9 = v20;
  *a2 = v19;
  a2[1] = v9;
  result = *&v21;
  v11 = v22;
  a2[2] = v21;
  a2[3] = v11;
  return result;
}

uint64_t sub_10033A398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100291D4C;

  return Config.Package.apply(on:)(a1, a3);
}

uint64_t Config.Package.apply(on:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10033A458, 0, 0);
}

uint64_t sub_10033A458()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_10000E2A8(v1, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000270B4(v4, qword_1004B00F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Package Install has no effect because it is not available on this platform", v7, 2u);
    }
  }

  v8 = v0[2];
  v9 = type metadata accessor for Config.Package(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = v0[1];

  return v10();
}

void Config.Finish.apply(on:globals:)(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  v5 = a2[16];
  v6 = a2[17];
  v7 = a2[88];
  v8 = a2[89];
  v9 = *(v3 + 64);
  if (v9)
  {
    v37 = a2[17];
    v38 = a2[16];
    v39 = a2[89];
    v40 = a2[88];
    v11 = *(v9 + 16);

    v12 = 0;
    v42 = v9;
    v13 = (v9 + 40);
    v14 = &qword_1004A9000;
    v44 = v11;
    v45 = a1;
    do
    {
      if (v11 == v12)
      {

        v9 = v42;
        v4 = a3;
        v3 = v41;
        v8 = v39;
        v7 = v40;
        v6 = v37;
        v5 = v38;
        goto LABEL_10;
      }

      v19 = *(v13 - 1);
      v18 = *v13;
      v20 = v14[484];

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000270B4(v21, qword_1004B00F8);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v46 = v25;
        *v24 = 134218242;
        *(v24 + 4) = v12 + 1;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1000026C0(v19, v18, &v46);
        _os_log_impl(&_mh_execute_header, v22, v23, "Executing finish command %ld: %s", v24, 0x16u);
        sub_100003C3C(v25);
        v14 = &qword_1004A9000;

        v11 = v44;
        a1 = v45;
      }

      sub_10000E2A8(a1, a1[3]);
      v15.value._countAndFlagsBits = 0x7361622F6E69622FLL;
      v15.value._object = 0xE900000000000068;
      v16._countAndFlagsBits = v19;
      v16._object = v18;
      v17 = Computer.run(shell:command:)(v15, v16);

      v13 += 2;
      ++v12;
    }

    while (v17);

    *&v46 = _swiftEmptyArrayStorage;
    *(&v46 + 1) = 0;
    v47 = 0;
    v48 = _swiftEmptyArrayStorage;
    v49 = 3;
    v50 = _swiftEmptyArrayStorage;
    v51 = 2;
    v52 = _swiftEmptyArrayStorage;
    v53 = 0;
    v54 = _swiftEmptyArrayStorage;
    v55 = 5;
    sub_100220818(&v46);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v33, v34, "Finish command %ld failed.", v35, 0xCu);
    }

    v32 = 0;
    v31 = 0;
    v9 = 0;
    v36 = 0;
    v29 = 0;
    v27 = 0;
    v30 = 0;
    v4 = a3;
  }

  else
  {
LABEL_10:
    if (v6 != 2)
    {
      v5 = v6;
    }

    v26 = v5 & 1;
    if (*(v3 + 48) == 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v26;
    }

    if (v8 == 5)
    {
      v28 = v7;
    }

    else
    {
      v28 = v8;
    }

    if (*(v3 + 80) == 5)
    {
      v29 = 5;
    }

    else
    {
      v29 = v28;
    }

    v30 = *(v3 + 32);
    v46 = *(v3 + 8);
    v31 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v32 = v46;
      sub_100013E54(&v46, v56, &qword_1004A7330, &qword_1003762A0);
      if (_s10DarwinInit6ConfigV6FinishV5print7logTextSbSS_tFZ_0(v32, v31))
      {
      }

      else
      {
        sub_100013F2C(&v46, &qword_1004A7330, &qword_1003762A0);
        v32 = 0;
        v31 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    v36 = _swiftEmptyArrayStorage;
  }

  *v4 = v36;
  *(v4 + 8) = v32;
  *(v4 + 16) = v31;
  *(v4 + 24) = v36;
  *(v4 + 32) = v30;
  *(v4 + 40) = v36;
  *(v4 + 48) = v27;
  *(v4 + 56) = v36;
  *(v4 + 64) = v9;
  *(v4 + 72) = v36;
  *(v4 + 80) = v29;
}

uint64_t sub_10033A9E8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100001FE0;

  return sub_10033A398(a1, a2, v6);
}

double sub_10033AA98@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = a1[5];
  v21[6] = a1[4];
  v21[7] = v5;
  v22[0] = a1[6];
  *(v22 + 9) = *(a1 + 105);
  v6 = a1[1];
  v21[2] = *a1;
  v21[3] = v6;
  v7 = a1[3];
  v21[4] = a1[2];
  v21[5] = v7;
  v8 = v4[10];
  v9 = v4[11];
  *(v21 + 9) = *(v4 + 185);
  v20 = v8;
  v21[0] = v9;
  Config.FeatureFlag.apply(on:configSecurityPolicy:)(&v20, v14);
  v10 = v18;
  a2[4] = v17;
  a2[5] = v10;
  a2[6] = v19[0];
  *(a2 + 105) = *(v19 + 9);
  v11 = v14[1];
  *a2 = v14[0];
  a2[1] = v11;
  result = *&v15;
  v13 = v16;
  a2[2] = v15;
  a2[3] = v13;
  return result;
}

double sub_10033AB48@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v12[8] = a1[2];
  v12[9] = v5;
  v6 = a1[5];
  v12[10] = a1[4];
  v12[11] = v6;
  v7 = a1[1];
  v12[6] = *a1;
  v12[7] = v7;
  Config.Root.install(on:)(v4, v12);
  v8 = v12[3];
  a2[2] = v12[2];
  a2[3] = v8;
  v9 = v12[5];
  a2[4] = v12[4];
  a2[5] = v9;
  result = *v12;
  v11 = v12[1];
  *a2 = v12[0];
  a2[1] = v11;
  return result;
}

void Either<>.apply(to:)(Swift::OpaquePointer *a1)
{
  v3 = *v1;
  if (v1[88])
  {
    v4 = (*(v1 + 1) << 8) | ((*(v1 + 5) | (v1[7] << 16)) << 40);
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = v3;
    v3 = 0;
  }

  rawValue = a1->_rawValue;
  sub_10033FFCC(a1->_rawValue, v5 & 1);
  if (v3 | v4)
  {
    Config.Tailspin.apply(tailspin_config:)(a1);
  }

  else
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, qword_1004B00F8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Applying default tailspin configuration.", v10, 2u);
    }

    sub_100340138(rawValue, 50);
  }
}

uint64_t sub_10033ADB4(void *a1)
{
  v36 = *(v1 + 8);
  v2 = *(&v36 + 1);
  if (!*(&v36 + 1) || (v35 = *(v1 + 32), (v3 = *(&v35 + 1)) == 0) || *(v1 + 56) == 2)
  {
    sub_100340D24();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    return v5 & 1;
  }

  v29 = *(v1 + 56);
  v33 = v36;
  v32 = v35;
  v31 = [objc_opt_self() shared];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000270B4(v7, qword_1004B00F8);
  sub_100013E54(&v35, v34, &qword_1004A7330, &qword_1003762A0);
  sub_100013E54(&v36, v34, &qword_1004A7330, &qword_1003762A0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  sub_100013F2C(&v35, &qword_1004A7330, &qword_1003762A0);
  sub_100013F2C(&v36, &qword_1004A7330, &qword_1003762A0);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = v32;
    *(v10 + 4) = sub_1000026C0(v32, v3, v34);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1000026C0(v33, v2, v34);
    _os_log_impl(&_mh_execute_header, v8, v9, "Applying %s feature for domain %s.", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v11 = v32;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = [v31 isValidName:v12];

  if ((v13 & 1) == 0)
  {
    sub_100013E54(&v35, v34, &qword_1004A7330, &qword_1003762A0);
    sub_100013E54(&v36, v34, &qword_1004A7330, &qword_1003762A0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_100013F2C(&v35, &qword_1004A7330, &qword_1003762A0);
    sub_100013F2C(&v36, &qword_1004A7330, &qword_1003762A0);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1000026C0(v32, v3, v34);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1000026C0(v33, v2, v34);
      _os_log_impl(&_mh_execute_header, v18, v19, "Invalid feature name %s in domain %s.", v20, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_21;
  }

  if ((_s10DarwinInit6ConfigV11FeatureFlagV014isAllowedToSetD0ySbSo15FFConfigurationC_S2SAC14SecurityPolicyVSgtF_0(v31, v11, v3, v33, v2, a1) & 1) == 0)
  {
    sub_100013E54(&v35, v34, &qword_1004A7330, &qword_1003762A0);
    sub_100013E54(&v36, v34, &qword_1004A7330, &qword_1003762A0);
    v18 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_100013F2C(&v35, &qword_1004A7330, &qword_1003762A0);
    sub_100013F2C(&v36, &qword_1004A7330, &qword_1003762A0);
    if (os_log_type_enabled(v18, v21))
    {
      v22 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v22 = 136315650;
      *(v22 + 4) = sub_1000026C0(v32, v3, v34);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1000026C0(v33, v2, v34);
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_1000026C0(0xD000000000000022, 0x80000001004456E0, v34);
      _os_log_impl(&_mh_execute_header, v18, v21, "Disallowing feature %s in domain %s - check %s attribute", v22, 0x20u);
      swift_arrayDestroy();

LABEL_22:
      v5 = 0;
      return v5 & 1;
    }

LABEL_21:

    goto LABEL_22;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = &selRef_enableFeature_domain_level_;
  if ((v29 & 1) == 0)
  {
    v16 = &selRef_disableFeature_domain_level_;
  }

  [v31 *v16];

  v34[0] = 0;
  if ([v31 commitUpdates:v34])
  {
    v17 = v34[0];

    v5 = 1;
  }

  else
  {
    v23 = v34[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to commit changes global changes with error %@.", v26, 0xCu);
      sub_100013F2C(v27, &qword_1004AA050, &unk_1003F2F10);
    }

    else
    {
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10033B508(void *a1)
{
  v31 = [objc_opt_self() shared];
  v2 = [v31 domains];
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = 0;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = (v5 + 63) >> 6;
  if (!v7)
  {
LABEL_5:
    while (1)
    {
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        v32 = 0;
        v7 = v31;
        if ([v31 commitUpdates:&v32])
        {
          v14 = v32;

          v15 = 1;
          return v15 & 1;
        }

        v16 = v32;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1004A9F20 == -1)
        {
LABEL_15:
          v17 = type metadata accessor for Logger();
          sub_1000270B4(v17, qword_1004B00F8);
          swift_errorRetain();
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            *v20 = 138412290;
            swift_errorRetain();
            v22 = _swift_stdlib_bridgeErrorToNSError();
            *(v20 + 4) = v22;
            *v21 = v22;
            _os_log_impl(&_mh_execute_header, v18, v19, "Failed to commit changes with error %@.", v20, 0xCu);
            sub_100013F2C(v21, &qword_1004AA050, &unk_1003F2F10);
          }

          else
          {
          }

          v15 = 0;
          return v15 & 1;
        }

LABEL_28:
        swift_once();
        goto LABEL_15;
      }

      v7 = *(v3 + 56 + 8 * v9);
      ++v4;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  while (1)
  {
    v9 = v4;
LABEL_8:
    v10 = (*(v3 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v10;
    v11 = v10[1];

    v13 = sub_10033B9A0(v31, v12, v11, a1);
    if (v1)
    {

      return v15 & 1;
    }

    if ((v13 & 1) == 0)
    {
      break;
    }

    v7 &= v7 - 1;

    v4 = v9;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000270B4(v23, qword_1004B00F8);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136315138;
    v28 = sub_1000026C0(v12, v11, &v32);

    *(v26 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to apply conf to %s", v26, 0xCu);
    sub_100003C3C(v27);
  }

  else
  {
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t sub_10033B9A0(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v100 = a2;
  v96 = v4[10];
  if (!v96 || !v4[13])
  {
    sub_100340D24();
    swift_allocError();
    *v77 = 1;
    swift_willThrow();
    return 1;
  }

  v92 = v4[13];
  v93 = v4[9];
  v91 = v4[12];
  v7 = String._bridgeToObjectiveC()();
  v97 = a1;
  v8 = [a1 featuresForDomain:v7];

  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = 0;
  v11 = v9 + 56;
  v98 = v9;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 56);
  v15 = (v12 + 63) >> 6;
  v95 = a3;
  while (v14)
  {
    v16 = v10;
LABEL_12:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = (*(v98 + 48) + ((v16 << 10) | (16 * v17)));
    v19 = *v18;
    v20 = v18[1];

    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();
    v23 = a3;
    v24 = [v97 stateForFeature:v21 domain:v22 level:0];

    if (v24)
    {
      v25 = v24;
      v26 = [v24 attributes];
      sub_10001AA40(0, &qword_1004B0E10, FFFeatureAttribute_ptr);
      v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v27 + 16))
      {

        goto LABEL_24;
      }

      v94 = v25;
      v28 = sub_100013364(v93, v96);
      if (v29)
      {
        v30 = *(*(v27 + 56) + 8 * v28);

        v31 = [v30 value];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        if (v32 == v91 && v92 == v34)
        {

          a3 = v95;
          goto LABEL_26;
        }

        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a3 = v95;
        if (v36)
        {
LABEL_26:
          v88 = v30;
          if (!*a4 || (v38 = a4[2]) == 0 || a4[1] == 1701736302 && v38 == 0xE400000000000000 || (v83 = a4[1], v84 = a4[2], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
LABEL_31:
            v39 = *(v89 + 120);
            if (v39 == 4)
            {
              v40 = *(v89 + 56);
              if (v40 == 2)
              {
                goto LABEL_77;
              }

              v41 = String._bridgeToObjectiveC()();

              v42 = String._bridgeToObjectiveC()();
              if (v40)
              {
                [v97 enableFeature:v41 domain:v42 level:{3, v80}];
              }

              else
              {
                [v97 disableFeature:v41 domain:v42 level:{3, v80}];
              }

              goto LABEL_40;
            }

            v43 = [v94 phase];
            if (v43)
            {
              v44 = v43;
              logb = [v97 sortValueForPhase:v43];

              v45 = String._bridgeToObjectiveC()();

              v46 = [v97 sortValueForPhase:v45];

              v47 = String._bridgeToObjectiveC()();

              v48 = String._bridgeToObjectiveC()();
              if (logb >= v46)
              {
                [v97 enableFeature:v47 domain:v48 level:{3, v80}];
              }

              else
              {
                [v97 disableFeature:v47 domain:v48 level:{3, v80}];
              }

              v37 = v88;
              goto LABEL_23;
            }

LABEL_42:
            v10 = v16;
          }

          else
          {
            v81 = String._bridgeToObjectiveC()();
            v49 = String._bridgeToObjectiveC()();
            v50 = [v97 stateForFeature:v81 domain:v49 level:0];

            if (v50)
            {
              v82 = v50;
              v51 = [v50 attributes];
              v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              if (*(v52 + 16) && (v53 = sub_100013364(0xD000000000000022, 0x80000001004456E0), (v54 & 1) != 0))
              {
                v55 = *(*(v52 + 56) + 8 * v53);

                log = v55;
                v56 = [v55 value];
                v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v59 = v58;

                v99[0] = v57;
                v99[1] = v59;
                sub_10000B080();
                v60 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

                v62 = v83;
                v61 = v84;
                if ((v84 & 0x2000000000000000) != 0)
                {
                  v63 = HIBYTE(v84) & 0xF;
                }

                else
                {
                  v63 = v83 & 0xFFFFFFFFFFFFLL;
                }

                v64 = (v60 + 56);
                v65 = *(v60 + 16) + 1;
                while (--v65)
                {
                  if (*(v64 - 1) != v62 || v61 != *v64 || *(v64 - 3) >> 16 != 0 || *(v64 - 2) >> 16 != v63)
                  {
                    v64 += 4;
                    LOBYTE(v80) = 0;
                    v69 = _stringCompareInternal(_:_:_:_:expecting:)();
                    v62 = v83;
                    v61 = v84;
                    if ((v69 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  a3 = v95;
                  goto LABEL_31;
                }

                v70 = log;
                a3 = v95;
              }

              else
              {

                v70 = v82;
              }
            }

            if (qword_1004A9F20 != -1)
            {
              swift_once();
            }

            v71 = type metadata accessor for Logger();
            sub_1000270B4(v71, qword_1004B00F8);

            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.error.getter();

            loga = v72;
            if (!os_log_type_enabled(v72, v73))
            {

LABEL_40:
              goto LABEL_42;
            }

            v74 = swift_slowAlloc();
            v99[0] = swift_slowAlloc();
            *v74 = 136315650;
            v75 = a3;
            v76 = sub_1000026C0(v19, v20, v99);

            *(v74 + 4) = v76;
            *(v74 + 12) = 2080;
            *(v74 + 14) = sub_1000026C0(v100, v75, v99);
            *(v74 + 22) = 2080;
            *(v74 + 24) = sub_1000026C0(0xD000000000000022, 0x80000001004456E0, v99);
            _os_log_impl(&_mh_execute_header, loga, v73, "Skipping disallowed %s in domain %s - check %s attribute", v74, 0x20u);
            swift_arrayDestroy();

            v10 = v16;
            a3 = v75;
          }
        }

        else
        {

          v10 = v16;
        }
      }

      else
      {

        v37 = v25;
LABEL_23:

LABEL_24:
        v10 = v16;
        a3 = v95;
      }
    }

    else
    {

      v10 = v16;
      a3 = v23;
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return 1;
    }

    v14 = *(v11 + 8 * v16);
    ++v10;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_77:

  sub_100340D24();
  swift_allocError();
  *v79 = 1;
  swift_willThrow();

  return 1;
}

void *Either<>.apply(computer:)(void *a1, void *a2, char a3)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E2A8(a1, v5);
  if ((*(v6 + 208))(v5, v6))
  {
    if (a3)
    {

      v7 = 1;
      v8 = a2;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
      v7 = a2;
    }

    sub_10033C75C(v7 & 1);
    if (!v8[2])
    {

      goto LABEL_13;
    }

    v9 = objc_allocWithZone(NSUserDefaults);
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 initWithSuiteName:v10];

    if (v11)
    {
      isa = Array._bridgeToObjectiveC()().super.isa;

      v13 = String._bridgeToObjectiveC()();
      [v11 setObject:isa forKey:v13];

LABEL_13:
      sub_100259408(a2, a3 & 1);
      return a2;
    }

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000270B4(v15, qword_1004B00F8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to find CrashReporter suite", v18, 2u);
    }
  }

  return 0;
}

uint64_t sub_10033C75C(char a1)
{
  v2 = type metadata accessor for POSIXError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 & 1;
  result = sysctlbyname("kern.ucoredump", 0, 0, &v10, 4uLL);
  if (result)
  {
    errno.getter();
    v7 = POSIXErrorCode.init(rawValue:)();
    if ((v7 & &_mh_execute_header) != 0)
    {
      v8 = 5;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8;
    sub_1002FAB80(_swiftEmptyArrayStorage);
    sub_100340CDC(&qword_1004B0658, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v3 + 8))(v5, v2);
    return swift_willThrow();
  }

  return result;
}

Swift::Int sub_10033C91C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1uLL);
  return Hasher._finalize()();
}

Swift::Int sub_10033C98C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1uLL);
  return Hasher._finalize()();
}

Swift::Int sub_10033CA18()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10033CA90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_10033CAD4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit6ConfigV7CryptexV0D10ApplyErrorV0F4KindO8rawValueAISgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t Config.Cryptex.CryptexApplyError.description.getter(unsigned __int8 a1)
{
  v1 = 0xD00000000000001DLL;
  if (a1 != 3)
  {
    v1 = 0xD000000000000019;
  }

  if (a1 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = v1;
  }

  v3 = 0xD00000000000001CLL;
  if (!a1)
  {
    v3 = 0xD000000000000052;
  }

  if (a1 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t Config.Diavlo.fetchCertsFromServer(url:auth:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = *a3;
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
  *(v4 + 64) = *(a3 + 8);
  return _swift_task_switch(sub_10033CBE0, 0, 0);
}

uint64_t sub_10033CBE0()
{
  v47 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Applying diavlo configuration...", v4, 2u);
  }

  v5 = *(v0 + 32);

  v8 = v5 + *(type metadata accessor for Config.Diavlo(0) + 20);
  v9 = *(v8 + 16);
  if (v9 >> 60 == 15)
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 16);
      v12 = *(v0 + 24);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v46 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1000026C0(v13, v12, &v46);
      _os_log_impl(&_mh_execute_header, v10, v11, "Fetching diavlo root certificate from server at %s", v14, 0xCu);
      sub_100003C3C(v15);
    }

    v36 = sub_100194844();
    v38 = v37;
    v40 = v39;
    v41 = swift_task_alloc();
    *(v0 + 48) = v41;
    *v41 = v0;
    v41[1] = sub_10033D05C;
    v42 = *(v0 + 16);
    v43 = *(v0 + 24);

    return sub_10034D07C(v36, v38, v40, v42, v43);
  }

  else
  {
    v16 = *(v8 + 8);
    sub_1000318C0(v16, *(v8 + 16), v6, v7);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Using diavlo root certificate provided in darwin-init config", v19, 2u);
    }

    sub_1000039E8(&qword_1004B0DF0, &qword_100408DF0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100376A40;
    *(v20 + 32) = v16;
    *(v20 + 40) = v9;
    v21 = *(v0 + 64);
    v22 = *(v0 + 40);
    v46 = _swiftEmptyArrayStorage;
    sub_1003111D0(0, 1, 0);
    v23 = _swiftEmptyArrayStorage;
    v24 = v22 != 0;
    v26 = *(v0 + 16);
    v25 = *(v0 + 24);
    sub_1000318C0(v16, v9, v27, v28);
    v29 = _s10DarwinInit10LibCryptexO5trust15rootCertificate17usingAppleConnect10signingURLSb10Foundation4DataV_SbSStFZ_0(v16, v9, v24 & v21, v26, v25);
    sub_100031928(v16, v9);
    v31 = _swiftEmptyArrayStorage[2];
    v30 = _swiftEmptyArrayStorage[3];
    if (v31 >= v30 >> 1)
    {
      sub_1003111D0((v30 > 1), v31 + 1, 1);
      v23 = v46;
    }

    v23[2] = v31 + 1;
    v32 = (v23 + 4);
    *(v23 + v31 + 32) = v29 & 1;

    v33 = v23[2];
    if (v33)
    {
      v34 = 0;
      do
      {
        v35 = *v32++;
        v34 |= v35;
        --v33;
      }

      while (v33);
    }

    else
    {
      v34 = 0;
    }

    v45 = *(v0 + 8);

    return v45(v34 & 1);
  }
}

uint64_t sub_10033D05C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_10033D1AC, 0, 0);
  }
}

uint64_t sub_10033D1AC()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 40);
    sub_1003111D0(0, v2, 0);
    v7 = v4 != 0;
    v8 = (v1 + 40);
    do
    {
      v10 = *(v0 + 16);
      v9 = *(v0 + 24);
      v11 = *(v8 - 1);
      v12 = *v8;
      sub_1000318C0(v11, *v8, v5, v6);
      v13 = _s10DarwinInit10LibCryptexO5trust15rootCertificate17usingAppleConnect10signingURLSb10Foundation4DataV_SbSStFZ_0(v11, v12, v7 & v3, v10, v9);
      sub_100031928(v11, v12);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1003111D0((v14 > 1), v15 + 1, 1);
      }

      v8 += 2;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      *(&_swiftEmptyArrayStorage[4] + v15) = v13 & 1;
      --v2;
    }

    while (v2);

    v16 = _swiftEmptyArrayStorage[2];
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v16 = _swiftEmptyArrayStorage[2];
  if (!v16)
  {
    goto LABEL_11;
  }

LABEL_7:
  v17 = 0;
  v18 = &_swiftEmptyArrayStorage[4];
  do
  {
    v19 = *v18++;
    v17 |= v19;
    --v16;
  }

  while (v16);
LABEL_12:

  v20 = *(v0 + 8);

  return v20(v17 & 1);
}

Swift::Void __swiftcall Config.Tailspin.apply(tailspin_config:)(Swift::OpaquePointer *tailspin_config)
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000270B4(v3, qword_1004B00F8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Applying custom tailspin configuration.", v6, 2u);
  }

  if (*(v1 + 16))
  {
    if (*(v1 + 40))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(v1 + 8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "Applying tailspin full_sampling_period_set configuration value %llu", v11, 0xCu);
    }

    sub_1003409D0(tailspin_config->_rawValue, v8);
    if (*(v1 + 40))
    {
LABEL_7:
      if (*(v1 + 64))
      {
        goto LABEL_8;
      }

LABEL_16:
      v16 = *(v1 + 56);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "Applying tailspin buffer_size_set configuration value %llu", v19, 0xCu);
      }

      if (v16 < 0)
      {
        __break(1u);
        return;
      }

      sub_100340138(tailspin_config->_rawValue, v16);
      v7 = *(v1 + 80);
      if (!v7)
      {
        return;
      }

      goto LABEL_20;
    }
  }

  v12 = *(v1 + 32);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Applying tailspin oncore_sampling_period_set configuration value %llu", v15, 0xCu);
  }

  sub_100340864(tailspin_config->_rawValue, v12);
  if ((*(v1 + 64) & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v7 = *(v1 + 80);
  if (!v7)
  {
    return;
  }

LABEL_20:
  v20 = *(v7 + 16);
  if (v20)
  {
    v21 = 0;
    rawValue = tailspin_config->_rawValue;
    v37 = v7 + 32;
    v35 = *(v7 + 16);
    do
    {
      v22 = v37 + 48 * v21;
      v23 = *(v22 + 8);
      v24 = *(v22 + 24);
      v25 = *(v22 + 40);
      swift_bridgeObjectRetain_n();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 16777728;
        *(v28 + 4) = v23;
        *(v28 + 5) = 1024;
        *(v28 + 7) = v24;

        _os_log_impl(&_mh_execute_header, v26, v27, "Setting tailspin kdbg_filter_class %hhu to %{BOOL}d", v28, 0xBu);
      }

      else
      {
      }

      sub_100340564(rawValue, v23, v24);
      if (v25)
      {
        v38 = v23;
        v29 = *(v25 + 16);
        if (v29)
        {
          v36 = v21;

          v30 = (v25 + 56);
          do
          {
            v40 = *v30;
            v41 = *(v30 - 16);

            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              *v34 = 16777984;
              v31 = v38;
              *(v34 + 4) = v38;

              *(v34 + 5) = 256;
              *(v34 + 7) = v41;
              *(v34 + 8) = 1024;
              *(v34 + 10) = v40;
              _os_log_impl(&_mh_execute_header, v32, v33, "Setting tailspin kdbg_filter_subclass for class:%hhu, subclass:%hhu to %{BOOL}d", v34, 0xEu);
            }

            else
            {

              v31 = v38;
            }

            sub_1003406E0(rawValue, v31, v41, v40);
            v30 += 32;
            --v29;
          }

          while (v29);

          swift_bridgeObjectRelease_n();
          v20 = v35;
          v21 = v36;
          goto LABEL_24;
        }
      }

LABEL_24:
      ++v21;
    }

    while (v21 != v20);
  }
}

unint64_t sub_10033D960(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10033DC18(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10033DDE0(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10033DFD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_10033E184(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 240 * v3);
        v15 = (v14 + 240 * v6);
        if (v3 != v6 || result >= v15 + 240)
        {
          result = memmove(result, v15, 0xF0uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

id sub_10033E338()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initWithData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10033E3F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (HIDWORD(*(result + 136)))
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (!HIDWORD(*(result + 152)))
    {
      v6 = a3;
      v33 = *(result + 152);
      v34 = *(result + 136);
      v63[0] = *(result + 200);
      v7 = *(result + 120);
      v8 = *(result + 224);
      v61 = v63[0];
      v62 = v8;
      *&v60[7] = v8;
      v31 = *(result + 184);
      v32 = v7;
      v9 = *(result + 8);
      v10 = *(result + 56);
      v11 = *(result + 88);
      v57 = *(result + 72);
      v58 = v11;
      v59 = *(result + 104);
      v12 = *(result + 24);
      v53 = v9;
      v54 = v12;
      v55 = *(result + 40);
      v56 = v10;
      if (v9 && (v13 = *(&v53 + 1)) != 0)
      {
        v30 = a3;
        v14 = *(&v54 + 1);
        v15 = v55;
        v16 = v54;
        sub_100013E54(v63, &v44, &qword_1004A7330, &qword_1003762A0);
        sub_100013E54(&v62, &v44, &qword_1004A7330, &qword_1003762A0);
        v29 = v15;
        sub_1002591F8(v13, v16, v14, v15);

        v46 = v57;
        v47 = v58;
        v48 = v59;
        v44 = v53;
        *v45 = v54;
        *&v45[16] = v55;
        *&v45[32] = v56;
        sub_1002206F8(&v44, &v37);
        sub_1001D87FC(v5);
        v18 = *&v45[40];
        v17 = *&v45[32];
        v20 = *(&v46 + 1);
        v19 = v46;
        v21 = *(&v47 + 1);
        v22 = v47;
        v23 = v48;
      }

      else
      {
        sub_100013E54(v63, &v44, &qword_1004A7330, &qword_1003762A0);
        sub_100013E54(&v62, &v44, &qword_1004A7330, &qword_1003762A0);
        sub_100013E54(&v53, &v44, &qword_1004AD190, &qword_1003FC2A8);
        sub_1001D87FC(v5);
        if (!v53)
        {
          v24 = 0;
          v20 = 0;
          v21 = 0;
          v23 = 0;
          v16 = 1;
          v18 = 1;
LABEL_12:
          *&v38[8] = v61;
          *&v38[25] = *v60;
          *&v37 = a2;
          *(&v37 + 1) = v6;
          *v38 = v34;
          *&v38[4] = v33;
          v38[24] = v32 & 1;
          *&v38[40] = *&v60[15];
          LOBYTE(v39) = v31 & 1;
          *(&v39 + 1) = 0;
          *&v40 = 0;
          *(&v40 + 1) = v16;
          *&v41 = v24;
          *(&v41 + 1) = v18;
          *&v42 = v20;
          *(&v42 + 1) = v21;
          v43 = v23;
          *&v44 = a2;
          *(&v44 + 1) = v6;
          *v45 = v34;
          *&v45[4] = v33;
          *&v45[8] = v61;
          v45[24] = v32 & 1;
          *&v45[25] = *v60;
          *&v45[40] = *&v60[15];
          LOBYTE(v46) = v31 & 1;
          *(&v46 + 1) = 0;
          *&v47 = 0;
          *(&v47 + 1) = v16;
          v48 = v24;
          v49 = v18;
          v50 = v20;
          v51 = v21;
          v52 = v23;
          sub_1001EC8B4(&v37, v36);
          result = sub_1001EC8EC(&v44);
          v25 = v42;
          *(a4 + 96) = v41;
          *(a4 + 112) = v25;
          *(a4 + 128) = v43;
          v26 = *&v38[32];
          *(a4 + 32) = *&v38[16];
          *(a4 + 48) = v26;
          v27 = v40;
          *(a4 + 64) = v39;
          *(a4 + 80) = v27;
          v28 = *v38;
          *a4 = v37;
          *(a4 + 16) = v28;
          return result;
        }

        v29 = 0;
        v30 = v6;
        v23 = v59;
        v21 = *(&v58 + 1);
        v22 = v58;
        v20 = *(&v57 + 1);
        v19 = v57;
        v16 = 1;
        v18 = *(&v56 + 1);
        v17 = v56;
      }

      sub_10025925C(v17, v18, v19, v20, v22, v21, v23);
      sub_100013F2C(&v53, &qword_1004AD190, &qword_1003FC2A8);
      if (v17)
      {

        sub_100268A58(v17);
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v23 = 0;
        v18 = 1;
      }

      v24 = v29;
      v6 = v30;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_10033E780(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v38 = a4;
  v43 = a5;
  v42 = a2;
  v7 = type metadata accessor for FilePath();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a3;
  if (!a3 || (v9 = *(v45 + 16), , !v9))
  {
LABEL_10:
    v27 = v42;
    if (v42 == 2)
    {
      v28 = 2;
    }

    else
    {
      v29 = v39;
      FilePath.init(stringLiteral:)();
      v30 = objc_autoreleasePoolPush();
      v31 = v44;
      sub_1001B57DC(v29, v48);
      if (v31)
      {
        objc_autoreleasePoolPop(v30);
        __break(1u);
        return;
      }

      objc_autoreleasePoolPop(v30);
      (*(v40 + 8))(v29, v41);
      v28 = 2;
      if (LOBYTE(v48[0]))
      {
        v28 = v27 & 1;
      }
    }

    v32 = v43;
    *v43 = _swiftEmptyArrayStorage;
    v32[1] = 2;
    v32[2] = _swiftEmptyArrayStorage;
    v32[3] = v28;
    v33 = v45;
    v32[4] = _swiftEmptyArrayStorage;
    v32[5] = v33;
    return;
  }

  v11 = -v9;
  v12 = (v45 + 40);
  v13 = 1;
  *&v10 = 134218242;
  v46 = v10;
  v47 = -v9;
  while (1)
  {
    v14 = *(v12 - 1);
    v15 = *v12;
    v16 = qword_1004A9F20;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = sub_1000270B4(v17, qword_1004B00F8);

    v48[3] = v18;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = a1;
      v22 = v14;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v48[0] = v24;
      *v23 = v46;
      *(v23 + 4) = v13;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1000026C0(v22, v15, v48);
      _os_log_impl(&_mh_execute_header, v19, v20, "Executing startup command %ld: %s", v23, 0x16u);
      sub_100003C3C(v24);

      v14 = v22;
      a1 = v21;
      v11 = v47;
    }

    sub_10000E2A8(a1, a1[3]);
    v25.value._countAndFlagsBits = 0x7361622F6E69622FLL;
    v25.value._object = 0xE900000000000068;
    v26._countAndFlagsBits = v14;
    v26._object = v15;
    if (!Computer.run(shell:command:)(v25, v26))
    {
      break;
    }

    ++v13;
    v12 += 2;
    if (v11 + v13 == 1)
    {
      goto LABEL_10;
    }
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v34, v35, "Startup command %ld failed.", v36, 0xCu);
  }

  v48[0] = v14;
  v48[1] = v15;
  sub_10028DC48();
  swift_willThrowTypedImpl();
  v37 = v38;
  *v38 = v14;
  v37[1] = v15;
}

void *sub_10033EB9C(void *a1, uint64_t a2, char a3)
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000270B4(v6, qword_1004B00F8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Applying logging configuration...", v9, 2u);
  }

  if (a2 != 3)
  {
    v10 = a1[3];
    v11 = a1[4];
    sub_10000E2A8(a1, v10);
    (*(v11 + 320))(v20, v10, v11);
    v12 = v21;
    v13 = v22;
    sub_10000E2A8(v20, v21);
    v14 = (*(v13 + 8))(a2, v12, v13);
    sub_100003C3C(v20);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3 != 2)
  {
    v15 = a1[3];
    v16 = a1[4];
    sub_10000E2A8(a1, v15);
    (*(v16 + 320))(v20, v15, v16);
    v17 = v21;
    v18 = v22;
    sub_10000E2A8(v20, v21);
    (*(v18 + 16))(a3 & 1, v17, v18);
    sub_100003C3C(v20);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t _s10DarwinInit6ConfigV9AnalyticsV11applySubmit6config2on8reporterSbSgAESg_AA8Computer_pAA13ErrorReporterCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  rawValue = *a1;
  if (v7)
  {
    if (rawValue)
    {
      v9 = *(a1 + 8);
      v10 = (v9 == 2) | v9;
    }

    else
    {
      v10 = 1;
      v9 = 2;
    }

    v13 = String._bridgeToObjectiveC()();
    [v7 setBool:v10 & 1 forKey:v13];
  }

  else
  {
    if (rawValue)
    {

      rawValue = JSONPointer.init(codingKeys:)(v11).components._rawValue;
      v12 = v15;
    }

    else
    {
      v12 = &off_100488D90;
    }

    v15 = v12;
    (*(*a3 + 120))(rawValue, &v15, "applySubmit(config:on:reporter:)", 32, 2, 549, &type metadata for Config.Analytics.AnalyticsApplyError, &protocol witness table for Config.Analytics.AnalyticsApplyError);

    return 0;
  }

  return v9;
}

void *sub_10033EF3C(void *a1, char a2, char a3)
{
  if (a3 == 2)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v6 = 0xD00000000000003FLL;
  }

  else
  {
    v6 = 0xD00000000000003DLL;
  }

  if (a3)
  {
    v7 = "m to these specifications.";
  }

  else
  {
    v7 = "engeResponseAuthentication yes\n";
  }

  v8 = a1[3];
  v9 = a1[4];
  sub_10000E2A8(a1, v8);
  (*(v9 + 312))(v22, v8, v9);
  v10 = v23;
  v11 = v24;
  sub_10000E2A8(v22, v23);
  if (qword_1004A9EB8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FilePath();
  v13 = sub_1000270B4(v12, kDInitSSHConfig);
  FileSystem.append(text:to:)(v6, v7 | 0x8000000000000000, v13, v10, v11);

  result = sub_100003C3C(v22);
  if (!v3)
  {
LABEL_12:
    if (a2 != 2 && (a2 & 1) != 0)
    {
      v15 = a1[3];
      v16 = a1[4];
      sub_10000E2A8(a1, v15);
      if ((*(v16 + 8))(v15, v16))
      {
        v17 = a1[3];
        v18 = a1[4];
        sub_10000E2A8(a1, v17);
        if ((*(v18 + 264))(v17, v18))
        {
          sub_10000E2A8(a1, a1[3]);
          v19._countAndFlagsBits = 0xD000000000000062;
          v19._object = 0x8000000100445AF0;
          Computer.run(shell:command:)(0, v19);
        }
      }

      else
      {
        sub_10000E2A8(a1, a1[3]);
        v20._countAndFlagsBits = 0xD000000000000041;
        v20._object = 0x8000000100445B60;
        Computer.run(shell:command:)(0, v20);
        sub_10000E2A8(a1, a1[3]);
        v21._countAndFlagsBits = 0xD000000000000056;
        v21._object = 0x8000000100445BB0;
        Computer.run(shell:command:)(0, v21);
      }
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10033F230(uint64_t a1, char a2)
{
  v2[4] = a1;
  if (a2 == 2 || (a2 & 1) == 0)
  {
    v5 = v2[1];

    return v5();
  }

  else
  {
    v3 = swift_task_alloc();
    v2[5] = v3;
    *v3 = v2;
    v3[1] = sub_10033F314;

    return sub_1001FB5D4();
  }
}

uint64_t sub_10033F314()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10033F46C;
  }

  else
  {
    v2 = sub_10033F428;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10033F428()
{
  v1 = *(v0 + 32);
  if (!*v1)
  {
    *v1 = _swiftEmptyArrayStorage;
    v1[1] = 2;
    v1[2] = _swiftEmptyArrayStorage;
    v1[3] = 2;
    v1[4] = _swiftEmptyArrayStorage;
    v1[5] = 0;
    v1 = *(v0 + 32);
  }

  *(v1 + 8) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_10033F46C()
{
  v0[2] = v0[6];
  sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
  sub_10001AA40(0, &qword_1004B0E30, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = v0[3];
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000270B4(v3, qword_1004B00F8);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to issue DCRT: %{public}@", v7, 0xCu);
      sub_100013F2C(v8, &qword_1004AA050, &unk_1003F2F10);
    }

    v10 = v4;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      NSError.rootError()();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "DCRT root error: %{public}@", v13, 0xCu);
      sub_100013F2C(v14, &qword_1004AA050, &unk_1003F2F10);

      v16 = v11;
    }

    else
    {
      v16 = v10;
      v10 = v11;
    }

    v17 = v0[1];

    return v17();
  }

  return result;
}

void sub_10033F7B8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_1004E0C90;
  v7 = off_1004E0C90;
  if (!off_1004E0C90)
  {
    v1 = sub_100340ED8();
    v5[3] = dlsym(v1, "tailspin_config_create_with_default_config");
    off_1004E0C90 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"tailspin_config_t shim_tailspin_config_create_with_default_config(void)"];
    [v2 handleFailureInFunction:v3 file:@"BridgingHeader.h" lineNumber:74 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10033F8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10033F90C(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_1004E0CA0;
  v9 = off_1004E0CA0;
  if (!off_1004E0CA0)
  {
    v3 = sub_100340ED8();
    v7[3] = dlsym(v3, "tailspin_config_apply_sync");
    off_1004E0CA0 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"_Bool shim_tailspin_config_apply_sync(const tailspin_config_t)"];
    [v4 handleFailureInFunction:v5 file:@"BridgingHeader.h" lineNumber:87 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10033FA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10033FA70(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_1004E0CA8;
  v9 = off_1004E0CA8;
  if (!off_1004E0CA8)
  {
    v3 = sub_100340ED8();
    v7[3] = dlsym(v3, "tailspin_config_free");
    off_1004E0CA8 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void shim_tailspin_config_free(tailspin_config_t)"];
    [v4 handleFailureInFunction:v5 file:@"BridgingHeader.h" lineNumber:88 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10033FBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_10033FBD4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

BOOL _s10DarwinInit6ConfigV6FinishV5print7logTextSbSS_tFZ_0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, qword_1004B00F8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1000026C0(a1, a2, &v35);
    _os_log_impl(&_mh_execute_header, v9, v10, "darwin-init: %{public}s", v11, 0xCu);
    sub_100003C3C(v12);
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(163);
  v13._object = 0x8000000100445950;
  v13._countAndFlagsBits = 0xD000000000000050;
  String.append(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000051;
  v15._object = 0x80000001004459B0;
  String.append(_:)(v15);
  v17 = v35;
  v16 = v36;
  v18 = (v5 + 8);
  do
  {
    v35 = v17;
    v36 = v16;
    static String.Encoding.utf8.getter();
    sub_10000B080();
    v19 = StringProtocol.cString(using:)();
    (*v18)(v7, v4);
    v20 = stderr.getter();
    if (v19)
    {
      v21 = (v19 + 32);
    }

    else
    {
      v21 = 0;
    }

    v22 = fputs(v21, v20);

    if (v22 != -1)
    {

      return v22 != -1;
    }

    v23 = errno.getter();
  }

  while (v23 == 4);
  v24 = v23;

  v25 = v24;
  LODWORD(v35) = v24;
  sub_100187D3C();
  swift_willThrowTypedImpl();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136315138;
    v34[3] = v25;
    v30 = Error.localizedDescription.getter();
    v32 = sub_1000026C0(v30, v31, &v35);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "Failed to write to stderr: %s", v28, 0xCu);
    sub_100003C3C(v29);
  }

  return v22 != -1;
}

void sub_10033FFCC(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004E0CB0;
  v11 = off_1004E0CB0;
  if (!off_1004E0CB0)
  {
    v5 = sub_100340ED8();
    v9[3] = dlsym(v5, "tailspin_enabled_set");
    off_1004E0CB0 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_enabled_set(tailspin_config_t, _Bool)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:77 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100340120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100340138(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004E0CB8;
  v11 = off_1004E0CB8;
  if (!off_1004E0CB8)
  {
    v5 = sub_100340ED8();
    v9[3] = dlsym(v5, "tailspin_buffer_size_set");
    off_1004E0CB8 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_buffer_size_set(tailspin_config_t, size_t)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:79 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10034028C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _s10DarwinInit6ConfigV11FeatureFlagV014isAllowedToSetD0ySbSo15FFConfigurationC_S2SAC14SecurityPolicyVSgtF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a6[2];
  if (*a6)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 1;
  }

  v8 = a6[1];
  v9 = v8 == 1701736302 && v6 == 0xE400000000000000;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [a1 stateForFeature:v12 domain:v13 level:0];

  if (!v14)
  {
    return 0;
  }

  v15 = [v14 attributes];
  sub_10001AA40(0, &qword_1004B0E10, FFFeatureAttribute_ptr);
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v16 + 16) || (v17 = sub_100013364(0xD000000000000022, 0x80000001004456E0), (v18 & 1) == 0))
  {

    return 0;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  v20 = [v19 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000B080();
  v21 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if ((v6 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v22 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v23 = (v21 + 56);
  v24 = *(v21 + 16) + 1;
  while (--v24)
  {
    if (*(v23 - 1) != v8 || v6 != *v23 || *(v23 - 3) >> 16 != 0 || *(v23 - 2) >> 16 != v22)
    {
      v23 += 4;
      if ((_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t _s10DarwinInit6ConfigV7CryptexV0D10ApplyErrorV0F4KindO8rawValueAISgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

void sub_100340564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = off_1004E0CC0;
  v13 = off_1004E0CC0;
  if (!off_1004E0CC0)
  {
    v7 = sub_100340ED8();
    v11[3] = dlsym(v7, "tailspin_kdbg_filter_class_set");
    off_1004E0CC0 = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v6)
  {
    v6(a1, a2, a3);
  }

  else
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"void shim_tailspin_kdbg_filter_class_set(tailspin_config_t, uint8_t, _Bool)"];
    [v8 handleFailureInFunction:v9 file:@"BridgingHeader.h" lineNumber:80 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1003406C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003406E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = off_1004E0CC8;
  v15 = off_1004E0CC8;
  if (!off_1004E0CC8)
  {
    v9 = sub_100340ED8();
    v13[3] = dlsym(v9, "tailspin_kdbg_filter_subclass_set");
    off_1004E0CC8 = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v8)
  {
    v8(a1, a2, a3, a4);
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"void shim_tailspin_kdbg_filter_subclass_set(tailspin_config_t, uint8_t, uint8_t, _Bool)"];
    [v10 handleFailureInFunction:v11 file:@"BridgingHeader.h" lineNumber:81 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10034084C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100340864(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004E0CD0;
  v11 = off_1004E0CD0;
  if (!off_1004E0CD0)
  {
    v5 = sub_100340ED8();
    v9[3] = dlsym(v5, "tailspin_oncore_sampling_period_set");
    off_1004E0CD0 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_oncore_sampling_period_set(tailspin_config_t, uint64_t)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:78 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1003409B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003409D0(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004E0CD8;
  v11 = off_1004E0CD8;
  if (!off_1004E0CD8)
  {
    v5 = sub_100340ED8();
    v9[3] = dlsym(v5, "tailspin_full_sampling_period_set");
    off_1004E0CD8 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_full_sampling_period_set(tailspin_config_t, uint64_t)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:76 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100340B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_100340B40()
{
  result = qword_1004B0DF8;
  if (!qword_1004B0DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0DF8);
  }

  return result;
}

unint64_t sub_100340B98()
{
  result = qword_1004B0E00;
  if (!qword_1004B0E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0E00);
  }

  return result;
}

unint64_t sub_100340BF0()
{
  result = qword_1004B0E08;
  if (!qword_1004B0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0E08);
  }

  return result;
}

uint64_t sub_100340CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100340D24()
{
  result = qword_1004B0E18;
  if (!qword_1004B0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0E18);
  }

  return result;
}

double sub_100340D78(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100340D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100340DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100340E64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100340ED8()
{
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = qword_1004E0C98;
  v10 = qword_1004E0C98;
  if (!qword_1004E0C98)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10034108C;
    v4[4] = &unk_100484AE8;
    v5 = &v7;
    v6 = v4;
    v11 = *off_100495148;
    v12 = 0;
    v8[3] = _sl_dlopen();
    qword_1004E0C98 = *(v5[1] + 24);
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *libtailspinLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"BridgingHeader.h" lineNumber:73 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_10034106C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10034108C(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1004E0C98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1003411C4(uint64_t a1, const char *a2, void *a3)
{
  v6 = sub_100340ED8();
  result = dlsym(v6, a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100341244(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_100341260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003412A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003412F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_100341374(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = swift_allocObject();
  a4(a1, a2, a3);
  return v8;
}

uint64_t CacheVolumeKeyManager.__allocating_init(forOrphanedVolumeWith:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
  *(v2 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
  v4 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
  if (qword_1004A9F10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FilePath();
  v6 = sub_1000270B4(v5, kCacheVolumeKeyCacheRootDirectory);
  (*(*(v5 - 8) + 16))(v2 + v4, v6, v5);
  v7 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(v2 + v7, a1, v8);
  *(v2 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
  *(v2 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
  swift_beginAccess();
  v9 = *(v2 + v3);
  *(v2 + v3) = 0;

  return v2;
}

unint64_t CacheVolumeKeyManagerError.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CacheVolumeKeyManagerError(0);
  __chkstk_darwin(v6);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003476B8(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1000039E8(&qword_1004B0E40, &qword_100409240);
        (*(v3 + 32))(v5, v8, v2);
        v38 = 0;
        v39 = 0xE000000000000000;
        _StringGuts.grow(_:)(49);

        v38 = 0xD00000000000002BLL;
        v39 = 0x8000000100446060;
        sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v10);

        v11._countAndFlagsBits = 8250;
        v11._object = 0xE200000000000000;
        String.append(_:)(v11);
        swift_getErrorValue();
        goto LABEL_8;
      }

      v21 = *v8;
      v23 = *(v8 + 1);
      v22 = *(v8 + 2);
      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v38 = 0xD000000000000018;
      v39 = 0x8000000100445F40;
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v32 = 0x8000000100445F90;
          v24 = 0xD000000000000020;
        }

        else
        {
          v32 = 0x8000000100445F60;
          v24 = 0xD000000000000022;
        }
      }

      else
      {
        v24 = 0x6E5F76665F736B61;
        if (v21)
        {
          v25 = 1985967973;
        }

        else
        {
          v25 = 1801418597;
        }

        v32 = v25 | 0xEE006B6500000000;
      }

      v33 = v32;
      String.append(_:)(*&v24);

      v34._countAndFlagsBits = 0x2064656C69616620;
      v34._object = 0xEF206F7420657564;
      String.append(_:)(v34);
      v35._countAndFlagsBits = v23;
      v35._object = v22;
      String.append(_:)(v35);

      return v38;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v38 = 0xD000000000000023;
      v39 = 0x8000000100445ED0;
      swift_getErrorValue();
      v16._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v16);

      return v38;
    }

    (*(v3 + 32))(v5, v8, v2);
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v29._countAndFlagsBits = 0xD000000000000043;
    v29._object = 0x8000000100446010;
    String.append(_:)(v29);
    sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
LABEL_18:
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      return 0xD000000000000044;
    }

    v17 = *&v8[*(sub_1000039E8(&qword_1004B0E48, &qword_100409248) + 48)];
    (*(v3 + 32))(v5, v8, v2);
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v18._object = 0x8000000100445F00;
    v18._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v18);
    sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0xD00000000000001CLL;
    v20._object = 0x8000000100445F20;
    String.append(_:)(v20);
    v37[11] = v17;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 4)
  {
    (*(v3 + 32))(v5, v8, v2);
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v26._countAndFlagsBits = 0xD000000000000025;
    v26._object = 0x8000000100445FC0;
    String.append(_:)(v26);
    sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 0xD00000000000001ALL;
    v28._object = 0x8000000100445FF0;
    String.append(_:)(v28);
    goto LABEL_19;
  }

  sub_1000039E8(&qword_1004B0E40, &qword_100409240);
  (*(v3 + 32))(v5, v8, v2);
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  v12._countAndFlagsBits = 0xD00000000000003FLL;
  v12._object = 0x8000000100445E40;
  String.append(_:)(v12);
  sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  swift_getErrorValue();
LABEL_8:
  v15._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v15);

LABEL_19:
  v31 = v38;
  (*(v3 + 8))(v5, v2);
  return v31;
}

unint64_t AKSFilevaultOperation.description.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000020;
  if (a1 != 2)
  {
    v1 = 0xD000000000000022;
  }

  if (a1 <= 1u)
  {
    return 0x6E5F76665F736B61;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100341DEC()
{
  v1 = 0xD000000000000020;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0 <= 1u)
  {
    return 0x6E5F76665F736B61;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100341E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 128))(v6);
}

void *sub_100341FFC()
{
  v1 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100342048(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100342184(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_1000318C0(*v2, *(v2 + 8), v4, v5);
  return v3;
}

uint64_t sub_1003421E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_100031928(v7, v8);
}

uint64_t sub_1003422A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 224))(v6);
}

uint64_t sub_1003423B0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_10034245C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_100342550()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FilePath();
  v6 = __chkstk_darwin(v5 - 8);
  v7 = (*(*v0 + 216))(v6);
  (*(*v0 + 120))(v7);
  UUID.uuidString.getter();
  (*(v2 + 8))(v4, v1);
  return FilePath.appending(_:)();
}

uint64_t sub_1003426EC(uint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = __chkstk_darwin(v2 - 8);
  (*(*v1 + 240))(v3);
  return FilePath.appending(_:)();
}

uint64_t CacheVolumeKeyManager.init(forExistingVolumeWith:secret:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v9 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
  *(v3 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
  v10 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
  if (qword_1004A9F10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FilePath();
  v12 = sub_1000270B4(v11, kCacheVolumeKeyCacheRootDirectory);
  (*(*(v11 - 8) + 16))(v5 + v10, v12, v11);
  v13 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v5 + v13, a1, v14);
  *(v5 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
  *(v5 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
  v16 = objc_allocWithZone(LACSSecurePassword);
  sub_1000318C0(a2, a3, v17, v18);
  v19 = sub_10033E338();
  if (v4)
  {
    sub_100031928(a2, a3);
    sub_100031928(a2, a3);

    (*(v15 + 8))(a1, v14);
  }

  else
  {
    v20 = v19;
    sub_100031928(a2, a3);
    swift_beginAccess();
    v21 = *(v5 + v9);
    *(v5 + v9) = v20;

    sub_100343AA0();
    (*(v15 + 8))(a1, v14);
    sub_100031928(a2, a3);
  }

  return v5;
}

uint64_t CacheVolumeKeyManager.init(forNewVolumeWith:secret:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v33 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
  *(v3 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
  v7 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
  if (qword_1004A9F10 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FilePath();
  v9 = sub_1000270B4(v8, kCacheVolumeKeyCacheRootDirectory);
  (*(*(v8 - 8) + 16))(v4 + v7, v9, v8);
  v10 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v4 + v10, a1, v11);
  v13 = (v4 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek);
  *(v4 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
  v14 = (v4 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek);
  *(v4 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
  v15 = objc_allocWithZone(LACSSecurePassword);
  sub_1000318C0(a2, a3, v16, v17);
  v18 = sub_10033E338();
  if (v34)
  {
    sub_100031928(a2, a3);
    sub_100031928(a2, a3);

    (*(v12 + 8))(a1, v11);
  }

  else
  {
    v19 = v18;
    v30 = v14;
    v31 = v12;
    v32 = v11;
    v35 = a1;
    sub_100031928(a2, a3);
    swift_beginAccess();
    v20 = *(v4 + v33);
    *(v4 + v33) = v19;

    (*(*v4 + 344))();
    swift_beginAccess();
    v22 = *v13;
    v21 = v13[1];
    swift_beginAccess();
    v24 = *v30;
    v23 = v30[1];
    sub_1000318C0(v22, v21, v25, v26);
    sub_1000318C0(v24, v23, v27, v28);
    sub_1003431B4(v22, v21, v24, v23);
    sub_100031928(v24, v23);
    sub_100031928(v22, v21);
    sub_100031928(a2, a3);
    (*(v31 + 8))(v35, v32);
  }

  return v4;
}

uint64_t CacheVolumeKeyManager.init(forOrphanedVolumeWith:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword;
  *(v1 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_secPassword) = 0;
  v4 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
  if (qword_1004A9F10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FilePath();
  v6 = sub_1000270B4(v5, kCacheVolumeKeyCacheRootDirectory);
  (*(*(v5 - 8) + 16))(v1 + v4, v6, v5);
  v7 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(v1 + v7, a1, v8);
  *(v1 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek) = xmmword_1003780A0;
  *(v1 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek) = xmmword_1003780A0;
  swift_beginAccess();
  v9 = *(v1 + v3);
  *(v1 + v3) = 0;

  return v1;
}

uint64_t sub_100342EEC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = a2 - a1;
  if (!a1)
  {
    v5 = 0;
  }

  *v3 = a1;
  v3[1] = v5;
  return v4(v3);
}

uint64_t sub_100342F34()
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - v8;
  (*(*v0 + 216))(v7);
  FilePath.createDirectory(permissions:intermediateDirectories:)(448, 1);
  if (v1)
  {
    (*(v3 + 8))(v9, v2);
    type metadata accessor for CacheVolumeKeyManagerError(0);
    sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
    swift_allocError();
    v13 = v12;
    v14 = *(sub_1000039E8(&qword_1004B0E40, &qword_100409240) + 48);
    (*(*v0 + 120))();
    *(v13 + v14) = v1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v10 = *(v3 + 8);
    v11 = v10(v9, v2);
    (*(*v0 + 240))(v11);
    FilePath.createDirectory(permissions:intermediateDirectories:)(448, 1);
    return v10(v6, v2);
  }
}

void sub_1003431B4(uint64_t a1, void (*a2)(void, void, void, void), uint64_t a3, uint64_t a4)
{
  v87 = a4;
  v88 = a3;
  v89 = a1;
  v90 = a2;
  v5 = type metadata accessor for URL.DirectoryHint();
  v92 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v8 - 8);
  v10 = v73 - v9;
  v11 = type metadata accessor for FilePath();
  v93 = *(v11 - 8);
  __chkstk_darwin(v11);
  v91 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 1);
  v15 = __chkstk_darwin(v13);
  v17 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v73 - v19;
  v21 = v94;
  (*(*v4 + 288))(v18);
  if (!v21)
  {
    v80 = v20;
    v81 = 0;
    v75 = v17;
    v22 = v93;
    v85 = v5;
    v86 = v14;
    v82 = v4;
    v83 = v10;
    v94 = v13;
    v84 = v7;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v78 = sub_1000270B4(v23, qword_1004B00F8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v82;
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Attempting to cache WKEK blob...", v28, 2u);
    }

    v77 = v11;

    v29 = (*v27 + 248);
    v30 = v91;
    v74 = *v29;
    v73[1] = v29;
    v74();
    FilePath.string.getter();
    v79 = v31;
    v32 = *(v22 + 8);
    v93 = v22 + 8;
    v76 = v32;
    v32(v30, v11);
    v33 = v86;
    v35 = v86 + 56;
    v34 = *(v86 + 56);
    v34(v83, 1, 1, v94);
    v36 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v37 = v92 + 104;
    v38 = *(v92 + 104);
    v38(v84, enum case for URL.DirectoryHint.inferFromPath(_:), v85);
    v39 = v80;
    URL.init(filePath:directoryHint:relativeTo:)();
    v40 = v81;
    Data.write(to:options:)();
    v41 = v40;
    if (v40)
    {
      (*(v33 + 8))(v39, v94);
LABEL_14:
      type metadata accessor for CacheVolumeKeyManagerError(0);
      sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
      swift_allocError();
      *v64 = v41;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    v73[0] = v38;
    LODWORD(v79) = v36;
    v89 = v35;
    v92 = v37;
    v42 = *(v33 + 8);
    v86 = v33 + 8;
    v43 = v94;
    v80 = v42;
    v81 = v34;
    v42(v39, v94);
    v44 = v82;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();

    v47 = os_log_type_enabled(v45, v46);
    v90 = 0;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v95 = v49;
      *v48 = 136315138;
      v50 = v91;
      v74();
      v51 = FilePath.string.getter();
      v53 = v52;
      v76(v50, v77);
      v54 = sub_1000026C0(v51, v53, &v95);

      *(v48 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v45, v46, "Successfully cached WKEK to %s", v48, 0xCu);
      sub_100003C3C(v49);
    }

    v55 = v85;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Attempting to cache WVEK blob...", v58, 2u);
    }

    v59 = (*v44 + 256);
    v60 = *v59;
    v61 = v91;
    (*v59)();
    FilePath.string.getter();
    v76(v61, v77);
    v81(v83, 1, 1, v43);
    (v73[0])(v84, v79, v55);
    v62 = v75;
    URL.init(filePath:directoryHint:relativeTo:)();
    v63 = v90;
    Data.write(to:options:)();
    v41 = v63;
    if (v63)
    {
      v80(v62, v43);
      goto LABEL_14;
    }

    v81 = 0;
    v80(v62, v43);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95 = v94;
      *v67 = 136315138;
      v68 = v91;
      v60();
      v69 = FilePath.string.getter();
      v71 = v70;
      v76(v68, v77);
      v72 = sub_1000026C0(v69, v71, &v95);

      *(v67 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v65, v66, "Successfully cached WVEK to %s", v67, 0xCu);
      sub_100003C3C(v94);
    }
  }
}

uint64_t sub_100343AA0()
{
  v1 = type metadata accessor for UUID();
  v93 = *(v1 - 8);
  v94 = v1;
  __chkstk_darwin(v1);
  v92 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL.DirectoryHint();
  v99 = *(v3 - 8);
  v100 = v3;
  __chkstk_darwin(v3);
  v98 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v5 - 8);
  v97 = &v81 - v6;
  v7 = type metadata accessor for URL();
  v101 = *(v7 - 1);
  v102 = v7;
  v8 = __chkstk_darwin(v7);
  v95 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = &v81 - v10;
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v81 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v81 - v20;
  v22 = *(*v0 + 248);
  v23 = *v0 + 248;
  v24 = v0;
  v22(v19);
  v25 = FilePath.fileExists()();
  v103 = v26;
  if (v26)
  {
    return (*(v12 + 8))(v21, v11);
  }

  v28 = v25;
  v88 = v23;
  v89 = v22;
  v90 = v15;
  v91 = v24;
  v29 = v102;
  v32 = *(v12 + 8);
  v30 = (v12 + 8);
  v31 = v32;
  v33 = v32(v21, v11);
  if (!v28)
  {
    goto LABEL_8;
  }

  v34 = (*v91 + 256);
  v35 = *v34;
  v36 = v34;
  (*v34)(v33);
  v37 = FilePath.fileExists()();
  if (v38)
  {
    return v31(v18, v11);
  }

  v39 = v37;
  v86 = v36;
  v87 = v35;
  v40 = v31(v18, v11);
  if (!v39)
  {
LABEL_8:
    type metadata accessor for CacheVolumeKeyManagerError(0);
    sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
    swift_allocError();
    (*(*v91 + 120))();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v41 = v90;
  v89(v40);
  FilePath.string.getter();
  v103 = v42;
  v88 = v11;
  v89 = v30;
  v31(v41, v11);
  v43 = v97;
  v85 = *(v101 + 56);
  v85(v97, 1, 1, v29);
  v44 = v98;
  v45 = *(v99 + 104);
  LODWORD(v99) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v83 = v31;
  v84 = v45;
  v45(v98);
  v46 = v96;
  URL.init(filePath:directoryHint:relativeTo:)();
  v82 = Data.init(contentsOf:options:)();
  v81 = v47;
  v103 = 0;
  v48 = v29;
  v49 = *(v101 + 8);
  v101 += 8;
  v50 = v49(v46, v48);
  v87(v50);
  FilePath.string.getter();
  v83(v41, v88);
  v85(v43, 1, 1, v48);
  v84(v44, v99, v100);
  v51 = v95;
  URL.init(filePath:directoryHint:relativeTo:)();
  v52 = v103;
  v53 = Data.init(contentsOf:options:)();
  if (v52)
  {
    v49(v51, v48);
    v55 = v82;
    v56 = v81;
    return sub_100031928(v55, v56);
  }

  v57 = v54;
  v103 = v53;
  v49(v51, v48);
  v58 = v81;
  v59 = v81 >> 62;
  if ((v81 >> 62) > 1)
  {
    v60 = v91;
    v61 = v94;
    if (v59 != 2)
    {
      goto LABEL_28;
    }

    v62 = *(v82 + 16);
    v63 = *(v82 + 24);
    goto LABEL_19;
  }

  v60 = v91;
  if (v59)
  {
    v62 = v82;
    v63 = v82 >> 32;
    v61 = v94;
LABEL_19:
    if (v62 == v63)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  v61 = v94;
  if ((v81 & 0xFF000000000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  v64 = v57 >> 62;
  if ((v57 >> 62) > 1)
  {
    if (v64 != 2)
    {
      goto LABEL_28;
    }

    v65 = *(v103 + 16);
    v66 = *(v103 + 24);
  }

  else
  {
    if (!v64)
    {
      if ((v57 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_29:
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_1000270B4(v67, qword_1004B00F8);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v104 = v102;
        *v70 = 136315138;
        v71 = v92;
        (*(*v60 + 120))();
        sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v72 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v61;
        v75 = v74;
        (*(v93 + 8))(v71, v73);
        v76 = sub_1000026C0(v72, v75, &v104);

        *(v70 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v68, v69, "Successfully loaded WKEK and WVEK for volume %s from cache", v70, 0xCu);
        sub_100003C3C(v102);

        v58 = v81;
      }

      v77 = *(*v60 + 176);
      v78 = v82;
      sub_1000318C0(v82, v58, v79, v80);
      v77(v78, v58);
      (*(*v60 + 200))(v103, v57);
      v55 = v78;
      v56 = v58;
      return sub_100031928(v55, v56);
    }

    v65 = v103;
    v66 = v103 >> 32;
  }

  if (v65 != v66)
  {
    goto LABEL_29;
  }

LABEL_28:
  type metadata accessor for CacheVolumeKeyManagerError(0);
  sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
  swift_allocError();
  (*(*v60 + 120))();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_100031928(v103, v57);
  return sub_100031928(v82, v58);
}

void sub_100344518()
{
  v1 = v0;
  v2 = type metadata accessor for FilePath();
  v85 = *(v2 - 1);
  v3 = __chkstk_darwin(v2);
  v79 = &v73[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v78 = &v73[-v6];
  v7 = __chkstk_darwin(v5);
  v81 = &v73[-v8];
  v9 = __chkstk_darwin(v7);
  v80 = &v73[-v10];
  __chkstk_darwin(v9);
  v12 = &v73[-v11];
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_1000270B4(v17, qword_1004B00F8);

  v82 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v76 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v77 = v2;
    v24 = v23;
    v86 = v23;
    *v22 = 136315138;
    v25 = *v1;
    v83 = v1 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    (*(v25 + 120))();
    sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v13;
    v29 = v28;
    (*(v14 + 8))(v16, v27);
    v30 = sub_1000026C0(v26, v29, &v86);

    *(v22 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Deleting cached keys for volume %s...", v22, 0xCu);
    sub_100003C3C(v24);
    v2 = v77;

    v12 = v76;

    v31 = v83;
  }

  else
  {

    v31 = v1 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  }

  v32 = *(*v1 + 240);
  v32();
  FilePath.removeAllFilesInDirectory()();
  v34 = v85;
  if (v33)
  {
    (*(v85 + 8))(v12, v2);
    type metadata accessor for CacheVolumeKeyManagerError(0);
    sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
    swift_allocError();
    v36 = v35;
    v37 = *(sub_1000039E8(&qword_1004B0E40, &qword_100409240) + 48);
    (*(*v1 + 120))();
    *(v36 + v37) = v33;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v38 = *(v85 + 8);
  v83 = v31;
  v84 = v38;
  v39 = (v38)(v12, v2);
  v40 = v80;
  (v32)(v39);
  FilePath.removeEmptyDirectory()();
  v85 = v34 + 8;
  v75 = v1;
  if (v41)
  {
    v84(v40, v2);

    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v80 = v42;
      v45 = v44;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v86 = v77;
      *v45 = 136315394;
      v46 = v2;
      v47 = v79;
      v74 = v43;
      v32();
      v48 = FilePath.string.getter();
      v50 = v49;
      v84(v47, v46);
      v51 = sub_1000026C0(v48, v50, &v86);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2112;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v52;
      v53 = v76;
      *v76 = v52;
      v54 = v80;
      _os_log_impl(&_mh_execute_header, v80, v74, "Attempted to delete empty %s but failed: %@", v45, 0x16u);
      sub_10019AC78(v53);

      sub_100003C3C(v77);

      v2 = v46;
    }

    else
    {
    }
  }

  else
  {
    v84(v40, v2);
  }

  v55 = *(*v75 + 216);
  v56 = v81;
  v55();
  v57 = FilePath.isEmptyDirectory()();
  if (v58)
  {
    v59 = v84;
  }

  else
  {
    v70 = v57;
    v59 = v84;
    v71 = (v84)(v56, v2);
    if (!v70)
    {
      return;
    }

    v56 = v78;
    (v55)(v71);
    FilePath.removeEmptyDirectory()();
    if (!v72)
    {
      v59(v56, v2);
      return;
    }
  }

  v59(v56, v2);
  swift_errorRetain();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = v2;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v86 = v65;
    *v63 = 136315394;
    if (qword_1004A9F10 != -1)
    {
      swift_once();
    }

    sub_1000270B4(v62, kCacheVolumeKeyCacheRootDirectory);
    sub_10034771C(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = sub_1000026C0(v66, v67, &v86);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2112;
    swift_errorRetain();
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v63 + 14) = v69;
    *v64 = v69;
    _os_log_impl(&_mh_execute_header, v60, v61, "Attempted to delete empty %s but failed: %@", v63, 0x16u);
    sub_10019AC78(v64);

    sub_100003C3C(v65);
  }

  else
  {
  }
}

uint64_t sub_100344E90()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (*(*v0 + 144))(v4);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 contextRef];
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v42 = v10;
    v43 = v12;
    v41[0] = 0;
    v41[1] = 0;
    v36 = 0;
    v35 = xmmword_100409230;
    v40[0] = 0;
    v40[1] = 0;
    v39[0] = 0;
    v39[1] = 0;
    __chkstk_darwin(v13);
    *&v32[-48] = v1;
    *&v32[-40] = v40;
    *&v32[-32] = v39;
    *&v32[-24] = &v35;
    *&v32[-16] = 18;
    *&v32[-8] = 0;
    v14 = sub_100347138(&v42, v41, sub_100347764, &v32[-64]);
    if (v14)
    {
      v15 = v14;
      type metadata accessor for CacheVolumeKeyManagerError(0);
      sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
      swift_allocError();
      v17 = v16;
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v37 = 0x6F72726520534B41;
      v38 = 0xEF2065646F632072;
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100376A40;
      *(v18 + 56) = &type metadata for Int32;
      *(v18 + 64) = &protocol witness table for Int32;
      *(v18 + 32) = v15;
      v19._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v19);

      v20 = v37;
      v21 = v38;
      *v17 = 2;
      *(v17 + 8) = v20;
      *(v17 + 16) = v21;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000270B4(v23, qword_1004B00F8);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v37 = v34;
        *v26 = 136315138;
        v27 = *(*v1 + 120);
        v33 = v25;
        v27();
        sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        (*(v3 + 8))(v6, v2);
        v31 = sub_1000026C0(v28, v30, &v37);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v24, v33, "Successfully loaded volume keys for volume %s", v26, 0xCu);
        sub_100003C3C(v34);
      }
    }

    return sub_100031928(v42, v43);
  }

  else
  {
    type metadata accessor for CacheVolumeKeyManagerError(0);
    sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1003453CC@<X0>(uint64_t a1@<X1>, void *a2@<X2>, _DWORD *a3@<X8>, uint64_t a4@<X0>, uint64_t a5@<X3>, uint64_t a6@<X4>, int a7@<W5>, uint64_t a8@<X6>)
{
  v13[2] = a1;
  v13[3] = a5;
  v13[4] = a6;
  v14 = a7;
  v15 = a8;
  v16 = a4;
  v10 = (*(*a1 + 184))(v17);
  *a3 = sub_100347138(v11, a2, sub_1003483B8, v13);
  return v10(v17, 0);
}

uint64_t sub_10034548C@<X0>(uint64_t a1@<X1>, void *a2@<X2>, _DWORD *a3@<X8>, uint64_t a4@<X0>, uint64_t a5@<X3>, int a6@<W4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  v13[2] = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a4;
  v10 = (*(*a1 + 208))(v18);
  *a3 = sub_100347138(v11, a2, sub_1003483CC, v13);
  return v10(v18, 0);
}

void sub_10034554C()
{
  v2 = v0;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100343AA0();
  if (!v1)
  {
    memset(v28, 0, sizeof(v28));
    v31[0] = 0;
    v31[1] = 0;
    __chkstk_darwin(v7);
    v27[-4] = v28;
    LODWORD(v27[-3]) = 19;
    v27[-2] = 0;
    v8 = (*(*v0 + 208))(&v29);
    v10 = sub_100347138(v9, v31, sub_100347778, &v27[-6]);
    v27[1] = 0;
    v8(&v29, 0);
    if (v10)
    {
      v11 = v10 == -536870160;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000270B4(v12, qword_1004B00F8);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v29 = v16;
        *v15 = 136315138;
        (*(*v2 + 120))();
        sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        (*(v4 + 8))(v6, v3);
        v20 = sub_1000026C0(v17, v19, &v29);

        *(v15 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v13, v14, "Successfully unloaded volume keys for volume %s", v15, 0xCu);
        sub_100003C3C(v16);
      }
    }

    else
    {
      type metadata accessor for CacheVolumeKeyManagerError(0);
      sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
      swift_allocError();
      v22 = v21;
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v29 = 0x6F72726520534B41;
      v30 = 0xEF2065646F632072;
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100376A40;
      *(v23 + 56) = &type metadata for Int32;
      *(v23 + 64) = &protocol witness table for Int32;
      *(v23 + 32) = v10;
      v24._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v24);

      v25 = v29;
      v26 = v30;
      *v22 = 3;
      *(v22 + 8) = v25;
      *(v22 + 16) = v26;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

void sub_1003459FC(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*v1 + 144))(v6);
  if (v9)
  {
    v48 = v2;
    v51 = v9;
    v10 = [v9 contextRef];
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = *(*v1 + 120);
    v46 = *v1 + 120;
    v47 = v14;
    v14();
    v15 = UUID.uuid.getter();
    v17 = v16;
    v43 = *(v5 + 8);
    v44 = v4;
    v45 = v5 + 8;
    v43(v8, v4);
    v52 = v15;
    v53 = v17;
    v18 = (*(*v3 + 168))();
    v20 = v19;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v22 = sub_100031928(v18, v20);
    v23 = (*(*v3 + 192))(v22);
    v25 = v24;
    v26 = Data._bridgeToObjectiveC()().super.isa;
    sub_100031928(v23, v25);
    v49 = v11;
    v50 = v13;
    v27 = Data._bridgeToObjectiveC()().super.isa;
    v28 = APFSVolumeCacheKey();

    if (v28 != 17 && v28)
    {
      type metadata accessor for CacheVolumeKeyManagerError(0);
      sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
      swift_allocError();
      v40 = v39;
      v41 = *(sub_1000039E8(&qword_1004B0E48, &qword_100409248) + 48);
      v47();
      *(v40 + v41) = v28;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_100031928(v49, v50);
    }

    else
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000270B4(v29, qword_1004B00F8);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v54 = v33;
        *v32 = 136315138;
        v47();
        sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v34 = v44;
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v43(v8, v34);
        v38 = sub_1000026C0(v35, v37, &v54);

        *(v32 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "Successfully unlocked volume %s", v32, 0xCu);
        sub_100003C3C(v33);
      }

      sub_100031928(v49, v50);
    }
  }

  else
  {
    type metadata accessor for CacheVolumeKeyManagerError(0);
    sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_100345FD8()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (*(*v0 + 144))(v6);
  if (!v9)
  {
    type metadata accessor for CacheVolumeKeyManagerError(0);
    sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v10 = v9;
  v11 = [v9 contextRef];
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v83 = v12;
  v84 = v14;
  v82[0] = 0;
  v82[1] = 0;
  v71 = 0;
  v67 = xmmword_100409230;
  v70 = xmmword_100409230;
  v69 = 0;
  sub_100366208(&v70);
  v15 = v69;
  if (v69)
  {
    if (v69 <= 14)
    {
      if (v69 < 0)
      {
        __break(1u);
        goto LABEL_39;
      }

      v17 = 0;
      v18 = v69 << 48;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v16 = __DataStorage.init(length:)();
      if (v15 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v17 = swift_allocObject();
        *(v17 + 16) = 0;
        *(v17 + 24) = v15;
        v18 = v16 | 0x8000000000000000;
      }

      else
      {
        v17 = v15 << 32;
        v18 = v16 | 0x4000000000000000;
      }
    }
  }

  else
  {
    v17 = 0;
    v18 = 0xC000000000000000;
  }

  v80 = v17;
  v81 = v18;
  v78 = 0;
  v79 = 0;
  __chkstk_darwin(v17);
  *&v63[-48] = &v80;
  *&v63[-40] = &v78;
  *&v63[-32] = v3;
  *&v63[-24] = &v70;
  *&v63[-16] = 8;
  v20 = sub_100347138(&v83, v82, sub_1003477BC, &v63[-64]);
  if (!v20)
  {
    if (!v78)
    {
      type metadata accessor for CacheVolumeKeyManagerError(0);
      sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
      swift_allocError();
      *v33 = 0;
      *(v33 + 8) = 0xD000000000000033;
      *(v33 + 16) = 0x8000000100446090;
      goto LABEL_13;
    }

    v71 = 0;
    v70 = v67;
    v68 = 0;
    sub_100366208(&v70);
    v2 = v68;
    if (!v68)
    {
      v31 = 0;
      v32 = 0xC000000000000000;
      goto LABEL_24;
    }

    if (v68 > 14)
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v30 = __DataStorage.init(length:)();
      if (v2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v31 = swift_allocObject();
        *(v31 + 16) = 0;
        *(v31 + 24) = v2;
        v32 = v30 | 0x8000000000000000;
      }

      else
      {
        v31 = v2 << 32;
        v32 = v30 | 0x4000000000000000;
      }

LABEL_24:
      v76 = v31;
      v77 = v32;
      v74 = 0;
      v75 = 0;
      __chkstk_darwin(v31);
      *&v63[-48] = &v76;
      *&v63[-40] = &v74;
      *&v63[-32] = v3;
      *&v63[-24] = &v70;
      *&v63[-16] = &v78;
      v34 = sub_100347138(&v83, v82, sub_10034782C, &v63[-64]);
      if (v34)
      {
        v35 = v34;
        type metadata accessor for CacheVolumeKeyManagerError(0);
        sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
        swift_allocError();
        v37 = v36;
        v72 = 0;
        v73 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v72 = 0x6F72726520534B41;
        v73 = 0xEF2065646F632072;
        sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_100376A40;
        *(v38 + 56) = &type metadata for Int32;
        *(v38 + 64) = &protocol witness table for Int32;
        *(v38 + 32) = v35;
        v39._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v39);

        v40 = v72;
        v41 = v73;
        *v37 = 1;
        *(v37 + 8) = v40;
        *(v37 + 16) = v41;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_26:

        sub_100031928(v83, v84);
LABEL_33:
        v28 = v76;
        v29 = v77;
        goto LABEL_34;
      }

      v42 = sub_10034755C(v78, v79);
      v2 = v1;
      if (v1)
      {
LABEL_32:
        sub_100031928(v83, v84);

        goto LABEL_33;
      }

      (*(*v3 + 176))(v42);
      if (qword_1004A9F20 == -1)
      {
LABEL_29:
        v43 = type metadata accessor for Logger();
        v44 = sub_1000270B4(v43, qword_1004B00F8);

        *&v67 = v44;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v65 = v47;
          v66 = swift_slowAlloc();
          v72 = v66;
          *v47 = 136315138;
          v48 = *(*v3 + 120);
          v64 = v46;
          v48();
          sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = v50;
          (*(v5 + 8))(v8, v4);
          v52 = sub_1000026C0(v49, v51, &v72);

          v53 = v65;
          *(v65 + 1) = v52;
          _os_log_impl(&_mh_execute_header, v45, v64, "Successfully generated new WKEK and converted to Data for volume %s", v53, 0xCu);
          sub_100003C3C(v66);
        }

        v54 = sub_10034755C(v74, v75);
        if (!v2)
        {
          (*(*v3 + 200))(v54);

          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *&v67 = swift_slowAlloc();
            v72 = v67;
            *v57 = 136315138;
            v58 = *(*v3 + 120);
            LODWORD(v66) = v56;
            v58();
            sub_10034771C(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v59 = dispatch thunk of CustomStringConvertible.description.getter();
            v61 = v60;
            (*(v5 + 8))(v8, v4);
            v62 = sub_1000026C0(v59, v61, &v72);

            *(v57 + 4) = v62;
            _os_log_impl(&_mh_execute_header, v55, v66, "Successfully generated new WVEK and converted to Data for volume %s", v57, 0xCu);
            sub_100003C3C(v67);
          }

          goto LABEL_26;
        }

        goto LABEL_32;
      }

LABEL_40:
      swift_once();
      goto LABEL_29;
    }

    if ((v68 & 0x8000000000000000) == 0)
    {
      v31 = 0;
      v32 = v68 << 48;
      goto LABEL_24;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v21 = v20;
  type metadata accessor for CacheVolumeKeyManagerError(0);
  sub_10034771C(&qword_1004B0E50, type metadata accessor for CacheVolumeKeyManagerError, &protocol conformance descriptor for CacheVolumeKeyManagerError);
  swift_allocError();
  v23 = v22;
  v76 = 0;
  v77 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v76 = 0x6F72726520534B41;
  v77 = 0xEF2065646F632072;
  sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100376A40;
  *(v24 + 56) = &type metadata for Int32;
  *(v24 + 64) = &protocol witness table for Int32;
  *(v24 + 32) = v21;
  v25._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v25);

  v26 = v76;
  v27 = v77;
  *v23 = 0;
  *(v23 + 8) = v26;
  *(v23 + 16) = v27;
LABEL_13:
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v28 = v83;
  v29 = v84;
LABEL_34:
  sub_100031928(v28, v29);
  return sub_100031928(v80, v81);
}

void sub_100346ADC(uint64_t a2@<X1>, _DWORD *a6@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a2 + 120))(v10);
  v13 = UUID.uuid.getter();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v17[1] = v13;
  v17[2] = v15;
  sub_10035E618();
  *a6 = v16;
}

void sub_100346C4C(uint64_t a2@<X1>, _DWORD *a6@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a2 + 120))(v10);
  v13 = UUID.uuid.getter();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v17[1] = v13;
  v17[2] = v15;
  sub_10035E034();
  *a6 = v16;
}

uint64_t CacheVolumeKeyManager.deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100031928(*(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek), *(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek + 8));
  sub_100031928(*(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek), *(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek + 8));
  v3 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
  v4 = type metadata accessor for FilePath();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CacheVolumeKeyManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100031928(*(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek), *(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wkek + 8));
  sub_100031928(*(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek), *(v0 + OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_wvek + 8));
  v3 = OBJC_IVAR____TtC10DarwinInit21CacheVolumeKeyManager_keysCacheRootDirectory;
  v4 = type metadata accessor for FilePath();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_100346FAC(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100346FCC(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100347084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t *__return_ptr, void *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_10;
  }

  v10 = result;
  result = __DataStorage._offset.getter();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v14 = __DataStorage._length.getter();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  *a4 = v11 + v10;
  a4[1] = v15;
  a5(&v16, a4);
  return v16;
}

uint64_t sub_100347138(uint64_t *a1, void *a2, void (*a3)(uint64_t *__return_ptr, void *), uint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      sub_100031928(v9, v8);
      *&v21 = v9;
      WORD4(v21) = v8;
      BYTE10(v21) = BYTE2(v8);
      BYTE11(v21) = BYTE3(v8);
      BYTE12(v21) = BYTE4(v8);
      BYTE13(v21) = BYTE5(v8);
      BYTE14(v21) = BYTE6(v8);
      *a2 = &v21;
      a2[1] = BYTE6(v8);
      a3(&v20, a2);
      result = v20;
      v12 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
      *a1 = v21;
      a1[1] = v12;
      return result;
    }

    v15 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1000318C0(v9, v8, a3, a4);
    sub_100031928(v9, v8);
    *a1 = xmmword_1003780A0;
    sub_100031928(0, 0xC000000000000000);
    v16 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v16 < v9)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
      {
LABEL_19:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v15 = v17;
      v5 = v4;
    }

    if (v16 >= v9)
    {

      v18 = sub_100347084(v9, v9 >> 32, v15, a2, a3);

      *a1 = v9;
      a1[1] = v15 | 0x4000000000000000;
      if (!v5)
      {
        return v18;
      }

      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v10 == 2)
  {
    sub_1000318C0(*a1, v8, a3, a4);
    sub_100031928(v9, v8);
    *&v21 = v9;
    *(&v21 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1003780A0;
    sub_100031928(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v14 = *(&v21 + 1);
    result = sub_100347084(*(v21 + 16), *(v21 + 24), *(&v21 + 1), a2, a3);
    *a1 = v21;
    a1[1] = v14 | 0x8000000000000000;
  }

  else
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    *a2 = &v21;
    a2[1] = 0;
    a3(&v20, a2);
    return v20;
  }

  return result;
}

unint64_t sub_1003474AC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100346FCC(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_10034755C(_BYTE *a1, unint64_t a2)
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000270B4(v4, qword_1004B00F8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v5, v6, "Attempting to initialze Data from aks_fv_data_s with length: %ld", v7, 0xCu);
  }

  if (a1 && a2)
  {
    return sub_1003474AC(a1, a2);
  }

  sub_10034840C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1003476B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheVolumeKeyManagerError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034771C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003477BC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 48);
  v8[1] = *(v2 + 32);
  v9 = v6;
  v10 = a1;
  result = sub_100347138(v5, v4, sub_1003483A8, v8);
  *a2 = result;
  return result;
}

uint64_t sub_10034782C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 48);
  v8[1] = *(v2 + 32);
  v9 = a1;
  v10 = v6;
  result = sub_100347138(v5, v4, sub_10034839C, v8);
  *a2 = result;
  return result;
}

unint64_t sub_10034789C()
{
  result = qword_1004B0E58;
  if (!qword_1004B0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0E58);
  }

  return result;
}

unint64_t sub_1003478F4()
{
  result = qword_1004B0E60;
  if (!qword_1004B0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0E60);
  }

  return result;
}

uint64_t sub_100347990@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1003479DC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100347A34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100347A80(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(**a2 + 176);
  sub_1000318C0(*a1, v5, a3, a4);
  return v6(v4, v5);
}

uint64_t sub_100347AEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100347B38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(**a2 + 200);
  sub_1000318C0(*a1, v5, a3, a4);
  return v6(v4, v5);
}

void sub_100347BFC(uint64_t a1)
{
  sub_100347CB4(319);
  if (v1 <= 0x3F)
  {
    sub_100347D30();
    if (v2 <= 0x3F)
    {
      sub_1002A7298();
      if (v3 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v4 <= 0x3F)
        {
          sub_100347D90(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100347CB4(uint64_t a1)
{
  if (!qword_1004B0EE8)
  {
    type metadata accessor for UUID();
    sub_100003A94(&qword_1004AB0A0, &unk_100377120);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004B0EE8);
    }
  }
}

void sub_100347D30()
{
  if (!qword_1004B0EF0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004B0EF0);
    }
  }
}

void sub_100347D90(uint64_t a1)
{
  if (!qword_1004B0EF8)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004B0EF8);
    }
  }
}

uint64_t sub_100347E30(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FilePath();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10034840C()
{
  result = qword_1004B10D8;
  if (!qword_1004B10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B10D8);
  }

  return result;
}

uint64_t AEADecryptionParameters.init(archiveID:decryptionKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for AEADecryptionParameters(0) + 20);
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t type metadata accessor for AEADecryptionParameters(uint64_t a1)
{
  result = qword_1004B1138;
  if (!qword_1004B1138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AEADecryptionParameters.archiveID.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  sub_1000318C0(*v4, *(v4 + 8), a3, a4);
  return v5;
}

uint64_t AEADecryptionParameters.decryptionKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AEADecryptionParameters(0) + 20);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1003485F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for SymmetricKey();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1003486C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for SymmetricKey();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10034876C(uint64_t a1)
{
  result = type metadata accessor for SymmetricKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003487E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6361667265746E69 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1003488C8(uint64_t a1)
{
  v2 = sub_100348B50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100348904(uint64_t a1)
{
  v2 = sub_100348B50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitNetworkConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004B1170, &qword_1004094F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_100348B50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v17 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_1001B5418();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  sub_100003C3C(a1);
}

unint64_t sub_100348B50()
{
  result = qword_1004B1178;
  if (!qword_1004B1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1178);
  }

  return result;
}

uint64_t DInitNetworkConfig.encode(to:)(void *a1)
{
  v4 = sub_1000039E8(&qword_1004B1180, &qword_1004094F8);
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  sub_10000E2A8(a1, a1[3]);
  sub_100348B50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    sub_1001B54D4();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v6, v4);
}

Swift::Int DInitNetworkConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  JSON.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100348E30()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  JSON.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t _s10DarwinInit18DInitNetworkConfigV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v8 = v3;
    v9 = v2;

    v5 = _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v9, &v8, v6);
  }

  return v5 & 1;
}

unint64_t sub_100348F28()
{
  result = qword_1004B1188;
  if (!qword_1004B1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1188);
  }

  return result;
}

unint64_t sub_100348FA0()
{
  result = qword_1004B1190;
  if (!qword_1004B1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1190);
  }

  return result;
}

unint64_t sub_100348FF8()
{
  result = qword_1004B1198;
  if (!qword_1004B1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B1198);
  }

  return result;
}

unint64_t sub_100349050()
{
  result = qword_1004B11A0;
  if (!qword_1004B11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B11A0);
  }

  return result;
}

uint64_t static Subprocess.run(shell:command:savingStandardOutTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  countAndFlagsBits = a5;
  v9 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  __chkstk_darwin(v9 - 8);
  v11 = &v121 - v10;
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v127 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  __chkstk_darwin(v16);
  v126 = &v121 - v17;
  v18 = sub_10034B804(a1, a2, a3, a4);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000270B4(v19, qword_1004B00F8);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v124 = v13;
  v125 = v12;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v131[0] = v24;
    *v23 = 136315138;
    v25 = Array.description.getter();
    v27 = sub_1000026C0(v25, v26, v131);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Running: %s", v23, 0xCu);
    sub_100003C3C(v24);

    v12 = v125;
    v13 = v124;
  }

  sub_10018FEF4(countAndFlagsBits, v11);
  v28 = *(v13 + 48);
  if (v28(v11, 1, v12) == 1)
  {
    sub_10034B5AC();
    FilePath.appending(_:)();
    if (v28(v11, 1, v12) != 1)
    {
      sub_100013F2C(v11, &qword_1004A9CF8, &qword_10037BF90);
    }
  }

  else
  {
    (*(v13 + 32))(v126, v11, v12);
  }

  sub_10034B5AC();
  FilePath.appending(_:)();
  FilePath.remove()();
  if (v29)
  {
  }

  FilePath.remove()();
  if (v30)
  {
  }

  type metadata accessor for CStringArray();
  v31 = swift_allocObject();
  v131[0] = sub_10034A6E4(v18);
  sub_10034A1A0(&off_100484CB0);
  *(v31 + 16) = v131[0];
  v32 = v31 + 16;
  v132 = 0;
  v33 = posix_spawn_file_actions_init(&v132);
  if (v33)
  {
    v34 = v33;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_27;
    }

    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 1) = v34;
    v38 = "posix_spawn_file_actions_init failed with error: %d";
    goto LABEL_16;
  }

  FilePath.description.getter();
  v43 = String.utf8CString.getter();

  v44 = posix_spawn_file_actions_addopen(&v132, 1, (v43 + 32), 1538, 0x1A4u);

  if (v44)
  {

    v35 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v45))
    {
      goto LABEL_27;
    }

    v46 = swift_slowAlloc();
    v47 = v46;
    *v46 = 67109376;
    v48 = 1;
    goto LABEL_24;
  }

  FilePath.description.getter();
  v49 = String.utf8CString.getter();

  v44 = posix_spawn_file_actions_addopen(&v132, 2, (v49 + 32), 1538, 0x1A4u);

  if (v44)
  {

    v35 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v45))
    {
      goto LABEL_27;
    }

    v46 = swift_slowAlloc();
    v47 = v46;
    *v46 = 67109376;
    v48 = 2;
LABEL_24:
    *(v46 + 4) = v48;
    *(v46 + 8) = 1024;
    *(v46 + 10) = v44;
    v38 = "posix_spawn_file_actions_addopen %d failed with error: %d";
    v39 = v45;
    v40 = v35;
    v41 = v47;
    v42 = 14;
    goto LABEL_25;
  }

  v129[0] = -1;
  swift_beginAccess();
  v53 = *v32;
  if (!*(*v32 + 16))
  {
    __break(1u);
  }

  v54 = *(v53 + 32);

  v55 = environ.getter();
  v56 = posix_spawn(v129, v54, &v132, 0, (v53 + 32), v55);

  if (v56)
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_27;
    }

    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 1) = v56;
    v38 = "posix_spawn failed with return code %d";
LABEL_16:
    v39 = v36;
LABEL_17:
    v40 = v35;
    v41 = v37;
    v42 = 8;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v40, v39, v38, v41, v42);
    goto LABEL_26;
  }

  v128 = 0;
  do
  {
    v57 = waitpid(v129[0], &v128, 0);
    if (v57 != -1)
    {
      if (v129[0] != v57)
      {

        goto LABEL_28;
      }

      v65 = v28(countAndFlagsBits, 1, v125);
      v66 = v124;
      if (v65 == 1)
      {
        v67 = v126;
        v68 = FilePath.loadString()();
        if (v69)
        {

          swift_errorRetain();
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = v66;
            v74 = swift_slowAlloc();
            v130[0] = v74;
            *v72 = 136315138;
            swift_getErrorValue();
            v75 = Error.localizedDescription.getter();
            v77 = sub_1000026C0(v75, v76, v130);

            *(v72 + 4) = v77;
            v78 = "Read of stdout failed with error: %s";
LABEL_49:
            _os_log_impl(&_mh_execute_header, v70, v71, v78, v72, 0xCu);
            sub_100003C3C(v74);

            v84 = *(v73 + 8);
            v85 = v125;
            v84(v127, v125);
            v84(v126, v85);
            return 0;
          }

LABEL_50:

LABEL_69:
          v105 = *(v66 + 8);
          v106 = v125;
          v105(v127, v125);
          v107 = v126;
LABEL_70:
          v105(v107, v106);
          return 0;
        }

        v94 = (v68._object >> 56) & 0xF;
        if ((v68._object & 0x2000000000000000) == 0)
        {
          v94 = v68._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v94)
        {
          countAndFlagsBits = v68._countAndFlagsBits;

          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v95, v96))
          {
            LODWORD(v122) = v96;
            v97 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v130[0] = v121;
            *v97 = 136315394;
            if (!v18[2])
            {
              goto LABEL_84;
            }

            v98 = v18[4];
            v99 = v18[5];

            v100 = sub_1000026C0(v98, v99, v130);

            *(v97 + 4) = v100;
            *(v97 + 12) = 2080;
            v101 = sub_1000026C0(countAndFlagsBits, v68._object, v130);

            *(v97 + 14) = v101;
            _os_log_impl(&_mh_execute_header, v95, v122, "%s stdout:\n%s", v97, 0x16u);
            swift_arrayDestroy();

            v67 = v126;
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
        v67 = v126;
      }

      v79 = FilePath.loadString()();
      if (v80)
      {

        swift_errorRetain();
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = v66;
          v74 = swift_slowAlloc();
          v130[0] = v74;
          *v72 = 136315138;
          swift_getErrorValue();
          v81 = Error.localizedDescription.getter();
          v83 = sub_1000026C0(v81, v82, v130);

          *(v72 + 4) = v83;
          v78 = "Read of stderr failed with error: %s";
          goto LABEL_49;
        }

        goto LABEL_50;
      }

      v86 = (v79._object >> 56) & 0xF;
      if ((v79._object & 0x2000000000000000) == 0)
      {
        v86 = v79._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v86)
      {

        goto LABEL_65;
      }

      countAndFlagsBits = v79._countAndFlagsBits;

      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v87, v88))
      {

        goto LABEL_65;
      }

      v89 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v130[0] = v122;
      *v89 = 136315394;
      if (v18[2])
      {
        v90 = v18[4];
        v91 = v18[5];

        v92 = sub_1000026C0(v90, v91, v130);

        *(v89 + 4) = v92;
        *(v89 + 12) = 2080;
        v93 = sub_1000026C0(countAndFlagsBits, v79._object, v130);

        *(v89 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v87, v88, "%s stderr:\n%s", v89, 0x16u);
        swift_arrayDestroy();

        v67 = v126;
LABEL_65:
        if (shim_WIFSIGNALED(v128))
        {

          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 67109120;
            swift_beginAccess();
            *(v104 + 4) = shim_WTERMSIG(v128);
            _os_log_impl(&_mh_execute_header, v102, v103, "Process signalled %d", v104, 8u);
          }

          goto LABEL_69;
        }

        if (shim_WIFEXITED(v128))
        {

          v108 = shim_WEXITSTATUS(v128);
          if (!v108)
          {

            v119 = *(v66 + 8);
            v120 = v125;
            v119(v127, v125);
            v119(v67, v120);
            return 1;
          }

          v109 = v108;
          v35 = Logger.logObject.getter();
          v110 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v35, v110))
          {
            goto LABEL_27;
          }

          v37 = swift_slowAlloc();
          *v37 = 67109120;
          *(v37 + 1) = v109;
          v38 = "Process exited with return code %d";
          v39 = v110;
          goto LABEL_17;
        }

        v35 = Logger.logObject.getter();
        v111 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v35, v111))
        {

          v118 = v67;
          v105 = *(v66 + 8);
          v106 = v125;
          v105(v127, v125);
          v107 = v118;
          goto LABEL_70;
        }

        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v130[0] = v113;
        *v112 = 136315138;
        if (v18[2])
        {
          v114 = v113;
          v115 = v18[4];
          v116 = v18[5];

          v117 = sub_1000026C0(v115, v116, v130);

          *(v112 + 4) = v117;
          _os_log_impl(&_mh_execute_header, v35, v111, "%s internal error, do not know why the process stopped", v112, 0xCu);
          sub_100003C3C(v114);

          goto LABEL_26;
        }

LABEL_85:
        __break(1u);
        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      }

      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v58 = errno.getter();
  }

  while (v58 == 4);
  v59 = v58;

  v35 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v35, v60))
  {
    goto LABEL_27;
  }

  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  *v61 = 138412290;
  sub_100187D3C();
  swift_allocError();
  *v63 = v59;
  v64 = _swift_stdlib_bridgeErrorToNSError();
  *(v61 + 4) = v64;
  *v62 = v64;
  _os_log_impl(&_mh_execute_header, v35, v60, "waitpid failed with error: %@", v61, 0xCu);
  sub_100013F2C(v62, &qword_1004AA050, &unk_1003F2F10);

LABEL_26:

LABEL_27:

LABEL_28:
  v50 = *(v124 + 8);
  v51 = v125;
  v50(v127, v125);
  v50(v126, v51);
  return 0;
}

uint64_t sub_10034A1A0(uint64_t result)
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

  result = sub_10018C8F8(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_10034A28C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100011A4C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10034A3D0(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000039E8(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10034A5A0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10034A6E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  sub_1003110C8(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      if ((*i & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        *__s1 = *(i - 1);
        v12 = v5 & 0xFFFFFFFFFFFFFFLL;

        v6 = __s1;
      }

      else
      {
        if ((*(i - 1) & 0x1000000000000000) == 0)
        {
          break;
        }

        v6 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      v13 = strdup(v6);
LABEL_9:

      v7 = v13;
      v14 = v3;
      v9 = v3[2];
      v8 = v3[3];
      if (v9 >= v8 >> 1)
      {
        sub_1003110C8((v8 > 1), v9 + 1, 1);
        v3 = v14;
      }

      v3[2] = v9 + 1;
      v3[v9 + 4] = v7;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_1000039E8(&qword_1004AEE18, &qword_100403770);
    _StringGuts._slowWithCString<A>(_:)();
    goto LABEL_9;
  }

  return v3;
}

void *sub_10034A860(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = __chkstk_darwin(v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v57 = &v42 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = __chkstk_darwin(v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v42 - v23;
  v25 = __chkstk_darwin(v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v55 = *(a3 - 1);
  __chkstk_darwin(v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  __chkstk_darwin(v62);
  v31 = &v42 - v30;
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v63 = ContiguousArray.init()();
  v58 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t CStringArray.__allocating_init<A>(_:)(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_10034C5EC(a1, a2, a3, a4);
  (*(*(a2 - 1) + 8))(a1, a2);
  return v8;
}

uint64_t CStringArray.init<A>(_:)(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = sub_10034C5EC(a1, a2, a3, a4);
  (*(*(a2 - 1) + 8))(a1, a2);
  return v6;
}

uint64_t sub_10034B058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_1000039E8(&qword_1004AEE18, &qword_100403770);
  return dispatch thunk of StringProtocol.withCString<A>(_:)();
}

char *sub_10034B100@<X0>(const char *a1@<X0>, char **a2@<X8>)
{
  result = strdup(a1);
  *a2 = result;
  return result;
}

uint64_t CStringArray.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      v4 = *(v1 + v3);
      if (v4)
      {
        free(v4);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t CStringArray.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      v4 = *(v1 + v3);
      if (v4)
      {
        free(v4);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  return swift_deallocClassInstance();
}

double NonZeroExit.arguments.getter()
{
  type metadata accessor for NonZeroExit(0);

  return result;
}

uint64_t NonZeroExit.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for NonZeroExit(0) + 28));

  return v1;
}

uint64_t NonZeroExit.output.getter()
{
  v1 = *(v0 + *(type metadata accessor for NonZeroExit(0) + 32));

  return v1;
}

int *NonZeroExit.init(executable:arguments:exitCode:error:output:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for NonZeroExit(0);
  *(a8 + result[5]) = a2;
  *(a8 + result[6]) = a3;
  v18 = (a8 + result[7]);
  *v18 = a4;
  v18[1] = a5;
  v19 = (a8 + result[8]);
  *v19 = a6;
  v19[1] = a7;
  return result;
}

uint64_t NonZeroExit.errorDescription.getter()
{
  sub_1000039E8(&qword_1004A6B08, &unk_100376270);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100376A40;
  *(v1 + 32) = URL.lastPathComponent.getter();
  *(v1 + 40) = v2;
  v13[2] = v1;
  v3 = type metadata accessor for NonZeroExit(0);

  sub_10034A28C(v4);
  _StringGuts.grow(_:)(49);

  strcpy(v13, "subprocess '");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_10004AF7C();
  v5 = BidirectionalCollection<>.joined(separator:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._object = 0x8000000100446180;
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  String.append(_:)(*(v0 + *(v3 + 28)));
  return v13[0];
}

uint64_t sub_10034B5AC()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  v1 = swift_slowAlloc();
  if (confstr(65537, v1, 0x400uLL))
  {
    static String.Encoding.utf8.getter();
    result = String.init(cString:encoding:)();
    if (v3)
    {
      FilePath.init(_:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1004A9F48 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000270B4(v4, static Logger.subprocess);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = errno.getter();
      sub_100187D3C();
      swift_allocError();
      *v10 = v9;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v11;
      *v8 = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "confstr: %@", v7, 0xCu);
      sub_100013F2C(v8, &qword_1004AA050, &unk_1003F2F10);
    }

    FilePath.init(stringLiteral:)();
  }

  return result;
}

void *sub_10034B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1000039E8(&qword_1004A6B08, &unk_100376270);
    v8 = swift_allocObject();
    *(v8 + 1) = xmmword_100376F00;
    v8[4] = a1;
    v8[5] = a2;
    v8[6] = 25389;
    v8[7] = 0xE200000000000000;
    v8[8] = a3;
    v8[9] = a4;
  }

  else
  {
    sub_10000B080();
    v9 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
    v10 = *(v9 + 16);
    if (v10)
    {
      sub_10000DFF4(0, v10, 0);
      v8 = _swiftEmptyArrayStorage;
      v11 = v9 + 56;
      do
      {

        v12 = static String._fromSubstring(_:)();
        v14 = v13;

        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_10000DFF4((v15 > 1), v16 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v16 + 1;
        v17 = &_swiftEmptyArrayStorage[2 * v16];
        v17[4] = v12;
        v17[5] = v14;
        v11 += 32;
        --v10;
      }

      while (v10);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v8;
}

uint64_t sub_10034B9B0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10034B9E0(uint64_t a1, uint64_t a2)
{
  v112 = type metadata accessor for URL();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for CharacterSet();
  v5 = *(v109 - 8);
  __chkstk_darwin(v109);
  v118 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000039E8(&qword_1004A6B08, &unk_100376270);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100376A40;
  v114 = a1;
  *(v7 + 32) = URL.lastPathComponent.getter();
  *(v7 + 40) = v8;
  v130 = v7;
  v9 = *(a2 + 16);
  v10 = _swiftEmptyArrayStorage;
  v113 = a2;
  v121 = v5;
  if (v9)
  {
    *&v122 = _swiftEmptyArrayStorage;
    sub_10000DFF4(0, v9, 0);
    v10 = v122;
    v11 = a2 + 32;
    v12 = v9;
    do
    {
      sub_100003B20(v11, &v127);
      sub_10000E2A8(&v127, v129);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_100003C3C(&v127);
      *&v122 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_10000DFF4((v16 > 1), v17 + 1, 1);
        v10 = v122;
      }

      v10[2] = v17 + 1;
      v18 = &v10[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
      v11 += 40;
      --v12;
    }

    while (v12);
    v5 = v121;
  }

  sub_10034A28C(v10);
  if (qword_1004A9F48 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000270B4(v19, static Logger.subprocess);
  v20 = v130;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v127 = v24;
    *v23 = 136315138;
    *&v122 = v20;
    sub_1000039E8(&qword_1004A6B48, &unk_100376810);
    sub_10004AF7C();
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    v28 = sub_1000026C0(v25, v27, &v127);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "running subprocess %s", v23, 0xCu);
    sub_100003C3C(v24);
  }

  else
  {
  }

  v29 = v113;
  v30 = [objc_allocWithZone(NSTask) init];
  v31 = [objc_allocWithZone(NSPipe) init];
  v32 = [objc_allocWithZone(NSPipe) init];
  v117 = v31;
  [v30 setStandardError:v31];
  v116 = v32;
  [v30 setStandardOutput:v32];
  URL._bridgeToObjectiveC()(v33);
  v35 = v34;
  [v30 setExecutableURL:v34];

  v119 = v30;
  if (v9)
  {
    *&v122 = _swiftEmptyArrayStorage;
    sub_10000DFF4(0, v9, 0);
    v36 = v122;
    v37 = v29 + 32;
    v38 = v9;
    do
    {
      sub_100003B20(v37, &v127);
      sub_10000E2A8(&v127, v129);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_100003C3C(&v127);
      *&v122 = v36;
      v43 = *(v36 + 16);
      v42 = *(v36 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_10000DFF4((v42 > 1), v43 + 1, 1);
        v36 = v122;
      }

      *(v36 + 16) = v43 + 1;
      v44 = v36 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v37 += 40;
      --v38;
    }

    while (v38);
    v5 = v121;
    v30 = v119;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 setArguments:isa];

  [v30 launch];
  v46 = [v117 fileHandleForReading];
  v47 = [v46 readDataToEndOfFile];

  v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = [v116 fileHandleForReading];
  v52 = [v51 readDataToEndOfFile];

  v120 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = v53;

  sub_1000318C0(v48, v50, v54, v55);
  v56 = sub_1001D52F8(v48, v50);
  v108 = v50;
  v107 = v48;
  if (v57)
  {
    v60 = v56;
    v61 = v57;
    sub_100031928(v48, v50);
LABEL_20:
    v62 = v109;
    goto LABEL_27;
  }

  v125 = v48;
  v126 = v50;
  sub_1000318C0(v48, v50, v58, v59);
  sub_1000039E8(&qword_1004AB968, &qword_1003F7BE0);
  if (swift_dynamicCast())
  {
    sub_100003C88(&v122, &v127);
    sub_10000E2A8(&v127, v129);
    if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
    {
      sub_100031928(v48, v50);
      sub_10000E2A8(&v127, v129);
      dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
      v61 = *(&v122 + 1);
      v60 = v122;
      sub_100003C3C(&v127);
      goto LABEL_20;
    }

    sub_100003C3C(&v127);
  }

  else
  {
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    sub_100013F2C(&v122, &qword_1004AB970, &qword_1003F7BE8);
  }

  v62 = v109;
  v60 = sub_1001D19F8(v48, v50, v63, v64);
  v61 = v65;
  sub_100031928(v48, v50);
LABEL_27:
  v127 = v60;
  v128 = v61;
  v66 = v118;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10000B080();
  v105 = StringProtocol.trimmingCharacters(in:)();
  v106 = v67;
  v68 = *(v5 + 8);
  v121 = v5 + 8;
  v68(v66, v62);

  v69 = v120;
  v70 = v115;
  sub_1000318C0(v120, v115, v71, v72);
  v73 = sub_1001D52F8(v69, v70);
  if (!v74)
  {
    v125 = v69;
    v126 = v70;
    sub_1000318C0(v69, v70, v75, v76);
    sub_1000039E8(&qword_1004AB968, &qword_1003F7BE0);
    if (swift_dynamicCast())
    {
      sub_100003C88(&v122, &v127);
      sub_10000E2A8(&v127, v129);
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_100031928(v120, v70);
        sub_10000E2A8(&v127, v129);
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v78 = *(&v122 + 1);
        v77 = v122;
        sub_100003C3C(&v127);
        v62 = v109;
        goto LABEL_35;
      }

      sub_100003C3C(&v127);
      v62 = v109;
      v69 = v120;
    }

    else
    {
      v124 = 0;
      v122 = 0u;
      v123 = 0u;
      sub_100013F2C(&v122, &qword_1004AB970, &qword_1003F7BE8);
    }

    v73 = sub_1001D19F8(v69, v70, v79, v80);
  }

  v77 = v73;
  v78 = v74;
  sub_100031928(v69, v70);
LABEL_35:
  v127 = v77;
  v128 = v78;
  v81 = v118;
  static CharacterSet.whitespacesAndNewlines.getter();
  v82 = StringProtocol.trimmingCharacters(in:)();
  v84 = v83;
  v68(v81, v62);

  v85 = v119;
  [v119 waitUntilExit];
  v86 = [v85 terminationStatus];
  if (v86)
  {
    v87 = v86;
    v118 = v84;
    v121 = v82;
    (*(v111 + 16))(v110, v114, v112);
    v88 = _swiftEmptyArrayStorage;
    if (v9)
    {
      *&v122 = _swiftEmptyArrayStorage;
      sub_10000DFF4(0, v9, 0);
      v88 = v122;
      v89 = v113 + 32;
      do
      {
        sub_100003B20(v89, &v127);
        sub_10000E2A8(&v127, v129);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        sub_100003C3C(&v127);
        *&v122 = v88;
        v94 = v88[2];
        v93 = v88[3];
        if (v94 >= v93 >> 1)
        {
          sub_10000DFF4((v93 > 1), v94 + 1, 1);
          v88 = v122;
        }

        v88[2] = v94 + 1;
        v95 = &v88[2 * v94];
        v95[4] = v90;
        v95[5] = v92;
        v89 += 40;
        --v9;
      }

      while (v9);
      v85 = v119;
    }

    v96 = type metadata accessor for NonZeroExit(0);
    sub_10034C740();
    swift_allocError();
    v98 = v97;
    (*(v111 + 32))(v97, v110, v112);
    *(v98 + v96[5]) = v88;
    *(v98 + v96[6]) = v87;
    v99 = (v98 + v96[7]);
    v100 = v106;
    *v99 = v105;
    v99[1] = v100;
    v101 = (v98 + v96[8]);
    v82 = v121;
    v102 = v118;
    *v101 = v121;
    v101[1] = v102;
    swift_willThrow();
  }

  else
  {
  }

  sub_100031928(v120, v115);
  sub_100031928(v107, v108);

  return v82;
}

uint64_t sub_10034C5EC(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v8 = sub_1000039E8(&qword_1004AEE18, &qword_100403770);
  v12 = sub_10034A860(sub_10034CA58, v11, a2, v8, &type metadata for Never, a3, &protocol witness table for Never, v9);
  sub_10034A1A0(&off_100488F10);
  *(v5 + 16) = v12;
  return v5;
}

uint64_t type metadata accessor for NonZeroExit(uint64_t a1)
{
  result = qword_1004B12A8;
  if (!qword_1004B12A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10034C740()
{
  result = qword_1004B11A8;
  if (!qword_1004B11A8)
  {
    type metadata accessor for NonZeroExit(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B11A8);
  }

  return result;
}

uint64_t sub_10034C7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10034C8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10034C960(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10034C9F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10034C9F8()
{
  if (!qword_1004B12B8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1004B12B8);
    }
  }
}

uint64_t static DiavloClient.fetchRootCertificate(server:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10034CA9C, 0, 0);
}

uint64_t sub_10034CA9C()
{
  v1 = sub_100194844();
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_10034CBA8;
  v7 = v0[2];
  v8 = v0[3];

  return sub_10034D07C(v1, v3, v5, v7, v8);
}

uint64_t sub_10034CBA8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t static DiavloClient.generateDiavloCertRequestURL(server:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1000039E8(&qword_1004A7160, &unk_100378C70);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(string:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100013F2C(v6, &qword_1004A7160, &unk_100378C70);
    v11 = type metadata accessor for URL();
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    URLComponents.path.setter();
    URLComponents.url.getter();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t static DiavloClient.fetchRootCertificate(request:server:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10034CF7C;

  return sub_10034D07C(a1, a2, a3, a4, a5);
}

uint64_t sub_10034CF7C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10034D07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = type metadata accessor for URLRequest();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  sub_1000039E8(&qword_1004A7160, &unk_100378C70);
  v5[19] = swift_task_alloc();
  v7 = type metadata accessor for URLComponents();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v5[23] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_10034D2E0, 0, 0);
}

uint64_t sub_10034D2E0()
{
  v53 = v0;
  if (qword_1004A9F28 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = sub_1000270B4(v3, static Logger.default);
  (*(v2 + 16))(v1, v7, v3);
  URLComponents.init(string:)();
  v8 = (*(v5 + 48))(v6, 1, v4);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  v11 = *(v0 + 184);
  if (v8 == 1)
  {
    sub_100013F2C(*(v0 + 152), &qword_1004A7160, &unk_100378C70);
    (*(v10 + 56))(v11, 1, 1, v9);
LABEL_6:
    sub_100013F2C(*(v0 + 184), &qword_1004A6D30, &unk_100376820);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 112);
      v17 = *(v0 + 120);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v52[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1000026C0(v18, v17, v52);
      _os_log_impl(&_mh_execute_header, v15, v16, "Error building Diavlo certificate request URL for %s", v19, 0xCu);
      sub_100003C3C(v20);
    }

    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v23 = *(v0 + 232);
    sub_100195940();
    swift_allocError();
    *v24 = 5;
    swift_willThrow();
    (*(v22 + 8))(v21, v23);

    v25 = *(v0 + 8);

    return v25();
  }

  v13 = *(v0 + 168);
  v12 = *(v0 + 176);
  v14 = *(v0 + 160);
  (*(v13 + 32))(v12, *(v0 + 152), v14);
  URLComponents.path.setter();
  URLComponents.url.getter();
  (*(v13 + 8))(v12, v14);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    goto LABEL_6;
  }

  v28 = *(v0 + 216);
  v27 = *(v0 + 224);
  v29 = *(v0 + 192);
  v30 = *(v0 + 200);
  (*(v30 + 32))(v27, *(v0 + 184), v29);
  v31 = *(v30 + 16);
  v31(v28, v27, v29);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 216);
  v36 = *(v0 + 192);
  v37 = *(v0 + 200);
  if (v34)
  {
    v38 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v52[0] = v50;
    *v38 = 136315138;
    v49 = URL.absoluteString.getter();
    v51 = v31;
    v40 = v39;
    v41 = *(v37 + 8);
    v41(v35, v36);
    v42 = sub_1000026C0(v49, v40, v52);
    v31 = v51;

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, "Requesting cert from %s", v38, 0xCu);
    sub_100003C3C(v50);
  }

  else
  {

    v41 = *(v37 + 8);
    v41(v35, v36);
  }

  *(v0 + 256) = v41;
  v43 = *(v0 + 224);
  v44 = *(v0 + 208);
  v45 = *(v0 + 192);
  v46 = *(v0 + 104);
  *(v0 + 16) = xmmword_1003F2EE0;
  *(v0 + 32) = xmmword_1003F2EF0;
  *(v0 + 48) = 1;
  *(v0 + 56) = *(v0 + 88);
  *(v0 + 72) = v46;
  v31(v44, v43, v45);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10034E2C4();
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  URLRequest.httpBody.setter();
  URLRequest.httpMethod.setter();
  v47 = swift_task_alloc();
  *(v0 + 264) = v47;
  *v47 = v0;
  v47[1] = sub_10034DAB0;
  v48 = *(v0 + 144);
  v56 = 1;
  v55 = 0;

  return sub_1001AA578(v48, 3, 0x8AC7230489E80000, 0, 0, v0 + 16, 1, 0);
}

uint64_t sub_10034DAB0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[34] = a1;
  v6[35] = a2;
  v6[36] = v3;

  if (v3)
  {
    v7 = sub_10034E014;
  }

  else
  {

    v7 = sub_10034DBD0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10034DBD0()
{
  v1 = v0[36];
  (*(v0[17] + 8))(v0[18], v0[16]);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10034E318();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v1)
  {
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to decode response from Diavlo server: %@", v4, 0xCu);
      sub_100013F2C(v5, &qword_1004AA050, &unk_1003F2F10);
    }

    v8 = v0[34];
    v7 = v0[35];
    v32 = v0[31];
    v9 = v0[30];
    v30 = v0[32];
    v31 = v0[29];
    v10 = v0[28];
    v11 = v0[24];

    sub_100195940();
    swift_allocError();
    *v12 = 4;
    swift_willThrow();
    sub_100031928(v8, v7);

    v30(v10, v11);
    (*(v9 + 8))(v32, v31);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[10];

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[34];
    v19 = v0[35];
    v33 = v15;
    if (v18)
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = *(v15 + 16);

      _os_log_impl(&_mh_execute_header, v16, v17, "Obtained %ld certificates", v21, 0xCu);

      sub_100031928(v20, v19);
    }

    else
    {
      sub_100031928(v20, v19);
    }

    v22 = v16;
    v24 = v0[31];
    v23 = v0[32];
    v26 = v0[29];
    v25 = v0[30];
    v27 = v0[28];
    v28 = v0[24];

    v23(v27, v28);
    (*(v25 + 8))(v24, v26);

    v29 = v0[1];

    return v29(v33);
  }
}

uint64_t sub_10034E014()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Request to Diavlo server failed: %@", v3, 0xCu);
    sub_100013F2C(v4, &qword_1004AA050, &unk_1003F2F10);
  }

  v6 = v0[32];
  v14 = v0[31];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[28];
  v10 = v0[24];

  sub_100195940();
  swift_allocError();
  *v11 = 4;
  swift_willThrow();

  v6(v9, v10);
  (*(v8 + 8))(v14, v7);

  v12 = v0[1];

  return v12();
}

unint64_t sub_10034E250()
{
  result = qword_1004B12F8;
  if (!qword_1004B12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B12F8);
  }

  return result;
}