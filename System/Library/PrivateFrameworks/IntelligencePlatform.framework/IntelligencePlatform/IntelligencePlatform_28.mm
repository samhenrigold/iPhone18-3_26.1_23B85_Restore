void sub_1ABC9AFB8(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphTransportationActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x690), *(_Records_GDEntityClass_records + 0x698), *(_Records_GDEntityClass_records + 0x6A0), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x690), *(_Records_GDEntityClass_records + 0x698), *(_Records_GDEntityClass_records + 0x6A0), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABC9B250(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v151 = a7;
  v153 = a5;
  v155 = a4;
  v156 = a3;
  v17 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v148 - v18;
  v20 = type metadata accessor for CustomGraphDateRelationship(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = 279;
  v154 = v23;
  v152 = a6;
  v150 = a8;
  v158 = v12;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_141;
  }

  v24 = *a1;
  v25 = a1[1];
  v179 = a1;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v176);
  if (*&v176[0] == v24 && *(&v176[0] + 1) == v25)
  {

LABEL_67:
    v78 = v179;
    if (!*(v179 + 97))
    {
      v89 = v179[5];
      v88 = v179[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v90 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v90);
      v91 = *(a2 + 16);
      *(v91 + 16) = v90 + 1;
      v92 = v91 + 16 * v90;
      *(v92 + 32) = v89;
      *(v92 + 40) = v88;
      *(a2 + 16) = v91;
      swift_endAccess();
      return;
    }

LABEL_68:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v79 = sub_1ABF237F4();
    sub_1ABA7AA24(v79, qword_1ED871B40);
    sub_1ABAE2EC4();
    v80 = sub_1ABF237D4();
    v81 = sub_1ABF24664();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v173 = v83;
      *v82 = 136642819;
      v84 = v78;
LABEL_72:
      memcpy(v176, v84, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v85 = sub_1ABF23C94();
      v87 = &v173;
LABEL_98:
      v120 = sub_1ABADD6D8(v85, v86, v87);

      *(v82 + 4) = v120;
      _os_log_impl(&dword_1ABA78000, v80, v81, "Failed to parse %{sensitive}s.", v82, 0xCu);
      sub_1ABA84B54(v83);
      MEMORY[0x1AC5AB8B0](v83, -1, -1);
      MEMORY[0x1AC5AB8B0](v82, -1, -1);

      return;
    }

LABEL_99:

    v121 = v78;
LABEL_100:
    sub_1ABAB480C(v121, &qword_1EB4D1148, &qword_1ABF332D0);
    return;
  }

  v149 = v24;
  v27 = sub_1ABF25054();

  if (v27)
  {
    goto LABEL_67;
  }

  if (v157 < 0x92)
  {
    __break(1u);
LABEL_115:

    goto LABEL_116;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_142;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v176);
  if (*&v176[0] == v149 && *(&v176[0] + 1) == v25)
  {

LABEL_75:
    v78 = v179;
    *(v175 + 10) = *(v179 + 82);
    v93 = *(v179 + 7);
    v173 = *(v179 + 5);
    v174 = v93;
    v175[0] = *(v179 + 9);
    if (BYTE9(v175[1]) == 1)
    {
      v94 = *(v179 + 7);
      v177[0] = *(v179 + 5);
      v177[1] = v94;
      *v178 = *(v179 + 9);
      *&v178[9] = *(v179 + 81);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v95 = v156;

      v96 = v95;
      v97 = v158;
      sub_1ABC8A96C(v177, v96, v19);
      if (v97)
      {
        v98 = &qword_1EB4D7E60;
        v99 = &unk_1ABF5E780;
        v100 = &v173;
      }

      else
      {
        if (sub_1ABA7E1E0(v19, 1, v20) != 1)
        {
          sub_1ABCF9424();
          v106 = v155;
          swift_beginAccess();
          sub_1ABB4DE30();
          v107 = *(*(v106 + 16) + 16);
          sub_1ABB4E234(v107);
          v108 = *(v106 + 16);
          *(v108 + 16) = v107 + 1;
          sub_1ABD0AD58();
          *(v106 + 16) = v108;
          swift_endAccess();
          sub_1ABAB480C(&v173, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v22, type metadata accessor for CustomGraphDateRelationship);
          return;
        }

        sub_1ABAB480C(&v173, &qword_1EB4D7E60, &unk_1ABF5E780);
        v98 = &qword_1EB4D5F20;
        v99 = &qword_1ABF4F358;
        v100 = v19;
      }

      sub_1ABAB480C(v100, v98, v99);
      return;
    }

    goto LABEL_94;
  }

  v29 = sub_1ABF25054();

  if (v29)
  {
    goto LABEL_75;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    swift_once();
LABEL_129:
    v145 = sub_1ABF237F4();
    sub_1ABA7AA24(v145, qword_1ED871B40);
    sub_1ABAE2EC4();
    v80 = sub_1ABF237D4();
    v81 = sub_1ABF24664();
    if (!os_log_type_enabled(v80, v81))
    {
LABEL_139:

      v121 = v179;
      goto LABEL_100;
    }

    goto LABEL_130;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v176);
  if (*&v176[0] == v149 && *(&v176[0] + 1) == v25)
  {

LABEL_82:
    v78 = v179;
    *(v175 + 10) = *(v179 + 82);
    v101 = *(v179 + 7);
    v173 = *(v179 + 5);
    v174 = v101;
    v175[0] = *(v179 + 9);
    if (BYTE9(v175[1]) == 1)
    {
      v102 = *(v179 + 7);
      v170 = *(v179 + 5);
      v171 = v102;
      v172[0] = *(v179 + 9);
      *(v172 + 9) = *(v179 + 81);
      MEMORY[0x1EEE9AC00](v32);
      *(&v148 - 2) = &v170;
      v176[0] = v173;
      v176[1] = v174;
      v176[2] = v175[0];
      *(&v176[2] + 10) = *(v175 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v176, &v162);
      v103 = v158;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v148 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v104, v105, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, *(&v162 + 1), v163, *(&v163 + 1), *&v164[0], *(&v164[0] + 1), *&v164[1], *(&v164[1] + 1), v165, *(&v165 + 1));
      if (!v103)
      {
        v109 = v166;
        if (v166)
        {
          v162 = v170;
          v163 = v171;
          v164[0] = v172[0];
          *(v164 + 9) = *(v172 + 9);
          sub_1ABD19208(&v162);
          v110 = v153;
          swift_beginAccess();
          sub_1ABB4DEA8();
          v111 = *(*(v110 + 16) + 16);
          sub_1ABB4E2AC(v111);
LABEL_88:
          v112 = *(v110 + 16);
          *(v112 + 16) = v111 + 1;
          v113 = v112 + (v111 << 6);
          *(v113 + 32) = v165;
          *(v113 + 48) = v109;
          *(v113 + 56) = v167;
          *(v113 + 72) = v168;
          *(v113 + 88) = v169;
          *(v110 + 16) = v112;
          swift_endAccess();
LABEL_103:
          sub_1ABAB480C(&v173, &qword_1EB4D7E60, &unk_1ABF5E780);
          return;
        }

LABEL_102:
        v162 = v170;
        v163 = v171;
        v164[0] = v172[0];
        *(v164 + 9) = *(v172 + 9);
        sub_1ABD19208(&v162);
        goto LABEL_103;
      }

LABEL_84:
      v162 = v170;
      v163 = v171;
      v164[0] = v172[0];
      *(v164 + 9) = *(v172 + 9);
      sub_1ABD19208(&v162);
      sub_1ABAB480C(&v173, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

LABEL_94:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v119 = sub_1ABF237F4();
    sub_1ABA7AA24(v119, qword_1ED871B40);
    sub_1ABAE2EC4();
    v80 = sub_1ABF237D4();
    v81 = sub_1ABF24664();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v162 = v83;
      *v82 = 136642819;
      memcpy(v176, v78, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v85 = sub_1ABF23C94();
      v87 = &v162;
      goto LABEL_98;
    }

    goto LABEL_99;
  }

  v31 = sub_1ABF25054();

  if (v31)
  {
    goto LABEL_82;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v176);
  if (*&v176[0] == v149 && *(&v176[0] + 1) == v25)
  {

LABEL_90:
    v78 = v179;
    *(v175 + 10) = *(v179 + 82);
    v114 = *(v179 + 7);
    v173 = *(v179 + 5);
    v174 = v114;
    v175[0] = *(v179 + 9);
    if (BYTE9(v175[1]) == 1)
    {
      v115 = *(v179 + 7);
      v170 = *(v179 + 5);
      v171 = v115;
      v172[0] = *(v179 + 9);
      *(v172 + 9) = *(v179 + 81);
      MEMORY[0x1EEE9AC00](v35);
      *(&v148 - 2) = &v170;
      v176[0] = v173;
      v176[1] = v174;
      v176[2] = v175[0];
      *(&v176[2] + 10) = *(v175 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v176, &v162);
      v116 = v158;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v148 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v117, v118, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, *(&v162 + 1), v163, *(&v163 + 1), *&v164[0], *(&v164[0] + 1), *&v164[1], *(&v164[1] + 1), v165, *(&v165 + 1));
      if (!v116)
      {
        v109 = v166;
        if (v166)
        {
          v162 = v170;
          v163 = v171;
          v164[0] = v172[0];
          *(v164 + 9) = *(v172 + 9);
          sub_1ABD19208(&v162);
          v110 = v152;
          swift_beginAccess();
          sub_1ABB4DD28();
          v111 = *(*(v110 + 16) + 16);
          sub_1ABB4E12C(v111);
          goto LABEL_88;
        }

        goto LABEL_102;
      }

      goto LABEL_84;
    }

    goto LABEL_94;
  }

  v34 = sub_1ABF25054();

  if (v34)
  {
    goto LABEL_90;
  }

  if (v157 < 0xA1)
  {
    __break(1u);
    goto LABEL_133;
  }

  v36 = v149;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_146;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v176);
  if (*&v176[0] == v36 && *(&v176[0] + 1) == v25)
  {

    goto LABEL_106;
  }

  v38 = sub_1ABF25054();

  if (v38)
  {
LABEL_106:
    v78 = v179;
    if (*(v179 + 97) != 2)
    {
      goto LABEL_68;
    }

    v122 = v158;
    sub_1ABC4A630(v179[5], v39, v40, v41, v42, v43, v44, v45);
    if (v122)
    {
      return;
    }

    v123 = v173;
    v124 = v151;
    goto LABEL_109;
  }

  if (v157 == 161)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v46 = v149;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v176);
  if (*&v176[0] == v46 && *(&v176[0] + 1) == v25)
  {

    goto LABEL_111;
  }

  v48 = sub_1ABF25054();

  if (v48)
  {
LABEL_111:
    v78 = v179;
    if (*(v179 + 97) != 2)
    {
      goto LABEL_68;
    }

    v127 = v158;
    sub_1ABC4A630(v179[5], v49, v50, v51, v52, v53, v54, v55);
    if (v127)
    {
      return;
    }

    v123 = v173;
    v124 = v150;
LABEL_109:
    swift_beginAccess();
    sub_1ABB4DD40();
    v125 = *(*(v124 + 16) + 16);
    sub_1ABB4E144(v125);
    v126 = *(v124 + 16);
    *(v126 + 16) = v125 + 1;
    *(v126 + 8 * v125 + 32) = v123;
    *(v124 + 16) = v126;
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_151;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), v176);
  if (*&v176[0] == v149 && *(&v176[0] + 1) == v25)
  {
    goto LABEL_115;
  }

  v57 = sub_1ABF25054();

  if ((v57 & 1) == 0)
  {
    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), v176);
      if (*&v176[0] == v149 && *(&v176[0] + 1) == v25)
      {
      }

      else
      {
        v66 = sub_1ABF25054();

        if ((v66 & 1) == 0)
        {
          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[1188], *(_Records_GDEntityPredicate_records + 298), *(_Records_GDEntityPredicate_records + 299), v176);
            if (*&v176[0] == v149 && *(&v176[0] + 1) == v25)
            {
            }

            else
            {
              v68 = sub_1ABF25054();

              if ((v68 & 1) == 0)
              {
                if (v157 >= 0xAB)
                {
                  if (_Records_GDEntityPredicate_records)
                  {
                    sub_1ABA91D48(_Records_GDEntityPredicate_records[2040], *(_Records_GDEntityPredicate_records + 511), *(_Records_GDEntityPredicate_records + 512), v176);
                    if (*&v176[0] != v149 || *(&v176[0] + 1) != v25)
                    {
                      v70 = sub_1ABF25054();

                      if ((v70 & 1) == 0)
                      {
                        return;
                      }

LABEL_134:
                      if (*(v179 + 97) == 2)
                      {
                        v146 = v158;
                        sub_1ABC4CCC4(v179[5], v71, v72, v73, v74, v75, v76, v77, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, *(&v162 + 1), v163, *(&v163 + 1), *&v164[0], *(&v164[0] + 1), *&v164[1], *(&v164[1] + 1), v165, *(&v165 + 1), v166, v167, *(&v167 + 1), v168);
                        if (!v146)
                        {
                          v129 = a12;
                          v130 = v173;
                          swift_beginAccess();
                          sub_1ABB4DF68();
                          v131 = *(*(a12 + 16) + 16);
                          sub_1ABB4E36C(v131);
                          goto LABEL_119;
                        }

                        return;
                      }

                      if (qword_1ED871B38 == -1)
                      {
LABEL_138:
                        v147 = sub_1ABF237F4();
                        sub_1ABA7AA24(v147, qword_1ED871B40);
                        sub_1ABAE2EC4();
                        v80 = sub_1ABF237D4();
                        v81 = sub_1ABF24664();
                        if (!os_log_type_enabled(v80, v81))
                        {
                          goto LABEL_139;
                        }

LABEL_130:
                        v82 = swift_slowAlloc();
                        v83 = swift_slowAlloc();
                        *&v173 = v83;
                        *v82 = 136642819;
                        v84 = v179;
                        goto LABEL_72;
                      }

LABEL_149:
                      swift_once();
                      goto LABEL_138;
                    }

LABEL_133:

                    goto LABEL_134;
                  }

LABEL_153:
                  __break(1u);
                  return;
                }

                goto LABEL_147;
              }
            }

            if (*(v179 + 97) || (v141 = v179[5], v142 = v179[6], , v143 = sub_1ABB24D04(v141, v142), (v144 & 1) != 0))
            {
LABEL_128:
              if (qword_1ED871B38 == -1)
              {
                goto LABEL_129;
              }

              goto LABEL_144;
            }

            v137 = v143;
            a10 = a11;
LABEL_124:
            swift_beginAccess();
            sub_1ABB4DCB0();
            v139 = *(*(a10 + 16) + 16);
            sub_1ABB4E0CC(v139);
            v140 = *(a10 + 16);
            *(v140 + 16) = v139 + 1;
            *(v140 + 8 * v139 + 32) = v137;
            *(a10 + 16) = v140;
            return;
          }

LABEL_152:
          __break(1u);
          goto LABEL_153;
        }
      }

      if (*(v179 + 97))
      {
        goto LABEL_128;
      }

      v133 = v179[5];
      v134 = v179[6];

      v135 = sub_1ABB24D04(v133, v134);
      if (v136)
      {
        goto LABEL_128;
      }

      v137 = v135;
      goto LABEL_124;
    }

LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

LABEL_116:
  v78 = v179;
  if (*(v179 + 97) != 2)
  {
    goto LABEL_68;
  }

  v128 = v158;
  sub_1ABC4CBC0(v179[5], v58, v59, v60, v61, v62, v63, v64, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, *(&v162 + 1), v163, *(&v163 + 1), *&v164[0], *(&v164[0] + 1), *&v164[1], *(&v164[1] + 1), v165, *(&v165 + 1), v166, v167, *(&v167 + 1), v168);
  if (!v128)
  {
    v129 = a9;
    v130 = v173;
    swift_beginAccess();
    sub_1ABB4DE48();
    v131 = *(*(a9 + 16) + 16);
    sub_1ABB4E24C(v131);
LABEL_119:
    v132 = *(v129 + 16);
    *(v132 + 16) = v131 + 1;
    *(v132 + 8 * v131 + 32) = v130;
    *(v129 + 16) = v132;
  }
}

void sub_1ABC9C4D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14)
{
  v303 = a8;
  v306 = a7;
  v308 = a6;
  v311 = a5;
  v319 = a4;
  v328 = a3;
  v338 = a2;
  v15 = a13;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v329 = &v293 - v17;
  v323 = type metadata accessor for CustomGraphDateRelationship(0);
  v317 = *(v323 - 8);
  MEMORY[0x1EEE9AC00](v323);
  v318 = &v293 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a14 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v331 = sub_1ABF247E4();
  v330 = *(v331 - 8);
  MEMORY[0x1EEE9AC00](v331);
  v316 = &v293 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v324 = &v293 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v333 = &v293 - v25;
  v336 = AssociatedTypeWitness;
  v332 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v26);
  v313 = &v293 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v314 = &v293 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v321 = &v293 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v322 = &v293 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v326 = &v293 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v327 = &v293 - v37;
  v339 = *(a13 - 1);
  MEMORY[0x1EEE9AC00](v38);
  v297 = &v293 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v299 = &v293 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v301 = &v293 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v302 = &v293 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v305 = &v293 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v309 = &v293 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v312 = &v293 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v320 = &v293 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v325 = &v293 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v293 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v293 - v60;
  v342 = swift_checkMetadataState();
  v340 = *(v342 - 8);
  MEMORY[0x1EEE9AC00](v342);
  v296 = &v293 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v298 = &v293 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v300 = &v293 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v304 = &v293 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v307 = &v293 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v310 = &v293 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v315 = &v293 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v293 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v293 - v79;
  v82 = MEMORY[0x1EEE9AC00](v81);
  v84 = &v293 - v83;
  v85 = *(v19 + 24);
  v341 = v19;
  v85(v350, a13, v19, v82);
  v337 = 279;
  v351 = a1;
  v334 = v58;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_172;
  }

  v86 = v350[0];
  a1 = v350[1];
  v19 = v350[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v345);
  if (v345 == v86 && *(&v345 + 1) == a1)
  {

    goto LABEL_9;
  }

  v295 = a13;
  v294 = v86;
  v88 = sub_1ABF25054();

  if (v88)
  {
    v15 = v295;
LABEL_9:

    (*(v341 + 32))(v15, v341);
    v89 = v342;
    v90 = swift_getAssociatedConformanceWitness();
    v91 = (*(v90 + 24))(v89, v90);
    v92 = v15;
    v94 = v93;
    (*(v340 + 8))(v84, v89);
    if (v94)
    {
      v95 = v338;
      swift_beginAccess();
      sub_1ABB4DC20();
      v96 = *(*(v95 + 16) + 16);
      sub_1ABB4E024(v96);
      v97 = *(v95 + 16);
      *(v97 + 16) = v96 + 1;
      v98 = v97 + 16 * v96;
      *(v98 + 32) = v91;
      *(v98 + 40) = v94;
      *(v95 + 16) = v97;
      swift_endAccess();
      return;
    }

    v99 = v92;
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v100 = sub_1ABF237F4();
    sub_1ABA7AA24(v100, qword_1ED871B40);
    v101 = v339;
    v102 = *(v339 + 16);
    v102(v61, v351, v92);
    v103 = sub_1ABF237D4();
    v104 = sub_1ABF24664();
    if (!os_log_type_enabled(v103, v104))
    {

      (*(v101 + 8))(v61, v99);
      return;
    }

    v105 = v99;
    v106 = swift_slowAlloc();
    v351 = swift_slowAlloc();
    *&v345 = v351;
    *v106 = 136642819;
    LODWORD(v342) = v104;
    v102(v334, v61, v105);
    v107 = sub_1ABF23C94();
    v109 = v108;
    (*(v101 + 8))(v61, v105);
    v110 = sub_1ABADD6D8(v107, v109, &v345);
    goto LABEL_16;
  }

  if (v337 < 0x92)
  {
    __break(1u);
    goto LABEL_116;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v345);
  v112 = v345 == v294 && *(&v345 + 1) == a1;
  v113 = v343;
  v19 = v339;
  if (!v112)
  {
    v114 = sub_1ABF25054();

    if (v114)
    {
      goto LABEL_27;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
      goto LABEL_178;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v345);
    if (v345 == v294 && *(&v345 + 1) == a1)
    {

LABEL_45:
      v139 = v295;

      v140 = v351;
      (*(v341 + 32))(v139);
      v141 = v324;
      v142 = v342;
      (*(AssociatedConformanceWitness + 40))(v342, AssociatedConformanceWitness);
      (*(v340 + 8))(v77, v142);
      v143 = v336;
      if (sub_1ABA7E1E0(v141, 1, v336) != 1)
      {
        v153 = v141;
        v154 = v332;
        v155 = v322;
        (*(v332 + 32))(v322, v153, v143);
        v156 = v321;
        (*(v154 + 16))(v321, v155, v143);
        v157 = type metadata accessor for CustomGraphPerson(0);
        v158 = sub_1ABD09EBC(&unk_1EB4D7E80);
        v159 = swift_getAssociatedConformanceWitness();
        CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v345, v156, v157, v143, v158, v159);
        if (!v113)
        {
          v160 = v346;
          if (v346)
          {
            v161 = v311;
            swift_beginAccess();
            sub_1ABB4DEA8();
            v162 = *(*(v161 + 16) + 16);
            sub_1ABB4E2AC(v162);
            v163 = *(v161 + 16);
            *(v163 + 16) = v162 + 1;
            v164 = v163 + (v162 << 6);
            *(v164 + 32) = v345;
            *(v164 + 48) = v160;
            *(v164 + 56) = v347;
            *(v164 + 72) = v348;
            *(v164 + 88) = v349;
            *(v161 + 16) = v163;
            swift_endAccess();
          }
        }

        (*(v154 + 8))(v155, v143);
        return;
      }

      (*(v330 + 8))(v141, v331);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v144 = sub_1ABF237F4();
      sub_1ABA7AA24(v144, qword_1ED871B40);
      v145 = *(v19 + 16);
      v146 = &v348;
LABEL_49:
      v147 = *(v146 - 32);
      v145(v147, v140, v139);
      v103 = sub_1ABF237D4();
      v148 = sub_1ABF24664();
      if (!os_log_type_enabled(v103, v148))
      {

        (*(v19 + 8))(v147, v139);
        return;
      }

      v149 = swift_slowAlloc();
      a1 = v139;
LABEL_51:
      v106 = v149;
      v351 = swift_slowAlloc();
      *&v345 = v351;
      *v106 = 136642819;
      LODWORD(v342) = v148;
      v145(v334, v147, a1);
      v150 = sub_1ABF23C94();
      v152 = v151;
      (*(v19 + 8))(v147, a1);
      v110 = sub_1ABADD6D8(v150, v152, &v345);
LABEL_16:

      *(v106 + 4) = v110;
      _os_log_impl(&dword_1ABA78000, v103, v342, "Failed to parse %{sensitive}s.", v106, 0xCu);
      v111 = v351;
      goto LABEL_32;
    }

    v138 = sub_1ABF25054();

    if (v138)
    {
      goto LABEL_45;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
      goto LABEL_180;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v345);
    if (v345 == v294 && *(&v345 + 1) == a1)
    {

LABEL_68:
      v139 = v295;

      v171 = v315;
      v140 = v351;
      (*(v341 + 32))(v139);
      v172 = v316;
      v173 = v342;
      (*(AssociatedConformanceWitness + 40))(v342, AssociatedConformanceWitness);
      v174 = v172;
      (*(v340 + 8))(v171, v173);
      v175 = v172;
      v176 = v336;
      if (sub_1ABA7E1E0(v175, 1, v336) != 1)
      {
        v178 = v332;
        v179 = v314;
        (*(v332 + 32))(v314, v174, v176);
        v180 = v313;
        (*(v178 + 16))(v313, v179, v176);
        v181 = sub_1ABD19740();
        v182 = swift_getAssociatedConformanceWitness();
        CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v345, v180, &type metadata for CustomGraphLocation, v176, v181, v182);
        if (!v113)
        {
          v183 = v346;
          if (v346)
          {
            v184 = v308;
            swift_beginAccess();
            sub_1ABB4DD28();
            v185 = *(*(v184 + 16) + 16);
            sub_1ABB4E12C(v185);
            v186 = *(v184 + 16);
            *(v186 + 16) = v185 + 1;
            v187 = v186 + (v185 << 6);
            *(v187 + 32) = v345;
            *(v187 + 48) = v183;
            *(v187 + 56) = v347;
            *(v187 + 72) = v348;
            *(v187 + 88) = v349;
            *(v184 + 16) = v186;
            swift_endAccess();
          }
        }

        (*(v178 + 8))(v179, v176);
        return;
      }

      (*(v330 + 8))(v174, v331);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v177 = sub_1ABF237F4();
      sub_1ABA7AA24(v177, qword_1ED871B40);
      v145 = *(v19 + 16);
      v146 = &v344;
      goto LABEL_49;
    }

    v170 = sub_1ABF25054();

    if (v170)
    {
      goto LABEL_68;
    }

    if (v337 < 0xA1)
    {
      __break(1u);
      goto LABEL_164;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
      goto LABEL_182;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v345);
    v80 = *(&v345 + 1);
    if (v345 == v294 && *(&v345 + 1) == a1)
    {

LABEL_85:
      a1 = v295;

      v190 = v310;
      v80 = v351;
      (*(v341 + 32))(a1, v341);
      v191 = v342;
      v192 = swift_getAssociatedConformanceWitness();
      (*(v192 + 32))(&v345, v191, v192);
      (*(v340 + 8))(v190, v191);
      if (BYTE8(v345))
      {
        if (qword_1ED871B38 == -1)
        {
LABEL_87:
          v200 = sub_1ABF237F4();
          sub_1ABA7AA24(v200, qword_1ED871B40);
          v145 = *(v19 + 16);
          v201 = &v341;
LABEL_88:
          v147 = *(v201 - 32);
          v145(v147, v80, a1);
          v103 = sub_1ABF237D4();
          v148 = sub_1ABF24664();
          if (!os_log_type_enabled(v103, v148))
          {

            (*(v19 + 8))(v147, a1);
            return;
          }

          v149 = swift_slowAlloc();
          goto LABEL_51;
        }

LABEL_172:
        swift_once();
        goto LABEL_87;
      }

      sub_1ABC4A630(v345, v193, v194, v195, v196, v197, v198, v199);
      if (v113)
      {
        return;
      }

      v202 = v344;
      p_AssociatedConformanceWitness = &v338;
LABEL_92:
      v204 = *(p_AssociatedConformanceWitness - 32);
      swift_beginAccess();
      sub_1ABB4DD40();
      v205 = *(*(v204 + 16) + 16);
      sub_1ABB4E144(v205);
      v206 = *(v204 + 16);
      *(v206 + 16) = v205 + 1;
      *(v206 + 8 * v205 + 32) = v202;
      *(v204 + 16) = v206;
      return;
    }

    v189 = sub_1ABF25054();

    if (v189)
    {
      goto LABEL_85;
    }

    if (v337 != 161)
    {
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_184;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v345);
      if (v345 == v294 && *(&v345 + 1) == a1)
      {

        goto LABEL_103;
      }

      v208 = sub_1ABF25054();

      if (v208)
      {
LABEL_103:
        a1 = v295;

        v209 = v307;
        v80 = v351;
        (*(v341 + 32))(a1, v341);
        v210 = v342;
        v211 = swift_getAssociatedConformanceWitness();
        (*(v211 + 32))(&v345, v210, v211);
        (*(v340 + 8))(v209, v210);
        if ((BYTE8(v345) & 1) == 0)
        {
          sub_1ABC4A630(v345, v212, v213, v214, v215, v216, v217, v218);
          if (v113)
          {
            return;
          }

          v202 = v344;
          p_AssociatedConformanceWitness = &AssociatedConformanceWitness;
          goto LABEL_92;
        }

        if (qword_1ED871B38 == -1)
        {
LABEL_105:
          v219 = sub_1ABF237F4();
          sub_1ABA7AA24(v219, qword_1ED871B40);
          v145 = *(v19 + 16);
          v201 = &v337;
          goto LABEL_88;
        }

LABEL_176:
        swift_once();
        goto LABEL_105;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_187;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), &v345);
      if (v345 != v294 || *(&v345 + 1) != a1)
      {
        v221 = sub_1ABF25054();

        if (v221)
        {
          goto LABEL_117;
        }

        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), &v345);
          if (v345 == v294 && *(&v345 + 1) == a1)
          {

            goto LABEL_133;
          }

          v251 = sub_1ABF25054();

          if (v251)
          {
LABEL_133:

            v252 = v300;
            (*(v341 + 32))(v295, v341);
            v253 = v342;
            swift_getAssociatedConformanceWitness();
            v254 = BaseEntityFactObjectProtocol.asDouble.getter();
            v256 = v255;
            (*(v340 + 8))(v252, v253);
            if (v256)
            {
              if (qword_1ED871B38 == -1)
              {
LABEL_135:
                v257 = sub_1ABF237F4();
                sub_1ABA7AA24(v257, qword_1ED871B40);
                v258 = *(v339 + 16);
                v258(v301, v351, v295);
                v236 = sub_1ABF237D4();
                v259 = sub_1ABF24664();
                if (!os_log_type_enabled(v236, v259))
                {

                  (*(v339 + 8))(v301, v295);
                  return;
                }

                v238 = swift_slowAlloc();
                v260 = swift_slowAlloc();
                *&v345 = v260;
                *v238 = 136642819;
                v261 = v334;
                v262 = &v333;
LABEL_137:
                v263 = *(v262 - 32);
                v264 = v295;
                v258(v261, v263, v295);
                v265 = sub_1ABF23C94();
                v267 = v266;
                (*(v339 + 8))(v263, v264);
                v268 = sub_1ABADD6D8(v265, v267, &v345);

                *(v238 + 4) = v268;
                _os_log_impl(&dword_1ABA78000, v236, v259, "Failed to parse %{sensitive}s.", v238, 0xCu);
                sub_1ABA84B54(v260);
                v244 = v260;
LABEL_138:
                MEMORY[0x1AC5AB8B0](v244, -1, -1);
                MEMORY[0x1AC5AB8B0](v238, -1, -1);

                return;
              }

LABEL_180:
              swift_once();
              goto LABEL_135;
            }

LABEL_139:
            swift_beginAccess();
            sub_1ABB4DCB0();
            v270 = *(*(a10 + 16) + 16);
            sub_1ABB4E0CC(v270);
            v271 = *(a10 + 16);
            *(v271 + 16) = v270 + 1;
            *(v271 + 8 * v270 + 32) = v254;
            *(a10 + 16) = v271;
            return;
          }

          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[1188], *(_Records_GDEntityPredicate_records + 298), *(_Records_GDEntityPredicate_records + 299), &v345);
            if (v345 == v294 && *(&v345 + 1) == a1)
            {

              goto LABEL_149;
            }

            v273 = sub_1ABF25054();

            if (v273)
            {
LABEL_149:

              v274 = v298;
              (*(v341 + 32))(v295, v341);
              v275 = v342;
              swift_getAssociatedConformanceWitness();
              v254 = BaseEntityFactObjectProtocol.asDouble.getter();
              v277 = v276;
              (*(v340 + 8))(v274, v275);
              if ((v277 & 1) == 0)
              {
                a10 = a11;
                goto LABEL_139;
              }

              if (qword_1ED871B38 == -1)
              {
LABEL_151:
                v278 = sub_1ABF237F4();
                sub_1ABA7AA24(v278, qword_1ED871B40);
                v258 = *(v339 + 16);
                v258(v299, v351, v295);
                v236 = sub_1ABF237D4();
                v259 = sub_1ABF24664();
                if (!os_log_type_enabled(v236, v259))
                {

                  (*(v339 + 8))(v299, v295);
                  return;
                }

                v238 = swift_slowAlloc();
                v260 = swift_slowAlloc();
                *&v345 = v260;
                *v238 = 136642819;
                v261 = v334;
                v262 = &v331;
                goto LABEL_137;
              }

LABEL_182:
              swift_once();
              goto LABEL_151;
            }

            if (v337 >= 0xAB)
            {
              if (_Records_GDEntityPredicate_records)
              {
                sub_1ABA91D48(_Records_GDEntityPredicate_records[2040], *(_Records_GDEntityPredicate_records + 511), *(_Records_GDEntityPredicate_records + 512), &v345);
                if (v345 != v294 || *(&v345 + 1) != a1)
                {
                  v280 = sub_1ABF25054();

                  if ((v280 & 1) == 0)
                  {
                    return;
                  }

LABEL_165:
                  v281 = v296;
                  (*(v341 + 32))(v295, v341);
                  v282 = v342;
                  v283 = swift_getAssociatedConformanceWitness();
                  (*(v283 + 32))(&v345, v282, v283);
                  (*(v340 + 8))(v281, v282);
                  if ((BYTE8(v345) & 1) == 0)
                  {
                    v292 = v343;
                    sub_1ABC4CCC4(v345, v284, v285, v286, v287, v288, v289, v290, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320);
                    if (v292)
                    {
                      return;
                    }

                    v246 = a12;
                    v247 = v344;
                    swift_beginAccess();
                    sub_1ABB4DF68();
                    v248 = *(*(a12 + 16) + 16);
                    sub_1ABB4E36C(v248);
                    goto LABEL_123;
                  }

                  if (qword_1ED871B38 == -1)
                  {
                    goto LABEL_167;
                  }

                  goto LABEL_185;
                }

LABEL_164:

                goto LABEL_165;
              }

LABEL_189:
              __break(1u);
              return;
            }

            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            swift_once();
LABEL_167:
            v291 = sub_1ABF237F4();
            sub_1ABA7AA24(v291, qword_1ED871B40);
            v258 = *(v339 + 16);
            v258(v297, v351, v295);
            v236 = sub_1ABF237D4();
            v259 = sub_1ABF24664();
            if (!os_log_type_enabled(v236, v259))
            {

              (*(v339 + 8))(v297, v295);
              return;
            }

            v238 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            *&v345 = v260;
            *v238 = 136642819;
            v261 = v334;
            v262 = &v329;
            goto LABEL_137;
          }

LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

LABEL_116:

LABEL_117:
      a1 = v295;

      v222 = v304;
      v80 = v351;
      (*(v341 + 32))(a1, v341);
      v223 = v342;
      v224 = swift_getAssociatedConformanceWitness();
      (*(v224 + 32))(&v345, v223, v224);
      (*(v340 + 8))(v222, v223);
      if (BYTE8(v345))
      {
        if (qword_1ED871B38 == -1)
        {
LABEL_119:
          v232 = sub_1ABF237F4();
          sub_1ABA7AA24(v232, qword_1ED871B40);
          v233 = v339;
          v234 = *(v339 + 16);
          v235 = v302;
          v234(v302, v80, a1);
          v236 = sub_1ABF237D4();
          v237 = sub_1ABF24664();
          if (!os_log_type_enabled(v236, v237))
          {

            (*(v233 + 8))(v235, a1);
            return;
          }

          v238 = swift_slowAlloc();
          v351 = swift_slowAlloc();
          *&v345 = v351;
          *v238 = 136642819;
          v234(v334, v235, a1);
          v239 = sub_1ABF23C94();
          v241 = v240;
          (*(v233 + 8))(v235, a1);
          v242 = sub_1ABADD6D8(v239, v241, &v345);

          *(v238 + 4) = v242;
          _os_log_impl(&dword_1ABA78000, v236, v237, "Failed to parse %{sensitive}s.", v238, 0xCu);
          v243 = v351;
          sub_1ABA84B54(v351);
          v244 = v243;
          goto LABEL_138;
        }

LABEL_178:
        swift_once();
        goto LABEL_119;
      }

      v245 = v343;
      sub_1ABC4CBC0(v345, v225, v226, v227, v228, v229, v230, v231, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320);
      if (v245)
      {
        return;
      }

      v246 = a9;
      v247 = v344;
      swift_beginAccess();
      sub_1ABB4DE48();
      v248 = *(*(a9 + 16) + 16);
      sub_1ABB4E24C(v248);
LABEL_123:
      v249 = *(v246 + 16);
      *(v249 + 16) = v248 + 1;
      *(v249 + 8 * v248 + 32) = v247;
      *(v246 + 16) = v249;
      return;
    }

    __break(1u);
    goto LABEL_175;
  }

LABEL_27:
  v115 = v295;

  v116 = v351;
  (*(v341 + 32))(v115);
  v117 = v333;
  v118 = v342;
  (*(AssociatedConformanceWitness + 40))(v342, AssociatedConformanceWitness);
  v119 = v80;
  v120 = v117;
  (*(v340 + 8))(v119, v118);
  v121 = v117;
  v122 = v336;
  if (sub_1ABA7E1E0(v121, 1, v336) == 1)
  {
    (*(v330 + 8))(v120, v331);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v123 = sub_1ABF237F4();
    sub_1ABA7AA24(v123, qword_1ED871B40);
    v124 = *(v19 + 16);
    v125 = v325;
    v124(v325, v116, v115);
    v103 = sub_1ABF237D4();
    v126 = sub_1ABF24664();
    if (!os_log_type_enabled(v103, v126))
    {

      (*(v19 + 8))(v125, v115);
      return;
    }

    v127 = swift_slowAlloc();
    LODWORD(v351) = v126;
    v128 = v125;
    v129 = v115;
    v106 = v127;
    v342 = swift_slowAlloc();
    *&v345 = v342;
    *v106 = 136642819;
    v124(v334, v128, v129);
    v130 = sub_1ABF23C94();
    v132 = v131;
    (*(v19 + 8))(v128, v129);
    v133 = sub_1ABADD6D8(v130, v132, &v345);

    *(v106 + 4) = v133;
    _os_log_impl(&dword_1ABA78000, v103, v351, "Failed to parse %{sensitive}s.", v106, 0xCu);
    v111 = v342;
LABEL_32:
    sub_1ABA84B54(v111);
    MEMORY[0x1AC5AB8B0](v111, -1, -1);
    MEMORY[0x1AC5AB8B0](v106, -1, -1);

    return;
  }

  v134 = v332;
  v135 = v327;
  (*(v332 + 32))(v327, v120, v122);
  (*(v134 + 16))(v326, v135, v122);
  swift_getAssociatedConformanceWitness();

  v136 = v329;
  CustomGraphDateRelationship.init<A>(from:initializationResources:)();
  if (!v113)
  {
    if (sub_1ABA7E1E0(v136, 1, v323) == 1)
    {
      (*(v134 + 8))(v135, v122);
      sub_1ABAB480C(v136, &qword_1EB4D5F20, &qword_1ABF4F358);
      return;
    }

    v165 = v318;
    sub_1ABCF9424();
    v166 = v319;
    swift_beginAccess();
    sub_1ABB4DE30();
    v167 = *(*(v166 + 16) + 16);
    sub_1ABB4E234(v167);
    v168 = *(v166 + 16);
    *(v168 + 16) = v167 + 1;
    sub_1ABD0AD58();
    *(v166 + 16) = v168;
    swift_endAccess();
    sub_1ABD0ADB0(v165, type metadata accessor for CustomGraphDateRelationship);
  }

  (*(v134 + 8))(v135, v122);
}

void CustomGraphTransportationActivityEvent.init(typedId:all_name:all_date:all_attendees:all_locations:all_startLocation:all_endLocation:all_activityTypeObject:all_activityType:all_confidence:all_uncertainty:all_modeOfTransportation:all_transportationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1ABA7E2A8();
  v27 = v26;
  sub_1ABA88F38();
  v29 = v28;
  sub_1ABD1B3D0();
  v30 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v30);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA9F7AC();
  sub_1ABD1BD64();
  v32 = sub_1ABB2B834(v29);
  v25[1] = v29;
  v25[2] = v32;
  v25[3] = v33;
  v34 = sub_1ABA8B2DC();
  v35 = type metadata accessor for CustomGraphTransportationActivityEvent(v34);
  sub_1ABAB1F84(v35);
  sub_1ABD1BA68();
  sub_1ABA897F0();
  sub_1ABD1AE28();
  sub_1ABAB5FE0();
  sub_1ABA89D74();
  v38 = *(v27 + 16);
  if (v38)
  {
    v39 = *(v27 + 32);
  }

  else
  {
    v39 = 0;
  }

  v40 = v25 + v35[11];
  *v40 = v27;
  *(v40 + 1) = v39;
  v40[16] = v38 == 0;
  if (*(v36 + 16))
  {
    v41 = *(v36 + 32);
  }

  else
  {
    v41 = 25;
  }

  v42 = v25 + v35[12];
  *v42 = v36;
  v42[8] = v41;
  v43 = *(v37 + 16);
  if (v43)
  {
    v44 = *(v37 + 32);
  }

  else
  {
    v44 = 0;
  }

  v45 = v25 + v35[13];
  *v45 = v37;
  *(v45 + 1) = v44;
  v45[16] = v43 == 0;
  v46 = *(a23 + 16);
  if (v46)
  {
    v47 = *(a23 + 32);
  }

  else
  {
    v47 = 0;
  }

  v48 = v25 + v35[14];
  *v48 = a23;
  *(v48 + 1) = v47;
  v48[16] = v46 == 0;
  v49 = *(a24 + 16);
  if (v49)
  {
    v50 = *(a24 + 32);
  }

  else
  {
    v50 = 0;
  }

  v51 = v25 + v35[15];
  *v51 = a24;
  *(v51 + 1) = v50;
  v51[16] = v49 == 0;
  sub_1ABA89678(a25);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC9EDC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6565646E65747461 && a2 == 0xE900000000000073;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x636F4C7472617473 && a2 == 0xED00006E6F697461;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001ABF8D5E0 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6961747265636E75 && a2 == 0xEB0000000079746ELL;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x80000001ABF8D600 == a2;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000012 && 0x80000001ABF8D620 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1ABF25054();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABC9F1D8(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6565646E65747461;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x636F4C7472617473;
      break;
    case 6:
      result = 0x7461636F4C646E65;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7974697669746361;
      break;
    case 9:
      result = 0x6E656469666E6F63;
      break;
    case 10:
      result = 0x6961747265636E75;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC9F35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC9EDC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC9F384(uint64_t a1)
{
  v2 = sub_1ABD0AFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC9F3C0(uint64_t a1)
{
  v2 = sub_1ABD0AFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphTransportationActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D67D8, &qword_1ABF50C08);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0AFBC();
  sub_1ABA8D27C(&type metadata for CustomGraphTransportationActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphTransportationActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348260);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);

    sub_1ABA98014(348266);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA1328();

    sub_1ABAA2300(348272);
    sub_1ABAB6330();

    v34 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v34, v35, v36);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1B69C();

    sub_1ABAD219C(&qword_1EB4D67F8, &qword_1ABF50C18);
    sub_1ABD0B010();
    v37 = sub_1ABAA2D10();
    sub_1ABAA6564(v37, v38, v39);
    sub_1ABD1AFA0();

    sub_1ABA98014(348278);
    sub_1ABD1B690();

    sub_1ABAD219C(&qword_1EB4D6820, &qword_1ABF50C28);
    sub_1ABD0B0FC();
    v40 = sub_1ABAA2D10();
    sub_1ABAA6564(v40, v41, v42);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphTransportationActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8D4BC();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA9F7AC();
  v7 = sub_1ABAD219C(&qword_1EB4D6840, &unk_1ABF50C30);
  sub_1ABA960BC(v7);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E5C0();
  v35 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C21C();
  v36 = v10;
  v11 = v1[3];
  sub_1ABA8A074(v1);
  sub_1ABD0AFBC();
  sub_1ABA88E70();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA8B13C();
    sub_1ABAA08F0();
    sub_1ABA84B54(v1);
    if (v5)
    {
      sub_1ABAB480C(v36 + v35[6], &qword_1EB4D5F30, &unk_1ABF50B00);
      if (v4)
      {
        goto LABEL_13;
      }
    }

    else if (v4)
    {
LABEL_13:

      if ((v11 & 1) == 0)
      {
LABEL_14:
        if (v32)
        {

          if ((v33 & 1) == 0)
          {
LABEL_16:
            if (v0)
            {
LABEL_17:

              if ((v34 & 1) == 0)
              {
                goto LABEL_18;
              }

              goto LABEL_10;
            }

LABEL_9:
            if (!v34)
            {
              goto LABEL_18;
            }

LABEL_10:

            goto LABEL_18;
          }
        }

        else if (!v33)
        {
          goto LABEL_16;
        }

        if (v0)
        {
          goto LABEL_17;
        }

        goto LABEL_9;
      }

LABEL_6:

      goto LABEL_14;
    }

    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v12 = sub_1ABA954F0();
  sub_1ABAD219C(v12, v13);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v14);
  v15 = sub_1ABD1AC44();
  sub_1ABD1BBF8(v15, v16);
  *v36 = v37;
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA8B6EC();
  sub_1ABD0A2D4();
  sub_1ABA8B4F0();
  sub_1ABF24E64();
  *(v36 + 8) = v37;
  *(v36 + 16) = v38;
  LOBYTE(v37) = 2;
  sub_1ABA7F460();
  sub_1ABD0A358(v17);
  sub_1ABA9EEBC();
  sub_1ABD1B110();
  sub_1ABF24E64();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABD1AF94();
  sub_1ABD0A408();
  sub_1ABA8B4F0();
  sub_1ABD1B294(v18, v19);
  *(v36 + v35[7]) = v37;
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA8B908();
  sub_1ABD0A568();
  sub_1ABA8B4F0();
  sub_1ABD1B294(v20, v21);
  *(v36 + v35[8]) = v37;
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA9F1AC();
  sub_1ABA9EE14();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABA9EE14();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABD1AFC4();
  sub_1ABD0AB5C();
  sub_1ABA8B4F0();
  sub_1ABD1B294(v22, v23);
  sub_1ABD1AF54();
  sub_1ABD1AEEC(v24);
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA8B4F0();
  sub_1ABD1B294(v25, v26);
  sub_1ABD1B104(v37);
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA9F1AC();
  sub_1ABA9EE14();
  sub_1ABF24E64();
  sub_1ABD1AF54();
  sub_1ABD1AEEC(v27);
  sub_1ABA8AB1C(10);
  sub_1ABA9EE14();
  sub_1ABF24E64();
  sub_1ABD1AF54();
  sub_1ABD1AEEC(v28);
  sub_1ABAD219C(&qword_1EB4D67F8, &qword_1ABF50C18);
  sub_1ABD1B69C();
  sub_1ABD0B230();
  sub_1ABAA112C();
  sub_1ABF24E64();
  sub_1ABD1AF54();
  sub_1ABD1AEEC(v29);
  sub_1ABAD219C(&qword_1EB4D6820, &qword_1ABF50C28);
  sub_1ABD1B690();
  sub_1ABD0B31C();
  sub_1ABAA112C();
  sub_1ABF24E64();
  v30 = sub_1ABA89164();
  v31(v30);
  sub_1ABA89678(v37);
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_18:
  sub_1ABA7BC90();
}

void static CustomGraphWorkingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6A8), *(_Records_GDEntityClass_records + 0x6B0), *(_Records_GDEntityClass_records + 0x6B8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphWorkingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphWorkingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA0448(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphWorkingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6A8), *(_Records_GDEntityClass_records + 0x6B0), *(_Records_GDEntityClass_records + 0x6B8), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6A8), *(_Records_GDEntityClass_records + 0x6B0), *(_Records_GDEntityClass_records + 0x6B8), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA0714(uint64_t a1)
{
  v2 = sub_1ABD0B3A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA0750(uint64_t a1)
{
  v2 = sub_1ABD0B3A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphWorkingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6860, &dword_1ABF50C38);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B3A8();
  sub_1ABA8D27C(&type metadata for CustomGraphWorkingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphWorkingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348296);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348302);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphWorkingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6880, &dword_1ABF50C48);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphWorkingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B3A8();
  sub_1ABA9F458(&type metadata for CustomGraphWorkingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphMeetingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6C0), *(_Records_GDEntityClass_records + 0x6C8), *(_Records_GDEntityClass_records + 0x6D0), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphMeetingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphMeetingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA11F0()
{
  sub_1ABA7BCA8();
  v78 = v1;
  v77 = v2;
  v86 = v3;
  v82 = v4;
  sub_1ABD1BEE4(v5);
  v6 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v6);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v8);
  sub_1ABA7D028();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B184(v9);
  sub_1ABD1BD0C(v11);
  sub_1ABA7D028();
  v12 = swift_allocObject();
  sub_1ABD1B184(v12);
  sub_1ABD1BE50(v13);
  sub_1ABA7D028();
  v81 = swift_allocObject();
  sub_1ABD1B184(v81);
  sub_1ABD1BE44(v14);
  sub_1ABA7D028();
  v15 = swift_allocObject();
  sub_1ABD1B184(v15);
  sub_1ABD1BA5C(v16);
  sub_1ABA7D028();
  v17 = swift_allocObject();
  sub_1ABD1B184(v17);
  sub_1ABD1B61C(v18);
  sub_1ABA7D028();
  v19 = swift_allocObject();
  sub_1ABD1B184(v19);
  sub_1ABD1B6E8(v20);
  sub_1ABA7D028();
  v21 = swift_allocObject();
  sub_1ABD1B184(v21);
  sub_1ABD1BA8C(v22);
  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABD1B184(v23);
  sub_1ABD1B3C4(v24);
  v25 = swift_allocObject();
  v25[2] = v9;
  v25[3] = v86;
  sub_1ABD1B628();
  v26[4] = v12;
  v26[5] = v10;
  v26[6] = v15;
  v26[7] = v17;
  v26[8] = v19;
  v26[9] = v21;
  v26[10] = v23;

  v27 = sub_1ABD1BE68();
  v82(v27);
  if (v0)
  {

    sub_1ABA8D348();

    sub_1ABAA6420();
  }

  else
  {

    sub_1ABD1C01C();
    sub_1ABAAD280();
    v28 = *v25;
    v29 = *(*v25 + 16);
    if (v29)
    {

      v30 = MEMORY[0x1E69E7CC0];
      v31 = 32;
      v32 = v77;
      do
      {
        sub_1ABD1B924(v28 + v31);
        if (v85)
        {
          sub_1ABAA0AB0(v85);
          sub_1ABD1B9E4();
          v33 = v83;
          if (v83 != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_1ABA8A534();
              sub_1ABADADEC(v35, v36, v37, v38);
              v30 = v39;
            }

            sub_1ABD1B8B4();
            if (v34)
            {
              sub_1ABA9ECC4();
              sub_1ABADADEC(v40, v41, v42, v43);
              v30 = v44;
            }

            *(v30 + 16) = v32;
            *(v30 + v15 + 32) = v33;
            v32 = v77;
          }
        }

        v31 += 8;
        --v29;
      }

      while (v29);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
      v32 = v77;
    }

    v45 = sub_1ABD1BE5C();
    v32(v45);
    sub_1ABD1BF7C(v84);
    sub_1ABAAD280();
    v46 = sub_1ABD1C26C();
    v80[1] = v86;
    v80[2] = v46;
    v80[3] = v47;
    sub_1ABD1B058(v46, &v83);
    sub_1ABD1AF20();
    v51 = sub_1ABA9DFB8(v75, v48, v49, v50);
    v52 = v78(v51);
    sub_1ABD1C23C();

    sub_1ABC8B318(v53, v75, v80);
    sub_1ABAAD280();
    *(v80 + v52[7]) = *v86;
    sub_1ABAAD280();
    *(v80 + v52[8]) = *v86;
    sub_1ABAAD280();
    v54 = *v86;
    sub_1ABAAFB28();
    sub_1ABD1BCD8();
    *v56 = v54;
    v56[1] = v55;
    sub_1ABD1BE04(v57);
    sub_1ABD1B03C(v58, v59);
    sub_1ABD1BA44();
    sub_1ABD1BCD8();
    sub_1ABD1BCCC(v60);
    v62 = *v79;
    v63 = *(*v79 + 16);
    if (v63)
    {
      v64 = *(v62 + 32);
    }

    else
    {
      v64 = 0;
    }

    v65 = (v61 + v52[11]);
    *v65 = v62;
    v65[1] = v64;
    sub_1ABA889F8(v63 == 0);
    if (v66)
    {
      v67 = *(v30 + 32);
    }

    else
    {
      v67 = 25;
    }

    sub_1ABAA5C0C(v67);
    sub_1ABD1B058(v68, v69);
    v70 = *v76;
    v71 = *(*v76 + 16);
    if (v71)
    {
      v72 = *(v70 + 32);
    }

    else
    {
      v72 = 0;
    }

    v73 = v71 == 0;

    sub_1ABAA1460();

    sub_1ABAA2168();

    sub_1ABA9EA34();

    v74 = v80 + v52[13];
    *v74 = v70;
    *(v74 + 1) = v72;
    v74[16] = v73;
    sub_1ABA8D348();

    sub_1ABAA6420();
  }

  sub_1ABA7BC90();
}

void sub_1ABCA18C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t))
{
  sub_1ABA7BCA8();
  v25 = v24;
  v104 = v26;
  sub_1ABD1B6D0(v27);
  v28 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v28);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7FBE0();
  v113 = v30;
  sub_1ABA7D028();
  v107 = swift_allocObject();
  v31 = MEMORY[0x1E69E7CC0];
  *(v107 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v32 = swift_allocObject();
  sub_1ABA9DDF8(v32);
  sub_1ABD1BA5C(v33);
  sub_1ABA7D028();
  v34 = swift_allocObject();
  sub_1ABA9DDF8(v34);
  sub_1ABD1B61C(v35);
  sub_1ABA7D028();
  v106 = swift_allocObject();
  sub_1ABA9DDF8(v106);
  sub_1ABD1B6E8(v36);
  sub_1ABA7D028();
  swift_allocObject();
  sub_1ABA88AB0();
  *(v37 + 16) = v31;
  sub_1ABD1B6DC(v37 + 16);
  sub_1ABA7D028();
  v38 = swift_allocObject();
  sub_1ABA9DDF8(v38);
  sub_1ABD1B3DC(v39);
  sub_1ABA7D028();
  v40 = swift_allocObject();
  sub_1ABA9DDF8(v40);
  sub_1ABD1BA8C(v41);
  sub_1ABA7D028();
  v42 = swift_allocObject();
  sub_1ABA9DDF8(v42);
  sub_1ABD1B3C4(v43);
  sub_1ABA88928();
  swift_allocObject();
  sub_1ABAA3CF0();
  v44[2] = v46;
  v44[3] = v45;
  v44[4] = v107;
  v44[5] = v25;
  v44[6] = v32;
  v44[7] = v34;
  v44[8] = v106;
  v44[9] = v23;
  v44[10] = v38;
  v44[11] = v40;
  v44[12] = v42;

  v47 = sub_1ABD1BE68();
  v104(v47);
  if (v22)
  {

    sub_1ABAA1668();

    sub_1ABA9EA34();
  }

  else
  {
    v105 = v42;
    sub_1ABD1BD0C(a21);

    v49 = v110;
    v50 = v103;
    sub_1ABAAA634(v48, &v112);
    v51 = *v103;
    v52 = *(*v103 + 16);
    if (v52)
    {

      v53 = MEMORY[0x1E69E7CC0];
      v54 = 32;
      v55 = v113;
      do
      {
        sub_1ABD1B924(v51 + v54);
        if (v111)
        {
          sub_1ABAA0AB0(v111);
          sub_1ABD1B9E4();
          v56 = v109[0];
          if (v109[0] != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_1ABA8A534();
              sub_1ABADADEC(v58, v59, v60, v61);
              v53 = v62;
            }

            v57 = *(v53 + 16);
            if (v57 >= *(v53 + 24) >> 1)
            {
              sub_1ABA9ECC4();
              sub_1ABADADEC(v63, v64, v65, v66);
              v53 = v67;
            }

            *(v53 + 16) = v57 + 1;
            *(v53 + v57 + 32) = v56;
            v55 = v113;
          }
        }

        v54 += 8;
        --v52;
      }

      while (v52);
      v68 = v101;

      v50 = v103;
    }

    else
    {
      v53 = MEMORY[0x1E69E7CC0];
      v55 = v113;
      v68 = v101;
    }

    v100(&v110, v49);
    sub_1ABD1BF7C(v110);
    sub_1ABAAD280();
    v69 = sub_1ABD1C26C();
    v102[1] = v105;
    v102[2] = v69;
    v102[3] = v70;
    sub_1ABD1B058(v69, v109);
    sub_1ABD1AF20();
    v74 = sub_1ABA9DFB8(v55, v71, v72, v73);
    v75 = a22(v74);
    sub_1ABD1C23C();

    sub_1ABC8B318(v76, v55, v102);
    sub_1ABAAD280();
    *(v102 + v75[7]) = *v105;
    v77 = sub_1ABAAD280();
    *(v102 + v75[8]) = *v105;
    sub_1ABA890D8(v77, &v108);
    v78 = *v68;
    sub_1ABAAFB28();
    sub_1ABD1BCD8();
    *v80 = v78;
    v80[1] = v79;
    sub_1ABD1BE04(v81);
    sub_1ABD1B03C(v82, v83);
    sub_1ABD1BA44();
    sub_1ABAAFB28();
    sub_1ABD1BCD8();
    sub_1ABD1BCCC(v84);
    v86 = *v50;
    v87 = *(v86 + 16);
    if (v87)
    {
      v88 = *(v86 + 32);
    }

    else
    {
      v88 = 0;
    }

    v89 = (v85 + v75[11]);
    *v89 = v86;
    v89[1] = v88;
    sub_1ABA889F8(v87 == 0);
    if (v90)
    {
      v91 = *(v53 + 32);
    }

    else
    {
      v91 = 25;
    }

    sub_1ABAA5C0C(v91);
    v93 = v92;
    sub_1ABA7F2A0(v92, v94);
    v95 = *v93;
    v96 = *(v95 + 16);
    if (v96)
    {
      v97 = *(v95 + 32);
    }

    else
    {
      v97 = 0;
    }

    v98 = v96 == 0;

    sub_1ABD1BC5C();
    sub_1ABAA1460();

    sub_1ABAA1668();

    v99 = v102 + v75[13];
    *v99 = v95;
    *(v99 + 1) = v97;
    v99[16] = v98;
    sub_1ABA8D348();

    sub_1ABA9EA34();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABCA2170(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphMeetingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6C0), *(_Records_GDEntityClass_records + 0x6C8), *(_Records_GDEntityClass_records + 0x6D0), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6C0), *(_Records_GDEntityClass_records + 0x6C8), *(_Records_GDEntityClass_records + 0x6D0), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCA243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(uint64_t))
{
  sub_1ABA7E2A8();
  v37 = v24;
  v26 = v25;
  v28 = v27;
  sub_1ABD1B3D0();
  v29 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v29);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9F7AC();
  sub_1ABD1BD64();
  v31 = sub_1ABB2B834(v28);
  v23[1] = v28;
  v23[2] = v31;
  v23[3] = v32;
  v33 = sub_1ABA8B2DC();
  v34 = a23(v33);
  sub_1ABAB1F84(v34);
  *(v23 + *(v34 + 28)) = v26;
  *(v23 + *(v34 + 32)) = v37;
  sub_1ABA897F0();
  sub_1ABD1AE28();
  sub_1ABAB5FE0();
  sub_1ABA89D74();
  sub_1ABD1BB10();
  sub_1ABD1B190(v35);
  sub_1ABAA2B08(v36 == 0);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABCA25A0(uint64_t a1)
{
  v2 = sub_1ABD0B3FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA25DC(uint64_t a1)
{
  v2 = sub_1ABD0B3FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphMeetingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6890, &dword_1ABF50C50);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B3FC();
  sub_1ABA8D27C(&type metadata for CustomGraphMeetingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphMeetingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348314);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348320);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphMeetingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D68B0, &unk_1ABF50C60);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphMeetingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B3FC();
  sub_1ABA9F458(&type metadata for CustomGraphMeetingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphEatingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6D8), *(_Records_GDEntityClass_records + 0x6E0), *(_Records_GDEntityClass_records + 0x6E8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphEatingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphEatingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA3244(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphEatingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6D8), *(_Records_GDEntityClass_records + 0x6E0), *(_Records_GDEntityClass_records + 0x6E8), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6D8), *(_Records_GDEntityClass_records + 0x6E0), *(_Records_GDEntityClass_records + 0x6E8), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA3510(uint64_t a1)
{
  v2 = sub_1ABD0B450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA354C(uint64_t a1)
{
  v2 = sub_1ABD0B450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphEatingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D68C0, &dword_1ABF50C68);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B450();
  sub_1ABA8D27C(&type metadata for CustomGraphEatingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphEatingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348332);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348338);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphEatingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D68E0, &unk_1ABF50C78);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphEatingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B450();
  sub_1ABA9F458(&type metadata for CustomGraphEatingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphWatchingTVActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6F0), *(_Records_GDEntityClass_records + 0x6F8), *(_Records_GDEntityClass_records + 0x700), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphWatchingTVActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphWatchingTVActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA41B4(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphWatchingTVActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6F0), *(_Records_GDEntityClass_records + 0x6F8), *(_Records_GDEntityClass_records + 0x700), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6F0), *(_Records_GDEntityClass_records + 0x6F8), *(_Records_GDEntityClass_records + 0x700), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA4480(uint64_t a1)
{
  v2 = sub_1ABD0B4A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA44BC(uint64_t a1)
{
  v2 = sub_1ABD0B4A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphWatchingTVActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D68F0, &dword_1ABF50C80);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B4A4();
  sub_1ABA8D27C(&type metadata for CustomGraphWatchingTVActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphWatchingTVActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348350);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348356);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphWatchingTVActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6910, &unk_1ABF50C90);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphWatchingTVActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B4A4();
  sub_1ABA9F458(&type metadata for CustomGraphWatchingTVActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphCommunicatingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x708), *(_Records_GDEntityClass_records + 0x710), *(_Records_GDEntityClass_records + 0x718), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphCommunicatingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphCommunicatingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA5124(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphCommunicatingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x708), *(_Records_GDEntityClass_records + 0x710), *(_Records_GDEntityClass_records + 0x718), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x708), *(_Records_GDEntityClass_records + 0x710), *(_Records_GDEntityClass_records + 0x718), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA53F0(uint64_t a1)
{
  v2 = sub_1ABD0B4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA542C(uint64_t a1)
{
  v2 = sub_1ABD0B4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphCommunicatingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6920, &dword_1ABF50C98);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B4F8();
  sub_1ABA8D27C(&type metadata for CustomGraphCommunicatingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphCommunicatingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348368);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348374);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphCommunicatingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6940, &unk_1ABF50CA8);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphCommunicatingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B4F8();
  sub_1ABA9F458(&type metadata for CustomGraphCommunicatingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphShoppingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x720), *(_Records_GDEntityClass_records + 0x728), *(_Records_GDEntityClass_records + 0x730), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphShoppingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphShoppingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA6094(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphShoppingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x720), *(_Records_GDEntityClass_records + 0x728), *(_Records_GDEntityClass_records + 0x730), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x720), *(_Records_GDEntityClass_records + 0x728), *(_Records_GDEntityClass_records + 0x730), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA6360(uint64_t a1)
{
  v2 = sub_1ABD0B54C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA639C(uint64_t a1)
{
  v2 = sub_1ABD0B54C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphShoppingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6950, &dword_1ABF50CB0);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B54C();
  sub_1ABA8D27C(&type metadata for CustomGraphShoppingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphShoppingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348386);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348392);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphShoppingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6970, &unk_1ABF50CC0);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphShoppingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B54C();
  sub_1ABA9F458(&type metadata for CustomGraphShoppingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphMindfulnessActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x810), *(_Records_GDEntityClass_records + 0x818), *(_Records_GDEntityClass_records + 0x820), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphMindfulnessActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphMindfulnessActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA7004(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphMindfulnessActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x810), *(_Records_GDEntityClass_records + 0x818), *(_Records_GDEntityClass_records + 0x820), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x810), *(_Records_GDEntityClass_records + 0x818), *(_Records_GDEntityClass_records + 0x820), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA72D0(uint64_t a1)
{
  v2 = sub_1ABD0B5A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA730C(uint64_t a1)
{
  v2 = sub_1ABD0B5A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphMindfulnessActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6980, &dword_1ABF50CC8);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B5A0();
  sub_1ABA8D27C(&type metadata for CustomGraphMindfulnessActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphMindfulnessActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348404);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348410);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphMindfulnessActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D69A0, &unk_1ABF50CD8);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphMindfulnessActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B5A0();
  sub_1ABA9F458(&type metadata for CustomGraphMindfulnessActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphSleepingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7E0), *(_Records_GDEntityClass_records + 0x7E8), *(_Records_GDEntityClass_records + 0x7F0), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphSleepingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphSleepingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA7F74(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphSleepingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7E0), *(_Records_GDEntityClass_records + 0x7E8), *(_Records_GDEntityClass_records + 0x7F0), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7E0), *(_Records_GDEntityClass_records + 0x7E8), *(_Records_GDEntityClass_records + 0x7F0), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA8240(uint64_t a1)
{
  v2 = sub_1ABD0B5F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA827C(uint64_t a1)
{
  v2 = sub_1ABD0B5F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphSleepingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D69B0, &dword_1ABF50CE0);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B5F4();
  sub_1ABA8D27C(&type metadata for CustomGraphSleepingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphSleepingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348422);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348428);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphSleepingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D69D0, &unk_1ABF50CF0);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphSleepingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B5F4();
  sub_1ABA9F458(&type metadata for CustomGraphSleepingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphTravelingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x738), *(_Records_GDEntityClass_records + 0x740), *(_Records_GDEntityClass_records + 0x748), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphTravelingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphTravelingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA8EE4(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphTravelingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x738), *(_Records_GDEntityClass_records + 0x740), *(_Records_GDEntityClass_records + 0x748), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x738), *(_Records_GDEntityClass_records + 0x740), *(_Records_GDEntityClass_records + 0x748), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCA91B0(uint64_t a1)
{
  v2 = sub_1ABD0B648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCA91EC(uint64_t a1)
{
  v2 = sub_1ABD0B648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphTravelingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D69E0, &dword_1ABF50CF8);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B648();
  sub_1ABA8D27C(&type metadata for CustomGraphTravelingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphTravelingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348440);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348446);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphTravelingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6A00, &unk_1ABF50D08);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphTravelingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B648();
  sub_1ABA9F458(&type metadata for CustomGraphTravelingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphReadingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x750), *(_Records_GDEntityClass_records + 0x758), *(_Records_GDEntityClass_records + 0x760), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphReadingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphReadingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCA9E54(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphReadingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x750), *(_Records_GDEntityClass_records + 0x758), *(_Records_GDEntityClass_records + 0x760), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x750), *(_Records_GDEntityClass_records + 0x758), *(_Records_GDEntityClass_records + 0x760), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCAA120(uint64_t a1)
{
  v2 = sub_1ABD0B69C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCAA15C(uint64_t a1)
{
  v2 = sub_1ABD0B69C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphReadingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6A10, &dword_1ABF50D10);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B69C();
  sub_1ABA8D27C(&type metadata for CustomGraphReadingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphReadingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348458);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348464);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphReadingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6A30, &unk_1ABF50D20);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphReadingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B69C();
  sub_1ABA9F458(&type metadata for CustomGraphReadingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphVacationingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x768), *(_Records_GDEntityClass_records + 0x770), *(_Records_GDEntityClass_records + 0x778), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphVacationingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphVacationingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCAADC4(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphVacationingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x768), *(_Records_GDEntityClass_records + 0x770), *(_Records_GDEntityClass_records + 0x778), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x768), *(_Records_GDEntityClass_records + 0x770), *(_Records_GDEntityClass_records + 0x778), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCAB090(uint64_t a1)
{
  v2 = sub_1ABD0B6F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCAB0CC(uint64_t a1)
{
  v2 = sub_1ABD0B6F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphVacationingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6A40, &dword_1ABF50D28);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B6F0();
  sub_1ABA8D27C(&type metadata for CustomGraphVacationingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphVacationingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(19);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(0);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(0);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348474);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphVacationingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6A60, &unk_1ABF50D38);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphVacationingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B6F0();
  sub_1ABA9F458(&type metadata for CustomGraphVacationingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphGamingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x780), *(_Records_GDEntityClass_records + 0x788), *(_Records_GDEntityClass_records + 0x790), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABCABAC8@<X0>(void (*a1)(void *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v95 = a2;
  v96 = a1;
  v93 = a4;
  v5 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = v84 - v6;
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v91 = v7 + 16;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v84[4] = v9 + 16;
  v10 = swift_allocObject();
  v104 = v10;
  *(v10 + 16) = v8;
  v85 = (v10 + 16);
  v11 = swift_allocObject();
  v101 = v11;
  *(v11 + 16) = v8;
  v86 = (v11 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  v87 = v12 + 16;
  v13 = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v88 = (v14 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  v94 = v15 + 16;
  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  v89 = v16 + 16;
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  v90 = (v17 + 16);
  v18 = swift_allocObject();
  v18[2] = v7;
  v18[3] = v13;
  v19 = v104;
  v18[4] = v9;
  v18[5] = v19;
  v18[6] = v101;
  v18[7] = v12;
  v18[8] = v14;
  v18[9] = v15;
  v18[10] = v16;
  v18[11] = v17;
  v99 = v7;

  v100 = v13;

  v98 = v9;

  v20 = v97;
  v96(v103, sub_1ABCACC08, 0, sub_1ABD19F4C, v18);
  if (v20)
  {

LABEL_17:
  }

  v21 = v91;
  v97 = 0;
  v84[1] = v12;
  v96 = v14;
  v84[2] = v15;
  v84[3] = v16;
  v95 = v17;

  v84[0] = v103[0];
  v22 = v94;
  swift_beginAccess();
  v30 = *v22;
  v31 = *(*v22 + 16);
  if (v31)
  {

    v32 = MEMORY[0x1E69E7CC0];
    v33 = 32;
    v34 = v21;
    do
    {
      EntityClass.init(intValue:)(*(v30 + v33 + 7), v103);
      if (v103[1])
      {
        ActivityEventType.init(activityTypeEntityClass:)(v103, v102);
        v35 = v102[0];
        if (v102[0] != 25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABADADEC(0, *(v32 + 16) + 1, 1, v32);
            v32 = v38;
          }

          v37 = *(v32 + 16);
          v36 = *(v32 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_1ABADADEC(v36 > 1, v37 + 1, 1, v32);
            v32 = v39;
          }

          *(v32 + 16) = v37 + 1;
          *(v32 + v37 + 32) = v35;
          v34 = v21;
        }
      }

      v33 += 8;
      --v31;
    }

    while (v31);

    v22 = v94;
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
    v34 = v21;
  }

  v40 = v97;
  sub_1ABC4B66C(v84[0], v23, v24, v25, v26, v27, v28, v29);
  v41 = v93;
  v97 = v40;
  v42 = v92;
  if (v40)
  {

    goto LABEL_17;
  }

  v44 = v22;
  *v93 = v103[0];
  swift_beginAccess();
  v45 = *v34;
  v46 = sub_1ABB2B834(*v34);
  v41[1] = v45;
  v41[2] = v46;
  v41[3] = v47;
  swift_beginAccess();
  v48 = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA7B9B4(v42, 1, 1, v48);
  v49 = type metadata accessor for CustomGraphGamingActivityEvent(0);
  v50 = v49[6];

  sub_1ABC8B318(v51, v42, (v41 + v50));
  v52 = v85;
  swift_beginAccess();
  v53 = v49[7];
  v92 = *v52;
  *(v41 + v53) = v92;
  v54 = v86;
  swift_beginAccess();
  v55 = v49[8];
  v91 = *v54;
  *(v41 + v55) = v91;
  v56 = v87;
  swift_beginAccess();
  v57 = *v56;
  v58 = *(*v56 + 16);
  if (v58)
  {
    v59 = *(v57 + 32);
  }

  else
  {
    v59 = 0;
  }

  v60 = v90;
  v61 = v89;
  v62 = v88;
  v63 = v41 + v49[9];
  *v63 = v57;
  *(v63 + 1) = v59;
  v63[16] = v58 == 0;
  swift_beginAccess();
  v64 = *v62;
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = *(v64 + 32);
  }

  else
  {
    v66 = 0;
  }

  v67 = v41 + v49[10];
  *v67 = v64;
  *(v67 + 1) = v66;
  v67[16] = v65 == 0;
  v68 = *v44;
  v69 = *(*v44 + 16);
  if (v69)
  {
    v70 = *(v68 + 32);
  }

  else
  {
    v70 = 0;
  }

  v71 = v41 + v49[11];
  *v71 = v68;
  *(v71 + 1) = v70;
  v71[16] = v69 == 0;
  if (*(v32 + 16))
  {
    v72 = *(v32 + 32);
  }

  else
  {
    v72 = 25;
  }

  v73 = v41 + v49[12];
  *v73 = v32;
  v73[8] = v72;
  swift_beginAccess();
  v74 = *v61;
  v75 = *(*v61 + 16);
  if (v75)
  {
    v76 = *(v74 + 32);
  }

  else
  {
    v76 = 0;
  }

  v77 = v41 + v49[13];
  *v77 = v74;
  *(v77 + 1) = v76;
  v77[16] = v75 == 0;
  swift_beginAccess();
  v78 = *v60;
  if (*(v78 + 16))
  {
    v79 = *(v78 + 40);
    v94 = *(v78 + 32);
    v90 = v79;
    v80 = *(v78 + 48);
    v89 = *(v78 + 56);
    v81 = *(v78 + 64);
  }

  else
  {
    v94 = 0;
    v90 = 0;
    v80 = 0;
    v89 = 0;
    v81 = 0;
  }

  v82 = v93 + v49[14];
  v83 = v94;
  *v82 = v78;
  *(v82 + 1) = v83;
  *(v82 + 2) = v90;
  *(v82 + 3) = v80;
  *(v82 + 4) = v89;
  v82[40] = v81;
}

void sub_1ABCAC438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABA9E2C4(v10, v11, v12, v13, v14);
  sub_1ABD1B6DC(v15);
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v16);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v18);
  sub_1ABA7D028();
  v19 = swift_allocObject();
  sub_1ABD1B074(v19);
  sub_1ABA7D028();
  v109 = swift_allocObject();
  sub_1ABD1B074(v109);
  sub_1ABD1BD0C(v20);
  sub_1ABA7D028();
  v108 = swift_allocObject();
  sub_1ABD1B074(v108);
  sub_1ABD1BE50(v21);
  sub_1ABA7D028();
  v22 = swift_allocObject();
  sub_1ABD1B074(v22);
  sub_1ABD1BE44(v23);
  sub_1ABA7D028();
  v24 = swift_allocObject();
  sub_1ABD1B074(v24);
  sub_1ABD1B3DC(v25);
  sub_1ABA7D028();
  v26 = swift_allocObject();
  sub_1ABD1B074(v26);
  sub_1ABD1BA5C(v27);
  sub_1ABA7D028();
  v28 = swift_allocObject();
  sub_1ABD1B074(v28);
  sub_1ABD1B6D0(v29);
  sub_1ABA7D028();
  v30 = swift_allocObject();
  sub_1ABD1B074(v30);
  sub_1ABD1B61C(v31);
  sub_1ABA7D028();
  v32 = swift_allocObject();
  sub_1ABD1B074(v32);
  sub_1ABD1B6E8(v33);
  sub_1ABD1B534();
  v34 = swift_allocObject();
  sub_1ABD1BB28();
  *(v35 + 16) = v36;
  v34[3] = v107;
  v34[4] = v19;
  v34[5] = a10;
  v34[6] = v109;
  v34[7] = v108;
  v34[8] = v22;
  v34[9] = v24;
  v34[10] = v26;
  v34[11] = v28;
  v34[12] = v30;
  v34[13] = v32;

  sub_1ABD1B6B4();
  v37();
  if (v108)
  {

    sub_1ABAA1460();

    sub_1ABA9EA34();

    sub_1ABAA2168();

    sub_1ABD1BC5C();
  }

  else
  {

    sub_1ABD1C01C();
    v38 = v105;
    sub_1ABAAA634(v39, v40);
    v41 = *v105;
    v42 = *(*v105 + 16);
    if (v42)
    {

      v43 = MEMORY[0x1E69E7CC0];
      v44 = 32;
      do
      {
        sub_1ABD1B924(v41 + v44);
        if (v114)
        {
          sub_1ABAA0AB0(v114);
          sub_1ABD1B9E4();
          v45 = v112[0];
          if (v112[0] != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_1ABA8A534();
              sub_1ABADADEC(v48, v49, v50, v51);
              v43 = v52;
            }

            v47 = *(v43 + 16);
            v46 = *(v43 + 24);
            if (v47 >= v46 >> 1)
            {
              sub_1ABA7BBEC(v46);
              sub_1ABA9ECC4();
              sub_1ABADADEC(v53, v54, v55, v56);
              v43 = v57;
            }

            *(v43 + 16) = v47 + 1;
            *(v43 + v47 + 32) = v45;
          }
        }

        v44 += 8;
        --v42;
      }

      while (v42);

      v38 = v105;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    v58 = sub_1ABD1BE5C();
    sub_1ABC4B66C(v58, v59, v60, v61, v62, v63, v64, v65);
    sub_1ABD1BE30();
    MEMORY[0] = v113;
    sub_1ABAAD280();
    v66 = sub_1ABD1C26C();
    MEMORY[8] = a10;
    MEMORY[0x10] = v66;
    MEMORY[0x18] = v67;
    sub_1ABD1B058(v66, v112);
    sub_1ABD1AF20();
    v71 = sub_1ABA9DFB8(v103, v68, v69, v70);
    v72 = type metadata accessor for CustomGraphGamingActivityEvent(v71);
    sub_1ABD1C23C();

    sub_1ABC8B318(v73, v103, 0);
    sub_1ABAAD280();
    sub_1ABD1BDEC(v72[7]);
    sub_1ABAAD280();
    sub_1ABD1BDEC(v72[8]);
    sub_1ABD1B1F4(v74, &v111);
    v75 = *v102;
    sub_1ABAAFB28();
    v76 = v72[9];
    *v76 = v75;
    v76[1] = v77;
    sub_1ABD1BE04(v78);
    sub_1ABD1B058(v79, v80);
    v81 = *v100;
    sub_1ABAAFB28();
    v82 = v72[10];
    *v82 = v81;
    *(v82 + 8) = v83;
    *(v82 + 16) = v84;
    v85 = *v38;
    sub_1ABAAFB28();
    v86 = v72[11];
    *v86 = v85;
    v86[1] = v87;
    sub_1ABA889F8(v88);
    if (v89)
    {
      v90 = *(v43 + 32);
    }

    else
    {
      v90 = 25;
    }

    sub_1ABAA5C0C(v90);
    sub_1ABD1B03C(v91, v92);
    sub_1ABD1BA44();
    sub_1ABAAFB28();
    sub_1ABD1BCCC(v93);
    sub_1ABA8A740(v94, &v110);
    v95 = *v101;
    if (*(*v101 + 16))
    {
      v106 = *(v95 + 32);
      sub_1ABD1B3DC(*(v95 + 40));
      v96 = *(v95 + 48);
      v97 = *(v95 + 56);
      v98 = *(v95 + 64);
    }

    else
    {
      v106 = 0;
      v102 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
    }

    sub_1ABD1C2FC();

    v99 = v104 + v72[14];
    *v99 = v95;
    *(v99 + 8) = v106;
    *(v99 + 16) = v102;
    *(v99 + 24) = v96;
    *(v99 + 32) = v97;
    *(v99 + 40) = v98;
    sub_1ABAA1460();

    sub_1ABA9EA34();

    sub_1ABAA2168();

    sub_1ABD1BC5C();
    sub_1ABD1B628();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABCACC08(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphGamingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x780), *(_Records_GDEntityClass_records + 0x788), *(_Records_GDEntityClass_records + 0x790), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x780), *(_Records_GDEntityClass_records + 0x788), *(_Records_GDEntityClass_records + 0x790), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCACEA0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v149 = a7;
  v150 = a6;
  v151 = a5;
  v153 = a4;
  v154 = a3;
  v15 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v145 - v16;
  v18 = type metadata accessor for CustomGraphDateRelationship(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = v21;
  v148 = a8;
  v155 = v11;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_130;
  }

  v176 = a1;
  v22 = *a1;
  v23 = *(a1 + 1);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v170);
  v24 = v23;
  v25 = *(&v170[0] + 1);
  if (*&v170[0] == v22 && *(&v170[0] + 1) == v24)
  {

LABEL_57:
    v70 = v176;
    if (!v176[97])
    {
      v80 = *(v176 + 5);
      v79 = *(v176 + 6);
      swift_beginAccess();

      sub_1ABB4DC20();
      v81 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v81);
      v82 = *(a2 + 16);
      *(v82 + 16) = v81 + 1;
      v83 = v82 + 16 * v81;
      *(v83 + 32) = v80;
      *(v83 + 40) = v79;
      *(a2 + 16) = v82;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 == -1)
    {
LABEL_59:
      v71 = sub_1ABF237F4();
      sub_1ABA7AA24(v71, qword_1ED871B40);
      sub_1ABAE2EC4();
      v72 = sub_1ABF237D4();
      v73 = sub_1ABF24664();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v171 = v75;
        *v74 = 136642819;
        memcpy(v170, v70, 0x62uLL);
        sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
        v76 = sub_1ABF23C94();
        v78 = &v171;
LABEL_86:
        v112 = sub_1ABADD6D8(v76, v77, v78);

        *(v74 + 4) = v112;
        _os_log_impl(&dword_1ABA78000, v72, v73, "Failed to parse %{sensitive}s.", v74, 0xCu);
        sub_1ABA84B54(v75);
        MEMORY[0x1AC5AB8B0](v75, -1, -1);
        MEMORY[0x1AC5AB8B0](v74, -1, -1);

        return;
      }

      goto LABEL_87;
    }

LABEL_100:
    swift_once();
    goto LABEL_59;
  }

  v146 = v24;
  v147 = v22;
  v27 = sub_1ABF25054();

  if (v27)
  {
    goto LABEL_57;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_132;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v170);
  v25 = *(&v170[0] + 1);
  if (*&v170[0] == v147 && *(&v170[0] + 1) == v146)
  {

LABEL_63:
    v70 = v176;
    *&v173[10] = *(v176 + 82);
    v84 = *(v176 + 56);
    v171 = *(v176 + 40);
    v172 = v84;
    *v173 = *(v176 + 72);
    if (v173[25] == 1)
    {
      v85 = *(v176 + 56);
      v174[0] = *(v176 + 40);
      v174[1] = v85;
      v175[0] = *(v176 + 72);
      *(v175 + 9) = *(v176 + 81);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v86 = v154;

      v87 = v86;
      v88 = v155;
      sub_1ABC8A96C(v174, v87, v17);
      if (!v88)
      {
        if (sub_1ABA7E1E0(v17, 1, v18) != 1)
        {
          sub_1ABCF9424();
          v97 = v153;
          swift_beginAccess();
          sub_1ABB4DE30();
          v98 = *(*(v97 + 16) + 16);
          sub_1ABB4E234(v98);
          v99 = *(v97 + 16);
          *(v99 + 16) = v98 + 1;
          sub_1ABD0AD58();
          *(v97 + 16) = v99;
          swift_endAccess();
          sub_1ABAB480C(&v171, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v20, type metadata accessor for CustomGraphDateRelationship);
          return;
        }

        sub_1ABAB480C(&v171, &qword_1EB4D7E60, &unk_1ABF5E780);
        v89 = &qword_1EB4D5F20;
        v90 = &qword_1ABF4F358;
        v91 = v17;
        goto LABEL_88;
      }

      goto LABEL_65;
    }

    goto LABEL_82;
  }

  v29 = sub_1ABF25054();

  if (v29)
  {
    goto LABEL_63;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v20 = &v164;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v170);
  if (*&v170[0] == v147 && *(&v170[0] + 1) == v146)
  {

LABEL_69:
    v70 = v176;
    *&v173[10] = *(v176 + 82);
    v92 = *(v176 + 56);
    v171 = *(v176 + 40);
    v172 = v92;
    *v173 = *(v176 + 72);
    if (v173[25] == 1)
    {
      v93 = *(v176 + 56);
      v167 = *(v176 + 40);
      v168 = v93;
      v169[0] = *(v176 + 72);
      *(v169 + 9) = *(v176 + 81);
      MEMORY[0x1EEE9AC00](v32);
      *(&v145 - 2) = &v167;
      v170[0] = v171;
      v170[1] = v172;
      v170[2] = *v173;
      *(&v170[2] + 10) = *&v173[10];
      sub_1ABAE2EC4();
      sub_1ABD191AC(v170, &v164);
      v94 = v155;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v145 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v95, v96, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, *(&v156 + 1), v157, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162, v163, v164, *(&v164 + 1));
      if (!v94)
      {
        v100 = v157;
        if (v157)
        {
          v164 = v167;
          v165 = v168;
          *v166 = v169[0];
          *(&v166[1] + 1) = *(v169 + 9);
          sub_1ABD19208(&v164);
          v101 = v151;
          swift_beginAccess();
          sub_1ABB4DEA8();
          v102 = *(*(v101 + 16) + 16);
          sub_1ABB4E2AC(v102);
LABEL_75:
          v103 = *(v101 + 16);
          *(v103 + 16) = v102 + 1;
          v104 = v103 + (v102 << 6);
          *(v104 + 32) = v156;
          *(v104 + 48) = v100;
          v105 = v159;
          *(v104 + 56) = v158;
          *(v104 + 72) = v105;
          *(v104 + 88) = v160;
          *(v101 + 16) = v103;
          swift_endAccess();
          goto LABEL_76;
        }
      }

LABEL_71:
      v164 = v167;
      v165 = v168;
      *v166 = v169[0];
      *(&v166[1] + 1) = *(v169 + 9);
      sub_1ABD19208(&v164);
LABEL_76:
      sub_1ABAB480C(&v171, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

LABEL_82:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v111 = sub_1ABF237F4();
    sub_1ABA7AA24(v111, qword_1ED871B40);
    sub_1ABAE2EC4();
    v72 = sub_1ABF237D4();
    v73 = sub_1ABF24664();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v164 = v75;
      *v74 = 136642819;
      memcpy(v170, v70, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v76 = sub_1ABF23C94();
      v78 = &v164;
      goto LABEL_86;
    }

LABEL_87:

    v89 = &qword_1EB4D1148;
    v90 = &qword_1ABF332D0;
    v91 = v70;
    goto LABEL_88;
  }

  v31 = sub_1ABF25054();

  if (v31)
  {
    goto LABEL_69;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_135;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v170);
  if (*&v170[0] == v147 && *(&v170[0] + 1) == v146)
  {

LABEL_78:
    v70 = v176;
    *&v173[10] = *(v176 + 82);
    v106 = *(v176 + 56);
    v171 = *(v176 + 40);
    v172 = v106;
    *v173 = *(v176 + 72);
    if (v173[25] == 1)
    {
      v107 = *(v176 + 56);
      v167 = *(v176 + 40);
      v168 = v107;
      v169[0] = *(v176 + 72);
      *(v169 + 9) = *(v176 + 81);
      MEMORY[0x1EEE9AC00](v35);
      *(&v145 - 2) = &v167;
      v170[0] = v171;
      v170[1] = v172;
      v170[2] = *v173;
      *(&v170[2] + 10) = *&v173[10];
      sub_1ABAE2EC4();
      sub_1ABD191AC(v170, &v164);
      v108 = v155;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v145 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v109, v110, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, *(&v156 + 1), v157, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162, v163, v164, *(&v164 + 1));
      if (!v108)
      {
        v100 = v157;
        if (v157)
        {
          v164 = v167;
          v165 = v168;
          *v166 = v169[0];
          *(&v166[1] + 1) = *(v169 + 9);
          sub_1ABD19208(&v164);
          v101 = v150;
          swift_beginAccess();
          sub_1ABB4DD28();
          v102 = *(*(v101 + 16) + 16);
          sub_1ABB4E12C(v102);
          goto LABEL_75;
        }
      }

      goto LABEL_71;
    }

    goto LABEL_82;
  }

  v34 = sub_1ABF25054();

  if (v34)
  {
    goto LABEL_78;
  }

  v36 = v147;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v170);
  if (*&v170[0] == v36 && *(&v170[0] + 1) == v146)
  {

LABEL_91:
    v70 = v176;
    if (v176[97] == 2)
    {
      v113 = v155;
      sub_1ABC4A630(*(v176 + 5), v39, v40, v41, v42, v43, v44, v45);
      if (v113)
      {
        return;
      }

      v114 = v171;
      v115 = v149;
      goto LABEL_94;
    }

LABEL_99:
    if (qword_1ED871B38 == -1)
    {
      goto LABEL_59;
    }

    goto LABEL_100;
  }

  v38 = sub_1ABF25054();

  if (v38)
  {
    goto LABEL_91;
  }

  v46 = v147;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_138;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v170);
  if (*&v170[0] == v46 && *(&v170[0] + 1) == v146)
  {

LABEL_96:
    v70 = v176;
    if (v176[97] == 2)
    {
      v118 = v155;
      sub_1ABC4A630(*(v176 + 5), v49, v50, v51, v52, v53, v54, v55);
      if (v118)
      {
        return;
      }

      v114 = v171;
      v115 = v148;
LABEL_94:
      swift_beginAccess();
      sub_1ABB4DD40();
      v116 = *(*(v115 + 16) + 16);
      sub_1ABB4E144(v116);
      v117 = *(v115 + 16);
      *(v117 + 16) = v116 + 1;
      *(v117 + 8 * v116 + 32) = v114;
      *(v115 + 16) = v117;
      return;
    }

    goto LABEL_99;
  }

  v48 = sub_1ABF25054();

  if (v48)
  {
    goto LABEL_96;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), v170);
  if (*&v170[0] == v147 && *(&v170[0] + 1) == v146)
  {
  }

  else
  {
    v57 = sub_1ABF25054();

    if ((v57 & 1) == 0)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), v170);
        if (*&v170[0] == v147 && *(&v170[0] + 1) == v146)
        {
        }

        else
        {
          v66 = sub_1ABF25054();

          if ((v66 & 1) == 0)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[1752], *(_Records_GDEntityPredicate_records + 439), *(_Records_GDEntityPredicate_records + 440), v170);
              if (*&v170[0] == v147 && *(&v170[0] + 1) == v146)
              {
              }

              else
              {
                v68 = sub_1ABF25054();

                if ((v68 & 1) == 0)
                {
                  return;
                }
              }

              *&v173[10] = *(v176 + 82);
              v134 = *(v176 + 56);
              v171 = *(v176 + 40);
              v172 = v134;
              *v173 = *(v176 + 72);
              if (v173[25] == 1)
              {
                v135 = *(v176 + 56);
                v167 = *(v176 + 40);
                v168 = v135;
                v169[0] = *(v176 + 72);
                *(v169 + 9) = *(v176 + 81);
                MEMORY[0x1EEE9AC00](v69);
                *(&v145 - 2) = &v167;
                v170[0] = v171;
                v170[1] = v172;
                v170[2] = *v173;
                *(&v170[2] + 10) = *&v173[10];
                sub_1ABAE2EC4();
                sub_1ABD191AC(v170, &v164);
                v136 = v155;
                sub_1ABD08790(sub_1ABD1A8C8, (&v145 - 4), &unk_1F209AEF8, sub_1ABD18F74, sub_1ABD19FB4);
                if (v136)
                {
                  v164 = v167;
                  v165 = v168;
                  *v166 = v169[0];
                  *(&v166[1] + 1) = *(v169 + 9);
                  sub_1ABD19208(&v164);
                  sub_1ABAB480C(&v171, &qword_1EB4D7E60, &unk_1ABF5E780);
                  return;
                }

                v138 = v157;
                if (v157)
                {
                  LODWORD(v176) = BYTE8(v158);
                  v155 = v158;
                  v139 = v156;
                  v164 = v167;
                  v165 = v168;
                  *v166 = v169[0];
                  *(&v166[1] + 1) = *(v169 + 9);
                  sub_1ABD19208(&v164);
                  swift_beginAccess();
                  sub_1ABB4DF38();
                  v140 = *(*(a11 + 16) + 16);
                  sub_1ABB4E33C(v140);
                  v141 = *(a11 + 16);
                  *(v141 + 16) = v140 + 1;
                  v142 = v141 + 40 * v140;
                  *(v142 + 32) = v139;
                  v143 = v155;
                  *(v142 + 48) = v138;
                  *(v142 + 56) = v143;
                  *(v142 + 64) = v176 & 1;
                  *(a11 + 16) = v141;
                  swift_endAccess();
LABEL_65:
                  v89 = &qword_1EB4D7E60;
                  v90 = &unk_1ABF5E780;
                  v91 = &v171;
LABEL_88:
                  sub_1ABAB480C(v91, v89, v90);
                  return;
                }

LABEL_130:
                v144 = v20[5];
                v164 = v20[4];
                v165 = v144;
                *v166 = v20[6];
                *(v20 + 41) = *(v20 + 105);
                sub_1ABD19208(&v164);
                goto LABEL_65;
              }

              if (qword_1ED871B38 == -1)
              {
LABEL_123:
                v137 = sub_1ABF237F4();
                sub_1ABA7AA24(v137, qword_1ED871B40);
                sub_1ABAE2EC4();
                v72 = sub_1ABF237D4();
                v73 = sub_1ABF24664();
                if (os_log_type_enabled(v72, v73))
                {
                  v74 = swift_slowAlloc();
                  v75 = swift_slowAlloc();
                  *&v164 = v75;
                  *v74 = 136642819;
                  memcpy(v170, v176, 0x62uLL);
                  sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
                  v76 = sub_1ABF23C94();
                  v78 = &v164;
                  goto LABEL_86;
                }

                goto LABEL_125;
              }

LABEL_136:
              swift_once();
              goto LABEL_123;
            }

LABEL_140:
            __break(1u);
            return;
          }
        }

        if (!v176[97])
        {
          v126 = *(v176 + 5);
          v127 = *(v176 + 6);

          v128 = sub_1ABB24D04(v126, v127);
          if ((v129 & 1) == 0)
          {
            v131 = v128;
            swift_beginAccess();
            sub_1ABB4DCB0();
            v132 = *(*(a10 + 16) + 16);
            sub_1ABB4E0CC(v132);
            v133 = *(a10 + 16);
            *(v133 + 16) = v132 + 1;
            *(v133 + 8 * v132 + 32) = v131;
            *(a10 + 16) = v133;
            return;
          }
        }

        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v130 = sub_1ABF237F4();
        sub_1ABA7AA24(v130, qword_1ED871B40);
        sub_1ABAE2EC4();
        v72 = sub_1ABF237D4();
        v73 = sub_1ABF24664();
        if (!os_log_type_enabled(v72, v73))
        {
LABEL_125:

          v125 = v176;
          goto LABEL_126;
        }

        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v171 = v75;
        *v74 = 136642819;
        v124 = v176;
        goto LABEL_116;
      }

LABEL_139:
      __break(1u);
      goto LABEL_140;
    }
  }

  v25 = v176;
  if (v176[97] != 2)
  {
    if (qword_1ED871B38 == -1)
    {
LABEL_106:
      v123 = sub_1ABF237F4();
      sub_1ABA7AA24(v123, qword_1ED871B40);
      sub_1ABAE2EC4();
      v72 = sub_1ABF237D4();
      v73 = sub_1ABF24664();
      if (!os_log_type_enabled(v72, v73))
      {

        v125 = v25;
LABEL_126:
        sub_1ABAB480C(v125, &qword_1EB4D1148, &qword_1ABF332D0);
        return;
      }

      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v171 = v75;
      *v74 = 136642819;
      v124 = v25;
LABEL_116:
      memcpy(v170, v124, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v76 = sub_1ABF23C94();
      v78 = &v171;
      goto LABEL_86;
    }

LABEL_133:
    swift_once();
    goto LABEL_106;
  }

  v119 = v155;
  sub_1ABC4CBC0(*(v176 + 5), v58, v59, v60, v61, v62, v63, v64, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, *(&v156 + 1), v157, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162, v163, v164, *(&v164 + 1), v165, *(&v165 + 1), v166[0], v166[1]);
  if (!v119)
  {
    v120 = v171;
    swift_beginAccess();
    sub_1ABB4DE48();
    v121 = *(*(a9 + 16) + 16);
    sub_1ABB4E24C(v121);
    v122 = *(a9 + 16);
    *(v122 + 16) = v121 + 1;
    *(v122 + 8 * v121 + 32) = v120;
    *(a9 + 16) = v122;
  }
}

void sub_1ABCAE3A0(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13)
{
  v296 = a8;
  v299 = a7;
  v301 = a6;
  v304 = a5;
  v311 = a4;
  v321 = a3;
  v15 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v322 = &v285 - v16;
  v315 = type metadata accessor for CustomGraphDateRelationship(0);
  v309 = *(v315 - 8);
  MEMORY[0x1EEE9AC00](v315);
  v310 = &v285 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a13 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v324 = sub_1ABF247E4();
  v323 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v292 = &v285 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v308 = &v285 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v317 = &v285 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v326 = &v285 - v26;
  v329 = AssociatedTypeWitness;
  v325 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v27);
  v288 = &v285 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v291 = &v285 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v305 = &v285 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v306 = &v285 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v313 = &v285 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v314 = &v285 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v318 = &v285 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v320 = &v285 - v42;
  v332 = *(a12 - 1);
  MEMORY[0x1EEE9AC00](v43);
  v290 = &v285 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v294 = &v285 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v295 = &v285 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v300 = &v285 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v302 = &v285 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v285 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v312 = &v285 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v319 = &v285 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v327 = &v285 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v331 = &v285 - v63;
  v336 = swift_checkMetadataState();
  v333 = *(v336 - 8);
  MEMORY[0x1EEE9AC00](v336);
  v289 = &v285 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v293 = &v285 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v297 = &v285 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v285 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v303 = &v285 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v307 = &v285 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v316 = &v285 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v285 - v79;
  v82 = MEMORY[0x1EEE9AC00](v81);
  v84 = &v285 - v83;
  v85 = *(v18 + 24);
  v337 = a1;
  v334 = v18;
  v335 = a12;
  v85(v343, a12, v18, v82);
  v330 = 279;
  v298 = v71;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_161;
  }

  v87 = v343[0];
  v86 = v343[1];
  v88 = v343[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v339);
  if (v339 == v87 && *(&v339 + 1) == v86)
  {

    goto LABEL_9;
  }

  v287 = v88;
  v286 = v55;
  v90 = a2;
  v91 = v86;
  v92 = sub_1ABF25054();

  if (v92)
  {
    a2 = v90;
LABEL_9:

    v80 = v335;
    v93 = v337;
    (*(v334 + 32))(v335, v334);
    v94 = v336;
    v95 = swift_getAssociatedConformanceWitness();
    v96 = (*(v95 + 24))(v94, v95);
    v98 = v97;
    (*(v333 + 8))(v84, v94);
    if (v98)
    {
      swift_beginAccess();
      sub_1ABB4DC20();
      v99 = *(*(a2 + 2) + 16);
      sub_1ABB4E024(v99);
      v100 = *(a2 + 2);
      *(v100 + 16) = v99 + 1;
      v101 = v100 + 16 * v99;
      *(v101 + 32) = v96;
      *(v101 + 40) = v98;
      *(a2 + 2) = v100;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v102 = sub_1ABF237F4();
    sub_1ABA7AA24(v102, qword_1ED871B40);
    v103 = v332;
    v104 = *(v332 + 16);
    v105 = v331;
    v104(v331, v93, v80);
    v106 = sub_1ABF237D4();
    v107 = sub_1ABF24664();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = v103;
      v109 = swift_slowAlloc();
      v337 = swift_slowAlloc();
      *&v339 = v337;
      *v109 = 136642819;
      v104(v327, v105, v80);
      v110 = sub_1ABF23C94();
      v112 = v111;
      (*(v108 + 8))(v105, v80);
      v113 = sub_1ABADD6D8(v110, v112, &v339);
LABEL_50:

      *(v109 + 4) = v113;
      v148 = v107;
LABEL_51:
      _os_log_impl(&dword_1ABA78000, v106, v148, "Failed to parse %{sensitive}s.", v109, 0xCu);
      v149 = v337;
      sub_1ABA84B54(v337);
      v150 = v149;
LABEL_52:
      MEMORY[0x1AC5AB8B0](v150, -1, -1);
      v151 = v109;
LABEL_53:
      MEMORY[0x1AC5AB8B0](v151, -1, -1);

      return;
    }

    v118 = *(v103 + 8);
    v119 = v105;
    goto LABEL_24;
  }

  v331 = v91;
  if (v330 < 0x92)
  {
    __break(1u);
    goto LABEL_119;
  }

  v114 = &_Records_GDEntityPredicate_records;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v339);
  v115 = v339 == v87 && *(&v339 + 1) == v331;
  v116 = v329;
  v117 = AssociatedConformanceWitness;
  if (v115)
  {

LABEL_26:
    v121 = v336;

    v122 = v335;
    (*(v334 + 32))(v335);
    v123 = v326;
    (*(v117 + 40))(v121, v117);
    (*(v333 + 8))(v80, v121);
    v124 = sub_1ABA7E1E0(v123, 1, v116);
    v125 = v332;
    if (v124 != 1)
    {
      v133 = v325;
      v134 = v320;
      (*(v325 + 32))(v320, v123, v116);
      (*(v133 + 16))(v318, v134, v116);
      swift_getAssociatedConformanceWitness();

      v135 = v322;
      v136 = v344;
      CustomGraphDateRelationship.init<A>(from:initializationResources:)();
      v344 = v136;
      if (!v136)
      {
        if (sub_1ABA7E1E0(v135, 1, v315) == 1)
        {
          (*(v133 + 8))(v134, v116);
          sub_1ABAB480C(v135, &qword_1EB4D5F20, &qword_1ABF4F358);
          return;
        }

        v164 = v310;
        sub_1ABCF9424();
        v165 = v311;
        swift_beginAccess();
        sub_1ABB4DE30();
        v166 = *(*(v165 + 16) + 16);
        sub_1ABB4E234(v166);
        v167 = *(v165 + 16);
        *(v167 + 16) = v166 + 1;
        sub_1ABD0AD58();
        *(v165 + 16) = v167;
        swift_endAccess();
        sub_1ABD0ADB0(v164, type metadata accessor for CustomGraphDateRelationship);
      }

      v118 = *(v133 + 8);
      v119 = v134;
      v120 = v116;
      goto LABEL_60;
    }

    (*(v323 + 8))(v123, v324);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v126 = sub_1ABF237F4();
    sub_1ABA7AA24(v126, qword_1ED871B40);
    v127 = *(v125 + 16);
    v128 = v319;
    v127(v319, v337, v122);
    v106 = sub_1ABF237D4();
    v107 = sub_1ABF24664();
    if (!os_log_type_enabled(v106, v107))
    {

      (*(v125 + 8))(v128, v122);
      return;
    }

    v129 = v125;
    v109 = swift_slowAlloc();
    v337 = swift_slowAlloc();
    *&v339 = v337;
    *v109 = 136642819;
    v127(v327, v128, v122);
    v130 = sub_1ABF23C94();
    v132 = v131;
    (*(v129 + 8))(v128, v122);
LABEL_49:
    v113 = sub_1ABADD6D8(v130, v132, &v339);
    goto LABEL_50;
  }

  v84 = sub_1ABF25054();

  if (v84)
  {
    goto LABEL_26;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_167:
    swift_once();
LABEL_122:
    v229 = sub_1ABF237F4();
    sub_1ABA7AA24(v229, qword_1ED871B40);
    v230 = v332;
    v231 = *(v332 + 16);
    v232 = v295;
    v231(v295, v84, v80);
    v106 = sub_1ABF237D4();
    v233 = sub_1ABF24664();
    if (os_log_type_enabled(v106, v233))
    {
      v234 = swift_slowAlloc();
      v337 = swift_slowAlloc();
      *&v339 = v337;
      *v234 = 136642819;
      v231(v327, v232, v80);
      v235 = sub_1ABF23C94();
      v237 = v236;
      (*(v230 + 8))(v232, v80);
      v238 = sub_1ABADD6D8(v235, v237, &v339);

      *(v234 + 4) = v238;
      _os_log_impl(&dword_1ABA78000, v106, v233, "Failed to parse %{sensitive}s.", v234, 0xCu);
      v239 = v337;
      sub_1ABA84B54(v337);
      MEMORY[0x1AC5AB8B0](v239, -1, -1);
      v151 = v234;
      goto LABEL_53;
    }

    (*(v230 + 8))(v232, v80);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v339);
  if (v339 == v87 && *(&v339 + 1) == v331)
  {

    goto LABEL_43;
  }

  v138 = sub_1ABF25054();

  if (v138)
  {
LABEL_43:
    v139 = v336;

    v80 = v335;
    v140 = v316;
    a2 = v337;
    (*(v334 + 32))(v335);
    v141 = v317;
    (*(v117 + 40))(v139, v117);
    (*(v333 + 8))(v140, v139);
    if (sub_1ABA7E1E0(v141, 1, v116) == 1)
    {
      (*(v323 + 8))(v141, v324);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v142 = sub_1ABF237F4();
      sub_1ABA7AA24(v142, qword_1ED871B40);
      v71 = v332;
      v143 = *(v332 + 16);
      v144 = v341;
      goto LABEL_47;
    }

    v152 = v325;
    v153 = v314;
    (*(v325 + 32))(v314, v141, v116);
    v154 = v313;
    (*(v152 + 16))(v313, v153, v116);
    v155 = type metadata accessor for CustomGraphPerson(0);
    v156 = sub_1ABD09EBC(&unk_1EB4D7E80);
    v157 = swift_getAssociatedConformanceWitness();
    v158 = v344;
    CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v339, v154, v155, v116, v156, v157);
    v344 = v158;
    if (!v158)
    {
      v159 = v340;
      if (v340)
      {
        v160 = v304;
        swift_beginAccess();
        sub_1ABB4DEA8();
        v161 = *(*(v160 + 16) + 16);
        sub_1ABB4E2AC(v161);
LABEL_57:
        v162 = *(v160 + 16);
        *(v162 + 16) = v161 + 1;
        v163 = v162 + (v161 << 6);
        *(v163 + 32) = v339;
        *(v163 + 48) = v159;
        *(v163 + 56) = v341[0];
        *(v163 + 72) = v341[1];
        *(v163 + 88) = v342;
        *(v160 + 16) = v162;
        swift_endAccess();
        goto LABEL_76;
      }
    }

    goto LABEL_76;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_169:
    swift_once();
LABEL_137:
    v251 = sub_1ABF237F4();
    sub_1ABA7AA24(v251, qword_1ED871B40);
    v252 = *(v332 + 16);
    v252(v294, v337, v335);
    v106 = sub_1ABF237D4();
    v253 = sub_1ABF24664();
    if (os_log_type_enabled(v106, v253))
    {
      v109 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      *&v339 = v254;
      *v109 = 136642819;
      v255 = v327;
      v256 = &v326;
LABEL_139:
      v257 = *(v256 - 32);
      v258 = v335;
      v252(v255, v257, v335);
      v259 = sub_1ABF23C94();
      v261 = v260;
      (*(v332 + 8))(v257, v258);
      v262 = sub_1ABADD6D8(v259, v261, &v339);

      *(v109 + 4) = v262;
      _os_log_impl(&dword_1ABA78000, v106, v253, "Failed to parse %{sensitive}s.", v109, 0xCu);
      sub_1ABA84B54(v254);
      v150 = v254;
      goto LABEL_52;
    }

    v118 = *(v332 + 8);
    v266 = &v326;
    goto LABEL_149;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v339);
  a2 = *(&v339 + 1);
  v168 = v339 == v87 && *(&v339 + 1) == v331;
  v84 = v336;
  if (v168)
  {

    goto LABEL_71;
  }

  v71 = sub_1ABF25054();

  if (v71)
  {
LABEL_71:
    v71 = v332;

    v80 = v335;
    v169 = v307;
    a2 = v337;
    (*(v334 + 32))(v335);
    v170 = v308;
    (*(v117 + 40))(v84, v117);
    (*(v333 + 8))(v169, v84);
    if (sub_1ABA7E1E0(v170, 1, v116) == 1)
    {
      (*(v323 + 8))(v170, v324);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v171 = sub_1ABF237F4();
      sub_1ABA7AA24(v171, qword_1ED871B40);
      v143 = *(v71 + 16);
      v144 = &v318;
      goto LABEL_47;
    }

    v152 = v325;
    v153 = v306;
    (*(v325 + 32))(v306, v170, v116);
    v172 = v305;
    (*(v152 + 16))(v305, v153, v116);
    v173 = sub_1ABD19740();
    v174 = swift_getAssociatedConformanceWitness();
    v175 = v344;
    CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v339, v172, &type metadata for CustomGraphLocation, v116, v173, v174);
    v344 = v175;
    if (!v175)
    {
      v159 = v340;
      if (v340)
      {
        v160 = v301;
        swift_beginAccess();
        sub_1ABB4DD28();
        v161 = *(*(v160 + 16) + 16);
        sub_1ABB4E12C(v161);
        goto LABEL_57;
      }
    }

LABEL_76:
    (*(v152 + 8))(v153, v116);
    return;
  }

  if (v330 < 0xA1)
  {
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v176 = v331;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_171:
    swift_once();
LABEL_153:
    v270 = sub_1ABF237F4();
    sub_1ABA7AA24(v270, qword_1ED871B40);
    v252 = *(v332 + 16);
    v252(v290, v337, v335);
    v106 = sub_1ABF237D4();
    v253 = sub_1ABF24664();
    if (os_log_type_enabled(v106, v253))
    {
      v109 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      *&v339 = v254;
      *v109 = 136642819;
      v255 = v327;
      v256 = &v322;
      goto LABEL_139;
    }

    v118 = *(v332 + 8);
    v266 = &v322;
LABEL_149:
    v119 = *(v266 - 32);
    v120 = v335;
    goto LABEL_60;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v339);
  if (v339 == v87 && *(&v339 + 1) == v176)
  {

    goto LABEL_88;
  }

  v114 = sub_1ABF25054();

  if (v114)
  {
LABEL_88:
    v71 = v332;

    v80 = v335;
    v178 = v303;
    a2 = v337;
    (*(v334 + 32))(v335, v334);
    v179 = swift_getAssociatedConformanceWitness();
    (*(v179 + 32))(&v339, v84, v179);
    (*(v333 + 8))(v178, v84);
    if (BYTE8(v339))
    {
      if (qword_1ED871B38 == -1)
      {
LABEL_90:
        v187 = sub_1ABF237F4();
        sub_1ABA7AA24(v187, qword_1ED871B40);
        v143 = *(v71 + 16);
        v144 = &v334;
LABEL_47:
        v145 = *(v144 - 32);
        v143(v145, a2, v80);
        v106 = sub_1ABF237D4();
        v107 = sub_1ABF24664();
        if (os_log_type_enabled(v106, v107))
        {
          v146 = v71;
          v109 = swift_slowAlloc();
          v337 = swift_slowAlloc();
          *&v339 = v337;
          *v109 = 136642819;
          v143(v327, v145, v80);
          v130 = sub_1ABF23C94();
          v132 = v147;
          (*(v146 + 8))(v145, v80);
          goto LABEL_49;
        }

        v118 = *(v71 + 8);
        v119 = v145;
LABEL_24:
        v120 = v80;
LABEL_60:
        v118(v119, v120);
        return;
      }

LABEL_162:
      swift_once();
      goto LABEL_90;
    }

    v188 = v344;
    sub_1ABC4A630(v339, v180, v181, v182, v183, v184, v185, v186);
    v344 = v188;
    if (!v188)
    {
      v189 = v338;
      p_AssociatedConformanceWitness = &v331;
LABEL_93:
      v191 = *(p_AssociatedConformanceWitness - 32);
      swift_beginAccess();
      sub_1ABB4DD40();
      v192 = *(*(v191 + 16) + 16);
      sub_1ABB4E144(v192);
      v193 = *(v191 + 16);
      *(v193 + 16) = v192 + 1;
      *(v193 + 8 * v192 + 32) = v189;
LABEL_94:
      *(v191 + 16) = v193;
      return;
    }

    return;
  }

  if (v330 == 161)
  {
    __break(1u);
    goto LABEL_164;
  }

  v194 = v87;
  v87 = v300;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_173;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v339);
  v195 = v339 == v194 && *(&v339 + 1) == v176;
  v80 = v335;
  v84 = v337;
  if (v195)
  {

    goto LABEL_104;
  }

  v196 = sub_1ABF25054();

  if ((v196 & 1) == 0)
  {
    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), &v339);
      if (v339 != v194 || *(&v339 + 1) != v176)
      {
        v218 = sub_1ABF25054();

        if (v218)
        {
LABEL_120:

          v219 = v297;
          (*(v334 + 32))(v80, v334);
          v220 = v336;
          v221 = swift_getAssociatedConformanceWitness();
          (*(v221 + 32))(&v339, v220, v221);
          (*(v333 + 8))(v219, v220);
          if ((BYTE8(v339) & 1) == 0)
          {
            v240 = v344;
            sub_1ABC4CBC0(v339, v222, v223, v224, v225, v226, v227, v228, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312);
            v344 = v240;
            if (!v240)
            {
              v241 = v338;
              swift_beginAccess();
              sub_1ABB4DE48();
              v242 = *(*(a9 + 16) + 16);
              sub_1ABB4E24C(v242);
              v243 = *(a9 + 16);
              *(v243 + 16) = v242 + 1;
              *(v243 + 8 * v242 + 32) = v241;
              *(a9 + 16) = v243;
            }

            return;
          }

          if (qword_1ED871B38 == -1)
          {
            goto LABEL_122;
          }

          goto LABEL_167;
        }

        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), &v339);
          if (v339 == v194 && *(&v339 + 1) == v331)
          {

            goto LABEL_135;
          }

          v245 = sub_1ABF25054();

          if (v245)
          {
LABEL_135:

            v246 = v293;
            (*(v334 + 32))(v335, v334);
            v247 = v336;
            swift_getAssociatedConformanceWitness();
            v248 = BaseEntityFactObjectProtocol.asDouble.getter();
            v250 = v249;
            (*(v333 + 8))(v246, v247);
            if ((v250 & 1) == 0)
            {
              v191 = a10;
              swift_beginAccess();
              sub_1ABB4DCB0();
              v263 = *(*(a10 + 16) + 16);
              sub_1ABB4E0CC(v263);
              v193 = *(a10 + 16);
              *(v193 + 16) = v263 + 1;
              *(v193 + 8 * v263 + 32) = v248;
              goto LABEL_94;
            }

            if (qword_1ED871B38 == -1)
            {
              goto LABEL_137;
            }

            goto LABEL_169;
          }

          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[1752], *(_Records_GDEntityPredicate_records + 439), *(_Records_GDEntityPredicate_records + 440), &v339);
            if (v339 == v194 && *(&v339 + 1) == v331)
            {
            }

            else
            {
              v265 = sub_1ABF25054();

              if ((v265 & 1) == 0)
              {
                return;
              }
            }

            v267 = v289;
            (*(v334 + 32))(v335);
            v268 = v292;
            v269 = v336;
            (*(AssociatedConformanceWitness + 40))(v336);
            (*(v333 + 8))(v267, v269);
            if (sub_1ABA7E1E0(v268, 1, v329) != 1)
            {
              v271 = v325;
              v272 = v291;
              v273 = v329;
              (*(v325 + 32))(v291, v292, v329);
              v274 = v288;
              (*(v271 + 16))(v288, v272, v273);
              v275 = sub_1ABD19E78();
              v276 = swift_getAssociatedConformanceWitness();
              v277 = v344;
              CustomGraphSoftwareRelationship.init<A>(from:initializationResources:)(v274, &type metadata for CustomGraphSoftware, v273, v275, v276);
              v344 = v277;
              if (!v277)
              {
                v278 = v340;
                if (v340)
                {
                  v279 = BYTE8(v341[0]);
                  v280 = *&v341[0];
                  v281 = v339;
                  swift_beginAccess();
                  sub_1ABB4DF38();
                  v282 = *(*(a11 + 16) + 16);
                  sub_1ABB4E33C(v282);
                  v283 = *(a11 + 16);
                  *(v283 + 16) = v282 + 1;
                  v284 = v283 + 40 * v282;
                  *(v284 + 32) = v281;
                  *(v284 + 48) = v278;
                  *(v284 + 56) = v280;
                  *(v284 + 64) = v279 & 1;
                  *(a11 + 16) = v283;
                  swift_endAccess();
                }
              }

              (*(v325 + 8))(v291, v329);
              return;
            }

            (*(v323 + 8))(v292, v324);
            if (qword_1ED871B38 == -1)
            {
              goto LABEL_153;
            }

            goto LABEL_171;
          }

LABEL_175:
          __break(1u);
          return;
        }

LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

LABEL_119:

      goto LABEL_120;
    }

LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

LABEL_104:
  v114 = v332;

  v197 = v298;
  (*(v334 + 32))(v80, v334);
  v198 = v336;
  v199 = swift_getAssociatedConformanceWitness();
  (*(v199 + 32))(&v339, v198, v199);
  (*(v333 + 8))(v197, v198);
  if (BYTE8(v339))
  {
    if (qword_1ED871B38 == -1)
    {
LABEL_106:
      v207 = sub_1ABF237F4();
      sub_1ABA7AA24(v207, qword_1ED871B40);
      v208 = *(v114 + 16);
      v208(v87, v84, v80);
      v106 = sub_1ABF237D4();
      v209 = sub_1ABF24664();
      if (os_log_type_enabled(v106, v209))
      {
        v210 = v87;
        v211 = v114;
        v109 = swift_slowAlloc();
        v337 = swift_slowAlloc();
        *&v339 = v337;
        *v109 = 136642819;
        v208(v327, v210, v80);
        v212 = sub_1ABF23C94();
        v214 = v213;
        (*(v211 + 8))(v210, v80);
        v215 = sub_1ABADD6D8(v212, v214, &v339);

        *(v109 + 4) = v215;
        v148 = v209;
        goto LABEL_51;
      }

      v118 = *(v114 + 8);
      v119 = v87;
      goto LABEL_24;
    }

LABEL_165:
    swift_once();
    goto LABEL_106;
  }

  v216 = v344;
  sub_1ABC4A630(v339, v200, v201, v202, v203, v204, v205, v206);
  v344 = v216;
  if (!v216)
  {
    v189 = v338;
    p_AssociatedConformanceWitness = &AssociatedConformanceWitness;
    goto LABEL_93;
  }
}

void CustomGraphGamingActivityEvent.init(typedId:all_name:all_date:all_attendees:all_locations:all_startLocation:all_endLocation:all_activityTypeObject:all_activityType:all_confidence:all_software:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7E2A8();
  v26 = v25;
  sub_1ABA88F38();
  v28 = v27;
  sub_1ABD1B3D0();
  v29 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v29);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9F7AC();
  sub_1ABD1BD64();
  v31 = sub_1ABB2B834(v28);
  v23[1] = v28;
  v23[2] = v31;
  v23[3] = v32;
  v33 = sub_1ABA8B2DC();
  v34 = type metadata accessor for CustomGraphGamingActivityEvent(v33);
  sub_1ABAB1F84(v34);
  sub_1ABD1BA68();
  sub_1ABA897F0();
  sub_1ABD1AE28();
  sub_1ABAB5FE0();
  sub_1ABA89D74();
  sub_1ABAA2490();
  sub_1ABD1BEFC();
  sub_1ABD1B190(v35);
  sub_1ABAAFB28();
  sub_1ABAA2B08(v36);
  if (*(a23 + 16))
  {
    v40 = *(a23 + 32);
    v26 = *(a23 + 56);
    v24 = *(a23 + 64);

    v38 = v40;
  }

  else
  {
    *&v38 = sub_1ABD1BFDC();
  }

  v39 = v23 + *(v34 + 56);
  *v39 = a23;
  *(v39 + 8) = v38;
  *(v39 + 3) = v37;
  *(v39 + 4) = v26;
  v39[40] = v24;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABCB0C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6565646E65747461 && a2 == 0xE900000000000073;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x636F4C7472617473 && a2 == 0xED00006E6F697461;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001ABF8D5E0 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6572617774666F73 && a2 == 0xE800000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1ABF25054();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}