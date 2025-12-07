uint64_t sub_232C0B9D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v9 = sub_232B2D120(v8);
  MEMORY[0x28223BE20](v9);
  sub_232B3516C();
  v192 = v10 - v11;
  sub_232B20600();
  MEMORY[0x28223BE20](v12);
  sub_232B55558();
  v199 = v13;
  v14 = sub_232B554F0();
  v15 = type metadata accessor for CalendarEvent(v14);
  sub_232B13F24();
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v198 = v18 - v17;
  v19 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v20 = sub_232B2D120(v19);
  MEMORY[0x28223BE20](v20);
  sub_232B3516C();
  v185 = v21 - v22;
  sub_232B20600();
  MEMORY[0x28223BE20](v23);
  sub_232B55558();
  v194 = v24;
  sub_232B554F0();
  v197 = sub_232CE8AE0();
  sub_232B48F0C();
  v205 = v25;
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  v204 = v28 - v27;
  sub_232B554F0();
  v200 = sub_232CE8F00();
  sub_232B48F0C();
  v190 = v29;
  MEMORY[0x28223BE20](v30);
  sub_232B3516C();
  v189 = v31 - v32;
  sub_232B20600();
  MEMORY[0x28223BE20](v33);
  v187 = &v177[-v34];
  sub_232B20600();
  MEMORY[0x28223BE20](v35);
  sub_232B55558();
  v188 = v36;
  sub_232B554F0();
  sub_232CE8E90();
  sub_232B48F0C();
  v195 = v38;
  v196 = v37;
  MEMORY[0x28223BE20](v37);
  sub_232B20704();
  v203 = v40 - v39;
  sub_232B554F0();
  sub_232CE8D10();
  sub_232B48F0C();
  v201 = v41;
  v202 = v42;
  MEMORY[0x28223BE20](v41);
  sub_232B3516C();
  v191 = v43 - v44;
  sub_232B20600();
  MEMORY[0x28223BE20](v45);
  v193 = &v177[-v46];
  sub_232B20600();
  MEMORY[0x28223BE20](v47);
  v49 = &v177[-v48];
  MEMORY[0x28223BE20](v50);
  sub_232B55558();
  v206 = v51;
  sub_232B554F0();
  v52 = sub_232CE89D0();
  sub_232B48F0C();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  sub_232B20704();
  v58 = v57 - v56;
  v207 = a2;
  v208 = a3;
  sub_232CE8990();
  sub_232B48080();
  sub_232CEA390();
  LOBYTE(a3) = v59;
  (*(v54 + 8))(v58, v52);
  if (a3)
  {
    sub_232B55484();
    v63 = v15;
    return sub_232B12504(v60, v61, v62, v63);
  }

  v186 = v15;
  v184 = a4;
  v64 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v64)
  {
    goto LABEL_13;
  }

  v65 = v64;
  v66 = [v64 startDate];
  if (!v66)
  {

    goto LABEL_13;
  }

  v67 = v66;
  v183 = v65;
  sub_232CE8CF0();

  v68 = v201;
  v69 = v202 + 32;
  v70 = *(v202 + 32);
  v70(v206, v49, v201);
  v71 = [a1 type];
  v72 = sub_232CE9D50();
  v74 = v73;

  sub_232C0CB84(a1);
  result = *MEMORY[0x277D04198];
  if (!*MEMORY[0x277D04198])
  {
    __break(1u);
    goto LABEL_86;
  }

  sub_232CE9D50();
  sub_232C0DC30();
  v78 = v78 && v74 == v77;
  v79 = MEMORY[0x277D040B0];
  if (v78)
  {
    goto LABEL_27;
  }

  sub_232C0DA64(v76);
  sub_232C0DCCC();
  if (v52)
  {
LABEL_11:
    v182 = 1;
    goto LABEL_29;
  }

  result = *v79;
  if (!*v79)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  sub_232CE9D50();
  sub_232C0DC30();
  if (v78 && v74 == v81)
  {
    goto LABEL_27;
  }

  sub_232C0DA64(v80);
  sub_232C0DCCC();
  if (v52)
  {
    goto LABEL_11;
  }

  result = *MEMORY[0x277D04190];
  if (!*MEMORY[0x277D04190])
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  sub_232CE9D50();
  sub_232C0DC30();
  if (v78 && v74 == v84)
  {
LABEL_27:
    v182 = 1;
  }

  else
  {
    v182 = sub_232C0DA64(v83);
  }

LABEL_29:
  result = *MEMORY[0x277D040A8];
  if (!*MEMORY[0x277D040A8])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  sub_232CE9D50();
  sub_232C0DC30();
  v88 = v78 && v74 == v87;
  v180 = v70;
  if (v88)
  {
    goto LABEL_49;
  }

  sub_232C0DA64(v86);
  sub_232C0DCCC();
  if (v52)
  {
    goto LABEL_50;
  }

  result = *v79;
  if (!*v79)
  {
    goto LABEL_88;
  }

  sub_232CE9D50();
  sub_232C0DC30();
  if (v78 && v74 == v90)
  {
    goto LABEL_49;
  }

  sub_232C0DA64(v89);
  sub_232C0DCCC();
  if (v52)
  {
LABEL_50:

    goto LABEL_51;
  }

  result = *MEMORY[0x277D040A0];
  if (!*MEMORY[0x277D040A0])
  {
LABEL_90:
    __break(1u);
    return result;
  }

  if (v72 == sub_232CE9D50() && v74 == v92)
  {
LABEL_49:

    goto LABEL_50;
  }

  v94 = sub_232CEA750();

  if ((v94 & 1) == 0)
  {
    if (v182)
    {
      v178 = 0;
      goto LABEL_52;
    }

    (*(v202 + 8))(v206, v68);

LABEL_13:
    sub_232B55484();
    v63 = v186;
    return sub_232B12504(v60, v61, v62, v63);
  }

LABEL_51:
  v178 = 1;
  if ((v182 & 1) == 0)
  {
    v181 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

LABEL_52:
  sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
  sub_232B4D640();
  v96 = sub_232CE8E80();
  sub_232B48F0C();
  v98 = v97;
  v100 = *(v99 + 72);
  v101 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_232CF8180;
  v103 = v102 + v101;
  v104 = *(v98 + 104);
  v104(v103, *MEMORY[0x277CC9980], v96);
  v104(v103 + v100, *MEMORY[0x277CC99A0], v96);
  v104(v103 + 2 * v100, *MEMORY[0x277CC99A8], v96);
  v95 = sub_232C0D110(v102);
  v181 = v95;
LABEL_54:
  v207 = 0x65626D754E796144;
  v208 = 0xE900000000000072;
  MEMORY[0x28223BE20](v95);
  sub_232B55380();
  v105 = &v207;
  *(v106 - 16) = &v207;
  sub_232C0DBAC();
  v107 = sub_232C0A5F8();
  v179 = v69;
  if (v107 || (v207 = 0x6D754E68746E6F4DLL, v208 = 0xEB00000000726562, MEMORY[0x28223BE20](v107), sub_232B55380(), *(v108 - 16) = &v207, sub_232C0DBAC(), v107 = sub_232C0A5F8()) || (sub_232C0DB30(), MEMORY[0x28223BE20](v109), sub_232B55380(), *(v110 - 16) = &v207, sub_232C0DBAC(), v107 = sub_232C0A5F8()))
  {
    v207 = 0x65626D754E796144;
    v208 = 0xE900000000000072;
    MEMORY[0x28223BE20](v107);
    sub_232B55380();
    *(v111 - 16) = &v207;
    sub_232C0DBAC();
    v112 = sub_232C0A5F8();
    if (v112)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      sub_232B4D640();
      v113 = sub_232CE8E80();
      sub_232B48F0C();
      v115 = v114;
      v116 = sub_232C0DBF0();
      *(v116 + 16) = xmmword_232CF6460;
      (*(v115 + 104))(&v207 + v116, *MEMORY[0x277CC9968], v113);
      v112 = sub_232C0DC48();
      v181 = v112;
    }

    v207 = 0x6D754E68746E6F4DLL;
    v208 = 0xEB00000000726562;
    MEMORY[0x28223BE20](v112);
    sub_232B55380();
    *(v117 - 16) = &v207;
    sub_232C0DBAC();
    if (sub_232C0A5F8())
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      sub_232B4D640();
      v118 = sub_232CE8E80();
      sub_232B48F0C();
      v120 = v119;
      v121 = sub_232C0DBF0();
      *(v121 + 16) = xmmword_232CF6460;
      (*(v120 + 104))(&v207 + v121, *MEMORY[0x277CC9998], v118);
      v122 = sub_232C0DC48();
      sub_232C0DC64();
      v123 = v204;
    }

    else
    {
      sub_232C0DC64();
      v123 = v204;
      v122 = v181;
    }

    sub_232C0DB30();
    MEMORY[0x28223BE20](v124);
    sub_232B55380();
    *(v125 - 16) = &v207;
    sub_232C0DBAC();
    v126 = sub_232C0A5F8();

    if (v126)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      sub_232B4D640();
      v127 = sub_232CE8E80();
      sub_232B48F0C();
      v129 = v128;
      v130 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_232CF6460;
      (*(v129 + 104))(v131 + v130, *MEMORY[0x277CC9988], v127);
      sub_232C0A394(v131, v122);
    }

    v132 = v205;
  }

  else
  {

    if (!v178)
    {
      sub_232C0DC64();
      v123 = v204;
      v132 = v205;
      v133 = v183;
      goto LABEL_66;
    }

    sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
    sub_232B4D640();
    v164 = sub_232CE8E80();
    sub_232B48F0C();
    v166 = v165;
    v168 = *(v167 + 72);
    v169 = (*(v165 + 80) + 32) & ~*(v165 + 80);
    v170 = swift_allocObject();
    *(v170 + 16) = xmmword_232CF8180;
    v171 = v170 + v169;
    v105 = *(v166 + 104);
    (v105)(v171, *MEMORY[0x277CC9988], v164);
    (v105)(v171 + v168, *MEMORY[0x277CC9998], v164);
    (v105)(v171 + 2 * v168, *MEMORY[0x277CC9968], v164);
    sub_232C0DC48();
    sub_232C0DC64();
    v123 = v204;
    v132 = v205;
  }

  v133 = v183;
LABEL_66:
  sub_232CE8E50();
  v134 = [v133 startTimeZone];
  if (v134)
  {
    v135 = v134;
    v136 = v187;
    sub_232CE8EE0();

    v137 = v190;
    v138 = v188;
    v139 = v200;
    (*(v190 + 32))(v188, v136, v200);
    (*(v137 + 16))(v189, v138, v139);
    v132 = v205;
    sub_232CE8E70();
    (*(v137 + 8))(v138, v139);
    v123 = v204;
  }

  sub_232CE8E20();
  v140 = [v133 startTimeZone];
  if (v140)
  {
    v141 = v140;
    v142 = v194;
    sub_232CE8EE0();

    v143 = 0;
  }

  else
  {
    v143 = 1;
    v142 = v194;
  }

  v144 = v186;
  sub_232B12504(v142, v143, 1, v200);
  sub_232CE8AD0();
  (*(v132 + 16))(*(v144 + 20) + 0x6D754E68746E6F4DLL, v123, 0xEB00000000726562);
  v199 = *(v144 + 24);
  sub_232B55484();
  sub_232B12504(v145, v146, v147, 0xEB00000000726562);
  MEMORY[0x6D754E68746E6F4D] = (v182 & 1) == 0;
  sub_232B55484();
  sub_232B12504(v148, v149, v150, 0xEB00000000726562);
  v151 = v183;
  v152 = [v183 endDate];
  if (v152)
  {
    v153 = v152;
    v154 = v191;
    sub_232CE8CF0();

    v155 = v193;
    v156 = v201;
    v180(v193, v154, v201);
    v157 = v192;
    v158 = v203;
    sub_232CE8E20();

    sub_232B12504(v157, 0, 1, 0xEB00000000726562);
    sub_232C0D948(v157, v105, &qword_27DDC70B0, &unk_232CF81C0);
    if (!sub_232B12480(v105, 1, 0xEB00000000726562))
    {
      v159 = [v183 endTimeZone];
      if (v159)
      {
        v160 = v159;
        v161 = v185;
        sub_232CE8EE0();

        v162 = 0;
      }

      else
      {
        v162 = 1;
        v161 = v185;
      }

      sub_232B12504(v161, v162, 1, v200);
      sub_232CE8AD0();
      v158 = v203;
      v155 = v193;
    }

    v172 = *(v202 + 8);
    v172(v155, v156);
    (*(v205 + 8))(v204, 0xEB00000000726562);
    (*(v195 + 8))(v158, v196);
    v172(v206, v156);
    sub_232B552D0(v105, v199 + 0x6D754E68746E6F4DLL);
    v163 = v184;
  }

  else
  {

    (*(v132 + 8))(v123, 0xEB00000000726562);
    (*(v195 + 8))(v203, v196);
    (*(v202 + 8))(v206, v201);
    v163 = v184;
  }

  sub_232C0D848(0x6D754E68746E6F4DLL, v163, type metadata accessor for CalendarEvent);
  sub_232C0DC3C();
  sub_232B12504(v173, v174, v175, v176);
  sub_232B13790(v105, &qword_27DDC70B0, &unk_232CF81C0);
  return sub_232C0D7F4();
}

void sub_232C0CB84(void *a1)
{
  v1 = sub_232C0D76C(a1);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = sub_232B26B10();
  if (!v3)
  {
LABEL_24:

    return;
  }

  v4 = v3;
  if (v3 < 1)
  {
    goto LABEL_29;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2383922C0](v5, v2);
    }

    else
    {
      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = [v7 type];
    v10 = sub_232CE9D50();
    v12 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232C0DC3C();
      sub_232B35ECC();
      v6 = v23;
    }

    v13 = *(v6 + 16);
    if (v13 >= *(v6 + 24) >> 1)
    {
      sub_232C0DC3C();
      sub_232B35ECC();
      v6 = v24;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;
    v15 = sub_232C0CB84();
    v16 = *(v15 + 16);
    v17 = *(v6 + 16);
    if (__OFADD__(v17, v16))
    {
      break;
    }

    v18 = v15;
    v19 = *(v6 + 24) >> 1;
    if (v19 < v17 + v16)
    {
      sub_232C0DC3C();
      sub_232B35ECC();
      v6 = v25;
      v17 = *(v25 + 16);
      v19 = *(v25 + 24) >> 1;
      if (*(v18 + 16))
      {
LABEL_15:
        if (v19 - v17 < v16)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v20 = *(v6 + 16);
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_28;
          }

          *(v6 + 16) = v22;
        }

        goto LABEL_21;
      }
    }

    else if (v16)
    {
      goto LABEL_15;
    }

    if (v16)
    {
      goto LABEL_26;
    }

LABEL_21:
    ++v5;

    if (v4 == v5)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_232C0CDEC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232C0A77C(a2);
}

uint64_t sub_232C0CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_232CEA750() & 1;
  }
}

uint64_t sub_232C0CECC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v7[0] = a4;
  v7[1] = a5;
  v8 = a6;
  return static DUFoundInEventLLMImplementationError.== infix(_:_:)(v9, v7) & 1;
}

void sub_232C0CF18(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_232B124A8(&qword_27DDC7B88, &qword_232CFBE08), v2 = sub_232C0DBB8(), v3 = v2, (v24 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v22 = v1;
    v23 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v23 + 8 * v4++);
      sub_232CE9D50();
      sub_232CEA820();
      v25 = v6;
      sub_232CE9E40();
      v7 = sub_232CEA850();

      v8 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        v13 = sub_232CE9D50();
        v15 = v14;
        if (v13 == sub_232CE9D50() && v15 == v16)
        {

          goto LABEL_17;
        }

        v18 = sub_232CEA750();

        if (v18)
        {

          goto LABEL_17;
        }

        v7 = v9 + 1;
      }

      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v25;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v21;
LABEL_17:
      v1 = v22;
      if (v4 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_232C0D110(uint64_t a1)
{
  v2 = sub_232CE8E80();
  sub_232B48F0C();
  v33 = v3;
  MEMORY[0x28223BE20](v4);
  sub_232B3516C();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  sub_232B55558();
  v36 = v9;
  if (!*(a1 + 16))
  {
    v11 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  sub_232B124A8(&qword_27DDC7B80, qword_232CFE500);
  result = sub_232C0DBB8();
  v11 = result;
  v32 = *(a1 + 16);
  if (!v32)
  {
LABEL_15:

    return v11;
  }

  v12 = 0;
  v35 = result + 56;
  v30 = a1;
  v31 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v13 = (v33 + 8);
  while (v12 < *(a1 + 16))
  {
    v14 = *(v33 + 72);
    v34 = v12 + 1;
    v15 = *(v33 + 16);
    v15(v36, v31 + v14 * v12, v2);
    sub_232C0DB18();
    sub_232C0D900(&qword_2814E25D0, v16, MEMORY[0x277CC99D8]);
    v17 = sub_232CE9C80();
    v18 = ~(-1 << *(v11 + 32));
    while (1)
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = *(v35 + 8 * v20);
      v22 = 1 << (v17 & v18);
      if ((v22 & v21) == 0)
      {
        break;
      }

      v23 = v11;
      v15(v7, *(v11 + 48) + v19 * v14, v2);
      sub_232C0DB18();
      sub_232C0D900(&qword_2814E25C8, v24, MEMORY[0x277CC99E0]);
      v25 = sub_232CE9CF0();
      v26 = *v13;
      (*v13)(v7, v2);
      if (v25)
      {
        result = (v26)(v36, v2);
        v11 = v23;
        goto LABEL_12;
      }

      v17 = v19 + 1;
      v11 = v23;
    }

    *(v35 + 8 * v20) = v22 | v21;
    result = (*(v33 + 32))(*(v11 + 48) + v19 * v14, v36, v2);
    v27 = *(v11 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_17;
    }

    *(v11 + 16) = v29;
LABEL_12:
    v12 = v34;
    a1 = v30;
    if (v34 == v32)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_232C0D410(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  sub_232B124A8(&qword_27DDC7B90, &qword_232CFBE10);
  result = sub_232C0DBB8();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_232CEA820();

    sub_232CE9E40();
    result = sub_232CEA850();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_232CEA750() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_232C0D594(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  sub_232B124A8(&qword_27DDC7B98, &qword_232CFBE18);
  result = sub_232C0DBB8();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 4 * v5++);
    sub_232CEA820();
    sub_232CEA840();
    result = sub_232CEA850();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 4 * v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 48) + 4 * v9) = v7;
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_232C0D710(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_232CE9D50();
  }

  return sub_232B2080C();
}

uint64_t sub_232C0D76C(void *a1)
{
  if (![a1 subResults])
  {
    return 0;
  }

  sub_232B4D640();
  sub_232B55094();
  v2 = sub_232CE9FE0();

  return v2;
}

uint64_t sub_232C0D7F4()
{
  v1 = sub_232B4D640();
  v2(v1);
  sub_232B13F24();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_232C0D848(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  v4 = sub_232B2080C();
  v5(v4);
  return a2;
}

uint64_t sub_232C0D8A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  v4 = sub_232B2080C();
  v5(v4);
  return a2;
}

uint64_t sub_232C0D900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232C0D948(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_232B124A8(a3, a4);
  sub_232B13F24();
  v5 = sub_232B2080C();
  v6(v5);
  return a2;
}

void sub_232C0D9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v26 + 8 * (v29 >> 6) + 64) |= 1 << v29;
  *(*(v26 + 48) + 8 * v29) = a26;
  v30 = (*(v26 + 56) + 16 * v29);
  *v30 = v28;
  v30[1] = v27;
}

uint64_t sub_232C0DA00()
{

  return sub_232C0D7F4();
}

uint64_t sub_232C0DA64(uint64_t a1)
{

  return sub_232CEA750();
}

uint64_t sub_232C0DA88()
{
  v5 = (*(v0 + 56) + 16 * v3);
  *v5 = v2;
  v5[1] = v1;
}

void sub_232C0DAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for NSTextCheckingKey(0, a2, a3, a4);
}

uint64_t sub_232C0DAD8()
{

  return sub_232CEA5C0();
}

uint64_t sub_232C0DAF8()
{

  return sub_232CEA5C0();
}

void sub_232C0DB68()
{
  v3 = *(*(*(v1 - 88) + 48) + 8 * v0);
}

uint64_t sub_232C0DB84()
{
  *(v1 - 88) = v0;

  return sub_232B20540();
}

uint64_t sub_232C0DBB8()
{

  return sub_232CEA4C0();
}

uint64_t sub_232C0DBD4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232C0DBF0()
{

  return swift_allocObject();
}

uint64_t sub_232C0DC48()
{
  v3 = *(v1 - 320);

  return sub_232C0A394(v0, v3);
}

uint64_t sub_232C0DC84()
{

  return sub_232C0D710(v1, v0);
}

uint64_t sub_232C0DC9C(uint64_t a1, SEL *a2)
{

  return sub_232C0D710(v2, a2);
}

id sub_232C0DCB4(id a1, SEL a2)
{
  v4 = *(v2 - 104);

  return [a1 a2];
}

uint64_t sub_232C0DCCC()
{
}

void sub_232C0DD2C(uint64_t a1)
{
  sub_232CE8AE0();
  if (v1 <= 0x3F)
  {
    sub_232C0DF78(319, &unk_2814E25F0, MEMORY[0x277CC8990]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_232C0DE24(uint64_t a1)
{
  sub_232B28F10();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_232C0DF78(319, &qword_2814E25E8, MEMORY[0x277CC9260]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_232C0DFCC(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_232C0DF78(319, &qword_27DDC7BC0, type metadata accessor for CalendarEvent);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      type metadata accessor for CGRect(319, v7, v8, v9);
      v2 = v13;
      if (v10 <= 0x3F)
      {
        type metadata accessor for CGPoint(319, v10, v11, v12);
        v2 = v14;
        if (v15 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_232C0DF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_232C0DFCC(uint64_t a1)
{
  if (!qword_27DDC7BB0)
  {
    sub_232B27EEC(&qword_27DDC7BB8, &unk_232CFBE60);
    v1 = sub_232CEA350();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDC7BB0);
    }
  }
}

void sub_232C0E030(void *result, uint64_t *a2)
{
  v5 = 0;
  v10 = MEMORY[0x277D84F90];
  v6 = result[2];
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v7 = *(type metadata accessor for DUStructuredExtractionResult(0) - 8);
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

    sub_232C0E678((result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5), a2, &v9);
    if (v2)
    {

      return;
    }

    ++v5;
    if (v9)
    {
      MEMORY[0x238391D50]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_232CEA000();
      }

      sub_232CEA020();
      v5 = v8;
    }
  }
}

uint64_t sub_232C0E1D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  v4 = swift_task_alloc();
  *(v2 + 200) = v4;
  *v4 = v2;
  v4[1] = sub_232C0E288;

  return sub_232B504C0(a2);
}

uint64_t sub_232C0E288(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_232C0E388, 0, 0);
}

uint64_t sub_232C0E388()
{
  v38 = v0;
  v1 = v0[26];
  if (v1)
  {
    v2 = v0[24];
    v36 = 0xD00000000000001BLL;
    v37 = 0x8000000232D08FE0;
    sub_232C0E030(v1, &v36);
    v4 = v3;

    v5 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (v6)
    {
      v7 = *(v2 + v5);
      v8 = v7;
    }

    else
    {
      v8 = [objc_allocWithZone(type metadata accessor for DUStructuredEntityResponse()) init];
      v7 = 0;
      v6 = *(v2 + v5);
    }

    *(v2 + v5) = v8;
    v9 = v8;
    v10 = v7;

    v11 = *(v2 + v5);
    if (v11 && (v12 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities, swift_beginAccess(), (v13 = *(v11 + v12)) != 0))
    {
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    v14 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
    swift_beginAccess();
    *&v9[v14] = v13;

    v15 = *(v2 + v5);
    if (v15)
    {
      v16 = v15;
      v17 = sub_232C09164();
      if (*v18)
      {
        sub_232C5E478(v4);
      }

      else
      {
      }

      (v17)(v0 + 2, 0);
    }

    else
    {
    }

    v19 = *(v2 + v5);
    if (v19)
    {
      v20 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
      swift_beginAccess();
      v21 = *&v19[v20];
      if (v21)
      {
        v22 = v19;
        v23 = v21;
        v24 = v21;
      }

      else
      {
        v25 = objc_allocWithZone(type metadata accessor for DUDebugInfo());
        v26 = v19;
        v24 = [v25 init];
        v23 = *&v19[v20];
      }

      *&v19[v20] = v24;
      v27 = v21;

      v28 = *(v2 + v5);
      if (v28)
      {
        v29 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
        swift_beginAccess();
        v30 = *(v28 + v29);
        if (v30)
        {
          v31 = v36;
          v32 = v37;
          swift_beginAccess();
          v33 = v30;
          MEMORY[0x238391C30](v31, v32);
          swift_endAccess();
        }
      }
    }
  }

  v34 = v0[1];

  return v34();
}

void sub_232C0E678(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v80 = a2;
  v83 = a3;
  v4 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  MEMORY[0x28223BE20](v4 - 8);
  *&v81 = &v77 - v5;
  v6 = sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v77 - v7;
  *&v82 = type metadata accessor for CalendarEvent(0);
  MEMORY[0x28223BE20](v82);
  v79 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v77 - v11;
  v13 = [objc_allocWithZone(type metadata accessor for DUStructuredEntity()) init];
  v15 = *a1;
  v14 = a1[1];
  v16 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title];
  swift_beginAccess();
  *v16 = v15;
  *(v16 + 1) = v14;

  v18 = a1[2];
  v17 = a1[3];
  v19 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type];
  swift_beginAccess();
  *v19 = v18;
  *(v19 + 1) = v17;

  v21 = a1[6];
  v20 = a1[7];
  v22 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_phoneNumber];
  swift_beginAccess();
  *v22 = v21;
  *(v22 + 1) = v20;

  v24 = a1[10];
  v23 = a1[11];
  v25 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_email];
  swift_beginAccess();
  *v25 = v24;
  *(v25 + 1) = v23;

  v26 = type metadata accessor for DUStructuredExtractionResult(0);
  sub_232B26744(a1 + v26[10], v12, &qword_27DDC6AD8, &unk_232CF82F0);
  v27 = sub_232CE8C00();
  if (sub_232B12480(v12, 1, v27) == 1)
  {
    sub_232B267AC(v12, &qword_27DDC6AD8, &unk_232CF82F0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_232CE8B60();
    v29 = v30;
    (*(*(v27 - 8) + 8))(v12, v27);
  }

  v31 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_url];
  swift_beginAccess();
  *v31 = v28;
  v31[1] = v29;

  v32 = *(a1 + v26[11]);
  v33 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
  swift_beginAccess();
  *&v13[v33] = v32;

  sub_232B26744(a1 + v26[12], v8, &qword_27DDC70A8, &unk_232CF81B0);
  v34 = v82;
  if (sub_232B12480(v8, 1, v82) == 1)
  {
    sub_232B267AC(v8, &qword_27DDC70A8, &unk_232CF81B0);
    v35 = &off_2789A8000;
  }

  else
  {
    v78 = v26;
    v36 = v79;
    sub_232BA4C2C(v8, v79);
    v35 = &off_2789A8000;
    v37 = [objc_allocWithZone(type metadata accessor for DUCalendarEvent(0)) init];
    v38 = *v36;
    v39 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
    swift_beginAccess();
    v37[v39] = v38;
    v40 = *(v34 + 20);
    v41 = sub_232CE8AE0();
    v42 = &v36[v40];
    v43 = v81;
    (*(*(v41 - 8) + 32))(v81, v42, v41);
    sub_232B12504(v43, 0, 1, v41);
    v44 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_startDateComponents;
    swift_beginAccess();
    sub_232B55134(v43, &v37[v44]);
    swift_endAccess();
    v45 = &v36[*(v34 + 24)];
    v26 = v78;
    sub_232C0EFBC(v45, v43);
    v46 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_endDateComponents;
    swift_beginAccess();
    sub_232B55134(v43, &v37[v46]);
    swift_endAccess();
    v47 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
    swift_beginAccess();
    v48 = *&v13[v47];
    *&v13[v47] = v37;
  }

  v49 = (a1 + v26[13]);
  v51 = *v49;
  v50 = v49[1];
  v52 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_homeAutomationID];
  swift_beginAccess();
  *v52 = v51;
  *(v52 + 1) = v50;

  v53 = [objc_allocWithZone(type metadata accessor for DUDisplayInfo()) v35[128]];
  v54 = (a1 + v26[14]);
  v55 = &v53[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow];
  v56 = *v54;
  v81 = v54[1];
  v82 = v56;
  swift_beginAccess();
  v57 = v81;
  *v55 = v82;
  v55[1] = v57;
  v58 = (a1 + v26[15]);
  v59 = *v58;
  v60 = v58[1];
  v61 = &v53[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
  swift_beginAccess();
  *v61 = v59;
  v61[1] = v60;
  LOBYTE(v61) = *(a1 + v26[16]);
  v62 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  swift_beginAccess();
  v53[v62] = v61;
  v63 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
  swift_beginAccess();
  v64 = *&v13[v63];
  *&v13[v63] = v53;
  v65 = v53;

  v66 = a1[5];
  if (v66)
  {
    *&v82 = a1[4];
    sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_232CF5E60;
    v68 = v80;
    v70 = *v80;
    v69 = v80[1];
    v71 = MEMORY[0x277D837D0];
    *(v67 + 56) = MEMORY[0x277D837D0];
    v72 = sub_232B27F34();
    *(v67 + 32) = v70;
    *(v67 + 40) = v69;
    *(v67 + 96) = v71;
    *(v67 + 104) = v72;
    v73 = v82;
    *(v67 + 64) = v72;
    *(v67 + 72) = v73;
    *(v67 + 80) = v66;

    v74 = sub_232CE9D80();
    v76 = v75;

    *v68 = v74;
    v68[1] = v76;
  }

  else
  {
  }

  *v83 = v13;
}

id sub_232C0EDF8()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 4;
  v19.receiver = v1;
  v19.super_class = v0;
  v2 = objc_msgSendSuper2(&v19, sel_init);
  v3 = objc_allocWithZone(v0);
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 8;
  v18.receiver = v3;
  v18.super_class = v0;
  v4 = objc_msgSendSuper2(&v18, sel_init);
  DURequestContentType.formUnion(_:)(v4, v5, v6);

  v7 = objc_allocWithZone(v0);
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 16;
  v17.receiver = v7;
  v17.super_class = v0;
  v8 = objc_msgSendSuper2(&v17, sel_init);
  DURequestContentType.formUnion(_:)(v8, v9, v10);

  v11 = objc_allocWithZone(v0);
  *&v11[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 32;
  v16.receiver = v11;
  v16.super_class = v0;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  DURequestContentType.formUnion(_:)(v12, v13, v14);

  return v2;
}

uint64_t sub_232C0EEFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232BB0620;

  return sub_232C0E1D8(a1, a2);
}

uint64_t sub_232C0EFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *DUTopicDetectionResponse.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v92 = a1;
  v89 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v86 = v8 - v7;
  v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  sub_232B3516C();
  v85 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v88 = &v81 - v14;
  v15 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  v90 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  sub_232B3516C();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v81 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v81 - v23;
  v25 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  sub_232B2D120(v25);
  sub_232B2D114();
  MEMORY[0x28223BE20](v26);
  sub_232C11024();
  v27 = *(a2 - 8);
  MEMORY[0x28223BE20](v28);
  sub_232B20704();
  v31 = v30 - v29;
  v32 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v33);
  sub_232B20704();
  v36 = (v35 - v34);
  v91 = [objc_allocWithZone(v4) init];
  v37 = v92;
  (*(v27 + 16))(v31);
  if (swift_dynamicCast())
  {
    v83 = v27;
    v84 = a2;
    v82 = v32;
    sub_232B12504(v3, 0, 1, v32);
    sub_232C10ECC(v3, v36, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
    v87 = v36;
    v38 = *v36;
    v39 = MEMORY[0x277D84F90];
    v95[0] = MEMORY[0x277D84F90];
    v40 = *(v38 + 16);
    if (v40)
    {
      sub_232C11058();
      v43 = v41 + v42;
      v45 = *(v44 + 72);
      v46 = MEMORY[0x277D84F90];
      do
      {
        sub_232C0FDD0(v43, v24);
        sub_232C0FDD0(v24, v18);
        v47 = sub_232C0FAF0(v18);
        sub_232C10F2C();
        v49 = sub_232C10E74(v24, v48);
        if (v47)
        {
          MEMORY[0x238391D50](v49);
          v50 = *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v50 >> 1)
          {
            sub_232BC1BBC(v50);
            sub_232CEA000();
          }

          sub_232CEA020();
          v46 = v95[0];
        }

        v43 += v45;
        --v40;
      }

      while (v40);
    }

    else
    {
      v46 = MEMORY[0x277D84F90];
    }

    v52 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics;
    v51 = v91;
    sub_232B13F5C(&v91[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics], v95);
    *&v51[v52] = v46;

    v53 = v87[1];
    v94[0] = v39;
    v54 = *(v53 + 16);
    if (v54)
    {
      sub_232C11058();
      v57 = v55 + v56;
      v59 = *(v58 + 72);
      v39 = MEMORY[0x277D84F90];
      do
      {
        sub_232C0FDD0(v57, v21);
        sub_232C0FDD0(v21, v18);
        v60 = sub_232C0FAF0(v18);
        sub_232C10F2C();
        v62 = sub_232C10E74(v21, v61);
        if (v60)
        {
          MEMORY[0x238391D50](v62);
          v63 = *((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v63 >> 1)
          {
            sub_232BC1BBC(v63);
            sub_232CEA000();
          }

          sub_232CEA020();
          v39 = v94[0];
        }

        v57 += v59;
        --v54;
      }

      while (v54);
    }

    v64 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics;
    sub_232B13F5C(&v51[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics], v94);
    *&v51[v64] = v39;

    v65 = *(v82 + 28);
    v67 = v87;
    v66 = v88;
    sub_232B34D3C(v87 + v65, v88, &qword_27DDC67C8, &unk_232CF5E70);
    v68 = v89;
    if (sub_232B12480(v66, 1, v89) == 1)
    {
      (*(v83 + 8))(v92, v84);
      sub_232B13790(v66, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C10FFC();
    }

    else
    {
      sub_232B13790(v66, &qword_27DDC67C8, &unk_232CF5E70);
      v69 = v85;
      sub_232B34D3C(v67 + v65, v85, &qword_27DDC67C8, &unk_232CF5E70);
      v70 = sub_232B12480(v69, 1, v68);
      v71 = v92;
      v72 = v83;
      if (v70 == 1)
      {
        v73 = v86;
        sub_232CE9330();
        v74 = (v73 + *(v68 + 20));
        *v74 = 0;
        v74[1] = 0;
        v75 = sub_232B12480(v69, 1, v68);
        v76 = v84;
        if (v75 != 1)
        {
          sub_232B13790(v69, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C10ECC(v69, v86, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
        v76 = v84;
      }

      v77 = sub_232B4C530();
      (*(v72 + 8))(v71, v76);
      sub_232C10FFC();
      v78 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
      sub_232B13F5C(&v51[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo], v93);
      v79 = *&v51[v78];
      *&v51[v78] = v77;
    }
  }

  else
  {
    (*(v27 + 8))(v37, a2);

    sub_232B12504(v3, 1, 1, v32);
    sub_232B13790(v3, &qword_27DDC7A40, &unk_232CFE960);
    return 0;
  }

  return v51;
}

id sub_232C0F7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    type metadata accessor for DUTopicResult();
    v3 = sub_232CE9FD0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_232C0F840(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = a3;
  if (a3)
  {
    type metadata accessor for DUTopicResult();
    v5 = sub_232CE9FE0();
  }

  v7 = a1;
  a4(v5);
}

void *sub_232C0F980()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232C0FA20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C0FA70(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232C0FA20(v1);
}

char *sub_232C0FAF0(uint64_t a1)
{
  v3 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v3);
  sub_232B2D114();
  MEMORY[0x28223BE20](v4);
  sub_232C11024();
  type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v10 = (v9 - v8);
  v11 = [objc_allocWithZone(type metadata accessor for DUTopicResult()) init];
  sub_232C0FDD0(a1, v10);
  sub_232B34D3C(v10 + v6[6], v1, &qword_27DDC6AC0, &unk_232CFBF50);
  v12 = sub_232C10FD8();
  if (v13)
  {
    sub_232C11034(v12);
    sub_232C10FD8();
    if (!v13)
    {
      sub_232B13790(v1, &qword_27DDC6AC0, &unk_232CFBF50);
    }
  }

  else
  {
    sub_232C10FAC();
  }

  v14 = [objc_allocWithZone(type metadata accessor for DUGlobalTopicSetIdentifier()) init];
  sub_232C10F2C();
  sub_232C10E74(a1, v15);
  sub_232C11080();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  v20 = DUGlobalTopicSetName.init(rawValue:)(v19);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  sub_232B13F5C(&v14[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName], v43);
  sub_232C10F64();
  v23 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  sub_232B13F5C(&v14[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion], v42);
  *&v14[v23] = v22;
  v24 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet], v41);
  v25 = *&v11[v24];
  *&v11[v24] = v14;

  v26 = (v10 + v6[7]);
  if (v26[1])
  {
    v27 = *v26;
    v28 = v26[1];
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = &v11[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier];
  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier], v40);
  *v29 = v27;
  *(v29 + 1) = v28;

  v30 = sub_232C1106C(v10 + v6[8]);
  if (v13)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  v33 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence], v39);
  *&v11[v33] = v32;
  v34 = *v10;

  sub_232C10F2C();
  sub_232C10E74(v10, v35);
  v36 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames], v38);
  *&v11[v36] = v34;

  return v11;
}

uint64_t sub_232C0FDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_232C0FE34(uint64_t a1)
{
  v3 = v1;
  v5 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v5);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232C11024();
  type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v12 = (v11 - v10);
  v13 = [objc_allocWithZone(v3) init];
  sub_232C0FDD0(a1, v12);
  sub_232B34D3C(v12 + v8[6], v2, &qword_27DDC6AC0, &unk_232CFBF50);
  v14 = sub_232C10FD8();
  if (v15)
  {
    sub_232C11034(v14);
    sub_232C10FD8();
    if (!v15)
    {
      sub_232B13790(v2, &qword_27DDC6AC0, &unk_232CFBF50);
    }
  }

  else
  {
    sub_232C10FAC();
  }

  v16 = [objc_allocWithZone(type metadata accessor for DUGlobalTopicSetIdentifier()) init];
  sub_232C10F2C();
  sub_232C10E74(a1, v17);
  sub_232C11080();
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = v18;
  }

  v22 = DUGlobalTopicSetName.init(rawValue:)(v21);
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  sub_232B13F5C(&v16[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName], v45);
  sub_232C10F64();
  v25 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  sub_232B13F5C(&v16[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion], v44);
  *&v16[v25] = v24;
  v26 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet], v43);
  v27 = *&v13[v26];
  *&v13[v26] = v16;

  v28 = (v12 + v8[7]);
  if (v28[1])
  {
    v29 = *v28;
    v30 = v28[1];
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier];
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier], v42);
  *v31 = v29;
  *(v31 + 1) = v30;

  v32 = sub_232C1106C(v12 + v8[8]);
  if (v15)
  {
    v34 = v32;
  }

  else
  {
    v34 = v33;
  }

  v35 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence], v41);
  *&v13[v35] = v34;
  v36 = *v12;

  sub_232C10F2C();
  sub_232C10E74(v12, v37);
  v38 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames], v40);
  *&v13[v38] = v36;

  return v13;
}

void sub_232C10114(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0) - 8;
  MEMORY[0x28223BE20](v2);
  sub_232B3516C();
  v62 = v3 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - v6;
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  sub_232B2D120(v8);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  v12 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v13);
  sub_232B3516C();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = (&v60 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v23 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v23;
  v24 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  sub_232CE9330();
  v25 = *(v24 + 28);
  v60 = a1;
  v26 = a1 + v25;
  v27 = v61;
  sub_232C11094(v26, 1);
  v28 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
  sub_232B13F74(v27 + OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo, v65);
  v29 = *(v27 + v28);
  if (v29)
  {
    v30 = v29;
    sub_232B55A40(v19);

    v31 = swift_dynamicCast();
    sub_232C11094(v11, v31 ^ 1u);
    if (sub_232B12480(v11, 1, v12) != 1)
    {
      sub_232C10ECC(v11, v22, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      sub_232C10ECC(v22, v16, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      v32 = v60;
      sub_232B13790(v60 + v25, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C10ECC(v16, v32 + v25, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      sub_232C11094(v32 + v25, 0);
      goto LABEL_6;
    }
  }

  else
  {
    sub_232C11094(v11, 1);
  }

  sub_232B13790(v11, &qword_27DDC67C8, &unk_232CF5E70);
LABEL_6:
  v33 = v62;
  v34 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics;
  sub_232B13F74(v27 + OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics, v64);
  v35 = *(v27 + v34);
  if (v35)
  {
    v36 = sub_232B26B10();

    v37 = 0;
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v36 == v37)
      {

        v27 = v61;
        *v60 = v38;
        v33 = v62;
        goto LABEL_20;
      }

      if ((v35 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x2383922C0](v37, v35);
      }

      else
      {
        if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v39 = *(v35 + 8 * v37 + 32);
      }

      v40 = v39;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      sub_232C13010(v7);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232B36C84();
        v38 = v45;
      }

      v42 = *(v38 + 16);
      v41 = *(v38 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_232BC1BBC(v41);
        sub_232B36C84();
        v38 = v46;
      }

      *(v38 + 16) = v42 + 1;
      sub_232C10F44();
      sub_232C10ECC(v7, v43, v44);
      ++v37;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_20:
    v47 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics;
    sub_232B13F74(v27 + OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics, v63);
    v48 = *(v27 + v47);
    if (v48)
    {
      v49 = sub_232B26B10();

      v50 = 0;
      v51 = MEMORY[0x277D84F90];
      while (v49 != v50)
      {
        if ((v48 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x2383922C0](v50, v48);
        }

        else
        {
          if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v52 = *(v48 + 8 * v50 + 32);
        }

        v53 = v52;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_37;
        }

        sub_232C13010(v33);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232B36C84();
          v51 = v58;
        }

        v55 = *(v51 + 16);
        v54 = *(v51 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_232BC1BBC(v54);
          sub_232B36C84();
          v51 = v59;
        }

        *(v51 + 16) = v55 + 1;
        sub_232C10F44();
        sub_232C10ECC(v33, v56, v57);
        ++v50;
      }

      v60[1] = v51;
    }
  }
}

uint64_t sub_232C10640@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  sub_232C10114((v5 - v4));
  sub_232BFBB1C();
  v7 = v6;
  result = sub_232B124A8(&qword_27DDC7BE0, &qword_232CFBED0);
  a1[3] = result;
  *a1 = v7;
  return result;
}

void sub_232C10734(void *a1)
{
  type metadata accessor for DUTopicDetectionResponse();
  sub_232C10F94();
  sub_232C10E2C(v2, v3, v4, &protocol conformance descriptor for DUTopicDetectionResponse);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUTopicDetectionResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C10F94();
  sub_232C10E2C(v2, v3, v4, &protocol conformance descriptor for DUTopicDetectionResponse);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B3A3E0(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B3A3E0(v6);
  return v5;
}

id DUTopicDetectionResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUTopicDetectionResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DUTopicDetectionResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DUTopicDetectionResponse.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DUTopicDetectionResponse();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_232C10E2C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232C10E74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232C10ECC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232C10F64()
{
  *(v2 + v3) = v0;

  return sub_232C10E74(v1, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
}

uint64_t sub_232C10FAC()
{

  return sub_232C10ECC(v1, v0, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
}

uint64_t sub_232C10FFC()
{

  return sub_232C10E74(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
}

uint64_t sub_232C11034(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = v2;
  *(v1 + 16) = 0;

  return sub_232CE9330();
}

uint64_t sub_232C11094(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

uint64_t sub_232C110AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUTopicEncodingSmolBERToSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_2819325A0;
  *a1 = result;
  return result;
}

uint64_t sub_232C110F4(uint64_t a1)
{
  type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
  *(v1 + 64) = swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_232C111C0;

  return sub_232B4EC3C(a1);
}

uint64_t sub_232C111C0()
{
  sub_232B482C0();
  *v2 = v1;
  v3 = *v0;
  sub_232B482C0();
  *v4 = v3;
  *(v6 + 80) = v5;

  return MEMORY[0x2822009F8](sub_232C112D8, 0, 0);
}

uint64_t sub_232C112D8()
{
  v1 = v0[10];
  if (v1)
  {
    type metadata accessor for DUTrialAssetLoader();
    v0[11] = swift_initStackObject();
    v0[12] = sub_232C14534();
    v2 = sub_232C149A0();
    v3 = sub_232C15424(0xD00000000000002DLL, 0x8000000232D043D0, 0xD000000000000012, 0x8000000232D090A0, v2 & 1);
    v0[13] = v3;
    if (v3)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CBFF68]);
      v5 = v1;
      v6 = [v4 init];
      v0[14] = v6;
      v7 = swift_task_alloc();
      v0[15] = v7;
      *v7 = v0;
      v7[1] = sub_232C11504;

      return MEMORY[0x282111978](v5, v6);
    }

    sub_232B4A95C();
    v8 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v10 = 0xD000000000000027;
    *(v10 + 8) = 0x8000000232D090C0;
    *(v10 + 16) = 0;
  }

  else
  {
    sub_232B4A95C();
    v8 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v9 = 0xD00000000000002BLL;
    *(v9 + 8) = 0x8000000232D04710;
    *(v9 + 16) = 0;
  }

  v11 = v0[1];

  return v11(v8, 1);
}

uint64_t sub_232C11504()
{
  v2 = *v1;
  sub_232B482C0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  if (v0)
  {
    v5 = sub_232C11824;
  }

  else
  {
    v6 = *(v2 + 80);

    v5 = sub_232C11624;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_232C11624()
{
  v1 = v0[16];
  v2 = sub_232CE9D20();
  v3 = [v1 featureValueForName_];

  if (v3)
  {
    objc_allocWithZone(type metadata accessor for DUEncodingModelOutput());
    v4 = v3;
    v5 = DUEncodingModelOutput.init(modelName:hiddenLayerSize:nHiddenLayers:pooledFeatureValue:)(0x747265626C6F6D73, 0xEF6369706F542D6FLL, 256, 6, v4);
    v6 = v0[13];
    v7 = v0[10];
    if (v5)
    {
      v8 = v5;

      swift_unknownObjectRelease();

      v9 = 0;
      goto LABEL_7;
    }

    sub_232B4A95C();
    v8 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v13 = 0xD000000000000046;
    *(v13 + 8) = 0x8000000232D09150;
    *(v13 + 16) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v0[13];
    v11 = v0[10];
    sub_232B4A95C();
    v8 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v12 = 0xD000000000000028;
    *(v12 + 8) = 0x8000000232D09120;
    *(v12 + 16) = 0;

    swift_unknownObjectRelease();
  }

  v9 = 1;
LABEL_7:
  v14 = v0[1];

  return v14(v8, v9);
}

uint64_t sub_232C11824()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);

  sub_232CEA4F0();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x238391C30](0xD00000000000002CLL, 0x8000000232D090F0);
  *(v0 + 56) = v1;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  sub_232CEA5B0();
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_232B4A95C();
  v6 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
  *v7 = v4;
  *(v7 + 8) = v5;
  *(v7 + 16) = 0;

  v8 = *(v0 + 8);

  return v8(v6, 1);
}

uint64_t sub_232C119B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4EA38;

  return sub_232C110F4(a2);
}

char *DUTopicResult.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v7);
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  v10 = &v58[-v9 - 8];
  v57 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v11);
  sub_232B20704();
  v14 = v13 - v12;
  v15 = sub_232B124A8(&qword_27DDC7BF8, &qword_232CFBFE8);
  sub_232B2D120(v15);
  sub_232B2D114();
  MEMORY[0x28223BE20](v16);
  v18 = &v58[-v17 - 8];
  v19 = *(a2 - 8);
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v23 = v22 - v21;
  v24 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v25);
  sub_232B20704();
  sub_232C071E8();
  v26 = [objc_allocWithZone(v4) init];
  (*(v19 + 16))(v23, a1, a2);
  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v27, v28, v29, v24);
    sub_232C13FD0();
    sub_232C1262C(v18, v3, v30);
    sub_232C12540(v3 + v24[6], v10);
    v31 = v57;
    if (sub_232B12480(v10, 1, v57) == 1)
    {
      *v14 = 0;
      *(v14 + 8) = 1;
      *(v14 + 16) = 0;
      sub_232CE9330();
      if (sub_232B12480(v10, 1, v31) != 1)
      {
        sub_232B13790(v10, &qword_27DDC6AC0, &unk_232CFBF50);
      }
    }

    else
    {
      sub_232C13FB8();
      sub_232C1262C(v10, v14, v35);
    }

    v36 = [objc_allocWithZone(type metadata accessor for DUGlobalTopicSetIdentifier()) init];
    (*(v19 + 8))(a1, a2);
    if (*(v14 + 8))
    {
      v37 = *v14 != 0;
    }

    else
    {
      v37 = *v14;
    }

    v38 = DUGlobalTopicSetName.init(rawValue:)(v37);
    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = v38;
    }

    v41 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
    sub_232B13F5C(&v36[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName], v63);
    *&v36[v41] = v40;
    v42 = *(v14 + 16);
    sub_232C13FA0();
    sub_232C125D4(v14, v43);
    v44 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
    sub_232B13F5C(&v36[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion], v62);
    *&v36[v44] = v42;
    v45 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet], v61);
    v46 = *&v26[v45];
    *&v26[v45] = v36;

    v47 = (v3 + v24[7]);
    if (v47[1])
    {
      v48 = *v47;
      v49 = v47[1];
    }

    else
    {
      v48 = 0;
      v49 = 0xE000000000000000;
    }

    v50 = &v26[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier];
    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier], v60);
    *v50 = v48;
    *(v50 + 1) = v49;

    v51 = (v3 + v24[8]);
    if (*(v51 + 8))
    {
      v52 = 0.0;
    }

    else
    {
      v52 = *v51;
    }

    v53 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence], v59);
    *&v26[v53] = v52;
    v54 = *v3;

    sub_232C125D4(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
    v55 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
    sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames], v58);
    *&v26[v55] = v54;
  }

  else
  {
    (*(v19 + 8))(a1, a2);

    sub_232B55484();
    sub_232B12504(v32, v33, v34, v24);
    sub_232B13790(v18, &qword_27DDC7BF8, &qword_232CFBFE8);
    return 0;
  }

  return v26;
}

unint64_t DUGlobalTopicSetName.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_232C11F74@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DUGlobalTopicSetName.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_232C11FD8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
  sub_232B26BFC(a1);
  return *(v1 + v2);
}

uint64_t sub_232C12034(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
  result = sub_232B26C50(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_232C120E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  sub_232B26BFC(a1);
  return *(v1 + v2);
}

uint64_t sub_232C12140(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  result = sub_232B26C50(a1);
  *(v1 + v3) = a1;
  return result;
}

char *sub_232C121CC(uint64_t a1)
{
  v3 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_allocWithZone(v1) init];
  sub_232C1262C(a1, v5, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
  if (v5[8])
  {
    v7 = *v5 != 0;
  }

  else
  {
    v7 = *v5;
  }

  v8 = DUGlobalTopicSetName.init(rawValue:)(v7);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v11 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
  swift_beginAccess();
  *&v6[v11] = v10;
  v12 = *(v5 + 2);
  sub_232C125D4(v5, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
  v13 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  swift_beginAccess();
  *&v6[v13] = v12;
  return v6;
}

char *DUGlobalTopicSetIdentifier.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v5);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232C071E8();
  v7 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v11 = v10 - v9;
  v12 = [objc_allocWithZone(v4) init];
  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v13, v14, v15, v7);
    sub_232C13FB8();
    sub_232C1262C(v3, v11, v16);
    if (*(v11 + 8))
    {
      v17 = *v11 != 0;
    }

    else
    {
      v17 = *v11;
    }

    v18 = DUGlobalTopicSetName.init(rawValue:)(v17);
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    v21 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
    sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName], v30);
    *&v12[v21] = v20;
    v22 = *(v11 + 16);
    sub_232C13FA0();
    sub_232C125D4(v11, v23);
    v24 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
    sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion], v29);
    *&v12[v24] = v22;
  }

  else
  {

    sub_232B55484();
    sub_232B12504(v25, v26, v27, v7);
    sub_232B13790(v3, &qword_27DDC6AC0, &unk_232CFBF50);
    return 0;
  }

  return v12;
}

uint64_t sub_232C124AC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  sub_232CE9330();
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName, v9);
  sub_232C7C5F4();
  if ((v4 & 0x100) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1 | HIBYTE(v4) & 1;
  v6 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  result = sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion, &v8);
  *(a1 + 16) = *(v1 + v6);
  return result;
}

uint64_t sub_232C12540(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C125D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232C1262C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232C1268C@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  v4 = sub_232B2D120(v3);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  sub_232C071E8();
  sub_232C124AC(v1);
  v5 = [objc_allocWithZone(type metadata accessor for DUGlobalTopicSetIdentifier()) init];
  if (*(v1 + 8))
  {
    v6 = *v1 != 0;
  }

  else
  {
    v6 = *v1;
  }

  v7 = DUGlobalTopicSetName.init(rawValue:)(v6);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName;
  sub_232B13F5C(&v5[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName], v16);
  *&v5[v10] = v9;
  v11 = *(v1 + 16);
  sub_232C13FA0();
  sub_232C125D4(v1, v12);
  v13 = OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion;
  sub_232B13F5C(&v5[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion], v15);
  *&v5[v13] = v11;
  result = sub_232B124A8(&qword_27DDC7C30, &qword_232CFBFF0);
  a1[3] = result;
  *a1 = v5;
  return result;
}

id DUGlobalTopicSetIdentifier.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetName] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier_topicSetVersion] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUGlobalTopicSetIdentifier();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *sub_232C129A0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232C121CC(a1);
  *a2 = result;
  return result;
}

id sub_232C129FC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_232C12A9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  sub_232B26C50(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232C12BA8()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier);
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier, v4);
  v2 = *v1;

  return v2;
}

uint64_t sub_232C12C68(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier);
  sub_232B13F5C(v5, v7);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232C12CC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_232C12C68(v1, v2);
}

double sub_232C12D70(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
  sub_232B26BFC(a1);
  return *(v1 + v2);
}

uint64_t sub_232C12DC8(double a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
  result = sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence, v5);
  *(v1 + v3) = a1;
  return result;
}

double sub_232C12EB0(uint64_t a1)
{
  sub_232B26BFC(a1);

  return result;
}

uint64_t sub_232C12F50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
  sub_232B26C50(a1);
  *(v1 + v3) = a1;
}

double sub_232C13010@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  sub_232B2D120(v3);
  sub_232B2D114();
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v8);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v13);
  v49 = &v48 - v14;
  v15 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  v16 = (v15 - 8);
  MEMORY[0x28223BE20](v15);
  sub_232B20704();
  v19 = (v18 - v17);
  *(v18 - v17) = MEMORY[0x277D84F90];
  sub_232CE9330();
  v20 = v16[8];
  sub_232B55484();
  sub_232B12504(v21, v22, v23, v7);
  v24 = (v19 + v16[9]);
  *v24 = 0;
  v24[1] = 0;
  v25 = v19 + v16[10];
  *v25 = 0;
  v25[8] = 1;
  v26 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet, v55);
  v27 = *(v2 + v26);
  sub_232C124AC(v12);

  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v28, v29, v30, v7);
    v31 = v6;
    v32 = v49;
    sub_232C1262C(v31, v49, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    v33 = v32;
    v34 = v50;
    sub_232C1262C(v33, v50, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    sub_232B13790(v19 + v20, &qword_27DDC6AC0, &unk_232CFBF50);
    sub_232C1262C(v34, v19 + v20, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier);
    sub_232B351FC();
    sub_232B12504(v35, v36, v37, v7);
  }

  else
  {
    sub_232B55484();
    sub_232B12504(v38, v39, v40, v7);
    sub_232B13790(v6, &qword_27DDC6AC0, &unk_232CFBF50);
  }

  v41 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier);
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier, v54);
  v42 = *v41;
  v43 = v41[1];
  *v24 = v42;
  v24[1] = v43;
  v44 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence, v53);
  *v25 = *(v2 + v44);
  v25[8] = 0;
  v45 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames, v52);
  *v19 = *(v2 + v45);
  sub_232C13FD0();
  sub_232C1262C(v19, v51, v46);

  return result;
}

char *sub_232C1332C@<X0>(char **a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  v4 = sub_232B2D120(v3);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  sub_232C071E8();
  sub_232C13010(v1);
  v5 = sub_232C0FAF0(v1);
  result = sub_232B124A8(&qword_27DDC7C40, &qword_232CFBFF8);
  a1[3] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_232C133D4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_232B203C8(v8, v8[3]);
  v6 = sub_232CEA740();
  sub_232B2040C(v8);
  return v6;
}

void sub_232C13484(void *a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2();
  sub_232C13F54(a3, v9, a4, a5);
  v10 = sub_232CE98A0();
  if (v10)
  {
    v11 = v10;
    v12 = sub_232CE9D20();
    [a1 encodeObject:v11 forKey:v12];
  }
}

uint64_t sub_232C13640(void *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C13F54(a2, v8, a3, a4);
  sub_232CE98B0();

  v9 = v13;
  if (!v13)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232C072C8(ObjectType);
    return 0;
  }

  v10 = swift_getObjectType();
  sub_232C072C8(v10);
  return v9;
}

id DUTopicResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUTopicResult.init()()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicSet;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for DUGlobalTopicSetIdentifier()) init];
  v2 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames] = MEMORY[0x277D84F90];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DUTopicResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_232C13870(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_232C138AC()
{
  result = qword_27DDC7C50;
  if (!qword_27DDC7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7C50);
  }

  return result;
}

char *sub_232C139BC@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232C0FE34(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C13F54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_232C13FE8(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_232CE8B90();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_232CE8C00();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_232CE8B30();

    swift_willThrow();
    v11 = sub_232CE8C00();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t FileType.hashValue.getter()
{
  v1 = *v0;
  sub_232CEA820();
  MEMORY[0x2383925C0](v1);
  return sub_232CEA850();
}

unint64_t sub_232C141EC()
{
  result = qword_27DDC7C70;
  if (!qword_27DDC7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7C70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FileType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232C1431C()
{
  v0 = sub_232CEA220();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232CEA210();
  MEMORY[0x28223BE20](v4);
  v5 = sub_232CE9AD0();
  MEMORY[0x28223BE20](v5 - 8);
  sub_232BA4DEC(0, &qword_27DDC75D8, 0x277D85C78);
  sub_232CE9AB0();
  v7[1] = MEMORY[0x277D84F90];
  sub_232C15A40();
  sub_232B124A8(&qword_27DDC7C80, &unk_232CFC260);
  sub_232C15A98();
  sub_232CEA440();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_232CEA250();
  qword_27DDC7C68 = result;
  return result;
}

uint64_t sub_232C14534()
{
  v1 = v0;
  *(v0 + 16) = [objc_opt_self() client];
  if (qword_2814DFA50 != -1)
  {
    sub_232BB2CAC(&qword_2814DFA50);
  }

  v2 = sub_232CE9A30();
  sub_232B135C4(v2, qword_2814E3DA8);
  v3 = sub_232CE9A00();
  v4 = sub_232CEA1A0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = 313;
    _os_log_impl(&dword_232B02000, v3, v4, "Initializing trial client for client id:%d", v5, 8u);
    sub_232BA6A84();
  }

  return v1;
}

id sub_232C14630(id result, _BYTE *a2)
{
  if (*a2)
  {
    result = [result directoryValue];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result fileValue];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_232C14684()
{
  sub_232C15B18();
  v2 = *v1;
  v3 = *(v0 + 16);
  sub_232BAE188();
  v4 = sub_232CE9D20();
  sub_232BA5C94();
  v5 = sub_232CE9D20();
  v6 = [v3 levelForFactor:v4 withNamespaceName:v5];

  if (v6)
  {
    LOBYTE(v39) = v2;
    v7 = sub_232C14630(v6, &v39);
    if (([v7 hasPath] & 1) == 0)
    {
      if (qword_2814DFA50 != -1)
      {
        sub_232BB2CAC(&qword_2814DFA50);
      }

      v8 = sub_232CE9A30();
      sub_232B135C4(v8, qword_2814E3DA8);

      v9 = sub_232CE9A00();
      v10 = sub_232CEA1A0();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = sub_232C15B2C();
        v39 = swift_slowAlloc();
        *v11 = 136315394;
        v12 = sub_232BAE188();
        *(v11 + 4) = sub_232BAD2D4(v12, v13, v14);
        *(v11 + 12) = 2080;
        v15 = sub_232BA5C94();
        *(v11 + 14) = sub_232BAD2D4(v15, v16, v17);
        _os_log_impl(&dword_232B02000, v9, v10, "Trial asset has no path, attempting download for factor: %s in namespace: %s", v11, 0x16u);
        swift_arrayDestroy();
        sub_232BA6A84();
        sub_232BA6A84();
      }

      v18 = sub_232C15B04();
      sub_232C14B7C(v18, v19, v20, v21);
    }
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v22 = sub_232CE9A30();
    sub_232B135C4(v22, qword_2814E3DA8);

    v23 = sub_232CE9A00();
    v24 = sub_232CEA1C0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_232C15B2C();
      v39 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = sub_232BAE188();
      *(v25 + 4) = sub_232BAD2D4(v26, v27, v28);
      *(v25 + 12) = 2080;
      v29 = sub_232BA5C94();
      *(v25 + 14) = sub_232BAD2D4(v29, v30, v31);
      sub_232BD42D8(&dword_232B02000, v32, v33, "Error retrieving level for factor: %s in namespace: %s");
      swift_arrayDestroy();
      sub_232BA6A84();
      sub_232BA6A84();
    }

    v34 = sub_232C15B04();
    sub_232C14B7C(v34, v35, v36, v37);
    return 0;
  }

  return v7;
}

uint64_t sub_232C149A0()
{
  sub_232C15B18();
  v1 = *(v0 + 16);
  sub_232BAE188();
  v2 = sub_232CE9D20();
  sub_232BA5C94();
  v3 = sub_232CE9D20();
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (v4)
  {
    v5 = [v4 BOOLeanValue];
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v6 = sub_232CE9A30();
    sub_232B135C4(v6, qword_2814E3DA8);

    v7 = sub_232CE9A00();
    v8 = sub_232CEA1C0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_232C15B2C();
      swift_slowAlloc();
      *v9 = 136315394;
      v10 = sub_232BAE188();
      *(v9 + 4) = sub_232BAD2D4(v10, v11, v12);
      *(v9 + 12) = 2080;
      v13 = sub_232BA5C94();
      *(v9 + 14) = sub_232BAD2D4(v13, v14, v15);
      sub_232BD42D8(&dword_232B02000, v16, v17, "Error retrieving level for factor: %s in namespace: %s");
      swift_arrayDestroy();
      sub_232BA6A84();
      sub_232BA6A84();
    }

    v18 = sub_232C15B04();
    sub_232C14B7C(v18, v19, v20, v21);
    return 2;
  }

  return v5;
}

void sub_232C14B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  sub_232BD42B8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_232CF6460;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v18 = v9;

  v11 = sub_232CE9FD0();

  v12 = sub_232CE9D20();
  if (qword_27DDC63C8 != -1)
  {
    swift_once();
  }

  v17 = qword_27DDC7C68;
  sub_232BD42B8();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  v23 = sub_232C159D4;
  v24 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_232C14F9C;
  v22 = &unk_284812938;
  v14 = _Block_copy(&aBlock);

  sub_232BD42B8();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  v23 = sub_232C15A34;
  v24 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_232C153AC;
  v22 = &unk_284812988;
  v16 = _Block_copy(&aBlock);

  [v18 downloadLevelsForFactors:v11 withNamespace:v12 queue:v17 options:0 progress:v14 completion:v16];
  _Block_release(v16);
  _Block_release(v14);
}

void sub_232C14DE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (qword_2814DFA50 != -1)
  {
    swift_once();
  }

  v10 = sub_232CE9A30();
  sub_232B135C4(v10, qword_2814E3DA8);

  oslog = sub_232CE9A00();
  v11 = sub_232CEA1A0();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_232BAD2D4(a2, a3, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_232BAD2D4(a4, a5, &v15);
    *(v12 + 22) = 2048;
    *(v12 + 24) = a1;
    _os_log_impl(&dword_232B02000, oslog, v11, "Trial download for factor: %s in namespace %s is %ld%% complete", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238393870](v13, -1, -1);
    MEMORY[0x238393870](v12, -1, -1);
  }
}

uint64_t sub_232C14F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_232C14FF0(int a1, NSObject *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {
    v11 = a2;
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v12 = sub_232CE9A30();
    sub_232B135C4(v12, qword_2814E3DA8);
    v13 = a2;

    v14 = sub_232CE9A00();
    v15 = sub_232CEA1C0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_232BAD2D4(a3, a4, &v27);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_232BAD2D4(a5, a6, &v27);
      *(v16 + 22) = 2080;
      swift_getErrorValue();
      v18 = sub_232CEA7B0();
      v20 = sub_232BAD2D4(v18, v19, &v27);

      *(v16 + 24) = v20;
      _os_log_impl(&dword_232B02000, v14, v15, "Error downloading levels for factor: %s in namespace: %s. Error: %s ", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x238393870](v17, -1, -1);
      MEMORY[0x238393870](v16, -1, -1);

      return;
    }

    v25 = a2;
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v21 = sub_232CE9A30();
    sub_232B135C4(v21, qword_2814E3DA8);

    oslog = sub_232CE9A00();
    v22 = sub_232CEA1A0();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_232BAD2D4(a3, a4, &v27);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_232BAD2D4(a5, a6, &v27);
      _os_log_impl(&dword_232B02000, oslog, v22, "Successfully downloaded levels for factor: %s in namespace: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238393870](v24, -1, -1);
      MEMORY[0x238393870](v23, -1, -1);

      return;
    }

    v25 = oslog;
  }
}

void sub_232C153AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_232C15424(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v39 = a5;
  v7 = sub_232CE8B40();
  sub_232B48F0C();
  v38 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_232CE8C00();
  sub_232B48F0C();
  v40 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v41 = a3;
  v42 = &v37 - v21;
  LOBYTE(v43) = 1;
  v22 = a4;
  v23 = sub_232C14684();
  if (!v23)
  {
    goto LABEL_6;
  }

  v24 = v23;
  if (![v23 hasPath])
  {

LABEL_6:
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v31 = sub_232CE9A30();
    sub_232B135C4(v31, qword_2814E3DA8);

    v32 = sub_232CE9A00();
    v33 = sub_232CEA1C0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_232BAD2D4(v41, v22, &v43);
      _os_log_impl(&dword_232B02000, v32, v33, "Unable to find a path to model asset factor: %s", v34, 0xCu);
      sub_232B2040C(v35);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    return 0;
  }

  result = sub_232C3B410(v24);
  if (v26)
  {
    v27 = v15;
    sub_232B12504(v14, 1, 1, v15);
    (*(v38 + 104))(v11, *MEMORY[0x277CC91D8], v7);
    v28 = v42;
    sub_232CE8BE0();
    v29 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    [v29 setExperimentalMLE5EngineUsage_];
    sub_232BA4DEC(0, &qword_2814DF8D0, 0x277CBFF20);
    v30 = v40;
    (*(v40 + 16))(v19, v28, v27);
    v36 = sub_232C13FE8(v19, v29);
    (*(v30 + 8))(v28, v27);

    return v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_232C159E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232C159F8()
{

  sub_232BD42B8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

unint64_t sub_232C15A40()
{
  result = qword_27DDC7C78;
  if (!qword_27DDC7C78)
  {
    sub_232CEA210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7C78);
  }

  return result;
}

unint64_t sub_232C15A98()
{
  result = qword_27DDC7C88;
  if (!qword_27DDC7C88)
  {
    sub_232B27EEC(&qword_27DDC7C80, &unk_232CFC260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7C88);
  }

  return result;
}

uint64_t sub_232C15B2C()
{

  return swift_slowAlloc();
}

uint64_t sub_232C15B44@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUUserInterfaceUnderstandingSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281932770;
  *a1 = result;
  return result;
}

uint64_t sub_232C15BAC()
{
  v1 = *(*(v0 + 64) + 24);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    v2 = [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResult()) init];
    v3 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier];
    swift_beginAccess();
    *v3 = 0x6564692D74736574;
    *(v3 + 1) = 0xEF7265696669746ELL;

    v4 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
    v5 = swift_beginAccess();
    *&v2[v4] = 0x3FF0000000000000;
    MEMORY[0x238391D50](v5);
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_232CEA000();
    }

    sub_232CEA020();
    v6 = v10;
  }

  else
  {
    sub_232B4A95C();
    v6 = swift_allocError();
    *v7 = 0xD000000000000015;
    *(v7 + 8) = 0x8000000232D04650;
    *(v7 + 16) = 0;
  }

  v8 = *(v0 + 8);

  return v8(v6, v1 == 0);
}

uint64_t sub_232C15D9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232C15B8C(a2);
}

char *DUUserInterfaceUnderstandingResponse.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v74 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v75 = v8 - v7;
  v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  sub_232B3516C();
  v72 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v73 = &v65 - v14;
  v15 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(0);
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15);
  sub_232B3516C();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  v22 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  v23 = sub_232B2D120(v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  v26 = *(a2 - 8);
  MEMORY[0x28223BE20](v27);
  sub_232B20704();
  v30 = v29 - v28;
  v31 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v32);
  sub_232B20704();
  v35 = (v34 - v33);
  v36 = [objc_allocWithZone(v3) init];
  (*(v26 + 16))(v30, a1, a2);
  v37 = v31;
  if (swift_dynamicCast())
  {
    v38 = a1;
    v71 = v26;
    v70 = v37;
    sub_232B12504(v25, 0, 1, v37);
    sub_232C16530(v25, v35, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
    v39 = *v35;
    v40 = MEMORY[0x277D84F90];
    v79[0] = MEMORY[0x277D84F90];
    v41 = *(v39 + 16);
    if (v41)
    {
      v66 = v35;
      v67 = v36;
      v68 = v38;
      v69 = a2;
      v42 = v39 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v76 = *(v76 + 72);
      do
      {
        sub_232C164CC(v42, v21);
        sub_232C164CC(v21, v18);
        v43 = [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResult()) init];
        sub_232C17130(v21, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
        v45 = *v18;
        v44 = v18[1];
        v46 = &v43[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier];
        sub_232B13F5C(&v43[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier], v81);
        *v46 = v45;
        *(v46 + 1) = v44;

        v47 = (v18 + *(v77 + 24));
        v48 = *v47;
        LODWORD(v44) = *(v47 + 8);
        sub_232C17130(v18, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
        if (v44)
        {
          v48 = 0.0;
        }

        v49 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
        v50 = sub_232B13F5C(&v43[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence], v80);
        *&v43[v49] = v48;
        MEMORY[0x238391D50](v50);
        if (*((v79[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v42 += v76;
        --v41;
      }

      while (v41);
      v40 = v79[0];
      a2 = v69;
      v38 = v68;
      v51 = v75;
      v36 = v67;
      v35 = v66;
    }

    else
    {
      v51 = v75;
    }

    v52 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
    sub_232B13F5C(&v36[OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities], v79);
    *&v36[v52] = v40;

    v53 = *(v70 + 24);
    v54 = v73;
    sub_232B21B7C(v35 + v53, v73);
    v55 = v74;
    v56 = sub_232B12480(v54, 1, v74);
    v57 = v71;
    if (v56 == 1)
    {
      (*(v71 + 8))(v38, a2);
      sub_232B13790(v54, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C1743C();
    }

    else
    {
      sub_232B13790(v54, &qword_27DDC67C8, &unk_232CF5E70);
      v58 = v35 + v53;
      v59 = v72;
      sub_232B21B7C(v58, v72);
      if (sub_232B12480(v59, 1, v55) == 1)
      {
        sub_232CE9330();
        v60 = (v51 + *(v55 + 20));
        *v60 = 0;
        v60[1] = 0;
        if (sub_232B12480(v59, 1, v55) != 1)
        {
          sub_232B13790(v59, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C16530(v59, v51, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      }

      v61 = sub_232B4C530();
      (*(v57 + 8))(v38, a2);
      sub_232C1743C();
      v62 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
      sub_232B13F5C(&v36[OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo], v78);
      v63 = *&v36[v62];
      *&v36[v62] = v61;
    }
  }

  else
  {
    (*(v26 + 8))(a1, a2);

    sub_232B12504(v25, 1, 1, v31);
    sub_232B13790(v25, &qword_27DDC7A30, &unk_232CFE950);
    return 0;
  }

  return v36;
}

uint64_t sub_232C164CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C16530(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

double sub_232C165EC(uint64_t a1)
{
  sub_232B26BFC(a1);

  return result;
}

uint64_t sub_232C16694(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities, v5);
  *(v1 + v3) = a1;
}

void *sub_232C16794(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232C1682C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C1687C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232C1682C(v1);
}

void sub_232C168FC(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  v5 = sub_232B2D120(v4);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v8 = (v7 - v6);
  v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v36[-v11];
  v13 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v14);
  sub_232B3516C();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v36[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v36[-v22];
  *a1 = MEMORY[0x277D84F90];
  v24 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  sub_232CE9330();
  v25 = *(v24 + 24);
  sub_232C17464(a1 + v25, 1);
  v26 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (!v27)
  {
    sub_232C17464(v12, 1);
    goto LABEL_5;
  }

  v28 = v27;
  sub_232B55A40(v20);

  v29 = swift_dynamicCast();
  sub_232C17464(v12, v29 ^ 1u);
  if (sub_232B12480(v12, 1, v13) == 1)
  {
LABEL_5:
    sub_232B13790(v12, &qword_27DDC67C8, &unk_232CF5E70);
    goto LABEL_6;
  }

  sub_232C16530(v12, v23, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232C16530(v23, v17, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232B13790(a1 + v25, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232C16530(v17, a1 + v25, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232C17464(a1 + v25, 0);
LABEL_6:
  v30 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
  swift_beginAccess();
  v31 = *(v2 + v30);
  v32 = sub_232B26B10();

  for (i = 0; ; ++i)
  {
    if (v32 == i)
    {

      *a1 = MEMORY[0x277D84F90];
      return;
    }

    if ((v31 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x2383922C0](i, v31);
    }

    else
    {
      if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v34 = *(v31 + 8 * i + 32);
    }

    v35 = v34;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_232C17ABC(v8);

    sub_232C17130(v8, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

char *sub_232C16C48@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232C168FC((v5 - v4));
  v7 = sub_232BFCB90(v6);
  result = sub_232B124A8(&qword_27DDC7CA0, &qword_232CFC2D0);
  a1[3] = result;
  *a1 = v7;
  return result;
}

void sub_232C16D3C(void *a1)
{
  type metadata accessor for DUUserInterfaceUnderstandingResponse();
  sub_232C17424();
  sub_232C173DC(v2, v3, v4, &protocol conformance descriptor for DUUserInterfaceUnderstandingResponse);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUUserInterfaceUnderstandingResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C17424();
  sub_232C173DC(v2, v3, v4, &protocol conformance descriptor for DUUserInterfaceUnderstandingResponse);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B4D64C(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B4D64C(v6);
  return v5;
}

id DUUserInterfaceUnderstandingResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUUserInterfaceUnderstandingResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DUUserInterfaceUnderstandingResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DUUserInterfaceUnderstandingResponse.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DUUserInterfaceUnderstandingResponse();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_232C17108@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232BFCFF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C17130(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232C173DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232C1743C()
{

  return sub_232C17130(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
}

uint64_t sub_232C17464(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

id DUUserInterfaceUnderstandingResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DUUserInterfaceUnderstandingResult.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7CB8, &qword_232CFC360);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-v5];
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(0);
  MEMORY[0x28223BE20](v7);
  sub_232B521C8();
  v8 = [objc_allocWithZone(v2) init];
  if (swift_dynamicCast())
  {
    sub_232B12504(v6, 0, 1, v7);
    sub_232C17748(v6, v3);
    v10 = *v3;
    v9 = v3[1];
    v11 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier];
    sub_232B13F5C(&v8[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier], v18);
    *v11 = v10;
    *(v11 + 1) = v9;

    v12 = (v3 + *(v7 + 24));
    v13 = *v12;
    v14 = *(v12 + 8);
    sub_232C17C80(v3, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
    if (v14)
    {
      v13 = 0.0;
    }

    v15 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
    sub_232B13F5C(&v8[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence], v17);
    *&v8[v15] = v13;
  }

  else
  {

    sub_232B12504(v6, 1, 1, v7);
    sub_232C176E0(v6);
    return 0;
  }

  return v8;
}

uint64_t sub_232C176E0(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7CB8, &qword_232CFC360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232C17748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C177F8()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier);
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier, v4);
  v2 = *v1;

  return v2;
}

uint64_t sub_232C178B8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier);
  sub_232B13F5C(v5, v7);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232C17910(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_232C178B8(v1, v2);
}

double sub_232C179C4()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence, v3);
  return *(v0 + v1);
}

uint64_t sub_232C17A24(double a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
  result = sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence, v5);
  *(v1 + v3) = a1;
  return result;
}

double sub_232C17ABC@<D0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  sub_232CE9330();
  v4 = v3[6];
  v5 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  sub_232B12504(a1 + v4, 1, 1, v5);
  v6 = (a1 + v3[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1 + v3[8];
  *v7 = 0;
  v7[8] = 1;
  v8 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier, v14);
  v9 = *v8;
  v10 = v8[1];
  *v6 = v9;
  v6[1] = v10;
  v11 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence, &v13);
  *v7 = *(v1 + v11);
  v7[8] = 0;

  return result;
}

uint64_t sub_232C17BA0@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_232B521C8();
  sub_232C17ABC(v1);
  v4 = [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResult()) init];
  sub_232C17C80(v1, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult);

  result = sub_232B124A8(&qword_27DDC7CD0, &qword_232CFC368);
  a1[3] = result;
  *a1 = 0;
  return result;
}

uint64_t sub_232C17C80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_232C17D40(void *a1)
{
  type metadata accessor for DUUserInterfaceUnderstandingResult();
  sub_232C18340();
  sub_232C182F8(v2, v3, v4, &protocol conformance descriptor for DUUserInterfaceUnderstandingResult);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUUserInterfaceUnderstandingResult.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C18340();
  sub_232C182F8(v2, v3, v4, &protocol conformance descriptor for DUUserInterfaceUnderstandingResult);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B3A3E0(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B3A3E0(v6);
  return v5;
}

id DUUserInterfaceUnderstandingResult.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DUUserInterfaceUnderstandingResult();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DUUserInterfaceUnderstandingResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUUserInterfaceUnderstandingResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232C180BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_232C174B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C182F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232C183B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 232) = a1;
  v4 = swift_task_alloc();
  *(v2 + 240) = v4;
  *v4 = v2;
  v4[1] = sub_232C18468;

  return sub_232B4FBC0(a2);
}

uint64_t sub_232C18468(uint64_t a1)
{
  *(*v1 + 248) = a1;

  return MEMORY[0x2822009F8](sub_232C18568, 0, 0);
}

uint64_t sub_232C18568()
{
  v1 = v0[31];
  if (v1)
  {
    v2 = v0[29];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4)
    {
      v5 = *(v2 + v3);
      v6 = v5;
    }

    else
    {
      v6 = [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResponse()) init];
      v5 = 0;
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = v6;
    v7 = v6;
    v8 = v5;

    v9 = *(v2 + v3);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
      sub_232B13F74(v9 + OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities, (v0 + 5));
      v11 = *(v9 + v10);
    }

    else
    {

      v11 = v1;
    }

    v12 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
    swift_beginAccess();
    *&v7[v12] = v11;

    v13 = *(v2 + v3);
    if (v13)
    {
      swift_beginAccess();
      v14 = v13;
      sub_232C5E44C(v1);
      swift_endAccess();
    }

    else
    {
    }

    v15 = *(v2 + v3);
    if (v15)
    {
      v16 = v0[29];
      v17 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
      sub_232B13F74(v16 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics, (v0 + 14));
      v18 = *(v16 + v17);
      if (v18 && (v19 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo, sub_232B13F74(v18 + OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo, (v0 + 17)), (v20 = *(v18 + v19)) != 0))
      {
        v21 = v15;
        v22 = v20;
      }

      else
      {
        v23 = objc_allocWithZone(type metadata accessor for DUDebugInfo());
        v21 = v15;
        v20 = [v23 init];
      }

      v24 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
      swift_beginAccess();
      v25 = *&v21[v24];
      *&v21[v24] = v20;

      v26 = *(v2 + v3);
      if (v26)
      {
        v27 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
        sub_232B13F74(v26 + OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo, (v0 + 23));
        v28 = *(v26 + v27);
        if (v28)
        {
          swift_beginAccess();
          v29 = v28;
          MEMORY[0x238391C30](0xD000000000000022, 0x8000000232D095A0);
          swift_endAccess();
        }
      }
    }
  }

  v30 = v0[1];

  return v30();
}

id sub_232C18824()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 128;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232C18880(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232BB0620;

  return sub_232C183B8(a1, a2);
}

uint64_t sub_232C18940(uint64_t a1)
{
  sub_232C18A2C(a1);
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2 == 0.0)
  {
    if (v3)
    {
      v13 = MEMORY[0x277D84F90];
      sub_232C18C20();
      result = v13;
      v5 = *(v13 + 16);
      do
      {
        v14 = result;
        v6 = *(result + 24);
        if (v5 >= v6 >> 1)
        {
          sub_232C18BFC(v6);
          result = v14;
        }

        *(result + 16) = v5 + 1;
        *(result + 4 * v5++ + 32) = 0;
        --v3;
      }

      while (v3);
    }
  }

  else if (v3)
  {
    v7 = v2;
    v15 = MEMORY[0x277D84F90];
    sub_232C18C20();
    do
    {
      v8 = *(a1 + 32);
      sub_232C18C5C();
      if (v11)
      {
        sub_232C18BFC(v10);
        v9 = v15;
      }

      result = sub_232C18C40(v9, v8 / v7);
    }

    while (!v12);
  }

  return result;
}

uint64_t sub_232C18A2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = a1;
    v11 = MEMORY[0x277D84F90];
    sub_232C18C20();
    do
    {
      v2 = *(v1 + 32);
      sub_232C18C5C();
      if (v5)
      {
        sub_232C18BFC(v4);
        v3 = v11;
      }

      v6 = sub_232C18C40(v3, v2 * v2);
    }

    while (!v7);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v1 = *(MEMORY[0x277D84F90] + 16);
    if (!v1)
    {
    }
  }

  v8 = 0.0;
  v9 = 32;
  do
  {
    v8 = v8 + *(v6 + v9);
    v9 += 4;
    --v1;
  }

  while (v1);
}

unint64_t sub_232C18B10(unint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_232CE8C10();
      }

      else
      {
        sub_232CE89F0();
        swift_allocObject();
        sub_232CE89E0();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_232CE8C40();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v2;
        }

        else
        {
          return v1 << 34;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_232C18BFC(unint64_t a1@<X8>)
{

  sub_232B64AFC(a1 > 1, v1, 1);
}

void sub_232C18C20()
{

  sub_232B64AFC(0, v0, 0);
}

uint64_t sub_232C18C40(uint64_t result, float a2)
{
  *(result + 16) = v2;
  *(result + 4 * v3 + 32) = a2;
  return result;
}

uint64_t sub_232C18C70@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUWordPieceTokenizerSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281932858;
  *a1 = result;
  return result;
}

uint64_t sub_232C18CB8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_232CE9700();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_232B124A8(&qword_27DDC7CE0, &qword_232CFC4C8);
  v2[7] = swift_task_alloc();
  v4 = sub_232CE9740();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C18E0C, 0, 0);
}

uint64_t sub_232C18E0C()
{
  v1 = 0xD000000000000015;
  sub_232CE9810();
  if (MEMORY[0x238391530]())
  {
    if (*(v0[3] + 24))
    {
      type metadata accessor for DUConcatenatedDocumentTextSpecification();
      v0[11] = swift_allocObject();
      v2 = swift_task_alloc();
      v0[12] = v2;
      *v2 = v0;
      v2[1] = sub_232C18FC4;
      v3 = v0[3];

      return sub_232B4F570(v3);
    }

    v5 = "ationRuleBasedImplementation";
  }

  else
  {
    v5 = "molBERToImplementation";
    v1 = 0xD00000000000001ALL;
  }

  v6 = v0[2];
  v7 = v5 | 0x8000000000000000;
  sub_232B4A95C();
  v8 = swift_allocError();
  *v9 = v1;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  *v6 = v8;
  sub_232B124A8(&qword_27DDC7CE8, &unk_232CFC4D0);
  swift_storeEnumTagMultiPayload();

  v10 = v0[1];

  return v10();
}

uint64_t sub_232C18FC4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;

  return MEMORY[0x2822009F8](sub_232C190E4, 0, 0);
}

uint64_t sub_232C190E4()
{
  if (v0[14])
  {
    v2 = v0[7];
    v1 = v0[8];
    sub_232CE9730();
    if (sub_232B12480(v2, 1, v1) == 1)
    {
      v3 = v0[7];
      v4 = v0[2];

      sub_232C19418(v3);
      sub_232B4A95C();
      v5 = swift_allocError();
      *v6 = 0xD000000000000029;
      *(v6 + 8) = 0x8000000232D09640;
      *(v6 + 16) = 0;
      *v4 = v5;
    }

    else
    {
      v11 = v0[9];
      v10 = v0[10];
      v12 = v0[8];
      v14 = v0[5];
      v13 = v0[6];
      v15 = v0[4];
      v16 = v0[2];
      (*(v11 + 32))(v10, v0[7], v12);
      sub_232CE9720();

      (*(v11 + 8))(v10, v12);
      (*(v14 + 32))(v16, v13, v15);
    }

    sub_232B124A8(&qword_27DDC7CE8, &unk_232CFC4D0);
  }

  else
  {
    v7 = v0[2];
    sub_232B4A95C();
    v8 = swift_allocError();
    *v9 = 0xD000000000000031;
    *(v9 + 8) = 0x8000000232D07CC0;
    *(v9 + 16) = 0;
    *v7 = v8;
    sub_232B124A8(&qword_27DDC7CE8, &unk_232CFC4D0);
  }

  swift_storeEnumTagMultiPayload();

  v17 = v0[1];

  return v17();
}

uint64_t sub_232C19378(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232BB0620;

  return sub_232C18CB8(a1, a2);
}

uint64_t sub_232C19418(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7CE0, &qword_232CFC4C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FeatureProviderWithMask(uint64_t a1)
{
  result = qword_27DDC7CF0;
  if (!qword_27DDC7CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C19554(uint64_t a1)
{
  sub_232C195F0();
  if (v1 <= 0x3F)
  {
    sub_232B5F2A0();
    if (v2 <= 0x3F)
    {
      sub_232C1964C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_232C195F0()
{
  result = qword_27DDC7D00;
  if (!qword_27DDC7D00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DDC7D00);
  }

  return result;
}

void sub_232C1964C(uint64_t a1)
{
  if (!qword_27DDC7D08)
  {
    sub_232CE9700();
    v1 = sub_232CEA350();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDC7D08);
    }
  }
}

uint64_t FilesDocumentIngesterError.hashValue.getter()
{
  sub_232CEA820();
  MEMORY[0x2383925C0](0);
  return sub_232CEA850();
}

uint64_t sub_232C19714(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000232D03580 == a2;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000232D035A0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_232CEA750();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_232C1983C(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000010;
}

void sub_232C19898()
{
  sub_232BA66A0();
  v2 = v1;
  v4 = v3;
  sub_232B124A8(&qword_27DDC7D50, &qword_232CFC798);
  sub_232B48F0C();
  sub_232B2D114();
  MEMORY[0x28223BE20](v5);
  sub_232B203C8(v2, v2[3]);
  sub_232C20C38();
  sub_232CEA870();
  if (v0)
  {
    sub_232B2040C(v2);
  }

  else
  {
    v13 = v4;
    LOBYTE(v15[0]) = 0;
    v6 = sub_232CEA680();
    v8 = v7;
    v12 = v6;
    sub_232B124A8(&qword_27DDC7D60, &qword_232CFC7A0);
    LOBYTE(v14[0]) = 1;
    sub_232C20C8C();
    sub_232CEA690();
    v11 = v15[0];
    sub_232C20D64();
    sub_232CEA690();
    v9 = sub_232C21DFC();
    v10(v9);
    memcpy(v18, v17, sizeof(v18));
    v14[0] = v12;
    v14[1] = v8;
    v14[2] = v11;
    memcpy(&v14[3], v17, 0x60uLL);
    sub_232C20DB8(v14, v15);
    sub_232B2040C(v2);
    v15[0] = v12;
    v15[1] = v8;
    v15[2] = v11;
    memcpy(v16, v18, sizeof(v16));
    sub_232C207C8(v15);
    memcpy(v13, v14, 0x78uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232C19B4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2036625250 && a2 == 0xE400000000000000;
  if (v3 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x48746E756F636361 && a2 == 0xED0000656C646E61;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6974636172747865 && a2 == 0xEE00657461446E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_232CEA750();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_232C19C6C(char a1)
{
  if (!a1)
  {
    return 2036625250;
  }

  if (a1 == 1)
  {
    return 0x48746E756F636361;
  }

  return 0x6974636172747865;
}

void sub_232C19CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_232BA66A0();
  v26 = v25;
  v28 = v27;
  v29 = sub_232B124A8(&qword_27DDC7D80, &qword_232CFC7A8);
  sub_232B48F0C();
  sub_232B2D114();
  MEMORY[0x28223BE20](v30);
  sub_232B203C8(v26, v26[3]);
  sub_232C20DF0();
  sub_232CEA870();
  if (v24)
  {
    sub_232B2040C(v26);
  }

  else
  {
    v31 = sub_232CEA680();
    v41 = v32;
    v39 = sub_232CEA680();
    v40 = v33;
    v34 = sub_232CEA680();
    v35 = sub_232C21DD0();
    v37 = v36;
    v38(v35, v29);
    sub_232B2040C(v26);
    *v28 = v31;
    v28[1] = v41;
    v28[2] = v39;
    v28[3] = v40;
    v28[4] = v34;
    v28[5] = v37;
  }

  sub_232BA6688();
}

uint64_t sub_232C19EF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697274536C6D7468 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000232D03870 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_232CEA750();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_232C19FD0(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x697274536C6D7468;
  }
}

void sub_232C1A010()
{
  sub_232BA66A0();
  v2 = v1;
  v10 = v3;
  sub_232B124A8(&qword_27DDC7DE8, qword_232CFCB28);
  sub_232B48F0C();
  sub_232B2D114();
  MEMORY[0x28223BE20](v4);
  sub_232C21ECC();
  sub_232B203C8(v2, v2[3]);
  sub_232C213FC();
  sub_232CEA870();
  if (v0)
  {
    sub_232B2040C(v2);
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    v5 = sub_232CEA680();
    v7 = v6;
    sub_232C21450();
    sub_232CEA690();
    v8 = sub_232C21D60();
    v9(v8);
    memcpy(v15, v14, sizeof(v15));
    v11[0] = v5;
    v11[1] = v7;
    memcpy(&v11[2], v14, 0x50uLL);
    sub_232C214A4(v11, v12);
    sub_232B2040C(v2);
    v12[0] = v5;
    v12[1] = v7;
    memcpy(v13, v15, sizeof(v13));
    sub_232C214DC(v12);
    memcpy(v10, v11, 0x60uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232C1A22C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E7265646E6573 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D457265646E6573 && a2 == 0xEB000000006C6961;
      if (v7 || (sub_232CEA750() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F447265646E6573 && a2 == 0xEC0000006E69616DLL;
        if (v8 || (sub_232CEA750() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65697069636572 && a2 == 0xEE0073656D614E74;
          if (v9 || (sub_232CEA750() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E65697069636572 && a2 == 0xEF736C69616D4574)
          {

            return 5;
          }

          else
          {
            v11 = sub_232CEA750();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_232C1A43C(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x614E7265646E6573;
      break;
    case 2:
      result = 0x6D457265646E6573;
      break;
    case 3:
      result = 0x6F447265646E6573;
      break;
    case 4:
    case 5:
      result = 0x6E65697069636572;
      break;
    default:
      return result;
  }

  return result;
}

void sub_232C1A50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232BA66A0();
  v12 = v11;
  v14 = v13;
  sub_232B124A8(&qword_27DDC7E30, &qword_232CFCDD0);
  sub_232B48F0C();
  sub_232B2D114();
  MEMORY[0x28223BE20](v15);
  v16 = sub_232B35090();
  sub_232B203C8(v16, v17);
  sub_232C219A8();
  sub_232CEA870();
  if (v10)
  {
    sub_232B2040C(v12);
  }

  else
  {
    v18 = sub_232C21DDC();
    v20 = v19;
    v29 = sub_232C21DDC();
    v32 = v21;
    v28 = sub_232C21DDC();
    v31 = v22;
    LOBYTE(v34[0]) = 3;
    v27 = sub_232C21DDC();
    v30 = v23;
    LOBYTE(v33[0]) = 4;
    sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
    sub_232BB6358(&qword_27DDC7608, &qword_27DDC6908, &unk_232CF64D0);
    sub_232CEA690();
    v26 = v34[0];
    v35 = 5;
    sub_232CEA690();
    v24 = sub_232C21D50();
    v25(v24);
    v33[0] = v18;
    v33[1] = v20;
    v33[2] = v29;
    v33[3] = v32;
    v33[4] = v28;
    v33[5] = v31;
    v33[6] = v27;
    v33[7] = v30;
    v33[8] = v26;
    v33[9] = a10;
    sub_232C219FC(v33, v34);
    sub_232B2040C(v12);
    v34[0] = v18;
    v34[1] = v20;
    v34[2] = v29;
    v34[3] = v32;
    v34[4] = v28;
    v34[5] = v31;
    v34[6] = v27;
    v34[7] = v30;
    v34[8] = v26;
    v34[9] = a10;
    sub_232C21A34(v34);
    memcpy(v14, v33, 0x50uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232C1A960(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000232D03E80 == a2;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000232D03FB0 == a2;
      if (v7 || (sub_232CEA750() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
        if (v8 || (sub_232CEA750() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6F7250656C797473 && a2 == 0xEF73656974726570)
        {

          return 4;
        }

        else
        {
          v10 = sub_232CEA750();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_232C1AB10(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x65676E6172;
      break;
    case 4:
      result = 0x6F7250656C797473;
      break;
    default:
      return result;
  }

  return result;
}

void sub_232C1ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_232BA66A0();
  v22 = v21;
  v24 = v23;
  sub_232B124A8(&qword_27DDC7DD8, &qword_232CFCB18);
  sub_232B48F0C();
  sub_232B2D114();
  MEMORY[0x28223BE20](v25);
  sub_232C21ECC();
  sub_232B203C8(v22, v22[3]);
  sub_232C213A8();
  sub_232CEA870();
  if (v20)
  {
    sub_232B2040C(v22);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_232C21FEC();
    v31 = sub_232CEA680();
    v32 = v26;
    sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
    sub_232BB6358(&qword_27DDC7608, &qword_27DDC6908, &unk_232CF64D0);
    sub_232C21FEC();
    sub_232CEA690();
    v27 = sub_232BA7230();
    sub_232B124A8(v27, v28);
    sub_232BB6358(&qword_27DDC7610, &qword_27DDC75C0, &qword_232CFCB20);
    sub_232C21F20();
    sub_232CEA690();
    sub_232C21F20();
    sub_232C21FEC();
    sub_232CEA690();
    sub_232C21FEC();
    sub_232CEA690();
    v29 = sub_232C21D80();
    v30(v29);
    sub_232B2040C(v22);
    *v24 = v31;
    v24[1] = v32;
    v24[2] = a10;
    v24[3] = a10;
    v24[4] = a10;
    v24[5] = a10;
  }

  sub_232BA6688();
}

uint64_t sub_232C1AF50(uint64_t a1)
{
  sub_232CEA820();
  MEMORY[0x2383925C0](0);
  return sub_232CEA850();
}

uint64_t sub_232C1AF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C19714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C1AFC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232C19834();
  *a1 = result;
  return result;
}

uint64_t sub_232C1AFE8(uint64_t a1)
{
  v2 = sub_232C20C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C1B024(uint64_t a1)
{
  v2 = sub_232C20C38();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_232C1B060(void *a1@<X8>)
{
  sub_232C19898();
  if (!v1)
  {
    memcpy(a1, __src, 0x78uLL);
  }
}

uint64_t sub_232C1B0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C19B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C1B0DC(uint64_t a1)
{
  v2 = sub_232C20DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C1B118(uint64_t a1)
{
  v2 = sub_232C20DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232C1B1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C19EF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C1B1C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232C19FC8();
  *a1 = result;
  return result;
}

uint64_t sub_232C1B1F0(uint64_t a1)
{
  v2 = sub_232C213FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C1B22C(uint64_t a1)
{
  v2 = sub_232C213FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_232C1B268(void *a1@<X8>)
{
  sub_232C1A010();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

uint64_t sub_232C1B2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C1A22C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C1B2E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232C1A434();
  *a1 = result;
  return result;
}

uint64_t sub_232C1B30C(uint64_t a1)
{
  v2 = sub_232C219A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C1B348(uint64_t a1)
{
  v2 = sub_232C219A8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_232C1B384(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_232C1A50C(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  if (!v9)
  {
    memcpy(a9, v11, 0x50uLL);
  }
}

uint64_t sub_232C1B3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C1A960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C1B400(uint64_t a1)
{
  v2 = sub_232C213A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C1B43C(uint64_t a1)
{
  v2 = sub_232C213A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232C1B4BC(uint64_t a1)
{
  v3 = sub_232CE8C00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232CE9A30();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v33 - v10;
  sub_232CE9A20();
  v12 = *(v4 + 16);
  v37 = a1;
  v12(v6, a1, v3);
  v13 = sub_232CE9A00();
  v14 = sub_232CEA1A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = v7;
    v16 = v15;
    v33[0] = swift_slowAlloc();
    v38 = v33[0];
    *v16 = 136315138;
    v17 = sub_232CE8B60();
    v33[1] = v1;
    v19 = v18;
    (*(v4 + 8))(v6, v3);
    v20 = sub_232BAD2D4(v17, v19, &v38);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_232B02000, v13, v14, "Checking if url %s is a dataless fault", v16, 0xCu);
    v21 = v33[0];
    sub_232B2040C(v33[0]);
    MEMORY[0x238393870](v21, -1, -1);
    v22 = v16;
    v7 = v34;
    MEMORY[0x238393870](v22, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v23 = *(v36 + 8);
  v23(v11, v7);
  v24 = objc_opt_self();
  v25 = sub_232CE8B90();
  v26 = [v24 isURLDatalessFault_];

  if (!v26)
  {
    v27 = 0;
    return v27 & 1;
  }

  if (v26 == 2)
  {
LABEL_12:
    sub_232C20E44();
    swift_allocError();
    swift_willThrow();
    return v27 & 1;
  }

  if (v26 != 1)
  {
    v28 = v35;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1D0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_232B02000, v29, v30, "Received unknown return value from isURLDatalessFault", v31, 2u);
      MEMORY[0x238393870](v31, -1, -1);
    }

    v23(v28, v7);
    goto LABEL_12;
  }

  v27 = 1;
  return v27 & 1;
}

void static FilesDocumentIngester.ingestDocumentFromFile(fileURL:)()
{
  sub_232B35110();
  v1 = v0;
  sub_232CE8C00();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  sub_232C21ECC();
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  sub_232BA6FF8();
  if ((sub_232C1B4BC(v1) & 1) == 0)
  {
    sub_232CE9A20();
    v4 = sub_232C21F08();
    v5(v4);
    v6 = sub_232CE9A00();
    v7 = sub_232CEA1A0();
    if (sub_232C21F58(v7))
    {
      v8 = sub_232BC1F80();
      v23 = sub_232BD41CC();
      v24 = v23;
      *v8 = 136315138;
      v22 = sub_232CE8B60();
      v10 = v9;
      v11 = sub_232C21D60();
      v12(v11);
      v13 = sub_232BAD2D4(v22, v10, &v24);

      *(v8 + 4) = v13;
      sub_232C21EA4(&dword_232B02000, v14, v15, "url %s is not a dataless fault.  Will attempt to ingest the file.");
      sub_232B2040C(v23);
      sub_232BD719C();
      sub_232BA6A84();
    }

    else
    {

      v16 = sub_232C21D60();
      v17(v16);
    }

    v18 = sub_232BA5C94();
    v19(v18);
    v20 = sub_232C22024();
    sub_232C1BB34(v20);
    switch(v21)
    {
      case 1:
        static FilesDocumentIngester.readFromOffice(fileURL:)(v1);
        break;
      case 2:
        sub_232C22024();
        static FilesDocumentIngester.readFromJson(fileURL:)();
        break;
      case 3:
        static FilesDocumentIngester.readFromText(fileURL:)(v1);
        break;
      case 4:
        static FilesDocumentIngester.readFromEML(fileURL:)();
        break;
      case 5:
        break;
      default:
        static FilesDocumentIngester.readFromPDF(fileURL:)(v1);
        break;
    }
  }

  sub_232B20A00();
}

void sub_232C1BB34(uint64_t a1)
{
  sub_232C22098();
  sub_232C1EE24(v2);
  v4 = v3;
  v6 = v5;
  sub_232CE9890();
  sub_232CE9840();
  v15 = v4;
  v16 = v6;
  sub_232C0A5F8();
  sub_232C22050();
  if ((v1 & 1) == 0)
  {
    sub_232CE9880();
    sub_232C21E34();
    MEMORY[0x28223BE20](v7);
    sub_232B55380();
    *(v8 - 16) = &v15;
    sub_232C0A5F8();
    sub_232C22050();
    sub_232CE9860();
    sub_232C21E34();
    MEMORY[0x28223BE20](v9);
    sub_232B55380();
    *(v10 - 16) = &v15;
    sub_232C0A5F8();
    sub_232C22050();
    sub_232CE9850();
    sub_232C21E34();
    MEMORY[0x28223BE20](v11);
    sub_232B55380();
    *(v12 - 16) = &v15;
    sub_232C0A5F8();
    sub_232C22050();
    v13 = sub_232CE9830();
    v15 = v4;
    v16 = v6;
    MEMORY[0x28223BE20](v13);
    sub_232B55380();
    *(v14 - 16) = &v15;
    sub_232C0A5F8();
  }

  sub_232B20A58();
}

void static FilesDocumentIngester.readFromJson(fileURL:)()
{
  sub_232B35110();
  v83 = v0;
  sub_232B37B54();
  sub_232CE9A30();
  sub_232B48F0C();
  v91 = v3;
  v92 = v2;
  MEMORY[0x28223BE20](v2);
  sub_232B3516C();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  sub_232B20628();
  v89 = v8;
  sub_232B20600();
  MEMORY[0x28223BE20](v9);
  v85 = &v81 - v10;
  v11 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v11);
  sub_232B2D114();
  MEMORY[0x28223BE20](v12);
  v82 = &v81 - v13;
  sub_232CE9DA0();
  sub_232B48F0C();
  v86 = v15;
  v87 = v14;
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  v18 = v17 - v16;
  v19 = sub_232CE8C00();
  sub_232B48F0C();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_232B3516C();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  sub_232B20628();
  v88 = v27;
  sub_232B20600();
  MEMORY[0x28223BE20](v28);
  sub_232B20628();
  v84 = v29;
  sub_232B20600();
  MEMORY[0x28223BE20](v30);
  v32 = &v81 - v31;
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  v90 = v21;
  v33 = *(v21 + 16);
  v93 = v1;
  v94 = v19;
  v33(v32, v1, v19);
  v34 = sub_232C1F090(v32);
  if (v34 && (v35 = v34, v96[0] = xmmword_232CFBB70, sub_232CE8C70(), v35, v36 = *(&v96[0] + 1), *(&v96[0] + 1) >> 60 != 15))
  {
    v49 = *&v96[0];
    sub_232CE9D90();
    sub_232C21EE4();
    sub_232CE9D70();
    if (v50)
    {
      sub_232CE9D90();
      v51 = sub_232CE9D60();
      v53 = v52;

      (*(v86 + 8))(v18, v87);
      if (v53 >> 60 != 15)
      {
        sub_232CE8940();
        swift_allocObject();
        sub_232CE8930();
        sub_232C20774();
        sub_232CE8920();

        memcpy(v96, v95, 0x78uLL);
        v71 = sub_232C1F418();
        sub_232C207C8(v96);
        v72 = v82;
        v73 = v94;
        v33(v82, v93, v94);
        sub_232B351FC();
        sub_232B12504(v74, v75, v76, v73);
        v77 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
        sub_232B207D4(&v71[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url], v95);
        sub_232B5BD4C(v72, &v71[v77], &qword_27DDC6AD8, &unk_232CF82F0);
        swift_endAccess();
        v78 = objc_allocWithZone(type metadata accessor for DUDocument());
        sub_232C22030();
        sub_232BB6018(v51, v53);
        v79 = sub_232C21EE4();
        sub_232BB6018(v79, v80);
        goto LABEL_14;
      }
    }

    v54 = v89;
    sub_232CE9A20();
    v55 = v88;
    v56 = v94;
    v33(v88, v93, v94);
    v57 = v54;
    v58 = sub_232CE9A00();
    v59 = sub_232CEA1C0();
    if (sub_232C21F58(v59))
    {
      v60 = sub_232BC1F80();
      v93 = v49;
      v61 = v55;
      v62 = v60;
      *&v96[0] = sub_232BD41CC();
      *v62 = 136315138;
      sub_232C21CF8();
      sub_232C20918(v63, v64, MEMORY[0x277CC9290]);
      sub_232CEA720();
      sub_232C21F38();
      v65(v61, v66);
      v67 = sub_232BAD2D4(v61, v56, v96);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_232B02000, v58, v59, "Unable to convert JSON data from filepath %s's data", v62, 0xCu);
      sub_232C21D90();
      sub_232BA6A84();
      sub_232BB6018(v93, v36);
    }

    else
    {
      v68 = sub_232C21EE4();
      sub_232BB6018(v68, v69);

      sub_232C22004();
      v70(v55, v56);
    }

    sub_232C21FF8();
    v48 = v57;
  }

  else
  {
    sub_232CE9A20();
    v37 = v94;
    v33(v25, v93, v94);
    v38 = sub_232CE9A00();
    v39 = sub_232CEA1C0();
    if (sub_232C21F58(v39))
    {
      v40 = sub_232BC1F80();
      *&v96[0] = sub_232BD41CC();
      *v40 = 136315138;
      sub_232C21CF8();
      sub_232C20918(v41, v42, MEMORY[0x277CC9290]);
      sub_232CEA720();
      sub_232C21F38();
      v43(v25, v44);
      v45 = sub_232BAD2D4(v25, v37, v96);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_232B02000, v38, v39, "Unable to obtain data from filepath: %s", v40, 0xCu);
      sub_232C21D90();
      sub_232BA6A84();
    }

    else
    {

      sub_232C22004();
      v46(v25, v37);
    }

    sub_232C21FF8();
    v48 = v6;
  }

  v47(v48, v92);
LABEL_14:
  sub_232B20A00();
}

void static FilesDocumentIngester.readFromPDF(fileURL:)(uint64_t a1)
{
  sub_232C22098();
  v3 = v2;
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v5 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v5);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232C21E84();
  v7 = sub_232C330E0(v3, 5120);
  v9 = v8;
  v10 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
  v11 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C(&v10[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text], &v21);
  *v11 = v7;
  v11[1] = v9;

  v12 = sub_232CE8C00();
  sub_232B13F24();
  v13 = sub_232B35090();
  v14(v13);
  sub_232B351FC();
  sub_232B12504(v15, v16, v17, v12);
  v18 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
  sub_232B207D4(&v10[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url], &v20);
  sub_232B5BD4C(v1, &v10[v18], &qword_27DDC6AD8, &unk_232CF82F0);
  swift_endAccess();
  v19 = objc_allocWithZone(type metadata accessor for DUDocument());
  sub_232C21F70();
  sub_232B20A58();
}

void static FilesDocumentIngester.readFromOffice(fileURL:)(uint64_t a1)
{
  sub_232C22098();
  v1 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v1);
  sub_232B2D114();
  MEMORY[0x28223BE20](v2);
  v4 = &v22[-v3];
  v5 = objc_opt_self();
  v6 = sub_232CE8B90();
  v7 = [v5 searchableAttributesForOfficeFile_];

  if (v7)
  {
    v8 = v7;
    v9 = sub_232C207F8(v8, &selRef_textContent);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
      v14 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
      sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text], &v23);
      *v14 = v11;
      v14[1] = v12;

      v15 = sub_232CE8C00();
      sub_232B13F24();
      v16 = sub_232B2080C();
      v17(v16);
      sub_232B351FC();
      sub_232B12504(v18, v19, v20, v15);
      v21 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
      sub_232B207D4(&v13[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url], v22);
      sub_232B5BD4C(v4, &v13[v21], &qword_27DDC6AD8, &unk_232CF82F0);
      swift_endAccess();
      objc_allocWithZone(type metadata accessor for DUDocument());
      DUDocument.init(rawDocument:maxLength:)(v13, 5120);
    }
  }

  sub_232B20A58();
}

void static FilesDocumentIngester.readFromText(fileURL:)(uint64_t a1)
{
  sub_232C22098();
  sub_232B5139C();
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v3 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v3);
  sub_232B2D114();
  MEMORY[0x28223BE20](v4);
  sub_232C21E84();
  v5 = sub_232CE9DA0();
  v6 = sub_232B2D120(v5);
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  sub_232CE9D90();
  sub_232BC1E48();
  v7 = sub_232CE9D00();
  v9 = v8;
  v10 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
  v11 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232C0A090(v10, &v20);
  *v11 = v7;
  v11[1] = v9;

  v12 = sub_232CE8C00();
  sub_232B13F24();
  sub_232C21FE0();
  v13();
  sub_232B351FC();
  sub_232B12504(v14, v15, v16, v12);
  v17 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
  sub_232B207D4(&v10[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url], &v19);
  sub_232B5BD4C(v1, &v10[v17], &qword_27DDC6AD8, &unk_232CF82F0);
  swift_endAccess();
  v18 = objc_allocWithZone(type metadata accessor for DUDocument());
  sub_232C21F70();
  sub_232B20A58();
}

void static FilesDocumentIngester.readFromEML(fileURL:)()
{
  sub_232B35110();
  v3 = v2;
  v4 = sub_232CE8C00();
  sub_232B48F0C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  sub_232CE9A30();
  sub_232B48F0C();
  v219 = v9;
  v220 = v8;
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  sub_232BA6FF8();
  v10 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v10);
  sub_232B2D114();
  MEMORY[0x28223BE20](v11);
  sub_232C21E84();
  v12 = sub_232CE9DA0();
  v13 = sub_232B2D120(v12);
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  sub_232C21ECC();
  v14 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v14);
  sub_232B2D114();
  MEMORY[0x28223BE20](v15);
  v17 = &v208 - v16;
  v18 = sub_232CE8C20();
  v215 = v1;
  v216 = v17;
  v209 = v0;
  v213 = v6;
  v214 = v4;
  v19 = v18;
  v21 = v20;
  v22 = objc_opt_self();
  v23 = sub_232CE8C50();
  v24 = [v22 parseRfc822_];

  v25 = [objc_allocWithZone(type metadata accessor for DUDocumentEmailData(0)) init];
  v26 = v24;
  sub_232C207F8(v26, &selRef_subject);
  v27 = objc_allocWithZone(MEMORY[0x277D070D0]);
  v28 = sub_232BA7230();
  v30 = sub_232C20654(v28, v29);
  v31 = [v30 subjectWithoutPrefix];

  v32 = sub_232CE9D50();
  v34 = v33;

  v218 = v25;
  v35 = &v25[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
  sub_232B13F5C(&v25[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject], &v238);
  *v35 = v32;
  v35[1] = v34;

  v219 = v26;
  v36 = [v26 from];
  if (v36)
  {
    v37 = sub_232C207F8(v36, &selRef_name);
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = &v218[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName];
  sub_232B13F5C(&v218[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName], &v237);
  *v40 = v37;
  v40[1] = v39;

  v41 = [v219 from];
  v42 = v41;
  v210 = v3;
  v211 = v21;
  if (v41)
  {
    v43 = [v41 emailAddress];

    v42 = sub_232CE9D50();
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  v46 = v218;
  v47 = &v218[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail];
  sub_232B13F5C(&v218[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail], &v236);
  *v47 = v42;
  *(v47 + 1) = v45;

  v48 = v219;
  v49 = [v219 senderDomain];
  sub_232CE9D50();
  sub_232C22068();
  v50 = &v46[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain];
  sub_232B13F5C(&v46[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain], &v235);
  *v50 = v45;
  *(v50 + 1) = v47;

  v51 = &off_2789A8000;
  v52 = [v48 to];
  v217 = sub_232BA4DEC(0, &qword_27DDC7D20, 0x277D020E0);
  v53 = sub_232CE9FE0();

  v54 = sub_232B26B10();
  v55 = MEMORY[0x277D84F90];
  v212 = v19;
  if (v54)
  {
    sub_232C21D10(v54);
    v220 = v48;
    if ((v48 & 0x8000000000000000) != 0)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v17 = 0;
    v56 = v227[0];
    v48 = v53 & 0xC000000000000001;
    v3 = v53;
    do
    {
      if (v48)
      {
        v57 = MEMORY[0x2383922C0](0, v53);
      }

      else
      {
        v57 = *(v53 + 32);
      }

      sub_232C20860(v57);
      sub_232C22068();
      if (!v51)
      {
        v51 = 0xE000000000000000;
      }

      sub_232C21E20();
      if (v59)
      {
        v60 = sub_232C21D70(v58);
        sub_232B649F4(v60, v55, 1);
        v56 = v227[0];
      }

      sub_232C21E0C();
      v53 = v3;
    }

    while (v220);

    v55 = MEMORY[0x277D84F90];
    v51 = &off_2789A8000;
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
  }

  v61 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
  v62 = sub_232C21ED8();
  sub_232B13F5C(v62, &v234);
  sub_232C21FA4();
  v63 = sub_232C21FBC([v219 v51[242]]);

  v64 = sub_232B26B10();
  if (v64)
  {
    sub_232C21D10(v64);
    if ((v48 & 0x8000000000000000) != 0)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v17 = 0;
    sub_232C21E94();
    v3 = v63;
    do
    {
      if (v220)
      {
        v65 = MEMORY[0x2383922C0](0, v63);
      }

      else
      {
        v65 = v63[4];
      }

      v66 = v65;
      v63 = [v65 emailAddress];
      sub_232CE9D50();

      sub_232C22010();
      if (v59)
      {
        v69 = sub_232C21D70(v67);
        sub_232B649F4(v69, v63, 1);
        v56 = v227[0];
      }

      sub_232C21E68();
    }

    while (!v68);

    v55 = MEMORY[0x277D84F90];
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
  }

  v70 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
  v71 = sub_232C21ED8();
  sub_232B13F5C(v71, &v233);
  sub_232C21FA4();
  v72 = &off_2789A8000;
  v73 = sub_232C21FBC([v219 cc]);

  v74 = sub_232B26B10();
  if (v74)
  {
    sub_232C21D10(v74);
    if ((v48 & 0x8000000000000000) != 0)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    sub_232C21EF0();
    do
    {
      if (v220)
      {
        v75 = MEMORY[0x2383922C0](v17, v73);
      }

      else
      {
        v75 = *(v73 + 8 * v17 + 32);
      }

      sub_232C20860(v75);
      sub_232C22068();
      if (!v72)
      {
        v72 = 0xE000000000000000;
      }

      sub_232C21E20();
      if (v59)
      {
        v77 = sub_232C21D70(v76);
        sub_232B649F4(v77, v55, 1);
        v56 = v227[0];
      }

      sub_232C21E0C();
      v73 = v3;
    }

    while (v48 != v17);

    v55 = MEMORY[0x277D84F90];
    v72 = &off_2789A8000;
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
  }

  v78 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames;
  v79 = sub_232C21ED8();
  sub_232B13F5C(v79, &v232);
  sub_232C21FA4();
  v80 = sub_232C21FBC([v219 v72[243]]);

  v81 = sub_232B26B10();
  if (v81)
  {
    sub_232C21D10(v81);
    if ((v48 & 0x8000000000000000) != 0)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v17 = 0;
    sub_232C21E94();
    v3 = v80;
    do
    {
      if (v220)
      {
        v82 = MEMORY[0x2383922C0](0, v80);
      }

      else
      {
        v82 = v80[4];
      }

      v83 = v82;
      v80 = [v82 emailAddress];
      sub_232CE9D50();

      sub_232C22010();
      if (v59)
      {
        v85 = sub_232C21D70(v84);
        sub_232B649F4(v85, v80, 1);
        v56 = v227[0];
      }

      sub_232C21E68();
    }

    while (!v68);

    v55 = MEMORY[0x277D84F90];
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
  }

  v86 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails;
  v87 = sub_232C21ED8();
  sub_232B13F5C(v87, &v231);
  sub_232C21FA4();
  v88 = &off_2789A8000;
  v89 = sub_232C21FBC([v219 bcc]);

  v90 = sub_232B26B10();
  if (v90)
  {
    sub_232C21D10(v90);
    if ((v48 & 0x8000000000000000) != 0)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    sub_232C21EF0();
    do
    {
      if (v220)
      {
        v91 = MEMORY[0x2383922C0](v17, v89);
      }

      else
      {
        v91 = *(v89 + 8 * v17 + 32);
      }

      sub_232C20860(v91);
      sub_232C22068();
      if (!v88)
      {
        v88 = 0xE000000000000000;
      }

      sub_232C21E20();
      if (v59)
      {
        v93 = sub_232C21D70(v92);
        sub_232B649F4(v93, v55, 1);
        v56 = v227[0];
      }

      sub_232C21E0C();
      v89 = v3;
    }

    while (v48 != v17);

    v55 = MEMORY[0x277D84F90];
    v88 = &off_2789A8000;
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
  }

  v94 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames;
  v95 = sub_232C21ED8();
  sub_232B13F5C(v95, &v230);
  sub_232C21FA4();
  v96 = sub_232C21FBC([v219 v88[244]]);

  v97 = sub_232B26B10();
  v98 = v216;
  if (v97)
  {
    v99 = v97;
    v227[0] = v55;
    sub_232B649F4(0, v97 & ~(v97 >> 63), 0);
    if (v99 < 0)
    {
LABEL_107:
      __break(1u);
      return;
    }

    v100 = 0;
    sub_232C21E94();
    v101 = v96;
    v102 = v99;
    do
    {
      if (v220)
      {
        v103 = MEMORY[0x2383922C0](v100, v96);
      }

      else
      {
        v103 = *(v96 + 8 * v100 + 32);
      }

      v104 = v103;
      v105 = [v103 emailAddress];
      v106 = sub_232CE9D50();
      v108 = v107;

      v227[0] = v56;
      v110 = *(v56 + 16);
      v109 = *(v56 + 24);
      if (v110 >= v109 >> 1)
      {
        v112 = sub_232C21D70(v109);
        sub_232B649F4(v112, v110 + 1, 1);
        v56 = v227[0];
      }

      ++v100;
      *(v56 + 16) = v110 + 1;
      v111 = v56 + 16 * v110;
      *(v111 + 32) = v106;
      *(v111 + 40) = v108;
      v96 = v101;
    }

    while (v102 != v100);

    v98 = v216;
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
  }

  v113 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails;
  v114 = v218;
  sub_232B13F5C(&v218[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails], &v229);
  *&v114[v113] = v56;

  v115 = v219;
  v116 = [v219 date];
  sub_232CE8CF0();

  sub_232CE8D10();
  sub_232B351FC();
  v217 = v117;
  sub_232B12504(v118, v119, v120, v117);
  v121 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  sub_232B207D4(&v114[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived], v227);
  sub_232B5BD4C(v98, &v114[v121], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  sub_232BA4DEC(0, &qword_27DDC7D28, 0x277D71420);
  v122 = [v115 htmlBody];
  v123 = sub_232CE9D50();
  v125 = v124;

  v126 = sub_232B80670(v123, v125);
  v127 = [v126 textContent];

  v128 = sub_232CE9D50();
  v130 = v129;

  v131 = &v114[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
  sub_232C0A090(v132, &v228);
  *v131 = v128;
  v131[1] = v130;
  v208 = v131;

  v133 = [v115 headersDictionary];
  sub_232B124A8(&qword_27DDC75A8, &qword_232CFA518);
  v134 = sub_232CE9C40();

  sub_232B124A8(&qword_27DDC77D0, &unk_232CFAA50);
  v135 = sub_232CEA630();
  v136 = v135;
  v137 = 0;
  v138 = 1 << *(v134 + 32);
  v139 = -1;
  if (v138 < 64)
  {
    v139 = ~(-1 << v138);
  }

  v140 = v139 & *(v134 + 64);
  v141 = (v138 + 63) >> 6;
  v220 = v135 + 64;
  if (v140)
  {
    while (1)
    {
      v142 = __clz(__rbit64(v140));
      v140 &= v140 - 1;
LABEL_90:
      v145 = v142 | (v137 << 6);
      v146 = (*(v134 + 48) + 16 * v145);
      v147 = *v146;
      v148 = v146[1];
      v149 = *(*(v134 + 56) + 8 * v145);
      if (*(v149 + 16))
      {
        sub_232B204B4(v149 + 32, v227);

        v150 = sub_232CE9DC0();
      }

      else
      {

        v150 = 0;
        v151 = 0xE000000000000000;
      }

      *(v220 + ((v145 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v145;
      v152 = (v136[6] + 16 * v145);
      *v152 = v147;
      v152[1] = v148;
      v153 = (v136[7] + 16 * v145);
      *v153 = v150;
      v153[1] = v151;
      v154 = v136[2];
      v155 = __OFADD__(v154, 1);
      v156 = v154 + 1;
      if (v155)
      {
        break;
      }

      v136[2] = v156;
      if (!v140)
      {
        goto LABEL_85;
      }
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_85:
  v143 = v137;
  while (1)
  {
    v137 = v143 + 1;
    if (__OFADD__(v143, 1))
    {
      __break(1u);
      goto LABEL_101;
    }

    if (v137 >= v141)
    {
      break;
    }

    v144 = *(v134 + 64 + 8 * v137);
    ++v143;
    if (v144)
    {
      v142 = __clz(__rbit64(v144));
      v140 = (v144 - 1) & v144;
      goto LABEL_90;
    }
  }

  v157 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
  v158 = v218;
  sub_232B13F5C(&v218[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers], v227);
  *&v158[v157] = v136;

  v159 = [objc_allocWithZone(type metadata accessor for DUDocumentHTMLData()) init];
  v160 = v219;
  v161 = [v219 htmlContentData];
  v162 = sub_232CE8C80();
  v164 = v163;

  sub_232CE9D90();
  v165 = sub_232CE9D70();
  v167 = v166;
  sub_232B41BEC(v162, v164);
  v168 = &v159[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  sub_232B13F5C(&v159[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString], &v226);
  *v168 = v165;
  v168[1] = v167;

  v169 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F5C(&v159[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData], &v225);
  v170 = *&v159[v169];
  *&v159[v169] = v158;
  v171 = v158;

  v172 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
  v173 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F5C(&v172[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData], &v224);
  v174 = *&v172[v173];
  *&v172[v173] = v159;
  v175 = v159;

  v176 = v160;
  sub_232C207F8(v176, &selRef_subject);
  v177 = objc_allocWithZone(MEMORY[0x277D070D0]);
  v178 = sub_232BA7230();
  v180 = sub_232C20654(v178, v179);
  v181 = [v180 subjectWithoutPrefix];

  v182 = sub_232CE9D50();
  v184 = v183;

  v185 = &v172[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
  sub_232B13F5C(&v172[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline], &v223);
  *v185 = v182;
  v185[1] = v184;

  v186 = v214;
  v187 = v209;
  (*(v213 + 16))(v209, v210, v214);
  sub_232B351FC();
  sub_232B12504(v188, v189, v190, v186);
  v191 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
  sub_232B207D4(&v172[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url], v222);
  sub_232B5BD4C(v187, &v172[v191], &qword_27DDC6AD8, &unk_232CF82F0);
  swift_endAccess();
  v192 = [v176 date];

  v193 = v216;
  sub_232CE8CF0();

  sub_232B351FC();
  sub_232B12504(v194, v195, v196, v217);
  v197 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
  sub_232B207D4(&v172[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated], v222);
  sub_232B5BD4C(v193, &v172[v197], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  v198 = [v176 from];
  if (v198)
  {
    v199 = sub_232C207F8(v198, &selRef_name);
    v201 = v200;
  }

  else
  {
    v199 = 0;
    v201 = 0;
  }

  v202 = v208;
  v203 = &v172[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
  sub_232B13F5C(&v172[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator], v222);
  *v203 = v199;
  v203[1] = v201;

  v205 = *v202;
  v204 = v202[1];
  v206 = &v172[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C(&v172[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text], &v221);
  *v206 = v205;
  *(v206 + 1) = v204;

  v207 = objc_allocWithZone(type metadata accessor for DUDocument());
  DUDocument.init(rawDocument:maxLength:)(v172, 5120);
  sub_232B41BEC(v212, v211);

  sub_232B20A00();
}

void static FilesDocumentIngester.readFromMessageJson(fileURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_232B35110();
  v21 = v20;
  v118 = sub_232CE9A30();
  sub_232B48F0C();
  v117 = v22;
  MEMORY[0x28223BE20](v23);
  sub_232B3516C();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  sub_232B20628();
  v115 = v28;
  sub_232B20600();
  MEMORY[0x28223BE20](v29);
  v112 = &v109 - v30;
  v31 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v31);
  sub_232B2D114();
  MEMORY[0x28223BE20](v32);
  v110 = &v109 - v33;
  v34 = sub_232CE9DA0();
  sub_232B48F0C();
  v113 = v35;
  MEMORY[0x28223BE20](v36);
  sub_232B20704();
  v39 = v38 - v37;
  v40 = sub_232CE8C00();
  sub_232B48F0C();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  sub_232B3516C();
  v46 = v44 - v45;
  MEMORY[0x28223BE20](v47);
  sub_232B20628();
  v114 = v48;
  sub_232B20600();
  MEMORY[0x28223BE20](v49);
  sub_232B20628();
  v111 = v50;
  sub_232B20600();
  MEMORY[0x28223BE20](v51);
  v53 = &v109 - v52;
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  v116 = v42;
  v54 = *(v42 + 16);
  v119 = v21;
  (v54)(v53, v21, v40);
  v55 = sub_232C1F090(v53);
  if (v55 && (v56 = v55, v121 = xmmword_232CFBB70, sub_232CE8C70(), v56, v57 = *(&v121 + 1), *(&v121 + 1) >> 60 != 15))
  {
    v72 = v121;
    sub_232CE9D90();
    v109 = v72;
    sub_232CE9D70();
    if (v73)
    {
      sub_232CE9D90();
      v74 = sub_232CE9D60();
      v76 = v75;

      sub_232C21DC4();
      v77(v39, v34);
      if (v76 >> 60 != 15)
      {
        v115 = v57;
        sub_232CE8940();
        swift_allocObject();
        sub_232CE8930();
        sub_232C208C4();
        sub_232CE8920();

        v121 = v120[0];
        v122 = v120[1];
        v123 = v120[2];
        sub_232C1F12C(&v121);
        v93 = v92;
        v124 = v121;
        sub_232C21FE0();
        sub_232B13790(v94, v95, v96);
        v125 = v122;
        sub_232C21FE0();
        sub_232B13790(v97, v98, v99);
        v126 = v123;
        sub_232C21FE0();
        sub_232B13790(v100, v101, v102);
        v103 = v110;
        sub_232C21FD4();
        v54();
        sub_232B351FC();
        sub_232B12504(v104, v105, v106, v40);
        v107 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
        sub_232B207D4(v93 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url, v120);
        sub_232B5BD4C(v103, v93 + v107, &qword_27DDC6AD8, &unk_232CF82F0);
        swift_endAccess();
        v108 = objc_allocWithZone(type metadata accessor for DUDocument());
        sub_232C21F70();
        sub_232BB6018(v74, v76);
        sub_232C21E48();
        goto LABEL_14;
      }
    }

    v78 = v115;
    sub_232CE9A20();
    sub_232C21FD4();
    v54();
    v79 = sub_232CE9A00();
    v80 = sub_232CEA1C0();
    if (sub_232C22080(v80))
    {
      v81 = sub_232BC1F80();
      *&v121 = sub_232BD41CC();
      *v81 = 136315138;
      sub_232C21CF8();
      sub_232C20918(v82, v83, MEMORY[0x277CC9290]);
      sub_232CEA720();
      v84 = sub_232C21D38();
      v85(v84);
      v86 = sub_232BC1E48();
      v89 = sub_232BAD2D4(v86, v87, v88);

      *(v81 + 4) = v89;
      _os_log_impl(&dword_232B02000, v79, v80, "Unable to convert JSON data from filepath %s's data", v81, 0xCu);
      sub_232C21D90();
      sub_232BD719C();
      sub_232BB6018(v109, v57);
    }

    else
    {
      sub_232BB6018(v109, v57);

      v90 = sub_232C21D38();
      v91(v90);
    }

    sub_232C21DC4();
    v71 = v78;
  }

  else
  {
    sub_232CE9A20();
    sub_232C21FD4();
    v54();
    v58 = sub_232CE9A00();
    v59 = sub_232CEA1C0();
    if (sub_232C21F58(v59))
    {
      v60 = sub_232BC1F80();
      v61 = sub_232BD41CC();
      *&v121 = v61;
      *v60 = 136315138;
      sub_232C21CF8();
      sub_232C20918(v62, v63, MEMORY[0x277CC9290]);
      v64 = sub_232CEA720();
      v66 = v65;
      sub_232C21DC4();
      v67(v46, v40);
      v68 = sub_232BAD2D4(v64, v66, &v121);

      *(v60 + 4) = v68;
      _os_log_impl(&dword_232B02000, v58, v59, "Unable to obtain data from filepath: %s", v60, 0xCu);
      sub_232B2040C(v61);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    else
    {

      sub_232C21DC4();
      v69(v46, v40);
    }

    sub_232C21DC4();
    v71 = v26;
  }

  v70(v71, v118);
LABEL_14:
  sub_232B20A00();
}

void static FilesDocumentIngester.readFromMessageText(fileURL:)()
{
  sub_232B35110();
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  v2 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v2);
  sub_232B2D114();
  MEMORY[0x28223BE20](v3);
  v5 = &v32[-v4];
  v6 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v6);
  sub_232B2D114();
  MEMORY[0x28223BE20](v7);
  sub_232BA6FF8();
  v8 = sub_232CE9DA0();
  v9 = sub_232B2D120(v8);
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  sub_232CE9D90();
  v10 = sub_232CE9D00();
  v12 = v11;
  v13 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
  v14 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232C0A090(v13, &v34);
  *v14 = v10;
  v14[1] = v12;

  v15 = sub_232CE8C00();
  sub_232B13F24();
  v16 = sub_232BA5C94();
  v17(v16);
  sub_232B351FC();
  sub_232B12504(v18, v19, v20, v15);
  v21 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
  sub_232B207D4(&v13[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url], v33);
  sub_232B5BD4C(v0, &v13[v21], &qword_27DDC6AD8, &unk_232CF82F0);
  swift_endAccess();
  v22 = [objc_allocWithZone(type metadata accessor for DUDocumentMessageData()) init];
  v23 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData], v33);
  v24 = *&v13[v23];
  *&v13[v23] = v22;
  v25 = v22;

  sub_232CE8D00();
  sub_232CE8D10();
  sub_232B351FC();
  sub_232B12504(v26, v27, v28, v29);
  v30 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
  sub_232B207D4(&v13[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated], v32);
  sub_232B5BD4C(v5, &v13[v30], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  v31 = objc_allocWithZone(type metadata accessor for DUDocument());
  sub_232C22030();

  sub_232B20A00();
}

void sub_232C1EE24(uint64_t a1)
{
  sub_232C22098();
  sub_232B37B54();
  v1 = sub_232CE8C00();
  sub_232B48F0C();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v7 = v6 - v5;
  sub_232CE8B50();
  v8 = sub_232CE9DD0();
  v10 = v9;

  sub_232CE9890();
  if (v8 == sub_232CE9870() && v10 == v11)
  {
  }

  else
  {
    sub_232BA5C94();
    v13 = sub_232CEA750();

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_232CE8BA0();
  sub_232CE8B50();
  (*(v3 + 8))(v7, v1);
  sub_232BC1E48();
  sub_232CE9DD0();

LABEL_9:
  sub_232BA5C94();
  sub_232B20A58();
}

id sub_232C1F090(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_232CE8B90();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_232CE8C00();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_232C1F12C(uint64_t a1)
{
  sub_232C22098();
  v2 = v1;
  v3 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v4 = sub_232B2D120(v3);
  MEMORY[0x28223BE20](v4);
  sub_232B3516C();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-v9 - 8];
  v11 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
  v35 = *v2;
  v12 = &v11[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232C0A090(v11, &v33);
  *v12 = v35;
  sub_232B5D6C0(&v35, v32, &qword_27DDC77E8, &qword_232CFAA68);

  v13 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  if (*(v2 + 5))
  {
    v14 = sub_232CE9D20();
    v15 = [v13 dateFromString_];

    if (v15)
    {
      sub_232CE8CF0();

      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v24 = sub_232CE8D10();
    sub_232B12504(v10, v16, 1, v24);
    v25 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
    sub_232B207D4(&v11[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated], v32);
    v22 = &v11[v25];
    v23 = v10;
  }

  else
  {
    sub_232CE8D00();
    sub_232CE8D10();
    sub_232B351FC();
    sub_232B12504(v17, v18, v19, v20);
    v21 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
    sub_232B207D4(&v11[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated], v32);
    v22 = &v11[v21];
    v23 = v7;
  }

  sub_232B5BD4C(v23, v22, &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  v26 = [objc_allocWithZone(type metadata accessor for DUDocumentMessageData()) init];

  v34 = v2[1];
  v27 = &v26[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
  sub_232B13F5C(&v26[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle], v32);
  *v27 = v34;
  sub_232B5D6C0(&v34, v31, &qword_27DDC77E8, &qword_232CFAA68);

  v28 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData], v31);
  v29 = *&v11[v28];
  *&v11[v28] = v26;

  sub_232B20A58();
}

char *sub_232C1F418()
{
  v1 = sub_232B37B54();
  v2 = [objc_allocWithZone(type metadata accessor for DURawDocument(v1)) init];
  v3 = sub_232C1F634();
  v4 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F5C(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData], v13);
  v5 = *&v2[v4];
  *&v2[v4] = v3;

  v6 = sub_232C1F6FC(v0);
  v7 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
  sub_232B13F5C(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements], v12);
  *&v2[v7] = v6;

  v14 = *v0;
  v8 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text], v11);
  *v8 = v14;
  sub_232B5D6C0(&v14, v10, &qword_27DDC77E8, &qword_232CFAA68);

  return v2;
}

id sub_232C1F530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_232B37B54();
  sub_232CE8C00();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232CE8BB0();
  swift_getObjCClassMetadata();
  v9 = a4(v8);
  v10 = sub_232B35090();
  v11(v10);

  return v9;
}

char *sub_232C1F634()
{
  sub_232B5139C();
  v1 = [objc_allocWithZone(type metadata accessor for DUDocumentHTMLData()) init];
  v2 = 0;
  v3 = 0;
  v4 = *(v0 + 32);
  if (v4 != 1)
  {
    v2 = *(v0 + 24);

    v3 = v4;
  }

  v5 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  sub_232C0A090(v4, v11);
  *v5 = v2;
  *(v5 + 1) = v3;

  v6 = sub_232C1F96C();
  v7 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F5C(&v1[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData], &v10);
  v8 = *&v1[v7];
  *&v1[v7] = v6;

  return v1;
}

uint64_t sub_232C1F6FC(uint64_t a1)
{
  v26 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    v1 = *(a1 + 16);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = type metadata accessor for DUDocumentUIElement();

    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = v3[1];
      v7 = v3[2];
      v8 = v3[4];
      v20 = v3[3];
      v9 = objc_allocWithZone(v19);

      v10 = [v9 init];
      v11 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
      sub_232B13F5C(&v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties], v25);
      *&v10[v11] = v8;

      v12 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
      sub_232B13F5C(&v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text], v24);
      *v12 = v5;
      *(v12 + 1) = v4;

      v13 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
      sub_232B13F5C(&v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames], v23);
      *&v10[v13] = v6;

      v14 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices;
      sub_232B13F5C(&v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices], v22);
      *&v10[v14] = v7;

      v15 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range;
      sub_232B13F5C(&v10[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range], v21);
      *&v10[v15] = v20;

      v16 = v10;
      MEMORY[0x238391D50]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_232CEA000();
      }

      v3 += 6;
      sub_232B35090();
      sub_232CEA020();

      --v2;
    }

    while (v2);
    v17 = v26;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v17;
}

char *sub_232C1F96C()
{
  v1 = sub_232B5139C();
  v2 = [objc_allocWithZone(type metadata accessor for DUDocumentEmailData(v1)) init];
  v3 = v2;
  v4 = *(v0 + 48);
  if (*(v0 + 32) != 1 && v4 != 1)
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    *&v27 = *(v0 + 40);
    *(&v27 + 1) = v4;
    v8 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
    sub_232C0A090(v2, v21);
    *v8 = v27;
    sub_232C21F8C(&v27, v20);

    v26 = *(v0 + 56);
    v9 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName];
    sub_232B13F5C(&v3[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName], v20);
    *v9 = v26;
    sub_232C21F8C(&v26, v19);

    v25 = *(v0 + 72);
    v10 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail];
    sub_232B13F5C(&v3[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail], v19);
    *v10 = v25;
    sub_232C21F8C(&v25, v18);

    v24 = *(v0 + 88);
    v11 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain];
    sub_232B13F5C(&v3[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain], v18);
    *v11 = v24;
    sub_232C21F8C(&v24, v17);

    v23 = v7;
    v12 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
    sub_232B13F5C(&v3[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames], v17);
    *&v3[v12] = v7;
    sub_232C21F8C(&v23, v16);

    v22 = v6;
    v13 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
    sub_232B13F5C(&v3[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails], v16);
    *&v3[v13] = v6;
    sub_232C21F8C(&v22, v15);
  }

  return v3;
}

void static FilesDocumentIngester.readTextFromImage(on:)()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v90[1] = *MEMORY[0x277D85DE8];
  v4 = sub_232CE9A30();
  sub_232B48F0C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_232B3516C();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v83 - v15;
  v17 = sub_232CE8C00();
  sub_232B48F0C();
  v89 = v18;
  MEMORY[0x28223BE20](v19);
  sub_232B20704();
  v22 = v21 - v20;
  sub_232CE8B70();
  v88 = v22;
  v23 = sub_232CE8B90();
  v24 = CGImageSourceCreateWithURL(v23, 0);

  if (!v24)
  {
    sub_232CE9A20();

    v63 = sub_232CE9A00();
    v64 = sub_232CEA1C0();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = v4;
      v66 = sub_232BC1F80();
      v90[0] = sub_232BD41CC();
      *v66 = 136315138;
      *(v66 + 4) = sub_232BAD2D4(v3, v1, v90);
      _os_log_impl(&dword_232B02000, v63, v64, "File not found %s.", v66, 0xCu);
      sub_232C21D90();
      sub_232BA6A84();

      (*(v6 + 8))(v13, v65);
      goto LABEL_38;
    }

    v70 = *(v6 + 8);
    v71 = v13;
LABEL_37:
    v70(v71, v4);
LABEL_38:
    (*(v89 + 8))(v88, v17);
LABEL_39:
    sub_232B2080C();
    sub_232B20A00();
    return;
  }

  v87 = v24;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v24, 0, 0);
  if (!ImageAtIndex)
  {
    sub_232CE9A20();
    v67 = sub_232CE9A00();
    v68 = sub_232CEA1C0();
    if (sub_232C22080(v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_232B02000, v67, v68, "Failed to create CGImage from imageSource.", v69, 2u);
      sub_232BA6A84();
    }

    v70 = *(v6 + 8);
    v71 = v16;
    goto LABEL_37;
  }

  v29 = ImageAtIndex;
  type metadata accessor for VNImageOption(0, v26, v27, v28);
  sub_232C20918(&qword_27DDC65B8, type metadata accessor for VNImageOption, &unk_232CF56F0);
  v30 = v29;
  v31 = sub_232CE9C60();
  v32 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  v85 = v30;
  v35 = sub_232C206B8(v30, v31, v33, v34);
  v36 = [objc_allocWithZone(MEMORY[0x277CE2DB8]) init];
  [v36 setRecognitionLevel_];
  sub_232CE9810();
  if (sub_232CE9800())
  {
    [v36 setAutomaticallyDetectsLanguage_];
  }

  sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_232CF64E0;
  *(v37 + 32) = v36;
  sub_232BA4DEC(0, &qword_27DDC7D38, 0x277CE2DF0);
  v38 = v36;
  sub_232BC1E48();
  v39 = sub_232CE9FD0();

  v90[0] = 0;
  v40 = [v35 performRequests:v39 error:v90];

  v41 = v38;
  if (!v40)
  {
    v72 = v90[0];
    v73 = sub_232CE8B30();

    swift_willThrow();
    sub_232CE9A20();
    v74 = v73;
    v75 = sub_232CE9A00();
    v76 = sub_232CEA1C0();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = sub_232BC1F80();
      v78 = swift_slowAlloc();
      v84 = v35;
      v79 = v4;
      v80 = v78;
      *v77 = 138412290;
      v81 = v73;
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 4) = v82;
      *v80 = v82;
      _os_log_impl(&dword_232B02000, v75, v76, "Error performing OCR request: %@", v77, 0xCu);
      sub_232B13790(v80, &qword_27DDC6FD0, &unk_232CFA240);
      v4 = v79;
      v35 = v84;
      sub_232BA6A84();
      sub_232BA6A84();
    }

    v70 = *(v6 + 8);
    v71 = v10;
    goto LABEL_37;
  }

  v83 = v17;
  v84 = v35;
  v42 = v90[0];
  v43 = sub_232C20960(v38);
  if (v43)
  {
    v44 = v43;
    v45 = sub_232B26B10();
    v46 = 0;
    v86 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v45 == v46)
      {

        v90[0] = v86;
        sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
        sub_232B27E88();
        sub_232CE9CD0();

        (*(v89 + 8))(v88, v83);
        goto LABEL_39;
      }

      if ((v44 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x2383922C0](v46, v44);
      }

      else
      {
        if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v47 = *(v44 + 8 * v46 + 32);
      }

      v48 = v47;
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
      }

      v50 = [v47 topCandidates_];
      sub_232BA4DEC(0, &qword_27DDC7D40, 0x277CE2DD0);
      v51 = sub_232CE9FE0();

      if (v51 >> 62)
      {
        if (sub_232CEA610())
        {
          goto LABEL_18;
        }

LABEL_15:

        ++v46;
        v38 = v41;
      }

      else
      {
        if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

LABEL_18:
        if ((v51 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x2383922C0](0, v51);
        }

        else
        {
          if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v52 = *(v51 + 32);
        }

        v53 = v52;

        v54 = [v53 string];

        v55 = sub_232CE9D50();
        v57 = v56;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232B35ECC();
          v86 = v61;
        }

        v58 = v86[2];
        if (v58 >= v86[3] >> 1)
        {
          sub_232B35ECC();
          v86 = v62;
        }

        v59 = v86;
        v86[2] = v58 + 1;
        v60 = &v59[2 * v58];
        v60[4] = v55;
        v60[5] = v57;
        v46 = v49;
        v38 = v41;
      }
    }
  }

  __break(1u);
}

id sub_232C204B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_232CE8C00();
  sub_232B48F0C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v11 = v10 - v9;
  sub_232CE8BB0();
  v12 = a4(v11);
  (*(v7 + 8))(v11, v5);

  return v12;
}

id FilesDocumentIngester.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FilesDocumentIngester.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilesDocumentIngester();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FilesDocumentIngester.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilesDocumentIngester();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232C20654(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_232CE9D20();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithString_];

  return v4;
}

id sub_232C206B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VNImageOption(0, a2, a3, a4);
  sub_232C20918(&qword_27DDC65B8, type metadata accessor for VNImageOption, &unk_232CF56F0);
  v6 = sub_232CE9C20();

  v7 = [v4 initWithCGImage:a1 options:v6];

  return v7;
}

unint64_t sub_232C20774()
{
  result = qword_27DDC7D18;
  if (!qword_27DDC7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D18);
  }

  return result;
}

uint64_t sub_232C207F8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_232CE9D50();
  }

  return sub_232BC1E48();
}

uint64_t sub_232C20860(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232CE9D50();

  return v3;
}

unint64_t sub_232C208C4()
{
  result = qword_27DDC7D30;
  if (!qword_27DDC7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D30);
  }

  return result;
}

uint64_t sub_232C20918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232C20960(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_232BA4DEC(0, &qword_27DDC7D90, 0x277CE2DE0);
  v3 = sub_232CE9FE0();

  return v3;
}

unint64_t sub_232C209F8()
{
  result = qword_27DDC7D48;
  if (!qword_27DDC7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilesDocumentIngesterError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for FilesDocumentIngesterError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_232C20B64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 120))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232C20BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_232C20C38()
{
  result = qword_27DDC7D58;
  if (!qword_27DDC7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D58);
  }

  return result;
}

unint64_t sub_232C20C8C()
{
  result = qword_27DDC7D68;
  if (!qword_27DDC7D68)
  {
    sub_232B27EEC(&qword_27DDC7D60, &qword_232CFC7A0);
    sub_232C20D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D68);
  }

  return result;
}

unint64_t sub_232C20D10()
{
  result = qword_27DDC7D70;
  if (!qword_27DDC7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D70);
  }

  return result;
}

unint64_t sub_232C20D64()
{
  result = qword_27DDC7D78;
  if (!qword_27DDC7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D78);
  }

  return result;
}

unint64_t sub_232C20DF0()
{
  result = qword_27DDC7D88;
  if (!qword_27DDC7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7D88);
  }

  return result;
}

unint64_t sub_232C20E44()
{
  result = qword_27DDC7DA0;
  if (!qword_27DDC7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DA0);
  }

  return result;
}

uint64_t sub_232C20EA8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_232C21F50(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return sub_232C21F50((*a1 | (v4 << 8)) - 3);
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

      return sub_232C21F50((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_232C21F50((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_232C21F50(v8);
}

_BYTE *sub_232C20F2C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232C21008(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232C2105C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_232C210D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return sub_232C21F50(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return sub_232C21F50(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return sub_232C21F50(v4);
}

uint64_t sub_232C21128(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_232C2119C()
{
  result = qword_27DDC7DA8;
  if (!qword_27DDC7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DA8);
  }

  return result;
}

unint64_t sub_232C211F4()
{
  result = qword_27DDC7DB0;
  if (!qword_27DDC7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DB0);
  }

  return result;
}

unint64_t sub_232C2124C()
{
  result = qword_27DDC7DB8;
  if (!qword_27DDC7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DB8);
  }

  return result;
}

unint64_t sub_232C212A4()
{
  result = qword_27DDC7DC0;
  if (!qword_27DDC7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DC0);
  }

  return result;
}

unint64_t sub_232C212FC()
{
  result = qword_27DDC7DC8;
  if (!qword_27DDC7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DC8);
  }

  return result;
}

unint64_t sub_232C21354()
{
  result = qword_27DDC7DD0;
  if (!qword_27DDC7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DD0);
  }

  return result;
}

unint64_t sub_232C213A8()
{
  result = qword_27DDC7DE0;
  if (!qword_27DDC7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DE0);
  }

  return result;
}

unint64_t sub_232C213FC()
{
  result = qword_27DDC7DF0;
  if (!qword_27DDC7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DF0);
  }

  return result;
}

unint64_t sub_232C21450()
{
  result = qword_27DDC7DF8;
  if (!qword_27DDC7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7DF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FilesDocumentIngester.DocumentHTMLData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FilesDocumentIngester.DocumentUIElement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232C216CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232C21720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_232C2179C()
{
  result = qword_27DDC7E00;
  if (!qword_27DDC7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E00);
  }

  return result;
}

unint64_t sub_232C217F4()
{
  result = qword_27DDC7E08;
  if (!qword_27DDC7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E08);
  }

  return result;
}

unint64_t sub_232C2184C()
{
  result = qword_27DDC7E10;
  if (!qword_27DDC7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E10);
  }

  return result;
}

unint64_t sub_232C218A4()
{
  result = qword_27DDC7E18;
  if (!qword_27DDC7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E18);
  }

  return result;
}

unint64_t sub_232C218FC()
{
  result = qword_27DDC7E20;
  if (!qword_27DDC7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E20);
  }

  return result;
}

unint64_t sub_232C21954()
{
  result = qword_27DDC7E28;
  if (!qword_27DDC7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E28);
  }

  return result;
}

unint64_t sub_232C219A8()
{
  result = qword_27DDC7E38;
  if (!qword_27DDC7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilesDocumentIngester.DocumentEmailData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FilesDocumentIngester.DocumentEmailData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232C21BCC()
{
  result = qword_27DDC7E40;
  if (!qword_27DDC7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E40);
  }

  return result;
}

unint64_t sub_232C21C24()
{
  result = qword_27DDC7E48;
  if (!qword_27DDC7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E48);
  }

  return result;
}

unint64_t sub_232C21C7C()
{
  result = qword_27DDC7E50;
  if (!qword_27DDC7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E50);
  }

  return result;
}

void sub_232C21D10(uint64_t a1)
{
  *(v1 + 248) = v2;

  sub_232B649F4(0, a1 & ~(a1 >> 63), 0);
}

void sub_232C21D90()
{
  sub_232B2040C(v0);

  JUMPOUT(0x238393870);
}

uint64_t sub_232C21DDC()
{

  return sub_232CEA680();
}

void sub_232C21E0C()
{
  *(v1 + 16) = v0;
  v5 = v1 + 16 * v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

uint64_t sub_232C21E48()
{
  v2 = *(v0 - 336);
  v3 = *(v0 - 288);

  return sub_232BB6018(v2, v3);
}

void sub_232C21E68()
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v3;
  *(v5 + 32) = v0;
  *(v5 + 40) = v4;
}

void sub_232C21EA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 116);
  v8 = *(v5 - 112);

  _os_log_impl(a1, v8, v7, a4, v4, 0xCu);
}

BOOL sub_232C21F58(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id sub_232C21F70()
{

  return DUDocument.init(rawDocument:maxLength:)(v0, 5120);
}

uint64_t sub_232C21F8C(uint64_t a1, uint64_t a2)
{

  return sub_232B5D6C0(a1, a2, v2, v3);
}

uint64_t sub_232C21FA4()
{
  *(v1 + v0) = v2;
}

uint64_t sub_232C21FBC(uint64_t a1)
{

  return sub_232CE9FE0();
}

id sub_232C22030()
{

  return DUDocument.init(rawDocument:maxLength:)(v0, 5120);
}

uint64_t sub_232C22050()
{
}

void sub_232C22068()
{
}

BOOL sub_232C22080(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(uint64_t a1)
{
  result = qword_27DDC7E58;
  if (!qword_27DDC7E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C22120(uint64_t a1)
{
  sub_232CE9340();
  if (v1 <= 0x3F)
  {
    sub_232C221B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232C221B0()
{
  if (!qword_27DDC64D8)
  {
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC64D8);
    }
  }
}

int *sub_232C22200@<X0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  *(a2 + result[5]) = 2;
  *(a2 + result[6]) = 2;
  *(a2 + result[7]) = 2;
  *(a2 + result[8]) = 2;
  *(a2 + result[9]) = 2;
  return result;
}

uint64_t sub_232C22258()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5060);
  sub_232B135C4(v0, qword_27DDD5060);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF7250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "isSupportedLocale";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "containsDataDetectors";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isClassifiedAsEvent";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "textLengthPass";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isEventCandidate";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C224DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = sub_232B13EE0();
        sub_232C2259C(v6, v7, v8, v9);
        break;
      case 2:
        v22 = sub_232B13EE0();
        sub_232C22600(v22, v23, v24, v25);
        break;
      case 3:
        v14 = sub_232B13EE0();
        sub_232C22664(v14, v15, v16, v17);
        break;
      case 4:
        v18 = sub_232B13EE0();
        sub_232C226C8(v18, v19, v20, v21);
        break;
      case 5:
        v10 = sub_232B13EE0();
        sub_232C2272C(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C22790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_232B13EF4();
  result = sub_232C2280C(v4, v5, v6, v7);
  if (!v3)
  {
    v9 = sub_232B13EF4();
    sub_232C22884(v9, v10, v11, v12);
    v13 = sub_232B13EF4();
    sub_232C228FC(v13, v14, v15, v16);
    v17 = sub_232B13EF4();
    sub_232C22974(v17, v18, v19, v20);
    v21 = sub_232B13EF4();
    sub_232C229EC(v21, v22, v23, v24);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C2280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}

uint64_t sub_232C22884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}

uint64_t sub_232C228FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}

uint64_t sub_232C22974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}