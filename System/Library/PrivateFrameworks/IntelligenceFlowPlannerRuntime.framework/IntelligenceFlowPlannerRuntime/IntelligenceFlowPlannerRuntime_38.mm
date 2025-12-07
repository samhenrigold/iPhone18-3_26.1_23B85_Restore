void sub_22C6FB2CC()
{
  sub_22C70CA60();
  sub_22C70CE80();

  sub_22C375A9C();
  sub_22C386FF4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22C6FB4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_22C9074CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  sub_22C729D78(a1, v12);
  v19 = sub_22C9025EC();
  if (sub_22C370B74(v12, 1, v19) == 1)
  {
    sub_22C36DD80(v12, &qword_27D9BF610);
    v20 = 1;
  }

  else
  {
    sub_22C90207C();
    (*(*(v19 - 8) + 8))(v12, v19);
    v20 = 0;
  }

  v21 = sub_22C9093BC();
  sub_22C36C640(v18, v20, 1, v21);
  sub_22C6AEA50(v18, v16, &qword_27D9BB908, &qword_22C910960);
  if (sub_22C370B74(v16, 1, v21) == 1)
  {
    v22 = sub_22C90931C();
    v23 = swift_allocBox();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D729A0], v22);
    *v9 = v23;
    (*(*(v21 - 8) + 104))(v9, *MEMORY[0x277D72A58], v21);
    if (sub_22C370B74(v16, 1, v21) != 1)
    {
      sub_22C36DD80(v16, &qword_27D9BB908);
    }
  }

  else
  {
    (*(*(v21 - 8) + 32))(v9, v16, v21);
  }

  (*(v7 + 104))(v9, *MEMORY[0x277D1E040], v6);
  v25 = sub_22C90260C();
  sub_22C36C640(v5, 1, 1, v25);
  v26 = v30;
  sub_22C90869C();
  sub_22C36DD80(v18, &qword_27D9BB908);
  v27 = sub_22C9086BC();
  return sub_22C36C640(v26, 0, 1, v27);
}

BOOL sub_22C6FB938(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9088CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9089DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9089EC();
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D1E6F8])
  {
    (*(v8 + 96))(v10, v7);
    (*(v4 + 32))(v6, v10, v3);
    v11 = sub_22C90887C();
    MEMORY[0x28223BE20](v11);
    v14[-2] = a2;
    v12 = sub_22C5EC5FC(sub_22C70C028, &v14[-4], v11);

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  return v12;
}

uint64_t sub_22C6FBB8C(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v17 = sub_22C901FAC();
  v2 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C90654C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9072EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90702C();
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D1DAD8])
  {
    (*(v6 + 96))(v8, v5);
    v13 = (*(v10 + 32))(v12, v8, v9);
    MEMORY[0x2318B47A0](v13);
    v14 = sub_22C901F6C();
    (*(v2 + 8))(v4, v17);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_22C6FBE28(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22C3A5908(&qword_27D9BB688, &unk_22C90FA60);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_22C9063DC();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  v3[13] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF7A8, &unk_22C923360);
  v3[14] = swift_task_alloc();
  v6 = sub_22C90665C();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v3[18] = swift_task_alloc();
  v7 = sub_22C90931C();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v8 = sub_22C9093BC();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v9 = sub_22C9092DC();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v10 = sub_22C908C5C();
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v11 = sub_22C9069BC();
  v3[34] = v11;
  v3[35] = *(v11 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v12 = sub_22C3A5908(&qword_27D9BAD40, &qword_22C90D5E0);
  v3[45] = v12;
  v3[46] = *(v12 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C6FC34C, 0, 0);
}

uint64_t sub_22C6FD398()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 432) = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_22C6FD4C0(uint64_t a1)
{
  sub_22C903F8C();

  v2 = sub_22C9063CC();
  v3 = sub_22C90AABC();

  if (os_log_type_enabled(v2, v3))
  {
    sub_22C36BED8();
    v4 = swift_slowAlloc();
    sub_22C370220();
    v5 = swift_slowAlloc();
    v198[0] = v5;
    *v4 = 136315138;
    v6 = sub_22C36FC2C();
    v7 = MEMORY[0x2318B7AD0](v6);
    v9 = sub_22C36F9F4(v7, v8, v198);

    *(v4 + 4) = v9;
    sub_22C374ED0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_22C36FF94(v5);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v15 = sub_22C36BAFC();
    v16(v15);
  }

  else
  {

    v17 = sub_22C371810();
    v18(v17);
  }

  v184 = v1;
  v19 = v1[54];
  v20 = v1[35];
  v188 = v1[34];
  v190 = v1[37];
  v21 = v1[33];
  v22 = v1[30];
  v193 = v1[29];
  v23 = v1[9];
  v24 = v1[6];
  v25 = swift_task_alloc();
  *(v25 + 16) = v21;
  sub_22C3B4774(sub_22C70C07C, v25, v19);
  v27 = v26;

  v28 = *(v24 + 48);
  v29 = *(v24 + 64);
  (*(v20 + 16))(v23, v190, v188);
  (*(v22 + 16))(v23 + v28, v21, v193);
  *(v23 + v29) = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v1[52];
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_5;
  }

  while (1)
  {
    sub_22C5955F4();
    v31 = v158;
LABEL_5:
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_22C369AB0(v32);
      sub_22C5955F4();
      v177 = v159;
    }

    else
    {
      v177 = v31;
    }

    v34 = v184;
    v36 = *(v184 + 128);
    v35 = *(v184 + 136);
    v37 = *(v184 + 120);
    v38 = *(v184 + 72);
    v39 = *(v184 + 56);
    sub_22C36DD80(*(v184 + 104), &qword_27D9BC0C0);
    (*(v36 + 8))(v35, v37);
    v40 = sub_22C36BAFC();
    v41(v40);
    *(v177 + 16) = v33 + 1;
    sub_22C36BA94();
    sub_22C6AE8BC(v38, v43 + v42 + *(v39 + 72) * v33, &qword_27D9BB688, &unk_22C90FA60);
    while (1)
    {
      v44 = *(v184 + 400);
      v45 = *(v184 + 408) + 1;
      (*(*(v184 + 240) + 8))(*(v184 + 264), *(v184 + 232));
      v46 = sub_22C6AEDE8();
      v47(v46);
      if (v45 == v44)
      {
        break;
      }

      v48 = *(v184 + 408) + 1;
      *(v184 + 408) = v48;
      *(v184 + 416) = v177;
      if (v48 >= *(*(v184 + 392) + 16))
      {
        goto LABEL_52;
      }

      v195 = *(v184 + 456);
      v191 = *(v184 + 448);
      v49 = *(v184 + 376);
      v50 = *(v184 + 264);
      v52 = *(v184 + 232);
      v51 = *(v184 + 240);
      v53 = *(v184 + 184);
      v54 = *(v184 + 192);
      v194 = *(v184 + 176);
      v55 = sub_22C6AFA70(v48);
      sub_22C6AEA50(v55, v56, &qword_27D9BAD40, &qword_22C90D5E0);
      v57 = sub_22C4F6088();
      v58(v57);
      (*(v51 + 32))(v50, v49 + v191, v52);
      sub_22C90774C();
      if ((*(v53 + 88))(v54, v194) != v195)
      {
        v76 = *(v184 + 184);
        v75 = *(v184 + 192);
        v77 = *(v184 + 176);
        goto LABEL_16;
      }

      v59 = *(v184 + 460);
      v60 = sub_22C37EBDC();
      v61(v60);
      sub_22C6B005C();
      v62 = sub_22C6AFF38();
      v63(v62);
      v64 = sub_22C37B220();
      if (v65(v64) == v59)
      {
        (*(*(v184 + 160) + 96))(*(v184 + 168), *(v184 + 152));
        v66 = sub_22C6AF3F0();
        v67(v66);

        v68 = sub_22C9092CC();
        sub_22C6AE3D4(v68);
        if (v69)
        {
          sub_22C908B8C();
          sub_22C901ECC();
          v70 = sub_22C36CCF8();
          sub_22C36D0A8(v70, v71, v72);
          if (v73)
          {
            goto LABEL_48;
          }

          v74 = *(v184 + 144);
          (*(*(v184 + 208) + 8))(*(v184 + 224), *(v184 + 200));

          sub_22C36DD80(v74, &qword_27D9BF318);
        }

        else
        {
          v75 = *(v184 + 224);
          v77 = *(v184 + 200);
          v76 = *(v184 + 208);
LABEL_16:
          (*(v76 + 8))(v75, v77);
        }
      }

      else
      {
        (*(*(v184 + 160) + 8))(*(v184 + 168), *(v184 + 152));
      }
    }

    v162 = *(v177 + 16);
    if (!v162)
    {
      goto LABEL_44;
    }

    v172 = *(v184 + 240);
    v169 = *(v184 + 56);
    v170 = *(v184 + 64);
    v168 = *(*(v184 + 48) + 48);
    sub_22C37BEE8();
    v164 = *(v80 + 64);
    v166 = v78 + v81;
LABEL_21:
    if (v79 >= *(v78 + 16))
    {
      goto LABEL_53;
    }

    v82 = v184;
    v83 = *(v184 + 280);
    v84 = *(v184 + 240);
    v85 = v79;
    sub_22C6AEA50(v166 + *(v169 + 72) * v79, *(v184 + 64), &qword_27D9BB688, &unk_22C90FA60);
    v176 = *(v170 + v164);
    v86 = sub_22C36EC8C();
    v183 = v83 + 32;
    v181 = v87;
    v87(v86);
    v34 = (v85 + 1);
    v171 = v34;
    v88 = sub_22C6AFB9C();
    v182 = v84 + 32;
    v180 = v89;
    (v89)(v88);
    v90 = *(v184 + 16) + 56;
    sub_22C36EC98();
    v93 = v92 & v91;
    sub_22C634720();
    v95 = v94 >> 6;
    v175 = v96;

    v97 = 0;
    v173 = v95;
    v174 = v90;
    if (!v93)
    {
      goto LABEL_24;
    }

LABEL_27:
    while (2)
    {
      sub_22C383840();
      v178 = v99;
      v179 = v93;
      v101 = *(*(v175 + 48) + ((v99 << 9) | (8 * v100)));
      v102 = v101 + 64;
      sub_22C36EC98();
      v105 = v104 & v103;
      sub_22C634720();
      v107 = v106 >> 6;
      swift_bridgeObjectRetain_n();
      v108 = 0;
      v187 = v101 + 64;
      v189 = v101;
      for (i = v107; v105; v102 = v187)
      {
LABEL_32:
        v111 = v82[39];
        v110 = v82[40];
        v112 = v82[38];
        v34 = v82[34];
        v113 = v82[30];
        v192 = v82[29];
        v114 = sub_22C6AFF38();
        v115(v114);
        v185 = *(v113 + 72);
        v116 = *(v112 + 48);
        v196 = *(v113 + 16);
        v196(v110 + v116, *(v189 + 56) + v185 * (__clz(__rbit64(v105)) | (v108 << 6)), v192);
        v117 = *(v112 + 48);
        v118 = sub_22C36BBCC();
        v181(v118);
        v180(v111 + v117, v110 + v116, v192);
        if (sub_22C90698C())
        {
          v82 = v184;
          if (sub_22C908BEC())
          {
            sub_22C8C3880();

            v119 = *(v176 + 16);
            if (v119)
            {
              sub_22C36BA94();
              v122 = v121 + v120;
              v123 = v185;
              do
              {
                v34 = v82[31];
                v124 = sub_22C3806B8();
                (v196)(v124);
                swift_isUniquelyReferenced_nonNull_native();
                v198[0] = v101;
                v125 = sub_22C372280();
                sub_22C62E7EC(v125, v126, v127, v128, v129, v130, v131, v132, v160, v162, v164, v166);
                v101 = v198[0];

                sub_22C6A5BAC(v198, v101, v133, v134, v135, v136, v137, v138, v161, v163, v165, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, i, v187);

                v122 += v123;
                --v119;
              }

              while (v119);
            }
          }
        }

        else
        {
          v82 = v184;
        }

        v105 &= v105 - 1;
        sub_22C36DD80(v82[39], &qword_27D9BF110);
        v107 = i;
      }

      while (2)
      {
        v109 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          __break(1u);
LABEL_48:
          v197 = v34[5];
          sub_22C36DD80(v34[18], &qword_27D9BF318);
          v145 = sub_22C634768();
          v146(v145);
          sub_22C9065FC();
          sub_22C90663C();
          sub_22C6AFB90();
          sub_22C36BECC();
          v151 = sub_22C36C640(v147, v148, v149, v150);
          MEMORY[0x2318B3AB0](v151);
          sub_22C9065CC();
          sub_22C908DCC();
          v152 = sub_22C4E78D0();
          sub_22C70C7C4(v152);
          sub_22C6B0920();

          v153 = type metadata accessor for Interpreter2(0);
          sub_22C374168((v197 + *(v153 + 40)), *(v197 + *(v153 + 40) + 24));
          v154 = sub_22C37FF48();
          sub_22C37A040(v154);
          v155 = swift_task_alloc();
          v34[53] = v155;
          *v155 = v34;
          sub_22C70C7E0(v155);
          sub_22C373E44(v34[17]);
          sub_22C386FF4();

          __asm { BRAA            X4, X16 }
        }

        if (v109 < v107)
        {
          v105 = *(v102 + 8 * v109);
          ++v108;
          if (!v105)
          {
            continue;
          }

          v108 = v109;
          goto LABEL_32;
        }

        break;
      }

      v97 = v178;
      v93 = v179;
      v95 = v173;
      v90 = v174;
      if (v179)
      {
        continue;
      }

      break;
    }

LABEL_24:
    while (1)
    {
      v98 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        break;
      }

      if (v98 >= v95)
      {

        v139 = sub_22C36D264();
        v140(v139);
        v141 = sub_22C381704();
        v142(v141);

        v79 = v171;
        v78 = v177;
        if (v171 == v162)
        {
LABEL_44:

          sub_22C6AFC70();

          sub_22C6B03C8();
          sub_22C386FF4();

          __asm { BRAA            X2, X16 }
        }

        goto LABEL_21;
      }

      v93 = *(v90 + 8 * v98);
      ++v97;
      if (v93)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }
}

uint64_t sub_22C6FE148()
{
  v1 = v0[35];
  v11 = v0[34];
  v12 = v0[37];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[25];
  sub_22C36DD80(v0[13], &qword_27D9BC0C0);
  v5 = sub_22C372FA4();
  v6(v5);
  (*(v3 + 8))(v2, v4);
  v7 = sub_22C36BAFC();
  v8(v7);
  (*(v1 + 8))(v12, v11);

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C6FE370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_22C9097DC();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22C90B4FC();
  }

  return v9 & 1;
}

uint64_t sub_22C6FE410(uint64_t a1)
{
  v2 = sub_22C901FAC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22C908C3C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22C9093BC();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_22C908C4C();
  sub_22C908BAC();
  return sub_22C908C0C();
}

uint64_t sub_22C6FE598()
{
  sub_22C369980();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  sub_22C369914(v5);
  v1[22] = sub_22C36D0D4();
  v1[23] = swift_task_alloc();
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v6);
  v1[24] = sub_22C36D0D4();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v1[27] = v7;
  sub_22C3699B8(v7);
  v1[28] = v8;
  v1[29] = sub_22C36D0D4();
  v1[30] = swift_task_alloc();
  v9 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  sub_22C369914(v9);
  v1[31] = sub_22C3699D4();
  v10 = sub_22C903B1C();
  v1[32] = v10;
  sub_22C3699B8(v10);
  v1[33] = v11;
  v1[34] = sub_22C3699D4();
  v12 = sub_22C908AEC();
  v1[35] = v12;
  sub_22C3699B8(v12);
  v1[36] = v13;
  v1[37] = sub_22C3699D4();
  Converter = type metadata accessor for StructuredQueryConverter(0);
  sub_22C369914(Converter);
  v1[38] = sub_22C3699D4();
  v15 = sub_22C900A4C();
  v1[39] = v15;
  sub_22C3699B8(v15);
  v1[40] = v16;
  v1[41] = sub_22C36D0D4();
  v1[42] = swift_task_alloc();
  v17 = sub_22C90952C();
  v1[43] = v17;
  sub_22C3699B8(v17);
  v1[44] = v18;
  v1[45] = sub_22C36D0D4();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v19 = sub_22C9039FC();
  v1[48] = v19;
  sub_22C3699B8(v19);
  v1[49] = v20;
  v1[50] = sub_22C3699D4();
  v21 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v21);
  v1[51] = sub_22C36D0D4();
  v1[52] = swift_task_alloc();
  v22 = sub_22C9093BC();
  v1[53] = v22;
  sub_22C3699B8(v22);
  v1[54] = v23;
  v1[55] = sub_22C36D0D4();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v24 = sub_22C90654C();
  v1[62] = v24;
  sub_22C3699B8(v24);
  v1[63] = v25;
  v1[64] = sub_22C36D0D4();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v26 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v26);
  v1[71] = sub_22C36D0D4();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v27 = sub_22C9070DC();
  v1[78] = v27;
  sub_22C3699B8(v27);
  v1[79] = v28;
  v1[80] = sub_22C36D0D4();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v29 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v29);
  v1[87] = sub_22C36D0D4();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v30 = sub_22C901FAC();
  v1[94] = v30;
  sub_22C3699B8(v30);
  v1[95] = v31;
  v1[96] = sub_22C36D0D4();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v32 = sub_22C90880C();
  v1[103] = v32;
  sub_22C3699B8(v32);
  v1[104] = v33;
  v1[105] = sub_22C36D0D4();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

void sub_22C6FEC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v27 = v26;
  v28 = *(v26 + 832);
  v29 = sub_22C90878C();
  sub_22C68F4E8(v29, v30, v31, v32, v33, v34, v35, v36, v562, v564, v566, v568, v570, v572, v574, v575, v576, v577, v578, v579);
  v37 = *(v28 + 8);
  *(v26 + 864) = v37;
  *(v26 + 872) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38 = sub_22C36BAFC();
  v37(v38);
  sub_22C90878C();
  v39 = sub_22C9087DC();
  v40 = sub_22C36BAFC();
  v37(v40);
  *(v26 + 120) = v39;
  v41 = sub_22C36BAFC();
  *(v26 + 880) = sub_22C3A5908(v41, v42);
  sub_22C369E24();
  *(v26 + 888) = sub_22C50B118(v43, &qword_27D9BA9F0, &qword_22C912420);
  sub_22C907ECC();

  if (*(v26 + 112))
  {
    v44 = *(v26 + 96);

    sub_22C90878C();
    v45 = sub_22C9087DC();
    v46 = sub_22C36BAFC();
    v37(v46);
    if ((v44 & 0x8000000000000000) != 0)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v47 = *(v45 + 16);

    if (v44 >= v47)
    {
LABEL_128:
      __break(1u);
      return;
    }

    v49 = v27[93];
    v50 = MEMORY[0x2318B57A0](v48);
    sub_22C6053E0(v50, v49);

    sub_22C70C3C4();
    v588 = v27;
    v580 = v37;
    if (v76)
    {
      v51 = v27[93];
      v52 = &qword_27D9BC030;
    }

    else
    {
      sub_22C70CB80();
      v72 = sub_22C36CB30();
      v73(v72);
      v74 = sub_22C380120();
      sub_22C60539C(v74, v75);
      sub_22C70C3C4();
      if (!v76)
      {
        v172 = v27[86];
        sub_22C70CB1C();
        v173 = sub_22C36CB30();
        v174(v173);
        sub_22C90702C();
        v175 = sub_22C70C414();
        v177 = v176(v175);
        if (v177 == *MEMORY[0x277D1DAA8])
        {
          v178 = sub_22C70C5D8();
          v179(v178);
          sub_22C906F2C();
          sub_22C70C4EC();
          v181 = v180;
          v182 = sub_22C36BA00();
          v183(v182);
          sub_22C70CADC();
          sub_22C70CAD0();
          v184 = v27[70];
          if (v185 == v186)
          {
            v187 = v27[61];
            (*(v181 + 96))(v184, v172);
            v188 = *v184;
            v189 = v184[1];
            sub_22C90931C();
            v190 = swift_allocBox();
            sub_22C70C980(v190, v191);
            *v192 = v188;
            v192[1] = v189;
            sub_22C70C424();
            (*(v193 + 104))();
            *v187 = v184;
            v194 = sub_22C70CBB8();
            v195(v194);
            v196 = sub_22C36FC08();
            v197(v196);
            swift_isUniquelyReferenced_nonNull_native();
            sub_22C6AF718();
            v198 = sub_22C38A0DC();
            sub_22C62EC0C(v198, v199, 0xE800000000000000, v200, v201, v202, v203, v204, v563, v565, v567, v569, v571, v573);
            v205 = sub_22C374574();
            v206(v205);
            v207 = sub_22C385DD8();
          }

          else
          {
            v534 = sub_22C70CB28();
            v535(v534);
            v536 = sub_22C38B23C();
            v537(v536);
            v207 = sub_22C36BA00();
          }

          v79 = v208(v207);
        }

        else
        {
          sub_22C70CAE8();
          sub_22C70CB10();
          sub_22C70CCDC();
          v499();
          v500 = sub_22C381704();
          v501(v500);
          v502 = sub_22C634768();
          v79 = v503(v502);
        }

LABEL_14:
        v80 = v27[92];
        v81 = MEMORY[0x2318B57A0](v79);
        sub_22C6053E0(v81, v80);

        sub_22C70C3C4();
        if (v76)
        {
          v82 = v27[92];
          v83 = &qword_27D9BC030;
        }

        else
        {
          sub_22C70CB80();
          v84 = sub_22C36CB30();
          v85(v84);
          v86 = sub_22C380120();
          sub_22C60539C(v86, v87);
          sub_22C70C3C4();
          if (!v88)
          {
            sub_22C70CB1C();
            v209 = sub_22C36CB30();
            v210(v209);
            sub_22C90702C();
            v211 = sub_22C70C414();
            v213 = v212(v211);
            if (v213 == *MEMORY[0x277D1DAA8])
            {
              v214 = sub_22C70C5D8();
              v215(v214);
              sub_22C906F2C();
              sub_22C70C4EC();
              v216 = sub_22C36BA00();
              v217(v216);
              sub_22C70CADC();
              sub_22C70CAD0();
              v218 = v27[69];
              if (v219 == v220)
              {
                v221 = v27[61];
                v222 = sub_22C36BA00();
                v223(v222);
                v225 = *v218;
                v224 = v218[1];
                sub_22C90931C();
                v583 = swift_allocBox();
                *v226 = v225;
                v226[1] = v224;
                sub_22C70C424();
                (*(v227 + 104))();
                *v221 = v583;
                v228 = sub_22C70C5C8();
                v229(v228);
                v230 = sub_22C386604();
                v231(v230);
                sub_22C70CC24();
                sub_22C6AF718();
                v232 = sub_22C38A0DC();
                sub_22C62EC0C(v232, 0x6574746972776572, v233, v234, v235, v236, v237, v238, v563, v565, v567, v569, v571, v573);
                v239 = sub_22C374574();
                v240(v239);
                v241 = sub_22C385DD8();
              }

              else
              {
                v538 = sub_22C70CB28();
                v539(v538);
                v540 = sub_22C38B23C();
                v541(v540);
                v241 = sub_22C36BA00();
              }

              v91 = v242(v241);
            }

            else
            {
              sub_22C70CAE8();
              sub_22C70CB10();
              sub_22C70CCDC();
              v504();
              v505 = sub_22C381704();
              v506(v505);
              v507 = sub_22C634768();
              v91 = v508(v507);
            }

LABEL_21:
            v92 = v27[91];
            v93 = MEMORY[0x2318B57A0](v91);
            sub_22C6053E0(v93, v92);

            sub_22C70C3C4();
            if (v76)
            {
              v94 = v27[91];
              v95 = &qword_27D9BC030;
            }

            else
            {
              sub_22C70CB80();
              v96 = sub_22C36CB30();
              v97(v96);
              v98 = sub_22C380120();
              sub_22C60539C(v98, v99);
              sub_22C70C3C4();
              if (!v100)
              {
                sub_22C70CB1C();
                v243 = sub_22C36CB30();
                v244(v243);
                sub_22C90702C();
                v245 = sub_22C70C414();
                v247 = v246(v245);
                if (v247 == *MEMORY[0x277D1DAA8])
                {
                  v248 = sub_22C70C5D8();
                  v249(v248);
                  sub_22C906F2C();
                  sub_22C70C4EC();
                  v250 = sub_22C36BA00();
                  v251(v250);
                  v252 = v27[100];
                  sub_22C70CADC();
                  sub_22C70CAD0();
                  v255 = v27[68];
                  if (v253 == v256)
                  {
                    v257 = sub_22C37ACEC(v253, v254);
                    v258(v257);
                    v259 = *v255;
                    v260 = v255[1];
                    sub_22C90931C();
                    v261 = swift_allocBox();
                    sub_22C70C980(v261, v262);
                    *v263 = v259;
                    v263[1] = v260;
                    sub_22C70C424();
                    (*(v264 + 104))();
                    *v252 = v255;
                    v265 = sub_22C70C5C8();
                    v266(v265);
                    v267 = sub_22C386604();
                    v27 = v588;
                    v268(v267);
                    sub_22C70CC24();
                    sub_22C6AF718();
                    v269 = sub_22C38A0DC();
                    sub_22C62EC0C(v269, v270, v271, v272, v273, v274, v275, v276, v563, v565, v567, v569, v571, v573);
                    v277 = sub_22C374574();
                    v278(v277);
                    v279 = sub_22C385DD8();
                  }

                  else
                  {
                    v542 = sub_22C70CB28();
                    v543(v542);
                    v544 = sub_22C38B23C();
                    v545(v544);
                    v279 = sub_22C36BA00();
                  }

                  v103 = v280(v279);
                }

                else
                {
                  sub_22C70CAE8();
                  sub_22C70CB10();
                  sub_22C70CCDC();
                  v509();
                  v510 = sub_22C381704();
                  v511(v510);
                  v512 = sub_22C634768();
                  v103 = v513(v512);
                }

LABEL_28:
                v104 = v27[90];
                v105 = MEMORY[0x2318B57A0](v103);
                sub_22C6053E0(v105, v104);

                sub_22C70C3C4();
                if (v76)
                {
                  v106 = v27[90];
                  v107 = &qword_27D9BC030;
                }

                else
                {
                  sub_22C70CB80();
                  v108 = sub_22C36CB30();
                  v109(v108);
                  v110 = sub_22C380120();
                  sub_22C60539C(v110, v111);
                  sub_22C70C3C4();
                  if (!v112)
                  {
                    sub_22C70CB1C();
                    v281 = sub_22C36CB30();
                    v282(v281);
                    sub_22C90702C();
                    v283 = sub_22C70C414();
                    v285 = v284(v283);
                    if (v285 == *MEMORY[0x277D1DAA8])
                    {
                      v286 = sub_22C70C5D8();
                      v287(v286);
                      sub_22C906F2C();
                      sub_22C70C4EC();
                      v288 = sub_22C36BA00();
                      v289(v288);
                      sub_22C70CADC();
                      sub_22C70CAD0();
                      v290 = v27[67];
                      if (v291 == v292)
                      {
                        v293 = v27[61];
                        v294 = sub_22C36BA00();
                        v295(v294);
                        v296 = *v290;
                        v297 = v290[1];
                        sub_22C90931C();
                        v298 = swift_allocBox();
                        sub_22C70C980(v298, v299);
                        *v300 = v296;
                        v300[1] = v297;
                        sub_22C70C424();
                        (*(v301 + 104))();
                        *v293 = v290;
                        v302 = sub_22C70C5C8();
                        v303(v302);
                        v304 = sub_22C386604();
                        v305(v304);
                        sub_22C70CC24();
                        sub_22C6AF718();
                        v306 = sub_22C38A0DC();
                        sub_22C62EC0C(v306, v307, 0xEC00000068637261, v308, v309, v310, v311, v312, v563, v565, v567, v569, v571, v573);
                        v313 = sub_22C374574();
                        v314(v313);
                        v315 = sub_22C385DD8();
                      }

                      else
                      {
                        v546 = sub_22C70CB28();
                        v547(v546);
                        v548 = sub_22C38B23C();
                        v549(v548);
                        v315 = sub_22C36BA00();
                      }

                      v115 = v316(v315);
                    }

                    else
                    {
                      sub_22C70CAE8();
                      sub_22C70CB10();
                      (*(v514 + 8))();
                      v515 = sub_22C381704();
                      v516(v515);
                      v517 = sub_22C634750();
                      v27 = v588;
                      v115 = v518(v517);
                    }

LABEL_35:
                    v116 = v27[89];
                    v117 = MEMORY[0x2318B57A0](v115);
                    sub_22C6053E0(v117, v116);

                    sub_22C70C3C4();
                    if (v76)
                    {
                      v118 = v27[89];
                      v119 = &qword_27D9BC030;
                    }

                    else
                    {
                      sub_22C70CB80();
                      v120 = sub_22C36CB30();
                      v121(v120);
                      v122 = sub_22C380120();
                      sub_22C60539C(v122, v123);
                      sub_22C70C3C4();
                      if (!v124)
                      {
                        sub_22C70CB1C();
                        v317 = sub_22C36CB30();
                        v318(v317);
                        sub_22C90702C();
                        v319 = sub_22C70C414();
                        v321 = v320(v319);
                        if (v321 == *MEMORY[0x277D1DAA8])
                        {
                          v322 = sub_22C70C5D8();
                          v323(v322);
                          sub_22C906F2C();
                          sub_22C70C4EC();
                          v324 = sub_22C36BA00();
                          v325(v324);
                          v326 = v27[98];
                          sub_22C70CADC();
                          sub_22C70CAD0();
                          v329 = v27[66];
                          if (v327 == v330)
                          {
                            v331 = sub_22C37ACEC(v327, v328);
                            v332(v331);
                            v333 = *v329;
                            v334 = v329[1];
                            sub_22C90931C();
                            v335 = swift_allocBox();
                            sub_22C70C980(v335, v336);
                            *v337 = v333;
                            v337[1] = v334;
                            sub_22C70C424();
                            (*(v338 + 104))();
                            *v326 = v329;
                            v339 = sub_22C70C5C8();
                            v340(v339);
                            v341 = sub_22C386604();
                            v27 = v588;
                            v342(v341);
                            sub_22C70CC24();
                            sub_22C6AF718();
                            v343 = sub_22C38A0DC();
                            sub_22C62EC0C(v343, v344, v345, v346, v347, v348, v349, v350, v563, v565, v567, v569, v571, v573);
                            v351 = sub_22C374574();
                            v352(v351);
                            v353 = sub_22C385DD8();
                          }

                          else
                          {
                            v550 = sub_22C70CB28();
                            v551(v550);
                            v552 = sub_22C38B23C();
                            v553(v552);
                            v353 = sub_22C36BA00();
                          }

                          v127 = v354(v353);
                        }

                        else
                        {
                          sub_22C70CAE8();
                          sub_22C70CB10();
                          sub_22C70CCDC();
                          v519();
                          v520 = sub_22C381704();
                          v521(v520);
                          v522 = sub_22C634768();
                          v127 = v523(v522);
                        }

LABEL_42:
                        v128 = v27[88];
                        v129 = MEMORY[0x2318B57A0](v127);
                        sub_22C6053E0(v129, v128);

                        sub_22C70C3C4();
                        if (v76)
                        {
                          v130 = v27[88];
                          v131 = &qword_27D9BC030;
                        }

                        else
                        {
                          sub_22C70CB80();
                          v132 = sub_22C36CB30();
                          v133(v132);
                          v134 = sub_22C380120();
                          sub_22C60539C(v134, v135);
                          sub_22C70C3C4();
                          if (!v136)
                          {
                            sub_22C70CB1C();
                            v355 = sub_22C36CB30();
                            v356(v355);
                            sub_22C90702C();
                            v357 = sub_22C70C414();
                            v359 = v358(v357);
                            if (v359 == *MEMORY[0x277D1DAA8])
                            {
                              v360 = sub_22C70C5D8();
                              v361(v360);
                              sub_22C906F2C();
                              sub_22C70C4EC();
                              v362 = sub_22C36BA00();
                              v363(v362);
                              v364 = v27[97];
                              sub_22C70CADC();
                              sub_22C70CAD0();
                              v367 = v27[65];
                              if (v365 == v368)
                              {
                                v369 = sub_22C37ACEC(v365, v366);
                                v370(v369);
                                v371 = *v367;
                                v372 = v367[1];
                                sub_22C90931C();
                                v373 = swift_allocBox();
                                sub_22C70C980(v373, v374);
                                *v375 = v371;
                                v375[1] = v372;
                                sub_22C70C424();
                                (*(v376 + 104))();
                                *v364 = v367;
                                v377 = sub_22C70C5C8();
                                v378(v377);
                                v379 = sub_22C386604();
                                v380(v379);
                                sub_22C70CC24();
                                sub_22C6AF718();
                                v381 = sub_22C38A0DC();
                                sub_22C62EC0C(v381, v382, v383, v384, v385, v386, v387, v388, v563, v565, v567, v569, v571, v573);
                                v389 = sub_22C374574();
                                v390(v389);
                                v391 = sub_22C385DD8();
                              }

                              else
                              {
                                v554 = sub_22C70CB28();
                                v555(v554);
                                v556 = sub_22C38B23C();
                                v557(v556);
                                v391 = sub_22C36BA00();
                              }

                              v392(v391);
                            }

                            else
                            {
                              sub_22C70CAE8();
                              sub_22C70CB10();
                              sub_22C70CCDC();
                              v524();
                              v525 = sub_22C381704();
                              v526(v525);
                              v527 = sub_22C634768();
                              v528(v527);
                            }

                            goto LABEL_49;
                          }

                          sub_22C38B6E0();
                          v137 = v27[72];
                          (*(v138 + 8))();
                          v131 = &qword_27D9BAA18;
                          v130 = v137;
                        }

                        sub_22C36DD80(v130, v131);
LABEL_49:
                        sub_22C90878C();
                        v139 = sub_22C9087DC();
                        v140 = sub_22C36BAFC();
                        v580(v140);
                        v588[16] = v139;
                        sub_22C907EEC();

                        v141 = sub_22C3726C4();
                        sub_22C6AEA50(v141, v142, v143, v144);
                        sub_22C9079FC();
                        v145 = v588;
                        sub_22C381514();
                        if (sub_22C370B74(v146, v147, v148) == 1)
                        {
                          v149 = sub_22C36DD80(v588[51], &qword_27D9BD798);
                          goto LABEL_91;
                        }

                        v150 = MEMORY[0x2318B4EB0]();
                        sub_22C36BBA8();
                        v151 = sub_22C36BBCC();
                        v152(v151);
                        v153 = *(v150 + 16);
                        if (!v153)
                        {

                          v158 = MEMORY[0x277D84F90];
LABEL_85:
                          v393 = v145[47];
                          v394 = v145[43];
                          v395 = v145[44];
                          v396 = swift_allocObject();
                          v396[2] = 0xD000000000000028;
                          v396[3] = 0x800000022C92EB40;
                          v396[4] = 0x614D797469746E45;
                          v396[5] = 0xEB00000000686374;
                          *v393 = v396;
                          (*(v395 + 104))(v393, *MEMORY[0x277D72D28], v394);
                          v397 = sub_22C36BA00();
                          v398(v397);
                          v399 = *(v158 + 16);
                          if (v399)
                          {
                            v400 = v145[54];
                            v401 = v145[40];
                            sub_22C70CDCC(MEMORY[0x277D84F90]);
                            v402 = v599;
                            v401 += 16;
                            sub_22C36BA94();
                            v404 = v158 + v403;
                            v585 = *(v401 + 56);
                            v586 = v405;
                            v584 = (v401 - 8);
                            v582 = *MEMORY[0x277D72A38];
                            v581 = (v400 + 104);
                            do
                            {
                              v406 = v145[58];
                              v592 = v145[53];
                              v596 = v399;
                              v407 = v145[41];
                              v408 = v145[42];
                              v409 = v145;
                              v410 = v145[39];
                              v586(v408, v404, v410);
                              sub_22C90919C();
                              v590 = swift_allocBox();
                              v586(v407, v408, v410);
                              sub_22C70C380(&qword_27D9BF808, MEMORY[0x277D36E88]);
                              sub_22C90916C();
                              (*v584)(v408, v410);
                              *v406 = v590;
                              (*v581)(v406, v582, v592);
                              v599 = v402;
                              v412 = *(v402 + 16);
                              v411 = *(v402 + 24);
                              if (v412 >= v411 >> 1)
                              {
                                v415 = sub_22C369AB0(v411);
                                sub_22C3B74E0(v415, v412 + 1, 1);
                              }

                              *(v402 + 16) = v412 + 1;
                              sub_22C37054C();
                              (*(v414 + 32))(v402 + v413 + *(v414 + 72) * v412);
                              v404 += v585;
                              --v399;
                              v145 = v409;
                            }

                            while (v596 != 1);
                          }

                          v416 = v145[61];
                          v417 = v145[59];
                          v418 = v145[53];
                          v419 = v145[54];
                          sub_22C90906C();
                          v420 = swift_allocBox();
                          sub_22C36A10C();
                          sub_22C90903C();
                          *v417 = v420;
                          v145 = v588;
                          (*(v419 + 104))(v417, *MEMORY[0x277D729E0], v418);
                          (*(v419 + 32))(v416, v417, v418);
                          sub_22C70CC24();
                          sub_22C6AF718();
                          sub_22C62EC0C(v416, 0x456465686374616DLL, 0xEF7365697469746ELL, v421, v422, v423, v424, v425, v563, v565, v567, v569, v571, v573);
                          v426 = sub_22C36ECB4();
                          v149 = v427(v426);
LABEL_91:
                          v428 = v145[94];
                          v429 = v145[87];
                          v430 = MEMORY[0x2318B57A0](v149);
                          sub_22C6053E0(v430, v429);

                          v431 = sub_22C36CCF8();
                          sub_22C36D0A8(v431, v432, v428);
                          if (v76)
                          {
                            v433 = v145[87];

                            v434 = &qword_27D9BC030;
                          }

                          else
                          {
                            v435 = v145[78];
                            v436 = sub_22C36CB30();
                            v437(v436);
                            v438 = sub_22C37170C();
                            sub_22C60539C(v438, v439);

                            v440 = sub_22C36CCF8();
                            sub_22C36D0A8(v440, v441, v435);
                            if (!v442)
                            {
                              v466 = v145[80];
                              v467 = v145[63];
                              v468 = v145[64];
                              v469 = v145[62];
                              v470 = sub_22C36CB30();
                              v471(v470);
                              sub_22C90702C();
                              v472 = (*(v467 + 88))(v468, v469);
                              if (v472 == *MEMORY[0x277D1DAA8])
                              {
                                v473 = v145[64];
                                (*(v145[63] + 96))(v473, v145[62]);
                                sub_22C906F2C();
                                sub_22C70C4EC();
                                v475 = (*(v474 + 88))(v473, v466);
                                v476 = v145[96];
                                v477 = v145[95];
                                v478 = v145[94];
                                v479 = v145[64];
                                if (v475 == *MEMORY[0x277D1DED8])
                                {
                                  v594 = v145[94];
                                  v598 = v145[96];
                                  v480 = v145[61];
                                  v587 = v145[60];
                                  v481 = v145[54];
                                  v482 = v588[53];
                                  v483 = sub_22C37EF10();
                                  v484(v483);
                                  v485 = *v479;
                                  sub_22C90931C();
                                  v486 = swift_allocBox();
                                  sub_22C6AF828(v486, v487);
                                  *v488 = v485;
                                  sub_22C70C424();
                                  (*(v489 + 104))();
                                  *v480 = v479;
                                  sub_22C6AFEE4();
                                  v490(v480);
                                  v491 = v482;
                                  v145 = v588;
                                  (*(v481 + 32))(v587, v480, v491);
                                  sub_22C70CC24();
                                  sub_22C6AF718();
                                  sub_22C62EC0C(v587, 0xD000000000000013, 0x800000022C9338D0, v492, v493, v494, v495, v496, v563, v565, v567, v569, v571, v573);
                                  v497 = sub_22C36CA88();
                                  v498(v497);
                                  (*(v477 + 8))(v598, v594);
                                }

                                else
                                {
                                  v558 = sub_22C36CA88();
                                  v559(v558);
                                  (*(v477 + 8))(v476, v478);
                                  v560 = sub_22C37EF10();
                                  v561(v560);
                                }
                              }

                              else
                              {
                                v529 = v145[96];
                                v530 = v145[95];
                                v531 = v145[94];
                                (*(v145[79] + 8))(v145[80], v145[78]);
                                (*(v530 + 8))(v529, v531);
                                v532 = sub_22C36BAFC();
                                v533(v532);
                              }

LABEL_98:
                              v443 = v145[107];
                              v444 = v145[103];
                              v445 = v145[61];
                              v446 = v145;
                              v447 = v145[57];
                              v448 = v446[54];
                              v449 = v446[36];
                              v597 = v446[37];
                              v593 = v446[35];
                              v589 = v446[21];
                              sub_22C90878C();
                              sub_22C5F8DA0(v443, v447);
                              (v580)(v443, v444);
                              v446[112] = *(v448 + 16);
                              v446[113] = (v448 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
                              v450 = sub_22C3726C4();
                              v451(v450);
                              sub_22C70CC24();
                              sub_22C6AF718();
                              v457 = sub_22C62EC0C(v445, 0x747865746E6F63, 0xE700000000000000, v452, v453, v454, v455, v456, v563, v565, v567, v569, v571, v573);
                              v446[114] = v599;
                              MEMORY[0x2318B57A0](v457);
                              sub_22C90878C();
                              (*(v449 + 16))(v597, v589, v593);
                              v458 = type metadata accessor for Interpreter2(0);
                              sub_22C6AEA50(v589 + *(v458 + 36), (v446 + 7), &qword_27D9BF800, &qword_22C923130);
                              v459 = swift_task_alloc();
                              v446[115] = v459;
                              *v459 = v446;
                              v459[1] = sub_22C700F30;
                              sub_22C372034();

                              sub_22C7177DC(v460, v461, v462, v463, v464);
                              return;
                            }

                            v433 = v145[71];
                            (*(v145[95] + 8))(v145[96], v145[94]);
                            v434 = &qword_27D9BAA18;
                          }

                          sub_22C36DD80(v433, v434);
                          goto LABEL_98;
                        }

                        v154 = v588[49] + 16;
                        sub_22C36BA94();
                        v156 = v150 + v155;
                        v591 = *(v154 + 56);
                        v595 = v157;
                        v158 = MEMORY[0x277D84F90];
                        while (1)
                        {
                          v159 = sub_22C38644C();
                          v595(v159);
                          v160 = sub_22C5FA280();
                          v161 = sub_22C36BBCC();
                          v162(v161);
                          v163 = *(v160 + 16);
                          v164 = *(v158 + 16);
                          if (__OFADD__(v164, v163))
                          {
                            break;
                          }

                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v166 = v158;
                          if (!isUniquelyReferenced_nonNull_native || v164 + v163 > *(v158 + 24) >> 1)
                          {
                            sub_22C59405C();
                            v166 = v167;
                          }

                          v145 = v588;
                          if (*(v160 + 16))
                          {
                            if ((*(v166 + 24) >> 1) - *(v166 + 16) < v163)
                            {
                              goto LABEL_125;
                            }

                            sub_22C37BEE8();
                            v158 = v168;
                            swift_arrayInitWithCopy();

                            if (v163)
                            {
                              v169 = *(v158 + 16);
                              v170 = __OFADD__(v169, v163);
                              v171 = v169 + v163;
                              if (v170)
                              {
                                goto LABEL_126;
                              }

                              *(v158 + 16) = v171;
                            }
                          }

                          else
                          {
                            v158 = v166;

                            if (v163)
                            {
                              goto LABEL_124;
                            }
                          }

                          v156 += v591;
                          if (!--v153)
                          {

                            goto LABEL_85;
                          }
                        }

                        __break(1u);
LABEL_124:
                        __break(1u);
LABEL_125:
                        __break(1u);
LABEL_126:
                        __break(1u);
                        goto LABEL_127;
                      }

                      sub_22C38B6E0();
                      v125 = v27[73];
                      (*(v126 + 8))();
                      v119 = &qword_27D9BAA18;
                      v118 = v125;
                    }

                    v127 = sub_22C36DD80(v118, v119);
                    goto LABEL_42;
                  }

                  sub_22C38B6E0();
                  v113 = v27[74];
                  (*(v114 + 8))();
                  v107 = &qword_27D9BAA18;
                  v106 = v113;
                }

                v115 = sub_22C36DD80(v106, v107);
                goto LABEL_35;
              }

              sub_22C38B6E0();
              v101 = v27[75];
              (*(v102 + 8))();
              v95 = &qword_27D9BAA18;
              v94 = v101;
            }

            v103 = sub_22C36DD80(v94, v95);
            goto LABEL_28;
          }

          sub_22C38B6E0();
          v89 = v27[76];
          (*(v90 + 8))();
          v83 = &qword_27D9BAA18;
          v82 = v89;
        }

        v91 = sub_22C36DD80(v82, v83);
        goto LABEL_21;
      }

      sub_22C38B6E0();
      v77 = v27[77];
      (*(v78 + 8))();
      v52 = &qword_27D9BAA18;
      v51 = v77;
    }

    v79 = sub_22C36DD80(v51, v52);
    goto LABEL_14;
  }

  sub_22C90735C();
  sub_22C3A5F00();
  sub_22C37A198();
  swift_allocError();
  v53 = *(v26 + 48);
  v54 = *(v26 + 32);
  *v55 = *(v26 + 16);
  *(v55 + 16) = v54;
  *(v55 + 32) = v53;
  swift_willThrow();
  sub_22C70C4FC();
  sub_22C70C658(v56, v57, v58, v59, v60, v61, v62, v63);

  sub_22C369A24();
  sub_22C372034();

  v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12);
}

uint64_t sub_22C700F30()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 928) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C701030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C71BBF8(*(v12 + 448));
  v13 = sub_22C900CCC();
  sub_22C3A5908(&qword_27D9BE3C0, &qword_22C91D970);
  v14 = sub_22C90098C();
  sub_22C369824();
  v16 = v15;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22C90F800;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x277D36E40], v14);
  if (!v13)
  {
    swift_setDeallocating();
    sub_22C5900BC();
    goto LABEL_8;
  }

  sub_22C36BBCC();
  sub_22C46EC84();
  v20 = v19;

  swift_setDeallocating();
  sub_22C5900BC();
  if ((v20 & 1) == 0 || (sub_22C907D6C(), v21 = sub_22C3707B4(), sub_22C36D0A8(v21, v22, v23), v38))
  {
LABEL_8:
    v34 = *(v12 + 184);
    v33 = *(v12 + 192);
    sub_22C9082FC();
    sub_22C7024F0(v34, v33);
    sub_22C36DD80(v34, &qword_27D9BC028);
    sub_22C70C3C4();
    if (v38)
    {
      sub_22C36DD80(*(v12 + 192), &qword_27D9BB908);
      goto LABEL_21;
    }

    (*(*(v12 + 432) + 32))(*(v12 + 440), *(v12 + 192), *(v12 + 424));
    sub_22C9082FC();
    v35 = sub_22C90941C();
    v36 = sub_22C36CCF8();
    sub_22C36D0A8(v36, v37, v35);
    if (v38)
    {
      sub_22C36DD80(*(v12 + 176), &qword_27D9BC028);
    }

    else
    {
      v40 = *(v12 + 352);
      v39 = *(v12 + 360);
      v41 = *(v12 + 344);
      sub_22C9093DC();
      sub_22C36BBA8();
      v42 = sub_22C372164();
      v43(v42);
      sub_22C9094EC();
      v44 = swift_allocBox();
      sub_22C70C424();
      (*(v45 + 104))();
      *v39 = v44;
      (*(v40 + 104))(v39, *MEMORY[0x277D72D50], v41);
      sub_22C37B220();
      sub_22C5E94F0();
      v47 = v46;

      v48 = sub_22C6AEEC0();
      v49(v48);
      if ((v47 & 1) != 0 && (sub_22C900CCC() || sub_22C900DAC()))
      {

        sub_22C903F8C();
        v50 = sub_22C9063CC();
        v51 = sub_22C90AADC();
        if (os_log_type_enabled(v50, v51))
        {
          sub_22C3720F4();
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_22C366000, v50, v51, "Ignoring required return type since this is a file search with filter/preferred type specified", v52, 2u);
          v53 = sub_22C38A0CC();
          MEMORY[0x2318B9880](v53);
        }

        v54 = sub_22C36ECB4();
        v55(v54);
        v56 = sub_22C36BBCC();
        v57(v56);
        goto LABEL_21;
      }
    }

    v58 = sub_22C36BAFC();
    v59(v58);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6AF718();
    sub_22C6B017C();
    v60 = sub_22C38A0DC();
    sub_22C62EC0C(v60, v61, v62, v63, v64, v65, v66, v67, v183, v184, v185, v186, v187, v188);
    v68 = sub_22C36D264();
    v69(v68);
    goto LABEL_21;
  }

  v24 = *(v12 + 880);
  v25 = *(v12 + 872);
  v26 = *(v12 + 864);
  v27 = *(v12 + 840);
  v28 = *(v12 + 256);
  sub_22C90878C();
  v29 = sub_22C9087DC();
  v30 = sub_22C36CA88();
  v26(v30);
  *(v12 + 136) = v29;
  sub_22C907EAC();
  v31 = sub_22C5CA7F4();
  sub_22C36D0A8(v31, v32, v28);
  if (v38)
  {
    sub_22C36DD80(*(v12 + 248), &qword_27D9BD760);
  }

  else
  {
    v126 = sub_22C36CB30();
    v127(v126);

    v128 = sub_22C903A7C();
    if (v128 & 1) != 0 || (v138 = sub_22C903A1C(), v138 != 2) && (v138)
    {
      sub_22C70C9AC();
      type metadata accessor for InterpreterError(0);
      sub_22C36A1EC();
      sub_22C70C380(v129, v130);
      sub_22C375F84();
      v131 = swift_allocError();
      sub_22C70C70C(v131, v132);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v133 = sub_22C3726C4();
      v134(v133);
      v135 = *(v25 + 8);
      v136 = sub_22C3819EC();
      v135(v136);
      sub_22C370920();
      sub_22C70C2F0(v27, v137);
      (v135)(v190, v24);
      sub_22C36DD80(v192, &qword_27D9BD798);
      goto LABEL_23;
    }

    (*(*(v12 + 264) + 8))(*(v12 + 272), *(v12 + 256));
  }

  sub_22C903F8C();
  v139 = sub_22C9063CC();
  sub_22C90AAFC();
  sub_22C37E84C();
  if (os_log_type_enabled(v139, v140))
  {
    sub_22C3720F4();
    v141 = swift_slowAlloc();
    sub_22C36C890(v141);
    sub_22C36BB14(&dword_22C366000, v142, v143, "Forcing search to 1P photos to enable photo picker.");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v144 = sub_22C36D264();
  v145(v144);
  v146 = swift_allocBox();
  v148 = v147;
  if (qword_27D9BA700 != -1)
  {
    swift_once();
  }

  v149 = *(v12 + 424);
  v151 = *(v12 + 344);
  v150 = *(v12 + 352);
  v152 = *(v12 + 208);
  v153 = *(v12 + 184);
  v154 = sub_22C37AA60(v151, qword_27D9E3FE8);
  (*(v150 + 16))(v148, v154, v151);
  *v153 = v146;
  v155 = *MEMORY[0x277D72AD0];
  v156 = sub_22C90941C();
  sub_22C36985C();
  (*(v157 + 104))(v153, v155, v156);
  sub_22C36BECC();
  sub_22C36C640(v158, v159, v160, v156);
  sub_22C7024F0(v153, v152);
  sub_22C36DD80(v153, &qword_27D9BC028);
  v161 = sub_22C36FD7C();
  if (sub_22C370B74(v161, v162, v149) == 1)
  {
    sub_22C36DD80(*(v12 + 208), &qword_27D9BB908);
    v163 = sub_22C36E2BC(0x6E65644965707974, 0xEF73726569666974);
    v164 = *(v12 + 912);
    if (v165)
    {
      v166 = v163;
      v167 = *(v12 + 424);
      v168 = *(v12 + 432);
      v169 = *(v12 + 200);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C3A5908(&qword_27D9BF428, &qword_22C9226E8);
      sub_22C70CF54();
      sub_22C90B15C();

      (*(v168 + 32))(v169, *(v164 + 56) + *(v168 + 72) * v166, v167);
      sub_22C90B17C();
    }

    v178 = *(v12 + 200);
    v179 = sub_22C70CF48();
    sub_22C36C640(v179, v180, v181, v182);
    sub_22C36DD80(v178, &qword_27D9BB908);
  }

  else
  {
    (*(*(v12 + 432) + 32))(*(v12 + 488), *(v12 + 208), *(v12 + 424));
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6AF718();
    sub_22C370018();
    sub_22C6B017C();
    sub_22C62EC0C(v170, v171, v172, v173, v174, v175, v176, v177, v183, v184, v185, v186, v187, v188);
  }

LABEL_21:
  v70 = *(v12 + 928);
  v71 = *(v12 + 152);
  sub_22C9082EC();
  *(sub_22C4E78D0() + 16) = v71;
  sub_22C7944D8();
  if (v70)
  {
    v73 = *(v12 + 432);
    v74 = *(v12 + 416);
    v75 = *(v12 + 304);

    v76 = *(v73 + 8);
    v77 = sub_22C36ECB4();
    v76(v77);
    sub_22C370920();
    sub_22C70C2F0(v75, v78);
    v79 = sub_22C36D29C();
    v76(v79);
    sub_22C36DD80(v74, &qword_27D9BD798);

LABEL_23:
    sub_22C70CA54();
    sub_22C70C658(v80, v81, v82, v83, v84, v85, v86, v87);

    sub_22C369A24();
    sub_22C372034();

    return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12);
  }

  v97 = v72;

  if (*(v97 + 16))
  {
    v98 = *(v12 + 896);
    v99 = *(v12 + 488);
    sub_22C90906C();
    v191 = swift_allocBox();
    sub_22C36BA94();
    v100 = sub_22C6AFF38();
    v98(v100);
    sub_22C70CD00();
    sub_22C90935C();
    v101 = sub_22C37B220();
    v189 = v102;
    (v102)(v101);
    sub_22C3819EC();
    sub_22C90903C();
    *v99 = v191;
    sub_22C6AFEE4();
    v103(v99);
    v104 = sub_22C36BAFC();
    v105(v104);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22C6AF718();
    v106 = sub_22C38A0DC();
    sub_22C62EC0C(v106, 0xD000000000000013, v107, v108, v109, v110, v111, v112, v183, v184, v185, v186, v187, v188);
  }

  else
  {
    v113 = *(v12 + 432);

    v189 = *(v113 + 8);
  }

  sub_22C70CA54();
  v114 = *(v12 + 416);
  v115 = *(v12 + 304);
  v189();
  sub_22C370920();
  sub_22C70C2F0(v115, v116);
  v117 = sub_22C634768();
  (v189)(v117);
  sub_22C36DD80(v114, &qword_27D9BD798);

  sub_22C6B03C8();
  sub_22C372034();

  return v120(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12);
}

uint64_t sub_22C7021C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[52];
  (*(v12[54] + 8))(v12[57], v12[53]);
  sub_22C36DD80(v13, &qword_27D9BD798);
  sub_22C70C4FC();
  sub_22C70CA60();

  sub_22C375A9C();
  sub_22C372034();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_22C7024F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v30 = sub_22C9093BC();
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_22C90952C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  sub_22C6AEA50(a1, v7, &qword_27D9BC028, &unk_22C9134B0);
  v16 = sub_22C90941C();
  if (sub_22C370B74(v7, 1, v16) == 1)
  {
    sub_22C36DD80(v7, &qword_27D9BC028);
    sub_22C36C640(v10, 1, 1, v11);
LABEL_4:
    sub_22C36DD80(v10, &qword_27D9BB0C0);
    goto LABEL_5;
  }

  v17 = sub_22C9093DC();
  (*(*(v16 - 8) + 8))(v7, v16);
  sub_22C58B0F8(v17);

  if (sub_22C370B74(v10, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  (*(v12 + 32))(v15, v10, v11);
  v22 = sub_22C7047A4();
  if (v22)
  {
    v23 = v22;
    if (*(v22 + 16))
    {
      sub_22C90906C();
      v28 = swift_allocBox();
      v24 = v27;
      v25 = v30;
      (*(v27 + 16))(v4, v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v30);
      sub_22C90935C();
      (*(v24 + 8))(v4, v25);
      sub_22C90903C();
      (*(v12 + 8))(v15, v11);
      v26 = v29;
      *v29 = v28;
      (*(v24 + 104))(v26, *MEMORY[0x277D729E0], v25);
      v18 = v26;
      v20 = 0;
      v19 = v25;
      return sub_22C36C640(v18, v20, 1, v19);
    }

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    (*(v12 + 8))(v15, v11);
  }

LABEL_5:
  v18 = v29;
  v19 = v30;
  v20 = 1;
  return sub_22C36C640(v18, v20, 1, v19);
}

uint64_t sub_22C702938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v260 = a3;
  v257 = a2;
  v261 = sub_22C90919C();
  v226 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v225 = &v220 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BF810, &qword_22C923140);
  MEMORY[0x28223BE20](v5 - 8);
  v238 = &v220 - v6;
  v235 = sub_22C900C1C();
  v234 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v236 = &v220 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_22C900B1C();
  MEMORY[0x28223BE20](v240);
  v239 = &v220 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90931C();
  v266 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v230 = &v220 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v11 - 8);
  v228 = &v220 - v12;
  v242 = sub_22C9063DC();
  v241 = *(v242 - 8);
  v13 = MEMORY[0x28223BE20](v242);
  v231 = &v220 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v223 = &v220 - v16;
  MEMORY[0x28223BE20](v15);
  v232 = &v220 - v17;
  v252 = sub_22C90906C();
  v251 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v246 = &v220 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for TranscriptValueFetcher(0);
  MEMORY[0x28223BE20](v255);
  v254 = &v220 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  MEMORY[0x28223BE20](v20 - 8);
  v256 = (&v220 - v21);
  v22 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v22 - 8);
  v262 = (&v220 - v23);
  v24 = sub_22C901FAC();
  v268 = *(v24 - 8);
  v269 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v224 = &v220 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v222 = &v220 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v227 = &v220 - v30;
  MEMORY[0x28223BE20](v29);
  v267 = &v220 - v31;
  v32 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v32 - 8);
  v270 = &v220 - v33;
  v34 = sub_22C90952C();
  v271 = *(v34 - 8);
  v272 = v34;
  MEMORY[0x28223BE20](v34);
  v273 = (&v220 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_22C9093BC();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v245 = &v220 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v244 = &v220 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v237 = (&v220 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v249 = &v220 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v248 = &v220 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v258 = &v220 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v220 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = (&v220 - v53);
  v55 = swift_allocBox();
  v57 = v56;
  *v56 = sub_22C90825C();
  v57[1] = v58;
  v59 = *(v266 + 104);
  v229 = *MEMORY[0x277D729B8];
  v250 = v9;
  v59(v57);
  *v54 = v55;
  v61 = v37 + 104;
  v60 = *(v37 + 104);
  v243 = *MEMORY[0x277D72A58];
  v274 = v60;
  v60(v54);
  v253 = v37;
  v63 = *(v37 + 32);
  v62 = v37 + 32;
  v275 = v36;
  v265 = v63;
  v63(v52, v54, v36);
  v64 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v276 = v64;
  sub_22C62EC0C(v52, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native, v66, v67, v68, v69, v220, v221, v222, v223, v224, v225);
  v70 = v276;
  v263 = a1;
  v71 = sub_22C90826C();
  v72 = MEMORY[0x277D72D28];
  v259 = v61;
  v233 = v52;
  if (v73)
  {
    v264 = v71;
    sub_22C9090BC();
    v247 = swift_allocBox();
    v74 = swift_allocObject();
    v74[2] = 0xD000000000000028;
    v74[3] = 0x800000022C92EB40;
    v74[4] = 0xD000000000000012;
    v74[5] = 0x800000022C933990;
    v75 = v272;
    v76 = v273;
    *v273 = v74;
    (*(v271 + 104))(v76, *v72, v75);
    v77 = sub_22C90993C();
    sub_22C36C640(v270, 1, 1, v77);
    v78 = v275;
    sub_22C90909C();
    *v54 = v247;
    v274(v54, *MEMORY[0x277D729E8], v78);
    v265(v52, v54, v78);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v276 = v70;
    sub_22C62EC0C(v52, 1701869940, 0xE400000000000000, v79, v80, v81, v82, v83, v220, v221, v222, v223, v224, v225);
    v264 = v276;
  }

  else
  {
    v264 = v70;
  }

  v84 = v262;
  sub_22C90823C();
  v85 = v269;
  v86 = sub_22C370B74(v84, 1, v269);
  v87 = v268;
  if (v86 == 1)
  {
    v88 = v84;
    v89 = &qword_27D9BC030;
LABEL_8:
    sub_22C36DD80(v88, v89);
    v95 = v270;
    v96 = v273;
    v97 = v260;
LABEL_9:
    v98 = swift_allocBox();
    v99 = swift_allocObject();
    v99[2] = 0xD000000000000028;
    v99[3] = 0x800000022C92EB40;
    v99[4] = 0xD000000000000015;
    v99[5] = 0x800000022C933910;
    *v96 = v99;
    (*(v271 + 104))(v96, *MEMORY[0x277D72D28], v272);
    v100 = sub_22C90993C();
    sub_22C36C640(v95, 1, 1, v100);
    sub_22C90917C();
    *v97 = v98;
    v101 = v275;
    v274(v97, *MEMORY[0x277D72A38], v275);
    return sub_22C36C640(v97, 0, 1, v101);
  }

  v263 = v62;
  v90 = v267;
  (*(v268 + 32))(v267, v84, v85);
  v91 = v254;
  sub_22C90878C();
  sub_22C908C5C();
  sub_22C70C380(&qword_2814357B0, MEMORY[0x277D1C338]);
  *(v91 + *(v255 + 20)) = sub_22C909F0C();
  v92 = v256;
  sub_22C729D78(v90, v256);
  sub_22C70C2F0(v91, type metadata accessor for TranscriptValueFetcher);
  v93 = v85;
  v94 = sub_22C9025EC();
  if (sub_22C370B74(v92, 1, v94) == 1)
  {
    (*(v87 + 8))(v267, v93);
    v89 = &qword_27D9BF610;
    v88 = v92;
    goto LABEL_8;
  }

  v221 = v54;
  v103 = v248;
  sub_22C90207C();
  (*(*(v94 - 8) + 8))(v92, v94);
  v104 = v258;
  v105 = v275;
  v265(v258, v103, v275);
  v106 = v253;
  v107 = v253 + 16;
  v108 = v249;
  v262 = *(v253 + 16);
  v262(v249, v104, v105);
  v109 = *(v106 + 88);
  if (v109(v108, v105) == *MEMORY[0x277D729E0])
  {
    (*(v106 + 96))(v108, v275);
    v110 = swift_projectBox();
    v111 = v246;
    (*(v251 + 16))(v246, v110, v252);

    v112 = *(sub_22C90905C() + 16);

    v113 = v250;
    if (v112 >= 2)
    {

      v114 = v232;
      sub_22C903F8C();
      v115 = v268;
      v116 = v227;
      v117 = v269;
      (*(v268 + 16))(v227, v267, v269);
      v118 = sub_22C9063CC();
      v119 = sub_22C90AADC();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v276 = v121;
        *v120 = 136315138;
        sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v122 = sub_22C90B47C();
        v123 = v116;
        v125 = v124;
        v126 = *(v115 + 8);
        v126(v123, v117);
        v127 = sub_22C36F9F4(v122, v125, &v276);

        *(v120 + 4) = v127;
        _os_log_impl(&dword_22C366000, v118, v119, "Collection with multiple elements passed into search call as hydration context: %s", v120, 0xCu);
        sub_22C36FF94(v121);
        MEMORY[0x2318B9880](v121, -1, -1);
        MEMORY[0x2318B9880](v120, -1, -1);

        v128 = *(v241 + 8);
        v129 = &v263;
LABEL_23:
        v156 = *(v129 - 32);
LABEL_25:
        v128(v156, v242);
        type metadata accessor for InterpreterError(0);
        sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v251 + 8))(v246, v252);
        (*(v253 + 8))(v258, v275);
        return (v126)(v267, v117);
      }

      goto LABEL_24;
    }

    v257 = v107;
    v146 = sub_22C90905C();
    v147 = v228;
    sub_22C58B008(v146, v228);

    if (sub_22C370B74(v147, 1, v275) == 1)
    {

      sub_22C36DD80(v147, &qword_27D9BB908);
      v114 = v223;
      sub_22C903F8C();
      v115 = v268;
      v116 = v222;
      v117 = v269;
      (*(v268 + 16))(v222, v267, v269);
      v118 = sub_22C9063CC();
      v148 = sub_22C90AADC();
      if (os_log_type_enabled(v118, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v276 = v150;
        *v149 = 136315138;
        sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
        v151 = sub_22C90B47C();
        v152 = v116;
        v154 = v153;
        v126 = *(v115 + 8);
        v126(v152, v117);
        v155 = sub_22C36F9F4(v151, v154, &v276);

        *(v149 + 4) = v155;
        _os_log_impl(&dword_22C366000, v118, v148, "Empty collection passed into search call as hydration context: %s", v149, 0xCu);
        sub_22C36FF94(v150);
        MEMORY[0x2318B9880](v150, -1, -1);
        MEMORY[0x2318B9880](v149, -1, -1);

        v128 = *(v241 + 8);
        v129 = &v255;
        goto LABEL_23;
      }

LABEL_24:

      v157 = *(v115 + 8);
      v157(v116, v117);
      v126 = v157;
      v128 = *(v241 + 8);
      v156 = v114;
      goto LABEL_25;
    }

    (*(v251 + 8))(v111, v252);
    v106 = v253;
    v218 = v147;
    v219 = v275;
    v256 = *(v253 + 8);
    (v256)(v104, v275);
    v130 = v104;
    v265(v104, v218, v219);
  }

  else
  {
    v130 = v104;
    v256 = *(v106 + 8);
    v257 = v107;
    (v256)(v108, v275);
    v113 = v250;
  }

  v131 = v245;
  v132 = v244;
  v133 = v275;
  v262(v244, v130, v275);
  v134 = v109(v132, v133);
  if (v134 == v243)
  {
    (*(v106 + 96))(v132, v275);
    v135 = swift_projectBox();
    v136 = v266;
    v137 = v230;
    (*(v266 + 16))(v230, v135, v113);
    v138 = (*(v136 + 88))(v137, v113);
    if (v138 == v229)
    {
      (*(v136 + 96))(v137, v113);

      v139 = swift_allocBox();
      (*(v234 + 104))(v236, *MEMORY[0x277D36F70], v235);
      v140 = sub_22C90084C();
      sub_22C36C640(v238, 1, 1, v140);
      sub_22C900B0C();
      v141 = 0x800000022C92EB40;
      sub_22C70C380(&qword_27D9BF818, MEMORY[0x277D36F08]);
      sub_22C90916C();
      v142 = v237;
      *v237 = v139;
      LODWORD(v266) = *MEMORY[0x277D72A38];
      v95 = v270;
      v143 = v274;
LABEL_29:
      v176 = v275;
      v143(v142, v266, v275);
      v270 = "searchAnswerValue";
      v254 = swift_allocBox();
      v252 = v177;
      v178 = swift_allocObject();
      v178[2] = 0xD000000000000028;
      v178[3] = v141;
      v255 = 0xD000000000000010;
      v178[4] = 0xD000000000000010;
      v178[5] = 0x800000022C933970;
      v179 = v272;
      v180 = v273;
      *v273 = v178;
      (*(v271 + 104))(v180, *MEMORY[0x277D72D28], v179);
      sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
      v181 = (sub_22C3A5908(&qword_27D9BF828, &unk_22C923150) - 8);
      v182 = (*(*v181 + 80) + 32) & ~*(*v181 + 80);
      v183 = swift_allocObject();
      *(v183 + 16) = xmmword_22C90F800;
      v184 = (v183 + v182);
      v185 = v181[14];
      *v184 = 0x797469746E65;
      v184[1] = 0xE600000000000000;
      v262((v183 + v182 + v185), v142, v176);
      sub_22C909F0C();
      v186 = sub_22C90993C();
      sub_22C36C640(v95, 1, 1, v186);
      sub_22C90917C();
      v187 = v221;
      *v221 = v254;
      v274(v187, v266, v176);
      v188 = v233;
      v265(v233, v187, v176);
      v189 = v264;
      v190 = swift_isUniquelyReferenced_nonNull_native();
      v276 = v189;
      sub_22C62EC0C(v188, v255, v270 | 0x8000000000000000, v190, v191, v192, v193, v194, v220, v221, v222, v223, v224, v225);
      v195 = v256;
      (v256)(v142, v176);
      v195(v258, v176);
      (*(v268 + 8))(v267, v269);
      v97 = v260;
      v96 = v273;
      goto LABEL_9;
    }

    (*(v136 + 8))(v137, v113);

    v130 = v258;
    v145 = v256;
    v131 = v245;
  }

  else
  {
    v144 = v132;
    v145 = v256;
    (v256)(v144, v275);
  }

  v158 = v275;
  v262(v131, v130, v275);
  v159 = v109(v131, v158);
  v160 = *MEMORY[0x277D72A38];
  v256 = v145;
  if (v159 == v160)
  {
    LODWORD(v266) = v159;
    v161 = v131;
    v162 = v275;
    (v145)(v161, v275);
    (*(v234 + 104))(v236, *MEMORY[0x277D36F68], v235);
    v163 = sub_22C90084C();
    sub_22C36C640(v238, 1, 1, v163);
    sub_22C900B0C();
    v255 = 0x800000022C92EB40;
    sub_22C70C380(&qword_27D9BF818, MEMORY[0x277D36F08]);
    v164 = v225;
    sub_22C90916C();
    v165 = sub_22C90914C();
    v166 = v221;
    v262(v221, v130, v162);
    v167 = swift_isUniquelyReferenced_nonNull_native();
    v276 = v165;
    sub_22C62EC0C(v166, 0xD000000000000011, 0x800000022C933930, v167, v168, v169, v170, v171, v220, v221, v222, v223, v224, v225);
    v252 = v276;
    v172 = v261;
    v254 = swift_allocBox();
    sub_22C9090AC();
    sub_22C90908C();
    v173 = sub_22C90993C();
    v174 = v270;
    sub_22C36C640(v270, 1, 1, v173);
    v143 = v274;
    v95 = v174;
    sub_22C90917C();
    v175 = v164;
    v141 = v255;
    (*(v226 + 8))(v175, v172);
    v142 = v237;
    *v237 = v254;
    goto LABEL_29;
  }

  v196 = (v106 + 8);
  (v145)(v131, v275);
  v197 = v231;
  sub_22C903F8C();
  v198 = v268;
  v199 = v224;
  v200 = v269;
  (*(v268 + 16))(v224, v267, v269);
  v201 = sub_22C9063CC();
  v202 = sub_22C90AADC();
  if (os_log_type_enabled(v201, v202))
  {
    v203 = v199;
    v204 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    v274 = v196;
    v206 = v205;
    v276 = v205;
    *v204 = 136315138;
    sub_22C70C380(&qword_27D9BAA48, MEMORY[0x277D1C338]);
    v207 = v203;
    v208 = sub_22C90B47C();
    v210 = v209;
    v211 = *(v198 + 8);
    v211(v207, v269);
    v212 = sub_22C36F9F4(v208, v210, &v276);
    v213 = v258;

    *(v204 + 4) = v212;
    _os_log_impl(&dword_22C366000, v201, v202, "Non-string and non-entity value passed into search call as hydration context: %s", v204, 0xCu);
    sub_22C36FF94(v206);
    v214 = v206;
    v200 = v269;
    MEMORY[0x2318B9880](v214, -1, -1);
    v215 = v204;
    v216 = v213;
    v217 = v256;
    MEMORY[0x2318B9880](v215, -1, -1);

    (*(v241 + 8))(v231, v242);
  }

  else
  {

    v211 = *(v198 + 8);
    v211(v199, v200);
    (*(v241 + 8))(v197, v242);
    v216 = v258;
    v217 = v256;
  }

  type metadata accessor for InterpreterError(0);
  sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v217(v216, v275);
  return (v211)(v267, v200);
}

uint64_t sub_22C7047A4()
{
  v0 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v120 = &v93[-v1];
  v2 = sub_22C9094EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v93[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v121 = &v93[-v7];
  v8 = sub_22C90952C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v93[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v93[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v93[-v16];
  v18 = swift_allocObject();
  v18[2] = 0xD000000000000028;
  v18[3] = 0x800000022C92EB40;
  v18[4] = 0xD00000000000001ALL;
  v18[5] = 0x800000022C9339B0;
  *v17 = v18;
  v19 = *MEMORY[0x277D72D28];
  (*(v9 + 104))(v17, *MEMORY[0x277D72D28], v8);
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v15);
  v20 = (*(v9 + 88))(v15, v8);
  if (v20 != *MEMORY[0x277D72D50])
  {
    if (v20 == v19)
    {
      (*(v9 + 96))(v15, v8);
      v116 = *v15;
      v62 = v116[3];
      v108 = v116[2];
      v105 = v62;
      v63 = v116[4];
      v112 = v116[5];
      v113 = v63;
      sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
      v110 = sub_22C9093BC();
      v121 = *(v110 - 8);
      v115 = (v121[80] + 32) & ~v121[80];
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_22C90F800;
      sub_22C90919C();
      v114 = swift_allocBox();
      v111 = v64;
      (*(v9 + 16))(v12, v17, v8);
      sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
      v65 = (sub_22C3A5908(&qword_27D9BF828, &unk_22C923150) - 8);
      v66 = *v65;
      v106 = *(*v65 + 72);
      v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v68 = swift_allocObject();
      v107 = v68;
      *(v68 + 16) = xmmword_22C90F870;
      v118 = v8;
      v69 = (v68 + v67);
      v70 = v65[14];
      *v69 = 0x6449656C646E7562;
      v69[1] = 0xE800000000000000;
      v71 = sub_22C90931C();
      v117 = v12;
      v72 = v71;
      v73 = swift_allocBox();
      v119 = v17;
      v74 = v73;
      *v75 = v108;
      v75[1] = v62;
      v76 = *MEMORY[0x277D729B8];
      v77 = *(v72 - 8);
      v108 = v9;
      v78 = *(v77 + 104);
      v78(v75, v76, v72);
      *(v69 + v70) = v74;
      v79 = *MEMORY[0x277D72A58];
      v80 = *(v121 + 13);
      v121 += 104;
      v104 = v80;
      v81 = v69 + v70;
      v82 = v110;
      v80(v81, v79, v110);
      v83 = (v69 + v106);
      v84 = v65[14];
      *v83 = 0x656D614E65707974;
      v83[1] = 0xE800000000000000;
      v85 = swift_allocBox();
      v86 = v112;
      *v87 = v113;
      v87[1] = v86;
      v78(v87, v76, v72);
      v43 = v109;
      *(v83 + v84) = v85;
      v88 = v104;
      v104(v83 + v84, v79, v82);

      sub_22C909F0C();
      v89 = sub_22C90993C();
      sub_22C36C640(v120, 1, 1, v89);
      sub_22C90917C();
      v90 = v115;
      *(v43 + v115) = v114;
      v88(v43 + v90, *MEMORY[0x277D72A38], v82);
      (*(v108 + 8))(v119, v118);
      goto LABEL_6;
    }

    v91 = *(v9 + 8);
    v91(v17, v8);
    v91(v15, v8);
    return 0;
  }

  (*(v9 + 96))(v15, v8);
  v116 = *v15;
  v21 = swift_projectBox();
  v22 = v3;
  v23 = *(v3 + 16);
  v24 = v121;
  v23(v121, v21, v2);
  v23(v6, v24, v2);
  v25 = (*(v22 + 88))(v6, v2);
  v28 = *(v22 + 8);
  v27 = v22 + 8;
  v26 = v28;
  if (v25 != *MEMORY[0x277D72CC0])
  {
    v26(v121, v2);
    (*(v9 + 8))(v17, v8);
    v26(v6, v2);

    return 0;
  }

  v106 = 0x800000022C9339D0;
  v112 = 0x800000022C933A00;
  v26(v6, v2);
  sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
  v114 = v26;
  v115 = sub_22C9093BC();
  v98 = *(v115 - 8);
  v113 = *(v98 + 72);
  v29 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22C90F870;
  v107 = (v30 + v29);
  v110 = sub_22C90919C();
  v31 = swift_allocBox();
  v104 = v32;
  v105 = v31;
  v33 = *(v9 + 16);
  v108 = v9 + 16;
  v109 = v33;
  v33(v12, v17, v8);
  v102 = sub_22C3A5908(&qword_27D9BF820, &qword_22C923148);
  v34 = sub_22C3A5908(&qword_27D9BF828, &unk_22C923150);
  v119 = v17;
  v35 = v34 - 8;
  v36 = *(v34 - 8);
  v103 = *(v36 + 72);
  v101 = *(v36 + 80);
  v37 = (v101 + 32) & ~v101;
  v99 = v37;
  v38 = swift_allocObject();
  v111 = v27;
  v100 = xmmword_22C90F800;
  *(v38 + 16) = xmmword_22C90F800;
  v39 = (v38 + v37);
  v118 = v8;
  v40 = *(v35 + 56);
  *v39 = 0x6449656C646E7562;
  *(v39 + 1) = 0xE800000000000000;
  v41 = sub_22C90931C();
  v42 = swift_allocBox();
  v117 = v12;
  v43 = v30;
  v44 = v42;
  v45 = v106;
  *v46 = 0xD00000000000002BLL;
  v46[1] = v45;
  v96 = *MEMORY[0x277D729B8];
  v47 = *(v41 - 8);
  v95 = *(v47 + 104);
  v106 = v2;
  v97 = v47 + 104;
  v95(v46);
  *&v39[v40] = v44;
  v94 = *MEMORY[0x277D72A58];
  v48 = *(v98 + 104);
  v48(&v39[v40]);
  sub_22C909F0C();
  v98 = sub_22C90993C();
  sub_22C36C640(v120, 1, 1, v98);
  v49 = v117;
  sub_22C90917C();
  v50 = v107;
  *v107 = v105;
  LODWORD(v105) = *MEMORY[0x277D72A38];
  v48(v50);
  v110 = swift_allocBox();
  v104 = v51;
  (v109)(v49, v119, v118);
  v52 = v99;
  v53 = swift_allocObject();
  *(v53 + 16) = v100;
  v54 = (v53 + v52);
  v55 = *(v35 + 56);
  *v54 = 0x6449656C646E7562;
  v54[1] = 0xE800000000000000;
  v56 = swift_allocBox();
  v57 = v112;
  *v58 = 0xD000000000000023;
  v58[1] = v57;
  (v95)(v58, v96, v41);
  *(v54 + v55) = v56;
  v59 = v54 + v55;
  v60 = v115;
  (v48)(v59, v94, v115);
  sub_22C909F0C();
  sub_22C36C640(v120, 1, 1, v98);
  sub_22C90917C();
  v61 = v113;
  *&v50[v113] = v110;
  (v48)(&v50[v61], v105, v60);
  v114(v121, v106);
  (*(v9 + 8))(v119, v118);
LABEL_6:

  return v43;
}

uint64_t sub_22C70541C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v38 = sub_22C901FAC();
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C9089DC();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22C906A3C();
  v31 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C908A0C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v47 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9087DC();
  v14 = *(v13 + 16);
  if (v14)
  {
    v30[0] = a2;
    v30[1] = v2;
    v46 = v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v44 = v11 + 8;
    v45 = v11 + 16;
    v43 = (v41 + 11);
    v42 = *MEMORY[0x277D1E720];
    v34 = (v41 + 12);
    v35 = (v41 + 1);
    v41 = (v31 + 4);
    v32 = v11;
    ++v33;
    ++v31;
    v15 = v9;
    a2 = v13;
    v36 = v13;
    while (v14 <= *(a2 + 16))
    {
      --v14;
      v16 = v47;
      (*(v11 + 16))(v47, v46 + *(v11 + 72) * v14, v10);
      sub_22C9089EC();
      (*(v11 + 8))(v16, v10);
      v17 = (*v43)(v7, v5);
      if (v17 == v42)
      {
        v18 = v10;
        v19 = v5;
        (*v34)(v7, v5);
        v20 = v15;
        v21 = *v41;
        v22 = v7;
        v23 = v7;
        v24 = v40;
        (*v41)(v20, v23, v40);
        v25 = v37;
        sub_22C9068FC();
        v26 = sub_22C901F6C();
        (*v33)(v25, v38);
        if (v26)
        {

          a2 = v30[0];
          v21(v30[0], v20, v24);
          v27 = 0;
          v28 = v24;
          return sub_22C36C640(a2, v27, 1, v28);
        }

        (*v31)(v20, v24);
        v5 = v19;
        v15 = v20;
        v7 = v22;
        v10 = v18;
        v11 = v32;
        a2 = v36;
        if (!v14)
        {
          goto LABEL_9;
        }
      }

      else
      {
        (*v35)(v7, v5);
        if (!v14)
        {
LABEL_9:

          v27 = 1;
          a2 = v30[0];
          goto LABEL_10;
        }
      }
    }

    __break(1u);
  }

  v27 = 1;
LABEL_10:
  v28 = v40;
  return sub_22C36C640(a2, v27, 1, v28);
}

uint64_t sub_22C7058B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v104 = a3;
  v5 = sub_22C90769C();
  v6 = *(v5 - 8);
  v102 = v5;
  v103 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v98 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v83 - v9;
  v11 = sub_22C908A7C();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v88 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v89 = &v83 - v14;
  v15 = sub_22C9063DC();
  v100 = *(v15 - 8);
  v101 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = &v83 - v19;
  v94 = sub_22C9099FC();
  v87 = *(v94 - 8);
  v20 = MEMORY[0x28223BE20](v94);
  v86 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v93 = &v83 - v22;
  v23 = sub_22C908DAC();
  v96 = *(v23 - 8);
  v97 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v84 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v95 = &v83 - v26;
  v99 = sub_22C908EAC();
  v27 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  MEMORY[0x28223BE20](v30);
  v32 = &v83 - v31;
  v33 = a1;
  v92 = a2;
  sub_22C908ADC();
  v34 = sub_22C908ABC();
  if (sub_22C370B74(v32, 1, v34) == 1)
  {
    sub_22C903F8C();
    v35 = v103[2];
    v35(v10, v33, v102);
    v36 = sub_22C9063CC();
    v37 = sub_22C90AADC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v105 = v39;
      *v38 = 136315138;
      v40 = v10;
      v99 = v18;
      v41 = v10;
      v42 = v102;
      v35(v98, v40, v102);
      v43 = sub_22C90A1AC();
      v45 = v44;
      (v103[1])(v41, v42);
      v46 = sub_22C36F9F4(v43, v45, &v105);

      *(v38 + 4) = v46;
      _os_log_impl(&dword_22C366000, v36, v37, "no tool found for %s", v38, 0xCu);
      sub_22C36FF94(v39);
      MEMORY[0x2318B9880](v39, -1, -1);
      MEMORY[0x2318B9880](v38, -1, -1);

      result = (*(v100 + 8))(v99, v101);
    }

    else
    {

      (v103[1])(v10, v102);
      result = (*(v100 + 8))(v18, v101);
    }

    v53 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v48 = *(v34 - 8);
  v49 = (*(v48 + 88))(v32, v34);
  if (v49 == *MEMORY[0x277D1E8E0] || v49 == *MEMORY[0x277D1E8C8])
  {
    (*(v48 + 96))(v32, v34);
    v50 = *(v27 + 32);
    v51 = v99;
    v50(v29, v32, v99);
    sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
    v52 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_22C90F800;
    result = (v50)(v53 + v52, v29, v51);
LABEL_9:
    *v104 = v53;
    return result;
  }

  if (v49 == *MEMORY[0x277D1E8D0])
  {
    (*(v48 + 96))(v32, v34);
    v54 = v95;
    (*(v96 + 32))(v95, v32, v97);
    v55 = v93;
    sub_22C908D7C();
    sub_22C9099DC();
    v56 = *(v87 + 8);
    v57 = v94;
    v56(v55, v94);
    v58 = v86;
    sub_22C908D7C();
    sub_22C9099EC();
    v56(v58, v57);
    v59 = v92;
    v60 = sub_22C908A9C();

    if (v60)
    {
      MEMORY[0x28223BE20](v61);
      *(&v83 - 2) = v59;
      v53 = sub_22C47B8F0(sub_22C6AE7D8, (&v83 - 4), v60);
      result = (*(v96 + 8))(v54, v97);
    }

    else
    {
      v69 = v85;
      sub_22C903F8C();
      v70 = v96;
      v71 = v97;
      v72 = v84;
      (*(v96 + 16))(v84, v54, v97);
      v73 = sub_22C9063CC();
      v74 = sub_22C90AADC();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = v70;
        v76 = v72;
        v77 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v105 = v103;
        *v77 = 136315138;
        sub_22C908D7C();
        v102 = sub_22C90A1AC();
        v79 = v78;
        v80 = *(v75 + 8);
        v80(v76, v97);
        v81 = sub_22C36F9F4(v102, v79, &v105);
        v71 = v97;

        *(v77 + 4) = v81;
        _os_log_impl(&dword_22C366000, v73, v74, "no tools found for schema %s", v77, 0xCu);
        v82 = v103;
        sub_22C36FF94(v103);
        MEMORY[0x2318B9880](v82, -1, -1);
        MEMORY[0x2318B9880](v77, -1, -1);
      }

      else
      {

        v80 = *(v70 + 8);
        v80(v72, v71);
      }

      (*(v100 + 8))(v69, v101);
      result = (v80)(v95, v71);
      v53 = MEMORY[0x277D84F90];
    }

    goto LABEL_9;
  }

  if (v49 == *MEMORY[0x277D1E8D8])
  {
    (*(v48 + 96))(v32, v34);
    v63 = v89;
    v62 = v90;
    v64 = v91;
    (*(v90 + 32))(v89, v32, v91);
    v65 = v88;
    (*(v62 + 16))(v88, v63, v64);
    if ((*(v62 + 88))(v65, v64) == *MEMORY[0x277D1E8B8])
    {
      (*(v62 + 96))(v65, v64);
      v66 = *(v27 + 32);
      v67 = v99;
      v66(v29, v65, v99);
      sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
      v68 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_22C90F800;
      v66((v53 + v68), v29, v67);
      result = (*(v62 + 8))(v63, v64);
      goto LABEL_9;
    }
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C70643C(uint64_t a1)
{
  v29 = sub_22C90637C();
  v27 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90365C();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v28 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v24 = v8;
    v25 = v7;
    v26 = v3;

    sub_22C9063BC();

    v12 = v27;
    v13 = v29;
    if ((*(v27 + 88))(v2, v29) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = 0;
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v2, v13);
      v29 = "%s";
      v15 = 2;
      v14 = 1;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = v15;
    *(v17 + 1) = v14;
    *(v17 + 2) = 2080;
    sub_22C90366C();
    v19 = sub_22C90AF7C();
    v21 = sub_22C36F9F4(v19, v20, &v30);

    *(v17 + 4) = v21;
    v22 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v28, v22, "ToolResolver.run", v29, v17, 0xCu);
    sub_22C36FF94(v18);
    MEMORY[0x2318B9880](v18, -1, -1);
    MEMORY[0x2318B9880](v17, -1, -1);

    (*(v4 + 8))(v6, v26);
    return (*(v24 + 8))(v10, v25);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_22C7067E0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22C90880C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  v7 = sub_22C9087DC();
  (*(v4 + 8))(v6, v3);
  v10[1] = v7;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C50B118(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420);
  v8 = sub_22C907E6C();

  *a2 = v8;
  return result;
}

uint64_t sub_22C706944@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v196 = a1;
  v164 = a2;
  v178 = sub_22C90952C();
  v177 = *(v178 - 8);
  v2 = MEMORY[0x28223BE20](v178);
  v158 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v194 = &v151 - v5;
  MEMORY[0x28223BE20](v4);
  v192 = &v151 - v6;
  v162 = sub_22C9063DC();
  v161 = *(v162 - 8);
  v7 = MEMORY[0x28223BE20](v162);
  v160 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v193 = &v151 - v9;
  v188 = sub_22C908EEC();
  v166 = *(v188 - 8);
  v10 = MEMORY[0x28223BE20](v188);
  v191 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v190 = &v151 - v12;
  v13 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v163 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v165 = &v151 - v16;
  v170 = sub_22C908EAC();
  v189 = *(v170 - 8);
  v17 = MEMORY[0x28223BE20](v170);
  v159 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v171 = &v151 - v20;
  MEMORY[0x28223BE20](v19);
  v187 = &v151 - v21;
  v22 = sub_22C90077C();
  v183 = *(v22 - 8);
  v184 = v22;
  MEMORY[0x28223BE20](v22);
  v182 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C908F6C();
  v180 = *(v24 - 8);
  v181 = v24;
  MEMORY[0x28223BE20](v24);
  v176 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_22C908D3C();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  *&v173 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_22C90972C();
  v168 = *(v169 - 1);
  MEMORY[0x28223BE20](v169);
  v167 = (&v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v151 - v29;
  v31 = sub_22C9068CC();
  v172 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22C908F4C();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v151 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v151 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v151 - v42;
  v44 = v186;
  result = sub_22C90877C();
  if (!v44)
  {
    v186 = v38;
    v154 = v41;
    v155 = v35;
    v157 = 0;
    v179 = v43;
    v153 = v31;
    v156 = v34;
    sub_22C9068AC();
    v46 = sub_22C90212C();
    v47 = sub_22C370B74(v30, 1, v46);
    v152 = v33;
    v48 = v178;
    if (v47 == 1)
    {
      sub_22C36DD80(v30, &qword_27D9BE068);
      sub_22C908F3C();
    }

    else
    {
      v49 = sub_22C90211C();
      v51 = v50;
      (*(*(v46 - 8) + 8))(v30, v46);
      v52 = v167;
      *v167 = v49;
      v52[1] = v51;
      v53 = v168;
      v54 = v169;
      (*(v168 + 104))(v52, *MEMORY[0x277D730E0], v169);
      sub_22C908F1C();
      (*(v53 + 8))(v52, v54);
    }

    v55 = v173;
    swift_getKeyPath();
    sub_22C3A5908(&qword_27D9BEC40, &unk_22C920500);
    v56 = sub_22C908D4C();
    v57 = *(v56 - 8);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    v173 = xmmword_22C90F800;
    *(v59 + 16) = xmmword_22C90F800;
    (*(v57 + 104))(v59 + v58, *MEMORY[0x277D720D8], v56);
    sub_22C5EA174();
    *v55 = v60;
    v61 = v174;
    v62 = v175;
    v174[13](v55, *MEMORY[0x277D720A8], v175);
    sub_22C70C380(&qword_27D9BEC48, MEMORY[0x277D724B8]);
    sub_22C70C380(&qword_27D9BEC50, MEMORY[0x277D720C0]);
    v63 = v186;
    v64 = v179;
    sub_22C90901C();

    (v61[1])(v55, v62);
    swift_getKeyPath();
    sub_22C3A5908(&qword_27D9BAFB0, &qword_22C90D850);
    v65 = v177;
    v66 = (*(v177 + 80) + 32) & ~*(v177 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = v173;
    v69 = *(v65 + 16);
    v68 = v65 + 16;
    v174 = v69;
    (v69)(v67 + v66, v196, v48);
    sub_22C5EA4C4();
    v70 = v176;
    MEMORY[0x2318B6430]();

    sub_22C70C380(&qword_27D9BF758, MEMORY[0x277D724E8]);
    v71 = v154;
    sub_22C90901C();

    (*(v180 + 8))(v70, v181);
    v72 = v155;
    v74 = v155 + 8;
    v73 = *(v155 + 8);
    v75 = v156;
    v73(v63, v156);
    v186 = v73;
    v73(v64, v75);
    (*(v72 + 32))(v64, v71, v75);
    sub_22C908A3C();
    sub_22C374168(v195, v195[3]);
    v76 = v182;
    sub_22C908A6C();
    v77 = v157;
    v78 = sub_22C90669C();
    if (v77)
    {
      (*(v183 + 8))(v76, v184);
      (*(v172 + 8))(v152, v153);
      v186(v179, v75);
      return sub_22C36FF94(v195);
    }

    else
    {
      v79 = v78;
      v168 = v68;
      *&v173 = v74;
      v157 = 0;
      (*(v183 + 8))(v76, v184);
      result = sub_22C36FF94(v195);
      v80 = 0;
      v81 = *(v79 + 16);
      v184 = v79;
      v185 = v81;
      v82 = v189;
      v183 = v189 + 16;
      v182 = (v166 + 8);
      v180 = v189 + 8;
      v176 = (v189 + 32);
      v175 = MEMORY[0x277D84F90];
      v83 = v193;
      v84 = v170;
      v85 = v196;
      v86 = v191;
      v87 = v186;
LABEL_8:
      v88 = v194;
      v89 = v192;
      while (v185 != v80)
      {
        if (v80 >= *(v184 + 16))
        {
          __break(1u);
          return result;
        }

        v181 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v90 = *(v82 + 72);
        v91 = v187;
        (*(v82 + 16))(v187, v184 + v181 + v90 * v80, v84);
        v92 = v84;
        sub_22C908DFC();
        sub_22C908EDC();
        sub_22C70C380(&qword_27D9BF760, MEMORY[0x277D72418]);
        v93 = v86;
        v94 = v188;
        v95 = sub_22C90AE0C();
        v96 = *v182;
        v97 = v93;
        v98 = v190;
        (*v182)(v97, v94);
        v96(v98, v94);
        if (v95)
        {
          v169 = *v176;
          (v169)(v171, v91, v92);
          v99 = v175;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v195[0] = v99;
          if (isUniquelyReferenced_nonNull_native)
          {
            v84 = v92;
          }

          else
          {
            sub_22C3B7AE0(0, *(v99 + 16) + 1, 1);
            v84 = v170;
            v99 = v195[0];
          }

          v83 = v193;
          v85 = v196;
          v86 = v191;
          v101 = v186;
          v102 = v181;
          v104 = *(v99 + 16);
          v103 = *(v99 + 24);
          v105 = v104 + 1;
          v106 = v171;
          if (v104 >= v103 >> 1)
          {
            v107 = *(v99 + 16);
            v175 = v104 + 1;
            sub_22C3B7AE0(v103 > 1, v105, 1);
            v105 = v175;
            v104 = v107;
            v102 = v181;
            v106 = v171;
            v84 = v170;
            v99 = v195[0];
          }

          ++v80;
          *(v99 + 16) = v105;
          v175 = v99;
          result = (v169)(v99 + v102 + v104 * v90, v106, v84);
          v82 = v189;
          v87 = v101;
          goto LABEL_8;
        }

        result = (*v180)(v91, v92);
        ++v80;
        v83 = v193;
        v88 = v194;
        v84 = v92;
        v86 = v191;
        v89 = v192;
        v85 = v196;
        v82 = v189;
        v87 = v186;
      }

      v108 = v87;
      v109 = v165;
      sub_22C58AF70(v175, v165);

      if (sub_22C370B74(v109, 1, v84) == 1)
      {
        sub_22C36DD80(v109, &qword_27D9BC1E8);
        v110 = v163;
        sub_22C58AF70(v184, v163);

        if (sub_22C370B74(v110, 1, v84) == 1)
        {
          sub_22C36DD80(v110, &qword_27D9BC1E8);
          v111 = v160;
          sub_22C903F8C();
          v112 = v158;
          v113 = v85;
          v114 = v178;
          v115 = v174;
          (v174)(v158, v113, v178);
          v116 = sub_22C9063CC();
          v117 = sub_22C90AADC();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v196 = v118;
            v119 = swift_slowAlloc();
            v195[0] = v119;
            *v118 = 136315138;
            v115(v88, v112, v114);
            v120 = sub_22C90A1AC();
            v121 = v112;
            v123 = v122;
            v124 = v186;
            (*(v177 + 8))(v121, v114);
            v125 = sub_22C36F9F4(v120, v123, v195);

            v126 = v196;
            *(v196 + 1) = v125;
            v127 = v117;
            v128 = v126;
            _os_log_impl(&dword_22C366000, v116, v127, "no open tool defined for type %s", v126, 0xCu);
            sub_22C36FF94(v119);
            MEMORY[0x2318B9880](v119, -1, -1);
            MEMORY[0x2318B9880](v128, -1, -1);

            (*(v161 + 8))(v160, v162);
            v129 = v153;
            v130 = v172;
            v131 = v152;
            v132 = v179;
          }

          else
          {

            (*(v177 + 8))(v112, v114);
            (*(v161 + 8))(v111, v162);
            v129 = v153;
            v130 = v172;
            v131 = v152;
            v132 = v179;
            v124 = v108;
          }

          type metadata accessor for InterpreterError(0);
          sub_22C70C380(&qword_27D9BAA40, type metadata accessor for InterpreterError);
          swift_allocError();
          *v150 = 1852141679;
          v150[1] = 0xE400000000000000;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v130 + 8))(v131, v129);
          return v124(v132, v156);
        }

        else
        {
          v133 = v159;
          v196 = *v176;
          (v196)(v159, v110, v84);
          sub_22C903F8C();
          v134 = v85;
          v135 = v178;
          v136 = v174;
          (v174)(v89, v134, v178);
          v137 = sub_22C9063CC();
          v138 = sub_22C90AAFC();
          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            LODWORD(v194) = v138;
            v140 = v139;
            v141 = v89;
            v142 = v135;
            v143 = swift_slowAlloc();
            v195[0] = v143;
            *v140 = 136315138;
            v136(v88, v141, v142);
            v144 = sub_22C90A1AC();
            v145 = v83;
            v147 = v146;
            v148 = v141;
            v133 = v159;
            (*(v177 + 8))(v148, v142);
            v149 = sub_22C36F9F4(v144, v147, v195);

            *(v140 + 4) = v149;
            _os_log_impl(&dword_22C366000, v137, v194, "no open tool with assistant visibility defined for type %s, falling back to an invisible tool", v140, 0xCu);
            sub_22C36FF94(v143);
            MEMORY[0x2318B9880](v143, -1, -1);
            MEMORY[0x2318B9880](v140, -1, -1);

            (*(v161 + 8))(v145, v162);
          }

          else
          {

            (*(v177 + 8))(v89, v135);
            (*(v161 + 8))(v83, v162);
          }

          (*(v172 + 8))(v152, v153);
          v186(v179, v156);
          return (v196)(v164, v133, v170);
        }
      }

      else
      {

        (*(v172 + 8))(v152, v153);
        v108(v179, v156);
        return (*v176)(v164, v109, v84);
      }
    }
  }

  return result;
}

uint64_t sub_22C707F6C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v130) = a4;
  v131 = a3;
  v128 = a2;
  v124 = a1;
  v116 = sub_22C9069BC();
  v104 = *(v116 - 8);
  v4 = MEMORY[0x28223BE20](v116);
  v129 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v134 = &v93 - v6;
  v7 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  MEMORY[0x28223BE20](v7 - 8);
  v120 = &v93 - v8;
  v9 = sub_22C908C3C();
  MEMORY[0x28223BE20](v9 - 8);
  v119 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_22C3A5908(&qword_27D9BDCF0, qword_22C91B608);
  MEMORY[0x28223BE20](v122);
  v103 = (&v93 - v11);
  v12 = sub_22C3A5908(&qword_27D9BF7B0, &unk_22C923060);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v121 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v93 - v15;
  v123 = sub_22C9093BC();
  v105 = *(v123 - 8);
  v17 = MEMORY[0x28223BE20](v123);
  v118 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v113 = (&v93 - v19);
  v96 = sub_22C90906C();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v114 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v93 - v24;
  v26 = sub_22C908C5C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v133 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v132 = &v93 - v31;
  MEMORY[0x28223BE20](v30);
  v127 = &v93 - v32;
  v33 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  MEMORY[0x28223BE20](v33);
  v35 = &v93 - v34;
  v36 = sub_22C901FAC();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v117 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v93 - v40;
  v43 = v42;
  sub_22C6AEA50(v128, v35, &qword_27D9BAA30, &unk_22C911F70);

  v125 = v33;
  v126 = v35;
  v44 = *(v33 + 48);
  v45 = v37;
  (*(v37 + 32))(v41, &v35[v44], v43);
  sub_22C605B74(v41, v131);
  if (sub_22C370B74(v25, 1, v26) == 1)
  {
    (*(v37 + 8))(v41, v43);
    return sub_22C36DD80(v25, &qword_27D9BB628);
  }

  v115 = v41;
  v47 = *(v27 + 32);
  v48 = v127;
  v102 = v27 + 32;
  v101 = v47;
  v47(v127, v25, v26);
  if (v130)
  {
    goto LABEL_23;
  }

  v130 = v45;
  v131 = v26;
  v49 = v113;
  sub_22C90774C();
  v50 = v105;
  v51 = v123;
  if ((*(v105 + 88))(v49, v123) != *MEMORY[0x277D729E0])
  {
    (*(v50 + 8))(v49, v51);
    v45 = v130;
    v26 = v131;
LABEL_23:
    v89 = v126;
    sub_22C6AEA50(v128, v126, &qword_27D9BAA30, &unk_22C911F70);
    v90 = *(v125 + 48);
    sub_22C90699C();
    v91 = *(v45 + 8);
    v91(v89 + v90, v43);
    v92 = v114;
    (*(v27 + 16))(v114, v48, v26);
    sub_22C36C640(v92, 0, 1, v26);
    sub_22C603A20();
    (*(v27 + 8))(v48, v26);
    return (v91)(v115, v43);
  }

  v114 = v43;
  (*(v50 + 96))(v49, v51);
  v52 = swift_projectBox();
  (*(v95 + 16))(v94, v52, v96);

  v53 = sub_22C90905C();
  v54 = 0;
  v100 = v53;
  v55 = *(v53 + 16);
  v99 = v50 + 16;
  v111 = (v50 + 32);
  v110 = (v130 + 16);
  v113 = (v130 + 8);
  v109 = (v27 + 16);
  v98 = v104 + 16;
  v106 = (v104 + 8);
  v112 = (v27 + 8);
  v97 = v27 + 40;
  v57 = v121;
  v56 = v122;
  v58 = v51;
  v108 = v27;
  v107 = v55;
  while (1)
  {
    if (v54 == v55)
    {
      v59 = 1;
      v130 = v55;
    }

    else
    {
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v54 >= *(v100 + 16))
      {
        goto LABEL_28;
      }

      v60 = v54 + 1;
      v61 = v105;
      v62 = v100 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v54;
      v63 = *(v56 + 48);
      v64 = v103;
      *v103 = v54;
      (*(v61 + 16))(v64 + v63, v62, v58);
      sub_22C6AE8BC(v64, v57, &qword_27D9BDCF0, qword_22C91B608);
      v59 = 0;
      v130 = v60;
    }

    sub_22C36C640(v57, v59, 1, v56);
    sub_22C6AE8BC(v57, v16, &qword_27D9BF7B0, &unk_22C923060);
    if (sub_22C370B74(v16, 1, v56) == 1)
    {

      (*(v95 + 8))(v94, v96);
      (*v112)(v127, v131);
      return (*v113)(v115, v114);
    }

    v129 = *v16;
    (*v111)(v118, &v16[*(v56 + 48)], v58);
    sub_22C908C4C();
    v65 = v114;
    (*v110)(v117, v115, v114);
    sub_22C908B8C();
    v66 = v124;
    v67 = v132;
    sub_22C908BFC();
    v68 = v126;
    sub_22C6AEA50(v128, v126, &qword_27D9BAA30, &unk_22C911F70);
    v69 = *(v125 + 48);
    sub_22C90699C();
    (*v113)((v68 + v69), v65);
    (*v109)(v133, v67, v131);
    swift_isUniquelyReferenced_nonNull_native();
    v70 = v66;
    v135 = *v66;
    v71 = v135;
    sub_22C628D18();
    if (__OFADD__(v71[2], (v73 & 1) == 0))
    {
      break;
    }

    v74 = v72;
    v75 = v73;
    sub_22C3A5908(&qword_27D9BF348, &unk_22C923370);
    if (sub_22C90B15C())
    {
      sub_22C628D18();
      v55 = v107;
      if ((v75 & 1) != (v77 & 1))
      {
        goto LABEL_30;
      }

      v74 = v76;
      v78 = v108;
    }

    else
    {
      v78 = v108;
      v55 = v107;
    }

    v79 = v135;
    if (v75)
    {
      v80 = v131;
      (*(v78 + 40))(v135[7] + *(v78 + 72) * v74, v133, v131);
      (*v106)(v134, v116);
      (*(v78 + 8))(v132, v80);
    }

    else
    {
      v135[(v74 >> 6) + 8] |= 1 << v74;
      v81 = v104;
      v82 = v134;
      v83 = v116;
      (*(v104 + 16))(v79[6] + *(v104 + 72) * v74, v134, v116);
      v84 = v79[7] + *(v78 + 72) * v74;
      v85 = v131;
      v101(v84, v133, v131);
      (*(v81 + 8))(v82, v83);
      (*(v78 + 8))(v132, v85);
      v86 = v79[2];
      v87 = __OFADD__(v86, 1);
      v88 = v86 + 1;
      if (v87)
      {
        goto LABEL_29;
      }

      v79[2] = v88;
    }

    *v70 = v79;
    v57 = v121;
    v56 = v122;
    v58 = v123;
    v54 = v130;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for Interpreter2(uint64_t a1)
{
  result = qword_27D9BF840;
  if (!qword_27D9BF840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C708D70()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v6;
  *v6 = v7;
  v8 = sub_22C6AF0F4(v6);

  return sub_22C6C3FE4(v8, v9, v10, v2, v3, v5, v4);
}

uint64_t sub_22C708E34()
{
  sub_22C36FB38();
  v2 = *(v0 + 32);
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = sub_22C6AF0F4(v3);

  return sub_22C6C3D40(v5, v6, v7, v2);
}

void sub_22C708EF8(void *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C4E0();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_22C7090D0(v6, &qword_27D9BAD60, &qword_22C91D9D0, sub_22C3D7A00, sub_22C838240);
  *a1 = v3;
}

void sub_22C708FE4(void *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BAF80, &unk_22C90FAC0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C510();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_22C7090D0(v6, &qword_27D9BAF80, &unk_22C90FAC0, sub_22C3D7A3C, sub_22C838254);
  *a1 = v3;
}

void sub_22C7090D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 8);
  if (sub_22C90B45C() < v7)
  {
    if (v7 >= -1)
    {
      v8 = v7 / 2;
      if (v7 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(a2, a3);
        v9 = sub_22C90A64C();
        *(v9 + 16) = v8;
      }

      v10 = sub_22C3A5908(a2, a3);
      sub_22C369914(v10);
      sub_22C36BA94();
      sub_22C709444();
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    sub_22C709238();
  }
}

void sub_22C709238()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v56 = sub_22C3A5908(v0, v10);
  v11 = MEMORY[0x28223BE20](v56);
  v55 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v46 - v14);
  MEMORY[0x28223BE20](v13);
  v18 = (&v46 - v17);
  v48 = v7;
  if (v5 != v7)
  {
    v19 = *v3;
    v20 = *(v16 + 72);
    v21 = *v3 + v20 * (v5 - 1);
    v53 = -v20;
    v54 = v19;
    v22 = v9 - v5;
    v47 = v20;
    v23 = v19 + v20 * v5;
    while (2)
    {
      v51 = v21;
      v52 = v5;
      v49 = v23;
      v50 = v22;
      v24 = v22;
      do
      {
        sub_22C380120();
        sub_22C70CF28();
        sub_22C6AEA50(v25, v26, v27, v28);
        sub_22C70CF28();
        sub_22C6AEA50(v29, v30, v31, v32);
        v33 = *v18;
        v34 = *v15;
        v35 = sub_22C38A024();
        sub_22C36DD80(v35, v36);
        sub_22C36DD80(v18, v1);
        if (v33 >= v34)
        {
          break;
        }

        if (!v54)
        {
          __break(1u);
          return;
        }

        sub_22C70CF28();
        sub_22C6AE8BC(v37, v38, v39, v40);
        sub_22C372FA4();
        swift_arrayInitWithTakeFrontToBack();
        sub_22C371510();
        sub_22C70CF28();
        sub_22C6AE8BC(v41, v42, v43, v44);
        v21 += v53;
        v23 += v53;
      }

      while (!__CFADD__(v24++, 1));
      v5 = v52 + 1;
      v21 = v51 + v47;
      v22 = v50 - 1;
      v23 = v49 + v47;
      if (v52 + 1 != v48)
      {
        continue;
      }

      break;
    }
  }

  sub_22C36FB20();
}

void sub_22C709444()
{
  sub_22C370030();
  v134 = v2;
  v135 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v128 = v12;
  sub_22C3A5908(v6, v4);
  sub_22C369824();
  v136 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  v130 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA58();
  v146 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA58();
  v148 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA64();
  v147 = v21;
  v138 = v11;
  v22 = v11[1];
  v149 = v5;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_101:
    v1 = *v128;
    if (!*v128)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v142 = v24;
      v120 = (v24 + 16);
      for (i = *(v24 + 2); i >= 2; *v120 = i)
      {
        if (!*v138)
        {
          goto LABEL_139;
        }

        v121 = &v142[16 * i];
        v122 = *v121;
        v123 = &v120[2 * i];
        v124 = *(v123 + 1);
        sub_22C709CB0(*v138 + *(v136 + 72) * *v121, *v138 + *(v136 + 72) * *v123, *v138 + *(v136 + 72) * v124, v1, v7, v149, v134, v135, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
        if (v0)
        {
          break;
        }

        if (v124 < v122)
        {
          goto LABEL_127;
        }

        if (i - 2 >= *v120)
        {
          goto LABEL_128;
        }

        *v121 = v122;
        *(v121 + 1) = v124;
        v125 = *v120 - i;
        if (*v120 < i)
        {
          goto LABEL_129;
        }

        i = *v120 - 1;
        sub_22C56BFF0(v123 + 16, v125, v123);
      }

LABEL_111:

      sub_22C36FB20();
      return;
    }

LABEL_136:
    v24 = sub_22C56BFD8();
    goto LABEL_103;
  }

  v126 = v9;
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v23++;
    if (v23 < v22)
    {
      v139 = v24;
      v26 = *v138;
      v1 = *(v136 + 72);
      v27 = v25;
      v28 = *v138 + v1 * v23;
      v133 = v22;
      sub_22C6AEA50(v28, v147, v7, v5);
      sub_22C6AEA50(v26 + v1 * v27, v148, v7, v5);
      v131 = *v148;
      v132 = *v147;
      v29 = sub_22C37B220();
      sub_22C36DD80(v29, v30);
      v31 = sub_22C372FA4();
      sub_22C36DD80(v31, v32);
      v33 = v133;
      v127 = v27;
      v34 = v27 + 2;
      v137 = v1;
      v35 = v26 + v1 * (v27 + 2);
      while (1)
      {
        v36 = v34;
        if (++v23 >= v33)
        {
          break;
        }

        v1 = v149;
        sub_22C6AEA50(v35, v147, v7, v149);
        sub_22C6AEA50(v28, v148, v7, v149);
        v37 = *v147;
        v38 = *v148;
        v39 = sub_22C37493C();
        sub_22C36DD80(v39, v40);
        sub_22C36DD80(v147, v7);
        v33 = v133;
        v35 += v137;
        v28 += v137;
        v34 = v36 + 1;
        if (v132 < v131 == v37 >= v38)
        {
          goto LABEL_9;
        }
      }

      v23 = v33;
LABEL_9:
      if (v132 >= v131)
      {
        v24 = v139;
        v5 = v149;
      }

      else
      {
        v25 = v27;
        if (v23 < v27)
        {
          goto LABEL_133;
        }

        if (v27 >= v23)
        {
          v24 = v139;
          v5 = v149;
          goto LABEL_32;
        }

        if (v33 >= v36)
        {
          v41 = v36;
        }

        else
        {
          v41 = v33;
        }

        v42 = v137 * (v41 - 1);
        v43 = v137 * v41;
        v44 = v27 * v137;
        v1 = v23;
        v5 = v149;
        do
        {
          if (v25 != --v1)
          {
            v45 = *v138;
            if (!*v138)
            {
              goto LABEL_140;
            }

            sub_22C6AE8BC(v45 + v44, v130, v7, v149);
            v46 = v44 < v42 || v45 + v44 >= (v45 + v43);
            if (v46)
            {
              sub_22C70CEAC();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != v42)
            {
              sub_22C70CEAC();
              swift_arrayInitWithTakeBackToFront();
            }

            v47 = v45 + v42;
            v5 = v149;
            sub_22C6AE8BC(v130, v47, v7, v149);
          }

          ++v25;
          v42 -= v137;
          v43 -= v137;
          v44 += v137;
        }

        while (v25 < v1);
        v24 = v139;
      }

      v25 = v27;
    }

LABEL_32:
    v48 = v138[1];
    if (v23 < v48)
    {
      if (__OFSUB__(v23, v25))
      {
        goto LABEL_132;
      }

      if (v23 - v25 < v126)
      {
        break;
      }
    }

LABEL_48:
    if (v23 < v25)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C3827B4();
      sub_22C590218(v109, v110, v111, v112);
      v24 = v113;
    }

    v65 = *(v24 + 2);
    v66 = v65 + 1;
    if (v65 >= *(v24 + 3) >> 1)
    {
      sub_22C3827B4();
      sub_22C590218(v114, v115, v116, v117);
      v24 = v118;
    }

    *(v24 + 2) = v66;
    v67 = v24 + 32;
    v68 = &v24[16 * v65 + 32];
    *v68 = v25;
    *(v68 + 1) = v23;
    v145 = *v128;
    if (!*v128)
    {
      goto LABEL_141;
    }

    if (v65)
    {
      v141 = v24;
      while (1)
      {
        v69 = v66 - 1;
        v70 = &v67[16 * v66 - 16];
        v71 = &v24[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v72 = *(v24 + 4);
          v73 = *(v24 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_69:
          if (v75)
          {
            goto LABEL_118;
          }

          v87 = *v71;
          v86 = *(v71 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_121;
          }

          v91 = *(v70 + 1);
          v92 = v91 - *v70;
          if (__OFSUB__(v91, *v70))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v89, v92))
          {
            goto LABEL_126;
          }

          if (v89 + v92 >= v74)
          {
            if (v74 < v92)
            {
              v69 = v66 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v66 < 2)
        {
          goto LABEL_120;
        }

        v94 = *v71;
        v93 = *(v71 + 1);
        v82 = __OFSUB__(v93, v94);
        v89 = v93 - v94;
        v90 = v82;
LABEL_84:
        if (v90)
        {
          goto LABEL_123;
        }

        v96 = *v70;
        v95 = *(v70 + 1);
        v82 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v82)
        {
          goto LABEL_125;
        }

        if (v97 < v89)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v69 - 1 >= v66)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v138)
        {
          goto LABEL_138;
        }

        v101 = v23;
        v102 = &v67[16 * v69 - 16];
        v103 = *v102;
        v1 = v67;
        v104 = v69;
        v105 = &v67[16 * v69];
        v106 = *(v105 + 1);
        sub_22C709CB0(*v138 + *(v136 + 72) * *v102, *v138 + *(v136 + 72) * *v105, *v138 + *(v136 + 72) * v106, v145, v7, v5, v134, v135, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
        if (v0)
        {
          goto LABEL_111;
        }

        if (v106 < v103)
        {
          goto LABEL_113;
        }

        v107 = *(v141 + 2);
        if (v104 > v107)
        {
          goto LABEL_114;
        }

        *v102 = v103;
        *(v102 + 1) = v106;
        if (v104 >= v107)
        {
          goto LABEL_115;
        }

        v66 = v107 - 1;
        sub_22C56BFF0(v105 + 16, v107 - 1 - v104, v105);
        v24 = v141;
        *(v141 + 2) = v107 - 1;
        v108 = v107 > 2;
        v5 = v149;
        v67 = v1;
        v23 = v101;
        if (!v108)
        {
          goto LABEL_98;
        }
      }

      v76 = &v67[16 * v66];
      v77 = *(v76 - 8);
      v78 = *(v76 - 7);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_116;
      }

      v81 = *(v76 - 6);
      v80 = *(v76 - 5);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_117;
      }

      v83 = *(v71 + 1);
      v84 = v83 - *v71;
      if (__OFSUB__(v83, *v71))
      {
        goto LABEL_119;
      }

      v82 = __OFADD__(v74, v84);
      v85 = v74 + v84;
      if (v82)
      {
        goto LABEL_122;
      }

      if (v85 >= v79)
      {
        v99 = *v70;
        v98 = *(v70 + 1);
        v82 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v82)
        {
          goto LABEL_130;
        }

        if (v74 < v100)
        {
          v69 = v66 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v138[1];
    if (v23 >= v22)
    {
      goto LABEL_101;
    }
  }

  v49 = v25 + v126;
  if (__OFADD__(v25, v126))
  {
    goto LABEL_134;
  }

  if (v49 >= v48)
  {
    v49 = v138[1];
  }

  if (v49 < v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v23 == v49)
  {
    goto LABEL_48;
  }

  v140 = v24;
  v50 = *(v136 + 72);
  v51 = *v138 + v50 * (v23 - 1);
  v52 = -v50;
  v127 = v25;
  v53 = v25 - v23;
  v144 = *v138;
  v129 = v50;
  v54 = *v138 + v23 * v50;
  v131 = v49;
LABEL_41:
  v143 = v23;
  v132 = v54;
  v133 = v53;
  v137 = v51;
  while (1)
  {
    v1 = v147;
    sub_22C6AF0E8();
    sub_22C6AEA50(v55, v56, v57, v5);
    sub_22C6AEA50(v51, v148, v7, v149);
    v58 = *v147;
    v59 = *v148;
    v5 = v149;
    sub_22C36DD80(v148, v7);
    v60 = sub_22C36ECB4();
    sub_22C36DD80(v60, v61);
    if (v58 >= v59)
    {
LABEL_46:
      v23 = v143 + 1;
      v51 = v137 + v129;
      v53 = v133 - 1;
      v54 = v132 + v129;
      if (v143 + 1 == v131)
      {
        v23 = v131;
        v24 = v140;
        v25 = v127;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v144)
    {
      break;
    }

    sub_22C6AE8BC(v54, v146, v7, v149);
    sub_22C50B578();
    swift_arrayInitWithTakeFrontToBack();
    sub_22C70CCE8();
    sub_22C6AE8BC(v62, v63, v64, v149);
    v51 += v52;
    v54 += v52;
    v46 = __CFADD__(v53++, 1);
    if (v46)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_22C709CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v20;
  a20 = v21;
  v86 = v22;
  v24 = v23;
  v98 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v94 = v32;
  v95 = v33;
  v93 = sub_22C3A5908(v32, v33);
  v34 = MEMORY[0x28223BE20](v93);
  v96 = (&v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v97 = (&v84 - v36);
  v38 = *(v37 + 72);
  if (!v38)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v39 = v29 - v31 == 0x8000000000000000 && v38 == -1;
  if (v39)
  {
    goto LABEL_61;
  }

  v40 = v27 - v29;
  if (v27 - v29 == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_62;
  }

  v42 = (v29 - v31) / v38;
  a10 = v31;
  v100 = v98;
  v43 = v40 / v38;
  if (v42 >= v40 / v38)
  {
    v59 = sub_22C36FC08();
    v60 = v98;
    v24(v59);
    v61 = v60 + v43 * v38;
    v62 = -v38;
    v63 = v61;
    v88 = -v38;
    v89 = v31;
LABEL_37:
    v64 = v27;
    v85 = v63;
    v90 = v29 + v62;
    v91 = v29;
    while (1)
    {
      if (v61 <= v98)
      {
        a10 = v29;
        v99 = v63;
        goto LABEL_59;
      }

      if (v29 <= v31)
      {
        break;
      }

      v87 = v63;
      v65 = v64 + v62;
      v66 = v61 + v62;
      v67 = v61 + v62;
      v68 = v97;
      v69 = v94;
      v70 = v61;
      v71 = v95;
      sub_22C6AEA50(v67, v97, v94, v95);
      v72 = v96;
      sub_22C44178C();
      sub_22C6AEA50(v73, v74, v75, v71);
      v92 = *v68;
      v76 = *v72;
      sub_22C36DD80(v72, v69);
      v77 = sub_22C36D39C();
      sub_22C36DD80(v77, v78);
      if (v92 < v76)
      {
        v61 = v70;
        v80 = v64 < v91 || v65 >= v91;
        v27 = v65;
        if (v80)
        {
          v29 = v90;
          sub_22C70C95C();
          swift_arrayInitWithTakeFrontToBack();
          v63 = v87;
          v62 = v88;
          v31 = v89;
        }

        else
        {
          v62 = v88;
          v63 = v87;
          v31 = v89;
          v81 = v90;
          v29 = v90;
          if (v64 != v91)
          {
            sub_22C3819EC();
            sub_22C70C95C();
            v83 = v82;
            swift_arrayInitWithTakeBackToFront();
            v29 = v81;
            v63 = v83;
          }
        }

        goto LABEL_37;
      }

      if (v64 < v70 || v65 >= v70)
      {
        sub_22C37FE24();
        sub_22C70C95C();
        swift_arrayInitWithTakeFrontToBack();
        v64 = v65;
        v61 = v66;
        v63 = v66;
        v62 = v88;
        v31 = v89;
        v29 = v91;
      }

      else
      {
        v63 = v66;
        v39 = v70 == v64;
        v64 = v65;
        v61 = v66;
        v62 = v88;
        v31 = v89;
        v29 = v91;
        if (!v39)
        {
          sub_22C37FE24();
          sub_22C70C95C();
          swift_arrayInitWithTakeBackToFront();
          v64 = v65;
          v61 = v66;
          v63 = v66;
        }
      }
    }

    a10 = v29;
    v99 = v85;
  }

  else
  {
    v44 = sub_22C3806B8();
    v45 = v98;
    v24(v44);
    v91 = v27;
    v92 = v45 + v42 * v38;
    v99 = v92;
    while (v98 < v92 && v29 < v27)
    {
      v47 = v38;
      v48 = v97;
      v50 = v94;
      v49 = v95;
      sub_22C6AEA50(v29, v97, v94, v95);
      v51 = v96;
      sub_22C6AEA50(v98, v96, v50, v49);
      v52 = *v48;
      v53 = *v51;
      v54 = sub_22C38644C();
      sub_22C36DD80(v54, v55);
      sub_22C36DD80(v48, v50);
      if (v52 >= v53)
      {
        v38 = v47;
        v57 = v98 + v47;
        if (v31 < v98 || v31 >= v57)
        {
          sub_22C70C95C();
          swift_arrayInitWithTakeFrontToBack();
          v27 = v91;
        }

        else
        {
          v27 = v91;
          if (v31 != v98)
          {
            sub_22C70C95C();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v100 = v57;
        v98 = v57;
      }

      else
      {
        v38 = v47;
        if (v31 < v29 || v31 >= v29 + v47)
        {
          sub_22C372280();
          sub_22C70C95C();
          swift_arrayInitWithTakeFrontToBack();
          v29 += v47;
          v27 = v91;
        }

        else
        {
          v27 = v91;
          if (v31 != v29)
          {
            sub_22C372280();
            sub_22C70C95C();
            swift_arrayInitWithTakeBackToFront();
          }

          v29 += v47;
        }
      }

      v31 += v38;
      a10 = v31;
    }
  }

LABEL_59:
  v86(&a10, &v100, &v99);
  sub_22C36FB20();
}

void *sub_22C70A0F8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    v10 = sub_22C70AF1C(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_22C70A1A0(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C70B470(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_22C70A218(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_22C70BD84(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void sub_22C70A2B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_isUniquelyReferenced_nonNull_native();
  v5 = *a4;
  sub_22C3806B8();
  sub_22C70A844();
  *a4 = v5;
}

uint64_t sub_22C70A328(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
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

void sub_22C70A844()
{
  sub_22C370030();
  v62 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v53 = sub_22C902D4C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v50 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  v13 = v49 - v12;
  v14 = sub_22C3A5908(&qword_27D9BF7A0, &unk_22C923350);
  sub_22C369914(v14);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v17 = v49 - v16;
  sub_22C44178C();
  sub_22C8920A0();
  v54 = v58;
  v55 = v59;
  v56 = v60;
  v57 = v61;
  v51 = v8;
  v52 = (v8 + 32);
  v49[4] = v8 + 8;
  v49[5] = v8 + 16;
  v49[3] = v8 + 40;
  v49[1] = v6;

  v49[0] = v4;

  while (1)
  {
    sub_22C8917D4();
    v18 = sub_22C3A5908(&qword_27D9BF798, &unk_22C923050);
    v19 = sub_22C36CCF8();
    sub_22C36D0A8(v19, v20, v18);
    if (v21)
    {
      sub_22C36A674(v54);

      sub_22C36FB20();
      return;
    }

    v23 = *v17;
    v22 = *(v17 + 1);
    v24 = *v52;
    v25 = v13;
    (*v52)(v13, &v17[*(v18 + 48)], v53);
    v26 = *v62;
    v27 = sub_22C5CA738();
    v29 = sub_22C36E2BC(v27, v28);
    sub_22C369DA4();
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v30;
    if (v26[3] >= v33)
    {
      if ((v2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF470, &qword_22C922730);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88F3D0(v33);
      v35 = sub_22C5CA738();
      v37 = sub_22C36E2BC(v35, v36);
      if ((v34 & 1) != (v38 & 1))
      {
        goto LABEL_16;
      }

      v29 = v37;
    }

    v39 = *v62;
    if (v34)
    {
      v41 = v50;
      v40 = v51;
      v13 = v25;
      v42 = v53;
      (*(v51 + 16))(v50, v25, v53);
      v43 = sub_22C36CA88();
      v44(v43);

      (*(v40 + 40))(v39[7] + *(v40 + 72) * v29, v41, v42);
      v2 = 1;
    }

    else
    {
      sub_22C36ED48(&v39[v29 >> 6]);
      v45 = (v39[6] + 16 * v29);
      *v45 = v23;
      v45[1] = v22;
      v13 = v25;
      v24((v39[7] + *(v51 + 72) * v29), v25, v53);
      v46 = v39[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_15;
      }

      v39[2] = v48;
      v2 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_22C90B54C();
  __break(1u);
}

void *sub_22C70ABE0(uint64_t a1, void *a2, uint64_t a3)
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

      a2 = sub_22C70A0F8(v14, v9, a1, a2, a3);
      MEMORY[0x2318B9880](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v10);
  v11 = v15 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v9, v11);

  v12 = sub_22C70AF1C(v11, v9, a1, a2, a3);
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

void *sub_22C70ADB8(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_22C70A1A0(v8, v4, v2);
      MEMORY[0x2318B9880](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C70B470(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_22C70AF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a5;
  v71 = a4;
  v54[1] = a2;
  v55 = a1;
  v70 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v6 = MEMORY[0x28223BE20](v70);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = v54 - v9;
  v10 = sub_22C908C5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9069BC();
  result = MEMORY[0x28223BE20](v14);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v72 = a3;
  v20 = *(a3 + 64);
  v58 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v56 = 0;
  v57 = (v21 + 63) >> 6;
  v67 = v16 + 2;
  v68 = v8;
  v77 = v16;
  v73 = v16 + 1;
  v69 = v11;
  v64 = (v11 + 8);
  v65 = v11 + 16;
  v62 = v10;
  v63 = v18;
  v61 = v13;
  while (v23)
  {
    v24 = v13;
    v25 = __clz(__rbit64(v23));
    v76 = (v23 - 1) & v23;
LABEL_11:
    v28 = v25 | (v19 << 6);
    v29 = v72;
    v30 = *(v72 + 48) + v77[9] * v28;
    v75 = v77[2];
    v31 = v18;
    v75(v18, v30, v14);
    v32 = *(v29 + 56);
    v33 = *(v69 + 72);
    v60 = v28;
    v34 = *(v69 + 16);
    v35 = v62;
    v34(v24, v32 + v33 * v28, v62);
    v36 = v66;
    v75(v66, v31, v14);
    v37 = v70;
    v38 = v35;
    v34((v36 + *(v70 + 48)), v24, v35);
    v39 = v68;
    sub_22C6AEA50(v36, v68, &qword_27D9BF110, &unk_22C922580);
    v40 = sub_22C9069AC();
    v42 = v41;
    v43 = v14;
    v75 = v77[1];
    (v75)(v39, v14);
    if (v40 == v71 && v42 == v74)
    {

      v49 = *(v37 + 48);
      sub_22C36DD80(v36, &qword_27D9BF110);
      v50 = *v64;
      (*v64)(v39 + v49, v38);
      v13 = v61;
      v50(v61, v38);
      v51 = v63;
      v14 = v43;
      result = (v75)(v63, v43);
      v18 = v51;
      v23 = v76;
    }

    else
    {
      v59 = sub_22C90B4FC();

      v45 = *(v37 + 48);
      sub_22C36DD80(v36, &qword_27D9BF110);
      v46 = *v64;
      (*v64)(v39 + v45, v38);
      v13 = v61;
      v46(v61, v38);
      v47 = v63;
      result = (v75)(v63, v14);
      v18 = v47;
      v23 = v76;
      if ((v59 & 1) == 0)
      {
        *(v55 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
        if (__OFADD__(v56++, 1))
        {
          goto LABEL_22;
        }
      }
    }
  }

  v26 = v19;
  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v57)
    {
      sub_22C8392BC();
      v53 = v52;

      return v53;
    }

    v27 = *(v58 + 8 * v19);
    ++v26;
    if (v27)
    {
      v24 = v13;
      v25 = __clz(__rbit64(v27));
      v76 = (v27 - 1) & v27;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_22C70B470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50[1] = a2;
  v51 = a1;
  v68 = sub_22C9093BC();
  v4 = *(v68 - 8);
  v5 = MEMORY[0x28223BE20](v68);
  v67 = (v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v66 = v50 - v7;
  v65 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
  v8 = MEMORY[0x28223BE20](v65);
  v64 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = v50 - v10;
  v77 = sub_22C908C5C();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22C9069BC();
  MEMORY[0x28223BE20](v75);
  v73 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v15 = 0;
  v69 = a3;
  v16 = *(a3 + 64);
  v54 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v53 = (v17 + 63) >> 6;
  v61 = v11 + 16;
  v62 = v13 + 2;
  v63 = v11;
  v72 = v11 + 8;
  v60 = *MEMORY[0x277D729A0];
  v59 = *MEMORY[0x277D72A58];
  v57 = (v4 + 8);
  v58 = (v4 + 104);
  v74 = v13;
  v56 = v13 + 1;
  while (v19)
  {
    v20 = __clz(__rbit64(v19));
    v71 = (v19 - 1) & v19;
LABEL_11:
    v23 = v20 | (v15 << 6);
    v24 = v69;
    v25 = v73;
    v26 = *(v69 + 48) + v74[9] * v23;
    v70 = v74[2];
    v27 = v75;
    v70(v73, v26, v75);
    v28 = *(v24 + 56);
    v29 = v63;
    v30 = *(v63 + 72);
    v55 = v23;
    v31 = *(v63 + 16);
    v32 = v76;
    v31(v76, v28 + v30 * v23, v77);
    v33 = v78;
    v70(v78, v25, v27);
    v34 = v65;
    v35 = v32;
    v36 = v77;
    v31((v33 + *(v65 + 48)), v35, v77);
    v37 = v64;
    sub_22C6AEA50(v33, v64, &qword_27D9BF110, &unk_22C922580);
    v38 = *(v34 + 48);
    v39 = v66;
    sub_22C90774C();
    v40 = *(v29 + 8);
    v40(v37 + v38, v36);
    v41 = sub_22C90931C();
    v42 = swift_allocBox();
    (*(*(v41 - 8) + 104))(v43, v60, v41);
    v44 = v67;
    v45 = v68;
    *v67 = v42;
    (*v58)(v44, v59, v45);
    sub_22C70C380(&qword_27D9BF1E8, MEMORY[0x277D72A78]);
    LODWORD(v70) = sub_22C90A0BC();
    v46 = *v57;
    (*v57)(v44, v45);
    v46(v39, v45);
    sub_22C36DD80(v78, &qword_27D9BF110);
    v47 = v75;
    v48 = v74[1];
    v48(v37, v75);
    v40(v76, v36);
    v48(v73, v47);
    v19 = v71;
    if ((v70 & 1) == 0)
    {
      *(v51 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      if (__OFADD__(v52++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22C8392BC();
        return;
      }
    }
  }

  v21 = v15;
  while (1)
  {
    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v15 >= v53)
    {
      goto LABEL_15;
    }

    v22 = *(v54 + 8 * v15);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v71 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22C70BAB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v34 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v32 = &v29;
    MEMORY[0x28223BE20](v9);
    v30 = v7;
    v31 = &v29 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_22C88FAFC(0, v7, v31);
    v33 = 0;
    v14 = 0;
    v7 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v8 = v19 | (v14 << 6);
      v35 = *(*(a1 + 48) + 8 * v8);

      v22 = sub_22C6F3A58(&v35, v34);
      if (v3)
      {

        swift_willThrow();
        swift_bridgeObjectRelease_n();
        return v18;
      }

      v23 = v22;

      if (v23)
      {
        *(v31 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_17:
          sub_22C7EC7C4(v31, v30, v33, a1, v10, v11, v12, v13, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
          v18 = v25;
          swift_bridgeObjectRelease_n();
          return v18;
        }
      }
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {
        goto LABEL_17;
      }

      v21 = *(v7 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v34;

  v18 = sub_22C70A218(v27, v7, a1, v28);

  MEMORY[0x2318B9880](v27, -1, -1);
  swift_bridgeObjectRelease_n();
  return v18;
}

uint64_t sub_22C70BD84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v27 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v30[0] = *(*(a3 + 48) + 8 * v15);

    v16 = sub_22C6F3A58(v30, a4);
    if (v4)
    {
    }

    v17 = v16;

    if (v17)
    {
      *(v26 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22C7EC7C4(v26, a2, v27, a3, v19, v20, v21, v22, a2, v26, v27, a4, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6]);
        v24 = v23;

        return v24;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C70BF0C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v6;
  *v6 = v7;
  v8 = sub_22C6AF0F4(v6);

  return sub_22C6CDB0C(v8, v9, v10, v2, v3, v5, v4);
}

uint64_t sub_22C70C0BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C70C1E0()
{
  sub_22C36D5EC();
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_22C382AF4;
  sub_22C63413C();

  return sub_22C6EFA14(v7, v8, v9, v2, v4, v3);
}

uint64_t sub_22C70C29C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C70C2F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C70C380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C70C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v9[48];
  v12 = v9[49];
  *(v10 - 256) = v8;
  *(v10 - 248) = v12;
  v14 = v9[45];
  *(v10 - 240) = v13;
  *(v10 - 232) = v14;
  v15 = v9[41];
  *(v10 - 224) = v9[42];
  *(v10 - 216) = v15;
  v16 = v9[39];
  *(v10 - 208) = v9[40];
  *(v10 - 200) = v16;
  v17 = v9[37];
  *(v10 - 192) = v9[38];
  *(v10 - 184) = v17;
  v18 = v9[35];
  *(v10 - 176) = v9[36];
  *(v10 - 168) = v18;
  v19 = v9[31];
  *(v10 - 160) = v9[34];
  *(v10 - 152) = v19;
  v20 = v9[25];
  *(v10 - 144) = v9[28];
  *(v10 - 136) = v20;
  v21 = v9[19];
  *(v10 - 128) = v9[22];
  *(v10 - 120) = v21;
  v22 = v9[13];
  *(v10 - 112) = v9[16];
  *(v10 - 104) = v22;
}

uint64_t sub_22C70C658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8[51];
  *(v9 - 256) = v8[52];
  *(v9 - 248) = v11;
  v13 = v8[46];
  v12 = v8[47];
  *(v9 - 240) = v8[50];
  *(v9 - 232) = v12;
  v14 = v8[45];
  *(v9 - 224) = v13;
  *(v9 - 216) = v14;
  v15 = v8[41];
  *(v9 - 208) = v8[42];
  *(v9 - 200) = v15;
  v16 = v8[37];
  *(v9 - 192) = v8[38];
  *(v9 - 184) = v16;
  v18 = v8[30];
  v17 = v8[31];
  *(v9 - 176) = v8[34];
  *(v9 - 168) = v17;
  v19 = v8[29];
  *(v9 - 160) = v18;
  *(v9 - 152) = v19;
  v20 = v8[25];
  *(v9 - 144) = v8[26];
  *(v9 - 136) = v20;
  v21 = v8[23];
  *(v9 - 128) = v8[24];
  *(v9 - 120) = v21;
  *(v9 - 112) = v8[22];
}

uint64_t sub_22C70C754()
{
  v2 = *(v0 + 928);

  return sub_22C70C2F0(v2, type metadata accessor for ValueResolver);
}

uint64_t sub_22C70C79C()
{

  return swift_allocObject();
}

uint64_t sub_22C70C874(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_22C90699C();
}

uint64_t sub_22C70C8D8()
{

  return type metadata accessor for Interpreter2(0);
}

uint64_t sub_22C70C9AC()
{
  v3 = *(v0 + 416);
  *(v1 - 120) = *(v0 + 456);
  *(v1 - 112) = v3;
}

uint64_t sub_22C70C9DC(uint64_t a1)
{
  v5 = v2 + *(a1 + 28);
  v6 = v1 + *(v3 + 28);

  return sub_22C378AB0(v5, v6);
}

uint64_t sub_22C70C9FC()
{
}

void sub_22C70CA38()
{
  v2 = *(v0 + 1200);
  *(v1 - 136) = *(v0 + 1176);
  *(v1 - 128) = v2;
}

uint64_t sub_22C70CAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C70CB34()
{
  v6 = *v5;
  *(v4 + 80) = v1;
  *(v4 + 88) = v0;
  *(v4 + 48) = 0;
  *(v4 + 56) = v6;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  sub_22C36C730(v2, v4 + 96);
  sub_22C36FF94(v3);
}

void sub_22C70CB8C()
{
  *(v2 - 120) = *(*(v2 - 104) + 184);
  *(v2 - 112) = v0;
}

uint64_t sub_22C70CC24()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_22C70CC7C(uint64_t a1@<X8>)
{
  *(v3 - 176) = v1;
  *(v3 - 168) = a1;
  v4 = v2[33];
  *(v3 - 160) = v2[34];
  *(v3 - 152) = v4;
  v5 = v2[31];
  *(v3 - 144) = v2[32];
  *(v3 - 136) = v5;
}

void sub_22C70CD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 - 136);

  sub_22C6A5BEC(v32 - 136, v34, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C70CD28(uint64_t a1)
{

  return sub_22C90878C();
}

uint64_t sub_22C70CD4C()
{
}

uint64_t sub_22C70CD70(uint64_t a1)
{

  return sub_22C90878C();
}

uint64_t sub_22C70CD8C(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 312);

  return sub_22C70C2F0(v4, a2);
}

void sub_22C70CDA8(uint64_t a1@<X8>)
{
  *(v2 - 136) = a1;

  sub_22C3B74E0(0, v1, 0);
}

void sub_22C70CDCC(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  sub_22C3B74E0(0, v1, 0);
}

uint64_t static InterpreterError.errorDomain.getter()
{
  swift_beginAccess();

  return sub_22C36BBCC();
}

uint64_t static InterpreterError.errorDomain.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27D9BF868 = a1;
  off_27D9BF870 = a2;
}

uint64_t (*static InterpreterError.errorDomain.modify())(uint64_t a1)
{
  sub_22C36BBCC();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_22C70D0AC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27D9BF870;
  *a1 = qword_27D9BF868;
  a1[1] = v2;
}

uint64_t sub_22C70D0FC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27D9BF868 = v2;
  off_27D9BF870 = v1;
}

uint64_t InterpreterError.errorCode.getter()
{
  type metadata accessor for InterpreterError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  v3 = v2 - v1;
  v4 = sub_22C36BBCC();
  sub_22C70D42C(v4, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 2;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_22C5F889C(v3);
      result = 8;
      break;
    case 2:
      sub_22C5F889C(v3);
      result = 9;
      break;
    case 3:
      sub_22C5F889C(v3);
      result = 10;
      break;
    case 4:
      sub_22C5F889C(v3);
      result = 11;
      break;
    case 5:
      sub_22C5F889C(v3);
      result = 16;
      break;
    case 6:
      v8 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
      sub_22C9093BC();
      sub_22C36985C();
      (*(v9 + 8))(v3 + v8);
      sub_22C90941C();
      sub_22C36985C();
      (*(v10 + 8))(v3);
      result = 19;
      break;
    case 7:
      sub_22C5F889C(v3);
      result = 29;
      break;
    case 8:
      sub_22C5F889C(v3);
      result = 30;
      break;
    case 9:
      sub_22C5F889C(v3);
      result = 31;
      break;
    case 10:
      sub_22C5F889C(v3);
      result = 34;
      break;
    case 11:
      sub_22C5F889C(v3);
      result = 37;
      break;
    case 12:
      sub_22C5F889C(v3);
      result = 39;
      break;
    case 13:
      return result;
    case 14:
      result = 12;
      break;
    case 15:
      result = 14;
      break;
    case 16:
      result = 15;
      break;
    case 17:
      result = 17;
      break;
    case 18:
      result = 18;
      break;
    case 19:
      result = 21;
      break;
    case 20:
      result = 22;
      break;
    case 21:
      result = 23;
      break;
    case 22:
      result = 24;
      break;
    case 23:
      result = 25;
      break;
    case 24:
      result = 27;
      break;
    case 25:
      result = 26;
      break;
    case 26:
      result = 28;
      break;
    case 27:
      result = 32;
      break;
    case 28:
      result = 33;
      break;
    case 29:
      result = 35;
      break;
    case 30:
      result = 36;
      break;
    case 31:
      result = 38;
      break;
    case 32:
      result = 40;
      break;
    case 33:
      result = 41;
      break;
    default:
      sub_22C5F889C(v3);
      result = 1;
      break;
  }

  return result;
}

uint64_t type metadata accessor for InterpreterError(uint64_t a1)
{
  result = qword_27D9BF880;
  if (!qword_27D9BF880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C70D42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterpreterError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InterpreterError.errorUserInfo.getter()
{
  v1 = v0;
  sub_22C90941C();
  sub_22C369824();
  v66 = v3;
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v6 = v5 - v4;
  v68 = sub_22C9093BC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C901FAC();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C36BA0C();
  type metadata accessor for InterpreterError(v20);
  sub_22C36985C();
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v24 = (v23 - v22);
  sub_22C70D42C(v1, v23 - v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v31 = *v24;
      v32 = *(v24 + 1);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      v34 = 0x64496C6F6F74;
      v35 = 0xE600000000000000;
      goto LABEL_11;
    case 2u:
      v31 = *v24;
      v32 = *(v24 + 1);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      v34 = 0x6574656D61726170;
      v35 = 0xEB00000000644972;
LABEL_11:
      *(inited + 32) = v34;
      *(inited + 40) = v35;
      goto LABEL_12;
    case 3u:
      v36 = *v24;
      v37 = *(v24 + 1);
      v38 = *(v24 + 2);
      v39 = *(v24 + 3);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_22C90F870;
      *(v40 + 32) = 0x644965707974;
      *(v40 + 40) = 0xE600000000000000;
      v41 = MEMORY[0x277D837D0];
      *(v40 + 48) = v36;
      *(v40 + 56) = v37;
      *(v40 + 72) = v41;
      *(v40 + 80) = 0x644965736163;
      *(v40 + 120) = v41;
      *(v40 + 88) = 0xE600000000000000;
      *(v40 + 96) = v38;
      *(v40 + 104) = v39;
      goto LABEL_2;
    case 4u:
      (*(v8 + 32))(v12, v24, v68);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_22C90F800;
      *(v26 + 32) = 0x65756C6176;
      *(v26 + 40) = 0xE500000000000000;
      v27 = sub_22C90938C();
      *(v26 + 72) = MEMORY[0x277D837D0];
      *(v26 + 48) = v27;
      *(v26 + 56) = v28;
      sub_22C909F0C();
      v29 = sub_22C70EB90();
      v30(v29);
      return v1;
    case 5u:
    case 0xBu:
      sub_22C5F889C(v24);
      goto LABEL_2;
    case 6u:
      v55 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
      (*(v66 + 32))(v6, v24, v67);
      (*(v8 + 32))(v12, &v24[v55], v68);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v56 = swift_initStackObject();
      *(v56 + 16) = xmmword_22C90F870;
      *(v56 + 32) = 1701869940;
      *(v56 + 40) = 0xE400000000000000;
      v57 = sub_22C9093EC();
      v1 = MEMORY[0x277D837D0];
      *(v56 + 48) = v57;
      *(v56 + 56) = v58;
      *(v56 + 72) = v1;
      *(v56 + 80) = 0x65756C6176;
      *(v56 + 88) = 0xE500000000000000;
      v59 = sub_22C90938C();
      *(v56 + 120) = v1;
      *(v56 + 96) = v59;
      *(v56 + 104) = v60;
      sub_22C909F0C();
      v61 = sub_22C70EB90();
      v62(v61);
      (*(v66 + 8))(v6, v67);
      return v1;
    case 7u:
    case 8u:
      v63 = sub_22C36B474();
      v64(v63);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_22C90F800;
      sub_22C70EB54();
      goto LABEL_18;
    case 9u:
      v49 = sub_22C36B474();
      v50(v49);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_22C90F800;
      sub_22C70EB54();
      v48 = v51 | 2;
      goto LABEL_18;
    case 0xAu:
      v52 = sub_22C36B474();
      v53(v52);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_22C90F800;
      sub_22C70EB54();
      v48 = v54 + 18;
      goto LABEL_18;
    case 0xCu:
      v31 = *v24;
      v32 = *(v24 + 1);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      *(inited + 32) = 0xD00000000000001BLL;
      *(inited + 40) = 0x800000022C933B90;
LABEL_12:
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v31;
      *(inited + 56) = v32;
      goto LABEL_2;
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
LABEL_2:
      v1 = sub_22C909F0C();
      break;
    default:
      v42 = sub_22C36B474();
      v43(v42);
      sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_22C90F800;
      sub_22C70EB54();
      v48 = v47 - 1;
LABEL_18:
      *(v45 + 32) = v48;
      *(v45 + 40) = v46;
      v65 = sub_22C901F9C();
      *(v44 + 72) = MEMORY[0x277D84CC0];
      *(v44 + 48) = v65;
      v1 = sub_22C909F0C();
      (*(v15 + 8))(v19, v13);
      break;
  }

  return v1;
}

uint64_t static InterpreterError.== infix(_:_:)(char *a1, uint64_t *a2)
{
  v166 = a1;
  v167 = a2;
  sub_22C90941C();
  sub_22C369824();
  v160 = v3;
  v161 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v159 = v5 - v4;
  sub_22C36BA0C();
  sub_22C9093BC();
  sub_22C369824();
  v162 = v7;
  v163 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v151 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA58();
  v158 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  v150 = &v143 - v12;
  sub_22C36BA0C();
  sub_22C901FAC();
  sub_22C369824();
  v164 = v13;
  v165 = v14;
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  v149 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA58();
  v148 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA58();
  v147 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v146 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  v145 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  v144 = &v143 - v25;
  v26 = sub_22C36BA0C();
  type metadata accessor for InterpreterError(v26);
  sub_22C36985C();
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  v152 = v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  v157 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  v156 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  v154 = v34;
  sub_22C369930();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  v153 = v36;
  sub_22C369930();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v143 - v39;
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  v155 = v41;
  sub_22C369930();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = (&v143 - v44);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v143 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = (&v143 - v50);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v143 - v53);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = (&v143 - v56);
  MEMORY[0x28223BE20](v55);
  v59 = &v143 - v58;
  v60 = sub_22C3A5908(&qword_27D9BF878, &qword_22C923418);
  v61 = MEMORY[0x28223BE20](v60 - 8);
  v63 = &v143 - v62;
  v64 = &v143 + *(v61 + 56) - v62;
  sub_22C70D42C(v166, &v143 - v62);
  v166 = v64;
  sub_22C70D42C(v167, v64);
  v167 = v63;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v97 = sub_22C38BF84();
      sub_22C70D42C(v97, v57);
      v81 = *v57;
      v80 = v57[1];
      if (sub_22C387440() != 1)
      {
        goto LABEL_75;
      }

      goto LABEL_31;
    case 2u:
      v83 = sub_22C38BF84();
      sub_22C70D42C(v83, v54);
      v81 = *v54;
      v80 = v54[1];
      if (sub_22C387440() != 2)
      {
        goto LABEL_75;
      }

      goto LABEL_31;
    case 3u:
      v84 = sub_22C38BF84();
      sub_22C70D42C(v84, v51);
      v86 = *v51;
      v85 = v51[1];
      v88 = v51[2];
      v87 = v51[3];
      v89 = v166;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

LABEL_75:

LABEL_76:
        sub_22C70E7DC(v45);
        goto LABEL_77;
      }

      v90 = *v89;
      v91 = *(v89 + 1);
      v93 = *(v89 + 2);
      v92 = *(v89 + 3);
      if (v86 == v90 && v85 == v91)
      {
      }

      else
      {
        sub_22C3806B8();
        v95 = sub_22C90B4FC();

        if ((v95 & 1) == 0)
        {

          goto LABEL_92;
        }
      }

      if (v88 == v93 && v87 == v92)
      {
LABEL_72:

LABEL_70:
        v108 = v45;
        goto LABEL_71;
      }

      v141 = sub_22C90B4FC();

      if (v141)
      {
        goto LABEL_70;
      }

LABEL_92:
      v108 = v45;
LABEL_93:
      sub_22C5F889C(v108);
LABEL_77:
      v76 = 0;
      return v76 & 1;
    case 4u:
      v72 = sub_22C38BF84();
      sub_22C70D42C(v72, v48);
      if (sub_22C388900() == 4)
      {
        v74 = v162;
        v73 = v163;
        v75 = v150;
        (*(v162 + 32))(v150, v64, v163);
        v76 = sub_22C9093AC();
        v77 = *(v74 + 8);
        v77(v75, v73);
        v77(v48, v73);
        goto LABEL_82;
      }

      (*(v162 + 8))(v48, v163);
      goto LABEL_76;
    case 5u:
      sub_22C70D42C(v167, v45);
      v103 = *v45;
      v102 = v45[1];
      if (sub_22C387440() != 5)
      {

        v45 = v167;
        goto LABEL_76;
      }

      v104 = *v57;
      v105 = v57[1];
      if (v103 == v104 && v102 == v105)
      {

        v108 = v167;
      }

      else
      {
        sub_22C36BBCC();
        v107 = sub_22C90B4FC();

        v108 = v167;
        if ((v107 & 1) == 0)
        {
          goto LABEL_93;
        }
      }

LABEL_71:
      sub_22C5F889C(v108);
      v76 = 1;
      return v76 & 1;
    case 6u:
      v109 = sub_22C38BF84();
      v110 = v155;
      sub_22C70D42C(v109, v155);
      v111 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
      v112 = v166;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        (*(v162 + 8))(v110 + v111, v163);
        (*(v160 + 8))(v110, v161);
        goto LABEL_76;
      }

      v113 = v160;
      (*(v160 + 32))(v159, v112, v161);
      v114 = v162;
      v115 = v163;
      v116 = *(v162 + 32);
      v116(v158, v110 + v111, v163);
      v117 = v112 + v111;
      v118 = v151;
      v116(v151, v117, v115);
      v119 = sub_22C90940C();
      v120 = *(v113 + 8);
      v121 = v110;
      v122 = v161;
      v120(v121, v161);
      if (v119)
      {
        v123 = v158;
        v76 = sub_22C9093AC();
        v124 = *(v114 + 8);
        v124(v118, v115);
        v124(v123, v115);
        v120(v159, v122);
        goto LABEL_82;
      }

      v142 = *(v114 + 8);
      v142(v118, v115);
      v142(v158, v115);
      v120(v159, v122);
      goto LABEL_92;
    case 7u:
      v96 = sub_22C38BF84();
      sub_22C70D42C(v96, v40);
      if (sub_22C388900() != 7)
      {
        goto LABEL_58;
      }

      sub_22C70EB68();
      v71 = v145;
      goto LABEL_55;
    case 8u:
      v128 = sub_22C38BF84();
      v40 = v153;
      sub_22C70D42C(v128, v153);
      v129 = v166;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_58;
      }

      v131 = v164;
      v130 = v165;
      v132 = v146;
      (*(v165 + 32))(v146, v129, v164);
      v76 = sub_22C901F6C();
      v133 = *(v130 + 8);
      v133(v132, v131);
      v134 = sub_22C3806B8();
      (v133)(v134);
      goto LABEL_82;
    case 9u:
      v82 = sub_22C38BF84();
      v40 = v154;
      sub_22C70D42C(v82, v154);
      if (sub_22C388900() != 9)
      {
        goto LABEL_58;
      }

      sub_22C70EB68();
      v71 = v147;
      goto LABEL_55;
    case 0xAu:
      v125 = sub_22C38BF84();
      v40 = v156;
      sub_22C70D42C(v125, v156);
      if (sub_22C388900() != 10)
      {
        goto LABEL_58;
      }

      sub_22C70EB68();
      v71 = v148;
      goto LABEL_55;
    case 0xBu:
      v69 = sub_22C38BF84();
      v40 = v157;
      sub_22C70D42C(v69, v157);
      if (sub_22C388900() != 11)
      {
LABEL_58:
        v66 = *(v165 + 8);
        v67 = v40;
        goto LABEL_59;
      }

      sub_22C70EB68();
      v71 = v149;
LABEL_55:
      v126 = v164;
      v70(v71, v64, v164);
      sub_22C3806B8();
      v76 = sub_22C901F6C();
      v127 = *(v59 + 1);
      v127(v71, v126);
      v127(v40, v126);
      goto LABEL_82;
    case 0xCu:
      v78 = sub_22C38BF84();
      v79 = v152;
      sub_22C70D42C(v78, v152);
      v81 = *v79;
      v80 = v79[1];
      if (sub_22C387440() != 12)
      {
        goto LABEL_75;
      }

LABEL_31:
      v98 = *v57;
      v99 = v57[1];
      if (v81 == v98 && v80 == v99)
      {
        goto LABEL_72;
      }

      sub_22C36BBCC();
      v101 = sub_22C90B4FC();

      if ((v101 & 1) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_70;
    case 0xDu:
      v68 = sub_22C70EB78() == 13;
      goto LABEL_68;
    case 0xEu:
      v68 = sub_22C70EB78() == 14;
      goto LABEL_68;
    case 0xFu:
      v68 = sub_22C70EB78() == 15;
      goto LABEL_68;
    case 0x10u:
      v68 = sub_22C70EB78() == 16;
      goto LABEL_68;
    case 0x11u:
      v68 = sub_22C70EB78() == 17;
      goto LABEL_68;
    case 0x12u:
      v68 = sub_22C70EB78() == 18;
      goto LABEL_68;
    case 0x13u:
      v68 = sub_22C70EB78() == 19;
      goto LABEL_68;
    case 0x14u:
      v68 = sub_22C70EB78() == 20;
      goto LABEL_68;
    case 0x15u:
      v68 = sub_22C70EB78() == 21;
      goto LABEL_68;
    case 0x16u:
      v68 = sub_22C70EB78() == 22;
      goto LABEL_68;
    case 0x17u:
      v68 = sub_22C70EB78() == 23;
      goto LABEL_68;
    case 0x18u:
      v68 = sub_22C70EB78() == 24;
      goto LABEL_68;
    case 0x19u:
      v68 = sub_22C70EB78() == 25;
      goto LABEL_68;
    case 0x1Au:
      v68 = sub_22C70EB78() == 26;
      goto LABEL_68;
    case 0x1Bu:
      v68 = sub_22C70EB78() == 27;
      goto LABEL_68;
    case 0x1Cu:
      v68 = sub_22C70EB78() == 28;
      goto LABEL_68;
    case 0x1Du:
      v68 = sub_22C70EB78() == 29;
      goto LABEL_68;
    case 0x1Eu:
      v68 = sub_22C70EB78() == 30;
      goto LABEL_68;
    case 0x1Fu:
      v68 = sub_22C70EB78() == 31;
      goto LABEL_68;
    case 0x20u:
      v68 = sub_22C70EB78() == 32;
      goto LABEL_68;
    case 0x21u:
      v68 = sub_22C70EB78() == 33;
LABEL_68:
      v45 = v167;
      if (!v68)
      {
        goto LABEL_76;
      }

      goto LABEL_70;
    default:
      v65 = sub_22C38BF84();
      sub_22C70D42C(v65, v59);
      if (sub_22C388900())
      {
        v66 = *(v165 + 8);
        v67 = v59;
LABEL_59:
        v66(v67, v164);
        goto LABEL_76;
      }

      v137 = v164;
      v136 = v165;
      (*(v165 + 32))(v144, v64, v164);
      v76 = sub_22C901F6C();
      v138 = *(v136 + 8);
      v139 = sub_22C3806B8();
      v138(v139);
      (v138)(v59, v137);
LABEL_82:
      sub_22C5F889C(v45);
      return v76 & 1;
  }
}

uint64_t sub_22C70E7DC(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BF878, &qword_22C923418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C70E844(uint64_t a1)
{
  v2 = sub_22C70EB10(&qword_27D9BF8A8, &protocol conformance descriptor for InterpreterError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C70E89C(uint64_t a1)
{
  v2 = sub_22C70EB10(&qword_27D9BF8A8, &protocol conformance descriptor for InterpreterError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C70E938(uint64_t a1)
{
  v1 = sub_22C901FAC();
  if (v2 <= 0x3F)
  {
    v3 = sub_22C70EA18();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_22C70EA40();
    if (v5 > 0x3F)
    {
      return v3;
    }

    v3 = sub_22C9093BC();
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_22C70EA9C(319);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_22C70EA18()
{
  result = qword_27D9BF890;
  if (!qword_27D9BF890)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D9BF890);
  }

  return result;
}

void sub_22C70EA40()
{
  if (!qword_27D9BF898)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BF898);
    }
  }
}

void sub_22C70EA9C(uint64_t a1)
{
  if (!qword_27D9BF8A0)
  {
    sub_22C90941C();
    sub_22C9093BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BF8A0);
    }
  }
}

uint64_t sub_22C70EB10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InterpreterError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C70EB78()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_22C70EBA4()
{
  sub_22C36BA7C();
  v33 = v0;
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BD7E0, &qword_22C9192F0);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  v7 = sub_22C9094EC();
  sub_22C369824();
  v31 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = v30 - v14;
  sub_22C51E290();
  sub_22C70F1D0();
  v17 = v16;
  sub_22C51E290();
  sub_22C70F408();
  sub_22C51E290();
  sub_22C70F644();
  v19 = v18;
  sub_22C51E290();
  v32 = v2;
  sub_22C710384();
  sub_22C36D0A8(v6, 1, v7);
  if (v24)
  {
    sub_22C376B84(v6, &qword_27D9BD7E0, &qword_22C9192F0);
  }

  else
  {
    v30[1] = v19;
    LODWORD(v33) = v17;
    v20 = *(v31 + 32);
    v20(v15, v6, v7);
    sub_22C51E290();
    sub_22C710DF4();
    v20(v12, v15, v7);
    v21 = sub_22C36A724();
    v23 = v22(v21);
    v24 = v23 == *MEMORY[0x277D72CB8] || v23 == *MEMORY[0x277D72C70];
    if (!v24 && v23 != *MEMORY[0x277D72CA8] && v23 != *MEMORY[0x277D72D00] && v23 != *MEMORY[0x277D72CD8] && v23 != *MEMORY[0x277D72C98])
    {
      v28 = sub_22C36A724();
      v29(v28);
    }
  }

  sub_22C36CC48();
}

void sub_22C70EE70()
{
  sub_22C36BA7C();
  v1 = sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v3 = sub_22C9093BC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C370654();
  sub_22C712EB8();
  v7 = sub_22C90905C();
  v8 = 0;
  v12 = *(v7 + 16);
  while (1)
  {
    if (v12 == v8)
    {
LABEL_7:

      sub_22C36CC48();
      return;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    (*(v5 + 16))(v0, v7 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v3);
    sub_22C90935C();
    if (qword_27D9BA708 != -1)
    {
      swift_once();
    }

    sub_22C37AA60(v1, qword_27D9BF8B0);
    sub_22C713EB4(&qword_28142FA78, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
    v9 = sub_22C90A0BC();
    v10 = sub_22C36A724();
    v11(v10);
    (*(v5 + 8))(v0, v3);
    ++v8;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_22C70F0F4()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, qword_27D9BF8B0);
  v1 = sub_22C37AA60(v0, qword_27D9BF8B0);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x800000022C92EB40;
  v2[4] = 0xD000000000000012;
  v2[5] = 0x800000022C92EB70;
  *v1 = v2;
  v3 = *MEMORY[0x277D72D28];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

void sub_22C70F1D0()
{
  sub_22C36BA7C();
  v2 = sub_22C9063DC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C3A5908(&qword_27D9BF8C8, &qword_22C923558);
  sub_22C369914(v9);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C37FDDC();
  v11 = sub_22C9067CC();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  sub_22C370654();
  sub_22C36A204();
  sub_22C70FC3C();
  sub_22C36D0A8(v0, 1, v11);
  if (v15)
  {
    sub_22C376B84(v0, &qword_27D9BF8C8, &qword_22C923558);
  }

  else
  {
    v16 = sub_22C374EF8();
    v17(v16);
    v18 = sub_22C712A4C();
    (*(v13 + 8))(v1, v11);
    if (v18)
    {
      goto LABEL_8;
    }
  }

  sub_22C903F8C();
  v19 = sub_22C9063CC();
  sub_22C90AACC();
  sub_22C383098();
  if (os_log_type_enabled(v19, v20))
  {
    *sub_22C36D240() = 0;
    sub_22C377620(&dword_22C366000, v21, v22, "Provided statementId does not contain a search request with an on-screen reference parameter");
    sub_22C36D69C();
  }

  (*(v4 + 8))(v8, v2);
LABEL_8:
  sub_22C36CC48();
}

void sub_22C70F408()
{
  sub_22C36BA7C();
  v2 = sub_22C9063DC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C3A5908(&qword_27D9BF8C8, &qword_22C923558);
  sub_22C369914(v9);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C37FDDC();
  v11 = sub_22C9067CC();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  sub_22C370654();
  sub_22C36A204();
  sub_22C70FC3C();
  sub_22C36D0A8(v0, 1, v11);
  if (v15)
  {
    sub_22C376B84(v0, &qword_27D9BF8C8, &qword_22C923558);
  }

  else
  {
    v16 = sub_22C374EF8();
    v17(v16);
    v18 = sub_22C7116FC();
    (*(v13 + 8))(v1, v11);
    if (v18 != 2)
    {
      goto LABEL_8;
    }
  }

  sub_22C903F8C();
  v19 = sub_22C9063CC();
  sub_22C90AABC();
  sub_22C383098();
  if (os_log_type_enabled(v19, v20))
  {
    *sub_22C36D240() = 0;
    sub_22C377620(&dword_22C366000, v21, v22, "provided statementId is not a part of a hydration context request");
    sub_22C36D69C();
  }

  (*(v4 + 8))(v8, v2);
LABEL_8:
  sub_22C36CC48();
}

void sub_22C70F644()
{
  sub_22C36BA7C();
  v1 = sub_22C3A5908(&qword_27D9BF8C8, &qword_22C923558);
  sub_22C369914(v1);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  v55 = &v50 - v3;
  sub_22C36BA0C();
  sub_22C9067CC();
  sub_22C369824();
  v56 = v5;
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v53 = v7 - v6;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v58 = v9;
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v54 = v10 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v51 = &v50 - v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v52 = v15;
  sub_22C36BA0C();
  v16 = sub_22C90952C();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v22 = v21 - v20;
  v23 = sub_22C3A5908(&qword_27D9BF8D0, &unk_22C923560);
  sub_22C369914(v23);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  v27 = sub_22C90681C();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  sub_22C37FDDC();
  sub_22C70FC3C();
  sub_22C36D0A8(v26, 1, v27);
  if (v31)
  {
    sub_22C376B84(v26, &qword_27D9BF8D0, &unk_22C923560);
  }

  else
  {
    (*(v29 + 32))(v0, v26, v27);
    sub_22C90680C();
    if ((*(v18 + 88))(v22, v16) == *MEMORY[0x277D72D28])
    {
      (*(v18 + 8))(v22, v16);
      v32 = v52;
      sub_22C903F8C();
      v33 = sub_22C9063CC();
      v34 = sub_22C90AABC();
      if (os_log_type_enabled(v33, v34))
      {
        *sub_22C36D240() = 0;
        sub_22C376864(&dword_22C366000, v35, v36, "Implicit AER search");
        sub_22C3699EC();
      }

      (*(v58 + 8))(v32, v59);
      (*(v29 + 8))(v0, v27);
      goto LABEL_20;
    }

    (*(v29 + 8))(v0, v27);
    (*(v18 + 8))(v22, v16);
  }

  sub_22C36A204();
  v37 = v55;
  sub_22C70FC3C();
  v38 = v57;
  sub_22C36D0A8(v37, 1, v57);
  v39 = v56;
  if (v31)
  {
    sub_22C376B84(v37, &qword_27D9BF8C8, &qword_22C923558);
LABEL_14:
    v41 = v54;
    sub_22C903F8C();
    v42 = sub_22C9063CC();
    v43 = sub_22C90AABC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = sub_22C36D240();
      *v44 = 0;
      _os_log_impl(&dword_22C366000, v42, v43, "Found no valid AER request", v44, 2u);
      sub_22C3699EC();
    }

    (*(v58 + 8))(v41, v59);
    goto LABEL_20;
  }

  v40 = v53;
  (*(v56 + 32))(v53, v37, v38);
  if (sub_22C71113C() == 2)
  {
    (*(v39 + 8))(v40, v38);
    goto LABEL_14;
  }

  v45 = v51;
  sub_22C903F8C();
  v46 = sub_22C9063CC();
  v47 = sub_22C90AABC();
  if (os_log_type_enabled(v46, v47))
  {
    *sub_22C36D240() = 0;
    sub_22C376864(&dword_22C366000, v48, v49, "Explicit AER search");
    sub_22C3699EC();
  }

  (*(v58 + 8))(v45, v59);
  (*(v39 + 8))(v40, v38);
LABEL_20:
  sub_22C36CC48();
}

void sub_22C70FC3C()
{
  sub_22C36BA7C();
  v90 = v1;
  v98 = v2;
  v99 = v3;
  v86 = v4;
  v6 = v5;
  sub_22C9063DC();
  sub_22C369824();
  v94 = v8;
  v95 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v93 = v10 - v9;
  sub_22C36BA0C();
  v85 = sub_22C90682C();
  sub_22C369824();
  v83 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v84 = v14 - v13;
  sub_22C36BA0C();
  sub_22C901FAC();
  sub_22C369824();
  v96 = v16;
  v97 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v92 = v17 - v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  v87 = v20;
  v21 = sub_22C3A5908(&qword_27D9BF740, &unk_22C923A40);
  sub_22C369914(v21);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  v89 = &v80 - v23;
  sub_22C36BA0C();
  v88 = sub_22C908CEC();
  sub_22C369824();
  v82 = v24;
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v81 = v27 - v26;
  sub_22C36BA0C();
  sub_22C90654C();
  sub_22C369824();
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v29 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v29);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  sub_22C370654();
  v31 = sub_22C9070DC();
  sub_22C369824();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v37 = v36 - v35;
  v91 = v6;
  sub_22C646D68();
  sub_22C36D0A8(v0, 1, v31);
  if (v38)
  {
    sub_22C376B84(v0, &qword_27D9BAA18, &qword_22C911C40);
LABEL_9:
    v46 = v96;
    v45 = v97;
    goto LABEL_10;
  }

  (*(v33 + 32))(v37, v0, v31);
  sub_22C90702C();
  v39 = sub_22C37F370();
  if (v40(v39) != *MEMORY[0x277D1DA48])
  {
    v50 = sub_22C38745C();
    v51(v50);
    v52 = sub_22C37F370();
    v53(v52);
    goto LABEL_9;
  }

  v41 = sub_22C37F370();
  v42(v41);
  v43 = v87;
  sub_22C9068FC();
  v44 = v89;
  sub_22C3A97AC();
  v46 = v96;
  v45 = v97;
  (*(v96 + 8))(v43, v97);
  v47 = v88;
  sub_22C36D0A8(v44, 1, v88);
  if (v38)
  {
    v48 = sub_22C38745C();
    v49(v48);
    sub_22C376B84(v44, &qword_27D9BF740, &unk_22C923A40);
  }

  else
  {
    v67 = v81;
    v68 = v82;
    (*(v82 + 32))(v81, v44, v47);
    v69 = v84;
    sub_22C908CCC();
    (*(v68 + 8))(v67, v47);
    v70 = sub_22C38745C();
    v71(v70);
    v72 = (*(v83 + 88))(v69, v85);
    if (v72 == *v86)
    {
      v73 = sub_22C36A724();
      v74(v73);
      v75 = v98(0);
      sub_22C36BBA8();
      v77 = v99;
      (*(v76 + 32))(v99, v69, v75);
      v65 = v77;
      v66 = 0;
      v64 = v75;
      goto LABEL_14;
    }

    v78 = sub_22C36A724();
    v79(v78);
  }

LABEL_10:
  v54 = v93;
  sub_22C903F8C();
  v55 = v92;
  (*(v46 + 16))(v92, v91, v45);
  v56 = sub_22C9063CC();
  sub_22C90AABC();
  sub_22C383098();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v100 = v59;
    *v58 = 136315138;
    sub_22C713EB4(&qword_27D9BAA48, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
    v60 = sub_22C90B47C();
    v62 = v61;
    (*(v46 + 8))(v55, v45);
    v63 = sub_22C36F9F4(v60, v62, &v100);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_22C366000, v56, v33, v90, v58, 0xCu);
    sub_22C36FF94(v59);
    sub_22C36D69C();
    sub_22C3699EC();
  }

  else
  {

    (*(v46 + 8))(v55, v45);
  }

  (*(v94 + 8))(v54, v95);
  v64 = v98(0);
  v65 = v99;
  v66 = 1;
LABEL_14:
  sub_22C36C640(v65, v66, 1, v64);
  sub_22C36CC48();
}

void sub_22C710384()
{
  sub_22C36BA7C();
  v121 = v1;
  v122 = v0;
  v3 = v2;
  sub_22C907D6C();
  sub_22C369824();
  v110 = v5;
  v111 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v109 = v7 - v6;
  sub_22C36BA0C();
  sub_22C90952C();
  sub_22C369824();
  v112 = v9;
  v113 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v120 = v10 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v119 = v13;
  sub_22C36BA0C();
  v108 = sub_22C90941C();
  sub_22C369824();
  v107 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v106 = v17 - v16;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v117 = v19;
  v118 = v18;
  MEMORY[0x28223BE20](v18);
  sub_22C369ABC();
  v114 = v20 - v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA64();
  v115 = v23;
  v24 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  sub_22C369914(v24);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v25);
  v27 = &v106 - v26;
  v28 = sub_22C90769C();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v34 = v33 - v32;
  v35 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v36 = sub_22C369914(v35);
  MEMORY[0x28223BE20](v36);
  sub_22C369ABC();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v106 - v41;
  v43 = sub_22C908ABC();
  sub_22C369824();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  v49 = v48 - v47;
  v116 = v3;
  sub_22C907D5C();
  sub_22C908ADC();
  v50 = v34;
  v51 = v43;
  (*(v30 + 8))(v50, v28);
  v52 = sub_22C37F370();
  sub_22C711034(v52, v53);
  sub_22C36D0A8(v39, 1, v43);
  if (v68)
  {
    sub_22C376B84(v39, &qword_27D9BC0B0, &unk_22C912AD0);
    sub_22C90735C();
    sub_22C3A5F00();
    v54 = swift_allocError();
    v55 = v124;
    v56 = v123[1];
    *v57 = v123[0];
    *(v57 + 16) = v56;
    *(v57 + 32) = v55;
    swift_willThrow();
    sub_22C376B84(v42, &qword_27D9BC0B0, &unk_22C912AD0);
    v58 = v115;
    sub_22C903F8C();
    v59 = v54;
    v60 = sub_22C9063CC();
    v61 = sub_22C90AACC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      v64 = v54;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v65;
      *v63 = v65;
      _os_log_impl(&dword_22C366000, v60, v61, "Unable to resolve context into valid tool to check parameters: %@", v62, 0xCu);
      sub_22C376B84(v63, &qword_27D9BB158, qword_22C910FD0);
      sub_22C3699EC();
      sub_22C36D69C();
    }

    else
    {
    }

    (*(v117 + 8))(v58, v118);
LABEL_22:
    v100 = sub_22C9094EC();
    v101 = v121;
    goto LABEL_25;
  }

  sub_22C376B84(v42, &qword_27D9BC0B0, &unk_22C912AD0);
  (*(v45 + 32))(v49, v39, v43);
  v66 = sub_22C908AAC();
  MEMORY[0x28223BE20](v66);
  *(&v106 - 2) = v116;
  sub_22C6B0844(sub_22C713E94, (&v106 - 4), v66);

  v67 = sub_22C90981C();
  v69 = sub_22C36D0A8(v27, 1, v67);
  v70 = v45;
  if (v68)
  {
    sub_22C376B84(v27, &qword_27D9BC0C0, &unk_22C911FA0);
    v71 = v114;
    sub_22C903F8C();
    v73 = v109;
    v72 = v110;
    v74 = v111;
    (*(v110 + 16))(v109, v116, v111);
    v75 = sub_22C9063CC();
    sub_22C90AABC();
    sub_22C383098();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v115 = v49;
      v79 = v78;
      *&v123[0] = v78;
      *v77 = 136315138;
      v80 = sub_22C907D2C();
      v81 = v73;
      v83 = v82;
      (*(v72 + 8))(v81, v74);
      v84 = sub_22C36F9F4(v80, v83, v123);

      *(v77 + 4) = v84;
      _os_log_impl(&dword_22C366000, v75, v49, "Unable to extract typeIdentifiers from parameter: %s", v77, 0xCu);
      sub_22C36FF94(v79);
      sub_22C36D69C();
      sub_22C3699EC();

      (*(v117 + 8))(v114, v118);
      (*(v70 + 8))(v115, v51);
    }

    else
    {

      (*(v72 + 8))(v73, v74);
      (*(v117 + 8))(v71, v118);
      (*(v70 + 8))(v49, v43);
    }

    v102 = v121;
    v100 = sub_22C9094EC();
    v101 = v102;
LABEL_25:
    sub_22C36C640(v101, 1, 1, v100);
LABEL_26:
    sub_22C36CC48();
    return;
  }

  v114 = v43;
  v115 = v49;
  v111 = v45;
  v85 = v106;
  MEMORY[0x2318B6CE0](v69);
  sub_22C36BBA8();
  (*(v86 + 8))(v27, v67);
  v87 = sub_22C9093DC();
  (*(v107 + 8))(v85, v108);
  v88 = 0;
  v89 = 1 << *(v87 + 32);
  v90 = -1;
  if (v89 < 64)
  {
    v90 = ~(-1 << v89);
  }

  v91 = v90 & *(v87 + 56);
  v92 = (v89 + 63) >> 6;
  v93 = v112;
  v94 = v113;
  v122 = v112 + 16;
  v117 = v112 + 88;
  v118 = v112 + 32;
  LODWORD(v116) = *MEMORY[0x277D72D50];
  v95 = (v112 + 8);
  v97 = v119;
  v96 = v120;
  if (v91)
  {
    while (1)
    {
      v98 = v88;
LABEL_18:
      (*(v93 + 16))(v97, *(v87 + 48) + *(v93 + 72) * (__clz(__rbit64(v91)) | (v98 << 6)), v94);
      (*(v93 + 32))(v96, v97, v94);
      v99 = (*(v93 + 88))(v96, v94);
      if (v99 == v116)
      {
        break;
      }

      v91 &= v91 - 1;
      (*v95)(v96, v94);
      v88 = v98;
      if (!v91)
      {
        goto LABEL_15;
      }
    }

    (*(v111 + 8))(v115, v114);

    (*(v93 + 96))(v96, v94);
    v103 = sub_22C9094EC();
    swift_projectBox();
    sub_22C36BBA8();
    v105 = v121;
    (*(v104 + 16))(v121);
    sub_22C36C640(v105, 0, 1, v103);

    goto LABEL_26;
  }

LABEL_15:
  while (1)
  {
    v98 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

    if (v98 >= v92)
    {
      (*(v111 + 8))(v115, v114);

      goto LABEL_22;
    }

    v91 = *(v87 + 56 + 8 * v98);
    ++v88;
    if (v91)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_22C710DF4()
{
  sub_22C36BA7C();
  sub_22C90654C();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v3 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C370654();
  v5 = sub_22C9070DC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C37FDDC();
  sub_22C646D68();
  sub_22C36D0A8(v1, 1, v5);
  if (v9)
  {
    sub_22C376B84(v1, &qword_27D9BAA18, &qword_22C911C40);
  }

  else
  {
    (*(v7 + 32))(v0, v1, v5);
    sub_22C90702C();
    v10 = sub_22C36A724();
    if (v11(v10) == *MEMORY[0x277D1DA48])
    {
      v12 = sub_22C36A724();
      v13(v12);
      sub_22C90704C();
      (*(v7 + 8))(v0, v5);
    }

    else
    {
      (*(v7 + 8))(v0, v5);
      v14 = sub_22C36A724();
      v15(v14);
    }
  }

  sub_22C36CC48();
}

uint64_t sub_22C711034(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7110A4(uint64_t a1)
{
  v1 = sub_22C9097DC();
  v3 = v2;
  if (v1 == sub_22C907D2C() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_22C90B4FC();
  }

  return v6 & 1;
}

uint64_t sub_22C71113C()
{
  v0 = sub_22C9063DC();
  v45 = *(v0 - 8);
  v46 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90906C();
  v47 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_22C9093BC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v39 - v18;
  v20 = MEMORY[0x2318B3C90](v17);
  sub_22C6053C8(v20, v11);

  if (sub_22C370B74(v11, 1, v12) == 1)
  {
    sub_22C376B84(v11, &qword_27D9BB908, &qword_22C910960);
    return 2;
  }

  (*(v13 + 32))(v19, v11, v12);
  (*(v13 + 16))(v16, v19, v12);
  if ((*(v13 + 88))(v16, v12) != *MEMORY[0x277D729E0])
  {
    v36 = *(v13 + 8);
    v36(v19, v12);
    v36(v16, v12);
    return 2;
  }

  v44 = v2;
  (*(v13 + 96))(v16, v12);
  v21 = swift_projectBox();
  v22 = v47;
  v23 = *(v47 + 16);
  v23(v8, v21, v3);

  v24 = *(sub_22C90905C() + 16);

  if (!v24)
  {
    (*(v22 + 8))(v8, v3);
    (*(v13 + 8))(v19, v12);
    return 2;
  }

  sub_22C903F8C();
  v23(v6, v8, v3);
  v25 = sub_22C9063CC();
  v26 = sub_22C90AABC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v41 = v27;
    v43 = swift_slowAlloc();
    v48 = v43;
    *v27 = 136315138;
    v42 = v26;
    sub_22C90905C();
    v40 = MEMORY[0x2318B7AD0]();
    v29 = v28;

    v30 = *(v47 + 8);
    v30(v6, v3);
    v31 = v30;
    v32 = sub_22C36F9F4(v40, v29, &v48);

    v33 = v41;
    *(v41 + 1) = v32;
    v34 = v33;
    _os_log_impl(&dword_22C366000, v25, v42, "Found valid typeIdentifiers on search query: %s", v33, 0xCu);
    v35 = v43;
    sub_22C36FF94(v43);
    MEMORY[0x2318B9880](v35, -1, -1);
    MEMORY[0x2318B9880](v34, -1, -1);

    (*(v45 + 8))(v44, v46);
    v31(v8, v3);
  }

  else
  {

    v38 = *(v47 + 8);
    v38(v6, v3);
    (*(v45 + 8))(v44, v46);
    v38(v8, v3);
  }

  (*(v13 + 8))(v19, v12);
  return 1;
}

uint64_t sub_22C7116FC()
{
  v149 = sub_22C9063DC();
  v0 = *(v149 - 8);
  v1 = MEMORY[0x28223BE20](v149);
  v161 = &v116 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v132 = &v116 - v4;
  MEMORY[0x28223BE20](v3);
  v129 = &v116 - v5;
  v147 = sub_22C90977C();
  v155 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_22C9094AC();
  v139 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90952C();
  v131 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v148 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v152 = &v116 - v12;
  MEMORY[0x28223BE20](v11);
  v165 = &v116 - v13;
  v164 = sub_22C90919C();
  v130 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v153 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C90906C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v133 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v141 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v116 - v21;
  v23 = sub_22C9093BC();
  v166 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v128 = &v116 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v167 = &v116 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v154 = &v116 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v116 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v116 - v37;
  v39 = MEMORY[0x2318B3C90](v36);
  sub_22C6053C8(v39, v22);

  if (sub_22C370B74(v22, 1, v23) == 1)
  {
    sub_22C376B84(v22, &qword_27D9BB908, &qword_22C910960);
LABEL_30:
    v94 = v161;
    sub_22C903F8C();
    v95 = sub_22C9063CC();
    v96 = sub_22C90AABC();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_22C366000, v95, v96, "SearchTool has empty requested properties, no hydration contexts to check", v97, 2u);
      MEMORY[0x2318B9880](v97, -1, -1);

      (*(v0 + 8))(v94, v149);
      return 2;
    }

    (*(v0 + 8))(v94, v149);
    return 2;
  }

  v40 = v166;
  (*(v166 + 32))(v38, v22, v23);
  v41 = *(v40 + 16);
  v150 = v40 + 16;
  v41(v35, v38, v23);
  v162 = *(v40 + 88);
  v163 = v40 + 88;
  if (v162(v35, v23) != *MEMORY[0x277D729E0])
  {
    v93 = *(v166 + 8);
    v93(v38, v23);
    v93(v35, v23);
    goto LABEL_30;
  }

  v160 = v41;
  v122 = v38;
  v42 = *(v166 + 96);
  v143 = v166 + 96;
  v142 = v42;
  v42(v35, v23);
  v43 = swift_projectBox();
  v44 = v133;
  (*(v16 + 16))(v133, v43, v15);

  v45 = v16;
  v46 = *(sub_22C90905C() + 16);

  if (!v46)
  {
    (*(v45 + 8))(v44, v15);
    (*(v166 + 8))(v122, v23);
    goto LABEL_30;
  }

  v117 = v26;
  v118 = v45;
  v119 = v15;
  v120 = v0;
  result = sub_22C90905C();
  v161 = result;
  v49 = v153;
  v48 = v154;
  v50 = v148;
  v51 = v165;
  v159 = *(result + 16);
  if (v159)
  {
    v52 = 0;
    v158 = &v161[(*(v166 + 80) + 32) & ~*(v166 + 80)];
    v157 = *MEMORY[0x277D72A38];
    v53 = (v166 + 8);
    v138 = (v130 + 16);
    v137 = (v131 + 2);
    v156 = (v131 + 11);
    v136 = *MEMORY[0x277D72D18];
    v151 = (v131 + 1);
    v126 = (v131 + 4);
    v135 = (v131 + 12);
    v125 = (v139 + 2);
    v124 = (v155 + 8);
    v123 = v139 + 1;
    v134 = *MEMORY[0x277D72D28];
    v131 += 13;
    v139 = (v130 + 8);
    v130 = 0x800000022C933910;
    v121 = "searchAnswerValue";
    v127 = v8;
    v140 = (v166 + 8);
    do
    {
      if (v52 >= *(v161 + 2))
      {
        __break(1u);
        return result;
      }

      v155 = *(v166 + 72);
      v54 = v160;
      v160(v48, &v158[v155 * v52], v23);
      v54(v167, v48, v23);
      v55 = v167;
      v56 = v162(v167, v23);
      if (v56 == v157)
      {
        v142(v55, v23);
        v57 = swift_projectBox();
        (*v138)(v49, v57, v164);

        sub_22C9090AC();
        (*v137)(v50, v51, v8);
        v58 = *v156;
        v59 = (*v156)(v50, v8);
        v60 = v51;
        if (v59 == v136)
        {
          (*v135)(v50, v8);
          v61 = swift_projectBox();
          v62 = v144;
          v63 = v145;
          (*v125)(v144, v61, v145);

          v64 = swift_allocObject();
          v65 = v146;
          sub_22C90948C();
          v66 = sub_22C9096FC();
          v68 = v67;
          (*v124)(v65, v147);
          v64[2] = v66;
          v64[3] = v68;
          v69 = sub_22C90949C();
          v71 = v70;
          v72 = v62;
          v8 = v127;
          v73 = v63;
          v50 = v148;
          (*v123)(v72, v73);
          v74 = *v151;
          (*v151)(v60, v8);
          v64[4] = v69;
          v64[5] = v71;
          v75 = v152;
          *v152 = v64;
          v48 = v154;
          v76 = v134;
          (*v131)(v75, v134, v8);
        }

        else
        {
          v74 = *v151;
          (*v151)(v50, v8);
          v75 = v152;
          (*v126)(v152, v60, v8);
          v76 = v134;
        }

        v80 = v58(v75, v8) == v76;
        v53 = v140;
        if (v80)
        {
          (*v135)(v75, v8);
          v79 = *(*v75 + 32);
          v78 = *(*v75 + 40);

          v80 = v79 == 0xD000000000000015 && v130 == v78;
          v49 = v153;
          if (v80)
          {

            v51 = v165;
          }

          else
          {
            v81 = sub_22C90B4FC();

            v51 = v165;
            if ((v81 & 1) == 0)
            {
              (*v139)(v49, v164);
              v48 = v154;
              result = (*v53)(v154, v23);
              goto LABEL_25;
            }
          }

          v82 = sub_22C90914C();
          if (*(v82 + 16))
          {
            v83 = sub_22C36E2BC(0xD000000000000010, v121 | 0x8000000000000000);
            if (v84)
            {
              v98 = v83;

              v99 = v141;
              v100 = v160;
              v160(v141, (*(v82 + 56) + v98 * v155), v23);

              sub_22C36C640(v99, 0, 1, v23);
              sub_22C376B84(v99, &qword_27D9BB908, &qword_22C910960);
              v101 = v129;
              sub_22C903F8C();
              v102 = v128;
              v103 = v154;
              v100(v128, v154, v23);
              v104 = sub_22C9063CC();
              v105 = sub_22C90AABC();
              if (os_log_type_enabled(v104, v105))
              {
                v106 = swift_slowAlloc();
                v107 = swift_slowAlloc();
                v168 = v107;
                *v106 = 136315138;
                v100(v117, v102, v23);
                v108 = sub_22C90A1AC();
                v109 = v102;
                v111 = v110;
                v112 = v49;
                v113 = *v140;
                (*v140)(v109, v23);
                v114 = sub_22C36F9F4(v108, v111, &v168);

                *(v106 + 4) = v114;
                _os_log_impl(&dword_22C366000, v104, v105, "Found valid hydrationContext on property: %s", v106, 0xCu);
                sub_22C36FF94(v107);
                MEMORY[0x2318B9880](v107, -1, -1);
                MEMORY[0x2318B9880](v106, -1, -1);

                (*(v120 + 8))(v129, v149);
                (*v139)(v112, v164);
                v113(v154, v23);
                (*(v118 + 8))(v133, v119);
                v113(v122, v23);
              }

              else
              {

                v115 = *v140;
                (*v140)(v102, v23);
                (*(v120 + 8))(v101, v149);
                (*v139)(v49, v164);
                v115(v103, v23);
                (*(v118 + 8))(v133, v119);
                v115(v122, v23);
              }

              return 1;
            }
          }

          (*v139)(v49, v164);
          v48 = v154;
          (*v53)(v154, v23);
          v85 = v141;
          sub_22C36C640(v141, 1, 1, v23);
          result = sub_22C376B84(v85, &qword_27D9BB908, &qword_22C910960);
        }

        else
        {
          v49 = v153;
          (*v139)(v153, v164);
          (*v53)(v48, v23);
          result = (v74)(v75, v8);
          v51 = v165;
        }
      }

      else
      {
        v77 = *v53;
        (*v53)(v48, v23);
        result = v77(v55, v23);
        v51 = v165;
      }

LABEL_25:
      ++v52;
    }

    while (v159 != v52);
  }

  v86 = v132;
  sub_22C903F8C();
  v87 = sub_22C9063CC();
  v88 = sub_22C90AABC();
  if (!os_log_type_enabled(v87, v88))
  {

    (*(v120 + 8))(v86, v149);
    (*(v118 + 8))(v133, v119);
    (*(v166 + 8))(v122, v23);
    return 2;
  }

  v89 = 2;
  v90 = swift_slowAlloc();
  v91 = v166;
  v92 = v90;
  *v90 = 0;
  _os_log_impl(&dword_22C366000, v87, v88, "Found no valid hydrationContexts on requestedProperties", v90, 2u);
  MEMORY[0x2318B9880](v92, -1, -1);

  (*(v120 + 8))(v86, v149);
  (*(v118 + 8))(v133, v119);
  (*(v91 + 8))(v122, v23);
  return v89;
}

uint64_t sub_22C712A4C()
{
  v0 = sub_22C9063DC();
  v29 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90931C();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_22C9093BC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  v17 = MEMORY[0x2318B3C90](v14);
  sub_22C6053C8(v17, v8);

  if (sub_22C370B74(v8, 1, v9) == 1)
  {
    sub_22C376B84(v8, &qword_27D9BB908, &qword_22C910960);
  }

  else
  {
    v27 = v0;
    v18 = *(v10 + 32);
    v18(v16, v8, v9);
    v18(v13, v16, v9);
    if ((*(v10 + 88))(v13, v9) == *MEMORY[0x277D72A58])
    {
      (*(v10 + 96))(v13, v9);
      v19 = swift_projectBox();
      v20 = v28;
      (*(v28 + 16))(v5, v19, v3);
      if ((*(v20 + 88))(v5, v3) == *MEMORY[0x277D72988])
      {
        (*(v20 + 96))(v5, v3);
        v21 = *v5;

        return v21;
      }

      (*(v20 + 8))(v5, v3);
    }

    else
    {
      (*(v10 + 8))(v13, v9);
    }

    v0 = v27;
  }

  sub_22C903F8C();
  v22 = sub_22C9063CC();
  v23 = sub_22C90AABC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_22C366000, v22, v23, "SearchTool query does not have 'onScreenReference'", v24, 2u);
    MEMORY[0x2318B9880](v24, -1, -1);
  }

  (*(v29 + 8))(v2, v0);
  return 0;
}

uint64_t sub_22C712EB8()
{
  v0 = sub_22C9063DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C3A5908(&qword_27D9BF8C8, &qword_22C923558);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_22C9067CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C70FC3C();
  if (sub_22C370B74(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    if (sub_22C7131A8())
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v15 = sub_22C713820();
      (*(v8 + 8))(v10, v7);
      if ((v15 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    return 1;
  }

  sub_22C376B84(v6, &qword_27D9BF8C8, &qword_22C923558);
LABEL_3:
  sub_22C903F8C();
  v11 = sub_22C9063CC();
  v12 = sub_22C90AABC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22C366000, v11, v12, "provided statementId is not a part of a PQA request", v13, 2u);
    MEMORY[0x2318B9880](v13, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_22C7131A8()
{
  v0 = sub_22C9063DC();
  v52 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v44 - v4;
  v51 = sub_22C90906C();
  v49 = *(v51 - 8);
  v6 = MEMORY[0x28223BE20](v51);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v44 - v9;
  v10 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_22C9093BC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  v21 = MEMORY[0x2318B3C90](v18);
  sub_22C6053C8(v21, v12);

  if (sub_22C370B74(v12, 1, v13) == 1)
  {
    sub_22C376B84(v12, &qword_27D9BB908, &qword_22C910960);
LABEL_9:
    sub_22C903F8C();
    v38 = sub_22C9063CC();
    v39 = sub_22C90AABC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22C366000, v38, v39, "SearchTool query does not have non-empty 'requestedProperties'", v40, 2u);
      MEMORY[0x2318B9880](v40, -1, -1);
    }

    (*(v52 + 8))(v3, v0);
    return 0;
  }

  (*(v14 + 32))(v20, v12, v13);
  (*(v14 + 16))(v17, v20, v13);
  if ((*(v14 + 88))(v17, v13) != *MEMORY[0x277D729E0])
  {
    v37 = *(v14 + 8);
    v37(v20, v13);
    v37(v17, v13);
    goto LABEL_9;
  }

  v47 = v5;
  v48 = v0;
  (*(v14 + 96))(v17, v13);
  v22 = swift_projectBox();
  v23 = v49;
  v24 = *(v49 + 16);
  v24(v50, v22, v51);

  v25 = *(sub_22C90905C() + 16);

  if (!v25)
  {
    (*(v23 + 8))(v50, v51);
    (*(v14 + 8))(v20, v13);
    v0 = v48;
    goto LABEL_9;
  }

  v26 = v47;
  sub_22C903F8C();
  v24(v8, v50, v51);
  v27 = sub_22C9063CC();
  v28 = sub_22C90AABC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v45 = v29;
    v46 = swift_slowAlloc();
    v53 = v46;
    *v29 = 136315138;
    sub_22C90905C();
    v44 = MEMORY[0x2318B7AD0]();
    v31 = v30;

    v49 = *(v49 + 8);
    v32 = v8;
    v33 = v51;
    (v49)(v32, v51);
    v34 = sub_22C36F9F4(v44, v31, &v53);

    v35 = v45;
    *(v45 + 1) = v34;
    _os_log_impl(&dword_22C366000, v27, v28, "SearchTool query has non-empty 'requestedProperties':\n%s", v35, 0xCu);
    v36 = v46;
    sub_22C36FF94(v46);
    MEMORY[0x2318B9880](v36, -1, -1);
    MEMORY[0x2318B9880](v35, -1, -1);

    (*(v52 + 8))(v26, v48);
    (v49)(v50, v33);
  }

  else
  {

    v42 = *(v49 + 8);
    v43 = v51;
    v42(v8, v51);
    (*(v52 + 8))(v26, v48);
    v42(v50, v43);
  }

  (*(v14 + 8))(v20, v13);
  return 1;
}

uint64_t sub_22C713820()
{
  v47 = sub_22C9063DC();
  v0 = *(v47 - 8);
  v1 = MEMORY[0x28223BE20](v47);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v44 = &v42 - v4;
  v5 = sub_22C9093BC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v45 = &v42 - v10;
  v11 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = sub_22C90919C();
  v46 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2318B3C90](v18);
  sub_22C6053C8(v21, v16);

  if (sub_22C370B74(v16, 1, v5) == 1)
  {
    sub_22C376B84(v16, &qword_27D9BB908, &qword_22C910960);
LABEL_13:
    sub_22C903F8C();
    v39 = sub_22C9063CC();
    v40 = sub_22C90AABC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22C366000, v39, v40, "SearchTool query does not have 'describe' defined or set to true", v41, 2u);
      MEMORY[0x2318B9880](v41, -1, -1);
    }

    (*(v0 + 8))(v3, v47);
    return 0;
  }

  if ((*(v6 + 88))(v16, v5) != *MEMORY[0x277D72A38])
  {
    (*(v6 + 8))(v16, v5);
    goto LABEL_13;
  }

  v43 = v0;
  (*(v6 + 96))(v16, v5);
  v22 = swift_projectBox();
  v23 = v17;
  v24 = v46;
  (*(v46 + 16))(v20, v22, v23);

  v25 = sub_22C90914C();
  sub_22C6053C8(v25, v14);

  if (sub_22C370B74(v14, 1, v5) == 1)
  {
    (*(v24 + 8))(v20, v23);
    sub_22C376B84(v14, &qword_27D9BB908, &qword_22C910960);
LABEL_12:
    v0 = v43;
    goto LABEL_13;
  }

  v26 = v23;
  v27 = v45;
  (*(v6 + 32))(v45, v14, v5);
  v28 = sub_22C90931C();
  v29 = swift_allocBox();
  *v30 = 1;
  (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D72988], v28);
  *v9 = v29;
  (*(v6 + 104))(v9, *MEMORY[0x277D72A58], v5);
  LOBYTE(v28) = sub_22C9093AC();
  v31 = *(v6 + 8);
  v31(v9, v5);
  if ((v28 & 1) == 0)
  {
    v31(v27, v5);
    (*(v46 + 8))(v20, v23);
    goto LABEL_12;
  }

  v32 = v44;
  sub_22C903F8C();
  v33 = sub_22C9063CC();
  v34 = sub_22C90AABC();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v43;
  if (v35)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_22C366000, v33, v34, "SearchTool query has 'describe' set to true", v37, 2u);
    MEMORY[0x2318B9880](v37, -1, -1);
  }

  (*(v36 + 8))(v32, v47);
  v31(v45, v5);
  (*(v46 + 8))(v20, v26);
  return 1;
}

uint64_t sub_22C713EB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SearchRouter.run(structuredSearch:transcript:followupIsClientAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  HIDWORD(v109) = a3;
  v110 = a2;
  v114 = a4;
  v5 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - v6;
  v8 = sub_22C90952C();
  sub_22C369824();
  v112 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v105 - v15;
  MEMORY[0x28223BE20](v14);
  v113 = &v105 - v17;
  v18 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v105 - v19;
  v21 = sub_22C90941C();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = a1;
  sub_22C9082FC();
  if (sub_22C370B74(v20, 1, v21) == 1)
  {
    v27 = &qword_27D9BC028;
    v28 = &unk_22C9134B0;
    v29 = v20;
LABEL_5:
    result = sub_22C36DD28(v29, v27, v28);
LABEL_6:
    *v114 = 0;
    return result;
  }

  (*(v23 + 32))(v26, v20, v21);
  v30 = sub_22C9093DC();
  sub_22C58B0F8(v30);

  if (sub_22C370B74(v7, 1, v8) == 1)
  {
    v31 = sub_22C36B48C();
    v32(v31);
    v27 = &qword_27D9BB0C0;
    v28 = &qword_22C90D960;
    v29 = v7;
    goto LABEL_5;
  }

  v34 = v8;
  v108 = v26;
  v35 = v112;
  v36 = v113;
  (*(v112 + 32))(v113, v7, v8);
  v37 = *(v35 + 16);
  v38 = v36;
  v39 = v35;
  v37(v16, v38, v8);
  v40 = (*(v35 + 88))(v16, v8);
  if (v40 == *MEMORY[0x277D72D50])
  {
    v37(v13, v16, v8);
    v48 = v35;
    v49 = *(v35 + 96);
    v106 = v34;
    v49(v13, v34);
    v50 = *v13;
    v51 = sub_22C9094EC();
    v105 = v50;
    v52 = swift_projectBox();
    v53 = (*(*(v51 - 1) + 88))(v52, v51);
    if (v53 == *MEMORY[0x277D72D00])
    {
      sub_22C5EA364(&unk_283FAFC58, v54, v55, v56, v57, v58, v59, v60, v105, v106, v16, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, vars0, vars8);
      v51 = v61;
      v63 = v110;
      v62 = v111;
      sub_22C5F29CC(v61, v110);
      sub_22C378550();
      if ((v34 & 1) == 0)
      {
        sub_22C5EA364(&unk_283FAFC88, v64, v65, v66, v67, v68, v69, v70, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, vars0, vars8);
        sub_22C5F29CC(v71, v63);
        sub_22C378550();
        sub_22C5EA364(&unk_283FAFCB8, v72, v73, v74, v75, v76, v77, v78, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, vars0, vars8);
        sub_22C5F29CC(v79, v63);
        sub_22C378550();
LABEL_35:
        type metadata accessor for SearchRoutingError(0);
        sub_22C714844();
        swift_allocError();
        v51 = v100;
        sub_22C90832C();
        sub_22C36985C();
        (*(v101 + 16))(v51, v62);
        swift_willThrow();
        v102 = sub_22C3737A8();
        v51(v102);
        v103 = sub_22C36B48C();
        v104(v103);

        goto LABEL_15;
      }

      v80 = sub_22C3737A8();
      v51(v80);
      v81 = sub_22C36B48C();
      v82(v81);

      if ((v109 & 0x100000000) != 0)
      {
        v83 = 2;
      }

      else
      {
        v83 = 3;
      }

LABEL_14:
      *v114 = v83;
LABEL_15:
      v84 = v107;
      return (v51)(v84, v62);
    }

    v62 = v111;
    if (v53 == *MEMORY[0x277D72CD8])
    {
      v89 = sub_22C3737A8();
      v51(v89);
      v90 = sub_22C36B48C();
      v91(v90);

      if ((v109 & 0x100000000) != 0)
      {
        v92 = 2;
      }

      else
      {
        v92 = 1;
      }

      *v114 = v92;
      v84 = v16;
      return (v51)(v84, v62);
    }

    v107 = v16;
    if (v53 == *MEMORY[0x277D72C98])
    {
      sub_22C5EA364(&unk_283FAFC58, v54, v55, v56, v57, v58, v59, v60, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, vars0, vars8);
      v51 = v94;
      sub_22C5F29CC(v94, v110);
      sub_22C378550();
      if ((v34 & 1) == 0)
      {
        goto LABEL_35;
      }

      v95 = sub_22C3737A8();
      v51(v95);
      v96 = sub_22C36B48C();
      v97(v96);

      v83 = 3;
      goto LABEL_14;
    }

    v93 = *(v48 + 8);
    v34 = v106;
    v93(v113, v106);
    v98 = sub_22C36B48C();
    v99(v98);

    goto LABEL_29;
  }

  v107 = v16;
  if (v40 != *MEMORY[0x277D72D28])
  {
    v93 = *(v35 + 8);
    v93(v113, v8);
    (*(v23 + 8))(v108, v21);
LABEL_29:
    *v114 = 0;
    return (v93)(v107, v34);
  }

  sub_22C5EA364(&unk_283FAFC58, v41, v42, v43, v44, v45, v46, v47, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, vars0, vars8);
  v86 = sub_22C5F29CC(v85, v110);

  v87 = *(v39 + 8);
  v87(v113, v8);
  (*(v23 + 8))(v108, v21);
  if (!v86)
  {
    result = (v87)(v107, v8);
    goto LABEL_6;
  }

  if ((v109 & 0x100000000) != 0)
  {
    v88 = 2;
  }

  else
  {
    v88 = 3;
  }

  *v114 = v88;
  return (v87)(v107, v8);
}

uint64_t SearchRouting.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

uint64_t static SearchRoutingError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF8E0, &qword_22C923570);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = *(v5 + 56);
  sub_22C71489C(a1, &v13 - v6);
  sub_22C71489C(a2, &v7[v8]);
  LOBYTE(a2) = sub_22C90831C();
  v9 = sub_22C90832C();
  sub_22C36985C();
  v11 = *(v10 + 8);
  v11(&v7[v8], v9);
  v11(v7, v9);
  return a2 & 1;
}

uint64_t type metadata accessor for SearchRoutingError(uint64_t a1)
{
  result = qword_27D9BF8F0;
  if (!qword_27D9BF8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22C714844()
{
  result = qword_27D9BF8D8;
  if (!qword_27D9BF8D8)
  {
    type metadata accessor for SearchRoutingError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF8D8);
  }

  return result;
}

uint64_t sub_22C71489C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchRoutingError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C714904()
{
  result = qword_27D9BF8E8;
  if (!qword_27D9BF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF8E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchRouting(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C714A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90832C();

  return sub_22C370B74(a1, a2, v4);
}

uint64_t sub_22C714A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90832C();

  return sub_22C36C640(a1, a2, a3, v6);
}

uint64_t sub_22C714AD4(uint64_t a1)
{
  v2 = sub_22C90832C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

IntelligenceFlowPlannerRuntime::SiriResponseMode __swiftcall SiriResponseMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C3858B4();
  v10 = sub_22C36B49C(v3, MEMORY[0x277D837D0], v4, v5, v6, v7, v8, v9, 0x6C6E4F6563696F76);
  if (v10)
  {
    if (sub_22C36B49C(v10, MEMORY[0x277D837D0], v11, v12, v13, v14, v15, v16, 0x726F466563696F76))
    {
      sub_22C3737BC();
      if (sub_22C36B49C(v18, MEMORY[0x277D837D0], v19, v20, v21, v22, v23, v24, v17 & 0xFFFFFFFFFFFFLL | 0x4F79000000000000))
      {
        sub_22C3737BC();
        v33 = sub_22C36B49C(v26, MEMORY[0x277D837D0], v27, v28, v29, v30, v31, v32, v25 & 0xFFFFFFFFFFFFLL | 0x4679000000000000) == 0;

        v35 = 4 * v33;
      }

      else
      {

        v35 = 3;
      }
    }

    else
    {

      v35 = 2;
    }
  }

  else
  {

    v35 = 1;
  }

  *v2 = v35;
  return result;
}

uint64_t SiriResponseMode.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6C6E4F6563696F76;
      break;
    case 2:
      result = 0x726F466563696F76;
      break;
    case 3:
      result = 0x4F79616C70736964;
      break;
    case 4:
      result = 0x4679616C70736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C714DAC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SiriResponseMode.init(rawValue:)(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_22C714DEC@<X0>(uint64_t *a1@<X8>)
{
  result = SiriResponseMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22C714E18()
{
  result = qword_27D9BF900;
  if (!qword_27D9BF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF900);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriResponseMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t StepResolution.toEventPayloads(omittingResponseEvents:)(int a1)
{
  v214 = a1;
  sub_22C9072BC();
  sub_22C369824();
  v208 = v3;
  v209 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  *&v207 = v4;
  sub_22C36BA0C();
  sub_22C907FCC();
  sub_22C369824();
  v205 = v6;
  v206 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v204 = v7;
  sub_22C36BA0C();
  sub_22C90771C();
  sub_22C369824();
  v202 = v9;
  v203 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v201 = v10;
  sub_22C36BA0C();
  sub_22C9085EC();
  sub_22C369824();
  v199 = v12;
  v200 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  sub_22C3698F8(v13);
  v14 = sub_22C906A3C();
  v15 = sub_22C36A7A4(v14, &v222);
  v197 = v16;
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  sub_22C3698F8(v17);
  v18 = sub_22C907CCC();
  v19 = sub_22C36A7A4(v18, &v221);
  v196 = v20;
  MEMORY[0x28223BE20](v19);
  sub_22C3698A8();
  sub_22C3698F8(v21);
  v22 = sub_22C90792C();
  v23 = sub_22C36A7A4(v22, &v220);
  v195 = v24;
  MEMORY[0x28223BE20](v23);
  sub_22C3698A8();
  sub_22C3698F8(v25);
  v26 = sub_22C906F1C();
  v27 = sub_22C36A7A4(v26, v219);
  v194 = v28;
  MEMORY[0x28223BE20](v27);
  sub_22C3698A8();
  sub_22C3698F8(v29);
  v30 = sub_22C906CAC();
  v31 = sub_22C36A7A4(v30, &v216);
  v193 = v32;
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  sub_22C3698F8(v33);
  v34 = sub_22C9073AC();
  v35 = sub_22C36A7A4(v34, &v213);
  v192 = v36;
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  sub_22C3698F8(v37);
  v38 = sub_22C9063DC();
  v39 = sub_22C36A7A4(v38, v198);
  v179 = v40;
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  sub_22C3698F8(v41);
  sub_22C9089DC();
  sub_22C369824();
  v217 = v43;
  v218 = v42;
  MEMORY[0x28223BE20](v42);
  sub_22C3698A8();
  sub_22C3698F8(v44);
  sub_22C90819C();
  sub_22C369824();
  v210 = v46;
  v211 = v45;
  MEMORY[0x28223BE20](v45);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v47);
  sub_22C3698F8(&v177 - v48);
  v49 = sub_22C9026BC();
  v50 = sub_22C36A7A4(v49, &v209);
  v189 = v51;
  MEMORY[0x28223BE20](v50);
  sub_22C3698A8();
  sub_22C3698F8(v52);
  v53 = sub_22C907DEC();
  v54 = sub_22C36A7A4(v53, &v207);
  v187 = v55;
  MEMORY[0x28223BE20](v54);
  sub_22C3698A8();
  sub_22C3698F8(v56);
  sub_22C906ECC();
  sub_22C369824();
  v212 = v58;
  v213 = v57;
  MEMORY[0x28223BE20](v57);
  sub_22C3698A8();
  v215 = v59;
  sub_22C36BA0C();
  v60 = sub_22C9078FC();
  v61 = sub_22C36A7A4(v60, &v204);
  v185 = v62;
  MEMORY[0x28223BE20](v61);
  sub_22C3698A8();
  sub_22C3698F8(v63);
  v64 = sub_22C90693C();
  v65 = sub_22C36A7A4(v64, &v199);
  v184 = v66;
  MEMORY[0x28223BE20](v65);
  sub_22C369838();
  v69 = v68 - v67;
  v70 = sub_22C908CEC();
  sub_22C369824();
  v183 = v71;
  MEMORY[0x28223BE20](v72);
  sub_22C369838();
  v75 = (v74 - v73);
  v76 = sub_22C90674C();
  sub_22C369824();
  v181 = v77;
  MEMORY[0x28223BE20](v78);
  sub_22C369838();
  v81 = v80 - v79;
  v82 = sub_22C9086FC();
  sub_22C369824();
  v84 = v83;
  MEMORY[0x28223BE20](v85);
  sub_22C369838();
  v88 = v87 - v86;
  type metadata accessor for StepResolution(0);
  sub_22C7177C8();
  MEMORY[0x28223BE20](v89);
  sub_22C369838();
  v92 = v91 - v90;
  sub_22C716438(v216, v91 - v90);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C38746C();
      v129(v81, v92, v76);
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v130 = v217;
      v96 = sub_22C38891C();
      *(v96 + 16) = xmmword_22C90F800;
      v131 = sub_22C370938(v96);
      v132(v131, v81, v76);
      (*(v130 + 104))(v1 + v96, *MEMORY[0x277D1E7A0], v218);
      (*(v75 + 1))(v81, v76);
      return v96;
    case 2u:
      v111 = v183;
      (*(v183 + 32))(v75, v92, v70);
      v112 = sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v96 = sub_22C378568(v112);
      *(v96 + 16) = xmmword_22C90F800;
      v113 = sub_22C370938(v96);
      v114(v113, v75, v70);
      v115 = sub_22C37A288();
      v116(v115);
      (*(v111 + 8))(v75, v70);
      return v96;
    case 3u:
      v122 = v184;
      v123 = v182;
      (*(v184 + 32))(v69, v92, v182);
      v124 = sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v96 = sub_22C378568(v124);
      *(v96 + 16) = xmmword_22C90F800;
      v125 = sub_22C370938(v96);
      v126(v125, v69, v123);
      v127 = sub_22C37A288();
      v128(v127);
      (*(v122 + 8))(v69, v123);
      return v96;
    case 4u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
      sub_22C38746C();
      sub_22C717788();
      sub_22C3833A4();
      v161();
      v162 = sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v96 = sub_22C378568(v162);
      v163 = sub_22C3737D0(v96, xmmword_22C90F800);
      v164(v163);
      goto LABEL_22;
    case 5u:
      v134 = v212;
      v135 = v213;
      v136 = v215;
      (*(v212 + 32))(v215, v92, v213);
      v137 = v186;
      sub_22C906EBC();
      sub_22C36D2E8();
      sub_22C907DAC();
      sub_22C36FB04();
      v138(v137, v188);
      v139 = v189;
      v140 = v190;
      LODWORD(v216) = (*(v189 + 88))(v92, v190);
      v141 = *MEMORY[0x277D1CBF0];
      (*(v139 + 8))(v92, v140);
      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v142 = v217;
      v143 = (*(v217 + 80) + 32) & ~*(v217 + 80);
      v209 = *(v217 + 72);
      v96 = swift_allocObject();
      v207 = xmmword_22C90F800;
      *(v96 + 16) = xmmword_22C90F800;
      v144 = *(v134 + 16);
      v144(v96 + v143, v136, v135);
      v145 = *MEMORY[0x277D1E798];
      v208 = *(v142 + 104);
      v208(v96 + v143, v145, v218);
      if (v216 == v141)
      {
        (*(v134 + 8))(v136, v135);
      }

      else if (v214)
      {
        (*(v212 + 8))(v215, v213);
      }

      else
      {
        sub_22C3A5908(&qword_27D9BE320, &qword_22C91D8A0);
        v168 = v212;
        v169 = (*(v212 + 80) + 32) & ~*(v212 + 80);
        v170 = swift_allocObject();
        *(v170 + 16) = v207;
        v171 = v213;
        v144(v170 + v169, v215, v213);
        v172 = v177;
        sub_22C90679C();
        v174 = v210;
        v173 = v211;
        v175 = v178;
        (*(v210 + 16))(v178, v172, v211);
        v208(v175, *MEMORY[0x277D1E838], v218);
        sub_22C5908A0();
        v96 = v176;
        (*(v174 + 8))(v172, v173);
        (*(v168 + 8))(v215, v171);
        *(v96 + 16) = 2;
        (*(v142 + 32))(v96 + v143 + v209, v175, v218);
      }

      return v96;
    case 6u:
      v152 = v210;
      v151 = v211;
      v153 = v191;
      (*(v210 + 32))(v191, v92, v211);
      v154 = v217;
      if (v214)
      {
        sub_22C36D2E8();
        sub_22C903F8C();
        v1 = sub_22C9063CC();
        v155 = sub_22C90AADC();
        if (os_log_type_enabled(v1, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&dword_22C366000, v1, v155, "WARNING: Interpreter is requesting response gen! This is old behaviour and should be switched to .continuePlanning", v156, 2u);
          MEMORY[0x2318B9880](v156, -1, -1);
        }

        sub_22C36FB04();
        v157(v92, v180);
      }

      sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v96 = sub_22C38891C();
      *(v96 + 16) = xmmword_22C90F800;
      v158 = sub_22C370938(v96);
      v159(v158, v153, v151);
      (*(v154 + 104))(v1 + v96, *MEMORY[0x277D1E838], v218);
      (*(v152 + 8))(v153, v151);
      return v96;
    case 0xDu:
      v75 = v199;
      v84 = v200;
      sub_22C37FF3C();
      v146 = sub_22C717788();
      v147(v146);
      v148 = sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v96 = sub_22C378568(v148);
      v149 = sub_22C3737D0(v96, xmmword_22C90F800);
      v150(v149);
      goto LABEL_22;
    case 0xEu:
      v88 = v201;
      v75 = v202;
      sub_22C37FF3C();
      v106 = sub_22C3806B8();
      v84 = v203;
      v107(v106);
      v108 = sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v96 = sub_22C378568(v108);
      v109 = sub_22C3737D0(v96, xmmword_22C90F800);
      v110(v109);
      goto LABEL_22;
    case 0xFu:
      v75 = v208;
      v84 = v209;
      sub_22C37FF3C();
      v88 = v207;
      v117 = sub_22C3806B8();
      v118(v117);
      v119 = sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v96 = sub_22C378568(v119);
      v120 = sub_22C3737D0(v96, xmmword_22C90F800);
      v121(v120);
      goto LABEL_22;
    case 0x10u:
      v88 = v204;
      v75 = v205;
      sub_22C37FF3C();
      v101 = sub_22C3806B8();
      v84 = v206;
      v102(v101);
      v103 = sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v96 = sub_22C378568(v103);
      v104 = sub_22C3737D0(v96, xmmword_22C90F800);
      v105(v104);
LABEL_22:
      v165 = sub_22C37A288();
      v166(v165);
      (*(v75 + 1))(v88, v84);
      break;
    case 0x11u:
      v133 = sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v96 = sub_22C378568(v133);
      *(v96 + 16) = xmmword_22C90F800;
      sub_22C906F9C();
      (*(v76 + 104))(v1 + v96, *MEMORY[0x277D1E768], v218);
      break;
    case 0x12u:
      v160 = sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v96 = sub_22C378568(v160);
      *(v96 + 16) = xmmword_22C90F800;
      (*(v76 + 104))(v1 + v96, *MEMORY[0x277D1E860], v218);
      break;
    default:
      v93 = sub_22C3806B8();
      v94(v93);
      v95 = sub_22C3A5908(&qword_27D9BE4B0, &unk_22C9237B0);
      v96 = sub_22C378568(v95);
      *(v96 + 16) = xmmword_22C90F800;
      v97 = sub_22C370938(v96);
      v98(v97, v88, v82);
      v99 = sub_22C37A288();
      v100(v99);
      (*(v84 + 8))(v88, v82);
      break;
  }

  return v96;
}