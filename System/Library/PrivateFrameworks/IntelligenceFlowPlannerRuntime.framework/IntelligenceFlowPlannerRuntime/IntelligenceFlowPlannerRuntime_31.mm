uint64_t sub_22C61DE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a2;
  v8[7] = a4;
  v8[5] = a1;
  v9 = sub_22C90855C();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v10 = sub_22C90654C();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v11 = sub_22C90880C();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v8[21] = swift_task_alloc();
  v12 = sub_22C9070DC();
  v8[22] = v12;
  v8[23] = *(v12 - 8);
  v8[24] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF4A8, &unk_22C922770);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v13 = sub_22C90672C();
  v8[27] = v13;
  v8[28] = *(v13 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v14 = sub_22C9093BC();
  v8[31] = v14;
  v8[32] = *(v14 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v15 = sub_22C90906C();
  v8[36] = v15;
  v8[37] = *(v15 - 8);
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = *(type metadata accessor for ActionParameterValue(0) - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v16 = sub_22C901FAC();
  v8[43] = v16;
  v8[44] = *(v16 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BAA00, &qword_22C911F60);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v17 = sub_22C908EAC();
  v8[49] = v17;
  v8[50] = *(v17 - 8);
  v8[51] = swift_task_alloc();
  v18 = sub_22C9063DC();
  v8[52] = v18;
  v8[53] = *(v18 - 8);
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C61E3DC, 0, 0);
}

void sub_22C61E3DC(uint64_t a1)
{
  v300 = v1;
  sub_22C903F8C();
  v2 = sub_22C36D39C();
  v3(v2);
  v4 = sub_22C9063CC();
  v5 = sub_22C90AABC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[55];
  v9 = v1[52];
  v8 = v1[53];
  v10 = &unk_22C90D000;
  v298 = v1;
  if (v6)
  {
    sub_22C36FB44();
    v294 = v9;
    v11 = sub_22C388D58();
    v299[0] = v11;
    *v7 = 136315138;
    v12 = v5;
    v13 = sub_22C908E7C();
    v15 = v14;
    v16 = sub_22C379FC8();
    v17(v16);
    v18 = sub_22C36F9F4(v13, v15, v299);
    v10 = &unk_22C90D000;

    *(v7 + 4) = v18;
    sub_22C5CD33C(&dword_22C366000, v4, v12, "Resolving client action %s", v270);
    sub_22C36FF94(v11);
    sub_22C3699EC();
    sub_22C370510();

    v21 = *(v8 + 8);
    v20 = v8 + 8;
    v19 = v21;
    v21(v7, v294);
  }

  else
  {

    v22 = sub_22C379FC8();
    v23(v22);
    v24 = *(v8 + 8);
    v20 = v8 + 8;
    v19 = v24;
    v25 = sub_22C50B578();
    v24(v25, v26);
  }

  v27 = v298;
  v298[56] = v20;
  v298[57] = v19;
  v28 = v298[8];
  v29 = *(v28 + 32);
  *(v298 + 588) = v29;
  v30 = 1 << v29;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(v28 + 64);
  *(v298 + 142) = *MEMORY[0x277D729E0];
  *(v298 + 143) = *MEMORY[0x277D1DAA8];
  *(v298 + 144) = *MEMORY[0x277D1DEE8];
  *(v298 + 145) = *MEMORY[0x277D1DBA0];
  *(v298 + 146) = *MEMORY[0x277D1DBA8];

  v33 = v32;
  v34 = 0;
  v35 = MEMORY[0x277D84F98];
  *(&v36 + 1) = 2;
  v283 = xmmword_22C90F800;
  *&v36 = v10[4];
  v282 = v36;
  while (2)
  {
    v27[58] = v35;
    if (!v33)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v37 = v27[8];
LABEL_14:
      v287 = v34;
      v39 = v27[47];
      v40 = (v33 - 1) & v33;
      v41 = (*(v37 + 48) + 16 * (__clz(__rbit64(v33)) | (v34 << 6)));
      v43 = *v41;
      v42 = v41[1];
      v44 = sub_22C633D88();
      v45(v44);
      v46 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
      *v39 = v43;
      v39[1] = v42;
      sub_22C37275C();
      v47();
      v48 = sub_22C3726A4();
      v49 = v46;
      v27 = v298;
      sub_22C36C640(v48, v50, v51, v49);
      v34 = v287;

LABEL_15:
      v27[59] = v40;
      v27[60] = v34;
      v284 = v40;
      sub_22C3D3310();
      v52 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
      v53 = sub_22C36CCF8();
      sub_22C36D0A8(v53, v54, v52);
      if (v55)
      {
        v276 = v27[58];
        v227 = v27[13];
        v228 = v27[14];
        v273 = v27[12];

        v229 = sub_22C6344C4();
        v230(v229);
        v231 = sub_22C908E7C();
        sub_22C634100(v231, v232, v233, v234, v235, v236, v237, v238, v270, v273, v276);
        (*(v227 + 104))(v228, *MEMORY[0x277D1E558], v274);

        sub_22C36FC2C();
        sub_22C9085BC();
        type metadata accessor for StepResolution(0);
        sub_22C633E0C();
        swift_storeEnumTagMultiPayload();

        sub_22C369C50();
        sub_22C37BEB8();

        __asm { BRAA            X1, X16 }
      }

      v56 = v27[48];
      v57 = v27[9];
      v58 = *v56;
      v27[61] = *v56;
      v59 = v56[1];
      v27[62] = v59;
      sub_22C634484();
      v60();
      v285 = v59;
      v286 = v58;
      if (!*(v57 + 16) || (sub_22C3736B4(), v61 = sub_22C36A724(), sub_22C36E5AC(v61, v62, v63, v64), (v65 & 1) == 0))
      {
        v161 = v27[27];
        sub_22C62242C(v27[45], MEMORY[0x277D84F90], v27[10], v27[25]);
        v162 = sub_22C383C3C();
        sub_22C36D0A8(v162, v163, v161);
        if (!v55)
        {
          v164 = v27[58];
          v297 = *(v27 + 145);
          v165 = v27[29];
          v166 = sub_22C633DEC();
          v167(v166);
          sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
          v168 = sub_22C63464C();
          sub_22C369824();
          v170 = v169;
          v171 = sub_22C633CC8();
          v179 = sub_22C633C24(v171, v172, v173, v174, v175, v176, v177, v178, v270, v272, v275, v277, v278, v279, v280, v281, v282, *(&v282 + 1), v283);
          v180(v179);
          (*(v170 + 104))(v171 + v40, v297, v168);
          swift_isUniquelyReferenced_nonNull_native();
          v27[2] = v164;
          sub_22C3736B4();
          v181 = sub_22C37F8AC();
          sub_22C36E5AC(v181, v182, v183, v184);
          sub_22C369DA4();
          if (!__OFADD__(v185, v186))
          {
            sub_22C50B5FC();
            v187 = sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
            if (sub_22C634424(v187, v188, v187))
            {
              sub_22C3736B4();
              v189 = sub_22C37F8AC();
              sub_22C36E5AC(v189, v190, v191, v192);
              sub_22C388D48();
              if (!v55)
              {
                goto LABEL_68;
              }
            }

            v35 = v27[2];
            if (v165)
            {
              sub_22C63423C();
            }

            else
            {
              sub_22C6343BC();
              sub_22C380584(v193);
              sub_22C633E58(v194);
              if (v160)
              {
LABEL_89:
                __break(1u);
LABEL_90:
                __break(1u);
                goto LABEL_91;
              }

              *(v35 + 16) = v195;
            }

            (*(v27[28] + 8))(v27[29], v27[27]);
            goto LABEL_63;
          }

LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

LABEL_73:
        v242 = v27[21];
        sub_22C3AC228(v27[25], &qword_27D9BF4A8, &unk_22C922770);
        sub_22C90878C();
        sub_22C63417C();
        sub_22C646D68();
        v243 = sub_22C36CA88();
        v244(v243);
        sub_22C376738(v242);
        if (v55)
        {
          sub_22C3AC228(v27[21], &qword_27D9BAA18, &qword_22C911C40);
LABEL_83:
          v262 = sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
          v263 = sub_22C633EBC(v262);
          v27[67] = v263;
          v264 = sub_22C380174(v263, v283);
          v265(v264);
          v266 = swift_task_alloc();
          v27[68] = v266;
          *v266 = v27;
          sub_22C375F64(v266);
          sub_22C6344D4(v27[10]);
          goto LABEL_84;
        }

        v245 = *(v27 + 143);
        v246 = sub_22C36CB30();
        v247(v246);
        sub_22C90702C();
        v248 = sub_22C36BAFC();
        v250 = v249(v248);
        if (v250 != v245)
        {
          (*(v27[23] + 8))(v27[24], v27[22]);
          v260 = sub_22C381704();
LABEL_82:
          v261(v260);
          goto LABEL_83;
        }

        v251 = *(v27 + 144);
        v252 = sub_22C634528();
        v253(v252);
        sub_22C906F2C();
        sub_22C3699C8();
        v254 = sub_22C36BA00();
        if (v255(v254) == v251)
        {
          v256 = v27[17];
          v257 = sub_22C36BA00();
          v258(v257);
          v27[63] = *v256;
          v259 = swift_task_alloc();
          v27[64] = v259;
          *v259 = v27;
          sub_22C36EDAC(v259);
          sub_22C633FC0(v27[10]);
LABEL_84:
          sub_22C37BEB8();

          sub_22C6230EC(v267, v268);
          return;
        }

LABEL_81:
        (*(v27[23] + 8))(v27[24], v27[22]);
        v260 = sub_22C36BA00();
        goto LABEL_82;
      }

      v288 = v34;
      v66 = *(v27 + 142);
      sub_22C633B00();
      sub_22C62E98C();
      sub_22C633AE8();
      sub_22C36BA00();
      sub_22C630194();
      sub_22C44178C();
      v295 = v68;
      v296 = v67;
      v68();
      v69 = sub_22C36D264();
      v290 = v70;
      if (v70(v69) != v66)
      {
        (*(v27[32] + 8))(v27[35], v27[31]);
LABEL_34:
        v131 = v27[58];
        v132 = *(v27 + 146);
        v133 = v27[42];
        sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
        v134 = v27;
        sub_22C63464C();
        sub_22C369824();
        sub_22C6341F0();
        v135 = sub_22C6349A0();
        *(v135 + 16) = v283;
        sub_22C38AA18();
        v295();
        v136 = sub_22C634830();
        v137(v136);
        swift_isUniquelyReferenced_nonNull_native();
        v27[3] = v131;
        sub_22C3736B4();
        sub_22C634A00(v138, v139, v140, sub_22C36EF04);
        sub_22C369DA4();
        v27 = (v141 + v142);
        if (!__OFADD__(v141, v142))
        {
          sub_22C50B5FC();
          v143 = sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
          if (sub_22C634424(v143, v144, v143))
          {
            sub_22C3736B4();
            sub_22C634A00(v145, v146, v147, sub_22C36EF04);
            sub_22C388D48();
            if (!v55)
            {
LABEL_68:
              sub_22C37BEB8();

              sub_22C90B54C();
              return;
            }

            v132 = v148;
          }

          v149 = v134[42];
          if (v133)
          {

            v35 = v134[3];
            sub_22C63423C();
            sub_22C633A4C();
            sub_22C62E9E0(v149, v150);
            v151 = sub_22C372164();
            v152(v151);
            v27 = v134;
            goto LABEL_64;
          }

          v35 = v134[3];
          sub_22C6343BC();
          sub_22C380584(v153);
          *v154 = v286;
          v154[1] = v155;
          *(*(v35 + 56) + 8 * v132) = v135;
          sub_22C633A4C();
          sub_22C62E9E0(v149, v156);
          v157 = sub_22C372164();
          v158(v157);
          sub_22C6341D8();
          if (!v160)
          {
            *(v35 + 16) = v159;
            v27 = v298;
            goto LABEL_64;
          }

          __break(1u);
          goto LABEL_88;
        }

        __break(1u);
        goto LABEL_81;
      }

      v71 = v27[26];
      v72 = v27[27];
      v73 = v27;
      v289 = *(v27[32] + 96);
      (v289)(v27[35], v27[31]);
      swift_projectBox();
      v74 = sub_22C6343FC();
      v75(v74);

      sub_22C621FD0();
      sub_22C63472C();
      sub_22C62242C(v76, v77, v78, v79);

      sub_22C36D0A8(v71, 1, v72);
      if (!v55)
      {
        break;
      }

      sub_22C3AC228(v27[26], &qword_27D9BF4A8, &unk_22C922770);
      v80 = sub_22C90905C();
      v81 = 0;
      v293 = *(v80 + 16);
      while (v293 != v81)
      {
        v27 = v298;
        if (v81 >= *(v80 + 16))
        {
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v82 = *(v298 + 142);
        v83 = v298[34];
        v84 = v298[31];
        sub_22C47278C();
        (v295)(v83, v80 + v85 + *(v86 + 72) * v81, v84);
        v87 = sub_22C36BA00();
        (v295)(v87);
        v88 = sub_22C36BAFC();
        v89 = v290(v88);
        v90 = v298[36];
        v91 = v298[37];
        v92 = v298[31];
        v93 = v298[32];
        if (v89 != v82)
        {
          v126 = v298[39];

          v127 = *(v93 + 8);
          v128 = sub_22C377B94();
          v127(v128);
          v129 = v126;
          v27 = v298;
          (*(v91 + 8))(v129, v90);
          v130 = sub_22C36BBCC();
          v127(v130);
          goto LABEL_34;
        }

        v94 = sub_22C36BBCC();
        v289(v94);
        swift_projectBox();
        v95 = sub_22C6345E8();
        v96(v95);

        sub_22C90905C();
        v97 = *(v91 + 8);
        ++v81;
        v98 = sub_22C372FCC();
        v97(v98);
        v73 = (v93 + 8);
        v99 = sub_22C377B94();
        v100(v99);
        sub_22C634714();

        if (v92)
        {
          v27 = v298;
          (v97)(v298[39], v298[36]);

          goto LABEL_34;
        }
      }

      v27 = v298;
      v101 = v298[54];

      sub_22C903F8C();

      v102 = sub_22C9063CC();
      v103 = sub_22C90AABC();

      os_log_type_enabled(v102, v103);
      sub_22C634284();
      v104 = v298[37];
      v291 = v298[36];
      v292 = v298[39];
      if (v105)
      {
        sub_22C36FB44();
        v106 = sub_22C388D58();
        *v73 = sub_22C6344B4(v106, v107, v108, v109, v110, v111, v112, v113, v270, v272, v275, v277, v278, v279, v280, v281, v282).n128_u32[0];
        v114 = sub_22C36F9F4(v286, v285, v299);

        *(v73 + 4) = v114;
        v27 = v298;
        sub_22C5CD33C(&dword_22C366000, v102, v103, "Ignoring empty collections when resolving client action parameters for: %s", v271);
        sub_22C36FF94(v101);
        sub_22C37E124();
        sub_22C370510();

        v115 = sub_22C36BAFC();
        (v295)(v115);
        (*(v104 + 8))(v292, v291);
        sub_22C633A4C();
        sub_22C62E9E0(v296, v116);
        (*(v81 + 8))(v101, v73);
      }

      else
      {

        v121 = sub_22C36BAFC();
        (v295)(v121);
        (*(v104 + 8))(v292, v291);
        sub_22C633A4C();
        sub_22C62E9E0(v296, v122);
        v123 = sub_22C38644C();
        v125(v123, v124);
      }

      v34 = v288;
      v33 = v284;
      if (!v284)
      {
LABEL_10:
        while (1)
        {
          v38 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_72;
          }

          if (v38 >= (((1 << *(v27 + 588)) + 63) >> 6))
          {
            sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
            v117 = sub_22C3702F4();
            sub_22C36C640(v117, v118, v119, v120);
            v40 = 0;
            goto LABEL_15;
          }

          v37 = v27[8];
          v33 = *(v37 + 8 * v38 + 64);
          ++v34;
          if (v33)
          {
            v34 = v38;
            goto LABEL_14;
          }
        }
      }
    }

    v196 = v27[58];
    v197 = v27[30];
    v198 = sub_22C633DEC();
    v199(v198);
    sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
    sub_22C63464C();
    sub_22C369824();
    v200 = sub_22C633CC8();
    v208 = sub_22C633C24(v200, v201, v202, v203, v204, v205, v206, v207, v270, v272, v275, v277, v278, v279, v280, v281, v282, *(&v282 + 1), v283);
    v209(v208);
    v210 = sub_22C6346D4();
    v211(v210);
    swift_isUniquelyReferenced_nonNull_native();
    v27[4] = v196;
    sub_22C3736B4();
    sub_22C36E5AC(v286, v59, v212, sub_22C36EF04);
    sub_22C369DA4();
    if (__OFADD__(v213, v214))
    {
      goto LABEL_90;
    }

    sub_22C50B5FC();
    v215 = sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
    if (sub_22C634424(v215, v216, v215))
    {
      sub_22C3736B4();
      sub_22C36E5AC(v286, v59, v217, sub_22C36EF04);
      sub_22C388D48();
      if (!v55)
      {
        goto LABEL_68;
      }
    }

    v35 = v27[4];
    if (v197)
    {
      sub_22C63423C();

      goto LABEL_62;
    }

    sub_22C6343BC();
    sub_22C380584(v218);
    sub_22C633E58(v219);
    if (!v160)
    {
      *(v35 + 16) = v220;
LABEL_62:
      v221 = v27[42];
      (*(v298[28] + 8))(v298[30], v298[27]);
      v222 = sub_22C36ECB4();
      v27 = v298;
      v223(v222);
      sub_22C633A4C();
      sub_22C62E9E0(v221, v224);
LABEL_63:
      v225 = sub_22C381704();
      v226(v225);
LABEL_64:
      v33 = v27[59];
      v34 = v27[60];
      continue;
    }

    break;
  }

LABEL_91:
  __break(1u);
}

uint64_t sub_22C61F6CC()
{
  sub_22C36D5EC();
  v4 = v3;
  sub_22C3864E0();
  sub_22C369970();
  *v5 = v1;
  *v5 = *v2;
  *(v1 + 520) = v0;

  sub_22C6343B0();

  if (v0)
  {
  }

  else
  {
    *(v1 + 528) = v4;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_22C61F818()
{
  v293 = v0;
  v1 = v0;
  v2 = byte_22C90F000;
  if (!v0[66])
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
LABEL_63:
    v235 = sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
    v236 = sub_22C633EBC(v235);
    *(v1 + 536) = v236;
    v237 = sub_22C380174(v236, v2[128]);
    v238(v237);
    v239 = swift_task_alloc();
    *(v1 + 544) = v239;
    *v239 = v1;
    sub_22C375F64(v239);
    sub_22C6344D4(*(v1 + 80));
LABEL_64:
    sub_22C37BEB8();

    sub_22C6230EC(v240, v241);
    return;
  }

  v3 = v0[58];
  v291 = v0;
  swift_isUniquelyReferenced_nonNull_native();
  v292 = v3;
  sub_22C36D39C();
  sub_22C62E500();

  v4 = sub_22C3726C4();
  v5(v4);
  v6 = sub_22C36CA88();
  v7(v6);
  v8 = v3;
  *(&v9 + 1) = 2;
  v279 = xmmword_22C90F800;
  *&v9 = 136315138;
  v278 = v9;
LABEL_3:
  while (2)
  {
    v1 = v291;
    v11 = v291[59];
    v10 = v291[60];
    v291[58] = v8;
    if (!v11)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v12 = *(v1 + 64);
LABEL_9:
      v14 = *(v1 + 376);
      v15 = (*(v12 + 48) + 16 * (__clz(__rbit64(v11)) | (v10 << 6)));
      v16 = v15[1];
      v289 = *v15;
      v17 = sub_22C633D88();
      v18(v17);
      v19 = sub_22C50B578();
      v21 = (v11 - 1) & v11;
      v22 = v10;
      v23 = sub_22C3A5908(v19, v20);
      *v14 = v289;
      v14[1] = v16;
      sub_22C37275C();
      v24();
      v25 = sub_22C3726A4();
      v26 = v23;
      v10 = v22;
      v27 = v21;
      sub_22C36C640(v25, v28, v29, v26);

LABEL_10:
      *(v1 + 472) = v27;
      *(v1 + 480) = v10;
      sub_22C3D3310();
      v30 = sub_22C50B578();
      v32 = sub_22C3A5908(v30, v31);
      v33 = sub_22C36CCF8();
      sub_22C36D0A8(v33, v34, v32);
      if (v35)
      {
        v272 = *(v1 + 464);
        v221 = *(v1 + 104);
        v222 = *(v1 + 112);
        v269 = *(v1 + 96);

        v223 = sub_22C6344C4();
        v224(v223);
        v225 = sub_22C908E7C();
        sub_22C634100(v225, v226, v227, v228, v229, v230, v231, v232, v266, v269, v272);
        (*(v221 + 104))(v222, *MEMORY[0x277D1E558], v270);

        sub_22C36FC2C();
        sub_22C9085BC();
        type metadata accessor for StepResolution(0);
        sub_22C633E0C();
        swift_storeEnumTagMultiPayload();

        sub_22C37BEB8();

        __asm { BRAA            X1, X16 }
      }

      v36 = *(v1 + 384);
      v37 = *(v1 + 72);
      v38 = *v36;
      *(v1 + 488) = *v36;
      v39 = v36[1];
      *(v1 + 496) = v39;
      sub_22C634484();
      v40();
      v282 = v39;
      v283 = v38;
      if (!*(v37 + 16))
      {
        break;
      }

      sub_22C3736B4();
      v41 = sub_22C36A724();
      sub_22C36E5AC(v41, v42, v43, v44);
      if ((v45 & 1) == 0)
      {
        break;
      }

      v46 = *(v1 + 568);
      sub_22C633B00();
      sub_22C62E98C();
      sub_22C633AE8();
      sub_22C36BA00();
      sub_22C630194();
      sub_22C44178C();
      v288 = v48;
      v290 = v47;
      v48();
      v49 = sub_22C36D264();
      v286 = v50;
      if (v50(v49) != v46)
      {
        (*(*(v1 + 256) + 8))(*(v1 + 280), *(v1 + 248));
LABEL_29:
        v121 = *(v1 + 464);
        v122 = *(v1 + 584);
        v123 = *(v1 + 336);
        sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
        sub_22C63464C();
        sub_22C369824();
        sub_22C6341F0();
        v124 = v1;
        v1 = sub_22C6349A0();
        *(v1 + 16) = v279;
        sub_22C38AA18();
        v288();
        v125 = sub_22C634830();
        v126(v125);
        swift_isUniquelyReferenced_nonNull_native();
        *(v124 + 24) = v121;
        sub_22C3736B4();
        sub_22C634A00(v127, v128, v129, sub_22C36EF04);
        sub_22C369DA4();
        v2 = (v130 + v131);
        if (!__OFADD__(v130, v131))
        {
          sub_22C50B5FC();
          v132 = sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
          if (sub_22C634424(v132, v133, v132))
          {
            sub_22C3736B4();
            sub_22C634A00(v134, v135, v136, sub_22C36EF04);
            sub_22C388D48();
            if (!v35)
            {
              goto LABEL_67;
            }

            v122 = v137;
          }

          v138 = v291[42];
          if (v123)
          {

            v8 = v291[3];
            sub_22C63423C();
            sub_22C633A4C();
            sub_22C62E9E0(v138, v139);
            v140 = sub_22C372164();
            v141(v140);
            goto LABEL_3;
          }

          v8 = v291[3];
          sub_22C6343BC();
          sub_22C380584(v142);
          *v143 = v283;
          v143[1] = v144;
          *(*(v8 + 56) + 8 * v122) = v1;
          sub_22C633A4C();
          sub_22C62E9E0(v138, v145);
          v146 = sub_22C372164();
          v147(v146);
          sub_22C6341D8();
          if (!v149)
          {
            *(v8 + 16) = v148;
            goto LABEL_3;
          }

          __break(1u);
          goto LABEL_82;
        }

        __break(1u);
LABEL_80:
        (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));
        v264 = sub_22C36BA00();
        v265(v264);
        goto LABEL_63;
      }

      v281 = v10;
      v51 = *(v1 + 280);
      v52 = *(v1 + 248);
      v53 = *(v1 + 256);
      v54 = v1;
      v57 = v1 + 208;
      v55 = *(v1 + 208);
      v56 = *(v57 + 8);
      v284 = *(v53 + 96);
      v284(v51, v52);
      swift_projectBox();
      v58 = sub_22C6343FC();
      v59(v58);

      sub_22C621FD0();
      sub_22C63472C();
      sub_22C62242C(v60, v61, v62, v63);

      sub_22C36D0A8(v55, 1, v56);
      if (!v35)
      {
        v189 = *(v54 + 464);
        v190 = *(v54 + 240);
        v191 = sub_22C633DEC();
        v192(v191);
        sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
        sub_22C63464C();
        sub_22C369824();
        v193 = sub_22C633CC8();
        v201 = sub_22C633C24(v193, v194, v195, v196, v197, v198, v199, v200, v266, v268, v271, v273, v274, v275, v276, v277, v278, *(&v278 + 1), v279);
        v202(v201);
        v203 = sub_22C6346D4();
        v204(v203);
        swift_isUniquelyReferenced_nonNull_native();
        *(v54 + 32) = v189;
        sub_22C3736B4();
        sub_22C36E5AC(v283, v39, v205, sub_22C36EF04);
        sub_22C369DA4();
        if (__OFADD__(v206, v207))
        {
          goto LABEL_84;
        }

        sub_22C50B5FC();
        v208 = sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
        if (sub_22C634424(v208, v209, v208))
        {
          sub_22C3736B4();
          sub_22C36E5AC(v283, v39, v210, sub_22C36EF04);
          sub_22C388D48();
          if (!v35)
          {
            goto LABEL_67;
          }
        }

        v8 = v291[4];
        if (v190)
        {
          sub_22C63423C();

          goto LABEL_58;
        }

        sub_22C6343BC();
        sub_22C380584(v211);
        sub_22C633E58(v212);
        if (v149)
        {
          goto LABEL_85;
        }

        *(v8 + 16) = v213;
LABEL_58:
        v214 = v291[42];
        v215 = v291[39];
        v216 = v291[36];
        v217 = v291[37];
        (*(v291[28] + 8))(v291[30], v291[27]);
        (*(v217 + 8))(v215, v216);
        sub_22C633A4C();
        sub_22C62E9E0(v214, v218);
        v219 = sub_22C381704();
        v220(v219);
        goto LABEL_3;
      }

      v280 = v27;
      sub_22C3AC228(*(v54 + 208), &qword_27D9BF4A8, &unk_22C922770);
      v64 = sub_22C90905C();
      v65 = 0;
      v287 = *(v64 + 16);
      while (v287 != v65)
      {
        v1 = v291;
        if (v65 >= *(v64 + 16))
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v66 = *(v291 + 142);
        v67 = v291[34];
        v68 = v291[31];
        sub_22C47278C();
        (v288)(v67, v64 + v69 + *(v70 + 72) * v65, v68);
        v71 = sub_22C36BA00();
        (v288)(v71);
        v72 = sub_22C36BAFC();
        v73 = v286(v72);
        v74 = v291[37];
        v75 = v291[31];
        v76 = v291[32];
        if (v73 != v66)
        {

          v116 = *(v76 + 8);
          v117 = sub_22C377B94();
          v116(v117);
          v118 = sub_22C372FCC();
          v119(v118);
          v120 = sub_22C36BBCC();
          v116(v120);
          goto LABEL_29;
        }

        v77 = sub_22C36BBCC();
        (v284)(v77);
        swift_projectBox();
        v78 = sub_22C6345E8();
        v79(v78);

        sub_22C90905C();
        v81 = *(v74 + 8);
        v56 = v74 + 8;
        v80 = v81;
        ++v65;
        v82 = sub_22C372FCC();
        v81(v82);
        v54 = v76 + 8;
        v83 = sub_22C377B94();
        v84(v83);
        sub_22C634714();

        if (v75)
        {
          v80(v291[39], v291[36]);
          v1 = v291;

          goto LABEL_29;
        }
      }

      v85 = v291[54];

      sub_22C903F8C();

      v86 = sub_22C9063CC();
      v87 = sub_22C90AABC();

      os_log_type_enabled(v86, v87);
      sub_22C634284();
      v88 = v291[36];
      if (v89)
      {
        sub_22C36FB44();
        v90 = sub_22C388D58();
        *v54 = sub_22C6344B4(v90, v91, v92, v93, v94, v95, v96, v97, v266, v268, v271, v273, v274, v275, v276, v277, v278).n128_u32[0];
        v285 = v88;
        v98 = sub_22C36F9F4(v283, v282, &v292);

        *(v54 + 4) = v98;
        sub_22C5CD33C(&dword_22C366000, v86, v87, "Ignoring empty collections when resolving client action parameters for: %s", v267);
        sub_22C36FF94(v85);
        sub_22C37E124();
        sub_22C370510();

        v99 = sub_22C36BAFC();
        (v288)(v99);
        v100 = sub_22C634844();
        v101(v100, v285);
        sub_22C633A4C();
        sub_22C62E9E0(v290, v102);
        (*(v56 + 8))(v85, v54);
      }

      else
      {

        v109 = sub_22C36BAFC();
        (v288)(v109);
        v110 = sub_22C634844();
        v111(v110, v88);
        sub_22C633A4C();
        sub_22C62E9E0(v290, v112);
        v113 = sub_22C38644C();
        v115(v113, v114);
      }

      v1 = v291;
      v11 = v280;
      v10 = v281;
      if (!v280)
      {
LABEL_5:
        while (1)
        {
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_71;
          }

          if (v13 >= (((1 << *(v1 + 588)) + 63) >> 6))
          {
            v103 = sub_22C50B578();
            sub_22C3A5908(v103, v104);
            v105 = sub_22C3702F4();
            sub_22C36C640(v105, v106, v107, v108);
            v27 = 0;
            goto LABEL_10;
          }

          v12 = *(v1 + 64);
          v11 = *(v12 + 8 * v13 + 64);
          ++v10;
          if (v11)
          {
            v10 = v13;
            goto LABEL_9;
          }
        }
      }
    }

    v150 = *(v1 + 216);
    sub_22C62242C(*(v1 + 360), MEMORY[0x277D84F90], *(v1 + 80), *(v1 + 200));
    v151 = sub_22C383C3C();
    sub_22C36D0A8(v151, v152, v150);
    if (v35)
    {
LABEL_72:
      v244 = *(v1 + 168);
      sub_22C3AC228(*(v1 + 200), &qword_27D9BF4A8, &unk_22C922770);
      sub_22C90878C();
      sub_22C63417C();
      sub_22C646D68();
      v245 = sub_22C36CA88();
      v246(v245);
      sub_22C376738(v244);
      if (v35)
      {
        sub_22C3AC228(*(v1 + 168), &qword_27D9BAA18, &qword_22C911C40);
        v2 = byte_22C90F000;
        goto LABEL_63;
      }

      v247 = *(v1 + 572);
      v248 = sub_22C36CB30();
      v249(v248);
      sub_22C90702C();
      v250 = sub_22C36BAFC();
      v252 = v251(v250);
      v2 = byte_22C90F000;
      if (v252 != v247)
      {
        (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));
        v262 = sub_22C381704();
        v263(v262);
        goto LABEL_63;
      }

      v253 = *(v1 + 576);
      v254 = sub_22C634528();
      v255(v254);
      sub_22C906F2C();
      sub_22C3699C8();
      v256 = sub_22C36BA00();
      if (v257(v256) == v253)
      {
        v258 = *(v1 + 136);
        v259 = sub_22C36BA00();
        v260(v259);
        *(v1 + 504) = *v258;
        v261 = swift_task_alloc();
        *(v1 + 512) = v261;
        *v261 = v1;
        sub_22C36EDAC(v261);
        sub_22C633FC0(*(v1 + 80));
        goto LABEL_64;
      }

      goto LABEL_80;
    }

    v153 = *(v1 + 464);
    v154 = *(v1 + 580);
    v155 = *(v1 + 232);
    v156 = sub_22C633DEC();
    v157(v156);
    sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
    v158 = sub_22C63464C();
    sub_22C369824();
    v160 = v159;
    v161 = sub_22C633CC8();
    v169 = sub_22C633C24(v161, v162, v163, v164, v165, v166, v167, v168, v266, v268, v271, v273, v274, v275, v276, v277, v278, *(&v278 + 1), v279);
    v170(v169);
    (*(v160 + 104))(v161 + v27, v154, v158);
    swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v153;
    sub_22C3736B4();
    v171 = sub_22C37F8AC();
    sub_22C36E5AC(v171, v172, v173, v174);
    sub_22C369DA4();
    if (__OFADD__(v175, v176))
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    sub_22C50B5FC();
    v177 = sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
    if (sub_22C634424(v177, v178, v177))
    {
      sub_22C3736B4();
      v179 = sub_22C37F8AC();
      sub_22C36E5AC(v179, v180, v181, v182);
      sub_22C388D48();
      if (!v35)
      {
LABEL_67:
        sub_22C37BEB8();

        sub_22C90B54C();
        return;
      }

      v154 = v183;
    }

    v8 = v291[2];
    if (v155)
    {
      *(*(v8 + 56) + 8 * v154) = v161;

LABEL_49:
      (*(v291[28] + 8))(v291[29], v291[27]);
      v187 = sub_22C381704();
      v188(v187);
      continue;
    }

    break;
  }

  sub_22C6343BC();
  sub_22C380584(v184);
  *v185 = v283;
  v185[1] = v282;
  *(*(v8 + 56) + 8 * v154) = v161;
  sub_22C6341D8();
  if (!v149)
  {
    *(v8 + 16) = v186;
    goto LABEL_49;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

uint64_t sub_22C620A10()
{
  sub_22C36D5EC();
  v4 = v3;
  sub_22C3864E0();
  sub_22C369970();
  *v5 = v1;
  *v5 = *v2;
  *(v1 + 552) = v0;

  sub_22C6343B0();
  if (v0)
  {
  }

  else
  {
    *(v1 + 560) = v4;
  }

  swift_setDeallocating();
  sub_22C5900A4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_22C620B6C()
{
  v279 = v0;
  v1 = v0;
  if (v0[70])
  {
    v2 = v0[58];
    swift_isUniquelyReferenced_nonNull_native();
    v278 = v2;
    sub_22C36D264();
    sub_22C62E500();

    v3 = sub_22C36CA88();
    v4(v3);
    v6 = v2;
LABEL_62:
    v7 = v1[59];
    v8 = v1[60];
    v1[58] = v6;
  }

  else
  {
    (*(v0[44] + 8))(v0[45], v0[43]);

    v7 = v0[59];
    v8 = v0[60];
  }

  v9 = &qword_27D9BAA30;
  *&v5 = 136315138;
  v260 = v5;
  if (!v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v10 = v1[8];
LABEL_10:
    v12 = v1[47];
    v264 = (v7 - 1) & v7;
    v13 = (*(v10 + 48) + 16 * (__clz(__rbit64(v7)) | (v8 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = sub_22C633D88();
    v17(v16);
    v18 = sub_22C36FC74();
    v20 = sub_22C3A5908(v18, v19);
    *v12 = v15;
    v12[1] = v14;
    sub_22C37275C();
    v21();
    v22 = sub_22C3726A4();
    sub_22C36C640(v22, v23, v24, v20);
    v25 = v264;

LABEL_11:
    v1[59] = v25;
    v1[60] = v8;
    sub_22C3D3310();
    v26 = sub_22C36FC74();
    v28 = sub_22C3A5908(v26, v27);
    v29 = sub_22C36CCF8();
    sub_22C36D0A8(v29, v30, v28);
    if (v31)
    {
      v168 = v1[13];
      v167 = v1[14];
      v169 = v1[12];

      v170 = sub_22C6344C4();
      v171(v170);
      sub_22C908E7C();
      sub_22C9066CC();
      (*(v168 + 104))(v167, *MEMORY[0x277D1E558], v169);

      sub_22C6348E8();
      sub_22C9085BC();
      type metadata accessor for StepResolution(0);
      sub_22C633E0C();
      swift_storeEnumTagMultiPayload();

      sub_22C369C50();
      sub_22C634908();

      __asm { BRAA            X1, X16 }
    }

    v32 = v1[48];
    v33 = v1[9];
    v34 = *v32;
    v1[61] = *v32;
    v35 = v32[1];
    v1[62] = v35;
    sub_22C634484();
    v36();
    v9 = byte_22C90F000;
    v262 = v34;
    v263 = v35;
    if (!*(v33 + 16))
    {
      break;
    }

    sub_22C3736B4();
    v37 = sub_22C36A724();
    sub_22C36E5AC(v37, v38, v39, v40);
    if ((v41 & 1) == 0)
    {
      break;
    }

    v265 = v25;
    v42 = *(v1 + 142);
    sub_22C633B00();
    sub_22C62E98C();
    sub_22C633AE8();
    sub_22C630194();
    v43 = sub_22C37A004();
    v274 = v44;
    (v44)(v43);
    v45 = sub_22C36CA88();
    v269 = v46;
    if (v46(v45) != v42)
    {
      (*(v1[32] + 8))(v1[35], v1[31]);
LABEL_30:
      v108 = v1[58];
      v109 = *(v1 + 146);
      v110 = v1[42];
      v111 = v1[31];
      sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
      v112 = sub_22C9066DC();
      sub_22C369824();
      v114 = v113;
      sub_22C6341F0();
      v117 = v116 & ~v115;
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_22C90F800;
      sub_22C3839D8();
      v274();
      (*(v114 + 104))(v118 + v117, v109, v112);
      swift_isUniquelyReferenced_nonNull_native();
      v1[3] = v108;
      sub_22C3736B4();
      v119 = sub_22C37335C();
      sub_22C36E5AC(v119, v120, v121, v122);
      sub_22C369DA4();
      v9 = (v123 + v124);
      if (!__OFADD__(v123, v124))
      {
        sub_22C50B42C();
        v125 = sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
        if (sub_22C6346A4(v125, v126, v125))
        {
          sub_22C3736B4();
          v127 = sub_22C37335C();
          v110 = sub_22C36E5AC(v127, v128, v129, v130);
          sub_22C385F54();
          if (!v31)
          {
            goto LABEL_63;
          }
        }

        v131 = v1[42];
        if (v111)
        {

          v6 = v1[3];
          sub_22C634630();
          sub_22C633A4C();
          sub_22C62E9E0(v131, v132);
          v133 = sub_22C379FC8();
          v134(v133);
          goto LABEL_62;
        }

        v6 = v1[3];
        sub_22C36ED48(&v6[v110 >> 6]);
        v135 = (v6[6] + 16 * v110);
        *v135 = v136;
        v135[1] = v263;
        *(v6[7] + 8 * v110) = v118;
        sub_22C633A4C();
        sub_22C62E9E0(v131, v137);
        v138 = sub_22C379FC8();
        v139(v138);
        v140 = v6[2];
        v141 = __OFADD__(v140, 1);
        v142 = v140 + 1;
        if (!v141)
        {
          v6[2] = v142;
          v1 = v273;
          goto LABEL_62;
        }

        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      __break(1u);
      goto LABEL_76;
    }

    v271 = v1[45];
    v9 = v1[26];
    v47 = v1[10];
    v267 = *(v1[32] + 96);
    (v267)(v1[35], v1[31]);
    swift_projectBox();
    v48 = sub_22C634418();
    v266 = v49;
    v49(v48);

    sub_22C621FD0();
    sub_22C62242C(v271, v50, v47, v9);

    sub_22C381514();
    sub_22C36D0A8(v51, v52, v53);
    if (!v31)
    {
      v183 = v1[58];
      v184 = *(v1 + 145);
      v185 = v1[27];
      v186 = sub_22C6347A0();
      v187(v186);
      sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
      v188 = sub_22C9066DC();
      sub_22C369824();
      v190 = v189;
      sub_22C6341F0();
      v191 = sub_22C634940();
      v192 = sub_22C634558(v191, xmmword_22C90F800);
      v193(v192);
      (*(v190 + 104))(v9 + v191, v184, v188);
      swift_isUniquelyReferenced_nonNull_native();
      v1[4] = v183;
      sub_22C3736B4();
      v194 = sub_22C37BD98();
      sub_22C36E5AC(v194, v195, v196, v197);
      sub_22C369DA4();
      if (!__OFADD__(v198, v199))
      {
        sub_22C50B42C();
        v200 = sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
        if (sub_22C6346A4(v200, v201, v200))
        {
          sub_22C3736B4();
          v202 = sub_22C37BD98();
          v184 = sub_22C36E5AC(v202, v203, v204, v205);
          sub_22C385F54();
          if (!v31)
          {
LABEL_63:
            sub_22C634908();

            sub_22C90B54C();
            return;
          }
        }

        v6 = v1[4];
        if (v185)
        {
          sub_22C634630();

          goto LABEL_60;
        }

        sub_22C36ED48(&v6[v184 >> 6]);
        sub_22C63419C(v206, v207, v208, v209, v210, v211, v212, v213, v252, v253, v254, v255, v256, v257, v258, v259, v260, *(&v260 + 1), v261, v262, v35);
        if (!v141)
        {
          v6[2] = v214;
LABEL_60:
          v1 = v273;
          v215 = *(v273 + 336);
          (*(*(v273 + 224) + 8))(*(v273 + 240), *(v273 + 216));
          v216 = sub_22C36ECB4();
          v217(v216);
          sub_22C633A4C();
          sub_22C62E9E0(v215, v218);
LABEL_61:
          v219 = sub_22C381704();
          v220(v219);
          goto LABEL_62;
        }

LABEL_85:
        __break(1u);
        return;
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v261 = v8;
    sub_22C3AC228(v1[26], &qword_27D9BF4A8, &unk_22C922770);
    v54 = sub_22C90905C();
    v55 = 0;
    v272 = *(v54 + 16);
    v268 = v54;
    while (v272 != v55)
    {
      if (v55 >= *(v54 + 16))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v1 = v273;
      v56 = *(v273 + 568);
      v57 = *(v273 + 272);
      v58 = *(v273 + 248);
      sub_22C47278C();
      (v274)(v57, v54 + v59 + *(v60 + 72) * v55, v58);
      sub_22C44178C();
      v274();
      v61 = sub_22C36D264();
      v62 = v269(v61);
      v63 = *(v273 + 296);
      v64 = *(v273 + 256);
      if (v62 != v56)
      {

        v103 = *(v64 + 8);
        v104 = sub_22C3819EC();
        v103(v104);
        v105 = sub_22C36D29C();
        v106(v105);
        v107 = sub_22C372164();
        v103(v107);
        goto LABEL_30;
      }

      v65 = sub_22C372164();
      v267(v65);
      swift_projectBox();
      v66 = sub_22C633E0C();
      v266(v66);

      sub_22C90905C();
      v9 = *(v63 + 8);
      ++v55;
      v67 = sub_22C36D29C();
      (v9)(v67);
      v68 = sub_22C3819EC();
      v69(v68);
      sub_22C634714();

      v54 = v268;
      if (v64 != -8)
      {
        v1 = v273;
        (v9)(*(v273 + 312), *(v273 + 288));

        goto LABEL_30;
      }
    }

    sub_22C903F8C();

    v70 = sub_22C9063CC();
    v71 = sub_22C90AABC();

    v72 = os_log_type_enabled(v70, v71);
    v74 = *(v273 + 352);
    v73 = *(v273 + 360);
    v275 = *(v273 + 456);
    v276 = *(v273 + 336);
    v75 = *(v273 + 288);
    if (v72)
    {
      v270 = *(v273 + 344);
      v76 = sub_22C36FB44();
      v77 = swift_slowAlloc();
      *v76 = sub_22C6344B4(v77, v78, v79, v80, v81, v82, v83, v84, v252, v253, v254, v255, v256, v257, v258, v259, v260).n128_u32[0];
      v85 = sub_22C36F9F4(v262, v263, &v278);

      *(v76 + 4) = v85;
      _os_log_impl(&dword_22C366000, v70, v71, "Ignoring empty collections when resolving client action parameters for: %s", v76, 0xCu);
      sub_22C36FF94(v73);
      sub_22C37E124();
      sub_22C372FB0();

      v86 = sub_22C36ECB4();
      v275(v86);
      v87 = sub_22C634844();
      v88(v87, v75);
      sub_22C633A4C();
      sub_22C62E9E0(v276, v89);
      (*(v74 + 8))(v73, v270);
    }

    else
    {

      v96 = sub_22C36ECB4();
      v275(v96);
      v97 = sub_22C634844();
      v98(v97, v75);
      sub_22C633A4C();
      sub_22C62E9E0(v276, v99);
      v100 = sub_22C37170C();
      v102(v100, v101);
    }

    v1 = v273;
    v8 = v261;
    v9 = &qword_27D9BAA30;
    v7 = v265;
    if (!v265)
    {
LABEL_6:
      while (1)
      {
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_67;
        }

        if (v11 >= (((1 << *(v1 + 588)) + 63) >> 6))
        {
          v90 = sub_22C36FC74();
          sub_22C3A5908(v90, v91);
          v92 = sub_22C3702F4();
          sub_22C36C640(v92, v93, v94, v95);
          v25 = 0;
          goto LABEL_11;
        }

        v10 = v1[8];
        v7 = *(v10 + 8 * v11 + 64);
        ++v8;
        if (v7)
        {
          v8 = v11;
          goto LABEL_10;
        }
      }
    }
  }

  v143 = v1[25];
  sub_22C62242C(v1[45], MEMORY[0x277D84F90], v1[10], v143);
  sub_22C376738(v143);
  if (!v31)
  {
    v144 = v1[58];
    v277 = *(v1 + 145);
    v145 = v1[27];
    v146 = sub_22C6347A0();
    v147(v146);
    sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
    v148 = sub_22C9066DC();
    sub_22C369824();
    v150 = v149;
    sub_22C6341F0();
    v151 = byte_22C90F000;
    v152 = sub_22C634940();
    v153 = sub_22C634558(v152, xmmword_22C90F800);
    v154(v153);
    (*(v150 + 104))(&byte_22C90F000[v152], v277, v148);
    swift_isUniquelyReferenced_nonNull_native();
    v1[2] = v144;
    sub_22C3736B4();
    v155 = sub_22C37BD98();
    sub_22C36E5AC(v155, v156, v157, v158);
    sub_22C369DA4();
    if (__OFADD__(v159, v160))
    {
      goto LABEL_82;
    }

    sub_22C50B42C();
    v161 = sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
    if (sub_22C6346A4(v161, v162, v161))
    {
      sub_22C3736B4();
      v163 = sub_22C37BD98();
      v151 = sub_22C36E5AC(v163, v164, v165, v166);
      sub_22C385F54();
      if (!v31)
      {
        goto LABEL_63;
      }
    }

    v6 = v1[2];
    if (v145)
    {
      sub_22C634630();
    }

    else
    {
      sub_22C36ED48(&v6[v151 >> 6]);
      sub_22C63419C(v174, v175, v176, v177, v178, v179, v180, v181, v252, v253, v254, v255, v256, v257, v258, v259, v260, *(&v260 + 1), v261, v262, v35);
      if (v141)
      {
        goto LABEL_83;
      }

      v6[2] = v182;
    }

    v1 = v273;
    (*(*(v273 + 224) + 8))(*(v273 + 232), *(v273 + 216));
    goto LABEL_61;
  }

LABEL_68:
  v222 = v1[21];
  sub_22C3AC228(v1[25], &qword_27D9BF4A8, &unk_22C922770);
  sub_22C90878C();
  sub_22C63417C();
  sub_22C646D68();
  v223 = sub_22C36CA88();
  v224(v223);
  sub_22C376738(v222);
  if (v31)
  {
    sub_22C3AC228(v1[21], &qword_27D9BAA18, &qword_22C911C40);
    goto LABEL_77;
  }

  v225 = *(v1 + 143);
  v226 = sub_22C36CB30();
  v227(v226);
  sub_22C90702C();
  v228 = sub_22C36BAFC();
  v230 = v229(v228);
  if (v230 != v225)
  {
    (*(v1[23] + 8))(v1[24], v1[22]);
    v240 = sub_22C381704();
    v241(v240);
    goto LABEL_77;
  }

  v231 = *(v1 + 144);
  v232 = sub_22C634528();
  v233(v232);
  sub_22C906F2C();
  sub_22C3699C8();
  v234 = sub_22C36BA00();
  if (v235(v234) == v231)
  {
    v236 = v1[17];
    v237 = sub_22C36BA00();
    v238(v237);
    v1[63] = *v236;
    v239 = swift_task_alloc();
    v1[64] = v239;
    *v239 = v1;
    sub_22C36EDAC(v239);
    sub_22C633FC0(v1[10]);
    goto LABEL_78;
  }

LABEL_76:
  (*(v1[23] + 8))(v1[24], v1[22]);
  v242 = sub_22C36BA00();
  v243(v242);
LABEL_77:
  v244 = sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
  v245 = sub_22C633EBC(v244);
  v1[67] = v245;
  v246 = sub_22C380174(v245, *(v9 + 128));
  v247(v246);
  v248 = swift_task_alloc();
  v1[68] = v248;
  *v248 = v1;
  sub_22C375F64(v248);
  sub_22C6344D4(v1[10]);
LABEL_78:
  sub_22C634908();

  sub_22C6230EC(v249, v250);
}

uint64_t sub_22C621D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C375EC8();

  v27 = sub_22C36BBCC();
  v28(v27);
  v29 = sub_22C383D1C(*(v26 + 520));
  v30(v29);

  sub_22C369A24();
  sub_22C377448();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22C621EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C375EC8();

  v27 = sub_22C383D1C(*(v26 + 552));
  v28(v27);

  sub_22C369A24();
  sub_22C377448();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void sub_22C621FD0()
{
  v43 = sub_22C90906C();
  v0 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22C9093BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v36 - v7;
  v9 = sub_22C90905C();
  v10 = *(v9 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v41 = *(v11 + 64);
    v36[1] = v9;
    v51 = (v41 + 32) & ~v41;
    v14 = v9 + v51;
    v15 = *(v11 + 56);
    v50 = (v11 + 72);
    v49 = *MEMORY[0x277D729E0];
    v48 = (v11 - 8);
    v39 = (v0 + 16);
    v40 = (v11 + 80);
    v38 = (v0 + 8);
    v16 = v15;
    v52 = MEMORY[0x277D84F90];
    v37 = xmmword_22C90F800;
    v46 = v13;
    v47 = v11;
    while (1)
    {
      v12(v8, v14, v2);
      v12(v6, v8, v2);
      v17 = (*v50)(v6, v2);
      if (v17 == v49)
      {
        (*v40)(v6, v2);
        v18 = swift_projectBox();
        v20 = v42;
        v19 = v43;
        (*v39)(v42, v18, v43);

        v21 = sub_22C90905C();
        (*v38)(v20, v19);
        (*v48)(v8, v2);
      }

      else
      {
        v44 = *v48;
        v44(v6, v2);
        sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
        v45 = v10;
        v22 = v2;
        v23 = v8;
        v24 = v6;
        v25 = v51;
        v21 = swift_allocObject();
        *(v21 + 16) = v37;
        v26 = v21 + v25;
        v6 = v24;
        v8 = v23;
        v2 = v22;
        v10 = v45;
        v12(v26, v8, v2);
        v44(v8, v2);
      }

      v27 = *(v21 + 16);
      v28 = *(v52 + 16);
      if (__OFADD__(v28, v27))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v52;
      if (!isUniquelyReferenced_nonNull_native || v28 + v27 > *(v52 + 24) >> 1)
      {
        sub_22C5903C0();
        v30 = v31;
      }

      v32 = *(v21 + 16);
      v52 = v30;
      if (v32)
      {
        if ((*(v30 + 24) >> 1) - *(v30 + 16) < v27)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v27)
        {
          v33 = *(v52 + 16);
          v34 = __OFADD__(v33, v27);
          v35 = v33 + v27;
          if (v34)
          {
            goto LABEL_23;
          }

          *(v52 + 16) = v35;
        }
      }

      else
      {

        if (v27)
        {
          goto LABEL_21;
        }
      }

      v14 += v16;
      --v10;
      v12 = v46;
      if (!v10)
      {

        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_22C62242C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a3;
  v100 = a1;
  v105 = a4;
  v91 = sub_22C901FAC();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22C9063DC();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v94 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22C90880C();
  v99 = *(v104 - 8);
  v8 = MEMORY[0x28223BE20](v104);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = &v90 - v11;
  v12 = sub_22C3A5908(&qword_27D9BC038, &unk_22C922590);
  MEMORY[0x28223BE20](v12 - 8);
  v98 = &v90 - v13;
  v101 = sub_22C90832C();
  v95 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_22C90977C();
  v15 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22C9094AC();
  v17 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C90952C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v90 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v90 - v27;
  v130 = sub_22C9093BC();
  MEMORY[0x28223BE20](v130);
  v129 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a2;
  v31 = *(a2 + 16);
  if (v31)
  {
    v33 = *(v29 + 16);
    v32 = v29 + 16;
    v126 = v33;
    v34 = v15;
    v35 = v102 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v121 = *(v32 + 56);
    v124 = (v20 + 88);
    v125 = (v20 + 16);
    v123 = *MEMORY[0x277D72D18];
    v128 = (v20 + 8);
    v112 = (v20 + 32);
    v111 = (v20 + 96);
    v110 = (v17 + 16);
    v109 = (v34 + 8);
    v108 = (v17 + 8);
    v107 = *MEMORY[0x277D72D28];
    v106 = (v20 + 104);
    v127 = v32;
    v122 = (v32 - 8);
    v115 = v23;
    v116 = v6;
    v113 = v28;
    v114 = v26;
    do
    {
      v126(v129, v35, v130);
      sub_22C90935C();
      (*v125)(v23, v28, v19);
      v36 = (*v124)(v23, v19);
      if (v36 == v123)
      {
        (*v111)(v23, v19);
        v37 = swift_projectBox();
        v38 = v117;
        v39 = v118;
        (*v110)(v117, v37, v118);

        v40 = swift_allocObject();
        v41 = v119;
        sub_22C90948C();
        v42 = sub_22C9096FC();
        v43 = v10;
        v45 = v44;
        (*v109)(v41, v120);
        v40[2] = v42;
        v40[3] = v45;
        v46 = sub_22C90949C();
        v48 = v47;
        v49 = v38;
        v50 = v39;
        v28 = v113;
        v26 = v114;
        (*v108)(v49, v50);
        v51 = *v128;
        (*v128)(v28, v19);
        v40[4] = v46;
        v40[5] = v48;
        v10 = v43;
        *v26 = v40;
        v23 = v115;
        v6 = v116;
        (*v106)(v26, v107, v19);
      }

      else
      {
        v51 = *v128;
        (*v128)(v23, v19);
        (*v112)(v26, v28, v19);
      }

      if (qword_27D9BA6F8 != -1)
      {
        swift_once();
      }

      sub_22C37AA60(v19, qword_27D9E3FD0);
      v52 = sub_22C90950C();
      v51(v26, v19);
      (*v122)(v129, v130);
      if ((v52 & 1) == 0)
      {
        goto LABEL_18;
      }

      v35 += v121;
    }

    while (--v31);
  }

  v53 = v97;
  sub_22C90878C();
  v54 = v98;
  v55 = v100;
  sub_22C64871C();
  v56 = *(v99 + 8);
  v56(v53, v104);
  v57 = v101;
  v58 = sub_22C370B74(v54, 1, v101);
  v59 = v105;
  if (v58 == 1)
  {
    sub_22C3AC228(v54, &qword_27D9BC038, &unk_22C922590);
    v60 = 1;
  }

  else
  {
    v61 = v95;
    v62 = v96;
    (*(v95 + 32))(v96, v54, v57);
    sub_22C90878C();
    v63 = sub_22C5F2A5C(v10);
    v64 = v57;
    v65 = v104;
    v66 = v63;
    v56(v10, v104);
    if ((v66 & 1) == 0)
    {
      (*(v61 + 8))(v62, v64);
LABEL_18:
      v60 = 1;
      v59 = v105;
      goto LABEL_19;
    }

    sub_22C90878C();
    sub_22C648928();
    v68 = v67;
    v70 = v69;
    v56(v10, v65);
    if (v70 || (sub_22C90878C(), v68 = sub_22C5F2BA4(), v70 = v71, v56(v10, v65), v70))
    {
      v72 = v61;
    }

    else
    {
      sub_22C903F8C();
      v77 = v90;
      v78 = v55;
      v79 = v91;
      (*(v90 + 16))(v6, v78, v91);
      v80 = sub_22C9063CC();
      v81 = sub_22C90AADC();
      v72 = v61;
      if (os_log_type_enabled(v80, v81))
      {
        v82 = v6;
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v131 = v84;
        *v83 = 136315138;
        sub_22C6339B0(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v85 = sub_22C90B47C();
        v86 = v79;
        v88 = v87;
        (*(v77 + 8))(v82, v86);
        v89 = sub_22C36F9F4(v85, v88, &v131);

        *(v83 + 4) = v89;
        _os_log_impl(&dword_22C366000, v80, v81, "Unable to find in-app search string for photo picker for statement ID: %s", v83, 0xCu);
        sub_22C36FF94(v84);
        MEMORY[0x2318B9880](v84, -1, -1);
        MEMORY[0x2318B9880](v83, -1, -1);
      }

      else
      {

        (*(v77 + 8))(v6, v79);
      }

      (*(v92 + 8))(v94, v93);
      v68 = 0;
      v70 = 0;
    }

    v73 = v96;
    v59 = v105;
    v74 = v102;

    MEMORY[0x2318B3BF0](v68, v70, v74);
    (*(v72 + 8))(v73, v64);
    v60 = 0;
  }

LABEL_19:
  v75 = sub_22C90672C();
  return sub_22C36C640(v59, v60, 1, v75);
}

uint64_t sub_22C6230EC(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_22C9066DC();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v5 = sub_22C908AEC();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  type metadata accessor for StructuredQueryConverter(0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v6 = sub_22C90952C();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v3[34] = swift_task_alloc();
  v7 = sub_22C90941C();
  v3[35] = v7;
  v3[36] = *(v7 - 8);
  v3[37] = swift_task_alloc();
  v8 = sub_22C90654C();
  v3[38] = v8;
  v3[39] = *(v8 - 8);
  v3[40] = swift_task_alloc();
  v9 = sub_22C90832C();
  v3[41] = v9;
  v3[42] = *(v9 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v10 = sub_22C9070DC();
  v3[47] = v10;
  v3[48] = *(v10 - 8);
  v3[49] = swift_task_alloc();
  v11 = sub_22C90880C();
  v3[50] = v11;
  v3[51] = *(v11 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v12 = sub_22C901FAC();
  v3[56] = v12;
  v3[57] = *(v12 - 8);
  v3[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C623584, 0, 0);
}

uint64_t sub_22C623F40()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 568) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C624048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v27 = *(v26 + 568);
  v28 = sub_22C71BA0C();
  v231 = v26;
  if (v27)
  {
    v29 = *(v26 + 456);
    v218 = *(v26 + 448);
    v220 = *(v26 + 464);
    v30 = *(v26 + 344);
    v31 = *(v231 + 336);
    v216 = *(v231 + 328);
    v32 = *(v231 + 296);
    v33 = *(v231 + 288);
    v213 = *(v231 + 280);
    v34 = *(v231 + 216);

    sub_22C37F938();
    sub_22C62E9E0(v34, v35);
    v36 = sub_22C36CC9C();
    v226 = v37;
    (v37)(v36);
    (*(v33 + 8))(v32, v213);
    (*(v31 + 8))(v30, v216);
    v38 = v231;
    (*(v29 + 8))(v220, v218);

    goto LABEL_3;
  }

  v41 = v28;
  if (!v28)
  {
    v210 = *(v26 + 488);
    v57 = *(v26 + 464);
    v58 = *(v26 + 448);
    v59 = *(v26 + 336);
    v219 = *(v26 + 328);
    v221 = *(v26 + 344);
    v60 = *(v26 + 288);
    v214 = *(v26 + 280);
    v217 = *(v26 + 296);
    v61 = *(v26 + 264);
    v62 = *(v231 + 232);
    v228 = *(v231 + 224);
    v223 = *(v231 + 216);

    type metadata accessor for InterpreterError(0);
    sub_22C372ACC();
    v65 = sub_22C6339B0(v63, v64);
    sub_22C36D148(v65);
    v210(v66, v57, v58);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22C37F938();
    sub_22C62E9E0(v223, v67);
    v68 = v228;
    v226 = *(v62 + 8);
    v226(v61, v68);
    v38 = v231;
    (*(v60 + 8))(v217, v214);
    (*(v59 + 8))(v221, v219);
    v69 = sub_22C372280();
    v70(v69);
LABEL_3:

    v226(*(v38 + 248), *(v38 + 224));

    sub_22C369A24();
    sub_22C5CAD40();

    __asm { BRAA            X1, X16 }
  }

  v42 = *(v28 + 16);
  if (v42)
  {
    *(v26 + 112) = MEMORY[0x277D84F90];
    sub_22C3B79D8(0, v42, 0);
    v43 = *(v26 + 112);
    v44 = *(sub_22C90665C() - 8);
    v227 = *(v44 + 16);
    v45 = v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v46 = *(v44 + 72);
    do
    {
      v47 = *(v26 + 640);
      v48 = *(v26 + 168);
      v49 = *(v26 + 144);
      v50 = *(v26 + 152);
      v51 = sub_22C370114();
      v227(v51);
      (*(v50 + 104))(v48, v47, v49);
      *(v26 + 112) = v43;
      v53 = *(v43 + 16);
      v52 = *(v43 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_22C3B79D8(v52 > 1, v53 + 1, 1);
        v43 = *(v26 + 112);
      }

      v54 = *(v26 + 168);
      v55 = *(v26 + 144);
      v56 = *(v26 + 152);
      *(v43 + 16) = v53 + 1;
      (*(v56 + 32))(v43 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v53, v54, v55);
      v45 += v46;
      --v42;
    }

    while (v42);
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v71 = *(v26 + 336);
  v229 = *(v26 + 344);
  v72 = *(v26 + 288);
  v222 = *(v26 + 296);
  v224 = *(v26 + 328);
  v73 = *(v26 + 280);
  v74 = *(v26 + 264);
  v232 = *(v26 + 248);
  v75 = *(v26 + 224);
  v76 = *(v26 + 232);
  v77 = *(v26 + 216);
  v78 = v43;
  v79 = v26;
  sub_22C3CE514(v78);
  sub_22C37F938();
  sub_22C62E9E0(v77, v80);
  v81 = *(v76 + 8);
  v81(v74, v75);
  (*(v72 + 8))(v222, v73);
  (*(v71 + 8))(v229, v224);

  v81(v232, v75);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v82 = *(v79 + 544) + 1;
        v83 = *(v79 + 528);
        if (v82 == *(v79 + 536))
        {
          do
          {

            do
            {
              v84 = *(v79 + 472);
              v85 = *(v79 + 496) + 1;
              (*(*(v79 + 456) + 8))(*(v79 + 464), *(v79 + 448));
              if (v85 == v84)
              {
                if (!*(*(v79 + 96) + 16))
                {
                }

                sub_22C5CAD40();

                __asm { BRAA            X2, X16 }
              }

              v86 = *(v79 + 464);
              v87 = *(v79 + 408);
              sub_22C6342A4();
              *(v231 + 496) = v88;
              *(v231 + 504) = v89;
              v90(v86);
              sub_22C90878C();
              v91 = sub_22C9087DC();
              v92 = *(v87 + 8);
              *(v231 + 512) = v92;
              *(v231 + 520) = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v93 = sub_22C36D39C();
              v79 = v231;
              v92(v93);
              *(v231 + 104) = v91;
              v94 = sub_22C36CC9C();
              sub_22C3A5908(v94, v95);
              sub_22C369E24();
              sub_22C50B118(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
              v96 = sub_22C907E1C();
            }

            while ((v96 & 1) == 0);
            v97 = *(v231 + 464);
            v98 = *(v231 + 440);
            v99 = *(v231 + 400);
            sub_22C90878C();
            sub_22C647C78(v97, v100, v101, v102, v103, v104, v105, v106, v201, v202, v203, v204, v205, v206, v207, v208, v209, v211, v212, v215);
            v108 = v107;
            (v92)(v98, v99);
            v109 = *(v108 + 16);
            if (v109)
            {
              sub_22C47278C();
              v111 = v108 + v110;
              v230 = *(v112 + 72);
              v225 = *(v112 + 16);
              v83 = MEMORY[0x277D84F90];
              do
              {
                v233 = v83;
                v113 = *(v79 + 612);
                v115 = *(v79 + 312);
                v114 = *(v79 + 320);
                v116 = *(v79 + 304);
                v117 = sub_22C380120();
                v225(v117);
                sub_22C90702C();
                v118 = sub_22C372FA4();
                v119(v118);
                if ((*(v115 + 88))(v114, v116) == v113)
                {
                  v121 = *(v79 + 360);
                  v120 = *(v79 + 368);
                  v122 = *(v79 + 328);
                  v123 = *(v79 + 336);
                  v124 = sub_22C634528();
                  v125(v124);
                  v126 = *(v123 + 32);
                  v127 = sub_22C372280();
                  (v126)(v127);
                  sub_22C3839D8();
                  v126();
                  (v126)(v120, v121, v122);
                  v83 = v233;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_22C36D270();
                    sub_22C59520C();
                    v83 = v132;
                  }

                  v129 = *(v83 + 16);
                  v128 = *(v83 + 24);
                  v79 = v231;
                  if (v129 >= v128 >> 1)
                  {
                    sub_22C36A958(v128);
                    sub_22C59520C();
                    v83 = v133;
                  }

                  *(v83 + 16) = v129 + 1;
                  sub_22C47278C();
                  (v126)(v83 + v130 + *(v131 + 72) * v129);
                }

                else
                {
                  (*(*(v79 + 312) + 8))(*(v79 + 320), *(v79 + 304));
                  v83 = v233;
                }

                v111 += v230;
                --v109;
              }

              while (v109);
            }

            else
            {

              v83 = MEMORY[0x277D84F90];
            }

            *(v79 + 528) = v83;
            v134 = *(v83 + 16);
            *(v79 + 536) = v134;
          }

          while (!v134);
          v82 = 0;
          *(v79 + 648) = *(*(v79 + 336) + 80);
        }

        *(v79 + 544) = v82;
        if (v82 >= *(v83 + 16))
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          return;
        }

        v135 = sub_22C634850();
        v136(v135);
        sub_22C9082FC();
        v79 = v231;
        sub_22C381514();
        v140 = sub_22C370B74(v137, v138, v139);
        v141 = *(v231 + 272);
        if (v140 != 1)
        {
          break;
        }

        (*(*(v231 + 336) + 8))(*(v231 + 344), *(v231 + 328));
        sub_22C3AC228(v141, &qword_27D9BC028, &unk_22C9134B0);
      }

      v142 = *(v231 + 296);
      v143 = sub_22C36BA00();
      v144(v143);
      sub_22C9093DC();
      sub_22C6341FC();
      if (v146)
      {
        while (!*(v142 + v145))
        {
          sub_22C634464();
          if (!v147)
          {
            goto LABEL_43;
          }
        }

        sub_22C634168();
        if (!v175)
        {
          break;
        }
      }

LABEL_43:

      v152 = sub_22C36CA88();
      v153(v152);
      v154 = sub_22C36D39C();
      v79 = v231;
      v155(v154);
    }

    if (-v148 < 0)
    {
      goto LABEL_70;
    }

    v156 = v151 - v148;
    if (v156 >= v149)
    {
      goto LABEL_70;
    }

    if (((*(v142 + v150) >> v151) & 1) == 0)
    {
      goto LABEL_71;
    }

    v234 = *(v231 + 616);
    v157 = *(*(v231 + 232) + 16);
    (v157)(*(v231 + 256), *(v142 + 48) + *(*(v231 + 232) + 72) * v156, *(v231 + 224));

    v158 = sub_22C36D39C();
    v159(v158);
    v160 = sub_22C372280();
    v157(v160);
    v161 = sub_22C36CA88();
    if (v162(v161) != v234)
    {
      sub_22C6344A4();
      v175 = v175 || v173 == v174;
      if (v175)
      {
        goto LABEL_64;
      }

      v168 = *(*(v231 + 232) + 8);
      (v168)(*(v231 + 264), *(v231 + 224));
      v176 = sub_22C36ECB4();
      v177(v176);
      v178 = sub_22C36BBCC();
      v179(v178);
      goto LABEL_57;
    }

    v163 = *(v231 + 628);
    (v157)(*(v231 + 240), *(v231 + 248), *(v231 + 224));
    v164 = sub_22C36BBCC();
    v165(v164);
    sub_22C634688();
    swift_projectBox();
    sub_22C36BBA8();
    v167 = (*(v166 + 88))();
    if (v167 == v163)
    {
      goto LABEL_63;
    }

    if (v167 == *(v231 + 632))
    {
      break;
    }

    if (v167 == *(v231 + 636))
    {
LABEL_63:

LABEL_64:
      sub_22C633DD0();
      sub_22C38A084(v183);
      v184();
      v185 = sub_22C90878C();
      MEMORY[0x2318B57A0](v185);
      v186 = sub_22C633E70();
      v187(v186);
      sub_22C634810();
      v188();
      sub_22C633E40();
      swift_task_alloc();
      sub_22C36CC90();
      *(v231 + 592) = v189;
      *v189 = v190;
      sub_22C633BA8(v189);
      goto LABEL_66;
    }

    v168 = *(*(v231 + 232) + 8);
    (v168)(*(v231 + 264), *(v231 + 224));
    v169 = sub_22C36CA88();
    v170(v169);
    v171 = sub_22C36D39C();
    v172(v171);

LABEL_57:
    v180 = sub_22C634494();
    v168(v180);
    v79 = v231;
  }

  sub_22C633E94();
  sub_22C6341E4();
  sub_22C90878C();
  v191 = sub_22C36D29C();
  v192(v191);
  sub_22C633E28();
  swift_task_alloc();
  sub_22C36CC90();
  *(v231 + 560) = v193;
  *v193 = v194;
  sub_22C633B70(v193);
LABEL_66:
  sub_22C5CAD40();

  sub_22C7177DC(v195, v196, v197, v198, v199);
}

uint64_t sub_22C624F88()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 600) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C625B3C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 456);
  v3 = *(v0 + 336);
  v9 = *(v0 + 328);
  v10 = *(v0 + 344);
  (*(v0 + 512))(*(v0 + 424), *(v0 + 400));

  v4 = sub_22C36CA88();
  v1(v4);
  v5 = sub_22C36D264();
  v6(v5);
  (*(v3 + 8))(v10, v9);
  (*(v2 + 8))(*(v0 + 464), *(v0 + 448));

  sub_22C369A24();

  return v7();
}

uint64_t sub_22C625D58()
{
  v1 = v0[57];
  v10 = v0[58];
  v9 = v0[56];
  v2 = *(v0[29] + 8);
  v2(v0[33], v0[28]);
  v3 = sub_22C36FC2C();
  v4(v3);
  v5 = sub_22C36ECB4();
  v6(v5);
  (*(v1 + 8))(v10, v9);

  v2(v0[31], v0[28]);

  sub_22C369A24();

  return v7();
}

uint64_t sub_22C625F7C(uint64_t a1)
{
  v1 = *(sub_22C90786C() + 16);

  v2 = sub_22C90789C();
  v3 = v2;
  if (v1)
  {
    v4 = *(v2 + 16);

    if (v4)
    {
      v5 = sub_22C90789C();
      MEMORY[0x28223BE20](v5);
      v3 = sub_22C604D3C(MEMORY[0x277D84FA0]);
    }

    else
    {
      sub_22C3A5908(&qword_27D9BF440, &qword_22C922700);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      *(inited + 32) = sub_22C90786C();
      sub_22C5EAA78();
      return v7;
    }
  }

  return v3;
}

uint64_t sub_22C626088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a4;
  v97 = a2;
  v96 = a1;
  v116 = a6;
  v8 = sub_22C3A5908(&qword_27D9BF4D8, &unk_22C923A50);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v86 - v9;
  v92 = sub_22C90941C();
  v95 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v93 = (&v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = sub_22C9026BC();
  v105 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v103 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C907DEC();
  v101 = *(v12 - 8);
  v102 = v12;
  MEMORY[0x28223BE20](v12);
  v100 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9020CC();
  v98 = *(v14 - 8);
  v99 = v14;
  MEMORY[0x28223BE20](v14);
  v104 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C901FAC();
  v109 = *(v16 - 8);
  v110 = v16;
  MEMORY[0x28223BE20](v16);
  v108 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  MEMORY[0x28223BE20](v18 - 8);
  v111 = &v86 - v19;
  v113 = sub_22C906ECC();
  v107 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v106 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C90654C();
  v114 = *(v21 - 8);
  v115 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C90832C();
  v112 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v86 - v28;
  v30 = sub_22C9070DC();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v118;
  result = sub_22C64962C(a3);
  if (!v34)
  {
    v87 = a5;
    v90 = v33;
    v89 = v26;
    v118 = v31;
    v88 = v24;
    v36 = v117;
    if (sub_22C370B74(v29, 1, v30) == 1)
    {
      sub_22C3AC228(v29, &qword_27D9BAA18, &qword_22C911C40);
      v37 = 1;
      v38 = v116;
      v39 = v36;
      return sub_22C36C640(v38, v37, 1, v39);
    }

    v86 = 0;
    v40 = v118;
    v41 = v90;
    (*(v118 + 32))(v90, v29, v30);
    sub_22C90702C();
    v43 = v114;
    v42 = v115;
    if ((*(v114 + 88))(v23, v115) == *MEMORY[0x277D1DA48])
    {
      (*(v43 + 96))(v23, v42);
      v44 = v112;
      (*(v112 + 32))(v89, v23, v88);
      v119 = sub_22C9087DC();
      v45 = v108;
      sub_22C9068FC();
      sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
      sub_22C50B118(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
      v46 = v111;
      sub_22C907EBC();
      v47 = v46;
      (*(v109 + 8))(v45, v110);

      v48 = v113;
      if (sub_22C370B74(v46, 1, v113) != 1)
      {
        v49 = v88;
        v115 = v30;
        v51 = v106;
        v50 = v107;
        (*(v107 + 32))(v106, v47, v48);
        v52 = v89;
        v39 = v36;
        if (sub_22C5F2A5C(v87))
        {
          v53 = v100;
          sub_22C906EBC();
          v54 = v103;
          sub_22C907DAC();
          (*(v101 + 8))(v53, v102);
          v55 = v105;
          if ((*(v105 + 88))(v54, v39) == *MEMORY[0x277D1CBF0])
          {
            (*(v55 + 96))(v54, v39);
            v56 = v98;
            v57 = v54;
            v58 = v99;
            (*(v98 + 32))(v104, v57, v99);
            v59 = sub_22C9020AC();
            if (v60)
            {
              v114 = v59;
              v61 = v95;
            }

            else
            {
              v62 = v89;
              v63 = sub_22C5F2BA4();
              v61 = v95;
              if (!v64)
              {
                type metadata accessor for InterpreterError(0);
                sub_22C6339B0(&qword_27D9BAA40, type metadata accessor for InterpreterError);
                swift_allocError();
                v85 = v90;
                sub_22C9068FC();
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
                (*(v56 + 8))(v104, v58);
                (*(v107 + 8))(v106, v113);
                (*(v112 + 8))(v62, v88);
                return (*(v118 + 8))(v85, v115);
              }

              v114 = v63;
            }

            if (sub_22C5FB484())
            {
              v65 = v92;
              v66 = swift_allocBox();
              v68 = v67;
              v69 = sub_22C90952C();
              v70 = swift_allocBox();
              v72 = v71;
              if (qword_27D9BA6F8 != -1)
              {
                swift_once();
              }

              v73 = sub_22C37AA60(v69, qword_27D9E3FD0);
              (*(*(v69 - 8) + 16))(v72, v73, v69);
              *v68 = v70;
              v74 = *(v95 + 104);
              v74(v68, *MEMORY[0x277D72AD0], v65);
              v75 = v93;
              *v93 = v66;
              v74(v75, *MEMORY[0x277D72AB0], v65);
            }

            else
            {
              v76 = sub_22C90952C();
              v77 = swift_allocBox();
              v79 = v78;
              if (qword_27D9BA6F8 != -1)
              {
                swift_once();
              }

              v80 = sub_22C37AA60(v76, qword_27D9E3FD0);
              (*(*(v76 - 8) + 16))(v79, v80, v76);
              v81 = v93;
              *v93 = v77;
              (*(v61 + 104))(v81, *MEMORY[0x277D72AD0], v92);
            }

            v82 = v94;
            sub_22C90284C();
            v83 = *MEMORY[0x277D1CDE0];
            v84 = sub_22C90285C();
            (*(*(v84 - 8) + 104))(v82, v83, v84);
            sub_22C36C640(v82, 0, 1, v84);

            v38 = v116;
            sub_22C90282C();
            (*(v98 + 8))(v104, v99);
            (*(v107 + 8))(v106, v113);
            (*(v112 + 8))(v89, v88);
            (*(v118 + 8))(v90, v115);
            (*(v55 + 104))(v38, *MEMORY[0x277D1CBB8], v39);
            v37 = 0;
            return sub_22C36C640(v38, v37, 1, v39);
          }

          (*(v50 + 8))(v51, v48);
          (*(v44 + 8))(v89, v49);
          (*(v118 + 8))(v90, v115);
          (*(v55 + 8))(v54, v39);
        }

        else
        {
          (*(v50 + 8))(v51, v48);
          (*(v44 + 8))(v52, v49);
          (*(v118 + 8))(v90, v115);
        }

        v37 = 1;
        v38 = v116;
        return sub_22C36C640(v38, v37, 1, v39);
      }

      (*(v44 + 8))(v89, v88);
      (*(v118 + 8))(v41, v30);
      sub_22C3AC228(v46, &qword_27D9BC0A0, &unk_22C922F30);
    }

    else
    {
      (*(v40 + 8))(v41, v30);
      (*(v43 + 8))(v23, v42);
    }

    v37 = 1;
    v38 = v116;
    v39 = v36;
    return sub_22C36C640(v38, v37, 1, v39);
  }

  return result;
}

uint64_t sub_22C626F3C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (sub_22C628D18(), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = sub_22C908C5C();
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_22C908C5C();
    v10 = a3;
    v11 = 1;
  }

  return sub_22C36C640(v10, v11, 1, v12);
}

uint64_t sub_22C627008()
{
  v0 = sub_22C9093BC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  sub_22C90774C();
  v7 = sub_22C90938C();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v6, v0);
  sub_22C90774C();
  v11 = sub_22C90938C();
  v13 = v12;
  v10(v4, v0);
  if (v7 == v11 && v9 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_22C90B4FC();
  }

  return v15 & 1;
}

void sub_22C627194()
{
  sub_22C36BA7C();
  v107 = v2;
  v112 = v3;
  v5 = v4;
  v115 = v6;
  v116 = sub_22C9069BC();
  sub_22C369824();
  v113 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C3698F8(v10 - v9);
  v11 = sub_22C901FAC();
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C3698F8(v14 - v13);
  v104 = sub_22C908BBC();
  sub_22C369824();
  v103 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  sub_22C3698F8(v18 - v17);
  v101 = sub_22C908C3C();
  sub_22C369824();
  v100 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  sub_22C3698F8(v22 - v21);
  sub_22C908C5C();
  sub_22C369824();
  v118 = v23;
  v119 = v24;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v122 = v26 - v25;
  sub_22C36BA0C();
  v27 = sub_22C9093BC();
  sub_22C369824();
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C36D234(&v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v97 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v97 - v37;
  v39 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v40 = sub_22C369914(v39);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C385F64();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA64();
  v121 = v46;
  v117 = v0;
  v47 = sub_22C90789C();
  v48 = *(v29 + 16);
  v106 = v5;
  v48(v38, v5, v27);
  v49 = sub_22C36D39C();
  v98 = v48;
  (v48)(v49);
  v50 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v51 = swift_allocObject();
  v52 = *(v29 + 32);
  v120 = v27;
  v52(v51 + v50, v38, v27);
  v124 = v47;
  v125 = sub_22C633870;
  v126 = v51;
  v127 = sub_22C630074;
  v128 = 0;
  sub_22C5C9D58();
  if (v54)
  {
    goto LABEL_15;
  }

  if (*(v124 + 36) != v53)
  {
    __break(1u);
LABEL_15:
    v95 = sub_22C6344E4();
    v96(v95);
    __break(1u);
    goto LABEL_16;
  }

  sub_22C38A0A8();
  if (v55 != v56)
  {
    v62 = sub_22C3AFF34();
    MEMORY[0x28223BE20](v62);
    *(&v97 - 2) = v36;
    v63 = v108;
    sub_22C6B0AA0();
    v64 = sub_22C6344E4();
    v65(v64);

    v66 = v109;
    sub_22C3D3364();
    v67 = sub_22C3707B4();
    v68 = v118;
    sub_22C36D0A8(v67, v69, v118);
    if (!v70)
    {
      (*(v119 + 32))(v1, v66, v68);
      sub_22C3AC228(v63, &qword_27D9BB628, &unk_22C920580);
      v59 = 0;
      v60 = v68;
      v61 = v112;
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v57 = sub_22C6344E4();
  v58(v57);
  v59 = 1;
  v60 = v118;
  v61 = v112;
LABEL_7:
  sub_22C36C640(v1, v59, 1, v60);

  MEMORY[0x28223BE20](v71);
  *(&v97 - 2) = v61;
  sub_22C6024D8(sub_22C633908, (&v97 - 4), v121);
  sub_22C3AC228(v1, &qword_27D9BB628, &unk_22C920580);
  v72 = v110;
  sub_22C3D3364();
  sub_22C36D0A8(v72, 1, v60);
  v73 = v122;
  if (v70)
  {
    v98(v99, v106, v120);
    (*(v100 + 104))(v102, *MEMORY[0x277D1E928], v101);
    (*(v103 + 16))(v105, v61, v104);
    sub_22C9087AC();
    sub_22C90882C();
    v73 = v122;

    sub_22C3819EC();
    sub_22C908C1C();
    sub_22C36D0A8(v72, 1, v60);
    v77 = v117;
    v78 = v116;
    v74 = v119;
    v79 = v113;
    if (!v70)
    {
      sub_22C3AC228(v72, &qword_27D9BB628, &unk_22C920580);
    }
  }

  else
  {
    v74 = v119;
    v75 = sub_22C36CB30();
    v76(v75, v72, v60);
    v77 = v117;
    v78 = v116;
    v79 = v113;
  }

  v80 = v115;
  (*(v79 + 16))(v114, v115, v78);
  sub_22C63489C();
  v81(v111, v73, v60);
  sub_22C36BECC();
  sub_22C36C640(v82, v83, v84, v60);
  v85 = sub_22C90785C();
  sub_22C603A20();
  v85(v123, 0);
  v86 = sub_22C90789C();
  MEMORY[0x28223BE20](v86);
  *(&v97 - 2) = v80;
  v87 = MEMORY[0x277D84FA0];
  sub_22C604D3C(MEMORY[0x277D84FA0]);

  sub_22C63475C();
  sub_22C9078AC();
  sub_22C90789C();
  sub_22C3A5908(&qword_27D9BF440, &qword_22C922700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  sub_22C382D70();
  sub_22C6339B0(v89, v90);
  *(inited + 32) = sub_22C909F0C();
  sub_22C5EAA78();
  v92 = v91;
  sub_22C37170C();
  sub_22C5DC064();
  v94 = v93;

  if (v94)
  {
    sub_22C90788C();
    sub_22C385D88();

    *v92 = v87;
    v77(v123, 0);
  }

  (*(v74 + 8))(v122, v60);
  sub_22C3AC228(v121, &qword_27D9BB628, &unk_22C920580);
  sub_22C36CC48();
}

uint64_t sub_22C627BF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C9093BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90774C();
  v6 = sub_22C9093AC();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_22C627CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C908BBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C908C5C();
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  return sub_22C908BDC();
}

void sub_22C6280AC()
{
  sub_22C633B34();
  sub_22C902D0C();
  sub_22C6339B0(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
  sub_22C37335C();
  v0 = sub_22C909F7C();
  sub_22C375D20(v0, v0, MEMORY[0x277D1D800], &qword_27D9BC488);
}

void sub_22C628164()
{
  sub_22C633B34();
  sub_22C90430C();
  sub_22C6339B0(&qword_27D9BC810, MEMORY[0x277D85578]);
  sub_22C37335C();
  v0 = sub_22C909F7C();
  sub_22C375D20(v0, v0, MEMORY[0x277D85578], &qword_27D9BC808);
}

unint64_t sub_22C62821C()
{
  sub_22C634010();
  sub_22C48A9B4(v4, v0);
  sub_22C90B66C();
  v1 = sub_22C633E0C();

  return sub_22C6292F4(v1, v2);
}

void sub_22C628274()
{
  sub_22C633B34();
  sub_22C901FAC();
  sub_22C6339B0(&qword_2814357B0, MEMORY[0x277D1C338]);
  sub_22C37335C();
  v0 = sub_22C909F7C();
  sub_22C375D20(v0, v0, MEMORY[0x277D1C338], &qword_27D9BAA28);
}

void sub_22C628358()
{
  sub_22C633B34();
  sub_22C90963C();
  sub_22C6339B0(&qword_27D9BC850, MEMORY[0x277D72E18]);
  sub_22C37335C();
  v0 = sub_22C909F7C();
  sub_22C375D20(v0, v0, MEMORY[0x277D72E18], &unk_27D9BF4F8);
}

unint64_t sub_22C628410()
{
  sub_22C634010();
  sub_22C48A9B4(v4, *v0);
  sub_22C471960(v4, *(v0 + 8));
  type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  sub_22C90963C();
  sub_22C6339B0(&qword_27D9BC850, MEMORY[0x277D72E18]);
  sub_22C909F8C();
  sub_22C90B66C();
  v1 = sub_22C633E0C();

  return sub_22C629ECC(v1, v2);
}

void sub_22C6284D4()
{
  sub_22C633B34();
  sub_22C90941C();
  sub_22C6339B0(&qword_27D9BAAA0, MEMORY[0x277D72B00]);
  sub_22C37335C();
  v0 = sub_22C909F7C();
  sub_22C375D20(v0, v0, MEMORY[0x277D72B00], &qword_27D9BF510);
}

unint64_t sub_22C62858C(uint64_t a1)
{
  v1 = a1;
  v2 = a1;
  sub_22C90B62C();
  sub_22C90B64C();
  if (v2 != 3)
  {
    MEMORY[0x2318B8B10](v1);
  }

  v3 = sub_22C90B66C();

  return sub_22C62A2B8(v1, v3);
}

unint64_t sub_22C628620(char a1)
{
  sub_22C63443C();
  sub_22C90B64C();
  if ((a1 & 1) == 0)
  {
    MEMORY[0x2318B8B10](0);
  }

  v2 = sub_22C90B66C();

  return sub_22C62A33C(a1 & 1, v2);
}

unint64_t sub_22C6286A0(uint64_t a1)
{
  v1 = a1;
  sub_22C63443C();
  MEMORY[0x2318B8B10](v1);
  v2 = sub_22C90B66C();
  return sub_22C62A3B0(v1, v2);
}

unint64_t sub_22C628700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C63443C();
  sub_22C634004();
  sub_22C909FFC();
  sub_22C909FFC();
  sub_22C90B66C();
  v6 = sub_22C3806B8();

  return sub_22C62A410(v6, v7, a3, a4, v8);
}

void sub_22C6287BC()
{
  sub_22C633B34();
  sub_22C902C9C();
  sub_22C6339B0(&qword_27D9BC1A8, MEMORY[0x277D1D780]);
  sub_22C37335C();
  v0 = sub_22C909F7C();
  sub_22C375D20(v0, v0, MEMORY[0x277D1D780], &unk_27D9BF518);
}

void sub_22C628874()
{
  sub_22C633B34();
  sub_22C9014CC();
  sub_22C6339B0(&qword_27D9BF3F0, MEMORY[0x277D78298]);
  sub_22C37335C();
  v0 = sub_22C909F7C();
  sub_22C375D20(v0, v0, MEMORY[0x277D78298], &unk_27D9BF3F8);
}

void sub_22C62892C(uint64_t a1)
{
  sub_22C90952C();
  sub_22C6339B0(&qword_28142FA80, MEMORY[0x277D72D58]);
  sub_22C909F7C();
  sub_22C62917C();
}

unint64_t sub_22C628A00()
{
  sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  sub_22C50B118(&qword_27D9BCFF0, &qword_27D9BCFE8, &qword_22C917388);
  sub_22C36D29C();
  sub_22C909F7C();
  v0 = sub_22C37FDE8();

  return sub_22C62A50C(v0, v1);
}

unint64_t sub_22C628AA0()
{
  sub_22C634010();
  sub_22C488960(v3);
  sub_22C90B66C();
  v0 = sub_22C633E0C();

  return sub_22C62A6CC(v0, v1);
}

unint64_t sub_22C628AF8(uint64_t a1)
{
  v1 = a1;
  sub_22C63443C();
  sub_22C90B64C();
  v2 = sub_22C90B66C();

  return sub_22C62A954(v1, v2);
}

unint64_t sub_22C628B5C(double a1)
{
  v2 = sub_22C90B61C();

  return sub_22C62A9B8(v2, a1);
}

uint64_t sub_22C628BA8(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_22C63443C();
  a2(v8);
  v5 = sub_22C90B66C();

  return a3(a1, v5);
}

unint64_t sub_22C628C20(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x2318B8AE0](*(v1 + 40), a1, 4);

  return sub_22C62AB70(v2, v3);
}

unint64_t sub_22C628C68()
{
  sub_22C634010();
  sub_22C909FFC();
  sub_22C909FFC();
  sub_22C90B66C();
  v0 = sub_22C633E0C();

  return sub_22C62ABD0(v0, v1);
}

unint64_t sub_22C628CD4(uint64_t a1)
{
  v2 = sub_22C90B61C();

  return sub_22C62ACF4(a1, v2);
}

void sub_22C628D18()
{
  sub_22C633B34();
  sub_22C9069BC();
  sub_22C6339B0(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
  sub_22C37335C();
  v0 = sub_22C909F7C();
  sub_22C375D20(v0, v0, MEMORY[0x277D1DCF0], &qword_27D9BF490);
}

unint64_t sub_22C628DD0(uint64_t a1)
{
  sub_22C90A11C();
  sub_22C90B62C();
  sub_22C909FFC();
  v2 = sub_22C90B66C();

  return sub_22C62AD54(a1, v2);
}

void sub_22C628E64()
{
  sub_22C633B34();
  sub_22C90021C();
  sub_22C6339B0(&qword_27D9BF408, MEMORY[0x277CC8C40]);
  sub_22C37335C();
  v0 = sub_22C909F7C();
  sub_22C375D20(v0, v0, MEMORY[0x277CC8C40], &unk_27D9BF410);
}

void sub_22C628F1C(uint64_t a1)
{
  sub_22C9099FC();
  sub_22C6339B0(&qword_28142FA60, MEMORY[0x277D73358]);
  sub_22C909F7C();
  sub_22C62917C();
}

void sub_22C628FF0()
{
  sub_22C633B34();
  sub_22C9091CC();
  sub_22C6339B0(&qword_27D9BF390, MEMORY[0x277D72900]);
  sub_22C37335C();
  v0 = sub_22C909F7C();
  sub_22C375D20(v0, v0, MEMORY[0x277D72900], &unk_27D9BF398);
}

void sub_22C6290A8(uint64_t a1)
{
  sub_22C9093BC();
  sub_22C6339B0(&qword_28142FA90, MEMORY[0x277D72A78]);
  sub_22C909F7C();
  sub_22C62917C();
}

void sub_22C62917C()
{
  sub_22C36BA7C();
  v20 = v1;
  v21 = v2;
  v19 = v3;
  v5 = v4;
  v17 = v6;
  v8 = v7(0);
  sub_22C369824();
  v10 = v9;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v22 = v0 + 64;
  v18 = v0;
  v14 = ~(-1 << *(v0 + 32));
  for (i = v5 & v14; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v18 + 48) + *(v10 + 72) * i, v8);
    sub_22C6339B0(v19, v20);
    v16 = sub_22C90A0BC();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  sub_22C36CC48();
}

unint64_t sub_22C6292F4(unint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = *(*(v2 + 48) + 8 * i);

    v7 = sub_22C48819C(v6, a1);

    if (v7)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22C6293AC(uint64_t a1, uint64_t a2)
{
  v63 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  MEMORY[0x28223BE20](v63);
  v6 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_22C90430C();
  v77 = *(v73 - 8);
  v7 = MEMORY[0x28223BE20](v73);
  v72 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v62 - v9;
  v62 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  MEMORY[0x28223BE20](v62);
  v84 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_22C902D0C();
  v11 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v65 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  v16 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v87 = (&v62 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v25 = &v62 - v24;
  v26 = -1 << *(v2 + 32);
  v27 = a2 & ~v26;
  v90 = v2 + 64;
  if (((*(v2 + 64 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
    return v27;
  }

  v86 = v22;
  v88 = ~v26;
  v89 = *(v21 + 72);
  v70 = (v77 + 8);
  v71 = v77 + 16;
  v75 = (v11 + 8);
  v76 = v23;
  v64 = (v11 + 32);
  v82 = v16;
  v83 = v13;
  v67 = v2;
  v66 = a1;
  v85 = v6;
  while (1)
  {
    sub_22C62E98C();
    v28 = *(v13 + 48);
    sub_22C62E98C();
    sub_22C62E98C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v46 = a1;
      v47 = v76;
      sub_22C62E98C();
      if (!swift_getEnumCaseMultiPayload())
      {
        v50 = v65;
        v51 = v81;
        (*v64)(v65, &v15[v28], v81);
        LODWORD(v80) = sub_22C902CFC();
        v52 = *v75;
        (*v75)(v50, v51);
        sub_22C62E9E0(v25, type metadata accessor for PromptTreeIdentifier.Label);
        v52(v47, v51);
        if (v80)
        {
          goto LABEL_64;
        }

        sub_22C62E9E0(v15, type metadata accessor for PromptTreeIdentifier.Label);
        v13 = v83;
        a1 = v46;
        goto LABEL_31;
      }

      sub_22C62E9E0(v25, type metadata accessor for PromptTreeIdentifier.Label);
      (*v75)(v47, v81);
      a1 = v46;
      v6 = v85;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v30 = v86;
    sub_22C62E98C();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22C62E9E0(v25, type metadata accessor for PromptTreeIdentifier.Label);
      v49 = type metadata accessor for PromptTreeIdentifier.TurnChange;
LABEL_25:
      sub_22C62E9E0(v30, v49);
LABEL_26:
      sub_22C3AC228(v15, &qword_27D9BCBA0, &unk_22C9166D0);
      goto LABEL_61;
    }

    sub_22C630194();
    v48 = *v6;
    switch(*v30)
    {
      case 3:
        if (v48 == 3)
        {
          goto LABEL_42;
        }

        goto LABEL_59;
      case 4:
        if (v48 != 4)
        {
          goto LABEL_59;
        }

        goto LABEL_42;
      case 5:
        if (v48 != 5)
        {
          goto LABEL_59;
        }

        goto LABEL_42;
      case 6:
        if (v48 != 6)
        {
          goto LABEL_59;
        }

        goto LABEL_42;
      default:
        if (*v30 != v48 || (v48 - 7) >= 0xFFFFFFFC)
        {
          goto LABEL_59;
        }

LABEL_42:
        v54 = v30[1] == v6[1] && v30[2] == v6[2];
        if (v54 || (v55 = sub_22C90B4FC(), v30 = v86, (v55)) && (v30[3] == v6[3] ? (v56 = v30[4] == v6[4]) : (v56 = 0), (v56 || (v57 = sub_22C90B4FC(), v30 = v86, (v57)) && (v30[5] == v6[5] ? (v58 = v30[6] == v6[6]) : (v58 = 0), v58 || (sub_22C90B4FC())))
        {
          v59 = sub_22C90067C();
          sub_22C62E9E0(v25, type metadata accessor for PromptTreeIdentifier.Label);
          if (v59)
          {
            v60 = type metadata accessor for PromptTreeIdentifier.TurnChange;
            sub_22C62E9E0(v6, type metadata accessor for PromptTreeIdentifier.TurnChange);
            v61 = v86;
LABEL_63:
            sub_22C62E9E0(v61, v60);
LABEL_64:
            sub_22C62E9E0(v15, type metadata accessor for PromptTreeIdentifier.Label);
            return v27;
          }
        }

        else
        {
LABEL_59:
          sub_22C62E9E0(v25, type metadata accessor for PromptTreeIdentifier.Label);
        }

        sub_22C62E9E0(v6, type metadata accessor for PromptTreeIdentifier.TurnChange);
        sub_22C62E9E0(v86, type metadata accessor for PromptTreeIdentifier.TurnChange);
        sub_22C62E9E0(v15, type metadata accessor for PromptTreeIdentifier.Label);
        break;
    }

LABEL_61:
    v27 = (v27 + 1) & v88;
    if (((*(v90 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      return v27;
    }
  }

  v30 = v87;
  sub_22C62E98C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C62E9E0(v25, type metadata accessor for PromptTreeIdentifier.Label);
    v49 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
    goto LABEL_25;
  }

  v31 = v84;
  sub_22C630194();
  result = sub_22C48819C(*v30, *v31);
  if ((result & 1) == 0 || (v33 = v87[1], v79 = v84[1], v80 = v33, v34 = *(v79 + 16), v78 = *(v33 + 16), v78 != v34))
  {
LABEL_27:
    sub_22C62E9E0(v25, type metadata accessor for PromptTreeIdentifier.Label);
    v44 = v87;
LABEL_28:
    sub_22C62E9E0(v84, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
    sub_22C62E9E0(v44, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
    sub_22C62E9E0(v15, type metadata accessor for PromptTreeIdentifier.Label);
    a1 = v66;
LABEL_31:
    v6 = v85;
    goto LABEL_61;
  }

  if (!v78 || v80 == v79)
  {
LABEL_15:
    v44 = v87;
    v45 = sub_22C90962C();
    sub_22C62E9E0(v25, type metadata accessor for PromptTreeIdentifier.Label);
    if (v45)
    {
      v60 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
      sub_22C62E9E0(v84, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      v61 = v44;
      goto LABEL_63;
    }

    goto LABEL_28;
  }

  v35 = 0;
  v36 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v69 = v80 + v36;
  v68 = v79 + v36;
  while (1)
  {
    v37 = v74;
    if (v35 >= *(v80 + 16))
    {
      break;
    }

    v38 = *(v77 + 72) * v35;
    v39 = *(v77 + 16);
    v40 = v73;
    result = v39(v74, v69 + v38, v73);
    if (v35 >= *(v79 + 16))
    {
      goto LABEL_66;
    }

    v41 = v72;
    v39(v72, v68 + v38, v40);
    sub_22C6339B0(&qword_27D9BC808, MEMORY[0x277D85578]);
    v42 = sub_22C90A0BC();
    v43 = *v70;
    (*v70)(v41, v40);
    result = v43(v37, v40);
    v13 = v83;
    if ((v42 & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v78 == ++v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

unint64_t sub_22C629ECC(unint64_t *a1, uint64_t a2)
{
  v5 = sub_22C90430C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v30 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  MEMORY[0x28223BE20](v30);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v2 + 64;
  v36 = v2;
  v14 = -1 << *(v2 + 32);
  result = a2 & ~v14;
  if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v31 = a1;
  v32 = ~v14;
  v16 = *a1;
  v33 = *(v11 + 72);
  v34 = v16;
  v37 = (v6 + 8);
  v17 = v6;
  while (1)
  {
    v41 = result;
    sub_22C62E98C();
    result = sub_22C48819C(*v13, v34);
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

    v18 = v13[1];
    v43 = v31[1];
    v44 = v18;
    v19 = *(v43 + 16);
    v42 = *(v18 + 16);
    if (v42 != v19)
    {
      goto LABEL_13;
    }

    if (v42 && v44 != v43)
    {
      break;
    }

LABEL_12:
    if (sub_22C90962C())
    {
      sub_22C62E9E0(v13, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      return v41;
    }

LABEL_13:
    sub_22C62E9E0(v13, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
    result = (v41 + 1) & v32;
    if (((*(v35 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      return result;
    }
  }

  v20 = 0;
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v40 = v44 + v21;
  v39 = v43 + v21;
  while (v20 < *(v44 + 16))
  {
    v22 = *(v17 + 72) * v20;
    v23 = *(v17 + 16);
    result = v23(v10, v40 + v22, v5);
    if (v20 >= *(v43 + 16))
    {
      goto LABEL_17;
    }

    v24 = v10;
    v25 = v38;
    v23(v38, v39 + v22, v5);
    sub_22C6339B0(&qword_27D9BC808, MEMORY[0x277D85578]);
    v26 = sub_22C90A0BC();
    v27 = *v37;
    v28 = v25;
    v10 = v24;
    (*v37)(v28, v5);
    result = (v27)(v24, v5);
    if ((v26 & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v42 == ++v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_22C62A2B8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 3)
      {
        if (a1 == 3)
        {
          return result;
        }
      }

      else if (v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22C62A33C(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result))
      {
        if (a1)
        {
          return result;
        }
      }

      else if ((a1 & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22C62A3B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_22C62A410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_22C90B4FC() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_22C90B4FC() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_22C62A50C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_22C50B118(&qword_27D9BF500, &qword_27D9BCFE8, &qword_22C917388);
    v9 = sub_22C90A0BC();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22C62A6CC(void *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22C4AB1F0(*(v2 + 48) + 56 * v4, v26);
      v7 = sub_22C374168(v26, v26[3]);
      MEMORY[0x28223BE20](v7);
      (*(v9 + 16))(&v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_22C48A760();
      sub_22C90AECC();
      v10 = sub_22C374168(a1, a1[3]);
      MEMORY[0x28223BE20](v10);
      (*(v12 + 16))(&v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_22C90AECC();
      v13 = MEMORY[0x2318B8380](v25, v24);
      sub_22C48A7B4(v24);
      sub_22C48A7B4(v25);
      if (v13 & 1) != 0 && (sub_22C48819C(v26[5], a1[5]))
      {
        sub_22C46D424(v26[6], a1[6], v14, v15, v16, v17, v18, v19, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v25[0], v25[1], v25[2], v25[3], v25[4], v26[0]);
        v21 = v20;
        sub_22C48A6C0(v26);
        if (v21)
        {
          return v4;
        }
      }

      else
      {
        sub_22C48A6C0(v26);
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22C62A954(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

unint64_t sub_22C62A9B8(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_22C62AA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheKeyHashableRepresentation(0) - 8;
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ~(-1 << *(v2 + 32));
  for (i = a2 & v7; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v7)
  {
    sub_22C62E98C();
    sub_22C834B1C();
    v10 = v9;
    sub_22C62E9E0(v6, type metadata accessor for CacheKeyHashableRepresentation);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22C62AB70(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_22C62ABD0(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v18 = a1[4];
    do
    {
      v10 = (*(v2 + 48) + 40 * v4);
      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      v14 = *v10 == v6 && v10[1] == v7;
      if (v14 || (sub_22C90B4FC() & 1) != 0)
      {
        v15 = v11 == v8 && v12 == v9;
        if (v15 || (sub_22C90B4FC() & 1) != 0)
        {
          sub_22C749DA0(v13, v18);
          if (v16)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22C62ACF4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_22C62AD54(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_22C90A11C();
    v7 = v6;
    if (v5 == sub_22C90A11C() && v7 == v8)
    {

      return i;
    }

    v10 = sub_22C90B4FC();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_22C62AE4C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_22C62AE6C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C62AE90@<X0>(uint64_t a1@<X8>)
{
  sub_22C628274();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v1;
    sub_22C3A5908(&qword_27D9BC010, &qword_22C911CA0);
    sub_22C90B15C();
    v6 = *(v14 + 48);
    v7 = sub_22C901FAC();
    v8 = *(v7 - 8);
    v9 = *(v8 + 72) * v5;
    (*(v8 + 8))(v6 + v9, v7);
    (*(v8 + 32))(a1, *(v14 + 56) + v9, v7);
    sub_22C6339B0(&qword_2814357B0, MEMORY[0x277D1C338]);
    sub_22C90B17C();
    *v1 = v14;
    v10 = a1;
    v11 = 0;
    v12 = v7;
  }

  else
  {
    v12 = sub_22C901FAC();
    v10 = a1;
    v11 = 1;
  }

  return sub_22C36C640(v10, v11, 1, v12);
}

uint64_t sub_22C62B048@<X0>(uint64_t a1@<X8>)
{
  sub_22C628274();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    sub_22C3A5908(&qword_27D9BC080, &qword_22C911F38);
    sub_22C90B15C();
    v6 = *(v13 + 48);
    v7 = sub_22C901FAC();
    (*(*(v7 - 8) + 8))(v6 + *(*(v7 - 8) + 72) * v5, v7);
    v8 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
    sub_22C630194();
    sub_22C6339B0(&qword_2814357B0, MEMORY[0x277D1C338]);
    sub_22C90B17C();
    *v1 = v13;
    v9 = a1;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = type metadata accessor for PlanPostProcessor.ExpressionContext(0);
    v9 = a1;
    v10 = 1;
  }

  return sub_22C36C640(v9, v10, 1, v11);
}

uint64_t sub_22C62B1F8@<X0>(uint64_t a1@<X8>)
{
  sub_22C628874();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v1;
    sub_22C3A5908(&qword_27D9BF3E8, &qword_22C9226C8);
    sub_22C90B15C();
    v6 = *(v14 + 48);
    v7 = sub_22C9014CC();
    (*(*(v7 - 8) + 8))(v6 + *(*(v7 - 8) + 72) * v5, v7);
    v8 = *(v14 + 56);
    v9 = sub_22C907F9C();
    (*(*(v9 - 8) + 32))(a1, v8 + *(*(v9 - 8) + 72) * v5, v9);
    sub_22C6339B0(&qword_27D9BF3F0, MEMORY[0x277D78298]);
    sub_22C90B17C();
    *v1 = v14;
    v10 = a1;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_22C907F9C();
    v10 = a1;
    v11 = 1;
  }

  return sub_22C36C640(v10, v11, 1, v12);
}

uint64_t sub_22C62B3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C634340();
  v12 = v11;
  sub_22C634158();
  sub_22C6287BC();
  if (v14)
  {
    v15 = v13;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_22C6344F4();
    sub_22C6346A4(v16, v17, v16);
    v18 = *(a10 + 48);
    v19 = sub_22C902C9C();
    sub_22C36985C();
    (*(v20 + 8))(v18 + *(v20 + 72) * v15, v19);
    v12(0);
    sub_22C36985C();
    v21 = sub_22C634600();
    v22(v21);
    sub_22C6339B0(&qword_27D9BC1A8, MEMORY[0x277D1D780]);
    sub_22C36E644();
    sub_22C90B17C();
    *v10 = a10;
    sub_22C37049C();
  }

  else
  {
    v12(0);
    sub_22C37582C();
  }

  sub_22C634220();

  return sub_22C36C640(v23, v24, v25, v26);
}

uint64_t sub_22C62B500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C634340();
  v13 = v12;
  sub_22C634158();
  sub_22C3736B4();
  v17 = sub_22C36E5AC(v14, v15, v16, sub_22C36EF04);
  if (v18)
  {
    v19 = v17;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_22C6344F4();
    sub_22C6346A4(v20, v21, v20);

    v22 = *(a10 + 56);
    v23 = v13(0);
    sub_22C36985C();
    (*(v24 + 32))(v10, v22 + *(v24 + 72) * v19, v23);
    sub_22C90B17C();
    *v11 = a10;
    sub_22C37049C();
  }

  else
  {
    v13(0);
    sub_22C37582C();
  }

  sub_22C634220();

  return sub_22C36C640(v25, v26, v27, v28);
}

uint64_t sub_22C62B620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C628BA8(a1, sub_22C48640C, sub_22C6293AC);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_22C3A5908(&qword_27D9BCFF8, &qword_22C917390);
    sub_22C90B15C();
    v7 = *(v13 + 48);
    v8 = type metadata accessor for PromptTreeIdentifier.Label(0);
    sub_22C62E9E0(v7 + *(*(v8 - 8) + 72) * v6, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C630194();
    sub_22C6339B0(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C90B17C();
    *v2 = v13;
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = type metadata accessor for PromptTreeIdentifier.Label(0);
    v9 = a2;
    v10 = 1;
  }

  return sub_22C36C640(v9, v10, 1, v11);
}

uint64_t sub_22C62B7D8@<X0>(uint64_t a1@<X8>)
{
  sub_22C6280AC();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v1;
    sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
    sub_22C90B15C();
    v6 = *(v14 + 48);
    v7 = sub_22C902D0C();
    v8 = *(v7 - 8);
    v9 = *(v8 + 72) * v5;
    (*(v8 + 8))(v6 + v9, v7);
    (*(v8 + 32))(a1, *(v14 + 56) + v9, v7);
    sub_22C6339B0(&qword_27D9BAAA8, MEMORY[0x277D1D800]);
    sub_22C90B17C();
    *v1 = v14;
    v10 = a1;
    v11 = 0;
    v12 = v7;
  }

  else
  {
    v12 = sub_22C902D0C();
    v10 = a1;
    v11 = 1;
  }

  return sub_22C36C640(v10, v11, 1, v12);
}

uint64_t sub_22C62B990()
{
  v1 = v0;
  sub_22C3736B4();
  v5 = sub_22C36E5AC(v2, v3, v4, sub_22C36EF04);
  v7 = v6;
  if (v6)
  {
    v8 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v0;
    v9 = sub_22C3A5908(&qword_27D9BF400, &qword_22C9226D0);
    sub_22C634424(v9, v10, v9);

    v11 = *(*(v13 + 56) + v8);
    type metadata accessor for LSDeveloperType(0);
    sub_22C90B17C();
    *v1 = v13;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 0xFFFFFEFF | (((v7 & 1) == 0) << 8);
}

uint64_t sub_22C62BA88()
{
  v1 = v0;
  sub_22C38AA00();
  v4 = sub_22C628BA8(v2, v3, sub_22C62AA14);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  sub_22C6348C8();
  v7 = sub_22C3A5908(&qword_27D9BF3B8, &qword_22C922678);
  sub_22C63435C(v7);
  type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C36985C();
  sub_22C3723BC();
  sub_22C62E9E0(v8, v9);
  v10 = *(*(v14 + 56) + 8 * v6);
  sub_22C633F48();
  sub_22C6339B0(v11, v12);
  sub_22C633C88();
  sub_22C90B17C();
  *v1 = v14;
  return v10;
}

uint64_t sub_22C62BB98(uint64_t a1)
{
  sub_22C634158();
  sub_22C628D18();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    v6 = sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
    sub_22C63435C(v6);
    v7 = *(v20 + 48);
    v8 = sub_22C9069BC();
    sub_22C36985C();
    (*(v9 + 8))(v7 + *(v9 + 72) * v5, v8);
    v10 = *(v20 + 56);
    v11 = sub_22C908C5C();
    sub_22C36985C();
    (*(v12 + 32))(v1, v10 + *(v12 + 72) * v5, v11);
    sub_22C382D70();
    sub_22C6339B0(v13, v14);
    sub_22C44178C();
    sub_22C90B17C();
    *v2 = v20;
    v15 = sub_22C37049C();
    v18 = v11;
  }

  else
  {
    sub_22C908C5C();
    v15 = sub_22C37582C();
  }

  return sub_22C36C640(v15, v16, v17, v18);
}

uint64_t sub_22C62BCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_22C634340();
  v10 = v9;
  sub_22C634158();
  sub_22C3736B4();
  sub_22C36E5AC(v11, v12, v13, sub_22C36EF04);
  if (v14)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v8;
    v15 = sub_22C370114();
    sub_22C3A5908(v15, v16);
    sub_22C90B15C();

    v10(0);
    sub_22C36985C();
    sub_22C630194();
    sub_22C37A004();
    sub_22C90B17C();
    *v8 = v23;
    sub_22C37049C();
  }

  else
  {
    v10(0);
    sub_22C37582C();
  }

  sub_22C634220();

  return sub_22C36C640(v17, v18, v19, v20);
}

double sub_22C62BE24@<D0>(uint64_t a1@<X8>)
{
  sub_22C38AA00();
  v5 = sub_22C628BA8(v3, v4, sub_22C62AA14);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6348C8();
    v8 = sub_22C3A5908(&qword_27D9BF3C0, &unk_22C922680);
    sub_22C63435C(v8);
    type metadata accessor for CacheKeyHashableRepresentation(0);
    sub_22C36985C();
    sub_22C3723BC();
    sub_22C62E9E0(v9, v10);
    v11 = *(v16 + 56) + 40 * v7;
    v12 = *(v11 + 16);
    *a1 = *v11;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(v11 + 32);
    sub_22C633F48();
    sub_22C6339B0(v13, v14);
    sub_22C44178C();
    sub_22C90B17C();
    *v1 = v16;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -1;
  }

  return result;
}

uint64_t sub_22C62BF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C6290A8(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_22C3A5908(&qword_27D9BF3B0, &qword_22C922670);
    sub_22C90B15C();
    v7 = *(v14 + 48);
    v8 = sub_22C9093BC();
    (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = type metadata accessor for DialogValuesResolver.CollectedValue(0);
    sub_22C630194();
    sub_22C6339B0(&qword_28142FA90, MEMORY[0x277D72A78]);
    sub_22C90B17C();
    *v2 = v14;
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for DialogValuesResolver.CollectedValue(0);
    v10 = a2;
    v11 = 1;
  }

  return sub_22C36C640(v10, v11, 1, v12);
}

void sub_22C62C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  sub_22C379A14();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C628274();
  sub_22C37FEBC();
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BF420, &qword_22C9226E0);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628274();
    sub_22C633C04();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    sub_22C6343A4();
    sub_22C9070DC();
    sub_22C36985C();
    sub_22C37ECAC(*(v16 + 72));
    sub_22C36CC48();

    v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v25 = sub_22C633BF0();
    v26(v25);
    sub_22C633F30();
    v27 = sub_22C633B5C();
    sub_22C62FC34(v27, v28, v29, v30, v31, v32);
    sub_22C36CC48();
  }
}

void sub_22C62C26C()
{
  sub_22C36BA7C();
  v2 = sub_22C633C14();
  type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v2);
  sub_22C36985C();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C6340D8();
  sub_22C628410();
  sub_22C37FEBC();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  sub_22C3A5908(&qword_27D9BD070, &unk_22C922820);
  sub_22C6340F0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628410();
    sub_22C634058();
    if (!v10)
    {
      goto LABEL_12;
    }

    v7 = v9;
  }

  v11 = *v1;
  if (v8)
  {
    *(*(v11 + 56) + 8 * v7) = v0;
    sub_22C36CC48();
  }

  else
  {
    sub_22C37335C();
    sub_22C62E98C();
    sub_22C37EBD0();
    sub_22C62F994(v13, v14, v15, v11);
    sub_22C36CC48();
  }
}

void sub_22C62C3D4()
{
  sub_22C36BA7C();
  v3 = sub_22C633C14();
  type metadata accessor for PromptTreeIdentifier.Label(v3);
  sub_22C36985C();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C633A64();
  sub_22C628BA8(v2, v5, sub_22C6293AC);
  sub_22C37FEBC();
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  sub_22C3A5908(&qword_27D9BF508, &unk_22C922840);
  sub_22C6340F0();
  if (sub_22C90B15C())
  {
    sub_22C633A64();
    sub_22C628BA8(v2, v11, sub_22C6293AC);
    sub_22C634058();
    if (!v13)
    {
      goto LABEL_11;
    }

    v9 = v12;
  }

  v14 = *v1;
  if (v10)
  {
    *(*(v14 + 56) + 8 * v9) = v0;
  }

  else
  {
    sub_22C36D264();
    sub_22C62E98C();
    v15 = sub_22C3819EC();
    sub_22C62F54C(v15, v16, v0, v14);
  }

  sub_22C36CC48();
}

void sub_22C62C51C()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_22C628700(v9, v5, v3, v1);
  sub_22C37FEBC();
  if (v12)
  {
    __break(1u);
LABEL_14:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  v15 = sub_22C3A5908(&qword_27D9BF538, &unk_22C922870);
  if (sub_22C6349E0(v15))
  {
    v16 = sub_22C372FCC();
    sub_22C628700(v16, v17, v4, v2);
    sub_22C634058();
    if (!v19)
    {
      goto LABEL_14;
    }

    v13 = v18;
  }

  if (v14)
  {
    *(*(*v0 + 56) + 8 * v13) = v8;
    sub_22C36CC48();
  }

  else
  {
    v22 = sub_22C36FC74();
    sub_22C62F64C(v22, v23, v6, v4, v2, v8, v24);

    sub_22C36CC48();
  }
}

void sub_22C62C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C377578();
  sub_22C628274();
  sub_22C37FEBC();
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BC010, &qword_22C911CA0);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C628274();
    sub_22C633C04();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    sub_22C37275C();
    sub_22C36CC48();

    v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    v24 = sub_22C36D384();
    v25(v24);
    sub_22C633B5C();
    sub_22C62F8F0();
    sub_22C36CC48();
  }
}

void sub_22C62C7D4()
{
  sub_22C3BDA38();
  sub_22C633C40();
  v4 = v3;
  sub_22C3736B4();
  sub_22C6346BC(v5, v6, v7, sub_22C36EF04);
  sub_22C37FEBC();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF528, &qword_22C922860);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C3736B4();
    v9 = sub_22C371530();
    sub_22C36E5AC(v9, v10, v11, v12);
    sub_22C633CA8();
    if (!v14)
    {
      goto LABEL_12;
    }

    v2 = v13;
  }

  if (v1)
  {
    *(*(*v0 + 56) + v2) = v4;
    sub_22C3BDA24();
  }

  else
  {
    v15 = sub_22C633DC0();
    sub_22C62F698(v15, v16, v17, v4, v18);
    sub_22C3BDA24();
  }
}

uint64_t sub_22C62C8E0()
{
  sub_22C3BDA38();
  sub_22C633C40();
  sub_22C634774();
  sub_22C633F18();
  sub_22C6346BC(v3, v4, v5, sub_22C36EF04);
  sub_22C37FEBC();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF520, &qword_22C922858);
  sub_22C633BE0();
  v7 = sub_22C90B15C();
  if (v7)
  {
    sub_22C633F18();
    v11 = sub_22C371530();
    sub_22C36E5AC(v11, v12, v13, v14);
    sub_22C633CA8();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    sub_22C634454(v7, v8, v9, v10, *v1);
    sub_22C3BDA24();
  }

  else
  {
    v18 = sub_22C633DC0();
    sub_22C62F6E0(v18, v19, v20, v0, v21);
    sub_22C3BDA24();
  }
}

void sub_22C62CA30()
{
  sub_22C36BA7C();
  sub_22C633C14();
  v3 = sub_22C901FAC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C6340D8();
  sub_22C628274();
  sub_22C37FEBC();
  if (v7)
  {
    __break(1u);
LABEL_10:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BC080, &qword_22C911F38);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C628274();
    sub_22C633C04();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v2)
  {
    v9 = sub_22C6343A4();
    v10 = type metadata accessor for PlanPostProcessor.ExpressionContext(v9);
    sub_22C369914(v10);
    sub_22C633630();
  }

  else
  {
    (*(v5 + 16))(v1, v0, v3);
    sub_22C3819EC();
    sub_22C62FFB0();
  }

  sub_22C36CC48();
}

void sub_22C62CBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  sub_22C379A14();
  sub_22C902C9C();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C6287BC();
  sub_22C37FEBC();
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BC1A0, &unk_22C9121B0);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C6287BC();
    sub_22C633C04();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    sub_22C6343A4();
    sub_22C902D0C();
    sub_22C36985C();
    sub_22C37ECAC(*(v16 + 72));
    sub_22C36CC48();

    v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v25 = sub_22C633BF0();
    v26(v25);
    sub_22C38A1D8();
    v27 = sub_22C633B5C();
    sub_22C62FC34(v27, v28, v29, v30, v31, v32);
    sub_22C36CC48();
  }
}

void sub_22C62CD44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_22C9014CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_22C628874();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  sub_22C3A5908(&qword_27D9BF3E8, &qword_22C9226C8);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_22C628874();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = *(v18 + 56);
    v20 = sub_22C907F9C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v14;

    v22(v24, a1, v23);
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    sub_22C62FC34(v14, v10, a1, v18, MEMORY[0x277D78298], MEMORY[0x277D1E2B8]);
  }
}

void sub_22C62CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  sub_22C379A14();
  sub_22C902C9C();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C6287BC();
  sub_22C37FEBC();
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BC228, &qword_22C922850);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C6287BC();
    sub_22C633C04();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    sub_22C6343A4();
    sub_22C902C4C();
    sub_22C36985C();
    sub_22C37ECAC(*(v16 + 72));
    sub_22C36CC48();

    v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v25 = sub_22C633BF0();
    v26(v25);
    sub_22C38A1D8();
    v27 = sub_22C633B5C();
    sub_22C62FC34(v27, v28, v29, v30, v31, v32);
    sub_22C36CC48();
  }
}

uint64_t sub_22C62D0D4()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  sub_22C634744();
  sub_22C3736B4();
  v7 = sub_22C377B94();
  sub_22C36E5AC(v7, v8, v9, v10);
  sub_22C37FEBC();
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
  sub_22C6340F0();
  if (sub_22C90B15C())
  {
    sub_22C3736B4();
    v16 = sub_22C377B94();
    sub_22C36E5AC(v16, v17, v18, v19);
    sub_22C385F54();
    if (!v21)
    {
      goto LABEL_14;
    }

    v14 = v20;
  }

  v22 = *v0;
  if (v15)
  {
    v23 = (*(v22 + 56) + 16 * v14);
    *v23 = v2;
    v23[1] = v1;
    sub_22C36CC48();
  }

  else
  {
    sub_22C62F600(v14, v6, v4, v2, v1, v22);
    sub_22C36CC48();
  }
}

void sub_22C62D218()
{
  sub_22C36BA7C();
  sub_22C379A14();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v1);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C628274();
  sub_22C37FEBC();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BC3B8, &qword_22C912B00);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628274();
    sub_22C633C04();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    sub_22C37D9B0();
    sub_22C36CC48();
  }

  else
  {
    v5 = sub_22C633BF0();
    v6(v5);
    sub_22C633B5C();
    sub_22C62FA1C();
    sub_22C36CC48();
  }
}

uint64_t sub_22C62D35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C634340();
  v53 = v16;
  v54 = v17;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_22C634738();
  sub_22C3736B4();
  sub_22C36E5AC(v26, v23, v27, sub_22C36EF04);
  sub_22C37FEBC();
  if (v30)
  {
    __break(1u);
LABEL_14:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v31 = v28;
  v32 = v29;
  v33 = sub_22C3A5908(v21, v19);
  if (sub_22C6349E0(v33))
  {
    sub_22C3736B4();
    v34 = sub_22C36D384();
    sub_22C36E5AC(v34, v35, v36, v37);
    sub_22C633C04();
    if (!v39)
    {
      goto LABEL_14;
    }

    v31 = v38;
  }

  v40 = *v15;
  if (v32)
  {
    v41 = *(v40 + 56);
    v53(0);
    sub_22C36985C();
    sub_22C633FC0(v41 + *(v42 + 72) * v31);
    sub_22C634220();

    return v46(v43, v44, v45, v46, v47, v48, v49, v50, v53, v54, a11, a12, a13, a14);
  }

  else
  {
    sub_22C62FCFC(v31, v25, v23, v14, v40);
    sub_22C634220();
  }
}

uint64_t sub_22C62D4CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  sub_22C3A5908(&qword_27D9BDE38, &unk_22C922890);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    type metadata accessor for ToolPromptMap(0);
    return sub_22C633630();
  }

  else
  {
    sub_22C62FEB0(v12, a2, a3, a1, *v5);
  }
}

uint64_t sub_22C62D6A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for PromptTreeIdentifier.Label(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = sub_22C628BA8(a2, sub_22C48640C, sub_22C6293AC);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_22C3A5908(&qword_27D9BCFF8, &qword_22C917390);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_22C628BA8(a2, sub_22C48640C, sub_22C6293AC);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_10:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v4;
  if (v14)
  {
    return sub_22C633630();
  }

  sub_22C62E98C();
  return sub_22C62F7BC(v13, v9, a1, v17);
}

void sub_22C62D8A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_22C902D0C();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_22C6280AC();
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_22C6280AC();
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v13 = v15;
LABEL_5:
  if (v14)
  {
    v17 = *(v20 + 40);
    v18 = *(*v4 + 56) + *(v20 + 72) * v13;

    v17(v18, a1, v7);
  }

  else
  {
    (*(v20 + 16))(v9, a2, v7);
    sub_22C62F8F0();
  }
}

void sub_22C62DA9C()
{
  sub_22C36BA7C();
  v2 = sub_22C633C14();
  type metadata accessor for PromptTreeIdentifier.Label(v2);
  sub_22C36985C();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C633A64();
  sub_22C628BA8(v1, v4, sub_22C6293AC);
  sub_22C37FEBC();
  if (v6)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v7 = v5;
  sub_22C3A5908(&qword_27D9BD060, &unk_22C917430);
  sub_22C6340F0();
  if (sub_22C90B15C())
  {
    sub_22C633A64();
    sub_22C628BA8(v1, v8, sub_22C6293AC);
    sub_22C634058();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *v0;
  if (v7)
  {
    sub_22C37D9B0();
    sub_22C36CC48();
  }

  else
  {
    sub_22C37335C();
    sub_22C62E98C();
    v12 = sub_22C633DC0();
    sub_22C62F994(v12, v13, v14, v10);
    sub_22C36CC48();
  }
}

uint64_t sub_22C62DC28(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  sub_22C3A5908(&qword_27D9BF540, &unk_22C922880);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    return sub_22C633630();
  }

  else
  {
    sub_22C62FEB0(v12, a2, a3, a1, *v5);
  }
}

void sub_22C62DE00()
{
  sub_22C3BDA38();
  sub_22C633C40();
  v4 = v3;
  sub_22C3736B4();
  sub_22C6346BC(v5, v6, v7, sub_22C36EF04);
  sub_22C37FEBC();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF400, &qword_22C9226D0);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C3736B4();
    v9 = sub_22C371530();
    sub_22C36E5AC(v9, v10, v11, v12);
    sub_22C633CA8();
    if (!v14)
    {
      goto LABEL_12;
    }

    v2 = v13;
  }

  if (v1)
  {
    *(*(*v0 + 56) + v2) = v4;
    sub_22C3BDA24();
  }

  else
  {
    v15 = sub_22C633DC0();
    sub_22C62F698(v15, v16, v17, v4, v18);
    sub_22C3BDA24();
  }
}

void sub_22C62DF0C()
{
  sub_22C36BA7C();
  sub_22C379A14();
  sub_22C90430C();
  sub_22C369824();
  MEMORY[0x28223BE20](v1);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C628164();
  sub_22C37FEBC();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BF530, &qword_22C922868);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628164();
    sub_22C633C04();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    sub_22C37D9B0();
    sub_22C36CC48();
  }

  else
  {
    v5 = sub_22C633BF0();
    v6(v5);
    sub_22C633B5C();
    sub_22C62FA1C();
    sub_22C36CC48();
  }
}

void sub_22C62E050(uint64_t a1, double a2)
{
  type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C38AA00();
  sub_22C628BA8(a1, v8, sub_22C62AA14);
  sub_22C37FEBC();
  if (v9)
  {
    __break(1u);
LABEL_10:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C50B42C();
  sub_22C3A5908(&qword_27D9BF3B8, &qword_22C922678);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C38AA00();
    sub_22C628BA8(a1, v10, sub_22C62AA14);
    sub_22C385F54();
    if (!v12)
    {
      goto LABEL_10;
    }

    v3 = v11;
  }

  v13 = *v2;
  if (v4)
  {
    *(*(v13 + 56) + 8 * v3) = a2;
  }

  else
  {
    sub_22C37BD98();
    sub_22C62E98C();
    v14 = sub_22C36D384();
    sub_22C62FAA8(v14, v15, v13, a2);
  }
}

void sub_22C62E1B0()
{
  sub_22C3BDA38();
  sub_22C633C40();
  sub_22C634774();
  sub_22C3736B4();
  sub_22C6346BC(v3, v4, v5, sub_22C36EF04);
  sub_22C37FEBC();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF3E0, &unk_22C9226B8);
  sub_22C633BE0();
  v7 = sub_22C90B15C();
  if (v7)
  {
    sub_22C3736B4();
    v11 = sub_22C371530();
    sub_22C36E5AC(v11, v12, v13, v14);
    sub_22C633CA8();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    sub_22C634454(v7, v8, v9, v10, *v1);
    sub_22C3BDA24();
  }

  else
  {
    v18 = sub_22C633DC0();
    sub_22C62F6E0(v18, v19, v20, v0, v21);
    sub_22C3BDA24();
  }
}

uint64_t sub_22C62E2C4(uint64_t a1, char a2, float a3)
{
  sub_22C6286A0(a1);
  sub_22C37FEBC();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  sub_22C3A5908(&qword_27D9BF4B8, &qword_22C922798);
  result = sub_22C90B15C();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_22C6286A0(a1);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 4 * v9) = a3;
  }

  else
  {

    return sub_22C62FB5C(v9, a1, v13, a3);
  }

  return result;
}

uint64_t sub_22C62E3C4(uint64_t a1, uint64_t a2, char a3)
{
  sub_22C634738();
  sub_22C628C68();
  sub_22C37FEBC();
  if (v7)
  {
    __break(1u);
LABEL_12:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  sub_22C3A5908(&qword_27D9BF3D8, &unk_22C9226A0);
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628C68();
    sub_22C633CA8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  if (v9)
  {
    v12 = *(*v3 + 56);
    sub_22C90339C();
    sub_22C36985C();
    v14 = sub_22C633FC0(v12 + *(v13 + 72) * v8);

    return v15(v14);
  }

  else
  {
    sub_22C63472C();
    sub_22C62FBA0();
    return sub_22C633814(a2, v17);
  }
}

uint64_t sub_22C62E500()
{
  sub_22C3BDA38();
  sub_22C633C40();
  sub_22C634774();
  sub_22C3736B4();
  sub_22C6346BC(v3, v4, v5, sub_22C36EF04);
  sub_22C37FEBC();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF448, &qword_22C922708);
  sub_22C633BE0();
  v7 = sub_22C90B15C();
  if (v7)
  {
    sub_22C3736B4();
    v11 = sub_22C371530();
    sub_22C36E5AC(v11, v12, v13, v14);
    sub_22C633CA8();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    sub_22C634454(v7, v8, v9, v10, *v1);
    sub_22C3BDA24();
  }

  else
  {
    v18 = sub_22C633DC0();
    sub_22C62F6E0(v18, v19, v20, v0, v21);
    sub_22C3BDA24();
  }
}

uint64_t sub_22C62E614(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  sub_22C3A5908(&qword_27D9BF488, &qword_22C922748);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    type metadata accessor for ActionParameterValue(0);
    return sub_22C633630();
  }

  else
  {
    sub_22C62FEB0(v12, a2, a3, a1, *v5);
  }
}

void sub_22C62E7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  sub_22C379A14();
  sub_22C9069BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C628D18();
  sub_22C37FEBC();
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628D18();
    sub_22C633C04();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    sub_22C6343A4();
    sub_22C908C5C();
    sub_22C36985C();
    sub_22C37ECAC(*(v16 + 72));
    sub_22C36CC48();

    v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v25 = sub_22C633BF0();
    v26(v25);
    v27 = sub_22C633B5C();
    sub_22C62FC34(v27, v28, v29, v30, v31, v32);
    sub_22C36CC48();
  }
}

uint64_t sub_22C62E98C()
{
  sub_22C36986C();
  v1(0);
  sub_22C369A9C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C62E9E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C369848();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C62EA34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  sub_22C3A5908(&qword_27D9BF460, &unk_22C922720);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_22C36E5AC(a2, a3, MEMORY[0x277D83758], sub_22C36EF04);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    type metadata accessor for ExecutionPreconditionEvaluator.ParameterValue(0);
    return sub_22C633630();
  }

  else
  {
    sub_22C62FEB0(v12, a2, a3, a1, *v5);
  }
}

void sub_22C62EC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA7C();
  sub_22C379A14();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C377578();
  sub_22C6340D8();
  sub_22C628274();
  sub_22C37FEBC();
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C6340E4();
  sub_22C3A5908(&qword_27D9BF418, &qword_22C9226D8);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C6340BC();
    sub_22C628274();
    sub_22C633C04();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    sub_22C6343A4();
    sub_22C908C5C();
    sub_22C36985C();
    sub_22C37ECAC(*(v16 + 72));
    sub_22C36CC48();

    v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v25 = sub_22C633BF0();
    v26(v25);
    sub_22C633F30();
    v27 = sub_22C633B5C();
    sub_22C62FC34(v27, v28, v29, v30, v31, v32);
    sub_22C36CC48();
  }
}

uint64_t sub_22C62EDB8(uint64_t a1, uint64_t a2, char a3)
{
  sub_22C634774();
  sub_22C628C68();
  sub_22C37FEBC();
  if (v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6;
  v10 = v7;
  sub_22C3A5908(&qword_27D9BF3D0, &qword_22C922698);
  result = sub_22C90B15C();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_22C628C68();
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_10:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  if (v10)
  {
    *(*(*v3 + 56) + 8 * v9) = v4;
  }

  else
  {
    v13 = sub_22C372280();
    sub_22C62FD90(v13, v14, v4, v15);
    return sub_22C633814(a2, v16);
  }

  return result;
}

uint64_t sub_22C62EEA8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for CacheKeyHashableRepresentation(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = sub_22C628BA8(a2, sub_22C834E6C, sub_22C62AA14);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  sub_22C3A5908(&qword_27D9BF3C0, &unk_22C922680);
  if ((sub_22C90B15C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_22C628BA8(a2, sub_22C834E6C, sub_22C62AA14);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v4;
  if (v14)
  {
    v18 = *(v17 + 56) + 40 * v13;

    return sub_22C633684(a1, v18);
  }

  else
  {
    sub_22C62E98C();
    return sub_22C62FDE8(v13, v9, a1, v17);
  }
}

void sub_22C62F094()
{
  sub_22C3BDA38();
  sub_22C38B5AC();
  sub_22C634738();
  sub_22C3736B4();
  v6 = sub_22C634864(v4, v5);
  sub_22C36E5AC(v6, v7, v8, v9);
  sub_22C37FEBC();
  if (v10)
  {
    __break(1u);
LABEL_11:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  sub_22C50B42C();
  sub_22C3A5908(&qword_27D9BF3A0, &qword_22C922660);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C3736B4();
    sub_22C36E5AC(v2, v1, v11, sub_22C36EF04);
    sub_22C385F54();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  if (v3)
  {
    v13 = type metadata accessor for DialogValue(0);
    sub_22C369914(v13);
    sub_22C633630();
    sub_22C3BDA24();
  }

  else
  {
    v14 = sub_22C36D384();
    sub_22C62FEB0(v14, v15, v1, v0, v16);
    sub_22C3BDA24();
  }
}

_OWORD *sub_22C62F20C()
{
  sub_22C3BDA38();
  sub_22C38B5AC();
  sub_22C634738();
  sub_22C3736B4();
  v8 = sub_22C634864(v6, v7);
  sub_22C36E5AC(v8, v9, v10, v11);
  sub_22C37FEBC();
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  sub_22C6343F0();
  sub_22C3A5908(&qword_27D9BF388, &unk_22C92B1F0);
  sub_22C633BE0();
  if (sub_22C90B15C())
  {
    sub_22C3736B4();
    sub_22C36E5AC(v3, v2, v13, sub_22C36EF04);
    sub_22C633CA8();
    if (!v15)
    {
      goto LABEL_14;
    }

    v5 = v14;
  }

  v16 = *v1;
  if (v4)
  {
    sub_22C36FF94((v16[7] + 32 * v5));
    sub_22C36BA00();
    sub_22C3BDA24();

    return sub_22C456E34(v17, v18);
  }

  else
  {
    sub_22C62FF44(v5, v3, v2, v0, v16);
    sub_22C3BDA24();
  }
}

void sub_22C62F348(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_22C9093BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  sub_22C6290A8(a2);
  if (__OFADD__(*(v9 + 16), (v10 & 1) == 0))
  {
    __break(1u);
LABEL_9:
    sub_22C90B54C();
    __break(1u);
    return;
  }

  v11 = v10;
  sub_22C3A5908(&qword_27D9BF3B0, &qword_22C922670);
  if (sub_22C90B15C())
  {
    sub_22C6290A8(a2);
    if ((v11 & 1) != (v12 & 1))
    {
      goto LABEL_9;
    }
  }

  if (v11)
  {
    type metadata accessor for DialogValuesResolver.CollectedValue(0);
    sub_22C633630();
  }

  else
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_22C62FFB0();
  }
}

uint64_t sub_22C62F54C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  type metadata accessor for PromptTreeIdentifier.Label(0);
  result = sub_22C630194();
  *(*(a4 + 56) + 8 * a1) = a3;
  v8 = *(a4 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }

  return result;
}

uint64_t sub_22C62F600(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_22C37B700(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

unint64_t sub_22C62F64C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_22C62F698(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_22C62F6E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_22C62F728()
{
  sub_22C6346E8();
  sub_22C634744();
  sub_22C37F3F8(v4, v5, v6, v7);
  v9 = *(v8 + 48);
  sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  sub_22C369A9C();
  (*(v10 + 32))(v9 + *(v10 + 72) * v3, v2);
  *(*(v0 + 56) + 8 * v3) = v1;
  sub_22C633FF8();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v11;
  }
}

uint64_t sub_22C62F7BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C630194();
  result = sub_22C630194();
  v6 = *(a4 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v8;
  }

  return result;
}

uint64_t sub_22C62F884(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_22C37B700(a1, a6 + 8 * (a1 >> 6));
  v8 = v7[6] + 56 * result;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  *(v8 + 48) = *(v9 + 48);
  v11 = (v7[7] + 24 * result);
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v14;
  v15 = v7[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v17;
  }

  return result;
}

void sub_22C62F8F0()
{
  sub_22C3BDA38();
  sub_22C6346E8();
  sub_22C634744();
  sub_22C37F3F8(v1, v2, v3, v4);
  v5(0);
  sub_22C36985C();
  v7 = *(v6 + 32);
  sub_22C38AA18();
  v7();
  sub_22C44178C();
  v7();
  sub_22C633FF8();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v8;
    sub_22C3BDA24();
  }
}

void sub_22C62F994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C38B5AC();
  v7 = v6;
  sub_22C37F3F8(v6, v8, v9, v10);
  v12 = v11(0);
  sub_22C369914(v12);
  sub_22C630194();
  *(*(a4 + 56) + 8 * v7) = v4;
  sub_22C633FF8();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }
}

void sub_22C62FA1C()
{
  sub_22C6346E8();
  sub_22C634744();
  sub_22C37F3F8(v4, v5, v6, v7);
  v9 = *(v8 + 48);
  v10(0);
  sub_22C369A9C();
  (*(v11 + 32))(v9 + *(v11 + 72) * v3, v2);
  *(*(v0 + 56) + 8 * v3) = v1;
  sub_22C633FF8();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v12;
  }
}

uint64_t sub_22C62FAA8(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(a3 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  type metadata accessor for CacheKeyHashableRepresentation(0);
  result = sub_22C630194();
  *(*(a3 + 56) + 8 * a1) = a4;
  v8 = *(a3 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v10;
  }

  return result;
}

unint64_t sub_22C62FB5C(unint64_t result, char a2, void *a3, float a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 4 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

void sub_22C62FBA0()
{
  sub_22C6346E8();
  v3 = v2;
  v7 = sub_22C37F3F8(v2, v4, v5, v6);
  v9 = *(v8 + 48) + 40 * v7;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(v10 + 32);
  v12 = *(v8 + 56);
  sub_22C90339C();
  sub_22C369A9C();
  (*(v13 + 32))(v12 + *(v13 + 72) * v3, v1);
  sub_22C633FF8();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v14;
  }
}

void sub_22C62FC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  sub_22C38B5AC();
  v11 = v10;
  sub_22C37F3F8(v10, v12, v13, v14);
  v16 = *(v15 + 48);
  v17(0);
  sub_22C369A9C();
  (*(v18 + 32))(v16 + *(v18 + 72) * v11, v7);
  v19 = *(a4 + 56);
  a6(0);
  sub_22C369A9C();
  (*(v20 + 32))(v19 + *(v20 + 72) * v11, v6);
  sub_22C633FF8();
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v21;
  }
}

void sub_22C62FCFC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22C37B700(a1, a5 + 8 * (a1 >> 6));
  v10 = (*(v9 + 48) + 16 * v8);
  *v10 = v11;
  v10[1] = v12;
  v13 = *(v9 + 56);
  v14(0);
  sub_22C369A9C();
  (*(v15 + 32))(v13 + *(v15 + 72) * a1, a4);
  sub_22C633FF8();
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }
}

unint64_t sub_22C62FD90(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_22C62FDE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  type metadata accessor for CacheKeyHashableRepresentation(0);
  result = sub_22C630194();
  v8 = *(a4 + 56) + 40 * a1;
  *(v8 + 32) = *(a3 + 32);
  v9 = *(a3 + 16);
  *v8 = *a3;
  *(v8 + 16) = v9;
  v10 = *(a4 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }

  return result;
}

void sub_22C62FEB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_22C37B700(a1, a5 + 8 * (a1 >> 6));
  v8 = (*(v7 + 48) + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  v12 = v11(0);
  sub_22C369914(v12);
  sub_22C630194();
  sub_22C633FF8();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }
}

_OWORD *sub_22C62FF44(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22C456E34(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_22C62FFB0()
{
  sub_22C3BDA38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_22C37F3F8(v6, v4, v8, v2);
  v10 = *(v9 + 48);
  v11(0);
  sub_22C369A9C();
  (*(v12 + 32))(v10 + *(v12 + 72) * v7, v5);
  v13 = v1(0);
  sub_22C369914(v13);
  sub_22C630194();
  sub_22C633FF8();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v14;
    sub_22C3BDA24();
  }
}

uint64_t sub_22C6300B4()
{
  v0 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  sub_22C369914(v0);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  sub_22C3D3364();
  sub_22C9099FC();
  result = sub_22C376738(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_22C36BBA8();
    v6 = sub_22C36BA00();
    return v7(v6);
  }

  return result;
}

uint64_t sub_22C630194()
{
  sub_22C36986C();
  v1(0);
  sub_22C369A9C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

void sub_22C630248()
{
  sub_22C370030();
  v1 = v0;
  v35 = sub_22C901FAC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v33 = v6 - v5;
  v7 = sub_22C36BA0C();
  type metadata accessor for ActionParameterValue(v7);
  sub_22C369824();
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v31 = v10 - v9;
  sub_22C3A5908(&qword_27D9BF4B0, &qword_22C922790);
  sub_22C90B1CC();
  v11 = 0;
  v36 = v1;
  v12 = v1 + 64;
  sub_22C36D280();
  v16 = (v15 + 63) >> 6;
  v29 = v17 + 8;
  v34 = v3;
  v30 = v17;
  if ((v14 & v13) != 0)
  {
    while (1)
    {
      sub_22C36C050();
      v37 = v19;
LABEL_8:
      v22 = v18 | (v11 << 6);
      v23 = (*(v36 + 48) + 16 * v22);
      v24 = v23[1];
      v38 = *v23;
      sub_22C633B00();
      sub_22C62E98C();
      (*(v34 + 16))(v33, v31 + *(v32 + 24), v35);

      sub_22C633A4C();
      sub_22C62E9E0(v31, v25);
      *(v29 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v26 = (v30[6] + 16 * v22);
      *v26 = v38;
      v26[1] = v24;
      (*(v34 + 32))(v30[7] + *(v34 + 72) * v22, v33, v35);
      sub_22C6341D8();
      if (v28)
      {
        break;
      }

      v30[2] = v27;
      if (!v37)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        sub_22C36FB20();
        return;
      }

      ++v20;
      if (*(v12 + 8 * v11))
      {
        sub_22C37FCE8();
        v37 = v21;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22C6304DC(uint64_t *a1)
{
  v2 = *(sub_22C908C5C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C498();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C630584(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C630584(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C908C5C();
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C908C5C() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_22C630AF0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C6306B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C6306B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v71 = sub_22C9093BC();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v70 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v69 = &v52[-v11];
  v12 = sub_22C908C5C();
  v13 = MEMORY[0x28223BE20](v12);
  v62 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52[-v16];
  result = MEMORY[0x28223BE20](v15);
  v21 = &v52[-v19];
  v54 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v66 = (v8 + 8);
    v67 = v24;
    v64 = &v52[-v19];
    v65 = (v23 - 8);
    v68 = v23;
    v60 = (v23 + 16);
    v61 = v22;
    v26 = v22 + v25 * (a3 - 1);
    v59 = -v25;
    v27 = a1 - a3;
    v53 = v25;
    v28 = v22 + v25 * a3;
    v63 = v17;
    while (2)
    {
      v57 = v26;
      v58 = a3;
      v55 = v28;
      v56 = v27;
      v29 = v27;
      v74 = v26;
      while (1)
      {
        v72 = v29;
        v73 = v28;
        v30 = v67;
        v67(v21, v28, v12);
        v30(v17, v74, v12);
        v31 = v69;
        sub_22C90774C();
        v32 = sub_22C90938C();
        v34 = v33;
        v35 = *v66;
        v36 = v71;
        (*v66)(v31, v71);
        v37 = v70;
        sub_22C90774C();
        v38 = v12;
        v39 = sub_22C90938C();
        v41 = v40;
        v35(v37, v36);
        if (v32 == v39 && v34 == v41)
        {
          break;
        }

        v43 = sub_22C90B4FC();

        v44 = *v65;
        v17 = v63;
        (*v65)(v63, v38);
        v21 = v64;
        result = v44(v64, v38);
        v12 = v38;
        v46 = v72;
        v45 = v73;
        if (v43)
        {
          if (!v61)
          {
            __break(1u);
            return result;
          }

          v47 = *v60;
          v48 = v62;
          (*v60)(v62, v73, v38);
          v49 = v74;
          swift_arrayInitWithTakeFrontToBack();
          result = v47(v49, v48, v38);
          v74 = v49 + v59;
          v28 = v45 + v59;
          v50 = __CFADD__(v46, 1);
          v29 = v46 + 1;
          if (!v50)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v51 = *v65;
      v17 = v63;
      (*v65)(v63, v38);
      v21 = v64;
      result = v51(v64, v38);
      v12 = v38;
LABEL_14:
      a3 = v58 + 1;
      v26 = v57 + v53;
      v27 = v56 - 1;
      v28 = v55 + v53;
      if (v58 + 1 != v54)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C630AF0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v167 = a1;
  v193 = sub_22C9093BC();
  v6 = *(v193 - 8);
  v7 = MEMORY[0x28223BE20](v193);
  v189 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v188 = &v162 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v176 = &v162 - v12;
  MEMORY[0x28223BE20](v11);
  v175 = &v162 - v13;
  v177 = sub_22C908C5C();
  v14 = MEMORY[0x28223BE20](v177);
  v171 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v186 = &v162 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v190 = &v162 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v162 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v181 = &v162 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v180 = &v162 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v162 - v28;
  MEMORY[0x28223BE20](v27);
  v32 = &v162 - v30;
  v178 = v31;
  v179 = a3;
  v33 = a3[1];
  if (v33 < 1)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_117:
    v199 = *v167;
    if (!v199)
    {
      goto LABEL_159;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v182;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_119:
      v154 = (v35 + 16);
      for (i = *(v35 + 2); i >= 2; *v154 = i)
      {
        if (!*v179)
        {
          goto LABEL_156;
        }

        v156 = &v35[16 * i];
        v157 = *v156;
        v158 = &v154[2 * i];
        v159 = *(v158 + 1);
        sub_22C6318D8(*v179 + *(v178 + 72) * *v156, *v179 + *(v178 + 72) * *v158, (*v179 + *(v178 + 72) * v159), v199);
        if (v29)
        {
          break;
        }

        if (v159 < v157)
        {
          goto LABEL_144;
        }

        if (i - 2 >= *v154)
        {
          goto LABEL_145;
        }

        *v156 = v157;
        *(v156 + 1) = v159;
        v160 = *v154 - i;
        if (*v154 < i)
        {
          goto LABEL_146;
        }

        i = *v154 - 1;
        sub_22C56BFF0(v158 + 16, v160, v158);
      }

LABEL_115:

      return;
    }

LABEL_153:
    v35 = sub_22C56BFD8();
    goto LABEL_119;
  }

  v34 = 0;
  v194 = (v31 + 8);
  v195 = v31 + 16;
  v191 = (v31 + 32);
  v192 = (v6 + 8);
  v35 = MEMORY[0x277D84F90];
  v166 = a4;
  v196 = v22;
  v164 = v29;
  v163 = &v162 - v30;
  while (1)
  {
    v36 = v34;
    v37 = v34 + 1;
    v168 = v35;
    if (v34 + 1 < v33)
    {
      v187 = v33;
      v38 = *v179;
      v39 = *(v31 + 72);
      v40 = v34;
      v183 = v34 + 1;
      v41 = *(v31 + 16);
      v199 = v38 + v39 * (v34 + 1);
      v42 = v177;
      (v41)(v32);
      v184 = v41;
      (v41)(v29, v38 + v39 * v40, v42);
      v43 = v182;
      LODWORD(v185) = sub_22C627008();
      if (v43)
      {
        v161 = *v194;
        (*v194)(v29, v42);
        (v161)(v32, v42);

        return;
      }

      v182 = 0;
      v44 = *v194;
      (*v194)(v29, v42);
      v174 = v44;
      (v44)(v32, v42);
      v165 = v40;
      v45 = (v40 + 2);
      v46 = v38 + v39 * (v40 + 2);
      v37 = v183;
      v197 = v39;
      v47 = v187;
      v48 = v199;
      while (1)
      {
        v49 = v45;
        if (v37 + 1 >= v47)
        {
          break;
        }

        v198 = v45;
        v183 = v37;
        v50 = v184;
        (v184)(v180, v46, v42);
        v199 = v48;
        v50(v181, v48, v42);
        v51 = v175;
        sub_22C90774C();
        v52 = sub_22C90938C();
        v54 = v53;
        v29 = v193;
        v55 = *v192;
        (*v192)(v51, v193);
        v56 = v176;
        sub_22C90774C();
        v57 = sub_22C90938C();
        v59 = v58;
        v55(v56, v29);
        if (v52 == v57 && v54 == v59)
        {
          v61 = 0;
        }

        else
        {
          v61 = sub_22C90B4FC();
        }

        v42 = v177;
        v62 = v174;
        (v174)(v181, v177);
        v62(v180, v42);
        v63 = v185 ^ v61;
        v39 = v197;
        v49 = v198;
        v46 += v197;
        v48 = &v197[v199];
        v37 = v183 + 1;
        v45 = v198 + 1;
        v22 = v196;
        v47 = v187;
        if (v63)
        {
          goto LABEL_16;
        }
      }

      v37 = v47;
LABEL_16:
      a4 = v166;
      if (v185)
      {
        v36 = v165;
        v35 = v168;
        if (v37 < v165)
        {
          goto LABEL_152;
        }

        if (v165 >= v37)
        {
          v31 = v178;
          goto LABEL_39;
        }

        if (v47 >= v49)
        {
          v64 = v49;
        }

        else
        {
          v64 = v47;
        }

        v65 = v37;
        v66 = v39 * (v64 - 1);
        v67 = v39 * v64;
        v68 = v165 * v39;
        v183 = v65;
        do
        {
          if (v36 != --v65)
          {
            v69 = *v179;
            if (!*v179)
            {
              goto LABEL_157;
            }

            v70 = *v191;
            v29 = v177;
            (*v191)(v171, v69 + v68, v177);
            v71 = v68 < v66 || v69 + v68 >= (v69 + v67);
            if (v71)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v68 != v66)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v70((v69 + v66), v171, v29);
            v35 = v168;
            v22 = v196;
            v39 = v197;
          }

          ++v36;
          v66 -= v39;
          v67 -= v39;
          v68 += v39;
        }

        while (v36 < v65);
        v31 = v178;
        a4 = v166;
        v37 = v183;
      }

      else
      {
        v31 = v178;
        v35 = v168;
      }

      v36 = v165;
    }

LABEL_39:
    v72 = v179[1];
    if (v37 < v72)
    {
      if (__OFSUB__(v37, v36))
      {
        goto LABEL_149;
      }

      if (v37 - v36 < a4)
      {
        break;
      }
    }

LABEL_61:
    if (v37 < v36)
    {
      goto LABEL_148;
    }

    v104 = swift_isUniquelyReferenced_nonNull_native();
    v183 = v37;
    if ((v104 & 1) == 0)
    {
      sub_22C590218(0, *(v35 + 2) + 1, 1, v35);
      v35 = v151;
    }

    v105 = v35;
    v106 = *(v35 + 2);
    v107 = v105;
    v108 = *(v105 + 3);
    v109 = v106 + 1;
    if (v106 >= v108 >> 1)
    {
      sub_22C590218(v108 > 1, v106 + 1, 1, v107);
      v107 = v152;
    }

    *(v107 + 16) = v109;
    v110 = v107 + 32;
    v111 = (v107 + 32 + 16 * v106);
    v112 = v183;
    *v111 = v36;
    v111[1] = v112;
    if (!*v167)
    {
      goto LABEL_158;
    }

    if (v106)
    {
      v29 = *v167;
      v35 = v107;
      while (1)
      {
        v113 = v109 - 1;
        v114 = (v110 + 16 * (v109 - 1));
        v115 = &v35[16 * v109];
        if (v109 >= 4)
        {
          break;
        }

        if (v109 == 3)
        {
          v116 = *(v35 + 4);
          v117 = *(v35 + 5);
          v126 = __OFSUB__(v117, v116);
          v118 = v117 - v116;
          v119 = v126;
LABEL_82:
          if (v119)
          {
            goto LABEL_135;
          }

          v131 = *v115;
          v130 = *(v115 + 1);
          v132 = __OFSUB__(v130, v131);
          v133 = v130 - v131;
          v134 = v132;
          if (v132)
          {
            goto LABEL_138;
          }

          v135 = v114[1];
          v136 = v135 - *v114;
          if (__OFSUB__(v135, *v114))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v133, v136))
          {
            goto LABEL_143;
          }

          if (v133 + v136 >= v118)
          {
            if (v118 < v136)
            {
              v113 = v109 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v109 < 2)
        {
          goto LABEL_137;
        }

        v138 = *v115;
        v137 = *(v115 + 1);
        v126 = __OFSUB__(v137, v138);
        v133 = v137 - v138;
        v134 = v126;
LABEL_97:
        if (v134)
        {
          goto LABEL_140;
        }

        v140 = *v114;
        v139 = v114[1];
        v126 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v126)
        {
          goto LABEL_142;
        }

        if (v141 < v133)
        {
          goto LABEL_113;
        }

LABEL_104:
        if (v113 - 1 >= v109)
        {
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
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*v179)
        {
          goto LABEL_155;
        }

        v145 = (v110 + 16 * (v113 - 1));
        v146 = *v145;
        v147 = v110 + 16 * v113;
        v148 = *(v147 + 8);
        v149 = v182;
        sub_22C6318D8(*v179 + *(v178 + 72) * *v145, *v179 + *(v178 + 72) * *v147, (*v179 + *(v178 + 72) * v148), v29);
        v182 = v149;
        if (v149)
        {
          goto LABEL_115;
        }

        if (v148 < v146)
        {
          goto LABEL_130;
        }

        v150 = *(v107 + 16);
        if (v113 > v150)
        {
          goto LABEL_131;
        }

        *v145 = v146;
        v145[1] = v148;
        if (v113 >= v150)
        {
          goto LABEL_132;
        }

        v109 = v150 - 1;
        sub_22C56BFF0((v147 + 16), v150 - 1 - v113, (v110 + 16 * v113));
        v35 = v107;
        *(v107 + 16) = v150 - 1;
        if (v150 <= 2)
        {
          goto LABEL_113;
        }
      }

      v120 = v110 + 16 * v109;
      v121 = *(v120 - 64);
      v122 = *(v120 - 56);
      v126 = __OFSUB__(v122, v121);
      v123 = v122 - v121;
      if (v126)
      {
        goto LABEL_133;
      }

      v125 = *(v120 - 48);
      v124 = *(v120 - 40);
      v126 = __OFSUB__(v124, v125);
      v118 = v124 - v125;
      v119 = v126;
      if (v126)
      {
        goto LABEL_134;
      }

      v127 = *(v115 + 1);
      v128 = v127 - *v115;
      if (__OFSUB__(v127, *v115))
      {
        goto LABEL_136;
      }

      v126 = __OFADD__(v118, v128);
      v129 = v118 + v128;
      if (v126)
      {
        goto LABEL_139;
      }

      if (v129 >= v123)
      {
        v143 = *v114;
        v142 = v114[1];
        v126 = __OFSUB__(v142, v143);
        v144 = v142 - v143;
        if (v126)
        {
          goto LABEL_147;
        }

        if (v118 < v144)
        {
          v113 = v109 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

    v35 = v107;
LABEL_113:
    v31 = v178;
    v33 = v179[1];
    v34 = v183;
    a4 = v166;
    v22 = v196;
    v32 = v163;
    v29 = v164;
    if (v183 >= v33)
    {
      goto LABEL_117;
    }
  }

  v73 = v36 + a4;
  if (__OFADD__(v36, a4))
  {
    goto LABEL_150;
  }

  if (v73 >= v72)
  {
    v73 = v179[1];
  }

  v74 = v190;
  if (v73 < v36)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v37 == v73)
  {
    goto LABEL_61;
  }

  v75 = *v179;
  v76 = *(v31 + 72);
  v187 = *(v31 + 16);
  v77 = (v75 + v76 * (v37 - 1));
  v184 = -v76;
  v165 = v36;
  v78 = v36 - v37;
  v185 = v75;
  v169 = v76;
  v79 = (v75 + v37 * v76);
  v29 = v177;
  v170 = v73;
LABEL_48:
  v183 = v37;
  v172 = v79;
  v173 = v78;
  v80 = v78;
  v174 = v77;
  while (1)
  {
    v199 = v80;
    v198 = v79;
    v81 = v187;
    v187(v22, v79, v29);
    v197 = v77;
    v81(v74, v77, v29);
    v82 = v188;
    sub_22C90774C();
    v83 = sub_22C90938C();
    v85 = v84;
    v86 = *v192;
    v87 = v29;
    v88 = v193;
    (*v192)(v82, v193);
    v89 = v189;
    sub_22C90774C();
    v90 = sub_22C90938C();
    v92 = v91;
    v86(v89, v88);
    if (v83 == v90 && v85 == v92)
    {

      v102 = *v194;
      v103 = v190;
      (*v194)(v190, v87);
      v22 = v196;
      (v102)(v196, v87);
      v29 = v87;
      v74 = v103;
LABEL_59:
      v37 = v183 + 1;
      v77 = &v174[v169];
      v78 = v173 - 1;
      v79 = &v172[v169];
      if (v183 + 1 == v170)
      {
        v37 = v170;
        v35 = v168;
        v36 = v165;
        goto LABEL_61;
      }

      goto LABEL_48;
    }

    v94 = sub_22C90B4FC();

    v95 = *v194;
    v96 = v190;
    (*v194)(v190, v87);
    v22 = v196;
    (v95)(v196, v87);
    v29 = v87;
    v74 = v96;
    if ((v94 & 1) == 0)
    {
      goto LABEL_59;
    }

    v97 = v199;
    if (!v185)
    {
      break;
    }

    v98 = *v191;
    v99 = v186;
    v100 = v198;
    (*v191)(v186, v198, v29);
    v101 = v197;
    swift_arrayInitWithTakeFrontToBack();
    v98(v101, v99, v29);
    v77 = &v101[v184];
    v79 = &v100[v184];
    v71 = __CFADD__(v97, 1);
    v80 = v97 + 1;
    if (v71)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
}

uint64_t sub_22C6318D8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v93 = sub_22C9093BC();
  v8 = *(v93 - 8);
  v9 = MEMORY[0x28223BE20](v93);
  v83 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v82 = &v78 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v88 = &v78 - v14;
  MEMORY[0x28223BE20](v13);
  v87 = &v78 - v15;
  v16 = sub_22C908C5C();
  v17 = MEMORY[0x28223BE20](v16);
  v86 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](&v78 - v19);
  v22 = &v78 - v21;
  result = MEMORY[0x28223BE20](v20);
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v28 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_72;
  }

  v29 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_73;
  }

  v94 = &v78 - v25;
  v31 = (a2 - a1) / v27;
  v100 = a1;
  v99 = a4;
  v91 = (v8 + 8);
  v92 = (v24 + 16);
  v89 = v22;
  v90 = (v24 + 8);
  v32 = v29 / v27;
  if (v31 < v29 / v27)
  {
    sub_22C3D7950(a1, (a2 - a1) / v27, a4);
    v85 = a3;
    v86 = (a4 + v31 * v27);
    v98 = v86;
    v33 = v89;
    v84 = v27;
    while (1)
    {
      if (a4 >= v86 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v96 = a1;
      v97 = a2;
      v35 = *v92;
      (*v92)(v94, a2, v16);
      v95 = a4;
      v35(v33, a4, v16);
      v36 = v87;
      sub_22C90774C();
      v37 = v16;
      v38 = sub_22C90938C();
      v40 = v39;
      v41 = *v91;
      v42 = v93;
      (*v91)(v36, v93);
      v43 = v88;
      sub_22C90774C();
      v44 = sub_22C90938C();
      v46 = v45;
      v41(v43, v42);
      if (v38 == v44 && v40 == v46)
      {

        v33 = v89;
        v53 = *v90;
        (*v90)(v89, v37);
        v53(v94, v37);
        v16 = v37;
        v50 = v96;
      }

      else
      {
        v48 = sub_22C90B4FC();

        v33 = v89;
        v49 = *v90;
        (*v90)(v89, v37);
        v49(v94, v37);
        v16 = v37;
        v50 = v96;
        if (v48)
        {
          v51 = v84;
          a3 = v85;
          a2 = v97 + v84;
          v52 = v96 < v97 || v96 >= a2;
          a4 = v95;
          if (v52)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v96 != v97)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_37;
        }
      }

      v51 = v84;
      a3 = v85;
      a4 = v95 + v84;
      v54 = v50 < v95 || v50 >= a4;
      a2 = v97;
      if (v54)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v50 != v95)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v99 = a4;
LABEL_37:
      a1 = v50 + v51;
      v100 = a1;
    }
  }

  v94 = result;
  sub_22C3D7950(a2, v29 / v27, a4);
  v55 = a4 + v32 * v27;
  v56 = -v27;
  v57 = v55;
  v95 = a4;
  v96 = a1;
  v81 = v16;
  v84 = -v27;
LABEL_41:
  v85 = (a2 + v56);
  v79 = v57;
  v97 = a2;
  while (1)
  {
    if (v55 <= a4)
    {
      v100 = a2;
      v98 = v57;
      goto LABEL_70;
    }

    if (a2 <= a1)
    {
      break;
    }

    v88 = a3;
    v89 = v55;
    v80 = v57;
    v58 = *v92;
    v87 = (v55 + v56);
    (v58)(v94);
    v58(v86, v85, v16);
    v59 = v82;
    sub_22C90774C();
    v60 = sub_22C90938C();
    v62 = v61;
    v63 = *v91;
    v64 = v93;
    (*v91)(v59, v93);
    v65 = v83;
    sub_22C90774C();
    v66 = sub_22C90938C();
    v68 = v67;
    v63(v65, v64);
    if (v60 == v66 && v62 == v68)
    {
      v70 = 0;
    }

    else
    {
      v70 = sub_22C90B4FC();
    }

    v71 = v88;

    v56 = v84;
    v72 = &v71[v84];
    v73 = *v90;
    v16 = v81;
    (*v90)(v86, v81);
    v73(v94, v16);
    a4 = v95;
    a1 = v96;
    a2 = v97;
    if (v70)
    {
      v75 = v71 < v97 || v72 >= v97;
      v76 = v71;
      a3 = &v71[v56];
      if (v75)
      {
        a2 = v85;
        swift_arrayInitWithTakeFrontToBack();
        v57 = v80;
        v55 = v89;
      }

      else
      {
        v57 = v80;
        v77 = v85;
        a2 = v85;
        v55 = v89;
        if (v76 != v97)
        {
          v57 = v80;
          swift_arrayInitWithTakeBackToFront();
          a2 = v77;
        }
      }

      goto LABEL_41;
    }

    if (v71 < v89 || v72 >= v89)
    {
      v57 = v87;
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_59;
    }

    v57 = v87;
    v28 = v89 == v71;
    a3 = &v71[v56];
    v55 = v87;
    if (!v28)
    {
      v57 = v87;
      swift_arrayInitWithTakeBackToFront();
LABEL_59:
      a3 = v72;
      v55 = v57;
    }
  }

  v100 = a2;
  v98 = v79;
LABEL_70:
  sub_22C838214(&v100, &v99, &v98);
  return 1;
}

void *sub_22C632064(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_22C632CF8(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_22C63210C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v61 = a5;
  v50 = a4;
  v7 = sub_22C908C5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v47 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = v42 - v11;
  v51 = sub_22C9069BC();
  v12 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BF4D0, &qword_22C923090);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v42 - v16;
  sub_22C8920A0();
  v53 = v57;
  v54 = v58;
  v55 = v59;
  v49 = (v12 + 32);
  v18 = (v8 + 32);
  v56 = v60;
  v45 = v8 + 16;
  v44 = v8 + 8;
  v46 = v12;
  v43 = (v12 + 8);
  v48 = v8;
  v42[3] = v8 + 40;
  v42[1] = a1;

  v42[0] = a3;

  while (1)
  {
    sub_22C89143C();
    v19 = sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);
    if (sub_22C370B74(v17, 1, v19) == 1)
    {
      sub_22C36A674(v53);
    }

    v20 = *(v19 + 48);
    v21 = *v49;
    (*v49)(v14, v17, v51);
    v22 = *v18;
    v23 = v7;
    (*v18)(v52, &v17[v20], v7);
    v24 = *v61;
    sub_22C628D18();
    v27 = v26;
    v28 = v24[2];
    v29 = (v25 & 1) == 0;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v28 + v29)
    {
      if ((v50 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88F148();
      sub_22C628D18();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_17;
      }

      v27 = v31;
    }

    v33 = *v61;
    if (v30)
    {
      v35 = v47;
      v34 = v48;
      v36 = *(v48 + 72) * v27;
      v7 = v23;
      (*(v48 + 16))(v47, v33[7] + v36, v23);
      (*(v34 + 8))(v52, v23);
      (*v43)(v14, v51);
      (*(v34 + 40))(v33[7] + v36, v35, v23);
    }

    else
    {
      v33[(v27 >> 6) + 8] |= 1 << v27;
      v21((v33[6] + *(v46 + 72) * v27), v14, v51);
      v37 = v33[7] + *(v48 + 72) * v27;
      v7 = v23;
      v22(v37, v52, v23);
      v38 = v33[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_16;
      }

      v33[2] = v40;
    }

    v50 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C632604(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v68 = a5;
  v48 = a4;
  v7 = sub_22C908C5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = v47 - v11;
  v12 = sub_22C9069BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C3A5908(&qword_27D9BF4D0, &qword_22C923090);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v47 - v17;
  sub_22C8920A0();
  v60 = v64;
  v61 = v65;
  v62 = v66;
  v57 = (v8 + 32);
  v58 = (v13 + 32);
  v63 = v67;
  v52 = v8 + 16;
  v51 = v8 + 8;
  v53 = v13;
  v50 = (v13 + 8);
  v19 = v15;
  v20 = v48;
  v56 = v8;
  v49 = v8 + 40;
  v47[2] = a1;

  v47[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_22C89143C();
    v21 = sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);
    if (sub_22C370B74(v18, 1, v21) == 1)
    {
      sub_22C36A674(v60);
    }

    v22 = *(v21 + 48);
    v23 = *v58;
    (*v58)(v19, v18, v12);
    v24 = *v57;
    v25 = &v18[v22];
    v26 = v7;
    (*v57)(v59, v25, v7);
    v27 = *v68;
    sub_22C628D18();
    v30 = v29;
    v31 = v27[2];
    v32 = (v28 & 1) == 0;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v31 + v32)
    {
      if ((v20 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88F148();
      sub_22C628D18();
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_17;
      }

      v30 = v34;
    }

    v36 = *v68;
    if (v33)
    {
      v37 = v56;
      v38 = v54;
      v39 = v19;
      v40 = v12;
      v41 = v59;
      v7 = v26;
      (*(v56 + 16))(v54, v59, v26);
      v42 = v41;
      v12 = v40;
      v19 = v39;
      (*(v37 + 8))(v42, v26);
      (*v50)(v39, v12);
      (*(v37 + 40))(v36[7] + *(v37 + 72) * v30, v38, v26);
    }

    else
    {
      v36[(v30 >> 6) + 8] |= 1 << v30;
      v23((v36[6] + *(v53 + 72) * v30), v19, v12);
      v7 = v26;
      v24((v36[7] + *(v56 + 72) * v30), v59, v26);
      v43 = v36[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_16;
      }

      v36[2] = v45;
    }

    v20 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void *sub_22C632B20(uint64_t a1, void *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      a2 = sub_22C632064(v14, v9, a1, a2, a3);
      MEMORY[0x2318B9880](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  v11 = v15 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v9, v11);

  v12 = sub_22C632CF8(v11, v9, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return a2;
}

uint64_t sub_22C632CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a5;
  v72 = a4;
  v56[1] = a2;
  v57 = a1;
  v71 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v6 = MEMORY[0x28223BE20](v71);
  v68 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v56 - v8;
  v10 = sub_22C908C5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9069BC();
  result = MEMORY[0x28223BE20](v14);
  v18 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0;
  v73 = a3;
  v23 = *(a3 + 64);
  v22 = a3 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v59 = (v24 + 63) >> 6;
  v60 = v22;
  v69 = v16 + 2;
  v70 = v11;
  v78 = v16;
  v64 = v18;
  v65 = (v11 + 8);
  v79 = v9;
  v66 = v16 + 1;
  v67 = v11 + 16;
  v62 = v13;
  v63 = result;
  while (2)
  {
    v58 = v19;
    while (1)
    {
      v27 = v13;
      if (!v26)
      {
        v30 = v20;
        while (1)
        {
          v20 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v20 >= v59)
          {
            goto LABEL_22;
          }

          v31 = *(v60 + 8 * v20);
          ++v30;
          if (v31)
          {
            v28 = v10;
            v29 = __clz(__rbit64(v31));
            v77 = (v31 - 1) & v31;
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v28 = v10;
      v29 = __clz(__rbit64(v26));
      v77 = (v26 - 1) & v26;
LABEL_12:
      v32 = v73;
      v33 = *(v73 + 48) + v78[9] * (v29 | (v20 << 6));
      v76 = v78[2];
      v34 = v18;
      v35 = v29 | (v20 << 6);
      v76(v18, v33, v14);
      v36 = *(v32 + 56);
      v37 = *(v70 + 72);
      v61 = v35;
      v38 = *(v70 + 16);
      v38(v27, v36 + v37 * v35, v28);
      v39 = v79;
      v76(v79, v34, v14);
      v40 = v71;
      v41 = v27;
      v42 = v28;
      v38((v39 + *(v71 + 48)), v41, v28);
      v43 = v68;
      sub_22C3D3364();
      v44 = sub_22C9069AC();
      v46 = v45;
      v76 = v78[1];
      (v76)(v43, v14);
      if (v44 == v72 && v46 == v74)
      {
        break;
      }

      v75 = sub_22C90B4FC();

      v48 = *(v40 + 48);
      sub_22C3AC228(v79, &qword_27D9BF110, &unk_22C922580);
      v49 = *v65;
      (*v65)(&v43[v48], v42);
      v13 = v62;
      v49(v62, v42);
      v14 = v63;
      v50 = v64;
      result = (v76)(v64, v63);
      v10 = v42;
      v18 = v50;
      v26 = v77;
      if (v75)
      {
        goto LABEL_19;
      }
    }

    v51 = *(v40 + 48);
    sub_22C3AC228(v79, &qword_27D9BF110, &unk_22C922580);
    v52 = *v65;
    (*v65)(&v43[v51], v42);
    v13 = v62;
    v52(v62, v42);
    v14 = v63;
    v53 = v64;
    result = (v76)(v64, v63);
    v10 = v42;
    v18 = v53;
    v26 = v77;
LABEL_19:
    *(v57 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
    v19 = v58 + 1;
    if (!__OFADD__(v58, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_22:
  sub_22C8392BC();
  v55 = v54;

  return v55;
}

void sub_22C63323C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0 || (sub_22C38A0A8(), v7 <= v6))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v5 + 36) == v4)
  {
    v8 = v3;
    v9 = *(v5 + 56);
    sub_22C9093BC();
    sub_22C369A9C();
    (*(v10 + 16))(v8, v9 + *(v10 + 72) * a2);

    sub_22C37335C();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_22C633328(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x8000000000000000) != 0 || (sub_22C38A0A8(), v14 <= v13))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != v10)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v15 = v12;
  v16 = v9;
  v17 = v8;
  v18 = *(a6 + 48);
  v11(0);
  sub_22C369A9C();
  (*(v19 + 16))(v17, v18 + *(v19 + 72) * a3);
  v20 = *(a6 + 56);
  v15(0);
  sub_22C36985C();
  v23 = *(v22 + 16);
  v24 = v20 + *(v22 + 72) * a3;

  v23(v16, v24, v21);
}

uint64_t sub_22C633458(uint64_t a1)
{
  result = sub_22C908AEC();
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, qword_281431C30, &protocol descriptor for ActionRequirementEvaluating);
    if (v3 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_28142FAA8, MEMORY[0x277D1E538]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_22C63353C(uint64_t a1)
{
  sub_22C9093BC();
  if (v1 <= 0x3F)
  {
    sub_22C6335D8(319);
    if (v2 <= 0x3F)
    {
      sub_22C901FAC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C6335D8(uint64_t a1)
{
  if (!qword_27D9BF380)
  {
    sub_22C90260C();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BF380);
    }
  }
}

uint64_t sub_22C633630()
{
  sub_22C36986C();
  v1(0);
  sub_22C369A9C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

void sub_22C6336E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x8000000000000000) != 0 || (sub_22C38A0A8(), v11 <= v10))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v12 = v8;
  v13 = type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C369914(v13);
  sub_22C62E98C();
  v14 = *(a6 + 56) + 40 * a3;

  sub_22C6337B8(v14, v12);
}

void sub_22C633870()
{
  v0 = sub_22C9093BC();
  sub_22C369914(v0);
  sub_22C6348E8();

  sub_22C627BA8();
}

uint64_t sub_22C6339B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C633A7C@<X0>(uint64_t a9@<X8>)
{
  *(v11 - 256) = v9;
  *(v11 - 248) = a9;
  v14 = v10[57];
  v13 = v10[58];
  *(v11 - 240) = v10[60];
  *(v11 - 232) = v13;
  v15 = v10[54];
  *(v11 - 224) = v14;
  *(v11 - 216) = v15;
  v16 = v10[50];
  *(v11 - 208) = v10[51];
  *(v11 - 200) = v16;
  v17 = v10[47];
  *(v11 - 192) = v10[49];
  *(v11 - 184) = v17;
  v18 = v10[43];
  *(v11 - 176) = v10[44];
  *(v11 - 168) = v18;
  v19 = v10[41];
  *(v11 - 160) = v10[42];
  *(v11 - 152) = v19;
  v20 = v10[37];
  *(v11 - 144) = v10[38];
  *(v11 - 136) = v20;
  v21 = v10[33];
  *(v11 - 128) = v10[34];
  *(v11 - 120) = v21;
  v22 = v10[31];
  *(v11 - 112) = v10[32];
  *(v11 - 104) = v22;
  v23 = v10[29];
  *(v11 - 96) = v10[30];
  *(v11 - 88) = v23;
}

uint64_t sub_22C633CC8()
{

  return swift_allocObject();
}

double sub_22C633E28()
{
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  return result;
}

double sub_22C633E40()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

void sub_22C633E58(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v1;
  *(*(v4 + 56) + 8 * v3) = v5;
}

void sub_22C633E94()
{

  JUMPOUT(0x2318B57A0);
}

uint64_t sub_22C633EBC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22C634010()
{

  return sub_22C90B62C();
}

uint64_t sub_22C634030()
{

  return sub_22C62E9E0(v0, type metadata accessor for PromptTreeIdentifier.Label);
}

uint64_t sub_22C634088()
{
}

uint64_t sub_22C634100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_22C9066CC();
}

void sub_22C63419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = (*(v21 + 48) + 16 * v23);
  *v24 = a20;
  v24[1] = a21;
  *(*(v21 + 56) + 8 * v23) = v22;
}

uint64_t sub_22C63423C()
{
  *(*(v1 + 56) + 8 * v0) = v2;
}

void sub_22C634284()
{
  v2 = v0[57];
  *(v1 - 120) = v0[56];
  *(v1 - 112) = v2;
  *(v1 - 104) = v0[42];
}

uint64_t sub_22C63435C(uint64_t a1)
{

  return sub_22C90B15C();
}

void sub_22C6343C8()
{
  v1 = v0[61];
  STACK[0x308] = v0[62];
  STACK[0x310] = v1;
  STACK[0x318] = v0[60];
}

uint64_t sub_22C6343FC()
{
  result = v0;
  *(v2 - 144) = v1 + 16;
  return result;
}

uint64_t sub_22C634424(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C90B15C();
}

uint64_t sub_22C63443C()
{

  return sub_22C90B62C();
}

uint64_t sub_22C634454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

void sub_22C634474()
{
  v2 = *(v0 + 1840);
  *(v1 - 136) = *(v0 + 1800);
  *(v1 - 128) = v2;
}

uint64_t sub_22C6344F4()
{

  return sub_22C3A5908(v1, v0);
}

uint64_t sub_22C634630()
{
  *(*(v0 + 56) + 8 * v2) = v1;
}

uint64_t sub_22C63464C()
{

  return sub_22C9066DC();
}

uint64_t sub_22C634664()
{
  *(v1 - 96) = v0;
}

uint64_t sub_22C634688()
{
  *(v1 + 552) = *v0;

  return sub_22C9094EC();
}

uint64_t sub_22C6346A4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C90B15C();
}

uint64_t sub_22C6346BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{

  return sub_22C36E5AC(a2, v4, a3, a4);
}

void sub_22C634870(uint64_t a1@<X8>)
{
  *(v3 - 120) = a1;
  *(v3 - 112) = v1;
  v4 = *(v2 + 1904);
  *(v3 - 152) = *(v2 + 1896);
  *(v3 - 144) = v4;
}

__n128 sub_22C6348A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  result = *(v2 + 32);
  *a2 = *(v2 + 16);
  *(a2 + 16) = result;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_22C634940()
{

  return swift_allocObject();
}

uint64_t sub_22C634960()
{
}

uint64_t sub_22C634980()
{
}

uint64_t sub_22C6349A0()
{

  return swift_allocObject();
}

void sub_22C6349C0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t sub_22C6349E0(uint64_t a1)
{

  return sub_22C90B15C();
}

uint64_t sub_22C634A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{

  return sub_22C36E5AC(v4, v5, a3, a4);
}

uint64_t sub_22C634A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22C9066DC();
  v4[6] = v5;
  sub_22C3699B8(v5);
  v4[7] = v6;
  v4[8] = sub_22C3699D4();
  v7 = sub_22C90906C();
  v4[9] = v7;
  sub_22C3699B8(v7);
  v4[10] = v8;
  v4[11] = sub_22C3699D4();
  v9 = sub_22C9093BC();
  v4[12] = v9;
  sub_22C3699B8(v9);
  v4[13] = v10;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v11 = sub_22C90674C();
  v4[16] = v11;
  sub_22C3699B8(v11);
  v4[17] = v12;
  v4[18] = sub_22C3699D4();
  v13 = sub_22C90855C();
  v4[19] = v13;
  sub_22C3699B8(v13);
  v4[20] = v14;
  v4[21] = sub_22C3699D4();
  v15 = sub_22C90880C();
  v4[22] = v15;
  sub_22C3699B8(v15);
  v4[23] = v16;
  v4[24] = sub_22C3699D4();
  v17 = sub_22C3A5908(&qword_27D9BF568, &qword_22C9228C8);
  sub_22C369914(v17);
  v4[25] = sub_22C3699D4();
  v18 = type metadata accessor for StepResolution(0);
  v4[26] = v18;
  sub_22C369914(v18);
  v4[27] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C634CF4, 0, 0);
}

uint64_t sub_22C634CF4(uint64_t a1)
{
  sub_22C90878C();
  *(v1 + 224) = sub_22C635998();
  sub_22C90857C();
  v2 = swift_task_alloc();
  *(v1 + 232) = v2;
  *v2 = v1;
  v2[1] = sub_22C634E74;
  sub_22C372034();

  return sub_22C635D78(v3, v4, v5, v6, v7);
}

uint64_t sub_22C634E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*v9 + 192);
  v11 = *(*v9 + 184);
  v12 = *(*v9 + 176);
  *(*v9 + 240) = v8;

  (*(v11 + 8))(v10, v12);

  if (v8)
  {
    v13 = sub_22C6358E0;
  }

  else
  {
    v13 = sub_22C635008;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

void sub_22C635008()
{
  v1 = v0[25];
  if (sub_22C370B74(v1, 1, v0[26]) != 1)
  {
    v9 = v0[27];
    v10 = v0[2];
    sub_22C63A260(v1, v9, type metadata accessor for StepResolution);
    sub_22C63A260(v9, v10, type metadata accessor for StepResolution);
LABEL_46:

    sub_22C369A24();

    v74();
    return;
  }

  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  sub_22C36DD28(v1, &qword_27D9BF568, &qword_22C9228C8);
  sub_22C9085CC();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == *MEMORY[0x277D1E560])
  {
    v6 = v0[21];
    v7 = v0[2];
    (*(v0[20] + 96))(v6, v0[19]);
    sub_22C9086FC();
    sub_22C36985C();
    (*(v8 + 32))(v7, v6);
LABEL_45:
    swift_storeEnumTagMultiPayload();
    goto LABEL_46;
  }

  if (v5 != *MEMORY[0x277D1E558])
  {

    sub_22C90B4EC();
    return;
  }

  v11 = v0[21];
  v12 = v0[18];
  v13 = v0[16];
  v14 = v0[17];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[7];
  (*(v0[20] + 96))(v11, v0[19]);
  v75 = *(v14 + 32);
  v75(v12, v11, v13);
  v18 = sub_22C9066FC();
  v19 = 0;
  v20 = v18 + 64;
  v78 = v18;
  v21 = -1;
  v22 = -1 << *(v18 + 32);
  if (-v22 < 64)
  {
    v21 = ~(-1 << -v22);
  }

  v23 = v21 & *(v18 + 64);
  v24 = (63 - v22) >> 6;
  v89 = *MEMORY[0x277D729E0];
  v88 = (v15 + 8);
  v95 = *MEMORY[0x277D1DBA8];
  v85 = (v15 + 96);
  v84 = (v16 + 8);
  v25 = MEMORY[0x277D84F98];
  v76 = v24;
  v77 = v18 + 64;
  v86 = v15;
  if (!v23)
  {
    while (1)
    {
LABEL_10:
      v26 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_53;
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = *(v20 + 8 * v26);
      ++v19;
      if (v23)
      {
        v80 = v25;
        v19 = v26;
        goto LABEL_14;
      }
    }

    v71 = v0[18];
    v72 = v0[16];
    v73 = v0[2];

    sub_22C90670C();
    v75(v73, v71, v72);
    goto LABEL_45;
  }

  while (1)
  {
    v80 = v25;
LABEL_14:
    v81 = v23;
    v82 = v19;
    v27 = *(*(v78 + 56) + 8 * (__clz(__rbit64(v23)) | (v19 << 6)));

    v79 = v27;
    v29 = sub_22C636E38(v28);
    v92 = *(v29 + 16);
    if (v92)
    {
      break;
    }

LABEL_39:

    v70 = sub_22C637314(v79);

    sub_22C3CE514(v70);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C62E500();

    v23 = (v81 - 1) & v81;
    v25 = v80;
    v24 = v76;
    v20 = v77;
    v19 = v82;
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  v30 = 0;
  v83 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v91 = v29 + v83;
  v31 = MEMORY[0x277D84F90];
  v90 = v29;
  while (v30 < *(v29 + 16))
  {
    v93 = v30;
    v94 = v31;
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[12];
    v35 = *(v15 + 72);
    v36 = *(v15 + 16);
    v36(v32, v91 + v35 * v30, v34);
    v36(v33, v32, v34);
    if ((*(v15 + 88))(v33, v34) == v89)
    {
      (*v85)(v0[14], v0[12]);
      swift_projectBox();
      v37 = sub_22C5CA5C8();
      v38(v37);

      v39 = sub_22C90905C();
      v40 = *(v39 + 16);
      if (!v40)
      {
        v66 = v0[15];
        v68 = v0[11];
        v67 = v0[12];
        v69 = v0[9];

        (*v84)(v68, v69);
        (*v88)(v66, v67);
        v41 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }

      v96 = MEMORY[0x277D84F90];
      sub_22C3B79D8(0, v40, 0);
      v41 = v96;
      v42 = v39 + v83;
      do
      {
        v43 = v0[8];
        v44 = v0[6];
        v36(v43, v42, v0[12]);
        (*(v17 + 104))(v43, v95, v44);
        v46 = *(v96 + 16);
        v45 = *(v96 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_22C3B79D8(v45 > 1, v46 + 1, 1);
        }

        v47 = v0[8];
        v48 = v0[6];
        *(v96 + 16) = v46 + 1;
        (*(v17 + 32))(v96 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v46, v47, v48);
        v42 += v35;
        --v40;
      }

      while (v40);
      v53 = v0[12];
      v54 = v0[9];

      v55 = sub_22C37A27C();
      v56(v55, v54);
      v57 = sub_22C5CA5C8();
      v58(v57, v53);
    }

    else
    {
      v49 = v0[15];
      v50 = v0[12];
      v87 = v0[6];
      v51 = *v88;
      (*v88)(v0[14], v50);
      sub_22C3A5908(&qword_27D9BAD10, &unk_22C90D5B0);
      v52 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_22C90F800;
      v36(v41 + v52, v49, v50);
      (*(v17 + 104))(v41 + v52, v95, v87);
      v51(v49, v50);
    }

    v15 = v86;
LABEL_26:
    v59 = *(v41 + 16);
    v31 = v94;
    v60 = *(v94 + 16);
    if (__OFADD__(v60, v59))
    {
      goto LABEL_50;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v60 + v59 > *(v94 + 24) >> 1)
    {
      sub_22C595144();
      v31 = v61;
    }

    if (*(v41 + 16))
    {
      if ((*(v31 + 24) >> 1) - *(v31 + 16) < v59)
      {
        goto LABEL_52;
      }

      swift_arrayInitWithCopy();

      v62 = v93;
      if (v59)
      {
        v63 = *(v31 + 16);
        v64 = __OFADD__(v63, v59);
        v65 = v63 + v59;
        if (v64)
        {
          goto LABEL_54;
        }

        *(v31 + 16) = v65;
      }
    }

    else
    {

      v62 = v93;
      if (v59)
      {
        goto LABEL_51;
      }
    }

    v30 = v62 + 1;
    v29 = v90;
    if (v30 == v92)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}