uint64_t sub_2588825E0(uint64_t a1, uint64_t a2)
{
  sub_2587B63B8(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_258882660(uint64_t a1)
{
  if (!qword_27F960DD0)
  {
    sub_2587B63B8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960DD0);
    }
  }
}

void sub_2588826C4(uint64_t a1)
{
  if (!qword_27F960DD8)
  {
    sub_258882758(255);
    sub_258881EBC(&qword_27F960DE8, sub_258882758, MEMORY[0x277CBCD90]);
    v1 = sub_2588BBCA8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960DD8);
    }
  }
}

void sub_258882758(uint64_t a1)
{
  if (!qword_27F960DE0)
  {
    sub_2587AAC58(255);
    v1 = sub_2588BBCD8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960DE0);
    }
  }
}

void sub_2588827E4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2588827F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258881F04(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_258882868(uint64_t a1)
{
  sub_2588BDA08();
  if (v1 <= 0x3F)
  {
    sub_2588BD488();
    if (v2 <= 0x3F)
    {
      sub_2588BDCE8();
      if (v3 <= 0x3F)
      {
        sub_258883224(319, &qword_27F960E88, sub_2587AA704, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_258883224(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_258883224(319, &qword_27F960E90, MEMORY[0x28220C040], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_258888BC8(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_2587B2F78();
                if (v8 <= 0x3F)
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
}

uint64_t sub_258882A48(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7)
  {
    v9 = v7 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2588BB9F8();
  if (v7 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v6 + 64);
  if (v7)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = *(v10 - 8);
  if (v9 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v9;
  }

  v16 = *(v10 - 8);
  v17 = *(v6 + 80);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (*(v14 + 84) <= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = *(v14 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v17 | 7;
  v22 = ((v17 + 16) & ~v17) + v12 + v17;
  v23 = v13 + v17;
  v24 = v18 & 0xF8 | 7;
  if (v20 < a2)
  {
    v25 = ((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v24 + ((v13 + ((v23 + ((v22 + ((v17 + 40) & ~v21)) & ~v17)) & ~v17) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v24) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v25 <= 3)
    {
      v26 = ((a2 - v20 + 255) >> 8) + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *&a1[v25];
        if (*&a1[v25])
        {
          goto LABEL_35;
        }
      }

      else
      {
        v29 = *&a1[v25];
        if (v29)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v28)
    {
      v29 = a1[v25];
      if (a1[v25])
      {
LABEL_35:
        v30 = (v29 - 1) << (8 * v25);
        if (v25 <= 3)
        {
          v31 = *a1;
        }

        else
        {
          v30 = 0;
          v31 = *a1;
        }

        return v20 + (v31 | v30) + 1;
      }
    }
  }

  if ((v20 & 0x80000000) == 0)
  {
    v32 = *(a1 + 1);
    if (v32 >= 0xFFFFFFFF)
    {
      LODWORD(v32) = -1;
    }

    return (v32 + 1);
  }

  v34 = ~v17;
  v35 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v21 + 8) & ~v21;
  if (v7 == v20)
  {
    v36 = *(v6 + 48);

    return v36((v17 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v34, v7, v5);
  }

  v37 = (v22 + v35) & v34;
  if (v9 == v20)
  {
    if (v7 >= 2)
    {
      v40 = (*(v6 + 48))(v37, v7, v5, v16);
      if (v40 >= 2)
      {
        return v40 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v38 = *(v16 + 48);
  v39 = (v24 + ((v13 + ((v23 + v37) & v34) + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v24;

  return v38(v39);
}

void sub_258882DBC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v46 = *(a4 + 16);
  v7 = *(v46 - 8);
  v47 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_2588BB9F8();
  v12 = 0;
  if (v8 >= 0)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v9;
  }

  v14 = *(v7 + 64);
  if (v8)
  {
    v15 = *(v7 + 64);
  }

  else
  {
    v15 = v14 + 1;
  }

  v16 = *(v11 - 8);
  if (v10 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v10;
  }

  v18 = *(v11 - 8);
  v19 = *(v7 + 80);
  v20 = *(v16 + 80);
  v21 = *(v16 + 64);
  if (*(v16 + 84) <= 0x7FFFFFFEu)
  {
    v22 = 2147483646;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  if (v17 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v17;
  }

  v24 = v19 | 7;
  v25 = ((v19 + 16) & ~v19) + v14;
  v26 = v20 & 0xF8 | 7;
  v27 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = ((v27 + ((v26 + ((v15 + ((v15 + v19 + ((v25 + v19 + ((v19 + 40) & ~(v19 | 7))) & ~v19)) & ~v19) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v23 < a3)
  {
    if (v28 <= 3)
    {
      v29 = ((a3 - v23 + 255) >> 8) + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v12 = v30;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v23 >= a2)
  {
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *(a1 + v28) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_52;
      }

      *(a1 + v28) = 0;
    }

    else if (v12)
    {
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_52;
    }

    if (!a2)
    {
      return;
    }

LABEL_52:
    if ((v23 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = (a2 - 1);
      }

      return;
    }

    v33 = ~v19;
    v34 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + v24 + 8) & ~v24;
    if (v8 == v23)
    {
      if (v9 < a2)
      {
        if (v25 <= 3)
        {
          v36 = ~(-1 << (8 * v25));
        }

        else
        {
          v36 = -1;
        }

        if (v25)
        {
          v37 = v36 & (~v9 + a2);
          if (v25 <= 3)
          {
            v38 = v25;
          }

          else
          {
            v38 = 4;
          }

          bzero(((v34 + v24 + 8) & ~v24), v25);
          if (v38 > 2)
          {
            if (v38 == 3)
            {
              *v35 = v37;
              *(v35 + 2) = BYTE2(v37);
            }

            else
            {
              *v35 = v37;
            }
          }

          else if (v38 == 1)
          {
            *v35 = v37;
          }

          else
          {
            *v35 = v37;
          }
        }

        return;
      }

      v40 = *(v47 + 56);
      v39 = (v19 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v33;
      v41 = a2;
    }

    else
    {
      v39 = (v25 + v19 + v35) & v33;
      if (v10 != v23)
      {
        v42 = ((v26 + ((v15 + ((v15 + v19 + v39) & v33) + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v26);
        if (v22 >= a2)
        {
          v45 = *(v18 + 56);

          v45(v42, a2);
        }

        else if (v27 != -8)
        {
          v43 = ~v22 + a2;
          v44 = v42;
          bzero(v42, (v27 + 8));
          *v44 = v43;
        }

        return;
      }

      if (v8 < 2)
      {
        return;
      }

      v40 = *(v47 + 56);
      v41 = (a2 + 1);
    }

    v40(v39, v41, v8, v46);
    return;
  }

  v31 = ~v23 + a2;
  bzero(a1, ((v27 + ((v26 + ((v15 + ((v15 + v19 + ((v25 + v19 + ((v19 + 40) & ~(v19 | 7))) & ~v19)) & ~v19) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 31) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v28 <= 3)
  {
    v32 = (v31 >> 8) + 1;
  }

  else
  {
    v32 = 1;
  }

  if (v28 <= 3)
  {
    *a1 = v31;
    if (v12 > 1)
    {
LABEL_40:
      if (v12 == 2)
      {
        *(a1 + v28) = v32;
      }

      else
      {
        *(a1 + v28) = v32;
      }

      return;
    }
  }

  else
  {
    *a1 = v31;
    if (v12 > 1)
    {
      goto LABEL_40;
    }
  }

  if (v12)
  {
    *(a1 + v28) = v32;
  }
}

void sub_258883224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t (*sub_2588832CC(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 72));
  v8 = *v7;
  LODWORD(v7) = *(v7 + 16);
  v9 = v8;
  v13 = v8;
  if (v7 == 1)
  {
    sub_2587B2344(v8);
    v10 = v13;
    if (v13)
    {
LABEL_3:
      *(swift_allocObject() + 16) = v10;
      return sub_2587AA688;
    }
  }

  else
  {

    sub_2588BDBE8();
    v12 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();
    sub_2588882FC(v9, *(&v13 + 1), 0);
    (*(v4 + 8))(v6, v3);
    v10 = v14;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_258883490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v62 = a1;
  v65 = *(a1 - 8);
  v66 = *(v65 + 64);
  v3 = MEMORY[0x28223BE20](a1);
  v64 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(v3 + 16);
  v5 = sub_2588BDA08();
  v56 = *(a1 + 32);
  v6 = *(v56 + 8);
  v7 = MEMORY[0x277CE0BD8];
  v77 = MEMORY[0x277CE0BD8];
  v78 = v68;
  v8 = MEMORY[0x277CE0BC8];
  v79 = MEMORY[0x277CE0BC8];
  v80 = v6;
  swift_getOpaqueTypeMetadata2();
  sub_2588BCA98();
  v9 = sub_2588BC1E8();
  WitnessTable = swift_getWitnessTable();
  v77 = v5;
  v78 = v68;
  v79 = v9;
  v80 = WitnessTable;
  v81 = v6;
  v11 = sub_2588BD4D8();
  v77 = v7;
  v78 = v68;
  v79 = v8;
  v80 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_25888829C(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v84 = OpaqueTypeConformance2;
  v85 = v13;
  v83 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v77 = v7;
  v78 = v68;
  v79 = v11;
  v80 = v8;
  v81 = v6;
  v82 = v14;
  sub_2588BD3B8();
  v15 = sub_2588BC1E8();
  v16 = sub_2588BC318();
  v75 = swift_getWitnessTable();
  v76 = v13;
  v17 = swift_getWitnessTable();
  v77 = v15;
  v78 = v16;
  v18 = MEMORY[0x277CDDB70];
  v79 = v17;
  v80 = MEMORY[0x277CDDB70];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = sub_2588BB9F8();
  v77 = v15;
  v78 = v16;
  v79 = v17;
  v80 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_2587B2C84();
  v77 = OpaqueTypeMetadata2;
  v78 = v20;
  v79 = v21;
  v80 = v22;
  sub_2588BD378();
  sub_2588BDCE8();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  sub_2588BD238();
  sub_258837EEC(255);
  v23 = sub_2588BC1E8();
  v55 = swift_getWitnessTable();
  v74 = v55;
  v24 = swift_getWitnessTable();
  v54 = v24;
  v25 = sub_25888829C(qword_27F95FA28, sub_258837EEC, MEMORY[0x277CE0470]);
  v72 = v24;
  v73 = v25;
  v58 = swift_getWitnessTable();
  v77 = v23;
  v78 = v58;
  v59 = MEMORY[0x277CE0CA8];
  v60 = swift_getOpaqueTypeMetadata2();
  v61 = *(v60 - 8);
  v26 = MEMORY[0x28223BE20](v60);
  v57 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v52 = &v52 - v28;
  v29 = swift_checkMetadataState();
  v53 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v52 - v30;
  v32 = swift_checkMetadataState();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v52 - v34;
  v36 = v62;
  v37 = *(v62 + 40);
  v38 = v56;
  *&v39 = v56;
  *(&v39 + 1) = v37;
  v69 = v68;
  v70 = v39;
  v40 = v63;
  v71 = v63;
  swift_checkMetadataState();
  sub_2588BD228();
  sub_2587A7B40();
  sub_2588BCEB8();
  (*(v33 + 8))(v35, v32);
  v41 = v65;
  v42 = v64;
  (*(v65 + 16))(v64, v40, v36);
  v43 = v41;
  v44 = (*(v41 + 80) + 48) & ~*(v41 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v68;
  *(v45 + 32) = v38;
  *(v45 + 40) = v37;
  (*(v43 + 32))(v45 + v44, v42, v36);
  v46 = v52;
  v47 = v58;
  sub_2588BCED8();

  (*(v53 + 8))(v31, v29);
  v77 = v29;
  v78 = v47;
  swift_getOpaqueTypeConformance2();
  v48 = v57;
  v49 = v60;
  sub_2587DCF7C();
  v50 = *(v61 + 8);
  v50(v46, v49);
  sub_2587DCF7C();
  return (v50)(v48, v49);
}

void sub_258883CFC(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v156 = a5;
  v159 = a4;
  v157 = a3;
  v155 = a1;
  v141 = a6;
  v8 = sub_2588BC318();
  v150 = v8;
  v135 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v134 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2588BD488();
  MEMORY[0x28223BE20](v10 - 8);
  v140 = (&v116 - v11);
  v12 = sub_2588BDA08();
  v13 = a4[1];
  v14 = MEMORY[0x277CE0BD8];
  v169 = MEMORY[0x277CE0BD8];
  v170 = a2;
  v15 = MEMORY[0x277CE0BC8];
  v171 = MEMORY[0x277CE0BC8];
  v172 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_2588BCA98();
  v16 = sub_2588BC1E8();
  WitnessTable = swift_getWitnessTable();
  v169 = v12;
  v170 = a2;
  v171 = v16;
  v172 = WitnessTable;
  v173 = v13;
  v18 = sub_2588BD4D8();
  v169 = v14;
  v170 = a2;
  v171 = v15;
  v172 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_25888829C(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v176 = OpaqueTypeConformance2;
  v177 = v20;
  v175 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v169 = v14;
  v170 = a2;
  v137 = v18;
  v171 = v18;
  v172 = v15;
  v139 = v13;
  v173 = v13;
  v174 = v21;
  v136 = v21;
  v22 = sub_2588BD3B8();
  v129 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v138 = &v116 - v23;
  v24 = sub_2588BC1E8();
  v131 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v128 = &v116 - v25;
  v132 = v22;
  v127 = swift_getWitnessTable();
  v168[2] = v127;
  v168[3] = v20;
  v148 = v24;
  v147 = swift_getWitnessTable();
  v169 = v24;
  v170 = v8;
  v171 = v147;
  v172 = MEMORY[0x277CDDB70];
  v146 = MEMORY[0x277CDE6E8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v133 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v130 = &v116 - v26;
  v158 = a2;
  v27 = v157;
  v169 = a2;
  v170 = v157;
  v171 = v159;
  v172 = v156;
  v28 = type metadata accessor for ExpandableWheelPickerView(0, &v169);
  v29 = *(v28 - 1);
  v142 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v116 - v30;
  sub_25888859C(0);
  v145 = v32;
  v33 = MEMORY[0x28223BE20](v32);
  v144 = (&v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = *(v27 - 1);
  v35 = MEMORY[0x28223BE20](v33);
  v154 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v153 = &v116 - v37;
  v143 = *(v29 + 16);
  v38 = v155;
  v143(v31, v155, v28);
  v39 = (*(v29 + 80) + 48) & ~*(v29 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = v158;
  *(v40 + 3) = v27;
  v41 = v156;
  *(v40 + 4) = v159;
  *(v40 + 5) = v41;
  v42 = *(v29 + 32);
  v42(v40 + v39, v31, v28);
  v151 = v28;
  v143(v31, v38, v28);
  v43 = v157;
  v44 = swift_allocObject();
  *(v44 + 2) = v158;
  *(v44 + 3) = v43;
  *(v44 + 4) = v159;
  *(v44 + 5) = v41;
  v42(v44 + v39, v31, v28);
  KeyPath = swift_getKeyPath(aP_11);
  v46 = v144;
  *v144 = KeyPath;
  sub_258883224(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v47 = v46;
  swift_storeEnumTagMultiPayload();
  v48 = v145;
  v49 = *(v145 + 52);
  v50 = *MEMORY[0x277CDF988];
  v51 = sub_2588BC1C8();
  (*(*(v51 - 8) + 104))(v47 + v49, v50, v51);
  v52 = (v47 + *(v48 + 56));
  *v52 = sub_258888AA0;
  v52[1] = v40;
  v53 = (v47 + *(v48 + 60));
  *v53 = sub_258888AB8;
  v53[1] = v44;
  v160 = v158;
  v161 = v43;
  v162 = v159;
  v163 = v41;
  v54 = v155;
  v164 = v155;
  sub_25888829C(&qword_27F960F30, sub_25888859C, &unk_2588C55E8);
  v55 = v154;
  sub_25888F518(sub_258888B88);
  sub_258889168(v47, sub_25888859C);
  sub_2587DCF7C();
  v56 = v152 + 8;
  v145 = *(v152 + 8);
  (v145)(v55, v43);
  v57 = sub_2588BB9F8();
  v169 = v148;
  v170 = v150;
  v171 = v147;
  v172 = MEMORY[0x277CDDB70];
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_2587B2C84();
  v169 = OpaqueTypeMetadata2;
  v170 = v57;
  v144 = v58;
  v171 = v58;
  v172 = v59;
  v143 = v59;
  v60 = sub_2588BD378();
  v61 = sub_2588BDCE8();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v65 = &v116 - v64;
  v66 = v54 + *(v151 + 21);
  v67 = *v66;
  v68 = *(v66 + 8);
  LOBYTE(v169) = v67;
  v170 = v68;
  sub_258888BC8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  v69 = sub_2588BD2C8();
  v146 = v60;
  if (LOBYTE(v168[0]) != 1)
  {
    MEMORY[0x28223BE20](v69);
    v103 = &v116 - v64;
    (*(*(v60 - 8) + 56))(v103, 1, 1, v60);
    swift_getWitnessTable();
    sub_25889F124(v103, v65);
    v104 = v63;
    v105 = *(v62 + 8);
    v105(v103, v61);
LABEL_5:
    v106 = v154;
    v107 = v153;
    v108 = v157;
    v109 = (*(v152 + 16))(v154, v153, v157);
    v159 = &v116;
    v169 = v106;
    MEMORY[0x28223BE20](v109);
    v110 = &v116 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v62 + 16))(v110, v65, v61);
    v170 = v110;
    v168[0] = v108;
    v168[1] = v61;
    v166 = v156;
    v165 = swift_getWitnessTable();
    v167 = swift_getWitnessTable();
    sub_25881C7E0(&v169, 2uLL, v168);
    v105(v65, v61);
    v111 = v107;
    v112 = v145;
    (v145)(v111, v108);
    v105(v110, v61);
    v112(v106, v108);
    return;
  }

  v123 = v57;
  v125 = v62;
  v122 = &v116 - v64;
  v126 = v61;
  v142 = v56;
  v124 = &v116;
  v121 = *(v60 - 8);
  v70 = MEMORY[0x28223BE20](v69);
  v117 = &v116 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = &v116;
  v120 = v71;
  MEMORY[0x28223BE20](v70);
  v119 = v72;
  v73 = &v116 - v72;
  sub_2588BC688();
  v74 = v155;
  v75 = sub_258886564(v151, v140);
  MEMORY[0x28223BE20](v75);
  v76 = v157;
  *(&v116 - 6) = v158;
  *(&v116 - 5) = v76;
  v115 = v136;
  v114 = v139;
  v113 = v137;
  v77 = v138;
  sub_2588BD398();
  sub_258888BC8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_2588BFF50;
  v79 = *(v74 + 24);
  *(v78 + 32) = *(v74 + 16);
  *(v78 + 40) = v79;
  *(v78 + 48) = 0x72656B636950;
  *(v78 + 56) = 0xE600000000000000;

  v80 = sub_2588BD9A8();

  v81 = HKUIJoinStringsForAutomationIdentifier();

  if (v81)
  {
    sub_2588BD8A8();

    v82 = v128;
    v83 = v132;
    sub_2588BCFB8();

    (*(v129 + 8))(v77, v83);
    v84 = v134;
    sub_2588BC308();
    v85 = v130;
    v86 = v148;
    v87 = v150;
    sub_2588BCE88();
    (*(v135 + 8))(v84, v87);
    v88 = (*(v131 + 8))(v82, v86);
    v89 = v123;
    v90 = *(v123 - 8);
    MEMORY[0x28223BE20](v88);
    v92 = &v116 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_258883224(0, &qword_27F960E90, MEMORY[0x28220C040], MEMORY[0x277CE10B8]);
    sub_2588BD2C8();
    v93 = OpaqueTypeMetadata2;
    sub_2588BD018();
    (*(v90 + 8))(v92, v89);
    (*(v133 + 8))(v85, v93);
    v94 = v146;
    swift_getWitnessTable();
    v95 = v117;
    sub_2587DCF7C();
    v96 = v121;
    v97 = *(v121 + 8);
    v98 = v97(v73, v94);
    MEMORY[0x28223BE20](v98);
    v99 = &v116 - v119;
    sub_2587DCF7C();
    v100 = v97(v95, v94);
    MEMORY[0x28223BE20](v100);
    v101 = &v116 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v96 + 32))(v101, v99, v94);
    (*(v96 + 56))(v101, 0, 1, v94);
    v65 = v122;
    sub_25889F124(v101, v122);
    v62 = v125;
    v104 = v63;
    v105 = *(v125 + 8);
    v102 = v101;
    v61 = v126;
    v105(v102, v126);
    goto LABEL_5;
  }

  __break(1u);
}

void sub_258885080(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v78 = a5;
  v80 = a4;
  v76 = a3;
  v70 = a6;
  v79 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258857D8C(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v71 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v69 - v13;
  sub_2587DFBD0(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v69 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v83 = &v69 - v17;
  v18 = a1[1];
  v84 = *a1;
  v85 = v18;
  v19 = sub_25878F648();

  v20 = MEMORY[0x277D837D0];
  v72 = v19;
  v21 = sub_2588BCDF8();
  v23 = v22;
  v84 = v21;
  v85 = v22;
  v25 = v24 & 1;
  LOBYTE(v86) = v24 & 1;
  v87 = v26;
  sub_258888BC8(0, &qword_280C0DDD0, v20, MEMORY[0x277D84560]);
  v77 = v27;
  v28 = swift_allocObject();
  v75 = xmmword_2588BFF50;
  *(v28 + 16) = xmmword_2588BFF50;
  v30 = a1[2];
  v29 = a1[3];
  v82 = a1;
  v73 = v29;
  v74 = v30;
  *(v28 + 32) = v30;
  *(v28 + 40) = v29;
  *(v28 + 48) = 0x656C746954;
  *(v28 + 56) = 0xE500000000000000;
  swift_bridgeObjectRetain_n();
  v31 = sub_2588BD9A8();

  v32 = HKUIJoinStringsForAutomationIdentifier();

  if (v32)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v21, v23, v25);

    v84 = a2;
    v85 = v76;
    v33 = v80;
    v86 = v80;
    v87 = v78;
    v78 = type metadata accessor for ExpandableWheelPickerView(0, &v84);
    v34 = sub_2588BD488();
    MEMORY[0x259C8C5A0](v34);
    v35 = (*(v33 + 24))(a2, v33);
    v37 = v36;
    (*(v79 + 8))(v9, a2);
    v84 = v35;
    v85 = v37;
    v38 = sub_2588BCDF8();
    v40 = v39;
    v42 = v41;
    v84 = sub_2588BD158();
    v43 = sub_2588BCD98();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_2587B1CF8(v38, v40, v42 & 1);

    KeyPath = swift_getKeyPath(asc_2588C7680);
    v84 = v43;
    v85 = v45;
    v51 = v47 & 1;
    LOBYTE(v86) = v47 & 1;
    v87 = v49;
    v88 = KeyPath;
    v89 = 2;
    v52 = swift_allocObject();
    *(v52 + 16) = v75;
    v53 = v73;
    *(v52 + 32) = v74;
    *(v52 + 40) = v53;
    *(v52 + 48) = 0x7470697263736544;
    *(v52 + 56) = 0xEB000000006E6F69;
    v54 = sub_2588BD9A8();

    v55 = HKUIJoinStringsForAutomationIdentifier();

    if (v55)
    {
      sub_2588BD8A8();

      sub_2587E5DE8(0);
      sub_2587E65C8();
      v56 = v81;
      sub_2588BCFB8();

      sub_2587B1CF8(v43, v45, v51);

      sub_2588856F0(v78, &v84);
      v57 = v84;
      v58 = v85;
      v59 = v86;
      v60 = v87;
      v61 = v83;
      v62 = v69;
      sub_258889100(v83, v69, sub_2587DFBD0);
      v63 = v71;
      sub_258889100(v56, v71, sub_258857D8C);
      v64 = v70;
      sub_258889100(v62, v70, sub_2587DFBD0);
      sub_258888750(0);
      v66 = v65;
      v67 = v64 + *(v65 + 48);
      *v67 = 0;
      *(v67 + 8) = 1;
      sub_258889100(v63, v64 + *(v65 + 64), sub_258857D8C);
      v68 = (v64 + *(v66 + 80));
      *v68 = v57;
      v68[1] = v58;
      v68[2] = v59;
      v68[3] = v60;
      sub_2588477DC(v57, v58);
      sub_258889168(v81, sub_258857D8C);
      sub_258889168(v61, sub_2587DFBD0);
      sub_258847820(v57, v58);
      sub_258889168(v63, sub_258857D8C);
      sub_258889168(v62, sub_2587DFBD0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2588856F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1 - 8;
  v38 = *(a1 - 8);
  v39 = a1;
  MEMORY[0x28223BE20](a1);
  v36 = v5;
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 24);
  v7 = sub_2588BDCE8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = *(v6 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  if (*(v2 + *(v4 + 100)) == 1)
  {
    (*(v8 + 16))(v11, v2 + *(v39 + 68), v7);
    if ((*(v12 + 48))(v11, 1, v6) == 1)
    {
      result = (*(v8 + 8))(v11, v7);
    }

    else
    {
      (*(v12 + 32))(v18, v11, v6);
      v19 = v39;
      v20 = sub_2588BD488();
      v21 = v2;
      MEMORY[0x259C8C5A0](v20);
      v22 = *(v19 + 32);
      v23 = sub_2588BD7D8();
      v24 = *(v12 + 8);
      v24(v15, v6);
      result = (v24)(v18, v6);
      if ((v23 & 1) == 0)
      {
        v29 = v21;
        v25 = *(v21 + 16);
        v26 = *(v29 + 24);
        v31 = v37;
        v30 = v38;
        v32 = v39;
        (*(v38 + 16))(v37);
        v33 = (*(v30 + 80) + 48) & ~*(v30 + 80);
        v28 = swift_allocObject();
        v34 = *(v32 + 24);
        *(v28 + 2) = v6;
        *(v28 + 3) = v34;
        v35 = *(v32 + 40);
        *(v28 + 4) = v22;
        *(v28 + 5) = v35;
        (*(v30 + 32))(&v28[v33], v31, v32);

        v27 = sub_258889450;
        goto LABEL_6;
      }
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
LABEL_6:
  *a2 = v25;
  a2[1] = v26;
  a2[2] = v27;
  a2[3] = v28;
  return result;
}

uint64_t sub_258885ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, void (*a7)(void)@<X6>, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  *a9 = a6();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  a7(0);
  return a8(a1, a2, a3, a4, a5);
}

void sub_258885B54(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v40 = a6;
  sub_25888893C(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  sub_2587DFBD0(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v39 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = a1[1];
  v42 = *a1;
  v43 = v17;
  sub_25878F648();

  v18 = MEMORY[0x277D837D0];
  v19 = sub_2588BCDF8();
  v21 = v20;
  v42 = v19;
  v43 = v20;
  v23 = v22 & 1;
  v44 = v22 & 1;
  v45 = v24;
  sub_258888BC8(0, &qword_280C0DDD0, v18, MEMORY[0x277D84560]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2588BFF50;
  v26 = a1[3];
  *(v25 + 32) = a1[2];
  *(v25 + 40) = v26;
  *(v25 + 48) = 0x656C746954;
  *(v25 + 56) = 0xE500000000000000;

  v27 = sub_2588BD9A8();

  v28 = HKUIJoinStringsForAutomationIdentifier();

  if (v28)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v19, v21, v23);

    *v11 = sub_2588BC608();
    *(v11 + 1) = 0;
    v11[16] = 1;
    sub_2588895A0(0, &qword_27F960F40, sub_2588889D0, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    sub_258885EEC(a1, v35, v36, v37, v38, &v11[*(v29 + 44)]);
    v30 = v39;
    sub_258889100(v16, v39, sub_2587DFBD0);
    v31 = v41;
    sub_258889100(v11, v41, sub_25888893C);
    v32 = v40;
    sub_258889100(v30, v40, sub_2587DFBD0);
    sub_2588888CC(0);
    sub_258889100(v31, v32 + *(v33 + 48), sub_25888893C);
    sub_258889168(v11, sub_25888893C);
    sub_258889168(v16, sub_2587DFBD0);
    sub_258889168(v31, sub_25888893C);
    sub_258889168(v30, sub_2587DFBD0);
  }

  else
  {
    __break(1u);
  }
}

void sub_258885EEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a6;
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258857D8C(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v53 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = v49 - v17;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v50 = type metadata accessor for ExpandableWheelPickerView(0, &v55);
  v18 = sub_2588BD488();
  MEMORY[0x259C8C5A0](v18);
  v19 = (*(a4 + 24))(a2, a4);
  v21 = v20;
  (*(v11 + 8))(v13, a2);
  v55 = v19;
  v56 = v21;
  sub_25878F648();
  v22 = sub_2588BCDF8();
  v24 = v23;
  LOBYTE(v11) = v25;
  v55 = sub_2588BD158();
  v26 = sub_2588BCD98();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_2587B1CF8(v22, v24, v11 & 1);

  KeyPath = swift_getKeyPath(asc_2588C7680);
  v55 = v26;
  v56 = v28;
  LOBYTE(v57) = v30 & 1;
  v49[1] = v32;
  v58 = v32;
  v59 = KeyPath;
  v60 = 2;
  sub_258888BC8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2588BFF50;
  v36 = *(a1 + 16);
  v35 = *(a1 + 24);
  v51 = a1;
  *(v34 + 32) = v36;
  *(v34 + 40) = v35;
  *(v34 + 48) = 0x7470697263736544;
  *(v34 + 56) = 0xEB000000006E6F69;

  v37 = sub_2588BD9A8();

  v38 = HKUIJoinStringsForAutomationIdentifier();

  if (v38)
  {
    sub_2588BD8A8();

    sub_2587E5DE8(0);
    sub_2587E65C8();
    v39 = v52;
    sub_2588BCFB8();

    sub_2587B1CF8(v26, v28, v30 & 1);

    sub_2588856F0(v50, &v55);
    v40 = v55;
    v41 = v56;
    v42 = v57;
    v43 = v58;
    v44 = v53;
    sub_258889100(v39, v53, sub_258857D8C);
    v45 = v54;
    sub_258889100(v44, v54, sub_258857D8C);
    sub_258888A04(0);
    v47 = v45 + *(v46 + 48);
    *v47 = 0;
    *(v47 + 8) = 1;
    v48 = (v45 + *(v46 + 64));
    *v48 = v40;
    v48[1] = v41;
    v48[2] = v42;
    v48[3] = v43;
    sub_2588477DC(v40, v41);
    sub_258889168(v39, sub_258857D8C);
    sub_258847820(v40, v41);
    sub_258889168(v44, sub_258857D8C);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258886340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25[0] = a1;
  v25[1] = a7;
  sub_25888859C(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v25 - v20;
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  v26[3] = a6;
  v22 = *(a2 + *(type metadata accessor for ExpandableWheelPickerView(0, v26) + 88));
  sub_258889100(v25[0], v15, sub_25888859C);
  sub_25888829C(&qword_27F960F30, sub_25888859C, &unk_2588C55E8);
  sub_2588BD418();
  v22();

  sub_2587DCF7C();
  v23 = *(v16 + 8);
  v23(v19, a4);
  sub_2587DCF7C();
  return (v23)(v21, a4);
}

void *sub_258886564@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v29 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v27 = *(v3 + 16);
  v27(&v23 - v6);
  sub_2588BDA78();
  v8 = sub_2588BDA68();
  v9 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 2) = v8;
  *(v10 + 3) = v11;
  v12 = a1[3];
  v25 = a1[2];
  v26 = v12;
  *(v10 + 4) = v25;
  *(v10 + 5) = v12;
  v13 = a1[4];
  v23 = a1[5];
  v14 = v23;
  v24 = v13;
  *(v10 + 6) = v13;
  *(v10 + 7) = v14;
  v15 = *(v3 + 32);
  v15(&v10[v9], v7, a1);
  v16 = v29;
  (v27)(v29, v28, a1);
  v17 = sub_2588BDA68();
  v18 = swift_allocObject();
  *(v18 + 2) = v17;
  v19 = v25;
  *(v18 + 3) = MEMORY[0x277D85700];
  *(v18 + 4) = v19;
  v20 = v23;
  v21 = v24;
  *(v18 + 5) = v26;
  *(v18 + 6) = v21;
  *(v18 + 7) = v20;
  v15(&v18[v9], v16, a1);
  return sub_2588BD468();
}

uint64_t sub_258886794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a5;
  v46 = a6;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v40 = type metadata accessor for ExpandableWheelPickerView(0, &v48);
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v35 = v34 - v11;
  v12 = sub_2588BDA08();
  v13 = *(a4 + 8);
  v48 = MEMORY[0x277CE0BD8];
  v49 = a2;
  v50 = MEMORY[0x277CE0BC8];
  v51 = v13;
  v14 = v13;
  v34[0] = v13;
  v39 = &unk_2588CBCBC;
  swift_getOpaqueTypeMetadata2();
  sub_2588BCA98();
  v15 = sub_2588BC1E8();
  v41 = v15;
  v44 = v12;
  WitnessTable = swift_getWitnessTable();
  v48 = v12;
  v49 = a2;
  v50 = v15;
  v51 = WitnessTable;
  v52 = v14;
  v37 = sub_2588BD4D8();
  v45 = *(v37 - 8);
  v16 = MEMORY[0x28223BE20](v37);
  v36 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v42 = v34 - v18;
  v47[7] = *(a1 + 32);
  v47[0] = a2;
  v47[1] = a3;
  v19 = a4;
  v47[2] = a4;
  v20 = v38;
  v47[3] = v38;
  v34[1] = swift_getKeyPath(byte_2588C7668, v47);
  v21 = v35;
  v22 = a1;
  v23 = v40;
  (*(v10 + 16))(v35, v22, v40);
  v24 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = a2;
  *(v25 + 3) = a3;
  *(v25 + 4) = v19;
  *(v25 + 5) = v20;
  (*(v10 + 32))(&v25[v24], v21, v23);

  v48 = MEMORY[0x277CE0BD8];
  v49 = a2;
  v50 = MEMORY[0x277CE0BC8];
  v51 = v34[0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_25888829C(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v47[5] = OpaqueTypeConformance2;
  v47[6] = v27;
  v33 = swift_getWitnessTable();
  v28 = v36;
  sub_2588BD4B8();
  v47[4] = v33;
  v29 = v37;
  swift_getWitnessTable();
  v30 = v42;
  sub_2587DCF7C();
  v31 = *(v45 + 8);
  v31(v28, v29);
  sub_2587DCF7C();
  return (v31)(v30, v29);
}

void sub_258886BFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v46 = a2;
  v43 = a5;
  v8 = *(a4 + 8);
  v49 = MEMORY[0x277CE0BD8];
  v50 = a3;
  v51 = MEMORY[0x277CE0BC8];
  v52 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v11 = &v35 - v10;
  sub_2588BCA98();
  v41 = OpaqueTypeMetadata2;
  v36 = sub_2588BC1E8();
  v42 = *(v36 - 8);
  v12 = MEMORY[0x28223BE20](v36);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v40 = &v35 - v14;
  v44 = *(a4 + 24);
  v45 = a4;
  v49 = v44(a3, a4);
  v50 = v15;
  sub_25878F648();
  v16 = sub_2588BCDF8();
  v18 = v17;
  v49 = v16;
  v50 = v17;
  v20 = v19 & 1;
  LOBYTE(v51) = v19 & 1;
  v52 = v21;
  v35 = v11;
  v37 = v8;
  sub_2587A8F0C(a1, 1, MEMORY[0x277CE0BD8], a3, MEMORY[0x277CE0BC8]);
  sub_2587B1CF8(v16, v18, v20);

  sub_258888BC8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2588C61B0;
  v23 = *(v46 + 24);
  *(v22 + 32) = *(v46 + 16);
  *(v22 + 40) = v23;
  *(v22 + 48) = 0x72656B636950;
  *(v22 + 56) = 0xE600000000000000;
  *(v22 + 64) = 0x6E6F6974704FLL;
  *(v22 + 72) = 0xE600000000000000;

  *(v22 + 80) = v44(a3, v45);
  *(v22 + 88) = v24;
  v25 = sub_2588BD9A8();

  v26 = HKUIJoinStringsForAutomationIdentifier();

  if (v26)
  {
    sub_2588BD8A8();

    v49 = MEMORY[0x277CE0BD8];
    v50 = a3;
    v51 = MEMORY[0x277CE0BC8];
    v52 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = v39;
    v29 = v41;
    v30 = v35;
    sub_2588BCFB8();

    (*(v38 + 8))(v30, v29);
    v31 = sub_25888829C(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v47 = OpaqueTypeConformance2;
    v48 = v31;
    v32 = v36;
    swift_getWitnessTable();
    v33 = v40;
    sub_2587DCF7C();
    v34 = *(v42 + 8);
    v34(v28, v32);
    sub_2587DCF7C();
    v34(v33, v32);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25888708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2588BC9A8();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x28223BE20](v10);
  v24 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a5;
  v28[0] = a2;
  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  v12 = type metadata accessor for ExpandableWheelPickerView(0, v28);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = (a1 + *(v14 + 76));
  if (*v17)
  {
    v14 = (*v17)();
  }

  v23 = &v23;
  MEMORY[0x28223BE20](v14);
  *(&v23 - 6) = a2;
  *(&v23 - 5) = a3;
  v18 = v25;
  *(&v23 - 4) = a4;
  *(&v23 - 3) = v18;
  *(&v23 - 2) = a1;
  (*(v13 + 16))(v16, a1, v12);
  v19 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = v18;
  (*(v13 + 32))(&v20[v19], v16, v12);
  sub_2588BD5F8();
  v21 = v24;
  sub_2588BC998();
  sub_2588BC0C8();

  return (*(v26 + 8))(v21, v27);
}

uint64_t sub_25888732C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), void *a5)
{
  v44 = a4;
  v45 = a5;
  v42 = a2;
  v43 = a3;
  v38 = a1;
  v48 = sub_2588BD6A8();
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2588BD6D8();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v46 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v13 = type metadata accessor for ExpandableWheelPickerView(0, &aBlock);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v40 = &v37 - v15;
  v39 = sub_2588BD6F8();
  v52 = *(v39 - 8);
  v16 = MEMORY[0x28223BE20](v39);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v41 = &v37 - v19;
  v20 = a1 + *(v13 + 84);
  v22 = *(v20 + 8);
  LOBYTE(aBlock) = *v20;
  v21 = aBlock;
  v54 = v22;
  sub_258888BC8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_2588BD2C8();
  LOBYTE(v59) = v21;
  v60 = v22;
  v61 = (v62 & 1) == 0;
  sub_2588BD2D8();

  sub_25888843C();
  v23 = sub_2588BDC38();
  sub_2588BD6E8();
  sub_2588BD708();
  v24 = *(v52 + 8);
  v52 += 8;
  v25 = v39;
  v24(v18, v39);
  v26 = v40;
  (*(v14 + 16))(v40, v38, v13);
  v27 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v28 = swift_allocObject();
  v29 = v43;
  *(v28 + 2) = v42;
  *(v28 + 3) = v29;
  v30 = v45;
  *(v28 + 4) = v44;
  *(v28 + 5) = v30;
  (*(v14 + 32))(&v28[v27], v26, v13);
  v57 = sub_258888488;
  v58 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_25888E4AC;
  v56 = &block_descriptor_6;
  v31 = _Block_copy(&aBlock);
  v32 = v46;
  sub_2588BD6B8();
  v59 = MEMORY[0x277D84F90];
  sub_25888829C(&qword_27F960EA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_258888540(0);
  sub_25888829C(&qword_27F960EB0, sub_258888540, MEMORY[0x277D83970]);
  v34 = v47;
  v33 = v48;
  sub_2588BDD48();
  v35 = v41;
  MEMORY[0x259C8CD90](v41, v32, v34, v31);
  _Block_release(v31);

  (*(v51 + 8))(v34, v33);
  (*(v49 + 8))(v32, v50);
  v24(v35, v25);
}

uint64_t (*sub_2588878B4(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_2588832CC(a1);
  if (result)
  {
    v2 = MEMORY[0x28223BE20](result);
    sub_2588BD5F8();
    sub_2588BC0D8();

    return sub_2587A6038(v2);
  }

  return result;
}

void *sub_25888797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v8 = type metadata accessor for ExpandableWheelPickerView(0, &v14);
  v9 = (a1 + *(v8 + 84));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v14) = v10;
  v15 = v11;
  sub_258888BC8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  result = sub_2588BD2C8();
  if (v13 == 1)
  {
    return a6(v8);
  }

  return result;
}

uint64_t sub_258887A34(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_2588BDCE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = *(v3 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v34 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v35 = &v31 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v36 = v1;
  v37 = a1;
  v19 = *(v5 + 16);
  v20 = v1 + *(a1 + 64);
  v21 = v16;
  v19(v10, v20, v16);
  v22 = *(v11 + 48);
  if (v22(v10, 1, v3) == 1)
  {
    return (*(v5 + 8))(v10, v21);
  }

  v33 = v11;
  v32 = *(v11 + 32);
  v32(v18, v10, v3);
  v24 = v38;
  v19(v38, v36 + *(v37 + 68), v21);
  if (v22(v24, 1, v3) == 1)
  {
    (*(v33 + 8))(v18, v3);
    return (*(v5 + 8))(v38, v21);
  }

  else
  {
    v25 = v35;
    v32(v35, v38, v3);
    v26 = v37;
    v27 = sub_2588BD488();
    v28 = v34;
    MEMORY[0x259C8C5A0](v27);
    v29 = sub_2588BD7D8();
    v30 = *(v33 + 8);
    v30(v28, v3);
    if (v29)
    {
      sub_258888364(v18, v26);
    }

    v30(v25, v3);
    return (v30)(v18, v3);
  }
}

uint64_t sub_258887D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v6 = type metadata accessor for ExpandableWheelPickerView(0, v10);
  v7 = *(a1 + *(v6 + 76));
  if (v7)
  {
    v8 = v6;
    v7();
    v6 = v8;
  }

  return sub_258887E0C(v6);
}

uint64_t sub_258887E0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = sub_2588BDCE8();
  v18 = *(v5 - 8);
  v19 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = *(v4 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + *(a1 + 76));
  if (v13)
  {
    v10 = v13(v10);
  }

  MEMORY[0x28223BE20](v10);
  *(&v17 - 6) = v4;
  *(&v17 - 5) = *(a1 + 24);
  *(&v17 - 3) = *(a1 + 40);
  *(&v17 - 2) = v1;
  sub_2588BD5F8();
  sub_2588BC0D8();

  v15 = v18;
  v14 = v19;
  (*(v18 + 16))(v8, v2 + *(a1 + 68), v19);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    return (*(v15 + 8))(v8, v14);
  }

  (*(v9 + 32))(v12, v8, v4);
  sub_258888364(v12, a1);
  return (*(v9 + 8))(v12, v4);
}

uint64_t sub_258888084(void (*a1)(uint64_t *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[3] = sub_2588BB9F8();
  v16[4] = sub_2587B2C84();
  __swift_allocate_boxed_opaque_existential_1(v16);
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  type metadata accessor for ExpandableWheelPickerView(0, v15);
  sub_258883224(0, &qword_27F960E90, MEMORY[0x28220C040], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_2588BD678();
  a1(v16, v12, v13, 0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_258888184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[0] = a5;
  v13[1] = a6;
  v13[2] = a7;
  v13[3] = a8;
  v10 = type metadata accessor for ExpandableWheelPickerView(0, v13);
  v11 = *(a4 + *(v10 + 76));
  if (v11)
  {
    v11();
  }

  return sub_258888364(a1, v10);
}

uint64_t sub_2588881FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v5 = (a1 + *(type metadata accessor for ExpandableWheelPickerView(0, &v9) + 84));
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(v9) = v6;
  v10 = v7;
  sub_258888BC8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_25888829C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2588882FC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_2587A6038(result);
  }

  else
  {
  }
}

uint64_t sub_258888364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v2);
  sub_2588BD488();
  return sub_2588BD438();
}

unint64_t sub_25888843C()
{
  result = qword_27F960E98;
  if (!qword_27F960E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F960E98);
  }

  return result;
}

void *sub_2588884A0(uint64_t (*a1)(uint64_t))
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for ExpandableWheelPickerView(0, v9) - 8);
  return sub_25888797C(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

void sub_25888859C(uint64_t a1)
{
  if (!qword_27F960EB8)
  {
    sub_258888688(255);
    v3 = v2;
    sub_258888804(255);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = sub_25888829C(&qword_27F960F20, sub_258888688, MEMORY[0x277CE1138]);
    v7[3] = sub_25888829C(&qword_27F960F28, sub_258888804, MEMORY[0x277CE1198]);
    v5 = type metadata accessor for MedicalIDAXLayoutView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_27F960EB8);
    }
  }
}

void sub_258888688(uint64_t a1)
{
  if (!qword_27F960EC0)
  {
    sub_25888871C(255);
    sub_25888829C(&qword_27F960ED8, sub_25888871C, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960EC0);
    }
  }
}

void sub_258888750(uint64_t a1)
{
  if (!qword_27F960ED0)
  {
    sub_2587DFBD0(255);
    sub_258857D8C(255);
    sub_258888BC8(255, &qword_27F95FD48, &type metadata for ClearButtonView, MEMORY[0x277D83D88]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F960ED0);
    }
  }
}

void sub_258888804(uint64_t a1)
{
  if (!qword_27F960EE0)
  {
    sub_258888898(255);
    sub_25888829C(&qword_27F960F18, sub_258888898, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960EE0);
    }
  }
}

void sub_2588888CC(uint64_t a1)
{
  if (!qword_27F960EF0)
  {
    sub_2587DFBD0(255);
    sub_25888893C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960EF0);
    }
  }
}

void sub_25888893C(uint64_t a1)
{
  if (!qword_27F960EF8)
  {
    sub_2588889D0(255);
    sub_25888829C(&qword_27F960F10, sub_2588889D0, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960EF8);
    }
  }
}

void sub_258888A04(uint64_t a1)
{
  if (!qword_27F960F08)
  {
    sub_258857D8C(255);
    sub_258888BC8(255, &qword_27F95FD48, &type metadata for ClearButtonView, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F960F08);
    }
  }
}

uint64_t sub_258888AD0(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for ExpandableWheelPickerView(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

void sub_258888BC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258888C18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v11[0] = v2[2];
  v5 = v11[0];
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v9 = *(type metadata accessor for ExpandableWheelPickerView(0, v11) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  sub_258886BFC(a1, v10, v5, v7, a2);
}

uint64_t sub_258888CD4()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v1 = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  type metadata accessor for ExpandableWheelPickerView(0, &v7);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  type metadata accessor for ExpandableWheelPickerView(0, &v7);
  v5 = sub_2588BD488();
  return MEMORY[0x259C8C5A0](v5);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 48);
  v16[0] = *(v0 + 32);
  v15 = *&v16[0];
  v16[1] = v1;
  v2 = type metadata accessor for ExpandableWheelPickerView(0, v16);
  v3 = *(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v4 = v0 + ((v3 + 64) & ~v3);

  v5 = v4 + v2[15];

  v6 = *(sub_2588BD488() + 32);
  v7 = *(v15 - 8);
  v8 = *(v7 + 8);
  v8(v5 + v6, v15);
  v9 = v2[16];
  v10 = *(v7 + 48);
  if (!v10(v4 + v9, 1, v15))
  {
    v8(v4 + v9, v15);
  }

  v11 = v2[17];
  if (!v10(v4 + v11, 1, v15))
  {
    v8(v4 + v11, v15);
  }

  sub_2588882FC(*(v4 + v2[18]), *(v4 + v2[18] + 8), *(v4 + v2[18] + 16));
  if (*(v4 + v2[19]))
  {
  }

  v12 = v4 + v2[20];
  v13 = sub_2588BB9F8();
  (*(*(v13 - 8) + 8))(v12, v13);
  sub_258883224(0, &qword_27F960E90, MEMORY[0x28220C040], MEMORY[0x277CE10B8]);

  return swift_deallocObject();
}

uint64_t sub_258889020(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v12[0] = v1[4];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v7 = *(type metadata accessor for ExpandableWheelPickerView(0, v12) - 8);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_258888184(a1, v8, v9, v10, v3, v4, v5, v6);
}

uint64_t sub_258889100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258889168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_27()
{
  v1 = *(v0 + 32);
  v15[0] = *(v0 + 16);
  v14 = *&v15[0];
  v15[1] = v1;
  v2 = type metadata accessor for ExpandableWheelPickerView(0, v15);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));

  v4 = v3 + v2[15];

  v5 = *(sub_2588BD488() + 32);
  v6 = *(v14 - 8);
  v7 = *(v6 + 8);
  v7(v4 + v5, v14);
  v8 = v2[16];
  v9 = *(v6 + 48);
  if (!v9(v3 + v8, 1, v14))
  {
    v7(v3 + v8, v14);
  }

  v10 = v2[17];
  if (!v9(v3 + v10, 1, v14))
  {
    v7(v3 + v10, v14);
  }

  sub_2588882FC(*(v3 + v2[18]), *(v3 + v2[18] + 8), *(v3 + v2[18] + 16));
  if (*(v3 + v2[19]))
  {
  }

  v11 = v3 + v2[20];
  v12 = sub_2588BB9F8();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_258883224(0, &qword_27F960E90, MEMORY[0x28220C040], MEMORY[0x277CE10B8]);

  return swift_deallocObject();
}

uint64_t sub_258889468(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for ExpandableWheelPickerView(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

void sub_2588895A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_2588BC0B8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258889638(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  sub_258889DC4(0);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258889E1C(0);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2588BD858();
  MEMORY[0x28223BE20](v7 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v8 = qword_27F95DA88;
  v9 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = v8;
  sub_2588BBAB8();
  v11 = sub_2588BD8B8();
  v49 = v12;
  v13 = v1[4];
  v14 = v1[5];
  v15 = *v1;
  v73 = *(v1 + 1);
  v74[0] = v15;
  sub_2588BDA78();
  swift_bridgeObjectRetain_n();

  sub_258889E9C(v74, v70);
  sub_258827FF8(&v73, v70);
  v16 = sub_2588BDA68();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  v19 = *(v1 + 1);
  *(v17 + 32) = *v1;
  *(v17 + 48) = v19;
  *(v17 + 64) = *(v1 + 2);

  sub_258889E9C(v74, v70);
  sub_258827FF8(&v73, v70);
  v20 = sub_2588BDA68();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v18;
  v22 = v2[1];
  *(v21 + 32) = *v2;
  *(v21 + 48) = v22;
  *(v21 + 64) = v2[2];
  sub_2588BD468();
  v24 = v72[6];
  v23 = v72[7];
  v60 = v72[9];
  v61 = v72[8];
  v25 = sub_2588BBE78();
  v50 = v26;
  v51 = v25;
  v52 = v27;
  sub_25878E384(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2588BFF50;
  *(v28 + 32) = v13;
  *(v28 + 40) = v14;
  v53 = v11;
  *(v28 + 48) = v11;
  v29 = v49;
  *(v28 + 56) = v49;

  v30 = sub_2588BD9A8();

  v31 = HKUIJoinStringsForAutomationIdentifier();

  if (v31)
  {
    v54 = sub_2588BD8A8();
    v33 = v32;

    v14 = v33;
  }

  else
  {
    v54 = v13;
  }

  v72[2] = v24;
  v72[3] = v23;
  v34 = v23;
  v72[4] = v61;
  v72[5] = v60;
  sub_25878E384(0, &qword_27F95F990, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](v72);
  v36 = v72[0];
  v35 = v72[1];
  type metadata accessor for Model(0);
  v37 = swift_allocObject();
  *(v37 + 32) = 0;
  *(v37 + 40) = 0;
  *(v37 + 48) = 0;
  sub_2588BBBC8();
  *(v37 + 16) = v36;
  *(v37 + 24) = v35;
  if (*(v37 + 48))
  {
    KeyPath = swift_getKeyPath(byte_2588C7788);
    MEMORY[0x28223BE20](KeyPath);
    *(&v49 - 3) = 0;
    *(&v49 - 2) = 0;
    *(&v49 - 4) = v37;
    *&v70[0] = v37;
    sub_25888A0E4();
    sub_2588BBB88();
  }

  else
  {
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
  }

  *&v62 = v53;
  *(&v62 + 1) = v29;
  LOBYTE(v63) = v51 & 1;
  *(&v63 + 1) = v52;
  LOBYTE(v64) = v50 & 1;
  *(&v64 + 1) = v37;
  *&v65 = 0;
  *(&v65 + 1) = v24;
  *&v66 = v34;
  *(&v66 + 1) = v61;
  v67 = v60;
  *&v68 = 0;
  v39 = v55;
  *(&v68 + 1) = v54;
  v69 = v14;
  sub_2588BC9B8();
  v40 = sub_2588BC9C8();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  sub_25883C3A8();
  v41 = v56;
  sub_2588BCFE8();
  sub_258889F68(v39);
  v70[4] = v66;
  v70[5] = v67;
  v70[6] = v68;
  v71 = v69;
  v70[0] = v62;
  v70[1] = v63;
  v70[2] = v64;
  v70[3] = v65;
  sub_25883C78C(v70);
  v42 = swift_getKeyPath(byte_2588C7758);
  v43 = sub_2588BD8A8();
  v45 = v44;
  v46 = v59;
  (*(v57 + 32))(v59, v41, v58);
  sub_258889FC4(0);
  v48 = (v46 + *(v47 + 36));
  *v48 = v42;
  v48[1] = v43;
  v48[2] = v45;
}

void *sub_258889CCC@<X0>(__int128 *a1@<X2>, void *a2@<X8>)
{
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  sub_25888A048(0, &qword_27F960F70, MEMORY[0x277CE11F8]);
  result = MEMORY[0x259C8C5A0](&v7);
  v5 = v7;
  v6 = v8;
  if (!v8)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_258889D44(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  sub_25888A048(0, &qword_27F960F70, MEMORY[0x277CE11F8]);

  return sub_2588BD438();
}

void sub_258889DC4(uint64_t a1)
{
  if (!qword_27F960F50)
  {
    sub_2588BC9C8();
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960F50);
    }
  }
}

void sub_258889E1C(uint64_t a1)
{
  if (!qword_27F960F58)
  {
    sub_25883C3A8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960F58);
    }
  }
}

uint64_t objectdestroyTm_28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_258889F68(uint64_t a1)
{
  sub_258889DC4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258889FC4(uint64_t a1)
{
  if (!qword_27F960F60)
  {
    sub_258889E1C(255);
    sub_25888A048(255, &qword_27F960F68, MEMORY[0x277CE0860]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960F60);
    }
  }
}

void sub_25888A048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_25878E384(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25888A0E4()
{
  result = qword_27F95F850;
  if (!qword_27F95F850)
  {
    type metadata accessor for Model(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F850);
  }

  return result;
}

unint64_t sub_25888A13C()
{
  result = qword_27F960F78;
  if (!qword_27F960F78)
  {
    sub_258889FC4(255);
    sub_25883C3A8();
    swift_getOpaqueTypeConformance2();
    sub_25888A1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960F78);
  }

  return result;
}

unint64_t sub_25888A1E8()
{
  result = qword_27F960F80;
  if (!qword_27F960F80)
  {
    sub_25888A048(255, &qword_27F960F68, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960F80);
  }

  return result;
}

id MedicalIDBiometricsViewModel.init(medicalIDData:locale:heightFormatter:weightFormatter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v60 = a4;
  v63 = a3;
  v64 = a2;
  v65 = a5;
  v6 = MEMORY[0x277D83D88];
  sub_25888D07C(0, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = v53 - v8;
  v59 = type metadata accessor for MedicalIDWeightFormatter(0);
  v62 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25888D07C(0, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter, v6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v53 - v11;
  v13 = type metadata accessor for MedicalIDHeightFormatter(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2588BD9A8();
  v18 = HKUIJoinStringsForAutomationIdentifier();

  v56 = v16;
  if (v18)
  {
    v19 = sub_2588BD8A8();
    v21 = v20;
  }

  else
  {
    v21 = 0xEA00000000007363;
    v19 = 0x697274656D6F6942;
  }

  v22 = v65;
  *v65 = v19;
  v22[1] = v21;
  v23 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v24 = v22 + *(v23 + 20);
  v55 = a1;
  sub_25888D0E0(a1, v24, type metadata accessor for MedicalIDData);
  v61 = v23;
  v25 = *(v23 + 24);
  v26 = sub_2588BBAC8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v29 = v22 + v25;
  v30 = v64;
  v28(v29, v64, v26);
  sub_25888B708(v63, v12, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
  v31 = *(v14 + 48);
  v32 = v31(v12, 1, v13);
  v54 = v28;
  if (v32 == 1)
  {
    v53[1] = v53;
    MEMORY[0x28223BE20](v32);
    v34 = v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28(v34, v30, v26);
    v35 = v56;
    v28(v56, v34, v26);
    v36 = sub_2587F28D4(v34, 2);
    (*(v27 + 8))(v34, v26);
    *(v35 + *(v13 + 20)) = v36;
    v37 = v31(v12, 1, v13);
    v38 = v57;
    if (v37 != 1)
    {
      sub_25888CB1C(v12, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    }
  }

  else
  {
    v35 = v56;
    sub_25888CEA8(v12, v56, type metadata accessor for MedicalIDHeightFormatter);
    v38 = v57;
  }

  sub_25888CEA8(v35, v65 + *(v61 + 28), type metadata accessor for MedicalIDHeightFormatter);
  v39 = v60;
  v40 = v58;
  sub_25888B708(v60, v58, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
  v42 = v62 + 48;
  v41 = *(v62 + 48);
  v43 = v41(v40, 1, v59);
  if (v43 != 1)
  {
    sub_25888CB1C(v39, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_25888CB1C(v63, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    (*(v27 + 8))(v64, v26);
    sub_25888CB8C(v55, type metadata accessor for MedicalIDData);
    sub_25888CEA8(v40, v38, type metadata accessor for MedicalIDWeightFormatter);
    return sub_25888CEA8(v38, v65 + *(v61 + 32), type metadata accessor for MedicalIDWeightFormatter);
  }

  v62 = v42;
  v57 = v53;
  MEMORY[0x28223BE20](v43);
  v45 = v53 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v64;
  v47 = v54;
  v54(v45, v64, v26);
  result = [objc_opt_self() sharedFormatter];
  if (result)
  {
    v49 = result;
    v47(v38, v45, v26);
    v50 = v59;
    *(v38 + *(v59 + 20)) = v49;
    v51 = sub_25884DC0C(v45, 2);
    sub_25888CB1C(v60, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_25888CB1C(v63, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    v52 = *(v27 + 8);
    v52(v46, v26);
    sub_25888CB8C(v55, type metadata accessor for MedicalIDData);
    v52(v45, v26);
    *(v38 + *(v50 + 24)) = v51;
    if (v41(v40, 1, v50) != 1)
    {
      sub_25888CB1C(v40, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    }

    return sub_25888CEA8(v38, v65 + *(v61 + 32), type metadata accessor for MedicalIDWeightFormatter);
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall MedicalIDBiometricsViewModel.localizedHeightDescription()()
{
  sub_25888CBEC(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B518]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - v4;
  sub_25888CCB0(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  sub_2587F1E14(*(v0 + *(v9 + 20) + 96), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_25888CC54(v8, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v12 = sub_2587F21C4(v5);
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v11 = v14;
    v10 = v12;
  }

  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::String_optional __swiftcall MedicalIDBiometricsViewModel.localizedWeightDescription()()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDBiometricsViewModel(0) + 20) + 104);
  sub_25888CBEC(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B518]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  sub_25888CCB0(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_25884D544(v1, &v16 - v8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_25888CC54(v9, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    type metadata accessor for MedicalIDWeightFormatter(0);
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    v12 = sub_2588BDC68();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    v11 = v14;
    v10 = v12;
  }

  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall MedicalIDBiometricsViewModel.localizedBloodTypeDescription()()
{
  type metadata accessor for MedicalIDBiometricsViewModel(0);
  v0 = HKStringForBloodType();
  v1 = sub_2588BD8A8();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

id MedicalIDBiometricsViewModel.formattedWeightText(for:)(uint64_t a1)
{
  v2 = *(type metadata accessor for MedicalIDBiometricsViewModel(0) + 32);
  sub_25888CBEC(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B518]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  sub_25888CCB0(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  sub_25888CD18(a1, v18 - v9, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_25888CC54(v10, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    return 0;
  }

  v11 = v18[1] + v2;
  (*(v5 + 32))(v7, v10, v4);
  sub_2588BB688();
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  result = [*(v11 + *(type metadata accessor for MedicalIDWeightFormatter(0) + 24)) numberFormatter];
  if (result)
  {
    v15 = result;
    v16 = [result stringFromNumber_];

    if (v16)
    {
      v17 = sub_2588BD8A8();

      (*(v5 + 8))(v7, v4);
      return v17;
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall MedicalIDBiometricsViewModel.localizedWeightUnitDescription()()
{
  v1 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v2 = sub_25884DC0C(v0 + *(v1 + 32), 1);
  v3 = sub_25884D888();
  v4 = [v2 stringFromUnit_];

  v5 = sub_2588BD8A8();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

id sub_25888B21C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for HealthDemographicData(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25888D07C(0, &qword_27F95D8C8, type metadata accessor for HealthDemographicData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v20 - v10;
  if ([a1 suggestHealthData] && !*(v2 + *(type metadata accessor for MedicalIDBiometricsViewModel(0) + 20) + 104))
  {
    swift_getKeyPath(aP_12);
    v20[1] = a2;
    sub_2587AFCE0();
    sub_2588BBB98();

    v12 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
    swift_beginAccess();
    sub_25888B708(a2 + v12, v11, &qword_27F95D8C8, type metadata accessor for HealthDemographicData);
    if (!(*(v6 + 48))(v11, 1, v5))
    {
      sub_25888D0E0(v11, v8, type metadata accessor for HealthDemographicData);
      sub_25888CB1C(v11, &qword_27F95D8C8, type metadata accessor for HealthDemographicData);
      v14 = *&v8[*(v5 + 32)];
      sub_25888CB8C(v8, type metadata accessor for HealthDemographicData);
      sub_25888CCB0(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
      MEMORY[0x28223BE20](v15 - 8);
      v17 = v20 - v16;
      v18 = v14;
      sub_25884D544(v14, v17);

      v19 = MedicalIDBiometricsViewModel.formattedWeightText(for:)(v17);
      sub_25888CC54(v17, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
      return v19;
    }

    sub_25888CB1C(v11, &qword_27F95D8C8, type metadata accessor for HealthDemographicData);
  }

  return 0;
}

uint64_t MedicalIDBiometricsViewModel.weightMeasurement(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for MedicalIDBiometricsViewModel(0);
  if (!a2)
  {
    goto LABEL_7;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 && (v10 = 0, sub_25888CA24(a1, a2, &v10)))
  {
    sub_25884D888();
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    sub_2588BB678();
    v7 = 0;
  }

  else
  {
LABEL_7:
    v7 = 1;
  }

  sub_25888CBEC(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B518]);
  return (*(*(v8 - 8) + 56))(a3, v7, 1, v8);
}

uint64_t type metadata accessor for MedicalIDBiometricsViewModel(uint64_t a1)
{
  result = qword_27F960FB8;
  if (!qword_27F960FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25888B708(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25888D07C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

Swift::String __swiftcall MedicalIDBiometricsViewModel.localizedHeightUnitDescription()()
{
  v1 = *(type metadata accessor for MedicalIDBiometricsViewModel(0) + 28);
  v2 = sub_2587F28D4(v0 + v1, 1);
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  v3 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + v1);
  sub_25888CBEC(0, &qword_27F95E848, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220BCD0]);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2588BB8A8();
  v7 = sub_2588BDBA8();
  v8 = [v2 stringFromUnit_];

  v9 = sub_2588BD8A8();
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t MedicalIDBiometricsViewModel.formattedHeightForPickers(with:)(uint64_t a1)
{
  v24 = a1;
  sub_25888CBEC(0, &qword_27F960F88, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B4E0]);
  v2 = *(v1 - 8);
  v22 = v1;
  v23 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - v3;
  sub_25888CBEC(0, &qword_27F960F90, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B4C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  sub_2588BB698();
  sub_25888D07C(0, &qword_27F960F98, sub_25888CD8C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  sub_25888CD8C(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_25888CBEC(0, &qword_27F95E848, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220BCD0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  sub_2588BB898();
  sub_2588BB648();
  (*(v16 + 8))(v18, v15);
  sub_25888CB1C(v12, &qword_27F960F98, sub_25888CD8C);
  (*(v7 + 8))(v9, v6);
  sub_25888CBEC(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B518]);
  sub_25888CE3C();
  v19 = v22;
  sub_2588BB6C8();
  (*(v23 + 8))(v4, v19);
  return v25;
}

void MedicalIDBiometricsViewModel.validationResult(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BasicAlertModel.Action(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 104);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 gramUnitWithMetricPrefix_];
  [v10 doubleValueForUnit_];
  v13 = v12;

  [objc_opt_self() maximumWeightInKilograms];
  if (v13 <= v14)
  {

LABEL_7:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  v43 = v4;
  v44 = v5;
  v45 = v10;
  v15 = sub_2588BD858();
  v39 = v38;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v40 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v17 = qword_27F95DA88;
  v18 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = v17;
  sub_2588BBAB8();
  v20 = v19;
  v21 = sub_2588BD8B8();
  v41 = v22;
  v42 = v21;
  v38[1] = v38;
  MEMORY[0x28223BE20](v21);
  v23 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v23);
  sub_2588BBAB8();
  v39 = sub_2588BD8B8();
  v25 = v24;
  MEMORY[0x28223BE20](v39);
  v26 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v26);
  sub_2588BBAB8();
  v27 = sub_2588BD8B8();
  v29 = v28;
  v30 = v43;
  v31 = *(v43 + 24);
  sub_2588BBDD8();
  v32 = sub_2588BBDE8();
  (*(*(v32 - 8) + 56))(&v7[v31], 0, 1, v32);
  sub_2588BB9E8();
  v33 = &v7[*(v30 + 20)];
  *v33 = v27;
  v33[1] = v29;
  v34 = &v7[*(v30 + 28)];
  sub_25888D07C(0, &qword_27F95D9E8, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D84560]);
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2588C00B0;
  sub_25888CEA8(v7, v36 + v35, type metadata accessor for BasicAlertModel.Action);

  v37 = v41;
  *a2 = v42;
  *(a2 + 8) = v37;
  *(a2 + 16) = v39;
  *(a2 + 24) = v25;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = v36;
}

void MedicalIDBiometricsViewModel.update(medicalIDData:heightMeasurement:weightMeasurement:bloodType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = a4;
  v6 = sub_25888C468(a2);

  *(a1 + 96) = v6;
  v7 = sub_25888C744(a3);

  *(a1 + 104) = v7;
}

id sub_25888C468(uint64_t a1)
{
  sub_25888CBEC(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B518]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v18 = &v17 - v5;
  sub_25888CCB0(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  sub_25888CD18(a1, &v17 - v7, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    sub_25888CC54(v8, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    return 0;
  }

  else
  {
    v10 = v18;
    v11 = (*(v4 + 32))(v18, v8, v3);
    MEMORY[0x28223BE20](v11);
    v12 = [objc_opt_self() meters];
    sub_2588BB6B8();

    v13 = [objc_opt_self() meterUnit];
    sub_2588BB688();
    v15 = [objc_opt_self() quantityWithUnit:v13 doubleValue:v14];

    v16 = *(v4 + 8);
    v16(&v17 - v5, v3);
    v16(v10, v3);
    return v15;
  }
}

id sub_25888C744(uint64_t a1)
{
  sub_25888CBEC(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B518]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v18 = &v17 - v5;
  sub_25888CCB0(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  sub_25888CD18(a1, &v17 - v7, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    sub_25888CC54(v8, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    return 0;
  }

  else
  {
    v10 = v18;
    v11 = (*(v4 + 32))(v18, v8, v3);
    MEMORY[0x28223BE20](v11);
    v12 = [objc_opt_self() kilograms];
    sub_2588BB6B8();

    v13 = [objc_opt_self() gramUnitWithMetricPrefix_];
    sub_2588BB688();
    v15 = [objc_opt_self() quantityWithUnit:v13 doubleValue:v14];

    v16 = *(v4 + 8);
    v16(&v17 - v5, v3);
    v16(v10, v3);
    return v15;
  }
}

BOOL sub_25888CA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_2588BDDE8();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_25888CB1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25888D07C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25888CB8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25888CBEC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25878E130(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25888CC54(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  sub_25888CCB0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_25888CCB0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_25888CBEC(255, a3, a4, a5, MEMORY[0x28220B518]);
    v6 = sub_2588BDCE8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_25888CD18(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  sub_25888CCB0(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_25888CD8C(uint64_t a1)
{
  if (!qword_27F960FA0)
  {
    sub_25888CDE8();
    v1 = sub_2588BB888();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960FA0);
    }
  }
}

unint64_t sub_25888CDE8()
{
  result = qword_27F960FA8;
  if (!qword_27F960FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960FA8);
  }

  return result;
}

unint64_t sub_25888CE3C()
{
  result = qword_27F960FB0;
  if (!qword_27F960FB0)
  {
    sub_25888CBEC(255, &qword_27F960F88, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B4E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960FB0);
  }

  return result;
}

uint64_t sub_25888CEA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25888CF38(uint64_t a1)
{
  result = type metadata accessor for MedicalIDData(319);
  if (v2 <= 0x3F)
  {
    result = sub_2588BBAC8();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MedicalIDHeightFormatter(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for MedicalIDWeightFormatter(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

_BYTE *sub_25888CFFC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_25888D07C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25888D0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25888D148()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_healthStore) profileIdentifier];
  v2 = [v1 type];

  if (v2 == 3 && *(v0 + OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_displayName + 8))
  {
    v3 = sub_2588BD838();
    MEMORY[0x28223BE20](v3 - 8);
    sub_2588BD828();
    sub_2588BD818();
    sub_2588BD808();
    sub_2588BD818();
    v4 = sub_2588BD858();
    MEMORY[0x28223BE20](v4 - 8);
    sub_2588BD848();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v5 = sub_2588BD858();
    MEMORY[0x28223BE20](v5 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }
  }

  v6 = qword_27F95DA88;
  v7 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = v6;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

id MedicalIDNavigationBarViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicalIDNavigationBarViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalIDNavigationBarViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicalIDNavigationBarViewModel(uint64_t a1)
{
  result = qword_27F960FD8;
  if (!qword_27F960FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25888D640(uint64_t a1)
{
  sub_2587AFFC8(319);
  if (v1 <= 0x3F)
  {
    sub_2588BBAC8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_25888D73C(uint64_t *a1)
{
  v2 = v1;
  v97[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2588BB818();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 gregorianBirthday];
  if (v8)
  {
    v9 = v8;
    sub_2588BB778();

    v10 = sub_2588BB758();
    v97[0] = 0;
    v11 = [v2 _setDateOfBirthComponents_error_];

    if (v11)
    {
      v12 = *(v5 + 8);
      v13 = v97[0];
      v12(&v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    }

    else
    {
      v14 = v97[0];
      v15 = sub_2588BB878();

      swift_willThrow();
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v16 = sub_2588BBC98();
      v17 = __swift_project_value_buffer(v16, qword_27F969938);
      MEMORY[0x28223BE20](v17);
      v18 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v5 + 16))(v18, v18, v4);
      v19 = v15;
      v20 = sub_2588BBC78();
      v21 = sub_2588BDBD8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v93 = v21;
        v23 = v22;
        v94 = swift_slowAlloc();
        v97[0] = v94;
        *v23 = 136315394;
        sub_25888E288();
        v92 = v20;
        v24 = sub_2588BDF78();
        v96 = &v91;
        v25 = v2;
        v26 = a1;
        v28 = v27;
        v95 = *(v5 + 8);
        v95(v18, v4);
        v29 = sub_258790224(v24, v28, v97);
        a1 = v26;
        v2 = v25;

        *(v23 + 4) = v29;
        *(v23 + 12) = 2080;
        swift_getErrorValue();
        v30 = sub_2588BDFD8();
        v32 = sub_258790224(v30, v31, v97);

        *(v23 + 14) = v32;
        v33 = v92;
        _os_log_impl(&dword_25878B000, v92, v93, "Failed to persist Medical ID birthday %s to Health profile, Error: %s", v23, 0x16u);
        v34 = v94;
        swift_arrayDestroy();
        MEMORY[0x259C8DBE0](v34, -1, -1);
        MEMORY[0x259C8DBE0](v23, -1, -1);

        v95(v7, v4);
      }

      else
      {

        v35 = *(v5 + 8);
        v35(v18, v4);
        v35(v7, v4);
      }
    }
  }

  v36 = [a1 weight];
  if (v36)
  {
    v37 = v36;
    v97[0] = 0;
    if ([v2 _setBodyMassCharacteristicQuantity_error_])
    {
      v38 = v97[0];
    }

    else
    {
      v39 = v97[0];
      v40 = sub_2588BB878();

      swift_willThrow();
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v41 = sub_2588BBC98();
      __swift_project_value_buffer(v41, qword_27F969938);
      v42 = v37;
      v43 = v40;
      v44 = sub_2588BBC78();
      v45 = sub_2588BDBD8();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v96 = a1;
        v48 = v47;
        v49 = swift_slowAlloc();
        v95 = v2;
        v50 = v49;
        v97[0] = v49;
        *v46 = 138412546;
        *(v46 + 4) = v42;
        *v48 = v37;
        *(v46 + 12) = 2080;
        swift_getErrorValue();
        v51 = v42;
        v52 = sub_2588BDFD8();
        v54 = sub_258790224(v52, v53, v97);

        *(v46 + 14) = v54;
        _os_log_impl(&dword_25878B000, v44, v45, "Failed to persist Medical ID weight %@ to Health profile, Error: %s", v46, 0x16u);
        sub_2587F2B40(v48);
        v55 = v48;
        a1 = v96;
        MEMORY[0x259C8DBE0](v55, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        v56 = v50;
        v2 = v95;
        MEMORY[0x259C8DBE0](v56, -1, -1);
        MEMORY[0x259C8DBE0](v46, -1, -1);
      }

      else
      {
      }
    }
  }

  v57 = [a1 height];
  if (v57)
  {
    v58 = v57;
    v97[0] = 0;
    if ([v2 _setHeightCharacteristicQuantity_error_])
    {
      v59 = v97[0];
    }

    else
    {
      v60 = v97[0];
      v61 = sub_2588BB878();

      swift_willThrow();
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v62 = sub_2588BBC98();
      __swift_project_value_buffer(v62, qword_27F969938);
      v63 = v58;
      v64 = v61;
      v65 = sub_2588BBC78();
      v66 = sub_2588BDBD8();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v96 = a1;
        v69 = v68;
        v70 = swift_slowAlloc();
        v95 = v2;
        v71 = v70;
        v97[0] = v70;
        *v67 = 138412546;
        *(v67 + 4) = v63;
        *v69 = v58;
        *(v67 + 12) = 2080;
        swift_getErrorValue();
        v72 = v63;
        v73 = sub_2588BDFD8();
        v75 = sub_258790224(v73, v74, v97);

        *(v67 + 14) = v75;
        _os_log_impl(&dword_25878B000, v65, v66, "Failed to persist Medical ID height %@ to Health profile, Error: %s", v67, 0x16u);
        sub_2587F2B40(v69);
        v76 = v69;
        a1 = v96;
        MEMORY[0x259C8DBE0](v76, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        v77 = v71;
        v2 = v95;
        MEMORY[0x259C8DBE0](v77, -1, -1);
        MEMORY[0x259C8DBE0](v67, -1, -1);
      }

      else
      {
      }
    }
  }

  if ([a1 bloodType])
  {
    v78 = [a1 bloodType];
    v97[0] = 0;
    if ([v2 _setBloodType_error_])
    {

      MEMORY[0x2821F9840]();
    }

    else
    {
      v96 = v97[0];
      v79 = v97[0];
      v80 = sub_2588BB878();

      swift_willThrow();
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v81 = sub_2588BBC98();
      __swift_project_value_buffer(v81, qword_27F969938);
      v82 = a1;
      v83 = v80;
      v84 = sub_2588BBC78();
      v85 = sub_2588BDBD8();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v97[0] = v87;
        *v86 = 134218242;
        *(v86 + 4) = [v82 bloodType];

        *(v86 + 12) = 2080;
        swift_getErrorValue();
        v88 = sub_2588BDFD8();
        v90 = sub_258790224(v88, v89, v97);

        *(v86 + 14) = v90;
        _os_log_impl(&dword_25878B000, v84, v85, "Failed to persist Medical ID blood type %ld to Health profile, Error: %s", v86, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x259C8DBE0](v87, -1, -1);
        MEMORY[0x259C8DBE0](v86, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_25888E1D0@<X0>(uint64_t *a2@<X8>)
{
  sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
  result = sub_2588BBD18();
  *a2 = result;
  return result;
}

void sub_25888E220(uint64_t a1)
{
  if (!qword_27F95D870)
  {
    sub_25878E130(255, &qword_27F95D878, 0x277D82BB8);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D870);
    }
  }
}

unint64_t sub_25888E288()
{
  result = qword_27F960FE8;
  if (!qword_27F960FE8)
  {
    sub_2588BB818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960FE8);
  }

  return result;
}

uint64_t MedicalIDSettingsProvider.medicalIDSettingsViewModel(data:healthStore:profileFirstName:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v10 = type metadata accessor for MedicalIDData(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 24);
  os_unfair_lock_lock((v13 + 20));
  HIDWORD(v26) = *(v13 + 16);
  os_unfair_lock_unlock((v13 + 20));
  sub_2587B94F8(a1, v12);
  v14 = [objc_opt_self() hasPairedWatch];
  v15 = sub_2588BD9A8();
  v16 = HKUIJoinStringsForAutomationIdentifier();

  if (v16)
  {
    v17 = sub_2588BD8A8();
    v19 = v18;
  }

  else
  {
    v19 = 0x80000002588C90D0;
    v17 = 0xD000000000000011;
  }

  v20 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v21 = (a5 + v20[11]);
  *v21 = v17;
  v21[1] = v19;
  sub_2587B94F8(v12, a5);
  *(a5 + v20[5]) = a2;
  v22 = (a5 + v20[6]);
  *v22 = v27;
  v22[1] = a4;
  *(a5 + v20[9]) = (v12[*(v10 + 64)] & 1) == 0;
  v23 = v12[*(v10 + 68)];

  v24 = a2;
  result = sub_2587B955C(v12);
  *(a5 + v20[10]) = v23;
  *(a5 + v20[7]) = v14;
  *(a5 + v20[8]) = BYTE4(v26) & 1;
  return result;
}

uint64_t sub_25888E4AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_25888E4F0()
{
  v1 = v0;
  v2 = sub_2588BDC28();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v18 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2588BDC08();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2588BD6D8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_25888F404(0);
  v6 = swift_allocObject();
  *(v6 + 20) = 0;
  *(v6 + 16) = 2;
  v0[3] = v6;
  v0[4] = 0xD000000000000021;
  v0[5] = 0x80000002588CB500;
  sub_2588BBBC8();
  v17 = sub_25888843C();
  v21 = sub_2588BE0E8();
  v22 = v7;
  MEMORY[0x259C8CAA0](95, 0xE100000000000000);
  v8 = sub_2588BB9F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB9E8();
  v12 = sub_2588BB9C8();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x259C8CAA0](v12, v14);

  sub_2588BD6C8();
  v21 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D85230];
  sub_25888F47C(&qword_27F961020, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_25888F4C4(0, &qword_27F961028, v15);
  sub_25888F0F4(&qword_27F961030, &qword_27F961028, v15);
  sub_2588BDD48();
  (*(v19 + 104))(v18, *MEMORY[0x277D85260], v20);
  v1[2] = sub_2588BDC58();
  MedicalIDSettingsProvider.fetchAvailabilityStatus()();
  return v1;
}

Swift::Void __swiftcall MedicalIDSettingsProvider.fetchAvailabilityStatus()()
{
  v1 = sub_2588BD6A8();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2588BD6D8();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_25888F0EC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25888E4AC;
  aBlock[3] = &block_descriptor_7;
  v8 = _Block_copy(aBlock);

  sub_2588BD6B8();
  v13 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D85198];
  sub_25888F47C(&qword_27F960EA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_25888F4C4(0, &qword_27F960EA8, v9);
  sub_25888F0F4(&qword_27F960EB0, &qword_27F960EA8, v9);
  sub_2588BDD48();
  MEMORY[0x259C8CDC0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void *sub_25888EB70(uint64_t a1)
{
  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v1 = sub_2588BBC98();
  __swift_project_value_buffer(v1, qword_27F969938);
  v2 = sub_2588BBC78();
  v3 = sub_2588BDBB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_258790224(0xD000000000000019, 0x80000002588CB530, v23);
    _os_log_impl(&dword_25878B000, v2, v3, "[EED %s] fetching EED status", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C8DBE0](v5, -1, -1);
    MEMORY[0x259C8DBE0](v4, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = sub_25888EFB0();
    if (v6 != 2)
    {
      LOBYTE(v9) = v6;
      v17 = sub_2588BBC78();
      v18 = sub_2588BDBB8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_258790224(0xD000000000000019, 0x80000002588CB530, v22);
        _os_log_impl(&dword_25878B000, v17, v18, "[EED %s] overridden by default to enabled", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x259C8DBE0](v20, -1, -1);
        MEMORY[0x259C8DBE0](v19, -1, -1);
      }

      goto LABEL_21;
    }
  }

  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result supportsEED];

  v10 = sub_2588BBC78();
  v11 = sub_2588BDBB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_258790224(0xD000000000000019, 0x80000002588CB530, v22);
    *(v12 + 12) = 2080;
    if (v9)
    {
      v14 = 0x6C62616C69617661;
    }

    else
    {
      v14 = 0x6961766120746F6ELL;
    }

    if (v9)
    {
      v15 = 0xE900000000000065;
    }

    else
    {
      v15 = 0xED0000656C62616CLL;
    }

    v16 = sub_258790224(v14, v15, v22);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_25878B000, v10, v11, "[EED %s] returned availability of:%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v13, -1, -1);
    MEMORY[0x259C8DBE0](v12, -1, -1);
  }

LABEL_21:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result[3];

    os_unfair_lock_lock((v21 + 20));
    *(v21 + 16) = v9 & 1;
    os_unfair_lock_unlock((v21 + 20));
  }

  return result;
}

uint64_t sub_25888EFB0()
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_2588BD868();
    v2 = [v0 objectForKey_];

    if (v2)
    {
      sub_2588BDD38();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {
      sub_25888F394(v7);
    }
  }

  return 2;
}

uint64_t sub_25888F0F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25888F4C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MedicalIDSettingsProvider.deinit()
{

  v1 = OBJC_IVAR____TtC11MedicalIDUI25MedicalIDSettingsProvider___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MedicalIDSettingsProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11MedicalIDUI25MedicalIDSettingsProvider___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MedicalIDSettingsProvider(uint64_t a1)
{
  result = qword_27F960FF8;
  if (!qword_27F960FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25888F2C4(uint64_t a1)
{
  result = sub_2588BBBD8();
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

uint64_t sub_25888F394(uint64_t a1)
{
  sub_2587FC7CC(0, &qword_27F961008, MEMORY[0x277D84F70] + 8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25888F404(uint64_t a1)
{
  if (!qword_27F961010)
  {
    sub_2587FC7CC(255, &qword_27F961018, MEMORY[0x277D839B0]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_2588BDE18();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961010);
    }
  }
}

uint64_t sub_25888F47C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25888F4C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDA08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

MedicalIDUI::OrganDonationStatus_optional __swiftcall OrganDonationStatus.init(medicalIDValue:)(NSNumber_optional medicalIDValue)
{
  v2 = v1;
  if (medicalIDValue.value.super.super.isa)
  {
    isa = medicalIDValue.value.super.super.isa;
    v4 = [(objc_class *)medicalIDValue.value.super.super.isa integerValue];

    if (v4 > 2)
    {
      LOBYTE(v5) = 4;
    }

    else
    {
      v5 = 0x30102u >> (8 * v4);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  *v2 = v5;
  return medicalIDValue.value.super.super.isa;
}

uint64_t OrganDonationStatus.medicalIDValue.getter()
{
  result = *v0;
  if (*v0 > 1u || *v0)
  {
    sub_2587AEC74();
    return sub_2588BDCC8();
  }

  return result;
}

MedicalIDUI::OrganDonationStatus_optional __swiftcall OrganDonationStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2588BDF58();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OrganDonationStatus.rawValue.getter()
{
  v1 = 0x746553746F6ELL;
  v2 = 0x726F6E6F44746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x694C6574616E6F64;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25888F728()
{
  result = qword_27F961038;
  if (!qword_27F961038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961038);
  }

  return result;
}

uint64_t sub_25888F77C()
{
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

uint64_t sub_25888F844(uint64_t a1)
{
  sub_2588BD908();
}

uint64_t sub_25888F8F8(uint64_t a1)
{
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

void sub_25888F9C8(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x746553746F6ELL;
  v4 = 0xE800000000000000;
  v5 = 0x726F6E6F44746F6ELL;
  if (*v1 != 2)
  {
    v5 = 0x694C6574616E6F64;
    v4 = 0xEA00000000006566;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000002588C8C60;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25888FA50()
{
  result = qword_27F961040;
  if (!qword_27F961040)
  {
    sub_25888FAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961040);
  }

  return result;
}

void sub_25888FAA8()
{
  if (!qword_27F961048)
  {
    v0 = sub_2588BDA08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961048);
    }
  }
}

uint64_t sub_25888FB1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for EditHeightCellView(0) + 56);
  sub_258890F00(0, &qword_27F95DB20, MEMORY[0x28220C188], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_25883CF5C(v1 + v7, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2588BBAC8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2588BDBE8();
    v13 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_25888FD24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v103 = a4;
  v104 = a5;
  v102 = a3;
  v115 = a2;
  v110 = a1;
  v7 = type metadata accessor for EditHeightCellView(0);
  v8 = a6 + *(v7 + 40);
  v114 = a6;
  v119[0] = 0;
  sub_2588BD2B8();
  v9 = v118;
  *v8 = v117;
  *(v8 + 1) = v9;
  v10 = *(v7 + 44);
  v11 = v7;
  v113 = v7;
  v99 = (a6 + v10);
  v12 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v106 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v107 = v16;
  v105 = *(v16 - 8);
  v17 = v105 + 56;
  v116 = *(v105 + 56);
  v18 = v116(&v96 - v15, 1, 1, v16);
  MEMORY[0x28223BE20](v18);
  v111 = sub_25889A568;
  sub_258890E1C(&v96 - v15, &v96 - v15, &qword_27F95D478, v12, sub_25889A568);
  sub_2588BD2B8();
  v108 = sub_25889A568;
  v19 = sub_258890E8C(&v96 - v15, &qword_27F95D478, v12, sub_25889A568);
  v20 = *(v11 + 48);
  v21 = v114;
  v22 = v114 + v20;
  v112 = v14;
  MEMORY[0x28223BE20](v19);
  v23 = v107;
  v24 = v116(&v96 - v15, 1, 1, v107);
  MEMORY[0x28223BE20](v24);
  sub_258890E1C(&v96 - v15, &v96 - v15, &qword_27F95D478, v12, v111);
  v100 = v22;
  sub_2588BD2B8();
  v25 = v108;
  v26 = sub_258890E8C(&v96 - v15, &qword_27F95D478, v12, v108);
  v27 = v113;
  v28 = v21 + v113[13];
  MEMORY[0x28223BE20](v26);
  v97 = v15;
  v109 = v17;
  v29 = v116(&v96 - v15, 1, 1, v23);
  MEMORY[0x28223BE20](v29);
  v98 = v12;
  sub_258890E1C(&v96 - v15, &v96 - v15, &qword_27F95D478, v12, v111);
  v101 = v28;
  sub_2588BD2B8();
  sub_258890E8C(&v96 - v15, &qword_27F95D478, v12, v25);
  v30 = v27[14];
  *(v21 + v30) = swift_getKeyPath(byte_2588C7AC0);
  sub_258890F00(0, &qword_27F95DB20, MEMORY[0x28220C188], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v31 = (v21 + v27[15]);
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  *v31 = sub_2588BC358();
  v31[1] = v32;
  sub_258890D38(v110, v21 + v27[5], type metadata accessor for MedicalIDBiometricsViewModel);
  v33 = sub_2588BBAC8();
  v34 = *(v33 - 8);
  v35 = v34[8];
  MEMORY[0x28223BE20](v33);
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BBAB8();
  type metadata accessor for HeightDataProvider(0);
  v37 = swift_allocObject();
  MEMORY[0x28223BE20](v37);
  v38 = v34[2];
  v38(&v96 - v36, &v96 - v36, v33);
  v39 = swift_beginAccess();
  MEMORY[0x28223BE20](v39);
  v38(&v96 - v36, &v96 - v36, v33);
  sub_2588BBD68();
  v40 = v34[1];
  v40(&v96 - v36, v33);
  swift_endAccess();
  v41 = (v40)(&v96 - v36, v33);
  v42 = (v114 + v113[9]);
  *v42 = v37;
  v42[1] = 0;
  v43 = MEMORY[0x28223BE20](v41);
  v44 = v97;
  MEMORY[0x28223BE20](v43);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  v46 = v45;

  MEMORY[0x259C8C5A0](v46);
  sub_2587BA828(&v96 - v44, 1, &v96 - v44);
  v47 = v98;
  sub_258890E8C(&v96 - v44, &qword_27F95D478, v98, v108);
  v48 = MEMORY[0x277CE10B8];
  v49 = v99;
  sub_258890E8C(v99, &qword_27F961058, MEMORY[0x277CE10B8], sub_258890DA0);
  sub_258890DA0(0, &qword_27F961058, v48);
  v108 = v50;
  *(v49 + *(v50 + 28)) = 0;
  v51 = sub_25889B00C(&v96 - v44, v49, &qword_27F95D478, v47, sub_25889A568);
  v52 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v52);
  v99 = v46;
  v53 = MEMORY[0x259C8C5A0](v46);
  MEMORY[0x28223BE20](v53);
  v106 = v37;
  v54 = sub_2587BA828(&v96 - v44, 1, &v96 - v44);
  v55 = v107;
  MEMORY[0x28223BE20](v54);
  v56 = v47;
  v57 = v105;
  sub_258890E1C(&v96 - v44, &v96 - v44, &qword_27F95D478, v56, v111);
  v111 = *(v57 + 48);
  if ((v111)(&v96 - v44, 1, v55) == 1)
  {
    v58 = MEMORY[0x277D83D88];
    sub_258890E8C(&v96 - v44, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_258890E8C(&v96 - v44, &qword_27F95D478, v58, sub_25889A568);
    sub_258890E8C(&v96 - v44, &qword_27F95D478, v58, sub_25889A568);
    v59 = 1;
  }

  else
  {
    sub_2588BB688();
    v61 = v60;
    (*(v57 + 8))(&v96 - v44, v55);
    fmod(v61, 12.0);
    v62 = [objc_opt_self() inches];
    sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
    sub_2588BB678();
    v63 = MEMORY[0x277D83D88];
    sub_258890E8C(&v96 - v44, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_258890E8C(&v96 - v44, &qword_27F95D478, v63, sub_25889A568);
    v59 = 0;
  }

  v116(&v96 - v44, v59, 1, v55);
  v64 = v100;
  sub_258890E8C(v100, &qword_27F961058, MEMORY[0x277CE10B8], sub_258890DA0);
  *(v64 + *(v108 + 7)) = 0;
  v65 = MEMORY[0x277D83D88];
  v66 = sub_25889B00C(&v96 - v44, v64, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
  v100 = &v96;
  v67 = v112;
  v68 = MEMORY[0x28223BE20](v66);
  v69 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = &v96 - v69;
  v98 = &v96;
  MEMORY[0x28223BE20](v68);
  v71 = &v96 - v69;
  v72 = MEMORY[0x259C8C5A0](v99);
  v99 = &v96;
  MEMORY[0x28223BE20](v72);
  v73 = &v96 - v69;
  sub_2587BA828(&v96 - v69, 1, &v96 - v69);

  MEMORY[0x28223BE20](v74);
  v75 = &v96 - v69;
  sub_258890E1C(&v96 - v69, &v96 - v69, &qword_27F95D478, v65, sub_25889A568);
  if ((v111)(&v96 - v69, 1, v55) == 1)
  {
    v76 = v55;
    v77 = MEMORY[0x277D83D88];
    sub_258890E8C(v73, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_258890E8C(v71, &qword_27F95D478, v77, sub_25889A568);
    v78 = v115;
    sub_258890E8C(v75, &qword_27F95D478, v77, sub_25889A568);
    v79 = 1;
    v80 = v114;
  }

  else
  {
    sub_2588BB688();
    (*(v105 + 8))(&v96 - v69, v55);
    v81 = [objc_opt_self() feet];
    sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
    sub_2588BB678();
    v82 = MEMORY[0x277D83D88];
    v76 = v55;
    sub_258890E8C(v73, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_258890E8C(v71, &qword_27F95D478, v82, sub_25889A568);
    v79 = 0;
    v80 = v114;
    v78 = v115;
  }

  v116(v70, v79, 1, v76);
  v83 = v101;
  sub_258890E8C(v101, &qword_27F961058, MEMORY[0x277CE10B8], sub_258890DA0);
  *(v83 + *(v108 + 7)) = 0;
  sub_25889B00C(v70, v83, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
  v84 = v113;
  sub_258890E1C(v78, v80 + v113[6], &qword_27F961050, MEMORY[0x277CE11F8], sub_258890DA0);
  *(v80 + v84[7]) = v102;
  v85 = v104;
  *v80 = v103;
  v80[1] = v85;
  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_2588BFF50;
  v87 = v110;
  v88 = *v110;
  v89 = v110[1];
  *(v86 + 32) = *v110;
  *(v86 + 40) = v89;
  *(v86 + 48) = 0x746867696548;
  *(v86 + 56) = 0xE600000000000000;

  v90 = v78;
  v91 = sub_2588BD9A8();

  v92 = HKUIJoinStringsForAutomationIdentifier();

  if (v92)
  {
    v88 = sub_2588BD8A8();
    v89 = v93;

    sub_258890E8C(v90, &qword_27F961050, MEMORY[0x277CE11F8], sub_258890DA0);
  }

  else
  {
    sub_258890E8C(v90, &qword_27F961050, MEMORY[0x277CE11F8], sub_258890DA0);
  }

  result = sub_25889B0C4(v87, type metadata accessor for MedicalIDBiometricsViewModel);
  v95 = (v80 + v84[8]);
  *v95 = v88;
  v95[1] = v89;
  return result;
}

uint64_t type metadata accessor for EditHeightCellView(uint64_t a1)
{
  result = qword_27F961060;
  if (!qword_27F961060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258890CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_25878E130(255, &qword_27F95D488, 0x277CCAE20);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258890D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258890DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258890E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_258890E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_258890F00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258890F78(uint64_t a1)
{
  sub_258890F00(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MedicalIDBiometricsViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_258890DA0(319, &qword_27F961050, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HealthDemographicDataProvider(319);
        if (v4 <= 0x3F)
        {
          sub_258890F00(319, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_2588996F8(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_258890DA0(319, &qword_27F961058, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_258890F00(319, &qword_27F95DAC0, MEMORY[0x28220C188], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_2587BC234(319);
                  if (v9 <= 0x3F)
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
  }
}

uint64_t sub_2588911B0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v119 = a1;
  v3 = type metadata accessor for EditHeightCellView(0);
  v4 = *(v3 - 8);
  v115 = (v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v6;
  MEMORY[0x28223BE20](v5);
  v10 = (&v108 - v9);
  sub_258899288(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258899B2C(0);
  v117 = *(v15 - 8);
  v118 = v15;
  MEMORY[0x28223BE20](v15);
  v116 = v16;
  v124 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258899C20(0);
  v18 = *(v17 - 1);
  v113 = v17;
  v114 = v18;
  MEMORY[0x28223BE20](v17);
  v123 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v1;
  v121 = type metadata accessor for EditHeightCellView;
  sub_258890D38(v1, v10, type metadata accessor for EditHeightCellView);
  v20 = *(v4 + 80);
  v21 = (v20 + 16) & ~v20;
  v122 = v8;
  v120 = v20;
  v22 = swift_allocObject();
  sub_258899E1C(v10, v22 + v21);
  sub_258890D38(v2, v7, type metadata accessor for EditHeightCellView);
  v23 = swift_allocObject();
  sub_258899E1C(v7, v23 + v21);
  *v14 = swift_getKeyPath(asc_2588C7B58);
  sub_258890F00(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258899328(0);
  v25 = v24;
  v26 = *(v24 + 52);
  v27 = *MEMORY[0x277CDF988];
  v28 = sub_2588BC1C8();
  (*(*(v28 - 8) + 104))(&v14[v26], v27, v28);
  v29 = &v14[*(v25 + 56)];
  *v29 = sub_258899E80;
  v29[1] = v22;
  v30 = &v14[*(v25 + 60)];
  *v30 = sub_258899EF0;
  v30[1] = v23;
  v31 = v12;
  v14[*(v12 + 36)] = 0;
  v32 = sub_2588BBAC8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v110 = v34;
  v109 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = &v108 - v109;
  v36 = v125;
  sub_25888FB1C(&v108 - v109);
  v112 = v10;
  sub_258890D38(v36, v10, v121);
  v37 = swift_allocObject();
  sub_258899E1C(v10, v37 + v21);
  v38 = sub_258899CDC();
  v39 = sub_25889AA78(&qword_27F95FB38, MEMORY[0x28220C160], MEMORY[0x28220C1C8]);
  sub_2588BD118();

  v40 = *(v33 + 8);
  v111 = v33 + 8;
  v108 = v40;
  v40(v35, v32);
  sub_25889B0C4(v14, sub_258899288);
  v41 = v125;
  v42 = v112;
  sub_258890D38(v125, v112, v121);
  v43 = swift_allocObject();
  sub_258899E1C(v42, v43 + v21);
  v127 = v31;
  v128 = v32;
  v129 = v38;
  v130 = v39;
  swift_getOpaqueTypeConformance2();
  v44 = v123;
  v45 = v113;
  sub_2588BCED8();
  v46 = v41;

  v114[1](v44, v45);
  sub_258899F84(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v108 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v46 + *(v115 + 12);
  v51 = *v50;
  v52 = *(v50 + 1);
  LOBYTE(v127) = v51;
  v128 = v52;
  sub_2588996F8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  LODWORD(v44) = v126;
  sub_25889A230(0, &qword_27F961160, sub_25889A020, sub_25889A0FC, MEMORY[0x277CE0338]);
  v54 = *(v53 - 1);
  if (v44 == 1)
  {
    v121 = v53;
    v122 = v48;
    v123 = &v108 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    v115 = &v108;
    v120 = v54;
    v55 = MEMORY[0x28223BE20](v53);
    v114 = (&v108 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    v113 = &v108;
    MEMORY[0x28223BE20](v55);
    v57 = &v108 - v109;
    sub_25888FB1C(&v108 - v109);
    v58 = sub_2588BBA58();
    v112 = &v108;
    v59 = *(v58 - 8);
    v60 = *(v59 + 64);
    MEMORY[0x28223BE20](v58);
    v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_2588BBA68();
    v62 = v108(v57, v32);
    MEMORY[0x28223BE20](v62);
    sub_2588BBA38();
    sub_25889AA78(&qword_27F95DAB0, MEMORY[0x28220C100], MEMORY[0x28220C108]);
    v63 = sub_2588BD7D8();
    v64 = *(v59 + 8);
    v65 = v64(&v108 - v61, v58);
    if (v63)
    {
      v64(&v108 - v61, v58);
    }

    else
    {
      MEMORY[0x28223BE20](v65);
      sub_2588BBA28();
      v67 = sub_2588BD7D8();
      v64(&v108 - v61, v58);
      v64(&v108 - v61, v58);
      if ((v67 & 1) == 0)
      {
        sub_25889A0FC(0);
        v82 = v81;
        v83 = *(v81 - 8);
        MEMORY[0x28223BE20](v81);
        v85 = &v108 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_258894238(v85);
        sub_25889A230(0, &qword_27F9611F8, sub_25889A020, sub_25889A0FC, MEMORY[0x277CE0330]);
        MEMORY[0x28223BE20](v86);
        (*(v83 + 16))(&v108 - v87, v85, v82);
        swift_storeEnumTagMultiPayload();
        sub_25889A020(0);
        v125 = v88;
        sub_25889B07C(&qword_27F961200, sub_25889A020, MEMORY[0x277CE1138]);
        sub_25889A1E8(255);
        v90 = v89;
        sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
        v92 = v91;
        v93 = sub_25889A830();
        v94 = sub_25889A960(&qword_27F9611D8, &qword_27F9611E0, MEMORY[0x28220B550], MEMORY[0x277D84F50]);
        v127 = v90;
        v128 = v92;
        v129 = v93;
        v130 = v94;
        swift_getOpaqueTypeConformance2();
        v80 = v114;
        sub_2588BC778();
        (*(v83 + 8))(v85, v82);
        goto LABEL_8;
      }
    }

    sub_25889A020(0);
    MEMORY[0x28223BE20](v68);
    v70 = &v108 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v70 = sub_2588BC608();
    *(v70 + 1) = 0;
    v70[16] = 1;
    sub_25889B124(0, &qword_27F961208, sub_25889A05C, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    sub_2588949A4(v125, &v70[*(v71 + 44)]);
    sub_25889A230(0, &qword_27F9611F8, sub_25889A020, sub_25889A0FC, MEMORY[0x277CE0330]);
    MEMORY[0x28223BE20](v72);
    sub_25889AAC0(v70, &v108 - v73, sub_25889A020);
    swift_storeEnumTagMultiPayload();
    sub_25889A0FC(0);
    sub_25889B07C(&qword_27F961200, sub_25889A020, MEMORY[0x277CE1138]);
    sub_25889A1E8(255);
    v75 = v74;
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    v77 = v76;
    v78 = sub_25889A830();
    v79 = sub_25889A960(&qword_27F9611D8, &qword_27F9611E0, MEMORY[0x28220B550], MEMORY[0x277D84F50]);
    v127 = v75;
    v128 = v77;
    v129 = v78;
    v130 = v79;
    swift_getOpaqueTypeConformance2();
    v80 = v114;
    sub_2588BC778();
    sub_25889AB30(v70, sub_25889A020);
LABEL_8:
    v49 = v123;
    sub_2587A3E40(v80, v123);
    v66 = (*(v120 + 56))(v49, 0, 1, v121);
    v48 = v122;
    goto LABEL_9;
  }

  v66 = (*(v54 + 56))(&v108 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v53);
LABEL_9:
  v125 = &v108;
  MEMORY[0x28223BE20](v66);
  v96 = &v108 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v117;
  v97 = v118;
  v99 = *(v117 + 16);
  v100 = v124;
  v101 = v99(v96, v124, v118);
  v123 = &v108;
  MEMORY[0x28223BE20](v101);
  v102 = &v108 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889AAC0(v49, v102, sub_258899F84);
  v103 = v49;
  v104 = v119;
  v99(v119, v96, v97);
  sub_25889AA08(0);
  sub_25889AAC0(v102, &v104[*(v105 + 48)], sub_258899F84);
  sub_25889AB30(v103, sub_258899F84);
  v106 = *(v98 + 8);
  v106(v100, v97);
  sub_25889AB30(v102, sub_258899F84);
  return (v106)(v96, v97);
}

uint64_t sub_2588921B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2588BC608();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_25889B124(0, &qword_27F961230, sub_258899464, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  return sub_258897708(a1, a2 + *(v4 + 44));
}

void sub_258892228()
{
  v1 = v0;
  sub_258899748(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = sub_2588BC6F8();
  *(v4 + 1) = 0;
  v4[16] = 1;
  sub_25889B124(0, &qword_27F961210, sub_2588997DC, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_258898840(v1, &v4[*(v5 + 44)]);
  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2588BFF50;
  v7 = (v1 + *(type metadata accessor for EditHeightCellView(0) + 32));
  v8 = v7[1];
  *(v6 + 32) = *v7;
  *(v6 + 40) = v8;
  *(v6 + 48) = 0x56746E65746E6F43;
  *(v6 + 56) = 0xEB00000000776569;

  v9 = sub_2588BD9A8();

  v10 = HKUIJoinStringsForAutomationIdentifier();

  if (v10)
  {
    sub_2588BD8A8();

    sub_25889B07C(&qword_27F961130, sub_258899748, MEMORY[0x277CE1198]);
    sub_2588BCFB8();

    sub_25889B0C4(v4, sub_258899748);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258892444(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for EditHeightCellView(0) + 36));
  v3 = *v1;
  v2 = v1[1];
  v10[2] = v3;
  v10[3] = v2;
  sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v4 = sub_2588BBAC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_25888FB1C(v10 - v7);
  swift_getKeyPath(byte_2588C7BD0);
  KeyPath = swift_getKeyPath(byte_2588C7BF8);
  MEMORY[0x28223BE20](KeyPath);
  (*(v5 + 16))(v10 - v7, v10 - v7, v4);
  sub_2588BBD88();
  return (*(v5 + 8))(v10 - v7, v4);
}

uint64_t sub_2588925F4(uint64_t (**a1)(uint64_t))
{
  v2 = sub_2588BC9A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for EditHeightCellView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  if (*a1)
  {
    v9 = (*a1)(v9);
  }

  MEMORY[0x28223BE20](v9);
  *&v13[-16] = a1;
  sub_258890D38(a1, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for EditHeightCellView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_258899E1C(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  sub_2588BD5F8();
  sub_2588BC998();
  sub_2588BC0C8();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_258892838()
{
  type metadata accessor for EditHeightCellView(0);
  sub_2588996F8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_2588BD2C8();
  sub_2588BD2D8();
}

void *sub_258892910(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for EditHeightCellView(0) + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  v11[16] = v2;
  v12 = v3;
  sub_2588996F8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  result = sub_2588BD2C8();
  if (v11[15] == 1)
  {
    v5 = MEMORY[0x277D83D88];
    sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
    MEMORY[0x28223BE20](v6 - 8);
    v8 = &v11[-v7];
    sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
    MEMORY[0x259C8C5A0]();
    sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
    v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
    result = sub_258890E8C(v8, &qword_27F95D478, v5, sub_25889A568);
    if (v10 == 1)
    {
      return sub_258892ADC();
    }
  }

  return result;
}

uint64_t sub_258892ADC()
{
  v1 = type metadata accessor for HealthDemographicData(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587AF908(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditHeightCellView(0);
  v9 = *(v0 + *(v8 + 60));
  if (v9)
  {
    v10 = [v9 suggestHealthData];
    v130 = v8;
    v131 = v0;
    if (v10)
    {
      v11 = *(v0 + *(v8 + 28));
      swift_getKeyPath(byte_2588C7BA8);
      v132 = v11;
      sub_25889B07C(&qword_27F95D8D0, type metadata accessor for HealthDemographicDataProvider, &unk_2588BFF00);
      sub_2588BBB98();

      v12 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
      swift_beginAccess();
      sub_258890D38(v11 + v12, v7, sub_2587AF908);
      if (!(*(v2 + 48))(v7, 1, v1))
      {
        sub_258890D38(v7, v4, type metadata accessor for HealthDemographicData);
        sub_25889B0C4(v7, sub_2587AF908);
        v52 = *&v4[*(v1 + 28)];
        sub_25889B0C4(v4, type metadata accessor for HealthDemographicData);
        sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
        v129 = &v115;
        v127 = *(*(v53 - 8) + 64);
        MEMORY[0x28223BE20](v53 - 8);
        v55 = &v115 - v54;
        type metadata accessor for MedicalIDBiometricsViewModel(0);
        v56 = v52;
        v128 = v55;
        sub_2587F1E14(v52, v55);
        v126 = v56;

        v57 = sub_2588BBAC8();
        v125 = &v115;
        v58 = *(v57 - 8);
        MEMORY[0x28223BE20](v57);
        v60 = &v115 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25888FB1C(v60);
        v61 = sub_2588BBA58();
        v124 = &v115;
        v62 = *(v61 - 8);
        v63 = *(v62 + 64);
        MEMORY[0x28223BE20](v61);
        v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
        sub_2588BBA68();
        v65 = (*(v58 + 8))(v60, v57);
        MEMORY[0x28223BE20](v65);
        sub_2588BBA38();
        sub_25889AA78(&qword_27F95DAB0, MEMORY[0x28220C100], MEMORY[0x28220C108]);
        v66 = sub_2588BD7D8();
        v67 = *(v62 + 8);
        v68 = v67(&v115 - v64, v61);
        if (v66)
        {
          v69 = v67(&v115 - v64, v61);
        }

        else
        {
          MEMORY[0x28223BE20](v68);
          sub_2588BBA28();
          v70 = sub_2588BD7D8();
          v67(&v115 - v64, v61);
          v69 = v67(&v115 - v64, v61);
          if ((v70 & 1) == 0)
          {
            v107 = v127;
            MEMORY[0x28223BE20](v69);
            v108 = &v115 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
            v109 = (v131 + *(v130 + 36));
            v111 = *v109;
            v110 = v109[1];
            v133 = v111;
            v134 = v110;
            sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
            sub_2588BD2C8();
            v112 = v128;
            sub_2587BA828(v128, 1, v108);

            MEMORY[0x28223BE20](v113);
            v114 = MEMORY[0x277D83D88];
            sub_258890E1C(v108, v108, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
            sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
            sub_2588BD2D8();

            sub_258890E8C(v108, &qword_27F95D478, v114, sub_25889A568);
            sub_258890E8C(v112, &qword_27F95D478, v114, sub_25889A568);
            return sub_258895CA8();
          }
        }

        v124 = &v115;
        v71 = v127;
        MEMORY[0x28223BE20](v69);
        v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
        v73 = &v115 - v72;
        v74 = (v131 + *(v130 + 36));
        v75 = *v74;
        v122 = v74[1];
        v123 = v75;
        v133 = v75;
        v134 = v122;
        sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
        v76 = sub_2588BD2C8();
        v125 = &v115;
        MEMORY[0x28223BE20](v76);
        v77 = &v115 - v72;
        v78 = sub_2587BA828(v128, 1, &v115 - v72);
        MEMORY[0x28223BE20](v78);
        v79 = &v115 - v72;
        sub_258890E1C(&v115 - v72, &v115 - v72, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
        sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
        v81 = v80;
        v82 = *(v80 - 1);
        v83 = *(v82 + 48);
        v121 = (v82 + 48);
        v119 = v83;
        if (v83(&v115 - v72, 1, v80) == 1)
        {

          v84 = MEMORY[0x277D83D88];
          sub_258890E8C(v77, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
          sub_258890E8C(v79, &qword_27F95D478, v84, sub_25889A568);
          v85 = 1;
        }

        else
        {
          sub_2588BB688();
          (*(v82 + 8))(&v115 - v72, v81);
          v86 = [objc_opt_self() feet];
          sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
          sub_2588BB678();

          sub_258890E8C(v77, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
          v85 = 0;
        }

        v87 = *(v82 + 56);
        v120 = (v82 + 56);
        v118 = v87;
        v88 = v87(v73, v85, 1, v81);
        v116 = v82;
        v125 = v81;
        v89 = v127;
        MEMORY[0x28223BE20](v88);
        v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
        v91 = MEMORY[0x277D83D88];
        sub_258890E1C(v73, &v115 - v90, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
        sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
        v117 = v92;
        sub_2588BD2D8();
        v93 = sub_258890E8C(v73, &qword_27F95D478, v91, sub_25889A568);
        v124 = &v115;
        MEMORY[0x28223BE20](v93);
        v94 = &v115 - v90;
        v133 = v123;
        v134 = v122;
        v95 = sub_2588BD2C8();
        v123 = &v115;
        MEMORY[0x28223BE20](v95);
        v96 = sub_2587BA828(v128, 1, &v115 - v90);
        v97 = v125;
        MEMORY[0x28223BE20](v96);
        sub_258890E1C(&v115 - v90, &v115 - v90, &qword_27F95D478, v91, sub_25889A568);
        if (v119(&v115 - v90, 1, v97) == 1)
        {

          v98 = MEMORY[0x277D83D88];
          sub_258890E8C(&v115 - v90, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
          sub_258890E8C(&v115 - v90, &qword_27F95D478, v98, sub_25889A568);
          v99 = 1;
        }

        else
        {
          sub_2588BB688();
          v101 = v100;
          (*(v116 + 8))(&v115 - v90, v97);
          fmod(v101, 12.0);
          v102 = [objc_opt_self() inches];
          sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
          sub_2588BB678();

          sub_258890E8C(&v115 - v90, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
          v99 = 0;
        }

        v103 = v118(v94, v99, 1, v97);
        MEMORY[0x28223BE20](v103);
        v105 = MEMORY[0x277D83D88];
        sub_258890E1C(v94, &v115 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
        sub_2588BD2D8();

        sub_258890E8C(v94, &qword_27F95D478, v105, sub_25889A568);
        sub_258890E8C(v128, &qword_27F95D478, v105, sub_25889A568);
        return sub_258895CA8();
      }

      sub_25889B0C4(v7, sub_2587AF908);
    }

    v13 = sub_2588BBAC8();
    v129 = &v115;
    v14 = *(v13 - 8);
    MEMORY[0x28223BE20](v13);
    v16 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25888FB1C(v16);
    v17 = sub_2588BBA58();
    v128 = &v115;
    v18 = *(v17 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v17);
    v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_2588BBA68();
    v21 = (*(v14 + 8))(v16, v13);
    MEMORY[0x28223BE20](v21);
    sub_2588BBA38();
    sub_25889AA78(&qword_27F95DAB0, MEMORY[0x28220C100], MEMORY[0x28220C108]);
    v22 = sub_2588BD7D8();
    v23 = *(v18 + 8);
    v24 = v23(&v115 - v20, v17);
    if (v22)
    {
      v23(&v115 - v20, v17);
    }

    else
    {
      MEMORY[0x28223BE20](v24);
      sub_2588BBA28();
      v25 = sub_2588BD7D8();
      v23(&v115 - v20, v17);
      v23(&v115 - v20, v17);
      if ((v25 & 1) == 0)
      {
        sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
        v43 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v42 - 8);
        v44 = (v131 + *(v130 + 36));
        v46 = *v44;
        v45 = v44[1];
        v133 = v46;
        v134 = v45;
        sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
        sub_2588BD2C8();

        if (qword_27F95D038 != -1)
        {
          swift_once();
        }

        sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
        v48 = v47;
        __swift_project_value_buffer(v47, qword_27F969718);
        v49 = [objc_opt_self() centimeters];
        sub_2588BB6B8();

        v50 = (*(*(v48 - 8) + 56))(&v115 - v43, 0, 1, v48);
        MEMORY[0x28223BE20](v50);
        v51 = MEMORY[0x277D83D88];
        sub_258890E1C(&v115 - v43, &v115 - v43, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
        sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
        sub_2588BD2D8();
        sub_258890E8C(&v115 - v43, &qword_27F95D478, v51, sub_25889A568);
        return sub_258895CA8();
      }
    }

    sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
    v129 = &v115;
    v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v26 - 8);
    v28 = (v131 + *(v130 + 36));
    v29 = *v28;
    v127 = v28[1];
    v128 = v29;
    v133 = v29;
    v134 = v127;
    sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
    v126 = v30;
    sub_2588BD2C8();
    if (qword_27F95D020 != -1)
    {
      swift_once();
    }

    sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
    v32 = v31;
    v125 = __swift_project_value_buffer(v31, qword_27F9696D0);
    sub_2588BB688();
    v124 = objc_opt_self();
    v33 = [v124 feet];
    v123 = sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
    sub_2588BB678();
    v34 = *(v32 - 8);
    v121 = *(v34 + 56);
    v122 = (v34 + 56);
    v121(&v115 - v27, 0, 1, v32);

    MEMORY[0x28223BE20](v35);
    v36 = MEMORY[0x277D83D88];
    v120 = sub_25889A568;
    sub_258890E1C(&v115 - v27, &v115 - v27, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
    v119 = v37;
    sub_2588BD2D8();
    v38 = sub_258890E8C(&v115 - v27, &qword_27F95D478, v36, sub_25889A568);
    MEMORY[0x28223BE20](v38);
    v133 = v128;
    v134 = v127;
    sub_2588BD2C8();

    sub_2588BB688();
    fmod(v39, 12.0);
    v40 = [v124 inches];
    sub_2588BB678();
    v41 = (v121)(&v115 - v27, 0, 1, v32);
    MEMORY[0x28223BE20](v41);
    sub_258890E1C(&v115 - v27, &v115 - v27, &qword_27F95D478, v36, v120);
    sub_2588BD2D8();
    sub_258890E8C(&v115 - v27, &qword_27F95D478, v36, sub_25889A568);
    return sub_258895CA8();
  }

  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  result = sub_2588BC348();
  __break(1u);
  return result;
}

void sub_258894238(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for EditHeightCellView(0);
  v3 = v2 - 8;
  v50 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v51 = v4;
  v53 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2588BC318();
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889A1E8(0);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v54 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889A2B4(0);
  v49 = v11;
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889A388(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2588BC688();
  v58 = v20;
  v59 = v19;
  v56 = v21;
  v57 = v22;
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  MEMORY[0x28223BE20](v23 - 8);
  v24 = *(v3 + 52);
  sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  v60 = v1;
  v47[2] = v24;
  v47[1] = v25;
  sub_2588BD2E8();
  v63 = v1;
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  sub_25889A470(0);
  sub_25889A960(&qword_27F95D490, &qword_27F95D498, MEMORY[0x28220B548], MEMORY[0x277D84F48]);
  sub_25889A72C();
  v26 = v13;
  sub_2588BD398();
  sub_2588BC308();
  v27 = sub_25889B07C(&qword_27F9611C8, sub_25889A388, MEMORY[0x277CDF038]);
  v28 = v61;
  sub_2588BCE88();
  v29 = v8;
  v30 = v28;
  (*(v62 + 8))(v29, v28);
  (*(v16 + 8))(v18, v15);
  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2588BFF50;
  v32 = *(v3 + 40);
  v33 = v60;
  v34 = (v60 + v32);
  v35 = v34[1];
  *(v31 + 32) = *v34;
  *(v31 + 40) = v35;
  *(v31 + 48) = 0x72656B636950;
  *(v31 + 56) = 0xE600000000000000;

  v36 = sub_2588BD9A8();

  v37 = HKUIJoinStringsForAutomationIdentifier();

  if (v37)
  {
    sub_2588BD8A8();

    v64 = v15;
    v65 = v30;
    v66 = v27;
    v67 = MEMORY[0x277CDDB70];
    swift_getOpaqueTypeConformance2();
    v38 = v54;
    v39 = v49;
    sub_2588BCFB8();

    v40 = (*(v48 + 8))(v26, v39);
    MEMORY[0x28223BE20](v40);
    v42 = v47 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BD2C8();
    v43 = v33;
    v44 = v53;
    sub_258890D38(v43, v53, type metadata accessor for EditHeightCellView);
    v45 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v46 = swift_allocObject();
    sub_258899E1C(v44, v46 + v45);
    sub_25889A830();
    sub_25889A960(&qword_27F9611D8, &qword_27F9611E0, MEMORY[0x28220B550], MEMORY[0x277D84F50]);
    sub_2588BD118();

    sub_258890E8C(v42, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_25889AB30(v38, sub_25889A1E8);
  }

  else
  {
    __break(1u);
  }
}

void sub_2588949A4(void *a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v3 = type metadata accessor for EditHeightCellView(0);
  v138 = v3;
  v121 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v122 = v4;
  v134 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_2588BC318();
  v5 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v7 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889A0FC(0);
  v105 = v8;
  v104 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v135 = v9;
  v127 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = (v95 - v127);
  sub_25889A1E8(0);
  v133 = v10;
  MEMORY[0x28223BE20](v10);
  v126 = v11;
  v125 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = (v95 - v125);
  sub_25889A2B4(0);
  v132 = v12;
  v141 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v124 = v13;
  v123 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v95 - v123;
  sub_25889A388(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v119 = v18;
  v118 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v95 - v118;
  v20 = sub_2588BC688();
  v130 = v21;
  v131 = v20;
  LODWORD(v128) = v22;
  v129 = v23;
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  v116 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v117 = v25;
  v26 = *(v3 + 52);
  v27 = a1;
  v142 = a1;
  v28 = a1 + v26;
  sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  v139 = v29;
  v107 = v28;
  sub_2588BD2E8();
  v143 = v27;
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v31 = v30;
  sub_25889A470(0);
  v33 = v32;
  v34 = sub_25889A960(&qword_27F95D490, &qword_27F95D498, MEMORY[0x28220B548], MEMORY[0x277D84F48]);
  v113 = sub_25889A72C();
  v114 = v34;
  v115 = v33;
  v140 = v31;
  sub_2588BD398();
  sub_2588BC308();
  v35 = sub_25889B07C(&qword_27F9611C8, sub_25889A388, MEMORY[0x277CDF038]);
  v36 = v14;
  v37 = v137;
  sub_2588BCE88();
  v38 = *(v5 + 8);
  v130 = v7;
  v131 = v5 + 8;
  v39 = v7;
  v40 = v37;
  v128 = v38;
  v38(v39, v37);
  v41 = *(v17 + 8);
  v129 = v17 + 8;
  v112 = v41;
  v41(v19, v16);
  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v111 = v42;
  v43 = swift_allocObject();
  v110 = xmmword_2588BFF50;
  *(v43 + 16) = xmmword_2588BFF50;
  v44 = (v142 + *(v138 + 8));
  v45 = v44[1];
  v109 = *v44;
  *(v43 + 32) = v109;
  *(v43 + 40) = v45;
  *(v43 + 48) = 0x6B63695074656546;
  *(v43 + 56) = 0xEA00000000007265;
  v108 = v45;
  swift_bridgeObjectRetain_n();
  v46 = sub_2588BD9A8();

  v47 = HKUIJoinStringsForAutomationIdentifier();

  if (v47)
  {
    sub_2588BD8A8();

    v103 = v16;
    v144 = v16;
    v145 = v40;
    v146 = v35;
    v147 = MEMORY[0x277CDDB70];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v120;
    v50 = v132;
    v102 = OpaqueTypeConformance2;
    sub_2588BCFB8();

    v51 = *(v141 + 8);
    v141 += 8;
    v101 = v51;
    v52 = v51(v36, v50);
    MEMORY[0x28223BE20](v52);
    v100 = v53;
    v96 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
    v54 = v95 - v96;
    sub_2588BD2C8();
    v55 = v134;
    sub_258890D38(v142, v134, type metadata accessor for EditHeightCellView);
    v56 = (v121[80] + 16) & ~v121[80];
    v98 = v121[80];
    v97 = v122 + v56;
    v57 = swift_allocObject();
    v107 = v56;
    sub_258899E1C(v55, v57 + v56);
    v58 = sub_25889A830();
    v59 = sub_25889A960(&qword_27F9611D8, &qword_27F9611E0, MEMORY[0x28220B550], MEMORY[0x277D84F50]);
    v99 = v58;
    v95[1] = v59;
    sub_2588BD118();

    sub_258890E8C(v54, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    v60 = sub_25889AB30(v49, sub_25889A1E8);
    v122 = v95;
    v61 = MEMORY[0x28223BE20](v60);
    v121 = (v95 - v127);
    v120 = v95;
    v62 = MEMORY[0x28223BE20](v61);
    v125 = (v95 - v125);
    v95[0] = v95;
    v63 = MEMORY[0x28223BE20](v62);
    v64 = v95 - v123;
    v127 = v95;
    MEMORY[0x28223BE20](v63);
    v65 = v95 - v118;
    v66 = sub_2588BC688();
    MEMORY[0x28223BE20](v66);
    v126 = v35;
    v138 = v142 + *(v138 + 12);
    v67 = sub_2588BD2E8();
    MEMORY[0x28223BE20](v67);
    sub_2588BD398();
    v68 = v130;
    sub_2588BC308();
    v69 = v103;
    v70 = v137;
    sub_2588BCE88();
    v128(v68, v70);
    v112(v65, v69);
    v71 = swift_allocObject();
    *(v71 + 16) = v110;
    v72 = v108;
    *(v71 + 32) = v109;
    *(v71 + 40) = v72;
    strcpy((v71 + 48), "InchesPicker");
    *(v71 + 61) = 0;
    *(v71 + 62) = -5120;
    v73 = sub_2588BD9A8();

    v74 = HKUIJoinStringsForAutomationIdentifier();

    if (v74)
    {
      sub_2588BD8A8();

      v75 = v125;
      v76 = v132;
      sub_2588BCFB8();

      v77 = v101(v64, v76);
      MEMORY[0x28223BE20](v77);
      v78 = v95 - v96;
      sub_2588BD2C8();
      v79 = v134;
      sub_258890D38(v142, v134, type metadata accessor for EditHeightCellView);
      v80 = swift_allocObject();
      sub_258899E1C(v79, v80 + v107);
      v81 = v121;
      sub_2588BD118();

      sub_258890E8C(v78, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
      v82 = sub_25889AB30(v75, sub_25889A1E8);
      v142 = v95;
      v83 = v135;
      MEMORY[0x28223BE20](v82);
      v84 = v95 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      v85 = v104;
      v86 = *(v104 + 16);
      v87 = v136;
      v88 = v105;
      v89 = v86(v84, v136, v105);
      LOBYTE(v144) = 1;
      MEMORY[0x28223BE20](v89);
      v86(v84, v81, v88);
      v90 = v106;
      v86(v106, v84, v88);
      sub_25889A090(0);
      v92 = &v90[*(v91 + 48)];
      v93 = v144;
      *v92 = 0;
      v92[8] = v93;
      v86(&v90[*(v91 + 64)], v84, v88);
      v94 = *(v85 + 8);
      v94(v81, v88);
      v94(v87, v88);
      v94(v84, v88);
      v94(v84, v88);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2588958FC(uint64_t a1)
{
  v2 = type metadata accessor for EditHeightCellView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x28223BE20](v2 - 8) + 44));
  v7 = *v5;
  v6 = v5[1];
  v23 = v7;
  v24 = v6;
  sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v8 = [objc_opt_self() feet];
  if (qword_27F95D058 != -1)
  {
    swift_once();
  }

  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v10 = v9;
  __swift_project_value_buffer(v9, qword_27F969778);
  sub_2588BB688();
  v12 = v11;
  if (qword_27F95D060 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F969790);
  sub_2588BB688();
  v14 = sub_2587BBC88(v8, v12, v13);

  v27 = v14;
  swift_getKeyPath(byte_2588C7B90);
  sub_258890D38(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditHeightCellView);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_258899E1C(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_25889A568(0, &qword_27F9611A8, MEMORY[0x277D83940]);
  sub_25889A5D8(0);
  sub_25889A6B8();
  v17 = MEMORY[0x28220B548];
  sub_25889AC88(&qword_27F95D498, &qword_27F95D480, MEMORY[0x28220B528], MEMORY[0x28220B548]);
  sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = sub_25889A960(&qword_27F95D490, &qword_27F95D498, v17, MEMORY[0x277D84F48]);
  v23 = MEMORY[0x277CE0BD8];
  v24 = v19;
  v25 = MEMORY[0x277CE0BC8];
  v26 = v20;
  swift_getOpaqueTypeConformance2();
  return sub_2588BD4B8();
}

uint64_t sub_258895CA8()
{
  v1 = v0;
  v2 = sub_2588BBAC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25888FB1C(v5);
  v6 = sub_2588BBA58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BBA68();
  v10 = (*(v3 + 8))(v5, v2);
  MEMORY[0x28223BE20](v10);
  sub_2588BBA38();
  sub_25889AA78(&qword_27F95DAB0, MEMORY[0x28220C100], MEMORY[0x28220C108]);
  v11 = sub_2588BD7D8();
  v12 = *(v7 + 8);
  v13 = v12(&v58 - v9, v6);
  if (v11)
  {
    v12(&v58 - v9, v6);
    goto LABEL_4;
  }

  MEMORY[0x28223BE20](v13);
  sub_2588BBA28();
  v14 = sub_2588BD7D8();
  v12(&v58 - v9, v6);
  v12(&v58 - v9, v6);
  if (v14)
  {
LABEL_4:
    sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
    v16 = v15;
    v17 = *(v15 - 8);
    v18 = *(v17 + 64);
    v19 = MEMORY[0x28223BE20](v15);
    v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v69 = &v58 - v20;
    v71 = &v58;
    MEMORY[0x28223BE20](v19);
    sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
    v70 = &v58;
    v66 = *(*(v21 - 8) + 64);
    MEMORY[0x28223BE20](v21 - 8);
    v22 = v1;
    v64 = v23;
    v24 = (&v58 - v23);
    v65 = type metadata accessor for EditHeightCellView(0);
    sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
    v67 = v22;
    sub_2588BD2C8();
    v68 = v17;
    v25 = *(v17 + 48);
    v26 = v25(v24, 1, v16);
    if (v26)
    {
      return sub_258890E8C(v24, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    }

    v63 = &v58;
    v60 = &v58;
    MEMORY[0x28223BE20](v26);
    v28 = v68;
    (*(v68 + 16))(&v58 - v20, v24, v16);
    sub_258890E8C(v24, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    v59 = objc_opt_self();
    v29 = [v59 inches];
    sub_2588BB6B8();

    v61 = *(v28 + 8);
    v62 = v28 + 8;
    v61(&v58 - v20, v16);
    v70 = *(v28 + 32);
    v30 = (v70)(v69, &v58 - v20, v16);
    v71 = &v58;
    v31 = MEMORY[0x28223BE20](v30);
    MEMORY[0x28223BE20](v31);
    v32 = (&v58 - v64);
    sub_2588BD2C8();
    if (v25(v32, 1, v16) == 1)
    {
      v61(v69, v16);
      return sub_258890E8C(v32, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    }

    else
    {
      v44 = (v70)(&v58 - v20, v32, v16);
      v70 = &v58;
      MEMORY[0x28223BE20](v44);
      sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
      v45 = v69;
      v46 = sub_2588BB6A8();
      v64 = &v58;
      v47 = v66;
      MEMORY[0x28223BE20](v46);
      v48 = &v58 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = [v59 inches];
      sub_2588BB6B8();

      v50 = (*(v68 + 56))(v48, 0, 1, v16);
      MEMORY[0x28223BE20](v50);
      v51 = MEMORY[0x277D83D88];
      sub_258890E1C(v48, v48, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
      sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
      sub_2588BD438();
      sub_258890E8C(v48, &qword_27F95D478, v51, sub_25889A568);
      v52 = v61;
      v61(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
      v52(&v58 - v20, v16);
      return (v52)(v45, v16);
    }
  }

  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v36 = &v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v58 - v37;
  type metadata accessor for EditHeightCellView(0);
  sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v40 = v39;
  v41 = *(v39 - 8);
  v42 = (*(v41 + 48))(v38, 1, v39);
  if (v42)
  {
    sub_258890E8C(v38, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    v43 = 1;
  }

  else
  {
    v71 = &v58;
    MEMORY[0x28223BE20](v42);
    v54 = &v58 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v54, v38, v40);
    sub_258890E8C(v38, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    v55 = [objc_opt_self() centimeters];
    sub_2588BB6B8();

    (*(v41 + 8))(v54, v40);
    v43 = 0;
  }

  v56 = (*(v41 + 56))(v36, v43, 1, v40);
  MEMORY[0x28223BE20](v56);
  v57 = MEMORY[0x277D83D88];
  sub_258890E1C(v36, &v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  sub_2588BD438();
  return sub_258890E8C(v36, &qword_27F95D478, v57, sub_25889A568);
}

uint64_t sub_258896894(uint64_t a1)
{
  v2 = type metadata accessor for EditHeightCellView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x28223BE20](v2 - 8) + 44));
  v7 = *v5;
  v6 = v5[1];
  v23 = v7;
  v24 = v6;
  sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v8 = [objc_opt_self() inches];
  if (qword_27F95D048 != -1)
  {
    swift_once();
  }

  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v10 = v9;
  __swift_project_value_buffer(v9, qword_27F969748);
  sub_2588BB688();
  v12 = v11;
  if (qword_27F95D050 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F969760);
  sub_2588BB688();
  v14 = sub_2587BBC88(v8, v12, v13);

  v27 = v14;
  swift_getKeyPath(byte_2588C7B90);
  sub_258890D38(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditHeightCellView);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_258899E1C(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_25889A568(0, &qword_27F9611A8, MEMORY[0x277D83940]);
  sub_25889A5D8(0);
  sub_25889A6B8();
  v17 = MEMORY[0x28220B548];
  sub_25889AC88(&qword_27F95D498, &qword_27F95D480, MEMORY[0x28220B528], MEMORY[0x28220B548]);
  sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = sub_25889A960(&qword_27F95D490, &qword_27F95D498, v17, MEMORY[0x277D84F48]);
  v23 = MEMORY[0x277CE0BD8];
  v24 = v19;
  v25 = MEMORY[0x277CE0BC8];
  v26 = v20;
  swift_getOpaqueTypeConformance2();
  return sub_2588BD4B8();
}

void sub_258896C40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v39 = MEMORY[0x28220B4E8];
  sub_258890CC8(0, &qword_27F960F88, MEMORY[0x28220B4E8]);
  v40 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - v4;
  sub_258890CC8(0, &qword_27F960F90, MEMORY[0x28220B4D0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  sub_2588BB698();
  sub_25889AB9C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889AC20(0, &qword_27F960FA0, sub_25888CDE8, MEMORY[0x277D839F8], MEMORY[0x28220BC90]);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_258890CC8(0, &qword_27F95E848, MEMORY[0x28220BCD8]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  sub_2588BB898();
  sub_2588BB648();
  (*(v17 + 8))(v19, v16);
  sub_25889B0C4(v13, sub_25889AB9C);
  (*(v8 + 8))(v10, v7);
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v21 = v20;
  sub_25889AC88(&qword_27F960FB0, &qword_27F960F88, v39, MEMORY[0x28220B4F8]);
  v22 = v40;
  v23 = v41;
  sub_2588BB6C8();
  (*(v3 + 8))(v5, v22);
  sub_25878F648();
  v24 = sub_2588BCDF8();
  v26 = v25;
  LOBYTE(v5) = v27;
  v29 = v28;
  v30 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v39 - v32;
  v34 = *(v21 - 8);
  (*(v34 + 16))(&v39 - v32, v23, v21);
  (*(v34 + 56))(v33, 0, 1, v21);
  sub_25889ACCC(0, &qword_27F95D468, sub_2587A9D80);
  v36 = v42;
  v37 = v42 + *(v35 + 36);
  sub_25889B00C(v33, v37, &qword_27F95D478, v30, sub_25889A568);
  sub_2587A9D80(0);
  *(v37 + *(v38 + 36)) = 1;
  *v36 = v24;
  *(v36 + 8) = v26;
  *(v36 + 16) = v5 & 1;
  *(v36 + 24) = v29;
}

uint64_t sub_258897148(uint64_t a1)
{
  v2 = type metadata accessor for EditHeightCellView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x28223BE20](v2 - 8) + 44));
  v7 = *v5;
  v6 = v5[1];
  v23 = v7;
  v24 = v6;
  sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  if (qword_27F95D008 != -1)
  {
    swift_once();
  }

  v8 = qword_27F9696A8;
  if (qword_27F95D030 != -1)
  {
    swift_once();
  }

  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v10 = v9;
  __swift_project_value_buffer(v9, qword_27F969700);
  sub_2588BB688();
  v12 = v11;
  if (qword_27F95D040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F969730);
  sub_2588BB688();
  v14 = sub_2587BBC88(v8, v12, v13);

  v27 = v14;
  swift_getKeyPath(byte_2588C7B90);
  sub_258890D38(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditHeightCellView);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_258899E1C(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_25889A568(0, &qword_27F9611A8, MEMORY[0x277D83940]);
  sub_25889A5D8(0);
  sub_25889A6B8();
  v17 = MEMORY[0x28220B548];
  sub_25889AC88(&qword_27F95D498, &qword_27F95D480, MEMORY[0x28220B528], MEMORY[0x28220B548]);
  sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = sub_25889A960(&qword_27F95D490, &qword_27F95D498, v17, MEMORY[0x277D84F48]);
  v23 = MEMORY[0x277CE0BD8];
  v24 = v19;
  v25 = MEMORY[0x277CE0BC8];
  v26 = v20;
  swift_getOpaqueTypeConformance2();
  return sub_2588BD4B8();
}

void sub_258897504(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for EditHeightCellView(0);
  type metadata accessor for MedicalIDBiometricsViewModel(0);
  v22[0] = sub_2587F21C4(a1);
  v22[1] = v4;
  sub_25878F648();
  v5 = sub_2588BCDF8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v22 - v14;
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v17 = v16;
  v18 = *(v16 - 8);
  (*(v18 + 16))(v15, a1, v16);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_25889ACCC(0, &qword_27F95D468, sub_2587A9D80);
  v20 = a2 + *(v19 + 36);
  sub_25889B00C(v15, v20, &qword_27F95D478, v12, sub_25889A568);
  sub_2587A9D80(0);
  *(v20 + *(v21 + 36)) = 1;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
}

uint64_t sub_258897708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_25889AED0(0, &qword_27F961238, sub_258899560, MEMORY[0x277CE0330]);
  v32[2] = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v32 - v4;
  sub_258899560(0);
  v32[3] = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889952C(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v33 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - v12;
  sub_25889ACCC(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  v32[1] = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v32 - v18;
  sub_258897C64();
  v20 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v32 - v22;
  type metadata accessor for EditHeightCellView(0);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
  sub_258890E8C(v23, &qword_27F95D478, v20, sub_25889A568);
  if (v25 == 1)
  {
    sub_2588985DC();
    sub_2588376C4(v17, v5);
    swift_storeEnumTagMultiPayload();
    sub_25889B07C(&qword_27F961240, sub_258899560, MEMORY[0x277CE1138]);
    sub_2587DFB50();
    sub_2588BC778();
    sub_25889AF60(v17);
  }

  else
  {
    *v8 = sub_2588BC608();
    *(v8 + 1) = 0;
    v8[16] = 1;
    sub_25889B124(0, &qword_27F961248, sub_258899630, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    sub_258897DF4(a1, &v8[*(v26 + 44)]);
    sub_258890D38(v8, v5, sub_258899560);
    swift_storeEnumTagMultiPayload();
    sub_25889B07C(&qword_27F961240, sub_258899560, MEMORY[0x277CE1138]);
    sub_2587DFB50();
    sub_2588BC778();
    sub_25889B0C4(v8, sub_258899560);
  }

  sub_2588376C4(v19, v17);
  v27 = v33;
  sub_258890D38(v13, v33, sub_25889952C);
  v28 = v34;
  sub_2588376C4(v17, v34);
  sub_258899498(0);
  v30 = v28 + *(v29 + 48);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_258890D38(v27, v28 + *(v29 + 64), sub_25889952C);
  sub_25889B0C4(v13, sub_25889952C);
  sub_25889AF60(v19);
  sub_25889B0C4(v27, sub_25889952C);
  return sub_25889AF60(v17);
}

void sub_258897C64()
{
  if (qword_27F95D110 != -1)
  {
    swift_once();
  }

  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2588BFF50;
  v2 = (v0 + *(type metadata accessor for EditHeightCellView(0) + 32));
  v3 = v2[1];
  *(v1 + 32) = *v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = 0x656C746954;
  *(v1 + 56) = 0xE500000000000000;

  v4 = sub_2588BD9A8();

  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (v5)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258897DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for EditHeightCellView(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2587F9F84(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  sub_2588980D4(&v24 - v9);
  v11 = (a1 + *(v3 + 40));
  v12 = *v11;
  v13 = *(v11 + 1);
  v28 = v12;
  v29 = v13;
  sub_2588996F8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (v27 == 1)
  {
    v18 = (a1 + *(v3 + 20));
    v14 = *v18;
    v15 = v18[1];
    sub_258890D38(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditHeightCellView);
    v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v17 = swift_allocObject();
    sub_258899E1C(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v19);
    swift_bridgeObjectRetain_n();

    v16 = sub_25889B88C;
  }

  sub_258890D38(v10, v8, sub_2587F9F84);
  v20 = v26;
  sub_258890D38(v8, v26, sub_2587F9F84);
  sub_258899664(0);
  v22 = (v20 + *(v21 + 48));
  sub_2588477DC(v14, v15);
  sub_258847820(v14, v15);
  *v22 = v14;
  v22[1] = v15;
  v22[2] = v16;
  v22[3] = v17;
  sub_25889B0C4(v10, sub_2587F9F84);
  sub_258847820(v14, v15);
  return sub_25889B0C4(v8, sub_2587F9F84);
}

void sub_2588980D4(uint64_t a1@<X8>)
{
  v46 = a1;
  sub_25889ACCC(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - v5;
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - v10;
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for EditHeightCellView(0);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  if ((*(v9 + 48))(v13, 1, v8) == 1)
  {
    sub_258890E8C(v13, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    (*(v4 + 56))(v46, 1, 1, v3);
  }

  else
  {
    v41 = v6;
    v42 = v4;
    v43 = v3;
    v39 = v9;
    v40 = v8;
    v15 = v45;
    (*(v9 + 32))(v45, v13, v8);
    v44 = v1;
    type metadata accessor for MedicalIDBiometricsViewModel(0);
    v47 = sub_2587F21C4(v15);
    v48 = v16;
    sub_25878F648();
    v17 = sub_2588BCDF8();
    v19 = v18;
    v21 = v20;
    v47 = sub_2588BD158();
    v22 = v14;
    v23 = sub_2588BCD98();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_2587B1CF8(v17, v19, v21 & 1);

    v30 = v23;

    v47 = v23;
    v48 = v25;
    v49 = v27 & 1;
    v50 = v29;
    sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2588BFF50;
    v32 = (v44 + *(v22 + 32));
    v33 = v32[1];
    *(v31 + 32) = *v32;
    *(v31 + 40) = v33;
    *(v31 + 48) = 0x65756C6156;
    *(v31 + 56) = 0xE500000000000000;

    v34 = sub_2588BD9A8();

    v35 = HKUIJoinStringsForAutomationIdentifier();

    if (v35)
    {
      sub_2588BD8A8();

      v36 = v41;
      sub_2588BCFB8();

      sub_2587B1CF8(v30, v25, v27 & 1);

      (*(v39 + 8))(v45, v40);
      v37 = v46;
      sub_25889B00C(v36, v46, &qword_27F95E3B0, MEMORY[0x277CDE470], sub_25889ACCC);
      (*(v42 + 56))(v37, 0, 1, v43);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2588985DC()
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BCDE8();
  v4 = v3;
  v6 = v5;
  sub_2588BD158();
  v7 = sub_2588BCD98();
  v9 = v8;
  v11 = v10;
  sub_2587B1CF8(v2, v4, v6 & 1);

  v12 = v11 & 1;
  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2588BFF50;
  v14 = (v0 + *(type metadata accessor for EditHeightCellView(0) + 32));
  v15 = v14[1];
  *(v13 + 32) = *v14;
  *(v13 + 40) = v15;
  *(v13 + 48) = 6579265;
  *(v13 + 56) = 0xE300000000000000;

  v16 = sub_2588BD9A8();

  v17 = HKUIJoinStringsForAutomationIdentifier();

  if (v17)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v7, v9, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258898840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_25889AED0(0, &qword_27F961218, sub_2588998D0, MEMORY[0x277CE0330]);
  v31[2] = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v31 - v4;
  sub_2588998D0(0);
  v31[3] = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889989C(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v32 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - v12;
  sub_25889ACCC(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  v31[1] = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v31 - v18;
  sub_258897C64();
  v20 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v31 - v22;
  type metadata accessor for EditHeightCellView(0);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
  sub_258890E8C(v23, &qword_27F95D478, v20, sub_25889A568);
  if (v25 == 1)
  {
    sub_2588985DC();
    sub_2588376C4(v17, v5);
    swift_storeEnumTagMultiPayload();
    sub_25889B07C(&qword_27F961220, sub_2588998D0, MEMORY[0x277CE1138]);
    sub_2587DFB50();
    sub_2588BC778();
    sub_25889AF60(v17);
  }

  else
  {
    *v8 = sub_2588BC608();
    *(v8 + 1) = 0;
    v8[16] = 1;
    sub_25889B124(0, &qword_27F961228, sub_258899964, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    sub_258898D88(a1, &v8[*(v26 + 44)]);
    sub_258890D38(v8, v5, sub_2588998D0);
    swift_storeEnumTagMultiPayload();
    sub_25889B07C(&qword_27F961220, sub_2588998D0, MEMORY[0x277CE1138]);
    sub_2587DFB50();
    sub_2588BC778();
    sub_25889B0C4(v8, sub_2588998D0);
  }

  sub_2588376C4(v19, v17);
  v27 = v32;
  sub_258890D38(v13, v32, sub_25889989C);
  v28 = v33;
  sub_2588376C4(v17, v33);
  sub_258899810(0);
  sub_258890D38(v27, v28 + *(v29 + 48), sub_25889989C);
  sub_25889B0C4(v13, sub_25889989C);
  sub_25889AF60(v19);
  sub_25889B0C4(v27, sub_25889989C);
  return sub_25889AF60(v17);
}

uint64_t sub_258898D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EditHeightCellView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2587F9F84(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_2588980D4(&v23 - v12);
  v14 = (a1 + *(v5 + 28));
  v16 = *v14;
  v15 = v14[1];
  sub_258890D38(a1, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditHeightCellView);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_258899E1C(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_258890D38(v13, v11, sub_2587F9F84);
  sub_258890D38(v11, a2, sub_2587F9F84);
  sub_258899998(0);
  v20 = a2 + *(v19 + 48);
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (a2 + *(v19 + 64));
  *v21 = v16;
  v21[1] = v15;
  v21[2] = sub_25889AFD8;
  v21[3] = v18;
  swift_bridgeObjectRetain_n();

  sub_25889B0C4(v13, sub_2587F9F84);

  return sub_25889B0C4(v11, sub_2587F9F84);
}

uint64_t sub_258898FD0(uint64_t (**a1)(void))
{
  if (*a1)
  {
    a1 = (*a1)();
  }

  MEMORY[0x28223BE20](a1);
  sub_2588BD5F8();
  sub_2588BC0D8();
}

uint64_t sub_258899074(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for EditHeightCellView(0) + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  v11[0] = v2;
  v12 = v3;
  v13 = 0;
  sub_2588996F8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2D8();
  v4 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v9 = (*(*(v8 - 8) + 56))(&v11[-v7], 1, 1, v8);
  MEMORY[0x28223BE20](v9);
  sub_258890E1C(&v11[-v7], &v11[-v7], &qword_27F95D478, v4, sub_25889A568);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  sub_2588BD438();
  return sub_258890E8C(&v11[-v7], &qword_27F95D478, v4, sub_25889A568);
}

void sub_258899288(uint64_t a1)
{
  if (!qword_27F961078)
  {
    sub_258899328(255);
    sub_25889AC20(255, &qword_27F95FA10, sub_2587A7B40, MEMORY[0x277CE14A8], MEMORY[0x277CE0468]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961078);
    }
  }
}

void sub_258899328(uint64_t a1)
{
  if (!qword_27F961080)
  {
    sub_258899428(255);
    v3 = v2;
    sub_25889A230(255, &qword_27F9610D0, sub_258899748, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = sub_25889B07C(&qword_27F961120, sub_258899428, MEMORY[0x277CE1138]);
    v7[3] = sub_258899A08();
    v5 = type metadata accessor for MedicalIDAXLayoutView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_27F961080);
    }
  }
}

void sub_258899498(uint64_t a1)
{
  if (!qword_27F961098)
  {
    sub_25889ACCC(255, &qword_27F95E3B0, MEMORY[0x277CDE470]);
    sub_25889952C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F961098);
    }
  }
}

void sub_25889959C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25889B07C(a4, a5, MEMORY[0x277CE14C0]);
    v8 = sub_2588BD368();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258899664(uint64_t a1)
{
  if (!qword_27F9610B8)
  {
    sub_2587F9F84(255);
    sub_2588996F8(255, &qword_27F95FD48, &type metadata for ClearButtonView, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9610B8);
    }
  }
}

void sub_2588996F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258899748(uint64_t a1)
{
  if (!qword_27F9610D8)
  {
    sub_2588997DC(255);
    sub_25889B07C(&qword_27F961118, sub_2588997DC, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9610D8);
    }
  }
}

void sub_258899810(uint64_t a1)
{
  if (!qword_27F9610E8)
  {
    sub_25889ACCC(255, &qword_27F95E3B0, MEMORY[0x277CDE470]);
    sub_25889989C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9610E8);
    }
  }
}

void sub_2588998D0(uint64_t a1)
{
  if (!qword_27F9610F8)
  {
    sub_258899964(255);
    sub_25889B07C(&qword_27F961110, sub_258899964, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9610F8);
    }
  }
}

void sub_258899998(uint64_t a1)
{
  if (!qword_27F961108)
  {
    sub_2587F9F84(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F961108);
    }
  }
}

unint64_t sub_258899A08()
{
  result = qword_27F961128;
  if (!qword_27F961128)
  {
    sub_25889A230(255, &qword_27F9610D0, sub_258899748, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_25889B07C(&qword_27F961130, sub_258899748, MEMORY[0x277CE1198]);
    sub_25889B07C(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961128);
  }

  return result;
}

void sub_258899B2C(uint64_t a1)
{
  if (!qword_27F961138)
  {
    sub_258899C20(255);
    sub_258899288(255);
    sub_2588BBAC8();
    sub_258899CDC();
    sub_25889AA78(&qword_27F95FB38, MEMORY[0x28220C160], MEMORY[0x28220C1C8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961138);
    }
  }
}

void sub_258899C20(uint64_t a1)
{
  if (!qword_27F961140)
  {
    sub_258899288(255);
    sub_2588BBAC8();
    sub_258899CDC();
    sub_25889AA78(&qword_27F95FB38, MEMORY[0x28220C160], MEMORY[0x28220C1C8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961140);
    }
  }
}

unint64_t sub_258899CDC()
{
  result = qword_27F961148;
  if (!qword_27F961148)
  {
    sub_258899288(255);
    sub_25889B07C(&qword_27F961150, sub_258899328, &unk_2588C55E8);
    sub_258899D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961148);
  }

  return result;
}

unint64_t sub_258899D8C()
{
  result = qword_27F95FA28[0];
  if (!qword_27F95FA28[0])
  {
    sub_25889AC20(255, &qword_27F95FA10, sub_2587A7B40, MEMORY[0x277CE14A8], MEMORY[0x277CE0468]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F95FA28);
  }

  return result;
}

uint64_t sub_258899E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditHeightCellView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258899E80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditHeightCellView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2588921B0(v4, a1);
}

void sub_258899F84(uint64_t a1)
{
  if (!qword_27F961158)
  {
    sub_25889A230(255, &qword_27F961160, sub_25889A020, sub_25889A0FC, MEMORY[0x277CE0338]);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961158);
    }
  }
}

void sub_25889A090(uint64_t a1)
{
  if (!qword_27F961178)
  {
    sub_25889A0FC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F961178);
    }
  }
}

void sub_25889A0FC(uint64_t a1)
{
  if (!qword_27F961180)
  {
    sub_25889A1E8(255);
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    sub_25889A830();
    sub_25889A960(&qword_27F9611D8, &qword_27F9611E0, MEMORY[0x28220B550], MEMORY[0x277D84F50]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961180);
    }
  }
}

void sub_25889A230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_25889A2B4(uint64_t a1)
{
  if (!qword_27F961190)
  {
    sub_25889A388(255);
    sub_2588BC318();
    sub_25889B07C(&qword_27F9611C8, sub_25889A388, MEMORY[0x277CDF038]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F961190);
    }
  }
}

void sub_25889A388(uint64_t a1)
{
  if (!qword_27F961198)
  {
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    sub_25889A470(255);
    sub_25889A960(&qword_27F95D490, &qword_27F95D498, MEMORY[0x28220B548], MEMORY[0x277D84F48]);
    sub_25889A72C();
    v1 = sub_2588BD3B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961198);
    }
  }
}

void sub_25889A470(uint64_t a1)
{
  if (!qword_27F9611A0)
  {
    sub_25889A568(255, &qword_27F9611A8, MEMORY[0x277D83940]);
    v1 = MEMORY[0x28220B528];
    sub_258890CC8(255, &qword_27F95D480, MEMORY[0x28220B528]);
    sub_25889A5D8(255);
    sub_25889A6B8();
    sub_25889AC88(&qword_27F95D498, &qword_27F95D480, v1, MEMORY[0x28220B548]);
    v2 = sub_2588BD4D8();
    if (!v3)
    {
      atomic_store(v2, &qword_27F9611A0);
    }
  }
}

void sub_25889A568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258890CC8(255, &qword_27F95D480, MEMORY[0x28220B528]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_25889A5D8(uint64_t a1)
{
  if (!qword_27F9611B0)
  {
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    sub_25889A960(&qword_27F95D490, &qword_27F95D498, MEMORY[0x28220B548], MEMORY[0x277D84F48]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9611B0);
    }
  }
}

unint64_t sub_25889A6B8()
{
  result = qword_27F9611B8;
  if (!qword_27F9611B8)
  {
    sub_25889A568(255, &qword_27F9611A8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9611B8);
  }

  return result;
}

unint64_t sub_25889A72C()
{
  result = qword_27F9611C0;
  if (!qword_27F9611C0)
  {
    sub_25889A470(255);
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    sub_25889A960(&qword_27F95D490, &qword_27F95D498, MEMORY[0x28220B548], MEMORY[0x277D84F48]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9611C0);
  }

  return result;
}

unint64_t sub_25889A830()
{
  result = qword_27F9611D0;
  if (!qword_27F9611D0)
  {
    sub_25889A1E8(255);
    sub_25889A388(255);
    sub_2588BC318();
    sub_25889B07C(&qword_27F9611C8, sub_25889A388, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    sub_25889B07C(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9611D0);
  }

  return result;
}

uint64_t sub_25889A960(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    sub_25889AC88(a2, &qword_27F95D480, MEMORY[0x28220B528], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25889AA08(uint64_t a1)
{
  if (!qword_27F9611F0)
  {
    sub_258899B2C(255);
    sub_258899F84(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9611F0);
    }
  }
}

uint64_t sub_25889AA78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25889AAC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25889AB30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25889AB9C(uint64_t a1)
{
  if (!qword_27F960F98)
  {
    sub_25889AC20(255, &qword_27F960FA0, sub_25888CDE8, MEMORY[0x277D839F8], MEMORY[0x28220BC90]);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960F98);
    }
  }
}

void sub_25889AC20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_25889AC88(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_258890CC8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25889ACCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25889ADA8()
{
  v1 = *(type metadata accessor for EditHeightCellView(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  if (v2)
  {
    v2();
  }

  return sub_258895CA8();
}

void sub_25889AE1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for EditHeightCellView(0);

  sub_258897504(a1, a2);
}

void sub_25889AED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    sub_25889ACCC(255, &qword_27F95E3B0, MEMORY[0x277CDE470]);
    v9 = a4(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25889AF60(uint64_t a1)
{
  sub_25889ACCC(0, &qword_27F95E3B0, MEMORY[0x277CDE470]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25889B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_25889B07C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25889B0C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25889B124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_2588BC0B8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroyTm_29()
{
  v1 = type metadata accessor for EditHeightCellView(0);
  v38 = *(*(v1 - 8) + 80);
  v2 = (v0 + ((v38 + 16) & ~v38));
  if (*v2)
  {
  }

  v39 = v1;
  v3 = &v2[*(v1 + 20)];

  v35 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v36 = v3;
  v4 = &v3[v35[5]];

  v5 = type metadata accessor for MedicalIDData(0);
  v6 = v5[13];
  v7 = sub_2588BB9B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(&v4[v6], 1, v7))
  {
    (*(v8 + 8))(&v4[v6], v7);
  }

  v10 = v5[14];
  if (!v9(&v4[v10], 1, v7))
  {
    (*(v8 + 8))(&v4[v10], v7);
  }

  v11 = &v4[v5[18]];
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_2587C2610(*v11, v12);
  }

  v13 = v5[19];
  v14 = sub_2588BB818();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v4[v13], 1, v14))
  {
    (*(v15 + 8))(&v4[v13], v14);
  }

  v16 = v5[21];
  if (!v9(&v4[v16], 1, v7))
  {
    (*(v8 + 8))(&v4[v16], v7);
  }

  v17 = v35[6];
  v18 = sub_2588BBAC8();
  v19 = *(*(v18 - 8) + 8);
  v19(&v36[v17], v18);
  v20 = &v36[v35[7]];
  v19(v20, v18);

  v21 = &v36[v35[8]];
  v37 = v19;
  v19(v21, v18);
  v22 = type metadata accessor for MedicalIDWeightFormatter(0);

  v23 = &v2[v39[6]];

  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  v25 = *(v24 + 32);
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = *(v28 + 48);
  if (!v29(&v23[v25], 1, v26))
  {
    (*(v28 + 8))(&v23[v25], v27);
  }

  v30 = &v2[v39[11]];
  if (!v29(v30, 1, v27))
  {
    (*(v28 + 8))(v30, v27);
  }

  sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);

  v31 = &v2[v39[12]];
  if (!v29(v31, 1, v27))
  {
    (*(v28 + 8))(v31, v27);
  }

  v32 = &v2[v39[13]];
  if (!v29(v32, 1, v27))
  {
    (*(v28 + 8))(v32, v27);
  }

  v33 = v39[14];
  sub_258890F00(0, &qword_27F95DB20, MEMORY[0x28220C188], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37(&v2[v33], v18);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_25889B7E0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EditHeightCellView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_25889B8C0@<X0>(uint64_t a5@<X8>)
{
  sub_25878F648();

  v6 = sub_2588BCDF8();
  v8 = v7;
  v10 = v9;
  sub_2588BCC08();
  v11 = sub_2588BCDD8();
  v31 = v12;
  v32 = v11;
  v30 = v13;
  v33 = v14;

  sub_2587B1CF8(v6, v8, v10 & 1);

  v15 = sub_2588BCDF8();
  v17 = v16;
  LOBYTE(v8) = v18;
  sub_2588BCBF8();
  v19 = sub_2588BCDD8();
  v21 = v20;
  LOBYTE(v6) = v22;

  sub_2587B1CF8(v15, v17, v8 & 1);

  sub_2588BC8D8();
  v23 = sub_2588BCD98();
  v25 = v24;
  LOBYTE(v8) = v26;
  v28 = v27;
  sub_2587B1CF8(v19, v21, v6 & 1);

  *a5 = v32;
  *(a5 + 8) = v31;
  *(a5 + 16) = v30 & 1;
  *(a5 + 24) = v33;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v23;
  *(a5 + 56) = v25;
  *(a5 + 64) = v8 & 1;
  *(a5 + 72) = v28;
  sub_2587A99B0(v32, v31, v30 & 1);

  sub_2587A99B0(v23, v25, v8 & 1);

  sub_2587B1CF8(v23, v25, v8 & 1);

  sub_2587B1CF8(v32, v31, v30 & 1);
}

double sub_25889BB10@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2588BC608();
  v15 = 0;
  sub_25889B8C0(&v9);
  v18 = v11;
  v19 = v12;
  v16 = v9;
  v17 = v10;
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v21[1] = v10;
  v20 = v13;
  v21[0] = v9;
  sub_25889BC0C(&v16, &v8);
  sub_25889BD2C(v21);
  *&v14[7] = v16;
  *&v14[71] = v20;
  *&v14[55] = v19;
  *&v14[39] = v18;
  *&v14[23] = v17;
  v4 = *&v14[48];
  *(a2 + 49) = *&v14[32];
  *(a2 + 65) = v4;
  *(a2 + 81) = *&v14[64];
  result = *v14;
  v6 = *&v14[16];
  *(a2 + 17) = *v14;
  v7 = v15;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 96) = *&v14[79];
  *(a2 + 33) = v6;
  return result;
}

uint64_t sub_25889BC0C(uint64_t a1, uint64_t a2)
{
  sub_25889BC70(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25889BC70(uint64_t a1)
{
  if (!qword_27F961260)
  {
    sub_25889BCC8();
    v1 = sub_2588BD658();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961260);
    }
  }
}

void sub_25889BCC8()
{
  if (!qword_27F961268)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F961268);
    }
  }
}

uint64_t sub_25889BD2C(uint64_t a1)
{
  sub_25889BC70(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25889BD88(uint64_t a1)
{
  if (!qword_27F961278)
  {
    sub_25889BC70(255);
    sub_25889BE1C(&qword_27F961280, sub_25889BC70, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961278);
    }
  }
}

uint64_t sub_25889BE1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25889BE64(uint64_t a1)
{
  MIUIMedicalIDAccessPoint.analyticsDisplayName.getter(a1);
  v2 = [*(v1 + 16) profileIdentifier];
  [v2 type];

  sub_258863340(0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000015;
  *(inited + 16) = xmmword_2588C61B0;
  *(inited + 40) = 0x80000002588CA830;
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    sub_2588BD8A8();
  }

  v6 = sub_2588BD868();

  *(inited + 48) = v6;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x80000002588CA850;
  v7 = sub_2588BD868();

  *(inited + 72) = v7;
  *(inited + 80) = 0x54656C69666F7270;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 96) = sub_2588BDB18();
  strcpy((inited + 104), "typeOfAccess");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v8 = sub_2588BD868();

  *(inited + 120) = v8;
  sub_2588635D4(inited);
  swift_setDeallocating();
  sub_258863398(0);
  swift_arrayDestroy();
  HKImproveHealthAndActivityAnalyticsAllowed();
  MedicalIDAccessAnalyticsEvent.submit()();
}

uint64_t sub_25889C0C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25889C124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a1;
  v3 = type metadata accessor for BasicAlertModel.Action(0);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2588BD858();
  MEMORY[0x28223BE20](v7 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v8 = qword_27F95DA88;
  v9 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = v8;
  sub_2588BBAB8();
  v11 = v10;
  v12 = sub_2588BD8B8();
  v33 = v13;
  v34 = v12;
  v14 = v32;
  if (!v32)
  {
    goto LABEL_7;
  }

  v15 = objc_opt_self();
  v16 = v14;
  if (![v15 isAppleInternalInstall])
  {

LABEL_7:
    v32 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_2588BDDF8();

  v37 = 0xD000000000000017;
  v38 = 0x80000002588CB5D0;
  swift_getErrorValue();
  v17 = sub_2588BDFD8();
  MEMORY[0x259C8CAA0](v17);

  v18 = v38;
  v32 = v37;
LABEL_8:
  MEMORY[0x28223BE20](v12);
  v19 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v19);
  sub_2588BBAB8();
  v20 = sub_2588BD8B8();
  v22 = v21;
  v23 = v35;
  v24 = *(v35 + 24);
  sub_2588BBDD8();
  v25 = sub_2588BBDE8();
  (*(*(v25 - 8) + 56))(&v6[v24], 0, 1, v25);
  sub_2588BB9E8();
  v26 = &v6[*(v23 + 20)];
  *v26 = v20;
  v26[1] = v22;
  v27 = &v6[*(v23 + 28)];
  sub_25889CF28(0, &qword_27F95D9E8, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D84560]);
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2588C00B0;
  result = sub_2587B2B0C(v6, v29 + v28);
  v31 = v33;
  *a2 = v34;
  a2[1] = v31;
  a2[2] = v32;
  a2[3] = v18;
  a2[5] = 0;
  a2[6] = 0;
  a2[4] = v29;
  return result;
}

uint64_t sub_25889C578@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v64 = type metadata accessor for BasicAlertModel.Action(0);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2588BD858();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v6 = qword_27F95DA88;
  v7 = sub_2588BBAC8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v6;
  sub_2588BBAB8();
  v10 = sub_2588BD8B8();
  v60 = v11;
  v61 = v10;
  v12 = [a1 synchronouslyFetchFirstName];
  if (v12)
  {
    v13 = v12;
    sub_2588BD8A8();

    v14 = sub_2588BD838();
    MEMORY[0x28223BE20](v14 - 8);
    sub_2588BD828();
    sub_2588BD818();
    sub_2588BD808();

    v15 = sub_2588BD818();
    MEMORY[0x28223BE20](v15);
    v16 = sub_2588BD848();
    MEMORY[0x28223BE20](v16);
    v17 = v9;
    sub_2588BBAB8();
    v18 = sub_2588BD8B8();
    v58 = v19;
    v59 = v18;
    v20 = v5;
  }

  else
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v20 = v5;
    v21 = sub_2588BBC98();
    __swift_project_value_buffer(v21, qword_27F969938);
    v22 = sub_2588BBC78();
    v23 = sub_2588BDBD8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v66[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_258790224(0x656C416369736142, 0xEF6C65646F4D7472, v66);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_258790224(0xD000000000000024, 0x80000002588CB660, v66);
      _os_log_impl(&dword_25878B000, v22, v23, "%s %s first name not available", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v25, -1, -1);
      MEMORY[0x259C8DBE0](v24, -1, -1);
    }

    v58 = 0;
    v59 = 0;
  }

  MEMORY[0x28223BE20](v18);
  v56 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v26);
  v57 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v9;
  sub_2588BBAB8();
  v28 = v27;
  v29 = sub_2588BD8B8();
  v31 = v30;
  v32 = v64;
  v33 = *(v64 + 24);
  v34 = sub_2588BBDE8();
  v35 = *(v34 - 8);
  v54 = *(v35 + 56);
  v55 = v35 + 56;
  v36 = v63;
  v54(&v63[v33], 1, 1, v34);
  sub_2588BB9E8();
  v37 = (v36 + v32[5]);
  *v37 = v29;
  v37[1] = v31;
  v38 = (v36 + v32[7]);
  *v38 = sub_25889CD20;
  v38[1] = 0;
  sub_25889CF28(0, &qword_27F95D9E8, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D84560]);
  v53 = *(v62 + 72);
  v39 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2588BFF50;
  v41 = v40 + v39;
  MEMORY[0x28223BE20](v40);
  v42 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v42);
  sub_2588BBAB8();
  v43 = sub_2588BD8B8();
  v45 = v44;
  v46 = v32[6];
  sub_2588BBDD8();
  v54((v41 + v46), 0, 1, v34);
  sub_2588BB9E8();
  v47 = (v41 + v32[5]);
  *v47 = v43;
  v47[1] = v45;
  v48 = (v41 + v32[7]);
  *v48 = 0;
  v48[1] = 0;
  result = sub_2587B2B0C(v36, v41 + v53);
  v50 = v65;
  v51 = v60;
  *v65 = v61;
  v50[1] = v51;
  v52 = v58;
  v50[2] = v59;
  v50[3] = v52;
  v50[5] = 0;
  v50[6] = 0;
  v50[4] = v40;
  return result;
}

uint64_t sub_25889CD20()
{
  sub_25889CF28(0, &qword_27F95F830, MEMORY[0x28220BE10], MEMORY[0x277D83D88]);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  sub_2588BB8D8();
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    MEMORY[0x28223BE20](v3);
    v5 = &v11 - v1;
    sub_25889CF8C(v2, v5);
    v6 = sub_2588BB8E8();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v8 = sub_2588BB8B8();
      (*(v7 + 8))(v5, v6);
    }

    sub_25886369C(MEMORY[0x277D84F90]);
    v9 = sub_2588BD758();

    [v4 openSensitiveURL:v8 withOptions:v9];
  }

  return sub_258830B3C(v2);
}

void sub_25889CF28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25889CF8C(uint64_t a1, uint64_t a2)
{
  sub_25889CF28(0, &qword_27F95F830, MEMORY[0x28220BE10], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25889D040(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v43 = a3;
  v8 = a1;
  v41[1] = a5;
  sub_25889DD74(0, &qword_27F961288, &qword_27F961290, sub_25889D4A0, sub_258837EEC);
  v10 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = v41 - v11;
  sub_25889D72C(0, &qword_27F9612C0, sub_25889D788);
  v14 = v13;
  MEMORY[0x28223BE20](v13);
  v16 = v41 - v15;
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  sub_25889D504(0);
  sub_25889D5CC();

  v18 = v14;
  sub_2588BD318();
  LOBYTE(v8) = sub_2588BCB88();
  sub_2588BBE38();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_25889D72C(0, &qword_27F961290, sub_25889D4A0);
  v28 = &v12[*(v27 + 36)];
  *v28 = v8;
  *(v28 + 1) = v20;
  *(v28 + 2) = v22;
  *(v28 + 3) = v24;
  *(v28 + 4) = v26;
  v28[40] = 0;
  v12[*(v10 + 36)] = 0;
  v29 = swift_allocObject();
  v31 = v42;
  v30 = v43;
  v29[2] = v42;
  v29[3] = a2;
  v29[4] = v30;
  v29[5] = a4;
  sub_25889D844();

  sub_2588BCED8();

  sub_25889DA38(v12);
  v32 = sub_2588BCB88();
  sub_2588BBE38();
  v33 = &v16[*(v18 + 36)];
  *v33 = v32;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  sub_25889E004(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2588BFF50;
  *(v38 + 32) = v31;
  *(v38 + 40) = a2;
  *(v38 + 48) = 0x7475427261656C43;
  *(v38 + 56) = 0xEB000000006E6F74;

  v39 = sub_2588BD9A8();

  v40 = HKUIJoinStringsForAutomationIdentifier();

  if (v40)
  {
    sub_2588BD8A8();

    sub_25889DACC();
    sub_2588BCFB8();

    sub_2587A3FBC(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25889D408@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2588BD258();
  v3 = [objc_opt_self() systemGray3Color];
  v4 = sub_2588BD148();
  v5 = sub_2588BCC08();
  result = swift_getKeyPath(byte_2588C7D98);
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v5;
  return result;
}

void sub_25889D4A0(uint64_t a1)
{
  if (!qword_27F961298)
  {
    sub_25889D504(255);
    sub_25889D5CC();
    v1 = sub_2588BD348();
    if (!v2)
    {
      atomic_store(v1, &qword_27F961298);
    }
  }
}

void sub_25889D504(uint64_t a1)
{
  if (!qword_27F9612A0)
  {
    sub_25889D56C(255);
    sub_2587B1964(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9612A0);
    }
  }
}

void sub_25889D56C(uint64_t a1)
{
  if (!qword_27F9612A8)
  {
    sub_25885987C();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9612A8);
    }
  }
}

unint64_t sub_25889D5CC()
{
  result = qword_27F9612B0;
  if (!qword_27F9612B0)
  {
    sub_25889D504(255);
    sub_25889D67C();
    sub_25889E054(&qword_27F95D9B8, sub_2587B1964, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612B0);
  }

  return result;
}

unint64_t sub_25889D67C()
{
  result = qword_27F9612B8;
  if (!qword_27F9612B8)
  {
    sub_25889D56C(255);
    sub_25889E054(&qword_27F95F8E0, sub_25885987C, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612B8);
  }

  return result;
}

void sub_25889D72C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25889D788(uint64_t a1)
{
  if (!qword_27F9612C8)
  {
    sub_25889DD74(255, &qword_27F961288, &qword_27F961290, sub_25889D4A0, sub_258837EEC);
    sub_25889D844();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9612C8);
    }
  }
}

unint64_t sub_25889D844()
{
  result = qword_27F9612D0;
  if (!qword_27F9612D0)
  {
    sub_25889DD74(255, &qword_27F961288, &qword_27F961290, sub_25889D4A0, sub_258837EEC);
    sub_25889D92C();
    sub_25889E054(qword_27F95FA28, sub_258837EEC, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612D0);
  }

  return result;
}

unint64_t sub_25889D92C()
{
  result = qword_27F9612D8;
  if (!qword_27F9612D8)
  {
    sub_25889D72C(255, &qword_27F961290, sub_25889D4A0);
    sub_25889E054(&qword_27F9612E0, sub_25889D4A0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612D8);
  }

  return result;
}

uint64_t objectdestroyTm_30()
{

  return swift_deallocObject();
}

uint64_t sub_25889DA38(uint64_t a1)
{
  sub_25889DD74(0, &qword_27F961288, &qword_27F961290, sub_25889D4A0, sub_258837EEC);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25889DACC()
{
  result = qword_27F9612E8;
  if (!qword_27F9612E8)
  {
    sub_25889D72C(255, &qword_27F9612C0, sub_25889D788);
    sub_25889DD74(255, &qword_27F961288, &qword_27F961290, sub_25889D4A0, sub_258837EEC);
    sub_25889D844();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612E8);
  }

  return result;
}

void sub_25889DBD0(uint64_t a1@<X8>)
{
  v2 = 0uLL;
  if ((*v1 & 1) != 0 || (*(v1 + 1) & 1) == 0)
  {
    v8 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v3 = a1;
    v4 = sub_2588BC098();
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 32);
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = 256;
    }

    v8 = v7 & 0xFFFFFFFFFFFFFFFELL | v4 & 1;

    v2 = v9;
    a1 = v3;
  }

  *a1 = 0;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v2;
  *(a1 + 40) = v6;
}

unint64_t sub_25889DC8C()
{
  result = qword_27F9612F0;
  if (!qword_27F9612F0)
  {
    sub_25889DD74(255, &qword_27F9612F8, &qword_27F9612C0, sub_25889D788, MEMORY[0x277CDE470]);
    sub_25889DACC();
    sub_25889E054(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9612F0);
  }

  return result;
}

void sub_25889DD74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_25889D72C(255, a3, a4);
    a5(255);
    v7 = sub_2588BC1E8();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25889DE08()
{
  result = qword_27F961300;
  if (!qword_27F961300)
  {
    sub_25889DEE0(255, &qword_27F961308, sub_25889DF44, MEMORY[0x277D83D88]);
    sub_25889E054(qword_27F961328, sub_25889DF44, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961300);
  }

  return result;
}

void sub_25889DEE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25889DF78(uint64_t a1)
{
  if (!qword_27F961318)
  {
    sub_25889E004(255, &qword_27F961320, MEMORY[0x277CE1180], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F961318);
    }
  }
}

void sub_25889E004(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_25889E054(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25889E0A0(uint64_t a1)
{
  type metadata accessor for MedicalIDPregnancyViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_2587B2F78();
      if (v3 <= 0x3F)
      {
        sub_2587CF07C(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_25889F07C(319, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_25889E1C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v63 = sub_2588BB9B8();
  v68 = *(v63 - 8);
  v71 = *(v68 + 84);
  if (v71)
  {
    v3 = v71 - 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3 <= 0x7FFFFFFF)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = v3;
  }

  v66 = *(sub_2588BB818() - 8);
  v5 = *(v66 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= v4)
  {
    v6 = v4;
  }

  v61 = v6;
  if (v6 <= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_2588BBB48() - 8);
  v70 = v8;
  v60 = *(v8 + 84);
  v64 = v7;
  if (v7 <= v60)
  {
    v7 = *(v8 + 84);
  }

  v9 = *(sub_2588BBAC8() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v7 <= v11)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  v13 = *(*(a3 + 16) - 8);
  v62 = v3;
  if (v12 <= v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = v12;
  }

  v15 = *(v13 + 84);
  v16 = *(v68 + 80);
  v17 = *(v66 + 80);
  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  v20 = *(v9 + 80);
  v21 = *(v9 + 64);
  v22 = *(v13 + 80);
  v23 = *(v13 + 64);
  if (v15 <= v14)
  {
    v24 = v14;
  }

  else
  {
    v24 = *(v13 + 84);
  }

  if (v24 <= v4)
  {
    v24 = v4;
  }

  if (v71)
  {
    v25 = *(v68 + 64);
  }

  else
  {
    v25 = *(v68 + 64) + 1;
  }

  v26 = 7;
  if (!v5)
  {
    v26 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v16 | 7;
  v28 = v16 | 7 | v17;
  v29 = v25 + v16;
  v30 = v25 + 7;
  v31 = (v26 + *(v66 + 64) + ((v17 + 16 + ((((v25 + 7 + ((v25 + v16 + ((v16 + 112) & ~v16)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8;
  v32 = v16 + 8;
  v33 = ((v16 + 8 + v31) & ~v16) + v25;
  v34 = v19 + v20;
  v35 = (v19 + v20 + ((v33 + v18 + ((v28 + 16) & ~v28)) & ~v18)) & ~v20;
  v36 = v21 + 7;
  v37 = ((v16 + 8 + ((v21 + 7 + v35) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + v25 + v22;
  v38 = v23 + 7;
  if (a2 <= v24)
  {
    goto LABEL_55;
  }

  v39 = v25 - ((-17 - v16) | v16) - ((-18 - v27 - ((((v38 + (v37 & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v27) - 2;
  v40 = 8 * v39;
  if (v39 <= 3)
  {
    v42 = ((a2 - v24 + ~(-1 << v40)) >> v40) + 1;
    if (HIWORD(v42))
    {
      v41 = *(a1 + v39);
      if (!v41)
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v42 > 0xFF)
    {
      v41 = *(a1 + v39);
      if (!*(a1 + v39))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v42 < 2)
    {
LABEL_55:
      v46 = ~v16;
      if (v14 == v24)
      {
        if ((v14 & 0x80000000) == 0)
        {
          v47 = *(a1 + 1);
LABEL_65:
          if (v47 >= 0xFFFFFFFF)
          {
            LODWORD(v47) = -1;
          }

          return (v47 + 1);
        }

        v53 = (a1 + v28 + 16) & ~v28;
        if (v64 == v14)
        {
          v54 = (v32 + ((((((((((((((((v53 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v46;
          if (v62 < v61)
          {
            if (v5 >= 2)
            {
              v55 = (*(v66 + 48))((v17 + 16 + ((((v30 + ((v29 + v54) & v46)) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
              goto LABEL_74;
            }

            return 0;
          }

          if (v71 < 2)
          {
            return 0;
          }

          v55 = (*(v68 + 48))(v54);
LABEL_74:
          if (v55 >= 2)
          {
            return v55 - 1;
          }

          else
          {
            return 0;
          }
        }

        v57 = (v53 + v18 + v33) & ~v18;
        if (v60 == v14)
        {
          v49 = *(v70 + 48);
          v48 = v57;
          v50 = v60;
          goto LABEL_60;
        }

        v58 = (v34 + v57) & ~v20;
        if (v11 == v14)
        {
          v59 = *(v10 + 48);

          return v59(v58);
        }

        v56 = v36 + v58;
      }

      else
      {
        v48 = (a1 + v37) & ~v22;
        if (v15 == v24)
        {
          v49 = *(*(*(a3 + 16) - 8) + 48);
          v50 = v15;
LABEL_60:

          return v49(v48, v50);
        }

        v52 = ((v38 + v48) & 0xFFFFFFFFFFFFFFF8);
        if ((v24 & 0x80000000) == 0)
        {
          v47 = *v52;
          goto LABEL_65;
        }

        v56 = ((v27 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v27) + 15;
      }

      v55 = (*(v68 + 48))((v32 + (v56 & 0xFFFFFFFFFFFFFFF8)) & v46, v71, v63);
      goto LABEL_74;
    }
  }

  v41 = *(a1 + v39);
  if (!*(a1 + v39))
  {
    goto LABEL_55;
  }

LABEL_42:
  v43 = (v41 - 1) << v40;
  if (v39 > 3)
  {
    v43 = 0;
  }

  if (v39)
  {
    if (v39 <= 3)
    {
      v44 = v39;
    }

    else
    {
      v44 = 4;
    }

    if (v44 > 2)
    {
      if (v44 == 3)
      {
        v45 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v45 = *a1;
      }
    }

    else if (v44 == 1)
    {
      v45 = *a1;
    }

    else
    {
      v45 = *a1;
    }
  }

  else
  {
    v45 = 0;
  }

  return v24 + (v45 | v43) + 1;
}

void sub_25889E868(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v67 = sub_2588BB9B8();
  v4 = *(v67 - 8);
  v81 = v4;
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v66 = sub_2588BB818();
  v8 = *(v66 - 8);
  v80 = v8;
  v75 = *(v8 + 84);
  v9 = v75 - 1;
  if (!v75)
  {
    v9 = 0;
  }

  if (v9 <= v7)
  {
    v9 = v7;
  }

  v69 = v9;
  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v65 = sub_2588BBB48();
  v11 = *(v65 - 8);
  v79 = v11;
  v68 = *(v11 + 84);
  v72 = v10;
  if (v10 <= v68)
  {
    v10 = *(v11 + 84);
  }

  v12 = sub_2588BBAC8();
  v13 = 0;
  v14 = *(v12 - 8);
  v15 = *(v14 + 84);
  if (v10 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v10;
  }

  v71 = v6;
  if (v16 <= v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = v16;
  }

  v74 = *(a4 + 16);
  v18 = *(v74 - 8);
  v19 = *(v18 + 84);
  v20 = *(v4 + 80);
  v21 = *(v8 + 80);
  v22 = *(v11 + 80);
  v23 = *(v11 + 64);
  v24 = *(v14 + 80);
  v25 = *(*(v12 - 8) + 64);
  v26 = *(v18 + 80);
  v27 = *(v18 + 64);
  if (v19 <= v17)
  {
    v28 = v17;
  }

  else
  {
    v28 = *(v18 + 84);
  }

  v70 = v7;
  if (v28 <= v7)
  {
    v29 = v7;
  }

  else
  {
    v29 = v28;
  }

  if (v5)
  {
    v30 = *(v4 + 64);
  }

  else
  {
    v30 = *(v4 + 64) + 1;
  }

  v31 = v20 | 7;
  v32 = v20 | 7 | v21;
  v33 = v30 + v20;
  if (v75)
  {
    v34 = *(v8 + 64);
  }

  else
  {
    v34 = *(v8 + 64) + 1;
  }

  v35 = v20 + 8;
  v36 = ((v20 + 8 + ((v34 + ((v21 + 16 + ((((v30 + 7 + ((v30 + v20 + ((v20 + 112) & ~v20)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + v30;
  v37 = v25 + 7;
  v38 = ((v20 + 8 + ((v25 + 7 + ((v23 + v24 + ((v36 + v22 + ((v32 + 16) & ~v32)) & ~v22)) & ~v24)) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + v30 + v26;
  v39 = v27 + 7;
  v40 = ((v20 + 16) & ~v20) + v30;
  v41 = ((v31 + 17 + ((((v27 + 7 + (v38 & ~v26)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v31) + v40;
  if (a3 > v29)
  {
    if (v41 <= 3)
    {
      v42 = ((a3 - v29 + ~(-1 << (8 * v41))) >> (8 * v41)) + 1;
      if (HIWORD(v42))
      {
        v13 = 4;
      }

      else
      {
        if (v42 < 0x100)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        if (v42 >= 2)
        {
          v13 = v43;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v29 < a2)
  {
    v44 = ~v29 + a2;
    v45 = v13;
    if (v41 >= 4)
    {
      bzero(a1, v41);
      *a1 = v44;
      v46 = 1;
      if (v45 > 1)
      {
        goto LABEL_48;
      }

      goto LABEL_79;
    }

    v46 = (v44 >> (8 * v41)) + 1;
    if (v41)
    {
      v47 = v44 & ~(-1 << (8 * v41));
      bzero(a1, v41);
      if (v41 != 3)
      {
        if (v41 == 2)
        {
          *a1 = v47;
          if (v45 > 1)
          {
            goto LABEL_48;
          }
        }

        else
        {
          *a1 = v44;
          if (v45 > 1)
          {
LABEL_48:
            if (v45 == 2)
            {
              *(a1 + v41) = v46;
            }

            else
            {
              *(a1 + v41) = v46;
            }

            return;
          }
        }

LABEL_79:
        if (v45)
        {
          *(a1 + v41) = v46;
        }

        return;
      }

      *a1 = v47;
      *(a1 + 2) = BYTE2(v47);
    }

    if (v45 > 1)
    {
      goto LABEL_48;
    }

    goto LABEL_79;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v41) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_62;
    }

    *(a1 + v41) = 0;
  }

  else if (v13)
  {
    *(a1 + v41) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_62;
  }

  if (!a2)
  {
    return;
  }

LABEL_62:
  v48 = ~v20;
  if (v17 != v29)
  {
    v49 = (a1 + v38) & ~v26;
    if (v19 == v29)
    {
      v50 = *(v18 + 56);
      v51 = a2;
      v52 = v19;
      v53 = v74;
LABEL_119:

      v50(v49, v51, v52, v53);
      return;
    }

    v54 = ((v39 + v49) & 0xFFFFFFFFFFFFFFF8);
    if ((v29 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *v54 = a2 & 0x7FFFFFFF;
        v54[1] = 0;
      }

      else
      {
        *v54 = a2 - 1;
      }

      return;
    }

    v56 = (v31 + 17 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v31;
    if (v70 < a2)
    {
      if (v40 <= 3)
      {
        v57 = ~(-1 << (8 * v40));
      }

      else
      {
        v57 = -1;
      }

      if (!v40)
      {
        return;
      }

      v58 = v57 & (~v70 + a2);
      if (v40 <= 3)
      {
        v59 = v40;
      }

      else
      {
        v59 = 4;
      }

      v60 = v56;
      v30 = v40;
LABEL_106:
      bzero(v60, v30);
      if (v59 > 2)
      {
        if (v59 == 3)
        {
          *v56 = v58;
          *(v56 + 2) = BYTE2(v58);
        }

        else
        {
          *v56 = v58;
        }
      }

      else if (v59 == 1)
      {
        *v56 = v58;
      }

      else
      {
        *v56 = v58;
      }

      return;
    }

    v50 = *(v81 + 56);
    v49 = (v35 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8)) & v48;
    v51 = a2 + 1;
LABEL_118:
    v52 = v5;
    v53 = v67;
    goto LABEL_119;
  }

  if ((v17 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v55 = (a1 + v32 + 16) & ~v32;
  if (v72 == v17)
  {
    v56 = (v35 + ((((((((((((((((v55 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v48;
    if (v71 < v69)
    {
      v50 = *(v80 + 56);
      v49 = (v21 + 16 + ((((v30 + 7 + ((v33 + v56) & v48)) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8)) & ~v21;
      v51 = a2 + 1;
      v52 = v75;
      v53 = v66;
      goto LABEL_119;
    }

    if (v71 < a2)
    {
      goto LABEL_98;
    }

LABEL_117:
    v50 = *(v81 + 56);
    v51 = a2 + 1;
    v49 = v56;
    goto LABEL_118;
  }

  v61 = (v55 + v22 + v36) & ~v22;
  if (v68 == v17)
  {
    v50 = *(v79 + 56);
    v49 = v61;
    v51 = a2;
    v52 = v68;
    v53 = v65;
    goto LABEL_119;
  }

  v63 = (v23 + v24 + v61) & ~v24;
  if (v15 != v17)
  {
    v56 = (v35 + ((v37 + v63) & 0xFFFFFFFFFFFFFFF8)) & v48;
    if (v71 < a2)
    {
LABEL_98:
      if (v30 <= 3)
      {
        v62 = ~(-1 << (8 * v30));
      }

      else
      {
        v62 = -1;
      }

      if (!v30)
      {
        return;
      }

      v58 = v62 & (~v71 + a2);
      if (v30 <= 3)
      {
        v59 = v30;
      }

      else
      {
        v59 = 4;
      }

      v60 = v56;
      goto LABEL_106;
    }

    goto LABEL_117;
  }

  v64 = *(v14 + 56);

  v64(v63, a2);
}

void sub_25889F07C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25889F124@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_2588BDCE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_25889F190(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v7 = v3;
  v8 = v4;
  v9 = v2;
  sub_2587CF07C(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](&v6);
  return v6;
}

uint64_t sub_25889F208()
{
  sub_2587CF07C(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  sub_2588BD458();
  return v1;
}

uint64_t sub_25889F284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  sub_2588A0310(255);
  v6 = *(a1 + 16);
  sub_2588BDCE8();
  swift_getTupleTypeMetadata2();
  v7 = sub_2588BD658();
  v51 = v7;
  sub_25889F07C(255, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView, MEMORY[0x277D83D88]);
  v9 = v8;
  v52 = v8;
  WitnessTable = swift_getWitnessTable();
  v55 = WitnessTable;
  v11 = sub_2587D68A0();
  v54 = v11;
  v53 = sub_2588A03D0();
  *&v72 = v7;
  *(&v72 + 1) = &type metadata for MedicalIDEditSectionHeaderView;
  *&v73 = v9;
  *(&v73 + 1) = WitnessTable;
  *&v74 = v11;
  *(&v74 + 1) = v53;
  v12 = type metadata accessor for EditingScrollView(255, &v72);
  v57 = v12;
  v59 = swift_getWitnessTable();
  *&v72 = v12;
  *(&v72 + 1) = MEMORY[0x277D839B0];
  *&v73 = v59;
  *(&v73 + 1) = MEMORY[0x277D839C8];
  v60 = MEMORY[0x277CE0E40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v61 = OpaqueTypeMetadata2;
  v62 = v14;
  v15 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v56 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v58 = &v43 - v17;
  v18 = v4;
  v20 = v4 + 16;
  v19 = *(v4 + 16);
  v19(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v66 = *(v4 + 80);
  v21 = (v66 + 32) & ~v66;
  v22 = swift_allocObject();
  v50 = v22;
  v67 = *(a1 + 24);
  v23 = v67;
  *(v22 + 16) = v6;
  *(v22 + 24) = v23;
  v24 = *(v18 + 32);
  v64 = v18 + 32;
  v65 = v24;
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24(v22 + v21, v44, a1);
  v46 = v2;
  v48 = v19;
  v49 = v20;
  v19(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v47 = v5;
  v25 = swift_allocObject();
  v45 = v25;
  v26 = v6;
  *(v25 + 16) = v6;
  v27 = v67;
  *(v25 + 24) = v67;
  v28 = v44;
  v65(v25 + v21, v44, a1);
  v19(v28, v2, a1);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v27;
  v30 = v65;
  v65(v29 + v21, v28, a1);
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_258840494(sub_2588A04A8, v50, sub_2588A04C0, v45, sub_2588A054C, v29, &v72);
  v55 = *(&v72 + 1);
  v69 = v72;
  v70 = v73;
  v71 = v74;
  v31 = v46;
  v68 = sub_25889F190(a1) & 1;
  v48(v28, v31, a1);
  v32 = swift_allocObject();
  v33 = v67;
  *(v32 + 16) = v26;
  *(v32 + 24) = v33;
  v30(v32 + v21, v28, a1);
  v34 = swift_checkMetadataState();
  v35 = v56;
  v36 = MEMORY[0x277D839B0];
  v37 = v59;
  v38 = MEMORY[0x277D839C8];
  sub_2588BD118();

  *&v69 = v34;
  *(&v69 + 1) = v36;
  *&v70 = v37;
  *(&v70 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v58;
  v40 = v61;
  sub_2587DCF7C();
  v41 = *(v62 + 8);
  v41(v35, v40);
  sub_2587DCF7C();
  return (v41)(v39, v40);
}

void sub_25889F930(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a3;
  v56 = a4;
  v54 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v46 - v8;
  v9 = sub_2588BDCE8();
  v52 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v46 - v13;
  sub_2588A0378();
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588A0310(0);
  v51 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v53 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v57 = &v46 - v20;
  v21 = sub_2588BD858();
  MEMORY[0x28223BE20](v21 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v22 = qword_27F95DA88;
  v23 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v23 - 8);
  v24 = v22;
  sub_2588BBAB8();
  v63 = sub_2588BD8B8();
  v64 = v25;
  v27 = type metadata accessor for SharedPregnancyEditView(0, a2, v58, v26);
  sub_25889F208();
  sub_25878F648();
  v28 = MEMORY[0x277D837D0];
  sub_2588BD3D8();
  sub_2587CF07C(0, &qword_280C0DDD0, v28, MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2588BFF50;
  v30 = a1[1];
  *(v29 + 32) = *a1;
  *(v29 + 40) = v30;
  *(v29 + 48) = 0xD000000000000017;
  *(v29 + 56) = 0x80000002588CB7B0;

  v31 = sub_2588BD9A8();

  v32 = HKUIJoinStringsForAutomationIdentifier();

  if (v32)
  {
    sub_2588BD8A8();

    sub_2588A0C60(&qword_27F9605C0, sub_2588A0378, MEMORY[0x277CDF068]);
    v33 = v50;
    sub_2588BCFB8();

    (*(v49 + 8))(v16, v33);
    if (sub_25889F190(v27))
    {
      v34 = v47;
      v35 = v58;
      sub_2587DCF7C();
      v36 = v48;
      sub_2587DCF7C();
      v37 = v54;
      (*(v54 + 8))(v34, a2);
      (*(v37 + 32))(v12, v36, a2);
      v38 = 0;
    }

    else
    {
      v38 = 1;
      v35 = v58;
      v37 = v54;
    }

    (*(v37 + 56))(v12, v38, 1, a2);
    v39 = v52;
    v40 = *(v52 + 16);
    v41 = v55;
    v40(v55, v12, v9);
    v42 = *(v39 + 8);
    v42(v12, v9);
    v43 = v57;
    v44 = v53;
    sub_2588A0B18(v57, v53, sub_2588A0310);
    v63 = v44;
    v40(v12, v41, v9);
    v64 = v12;
    v62[0] = v51;
    v62[1] = v9;
    v45 = sub_2588A0B80();
    v59 = v35;
    v60 = v45;
    WitnessTable = swift_getWitnessTable();
    sub_25881C7E0(&v63, 2uLL, v62);
    v42(v41, v9);
    sub_2588A0CA8(v43);
    v42(v12, v9);
    sub_2588A0CA8(v44);
  }

  else
  {
    __break(1u);
  }
}

double sub_2588A0018@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for SharedPregnancyEditView(0, a1, a2, a3);
  sub_2588A006C(v9);
  v5 = v9[1];
  v6 = v11;
  v7 = v12;
  *a4 = v9[0];
  *(a4 + 8) = v5;
  result = *&v10;
  *(a4 + 16) = v10;
  *(a4 + 32) = v6;
  *(a4 + 40) = v7;
  return result;
}

uint64_t sub_2588A006C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F95D0D0 != -1)
  {
    swift_once();
  }

  v3 = xmmword_27F9697F8;
  v4 = qword_27F95D0D8;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_27F969808;
  v5 = unk_27F969810;
  v7 = *v1;
  v8 = v1[1];
  *a1 = v3;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

uint64_t sub_2588A0144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MedicalIDPregnancyStatusLabelView(0);
  v16 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SharedPregnancyEditView(0, a2, a3, v11);
  if (sub_25889F190(v12))
  {
    sub_2588A0B18(a1, v10, type metadata accessor for MedicalIDPregnancyViewModel);
    sub_25889F07C(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    sub_2588BD458();
    v10[*(v8 + 20)] = 1;
    sub_258854F80(v10, a4);
    return (*(v16 + 56))(a4, 0, 1, v8);
  }

  else
  {
    v14 = *(v16 + 56);

    return v14(a4, 1, 1, v8);
  }
}

void sub_2588A0310(uint64_t a1)
{
  if (!qword_27F9613B0)
  {
    sub_2588A0378();
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9613B0);
    }
  }
}

void sub_2588A0378()
{
  if (!qword_27F960518)
  {
    v0 = sub_2588BD3E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960518);
    }
  }
}