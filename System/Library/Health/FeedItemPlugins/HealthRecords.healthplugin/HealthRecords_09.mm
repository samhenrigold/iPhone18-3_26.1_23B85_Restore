uint64_t sub_29D58ED94@<X0>(uint64_t *a1@<X1>, const char *a2@<X2>, uint64_t *a3@<X8>)
{
  v37 = a2;
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C2378(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B371C();
  v38 = *(v15 - 8);
  v39 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36CC();

  v19 = sub_29D5B370C();
  v20 = sub_29D5B427C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    v36 = v10;
    v34 = v23;
    *v22 = 136446210;
    v40 = *a1;
    v41 = v23;
    sub_29D5967F8();
    v24 = sub_29D5B3E7C();
    v26 = v11;
    v27 = a3;
    v28 = sub_29D501890(v24, v25, &v41);

    *(v22 + 4) = v28;
    a3 = v27;
    v11 = v26;
    _os_log_impl(&dword_29D48C000, v19, v20, v37, v22, 0xCu);
    v29 = v34;
    sub_29D48F668(v34);
    v10 = v36;
    MEMORY[0x29ED5FB80](v29, -1, -1);
    v30 = v22;
    v14 = v35;
    MEMORY[0x29ED5FB80](v30, -1, -1);
  }

  (*(v38 + 8))(v18, v39);
  sub_29D5B0DAC();
  v31 = sub_29D5B0E6C();
  (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
  sub_29D5B3A2C();
  sub_29D597120(&qword_2A17A3DD8, sub_29D4C2378, MEMORY[0x29EDB8AB8]);
  v32 = sub_29D5B3B1C();
  result = (*(v11 + 8))(v14, v10);
  *a3 = v32;
  return result;
}

uint64_t sub_29D58F12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B0E6C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v26 - v11;
  sub_29D4D2828(0);
  v14 = v13 - 8;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for AccountNewRecordsData(0) + 24);
  v19 = *(v14 + 56);
  sub_29D59683C(a1, v17, sub_29D4B4C4C);
  sub_29D59683C(a2 + v18, &v17[v19], sub_29D4B4C4C);
  v20 = *(v5 + 48);
  LODWORD(a2) = v20(v17, 1, v4);
  v21 = v20(&v17[v19], 1, v4);
  if (a2 == 1)
  {
    if (v21 == 1)
    {
      v22 = 0;
    }

    else
    {
      sub_29D597004(&v17[v19], sub_29D4B4C4C);
      v22 = 1;
    }
  }

  else if (v21 == 1)
  {
    (*(v5 + 8))(v17, v4);
    v22 = 0;
  }

  else
  {
    v23 = *(v5 + 32);
    v23(v12, v17, v4);
    v23(v9, &v17[v19], v4);
    sub_29D597120(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v22 = sub_29D5B3DCC();
    v24 = *(v5 + 8);
    v24(v9, v4);
    v24(v12, v4);
  }

  return v22 & 1;
}

uint64_t sub_29D58F3EC(uint64_t a1)
{
  sub_29D5968A4(0, &qword_2A17A5160, sub_29D4B4C4C, type metadata accessor for AccountNewRecordsData);
  v3 = a1 + *(v2 + 48);

  return sub_29D58F12C(a1, v3);
}

uint64_t sub_29D58F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  sub_29D4B4C4C(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v8);
  sub_29D595BAC(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  v15 = sub_29D58C810(sub_29D595C74, v25, a1);
  v24 = a2;
  v16 = sub_29D58BDA8(sub_29D595C90, v23, v15);

  sub_29D59683C(a2, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29D4B4C4C);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  sub_29D596E38(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, sub_29D4B4C4C);
  *(v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  sub_29D595C40(0);
  sub_29D597120(&qword_2A1A16590, sub_29D595C40, MEMORY[0x29EDB8AD8]);

  sub_29D5B3A8C();

  sub_29D597120(&qword_2A1A16510, sub_29D595BAC, MEMORY[0x29EDB8AE8]);
  v19 = sub_29D5B3B1C();
  (*(v11 + 8))(v14, v10);
  return v19;
}

uint64_t sub_29D58F7D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v132 = a3;
  v152 = a2;
  sub_29D4D2828(0);
  v137 = v6;
  v8 = MEMORY[0x2A1C7C4A8](v6, v7);
  v129 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v134 = &v123 - v11;
  v158 = sub_29D5B0E6C();
  v151 = *(v158 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v158, v12);
  v15 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v123 = &v123 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v124 = (&v123 - v21);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v123 - v23;
  sub_29D595B38(0);
  v159 = v25;
  v27 = MEMORY[0x2A1C7C4A8](v25, v26);
  v141 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v32 = &v123 - v31;
  v34 = MEMORY[0x2A1C7C4A8](v30, v33);
  v36 = &v123 - v35;
  MEMORY[0x2A1C7C4A8](v34, v37);
  v147 = &v123 - v38;
  sub_29D4B4C4C(0);
  v41 = MEMORY[0x2A1C7C4A8](v39 - 8, v40);
  v128 = &v123 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x2A1C7C4A8](v41, v43);
  v131 = &v123 - v45;
  v47 = MEMORY[0x2A1C7C4A8](v44, v46);
  v140 = &v123 - v48;
  v50 = MEMORY[0x2A1C7C4A8](v47, v49);
  v52 = (&v123 - v51);
  v54 = MEMORY[0x2A1C7C4A8](v50, v53);
  v146 = &v123 - v55;
  MEMORY[0x2A1C7C4A8](v54, v56);
  v149 = &v123 - v57;
  v126 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
  {
    v160 = v36;
    v148 = v32;
    v139 = v24;
    v133 = v15;
    v127 = a4;
    v138 = v52;
    if (i)
    {
      v36 = 0;
      v15 = a1 & 0xC000000000000001;
      v24 = (a1 & 0xFFFFFFFFFFFFFF8);
      v161 = MEMORY[0x29EDCA190];
      while (1)
      {
        if (v15)
        {
          v32 = a1;
          v59 = MEMORY[0x29ED5EF30](v36, a1);
        }

        else
        {
          if (v36 >= *(v24 + 2))
          {
            goto LABEL_56;
          }

          v32 = a1;
          v59 = *(a1 + 8 * v36 + 32);
        }

        a4 = v59;
        v60 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_55;
        }

        v61 = sub_29D5B453C();
        v52 = v62;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v161 = sub_29D514C4C(0, *(v161 + 2) + 1, 1, v161);
        }

        v64 = *(v161 + 2);
        v63 = *(v161 + 3);
        a4 = (v64 + 1);
        if (v64 >= v63 >> 1)
        {
          v161 = sub_29D514C4C((v63 > 1), v64 + 1, 1, v161);
        }

        v65 = v161;
        *(v161 + 2) = a4;
        v66 = &v65[16 * v64];
        *(v66 + 4) = v61;
        *(v66 + 5) = v52;
        ++v36;
        a1 = v32;
        if (v60 == i)
        {
          goto LABEL_17;
        }
      }
    }

    v161 = MEMORY[0x29EDCA190];
LABEL_17:
    v125 = a1;
    a1 = v151 + 56;
    v24 = v149;
    v142 = *(v151 + 56);
    v142(v149, 1, 1, v158);
    v67 = v152 + 64;
    v68 = 1 << *(v152 + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v15 = v69 & *(v152 + 64);
    a4 = ((v68 + 63) >> 6);
    v145 = (a1 - 8);
    v150 = (a1 - 24);
    v136 = (a1 - 40);
    v151 = a1;
    v135 = a1 - 48;

    v70 = 0;
    v143 = a4;
    v144 = v67;
    if (v15)
    {
      while (1)
      {
        while (1)
        {
LABEL_27:
          v72 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          v73 = v72 | (v70 << 6);
          v74 = v152;
          v75 = *(v152 + 48);
          v76 = sub_29D5B0EDC();
          v77 = *(v76 - 8);
          v78 = v147;
          v77[2](v147, v75 + v77[9] * v73, v76);
          v79 = *(v74 + 56);
          v80 = v77;
          v81 = type metadata accessor for AccountNewRecordsData(0);
          v82 = v79 + *(*(v81 - 8) + 72) * v73;
          v83 = v159;
          v84 = *(v159 + 48);
          sub_29D59683C(v82, &v78[v84], type metadata accessor for AccountNewRecordsData);
          v85 = *(v83 + 48);
          v86 = v160;
          v80[4](v160, v78, v76);
          sub_29D596E38(&v78[v84], v86 + v85, type metadata accessor for AccountNewRecordsData);
          v87 = v148;
          sub_29D59683C(v86, v148, sub_29D595B38);
          v88 = v87 + *(v83 + 48);
          v154 = v81;
          v89 = v146;
          sub_29D59683C(v88 + *(v81 + 24), v146, sub_29D4B4C4C);
          sub_29D597004(v88, type metadata accessor for AccountNewRecordsData);
          v90 = v87;
          v91 = v145;
          v52 = *v145;
          a1 = v158;
          v92 = (*v145)(v89, 1, v158);
          v156 = v52;
          v157 = v80;
          v155 = v76;
          if (v92 == 1)
          {
            sub_29D597004(v89, sub_29D4B4C4C);
            v153 = v80[1];
            (v153)(v90, v76);
            v24 = v149;
            v36 = v91;
          }

          else
          {
            v101 = v139;
            v130 = *v150;
            v130(v139, v89, a1);
            v153 = v80[1];
            (v153)(v90, v76);
            v102 = v91;
            v103 = v138;
            (*v136)(v138, v101, a1);
            v142(v103, 0, 1, a1);
            v104 = *(v137 + 48);
            v32 = v134;
            sub_29D59683C(v103, v134, sub_29D4B4C4C);
            sub_29D59683C(v132, &v32[v104], sub_29D4B4C4C);
            if (v52(v32, 1, a1) == 1)
            {
              sub_29D597004(v103, sub_29D4B4C4C);
              (*v135)(v101, a1);
              v105 = v52(&v32[v104], 1, a1);
              v24 = v149;
              v36 = v102;
              if (v105 != 1)
              {
                sub_29D597004(&v134[v104], sub_29D4B4C4C);
LABEL_43:
                sub_29D597004(v160, sub_29D595B38);
                goto LABEL_22;
              }
            }

            else
            {
              v36 = v102;
              if (v52(&v32[v104], 1, a1) == 1)
              {
                sub_29D597004(v138, sub_29D4B4C4C);
                v106 = *v135;
                (*v135)(v139, a1);
                v106(v32, a1);
                v24 = v149;
              }

              else
              {
                v52 = v124;
                v111 = v130;
                v130(v124, v32, a1);
                v112 = &v32[v104];
                v32 = v123;
                v111(v123, v112, a1);
                sub_29D597120(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
                v113 = sub_29D5B3DCC();
                v114 = *v135;
                (*v135)(v32, a1);
                v114(v52, a1);
                sub_29D597004(v138, sub_29D4B4C4C);
                v114(v139, a1);
                v24 = v149;
                if (v113)
                {
                  goto LABEL_43;
                }
              }
            }
          }

          v93 = v160;
          v32 = v141;
          sub_29D59683C(v160, v141, sub_29D595B38);
          v94 = &v32[*(v159 + 48)];
          v95 = v140;
          sub_29D59683C(v94 + *(v154 + 24), v140, sub_29D4B4C4C);
          sub_29D597004(v94, type metadata accessor for AccountNewRecordsData);
          v52 = v156;
          if (v156(v95, 1, a1) != 1)
          {
            break;
          }

          sub_29D597004(v93, sub_29D595B38);
          sub_29D597004(v95, sub_29D4B4C4C);
          (v153)(v32, v155);
LABEL_22:
          a4 = v143;
          v67 = v144;
          if (!v15)
          {
            goto LABEL_23;
          }
        }

        v96 = v95;
        v97 = *v150;
        v98 = v133;
        (*v150)(v133, v96, a1);
        (v153)(v32, v155);
        v99 = v131;
        sub_29D59683C(v24, v131, sub_29D4B4C4C);
        if (v52(v99, 1, a1) == 1)
        {
          sub_29D597004(v160, sub_29D595B38);
          a1 = v99;
LABEL_32:
          sub_29D597004(a1, sub_29D4B4C4C);
LABEL_33:
          sub_29D597004(v24, sub_29D4B4C4C);
          v100 = v158;
          v97(v24, v98, v158);
          v142(v24, 0, 1, v100);
          goto LABEL_22;
        }

        v157 = v97;
        sub_29D597004(v99, sub_29D4B4C4C);
        v107 = v98;
        v108 = v128;
        (*v136)(v128, v107, a1);
        v142(v108, 0, 1, a1);
        v32 = v129;
        v109 = a1;
        a1 = &v129[*(v137 + 48)];
        sub_29D59683C(v24, v129, sub_29D4B4C4C);
        sub_29D59683C(v108, a1, sub_29D4B4C4C);
        if (v52(v32, 1, v109) == 1)
        {
          break;
        }

        v115 = v52(a1, 1, v109);
        v116 = v135;
        v36 = v135 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v115 != 1)
        {
          v52 = v157;
          v157(v124, v129, v109);
          v32 = v123;
          v52(v123, a1, v109);
          sub_29D597120(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
          v117 = v124;
          LODWORD(v156) = sub_29D5B3DCC();
          a1 = *v116;
          (*v116)(v32, v109);
          v118 = v109;
          v97 = v52;
          (a1)(v117, v118);
          sub_29D597004(v128, sub_29D4B4C4C);
          sub_29D597004(v160, sub_29D595B38);
          v98 = v133;
          if (v156)
          {
            goto LABEL_33;
          }

          goto LABEL_47;
        }

        sub_29D597004(v128, sub_29D4B4C4C);
        sub_29D597004(v160, sub_29D595B38);
        a1 = *v116;
        (*v116)(v129, v109);
        a4 = v143;
        v98 = v133;
LABEL_48:
        (a1)(v98, v109);
        v67 = v144;
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      sub_29D597004(v108, sub_29D4B4C4C);
      sub_29D597004(v160, sub_29D595B38);
      v110 = v52(a1, 1, v109);
      v98 = v133;
      v97 = v157;
      if (v110 != 1)
      {
        goto LABEL_32;
      }

      a1 = *v135;
      v36 = v135 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
LABEL_47:
      v109 = v158;
      a4 = v143;
      goto LABEL_48;
    }

LABEL_23:
    v71 = v70 + 1;
    if (!__OFADD__(v70, 1))
    {
      break;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  if (v71 < a4)
  {
    v15 = *(v67 + 8 * v71);
    ++v70;
    if (v15)
    {
      v70 = v71;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v126)
  {
    v119 = sub_29D5B485C();
  }

  else
  {
    v119 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v120 = v127;
  *v127 = v119;
  v121 = type metadata accessor for AllAccountsLabRecordsData(0);
  result = sub_29D596E38(v24, v120 + *(v121 + 20), sub_29D4B4C4C);
  *(v120 + *(v121 + 24)) = v161;
  return result;
}

uint64_t sub_29D5908DC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_29D595170(0);
  v7 = a1 + *(v6 + 64);

  return sub_29D58F7D8(v4, v5, v7, a2);
}

uint64_t sub_29D590938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_29D4B4C4C(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v13);
  sub_29D59683C(a3, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29D4B4C4C);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_29D596E38(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, sub_29D4B4C4C);
  *(v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  sub_29D595C40(0);
  swift_allocObject();

  result = sub_29D5B3A6C();
  *a5 = result;
  return result;
}

void sub_29D590AC0(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a1;
  sub_29D595F2C(0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4B4C4C(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v18);
  if (*(a3 + 16))
  {
    v19 = objc_opt_self();

    sub_29D59654C(v20);

    sub_29D5B0EDC();
    sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v21 = sub_29D5B41AC();

    v22 = [v19 predicateForMedicalUserDomainConceptsMappingToSampleWithUUIDs_];

    v23 = swift_allocObject();
    *(v23 + 16) = MEMORY[0x29EDCA190];
    sub_29D59683C(a5, &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29D4B4C4C);
    v24 = (*(v16 + 80) + 56) & ~*(v16 + 80);
    v25 = swift_allocObject();
    v25[2] = v35;
    v25[3] = a2;
    v25[4] = a6;
    v25[5] = v23;
    v25[6] = a4;
    sub_29D596E38(&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, sub_29D4B4C4C);
    v26 = objc_allocWithZone(MEMORY[0x29EDBAE78]);
    aBlock[4] = sub_29D5966E8;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D54F470;
    aBlock[3] = &unk_2A242AC78;
    v27 = _Block_copy(aBlock);

    v28 = [v26 initWithPredicate:v22 anchor:0 limit:0 sortDescriptors:0 resultsHandler:v27];
    _Block_release(v27);

    v29 = v28;
    v30 = sub_29D5B3E1C();
    [v29 setDebugIdentifier_];

    v31 = [*(a6 + 16) healthStore];
    [v31 executeQuery_];
  }

  else
  {
    sub_29D595170(0);
    v33 = *(v32 + 64);
    *v14 = MEMORY[0x29EDCA190];
    v14[1] = a4;
    sub_29D59683C(a5, v14 + v33, sub_29D4B4C4C);
    swift_storeEnumTagMultiPayload();

    v35(v14);
    sub_29D597004(v14, sub_29D595F2C);
  }
}

void sub_29D590EF4(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5, void (*a6)(void *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_29D595F2C(0);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a5)
  {
    *v18 = a5;
    swift_storeEnumTagMultiPayload();
    v19 = a5;
LABEL_12:
    a6(v18);
    sub_29D597004(v18, sub_29D595F2C);
    return;
  }

  if (a2)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v20 = a2;
      if (sub_29D5B362C())
      {
        swift_beginAccess();
        v20 = v20;
        MEMORY[0x29ED5E5E0]();
        if (*((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        swift_endAccess();
      }
    }
  }

  if (a4)
  {
    sub_29D595170(0);
    v22 = *(v21 + 64);
    swift_beginAccess();
    *v18 = *(a9 + 16);
    v18[1] = a10;
    sub_29D59683C(a11, v18 + v22, sub_29D4B4C4C);
    swift_storeEnumTagMultiPayload();

    goto LABEL_12;
  }
}

uint64_t sub_29D591114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = a3;
  v38 = a1;
  v4 = sub_29D5B0E6C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v34 = &v33 - v10;
  sub_29D4D2828(0);
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v5;
  v20 = *(v5 + 48);
  if (v20(a2, 1, v4) == 1)
  {
    goto LABEL_2;
  }

  v22 = *(type metadata accessor for AccountNewRecordsData(0) + 24);
  sub_29D59683C(v38 + v22, v19, sub_29D4B4C4C);
  v23 = v20(v19, 1, v4);
  result = sub_29D597004(v19, sub_29D4B4C4C);
  if (v23 != 1)
  {
    v24 = *(v12 + 48);
    sub_29D59683C(a2, v15, sub_29D4B4C4C);
    sub_29D59683C(v38 + v22, &v15[v24], sub_29D4B4C4C);
    v25 = v20(v15, 1, v4);
    result = (v20)(&v15[v24], 1, v4);
    if (v25 == 1)
    {
      if (result == 1)
      {
        goto LABEL_4;
      }

      sub_29D597004(&v15[v24], sub_29D4B4C4C);
    }

    else
    {
      if (result == 1)
      {
        result = (*(v36 + 8))(v15, v4);
        goto LABEL_4;
      }

      v26 = v36;
      v27 = *(v36 + 32);
      v28 = v34;
      v27(v34, v15, v4);
      v29 = &v15[v24];
      v30 = v35;
      v27(v35, v29, v4);
      sub_29D597120(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
      v31 = sub_29D5B3DCC();
      v32 = *(v26 + 8);
      v32(v30, v4);
      result = (v32)(v28, v4);
      if ((v31 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_2:
    *v37 = *(v38 + *(type metadata accessor for AccountNewRecordsData(0) + 28));
  }

LABEL_4:
  *v37 = MEMORY[0x29EDCA190];
  return result;
}

uint64_t sub_29D5914F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B0E6C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D59683C(a2, v9, sub_29D4B4C4C);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29D597004(v9, sub_29D4B4C4C);
    v15 = *(type metadata accessor for LabNameWithDate(0) + 24);
    v16 = sub_29D5B0EDC();
    v17 = *(v16 - 8);
    (*(v17 + 16))(a3, a1 + v15, v16);
    return (*(v17 + 56))(a3, 0, 1, v16);
  }

  (*(v11 + 32))(v14, v9, v10);
  v18 = type metadata accessor for LabNameWithDate(0);
  v19 = sub_29D5B0DFC();
  (*(v11 + 8))(v14, v10);
  if (v19)
  {
    v20 = *(v18 + 24);
    v16 = sub_29D5B0EDC();
    v17 = *(v16 - 8);
    (*(v17 + 16))(a3, a1 + v20, v16);
    return (*(v17 + 56))(a3, 0, 1, v16);
  }

  v22 = sub_29D5B0EDC();
  return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
}

uint64_t sub_29D5917F0(void *a1)
{
  v2 = sub_29D5B0EDC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5925A8(0);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x2A1C7C4A8](v7, v9);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5927D0(0);
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v31 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1B5C();
  sub_29D48F51C(0, &qword_2A17A5148, 0x29EDBAD30);
  v15 = [a1 identifier];
  sub_29D5B0EBC();

  v16 = MEMORY[0x29ED5EBB0](v6);
  (*(v3 + 8))(v6, v2);
  v17 = sub_29D5B242C();

  v38 = v17;
  v29 = a1;
  v37 = sub_29D5B231C();
  v36 = sub_29D5B230C();
  sub_29D539E88(0);
  sub_29D4C1354(0);
  sub_29D592704(0);
  v18 = MEMORY[0x29EDB8A00];
  sub_29D597120(&qword_2A1A167F0, sub_29D539E88, MEMORY[0x29EDB8A00]);
  sub_29D597120(&qword_2A1A16870, sub_29D4C1354, v18);
  sub_29D597120(&qword_2A17A5130, sub_29D592704, v18);
  v19 = v30;
  sub_29D5B3B5C();

  v20 = swift_allocObject();
  v21 = v29;
  *(v20 + 16) = v29;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_29D5928B0;
  *(v22 + 24) = v20;
  sub_29D59287C(0);
  sub_29D597120(&qword_2A17A5140, sub_29D5925A8, MEMORY[0x29EDB8878]);
  v23 = v21;
  v25 = v31;
  v24 = v32;
  sub_29D5B3B7C();

  (*(v33 + 8))(v19, v24);
  sub_29D597120(&qword_2A17A5150, sub_29D5927D0, MEMORY[0x29EDB8908]);
  v26 = v34;
  v27 = sub_29D5B3B1C();
  (*(v35 + 8))(v25, v26);
  return v27;
}

uint64_t sub_29D591CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a4;
  v105 = a3;
  v86 = a5;
  sub_29D592758(0);
  v99 = v7;
  v104 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v98 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v97 = &v76 - v13;
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v96 = (&v76 - v16);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v95 = &v76 - v18;
  v19 = type metadata accessor for LabNameWithDate(0);
  v93 = *(v19 - 8);
  v94 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccountNewRecordsData(0);
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = (&v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4B4C4C(0);
  v30 = MEMORY[0x2A1C7C4A8](v28 - 8, v29);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v33);
  v35 = &v76 - v34;
  v36 = sub_29D5B0E6C();
  v37 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v38);
  v85 = &v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (*(v24 + 56))(v86, 1, 1, v23);
  }

  sub_29D59683C(a2, v35, sub_29D4B4C4C);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_29D597004(v35, sub_29D4B4C4C);
    return (*(v24 + 56))(v86, 1, 1, v23);
  }

  v83 = a1;
  v41 = v85;
  v90 = *(v37 + 32);
  v91 = v37 + 32;
  v90(v85, v35, v36);
  (*(v37 + 16))(v32, v41, v36);
  v42 = *(v37 + 56);
  v82 = v32;
  v81 = v42;
  v42(v32, 0, 1, v36);
  v43 = v105;
  v44 = *(v105 + 16);
  if (v44)
  {
    v76 = v37 + 56;
    v92 = v36;
    v78 = v27;
    v79 = v24;
    v80 = v23;
    v106 = MEMORY[0x29EDCA190];

    sub_29D4C6EA0(0, v44, 0);
    v45 = v106;
    v46 = v43 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v89 = *(v104 + 72);
    v77 = v37;
    v87 = v22;
    v88 = (v37 + 8);
    v47 = v22;
    do
    {
      v104 = v46;
      v105 = v44;
      v48 = v95;
      sub_29D59683C(v46, v95, sub_29D592758);
      v49 = v96;
      sub_29D59683C(v48, v96, sub_29D592758);
      v51 = *v49;
      v50 = v49[1];
      v52 = v99;
      v53 = *(v99 + 48);
      v102 = *(v99 + 64);
      v103 = v53;
      v54 = v97;
      sub_29D59683C(v48, v97, sub_29D592758);

      v55 = *(v52 + 48);
      v101 = *(v52 + 64);
      v56 = v48;
      v57 = v98;
      sub_29D596E38(v56, v98, sub_29D592758);

      v100 = *(v52 + 48);
      v58 = *(v52 + 64);
      *v47 = v51;
      *(v47 + 1) = v50;
      v59 = v94;
      v60 = v92;
      v90(&v47[*(v94 + 20)], (v54 + v55), v92);
      v61 = *(v59 + 24);
      v62 = sub_29D5B0EDC();
      v63 = *(v62 - 8);
      (*(v63 + 32))(&v47[v61], v57 + v58, v62);
      v64 = *v88;
      (*v88)(v57 + v100, v60);
      v65 = *(v63 + 8);
      v65(v54 + v101, v62);
      v65(v49 + v102, v62);
      v64(v49 + v103, v60);
      v106 = v45;
      v67 = *(v45 + 16);
      v66 = *(v45 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_29D4C6EA0((v66 > 1), v67 + 1, 1);
        v45 = v106;
      }

      *(v45 + 16) = v67 + 1;
      v47 = v87;
      sub_29D596E38(v87, v45 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v67, type metadata accessor for LabNameWithDate);
      v46 = v104 + v89;
      v44 = v105 - 1;
    }

    while (v105 != 1);
    v105 = v45;
    v68 = v86;
    v69 = v83;
    v70 = v84;
    v23 = v80;
    v24 = v79;
    v27 = v78;
    v36 = v92;
    v37 = v77;
  }

  else
  {
    v69 = v83;

    v105 = MEMORY[0x29EDCA190];
    v68 = v86;
    v70 = v84;
  }

  v71 = *(v23 + 24);
  v81(v27 + v71, 1, 1, v36);
  v72 = sub_29D5B3D5C();
  v73 = v36;
  v74 = v72;
  (*(v37 + 8))(v85, v73);
  if (v74)
  {
    *v27 = v70;
    v27[1] = v69;
    v75 = v70;
    sub_29D596D9C(v82, v27 + v71, sub_29D4B4C4C);
    *(v27 + *(v23 + 28)) = v105;
    sub_29D59683C(v27, v68, type metadata accessor for AccountNewRecordsData);
    (*(v24 + 56))(v68, 0, 1, v23);
    return sub_29D597004(v27, type metadata accessor for AccountNewRecordsData);
  }

  else
  {
    sub_29D597004(v82, sub_29D4B4C4C);

    sub_29D597004(v27 + v71, sub_29D4B4C4C);
    return (*(v24 + 56))(v68, 1, 1, v23);
  }
}

uint64_t sub_29D59253C()
{

  return swift_deallocClassInstance();
}

void sub_29D5925A8(uint64_t a1)
{
  if (!qword_2A17A5110)
  {
    sub_29D539E88(255);
    sub_29D4C1354(255);
    sub_29D592704(255);
    v1 = MEMORY[0x29EDB8A00];
    sub_29D597120(&qword_2A1A167F0, sub_29D539E88, MEMORY[0x29EDB8A00]);
    sub_29D597120(&qword_2A1A16870, sub_29D4C1354, v1);
    sub_29D597120(&qword_2A17A5130, sub_29D592704, v1);
    v2 = sub_29D5B37AC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17A5110);
    }
  }
}

void sub_29D592758(uint64_t a1)
{
  if (!qword_2A17A5128)
  {
    sub_29D5B0E6C();
    sub_29D5B0EDC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17A5128);
    }
  }
}

void sub_29D5927D0(uint64_t a1)
{
  if (!qword_2A17A5138)
  {
    sub_29D5925A8(255);
    sub_29D59287C(255);
    sub_29D597120(&qword_2A17A5140, sub_29D5925A8, MEMORY[0x29EDB8878]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A5138);
    }
  }
}

uint64_t sub_29D5928B8(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_29D59291C(0);
  return v3(v4, &a1[*(v5 + 48)], *&a1[*(v5 + 64)]);
}

void sub_29D59291C(uint64_t a1)
{
  if (!qword_2A17A5158)
  {
    sub_29D5926D0(255);
    sub_29D4B4C4C(255);
    sub_29D592724(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17A5158);
    }
  }
}

uint64_t sub_29D5929A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29D4A6960(0);
  result = sub_29D5B4A8C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_29D5B464C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_29D592C00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_29D5B0EDC();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29D597064(0);
  v40 = v4;
  result = sub_29D5B4A8C();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v6 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      result = sub_29D5B3D8C();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v6 = v38;
      v10 = v39;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_29D592FCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_29D5B16BC();
  v5 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46, v6);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_29D596F38(0);
  v43 = v4;
  result = sub_29D5B4A8C();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v8;
    v42 = v5;
    v44 = (v5 + 32);
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v42 + 72);
      v29 = v24 + v28 * v23;
      if (v43)
      {
        (*v44)(v45, v29, v46);
      }

      else
      {
        (*v40)(v45, v29, v46);
      }

      sub_29D5B4D4C();
      sub_29D5B3EFC();
      result = sub_29D5B4D9C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      result = (*v44)(*(v10 + 56) + v28 * v18, v45, v46);
      ++*(v10 + 16);
      v8 = v41;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_29D593340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AccountNewRecordsData(0);
  v44 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B0EDC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  sub_29D57C314(0);
  v45 = v4;
  result = sub_29D5B4A8C();
  v14 = result;
  if (*(v12 + 16))
  {
    v40 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v9 + 16);
    v42 = v9;
    v46 = (v9 + 32);
    v21 = result + 64;
    v43 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v47 = *(v9 + 72);
      v28 = v27 + v47 * v26;
      if (v45)
      {
        (*v46)(v48, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v44 + 72);
        sub_29D596E38(v29 + v30 * v26, v49, type metadata accessor for AccountNewRecordsData);
      }

      else
      {
        (*v41)(v48, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v44 + 72);
        sub_29D59683C(v31 + v30 * v26, v49, type metadata accessor for AccountNewRecordsData);
      }

      sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      result = sub_29D5B3D8C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v46)((*(v14 + 48) + v47 * v22), v48, v8);
      result = sub_29D596E38(v49, *(v14 + 56) + v30 * v22, type metadata accessor for AccountNewRecordsData);
      ++*(v14 + 16);
      v9 = v42;
      v12 = v43;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v12 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
  return result;
}

id sub_29D5937D4()
{
  v1 = v0;
  sub_29D4A6960(0);
  v2 = *v0;
  v3 = sub_29D5B4A7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_29D593928()
{
  v1 = v0;
  v32 = sub_29D5B0EDC();
  v34 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D597064(0);
  v4 = *v0;
  v5 = sub_29D5B4A7C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v28, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    v16 = v6;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_17:
        v20 = v17 | (v10 << 6);
        v21 = v34;
        v22 = *(v34 + 72) * v20;
        v24 = v31;
        v23 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v22, v32);
        v25 = *(*(v4 + 56) + 8 * v20);
        (*(v21 + 32))(*(v16 + 48) + v22, v24, v23);
        *(*(v16 + 56) + 8 * v20) = v25;
        result = v25;
        v14 = v35;
      }

      while (v35);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_21;
      }

      v19 = *(v28 + v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_29D593B90()
{
  v1 = v0;
  v39 = sub_29D5B16BC();
  v41 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v2);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D596F38(0);
  v4 = *v0;
  v5 = sub_29D5B4A7C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v34 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v40 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v4 + 64);
    v16 = (v13 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v4;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v42 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 56);
        v23 = (*(v4 + 48) + 16 * v20);
        v24 = *v23;
        v25 = v23[1];
        v26 = v41;
        v27 = *(v41 + 72) * v20;
        v28 = v38;
        v29 = v39;
        (*(v41 + 16))(v38, v22 + v27, v39);
        v30 = v40;
        v31 = (*(v40 + 48) + v21);
        *v31 = v24;
        v31[1] = v25;
        v32 = *(v30 + 56) + v27;
        v4 = v37;
        (*(v26 + 32))(v32, v28, v29);

        v15 = v42;
      }

      while (v42);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v34;
        v6 = v40;
        goto LABEL_21;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v42 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

char *sub_29D593E08()
{
  v1 = v0;
  v2 = type metadata accessor for AccountNewRecordsData(0);
  v38 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D5B0EDC();
  v39 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v5);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D57C314(0);
  v7 = *v0;
  v8 = sub_29D5B4A7C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_29D59683C(*(v7 + 56) + v28, v37, type metadata accessor for AccountNewRecordsData);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_29D596E38(v27, *(v29 + 56) + v28, type metadata accessor for AccountNewRecordsData);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void sub_29D594128(uint64_t a1)
{
  if (!qword_2A1A17238)
  {
    sub_29D594214(255);
    sub_29D594F10(255);
    sub_29D597120(&qword_2A1A16B30, sub_29D594214, MEMORY[0x29EDB89A0]);
    sub_29D597120(&qword_2A1A16EA8, sub_29D594F10, MEMORY[0x29EDB8908]);
    v1 = sub_29D5B379C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17238);
    }
  }
}

void sub_29D594214(uint64_t a1)
{
  if (!qword_2A1A16B28)
  {
    sub_29D5942A8(255);
    sub_29D597120(&qword_2A1A16E78, sub_29D5942A8, MEMORY[0x29EDB8908]);
    v1 = sub_29D5B38EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16B28);
    }
  }
}

void sub_29D5942A8(uint64_t a1)
{
  if (!qword_2A1A16E70)
  {
    sub_29D594354(255);
    type metadata accessor for AccountNewRecordsData(255);
    sub_29D597120(&qword_2A1A16C88, sub_29D594354, MEMORY[0x29EDB8968]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16E70);
    }
  }
}

void sub_29D594354(uint64_t a1)
{
  if (!qword_2A1A16C80)
  {
    sub_29D5943E8(255);
    sub_29D597120(&qword_2A1A16A30, sub_29D5943E8, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16C80);
    }
  }
}

void sub_29D5943E8(uint64_t a1)
{
  if (!qword_2A1A16A28)
  {
    sub_29D5944D4(255);
    sub_29D5945F4(255);
    sub_29D597120(&qword_2A1A17250, sub_29D5944D4, MEMORY[0x29EDB8870]);
    sub_29D597120(&qword_2A1A169D0, sub_29D5945F4, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16A28);
    }
  }
}

void sub_29D5944D4(uint64_t a1)
{
  if (!qword_2A1A17248)
  {
    sub_29D4C17A4(255);
    sub_29D5945C0(255);
    sub_29D597120(&qword_2A1A16DF8, sub_29D4C17A4, MEMORY[0x29EDB8928]);
    sub_29D597120(&qword_2A1A16618, sub_29D5945C0, MEMORY[0x29EDB8AB8]);
    v1 = sub_29D5B379C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17248);
    }
  }
}

void sub_29D5945F4(uint64_t a1)
{
  if (!qword_2A1A169C8)
  {
    sub_29D5946E0(255);
    sub_29D59483C(255);
    sub_29D597120(&qword_2A1A16910, sub_29D5946E0, MEMORY[0x29EDB89C0]);
    sub_29D597120(&qword_2A1A17028, sub_29D59483C, MEMORY[0x29EDB88C8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A169C8);
    }
  }
}

void sub_29D5946E0(uint64_t a1)
{
  if (!qword_2A1A16908)
  {
    sub_29D594790(255);
    sub_29D597120(&qword_2A1A164D0, sub_29D594790, MEMORY[0x29EDC98D8]);
    v1 = sub_29D5B392C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16908);
    }
  }
}

void sub_29D594790(uint64_t a1)
{
  if (!qword_2A1A164C8)
  {
    sub_29D5B0EDC();
    type metadata accessor for AccountNewRecordsData(255);
    sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v1 = sub_29D5B3D6C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A164C8);
    }
  }
}

void sub_29D59483C(uint64_t a1)
{
  if (!qword_2A1A17020)
  {
    sub_29D5948D0(255);
    sub_29D597120(&qword_2A1A16C68, sub_29D5948D0, MEMORY[0x29EDB8980]);
    v1 = sub_29D5B37FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17020);
    }
  }
}

void sub_29D5948D0(uint64_t a1)
{
  if (!qword_2A1A16C60)
  {
    sub_29D59497C(255);
    sub_29D594E64(255);
    sub_29D597120(&qword_2A1A16A10, sub_29D59497C, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38BC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16C60);
    }
  }
}

void sub_29D59497C(uint64_t a1)
{
  if (!qword_2A1A16A08)
  {
    sub_29D594A68(255);
    sub_29D594BA8(255);
    sub_29D597120(&qword_2A1A16FB8, sub_29D594A68, MEMORY[0x29EDB88D8]);
    sub_29D597120(&qword_2A1A169C0, sub_29D594BA8, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16A08);
    }
  }
}

void sub_29D594A68(uint64_t a1)
{
  if (!qword_2A1A16FB0)
  {
    sub_29D594B24(255);
    sub_29D4B3AF4();
    sub_29D597120(&qword_2A1A16860, sub_29D594B24, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B382C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16FB0);
    }
  }
}

void sub_29D594B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B398C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D594BA8(uint64_t a1)
{
  if (!qword_2A1A169B8)
  {
    sub_29D594CB4(255);
    v1 = MEMORY[0x29EDB89F8];
    sub_29D5953B8(255, &qword_2A1A16728, MEMORY[0x29EDB89F8]);
    sub_29D597120(&qword_2A1A168F0, sub_29D594CB4, MEMORY[0x29EDB89C0]);
    sub_29D594E20(&qword_2A1A16730, &qword_2A1A16728, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D5B38FC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A169B8);
    }
  }
}

void sub_29D594CB4(uint64_t a1)
{
  if (!qword_2A1A168E8)
  {
    sub_29D594D58(255, &qword_2A1A16420, &qword_2A1A19640, 0x29EDC3E08);
    sub_29D4B3AF4();
    sub_29D594DB0();
    v1 = sub_29D5B392C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A168E8);
    }
  }
}

void sub_29D594D58(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_29D48F51C(255, a3, a4);
    v5 = sub_29D5B40BC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D594DB0()
{
  result = qword_2A1A16418;
  if (!qword_2A1A16418)
  {
    sub_29D594D58(255, &qword_2A1A16420, &qword_2A1A19640, 0x29EDC3E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16418);
  }

  return result;
}

uint64_t sub_29D594E20(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D5953B8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D594E64(uint64_t a1)
{
  if (!qword_2A1A164C0)
  {
    sub_29D5B0EDC();
    type metadata accessor for AccountNewRecordsData(255);
    sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v1 = sub_29D5B3D7C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A164C0);
    }
  }
}

void sub_29D594F10(uint64_t a1)
{
  if (!qword_2A1A16EA0)
  {
    sub_29D594FBC(255);
    type metadata accessor for AllAccountsLabRecordsData(255);
    sub_29D597120(&qword_2A1A17018, sub_29D594FBC, MEMORY[0x29EDB88C8]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16EA0);
    }
  }
}

void sub_29D594FBC(uint64_t a1)
{
  if (!qword_2A1A17010)
  {
    sub_29D595050(255);
    sub_29D597120(&qword_2A1A16A80, sub_29D595050, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B37FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17010);
    }
  }
}

void sub_29D595050(uint64_t a1)
{
  if (!qword_2A1A16A78)
  {
    sub_29D59513C(255);
    sub_29D595210(255);
    sub_29D597120(&qword_2A1A16700, sub_29D59513C, MEMORY[0x29EDB8A00]);
    sub_29D597120(&qword_2A1A16FA8, sub_29D595210, MEMORY[0x29EDB88D8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16A78);
    }
  }
}

void sub_29D595170(uint64_t a1)
{
  if (!qword_2A1A163C8)
  {
    sub_29D594D58(255, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68);
    sub_29D594E64(255);
    sub_29D4B4C4C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A163C8);
    }
  }
}

void sub_29D595210(uint64_t a1)
{
  if (!qword_2A1A16FA0)
  {
    sub_29D5952CC(255);
    sub_29D4B3AF4();
    sub_29D597120(&qword_2A1A17270, sub_29D5952CC, MEMORY[0x29EDB8870]);
    v1 = sub_29D5B382C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16FA0);
    }
  }
}

void sub_29D5952CC(uint64_t a1)
{
  if (!qword_2A1A17268)
  {
    sub_29D59483C(255);
    sub_29D4C17A4(255);
    sub_29D597120(&qword_2A1A17028, sub_29D59483C, MEMORY[0x29EDB88C8]);
    sub_29D597120(&qword_2A1A16DF8, sub_29D4C17A4, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B379C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17268);
    }
  }
}

void sub_29D5953B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D594D58(255, &qword_2A1A16420, &qword_2A1A19640, 0x29EDC3E08);
    v7 = v6;
    v8 = sub_29D4B3AF4();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D595474@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D5917F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29D5954A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D595B38(0);
  v5 = *(v4 + 48);
  sub_29D57C2A4(0);
  v7 = *(v6 + 48);
  v8 = sub_29D5B0EDC();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return sub_29D59683C(a1 + v5, a2 + v7, type metadata accessor for AccountNewRecordsData);
}

uint64_t sub_29D595548@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  sub_29D595B38(0);
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccountNewRecordsData(0);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B0EDC();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D596E04(0);
  v17 = MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v55 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v17, v19);
  v51 = &v47 - v21;
  v22 = *v1;
  v23 = v1[1];
  v25 = v1[2];
  v24 = v1[3];
  v26 = v1[4];
  v54 = v25;
  if (v26)
  {
    v27 = v24;
LABEL_10:
    v49 = v22;
    v50 = (v26 - 1) & v26;
    v31 = __clz(__rbit64(v26)) | (v27 << 6);
    v32 = v22;
    (*(v11 + 16))(v14, *(v22 + 48) + *(v11 + 72) * v31, v10);
    sub_29D59683C(*(v32 + 56) + *(v6 + 72) * v31, v9, type metadata accessor for AccountNewRecordsData);
    v33 = v9;
    v34 = v53;
    v35 = *(v53 + 48);
    v36 = v51;
    (*(v11 + 32))(v51, v14, v10);
    sub_29D596E38(v33, v36 + v35, type metadata accessor for AccountNewRecordsData);
    v37 = v52;
    (*(v52 + 56))(v36, 0, 1, v34);
    v30 = v27;
    v39 = v49;
    v38 = v50;
LABEL_11:
    *v1 = v39;
    v1[1] = v23;
    v40 = v55;
    v1[2] = v54;
    v1[3] = v30;
    v1[4] = v38;
    v41 = v1[5];
    sub_29D596E38(v36, v40, sub_29D596E04);
    v42 = 1;
    v43 = (*(v37 + 48))(v40, 1, v34);
    v44 = v56;
    if (v43 != 1)
    {
      v45 = v48;
      sub_29D596E38(v40, v48, sub_29D595B38);
      v41(v45);
      sub_29D597004(v45, sub_29D595B38);
      v42 = 0;
    }

    sub_29D57C2A4(0);
    return (*(*(v46 - 8) + 56))(v44, v42, 1, v46);
  }

  else
  {
    v28 = (v25 + 64) >> 6;
    if (v28 <= v24 + 1)
    {
      v29 = v24 + 1;
    }

    else
    {
      v29 = (v25 + 64) >> 6;
    }

    v30 = v29 - 1;
    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v27 >= v28)
      {
        v36 = v51;
        v37 = v52;
        v34 = v53;
        v39 = v22;
        (*(v52 + 56))(v51, 1, 1, v53);
        v38 = 0;
        goto LABEL_11;
      }

      v26 = *(v23 + 8 * v27);
      ++v24;
      if (v26)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_29D5959C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x29ED5E7A0](v2, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_29D59AD10(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_29D595A5C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D595AAC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  sub_29D5968A4(0, &qword_2A1A164B8, sub_29D594E64, sub_29D4B4C4C);
  result = v5(v6, &a1[*(v7 + 48)]);
  *a2 = result;
  return result;
}

void sub_29D595B38(uint64_t a1)
{
  if (!qword_2A1A193C0)
  {
    sub_29D5B0EDC();
    type metadata accessor for AccountNewRecordsData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A193C0);
    }
  }
}

void sub_29D595BAC(uint64_t a1)
{
  if (!qword_2A1A16508)
  {
    sub_29D595C40(255);
    sub_29D597120(&qword_2A1A16590, sub_29D595C40, MEMORY[0x29EDB8AD8]);
    v1 = sub_29D5B3AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16508);
    }
  }
}

uint64_t sub_29D595CAC@<X0>(uint64_t *a1@<X8>)
{
  sub_29D4B4C4C(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  return sub_29D590938(v7, v8, v1 + v5, v6, a1);
}

uint64_t sub_29D595D4C()
{
  sub_29D4B4C4C(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_29D5B0E6C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2A1C733A0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_29D595E7C(void (*a1)(void *), uint64_t a2)
{
  sub_29D4B4C4C(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29D590AC0(a1, a2, v8, v9, v2 + v7, v10);
}

void sub_29D595F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4B3AF4();
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D595FDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_29D5713C8();
  result = MEMORY[0x29ED5E7A0](v2, &type metadata for SharedConceptFormattedRecord, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v13[4] = *(v5 + 64);
      v14 = *(v5 + 80);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      sub_29D4B4604(v13, v10);
      sub_29D59B0A0(v8, v13);
      v10[3] = v8[3];
      v10[4] = v8[4];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      v10[2] = v8[2];
      sub_29D4B4660(v10);
      v5 += 88;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_29D5960BC(uint64_t a1)
{
  v2 = sub_29D5B12DC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_29D597120(&qword_2A17A5198, MEMORY[0x29EDC3828], MEMORY[0x29EDC3830]);
  result = MEMORY[0x29ED5E7A0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_29D59BFF0(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_29D596258(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
  {
    v4 = sub_29D48F51C(0, &qword_2A1A16358, 0x29EDBAA88);
    v5 = sub_29D4A6A1C(&qword_2A1A16350, &qword_2A1A16358, 0x29EDBAA88);
    result = MEMORY[0x29ED5E7A0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x29ED5EF30](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_29D59C2D0(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_29D5B485C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29D5963B0(uint64_t a1)
{
  v2 = sub_29D5B1BCC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_29D597120(&qword_2A1A19800, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FC8]);
  result = MEMORY[0x29ED5E7A0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_29D59C570(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_29D59654C(uint64_t a1)
{
  v2 = sub_29D5B0EDC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  result = MEMORY[0x29ED5E7A0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_29D59C850(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

unint64_t sub_29D5967F8()
{
  result = qword_2A17A5168;
  if (!qword_2A17A5168)
  {
    type metadata accessor for NewRecordsDataProvider();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A5168);
  }

  return result;
}

uint64_t sub_29D59683C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D5968A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D596920(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for AccountNewRecordsData(0);
  v51 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_29D5B0EDC();
  v48 = *(v61 - 8);
  MEMORY[0x2A1C7C4A8](v61, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D596FA0(0, &qword_2A17A5178, sub_29D57C2A4, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v20 = &v46 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v54 = a1;
  v55 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v56 = v22;
  v57 = 0;
  v58 = v25 & v23;
  v59 = a2;
  v60 = a3;

  v46 = a3;

  sub_29D595548(v20);
  sub_29D57C2A4(0);
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = *(v28 + 48);
  v49 = v28 + 48;
  v50 = v29;
  if (v29(v20, 1, v26) == 1)
  {
LABEL_5:
    sub_29D4B30C0(v54);
  }

  v52 = *(v48 + 32);
  v53 = v48 + 32;
  v47 = (v48 + 8);
  while (1)
  {
    v31 = *(v27 + 48);
    v52(v16, v20, v61);
    v32 = v13;
    sub_29D596E38(&v20[v31], v13, type metadata accessor for AccountNewRecordsData);
    v33 = *a5;
    v35 = sub_29D57A308(v16);
    v36 = v33[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      break;
    }

    v39 = v34;
    if (v33[3] >= v38)
    {
      if (a4)
      {
        v42 = *a5;
        if (v34)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_29D593E08();
        v42 = *a5;
        if (v39)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_29D593340(v38, a4 & 1);
      v40 = sub_29D57A308(v16);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_22;
      }

      v35 = v40;
      v42 = *a5;
      if (v39)
      {
LABEL_7:
        (*v47)(v16, v61);
        v13 = v32;
        sub_29D596D9C(v32, v42[7] + *(v51 + 72) * v35, type metadata accessor for AccountNewRecordsData);
        goto LABEL_8;
      }
    }

    v42[(v35 >> 6) + 8] |= 1 << v35;
    v52((v42[6] + *(v48 + 72) * v35), v16, v61);
    v13 = v32;
    sub_29D596E38(v32, v42[7] + *(v51 + 72) * v35, type metadata accessor for AccountNewRecordsData);
    v43 = v42[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_21;
    }

    v42[2] = v45;
LABEL_8:
    sub_29D595548(v20);
    a4 = 1;
    if (v50(v20, 1, v27) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_29D5B4CCC();
  __break(1u);
  return result;
}

uint64_t sub_29D596D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D596E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D596EA0(uint64_t a1)
{
  if (!qword_2A1A168E0)
  {
    sub_29D594D58(255, &qword_2A1A16420, &qword_2A1A19640, 0x29EDC3E08);
    sub_29D594DB0();
    v1 = sub_29D5B392C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A168E0);
    }
  }
}

void sub_29D596F38(uint64_t a1)
{
  if (!qword_2A17A5188)
  {
    sub_29D5B16BC();
    v1 = sub_29D5B4ABC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A5188);
    }
  }
}

void sub_29D596FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D597004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D597064(uint64_t a1)
{
  if (!qword_2A17A5190)
  {
    sub_29D5B0EDC();
    sub_29D48F51C(255, &qword_2A1A162F8, 0x29EDBAC20);
    sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v1 = sub_29D5B4ABC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A5190);
    }
  }
}

uint64_t sub_29D597120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static Optional<A>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v5 = a2;
  v7 = *(a3 - 8);
  v8 = MEMORY[0x2A1C7C4A8](a1, a2);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v30 = &v29 - v11;
  v12 = sub_29D5B472C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8, v14);
  v17 = &v29 - v16;
  v18 = *(v15 + 56);
  v19 = *(v12 - 8);
  v20 = *(v19 + 16);
  v20(&v29 - v16, a1, v12);
  v20(&v17[v18], v5, v12);
  v21 = *(v7 + 48);
  LODWORD(v5) = v21(v17, 1, a3);
  v22 = v21(&v17[v18], 1, a3);
  if (v5 == 1)
  {
    if (v22 == 1)
    {
      v23 = 0;
    }

    else
    {
      (*(v19 + 8))(&v17[v18], v12);
      v23 = 1;
    }
  }

  else if (v22 == 1)
  {
    (*(v7 + 8))(v17, a3);
    v23 = 0;
  }

  else
  {
    v24 = *(v7 + 32);
    v25 = v30;
    v24(v30, v17, a3);
    v26 = v31;
    v24(v31, &v17[v18], a3);
    v23 = sub_29D5B3DCC();
    v27 = *(v7 + 8);
    v27(v26, a3);
    v27(v25, a3);
  }

  return v23 & 1;
}

uint64_t sub_29D5974B0(uint64_t a1)
{
  result = sub_29D597640(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29D597508(uint64_t a1)
{
  result = sub_29D597640(&qword_2A17A51A0, sub_29D597560, &protocol conformance descriptor for HKSemanticDate);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29D597560()
{
  result = qword_2A17A3ED0;
  if (!qword_2A17A3ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17A3ED0);
  }

  return result;
}

uint64_t sub_29D597640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D597688(uint64_t a1)
{
  v2 = sub_29D597910();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D5976C4(uint64_t a1)
{
  v2 = sub_29D597910();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t NavigationFeedItemData.encode(to:)(void *a1)
{
  sub_29D597DE0(0, &qword_2A17A51B0, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10[-v7];
  sub_29D499EC0(a1, a1[3]);
  sub_29D597910();
  sub_29D5B4DCC();
  v10[15] = 0;
  sub_29D5B1C2C();
  sub_29D557AB8(&qword_2A17A4C90, MEMORY[0x29EDC4018], MEMORY[0x29EDC4020]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for NavigationFeedItemData(0);
    v10[14] = 1;
    sub_29D5B1D6C();
    sub_29D557AB8(&qword_2A17A4120, MEMORY[0x29EDC4098], MEMORY[0x29EDC40A0]);
    sub_29D5B4C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_29D597910()
{
  result = qword_2A17A51B8;
  if (!qword_2A17A51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A51B8);
  }

  return result;
}

uint64_t type metadata accessor for NavigationFeedItemData(uint64_t a1)
{
  result = qword_2A1A18AE8;
  if (!qword_2A1A18AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NavigationFeedItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_29D5B1D6C();
  v26 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29D5B1C2C();
  v28 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v7);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D597DE0(0, &qword_2A17A51C0, MEMORY[0x29EDC9E80]);
  v33 = v9;
  v31 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for NavigationFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D597910();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v25 = v13;
  v17 = v16;
  v19 = v28;
  v18 = v29;
  v35 = 0;
  sub_29D557AB8(&qword_2A17A4CA0, MEMORY[0x29EDC4018], MEMORY[0x29EDC4028]);
  v20 = v30;
  sub_29D5B4B6C();
  v21 = *(v19 + 32);
  v24 = v17;
  v21(v17, v20, v32);
  v34 = 1;
  sub_29D557AB8(&qword_2A17A4110, MEMORY[0x29EDC4098], MEMORY[0x29EDC40B8]);
  sub_29D5B4B6C();
  (*(v31 + 8))(v12, v33);
  v22 = v24;
  (*(v26 + 32))(v24 + *(v25 + 20), v6, v18);
  sub_29D597E44(v22, v27);
  sub_29D48F668(a1);
  return sub_29D4A6020(v22);
}

void sub_29D597DE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D597910();
    v7 = a3(a1, &type metadata for NavigationFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D597E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationFeedItemData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D597F14()
{
  result = qword_2A17A51C8;
  if (!qword_2A17A51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A51C8);
  }

  return result;
}

unint64_t sub_29D597F6C()
{
  result = qword_2A17A51D0;
  if (!qword_2A17A51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A51D0);
  }

  return result;
}

unint64_t sub_29D597FC4()
{
  result = qword_2A17A51D8;
  if (!qword_2A17A51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A51D8);
  }

  return result;
}

uint64_t sub_29D598018(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D5B1BCC();
  v1 = 0;
  v2 = MEMORY[0x29EDCA190];
  while (1)
  {
    v4 = sub_29D5B1B4C();
    v5 = v4;
    v6 = v4 >> 62;
    if (v4 >> 62)
    {
      v7 = sub_29D5B485C();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = sub_29D5B485C();
      v10 = v23 + v7;
      if (__OFADD__(v23, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x29EDCA190];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_29D5B485C();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_29D5B496C();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v7)
    {
      goto LABEL_36;
    }

    v27 = v7;
    v25 = v2;
    v15 = v11 + 8 * v12 + 32;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_29D59AAE0(0, &qword_2A17A51E0, &qword_2A1A19638, 0x29EDBAD40, MEMORY[0x29EDC9A40]);
      sub_29D5A2AD0();
      for (i = 0; i != v14; ++i)
      {
        v17 = sub_29D4C764C(v26, i, v5);
        v19 = *v18;
        (v17)(v26, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      sub_29D48F51C(0, &qword_2A1A19638, 0x29EDBAD40);
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v27 >= 1)
    {
      v20 = *(v11 + 16);
      v21 = __OFADD__(v20, v27);
      v22 = v20 + v27;
      if (v21)
      {
        goto LABEL_37;
      }

      *(v11 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_29D5B485C();
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v7 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_29D598340()
{
  result = sub_29D5B3E1C();
  qword_2A1A1A7C8 = result;
  return result;
}

uint64_t sub_29D598378()
{
  result = sub_29D5B3E1C();
  qword_2A1A1A7C0 = result;
  return result;
}

void *sub_29D5983B0(uint64_t a1)
{
  v50 = a1;
  v52 = v1;
  v56 = *v1;
  sub_29D5A2EC0(0);
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A2FEC(0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v55 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v10;
  v51 = sub_29D5B13CC();
  v11 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B13EC();
  v49 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29D5B143C();
  sub_29D5A36FC(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v19 = sub_29D5B104C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D5B5E20;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, *MEMORY[0x29EDC3778], v19);
  v26 = v24 + v21;
  v27 = v49;
  v28 = v19;
  v29 = v52;
  v25(v26, *MEMORY[0x29EDC3770], v28);
  v30 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x29EDC3898], v51);
  v31 = v50;
  sub_29D5B13DC();
  v32 = OBJC_IVAR____TtC13HealthRecords25CategoryGeneratorPipeline_domain;
  (*(v27 + 32))(v29 + OBJC_IVAR____TtC13HealthRecords25CategoryGeneratorPipeline_domain, v18, v15);
  sub_29D5B141C();
  if (sub_29D5B17EC())
  {
    v33 = v53;
    sub_29D5A3A3C(v31, v53, type metadata accessor for HealthRecordsGeneratorContext);
    (*(v27 + 16))(v18, v29 + v32, v30);
    type metadata accessor for CategoryGeneratorNeedRefreshSignal();
    swift_allocObject();
    v34 = sub_29D59930C(v33, v18);
    v60 = v34[2];
    sub_29D5A3514(0, &qword_2A1A19770, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
    sub_29D5A2F70();
    v35 = sub_29D5B3B1C();
  }

  else
  {
    sub_29D53B23C();
    sub_29D5A3960(&qword_2A1A165C0, sub_29D53B23C, MEMORY[0x29EDB8AB8]);
    v36 = v45;
    sub_29D5B3A9C();
    sub_29D5A3960(&qword_2A1A16540, sub_29D5A2FEC, MEMORY[0x29EDB8AE8]);
    v37 = v47;
    v35 = sub_29D5B3B1C();
    (*(v46 + 8))(v36, v37);
    v34 = 0;
    v33 = v53;
  }

  *(v29 + OBJC_IVAR____TtC13HealthRecords25CategoryGeneratorPipeline_interactiveGenerationUpdateSignal) = v34;
  v60 = v35;
  sub_29D5A3A3C(v31, v33, type metadata accessor for HealthRecordsGeneratorContext);
  v38 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v39 = (v54 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_29D5A3AA4(v33, v40 + v38, type metadata accessor for HealthRecordsGeneratorContext);
  *(v40 + v39) = v56;
  sub_29D5A3514(0, &qword_2A1A19770, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
  sub_29D4A02FC(0, &qword_2A1A19818, MEMORY[0x29EDC3C90]);
  sub_29D5A2F70();

  v41 = v57;
  sub_29D5B3B7C();

  sub_29D5A3960(&qword_2A1A16EF0, sub_29D5A2EC0, MEMORY[0x29EDB8908]);
  v42 = v59;
  v43 = sub_29D5B3B1C();

  sub_29D5A3B0C(v31, type metadata accessor for HealthRecordsGeneratorContext);
  (*(v58 + 8))(v41, v42);
  v29[2] = v43;
  return v29;
}

uint64_t *sub_29D598BA4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t **a4@<X8>)
{
  v54 = a3;
  v57 = a4;
  v6 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v56 = &v52 - v12;
  v13 = sub_29D5B371C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v22 = &v52 - v21;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v52 - v24;
  v55 = *a1;
  if (v55 != 1)
  {
    sub_29D5B36AC();
    v26 = sub_29D5B370C();
    v29 = sub_29D5B429C();
    if (!os_log_type_enabled(v26, v29))
    {
      goto LABEL_8;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_29D48C000, v26, v29, "CategoryGeneratorPipeline expanding categories", v28, 2u);
    goto LABEL_6;
  }

  sub_29D5B36AC();
  v26 = sub_29D5B370C();
  v27 = sub_29D5B429C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_29D48C000, v26, v27, "CategoryGeneratorPipeline collapsing categories", v28, 2u);
    v22 = v25;
LABEL_6:
    MEMORY[0x29ED5FB80](v28, -1, -1);
    goto LABEL_8;
  }

  v22 = v25;
LABEL_8:

  v30 = *(v14 + 8);
  v30(v22, v13);
  sub_29D5B36AC();
  v31 = sub_29D5B370C();
  v32 = sub_29D5B429C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v58 = v34;
    *v33 = 136446466;
    v59[0] = v54;
    swift_getMetatypeMetadata();
    v35 = sub_29D5B3E7C();
    v54 = v10;
    v36 = a2;
    v38 = sub_29D501890(v35, v37, &v58);
    v53 = v13;
    v39 = v38;

    *(v33 + 4) = v39;
    *(v33 + 12) = 2082;
    v59[0] = type metadata accessor for CategoryGenerator(0);
    sub_29D4F33DC(0);
    v40 = sub_29D5B3E7C();
    v42 = sub_29D501890(v40, v41, &v58);

    *(v33 + 14) = v42;
    a2 = v36;
    v10 = v54;
    _os_log_impl(&dword_29D48C000, v31, v32, "[%{public}s]: Emitting %{public}s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v34, -1, -1);
    MEMORY[0x29ED5FB80](v33, -1, -1);

    v43 = v18;
    v44 = v53;
  }

  else
  {

    v43 = v18;
    v44 = v13;
  }

  v30(v43, v44);
  v45 = v56;
  sub_29D5A3A3C(a2, v56, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D5A3A3C(a2, v10, type metadata accessor for HealthRecordsGeneratorContext);
  type metadata accessor for CategoryDataProvider(0);
  v46 = swift_allocObject();
  sub_29D5A3A3C(v10, &v46[OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_context], type metadata accessor for HealthRecordsGeneratorContext);
  v46[OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_collapseCategories] = v55;
  sub_29D5B140C();
  sub_29D499EC0(v59, v59[3]);
  sub_29D5B136C();
  sub_29D5B243C();
  swift_allocObject();
  v47 = sub_29D5B241C();
  sub_29D5A3B0C(v10, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D48F668(v59);
  *&v46[OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_countProvider] = v47;
  v48 = type metadata accessor for CategoryGenerator(0);
  swift_allocObject();
  v49 = sub_29D4F2C74(v45, v46);

  v50 = v57;
  v57[3] = v48;
  result = sub_29D5A3960(qword_2A1A1A070, type metadata accessor for CategoryGenerator, &unk_29D5B820C);
  v50[4] = result;
  *v50 = v49;
  return result;
}

uint64_t sub_29D59910C()
{

  v1 = OBJC_IVAR____TtC13HealthRecords25CategoryGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29D5991E8(uint64_t a1)
{
  result = sub_29D5B13EC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D599290@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords25CategoryGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_29D59930C(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v75 = a1;
  sub_29D5A312C(0);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B446C();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A35D4(0);
  v10 = *(v9 - 8);
  v65 = v9;
  v66 = v10;
  MEMORY[0x2A1C7C4A8](v9, v11);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B7310(0);
  v63 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B73D4(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v2;
  v2[8] = MEMORY[0x29EDCA1A0];
  v24 = v2 + 8;
  v25 = MEMORY[0x29EDB8A60];
  sub_29D5A3514(0, &qword_2A1A16620, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDB8A60]);
  swift_allocObject();
  v26 = sub_29D5B39DC();
  v2[6] = v26;
  LOBYTE(v76[0]) = 1;
  sub_29D5A3514(0, &qword_2A1A16648, MEMORY[0x29EDC9A98], v25);
  swift_allocObject();

  v27 = sub_29D5B39DC();
  v2[7] = v27;
  v28 = objc_allocWithZone(sub_29D5B247C());

  v29 = sub_29D5B246C();
  v2[3] = v29;
  v30 = v29;
  sub_29D5B245C();

  v31 = MEMORY[0x29EDB8AF8];
  sub_29D5A3960(&qword_2A1A19728, sub_29D4B73D4, MEMORY[0x29EDB8AF8]);

  sub_29D5B3C4C();

  (*(v20 + 8))(v23, v19);
  swift_beginAccess();
  sub_29D5B399C();
  swift_endAccess();

  v32 = objc_allocWithZone(sub_29D5B19DC());
  v33 = sub_29D5B19CC();
  *(v24 - 4) = v33;
  v34 = v33;
  sub_29D5B19BC();

  sub_29D5A3960(&qword_2A1A19738, sub_29D4B7310, v31);

  v35 = v63;
  sub_29D5B3C4C();

  (*(v14 + 8))(v17, v35);
  swift_beginAccess();
  sub_29D5B399C();
  swift_endAccess();

  sub_29D5B140C();
  v36 = v77;
  v37 = v78;
  sub_29D499EC0(v76, v77);
  v38 = sub_29D4C9C8C(v36, v37);
  v39 = [v38 healthStore];

  type metadata accessor for IngestNotificationObserver(0);
  swift_allocObject();
  v40 = sub_29D59A4C0(v39);
  sub_29D48F668(v76);
  *(v24 - 3) = v40;
  swift_beginAccess();
  sub_29D5A36FC(0, &qword_2A1A19708, sub_29D543274, MEMORY[0x29EDB8B00]);

  v41 = v64;
  sub_29D5B3ACC();
  swift_endAccess();

  sub_29D5A3960(&qword_2A1A19718, sub_29D5A35D4, v31);

  v42 = v65;
  sub_29D5B3C4C();

  (*(v66 + 8))(v41, v42);
  swift_beginAccess();
  sub_29D5B399C();
  swift_endAccess();

  v43 = objc_opt_self();
  v44 = [v43 defaultCenter];
  if (qword_2A1A19618 != -1)
  {
    swift_once();
  }

  v45 = v67;
  sub_29D5B447C();

  sub_29D5A3960(&qword_2A1A19608, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);

  v46 = v69;
  sub_29D5B3C4C();

  v47 = *(v68 + 8);
  v47(v45, v46);
  swift_beginAccess();
  sub_29D5B399C();
  swift_endAccess();

  v48 = [v43 defaultCenter];
  if (qword_2A1A19610 != -1)
  {
    swift_once();
  }

  sub_29D5B447C();

  sub_29D5B3C4C();

  v47(v45, v46);
  swift_beginAccess();
  sub_29D5B399C();
  swift_endAccess();

  v49 = v73;
  v50 = v75;
  v51 = sub_29D5B146C();
  v52 = swift_allocObject();
  v52[2] = v27;
  v52[3] = v26;
  v52[4] = v51;
  sub_29D5A31C0(0);
  sub_29D5A3960(&qword_2A1A16E30, sub_29D5A31C0, MEMORY[0x29EDB8908]);

  v53 = v51;
  v54 = v70;
  sub_29D5B3A9C();
  sub_29D5A3960(&qword_2A1A16560, sub_29D5A312C, MEMORY[0x29EDB8AE8]);
  v55 = v72;
  v56 = sub_29D5B3B1C();
  (*(v71 + 8))(v54, v55);
  v57 = v74;
  v74[2] = v56;
  [*(v50 + *(type metadata accessor for HealthRecordsGeneratorContext(0) + 20)) addAccountStateChangeListener_];
  sub_29D5B140C();
  v58 = v77;
  v59 = v78;
  sub_29D499EC0(v76, v77);
  v60 = sub_29D4C9C8C(v58, v59);
  [v60 addHealthRecordsSupportedChangeListener_];

  v61 = sub_29D5B13EC();
  (*(*(v61 - 8) + 8))(v49, v61);
  sub_29D5A3B0C(v50, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D48F668(v76);
  return v57;
}

uint64_t sub_29D599E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v48 = a4;
  sub_29D4B6D20(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B43DC();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A33F0(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A335C(0);
  v40 = v18;
  v43 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v37 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A325C(0);
  v22 = *(v21 - 8);
  v44 = v21;
  v45 = v22;
  MEMORY[0x2A1C7C4A8](v21, v23);
  v38 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v50 = a1;
  v25 = MEMORY[0x29EDC9A98];
  v26 = MEMORY[0x29EDB8A60];
  sub_29D5A3514(0, &qword_2A1A16648, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
  v27 = MEMORY[0x29EDCA180];
  sub_29D5A3514(0, &qword_2A1A16620, MEMORY[0x29EDCA180] + 8, v26);
  v28 = MEMORY[0x29EDB8A70];
  sub_29D5A357C(&qword_2A1A16650, &qword_2A1A16648, v25, MEMORY[0x29EDB8A70]);
  sub_29D5A357C(&qword_2A1A16628, &qword_2A1A16620, v27 + 8, v28);
  sub_29D5B3B6C();
  sub_29D5B145C();
  v29 = v37;
  sub_29D5B378C();
  (*(v14 + 8))(v17, v13);
  v30 = v39;
  sub_29D5B43CC();
  v50 = v42;
  v31 = sub_29D5B43BC();
  v32 = v41;
  (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  sub_29D48F51C(0, &qword_2A1A1A420, 0x29EDCA548);
  sub_29D5A3960(&qword_2A1A16C98, sub_29D5A335C, MEMORY[0x29EDB8958]);
  sub_29D4DC4A0(&qword_2A1A19620, &qword_2A1A1A420, 0x29EDCA548, MEMORY[0x29EDCA280]);
  v33 = v38;
  v34 = v40;
  sub_29D5B3C2C();
  sub_29D5A3B0C(v32, sub_29D4B6D20);
  (*(v46 + 8))(v30, v47);
  (*(v43 + 8))(v29, v34);
  sub_29D5A3960(&qword_2A1A16930, sub_29D5A325C, MEMORY[0x29EDB89B8]);
  v35 = v44;
  sub_29D5B3B7C();
  return (*(v45 + 8))(v33, v35);
}

uint64_t sub_29D59A3A4()
{

  return v0;
}

uint64_t sub_29D59A3F4()
{
  sub_29D59A3A4();

  return swift_deallocClassInstance();
}

uint64_t sub_29D59A448()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5B3ADC();

  return v1;
}

uint64_t sub_29D59A4C0(void *a1)
{
  sub_29D5A36FC(0, &qword_2A1A19708, sub_29D543274, MEMORY[0x29EDB8B00]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC13HealthRecordsP33_58E67717502C03A3033511F5D7C86B9726IngestNotificationObserver__ingestUpdate;
  v14 = 0;
  v15 = -1;
  sub_29D543274(0);
  sub_29D5B3ABC();
  (*(v5 + 32))(v1 + v9, v8, v4);
  *(v1 + OBJC_IVAR____TtC13HealthRecordsP33_58E67717502C03A3033511F5D7C86B9726IngestNotificationObserver_observerToken) = 0;
  *(v1 + 16) = a1;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = a1;

  v12 = sub_29D59A924(sub_29D5A3760, v10);

  *(v1 + OBJC_IVAR____TtC13HealthRecordsP33_58E67717502C03A3033511F5D7C86B9726IngestNotificationObserver_observerToken) = v12;

  return v1;
}

uint64_t sub_29D59A66C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC13HealthRecordsP33_58E67717502C03A3033511F5D7C86B9726IngestNotificationObserver_observerToken))
  {

    sub_29D5B1EDC();
  }

  v2 = OBJC_IVAR____TtC13HealthRecordsP33_58E67717502C03A3033511F5D7C86B9726IngestNotificationObserver__ingestUpdate;
  sub_29D5A36FC(0, &qword_2A1A19708, sub_29D543274, MEMORY[0x29EDB8B00]);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_29D59A7A0(uint64_t a1)
{
  sub_29D5A36FC(319, &qword_2A1A19708, sub_29D543274, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29D59A878(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D543200(a1);
    return sub_29D5B3AEC();
  }

  return result;
}

uint64_t sub_29D59A924(unint64_t a1, void *a2)
{
  v2 = sub_29D5B1B2C();
  v3 = sub_29D598018(v2);

  v13 = MEMORY[0x29EDCA1A0];
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x29ED5EF30](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_29D59C2F4(&v12, [v6 sampleType], &qword_2A1A19660, 0x29EDBAD78, &qword_2A1A195F8, &qword_2A1A19658);

      ++v5;
      if (v8 == i)
      {
        v9 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v9 = MEMORY[0x29EDCA1A0];
LABEL_15:

  sub_29D59AC60(v9);

  v10 = sub_29D5B424C();

  return v10;
}

void sub_29D59AAE0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D48F51C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D59AB48@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5B3ADC();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29D59ABD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29D5A2B54(v2, v3);
  return sub_29D5B3AEC();
}

uint64_t sub_29D59AC60(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_29D5B485C();
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v3 = sub_29D5173F0();

    v1 = sub_29D5A287C(&v5, (v3 + 32), v2, v1);
    sub_29D4B30C0(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

uint64_t sub_29D59AD10(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  v8 = sub_29D5B4D9C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_29D5B4C7C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_29D5A05E4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29D59AE60(uint64_t a1, void *a2)
{
  v3 = v2;
  v20 = a1;
  v5 = type metadata accessor for SharedConceptFeedItemData(0);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  sub_29D5B4D4C();
  sub_29D4D533C(v21);
  v11 = sub_29D5B4D9C();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v6 + 72);
    while (1)
    {
      sub_29D5A3A3C(*(v10 + 48) + v15 * v13, v9, type metadata accessor for SharedConceptFeedItemData);
      v16 = sub_29D4DC6AC(v9, a2);
      sub_29D5A3B0C(v9, type metadata accessor for SharedConceptFeedItemData);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_29D5A3B0C(a2, type metadata accessor for SharedConceptFeedItemData);
    sub_29D5A3A3C(*(v10 + 48) + v15 * v13, v20, type metadata accessor for SharedConceptFeedItemData);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_29D5A3A3C(a2, v9, type metadata accessor for SharedConceptFeedItemData);
    v21[0] = *v3;
    sub_29D5A0764(v9, v13, isUniquelyReferenced_nonNull_native);
    v18 = v20;
    *v3 = v21[0];
    sub_29D5A3AA4(a2, v18, type metadata accessor for SharedConceptFeedItemData);
    return 1;
  }
}

uint64_t sub_29D59B0A0(double *a1, double *a2)
{
  v123 = a1;
  v4 = MEMORY[0x29EDBA1D0];
  sub_29D59AAE0(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10, MEMORY[0x29EDBA1D0]);
  v129 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v121 = &v118 - v8;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48(0);
  v128 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v132 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SharedConceptCodedValue(0);
  v134 = *(v16 - 8);
  v135 = v16;
  v18 = MEMORY[0x2A1C7C4A8](v16, v17);
  v140 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v139 = &v118 - v21;
  sub_29D59AAE0(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, v4);
  v23 = v22;
  v24 = *(v22 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v147 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v118 - v29;
  v122 = v2;
  v31 = *v2;
  sub_29D5B4D4C();
  sub_29D4D62E4(v154);
  v32 = sub_29D5B4D9C();
  v33 = v31 + 56;
  v34 = -1 << *(v31 + 32);
  v35 = v32 & ~v34;
  v36 = *(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35;
  v144 = a2;
  if ((v36 & 1) == 0)
  {
LABEL_63:
    v102 = v122;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v152[0] = *v102;
    v104 = v144;
    sub_29D4B4604(v144, v154);
    sub_29D5A09A8(v104, v35, isUniquelyReferenced_nonNull_native);
    *v102 = *&v152[0];
    v105 = *(v104 + 3);
    v106 = v123;
    *(v123 + 2) = *(v104 + 2);
    *(v106 + 3) = v105;
    *(v106 + 4) = *(v104 + 4);
    v106[10] = v104[10];
    v107 = *(v104 + 1);
    result = 1;
    *v106 = *v104;
    *(v106 + 1) = v107;
    return result;
  }

  v120 = v12;
  v37 = ~v34;
  v145 = *a2;
  v146 = v24 + 16;
  v38 = v6;
  v39 = (v24 + 8);
  v40 = *(v145 + 16);
  v148 = v24;
  v149 = v40;
  v127 = (v38 + 48);
  v118 = (v38 + 32);
  v119 = (v38 + 8);
  v137 = v31 + 56;
  v138 = v31;
  v150 = v30;
  v136 = v37;
  while (1)
  {
    v41 = *(v31 + 48) + 88 * v35;
    v42 = *(v41 + 16);
    *v154 = *v41;
    *&v154[16] = v42;
    v43 = *(v41 + 32);
    v44 = *(v41 + 48);
    v45 = *(v41 + 64);
    *&v156[16] = *(v41 + 80);
    v155 = v44;
    *v156 = v45;
    *&v154[32] = v43;
    v46 = *v154;
    if (*(*v154 + 16) != v149)
    {
      goto LABEL_7;
    }

    v143 = v35;
    if (v149 && *v154 != v145)
    {
      v47 = (*(v148 + 80) + 32) & ~*(v148 + 80);
      v48 = *v154 + v47;
      v49 = v145 + v47;
      sub_29D4B4604(v154, v152);
      v50 = 0;
      while (v50 < *(v46 + 16))
      {
        v51 = *(v148 + 72) * v50;
        v52 = *(v148 + 16);
        v52(v30, v48 + v51, v23);
        if (v50 >= *(v145 + 16))
        {
          goto LABEL_65;
        }

        v53 = v147;
        v52(v147, v49 + v51, v23);
        sub_29D5A38A0(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
        v54 = sub_29D5B3E0C();
        v55 = *v39;
        v56 = v53;
        v30 = v150;
        (*v39)(v56, v23);
        v55(v30, v23);
        if ((v54 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (v149 == ++v50)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      sub_29D4B4660(v154);
      v35 = v143;
      v31 = v138;
LABEL_67:
      sub_29D4B4660(v144);
      v108 = *(v31 + 48) + 88 * v35;
      v109 = *(v108 + 16);
      v152[0] = *v108;
      v152[1] = v109;
      v111 = *(v108 + 48);
      v110 = *(v108 + 64);
      v112 = *(v108 + 80);
      v152[2] = *(v108 + 32);
      v153 = v112;
      v152[3] = v111;
      v152[4] = v110;
      v113 = *(v108 + 16);
      v114 = v123;
      *v123 = *v108;
      *(v114 + 1) = v113;
      v115 = *(v108 + 32);
      v116 = *(v108 + 48);
      v117 = *(v108 + 64);
      v114[10] = *(v108 + 80);
      *(v114 + 3) = v116;
      *(v114 + 4) = v117;
      *(v114 + 2) = v115;
      sub_29D4B4604(v152, &v151);
      return 0;
    }

    sub_29D4B4604(v154, v152);
LABEL_18:
    if (*&v154[8] != *(v144 + 1) && (sub_29D5B4C7C() & 1) == 0 || (result = *&v154[24], *&v154[24] != *(v144 + 3)) && (result = sub_29D5B4C7C(), (result & 1) == 0) || (v58 = *&v154[40], v59 = *(v144 + 5), v60 = *(*&v154[40] + 16), v60 != *(v59 + 16)))
    {
LABEL_6:
      sub_29D4B4660(v154);
      v35 = v143;
      v33 = v137;
      v31 = v138;
      v37 = v136;
      goto LABEL_7;
    }

    if (v60 && *&v154[40] != v59)
    {
      break;
    }

LABEL_57:
    if (v155 != *(v144 + 3) && (sub_29D5B4C7C() & 1) == 0 || *v156 != v144[8])
    {
      goto LABEL_6;
    }

    if (*&v156[8] == *(v144 + 9))
    {
      goto LABEL_66;
    }

    v101 = sub_29D5B4C7C();
    sub_29D4B4660(v154);
    v35 = v143;
    v33 = v137;
    v31 = v138;
    v37 = v136;
    if (v101)
    {
      goto LABEL_67;
    }

LABEL_7:
    v35 = (v35 + 1) & v37;
    if (((*(v33 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v61 = 0;
  v62 = (*(v134 + 80) + 32) & ~*(v134 + 80);
  v130 = v59 + v62;
  v131 = *&v154[40] + v62;
  v125 = v59;
  v126 = *&v154[40];
  v124 = v60;
  while (v61 < *(v58 + 16))
  {
    v63 = *(v134 + 72) * v61;
    v64 = v139;
    result = sub_29D5A3A3C(v131 + v63, v139, type metadata accessor for SharedConceptCodedValue);
    if (v61 >= *(v59 + 16))
    {
      goto LABEL_71;
    }

    v133 = v61;
    v65 = v130 + v63;
    v66 = v140;
    result = sub_29D5A3A3C(v65, v140, type metadata accessor for SharedConceptCodedValue);
    v67 = *v64;
    v68 = *v66;
    v69 = *(*v64 + 16);
    if (v69 != *(*v66 + 16))
    {
      goto LABEL_5;
    }

    if (v69 && v67 != v68)
    {
      v70 = 0;
      v71 = (*(v148 + 80) + 32) & ~*(v148 + 80);
      v141 = v68 + v71;
      v142 = v67 + v71;
      while (v70 < *(v67 + 16))
      {
        v72 = *(v148 + 72) * v70;
        v73 = *(v148 + 16);
        result = v73(v30, v142 + v72, v23);
        if (v70 >= *(v68 + 16))
        {
          goto LABEL_69;
        }

        v74 = v147;
        v73(v147, v141 + v72, v23);
        sub_29D5A38A0(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
        v75 = sub_29D5B3E0C();
        v76 = *v39;
        v77 = v74;
        v30 = v150;
        (*v39)(v77, v23);
        result = (v76)(v30, v23);
        if ((v75 & 1) == 0)
        {
          goto LABEL_5;
        }

        if (v69 == ++v70)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
      break;
    }

LABEL_36:
    v78 = v135[5];
    v79 = *(v128 + 48);
    v80 = v132;
    sub_29D5A3A3C(v139 + v78, v132, sub_29D4A05F4);
    sub_29D5A3A3C(v140 + v78, v80 + v79, sub_29D4A05F4);
    v81 = *v127;
    v82 = v129;
    if ((*v127)(v80, 1, v129) == 1)
    {
      if (v81(v80 + v79, 1, v82) != 1)
      {
        goto LABEL_4;
      }

      sub_29D5A3B0C(v80, sub_29D4A05F4);
    }

    else
    {
      v83 = v120;
      sub_29D5A3A3C(v80, v120, sub_29D4A05F4);
      if (v81(v80 + v79, 1, v82) == 1)
      {
        (*v119)(v83, v82);
LABEL_4:
        sub_29D5A3B0C(v80, sub_29D4DCD48);
LABEL_5:
        sub_29D5A3B0C(v140, type metadata accessor for SharedConceptCodedValue);
        sub_29D5A3B0C(v139, type metadata accessor for SharedConceptCodedValue);
        goto LABEL_6;
      }

      v84 = v80 + v79;
      v85 = v121;
      (*v118)(v121, v84, v82);
      sub_29D5712A8();
      v86 = sub_29D5B3E0C();
      v87 = *v119;
      (*v119)(v85, v82);
      v87(v83, v82);
      sub_29D5A3B0C(v132, sub_29D4A05F4);
      if ((v86 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v88 = v135[6];
    v89 = (v139 + v88);
    v90 = *(v139 + v88 + 8);
    v91 = (v140 + v88);
    v92 = v91[1];
    if (v90)
    {
      if (!v92 || (*v89 != *v91 || v90 != v92) && (sub_29D5B4C7C() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (v92)
    {
      goto LABEL_5;
    }

    v93 = v135[7];
    v94 = v139;
    v95 = (v139 + v93);
    v96 = *(v139 + v93 + 8);
    v97 = (v140 + v93);
    v98 = v97[1];
    if (!v96)
    {
      v59 = v125;
      v58 = v126;
      v99 = v124;
      v100 = v133;
      LODWORD(v142) = v98 == 0;
      goto LABEL_55;
    }

    if (!v98)
    {
      goto LABEL_5;
    }

    v58 = v126;
    if (*v95 != *v97 || v96 != v98)
    {
      LODWORD(v142) = sub_29D5B4C7C();
      v94 = v139;
      v99 = v124;
      v59 = v125;
      v100 = v133;
LABEL_55:
      sub_29D5A3B0C(v140, type metadata accessor for SharedConceptCodedValue);
      result = sub_29D5A3B0C(v94, type metadata accessor for SharedConceptCodedValue);
      if ((v142 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_56;
    }

    sub_29D5A3B0C(v140, type metadata accessor for SharedConceptCodedValue);
    result = sub_29D5A3B0C(v139, type metadata accessor for SharedConceptCodedValue);
    v99 = v124;
    v59 = v125;
    v100 = v133;
LABEL_56:
    v61 = v100 + 1;
    if (v61 == v99)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_29D59BD10(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29D5B16BC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_29D5A3960(&qword_2A17A5200, MEMORY[0x29EDC3948], MEMORY[0x29EDC3950]);
  v34 = a2;
  v12 = sub_29D5B3D8C();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_29D5A3960(&qword_2A17A5208, MEMORY[0x29EDC3948], MEMORY[0x29EDC3958]);
      v22 = sub_29D5B3E0C();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_29D5A17D0(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_29D59BFF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29D5B12DC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_29D5A3960(&qword_2A17A5198, MEMORY[0x29EDC3828], MEMORY[0x29EDC3830]);
  v34 = a2;
  v12 = sub_29D5B3D8C();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_29D5A3960(&qword_2A17A5218, MEMORY[0x29EDC3828], MEMORY[0x29EDC3838]);
      v22 = sub_29D5B3E0C();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_29D5A1A9C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_29D59C2F4(uint64_t *a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_29D5B486C();

    if (v17)
    {

      sub_29D48F51C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_29D5B485C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_29D5A0348(v15, result + 1, a5, a3, a4, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_29D59FA8C(v28 + 1, a5, a3, a4, a6);
        }

        v29 = v16;
        sub_29D5A0560(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_29D48F51C(0, a3, a4);
    v19 = sub_29D5B464C();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_29D5B465C();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_29D5A1D68(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_29D59C570(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_29D5A3960(&qword_2A1A19800, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FC8]);
  v34 = a2;
  v12 = sub_29D5B3D8C();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_29D5A3960(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
      v22 = sub_29D5B3E0C();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_29D5A1F10(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_29D59C850(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_29D5A3960(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  v34 = a2;
  v12 = sub_29D5B3D8C();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_29D5A3960(&qword_2A17A4848, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v22 = sub_29D5B3E0C();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_29D5A21DC(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

void *sub_29D59CB30()
{
  v1 = v0;
  sub_29D50CFDC();
  v2 = *v0;
  v3 = sub_29D5B48DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_29D59CC80()
{
  v1 = v0;
  v2 = type metadata accessor for SharedConceptFeedItemData(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A3B6C(0);
  v7 = *v0;
  v8 = sub_29D5B48DC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_29D5A3A3C(*(v7 + 48) + v22, v6, type metadata accessor for SharedConceptFeedItemData);
        result = sub_29D5A3AA4(v6, *(v9 + 48) + v22, type metadata accessor for SharedConceptFeedItemData);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void *sub_29D59CE7C()
{
  v1 = v0;
  sub_29D57136C(0);
  v2 = *v0;
  v3 = sub_29D5B48DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_29D4B4604(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 10);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x58uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_29D59D00C(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_29D5A376C(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_29D5B48DC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_29D59D160(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v25 - v8;
  a2(0);
  v10 = *v2;
  v11 = sub_29D5B48DC();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v4;
    result = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 56 + 8 * v14)
    {
      result = memmove(result, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    v27 = v6 + 32;
    for (i = v6 + 16; v19; result = (*(v6 + 32))(*(v12 + 48) + v24, v9, v5))
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = *(v6 + 72) * (v21 | (v16 << 6));
      (*(v6 + 16))(v9, *(v10 + 48) + v24, v5);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v4 = v26;
        goto LABEL_21;
      }

      v23 = *(v10 + 56 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v12;
  }

  return result;
}

uint64_t sub_29D59D394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D50CFDC();
  result = sub_29D5B48EC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_29D5B4D4C();

      sub_29D5B3EFC();
      result = sub_29D5B4D9C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_29D59D5C0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SharedConceptFeedItemData(0);
  v23 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_29D5A3B6C(0);
  result = sub_29D5B48EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v22 = v1;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    for (i = result + 56; v13; ++*(v9 + 16))
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v19 = *(v23 + 72);
      sub_29D5A3A3C(*(v7 + 48) + v19 * (v16 | (v10 << 6)), v6, type metadata accessor for SharedConceptFeedItemData);
      sub_29D5B4D4C();
      sub_29D4D533C(v24);
      sub_29D5B4D9C();
      v20 = sub_29D5B47FC();
      *(i + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_29D5A3AA4(v6, *(v9 + 48) + v20 * v19, type metadata accessor for SharedConceptFeedItemData);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v2 = v22;
        goto LABEL_16;
      }

      v18 = *(v7 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v9;
  }

  return result;
}

unint64_t sub_29D59D81C(uint64_t a1)
{
  v2 = v1;
  sub_29D59AAE0(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, MEMORY[0x29EDBA1D0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v40 - v7;
  v9 = *v1;
  sub_29D57136C(0);
  result = sub_29D5B48EC();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = *(v9 + 56);
    v41 = v2;
    v42 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v44 = v5;
    v45 = result + 56;
    v46 = v17;
    v47 = result;
    v48 = v9;
    v43 = (v5 + 8);
    v51 = v5 + 16;
    while (v16)
    {
      v25 = __clz(__rbit64(v16));
      v49 = (v16 - 1) & v16;
LABEL_17:
      v50 = v12;
      v28 = *(v9 + 48) + 88 * (v25 | (v12 << 6));
      v30 = *(v28 + 48);
      v29 = *(v28 + 64);
      v31 = *(v28 + 32);
      v59 = *(v28 + 80);
      v57 = v30;
      v58 = v29;
      v56 = v31;
      v32 = *(v28 + 16);
      v54 = *v28;
      v55 = v32;
      sub_29D5B4D4C();
      v33 = v54;
      MEMORY[0x29ED5F330](*(v54 + 16));
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v44;
        v36 = v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        sub_29D4B4604(&v54, v52);
        v37 = *(v35 + 72);
        v38 = *(v35 + 16);
        v39 = v43;
        do
        {
          v38(v8, v36, v4);
          sub_29D5A38A0(&qword_2A17A41B0, &qword_2A17A41B8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
          sub_29D5B3D9C();
          (*v39)(v8, v4);
          v36 += v37;
          --v34;
        }

        while (v34);
      }

      else
      {
        sub_29D4B4604(&v54, v52);
      }

      sub_29D5B3EFC();
      sub_29D5B3EFC();
      sub_29D4DB620(&v53, *(&v56 + 1));
      sub_29D5B3EFC();
      v18 = *&v58;
      if (*&v58 == 0.0)
      {
        v18 = 0.0;
      }

      MEMORY[0x29ED5F360](*&v18);
      sub_29D5B3EFC();
      sub_29D5B4D9C();
      v11 = v47;
      v19 = v45;
      result = sub_29D5B47FC();
      *(v19 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v20 = *(v11 + 48) + 88 * result;
      v21 = v55;
      *v20 = v54;
      *(v20 + 16) = v21;
      v22 = v56;
      v23 = v57;
      v24 = v58;
      *(v20 + 80) = v59;
      *(v20 + 48) = v23;
      *(v20 + 64) = v24;
      *(v20 + 32) = v22;
      ++*(v11 + 16);
      v9 = v48;
      v16 = v49;
      v17 = v46;
      v12 = v50;
    }

    v26 = v12;
    while (1)
    {
      v12 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v41;
        goto LABEL_23;
      }

      v27 = *(v42 + 8 * v12);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v49 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_29D59DC2C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_29D5B16BC();
  v3 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_29D5A380C(0);
  v8 = sub_29D5B48EC();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_29D5A3960(&qword_2A17A5200, MEMORY[0x29EDC3948], MEMORY[0x29EDC3950]);
      result = sub_29D5B3D8C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_29D59DF3C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_29D5B12DC();
  v3 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_29D5A39A8(0);
  v8 = sub_29D5B48EC();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_29D5A3960(&qword_2A17A5198, MEMORY[0x29EDC3828], MEMORY[0x29EDC3830]);
      result = sub_29D5B3D8C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_29D59E24C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29D5A376C(0, a2, a3, a4, a5);
  result = sub_29D5B48EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_29D5B464C();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v9;
  }

  return result;
}

uint64_t sub_29D59E454(uint64_t a1)
{
  v2 = v1;
  v34 = sub_29D5B1BCC();
  v3 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_29D5711B4(0);
  v8 = sub_29D5B48EC();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_29D5A3960(&qword_2A1A19800, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FC8]);
      result = sub_29D5B3D8C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_29D59E764(uint64_t a1)
{
  v2 = v1;
  v34 = sub_29D5B0EDC();
  v3 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_29D5A2B6C(0);
  v8 = sub_29D5B48EC();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_29D5A3960(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      result = sub_29D5B3D8C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_29D59EA74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D50CFDC();
  result = sub_29D5B48EC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_29D5B4D4C();
      sub_29D5B3EFC();
      result = sub_29D5B4D9C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_29D59ECC8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SharedConceptFeedItemData(0);
  v27 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_29D5A3B6C(0);
  result = sub_29D5B48EC();
  v8 = result;
  if (*(v6 + 16))
  {
    v24 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v25 = result + 56;
    for (i = v26; v13; ++*(v8 + 16))
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v19 = *(v27 + 72);
      sub_29D5A3AA4(*(v6 + 48) + v19 * (v16 | (v9 << 6)), i, type metadata accessor for SharedConceptFeedItemData);
      sub_29D5B4D4C();
      sub_29D4D533C(v28);
      sub_29D5B4D9C();
      v20 = v25;
      v21 = sub_29D5B47FC();
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_29D5A3AA4(i, *(v8 + 48) + v21 * v19, type metadata accessor for SharedConceptFeedItemData);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v22 = 1 << *(v6 + 32);
    if (v22 >= 64)
    {
      bzero((v6 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v22;
    }

    v2 = v24;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

void *sub_29D59EF58(uint64_t a1)
{
  v2 = v1;
  sub_29D59AAE0(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, MEMORY[0x29EDBA1D0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v48 - v7;
  v9 = *v1;
  sub_29D57136C(0);
  v10 = sub_29D5B48EC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v49 = v1;
    v12 = 0;
    v13 = *(v9 + 56);
    v50 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v18 = v5 + 16;
    v51 = v5;
    v19 = (v5 + 8);
    v52 = v10 + 56;
    v53 = v17;
    v55 = v9;
    v54 = v10;
    v67 = v18;
    while (v16)
    {
      v30 = __clz(__rbit64(v16));
      v59 = (v16 - 1) & v16;
LABEL_17:
      v34 = *(v9 + 48) + 88 * (v30 | (v12 << 6));
      v36 = *v34;
      v35 = *(v34 + 8);
      v37 = *(v34 + 24);
      v65 = *(v34 + 16);
      v66 = v35;
      v64 = v37;
      v38 = *(v34 + 32);
      v62 = *(v34 + 40);
      v63 = v38;
      v39 = *(v34 + 56);
      v61 = *(v34 + 48);
      v58 = v39;
      v40 = *(v34 + 64);
      v42 = *(v34 + 72);
      v41 = *(v34 + 80);
      v57 = v42;
      v56 = v41;
      sub_29D5B4D4C();
      MEMORY[0x29ED5F330](*(v36 + 16));
      v60 = v36;
      v43 = *(v36 + 16);
      if (v43)
      {
        v44 = v60 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
        v45 = *(v51 + 72);
        v46 = *(v51 + 16);
        do
        {
          v46(v8, v44, v4);
          sub_29D5A38A0(&qword_2A17A41B0, &qword_2A17A41B8, MEMORY[0x29EDCA2F0], MEMORY[0x29EDBA1E0]);
          sub_29D5B3D9C();
          (*v19)(v8, v4);
          v44 += v45;
          --v43;
        }

        while (v43);
      }

      sub_29D5B3EFC();
      sub_29D5B3EFC();
      sub_29D4DB620(v68, v62);
      v20 = v58;
      sub_29D5B3EFC();
      if (v40 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v40;
      }

      MEMORY[0x29ED5F360](*&v21);
      v22 = v57;
      v23 = v56;
      sub_29D5B3EFC();
      sub_29D5B4D9C();
      v11 = v54;
      v24 = v52;
      v25 = sub_29D5B47FC();
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = *(v11 + 48) + 88 * v25;
      v27 = v66;
      *v26 = v60;
      *(v26 + 8) = v27;
      v28 = v64;
      *(v26 + 16) = v65;
      *(v26 + 24) = v28;
      v29 = v62;
      *(v26 + 32) = v63;
      *(v26 + 40) = v29;
      *(v26 + 48) = v61;
      *(v26 + 56) = v20;
      *(v26 + 64) = v40;
      *(v26 + 72) = v22;
      *(v26 + 80) = v23;
      ++*(v11 + 16);
      v9 = v55;
      v17 = v53;
      v16 = v59;
    }

    v31 = v12;
    result = v50;
    while (1)
    {
      v12 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v12 >= v17)
      {
        break;
      }

      v33 = v50[v12];
      ++v31;
      if (v33)
      {
        v30 = __clz(__rbit64(v33));
        v59 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    v47 = 1 << *(v9 + 32);
    if (v47 >= 64)
    {
      bzero(v50, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v50 = -1 << v47;
    }

    v2 = v49;
    *(v9 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_29D59F3EC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_29D5B16BC();
  v3 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_29D5A380C(0);
  result = sub_29D5B48EC();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_29D5A3960(&qword_2A17A5200, MEMORY[0x29EDC3948], MEMORY[0x29EDC3950]);
      result = sub_29D5B3D8C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_29D59F73C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_29D5B12DC();
  v3 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_29D5A39A8(0);
  result = sub_29D5B48EC();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_29D5A3960(&qword_2A17A5198, MEMORY[0x29EDC3828], MEMORY[0x29EDC3830]);
      result = sub_29D5B3D8C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_29D59FA8C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29D5A376C(0, a2, a3, a4, a5);
  result = sub_29D5B48EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_29D5B464C();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_29D59FCA8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_29D5B1BCC();
  v3 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_29D5711B4(0);
  result = sub_29D5B48EC();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_29D5A3960(&qword_2A1A19800, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FC8]);
      result = sub_29D5B3D8C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_29D59FFF8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_29D5B0EDC();
  v3 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_29D5A2B6C(0);
  result = sub_29D5B48EC();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_29D5A3960(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      result = sub_29D5B3D8C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_29D5A0348(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_29D5A376C(0, a3, a4, a5, a6);
    v10 = sub_29D5B48FC();
    v23 = v10;
    sub_29D5B481C();
    if (sub_29D5B488C())
    {
      sub_29D48F51C(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_29D59FA8C(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_29D5B464C();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_29D5B488C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA1A0];
  }

  return v10;
}

unint64_t sub_29D5A0560(uint64_t a1, uint64_t a2)
{
  sub_29D5B464C();
  result = sub_29D5B47FC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_29D5A05E4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_29D59EA74(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_29D59CB30();
      goto LABEL_16;
    }

    sub_29D59D394(v8 + 1);
  }

  v10 = *v4;
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  result = sub_29D5B4D9C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_29D5B4C7C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

uint64_t sub_29D5A0764(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SharedConceptFeedItemData(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = (&v28[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v27 = v11;
    sub_29D59ECC8(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_29D59CC80();
      goto LABEL_12;
    }

    v27 = v11;
    sub_29D59D5C0(v14 + 1);
  }

  v16 = *v4;
  sub_29D5B4D4C();
  sub_29D4D533C(v28);
  v17 = sub_29D5B4D9C();
  v18 = -1 << *(v16 + 32);
  a2 = v17 & ~v18;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v9 + 72);
    do
    {
      sub_29D5A3A3C(*(v16 + 48) + v20 * a2, v13, type metadata accessor for SharedConceptFeedItemData);
      v21 = sub_29D4DC6AC(v13, a1);
      sub_29D5A3B0C(v13, type metadata accessor for SharedConceptFeedItemData);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_29D5A3AA4(a1, *(v22 + 48) + *(v9 + 72) * a2, type metadata accessor for SharedConceptFeedItemData);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

uint64_t sub_29D5A09A8(double *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = MEMORY[0x29EDBA1D0];
  sub_29D59AAE0(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10, MEMORY[0x29EDBA1D0]);
  v119 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v114 = &v106 - v12;
  sub_29D4A05F4(0);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v115 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48(0);
  v118 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v117 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for SharedConceptCodedValue(0);
  v120 = *(v121 - 1);
  v20 = MEMORY[0x2A1C7C4A8](v121, v19);
  v127 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v106 - v23;
  sub_29D59AAE0(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, v8);
  v26 = v25;
  v137 = *(v25 - 8);
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v136 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v28, v30);
  v33 = &v106 - v32;
  v34 = *(*v4 + 16);
  v35 = *(*v4 + 24);
  v132 = a1;
  if (v35 <= v34 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_29D59EF58(v34 + 1);
    }

    else
    {
      if (v35 > v34)
      {
        result = sub_29D59CE7C();
        goto LABEL_72;
      }

      sub_29D59D81C(v34 + 1);
    }

    v36 = *v4;
    sub_29D5B4D4C();
    sub_29D4D62E4(&v140);
    result = sub_29D5B4D9C();
    v37 = v36 + 56;
    v38 = -1 << *(v36 + 32);
    a2 = result & ~v38;
    if ((*(v36 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v126 = v24;
      v39 = ~v38;
      v40 = *a1;
      v133 = v137 + 16;
      v135 = (v137 + 8);
      v134 = v40;
      v138 = *(v40 + 16);
      v111 = (v10 + 48);
      v106 = (v10 + 32);
      v107 = (v10 + 8);
      v125 = v4;
      v124 = v36;
      v123 = v36 + 56;
      v122 = ~v38;
      do
      {
        v41 = *(v36 + 48) + 88 * a2;
        v42 = *(v41 + 16);
        v140 = *v41;
        v141 = v42;
        v43 = *(v41 + 32);
        v44 = *(v41 + 48);
        v45 = *(v41 + 64);
        v145 = *(v41 + 80);
        v143 = v44;
        v144 = v45;
        v142 = v43;
        v46 = v140;
        if (*(v140 + 16) == v138)
        {
          v130 = a2;
          if (v138 && v140 != v134)
          {
            v47 = (*(v137 + 80) + 32) & ~*(v137 + 80);
            v48 = v140 + v47;
            v49 = v134 + v47;
            sub_29D4B4604(&v140, v139);
            v50 = 0;
            while (v50 < *(v46 + 16))
            {
              v51 = *(v137 + 72) * v50;
              v52 = *(v137 + 16);
              v52(v33, v48 + v51, v26);
              if (v50 >= *(v134 + 16))
              {
                goto LABEL_75;
              }

              v53 = v136;
              v52(v136, v49 + v51, v26);
              sub_29D5A38A0(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
              v54 = sub_29D5B3E0C();
              v55 = *v135;
              (*v135)(v53, v26);
              v55(v33, v26);
              if ((v54 & 1) == 0)
              {
                goto LABEL_13;
              }

              if (v138 == ++v50)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          sub_29D4B4604(&v140, v139);
          if (__PAIR128__(v141, *(&v140 + 1)) != *(v132 + 1) && (sub_29D5B4C7C() & 1) == 0)
          {
            goto LABEL_13;
          }

          if (__PAIR128__(v142, *(&v141 + 1)) != *(v132 + 3) && (sub_29D5B4C7C() & 1) == 0)
          {
            goto LABEL_13;
          }

          v56 = *(&v142 + 1);
          v57 = *(v132 + 5);
          v58 = *(*(&v142 + 1) + 16);
          if (v58 != *(v57 + 16))
          {
            goto LABEL_13;
          }

LABEL_25:
          if (v58 && *(&v142 + 1) != v57)
          {
            v59 = 0;
            v60 = (*(v120 + 80) + 32) & ~*(v120 + 80);
            v113 = *(&v142 + 1) + v60;
            v112 = v57 + v60;
            v110 = *(&v142 + 1);
            v109 = v57;
            v108 = v58;
            while (1)
            {
              if (v59 >= *(v56 + 16))
              {
                goto LABEL_79;
              }

              v61 = *(v120 + 72) * v59;
              v62 = v126;
              sub_29D5A3A3C(v113 + v61, v126, type metadata accessor for SharedConceptCodedValue);
              if (v59 >= *(v57 + 16))
              {
                goto LABEL_80;
              }

              v116 = v59;
              v63 = v112 + v61;
              v64 = v127;
              sub_29D5A3A3C(v63, v127, type metadata accessor for SharedConceptCodedValue);
              v65 = *v62;
              v66 = *v64;
              v67 = *(*v64 + 16);
              v131 = *(*v62 + 16);
              if (v131 != v67)
              {
                goto LABEL_12;
              }

              if (v131 && v65 != v66)
              {
                v68 = 0;
                v69 = (*(v137 + 80) + 32) & ~*(v137 + 80);
                v129 = v65 + v69;
                v128 = v66 + v69;
                while (v68 < *(v65 + 16))
                {
                  v70 = *(v137 + 72) * v68;
                  v71 = *(v137 + 16);
                  v71(v33, v129 + v70, v26);
                  if (v68 >= *(v66 + 16))
                  {
                    goto LABEL_77;
                  }

                  v72 = v136;
                  v71(v136, v128 + v70, v26);
                  sub_29D5A38A0(&qword_2A17A41E8, &qword_2A17A41F0, MEMORY[0x29EDCA2F8], MEMORY[0x29EDBA1E8]);
                  v73 = sub_29D5B3E0C();
                  v74 = *v135;
                  (*v135)(v72, v26);
                  v74(v33, v26);
                  if ((v73 & 1) == 0)
                  {
                    goto LABEL_12;
                  }

                  if (v131 == ++v68)
                  {
                    goto LABEL_43;
                  }
                }

                goto LABEL_76;
              }

LABEL_43:
              v75 = v121[5];
              v76 = *(v118 + 48);
              v77 = v117;
              sub_29D5A3A3C(&v126[v75], v117, sub_29D4A05F4);
              sub_29D5A3A3C(v127 + v75, v77 + v76, sub_29D4A05F4);
              v78 = *v111;
              v79 = v119;
              if ((*v111)(v77, 1, v119) == 1)
              {
                if (v78(v77 + v76, 1, v79) != 1)
                {
                  goto LABEL_11;
                }

                sub_29D5A3B0C(v77, sub_29D4A05F4);
              }

              else
              {
                v80 = v115;
                sub_29D5A3A3C(v77, v115, sub_29D4A05F4);
                if (v78(v77 + v76, 1, v79) == 1)
                {
                  (*v107)(v80, v79);
LABEL_11:
                  sub_29D5A3B0C(v77, sub_29D4DCD48);
LABEL_12:
                  sub_29D5A3B0C(v127, type metadata accessor for SharedConceptCodedValue);
                  sub_29D5A3B0C(v126, type metadata accessor for SharedConceptCodedValue);
                  goto LABEL_13;
                }

                v81 = v114;
                (*v106)(v114, v77 + v76, v79);
                sub_29D5712A8();
                v82 = sub_29D5B3E0C();
                v83 = *v107;
                (*v107)(v81, v79);
                v83(v80, v79);
                sub_29D5A3B0C(v77, sub_29D4A05F4);
                if ((v82 & 1) == 0)
                {
                  goto LABEL_12;
                }
              }

              v84 = v121[6];
              v85 = &v126[v84];
              v86 = *&v126[v84 + 8];
              v87 = (v127 + v84);
              v88 = v87[1];
              if (v86)
              {
                if (!v88 || (*v85 != *v87 || v86 != v88) && (sub_29D5B4C7C() & 1) == 0)
                {
                  goto LABEL_12;
                }
              }

              else if (v88)
              {
                goto LABEL_12;
              }

              v89 = v121[7];
              v90 = v126;
              v91 = &v126[v89];
              v92 = *&v126[v89 + 8];
              v93 = (v127 + v89);
              v94 = v93[1];
              v95 = v94 == 0;
              if (!v92)
              {
                break;
              }

              if (!v94)
              {
                goto LABEL_12;
              }

              v56 = v110;
              if (*v91 != *v93 || v92 != v94)
              {
                v95 = sub_29D5B4C7C();
                v90 = v126;
LABEL_62:
                v57 = v109;
                sub_29D5A3B0C(v127, type metadata accessor for SharedConceptCodedValue);
                sub_29D5A3B0C(v90, type metadata accessor for SharedConceptCodedValue);
                v96 = v108;
                if ((v95 & 1) == 0)
                {
                  goto LABEL_13;
                }

                goto LABEL_63;
              }

              sub_29D5A3B0C(v127, type metadata accessor for SharedConceptCodedValue);
              sub_29D5A3B0C(v126, type metadata accessor for SharedConceptCodedValue);
              v57 = v109;
              v96 = v108;
LABEL_63:
              v59 = v116 + 1;
              if (v116 + 1 == v96)
              {
                goto LABEL_64;
              }
            }

            v56 = v110;
            goto LABEL_62;
          }

LABEL_64:
          if (v143 == *(v132 + 6) && *(&v143 + 1) == *(v132 + 7) || (sub_29D5B4C7C()) && *&v144 == v132[8])
          {
            if (*(&v144 + 1) == *(v132 + 9) && v145 == *(v132 + 10))
            {
              goto LABEL_81;
            }

            v97 = sub_29D5B4C7C();
            result = sub_29D4B4660(&v140);
            v4 = v125;
            a2 = v130;
            v36 = v124;
            v37 = v123;
            v39 = v122;
            if (v97)
            {
              goto LABEL_82;
            }
          }

          else
          {
LABEL_13:
            result = sub_29D4B4660(&v140);
            v4 = v125;
            a2 = v130;
            v36 = v124;
            v37 = v123;
            v39 = v122;
          }
        }

        a2 = (a2 + 1) & v39;
      }

      while (((*(v37 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_72:
  v98 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v99 = *(v98 + 48) + 88 * a2;
  v100 = v132;
  v101 = *(v132 + 1);
  *v99 = *v132;
  *(v99 + 16) = v101;
  *(v99 + 80) = v100[10];
  v102 = *(v100 + 4);
  *(v99 + 48) = *(v100 + 3);
  *(v99 + 64) = v102;
  *(v99 + 32) = *(v100 + 2);
  v103 = *(v98 + 16);
  v104 = __OFADD__(v103, 1);
  v105 = v103 + 1;
  if (v104)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    sub_29D4B4660(&v140);
LABEL_82:
    result = sub_29D5B4CBC();
    __break(1u);
  }

  else
  {
    *(v98 + 16) = v105;
  }

  return result;
}

uint64_t sub_29D5A17D0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_29D5B16BC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D59F3EC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_29D59D160(MEMORY[0x29EDC3948], sub_29D5A380C);
      goto LABEL_12;
    }

    sub_29D59DC2C(v11 + 1);
  }

  v13 = *v3;
  sub_29D5A3960(&qword_2A17A5200, MEMORY[0x29EDC3948], MEMORY[0x29EDC3950]);
  v14 = sub_29D5B3D8C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_29D5A3960(&qword_2A17A5208, MEMORY[0x29EDC3948], MEMORY[0x29EDC3958]);
      v22 = sub_29D5B3E0C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

uint64_t sub_29D5A1A9C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_29D5B12DC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D59F73C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_29D59D160(MEMORY[0x29EDC3828], sub_29D5A39A8);
      goto LABEL_12;
    }

    sub_29D59DF3C(v11 + 1);
  }

  v13 = *v3;
  sub_29D5A3960(&qword_2A17A5198, MEMORY[0x29EDC3828], MEMORY[0x29EDC3830]);
  v14 = sub_29D5B3D8C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_29D5A3960(&qword_2A17A5218, MEMORY[0x29EDC3828], MEMORY[0x29EDC3838]);
      v22 = sub_29D5B3E0C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

void sub_29D5A1D68(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_29D59FA8C(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_29D59D00C(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_29D59E24C(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_29D5B464C();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_29D48F51C(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_29D5B465C();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29D5B4CBC();
  __break(1u);
}

uint64_t sub_29D5A1F10(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D59FCA8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_29D59D160(MEMORY[0x29EDC3FB8], sub_29D5711B4);
      goto LABEL_12;
    }

    sub_29D59E454(v11 + 1);
  }

  v13 = *v3;
  sub_29D5A3960(&qword_2A1A19800, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FC8]);
  v14 = sub_29D5B3D8C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_29D5A3960(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
      v22 = sub_29D5B3E0C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

uint64_t sub_29D5A21DC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D59FFF8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_29D59D160(MEMORY[0x29EDB9C08], sub_29D5A2B6C);
      goto LABEL_12;
    }

    sub_29D59E764(v11 + 1);
  }

  v13 = *v3;
  sub_29D5A3960(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  v14 = sub_29D5B3D8C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_29D5A3960(&qword_2A17A4848, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v22 = sub_29D5B3E0C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

void *sub_29D5A24A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_29D5A2600(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SharedConceptFeedItemData(0);
  v35 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v10, v12);
  v33 = &v30 - v14;
  v15 = a4 + 56;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v19 = 0;
    v30 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v34;
      a1 = *(v35 + 72);
      sub_29D5A3A3C(*(a4 + 48) + a1 * (v24 | (v19 << 6)), v34, type metadata accessor for SharedConceptFeedItemData);
      v26 = v25;
      v27 = v33;
      sub_29D5A3AA4(v26, v33, type metadata accessor for SharedConceptFeedItemData);
      sub_29D5A3AA4(v27, a2, type metadata accessor for SharedConceptFeedItemData);
      if (v21 == v32)
      {
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += a1;
      result = v21;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v29 = v19 + 1;
    }

    else
    {
      v29 = v20;
    }

    v19 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v16 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_29D5A287C(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_29D5B481C();
  sub_29D48F51C(0, &qword_2A1A19660, 0x29EDBAD78);
  sub_29D4DC4A0(&qword_2A1A19658, &qword_2A1A19660, 0x29EDBAD78, MEMORY[0x29EDCA2F0]);
  result = sub_29D5B41DC();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_29D5B488C())
      {
        goto LABEL_30;
      }

      sub_29D48F51C(0, &qword_2A1A19660, 0x29EDBAD78);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

unint64_t sub_29D5A2AD0()
{
  result = qword_2A17A51E8;
  if (!qword_2A17A51E8)
  {
    sub_29D59AAE0(255, &qword_2A17A51E0, &qword_2A1A19638, 0x29EDBAD40, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A51E8);
  }

  return result;
}

id sub_29D5A2B54(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_29D543200(a1);
  }

  return a1;
}

void sub_29D5A2B6C(uint64_t a1)
{
  if (!qword_2A17A51F0)
  {
    sub_29D5B0EDC();
    sub_29D5A3960(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v1 = sub_29D5B491C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A51F0);
    }
  }
}

uint64_t sub_29D5A2C18(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v43 = a5(0);
  v45 = *(v43 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v10, v12);
  v42 = &v36 - v14;
  v15 = a4 + 56;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 56;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      a3 = v41;
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      result = a1;
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    a3 = result;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_29D5A2EC0(uint64_t a1)
{
  if (!qword_2A1A16EE8)
  {
    sub_29D5A3514(255, &qword_2A1A19770, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
    sub_29D4A02FC(255, &qword_2A1A19818, MEMORY[0x29EDC3C90]);
    sub_29D5A2F70();
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16EE8);
    }
  }
}

unint64_t sub_29D5A2F70()
{
  result = qword_2A1A19778;
  if (!qword_2A1A19778)
  {
    sub_29D5A3514(255, &qword_2A1A19770, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19778);
  }

  return result;
}

void sub_29D5A2FEC(uint64_t a1)
{
  if (!qword_2A1A16538)
  {
    sub_29D53B23C();
    sub_29D5A3960(&qword_2A1A165C0, sub_29D53B23C, MEMORY[0x29EDB8AB8]);
    v1 = sub_29D5B3AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16538);
    }
  }
}

uint64_t *sub_29D5A3080@<X0>(unsigned __int8 *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D598BA4(a1, v2 + v6, v7, a2);
}

void sub_29D5A312C(uint64_t a1)
{
  if (!qword_2A1A16558)
  {
    sub_29D5A31C0(255);
    sub_29D5A3960(&qword_2A1A16E30, sub_29D5A31C0, MEMORY[0x29EDB8908]);
    v1 = sub_29D5B3AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16558);
    }
  }
}

void sub_29D5A31C0(uint64_t a1)
{
  if (!qword_2A1A16E28)
  {
    sub_29D5A325C(255);
    sub_29D5A3960(&qword_2A1A16930, sub_29D5A325C, MEMORY[0x29EDB89B8]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16E28);
    }
  }
}

void sub_29D5A325C(uint64_t a1)
{
  if (!qword_2A1A16928)
  {
    sub_29D5A335C(255);
    sub_29D48F51C(255, &qword_2A1A1A420, 0x29EDCA548);
    sub_29D5A3960(&qword_2A1A16C98, sub_29D5A335C, MEMORY[0x29EDB8958]);
    sub_29D4DC4A0(&qword_2A1A19620, &qword_2A1A1A420, 0x29EDCA548, MEMORY[0x29EDCA280]);
    v1 = sub_29D5B390C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16928);
    }
  }
}

void sub_29D5A335C(uint64_t a1)
{
  if (!qword_2A1A16C90)
  {
    sub_29D5A33F0(255);
    sub_29D5A3960(&qword_2A1A17290, sub_29D5A33F0, MEMORY[0x29EDB8870]);
    v1 = sub_29D5B389C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16C90);
    }
  }
}

void sub_29D5A33F0(uint64_t a1)
{
  if (!qword_2A1A17288)
  {
    v1 = MEMORY[0x29EDC9A98];
    v2 = MEMORY[0x29EDB8A60];
    sub_29D5A3514(255, &qword_2A1A16648, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
    v3 = MEMORY[0x29EDCA180];
    sub_29D5A3514(255, &qword_2A1A16620, MEMORY[0x29EDCA180] + 8, v2);
    v4 = MEMORY[0x29EDB8A70];
    sub_29D5A357C(&qword_2A1A16650, &qword_2A1A16648, v1, MEMORY[0x29EDB8A70]);
    sub_29D5A357C(&qword_2A1A16628, &qword_2A1A16620, v3 + 8, v4);
    v5 = sub_29D5B379C();
    if (!v6)
    {
      atomic_store(v5, &qword_2A1A17288);
    }
  }
}

void sub_29D5A3514(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D5A357C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D5A3514(255, a2, a3, MEMORY[0x29EDB8A60]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D5A360C()
{
  v1 = *v0;
  v2 = sub_29D5A357C(&qword_2A1A16630, &qword_2A1A16620, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDB8A68]);

  return MEMORY[0x2A1C589F0](v1, v2);
}

void sub_29D5A36FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5A376C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D48F51C(255, a3, a4);
    sub_29D4DC4A0(a5, a3, a4, MEMORY[0x29EDCA2F0]);
    v9 = sub_29D5B491C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D5A380C(uint64_t a1)
{
  if (!qword_2A17A5210)
  {
    sub_29D5B16BC();
    sub_29D5A3960(&qword_2A17A5200, MEMORY[0x29EDC3948], MEMORY[0x29EDC3950]);
    v1 = sub_29D5B491C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A5210);
    }
  }
}

uint64_t sub_29D5A38A0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D59AAE0(255, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, MEMORY[0x29EDBA1D0]);
    sub_29D4DC4A0(a2, &qword_2A17A41A8, 0x29EDBAC38, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D5A3960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D5A39A8(uint64_t a1)
{
  if (!qword_2A17A5220)
  {
    sub_29D5B12DC();
    sub_29D5A3960(&qword_2A17A5198, MEMORY[0x29EDC3828], MEMORY[0x29EDC3830]);
    v1 = sub_29D5B491C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A5220);
    }
  }
}

uint64_t sub_29D5A3A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D5A3AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D5A3B0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D5A3B6C(uint64_t a1)
{
  if (!qword_2A17A5228)
  {
    type metadata accessor for SharedConceptFeedItemData(255);
    sub_29D5A3960(&qword_2A17A5230, type metadata accessor for SharedConceptFeedItemData, &unk_29D5B75F0);
    v1 = sub_29D5B491C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A5228);
    }
  }
}

uint64_t sub_29D5A3C74(uint64_t a1, char a2)
{
  v4 = sub_29D5B420C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AAD1C(0, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v32 = &v29 - v11;
  v12 = sub_29D5B1A2C();
  v30 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B1A6C();
  v31 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B2B8C();
  v20 = sub_29D5B2B9C();
  v20(a1);
  if ((a2 & 1) != 0 && (v21 = sub_29D5B2B1C(), v22 = [v21 image], v21, v22))
  {
    (*(v30 + 104))(v15, *MEMORY[0x29EDC3ED8], v12);
    v23 = v22;
    sub_29D5B1A4C();
    v24 = sub_29D5B2B1C();
    v26 = v31;
    v25 = v32;
    (*(v31 + 16))(v32, v19, v16);
    (*(v26 + 56))(v25, 0, 1, v16);
    sub_29D5B421C();

    sub_29D5AB160(v25, &qword_2A17A4430, MEMORY[0x29EDC3EE0]);
    return (*(v26 + 8))(v19, v16);
  }

  else
  {
    v28 = sub_29D5B2B1C();
    (*(v5 + 104))(v8, *MEMORY[0x29EDC4280], v4);
    sub_29D5B41FC();

    return (*(v5 + 8))(v8, v4);
  }
}

id sub_29D5A4028(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[qword_2A17A5238] = 0;
  *&v4[qword_2A17A5240] = 0;
  *&v4[qword_2A17A5248] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AccountUpgradeSummaryTileView(0);
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_29D5B2B2C();
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = sub_29D5B2B1C();
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_29D5A426C();
  sub_29D5AAD1C(0, &qword_2A17A52A0, sub_29D5AB264, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D5B62A0;
  v13 = sub_29D5B375C();
  v14 = MEMORY[0x29EDC7870];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  sub_29D5B45CC();

  swift_unknownObjectRelease();

  return v9;
}

void sub_29D5A41EC(uint64_t a1)
{
  *(a1 + qword_2A17A5238) = 0;
  *(a1 + qword_2A17A5240) = 0;
  *(a1 + qword_2A17A5248) = 0;
  sub_29D5B4A2C();
  __break(1u);
}

void sub_29D5A426C()
{
  v1 = sub_29D5B2B2C();
  [v0 addSubview_];

  v2 = sub_29D5B2B1C();
  [v0 addSubview_];

  v3 = sub_29D5B2B2C();
  v4 = [v3 leadingAnchor];

  v5 = sub_29D5B2B1C();
  v6 = [v5 trailingAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:16.0];
  v8 = *&v0[qword_2A17A5240];
  *&v0[qword_2A17A5240] = v7;
  v9 = v7;

  v10 = sub_29D5B2B2C();
  v11 = [v10 topAnchor];

  v12 = [v0 topAnchor];
  v13 = [v11 &selRef:v12 setSound:16.0 + 6];

  v14 = *&v0[qword_2A17A5238];
  *&v0[qword_2A17A5238] = v13;
  v15 = v13;

  v16 = sub_29D5B2B1C();
  v17 = [v16 leadingAnchor];

  v18 = [v0 safeAreaLayoutGuide];
  v19 = [v18 leadingAnchor];

  v20 = [v17 &selRef:v19 setSound:16.0 + 6];
  v21 = *&v0[qword_2A17A5248];
  *&v0[qword_2A17A5248] = v20;
  v22 = v20;

  v53 = objc_opt_self();
  sub_29D51AC0C();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D5BB8F0;
  v24 = sub_29D5B2B1C();
  v25 = [v24 widthAnchor];

  v26 = [v25 constraintEqualToConstant_];
  *(v23 + 32) = v26;
  v27 = sub_29D5B2B1C();
  v28 = [v27 heightAnchor];

  v29 = [v28 constraintEqualToConstant_];
  *(v23 + 40) = v29;
  *(v23 + 48) = v22;
  v30 = v22;
  v31 = sub_29D5B2B1C();
  v32 = [v31 topAnchor];

  v33 = [v0 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:16.0];

  *(v23 + 56) = v34;
  v35 = [v0 bottomAnchor];
  v36 = sub_29D5B2B1C();
  v37 = [v36 bottomAnchor];

  v38 = [v35 constraintGreaterThanOrEqualToAnchor:v37 constant:14.0];
  *(v23 + 64) = v38;
  *(v23 + 72) = v9;
  *(v23 + 80) = v15;
  v39 = v9;
  v40 = v15;
  v41 = [v0 trailingAnchor];
  v42 = sub_29D5B2B2C();
  v43 = [v42 trailingAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v23 + 88) = v44;
  v45 = [v0 bottomAnchor];
  v46 = sub_29D5B2B2C();
  v47 = [v46 bottomAnchor];

  v48 = [v45 constraintEqualToAnchor_];
  *(v23 + 96) = v48;
  sub_29D48F51C(0, &qword_2A17A3F80, 0x29EDBA008);
  v49 = sub_29D5B401C();

  [v53 activateConstraints_];

  v50 = sub_29D5B2B1C();
  LODWORD(v51) = 1144750080;
  [v50 setContentHuggingPriority:0 forAxis:v51];

  v54 = sub_29D5B2B2C();
  LODWORD(v52) = 1144750080;
  [v54 setContentCompressionResistancePriority:0 forAxis:v52];
}

id sub_29D5A47E0()
{
  v1 = qword_2A17A5240;
  v2 = *&v0[qword_2A17A5240];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = qword_2A17A5238;
  v4 = *&v0[qword_2A17A5238];
  if (v4)
  {
    [v4 setActive_];
  }

  v5 = qword_2A17A5248;
  v6 = *&v0[qword_2A17A5248];
  if (v6)
  {
    [v6 setActive_];
  }

  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v8 = sub_29D5B2B2C();
  v9 = [v8 leadingAnchor];

  if (IsUsingAccessibilityContentSizeCategory)
  {
    v10 = [v0 safeAreaLayoutGuide];
    v11 = [v10 leadingAnchor];

    v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
    v13 = *&v0[v1];
    *&v0[v1] = v12;

    v14 = sub_29D5B2B2C();
    v15 = [v14 topAnchor];

    v16 = sub_29D5B2B1C();
    v17 = [v16 bottomAnchor];

    v18 = [v15 constraintEqualToAnchor:v17 constant:14.0];
  }

  else
  {
    v19 = sub_29D5B2B1C();
    v20 = [v19 trailingAnchor];

    v21 = [v9 constraintEqualToAnchor:v20 constant:16.0];
    v22 = *&v0[v1];
    *&v0[v1] = v21;

    v23 = sub_29D5B2B2C();
    v15 = [v23 topAnchor];

    v17 = [v0 topAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:16.0];
  }

  v24 = v18;

  v25 = *&v0[v3];
  *&v0[v3] = v24;

  v26 = sub_29D5B2B1C();
  v27 = [v26 leadingAnchor];

  v28 = [v0 safeAreaLayoutGuide];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:16.0];
  v31 = *&v0[v5];
  *&v0[v5] = v30;

  v32 = *&v0[v1];
  if (v32)
  {
    [v32 setActive_];
  }

  v33 = *&v0[v3];
  if (v33)
  {
    [v33 setActive_];
  }

  result = *&v0[v5];
  if (result)
  {

    return [result setActive_];
  }

  return result;
}

void sub_29D5A4B44()
{
  v1 = *(v0 + qword_2A17A5248);
}

void sub_29D5A4BAC(uint64_t a1)
{
  v2 = *(a1 + qword_2A17A5248);
}

uint64_t sub_29D5A4C10()
{
  v1 = sub_29D5B282C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC4240];
  v6 = MEMORY[0x29EDC9C68];
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v25 - v9;
  sub_29D5AAD1C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], v6);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v25 - v13;
  v15 = sub_29D5B359C();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  swift_beginAccess();
  sub_29D5AAE14(v0 + v20, v10, &qword_2A17A3FE0, v5);
  if ((*(v2 + 48))(v10, 1, v1))
  {
    sub_29D5AB160(v10, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  else
  {
    v21 = v25;
    (*(v2 + 16))(v25, v10, v1);
    sub_29D5AB160(v10, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    sub_29D5B27EC();
    (*(v2 + 8))(v21, v1);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v19, v14, v15);
      v22 = *MEMORY[0x29EDC3D98];
      goto LABEL_7;
    }
  }

  v22 = *MEMORY[0x29EDC3D98];
  (*(v16 + 104))(v19, *MEMORY[0x29EDC3D98], v15);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_29D5AB160(v14, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  }

LABEL_7:
  v23 = (*(v16 + 88))(v19, v15);
  if (v23 == v22)
  {
    return 2;
  }

  if (v23 == *MEMORY[0x29EDC3DA0])
  {
    return 3;
  }

  if (v23 != *MEMORY[0x29EDC3DA8])
  {
    (*(v16 + 8))(v19, v15);
    return 2;
  }

  return 4;
}

uint64_t sub_29D5A5118()
{
  v1 = sub_29D5B359C();
  v48 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v2);
  v46 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AAD80(0);
  v49 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B282C();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDC4240];
  v13 = MEMORY[0x29EDC9C68];
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v17 = &v46 - v16;
  sub_29D5AAD1C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], v13);
  v20 = MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v47 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v25 = &v46 - v24;
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v46 - v27;
  v29 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  swift_beginAccess();
  sub_29D5AAE14(v0 + v29, v17, &qword_2A17A3FE0, v12);
  if ((*(v8 + 48))(v17, 1, v7))
  {
    sub_29D5AB160(v17, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    v30 = v48;
    (*(v48 + 56))(v28, 1, 1, v1);
  }

  else
  {
    (*(v8 + 16))(v11, v17, v7);
    sub_29D5AB160(v17, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    sub_29D5B27EC();
    (*(v8 + 8))(v11, v7);
    v30 = v48;
  }

  v31 = v28;
  (*(v30 + 104))(v25, *MEMORY[0x29EDC3DA8], v1);
  (*(v30 + 56))(v25, 0, 1, v1);
  v32 = *(v49 + 48);
  v33 = MEMORY[0x29EDC3DB0];
  v34 = v28;
  v35 = v50;
  sub_29D5AAE14(v34, v50, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AAE14(v25, v35 + v32, &qword_2A1A17300, v33);
  v36 = *(v30 + 48);
  if (v36(v35, 1, v1) != 1)
  {
    v39 = v47;
    sub_29D5AAE14(v35, v47, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    if (v36(v35 + v32, 1, v1) != 1)
    {
      v41 = v46;
      (*(v30 + 32))(v46, v35 + v32, v1);
      sub_29D5AAC38(&qword_2A17A3FF0, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC3DB8]);
      v42 = v39;
      v38 = sub_29D5B3E0C();
      v43 = *(v30 + 8);
      v43(v41, v1);
      v44 = MEMORY[0x29EDC3DB0];
      sub_29D5AB160(v25, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
      sub_29D5AB160(v31, &qword_2A1A17300, v44);
      v43(v42, v1);
      sub_29D5AB160(v35, &qword_2A1A17300, v44);
      return v38 & 1;
    }

    v40 = MEMORY[0x29EDC3DB0];
    sub_29D5AB160(v25, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    sub_29D5AB160(v31, &qword_2A1A17300, v40);
    (*(v30 + 8))(v39, v1);
    goto LABEL_9;
  }

  v37 = MEMORY[0x29EDC3DB0];
  sub_29D5AB160(v25, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AB160(v31, &qword_2A1A17300, v37);
  if (v36(v35 + v32, 1, v1) != 1)
  {
LABEL_9:
    sub_29D5AAE94(v35, sub_29D5AAD80);
    v38 = 0;
    return v38 & 1;
  }

  sub_29D5AB160(v35, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  v38 = 1;
  return v38 & 1;
}

uint64_t sub_29D5A57E0()
{
  v1 = v0;
  v25[1] = swift_getObjectType();
  v2 = sub_29D5B371C();
  v25[2] = *(v2 - 8);
  v25[3] = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68]);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v25 - v10;
  v12 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context;
  swift_beginAccess();
  result = sub_29D4A9434(v0 + v12, v26);
  v14 = v27;
  if (v27)
  {
    v15 = sub_29D499EC0(v26, v27);
    v16 = *(v14 - 8);
    MEMORY[0x2A1C7C4A8](v15, v15);
    v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = sub_29D5B317C();
    v21 = v20;
    (*(v16 + 8))(v18, v14);
    result = sub_29D48F668(v26);
    if (v21 >> 60 != 15)
    {
      sub_29D5B0BDC();
      swift_allocObject();
      sub_29D5B0BCC();
      v22 = sub_29D5B282C();
      sub_29D5AAC38(&qword_2A17A3FC8, MEMORY[0x29EDC4240], MEMORY[0x29EDC4250]);
      sub_29D5B0BBC();

      v23 = *(v22 - 8);
      (*(v23 + 56))(v11, 0, 1, v22);
      v24 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
      swift_beginAccess();
      sub_29D5AB1D0(v11, v1 + v24);
      swift_endAccess();
      sub_29D5AAE14(v1 + v24, v8, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
      if ((*(v23 + 48))(v8, 1, v22) == 1)
      {
        sub_29D4A96BC(v19, v21);
        return sub_29D5AB160(v8, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
      }

      else
      {
        sub_29D5AB160(v8, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
        sub_29D5A5D40();
        return sub_29D4A96BC(v19, v21);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D5A5D40()
{
  v1 = v0;
  v2 = MEMORY[0x29EDC9C68];
  sub_29D5AAD1C(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v66 = &v60 - v5;
  v6 = sub_29D5B282C();
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v61 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v2);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v69 = &v60 - v11;
  v12 = sub_29D5B0EDC();
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v60 = &v60 - v18;
  MEMORY[0x2A1C7C4A8](v17, v19);
  v65 = &v60 - v20;
  v21 = sub_29D5B420C();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D5B2B4C();
  v67 = *(v26 - 8);
  v68 = v26;
  MEMORY[0x2A1C7C4A8](v26, v27);
  v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = objc_opt_self();
  v31 = [v30 configurationWithPointSize:5 weight:38.0];
  v32 = sub_29D5B3E1C();
  v33 = [objc_opt_self() systemImageNamed:v32 withConfiguration:v31];

  if (v33)
  {
    v34 = [v30 configurationPreferringMulticolor];
    v35 = [v33 imageByApplyingSymbolConfiguration_];

    if (v35)
    {
      sub_29D5A6DC8(v35, v29);
      v36 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
      swift_beginAccess();
      v37 = *&v1[v36];
      sub_29D5B2B8C();
      v38 = sub_29D5B2B9C();
      v39 = v37;
      v38(v29);
      v40 = sub_29D5B2B1C();
      (*(v22 + 104))(v25, *MEMORY[0x29EDC4280], v21);
      sub_29D5B41FC();

      (*(v22 + 8))(v25, v21);
      (*(v67 + 8))(v29, v68);
    }
  }

  result = sub_29D5A5118();
  if ((result & 1) == 0)
  {
    v42 = v1;
    v43 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
    swift_beginAccess();
    v44 = &v1[v43];
    v45 = v69;
    sub_29D5AAE14(v44, v69, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    v47 = v70;
    v46 = v71;
    if ((*(v70 + 48))(v45, 1, v71))
    {
      return sub_29D5AB160(v45, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    }

    else
    {
      v48 = v61;
      (*(v47 + 16))(v61, v45, v46);
      sub_29D5AB160(v45, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
      v49 = v60;
      sub_29D5B280C();
      (*(v47 + 8))(v48, v46);
      v50 = v63;
      v51 = v64;
      v71 = *(v63 + 32);
      v52 = v65;
      v71(v65, v49, v64);
      v53 = sub_29D5B410C();
      (*(*(v53 - 8) + 56))(v66, 1, 1, v53);
      v54 = v62;
      (*(v50 + 16))(v62, v52, v51);
      sub_29D5B40EC();
      v55 = v42;
      v56 = sub_29D5B40DC();
      v57 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v58 = swift_allocObject();
      v59 = MEMORY[0x29EDCA390];
      *(v58 + 16) = v56;
      *(v58 + 24) = v59;
      v71(v58 + v57, v54, v51);
      *(v58 + ((v13 + v57 + 7) & 0xFFFFFFFFFFFFFFF8)) = v55;
      sub_29D57657C(0, 0, v66, &unk_29D5BBBF8, v58);

      return (*(v50 + 8))(v65, v51);
    }
  }

  return result;
}

uint64_t sub_29D5A649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_29D5B1A1C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = sub_29D5B2B4C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_29D5B1A2C();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  sub_29D5AAD1C(0, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68]);
  v5[17] = swift_task_alloc();
  v9 = sub_29D5B1A6C();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = sub_29D5B40EC();
  v5[22] = sub_29D5B40DC();
  v11 = sub_29D5B40CC();
  v5[23] = v11;
  v5[24] = v10;

  return MEMORY[0x2A1C73D48](sub_29D5A6710, v11, v10);
}

uint64_t sub_29D5A6710()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_29D5B208C();
  v0[25] = sub_29D5B207C();
  (*(v2 + 104))(v1, *MEMORY[0x29EDC3ED8], v3);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_29D5A67F8;
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[5];

  return MEMORY[0x2A1C65D58](v5, v7, v6);
}

uint64_t sub_29D5A67F8()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return MEMORY[0x2A1C73D48](sub_29D5A6998, v6, v5);
}

uint64_t sub_29D5A6998()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_29D5AB160(v3, &qword_2A17A4430, MEMORY[0x29EDC3EE0]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[20], v3, v1);

    return MEMORY[0x2A1C73D48](sub_29D5A6AF4, 0, 0);
  }
}

uint64_t sub_29D5A6AF4()
{
  *(v0 + 216) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5A6B80, v2, v1);
}

uint64_t sub_29D5A6B80()
{
  v1 = v0[13];
  v2 = v0[10];
  v14 = v0[12];
  v15 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = sub_29D5B1A5C();
  sub_29D5A6DC8(v7, v1);

  v8 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  swift_beginAccess();
  v9 = *(v6 + v8);
  sub_29D5B1A3C();
  (*(v3 + 104))(v4, *MEMORY[0x29EDC3EC0], v5);
  LOBYTE(v8) = sub_29D5B1A0C();
  v10 = *(v3 + 8);
  v10(v4, v5);
  v10(v2, v5);
  sub_29D5A3C74(v1, v8 & 1);

  (*(v14 + 8))(v1, v15);
  v11 = v0[23];
  v12 = v0[24];

  return MEMORY[0x2A1C73D48](sub_29D5A6CFC, v11, v12);
}

uint64_t sub_29D5A6CFC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D5A6DC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = sub_29D5B200C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDB9C70];
  sub_29D5AAD1C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = v22 - v10;
  v12 = sub_29D5B0EFC();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  sub_29D5B1FFC();
  v14 = sub_29D5B2A0C();
  v26 = v15;
  v27 = v14;
  v16 = v3 + 8;
  v17 = *(v3 + 8);
  v22[1] = v16;
  v23 = v2;
  v17(v6, v2);
  sub_29D5AB160(v11, &qword_2A1A19588, v7);
  sub_29D5A5118();
  v13(v11, 1, 1, v12);
  sub_29D5B1FFC();
  v18 = sub_29D5B2A0C();
  v24 = v19;
  v25 = v18;
  v17(v6, v2);
  sub_29D5AB160(v11, &qword_2A1A19588, v7);
  sub_29D5A5118();
  v13(v11, 1, 1, v12);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v17(v6, v23);
  sub_29D5AB160(v11, &qword_2A1A19588, v7);
  [objc_opt_self() clearColor];
  v20 = v28;
  return sub_29D5B2B3C();
}

uint64_t sub_29D5A73D4()
{
  v1 = sub_29D5B371C();
  v86 = *(v1 - 8);
  v87 = v1;
  v3 = MEMORY[0x2A1C7C4A8](v1, v2);
  v85 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v76 = v74 - v6;
  v7 = MEMORY[0x29EDC9C68];
  sub_29D5AAD1C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v80 = v74 - v10;
  v82 = sub_29D5B359C();
  v81 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82, v11);
  v77 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B282C();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v84 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x29EDC4240];
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v7);
  v20 = MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v22 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = v74 - v24;
  v79 = sub_29D5B0EDC();
  v83 = *(v79 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v79, v26);
  v29 = v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = v74 - v31;
  v33 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  swift_beginAccess();
  sub_29D5AAE14(v0 + v33, v25, &qword_2A17A3FE0, v17);
  v34 = v14[6];
  if (v34(v25, 1, v13))
  {
    v35 = &qword_2A17A3FE0;
    v36 = MEMORY[0x29EDC4240];
    v37 = v25;
LABEL_8:
    sub_29D5AB160(v37, v35, v36);
    v54 = v85;
    sub_29D5B36DC();
    v55 = sub_29D5B370C();
    v56 = sub_29D5B429C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_29D48C000, v55, v56, "Tapped on tile dismissal while context.userData was unavailable", v57, 2u);
      MEMORY[0x29ED5FB80](v57, -1, -1);
    }

    return (*(v86 + 8))(v54, v87);
  }

  v75 = v0;
  v38 = v14[2];
  v39 = v84;
  v74[1] = v14 + 2;
  v74[0] = v38;
  v38(v84, v25, v13);
  v78 = v22;
  v40 = v13;
  v41 = MEMORY[0x29EDC4240];
  sub_29D5AB160(v25, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
  sub_29D5B280C();
  v42 = v14[1];
  v74[2] = v14 + 1;
  v42(v39, v40);
  v43 = v83;
  v44 = v29;
  v45 = v79;
  (*(v83 + 32))(v32, v44, v79);
  v46 = v41;
  v47 = v40;
  v48 = v78;
  sub_29D5AAE14(v75 + v33, v78, &qword_2A17A3FE0, v46);
  if (v34(v48, 1, v47))
  {
    (*(v43 + 8))(v32, v45);
    sub_29D5AB160(v48, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    v49 = v80;
    (*(v81 + 56))(v80, 1, 1, v82);
LABEL_7:
    v35 = &qword_2A1A17300;
    v36 = MEMORY[0x29EDC3DB0];
    v37 = v49;
    goto LABEL_8;
  }

  v50 = v32;
  v51 = v84;
  (v74[0])(v84, v48, v47);
  sub_29D5AB160(v48, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
  v49 = v80;
  sub_29D5B27EC();
  v42(v51, v47);
  v52 = v81;
  v53 = v82;
  if ((*(v81 + 48))(v49, 1, v82) == 1)
  {
    (*(v83 + 8))(v50, v45);
    goto LABEL_7;
  }

  v59 = v77;
  (*(v52 + 32))(v77, v49, v53);
  v60 = v76;
  sub_29D5B36DC();
  v61 = sub_29D5B370C();
  v62 = sub_29D5B429C();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_29D48C000, v61, v62, "User dismissed AccountStatusUpgrade tile", v63, 2u);
    MEMORY[0x29ED5FB80](v63, -1, -1);
  }

  (*(v86 + 8))(v60, v87);
  sub_29D5AAD1C(0, &qword_2A17A50E0, sub_29D58A288, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B5E20;
  *(inited + 32) = sub_29D5B28CC();
  *(inited + 40) = v65;
  *(inited + 48) = sub_29D5B0E8C();
  *(inited + 56) = v66;
  *(inited + 64) = sub_29D5B28BC();
  *(inited + 72) = v67;
  *(inited + 80) = sub_29D5B358C();
  *(inited + 88) = v68;
  v69 = sub_29D57ACC4(inited);
  swift_setDeallocating();
  sub_29D58A288();
  swift_arrayDestroy();
  sub_29D48F51C(0, &qword_2A17A43D8, 0x29EDBA088);
  v70 = sub_29D5B430C();
  sub_29D5B443C();
  sub_29D586710(v69);

  v71 = objc_allocWithZone(sub_29D5B2AEC());
  v72 = sub_29D5B2ADC();
  [v70 addOperation_];

  sub_29D5B1E5C();
  v73 = sub_29D5B1E4C();
  sub_29D5A4C10();
  sub_29D5B1E2C();

  (*(v52 + 8))(v59, v53);
  return (*(v83 + 8))(v50, v45);
}

uint64_t sub_29D5A7D40()
{
  v1 = sub_29D5B2C2C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context;
  swift_beginAccess();
  sub_29D4A9434(v0 + v6, &v9);
  if (v10)
  {
    sub_29D497868(&v9, v11);
    sub_29D499EC0(v11, v11[3]);
    sub_29D5B315C();
    if ((*(v2 + 88))(v5, v1) == *MEMORY[0x29EDC1D20])
    {
      sub_29D48F668(v11);
      return 1;
    }

    (*(v2 + 8))(v5, v1);
    sub_29D48F668(v11);
  }

  else
  {
    sub_29D5AAE94(&v9, sub_29D4E79C4);
  }

  return 0;
}

void sub_29D5A7ED0()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36DC();
  v7 = sub_29D5B370C();
  v8 = sub_29D5B425C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_29D48C000, v7, v8, "AccountStatusUpgradeSummaryTileFeedItemViewController loaded", v9, 2u);
    MEMORY[0x29ED5FB80](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
  v11.receiver = v1;
  v11.super_class = v10;
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  sub_29D5A8080();
}

void sub_29D5A8080()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  swift_beginAccess();
  [v3 addSubview_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 hk:*&v1[v4] alignConstraintsWithView:?];

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 heightAnchor];

    v10 = [v9 constraintGreaterThanOrEqualToConstant_];
    LODWORD(v11) = 1148829696;
    [v10 setPriority_];
    [v10 setActive_];
    v12 = *&v1[v4];
    v13 = sub_29D5B2B2C();

    *(swift_allocObject() + 16) = v1;
    v14 = v1;
    sub_29D5B2FCC();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_29D5A8238()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x29EDC9C68];
  sub_29D5AAD1C(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v153 = &v143 - v5;
  v156 = sub_29D5B0EDC();
  v155 = *(v156 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v156, v6);
  v148 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v8;
  MEMORY[0x2A1C7C4A8](v7, v9);
  v154 = &v143 - v10;
  v11 = sub_29D5B359C();
  v12 = *(v11 - 8);
  v167 = v11;
  v168 = v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v151 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AAD80(0);
  v166 = v15;
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v157 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v163 = &v143 - v20;
  sub_29D5AAD1C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], v2);
  v23 = MEMORY[0x2A1C7C4A8](v21 - 8, v22);
  v149 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v28 = &v143 - v27;
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v160 = &v143 - v31;
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v152 = &v143 - v34;
  v36 = MEMORY[0x2A1C7C4A8](v33, v35);
  v165 = &v143 - v37;
  MEMORY[0x2A1C7C4A8](v36, v38);
  v171 = &v143 - v39;
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v2);
  MEMORY[0x2A1C7C4A8](v40 - 8, v41);
  v43 = &v143 - v42;
  v44 = sub_29D5B282C();
  v45 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44, v46);
  v48 = &v143 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29D5B371C();
  v170 = *(v49 - 8);
  v51 = MEMORY[0x2A1C7C4A8](v49, v50);
  v161 = &v143 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x2A1C7C4A8](v51, v53);
  v150 = &v143 - v55;
  MEMORY[0x2A1C7C4A8](v54, v56);
  v58 = &v143 - v57;
  sub_29D5B36DC();
  v59 = sub_29D5B370C();
  v60 = sub_29D5B429C();
  v61 = os_log_type_enabled(v59, v60);
  v169 = v44;
  v172 = v45;
  v164 = v49;
  v159 = v28;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v175 = v63;
    *v62 = 136315138;
    v173 = ObjectType;
    swift_getMetatypeMetadata();
    v64 = sub_29D5B3E7C();
    v66 = sub_29D501890(v64, v65, &v175);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_29D48C000, v59, v60, "[%s] Tapped on account upgrade tile", v62, 0xCu);
    sub_29D48F668(v63);
    v67 = v63;
    v44 = v169;
    v45 = v172;
    MEMORY[0x29ED5FB80](v67, -1, -1);
    v68 = v62;
    v49 = v164;
    MEMORY[0x29ED5FB80](v68, -1, -1);
  }

  v69 = *(v170 + 8);
  v69(v58, v49);
  v70 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  swift_beginAccess();
  sub_29D5AAE14(v1 + v70, v43, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
  v71 = (*(v45 + 48))(v43, 1, v44);
  v72 = v45;
  v73 = v171;
  if (v71 == 1)
  {
    sub_29D5AB160(v43, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    v74 = v161;
    sub_29D5B36CC();
    v75 = sub_29D5B370C();
    v76 = sub_29D5B427C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_29D48C000, v75, v76, "AccountStatusUpgradeSummaryTile could not decode data, cannot proceed", v77, 2u);
      MEMORY[0x29ED5FB80](v77, -1, -1);
    }

    return (v69)(v74, v49);
  }

  v144 = v69;
  v145 = v1;
  (*(v72 + 32))(v48, v43, v44);
  v158 = v48;
  sub_29D5B27EC();
  v79 = *MEMORY[0x29EDC3DA0];
  v81 = v167;
  v80 = v168;
  v82 = *(v168 + 104);
  v83 = v165;
  ObjectType = v168 + 104;
  v161 = v82;
  (v82)(v165, v79, v167);
  v146 = *(v80 + 56);
  v146(v83, 0, 1, v81);
  v84 = *(v166 + 48);
  v85 = MEMORY[0x29EDC3DB0];
  v86 = v163;
  sub_29D5AAE14(v73, v163, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AAE14(v83, v86 + v84, &qword_2A1A17300, v85);
  v87 = *(v80 + 48);
  if (v87(v86, 1, v81) == 1)
  {
    v88 = MEMORY[0x29EDC3DB0];
    sub_29D5AB160(v83, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    sub_29D5AB160(v73, &qword_2A1A17300, v88);
    v89 = v87(v86 + v84, 1, v81);
    v90 = v172;
    v91 = v87;
    if (v89 == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v92 = v152;
  sub_29D5AAE14(v86, v152, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  v91 = v87;
  if (v87(v86 + v84, 1, v81) == 1)
  {
    v93 = MEMORY[0x29EDC3DB0];
    sub_29D5AB160(v165, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    sub_29D5AB160(v171, &qword_2A1A17300, v93);
    (*(v168 + 8))(v92, v81);
    v90 = v172;
LABEL_12:
    sub_29D5AAE94(v86, sub_29D5AAD80);
    goto LABEL_13;
  }

  v107 = v168;
  v108 = v86 + v84;
  v109 = v151;
  (*(v168 + 32))(v151, v108, v81);
  sub_29D5AAC38(&qword_2A17A3FF0, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC3DB8]);
  v110 = sub_29D5B3E0C();
  v111 = *(v107 + 8);
  v111(v109, v81);
  v112 = MEMORY[0x29EDC3DB0];
  sub_29D5AB160(v165, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AB160(v171, &qword_2A1A17300, v112);
  v111(v92, v81);
  sub_29D5AB160(v163, &qword_2A1A17300, v112);
  v90 = v172;
  if (v110)
  {
    goto LABEL_26;
  }

LABEL_13:
  v94 = v160;
  sub_29D5B27EC();
  v95 = v159;
  v96 = v167;
  (v161)(v159, *MEMORY[0x29EDC3DA8], v167);
  v146(v95, 0, 1, v96);
  v97 = *(v166 + 48);
  v98 = MEMORY[0x29EDC3DB0];
  v99 = v157;
  sub_29D5AAE14(v94, v157, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AAE14(v95, v99 + v97, &qword_2A1A17300, v98);
  if (v91(v99, 1, v96) == 1)
  {
    v100 = MEMORY[0x29EDC3DB0];
    sub_29D5AB160(v95, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    sub_29D5AB160(v94, &qword_2A1A17300, v100);
    if (v91(v99 + v97, 1, v96) == 1)
    {
      v86 = v99;
LABEL_16:
      sub_29D5AB160(v86, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v101 = v149;
  sub_29D5AAE14(v99, v149, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  if (v91(v99 + v97, 1, v96) != 1)
  {
    v113 = v168;
    v114 = v99 + v97;
    v115 = v151;
    (*(v168 + 32))(v151, v114, v96);
    sub_29D5AAC38(&qword_2A17A3FF0, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC3DB8]);
    v116 = sub_29D5B3E0C();
    v117 = *(v113 + 8);
    v117(v115, v96);
    v118 = MEMORY[0x29EDC3DB0];
    sub_29D5AB160(v159, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    sub_29D5AB160(v160, &qword_2A1A17300, v118);
    v117(v101, v96);
    sub_29D5AB160(v99, &qword_2A1A17300, v118);
    if ((v116 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    sub_29D5B1CBC();
    v119 = sub_29D5B1C8C();
    v120 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context;
    v121 = v145;
    swift_beginAccess();
    result = sub_29D4A9434(v121 + v120, &v173);
    v122 = v174;
    if (v174)
    {
      v123 = sub_29D499EC0(&v173, v174);
      v124 = *(v122 - 8);
      MEMORY[0x2A1C7C4A8](v123, v123);
      v126 = &v143 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v124 + 16))(v126);
      v127 = sub_29D5B314C();
      (*(v124 + 8))(v126, v122);
      v128 = sub_29D5B1C9C();

      sub_29D48F668(&v173);
      sub_29D5B227C();
      swift_allocObject();
      v129 = v128;
      v130 = sub_29D5B225C();
      v131 = v154;
      v132 = v158;
      sub_29D5B280C();
      if (sub_29D5A5118())
      {
        sub_29D5B224C();

        (*(v155 + 8))(v131, v156);
        return (*(v172 + 8))(v132, v169);
      }

      else
      {
        v133 = sub_29D5B410C();
        (*(*(v133 - 8) + 56))(v153, 1, 1, v133);
        v134 = v121;
        v135 = v155;
        v136 = v148;
        v137 = v156;
        (*(v155 + 16))(v148, v131, v156);
        sub_29D5B40EC();
        v138 = v134;

        v139 = sub_29D5B40DC();
        v140 = (*(v135 + 80) + 48) & ~*(v135 + 80);
        v141 = swift_allocObject();
        v142 = MEMORY[0x29EDCA390];
        *(v141 + 2) = v139;
        *(v141 + 3) = v142;
        *(v141 + 4) = v138;
        *(v141 + 5) = v130;
        (*(v135 + 32))(&v141[v140], v136, v137);
        sub_29D57657C(0, 0, v153, &unk_29D5BBBE8, v141);

        (*(v135 + 8))(v131, v137);
        return (*(v172 + 8))(v158, v169);
      }
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v102 = MEMORY[0x29EDC3DB0];
  sub_29D5AB160(v159, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AB160(v160, &qword_2A1A17300, v102);
  (*(v168 + 8))(v101, v96);
LABEL_19:
  sub_29D5AAE94(v99, sub_29D5AAD80);
LABEL_20:
  v103 = v150;
  sub_29D5B36CC();
  v104 = sub_29D5B370C();
  v105 = sub_29D5B427C();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_29D48C000, v104, v105, "AccountStatusUpgradeSummaryTile is not gateway upgrade, cannot proceed", v106, 2u);
    MEMORY[0x29ED5FB80](v106, -1, -1);
  }

  v144(v103, v164);
  return (*(v90 + 8))(v158, v169);
}

uint64_t sub_29D5A9480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_29D5B0EDC();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = sub_29D5B371C();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = sub_29D5B40EC();
  v6[16] = sub_29D5B40DC();

  return MEMORY[0x2A1C73D48](sub_29D5A95B8, 0, 0);
}

uint64_t sub_29D5A95B8(uint64_t a1)
{
  *(v1 + 136) = sub_29D5B40DC();
  v3 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5A9644, v3, v2);
}

uint64_t sub_29D5A9644()
{
  v1 = v0[6];

  v2 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  v0[18] = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_29D5B2B2C();

  v5 = sub_29D5B2FDC();
  [v5 setEnabled_];

  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_29D5A9748;
  v7 = v0[8];

  return MEMORY[0x2A1C65E50](v7);
}

uint64_t sub_29D5A9748(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_29D5B40CC();
    v4[24] = v7;
    v4[25] = v6;

    return MEMORY[0x2A1C73D48](sub_29D5A9BCC, v7, v6);
  }

  else
  {
    v4[21] = a1;
    v8 = swift_task_alloc();
    v4[22] = v8;
    *v8 = v5;
    v8[1] = sub_29D5A98EC;
    v9 = v4[6];

    return MEMORY[0x2A1C65E70](a1, v9);
  }
}

uint64_t sub_29D5A98EC()
{

  return MEMORY[0x2A1C73D48](sub_29D5A99E8, 0, 0);
}

uint64_t sub_29D5A99E8(uint64_t a1)
{
  *(v1 + 184) = sub_29D5B40DC();
  v3 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5A9A74, v3, v2);
}

uint64_t sub_29D5A9A74()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 48);

  v3 = *(v2 + v1);
  v4 = sub_29D5B2B2C();

  v5 = sub_29D5B2FDC();
  [v5 setEnabled_];

  v7 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5A9B4C, v7, v6);
}

uint64_t sub_29D5A9B4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D5A9BCC(uint64_t a1)
{
  v35 = v1;
  v2 = v1[20];
  v4 = v1[10];
  v3 = v1[11];
  v6 = v1[8];
  v5 = v1[9];
  sub_29D5B36CC();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_29D5B370C();
  v9 = sub_29D5B427C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[20];
    v31 = v1[13];
    v11 = v1[11];
    v32 = v1[12];
    v33 = v1[14];
    v13 = v1[9];
    v12 = v1[10];
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v14 = 136315394;
    sub_29D5AAC38(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
    v15 = sub_29D5B4C4C();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_29D501890(v15, v17, &v34);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v1[5] = v10;
    v19 = v10;
    sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v20 = sub_29D5B3E7C();
    v22 = sub_29D501890(v20, v21, &v34);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_29D48C000, v8, v9, "AccountStatusUpgradeSummaryTile failed to fetch account %s: %s, cannot upgrade", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v30, -1, -1);
    MEMORY[0x29ED5FB80](v14, -1, -1);

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v24 = v1[13];
    v23 = v1[14];
    v26 = v1[11];
    v25 = v1[12];
    v27 = v1[9];
    v28 = v1[10];

    (*(v28 + 8))(v26, v27);
    (*(v24 + 8))(v23, v25);
  }

  return MEMORY[0x2A1C73D48](sub_29D5A9E90, 0, 0);
}

uint64_t sub_29D5A9E90(uint64_t a1)
{
  *(v1 + 208) = sub_29D5B40DC();
  v3 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5A9F1C, v3, v2);
}

uint64_t sub_29D5A9F1C()
{
  v1 = v0[18];
  v2 = v0[6];

  v3 = *(v2 + v1);
  v4 = sub_29D5B2B2C();

  v5 = sub_29D5B2FDC();
  [v5 setEnabled_];

  v6 = v0[24];
  v7 = v0[25];

  return MEMORY[0x2A1C73D48](sub_29D5A9FC8, v6, v7);
}

uint64_t sub_29D5A9FC8()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

id sub_29D5AA048(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  v7 = sub_29D5B282C();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = &v3[OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_headerType;
  v10 = *MEMORY[0x29EDC1E68];
  v11 = sub_29D5B2CAC();
  (*(*(v11 - 8) + 104))(&v3[v9], v10, v11);
  v3[OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_showsSeparator] = 1;
  v12 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  v13 = [objc_allocWithZone(type metadata accessor for AccountUpgradeSummaryTileView(0)) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v12] = v13;
  if (a2)
  {
    v14 = sub_29D5B3E1C();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, v14, a3);

  return v15;
}

id sub_29D5AA250(void *a1)
{
  v3 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  v4 = sub_29D5B282C();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_headerType;
  v7 = *MEMORY[0x29EDC1E68];
  v8 = sub_29D5B2CAC();
  (*(*(v8 - 8) + 104))(&v1[v6], v7, v8);
  v1[OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_showsSeparator] = 1;
  v9 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  v10 = [objc_allocWithZone(type metadata accessor for AccountUpgradeSummaryTileView(0)) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v9] = v10;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_29D5AA40C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D5AA540(uint64_t a1)
{
  sub_29D5AAD1C(319, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29D5B2CAC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29D5AA658@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context;
  swift_beginAccess();
  return sub_29D4A9434(v1 + v3, a1);
}

uint64_t sub_29D5AA6B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context;
  swift_beginAccess();
  sub_29D4A92B4(a1, v1 + v3);
  swift_endAccess();
  sub_29D5A57E0();
  return sub_29D5AAE94(a1, sub_29D4E79C4);
}

uint64_t (*sub_29D5AA730(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D5AA794;
}

uint64_t sub_29D5AA794(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29D5A57E0();
  }

  return result;
}

id sub_29D5AA7C8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a1 = v5;

  return v5;
}

void sub_29D5AA830(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_29D5AA8F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63350](a1, WitnessTable);
}

uint64_t sub_29D5AA94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63358](a1, a2, a3, WitnessTable);
}

void (*sub_29D5AA9B8(uint64_t *a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_29D5B33FC();
  return sub_29D50180C;
}

uint64_t sub_29D5AAAB8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_headerType;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D5AAB34@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC2198];
  v3 = sub_29D5B2E9C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D5AAC38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D5AAD1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5AAD80(uint64_t a1)
{
  if (!qword_2A17A5298)
  {
    sub_29D5AAD1C(255, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A5298);
    }
  }
}

uint64_t sub_29D5AAE14(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D5AAD1C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D5AAE94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5AAEF4(uint64_t a1)
{
  v4 = *(sub_29D5B0EDC() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29D57C4D8;

  return sub_29D5A9480(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_29D5AB040(uint64_t a1)
{
  v4 = *(sub_29D5B0EDC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D5A649C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_29D5AB160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D5AAD1C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5AB1D0(uint64_t a1, uint64_t a2)
{
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D5AB264()
{
  result = qword_2A17A52A8;
  if (!qword_2A17A52A8)
  {
    sub_29D4A02FC(255, &qword_2A17A52B0, MEMORY[0x29EDC7790]);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17A52A8);
  }

  return result;
}

void *sub_29D5AB2BC(uint64_t a1)
{
  v2 = v1;
  v21 = *v1;
  v20 = sub_29D5B13CC();
  v4 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B13EC();
  v8 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords19NewRecordsGenerator_context);
  v18 = sub_29D5B143C();
  sub_29D5AF944(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v12 = sub_29D5B104C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D5B62A0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x29EDC3758], v12);
  (*(v4 + 104))(v7, *MEMORY[0x29EDC3898], v20);
  sub_29D5B13DC();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords19NewRecordsGenerator_domain, v11, v19);
  v16 = sub_29D5AB5B4(a1);
  sub_29D5B0340(a1, type metadata accessor for HealthRecordsGeneratorContext);
  v2[2] = v16;
  return v2;
}

uint64_t sub_29D5AB5B4(uint64_t a1)
{
  v138 = sub_29D5B148C();
  v137 = *(v138 - 8);
  MEMORY[0x2A1C7C4A8](v138, v2);
  v133 = v3;
  v135 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AF944(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v128 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v127 = &v118 - v9;
  v126 = sub_29D5B106C();
  v125 = *(v126 - 8);
  MEMORY[0x2A1C7C4A8](v126, v10);
  v124 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AFF08(0, &qword_2A1A17000, sub_29D5AF9A8, sub_29D5AFAB0, MEMORY[0x29EDC3CA0]);
  v131 = v12;
  v130 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v129 = &v118 - v14;
  sub_29D5AFAE4(0);
  v136 = v15;
  v134 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v132 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AFC40(0);
  v141 = v18;
  v140 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v139 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AFD4C(0);
  v150 = v21;
  v148 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v144 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AFE1C(0);
  v149 = v24;
  v147 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v143 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AFF08(0, &qword_2A1A17050, sub_29D5AFE1C, sub_29D5AFF88, MEMORY[0x29EDB88C0]);
  v146 = v27;
  v145 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v142 = &v118 - v29;
  v30 = sub_29D5B0EDC();
  v151 = *(v30 - 8);
  v152 = v30;
  MEMORY[0x2A1C7C4A8](v30, v31);
  v33 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29D5B1AAC();
  v35 = *(v34 - 8);
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v153 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v41 = &v118 - v40;
  v156 = a1;
  sub_29D5B140C();
  v42 = v161;
  v43 = v162;
  sub_29D499EC0(&v160, v161);
  v44 = sub_29D4C9C8C(v42, v43);
  sub_29D5B1CBC();
  v45 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v157, v159);
  v46 = sub_29D5B136C();
  v47 = [v46 profileIdentifier];

  v48 = sub_29D5B1C3C();
  sub_29D48F668(&v157);
  type metadata accessor for NewRecordsDataProvider();
  v49 = swift_allocObject();
  v49[2] = v44;
  v50 = [v44 healthStore];
  sub_29D5B243C();
  swift_allocObject();
  v51 = sub_29D5B241C();
  v49[3] = v48;
  v49[4] = v51;
  v154 = v49;
  sub_29D48F668(&v160);
  sub_29D5B140C();
  v52 = *MEMORY[0x29EDC3EE8];
  v123 = v35;
  v53 = *(v35 + 104);
  v122 = v34;
  v121 = v53;
  v53(v41, v52, v34);
  v54 = sub_29D5B143C();
  v55 = sub_29D5B10AC();
  v56 = v41;
  v57 = sub_29D5B1A8C();
  v59 = v58;
  v119 = v33;
  if (v55)
  {
    v157 = 0x656C69666F72505BLL;
    v158 = 0xE90000000000003ALL;
    v55 = v55;
    v60 = [v55 identifier];
    sub_29D5B0EBC();

    v61 = sub_29D5B0E8C();
    v63 = v62;
    (*(v151 + 8))(v33, v152);
    MEMORY[0x29ED5E510](v61, v63);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v64 = v157;
    v65 = v158;
  }

  else
  {
    v65 = 0x800000029D5BBCB0;
    v64 = 0xD000000000000013;
  }

  v157 = v64;
  v158 = v65;
  MEMORY[0x29ED5E510](v57, v59);

  v66 = v157;
  v67 = v158;
  v68 = v122;
  v120 = *(v123 + 8);
  v120(v56, v122);
  type metadata accessor for FeedItemContextChangeGenerator();
  v69 = swift_allocObject();
  sub_29D497868(&v160, v69 + 16);
  *(v69 + 56) = v66;
  *(v69 + 64) = v67;
  v123 = v69;
  sub_29D5B140C();
  v121(v153, *MEMORY[0x29EDC3F30], v68);
  v70 = sub_29D5B143C();
  v71 = sub_29D5B10AC();
  v72 = sub_29D5B1A8C();
  v74 = v73;
  if (v71)
  {
    v157 = 0x656C69666F72505BLL;
    v158 = 0xE90000000000003ALL;
    v75 = v72;
    v71 = v71;
    v76 = [v71 identifier];
    v77 = v119;
    sub_29D5B0EBC();

    v78 = sub_29D5B0E8C();
    v80 = v79;
    (*(v151 + 8))(v77, v152);
    MEMORY[0x29ED5E510](v78, v80);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v72 = v75;
    v81 = v157;
    v82 = v158;
  }

  else
  {
    v82 = 0x800000029D5BBCB0;
    v81 = 0xD000000000000013;
  }

  v157 = v81;
  v158 = v82;
  MEMORY[0x29ED5E510](v72, v74);

  v83 = v157;
  v84 = v158;
  v120(v153, v68);
  v85 = swift_allocObject();
  sub_29D497868(&v160, v85 + 16);
  *(v85 + 56) = v83;
  *(v85 + 64) = v84;
  v86 = sub_29D58CB0C();
  v87 = v125;
  v88 = v124;
  v89 = v126;
  (*(v125 + 104))(v124, *MEMORY[0x29EDC37B8], v126);
  sub_29D5B105C();
  (*(v87 + 8))(v88, v89);
  v90 = sub_29D5B369C();
  v91 = v127;
  (*(*(v90 - 8) + 56))(v127, 1, 1, v90);
  *&v160 = v86;
  v92 = MEMORY[0x29EDCA498];
  sub_29D5B02C0(v91, v128, &qword_2A1A172F0, MEMORY[0x29EDCA498]);
  sub_29D5AF9A8(0);
  sub_29D5AFAB0();
  v93 = v129;
  sub_29D5B381C();
  sub_29D5B0B4C(v91, &qword_2A1A172F0, v92);
  v94 = v137;
  v95 = v135;
  v96 = v138;
  (*(v137 + 16))(v135, v156, v138);
  v97 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v98 = (v133 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  (*(v94 + 32))(v99 + v97, v95, v96);
  *(v99 + v98) = v155;
  v100 = swift_allocObject();
  *(v100 + 16) = sub_29D5AFFBC;
  *(v100 + 24) = v99;
  sub_29D4B3AC0(0);
  sub_29D5AFBA4();
  v101 = v132;
  v102 = v131;
  sub_29D5B3BCC();

  (*(v130 + 8))(v93, v102);
  v103 = MEMORY[0x29EDB89F8];
  sub_29D5B01D8(0, &qword_2A1A167B8, MEMORY[0x29EDB89F8]);
  v104 = MEMORY[0x29EDB8990];
  sub_29D5B03A0(&qword_2A1A16BF8, sub_29D5AFAE4, MEMORY[0x29EDB8990]);
  v105 = MEMORY[0x29EDB8A00];
  sub_29D5B0260(&qword_2A1A167C0, &qword_2A1A167B8, v103, MEMORY[0x29EDB8A00]);
  v106 = v139;
  v107 = v136;
  sub_29D5B3B8C();
  (*(v134 + 8))(v101, v107);
  v108 = swift_allocObject();
  *(v108 + 16) = v123;
  *(v108 + 24) = v85;
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B03A0(&qword_2A1A16D88, sub_29D5AFC40, MEMORY[0x29EDB8928]);

  v109 = v144;
  v110 = v141;
  sub_29D5B3BCC();

  (*(v140 + 8))(v106, v110);
  *(swift_allocObject() + 16) = v155;
  sub_29D4B2D8C(0);
  sub_29D5B03A0(&qword_2A1A16BB8, sub_29D5AFD4C, v104);
  sub_29D5B03A0(&qword_2A1A16780, sub_29D4B2D8C, v105);
  v111 = v143;
  v112 = v150;
  sub_29D5B3B8C();

  (*(v148 + 8))(v109, v112);
  *&v160 = MEMORY[0x29EDCA190];
  sub_29D5AFF88();
  v113 = v142;
  v114 = v149;
  sub_29D5B3B4C();
  (*(v147 + 8))(v111, v114);
  sub_29D5B00F0();
  v115 = v146;
  v116 = sub_29D5B3B1C();

  (*(v145 + 8))(v113, v115);
  return v116;
}

void *sub_29D5AC6F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v7 = sub_29D5B371C();
  v35 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AF944(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v32 - v13;
  v15 = sub_29D5B134C();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3;
  v40 = a4;
  v20 = v37;
  result = sub_29D58C0D0(sub_29D5B02A4, v38, a1);
  if (!v20)
  {
    v34 = v19;
    v22 = result;
    v23 = v35;
    sub_29D5AE184(v36, a3, v14);
    v37 = 0;
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_29D5B0B4C(v14, qword_2A1A19830, MEMORY[0x29EDC3840]);
      return v22;
    }

    else
    {
      v24 = *(v16 + 32);
      v33 = v15;
      v24(v34, v14, v15);
      sub_29D5B36AC();
      v25 = sub_29D5B370C();
      v26 = sub_29D5B429C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_29D48C000, v25, v26, "New lab results feed item generated", v27, 2u);
        MEMORY[0x29ED5FB80](v27, -1, -1);
      }

      (*(v23 + 8))(v10, v7);
      sub_29D5AF944(0, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
      v28 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_29D5B62A0;
      v30 = v33;
      v31 = v34;
      (*(v16 + 16))(v29 + v28, v34, v33);
      v41 = v22;
      sub_29D54F7D0(v29);
      (*(v16 + 8))(v31, v30);
      return v41;
    }
  }

  return result;
}

uint64_t sub_29D5ACACC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v6 = sub_29D5B371C();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B0EDC();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v33 - v17;
  v19 = [*a1 identifier];
  sub_29D5B0EBC();

  sub_29D5B36AC();
  v20 = *(v11 + 16);
  v37 = v18;
  v20(v15, v18, v10);
  v38 = v9;
  v21 = sub_29D5B370C();
  v22 = sub_29D5B429C();
  v23 = os_log_type_enabled(v21, v22);
  v39 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v36 = v3;
    v25 = v24;
    v34 = swift_slowAlloc();
    v43 = v34;
    *v25 = 136446210;
    sub_29D5B03A0(&unk_2A17A3A20, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
    v26 = sub_29D5B4C4C();
    v35 = a3;
    v28 = v27;
    v29 = *(v11 + 8);
    v29(v15, v10);
    v30 = sub_29D501890(v26, v28, &v43);
    a3 = v35;

    *(v25 + 4) = v30;
    _os_log_impl(&dword_29D48C000, v21, v22, "New records account feed item generated for account: %{public}s", v25, 0xCu);
    v31 = v34;
    sub_29D48F668(v34);
    MEMORY[0x29ED5FB80](v31, -1, -1);
    MEMORY[0x29ED5FB80](v25, -1, -1);
  }

  else
  {

    v29 = *(v11 + 8);
    v29(v15, v10);
  }

  (*(v40 + 8))(v38, v41);
  sub_29D5ACE3C(a1, v42, a3);
  return (v29)(v37, v10);
}

uint64_t sub_29D5ACE3C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v160 = a2;
  v153 = a3;
  v150 = sub_29D5B16CC();
  v149 = *(v150 - 8);
  MEMORY[0x2A1C7C4A8](v150, v4);
  v148 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v137 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_29D5B0E6C();
  v146 = *(v147 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v147, v9);
  v135 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v136 = &v134 - v13;
  v14 = MEMORY[0x29EDC9C68];
  sub_29D5AF944(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v144 = &v134 - v17;
  v142 = sub_29D5B104C();
  v140 = *(v142 - 8);
  MEMORY[0x2A1C7C4A8](v142, v18);
  v141 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_29D5B134C();
  v151 = *(v152 - 8);
  MEMORY[0x2A1C7C4A8](v152, v20);
  v158 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_29D5B163C();
  v161 = *(v162 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v162, v22);
  v143 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v174 = &v134 - v26;
  v157 = sub_29D5B1AAC();
  v156 = *(v157 - 8);
  MEMORY[0x2A1C7C4A8](v157, v27);
  v155 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29D5B1BCC();
  v169 = *(v29 - 8);
  v31 = MEMORY[0x2A1C7C4A8](v29, v30);
  v186 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v179 = &v134 - v34;
  v178 = sub_29D5B1AEC();
  v176 = *(v178 - 8);
  MEMORY[0x2A1C7C4A8](v178, v35);
  v177 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_29D5B0EDC();
  v164 = *(v165 - 8);
  v38 = MEMORY[0x2A1C7C4A8](v165, v37);
  v154 = &v134 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v42 = &v134 - v41;
  v43 = MEMORY[0x29EDB9BC8];
  sub_29D5AF944(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], v14);
  v46 = MEMORY[0x2A1C7C4A8](v44 - 8, v45);
  v139 = &v134 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v46, v48);
  v50 = &v134 - v49;
  v166 = type metadata accessor for NewRecordsFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v166, v51);
  v175 = &v134 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a1;
  v172 = sub_29D5B203C();
  v54 = *(type metadata accessor for AccountNewRecordsData(0) + 24);
  v145 = a1;
  v138 = v54;
  v55 = v50;
  sub_29D5B02C0(a1 + v54, v50, &qword_2A1A1A390, v43);
  v56 = [v53 identifier];
  v57 = v42;
  sub_29D5B0EBC();

  v58 = [v53 provenance];
  v59 = [v58 title];

  v60 = sub_29D5B3E5C();
  v62 = v61;

  v63 = v53;
  v64 = [v53 provenance];
  v65 = [v64 subtitle];

  v159 = v63;
  if (v65)
  {
    v66 = sub_29D5B3E5C();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  v69 = v175;
  (*(v164 + 32))(v175, v57, v165);
  v70 = v166;
  v71 = (v69 + *(v166 + 20));
  *v71 = v60;
  v71[1] = v62;
  v72 = (v69 + v70[6]);
  *v72 = v66;
  v72[1] = v68;
  v73 = v172;
  *(v69 + v70[7]) = v172;
  result = sub_29D4D1F64(v55, v69 + v70[8]);
  v75 = *(v73 + 16);
  if (v75)
  {
    v167 = 0;
    v76 = 0;
    v173 = *(v176 + 16);
    v77 = v73 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
    v168 = *(v176 + 72);
    LODWORD(v172) = *MEMORY[0x29EDC4068];
    v171 = *MEMORY[0x29EDC3F80];
    v78 = (v169 + 13);
    v79 = (v169 + 1);
    v176 += 16;
    v169 = (v176 - 8);
    v170 = v78;
    v173(v177, v77, v178);
    while (1)
    {
      sub_29D5B1ADC();
      v85 = sub_29D5B1D6C();
      v86 = v186;
      (*(*(v85 - 8) + 104))(v186, v172, v85);
      (*v170)(v86, v171, v29);
      sub_29D5B03A0(&qword_2A1A17360, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD8]);
      sub_29D5B3FFC();
      sub_29D5B3FFC();
      if (v180 == v184 && v181 == v185)
      {
        v80 = *v79;
        (*v79)(v186, v29);
        v80(v179, v29);
      }

      else
      {
        v87 = sub_29D5B4C7C();
        v88 = *v79;
        (*v79)(v186, v29);
        v88(v179, v29);

        if ((v87 & 1) == 0)
        {
          v89 = v177;
          v90 = sub_29D5B1ABC();
          result = (*v169)(v89, v178);
          v84 = v174;
          if (__OFADD__(v167, v90))
          {
            goto LABEL_30;
          }

          v167 += v90;
          goto LABEL_8;
        }
      }

      v81 = v177;
      v82 = sub_29D5B1ABC();
      result = (*v169)(v81, v178);
      v83 = __OFADD__(v76, v82);
      v76 += v82;
      v84 = v174;
      if (v83)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

LABEL_8:
      v77 += v168;
      --v75;
      v69 = v175;
      if (!v75)
      {
        goto LABEL_16;
      }

      v173(v177, v77, v178);
    }
  }

  v167 = 0;
  v76 = 0;
  v84 = v174;
LABEL_16:
  if (__OFADD__(v76, v167))
  {
    goto LABEL_31;
  }

  if (v76 + v167 <= 0)
  {
    sub_29D5B0340(v69, type metadata accessor for NewRecordsFeedItemData);
    v103 = 1;
    v104 = v153;
    v105 = v152;
    v106 = v151;
  }

  else
  {
    v91 = v69;
    v92 = sub_29D5B143C();
    v93 = v156;
    v94 = v155;
    v95 = v157;
    (*(v156 + 104))(v155, *MEMORY[0x29EDC3EE8], v157);
    v96 = [v159 identifier];
    v97 = v154;
    sub_29D5B0EBC();

    v186 = v92;
    v178 = sub_29D497F18(v97, v92);
    v179 = v98;
    (*(v164 + 8))(v97, v165);
    (*(v93 + 8))(v94, v95);
    v99 = v161;
    v100 = MEMORY[0x29EDC3908];
    if (v76 <= 0)
    {
      v100 = MEMORY[0x29EDC3910];
    }

    v101 = v162;
    (*(v161 + 104))(v84, *v100, v162);
    type metadata accessor for NewRecordsFeedItemViewController(0);
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D5B03A0(&qword_2A17A52C8, type metadata accessor for NewRecordsFeedItemData, &unk_29D5B7124);
    v102 = v163;
    sub_29D5B0BEC();
    if (v102)
    {
      (*(v99 + 8))(v84, v101);

      return sub_29D5B0340(v91, type metadata accessor for NewRecordsFeedItemData);
    }

    v163 = 0;
    v107 = v159;

    (*(v140 + 104))(v141, *MEMORY[0x29EDC3758], v142);
    v177 = v186;
    sub_29D5B110C();
    v108 = v139;
    sub_29D5B02C0(v145 + v138, v139, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    v109 = v146;
    v110 = 1;
    v111 = v147;
    v112 = (*(v146 + 48))(v108, 1, v147);
    v113 = v144;
    if (v112 != 1)
    {
      v114 = v136;
      (*(v109 + 32))(v136, v108, v111);
      (*(v109 + 16))(v135, v114, v111);
      sub_29D5B0C6C();
      sub_29D5B413C();
      sub_29D5B16EC();
      (*(v109 + 8))(v114, v111);
      v110 = 0;
    }

    v115 = sub_29D5B170C();
    (*(*(v115 - 8) + 56))(v113, v110, 1, v115);
    sub_29D5B12BC();
    v184 = MEMORY[0x29EDCA1A0];
    v116 = sub_29D5B151C();
    sub_29D59AD10(&v180, v116, v117);

    v118 = v184;
    v119 = sub_29D5B130C();
    sub_29D4E80E8(v118);
    v119(&v180, 0);
    (*(v161 + 16))(v143, v84, v162);
    v120 = v148;
    sub_29D5B16DC();
    v121 = v150;
    sub_29D5B11FC();
    (*(v149 + 8))(v120, v121);
    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_29D5B5E20;
    strcpy((v122 + 32), "NewRecordsTile");
    *(v122 + 47) = -18;
    v123 = [v107 title];
    v124 = sub_29D5B3E5C();
    v126 = v125;

    v180 = v124;
    v181 = v126;
    v184 = 32;
    v185 = 0xE100000000000000;
    v182 = 0;
    v183 = 0xE000000000000000;
    sub_29D4B343C();
    v127 = sub_29D5B478C();
    v129 = v128;

    *(v122 + 48) = v127;
    *(v122 + 56) = v129;
    v130 = sub_29D5B401C();

    v131 = HKUIJoinStringsForAutomationIdentifier();

    v105 = v152;
    if (v131)
    {
      sub_29D5B3E5C();
    }

    v104 = v153;
    v132 = v158;
    sub_29D5B12EC();
    (*(v161 + 8))(v84, v162);
    v106 = v151;
    (*(v151 + 32))(v104, v132, v105);
    v133 = v175;
    sub_29D5B0728(v175);
    sub_29D5B124C();
    sub_29D5B12AC();
    sub_29D5B140C();
    sub_29D5B11CC();

    sub_29D48F668(&v180);
    sub_29D5B0340(v133, type metadata accessor for NewRecordsFeedItemData);
    v103 = 0;
  }

  return (*(v106 + 56))(v104, v103, 1, v105);
}

uint64_t sub_29D5AE184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v116 = a3;
  v4 = sub_29D5B16CC();
  v109 = *(v4 - 8);
  v110 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v108 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v97 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_29D5B0E6C();
  v106 = *(v107 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v107, v10);
  v95 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v96 = &v94 - v14;
  v120 = MEMORY[0x29EDB9BC8];
  v15 = MEMORY[0x29EDC9C68];
  sub_29D5AF944(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v102 = &v94 - v18;
  sub_29D5AF944(0, &qword_2A1A17388, MEMORY[0x29EDC3980], v15);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v104 = &v94 - v21;
  v101 = sub_29D5B104C();
  v99 = *(v101 - 8);
  MEMORY[0x2A1C7C4A8](v101, v22);
  v100 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D5B134C();
  v114 = *(v24 - 8);
  v115 = v24;
  MEMORY[0x2A1C7C4A8](v24, v25);
  v117 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_29D5B163C();
  v119 = *(v121 - 8);
  v28 = MEMORY[0x2A1C7C4A8](v121, v27);
  v103 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v118 = &v94 - v31;
  v32 = sub_29D5B0EDC();
  v112 = *(v32 - 8);
  v113 = v32;
  MEMORY[0x2A1C7C4A8](v32, v33);
  v35 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D5B1AAC();
  v37 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v38);
  v40 = &v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NewLabsFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v41, v42);
  v44 = (&v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = *a1;
  v46 = type metadata accessor for AllAccountsLabRecordsData(0);
  v47 = *(v41 + 20);
  v98 = *(v46 + 20);
  sub_29D5B02C0(a1 + v98, v44 + v47, &qword_2A1A1A390, v120);
  v48 = *(v46 + 24);
  v105 = a1;
  v49 = *(a1 + v48);
  *v44 = v45;
  *(v44 + *(v41 + 24)) = v49;

  v50 = sub_29D5B143C();
  if (v45 < 1)
  {
    v62 = v50;
    sub_29D5B0340(v44, type metadata accessor for NewLabsFeedItemData);

    v63 = 1;
    v65 = v115;
    v64 = v116;
    v66 = v114;
  }

  else
  {
    v120 = v44;
    v111 = v50;
    v51 = sub_29D5B10AC();
    (*(v37 + 104))(v40, *MEMORY[0x29EDC3F30], v36);
    v52 = sub_29D5B1A8C();
    v54 = v53;
    (*(v37 + 8))(v40, v36);
    if (v51)
    {
      v124 = 0x656C69666F72505BLL;
      v125 = 0xE90000000000003ALL;
      v55 = v51;
      v56 = [v55 identifier];
      sub_29D5B0EBC();

      v57 = sub_29D5B0E8C();
      v59 = v58;
      (*(v112 + 8))(v35, v113);
      MEMORY[0x29ED5E510](v57, v59);

      MEMORY[0x29ED5E510](93, 0xE100000000000000);

      v60 = v124;
      v61 = v125;
    }

    else
    {
      v55 = 0;
      v61 = 0x800000029D5BBCB0;
      v60 = 0xD000000000000013;
    }

    v67 = v121;
    v124 = v60;
    v125 = v61;
    MEMORY[0x29ED5E510](v52, v54);

    v113 = v124;
    v69 = v118;
    v68 = v119;
    (*(v119 + 104))(v118, *MEMORY[0x29EDC3910], v67);
    v112 = type metadata accessor for NewRecordsLabFeedItemViewController(0);
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D5B03A0(&qword_2A17A52C0, type metadata accessor for NewLabsFeedItemData, &unk_29D5B706C);
    v70 = v120;
    v71 = v123;
    sub_29D5B0BEC();
    if (v71)
    {

      (*(v68 + 8))(v69, v67);
      return sub_29D5B0340(v70, type metadata accessor for NewLabsFeedItemData);
    }

    v123 = 0;

    (*(v99 + 104))(v100, *MEMORY[0x29EDC3758], v101);
    v73 = v111;
    sub_29D5B110C();
    v74 = v102;
    sub_29D5B02C0(v105 + v98, v102, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    v75 = v106;
    v76 = 1;
    v77 = v107;
    v78 = (*(v106 + 48))(v74, 1, v107);
    v79 = v104;
    if (v78 != 1)
    {
      v80 = v96;
      (*(v75 + 32))(v96, v74, v77);
      (*(v75 + 16))(v95, v80, v77);
      sub_29D5B0C6C();
      sub_29D5B413C();
      sub_29D5B16EC();
      (*(v75 + 8))(v80, v77);
      v76 = 0;
    }

    v81 = sub_29D5B170C();
    (*(*(v81 - 8) + 56))(v79, v76, 1, v81);
    sub_29D5B12BC();
    v126 = MEMORY[0x29EDCA1A0];
    v82 = sub_29D5B14DC();
    sub_29D59AD10(&v124, v82, v83);

    v84 = v126;
    v85 = sub_29D5B130C();
    sub_29D4E80E8(v84);
    v85(&v124, 0);
    v87 = v118;
    v86 = v119;
    (*(v119 + 16))(v103, v118, v121);
    v88 = v108;
    sub_29D5B16DC();
    v89 = v110;
    sub_29D5B11FC();
    (*(v109 + 8))(v88, v89);
    v90 = sub_29D5B401C();
    v91 = HKUIJoinStringsForAutomationIdentifier();

    if (v91)
    {
      sub_29D5B3E5C();
    }

    v66 = v114;
    v92 = v120;
    v93 = v117;
    sub_29D5B12EC();
    (*(v86 + 8))(v87, v121);
    v65 = v115;
    v64 = v116;
    (*(v66 + 32))(v116, v93, v115);
    sub_29D5B140C();
    sub_29D5B11CC();

    sub_29D48F668(&v124);
    sub_29D5B0340(v92, type metadata accessor for NewLabsFeedItemData);
    v63 = 0;
  }

  return (*(v66 + 56))(v64, v63, 1, v65);
}

uint64_t sub_29D5AEDCC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D5AF944(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v41 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v35 - v7;
  sub_29D5B01D8(0, &qword_2A1A161B8, MEMORY[0x29EDB8B18]);
  v10 = v9;
  v40 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v35 - v12;
  v39 = sub_29D5B371C();
  v14 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_29D5B36AC();
  v19 = v18;
  v20 = sub_29D5B370C();
  v21 = sub_29D5B427C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v37 = v5;
    v25 = v24;
    v43 = v24;
    *v23 = 136446210;
    v42 = v18;
    v26 = v18;
    sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    sub_29D5B4CAC();
    v27 = HKSensitiveLogItem();
    v38 = a2;
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v28 = sub_29D5B3E9C();
    v30 = sub_29D501890(v28, v29, &v43);

    *(v23 + 4) = v30;
    a2 = v38;
    _os_log_impl(&dword_29D48C000, v20, v21, "Error making feed item for AccountNewRecordsData or AllAccountsLabRecordsData, hiding from UI: %{public}s", v23, 0xCu);
    sub_29D48F668(v25);
    v31 = v25;
    v5 = v37;
    MEMORY[0x29ED5FB80](v31, -1, -1);
    v32 = v23;
    v10 = v36;
    MEMORY[0x29ED5FB80](v32, -1, -1);
  }

  (*(v14 + 8))(v17, v39);
  v42 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
  sub_29D5B39EC();
  (*(v41 + 8))(v8, v5);
  sub_29D5B0260(&qword_2A1A161C0, &qword_2A1A161B8, MEMORY[0x29EDB8B18], MEMORY[0x29EDB8B20]);
  v33 = sub_29D5B3B1C();
  result = (*(v40 + 8))(v13, v10);
  *a2 = v33;
  return result;
}

char *sub_29D5AF224@<X0>(void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_29D499EC0(a2 + 2, a2[5]);
  sub_29D499EC0(a2 + 2, a2[5]);
  v6 = sub_29D5B13BC();
  sub_29D5B13AC();

  v7 = sub_29D5B404C();

  if (!v12)
  {
    sub_29D499EC0(a3 + 2, a3[5]);
    sub_29D499EC0(a3 + 2, a3[5]);
    v9 = sub_29D5B13BC();
    sub_29D5B13AC();

    v10 = sub_29D5B404C();

    result = sub_29D54F7FC(v10);
    *a4 = v7;
  }

  return result;
}

uint64_t sub_29D5AF3C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v6;
    v22 = v21;
    v42 = v21;
    *v20 = 136446466;
    v41 = sub_29D58310C();
    sub_29D5B018C(0, &qword_2A17A52B8, sub_29D58310C);
    v23 = sub_29D5B3E7C();
    v37 = v10;
    v25 = sub_29D501890(v23, v24, &v42);
    v40 = a2;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v41 = v15;
    v27 = v15;
    sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    sub_29D5B4CAC();
    v28 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v29 = sub_29D5B3E7C();
    v31 = sub_29D501890(v29, v30, &v42);

    *(v20 + 14) = v31;
    a2 = v40;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v32 = v22;
    v6 = v38;
    MEMORY[0x29ED5FB80](v32, -1, -1);
    v33 = v20;
    v5 = v39;
    MEMORY[0x29ED5FB80](v33, -1, -1);

    (*(v11 + 8))(v14, v37);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v41 = MEMORY[0x29EDCA190];
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D5B03A0(&qword_2A1A165D8, sub_29D4B37EC, MEMORY[0x29EDB8AB8]);
  v34 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v34;
  return result;
}

uint64_t sub_29D5AF7AC()
{

  v1 = OBJC_IVAR____TtC13HealthRecords19NewRecordsGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D5B0340(v0 + OBJC_IVAR____TtC13HealthRecords19NewRecordsGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NewRecordsGenerator(uint64_t a1)
{
  result = qword_2A1A1A140;
  if (!qword_2A1A1A140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5AF8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords19NewRecordsGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D5AF944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5AF9A8(uint64_t a1)
{
  if (!qword_2A1A167D8)
  {
    sub_29D5AFA10(255);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A167D8);
    }
  }
}

void sub_29D5AFA10(uint64_t a1)
{
  if (!qword_2A1A16490)
  {
    sub_29D5AF944(255, &qword_2A1A16498, type metadata accessor for AccountNewRecordsData, MEMORY[0x29EDC9A40]);
    type metadata accessor for AllAccountsLabRecordsData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A16490);
    }
  }
}

void sub_29D5AFAE4(uint64_t a1)
{
  if (!qword_2A1A16BF0)
  {
    sub_29D5AFF08(255, &qword_2A1A17000, sub_29D5AF9A8, sub_29D5AFAB0, MEMORY[0x29EDC3CA0]);
    sub_29D4B3AC0(255);
    sub_29D5AFBA4();
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16BF0);
    }
  }
}

unint64_t sub_29D5AFBA4()
{
  result = qword_2A1A17008;
  if (!qword_2A1A17008)
  {
    sub_29D5AFF08(255, &qword_2A1A17000, sub_29D5AF9A8, sub_29D5AFAB0, MEMORY[0x29EDC3CA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A17008);
  }

  return result;
}

void sub_29D5AFC40(uint64_t a1)
{
  if (!qword_2A1A16D80)
  {
    sub_29D5AFAE4(255);
    v1 = MEMORY[0x29EDB89F8];
    sub_29D5B01D8(255, &qword_2A1A167B8, MEMORY[0x29EDB89F8]);
    sub_29D5B03A0(&qword_2A1A16BF8, sub_29D5AFAE4, MEMORY[0x29EDB8990]);
    sub_29D5B0260(&qword_2A1A167C0, &qword_2A1A167B8, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D5B387C();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16D80);
    }
  }
}

void sub_29D5AFD4C(uint64_t a1)
{
  if (!qword_2A1A16BB0)
  {
    sub_29D5AFC40(255);
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D5B03A0(&qword_2A1A16D88, sub_29D5AFC40, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16BB0);
    }
  }
}

void sub_29D5AFE1C(uint64_t a1)
{
  if (!qword_2A1A16CF0)
  {
    sub_29D5AFD4C(255);
    sub_29D4B2D8C(255);
    sub_29D5B03A0(&qword_2A1A16BB8, sub_29D5AFD4C, MEMORY[0x29EDB8990]);
    sub_29D5B03A0(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16CF0);
    }
  }
}

void sub_29D5AFF08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void *sub_29D5AFFBC(uint64_t a1, uint64_t *a2)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_29D5AC6F0(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_29D5B0064@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *a1;
  sub_29D5AFA10(0);
  result = v6(v7, &a1[*(v8 + 48)]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_29D5B00F0()
{
  result = qword_2A1A17058;
  if (!qword_2A1A17058)
  {
    sub_29D5AFF08(255, &qword_2A1A17050, sub_29D5AFE1C, sub_29D5AFF88, MEMORY[0x29EDB88C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A17058);
  }

  return result;
}

uint64_t sub_29D5B018C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D5B01D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_29D4B3AC0(255);
    v7 = v6;
    v8 = sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D5B0260(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D5B01D8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D5B02C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D5AF944(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D5B0340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5B03A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D5B03E8(uint64_t a1)
{
  v2 = sub_29D5B200C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AF944(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for NewRecordsFeedItemData(0);
  v12 = (a1 + *(v11 + 24));
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
    v30 = v2;
    v15 = sub_29D5B0EFC();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_29D53370C(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D5B5E20;
    v17 = (a1 + *(v11 + 20));
    v19 = *v17;
    v18 = v17[1];
    v20 = MEMORY[0x29EDC99B0];
    *(v16 + 56) = MEMORY[0x29EDC99B0];
    v21 = sub_29D4A25A4();
    *(v16 + 32) = v19;
    *(v16 + 40) = v18;
    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 64) = v21;
    *(v16 + 72) = v14;
    *(v16 + 80) = v13;

    sub_29D5B1FFC();
    v2 = v30;
  }

  else
  {
    v22 = sub_29D5B0EFC();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    sub_29D53370C(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_29D5B62A0;
    v24 = (a1 + *(v11 + 20));
    v25 = *v24;
    v26 = v24[1];
    *(v23 + 56) = MEMORY[0x29EDC99B0];
    *(v23 + 64) = sub_29D4A25A4();
    *(v23 + 32) = v25;
    *(v23 + 40) = v26;

    sub_29D5B1FFC();
  }

  v27 = sub_29D5B2A0C();

  (*(v3 + 8))(v6, v2);
  sub_29D5B0B4C(v10, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  return v27;
}

uint64_t sub_29D5B0728(uint64_t a1)
{
  v2 = sub_29D5B1BCC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29D5B1D6C();
  v7 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44, v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B1AEC();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B03E8(a1);
  v35 = v16;
  v36 = v15;
  v17 = *(a1 + *(type metadata accessor for NewRecordsFeedItemData(0) + 28));
  v18 = *(v17 + 16);
  if (v18)
  {
    v20 = *(v11 + 16);
    v19 = v11 + 16;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v49 = *(v19 + 56);
    v50 = v20;
    v48 = (v3 + 88);
    v47 = *MEMORY[0x29EDC3F80];
    v22 = v7;
    v23 = (v19 - 8);
    v39 = (v3 + 96);
    v40 = (v3 + 8);
    v37 = (v22 + 8);
    v38 = (v22 + 32);
    v24 = MEMORY[0x29EDCA190];
    v41 = v19;
    v42 = v2;
    v20(v14, v21, v10);
    while (1)
    {
      if (sub_29D5B1ACC())
      {
        (*v23)(v14, v10);
      }

      else
      {
        sub_29D5B1ADC();
        v25 = (*v48)(v6, v2);
        if (v25 == v47)
        {
          (*v39)(v6, v2);
          v27 = v43;
          v26 = v44;
          (*v38)(v43, v6, v44);
          sub_29D5B1ABC();
          v28 = sub_29D5B1D3C();
          v45 = v29;
          v46 = v28;
          (*v37)(v27, v26);
          (*v23)(v14, v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_29D514C4C(0, *(v24 + 2) + 1, 1, v24);
          }

          v31 = *(v24 + 2);
          v30 = *(v24 + 3);
          if (v31 >= v30 >> 1)
          {
            v24 = sub_29D514C4C((v30 > 1), v31 + 1, 1, v24);
          }

          *(v24 + 2) = v31 + 1;
          v32 = &v24[16 * v31];
          v33 = v45;
          *(v32 + 4) = v46;
          *(v32 + 5) = v33;
          v2 = v42;
        }

        else
        {
          (*v23)(v14, v10);
          (*v40)(v6, v2);
        }
      }

      v21 += v49;
      if (!--v18)
      {
        break;
      }

      v50(v14, v21, v10);
    }
  }

  sub_29D5B407C();

  return v36;
}

uint64_t sub_29D5B0B4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D5AF944(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}