void sub_22C10D558()
{
  v1 = sub_22BE5CE4C(&qword_27D912140, &qword_22C2B5FD8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_22C270184();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v7;
  v8 = type metadata accessor for ProgramStatement(0) - 8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = v0[2];
  v30[1] = v0[1];
  v31[0] = v12;
  v30[0] = *v0;
  *(v31 + 9) = *(v0 + 41);
  v13 = v12;
  v14 = *(v12 + 16);
  v25 = (v28 + 32);
  v29 = MEMORY[0x277D84F90];
  while (v14 != v11)
  {
    if (v11 >= *(v13 + 16))
    {
      __break(1u);

      sub_22BE41F44(v10, type metadata accessor for ProgramStatement);

      __break(1u);
      return;
    }

    sub_22BE3F24C();
    sub_22C10FBB0(v30, v3);
    sub_22BE41F44(v10, type metadata accessor for ProgramStatement);
    if (sub_22BE1AEA8(v3, 1, v4) == 1)
    {
      sub_22BE233E8(v3, &qword_27D912140, &qword_22C2B5FD8);
      ++v11;
    }

    else
    {
      v15 = *v25;
      (*v25)(v26, v3, v4);
      v24 = v15;
      v15(v27, v26, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE67968(0, *(v29 + 16) + 1, 1, v29);
        v29 = v21;
      }

      v17 = *(v29 + 16);
      v16 = *(v29 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v23 = v17 + 1;
        sub_22BE67968(v16 > 1, v17 + 1, 1, v29);
        v18 = v23;
        v29 = v22;
      }

      ++v11;
      v19 = v28;
      v20 = v29;
      *(v29 + 16) = v18;
      v24(v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, v27, v4);
    }
  }
}

uint64_t MessagePayload.PlannerReturnedRawPlan.Source.init(ifps:)()
{
  sub_22C26F164();
  sub_22BE18000();
  v0 = sub_22BE460A4();

  return v1(v0);
}

void MessagePayload.ClientAction.init(ifps:eventId:)()
{
  sub_22BE19460();
  v2 = v1;
  v4 = v3;
  v108 = sub_22C26ECC4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v100 = v6;
  v7 = sub_22BE5CE4C(&qword_27D9120E0, &qword_22C2B5F30);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v107 = v9;
  v10 = sub_22BE5CE4C(&qword_27D9120E8, &qword_22C2B5F38);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1BC40();
  v106 = sub_22C26ECF4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v105 = v13;
  v14 = sub_22BE183BC();
  type metadata accessor for ClientAction.ShimParameter(v14);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  sub_22BE19490();
  v113 = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  sub_22BE183BC();
  v111 = sub_22C26ED14();
  sub_22BE179D8();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22BE17B98();
  v110 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE39EE8();
  sub_22C26E1D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  v86 = v28;
  v88 = v2;
  v87 = v29;
  (*(v28 + 16))();
  v89 = v4;
  v30 = *(v4 + *(type metadata accessor for ClientAction(0) + 36));
  sub_22BE5CE4C(&qword_27D9120F0, &unk_22C2B5F40);
  sub_22C273D04();
  v91 = v30 + 64;
  v94 = v30;
  sub_22BE185B4();
  v33 = v32 & v31;
  v90 = (v34 + 63) >> 6;
  v104 = *MEMORY[0x277D1C678];
  v109 = (v23 + 104);
  v36 = v35;
  v103 = *MEMORY[0x277D1C668];
  v102 = *MEMORY[0x277D1C670];
  v101 = *MEMORY[0x277D1C680];
  v37 = (v23 + 32);
  v38 = v0;
  v93 = v35 + 8;

  v39 = 0;
  v92 = v36;
  if (v33)
  {
    while (1)
    {
      v40 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
LABEL_8:
      v43 = v40 | (v39 << 6);
      v97 = v39;
      v44 = (*(v94 + 48) + 16 * v43);
      v98 = *v44;
      v99 = v43;
      v45 = *(*(v94 + 56) + 8 * v43);
      v46 = *(v45 + 16);
      if (v46)
      {
        v96 = v33;
        v114 = MEMORY[0x277D84F90];
        v95 = v44[1];

        sub_22BE71E9C(0, v46, 0);
        v47 = v114;
        sub_22BE25AD8();
        v49 = v45 + v48;
        v112 = *(v50 + 72);
        do
        {
          sub_22BE3F24C();
          sub_22BE3F24C();
          sub_22BE3F24C();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v53 = v110;
              sub_22C26ED04();
              sub_22C116304();
              sub_22BE41F44(v113, v58);
              sub_22C1163AC();
              v54 = v102;
              break;
            case 2u:
              v55 = 1;
              switch(*(v18 + 16))
              {
                case 3:
                  goto LABEL_17;
                case 4:
                  sub_22C26ECE4();
                  sub_22BE1A140();
                  sub_22BE19DC4(v59, v60, v61, v62);

                  break;
                default:
                  sub_22BE33554();
                  v64(v100, v63, v108);
                  sub_22BE33554();
                  v65(v107, v100, v108);
                  v55 = 0;
LABEL_17:
                  sub_22BE19DC4(v107, v55, 1, v108);

                  sub_22BE1AFD8(v107);
                  sub_22C26ECE4();
                  sub_22BE187DC();
                  sub_22BE19DC4(v66, v67, v68, v69);
                  break;
              }

              sub_22C26ECB4();

              sub_22C116304();
              sub_22BE41F44(v113, v70);
              sub_22C1163AC();
              sub_22BE3CBEC();
              v53 = v110;
              v71(v110, v105, v106);
              v54 = v103;
              break;
            case 3u:

              v56 = sub_22BE336E8();
              MEMORY[0x2318A7420](v56);

              v53 = v110;

              sub_22C116304();
              sub_22BE41F44(v113, v57);
              sub_22C1163AC();
              v54 = v104;
              break;
            default:
              sub_22C116304();
              sub_22BE41F44(v113, v51);
              sub_22C1163AC();
              sub_22C272874();
              sub_22BE1834C();
              v53 = v110;
              (*(v52 + 32))(v110, v18);
              v54 = v101;
              break;
          }

          v72 = v111;
          (*v109)(v53, v54, v111);
          v73 = *v37;
          v74 = sub_22BE1AB1C();
          v73(v74);
          v75 = v38;
          v77 = *(v114 + 16);
          v76 = *(v114 + 24);
          if (v77 >= v76 >> 1)
          {
            v80 = sub_22BE1AAE4(v76);
            sub_22BE71E9C(v80, v77 + 1, 1);
            v72 = v111;
          }

          *(v114 + 16) = v77 + 1;
          sub_22BE25AD8();
          (v73)(v114 + v78 + *(v79 + 72) * v77, v75, v72);
          v49 += v112;
          --v46;
          v38 = v75;
        }

        while (v46);

        v36 = v92;
        v33 = v96;
        v81 = v95;
      }

      else
      {

        v47 = MEMORY[0x277D84F90];
      }

      *(v93 + ((v99 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v99;
      v82 = (v36[6] + 16 * v99);
      *v82 = v98;
      v82[1] = v81;
      *(v36[7] + 8 * v99) = v47;
      v83 = v36[2];
      v84 = __OFADD__(v83, 1);
      v85 = v83 + 1;
      if (v84)
      {
        break;
      }

      v36[2] = v85;
      v39 = v97;
      if (!v33)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v41 = v39;
    while (1)
    {
      v39 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v39 >= v90)
      {

        sub_22C26ED34();
        (*(v86 + 8))(v88, v87);
        sub_22BE41F44(v89, type metadata accessor for ClientAction);
        sub_22BE1AABC();
        return;
      }

      v42 = *(v91 + 8 * v39);
      ++v41;
      if (v42)
      {
        v40 = __clz(__rbit64(v42));
        v33 = (v42 - 1) & v42;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t MessagePayload.ClientAction.ShimParameter.init(ifps:)()
{
  v1 = sub_22BE1B254();
  type metadata accessor for ClientAction.ShimParameter(v1);
  sub_22BE18000();
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  sub_22BE28738();
  sub_22BE18040();
  sub_22BE3F24C();
  sub_22BE191CC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C26ED04();
      sub_22BE1A3B0();
      break;
    case 2u:
      v12 = *(v0 + 16);
      v13 = *(v0 + 17);
      v18 = *v0;
      LOBYTE(v19) = v12;
      BYTE1(v19) = v13;
      MessagePayload.ClientAction.PersonQuery.init(ifps:)(&v18, v3, v4, v5, v6, v7, v8, v9, v18, *(&v18 + 1), v19, *(v0 + 3), *(v0 + 4), v20, v21, v22, v23, v24, v25, v26);
      sub_22BE1A3B0();
      break;
    case 3u:

      v14 = sub_22BE2590C();
      MEMORY[0x2318A7420](v14);

      sub_22BE1A3B0();
      break;
    default:
      sub_22BE1A3B0();
      sub_22C272874();
      sub_22BE1834C();
      v10 = sub_22BE33FD8();
      v11(v10);
      break;
  }

  sub_22C26ED14();
  sub_22BE1834C();
  v15 = sub_22BE19454();
  return v16(v15);
}

void MessagePayload.ClientAction.PersonQuery.init(ifps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  sub_22BE1A5E4();
  v25 = sub_22C26ECC4();
  sub_22BE179D8();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v29 = sub_22BE5CE4C(&qword_27D9120E0, &qword_22C2B5F30);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = sub_22BE5CE4C(&qword_27D9120E8, &qword_22C2B5F38);
  sub_22BE19448(v33);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE28738();
  v35 = 1;
  v36 = MEMORY[0x277D1C658];
  switch(*(v24 + 16))
  {
    case 1:
      v36 = MEMORY[0x277D1C650];
      goto LABEL_5;
    case 2:
      v36 = MEMORY[0x277D1C660];
      goto LABEL_5;
    case 3:
      goto LABEL_6;
    case 4:
      sub_22C26ECE4();
      sub_22BE335B4();
      sub_22BE1A140();
      sub_22BE19DC4(v37, v38, v39, v40);

      goto LABEL_7;
    default:
LABEL_5:
      (*(v27 + 104))(v20, *v36, v25);
      (*(v27 + 32))(v32, v20, v25);
      v35 = 0;
LABEL_6:
      sub_22BE3ACE4(v32, v35);

      sub_22BE1AFD8(v32);
      sub_22C26ECE4();
      sub_22BE335B4();
      sub_22BE187DC();
      sub_22BE19DC4(v41, v42, v43, v44);
LABEL_7:
      sub_22BE35F50();
      sub_22C26ECB4();

      sub_22BE1AABC();
      return;
  }
}

double MessagePayload.ClientAction.PhotosCandidates.init(ifps:)(uint64_t a1)
{
  sub_22BE379F0(a1);

  v1 = sub_22BE18040();
  MEMORY[0x2318A7420](v1);

  return result;
}

uint64_t MessagePayload.ClientAction.PersonQuery.Handle.init(ifps:)(_BYTE *a1)
{
  sub_22BE1A5E4();
  sub_22C26ECC4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE28738();
  v4 = sub_22BE5CE4C(&qword_27D9120E0, &qword_22C2B5F30);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19E64();
  v6 = 1;
  switch(*a1)
  {
    case 3:
      break;
    default:
      v7 = sub_22BE3C094();
      v8(v7);
      v9 = sub_22BE1C2A0();
      v10(v9);
      v6 = 0;
      break;
  }

  sub_22BE3ACE4(v1, v6);
  return sub_22BE1AFD8(v1);
}

uint64_t MessagePayload.ClientAction.PersonQuery.Handle.Kind.init(ifps:)()
{
  sub_22C26ECC4();
  sub_22BE18000();
  v0 = sub_22BE460A4();

  return v1(v0);
}

void MessagePayload.ActionWillExecute.init(ifps:)()
{
  sub_22BE19460();
  v1 = v0;
  v126 = v2;
  v165 = sub_22C26EE84();
  sub_22BE179D8();
  v168 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE18950(v5);
  v6 = sub_22C26F7C4();
  sub_22BE179D8();
  v167 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v9);
  sub_22BE19490();
  v162 = v10;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E94();
  v161 = v12;
  v13 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v164 = v15;
  v16 = sub_22BE5CE4C(&qword_27D9120F8, &qword_22C2B5F50);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  v163 = v18;
  sub_22BE183BC();
  v160 = sub_22C272874();
  sub_22BE179D8();
  v166 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BE17B98();
  v159 = v21;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  sub_22BE19E94();
  v158 = v23;
  v24 = sub_22BE183BC();
  v25 = type metadata accessor for ToolParameterValue(v24);
  v26 = sub_22BE19448(v25);
  MEMORY[0x28223BE20](v26);
  sub_22BE17B98();
  v157 = v27;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v28);
  sub_22BE19E94();
  v156 = v29;
  sub_22BE183BC();
  v155 = sub_22C26EEA4();
  sub_22BE179D8();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  v171 = v33;
  sub_22BE183BC();
  v154 = sub_22C26EE44();
  sub_22BE179D8();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  sub_22BE17A44();
  v152 = v37;
  v38 = sub_22BE183BC();
  v151 = type metadata accessor for Action.ParameterValue(v38);
  sub_22BE179D8();
  v150 = v39;
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  v170 = v41;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v42);
  sub_22BE19E94();
  v169 = v43;
  sub_22BE183BC();
  sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v44);
  sub_22BE179EC();
  v47 = v46 - v45;
  v49 = *(v48 + 16);
  v125 = v47;
  v49();
  v50 = type metadata accessor for Action(0);
  v51 = (v1 + v50[9]);
  v52 = v51[1];
  v124 = *v51;
  v53 = v50[6];
  v54 = (v1 + v50[5]);
  v55 = v54[1];
  v121 = *v54;
  v56 = v51[3];
  v119 = v51[2];
  v117 = *(v1 + v53);
  v122 = v50;
  v57 = v50[7];
  v127 = v1;
  v58 = *(v1 + v57);
  sub_22BE5CE4C(&qword_27D912100, &qword_22C2B5F58);
  v59 = sub_22C273D04();
  v60 = v58 + 64;
  v148 = v58;
  sub_22BE185B4();
  v63 = v62 & v61;
  v65 = (v64 + 63) >> 6;
  v146 = v166 + 32;
  v145 = v166 + 16;
  v144 = v166 + 8;
  v143 = *MEMORY[0x277D1C708];
  v142 = v31 + 104;
  v137 = v167 + 32;
  v136 = (v167 + 16);
  v135 = v167 + 88;
  v134 = *MEMORY[0x277D1CAF0];
  v130 = *MEMORY[0x277D1CB00];
  v116 = *MEMORY[0x277D1CAF8];
  v133 = (v167 + 8);
  v115 = *MEMORY[0x277D1C6F8];
  v132 = v168 + 104;
  v114 = *MEMORY[0x277D1C700];
  v129 = v167 + 96;
  v128 = *MEMORY[0x277D1C6F0];
  v131 = v168 + 32;
  v141 = v66 + 64;
  v153 = v35;
  v140 = v35 + 32;
  v123 = v52;

  v120 = v55;

  v118 = v56;

  v67 = 0;
  v147 = v59;
  v149 = v6;
  if (v63)
  {
    while (1)
    {
      v68 = __clz(__rbit64(v63));
      v166 = (v63 - 1) & v63;
LABEL_8:
      v71 = v68 | (v67 << 6);
      v72 = (*(v148 + 48) + 16 * v71);
      v73 = v72[1];
      v168 = *v72;
      sub_22BE3F24C();
      sub_22BE31038();
      sub_22BE3F24C();
      v74 = v156;
      sub_22BE3F24C();
      v75 = v157;
      sub_22BE3F24C();
      sub_22BE33554();
      v76 = v158;
      v77 = v160;
      v78(v158, v75, v160);
      sub_22BE33554();
      v79 = sub_22BE336E8();
      v80(v79);
      v167 = v73;

      v81 = v171;
      sub_22C26EAB4();
      sub_22BE33554();
      v82(v76, v77);
      sub_22BE3123C();
      sub_22BE41F44(v74, v83);
      sub_22BE33554();
      v84(v81, v143, v155);
      sub_22BE22814();
      v85 = 1;
      v86 = sub_22BE1B010();
      v87 = v149;
      sub_22BE1AB5C(v86, v88, v149);
      if (!v98)
      {
        sub_22BE33554();
        v89 = v161;
        v90(v161, v164, v87);
        v91 = *v136;
        (*v136)(v162, v89, v87);
        v92 = v138;
        v93 = sub_22BE336E8();
        v91(v93);
        sub_22BE33554();
        v94(v92, v87);
        sub_22BE18120();
        if (v98)
        {
          sub_22BE33554();
          v95(v92, v87);
          v96 = v139;
          sub_22C26EE54();
          v97 = &v160 + 4;
        }

        else
        {
          sub_22BE18120();
          v96 = v139;
          if (v98)
          {
            sub_22C26EE74();
            v97 = &v148;
          }

          else
          {
            if (v99 != v116)
            {
              goto LABEL_24;
            }

            sub_22C26EE64();
            v97 = &v148 + 4;
          }
        }

        v100 = *(v97 - 64);
        v101 = *v133;
        (*v133)(v162, v87);
        v101(v161, v87);
        sub_22BE33554();
        v102 = v100;
        v103 = v165;
        v104(v96, v102, v165);
        sub_22BE33554();
        v105(v163, v96, v103);
        v85 = 0;
      }

      sub_22BE19DC4(v163, v85, 1, v165);
      v106 = v152;
      sub_22C26EE34();
      sub_22BE41F44(v170, type metadata accessor for Action.ParameterValue);
      sub_22BE41F44(v169, type metadata accessor for Action.ParameterValue);
      *(v141 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
      v107 = v147;
      v108 = (*(v147 + 48) + 16 * v71);
      v109 = v167;
      *v108 = v168;
      v108[1] = v109;
      (*(v153 + 32))(*(v107 + 56) + *(v153 + 72) * v71, v106, v154);
      v110 = *(v107 + 16);
      v111 = __OFADD__(v110, 1);
      v112 = v110 + 1;
      if (v111)
      {
        break;
      }

      *(v107 + 16) = v112;
      v63 = v166;
      if (!v166)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v69 = v67;
    while (1)
    {
      v67 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v67 >= v65)
      {
        v113 = v127;

        sub_22C26EE24();
        sub_22BE41F44(v113, type metadata accessor for Action);
        sub_22BE1AABC();
        return;
      }

      v70 = *(v60 + 8 * v67);
      ++v69;
      if (v70)
      {
        v68 = __clz(__rbit64(v70));
        v166 = (v70 - 1) & v70;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  sub_22C274004();
  __break(1u);
}

void MessagePayload.ActionWillExecute.ParameterValue.init(ifps:)()
{
  sub_22BE19460();
  sub_22BE2054C(v3);
  v4 = sub_22C26F7C4();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v8);
  sub_22BE181E4();
  v9 = sub_22BE5CE4C(&qword_27D909088, &unk_22C27FCA0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE22DB8();
  v11 = sub_22BE5CE4C(&qword_27D9120F8, &qword_22C2B5F50);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE1AB08();
  v14 = type metadata accessor for ToolParameterValue(v13);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  sub_22BE36588();
  v16 = sub_22C26EEA4();
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  sub_22BE2BB64();
  sub_22BE36194();
  sub_22BE19454();
  sub_22BE3F24C();
  MessagePayload.ActionWillExecute.ToolParameterValue.init(ifps:)();
  type metadata accessor for Action.ParameterValue(0);
  sub_22BE22814();
  v18 = 1;
  sub_22BE1C14C(v2);
  if (!v19)
  {
    v20 = sub_22BE41F08();
    v21(v20, v2, v4);
    v22 = sub_22BE2590C();
    v23(v22);
    MessagePayload.ActionWillExecute.PromptSelection.init(ifps:)();
    (*(v6 + 8))(v0, v4);
    v18 = 0;
  }

  v24 = sub_22C26EE84();
  sub_22BE19DC4(v1, v18, 1, v24);
  sub_22BE25C94();
  sub_22C26EE34();
  sub_22BE48744();
  sub_22BE1AABC();
}

void MessagePayload.ActionWillExecute.ToolParameterValue.init(ifps:)()
{
  sub_22BE3C358();
  v3 = v2;
  sub_22BE1A5E4();
  v4 = sub_22C272874();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v8);
  sub_22BE25A90();
  v9 = type metadata accessor for ToolParameterValue(0);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  sub_22BE35AE8();
  sub_22BE36194();
  sub_22BE3F24C();
  v11 = sub_22BE194F8();
  v12(v11);
  (*(v6 + 16))(v1, v0, v4);
  sub_22C26EAB4();
  sub_22BE3123C();
  sub_22BE41F44(v3, v13);
  (*(v6 + 8))(v0, v4);
  sub_22C26EEA4();
  sub_22BE1834C();
  v14 = sub_22BE19454();
  v15(v14);
  sub_22BE267B8();
}

uint64_t MessagePayload.ActionWillExecute.PromptSelection.init(ifps:)()
{
  sub_22BE1B254();
  v2 = sub_22C26F7C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22BE29400();
  v4(v1, v0, v2);
  v5 = sub_22BE1C2A0();
  v7 = v6(v5);
  if (v7 == *MEMORY[0x277D1CAF0])
  {
    v8 = sub_22BE1C2A0();
    v9(v8);
    sub_22C26EE54();
LABEL_7:
    v10 = sub_22BE18040();
    v11(v10);
    sub_22C26EE84();
    sub_22BE1834C();
    v12 = sub_22BE19454();
    return v13(v12);
  }

  if (v7 == *MEMORY[0x277D1CB00])
  {
    sub_22C26EE74();
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x277D1CAF8])
  {
    sub_22C26EE64();
    goto LABEL_7;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C10FB20()
{
  v0 = sub_22BE5CE4C(&qword_27D90B0E0, &unk_22C28B520);
  sub_22BE952A4(v0, qword_27D912090);
  sub_22BE199F4(v0, qword_27D912090);
  sub_22BE5CE4C(&qword_27D912180, &unk_22C2B6098);
  return sub_22C2702C4();
}

uint64_t sub_22C10FBB0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = v2;
  v94 = a1;
  v5 = sub_22BE5CE4C(&qword_27D912148, &qword_22C2B5FE0);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = (v64 - v6);
  v96 = sub_22C270164();
  v89 = *(v96 - 1);
  MEMORY[0x28223BE20](v96);
  v84 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = v64 - v9;
  v10 = sub_22C270174();
  v11 = *(v10 - 8);
  v87 = v10;
  v88 = v11;
  MEMORY[0x28223BE20](v10);
  v86 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = v64 - v14;
  v15 = sub_22BE5CE4C(&qword_27D912150, &unk_22C2B5FE8);
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = v64 - v17;
  v95 = sub_22BE5CE4C(&qword_27D9092C8, &qword_22C27FEB0);
  MEMORY[0x28223BE20](v95);
  v82 = (v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v97 = (v64 - v21);
  v22 = sub_22BE5CE4C(&qword_27D912158, &qword_22C2B5FF8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v64 - v23;
  v25 = sub_22BE5CE4C(&qword_27D90B0F0, &unk_22C2B6000);
  v91 = *(v25 - 8);
  v92 = v25;
  MEMORY[0x28223BE20](v25);
  v90 = v64 - v26;
  v27 = type metadata accessor for Expression(0);
  MEMORY[0x28223BE20](v27);
  v29 = (v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ProgramStatement(0);
  sub_22BE3F24C();
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v30 = v29[1];
    v81 = v29[3];
    v102 = v29[5];
    v31 = qword_27D906E08;

    if (v31 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v32 = sub_22BE5CE4C(&qword_27D90B0E0, &unk_22C28B520);
      sub_22BE199F4(v32, qword_27D912090);
      sub_22BF05490();

      v33 = v30;
      v34 = v92;
      if (sub_22BE1AEA8(v24, 1, v92) == 1)
      {
        break;
      }

      v74 = v33;
      v75 = v18;
      v76 = v16;
      v77 = v15;
      v78 = a2;
      v79 = v3;
      (*(v91 + 32))(v90, v24, v34);
      swift_getKeyPath();
      sub_22C2702E4();

      v73 = MEMORY[0x2318AB7C0](v98, v99, v100, v101);
      v72 = v38;

      swift_getKeyPath();
      sub_22C2702E4();

      v71 = MEMORY[0x2318AB7C0](v98, v99, v100, v101);
      v70 = v39;

      v16 = v102 + 64;
      v40 = 1 << *(v102 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      v18 = v41 & *(v102 + 64);
      v30 = (v40 + 63) >> 6;
      v68 = (v89 + 32);
      v67 = (v89 + 16);
      v66 = (v89 + 8);
      v69 = (v88 + 32);
      swift_bridgeObjectRetain_n();
      v3 = 0;
      v80 = MEMORY[0x277D84F90];
      v89 = v16;
LABEL_9:
      v42 = v3;
      if (!v18)
      {
        goto LABEL_11;
      }

      do
      {
        v3 = v42;
LABEL_14:
        v43 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v44 = v43 | (v3 << 6);
        v45 = *(v102 + 56);
        v46 = (*(v102 + 48) + 16 * v44);
        v48 = *v46;
        v47 = v46[1];
        v49 = sub_22C26E684();
        v24 = *(v49 - 8);
        v50 = v45 + *(v24 + 9) * v44;
        v15 = v97;
        (*(v24 + 2))(v97 + *(v95 + 48), v50, v49);
        *v15 = v48;
        v15[1] = v47;
        v51 = *(v94 + 32);

        a2 = v93;
        sub_22C110768(v51, v93);
        if (sub_22BE1AEA8(a2, 1, v96) != 1)
        {
          v52 = v83;
          v15 = v96;
          (*v68)(v83, a2, v96);
          a2 = v82;
          sub_22BE22814();
          v53 = a2[1];
          v64[1] = *a2;
          v64[0] = v53;
          v65 = *(v95 + 48);
          (*v67)(v84, v52, v15);
          sub_22C270114();
          (*v66)(v52, v15);
          sub_22BE233E8(v97, &qword_27D9092C8, &qword_22C27FEB0);
          (*(v24 + 1))(a2 + v65, v49);
          v24 = *v69;
          (*v69)(v85, v86, v87);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BE679A8(0, *(v80 + 16) + 1, 1, v80);
            v80 = v57;
          }

          v55 = *(v80 + 16);
          v54 = *(v80 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_22BE679A8(v54 > 1, v55 + 1, 1, v80);
            v80 = v58;
          }

          v56 = v80;
          *(v80 + 16) = v55 + 1;
          (v24)(v56 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v55, v85, v87);
          v16 = v89;
          goto LABEL_9;
        }

        sub_22BE233E8(v15, &qword_27D9092C8, &qword_22C27FEB0);
        sub_22BE233E8(a2, &qword_27D912148, &qword_22C2B5FE0);
        v42 = v3;
        v16 = v89;
      }

      while (v18);
LABEL_11:
      while (1)
      {
        v3 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v3 >= v30)
        {

          swift_bridgeObjectRelease_n();

          v98 = v80;
          swift_getKeyPath();
          v59 = v75;
          sub_22C26DD84();
          sub_22BE5CE4C(&qword_27D912160, &unk_22C2B6080);
          sub_22BEF8A28(&qword_27D912168, &qword_27D912160, &unk_22C2B6080, MEMORY[0x277D83970]);
          sub_22BEF8A28(&qword_27D912170, &qword_27D912150, &unk_22C2B5FE8, MEMORY[0x277CC8C98]);
          v60 = v77;
          v61 = sub_22C2732F4();
          (*(v76 + 8))(v59, v60);

          v62 = v78;
          MEMORY[0x2318A8800](v73, v72, v71, v70, v61);
          (*(v91 + 8))(v90, v92);
          v63 = sub_22C270184();
          return sub_22BE19DC4(v62, 0, 1, v63);
        }

        v18 = *(v16 + 8 * v3);
        ++v42;
        if (v18)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_24:
      swift_once();
    }

    sub_22BE233E8(v24, &qword_27D912158, &qword_22C2B5FF8);
    v35 = sub_22C270184();
    return sub_22BE19DC4(a2, 1, 1, v35);
  }

  else
  {
    v37 = sub_22C270184();
    sub_22BE19DC4(a2, 1, 1, v37);
    return sub_22BE41F44(v29, type metadata accessor for Expression);
  }
}

uint64_t sub_22C110768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a2;
  v5 = sub_22BE5CE4C(&qword_27D912148, &qword_22C2B5FE0);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v61 - v6;
  v72 = sub_22C270164();
  v62 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D90A8A0, &unk_22C2D1FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = (&v61 - v9);
  v10 = sub_22BE5CE4C(&qword_27D912178, &qword_22C2B6090);
  MEMORY[0x28223BE20](v10 - 8);
  v61 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = (&v61 - v13);
  v74 = type metadata accessor for Expression(0);
  MEMORY[0x28223BE20](v74);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C26E684();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v70 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v61 - v24;
  v26 = v17[2];
  v75 = v27;
  v68 = v26;
  v69 = v17 + 2;
  (v26)(&v61 - v24, v3, v23);
  v63 = 0;
  v28 = a1;
  v29 = *(a1 + 16);
  v66 = v17;
LABEL_2:
  v30 = v29;
  while (v30)
  {
    --v30;
    type metadata accessor for ProgramStatement(0);
    if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
    {
      sub_22BE3F24C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v75;
        v17[4](v21, v15, v75);
        v17[5](v25, v21, v31);
        goto LABEL_2;
      }

      sub_22BE41F44(v15, type metadata accessor for Expression);
      break;
    }
  }

  v76 = v28;
  v32 = sub_22C11611C(v28, v25);
  MEMORY[0x28223BE20](v32);
  *(&v61 - 2) = &v76;
  v34 = v64;
  sub_22C1ADC68(sub_22C1162E4, (&v61 - 4), v35, v33 & 1, v64);
  v36 = type metadata accessor for ProgramStatement(0);
  v37 = sub_22BE1AEA8(v34, 1, v36);
  v39 = v72;
  v38 = v73;
  if (v37 == 1)
  {
    sub_22BE233E8(v34, &qword_27D90A8A0, &unk_22C2D1FB0);
    v40 = 1;
    v41 = v65;
    sub_22BE19DC4(v65, 1, 1, v74);
    sub_22BE233E8(v41, &qword_27D912178, &qword_22C2B6090);
  }

  else
  {
    v42 = v65;
    sub_22BE3F24C();
    sub_22BE41F44(v34, type metadata accessor for ProgramStatement);
    sub_22BE19DC4(v42, 0, 1, v74);
    v43 = v61;
    sub_22BE424BC();
    if (!swift_getEnumCaseMultiPayload())
    {
      v46 = *(v43 + 8);
      v64 = *v43;
      v47 = *(v43 + 16);
      v44 = v67;
      if (v47 == 4)
      {
        v63 = v46;
        v49 = v64[2];
        if (v49)
        {
          v50 = v64 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
          v74 = v66[9];
          v51 = (v66 + 1);
          v65 = (v62 + 32);
          v52 = MEMORY[0x277D84F90];
          do
          {
            v53 = v70;
            v54 = v75;
            v68(v70, v50, v75);
            sub_22C110768(v28, v38);
            v38 = v73;
            (*v51)(v53, v54);
            if (sub_22BE1AEA8(v38, 1, v39) == 1)
            {
              sub_22BE233E8(v38, &qword_27D912148, &qword_22C2B5FE0);
            }

            else
            {
              v55 = *v65;
              (*v65)(v71, v38, v39);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22BE679E8(0, *(v52 + 16) + 1, 1, v52);
                v52 = v59;
              }

              v57 = *(v52 + 16);
              v56 = *(v52 + 24);
              if (v57 >= v56 >> 1)
              {
                sub_22BE679E8(v56 > 1, v57 + 1, 1, v52);
                v52 = v60;
              }

              *(v52 + 16) = v57 + 1;
              v58 = v52 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v57;
              v39 = v72;
              v55(v58, v71, v72);
              v38 = v73;
            }

            v50 += v74;
            --v49;
          }

          while (v49);
        }

        sub_22BECD0DC(v64, v63, 4);
        v44 = v67;
        sub_22C270144();
        v48 = MEMORY[0x277D1D1D0];
      }

      else
      {
        if (v47 != 3)
        {
          sub_22BECD0DC(v64, v46, v47);
          v40 = 1;
          goto LABEL_13;
        }

        sub_22C26ED04();
        v48 = MEMORY[0x277D1D1D8];
      }

      (*(v62 + 104))(v44, *v48, v39);
      v40 = 0;
      goto LABEL_13;
    }

    sub_22BE41F44(v43, type metadata accessor for Expression);
    v40 = 1;
  }

  v44 = v67;
LABEL_13:
  sub_22BE19DC4(v44, v40, 1, v39);
  return (v66[1])(v25, v75);
}

void PlannerPromptData.init(ifps:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22C270B74();
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v7 = sub_22BE5CE4C(&qword_27D912108, &qword_22C2B5F60);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE36588();
  v142 = sub_22C26F964();
  sub_22BE179D8();
  v130 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E94();
  v135 = v12;
  v13 = sub_22BE5CE4C(&qword_27D912110, &unk_22C2B5F68);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  sub_22BE18950(v15);
  v145 = sub_22C26F984();
  sub_22BE179D8();
  v137 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E94();
  sub_22BE18950(v19);
  sub_22C270C24();
  sub_22BE179D8();
  v144 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v22);
  sub_22BE19E94();
  v23 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1B1C4();
  v140 = sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v25);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v26);
  sub_22BE19E94();
  sub_22BE18950(v27);
  sub_22C270A04();
  sub_22BE179D8();
  v158 = v28;
  v159 = v29;
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v157 = v30;
  v31 = sub_22BE5CE4C(&qword_27D912118, &qword_22C2B5F78);
  sub_22BE19448(v31);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1A174();
  v169 = v33;
  sub_22BE183BC();
  v34 = sub_22C26F8C4();
  sub_22BE179D8();
  v163 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v37);
  sub_22BE19490();
  v154 = v38;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v39);
  sub_22BE39EE8();
  v167 = sub_22C270F24();
  sub_22BE179D8();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_22BE17A44();
  v161 = v43;
  v44 = sub_22BE5CE4C(&qword_27D912120, &unk_22C2B5F80);
  sub_22BE19448(v44);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1A174();
  sub_22BE18950(v46);
  v47 = sub_22C26F8E4();
  sub_22BE179D8();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v155 = v51;
  v52 = sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  sub_22BE19448(v52);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v53);
  sub_22BE1A174();
  v55 = sub_22BE18950(v54);
  v56 = type metadata accessor for RetrievedContextStatement(v55);
  sub_22BE179D8();
  v58 = v57;
  MEMORY[0x28223BE20](v59);
  sub_22BE17A44();
  v165 = v60;
  v61 = sub_22BE183BC();
  v132 = v4;
  v62 = *(v4 + *(type metadata accessor for QueryDecorationResult(v61) + 28));
  v63 = *(v62 + 16);
  v156 = v0;
  if (v63)
  {
    v64 = *(v56 + 20);
    v65 = v62 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v151 = *(v58 + 72);
    v152 = v64;
    v150 = (v159 + 88);
    v149 = *MEMORY[0x277D1EAB8];
    v146 = (v163 + 104);
    v160 = (v163 + 32);
    v139 = v49;
    v148 = (v49 + 32);
    v147 = *MEMORY[0x277D1CC78];
    v164 = MEMORY[0x277D84F90];
    v153 = v1;
    v66 = v161;
    v67 = v143;
    do
    {
      sub_22BE3F24C();
      (*(v41 + 16))(v66, v165 + v152, v167);
      sub_22C270EF4();
      v68 = (*v150)(v157, v158);
      v69 = v147;
      if (v68 == v149 || (sub_22BE18120(), v74) || (sub_22BE18120(), v74) || (sub_22BE18120(), v74) || (sub_22BE18120(), v74) || (sub_22BE18120(), v74) || (sub_22BE18120(), v74))
      {
        (*v146)(v154, v69, v34);
        (*v160)(v169, v154, v34);
        v91 = 0;
      }

      else
      {
        sub_22BE33554();
        v90(v157, v158);
        v91 = 1;
      }

      sub_22BE19DC4(v169, v91, 1, v34);
      v70 = sub_22BE1B010();
      sub_22BE1AB5C(v70, v71, v34);
      v66 = v161;
      if (v74)
      {
        sub_22BE3CBEC();
        v72(v161, v167);
        sub_22BE233E8(v169, &qword_27D912118, &qword_22C2B5F78);
        v73 = 1;
      }

      else
      {
        (*v160)(v1, v169, v34);
        sub_22C270EE4();
        sub_22BE1AB5C(v2, 1, v140);
        if (v74)
        {
          sub_22BE3CBEC();
          v75(v161, v167);
          sub_22BE33554();
          v76(v1, v34);
          sub_22BE233E8(v2, &qword_27D907400, &unk_22C274F90);
          v73 = 1;
        }

        else
        {
          sub_22BE33554();
          v77(v134, v2, v140);
          sub_22BE33554();
          v78 = sub_22BE31038();
          v79(v78);
          sub_22BE33554();
          v80(v133, v153, v34);
          sub_22BE1B73C();
          v1 = v153;
          sub_22C26F8D4();
          sub_22BE3CBEC();
          v81(v161, v167);
          sub_22BE33554();
          v67 = v143;
          v82(v134, v140);
          sub_22BE33554();
          v83(v153, v34);
          v73 = 0;
        }

        v66 = v161;
      }

      sub_22BE19DC4(v67, v73, 1, v47);
      sub_22BE41F44(v165, type metadata accessor for RetrievedContextStatement);
      sub_22BE1AB5C(v67, 1, v47);
      if (v74)
      {
        sub_22BE233E8(v67, &qword_27D912120, &unk_22C2B5F80);
      }

      else
      {
        v84 = v34;
        v85 = *v148;
        (*v148)(v155, v67, v47);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BE67A68(0, *(v164 + 16) + 1, 1, v164);
          v164 = v92;
        }

        v88 = *(v164 + 16);
        v87 = *(v164 + 24);
        v89 = v139;
        if (v88 >= v87 >> 1)
        {
          v93 = sub_22BE1AAE4(v87);
          sub_22BE67A68(v93, v88 + 1, 1, v164);
          v89 = v139;
          v164 = v94;
        }

        *(v164 + 16) = v88 + 1;
        v85(v164 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v88, v155, v47);
        v1 = v153;
        v66 = v161;
        v34 = v84;
      }

      v65 += v151;
      --v63;
    }

    while (v63);
  }

  v95 = v132;
  sub_22BE22814();
  sub_22C271A34();
  sub_22BE1C14C(v131);
  if (v74)
  {
    sub_22BE233E8(v131, &qword_27D912018, &unk_22C2B7810);
  }

  else
  {
    v96 = sub_22C271A14();
    v97 = sub_22BE18040();
    v98(v97);
    v99 = *(v96 + 16);
    if (v99)
    {
      v100 = v96 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
      v166 = *(v144 + 72);
      v168 = *(v144 + 16);
      v162 = (v144 + 8);
      v101 = (v137 + 32);
      v170 = MEMORY[0x277D84F90];
      v102 = v138;
      sub_22C116358();
      do
      {
        v103 = sub_22BE1C2A0();
        v168(v103);
        (v168)(v95, v96, v34);
        sub_22C270B94();
        PlannerPromptData.Tool.Definition.init(ifps:)();
        v104 = sub_22BE1B010();
        sub_22BE1AB5C(v104, v105, v142);
        if (v74)
        {
          v106 = *v162;
          v107 = sub_22BE41FB4();
          v106(v107);
          (v106)(v96, v34);
          sub_22BE233E8(v156, &qword_27D912108, &qword_22C2B5F60);
          v113 = 1;
          v111 = v145;
        }

        else
        {
          (*(v130 + 32))(v135, v156, v142);
          (*(v130 + 16))(v136, v135, v142);
          sub_22C26F974();
          v102 = v138;
          (*(v130 + 8))(v135, v142);
          v108 = *v162;
          v109 = sub_22BE41FB4();
          v108(v109);
          (v108)(v96, v34);
          v110 = sub_22BE196A8();
          v111 = v145;
          v112(v110);
          v113 = 0;
        }

        sub_22BE3ACE4(v102, v113);
        sub_22BE1AB5C(v102, 1, v111);
        if (v74)
        {
          sub_22BE233E8(v102, &qword_27D912110, &unk_22C2B5F68);
        }

        else
        {
          v114 = *v101;
          (*v101)(v141, v102, v111);
          v95 = v170;
          v115 = swift_isUniquelyReferenced_nonNull_native();
          if ((v115 & 1) == 0)
          {
            sub_22BE3A264();
            sub_22BE67A28(v120, v121, v122, v123);
            v95 = v124;
          }

          v117 = *(v95 + 16);
          v116 = *(v95 + 24);
          if (v117 >= v116 >> 1)
          {
            sub_22BE1AAE4(v116);
            sub_22BE3A264();
            sub_22BE67A28(v125, v126, v127, v128);
            v95 = v129;
          }

          *(v95 + 16) = v117 + 1;
          sub_22BE25AD8();
          v170 = v95;
          v114(v95 + v118 + *(v119 + 72) * v117, v141, v145);
          sub_22C116358();
        }

        v100 += v166;
        --v99;
      }

      while (v99);
    }
  }

  sub_22C26F8B4();
  sub_22BE48744();
  sub_22BE1AABC();
}

void PlannerPromptData.OnScreenContextValue.init(ifps:)()
{
  sub_22BE19460();
  v4 = v3;
  v43 = v5;
  v6 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  v8 = sub_22C272874();
  sub_22BE179D8();
  v42 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  v41[1] = v11;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BE181E4();
  v13 = sub_22C270A04();
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  v15 = sub_22BE5CE4C(&qword_27D912118, &qword_22C2B5F78);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE2BB64();
  v17 = sub_22C26F8C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v18);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v19);
  v21 = v41 - v20;
  sub_22C270EF4();
  PlannerPromptData.OnScreenContextValue.ContextType.init(ifps:)();
  sub_22BE1AB5C(v2, 1, v17);
  if (v27)
  {
    sub_22C270F24();
    sub_22BE18524();
    (*(v22 + 8))(v4);
    v23 = &qword_27D912118;
    v24 = &qword_22C2B5F78;
    v25 = v2;
LABEL_7:
    sub_22BE233E8(v25, v23, v24);
    v39 = 1;
    v0 = v43;
    goto LABEL_8;
  }

  sub_22BE27C14();
  v26(v21, v2, v17);
  sub_22C270EE4();
  sub_22BE1C14C(v0);
  if (v27)
  {
    sub_22C270F24();
    sub_22BE18524();
    (*(v28 + 8))(v4);
    v29 = sub_22BE196A8();
    v30(v29);
    v23 = &qword_27D907400;
    v24 = &unk_22C274F90;
    v25 = v0;
    goto LABEL_7;
  }

  v31 = v42;
  sub_22BE41F08();
  sub_22BE35F50();
  v32();
  sub_22BE37940();
  v33();
  sub_22C116380();
  v34 = sub_22BE180C8();
  v35(v34);
  sub_22BE46B90();
  sub_22BE191C0();
  sub_22C26F8D4();
  sub_22C270F24();
  sub_22BE18524();
  (*(v36 + 8))(v4);
  (*(v31 + 8))(v1, v8);
  v37 = sub_22BE196A8();
  v38(v37);
  v39 = 0;
LABEL_8:
  v40 = sub_22C26F8E4();
  sub_22BE19DC4(v0, v39, 1, v40);
  sub_22BE1AABC();
}

void PlannerPromptData.Tool.init(ifps:)()
{
  sub_22BE3C358();
  sub_22BE1B254();
  v3 = sub_22C270B74();
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  sub_22BE35AE8();
  v5 = sub_22BE5CE4C(&qword_27D912108, &qword_22C2B5F60);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  v7 = sub_22C26F964();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE18928();
  MEMORY[0x28223BE20](v11);
  sub_22BE181E4();
  sub_22C270B94();
  PlannerPromptData.Tool.Definition.init(ifps:)();
  sub_22BE1C14C(v1);
  if (v12)
  {
    sub_22C270C24();
    sub_22BE18524();
    (*(v13 + 8))(v0);
    sub_22BE233E8(v1, &qword_27D912108, &qword_22C2B5F60);
  }

  else
  {
    sub_22BE41F08();
    sub_22BE35F50();
    v14();
    sub_22C116374();
    sub_22BE37940();
    v15();
    sub_22C26F974();
    sub_22C270C24();
    sub_22BE18524();
    (*(v16 + 8))(v0);
    (*(v9 + 8))(v2, v7);
  }

  sub_22C26F984();
  v17 = sub_22BE19454();
  sub_22BE19DC4(v17, v18, 1, v19);
  sub_22BE267B8();
}

void PlannerPromptData.Tool.Definition.init(ifps:)()
{
  sub_22BE19460();
  v5 = v4;
  v87 = v6;
  v7 = sub_22BE5CE4C(&qword_27D912128, &unk_22C2B5F90);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v81 = v9;
  sub_22BE183BC();
  v80 = sub_22C26F924();
  sub_22BE179D8();
  v79 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v78 = v12;
  sub_22BE183BC();
  sub_22C270C84();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  sub_22BE183BC();
  v15 = sub_22C272224();
  sub_22BE179D8();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v19);
  sub_22BE32374();
  sub_22C272CA4();
  sub_22BE179D8();
  v83 = v21;
  v84 = v20;
  MEMORY[0x28223BE20](v20);
  sub_22BE17B98();
  v82 = v22;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  sub_22BE195C4();
  v24 = sub_22C270B74();
  sub_22BE179D8();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  v30 = v29 - v28;
  sub_22C26F964();
  sub_22BE179D8();
  v85 = v32;
  v86 = v31;
  MEMORY[0x28223BE20](v31);
  sub_22BE179EC();
  sub_22BE1BC40();
  v33 = sub_22BE33FD8();
  v34(v33);
  v35 = (*(v26 + 88))(v30, v24);
  if (v35 == *MEMORY[0x277D1ECE0])
  {
    v36 = sub_22BE1A040();
    v37(v36);
    v38 = sub_22BE2866C();
    v39(v38);
    sub_22C11634C();
    v40(v0, v3, v15);
    sub_22C26F934();
    (*(v26 + 8))(v5, v24);
    (*(v17 + 8))(v3, v15);
LABEL_3:
    v41 = MEMORY[0x277D1CC98];
    goto LABEL_6;
  }

  if (v35 == *MEMORY[0x277D1ECE8])
  {
    v42 = sub_22BE1A040();
    v43(v42);
    v44 = sub_22BE33FCC();
    v45(v44);
    (*(v83 + 16))(v82, v2, v84);
    sub_22C26F954();
    v46 = sub_22BE2BACC();
    v47(v46);
    v48 = sub_22BE33FCC();
    v49(v48);
    v41 = MEMORY[0x277D1CC90];
    goto LABEL_6;
  }

  if (v35 == *MEMORY[0x277D1ECD8])
  {
    v52 = sub_22BE1A040();
    v53(v52);
    v54 = sub_22BE2866C();
    v55(v54);
    sub_22C11634C();
    v56(v0, v3, v15);
    sub_22C26F934();
    v57 = sub_22BE2BACC();
    v58(v57);
    (*(v17 + 8))(v3, v15);
    goto LABEL_3;
  }

  if (v35 == *MEMORY[0x277D1ECD0])
  {
    v59 = sub_22BE1A040();
    v60(v59);
    v61 = sub_22BE2866C();
    v62(v61);
    sub_22C11634C();
    v63(v0, v3, v15);
    sub_22C26F934();
    v64 = sub_22BE1B73C();
    v65(v64);
    (*(v17 + 8))(v3, v15);
    v41 = MEMORY[0x277D1CC88];
    goto LABEL_6;
  }

  if (v35 == *MEMORY[0x277D1ECF8])
  {
    v66 = sub_22BE1A040();
    v67(v66);
    sub_22BE27C14();
    v68 = sub_22BE33FCC();
    v69(v68);
    sub_22C116380();
    v70 = sub_22BE180C8();
    v71(v70);
    PlannerPromptData.Tool.Definition.UIControlTool.init(ifps:)();
    v72 = sub_22BE1B73C();
    v73(v72);
    v74 = sub_22BE33FCC();
    v75(v74);
    sub_22BE1AB5C(v81, 1, v80);
    if (v76)
    {
      sub_22BE233E8(v81, &qword_27D912128, &unk_22C2B5F90);
      v51 = 1;
      v50 = v87;
      goto LABEL_7;
    }

    v77 = *(v79 + 32);
    v77(v78, v81, v80);
    v77(v1, v78, v80);
    v41 = MEMORY[0x277D1CCA0];
LABEL_6:
    (*(v85 + 104))(v1, *v41, v86);
    v50 = v87;
    (*(v85 + 32))(v87, v1, v86);
    v51 = 0;
LABEL_7:
    sub_22BE3ACE4(v50, v51);
    sub_22BE1AABC();
    return;
  }

  sub_22C274004();
  __break(1u);
}

void PlannerPromptData.Tool.Definition.UIControlTool.init(ifps:)()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C26F914();
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE28738();
  v8 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1AB08();
  v10 = sub_22C272224();
  sub_22BE179D8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BE18928();
  MEMORY[0x28223BE20](v14);
  sub_22BE181E4();
  sub_22C270C54();
  sub_22BE1AB5C(v1, 1, v10);
  if (v15)
  {
    sub_22C270C84();
    sub_22BE18524();
    (*(v16 + 8))(v3);
    sub_22BE233E8(v1, &qword_27D90B2D8, &qword_22C2B5080);
    v22 = 1;
  }

  else
  {
    v17 = sub_22BE41F08();
    v18(v17, v1, v10);
    sub_22C270C34();
    sub_22C270C44();
    sub_22C270C74();
    sub_22C26F904();
    v19 = sub_22C116374();
    v20(v19, v0, v10);
    sub_22C26F8F4();
    sub_22C270C84();
    sub_22BE18524();
    (*(v21 + 8))(v3);
    (*(v12 + 8))(v0, v10);
    v22 = 0;
  }

  v23 = sub_22C26F924();
  sub_22BE19DC4(v5, v22, 1, v23);
  sub_22BE1AABC();
}

void PlannerPromptData.OnScreenContextValue.ContextType.init(ifps:)()
{
  sub_22BE3C358();
  sub_22C26F8C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v0);
  sub_22BE179EC();
  sub_22BE28738();
  sub_22C270A04();
  v1 = sub_22BE2590C();
  v3 = v2(v1);
  if (v3 == *MEMORY[0x277D1EAB8] || v3 == *MEMORY[0x277D1EB38] || v3 == *MEMORY[0x277D1EB28] || v3 == *MEMORY[0x277D1EB48] || v3 == *MEMORY[0x277D1EB00] || v3 == *MEMORY[0x277D1EB18] || v3 == *MEMORY[0x277D1EA80])
  {
    v4 = sub_22BE3C094();
    v5(v4);
    v6 = sub_22BE18040();
    v7(v6);
    sub_22BE3A264();
    sub_22BE19DC4(v8, v9, v10, v11);
    sub_22BE267B8();
  }

  else
  {
    v12 = sub_22BE2590C();
    v13(v12);
    sub_22BE1A140();
    sub_22BE267B8();

    sub_22BE19DC4(v14, v15, v16, v17);
  }
}

uint64_t ActionResolutionUpdate.init(ifps:)()
{
  sub_22BE28CF0();
  type metadata accessor for ActionResolverRequest(0);

  Dictionary<>.init(parameterCandidates:)();
  v0 = sub_22BE191CC();
  MEMORY[0x2318A85D0](v0);
  return sub_22BE48744();
}

void Dictionary<>.init(parameterCandidates:)()
{
  sub_22BE19460();
  v1 = v0;
  v2 = 0;
  sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1A174();
  v82 = v4;
  v5 = sub_22BE5CE4C(&qword_27D909008, &qword_22C27FC60);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v7);
  sub_22BE19490();
  v81 = v8;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  sub_22BE19490();
  v80 = v10;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E94();
  v79 = v12;
  v13 = (v1 + 64);
  sub_22BE185B4();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v77 = v1;

  v19 = MEMORY[0x277D84F98];
  v75 = v18;
  v76 = (v1 + 64);
  if (!v16)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v78 = v19;
LABEL_7:
    v21 = *(v77 + 48) + 32 * (__clz(__rbit64(v16)) | (v2 << 6));
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v26 = type metadata accessor for Candidate(0);
    sub_22BE19448(v26);
    sub_22BE3F24C();
    *v79 = v23;
    *(v79 + 8) = v22;
    *(v79 + 16) = v24;
    *(v79 + 24) = v25;
    sub_22BE22814();
    v28 = *v80;
    v27 = v80[1];
    sub_22BE22814();
    v29 = *(v81 + 16);
    v30 = *(v81 + 24);

    v31 = v28;
    sub_22BE22814();

    *v82 = v29;
    *(v82 + 8) = v30;
    sub_22BE37A38();
    swift_isUniquelyReferenced_nonNull_native();
    v83[0] = v78;
    v32 = sub_22BE1AB74();
    v34 = sub_22BE3B674(v32, v33);
    v36 = *(v78 + 16);
    v37 = (v35 & 1) == 0;
    v13 = (v36 + v37);
    if (__OFADD__(v36, v37))
    {
      break;
    }

    v38 = v34;
    v39 = v35;
    sub_22BE5CE4C(&qword_27D912130, qword_22C2B5FA0);
    v19 = v83[0];
    if (sub_22C273C44())
    {
      v40 = sub_22BE1AB74();
      v42 = sub_22BE3B674(v40, v41);
      if ((v39 & 1) != (v43 & 1))
      {
        goto LABEL_33;
      }

      v38 = v42;
    }

    if (v39)
    {
    }

    else
    {
      *(v83[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
      v44 = (v19[6] + 16 * v38);
      *v44 = v31;
      v44[1] = v27;
      *(v19[7] + 8 * v38) = MEMORY[0x277D84F90];
      v45 = v19[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_32;
      }

      v19[2] = v47;
    }

    v48 = v19[7];
    v49 = *(v48 + 8 * v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v48 + 8 * v38) = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BE3A264();
      sub_22BE67AA8(v54, v55, v56, v57);
      v49 = v58;
      *(v48 + 8 * v38) = v58;
    }

    v52 = *(v49 + 16);
    v51 = *(v49 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_22BE1AAE4(v51);
      sub_22BE3A264();
      sub_22BE67AA8(v59, v60, v61, v62);
      *(v48 + 8 * v38) = v63;
    }

    v16 &= v16 - 1;
    v53 = *(v5 + 48);
    sub_22BE233E8(v79, &qword_27D909008, &qword_22C27FC60);
    *(*(v48 + 8 * v38) + 16) = v52 + 1;
    sub_22BE424BC();
    sub_22BE41F44(v81 + v53, type metadata accessor for Candidate);
    sub_22BE41F44(v80 + v53, type metadata accessor for Candidate);
    v18 = v75;
    v13 = v76;
    if (!v16)
    {
      while (1)
      {
LABEL_3:
        v20 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        if (v20 >= v18)
        {
          break;
        }

        v16 = v13[v20];
        ++v2;
        if (v16)
        {
          v78 = v19;
          v2 = v20;
          goto LABEL_7;
        }
      }

      v84 = MEMORY[0x277D84F98];
      sub_22BE185B4();
      v66 = v65 & v64;
      v68 = (v67 + 63) >> 6;

      v69 = 0;
      v13 = 0;
      if (!v66)
      {
        goto LABEL_23;
      }

      do
      {
        v70 = v69;
LABEL_26:
        v71 = __clz(__rbit64(v66)) | (v70 << 6);
        v72 = (v19[6] + 16 * v71);
        v73 = v72[1];
        v74 = *(v19[7] + 8 * v71);
        v83[0] = *v72;
        v83[1] = v73;
        v83[2] = v74;

        sub_22C113B84(&v84, v83);
        v66 &= v66 - 1;

        v69 = v70;
      }

      while (v66);
LABEL_23:
      while (1)
      {
        v70 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v70 >= v68)
        {

          sub_22BE1AABC();
          return;
        }

        v66 = v19[v70 + 8];
        ++v69;
        if (v66)
        {
          goto LABEL_26;
        }
      }

LABEL_30:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);

  __break(1u);
LABEL_33:
  sub_22C2740B4();
  __break(1u);
}

void ActionExecutionOutcome.init(ifps:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE2054C(v5);
  v6 = sub_22C26F894();
  sub_22BE179D8();
  v28 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  sub_22BE1AB80();
  v9 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE23930();
  v11 = sub_22C26E1D4();
  sub_22BE179D8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22BE18928();
  MEMORY[0x28223BE20](v15);
  sub_22BE26800();
  sub_22BE31038();
  sub_22BE22814();
  sub_22BE1AB5C(v2, 1, v11);
  if (v16)
  {
    sub_22BE2375C();
    sub_22BE233E8(v2, &qword_27D9082F0, &qword_22C27AB00);
LABEL_7:
    v23 = 1;
    goto LABEL_8;
  }

  (*(v13 + 32))(v1, v2, v11);
  v17 = type metadata accessor for StatementResult(0);
  if (!*(v4 + *(v17 + 36) + 8))
  {
    v24 = sub_22BE1AB1C();
    v25(v24);
    sub_22BE2375C();
    goto LABEL_7;
  }

  v18 = v17;
  v19 = sub_22C116374();
  v20(v19, v1, v11);
  (*(v28 + 16))(v0, v4 + *(v18 + 20), v6);

  sub_22C26FEB4();
  v21 = sub_22BE1AB1C();
  v22(v21);
  sub_22BE2375C();
  v23 = 0;
LABEL_8:
  sub_22C26FEC4();
  v26 = sub_22BE335B4();
  sub_22BE19DC4(v26, v23, 1, v27);
  sub_22BE1AABC();
}

void sub_22C113B84(uint64_t a1, uint64_t *a2)
{
  v69 = a1;
  v77 = sub_22C272874();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v60 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = (&v58 - v7);
  v65 = sub_22C272984();
  v62 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v58 - v10;
  v11 = sub_22BE5CE4C(&qword_27D912138, &qword_22C2B5FC8);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v64 = &v58 - v14;
  v15 = type metadata accessor for Candidate(0);
  MEMORY[0x28223BE20](v15 - 8);
  v58 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v58 - v18;
  v76 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  v19 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v73 = &v58 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  v26 = 0;
  v27 = *a2;
  v67 = a2[1];
  v68 = v27;
  v28 = a2[2];
  v78 = v28[2];
  do
  {
    if (v78 == v26)
    {
      goto LABEL_7;
    }

    if (v26 >= v28[2])
    {
      __break(1u);
      goto LABEL_21;
    }

    v29 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v30 = *(v19 + 72);
    sub_22BE22814();
    ++v26;
    v31 = v25[8];
    sub_22BE233E8(v25, &qword_27D9076D0, &unk_22C275230);
  }

  while ((v31 & 1) != 0);
  v32 = v64;
  sub_22BF2DDB0(v28);
  v33 = v76;
  if (sub_22BE1AEA8(v32, 1, v76) != 1)
  {
    sub_22BE37A38();
    sub_22BE37A38();
    v79 = v28;

    v40 = v70;
    sub_22C108E24(&v79);
    v28 = v40;
    if (!v40)
    {
      v41 = v79;
      v42 = v79[2];
      v43 = v60;
      if (v42)
      {
        v70 = 0;
        v79 = MEMORY[0x277D84F90];
        sub_22BE71320(0, v42, 0);
        v78 = v79;
        v64 = v41;
        v44 = v41 + v29;
        v71 = (v75 + 32);
        v72 = (v75 + 16);
        v45 = v77;
        do
        {
          v77 = v42;
          v46 = v45;
          v47 = v33;
          sub_22BE22814();
          v48 = v74;
          v49 = v78;
          sub_22BE424BC();
          v50 = *(v47 + 48);
          (*v72)(v43, &v48[v50], v46);
          sub_22BE41F44(&v48[v50], type metadata accessor for Candidate);
          v79 = v49;
          v52 = *(v49 + 16);
          v51 = *(v49 + 24);
          v45 = v46;
          if (v52 >= v51 >> 1)
          {
            sub_22BE71320(v51 > 1, v52 + 1, 1);
            v78 = v79;
          }

          v53 = v78;
          *(v78 + 16) = v52 + 1;
          (*(v75 + 32))(v53 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v52, v43, v46);
          v44 += v30;
          v33 = v76;
          v42 = v77 - 1;
        }

        while (v77 != 1);
      }

      else
      {

        v78 = MEMORY[0x277D84F90];
        v45 = v77;
      }

      v54 = v61;
      sub_22C272814();
      sub_22C2726B4();
      v55 = swift_allocBox();
      v56 = v62;
      (*(v62 + 16))(v59, v54, v65);

      sub_22C272684();
      v57 = v63;
      *v63 = v55;
      (*(v75 + 104))(v57, *MEMORY[0x277D729E0], v45);
      sub_22BE19DC4(v57, 0, 1, v45);
      sub_22BE5F8EC();
      (*(v56 + 8))(v54, v65);
      sub_22BE41F44(v66, type metadata accessor for Candidate);
      return;
    }

LABEL_21:

    __break(1u);
    return;
  }

  sub_22BE233E8(v32, &qword_27D912138, &qword_22C2B5FC8);
LABEL_7:
  v34 = v71;
  sub_22BF2DDB0(v28);
  v35 = v76;
  if (sub_22BE1AEA8(v34, 1, v76) == 1)
  {

    sub_22BE233E8(v34, &qword_27D912138, &qword_22C2B5FC8);
    v36 = 1;
    v37 = v77;
    v38 = v72;
  }

  else
  {
    v39 = *(v35 + 48);
    v38 = v72;
    v37 = v77;
    (*(v75 + 16))(v72, v34 + v39, v77);

    sub_22BE41F44(v34 + v39, type metadata accessor for Candidate);
    v36 = 0;
  }

  sub_22BE19DC4(v38, v36, 1, v37);
  sub_22BE5F8EC();
}

BOOL sub_22C1143C8()
{
  v0 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  sub_22BE22814();
  if (v6[8])
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6;
  }

  sub_22BE41F44(&v6[*(v1 + 56)], type metadata accessor for Candidate);
  sub_22BE22814();
  if (v3[8])
  {
    v8 = 0;
  }

  else
  {
    v8 = *v3;
  }

  sub_22BE41F44(&v3[*(v1 + 56)], type metadata accessor for Candidate);
  return v7 < v8;
}

void sub_22C114518(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22C273FC4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C1149A0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_22C114660(0, v2, 1, a1);
  }
}

void sub_22C114660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  MEMORY[0x28223BE20](v8);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v34 - v11;
  MEMORY[0x28223BE20](v12);
  v46 = &v34 - v13;
  MEMORY[0x28223BE20](v14);
  v45 = &v34 - v15;
  MEMORY[0x28223BE20](v16);
  v44 = &v34 - v18;
  v36 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v41 = -v20;
    v42 = v19;
    v22 = a1 - a3;
    v35 = v20;
    v23 = v19 + v20 * a3;
    v24 = &qword_27D9076D0;
    v25 = v44;
    while (2)
    {
      v39 = v21;
      v40 = a3;
      v37 = v23;
      v38 = v22;
      v48 = v22;
      do
      {
        sub_22BE22814();
        v26 = v45;
        sub_22BE22814();
        v27 = v24;
        v28 = v46;
        sub_22BE22814();
        v29 = *v28;
        if (v28[8])
        {
          v29 = 0;
        }

        v50 = v29;
        sub_22BE41F44(&v28[*(v8 + 48)], type metadata accessor for Candidate);
        v30 = v47;
        sub_22BE22814();
        v31 = *v30;
        if (v30[8])
        {
          v31 = 0;
        }

        v49 = v31;
        v32 = &v30[*(v8 + 48)];
        v24 = v27;
        sub_22BE41F44(v32, type metadata accessor for Candidate);
        sub_22BE233E8(v26, v27, &unk_22C275230);
        sub_22BE233E8(v25, v27, &unk_22C275230);
        if (v50 >= v49)
        {
          break;
        }

        if (!v42)
        {
          __break(1u);
          return;
        }

        sub_22BE424BC();
        swift_arrayInitWithTakeFrontToBack();
        sub_22BE424BC();
        v21 += v41;
        v23 += v41;
      }

      while (!__CFADD__(v48++, 1));
      a3 = v40 + 1;
      v21 = v39 + v35;
      v22 = v38 - 1;
      v23 = v37 + v35;
      if (v40 + 1 != v36)
      {
        continue;
      }

      break;
    }
  }
}

void sub_22C1149A0(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v134 = a1;
  v7 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  v148 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v138 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v154 = &v131 - v10;
  MEMORY[0x28223BE20](v11);
  v158 = &v131 - v12;
  MEMORY[0x28223BE20](v13);
  v157 = &v131 - v14;
  MEMORY[0x28223BE20](v15);
  v156 = &v131 - v16;
  MEMORY[0x28223BE20](v17);
  v155 = &v131 - v18;
  MEMORY[0x28223BE20](v19);
  v143 = &v131 - v20;
  MEMORY[0x28223BE20](v21);
  v142 = &v131 - v22;
  MEMORY[0x28223BE20](v23);
  v141 = &v131 - v24;
  MEMORY[0x28223BE20](v25);
  v140 = &v131 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v131 - v28;
  MEMORY[0x28223BE20](v30);
  v149 = a3;
  v35 = a3[1];
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
    v38 = v4;
LABEL_115:
    v160 = *v134;
    if (!v160)
    {
      goto LABEL_157;
    }

    v39 = v37;
    v36 = v38;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_117;
    }

    goto LABEL_151;
  }

  v132 = a4;
  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v159 = v7;
  v144 = v29;
  v133 = &v131 - v34;
  v38 = v4;
  while (1)
  {
    v39 = v36 + 1;
    if (v36 + 1 < v35)
    {
      v147 = v35;
      v40 = *v149;
      v41 = *(v148 + 72);
      v135 = v36;
      v151 = (v36 + 1);
      v42 = v40 + v41 * v39;
      sub_22BE22814();
      v160 = v40;
      v43 = v135;
      sub_22BE22814();
      v44 = v133;
      LODWORD(v146) = sub_22C1143C8();
      v145 = v38;
      if (v38)
      {
        sub_22BE233E8(v29, &qword_27D9076D0, &unk_22C275230);
        sub_22BE233E8(v44, &qword_27D9076D0, &unk_22C275230);
LABEL_125:

        return;
      }

      v38 = 0;
      v150 = v37;
      sub_22BE233E8(v29, &qword_27D9076D0, &unk_22C275230);
      sub_22BE233E8(v44, &qword_27D9076D0, &unk_22C275230);
      v45 = v43 + 2;
      v46 = v160 + v41 * (v43 + 2);
      v47 = v41;
      v152 = v41;
      v48 = v147;
      while (1)
      {
        v49 = v45;
        v151 = (v151 + 1);
        if (v151 >= v48)
        {
          break;
        }

        v50 = v140;
        v160 = v45;
        sub_22BE22814();
        v51 = v141;
        sub_22BE22814();
        v52 = v142;
        sub_22BE22814();
        v53 = *v52;
        if (v52[8])
        {
          v53 = 0;
        }

        v153 = v53;
        sub_22BE41F44(&v52[*(v7 + 48)], type metadata accessor for Candidate);
        v54 = v143;
        sub_22BE22814();
        if (v54[8])
        {
          v55 = 0;
        }

        else
        {
          v55 = *v54;
        }

        v7 = v159;
        sub_22BE41F44(&v54[*(v159 + 48)], type metadata accessor for Candidate);
        sub_22BE233E8(v51, &qword_27D9076D0, &unk_22C275230);
        v56 = v50;
        v38 = v145;
        sub_22BE233E8(v56, &qword_27D9076D0, &unk_22C275230);
        v49 = v160;
        v48 = v147;
        v47 = v152;
        v46 += v152;
        v42 += v152;
        v45 = v160 + 1;
        if (((v146 ^ (v153 >= v55)) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v151 = v48;
LABEL_15:
      if (v146)
      {
        v39 = v151;
        v36 = v135;
        if (v151 < v135)
        {
          goto LABEL_150;
        }

        if (v135 >= v151)
        {
          v37 = v150;
          v29 = v144;
          goto LABEL_38;
        }

        if (v48 >= v49)
        {
          v57 = v49;
        }

        else
        {
          v57 = v48;
        }

        v58 = v47 * (v57 - 1);
        v59 = v47 * v57;
        v60 = v135 * v47;
        v61 = v151;
        do
        {
          if (v36 != --v61)
          {
            v62 = *v149;
            if (!*v149)
            {
              goto LABEL_155;
            }

            sub_22BE424BC();
            v63 = v60 < v58 || v62 + v60 >= (v62 + v59);
            if (v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22BE424BC();
            v39 = v151;
            v47 = v152;
          }

          v36 = (v36 + 1);
          v58 -= v47;
          v59 -= v47;
          v60 += v47;
        }

        while (v36 < v61);
        v37 = v150;
        v7 = v159;
        v29 = v144;
      }

      else
      {
        v37 = v150;
        v39 = v151;
        v29 = v144;
      }

      v36 = v135;
    }

LABEL_38:
    v64 = v149[1];
    if (v39 < v64)
    {
      if (__OFSUB__(v39, v36))
      {
        goto LABEL_147;
      }

      if ((v39 - v36) < v132)
      {
        break;
      }
    }

LABEL_61:
    if (v39 < v36)
    {
      goto LABEL_146;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v151 = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BE6614C();
      v37 = v122;
    }

    v80 = v37[2];
    v39 = v80 + 1;
    if (v80 >= v37[3] >> 1)
    {
      sub_22BE6614C();
      v37 = v123;
    }

    v37[2] = v39;
    v81 = v37 + 4;
    v82 = &v37[2 * v80 + 4];
    v83 = v151;
    *v82 = v36;
    v82[1] = v83;
    v160 = *v134;
    if (!v160)
    {
      goto LABEL_156;
    }

    if (v80)
    {
      v150 = v37;
      while (1)
      {
        v84 = v39 - 1;
        v85 = &v81[2 * v39 - 2];
        v86 = &v37[2 * v39];
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v87 = v37[4];
          v88 = v37[5];
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_82:
          if (v90)
          {
            goto LABEL_133;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_136;
          }

          v106 = v85[1];
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_141;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v39 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v39 < 2)
        {
          goto LABEL_135;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_97:
        if (v105)
        {
          goto LABEL_138;
        }

        v111 = *v85;
        v110 = v85[1];
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_140;
        }

        if (v112 < v104)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v84 - 1 >= v39)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
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
          __break(1u);
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
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v149)
        {
          goto LABEL_153;
        }

        v39 = &v81[2 * v84 - 2];
        v116 = *v39;
        v117 = v84;
        v36 = &v81[2 * v84];
        v118 = v36[1];
        sub_22C115608(*v149 + *(v148 + 72) * *v39, (*v149 + *(v148 + 72) * *v36), *v149 + *(v148 + 72) * v118, v160);
        if (v38)
        {
          goto LABEL_125;
        }

        if (v118 < v116)
        {
          goto LABEL_128;
        }

        v119 = v81;
        v120 = v150[2];
        if (v117 > v120)
        {
          goto LABEL_129;
        }

        *v39 = v116;
        *(v39 + 8) = v118;
        if (v117 >= v120)
        {
          goto LABEL_130;
        }

        v39 = v120 - 1;
        memmove(v36, v36 + 2, 16 * (v120 - 1 - v117));
        v37 = v150;
        v150[2] = v120 - 1;
        v121 = v120 > 2;
        v29 = v144;
        v81 = v119;
        v38 = 0;
        if (!v121)
        {
          goto LABEL_111;
        }
      }

      v91 = &v81[2 * v39];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_131;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_132;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_134;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_137;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = v85[1];
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_145;
        }

        if (v89 < v115)
        {
          v84 = v39 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v35 = v149[1];
    v36 = v151;
    v7 = v159;
    if (v151 >= v35)
    {
      goto LABEL_115;
    }
  }

  v65 = v36 + v132;
  if (__OFADD__(v36, v132))
  {
    goto LABEL_148;
  }

  if (v65 >= v64)
  {
    v65 = v149[1];
  }

  if (v65 < v36)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v39 = sub_22C115CA4(v39, v31, v32, v33);
LABEL_117:
    v124 = (v39 + 16);
    for (i = *(v39 + 16); i >= 2; *v124 = i)
    {
      if (!*v149)
      {
        goto LABEL_154;
      }

      v126 = (v39 + 16 * i);
      v127 = *v126;
      v128 = &v124[2 * i];
      v129 = v128[1];
      sub_22C115608(*v149 + *(v148 + 72) * *v126, (*v149 + *(v148 + 72) * *v128), *v149 + *(v148 + 72) * v129, v160);
      if (v36)
      {
        break;
      }

      if (v129 < v127)
      {
        goto LABEL_142;
      }

      if (i - 2 >= *v124)
      {
        goto LABEL_143;
      }

      *v126 = v127;
      v126[1] = v129;
      v130 = *v124 - i;
      if (*v124 < i)
      {
        goto LABEL_144;
      }

      i = *v124 - 1;
      memmove(v128, v128 + 2, 16 * v130);
    }

    goto LABEL_125;
  }

  if (v39 == v65)
  {
    goto LABEL_61;
  }

  v150 = v37;
  v145 = v38;
  v66 = *v149;
  v67 = *(v148 + 72);
  v68 = *v149 + v67 * (v39 - 1);
  v152 = -v67;
  v135 = v36;
  v69 = v36 - v39;
  v153 = v66;
  v136 = v67;
  v70 = v66 + v39 * v67;
  v137 = v65;
LABEL_47:
  v151 = v39;
  v139 = v70;
  v71 = v70;
  v146 = v69;
  v147 = v68;
  v72 = v68;
  while (1)
  {
    v73 = v155;
    sub_22BE22814();
    v74 = v156;
    sub_22BE22814();
    v75 = v157;
    sub_22BE22814();
    v76 = *v75;
    if (v75[8])
    {
      v76 = 0;
    }

    v160 = v76;
    sub_22BE41F44(&v75[*(v7 + 48)], type metadata accessor for Candidate);
    v77 = v158;
    sub_22BE22814();
    if (v77[8])
    {
      v78 = 0;
    }

    else
    {
      v78 = *v77;
    }

    sub_22BE41F44(&v77[*(v7 + 48)], type metadata accessor for Candidate);
    sub_22BE233E8(v74, &qword_27D9076D0, &unk_22C275230);
    sub_22BE233E8(v73, &qword_27D9076D0, &unk_22C275230);
    if (v160 >= v78)
    {
      v7 = v159;
LABEL_59:
      v39 = v151 + 1;
      v68 = v147 + v136;
      v69 = v146 - 1;
      v70 = v139 + v136;
      if ((v151 + 1) == v137)
      {
        v39 = v137;
        v29 = v144;
        v38 = v145;
        v37 = v150;
        v36 = v135;
        goto LABEL_61;
      }

      goto LABEL_47;
    }

    if (!v153)
    {
      break;
    }

    sub_22BE424BC();
    v7 = v159;
    swift_arrayInitWithTakeFrontToBack();
    sub_22BE424BC();
    v72 += v152;
    v71 += v152;
    v63 = __CFADD__(v69++, 1);
    if (v63)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

void sub_22C115608(unint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  v76 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  MEMORY[0x28223BE20](v76);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v62 - v10;
  MEMORY[0x28223BE20](v11);
  v64 = &v62 - v12;
  MEMORY[0x28223BE20](v13);
  v63 = &v62 - v14;
  MEMORY[0x28223BE20](v15);
  v72 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v71 = &v62 - v18;
  MEMORY[0x28223BE20](v19);
  v70 = &v62 - v20;
  MEMORY[0x28223BE20](v21);
  v69 = &v62 - v22;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v25 = &a2[-a1];
  v26 = &a2[-a1] == 0x8000000000000000 && v24 == -1;
  if (v26)
  {
    goto LABEL_71;
  }

  v27 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_72;
  }

  v29 = v25 / v24;
  v79 = a1;
  v78 = a4;
  v30 = v27 / v24;
  if (v25 / v24 >= v27 / v24)
  {
    sub_22BE68680(a2, v27 / v24, a4);
    v44 = a4 + v30 * v24;
    v45 = -v24;
    v46 = v44;
    v73 = -v24;
    v74 = a1;
    v75 = a4;
LABEL_42:
    v66 = v46;
    v69 = &a2[v45];
    v70 = a2;
    while (1)
    {
      if (v44 <= a4)
      {
        v79 = a2;
        goto LABEL_68;
      }

      if (a2 <= a1)
      {
        break;
      }

      v67 = v46;
      v47 = v44 + v45;
      v48 = v63;
      v49 = a3;
      sub_22BE22814();
      v50 = v64;
      sub_22BE22814();
      v51 = v65;
      sub_22BE22814();
      v52 = *v51;
      if (v51[8])
      {
        v52 = 0;
      }

      v72 = v52;
      v53 = v76;
      sub_22BE41F44(&v51[*(v76 + 48)], type metadata accessor for Candidate);
      v54 = v44;
      v55 = v68;
      sub_22BE22814();
      v56 = *v55;
      if (v55[8])
      {
        v56 = 0;
      }

      v71 = v56;
      v57 = a3 + v73;
      sub_22BE41F44(&v55[*(v53 + 48)], type metadata accessor for Candidate);
      sub_22BE233E8(v50, &qword_27D9076D0, &unk_22C275230);
      sub_22BE233E8(v48, &qword_27D9076D0, &unk_22C275230);
      if (v72 < v71)
      {
        v44 = v54;
        v59 = a3 < v70 || v57 >= v70;
        a4 = v75;
        a3 = v57;
        if (v59)
        {
          a2 = v69;
          swift_arrayInitWithTakeFrontToBack();
          v46 = v67;
          v45 = v73;
          a1 = v74;
        }

        else
        {
          v46 = v67;
          v26 = v49 == v70;
          v60 = v69;
          a2 = v69;
          v45 = v73;
          a1 = v74;
          if (!v26)
          {
            v61 = v67;
            swift_arrayInitWithTakeBackToFront();
            a2 = v60;
            v46 = v61;
          }
        }

        goto LABEL_42;
      }

      v58 = a3 < v54 || v57 >= v54;
      a4 = v75;
      if (v58)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v57;
        v44 = v47;
        v46 = v47;
        v45 = v73;
        a1 = v74;
        a2 = v70;
      }

      else
      {
        v46 = v47;
        v26 = v54 == a3;
        a3 = v57;
        v44 = v47;
        v45 = v73;
        a1 = v74;
        a2 = v70;
        if (!v26)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v57;
          v44 = v47;
          v46 = v47;
        }
      }
    }

    v79 = a2;
    v46 = v66;
LABEL_68:
    v77 = v46;
  }

  else
  {
    sub_22BE68680(a1, v25 / v24, a4);
    v67 = a3;
    v68 = (a4 + v29 * v24);
    v77 = v68;
    v66 = v24;
    v31 = v69;
    while (a4 < v68 && a2 < a3)
    {
      v74 = a1;
      sub_22BE22814();
      v33 = v70;
      sub_22BE22814();
      v34 = v71;
      sub_22BE22814();
      v35 = *v34;
      v36 = v34[8];
      v75 = a4;
      if (v36)
      {
        v35 = 0;
      }

      v73 = v35;
      v37 = v76;
      sub_22BE41F44(&v34[*(v76 + 48)], type metadata accessor for Candidate);
      v38 = v72;
      sub_22BE22814();
      if (v38[8])
      {
        v39 = 0;
      }

      else
      {
        v39 = *v38;
      }

      sub_22BE41F44(&v38[*(v37 + 48)], type metadata accessor for Candidate);
      sub_22BE233E8(v33, &qword_27D9076D0, &unk_22C275230);
      sub_22BE233E8(v31, &qword_27D9076D0, &unk_22C275230);
      if (v73 >= v39)
      {
        v40 = v66;
        v41 = v74;
        a4 = v75 + v66;
        if (v74 < v75 || v74 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v74 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v78 = a4;
      }

      else
      {
        v40 = v66;
        v41 = v74;
        a4 = v75;
        if (v74 < a2 || v74 >= &a2[v66])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v74 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v40;
      }

      a1 = v41 + v40;
      v79 = a1;
      a3 = v67;
    }
  }

  sub_22C115DBC(&v79, &v78, &v77, &qword_27D9076D0, &unk_22C275230);
}

void sub_22C115CE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  type metadata accessor for ToolBoxToolSearchResult(0);
  sub_22BE18000();
  v7 = *(v6 + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  sub_22BE22998();
  v10 = !v10 || v3 >= v9;
  if (v10)
  {
    sub_22BE18944();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {
    sub_22BE18944();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_22C115DBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  sub_22BE5CE4C(a4, a5);
  sub_22BE18000();
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  sub_22BE22998();
  v12 = !v12 || v5 >= v11;
  if (v12)
  {
    sub_22BE18944();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    sub_22BE18944();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_22C115E84(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_22C115EB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22BE5CE4C(&qword_27D907300, &qword_22C2B5FD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_22C11611C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E684();
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v9 = (v8 + 16);
  v10 = (v8 + 8);
  do
  {
    if (!v7)
    {
      break;
    }

    --v7;
    type metadata accessor for ProgramStatement(0);
    (*v9)(v6, a2, v4);
    v11 = _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
    (*v10)(v6, v4);
  }

  while ((v11 & 1) == 0);
  return v7;
}

uint64_t sub_22C1163AC()
{
  v3 = *(v1 - 112);

  return sub_22BE41F44(v3, v0);
}

uint64_t sub_22C1163DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session.Transcript(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Session.StatementIdCounter.__allocating_init(baseStatementIdIndex:)(int a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void Session.SessionState.init(events:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v5 = type metadata accessor for Session.Event(0);
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = v10 - v9;
  v12 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v13);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v14);
  v16 = &v73 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - v18;
  v81 = type metadata accessor for Session.Transcript(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v80 = &v73 - v24;
  MEMORY[0x28223BE20](v25);
  v83 = &v73 - v26;
  v27 = type metadata accessor for Session.SessionState(0);
  MEMORY[0x28223BE20](v84);
  sub_22BE179EC();
  if (*(v28 + 16))
  {
    v74 = v27;
    v75 = a2;
    v79 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v31 = v28 + v79;
    v32 = v5[5];
    v82 = v30 - v29;
    sub_22C26E1D4();
    sub_22BE18000();
    (*(v33 + 16))(v22, v31 + v32);
    v34 = (v31 + v5[9]);
    v35 = *v34;
    v78 = v34[1];
    v36 = v78;
    v37 = v81;
    v38 = &v22[*(v81 + 20)];
    *v38 = v35;
    *(v38 + 1) = v36;
    v39 = (v31 + v5[10]);
    v40 = *v39;
    v77 = v39[1];
    v41 = v77;
    v42 = &v22[v37[6]];
    *v42 = v40;
    *(v42 + 1) = v41;
    v43 = (v31 + v5[11]);
    v44 = *v43;
    v76 = v43[1];
    v45 = v76;
    v46 = &v22[v37[7]];
    *v46 = v44;
    *(v46 + 1) = v45;
    *&v22[v37[8]] = v84;
    v47 = v22;
    v48 = v80;
    sub_22BE3F2A0(v47, v80, type metadata accessor for Session.Transcript);
    v49 = v48;
    v50 = v83;
    sub_22BE3F2A0(v49, v83, type metadata accessor for Session.Transcript);
    sub_22BE18AF8();
    sub_22BE28A90(v50, v82, v51);
    v52 = *(v50 + v37[8]);
    v53 = *(v52 + 16);

    v84 = v52;

    v54 = v53;
    do
    {
      if (v54)
      {
        if (--v54 >= v53)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        sub_22BE1C040();
        sub_22BE28A90(v55, v19, v56);
        v57 = 0;
      }

      else
      {
        v57 = 1;
      }

      sub_22BE19DC4(v19, v57, 1, v5);
      sub_22BE26EE0(v19, v16);
      if (sub_22BE1AEA8(v16, 1, v5) == 1)
      {
        v67 = 0;
        goto LABEL_14;
      }

      sub_22BE18F14();
      sub_22BE3F2A0(v16, v11, v58);
      sub_22C19B5A0(&v86, v11);
      sub_22BE17E14();
      sub_22BE26F74(v11, v59);
    }

    while ((v86 & 0x100000000) != 0);
    v67 = v86;
    while (1)
    {
      if (v54)
      {
        if (--v54 >= v53)
        {
          goto LABEL_25;
        }

        sub_22BE1C040();
        sub_22BE28A90(v68, v3, v69);
        v70 = 0;
      }

      else
      {
        v70 = 1;
      }

      sub_22BE19DC4(v3, v70, 1, v5);
      sub_22BE26EE0(v3, v2);
      if (sub_22BE1AEA8(v2, 1, v5) == 1)
      {
        break;
      }

      sub_22BE18F14();
      sub_22BE3F2A0(v2, v11, v71);
      sub_22C19B5A0(&v85, v11);
      sub_22BE17E14();
      sub_22BE26F74(v11, v72);
      if ((v85 & 0x100000000) == 0 && v67 <= v85)
      {
        v67 = v85;
      }
    }

LABEL_14:

    v60 = v67 + 1;
    v62 = v74;
    v61 = v75;
    v63 = v83;
    if (v67 != -1)
    {
      type metadata accessor for Session.StatementIdCounter();
      v64 = swift_allocObject();
      *(v64 + 16) = v60;
      sub_22BE186F0();
      sub_22BE26F74(v63, v65);
      v66 = v82;
      *(v82 + *(v62 + 20)) = v64;
      sub_22BE3F2A0(v66, v61, type metadata accessor for Session.SessionState);
      sub_22BE19DC4(v61, 0, 1, v62);
      return;
    }

LABEL_26:
    __break(1u);
  }

  else
  {

    sub_22BE19DC4(a2, 1, 1, v27);
  }
}

uint64_t sub_22C116A4C(uint64_t a1)
{
  result = type metadata accessor for Session.Transcript(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for Session.StatementIdCounter();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Session.StatusUpdateEvent.id.getter()
{
  sub_22BE1A5E4();
  sub_22C26E1D4();
  sub_22BE18000();
  v0 = sub_22BE19454();

  return v1(v0);
}

uint64_t Session.StatusUpdateEvent.id.setter()
{
  sub_22BE17BC4();
  sub_22C26E1D4();
  sub_22BE18000();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Session.StatusUpdateEvent.sessionId.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = *(type metadata accessor for Session.StatusUpdateEvent(v2) + 20);
  sub_22C26E1D4();
  sub_22BE18000();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t Session.StatusUpdateEvent.sessionId.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for Session.StatusUpdateEvent(v2) + 20);
  sub_22C26E1D4();
  sub_22BE18000();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Session.StatusUpdateEvent.sessionId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.queryEventId.getter()
{
  v0 = sub_22BE1A5E4();
  updated = type metadata accessor for Session.StatusUpdateEvent(v0);
  v2 = sub_22BE25438(*(updated + 24));

  return sub_22C116D20(v2, v3);
}

uint64_t sub_22C116D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Session.StatusUpdateEvent.queryEventId.setter()
{
  v2 = sub_22BE17BC4();
  v3 = v1 + *(type metadata accessor for Session.StatusUpdateEvent(v2) + 24);

  return sub_22C116DD0(v0, v3);
}

uint64_t sub_22C116DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Session.StatusUpdateEvent.queryEventId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.clientRequestId.getter()
{
  type metadata accessor for Session.StatusUpdateEvent(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.clientRequestId.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for Session.StatusUpdateEvent(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.clientRequestId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.clientSessionId.getter()
{
  type metadata accessor for Session.StatusUpdateEvent(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.clientSessionId.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for Session.StatusUpdateEvent(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.clientSessionId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.clientApplicationId.getter()
{
  type metadata accessor for Session.StatusUpdateEvent(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.clientApplicationId.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for Session.StatusUpdateEvent(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.clientApplicationId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.clientGroupId.getter()
{
  type metadata accessor for Session.StatusUpdateEvent(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.clientGroupId.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for Session.StatusUpdateEvent(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.clientGroupId.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.timepoint.getter()
{
  v0 = sub_22BE1A5E4();
  updated = type metadata accessor for Session.StatusUpdateEvent(v0);
  v2 = sub_22BE25438(*(updated + 44));
  return sub_22C117370(v2, v3);
}

uint64_t Session.StatusUpdateEvent.timepoint.setter()
{
  v0 = sub_22BE17BC4();
  updated = type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE3EAE0(*(updated + 44));
}

uint64_t Session.StatusUpdateEvent.timepoint.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.sender.getter()
{
  type metadata accessor for Session.StatusUpdateEvent(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.sender.setter()
{
  v3 = sub_22BE23708();
  type metadata accessor for Session.StatusUpdateEvent(v3);
  result = sub_22BE1AFA8();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.sender.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.postingSpan.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Session.StatusUpdateEvent(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Session.StatusUpdateEvent.postingSpan.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.payload.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for Session.StatusUpdateEvent(v0);
  sub_22BE18F2C();
  v2 = sub_22BE25438(v1);
  return sub_22C117370(v2, v3);
}

uint64_t sub_22C117370(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v4(v3);
  sub_22BE18000();
  v5 = sub_22BE19454();
  v6(v5);
  return a2;
}

uint64_t Session.StatusUpdateEvent.payload.setter()
{
  v0 = sub_22BE17BC4();
  updated = type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE3EAE0(*(updated + 56));
}

uint64_t sub_22C117424(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v4(v3);
  sub_22BE18000();
  v5 = sub_22BE19454();
  v6(v5);
  return a2;
}

uint64_t Session.StatusUpdateEvent.payload.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE18504();
}

uint64_t static Session.StatusUpdateEvent.== infix(_:_:)()
{
  sub_22BE23708();
  v5 = sub_22C26E1D4();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  sub_22BE1BC40();
  v9 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B01C();
  if ((sub_22C26E1B4() & 1) == 0)
  {
    goto LABEL_12;
  }

  updated = type metadata accessor for Session.StatusUpdateEvent(0);
  if ((sub_22C26E1B4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = updated[6];
  v15 = *(v11 + 48);
  sub_22C116D20(v1 + v14, v3);
  sub_22C116D20(v0 + v14, v3 + v15);
  sub_22BE181B0(v3);
  if (!v18)
  {
    v16 = sub_22BE1B18C();
    sub_22C116D20(v16, v17);
    sub_22BE181B0(v3 + v15);
    if (!v18)
    {
      (*(v7 + 32))(v2, v3 + v15, v5);
      sub_22BE3E6A4();
      sub_22C11BD2C(v21, v22, MEMORY[0x277CC9610]);
      sub_22BE33560();
      v23 = sub_22C272FD4();
      v24 = *(v7 + 8);
      v24(v2, v5);
      v24(v4, v5);
      sub_22BE33928(v3, &qword_27D9082F0, &qword_22C27AB00);
      if ((v23 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    (*(v7 + 8))(v4, v5);
LABEL_11:
    sub_22BE33928(v3, &qword_27D90A8E8, &qword_22C288AF8);
    goto LABEL_12;
  }

  sub_22BE181B0(v3 + v15);
  if (!v18)
  {
    goto LABEL_11;
  }

  sub_22BE33928(v3, &qword_27D9082F0, &qword_22C27AB00);
LABEL_15:
  sub_22BE2B8DC(updated[7]);
  if (v18)
  {
    v27 = v25 == v26;
  }

  else
  {
    v27 = 0;
  }

  if (!v27 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_22BE2B8DC(updated[8]);
  v30 = v18 && v28 == v29;
  if (!v30 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_22BE2B8DC(updated[9]);
  v33 = v18 && v31 == v32;
  if (!v33 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_22BE39128();
  if (v34)
  {
    if (!v35)
    {
      goto LABEL_12;
    }

    v38 = *v36 == *v37 && v34 == v35;
    if (!v38 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v35)
  {
    goto LABEL_12;
  }

  if (static Timepoint.== infix(_:_:)(v1 + updated[11], v0 + updated[11]))
  {
    sub_22BE39128();
    if (v39)
    {
      if (!v40)
      {
        goto LABEL_12;
      }

      v43 = *v41 == *v42 && v39 == v40;
      if (!v43 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v40)
    {
      goto LABEL_12;
    }

    v44 = updated[13];
    v45 = (v1 + v44);
    v46 = *(v1 + v44 + 8);
    v47 = (v0 + v44);
    v48 = *(v0 + v44 + 8);
    if (v46)
    {
      if (v48)
      {
LABEL_55:
        v19 = static Session.StatusUpdateEvent.Payload.== infix(_:_:)(v1 + updated[14]);
        return v19 & 1;
      }
    }

    else
    {
      if (*v45 != *v47)
      {
        LOBYTE(v48) = 1;
      }

      if ((v48 & 1) == 0)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_12:
  v19 = 0;
  return v19 & 1;
}

uint64_t static Session.StatusUpdateEvent.Payload.== infix(_:_:)(uint64_t a1)
{
  *&v54 = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v7 = (v6 - v5);
  type metadata accessor for Session.StatusUpdateEvent.Payload(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  sub_22BE20324();
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  v16 = sub_22BE5CE4C(&qword_27D912190, &qword_22C2B6100);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1B72C();
  v19 = v1 + *(v18 + 56);
  sub_22C117370(a1, v1);
  v20 = sub_22BE18240();
  sub_22C117370(v20, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22BE18F2C();
    sub_22C117370(v1, v15);
    v28 = *(v15 + 2);
    v29 = *(v15 + 4);
    sub_22BE1AB1C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v44 = *(v15 + 3);
      v45 = *(v15 + 1);
      v46 = *v19;
      v47 = *(v19 + 8);
      v48 = *(v19 + 32);
      v59 = *v15;
      v60 = v45;
      v61 = v28;
      v62 = v44;
      v63 = v29;
      v55 = v46;
      v56 = v47;
      v54 = *(v19 + 16);
      v57 = v54;
      v58 = v48;
      v41 = static Session.StatusUpdateEvent.ToolExecutionProgressUpdate.== infix(_:_:)(&v59, &v55);

      sub_22BE17E2C();
      sub_22C119530();
      return v41 & 1;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_22BE18F2C();
    v30 = sub_22BE1A6BC();
    sub_22C117370(v30, v31);
    v33 = *v11;
    v32 = v11[1];
    sub_22BE1AB1C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v34 = v33 == *v19 && v32 == *(v19 + 8);
      if (v34 || (sub_22C274014() & 1) != 0)
      {
        v35 = sub_22BE1804C();
        v36 = MEMORY[0x2318A6720](v35);

        v37 = sub_22BE29454();
        sub_22BE29DD4(v37, v38);

        v39 = sub_22BE1804C();
        sub_22BE29DD4(v39, v40);
        if (v36)
        {
          goto LABEL_21;
        }
      }

      else
      {

        v49 = sub_22BE29454();
        sub_22BE29DD4(v49, v50);

        v51 = sub_22BE1804C();
        sub_22BE29DD4(v51, v52);
      }

      goto LABEL_28;
    }

    v42 = sub_22BE1804C();
    sub_22BE29DD4(v42, v43);
LABEL_24:
    sub_22BE33928(v1, &qword_27D912190, &qword_22C2B6100);
LABEL_29:
    v41 = 0;
    return v41 & 1;
  }

  sub_22BE18F2C();
  v23 = sub_22BE260B8();
  sub_22C117370(v23, v24);
  sub_22BE1AB1C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C11FDB0();
    sub_22C119530();
    goto LABEL_24;
  }

  sub_22BE22D00();
  sub_22C11BD74(v19, v7);
  v25 = *v2 == *v7 && v2[1] == v7[1];
  v26 = v54;
  if (!v25 && (sub_22C274014() & 1) == 0 || (static Session.StatusUpdateEvent.IntermediateQueryResult.Source.== infix(_:_:)(v2 + *(v26 + 20), v7 + *(v26 + 20)) & 1) == 0 || (sub_22BE96740(*(v2 + *(v26 + 24)), *(v7 + *(v26 + 24))), (v27 & 1) == 0))
  {
    sub_22C11FDC8();
    sub_22C119530();
    sub_22C119530();
LABEL_28:
    sub_22BE17E2C();
    sub_22C119530();
    goto LABEL_29;
  }

  sub_22C11FDC8();
  sub_22C119530();
  sub_22C119530();
LABEL_21:
  sub_22BE17E2C();
  sub_22C119530();
  v41 = 1;
  return v41 & 1;
}

uint64_t sub_22C117C6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6576457972657571 && a2 == 0xEC0000006449746ELL;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x800000022C2DAEA0 == a2;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7247746E65696C63 && a2 == 0xED0000644970756FLL;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E696F70656D6974 && a2 == 0xE900000000000074;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x53676E6974736F70 && a2 == 0xEB000000006E6170;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_22C274014();

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

unint64_t sub_22C117FEC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x496E6F6973736573;
      break;
    case 2:
      result = 0x6576457972657571;
      break;
    case 3:
      result = 0x6552746E65696C63;
      break;
    case 4:
      result = 0x6553746E65696C63;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x7247746E65696C63;
      break;
    case 7:
      result = 0x6E696F70656D6974;
      break;
    case 8:
      result = 0x7265646E6573;
      break;
    case 9:
      result = 0x53676E6974736F70;
      break;
    case 10:
      result = 0x64616F6C796170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C118154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C117C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11817C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C117FE4();
  *a1 = result;
  return result;
}

uint64_t sub_22C1181A4(uint64_t a1)
{
  v2 = sub_22C11BCD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1181E0(uint64_t a1)
{
  v2 = sub_22C11BCD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.encode(to:)()
{
  sub_22BE19130();
  sub_22BE5CE4C(&qword_27D912198, &qword_22C2B6108);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE19E64();
  v2 = sub_22BE1B73C();
  sub_22BE26950(v2, v3);
  sub_22C11BCD8();
  sub_22BE23550();
  sub_22C274234();
  sub_22C26E1D4();
  sub_22BE3E6A4();
  sub_22C11BD2C(v4, v5, MEMORY[0x277CC95F8]);
  sub_22BE1C270();
  sub_22C273FA4();
  if (!v0)
  {
    updated = type metadata accessor for Session.StatusUpdateEvent(0);
    sub_22BE2BC34();
    sub_22BE1C270();
    sub_22C273FA4();
    sub_22BE2BC34();
    sub_22BE1C270();
    sub_22C273F34();
    sub_22C11FDEC(updated[7]);
    sub_22BE1BB58();
    sub_22C273F54();
    sub_22C11FDEC(updated[8]);
    sub_22BE1BB58();
    sub_22C273F54();
    sub_22C11FDEC(updated[9]);
    sub_22BE1BB58();
    sub_22C273F54();
    sub_22C11FDEC(updated[10]);
    sub_22BE1BB58();
    sub_22C273EF4();
    type metadata accessor for Timepoint(0);
    sub_22BE3D1F4();
    sub_22C11BD2C(v7, v8, &protocol conformance descriptor for Timepoint);
    sub_22BE2BC34();
    sub_22BE1C270();
    sub_22C273FA4();
    sub_22BE31554();
    sub_22BE1C270();
    sub_22C273F34();
    sub_22BE315A8();
    sub_22BE1C270();
    sub_22C273F34();
    type metadata accessor for Session.StatusUpdateEvent.Payload(0);
    sub_22BE25998();
    sub_22C11BD2C(v9, v10, &protocol conformance descriptor for Session.StatusUpdateEvent.Payload);
    sub_22BE2BC34();
    sub_22BE1C270();
    sub_22C273FA4();
  }

  v11 = sub_22BE1AB74();
  v12(v11);
  sub_22BE35D48();
  sub_22BE18478();
}

void Session.StatusUpdateEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v28 = v27;
  v85 = v29;
  updated = type metadata accessor for Session.StatusUpdateEvent.Payload(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v30);
  sub_22BE179EC();
  v87 = v32 - v31;
  v93 = type metadata accessor for Timepoint(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v33);
  sub_22BE179EC();
  v36 = v35 - v34;
  v37 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v37);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1B72C();
  v39 = sub_22C26E1D4();
  sub_22BE179D8();
  v98 = v40;
  MEMORY[0x28223BE20](v41);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v42);
  v44 = &v83 - v43;
  sub_22BE5CE4C(&qword_27D9121B0, &qword_22C2B6110);
  sub_22BE179D8();
  v89 = v46;
  v90 = v45;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  v48 = sub_22BE1AED0();
  type metadata accessor for Session.StatusUpdateEvent(v48);
  sub_22BE18000();
  MEMORY[0x28223BE20](v49);
  sub_22BE179EC();
  v96 = v50[6];
  v97 = v50;
  v94 = v52 - v51;
  sub_22BE19DC4(v52 - v51 + v96, 1, 1, v39);
  v53 = v28[3];
  v54 = v28[4];
  v92 = v28;
  sub_22BE26950(v28, v53);
  sub_22C11BCD8();
  v91 = v26;
  sub_22C274214();
  v95 = v39;
  if (v24)
  {
    v93 = v24;
    sub_22C11FDF8();
    v57 = v94;
    sub_22BE26B64(v92);
    v59 = 0;
    if (!v44)
    {
      goto LABEL_10;
    }

    v58 = *(v98 + 8);
  }

  else
  {
    v88 = v23;
    v84 = v36;
    LOBYTE(v99) = 0;
    sub_22BE3E6A4();
    sub_22C11BD2C(v55, v56, MEMORY[0x277CC9618]);
    sub_22C273EB4();
    v60 = v94;
    v83 = *(v98 + 32);
    v83(v94, v44, v39);
    LOBYTE(v99) = 1;
    sub_22BE23B58();
    sub_22C273EB4();
    v61 = v97;
    v83(v60 + v97[5], v25, v39);
    LOBYTE(v99) = 2;
    v62 = v88;
    sub_22BE23B58();
    sub_22C273E44();
    sub_22C116DD0(v62, v60 + v96);
    sub_22BE23D8C(3);
    v63 = sub_22C273E64();
    LODWORD(v54) = v89;
    sub_22BE37C38(v63, v64, v61[7]);
    sub_22BE23D8C(4);
    v65 = sub_22C273E64();
    sub_22BE37C38(v65, v66, v61[8]);
    sub_22BE23D8C(5);
    v67 = sub_22C273E64();
    sub_22BE37C38(v67, v68, v61[9]);
    sub_22BE23D8C(6);
    v69 = sub_22C273E04();
    sub_22BE37C38(v69, v70, v61[10]);
    LOBYTE(v99) = 7;
    sub_22BE3D1F4();
    sub_22C11BD2C(v71, v72, &protocol conformance descriptor for Timepoint);
    v73 = v84;
    sub_22C273EB4();
    LODWORD(v25) = 0;
    LODWORD(v88) = 1;
    sub_22C11BD74(v73, v60 + v61[11]);
    sub_22C11BDCC();
    sub_22C273E44();
    v74 = (v60 + v61[12]);
    v75 = v100;
    *v74 = v99;
    v74[1] = v75;
    sub_22C11BE20();
    sub_22BE3788C();
    sub_22C273E44();
    v93 = 0;
    v76 = v94 + v97[13];
    v77 = v100;
    *v76 = v99;
    *(v76 + 8) = v77;
    LOBYTE(v99) = 10;
    sub_22BE25998();
    sub_22C11BD2C(v78, v79, &protocol conformance descriptor for Session.StatusUpdateEvent.Payload);
    LODWORD(v28) = v91;
    v80 = v93;
    sub_22C273EB4();
    v93 = v80;
    if (!v80)
    {
      (*(v89 + 8))(v91, v90);
      sub_22BE18B10();
      v81 = v94;
      sub_22C11BD74(v87, v94 + v82);
      sub_22C117370(v81, v85);
      sub_22BE26B64(v92);
      sub_22C119530();
      goto LABEL_19;
    }

    (*(v89 + 8))(v91, v90);
    v57 = v94;
    sub_22BE26B64(v92);
    sub_22BE48E38();
    v58 = *(v98 + 8);
    v58(v57, v95);
    if ((v61 & 1) == 0)
    {
      v59 = v88;
      goto LABEL_10;
    }

    v59 = v88;
  }

  v58(v57 + v97[5], v95);
LABEL_10:
  sub_22BE33928(v57 + v96, &qword_27D9082F0, &qword_22C27AB00);
  if (v54)
  {
  }

  if (v25)
  {
  }

  if (v28)
  {
  }

  if (v59)
  {
    sub_22C119530();
  }

LABEL_19:
  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t Session.Event.formingStatusUpdate(_:)(uint64_t a1)
{
  v3 = sub_22BE1A5E4();
  v4 = type metadata accessor for PreassignedEventID(v3);
  v5 = sub_22BE19448(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  v9 = sub_22C26E1D4();
  sub_22BE187D0();
  v45 = v10;
  v11 = *(v10 + 16);
  v47 = v8;
  v11(v1, v8, v9);
  v12 = type metadata accessor for Session.Event(0);
  v13 = v12[5];
  updated = type metadata accessor for Session.StatusUpdateEvent(0);
  v11(v1 + updated[5], v2 + v13, v9);
  sub_22C116D20(v2 + v12[6], v1 + updated[6]);
  v15 = v12[9];
  v16 = (v2 + v12[8]);
  v17 = v16[1];
  v41 = *v16;
  v18 = *(v2 + v15 + 8);
  v43 = *(v2 + v15);
  v19 = v12[11];
  v20 = (v2 + v12[10]);
  v21 = *v20;
  v22 = v20[1];
  v23 = (v2 + v19);
  v24 = v1 + updated[11];
  v37 = *v23;
  v38 = v23[1];
  v39 = v21;

  v42 = v17;

  v44 = v18;

  v40 = v22;

  sub_22C26E134();
  v25 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v26 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C(&qword_28106E038);
  }

  v27 = sub_22BE199F4(v9, qword_28108A1E0);
  v28 = type metadata accessor for Timepoint(0);
  v11(v24 + v28[7], v27, v9);
  *(v24 + v28[5]) = v25;
  *(v24 + v28[6]) = v26;
  sub_22BE18F2C();
  sub_22C117370(a1, v1 + v29);
  v30 = (v1 + updated[7]);
  *v30 = v41;
  v30[1] = v42;
  v31 = (v1 + updated[8]);
  *v31 = v43;
  v31[1] = v44;
  v32 = (v1 + updated[9]);
  *v32 = v39;
  v32[1] = v40;
  v33 = (v1 + updated[10]);
  *v33 = v37;
  v33[1] = v38;
  v34 = (v1 + updated[12]);
  *v34 = 0;
  v34[1] = 0;
  v35 = v1 + updated[13];
  *v35 = 0;
  *(v35 + 8) = 1;
  return (*(v45 + 8))(v47, v9);
}

uint64_t Session.Event.formingStatusUpdate(id:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C26E1D4();
  sub_22BE179D8();
  v45 = v7;
  v9 = *(v8 + 16);
  v46 = a1;
  v9(a3, a1, v6);
  v10 = type metadata accessor for Session.Event(0);
  v11 = v10[5];
  updated = type metadata accessor for Session.StatusUpdateEvent(0);
  v9(a3 + updated[5], v3 + v11, v6);
  sub_22C116D20(v3 + v10[6], a3 + updated[6]);
  v13 = v10[9];
  v14 = (v3 + v10[8]);
  v15 = v14[1];
  v40 = *v14;
  v16 = *(v3 + v13 + 8);
  v42 = *(v3 + v13);
  v17 = v10[11];
  v18 = (v3 + v10[10]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (v3 + v17);
  v22 = a3 + updated[11];
  v36 = *v21;
  v37 = v21[1];
  v38 = v19;

  v41 = v15;

  v43 = v16;

  v39 = v20;

  sub_22C26E134();
  v23 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v24 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C(&qword_28106E038);
  }

  v25 = sub_22BE199F4(v6, qword_28108A1E0);
  v26 = type metadata accessor for Timepoint(0);
  v9(v22 + v26[7], v25, v6);
  *(v22 + v26[5]) = v23;
  *(v22 + v26[6]) = v24;
  sub_22BE18F2C();
  sub_22C117370(a2, a3 + v27);
  v28 = (a3 + updated[7]);
  *v28 = v40;
  v28[1] = v41;
  v29 = (a3 + updated[8]);
  *v29 = v42;
  v29[1] = v43;
  v30 = (a3 + updated[9]);
  *v30 = v38;
  v30[1] = v39;
  v31 = (a3 + updated[10]);
  *v31 = v36;
  v31[1] = v37;
  v32 = (a3 + updated[12]);
  *v32 = 0;
  v32[1] = 0;
  v33 = a3 + updated[13];
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = *(v45 + 8);

  return v34(v46, v6);
}

uint64_t static Session.StatusUpdateEvent.ToolExecutionProgressUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *(a1 + 8) == *(a2 + 8) && v3 == v6;
    if (!v9 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      sub_22BE19454();
      if (sub_22C274014())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

void static Session.StatusUpdateEvent.IntermediateQueryResult.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_22C274014() & 1) != 0)
  {
    updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
    if (static Session.StatusUpdateEvent.IntermediateQueryResult.Source.== infix(_:_:)(a1 + *(updated + 20), a2 + *(updated + 20)))
    {
      v6 = *(updated + 24);
      v7 = *(a1 + v6);
      v8 = *(a2 + v6);

      sub_22BE96740(v7, v8);
    }
  }
}

uint64_t static Session.StatusUpdateEvent.SnippetStreamUpdate.== infix(_:_:)(uint64_t a1)
{
  sub_22BE28FB4(a1);
  v3 = v3 && v1 == v2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {
    sub_22BE19454();

    JUMPOUT(0x2318A6720);
  }

  return 0;
}

uint64_t sub_22C119530()
{
  v1 = sub_22BE17BC4();
  v2(v1);
  sub_22BE18000();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C119584(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x800000022C2DB4D0 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x800000022C2DB4F0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x800000022C2DB510 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

unint64_t sub_22C1196A0(unsigned __int8 a1)
{
  result = 0xD000000000000017;
  if (a1 >= 2u)
  {
    return 0xD000000000000013;
  }

  return result;
}

uint64_t sub_22C1196FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C119584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C119724(uint64_t a1)
{
  v2 = sub_22C11BE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C119760(uint64_t a1)
{
  v2 = sub_22C11BE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C11979C(uint64_t a1)
{
  v2 = sub_22C11BFC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1197D8(uint64_t a1)
{
  v2 = sub_22C11BFC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C119814(uint64_t a1)
{
  v2 = sub_22C11BF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C119850(uint64_t a1)
{
  v2 = sub_22C11BF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C11988C(uint64_t a1)
{
  v2 = sub_22C11BEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1198C8(uint64_t a1)
{
  v2 = sub_22C11BEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.Payload.encode(to:)()
{
  sub_22BE3F494();
  v35 = v0;
  v2 = v1;
  sub_22BE5CE4C(&qword_27D9121D8, &qword_22C2B6118);
  sub_22BE179D8();
  v34 = v3;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D9121E0, &qword_22C2B6120);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A174();
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v9 = v8 - v7;
  sub_22BE5CE4C(&qword_27D9121E8, &qword_22C2B6128);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  type metadata accessor for Session.StatusUpdateEvent.Payload(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v14 = v13 - v12;
  sub_22BE5CE4C(&qword_27D9121F0, &qword_22C2B6130);
  sub_22BE179D8();
  v36 = v15;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1BC40();
  sub_22BE26950(v2, v2[3]);
  sub_22C11BE74();
  sub_22C274234();
  sub_22BE18F2C();
  sub_22C117370(v35, v14);
  sub_22BE1A6BC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C11BD74(v14, v9);
      sub_22C11BF70();
      sub_22C273EE4();
      sub_22BE2F248();
      sub_22C11BD2C(v18, v19, &protocol conformance descriptor for Session.StatusUpdateEvent.IntermediateQueryResult);
      sub_22C273FA4();
      v20 = sub_22BE18240();
      v21(v20);
      sub_22C11FDB0();
      sub_22C119530();
      v22 = sub_22BE336B4();
      v23(v22, v36);
    }

    else
    {
      sub_22C11BEC8();
      sub_22C273EE4();
      sub_22C11BF1C();
      sub_22C273FA4();
      v28 = sub_22C11FDE0();
      v29(v28, v34);
      v30 = sub_22BE336B4();
      v31(v30, v36);

      v32 = sub_22BE1B18C();
      sub_22BE29DD4(v32, v33);
    }
  }

  else
  {
    sub_22C11BFC4();
    sub_22C273EE4();
    sub_22C11C018();
    sub_22C273FA4();
    v24 = sub_22BE18240();
    v25(v24);
    v26 = sub_22BE336B4();
    v27(v26, v36);
  }

  sub_22BE3CAD8();
}

void Session.StatusUpdateEvent.Payload.init(from:)()
{
  sub_22BE19130();
  v5 = v4;
  v87 = v6;
  v81 = sub_22BE5CE4C(&qword_27D912230, &qword_22C2B6138);
  sub_22BE179D8();
  v88 = v7;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v86 = v9;
  sub_22BE5CE4C(&qword_27D912238, &qword_22C2B6140);
  sub_22BE179D8();
  v82 = v11;
  v83 = v10;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v85 = v13;
  v91 = sub_22BE5CE4C(&qword_27D912240, &qword_22C2B6148);
  sub_22BE179D8();
  v80 = v14;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v84 = v16;
  sub_22BE5CE4C(&qword_27D912248, &unk_22C2B6150);
  sub_22BE179D8();
  v89 = v18;
  v90 = v17;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BE1AED0();
  updated = type metadata accessor for Session.StatusUpdateEvent.Payload(v20);
  sub_22BE18000();
  MEMORY[0x28223BE20](v22);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v23);
  sub_22BE20324();
  MEMORY[0x28223BE20](v24);
  v26 = &v75 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v75 - v28;
  v30 = v5[3];
  v92 = v5;
  sub_22BE26950(v5, v30);
  sub_22C11BE74();
  sub_22C274214();
  if (v0)
  {
    goto LABEL_11;
  }

  v76 = v26;
  v77 = v2;
  v78 = v1;
  v32 = v90;
  v31 = v91;
  v79 = v29;
  v95 = updated;
  sub_22C273ED4();
  sub_22BE7C5C4();
  if (v34 != v33 >> 1)
  {
    sub_22BE32C78();
    if (v37 == v38)
    {
      __break(1u);
      return;
    }

    v39 = v3;
    v40 = *(v36 + v35);
    sub_22BE7C5C0();
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    v45 = v42 == v44 >> 1;
    v46 = v88;
    if (!v45)
    {
      v3 = v39;
      goto LABEL_10;
    }

    v47 = v39;
    if (v40)
    {
      if (v40 != 1)
      {
        LOBYTE(v93) = 2;
        sub_22C11BEC8();
        v57 = v86;
        sub_22BE22EB4(&_s17StatusUpdateEventV7PayloadO29SnippetStreamUpdateCodingKeysON, &v93);
        v58 = v87;
        sub_22C11E008();
        v59 = v81;
        sub_22BE3788C();
        sub_22C273EB4();
        swift_unknownObjectRelease();
        (*(v46 + 8))(v57, v59);
        sub_22BE1C1F4();
        v70(v47, v32);
        v71 = *v94;
        v72 = v77;
        *v77 = v93;
        *(v72 + 8) = v71;
        *(v72 + 16) = *&v94[8];
        swift_storeEnumTagMultiPayload();
        sub_22BE18B10();
        v73 = v79;
        sub_22C11BD74(v72, v79);
        v74 = v92;
LABEL_16:
        sub_22BE18B10();
        sub_22C11BD74(v73, v58);
        v56 = v74;
        goto LABEL_12;
      }

      LOBYTE(v93) = 1;
      sub_22C11BF70();
      sub_22BE22EB4(&_s17StatusUpdateEventV7PayloadO33IntermediateQueryResultCodingKeysON, &v93);
      type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
      sub_22BE2F248();
      sub_22C11BD2C(v48, v49, &protocol conformance descriptor for Session.StatusUpdateEvent.IntermediateQueryResult);
      v50 = v78;
      sub_22C273EB4();
      swift_unknownObjectRelease();
      v60 = sub_22BE27C20();
      v61(v60);
      sub_22BE1C1F4();
      v62 = sub_22BE1B18C();
      v63(v62);
      swift_storeEnumTagMultiPayload();
      sub_22BE18B10();
      v64 = v50;
    }

    else
    {
      LOBYTE(v93) = 0;
      sub_22C11BFC4();
      sub_22BE22EB4(&_s17StatusUpdateEventV7PayloadO33ExecutionProgressUpdateCodingKeysON, &v93);
      sub_22C11E05C();
      sub_22C273EB4();
      swift_unknownObjectRelease();
      v65 = sub_22C11FDE0();
      v66(v65, v31);
      v67 = sub_22BE1B18C();
      v68(v67);
      v69 = v76;
      *v76 = v93;
      *(v69 + 2) = *v94;
      *(v69 + 6) = *&v94[16];
      swift_storeEnumTagMultiPayload();
      sub_22BE18B10();
      v64 = v69;
    }

    v73 = v79;
    sub_22C11BD74(v64, v79);
    v74 = v92;
    v58 = v87;
    goto LABEL_16;
  }

LABEL_10:
  v51 = sub_22C273B34();
  swift_allocError();
  v53 = v52;
  sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
  *v53 = v95;
  v54 = sub_22C273DF4();
  sub_22BE1B198(v54);
  (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_22BE1C1F4();
  v55(v3, v32);
LABEL_11:
  v56 = v92;
LABEL_12:
  sub_22BE26B64(v56);
  sub_22BE18478();
}

uint64_t Session.StatusUpdateEvent.ToolExecutionProgressUpdate.init(progress:progressDescription:additionalProgressDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  *a5 = a6;
  *(a5 + 8) = result;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_22C11A624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000022C2DB530 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001DLL && 0x800000022C2DB550 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C11A740(char a1)
{
  if (!a1)
  {
    return 0x73736572676F7270;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_22C11A7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11A624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11A7CC(uint64_t a1)
{
  v2 = sub_22C11E0B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11A808(uint64_t a1)
{
  v2 = sub_22C11E0B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.ToolExecutionProgressUpdate.encode(to:)()
{
  sub_22BE3F494();
  v2 = v1;
  sub_22BE5CE4C(&qword_27D912268, &qword_22C2B6160);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE19E64();
  sub_22BE26950(v2, v2[3]);
  sub_22C11E0B0();
  sub_22BE23550();
  sub_22C274234();
  sub_22BE1C270();
  sub_22C273F84();
  if (!v0)
  {
    sub_22BE1BB58();
    sub_22C273EF4();
    sub_22BE1BB58();
    sub_22C273EF4();
  }

  v4 = sub_22BE1AB74();
  v5(v4);
  sub_22BE35D48();
  sub_22BE3CAD8();
}

void Session.StatusUpdateEvent.ToolExecutionProgressUpdate.init(from:)()
{
  sub_22BE3F494();
  v2 = v1;
  v4 = v3;
  sub_22BE5CE4C(&qword_27D912278, &qword_22C2B6168);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE234F4();
  v6 = sub_22BE1A6BC();
  sub_22BE26950(v6, v7);
  v8 = sub_22C11E0B0();
  sub_22BE33A2C(&_s17StatusUpdateEventV27ToolExecutionProgressUpdateV10CodingKeysON, v9, v8);
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    sub_22BE23070();
    sub_22C273E94();
    v11 = v10;
    sub_22BE23070();
    v12 = sub_22C273E04();
    v14 = v13;
    sub_22BE23070();
    v15 = sub_22C273E04();
    v17 = v16;
    v20 = v15;
    v18 = sub_22BE33560();
    v19(v18);
    *v4 = v11;
    *(v4 + 8) = v12;
    *(v4 + 16) = v14;
    *(v4 + 24) = v20;
    *(v4 + 32) = v17;

    sub_22BE26B64(v2);
  }

  sub_22BE3CAD8();
}

void Session.StatusUpdateEvent.IntermediateQueryResult.query.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.source.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(v0);
  sub_22BE1A7C8();
  v2 = sub_22BE25438(v1);
  return sub_22C117370(v2, v3);
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.source.setter()
{
  v0 = sub_22BE17BC4();
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(v0);
  return sub_22BE3EAE0(*(updated + 20));
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.source.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(v0);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.results.getter()
{
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
}

void Session.StatusUpdateEvent.IntermediateQueryResult.results.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(v2) + 24);

  *(v1 + v3) = v0;
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.results.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(v0);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.init(query:source:results:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
  sub_22BE252A0();
  result = sub_22C11BD74(a3, a5 + v9);
  *(a5 + *(updated + 24)) = a4;
  return result;
}

void Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.ActionContext.parameterId.setter()
{
  sub_22BE1A8A8();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t static Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.ActionContext.== infix(_:_:)(uint64_t a1)
{
  sub_22BE28FB4(a1);
  v7 = v7 && v5 == v6;
  if (v7 || (v8 = sub_22C274014(), result = 0, (v8 & 1) != 0))
  {
    if (v1 == v3 && v2 == v4)
    {
      return 1;
    }

    else
    {
      sub_22BE19454();

      return sub_22C274014();
    }
  }

  return result;
}

uint64_t sub_22C11AF98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C11B060(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

uint64_t sub_22C11B0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11AF98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11B0CC(uint64_t a1)
{
  v2 = sub_22C11E124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11B108(uint64_t a1)
{
  v2 = sub_22C11E124();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.ActionContext.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  sub_22BE5CE4C(&qword_27D912280, &qword_22C2B6170);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE19E64();
  sub_22BE26950(v2, v2[3]);
  sub_22C11E124();
  sub_22BE23550();
  sub_22C274234();
  sub_22BE1BB58();
  sub_22C273F54();
  if (!v0)
  {
    sub_22BE33FE4();
    sub_22BE1BB58();
    sub_22C273F54();
  }

  v4 = sub_22BE1AB74();
  v5(v4);
  sub_22BE35D48();
  sub_22BE18478();
}

void Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.ActionContext.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  sub_22BE5CE4C(&qword_27D912290, &qword_22C2B6178);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE234F4();
  v6 = sub_22BE1A6BC();
  sub_22BE26950(v6, v7);
  v8 = sub_22C11E124();
  sub_22BE33A2C(&_s17StatusUpdateEventV23IntermediateQueryResultV6SourceO20AppEntityStringQueryV13ActionContextV10CodingKeysON, v9, v8);
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    sub_22BE23070();
    v10 = sub_22C273E64();
    v12 = v11;
    sub_22BE33FE4();
    sub_22BE23070();
    v13 = sub_22C273E64();
    v15 = v14;
    v18 = v13;
    v16 = sub_22BE18240();
    v17(v16);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v18;
    v4[3] = v15;

    sub_22BE26B64(v2);
  }

  sub_22BE18478();
}

uint64_t sub_22C11B448(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000022C2DB570 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C11B4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11B448(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C11B514(uint64_t a1)
{
  v2 = sub_22C11E178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11B550(uint64_t a1)
{
  v2 = sub_22C11E178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.encode(to:)(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D912298, &qword_22C2B6180);
  sub_22BE179D8();
  v4 = v3;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  v6 = sub_22BE1B73C();
  sub_22BE26950(v6, v7);
  sub_22C11E178();
  sub_22C274234();
  type metadata accessor for ActionParameterContext(0);
  sub_22BE25B6C();
  sub_22C11BD2C(v8, v9, &protocol conformance descriptor for ActionParameterContext);
  sub_22C273FA4();
  return (*(v4 + 8))(v1, v2);
}

void Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v21 = v3;
  type metadata accessor for ActionParameterContext(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v22 = v6 - v5;
  v7 = sub_22BE5CE4C(&qword_27D9122B0, &qword_22C2B6188);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BE1AED0();
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(v9);
  v11 = sub_22BE19448(updated);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v14 = v13 - v12;
  v15 = sub_22BE260B8();
  sub_22BE26950(v15, v16);
  sub_22C11E178();
  sub_22C274214();
  if (!v0)
  {
    sub_22BE25B6C();
    sub_22C11BD2C(v17, v18, &protocol conformance descriptor for ActionParameterContext);
    sub_22C273EB4();
    v19 = sub_22C11FDE0();
    v20(v19, v7);
    sub_22BE25574();
    sub_22C11BD74(v22, v14);
    sub_22BE3B108();
    sub_22C11BD74(v14, v21);
  }

  sub_22BE26B64(v2);
  sub_22BE18478();
}

uint64_t sub_22C11B904(uint64_t a1)
{
  v2 = sub_22C11E1EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11B940(uint64_t a1)
{
  v2 = sub_22C11E1EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.Source.OmniSearchQuery.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D9122C0, &qword_22C2B6190);
  sub_22BE179D8();
  v5 = v4;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1BC40();
  sub_22BE26950(a1, a1[3]);
  sub_22C11E1EC();
  sub_22C274234();
  return (*(v5 + 8))(v1, v3);
}

uint64_t static Session.StatusUpdateEvent.IntermediateQueryResult.Source.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(0);
  v6 = sub_22BE19448(updated);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v9 = v8 - v7;
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v13 = v12 - v11;
  v14 = sub_22BE5CE4C(&qword_27D9122D0, &qword_22C2B6198);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1B72C();
  v17 = *(v16 + 56);
  sub_22C117370(a1, v2);
  sub_22C117370(a2, v2 + v17);
  sub_22BE260B8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22BE18708();
      sub_22C119530();
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    sub_22BE33928(v2, &qword_27D9122D0, &qword_22C2B6198);
    v19 = 0;
    return v19 & 1;
  }

  sub_22BE1A7C8();
  sub_22C117370(v2, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22BE19350();
    sub_22C119530();
    goto LABEL_7;
  }

  sub_22BE3B108();
  sub_22C11BD74(v2 + v17, v9);
  sub_22BE1804C();
  static ActionParameterContext.== infix(_:_:)();
  v19 = v18;
  sub_22C119530();
  sub_22C119530();
  sub_22BE18708();
  sub_22C119530();
  return v19 & 1;
}

unint64_t sub_22C11BCD8()
{
  result = qword_27D9121A0;
  if (!qword_27D9121A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9121A0);
  }

  return result;
}

uint64_t sub_22C11BD2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C11BD74(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v4(v3);
  sub_22BE18000();
  v5 = sub_22BE19454();
  v6(v5);
  return a2;
}

unint64_t sub_22C11BDCC()
{
  result = qword_27D9121C0;
  if (!qword_27D9121C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9121C0);
  }

  return result;
}

unint64_t sub_22C11BE20()
{
  result = qword_27D9121C8;
  if (!qword_27D9121C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9121C8);
  }

  return result;
}

unint64_t sub_22C11BE74()
{
  result = qword_27D9121F8;
  if (!qword_27D9121F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9121F8);
  }

  return result;
}

unint64_t sub_22C11BEC8()
{
  result = qword_27D912200;
  if (!qword_27D912200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912200);
  }

  return result;
}

unint64_t sub_22C11BF1C()
{
  result = qword_27D912208;
  if (!qword_27D912208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912208);
  }

  return result;
}

unint64_t sub_22C11BF70()
{
  result = qword_27D912210;
  if (!qword_27D912210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912210);
  }

  return result;
}

unint64_t sub_22C11BFC4()
{
  result = qword_27D912220;
  if (!qword_27D912220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912220);
  }

  return result;
}

unint64_t sub_22C11C018()
{
  result = qword_27D912228;
  if (!qword_27D912228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912228);
  }

  return result;
}

uint64_t sub_22C11C06C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616553696E6D6FLL && a2 == 0xEA00000000006863;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022C2DB590 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C11C144(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x72616553696E6D6FLL;
  }
}

uint64_t sub_22C11C184(uint64_t a1)
{
  v2 = sub_22C11E294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11C1C0(uint64_t a1)
{
  v2 = sub_22C11E294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C11C204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11C06C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11C22C(uint64_t a1)
{
  v2 = sub_22C11E240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11C268(uint64_t a1)
{
  v2 = sub_22C11E240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C11C2A4(uint64_t a1)
{
  v2 = sub_22C11E2E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11C2E0(uint64_t a1)
{
  v2 = sub_22C11E2E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.IntermediateQueryResult.Source.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v58 = v23;
  v59 = v24;
  v26 = v25;
  sub_22BE5CE4C(&qword_27D9122D8, &qword_22C2B61A0);
  sub_22BE179D8();
  v56 = v28;
  v57 = v27;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A174();
  v55 = v30;
  v53[3] = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v31);
  sub_22BE179EC();
  v54 = v33 - v32;
  sub_22BE5CE4C(&qword_27D9122E0, &qword_22C2B61A8);
  sub_22BE179D8();
  v53[1] = v35;
  v53[2] = v34;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1B72C();
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v37);
  sub_22BE179EC();
  v40 = v39 - v38;
  v41 = sub_22BE5CE4C(&qword_27D9122E8, &qword_22C2B61B0);
  sub_22BE179D8();
  v43 = v42;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  v46 = v53 - v45;
  sub_22BE26950(v26, v26[3]);
  sub_22C11E240();
  sub_22C274234();
  sub_22BE1A7C8();
  sub_22C117370(v58, v40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C11BD74(v40, v54);
    sub_22BE486C4();
    sub_22C11E294();
    sub_22C273EE4();
    sub_22BE37434();
    sub_22C11BD2C(v47, v48, &protocol conformance descriptor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery);
    sub_22C273FA4();
    v49 = sub_22BE1AB74();
    v50(v49);
    sub_22BE19350();
    sub_22C119530();
  }

  else
  {
    sub_22C11E2E8();
    sub_22C273EE4();
    sub_22C11E33C();
    sub_22C273FA4();
    v51 = sub_22BE260B8();
    v52(v51);
  }

  (*(v43 + 8))(v46, v41);
  sub_22BE18478();
}

void Session.StatusUpdateEvent.IntermediateQueryResult.Source.init(from:)()
{
  sub_22BE19130();
  v76 = v0;
  v3 = v2;
  v71 = v4;
  v69 = sub_22BE5CE4C(&qword_27D912318, &qword_22C2B61B8);
  sub_22BE179D8();
  v72 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v70 = v7;
  sub_22BE5CE4C(&qword_27D912320, &qword_22C2B61C0);
  sub_22BE179D8();
  v67 = v9;
  v68 = v8;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v74 = v11;
  v75 = sub_22BE5CE4C(&qword_27D912328, &qword_22C2B61C8);
  sub_22BE179D8();
  v73 = v12;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1B01C();
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  sub_22BE26950(v3, v3[3]);
  sub_22C11E240();
  v25 = v76;
  sub_22C274214();
  if (!v25)
  {
    v63 = v21;
    v64 = v18;
    v27 = v74;
    v26 = v75;
    v65 = v24;
    v66 = updated;
    v76 = v3;
    sub_22C273ED4();
    sub_22BE7C5C4();
    if (v29 != v28 >> 1)
    {
      sub_22BE32C78();
      if (v32 == v33)
      {
        __break(1u);
        return;
      }

      v77 = *(v31 + v30);
      v34 = sub_22BE7C5C0();
      v36 = v35;
      v38 = v37;
      swift_unknownObjectRelease();
      if (v36 == v38 >> 1)
      {
        if (v77)
        {
          sub_22BE486C4();
          sub_22C11E294();
          sub_22BE3788C();
          sub_22C273DE4();
          v39 = v65;
          v40 = v26;
          v74 = v34;
          type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(0);
          sub_22BE37434();
          sub_22C11BD2C(v41, v42, &protocol conformance descriptor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery);
          v43 = v64;
          sub_22C273EB4();
          swift_unknownObjectRelease();
          v57 = sub_22BE33560();
          v58(v57);
          v59 = sub_22BE20270();
          v60(v59, v40);
          swift_storeEnumTagMultiPayload();
          v61 = v71;
        }

        else
        {
          sub_22C11E2E8();
          v53 = v27;
          sub_22BE3788C();
          sub_22C273DE4();
          v61 = v71;
          v39 = v65;
          v54 = v26;
          sub_22C11E390();
          v55 = v68;
          sub_22BE3788C();
          sub_22C273EB4();
          v56 = v73;
          swift_unknownObjectRelease();
          sub_22BE1C1F4();
          v62(v53, v55);
          (*(v56 + 8))(v1, v54);
          v43 = v63;
          swift_storeEnumTagMultiPayload();
        }

        sub_22C11BD74(v43, v39);
        sub_22C11BD74(v39, v61);
        v52 = v76;
        goto LABEL_10;
      }
    }

    v44 = v26;
    v45 = v66;
    v46 = sub_22C273B34();
    swift_allocError();
    v48 = v47;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v48 = v45;
    v49 = sub_22C273DF4();
    sub_22BE1B198(v49);
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = sub_22BE20270();
    v51(v50, v44);
    v3 = v76;
  }

  v52 = v3;
LABEL_10:
  sub_22BE26B64(v52);
  sub_22BE18478();
}

uint64_t sub_22C11CCC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C11CDCC(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 0x73746C75736572;
}

uint64_t sub_22C11CE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11CCC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11CE80(uint64_t a1)
{
  v2 = sub_22C11E3E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11CEBC(uint64_t a1)
{
  v2 = sub_22C11E3E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.encode(to:)(uint64_t a1)
{
  sub_22BE5CE4C(&qword_27D912340, &unk_22C2B61D0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE19E64();
  v3 = sub_22BE1B73C();
  sub_22BE26950(v3, v4);
  sub_22C11E3E4();
  sub_22BE23550();
  sub_22C274234();
  sub_22BE1BB58();
  sub_22C273F54();
  if (!v1)
  {
    type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
    sub_22BE33FE4();
    type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
    sub_22BE355CC();
    sub_22C11BD2C(v5, v6, &protocol conformance descriptor for Session.StatusUpdateEvent.IntermediateQueryResult.Source);
    sub_22BE1C270();
    sub_22C273FA4();
    sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22C11E438(&qword_27D912358, &qword_27D907D90, MEMORY[0x277D72A80], MEMORY[0x277D83948]);
    sub_22BE1C270();
    sub_22C273FA4();
  }

  v7 = sub_22BE1AB74();
  return v8(v7);
}

void Session.StatusUpdateEvent.IntermediateQueryResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  v55 = v24;
  v26 = v25;
  v51 = v27;
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v28);
  sub_22BE179EC();
  v31 = v30 - v29;
  sub_22BE5CE4C(&qword_27D912360, &qword_22C2B61E0);
  sub_22BE179D8();
  v52 = v33;
  v53 = v32;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  v36 = v50 - v35;
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v38);
  sub_22BE179EC();
  v41 = (v40 - v39);
  sub_22BE26950(v26, v26[3]);
  sub_22C11E3E4();
  v54 = v36;
  v42 = v55;
  sub_22C274214();
  if (v42)
  {
    sub_22BE26B64(v26);
  }

  else
  {
    *v41 = sub_22C273E64();
    v41[1] = v43;
    v55 = v41;
    v50[1] = v43;
    sub_22BE33FE4();
    sub_22BE355CC();
    sub_22C11BD2C(v44, v45, &protocol conformance descriptor for Session.StatusUpdateEvent.IntermediateQueryResult.Source);
    sub_22C273EB4();
    sub_22BE252A0();
    sub_22C11BD74(v31, v55 + v46);
    sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22C11E438(&qword_27D912370, &qword_27D907DA8, MEMORY[0x277D72A98], MEMORY[0x277D83978]);
    sub_22C273EB4();
    v47 = sub_22BE2C72C();
    v48(v47);
    v49 = v55;
    *(v55 + *(updated + 24)) = v56;
    sub_22BE35C1C();
    sub_22C117370(v49, v51);
    sub_22BE26B64(v26);
    sub_22C11FDB0();
    sub_22C119530();
  }

  sub_22BE18478();
}

void Session.StatusUpdateEvent.SnippetStreamUpdate.toolId.setter()
{
  sub_22BE1A8A8();

  *v1 = v2;
  v1[1] = v0;
}

uint64_t Session.StatusUpdateEvent.SnippetStreamUpdate.data.getter()
{
  v0 = sub_22BE19454();
  sub_22BE29D7C(v0, v1);
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.SnippetStreamUpdate.data.setter()
{
  sub_22BE1A8A8();
  result = sub_22BE29DD4(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_22C11D568(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C11D62C(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

uint64_t sub_22C11D660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11D568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11D688(uint64_t a1)
{
  v2 = sub_22C11E4D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11D6C4(uint64_t a1)
{
  v2 = sub_22C11E4D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.SnippetStreamUpdate.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  sub_22BE5CE4C(&qword_27D912378, &qword_22C2B61E8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE19E64();
  v9 = *(v0 + 24);
  v10 = *(v0 + 16);
  sub_22BE26950(v3, v3[3]);
  sub_22C11E4D4();
  sub_22BE23550();
  sub_22C274234();
  sub_22C273F54();
  if (!v1)
  {
    sub_22BE486C4();
    sub_22BE29D7C(v5, v6);
    sub_22BE3BE7C();
    sub_22BE1C270();
    sub_22C273FA4();
    sub_22BE29DD4(v10, v9);
  }

  v7 = sub_22BE1AB74();
  v8(v7);
  sub_22BE35D48();
  sub_22BE18478();
}

void Session.StatusUpdateEvent.SnippetStreamUpdate.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  sub_22BE5CE4C(&qword_27D912388, &qword_22C2B61F0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE234F4();
  v6 = sub_22BE1A6BC();
  sub_22BE26950(v6, v7);
  v8 = sub_22C11E4D4();
  sub_22BE33A2C(&_s17StatusUpdateEventV19SnippetStreamUpdateV10CodingKeysON, v9, v8);
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    LOBYTE(v15) = 0;
    sub_22BE23070();
    v10 = sub_22C273E64();
    v12 = v11;
    sub_22BE486C4();
    sub_22C11E528();
    sub_22BE23070();
    sub_22C273EB4();
    v13 = sub_22BE17B54();
    v14(v13);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v15;
    v4[3] = v16;

    sub_22BE29D7C(v15, v16);
    sub_22BE26B64(v2);

    sub_22BE29DD4(v15, v16);
  }

  sub_22BE18478();
}

uint64_t SessionStatusUpdate.Payload.init(ifps:)(uint64_t a1)
{
  v4 = sub_22BE1A5E4();
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(v4);
  v6 = sub_22BE19448(updated);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = sub_22C26FD54();
  v11 = sub_22BE19448(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  type metadata accessor for Session.StatusUpdateEvent.Payload(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v19 = v18 - v17;
  sub_22BE18F2C();
  sub_22C117370(a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BE22D00();
      sub_22C11BD74(v19, v15);
      sub_22BE35C1C();
      v21 = sub_22BE1AB1C();
      sub_22C117370(v21, v22);
      sub_22BE1A7C8();
      sub_22C117370(v2 + v23, v9);

      sub_22C11DD44(v9);

      sub_22C26FD04();
      sub_22BE17E2C();
      sub_22C119530();
      sub_22C119530();
      sub_22C119530();
      v24 = MEMORY[0x277D1CE40];
    }

    else
    {

      v25 = sub_22BE29454();
      sub_22BE29D7C(v25, v26);
      v27 = sub_22C11FE0C();
      MEMORY[0x2318A83E0](v27);

      v28 = sub_22BE29454();
      sub_22BE29DD4(v28, v29);
      sub_22BE17E2C();
      sub_22C119530();
      v24 = MEMORY[0x277D1CE30];
    }
  }

  else
  {

    sub_22C11FE0C();
    sub_22C26FCF4();

    sub_22BE17E2C();
    sub_22C119530();
    v24 = MEMORY[0x277D1CE38];
  }

  v30 = *v24;
  sub_22C26FD64();
  sub_22BE18000();
  return (*(v31 + 104))(v1, v30);
}

uint64_t sub_22C11DD44(uint64_t a1)
{
  v5 = sub_22BE1A5E4();
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(v5);
  v7 = sub_22BE19448(updated);
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  sub_22BE1BC40();
  sub_22BE1A7C8();
  sub_22C117370(a1, v3);
  sub_22BE29454();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE3B108();
    sub_22C11BD74(v3, v10);
    sub_22C117370(v10, v2);
    sub_22C11DED4(v2);
    sub_22BE18708();
    sub_22C119530();
    sub_22BE19350();
    sub_22C119530();
    v12 = MEMORY[0x277D1CE20];
  }

  else
  {
    sub_22C26FD14();
    sub_22BE18708();
    sub_22C119530();
    v12 = MEMORY[0x277D1CE28];
  }

  v13 = *v12;
  sub_22C26FD54();
  sub_22BE18000();
  return (*(v14 + 104))(v1, v13);
}

uint64_t sub_22C11DED4(uint64_t a1)
{
  v2 = type metadata accessor for ActionParameterContext(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v6 = v5 - v4;
  v7 = sub_22C26FD34();
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  sub_22BE1BC40();
  sub_22BE195D8();
  sub_22C117370(a1, v6);
  v9 = *(v3 + 28);
  v10 = (v6 + *(v3 + 32));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v6 + v9);
  v14 = *(v6 + v9 + 8);

  MEMORY[0x2318A8420](v11, v12, v13, v14);
  sub_22C119530();
  sub_22C26FD44();
  sub_22BE19350();
  return sub_22C119530();
}

unint64_t sub_22C11E008()
{
  result = qword_27D912250;
  if (!qword_27D912250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912250);
  }

  return result;
}

unint64_t sub_22C11E05C()
{
  result = qword_27D912260;
  if (!qword_27D912260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912260);
  }

  return result;
}

unint64_t sub_22C11E0B0()
{
  result = qword_27D912270;
  if (!qword_27D912270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912270);
  }

  return result;
}

unint64_t sub_22C11E124()
{
  result = qword_27D912288;
  if (!qword_27D912288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912288);
  }

  return result;
}

unint64_t sub_22C11E178()
{
  result = qword_27D9122A0;
  if (!qword_27D9122A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9122A0);
  }

  return result;
}

unint64_t sub_22C11E1EC()
{
  result = qword_27D9122C8;
  if (!qword_27D9122C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9122C8);
  }

  return result;
}

unint64_t sub_22C11E240()
{
  result = qword_27D9122F0;
  if (!qword_27D9122F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9122F0);
  }

  return result;
}

unint64_t sub_22C11E294()
{
  result = qword_27D9122F8;
  if (!qword_27D9122F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9122F8);
  }

  return result;
}

unint64_t sub_22C11E2E8()
{
  result = qword_27D912308;
  if (!qword_27D912308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912308);
  }

  return result;
}

unint64_t sub_22C11E33C()
{
  result = qword_27D912310;
  if (!qword_27D912310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912310);
  }

  return result;
}

unint64_t sub_22C11E390()
{
  result = qword_27D912338;
  if (!qword_27D912338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912338);
  }

  return result;
}

unint64_t sub_22C11E3E4()
{
  result = qword_27D912348;
  if (!qword_27D912348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912348);
  }

  return result;
}

uint64_t sub_22C11E438(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22C11BD2C(a2, MEMORY[0x277D72A78], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C11E4D4()
{
  result = qword_27D912380;
  if (!qword_27D912380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912380);
  }

  return result;
}

unint64_t sub_22C11E528()
{
  result = qword_27D912390;
  if (!qword_27D912390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912390);
  }

  return result;
}

void sub_22C11E5EC(uint64_t a1)
{
  sub_22C26E1D4();
  if (v1 <= 0x3F)
  {
    sub_22C11E96C(319, &qword_28107F318, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22BEE1D24(319, &qword_28106DDD8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Timepoint(319);
        if (v4 <= 0x3F)
        {
          sub_22BEE1D24(319, &qword_28107C8B0, &type metadata for ParticipantID);
          if (v5 <= 0x3F)
          {
            sub_22BEE1D24(319, &qword_28106F230, &type metadata for SpanID);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Session.StatusUpdateEvent.Payload(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C11E74C(uint64_t a1)
{
  result = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C11E7C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_22C11E814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_22C11E8A8(uint64_t a1)
{
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(319);
  if (v1 <= 0x3F)
  {
    sub_22C11E96C(319, &qword_28106DC20, MEMORY[0x277D72A78], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C11E96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22C11E9D0(uint64_t a1)
{
  result = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C11EA64(uint64_t a1)
{
  result = type metadata accessor for ActionParameterContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C11EAF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

_BYTE *sub_22C11EB8C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C11EC74(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C11ED6C(_BYTE *result, int a2, int a3)
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

uint64_t _s17StatusUpdateEventV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s17StatusUpdateEventV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C11EF80()
{
  result = qword_27D912398;
  if (!qword_27D912398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912398);
  }

  return result;
}

unint64_t sub_22C11EFD8()
{
  result = qword_27D9123A0;
  if (!qword_27D9123A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123A0);
  }

  return result;
}

unint64_t sub_22C11F030()
{
  result = qword_27D9123A8;
  if (!qword_27D9123A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123A8);
  }

  return result;
}

unint64_t sub_22C11F088()
{
  result = qword_27D9123B0;
  if (!qword_27D9123B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123B0);
  }

  return result;
}

unint64_t sub_22C11F0E0()
{
  result = qword_27D9123B8;
  if (!qword_27D9123B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123B8);
  }

  return result;
}

unint64_t sub_22C11F138()
{
  result = qword_27D9123C0;
  if (!qword_27D9123C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123C0);
  }

  return result;
}

unint64_t sub_22C11F190()
{
  result = qword_27D9123C8;
  if (!qword_27D9123C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123C8);
  }

  return result;
}

unint64_t sub_22C11F1E8()
{
  result = qword_27D9123D0;
  if (!qword_27D9123D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123D0);
  }

  return result;
}

unint64_t sub_22C11F240()
{
  result = qword_27D9123D8;
  if (!qword_27D9123D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123D8);
  }

  return result;
}

unint64_t sub_22C11F298()
{
  result = qword_27D9123E0;
  if (!qword_27D9123E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123E0);
  }

  return result;
}

unint64_t sub_22C11F2F0()
{
  result = qword_27D9123E8;
  if (!qword_27D9123E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123E8);
  }

  return result;
}

unint64_t sub_22C11F348()
{
  result = qword_27D9123F0;
  if (!qword_27D9123F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123F0);
  }

  return result;
}

unint64_t sub_22C11F3A0()
{
  result = qword_27D9123F8;
  if (!qword_27D9123F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123F8);
  }

  return result;
}

unint64_t sub_22C11F3F8()
{
  result = qword_27D912400;
  if (!qword_27D912400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912400);
  }

  return result;
}

unint64_t sub_22C11F450()
{
  result = qword_27D912408;
  if (!qword_27D912408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912408);
  }

  return result;
}

unint64_t sub_22C11F4A8()
{
  result = qword_27D912410;
  if (!qword_27D912410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912410);
  }

  return result;
}

unint64_t sub_22C11F500()
{
  result = qword_27D912418;
  if (!qword_27D912418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912418);
  }

  return result;
}

unint64_t sub_22C11F558()
{
  result = qword_27D912420;
  if (!qword_27D912420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912420);
  }

  return result;
}

unint64_t sub_22C11F5B0()
{
  result = qword_27D912428;
  if (!qword_27D912428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912428);
  }

  return result;
}

unint64_t sub_22C11F608()
{
  result = qword_27D912430;
  if (!qword_27D912430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912430);
  }

  return result;
}

unint64_t sub_22C11F660()
{
  result = qword_27D912438;
  if (!qword_27D912438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912438);
  }

  return result;
}

unint64_t sub_22C11F6B8()
{
  result = qword_27D912440;
  if (!qword_27D912440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912440);
  }

  return result;
}

unint64_t sub_22C11F710()
{
  result = qword_27D912448;
  if (!qword_27D912448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912448);
  }

  return result;
}

unint64_t sub_22C11F768()
{
  result = qword_27D912450;
  if (!qword_27D912450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912450);
  }

  return result;
}

unint64_t sub_22C11F7C0()
{
  result = qword_27D912458;
  if (!qword_27D912458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912458);
  }

  return result;
}

unint64_t sub_22C11F818()
{
  result = qword_27D912460;
  if (!qword_27D912460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912460);
  }

  return result;
}

unint64_t sub_22C11F870()
{
  result = qword_27D912468;
  if (!qword_27D912468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912468);
  }

  return result;
}

unint64_t sub_22C11F8C8()
{
  result = qword_27D912470;
  if (!qword_27D912470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912470);
  }

  return result;
}

unint64_t sub_22C11F920()
{
  result = qword_27D912478;
  if (!qword_27D912478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912478);
  }

  return result;
}

unint64_t sub_22C11F978()
{
  result = qword_27D912480;
  if (!qword_27D912480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912480);
  }

  return result;
}

unint64_t sub_22C11F9D0()
{
  result = qword_27D912488;
  if (!qword_27D912488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912488);
  }

  return result;
}

unint64_t sub_22C11FA28()
{
  result = qword_27D912490;
  if (!qword_27D912490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912490);
  }

  return result;
}

unint64_t sub_22C11FA80()
{
  result = qword_27D912498;
  if (!qword_27D912498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912498);
  }

  return result;
}

unint64_t sub_22C11FAD8()
{
  result = qword_27D9124A0;
  if (!qword_27D9124A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124A0);
  }

  return result;
}

unint64_t sub_22C11FB30()
{
  result = qword_27D9124A8;
  if (!qword_27D9124A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124A8);
  }

  return result;
}

unint64_t sub_22C11FB88()
{
  result = qword_27D9124B0;
  if (!qword_27D9124B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124B0);
  }

  return result;
}

unint64_t sub_22C11FBE0()
{
  result = qword_27D9124B8;
  if (!qword_27D9124B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124B8);
  }

  return result;
}

unint64_t sub_22C11FC38()
{
  result = qword_27D9124C0;
  if (!qword_27D9124C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124C0);
  }

  return result;
}

unint64_t sub_22C11FC90()
{
  result = qword_27D9124C8;
  if (!qword_27D9124C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124C8);
  }

  return result;
}

unint64_t sub_22C11FCE8()
{
  result = qword_27D9124D0;
  if (!qword_27D9124D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124D0);
  }

  return result;
}

unint64_t sub_22C11FD40()
{
  result = qword_27D9124D8;
  if (!qword_27D9124D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124D8);
  }

  return result;
}

double sub_22C11FE20(char a1)
{
  v2 = 0xEB00000000797265;
  v3 = 0x7551797469746E65;
  switch(a1)
  {
    case 1:
      v2 = 0xEE007972616C7562;
      v3 = 0x61636F5669726973;
      break;
    case 2:
      v2 = 0x800000022C2D29F0;
      v3 = 0xD000000000000014;
      break;
    case 3:
      v2 = 0xEB00000000524345;
      v3 = 0x656D6F646167656DLL;
      break;
    case 4:
      v2 = 0xEF79727473696765;
      v3 = 0x52747865746E6F63;
      break;
    case 5:
      v2 = 0xEB0000000065756CLL;
      v3 = 0x61566E7275746572;
      break;
    case 6:
      v2 = 0xEA00000000007470;
      v3 = 0x6D6F725072657375;
      break;
    case 7:
      v3 = 0x72616573696E6D6FLL;
      v2 = 0xEA00000000006863;
      break;
    default:
      break;
  }

  MEMORY[0x2318AB8D0](v3, v2);

  return result;
}

double sub_22C11FF78(char a1)
{
  sub_22C273AA4();

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2318AB8D0](v2, v3);

  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  MEMORY[0x2318AB8D0](0xD00000000000002ELL, 0x800000022C2DBC60);

  return result;
}

double sub_22C120054(char a1)
{
  v2 = 0xE100000000000000;
  v3 = 61;
  switch(a1)
  {
    case 1:
      v2 = 0xE200000000000000;
      v3 = 15649;
      break;
    case 2:
      v3 = 62;
      break;
    case 3:
      v2 = 0xE200000000000000;
      v3 = 15678;
      break;
    case 4:
      v3 = 60;
      break;
    case 5:
      v2 = 0xE200000000000000;
      v3 = 15676;
      break;
    case 6:
      v2 = 0xE800000000000000;
      v3 = 0x736E6961746E6F63;
      break;
    case 7:
      v3 = 0x666572705F736168;
      goto LABEL_11;
    case 8:
      v3 = 0x666675735F736168;
LABEL_11:
      v2 = 0xEA00000000007869;
      break;
    case 9:
      v2 = 0xEA00000000006E65;
      v3 = 0x65777465625F7369;
      break;
    default:
      break;
  }

  MEMORY[0x2318AB8D0](v3, v2);

  return result;
}

uint64_t sub_22C120154(uint64_t a1)
{
  v3 = type metadata accessor for Candidate(0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C26E684();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v38[1] = v1;
    v53 = MEMORY[0x277D84F90];
    v40 = v7;
    sub_22BE71084();
    v12 = v53;
    result = sub_22C17850C(v40);
    v15 = v6;
    v16 = result;
    v17 = v40;
    v18 = 0;
    v19 = v40 + 64;
    v44 = (v15 + 16);
    v45 = v15;
    v42 = v40 + 64;
    v43 = v15 + 32;
    v39 = v40 + 72;
    v41 = v10;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v16 < 1 << *(v17 + 32))
      {
        v20 = v16 >> 6;
        if ((*(v19 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v17 + 36) != v13)
        {
          goto LABEL_26;
        }

        v49 = v14;
        v52 = v13;
        v50 = v18;
        v21 = v46;
        v22 = v17;
        sub_22BE1A964(*(v17 + 56) + *(v47 + 72) * v16, v46);
        (*v44)(v9, v21 + *(v48 + 28), v5);
        sub_22C171FFC();
        v53 = v12;
        v23 = v5;
        v24 = *(v12 + 16);
        if (v24 >= *(v12 + 24) >> 1)
        {
          sub_22BE71084();
          v12 = v53;
        }

        *(v12 + 16) = v24 + 1;
        v25 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v51 = v12;
        v26 = v12 + v25 + *(v45 + 72) * v24;
        v27 = v9;
        result = (*(v45 + 32))(v26, v9, v23);
        v28 = 1 << *(v22 + 32);
        if (v16 >= v28)
        {
          goto LABEL_27;
        }

        v17 = v22;
        v19 = v42;
        v29 = *(v42 + 8 * v20);
        if ((v29 & (1 << v16)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v17 + 36) != v52)
        {
          goto LABEL_29;
        }

        v5 = v23;
        v30 = v29 & (-2 << (v16 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          v31 = v41;
        }

        else
        {
          v32 = v23;
          v33 = v20 << 6;
          v34 = v20 + 1;
          v35 = (v39 + 8 * v20);
          v31 = v41;
          while (v34 < (v28 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              result = sub_22BE2FC64(v16, v52, v49 & 1);
              v17 = v40;
              v28 = __clz(__rbit64(v36)) + v33;
              goto LABEL_18;
            }
          }

          result = sub_22BE2FC64(v16, v52, v49 & 1);
          v17 = v40;
LABEL_18:
          v5 = v32;
        }

        v18 = v50 + 1;
        if (v50 + 1 == v31)
        {
          return v51;
        }

        v9 = v27;
        v14 = 0;
        v13 = *(v17 + 36);
        v16 = v28;
        v12 = v51;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
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

  return result;
}

uint64_t sub_22C1205B0()
{
  sub_22BE18378();
  sub_22BE25DAC();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22C1205F4()
{
  sub_22BE25DAC();
  v0 = sub_22BEC03B0();
  MEMORY[0x2318AC890](v0);
  return sub_22C2741A4();
}

uint64_t sub_22C120630()
{
  v0 = sub_22BE25DAC();
  sub_22C18FBD4(v0);
  return sub_22C2741A4();
}

uint64_t sub_22C120678(unsigned __int8 a1)
{
  sub_22BE25DAC();
  sub_22C274184();
  return sub_22C2741A4();
}

uint64_t sub_22C1206C4(uint64_t a1)
{
  sub_22BE25DAC();
  sub_22C274174();
  return sub_22C2741A4();
}

uint64_t sub_22C120884()
{
  sub_22BE25DAC();
  sub_22BFB03BC();
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22C120ACC()
{
  sub_22BE393A8();
  v1 = sub_22C274154();
  v2 = v0(v1);
  sub_22C18F120(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return sub_22C2741A4();
}

uint64_t sub_22C120B5C()
{
  sub_22BE393A8();
  v1 = sub_22C274154();
  v2 = v0(v1);
  sub_22C18F120(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return sub_22C2741A4();
}

uint64_t sub_22C120C0C()
{
  sub_22C274154();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22C120C58(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_22BE25DAC();
  a2(v5, a1);
  return sub_22C2741A4();
}

double sub_22C120CA0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_22BE1B30C();
      break;
    default:
      break;
  }

  sub_22C272F44();

  return result;
}

double sub_22C120E2C(uint64_t a1)
{
  sub_22C272F44();

  return result;
}

double sub_22C120E9C(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_22C18FF7C();
  }

  sub_22C272F44();

  return result;
}

double sub_22C120F40()
{
  sub_22BE25A74();
  sub_22C272F44();

  return result;
}

double sub_22C120FCC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_22C272F44();

  return result;
}

double sub_22C121030(uint64_t a1)
{
  sub_22C272F44();

  return result;
}

double sub_22C1210A4(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_22C18FF40();
  }

  sub_22C272F44();

  return result;
}

double sub_22C121170(uint64_t a1)
{
  sub_22C272F44();

  return result;
}

double sub_22C121274(uint64_t a1)
{
  sub_22C272F44();

  return result;
}

double sub_22C12134C(uint64_t a1)
{
  sub_22C272F44();

  return result;
}

uint64_t sub_22C121510(uint64_t a1, unsigned __int8 a2)
{
  sub_22C274154();
  MEMORY[0x2318AC890](a2);
  return sub_22C2741A4();
}

uint64_t sub_22C121554(uint64_t a1)
{
  v2 = sub_22C18FADC(a1);
  if (v1)
  {
    v3 = 1868852853;
  }

  else
  {
    v3 = 0x6D726F66726570;
  }

  sub_22C18FC14(v2, v3);

  return sub_22C2741A4();
}

uint64_t sub_22C1215D4(uint64_t a1)
{
  sub_22C18FADC(a1);
  sub_22C274184();
  return sub_22C2741A4();
}

uint64_t sub_22C121610(uint64_t a1)
{
  sub_22C18FADC(a1);
  sub_22C274174();
  return sub_22C2741A4();
}

uint64_t sub_22C12164C(uint64_t a1, char a2)
{
  sub_22C274154();
  MEMORY[0x2318AC860](a2 & 1);
  return sub_22C2741A4();
}

uint64_t sub_22C121690(uint64_t a1)
{
  v1 = sub_22C274154();
  sub_22C18FBD4(v1);
  return sub_22C2741A4();
}

uint64_t sub_22C1216D0(uint64_t a1)
{
  v2 = sub_22C18FADC(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0x444974706D6F7270;
    }

    else
    {
      v3 = 0x655474706D6F7270;
    }
  }

  else
  {
    sub_22C18FF40();
  }

  sub_22C18FC14(v2, v3);

  return sub_22C2741A4();
}

uint64_t sub_22C12175C(uint64_t a1)
{
  v2 = sub_22C18FADC(a1);
  if (v1)
  {
    v3 = 0x65747441666C6573;
  }

  else
  {
    v3 = 0x676E69727473;
  }

  sub_22C18FC14(v2, v3);

  return sub_22C2741A4();
}

uint64_t sub_22C1217EC(uint64_t a1)
{
  sub_22C18FADC(a1);
  sub_22BE25A74();
  if (v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x4149445F4C4C5546;
  }

  sub_22C18FC14(v2, v3);

  return sub_22C2741A4();
}

uint64_t sub_22C12189C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_22C274154();
  a3(v4);
  sub_22C272F44();

  return sub_22C2741A4();
}

uint64_t sub_22C121908(uint64_t a1, char a2)
{
  v3 = sub_22C274154();
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x6D6178655F67656ELL;
    }

    else
    {
      v4 = 0x7470697263736564;
    }
  }

  else
  {
    sub_22C18FF7C();
  }

  sub_22C18FC14(v3, v4);

  return sub_22C2741A4();
}

uint64_t sub_22C121B40(uint64_t a1)
{
  v2 = sub_22C18FADC(a1);
  if (v1)
  {
    v3 = 0x7469725764616572;
  }

  else
  {
    v3 = 0x796C6E4F64616572;
  }

  sub_22C18FC14(v2, v3);

  return sub_22C2741A4();
}

uint64_t sub_22C121C34()
{
  sub_22C18FF14();
  v1 = sub_22C274154();
  v2 = v0(v1);
  sub_22C18F120(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return sub_22C2741A4();
}

uint64_t sub_22C121C7C(uint64_t a1)
{
  sub_22C274154();
  sub_22BFB03BC();
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22C121CE8()
{
  sub_22C18FF14();
  v1 = sub_22C274154();
  v2 = v0(v1);
  sub_22C18F120(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return sub_22C2741A4();
}

uint64_t sub_22C121D34(uint64_t a1)
{
  sub_22C274154();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22C121D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_22C274154();
  a3(v6, a2);
  return sub_22C2741A4();
}

uint64_t static GlobalToolIdentifier.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C18E738(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v10 || (sub_22C274014() & 1) != 0)
  {
    if (v5)
    {
      if (v7)
      {
        if (v4 == v8 && v5 == v7)
        {
          return v6 ^ v9 ^ 1u;
        }

        v12 = sub_22BE19454();
        if (sub_22C18F3BC(v12))
        {
          return v6 ^ v9 ^ 1u;
        }
      }
    }

    else if (!v7)
    {
      return v6 ^ v9 ^ 1u;
    }
  }

  return 0;
}

void __swiftcall GlobalToolIdentifier.init(toolId:deviceIdsId:representsBuiltInTool:)(IntelligenceFlowPlannerSupport::GlobalToolIdentifier *__return_ptr retstr, Swift::String toolId, Swift::String_optional deviceIdsId, Swift::Bool representsBuiltInTool)
{
  retstr->toolId = toolId;
  retstr->deviceIdsId = deviceIdsId;
  retstr->representsBuiltInTool = representsBuiltInTool;
}

void ProgramStatement.init(id:expression:isRoot:isExpanded:executionSupportType:canonicalIndex:)()
{
  sub_22BE22B9C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v17 = v6;
  v18 = *v7;
  v8 = type metadata accessor for ProgramStatement(0);
  v9 = v8[6];
  v10 = v8[7];
  v11 = v8[9];
  v12 = v5 + v8[8];
  *(v5 + v11) = 2;
  sub_22C26E684();
  sub_22BE1834C();
  v13 = sub_22BE1AB1C();
  v14(v13);
  sub_22BE3ED9C();
  v15 = sub_22C18FCC8();
  sub_22C171FA8(v15, v16);
  *(v5 + v9) = v3;
  *(v5 + v10) = v17;
  *v12 = v1;
  *(v12 + 4) = BYTE4(v1) & 1;
  *(v5 + v11) = v18;
  sub_22BE234D8();
}

uint64_t StatementResultPayload.init(outcome:response:)()
{
  v2 = sub_22BE28634();
  type metadata accessor for StatementResultPayload(v2);
  sub_22BE341A4();
  v3 = sub_22C26F874();
  sub_22C0E966C(v0 + v1, v4, v5, v3);
  sub_22C26F894();
  sub_22BE1834C();
  v6 = sub_22BE1804C();
  v7(v6);
  return sub_22BE2343C();
}

uint64_t StatementResult.init(actionEventId:toolId:payload:resultStatementId:originProgramStatementId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22BE22B9C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_22C0E9824();
  sub_22C26E1D4();
  v24 = sub_22BE238E8();
  v28 = sub_22C0E966C(v24, v25, v26, v27);
  v29 = type metadata accessor for StatementResult(v28);
  sub_22C18F88C(v29);
  sub_22BE2565C();
  sub_22BE2343C();
  if (!v21)
  {
    v23 = 0;
  }

  sub_22C1083D4(*v15, *(v15 + 8));
  *v15 = v23;
  *(v15 + 8) = v21;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  sub_22BE41330();
  sub_22C171FA8(v19, v14 + v30);
  v31 = v29[6];
  v32 = sub_22C26E684();
  sub_22BE187D0();
  v45 = v33 + 32;
  v46 = *(v33 + 32);
  v46(v14 + v31, v17, v32);
  v34 = sub_22BE25438(v29[7]);
  v35(v34);
  sub_22BE25438(v29[8]);
  sub_22BE234D8();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46, a11, a12, a13, a14);
}

uint64_t UserTurnStarted.init(statementId:turn:turnId:siriRequestContext:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  sub_22C26E684();
  sub_22BE1834C();
  v8 = sub_22BE1B328();
  v9(v8);
  v10 = type metadata accessor for UserTurnStarted(0);
  *(a4 + *(v10 + 20)) = v7;
  v11 = (a4 + *(v10 + 24));
  *v11 = a2;
  v11[1] = a3;
  return sub_22BE424BC();
}

uint64_t Request.init(content:safetyMode:prescribedPlan:rewriteMetadataEventID:rewriteMetadataInlined:siriRequestContext:suggestedInvocation:datetimeContext:)@<X0>(char a1@<W1>, __int128 *a2@<X4>, uint64_t *a3@<X6>, uint64_t a4@<X8>)
{
  v29 = *a2;
  v28 = *(a2 + 2);
  v31 = *a3;
  v30 = a3[1];
  v6 = type metadata accessor for Request(0);
  type metadata accessor for RequestPrescribedPlan(0);
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v10);
  sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  v15 = (a4 + v6[8]);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  sub_22C271394();
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v19);
  v20 = (a4 + v6[10]);
  *v20 = 0;
  v20[1] = 0;
  type metadata accessor for DateTimeContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v21, v22, v23, v24);
  sub_22BE250EC();
  v25 = sub_22BE35838();
  sub_22C171FA8(v25, v26);
  *(a4 + v6[5]) = a1;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE37808(*v15, v15[1], v15[2]);
  *v15 = v29;
  v15[2] = v28;
  sub_22BE2343C();

  *v20 = v31;
  v20[1] = v30;
  return sub_22BE2343C();
}

__n128 ExternalAgentRequest.init(content:rewriteMetadataEventID:rewriteMetadataInlined:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C190048();
  sub_22BE18378();
  v6 = v5;
  v18 = *v7;
  v8 = *(v7 + 2);
  v9 = type metadata accessor for ExternalAgentRequest(0);
  sub_22C18FA90();
  sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  v14 = (v6 + *(v9 + 24));
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  sub_22BE250EC();
  v15 = sub_22BE18040();
  sub_22C171FA8(v15, v16);
  sub_22BE2343C();
  sub_22BE37808(*v14, v14[1], v14[2]);
  *v14 = v18;
  v14[2] = v8;
  sub_22C190034();
  return result;
}

uint64_t RequestContent.TextContent.init(text:statementId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for RequestContent.TextContent(0);
  sub_22C26E684();
  sub_22BE1834C();
  v3 = sub_22BE33684();

  return v4(v3);
}

uint64_t RequestContent.SpeechContent.init(text:speechPackage:preITNSpeechPackage:statementId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE3C358();
  sub_22BEC0548();
  v12 = v11;
  v14 = v13;
  type metadata accessor for RequestContent.SpeechContent(0);
  sub_22C26EBC4();
  sub_22BE1A140();
  sub_22BE19DC4(v15, v16, v17, v18);
  *v14 = v12;
  v14[1] = v10;
  sub_22C18FCEC();
  sub_22BE2343C();
  sub_22C18FCEC();
  sub_22BE424BC();
  sub_22C26E684();
  sub_22BE1834C();
  sub_22BE267B8();

  return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

void RequestContent.SystemPromptResolution.init(actionEventId:systemResponseEventId:userAction:statementId:input:)()
{
  sub_22BE19460();
  v3 = v2;
  v26 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE1A5E4();
  type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(v9);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE38390();
  v11 = sub_22C26E1D4();
  sub_22BE1A140();
  v15 = sub_22C18F17C(v12, v13, v14, v11);
  v16 = type metadata accessor for RequestContent.SystemPromptResolution(v15);
  v17 = *(v16 + 32);
  swift_storeEnumTagMultiPayload();
  sub_22BE2343C();
  sub_22C18FA78();
  (*(v18 + 32))(v0 + v19, v8, v11);
  sub_22BE3E31C();
  sub_22C171FA8(v6, v0 + v20);
  v21 = *(v16 + 28);
  sub_22C26E684();
  sub_22BE1834C();
  (*(v22 + 32))(v0 + v21, v26);
  sub_22BE200F8(v3);
  if (v23)
  {
    sub_22BE191CC();
    swift_storeEnumTagMultiPayload();
    sub_22BE200F8(v3);
    if (!v23)
    {
      sub_22C18DC5C(v3, &qword_27D9120D0);
    }
  }

  else
  {
    sub_22C18E36C();
    v24 = sub_22BE18040();
    sub_22C171FA8(v24, v25);
  }

  sub_22C18E354();
  sub_22C172628(v1, v0 + v17);
  sub_22BE1AABC();
}

IntelligenceFlowPlannerSupport::RequestPrescribedPlan::SearchTool __swiftcall RequestPrescribedPlan.SearchTool.init(query:isLowConfidenceKnowledge:shouldOpenResultIfApplicable:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::SearchTool query, Swift::Bool isLowConfidenceKnowledge, Swift::Bool shouldOpenResultIfApplicable)
{
  *v3 = query.query;
  *(v3 + 16) = isLowConfidenceKnowledge;
  *(v3 + 17) = shouldOpenResultIfApplicable;
  query.isLowConfidenceKnowledge = isLowConfidenceKnowledge;
  return query;
}

void __swiftcall RequestPrescribedPlan.ConvertTool.init(query:isExplicit:partner:directInvocationClient:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit, Swift::String_optional partner, Swift::String_optional directInvocationClient)
{
  retstr->query = query;
  retstr->isExplicit = isExplicit;
  retstr->partner = partner;
  retstr->directInvocationClient = directInvocationClient;
}

uint64_t RequestPrescribedPlan.OpenTool.init(resultStatementId:elementAtIndex:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_22BE3E864();
  v7 = v4 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(v6) + 20);
  sub_22C26E684();
  sub_22BE1834C();
  v8 = sub_22BE1C2A0();
  result = v9(v8);
  *v7 = v3;
  *(v7 + 8) = a3 & 1;
  return result;
}

IntelligenceFlowPlannerSupport::RequestPrescribedPlan::OpenSuccessValueFromLatestRequestTool __swiftcall RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.init(elementAtIndex:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::OpenSuccessValueFromLatestRequestTool elementAtIndex)
{
  *v1 = elementAtIndex.elementAtIndex.value;
  *(v1 + 8) = elementAtIndex.elementAtIndex.is_nil;
  return elementAtIndex;
}

void Session.Transcript.init(events:)()
{
  sub_22BE3C358();
  v4 = v3;
  v5 = sub_22C0E9824();
  type metadata accessor for Session.Transcript(v5);
  sub_22BE29F40();
  MEMORY[0x28223BE20](v6);
  sub_22BE17CBC();
  if (*(v4 + 16))
  {
    v7 = (type metadata accessor for Session.Event(0) - 8);
    sub_22BE19E14();
    v9 = v4 + v8;
    v10 = v7[7];
    sub_22C26E1D4();
    sub_22BE1834C();
    (*(v11 + 16))(v2, v9 + v10);
    v12 = (v9 + v7[11]);
    v13 = *v12;
    v14 = v12[1];
    v15 = (v2 + v0[5]);
    *v15 = v13;
    v15[1] = v14;
    v16 = (v9 + v7[12]);
    v17 = *v16;
    v18 = v16[1];
    v19 = (v2 + v0[6]);
    *v19 = v17;
    v19[1] = v18;
    v20 = (v9 + v7[13]);
    v21 = *v20;
    v22 = v20[1];
    v23 = (v2 + v0[7]);
    *v23 = v21;
    v23[1] = v22;
    *(v2 + v0[8]) = v4;
    v24 = sub_22BE3C5E4();
    sub_22C171FA8(v24, v25);
    sub_22BE19DC4(v1, 0, 1, v0);

    sub_22BE267B8();
  }

  else
  {

    sub_22BE1A140();
    sub_22BE267B8();

    sub_22BE19DC4(v26, v27, v28, v29);
  }
}

void static ActionParameterContext.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE18378();
  if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
  {
    type metadata accessor for ActionParameterContext(0);
    sub_22C18F27C();
    sub_22C18E1A0();
    v5 = v5 && v3 == v4;
    if (v5 || (sub_22C274014() & 1) != 0)
    {
      v6 = *(v2 + 24);
      v7 = *(v1 + v6);
      v8 = *(v1 + v6 + 8);
      v9 = *(v1 + v6 + 16);
      v10 = *(v1 + v6 + 24);
      v11 = *(v1 + v6 + 32);
      v12 = v0 + v6;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      v15 = *(v12 + 32);
      v16 = v7 == *v12 && v8 == *(v12 + 8);
      if (v16 || (sub_22C274014() & 1) != 0)
      {
        if (v10)
        {
          if (v13)
          {
            if (v9 != v14 || v10 != v13)
            {
              sub_22BE2590C();
              sub_22C274014();
              sub_22C18FA30();
              if ((v18 & 1) == 0)
              {
                goto LABEL_24;
              }

              goto LABEL_21;
            }

            if (v11 == v15)
            {
LABEL_25:
              sub_22BE43248();
            }
          }
        }

        else if (!v13)
        {
LABEL_21:
          if ((v11 ^ v15))
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }
      }
    }
  }

LABEL_24:
  sub_22BE1AABC();
}

void Session.Transcript.events.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for Session.Transcript(v2) + 32);

  *(v1 + v3) = v0;
}

uint64_t Session.Transcript.events.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Transcript(v0);
  return sub_22BE18504();
}

void Session.Transcript.init(sessionId:clientSessionId:clientApplicationId:clientGroupId:)()
{
  sub_22BE3C358();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_22C26E1D4();
  sub_22BE1834C();
  v14 = sub_22BE196A8();
  v15(v14);
  v16 = type metadata accessor for Session.Transcript(0);
  v17 = (v13 + v16[5]);
  *v17 = v11;
  v17[1] = v9;
  v18 = (v13 + v16[6]);
  *v18 = v7;
  v18[1] = v5;
  v19 = (v13 + v16[7]);
  *v19 = v3;
  v19[1] = v1;
  *(v13 + v16[8]) = MEMORY[0x277D84F90];
  sub_22BE267B8();
}

void Session.Transcript.formingQueryEvent(clientRequestId:_:)()
{
  v0 = sub_22BE3E308();
  v1 = type metadata accessor for PreassignedEventID(v0);
  v2 = sub_22BE19448(v1);
  MEMORY[0x28223BE20](v2);
  sub_22BE19338();
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  sub_22BE25C08();
  Session.Transcript.formingQueryEvent(id:clientRequestId:_:)();
}