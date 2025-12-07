uint64_t sub_1D7C7C76C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = [*(*a1 + 16) identifier];
  v5 = sub_1D7D3034C();
  v7 = v6;

  v8 = [a2 identifier];
  v9 = sub_1D7D3034C();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    goto LABEL_8;
  }

  v13 = sub_1D7D3197C();

  if (v13)
  {
    return 1;
  }

  v14 = [*(v3 + 16) clusterID];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D7D3034C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v20 = [a2 clusterID];
  if (!v20)
  {
    if (!v18)
    {
      return 1;
    }

    goto LABEL_20;
  }

  v21 = v20;
  v22 = sub_1D7D3034C();
  v24 = v23;

  if (!v18)
  {
    if (!v24)
    {
      return 1;
    }

    goto LABEL_20;
  }

  if (!v24)
  {
LABEL_20:

    return 0;
  }

  if (v16 == v22 && v18 == v24)
  {
LABEL_8:

    return 1;
  }

  v25 = sub_1D7D3197C();

  return v25 & 1;
}

uint64_t sub_1D7C7C938(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, char *a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v173 = a8;
  v174 = a7;
  v172 = a6;
  *&v175 = a5;
  v13 = a4;
  v15 = *a1;
  v162 = *a2;
  LODWORD(v171) = *(a2 + 8);
  v167 = a2;
  v169 = *(a2 + 32);
  v183 = 0xD000000000000021;
  v184 = 0x80000001D7D674F0;
  v177[2] = &v183;
  v168 = v11;
  v176 = a4;
  v164 = v15;
  if (sub_1D7B8ABB4(sub_1D7C8A514, v177, v162))
  {
    v16 = sub_1D7B750C4(v15);
    if (v16 >> 62)
    {
      v32 = v16;
      v17 = sub_1D7D3167C();
      v16 = v32;
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_4:
        v18 = v16;
        v183 = MEMORY[0x1E69E7CC0];
        sub_1D7A5BDC8(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          goto LABEL_134;
        }

        v170 = a3;
        v19 = 0;
        v20 = v183;
        v21 = v18;
        v187 = v18 & 0xC000000000000001;
        v22 = v18;
        v23 = v17;
        do
        {
          if (v187)
          {
            v24 = MEMORY[0x1DA70EF00](v19, v21);
          }

          else
          {
            v24 = *(v21 + 8 * v19 + 32);
          }

          v25 = [*(v24 + 16) identifier];
          v26 = sub_1D7D3034C();
          v28 = v27;

          v183 = v20;
          v30 = *(v20 + 16);
          v29 = *(v20 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1D7A5BDC8((v29 > 1), v30 + 1, 1);
            v20 = v183;
          }

          ++v19;
          *(v20 + 16) = v30 + 1;
          v31 = v20 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
          v21 = v22;
        }

        while (v23 != v19);

        v13 = v176;
        a3 = v170;
        goto LABEL_15;
      }
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v33 = sub_1D7BDE0A4(v20);

    swift_beginAccess();
    *(a3 + 16) = v33;

    v15 = v164;
  }

  v34 = sub_1D7B750C4(v15);
  v18 = v34 & 0x8000000000000000;
  v35 = v34 >> 62;
  v36 = v34;
  if (v34 >> 62)
  {
    goto LABEL_127;
  }

  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

LABEL_18:
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v37 = qword_1EE0CA138;
  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v163 = v38;
  v39 = swift_allocObject();
  v161 = xmmword_1D7D3B4D0;
  v160 = v39;
  *(v39 + 16) = xmmword_1D7D3B4D0;
  v183 = 0;
  v184 = 0xE000000000000000;
  v170 = v18;
  if (v35)
  {
    v41 = sub_1D7D3167C();
    v40 = v36;
    v12 = v41;
  }

  else
  {
    v40 = v36;
    v12 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v187 = v40;
  v42 = MEMORY[0x1E69E7CC0];
  v166 = v37;
  if (v12)
  {
    *&v185[0] = MEMORY[0x1E69E7CC0];
    sub_1D7A5BDC8(0, v12 & ~(v12 >> 63), 0);
    if ((v12 & 0x8000000000000000) == 0)
    {
      v165 = v35;
      v43 = 0;
      v42 = *&v185[0];
      v44 = v36;
      v45 = v36 & 0xC000000000000001;
      do
      {
        if (v45)
        {
          v46 = MEMORY[0x1DA70EF00](v43, v44);
        }

        else
        {
          v46 = *(v44 + 8 * v43 + 32);
        }

        v47 = [*(v46 + 16) identifier];
        v48 = sub_1D7D3034C();
        v50 = v49;

        *&v185[0] = v42;
        v52 = *(v42 + 16);
        v51 = *(v42 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_1D7A5BDC8((v51 > 1), v52 + 1, 1);
          v42 = *&v185[0];
        }

        ++v43;
        *(v42 + 16) = v52 + 1;
        v53 = v42 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
        v44 = v187;
      }

      while (v12 != v43);
      v36 = v187;
      v35 = v165;
      v37 = v166;
      v13 = v176;
      goto LABEL_33;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

LABEL_33:
  v12 = MEMORY[0x1E69E6158];
  v54 = MEMORY[0x1DA70E0B0](v42, MEMORY[0x1E69E6158]);
  v56 = v55;

  MEMORY[0x1DA70DE90](v54, v56);

  v57 = v183;
  v58 = v184;
  v18 = v160;
  *(v160 + 56) = v12;
  v165 = sub_1D79D6AE0();
  *(v18 + 64) = v165;
  *(v18 + 32) = v57;
  *(v18 + 40) = v58;
  v59 = sub_1D7D30C6C();
  sub_1D7D29AAC("Considering headlines %@", 24, 2, &dword_1D7987000, v37, v59, v18);

  v60 = __swift_project_boxed_opaque_existential_1(v172, *(v172 + 3));
  v61 = *(v60 + 3);
  v185[2] = *(v60 + 2);
  v185[3] = v61;
  v185[4] = *(v60 + 4);
  v186 = v60[10];
  v62 = *(v60 + 1);
  v185[0] = *v60;
  v185[1] = v62;
  v172 = sub_1D7C87AA8(v167, v13, v175, v185);
  v63 = v13[53];
  if (v63 >> 1 == 0xFFFFFFFF)
  {
    v64 = v168;
  }

  else
  {
    v18 = v13[51];
    if ((v63 & 0x8000000000000000) != 0)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      sub_1D7A03D20(v13[51], v13[52], v13[53], v13[54]);
    }

    swift_unknownObjectRelease();

    if (v63)
    {
      v183 = 0xD000000000000012;
      v184 = 0x80000001D7D67580;
      MEMORY[0x1EEE9AC00](v65, v66);
      v159 = &v183;
      v64 = v168;
      v67 = sub_1D7B8ABB4(sub_1D7C8AD3C, v158, v162);
      v36 = v187;
      if (v67)
      {
        v168 = v64;

        a3 = v36;
        v35 = v36;
        goto LABEL_59;
      }
    }

    else
    {
      v64 = v168;
      v36 = v187;
    }
  }

  v179 = MEMORY[0x1E69E7CC0];
  v168 = v64;
  v68 = v36;
  if (v35)
  {
    a3 = sub_1D7D3167C();
  }

  else
  {
    a3 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D7C893F8(v167, &v183);
  swift_unknownObjectRetain();

  swift_beginAccess();
  if (a3)
  {
    v35 = 0;
    v170 = v36 & 0xC000000000000001;
    v69 = v36 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v170)
      {
        v70 = MEMORY[0x1DA70EF00](v35, v68);
      }

      else
      {
        if (v35 >= *(v69 + 16))
        {
          goto LABEL_126;
        }

        v70 = *(v68 + 8 * v35 + 32);
      }

      v18 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_125;
      }

      v13 = a3;
      v71 = *(v70 + 16);
      v178[0] = *(v174 + 16);
      v72 = v173;

      sub_1D79E2F38(v72);
      v36 = v178[0];
      v73 = sub_1D7C7B268(v71, v172, v171, v175, v178[0]);

      if (v73)
      {
      }

      else
      {
        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
      }

      v68 = v187;
      a3 = v13;
      ++v35;
    }

    while (v18 != v13);
    v74 = v179;
    v37 = v166;
    v12 = MEMORY[0x1E69E6158];
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRelease();

  sub_1D7C896E0(v167);

  v170 = v74 & 0x8000000000000000;
  a3 = v74;
  v35 = v74;
LABEL_59:
  v75 = swift_allocObject();
  *(v75 + 16) = v161;
  v179 = 0;
  v180 = 0xE000000000000000;
  v76 = a3;
  if (a3 >> 62)
  {
    v157 = sub_1D7D3167C();
    v76 = a3;
    v18 = v157;
  }

  else
  {
    v18 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v187 = v76;
  v173 = a3 >> 62;
  if (v18)
  {
    v178[0] = MEMORY[0x1E69E7CC0];
    sub_1D7A5BDC8(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      goto LABEL_133;
    }

    v171 = v75;
    v172 = v35;
    v77 = 0;
    v78 = v178[0];
    v79 = v35 & 0xC000000000000001;
    v80 = a3;
    do
    {
      if (v79)
      {
        v81 = MEMORY[0x1DA70EF00](v77, v80);
      }

      else
      {
        v81 = *(v80 + 8 * v77 + 32);
      }

      v82 = [*(v81 + 16) identifier];
      v83 = sub_1D7D3034C();
      v85 = v84;

      v178[0] = v78;
      v87 = *(v78 + 16);
      v86 = *(v78 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_1D7A5BDC8((v86 > 1), v87 + 1, 1);
        v78 = v178[0];
      }

      ++v77;
      *(v78 + 16) = v87 + 1;
      v88 = v78 + 16 * v87;
      *(v88 + 32) = v83;
      *(v88 + 40) = v85;
      v80 = v187;
    }

    while (v18 != v77);
    v37 = v166;
    v12 = MEMORY[0x1E69E6158];
    v75 = v171;
    v35 = v172;
    v89 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v78 = MEMORY[0x1E69E7CC0];
    v89 = MEMORY[0x1E69E7CC0];
  }

  v90 = MEMORY[0x1DA70E0B0](v78, v12);
  v92 = v91;

  MEMORY[0x1DA70DE90](v90, v92);

  v93 = v179;
  v94 = v180;
  v95 = v165;
  *(v75 + 56) = v12;
  *(v75 + 64) = v95;
  *(v75 + 32) = v93;
  *(v75 + 40) = v94;
  v96 = sub_1D7D30C6C();
  sub_1D7D29AAC("Remaining headlines after rule filtering %@", 43, 2, &dword_1D7987000, v37, v96, v75);

  v179 = v89;
  v178[0] = v89;
  if (!v173)
  {
    v173 = v35 & 0xFFFFFFFFFFFFFF8;
    a3 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v169;
    if (!a3)
    {
      goto LABEL_100;
    }

    goto LABEL_74;
  }

  v173 = v35 & 0xFFFFFFFFFFFFFF8;
  a3 = sub_1D7D3167C();
  v36 = v169;
  if (a3)
  {
LABEL_74:
    v97 = 0;
    v13 = (v35 & 0xC000000000000001);
    v18 = v187 + 32;
    v172 = (v36 + 32);
    v98 = MEMORY[0x1E69E7CC0];
    v171 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v13)
      {
        v35 = MEMORY[0x1DA70EF00](v97, v187);
        v100 = __OFADD__(v97++, 1);
        if (v100)
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (v97 >= *(v173 + 16))
        {
          goto LABEL_124;
        }

        v35 = *(v18 + 8 * v97);

        v100 = __OFADD__(v97++, 1);
        if (v100)
        {
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          if (!sub_1D7D3167C())
          {
          }

          goto LABEL_18;
        }
      }

      if (v36)
      {
        v101 = *(v35 + 16);
        __swift_project_boxed_opaque_existential_1(v176 + 31, v176[34]);
        v102 = v101;
        v36 = v169;
        v103 = sub_1D7AAB828(v102);
        v104 = *(v36 + 16);
        if (v104)
        {
          v105 = v172;
          do
          {
            v107 = *v105++;
            v106 = v107;
            if (v107 > 2)
            {
              if ((v106 - 3) >= 2)
              {
                goto LABEL_93;
              }
            }

            else if (v106)
            {
              if (v106 == 1)
              {
                if ((v103 & 4) != 0)
                {
                  goto LABEL_93;
                }
              }

              else if ((v103 & 2) != 0)
              {
LABEL_93:

                MEMORY[0x1DA70E080](v108);
                if (*((v178[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1D7D306DC();
                  v36 = v169;
                }

                sub_1D7D3072C();

                v171 = v178[0];
                goto LABEL_78;
              }
            }

            --v104;
          }

          while (v104);
        }
      }

      MEMORY[0x1DA70E080](v99);
      if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D7D306DC();
        v36 = v169;
      }

      sub_1D7D3072C();

      v98 = v179;
LABEL_78:
      if (v97 == a3)
      {
        goto LABEL_101;
      }
    }
  }

LABEL_100:
  v98 = MEMORY[0x1E69E7CC0];
  v171 = MEMORY[0x1E69E7CC0];
LABEL_101:

  v109 = v167;
  v110 = v176;
  v111 = v164;
  v112 = v175;
  v187 = sub_1D7C7DC14(v98, v167, v176, a9, a10, v164, v175);
  v12 = sub_1D7C7DC14(v171, v109, v110, a9, a10, v111, v112);
  a3 = v187;

  v113 = swift_allocObject();
  v175 = xmmword_1D7D3B4E0;
  *(v113 + 16) = xmmword_1D7D3B4E0;
  v114 = type metadata accessor for EndOfArticleHeadlineModel();
  v115 = MEMORY[0x1DA70E0B0](a3, v114);
  v116 = MEMORY[0x1E69E6158];
  v117 = v165;
  *(v113 + 56) = MEMORY[0x1E69E6158];
  *(v113 + 64) = v117;
  *(v113 + 32) = v115;
  *(v113 + 40) = v118;
  v176 = v114;
  v119 = MEMORY[0x1DA70E0B0](v12, v114);
  *(v113 + 96) = v116;
  *(v113 + 104) = v117;
  *(v113 + 72) = v119;
  *(v113 + 80) = v120;
  v121 = sub_1D7D30C6C();
  sub_1D7D29AAC("Applied filter options to sort headlines to front and back. Front %@ Back %@", 76, 2, &dword_1D7987000, v166, v121, v113);

  v181 = a3;
  v182 = v12;

  if (a3 >> 62)
  {
    v123 = sub_1D7D3167C();
  }

  else
  {
    v123 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v123)
  {
    v18 = v12;
    goto LABEL_109;
  }

  v179 = 0xD000000000000012;
  v180 = 0x80000001D7D67580;
  MEMORY[0x1EEE9AC00](v123, v122);
  v159 = &v179;

  v124 = v162;
  v125 = v168;
  v126 = sub_1D7B8ABB4(sub_1D7C8AD3C, v158, v162);
  if (v126)
  {
    v168 = v125;
    goto LABEL_108;
  }

  v179 = 0xD000000000000018;
  v180 = 0x80000001D7D675A0;
  MEMORY[0x1EEE9AC00](v126, v127);
  v159 = &v179;
  v128 = sub_1D7B8ABB4(sub_1D7C8AD3C, v158, v124);
  v168 = v125;
  v18 = a3;
  if ((v128 & 1) == 0)
  {
    goto LABEL_117;
  }

LABEL_108:
  swift_beginAccess();
  sub_1D7B089AC(0, 0, a3, v129);
  swift_endAccess();

  v18 = v182;
LABEL_109:
  if (v18 >> 62)
  {
    v130 = sub_1D7D3167C();
  }

  else
  {
    v130 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v130)
  {
LABEL_115:

    sub_1D7C8A530(0);
    return swift_arrayDestroy();
  }

  v179 = 0xD000000000000012;
  v180 = 0x80000001D7D67580;
  MEMORY[0x1EEE9AC00](v130, v122);
  v159 = &v179;

  v131 = v162;
  v132 = v168;
  v133 = sub_1D7B8ABB4(sub_1D7C8AD3C, v158, v162);
  if (v133 & 1) != 0 || (v179 = 0xD000000000000018, v180 = 0x80000001D7D675A0, MEMORY[0x1EEE9AC00](v133, v134), v159 = &v179, (sub_1D7B8ABB4(sub_1D7C8AD3C, v158, v131)))
  {
    v168 = v132;
    swift_beginAccess();
    sub_1D7B089AC(0, 0, v18, v135);
    swift_endAccess();

    goto LABEL_115;
  }

  v168 = v132;
LABEL_117:
  sub_1D7C8A530(0);
  v138 = v137;
  result = swift_arrayDestroy();
  v173 = v138;
  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_135:
    MEMORY[0x1DA70EF00](0, v18);
    goto LABEL_120;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_120:

    v139 = swift_allocObject();
    *(v139 + 16) = v161;
    v140 = EndOfArticleHeadlineModel.description.getter();
    v141 = v165;
    *(v139 + 56) = MEMORY[0x1E69E6158];
    *(v139 + 64) = v141;
    *(v139 + 32) = v140;
    *(v139 + 40) = v142;
    v143 = sub_1D7D30C6C();
    sub_1D7D29AAC("Accepting headline %@", 21, 2, &dword_1D7987000, v166, v143, v139);

    v144 = v174;
    swift_beginAccess();

    MEMORY[0x1DA70E080](v145);
    if (*((*(v144 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v144 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D7D306DC();
      v144 = v174;
    }

    sub_1D7D3072C();
    swift_endAccess();
    sub_1D7C8A618(0, &qword_1EE0BE858, sub_1D7C8A530, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = v175;
    *(inited + 32) = a3;
    *(inited + 40) = v12;
    v147 = v168;
    v148 = sub_1D7C75FB8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v149 = sub_1D7C89790(v148, (v144 + 16));
    v168 = v147;

    swift_beginAccess();
    *(a11 + 16) = v149;

    v150 = swift_allocObject();
    *(v150 + 16) = v161;
    swift_beginAccess();

    v152 = MEMORY[0x1DA70E0B0](v151, v176);
    v154 = v153;

    v155 = v165;
    *(v150 + 56) = MEMORY[0x1E69E6158];
    *(v150 + 64) = v155;
    *(v150 + 32) = v152;
    *(v150 + 40) = v154;
    v156 = sub_1D7D30C6C();
    sub_1D7D29AAC("Extra headlines: %@", 19, 2, &dword_1D7987000, v166, v156, v150);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D7C7DC14(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v71 = sub_1D7D2E24C();
  v65 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v13);
  v70 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 8);
  if (v17 > 2)
  {
    if (v17 != 3)
    {
      if (v17 != 4)
      {

        v72[0] = sub_1D7C85B04(v25, sub_1D7B10FD4, sub_1D79E66A0);
        sub_1D7C77F88(v72, &selRef_computedGlobalScoreCoefficient);
        return v72[0];
      }

      goto LABEL_7;
    }

    return sub_1D7C89960(a1, a7);
  }

  else
  {
    if (!*(a2 + 8))
    {

      return a1;
    }

    if (v17 == 1)
    {
LABEL_7:

      v72[0] = sub_1D7C85B04(v18, sub_1D7B10FD4, sub_1D79E66A0);
      sub_1D7C77F0C(v72);
      return v72[0];
    }

    v20 = *(a2 + 40);
    v21 = *(a2 + 48);
    v22 = *(a2 + 65);
    v72[0] = 0xD000000000000012;
    v72[1] = 0x80000001D7D67580;
    MEMORY[0x1EEE9AC00](v14, v15);
    *(&v64 - 2) = v72;
    if (sub_1D7B8ABB4(sub_1D7C8AD3C, (&v64 - 4), v23))
    {

      v72[0] = sub_1D7C85B04(v24, sub_1D7B10FD4, sub_1D79E66A0);
      sub_1D7C77F88(v72, &selRef_personalizationScore);
      return v72[0];
    }

    swift_beginAccess();
    sub_1D7C7A96C(a1, a4, (a5 + 16));
    v27 = v26;
    swift_endAccess();
    if ((v22 & 1) == 0 && (v21 & 1) == 0)
    {
      v50 = sub_1D7B754D4(0, 1, a6);
      sub_1D7C89E7C(a1, v50, v27, v20);
      a1 = v51;

      return a1;
    }

    if (a1 >> 62)
    {
      goto LABEL_46;
    }

    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = v27;
    if (v28)
    {
LABEL_21:
      v29 = 0;
      v66 = a1 & 0xFFFFFFFFFFFFFF8;
      v67 = a1 & 0xC000000000000001;
      v30 = MEMORY[0x1E69E7CC8];
      v68 = a1;
      while (1)
      {
        if (v67)
        {
          a1 = MEMORY[0x1DA70EF00](v29, a1);
          v31 = (v29 + 1);
          if (__OFADD__(v29, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v29 >= *(v66 + 16))
          {
            goto LABEL_43;
          }

          a1 = *(a1 + 8 * v29 + 32);

          v31 = (v29 + 1);
          if (__OFADD__(v29, 1))
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            v28 = sub_1D7D3167C();
            v64 = v27;
            if (!v28)
            {
              break;
            }

            goto LABEL_21;
          }
        }

        v69 = v31;
        v32 = [*(a1 + 16) identifier];
        v33 = sub_1D7D3034C();
        v35 = v34;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72[0] = v30;
        v27 = v30;
        v38 = sub_1D7A18FFC(v33, v35);
        v40 = v30[2];
        v41 = (v37 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_44;
        }

        v43 = v37;
        if (v30[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v27 = v72;
            sub_1D7B98848(v39);
            if (v43)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          sub_1D7B9420C(v42, isUniquelyReferenced_nonNull_native, v39);
          v27 = v72[0];
          v44 = sub_1D7A18FFC(v33, v35);
          if ((v43 & 1) != (v45 & 1))
          {
            result = sub_1D7D31A2C();
            __break(1u);
            return result;
          }

          v38 = v44;
          if (v43)
          {
LABEL_22:

            v30 = v72[0];
            *(*(v72[0] + 56) + 8 * v38) = a1;

            goto LABEL_23;
          }
        }

        v30 = v72[0];
        *(v72[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
        v46 = (v30[6] + 16 * v38);
        *v46 = v33;
        v46[1] = v35;
        *(v30[7] + 8 * v38) = a1;

        v47 = v30[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_45;
        }

        v30[2] = v49;
LABEL_23:
        ++v29;
        a1 = v68;
        if (v69 == v28)
        {
          goto LABEL_48;
        }
      }
    }

    v30 = MEMORY[0x1E69E7CC8];
LABEL_48:
    v72[0] = MEMORY[0x1E69E7CC0];
    v52 = v64[2];
    if (v52)
    {
      v69 = *(v65 + 16);
      v53 = v64 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v54 = *(v65 + 72);
      v55 = (v65 + 8);
      v68 = MEMORY[0x1E69E7CC0];
      v69(v70, v53, v71);
      while (1)
      {
        v57 = [sub_1D7D2E23C() articleID];
        swift_unknownObjectRelease();
        v58 = sub_1D7D3034C();
        v60 = v59;

        if (!v30[2])
        {
          break;
        }

        sub_1D7A18FFC(v58, v60);
        v62 = v61;

        v56 = *v55;
        if ((v62 & 1) == 0)
        {
          goto LABEL_51;
        }

        v63 = v56(v70, v71);
        MEMORY[0x1DA70E080](v63);
        if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D7D306DC();
        }

        sub_1D7D3072C();
        v68 = v72[0];
LABEL_52:
        v53 += v54;
        if (!--v52)
        {

          return v68;
        }

        v69(v70, v53, v71);
      }

      v56 = *v55;
LABEL_51:
      v56(v70, v71);
      goto LABEL_52;
    }

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D7C7E32C(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5, void (*a6)(unint64_t *), unint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v25 = a10;
    if (a4)
    {
      v19 = sub_1D7D30C4C();
      if (qword_1EE0CA130 != -1)
      {
        v24 = v19;
        swift_once();
        v19 = v24;
      }

      sub_1D7D29ABC(v19, &dword_1D7987000, qword_1EE0CA138, "Encountered error when fetching configs, continuing with default merged config.", 79, 2, MEMORY[0x1E69E7CC0], a10);
      type metadata accessor for ArticleRecirculationConfigFactory();
      sub_1D7BAEB98(a8, 0, v26);
      a3 = 0;
      a2 = 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((Strong + 144), *(Strong + 168));
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D7BB010C(a1, a8, v26);
    }

    v23 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_1D7C88238(a9, v23, a2, a3, v25, a6, a7, v18);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_1D7C85E78();
    v20 = swift_allocError();
    *v21 = 2;
    v26[0] = v20;
    v27 = 1;
    a6(v26);
    return sub_1D7C89230(v26, &unk_1EE0C0308, &type metadata for ArticleRecirculationService.MergeResult, MEMORY[0x1E69D6AF8]);
  }
}

double sub_1D7C7E54C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a4;
  v93 = a3;
  v7 = sub_1D7D2DB3C();
  v100 = *(v7 - 8);
  v101 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v98 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1D7D2DB7C();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v10);
  v96 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v12 = 7104878;
  v13 = qword_1EE0CA138;
  v14 = sub_1D7D30C6C();
  sub_1D7D29AAC("Fetching configs", 16, 2, &dword_1D7987000, v13, v14, MEMORY[0x1E69E7CC0]);
  v15 = dispatch_group_create();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1D7D5D170;
  v104 = swift_allocObject();
  *(v104 + 16) = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = 0;
  dispatch_group_enter(v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v92 = v4;
  *(&v90 - 2) = v4;
  *(&v90 - 1) = a2;
  sub_1D7D294BC();

  v19 = sub_1D7D2934C();
  sub_1D7D293AC();

  v94 = v16;

  v20 = sub_1D7D2934C();
  sub_1D7D293DC();

  *(swift_allocObject() + 16) = v15;
  v91 = v15;
  v21 = sub_1D7D2934C();
  sub_1D7D2941C();

  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  v90 = xmmword_1D7D3B4D0;
  *(v22 + 16) = xmmword_1D7D3B4D0;
  aBlock = 0;
  v107 = 0xE000000000000000;
  v23 = [a1 publisherID];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1D7D3034C();
    v27 = v26;
  }

  else
  {
    v27 = 0xE300000000000000;
    v25 = 7104878;
  }

  MEMORY[0x1DA70DE90](v25, v27);

  v28 = aBlock;
  v29 = v107;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v30 = sub_1D79D6AE0();
  *(v22 + 64) = v30;
  *(v22 + 32) = v28;
  *(v22 + 40) = v29;
  v31 = sub_1D7D30C6C();
  sub_1D7D29AAC("Headline publisher ID: %@", 25, 2, &dword_1D7987000, v13, v31, v22);

  v32 = swift_allocObject();
  *(v32 + 16) = v90;
  aBlock = 0;
  v107 = 0xE000000000000000;
  v33 = [a1 surfacedBySectionID];
  if (v33)
  {
    v34 = v33;
    v12 = sub_1D7D3034C();
    v36 = v35;
  }

  else
  {
    v36 = 0xE300000000000000;
  }

  MEMORY[0x1DA70DE90](v12, v36);

  v37 = aBlock;
  v38 = v107;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = v30;
  *(v32 + 32) = v37;
  *(v32 + 40) = v38;
  v39 = sub_1D7D30C6C();
  sub_1D7D29AAC("Headline surfaced by section ID: %@", 35, 2, &dword_1D7987000, v13, v39, v32);

  v40 = [a1 publisherID];
  if (v40)
  {
    v41 = v40;
    v42 = sub_1D7D3034C();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v112 = v42;
  v113[0] = v44;
  v45 = [a1 surfacedBySectionID];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1D7D3034C();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = 0;
  v113[1] = v47;
  v113[2] = v49;
  v51 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v53 = &v113[2 * v50];
  while (++v50 != 3)
  {
    v54 = v53 + 2;
    v55 = *v53;
    v53 += 2;
    if (v55)
    {
      v56 = *(v54 - 3);

      v57 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1D79A8020(0, *(v52 + 2) + 1, 1, v52);
      }

      v59 = *(v52 + 2);
      v58 = *(v52 + 3);
      if (v59 >= v58 >> 1)
      {
        v52 = sub_1D79A8020((v58 > 1), v59 + 1, 1, v52);
      }

      *(v52 + 2) = v59 + 1;
      v60 = &v52[16 * v59];
      *(v60 + 4) = v56;
      *(v60 + 5) = v55;
      v51 = v57;
      goto LABEL_16;
    }
  }

  sub_1D7C8A6D4(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v61 = v91;
  dispatch_group_enter(v91);
  MEMORY[0x1EEE9AC00](v62, v63);
  *(&v90 - 2) = v92;
  *(&v90 - 1) = v52;
  sub_1D7B80F8C(0, &qword_1EE0BF200, &qword_1EE0BF070, &protocolRef_FCTagProviding);
  sub_1D7D294BC();
  v64 = swift_allocObject();
  v66 = v103;
  v65 = v104;
  v64[2] = a1;
  v64[3] = v66;
  v64[4] = v65;
  swift_unknownObjectRetain();

  v67 = sub_1D7D2934C();
  sub_1D7D293AC();

  *(swift_allocObject() + 16) = v52;
  v68 = sub_1D7D2934C();
  sub_1D7D293DC();

  *(swift_allocObject() + 16) = v61;
  v69 = v61;
  v70 = sub_1D7D2934C();
  sub_1D7D2941C();

  if ([a1 respondsToSelector_])
  {
    v71 = [a1 articleRecirculationConfigAssetHandle];
    if (v71)
    {
      v72 = v71;
      dispatch_group_enter(v69);
      MEMORY[0x1EEE9AC00](v73, v74);
      *(&v90 - 2) = v72;
      sub_1D7C8A6D4(0, &unk_1EE0CB750, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      sub_1D7D294BC();

      v75 = sub_1D7D2934C();
      sub_1D7D293AC();

      *(swift_allocObject() + 16) = v69;
      v76 = v69;
      v77 = sub_1D7D2934C();
      sub_1D7D2941C();
    }
  }

  v92 = v69;
  if (qword_1EE0C56A0 != -1)
  {
    swift_once();
  }

  v78 = swift_allocObject();
  v79 = v103;
  v80 = v104;
  v78[2] = v94;
  v78[3] = v79;
  v81 = v102;
  v78[4] = v80;
  v78[5] = v81;
  v82 = v95;
  v78[6] = v93;
  v78[7] = v82;
  v110 = sub_1D7C85DA4;
  v111 = v78;
  aBlock = MEMORY[0x1E69E9820];
  v107 = 1107296256;
  v108 = sub_1D79FE25C;
  v109 = &block_descriptor_57;
  v83 = _Block_copy(&aBlock);

  v84 = v96;
  sub_1D7D2DB5C();
  v105 = v51;
  sub_1D7C85C1C(&qword_1EE0BFA20, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v85 = MEMORY[0x1E69E7F60];
  sub_1D7C8A618(0, &qword_1EE0BF280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7C80AD0(&qword_1EE0BF270, &qword_1EE0BF280, v85);
  v86 = v98;
  v87 = v101;
  sub_1D7D313AC();
  v88 = v92;
  sub_1D7D30DDC();
  _Block_release(v83);

  (*(v100 + 8))(v86, v87);
  (*(v97 + 8))(v84, v99);

  return result;
}

uint64_t sub_1D7C7F1D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;

  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE0CA138;
  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D3B4D0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D79D6AE0();
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;

  v7 = sub_1D7D30C6C();
  sub_1D7D29AAC("Found app config article recirculation config JSON : %@", 55, 2, &dword_1D7987000, v5, v7, v6);
}

uint64_t sub_1D7C7F334(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  v5 = sub_1D7D30C4C();
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE0CA138;
  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D3B4D0;
  sub_1D798F168(0, &qword_1EE0BE7E0, MEMORY[0x1E69E7280]);
  sub_1D7D315DC();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D79D6AE0();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1D7D29ABC(v5, &dword_1D7987000, v6, a2, a3, 2, v7);
}

void sub_1D7C7F498(id *a1, void *a2, uint64_t *a3, void *a4)
{
  v7 = *a1;
  v8 = [*a1 identifier];
  v9 = sub_1D7D3034C();
  v11 = v10;

  v12 = [a2 publisherID];
  if (v12)
  {
    v13 = v12;
    v36 = a3;
    v14 = a4;
    v15 = sub_1D7D3034C();
    v17 = v16;

    if (v9 == v15 && v11 == v17)
    {

LABEL_14:
      if (qword_1EE0CA130 != -1)
      {
        swift_once();
      }

      v29 = qword_1EE0CA138;
      sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D7D3B4D0;
      sub_1D798C3BC(0, &qword_1EE0BF070, &protocolRef_FCTagProviding);
      sub_1D7D315DC();
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 64) = sub_1D79D6AE0();
      *(v30 + 32) = 0;
      *(v30 + 40) = 0xE000000000000000;
      v31 = sub_1D7D30C6C();
      sub_1D7D29AAC("Got back publisher tag %@", 25, 2, &dword_1D7987000, v29, v31, v30);

      swift_beginAccess();
      *v36 = v7;
      goto LABEL_21;
    }

    v19 = sub_1D7D3197C();

    a4 = v14;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v20 = [a2 surfacedBySectionID];
  if (!v20)
  {
    return;
  }

  v21 = v20;
  v22 = sub_1D7D3034C();
  v24 = v23;

  v25 = [v7 identifier];
  v26 = sub_1D7D3034C();
  v28 = v27;

  if (v26 == v22 && v28 == v24)
  {
  }

  else
  {
    v32 = sub_1D7D3197C();

    if ((v32 & 1) == 0)
    {
      return;
    }
  }

  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v33 = qword_1EE0CA138;
  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D7D3B4D0;
  sub_1D798C3BC(0, &qword_1EE0BF070, &protocolRef_FCTagProviding);
  sub_1D7D315DC();
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = sub_1D79D6AE0();
  *(v34 + 32) = 0;
  *(v34 + 40) = 0xE000000000000000;
  v35 = sub_1D7D30C6C();
  sub_1D7D29AAC("Got back surfaced by section tag %@", 35, 2, &dword_1D7987000, v33, v35, v34);

  swift_beginAccess();
  *a4 = v7;
LABEL_21:
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

uint64_t sub_1D7C7F8F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7D30C4C();
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE0CA138;
  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4E0;
  v6 = MEMORY[0x1E69E6158];
  v7 = MEMORY[0x1DA70E0B0](a2, MEMORY[0x1E69E6158]);
  v9 = v8;
  *(v5 + 56) = v6;
  v10 = sub_1D79D6AE0();
  *(v5 + 64) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_1D798F168(0, &qword_1EE0BE7E0, MEMORY[0x1E69E7280]);
  sub_1D7D315DC();
  *(v5 + 96) = v6;
  *(v5 + 104) = v10;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_1D7D29ABC(v3, &dword_1D7987000, v4, "Failed to fetch tags %@. %@", 27, 2, v5);
}

uint64_t sub_1D7C7FA7C(uint64_t a1)
{
  sub_1D7C85ECC(0, &unk_1EE0C02F8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

double sub_1D7C7FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = sub_1D7C85DF4;
  v11[5] = v10;
  v15[4] = sub_1D7C85E6C;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D79E9424;
  v15[3] = &block_descriptor_69_0;
  v12 = _Block_copy(v15);

  v13 = [a5 fetchDataProviderWithCompletion_];
  _Block_release(v12);
  swift_unknownObjectRelease();
  return result;
}

double sub_1D7C7FC3C(uint64_t a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v8 = v6;
LABEL_3:
    a3(v8);

    return result;
  }

  if (!a1)
  {
    sub_1D7C85E78();
    v8 = swift_allocError();
    v6 = v8;
    *v16 = 4;
    goto LABEL_3;
  }

  v11 = [swift_unknownObjectRetain() data];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D7D2827C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  a5(v13, v15);
  sub_1D79EA2D0(v13, v15);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1D7C7FD60(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  sub_1D79EA38C(v3, v4);
  return sub_1D79EA2D0(v5, v6);
}

void sub_1D7C7FDD8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v91 = v8;
  v92 = v9;
  v11 = v10;
  v12 = sub_1D7D3039C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C85ECC(0, &qword_1EE0BEAA8, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  swift_beginAccess();
  v18 = *(v11 + 24);
  v89[2] = v3;
  v90 = v5;
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = *(v11 + 16);
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_1D7D3038C();
    v21 = sub_1D7D3035C();
    v23 = v22;

    (*(v13 + 8))(v16, v12);
  }

  else
  {
LABEL_6:
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  v17[4] = v21;
  v17[5] = v23;
  v24 = v91;
  swift_beginAccess();
  v25 = *(v24 + 16);
  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = [v25 articleRecirculationConfigJSON];
  if (!v26)
  {
    goto LABEL_14;
  }

  v27 = v26;
  v28 = sub_1D7D3034C();
  v30 = v29;

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

LABEL_14:
    v32 = 0;
    v34 = 0xF000000000000000;
    goto LABEL_15;
  }

  sub_1D7D3038C();
  v32 = sub_1D7D3035C();
  v34 = v33;

  (*(v13 + 8))(v16, v12);
LABEL_15:
  v17[6] = v32;
  v17[7] = v34;
  v35 = v92;
  swift_beginAccess();
  v36 = *(v35 + 16);
  if (!v36)
  {
    goto LABEL_22;
  }

  v37 = [v36 articleRecirculationConfigJSON];
  if (!v37)
  {
    goto LABEL_22;
  }

  v38 = v37;
  v39 = sub_1D7D3034C();
  v41 = v40;

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {

LABEL_22:
    v43 = 0;
    v45 = 0xF000000000000000;
    goto LABEL_23;
  }

  sub_1D7D3038C();
  v43 = sub_1D7D3035C();
  v45 = v44;

  (*(v13 + 8))(v16, v12);
LABEL_23:
  v17[8] = v43;
  v17[9] = v45;
  swift_beginAccess();
  v46 = *(v7 + 16);
  v47 = *(v7 + 24);
  v17[10] = v46;
  v17[11] = v47;
  sub_1D79EA38C(v46, v47);
  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v50 = 4;
  v51 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if (v48 <= 4)
  {
    v52 = 4;
  }

  else
  {
    v52 = v48;
  }

  v53 = v52 + 1;
  v54 = 16 * v48 + 40;
  while (v48 != 4)
  {
    if (v53 == ++v48)
    {
      __break(1u);
      goto LABEL_62;
    }

    v55 = v54 + 16;
    v56 = *(v17 + v54);
    v54 += 16;
    if (v56 >> 60 != 15)
    {
      v57 = *(v17 + v55 - 24);
      sub_1D79EA338(v57, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1D79E5D1C(0, *(v51 + 2) + 1, 1, v51);
      }

      v59 = *(v51 + 2);
      v58 = *(v51 + 3);
      v60 = v51;
      if (v59 >= v58 >> 1)
      {
        v60 = sub_1D79E5D1C((v58 > 1), v59 + 1, 1, v51);
      }

      *(v60 + 2) = v59 + 1;
      v51 = v60;
      v61 = &v60[16 * v59];
      *(v61 + 4) = v57;
      *(v61 + 5) = v56;
      goto LABEL_24;
    }
  }

  swift_setDeallocating();
  sub_1D7C8A6D4(0, &unk_1EE0CB750, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62 = *(v51 + 2);
  if (v62)
  {
    v96[0] = v49;
    sub_1D7A5C828(0, v62, 0);
    v63 = v96[0];
    v94 = sub_1D7D28A9C();
    v64 = v62 - 1;
    v89[1] = v51;
    v65 = (v51 + 40);
    v93 = xmmword_1D7D3B4D0;
    while (1)
    {
      v66 = *(v65 - 1);
      v67 = *v65;
      swift_allocObject();
      sub_1D79EA338(v66, v67);
      sub_1D7D28A8C();
      sub_1D7B6A06C();
      sub_1D7D28A7C();
      sub_1D79EA2E4(v66, v67);

      memcpy(v97, v98, 0x450uLL);
      nullsub_1();
      memcpy(v99, v97, sizeof(v99));
      v96[0] = v63;
      v69 = *(v63 + 16);
      v68 = *(v63 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_1D7A5C828((v68 > 1), v69 + 1, 1);
        v63 = v96[0];
      }

      *(v63 + 16) = v69 + 1;
      memcpy((v63 + 1104 * v69 + 32), v99, 0x450uLL);
      if (!v64)
      {
        break;
      }

      v65 += 2;
      --v64;
    }

    v70 = *(v63 + 16);
    if (v70)
    {
LABEL_43:
      v95 = 0;
      v71 = 0;
      v50 = MEMORY[0x1E69E7CC0];
LABEL_44:
      v72 = (v63 + 32 + 1104 * v71);
      v73 = v71;
      while (v73 < *(v63 + 16))
      {
        memcpy(v98, v72, sizeof(v98));
        v71 = v73 + 1;
        memmove(v99, v72, 0x450uLL);
        if (sub_1D7BFA834(v99) != 1)
        {
          memcpy(v97, v98, 0x450uLL);
          sub_1D7BB5DC0(v97, v96);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_1D79E53DC(0, *(v50 + 16) + 1, 1, v50);
          }

          v75 = *(v50 + 16);
          v74 = *(v50 + 24);
          if (v75 >= v74 >> 1)
          {
            v50 = sub_1D79E53DC((v74 > 1), v75 + 1, 1, v50);
          }

          memcpy(v96, v98, sizeof(v96));
          *(v50 + 16) = v75 + 1;
          memcpy((v50 + 1104 * v75 + 32), v96, 0x450uLL);
          if (v70 - 1 != v73)
          {
            goto LABEL_44;
          }

          goto LABEL_57;
        }

        v72 += 1104;
        ++v73;
        if (v70 == v71)
        {
          goto LABEL_57;
        }
      }

LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
      goto LABEL_58;
    }
  }

  else
  {

    v63 = MEMORY[0x1E69E7CC0];
    v70 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v70)
    {
      goto LABEL_43;
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_57:

  if (qword_1EE0CA130 != -1)
  {
    goto LABEL_63;
  }

LABEL_58:
  v76 = qword_1EE0CA138;
  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1D7D3B4D0;
  v78 = MEMORY[0x1DA70E0B0](v50, &type metadata for ArticleRecirculationConfig);
  v80 = v79;
  *(v77 + 56) = MEMORY[0x1E69E6158];
  *(v77 + 64) = sub_1D79D6AE0();
  *(v77 + 32) = v78;
  *(v77 + 40) = v80;
  v81 = sub_1D7D30C6C();
  sub_1D7D29AAC("Got back final config set %@", 28, 2, &dword_1D7987000, v76, v81, v77);

  v82 = v90;
  if (*(v50 + 16))
  {
    v83 = v91;
    swift_beginAccess();
    v84 = *(v83 + 16);
    v85 = v92;
    swift_beginAccess();
    v86 = *(v85 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v82(v50, v84, v86, 0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    sub_1D7C85E78();
    v87 = swift_allocError();
    *v88 = 0;
    v82(v87, 0, 0, 1);
  }
}

uint64_t sub_1D7C8080C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 248));
  __swift_destroy_boxed_opaque_existential_1((v0 + 288));
  __swift_destroy_boxed_opaque_existential_1((v0 + 328));
  __swift_destroy_boxed_opaque_existential_1((v0 + 368));
  sub_1D7A3B3F0(*(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432));
  return v0;
}

uint64_t sub_1D7C80898()
{
  sub_1D7C8080C();

  return swift_deallocClassInstance();
}

void sub_1D7C80968(uint64_t a1)
{
  if (!qword_1EE0C0270)
  {
    sub_1D7B80F8C(255, &unk_1EE0BF1D0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding);
    v1 = sub_1D7D2947C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C0270);
    }
  }
}

uint64_t sub_1D7C809D8(uint64_t a1, char a2)
{
  if (a2)
  {
    return (*(v2 + 32))(a1);
  }

  else
  {
    return (*(v2 + 16))(a1);
  }
}

double block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D7C80AD0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D7C8A618(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7C80B34(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D798F168(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7C80BE0(uint64_t *a1, SEL *a2)
{
  v4 = a1[1];
  v5 = sub_1D7D318FC();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for EndOfArticleHeadlineModel();
        v8 = sub_1D7D3070C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_1D7C81978(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1D7C80F20(0, v4, 1, a1, a2);
  }
}

void sub_1D7C80CF0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D7D318FC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for EndOfArticleHeadlineModel();
        v6 = sub_1D7D3070C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D7C82190(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1D7C81078(0, v2, 1, a1);
  }
}

void sub_1D7C80DF4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1D7D318FC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D7D2E24C();
        v6 = sub_1D7D3070C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D7D2E24C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D7C83284(v8, v9, a1, v4);
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
    sub_1D7C816B4(0, v2, 1, a1);
  }
}

void sub_1D7C80F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_6:
    v10 = *(v7 + 8 * v6);
    v24 = v9;
    v25 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = *(v10 + 16);

      v13 = [v12 scoreProfile];
      if (!v13 || (v14 = v13, [v13 *a5], v16 = v15, v14, (v17 = objc_msgSend(*(v11 + 16), sel_scoreProfile)) == 0))
      {

LABEL_5:
        ++v6;
        v8 = v25 + 1;
        v9 = v24 - 1;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v18 = v17;
      [v17 *a5];
      v20 = v19;

      if (v20 >= v16)
      {
        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v21 = *v8;
      v10 = v8[1];
      *v8 = v10;
      v8[1] = v21;
      --v8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D7C81078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D7D2833C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v67 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = &v60 - v14;
  sub_1D7C8A584(0);
  v72 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C8A618(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v69 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v71 = &v60 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v70 = &v60 - v27;
  v61 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v77 = (v9 + 56);
    v73 = (v9 + 48);
    v74 = v28;
    v65 = (v9 + 32);
    v68 = (v9 + 8);
    v29 = (v28 + 8 * a3 - 8);
    v30 = a1 - a3;
    v31 = &selRef_addTarget_action_;
LABEL_5:
    v63 = v29;
    v64 = a3;
    v32 = *(v74 + 8 * a3);
    v62 = v30;
    v34 = v70;
    v33 = v71;
    while (1)
    {
      v75 = v30;
      v76 = v32;
      v35 = *v29;
      v36 = *(v32 + 16);

      v78 = v35;

      v37 = [v36 v31[136]];
      if (v37)
      {
        v38 = v37;
        sub_1D7D2830C();

        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v40 = *v77;
      v41 = 1;
      (*v77)(v34, v39, 1, v8);
      v42 = [*(v78 + 16) v31[136]];
      if (v42)
      {
        v43 = v42;
        sub_1D7D2830C();

        v41 = 0;
      }

      v40(v33, v41, 1, v8);
      v44 = *(v72 + 48);
      sub_1D7B07B18(v34, v18);
      sub_1D7B07B18(v33, &v18[v44]);
      v45 = *v73;
      if ((*v73)(&v18[v44], 1, v8) == 1)
      {
        v46 = v45(v18, 1, v8);
        sub_1D7C89734(&v18[v44], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v46 != 1)
        {
          sub_1D7C89734(v18, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        }

        v47 = v75;
      }

      else
      {
        v48 = v69;
        sub_1D7C89454(&v18[v44], v69, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v45(v18, 1, v8) == 1)
        {
          (*v68)(v48, v8);
          if (v45(v18, 1, v8) != 1)
          {
            goto LABEL_24;
          }

          sub_1D7C89734(&v18[v44], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

LABEL_4:
          a3 = v64 + 1;
          v29 = v63 + 1;
          v30 = v62 - 1;
          if (v64 + 1 == v61)
          {
            return;
          }

          goto LABEL_5;
        }

        v49 = v48;
        v50 = v66;
        v51 = *v65;
        (*v65)(v66, v18, v8);
        v52 = v67;
        v53 = v49;
        v33 = v71;
        v51(v67, v53, v8);
        sub_1D7D282AC();
        v55 = v54;
        v56 = *v68;
        (*v68)(v52, v8);
        v57 = v50;
        v34 = v70;
        v56(v57, v8);
        v31 = &selRef_addTarget_action_;
        sub_1D7C89734(&v18[v44], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

        v47 = v75;
        if (v55 <= 0.0)
        {
          goto LABEL_4;
        }
      }

      if (!v74)
      {
        break;
      }

      v58 = *v29;
      v32 = v29[1];
      *v29 = v32;
      v29[1] = v58;
      --v29;
      v59 = __CFADD__(v47, 1);
      v30 = v47 + 1;
      if (v59)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_24:
    sub_1D7D3196C();
    __break(1u);
  }
}

void sub_1D7C816B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D7D2E24C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v54 = &v40 - v13;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v53 = &v40 - v18;
  v42 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v51 = *(v16 + 16);
    v52 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v48 = (v16 + 32);
    v49 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v47 = -v20;
    v23 = a1 - a3;
    v41 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v45 = v22;
    v46 = a3;
    v43 = v24;
    v44 = v23;
    v25 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v53;
      v28 = v51;
      (v51)(v53, v24, v8, v17);
      v29 = v54;
      v28(v54, v26, v8);
      v30 = sub_1D7D2E21C();
      [v30 sortingScore];
      v32 = v31;

      v33 = sub_1D7D2E21C();
      [v33 sortingScore];
      v35 = v34;

      v36 = *v21;
      (*v21)(v29, v8);
      v36(v27, v8);
      if (v35 >= v32)
      {
LABEL_4:
        a3 = v46 + 1;
        v22 = &v45[v41];
        v23 = v44 - 1;
        v24 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v37 = *v48;
      v38 = v50;
      (*v48)(v50, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v37(v26, v38, v8);
      v26 += v47;
      v24 += v47;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D7C81978(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5)
{
  v7 = v6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v14 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    v5 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v110 = v5;
LABEL_107:
      v5 = *(v110 + 2);
      if (v5 >= 2)
      {
        while (*a3)
        {
          v111 = *&v110[16 * v5];
          v112 = v110;
          v113 = *&v110[16 * v5 + 24];
          sub_1D7C842B8((*a3 + 8 * v111), (*a3 + 8 * *&v110[16 * v5 + 16]), (*a3 + 8 * v113), v7, a5);
          if (v14)
          {
            goto LABEL_115;
          }

          if (v113 < v111)
          {
            goto LABEL_131;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v112 = sub_1D7B50220(v112);
          }

          if (v5 - 2 >= *(v112 + 2))
          {
            goto LABEL_132;
          }

          v114 = &v112[16 * v5];
          *v114 = v111;
          *(v114 + 1) = v113;
          sub_1D7B50194(v5 - 1);
          v110 = v112;
          v5 = *(v112 + 2);
          if (v5 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_142;
      }

LABEL_115:

      return;
    }

LABEL_138:
    v110 = sub_1D7B50220(v5);
    goto LABEL_107;
  }

  v9 = a5;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = &selRef_addTarget_action_;
  while (1)
  {
    v13 = v10;
    v14 = v10 + 1;
    if (v10 + 1 < v8)
    {
      v117 = v11;
      v119 = v10;
      v15 = *a3;
      v16 = *(*a3 + 8 * v14);
      v17 = *(*a3 + 8 * v10);
      v18 = *(v16 + 16);

      v19 = [v18 v12[477]];
      if (v19 && (v20 = v19, [v19 *a5], v22 = v21, v20, v12 = &selRef_addTarget_action_, (v23 = objc_msgSend(*(v17 + 16), sel_scoreProfile)) != 0))
      {
        v24 = v23;
        [v23 *a5];
        v26 = v25;

        v12 = &selRef_addTarget_action_;
        v5 = v26 < v22;
      }

      else
      {

        v5 = 0;
      }

      v13 = v119;
      v14 = v119 + 2;
      if (v119 + 2 >= v8)
      {
        v11 = v117;
        v9 = a5;
        if (v5)
        {
LABEL_18:
          if (v14 < v13)
          {
            goto LABEL_135;
          }

LABEL_24:
          if (v13 < v14)
          {
            v39 = 8 * v14 - 8;
            v40 = 8 * v13;
            v41 = v14;
            v42 = v13;
            do
            {
              if (v42 != --v41)
              {
                v44 = *a3;
                if (!*a3)
                {
                  goto LABEL_141;
                }

                v43 = *(v44 + v40);
                *(v44 + v40) = *(v44 + v39);
                *(v44 + v39) = v43;
              }

              ++v42;
              v39 -= 8;
              v40 += 8;
            }

            while (v42 < v41);
          }
        }
      }

      else
      {
        v27 = v15 + 8 * v119 + 16;
        do
        {
          v28 = v14;
          v29 = *(v27 - 8);
          v30 = *(*v27 + 16);

          v31 = [v30 v12[477]];
          if (v31 && (v32 = v31, [v31 *a5], v34 = v33, v32, v12 = &selRef_addTarget_action_, (v35 = objc_msgSend(*(v29 + 16), sel_scoreProfile)) != 0))
          {
            v36 = v35;
            [v35 *a5];
            v38 = v37;

            v12 = &selRef_addTarget_action_;
            if (v5 == v38 >= v34)
            {
              v11 = v117;
              v14 = v28;
              goto LABEL_21;
            }
          }

          else
          {

            if (v5)
            {
              v9 = a5;
              v14 = v28;
              v11 = v117;
              v13 = v119;
              if (v14 < v119)
              {
                goto LABEL_135;
              }

              goto LABEL_24;
            }
          }

          v14 = (v28 + 1);
          v27 += 8;
        }

        while (v8 != v28 + 1);
        v14 = v8;
        v11 = v117;
LABEL_21:
        v13 = v119;
        v9 = a5;
        if (v5)
        {
          goto LABEL_18;
        }
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v13))
      {
        goto LABEL_134;
      }

      if (v14 - v13 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v14 < v13)
    {
      goto LABEL_133;
    }

    v64 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v11 = v64;
    }

    else
    {
      v11 = sub_1D79E4688(0, *(v64 + 2) + 1, 1, v64);
    }

    v5 = *(v11 + 2);
    v65 = *(v11 + 3);
    v66 = v5 + 1;
    if (v5 >= v65 >> 1)
    {
      v11 = sub_1D79E4688((v65 > 1), v5 + 1, 1, v11);
    }

    *(v11 + 2) = v66;
    v67 = &v11[16 * v5];
    *(v67 + 4) = v13;
    *(v67 + 5) = v14;
    v124 = v14;
    v14 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v5)
    {
      while (1)
      {
        v68 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v69 = *(v11 + 4);
          v70 = *(v11 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_72:
          if (v72)
          {
            goto LABEL_122;
          }

          v85 = &v11[16 * v66];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_125;
          }

          v91 = &v11[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_129;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v66 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v95 = &v11[16 * v66];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_86:
        if (v90)
        {
          goto LABEL_124;
        }

        v98 = &v11[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_127;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_93:
        v5 = v68 - 1;
        if (v68 - 1 >= v66)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v106 = v11;
        v107 = *&v11[16 * v5 + 32];
        v108 = *&v11[16 * v68 + 40];
        sub_1D7C842B8((*a3 + 8 * v107), (*a3 + 8 * *&v11[16 * v68 + 32]), (*a3 + 8 * v108), v14, v9);
        if (v7)
        {
          goto LABEL_115;
        }

        if (v108 < v107)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1D7B50220(v106);
        }

        if (v5 >= *(v106 + 2))
        {
          goto LABEL_119;
        }

        v109 = &v106[16 * v5];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        sub_1D7B50194(v68);
        v11 = v106;
        v66 = *(v106 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v11[16 * v66 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_120;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_121;
      }

      v80 = &v11[16 * v66];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_123;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_126;
      }

      if (v84 >= v76)
      {
        v102 = &v11[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_130;
        }

        if (v71 < v105)
        {
          v68 = v66 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v10 = v124;
    v8 = a3[1];
    v12 = &selRef_addTarget_action_;
    if (v124 >= v8)
    {
      goto LABEL_104;
    }
  }

  v46 = v13 + a4;
  if (__OFADD__(v13, a4))
  {
    goto LABEL_136;
  }

  if (v46 >= v45)
  {
    v46 = a3[1];
  }

  if (v46 < v13)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v14 == v46)
  {
    goto LABEL_52;
  }

  v118 = v11;
  v115 = v7;
  v47 = *a3;
  v48 = (*a3 + 8 * v14 - 8);
  v49 = v13 - v14;
  v121 = v46;
LABEL_42:
  v122 = v48;
  v123 = v14;
  v50 = *(v47 + 8 * v14);
  v5 = v49;
  while (1)
  {
    v51 = *v48;
    v52 = *(v50 + 16);

    v53 = [v52 v12[477]];
    v54 = v12;
    if (!v53)
    {

      goto LABEL_41;
    }

    v55 = v53;
    [v53 *a5];
    v57 = v56;

    v58 = [*(v51 + 16) v54 + 2477];
    if (!v58)
    {

      v12 = &selRef_addTarget_action_;
LABEL_41:
      v14 = v123 + 1;
      v48 = v122 + 1;
      --v49;
      if ((v123 + 1) == v121)
      {
        v14 = v121;
        v7 = v115;
        v9 = a5;
        v11 = v118;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    v59 = v58;
    [v58 *a5];
    v61 = v60;

    v12 = &selRef_addTarget_action_;
    if (v61 >= v57)
    {
      goto LABEL_41;
    }

    if (!v47)
    {
      break;
    }

    v62 = *v48;
    v50 = v48[1];
    *v48 = v50;
    v48[1] = v62;
    --v48;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_41;
    }
  }

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
}

void sub_1D7C82190(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v161 = a1;
  v185 = sub_1D7D2833C();
  v6 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185, v7);
  v177 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v176 = &v160 - v11;
  sub_1D7C8A584(0);
  v182 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v160 - v18;
  sub_1D7C8A618(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v160 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v160 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v160 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v171 = a3;
  v41 = *(a3 + 8);
  if (v41 < 1)
  {
    v42 = MEMORY[0x1E69E7CC0];
LABEL_122:
    a3 = *v161;
    if (!*v161)
    {
      goto LABEL_161;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v172;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_155:
      v42 = sub_1D7B50220(v42);
    }

    v190 = v42;
    v156 = *(v42 + 2);
    if (v156 >= 2)
    {
      while (*v171)
      {
        v157 = *&v42[16 * v156];
        v158 = *&v42[16 * v156 + 24];
        sub_1D7C84678(*v171 + 8 * v157, (*v171 + 8 * *&v42[16 * v156 + 16]), (*v171 + 8 * v158), a3);
        if (v25)
        {
          goto LABEL_132;
        }

        if (v158 < v157)
        {
          goto LABEL_148;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1D7B50220(v42);
        }

        if (v156 - 2 >= *(v42 + 2))
        {
          goto LABEL_149;
        }

        v159 = &v42[16 * v156];
        *v159 = v157;
        *(v159 + 1) = v158;
        v190 = v42;
        sub_1D7B50194(v156 - 1);
        v42 = v190;
        v156 = *(v190 + 2);
        if (v156 <= 1)
        {
          goto LABEL_132;
        }
      }

      goto LABEL_159;
    }

LABEL_132:

    return;
  }

  v170 = &v160 - v38;
  v163 = v40;
  v186 = (v6 + 56);
  v181 = (v6 + 48);
  v174 = (v6 + 32);
  v175 = v39;
  v179 = (v6 + 8);
  v42 = MEMORY[0x1E69E7CC0];
  v160 = a4;
  v167 = v19;
  v43 = 0;
  v178 = v25;
  v184 = v29;
  v44 = a4;
  v164 = v35;
  while (1)
  {
    v45 = v43 + 1;
    v162 = v42;
    v165 = v43;
    if (v43 + 1 >= v41)
    {
      v42 = v185;
      goto LABEL_37;
    }

    v46 = v43;
    v169 = v41;
    a3 = *v171;
    v47 = *(*v171 + 8 * v45);
    v188 = *(*v171 + 8 * v43);
    v189 = v47;

    v48 = v172;
    LODWORD(v180) = sub_1D7C7A48C(&v189, &v188);
    v172 = v48;
    if (v48)
    {

      return;
    }

    v45 = v46 + 2;
    if (v46 + 2 < v169)
    {
      v173 = v46 + 2;
      v49 = a3 + 8 * v46 + 16;
      v50 = v170;
      while (1)
      {
        v52 = *(v49 - 8);
        v51 = *v49;
        v53 = *(*v49 + 16);

        v54 = [v53 publishDate];
        v183 = v51;
        if (v54)
        {
          v55 = v54;
          sub_1D7D2830C();

          v56 = 0;
        }

        else
        {
          v56 = 1;
        }

        v57 = *v186;
        v58 = 1;
        (*v186)(v50, v56, 1, v185);
        v59 = [*(v52 + 16) publishDate];
        v187 = v52;
        if (v59)
        {
          v60 = v59;
          sub_1D7D2830C();

          v58 = 0;
        }

        v61 = v185;
        v57(v35, v58, 1, v185);
        a3 = *(v182 + 48);
        v62 = v167;
        sub_1D7B07B18(v170, v167);
        sub_1D7B07B18(v35, v62 + a3);
        v63 = *v181;
        if ((*v181)(v62 + a3, 1, v61) == 1)
        {
          v64 = v63(v62, 1, v61);
          sub_1D7C89734(v62 + a3, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v64 != 1)
          {
            sub_1D7C89734(v62, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          }

          v50 = v170;
          if ((v180 & 1) == 0)
          {
            v44 = v160;
            v42 = v185;
            v25 = v178;
            v45 = v173;
            goto LABEL_37;
          }
        }

        else
        {
          v65 = v163;
          sub_1D7C89454(v62 + a3, v163, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v63(v62, 1, v61) == 1)
          {
            (*v179)(v65, v61);
            if (v63(v62, 1, v61) != 1)
            {
              goto LABEL_162;
            }

            sub_1D7C89734(v62 + a3, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

            v35 = v164;
            v50 = v170;
            if (v180)
            {
              v44 = v160;
              v42 = v185;
              v25 = v178;
              v45 = v173;
              v46 = v165;
              if (v173 < v165)
              {
LABEL_154:
                __break(1u);
                goto LABEL_155;
              }

LABEL_30:
              if (v46 < v45)
              {
                v73 = 8 * v45 - 8;
                v74 = 8 * v46;
                v75 = v45;
                do
                {
                  if (v46 != --v75)
                  {
                    v76 = *v171;
                    if (!*v171)
                    {
                      goto LABEL_158;
                    }

                    v77 = *(v76 + v74);
                    *(v76 + v74) = *(v76 + v73);
                    *(v76 + v73) = v77;
                  }

                  ++v46;
                  v73 -= 8;
                  v74 += 8;
                }

                while (v46 < v75);
              }

              goto LABEL_37;
            }
          }

          else
          {
            v66 = *v174;
            v67 = v176;
            (*v174)(v176, v62, v61);
            v68 = v177;
            v66(v177, v65, v61);
            sub_1D7D282AC();
            v70 = v69;
            v71 = *v179;
            (*v179)(v68, v61);
            v72 = v67;
            v29 = v184;
            v71(v72, v61);
            sub_1D7C89734(&v167[a3], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

            v35 = v164;
            v50 = v170;
            if ((v180 ^ (v70 > 0.0)))
            {
              v44 = v160;
              v25 = v178;
              v45 = v173;
LABEL_27:
              v46 = v165;
              goto LABEL_28;
            }
          }
        }

        v49 += 8;
        if (v169 == ++v173)
        {
          v45 = v169;
          v44 = v160;
          v25 = v178;
          goto LABEL_27;
        }
      }
    }

    v44 = v160;
LABEL_28:
    v42 = v185;
    if (v180)
    {
      if (v45 < v46)
      {
        goto LABEL_154;
      }

      goto LABEL_30;
    }

LABEL_37:
    v78 = v171[1];
    if (v45 >= v78)
    {
      goto LABEL_67;
    }

    if (__OFSUB__(v45, v165))
    {
      goto LABEL_151;
    }

    if (v45 - v165 >= v44)
    {
LABEL_67:
      v80 = v165;
      goto LABEL_68;
    }

    if (__OFADD__(v165, v44))
    {
      goto LABEL_152;
    }

    if (v165 + v44 >= v78)
    {
      v79 = v171[1];
    }

    else
    {
      v79 = v165 + v44;
    }

    if (v79 < v165)
    {
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v80 = v165;
    if (v45 != v79)
    {
      break;
    }

LABEL_68:
    v42 = v162;
    if (v45 < v80)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1D79E4688(0, *(v42 + 2) + 1, 1, v42);
    }

    a3 = *(v42 + 2);
    v110 = *(v42 + 3);
    v111 = a3 + 1;
    if (a3 >= v110 >> 1)
    {
      v42 = sub_1D79E4688((v110 > 1), a3 + 1, 1, v42);
    }

    *(v42 + 2) = v111;
    v112 = &v42[16 * a3];
    *(v112 + 4) = v165;
    *(v112 + 5) = v45;
    v173 = v45;
    v113 = *v161;
    if (!*v161)
    {
      goto LABEL_160;
    }

    if (a3)
    {
      while (1)
      {
        v25 = v111 - 1;
        if (v111 >= 4)
        {
          break;
        }

        if (v111 == 3)
        {
          v114 = *(v42 + 4);
          v115 = *(v42 + 5);
          v124 = __OFSUB__(v115, v114);
          v116 = v115 - v114;
          v117 = v124;
LABEL_88:
          if (v117)
          {
            goto LABEL_139;
          }

          v130 = &v42[16 * v111];
          v132 = *v130;
          v131 = *(v130 + 1);
          v133 = __OFSUB__(v131, v132);
          v134 = v131 - v132;
          v135 = v133;
          if (v133)
          {
            goto LABEL_142;
          }

          v136 = &v42[16 * v25 + 32];
          v138 = *v136;
          v137 = *(v136 + 1);
          v124 = __OFSUB__(v137, v138);
          v139 = v137 - v138;
          if (v124)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v134, v139))
          {
            goto LABEL_146;
          }

          if (v134 + v139 >= v116)
          {
            if (v116 < v139)
            {
              v25 = v111 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        v140 = &v42[16 * v111];
        v142 = *v140;
        v141 = *(v140 + 1);
        v124 = __OFSUB__(v141, v142);
        v134 = v141 - v142;
        v135 = v124;
LABEL_102:
        if (v135)
        {
          goto LABEL_141;
        }

        v143 = &v42[16 * v25];
        v145 = *(v143 + 4);
        v144 = *(v143 + 5);
        v124 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v124)
        {
          goto LABEL_144;
        }

        if (v146 < v134)
        {
          goto LABEL_3;
        }

LABEL_109:
        a3 = v25 - 1;
        if (v25 - 1 >= v111)
        {
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
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*v171)
        {
          goto LABEL_157;
        }

        v151 = *&v42[16 * a3 + 32];
        v152 = *&v42[16 * v25 + 40];
        v153 = v172;
        sub_1D7C84678(*v171 + 8 * v151, (*v171 + 8 * *&v42[16 * v25 + 32]), (*v171 + 8 * v152), v113);
        v172 = v153;
        if (v153)
        {
          goto LABEL_132;
        }

        if (v152 < v151)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1D7B50220(v42);
        }

        if (a3 >= *(v42 + 2))
        {
          goto LABEL_136;
        }

        v154 = &v42[16 * a3];
        *(v154 + 4) = v151;
        *(v154 + 5) = v152;
        v190 = v42;
        sub_1D7B50194(v25);
        v42 = v190;
        v111 = *(v190 + 2);
        if (v111 <= 1)
        {
          goto LABEL_3;
        }
      }

      v118 = &v42[16 * v111 + 32];
      v119 = *(v118 - 64);
      v120 = *(v118 - 56);
      v124 = __OFSUB__(v120, v119);
      v121 = v120 - v119;
      if (v124)
      {
        goto LABEL_137;
      }

      v123 = *(v118 - 48);
      v122 = *(v118 - 40);
      v124 = __OFSUB__(v122, v123);
      v116 = v122 - v123;
      v117 = v124;
      if (v124)
      {
        goto LABEL_138;
      }

      v125 = &v42[16 * v111];
      v127 = *v125;
      v126 = *(v125 + 1);
      v124 = __OFSUB__(v126, v127);
      v128 = v126 - v127;
      if (v124)
      {
        goto LABEL_140;
      }

      v124 = __OFADD__(v116, v128);
      v129 = v116 + v128;
      if (v124)
      {
        goto LABEL_143;
      }

      if (v129 >= v121)
      {
        v147 = &v42[16 * v25 + 32];
        v149 = *v147;
        v148 = *(v147 + 1);
        v124 = __OFSUB__(v148, v149);
        v150 = v148 - v149;
        if (v124)
        {
          goto LABEL_147;
        }

        if (v116 < v150)
        {
          v25 = v111 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_88;
    }

LABEL_3:
    v41 = v171[1];
    v43 = v173;
    v44 = v160;
    v25 = v178;
    if (v173 >= v41)
    {
      goto LABEL_122;
    }
  }

  v180 = *v171;
  a3 = v180 + 8 * v45 - 8;
  v81 = v165 - v45;
  v82 = &selRef_addTarget_action_;
  v166 = v79;
LABEL_48:
  v173 = v45;
  v83 = v81;
  v84 = *(v180 + 8 * v45);
  v168 = v81;
  v169 = a3;
  while (1)
  {
    v183 = v83;
    v85 = *a3;
    v86 = *(v84 + 16);

    v187 = v85;

    v87 = [v86 v82[136]];
    if (v87)
    {
      v88 = v87;
      sub_1D7D2830C();

      v89 = 0;
    }

    else
    {
      v89 = 1;
    }

    v90 = *v186;
    v91 = 1;
    (*v186)(v29, v89, 1, v42);
    v92 = [*(v187 + 16) v82[136]];
    if (v92)
    {
      v93 = v92;
      sub_1D7D2830C();

      v91 = 0;
    }

    v90(v25, v91, 1, v42);
    v94 = *(v182 + 48);
    sub_1D7B07B18(v184, v15);
    sub_1D7B07B18(v25, &v15[v94]);
    v95 = *v181;
    if ((*v181)(&v15[v94], 1, v42) == 1)
    {
      v96 = v95(v15, 1, v42);
      sub_1D7C89734(&v15[v94], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v96 != 1)
      {
        sub_1D7C89734(v15, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      }

      v29 = v184;
    }

    else
    {
      v97 = &v15[v94];
      v98 = v15;
      v99 = v175;
      sub_1D7C89454(v97, v175, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v95(v98, 1, v42) == 1)
      {
        (*v179)(v99, v42);
        if (v95(v98, 1, v42) != 1)
        {
          goto LABEL_162;
        }

        v15 = v98;
        sub_1D7C89734(&v98[v94], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

        v25 = v178;
        v29 = v184;
LABEL_47:
        v45 = v173 + 1;
        a3 = v169 + 8;
        v81 = v168 - 1;
        if (v173 + 1 == v166)
        {
          v45 = v166;
          v35 = v164;
          goto LABEL_67;
        }

        goto LABEL_48;
      }

      v100 = *v174;
      v101 = v176;
      (*v174)(v176, v98, v185);
      v102 = v177;
      v100(v177, v99, v185);
      v82 = &selRef_addTarget_action_;
      sub_1D7D282AC();
      v104 = v103;
      v105 = *v179;
      (*v179)(v102, v185);
      v106 = v101;
      v42 = v185;
      v105(v106, v185);
      sub_1D7C89734(&v98[v94], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

      v15 = v98;
      v25 = v178;
      v29 = v184;
      if (v104 <= 0.0)
      {
        goto LABEL_47;
      }
    }

    v107 = v183;
    if (!v180)
    {
      break;
    }

    v108 = *a3;
    v84 = *(a3 + 8);
    *a3 = v84;
    *(a3 + 8) = v108;
    a3 -= 8;
    v109 = __CFADD__(v107, 1);
    v83 = v107 + 1;
    if (v109)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  sub_1D7D3196C();
  __break(1u);
}

void sub_1D7C83284(int64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v8 = sub_1D7D2E24C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v140 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v149 = &v133 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v155 = &v133 - v16;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v17, v18);
  v154 = &v133 - v21;
  v146 = a3;
  v22 = a3[1];
  v144 = v19;
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v25 = *v137;
    if (!*v137)
    {
      goto LABEL_132;
    }

    v8 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v144;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v8 = sub_1D7B50220(v8);
    }

    v156 = v8;
    v129 = *(v8 + 16);
    if (v129 >= 2)
    {
      while (*v146)
      {
        v130 = *(v8 + 16 * v129);
        v131 = *(v8 + 16 * (v129 - 1) + 40);
        sub_1D7C852E4(&(*v146)[*(v24 + 9) * v130], &(*v146)[*(v24 + 9) * *(v8 + 16 * (v129 - 1) + 32)], &(*v146)[*(v24 + 9) * v131], v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v131 < v130)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D7B50220(v8);
        }

        if (v129 - 2 >= *(v8 + 16))
        {
          goto LABEL_120;
        }

        v132 = (v8 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v156 = v8;
        sub_1D7B50194(v129 - 1);
        v8 = v156;
        v129 = *(v156 + 16);
        if (v129 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v134 = a4;
  v23 = 0;
  v152 = (v19 + 8);
  v153 = v19 + 16;
  v151 = (v19 + 32);
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    v145 = v24;
    if (v23 + 1 >= v22)
    {
      v43 = v23 + 1;
    }

    else
    {
      v147 = v22;
      v136 = v5;
      v27 = *(v144 + 9);
      v28 = &(*v146)[v27 * v26];
      v142 = *v146;
      v29 = v142;
      v30 = *(v144 + 2);
      v31 = v154;
      (v30)(v154, &v142[v27 * v26], v8, v20);
      v32 = &v29[v27 * v23];
      v33 = v155;
      v148 = v30;
      (v30)(v155, v32, v8);
      v34 = sub_1D7D2E21C();
      [v34 sortingScore];
      v36 = v35;

      v37 = sub_1D7D2E21C();
      [v37 sortingScore];
      v39 = v38;

      v40 = *(v144 + 1);
      v40(v33, v8);
      v143 = v40;
      v40(v31, v8);
      v135 = v23;
      v41 = v23 + 2;
      v150 = v27;
      v42 = &v142[v27 * (v23 + 2)];
      while (1)
      {
        v43 = v147;
        if (v147 == v41)
        {
          break;
        }

        v44 = v154;
        v45 = v148;
        (v148)(v154, v42, v8);
        v46 = v155;
        (v45)(v155, v28, v8);
        v47 = sub_1D7D2E21C();
        [v47 sortingScore];
        v49 = v48;

        v50 = sub_1D7D2E21C();
        [v50 sortingScore];
        v52 = v51;

        v53 = v143;
        (v143)(v46, v8);
        v53(v44, v8);
        v24 = v145;
        ++v41;
        v42 += v150;
        v28 += v150;
        if (v39 < v36 == v52 >= v49)
        {
          v43 = v41 - 1;
          break;
        }
      }

      v5 = v136;
      v25 = v135;
      if (v39 < v36)
      {
        if (v43 < v135)
        {
          goto LABEL_123;
        }

        if (v135 < v43)
        {
          v54 = v43;
          v55 = v150 * (v43 - 1);
          v56 = v43 * v150;
          v147 = v43;
          v57 = v135;
          v58 = v135 * v150;
          do
          {
            if (v57 != --v54)
            {
              v59 = *v146;
              if (!*v146)
              {
                goto LABEL_129;
              }

              v60 = *v151;
              (*v151)(v140, &v59[v58], v8);
              if (v58 < v55 || &v59[v58] >= &v59[v56])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v58 != v55)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v60(&v59[v55], v140, v8);
              v24 = v145;
            }

            ++v57;
            v55 -= v150;
            v56 -= v150;
            v58 += v150;
          }

          while (v57 < v54);
          v5 = v136;
          v25 = v135;
          v43 = v147;
        }
      }
    }

    v61 = v146[1];
    if (v43 < v61)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_122;
      }

      if (v43 - v25 < v134)
      {
        if (__OFADD__(v25, v134))
        {
          goto LABEL_124;
        }

        if (v25 + v134 >= v61)
        {
          v62 = v146[1];
        }

        else
        {
          v62 = (v25 + v134);
        }

        if (v62 < v25)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v43 != v62)
        {
          break;
        }
      }
    }

    v23 = v43;
    if (v43 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1D79E4688(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_1D79E4688((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v25;
    *(v66 + 5) = v23;
    v67 = *v137;
    if (!*v137)
    {
      goto LABEL_131;
    }

    if (v64)
    {
      while (1)
      {
        v25 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v24 + 4);
          v69 = *(v24 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_52:
          if (v71)
          {
            goto LABEL_110;
          }

          v84 = &v24[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_113;
          }

          v90 = &v24[16 * v25 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_117;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v25 = v65 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v94 = &v24[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_66:
        if (v89)
        {
          goto LABEL_112;
        }

        v97 = &v24[16 * v25];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_115;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_73:
        v105 = v25 - 1;
        if (v25 - 1 >= v65)
        {
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
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v146)
        {
          goto LABEL_128;
        }

        v106 = *&v24[16 * v105 + 32];
        v107 = *&v24[16 * v25 + 40];
        sub_1D7C852E4(&(*v146)[*(v144 + 9) * v106], &(*v146)[*(v144 + 9) * *&v24[16 * v25 + 32]], &(*v146)[*(v144 + 9) * v107], v67);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v107 < v106)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D7B50220(v24);
        }

        if (v105 >= *(v24 + 2))
        {
          goto LABEL_107;
        }

        v108 = &v24[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v156 = v24;
        sub_1D7B50194(v25);
        v24 = v156;
        v65 = *(v156 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v24[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_108;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_109;
      }

      v79 = &v24[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_111;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_114;
      }

      if (v83 >= v75)
      {
        v101 = &v24[16 * v25 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_118;
        }

        if (v70 < v104)
        {
          v25 = v65 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = v146[1];
    if (v23 >= v22)
    {
      goto LABEL_94;
    }
  }

  v136 = v5;
  v109 = *v146;
  v110 = *(v144 + 9);
  v150 = *(v144 + 2);
  v111 = &v109[v110 * (v43 - 1)];
  v112 = -v110;
  v135 = v25;
  v113 = (v25 - v43);
  v148 = v109;
  v138 = v110;
  v114 = &v109[v43 * v110];
  v139 = v62;
LABEL_85:
  v147 = v43;
  v141 = v114;
  v142 = v113;
  v143 = v111;
  while (1)
  {
    v115 = v154;
    v116 = v150;
    (v150)(v154, v114, v8, v20);
    v117 = v155;
    v116(v155, v111, v8);
    v118 = sub_1D7D2E21C();
    [v118 sortingScore];
    v120 = v119;

    v121 = sub_1D7D2E21C();
    [v121 sortingScore];
    v123 = v122;

    v124 = *v152;
    (*v152)(v117, v8);
    v124(v115, v8);
    if (v123 >= v120)
    {
LABEL_84:
      v43 = v147 + 1;
      v111 = &v143[v138];
      v113 = v142 - 1;
      v114 = &v141[v138];
      v23 = v139;
      if ((v147 + 1) != v139)
      {
        goto LABEL_85;
      }

      v5 = v136;
      v24 = v145;
      v25 = v135;
      if (v139 < v135)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v148)
    {
      break;
    }

    v125 = *v151;
    v126 = v149;
    (*v151)(v149, v114, v8);
    swift_arrayInitWithTakeFrontToBack();
    v125(v111, v126, v8);
    v111 += v112;
    v114 += v112;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

uint64_t sub_1D7C83D10(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D7B50220(v8);
      v8 = result;
    }

    v86 = (v8 + 16);
    v87 = *(v8 + 16);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = (v8 + 16 * v87);
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_1D7C858D4((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_116;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = (*a3 + 32 * v9);
      v13 = *v11;
      v12 = v11 + 8;
      v14 = v13;
      v15 = v9 + 2;
      v16 = v10;
      while (v6 != v15)
      {
        v17 = *v12;
        v12 += 4;
        v18 = v16 >= v17;
        ++v15;
        v16 = v17;
        if ((((v14 < v10) ^ v18) & 1) == 0)
        {
          v7 = v15 - 1;
          if (v14 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v14 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 32 * v7 - 16;
        v20 = 32 * v9 + 24;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v29 + v20);
            v24 = (v29 + v19);
            v25 = *(v23 - 3);
            v26 = *(v23 - 1);
            v27 = *v23;
            v28 = *v24;
            *(v23 - 3) = *(v24 - 1);
            *(v23 - 1) = v28;
            *(v24 - 2) = v25;
            *(v24 - 8) = v26;
            *(v24 + 1) = v27;
          }

          ++v22;
          v19 -= 32;
          v20 += 32;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D79E4688(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v40 = *(v8 + 24);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_1D79E4688((v40 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v41;
    v42 = v8 + 32;
    v43 = (v8 + 32 + 16 * v5);
    *v43 = v9;
    v43[1] = v7;
    v95 = *v94;
    if (!*v94)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v8 + 32);
          v45 = *(v8 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = (v8 + 16 * v41);
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = (v42 + 16 * v5);
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v70 = (v8 + 16 * v41);
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = (v42 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v41)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v81 = (v42 + 16 * (v5 - 1));
        v82 = *v81;
        v83 = (v42 + 16 * v5);
        v84 = v83[1];
        sub_1D7C858D4((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *(v8 + 16);
        if (v5 >= v85)
        {
          goto LABEL_101;
        }

        v41 = v85 - 1;
        result = memmove((v42 + 16 * v5), v83 + 2, 16 * (v85 - 1 - v5));
        *(v8 + 16) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = v42 + 16 * v41;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = (v8 + 16 * v41);
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = (v42 + 16 * v5);
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v7 - 32;
  v32 = v9 - v7;
LABEL_30:
  v33 = *(v30 + 32 * v7);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (*v35 >= v33)
    {
LABEL_29:
      ++v7;
      v31 += 32;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 40);
    v37 = *(v35 + 56);
    v38 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v38;
    *v35 = v33;
    *(v35 + 8) = v36;
    *(v35 + 24) = v37;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D7C842B8(char *__dst, char *__src, char *a3, char *a4, SEL *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (a4 != __src || &__src[8 * v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v15 = &v5[8 * v14];
    if (v12 >= 8 && v7 > v8)
    {
      v33 = &selRef_addTarget_action_;
LABEL_31:
      v34 = v7 - 8;
      v6 -= 8;
      v35 = v15;
      v49 = v7;
      v50 = v7 - 8;
      do
      {
        v36 = *(v35 - 1);
        v35 -= 8;
        v37 = *v34;
        v38 = *(v36 + 16);

        v39 = [v38 v33[477]];
        if (v39)
        {
          v52 = v15;
          v40 = v33;
          v41 = v39;
          [v39 *a5];
          v43 = v42;

          v33 = v40;
          v44 = [*(v37 + 16) v40 + 2477];
          if (v44)
          {
            v45 = v44;
            [v44 *a5];
            v47 = v46;

            v33 = v40;
            v7 = v49;
            v15 = v52;
            if (v47 < v43)
            {
              if (v6 + 8 != v49)
              {
                *v6 = *v50;
              }

              if (v52 <= v5 || (v7 = v50, v50 <= v8))
              {
                v7 = v50;
                goto LABEL_47;
              }

              goto LABEL_31;
            }
          }

          else
          {

            v7 = v49;
            v15 = v52;
          }
        }

        else
        {
        }

        v34 = v50;
        if (v6 + 8 != v15)
        {
          *v6 = *v35;
        }

        v6 -= 8;
        v15 = v35;
      }

      while (v35 > v5);
      v15 = v35;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v15 = &v5[8 * v11];
    if (v9 >= 8 && v7 < v6)
    {
      v16 = &selRef_addTarget_action_;
      v17 = a5;
      while (1)
      {
        v18 = *v5;
        v19 = *(*v7 + 16);

        v20 = [v19 v16[477]];
        if (!v20)
        {
          break;
        }

        v51 = v5;
        v21 = *v17;
        v22 = v17;
        v23 = v16;
        v24 = v20;
        [v20 v21];
        v26 = v25;

        v16 = v23;
        v27 = [*(v18 + 16) v23 + 2477];
        if (!v27)
        {

          v5 = v51;
LABEL_20:
          v31 = v5;
          v32 = v8 == v5;
          v5 += 8;
          if (v32)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v8 = *v31;
          goto LABEL_22;
        }

        v28 = v27;
        [v27 *v22];
        v30 = v29;

        v16 = v23;
        v5 = v51;
        if (v30 >= v26)
        {
          goto LABEL_20;
        }

        v31 = v7;
        v32 = v8 == v7;
        v7 += 8;
        if (!v32)
        {
          goto LABEL_21;
        }

LABEL_22:
        v8 += 8;
        v17 = a5;
        if (v5 >= v15 || v7 >= v6)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_20;
    }

LABEL_24:
    v7 = v8;
  }

LABEL_47:
  if (v7 != v5 || v7 >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v7, v5, 8 * ((v15 - v5) / 8));
  }

  return 1;
}

uint64_t sub_1D7C84678(uint64_t a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1D7D2833C();
  v125 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v112 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v111 = &v109 - v13;
  sub_1D7C8A584(0);
  v120 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v109 - v20;
  sub_1D7C8A618(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v116 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v124 = (&v109 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v117 = &v109 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v123 = (&v109 - v40);
  v41 = &a2[-a1];
  v42 = v41 / 8;
  v119 = a3;
  v43 = a3 - a2;
  v44 = v43 / 8;
  v126 = a4;
  if (v41 / 8 >= v43 / 8)
  {
    v114 = v37;
    v122 = v39;
    v45 = a4;
    if (a4 != a2 || &a2[8 * v44] <= a4)
    {
      memmove(a4, a2, 8 * v44);
      v45 = v126;
    }

    v127 = &v45[8 * v44];
    if (v43 >= 8 && a2 > v122)
    {
      v79 = v124;
      v123 = (v125 + 56);
      v113 = (v125 + 48);
      v110 = (v125 + 32);
      v80 = (v125 + 8);
      v81 = v119;
LABEL_35:
      v121 = a2;
      v82 = a2 - 8;
      v83 = v127;
      v84 = v116;
      v115 = v82;
      while (1)
      {
        v85 = *(v83 - 1);
        v117 = v83 - 8;
        v86 = *v82;
        v87 = *(v85 + 16);
        v118 = v85;
        v119 = v81;

        v125 = v86;

        v88 = [v87 publishDate];
        if (v88)
        {
          v89 = v88;
          sub_1D7D2830C();

          v90 = 0;
        }

        else
        {
          v90 = 1;
        }

        v91 = *v123;
        v92 = 1;
        (*v123)(v79, v90, 1, v8);
        v93 = [*(v125 + 16) publishDate];
        v94 = v114;
        if (v93)
        {
          v95 = v93;
          sub_1D7D2830C();

          v92 = 0;
        }

        v91(v94, v92, 1, v8);
        v96 = *(v120 + 48);
        sub_1D7B07B18(v124, v17);
        sub_1D7B07B18(v94, &v17[v96]);
        v97 = *v113;
        if ((*v113)(&v17[v96], 1, v8) == 1)
        {
          v106 = v97(v17, 1, v8);
          sub_1D7C89734(&v17[v96], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v106 != 1)
          {
            sub_1D7C89734(v17, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          }

          v98 = v119;
          v81 = v119 - 8;
          v79 = v124;
LABEL_52:
          v69 = v98 == v121;
          v45 = v126;
          v107 = v115;
          if (!v69)
          {
            *v81 = *v115;
          }

          if (v127 <= v45 || (a2 = v107, v107 <= v122))
          {
            a2 = v107;
            break;
          }

          goto LABEL_35;
        }

        sub_1D7C89454(&v17[v96], v84, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v97(v17, 1, v8) == 1)
        {
          (*v80)(v84, v8);
          if (v97(v17, 1, v8) != 1)
          {
LABEL_63:
            result = sub_1D7D3196C();
            __break(1u);
            return result;
          }

          sub_1D7C89734(&v17[v96], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

          v98 = v119;
          v81 = v119 - 8;
          v79 = v124;
        }

        else
        {
          v99 = v111;
          v100 = *v110;
          (*v110)(v111, v17, v8);
          v101 = v112;
          v100(v112, v116, v8);
          sub_1D7D282AC();
          v103 = v102;
          v104 = *v80;
          (*v80)(v101, v8);
          v105 = v99;
          v84 = v116;
          v104(v105, v8);
          sub_1D7C89734(&v17[v96], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

          v98 = v119;
          v81 = v119 - 8;
          v79 = v124;
          if (v103 > 0.0)
          {
            goto LABEL_52;
          }
        }

        v45 = v126;
        v69 = v127 == v98;
        v82 = v115;
        v83 = v117;
        if (!v69)
        {
          *v81 = *v117;
        }

        v127 = v83;
        if (v83 <= v45)
        {
          v127 = v83;
          a2 = v121;
          break;
        }
      }
    }
  }

  else
  {
    v118 = v38;
    v45 = a4;
    v46 = v39;
    if (a4 != v39 || &v39[8 * v42] <= a4)
    {
      memmove(a4, v39, 8 * v42);
      v45 = v126;
    }

    v127 = &v45[8 * v42];
    if (v41 >= 8 && a2 < v119)
    {
      v47 = a2;
      v124 = (v125 + 56);
      v48 = (v125 + 48);
      v49 = (v125 + 8);
      v50 = &selRef_addTarget_action_;
      v51 = v123;
      v115 = (v125 + 8);
      v116 = (v125 + 32);
      while (1)
      {
        v122 = v46;
        v52 = *v47;
        v126 = v45;
        v53 = *v45;
        v54 = *(v52 + 16);

        v125 = v53;

        v55 = [v54 v50[136]];
        v121 = v47;
        if (v55)
        {
          v56 = v55;
          sub_1D7D2830C();

          v57 = 0;
        }

        else
        {
          v57 = 1;
        }

        v58 = *v124;
        v59 = 1;
        (*v124)(v51, v57, 1, v8);
        v60 = [*(v125 + 16) v50[136]];
        if (v60)
        {
          v61 = v60;
          v62 = v118;
          sub_1D7D2830C();

          v59 = 0;
        }

        else
        {
          v62 = v118;
        }

        v58(v62, v59, 1, v8);
        v63 = *(v120 + 48);
        sub_1D7B07B18(v123, v21);
        sub_1D7B07B18(v62, &v21[v63]);
        v64 = *v48;
        if ((*v48)(&v21[v63], 1, v8) == 1)
        {
          break;
        }

        v70 = v117;
        sub_1D7C89454(&v21[v63], v117, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v64(v21, 1, v8) == 1)
        {
          (*v49)(v70, v8);
          v71 = v64(v21, 1, v8);
          v66 = v119;
          if (v71 != 1)
          {
            goto LABEL_63;
          }

          sub_1D7C89734(&v21[v63], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

          v47 = v121;
          v51 = v123;
          v50 = &selRef_addTarget_action_;
        }

        else
        {
          v72 = *v116;
          v73 = v111;
          (*v116)(v111, v21, v8);
          v74 = v70;
          v75 = v112;
          v72(v112, v74, v8);
          v49 = v115;
          sub_1D7D282AC();
          v77 = v76;
          v78 = *v49;
          (*v49)(v75, v8);
          v78(v73, v8);
          sub_1D7C89734(&v21[v63], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

          v47 = v121;
          v66 = v119;
          v51 = v123;
          v50 = &selRef_addTarget_action_;
          if (v77 > 0.0)
          {
            goto LABEL_18;
          }
        }

        v67 = v126;
        v45 = v126 + 8;
        v68 = v122;
        if (v122 != v126)
        {
          goto LABEL_19;
        }

LABEL_20:
        v46 = (v68 + 1);
        if (v45 >= v127 || v47 >= v66)
        {
          goto LABEL_57;
        }
      }

      v65 = v64(v21, 1, v8);
      sub_1D7C89734(&v21[v63], &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      v66 = v119;
      if (v65 != 1)
      {
        sub_1D7C89734(v21, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      }

      v47 = v121;
      v51 = v123;
      v50 = &selRef_addTarget_action_;
LABEL_18:
      v67 = v47;
      v68 = v122;
      v69 = v122 == v47;
      v47 += 8;
      v45 = v126;
      if (v69)
      {
        goto LABEL_20;
      }

LABEL_19:
      *v68 = *v67;
      goto LABEL_20;
    }

LABEL_57:
    a2 = v46;
  }

  if (a2 != v45 || a2 >= &v45[(v127 - v45 + (v127 - v45 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v45, 8 * ((v127 - v45) / 8));
  }

  return 1;
}

void sub_1D7C852E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v70 = sub_1D7D2E24C();
  v8 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v9);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v68 = &v58 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_64;
  }

  v17 = (a2 - a1) / v15;
  v73 = a1;
  v72 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v19;
    if (v19 >= 1)
    {
      v37 = -v15;
      v62 = (v8 + 8);
      v63 = (v8 + 16);
      v38 = v36;
      v60 = a1;
      v61 = a4;
      v64 = -v15;
      do
      {
        v59 = v36;
        v39 = a2 + v37;
        v40 = v36;
        v66 = a2;
        v67 = a2 + v37;
        while (1)
        {
          if (a2 <= a1)
          {
            v73 = a2;
            v36 = v59;
            goto LABEL_60;
          }

          v42 = a3;
          v65 = v40;
          v43 = a3 + v37;
          v44 = v38 + v37;
          v45 = *v63;
          v46 = v39;
          v47 = v70;
          v48 = v68;
          (*v63)(v68, v44, v70);
          v49 = v46;
          v50 = v69;
          v45(v69, v49, v47);
          v51 = sub_1D7D2E21C();
          [v51 sortingScore];
          v53 = v52;

          v54 = sub_1D7D2E21C();
          [v54 sortingScore];
          v56 = v55;

          v57 = *v62;
          (*v62)(v50, v47);
          v57(v48, v47);
          if (v56 < v53)
          {
            break;
          }

          v40 = v44;
          a3 = v43;
          if (v42 < v38 || v43 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v67;
            a1 = v60;
          }

          else
          {
            v39 = v67;
            a1 = v60;
            if (v42 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v38 = v44;
          v41 = v44 > v61;
          v37 = v64;
          a2 = v66;
          if (!v41)
          {
            v36 = v40;
            goto LABEL_59;
          }
        }

        a3 = v43;
        if (v42 < v66 || v43 >= v66)
        {
          a2 = v67;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v37 = v64;
        }

        else
        {
          a2 = v67;
          a1 = v60;
          v37 = v64;
          if (v42 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v36 = v65;
      }

      while (v38 > v61);
    }

LABEL_59:
    v73 = a2;
LABEL_60:
    v71 = v36;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v18;
    v71 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v63 = *(v8 + 16);
      v64 = v8 + 16;
      v62 = (v8 + 8);
      v65 = a3;
      v67 = v15;
      do
      {
        v21 = a4;
        v22 = v68;
        v23 = v70;
        v24 = v63;
        (v63)(v68, a2, v70);
        v25 = v69;
        (v24)(v69, v21, v23);
        v26 = sub_1D7D2E21C();
        [v26 sortingScore];
        v28 = v27;

        v29 = sub_1D7D2E21C();
        [v29 sortingScore];
        v31 = v30;

        v32 = *v62;
        (*v62)(v25, v23);
        v32(v22, v23);
        if (v31 >= v28)
        {
          v35 = v67;
          a4 = v21 + v67;
          if (a1 < v21 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v65;
          }

          else
          {
            v34 = v65;
            if (a1 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v72 = a4;
        }

        else
        {
          v33 = a2 + v67;
          a4 = v21;
          if (a1 < a2 || a1 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v33;
            v34 = v65;
          }

          else
          {
            v34 = v65;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v33;
          }

          v35 = v67;
        }

        a1 += v35;
        v73 = a1;
      }

      while (a4 < v66 && a2 < v34);
    }
  }

  sub_1D7B5024C(&v73, &v72, &v71);
}

uint64_t sub_1D7C858D4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 4;
    v5 -= 4;
    v19 = v14;
    do
    {
      v20 = v5 + 4;
      v21 = *(v19 - 4);
      v19 -= 4;
      if (*v18 < v21)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 4, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 4;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v24 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

unint64_t sub_1D7C85B04(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1D7D3167C();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_1D7C85C10(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D7C85C1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7C85C64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  return (*(v4 + 8))(v2, v3, v4);
}

double sub_1D7C85D40(unint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *a1;
  swift_unknownObjectRetain();
  sub_1D7C89118(v5, v2, (v3 + 16), (v4 + 16));
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1D7C85DF4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t objectdestroy_4Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1D7C85E78()
{
  result = qword_1EE0BC140;
  if (!qword_1EE0BC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BC140);
  }

  return result;
}

void sub_1D7C85ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D7C8A6D4(255, &unk_1EE0CB750, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7C85F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2898C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27[-v13 - 8];
  Config = type metadata accessor for ArticleRecirculationFetchConfig(0);
  MEMORY[0x1EEE9AC00](Config, v16);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v30 = &type metadata for CombinedArticleRecirculationConfig.Section;
  v31 = &off_1F52A98F0;
  v19 = swift_allocObject();
  v29[0] = v19;
  v20 = *(a2 + 48);
  *(v19 + 48) = *(a2 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(a2 + 64);
  *(v19 + 96) = *(a2 + 80);
  v21 = *(a2 + 16);
  *(v19 + 16) = *a2;
  *(v19 + 32) = v21;
  sub_1D7C894C4(a1, v18, type metadata accessor for ArticleRecirculationFetchConfig);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        goto LABEL_17;
      }

      a3 = v18[2];
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_22;
      }

      a3 = v18[1];
    }

    else
    {
      a3 = *v18;
    }

LABEL_19:
    sub_1D7B653B4(a2, v27);
    goto LABEL_20;
  }

  (*(v7 + 32))(v14, v18, v6);
  v22 = __swift_project_boxed_opaque_existential_1(v29, v30);
  a3 = v22[5];
  v18 = v22[6];
  v23 = v22[7];
  (*(v7 + 16))(v10, v14, v6);
  v24 = (*(v7 + 88))(v10, v6);
  if (v24 == *MEMORY[0x1E69D7380])
  {
    sub_1D7B653B4(a2, v27);
    (*(v7 + 8))(v14, v6);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v29);
    return a3;
  }

  if (v24 == *MEMORY[0x1E69D7388])
  {
    sub_1D7B653B4(a2, v27);
    (*(v7 + 8))(v14, v6);
    if ((v18 + 0x800000000000000) >= 0)
    {
      a3 = 2 * v18;
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v24 == *MEMORY[0x1E69D7390])
  {
    sub_1D7B653B4(a2, v27);
    (*(v7 + 8))(v14, v6);
    a3 = 3 * v23;
    if ((v23 * 3) >> 64 == (3 * v23) >> 63)
    {
      goto LABEL_20;
    }

    __break(1u);
LABEL_17:
    if (a3 == 3)
    {
      a3 = v18[3];
      goto LABEL_19;
    }

LABEL_22:
    v28 = a3;
    sub_1D7B653B4(a2, v27);
    sub_1D7D319FC();
    __break(1u);
  }

  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

char *sub_1D7C86334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v190 = a8;
  v206 = a6;
  v207 = a7;
  v208 = a5;
  v192 = a2;
  v11 = _s15ArticleProviderOMa(0);
  v205 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v204 = v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v203 = v174 - v16;
  sub_1D7C892E8(0);
  v180 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v179 = v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = &type metadata for CombinedArticleRecirculationConfig;
  v225 = &off_1F52A9508;
  v223[0] = swift_allocObject();
  sub_1D7C8928C(a3, v223[0] + 16);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 16) = MEMORY[0x1E69E7CC0];
  v181 = v21 + 16;
  __swift_project_boxed_opaque_existential_1(v223, &type metadata for CombinedArticleRecirculationConfig);
  (off_1F52A9510)(a1, &v226);
  if (!*(&v227 + 1))
  {
    sub_1D7C8AA90(&v226, &unk_1EE0C0A00, &unk_1EE0C0A10, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataType);

    v105 = 0;
    goto LABEL_154;
  }

  v191 = v21;
  sub_1D79E14FC(&v226, v221);
  v23 = swift_allocObject();
  v188 = v23;
  *(v23 + 16) = v22;
  v176 = (v23 + 16);
  v187 = swift_allocObject();
  *(v187 + 16) = MEMORY[0x1E69E7CC8];
  v24 = swift_allocObject();
  v189 = v24;
  *(v24 + 16) = MEMORY[0x1E69E7CD0];
  v174[1] = v24 + 16;
  v25 = __swift_project_boxed_opaque_existential_1(v221, v222);
  v26 = *(v25 + 3);
  v233[2] = *(v25 + 2);
  v233[3] = v26;
  v233[4] = *(v25 + 4);
  v234 = v25[10];
  v27 = *(v25 + 1);
  v233[0] = *v25;
  v233[1] = v27;
  v28 = sub_1D7C85F58(a4, v233, a1);
  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v173 = v28;
    swift_once();
    v28 = v173;
LABEL_5:
    v30 = 0;
    v196 = qword_1EE0CA138;
    v31 = MEMORY[0x1E69E7740];
    v178 = (v18 + 8);
    v195 = xmmword_1D7D3B4D0;
    v175 = v28;
    while (1)
    {
      if (v30 >= v28)
      {
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      if (__OFADD__(v30, 1))
      {
        goto LABEL_162;
      }

      v177 = v30 + 1;
      sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, v31, MEMORY[0x1E69E6F90]);
      v194 = v32;
      v33 = swift_allocObject();
      *(v33 + 16) = v195;
      *&v214 = v30;
      v34 = sub_1D7D3190C();
      v36 = v35;
      *(v33 + 56) = MEMORY[0x1E69E6158];
      v193 = sub_1D79D6AE0();
      *(v33 + 64) = v193;
      *(v33 + 32) = v34;
      *(v33 + 40) = v36;
      v37 = sub_1D7D30C6C();
      sub_1D7D29AAC("Finding headlines for slot %@", 29, 2, &dword_1D7987000, v196, v37, v33);

      v38 = __swift_project_boxed_opaque_existential_1(v221, v222);
      v39 = v38[9];
      *&v214 = v38[10];
      sub_1D7C8937C(0);
      v40 = sub_1D7C85C1C(&unk_1EE0BF208, sub_1D7C8937C, MEMORY[0x1E69E6340]);

      v18 = v179;
      sub_1D7D309FC();
      v186 = v30;
      v213 = v30;
      v41 = v180;
      sub_1D7D28E6C();
      v28 = (*v178)(v18, v41);
      v42 = v209;
      v185 = v39;
      if (v209)
      {
        v43 = v209[2];
        v44 = *(v39 + 16);
        v21 = v44 + v43;
        if (__OFADD__(v44, v43))
        {
          goto LABEL_164;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v214 = v185;
        if (!isUniquelyReferenced_nonNull_native || v21 > *(v185 + 3) >> 1)
        {
          if (v44 <= v21)
          {
            v46 = v44 + v43;
          }

          else
          {
            v46 = v44;
          }

          v185 = sub_1D79E529C(isUniquelyReferenced_nonNull_native, v46, 1, v185);
          *&v214 = v185;
        }

        v21 = v203;
        sub_1D7BE3ACC(0, 0, v43, v42);
      }

      v28 = v185;
      v182 = *(v185 + 2);
      if (v182)
      {
        break;
      }

LABEL_46:

      v30 = v177;
      v28 = v175;
      v29 = v192;
      v31 = MEMORY[0x1E69E7740];
      if (v177 == v175)
      {
        goto LABEL_47;
      }
    }

    v47 = 0;
    v183 = v185 + 32;
    while (1)
    {
      if (v47 >= *(v28 + 16))
      {
LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

      v48 = &v183[112 * v47];
      v49 = v48[3];
      v50 = v48[4];
      v51 = v48[5];
      v232 = v48[6];
      v52 = *v48;
      v53 = v48[1];
      v54 = v48[2];
      v230 = v50;
      v231 = v51;
      v228 = v54;
      v229 = v49;
      v226 = v52;
      v227 = v53;
      v55 = *(&v232 + 1);
      v235[0] = *(&v232 + 1);
      v199 = *(*(&v232 + 1) + 16);
      if (v199)
      {
        break;
      }

LABEL_21:
      if (++v47 == v182)
      {
        goto LABEL_46;
      }
    }

    v184 = v47;
    v198 = *(&v232 + 1) + 32;
    sub_1D7C893F8(&v226, &v214);
    sub_1D7C89454(v235, &v214, &qword_1EE0BF230, sub_1D79E6DC8, MEMORY[0x1E69E62F8]);
    v28 = swift_beginAccess();
    v56 = 0;
    v197 = v55;
    while (1)
    {
      if (v56 >= *(v55 + 2))
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      v201 = v56;
      v62 = *(v198 + 8 * v56);
      a1 = *(v62 + 16);

      if (a1)
      {
        break;
      }

      v64 = MEMORY[0x1E69E7CC0];
LABEL_40:

      if (*(v64 + 16))
      {
        v200 = dispatch_semaphore_create(0);
        v69 = swift_allocObject();
        *(v69 + 16) = v195;
        v209 = 0;
        v210 = 0xE000000000000000;
        v218 = v230;
        v219 = v231;
        v220 = v232;
        v214 = v226;
        v215 = v227;
        v216 = v228;
        v217 = v229;
        sub_1D7D315DC();
        v70 = v209;
        v71 = v210;
        v72 = v193;
        *(v69 + 56) = MEMORY[0x1E69E6158];
        *(v69 + 64) = v72;
        *(v69 + 32) = v70;
        *(v69 + 40) = v71;
        v73 = sub_1D7D30C6C();
        sub_1D7D29AAC("Trying rule %@", 14, 2, &dword_1D7987000, v196, v73, v69);

        MEMORY[0x1EEE9AC00](v74, v75);
        v76 = v190;
        v174[-4] = v190;
        v174[-3] = v64;
        v77 = v208;
        v174[-2] = &v226;
        v174[-1] = v77;
        sub_1D7C8A6D4(0, &qword_1EE0BF340, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69E62F8]);
        sub_1D7D294BC();

        sub_1D799CC84(v221, &v214);
        v78 = swift_allocObject();
        v79 = v231;
        *(v78 + 80) = v230;
        *(v78 + 96) = v79;
        *(v78 + 112) = v232;
        v80 = v227;
        *(v78 + 16) = v226;
        *(v78 + 32) = v80;
        v81 = v229;
        *(v78 + 48) = v228;
        *(v78 + 64) = v81;
        v18 = v189;
        *(v78 + 128) = v189;
        *(v78 + 136) = v76;
        *(v78 + 144) = v77;
        sub_1D79E14FC(&v214, v78 + 152);
        v82 = v191;
        v83 = v192;
        *(v78 + 192) = v191;
        *(v78 + 200) = v83;
        v85 = v187;
        v84 = v188;
        *(v78 + 208) = v202;
        *(v78 + 216) = v85;
        *(v78 + 224) = v84;
        sub_1D7C893F8(&v226, &v214);

        swift_unknownObjectRetain();

        v86 = sub_1D7D2934C();
        sub_1D7D293AC();

        v40 = swift_allocObject();
        v87 = v200;
        *(v40 + 16) = v200;
        v88 = v87;
        v89 = sub_1D7D2934C();
        sub_1D7D2941C();

        sub_1D7D30F2C();
        v90 = *(v82 + 16);
        if (v90 >> 62)
        {
          v91 = sub_1D7D3167C();
        }

        else
        {
          v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a1 = v202;
        v21 = v203;
        if (v186 < v91)
        {
          sub_1D7C89734(v235, &qword_1EE0BF230, sub_1D79E6DC8, MEMORY[0x1E69E62F8]);
          sub_1D7C896E0(&v226);
          goto LABEL_20;
        }
      }

      else
      {

        v57 = swift_allocObject();
        *(v57 + 16) = v195;
        v209 = 0;
        v210 = 0xE000000000000000;
        v218 = v230;
        v219 = v231;
        v220 = v232;
        v214 = v226;
        v215 = v227;
        v216 = v228;
        v217 = v229;
        sub_1D7D315DC();
        v58 = v209;
        v59 = v210;
        v60 = v193;
        *(v57 + 56) = MEMORY[0x1E69E6158];
        *(v57 + 64) = v60;
        *(v57 + 32) = v58;
        *(v57 + 40) = v59;
        v61 = sub_1D7D30C6C();
        sub_1D7D29AAC("Found no valid article providers for rule %@", 44, 2, &dword_1D7987000, v196, v61, v57);

        a1 = v202;
      }

      v56 = v201 + 1;
      v55 = v197;
      if (v201 + 1 == v199)
      {
        sub_1D7C896E0(&v226);
        sub_1D7C89734(v235, &qword_1EE0BF230, sub_1D79E6DC8, MEMORY[0x1E69E62F8]);
LABEL_20:
        v47 = v184;
        v28 = v185;
        goto LABEL_21;
      }
    }

    v63 = 0;
    v64 = MEMORY[0x1E69E7CC0];
    while (v63 < *(v62 + 16))
    {
      v65 = (*(v205 + 80) + 32) & ~*(v205 + 80);
      v18 = *(v205 + 72);
      sub_1D7C894C4(v62 + v65 + v18 * v63, v21, _s15ArticleProviderOMa);
      v55 = v21;
      if (sub_1D7A85A9C(&v226, v208, v206, v207))
      {
        sub_1D7C8958C(v21, v204, _s15ArticleProviderOMa);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        *&v214 = v64;
        if ((v66 & 1) == 0)
        {
          v55 = &v214;
          sub_1D7A5C7D8(0, *(v64 + 16) + 1, 1);
          v64 = v214;
        }

        v68 = *(v64 + 16);
        v67 = *(v64 + 24);
        v40 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          v55 = &v214;
          sub_1D7A5C7D8((v67 > 1), v68 + 1, 1);
          v64 = v214;
        }

        *(v64 + 16) = v40;
        sub_1D7C8958C(v204, v64 + v65 + v68 * v18, _s15ArticleProviderOMa);
        v21 = v203;
      }

      else
      {
        sub_1D7C8952C(v21, _s15ArticleProviderOMa);
      }

      if (a1 == ++v63)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v202 = a1;
  v29 = v192;
  v21 = v203;
  if (v28)
  {
    if (qword_1EE0CA130 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_165;
  }

LABEL_47:
  v40 = v29 >> 62;
  if (v29 >> 62)
  {
    v92 = sub_1D7D3167C();
  }

  else
  {
    v92 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v55 = MEMORY[0x1E69E7CC0];
  if (v92)
  {
    *&v214 = MEMORY[0x1E69E7CC0];
    result = sub_1D7A5BDC8(0, v92 & ~(v92 >> 63), 0);
    if (v92 < 0)
    {
      __break(1u);
      return result;
    }

    v94 = 0;
    v55 = v214;
    v95 = v192;
    v96 = v192 & 0xC000000000000001;
    do
    {
      if (v96)
      {
        v97 = MEMORY[0x1DA70EF00](v94);
      }

      else
      {
        v97 = *(v95 + 8 * v94 + 32);
      }

      v98 = [*(v97 + 16) identifier];
      v99 = sub_1D7D3034C();
      v101 = v100;

      *&v214 = v55;
      v103 = *(v55 + 2);
      v102 = *(v55 + 3);
      if (v103 >= v102 >> 1)
      {
        sub_1D7A5BDC8((v102 > 1), v103 + 1, 1);
        v55 = v214;
      }

      ++v94;
      *(v55 + 2) = v103 + 1;
      v104 = &v55[v103];
      *(v104 + 4) = v99;
      *(v104 + 5) = v101;
      a1 = v202;
      v95 = v192;
    }

    while (v92 != v94);
  }

LABEL_61:
  v106 = sub_1D7BDE0A4(v55);

  if (v40)
  {
    v110 = v192;
    v108 = v192 & 0xFFFFFFFFFFFFFF8;
    v28 = sub_1D7D3167C();
    v107 = v110;
    v109 = v28;
  }

  else
  {
    v107 = v192;
    v108 = v192 & 0xFFFFFFFFFFFFFF8;
    v109 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v109)
  {
    v111 = 0;
    v112 = v107 & 0xC000000000000001;
    do
    {
      v21 = v111;
      while (1)
      {
        if (v112)
        {
          v28 = MEMORY[0x1DA70EF00](v21, v107);
          v113 = v28;
          v111 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_156;
          }
        }

        else
        {
          if (v21 >= *(v108 + 16))
          {
            goto LABEL_157;
          }

          v113 = *(v107 + 8 * v21 + 32);

          v111 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_156;
          }
        }

        v114 = [*(v113 + 16) clusterID];
        if (v114)
        {
          break;
        }

        ++v21;
        v107 = v192;
        if (v111 == v109)
        {
          goto LABEL_81;
        }
      }

      v115 = v114;
      v116 = sub_1D7D3034C();
      v207 = v117;

      v28 = swift_isUniquelyReferenced_nonNull_native();
      if ((v28 & 1) == 0)
      {
        v28 = sub_1D79A8020(0, *(v18 + 16) + 1, 1, v18);
        v18 = v28;
      }

      v119 = *(v18 + 16);
      v118 = *(v18 + 24);
      v107 = v192;
      if (v119 >= v118 >> 1)
      {
        v28 = sub_1D79A8020((v118 > 1), v119 + 1, 1, v18);
        v107 = v192;
        v18 = v28;
      }

      *(v18 + 16) = v119 + 1;
      v120 = v18 + 16 * v119;
      v121 = v207;
      *(v120 + 32) = v116;
      *(v120 + 40) = v121;
      a1 = v202;
    }

    while (v111 != v109);
  }

LABEL_81:
  v21 = sub_1D7BDE0A4(v18);

  v122 = v176;
  swift_beginAccess();
  v123 = *v122;
  v209 = MEMORY[0x1E69E7CC0];
  if (v123 >> 62)
  {
    v124 = sub_1D7D3167C();
  }

  else
  {
    v124 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v125 = MEMORY[0x1E69E7CC0];
  v203 = v123;
  if (!v124)
  {
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_106;
  }

  v126 = 0;
  v206 = (v123 & 0xFFFFFFFFFFFFFF8);
  v207 = (v123 & 0xC000000000000001);
  v204 = (v123 + 32);
  v205 = v21;
  v18 = v106 + 56;
  while (v207)
  {
    a1 = MEMORY[0x1DA70EF00](v126, v203);
    v127 = __OFADD__(v126++, 1);
    if (v127)
    {
      goto LABEL_103;
    }

LABEL_90:
    v128 = v124;
    v129 = [*(a1 + 16) identifier];
    v130 = sub_1D7D3034C();
    v132 = v131;

    if (*(v106 + 16) && (sub_1D7D31A8C(), sub_1D7D303FC(), v133 = sub_1D7D31ABC(), v134 = -1 << *(v106 + 32), v135 = v133 & ~v134, ((*(v18 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135) & 1) != 0))
    {
      v136 = ~v134;
      while (1)
      {
        v137 = (*(v106 + 48) + 16 * v135);
        v138 = *v137 == v130 && v137[1] == v132;
        if (v138 || (sub_1D7D3197C() & 1) != 0)
        {
          break;
        }

        v135 = (v135 + 1) & v136;
        if (((*(v18 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135) & 1) == 0)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
LABEL_85:

      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      v28 = sub_1D7D3154C();
    }

    v124 = v128;
    v138 = v126 == v128;
    a1 = v202;
    v21 = v205;
    if (v138)
    {
      goto LABEL_104;
    }
  }

  if (v126 >= *(v206 + 2))
  {
    goto LABEL_158;
  }

  a1 = *&v204[8 * v126];

  v127 = __OFADD__(v126++, 1);
  if (!v127)
  {
    goto LABEL_90;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  v18 = v209;
  v125 = MEMORY[0x1E69E7CC0];
LABEL_106:

  v209 = v125;
  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v28 = sub_1D7D3167C();
    v139 = v28;
    v140 = v191;
    if (!v28)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v139 = *(v18 + 16);
    v140 = v191;
    if (!v139)
    {
      goto LABEL_132;
    }
  }

  v141 = 0;
  v206 = (v18 + 32);
  v207 = (v18 & 0xC000000000000001);
  v142 = v21 + 56;
  v204 = v18;
  while (2)
  {
    if (v207)
    {
      v143 = MEMORY[0x1DA70EF00](v141, v18);
      v127 = __OFADD__(v141++, 1);
      if (v127)
      {
        goto LABEL_130;
      }

LABEL_116:
      v144 = [*(v143 + 16) clusterID];
      if (v144)
      {
        v145 = v139;
        v146 = v144;
        v147 = sub_1D7D3034C();
        v149 = v148;

        if (*(v21 + 16))
        {
          sub_1D7D31A8C();
          sub_1D7D303FC();
          v150 = sub_1D7D31ABC();
          v151 = -1 << *(v21 + 32);
          v152 = v150 & ~v151;
          if ((*(v142 + ((v152 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v152))
          {
            v153 = ~v151;
            while (1)
            {
              v154 = (*(v21 + 48) + 16 * v152);
              v155 = *v154 == v147 && v154[1] == v149;
              if (v155 || (sub_1D7D3197C() & 1) != 0)
              {
                break;
              }

              v152 = (v152 + 1) & v153;
              if (((*(v142 + ((v152 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v152) & 1) == 0)
              {
                goto LABEL_110;
              }
            }

            v139 = v145;
            v18 = v204;
LABEL_112:
            v140 = v191;
            a1 = v202;
            if (v141 == v139)
            {
              goto LABEL_131;
            }

            continue;
          }
        }

LABEL_110:

        v139 = v145;
        v18 = v204;
      }

      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      v28 = sub_1D7D3154C();
      goto LABEL_112;
    }

    break;
  }

  if (v141 >= *(v18 + 16))
  {
    goto LABEL_159;
  }

  v143 = *(v206 + v141);

  v127 = __OFADD__(v141++, 1);
  if (!v127)
  {
    goto LABEL_116;
  }

LABEL_130:
  __break(1u);
LABEL_131:
  v125 = v209;
LABEL_132:

  v156 = *(__swift_project_boxed_opaque_existential_1(v221, v222) + 33);
  if (v156 > 2)
  {
    if (v156 == 3 || v156 == 4)
    {
LABEL_137:
      v157 = sub_1D7D3197C();

      if (v157)
      {
        goto LABEL_145;
      }
    }

    v158 = *(__swift_project_boxed_opaque_existential_1(v221, v222) + 33);
    if (v158 > 2)
    {
      if (v158 == 3)
      {
        goto LABEL_142;
      }

      if (v158 != 4)
      {
        goto LABEL_147;
      }
    }

    v159 = sub_1D7D3197C();

    if ((v159 & 1) == 0)
    {
LABEL_147:
      v207 = v125;
      sub_1D799CC84(v190 + 288, &v214);
      v160 = __swift_project_boxed_opaque_existential_1(&v214, *(&v215 + 1));
      v161 = [v208 publisherID];
      if (v161)
      {
        v162 = v161;
        v163 = sub_1D7D3034C();
        v165 = v164;
      }

      else
      {
        v163 = 0;
        v165 = 0;
      }

      __swift_project_boxed_opaque_existential_1(v223, v224);
      v166 = sub_1D7BB3D2C(a1);
      if (!v166)
      {
        v166 = sub_1D7A51868(MEMORY[0x1E69E7CC0]);
      }

      sub_1D7CE88D8(&v209, *v160, v163, v165, v166);

      v167 = v211;
      v168 = v212;
      __swift_project_boxed_opaque_existential_1(&v209, v211);
      swift_beginAccess();
      v169 = *(v140 + 16);
      swift_beginAccess();
      v170 = *(v189 + 16);
      v208 = *(v168 + 8);
      v171 = type metadata accessor for EndOfArticleHeadlineModel();
      v172 = sub_1D7C85C1C(&qword_1EE0C6288, type metadata accessor for EndOfArticleHeadlineModel, &protocol conformance descriptor for EndOfArticleHeadlineModel);

      v105 = (v208)(v169, v207, v170, v171, &off_1F52B1B90, v172, v167, v168);

      __swift_destroy_boxed_opaque_existential_1(&v209);
      __swift_destroy_boxed_opaque_existential_1(&v214);

      __swift_destroy_boxed_opaque_existential_1(v221);
      goto LABEL_153;
    }

LABEL_145:

    goto LABEL_146;
  }

  if (v156 <= 1)
  {
    goto LABEL_137;
  }

LABEL_142:

LABEL_146:
  swift_beginAccess();
  v105 = *(v140 + 16);

  __swift_destroy_boxed_opaque_existential_1(v221);
LABEL_153:

LABEL_154:
  __swift_destroy_boxed_opaque_existential_1(v223);
  return v105;
}

char *sub_1D7C87AA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v53 = &type metadata for CombinedArticleRecirculationConfig.Section;
  v54 = &off_1F52A98F0;
  v8 = swift_allocObject();
  v52[0] = v8;
  v9 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a4 + 64);
  *(v8 + 96) = *(a4 + 80);
  v10 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v10;
  if (*(a1 + 32))
  {
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = objc_opt_self();
  sub_1D7B653B4(a4, &v50);

  v13 = [v12 mainBundle];
  v14 = [v13 bundleIdentifier];

  if (!v14)
  {
    goto LABEL_54;
  }

  v15 = sub_1D7D3034C();
  v17 = v16;

  if (v15 == 0x6C7070612E6D6F63 && v17 == 0xEE007377656E2E65)
  {
  }

  else
  {
    v19 = sub_1D7D3197C();

    if ((v19 & 1) == 0)
    {
LABEL_54:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D79E5C10(0, *(v11 + 2) + 1, 1, v11);
      }

      v46 = *(v11 + 2);
      v45 = *(v11 + 3);
      if (v46 >= v45 >> 1)
      {
        v11 = sub_1D79E5C10((v45 > 1), v46 + 1, 1, v11);
      }

      *(v11 + 2) = v46 + 1;
      v42 = &v11[v46];
LABEL_59:
      v42[32] = 4;
      goto LABEL_60;
    }
  }

  v20 = [*(a2 + 232) cachedSubscription];
  if (objc_getAssociatedObject(v20, v20 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  v21 = MEMORY[0x1E69E7CA0];
  if (!*(&v49 + 1))
  {
    sub_1D7C89230(&v50, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    goto LABEL_20;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v22 = 0;
    v24 = 0;
    goto LABEL_21;
  }

  v22 = v47;
  v23 = [v47 integerValue];
  if (v23 == -1)
  {

    goto LABEL_32;
  }

  v24 = v23;
LABEL_21:
  if (objc_getAssociatedObject(v20, ~v24))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (!*(&v49 + 1))
  {
    sub_1D7C89230(&v50, &qword_1EE0BE7A0, v21 + 8, MEMORY[0x1E69E6720]);
LABEL_29:

    if ((v24 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_32;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

  v25 = v47;
  v26 = [v25 integerValue];

  if (((v26 ^ v24) & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_32:
  v27 = [a3 sourceChannel];
  if (v27)
  {
    v28 = [v27 identifier];
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = [a3 sourceChannelID];
    if (!v28)
    {
      goto LABEL_48;
    }
  }

  v29 = sub_1D7D3034C();
  v31 = v30;

  result = [*(a2 + 16) configuration];
  if (result)
  {
    v33 = result;
    if ([result respondsToSelector_])
    {
      v34 = [v33 channelPaywallConfigsByChannelID];
      swift_unknownObjectRelease();
      sub_1D7992EFC(0, &qword_1EC9E7BC8, 0x1E69B5200);
      v35 = sub_1D7D3028C();

      if (*(v35 + 16))
      {
        v36 = sub_1D7A18FFC(v29, v31);
        v38 = v37;

        if (v38)
        {
          v39 = *(*(v35 + 56) + 8 * v36);

          if (([v39 filterALaCartePaidArticlesForPaidBundleSubscribers] & 1) == 0)
          {

            goto LABEL_60;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1D79E5C10(0, *(v11 + 2) + 1, 1, v11);
          }

          v41 = *(v11 + 2);
          v40 = *(v11 + 3);
          if (v41 >= v40 >> 1)
          {
            v11 = sub_1D79E5C10((v40 > 1), v41 + 1, 1, v11);
          }

          *(v11 + 2) = v41 + 1;
          v42 = &v11[v41];
          goto LABEL_59;
        }
      }

      else
      {
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

LABEL_48:
    v43 = *(__swift_project_boxed_opaque_existential_1(v52, v53) + 33);
    if (v43 > 2)
    {
      if (v43 != 3 && v43 != 4)
      {
        goto LABEL_54;
      }
    }

    else if (v43 > 1)
    {

      goto LABEL_60;
    }

    v44 = sub_1D7D3197C();

    if (v44)
    {
LABEL_60:
      __swift_destroy_boxed_opaque_existential_1(v52);
      return v11;
    }

    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C88164(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) identifier];
  v4 = sub_1D7D3034C();
  v6 = v5;

  v7 = [*(v2 + 16) identifier];
  v8 = sub_1D7D3034C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D7D3197C();
  }

  return v12 & 1;
}

uint64_t sub_1D7C88238(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(unint64_t *), unint64_t a7, uint64_t a8)
{
  v98[1] = a7;
  v99 = a6;
  v102 = a5;
  v104 = a4;
  v103 = a3;
  v101 = a1;
  v10 = sub_1D7D2DBAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = &type metadata for CombinedArticleRecirculationConfig;
  v124 = &off_1F52A9508;
  v122 = swift_allocObject();
  sub_1D7C8928C(a2, v122 + 16);
  if (qword_1EE0C56A0 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v15 = qword_1EE0C56B0;
    *v14 = qword_1EE0C56B0;
    (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
    v16 = v15;
    LOBYTE(v15) = sub_1D7D2DBCC();
    v17 = *(v11 + 8);
    v11 += 8;
    v17(v14, v10);
    if (v15)
    {
      if (qword_1EE0CA130 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v18 = qword_1EE0CA138;
    v19 = sub_1D7D30C6C();
    v20 = MEMORY[0x1E69E7CC0];
    v113 = v18;
    sub_1D7D29AAC("Finding primary headlines", 25, 2, &dword_1D7987000, v18, v19, MEMORY[0x1E69E7CC0]);
    v21 = __swift_project_boxed_opaque_existential_1(&v122, v123);
    v22 = sub_1D7C86334(0, v20, v21, v102, v101, v103, v104, a8);
    v10 = v22;
    v112 = v22;
    v100 = a8;
    if (!v22)
    {
      goto LABEL_20;
    }

    a8 = v22 & 0xFFFFFFFFFFFFFF8;
    v14 = v22 >> 62 ? sub_1D7D3167C() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v14)
    {
      break;
    }

    v23 = 0;
    v111 = v10 & 0xC000000000000001;
    v109 = 0x80000001D7D7CA90;
    v108 = xmmword_1D7D3B4D0;
    v110 = v14;
    while (v111)
    {
      v27 = MEMORY[0x1DA70EF00](v23, v10);
      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_14:
      sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v29 = swift_allocObject();
      *(v29 + 16) = v108;
      v30 = 0xE000000000000000;
      v114 = 0;
      v115 = 0xE000000000000000;
      sub_1D7D3145C();

      v114 = 0xD00000000000001DLL;
      v115 = v109;
      v31 = *(v27 + 16);
      v32 = [v31 identifier];
      v33 = sub_1D7D3034C();
      v35 = v34;

      MEMORY[0x1DA70DE90](v33, v35);

      MEMORY[0x1DA70DE90](0x3A656C74697420, 0xE700000000000000);
      v36 = [v31 title];
      if (v36)
      {
        v37 = v36;
        v24 = sub_1D7D3034C();
        v30 = v38;
      }

      else
      {
        v24 = 0;
      }

      MEMORY[0x1DA70DE90](v24, v30);

      v25 = v114;
      v11 = v115;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1D79D6AE0();
      *(v29 + 32) = v25;
      *(v29 + 40) = v11;
      v26 = sub_1D7D30C6C();
      sub_1D7D29AAC("Found primary headline %@", 25, 2, &dword_1D7987000, v113, v26, v29);

      ++v23;
      v14 = v110;
      v10 = v112;
      if (v28 == v110)
      {
        goto LABEL_19;
      }
    }

    if (v23 < *(a8 + 16))
    {
      v27 = *(v10 + 8 * v23 + 32);

      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
  }

LABEL_19:

  v20 = v10;
  a8 = v100;
LABEL_20:
  v39 = sub_1D7D30C6C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D7D29AAC("Finding secondary headlines", 27, 2, &dword_1D7987000, v113, v39, MEMORY[0x1E69E7CC0]);
  v40 = __swift_project_boxed_opaque_existential_1(&v122, v123);

  v10 = sub_1D7C86334(1, v20, v40, v102, v101, v103, v104, a8);

  v110 = v20;
  v111 = v10;
  if (v10)
  {
    a8 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      v14 = sub_1D7D3167C();
    }

    else
    {
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14)
    {
      v41 = 0;
      v109 = v10 & 0xC000000000000001;
      v107 = 0x80000001D7D7CA90;
      v106 = xmmword_1D7D3B4D0;
      *&v108 = v14;
      do
      {
        if (v109)
        {
          v49 = MEMORY[0x1DA70EF00](v41, v10);
          v50 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v41 >= *(a8 + 16))
          {
            goto LABEL_70;
          }

          v49 = *(v10 + 8 * v41 + 32);

          v50 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
LABEL_34:
            __break(1u);
            break;
          }
        }

        sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v51 = swift_allocObject();
        *(v51 + 16) = v106;
        v45 = 0xE000000000000000;
        v114 = 0;
        v115 = 0xE000000000000000;
        sub_1D7D3145C();

        v114 = 0xD00000000000001DLL;
        v115 = v107;
        v52 = *(v49 + 16);
        v53 = [v52 identifier];
        v11 = sub_1D7D3034C();
        v55 = v54;

        MEMORY[0x1DA70DE90](v11, v55);

        MEMORY[0x1DA70DE90](0x3A656C74697420, 0xE700000000000000);
        v56 = [v52 title];
        if (v56)
        {
          v42 = v56;
          v43 = sub_1D7D3034C();
          v45 = v44;
        }

        else
        {
          v43 = 0;
        }

        MEMORY[0x1DA70DE90](v43, v45);

        v46 = v114;
        v47 = v115;
        *(v51 + 56) = MEMORY[0x1E69E6158];
        *(v51 + 64) = sub_1D79D6AE0();
        *(v51 + 32) = v46;
        *(v51 + 40) = v47;
        v48 = sub_1D7D30C6C();
        sub_1D7D29AAC("Found secondary headline %@", 27, 2, &dword_1D7987000, v113, v48, v51);

        ++v41;
        v14 = v108;
        v10 = v111;
      }

      while (v50 != v108);
    }

    v11 = v10;
    a8 = v100;
    v20 = v110;
  }

  v57 = sub_1D7D30C6C();
  v58 = MEMORY[0x1E69E7CC0];
  sub_1D7D29AAC("Finding tertiary headlines", 26, 2, &dword_1D7987000, v113, v57, MEMORY[0x1E69E7CC0]);
  v114 = v20;

  v98[0] = v11;
  sub_1D79E2F38(v11);
  v59 = v114;
  v60 = __swift_project_boxed_opaque_existential_1(&v122, v123);
  v11 = sub_1D7C86334(2, v59, v60, v102, v101, v103, v104, a8);

  v109 = v11;
  if (v11)
  {
    a8 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v14 = sub_1D7D3167C();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14)
    {
      v10 = 0;
      *&v108 = v11 & 0xC000000000000001;
      *&v106 = 0x80000001D7D7CA90;
      v105 = xmmword_1D7D3B4D0;
      v107 = v14;
      do
      {
        if (v108)
        {
          v65 = MEMORY[0x1DA70EF00](v10, v11);
          v66 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v10 >= *(a8 + 16))
          {
            goto LABEL_71;
          }

          v65 = *(v11 + 8 * v10 + 32);

          v66 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_50:
            __break(1u);
            break;
          }
        }

        sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v67 = swift_allocObject();
        *(v67 + 16) = v105;
        v68 = 0xE000000000000000;
        v114 = 0;
        v115 = 0xE000000000000000;
        sub_1D7D3145C();

        v114 = 0xD00000000000001DLL;
        v115 = v106;
        v69 = *(v65 + 16);
        v70 = [v69 identifier];
        v71 = sub_1D7D3034C();
        v73 = v72;

        MEMORY[0x1DA70DE90](v71, v73);

        MEMORY[0x1DA70DE90](0x3A656C74697420, 0xE700000000000000);
        v74 = [v69 title];
        if (v74)
        {
          v75 = v74;
          v61 = sub_1D7D3034C();
          v68 = v76;
        }

        else
        {
          v61 = 0;
        }

        MEMORY[0x1DA70DE90](v61, v68);

        v62 = v114;
        v63 = v115;
        *(v67 + 56) = MEMORY[0x1E69E6158];
        *(v67 + 64) = sub_1D79D6AE0();
        *(v67 + 32) = v62;
        *(v67 + 40) = v63;
        v64 = sub_1D7D30C6C();
        sub_1D7D29AAC("Found tertiary headline %@", 26, 2, &dword_1D7987000, v113, v64, v67);

        ++v10;
        v14 = v107;
        v11 = v109;
        v20 = v110;
      }

      while (v66 != v107);
    }

    v58 = v11;
    a8 = v100;
  }

  v77 = sub_1D7D30C6C();
  sub_1D7D29AAC("Finding quaternary headlines", 28, 2, &dword_1D7987000, v113, v77, MEMORY[0x1E69E7CC0]);
  v121 = v20;

  sub_1D79E2F38(v98[0]);

  sub_1D79E2F38(v58);
  v14 = v121;
  v78 = __swift_project_boxed_opaque_existential_1(&v122, v123);
  v10 = sub_1D7C86334(3, v14, v78, v102, v101, v103, v104, a8);

  if (v10)
  {
    a8 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      v79 = sub_1D7D3167C();
    }

    else
    {
      v79 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v79)
    {
      v80 = 0;
      v110 = v10 & 0xC000000000000001;
      *&v106 = 0x80000001D7D7CA90;
      v105 = xmmword_1D7D3B4D0;
      *&v108 = v10;
      v107 = v79;
      do
      {
        if (v110)
        {
          v88 = MEMORY[0x1DA70EF00](v80, v10);
          v89 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v80 >= *(a8 + 16))
          {
            goto LABEL_72;
          }

          v88 = *(v10 + 8 * v80 + 32);

          v89 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
LABEL_66:
            __break(1u);
            break;
          }
        }

        v90 = a8;
        sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v11 = swift_allocObject();
        *(v11 + 16) = v105;
        v84 = 0xE000000000000000;
        v114 = 0;
        v115 = 0xE000000000000000;
        sub_1D7D3145C();

        v114 = 0xD00000000000001DLL;
        v115 = v106;
        v91 = *(v88 + 16);
        v92 = [v91 identifier];
        v93 = sub_1D7D3034C();
        v95 = v94;

        MEMORY[0x1DA70DE90](v93, v95);

        MEMORY[0x1DA70DE90](0x3A656C74697420, 0xE700000000000000);
        v96 = [v91 title];
        if (v96)
        {
          v81 = v96;
          v82 = sub_1D7D3034C();
          v84 = v83;
        }

        else
        {
          v82 = 0;
        }

        a8 = v90;
        v10 = v108;
        v85 = v107;
        MEMORY[0x1DA70DE90](v82, v84);

        v14 = v114;
        v86 = v115;
        *(v11 + 56) = MEMORY[0x1E69E6158];
        *(v11 + 64) = sub_1D79D6AE0();
        *(v11 + 32) = v14;
        *(v11 + 40) = v86;
        v87 = sub_1D7D30C6C();
        sub_1D7D29AAC("Found quaternary headline %@", 28, 2, &dword_1D7987000, v113, v87, v11);

        ++v80;
      }

      while (v89 != v85);
    }

    v11 = v109;
  }

  sub_1D799CC84(&v122, &v114);
  v116 = v112;
  v117 = v111;
  v118 = v11;
  v119 = v10;
  v120 = 0;
  v99(&v114);
  sub_1D7C89230(&v114, &unk_1EE0C0308, &type metadata for ArticleRecirculationService.MergeResult, MEMORY[0x1E69D6AF8]);
  return __swift_destroy_boxed_opaque_existential_1(&v122);
}

void sub_1D7C89118(unint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    v8 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA70EF00](v8, a1);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v13 = v9;
      sub_1D7C7F498(&v13, a2, a3, a4);
      swift_unknownObjectRelease();
      if (!v4)
      {
        ++v8;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v9 = *(a1 + 8 * v8 + 32);
    swift_unknownObjectRetain();
    v10 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1D7C89230(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1D7C8A6D4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D7C892E8(uint64_t a1)
{
  if (!qword_1EE0C0480)
  {
    sub_1D7C8937C(255);
    sub_1D7C85C1C(&unk_1EE0BF208, sub_1D7C8937C, MEMORY[0x1E69E6340]);
    v1 = sub_1D7D28E5C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0C0480);
    }
  }
}

void sub_1D7C8937C(uint64_t a1)
{
  if (!qword_1EE0BF218)
  {
    sub_1D7C8A6D4(255, &unk_1EE0BF330, &type metadata for ArticleRecirculationConfigFactory.RealizedRule, MEMORY[0x1E69E62F8]);
    v1 = sub_1D7D307BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BF218);
    }
  }
}

uint64_t sub_1D7C89454(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1D7C8A618(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D7C894C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C8952C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7C8958C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C895F4()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[2] + 184), *(v0[2] + 208));
  v4 = *(v3 + 80);
  v8[4] = *(v3 + 64);
  v8[5] = v4;
  v9 = *(v3 + 96);
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  v6 = *(v3 + 48);
  v8[2] = *(v3 + 32);
  v8[3] = v6;
  return sub_1D7B75A74(v1, v8, v2);
}

uint64_t sub_1D7C89734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D7C8A618(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D7C89790(unint64_t a1, unint64_t *a2)
{
  v15 = a2;
  v17 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_18:
    v3 = sub_1D7D3167C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (v3)
  {
    v4 = 0;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v14 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v6 = MEMORY[0x1DA70EF00](v4, a1);
        v5 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
          return v17;
        }
      }

      else
      {
        if (v4 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v5 = *(a1 + 8 * v4 + 32);

        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      v9 = *v15;
      v16 = v5;
      MEMORY[0x1EEE9AC00](v6, v7);
      v12[2] = &v16;

      v10 = sub_1D7B8AC60(sub_1D7C8A564, v12, v9);

      if (v10)
      {
      }

      else
      {
        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
      }

      ++v4;
      if (v8 == v3)
      {
        return v17;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D7C89960(unint64_t a1, void *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_69:
    v41 = v2 & 0xFFFFFFFFFFFFFF8;
    v43 = sub_1D7D3167C();
  }

  else
  {
    v41 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = v2 & 0xC000000000000001;
  i = 1;
  while (1)
  {
    if (v43 == v3)
    {

      return v2;
    }

    if (v4)
    {
      v6 = MEMORY[0x1DA70EF00](v3, v2);
    }

    else
    {
      if (v3 >= *(v41 + 16))
      {
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v6 = *(v2 + 8 * v3 + 32);
    }

    v7 = [*(v6 + 16) articleID];
    v8 = sub_1D7D3034C();
    v10 = v9;

    v11 = [a2 articleID];
    v12 = sub_1D7D3034C();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
      break;
    }

    v16 = sub_1D7D3197C();

    if (v16)
    {
      goto LABEL_19;
    }

    i += 2;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_68;
    }
  }

LABEL_19:
  v44 = v2;

  v18 = &v44;
  sub_1D7B029BC(v3);

  v19 = v44;
  v20 = v44 >> 62;
  if (v44 >> 62)
  {
    if (v44 < 0)
    {
      v18 = v44;
    }

    else
    {
      v18 = (v44 & 0xFFFFFFFFFFFFFF8);
    }

    result = sub_1D7D3167C();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    if (sub_1D7D3167C() >= v3)
    {
      goto LABEL_21;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < v3)
  {
    goto LABEL_75;
  }

LABEL_21:
  v14 = v19 & 0xC000000000000001;
  if ((v19 & 0xC000000000000001) != 0 && v3)
  {
    type metadata accessor for EndOfArticleHeadlineModel();

    v21 = 0;
    do
    {
      v22 = v21 + 1;
      sub_1D7D3147C();
      v21 = v22;
    }

    while (v3 != v22);
    if (!v20)
    {
      goto LABEL_26;
    }

LABEL_29:

    v18 = sub_1D7D3168C();
    v4 = v24;
    i = v25;
    if ((v25 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (v20)
    {
      goto LABEL_29;
    }

LABEL_26:
    v4 = 0;
    v18 = (v19 & 0xFFFFFFFFFFFFFF8);
    v23 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((i & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v12 = v23;
  sub_1D7D319DC();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(i >> 1, v4))
  {
    goto LABEL_77;
  }

  if (v28 != (i >> 1) - v4)
  {
    goto LABEL_79;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!i)
  {
    goto LABEL_39;
  }

  v29 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v20)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v4 = *(v29 + 16);
    if (v4 >= v3)
    {
      break;
    }

    __break(1u);
LABEL_39:
    for (i = MEMORY[0x1E69E7CC0]; ; i = v26)
    {
      swift_unknownObjectRelease();
      v29 = v19 & 0xFFFFFFFFFFFFFF8;
      if (!v20)
      {
        break;
      }

LABEL_41:
      if (v19 < 0)
      {
        v18 = v19;
      }

      else
      {
        v18 = v29;
      }

      v30 = sub_1D7D3167C();
      if (v30 >= v3)
      {
        v4 = v30;
        if (sub_1D7D3167C() < v3)
        {
          __break(1u);
          goto LABEL_81;
        }

        if (sub_1D7D3167C() >= v4)
        {
          goto LABEL_47;
        }

LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      __break(1u);
LABEL_79:
      swift_unknownObjectRelease();
      v23 = v12;
LABEL_30:
      sub_1D7B10210(v18, v23, v4, i);
    }
  }

LABEL_47:
  if (!v14 || v4 == v3)
  {

    if (!v20)
    {
      goto LABEL_53;
    }

    goto LABEL_56;
  }

  if (v3 >= v4)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  type metadata accessor for EndOfArticleHeadlineModel();

  v31 = v3;
  do
  {
    v32 = v31 + 1;
    sub_1D7D3147C();
    v31 = v32;
  }

  while (v4 != v32);
  if (v20)
  {
LABEL_56:

    v18 = sub_1D7D3168C();
    v3 = v34;
    v4 = v35;
    if (v35)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_53:
  v18 = (v19 & 0xFFFFFFFFFFFFFF8);
  v33 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
  v4 = (2 * v4) | 1;
  if ((v4 & 1) == 0)
  {
LABEL_57:
    sub_1D7B10210(v18, v33, v3, v4);
    v37 = v36;
    goto LABEL_64;
  }

LABEL_58:
  v20 = v33;
  sub_1D7D319DC();
  swift_unknownObjectRetain_n();
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    swift_unknownObjectRelease();
    v38 = MEMORY[0x1E69E7CC0];
  }

  v39 = *(v38 + 16);

  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_82;
  }

  if (v39 != (v4 >> 1) - v3)
  {
LABEL_83:
    swift_unknownObjectRelease();
    v33 = v20;
    goto LABEL_57;
  }

  v37 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v37)
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_64:
    swift_unknownObjectRelease();
  }

  sub_1D79E2F38(i);

  return v37;
}

void sub_1D7C89E7C(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v69 = a3;
  v7 = sub_1D7D2E24C();
  v68 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = &v62 - v13;
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7D3167C())
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v79 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C7B8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v16 = 0;
    v17 = v79;
    v73 = a1 & 0xC000000000000001;
    v63 = a1 & 0xFFFFFFFFFFFFFF8;
    v62 = a1 + 32;
    v71 = *(v69 + 16);
    v77 = v68 + 16;
    v18 = (v68 + 8);
    v64 = (v68 + 32);
    v70 = xmmword_1D7D3C680;
    v78 = v7;
    v72 = i;
    v67 = a2;
    v66 = a1;
    while (!__OFADD__(v16, 1))
    {
      v75 = v16 + 1;
      v76 = v17;
      if (v73)
      {
        v19 = MEMORY[0x1DA70EF00]();
      }

      else
      {
        if (v16 >= *(v63 + 16))
        {
          goto LABEL_40;
        }

        v19 = *(v62 + 8 * v16);
      }

      v20 = [*(v19 + 16) identifier];
      v21 = sub_1D7D3034C();
      v23 = v22;

      v24 = 0.0;
      if (v71)
      {
        v74 = v19;
        v25 = v69 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
        v26 = *(v68 + 72);
        v27 = *(v68 + 16);
        v28 = v71;
        while (1)
        {
          v29 = v27(v10, v25, v7);
          if (MEMORY[0x1DA70BC70](v29) == v21 && v30 == v23)
          {
            break;
          }

          v31 = sub_1D7D3197C();

          if (v31)
          {
            goto LABEL_19;
          }

          v7 = v78;
          (*v18)(v10, v78);
          v25 += v26;
          if (!--v28)
          {
            goto LABEL_20;
          }
        }

LABEL_19:
        v32 = v65;
        v33 = v78;
        (*v64)(v65, v10, v78);
        sub_1D7D2E22C();
        v24 = v34;
        (*v18)(v32, v33);
LABEL_20:
        a2 = v67;
        a1 = v66;
        v19 = v74;
      }

      if (*(a2 + 16))
      {
        v35 = sub_1D7A18FFC(v21, v23);
        v37 = v36;

        v38 = 0.0;
        v39 = 0.0;
        if (v37)
        {
          v38 = *(*(a2 + 56) + 8 * v35);
          v39 = a4;
        }
      }

      else
      {

        v38 = 0.0;
        v39 = 0.0;
      }

      if (qword_1EE0CA130 != -1)
      {
        swift_once();
      }

      v40 = v38 * v39 + v24 * (1.0 - v39);
      v41 = qword_1EE0CA138;
      sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v42 = swift_allocObject();
      *(v42 + 16) = v70;
      v43 = [*(v19 + 16) identifier];
      v44 = sub_1D7D3034C();
      v46 = v45;

      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1D79D6AE0();
      *(v42 + 32) = v44;
      *(v42 + 40) = v46;
      v47 = MEMORY[0x1E69E63B0];
      *(v42 + 96) = MEMORY[0x1E69E63B0];
      v48 = MEMORY[0x1E69E6438];
      *(v42 + 104) = MEMORY[0x1E69E6438];
      *(v42 + 72) = a4;
      *(v42 + 136) = v47;
      *(v42 + 144) = v48;
      *(v42 + 112) = v40;
      v49 = sub_1D7D30C6C();
      sub_1D7D29AAC("Scoring headline %{public}@ with alpha %{public}g and got score: %{public}g", 75, 2, &dword_1D7987000, v41, v49, v42);

      v50 = *(v19 + 16);

      v51 = [v50 sourceChannelID];
      if (!v51)
      {
        v51 = [*(v19 + 16) identifier];
      }

      v52 = v51;
      v53 = sub_1D7D3034C();
      v55 = v54;

      v17 = v76;
      v79 = v76;
      v56 = v19;
      v58 = *(v76 + 2);
      v57 = *(v76 + 3);
      if (v58 >= v57 >> 1)
      {
        sub_1D7A5C7B8((v57 > 1), v58 + 1, 1);
        v17 = v79;
      }

      *(v17 + 2) = v58 + 1;
      v59 = &v17[32 * v58];
      *(v59 + 4) = v40;
      *(v59 + 5) = v56;
      *(v59 + 6) = v53;
      *(v59 + 7) = v55;
      v16 = v75;
      v7 = v78;
      if (v75 == v72)
      {
        v15 = MEMORY[0x1E69E7CC0];
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v79 = v17;

  sub_1D7C780B4(&v79);

  v60 = *(v79 + 2);
  if (v60)
  {
    v79 = v15;
    sub_1D7D3156C();
    v61 = 40;
    do
    {

      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
      v61 += 32;
      --v60;
    }

    while (v60);
  }
}

void sub_1D7C8A584(uint64_t a1)
{
  if (!qword_1EC9E7BB8)
  {
    sub_1D7C8A618(255, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E7BB8);
    }
  }
}

void sub_1D7C8A618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7C8A67C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D7D3197C() & 1;
  }
}

void sub_1D7C8A6D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7C8A724(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7C8A6D4(0, a3, a4, MEMORY[0x1E69D6AF8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7C8A7A4(uint64_t a1, uint64_t a2)
{
  sub_1D7C80B34(0, &qword_1EE0C07B0, qword_1EE0C07B8, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataProviderType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = *(type metadata accessor for ArticleRecirculationFetchConfig(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D7D2898C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_25Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7C8AA90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7C80B34(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D7C8AB10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7C8AB58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles52ArticleRecirculationSpecifiedSectionDataProviderType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7C8ABE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7C8AC28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D7C8AC94()
{
  result = qword_1EC9E7BD0;
  if (!qword_1EC9E7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7BD0);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D7C8AD84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D7C8ADCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7C8AE40()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = [*v0 identifier];
    v1 = sub_1D7D3034C();
  }

  return v1;
}

uint64_t sub_1D7C8AEB0(uint64_t a1, uint64_t a2)
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7C8AF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7C8B0F0();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D7C8AF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

unint64_t sub_1D7C8AFE8()
{
  result = qword_1EC9E7BE0;
  if (!qword_1EC9E7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7BE0);
  }

  return result;
}

unint64_t sub_1D7C8B040()
{
  result = qword_1EC9E7BE8;
  if (!qword_1EC9E7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7BE8);
  }

  return result;
}

unint64_t sub_1D7C8B098()
{
  result = qword_1EC9E7BF0;
  if (!qword_1EC9E7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7BF0);
  }

  return result;
}

unint64_t sub_1D7C8B0F0()
{
  result = qword_1EC9E7BF8;
  if (!qword_1EC9E7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7BF8);
  }

  return result;
}

unint64_t sub_1D7C8B148()
{
  result = qword_1EC9E7C00;
  if (!qword_1EC9E7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7C00);
  }

  return result;
}

uint64_t sub_1D7C8B19C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = *(a2 + 48);
  if (*(a1 + 48))
  {
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);

    if ((v5 & 1) == 0)
    {
LABEL_3:
      v8 = [v2 identifier];
      v4 = sub_1D7D3034C();
      v3 = v9;

      goto LABEL_6;
    }
  }

  else
  {
    v10 = [*a1 identifier];
    v7 = sub_1D7D3034C();
    v6 = v11;

    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_6:
  if (v7 == v4 && v6 == v3)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D7D3197C();
  }

  return v13 & 1;
}

double sub_1D7C8B29C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1D7C8B2F0()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8));
  if (!v2)
  {
    swift_unknownObjectRetain();
    if (!v1)
    {
      return;
    }

LABEL_10:
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE0C05E8;
    v14 = sub_1D7D30C4C();
    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7D3B4D0;
    sub_1D7C8F4D0();
    sub_1D7D315DC();
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1D79D6AE0();
    *(v15 + 32) = 0;
    *(v15 + 40) = 0xE000000000000000;
    sub_1D7D29AAC("Found an observer %{public}@ of an AVPlayerItem, but no item on the player", 74, 2, &dword_1D7987000, v13, v14, v15);
    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRetain();
  v3 = [v2 currentItem];
  v4 = v3;
  if (v1)
  {
    if (v3)
    {
      if (qword_1EE0C05E0 != -1)
      {
        swift_once();
      }

      v5 = qword_1EE0C05E8;
      v6 = sub_1D7D30C6C();
      sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1D7D3B4D0;
      v8 = [v4 description];
      v9 = sub_1D7D3034C();
      v11 = v10;

      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1D79D6AE0();
      *(v7 + 32) = v9;
      *(v7 + 40) = v11;
      sub_1D7D29AAC("Removing observer of item %{public}@", 36, 2, &dword_1D7987000, v5, v6, v7);

      v12 = [objc_opt_self() defaultCenter];
      swift_unknownObjectRetain();
      v23 = sub_1D7D3031C();
      [v12 removeObserver:v1 name:v23 object:v4];

      swift_unknownObjectRelease_n();

      return;
    }

    goto LABEL_10;
  }

  if (v3)
  {
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    v16 = qword_1EE0C05E8;
    v17 = sub_1D7D30C4C();
    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7D3B4D0;
    v19 = [v4 description];
    v20 = sub_1D7D3034C();
    v22 = v21;

    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D79D6AE0();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    sub_1D7D29AAC("Found an item %{public}@ on the AVPlayerItem, but no observer", 61, 2, &dword_1D7987000, v16, v17, v18);
  }
}

double sub_1D7C8B7A4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = *(v1 + v3[21]);
  if (v4)
  {
    swift_getKeyPath();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v3[10];
    v6[3] = v3[11];
    v6[4] = v5;
    v7 = v4;
    v8 = v1;
    v9 = sub_1D7D2816C();

    v10 = *((*v2 & *v8) + 0x88);
    v11 = *(v8 + v10);
    *(v8 + v10) = v9;
  }

  else
  {
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE0C05E8;
    v14 = sub_1D7D30C6C();
    v15 = MEMORY[0x1E69E7CC0];

    return sub_1D7D29AAC("AVPlayer cleared", 16, 2, &dword_1D7987000, v13, v14, v15);
  }

  return result;
}

double sub_1D7C8B9A0(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();

    [v3 timeControlStatus];
    sub_1D7C8F3EC();
    sub_1D7D28F1C();
  }

  return result;
}

double AudioPlayer.currentTime.getter()
{
  sub_1D79A219C();

  return result;
}

double AudioPlayer.currentRate.getter()
{
  sub_1D79A2230();

  return result;
}

double AudioPlayer.itemReachedEndSignal.getter()
{
  sub_1D79A53B8();

  return result;
}

double AudioPlayer.timeControlStatus.getter()
{
  sub_1D79A22D4();

  return result;
}

double AudioPlayer.seekState.getter()
{
  sub_1D79A23C8();

  return result;
}

id AudioPlayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D7C8BB6C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_1EE0CB4A0 != -1)
    {
      swift_once();
    }

    v14 = qword_1D7D5D830[v6];
    type metadata accessor for AudioPlayer(0, a3, a4, v8);
    swift_getWitnessTable();
    sub_1D7D2872C();
    v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0xA8);
    v11 = *(v9 + v10);
    if (v11)
    {
      [v11 rate];
      if (*&v12 > 0.0)
      {
        v13 = *(v9 + v10);
        if (v13)
        {
          LODWORD(v12) = dword_1D7D5D860[v6];
          [v13 setRate_];
        }
      }
    }
  }
}

id AudioPlayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D7C8BCFC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D79F0014(&a1[*((*v2 & *a1) + 0x70)]);

  v3 = *((*v2 & *a1) + 0x98);
  v4 = sub_1D7D3130C();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  return result;
}

void _s12NewsArticles11AudioPlayerC11skipForwardyySdF_0(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v36 = (*MEMORY[0x1E69E7D40] & v4);
  v7 = *((v6 & v4) + 0x50);
  v8 = sub_1D7D3130C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33[-v11];
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33[-v16];
  swift_beginAccess();

  sub_1D7D28EDC();

  v18 = v39;
  v19 = *((*v5 & *v2) + 0x98);
  swift_beginAccess();
  (*(v9 + 16))(v12, &v2[v19], v8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    v20 = qword_1EE0C05E8;
    v21 = sub_1D7D30C4C();
    sub_1D7D29AAC("Audio player asked to seek by, but doesn't have a current playable", 66, 2, &dword_1D7987000, v20, v21, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    (*(v13 + 32))(v17, v12, v7);
    sub_1D7A60E04(v7, *(v36 + 11), v18 + a1);
    v23 = v22;
    v36 = v17;
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    v35 = qword_1EE0C05E8;
    v34 = sub_1D7D30C6C();
    sub_1D79A0340(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7D3C680;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1D7D3093C();
    v26 = v37;
    v25 = v38;
    v27 = MEMORY[0x1E69E6158];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    v28 = sub_1D79D6AE0();
    *(v24 + 64) = v28;
    *(v24 + 32) = v26;
    *(v24 + 40) = v25;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1D7D3093C();
    v29 = v37;
    v30 = v38;
    *(v24 + 96) = v27;
    *(v24 + 104) = v28;
    *(v24 + 72) = v29;
    *(v24 + 80) = v30;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1D7D3093C();
    v31 = v37;
    v32 = v38;
    *(v24 + 136) = v27;
    *(v24 + 144) = v28;
    *(v24 + 112) = v31;
    *(v24 + 120) = v32;
    sub_1D7D29AAC("Skipping audio player from %{public}@ to %{public}@ (clamped from %{public}@)", 77, 2, &dword_1D7987000, v35, v34, v24);

    AudioPlayer.seek(to:)(v23);
    (*(v13 + 8))(v36, v7);
  }
}