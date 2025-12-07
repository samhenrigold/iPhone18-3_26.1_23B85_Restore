void sub_24F4A13A8(uint64_t a1)
{
  sub_24E79CAE4();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F4A1430(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24F4A15B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
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

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 9] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[8] = -a2;
  }
}

uint64_t sub_24F4A186C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v12 = a2;
  sub_24F923658();
  sub_24F4A1910(a1, v12, a3, a4, a5, a6, x8_0);
  return sub_24F4A1F90(v16);
}

uint64_t sub_24F4A1910@<X0>(uint64_t a1@<X0>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x5_0@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v27 = a3;
  v14 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v26[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v21 + 16))(v20, v23, v22, v18);
  (*(v14 + 16))(v16, a1, a5);

  return sub_24F4A1FE4(v20, v16, v27, v24, a4, a5, MEMORY[0x277CE1428], a7, x5_0, a6, MEMORY[0x277CE1410]);
}

uint64_t sub_24F4A1AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = sub_24F927748();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F924848();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v32 = *(a1 + 16);
  v42 = v32;
  v43 = MEMORY[0x277CE04F8];
  v44 = MEMORY[0x277CE1428];
  v45 = v7;
  v46 = MEMORY[0x277CE04E8];
  v47 = MEMORY[0x277CE1410];
  v8 = sub_24F925098();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  sub_24F9242D8();
  v11 = sub_24F924038();
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v41 = sub_24F9251B8();
  v17 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_24F92BDC8();
    v28 = v5;
    v18 = sub_24F9257A8();
    v29 = a1;
    v19 = v18;
    sub_24F921FD8();

    v20 = v30;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v17, 0);
    (*(v31 + 8))(v20, v28);
  }

  sub_24F4A186C(&v41, 1, v32, MEMORY[0x277CE04F8], v7, MEMORY[0x277CE04E8], v10);
  v21 = v35;
  v22 = v36;
  v23 = v38;
  (*(v36 + 104))(v35, *MEMORY[0x277CE13B8], v38);
  WitnessTable = swift_getWitnessTable();
  sub_24F926B48();
  (*(v22 + 8))(v21, v23);
  (*(v33 + 8))(v10, v8);
  v39 = WitnessTable;
  v40 = MEMORY[0x277CDFC30];
  swift_getWitnessTable();
  sub_24E7896B8();
  v25 = *(v34 + 8);
  v25(v13, v11);
  sub_24E7896B8();
  return (v25)(v16, v11);
}

uint64_t sub_24F4A1FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v54 = a5;
  LODWORD(v52) = a4;
  v50 = a2;
  v44 = a9;
  v57 = a11;
  v58 = a1;
  v48 = a8;
  v51 = *(a8 - 8);
  v55 = a12;
  MEMORY[0x28223BE20](a1);
  v49 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24F924E08();
  MEMORY[0x28223BE20](v56);
  v53 = &v38 - v16;
  v38 = a7;
  v47 = *(a7 - 8);
  MEMORY[0x28223BE20](v17);
  v45 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = a10;
  v41 = *(swift_getAssociatedConformanceWitness() + 8);
  v20 = sub_24F923AC8();
  MEMORY[0x28223BE20](v20);
  WitnessTable = swift_getWitnessTable();
  v59 = v20;
  v60 = a7;
  v61 = WitnessTable;
  v62 = v57;
  v46 = sub_24F9234B8();
  v21 = MEMORY[0x28223BE20](v46);
  v40 = &v38 - v22;
  v23 = a6;
  v24 = *(a6 - 8);
  v25 = *(v24 + 16);
  v39 = v23;
  v25(a9, v58, v23, v21);
  sub_24F923F58();
  sub_24F923AB8();
  v26 = v47;
  v27 = v50;
  v28 = v38;
  (*(v47 + 16))(v45, v50, v38);
  v29 = v28;
  v30 = v57;
  sub_24F9234A8();
  v31 = v51;
  v32 = v48;
  v33 = v54;
  (*(v51 + 16))(v49, v54, v48);
  sub_24F927618();
  v52 = v34;
  (*(v31 + 8))(v33, v32);
  (*(v26 + 8))(v27, v28);
  v35 = v39;
  (*(v24 + 8))(v58, v39);
  v36 = v55;
  sub_24F924DF8();
  v59 = v35;
  v60 = v29;
  v61 = v32;
  v62 = v43;
  v63 = v30;
  v64 = v36;
  sub_24F925098();
  return sub_24F923FD8();
}

uint64_t sub_24F4A24E4(void *a1, __n128 a2)
{
  sub_24F925098();
  sub_24F9242D8();
  sub_24F924038();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

BOOL sub_24F4A25AC()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();
  if (*(v0[2] + 16))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_24F91FD88();

  swift_beginAccess();
  if (*(v0[3] + 16))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0[4] + 16) != 0;
}

double sub_24F4A2720()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();

  return result;
}

double sub_24F4A27D8()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();

  return result;
}

unint64_t sub_24F4A2890()
{
  v1 = v0;
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();
  v2 = *(v0 + 32);

  v3 = sub_24E6086DC(MEMORY[0x277D84F90]);
  v4 = v2 + 56;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v47 = v2;

  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
LABEL_4:
  v10 = v8;
  v11 = v3;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v8 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(v47 + 48) + ((v8 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    swift_getKeyPath();

    sub_24F91FD88();

    v16 = *(v1 + 40);
    v3 = v11;
    if (*(v16 + 16))
    {

      v17 = sub_24E76D644(v15, v14);
      if (v18)
      {
        v22 = (*(v16 + 56) + 16 * v17);
        v23 = v22[1];
        v46 = *v22;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v3;
        v24 = sub_24E76D644(v15, v14);
        v26 = v3;
        v27 = v24;
        v28 = *(v26 + 16);
        v29 = (v25 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_31;
        }

        v44 = v23;
        if (*(v26 + 24) >= v30)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v33 = v48;
            if (v25)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v35 = v25;
            sub_24E8AF124();
            v36 = v35;
            v33 = v48;
            if (v36)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          v43 = v25;
          sub_24E89B77C(v30, isUniquelyReferenced_nonNull_native);
          v31 = sub_24E76D644(v15, v14);
          if ((v43 & 1) != (v32 & 1))
          {
            goto LABEL_33;
          }

          v27 = v31;
          v33 = v48;
          if (v43)
          {
LABEL_25:
            v34 = (v33[7] + 16 * v27);
            *v34 = v46;
            v34[1] = v44;

            v3 = v33;
            goto LABEL_4;
          }
        }

        v33[(v27 >> 6) + 8] |= 1 << v27;
        v37 = (v33[6] + 16 * v27);
        *v37 = v15;
        v37[1] = v14;
        v38 = (v33[7] + 16 * v27);
        *v38 = v46;
        v38[1] = v44;
        v39 = v33[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_32;
        }

        v3 = v33;
        v33[2] = v41;
        goto LABEL_4;
      }
    }

    v19 = sub_24E76D644(v15, v14);
    if (v20)
    {
      v21 = v19;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24E8AF124();
        v3 = v11;
      }

      sub_24EB53354(v21, v3);

      goto LABEL_4;
    }

    v10 = v8;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v8 >= v9)
    {

      return v3;
    }

    v7 = *(v4 + 8 * v8);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

double sub_24F4A2CAC()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();

  return result;
}

uint64_t sub_24F4A2D64(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EBAE06C(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
    sub_24F91FD78();
  }
}

double sub_24F4A2EAC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 32);

  return result;
}

uint64_t sub_24F4A2F98(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EDD4478(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
    sub_24F91FD78();
  }
}

uint64_t sub_24F4A30E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

double sub_24F4A3148()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();

  return result;
}

double sub_24F4A3200@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 40);

  return result;
}

uint64_t sub_24F4A32C0(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EBACE54(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
    sub_24F91FD78();
  }
}

uint64_t sub_24F4A3408(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t sub_24F4A3470()
{
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();
}

uint64_t sub_24F4A3514@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  *a2 = *(v3 + 56);
}

double sub_24F4A35C0(uint64_t a1)
{
  if (!*(v1 + 56))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
    sub_24F91FD78();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_24F92B938();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 56) = a1;

  return result;
}

uint64_t sub_24F4A3748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227AD0, &unk_24F9FE720);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F4A3814, 0, 0);
}

uint64_t sub_24F4A3814()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227AD8, &qword_24F97FEF0);
  sub_24F92B8F8();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_24F4A390C;
  v2 = *(v0 + 64);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v2);
}

uint64_t sub_24F4A390C()
{

  return MEMORY[0x2822009F8](sub_24F4A3A08, 0, 0);
}

uint64_t sub_24F4A3A08()
{
  v1 = v0[5];
  if (v1)
  {
    if (swift_weakLoadStrong())
    {
      sub_24F4A3B48(v1);
    }

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_24F4A390C;
    v3 = v0[8];

    return MEMORY[0x2822003E8](v0 + 5, 0, 0, v3);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }
}

void sub_24F4A3B48(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v34 = v3;
  v33 = v7;
  while (v6)
  {
LABEL_11:
    v11 = (v8 << 10) | (16 * __clz(__rbit64(v6)));
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = v15[1];
    v36 = *v15;
    swift_getKeyPath();
    sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
    swift_bridgeObjectRetain_n();
    v37 = v16;
    swift_bridgeObjectRetain_n();
    sub_24F91FD88();

    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    v20 = sub_24E76D644(v14, v13);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v18;
        if (v19)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_24E8AF124();
        v27 = v18;
        if (v24)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_24E89B77C(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_24E76D644(v14, v13);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_26;
      }

      v20 = v25;
      v27 = v18;
      if (v24)
      {
LABEL_4:
        v9 = (v27[7] + 16 * v20);
        *v9 = v36;
        v9[1] = v37;

        goto LABEL_5;
      }
    }

    v27[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v27[6] + 16 * v20);
    *v28 = v14;
    v28[1] = v13;
    v29 = (v27[7] + 16 * v20);
    *v29 = v36;
    v29[1] = v37;
    v30 = v27[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_25;
    }

    v27[2] = v32;
LABEL_5:
    v6 &= v6 - 1;
    *(v2 + 40) = v27;
    swift_endAccess();
    swift_getKeyPath();
    sub_24F91FD98();

    v3 = v34;
    v7 = v33;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_24F92CF88();
  __break(1u);
}

uint64_t sub_24F4A3EA0()
{
  swift_getKeyPath();
  v1 = OBJC_IVAR____TtC12GameStoreKit24GameActivityPlayersDraft___observationRegistrar;
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  if (*(v0 + 56))
  {

    sub_24F92B958();
  }

  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

double sub_24F4A3FE0()
{
  sub_24F4A3EA0();

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata accessor for GameActivityPlayersDraft(uint64_t a1)
{
  result = qword_27F245050;
  if (!qword_27F245050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F4A408C(uint64_t a1)
{
  result = sub_24F91FDC8();
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

uint64_t sub_24F4A4148(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  swift_getKeyPath();
  v14 = v1;
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();
  v5 = *(*(v1 + 16) + 16);

  if (v5 && (, sub_24E76D644(v3, v2), v7 = v6, , (v7 & 1) != 0))
  {

    swift_getKeyPath();
    sub_24F91FD88();

    v13[0] = v1;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24E98F6B0(v3, v2, v13);
    v8 = v13[0];
    v9 = v13[1];
    swift_endAccess();
    sub_24EAD7A84(v8, v9);
    swift_getKeyPath();
    sub_24F91FD98();

    return 0;
  }

  else
  {
    swift_getKeyPath();

    sub_24F91FD88();

    v13[0] = v1;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_24E81D970(v3, v2, v4, v3, v2, isUniquelyReferenced_nonNull_native);

    *(v1 + 16) = v12;
    swift_endAccess();
    swift_getKeyPath();
    sub_24F91FD98();

    return 1;
  }
}

uint64_t sub_24F4A443C(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v7 = OBJC_IVAR____TtC12GameStoreKit24GameActivityPlayersDraft___observationRegistrar;
  v36[0] = v1;
  v8 = sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();
  v10 = *a1;
  v9 = a1[1];
  if (*(*(v1 + 24) + 16) && (, sub_24E76D644(v10, v9), v12 = v11, , (v12 & 1) != 0))
  {
    swift_getKeyPath();
    v36[0] = v1;
    sub_24F91FD88();

    v36[0] = v1;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24E98F238(v10, v9, v36);
    swift_endAccess();
    sub_24F4A58D8(v36);
    v35 = v1;
    swift_getKeyPath();
    sub_24F91FD98();

    return 0;
  }

  else
  {
    sub_24E70D960(a1, v6);
    v14 = v6[1];
    v31 = *v6;

    v28 = sub_24F37B534();
    v16 = v15;

    v32 = v10;
    v33 = v9;
    v17 = v6[2];
    v18 = v6[3];
    v19 = v4[11];
    v20 = v4[12];
    v29 = v7;
    v30 = v8;
    v21 = *(v6 + v19);
    v22 = *(v6 + v20);
    v23 = v4[21];
    v24 = *(v6 + v4[20]);
    v25 = *(v6 + v23);

    sub_24E71BF38(v6);
    v36[0] = v31;
    v36[1] = v14;
    v36[2] = v28;
    v36[3] = v16;
    v36[4] = v17;
    v36[5] = v18;
    v36[6] = v21;
    v36[7] = v22;
    v37 = v24;
    v38 = v25;
    swift_getKeyPath();
    v35 = v2;
    sub_24F91FD88();

    v35 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_24E81CDA0(v36, v32, v33, isUniquelyReferenced_nonNull_native);

    *(v2 + 24) = v34;
    swift_endAccess();
    v35 = v2;
    swift_getKeyPath();
    sub_24F91FD98();

    return 1;
  }
}

BOOL sub_24F4A47F0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v38 - v5;
  swift_getKeyPath();
  v45 = v1;
  sub_24F4A5880(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();
  v6 = *(v1 + 32);

  v7 = [a1 identifier];
  v8 = sub_24F92B0D8();
  v10 = v9;

  LODWORD(v7) = sub_24F4D36F8(v8, v10, v6);

  v40 = v7;
  if ((v7 & 1) == 0)
  {
    v16 = [a1 identifier];
    v17 = sub_24F92B0D8();
    v19 = v18;

    swift_getKeyPath();
    v44 = v2;
    sub_24F91FD88();

    v44 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24ED7C5F0(&v43, v17, v19);
    swift_endAccess();

    v44 = v2;
    swift_getKeyPath();
    sub_24F91FD98();

    v20 = [a1 identifier];
    v21 = sub_24F92B0D8();
    v23 = v22;

    swift_getKeyPath();
    v44 = v2;
    sub_24F91FD88();

    swift_beginAccess();
    if (*(*(v2 + 40) + 16))
    {

      sub_24E76D644(v21, v23);
      v25 = v24;

      if (v25)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v26 = [a1 identifier];
    v39 = sub_24F92B0D8();
    v28 = v27;

    v29 = sub_24EEA5788();
    v31 = v30;
    swift_getKeyPath();
    v43 = v2;
    sub_24F91FD88();

    v43 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    sub_24E81D324(v29, v31, v39, v28, isUniquelyReferenced_nonNull_native);

    *(v2 + 40) = v42;
    swift_endAccess();
    v43 = v2;
    swift_getKeyPath();
    sub_24F91FD98();

LABEL_8:
    v15 = &unk_24F9FE740;
    goto LABEL_9;
  }

  v11 = [a1 identifier];
  v12 = sub_24F92B0D8();
  v14 = v13;

  swift_getKeyPath();
  v44 = v2;
  sub_24F91FD88();

  v44 = v2;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24F7A57A0(v12, v14);
  swift_endAccess();

  v44 = v2;
  swift_getKeyPath();
  sub_24F91FD98();

  v15 = &unk_24F9FE750;
LABEL_9:
  v33 = sub_24F92B858();
  v34 = v41;
  (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = a1;

  v36 = a1;
  sub_24EA998B8(0, 0, v34, v15, v35);

  return (v40 & 1) == 0;
}

uint64_t sub_24F4A4E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24F4A4E2C, 0, 0);
}

uint64_t sub_24F4A4E2C()
{
  v1 = v0[3];
  v2 = *(v0[2] + 48);
  v0[4] = v2;
  v3 = [v1 identifier];
  v4 = sub_24F92B0D8();
  v6 = v5;

  v0[5] = v4;
  v0[6] = v6;

  return MEMORY[0x2822009F8](sub_24F4A4ECC, v2, 0);
}

uint64_t sub_24F4A4ECC()
{
  sub_24EAD3B00(v0[5], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F4A4F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x2822009F8](sub_24F4A4F5C, 0, 0);
}

uint64_t sub_24F4A4F5C()
{
  v1 = v0[8];
  v2 = *(v0[7] + 48);
  v0[9] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = xmmword_24F941C80;
  *(inited + 32) = v1;
  v4 = v1;

  return MEMORY[0x2822009F8](sub_24F4A5008, v2, 0);
}

uint64_t sub_24F4A5008()
{
  sub_24EAD51D4(*(v0 + 80));
  swift_setDeallocating();
  swift_arrayDestroy();
  v1 = *(v0 + 8);

  return v1();
}

void sub_24F4A5170()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

void *sub_24F4A51AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v53 - v5;
  type metadata accessor for IMessageReachabilityManager(0);
  swift_allocObject();
  sub_24EAD30CC();
  v1[6] = v7;
  v1[7] = 0;
  sub_24F91FDB8();
  if (!a1)
  {
    v45 = MEMORY[0x277D84F90];
    v2[2] = sub_24E609EB8(MEMORY[0x277D84F90]);
    v2[3] = sub_24E60B05C(v45);
    v44 = sub_24E6086DC(v45);
    goto LABEL_19;
  }

  v55 = v6;
  swift_getKeyPath();
  *&v60 = a1;
  v8 = sub_24F4A5880(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);

  sub_24F91FD88();

  v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite);

  v56 = v2;
  v2[2] = v9;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
  *&v60 = a1;

  v53[0] = v10;
  v53[1] = v8;
  sub_24F91FD88();

  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite);

  v54 = a1;

  v12 = sub_24E60B05C(MEMORY[0x277D84F90]);
  v13 = *(v11 + 16);
  if (!v13)
  {
LABEL_17:

    v2 = v56;
    v56[3] = v12;
    swift_getKeyPath();
    v43 = v54;
    *&v60 = v54;

    sub_24F91FD88();

    v44 = *(v43 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite);

    v6 = v55;
LABEL_19:
    v2[5] = v44;

    v2[4] = sub_24F461F6C(v46);
    v47 = sub_24F92B858();
    (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = v2[6];
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v49;
    v50[5] = v48;

    v51 = sub_24EA998B8(0, 0, v6, &unk_24F9FE6A0, v50);
    sub_24F4A35C0(v51);
    return v2;
  }

  v14 = 0;
  v15 = (v11 + 32);
  while (v14 < *(v11 + 16))
  {
    v60 = *v15;
    v23 = v15[1];
    v24 = v15[2];
    v25 = v15[3];
    v64 = *(v15 + 32);
    v63 = v25;
    v61 = v23;
    v62 = v24;
    v26 = v60;
    sub_24E627A14(&v60, v58);
    sub_24E627A14(&v60, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v12;
    v28 = sub_24E76D644(v26, *(&v26 + 1));
    v30 = v12[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_21;
    }

    v34 = v29;
    if (v12[3] < v33)
    {
      sub_24E89AA98(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_24E76D644(v26, *(&v26 + 1));
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_23;
      }

LABEL_12:
      if (v34)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v42 = v28;
    sub_24E8AEA70();
    v28 = v42;
    if (v34)
    {
LABEL_4:
      v12 = v57;
      v16 = v57[7] + 72 * v28;
      v58[0] = *v16;
      v17 = *(v16 + 16);
      v18 = *(v16 + 32);
      v19 = *(v16 + 48);
      v59 = *(v16 + 64);
      v58[2] = v18;
      v58[3] = v19;
      v58[1] = v17;
      v20 = v63;
      v22 = v61;
      v21 = v62;
      *(v16 + 64) = v64;
      *(v16 + 32) = v21;
      *(v16 + 48) = v20;
      *(v16 + 16) = v22;
      *v16 = v60;
      sub_24E627A70(v58);
      sub_24E627A70(&v60);
      goto LABEL_5;
    }

LABEL_13:
    v12 = v57;
    v57[(v28 >> 6) + 8] |= 1 << v28;
    *(v12[6] + 16 * v28) = v26;
    v36 = v12[7] + 72 * v28;
    v37 = v64;
    v38 = v63;
    v39 = v62;
    *(v36 + 16) = v61;
    *(v36 + 32) = v39;
    *(v36 + 48) = v38;
    *(v36 + 64) = v37;
    *v36 = v60;

    sub_24E627A70(&v60);
    v40 = v12[2];
    v32 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v32)
    {
      goto LABEL_22;
    }

    v12[2] = v41;
LABEL_5:
    ++v14;
    v15 = (v15 + 72);
    if (v13 == v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F4A5738()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F4A5770()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F4A57B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F4A3748(a1, v4, v5, v7, v6);
}

uint64_t sub_24F4A5880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4A58D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245060, &qword_24F9FE730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F4A5944(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F4A4F3C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_37Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F4A5A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F4A4E0C(a1, v4, v5, v7, v6);
}

uint64_t SocialUserGroup.init(user:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SocialUserGroup(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for PlayerAvatar.Overlay(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v47 = v11 + 56;
  v48 = v12;
  v12(&v7[v9], 1, 1, v10);
  v13 = &v7[v4[10]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = -1;
  v14 = v4[11];
  v15 = type metadata accessor for CallProviderConversationHandleSet(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v49 = v14;
  v45 = v16 + 56;
  v46 = v17;
  v17(&v7[v14], 1, 1, v15);
  v18 = a1[5];
  if (v18)
  {
    v41 = v10;
    v42 = v9;
    v43 = v5;
    v44 = a2;
    v19 = a1[4];
    v20 = &v7[v4[8]];
    v21 = &v7[v4[9]];
    v22 = a1[1];
    v23 = &v7[v4[6]];
    *v23 = *a1;
    *(v23 + 1) = v22;
    v24 = &v7[v4[7]];
    *v24 = v19;
    *(v24 + 1) = v18;
    v25 = a1[7];
    *v20 = a1[6];
    *(v20 + 1) = v25;
    *v21 = 0;
    *(v21 + 1) = 0;
    v26 = *v13;
    v27 = *(v13 + 1);
    v28 = v13[16];

    sub_24E640000(v26, v27, v28);
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = -1;
    v29 = v49;
    sub_24E601704(&v7[v49], &unk_27F23E170, &unk_24F9EBA60);
    v46(&v7[v29], 1, 1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213850, &unk_24F93B3D0);
    v30 = *(type metadata accessor for SocialUser(0) - 8);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_24F93DE60;
    sub_24F4A5FC8(a1, v32 + v31, type metadata accessor for SocialUser);
    *&v7[v4[12]] = v32;
    *v7 = xmmword_24F9406F0;
    v33 = a1[3];

    sub_24F4A6030(a1, type metadata accessor for SocialUser);
    if (v33)
    {

      v34 = v42;
      sub_24E601704(&v7[v42], &qword_27F22DF80, &unk_24F942E50);
      v35 = v41;
      swift_storeEnumTagMultiPayload();
      v36 = 0;
      v37 = v43;
    }

    else
    {
      v34 = v42;
      sub_24E601704(&v7[v42], &qword_27F22DF80, &unk_24F942E50);
      v36 = 1;
      v37 = v43;
      v35 = v41;
    }

    v48(&v7[v34], v36, 1, v35);
    v39 = v44;
    sub_24F4A5FC8(v7, v44, type metadata accessor for SocialUserGroup);
    (*(v37 + 56))(v39, 0, 1, v4);
    return sub_24F4A6030(v7, type metadata accessor for SocialUserGroup);
  }

  else
  {
    sub_24F4A6030(a1, type metadata accessor for SocialUser);
    sub_24E601704(&v7[v9], &qword_27F22DF80, &unk_24F942E50);
    sub_24E640000(*v13, *(v13 + 1), v13[16]);
    sub_24E601704(&v7[v49], &unk_27F23E170, &unk_24F9EBA60);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }
}

uint64_t type metadata accessor for SocialUserGroup(uint64_t a1)
{
  result = qword_27F245100;
  if (!qword_27F245100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F4A5FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4A6030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double SocialUserGroup.integrationIdentifier.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24E6AD46C(v2, v3);
}

uint64_t SocialUserGroup.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for SocialUserGroup(0) + 24));

  return v1;
}

uint64_t SocialUserGroup.primaryTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SocialUserGroup(0) + 28));

  return v1;
}

uint64_t SocialUserGroup.primaryTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SocialUserGroup(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SocialUserGroup.secondaryTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SocialUserGroup(0) + 32));

  return v1;
}

uint64_t SocialUserGroup.secondaryTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SocialUserGroup(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SocialUserGroup.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SocialUserGroup(0) + 36));

  return v1;
}

uint64_t SocialUserGroup.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SocialUserGroup(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SocialUserGroup.lockupAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SocialUserGroup(0) + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_24ECECA74(v4, v5, v6);
}

uint64_t SocialUserGroup.lockupAccessory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for SocialUserGroup(0) + 40);
  result = sub_24E640000(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

double SocialUserGroup.users.getter()
{
  type metadata accessor for SocialUserGroup(0);

  return result;
}

uint64_t SocialUserGroup.users.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SocialUserGroup(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

unint64_t SocialUserGroup.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F95AD70;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x800000024FA75A90;
  v3 = *v1;
  v4 = v1[1];
  v37 = *v1;
  v36 = v4;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245068, &qword_24F9FE758);
  v5 = sub_24F4A6BCC(&qword_27F245070, &qword_27F245068, &qword_24F9FE758, sub_24E94B390);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 80) = v5;
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA75AB0;
  v6 = type metadata accessor for SocialUserGroup(0);
  v7 = v6[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  *(inited + 136) = sub_24F4A6B18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E60169C(v1 + v7, boxed_opaque_existential_1, &qword_27F22DF80, &unk_24F942E50);
  *(inited + 144) = 25705;
  *(inited + 152) = 0xE200000000000000;
  v9 = (v1 + v6[6]);
  v10 = *v9;
  v11 = v9[1];
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D22580];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v13;
  *(inited + 160) = v10;
  *(inited + 168) = v11;
  strcpy((inited + 200), "primaryTitle");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v14 = (v1 + v6[7]);
  v15 = *v14;
  v35 = v14[1];
  *(inited + 240) = v12;
  *(inited + 248) = v13;
  *(inited + 216) = v15;
  *(inited + 224) = v35;
  strcpy((inited + 256), "secondaryTitle");
  *(inited + 271) = -18;
  v16 = (v1 + v6[8]);
  v17 = *v16;
  v18 = v16[1];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 296) = v19;
  v20 = sub_24E605DB4();
  *(inited + 272) = v17;
  *(inited + 280) = v18;
  *(inited + 304) = v20;
  *(inited + 312) = 0x656C746974627573;
  *(inited + 320) = 0xE800000000000000;
  v21 = (v1 + v6[9]);
  v22 = *v21;
  v23 = v21[1];
  *(inited + 352) = v19;
  *(inited + 360) = v20;
  *(inited + 328) = v22;
  *(inited + 336) = v23;
  *(inited + 368) = 0x634170756B636F6CLL;
  *(inited + 376) = 0xEF79726F73736563;
  v24 = v1 + v6[10];
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v19) = v24[16];
  v34 = v19;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245088, &qword_24F9FE760);
  v27 = sub_24F4A6BCC(&qword_27F245090, &qword_27F245088, &qword_24F9FE760, sub_24F4A6C48);
  *(inited + 384) = v25;
  *(inited + 392) = v26;
  *(inited + 400) = v19;
  *(inited + 416) = v27;
  *(inited + 424) = 0x6553656C646E6168;
  *(inited + 432) = 0xE900000000000074;
  v28 = v6[11];
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  *(inited + 472) = sub_24F141A10();
  v29 = __swift_allocate_boxed_opaque_existential_1((inited + 440));
  sub_24E60169C(v1 + v28, v29, &unk_27F23E170, &unk_24F9EBA60);
  *(inited + 480) = 0x7372657375;
  *(inited + 488) = 0xE500000000000000;
  v30 = *(v1 + v6[12]);
  *(inited + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2450A0, &qword_24F9FE768);
  *(inited + 528) = sub_24F4A6C9C(&qword_27F2450A8, &qword_27F2450B0, &protocol conformance descriptor for SocialUser, MEMORY[0x277D22590]);
  *(inited + 496) = v30;
  sub_24E6AD46C(v37, v36);

  sub_24ECECA74(v25, v26, v34);

  v31 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v32 = sub_24E80FFAC(v31);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v32;
  return result;
}

unint64_t sub_24F4A6B18()
{
  result = qword_27F245078;
  if (!qword_27F245078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DF80, &unk_24F942E50);
    sub_24F4A7BAC(&qword_27F245080, type metadata accessor for PlayerAvatar.Overlay, &protocol conformance descriptor for PlayerAvatar.Overlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245078);
  }

  return result;
}

uint64_t sub_24F4A6BCC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F4A6C48()
{
  result = qword_27F245098;
  if (!qword_27F245098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245098);
  }

  return result;
}

uint64_t sub_24F4A6C9C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2450A0, &qword_24F9FE768);
    sub_24F4A7BAC(a2, type metadata accessor for SocialUser, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F4A6D38(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v1 = 25705;
    if (a1 != 2)
    {
      v1 = 0x547972616D697270;
    }

    v3 = 0xD000000000000015;
    if (a1)
    {
      v3 = 0xD000000000000012;
    }

    v4 = a1 <= 1u;
  }

  else
  {
    v1 = 0x634170756B636F6CLL;
    v2 = 0x6553656C646E6168;
    if (a1 != 7)
    {
      v2 = 0x7372657375;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7261646E6F636573;
    if (a1 != 4)
    {
      v3 = 0x656C746974627573;
    }

    v4 = a1 <= 5u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24F4A6E74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F4A81CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4A6E9C(uint64_t a1)
{
  v2 = sub_24F4A7B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4A6ED8(uint64_t a1)
{
  v2 = sub_24F4A7B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialUserGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2450B8, &qword_24F9FE770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4A7B58();
  sub_24F92D128();
  v9 = v3[1];
  v16 = *v3;
  v17 = v9;
  v19 = 0;
  sub_24E6AD46C(v16, v9);
  sub_24E94B538();
  sub_24F92CCF8();
  if (v2)
  {
    sub_24EEA5774(v16, v17);
  }

  else
  {
    sub_24EEA5774(v16, v17);
    v10 = type metadata accessor for SocialUserGroup(0);
    LOBYTE(v16) = 1;
    type metadata accessor for PlayerAvatar.Overlay(0);
    sub_24F4A7BAC(&qword_27F2450C8, type metadata accessor for PlayerAvatar.Overlay, &protocol conformance descriptor for PlayerAvatar.Overlay);
    sub_24F92CCF8();
    LOBYTE(v16) = 2;
    sub_24F92CD08();
    LOBYTE(v16) = 3;
    sub_24F92CD08();
    LOBYTE(v16) = 4;
    sub_24F92CCA8();
    LOBYTE(v16) = 5;
    sub_24F92CCA8();
    v11 = v3 + *(v10 + 40);
    v12 = *(v11 + 1);
    v13 = v11[16];
    v16 = *v11;
    v17 = v12;
    v18 = v13;
    v19 = 6;
    sub_24ECECA74(v16, v12, v13);
    sub_24ECECA8C();
    sub_24F92CCF8();
    sub_24E640000(v16, v17, v18);
    LOBYTE(v16) = 7;
    type metadata accessor for CallProviderConversationHandleSet(0);
    sub_24F4A7BAC(&qword_27F23A0C0, type metadata accessor for CallProviderConversationHandleSet, &protocol conformance descriptor for CallProviderConversationHandleSet);
    sub_24F92CCF8();
    v16 = *(v3 + *(v10 + 48));
    v19 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2450A0, &qword_24F9FE768);
    sub_24F4A6C9C(&qword_27F2450D0, &qword_27F2450D8, &protocol conformance descriptor for SocialUser, MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SocialUserGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2450E0, &qword_24F9FE778);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for SocialUserGroup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for PlayerAvatar.Overlay(0);
  v16 = *(*(v15 - 8) + 56);
  v55 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = &v12[v10[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = v17;
  v17[16] = -1;
  v19 = v10[11];
  v20 = type metadata accessor for CallProviderConversationHandleSet(0);
  v21 = *(*(v20 - 8) + 56);
  v22 = v19;
  v53 = v12;
  v21(&v12[v19], 1, 1, v20);
  v23 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F4A7B58();
  v51 = v9;
  v24 = v52;
  sub_24F92D108();
  if (v24)
  {
    v25 = v18;
    v28 = v53;
    __swift_destroy_boxed_opaque_existential_1(v54);
    sub_24E601704(v28 + v55, &qword_27F22DF80, &unk_24F942E50);

    sub_24E640000(*v25, *(v25 + 1), v25[16]);
    return sub_24E601704(v28 + v22, &unk_27F23E170, &unk_24F9EBA60);
  }

  else
  {
    v26 = v48;
    v52 = v20;
    v58 = 0;
    sub_24E94B6E8();
    sub_24F92CC18();
    v27 = v18;
    v30 = v53;
    *v53 = v56;
    LOBYTE(v56) = 1;
    sub_24F4A7BAC(&qword_27F2450E8, type metadata accessor for PlayerAvatar.Overlay, &protocol conformance descriptor for PlayerAvatar.Overlay);
    sub_24F92CC18();
    sub_24E61DA68(v26, v30 + v55, &qword_27F22DF80, &unk_24F942E50);
    LOBYTE(v56) = 2;
    v31 = sub_24F92CC28();
    v32 = (v30 + v10[6]);
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v56) = 3;
    v34 = sub_24F92CC28();
    v35 = (v30 + v10[7]);
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v56) = 4;
    v37 = sub_24F92CBC8();
    v38 = (v30 + v10[8]);
    *v38 = v37;
    v38[1] = v39;
    LOBYTE(v56) = 5;
    v40 = sub_24F92CBC8();
    v41 = (v30 + v10[9]);
    *v41 = v40;
    v41[1] = v42;
    v48 = v42;
    v58 = 6;
    sub_24ECED500();
    sub_24F92CC18();
    v43 = v56;
    v44 = v57;
    sub_24E640000(*v27, *(v27 + 1), v27[16]);
    *v27 = v43;
    v27[16] = v44;
    LOBYTE(v56) = 7;
    sub_24F4A7BAC(&qword_27F23A0D0, type metadata accessor for CallProviderConversationHandleSet, &protocol conformance descriptor for CallProviderConversationHandleSet);
    v45 = v47;
    sub_24F92CC18();
    sub_24E61DA68(v45, v30 + v22, &unk_27F23E170, &unk_24F9EBA60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2450A0, &qword_24F9FE768);
    v58 = 8;
    sub_24F4A6C9C(&qword_27F2450F0, &qword_27F2450F8, &protocol conformance descriptor for SocialUser, MEMORY[0x277D83978]);
    sub_24F92CC68();
    (*(v49 + 8))(v51, v50);
    *(v30 + v10[12]) = v56;
    sub_24F4A5FC8(v30, v46, type metadata accessor for SocialUserGroup);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return sub_24F4A6030(v30, type metadata accessor for SocialUserGroup);
  }
}

unint64_t sub_24F4A7B58()
{
  result = qword_27F2450C0;
  if (!qword_27F2450C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2450C0);
  }

  return result;
}

uint64_t sub_24F4A7BAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4A7C08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24F4A7D60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24F4A7EA4(uint64_t a1)
{
  sub_24E66ECF0(319, &qword_27F245110, &type metadata for SocialIntegrationIdentifier);
  if (v1 <= 0x3F)
  {
    sub_24F4A8050(319, &qword_27F245118, type metadata accessor for PlayerAvatar.Overlay, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F22DA58, &type metadata for LockupAccessory);
        if (v4 <= 0x3F)
        {
          sub_24F4A8050(319, &qword_27F23A0E8, type metadata accessor for CallProviderConversationHandleSet, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24F4A8050(319, &qword_27F245120, type metadata accessor for SocialUser, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24F4A8050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F4A80C8()
{
  result = qword_27F245128;
  if (!qword_27F245128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245128);
  }

  return result;
}

unint64_t sub_24F4A8120()
{
  result = qword_27F245130;
  if (!qword_27F245130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245130);
  }

  return result;
}

unint64_t sub_24F4A8178()
{
  result = qword_27F245138;
  if (!qword_27F245138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245138);
  }

  return result;
}

uint64_t sub_24F4A81CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x800000024FA75A90 == a2;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA75AB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x547972616D697270 && a2 == 0xEC000000656C7469 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEE00656C74695479 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x634170756B636F6CLL && a2 == 0xEF79726F73736563 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6553656C646E6168 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7372657375 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_24F4A84C8@<X0>(uint64_t a1@<X8>)
{
  v249 = a1;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245140, &qword_24F9FE990);
  v218 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v230 = &v186 - v2;
  v229 = sub_24F91F4A8();
  v217 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v213 = &v186 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v228 = &v186 - v5;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245498, &qword_24F9FEEF0);
  MEMORY[0x28223BE20](v237);
  v239 = (&v186 - v6);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454A0, &qword_24F9FEEF8);
  MEMORY[0x28223BE20](v226);
  v8 = &v186 - v7;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454A8, &qword_24F9FEF00);
  MEMORY[0x28223BE20](v238);
  v227 = &v186 - v9;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454B0, &qword_24F9FEF08);
  MEMORY[0x28223BE20](v250);
  v240 = &v186 - v10;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454B8, &qword_24F9FEF10);
  MEMORY[0x28223BE20](v234);
  v235 = (&v186 - v11);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454C0, &qword_24F9FEF18);
  MEMORY[0x28223BE20](v245);
  v236 = &v186 - v12;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454C8, &qword_24F9FEF20);
  MEMORY[0x28223BE20](v219);
  v220 = (&v186 - v13);
  v14 = type metadata accessor for PageToolbarItemView(0);
  v15 = v14 - 8;
  v192 = *(v14 - 8);
  v16 = *(v192 + 64);
  MEMORY[0x28223BE20](v14);
  v193 = &v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v17 - 8);
  v195 = &v186 - v18;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454D0, &qword_24F9FEF28);
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v202 = &v186 - v19;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454D8, &qword_24F9FEF30);
  v203 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v201 = &v186 - v20;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454E0, &qword_24F9FEF38);
  MEMORY[0x28223BE20](v215);
  v199 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v206 = &v186 - v23;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454E8, &qword_24F9FEF40);
  MEMORY[0x28223BE20](v233);
  v231 = &v186 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v25 - 8);
  v188 = &v186 - v26;
  v187 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v187);
  v189 = (&v186 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454F0, &qword_24F9FEF48);
  MEMORY[0x28223BE20](v246);
  v247 = &v186 - v28;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2454F8, &qword_24F9FEF50);
  MEMORY[0x28223BE20](v241);
  v243 = &v186 - v29;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245500, &qword_24F9FEF58);
  MEMORY[0x28223BE20](v222);
  v223 = &v186 - v30;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245508, &qword_24F9FEF60);
  MEMORY[0x28223BE20](v242);
  v224 = &v186 - v31;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245510, &qword_24F9FEF68);
  MEMORY[0x28223BE20](v248);
  v244 = &v186 - v32;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245518, &qword_24F9FEF70);
  MEMORY[0x28223BE20](v210);
  v211 = (&v186 - v33);
  v198 = sub_24F929888();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v196 = &v186 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24F9289E8();
  v190 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v186 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  MEMORY[0x28223BE20](v216);
  v194 = &v186 - v38;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451A8, &qword_24F9FEA00);
  v204 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v200 = &v186 - v39;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245520, &qword_24F9FEF78);
  MEMORY[0x28223BE20](v209);
  v191 = &v186 - v40;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245528, &unk_24F9FEF80);
  MEMORY[0x28223BE20](v214);
  v212 = &v186 - v41;
  v42 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v186 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v225 = (&v186 - v46);
  v47 = type metadata accessor for PageToolbarItem.Appearance(0);
  MEMORY[0x28223BE20](v47);
  v49 = &v186 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v1 + *(v15 + 44);
  v51 = type metadata accessor for PageToolbarItem(0);
  sub_24F4ADCF8(&v50[*(v51 + 20)], v49, type metadata accessor for PageToolbarItem.Appearance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v74 = v247;
      if (EnumCaseMultiPayload == 4)
      {
        v75 = v217;
        v76 = v228;
        v77 = v229;
        (*(v217 + 32))(v228, v49, v229);
        (*(v75 + 16))(v213, v76, v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245220, &qword_24F9FEA20);
        sub_24F4AEBC4();
        v78 = v230;
        sub_24F9277C8();
        v79 = v218;
        v80 = v232;
        (*(v218 + 16))(v8, v78, v232);
        swift_storeEnumTagMultiPayload();
        sub_24F4B2AB0();
        sub_24E602068(&qword_27F245210, &qword_27F245140, &qword_24F9FE990, MEMORY[0x277CDF188]);
        v81 = v227;
        sub_24F924E28();
        sub_24E60169C(v81, v239, &qword_27F2454A8, &qword_24F9FEF00);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374A0, &unk_24F9BF760);
        sub_24F4B29F8();
        sub_24F02E9B8();
        v82 = v240;
        sub_24F924E28();
        sub_24E601704(v81, &qword_27F2454A8, &qword_24F9FEF00);
        sub_24E60169C(v82, v74, &qword_27F2454B0, &qword_24F9FEF08);
        swift_storeEnumTagMultiPayload();
        sub_24F4B2B04();
        sub_24F4B3164();
        sub_24F924E28();
        sub_24E601704(v82, &qword_27F2454B0, &qword_24F9FEF08);
        (*(v79 + 8))(v230, v80);
        return (*(v75 + 8))(v228, v229);
      }

      sub_24F927618();
      sub_24F9238C8();
      v119 = BYTE8(v258);
      v120 = v259;
      v121 = BYTE8(v259);
      v122 = v239;
      *v239 = v258;
      *(v122 + 8) = v119;
      *(v122 + 2) = v120;
      *(v122 + 24) = v121;
      *(v122 + 2) = v260;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374A0, &unk_24F9BF760);
      sub_24F4B29F8();
      sub_24F02E9B8();
      v123 = v240;
      sub_24F924E28();
      v105 = &qword_27F2454B0;
      v106 = &qword_24F9FEF08;
      sub_24E60169C(v123, v74, &qword_27F2454B0, &qword_24F9FEF08);
      swift_storeEnumTagMultiPayload();
      sub_24F4B2B04();
      sub_24F4B3164();
      sub_24F924E28();
      v124 = v123;
      goto LABEL_22;
    }

    v101 = *(v49 + 1);
    v102 = *(v49 + 4);
    *v8 = *v49;
    *(v8 + 1) = v101;
    *(v8 + 1) = *(v49 + 1);
    *(v8 + 4) = v102;
    swift_storeEnumTagMultiPayload();
    sub_24F4B2AB0();
    sub_24E602068(&qword_27F245210, &qword_27F245140, &qword_24F9FE990, MEMORY[0x277CDF188]);
    v103 = v227;
    sub_24F924E28();
    sub_24E60169C(v103, v239, &qword_27F2454A8, &qword_24F9FEF00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374A0, &unk_24F9BF760);
    sub_24F4B29F8();
    sub_24F02E9B8();
    v104 = v240;
    sub_24F924E28();
    sub_24E601704(v103, &qword_27F2454A8, &qword_24F9FEF00);
    v105 = &qword_27F2454B0;
    v106 = &qword_24F9FEF08;
    sub_24E60169C(v104, v247, &qword_27F2454B0, &qword_24F9FEF08);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B04();
    sub_24F4B3164();
LABEL_21:
    sub_24F924E28();
    v124 = v104;
LABEL_22:
    v128 = v105;
    v129 = v106;
    return sub_24E601704(v124, v128, v129);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v53 = v1;
      v55 = *v49;
      v54 = *(v49 + 1);
      v57 = *(v49 + 2);
      v56 = *(v49 + 3);
      LODWORD(v240) = v49[32];
      v58 = v49[33];
      v59 = *(v51 + 24);
      sub_24E60169C(&v50[v59], &v258, qword_27F24EC90, &unk_24F93C1D0);
      v60 = *(&v259 + 1);
      sub_24E601704(&v258, qword_27F21B590, &unk_24F93BE30);
      if (v60)
      {
        v61 = sub_24F9232F8();
        v62 = *(*(v61 - 8) + 56);
        LODWORD(v239) = v58;
        v62(v195, 1, 1, v61);
        sub_24E60169C(&v50[v59], &v258, qword_27F24EC90, &unk_24F93C1D0);
        v63 = v53;
        v64 = v193;
        sub_24F4ADCF8(v63, v193, type metadata accessor for PageToolbarItemView);
        v65 = (*(v192 + 80) + 49) & ~*(v192 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = v55;
        *(v66 + 24) = v54;
        *(v66 + 32) = v57;
        *(v66 + 40) = v56;
        *(v66 + 48) = v240;
        sub_24F4AF5E0(v64, v66 + v65, type metadata accessor for PageToolbarItemView);
        *(v66 + v65 + v16) = v239;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455A8, &qword_24F9FEFC8);
        v67 = sub_24F4B3038();
        *&v255 = &type metadata for ButtonContent;
        *(&v255 + 1) = v67;
        swift_getOpaqueTypeConformance2();
        v68 = v202;
        v69 = v239;
        sub_24F921788();
        if (v69 == 2)
        {
          *(&v256 + 1) = sub_24F9271D8();
          v257 = sub_24F4B3EF0(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v255);
          v71 = *MEMORY[0x277CE0118];
          v72 = sub_24F924B38();
          (*(*(v72 - 8) + 104))(boxed_opaque_existential_1, v71, v72);
          v73 = v231;
        }

        else
        {
          if (v69)
          {
            *(&v256 + 1) = MEMORY[0x277CE1120];
            v257 = sub_24E63E454();
          }

          else
          {
            *(&v256 + 1) = sub_24F9271D8();
            v257 = sub_24F4B3EF0(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
            v173 = __swift_allocate_boxed_opaque_existential_1(&v255);
            v174 = *MEMORY[0x277CE0118];
            v175 = sub_24F924B38();
            (*(*(v175 - 8) + 104))(v173, v174, v175);
          }

          v73 = v231;
          sub_24E612C80(&v255, &v258);
          sub_24E612C80(&v258, &v255);
        }

        sub_24E612C80(&v255, &v260 + 8);
        v258 = 0u;
        v259 = 0u;
        *&v260 = 0;
        sub_24E602068(&qword_27F245578, &qword_27F2454D0, &qword_24F9FEF28, MEMORY[0x277D7EB00]);
        sub_24E620DE8();
        v176 = v201;
        v177 = v208;
        sub_24F926178();
        sub_24E6A56E8(&v258);
        (*(v207 + 8))(v68, v177);
        v178 = sub_24F926D18();
        KeyPath = swift_getKeyPath();
        v180 = v199;
        (*(v203 + 32))(v199, v176, v205);
        v181 = &v180[*(v215 + 36)];
        *v181 = KeyPath;
        v181[1] = v178;
        v182 = v180;
        v183 = v206;
        sub_24E6009C8(v182, v206, &qword_27F2454E0, &qword_24F9FEF38);
        sub_24E60169C(v183, v220, &qword_27F2454E0, &qword_24F9FEF38);
        swift_storeEnumTagMultiPayload();
        sub_24F4B2EFC();
        sub_24F924E28();
        sub_24E601704(v183, &qword_27F2454E0, &qword_24F9FEF38);
        v152 = v247;
      }

      else
      {
        v150 = *v53;
        v151 = v220;
        *v220 = v55;
        v151[1] = v54;
        v151[2] = v57;
        v151[3] = v56;
        *(v151 + 32) = v240;
        v151[5] = v150;
        *(v151 + 48) = v58;
        swift_storeEnumTagMultiPayload();
        sub_24F4B2EFC();
        sub_24F4B3038();
        v73 = v231;
        sub_24F924E28();
        v152 = v247;
      }

      sub_24E60169C(v73, v235, &qword_27F2454E8, &qword_24F9FEF40);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245590, &qword_24F9FEF98);
      sub_24F4B2E70();
      sub_24F4B308C();
      v184 = v236;
      sub_24F924E28();
      sub_24E60169C(v184, v243, &qword_27F2454C0, &qword_24F9FEF18);
      swift_storeEnumTagMultiPayload();
      sub_24F4B2B90();
      sub_24F4B2DE4();
      v185 = v244;
      sub_24F924E28();
      sub_24E601704(v184, &qword_27F2454C0, &qword_24F9FEF18);
      sub_24E60169C(v185, v152, &qword_27F245510, &qword_24F9FEF68);
      swift_storeEnumTagMultiPayload();
      sub_24F4B2B04();
      sub_24F4B3164();
      sub_24F924E28();
      sub_24E601704(v185, &qword_27F245510, &qword_24F9FEF68);
      v124 = v231;
      v128 = &qword_27F2454E8;
      v129 = &qword_24F9FEF40;
      return sub_24E601704(v124, v128, v129);
    }

    v107 = *v49;
    v108 = *(v49 + 1);
    v109 = v49[16];
    v110 = *(v49 + 3);
    v111 = *(v49 + 4);
    v112 = v49[40];
    v113 = v1[2];
    swift_getKeyPath();
    *&v258 = v113;
    sub_24F4B3EF0(&qword_27F21FE50, type metadata accessor for ArcadeSubscription, &protocol conformance descriptor for ArcadeSubscription);
    sub_24F91FD88();

    if (*(v113 + 16) > 1u)
    {
      sub_24E63FFA4(v107, v108);
      sub_24E63FFA4(v110, v111);
      v107 = 0;
      v108 = 0;
      v110 = 0;
      v111 = 0;
      v114 = 0;
      v115 = 0;
      v117 = 0;
      v116 = 0;
      v118 = 0uLL;
    }

    else
    {
      v114 = *v1;
      LOBYTE(v258) = v109;
      LOBYTE(v255) = v112;
      v115 = 0x800000024FA75AF0;
      v116 = v109;
      v117 = v112;
      v118 = xmmword_24F9FE980;
    }

    v125 = v247;
    v126 = v235;
    *v235 = v107;
    v126[1] = v108;
    v126[2] = v116;
    v126[3] = v110;
    v126[4] = v111;
    v126[5] = v117;
    v126[6] = v114;
    *(v126 + 7) = v118;
    v126[9] = v115;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245590, &qword_24F9FEF98);
    sub_24F4B2E70();
    sub_24F4B308C();
    v127 = v236;
    sub_24F924E28();
    sub_24E60169C(v127, v243, &qword_27F2454C0, &qword_24F9FEF18);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B90();
    sub_24F4B2DE4();
    v104 = v244;
    sub_24F924E28();
    sub_24E601704(v127, &qword_27F2454C0, &qword_24F9FEF18);
    v105 = &qword_27F245510;
    v106 = &qword_24F9FEF68;
    sub_24E60169C(v104, v125, &qword_27F245510, &qword_24F9FEF68);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B04();
    sub_24F4B3164();
    goto LABEL_21;
  }

  v237 = v44;
  v84 = v225;
  sub_24F4ADCF8(v49, v225, type metadata accessor for Player);
  v85 = *v84;
  v86 = v84[1];
  v240 = v1;
  v87 = v1[1];
  swift_getKeyPath();
  v88 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
  *&v258 = v87;
  v89 = sub_24F4B3EF0(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  v239 = v88;
  v238 = v89;
  sub_24F91FD88();

  v90 = (v87 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  if (v85 == *v90 && v86 == v90[1] || (sub_24F92CE08() & 1) != 0)
  {
    v91 = v240;
    v92 = *(v240 + 3);
    swift_getKeyPath();
    *&v258 = v92;
    sub_24F4B3EF0(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
    sub_24F91FD88();

    if (*(v92 + 16) == 2)
    {
      sub_24F927618();
      sub_24F9238C8();
      v93 = BYTE8(v258);
      v94 = v259;
      v95 = BYTE8(v259);
      v96 = v211;
      *v211 = v258;
      *(v96 + 8) = v93;
      v96[2] = v94;
      *(v96 + 24) = v95;
      *(v96 + 2) = v260;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374A0, &unk_24F9BF760);
      sub_24F4B2CEC();
      sub_24F02E9B8();
      v97 = v212;
      sub_24F924E28();
      v98 = v247;
      v99 = v223;
      v100 = v216;
    }

    else
    {
      swift_getKeyPath();
      *&v258 = v87;
      sub_24F91FD88();

      v130 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
      swift_beginAccess();
      v131 = v190;
      (*(v190 + 16))(v37, v87 + v130, v35);
      sub_24E60169C(&v50[*(v51 + 24)], &v258, qword_27F24EC90, &unk_24F93C1D0);
      v132 = type metadata accessor for PlayerAvatarView(0);
      v133 = v194;
      v134 = v194 + v132[6];
      v135 = v259;
      *v134 = v258;
      *(v134 + 16) = v135;
      *(v134 + 32) = v260;
      v136 = v91[32];
      (*(v131 + 32))(v133, v37, v35);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v137 = v132[5];
      v138 = type metadata accessor for PlayerAvatarView.Overlay(0);
      (*(*(v138 - 8) + 56))(v133 + v137, 1, 1, v138);
      *(v133 + v132[7]) = v136;
      sub_24F927618();
      sub_24F9238C8();
      v139 = v216;
      v140 = (v133 + *(v216 + 36));
      v141 = v259;
      *v140 = v258;
      v140[1] = v141;
      v140[2] = v260;
      v142 = v196;
      sub_24F9297F8();
      v143 = sub_24E680290();
      v144 = v200;
      sub_24F925EE8();
      (*(v197 + 8))(v142, v198);
      sub_24E601704(v133, &qword_27F2233D0, &qword_24F958810);
      v98 = v247;
      v99 = v223;
      if (qword_27F2116B0 != -1)
      {
        swift_once();
      }

      v253 = qword_27F39EE28;
      v254 = unk_27F39EE30;
      v251 = v139;
      v252 = v143;
      swift_getOpaqueTypeConformance2();
      sub_24E600AEC();
      v145 = v191;
      v146 = v221;
      sub_24F926538();
      (*(v204 + 8))(v144, v146);
      sub_24E60169C(v145, v211, &qword_27F245520, &qword_24F9FEF78);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374A0, &unk_24F9BF760);
      v100 = v139;
      sub_24F4B2CEC();
      sub_24F02E9B8();
      v97 = v212;
      sub_24F924E28();
      sub_24E601704(v145, &qword_27F245520, &qword_24F9FEF78);
    }

    sub_24E60169C(v97, v99, &qword_27F245528, &unk_24F9FEF80);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2C60();
    v147 = sub_24E680290();
    v253 = v100;
    v254 = v147;
    swift_getOpaqueTypeConformance2();
    v148 = v224;
    sub_24F924E28();
    sub_24E60169C(v148, v243, &qword_27F245508, &qword_24F9FEF60);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B90();
    sub_24F4B2DE4();
    v149 = v244;
    sub_24F924E28();
    sub_24E601704(v148, &qword_27F245508, &qword_24F9FEF60);
    sub_24E60169C(v149, v98, &qword_27F245510, &qword_24F9FEF68);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B04();
    sub_24F4B3164();
    sub_24F924E28();
    sub_24E601704(v149, &qword_27F245510, &qword_24F9FEF68);
    sub_24E601704(v97, &qword_27F245528, &unk_24F9FEF80);
    sub_24F4B15B0(v225, type metadata accessor for Player);
    return sub_24F4B15B0(v49, type metadata accessor for Player);
  }

  else
  {
    v239 = type metadata accessor for Player;
    sub_24F4B15B0(v225, type metadata accessor for Player);
    v153 = v237;
    sub_24F4AF5E0(v49, v237, type metadata accessor for Player);
    v154 = *(v153 + 24);
    v238 = *(v153 + 16);
    v155 = type metadata accessor for PlayerAvatar.Overlay(0);
    v156 = *(*(v155 - 8) + 56);
    v157 = v188;
    v156(v188, 1, 1, v155);
    sub_24E60169C(&v50[*(v51 + 24)], &v258, qword_27F24EC90, &unk_24F93C1D0);
    v158 = v187;
    v159 = *(v187 + 20);
    v160 = v189;
    v156(v189 + v159, 1, 1, v155);
    v161 = v160 + *(v158 + 24);
    v257 = 0;
    v255 = 0u;
    v256 = 0u;
    *v161 = 0u;
    *(v161 + 16) = 0u;
    *(v161 + 32) = 0;

    sub_24E61DA68(&v255, v161, qword_27F21B590, &unk_24F93BE30);
    *v160 = v238;
    v160[1] = v154;
    sub_24E61DA68(v157, v160 + v159, &qword_27F22DF80, &unk_24F942E50);
    sub_24E61DA68(&v258, v161, qword_27F21B590, &unk_24F93BE30);
    LOBYTE(v258) = v240[32];
    v162 = v194;
    sub_24F8319B8(v160, &v258, v194);
    sub_24F927618();
    sub_24F9238C8();
    v163 = v216;
    v164 = (v162 + *(v216 + 36));
    v165 = v259;
    *v164 = v258;
    v164[1] = v165;
    v164[2] = v260;
    v166 = v196;
    sub_24F9297F8();
    v167 = sub_24E680290();
    v168 = v200;
    sub_24F925EE8();
    (*(v197 + 8))(v166, v198);
    sub_24E601704(v162, &qword_27F2233D0, &qword_24F958810);
    v169 = v204;
    v170 = v221;
    (*(v204 + 16))(v223, v168, v221);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2C60();
    *&v255 = v163;
    *(&v255 + 1) = v167;
    swift_getOpaqueTypeConformance2();
    v171 = v224;
    sub_24F924E28();
    sub_24E60169C(v171, v243, &qword_27F245508, &qword_24F9FEF60);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B90();
    sub_24F4B2DE4();
    v172 = v244;
    sub_24F924E28();
    sub_24E601704(v171, &qword_27F245508, &qword_24F9FEF60);
    sub_24E60169C(v172, v247, &qword_27F245510, &qword_24F9FEF68);
    swift_storeEnumTagMultiPayload();
    sub_24F4B2B04();
    sub_24F4B3164();
    sub_24F924E28();
    sub_24E601704(v172, &qword_27F245510, &qword_24F9FEF68);
    (*(v169 + 8))(v168, v170);
    return sub_24F4B15B0(v153, v239);
  }
}

uint64_t sub_24F4AAE74@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455C0, &qword_24F9FF2A0);
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455C8, &qword_24F9FF2A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v42 = sub_24F9271D8();
  MEMORY[0x28223BE20](v42);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455D0, &qword_24F9FF2B0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455D8, &qword_24F9FF2B8);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v45 = *(v1 + 48);
  v17 = v45;
  v18 = *(v1 + 16);
  v44[0] = *v1;
  v44[1] = v18;
  v44[2] = *(v1 + 32);
  if (v45 == 2)
  {
    *v4 = sub_24F9249A8();
    *(v4 + 1) = 0x4010000000000000;
    v4[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455E0, &qword_24F9FF2C0);
    sub_24F4AB358(v44, &v4[*(v19 + 44)]);
    v20 = sub_24F926D18();
    KeyPath = swift_getKeyPath();
    v22 = &v4[*(v2 + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    sub_24E60169C(v4, v7, &qword_27F2455C0, &qword_24F9FF2A0);
    swift_storeEnumTagMultiPayload();
    sub_24F4B3C9C();
    sub_24F4B3E0C();
    sub_24F924E28();
    v23 = v4;
    v24 = &qword_27F2455C0;
    v25 = &qword_24F9FF2A0;
  }

  else
  {
    v39 = &v38 - v16;
    *v11 = sub_24F9249A8();
    *(v11 + 1) = 0x4010000000000000;
    v11[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2455E0, &qword_24F9FF2C0);
    sub_24F4AB358(v44, &v11[*(v26 + 44)]);
    v27 = sub_24F926D18();
    v28 = swift_getKeyPath();
    v40 = v2;
    v29 = &v11[*(v2 + 36)];
    *v29 = v28;
    v29[1] = v27;
    v30 = &v11[*(v9 + 36)];
    sub_24F927438();
    v31 = sub_24F925808();
    v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870, &qword_24F949630) + 36)] = v31;
    if (v17)
    {
      sub_24E63E314();
    }

    else
    {
      v32 = *MEMORY[0x277CE0118];
      v33 = sub_24F924B38();
      (*(*(v33 - 8) + 104))(v41, v32, v33);
      sub_24F4B3EF0(&qword_27F214E30, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
    }

    v34 = sub_24F927348();
    sub_24E6009C8(v11, v14, &qword_27F2455D0, &qword_24F9FF2B0);
    v35 = &v14[*(v12 + 36)];
    *v35 = v34;
    *(v35 + 4) = 256;
    v36 = v39;
    sub_24E6009C8(v14, v39, &qword_27F2455D8, &qword_24F9FF2B8);
    sub_24E60169C(v36, v7, &qword_27F2455D8, &qword_24F9FF2B8);
    swift_storeEnumTagMultiPayload();
    sub_24F4B3C9C();
    sub_24F4B3E0C();
    sub_24F924E28();
    v23 = v36;
    v24 = &qword_27F2455D8;
    v25 = &qword_24F9FF2B8;
  }

  return sub_24E601704(v23, v24, v25);
}

uint64_t sub_24F4AB358@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DBF8, &qword_24F95AAF8);
  MEMORY[0x28223BE20](v3);
  v5 = &v55 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245610, &qword_24F9FF2D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245618, &qword_24F9FF2D8);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v55 - v13;
  v16 = *(a1 + 32);
  if (v16 == 255)
  {
    (*(v7 + 56))(&v55 - v13, 1, 1, v6, v14);
    v32 = a1[1];
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_5:
    v45 = 0;
    v50 = 0;
    v48 = 0;
    goto LABEL_6;
  }

  v58 = &v55 - v13;
  v18 = a1[2];
  v17 = a1[3];
  v19 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DC20, &unk_24F95AB20) + 36)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50);
  v57 = v7;
  v21 = v3;
  v22 = *(v20 + 28);
  v56 = v6;
  v23 = *MEMORY[0x277CE1058];
  v24 = sub_24F926E78();
  (*(*(v24 - 8) + 104))(v19 + v22, v23, v24);
  *v19 = swift_getKeyPath();
  *v5 = v18;
  *(v5 + 1) = v17;
  v5[16] = v16 & 1;
  v5[17] = 1;
  v25 = v17;
  v15 = v58;
  sub_24E672C48(v18, v25);
  v26 = sub_24F9259D8();
  KeyPath = swift_getKeyPath();
  v28 = &v5[*(v21 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  sub_24E7DD170();
  sub_24F9268B8();
  sub_24E601704(v5, &qword_27F21DBF8, &qword_24F95AAF8);
  sub_24F927618();
  sub_24F9238C8();
  v29 = v56;
  v30 = &v9[*(v56 + 36)];
  v31 = v64;
  *v30 = v63;
  *(v30 + 1) = v31;
  *(v30 + 2) = v65;
  sub_24E6009C8(v9, v15, &qword_27F245610, &qword_24F9FF2D0);
  (*(v57 + 56))(v15, 0, 1, v29);
  v32 = a1[1];
  if (!v32)
  {
    goto LABEL_5;
  }

LABEL_3:
  v61 = *a1;
  v62 = v32;
  sub_24E600AEC();

  v33 = sub_24F925E18();
  v35 = v34;
  v37 = v36;
  sub_24F925898();
  v38 = sub_24F925C98();
  v39 = v15;
  v41 = v40;
  v43 = v42;

  sub_24E600B40(v33, v35, v37 & 1);

  sub_24F925938();
  v32 = sub_24F925B78();
  v45 = v44;
  LOBYTE(v33) = v46;
  v48 = v47;
  v49 = v41;
  v15 = v39;
  sub_24E600B40(v38, v49, v43 & 1);

  v50 = v33 & 1;
  sub_24E5FD138(v32, v45, v33 & 1);

LABEL_6:
  v51 = v59;
  sub_24E60169C(v15, v59, &qword_27F245618, &qword_24F9FF2D8);
  v52 = v60;
  sub_24E60169C(v51, v60, &qword_27F245618, &qword_24F9FF2D8);
  v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245620, &qword_24F9FF2E0) + 48));
  sub_24E65D2B4(v32, v45, v50, v48);
  sub_24E65D2F8(v32, v45, v50, v48);
  *v53 = v32;
  v53[1] = v45;
  v53[2] = v50;
  v53[3] = v48;
  sub_24E601704(v15, &qword_27F245618, &qword_24F9FF2D8);
  sub_24E65D2F8(v32, v45, v50, v48);
  return sub_24E601704(v51, &qword_27F245618, &qword_24F9FF2D8);
}

uint64_t sub_24F4AB88C@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v37[2] = v2[2];
  v37[3] = v4;
  v37[4] = v2[4];
  v5 = v2[1];
  v37[0] = *v2;
  v37[1] = v5;
  v6 = sub_24F927618();
  v32 = v7;
  v33 = v6;
  sub_24F4ABB2C(v37, &v34);
  v8 = v34;
  v9 = v35;
  v31 = BYTE1(v35);
  v10 = *(&v35 + 1);
  v11 = v36;
  v12 = WORD4(v36);
  sub_24E672C48(v34, *(&v34 + 1));
  sub_24F4B3F40(v10, v11, v12);
  sub_24E63FFA4(v8, *(&v8 + 1));
  sub_24F4B3F58(v10, v11, v12);
  LOBYTE(v34) = v9;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245628, &qword_24F9FF318) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v15 = *MEMORY[0x277CE1058];
  v16 = sub_24F926E78();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *a2 = v33;
  *(a2 + 8) = v32;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 33) = v31;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = v12;
  sub_24F927618();
  sub_24F9238C8();
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245630, &qword_24F9FF320) + 36));
  v18 = v35;
  *v17 = v34;
  v17[1] = v18;
  v17[2] = v36;
  LOBYTE(v14) = sub_24F925808();
  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245638, &qword_24F9FF328) + 36);
  *v27 = v14;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245640, &qword_24F9FF330) + 36);
  sub_24F927468();
  *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245648, &qword_24F9FF338) + 56)) = 256;
  v29 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245650, &qword_24F9FF340);
  *(a2 + *(result + 36)) = v29;
  return result;
}

uint64_t sub_24F4ABB2C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *a1;
  v3 = *(a1 + 16);
  v15 = v3;
  v4 = v14;
  if (*(a1 + 40))
  {
    sub_24F4B3F70(&v14, v13);
    v5 = 0;
    v6 = 0;
    v7 = 255;
  }

  else
  {
    v5 = *(a1 + 3);
    v6 = *(a1 + 4);
    sub_24F4B3F70(&v14, v13);
    sub_24E672C48(v5, v6);
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v9 = qword_27F24F280;
    v10 = sub_24F92B098();
    v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

    if (v11)
    {
    }

    else
    {
      sub_24E63FFA4(v5, v6);
      v5 = *(a1 + 8);
      v6 = *(a1 + 9);
    }

    v7 = 256;
  }

  *a2 = v4;
  *(a2 + 16) = v3 & 1;
  *(a2 + 17) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  sub_24E672C48(v4, *(&v4 + 1));
  sub_24F4B3F40(v5, v6, v7);
  sub_24F4B3F58(v5, v6, v7);
  return sub_24E63FFA4(v4, *(&v4 + 1));
}

uint64_t sub_24F4ABCE0(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E98, &qword_24F93E9B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245388, &qword_24F9FEDA0);
  sub_24E602068(&qword_27F245428, &qword_27F214E98, &qword_24F93E9B8, MEMORY[0x277D83980]);
  sub_24E602068(&qword_27F245380, &qword_27F245388, &qword_24F9FEDA0, MEMORY[0x277D7EB00]);
  sub_24F4B2534();
  return sub_24F927238();
}

uint64_t sub_24F4ABE28(uint64_t *a1)
{
  sub_24E600AEC();

  return sub_24F926EB8();
}

uint64_t sub_24F4ABEBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58, &unk_24F935650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245348, &qword_24F9FED88);
  sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
  sub_24F4B1F00();
  return sub_24F925AB8();
}

uint64_t OverlayPageToolbarItemView.init(item:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x4044000000000000;
  v4 = type metadata accessor for OverlayPageToolbarItemView(0);
  return sub_24F4AF5E0(a1, a2 + *(v4 + 20), type metadata accessor for PageToolbarItem);
}

uint64_t OverlayPageToolbarItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v188 = a1;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245140, &qword_24F9FE990);
  v158 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v171 = &v139 - v2;
  v170 = sub_24F91F4A8();
  v157 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v156 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v169 = &v139 - v5;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245148, &qword_24F9FE998);
  MEMORY[0x28223BE20](v167);
  v166 = (&v139 - v6);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245150, &qword_24F9FE9A0);
  MEMORY[0x28223BE20](v184);
  v168 = &v139 - v7;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245158, &unk_24F9FE9A8);
  MEMORY[0x28223BE20](v161);
  v164 = (&v139 - v8);
  v162 = sub_24F9241F8();
  v150 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v149 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OverlayPageToolbarItemView(0);
  v11 = v10 - 8;
  v140 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v141 = v12;
  v142 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v13 - 8);
  v165 = &v139 - v14;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245160, &qword_24F9FE9B8);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v139 - v15;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245168, &qword_24F9FE9C0);
  MEMORY[0x28223BE20](v159);
  v146 = &v139 - v16;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245170, &qword_24F9FE9C8);
  v148 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v147 = &v139 - v17;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245178, &qword_24F9FE9D0);
  MEMORY[0x28223BE20](v178);
  v163 = &v139 - v18;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245180, &qword_24F9FE9D8);
  MEMORY[0x28223BE20](v185);
  v187 = (&v139 - v19);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245188, &qword_24F9FE9E0);
  MEMORY[0x28223BE20](v180);
  v182 = &v139 - v20;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245190, &qword_24F9FE9E8);
  MEMORY[0x28223BE20](v175);
  v176 = &v139 - v21;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245198, &qword_24F9FE9F0);
  MEMORY[0x28223BE20](v181);
  v177 = &v139 - v22;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451A0, &qword_24F9FE9F8);
  MEMORY[0x28223BE20](v186);
  v183 = &v139 - v23;
  v153 = sub_24F929888();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v151 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v139 - v26;
  v28 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  MEMORY[0x28223BE20](v173);
  v32 = &v139 - v31;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451A8, &qword_24F9FEA00);
  v155 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v154 = &v139 - v33;
  v34 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PageToolbarItem.Appearance(0);
  MEMORY[0x28223BE20](v37);
  v39 = &v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v11 + 28);
  v179 = v1;
  v41 = v1 + v40;
  v42 = type metadata accessor for PageToolbarItem(0);
  sub_24F4ADCF8(&v41[*(v42 + 20)], v39, type metadata accessor for PageToolbarItem.Appearance);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v139 = v36;
      sub_24F4AF5E0(v39, v36, type metadata accessor for Player);
      v77 = *(v36 + 3);
      v172 = *(v36 + 2);
      v78 = type metadata accessor for PlayerAvatar.Overlay(0);
      v79 = *(*(v78 - 8) + 56);
      v79(v27, 1, 1, v78);
      sub_24E60169C(&v41[*(v42 + 24)], &v192, qword_27F24EC90, &unk_24F93C1D0);
      v80 = *(v28 + 20);
      v79(v30 + v80, 1, 1, v78);
      v81 = v30 + *(v28 + 24);
      v191 = 0;
      v189 = 0u;
      v190 = 0u;
      *v81 = 0u;
      *(v81 + 16) = 0u;
      *(v81 + 32) = 0;

      sub_24E61DA68(&v189, v81, qword_27F21B590, &unk_24F93BE30);
      *v30 = v172;
      v30[1] = v77;
      sub_24E61DA68(v27, v30 + v80, &qword_27F22DF80, &unk_24F942E50);
      sub_24E61DA68(&v192, v81, qword_27F21B590, &unk_24F93BE30);
      LOBYTE(v192) = 4;
      sub_24F8319B8(v30, &v192, v32);
      sub_24F927618();
      sub_24F9238C8();
      v82 = v173;
      v83 = &v32[*(v173 + 36)];
      v84 = v193;
      *v83 = v192;
      *(v83 + 1) = v84;
      *(v83 + 2) = v194;
      v85 = v151;
      sub_24F9297F8();
      v86 = sub_24E680290();
      v87 = v154;
      sub_24F925EE8();
      (*(v152 + 8))(v85, v153);
      sub_24E601704(v32, &qword_27F2233D0, &qword_24F958810);
      v88 = v155;
      v89 = v174;
      (*(v155 + 16))(v176, v87, v174);
      swift_storeEnumTagMultiPayload();
      *&v189 = v82;
      *(&v189 + 1) = v86;
      swift_getOpaqueTypeConformance2();
      sub_24F4ADEB4();
      v90 = v177;
      sub_24F924E28();
      sub_24E60169C(v90, v182, &qword_27F245198, &qword_24F9FE9F0);
      swift_storeEnumTagMultiPayload();
      sub_24F4ADDEC();
      sub_24F4AE164();
      v91 = v183;
      sub_24F924E28();
      sub_24E601704(v90, &qword_27F245198, &qword_24F9FE9F0);
      sub_24E60169C(v91, v187, &qword_27F2451A0, &qword_24F9FE9F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451B0, &qword_24F9FEA08);
      sub_24F4ADD60();
      sub_24F4AE270();
      sub_24F924E28();
      sub_24E601704(v91, &qword_27F2451A0, &qword_24F9FE9F8);
      (*(v88 + 8))(v87, v89);
      v75 = type metadata accessor for Player;
      v76 = v139;
      return sub_24F4B15B0(v76, v75);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v45 = *v39;
      v44 = *(v39 + 1);
      v47 = *(v39 + 2);
      v46 = *(v39 + 3);
      v48 = v39[32];
      v49 = v39[33];
      v50 = *(v42 + 24);
      sub_24E60169C(&v41[v50], &v192, qword_27F24EC90, &unk_24F93C1D0);
      v51 = *(&v193 + 1);
      sub_24E601704(&v192, qword_27F21B590, &unk_24F93BE30);
      if (v51)
      {
        v52 = sub_24F9232F8();
        (*(*(v52 - 8) + 56))(v165, 1, 1, v52);
        sub_24E60169C(&v41[v50], &v192, qword_27F24EC90, &unk_24F93C1D0);
        v53 = v142;
        sub_24F4ADCF8(v179, v142, type metadata accessor for OverlayPageToolbarItemView);
        v54 = (*(v140 + 80) + 49) & ~*(v140 + 80);
        v55 = v54 + v141;
        v56 = swift_allocObject();
        *(v56 + 16) = v45;
        *(v56 + 24) = v44;
        *(v56 + 32) = v47;
        *(v56 + 40) = v46;
        *(v56 + 48) = v48;
        sub_24F4AF5E0(v53, v56 + v54, type metadata accessor for OverlayPageToolbarItemView);
        *(v56 + v55) = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245260, &qword_24F9FEA40);
        v57 = sub_24F4AE110();
        *&v189 = &type metadata for OverlayButtonContent;
        *(&v189 + 1) = v57;
        swift_getOpaqueTypeConformance2();
        v58 = v143;
        sub_24F921788();
        if (v49 == 2)
        {
          *(&v190 + 1) = sub_24F9271D8();
          v191 = sub_24F4B3EF0(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
          v60 = *MEMORY[0x277CE0118];
          v61 = sub_24F924B38();
          (*(*(v61 - 8) + 104))(boxed_opaque_existential_1, v60, v61);
          v62 = v150;
          v63 = v146;
          v64 = v145;
          v65 = v144;
        }

        else
        {
          v62 = v150;
          v63 = v146;
          v64 = v145;
          v65 = v144;
          if (v49)
          {
            *(&v190 + 1) = MEMORY[0x277CE1120];
            v191 = sub_24E63E454();
          }

          else
          {
            *(&v190 + 1) = sub_24F9271D8();
            v191 = sub_24F4B3EF0(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
            v106 = __swift_allocate_boxed_opaque_existential_1(&v189);
            v107 = *MEMORY[0x277CE0118];
            v108 = sub_24F924B38();
            (*(*(v108 - 8) + 104))(v106, v107, v108);
          }

          sub_24E612C80(&v189, &v192);
          sub_24E612C80(&v192, &v189);
        }

        sub_24E612C80(&v189, &v192);
        sub_24E60169C(&v192, v63, &qword_27F245268, &qword_24F9FEA48);
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451F0, &qword_24F9FEA18);
        (*(v65 + 16))(v63 + v109[9], v58, v64);
        v110 = v63 + v109[10];
        *v110 = sub_24F923398() & 1;
        *(v110 + 8) = v111;
        *(v110 + 16) = v112 & 1;
        v113 = v63 + v109[11];
        *v113 = swift_getKeyPath();
        *(v113 + 8) = 0;
        v114 = v58;
        if (qword_27F211808 != -1)
        {
          swift_once();
        }

        v115 = qword_27F24E488;
        v116 = sub_24F923398();
        v118 = v117;
        v120 = v119;
        v121 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451E0, &qword_24F9FEA10) + 36);
        *v121 = v115;
        *(v121 + 8) = v116 & 1;
        *(v121 + 16) = v118;
        *(v121 + 24) = v120 & 1;
        LOBYTE(v115) = sub_24F923398();
        v123 = v122;
        LOBYTE(v118) = v124;
        sub_24E601704(&v192, &qword_27F245268, &qword_24F9FEA48);
        (*(v65 + 8))(v114, v64);
        v125 = v159;
        v126 = v63 + *(v159 + 36);
        *v126 = v115 & 1;
        *(v126 + 8) = v123;
        *(v126 + 16) = v118 & 1;
        v127 = v63;
        v128 = v149;
        sub_24F9241E8();
        v129 = sub_24F4ADFCC();
        v130 = sub_24F4B3EF0(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
        v131 = v147;
        v132 = v162;
        sub_24F926178();
        (*(v62 + 8))(v128, v132);
        sub_24E601704(v127, &qword_27F245168, &qword_24F9FE9C0);
        v133 = v148;
        v134 = v160;
        (*(v148 + 16))(v164, v131, v160);
        swift_storeEnumTagMultiPayload();
        *&v192 = v125;
        *(&v192 + 1) = v132;
        *&v193 = v129;
        *(&v193 + 1) = v130;
        swift_getOpaqueTypeConformance2();
        v105 = v163;
        sub_24F924E28();
        (*(v133 + 8))(v131, v134);
      }

      else
      {
        v101 = *v179;
        v102 = v164;
        *v164 = v45;
        v102[1] = v44;
        v102[2] = v47;
        v102[3] = v46;
        *(v102 + 32) = v48;
        v102[5] = v101;
        *(v102 + 48) = v49;
        swift_storeEnumTagMultiPayload();
        v103 = sub_24F4ADFCC();
        v104 = sub_24F4B3EF0(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
        *&v192 = v159;
        *(&v192 + 1) = v162;
        *&v193 = v103;
        *(&v193 + 1) = v104;
        swift_getOpaqueTypeConformance2();
        sub_24F4AE110();
        v105 = v163;
        sub_24F924E28();
      }

      v135 = v183;
      v136 = v187;
      sub_24E60169C(v105, v176, &qword_27F245178, &qword_24F9FE9D0);
      swift_storeEnumTagMultiPayload();
      v137 = sub_24E680290();
      *&v192 = v173;
      *(&v192 + 1) = v137;
      swift_getOpaqueTypeConformance2();
      sub_24F4ADEB4();
      v138 = v177;
      sub_24F924E28();
      sub_24E60169C(v138, v182, &qword_27F245198, &qword_24F9FE9F0);
      swift_storeEnumTagMultiPayload();
      sub_24F4ADDEC();
      sub_24F4AE164();
      sub_24F924E28();
      sub_24E601704(v138, &qword_27F245198, &qword_24F9FE9F0);
      sub_24E60169C(v135, v136, &qword_27F2451A0, &qword_24F9FE9F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451B0, &qword_24F9FEA08);
      sub_24F4ADD60();
      sub_24F4AE270();
      sub_24F924E28();
      sub_24E601704(v135, &qword_27F2451A0, &qword_24F9FE9F8);
      v98 = v105;
      v99 = &qword_27F245178;
      v100 = &qword_24F9FE9D0;
      return sub_24E601704(v98, v99, v100);
    }

LABEL_10:
    *v187 = sub_24F926C98();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451B0, &qword_24F9FEA08);
    sub_24F4ADD60();
    sub_24F4AE270();
    sub_24F924E28();
    v75 = type metadata accessor for PageToolbarItem.Appearance;
    v76 = v39;
    return sub_24F4B15B0(v76, v75);
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v66 = v157;
      v67 = v169;
      v68 = v170;
      (*(v157 + 32))(v169, v39, v170);
      (*(v66 + 16))(v156, v67, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245220, &qword_24F9FEA20);
      sub_24F4AEBC4();
      v69 = v171;
      sub_24F9277C8();
      v70 = v158;
      v71 = v172;
      (*(v158 + 16))(v166, v69, v172);
      swift_storeEnumTagMultiPayload();
      sub_24F4AE21C();
      sub_24E602068(&qword_27F245210, &qword_27F245140, &qword_24F9FE990, MEMORY[0x277CDF188]);
      v72 = v168;
      sub_24F924E28();
      sub_24E60169C(v72, v182, &qword_27F245150, &qword_24F9FE9A0);
      swift_storeEnumTagMultiPayload();
      sub_24F4ADDEC();
      sub_24F4AE164();
      v73 = v183;
      sub_24F924E28();
      sub_24E601704(v72, &qword_27F245150, &qword_24F9FE9A0);
      sub_24E60169C(v73, v187, &qword_27F2451A0, &qword_24F9FE9F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451B0, &qword_24F9FEA08);
      sub_24F4ADD60();
      sub_24F4AE270();
      sub_24F924E28();
      sub_24E601704(v73, &qword_27F2451A0, &qword_24F9FE9F8);
      (*(v70 + 8))(v171, v71);
      return (*(v66 + 8))(v169, v170);
    }

    goto LABEL_10;
  }

  v92 = *(v39 + 1);
  v93 = *(v39 + 4);
  v94 = *v179;
  v95 = v166;
  *v166 = *v39;
  v95[1] = v92;
  v95[2] = v94;
  *(v95 + 3) = *(v39 + 1);
  v95[5] = v93;
  swift_storeEnumTagMultiPayload();
  sub_24F4AE21C();
  sub_24E602068(&qword_27F245210, &qword_27F245140, &qword_24F9FE990, MEMORY[0x277CDF188]);
  v96 = v168;
  sub_24F924E28();
  sub_24E60169C(v96, v182, &qword_27F245150, &qword_24F9FE9A0);
  swift_storeEnumTagMultiPayload();
  sub_24F4ADDEC();
  sub_24F4AE164();
  v97 = v183;
  sub_24F924E28();
  sub_24E601704(v96, &qword_27F245150, &qword_24F9FE9A0);
  sub_24E60169C(v97, v187, &qword_27F2451A0, &qword_24F9FE9F8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2451B0, &qword_24F9FEA08);
  sub_24F4ADD60();
  sub_24F4AE270();
  sub_24F924E28();
  v98 = v97;
  v99 = &qword_27F2451A0;
  v100 = &qword_24F9FE9F8;
  return sub_24E601704(v98, v99, v100);
}

uint64_t sub_24F4ADCF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F4ADD60()
{
  result = qword_27F2451B8;
  if (!qword_27F2451B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2451A0, &qword_24F9FE9F8);
    sub_24F4ADDEC();
    sub_24F4AE164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451B8);
  }

  return result;
}

unint64_t sub_24F4ADDEC()
{
  result = qword_27F2451C0;
  if (!qword_27F2451C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245198, &qword_24F9FE9F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2233D0, &qword_24F958810);
    sub_24E680290();
    swift_getOpaqueTypeConformance2();
    sub_24F4ADEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451C0);
  }

  return result;
}

unint64_t sub_24F4ADEB4()
{
  result = qword_27F2451C8;
  if (!qword_27F2451C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245178, &qword_24F9FE9D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245168, &qword_24F9FE9C0);
    sub_24F9241F8();
    sub_24F4ADFCC();
    sub_24F4B3EF0(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_24F4AE110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451C8);
  }

  return result;
}

unint64_t sub_24F4ADFCC()
{
  result = qword_27F2451D0;
  if (!qword_27F2451D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245168, &qword_24F9FE9C0);
    sub_24F4AE058();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451D0);
  }

  return result;
}

unint64_t sub_24F4AE058()
{
  result = qword_27F2451D8;
  if (!qword_27F2451D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2451E0, &qword_24F9FEA10);
    sub_24E602068(&qword_27F2451E8, &qword_27F2451F0, &qword_24F9FEA18, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451D8);
  }

  return result;
}

unint64_t sub_24F4AE110()
{
  result = qword_27F2451F8;
  if (!qword_27F2451F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2451F8);
  }

  return result;
}

unint64_t sub_24F4AE164()
{
  result = qword_27F245200;
  if (!qword_27F245200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245150, &qword_24F9FE9A0);
    sub_24F4AE21C();
    sub_24E602068(&qword_27F245210, &qword_27F245140, &qword_24F9FE990, MEMORY[0x277CDF188]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245200);
  }

  return result;
}

unint64_t sub_24F4AE21C()
{
  result = qword_27F245208;
  if (!qword_27F245208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245208);
  }

  return result;
}

unint64_t sub_24F4AE270()
{
  result = qword_27F245218;
  if (!qword_27F245218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2451B0, &qword_24F9FEA08);
    sub_24F02EAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245218);
  }

  return result;
}

uint64_t sub_24F4AE2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v24[0] = a8;
  v24[1] = a9;
  v24[2] = a10;
  v17 = sub_24F9248C8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a6;

  sub_24ECECA74(a3, a4, a5);
  v22 = sub_24F9248B8();
  v24[3] = a1;
  v24[4] = a2;
  v24[5] = a3;
  v24[6] = a4;
  v25 = a5;
  v26 = v21;
  v27 = a7;
  (v24[0])(v22);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v18 + 8))(v20, v17);

  return sub_24E640000(a3, a4, a5);
}

uint64_t sub_24F4AE474@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_24F929888();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x28223BE20](v1);
  v52 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245438, &qword_24F9FEE10);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245440, &qword_24F9FEE18);
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v11 = &v46 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245230, &qword_24F9FEA28);
  MEMORY[0x28223BE20](v49);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245448, &unk_24F9FEE20);
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x28223BE20](v14);
  v48 = &v46 - v15;
  v16 = sub_24F925908();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = sub_24F925968();
  sub_24E601704(v5, &qword_27F214698, &unk_24F95F810);
  KeyPath = swift_getKeyPath();
  v19 = &v8[*(v6 + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0, &unk_24F9B4DB0) + 28);
  sub_24F924CF8();
  v21 = sub_24F924D08();
  (*(*(v21 - 8) + 56))(v19 + v20, 0, 1, v21);
  *v19 = swift_getKeyPath();
  *v8 = 0xD00000000000001FLL;
  *(v8 + 1) = 0x800000024FA75AD0;
  *(v8 + 8) = 1;
  *(v8 + 3) = KeyPath;
  *(v8 + 4) = v17;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v22 = sub_24F9248C8();
  __swift_project_value_buffer(v22, qword_27F39F078);
  sub_24F4B2594();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v8, &qword_27F245438, &qword_24F9FEE10);
  *(&v58 + 1) = MEMORY[0x277CE1120];
  v59 = sub_24E63E454();
  sub_24E60169C(&v57, v13, &qword_27F245458, &unk_24F9FEE60);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245258, &qword_24F9FEA38);
  v24 = v47;
  (*(v9 + 16))(&v13[v23[9]], v11, v47);
  v25 = &v13[v23[10]];
  *v25 = sub_24F923398() & 1;
  *(v25 + 1) = v26;
  v25[16] = v27 & 1;
  v28 = &v13[v23[11]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v29 = qword_27F24E488;
  v30 = sub_24F923398();
  v32 = v31;
  v34 = v33;
  v35 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245248, &qword_24F9FEA30) + 36)];
  *v35 = v29;
  v35[8] = v30 & 1;
  *(v35 + 2) = v32;
  v35[24] = v34 & 1;
  LOBYTE(v29) = sub_24F923398();
  v37 = v36;
  LOBYTE(v32) = v38;
  sub_24E601704(&v57, &qword_27F245458, &unk_24F9FEE60);
  (*(v9 + 8))(v11, v24);
  v39 = v49;
  v40 = &v13[*(v49 + 36)];
  *v40 = v29 & 1;
  *(v40 + 1) = v37;
  v40[16] = v32 & 1;
  v57 = 0u;
  v58 = 0u;
  memset(v56, 0, sizeof(v56));
  v41 = v52;
  sub_24F9297C8();
  sub_24E601704(v56, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v57, &qword_27F2129B0, &unk_24F945320);
  v42 = sub_24F4AECBC();
  v43 = v48;
  sub_24F925EE8();
  (*(v53 + 8))(v41, v54);
  sub_24E601704(v13, &qword_27F245230, &qword_24F9FEA28);
  if (qword_27F211510 != -1)
  {
    swift_once();
  }

  v57 = xmmword_27F39EAE8;
  *&v56[0] = v39;
  *(&v56[0] + 1) = v42;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v44 = v51;
  sub_24F926538();
  return (*(v50 + 8))(v43, v44);
}

unint64_t sub_24F4AEBC4()
{
  result = qword_27F245228;
  if (!qword_27F245228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245220, &qword_24F9FEA20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245230, &qword_24F9FEA28);
    sub_24F4AECBC();
    swift_getOpaqueTypeConformance2();
    sub_24F4B3EF0(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245228);
  }

  return result;
}

unint64_t sub_24F4AECBC()
{
  result = qword_27F245238;
  if (!qword_27F245238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245230, &qword_24F9FEA28);
    sub_24F4AED48();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245238);
  }

  return result;
}

unint64_t sub_24F4AED48()
{
  result = qword_27F245240;
  if (!qword_27F245240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245248, &qword_24F9FEA30);
    sub_24E602068(&qword_27F245250, &qword_27F245258, &qword_24F9FEA38, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245240);
  }

  return result;
}

uint64_t sub_24F4AEE00()
{
  v1 = type metadata accessor for OverlayPageToolbarItemView(0);
  v2 = *(*(v1 - 8) + 80);

  if (*(v0 + 48) != 255)
  {
    sub_24E63FFA4(*(v0 + 32), *(v0 + 40));
  }

  v3 = v0 + ((v2 + 49) & ~v2) + *(v1 + 20);

  v4 = type metadata accessor for PageToolbarItem(0);
  v5 = (v3 + *(v4 + 20));
  type metadata accessor for PageToolbarItem.Appearance(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        if (*(v5 + 32) != 255)
        {
          sub_24E63FFA4(v5[2], v5[3]);
        }
      }
    }

    else
    {

      v8 = type metadata accessor for Player(0);
      v9 = v8[6];
      v36 = sub_24F9289E8();
      v35 = *(v36 - 8);
      v34 = *(v35 + 8);
      v34(v5 + v9);

      if (*(v5 + v8[9] + 8) != 1)
      {
      }

      v10 = v5 + v8[13];
      v11 = type metadata accessor for CallProviderConversationHandleSet(0);
      if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
      {
        v33 = v11;
        v12 = type metadata accessor for CallProviderConversationHandle(0);
        v13 = *(*(v12 - 8) + 48);
        if (!(v13)(v10, 1, v12))
        {

          v14 = *(type metadata accessor for CallProvider(0) + 24);
          if (!(*(v35 + 48))(&v10[v14], 1, v36))
          {
            (v34)(&v10[v14], v36);
          }
        }

        v32 = &v10[*(v33 + 20)];
        if (!v13())
        {

          v15 = *(type metadata accessor for CallProvider(0) + 24);
          if (!(*(v35 + 48))(&v32[v15], 1, v36))
          {
            (v34)(&v32[v15], v36);
          }
        }
      }

      if (*(v5 + v8[15] + 8))
      {
      }

      v16 = v5 + v8[16];
      PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
      if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
      {

        v18 = type metadata accessor for Game(0);
        (v34)(&v16[v18[18]], v36);
        v19 = v18[19];
        if (!(*(v35 + 48))(&v16[v19], 1, v36))
        {
          (v34)(&v16[v19], v36);
        }

        v20 = v18[21];
        v21 = sub_24F920818();
        v22 = *(v21 - 8);
        if (!(*(v22 + 48))(&v16[v20], 1, v21))
        {
          (*(v22 + 8))(&v16[v20], v21);
        }
      }

      v23 = v5 + v8[17];
      ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
      if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
      {

        v25 = type metadata accessor for Game(0);
        (v34)(&v23[v25[18]], v36);
        v26 = v25[19];
        if (!(*(v35 + 48))(&v23[v26], 1, v36))
        {
          (v34)(&v23[v26], v36);
        }

        v27 = v25[21];
        v28 = sub_24F920818();
        v29 = *(v28 - 8);
        if (!(*(v29 + 48))(&v23[v27], 1, v28))
        {
          (*(v29 + 8))(&v23[v27], v28);
        }
      }
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        sub_24E63FFA4(*v5, v5[1]);
        sub_24E63FFA4(v5[3], v5[4]);
        break;
      case 3:

        break;
      case 4:
        v7 = sub_24F91F4A8();
        (*(*(v7 - 8) + 8))(v5, v7);
        break;
    }
  }

  v30 = (v3 + *(v4 + 24));
  if (v30[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return swift_deallocObject();
}

uint64_t sub_24F4AF5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4AF680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452A0, &qword_24F9FECE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452A8, &qword_24F9FECF0);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = &v54 - v10;
  v13 = *(a1 + 32);
  v60 = &v54 - v10;
  if (v13 == 255)
  {
    (*(v4 + 56))(&v54 - v10, 1, 1, v3, v11);
    v32 = *(a1 + 8);
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_5:
    v44 = 0;
    v49 = 0;
    v47 = 0;
    goto LABEL_6;
  }

  v56 = v3;
  v57 = v4;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = v13 & 1;
  sub_24E672C48(v15, v14);
  v54 = sub_24F9258D8();
  KeyPath = swift_getKeyPath();
  v55 = v6;
  v18 = KeyPath;
  v19 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v20 = sub_24F925808();
  sub_24F923318();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v68[0]) = v16;
  LOBYTE(v61) = 0;
  sub_24F927618();
  sub_24F9238C8();
  *&v67[7] = v68[10];
  *&v67[23] = v68[11];
  *&v67[39] = v69;
  *&v61 = v15;
  *(&v61 + 1) = v14;
  LOWORD(v62) = v16;
  *(&v62 + 1) = v18;
  *&v63 = v54;
  *(&v63 + 1) = v19;
  LOBYTE(v64) = v20;
  *(&v64 + 1) = v22;
  *&v65 = v24;
  *(&v65 + 1) = v26;
  *&v66[0] = v28;
  BYTE8(v66[0]) = 0;
  *(v66 + 9) = *v67;
  *(&v66[1] + 9) = *&v67[16];
  *(&v66[2] + 9) = *&v67[32];
  *(&v66[3] + 1) = *(&v69 + 1);
  sub_24F927558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452B8, &qword_24F9FED30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452C0, &qword_24F9FED38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452C8, &qword_24F9FED40);
  sub_24F4B18D0();
  sub_24F4B1B58();
  sub_24F4B1C3C();
  v29 = v55;
  sub_24F926AF8();
  v68[5] = v66[0];
  v68[6] = v66[1];
  v68[7] = v66[2];
  v68[8] = v66[3];
  v68[1] = v62;
  v68[2] = v63;
  v68[3] = v64;
  v68[4] = v65;
  v68[0] = v61;
  v12 = v60;
  sub_24E601704(v68, &qword_27F2452B8, &qword_24F9FED30);
  v30 = v56;
  v31 = (v29 + *(v56 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245328, &qword_24F9FED68);
  sub_24F924358();
  *v31 = 0;
  sub_24E6009C8(v29, v12, &qword_27F2452A0, &qword_24F9FECE8);
  (*(v57 + 56))(v12, 0, 1, v30);
  v32 = *(a1 + 8);
  if (!v32)
  {
    goto LABEL_5;
  }

LABEL_3:
  *&v68[0] = *a1;
  *(&v68[0] + 1) = v32;
  sub_24E600AEC();

  v33 = sub_24F925E18();
  v35 = v34;
  v37 = v36;
  sub_24F925898();
  v38 = sub_24F925C98();
  v40 = v39;
  v42 = v41;

  sub_24E600B40(v33, v35, v37 & 1);

  sub_24F925938();
  v32 = sub_24F925B78();
  v44 = v43;
  LOBYTE(v35) = v45;
  v47 = v46;
  v48 = v42 & 1;
  v12 = v60;
  sub_24E600B40(v38, v40, v48);

  v49 = v35 & 1;
  sub_24E5FD138(v32, v44, v35 & 1);

LABEL_6:
  v50 = v58;
  sub_24E60169C(v12, v58, &qword_27F2452A8, &qword_24F9FECF0);
  v51 = v59;
  sub_24E60169C(v50, v59, &qword_27F2452A8, &qword_24F9FECF0);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452B0, &qword_24F9FECF8) + 48));
  sub_24E65D2B4(v32, v44, v49, v47);
  sub_24E65D2F8(v32, v44, v49, v47);
  *v52 = v32;
  v52[1] = v44;
  v52[2] = v49;
  v52[3] = v47;
  sub_24E601704(v12, &qword_27F2452A8, &qword_24F9FECF0);
  sub_24E65D2F8(v32, v44, v49, v47);
  return sub_24E601704(v50, &qword_27F2452A8, &qword_24F9FECF0);
}

uint64_t sub_24F4AFC6C@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452C8, &qword_24F9FED40);
  MEMORY[0x28223BE20](v45);
  v4 = (&v37 - v3);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245330, &qword_24F9FED70);
  MEMORY[0x28223BE20](v43);
  v44 = &v37 - v5;
  v40 = sub_24F927418();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927538();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24F927148();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245338, &qword_24F9FED78);
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v16 = &v37 - v15;
  v17 = a1[7];
  v62 = a1[6];
  v63 = v17;
  v64 = a1[8];
  v18 = a1[3];
  v58 = a1[2];
  v59 = v18;
  v19 = a1[5];
  v60 = a1[4];
  v61 = v19;
  v20 = a1[1];
  v56 = *a1;
  v57 = v20;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v53 = v62;
    v54 = v63;
    v55 = v64;
    v49 = v58;
    v50 = v59;
    v51 = v60;
    v52 = v61;
    v47 = v56;
    v48 = v57;
    sub_24F9273F8();
    sub_24F927448();
    (*(v38 + 8))(v7, v40);
    sub_24F927138();
    (*(v9 + 8))(v11, v8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452B8, &qword_24F9FED30);
    v22 = sub_24F4B18D0();
    v23 = sub_24E63E314();
    v24 = MEMORY[0x277CE1120];
    sub_24F926248();
    (*(v39 + 8))(v13, v41);
    v25 = v42;
    (*(v14 + 16))(v44, v16, v42);
    swift_storeEnumTagMultiPayload();
    *&v47 = v21;
    *(&v47 + 1) = v24;
    v48.n128_u64[0] = v22;
    v48.n128_u64[1] = v23;
    swift_getOpaqueTypeConformance2();
    sub_24F4B1C3C();
    sub_24F924E28();
    return (*(v14 + 8))(v16, v25);
  }

  else
  {
    v27 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245320, &qword_24F9FED60) + 36);
    sub_24F927468();
    v28 = sub_24F925808();
    v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870, &qword_24F949630) + 36)] = v28;
    v29 = v59;
    v4[2] = v58;
    v4[3] = v29;
    v30 = v64;
    v4[7] = v63;
    v4[8] = v30;
    v31 = v62;
    v4[5] = v61;
    v4[6] = v31;
    v4[4] = v60;
    v32 = v57;
    *v4 = v56;
    v4[1] = v32;
    v33 = v44;
    *(v4 + *(v45 + 36)) = 256;
    sub_24E60169C(v4, v33, &qword_27F2452C8, &qword_24F9FED40);
    swift_storeEnumTagMultiPayload();
    sub_24E60169C(&v56, &v47, &qword_27F2452B8, &qword_24F9FED30);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452B8, &qword_24F9FED30);
    v35 = sub_24F4B18D0();
    v36 = sub_24E63E314();
    *&v47 = v34;
    *(&v47 + 1) = MEMORY[0x277CE1120];
    v48.n128_u64[0] = v35;
    v48.n128_u64[1] = v36;
    swift_getOpaqueTypeConformance2();
    sub_24F4B1C3C();
    sub_24F924E28();
    return sub_24E601704(v4, &qword_27F2452C8, &qword_24F9FED40);
  }
}

uint64_t sub_24F4B02AC@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[7];
  v16[6] = a1[6];
  v16[7] = v4;
  v16[8] = a1[8];
  v5 = a1[3];
  v16[2] = a1[2];
  v16[3] = v5;
  v6 = a1[5];
  v16[4] = a1[4];
  v16[5] = v6;
  v7 = a1[1];
  v16[0] = *a1;
  v16[1] = v7;
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245320, &qword_24F9FED60) + 36);
  sub_24F927468();
  v9 = sub_24F925808();
  v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870, &qword_24F949630) + 36)] = v9;
  v10 = a1[3];
  a2[2] = a1[2];
  a2[3] = v10;
  v11 = a1[1];
  *a2 = *a1;
  a2[1] = v11;
  v12 = a1[8];
  a2[7] = a1[7];
  a2[8] = v12;
  v13 = a1[6];
  a2[5] = a1[5];
  a2[6] = v13;
  a2[4] = a1[4];
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2452C8, &qword_24F9FED40) + 36)) = 256;
  return sub_24E60169C(v16, &v15, &qword_27F2452B8, &qword_24F9FED30);
}

uint64_t sub_24F4B03BC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v10[0] = *v2;
  v10[1] = v4;
  v10[2] = *(v2 + 32);
  v11 = *(v2 + 48);
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245290, &qword_24F9FECA8);
  sub_24F4AF680(v10, a2 + *(v5 + 44));
  v6 = sub_24F926D18();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245298, &qword_24F9FECE0);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_24F4B0470(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214E98, &qword_24F93E9B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245388, &qword_24F9FEDA0);
  sub_24E602068(&qword_27F245428, &qword_27F214E98, &qword_24F93E9B8, MEMORY[0x277D83980]);
  sub_24E602068(&qword_27F245380, &qword_27F245388, &qword_24F9FEDA0, MEMORY[0x277D7EB00]);
  sub_24F4B2534();
  return sub_24F927238();
}

uint64_t sub_24F4B05B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_24F9232F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_24E60169C(a1 + 48, v14, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E7FB760(a1, v12);
  v8 = swift_allocObject();
  v9 = v12[3];
  *(v8 + 48) = v12[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = v12[4];
  *(v8 + 96) = v13;
  v10 = v12[1];
  *(v8 + 16) = v12[0];
  *(v8 + 32) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58, &unk_24F935650);
  sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
  return sub_24F921788();
}

uint64_t sub_24F4B0754(void *a1)
{
  sub_24E600AEC();

  return sub_24F926EB8();
}

uint64_t sub_24F4B07D0@<X0>(uint64_t a2@<X8>)
{
  v52 = a2;
  v2 = sub_24F9248C8();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245390, &qword_24F9FEDA8);
  MEMORY[0x28223BE20](v48);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245398, &qword_24F9FEDB0);
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;

  v10 = sub_24F926E48();
  v11 = sub_24F9258D8();
  KeyPath = swift_getKeyPath();
  v13 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v14 = sub_24F925808();
  sub_24F923318();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v60[0]) = 0;
  sub_24F927618();
  sub_24F9238C8();
  *(&v58[4] + 7) = v59;
  *(&v58[2] + 7) = *&v58[9];
  *(v58 + 7) = *&v58[7];
  *&v53 = v10;
  *(&v53 + 1) = KeyPath;
  *&v54 = v11;
  *(&v54 + 1) = v13;
  LOBYTE(v55) = v14;
  *(&v55 + 1) = v16;
  *&v56 = v18;
  *(&v56 + 1) = v20;
  *&v57[0] = v22;
  BYTE8(v57[0]) = 0;
  *(v57 + 9) = *v58;
  *(&v57[1] + 9) = *&v58[2];
  *(&v57[2] + 9) = *&v58[4];
  *(&v57[3] + 1) = *(&v59 + 1);
  sub_24F927558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453A0, &qword_24F9FEDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453A8, &qword_24F9FEDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453B0, &qword_24F9FEDC8);
  sub_24F4B1FB0();
  sub_24F4B2180();
  sub_24F4B2264();
  v23 = v46;
  sub_24F926AF8();
  v60[4] = v57[0];
  v60[5] = v57[1];
  v60[6] = v57[2];
  v60[7] = v57[3];
  v60[0] = v53;
  v60[1] = v54;
  v60[2] = v55;
  v60[3] = v56;
  v24 = v47;
  sub_24E601704(v60, &qword_27F2453A0, &qword_24F9FEDB8);
  v25 = &v5[*(v48 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245328, &qword_24F9FED68);
  sub_24F924358();
  *v25 = 0;
  v26 = v49;
  sub_24F9248B8();
  sub_24F4B23D4();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v50 + 8))(v26, v51);
  sub_24E601704(v5, &qword_27F245390, &qword_24F9FEDA8);
  *(&v54 + 1) = MEMORY[0x277CE1120];
  *&v55 = sub_24E63E454();
  v27 = v52;
  sub_24E60169C(&v53, v52, &qword_27F245410, &qword_24F9FEDF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245370, &qword_24F9FED98);
  (*(v24 + 16))(v27 + v28[9], v9, v23);
  v29 = v27 + v28[10];
  *v29 = sub_24F923398() & 1;
  *(v29 + 8) = v30;
  *(v29 + 16) = v31 & 1;
  v32 = v27;
  v33 = v27 + v28[11];
  *v33 = swift_getKeyPath();
  *(v33 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v34 = qword_27F24E488;
  v35 = sub_24F923398();
  v37 = v36;
  v39 = v38;
  v40 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245360, &qword_24F9FED90) + 36);
  *v40 = v34;
  *(v40 + 8) = v35 & 1;
  *(v40 + 16) = v37;
  *(v40 + 24) = v39 & 1;
  LOBYTE(v34) = sub_24F923398();
  v42 = v41;
  LOBYTE(v37) = v43;
  sub_24E601704(&v53, &qword_27F245410, &qword_24F9FEDF0);
  (*(v24 + 8))(v9, v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245340, &qword_24F9FED80);
  v45 = v32 + *(result + 36);
  *v45 = v34 & 1;
  *(v45 + 8) = v42;
  *(v45 + 16) = v37 & 1;
  return result;
}

uint64_t sub_24F4B0DB0@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453B0, &qword_24F9FEDC8);
  MEMORY[0x28223BE20](v45);
  v4 = (&v37 - v3);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245418, &qword_24F9FEDF8);
  MEMORY[0x28223BE20](v43);
  v44 = &v37 - v5;
  v40 = sub_24F927418();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927538();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24F927148();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245420, &unk_24F9FEE00);
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v16 = &v37 - v15;
  v17 = a1[5];
  v59 = a1[4];
  v60 = v17;
  v18 = a1[7];
  v61 = a1[6];
  v62 = v18;
  v19 = a1[1];
  v55 = *a1;
  v56 = v19;
  v20 = a1[3];
  v57 = a1[2];
  v58 = v20;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    sub_24F9273F8();
    sub_24F927448();
    (*(v38 + 8))(v7, v40);
    sub_24F927138();
    (*(v9 + 8))(v11, v8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453A0, &qword_24F9FEDB8);
    v22 = sub_24F4B1FB0();
    v23 = sub_24E63E314();
    v24 = MEMORY[0x277CE1120];
    sub_24F926248();
    (*(v39 + 8))(v13, v41);
    v25 = v42;
    (*(v14 + 16))(v44, v16, v42);
    swift_storeEnumTagMultiPayload();
    *&v47 = v21;
    *(&v47 + 1) = v24;
    v48.n128_u64[0] = v22;
    v48.n128_u64[1] = v23;
    swift_getOpaqueTypeConformance2();
    sub_24F4B2264();
    sub_24F924E28();
    return (*(v14 + 8))(v16, v25);
  }

  else
  {
    v27 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453F8, &qword_24F9FEDE8) + 36);
    sub_24F927468();
    v28 = sub_24F925808();
    v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870, &qword_24F949630) + 36)] = v28;
    v29 = v58;
    v4[2] = v57;
    v4[3] = v29;
    v30 = v62;
    v4[6] = v61;
    v4[7] = v30;
    v31 = v60;
    v4[4] = v59;
    v4[5] = v31;
    v32 = v56;
    *v4 = v55;
    v4[1] = v32;
    v33 = v44;
    *(v4 + *(v45 + 36)) = 256;
    sub_24E60169C(v4, v33, &qword_27F2453B0, &qword_24F9FEDC8);
    swift_storeEnumTagMultiPayload();
    sub_24E60169C(&v55, &v47, &qword_27F2453A0, &qword_24F9FEDB8);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A0, &qword_24F9FEDB8);
    v35 = sub_24F4B1FB0();
    v36 = sub_24E63E314();
    *&v47 = v34;
    *(&v47 + 1) = MEMORY[0x277CE1120];
    v48.n128_u64[0] = v35;
    v48.n128_u64[1] = v36;
    swift_getOpaqueTypeConformance2();
    sub_24F4B2264();
    sub_24F924E28();
    return sub_24E601704(v4, &qword_27F2453B0, &qword_24F9FEDC8);
  }
}

uint64_t sub_24F4B13D8@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[5];
  v16[4] = a1[4];
  v16[5] = v4;
  v5 = a1[7];
  v16[6] = a1[6];
  v16[7] = v5;
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  v7 = a1[3];
  v16[2] = a1[2];
  v16[3] = v7;
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453F8, &qword_24F9FEDE8) + 36);
  sub_24F927468();
  v9 = sub_24F925808();
  v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870, &qword_24F949630) + 36)] = v9;
  v10 = a1[3];
  a2[2] = a1[2];
  a2[3] = v10;
  v11 = a1[1];
  *a2 = *a1;
  a2[1] = v11;
  v12 = a1[7];
  a2[6] = a1[6];
  a2[7] = v12;
  v13 = a1[5];
  a2[4] = a1[4];
  a2[5] = v13;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2453B0, &qword_24F9FEDC8) + 36)) = 256;
  return sub_24E60169C(v16, &v15, &qword_27F2453A0, &qword_24F9FEDB8);
}

uint64_t sub_24F4B14D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245340, &qword_24F9FED80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245348, &qword_24F9FED88);
  sub_24F4B1DBC();
  sub_24F4B1F00();
  return sub_24F925AB8();
}

uint64_t sub_24F4B15B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4B1640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PageToolbarItem(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24F4B16CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PageToolbarItem(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24F4B1748(uint64_t a1)
{
  result = type metadata accessor for PageToolbarItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F4B17C8()
{
  result = qword_27F245280;
  if (!qword_27F245280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245288, &qword_24F9FEB00);
    sub_24F4ADD60();
    sub_24F4AE270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245280);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit14ImageProvidingOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_24F4B18D0()
{
  result = qword_27F2452D0;
  if (!qword_27F2452D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452B8, &qword_24F9FED30);
    sub_24F4B195C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2452D0);
  }

  return result;
}

unint64_t sub_24F4B195C()
{
  result = qword_27F2452D8;
  if (!qword_27F2452D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452E0, &qword_24F9FED48);
    sub_24F4B19E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2452D8);
  }

  return result;
}

unint64_t sub_24F4B19E8()
{
  result = qword_27F2452E8;
  if (!qword_27F2452E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452F0, &qword_24F9FED50);
    sub_24F4B1AA0();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2452E8);
  }

  return result;
}

unint64_t sub_24F4B1AA0()
{
  result = qword_27F2452F8;
  if (!qword_27F2452F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245300, &qword_24F9FED58);
    sub_24E7DD2E0();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2452F8);
  }

  return result;
}

unint64_t sub_24F4B1B58()
{
  result = qword_27F245308;
  if (!qword_27F245308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452C0, &qword_24F9FED38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452B8, &qword_24F9FED30);
    sub_24F4B18D0();
    sub_24E63E314();
    swift_getOpaqueTypeConformance2();
    sub_24F4B1C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245308);
  }

  return result;
}

unint64_t sub_24F4B1C3C()
{
  result = qword_27F245310;
  if (!qword_27F245310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2452C8, &qword_24F9FED40);
    sub_24F4B1CF4();
    sub_24E602068(&qword_27F2188E8, &qword_27F2188F0, &qword_24F949650, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245310);
  }

  return result;
}

unint64_t sub_24F4B1CF4()
{
  result = qword_27F245318;
  if (!qword_27F245318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245320, &qword_24F9FED60);
    sub_24F4B18D0();
    sub_24E602068(&qword_27F2188E0, &qword_27F217870, &qword_24F949630, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245318);
  }

  return result;
}

unint64_t sub_24F4B1DBC()
{
  result = qword_27F245350;
  if (!qword_27F245350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245340, &qword_24F9FED80);
    sub_24F4B1E48();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245350);
  }

  return result;
}

unint64_t sub_24F4B1E48()
{
  result = qword_27F245358;
  if (!qword_27F245358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245360, &qword_24F9FED90);
    sub_24E602068(&qword_27F245368, &qword_27F245370, &qword_24F9FED98, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245358);
  }

  return result;
}

unint64_t sub_24F4B1F00()
{
  result = qword_27F245378;
  if (!qword_27F245378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245348, &qword_24F9FED88);
    sub_24E602068(&qword_27F245380, &qword_27F245388, &qword_24F9FEDA0, MEMORY[0x277D7EB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245378);
  }

  return result;
}

unint64_t sub_24F4B1FB0()
{
  result = qword_27F2453B8;
  if (!qword_27F2453B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A0, &qword_24F9FEDB8);
    sub_24F4B203C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453B8);
  }

  return result;
}

unint64_t sub_24F4B203C()
{
  result = qword_27F2453C0;
  if (!qword_27F2453C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453C8, &qword_24F9FEDD0);
    sub_24F4B20C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453C0);
  }

  return result;
}

unint64_t sub_24F4B20C8()
{
  result = qword_27F2453D0;
  if (!qword_27F2453D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453D8, &unk_24F9FEDD8);
    sub_24E60156C();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453D0);
  }

  return result;
}

unint64_t sub_24F4B2180()
{
  result = qword_27F2453E0;
  if (!qword_27F2453E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A8, &qword_24F9FEDC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A0, &qword_24F9FEDB8);
    sub_24F4B1FB0();
    sub_24E63E314();
    swift_getOpaqueTypeConformance2();
    sub_24F4B2264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453E0);
  }

  return result;
}

unint64_t sub_24F4B2264()
{
  result = qword_27F2453E8;
  if (!qword_27F2453E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453B0, &qword_24F9FEDC8);
    sub_24F4B231C();
    sub_24E602068(&qword_27F2188E8, &qword_27F2188F0, &qword_24F949650, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453E8);
  }

  return result;
}

unint64_t sub_24F4B231C()
{
  result = qword_27F2453F0;
  if (!qword_27F2453F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453F8, &qword_24F9FEDE8);
    sub_24F4B1FB0();
    sub_24E602068(&qword_27F2188E0, &qword_27F217870, &qword_24F949630, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2453F0);
  }

  return result;
}

unint64_t sub_24F4B23D4()
{
  result = qword_27F245400;
  if (!qword_27F245400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245390, &qword_24F9FEDA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A0, &qword_24F9FEDB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453A8, &qword_24F9FEDC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2453B0, &qword_24F9FEDC8);
    sub_24F4B1FB0();
    sub_24F4B2180();
    sub_24F4B2264();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F245408, &qword_27F245328, &qword_24F9FED68, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245400);
  }

  return result;
}

unint64_t sub_24F4B2534()
{
  result = qword_27F245430;
  if (!qword_27F245430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245430);
  }

  return result;
}

unint64_t sub_24F4B2594()
{
  result = qword_27F245450;
  if (!qword_27F245450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245438, &qword_24F9FEE10);
    sub_24F4B1AA0();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0, &unk_24F9B4DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245450);
  }

  return result;
}

uint64_t sub_24F4B2660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PageToolbarItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F4B2720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PageToolbarItem(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F4B27E4(uint64_t a1)
{
  result = type metadata accessor for LocalPlayerProvider(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ArcadeSubscription(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NetworkConnectionMonitor(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for PageToolbarItem(319);
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

unint64_t sub_24F4B28B4()
{
  result = qword_27F245470;
  if (!qword_27F245470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245298, &qword_24F9FECE0);
    sub_24E602068(&qword_27F245478, &qword_27F245480, &unk_24F9FEE88, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245470);
  }

  return result;
}

unint64_t sub_24F4B29F8()
{
  result = qword_27F245530;
  if (!qword_27F245530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454A8, &qword_24F9FEF00);
    sub_24F4B2AB0();
    sub_24E602068(&qword_27F245210, &qword_27F245140, &qword_24F9FE990, MEMORY[0x277CDF188]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245530);
  }

  return result;
}

unint64_t sub_24F4B2AB0()
{
  result = qword_27F245538;
  if (!qword_27F245538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245538);
  }

  return result;
}

unint64_t sub_24F4B2B04()
{
  result = qword_27F245540;
  if (!qword_27F245540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245510, &qword_24F9FEF68);
    sub_24F4B2B90();
    sub_24F4B2DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245540);
  }

  return result;
}

unint64_t sub_24F4B2B90()
{
  result = qword_27F245548;
  if (!qword_27F245548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245508, &qword_24F9FEF60);
    sub_24F4B2C60();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2233D0, &qword_24F958810);
    sub_24E680290();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245548);
  }

  return result;
}

unint64_t sub_24F4B2C60()
{
  result = qword_27F245550;
  if (!qword_27F245550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245528, &unk_24F9FEF80);
    sub_24F4B2CEC();
    sub_24F02E9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245550);
  }

  return result;
}

unint64_t sub_24F4B2CEC()
{
  result = qword_27F245558;
  if (!qword_27F245558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245520, &qword_24F9FEF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2233D0, &qword_24F958810);
    sub_24E680290();
    swift_getOpaqueTypeConformance2();
    sub_24F4B3EF0(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245558);
  }

  return result;
}

unint64_t sub_24F4B2DE4()
{
  result = qword_27F245560;
  if (!qword_27F245560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454C0, &qword_24F9FEF18);
    sub_24F4B2E70();
    sub_24F4B308C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245560);
  }

  return result;
}

unint64_t sub_24F4B2E70()
{
  result = qword_27F245568;
  if (!qword_27F245568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454E8, &qword_24F9FEF40);
    sub_24F4B2EFC();
    sub_24F4B3038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245568);
  }

  return result;
}

unint64_t sub_24F4B2EFC()
{
  result = qword_27F245570;
  if (!qword_27F245570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454E0, &qword_24F9FEF38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454D0, &qword_24F9FEF28);
    sub_24E602068(&qword_27F245578, &qword_27F2454D0, &qword_24F9FEF28, MEMORY[0x277D7EB00]);
    sub_24E620DE8();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245570);
  }

  return result;
}

unint64_t sub_24F4B3038()
{
  result = qword_27F245580;
  if (!qword_27F245580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245580);
  }

  return result;
}

unint64_t sub_24F4B308C()
{
  result = qword_27F245588;
  if (!qword_27F245588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245590, &qword_24F9FEF98);
    sub_24F4B3110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245588);
  }

  return result;
}

unint64_t sub_24F4B3110()
{
  result = qword_27F245598;
  if (!qword_27F245598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245598);
  }

  return result;
}

unint64_t sub_24F4B3164()
{
  result = qword_27F2455A0;
  if (!qword_27F2455A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2454B0, &qword_24F9FEF08);
    sub_24F4B29F8();
    sub_24F02E9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2455A0);
  }

  return result;
}

uint64_t sub_24F4B31F8()
{
  v1 = type metadata accessor for PageToolbarItemView(0);
  v2 = *(*(v1 - 8) + 80);

  if (*(v0 + 48) != 255)
  {
    sub_24E63FFA4(*(v0 + 32), *(v0 + 40));
  }

  v3 = v0 + ((v2 + 49) & ~v2) + *(v1 + 36);

  v4 = type metadata accessor for PageToolbarItem(0);
  v5 = (v3 + *(v4 + 20));
  type metadata accessor for PageToolbarItem.Appearance(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        if (*(v5 + 32) != 255)
        {
          sub_24E63FFA4(v5[2], v5[3]);
        }
      }
    }

    else
    {

      v8 = type metadata accessor for Player(0);
      v9 = v8[6];
      v36 = sub_24F9289E8();
      v35 = *(v36 - 8);
      v34 = *(v35 + 8);
      v34(v5 + v9);

      if (*(v5 + v8[9] + 8) != 1)
      {
      }

      v10 = v5 + v8[13];
      v11 = type metadata accessor for CallProviderConversationHandleSet(0);
      if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
      {
        v33 = v11;
        v12 = type metadata accessor for CallProviderConversationHandle(0);
        v13 = *(*(v12 - 8) + 48);
        if (!(v13)(v10, 1, v12))
        {

          v14 = *(type metadata accessor for CallProvider(0) + 24);
          if (!(*(v35 + 48))(&v10[v14], 1, v36))
          {
            (v34)(&v10[v14], v36);
          }
        }

        v32 = &v10[*(v33 + 20)];
        if (!v13())
        {

          v15 = *(type metadata accessor for CallProvider(0) + 24);
          if (!(*(v35 + 48))(&v32[v15], 1, v36))
          {
            (v34)(&v32[v15], v36);
          }
        }
      }

      if (*(v5 + v8[15] + 8))
      {
      }

      v16 = v5 + v8[16];
      PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
      if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
      {

        v18 = type metadata accessor for Game(0);
        (v34)(&v16[v18[18]], v36);
        v19 = v18[19];
        if (!(*(v35 + 48))(&v16[v19], 1, v36))
        {
          (v34)(&v16[v19], v36);
        }

        v20 = v18[21];
        v21 = sub_24F920818();
        v22 = *(v21 - 8);
        if (!(*(v22 + 48))(&v16[v20], 1, v21))
        {
          (*(v22 + 8))(&v16[v20], v21);
        }
      }

      v23 = v5 + v8[17];
      ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
      if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
      {

        v25 = type metadata accessor for Game(0);
        (v34)(&v23[v25[18]], v36);
        v26 = v25[19];
        if (!(*(v35 + 48))(&v23[v26], 1, v36))
        {
          (v34)(&v23[v26], v36);
        }

        v27 = v25[21];
        v28 = sub_24F920818();
        v29 = *(v28 - 8);
        if (!(*(v29 + 48))(&v23[v27], 1, v28))
        {
          (*(v29 + 8))(&v23[v27], v28);
        }
      }
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        sub_24E63FFA4(*v5, v5[1]);
        sub_24E63FFA4(v5[3], v5[4]);
        break;
      case 3:

        break;
      case 4:
        v7 = sub_24F91F4A8();
        (*(*(v7 - 8) + 8))(v5, v7);
        break;
    }
  }

  v30 = (v3 + *(v4 + 24));
  if (v30[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return swift_deallocObject();
}

uint64_t sub_24F4B3A24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1(0) - 8);
  v9 = (*(v8 + 80) + 49) & ~*(v8 + 80);
  return sub_24F4AE2FC(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), (v4 + v9), *(v4 + v9 + *(v8 + 64)), a2, a4, a3);
}

unint64_t sub_24F4B3B38()
{
  result = qword_27F2455B0;
  if (!qword_27F2455B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2455B8, &qword_24F9FF1A8);
    sub_24F4B2B04();
    sub_24F4B3164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2455B0);
  }

  return result;
}

uint64_t objectdestroy_27Tm_0()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  }

  return swift_deallocObject();
}

unint64_t sub_24F4B3C9C()
{
  result = qword_27F2455E8;
  if (!qword_27F2455E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2455D8, &qword_24F9FF2B8);
    sub_24F4B3D54();
    sub_24E602068(&qword_27F232F18, &qword_27F232F00, &unk_24F9AB4A0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2455E8);
  }

  return result;
}

unint64_t sub_24F4B3D54()
{
  result = qword_27F2455F0;
  if (!qword_27F2455F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2455D0, &qword_24F9FF2B0);
    sub_24F4B3E0C();
    sub_24E602068(&qword_27F2188E0, &qword_27F217870, &qword_24F949630, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2455F0);
  }

  return result;
}

unint64_t sub_24F4B3E0C()
{
  result = qword_27F2455F8;
  if (!qword_27F2455F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2455C0, &qword_24F9FF2A0);
    sub_24E602068(&qword_27F245600, &qword_27F245608, &qword_24F9FF2C8, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2455F8);
  }

  return result;
}

uint64_t sub_24F4B3EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4B3F40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24E672C48(a1, a2);
  }

  return a1;
}

uint64_t sub_24F4B3F58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24E63FFA4(a1, a2);
  }

  return a1;
}

unint64_t sub_24F4B4014()
{
  result = qword_27F245668;
  if (!qword_27F245668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245670, &qword_24F9FF350);
    sub_24F4B3C9C();
    sub_24F4B3E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245668);
  }

  return result;
}

unint64_t sub_24F4B40A4()
{
  result = qword_27F245678;
  if (!qword_27F245678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245650, &qword_24F9FF340);
    sub_24F4B415C();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245678);
  }

  return result;
}

unint64_t sub_24F4B415C()
{
  result = qword_27F245680;
  if (!qword_27F245680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245640, &qword_24F9FF330);
    sub_24F4B4214();
    sub_24E602068(&qword_27F2456B0, &qword_27F245648, &qword_24F9FF338, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245680);
  }

  return result;
}

unint64_t sub_24F4B4214()
{
  result = qword_27F245688;
  if (!qword_27F245688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245638, &qword_24F9FF328);
    sub_24F4B42A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245688);
  }

  return result;
}

unint64_t sub_24F4B42A0()
{
  result = qword_27F245690;
  if (!qword_27F245690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245630, &qword_24F9FF320);
    sub_24F4B432C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245690);
  }

  return result;
}

unint64_t sub_24F4B432C()
{
  result = qword_27F245698;
  if (!qword_27F245698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245628, &qword_24F9FF318);
    sub_24E602068(&qword_27F2456A0, &qword_27F2456A8, &qword_24F9FF358, MEMORY[0x277CE11A8]);
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245698);
  }

  return result;
}

uint64_t sub_24F4B4428(uint64_t a1)
{
  v2 = sub_24F4B4A5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4B4464(uint64_t a1)
{
  v2 = sub_24F4B4A5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4B44A0()
{
  if (*v0)
  {
    return 0x79536D6574737973;
  }

  else
  {
    return 0x6D49656C646E7562;
  }
}

uint64_t sub_24F4B44EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D49656C646E7562 && a2 == 0xEB00000000656761;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79536D6574737973 && a2 == 0xEC0000006C6F626DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F4B45D0(uint64_t a1)
{
  v2 = sub_24F4B49B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4B460C(uint64_t a1)
{
  v2 = sub_24F4B49B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4B4648(uint64_t a1)
{
  v2 = sub_24F4B4A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4B4684(uint64_t a1)
{
  v2 = sub_24F4B4A08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageProviding.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456B8, &qword_24F9FF360);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456C0, &qword_24F9FF368);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456C8, &qword_24F9FF370);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4B49B4();
  sub_24F92D128();
  if (v13)
  {
    v26 = 1;
    sub_24F4B4A08();
    v14 = v20;
    sub_24F92CC98();
    v15 = v22;
    sub_24F92CD08();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_24F4B4A5C();
    sub_24F92CC98();
    v16 = v19;
    sub_24F92CD08();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_24F4B49B4()
{
  result = qword_27F2456D0;
  if (!qword_27F2456D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2456D0);
  }

  return result;
}

unint64_t sub_24F4B4A08()
{
  result = qword_27F2456D8;
  if (!qword_27F2456D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2456D8);
  }

  return result;
}

unint64_t sub_24F4B4A5C()
{
  result = qword_27F2456E0;
  if (!qword_27F2456E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2456E0);
  }

  return result;
}

uint64_t ImageProviding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456E8, &qword_24F9FF378);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456F0, &qword_24F9FF380);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2456F8, &unk_24F9FF388);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24F4B49B4();
  v13 = v34;
  sub_24F92D108();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_24F92CC78();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_24E643430();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_24F92C918();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v26 = &type metadata for ImageProviding;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_24F4B4A08();
        sub_24F92CBA8();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_24F92CC28();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_24F4B4A5C();
        v28 = v7;
        sub_24F92CBA8();
        v19 = v33;
        v18 = v34;
        v21 = sub_24F92CC28();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

unint64_t sub_24F4B5010()
{
  result = qword_27F245700;
  if (!qword_27F245700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245700);
  }

  return result;
}

unint64_t sub_24F4B5068()
{
  result = qword_27F245708;
  if (!qword_27F245708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245708);
  }

  return result;
}

unint64_t sub_24F4B50C0()
{
  result = qword_27F245710;
  if (!qword_27F245710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245710);
  }

  return result;
}

unint64_t sub_24F4B5118()
{
  result = qword_27F245718;
  if (!qword_27F245718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245718);
  }

  return result;
}

unint64_t sub_24F4B5170()
{
  result = qword_27F245720;
  if (!qword_27F245720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245720);
  }

  return result;
}

unint64_t sub_24F4B51C8()
{
  result = qword_27F245728;
  if (!qword_27F245728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245728);
  }

  return result;
}

unint64_t sub_24F4B5220()
{
  result = qword_27F245730;
  if (!qword_27F245730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245730);
  }

  return result;
}

unint64_t sub_24F4B5278()
{
  result = qword_27F245738;
  if (!qword_27F245738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245738);
  }

  return result;
}

unint64_t sub_24F4B52D0()
{
  result = qword_27F245740;
  if (!qword_27F245740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245740);
  }

  return result;
}

id sub_24F4B535C()
{
  result = [objc_opt_self() shared];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result inboxContactsOnly];

    *v3 = v4 ^ 1;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GSKTabChangeAction.init(navigationTab:actions:popToRoot:actionMetrics:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  v7 = *(type metadata accessor for GSKTabChangeAction(0) + 28);
  v8 = sub_24F928AD8();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t type metadata accessor for GSKTabChangeAction(uint64_t a1)
{
  result = qword_27F245748;
  if (!qword_27F245748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GSKTabChangeAction.NavigationTab.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24F928348();
  if (!v7)
  {
    goto LABEL_6;
  }

  if (v6 == 0x64657463656C6573 && v7 == 0xE800000000000000 || (v8 = v6, v9 = v7, (sub_24F92CE08() & 1) != 0))
  {

LABEL_6:
    v10 = sub_24F9285B8();
    (*(*(v10 - 8) + 8))(a2, v10);
    v11 = sub_24F928388();
    result = (*(*(v11 - 8) + 8))(a1, v11);
    v13 = 0;
    v14 = 11;
    goto LABEL_7;
  }

  StoreTab.Identifier.init(rawValue:)(v8, v9, &v17);
  v15 = sub_24F9285B8();
  (*(*(v15 - 8) + 8))(a2, v15);
  v16 = sub_24F928388();
  result = (*(*(v16 - 8) + 8))(a1, v16);
  v14 = v18;
  if (v18 == 11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v17;
  }

LABEL_7:
  *a3 = v13;
  a3[1] = v14;
  return result;
}

uint64_t GSKTabChangeAction.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v54 = a3;
  v56 = a2;
  v63 = sub_24F9285B8();
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v46 - v6;
  v7 = sub_24F928AD8();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v51 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v49 = &v46 - v16;
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = sub_24F92AC28();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v25 = v20;
  v26 = *(v13 + 8);
  v53 = v12;
  v55 = v13 + 8;
  v26(v25, v12);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    sub_24E601704(v11, &qword_27F2213B0, &qword_24F965EC0);
    v48 = MEMORY[0x277D84F90];
    v27 = v56;
  }

  else
  {
    (*(v22 + 32))(v24, v11, v21);
    v27 = v56;
    v48 = sub_24F928CF8();
    (*(v22 + 8))(v24, v21);
  }

  v28 = v52;
  sub_24F928398();
  (*(v60 + 16))(v47, v27, v63);
  v29 = v50;
  v30 = v59;
  sub_24F929548();
  v31 = v58;
  v32 = *(v58 + 48);
  if (v32(v29, 1, v30) == 1)
  {
    sub_24F928A98();
    if (v32(v29, 1, v30) != 1)
    {
      sub_24E601704(v29, &qword_27F223CE8, &unk_24F983FE0);
    }
  }

  else
  {
    (*(v31 + 32))(v57, v29, v30);
  }

  v33 = v49;
  sub_24F928398();
  v34 = sub_24F928348();
  if (!v35)
  {
    v37 = v53;
    v26(v33, v53);
    goto LABEL_14;
  }

  v36 = v35;
  v37 = v53;
  if (v34 == 0x64657463656C6573 && v35 == 0xE800000000000000 || (v38 = v34, (sub_24F92CE08() & 1) != 0))
  {
    v26(v33, v37);

LABEL_14:
    v39 = 0;
    v40 = 11;
    goto LABEL_15;
  }

  StoreTab.Identifier.init(rawValue:)(v38, v36, &v61);
  v26(v33, v37);
  v40 = v62;
  if (v62 == 11)
  {
    v39 = 0;
  }

  else
  {
    v39 = v61;
  }

LABEL_15:
  v41 = v51;
  sub_24F928398();
  v42 = sub_24F928278();
  (*(v60 + 8))(v56, v63);
  v26(v28, v37);
  v26(v41, v37);
  v43 = v54;
  *v54 = v39;
  v43[1] = v40;
  v43[2] = v48;
  *(v43 + 24) = v42 & 1;
  v44 = type metadata accessor for GSKTabChangeAction(0);
  return (*(v58 + 32))(v43 + *(v44 + 28), v57, v59);
}

double GSKTabChangeAction.navigationTab.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_24E9557A0(v2, v3);
}

uint64_t GSKTabChangeAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GSKTabChangeAction(0) + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _s12GameStoreKit18GSKTabChangeActionV13NavigationTabO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 == 11)
  {
    if (v5 == 11)
    {
      sub_24E955DF8(*a1, 0xBuLL);
      sub_24E955DF8(v4, 0xBuLL);
      v6 = 1;
      return v6 & 1;
    }

LABEL_5:
    sub_24E9557A0(*a2, *(a2 + 8));
    sub_24E9557A0(v2, v3);
    sub_24E955DF8(v2, v3);
    sub_24E955DF8(v4, v5);
    v6 = 0;
    return v6 & 1;
  }

  if (v5 == 11)
  {
    goto LABEL_5;
  }

  v7 = StoreTab.Identifier.rawValue.getter();
  v9 = v8;
  if (v7 == StoreTab.Identifier.rawValue.getter() && v9 == v10)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_24F92CE08();
  }

  sub_24E9557A0(v4, v5);
  sub_24E9557A0(v2, v3);
  sub_24E955DF8(v2, v3);
  sub_24E955DF8(v4, v5);

  return v6 & 1;
}

uint64_t sub_24F4B5FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F4B6090(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F4B6134(uint64_t a1)
{
  sub_24F4B61D0(319);
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F4B61D0(uint64_t a1)
{
  if (!qword_27F225340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22C070, &unk_24F947CB0);
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F225340);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit18GSKTabChangeActionV13NavigationTabO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 11;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F4B6258(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 10;
  if (v4 < 0xC)
  {
    v5 = 0;
  }

  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F4B62BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_24F4B630C(void *result, unsigned int a2)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 2147483637;
  }

  else if (a2)
  {
    result[1] = a2 + 10;
  }

  return result;
}

uint64_t sub_24F4B6350()
{
  if (([v0 supportsAudioOnly] & 1) != 0 || (result = objc_msgSend(v0, sel_supportsAudioAndVideo), result))
  {
    v2 = [v0 bundleIdentifier];
    if (!v2)
    {
      return 1;
    }

    v3 = v2;
    v4 = sub_24F92B0D8();
    v6 = v5;

    if (v4 == 0xD000000000000012 && 0x800000024FA75B70 == v6)
    {
    }

    else
    {
      v8 = sub_24F92CE08();

      if ((v8 & 1) == 0)
      {
        return 1;
      }
    }

    return [objc_opt_self() supportsFaceTimeAudioCalls];
  }

  return result;
}

void sub_24F4B6440(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v258 = a3;
  v265 = a2;
  v251 = type metadata accessor for CallProviderConversationHandles(0);
  v250 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v253 = (&v245 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758, &unk_24F9FF9D0);
  MEMORY[0x28223BE20](v7 - 8);
  v252 = (&v245 - v8);
  v9 = type metadata accessor for CallProviderConversationHandle(0);
  MEMORY[0x28223BE20](v9);
  v266 = (&v245 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v248 = (&v245 - v12);
  MEMORY[0x28223BE20](v13);
  v245 = &v245 - v14;
  MEMORY[0x28223BE20](v15);
  v249 = (&v245 - v16);
  v18 = MEMORY[0x28223BE20](v17);
  v246 = &v245 - v19;
  v20 = *(a1 + 8);
  v262 = *a1;
  v21 = *(a1 + 24);
  *&v272 = *(a1 + 16);
  v22 = *(a1 + 32);
  v256 = *(a1 + 40);
  v257 = v22;
  v268 = v23;
  v24 = v23 + 56;
  v25 = *(v23 + 56);
  v25(a4, 1, 1, v9, v18);
  v247 = type metadata accessor for CallProviderConversationHandleSet(0);
  v26 = *(v247 + 20);
  v254 = a4;
  v255 = v26;
  v264 = v9;
  v270 = v25;
  *&v271 = v24;
  (v25)(v26 + a4, 1, 1, v9);
  v261 = 0x800000024FA75B70;
  v263 = v21;
  v27 = (v21 >> 62);
  v269 = v20;
  v267 = (v21 >> 62);
  if (v20)
  {
    v28 = v269;
    if ((sub_24F4B6350() & 1) == 0)
    {
LABEL_10:

      goto LABEL_11;
    }

    v29 = [v28 bundleIdentifier];
    if (v29)
    {
      v30 = v29;
      v31 = sub_24F92B0D8();
      v33 = v32;

      if (v31 == 0xD000000000000012 && v261 == v33)
      {

        goto LABEL_8;
      }

      v34 = sub_24F92CE08();

      if (v34)
      {
LABEL_8:
        if ([objc_opt_self() supportsFaceTimeAudioCalls])
        {
          goto LABEL_9;
        }

        goto LABEL_10;
      }
    }

LABEL_9:
    v260 = v269;
    goto LABEL_44;
  }

LABEL_11:
  if (v27)
  {
    goto LABEL_41;
  }

  for (i = *((v263 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v36 = 0;
    v37 = v263 & 0xC000000000000001;
    v27 = (v263 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v37)
      {
        v39 = MEMORY[0x253052270](v36, v263);
      }

      else
      {
        if (v36 >= *(v27 + 2))
        {
          goto LABEL_40;
        }

        v39 = *(v263 + 8 * v36 + 32);
      }

      v28 = v39;
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (([v39 supportsAudioOnly] & 1) != 0 || objc_msgSend(v28, sel_supportsAudioAndVideo))
      {
        v41 = [v28 bundleIdentifier];
        if (!v41)
        {
          goto LABEL_32;
        }

        v42 = v41;
        v43 = sub_24F92B0D8();
        v45 = v44;

        if (v43 == 0xD000000000000012 && v261 == v45)
        {
        }

        else
        {
          v47 = sub_24F92CE08();

          if ((v47 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        if ([objc_opt_self() supportsFaceTimeAudioCalls])
        {
LABEL_32:
          v48 = [v28 bundleIdentifier];
          if (!v48)
          {
            goto LABEL_38;
          }

          v49 = v48;
          v50 = sub_24F92B0D8();
          v52 = v51;

          if (v50 == 0xD000000000000012 && v261 == v52)
          {
          }

          else
          {
            v38 = sub_24F92CE08();

            if ((v38 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          if ([objc_opt_self() supportsFaceTimeAudioCalls])
          {
            goto LABEL_38;
          }
        }
      }

      ++v36;
      if (v40 == i)
      {
        v28 = 0;
LABEL_38:
        v27 = v267;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v28 = 0;
LABEL_43:
  v260 = v28;
LABEL_44:
  v53 = v28;
  if (!v272)
  {
LABEL_55:
    if (v27)
    {
      goto LABEL_74;
    }

    for (j = *((v263 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_24F92C738())
    {
      v62 = 0;
      v63 = v263 & 0xC000000000000001;
      v64 = v263 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v63)
        {
          v66 = MEMORY[0x253052270](v62, v263);
        }

        else
        {
          if (v62 >= *(v64 + 16))
          {
            goto LABEL_73;
          }

          v66 = *(v263 + 8 * v62 + 32);
        }

        v54 = v66;
        v67 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if ([v66 supportsAudioAndVideo] && (objc_msgSend(v54, sel_isSystemProvider) & 1) != 0)
        {
          v68 = [v54 bundleIdentifier];
          if (!v68)
          {
            goto LABEL_76;
          }

          v69 = v68;
          v70 = sub_24F92B0D8();
          v72 = v71;

          if (v70 == 0xD000000000000012 && v261 == v72)
          {
          }

          else
          {
            v65 = sub_24F92CE08();

            if ((v65 & 1) == 0)
            {
              goto LABEL_76;
            }
          }

          if ([objc_opt_self() supportsFaceTimeVideoCalls])
          {
            goto LABEL_76;
          }
        }

        ++v62;
        if (v67 == j)
        {
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      ;
    }

LABEL_75:
    v54 = 0;
LABEL_76:
    v259 = v54;
    goto LABEL_77;
  }

  v54 = v272;
  if (![v54 supportsAudioAndVideo] || !objc_msgSend(v54, sel_isSystemProvider))
  {
LABEL_54:

    goto LABEL_55;
  }

  v55 = [v54 bundleIdentifier];
  if (v55)
  {
    v56 = v55;
    v57 = sub_24F92B0D8();
    v59 = v58;

    if (v57 == 0xD000000000000012 && v261 == v59)
    {

      goto LABEL_52;
    }

    v60 = sub_24F92CE08();

    if (v60)
    {
LABEL_52:
      if ([objc_opt_self() supportsFaceTimeVideoCalls])
      {
        goto LABEL_53;
      }

      goto LABEL_54;
    }
  }

LABEL_53:
  v259 = v272;
LABEL_77:
  v73 = v54;
  if (!v260)
  {
    goto LABEL_134;
  }

  v74 = v265;
  v75 = *(v265 + 16);
  if (v75)
  {
    v76 = 0;
    v77 = v265 + 32;
    do
    {
      if (v76 >= *(v74 + 16))
      {
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
        return;
      }

      v78 = (v77 + 16 * v76);
      v79 = v78[1];
      if (*(v79 + 16))
      {
        v80 = *v78;
        v81 = 1 << *(v79 + 32);
        if (v81 < 64)
        {
          v82 = ~(-1 << v81);
        }

        else
        {
          v82 = -1;
        }

        v83 = v82 & *(v79 + 56);
        v84 = (v81 + 63) >> 6;

        swift_bridgeObjectRetain_n();
        v85 = 0;
        do
        {
          if (v83)
          {
            v86 = v85;
          }

          else
          {
            do
            {
              v86 = v85 + 1;
              if (__OFADD__(v85, 1))
              {
                goto LABEL_294;
              }

              if (v86 >= v84)
              {

                goto LABEL_99;
              }

              v83 = *(v79 + 56 + 8 * v86);
              ++v85;
            }

            while (!v83);
            v85 = v86;
          }

          v87 = __clz(__rbit64(v83));
          v83 &= v83 - 1;
        }

        while (([v260 supportsHandleType_] & 1) != 0);

        v74 = v265;
      }

      ++v76;
    }

    while (v76 != v75);
  }

  v88 = v258;
  if (!v258)
  {
    goto LABEL_133;
  }

  v89 = v258[2];
  if (!v89)
  {
    goto LABEL_133;
  }

  v90 = v258 + ((*(v268 + 80) + 32) & ~*(v268 + 80));

  v91 = 0;
  while (1)
  {
    if (v91 >= v88[2])
    {
      goto LABEL_307;
    }

    v101 = v249;
    sub_24F4B9AF8(&v90[*(v268 + 72) * v91], v249, type metadata accessor for CallProviderConversationHandle);
    v102 = *v101;
    v103 = v101[1];
    v104 = [v260 identifier];
    v105 = sub_24F92B0D8();
    v107 = v106;

    if (v102 == v105 && v103 == v107)
    {
      break;
    }

    v109 = sub_24F92CE08();

    if (v109)
    {
      goto LABEL_119;
    }

LABEL_110:
    ++v91;
    sub_24F4B9A98(v249, type metadata accessor for CallProviderConversationHandle);
    v88 = v258;
    if (v91 == v89)
    {
      goto LABEL_296;
    }
  }

LABEL_119:
  v110 = *(v249 + *(v264 + 20) + 8);
  if (!*(v110 + 16))
  {
    goto LABEL_110;
  }

  v111 = 1 << *(v110 + 32);
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  else
  {
    v112 = -1;
  }

  v113 = v112 & *(v110 + 56);
  v114 = (v111 + 63) >> 6;

  swift_bridgeObjectRetain_n();
  v115 = 0;
LABEL_124:
  if (v113)
  {
    v116 = v115;
    goto LABEL_130;
  }

  while (1)
  {
    v116 = v115 + 1;
    if (__OFADD__(v115, 1))
    {
      goto LABEL_299;
    }

    if (v116 >= v114)
    {
      break;
    }

    v113 = *(v110 + 56 + 8 * v116);
    ++v115;
    if (v113)
    {
      v115 = v116;
LABEL_130:
      v117 = __clz(__rbit64(v113));
      v113 &= v113 - 1;
      if (([v260 supportsHandleType_] & 1) == 0)
      {

        goto LABEL_110;
      }

      goto LABEL_124;
    }
  }

  v241 = v246;
  sub_24F4B9B60(v249, v246, type metadata accessor for CallProviderConversationHandle);
  v242 = (v241 + *(v264 + 20));
  v80 = *v242;
  v79 = v242[1];

  sub_24F4B9A98(v241, type metadata accessor for CallProviderConversationHandle);
LABEL_99:
  v92 = [v260 bundleIdentifier];
  if (!v92)
  {
LABEL_108:
    v99 = v252;
    sub_24F042070(v260, v252);
    v100 = (v99 + *(v264 + 20));
    *v100 = v80;
    v100[1] = v79;
    (v270)(v99, 0, 1);
    sub_24F4B803C(v99, v254);
    if (v259)
    {
      goto LABEL_135;
    }

    goto LABEL_164;
  }

  v93 = v92;
  v94 = sub_24F92B0D8();
  v96 = v95;

  if (v94 == 0xD000000000000012 && v261 == v96)
  {
  }

  else
  {
    v98 = sub_24F92CE08();

    if ((v98 & 1) == 0)
    {
      goto LABEL_108;
    }
  }

  if ([objc_opt_self() supportsFaceTimeAudioCalls])
  {
    goto LABEL_108;
  }

LABEL_133:

LABEL_134:
  while (2)
  {
    v118 = v254;
    sub_24E601704(v254, &qword_27F245758, &unk_24F9FF9D0);
    (v270)(v118, 1, 1, v264);
    if (!v259)
    {
      goto LABEL_164;
    }

LABEL_135:
    v119 = v265;
    v120 = *(v265 + 16);
    if (!v120)
    {
      goto LABEL_152;
    }

    v121 = 0;
    v122 = v265 + 32;
    do
    {
      if (v121 >= *(v119 + 16))
      {
        goto LABEL_306;
      }

      v123 = (v122 + 16 * v121);
      v124 = v123[1];
      if (!*(v124 + 16))
      {
        goto LABEL_151;
      }

      v125 = *v123;
      v126 = 1 << *(v124 + 32);
      if (v126 < 64)
      {
        v127 = ~(-1 << v126);
      }

      else
      {
        v127 = -1;
      }

      v128 = v127 & *(v124 + 56);
      v129 = (v126 + 63) >> 6;

      swift_bridgeObjectRetain_n();
      v130 = 0;
      do
      {
        if (v128)
        {
          v131 = v130;
          goto LABEL_149;
        }

        do
        {
          v131 = v130 + 1;
          if (__OFADD__(v130, 1))
          {
            goto LABEL_295;
          }

          if (v131 >= v129)
          {

            goto LABEL_156;
          }

          v128 = *(v124 + 56 + 8 * v131);
          ++v130;
        }

        while (!v128);
        v130 = v131;
LABEL_149:
        v132 = __clz(__rbit64(v128));
        v128 &= v128 - 1;
      }

      while (([v259 supportsHandleType_] & 1) != 0);

      v119 = v265;
LABEL_151:
      ++v121;
    }

    while (v121 != v120);
LABEL_152:
    v133 = v258;
    if (!v258 || (v134 = v258[2]) == 0)
    {

LABEL_164:
      v145 = v254;
      v146 = v255;
      sub_24E601704(v255 + v254, &qword_27F245758, &unk_24F9FF9D0);
      (v270)(v146 + v145, 1, 1, v264);
      v138 = v267;
      goto LABEL_191;
    }

    v135 = v258 + ((*(v268 + 80) + 32) & ~*(v268 + 80));

    v136 = 0;
    while (1)
    {
      if (v136 >= v133[2])
      {
        goto LABEL_308;
      }

      v149 = v248;
      sub_24F4B9AF8(&v135[*(v268 + 72) * v136], v248, type metadata accessor for CallProviderConversationHandle);
      v150 = *v149;
      v151 = v149[1];
      v152 = [v259 identifier];
      v153 = sub_24F92B0D8();
      v155 = v154;

      if (v150 == v153 && v151 == v155)
      {
      }

      else
      {
        v157 = sub_24F92CE08();

        if ((v157 & 1) == 0)
        {
          goto LABEL_168;
        }
      }

      v158 = *(v248 + *(v264 + 20) + 8);
      if (*(v158 + 16))
      {
        break;
      }

LABEL_168:
      ++v136;
      sub_24F4B9A98(v248, type metadata accessor for CallProviderConversationHandle);
      v133 = v258;
      if (v136 == v134)
      {

        goto LABEL_164;
      }
    }

    v159 = 1 << *(v158 + 32);
    if (v159 < 64)
    {
      v160 = ~(-1 << v159);
    }

    else
    {
      v160 = -1;
    }

    v161 = v160 & *(v158 + 56);
    v162 = (v159 + 63) >> 6;

    swift_bridgeObjectRetain_n();
    v163 = 0;
LABEL_182:
    if (v161)
    {
      v164 = v163;
      goto LABEL_188;
    }

    while (1)
    {
      v164 = v163 + 1;
      if (__OFADD__(v163, 1))
      {
        goto LABEL_300;
      }

      if (v164 >= v162)
      {
        break;
      }

      v161 = *(v158 + 56 + 8 * v164);
      ++v163;
      if (v161)
      {
        v163 = v164;
LABEL_188:
        v165 = __clz(__rbit64(v161));
        v161 &= v161 - 1;
        if (([v259 supportsHandleType_] & 1) == 0)
        {

          goto LABEL_168;
        }

        goto LABEL_182;
      }
    }

    v243 = v245;
    sub_24F4B9B60(v248, v245, type metadata accessor for CallProviderConversationHandle);
    v244 = (v243 + *(v264 + 20));
    v125 = *v244;
    v124 = v244[1];

    sub_24F4B9A98(v243, type metadata accessor for CallProviderConversationHandle);
LABEL_156:
    v137 = [v259 bundleIdentifier];
    v138 = v267;
    if (v137)
    {
      v139 = v137;
      v140 = sub_24F92B0D8();
      v142 = v141;

      if (v140 == 0xD000000000000012 && v261 == v142)
      {
      }

      else
      {
        v144 = sub_24F92CE08();

        if ((v144 & 1) == 0)
        {
          goto LABEL_167;
        }
      }

      if ([objc_opt_self() supportsFaceTimeVideoCalls])
      {
        goto LABEL_167;
      }

      v166 = v254;
      v167 = v255;
      sub_24E601704(v255 + v254, &qword_27F245758, &unk_24F9FF9D0);
      v168 = v167 + v166;
      v138 = v267;
      (v270)(v168, 1, 1, v264);
    }

    else
    {
LABEL_167:
      v147 = v252;
      sub_24F042070(v259, v252);
      v148 = (v147 + *(v264 + 20));
      *v148 = v125;
      v148[1] = v124;
      (v270)(v147, 0, 1);
      sub_24F4B803C(v147, v255 + v254);
    }

LABEL_191:

    if (!v138)
    {
      v169 = *((v263 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v170 = v265;
      if (v169)
      {
        goto LABEL_193;
      }

LABEL_303:

      v240 = MEMORY[0x277D84F90];
      goto LABEL_304;
    }

LABEL_302:
    v169 = sub_24F92C738();
    v170 = v265;
    if (!v169)
    {
      goto LABEL_303;
    }

LABEL_193:
    v171 = 0;
    v256 = (v263 & 0xC000000000000001);
    v249 = (v263 & 0xFFFFFFFFFFFFFF8);
    v248 = (v263 + 32);
    v172 = (v170 + 32);
    v173 = v258;
    if (!v258)
    {
      v173 = MEMORY[0x277D84F90];
    }

    v269 = v173;
    v270 = v172;
    v255 = MEMORY[0x277D84F90];
    v252 = v169;
    while (1)
    {
      if (v256)
      {
        v174 = MEMORY[0x253052270](v171, v263);
      }

      else
      {
        if (v171 >= v249[2])
        {
          goto LABEL_301;
        }

        v174 = v248[v171];
      }

      v175 = v174;
      v176 = __OFADD__(v171, 1);
      v171 = v171 + 1;
      if (v176)
      {
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
        goto LABEL_302;
      }

      if (([v174 supportsAudioOnly] & 1) != 0 || objc_msgSend(v175, sel_supportsAudioAndVideo))
      {
        v177 = [v175 bundleIdentifier];
        if (!v177)
        {
          goto LABEL_216;
        }

        v178 = v171;
        v179 = v177;
        v180 = sub_24F92B0D8();
        v182 = v181;

        if (v180 == 0xD000000000000012 && v261 == v182)
        {

          v171 = v178;
        }

        else
        {
          v184 = sub_24F92CE08();

          v171 = v178;
          if ((v184 & 1) == 0)
          {
            goto LABEL_216;
          }
        }

        if ([objc_opt_self() supportsFaceTimeAudioCalls])
        {
          goto LABEL_216;
        }
      }

      if (![v175 supportsAudioAndVideo] || (objc_msgSend(v175, sel_isSystemProvider) & 1) == 0)
      {

        goto LABEL_197;
      }

LABEL_216:
      v257 = v171;
      v185 = [v175 bundleIdentifier];
      if (!v185)
      {
        goto LABEL_223;
      }

      v186 = v185;
      v187 = sub_24F92B0D8();
      v189 = v188;

      if (v187 == 0xD000000000000012 && v261 == v189)
      {
      }

      else
      {
        v190 = sub_24F92CE08();

        if ((v190 & 1) == 0)
        {
          goto LABEL_223;
        }
      }

      v191 = objc_opt_self();
      if (([v191 supportsFaceTimeAudioCalls] & 1) == 0 && !objc_msgSend(v191, sel_supportsFaceTimeVideoCalls))
      {

        v171 = v257;
        goto LABEL_197;
      }

LABEL_223:
      v192 = v265;
      v193 = *(v265 + 16);
      if (v193)
      {
        break;
      }

      v195 = MEMORY[0x277D84F90];
LABEL_246:
      v209 = *(v269 + 2);
      if (v209)
      {
        v267 = &v269[(*(v268 + 80) + 32) & ~*(v268 + 80)];

        v210 = 0;
        v211 = MEMORY[0x277D84F90];
        v212 = v266;
        v262 = v209;
        while (1)
        {
          if (v210 >= *(v269 + 2))
          {
            goto LABEL_293;
          }

          *&v272 = v211;
          sub_24F4B9AF8(&v267[*(v268 + 72) * v210], v212, type metadata accessor for CallProviderConversationHandle);
          v213 = *v212;
          v214 = v212[1];
          v215 = [v175 identifier];
          v216 = sub_24F92B0D8();
          v218 = v217;

          if (v213 == v216 && v214 == v218)
          {
          }

          else
          {
            v220 = sub_24F92CE08();

            if ((v220 & 1) == 0)
            {
              goto LABEL_248;
            }
          }

          v221 = v212 + *(v264 + 20);
          v222 = *(v221 + 1);
          if (*(v222 + 16))
          {
            v223 = 1 << *(v222 + 32);
            if (v223 < 64)
            {
              v224 = ~(-1 << v223);
            }

            else
            {
              v224 = -1;
            }

            v225 = v224 & *(v222 + 56);
            v226 = (v223 + 63) >> 6;

            swift_bridgeObjectRetain_n();
            v227 = 0;
            while (v225)
            {
              v228 = v227;
LABEL_269:
              v229 = __clz(__rbit64(v225));
              v225 &= v225 - 1;
              if (([v175 supportsHandleType_] & 1) == 0)
              {

                v212 = v266;
                v209 = v262;
                goto LABEL_248;
              }
            }

            while (1)
            {
              v228 = v227 + 1;
              if (__OFADD__(v227, 1))
              {
                goto LABEL_288;
              }

              if (v228 >= v226)
              {

                v271 = *v221;

                sub_24F4B9A98(v266, type metadata accessor for CallProviderConversationHandle);
                v211 = v272;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v211 = sub_24E616D5C(0, *(v211 + 2) + 1, 1, v211);
                }

                v209 = v262;
                v231 = *(v211 + 2);
                v230 = *(v211 + 3);
                if (v231 >= v230 >> 1)
                {
                  v211 = sub_24E616D5C((v230 > 1), v231 + 1, 1, v211);
                }

                *(v211 + 2) = v231 + 1;
                *&v211[16 * v231 + 32] = v271;
                v212 = v266;
                goto LABEL_249;
              }

              v225 = *(v222 + 56 + 8 * v228);
              ++v227;
              if (v225)
              {
                v227 = v228;
                goto LABEL_269;
              }
            }
          }

LABEL_248:
          sub_24F4B9A98(v212, type metadata accessor for CallProviderConversationHandle);
          v211 = v272;
LABEL_249:
          if (++v210 == v209)
          {

            goto LABEL_278;
          }
        }
      }

      v211 = MEMORY[0x277D84F90];
LABEL_278:
      v273 = v195;
      sub_24EA0A5CC(v211);
      v232 = v273;
      if (*(v273 + 16))
      {
        v233 = v175;
        v234 = v253;
        sub_24F042070(v233, v253);
        *(v234 + *(v251 + 20)) = v232;
        v235 = v255;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v235 = sub_24E616D34(0, v235[2] + 1, 1, v235);
        }

        v236 = v235;
        v237 = v235[2];
        v255 = v236;
        v238 = v236[3];
        if (v237 >= v238 >> 1)
        {
          v255 = sub_24E616D34((v238 > 1), v237 + 1, 1, v255);
        }

        v239 = v255;
        v255[2] = v237 + 1;
        sub_24F4B9B60(v253, v239 + ((*(v250 + 80) + 32) & ~*(v250 + 80)) + *(v250 + 72) * v237, type metadata accessor for CallProviderConversationHandles);
      }

      else
      {
      }

      v169 = v252;
      v171 = v257;
LABEL_197:
      if (v171 == v169)
      {
        goto LABEL_289;
      }
    }

    v194 = 0;
    v195 = MEMORY[0x277D84F90];
LABEL_229:
    if (v194 >= *(v192 + 16))
    {
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:

      continue;
    }

    break;
  }

  v199 = *(v270 + v194++);
  v200 = *(&v199 + 1);
  if (!*(*(&v199 + 1) + 16))
  {
    goto LABEL_228;
  }

  v201 = 1 << *(*(&v199 + 1) + 32);
  if (v201 < 64)
  {
    v202 = ~(-1 << v201);
  }

  else
  {
    v202 = -1;
  }

  v203 = v202 & *(*(&v199 + 1) + 56);
  v204 = (v201 + 63) >> 6;
  v272 = v199;

  swift_bridgeObjectRetain_n();
  v205 = 0;
LABEL_235:
  if (v203)
  {
    v206 = v205;
    goto LABEL_241;
  }

  while (1)
  {
    v206 = v205 + 1;
    if (__OFADD__(v205, 1))
    {
      break;
    }

    if (v206 >= v204)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v273 = v195;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24F457D04(0, *(v195 + 16) + 1, 1);
        v195 = v273;
      }

      v192 = v265;
      v196 = v272;
      v198 = *(v195 + 16);
      v197 = *(v195 + 24);
      if (v198 >= v197 >> 1)
      {
        sub_24F457D04((v197 > 1), v198 + 1, 1);
        v196 = v272;
        v192 = v265;
        v195 = v273;
      }

      *(v195 + 16) = v198 + 1;
      *(v195 + 16 * v198 + 32) = v196;
LABEL_228:
      if (v194 == v193)
      {
        goto LABEL_246;
      }

      goto LABEL_229;
    }

    v203 = *(v200 + 56 + 8 * v206);
    ++v205;
    if (v203)
    {
      v205 = v206;
LABEL_241:
      v207 = __clz(__rbit64(v203));
      v203 &= v203 - 1;
      if (([v175 supportsHandleType_] & 1) == 0)
      {

        v192 = v265;
        goto LABEL_228;
      }

      goto LABEL_235;
    }
  }

  __break(1u);
LABEL_288:
  __break(1u);
LABEL_289:

  v240 = v255;
LABEL_304:

  *(v254 + *(v247 + 24)) = v240;
}

uint64_t sub_24F4B7FC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758, &unk_24F9FF9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4B803C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758, &unk_24F9FF9D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CallProviderConversationHandleSet.preferredVideoHandle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CallProviderConversationHandleSet(0) + 20);

  return sub_24F4B7FC4(v3, a1);
}

uint64_t type metadata accessor for CallProviderConversationHandleSet(uint64_t a1)
{
  result = qword_27F2457D0;
  if (!qword_27F2457D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CallProviderConversationHandleSet.preferredVideoHandle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CallProviderConversationHandleSet(0) + 20);

  return sub_24F4B803C(a1, v3);
}

double CallProviderConversationHandleSet.auxiliaryHandles.getter()
{
  type metadata accessor for CallProviderConversationHandleSet(0);

  return result;
}

uint64_t CallProviderConversationHandleSet.auxiliaryHandles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CallProviderConversationHandleSet(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

unint64_t CallProviderConversationHandleSet.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000024FA75B10;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758, &unk_24F9FF9D0);
  *(inited + 72) = v5;
  v6 = sub_24F4B84B4();
  *(inited + 80) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F4B7FC4(v2, boxed_opaque_existential_1);
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x800000024FA75B30;
  v8 = type metadata accessor for CallProviderConversationHandleSet(0);
  v9 = *(v8 + 20);
  *(inited + 128) = v5;
  *(inited + 136) = v6;
  v10 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F4B7FC4(v2 + v9, v10);
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x800000024FA75B50;
  v11 = *(v2 + *(v8 + 24));
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245770, &qword_24F9FF9E0);
  *(inited + 192) = sub_24F4B9478(&qword_27F245778, &qword_27F245780, &protocol conformance descriptor for CallProviderConversationHandles, MEMORY[0x277D22590]);
  *(inited + 160) = v11;

  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

unint64_t sub_24F4B84B4()
{
  result = qword_27F245760;
  if (!qword_27F245760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245758, &unk_24F9FF9D0);
    sub_24F4B9514(&qword_27F245768, type metadata accessor for CallProviderConversationHandle, &protocol conformance descriptor for CallProviderConversationHandle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245760);
  }

  return result;
}

unint64_t sub_24F4B856C()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_24F4B85C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F4B9970(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4B85E8(uint64_t a1)
{
  v2 = sub_24F4B9424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4B8624(uint64_t a1)
{
  v2 = sub_24F4B9424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallProviderConversationHandleSet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245788, &qword_24F9FF9E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4B9424();
  sub_24F92D128();
  v14 = 0;
  type metadata accessor for CallProviderConversationHandle(0);
  sub_24F4B9514(&qword_27F245798, type metadata accessor for CallProviderConversationHandle, &protocol conformance descriptor for CallProviderConversationHandle);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for CallProviderConversationHandleSet(0);
    v13 = 1;
    sub_24F92CCF8();
    v11[1] = *(v3 + *(v9 + 24));
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245770, &qword_24F9FF9E0);
    sub_24F4B9478(&qword_27F2457A0, &qword_27F2457A8, &protocol conformance descriptor for CallProviderConversationHandles, MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CallProviderConversationHandleSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758, &unk_24F9FF9D0);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2457B0, &qword_24F9FF9F0);
  v25 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CallProviderConversationHandleSet(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CallProviderConversationHandle(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v14 = *(v9 + 20);
  v13(&v11[v14], 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4B9424();
  v28 = v8;
  v15 = v30;
  sub_24F92D108();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_24E601704(v11, &qword_27F245758, &unk_24F9FF9D0);
    return sub_24E601704(&v11[v14], &qword_27F245758, &unk_24F9FF9D0);
  }

  else
  {
    v23 = a1;
    v30 = v14;
    v16 = v25;
    v17 = v26;
    v34 = 0;
    sub_24F4B9514(&qword_27F2457B8, type metadata accessor for CallProviderConversationHandle, &protocol conformance descriptor for CallProviderConversationHandle);
    v19 = v27;
    v18 = v28;
    sub_24F92CC18();
    sub_24F4B803C(v19, v11);
    v33 = 1;
    sub_24F92CC18();
    sub_24F4B803C(v17, &v11[v30]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245770, &qword_24F9FF9E0);
    v32 = 2;
    sub_24F4B9478(&qword_27F2457C0, &qword_27F2457C8, &protocol conformance descriptor for CallProviderConversationHandles, MEMORY[0x277D83978]);
    v20 = v29;
    sub_24F92CC68();
    (*(v16 + 8))(v18, v20);
    *&v11[*(v9 + 24)] = v31;
    sub_24F4B9AF8(v11, v24, type metadata accessor for CallProviderConversationHandleSet);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return sub_24F4B9A98(v11, type metadata accessor for CallProviderConversationHandleSet);
  }
}

uint64_t _s12GameStoreKit33CallProviderConversationHandleSetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallProviderConversationHandle(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758, &unk_24F9FF9D0);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245808, &qword_24F9FFBF8);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  v22 = *(v21 + 48);
  v59 = a1;
  sub_24F4B7FC4(a1, &v50 - v19);
  v58 = a2;
  sub_24F4B7FC4(a2, &v20[v22]);
  v23 = *(v5 + 48);
  if (v23(v20, 1, v4) == 1)
  {
    if (v23(&v20[v22], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  sub_24F4B7FC4(v20, v14);
  if (v23(&v20[v22], 1, v4) == 1)
  {
    sub_24F4B9A98(v14, type metadata accessor for CallProviderConversationHandle);
LABEL_8:
    v30 = &qword_27F245808;
    v31 = &qword_24F9FFBF8;
LABEL_23:
    v39 = v20;
    goto LABEL_24;
  }

  sub_24F4B9B60(&v20[v22], v9, type metadata accessor for CallProviderConversationHandle);
  if ((static CallProvider.== infix(_:_:)(v14, v9) & 1) == 0)
  {
    sub_24F4B9A98(v9, type metadata accessor for CallProviderConversationHandle);
    goto LABEL_22;
  }

  v51 = v17;
  v32 = *(v4 + 20);
  v33 = *&v14[v32];
  v34 = *&v14[v32 + 8];
  v35 = &v9[v32];
  v36 = *v35;
  v55 = v35[1];

  v52 = v34;

  v53 = v33;
  v54 = v36;
  if ((sub_24EA15AB8(v33, v36) & 1) == 0)
  {
    sub_24F4B9A98(v9, type metadata accessor for CallProviderConversationHandle);

    goto LABEL_22;
  }

  v37 = sub_24EDD3E74(v52, v55);
  sub_24F4B9A98(v9, type metadata accessor for CallProviderConversationHandle);

  if ((v37 & 1) == 0)
  {
LABEL_22:
    sub_24F4B9A98(v14, type metadata accessor for CallProviderConversationHandle);
    v30 = &qword_27F245758;
    v31 = &unk_24F9FF9D0;
    goto LABEL_23;
  }

  sub_24F4B9A98(v14, type metadata accessor for CallProviderConversationHandle);
  v17 = v51;
LABEL_3:
  sub_24E601704(v20, &qword_27F245758, &unk_24F9FF9D0);
  v24 = type metadata accessor for CallProviderConversationHandleSet(0);
  v25 = *(v24 + 20);
  v26 = *(v15 + 48);
  v27 = v59;
  sub_24F4B7FC4(v59 + v25, v17);
  v28 = v58;
  sub_24F4B7FC4(v58 + v25, &v17[v26]);
  if (v23(v17, 1, v4) != 1)
  {
    v38 = v57;
    sub_24F4B7FC4(v17, v57);
    if (v23(&v17[v26], 1, v4) != 1)
    {
      v40 = &v17[v26];
      v41 = v56;
      sub_24F4B9B60(v40, v56, type metadata accessor for CallProviderConversationHandle);
      if (static CallProvider.== infix(_:_:)(v38, v41))
      {
        v42 = *(v4 + 20);
        v43 = *(v38 + v42);
        v44 = *(v38 + v42 + 8);
        v45 = (v41 + v42);
        v46 = *v45;
        v47 = v45[1];

        if (sub_24EA15AB8(v43, v46))
        {
          v48 = sub_24EDD3E74(v44, v47);
          sub_24F4B9A98(v41, type metadata accessor for CallProviderConversationHandle);

          v38 = v57;
          if (v48)
          {
            sub_24F4B9A98(v57, type metadata accessor for CallProviderConversationHandle);
            goto LABEL_5;
          }
        }

        else
        {
          sub_24F4B9A98(v41, type metadata accessor for CallProviderConversationHandle);

          v38 = v57;
        }
      }

      else
      {
        sub_24F4B9A98(v41, type metadata accessor for CallProviderConversationHandle);
      }

      sub_24F4B9A98(v38, type metadata accessor for CallProviderConversationHandle);
      v30 = &qword_27F245758;
      v31 = &unk_24F9FF9D0;
      v39 = v17;
LABEL_24:
      sub_24E601704(v39, v30, v31);
      v29 = 0;
      return v29 & 1;
    }

    sub_24F4B9A98(v38, type metadata accessor for CallProviderConversationHandle);
LABEL_15:
    v30 = &qword_27F245808;
    v31 = &qword_24F9FFBF8;
    v39 = v17;
    goto LABEL_24;
  }

  if (v23(&v17[v26], 1, v4) != 1)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_24E601704(v17, &qword_27F245758, &unk_24F9FF9D0);
  sub_24EA14E20(*(v27 + *(v24 + 24)), *(v28 + *(v24 + 24)));
  return v29 & 1;
}

unint64_t sub_24F4B9424()
{
  result = qword_27F245790;
  if (!qword_27F245790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245790);
  }

  return result;
}

uint64_t sub_24F4B9478(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245770, &qword_24F9FF9E0);
    sub_24F4B9514(a2, type metadata accessor for CallProviderConversationHandles, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F4B9514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4B9570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758, &unk_24F9FF9D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F4B964C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758, &unk_24F9FF9D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_24F4B9710(uint64_t a1)
{
  sub_24F4B97F4(319, &qword_27F2457E0, type metadata accessor for CallProviderConversationHandle, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24F4B97F4(319, &qword_27F2457E8, type metadata accessor for CallProviderConversationHandles, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F4B97F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F4B986C()
{
  result = qword_27F2457F0;
  if (!qword_27F2457F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2457F0);
  }

  return result;
}

unint64_t sub_24F4B98C4()
{
  result = qword_27F2457F8;
  if (!qword_27F2457F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2457F8);
  }

  return result;
}

unint64_t sub_24F4B991C()
{
  result = qword_27F245800;
  if (!qword_27F245800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245800);
  }

  return result;
}

uint64_t sub_24F4B9970(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000024FA75B10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA75B30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA75B50 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F4B9A98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4B9AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4B9B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4B9BF4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245810, &qword_24F9FFC98);
  v31 = v2;
  v35 = *(v2 - 8);
  v3 = v35;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_24F921A78();
  v33 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  sub_24F45E564(v1, &v38);
  v14 = swift_allocObject();
  v15 = v39;
  v14[1] = v38;
  v14[2] = v15;
  v14[3] = v40;
  v36 = sub_24F923678();
  sub_24F921A68();
  v16 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v17 = MEMORY[0x28223BE20](v16);
  (*(v19 + 16))(&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v34 = v8;
  sub_24F928D38();
  (*(v3 + 16))(v5, v8, v2);
  v20 = v29;
  (*(v29 + 16))(v27, v13, v9);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245818, &qword_24F9FFCA0);
  v28 = sub_24F921AA8();
  sub_24F921A58();
  sub_24E602068(&qword_27F245820, &qword_27F245810, &qword_24F9FFC98, MEMORY[0x277D21CF8]);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245828, &qword_24F9FFCA8);
  v22 = sub_24F9241D8();
  v23 = sub_24E602068(&qword_27F245830, &qword_27F245828, &qword_24F9FFCA8, MEMORY[0x277CDF0C8]);
  *&v38 = v21;
  *(&v38 + 1) = v22;
  *&v39 = v23;
  *(&v39 + 1) = MEMORY[0x277CDDAF8];
  swift_getOpaqueTypeConformance2();
  sub_24F4BA7DC(&qword_27F215638, MEMORY[0x277D7EBB0], MEMORY[0x277D7EBA8]);
  sub_24F4BA7DC(&qword_27F215640, MEMORY[0x277D7EB90], MEMORY[0x277D7EB88]);
  v24 = v31;
  sub_24F9216E8();
  (*(v35 + 8))(v34, v24);
  return (*(v20 + 8))(v13, v33);
}

uint64_t sub_24F4BA0DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v23 = a3;
  v4 = sub_24F9241B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v22 = sub_24F9241D8();
  v11 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245828, &qword_24F9FFCA8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  v24 = *a1;
  v25 = *(a1 + 1);
  v26 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245838, &qword_24F9FFCB0);
  sub_24F4BA6CC();
  sub_24F927338();
  sub_24F9241A8();
  (*(v5 + 16))(v7, v10, v4);
  sub_24F9241C8();
  (*(v5 + 8))(v10, v4);
  sub_24E602068(&qword_27F245830, &qword_27F245828, &qword_24F9FFCA8, MEMORY[0x277CDF0C8]);
  v18 = v22;
  sub_24F926048();
  (*(v11 + 8))(v13, v18);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_24F4BA3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  v13 = 0;
  v14 = v8;
  swift_getKeyPath();
  sub_24F45E564(a4, v12);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  v10 = v12[1];
  *(v9 + 40) = v12[0];
  *(v9 + 56) = v10;
  *(v9 + 72) = v12[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245850, &unk_24F9FFCB8);
  sub_24E62A6CC();
  sub_24F4BA750();
  return sub_24F927228();
}

void sub_24F4BA514(unint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A18, &unk_24F94D280);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v16 - v9;
  v11 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(a2 + 16))
  {
    sub_24F44C2A8(a2 + 40 * v11 + 32, *(a3 + 40), v10);
    sub_24F927618();
    sub_24F9242E8();
    sub_24F4BA884(v10, a4);
    v12 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245850, &unk_24F9FFCB8) + 36));
    v13 = v16[5];
    v12[4] = v16[4];
    v12[5] = v13;
    v12[6] = v16[6];
    v14 = v16[1];
    *v12 = v16[0];
    v12[1] = v14;
    v15 = v16[3];
    v12[2] = v16[2];
    v12[3] = v15;
    return;
  }

  __break(1u);
}

uint64_t sub_24F4BA674()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_24F4BA6CC()
{
  result = qword_27F245840;
  if (!qword_27F245840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245838, &qword_24F9FFCB0);
    sub_24F4BA750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245840);
  }

  return result;
}

unint64_t sub_24F4BA750()
{
  result = qword_27F245848;
  if (!qword_27F245848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245850, &unk_24F9FFCB8);
    sub_24E712330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245848);
  }

  return result;
}

uint64_t sub_24F4BA7DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4BA824()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_24F4BA884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A18, &unk_24F94D280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F4BA954(double *a1)
{
  v3 = type metadata accessor for GSKShelf(0);
  v4 = v3;
  if (*(v1 + *(v3 + 36)) >> 62 == 1)
  {
    if (*(v1 + *(v3 + 40)) <= 2u && !*(v1 + *(v3 + 40)))
    {

      return a1[2];
    }

    v5 = sub_24F92CE08();

    if (v5)
    {
      return a1[2];
    }
  }

  if (*(v1 + *(v4 + 44) + 16) > 0xFBu)
  {
    return 0.0;
  }

  sub_24EDEA488(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_24EDEBC58(__dst) == 1)
  {
    return 0.0;
  }

  sub_24E601704(__src, &qword_27F226148, &unk_24F979110);
  return *&__dst[45];
}

uint64_t sub_24F4BAB50@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for GSKShelf(0);
  v6 = (v2 + *(v5 + 44));
  v7 = *(v6 + 16);
  if (v7 <= 0xFB)
  {
    v25 = *v6;
LABEL_13:
    v26 = v7;
    return sub_24EDEB058(a1, a2);
  }

  v8 = *(v2 + *(v5 + 60));
  if (!*(v8 + 16))
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_12;
  }

  sub_24E615E00(v8 + 32, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245868, &qword_24F9FFD10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_12;
  }

  if (!*(&v23 + 1))
  {
LABEL_12:
    sub_24E601704(&v22, &qword_27F245870, &qword_24F9FFD18);
    v25 = 0uLL;
    LOBYTE(v7) = -64;
    goto LABEL_13;
  }

  sub_24E612C80(&v22, &v25);
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v9 = sub_24F9220D8();
  __swift_project_value_buffer(v9, qword_27F39E850);
  sub_24E615E00(&v25, &v22);
  v10 = sub_24F9220B8();
  v11 = sub_24F92BDB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136315138;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    swift_getDynamicType();
    v14 = sub_24F92D1E8();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(&v22);
    v17 = sub_24E7620D4(v14, v16, v21);

    *(v12 + 4) = v17;
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2530542D0](v13, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  v19 = v27;
  v20 = v28;
  __swift_project_boxed_opaque_existential_1(&v25, v27);
  (*(v20 + 8))(a1, v19, v20);
  return __swift_destroy_boxed_opaque_existential_1(&v25);
}

uint64_t sub_24F4BAE20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for GSKShelf(0) + 60));
  if (*(v3 + 16))
  {
    sub_24E615E00(v3 + 32, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245868, &qword_24F9FFD10);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_24E612C80(&v9, v12);
        v4 = v13;
        v5 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v5 + 40))(v4, v5);
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  sub_24E601704(&v9, &qword_27F245870, &qword_24F9FFD18);
  v7 = sub_24F921CA8();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

uint64_t sub_24F4BAF84@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F921998();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for GSKShelf(0);
  v10 = (v2 + *(v9 + 44));
  v11 = *(v10 + 16);
  if (v11 <= 0xFB)
  {
    v21 = *v10;
    v22 = v11;
    sub_24EDEB448(a1);
    if (sub_24F4BB204())
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = *(v2 + *(v9 + 60));
    if (*(v12 + 16))
    {
      sub_24E615E00(v12 + 32, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245868, &qword_24F9FFD10);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_24E612C80(&v18, &v21);
          v13 = v23;
          v14 = v24;
          __swift_project_boxed_opaque_existential_1(&v21, v23);
          (*(v14 + 24))(v13, v14);
          __swift_destroy_boxed_opaque_existential_1(&v21);
          if ((sub_24F4BB204() & 1) == 0)
          {
            return (*(v6 + 32))(a2, v8, v5);
          }

LABEL_8:
          sub_24F921948();
          sub_24F921978();
          return (*(v6 + 8))(v8, v5);
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    sub_24E601704(&v18, &qword_27F245870, &qword_24F9FFD18);
    sub_24E6B00B4(*a1);
    sub_24F921958();
    if (sub_24F4BB204())
    {
      goto LABEL_8;
    }
  }

  return (*(v6 + 32))(a2, v8, v5);
}

uint64_t sub_24F4BB204()
{
  v1 = *(v0 + *(type metadata accessor for GSKShelf(0) + 60));
  if (!*(v1 + 16))
  {
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
    goto LABEL_7;
  }

  sub_24E615E00(v1 + 32, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245868, &qword_24F9FFD10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_7;
  }

  if (!*(&v7 + 1))
  {
LABEL_7:
    sub_24E601704(&v6, &qword_27F245870, &qword_24F9FFD18);
    v4 = 0;
    return v4 & 1;
  }

  sub_24E612C80(&v6, v9);
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v4 & 1;
}

uint64_t sub_24F4BB32C()
{
  v1 = type metadata accessor for GSKShelf(0);
  if (*(v0 + *(v1 + 44) + 16) < 0xFCu)
  {
    return 0;
  }

  v2 = *(v0 + *(v1 + 60));
  if (*(v2 + 16))
  {
    sub_24E615E00(v2 + 32, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245868, &qword_24F9FFD10);
    if (swift_dynamicCast())
    {
      if (*(&v9 + 1))
      {
        sub_24E612C80(&v8, v11);
        v3 = v12;
        v4 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        v5 = (*(v4 + 16))(v3, v4);
        __swift_destroy_boxed_opaque_existential_1(v11);
        return v5;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_24E601704(&v8, &qword_27F245870, &qword_24F9FFD18);
  return 2;
}

uint64_t sub_24F4BB470@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F921CA8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_24F4BB4F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24F923E98();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[10]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_24F4BB628(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24F923E98();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for ShelfLayoutEnvironment(uint64_t a1)
{
  result = qword_27F245878;
  if (!qword_27F245878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F4BB784(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_24F923E98();
    if (v2 <= 0x3F)
    {
      sub_24F4BB85C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F4BB85C(uint64_t a1)
{
  if (!qword_27F245888)
  {
    sub_24F925218();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F245888);
    }
  }
}

uint64_t AttributeScopes.ExtendedMarkdownStyleAttributes.Color.Value.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24F92CB88();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_24F4BB934()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F4BB9A8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F4BB9FC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

uint64_t static AttributeScopes.ExtendedMarkdownStyleAttributes.Color.name.getter()
{
  swift_beginAccess();
  v0 = *aEmdColor;

  return v0;
}

uint64_t static AttributeScopes.ExtendedMarkdownStyleAttributes.Color.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aEmdColor = a1;
  *&aEmdColor[8] = a2;
}

uint64_t sub_24F4BBC28(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aEmdColor = v2;
  *&aEmdColor[8] = v1;
}

uint64_t sub_24F4BBDB0()
{
  swift_beginAccess();
  v0 = *aEmdColor;

  return v0;
}

unint64_t sub_24F4BBE18()
{
  result = qword_27F2458A0;
  if (!qword_27F2458A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458A0);
  }

  return result;
}

unint64_t sub_24F4BBE74()
{
  result = qword_27F2458A8;
  if (!qword_27F2458A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458A8);
  }

  return result;
}

unint64_t sub_24F4BBECC()
{
  result = qword_27F2458B0;
  if (!qword_27F2458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458B0);
  }

  return result;
}

unint64_t sub_24F4BBF24()
{
  result = qword_27F2458B8;
  if (!qword_27F2458B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458B8);
  }

  return result;
}