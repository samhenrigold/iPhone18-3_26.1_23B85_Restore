uint64_t sub_182045A9C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 81);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  v7 = *(a1 + 112);
  swift_beginAccess();
  v8 = *(v2 + 139);
  if (v8 <= 2)
  {
    if (*(v2 + 139))
    {
      if (v8 == 1)
      {
        if ((*(v2 + 1024) & 1) == 0)
        {
          v90 = 0x8000000182BDB440;
          v92 = *(v2 + 80);
          v91 = *(v2 + 88);
          v93 = qword_1EA837248;

          if (v93 != -1)
          {
            swift_once();
          }

          v94 = sub_182AD2698();
          __swift_project_value_buffer(v94, qword_1EA843418);

          v95 = sub_182AD2678();
          v96 = sub_182AD38C8();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            *&v158[0] = v98;
            *v97 = 136315650;
            v99 = sub_182AD3BF8();
            v101 = sub_181C64FFC(v99, v100, v158);

            *(v97 + 4) = v101;
            *(v97 + 12) = 2080;
            v102 = sub_181C64FFC(v92, v91, v158);

            *(v97 + 14) = v102;
            *(v97 + 22) = 2080;
            *(v97 + 24) = sub_181C64FFC(0xD00000000000001ELL, 0x8000000182BDB440, v158);
            _os_log_impl(&dword_181A37000, v95, v96, "%s %s %s", v97, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v98, -1, -1);
            MEMORY[0x1865DF520](v97, -1, -1);
          }

          else
          {
          }

          v103 = *(v2 + 1144);
          v104 = *(v2 + 1152);
          v105 = 0xD00000000000001ELL;
LABEL_91:
          *(v2 + 1144) = v105;
          *(v2 + 1152) = v90;
          v118 = *(v2 + 1160);
          *(v2 + 1160) = 0;
LABEL_92:
          sub_182023268(v103, v104, v118);
          return 0;
        }

        if (v3)
        {
          v25 = *(v2 + 80);
          v24 = *(v2 + 88);
          v26 = qword_1EA837248;

          if (v26 != -1)
          {
            swift_once();
          }

          v27 = sub_182AD2698();
          __swift_project_value_buffer(v27, qword_1EA843418);

          v28 = sub_182AD2678();
          v29 = sub_182AD38B8();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            *&v158[0] = v31;
            *v30 = 136315650;
            v32 = sub_182AD3BF8();
            v34 = sub_181C64FFC(v32, v33, v158);

            *(v30 + 4) = v34;
            *(v30 + 12) = 2080;
            v35 = sub_181C64FFC(v25, v24, v158);

            *(v30 + 14) = v35;
            *(v30 + 22) = 2080;
            *(v30 + 24) = sub_181C64FFC(0xD000000000000035, 0x8000000182BDB460, v158);
            _os_log_impl(&dword_181A37000, v28, v29, "%s %s %s", v30, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v31, -1, -1);
            MEMORY[0x1865DF520](v30, -1, -1);
          }

          else
          {
          }

          v103 = *(v2 + 1144);
          v104 = *(v2 + 1152);
          *(v2 + 1144) = 0xD000000000000035;
          *(v2 + 1152) = 0x8000000182BDB460;
          v118 = *(v2 + 1160);
          *(v2 + 1160) = 4;
          goto LABEL_92;
        }

LABEL_65:
        v88 = *(v2 + 328);

        v58 = 1;
        sub_182297830(v6, 0, 1, v88, v7, v6);

        return v58;
      }

      v70 = *(v2 + 80);
      v71 = *(v2 + 88);
      *&v158[0] = 0;
      *(&v158[0] + 1) = 0xE000000000000000;

      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BDB390);
      LOBYTE(v153) = *(v2 + 139);
      sub_182AD3E18();
      v72 = v158[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v73 = sub_182AD2698();
      __swift_project_value_buffer(v73, qword_1EA843418);

      v60 = sub_182AD2678();
      v74 = sub_182AD38B8();

      if (!os_log_type_enabled(v60, v74))
      {

        if (*(v2 + 1034))
        {
          goto LABEL_65;
        }

        goto LABEL_61;
      }

      v149 = v6;
      v75 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      *&v158[0] = v146;
      *v75 = 136315650;
      v76 = sub_182AD3BF8();
      v151 = v3;
      v78 = sub_181C64FFC(v76, v77, v158);

      *(v75 + 4) = v78;
      *(v75 + 12) = 2080;
      v79 = sub_181C64FFC(v70, v71, v158);

      *(v75 + 14) = v79;
      v3 = v151;
      *(v75 + 22) = 2080;
      v80 = sub_181C64FFC(v72, *(&v72 + 1), v158);

      *(v75 + 24) = v80;
      _os_log_impl(&dword_181A37000, v60, v74, "%s %s %s", v75, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v146, -1, -1);
      v69 = v75;
      v6 = v149;
    }

    else
    {
      *&v158[0] = 0;
      *(&v158[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x2064696C61766E69, 0xEF203A6574617473);
      LOBYTE(v153) = *(v2 + 139);
      sub_182AD3E18();
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v59 = sub_182AD2698();
      __swift_project_value_buffer(v59, qword_1EA843418);

      v60 = sub_182AD2678();
      v61 = sub_182AD38C8();

      if (!os_log_type_enabled(v60, v61))
      {

        goto LABEL_59;
      }

      v62 = swift_slowAlloc();
      v148 = *&v158[0];
      v63 = swift_slowAlloc();
      *&v158[0] = v63;
      *v62 = 136315650;
      v64 = sub_182AD3BF8();
      v150 = v3;
      v65 = v7;
      v67 = sub_181C64FFC(v64, v66, v158);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v158);
      *(v62 + 22) = 2080;
      v68 = sub_181C64FFC(v148, 0xE000000000000000, v158);

      *(v62 + 24) = v68;
      v7 = v65;
      v3 = v150;
      _os_log_impl(&dword_181A37000, v60, v61, "%s %s %s", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v63, -1, -1);
      v69 = v62;
    }

    MEMORY[0x1865DF520](v69, -1, -1);
LABEL_59:

LABEL_60:
    if ((*(v2 + 1034) & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_65;
  }

  if (v8 > 0xB)
  {
LABEL_47:
    if (v8 == 3)
    {
LABEL_4:
      v9 = *(v2 + 80);
      v10 = *(v2 + 88);
      *&v158[0] = 0;
      *(&v158[0] + 1) = 0xE000000000000000;

      MEMORY[0x1865D9CA0](0x206574617473, 0xE600000000000000);
      LOBYTE(v153) = *(v2 + 139);
      sub_182AD3E18();
      v11 = v158[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v12 = sub_182AD2698();
      __swift_project_value_buffer(v12, qword_1EA843418);

      v13 = sub_182AD2678();
      v14 = sub_182AD3898();

      if (os_log_type_enabled(v13, v14))
      {
        v147 = v6;
        v15 = swift_slowAlloc();
        v144 = v9;
        v16 = swift_slowAlloc();
        *&v158[0] = v16;
        *v15 = 136315650;
        v17 = sub_182AD3BF8();
        v145 = v7;
        v19 = v3;
        v20 = sub_181C64FFC(v17, v18, v158);

        *(v15 + 4) = v20;
        *(v15 + 12) = 2080;
        v21 = sub_181C64FFC(v144, v10, v158);

        *(v15 + 14) = v21;
        *(v15 + 22) = 2080;
        v3 = v19;
        v22 = sub_181C64FFC(v11, *(&v11 + 1), v158);

        *(v15 + 24) = v22;
        v7 = v145;
        _os_log_impl(&dword_181A37000, v13, v14, "%s %s %s", v15, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v16, -1, -1);
        v23 = v15;
        v6 = v147;
        MEMORY[0x1865DF520](v23, -1, -1);
      }

      else
      {
      }

      if (*(v2 + 1034))
      {
        goto LABEL_65;
      }

      goto LABEL_61;
    }

    if (*(v2 + 1024))
    {
      if (v5 && v4)
      {
        v81 = v3;
        *(v2 + 944) = v5;

        *(v2 + 1136) = v4;

        if (*(v2 + 952))
        {
          *&v158[0] = v5;

          sub_1821406C0(v158, v2);

          if (*(v2 + 952))
          {

            sub_18203DE78(v82);
          }
        }

        v159 = *(v2 + 1112);
        v83 = *(v2 + 1064);
        v158[0] = *(v2 + 1048);
        v158[1] = v83;
        v84 = *(v2 + 1096);
        v158[2] = *(v2 + 1080);
        v158[3] = v84;
        if (*&v158[0] != 1)
        {
          v153 = *&v158[0];
          v85 = *(v2 + 1072);
          v154 = *(v2 + 1056);
          v155 = v85;
          v86 = *(v2 + 1104);
          v156 = *(v2 + 1088);
          v157 = v86;
          sub_181AB5D28(v158, v152, &qword_1EA839BF0, &qword_182AECC10);

          v87 = sub_182034CF8(v2, &v153);

          sub_181F49A88(v158, &qword_1EA839BF0, &qword_182AECC10);
          if (v87)
          {
            v3 = v81;
            if (*(v2 + 1034))
            {
              goto LABEL_65;
            }

LABEL_61:
            if (v3 == 1)
            {
              *(v2 + 1034) = 1;
              if (*(v2 + 1024) == 1 && (*(v2 + 1033) & 1) == 0)
              {
                sub_182047548(0);
                *(v2 + 1033) = 1;
              }
            }

            goto LABEL_65;
          }
        }

        v134 = *(v2 + 80);
        v133 = *(v2 + 88);
        v135 = qword_1EA837248;

        if (v135 != -1)
        {
          swift_once();
        }

        v136 = sub_182AD2698();
        __swift_project_value_buffer(v136, qword_1EA843418);

        v123 = sub_182AD2678();
        v137 = sub_182AD38B8();

        if (os_log_type_enabled(v123, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v153 = v139;
          *v138 = 136315650;
          v140 = sub_182AD3BF8();
          v142 = sub_181C64FFC(v140, v141, &v153);

          *(v138 + 4) = v142;
          *(v138 + 12) = 2080;
          v143 = sub_181C64FFC(v134, v133, &v153);

          *(v138 + 14) = v143;
          *(v138 + 22) = 2080;
          *(v138 + 24) = sub_181C64FFC(0xD00000000000001ALL, 0x8000000182BDB420, &v153);
          _os_log_impl(&dword_181A37000, v123, v137, "%s %s %s", v138, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v139, -1, -1);
          v132 = v138;
          goto LABEL_98;
        }
      }

      else
      {
        v120 = *(v2 + 80);
        v119 = *(v2 + 88);
        *&v158[0] = 0;
        *(&v158[0] + 1) = 0xE000000000000000;

        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0x203A6574617453, 0xE700000000000000);
        LOBYTE(v153) = *(v2 + 139);
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](0xD000000000000035, 0x8000000182BDB3E0);
        v121 = v158[0];
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v122 = sub_182AD2698();
        __swift_project_value_buffer(v122, qword_1EA843418);

        v123 = sub_182AD2678();
        v124 = sub_182AD38B8();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          *&v158[0] = v126;
          *v125 = 136315650;
          v127 = sub_182AD3BF8();
          v129 = sub_181C64FFC(v127, v128, v158);

          *(v125 + 4) = v129;
          *(v125 + 12) = 2080;
          v130 = sub_181C64FFC(v120, v119, v158);

          *(v125 + 14) = v130;
          *(v125 + 22) = 2080;
          v131 = sub_181C64FFC(v121, *(&v121 + 1), v158);

          *(v125 + 24) = v131;
          _os_log_impl(&dword_181A37000, v123, v124, "%s %s %s", v125, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v126, -1, -1);
          v132 = v125;
LABEL_98:
          MEMORY[0x1865DF520](v132, -1, -1);

          return 0;
        }
      }

      goto LABEL_100;
    }

    v90 = 0x8000000182BDB3B0;
    v107 = *(v2 + 80);
    v106 = *(v2 + 88);
    v108 = qword_1EA837248;

    if (v108 != -1)
    {
      swift_once();
    }

    v109 = sub_182AD2698();
    __swift_project_value_buffer(v109, qword_1EA843418);

    v110 = sub_182AD2678();
    v111 = sub_182AD38C8();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *&v158[0] = v113;
      *v112 = 136315650;
      v114 = sub_182AD3BF8();
      v116 = sub_181C64FFC(v114, v115, v158);

      *(v112 + 4) = v116;
      *(v112 + 12) = 2080;
      v117 = sub_181C64FFC(v107, v106, v158);

      *(v112 + 14) = v117;
      *(v112 + 22) = 2080;
      *(v112 + 24) = sub_181C64FFC(0xD000000000000029, 0x8000000182BDB3B0, v158);
      _os_log_impl(&dword_181A37000, v110, v111, "%s %s %s", v112, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v113, -1, -1);
      MEMORY[0x1865DF520](v112, -1, -1);
    }

    else
    {
    }

    v103 = *(v2 + 1144);
    v104 = *(v2 + 1152);
    v105 = 0xD000000000000029;
    goto LABEL_91;
  }

  if (((1 << v8) & 0x3A0) != 0)
  {
    goto LABEL_4;
  }

  if (((1 << v8) & 0xC00) != 0)
  {
    goto LABEL_60;
  }

  if (v8 != 6)
  {
    goto LABEL_47;
  }

  if (!v3)
  {
    LOBYTE(v153) = 8;
    swift_beginAccess();
    sub_18203BF4C(&v153);
    swift_endAccess();
    *(v2 + 304) = 1;
    if (v5 && *(v2 + 952))
    {
      *&v158[0] = v5;

      sub_1821406C0(v158, v2);
    }

    goto LABEL_65;
  }

  v36 = *(v2 + 1144);
  v37 = *(v2 + 1152);
  *(v2 + 1144) = 0xD000000000000019;
  *(v2 + 1152) = 0x8000000182BDB350;
  v38 = *(v2 + 1160);
  *(v2 + 1160) = 4;
  sub_182023268(v36, v37, v38);
  v40 = *(v2 + 80);
  v39 = *(v2 + 88);

  sub_182AD3BA8();

  *&v158[0] = 0xD00000000000001ALL;
  *(&v158[0] + 1) = 0x8000000182BDB370;
  v41 = 0xE900000000000065;
  v42 = 0x6B616873646E6168;
  v43 = 3174507;
  v44 = 3240043;
  if (v3 != 4)
  {
    v44 = 7104878;
  }

  if (v3 != 3)
  {
    v43 = v44;
  }

  if (v3 != 1)
  {
    v42 = 0x7474722D30;
    v41 = 0xE500000000000000;
  }

  if (v3 <= 2)
  {
    v45 = v42;
  }

  else
  {
    v45 = v43;
  }

  if (v3 <= 2)
  {
    v46 = v41;
  }

  else
  {
    v46 = 0xE300000000000000;
  }

  MEMORY[0x1865D9CA0](v45, v46);

  v47 = v158[0];
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v48 = sub_182AD2698();
  __swift_project_value_buffer(v48, qword_1EA843418);

  v49 = sub_182AD2678();
  v50 = sub_182AD38B8();

  if (!os_log_type_enabled(v49, v50))
  {

LABEL_100:

    return 0;
  }

  v51 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  *&v158[0] = v52;
  *v51 = 136315650;
  v53 = sub_182AD3BF8();
  v55 = sub_181C64FFC(v53, v54, v158);

  *(v51 + 4) = v55;
  *(v51 + 12) = 2080;
  v56 = sub_181C64FFC(v40, v39, v158);

  *(v51 + 14) = v56;
  *(v51 + 22) = 2080;
  v57 = sub_181C64FFC(v47, *(&v47 + 1), v158);

  *(v51 + 24) = v57;
  _os_log_impl(&dword_181A37000, v49, v50, "%s %s %s", v51, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v52, -1, -1);
  MEMORY[0x1865DF520](v51, -1, -1);

  return 0;
}

void sub_182047024(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v5 = result[2];
  v6 = *(result + 24);
  v7 = *(result + 25) | ((*(result + 29) | (*(result + 31) << 16)) << 32);
  v8 = result[4];
  v9 = *(result + 40);
  v10 = *(result + 41) | ((*(result + 45) | (*(result + 47) << 16)) << 32);
  v11 = result[6];
  switch(v4 >> 59)
  {
    case 2uLL:
      v18 = result[7];
      v17 = result[8];
      v24 = *result;
      v25 = v4 & 0x7FFFFFFFFFFFFFFLL;
      v26 = v5;
      v27 = v6;
      v28 = v7;
      v30 = BYTE6(v7);
      v29 = WORD2(v7);
      v31 = v8;
      LOBYTE(v32) = v9;
      *(&v32 + 1) = v10;
      HIBYTE(v32) = BYTE6(v10);
      *(&v32 + 5) = WORD2(v10);
      v33 = v11;
      v34 = v18;
      v35 = v17;
      sub_18205CDE0(&v24, a2);
      return;
    case 6uLL:
      v13 = result[2];

      sub_182122BAC(v13, v6 | (v7 << 8), a2, v3);
      return;
    case 8uLL:
      v24 = *result;
      LOBYTE(v25) = v4;
      v26 = v5;
      v27 = v6;
      v28 = v7;
      v30 = BYTE6(v7);
      v29 = WORD2(v7);
      v31 = v8;
      LOBYTE(v32) = v9 & 1;
      sub_182103EE4();
      return;
    case 0xAuLL:
      v19 = result[2];

      sub_1820584AC(result, a2, v19);
      return;
    case 0xBuLL:
      v12 = result[2];

      sub_18205A1E8(result, a2, v12, (v6 | (v7 << 8)));
      return;
    case 0xEuLL:

      sub_182068E48();
      return;
    case 0xFuLL:
      v20 = result[2];

      sub_18205B53C(result, a2, v20);
      return;
    case 0x12uLL:
      v24 = *result;
      LOBYTE(v25) = v4;
      v26 = v5;
      v27 = v6;
      v28 = v7;
      v30 = BYTE6(v7);
      v29 = WORD2(v7);
      v31 = v8;
      v32 = v9 | (v10 << 8);
      sub_18206957C(&v24, a3);
      return;
    case 0x16uLL:
      if (v6)
      {
        goto LABEL_25;
      }

      if (v5 <= 0xFFFFFFFFFFFFFEFFLL)
      {
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_24;
    case 0x17uLL:
LABEL_24:
      if (v6)
      {
LABEL_25:
        if (!v5)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (v5 <= 0xFFFFFFFFFFFFFEFFLL)
      {
LABEL_32:
        v21 = *(v3 + 1144);
        v22 = *(v3 + 1152);
        *(v3 + 1144) = 0xD000000000000017;
        *(v3 + 1152) = 0x8000000182BDB4D0;
        v23 = *(v3 + 1160);
        *(v3 + 1160) = 0;
        sub_182023268(v21, v22, v23);
LABEL_33:
        sub_18203ADF4();
        return;
      }

      __break(1u);
      return;
    case 0x18uLL:
      if (*(v3 + 1024) == 1)
      {
        v14 = *(v3 + 1144);
        v15 = *(v3 + 1152);
        *(v3 + 1144) = 0xD000000000000025;
        *(v3 + 1152) = 0x8000000182BDB4A0;
        v16 = *(v3 + 1160);
        *(v3 + 1160) = 4;
        sub_182023268(v14, v15, v16);
      }

      else
      {
        sub_182052860();
      }

      return;
    case 0x19uLL:
      v24 = *result;
      LOBYTE(v25) = v4;
      v26 = v5;
      v27 = v6 & 1;
      v31 = v8;
      LOBYTE(v32) = v9 & 1;
      v33 = v11;
      sub_182055194(&v24);
      return;
    default:
      return;
  }
}

uint64_t sub_182047340(uint64_t result, char a2, char a3)
{
  v4 = v3;
  v7 = result;
  if (!*(result + 1072))
  {
    *(result + 1072) = 1200;
  }

  while (1)
  {
    v8 = *(*(v4 + 296) + 32);
    if (!*(v8 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    result = sub_18224EF74(0);
    if ((v9 & 1) == 0)
    {
      goto LABEL_30;
    }

    v10 = *(*(v8 + 56) + 8 * result);
    result = swift_beginAccess();
    if (!*(*(v10 + 16) + 16))
    {
      break;
    }

    result = sub_18204FAD8(0, v7, a2 & 1, a3 & 1, *(v7 + 1072));
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(*(v4 + 296) + 32);
  if (!*(v12 + 16))
  {
    goto LABEL_31;
  }

  while (1)
  {
    result = sub_18224EF74(1);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = *(*(v12 + 56) + 8 * result);
    result = swift_beginAccess();
    if (!*(*(v14 + 16) + 16))
    {
      while (1)
      {
        v15 = *(*(v4 + 296) + 32);
        if (!*(v15 + 16))
        {
          goto LABEL_33;
        }

        result = sub_18224EF74(2);
        if ((v16 & 1) == 0)
        {
          goto LABEL_34;
        }

        v17 = *(*(v15 + 56) + 8 * result);
        swift_beginAccess();
        v18 = *(*(v17 + 16) + 16);
        v11 = v18 == 0;
        if (v18)
        {
          v19 = *(v4 + 304) == 4 ? 4 : 3;
          v20 = *(v4 + 304) ? v19 : 2;
          result = sub_18204FAD8(v20, v7, a2 & 1, a3 & 1, *(v7 + 1072));
          if (result)
          {
            continue;
          }
        }

        return v11;
      }
    }

    result = sub_18204FAD8(1, v7, a2 & 1, a3 & 1, *(v7 + 1072));
    if ((result & 1) == 0)
    {
      return 0;
    }

    if ((*(v4 + 1024) & 1) == 0 && (*(v4 + 1033) & 1) == 0)
    {
      result = sub_182047548(0);
      *(v4 + 1033) = 1;
    }

    v12 = *(*(v4 + 296) + 32);
    if (!*(v12 + 16))
    {
      goto LABEL_31;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_182047548(uint64_t a1)
{
  v3 = (0x202020100uLL >> (8 * a1));

  sub_181F83258(v3);

  v5 = v1[37];
  v6 = v1[119];
  if (!v6 || (v7 = *(v6 + 1024), v7 == 1))
  {

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  v12 = v1[42];
  if (v12)
  {
    if (!v7 || ((3u >> a1) & 1) != 0)
    {
      v13 = (v3 + 1);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v13)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v7 = *(v12 + 8 * v13 + 32);
    }

    swift_beginAccess();
    v14 = v7[3];
    v15 = v7[4];
    v16 = v7[5];

    v10 = v16;
    v9 = v15;
    v8 = v14;
    v11 = 0;
LABEL_10:
    sub_1822986E8(v3, 0, 1, v5, v8, v9, v10, v11);

    if (v1[119])
    {

      sub_182047340(v17, 0, 0);
    }

    sub_1822366CC(a1);

    if (v1[119])
    {
      swift_beginAccess();

      sub_181FF44FC();
      swift_endAccess();

      v18 = v1[41];

      sub_182297230(v3, 0, 1, v18, v3, 0, 1);
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t QUICConnectionImplementation.inboundStopping(path:)()
{
  v7 = v1;
  result = swift_beginAccess();
  if ((*(v1 + 139) & 0xFE) != 0xA)
  {
    v9 = *(v1 + 144);
    v10 = *(v9 + 24);
    v11 = *(v9 + 80);
    v12 = v10 >= v11;
    v13 = v10 - v11;
    if (v12)
    {
      v0 = v13;
    }

    else
    {
      v0 = 0;
    }

    if (v0 < 0)
    {
      goto LABEL_190;
    }

    v1 = *(v1 + 328);
    if (*(v1 + 208) >= 1)
    {
      v14 = *(v7 + 952);
      if (!v14)
      {
        goto LABEL_201;
      }

      v2 = *(v7 + 296);
      v15 = *(v7 + 344);
      *&v124 = *(v7 + 336);
      BYTE8(v124) = v15;

      v0 = sub_18229E698(v14, v0, v2, &v124);

      if (v0)
      {
        v0 = *(v7 + 952);
        if (v0)
        {

          v1 = v7;
          sub_182047340(v16, 0, 0);
        }
      }
    }
  }

  v6 = &unk_182AE6000;
  v120 = v7;
  if (*(v7 + 1123) == 1)
  {
    swift_beginAccess();
    v4 = *(v7 + 936);
    v5 = v4 + 64;
    v112 = 1;
    v17 = 1 << *(v4 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v0 = &unk_182AE6000;
    v6 = v18 & *(v4 + 64);
    v19 = (v17 + 63) >> 6;
    v119 = "client state on flow ";

    v3 = 0;
    v121 = v19;
    v115 = v4;
LABEL_15:
    v20 = v3;
    while (v6)
    {
      v3 = v20;
LABEL_23:
      v21 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v22 = (v3 << 9) | (8 * v21);
      v23 = *(*(v4 + 48) + v22);
      v2 = *(*(v4 + 56) + v22);
      swift_beginAccess();
      v24 = *(v7 + 40);
      if (*(v24 + 16))
      {
        v25 = sub_18224EEF0(v2);
        if (v26)
        {
          v0 = *(*(*(v24 + 56) + 8 * v25) + 16);
          if (v0)
          {
            type metadata accessor for QUICStreamInstance();
            swift_unknownObjectRetain();
            v27 = swift_dynamicCastClass();
            if (v27)
            {
              v1 = sub_182048A70(v27, v112 & 1);
              swift_unknownObjectRelease();
              v112 &= v1 ^ 1;
              goto LABEL_15;
            }

            swift_unknownObjectRelease();
          }
        }
      }

      v28 = *(v7 + 80);
      v29 = *(v7 + 88);
      v123 = v28;
      *&v124 = 0;
      *(&v124 + 1) = 0xE000000000000000;

      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BDA300);
      if (v2)
      {
        v30 = sub_182AD2F38();
        v32 = v31;
      }

      else
      {
        v32 = 0xE900000000000073;
        v30 = 0x776F6C46206C6C41;
      }

      MEMORY[0x1865D9CA0](v30, v32);

      MEMORY[0x1865D9CA0](0x535B20646E6120, 0xE700000000000000);
      *&v158 = v23;
      v33 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v33);

      MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BDA320);
      v34 = *(&v124 + 1);
      v0 = v124;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v35 = sub_182AD2698();
      __swift_project_value_buffer(v35, qword_1EA843418);

      v1 = sub_182AD2678();
      v2 = sub_182AD38B8();

      if (os_log_type_enabled(v1, v2))
      {
        v36 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *&v124 = v117;
        *v36 = 136315650;
        v37 = sub_182AD3BF8();
        v116 = v0;
        v39 = sub_181C64FFC(v37, v38, &v124);

        *(v36 + 4) = v39;
        *(v36 + 12) = 2080;
        v40 = sub_181C64FFC(v123, v29, &v124);

        *(v36 + 14) = v40;
        *(v36 + 22) = 2080;
        v41 = sub_181C64FFC(v0, v34, &v124);

        *(v36 + 24) = v41;
        _os_log_impl(&dword_181A37000, v1, v2, "%s %s %s", v36, 0x20u);
        v0 = v117;
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v117, -1, -1);
        v42 = v36;
        v4 = v115;
        MEMORY[0x1865DF520](v42, -1, -1);
      }

      else
      {
      }

      v20 = v3;
      v7 = v120;
      v19 = v121;
    }

    while (1)
    {
      v3 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v3 >= v19)
      {
        goto LABEL_76;
      }

      v6 = *(v5 + 8 * v3);
      ++v20;
      if (v6)
      {
        goto LABEL_23;
      }
    }

LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
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
    result = sub_182AD3EB8();
    if (!result)
    {
      return result;
    }

    goto LABEL_186;
  }

  v43 = (v7 + 840);
  for (LOBYTE(v4) = 1; ; LOBYTE(v4) = (v0 ^ 1) & v4)
  {
    swift_beginAccess();
    v1 = *v43;
    v3 = *v43 & 0x8000000000000000;
    v5 = *v43 >> 62;
    if (v5)
    {
      if (v3)
      {
        v0 = *v43;
      }

      else
      {
        v0 = *v43 & 0xFFFFFFFFFFFFFF8;
      }

      if (!sub_182AD3EB8())
      {
LABEL_77:
        swift_endAccess();
        goto LABEL_78;
      }

      if (!sub_182AD3EB8())
      {
        goto LABEL_196;
      }

      if (!sub_182AD3EB8())
      {
        goto LABEL_197;
      }
    }

    else if (!*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_77;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1865DA790](0, v1);
      v44 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_179;
      }

      v2 = *(v1 + 32);

      v44 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
LABEL_42:
        v45 = *(v44 + 16);
        if (!v45)
        {
          goto LABEL_183;
        }

        goto LABEL_58;
      }
    }

    if (v3)
    {
      v0 = v1;
    }

    else
    {
      v0 = v44;
    }

    if (!sub_182AD3EB8())
    {
      goto LABEL_183;
    }

    if (sub_182AD3EB8() < 1)
    {
      goto LABEL_184;
    }

    v45 = sub_182AD3EB8();
LABEL_58:
    v0 = v45 - 1;
    if (__OFSUB__(v45, 1))
    {
      goto LABEL_180;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v43 = v1;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v5)
      {
        v5 = v1 & 0xFFFFFFFFFFFFFF8;
        if (v0 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }

LABEL_64:
      sub_182AD3EB8();
      goto LABEL_65;
    }

    if (v5)
    {
      goto LABEL_64;
    }

LABEL_65:
    v1 = sub_182AD3C38();
    *v43 = v1;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v3 = v1 & 0x8000000000000000;
LABEL_66:
    v0 = v5 + 32;

    if (!(v1 >> 62))
    {
      v3 = *(v5 + 16);
      memmove((v5 + 32), (v5 + 40), 8 * v3 - 8);
      v47 = v3 - 1;
      if (__OFSUB__(v3, 1))
      {
        break;
      }

      goto LABEL_68;
    }

    if (v3)
    {
      v3 = v1;
    }

    else
    {
      v3 = v5;
    }

    v48 = sub_182AD3EB8();
    if (__OFSUB__(v48, 1))
    {
      goto LABEL_198;
    }

    memmove((v5 + 32), (v5 + 40), 8 * (v48 - 1));
    v3 = sub_182AD3EB8();
    v47 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      break;
    }

LABEL_68:
    *(v5 + 16) = v47;
    *(v7 + 840) = v1;
    (*(v7 + 904))(v2);
    swift_endAccess();
    v0 = sub_182048A70(v2, v4 & 1);
  }

  __break(1u);
LABEL_76:

  swift_beginAccess();
  sub_182026E50();
  swift_endAccess();
  v6 = 0x182AE6000;
LABEL_78:
  v49 = (v7 + 744);
  v122 = v7 + 936;
  v118 = *(v6 + 672);
  while (1)
  {
    swift_beginAccess();
    v6 = *v49;
    v1 = *v49 >> 62;
    if (v1)
    {
      break;
    }

    if (!*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_173;
    }

LABEL_83:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1865DA790](0, v6);
      v50 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!v1)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v5 = *(v6 + 32);

      v50 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!v1)
      {
LABEL_86:
        v51 = *(v50 + 16);
        if (!v51)
        {
          goto LABEL_181;
        }

        goto LABEL_102;
      }
    }

    if (v6 < 0)
    {
      v0 = v6;
    }

    else
    {
      v0 = v50;
    }

    if (!sub_182AD3EB8())
    {
      goto LABEL_181;
    }

    if (sub_182AD3EB8() < 1)
    {
      goto LABEL_182;
    }

    v51 = sub_182AD3EB8();
LABEL_102:
    v0 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
      goto LABEL_177;
    }

    v52 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v49 = v6;
    if (v52)
    {
      if (!v1)
      {
        if (v0 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_110;
        }

        goto LABEL_109;
      }

LABEL_108:
      sub_182AD3EB8();
      goto LABEL_109;
    }

    if (v1)
    {
      goto LABEL_108;
    }

LABEL_109:
    v6 = sub_182AD3C38();
    *v49 = v6;
LABEL_110:
    sub_18206A09C(0, 1, 0);
    *(v7 + 744) = v6;
    v1 = *(v7 + 816);
    (*(v7 + 808))(v5);
    swift_endAccess();
    if (*(v5 + 24))
    {
      goto LABEL_193;
    }

    v0 = *(v5 + 16);
    swift_beginAccess();
    v53 = *v122;
    if (!*(*v122 + 16) || (v54 = sub_18225BD68(), (v55 & 1) == 0))
    {
      swift_endAccess();
      v70 = *(v7 + 80);
      v69 = *(v7 + 88);
      *&v124 = 0;
      *(&v124 + 1) = 0xE000000000000000;

      sub_182AD3BA8();

      *&v124 = 0xD000000000000026;
      *(&v124 + 1) = 0x8000000182BDA2D0;
      v71 = *(v5 + 32);
      v2 = *(v5 + 40);

      MEMORY[0x1865D9CA0](v71, v2);

      v5 = *(&v124 + 1);
      v0 = v124;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v72 = sub_182AD2698();
      __swift_project_value_buffer(v72, qword_1EA843418);

      v73 = sub_182AD2678();
      v3 = sub_182AD38B8();

      if (os_log_type_enabled(v73, v3))
      {
        v2 = swift_slowAlloc();
        v119 = v0;
        v0 = swift_slowAlloc();
        *&v124 = v0;
        *v2 = v118;
        v74 = sub_182AD3BF8();
        v75 = v49;
        v4 = sub_181C64FFC(v74, v76, &v124);

        *(v2 + 4) = v4;
        LOBYTE(v4) = 32;
        *(v2 + 12) = 2080;
        v77 = sub_181C64FFC(v70, v69, &v124);

        *(v2 + 14) = v77;
        *(v2 + 22) = 2080;
        v78 = sub_181C64FFC(v119, v5, &v124);

        *(v2 + 24) = v78;
        v49 = v75;
        _os_log_impl(&dword_181A37000, v73, v3, "%s %s %s", v2, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v0, -1, -1);
        MEMORY[0x1865DF520](v2, -1, -1);
      }

      else
      {
      }

LABEL_132:

      v7 = v120;
      continue;
    }

    v4 = *(*(v53 + 56) + 8 * v54);
    swift_endAccess();
    v155 = 0;
    sub_18202D4C0(&v155, v7, v156);
    v168 = v156[10];
    v169 = v156[11];
    v170 = v156[12];
    v171 = v157;
    v164 = v156[6];
    v165 = v156[7];
    v166 = v156[8];
    v167 = v156[9];
    v160 = v156[2];
    v161 = v156[3];
    v162 = v156[4];
    v163 = v156[5];
    v158 = v156[0];
    v159 = v156[1];
    if (sub_181F3D1E4(&v158) == 1)
    {
      goto LABEL_80;
    }

    v3 = v155;
    v151 = v168;
    v152 = v169;
    v153 = v170;
    v154 = v171;
    v147 = v164;
    v148 = v165;
    v149 = v166;
    v150 = v167;
    v143 = v160;
    v144 = v161;
    v145 = v162;
    v146 = v163;
    v141 = v158;
    v142 = v159;
    swift_beginAccess();
    v56 = *(v7 + 40);
    if (!*(v56 + 16) || (v57 = sub_18224EEF0(v4), (v58 & 1) == 0))
    {
      Frame.finalize(success:)(0);
      v2 = *(&v141 + 1);
      v1 = v141;
      v3 = v142;
      LOBYTE(v4) = BYTE8(v142);
      v7 = *(&v143 + 1);
      v5 = v143;
      LOBYTE(v6) = v144;
      v0 = *(&v151 + 1);
      if (v144 != 2 || v143 != 0)
      {
        goto LABEL_199;
      }

      if ((v151 & 1) == 0 && v150)
      {
        MEMORY[0x1865DF520](v150, -1, -1);
      }

      sub_181F68EF4(v1, v2, v3, v4);
      goto LABEL_132;
    }

    if (v3)
    {
      LOBYTE(v152) = 1;
      BYTE2(v153) = 1;
    }

    v6 = *(*(v56 + 56) + 8 * v57);
    v1 = v6 + 120;
    swift_beginAccess();
    if (*(v6 + 344) == 1)
    {
      v59 = v5;
      v113 = v3;
      v114 = v49;
      v134 = v151;
      v135 = v152;
      v136 = v153;
      LOBYTE(v137) = v154;
      v130 = v147;
      v131 = v148;
      v132 = v149;
      v133 = v150;
      v126 = v143;
      v127 = v144;
      v128 = v145;
      v129 = v146;
      v124 = v141;
      v125 = v142;
      v119 = *(v6 + 120);
      v115 = *(v6 + 136);
      v116 = *(v6 + 128);
      LOBYTE(v5) = *(v6 + 144);
      v7 = *(v6 + 152);
      v0 = *(v6 + 160);
      v2 = *(v6 + 168);
      v60 = *(v6 + 264);
      v61 = *(v6 + 280);
      v4 = *(v6 + 336);

      if (v2 != 2 || v0 | v7)
      {
        goto LABEL_200;
      }

      if (v60)
      {
        v62 = v61;
      }

      else
      {
        v62 = 1;
      }

      v7 = v120;
      if ((v62 & 1) == 0)
      {
        MEMORY[0x1865DF520](v60, -1, -1);
      }

      sub_181F68EF4(v119, v116, v115, v5);

      v63 = v135;
      *(v6 + 280) = v134;
      *(v6 + 296) = v63;
      *(v6 + 312) = v136;
      *(v6 + 328) = v137;
      v64 = v131;
      *(v6 + 216) = v130;
      *(v6 + 232) = v64;
      v65 = v133;
      *(v6 + 248) = v132;
      *(v6 + 264) = v65;
      v66 = v127;
      *(v6 + 152) = v126;
      *(v6 + 168) = v66;
      v67 = v129;
      *(v6 + 184) = v128;
      *(v6 + 200) = v67;
      v68 = v125;
      *v1 = v124;
      *(v6 + 136) = v68;
      *(v6 + 336) = 0;
      *(v6 + 344) = 0;
      v49 = v114;
      v3 = v113;
      v5 = v59;
    }

    else
    {
      v79 = *(v6 + 336);

      if (!v79)
      {
        *(v6 + 336) = *sub_182AD2388();
      }

      type metadata accessor for FrameArrayEntry();
      v4 = swift_allocObject();
      swift_beginAccess();
      v80 = v146;
      *(v4 + 80) = v145;
      *(v4 + 96) = v80;
      v81 = v144;
      *(v4 + 48) = v143;
      *(v4 + 64) = v81;
      v82 = v150;
      *(v4 + 144) = v149;
      *(v4 + 160) = v82;
      v83 = v148;
      *(v4 + 112) = v147;
      *(v4 + 128) = v83;
      *(v4 + 224) = v154;
      v84 = v153;
      *(v4 + 192) = v152;
      *(v4 + 208) = v84;
      *(v4 + 176) = v151;
      v85 = v142;
      *(v4 + 16) = v141;
      *(v4 + 32) = v85;
      v86 = *(*(v6 + 336) + 24);
      v0 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_187;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = *(v6 + 336);
      if (v88[2] < v0 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v1 = v6 + 336;
        sub_181F461F8(isUniquelyReferenced_nonNull_native, v0, 0);
        v88 = *(v6 + 336);
      }

      v89 = v88[3];
      v90 = v88[4];
      v93 = __OFADD__(v90, v89);
      v91 = v90 + v89;
      if (v93)
      {
        goto LABEL_188;
      }

      if (v89 < 0)
      {
        if (v91 < 0)
        {
          v95 = v88[2];
          v93 = __OFADD__(v91, v95);
          v91 += v95;
          if (v93)
          {
            goto LABEL_192;
          }
        }
      }

      else
      {
        v92 = v88[2];
        v93 = __OFSUB__(v91, v92);
        v94 = v91 - v92;
        if (v94 < 0 == v93)
        {
          v91 = v94;
          if (v93)
          {
            goto LABEL_191;
          }
        }
      }

      v88[v91 + 5] = v4;
      v93 = __OFADD__(v89, 1);
      v96 = v89 + 1;
      if (v93)
      {
        goto LABEL_189;
      }

      v88[3] = v96;
    }

    swift_endAccess();
    if ((*(v6 + 56) & 0x10) == 0)
    {
LABEL_79:

LABEL_80:

      continue;
    }

    if ((*(v7 + 16) & 0x80) != 0)
    {

      if (v3)
      {
        v108 = *(v6 + 56);
        if ((v108 & 0x40) == 0)
        {
          *(v6 + 56) = v108 | 0x40;
        }
      }

      goto LABEL_80;
    }

    v97 = *(v6 + 64);
    v98 = *(v6 + 72);
    v99 = *(v6 + 80);
    *&v124 = v97;
    *(&v124 + 1) = v98;
    LOBYTE(v125) = v99;
    if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
    {
      *(v6 + 88) = v6;
      *(v6 + 96) = &off_1EEFC4E60;
      *(v6 + 104) = 3;
      v0 = v97;
      v109 = v98;
      v2 = v99;

      sub_181F68EA8(v0, v109, v2);
      sub_181F68E5C(0, 0, 6u);
    }

    else
    {
      sub_181F68EA8(v97, v98, v99);
    }

    v100 = *(v6 + 96);
    v101 = *(v6 + 104);
    v138 = *(v6 + 88);
    v139 = v100;
    v140 = v101;
    sub_181F68EA8(v138, v100, v101);
    InputHandlerLinkage.invokeInputAvailable(_:)(&v138);
    sub_181F68E5C(v138, v139, v140);
    sub_181F68E5C(v124, *(&v124 + 1), v125);
    if ((v3 & 1) == 0)
    {
      goto LABEL_79;
    }

    v102 = *(v6 + 56);
    if ((v102 & 0x40) != 0)
    {
      *(v6 + 56) = v102 & 0xFFBF;
    }

    v103 = *(v6 + 64);
    v104 = *(v6 + 72);
    v105 = *(v6 + 80);
    *&v124 = v103;
    *(&v124 + 1) = v104;
    LOBYTE(v125) = v105;
    if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
    {
      *(v6 + 88) = v6;
      *(v6 + 96) = &off_1EEFC4E60;
      *(v6 + 104) = 3;
      v0 = v103;
      v110 = v104;
      v2 = v105;

      sub_181F68EA8(v0, v110, v2);
      sub_181F68E5C(0, 0, 6u);
    }

    else
    {
      sub_181F68EA8(v103, v104, v105);
    }

    v106 = *(v6 + 96);
    v107 = *(v6 + 104);
    v138 = *(v6 + 88);
    v139 = v106;
    v140 = v107;
    sub_181F68EA8(v138, v106, v107);
    sub_181F71CEC(&v138);

    sub_181F68E5C(v138, v139, v140);
    sub_181F68E5C(v124, *(&v124 + 1), v125);
  }

  if (v6 < 0)
  {
    v0 = *v49;
  }

  else
  {
    v0 = *v49 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_182AD3EB8())
  {
    if (!sub_182AD3EB8())
    {
      goto LABEL_194;
    }

    if (!sub_182AD3EB8())
    {
      goto LABEL_195;
    }

    goto LABEL_83;
  }

LABEL_173:
  swift_endAccess();
  swift_beginAccess();
  v111 = *(v7 + 840);
  if (v111 >> 62)
  {
    goto LABEL_185;
  }

  result = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    sub_181F68EF4(v1, v2, v3, v4);

    sub_181F68F3C(v5, v7, v6);
    __break(1u);
LABEL_200:
    sub_181F68EF4(v119, v116, v115, v5);

    result = sub_181F68F3C(v7, v0, v2);
    __break(1u);
LABEL_201:
    __break(1u);
  }

  return result;
}

uint64_t sub_182048A70(uint64_t a1, int a2)
{
  v6 = *(v2 + 952);
  if (!v6)
  {
    __break(1u);
    goto LABEL_90;
  }

  v7 = v2;
  if (*(v2 + 1026))
  {
    v4 = *(v2 + 80);
    v3 = *(v2 + 88);
    v8 = qword_1EA837250;

    if (v8 == -1)
    {
LABEL_4:
      if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
      {

LABEL_9:
        v9 = 0;
LABEL_10:
        if (*(v6 + 1097) != 1)
        {
LABEL_16:

          return 0;
        }

        v4 = *(v7 + 80);
        v10 = *(v7 + 88);
        v11 = qword_1EA837250;

        if (v11 != -1)
        {
          swift_once();
        }

        if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
        {

          goto LABEL_16;
        }

LABEL_73:
        v110 = v6;
        v109 = v9;
        v27 = 0x8000000182BDB0F0;
        if (qword_1EA837248 == -1)
        {
          goto LABEL_74;
        }

        goto LABEL_93;
      }

      v113 = v7;
      v5 = 0x8000000182BDB110;
      if (qword_1EA837248 == -1)
      {
LABEL_69:
        v46 = sub_182AD2698();
        __swift_project_value_buffer(v46, qword_1EA843418);
        v47 = swift_allocObject();
        *(v47 + 16) = "servicePendingSendData(stream:burstLimitReschedule:)";
        *(v47 + 24) = 52;
        *(v47 + 32) = 2;
        v48 = swift_allocObject();
        *(v48 + 16) = sub_181F8C724;
        *(v48 + 24) = v47;
        v49 = swift_allocObject();
        *(v49 + 16) = v4;
        *(v49 + 24) = v3;
        v50 = swift_allocObject();
        *(v50 + 16) = 0xD000000000000015;
        *(v50 + 24) = v5;

        v51 = sub_182AD2678();
        v52 = sub_182AD38A8();
        v110 = swift_allocObject();
        *(v110 + 16) = 32;
        v112 = swift_allocObject();
        *(v112 + 16) = 8;
        v53 = swift_allocObject();
        *(v53 + 16) = sub_18206B168;
        *(v53 + 24) = v48;
        v54 = swift_allocObject();
        *(v54 + 16) = sub_181F8C718;
        *(v54 + 24) = v53;
        v109 = swift_allocObject();
        *(v109 + 16) = 32;
        v114 = swift_allocObject();
        *(v114 + 16) = 8;
        v55 = swift_allocObject();
        *(v55 + 16) = sub_181F8C720;
        *(v55 + 24) = v49;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_181F8C718;
        *(v56 + 24) = v55;
        v115 = swift_allocObject();
        *(v115 + 16) = 32;
        v116 = swift_allocObject();
        *(v116 + 16) = 8;
        v57 = swift_allocObject();
        *(v57 + 16) = sub_181F8C720;
        *(v57 + 24) = v50;
        v58 = swift_allocObject();
        *(v58 + 16) = sub_181F8C718;
        *(v58 + 24) = v57;
        LODWORD(v108) = v52;
        v111 = v51;
        if (os_log_type_enabled(v51, v52))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v118 = 0;
          *v59 = 770;
          v117[0] = v60;
          v122 = (v59 + 2);
          v124 = sub_181F8C728;
          v125 = v110;
          v9 = 0;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C728;
          v125 = v112;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C714;
          v125 = v54;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C728;
          v125 = v109;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C728;
          v125 = v114;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C714;
          v125 = v56;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C728;
          v125 = v115;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C728;
          v125 = v116;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v124 = sub_181F8C714;
          v125 = v58;
          sub_181F73AE0(&v124, &v122, &v118, v117);

          v61 = v111;
          _os_log_impl(&dword_181A37000, v111, v108, "%s %s %s", v59, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v60, -1, -1);
          MEMORY[0x1865DF520](v59, -1, -1);
        }

        else
        {

          v9 = 0;
        }

        v7 = v113;
        goto LABEL_10;
      }

LABEL_91:
      swift_once();
      goto LABEL_69;
    }

LABEL_67:
    swift_once();
    goto LABEL_4;
  }

  if (*(v6 + 1097))
  {

    goto LABEL_9;
  }

  v116 = a1;
  LODWORD(v112) = a2;
  v13 = *(v2 + 304);
  v10 = (0x202020100uLL >> (8 * v13));

  v115 = sub_182232B60(v13);

  v14 = *(v7 + 352);
  if (v10)
  {
    swift_beginAccess();
    if (v10 == 1)
    {
      v15 = 200;
    }

    else
    {
      v15 = 352;
    }
  }

  else
  {
    swift_beginAccess();
    v15 = 48;
  }

  v114 = *(v14 + v15);
  v16 = *(v7 + 376);
  swift_beginAccess();
  v17 = *(v16 + 40);
  if (!*(v17 + 16) || (v18 = sub_18224EF74(v10), (v19 & 1) == 0))
  {
LABEL_90:
    swift_endAccess();
    __break(1u);
    goto LABEL_91;
  }

  v20 = *(*(v17 + 56) + 8 * v18);
  swift_endAccess();
  v21 = *(v7 + 1026);

  v22 = sub_182211074(v6, v21);

  v4 = &v104;
  v24 = *(v7 + 296);
  v25 = *(v7 + 304);
  MEMORY[0x1EEE9AC00](v23);
  v9 = v116;

  v113 = v7;
  v3 = v6;
  LODWORD(v115) = sub_18202FE30(v6, v24, v10, v25, v20, v114, v115, v22, sub_18206AC88, v7, sub_18206AC94, v7, sub_18206AC9C);

  v6 = *(*(v9 + 56) + 48);
  swift_beginAccess();
  v26 = 0;
  v7 = *(v9 + 320);
  if (*(v9 + 312))
  {
    goto LABEL_48;
  }

  v27 = *(v9 + 304);
  if (*(v9 + 112) == 5)
  {
    v26 = nw_frame_unclaimed_length(*(v9 + 88));
    if (!v27)
    {
      goto LABEL_47;
    }

LABEL_32:
    isa = v27[4].isa;
    v34 = (v27[3].isa + isa);
    if (v27[2].isa < v34)
    {
      v34 = v27[2].isa;
    }

    v118 = v27;
    v119 = isa;
    v120 = v34;
    swift_retain_n();
    v4 = v27;
    do
    {
      if (isa == v120)
      {
        if ((sub_181AC81FC(v35) & 1) == 0)
        {

          v9 = v116;
          goto LABEL_47;
        }

        v4 = v118;
        isa = v119;
      }

      v38 = &v4[isa];
      isa = (isa + 1);
      v119 = isa;
      v39 = v38[5];
      swift_beginAccess();
      if (*(v39 + 40) == 5)
      {
        v36 = *(v39 + 16);

        v37 = nw_frame_unclaimed_length(v36);
      }

      else
      {
        v40 = *(v39 + 88);
        if (v40)
        {
          v41 = *(v39 + 72);
          v42 = *(v39 + 80);
          v31 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v31)
          {
            goto LABEL_65;
          }

          v37 = v40 - v43;
          if (__OFSUB__(v40, v43))
          {
            goto LABEL_66;
          }
        }

        else
        {

          v37 = 0;
        }
      }

      swift_endAccess();

      v31 = __OFADD__(v26, v37);
      v26 += v37;
    }

    while (!v31);
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v28 = *(v9 + 160);
  if (v28)
  {
    v29 = *(v9 + 144);
    v30 = *(v9 + 152);
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      __break(1u);
    }

    else
    {
      v26 = v28 - v32;
      if (!__OFSUB__(v28, v32))
      {
        if (!v27)
        {
          goto LABEL_47;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_86;
  }

  v26 = 0;
  if (v27)
  {
    goto LABEL_32;
  }

LABEL_47:
  if (v26 < 0)
  {
    __break(1u);
    goto LABEL_72;
  }

LABEL_48:
  if (__CFADD__(v7, v26))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  swift_endAccess();
  v44 = v113;
  if (v6 < v7 + v26 && *(*(v113 + 144) + 48) >= *(*(v113 + 144) + 32))
  {
    sub_18205CF18();
  }

  sub_182170B00();
  if ((v115 & 1) == 0)
  {
    goto LABEL_16;
  }

  v27 = *(v44 + 80);
  v4 = *(v44 + 88);
  v45 = qword_1EA837250;

  if (v45 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
  {

    if ((v112 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v122 = 0;
  v123 = 0xE000000000000000;
  sub_182AD3BA8();

  v122 = 0xD00000000000001FLL;
  v123 = 0x8000000182BDB0D0;
  v80 = v9;
  v81 = *(v9 + 32);
  v82 = *(v80 + 40);

  MEMORY[0x1865D9CA0](v81, v82);

  v83 = v122;
  v115 = v123;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v84 = sub_182AD2698();
  __swift_project_value_buffer(v84, qword_1EA843418);
  v85 = swift_allocObject();
  *(v85 + 16) = "servicePendingSendData(stream:burstLimitReschedule:)";
  *(v85 + 24) = 52;
  *(v85 + 32) = 2;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_181F8C724;
  *(v86 + 24) = v85;
  v87 = swift_allocObject();
  *(v87 + 16) = v27;
  *(v87 + 24) = v4;
  v88 = swift_allocObject();
  v89 = v115;
  *(v88 + 16) = v83;
  *(v88 + 24) = v89;

  v90 = sub_182AD2678();
  v91 = sub_182AD38A8();
  v107 = swift_allocObject();
  *(v107 + 16) = 32;
  v108 = swift_allocObject();
  *(v108 + 16) = 8;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_18206B168;
  *(v92 + 24) = v86;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_181F8C718;
  *(v93 + 24) = v92;
  v109 = swift_allocObject();
  *(v109 + 16) = 32;
  v110 = swift_allocObject();
  *(v110 + 16) = 8;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_181F8C720;
  *(v94 + 24) = v87;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_181F8C718;
  *(v95 + 24) = v94;
  v111 = swift_allocObject();
  LOBYTE(v111[2].isa) = 32;
  v114 = swift_allocObject();
  *(v114 + 16) = 8;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_181F8C720;
  *(v96 + 24) = v88;
  v27 = swift_allocObject();
  v27[2].isa = sub_181F8C718;
  v27[3].isa = v96;
  v97 = v91;
  v98 = v91;
  v10 = v90;
  if (os_log_type_enabled(v90, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v117[0] = 0;
    v106 = v99;
    *v99 = 770;
    v105 = v100;
    v118 = v99 + 2;
    v121 = v100;
    v122 = sub_181F8C728;
    v123 = v107;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C728;
    v123 = v108;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C714;
    v123 = v93;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C728;
    v123 = v109;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C728;
    v123 = v110;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C714;
    v123 = v95;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C728;
    v123 = v111;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C728;
    v123 = v114;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v122 = sub_181F8C714;
    v123 = v27;
    sub_181F73AE0(&v122, &v118, v117, &v121);

    v101 = v97;
    v102 = v106;
    _os_log_impl(&dword_181A37000, v10, v101, "%s %s %s", v106, 0x20u);
    v103 = v105;
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v103, -1, -1);
    MEMORY[0x1865DF520](v102, -1, -1);

    goto LABEL_87;
  }

LABEL_86:

LABEL_87:
  v9 = v116;
  if ((v112 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_58:
  if (*(v9 + 24))
  {
    __break(1u);
LABEL_93:
    swift_once();
LABEL_74:
    v62 = sub_182AD2698();
    __swift_project_value_buffer(v62, qword_1EA843418);
    v63 = swift_allocObject();
    *(v63 + 16) = "servicePendingSendData(stream:burstLimitReschedule:)";
    *(v63 + 24) = 52;
    *(v63 + 32) = 2;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_181F8C724;
    *(v64 + 24) = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = v4;
    *(v65 + 24) = v10;
    v66 = swift_allocObject();
    *(v66 + 16) = 0xD000000000000017;
    *(v66 + 24) = v27;

    v67 = sub_182AD2678();
    v68 = sub_182AD38A8();
    v112 = swift_allocObject();
    *(v112 + 16) = 32;
    v113 = swift_allocObject();
    *(v113 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_18206B168;
    *(v69 + 24) = v64;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_181F8C718;
    *(v70 + 24) = v69;
    v111 = swift_allocObject();
    LOBYTE(v111[2].isa) = 32;
    v114 = swift_allocObject();
    *(v114 + 16) = 8;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_181F8C720;
    *(v71 + 24) = v65;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_181F8C718;
    *(v72 + 24) = v71;
    v115 = swift_allocObject();
    *(v115 + 16) = 32;
    v116 = swift_allocObject();
    *(v116 + 16) = 8;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_181F8C720;
    *(v73 + 24) = v66;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_181F8C718;
    *(v74 + 24) = v73;
    v75 = v68;
    if (os_log_type_enabled(v67, v68))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v118 = 0;
      *v76 = 770;
      v108 = v77;
      v117[0] = v77;
      v122 = (v76 + 2);
      v124 = sub_181F8C728;
      v125 = v112;
      v78 = v109;
      sub_181F73AE0(&v124, &v122, &v118, v117);
      if (v78)
      {

        while (1)
        {

          __break(1u);
        }
      }

      v124 = sub_181F8C728;
      v125 = v113;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C714;
      v125 = v70;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C728;
      v125 = v111;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C728;
      v125 = v114;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C714;
      v125 = v72;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C728;
      v125 = v115;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C728;
      v125 = v116;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      v124 = sub_181F8C714;
      v125 = v74;
      sub_181F73AE0(&v124, &v122, &v118, v117);

      _os_log_impl(&dword_181A37000, v67, v75, "%s %s %s", v76, 0x20u);
      v79 = v108;
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v79, -1, -1);
      MEMORY[0x1865DF520](v76, -1, -1);
    }

    else
    {
    }

    goto LABEL_16;
  }

  sub_18205F50C(*(v9 + 16));
LABEL_60:

  return 1;
}

uint64_t QUICConnectionImplementation.handleOutbound(frame:from:metadataComplete:connectionComplete:)(__int128 *a1, uint8_t *a2, int a3, unint64_t a4)
{
  v9 = v4;
  LODWORD(v200) = a3;
  v12 = a1[1];
  v211 = *a1;
  v212 = v12;
  v213 = a1[2];
  v14 = *(a1 + 6);
  v13 = *(a1 + 7);
  v16 = *(a1 + 8);
  v15 = *(a1 + 9);
  v17 = a1[8];
  v220 = a1[7];
  v221 = v17;
  v222 = a1[9];
  v18 = a1[6];
  v218 = a1[5];
  v219 = v18;
  v227 = *(a1 + 208);
  v19 = a1[12];
  v20 = *(a1 + 20);
  v21 = *(a1 + 21);
  v225 = a1[11];
  v226 = v19;
  v214 = v14;
  v215 = v13;
  v216 = v16;
  v217 = v15;
  v223 = v20;
  v224 = v21;
  if (BYTE8(v212) == 5)
  {
    v6 = nw_frame_unclaimed_length(v211);
    goto LABEL_9;
  }

  if (!v15)
  {
    goto LABEL_8;
  }

  v22 = __OFADD__(v13, v16);
  v23 = v13 + v16;
  if (v22)
  {
    __break(1u);
    goto LABEL_89;
  }

  v6 = v15 - v23;
  if (__OFSUB__(v15, v23))
  {
    __break(1u);
LABEL_8:
    v6 = 0;
  }

LABEL_9:
  ObjectType = *(v4 + 80);
  v5 = *(v4 + 88);
  v24 = qword_1EA837250;

  if (v24 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    LODWORD(v8) = byte_1EA843430;
    if (byte_1EA843430 & 1) != 0 && (__nwlog_is_datapath_logging_enabled())
    {
      *&v208[0] = 0;
      *(&v208[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BDA4E0);
      if (a2)
      {
        v91 = sub_182AD2F38();
        v93 = v92;
      }

      else
      {
LABEL_89:
        v93 = 0xE900000000000073;
        v91 = 0x776F6C46206C6C41;
      }

      MEMORY[0x1865D9CA0](v91, v93);

      MEMORY[0x1865D9CA0](0x20657A69732820, 0xE700000000000000);
      v204 = v6;
      v94 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v94);

      MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BDA500);
      if (v200)
      {
        v95 = 1702195828;
      }

      else
      {
        v95 = 0x65736C6166;
      }

      if (v200)
      {
        v96 = 0xE400000000000000;
      }

      else
      {
        v96 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v95, v96);

      v197 = *(&v208[0] + 1);
      osloga = *&v208[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v97 = sub_182AD2698();
      __swift_project_value_buffer(v97, qword_1EA843418);
      v98 = swift_allocObject();
      *(v98 + 16) = "handleOutbound(frame:from:metadataComplete:connectionComplete:)";
      *(v98 + 24) = 63;
      *(v98 + 32) = 2;
      v191 = swift_allocObject();
      *(v191 + 16) = sub_181F8C724;
      *(v191 + 24) = v98;
      v99 = swift_allocObject();
      *(v99 + 16) = ObjectType;
      *(v99 + 24) = v5;
      v167 = swift_allocObject();
      *(v167 + 16) = osloga;
      *(v167 + 24) = v197;

      oslog = sub_182AD2678();
      v195 = sub_182AD38A8();
      v192 = swift_allocObject();
      *(v192 + 16) = 32;
      v171 = swift_allocObject();
      *(v171 + 16) = 8;
      v100 = swift_allocObject();
      *(v100 + 16) = sub_18206B168;
      *(v100 + 24) = v191;
      v101 = swift_allocObject();
      *(v101 + 16) = sub_181F8C718;
      *(v101 + 24) = v100;
      v174 = v101;
      v178 = swift_allocObject();
      *(v178 + 16) = 32;
      v182 = swift_allocObject();
      LOBYTE(v182[2].isa) = 8;
      v102 = swift_allocObject();
      *(v102 + 16) = sub_181F8C720;
      *(v102 + 24) = v99;
      ObjectType = swift_allocObject();
      *(ObjectType + 16) = sub_181F8C718;
      *(ObjectType + 24) = v102;
      v187 = swift_allocObject();
      *(v187 + 16) = 32;
      v190 = swift_allocObject();
      *(v190 + 16) = 8;
      v103 = swift_allocObject();
      *(v103 + 16) = sub_181F8C720;
      *(v103 + 24) = v167;
      v104 = swift_allocObject();
      *(v104 + 16) = sub_181F8C718;
      *(v104 + 24) = v103;
      if (os_log_type_enabled(oslog, v195))
      {
        v168 = v104;
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v210[0] = 0;
        v161 = v106;
        bufb = v105;
        *v105 = 770;
        v203 = v106;
        v204 = v105 + 2;
        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v192;
        v25 = 0;
        sub_181F73AE0(v208, &v204, v210, &v203);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v171;
        sub_181F73AE0(v208, &v204, v210, &v203);

        *&v208[0] = sub_181F8C714;
        *(&v208[0] + 1) = v174;
        sub_181F73AE0(v208, &v204, v210, &v203);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v178;
        sub_181F73AE0(v208, &v204, v210, &v203);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v182;
        sub_181F73AE0(v208, &v204, v210, &v203);

        *&v208[0] = sub_181F8C714;
        *(&v208[0] + 1) = ObjectType;
        sub_181F73AE0(v208, &v204, v210, &v203);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v187;
        sub_181F73AE0(v208, &v204, v210, &v203);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v190;
        sub_181F73AE0(v208, &v204, v210, &v203);

        *&v208[0] = sub_181F8C714;
        *(&v208[0] + 1) = v168;
        sub_181F73AE0(v208, &v204, v210, &v203);

        _os_log_impl(&dword_181A37000, oslog, v195, "%s %s %s", bufb, 0x20u);
        ObjectType = v161;
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v161, -1, -1);
        MEMORY[0x1865DF520](bufb, -1, -1);

        goto LABEL_13;
      }
    }

    v25 = 0;
LABEL_13:
    swift_beginAccess();
    v26 = *(v9 + 40);
    if (*(v26 + 16))
    {
      v27 = sub_18224EEF0(a2);
      if (v28)
      {
        if (*(*(*(v26 + 56) + 8 * v27) + 16))
        {
          type metadata accessor for QUICDatagramFlow();
          swift_unknownObjectRetain();
          v29 = swift_dynamicCastClass();
          if (v29)
          {
            sub_18204CE84(&v211, v29);
            return swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }
      }
    }

    v30 = *(v9 + 40);
    if (!*(v30 + 16))
    {
      goto LABEL_30;
    }

    v31 = sub_18224EEF0(a2);
    if ((v32 & 1) == 0)
    {
      goto LABEL_30;
    }

    v5 = *(*(*(v30 + 56) + 8 * v31) + 16);
    if (!v5)
    {
      goto LABEL_30;
    }

    type metadata accessor for QUICStreamInstance();
    swift_unknownObjectRetain();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
      break;
    }

    if (*(v33 + 24))
    {
      if (v8)
      {
        a4 = *(v9 + 80);
        v34 = *(v9 + 88);
        v35 = qword_1EA837248;

        if (v35 != -1)
        {
          swift_once();
        }

        v36 = sub_182AD2698();
        __swift_project_value_buffer(v36, qword_1EA843418);

        v37 = sub_182AD2678();
        v38 = sub_182AD38A8();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v197 = v5;
          v40 = swift_slowAlloc();
          *&v208[0] = v40;
          *v39 = 136315650;
          v41 = sub_182AD3BF8();
          ObjectType = v42;
          v8 = sub_181C64FFC(v41, v42, v208);

          *(v39 + 4) = v8;
          *(v39 + 12) = 2080;
          a4 = sub_181C64FFC(a4, v34, v208);

          *(v39 + 14) = a4;
          *(v39 + 22) = 2080;
          *(v39 + 24) = sub_181C64FFC(0xD00000000000002BLL, 0x8000000182BDA3B0, v208);
          _os_log_impl(&dword_181A37000, v37, v38, "%s %s %s", v39, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v40, -1, -1);
          MEMORY[0x1865DF520](v39, -1, -1);
        }

        else
        {
        }
      }

      Frame.finalize(success:)(0);
      swift_unknownObjectRelease();
      v54 = *(&v211 + 1);
      v53 = v211;
      v55 = v212;
      v56 = BYTE8(v212);
      v25 = *(&v213 + 1);
      v75 = v213;
      v9 = v214;
      a2 = v224;
      if (v214 == 2 && v213 == 0)
      {
        goto LABEL_37;
      }

      sub_181F68EF4(v211, *(&v211 + 1), v212, BYTE8(v212));

      sub_181F68F3C(v75, v25, v9);
      __break(1u);
      goto LABEL_55;
    }

    v65 = *(v33 + 16);
    oslog = v33;
    if (!v21 || (v66 = *(v21 + 24)) == 0)
    {
      v21 = a4;
      if ((v65 & 2) != 0)
      {
        goto LABEL_62;
      }

      goto LABEL_57;
    }

    v192 = *(v33 + 16);
    if (v66 < 1)
    {
      __break(1u);
LABEL_125:
      swift_once();
      goto LABEL_47;
    }

    v190 = v6;
    v197 = v5;
    v67 = *(v21 + 32);
    v68 = *(v21 + 16);
    if (v67 < v68)
    {
      v68 = 0;
    }

    v69 = v21 + 40 * (v67 - v68);
    v70 = *(v69 + 40);
    v71 = *(v69 + 56);
    v209 = *(v69 + 72);
    v208[0] = v70;
    v208[1] = v71;
    v5 = *(&v71 + 1);
    ObjectType = swift_getObjectType();
    sub_181F49AE8(v208, &v204);
    if (qword_1ED4100E8 != -1)
    {
      goto LABEL_125;
    }

LABEL_47:
    LOWORD(v204) = word_1ED411CB0;
    v205 = qword_1ED411CB8;
    v206 = qword_1ED411CC0;
    v207 = byte_1ED411CC8;
    v72 = *(v5 + 48);
    v73 = sub_181F49A24(qword_1ED411CB8, qword_1ED411CC0, byte_1ED411CC8);
    v74 = v72(&v204, ObjectType, v5, v73);
    sub_18206A19C(v208);
    sub_181F48350(v205, v206, v207);
    if (v74)
    {
      v21 = a4 | v200;
      goto LABEL_56;
    }

LABEL_55:
    v21 = a4;
LABEL_56:
    v5 = v197;
    v33 = oslog;
    v6 = v190;
    v65 = v192;
    if ((v192 & 2) != 0)
    {
      goto LABEL_62;
    }

LABEL_57:
    if (((*(v9 + 1024) ^ ((v65 & 1) == 0)) & 1) != 0 || (ObjectType = v33, swift_beginAccess(), v33 = ObjectType, *(ObjectType + 368) != 1))
    {
LABEL_62:
      if (!v8)
      {
        goto LABEL_66;
      }

      goto LABEL_63;
    }

    if (!v8)
    {
      goto LABEL_66;
    }

    v193 = v21;
    v76 = *(v9 + 80);
    v77 = *(v9 + 88);

    if (__nwlog_is_datapath_logging_enabled())
    {
      v190 = v6;
      v197 = v5;
      *&v208[0] = 0;
      *(&v208[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](91, 0xE100000000000000);
      v192 = v65;
      v203 = v65;
      v128 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v128);

      MEMORY[0x1865D9CA0](0xD000000000000039, 0x8000000182BDA4A0);
      v129 = v208[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v130 = sub_182AD2698();
      __swift_project_value_buffer(v130, qword_1EA843418);
      v131 = swift_allocObject();
      *(v131 + 16) = "handleOutbound(frame:from:metadataComplete:connectionComplete:)";
      *(v131 + 24) = 63;
      *(v131 + 32) = 2;
      v132 = swift_allocObject();
      *(v132 + 16) = sub_181F8C724;
      *(v132 + 24) = v131;
      v184 = swift_allocObject();
      v184[2].isa = v76;
      v184[3].isa = v77;
      v157 = swift_allocObject();
      *(v157 + 16) = v129;

      v154 = sub_182AD2678();
      v133 = sub_182AD38A8();
      v160 = swift_allocObject();
      LOBYTE(v160[2].isa) = 32;
      v163 = swift_allocObject();
      *(v163 + 16) = 8;
      v134 = swift_allocObject();
      *(v134 + 16) = sub_18206B168;
      *(v134 + 24) = v132;
      v135 = swift_allocObject();
      *(v135 + 16) = sub_181F8C718;
      *(v135 + 24) = v134;
      bufa = v135;
      v170 = swift_allocObject();
      *(v170 + 16) = 32;
      v173 = swift_allocObject();
      *(v173 + 16) = 8;
      v136 = swift_allocObject();
      *(v136 + 16) = sub_181F8C720;
      *(v136 + 24) = v184;
      v137 = swift_allocObject();
      *(v137 + 16) = sub_181F8C718;
      *(v137 + 24) = v136;
      v176 = v137;
      v180 = swift_allocObject();
      *(v180 + 16) = 32;
      v185 = swift_allocObject();
      LOBYTE(v185[2].isa) = 8;
      v138 = swift_allocObject();
      *(v138 + 16) = sub_181F8C720;
      *(v138 + 24) = v157;
      v139 = swift_allocObject();
      *(v139 + 16) = sub_181F8C718;
      *(v139 + 24) = v138;
      v158 = v133;
      if (os_log_type_enabled(v154, v133))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v201 = v141;
        v202 = 0;
        *v140 = 770;
        v203 = v140 + 2;
        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v160;
        sub_181F73AE0(v208, &v203, &v202, &v201);
        if (v25)
        {
          goto LABEL_145;
        }

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v163;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C714;
        *(&v208[0] + 1) = bufa;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v170;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v173;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C714;
        *(&v208[0] + 1) = v176;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v180;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v185;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C714;
        *(&v208[0] + 1) = v139;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        _os_log_impl(&dword_181A37000, v154, v158, "%s %s %s", v140, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v141, -1, -1);
        MEMORY[0x1865DF520](v140, -1, -1);
      }

      else
      {
      }

      v5 = v197;
      v6 = v190;
      v65 = v192;
      LODWORD(v21) = v193;
    }

    else
    {

      LODWORD(v21) = v193;
    }

LABEL_63:
    v194 = v21;
    ObjectType = *(v9 + 80);
    v78 = *(v9 + 88);

    if (__nwlog_is_datapath_logging_enabled())
    {
      v197 = v5;
      *&v208[0] = 0;
      *(&v208[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BDA440);
      v192 = v65;
      v203 = v65;
      v107 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v107);

      MEMORY[0x1865D9CA0](0x20657A697328205DLL, 0xE800000000000000);
      v190 = v6;
      v203 = v6;
      v108 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v108);

      MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BDA460);
      if (v200)
      {
        v109 = 1702195828;
      }

      else
      {
        v109 = 0x65736C6166;
      }

      if (v200)
      {
        v110 = 0xE400000000000000;
      }

      else
      {
        v110 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v109, v110);

      MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BDA480);
      if (a4)
      {
        v111 = 1702195828;
      }

      else
      {
        v111 = 0x65736C6166;
      }

      if (a4)
      {
        v112 = 0xE400000000000000;
      }

      else
      {
        v112 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v111, v112);

      MEMORY[0x1865D9CA0](0x616E69467369202CLL, 0xEB00000000203A6CLL);
      if (v194)
      {
        v113 = 1702195828;
      }

      else
      {
        v113 = 0x65736C6166;
      }

      if (v194)
      {
        v114 = 0xE400000000000000;
      }

      else
      {
        v114 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v113, v114);

      MEMORY[0x1865D9CA0](41, 0xE100000000000000);
      v200 = *(&v208[0] + 1);
      v115 = *&v208[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v116 = sub_182AD2698();
      __swift_project_value_buffer(v116, qword_1EA843418);
      v117 = swift_allocObject();
      *(v117 + 16) = "handleOutbound(frame:from:metadataComplete:connectionComplete:)";
      *(v117 + 24) = 63;
      *(v117 + 32) = 2;
      v118 = swift_allocObject();
      *(v118 + 16) = sub_181F8C724;
      *(v118 + 24) = v117;
      v119 = swift_allocObject();
      *(v119 + 16) = ObjectType;
      *(v119 + 24) = v78;
      v155 = swift_allocObject();
      *(v155 + 16) = v115;
      *(v155 + 24) = v200;

      v159 = sub_182AD2678();
      ObjectType = sub_182AD38A8();
      buf = swift_allocObject();
      buf[16] = 32;
      v169 = swift_allocObject();
      *(v169 + 16) = 8;
      v120 = swift_allocObject();
      *(v120 + 16) = sub_18206B168;
      *(v120 + 24) = v118;
      v121 = swift_allocObject();
      *(v121 + 16) = sub_181F8C718;
      *(v121 + 24) = v120;
      v172 = v121;
      v162 = swift_allocObject();
      *(v162 + 16) = 32;
      v175 = swift_allocObject();
      *(v175 + 16) = 8;
      v122 = swift_allocObject();
      *(v122 + 16) = sub_181F8C720;
      *(v122 + 24) = v119;
      v123 = swift_allocObject();
      *(v123 + 16) = sub_181F8C718;
      *(v123 + 24) = v122;
      v179 = v123;
      v183 = swift_allocObject();
      LOBYTE(v183[2].isa) = 32;
      v188 = swift_allocObject();
      *(v188 + 16) = 8;
      v124 = swift_allocObject();
      *(v124 + 16) = sub_181F8C720;
      *(v124 + 24) = v155;
      v125 = swift_allocObject();
      *(v125 + 16) = sub_181F8C718;
      *(v125 + 24) = v124;
      if (os_log_type_enabled(v159, ObjectType))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v201 = v127;
        v202 = 0;
        *v126 = 770;
        v156 = v127;
        v203 = v126 + 2;
        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = buf;
        sub_181F73AE0(v208, &v203, &v202, &v201);
        if (v25)
        {

          while (1)
          {

            __break(1u);
          }
        }

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v169;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C714;
        *(&v208[0] + 1) = v172;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v162;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v175;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C714;
        *(&v208[0] + 1) = v179;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v183;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C728;
        *(&v208[0] + 1) = v188;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        *&v208[0] = sub_181F8C714;
        *(&v208[0] + 1) = v125;
        sub_181F73AE0(v208, &v203, &v202, &v201);

        _os_log_impl(&dword_181A37000, v159, ObjectType, "%s %s %s", v126, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v156, -1, -1);
        MEMORY[0x1865DF520](v126, -1, -1);
      }

      else
      {
      }

      v5 = v197;
      v6 = v190;
      v65 = v192;
    }

    else
    {
    }

    v33 = oslog;
    v21 = v194;
LABEL_66:
    if (v6 >= 1)
    {
      sub_182064CEC(&v211, v33, v21 & 1);
      return swift_unknownObjectRelease();
    }

    if (v21)
    {
      a4 = v65;
      swift_beginAccess();
      if (*(*(v9 + 936) + 16))
      {
        sub_18225BD68();
        if (v79)
        {
          swift_endAccess();
          if (!v8)
          {
LABEL_75:
            LOBYTE(v208[0]) = 1;
            QUICConnectionImplementation.stop(flow:path:direction:)(a2, v80, v208);
            goto LABEL_82;
          }

          ObjectType = *(v9 + 80);
          a4 = *(v9 + 88);

          if (!__nwlog_is_datapath_logging_enabled())
          {

            goto LABEL_75;
          }

          v197 = v5;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v142 = sub_182AD2698();
          __swift_project_value_buffer(v142, qword_1EA843418);
          v143 = swift_allocObject();
          *(v143 + 16) = "handleOutbound(frame:from:metadataComplete:connectionComplete:)";
          *(v143 + 24) = 63;
          *(v143 + 32) = 2;
          v144 = swift_allocObject();
          *(v144 + 16) = sub_181F8C724;
          *(v144 + 24) = v143;
          v145 = swift_allocObject();
          *(v145 + 16) = ObjectType;
          *(v145 + 24) = a4;
          v146 = swift_allocObject();
          *(v146 + 16) = 0xD00000000000002ALL;
          *(v146 + 24) = 0x8000000182BDA410;

          v186 = sub_182AD2678();
          v147 = sub_182AD38A8();
          v189 = swift_allocObject();
          *(v189 + 16) = 32;
          v190 = swift_allocObject();
          *(v190 + 16) = 8;
          v148 = swift_allocObject();
          *(v148 + 16) = sub_18206B168;
          *(v148 + 24) = v144;
          v21 = swift_allocObject();
          *(v21 + 16) = sub_181F8C718;
          *(v21 + 24) = v148;
          v192 = swift_allocObject();
          *(v192 + 16) = 32;
          v196 = swift_allocObject();
          *(v196 + 16) = 8;
          v149 = swift_allocObject();
          *(v149 + 16) = sub_181F8C720;
          *(v149 + 24) = v145;
          v150 = swift_allocObject();
          *(v150 + 16) = sub_181F8C718;
          *(v150 + 24) = v149;
          oslog = swift_allocObject();
          LOBYTE(oslog[2].isa) = 32;
          v200 = swift_allocObject();
          *(v200 + 16) = 8;
          v6 = swift_allocObject();
          *(v6 + 16) = sub_181F8C720;
          *(v6 + 24) = v146;
          v151 = swift_allocObject();
          *(v151 + 16) = sub_181F8C718;
          *(v151 + 24) = v6;
          ObjectType = v151;
          v181 = v147;
          v57 = v186;
          if (os_log_type_enabled(v186, v147))
          {
            v152 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            v201 = v153;
            v202 = 0;
            *v152 = 770;
            v177 = v153;
            v203 = v152 + 2;
            *&v208[0] = sub_181F8C728;
            *(&v208[0] + 1) = v189;
            sub_181F73AE0(v208, &v203, &v202, &v201);
            if (v25)
            {
LABEL_145:

              __break(1u);

              while (1)
              {

                __break(1u);
              }
            }

            *&v208[0] = sub_181F8C728;
            *(&v208[0] + 1) = v190;
            sub_181F73AE0(v208, &v203, &v202, &v201);

            *&v208[0] = sub_181F8C714;
            *(&v208[0] + 1) = v21;
            sub_181F73AE0(v208, &v203, &v202, &v201);

            *&v208[0] = sub_181F8C728;
            *(&v208[0] + 1) = v192;
            sub_181F73AE0(v208, &v203, &v202, &v201);

            *&v208[0] = sub_181F8C728;
            *(&v208[0] + 1) = v196;
            sub_181F73AE0(v208, &v203, &v202, &v201);

            *&v208[0] = sub_181F8C714;
            *(&v208[0] + 1) = v150;
            sub_181F73AE0(v208, &v203, &v202, &v201);

            *&v208[0] = sub_181F8C728;
            *(&v208[0] + 1) = oslog;
            sub_181F73AE0(v208, &v203, &v202, &v201);

            *&v208[0] = sub_181F8C728;
            *(&v208[0] + 1) = v200;
            sub_181F73AE0(v208, &v203, &v202, &v201);

            *&v208[0] = sub_181F8C714;
            *(&v208[0] + 1) = ObjectType;
            sub_181F73AE0(v208, &v203, &v202, &v201);

            _os_log_impl(&dword_181A37000, v186, v181, "%s %s %s", v152, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v177, -1, -1);
            MEMORY[0x1865DF520](v152, -1, -1);

            v5 = v197;
            goto LABEL_75;
          }

LABEL_141:

          v5 = v197;
          goto LABEL_75;
        }
      }

      swift_endAccess();
    }

    a4 = *(v9 + 80);
    v81 = *(v9 + 88);
    v82 = qword_1EA837248;

    if (v82 != -1)
    {
      swift_once();
    }

    v83 = sub_182AD2698();
    __swift_project_value_buffer(v83, qword_1EA843418);

    v84 = sub_182AD2678();
    v85 = sub_182AD38D8();

    if (os_log_type_enabled(v84, v85))
    {
      v21 = "is for an unknown stream ID";
      v86 = swift_slowAlloc();
      v197 = v5;
      v6 = swift_slowAlloc();
      *&v208[0] = v6;
      *v86 = 136315650;
      v87 = sub_182AD3BF8();
      ObjectType = v88;
      v89 = sub_181C64FFC(v87, v88, v208);

      *(v86 + 4) = v89;
      *(v86 + 12) = 2080;
      a4 = sub_181C64FFC(a4, v81, v208);

      *(v86 + 14) = a4;
      *(v86 + 22) = 2080;
      *(v86 + 24) = sub_181C64FFC(0xD000000000000028, 0x8000000182BDA3E0, v208);
      _os_log_impl(&dword_181A37000, v84, v85, "%s %s %s", v86, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v6, -1, -1);
      MEMORY[0x1865DF520](v86, -1, -1);
    }

    else
    {
    }

LABEL_82:
    Frame.finalize(success:)(0);
    swift_unknownObjectRelease();
    v54 = *(&v211 + 1);
    v53 = v211;
    v55 = v212;
    v56 = BYTE8(v212);
    v90 = v213;
    v9 = v214;
    a2 = v224;
    if (v214 == 2 && v213 == 0)
    {
      goto LABEL_37;
    }

    sub_181F68EF4(v211, *(&v211 + 1), v212, BYTE8(v212));

    sub_181F68F3C(v90, *(&v90 + 1), v9);
    __break(1u);
LABEL_85:
    swift_once();
  }

  swift_unknownObjectRelease();
LABEL_30:
  v44 = *(v9 + 80);
  v43 = *(v9 + 88);
  *&v208[0] = 0;
  *(&v208[0] + 1) = 0xE000000000000000;

  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD000000000000020, 0x8000000182BDA380);
  v204 = a2;
  sub_182AD3E18();
  v45 = *(&v208[0] + 1);
  a4 = *&v208[0];
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v46 = sub_182AD2698();
  __swift_project_value_buffer(v46, qword_1EA843418);

  v47 = sub_182AD2678();
  v48 = sub_182AD38B8();

  if (os_log_type_enabled(v47, v48))
  {
    v6 = swift_slowAlloc();
    ObjectType = swift_slowAlloc();
    *&v208[0] = ObjectType;
    *v6 = 136315650;
    v49 = sub_182AD3BF8();
    v21 = sub_181C64FFC(v49, v50, v208);

    *(v6 + 4) = v21;
    *(v6 + 12) = 2080;
    v51 = sub_181C64FFC(v44, v43, v208);

    *(v6 + 14) = v51;
    *(v6 + 22) = 2080;
    v52 = sub_181C64FFC(a4, v45, v208);

    *(v6 + 24) = v52;
    _os_log_impl(&dword_181A37000, v47, v48, "%s %s %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](ObjectType, -1, -1);
    MEMORY[0x1865DF520](v6, -1, -1);
  }

  else
  {
  }

  Frame.finalize(success:)(0);
  v54 = *(&v211 + 1);
  v53 = v211;
  v55 = v212;
  v56 = BYTE8(v212);
  v58 = *(&v213 + 1);
  v57 = v213;
  v59 = v214;
  a2 = v224;
  if (v214 != 2 || v213 != 0)
  {
    sub_181F68EF4(v211, *(&v211 + 1), v212, BYTE8(v212));

    sub_181F68F3C(v57, v58, v59);
    __break(1u);
    goto LABEL_141;
  }

LABEL_37:
  if ((v223 & 1) == 0)
  {
    if (v222)
    {
      v60 = v53;
      v61 = v54;
      v62 = v55;
      v63 = v56;
      MEMORY[0x1865DF520](v222, -1, -1);
      v53 = v60;
      v54 = v61;
      v55 = v62;
      v56 = v63;
    }
  }

  sub_181F68EF4(v53, v54, v55, v56);
}

uint64_t sub_18204CE84(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  v8 = *(a1 + 16);
  v74 = *a1;
  v75 = v8;
  v76 = *(a1 + 32);
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v87 = *(a1 + 208);
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = *(a1 + 192);
  v85 = *(a1 + 176);
  v86 = v13;
  v14 = *(a1 + 128);
  v81 = *(a1 + 112);
  v82 = v14;
  v15 = *(a1 + 160);
  v83 = *(a1 + 144);
  v84 = v15;
  v16 = *(a1 + 96);
  v79 = *(a1 + 80);
  v80 = v16;
  *&v77 = v10;
  *(&v77 + 1) = v9;
  *&v78 = v12;
  *(&v78 + 1) = v11;
  if (BYTE8(v75) == 5)
  {
    v4 = nw_frame_unclaimed_length(v74);
    goto LABEL_6;
  }

  if (!v11)
  {
    goto LABEL_11;
  }

  v17 = __OFADD__(v9, v12);
  v18 = v9 + v12;
  if (v17)
  {
    __break(1u);
    goto LABEL_35;
  }

  v4 = v11 - v18;
  if (__OFSUB__(v11, v18))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_6:
  if (v4 <= 0)
  {
LABEL_11:
    v33 = v2[10];
    v32 = v2[11];
    v34 = qword_1EA837248;

    if (v34 != -1)
    {
      swift_once();
    }

    v35 = sub_182AD2698();
    __swift_project_value_buffer(v35, qword_1EA843418);

    v22 = sub_182AD2678();
    v36 = sub_182AD38D8();

    if (os_log_type_enabled(v22, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v59 = v38;
      *v37 = 136315650;
      v39 = sub_182AD3BF8();
      v41 = sub_181C64FFC(v39, v40, &v59);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v42 = sub_181C64FFC(v33, v32, &v59);

      *(v37 + 14) = v42;
      *(v37 + 22) = 2080;
      *(v37 + 24) = sub_181C64FFC(0xD00000000000002CLL, 0x8000000182BDAF80, &v59);
      _os_log_impl(&dword_181A37000, v22, v36, "%s %s %s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v38, -1, -1);
      v31 = v37;
      goto LABEL_15;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v4 > *(a2 + 64))
  {
    v3 = v2[10];
    v6 = v2[11];
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;

    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BDAFB0);
    v73 = v4;
    v19 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v19);

    MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BDAFE0);
    LOWORD(v73) = *(a2 + 64);
    v20 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v20);

    v4 = 0xE000000000000000;
    v5 = 0;
    if (qword_1EA837248 == -1)
    {
LABEL_9:
      v21 = sub_182AD2698();
      __swift_project_value_buffer(v21, qword_1EA843418);

      v22 = sub_182AD2678();
      v23 = sub_182AD38D8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v59 = v25;
        *v24 = 136315650;
        v26 = sub_182AD3BF8();
        v28 = sub_181C64FFC(v26, v27, &v59);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        v29 = sub_181C64FFC(v3, v6, &v59);

        *(v24 + 14) = v29;
        *(v24 + 22) = 2080;
        v30 = sub_181C64FFC(v5, v4, &v59);

        *(v24 + 24) = v30;
        _os_log_impl(&dword_181A37000, v22, v23, "%s %s %s", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v25, -1, -1);
        v31 = v24;
LABEL_15:
        MEMORY[0x1865DF520](v31, -1, -1);

LABEL_20:
        Frame.finalize(success:)(0);
        goto LABEL_28;
      }

      goto LABEL_19;
    }

LABEL_36:
    swift_once();
    goto LABEL_9;
  }

  v73 = MEMORY[0x1E69E7CC0];
  v69 = v84;
  v70 = v85;
  v71 = v86;
  v72 = v87;
  v65 = v80;
  v66 = v81;
  v67 = v82;
  v68 = v83;
  v61 = v76;
  v62 = v77;
  v63 = v78;
  v64 = v79;
  v59 = v74;
  v60 = v75;
  v43 = Frame.unclaimedBytes.getter();
  if (v45)
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v47 = sub_181AC1C5C(v43, v44);
    sub_1820D46D8(v47);
    v46 = v73;
  }

  Frame.finalize(success:)(1);
  v48 = *(a2 + 24);
  v49 = *(a2 + 32);
  v50 = *(a2 + 40);
  if (v48)
  {
    v51 = 0;
  }

  else
  {
    v51 = *(a2 + 16) & 0x7FFFFFFFFFFFFFFFLL;
  }

  v59 = xmmword_182AF01F0;
  *&v60 = v51;
  BYTE8(v60) = v48;
  *&v61 = v49;
  BYTE8(v61) = v50;
  *&v62 = v46;

  sub_181F82F10(2, &v59);

  if (v2[119])
  {

    sub_182047340(v52, 0, 0);
  }

LABEL_28:
  v53 = v74;
  v54 = v75;
  v55 = BYTE8(v75);
  v56 = v76;
  v57 = v77;
  if (v77 == 2 && v76 == 0)
  {
    if ((v84 & 1) == 0)
    {
      if (v83)
      {
        MEMORY[0x1865DF520](v83, -1, -1);
      }
    }

    sub_181F68EF4(v53, *(&v53 + 1), v54, v55);
  }

  else
  {
    sub_181F68EF4(v74, *(&v74 + 1), v75, BYTE8(v75));

    result = sub_181F68F3C(v56, *(&v56 + 1), v57);
    __break(1u);
  }

  return result;
}

void QUICConnectionImplementation.outboundStopping(flow:)(uint8_t *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[5];
  if (!*(v4 + 16) || (v5 = sub_18224EEF0(a1), (v6 & 1) == 0) || !*(*(*(v4 + 56) + 8 * v5) + 16) || (type metadata accessor for QUICDatagramFlow(), !swift_dynamicCastClass()))
  {
    v7 = v2[5];
    if (*(v7 + 16))
    {
      v8 = sub_18224EEF0(a1);
      if (v9)
      {
        if (*(*(*(v7 + 56) + 8 * v8) + 16))
        {
          type metadata accessor for QUICStreamInstance();
          swift_unknownObjectRetain();
          v10 = swift_dynamicCastClass();
          if (v10)
          {
            v11 = *(v10 + 16);
            v12 = v10;
            v13 = *(v10 + 24);
            v15 = v2[10];
            v14 = v2[11];
            v16 = qword_1EA837250;

            if (v13)
            {
              if (v16 != -1)
              {
                swift_once();
              }

              if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
              {
                v93 = 0;
                v94 = 0xE000000000000000;
                sub_182AD3BA8();
                MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BDA540);
                v92 = a1;
                sub_182AD3E18();
                MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BDA580);
                if (qword_1EA837248 != -1)
                {
                  swift_once();
                }

                v37 = sub_182AD2698();
                __swift_project_value_buffer(v37, qword_1EA843418);
                v38 = swift_allocObject();
                *(v38 + 16) = "outboundStopping(flow:)";
                *(v38 + 24) = 23;
                *(v38 + 32) = 2;
                v39 = swift_allocObject();
                *(v39 + 16) = sub_181F8C724;
                *(v39 + 24) = v38;
                v40 = swift_allocObject();
                *(v40 + 16) = v15;
                *(v40 + 24) = v14;
                v41 = swift_allocObject();
                *(v41 + 16) = 0;
                *(v41 + 24) = 0xE000000000000000;

                v42 = sub_182AD2678();
                v43 = sub_182AD38A8();
                v76 = swift_allocObject();
                *(v76 + 16) = 32;
                v79 = swift_allocObject();
                *(v79 + 16) = 8;
                v44 = swift_allocObject();
                *(v44 + 16) = sub_18206B168;
                *(v44 + 24) = v39;
                v45 = swift_allocObject();
                *(v45 + 16) = sub_181F8C718;
                *(v45 + 24) = v44;
                v73 = swift_allocObject();
                *(v73 + 16) = 32;
                v82 = swift_allocObject();
                *(v82 + 16) = 8;
                v46 = swift_allocObject();
                *(v46 + 16) = sub_181F8C720;
                *(v46 + 24) = v40;
                v47 = swift_allocObject();
                *(v47 + 16) = sub_181F8C718;
                *(v47 + 24) = v46;
                v85 = swift_allocObject();
                *(v85 + 16) = 32;
                v88 = swift_allocObject();
                *(v88 + 16) = 8;
                v48 = swift_allocObject();
                *(v48 + 16) = sub_181F8C720;
                *(v48 + 24) = v41;
                v49 = swift_allocObject();
                *(v49 + 16) = sub_181F8C718;
                *(v49 + 24) = v48;
                v70 = v43;
                v50 = v42;
                if (os_log_type_enabled(v42, v43))
                {
                  v51 = swift_slowAlloc();
                  v52 = swift_slowAlloc();
                  v90 = v52;
                  v91 = 0;
                  *v51 = 770;
                  v92 = v51 + 2;
                  v93 = sub_181F8C728;
                  v94 = v76;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C728;
                  v94 = v79;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C714;
                  v94 = v45;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C728;
                  v94 = v73;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C728;
                  v94 = v82;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C714;
                  v94 = v47;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C728;
                  v94 = v85;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C728;
                  v94 = v88;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  v93 = sub_181F8C714;
                  v94 = v49;
                  sub_181F73AE0(&v93, &v92, &v91, &v90);

                  _os_log_impl(&dword_181A37000, v50, v70, "%s %s %s", v51, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x1865DF520](v52, -1, -1);
                  MEMORY[0x1865DF520](v51, -1, -1);

                  goto LABEL_28;
                }
              }

LABEL_28:
              swift_unknownObjectRelease();
              return;
            }

            if (v16 != -1)
            {
              swift_once();
            }

            if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
            {
              v93 = 0;
              v94 = 0xE000000000000000;
              sub_182AD3BA8();
              MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BDA5B0);
              sub_182AD3E18();
              MEMORY[0x1865D9CA0](0x6D6165727473202CLL, 0xE900000000000020);
              v92 = v11;
              v53 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v53);

              if (qword_1EA837248 != -1)
              {
                swift_once();
              }

              v54 = sub_182AD2698();
              __swift_project_value_buffer(v54, qword_1EA843418);
              v55 = swift_allocObject();
              *(v55 + 16) = "outboundStopping(flow:)";
              *(v55 + 24) = 23;
              *(v55 + 32) = 2;
              v56 = swift_allocObject();
              *(v56 + 16) = sub_181F8C724;
              *(v56 + 24) = v55;
              v57 = swift_allocObject();
              *(v57 + 16) = v15;
              *(v57 + 24) = v14;
              v58 = swift_allocObject();
              *(v58 + 16) = 0;
              *(v58 + 24) = 0xE000000000000000;

              oslog = sub_182AD2678();
              v59 = sub_182AD38A8();
              v71 = swift_allocObject();
              *(v71 + 16) = 32;
              v74 = swift_allocObject();
              *(v74 + 16) = 8;
              v60 = swift_allocObject();
              *(v60 + 16) = sub_18206B168;
              *(v60 + 24) = v56;
              v61 = swift_allocObject();
              *(v61 + 16) = sub_181F8C718;
              *(v61 + 24) = v60;
              v77 = swift_allocObject();
              *(v77 + 16) = 32;
              v80 = swift_allocObject();
              *(v80 + 16) = 8;
              v62 = swift_allocObject();
              *(v62 + 16) = sub_181F8C720;
              *(v62 + 24) = v57;
              v63 = swift_allocObject();
              *(v63 + 16) = sub_181F8C718;
              *(v63 + 24) = v62;
              v83 = swift_allocObject();
              *(v83 + 16) = 32;
              v89 = swift_allocObject();
              *(v89 + 16) = 8;
              v64 = swift_allocObject();
              *(v64 + 16) = sub_181F8C720;
              *(v64 + 24) = v58;
              v65 = swift_allocObject();
              *(v65 + 16) = sub_181F8C718;
              *(v65 + 24) = v64;
              v86 = v65;
              v68 = v59;
              if (os_log_type_enabled(oslog, v59))
              {
                v66 = swift_slowAlloc();
                v67 = swift_slowAlloc();
                v90 = v67;
                v91 = 0;
                *v66 = 770;
                v92 = v66 + 2;
                v93 = sub_181F8C728;
                v94 = v71;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C728;
                v94 = v74;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C714;
                v94 = v61;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C728;
                v94 = v77;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C728;
                v94 = v80;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C714;
                v94 = v63;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C728;
                v94 = v83;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C728;
                v94 = v89;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                v93 = sub_181F8C714;
                v94 = v86;
                sub_181F73AE0(&v93, &v92, &v91, &v90);

                _os_log_impl(&dword_181A37000, oslog, v68, "%s %s %s", v66, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v67, -1, -1);
                MEMORY[0x1865DF520](v66, -1, -1);

                goto LABEL_27;
              }
            }

LABEL_27:
            sub_182048A70(v12, 1);
            goto LABEL_28;
          }

          swift_unknownObjectRelease();
        }
      }
    }

    v18 = v2[10];
    v17 = v2[11];
    v19 = qword_1EA837250;

    if (v19 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
    {
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BDA540);
      v92 = a1;
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BDA560);
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v20 = sub_182AD2698();
      __swift_project_value_buffer(v20, qword_1EA843418);
      v21 = swift_allocObject();
      *(v21 + 16) = "outboundStopping(flow:)";
      *(v21 + 24) = 23;
      *(v21 + 32) = 2;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_181F8C724;
      *(v22 + 24) = v21;
      v23 = swift_allocObject();
      *(v23 + 16) = v18;
      *(v23 + 24) = v17;
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0xE000000000000000;

      v25 = sub_182AD2678();
      v26 = sub_182AD38A8();
      v75 = swift_allocObject();
      *(v75 + 16) = 32;
      v78 = swift_allocObject();
      *(v78 + 16) = 8;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_18206B168;
      *(v27 + 24) = v22;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_181F8C718;
      *(v28 + 24) = v27;
      v29 = swift_allocObject();
      *(v29 + 16) = 32;
      v81 = swift_allocObject();
      *(v81 + 16) = 8;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_181F8C720;
      *(v30 + 24) = v23;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_181F8C718;
      *(v31 + 24) = v30;
      v84 = swift_allocObject();
      *(v84 + 16) = 32;
      v87 = swift_allocObject();
      *(v87 + 16) = 8;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_181F8C720;
      *(v32 + 24) = v24;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_181F8C718;
      *(v33 + 24) = v32;
      v72 = v26;
      v34 = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v90 = v36;
        v91 = 0;
        *v35 = 770;
        v92 = v35 + 2;
        v93 = sub_181F8C728;
        v94 = v75;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C728;
        v94 = v78;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C714;
        v94 = v28;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C728;
        v94 = v29;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C728;
        v94 = v81;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C714;
        v94 = v31;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C728;
        v94 = v84;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C728;
        v94 = v87;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        v93 = sub_181F8C714;
        v94 = v33;
        sub_181F73AE0(&v93, &v92, &v91, &v90);

        _os_log_impl(&dword_181A37000, v34, v72, "%s %s %s", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v36, -1, -1);
        MEMORY[0x1865DF520](v35, -1, -1);

        return;
      }
    }
  }
}

uint64_t QUICConnectionImplementation.getMetadata<A>(flow:)(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  if (a2 != &type metadata for QUICStreamProtocol)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(v3 + 40);
  if (*(v7 + 16))
  {
    v8 = sub_18224EEF0(a1);
    if (v9)
    {
      if (*(*(*(v7 + 56) + 8 * v8) + 16))
      {
        type metadata accessor for QUICDatagramFlow();
        swift_unknownObjectRetain();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;
          v12 = _s7Network18QUICStreamProtocolV8metadataAA0C8MetadataCyACGyFZ_0();
          swift_beginAccess();
          v13 = *(v12 + 64);
          if (v13)
          {
            v14 = *(v11 + 24);
            *(v13 + 24) = *(v11 + 16);
            *(v13 + 32) = v14;
            v15 = *(v11 + 64);

            swift_unknownObjectRelease();
            *(v13 + 64) = v15;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v26 = *(v12 + 64);
          if (v26)
          {
            *(v26 + 66) = 2;
          }

          type metadata accessor for ProtocolMetadata(0, &type metadata for QUICStreamProtocol, a3, v16);
          result = swift_dynamicCastClass();
          if (!result)
          {
            goto LABEL_29;
          }

          return result;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  v17 = *(v3 + 40);
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = sub_18224EEF0(a1);
  if ((v19 & 1) == 0 || !*(*(*(v17 + 56) + 8 * v18) + 16))
  {
    return 0;
  }

  type metadata accessor for QUICStreamInstance();
  swift_unknownObjectRetain();
  v20 = swift_dynamicCastClass();
  if (!v20 || *(v20 + 24) == 1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v21 = v20;
  v22 = *(v20 + 16);
  v23 = _s7Network18QUICStreamProtocolV8metadataAA0C8MetadataCyACGyFZ_0();
  swift_beginAccess();
  v24 = *(v23 + 64);
  if (v24)
  {
    *(v24 + 16) = v22;
  }

  if (*(v21 + 24))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = *(v21 + 16);
    swift_unknownObjectRelease();
    v28 = *(v23 + 64);
    if (v28)
    {
      *(v28 + 66) = (v27 & 2) != 0;
    }
  }

  type metadata accessor for ProtocolMetadata(0, &type metadata for QUICStreamProtocol, a3, v25);
  result = swift_dynamicCastClass();
  if (!result)
  {
LABEL_29:

    return 0;
  }

  return result;
}

uint64_t sub_18204EED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 1128) == 1 && (swift_beginAccess(), (*(a2 + 24) & 1) == 0) && *(v2 + 1126) == 1)
  {
    v6 = sub_181F7D92C(*(a2 + 16));
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  if (*(v3 + 1127) == 1)
  {
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  v11 = *(v3 + 80);
  v12 = *(v3 + 88);
  type metadata accessor for QUICDatagramFlow();
  swift_allocObject();

  v13 = sub_181F7D7A8(v6, v8 & 1, v9, v10, v11, v12);
  sub_182168DE4(v13, *(a1 + 112));
  v15 = *(v13 + 48);
  v14 = *(v13 + 56);
  v16 = qword_1EA837250;

  if (v16 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    sub_182AD3BA8();

    v34 = 0xD000000000000023;
    v35 = 0x8000000182BDC210;
    if (*(a1 + 112))
    {
      v17 = sub_182AD2F38();
      v19 = v18;
    }

    else
    {
      v19 = 0xE900000000000073;
      v17 = 0x776F6C46206C6C41;
    }

    MEMORY[0x1865D9CA0](v17, v19);

    v20 = v34;
    v21 = v35;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v22 = sub_182AD2698();
    __swift_project_value_buffer(v22, qword_1EA843418);

    v23 = sub_182AD2678();
    v24 = sub_182AD38A8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v25 = 136315650;
      v26 = sub_182AD3BF8();
      v33 = a1;
      v28 = sub_181C64FFC(v26, v27, &v34);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = sub_181C64FFC(v15, v14, &v34);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2080;
      v30 = sub_181C64FFC(v20, v21, &v34);

      *(v25 + 24) = v30;
      a1 = v33;
      _os_log_impl(&dword_181A37000, v23, v24, "%s %s %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v32, -1, -1);
      MEMORY[0x1865DF520](v25, -1, -1);

      goto LABEL_21;
    }
  }

LABEL_21:
  swift_beginAccess();
  if (*(v3 + 139) == 9)
  {
    sub_18216AAA8(*(a1 + 112));
  }
}

uint64_t sub_18204F2A0(uint64_t a1)
{
  v3 = *(v1 + 1160);
  if (v3 > 5)
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = *(v1 + 1152);
    v5 = *(v1 + 1144);
    sub_18206AF08(v5, v4, v3);
  }

  v6 = *(v1 + 1168);
  if (*(v1 + 1176) == 255)
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    v7 = *(v1 + 1176);
  }

  v16 = 1;
  v9 = xmmword_182AF0200;
  v10 = 0;
  v11 = 1;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = v4;

  sub_181F82F10(a1, &v9);
}

uint64_t sub_18204F36C()
{
  v1 = *(v0 + 360);
  if (*(v1 + 56))
  {
    *(v1 + 56) = 0;

    v2 = *(v1 + 920);
    v3 = *(v1 + 928);
    *&v14 = *(v1 + 912);
    *(&v14 + 1) = v2;
    v15 = v3;
    sub_181F68EA8(v14, v2, v3);
    sub_1822935B8(&v14, 1);
    sub_181F68E5C(v14, *(&v14 + 1), v15);
    v4 = *(v1 + 936);
    v5 = *(v1 + 944);
    *(v1 + 936) = 0u;
    v6 = *(v1 + 952);
    *(v1 + 952) = 6;
    sub_181F68E5C(v4, v5, v6);
    v7 = *(v1 + 64);
    v8 = *(v1 + 72);
    *(v1 + 64) = 0u;
    v9 = *(v1 + 80);
    *(v1 + 80) = 6;
    sub_181F68E5C(v7, v8, v9);
    v10 = *(v1 + 912);
    v11 = *(v1 + 920);
    *(v1 + 912) = 0u;
    v12 = *(v1 + 928);
    *(v1 + 928) = 6;
    sub_181F68E5C(v10, v11, v12);
  }

  return result;
}

void sub_18204F460()
{
  swift_beginAccess();
  v1 = *(v0 + 139);
  if (v1 == 11)
  {
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = qword_1EA837250;

    if (v18 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
      goto LABEL_26;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v19 = sub_182AD2698();
    __swift_project_value_buffer(v19, qword_1EA843418);

    v6 = sub_182AD2678();
    v7 = sub_182AD38A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40[0] = v9;
      *v8 = 136315650;
      v20 = sub_182AD3BF8();
      v22 = sub_181C64FFC(v20, v21, v40);

      *(v8 + 4) = v22;
      *(v8 + 12) = 2080;
      v23 = sub_181C64FFC(v17, v16, v40);

      *(v8 + 14) = v23;
      *(v8 + 22) = 2080;
      v15 = 0x8000000182BDBDC0;
      v14 = 0xD000000000000019;
      goto LABEL_17;
    }
  }

  else if (v1 == 1)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = qword_1EA837250;

    if (v4 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
      goto LABEL_26;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843418);

    v6 = sub_182AD2678();
    v7 = sub_182AD38A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40[0] = v9;
      *v8 = 136315650;
      v10 = sub_182AD3BF8();
      v12 = sub_181C64FFC(v10, v11, v40);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = sub_181C64FFC(v3, v2, v40);

      *(v8 + 14) = v13;
      *(v8 + 22) = 2080;
      v14 = 0xD000000000000020;
      v15 = 0x8000000182BDBDE0;
LABEL_17:
      *(v8 + 24) = sub_181C64FFC(v14, v15, v40);
      _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v9, -1, -1);
      v24 = v8;
LABEL_23:
      MEMORY[0x1865DF520](v24, -1, -1);

      return;
    }
  }

  else
  {

    sub_1820352F4();

    sub_181F8330C();

    v41 = 11;
    swift_beginAccess();
    sub_18203BF4C(&v41);
    swift_endAccess();

    sub_181F8BB34(1);

    v25 = *(v0 + 1200);
    LODWORD(v40[0]) = *(v0 + 1196);
    BYTE4(v40[0]) = v25;
    sub_18216AC50(0, v40);
    if (*(v0 + 977))
    {
      return;
    }

    v27 = *(v0 + 80);
    v26 = *(v0 + 88);
    v40[0] = 0;
    v40[1] = 0xE000000000000000;

    sub_182AD3BA8();

    strcpy(v40, "QUIC Packets: ");
    HIBYTE(v40[1]) = -18;
    v28 = MEMORY[0x1865D9F40](MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7508]);
    MEMORY[0x1865D9CA0](v28);

    v30 = v40[0];
    v29 = v40[1];
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v31 = sub_182AD2698();
    __swift_project_value_buffer(v31, qword_1EA843418);

    v6 = sub_182AD2678();
    v32 = sub_182AD38D8();

    if (os_log_type_enabled(v6, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40[0] = v34;
      *v33 = 136315650;
      v35 = sub_182AD3BF8();
      v37 = sub_181C64FFC(v35, v36, v40);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = sub_181C64FFC(v27, v26, v40);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2080;
      v39 = sub_181C64FFC(v30, v29, v40);

      *(v33 + 24) = v39;
      _os_log_impl(&dword_181A37000, v6, v32, "%s %s %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v34, -1, -1);
      v24 = v33;
      goto LABEL_23;
    }
  }

LABEL_26:
}

uint64_t sub_18204FAD8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v12 = v5;
  v168 = 0;
  v13 = *(*(v5 + 296) + 32);
  if (!*(v13 + 16))
  {
    goto LABEL_70;
  }

  v7 = a5;
  v10 = a3;
  v6 = a2;
  v8 = a1;
  LOBYTE(v11) = 0;
  v9 = (0x202020100uLL >> (8 * a1));
  v15 = sub_18224EF74(v9);
  if ((v16 & 1) == 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v17 = *(*(v13 + 56) + 8 * v15);
  swift_beginAccess();
  if (!*(*(v17 + 16) + 16))
  {
    return 1;
  }

  if (*(v12 + 1033) == 1 && !v8 || *(v12 + 1125) == 1 && v8 == 1)
  {

    sub_181F83258(v9);

    return 1;
  }

  v19 = sub_182235DC0(v8);

  if (!v19)
  {
    return 0;
  }

  v20 = *(v12 + 352);
  if (v9)
  {
    swift_beginAccess();
    if (v9 == 1)
    {
      v21 = 200;
    }

    else
    {
      v21 = 352;
    }
  }

  else
  {
    swift_beginAccess();
    v21 = 48;
  }

  v22 = *(v20 + v21);
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = -1;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v12 + 376);
  swift_beginAccess();
  v25 = *(v24 + 40);
  if (!*(v25 + 16))
  {
    goto LABEL_95;
  }

  v26 = sub_18224EF74(0x202020100uLL >> (8 * v8));
  if ((v27 & 1) == 0)
  {
    goto LABEL_95;
  }

  v28 = *(*(v25 + 56) + 8 * v26);
  swift_endAccess();

  v108 = sub_182232B60(v8);

  if ((sub_181F840C0(v9) & 1) == 0)
  {
    v107 = v28;
    v29 = v7;
    v30 = v6;
    v31 = a4;
    v32 = v23;
    v33 = *(v12 + 296);

    sub_1822986E8(v9, 0, 1, v33, 0, 0, 0, 1);

    v23 = v32;
    a4 = v31;
    v6 = v30;
    v7 = v29;
    v28 = v107;
  }

  if (!v8)
  {
    sub_181F831D0(v9);
    if ((v34 & 1) == 0)
    {
      LOBYTE(v124) = 1;
      LOBYTE(v109) = 1;
      *&v139 = 0;
      *(&v139 + 1) = 2;
      *&v140 = 0;
      *(&v140 + 1) = 1;
      *&v141 = 0;
      *(&v141 + 1) = 257;

      sub_181F82F10(v9, &v139);
    }
  }

  if (v108 >= v7)
  {
    v39 = qword_1EA837250;

    if (v39 == -1)
    {
LABEL_31:
      if (byte_1EA843430)
      {
        *&v139 = 0;
        *(&v139 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v139 = 0xD000000000000011;
        *(&v139 + 1) = 0x8000000182BDBE80;
        v40 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v40);

        MEMORY[0x1865D9CA0](540884000, 0xE400000000000000);
        *&v124 = v108;
        v41 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v41);

        v42 = v139;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v43 = sub_182AD2698();
        __swift_project_value_buffer(v43, qword_1EA843418);

        v44 = sub_182AD2678();
        v45 = sub_182AD38A8();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v139 = v47;
          *v46 = 136315650;
          v48 = sub_182AD3BF8();
          v50 = sub_181C64FFC(v48, v49, &v139);

          *(v46 + 4) = v50;
          *(v46 + 12) = 2080;
          *(v46 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v139);
          *(v46 + 22) = 2080;
          v51 = sub_181C64FFC(v42, *(&v42 + 1), &v139);

          *(v46 + 24) = v51;
          _os_log_impl(&dword_181A37000, v44, v45, "%s %s %s", v46, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v47, -1, -1);
          MEMORY[0x1865DF520](v46, -1, -1);
        }

        else
        {
        }
      }

      return 0;
    }

LABEL_91:
    swift_once();
    goto LABEL_31;
  }

  if (__OFSUB__(v7, v108))
  {
    __break(1u);
    goto LABEL_91;
  }

  v105 = a4;
  if (v8 - 2 >= 3)
  {
    if (!v8)
    {

      v35 = v7 - v108;
      v36 = v28;
      v37 = v23;
      v38 = 0;
      v52 = v6;
      v53 = 1;
      goto LABEL_43;
    }

    v35 = v7 - v108;
    v36 = v28;
    v37 = v23;
    v38 = 1;
  }

  else
  {

    v35 = v7 - v108;
    v36 = v28;
    v37 = v23;
    v38 = v8;
  }

  v52 = v6;
  v53 = 0;
LABEL_43:
  a4 = v23;
  v54 = sub_181F834CC(v35, v36, v37, v38, v52, v53);
  v55 = v28;
  v56 = v54;
  v106 = v55;
  v104 = v23;

  v23 = sub_182232B60(v8);

  v57 = __OFADD__(v56, v23);
  v11 = v56 + v23;
  if (v57)
  {
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v23 = &v109;
  v167 = v11;
  if ((v10 & 1) == 0)
  {
    v58 = *(v6 + 912);
    v59 = *(v6 + 880);
    v134 = *(v6 + 896);
    v135 = v58;
    v60 = *(v6 + 912);
    v136 = *(v6 + 928);
    v61 = *(v6 + 848);
    v62 = *(v6 + 816);
    v130 = *(v6 + 832);
    v131 = v61;
    v63 = *(v6 + 848);
    v64 = *(v6 + 880);
    v132 = *(v6 + 864);
    v133 = v64;
    v65 = *(v6 + 784);
    v66 = *(v6 + 752);
    v126 = *(v6 + 768);
    v127 = v65;
    v67 = *(v6 + 784);
    v68 = *(v6 + 816);
    v128 = *(v6 + 800);
    v129 = v68;
    v69 = *(v6 + 752);
    v124 = *(v6 + 736);
    v125 = v69;
    v147 = v134;
    v148 = v60;
    v149 = *(v6 + 928);
    v143 = v130;
    v144 = v63;
    v145 = v132;
    v146 = v59;
    v141 = v126;
    *v142 = v67;
    *&v142[16] = v128;
    *&v142[32] = v62;
    LOBYTE(v137) = *(v6 + 944);
    LOBYTE(v150) = *(v6 + 944);
    v139 = v124;
    v140 = v66;
    if (sub_182015D6C(&v139) == 1)
    {
LABEL_97:
      __break(1u);
LABEL_98:

      sub_181F68EF4(v23, v7, v8, a4);

      sub_181F68F3C(v9, v10, v11);
      __break(1u);
      goto LABEL_99;
    }

    v119 = v147;
    v120 = v148;
    v121 = v149;
    LOBYTE(v122) = v150;
    v115 = v143;
    v116 = v144;
    v117 = v145;
    v118 = v146;
    v111 = v141;
    v112 = *v142;
    v113 = *&v142[16];
    v114 = *&v142[32];
    v109 = v139;
    v110 = v140;
    if (sub_182015D80(&v109) == 1)
    {
      nullsub_41();
      v71 = v70[7];
      v175 = v70[6];
      v176 = v71;
      v72 = v70[9];
      v177 = v70[8];
      v178 = v72;
      v73 = v70[3];
      v171 = v70[2];
      v172 = v73;
      v74 = v70[5];
      v173 = v70[4];
      v174 = v74;
      v75 = v70[1];
      v169 = *v70;
      v170 = v75;
      v163 = v134;
      v164 = v135;
      v165 = v136;
      v166 = v137;
      v159 = v130;
      v160 = v131;
      v161 = v132;
      v162 = v133;
      v155 = v126;
      v156 = v127;
      v157 = v128;
      v158 = v129;
      v153 = v124;
      v154 = v125;
      sub_182015D94(&v153, v152);
      v76 = sub_1820636BC(v11);
    }

    else
    {
      nullsub_41();
      v78 = v77[11];
      v179 = v77[10];
      v180 = v78;
      v181 = v77[12];
      v79 = v77[7];
      v175 = v77[6];
      v176 = v79;
      v80 = v77[9];
      v177 = v77[8];
      v178 = v80;
      v81 = v77[3];
      v171 = v77[2];
      v172 = v81;
      v82 = v77[5];
      v173 = v77[4];
      v174 = v82;
      v83 = v77[1];
      v169 = *v77;
      v170 = v83;
      v163 = v134;
      v164 = v135;
      v165 = v136;
      v166 = v137;
      v159 = v130;
      v160 = v131;
      v161 = v132;
      v162 = v133;
      v155 = v126;
      v156 = v127;
      v157 = v128;
      v158 = v129;
      v153 = v124;
      v154 = v125;
      sub_182015D94(&v153, v152);
      v76 = sub_182062690(v11);
    }

    v84 = v76;
    sub_181F49A88(&v124, &qword_1EA839B88, &unk_182AF06B0);
    if ((v84 & 1) == 0)
    {
      return 0;
    }
  }

  v85 = v11;
  v86 = *(v6 + 24);
  v87 = *(v6 + 32);
  swift_beginAccess();
  v88 = *(v12 + 48);
  if (!*(v88 + 16) || (v89 = sub_18224F070(v86, v87), (v90 & 1) == 0))
  {
    memset(&v142[8], 0, 33);
    v143 = 0u;
    v144 = 0u;
    *&v145 = 0;
    DWORD2(v145) = 2;
    BYTE12(v145) = 1;
    v146 = 0uLL;
    LOBYTE(v147) = 1;
    *(&v147 + 1) = 0;
    v148 = 0uLL;
    LOWORD(v149) = 256;
    BYTE2(v149) = 0;
    *(&v149 + 1) = 0;
    LOBYTE(v150) = -1;
    *&v140 = 0;
    v139 = 0uLL;
    BYTE8(v140) = 6;
    v141 = 0uLL;
    v142[0] = 2;
    v134 = v147;
    v135 = 0u;
    v136 = v149;
    LOBYTE(v137) = -1;
    v130 = 0u;
    v131 = 0u;
    v132 = v145;
    v133 = 0u;
    v126 = 0uLL;
    v127 = *v142;
    v128 = *&v142[16];
    v129 = *&v142[32];
    v124 = 0u;
    v125 = v140;

    *&v142[24] = Frame.bufferLength.getter();
    sub_182050C60(&v139, &v167, v12, v7, v106, v104, v8, v6, v108, v9, v105 & 1, &v168);
    v7 = *(&v139 + 1);
    v23 = v139;
    v8 = v140;
    a4 = BYTE8(v140);
    v10 = *(&v141 + 1);
    v9 = v141;
    LOBYTE(v11) = v142[0];
    if (v142[0] != 2 || v141 != 0)
    {
      goto LABEL_96;
    }

    goto LABEL_58;
  }

  v91 = *(*(v88 + 56) + 8 * v89);
  v92 = *(v91 + 16);
  if ((v92 & 2) != 0)
  {
    if ((~v92 & 5) != 0)
    {
      *(v91 + 16) = v92 | 5;
    }

    goto LABEL_63;
  }

  v93 = *(v91 + 288);
  v94 = *(v91 + 296);
  *&v109 = *(v91 + 280);
  v103 = v109;
  *(&v109 + 1) = v93;
  LOBYTE(v110) = v94;
  v101 = *(v91 + 312);
  v100 = *(v91 + 320);
  *&v153 = *(v91 + 304);
  v102 = v153;
  *(&v153 + 1) = v101;
  LOBYTE(v154) = v100;

  sub_181F68EA8(v103, v93, v94);
  sub_181F68EA8(v102, v101, v100);
  OutputHandlerLinkage.invokeGetOutputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(&v153, v85, v85, 1uLL, &v124);
  sub_181F68E5C(v153, *(&v153 + 1), v154);
  sub_181F68E5C(v109, *(&v109 + 1), v110);
  v149 = v136;
  v150 = v137;
  v151 = v138;
  v145 = v132;
  v146 = v133;
  v147 = v134;
  v148 = v135;
  *&v142[16] = v128;
  *&v142[32] = v129;
  v143 = v130;
  v144 = v131;
  v139 = v124;
  v140 = v125;
  v141 = v126;
  *v142 = v127;
  if (sub_181F3D1E4(&v139) == 1)
  {
LABEL_62:

LABEL_63:
    swift_beginAccess();
    return v168;
  }

  LOBYTE(v11) = v91;
  v10 = *(&v150 + 1);
  v121 = v149;
  v122 = v150;
  v123 = v151;
  v117 = v145;
  v118 = v146;
  v119 = v147;
  v120 = v148;
  v113 = *&v142[16];
  v114 = *&v142[32];
  v115 = v143;
  v116 = v144;
  v109 = v139;
  v110 = v140;
  v111 = v141;
  v112 = *v142;
  if (v151)
  {

    v7 = *(&v109 + 1);
    v23 = v109;
    v8 = v110;
    a4 = BYTE8(v110);
    v10 = *(&v111 + 1);
    v9 = v111;
    LOBYTE(v11) = v112;
    if (v112 != 2 || v111 != 0)
    {

      sub_181F68EF4(v23, v7, v8, a4);

      sub_181F68F3C(v9, v10, v11);
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_58:
    if ((v147 & 1) == 0 && v146)
    {
      MEMORY[0x1865DF520](v146, -1, -1);
    }

    sub_181F68EF4(v23, v7, v8, a4);
    goto LABEL_62;
  }

LABEL_72:
  if (v10)
  {
    v95 = *(v10 + 24);
  }

  else
  {
    v95 = 0;
  }

  v10 = v106;
  v23 = v108;
  a4 = v105;
  v57 = __OFADD__(v95, 1);
  v96 = v95 + 1;
  if (v57)
  {
    goto LABEL_93;
  }

  if (v96 != 1)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    swift_endAccess();
    __break(1u);
LABEL_96:

    sub_181F68EF4(v23, v7, v8, a4);

    sub_181F68F3C(v9, v10, v11);
    __break(1u);
    goto LABEL_97;
  }

  FrameArray.popFirst()(&v153);
  sub_182050C60(&v153, &v167, v12, v7, v106, v104, v8, v6, v108, v9, v105 & 1, &v168);

  v7 = *(&v153 + 1);
  v23 = v153;
  v8 = v154;
  a4 = BYTE8(v154);
  v10 = *(&v155 + 1);
  v9 = v155;
  LOBYTE(v11) = v156;
  if (v156 != 2 || v155 != 0)
  {
    goto LABEL_98;
  }

  if ((v163 & 1) == 0 && v162)
  {
    MEMORY[0x1865DF520](v162, -1, -1);
  }

  sub_181F68EF4(v23, v7, v8, a4);

  v7 = *(&v109 + 1);
  v8 = v110;
  a4 = BYTE8(v110);
  v10 = *(&v111 + 1);
  v9 = v111;
  LODWORD(v11) = v112;
  v97 = v118;
  v98 = v119;
  v106 = v109;

  if (v11 == 2 && __PAIR128__(v10, v9) == 0)
  {
    if (v97)
    {
      v99 = v98;
    }

    else
    {
      v99 = 1;
    }

    if ((v99 & 1) == 0)
    {
      MEMORY[0x1865DF520](v97, -1, -1);
    }

    sub_181F68EF4(v106, v7, v8, a4);
    goto LABEL_62;
  }

LABEL_99:

  sub_181F68EF4(v106, v7, v8, a4);

  result = sub_181F68F3C(v9, v10, v11);
  __break(1u);
  return result;
}

uint64_t sub_182050C60(uint64_t a1, Swift::Int *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned __int8 a7, uint64_t a8, Swift::Int a9, unsigned __int8 a10, char a11, _BYTE *a12)
{
  v12 = a1;
  v13 = *(a1 + 16);
  v150 = *a1;
  v151 = v13;
  v152 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *(a1 + 64);
  v16 = *(a1 + 72);
  v18 = *(a1 + 192);
  v163 = *(a1 + 176);
  v164 = v18;
  v165 = *(a1 + 208);
  v19 = *(a1 + 128);
  v159 = *(a1 + 112);
  v160 = v19;
  v20 = *(a1 + 144);
  v162 = *(a1 + 160);
  v161 = v20;
  v21 = *(a1 + 96);
  v157 = *(a1 + 80);
  v158 = v21;
  v153 = v14;
  v154 = v15;
  v155 = v17;
  v156 = v16;
  v22 = 1;
  LOBYTE(v130) = 1;
  LOBYTE(v120) = 1;
  LOBYTE(v117[0]) = 1;
  v138 = 0uLL;
  *&v139 = 0;
  BYTE8(v139) = 6;
  v140 = 0uLL;
  v23 = 2;
  v141[0] = 2;
  memset(&v141[8], 0, 33);
  memset(&v141[48], 0, 32);
  *&v142 = 0;
  DWORD2(v142) = 2;
  BYTE12(v142) = 1;
  *v143 = 0uLL;
  v143[16] = 1;
  v144 = 0;
  *&v143[24] = 0;
  v145 = 0;
  v146 = 256;
  v147 = 0;
  v148 = 0;
  v24 = 255;
  v149 = -1;
  v25 = Frame.bufferLength.getter();
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 6;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 2;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = v25;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0;
  *(v12 + 136) = 2;
  *(v12 + 140) = 1;
  *(v12 + 144) = 0;
  *(v12 + 152) = 0;
  *(v12 + 160) = 1;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 256;
  *(v12 + 194) = 0;
  *(v12 + 200) = 0;
  *(v12 + 208) = -1;
  if (BYTE8(v151) == 5)
  {
    v26 = nw_frame_unclaimed_length(v150);
LABEL_9:
    LOBYTE(v28) = a7;
    v29 = a3;
    goto LABEL_10;
  }

  if (!v16)
  {
LABEL_8:
    v26 = 0;
    goto LABEL_9;
  }

  v27 = v15 + v17;
  if (__OFADD__(v15, v17))
  {
    __break(1u);
    goto LABEL_115;
  }

  v26 = v16 - v27;
  LOBYTE(v28) = a7;
  v29 = a3;
  if (__OFSUB__(v16, v27))
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_10:
  v23 = a2;
  swift_beginAccess();
  v24 = *a2;
  if (*a2 < v26 && Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(*a2, 0, 1))
  {
    Frame.collapse()();
    Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(v24, 0, 1);
  }

  if (BYTE8(v151) == 5)
  {
    v12 = nw_frame_unclaimed_length(v150);
    goto LABEL_21;
  }

  if (!v156)
  {
    goto LABEL_20;
  }

  v30 = v154 + v155;
  if (__OFADD__(v154, v155))
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v12 = v156 - v30;
  if (__OFSUB__(v156, v30))
  {
    __break(1u);
LABEL_20:
    v12 = 0;
  }

LABEL_21:
  v31 = &v130;
  v23 = &v120;
  v32 = v29[37];

  sub_181F83BF4(0x202020100uLL >> (8 * v28), a8, &v130);
  v33 = v130;
  if (!v130)
  {
LABEL_25:

    sub_1820223F0(&v138);
    v24 = 0;
    goto LABEL_26;
  }

  v111 = v12;
  v34 = *(&v130 + 1);
  v23 = v131;
  LOBYTE(v130) = 4;
  LOBYTE(v132) = 1;
  *(&v134 + 1) = 0;
  v133 = 0uLL;
  *(&v132 + 1) = 0;
  LOBYTE(v134) = 0;
  v135[0] = 1;
  *&v136 = 0;
  DWORD2(v136) = 0;
  *v137 = 0;
  *&v137[16] = 0;
  *&v137[25] = 512;
  v137[27] = 0;
  v135[24] = 0x202020100uLL >> (8 * v28);
  v137[24] = v28 < 3u;
  *(&v130 + 1) = a6;
  v131 = 0uLL;
  v135[1] = v28;
  *&v135[32] = a5;
  *&v135[40] = MEMORY[0x1E69E7CC0];

  *&v135[8] = v34;

  *&v135[16] = v23;
  v137[8] = 2;
  v35 = *(v32 + 24);
  if (v35)
  {
    v36 = *(v35 + 16);
    if (v36 >> 62)
    {
      sub_182AD3EA8();
      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {
    v36 = 0;
  }

  v38 = &v130;
  v24 = 0;
  v39 = sub_182224F04(a6, v36);
  v23 = v39;
  v28 = v40;
  v12 = v41;
  if (v41)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v42 = a4 - a9;
  if (__OFSUB__(a4, a9))
  {
    goto LABEL_116;
  }

  if (__OFSUB__(v42, v39))
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  sub_181F843F4(1u >> a7, v42 - v39);
  v22 = v43;
  v38 = v44;
  v12 = v45;
  if (__OFADD__(v44, v45))
  {
    __break(1u);
LABEL_122:
    v104 = v43;
    swift_once();
    v43 = v104;
LABEL_57:
    v24 = qword_1EA8387E8;
    if (is_mul_ok(v43, qword_1EA8387E8))
    {
      if (qword_1EA837038 == -1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      __break(1u);
    }

    v105 = v43;
    swift_once();
    v43 = v105;
LABEL_59:
    v12 = qword_1EA8387F0;
    if (qword_1EA8387F0)
    {
      if (qword_1EA837010 == -1)
      {
LABEL_61:
        if (qword_1EA8431F0)
        {
          sub_181FF499C(&v120, (v43 * v24 / v12 / qword_1EA8431F0), v29);

          result = swift_beginAccess();
          *a12 = 1;
          return result;
        }

        __break(1u);
        goto LABEL_128;
      }
    }

    else
    {
      __break(1u);
    }

    v106 = v43;
    swift_once();
    v43 = v106;
    goto LABEL_61;
  }

  *(&v132 + 1) = v44 + v45;
  *&v133 = a9;
  v38 = &v150;
  v43 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(0, a9, 1);
  if ((v43 & 1) == 0)
  {
    v138 = xmmword_182AED510;
    LOBYTE(v139) = 16;
    sub_181F5F494();
    swift_willThrowTypedImpl();

    v142 = v136;
    *v143 = *v137;
    *&v143[12] = *&v137[12];
    *&v141[16] = v134;
    *&v141[32] = *v135;
    *&v141[48] = *&v135[16];
    *&v141[64] = *&v135[32];
    v138 = v130;
    v139 = v131;
    v140 = v132;
    *v141 = v133;
    sub_181F843A0(&v138);
    LOBYTE(v28) = 0;
    v79 = v29[10];
    v78 = v29[11];
    *&v138 = 0;
    *(&v138 + 1) = 0xE000000000000000;

    sub_182AD3BA8();

    *&v138 = 0xD00000000000001BLL;
    *(&v138 + 1) = 0x8000000182BDC000;
    sub_18222E40C(2uLL, 0, 0x10u);
    MEMORY[0x1865D9CA0](v80, v81);

    MEMORY[0x1865D9CA0](0x2065646F63202CLL, 0xE700000000000000);
    v82 = sub_18222E40C(2uLL, 0, 0x10u);
    sub_18202232C(2, 0, 16);

    *&v130 = v82;
    v83 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v83);

    v84 = *(&v138 + 1);
    v22 = v138;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v85 = sub_182AD2698();
    __swift_project_value_buffer(v85, qword_1EA843418);

    v86 = sub_182AD2678();
    v31 = sub_182AD38B8();

    if (os_log_type_enabled(v86, v31))
    {
      v32 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v138 = v28;
      *v32 = 136315650;
      v87 = sub_182AD3BF8();
      v89 = sub_181C64FFC(v87, v88, &v138);

      *(v32 + 4) = v89;
      v29 = a3;
      *(v32 + 12) = 2080;
      v90 = sub_181C64FFC(v79, v78, &v138);

      *(v32 + 14) = v90;
      *(v32 + 22) = 2080;
      v91 = sub_181C64FFC(v22, v84, &v138);

      *(v32 + 24) = v91;
      _os_log_impl(&dword_181A37000, v86, v31, "%s %s %s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v28, -1, -1);
      MEMORY[0x1865DF520](v32, -1, -1);
    }

    else
    {
    }

    v92 = *(v29[37] + 32);
    if (*(v92 + 16))
    {
      v93 = sub_18224EF74(a10);
      if (v94)
      {
        v95 = *(*(v92 + 56) + 8 * v93);
        swift_beginAccess();
        v96 = *(v95 + 16);
        if (v96[2])
        {
          swift_beginAccess();
          v22 = v96[4];
          v31 = v96[5];
          v32 = v96[6];
          v28 = v96[7];
          v97 = v96[8];
          v98 = v96[9];
          v99 = v96[11];
          v116 = v96[10];

          sub_18206AF20(v22, v31, v32, v28, v97, v98, v116, v99);
          sub_181FCCC18(0, 1);
          swift_endAccess();

          sub_18206B01C(v22, v31, v32, v28, v97, v98, v116, v99);
        }
      }
    }

    Frame.finalize(success:)(0);
    v68 = *(&v150 + 1);
    v43 = v150;
    v69 = v151;
    v70 = BYTE8(v151);
    v24 = *(&v152 + 1);
    v38 = v152;
    v12 = v153;
    if (v153 == 2 && v152 == 0)
    {
      if ((v162 & 1) != 0 || !v161)
      {
        goto LABEL_106;
      }

      v38 = v150;
      v73 = v161;
      v24 = *(&v150 + 1);
      v12 = v151;
      LOBYTE(v22) = BYTE8(v151);
LABEL_104:
      MEMORY[0x1865DF520](v73, -1);
LABEL_105:
      v43 = v38;
      v68 = v24;
      v69 = v12;
      v70 = v22;
LABEL_106:
      sub_181F68EF4(v43, v68, v69, v70);
    }

    goto LABEL_137;
  }

  if (a7 >= 3u)
  {
    v137[26] = *(a8 + 1091);
  }

  if (BYTE8(v151) == 5)
  {
    v114 = nw_frame_unclaimed_length(v150);
  }

  else if (v156)
  {
    v74 = v154 + v155;
    if (__OFADD__(v154, v155))
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (__OFSUB__(v156, v74))
    {
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v114 = v156 - v74;
  }

  else
  {
    v114 = 0;
  }

  if (v135[1] - 3 >= 2)
  {
    v75 = *(v32 + 24);
    v140 = v132;
    *v141 = v133;
    *&v141[16] = v134;
    *&v141[32] = *v135;
    v138 = v130;
    v139 = v131;
    *&v141[64] = *&v135[32];
    *&v141[50] = *&v135[18];
    *&v141[34] = *&v135[2];
    *&v141[72] = *&v135[40];
    *&v143[12] = *&v137[12];
    v142 = v136;
    *v143 = *v137;

    v38 = &v138;
    sub_182223AA4(&v150, 1, a6, v75);

    v29 = a3;
  }

  else
  {
    v140 = v132;
    *v141 = v133;
    *&v141[16] = v134;
    *&v141[32] = *v135;
    v138 = v130;
    v139 = v131;
    *&v141[64] = *&v135[32];
    *&v141[50] = *&v135[18];
    *&v141[34] = *&v135[2];
    *&v141[72] = *&v135[40];
    *&v143[12] = *&v137[12];
    v142 = v136;
    *v143 = *v137;
    v38 = &v138;
    v43 = sub_182224A10(&v150, 1, a6);
  }

  if (BYTE8(v151) == 5)
  {
    v43 = nw_frame_unclaimed_length(v150);
    v31 = v43;
  }

  else
  {
    if (v156)
    {
      v76 = v154 + v155;
      if (__OFADD__(v154, v155))
      {
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      v31 = v156 - v76;
      if (!__OFSUB__(v156, v76))
      {
        goto LABEL_86;
      }

      __break(1u);
    }

    v31 = 0;
  }

LABEL_86:
  if (__OFSUB__(v114, v31))
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  *&v131 = v114 - v31;
  if (v114 - v31 != v23)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (__OFSUB__(v23, v28))
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  *(&v131 + 1) = v23 - v28;
  LOBYTE(v132) = 0;
  *&v117[0] = MEMORY[0x1E69E7CC0];
  v38 = v33;
  sub_181F81BC4(&v150, 1, v22, v117);
  v22 = v77;

  *&v135[40] = *&v117[0];
  if (BYTE8(v151) == 5)
  {
    v43 = nw_frame_unclaimed_length(v150);
    v100 = v43;
  }

  else
  {
    v100 = v156;
    if (v156)
    {
      v101 = v154 + v155;
      if (__OFADD__(v154, v155))
      {
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      v100 = v156 - v101;
      if (__OFSUB__(v156, v101))
      {
LABEL_136:
        __break(1u);
LABEL_137:
        sub_181F68EF4(v43, v68, v69, v70);

        sub_181F68F3C(v38, v24, v12);
        __break(1u);
        goto LABEL_138;
      }
    }
  }

  v102 = __OFSUB__(v31, v100);
  v103 = v31 - v100;
  if (v102)
  {
    goto LABEL_133;
  }

  *(&v132 + 1) = v103;
  WORD4(v136) = v22 & 0x101;
  Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(0, a9, 1);

  v128 = v136;
  v129[0] = *v137;
  v31 = &v130;
  v23 = &v120;
  *(v129 + 12) = *&v137[12];
  v124 = v134;
  v125 = *v135;
  v126 = *&v135[16];
  v127 = *&v135[32];
  v120 = v130;
  v121 = v131;
  v122 = v132;
  v123 = v133;
  nullsub_41();
  v142 = v128;
  *v143 = v129[0];
  *&v143[12] = *(v129 + 12);
  *&v141[16] = v124;
  *&v141[32] = v125;
  *&v141[48] = v126;
  *&v141[64] = v127;
  v138 = v120;
  v139 = v121;
  v140 = v122;
  *v141 = v123;
  v12 = v111;
LABEL_26:
  if (BYTE8(v151) == 5)
  {
    v37 = nw_frame_unclaimed_length(v150);
LABEL_36:
    if (v37 >= v12)
    {
      goto LABEL_39;
    }

    v47 = v12 - v37;
    if (__OFSUB__(v12, v37))
    {
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_38;
  }

  if (!v156)
  {
    if (v12 <= 0)
    {
LABEL_39:
      v136 = v142;
      *v137 = *v143;
      *&v137[12] = *&v143[12];
      v134 = *&v141[16];
      *v135 = *&v141[32];
      *&v135[16] = *&v141[48];
      *&v135[32] = *&v141[64];
      v130 = v138;
      v131 = v139;
      v132 = v140;
      v133 = *v141;
      if (sub_182064AC8(&v130) == 1)
      {
        Frame.finalize(success:)(0);
        v24 = *(&v150 + 1);
        v38 = v150;
        v12 = v151;
        LOBYTE(v22) = BYTE8(v151);
        v32 = *(&v152 + 1);
        v31 = v152;
        LOBYTE(v28) = v153;
        v23 = *(&v162 + 1);
        if (v153 == 2 && v152 == 0)
        {
          goto LABEL_66;
        }

        sub_181F68EF4(v150, *(&v150 + 1), v151, BYTE8(v151));

        sub_181F68F3C(v31, v32, v28);
        __break(1u);
      }

      v128 = v136;
      v129[0] = *v137;
      *(v23 + 156) = *(v31 + 156);
      v124 = v134;
      v125 = *v135;
      v126 = *&v135[16];
      v127 = *&v135[32];
      v120 = v130;
      v121 = v131;
      v122 = v132;
      v123 = v133;

      v48 = sub_182235FB4(&v120, &v150);
      if (v24)
      {
        v51 = v48;
        v52 = v49;
        v53 = v50;

        v24 = v29[10];
        v23 = v29[11];
        *&v117[0] = 0;
        *(&v117[0] + 1) = 0xE000000000000000;

        sub_182AD3BA8();

        *&v117[0] = 0xD00000000000001ALL;
        *(&v117[0] + 1) = 0x8000000182BDBFE0;
        sub_18222E40C(v51, v52, v53);
        MEMORY[0x1865D9CA0](v54, v55);

        MEMORY[0x1865D9CA0](0x2065646F63202CLL, 0xE700000000000000);
        v56 = sub_18222E40C(v51, v52, v53);
        sub_18202232C(v51, v52, v53);

        v119 = v56;
        v57 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v57);

        v12 = *(&v117[0] + 1);
        v22 = *&v117[0];
        if (qword_1EA837248 == -1)
        {
          goto LABEL_45;
        }

        goto LABEL_120;
      }

LABEL_56:

      v71 = *(a8 + 32);
      *&v117[0] = *(a8 + 24);
      BYTE8(v117[0]) = v71;
      sub_182171338(&v150, v117, (a11 & 1) == 0);

      *&v128 = a8;
      v38 = v29[44];

      v43 = mach_continuous_time();
      if (qword_1EA837030 == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_122;
    }

    v47 = v12;
LABEL_38:
    Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(v47, 0, 1);
    goto LABEL_39;
  }

  v46 = v154 + v155;
  if (__OFADD__(v154, v155))
  {
    goto LABEL_118;
  }

  v37 = v156 - v46;
  if (!__OFSUB__(v156, v46))
  {
    goto LABEL_36;
  }

LABEL_119:
  __break(1u);
LABEL_120:
  swift_once();
LABEL_45:
  v58 = sub_182AD2698();
  __swift_project_value_buffer(v58, qword_1EA843418);

  v59 = sub_182AD2678();
  v60 = sub_182AD38B8();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v117[0] = v62;
    *v61 = 136315650;
    v63 = sub_182AD3BF8();
    v65 = sub_181C64FFC(v63, v64, v117);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    v66 = sub_181C64FFC(v24, v23, v117);

    *(v61 + 14) = v66;
    *(v61 + 22) = 2080;
    v67 = sub_181C64FFC(v22, v12, v117);

    *(v61 + 24) = v67;
    _os_log_impl(&dword_181A37000, v59, v60, "%s %s %s", v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v62, -1, -1);
    MEMORY[0x1865DF520](v61, -1, -1);
  }

  else
  {
  }

  Frame.finalize(success:)(0);
  v117[8] = v128;
  v118[0] = v129[0];
  *(v118 + 12) = *(v129 + 12);
  v117[4] = v124;
  v117[5] = v125;
  v117[6] = v126;
  v117[7] = v127;
  v117[0] = v120;
  v117[1] = v121;
  v117[2] = v122;
  v117[3] = v123;
  sub_181F843A0(v117);
  v24 = *(&v150 + 1);
  v38 = v150;
  v12 = v151;
  LOBYTE(v22) = BYTE8(v151);
  v32 = *(&v152 + 1);
  v31 = v152;
  LOBYTE(v28) = v153;
  if (v153 == 2 && v152 == 0)
  {
LABEL_66:
    if (v162)
    {
      goto LABEL_105;
    }

    v73 = v161;
    if (!v161)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_139:
  sub_181F68EF4(v38, v24, v12, v22);

  result = sub_181F68F3C(v31, v32, v28);
  __break(1u);
  return result;
}

void sub_1820520C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(a1 + 56) + 48);
  swift_beginAccess();
  v5 = 0;
  v6 = *(a1 + 320);
  if ((*(a1 + 312) & 1) == 0)
  {
    v7 = *(a1 + 304);
    if (*(a1 + 112) == 5)
    {
      v5 = nw_frame_unclaimed_length(*(a1 + 88));
      if (!v7)
      {
        goto LABEL_24;
      }

LABEL_9:
      v13 = v7[4];
      v14 = v7[3] + v13;
      if (v7[2] < v14)
      {
        v14 = v7[2];
      }

      v30 = v7[4];
      v31 = v14;
      swift_retain_n();
      v16 = v7;
      do
      {
        if (v13 == v31)
        {
          if ((sub_181AC81FC(v15) & 1) == 0)
          {

            goto LABEL_24;
          }

          v16 = v7;
          v13 = v30;
        }

        v19 = &v16[v13++];
        v30 = v13;
        v20 = v19[5];
        swift_beginAccess();
        if (*(v20 + 40) == 5)
        {
          v17 = *(v20 + 16);

          v18 = nw_frame_unclaimed_length(v17);
        }

        else
        {
          v21 = *(v20 + 88);
          if (v21)
          {
            v22 = *(v20 + 72);
            v23 = *(v20 + 80);
            v11 = __OFADD__(v22, v23);
            v24 = v22 + v23;
            if (v11)
            {
              goto LABEL_39;
            }

            v18 = v21 - v24;
            if (__OFSUB__(v21, v24))
            {
              goto LABEL_40;
            }
          }

          else
          {

            v18 = 0;
          }
        }

        swift_endAccess();

        v11 = __OFADD__(v5, v18);
        v5 += v18;
      }

      while (!v11);
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      v9 = *(a1 + 144);
      v10 = *(a1 + 152);
      v11 = __OFADD__(v9, v10);
      v12 = v9 + v10;
      if (v11)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v5 = v8 - v12;
      if (__OFSUB__(v8, v12))
      {
LABEL_45:
        __break(1u);
        return;
      }

      if (v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = 0;
      if (v7)
      {
        goto LABEL_9;
      }
    }

LABEL_24:
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_25:
  if (__CFADD__(v6, v5))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_endAccess();
  if (v4 < v6 + v5)
  {
    swift_beginAccess();
    *(a1 + 328) = 1;
    return;
  }

  v25 = *(v2 + 304);
  if (*(a1 + 328) == 1 && (swift_beginAccess(), *(a1 + 368) == 2))
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    swift_beginAccess();

    sub_181F6C974(v26, v27, 3u);
    swift_endAccess();
  }

  else
  {
  }

  if (*(a1 + 24))
  {
    goto LABEL_43;
  }

  v28 = *(*(a1 + 56) + 48);
  v29 = 5;
  if (!v28)
  {
    v29 = 1;
  }

  *&v32 = v29;
  *(&v32 + 1) = 0x4800000000000000;
  v33 = a1;
  v34 = v28;
  v35 = xmmword_182AEB780;

  sub_181F82F10(0x202020100uLL >> (8 * v25), &v32);
}

void sub_1820523DC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v15 = *(a1 + 16);
    v16 = *(*(a1 + 56) + 48);
    v17 = 0x202020100uLL >> (8 * *(v1 + 304));
    v33 = xmmword_182AF0210;
    v34 = v15;
    v35 = 0;
    v36 = v16;

    sub_181F82F10(v17, &v33);

    v19 = *(v1 + 80);
    v18 = *(v1 + 88);
    v20 = qword_1EA837248;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_182AD2698();
    __swift_project_value_buffer(v21, qword_1EA843418);

    v22 = sub_182AD2678();
    v23 = sub_182AD38D8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v33 = v25;
      *v24 = 136315650;
      v26 = sub_182AD3BF8();
      v28 = sub_181C64FFC(v26, v27, &v33);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = sub_181C64FFC(v19, v18, &v33);

      *(v24 + 14) = v29;
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_181C64FFC(0xD000000000000014, 0x8000000182BDC0F0, &v33);
      _os_log_impl(&dword_181A37000, v22, v23, "%s %s %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v25, -1, -1);
      MEMORY[0x1865DF520](v24, -1, -1);

      v30 = *(a1 + 372);
      if ((v30 & 0x800) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v30 = *(a1 + 372);
      if ((v30 & 0x800) != 0)
      {
LABEL_16:
        v31 = *(a1 + 32);
        v32 = *(a1 + 40);
        swift_beginAccess();

        sub_181F6C974(v31, v32, 4u);
        swift_endAccess();

        return;
      }
    }

    *(a1 + 372) = v30 | 0x800;
    goto LABEL_16;
  }

  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v4 = qword_1EA837248;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_182AD2698();
  __swift_project_value_buffer(v5, qword_1EA843418);

  v6 = sub_182AD2678();
  v7 = sub_182AD38D8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v33 = v9;
    *v8 = 136315650;
    v10 = sub_182AD3BF8();
    v12 = sub_181C64FFC(v10, v11, &v33);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_181C64FFC(v3, v2, &v33);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_181C64FFC(0xD00000000000002ALL, 0x8000000182BDC0C0, &v33);
    _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v9, -1, -1);
    MEMORY[0x1865DF520](v8, -1, -1);
  }

  else
  {
  }
}

void sub_182052860()
{
  if ((*(v0 + 1125) & 1) == 0)
  {
    swift_beginAccess();
    if (*(v0 + 139) - 9 >= 3)
    {
      v15 = *(v0 + 80);
      v14 = *(v0 + 88);
      v16 = qword_1EA837248;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = sub_182AD2698();
      __swift_project_value_buffer(v17, qword_1EA843418);

      v18 = sub_182AD2678();
      v19 = sub_182AD38C8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v26[0] = v21;
        *v20 = 136315650;
        v22 = sub_182AD3BF8();
        v24 = sub_181C64FFC(v22, v23, v26);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        v25 = sub_181C64FFC(v15, v14, v26);

        *(v20 + 14) = v25;
        *(v20 + 22) = 2080;
        *(v20 + 24) = sub_181C64FFC(0xD00000000000003DLL, 0x8000000182BDADC0, v26);
        _os_log_impl(&dword_181A37000, v18, v19, "%s %s %s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v21, -1, -1);
        MEMORY[0x1865DF520](v20, -1, -1);

        return;
      }
    }

    else
    {
      sub_182047548(1);
      if (*(v0 + 1024) == 1)
      {
        v1 = 0x202020100uLL >> (8 * *(v0 + 304));
        v26[0] = xmmword_182AF0220;

        sub_181F82F10(v1, v26);
      }

      *(v0 + 1125) = 1;
      v3 = *(v0 + 80);
      v2 = *(v0 + 88);
      v4 = qword_1EA837250;

      if (v4 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1)
      {
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v5 = sub_182AD2698();
        __swift_project_value_buffer(v5, qword_1EA843418);

        v6 = sub_182AD2678();
        v7 = sub_182AD38A8();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          *&v26[0] = v9;
          *v8 = 136315650;
          v10 = sub_182AD3BF8();
          v12 = sub_181C64FFC(v10, v11, v26);

          *(v8 + 4) = v12;
          *(v8 + 12) = 2080;
          v13 = sub_181C64FFC(v3, v2, v26);

          *(v8 + 14) = v13;
          *(v8 + 22) = 2080;
          *(v8 + 24) = sub_181C64FFC(0xD000000000000018, 0x8000000182BDAE00, v26);
          _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v9, -1, -1);
          MEMORY[0x1865DF520](v8, -1, -1);

          return;
        }
      }
    }
  }
}

void sub_182052CC8()
{
  v1 = *(v0 + 280);
  if (!v1)
  {
    goto LABEL_44;
  }

  if (*(v1 + 16))
  {
    v2 = v0;
    sub_18224F168(8);
    if (v3)
    {
      v4 = sub_1822CDE04();
      if (*(v1 + 16))
      {
        v5 = v4;
        sub_18224F168(9);
        if (v6)
        {
          v7 = sub_1822CDE04();
          if (*(v1 + 16))
          {
            sub_18224F168(4);
            if (v8)
            {
              v9 = sub_1822CDE04();
              if ((v9 & 0x8000000000000000) == 0)
              {
LABEL_11:
                swift_beginAccess();
                if (*(*(v0 + 288) + 16))
                {
                  sub_18224F168(4);
                  if (v10)
                  {
                    v11 = sub_1822CDE04();
                    if ((v11 & 0x8000000000000000) == 0)
                    {
LABEL_16:
                      v12 = *(v0 + 1024);
                      v13 = *(v0 + 80);
                      v14 = *(v0 + 88);
                      swift_beginAccess();

                      sub_18202539C(v12, v5, v13, v14);
                      swift_endAccess();

                      v15 = *(v0 + 1024);
                      v16 = *(v0 + 80);
                      v17 = *(v0 + 88);
                      swift_beginAccess();

                      sub_18202539C(v15, v7, v16, v17);
                      swift_endAccess();

                      if (*(v1 + 16) && (v18 = sub_18224F168(17), (v19 & 1) != 0))
                      {
                        v20 = (*(v1 + 56) + 56 * v18);
                        v21 = *v20;
                        v22 = v20[1];
                        v23 = v20[2];
                        v24 = v20[3];
                        v25 = v20[4];
                        v37 = v20[6];
                        v38 = v20[5];
                        sub_18206A3C4(*v20, v22, v23, v24, v25, v38, v37);

                        v26 = sub_1822CDE04();
                        sub_18206A46C(v21, v22, v23, v24, v25, v38, v37);
                        v27 = 0xFFFFLL;
                        if (v26 < 0xFFFF)
                        {
                          v27 = v26;
                        }
                      }

                      else
                      {

                        v27 = 0;
                      }

                      v2[39] = v27;
                      sub_1820531D4(v2);
                      v28 = v2[9];
                      v29 = v2[10];
                      v30 = v2[11];
                      type metadata accessor for FlowControlConnection();
                      swift_allocObject();

                      v2[18] = sub_18221249C(v28, v29, v30);

                      sub_182210D38(v9, v11);

                      swift_beginAccess();
                      v31 = v2[63];
                      if (v31 >> 62)
                      {
                        v32 = sub_182AD3EB8();
                        if (!v32)
                        {
                          goto LABEL_31;
                        }
                      }

                      else
                      {
                        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (!v32)
                        {
                          goto LABEL_31;
                        }
                      }

                      if (v32 < 1)
                      {
                        __break(1u);
LABEL_43:
                        __break(1u);
LABEL_44:
                        __break(1u);
                        return;
                      }

                      v33 = 0;
                      do
                      {
                        if ((v31 & 0xC000000000000001) != 0)
                        {
                          MEMORY[0x1865DA790](v33, v31);
                        }

                        else
                        {
                        }

                        ++v33;

                        sub_18220EA24(v9, v11);
                      }

                      while (v32 != v33);
LABEL_31:
                      swift_endAccess();
                      swift_beginAccess();
                      v34 = v2[79];
                      if (v34 >> 62)
                      {
                        v35 = sub_182AD3EB8();
                        if (v35)
                        {
LABEL_33:
                          if (v35 >= 1)
                          {
                            v36 = 0;
                            do
                            {
                              if ((v34 & 0xC000000000000001) != 0)
                              {
                                MEMORY[0x1865DA790](v36, v34);
                              }

                              else
                              {
                              }

                              ++v36;

                              sub_18220EA24(v9, v11);
                            }

                            while (v35 != v36);
                            goto LABEL_40;
                          }

                          goto LABEL_43;
                        }
                      }

                      else
                      {
                        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (v35)
                        {
                          goto LABEL_33;
                        }
                      }

LABEL_40:
                      swift_endAccess();
                      return;
                    }

                    __break(1u);
                  }
                }

                v11 = 0;
                goto LABEL_16;
              }

              __break(1u);
            }
          }

          v9 = 0;
          goto LABEL_11;
        }
      }
    }
  }
}

void sub_1820531D4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  v3 = qword_1EA837250;

  if (v3 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    sub_182AD3BA8();

    v15[0] = 0xD000000000000019;
    v15[1] = 0x8000000182BDAF30;
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843418);

    v6 = sub_182AD2678();
    v7 = sub_182AD38A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315650;
      v10 = sub_182AD3BF8();
      v12 = sub_181C64FFC(v10, v11, v15);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = sub_181C64FFC(v2, v1, v15);

      *(v8 + 14) = v13;
      *(v8 + 22) = 2080;
      v14 = sub_181C64FFC(0xD000000000000019, 0x8000000182BDAF30, v15);

      *(v8 + 24) = v14;
      _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v9, -1, -1);
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall QUICConnectionImplementation.wakeup()()
{

  sub_181F896D8();
}

uint64_t sub_1820534F8()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);

  sub_18206A1F0(v1, v2, v3);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);

  sub_18206A1F0(v4, v5, v6);

  v7 = *(v0 + 464);
  v16[4] = *(v0 + 448);
  v16[5] = v7;
  v8 = *(v0 + 496);
  v16[6] = *(v0 + 480);
  v16[7] = v8;
  v9 = *(v0 + 400);
  v16[0] = *(v0 + 384);
  v16[1] = v9;
  v10 = *(v0 + 432);
  v16[2] = *(v0 + 416);
  v16[3] = v10;
  sub_18206A234(v16);
  v11 = *(v0 + 592);
  v17[4] = *(v0 + 576);
  v17[5] = v11;
  v12 = *(v0 + 624);
  v17[6] = *(v0 + 608);
  v17[7] = v12;
  v13 = *(v0 + 528);
  v17[0] = *(v0 + 512);
  v17[1] = v13;
  v14 = *(v0 + 560);
  v17[2] = *(v0 + 544);
  v17[3] = v14;
  sub_18206A234(v17);

  sub_181F8465C(*(v0 + 984), *(v0 + 992), *(v0 + 1000), *(v0 + 1008), *(v0 + 1016));
  sub_18206A288(*(v0 + 1048), *(v0 + 1056), *(v0 + 1064), *(v0 + 1072), *(v0 + 1080), *(v0 + 1088), *(v0 + 1096), *(v0 + 1104), *(v0 + 1112));

  return sub_182023268(*(v0 + 1144), *(v0 + 1152), *(v0 + 1160));
}

uint64_t QUICConnectionImplementation.deinit()
{

  swift_unknownObjectRelease();
  sub_181F74148(*(v0 + 120), *(v0 + 128));

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);

  sub_18206A1F0(v1, v2, v3);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);

  sub_18206A1F0(v4, v5, v6);

  v7 = *(v0 + 464);
  v16[4] = *(v0 + 448);
  v16[5] = v7;
  v8 = *(v0 + 496);
  v16[6] = *(v0 + 480);
  v16[7] = v8;
  v9 = *(v0 + 400);
  v16[0] = *(v0 + 384);
  v16[1] = v9;
  v10 = *(v0 + 432);
  v16[2] = *(v0 + 416);
  v16[3] = v10;
  sub_18206A234(v16);
  v11 = *(v0 + 592);
  v17[4] = *(v0 + 576);
  v17[5] = v11;
  v12 = *(v0 + 624);
  v17[6] = *(v0 + 608);
  v17[7] = v12;
  v13 = *(v0 + 528);
  v17[0] = *(v0 + 512);
  v17[1] = v13;
  v14 = *(v0 + 560);
  v17[2] = *(v0 + 544);
  v17[3] = v14;
  sub_18206A234(v17);

  sub_181F8465C(*(v0 + 984), *(v0 + 992), *(v0 + 1000), *(v0 + 1008), *(v0 + 1016));
  sub_18206A288(*(v0 + 1048), *(v0 + 1056), *(v0 + 1064), *(v0 + 1072), *(v0 + 1080), *(v0 + 1088), *(v0 + 1096), *(v0 + 1104), *(v0 + 1112));

  sub_182023268(*(v0 + 1144), *(v0 + 1152), *(v0 + 1160));
  return v0;
}

uint64_t QUICConnectionImplementation.__deallocating_deinit()
{
  QUICConnectionImplementation.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_182053A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (*(v5 + 16) && (v6 = sub_18224EEF0(a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v10 = *(v8 + 64);
    v9 = *(v8 + 72);
    v11 = *(v8 + 80);
    if (v11 == 4)
    {

      sub_181F68EA8(v10, v9, 4u);
      sub_181F636F0(v10, &v28);
      if (v28)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          v13 = v12;
LABEL_16:
          v21 = v10;
          v22 = v9;
          v23 = 4;
LABEL_26:
          sub_181F68E5C(v21, v22, v23);

          return v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C50, &unk_182AF06C0);
        if (swift_dynamicCastClass())
        {
          v13 = sub_18228121C(v20);
          swift_unknownObjectRelease();
          goto LABEL_16;
        }

        swift_unknownObjectRelease();
      }

      v17 = v10;
      v18 = v9;
      v19 = 4;
    }

    else
    {
      v28 = *(*(v5 + 56) + 8 * v6);
      v29 = 0x60000001EEFC4E48uLL;

      sub_181F68EA8(v10, v9, v11);
      if (sub_181F6433C(&v28))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
        v16 = swift_dynamicCastClass();
        if (v16)
        {
LABEL_25:
          v13 = v16;
          v21 = v10;
          v22 = v9;
          v23 = v11;
          goto LABEL_26;
        }

        swift_unknownObjectRelease();
      }

      v17 = v10;
      v18 = v9;
      v19 = v11;
    }

    sub_181F68E5C(v17, v18, v19);
    v10 = *(v8 + 64);
    v9 = *(v8 + 72);
    v11 = *(v8 + 80);
    if (v11 == 4)
    {
      sub_181F68EA8(*(v8 + 64), *(v8 + 72), 4u);
      sub_181F636F0(v10, &v28);
      if (v28)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v25 = v24;

LABEL_31:
          sub_181F68E5C(v10, v9, 4u);
          return v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C50, &unk_182AF06C0);
        if (swift_dynamicCastClass())
        {
          v25 = sub_18228121C(v27);

          swift_unknownObjectRelease();
          goto LABEL_31;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_181F68E5C(v10, v9, 4u);
      return 0;
    }

    v28 = v3;
    v29 = 0x60000001EEFC49F0uLL;

    sub_181F68EA8(v10, v9, v11);
    v26 = sub_181F6433C(&v28);

    if (v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        goto LABEL_25;
      }

      swift_unknownObjectRelease();
    }

    sub_181F68E5C(v10, v9, v11);
  }

  else
  {
    v28 = v3;
    v29 = 0x60000001EEFC49F0uLL;
    swift_unknownObjectRetain();
    v14 = sub_181F6433C(&v28);

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_182053DD0(uint64_t a1)
{
  v5 = v1;
  v6 = *(a1 + 16);
  if (v6 >> 62)
  {
    v8 = *(v1 + 80);
    v7 = *(v1 + 88);

    sub_182AD3BA8();

    v125 = 0x8000000182BDB640;
    v122 = v6;
    v9 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v9);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843418);

    v11 = sub_182AD2678();
    v12 = sub_182AD38B8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v124 = v14;
      *v13 = 136315650;
      v15 = sub_182AD3BF8();
      v17 = sub_181C64FFC(v15, v16, &v124);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = sub_181C64FFC(v8, v7, &v124);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2080;
      v19 = sub_181C64FFC(0xD000000000000024, 0x8000000182BDB640, &v124);

      *(v13 + 24) = v19;
      _os_log_impl(&dword_181A37000, v11, v12, "%s %s %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v14, -1, -1);
      MEMORY[0x1865DF520](v13, -1, -1);
    }

    else
    {
    }

    goto LABEL_34;
  }

  if ((v6 & 2) != 0 && *(v1 + 1024) != ((*(a1 + 16) & 1) == 0))
  {
    v2 = 0xD000000000000016;
    v3 = *(v1 + 80);
    v20 = *(v1 + 88);

    sub_182AD3BA8();

    v124 = 0xD00000000000002BLL;
    v125 = 0x8000000182BDB5E0;
    v122 = v6;
    v21 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v21);

    v4 = 0xD00000000000002BLL;
    v6 = 0x8000000182BDB5E0;
    if (qword_1EA837248 == -1)
    {
LABEL_9:
      v22 = sub_182AD2698();
      __swift_project_value_buffer(v22, qword_1EA843418);

      v23 = sub_182AD2678();
      v24 = sub_182AD38B8();

      if (os_log_type_enabled(v23, v24))
      {
        v118 = v4;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v124 = v26;
        *v25 = 136315650;
        v27 = sub_182AD3BF8();
        v29 = sub_181C64FFC(v27, v28, &v124);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        v30 = sub_181C64FFC(v3, v20, &v124);

        *(v25 + 14) = v30;
        v2 = 0xD000000000000016;
        *(v25 + 22) = 2080;
        v31 = sub_181C64FFC(v118, v6, &v124);

        *(v25 + 24) = v31;
        _os_log_impl(&dword_181A37000, v23, v24, "%s %s %s", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v26, -1, -1);
        MEMORY[0x1865DF520](v25, -1, -1);
      }

      else
      {
      }

      v54 = *(v5 + 1144);
      v55 = *(v5 + 1152);
      *(v5 + 1144) = v2 + 10;
      *(v5 + 1152) = 0x8000000182BDB610;
      v56 = *(v5 + 1160);
      *(v5 + 1160) = 2;
      sub_182023268(v54, v55, v56);
      goto LABEL_34;
    }

LABEL_63:
    swift_once();
    goto LABEL_9;
  }

  v20 = v1 + 936;
  swift_beginAccess();
  v33 = *(v1 + 936);
  if (!*(v33 + 16) || (v34 = sub_18225BD68(), (v35 & 1) == 0))
  {
    swift_endAccess();
    v43 = sub_1820572A4(v6);
    if ((*(a1 + 40) & 1) != 0 && v43 >= 0x100u)
    {
      v44 = *(a1 + 24);
      if (v44 < 0)
      {
        __break(1u);
      }

      else
      {
        v45 = *(*(a1 + 32) + 16);
        v20 = v44 + v45;
        if (!__OFADD__(v44, v45))
        {
          v46 = *(v5 + 80);
          v47 = *(v5 + 88);
          swift_beginAccess();

          sub_18222EEF8(v46, v47, v6, v20);
          swift_endAccess();
          goto LABEL_41;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    if ((v43 & 1) == 0)
    {
LABEL_34:
      v42 = 0;
      return v42 & 1;
    }

    swift_beginAccess();
    v33 = *v20;
    if (!*(*v20 + 16) || (v34 = sub_18225BD68(), (v48 & 1) == 0))
    {
      swift_endAccess();
LABEL_42:
      v42 = 1;
      return v42 & 1;
    }
  }

  v36 = *(*(v33 + 56) + 8 * v34);
  swift_endAccess();
  swift_beginAccess();
  v37 = *(v5 + 40);
  if (!*(v37 + 16) || (v38 = sub_18224EEF0(v36), (v39 & 1) == 0))
  {
    v50 = *(v5 + 80);
    v49 = *(v5 + 88);

    sub_182AD3BA8();

    v122 = 0xD00000000000001FLL;
    v123 = 0x8000000182BDB5A0;
    if (v36)
    {
      v51 = sub_182AD2F38();
      v53 = v52;
    }

    else
    {
      v51 = 0x776F6C46206C6C41;
      v53 = 0xE900000000000073;
    }

    MEMORY[0x1865D9CA0](v51, v53);

    v58 = v122;
    v57 = v123;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v59 = sub_182AD2698();
    __swift_project_value_buffer(v59, qword_1EA843418);

    v60 = sub_182AD2678();
    v61 = sub_182AD38B8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v122 = v63;
      *v62 = 136315650;
      v64 = sub_182AD3BF8();
      v66 = sub_181C64FFC(v64, v65, &v122);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v67 = sub_181C64FFC(v50, v49, &v122);

      *(v62 + 14) = v67;
      *(v62 + 22) = 2080;
      v68 = sub_181C64FFC(v58, v57, &v122);

      *(v62 + 24) = v68;
      _os_log_impl(&dword_181A37000, v60, v61, "%s %s %s", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v63, -1, -1);
      MEMORY[0x1865DF520](v62, -1, -1);

      goto LABEL_42;
    }

LABEL_41:

    goto LABEL_42;
  }

  if (!*(*(*(v37 + 56) + 8 * v38) + 16))
  {

LABEL_46:
    v71 = *(v5 + 80);
    v70 = *(v5 + 88);
    v122 = 0;
    v123 = 0xE000000000000000;

    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BDAE40);
    if (v36)
    {
      v72 = sub_182AD2F38();
      v74 = v73;
    }

    else
    {
      v72 = 0x776F6C46206C6C41;
      v74 = 0xE900000000000073;
    }

    MEMORY[0x1865D9CA0](v72, v74);

    MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BDAE60);
    v76 = v122;
    v75 = v123;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v77 = sub_182AD2698();
    __swift_project_value_buffer(v77, qword_1EA843418);

    v78 = sub_182AD2678();
    v79 = sub_182AD38B8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v122 = v81;
      *v80 = 136315650;
      v82 = sub_182AD3BF8();
      v84 = sub_181C64FFC(v82, v83, &v122);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2080;
      v85 = sub_181C64FFC(v71, v70, &v122);

      *(v80 + 14) = v85;
      *(v80 + 22) = 2080;
      v86 = sub_181C64FFC(v76, v75, &v122);

      *(v80 + 24) = v86;
      _os_log_impl(&dword_181A37000, v78, v79, "%s %s %s", v80, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v81, -1, -1);
      MEMORY[0x1865DF520](v80, -1, -1);
    }

    else
    {
    }

    goto LABEL_42;
  }

  type metadata accessor for QUICStreamInstance();

  swift_unknownObjectRetain();
  v40 = swift_dynamicCastClass();
  if (!v40)
  {
    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  v41 = v40;
  if (!*(*(a1 + 32) + 16) && (*(a1 + 40) & 1) == 0)
  {
    v87 = *(v5 + 80);
    v88 = *(v5 + 88);
    v89 = qword_1EA837250;

    if (v89 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
    {
      v122 = 0;
      v123 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BDB5C0);
      v121 = 0;
      v90 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v90);

      MEMORY[0x1865D9CA0](0x2074657366666F20, 0xE800000000000000);
      v121 = *(a1 + 24);
      v91 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v91);

      MEMORY[0x1865D9CA0](0x206E696620, 0xE500000000000000);
      MEMORY[0x1865D9CA0](0x65736C6166, 0xE500000000000000);
      MEMORY[0x1865D9CA0](0x65727473206E6F20, 0xEB00000000206D61);
      v92 = *(v41 + 32);
      v93 = *(v41 + 40);

      MEMORY[0x1865D9CA0](v92, v93);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v94 = sub_182AD2698();
      __swift_project_value_buffer(v94, qword_1EA843418);
      v95 = swift_allocObject();
      *(v95 + 16) = "processStreamFrame(frame:)";
      *(v95 + 24) = 26;
      *(v95 + 32) = 2;
      v96 = swift_allocObject();
      *(v96 + 16) = sub_181F8C724;
      *(v96 + 24) = v95;
      v97 = swift_allocObject();
      *(v97 + 16) = v87;
      *(v97 + 24) = v88;
      v98 = swift_allocObject();
      *(v98 + 16) = 0;
      *(v98 + 24) = 0xE000000000000000;

      v99 = sub_182AD2678();
      v100 = sub_182AD38A8();
      v112 = swift_allocObject();
      *(v112 + 16) = 32;
      v113 = swift_allocObject();
      *(v113 + 16) = 8;
      v101 = swift_allocObject();
      *(v101 + 16) = sub_18206B168;
      *(v101 + 24) = v96;
      v102 = swift_allocObject();
      *(v102 + 16) = sub_181F8C718;
      *(v102 + 24) = v101;
      v111 = swift_allocObject();
      *(v111 + 16) = 32;
      v114 = swift_allocObject();
      *(v114 + 16) = 8;
      v103 = swift_allocObject();
      *(v103 + 16) = sub_181F8C720;
      *(v103 + 24) = v97;
      v104 = swift_allocObject();
      *(v104 + 16) = sub_181F8C718;
      *(v104 + 24) = v103;
      v115 = swift_allocObject();
      *(v115 + 16) = 32;
      v116 = swift_allocObject();
      *(v116 + 16) = 8;
      v105 = swift_allocObject();
      *(v105 + 16) = sub_181F8C720;
      *(v105 + 24) = v98;
      v106 = swift_allocObject();
      *(v106 + 16) = sub_181F8C718;
      *(v106 + 24) = v105;
      v117 = v106;
      v107 = v100;
      v108 = v99;
      if (os_log_type_enabled(v99, v100))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v119 = v110;
        v120 = 0;
        *v109 = 770;
        v121 = v109 + 2;
        v122 = sub_181F8C728;
        v123 = v112;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C728;
        v123 = v113;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C714;
        v123 = v102;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C728;
        v123 = v111;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C728;
        v123 = v114;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C714;
        v123 = v104;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C728;
        v123 = v115;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C728;
        v123 = v116;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        v122 = sub_181F8C714;
        v123 = v117;
        sub_181F73AE0(&v122, &v121, &v120, &v119);

        _os_log_impl(&dword_181A37000, v108, v107, "%s %s %s", v109, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v110, -1, -1);
        MEMORY[0x1865DF520](v109, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v42 = sub_182028028(v5, a1);

  swift_unknownObjectRelease();
  return v42 & 1;
}

uint64_t sub_182055194(uint64_t a1)
{
  v134 = *(a1 + 16);
  v135 = *(a1 + 32);
  v137 = *(a1 + 24);
  if ((v137 & 1) == 0)
  {
    if (*(a1 + 40))
    {
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v128 = v1;
          sub_182AD3BA8();

          v141 = 0xD000000000000025;
          v142 = 0x8000000182BDBCC0;
          v89 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v89);

          MEMORY[0x1865D9CA0](0x203A776F6C66202CLL, 0xE800000000000000);
          v143[0] = v134;
          v90 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v90);

          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v91 = sub_182AD2698();
          __swift_project_value_buffer(v91, qword_1EA843418);
          v92 = swift_allocObject();
          *(v92 + 16) = "processDatagramFrame(frame:)";
          *(v92 + 24) = 28;
          *(v92 + 32) = 2;
          v93 = swift_allocObject();
          *(v93 + 16) = sub_181F8C724;
          *(v93 + 24) = v92;
          v94 = swift_allocObject();
          *(v94 + 16) = 1564427099;
          *(v94 + 24) = 0xE400000000000000;
          v95 = swift_allocObject();
          *(v95 + 16) = 0xD000000000000025;
          *(v95 + 24) = 0x8000000182BDBCC0;

          v96 = sub_182AD2678();
          v97 = sub_182AD38A8();
          v11 = swift_allocObject();
          *(v11 + 16) = 32;
          v120 = swift_allocObject();
          *(v120 + 16) = 8;
          v98 = swift_allocObject();
          *(v98 + 16) = sub_18206B168;
          *(v98 + 24) = v93;
          v13 = swift_allocObject();
          *(v13 + 16) = sub_181F8C718;
          *(v13 + 24) = v98;
          v122 = swift_allocObject();
          *(v122 + 16) = 32;
          v124 = swift_allocObject();
          *(v124 + 16) = 8;
          v99 = swift_allocObject();
          *(v99 + 16) = sub_181F8C720;
          *(v99 + 24) = v94;
          v100 = swift_allocObject();
          *(v100 + 16) = sub_181F8C718;
          *(v100 + 24) = v99;
          v126 = v100;
          v131 = swift_allocObject();
          *(v131 + 16) = 32;
          v16 = swift_allocObject();
          *(v16 + 16) = 8;
          v101 = swift_allocObject();
          *(v101 + 16) = sub_181F8C720;
          *(v101 + 24) = v95;
          v18 = swift_allocObject();
          *(v18 + 16) = sub_181F8C718;
          *(v18 + 24) = v101;
          v19 = v97;
          v20 = v96;
          if (os_log_type_enabled(v96, v97))
          {
            goto LABEL_81;
          }

          goto LABEL_86;
        }

        goto LABEL_16;
      }

LABEL_31:
      v133 = 0;
      v21 = 1;
      goto LABEL_33;
    }

    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v128 = v1;
        v141 = 0;
        v142 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000025, 0x8000000182BDBCC0);
        v104 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v104);

        MEMORY[0x1865D9CA0](0x203A776F6C66202CLL, 0xE800000000000000);
        v105 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v105);

        MEMORY[0x1865D9CA0](0x7865746E6F63202CLL, 0xEB00000000203A74);
        v143[0] = v135;
        v106 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v106);

        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v107 = sub_182AD2698();
        __swift_project_value_buffer(v107, qword_1EA843418);
        v108 = swift_allocObject();
        *(v108 + 16) = "processDatagramFrame(frame:)";
        *(v108 + 24) = 28;
        *(v108 + 32) = 2;
        v109 = swift_allocObject();
        *(v109 + 16) = sub_181F8C724;
        *(v109 + 24) = v108;
        v110 = swift_allocObject();
        *(v110 + 16) = 1564427099;
        *(v110 + 24) = 0xE400000000000000;
        v111 = swift_allocObject();
        *(v111 + 16) = 0;
        *(v111 + 24) = 0xE000000000000000;

        v112 = sub_182AD2678();
        v113 = sub_182AD38A8();
        v31 = swift_allocObject();
        *(v31 + 16) = 32;
        v121 = swift_allocObject();
        *(v121 + 16) = 8;
        v114 = swift_allocObject();
        *(v114 + 16) = sub_18206B168;
        *(v114 + 24) = v109;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_181F8C718;
        *(v33 + 24) = v114;
        v123 = swift_allocObject();
        *(v123 + 16) = 32;
        v125 = swift_allocObject();
        *(v125 + 16) = 8;
        v115 = swift_allocObject();
        *(v115 + 16) = sub_181F8C720;
        *(v115 + 24) = v110;
        v116 = swift_allocObject();
        *(v116 + 16) = sub_181F8C718;
        *(v116 + 24) = v115;
        v127 = v116;
        v132 = swift_allocObject();
        *(v132 + 16) = 32;
        v36 = swift_allocObject();
        *(v36 + 16) = 8;
        v117 = swift_allocObject();
        *(v117 + 16) = sub_181F8C720;
        *(v117 + 24) = v111;
        v38 = swift_allocObject();
        *(v38 + 16) = sub_181F8C718;
        *(v38 + 24) = v117;
        v39 = v113;
        v40 = v112;
        if (os_log_type_enabled(v112, v113))
        {
          goto LABEL_85;
        }

        goto LABEL_88;
      }

LABEL_29:
      v21 = 0;
      goto LABEL_30;
    }

LABEL_32:
    v21 = 0;
    v133 = 0;
    goto LABEL_33;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v128 = v1;
        v141 = 0;
        v142 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000025, 0x8000000182BDBCC0);
        v22 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v22);

        MEMORY[0x1865D9CA0](0x7865746E6F63202CLL, 0xEB00000000203A74);
        v143[0] = v135;
        v23 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v23);

        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v24 = sub_182AD2698();
        __swift_project_value_buffer(v24, qword_1EA843418);
        v25 = swift_allocObject();
        *(v25 + 16) = "processDatagramFrame(frame:)";
        *(v25 + 24) = 28;
        *(v25 + 32) = 2;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_181F8C724;
        *(v26 + 24) = v25;
        v27 = swift_allocObject();
        *(v27 + 16) = 1564427099;
        *(v27 + 24) = 0xE400000000000000;
        v28 = swift_allocObject();
        *(v28 + 16) = 0;
        *(v28 + 24) = 0xE000000000000000;

        v29 = sub_182AD2678();
        v30 = sub_182AD38A8();
        v31 = swift_allocObject();
        *(v31 + 16) = 32;
        v121 = swift_allocObject();
        *(v121 + 16) = 8;
        v32 = swift_allocObject();
        *(v32 + 16) = sub_18206B168;
        *(v32 + 24) = v26;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_181F8C718;
        *(v33 + 24) = v32;
        v123 = swift_allocObject();
        *(v123 + 16) = 32;
        v125 = swift_allocObject();
        *(v125 + 16) = 8;
        v34 = swift_allocObject();
        *(v34 + 16) = sub_181F8C720;
        *(v34 + 24) = v27;
        v35 = swift_allocObject();
        *(v35 + 16) = sub_181F8C718;
        *(v35 + 24) = v34;
        v127 = v35;
        v132 = swift_allocObject();
        *(v132 + 16) = 32;
        v36 = swift_allocObject();
        *(v36 + 16) = 8;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_181F8C720;
        *(v37 + 24) = v28;
        v38 = swift_allocObject();
        *(v38 + 16) = sub_181F8C718;
        *(v38 + 24) = v37;
        v39 = v30;
        v40 = v29;
        if (os_log_type_enabled(v29, v30))
        {
LABEL_85:
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v139 = v119;
          v140[0] = 0;
          *v118 = 770;
          v143[0] = v118 + 2;
          v141 = sub_181F8C728;
          v142 = v31;
          v21 = 0;
          sub_181F73AE0(&v141, v143, v140, &v139);

          v141 = sub_181F8C728;
          v142 = v121;
          sub_181F73AE0(&v141, v143, v140, &v139);

          v141 = sub_181F8C714;
          v142 = v33;
          sub_181F73AE0(&v141, v143, v140, &v139);

          v141 = sub_181F8C728;
          v142 = v123;
          sub_181F73AE0(&v141, v143, v140, &v139);

          v141 = sub_181F8C728;
          v142 = v125;
          sub_181F73AE0(&v141, v143, v140, &v139);

          v141 = sub_181F8C714;
          v142 = v127;
          sub_181F73AE0(&v141, v143, v140, &v139);

          v141 = sub_181F8C728;
          v142 = v132;
          sub_181F73AE0(&v141, v143, v140, &v139);

          v141 = sub_181F8C728;
          v142 = v36;
          sub_181F73AE0(&v141, v143, v140, &v139);

          v141 = sub_181F8C714;
          v142 = v38;
          sub_181F73AE0(&v141, v143, v140, &v139);

          _os_log_impl(&dword_181A37000, v40, v39, "%s %s %s", v118, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v119, -1, -1);
          MEMORY[0x1865DF520](v118, -1, -1);

LABEL_89:
          v133 = 1;
          v1 = v128;
          goto LABEL_33;
        }

LABEL_88:

        v21 = 0;
        goto LABEL_89;
      }

      goto LABEL_29;
    }

    goto LABEL_32;
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1)
  {
    goto LABEL_31;
  }

  if (__nwlog_is_datapath_logging_enabled())
  {
    v128 = v1;
    sub_182AD3BA8();

    v141 = 0xD000000000000025;
    v142 = 0x8000000182BDBCC0;
    v143[0] = *(*(a1 + 48) + 16);
    v3 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v3);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA843418);
    v5 = swift_allocObject();
    *(v5 + 16) = "processDatagramFrame(frame:)";
    *(v5 + 24) = 28;
    *(v5 + 32) = 2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_181F8C724;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = 1564427099;
    *(v7 + 24) = 0xE400000000000000;
    v8 = swift_allocObject();
    *(v8 + 16) = 0xD000000000000025;
    *(v8 + 24) = 0x8000000182BDBCC0;

    v9 = sub_182AD2678();
    v10 = sub_182AD38A8();
    v11 = swift_allocObject();
    *(v11 + 16) = 32;
    v120 = swift_allocObject();
    *(v120 + 16) = 8;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_18206B168;
    *(v12 + 24) = v6;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_181F8C718;
    *(v13 + 24) = v12;
    v122 = swift_allocObject();
    *(v122 + 16) = 32;
    v124 = swift_allocObject();
    *(v124 + 16) = 8;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_181F8C720;
    *(v14 + 24) = v7;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C718;
    *(v15 + 24) = v14;
    v126 = v15;
    v131 = swift_allocObject();
    *(v131 + 16) = 32;
    v16 = swift_allocObject();
    *(v16 + 16) = 8;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C720;
    *(v17 + 24) = v8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C718;
    *(v18 + 24) = v17;
    v19 = v10;
    v20 = v9;
    if (os_log_type_enabled(v9, v10))
    {
LABEL_81:
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v139 = v103;
      v140[0] = 0;
      *v102 = 770;
      v143[0] = v102 + 2;
      v141 = sub_181F8C728;
      v142 = v11;
      sub_181F73AE0(&v141, v143, v140, &v139);

      v141 = sub_181F8C728;
      v142 = v120;
      sub_181F73AE0(&v141, v143, v140, &v139);

      v141 = sub_181F8C714;
      v142 = v13;
      sub_181F73AE0(&v141, v143, v140, &v139);

      v141 = sub_181F8C728;
      v142 = v122;
      sub_181F73AE0(&v141, v143, v140, &v139);

      v141 = sub_181F8C728;
      v142 = v124;
      sub_181F73AE0(&v141, v143, v140, &v139);

      v141 = sub_181F8C714;
      v142 = v126;
      sub_181F73AE0(&v141, v143, v140, &v139);

      v141 = sub_181F8C728;
      v142 = v131;
      sub_181F73AE0(&v141, v143, v140, &v139);

      v141 = sub_181F8C728;
      v142 = v16;
      sub_181F73AE0(&v141, v143, v140, &v139);

      v141 = sub_181F8C714;
      v142 = v18;
      sub_181F73AE0(&v141, v143, v140, &v139);

      _os_log_impl(&dword_181A37000, v20, v19, "%s %s %s", v102, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v103, -1, -1);
      MEMORY[0x1865DF520](v102, -1, -1);

LABEL_87:
      v21 = 1;
      goto LABEL_89;
    }

LABEL_86:

    goto LABEL_87;
  }

LABEL_16:
  v21 = 1;
LABEL_30:
  v133 = 1;
LABEL_33:
  swift_beginAccess();
  v41 = v1[5];
  v42 = v41 + 64;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v41 + 64);
  v46 = (v43 + 63) >> 6;

  v47 = 0;
  v48 = v21;
  while (v45)
  {
LABEL_36:
    v49 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v50 = v49 | (v47 << 6);
    if (*(*(*(v41 + 56) + 8 * v50) + 16))
    {
      v129 = *(*(v41 + 48) + 8 * v50);
      type metadata accessor for QUICDatagramFlow();
      swift_unknownObjectRetain();
      v52 = swift_dynamicCastClass();
      if (!v52)
      {
        goto LABEL_52;
      }

      if (*(v52 + 40))
      {
        if ((v21 & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_45:
        v53 = *(v52 + 16);
        v54 = *(v52 + 24);
        swift_unknownObjectRelease();
        if (v54)
        {
          v48 = v21;
          if (v137)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v48 = v21;
          if ((v137 & 1) == 0)
          {
            v48 = v21;
            if (v53 == v134)
            {
LABEL_55:
              v55 = v129;
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if (v21)
        {
          v48 = 1;
          goto LABEL_52;
        }

        if (*(v52 + 32) == v135)
        {
          goto LABEL_45;
        }

LABEL_51:
        v48 = 0;
LABEL_52:
        swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v51 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v51 >= v46)
    {
      break;
    }

    v45 = *(v42 + 8 * v51);
    ++v47;
    if (v45)
    {
      v47 = v51;
      goto LABEL_36;
    }
  }

  v57 = v1;
  v58 = sub_182169080(v56);
  v42 = v1[10];
  v21 = v1[11];
  if (v59)
  {
    v60 = qword_1EA837248;

    if (v60 == -1)
    {
LABEL_58:
      v61 = sub_182AD2698();
      __swift_project_value_buffer(v61, qword_1EA843418);

      v62 = sub_182AD2678();
      v63 = sub_182AD38B8();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v141 = v65;
        *v64 = 136315650;
        v66 = sub_182AD3BF8();
        v68 = sub_181C64FFC(v66, v67, &v141);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2080;
        v69 = sub_181C64FFC(v42, v21, &v141);

        *(v64 + 14) = v69;
        *(v64 + 22) = 2080;
        *(v64 + 24) = sub_181C64FFC(0xD000000000000022, 0x8000000182BDBC60, &v141);
        _os_log_impl(&dword_181A37000, v62, v63, "%s %s %s", v64, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v65, -1, -1);
        MEMORY[0x1865DF520](v64, -1, -1);
      }

      else
      {
      }

      return 0;
    }

LABEL_75:
    swift_once();
    goto LABEL_58;
  }

  v55 = v58;
  type metadata accessor for QUICDatagramFlow();
  swift_allocObject();

  v70 = sub_181F7D7A8(v134, v137, v135, v48 & 1, v42, v21);
  sub_182168DE4(v70, v55);
  v72 = *(v70 + 48);
  v71 = *(v70 + 56);
  v73 = qword_1EA837250;

  if (v73 == -1)
  {
    if (v133)
    {
      goto LABEL_62;
    }

LABEL_69:
  }

  else
  {
    swift_once();
    if (!v133)
    {
      goto LABEL_69;
    }

LABEL_62:
    v141 = 0;
    v142 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BDBC90);
    v140[0] = v55;
    sub_182AD3E18();
    v74 = v141;
    v75 = v142;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v76 = sub_182AD2698();
    __swift_project_value_buffer(v76, qword_1EA843418);

    v77 = sub_182AD2678();
    v78 = sub_182AD38A8();

    if (!os_log_type_enabled(v77, v78))
    {

      goto LABEL_69;
    }

    v130 = v55;
    v79 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v141 = v138;
    *v79 = 136315650;
    v80 = sub_182AD3BF8();
    v136 = v74;
    v82 = sub_181C64FFC(v80, v81, &v141);

    *(v79 + 4) = v82;
    *(v79 + 12) = 2080;
    v83 = sub_181C64FFC(v72, v71, &v141);

    *(v79 + 14) = v83;
    *(v79 + 22) = 2080;
    v84 = sub_181C64FFC(v136, v75, &v141);

    *(v79 + 24) = v84;
    _os_log_impl(&dword_181A37000, v77, v78, "%s %s %s", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v138, -1, -1);
    v85 = v79;
    v55 = v130;
    MEMORY[0x1865DF520](v85, -1, -1);
  }

  swift_beginAccess();
  if (*(v57 + 139) == 9)
  {
    sub_18216AAA8(v55);
  }

LABEL_72:

  Frame.init(copyBuffer:)(v87, &v141);
  v86 = 1;
  sub_1821716E4(&v141, v55, 1, 0);
  return v86;
}

uint64_t sub_1820572A4(unint64_t a1)
{
  v2 = v1;
  if ((a1 & 2) != 0)
  {
    swift_beginAccess();
    v8 = v1[31];
    v142 = v1[30];
    v143 = v8;
    v9 = v1[29];
    v140 = v1[28];
    v141 = v9;
    v10 = v1[27];
    *&v139[16] = v1[26];
    *&v139[32] = v10;
    v7 = v1[24];
    v6 = v1[25];
  }

  else
  {
    swift_beginAccess();
    v3 = v1[39];
    v142 = v1[38];
    v143 = v3;
    v4 = v1[37];
    v140 = v1[36];
    v141 = v4;
    v5 = v1[35];
    *&v139[16] = v1[34];
    *&v139[32] = v5;
    v7 = v1[32];
    v6 = v1[33];
  }

  v138 = v7;
  *v139 = v6;
  v118 = *(&v142 + 1);
  v120 = *(&v143 + 1);
  LODWORD(v117) = v143;
  v115 = *(&v141 + 1);
  v11 = v142;
  v12 = *(&v140 + 1);
  v13 = v141;
  v14 = *&v139[40];
  v15 = v140;
  v111 = *&v139[8];
  v113 = *&v139[24];
  v16 = v6;
  v17 = v7;
  sub_18206ADDC(&v138, &v132);
  v132 = v17;
  v133[0] = v16;
  *&v133[8] = v111;
  *&v133[24] = v113;
  *&v133[40] = v14;
  LOBYTE(v134) = v15;
  *(&v134 + 1) = v12;
  LOBYTE(v135) = v13;
  *(&v135 + 1) = v115;
  LOBYTE(v136) = v11;
  *(&v136 + 1) = v118;
  LOBYTE(v137) = v117;
  *(&v137 + 1) = v120;
  v142 = v136;
  v143 = v137;
  v140 = v134;
  v141 = v135;
  *&v139[16] = *&v133[16];
  *&v139[32] = *&v133[32];
  v138 = v17;
  *v139 = *v133;
  v18 = *(v2 + 1024);
  v19 = *(v2 + 10);
  v20 = *(v2 + 11);

  v21 = sub_1820248B8(a1, v18, v19, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = ~v26;

  if (v28)
  {
    sub_18206A234(&v132);
    v29 = *(v2 + 143);
    v30 = *(v2 + 144);
    *(v2 + 143) = v23;
    *(v2 + 144) = v25;
    v31 = *(v2 + 1160);
    *(v2 + 1160) = v27;
    sub_182023268(v29, v30, v31);
LABEL_6:
    v32 = 0;
    v33 = 0;
    return v33 | v32;
  }

  if ((v21 & 1) == 0)
  {
    v33 = v21 & 0x100;
    sub_18206A234(&v132);
    v32 = 0;
    return v33 | v32;
  }

  if (v13)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_18206A234(&v132);
  v20 = a1;
  if (v12 > a1)
  {
    goto LABEL_6;
  }

  v16 = *(v2 + 10);
  v21 = *(v2 + 11);
  v34 = qword_1EA837250;

  if (v34 != -1)
  {
LABEL_49:
    swift_once();
  }

  v117 = v2;
  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v126 = v12;
    v127 = v20;
    v128 = xmmword_182AE8BA0;
    v129 = 0;
    v130 = v12;
    v131 = 0;
    swift_beginAccess();
    v35 = sub_1820625E8();
    if ((v36 & 1) == 0)
    {
      v16 = v35;
      while (1)
      {
        v51 = sub_182169080(v35);
        if (v52)
        {
          break;
        }

        v53 = sub_1820621FC(v51, v16);
        if (*(v53 + 24))
        {
          goto LABEL_57;
        }

        v12 = v53;
        v54 = *(v2 + 1024);
        v55 = *(v2 + 36);
        v56 = sub_181F9E4E8(v54, *(v2 + 35), *(v53 + 16));
        if (*(v12 + 24))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v57 = v56;
        v58 = sub_181F9E654(v54, v55, *(v12 + 16));
        if ((v58 | v57) < 0)
        {
          __break(1u);
          goto LABEL_49;
        }

        v59 = v58;

        sub_18220EA24(v57, v59);

        sub_18202E5D8();
        v60 = *(v2 + 11);
        v120 = *(v2 + 10);
        v123 = 0;
        v124 = 0xE000000000000000;

        sub_182AD3BA8();

        if (v16 == v20)
        {
          v122 = v20;
          v123 = 0xD000000000000018;
          v124 = 0x8000000182BDB6E0;
          v61 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v61);
        }

        else
        {
          v122 = v16;
          v123 = 0xD000000000000018;
          v124 = 0x8000000182BDB6E0;
          v62 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v62);

          MEMORY[0x1865D9CA0](0x666F2074756F2820, 0xEF29726564726F20);
        }

        v63 = v123;
        v64 = v124;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v65 = sub_182AD2698();
        __swift_project_value_buffer(v65, qword_1EA843418);

        v66 = sub_182AD2678();
        v21 = sub_182AD3898();

        if (os_log_type_enabled(v66, v21))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v123 = v68;
          *v67 = 136315650;
          v69 = sub_182AD3BF8();
          v71 = sub_181C64FFC(v69, v70, &v123);
          v2 = v117;

          *(v67 + 4) = v71;
          *(v67 + 12) = 2080;
          v72 = sub_181C64FFC(v120, v60, &v123);

          *(v67 + 14) = v72;
          *(v67 + 22) = 2080;
          v73 = sub_181C64FFC(v63, v64, &v123);

          *(v67 + 24) = v73;
          _os_log_impl(&dword_181A37000, v66, v21, "%s %s %s", v67, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v68, -1, -1);
          v74 = v67;
          v20 = a1;
          MEMORY[0x1865DF520](v74, -1, -1);
        }

        else
        {
        }

        v35 = sub_1820625E8();
        v16 = v35;
        if (v50)
        {
          goto LABEL_15;
        }
      }

      v76 = *(v2 + 10);
      v75 = *(v2 + 11);
      v123 = 0;
      v124 = 0xE000000000000000;

      sub_182AD3BA8();

      v123 = 0xD000000000000021;
      v124 = 0x8000000182BDB6B0;
      v122 = v16;
      v77 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v77);

      v79 = v123;
      v78 = v124;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v80 = sub_182AD2698();
      __swift_project_value_buffer(v80, qword_1EA843418);

      v81 = sub_182AD2678();
      v82 = sub_182AD38B8();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v123 = v84;
        *v83 = 136315650;
        v85 = sub_182AD3BF8();
        v87 = sub_181C64FFC(v85, v86, &v123);

        *(v83 + 4) = v87;
        *(v83 + 12) = 2080;
        v88 = sub_181C64FFC(v76, v75, &v123);

        *(v83 + 14) = v88;
        *(v83 + 22) = 2080;
        v89 = sub_181C64FFC(v79, v78, &v123);

        *(v83 + 24) = v89;
        _os_log_impl(&dword_181A37000, v81, v82, "%s %s %s", v83, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v84, -1, -1);
        MEMORY[0x1865DF520](v83, -1, -1);

        goto LABEL_46;
      }

      goto LABEL_45;
    }

LABEL_15:
    v37 = v20 + 4;
    if (v20 < 0xFFFFFFFFFFFFFFFCLL)
    {
      break;
    }

    __break(1u);
LABEL_51:
    v126 = 0;
    v127 = 0xE000000000000000;
    sub_182AD3BA8();

    v126 = 0xD00000000000001ELL;
    v127 = 0x8000000182BDB700;
    v125[0] = v20;
    v91 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v91);

    MEMORY[0x1865D9CA0](544175136, 0xE400000000000000);
    v125[0] = v12;
    v92 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v92);

    v20 = v126;
    v120 = v127;
    if (qword_1EA837248 != -1)
    {
LABEL_59:
      swift_once();
    }

    v93 = sub_182AD2698();
    __swift_project_value_buffer(v93, qword_1EA843418);
    v94 = swift_allocObject();
    *(v94 + 16) = "createInboundStreams(streamID:)";
    *(v94 + 24) = 31;
    *(v94 + 32) = 2;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_181F8C724;
    *(v95 + 24) = v94;
    v96 = swift_allocObject();
    *(v96 + 16) = v16;
    *(v96 + 24) = v21;
    v97 = swift_allocObject();
    *(v97 + 16) = v20;
    *(v97 + 24) = v120;

    v98 = sub_182AD2678();
    v16 = sub_182AD38A8();
    v110 = swift_allocObject();
    *(v110 + 16) = 32;
    v112 = swift_allocObject();
    *(v112 + 16) = 8;
    v99 = swift_allocObject();
    *(v99 + 16) = sub_18206B168;
    *(v99 + 24) = v95;
    v100 = swift_allocObject();
    *(v100 + 16) = sub_181F8C718;
    *(v100 + 24) = v99;
    v109 = v100;
    v101 = swift_allocObject();
    *(v101 + 16) = 32;
    v114 = swift_allocObject();
    *(v114 + 16) = 8;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_181F8C720;
    *(v102 + 24) = v96;
    v103 = swift_allocObject();
    *(v103 + 16) = sub_181F8C718;
    *(v103 + 24) = v102;
    v116 = swift_allocObject();
    *(v116 + 16) = 32;
    v119 = swift_allocObject();
    *(v119 + 16) = 8;
    v104 = swift_allocObject();
    *(v104 + 16) = sub_181F8C720;
    *(v104 + 24) = v97;
    v105 = swift_allocObject();
    *(v105 + 16) = sub_181F8C718;
    *(v105 + 24) = v104;
    v108 = v16;
    if (os_log_type_enabled(v98, v16))
    {
      v16 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v122 = v106;
      v123 = 0;
      *v16 = 770;
      v107 = v106;
      v125[0] = v16 + 2;
      v126 = sub_181F8C728;
      v127 = v110;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C728;
      v127 = v112;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C714;
      v127 = v109;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C728;
      v127 = v101;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C728;
      v127 = v114;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C714;
      v127 = v103;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C728;
      v127 = v116;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C728;
      v127 = v119;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      v126 = sub_181F8C714;
      v127 = v105;
      sub_181F73AE0(&v126, v125, &v123, &v122);

      _os_log_impl(&dword_181A37000, v98, v108, "%s %s %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v107, -1, -1);
      MEMORY[0x1865DF520](v16, -1, -1);
    }

    else
    {
    }

    v2 = v117;
    v20 = a1;
  }

  if (v37 >> 62)
  {
    v39 = *(v2 + 10);
    v38 = *(v2 + 11);
    v40 = qword_1EA837248;

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = sub_182AD2698();
    __swift_project_value_buffer(v41, qword_1EA843418);

    v42 = sub_182AD2678();
    v43 = sub_182AD38B8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v126 = v45;
      *v44 = 136315650;
      v46 = sub_182AD3BF8();
      v48 = sub_181C64FFC(v46, v47, &v126);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v49 = sub_181C64FFC(v39, v38, &v126);

      *(v44 + 14) = v49;
      *(v44 + 22) = 2080;
      *(v44 + 24) = sub_181C64FFC(0xD000000000000019, 0x8000000182BDB690, &v126);
      _os_log_impl(&dword_181A37000, v42, v43, "%s %s %s", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v45, -1, -1);
      MEMORY[0x1865DF520](v44, -1, -1);

LABEL_46:
      v33 = 0;
      v32 = 1;
      return v33 | v32;
    }

LABEL_45:

    goto LABEL_46;
  }

  v32 = 1;
  swift_beginAccess();
  v33 = 0;
  if ((v20 & 2) != 0)
  {
    *(v2 + 57) = v37;
    *(v2 + 464) = 0;
  }

  else
  {
    *(v2 + 73) = v37;
    *(v2 + 592) = 0;
  }

  return v33 | v32;
}

uint64_t sub_1820584AC(uint64_t a1, uint64_t a2, uint8_t *a3)
{
  v5 = *(v3 + 144);
  if (*(v5 + 32) < a3)
  {
    *(v5 + 32) = a3;
    v7 = *(v3 + 80);
    v6 = *(v3 + 88);
    v8 = qword_1EA837250;

    if (v8 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v123 = v3;
        sub_182AD3BA8();

        strcpy(v129, "MAX_DATA was ");
        HIWORD(v129[1]) = -4864;
        v21 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v21);

        MEMORY[0x1865D9CA0](0x776F6E207369202CLL, 0xE900000000000020);
        v128 = a3;
        v22 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v22);

        v23 = v129[0];
        v24 = v129[1];
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v25 = sub_182AD2698();
        __swift_project_value_buffer(v25, qword_1EA843418);
        v26 = swift_allocObject();
        *(v26 + 16) = "processMaxData(frame:)";
        *(v26 + 24) = 22;
        *(v26 + 32) = 2;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_181F8C724;
        *(v27 + 24) = v26;
        v28 = swift_allocObject();
        *(v28 + 16) = v7;
        *(v28 + 24) = v6;
        v29 = swift_allocObject();
        *(v29 + 16) = v23;
        *(v29 + 24) = v24;

        v30 = sub_182AD2678();
        v31 = sub_182AD38A8();
        v96 = swift_allocObject();
        *(v96 + 16) = 32;
        v100 = swift_allocObject();
        *(v100 + 16) = 8;
        v32 = swift_allocObject();
        *(v32 + 16) = sub_18206B168;
        *(v32 + 24) = v27;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_181F8C718;
        *(v33 + 24) = v32;
        v104 = swift_allocObject();
        *(v104 + 16) = 32;
        v108 = swift_allocObject();
        *(v108 + 16) = 8;
        v34 = swift_allocObject();
        *(v34 + 16) = sub_181F8C720;
        *(v34 + 24) = v28;
        v35 = swift_allocObject();
        *(v35 + 16) = sub_181F8C718;
        *(v35 + 24) = v34;
        v112 = swift_allocObject();
        *(v112 + 16) = 32;
        v116 = swift_allocObject();
        *(v116 + 16) = 8;
        v36 = swift_allocObject();
        *(v36 + 16) = sub_181F8C720;
        *(v36 + 24) = v29;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_181F8C718;
        *(v37 + 24) = v36;
        v38 = v31;
        if (os_log_type_enabled(v30, v31))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v126 = v40;
          v127 = 0;
          *v39 = 770;
          v95 = v40;
          v128 = v39 + 2;
          v129[0] = sub_181F8C728;
          v129[1] = v96;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C728;
          v129[1] = v100;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C714;
          v129[1] = v33;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C728;
          v129[1] = v104;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C728;
          v129[1] = v108;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C714;
          v129[1] = v35;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C728;
          v129[1] = v112;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C728;
          v129[1] = v116;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          v129[0] = sub_181F8C714;
          v129[1] = v37;
          sub_181F73AE0(v129, &v128, &v127, &v126);

          _os_log_impl(&dword_181A37000, v30, v38, "%s %s %s", v39, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v95, -1, -1);
          MEMORY[0x1865DF520](v39, -1, -1);
        }

        else
        {
        }

        v3 = v123;
      }

      else
      {
      }

      if (*(*(v3 + 144) + 32) >= *(*(v3 + 144) + 48))
      {
        v10 = *(v3 + 80);
        v9 = *(v3 + 88);

        if (__nwlog_is_datapath_logging_enabled())
        {
          v124 = v3;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v59 = sub_182AD2698();
          __swift_project_value_buffer(v59, qword_1EA843418);
          v60 = swift_allocObject();
          *(v60 + 16) = "processMaxData(frame:)";
          *(v60 + 24) = 22;
          *(v60 + 32) = 2;
          v61 = swift_allocObject();
          *(v61 + 16) = sub_181F8C724;
          *(v61 + 24) = v60;
          v62 = swift_allocObject();
          *(v62 + 16) = v10;
          *(v62 + 24) = v9;
          v63 = swift_allocObject();
          *(v63 + 16) = 0xD000000000000023;
          *(v63 + 24) = 0x8000000182BDB790;

          v64 = sub_182AD2678();
          v65 = sub_182AD38A8();
          v106 = swift_allocObject();
          *(v106 + 16) = 32;
          v110 = swift_allocObject();
          *(v110 + 16) = 8;
          v66 = swift_allocObject();
          *(v66 + 16) = sub_18206B168;
          *(v66 + 24) = v61;
          v67 = swift_allocObject();
          *(v67 + 16) = sub_181F8C718;
          *(v67 + 24) = v66;
          v114 = swift_allocObject();
          *(v114 + 16) = 32;
          v118 = swift_allocObject();
          *(v118 + 16) = 8;
          v68 = swift_allocObject();
          *(v68 + 16) = sub_181F8C720;
          *(v68 + 24) = v62;
          v69 = swift_allocObject();
          *(v69 + 16) = sub_181F8C718;
          *(v69 + 24) = v68;
          v102 = swift_allocObject();
          *(v102 + 16) = 32;
          v121 = swift_allocObject();
          *(v121 + 16) = 8;
          v70 = swift_allocObject();
          *(v70 + 16) = sub_181F8C720;
          *(v70 + 24) = v63;
          v71 = swift_allocObject();
          *(v71 + 16) = sub_181F8C718;
          *(v71 + 24) = v70;
          v72 = v65;
          v73 = v65;
          v74 = v64;
          if (os_log_type_enabled(v64, v73))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v126 = v76;
            v127 = 0;
            *v75 = 770;
            v98 = v76;
            v128 = v75 + 2;
            v129[0] = sub_181F8C728;
            v129[1] = v106;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v110;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v67;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v114;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v118;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v69;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v102;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v121;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v71;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            _os_log_impl(&dword_181A37000, v74, v72, "%s %s %s", v75, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v98, -1, -1);
            MEMORY[0x1865DF520](v75, -1, -1);
          }

          else
          {
          }

          v3 = v124;
        }

        else
        {
        }

        v11 = (v3 + 1026);
        if ((*(v3 + 1026) & 1) == 0)
        {
          goto LABEL_22;
        }

        v13 = *(v3 + 80);
        v12 = *(v3 + 88);

        if (__nwlog_is_datapath_logging_enabled())
        {
          v125 = v3;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v77 = sub_182AD2698();
          __swift_project_value_buffer(v77, qword_1EA843418);
          v78 = swift_allocObject();
          *(v78 + 16) = "processMaxData(frame:)";
          *(v78 + 24) = 22;
          *(v78 + 32) = 2;
          v79 = swift_allocObject();
          *(v79 + 16) = sub_181F8C724;
          *(v79 + 24) = v78;
          v80 = swift_allocObject();
          *(v80 + 16) = v13;
          *(v80 + 24) = v12;
          v81 = swift_allocObject();
          *(v81 + 16) = 0x656B636F6C626E75;
          *(v81 + 24) = 0xE900000000000064;

          v82 = sub_182AD2678();
          v83 = sub_182AD38A8();
          v107 = swift_allocObject();
          *(v107 + 16) = 32;
          v111 = swift_allocObject();
          *(v111 + 16) = 8;
          v84 = swift_allocObject();
          *(v84 + 16) = sub_18206B168;
          *(v84 + 24) = v79;
          v85 = swift_allocObject();
          *(v85 + 16) = sub_181F8C718;
          *(v85 + 24) = v84;
          v115 = swift_allocObject();
          *(v115 + 16) = 32;
          v119 = swift_allocObject();
          *(v119 + 16) = 8;
          v86 = swift_allocObject();
          *(v86 + 16) = sub_181F8C720;
          *(v86 + 24) = v80;
          v87 = swift_allocObject();
          *(v87 + 16) = sub_181F8C718;
          *(v87 + 24) = v86;
          v103 = swift_allocObject();
          *(v103 + 16) = 32;
          v122 = swift_allocObject();
          *(v122 + 16) = 8;
          v88 = swift_allocObject();
          *(v88 + 16) = sub_181F8C720;
          *(v88 + 24) = v81;
          v89 = swift_allocObject();
          *(v89 + 16) = sub_181F8C718;
          *(v89 + 24) = v88;
          v90 = v83;
          v91 = v83;
          v92 = v82;
          if (os_log_type_enabled(v82, v91))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v126 = v94;
            v127 = 0;
            *v93 = 770;
            v99 = v94;
            v128 = v93 + 2;
            v129[0] = sub_181F8C728;
            v129[1] = v107;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v111;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v85;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v115;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v119;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v87;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v103;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C728;
            v129[1] = v122;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            v129[0] = sub_181F8C714;
            v129[1] = v89;
            sub_181F73AE0(v129, &v128, &v127, &v126);

            _os_log_impl(&dword_181A37000, v92, v90, "%s %s %s", v93, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v99, -1, -1);
            MEMORY[0x1865DF520](v93, -1, -1);
          }

          else
          {
          }

          v3 = v125;
        }

        else
        {
        }

        goto LABEL_21;
      }
    }

    else
    {

      if (*(*(v3 + 144) + 32) >= *(*(v3 + 144) + 48))
      {
        v11 = (v3 + 1026);
        if ((*(v3 + 1026) & 1) == 0)
        {
LABEL_22:
          *v11 = 0;
          return 1;
        }

LABEL_21:
        *(v3 + 1123) = 1;
        goto LABEL_22;
      }
    }

    v18 = *(v3 + 1144);
    v19 = *(v3 + 1152);
    *(v3 + 1144) = 0xD000000000000028;
    *(v3 + 1152) = 0x8000000182BDB7C0;
    v20 = *(v3 + 1160);
    *(v3 + 1160) = 0;
    sub_182023268(v18, v19, v20);
    return 0;
  }

  v15 = *(v3 + 80);
  v14 = *(v3 + 88);
  v16 = qword_1EA837250;

  if (v16 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
  {
LABEL_17:

    return 0;
  }

  sub_182AD3BA8();

  v129[0] = 0xD00000000000001ALL;
  v129[1] = 0x8000000182BDB770;
  v128 = a3;
  v41 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v41);

  MEMORY[0x1865D9CA0](0x73697865203D3C20, 0xED000020676E6974);
  v128 = *(*(v3 + 144) + 32);
  v42 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v42);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v43 = sub_182AD2698();
  __swift_project_value_buffer(v43, qword_1EA843418);
  v44 = swift_allocObject();
  *(v44 + 16) = "processMaxData(frame:)";
  *(v44 + 24) = 22;
  *(v44 + 32) = 2;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_181F8C724;
  *(v45 + 24) = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = v15;
  *(v46 + 24) = v14;
  v47 = swift_allocObject();
  *(v47 + 16) = 0xD00000000000001ALL;
  *(v47 + 24) = 0x8000000182BDB770;

  v48 = sub_182AD2678();
  v49 = sub_182AD38A8();
  v105 = swift_allocObject();
  *(v105 + 16) = 32;
  v109 = swift_allocObject();
  *(v109 + 16) = 8;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_18206B168;
  *(v50 + 24) = v45;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_181F8C718;
  *(v51 + 24) = v50;
  v113 = swift_allocObject();
  *(v113 + 16) = 32;
  v117 = swift_allocObject();
  *(v117 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_181F8C720;
  *(v52 + 24) = v46;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_181F8C718;
  *(v53 + 24) = v52;
  v101 = swift_allocObject();
  *(v101 + 16) = 32;
  v120 = swift_allocObject();
  *(v120 + 16) = 8;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_181F8C720;
  *(v54 + 24) = v47;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_181F8C718;
  *(v55 + 24) = v54;
  v56 = v48;
  if (!os_log_type_enabled(v48, v49))
  {

    goto LABEL_17;
  }

  v57 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  v126 = v58;
  v127 = 0;
  *v57 = 770;
  v97 = v58;
  v128 = v57 + 2;
  v129[0] = sub_181F8C728;
  v129[1] = v105;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C728;
  v129[1] = v109;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C714;
  v129[1] = v51;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C728;
  v129[1] = v113;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C728;
  v129[1] = v117;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C714;
  v129[1] = v53;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C728;
  v129[1] = v101;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C728;
  v129[1] = v120;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  v129[0] = sub_181F8C714;
  v129[1] = v55;
  sub_181F73AE0(v129, &v128, &v127, &v126);

  _os_log_impl(&dword_181A37000, v56, v49, "%s %s %s", v57, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v97, -1, -1);
  MEMORY[0x1865DF520](v57, -1, -1);

  return 0;
}