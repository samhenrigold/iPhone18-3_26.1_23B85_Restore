uint64_t sub_22BEDDA70()
{
  sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE187D0();
  sub_22BE19E14();
  swift_arrayDestroy();
  v0 = sub_22BE3C704();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BEDDAF8(uint64_t *a1, uint64_t *a2)
{
  sub_22BE5CE4C(a1, a2);
  swift_arrayDestroy();
  v2 = sub_22BE3C704();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_22BEDDB40()
{
  swift_arrayDestroy();
  v0 = sub_22BE3C704();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

const void *sub_22BEDDB7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  sub_22BE47DE8((v4 - 32) / 16);
  return v3;
}

size_t sub_22BEDDC68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BE39168(a1, a2, a3, a4);
  v7 = a5(0);
  sub_22BE17A18(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v9)
  {
    if (result - v11 != 0x8000000000000000 || v9 != -1)
    {
      sub_22BE47DE8((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

const void *sub_22BEDDE14(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BE5CE4C(&qword_27D9077A8, &unk_22C2757E0);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  sub_22BE47DE8((v4 - 32) / 40);
  return v3;
}

const void *sub_22BEDDFA8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BE5CE4C(&qword_27D90A840, &qword_22C288130);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  sub_22BE47DE8((v4 - 32) / 8);
  return v3;
}

size_t sub_22BEDE21C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22BE39168(a1, a2, a3, a4);
  v5 = sub_22BE1804C();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE17A18(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v9)
  {
    if (result - v11 != 0x8000000000000000 || v9 != -1)
    {
      sub_22BE47DE8((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22BEDE304()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v49 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  sub_22BE179D8();
  v47 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BE183AC();
  v48 = (v10 - v11);
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BE3E3EC(v13, v14, v15, v16, v17, v18, v19, v20, v42);
  v21 = v1 + 64;
  sub_22BEE9380();
  v25 = v24 & v23;
  if (!v5)
  {
    v26 = 0;
LABEL_19:
    *v7 = v1;
    v7[1] = v21;
    v7[2] = ~v22;
    v7[3] = v26;
    v7[4] = v25;
    sub_22BE1AABC();
    return;
  }

  if (!v3)
  {
    v26 = 0;
    goto LABEL_19;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v43 = v22;
    v44 = v7;
    sub_22BEE93A8();
    v30 = (v28 - v29) >> 6;
    v45 = v1;
    v46 = v3;
    while (1)
    {
      if (v27 >= v3)
      {
        goto LABEL_22;
      }

      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_23;
      }

      if (!v25)
      {
        while (1)
        {
          v32 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v32 >= v30)
          {
            v25 = 0;
            v7 = v44;
            goto LABEL_17;
          }

          v25 = *(v21 + 8 * v32);
          ++v26;
          if (v25)
          {
            v50 = v5;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v50 = v5;
      v32 = v26;
LABEL_13:
      v33 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v34 = v33 | (v32 << 6);
      v35 = *(v1 + 48);
      v36 = *(v1 + 56);
      v37 = (v35 + 16 * v34);
      v38 = *v37;
      v39 = v37[1];
      v40 = type metadata accessor for AST.FlatValue(0);
      sub_22BE19448(v40);
      sub_22BEDFD40(v36 + *(v41 + 72) * v34, v48 + *(v49 + 48));
      *v48 = v38;
      v48[1] = v39;
      sub_22BEE8E64();
      sub_22BEE8E64();
      v3 = v46;
      if (v31 == v46)
      {
        break;
      }

      v5 = v50 + *(v47 + 72);

      v27 = v31;
      v26 = v32;
      v1 = v45;
    }

    v26 = v32;
    v7 = v44;
    v1 = v45;
LABEL_17:
    v22 = v43;
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
}

unint64_t sub_22BEDE574(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_22C26E684();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 64;
  v14 = *(a4 + 64);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 64;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 56);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42, v12);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22BEDE80C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  sub_22BEE9380();
  v12 = v11 & v10;
  if (!v7)
  {
    v15 = 0;
LABEL_18:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v9;
    a1[3] = v15;
    a1[4] = v12;
    return;
  }

  v13 = v8;
  if (!v8)
  {
    v15 = 0;
    goto LABEL_18;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v14 = v7;
    sub_22BEE93A8();
    v30 = v17;
    v19 = (v18 - v17) >> 6;
    while (1)
    {
      if (v16 >= v13)
      {
        goto LABEL_21;
      }

      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

      if (!v12)
      {
        while (1)
        {
          v21 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v12 = 0;
            goto LABEL_16;
          }

          v12 = *(v6 + 8 * v21);
          ++v15;
          if (v12)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v21 = v15;
LABEL_12:
      v22 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v23 = v22 | (v21 << 6);
      v24 = *(a4 + 48) + 32 * v23;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = *(v24 + 24);
      v29 = *(*(a4 + 56) + 8 * v23);
      *v14 = *v24;
      *(v14 + 8) = v26;
      *(v14 + 16) = v27;
      *(v14 + 24) = v28;
      *(v14 + 32) = v29;
      if (v20 == v13)
      {
        break;
      }

      v14 += 40;
      sub_22BE6355C(v25, v26, v27, v28);
      sub_22BEA7680(v29);
      v16 = v20;
      v15 = v21;
    }

    sub_22BE6355C(v25, v26, v27, v28);
    sub_22BEA7680(v29);
    v15 = v21;
LABEL_16:
    v9 = v30;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_22BEDE980()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (!v0)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v10 = v1;
  if (!v1)
  {
LABEL_11:
    *v9 = v7;
    v9[1] = v5;
    v9[2] = v3;
    v9[3] = v10;
    sub_22BE1AABC();
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = *(v2 + 16);
    v14 = v1 - 1;
    while (1)
    {
      if (v13 == v12)
      {
        v10 = v13;
        goto LABEL_11;
      }

      if (v12 >= *(v3 + 16))
      {
        break;
      }

      v15 = type metadata accessor for ProgramStatement(0);
      sub_22BE17A18(v15);
      v18 = *(v17 + 72);
      sub_22BEDFD40(v3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v18 * v12, v11);
      if (v14 == v12)
      {
        goto LABEL_11;
      }

      v11 += v18;
      ++v12;
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_22BEDEA94(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22BEDEB7C()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v12 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    sub_22BE1AABC();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    sub_22BEE93A8();
    v15 = (v14 - v7) >> 6;
    while (v13 < v10)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v17);
          ++v12;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_15:
      v18 = (*(v3 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v9)))));
      v19 = v18[1];
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      if (v16 == v10)
      {

        v12 = v17;
        goto LABEL_20;
      }

      v11 += 2;

      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_22BEDECC0()
{
  result = qword_27D909708;
  if (!qword_27D909708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909708);
  }

  return result;
}

unint64_t sub_22BEDED14()
{
  result = qword_27D909710;
  if (!qword_27D909710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909710);
  }

  return result;
}

unint64_t sub_22BEDED68()
{
  result = qword_27D909738;
  if (!qword_27D909738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909738);
  }

  return result;
}

unint64_t sub_22BEDEDBC()
{
  result = qword_27D909750;
  if (!qword_27D909750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909750);
  }

  return result;
}

unint64_t sub_22BEDEE10()
{
  result = qword_27D909768;
  if (!qword_27D909768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909768);
  }

  return result;
}

unint64_t sub_22BEDEE64()
{
  result = qword_27D909780;
  if (!qword_27D909780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909780);
  }

  return result;
}

unint64_t sub_22BEDEEB8()
{
  result = qword_27D909788;
  if (!qword_27D909788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909788);
  }

  return result;
}

unint64_t sub_22BEDEF0C()
{
  result = qword_27D9097B0;
  if (!qword_27D9097B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9097B0);
  }

  return result;
}

unint64_t sub_22BEDEF60()
{
  result = qword_27D9097F8;
  if (!qword_27D9097F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9097F8);
  }

  return result;
}

unint64_t sub_22BEDEFB4()
{
  result = qword_27D909800;
  if (!qword_27D909800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909800);
  }

  return result;
}

unint64_t sub_22BEDF008()
{
  result = qword_27D909808;
  if (!qword_27D909808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909808);
  }

  return result;
}

unint64_t sub_22BEDF05C()
{
  result = qword_27D909818;
  if (!qword_27D909818)
  {
    sub_22BE7431C(&qword_27D909810, &qword_22C280148);
    sub_22BECD12C(&qword_28107F2F8, MEMORY[0x277D1C338], MEMORY[0x277D1C340]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909818);
  }

  return result;
}

unint64_t sub_22BEDF110()
{
  result = qword_27D909820;
  if (!qword_27D909820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909820);
  }

  return result;
}

unint64_t sub_22BEDF164()
{
  result = qword_27D909828;
  if (!qword_27D909828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909828);
  }

  return result;
}

unint64_t sub_22BEDF1B8()
{
  result = qword_27D909830;
  if (!qword_27D909830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909830);
  }

  return result;
}

unint64_t sub_22BEDF20C()
{
  result = qword_27D909838;
  if (!qword_27D909838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909838);
  }

  return result;
}

unint64_t sub_22BEDF260()
{
  result = qword_27D909840;
  if (!qword_27D909840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909840);
  }

  return result;
}

unint64_t sub_22BEDF2B4()
{
  result = qword_27D909888;
  if (!qword_27D909888)
  {
    sub_22BE7431C(&qword_27D909810, &qword_22C280148);
    sub_22BECD12C(&qword_27D908560, MEMORY[0x277D1C338], MEMORY[0x277D1C360]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909888);
  }

  return result;
}

unint64_t sub_22BEDF368()
{
  result = qword_27D9098B0;
  if (!qword_27D9098B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9098B0);
  }

  return result;
}

unint64_t sub_22BEDF3BC()
{
  result = qword_27D9098B8;
  if (!qword_27D9098B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9098B8);
  }

  return result;
}

unint64_t sub_22BEDF410()
{
  result = qword_27D9098C0;
  if (!qword_27D9098C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9098C0);
  }

  return result;
}

unint64_t sub_22BEDF464()
{
  result = qword_27D9098C8;
  if (!qword_27D9098C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9098C8);
  }

  return result;
}

unint64_t sub_22BEDF4B8()
{
  result = qword_27D9098F8;
  if (!qword_27D9098F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9098F8);
  }

  return result;
}

unint64_t sub_22BEDF50C()
{
  result = qword_27D909900;
  if (!qword_27D909900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909900);
  }

  return result;
}

unint64_t sub_22BEDF560()
{
  result = qword_27D909910;
  if (!qword_27D909910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909910);
  }

  return result;
}

unint64_t sub_22BEDF5B4()
{
  result = qword_27D9099B8;
  if (!qword_27D9099B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099B8);
  }

  return result;
}

unint64_t sub_22BEDF608()
{
  result = qword_27D9099C0;
  if (!qword_27D9099C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099C0);
  }

  return result;
}

unint64_t sub_22BEDF65C()
{
  result = qword_27D9099C8;
  if (!qword_27D9099C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099C8);
  }

  return result;
}

unint64_t sub_22BEDF6B0()
{
  result = qword_27D9099D0;
  if (!qword_27D9099D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099D0);
  }

  return result;
}

unint64_t sub_22BEDF704()
{
  result = qword_27D9099D8;
  if (!qword_27D9099D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099D8);
  }

  return result;
}

unint64_t sub_22BEDF758()
{
  result = qword_27D9099E0;
  if (!qword_27D9099E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099E0);
  }

  return result;
}

unint64_t sub_22BEDF7AC()
{
  result = qword_27D9099E8;
  if (!qword_27D9099E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099E8);
  }

  return result;
}

unint64_t sub_22BEDF800()
{
  result = qword_27D9099F0;
  if (!qword_27D9099F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099F0);
  }

  return result;
}

unint64_t sub_22BEDF854()
{
  result = qword_27D9099F8;
  if (!qword_27D9099F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9099F8);
  }

  return result;
}

unint64_t sub_22BEDF8A8()
{
  result = qword_27D909A00;
  if (!qword_27D909A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A00);
  }

  return result;
}

unint64_t sub_22BEDF8FC()
{
  result = qword_27D909A08;
  if (!qword_27D909A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A08);
  }

  return result;
}

unint64_t sub_22BEDF950()
{
  result = qword_27D909A10;
  if (!qword_27D909A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A10);
  }

  return result;
}

unint64_t sub_22BEDF9A4()
{
  result = qword_27D909A18;
  if (!qword_27D909A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A18);
  }

  return result;
}

unint64_t sub_22BEDF9F8()
{
  result = qword_27D909A20;
  if (!qword_27D909A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A20);
  }

  return result;
}

unint64_t sub_22BEDFA4C()
{
  result = qword_27D909A28;
  if (!qword_27D909A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A28);
  }

  return result;
}

unint64_t sub_22BEDFAA0()
{
  result = qword_27D909A30;
  if (!qword_27D909A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A30);
  }

  return result;
}

unint64_t sub_22BEDFAF4()
{
  result = qword_27D909A38;
  if (!qword_27D909A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A38);
  }

  return result;
}

unint64_t sub_22BEDFB48()
{
  result = qword_27D909A40;
  if (!qword_27D909A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A40);
  }

  return result;
}

unint64_t sub_22BEDFB9C()
{
  result = qword_27D909A48;
  if (!qword_27D909A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A48);
  }

  return result;
}

unint64_t sub_22BEDFBF0()
{
  result = qword_27D909A50;
  if (!qword_27D909A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909A50);
  }

  return result;
}

unint64_t sub_22BEDFC44()
{
  result = qword_27D909B00;
  if (!qword_27D909B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B00);
  }

  return result;
}

unint64_t sub_22BEDFC98()
{
  result = qword_27D909B08;
  if (!qword_27D909B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B08);
  }

  return result;
}

unint64_t sub_22BEDFCEC()
{
  result = qword_27D909B18;
  if (!qword_27D909B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B18);
  }

  return result;
}

uint64_t sub_22BEDFD40(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v4(v3);
  sub_22BE18000();
  v5 = sub_22BE19454();
  v6(v5);
  return a2;
}

unint64_t sub_22BEDFD98()
{
  result = qword_27D909B28;
  if (!qword_27D909B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B28);
  }

  return result;
}

unint64_t sub_22BEDFE0C()
{
  result = qword_27D909B40;
  if (!qword_27D909B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B40);
  }

  return result;
}

unint64_t sub_22BEDFE60()
{
  result = qword_27D909B48;
  if (!qword_27D909B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B48);
  }

  return result;
}

unint64_t sub_22BEDFEB4()
{
  result = qword_27D909B58;
  if (!qword_27D909B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B58);
  }

  return result;
}

unint64_t sub_22BEDFF08()
{
  result = qword_27D909B78;
  if (!qword_27D909B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B78);
  }

  return result;
}

unint64_t sub_22BEDFF5C()
{
  result = qword_27D909B80;
  if (!qword_27D909B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B80);
  }

  return result;
}

unint64_t sub_22BEDFFB0()
{
  result = qword_27D909B88;
  if (!qword_27D909B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909B88);
  }

  return result;
}

unint64_t sub_22BEE0004()
{
  result = qword_27D909BB0;
  if (!qword_27D909BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909BB0);
  }

  return result;
}

unint64_t sub_22BEE0058()
{
  result = qword_27D909BC0;
  if (!qword_27D909BC0)
  {
    sub_22BE7431C(&qword_27D909BB8, &qword_22C280388);
    sub_22BECD12C(&qword_27D909BC8, type metadata accessor for UpdateParametersExpression.UpdateParameter, &protocol conformance descriptor for UpdateParametersExpression.UpdateParameter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909BC0);
  }

  return result;
}

unint64_t sub_22BEE010C()
{
  result = qword_27D909BD8;
  if (!qword_27D909BD8)
  {
    sub_22BE7431C(&qword_27D909BB8, &qword_22C280388);
    sub_22BECD12C(&qword_27D909BE0, type metadata accessor for UpdateParametersExpression.UpdateParameter, &protocol conformance descriptor for UpdateParametersExpression.UpdateParameter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909BD8);
  }

  return result;
}

unint64_t sub_22BEE01C0()
{
  result = qword_27D909BF0;
  if (!qword_27D909BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909BF0);
  }

  return result;
}

unint64_t sub_22BEE0214()
{
  result = qword_27D909C00;
  if (!qword_27D909C00)
  {
    sub_22BE7431C(&qword_27D909BF8, &qword_22C2803A0);
    sub_22BECD12C(&qword_28107F2F8, MEMORY[0x277D1C338], MEMORY[0x277D1C340]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C00);
  }

  return result;
}

unint64_t sub_22BEE02D0()
{
  result = qword_27D909C10;
  if (!qword_27D909C10)
  {
    sub_22BE7431C(&qword_27D909BF8, &qword_22C2803A0);
    sub_22BECD12C(&qword_27D908560, MEMORY[0x277D1C338], MEMORY[0x277D1C360]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C10);
  }

  return result;
}

unint64_t sub_22BEE038C()
{
  result = qword_27D909C20;
  if (!qword_27D909C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C20);
  }

  return result;
}

unint64_t sub_22BEE03E0()
{
  result = qword_27D909C30;
  if (!qword_27D909C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C30);
  }

  return result;
}

unint64_t sub_22BEE0434()
{
  result = qword_27D909C48;
  if (!qword_27D909C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C48);
  }

  return result;
}

unint64_t sub_22BEE0488()
{
  result = qword_27D909C60;
  if (!qword_27D909C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C60);
  }

  return result;
}

unint64_t sub_22BEE04DC()
{
  result = qword_27D909C78;
  if (!qword_27D909C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C78);
  }

  return result;
}

unint64_t sub_22BEE0530()
{
  result = qword_27D909C90;
  if (!qword_27D909C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909C90);
  }

  return result;
}

unint64_t sub_22BEE0584()
{
  result = qword_27D909CA8;
  if (!qword_27D909CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909CA8);
  }

  return result;
}

uint64_t sub_22BEE05D8()
{
  sub_22BE18378();
  sub_22BE39168(v1, v2, v3, v4);
  sub_22BE18000();
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

unint64_t sub_22BEE0648()
{
  result = qword_27D909CC0;
  if (!qword_27D909CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909CC0);
  }

  return result;
}

unint64_t sub_22BEE069C()
{
  result = qword_27D909CD8;
  if (!qword_27D909CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909CD8);
  }

  return result;
}

unint64_t sub_22BEE06F0()
{
  result = qword_27D909CF0;
  if (!qword_27D909CF0)
  {
    sub_22BE7431C(&qword_27D909CE8, &qword_22C280430);
    sub_22BECD12C(&qword_27D909CF8, type metadata accessor for StructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for StructuredSearchExpression.StructuredSearchProperty);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909CF0);
  }

  return result;
}

unint64_t sub_22BEE07A4()
{
  result = qword_27D909D10;
  if (!qword_27D909D10)
  {
    sub_22BE7431C(&qword_27D909CE8, &qword_22C280430);
    sub_22BECD12C(&qword_27D909D18, type metadata accessor for StructuredSearchExpression.StructuredSearchProperty, &protocol conformance descriptor for StructuredSearchExpression.StructuredSearchProperty);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D10);
  }

  return result;
}

unint64_t sub_22BEE0858()
{
  result = qword_27D909D48;
  if (!qword_27D909D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D48);
  }

  return result;
}

unint64_t sub_22BEE08AC()
{
  result = qword_27D909D50;
  if (!qword_27D909D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D50);
  }

  return result;
}

unint64_t sub_22BEE0900()
{
  result = qword_27D909D58;
  if (!qword_27D909D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D58);
  }

  return result;
}

unint64_t sub_22BEE0954()
{
  result = qword_27D909D60;
  if (!qword_27D909D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D60);
  }

  return result;
}

unint64_t sub_22BEE09A8()
{
  result = qword_27D909D68;
  if (!qword_27D909D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909D68);
  }

  return result;
}

unint64_t sub_22BEE09FC()
{
  result = qword_27D909DA0;
  if (!qword_27D909DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909DA0);
  }

  return result;
}

unint64_t sub_22BEE0A50()
{
  result = qword_27D909DB8;
  if (!qword_27D909DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909DB8);
  }

  return result;
}

uint64_t sub_22BEE0AA4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D909DC0, &qword_22C2804A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BEE0B1C()
{
  result = qword_27D909DE8;
  if (!qword_27D909DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909DE8);
  }

  return result;
}

unint64_t sub_22BEE0B70()
{
  result = qword_27D909E00;
  if (!qword_27D909E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E00);
  }

  return result;
}

unint64_t sub_22BEE0BC4()
{
  result = qword_27D909E18;
  if (!qword_27D909E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E18);
  }

  return result;
}

unint64_t sub_22BEE0C18()
{
  result = qword_27D909E30;
  if (!qword_27D909E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E30);
  }

  return result;
}

unint64_t sub_22BEE0C6C()
{
  result = qword_27D909E48;
  if (!qword_27D909E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E48);
  }

  return result;
}

unint64_t sub_22BEE0CC0()
{
  result = qword_27D909E60;
  if (!qword_27D909E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E60);
  }

  return result;
}

unint64_t sub_22BEE0D14()
{
  result = qword_27D909E78;
  if (!qword_27D909E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E78);
  }

  return result;
}

unint64_t sub_22BEE0D68()
{
  result = qword_27D909E90;
  if (!qword_27D909E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909E90);
  }

  return result;
}

unint64_t sub_22BEE0DBC()
{
  result = qword_27D909EA8;
  if (!qword_27D909EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909EA8);
  }

  return result;
}

unint64_t sub_22BEE0E30()
{
  result = qword_27D909ED0;
  if (!qword_27D909ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909ED0);
  }

  return result;
}

unint64_t sub_22BEE0E84()
{
  result = qword_27D909ED8;
  if (!qword_27D909ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909ED8);
  }

  return result;
}

unint64_t sub_22BEE0ED8()
{
  result = qword_27D909EE0;
  if (!qword_27D909EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909EE0);
  }

  return result;
}

unint64_t sub_22BEE0F2C()
{
  result = qword_27D909F08;
  if (!qword_27D909F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F08);
  }

  return result;
}

unint64_t sub_22BEE0F80()
{
  result = qword_27D909F18;
  if (!qword_27D909F18)
  {
    sub_22BE7431C(&qword_27D909F10, &qword_22C280588);
    sub_22BECD12C(&qword_27D909F20, type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate, &protocol conformance descriptor for AnswerSynthesisExpression.ExtractionCandidate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F18);
  }

  return result;
}

unint64_t sub_22BEE1034()
{
  result = qword_27D909F30;
  if (!qword_27D909F30)
  {
    sub_22BE7431C(&qword_27D909F10, &qword_22C280588);
    sub_22BECD12C(&qword_27D909F38, type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate, &protocol conformance descriptor for AnswerSynthesisExpression.ExtractionCandidate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F30);
  }

  return result;
}

unint64_t sub_22BEE10EC()
{
  result = qword_27D909F48;
  if (!qword_27D909F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F48);
  }

  return result;
}

unint64_t sub_22BEE1144()
{
  result = qword_27D909F50;
  if (!qword_27D909F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F50);
  }

  return result;
}

unint64_t sub_22BEE119C()
{
  result = qword_27D909F58;
  if (!qword_27D909F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F58);
  }

  return result;
}

unint64_t sub_22BEE11F4()
{
  result = qword_27D909F60;
  if (!qword_27D909F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F60);
  }

  return result;
}

uint64_t sub_22BEE1248(uint64_t a1)
{
  result = sub_22C26E684();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PrefixExpression(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for InfixExpression(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for IndexExpression(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for UpdateParametersExpression(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for RetrieveSpansExpression(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for RetrieveToolsExpression(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for PickExpression(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for ConfirmExpression(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for StructuredSearchExpression(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for PickOneExpression(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for UndoExpression(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for RejectExpression(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for CancelExpression(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for OpenExpression(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for SiriXFallbackExpression(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for UserConfirmExpression(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for UserDisambiguateExpression(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for AnswerSynthesisExpression(319);
                                      if (v20 <= 0x3F)
                                      {
                                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                        return 0;
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22BEE145C(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_22BEE1478(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BEE14B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22BEE14FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22BEE154C(uint64_t a1)
{
  result = sub_22C26E684();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BEE1600(uint64_t a1)
{
  result = sub_22C26E684();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BEE16B4(uint64_t a1)
{
  result = sub_22C26E684();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BEE1790(uint64_t a1)
{
  sub_22BEE1D24(319, &qword_28106DB70, MEMORY[0x277D83B88]);
  if (v1 <= 0x3F)
  {
    sub_22C26E684();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BEE1894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22BEE1958(uint64_t a1)
{
  result = sub_22C26E684();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_22BEE19F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_22BEE1A08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BEE1A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22BEE1AC4(uint64_t a1)
{
  sub_22BEE1BC8(319);
  if (v1 <= 0x3F)
  {
    sub_22BEE1894(319, &qword_28106DF20, MEMORY[0x277D72B00], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22BEE1894(319, &qword_28106DD30, type metadata accessor for StructuredSearchExpression.StructuredSearchProperty, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BEE1BC8(uint64_t a1)
{
  if (!qword_28106DE80)
  {
    sub_22C26E684();
    v1 = sub_22C272EC4();
    if (!v2)
    {
      atomic_store(v1, &qword_28106DE80);
    }
  }
}

void sub_22BEE1C58(uint64_t a1)
{
  sub_22BEE1D24(319, &qword_28106DDD8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22BEE1894(319, &qword_28107F2E8, MEMORY[0x277D1C338], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BEE1D24(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22C273844();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BEE1E58()
{
  result = sub_22C26E684();
  if (v1 <= 0x3F)
  {
    sub_22BEE92F0(result, v1, v2, v3, v4, v5, v6, v7, v8, SWORD2(v8), SBYTE6(v8), SHIBYTE(v8), v9);
    return sub_22BEE94D4();
  }

  return result;
}

void sub_22BEE1EE8()
{
  sub_22BEE1894(319, &qword_28107F2E8, MEMORY[0x277D1C338], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22BEE92F0(v0, v1, v2, v3, v4, v5, v6, v7, v8, SWORD2(v8), SBYTE6(v8), SHIBYTE(v8), v9);
    sub_22BEE94D4();
  }
}

void sub_22BEE1F88(uint64_t a1)
{
  sub_22C26E684();
  if (v1 <= 0x3F)
  {
    sub_22BEE1894(319, &qword_28107F2E8, MEMORY[0x277D1C338], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BEE2098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE17BC4();
  sub_22C26E684();
  sub_22BE187D0();
  if (*(v7 + 84) != a2)
  {
    return sub_22BE1A5D0(*(v3 + *(a3 + 20)));
  }

  return sub_22BE1AEA8(v3, a2, v6);
}

void sub_22BEE2144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BE18378();
  sub_22C26E684();
  sub_22BE187D0();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_22BE37694();

    sub_22BE19DC4(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

void sub_22BEE21F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_22C26E684();
  if (v7 <= 0x3F)
  {
    sub_22BEE1894(319, a4, a5, MEMORY[0x277D83940]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      sub_22BEE94D4();
    }
  }
}

uint64_t sub_22BEE22A4(uint64_t a1)
{
  result = sub_22C26E684();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BEE252C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return sub_22BE39E30((*a1 | (v4 << 8)) - 4);
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

      return sub_22BE39E30((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BE39E30(v8);
}

_BYTE *sub_22BEE25B0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BEE269C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    switch(v5)
    {
      case 1:
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 18);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BEE2898(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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

_BYTE *sub_22BEE2964(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BE25EF4(result, v6);
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

uint64_t getEnumTagSinglePayload for ValueExpression.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ValueExpression.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Expression.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Expression.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BEE2F88(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BEE3038()
{
  result = qword_27D909F68;
  if (!qword_27D909F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F68);
  }

  return result;
}

unint64_t sub_22BEE3090()
{
  result = qword_27D909F70;
  if (!qword_27D909F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F70);
  }

  return result;
}

unint64_t sub_22BEE30E8()
{
  result = qword_27D909F78;
  if (!qword_27D909F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F78);
  }

  return result;
}

unint64_t sub_22BEE3140()
{
  result = qword_27D909F80;
  if (!qword_27D909F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F80);
  }

  return result;
}

unint64_t sub_22BEE3198()
{
  result = qword_27D909F88;
  if (!qword_27D909F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F88);
  }

  return result;
}

unint64_t sub_22BEE31F0()
{
  result = qword_27D909F90;
  if (!qword_27D909F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F90);
  }

  return result;
}

unint64_t sub_22BEE3248()
{
  result = qword_27D909F98;
  if (!qword_27D909F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909F98);
  }

  return result;
}

unint64_t sub_22BEE32A0()
{
  result = qword_27D909FA0;
  if (!qword_27D909FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FA0);
  }

  return result;
}

unint64_t sub_22BEE32F8()
{
  result = qword_27D909FA8;
  if (!qword_27D909FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FA8);
  }

  return result;
}

unint64_t sub_22BEE3350()
{
  result = qword_27D909FB0;
  if (!qword_27D909FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FB0);
  }

  return result;
}

unint64_t sub_22BEE33A8()
{
  result = qword_27D909FB8;
  if (!qword_27D909FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FB8);
  }

  return result;
}

unint64_t sub_22BEE3400()
{
  result = qword_27D909FC0;
  if (!qword_27D909FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FC0);
  }

  return result;
}

unint64_t sub_22BEE3458()
{
  result = qword_27D909FC8;
  if (!qword_27D909FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FC8);
  }

  return result;
}

unint64_t sub_22BEE34B0()
{
  result = qword_27D909FD0;
  if (!qword_27D909FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FD0);
  }

  return result;
}

unint64_t sub_22BEE3508()
{
  result = qword_27D909FD8;
  if (!qword_27D909FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FD8);
  }

  return result;
}

unint64_t sub_22BEE3560()
{
  result = qword_27D909FE0;
  if (!qword_27D909FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FE0);
  }

  return result;
}

unint64_t sub_22BEE35B8()
{
  result = qword_27D909FE8;
  if (!qword_27D909FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FE8);
  }

  return result;
}

unint64_t sub_22BEE3610()
{
  result = qword_27D909FF0;
  if (!qword_27D909FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FF0);
  }

  return result;
}

unint64_t sub_22BEE3668()
{
  result = qword_27D909FF8;
  if (!qword_27D909FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D909FF8);
  }

  return result;
}

unint64_t sub_22BEE36C0()
{
  result = qword_27D90A000;
  if (!qword_27D90A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A000);
  }

  return result;
}

unint64_t sub_22BEE3718()
{
  result = qword_27D90A008;
  if (!qword_27D90A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A008);
  }

  return result;
}

unint64_t sub_22BEE3770()
{
  result = qword_27D90A010;
  if (!qword_27D90A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A010);
  }

  return result;
}

unint64_t sub_22BEE37C8()
{
  result = qword_27D90A018;
  if (!qword_27D90A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A018);
  }

  return result;
}

unint64_t sub_22BEE3820()
{
  result = qword_27D90A020;
  if (!qword_27D90A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A020);
  }

  return result;
}

unint64_t sub_22BEE3878()
{
  result = qword_27D90A028;
  if (!qword_27D90A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A028);
  }

  return result;
}

unint64_t sub_22BEE38D0()
{
  result = qword_27D90A030;
  if (!qword_27D90A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A030);
  }

  return result;
}

unint64_t sub_22BEE3928()
{
  result = qword_27D90A038;
  if (!qword_27D90A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A038);
  }

  return result;
}

unint64_t sub_22BEE3980()
{
  result = qword_27D90A040;
  if (!qword_27D90A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A040);
  }

  return result;
}

unint64_t sub_22BEE39D8()
{
  result = qword_27D90A048;
  if (!qword_27D90A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A048);
  }

  return result;
}

unint64_t sub_22BEE3A30()
{
  result = qword_27D90A050;
  if (!qword_27D90A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A050);
  }

  return result;
}

unint64_t sub_22BEE3A88()
{
  result = qword_27D90A058;
  if (!qword_27D90A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A058);
  }

  return result;
}

unint64_t sub_22BEE3AE0()
{
  result = qword_27D90A060;
  if (!qword_27D90A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A060);
  }

  return result;
}

unint64_t sub_22BEE3B38()
{
  result = qword_27D90A068;
  if (!qword_27D90A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A068);
  }

  return result;
}

unint64_t sub_22BEE3B90()
{
  result = qword_27D90A070;
  if (!qword_27D90A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A070);
  }

  return result;
}

unint64_t sub_22BEE3BE8()
{
  result = qword_27D90A078;
  if (!qword_27D90A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A078);
  }

  return result;
}

unint64_t sub_22BEE3C40()
{
  result = qword_27D90A080;
  if (!qword_27D90A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A080);
  }

  return result;
}

unint64_t sub_22BEE3C98()
{
  result = qword_27D90A088;
  if (!qword_27D90A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A088);
  }

  return result;
}

unint64_t sub_22BEE3CF0()
{
  result = qword_27D90A090;
  if (!qword_27D90A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A090);
  }

  return result;
}

unint64_t sub_22BEE3D48()
{
  result = qword_27D90A098;
  if (!qword_27D90A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A098);
  }

  return result;
}

unint64_t sub_22BEE3DA0()
{
  result = qword_27D90A0A0;
  if (!qword_27D90A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0A0);
  }

  return result;
}

unint64_t sub_22BEE3DF8()
{
  result = qword_27D90A0A8;
  if (!qword_27D90A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0A8);
  }

  return result;
}

unint64_t sub_22BEE3E50()
{
  result = qword_27D90A0B0;
  if (!qword_27D90A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0B0);
  }

  return result;
}

unint64_t sub_22BEE3EA8()
{
  result = qword_27D90A0B8;
  if (!qword_27D90A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0B8);
  }

  return result;
}

unint64_t sub_22BEE3F00()
{
  result = qword_27D90A0C0;
  if (!qword_27D90A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0C0);
  }

  return result;
}

unint64_t sub_22BEE3F58()
{
  result = qword_27D90A0C8;
  if (!qword_27D90A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0C8);
  }

  return result;
}

unint64_t sub_22BEE3FB0()
{
  result = qword_27D90A0D0;
  if (!qword_27D90A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0D0);
  }

  return result;
}

unint64_t sub_22BEE4008()
{
  result = qword_27D90A0D8;
  if (!qword_27D90A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0D8);
  }

  return result;
}

unint64_t sub_22BEE4060()
{
  result = qword_27D90A0E0;
  if (!qword_27D90A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0E0);
  }

  return result;
}

unint64_t sub_22BEE40B8()
{
  result = qword_27D90A0E8;
  if (!qword_27D90A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0E8);
  }

  return result;
}

unint64_t sub_22BEE4110()
{
  result = qword_27D90A0F0;
  if (!qword_27D90A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0F0);
  }

  return result;
}

unint64_t sub_22BEE4168()
{
  result = qword_27D90A0F8;
  if (!qword_27D90A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A0F8);
  }

  return result;
}

unint64_t sub_22BEE41C0()
{
  result = qword_27D90A100;
  if (!qword_27D90A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A100);
  }

  return result;
}

unint64_t sub_22BEE4218()
{
  result = qword_27D90A108;
  if (!qword_27D90A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A108);
  }

  return result;
}

unint64_t sub_22BEE4270()
{
  result = qword_27D90A110;
  if (!qword_27D90A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A110);
  }

  return result;
}

unint64_t sub_22BEE42C8()
{
  result = qword_27D90A118;
  if (!qword_27D90A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A118);
  }

  return result;
}

unint64_t sub_22BEE4320()
{
  result = qword_27D90A120;
  if (!qword_27D90A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A120);
  }

  return result;
}

unint64_t sub_22BEE4378()
{
  result = qword_27D90A128;
  if (!qword_27D90A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A128);
  }

  return result;
}

unint64_t sub_22BEE43D0()
{
  result = qword_27D90A130;
  if (!qword_27D90A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A130);
  }

  return result;
}

unint64_t sub_22BEE4428()
{
  result = qword_27D90A138;
  if (!qword_27D90A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A138);
  }

  return result;
}

unint64_t sub_22BEE4480()
{
  result = qword_27D90A140;
  if (!qword_27D90A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A140);
  }

  return result;
}

unint64_t sub_22BEE44D8()
{
  result = qword_27D90A148;
  if (!qword_27D90A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A148);
  }

  return result;
}

unint64_t sub_22BEE4530()
{
  result = qword_27D90A150;
  if (!qword_27D90A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A150);
  }

  return result;
}

unint64_t sub_22BEE4588()
{
  result = qword_27D90A158;
  if (!qword_27D90A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A158);
  }

  return result;
}

unint64_t sub_22BEE45E0()
{
  result = qword_27D90A160;
  if (!qword_27D90A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A160);
  }

  return result;
}

unint64_t sub_22BEE4638()
{
  result = qword_27D90A168;
  if (!qword_27D90A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A168);
  }

  return result;
}

unint64_t sub_22BEE4690()
{
  result = qword_27D90A170;
  if (!qword_27D90A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A170);
  }

  return result;
}

unint64_t sub_22BEE46E8()
{
  result = qword_27D90A178;
  if (!qword_27D90A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A178);
  }

  return result;
}

unint64_t sub_22BEE4740()
{
  result = qword_27D90A180;
  if (!qword_27D90A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A180);
  }

  return result;
}

unint64_t sub_22BEE4798()
{
  result = qword_27D90A188;
  if (!qword_27D90A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A188);
  }

  return result;
}

unint64_t sub_22BEE47F0()
{
  result = qword_27D90A190;
  if (!qword_27D90A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A190);
  }

  return result;
}

unint64_t sub_22BEE4848()
{
  result = qword_27D90A198;
  if (!qword_27D90A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A198);
  }

  return result;
}

unint64_t sub_22BEE48A0()
{
  result = qword_27D90A1A0;
  if (!qword_27D90A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1A0);
  }

  return result;
}

unint64_t sub_22BEE48F8()
{
  result = qword_27D90A1A8;
  if (!qword_27D90A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1A8);
  }

  return result;
}

unint64_t sub_22BEE4950()
{
  result = qword_27D90A1B0;
  if (!qword_27D90A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1B0);
  }

  return result;
}

unint64_t sub_22BEE49A8()
{
  result = qword_27D90A1B8;
  if (!qword_27D90A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1B8);
  }

  return result;
}

unint64_t sub_22BEE4A00()
{
  result = qword_27D90A1C0;
  if (!qword_27D90A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1C0);
  }

  return result;
}

unint64_t sub_22BEE4A58()
{
  result = qword_27D90A1C8;
  if (!qword_27D90A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1C8);
  }

  return result;
}

unint64_t sub_22BEE4AB0()
{
  result = qword_27D90A1D0;
  if (!qword_27D90A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1D0);
  }

  return result;
}

unint64_t sub_22BEE4B08()
{
  result = qword_27D90A1D8;
  if (!qword_27D90A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1D8);
  }

  return result;
}

unint64_t sub_22BEE4B60()
{
  result = qword_27D90A1E0;
  if (!qword_27D90A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1E0);
  }

  return result;
}

unint64_t sub_22BEE4BB8()
{
  result = qword_27D90A1E8;
  if (!qword_27D90A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1E8);
  }

  return result;
}

unint64_t sub_22BEE4C10()
{
  result = qword_27D90A1F0;
  if (!qword_27D90A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1F0);
  }

  return result;
}

unint64_t sub_22BEE4C68()
{
  result = qword_27D90A1F8;
  if (!qword_27D90A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A1F8);
  }

  return result;
}

unint64_t sub_22BEE4CC0()
{
  result = qword_27D90A200;
  if (!qword_27D90A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A200);
  }

  return result;
}

unint64_t sub_22BEE4D18()
{
  result = qword_27D90A208;
  if (!qword_27D90A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A208);
  }

  return result;
}

unint64_t sub_22BEE4D70()
{
  result = qword_27D90A210;
  if (!qword_27D90A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A210);
  }

  return result;
}

unint64_t sub_22BEE4DC8()
{
  result = qword_27D90A218;
  if (!qword_27D90A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A218);
  }

  return result;
}

unint64_t sub_22BEE4E20()
{
  result = qword_27D90A220;
  if (!qword_27D90A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A220);
  }

  return result;
}

unint64_t sub_22BEE4E78()
{
  result = qword_27D90A228;
  if (!qword_27D90A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A228);
  }

  return result;
}

unint64_t sub_22BEE4ED0()
{
  result = qword_27D90A230;
  if (!qword_27D90A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A230);
  }

  return result;
}

unint64_t sub_22BEE4F28()
{
  result = qword_27D90A238;
  if (!qword_27D90A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A238);
  }

  return result;
}

unint64_t sub_22BEE4F80()
{
  result = qword_27D90A240;
  if (!qword_27D90A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A240);
  }

  return result;
}

unint64_t sub_22BEE4FD8()
{
  result = qword_27D90A248;
  if (!qword_27D90A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A248);
  }

  return result;
}

unint64_t sub_22BEE5030()
{
  result = qword_27D90A250;
  if (!qword_27D90A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A250);
  }

  return result;
}

unint64_t sub_22BEE5088()
{
  result = qword_27D90A258;
  if (!qword_27D90A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A258);
  }

  return result;
}

unint64_t sub_22BEE50E0()
{
  result = qword_27D90A260;
  if (!qword_27D90A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A260);
  }

  return result;
}

unint64_t sub_22BEE5138()
{
  result = qword_27D90A268;
  if (!qword_27D90A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A268);
  }

  return result;
}

unint64_t sub_22BEE5190()
{
  result = qword_27D90A270;
  if (!qword_27D90A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A270);
  }

  return result;
}

unint64_t sub_22BEE51E8()
{
  result = qword_27D90A278;
  if (!qword_27D90A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A278);
  }

  return result;
}

unint64_t sub_22BEE5240()
{
  result = qword_27D90A280;
  if (!qword_27D90A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A280);
  }

  return result;
}

unint64_t sub_22BEE5298()
{
  result = qword_27D90A288;
  if (!qword_27D90A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A288);
  }

  return result;
}

unint64_t sub_22BEE52F0()
{
  result = qword_27D90A290;
  if (!qword_27D90A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A290);
  }

  return result;
}

unint64_t sub_22BEE5348()
{
  result = qword_27D90A298;
  if (!qword_27D90A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A298);
  }

  return result;
}

unint64_t sub_22BEE53A0()
{
  result = qword_27D90A2A0;
  if (!qword_27D90A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2A0);
  }

  return result;
}

unint64_t sub_22BEE53F8()
{
  result = qword_27D90A2A8;
  if (!qword_27D90A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2A8);
  }

  return result;
}

unint64_t sub_22BEE5450()
{
  result = qword_27D90A2B0;
  if (!qword_27D90A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2B0);
  }

  return result;
}

unint64_t sub_22BEE54A8()
{
  result = qword_27D90A2B8;
  if (!qword_27D90A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2B8);
  }

  return result;
}

unint64_t sub_22BEE5500()
{
  result = qword_27D90A2C0;
  if (!qword_27D90A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2C0);
  }

  return result;
}

unint64_t sub_22BEE5558()
{
  result = qword_27D90A2C8;
  if (!qword_27D90A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2C8);
  }

  return result;
}

unint64_t sub_22BEE55B0()
{
  result = qword_27D90A2D0;
  if (!qword_27D90A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2D0);
  }

  return result;
}

unint64_t sub_22BEE5608()
{
  result = qword_27D90A2D8;
  if (!qword_27D90A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2D8);
  }

  return result;
}

unint64_t sub_22BEE5660()
{
  result = qword_27D90A2E0;
  if (!qword_27D90A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2E0);
  }

  return result;
}

unint64_t sub_22BEE56B8()
{
  result = qword_27D90A2E8;
  if (!qword_27D90A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2E8);
  }

  return result;
}

unint64_t sub_22BEE5710()
{
  result = qword_27D90A2F0;
  if (!qword_27D90A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2F0);
  }

  return result;
}

unint64_t sub_22BEE5768()
{
  result = qword_27D90A2F8;
  if (!qword_27D90A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A2F8);
  }

  return result;
}

unint64_t sub_22BEE57C0()
{
  result = qword_27D90A300;
  if (!qword_27D90A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A300);
  }

  return result;
}

unint64_t sub_22BEE5818()
{
  result = qword_27D90A308;
  if (!qword_27D90A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A308);
  }

  return result;
}

unint64_t sub_22BEE5870()
{
  result = qword_27D90A310;
  if (!qword_27D90A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A310);
  }

  return result;
}

unint64_t sub_22BEE58C8()
{
  result = qword_27D90A318;
  if (!qword_27D90A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A318);
  }

  return result;
}

unint64_t sub_22BEE5920()
{
  result = qword_27D90A320;
  if (!qword_27D90A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A320);
  }

  return result;
}

unint64_t sub_22BEE5978()
{
  result = qword_27D90A328;
  if (!qword_27D90A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A328);
  }

  return result;
}

unint64_t sub_22BEE59D0()
{
  result = qword_27D90A330;
  if (!qword_27D90A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A330);
  }

  return result;
}

unint64_t sub_22BEE5A28()
{
  result = qword_27D90A338;
  if (!qword_27D90A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A338);
  }

  return result;
}

unint64_t sub_22BEE5A80()
{
  result = qword_27D90A340;
  if (!qword_27D90A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A340);
  }

  return result;
}

unint64_t sub_22BEE5AD8()
{
  result = qword_27D90A348;
  if (!qword_27D90A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A348);
  }

  return result;
}

unint64_t sub_22BEE5B30()
{
  result = qword_27D90A350;
  if (!qword_27D90A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A350);
  }

  return result;
}

unint64_t sub_22BEE5B88()
{
  result = qword_27D90A358;
  if (!qword_27D90A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A358);
  }

  return result;
}

unint64_t sub_22BEE5BE0()
{
  result = qword_27D90A360;
  if (!qword_27D90A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A360);
  }

  return result;
}

unint64_t sub_22BEE5C38()
{
  result = qword_27D90A368;
  if (!qword_27D90A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A368);
  }

  return result;
}

unint64_t sub_22BEE5C90()
{
  result = qword_27D90A370;
  if (!qword_27D90A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A370);
  }

  return result;
}

unint64_t sub_22BEE5CE8()
{
  result = qword_27D90A378;
  if (!qword_27D90A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A378);
  }

  return result;
}

unint64_t sub_22BEE5D40()
{
  result = qword_27D90A380;
  if (!qword_27D90A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A380);
  }

  return result;
}

unint64_t sub_22BEE5D98()
{
  result = qword_27D90A388;
  if (!qword_27D90A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A388);
  }

  return result;
}

unint64_t sub_22BEE5DF0()
{
  result = qword_27D90A390;
  if (!qword_27D90A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A390);
  }

  return result;
}

unint64_t sub_22BEE5E48()
{
  result = qword_27D90A398;
  if (!qword_27D90A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A398);
  }

  return result;
}

unint64_t sub_22BEE5EA0()
{
  result = qword_27D90A3A0;
  if (!qword_27D90A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3A0);
  }

  return result;
}

unint64_t sub_22BEE5EF8()
{
  result = qword_27D90A3A8;
  if (!qword_27D90A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3A8);
  }

  return result;
}

unint64_t sub_22BEE5F50()
{
  result = qword_27D90A3B0;
  if (!qword_27D90A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3B0);
  }

  return result;
}

unint64_t sub_22BEE5FA8()
{
  result = qword_27D90A3B8;
  if (!qword_27D90A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3B8);
  }

  return result;
}

unint64_t sub_22BEE6000()
{
  result = qword_27D90A3C0;
  if (!qword_27D90A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3C0);
  }

  return result;
}

unint64_t sub_22BEE6058()
{
  result = qword_27D90A3C8;
  if (!qword_27D90A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3C8);
  }

  return result;
}

unint64_t sub_22BEE60B0()
{
  result = qword_27D90A3D0;
  if (!qword_27D90A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3D0);
  }

  return result;
}

unint64_t sub_22BEE6108()
{
  result = qword_27D90A3D8;
  if (!qword_27D90A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3D8);
  }

  return result;
}

unint64_t sub_22BEE6160()
{
  result = qword_27D90A3E0;
  if (!qword_27D90A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3E0);
  }

  return result;
}

unint64_t sub_22BEE61B8()
{
  result = qword_27D90A3E8;
  if (!qword_27D90A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3E8);
  }

  return result;
}

unint64_t sub_22BEE6210()
{
  result = qword_27D90A3F0;
  if (!qword_27D90A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3F0);
  }

  return result;
}

unint64_t sub_22BEE6268()
{
  result = qword_27D90A3F8;
  if (!qword_27D90A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A3F8);
  }

  return result;
}

unint64_t sub_22BEE62C0()
{
  result = qword_27D90A400;
  if (!qword_27D90A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A400);
  }

  return result;
}

unint64_t sub_22BEE6318()
{
  result = qword_27D90A408;
  if (!qword_27D90A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A408);
  }

  return result;
}

unint64_t sub_22BEE6370()
{
  result = qword_27D90A410;
  if (!qword_27D90A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A410);
  }

  return result;
}

unint64_t sub_22BEE63C8()
{
  result = qword_27D90A418;
  if (!qword_27D90A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A418);
  }

  return result;
}

unint64_t sub_22BEE6420()
{
  result = qword_27D90A420;
  if (!qword_27D90A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A420);
  }

  return result;
}

unint64_t sub_22BEE6478()
{
  result = qword_27D90A428;
  if (!qword_27D90A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A428);
  }

  return result;
}

unint64_t sub_22BEE64D0()
{
  result = qword_27D90A430;
  if (!qword_27D90A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A430);
  }

  return result;
}

unint64_t sub_22BEE6528()
{
  result = qword_27D90A438;
  if (!qword_27D90A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A438);
  }

  return result;
}

unint64_t sub_22BEE6580()
{
  result = qword_27D90A440;
  if (!qword_27D90A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A440);
  }

  return result;
}

unint64_t sub_22BEE65D8()
{
  result = qword_27D90A448;
  if (!qword_27D90A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A448);
  }

  return result;
}

unint64_t sub_22BEE6630()
{
  result = qword_27D90A450;
  if (!qword_27D90A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A450);
  }

  return result;
}

unint64_t sub_22BEE6688()
{
  result = qword_27D90A458;
  if (!qword_27D90A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A458);
  }

  return result;
}

unint64_t sub_22BEE66E0()
{
  result = qword_27D90A460;
  if (!qword_27D90A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A460);
  }

  return result;
}

unint64_t sub_22BEE6738()
{
  result = qword_27D90A468;
  if (!qword_27D90A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A468);
  }

  return result;
}

unint64_t sub_22BEE6790()
{
  result = qword_27D90A470;
  if (!qword_27D90A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A470);
  }

  return result;
}

unint64_t sub_22BEE67E8()
{
  result = qword_27D90A478;
  if (!qword_27D90A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A478);
  }

  return result;
}

unint64_t sub_22BEE6840()
{
  result = qword_27D90A480;
  if (!qword_27D90A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A480);
  }

  return result;
}

unint64_t sub_22BEE6898()
{
  result = qword_27D90A488;
  if (!qword_27D90A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A488);
  }

  return result;
}

unint64_t sub_22BEE68F0()
{
  result = qword_27D90A490;
  if (!qword_27D90A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A490);
  }

  return result;
}

unint64_t sub_22BEE6948()
{
  result = qword_27D90A498;
  if (!qword_27D90A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A498);
  }

  return result;
}

unint64_t sub_22BEE69A0()
{
  result = qword_27D90A4A0;
  if (!qword_27D90A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4A0);
  }

  return result;
}

unint64_t sub_22BEE69F8()
{
  result = qword_27D90A4A8;
  if (!qword_27D90A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4A8);
  }

  return result;
}

unint64_t sub_22BEE6A50()
{
  result = qword_27D90A4B0;
  if (!qword_27D90A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4B0);
  }

  return result;
}

unint64_t sub_22BEE6AA8()
{
  result = qword_27D90A4B8;
  if (!qword_27D90A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4B8);
  }

  return result;
}

unint64_t sub_22BEE6B00()
{
  result = qword_27D90A4C0;
  if (!qword_27D90A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4C0);
  }

  return result;
}

unint64_t sub_22BEE6B58()
{
  result = qword_27D90A4C8;
  if (!qword_27D90A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4C8);
  }

  return result;
}

unint64_t sub_22BEE6BB0()
{
  result = qword_27D90A4D0;
  if (!qword_27D90A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4D0);
  }

  return result;
}

unint64_t sub_22BEE6C08()
{
  result = qword_27D90A4D8;
  if (!qword_27D90A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4D8);
  }

  return result;
}

unint64_t sub_22BEE6C60()
{
  result = qword_27D90A4E0;
  if (!qword_27D90A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4E0);
  }

  return result;
}

unint64_t sub_22BEE6CB8()
{
  result = qword_27D90A4E8;
  if (!qword_27D90A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4E8);
  }

  return result;
}

unint64_t sub_22BEE6D10()
{
  result = qword_27D90A4F0;
  if (!qword_27D90A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4F0);
  }

  return result;
}

unint64_t sub_22BEE6D68()
{
  result = qword_27D90A4F8;
  if (!qword_27D90A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A4F8);
  }

  return result;
}

unint64_t sub_22BEE6DC0()
{
  result = qword_27D90A500;
  if (!qword_27D90A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A500);
  }

  return result;
}

unint64_t sub_22BEE6E18()
{
  result = qword_27D90A508;
  if (!qword_27D90A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A508);
  }

  return result;
}

unint64_t sub_22BEE6E70()
{
  result = qword_27D90A510;
  if (!qword_27D90A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A510);
  }

  return result;
}

unint64_t sub_22BEE6EC8()
{
  result = qword_27D90A518;
  if (!qword_27D90A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A518);
  }

  return result;
}

unint64_t sub_22BEE6F20()
{
  result = qword_27D90A520;
  if (!qword_27D90A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A520);
  }

  return result;
}

unint64_t sub_22BEE6F78()
{
  result = qword_27D90A528;
  if (!qword_27D90A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A528);
  }

  return result;
}

unint64_t sub_22BEE6FD0()
{
  result = qword_27D90A530;
  if (!qword_27D90A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A530);
  }

  return result;
}

unint64_t sub_22BEE7028()
{
  result = qword_27D90A538;
  if (!qword_27D90A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A538);
  }

  return result;
}

unint64_t sub_22BEE7080()
{
  result = qword_27D90A540;
  if (!qword_27D90A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A540);
  }

  return result;
}

unint64_t sub_22BEE70D8()
{
  result = qword_27D90A548;
  if (!qword_27D90A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A548);
  }

  return result;
}

unint64_t sub_22BEE7130()
{
  result = qword_27D90A550;
  if (!qword_27D90A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A550);
  }

  return result;
}

unint64_t sub_22BEE7188()
{
  result = qword_27D90A558;
  if (!qword_27D90A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A558);
  }

  return result;
}

unint64_t sub_22BEE71E0()
{
  result = qword_27D90A560;
  if (!qword_27D90A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A560);
  }

  return result;
}

unint64_t sub_22BEE7238()
{
  result = qword_27D90A568;
  if (!qword_27D90A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A568);
  }

  return result;
}

unint64_t sub_22BEE7290()
{
  result = qword_27D90A570;
  if (!qword_27D90A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A570);
  }

  return result;
}

unint64_t sub_22BEE72E8()
{
  result = qword_27D90A578;
  if (!qword_27D90A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A578);
  }

  return result;
}

unint64_t sub_22BEE7340()
{
  result = qword_27D90A580;
  if (!qword_27D90A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A580);
  }

  return result;
}

unint64_t sub_22BEE7398()
{
  result = qword_27D90A588;
  if (!qword_27D90A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A588);
  }

  return result;
}

unint64_t sub_22BEE73F0()
{
  result = qword_27D90A590;
  if (!qword_27D90A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A590);
  }

  return result;
}

unint64_t sub_22BEE7448()
{
  result = qword_27D90A598;
  if (!qword_27D90A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A598);
  }

  return result;
}

unint64_t sub_22BEE74A0()
{
  result = qword_27D90A5A0;
  if (!qword_27D90A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5A0);
  }

  return result;
}

unint64_t sub_22BEE74F8()
{
  result = qword_27D90A5A8;
  if (!qword_27D90A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5A8);
  }

  return result;
}

unint64_t sub_22BEE7550()
{
  result = qword_27D90A5B0;
  if (!qword_27D90A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5B0);
  }

  return result;
}

unint64_t sub_22BEE75A8()
{
  result = qword_27D90A5B8;
  if (!qword_27D90A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5B8);
  }

  return result;
}

unint64_t sub_22BEE7600()
{
  result = qword_27D90A5C0;
  if (!qword_27D90A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5C0);
  }

  return result;
}

unint64_t sub_22BEE7658()
{
  result = qword_27D90A5C8;
  if (!qword_27D90A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5C8);
  }

  return result;
}

unint64_t sub_22BEE76B0()
{
  result = qword_27D90A5D0;
  if (!qword_27D90A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5D0);
  }

  return result;
}

unint64_t sub_22BEE7708()
{
  result = qword_27D90A5D8;
  if (!qword_27D90A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5D8);
  }

  return result;
}

unint64_t sub_22BEE7760()
{
  result = qword_27D90A5E0;
  if (!qword_27D90A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5E0);
  }

  return result;
}

unint64_t sub_22BEE77B8()
{
  result = qword_27D90A5E8;
  if (!qword_27D90A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5E8);
  }

  return result;
}

unint64_t sub_22BEE7810()
{
  result = qword_27D90A5F0;
  if (!qword_27D90A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5F0);
  }

  return result;
}

unint64_t sub_22BEE7868()
{
  result = qword_27D90A5F8;
  if (!qword_27D90A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A5F8);
  }

  return result;
}

unint64_t sub_22BEE78C0()
{
  result = qword_27D90A600;
  if (!qword_27D90A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A600);
  }

  return result;
}

unint64_t sub_22BEE7918()
{
  result = qword_27D90A608;
  if (!qword_27D90A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A608);
  }

  return result;
}

unint64_t sub_22BEE7970()
{
  result = qword_27D90A610;
  if (!qword_27D90A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A610);
  }

  return result;
}

unint64_t sub_22BEE79C8()
{
  result = qword_27D90A618;
  if (!qword_27D90A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A618);
  }

  return result;
}

unint64_t sub_22BEE7A20()
{
  result = qword_27D90A620;
  if (!qword_27D90A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A620);
  }

  return result;
}

unint64_t sub_22BEE7A78()
{
  result = qword_27D90A628;
  if (!qword_27D90A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A628);
  }

  return result;
}

unint64_t sub_22BEE7AD0()
{
  result = qword_27D90A630;
  if (!qword_27D90A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A630);
  }

  return result;
}

unint64_t sub_22BEE7B28()
{
  result = qword_27D90A638;
  if (!qword_27D90A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A638);
  }

  return result;
}

unint64_t sub_22BEE7B80()
{
  result = qword_27D90A640;
  if (!qword_27D90A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A640);
  }

  return result;
}

unint64_t sub_22BEE7BD8()
{
  result = qword_27D90A648;
  if (!qword_27D90A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A648);
  }

  return result;
}

unint64_t sub_22BEE7C30()
{
  result = qword_27D90A650;
  if (!qword_27D90A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A650);
  }

  return result;
}

unint64_t sub_22BEE7C88()
{
  result = qword_27D90A658;
  if (!qword_27D90A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A658);
  }

  return result;
}

unint64_t sub_22BEE7CE0()
{
  result = qword_27D90A660;
  if (!qword_27D90A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A660);
  }

  return result;
}

unint64_t sub_22BEE7D38()
{
  result = qword_27D90A668;
  if (!qword_27D90A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A668);
  }

  return result;
}

unint64_t sub_22BEE7D90()
{
  result = qword_27D90A670;
  if (!qword_27D90A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A670);
  }

  return result;
}

unint64_t sub_22BEE7DE8()
{
  result = qword_27D90A678;
  if (!qword_27D90A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A678);
  }

  return result;
}

unint64_t sub_22BEE7E40()
{
  result = qword_27D90A680;
  if (!qword_27D90A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A680);
  }

  return result;
}

unint64_t sub_22BEE7E98()
{
  result = qword_27D90A688;
  if (!qword_27D90A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A688);
  }

  return result;
}

unint64_t sub_22BEE7EF0()
{
  result = qword_27D90A690;
  if (!qword_27D90A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A690);
  }

  return result;
}

unint64_t sub_22BEE7F48()
{
  result = qword_27D90A698;
  if (!qword_27D90A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A698);
  }

  return result;
}

unint64_t sub_22BEE7FA0()
{
  result = qword_27D90A6A0;
  if (!qword_27D90A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6A0);
  }

  return result;
}

unint64_t sub_22BEE7FF8()
{
  result = qword_27D90A6A8;
  if (!qword_27D90A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6A8);
  }

  return result;
}

unint64_t sub_22BEE8050()
{
  result = qword_27D90A6B0;
  if (!qword_27D90A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6B0);
  }

  return result;
}

unint64_t sub_22BEE80A8()
{
  result = qword_27D90A6B8;
  if (!qword_27D90A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6B8);
  }

  return result;
}

unint64_t sub_22BEE8100()
{
  result = qword_27D90A6C0;
  if (!qword_27D90A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6C0);
  }

  return result;
}

unint64_t sub_22BEE8158()
{
  result = qword_27D90A6C8;
  if (!qword_27D90A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6C8);
  }

  return result;
}

unint64_t sub_22BEE81B0()
{
  result = qword_27D90A6D0;
  if (!qword_27D90A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6D0);
  }

  return result;
}

unint64_t sub_22BEE8208()
{
  result = qword_27D90A6D8;
  if (!qword_27D90A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6D8);
  }

  return result;
}

unint64_t sub_22BEE8260()
{
  result = qword_27D90A6E0;
  if (!qword_27D90A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6E0);
  }

  return result;
}

unint64_t sub_22BEE82B8()
{
  result = qword_27D90A6E8;
  if (!qword_27D90A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6E8);
  }

  return result;
}

unint64_t sub_22BEE8310()
{
  result = qword_27D90A6F0;
  if (!qword_27D90A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6F0);
  }

  return result;
}

unint64_t sub_22BEE8368()
{
  result = qword_27D90A6F8;
  if (!qword_27D90A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A6F8);
  }

  return result;
}

unint64_t sub_22BEE83C0()
{
  result = qword_27D90A700;
  if (!qword_27D90A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A700);
  }

  return result;
}

unint64_t sub_22BEE8418()
{
  result = qword_27D90A708;
  if (!qword_27D90A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A708);
  }

  return result;
}

unint64_t sub_22BEE8470()
{
  result = qword_27D90A710;
  if (!qword_27D90A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A710);
  }

  return result;
}

unint64_t sub_22BEE84C8()
{
  result = qword_27D90A718;
  if (!qword_27D90A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A718);
  }

  return result;
}

unint64_t sub_22BEE8520()
{
  result = qword_27D90A720;
  if (!qword_27D90A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A720);
  }

  return result;
}

unint64_t sub_22BEE8578()
{
  result = qword_27D90A728;
  if (!qword_27D90A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A728);
  }

  return result;
}

unint64_t sub_22BEE85D0()
{
  result = qword_27D90A730;
  if (!qword_27D90A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A730);
  }

  return result;
}

unint64_t sub_22BEE8628()
{
  result = qword_27D90A738;
  if (!qword_27D90A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A738);
  }

  return result;
}

unint64_t sub_22BEE8680()
{
  result = qword_27D90A740;
  if (!qword_27D90A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A740);
  }

  return result;
}

unint64_t sub_22BEE86D8()
{
  result = qword_27D90A748;
  if (!qword_27D90A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A748);
  }

  return result;
}

unint64_t sub_22BEE8730()
{
  result = qword_27D90A750;
  if (!qword_27D90A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A750);
  }

  return result;
}

unint64_t sub_22BEE8788()
{
  result = qword_27D90A758;
  if (!qword_27D90A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A758);
  }

  return result;
}

unint64_t sub_22BEE87E0()
{
  result = qword_27D90A760;
  if (!qword_27D90A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A760);
  }

  return result;
}

unint64_t sub_22BEE8838()
{
  result = qword_27D90A768;
  if (!qword_27D90A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A768);
  }

  return result;
}

unint64_t sub_22BEE8890()
{
  result = qword_27D90A770;
  if (!qword_27D90A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A770);
  }

  return result;
}

unint64_t sub_22BEE88E8()
{
  result = qword_27D90A778;
  if (!qword_27D90A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A778);
  }

  return result;
}

unint64_t sub_22BEE8940()
{
  result = qword_27D90A780;
  if (!qword_27D90A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A780);
  }

  return result;
}

unint64_t sub_22BEE8998()
{
  result = qword_27D90A788;
  if (!qword_27D90A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A788);
  }

  return result;
}

unint64_t sub_22BEE89F0()
{
  result = qword_27D90A790;
  if (!qword_27D90A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A790);
  }

  return result;
}

unint64_t sub_22BEE8A48()
{
  result = qword_27D90A798;
  if (!qword_27D90A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A798);
  }

  return result;
}

unint64_t sub_22BEE8AA0()
{
  result = qword_27D90A7A0;
  if (!qword_27D90A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A7A0);
  }

  return result;
}

unint64_t sub_22BEE8AF8()
{
  result = qword_27D90A7A8;
  if (!qword_27D90A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A7A8);
  }

  return result;
}

unint64_t sub_22BEE8B50()
{
  result = qword_27D90A7B0;
  if (!qword_27D90A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A7B0);
  }

  return result;
}

unint64_t sub_22BEE8BA8()
{
  result = qword_27D90A7B8;
  if (!qword_27D90A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A7B8);
  }

  return result;
}

unint64_t sub_22BEE8C00()
{
  result = qword_27D90A7C0;
  if (!qword_27D90A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A7C0);
  }

  return result;
}

unint64_t sub_22BEE8C58()
{
  result = qword_27D90A7C8;
  if (!qword_27D90A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A7C8);
  }

  return result;
}

unint64_t sub_22BEE8CB0()
{
  result = qword_27D90A7D0;
  if (!qword_27D90A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A7D0);
  }

  return result;
}

unint64_t sub_22BEE8D08()
{
  result = qword_27D90A7D8;
  if (!qword_27D90A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A7D8);
  }

  return result;
}

unint64_t sub_22BEE8D60()
{
  result = qword_27D90A7E0;
  if (!qword_27D90A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A7E0);
  }

  return result;
}

unint64_t sub_22BEE8DB8()
{
  result = qword_27D90A7E8;
  if (!qword_27D90A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A7E8);
  }

  return result;
}

unint64_t sub_22BEE8E10()
{
  result = qword_27D90A7F0;
  if (!qword_27D90A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A7F0);
  }

  return result;
}

uint64_t sub_22BEE8E64()
{
  sub_22BE18378();
  sub_22BE39168(v1, v2, v3, v4);
  sub_22BE18000();
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t sub_22BEE90D0(uint64_t a1, uint64_t a2)
{

  return sub_22C273EE4();
}

uint64_t sub_22BEE90F4(uint64_t a1)
{

  return sub_22C273EB4();
}

uint64_t sub_22BEE9150(uint64_t a1, uint64_t a2)
{

  return sub_22C273FA4();
}

void sub_22BEE92CC(unint64_t a1@<X8>)
{

  sub_22BE66BFC(a1 > 1, v1, 1, v2);
}

uint64_t sub_22BEE92F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t sub_22BEE9320(uint64_t a1, uint64_t a2)
{

  return sub_22C273DE4();
}

uint64_t sub_22BEE9340()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BEE9360@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;

  return sub_22C26E684();
}

uint64_t sub_22BEE93E8(uint64_t a1, uint64_t a2)
{

  return sub_22C273DE4();
}

uint64_t sub_22BEE940C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C274214();
}

uint64_t sub_22BEE9428()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BEE9444()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BEE945C(uint64_t a1)
{

  return sub_22C273F64();
}

uint64_t sub_22BEE94E0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C273E44();
}

uint64_t sub_22BEE9500()
{

  return swift_allocObject();
}

uint64_t sub_22BEE9520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v5 = sub_22BE5CE4C(&qword_27D90A8A0, &unk_22C2D1FB0);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &i - v6;
  v64 = type metadata accessor for Expression(0);
  MEMORY[0x28223BE20](v64);
  v63 = (&i - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &qword_27D907240;
  v9 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &i - v10;
  v12 = sub_22C26E684();
  MEMORY[0x28223BE20](v12);
  v59 = &i - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v62 = &i - v15;
  MEMORY[0x28223BE20](v16);
  v56 = &i - v17;
  v57 = v18;
  v19 = 0;
  v20 = *(a3 + 16);
  v70 = (v18 + 16);
  v58 = (v18 + 32);
  v21 = a3 + 32;
  v60 = MEMORY[0x277D84F90];
  v61 = v20;
  for (i = a3 + 32; ; v21 = i)
  {
    v22 = (v21 + 8 * v19);
    v23 = v20 - v19++;
    if (!v23)
    {
      break;
    }

    while (1)
    {
      v24 = *v22;
      v25 = *v22 >> 60;
      if (v25 == 2)
      {
        if (*((v24 & 0xFFFFFFFFFFFFFFFLL) + 0x20) != 3)
        {
LABEL_17:
          sub_22BEEA690();
          swift_allocError();
          *(v53 + 8) = 0;
          *(v53 + 16) = 0;
          *v53 = v24;
          *(v53 + 24) = 96;
          swift_willThrow();
          sub_22BEA7680(v24);
          v52 = v60;

          return v52;
        }

        v66 = v23;
        v27 = *((v24 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v28 = *((v24 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v68 = v19;
        v29 = v63;
        *v63 = v27;
        *(v29 + 8) = v28;
        *(v29 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        v67 = v22;
        v30 = v12;
        v31 = v11;
        v32 = v8;
        v33 = (*(v69 + 32) + 16);
        sub_22BEA7680(v24);
        sub_22BEA76B8(v27, v28, 3);
        atomic_fetch_add_explicit(v33, 1u, memory_order_relaxed);
        sub_22C26E664();
        v34 = *v70;
        v35 = v62;
        (*v70)(v62, v31, v30);
        v36 = v65;
        v34(v65, v31, v30);
        v8 = v32;
        v37 = type metadata accessor for ProgramStatement(0);
        sub_22BEF8A70(v29, v36 + v37[5], type metadata accessor for Expression);
        v38 = v37[7];
        v39 = v37[9];
        v40 = v36 + v37[8];
        *(v36 + v37[6]) = 0;
        *(v36 + v38) = 0;
        *v40 = 0;
        *(v40 + 4) = 1;
        *(v36 + v39) = 0;
        v41 = v37;
        v23 = v66;
        sub_22BE19DC4(v36, 0, 1, v41);
        v42 = v35;
        v20 = v61;
        sub_22BEF24B8(v36, v42);
        v11 = v31;
        v12 = v30;
        v43 = v29;
        v22 = v67;
        v19 = v68;
        sub_22BEF8AC8(v43, type metadata accessor for Expression);
      }

      else
      {
        if (v25 != 1)
        {
          goto LABEL_17;
        }

        v26 = swift_projectBox();
        (*v70)(v11, v26, v12);
        sub_22BEA7680(v24);
      }

      sub_22BE19DC4(v11, 0, 1, v12);
      sub_22BE63574(v24);
      if (sub_22BE1AEA8(v11, 1, v12) != 1)
      {
        break;
      }

      sub_22BE233E8(v11, v8, &unk_22C2B5B80);
      ++v19;
      ++v22;
      if (!--v23)
      {
        return v60;
      }
    }

    v44 = *v58;
    v45 = v56;
    (*v58)(v56, v11, v12);
    v44(v59, v45, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE66BFC(0, *(v60 + 16) + 1, 1, v60);
      v60 = v50;
    }

    v47 = *(v60 + 16);
    v46 = *(v60 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_22BE66BFC(v46 > 1, v47 + 1, 1, v60);
      v60 = v51;
    }

    v48 = v59;
    v49 = v60;
    *(v60 + 16) = v47 + 1;
    v44((v49 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v47), v48, v12);
  }

  return v60;
}

void sub_22BEE9ABC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116090(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v8[0] = v2 + 32;
  v8[1] = v7;
  sub_22BEF38E0(v8);
  *a1 = v2;
}

uint64_t sub_22BEE9B28(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = sub_22C26E684();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v23 = v2;
    v25 = MEMORY[0x277D84F90];
    sub_22BE71084();
    v7 = v25;
    v18[1] = v4 + 32;
    v19 = v4;
    v8 = (a1 + 64);
    v9 = v22;
    while (1)
    {
      v10 = *(v8 - 4);
      v11 = *(v8 - 3);
      v12 = *(v8 - 2);
      v13 = *(v8 - 8);
      v24 = *v8;
      v14 = v24;
      sub_22BE6355C(v10, v11, v12, v13);
      sub_22BEA7680(v14);
      v15 = v23;
      sub_22BEEA6E4(&v24, v9);
      if (v15)
      {
        break;
      }

      v23 = 0;
      sub_22BE635AC(v10, v11, v12, v13);
      sub_22BE63574(v14);
      v25 = v7;
      v16 = *(v7 + 16);
      if (v16 >= *(v7 + 24) >> 1)
      {
        sub_22BE71084();
        v7 = v25;
      }

      v8 += 5;
      *(v7 + 16) = v16 + 1;
      v9 = v22;
      (*(v19 + 32))(v7 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v22, v20);
      if (!--v6)
      {
        return v7;
      }
    }

    sub_22BE635AC(v10, v11, v12, v13);
    sub_22BE63574(v14);
  }

  return v7;
}

uint64_t sub_22BEE9D54(uint64_t a1)
{
  v16 = sub_22C26E684();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v18 = MEMORY[0x277D84F90];
    sub_22BE71084();
    v10 = v18;
    v11 = (a1 + 32);
    while (1)
    {
      v12 = *v11++;
      v17 = v12;
      sub_22BEA7680(v12);
      sub_22BEEA6E4(&v17, v8);
      v13 = v12;
      if (v1)
      {
        break;
      }

      sub_22BE63574(v13);
      v18 = v10;
      v14 = *(v10 + 16);
      if (v14 >= *(v10 + 24) >> 1)
      {
        sub_22BE71084();
        v10 = v18;
      }

      *(v10 + 16) = v14 + 1;
      (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v8, v16);
      if (!--v9)
      {
        return v10;
      }
    }

    sub_22BE63574(v13);
  }

  return v10;
}

void sub_22BEE9EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v40 = a5;
  v39 = sub_22C26E684();
  MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v42 = *(a4 + 16);
  v43 = a4;
  v37 = (v17 + 32);

  v19 = 0;
  v41 = a3;
  v20 = (a3 + 40);
  v36 = v16;
  while (1)
  {
    if (v42 == v19)
    {

      return;
    }

    if (v19 >= *(v41 + 16))
    {
      break;
    }

    v44 = a1;
    v21 = *(v20 - 1);
    v22 = *v20;
    v23 = *(v43 + 8 * v19 + 32);
    v45[0] = v21;
    v45[1] = v22;
    MEMORY[0x28223BE20](v18);
    *(&v35 - 2) = v45;

    sub_22BEA7680(v23);
    v24 = sub_22BF0CBD8(sub_22BEF89B4, (&v35 - 4), &unk_283F8B3F8);

    sub_22BEA7680(v23);
    sub_22BE63574(v23);
    if (v24)
    {
      v45[0] = v23;
      sub_22BEF1040(&v46);
      v25 = v36;
      sub_22BEEA6E4(&v46, v36);
      if (v6)
      {
        sub_22BE63574(v46);
LABEL_11:
        swift_bridgeObjectRelease_n();
        sub_22BE63574(v23);

        return;
      }

      v26.n128_f64[0] = sub_22BE63574(v46);
    }

    else
    {
      v45[0] = v23;
      v25 = v13;
      sub_22BEEA6E4(v45, v13);
      if (v6)
      {
        goto LABEL_11;
      }
    }

    v27 = v25;
    v28 = v38;
    (*v37)(v38, v27, v39, v26);
    v29 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45[0] = v29;
    sub_22BE62774(v28, v21, v22, isUniquelyReferenced_nonNull_native, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    swift_bridgeObjectRelease_n();
    sub_22BE63574(v23);
    a1 = v45[0];
    v20 += 2;
    ++v19;
  }

  __break(1u);
}

uint64_t ExpressionFlattener.init(statementIdCounter:allowUnresolvedTools:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  *a3 = 0;
  *(a3 + 8) = v3;
  v4 = MEMORY[0x277D84F98];
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  *(a3 + 32) = result;
  *(a3 + 40) = a2;
  return result;
}

uint64_t static ExpressionFlattener.flatten(statementIdCounter:program:allowUnresolvedTools:)(uint64_t a1, uint64_t *a2, char a3)
{
  v3 = *a2;
  v7[1] = 0;
  v7[2] = MEMORY[0x277D84F90];
  v7[3] = MEMORY[0x277D84F90];
  v7[4] = MEMORY[0x277D84F98];
  v7[5] = a1;
  v8 = a3;
  v7[0] = v3;

  ExpressionFlattener.flatten(program:)(v7);
  v5 = v4;

  return v5;
}

void ExpressionFlattener.flatten(program:)(uint64_t *a1)
{
  sub_22C2720A4();
  sub_22BE179D8();
  v38 = v5;
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v37 = v7 - v6;
  v40 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = (v10 - v9);
  v12 = 0;
  v13 = *a1;
  v14 = *(*a1 + 16);
  v41 = *a1 + 32;
  v16 = (v15 + 8);
  while (1)
  {
    if (v14 == v12)
    {
      v19 = *v1;
      v20 = v1[1];
      v21 = v1[2];

      sub_22BE68C6C(v19, v20, v21);

      sub_22BEF5100(MEMORY[0x277D84F90]);
      v23 = v22;
      v25 = v24;
      v27 = v26;

      *v1 = v23;
      v1[1] = v25;
      v1[2] = v27;
      return;
    }

    if (v12 >= *(v13 + 16))
    {
      __break(1u);
      return;
    }

    v17 = *(v41 + 8 * v12);
    if (v17 >> 62)
    {
      break;
    }

    v42 = *(v17 + 16);
    v18 = v42;

    sub_22BEA7680(v18);
    sub_22BEEA6E4(&v42, v11);
    if (v2)
    {

      sub_22BE63574(v18);
      return;
    }

    (*v16)(v11, v40);

    sub_22BE63574(v18);
    ++v12;
  }

  sub_22C271B54();

  v28 = sub_22C272084();
  v29 = sub_22C2737A4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v31;
    *v30 = 136380675;

    v32 = sub_22BEB65D0(0, v17);
    v34 = v33;

    v35 = sub_22BE61C88(v32, v34, &v42);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_22BE15000, v28, v29, "cannot flatten non-expr statement: %{private}s", v30, 0xCu);
    sub_22BE26B64(v31);
    MEMORY[0x2318AD180](v31, -1, -1);
    MEMORY[0x2318AD180](v30, -1, -1);
  }

  (*(v38 + 8))(v37, v39);
  sub_22BEEA690();
  swift_allocError();
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  *v36 = v17;
  *(v36 + 24) = 32;
  swift_willThrow();
}

unint64_t sub_22BEEA690()
{
  result = qword_27D90A868;
  if (!qword_27D90A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90A868);
  }

  return result;
}

void sub_22BEEA6E4(uint64_t a1@<X0>, char *a2@<X8>)
{
  *&v558 = a1;
  v555 = a2;
  v541 = sub_22C2720A4();
  v540 = *(v541 - 8);
  MEMORY[0x28223BE20](v541);
  v533 = (&v496 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v539 = &v496 - v4;
  updated = type metadata accessor for AST.UpdateParameters(0);
  MEMORY[0x28223BE20](updated - 8);
  v547 = &v496 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v546 = sub_22BE5CE4C(&qword_27D90A888, &unk_22C288A80);
  v521 = *(v546 - 8);
  MEMORY[0x28223BE20](v546);
  v544 = &v496 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v545 = &v496 - v9;
  v553 = sub_22BE5CE4C(&qword_27D9092C8, &qword_22C27FEB0);
  MEMORY[0x28223BE20](v553);
  v543 = &v496 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v550 = &v496 - v12;
  MEMORY[0x28223BE20](v13);
  v552 = &v496 - v14;
  v524 = type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate(0);
  v523 = *(v524 - 8);
  MEMORY[0x28223BE20](v524);
  v526 = &v496 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v511 = type metadata accessor for AnswerSynthesisExpression(0);
  MEMORY[0x28223BE20](v511);
  v513 = &v496 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  MEMORY[0x28223BE20](v17 - 8);
  v532 = &v496 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v520 = &v496 - v20;
  v21 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  MEMORY[0x28223BE20](v21 - 8);
  v514 = &v496 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v515 = &v496 - v24;
  MEMORY[0x28223BE20](v25);
  v516 = &v496 - v26;
  MEMORY[0x28223BE20](v27);
  v517 = &v496 - v28;
  MEMORY[0x28223BE20](v29);
  v528 = &v496 - v30;
  MEMORY[0x28223BE20](v31);
  v536 = (&v496 - v32);
  v556 = sub_22C26E684();
  v554 = *(v556 - 8);
  MEMORY[0x28223BE20](v556);
  v538 = &v496 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v549 = &v496 - v35;
  MEMORY[0x28223BE20](v36);
  v537 = &v496 - v37;
  MEMORY[0x28223BE20](v38);
  v548 = &v496 - v39;
  MEMORY[0x28223BE20](v40);
  v551 = &v496 - v41;
  MEMORY[0x28223BE20](v42);
  v510 = &v496 - v43;
  MEMORY[0x28223BE20](v44);
  v512 = &v496 - v45;
  MEMORY[0x28223BE20](v46);
  v509 = &v496 - v47;
  MEMORY[0x28223BE20](v48);
  v508 = &v496 - v49;
  MEMORY[0x28223BE20](v50);
  v507 = &v496 - v51;
  MEMORY[0x28223BE20](v52);
  v506 = &v496 - v53;
  MEMORY[0x28223BE20](v54);
  v505 = &v496 - v55;
  MEMORY[0x28223BE20](v56);
  v504 = &v496 - v57;
  MEMORY[0x28223BE20](v58);
  v503 = &v496 - v59;
  MEMORY[0x28223BE20](v60);
  v525 = &v496 - v61;
  MEMORY[0x28223BE20](v62);
  v519 = &v496 - v63;
  MEMORY[0x28223BE20](v64);
  v522 = &v496 - v65;
  MEMORY[0x28223BE20](v66);
  v518 = &v496 - v67;
  MEMORY[0x28223BE20](v68);
  v527 = &v496 - v69;
  MEMORY[0x28223BE20](v70);
  v529 = (&v496 - v71);
  MEMORY[0x28223BE20](v72);
  v530 = (&v496 - v73);
  MEMORY[0x28223BE20](v74);
  v531 = (&v496 - v75);
  MEMORY[0x28223BE20](v76);
  v535 = &v496 - v77;
  MEMORY[0x28223BE20](v78);
  v534 = &v496 - v79;
  MEMORY[0x28223BE20](v80);
  v542 = &v496 - v81;
  MEMORY[0x28223BE20](v82);
  v84 = &v496 - v83;
  MEMORY[0x28223BE20](v85);
  v87 = &v496 - v86;
  MEMORY[0x28223BE20](v88);
  v90 = &v496 - v89;
  MEMORY[0x28223BE20](v91);
  v93 = &v496 - v92;
  MEMORY[0x28223BE20](v94);
  v96 = &v496 - v95;
  MEMORY[0x28223BE20](v97);
  v99 = &v496 - v98;
  MEMORY[0x28223BE20](v100);
  v102 = &v496 - v101;
  v103 = type metadata accessor for Expression(0);
  MEMORY[0x28223BE20](v103);
  MEMORY[0x28223BE20](v104);
  v106 = &v496 - v105;
  MEMORY[0x28223BE20](v107);
  v109 = &v496 - v108;
  MEMORY[0x28223BE20](v110);
  v114 = (&v496 - v111);
  v115 = *v558;
  switch(*v558 >> 60)
  {
    case 1:
      v166 = swift_projectBox();
      (*(v554 + 16))(v555, v166, v556);
      return;
    case 2:
      v143 = v115 & 0xFFFFFFFFFFFFFFFLL;
      v145 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v144 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      switch(*((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
      {
        case 1:
          *v114 = v145;
          v114[1] = 0;
          v146 = (&v496 - v111);
          v221 = 1;
          goto LABEL_73;
        case 2:
          *v114 = v145;
          v114[1] = 0;
          v146 = (&v496 - v111);
          v221 = 2;
LABEL_73:
          *(v146 + 16) = v221;
          goto LABEL_74;
        case 3:
          *v114 = v145;
          v114[1] = v144;
          v146 = (&v496 - v111);
          v222 = 3;
          goto LABEL_77;
        case 4:
          v536 = (&v496 - v111);
          v211 = 0;
          v212 = *(v145 + 16);
          v556 = MEMORY[0x277D84F90];
          v213 = &unk_283F94620;
          v558 = xmmword_22C288190;
          while (2)
          {
            if (v212 != v211)
            {
              if (v211 < *(v145 + 16))
              {
                v143 = v113;
                v566 = *(v145 + 32 + 8 * v211);
                v90 = v566;
                v214 = swift_allocObject();
                *(v214 + 16) = v558;
                *(v214 + 32) = 7;
                v560 = v214 | 0x2000000000000000;
                sub_22BEA7680(v90);
                static AST.Expr.== infix(_:_:)();
                v216 = v215;
                sub_22BE63574(v560);
                if (v216)
                {
                  sub_22BE63574(v90);
                  ++v211;
                  v113 = v143;
                }

                else
                {
                  v217 = v556;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v561[0] = v217;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_22BE70158();
                    v217 = v561[0];
                  }

                  v113 = v143;
                  v219 = *(v217 + 16);
                  v220 = v219 + 1;
                  if (v219 >= *(v217 + 24) >> 1)
                  {
                    v556 = *(v217 + 16);
                    v554 = v219 + 1;
                    sub_22BE70158();
                    v220 = v554;
                    v219 = v556;
                    v113 = v143;
                    v217 = v561[0];
                  }

                  ++v211;
                  *(v217 + 16) = v220;
                  v556 = v217;
                  *(v217 + 8 * v219 + 32) = v90;
                }

                continue;
              }

              __break(1u);
              goto LABEL_121;
            }

            break;
          }

          v227 = v559;
          v228 = sub_22BEE9D54(v556);
          if (v227)
          {
            goto LABEL_386;
          }

          v241 = v228;

          v242 = v536;
          *v536 = v241;
          v242[1] = 0;
          *(v242 + 16) = 4;
          swift_storeEnumTagMultiPayload();
          sub_22BEEFCC8(v242, v555);
          goto LABEL_100;
        case 5:
          goto LABEL_71;
        case 6:
          *v114 = v145;
          v114[1] = v144;
          v146 = (&v496 - v111);
          v222 = 5;
LABEL_77:
          *(v146 + 16) = v222;
          swift_storeEnumTagMultiPayload();

          goto LABEL_78;
        case 7:
          v223 = &v496 - v111;
          if (v145 | v144)
          {
LABEL_71:
            v224 = *v558;
            sub_22BEEA690();
            swift_allocError();
            *(v225 + 8) = 0;
            *(v225 + 16) = 0;
            *v225 = v224;
            *(v225 + 24) = 96;
            swift_willThrow();

            return;
          }

          v146 = (&v496 - v111);
          *v223 = 0;
          *(v223 + 1) = 0;
          v223[16] = 6;
LABEL_74:
          swift_storeEnumTagMultiPayload();
LABEL_78:
          sub_22BEEFCC8(v146, v555);
          break;
        default:
          v146 = (&v496 - v111);
          *v146 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 1;
          v146[1] = 0;
          *(v146 + 16) = 0;
          goto LABEL_74;
      }

      goto LABEL_79;
    case 3:
      v147 = v556;
      v148 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v561[0] = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v149 = v559;
      sub_22BEEA6E4(v561, v90);
      if (!v149)
      {
        v150 = type metadata accessor for PrefixExpression(0);
        v151 = v554;
        (*(v554 + 16))(&v109[*(v150 + 20)], v90, v147);
        *v109 = v148;
        swift_storeEnumTagMultiPayload();
        sub_22BEEFCC8(v109, v555);
        sub_22BEF8AC8(v109, type metadata accessor for Expression);
        (*(v151 + 8))(v90, v147);
      }

      return;
    case 4:
      v127 = &v496 - v111;
      v128 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v129 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      switch(*((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
      {
        case 0:
          v130 = v556;
          v561[0] = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v566 = v129;
          v131 = v559;
          sub_22BEEA6E4(&v566, v99);
          if (!v131)
          {
            sub_22BEEFE98(v561, v99, v555);
            (*(v554 + 8))(v99, v130);
          }

          return;
        case 2:
          v561[0] = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v566 = v129;
          v205 = v555;
          v206 = 1;
          goto LABEL_57;
        case 4:
          v561[0] = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v566 = v129;
          v205 = v555;
          v206 = 3;
          goto LABEL_57;
        case 6:
          v561[0] = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v566 = v129;
          v205 = v555;
          v206 = 5;
          goto LABEL_57;
        case 8:
          v561[0] = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v566 = v129;
          v205 = v555;
          v206 = 7;
LABEL_57:
          sub_22BEF0240(v206, v561, &v566, v205);
          break;
        default:
          v203 = v556;
          v561[0] = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v204 = v559;
          sub_22BEEA6E4(v561, v96);
          if (!v204)
          {
            v561[0] = v129;
            sub_22BEEA6E4(v561, v93);
            AST.InfixOp.toInfixOp.getter(v128, v561);
            LODWORD(v559) = LOBYTE(v561[0]);
            *&v558 = type metadata accessor for InfixExpression(0);
            v243 = v127;
            v244 = &v127[*(v558 + 20)];
            v245 = *(v554 + 16);
            v245(v244, v96, v203);
            v245(&v243[*(v558 + 24)], v93, v203);
            *v243 = v559;
            swift_storeEnumTagMultiPayload();
            sub_22BEEFCC8(v243, v555);
            sub_22BEF8AC8(v243, type metadata accessor for Expression);
            v246 = *(v554 + 8);
            v246(v93, v203);
            v246(v96, v203);
          }

          break;
      }

      return;
    case 5:
      v167 = &v496 - v111;
      v168 = v556;
      v169 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v170 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v561[0] = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v171 = v559;
      sub_22BEEA6E4(v561, v87);
      v559 = v171;
      if (v171)
      {
        goto LABEL_27;
      }

      v189 = v554;
      (*(v554 + 16))(v167, v87, v168);
      *v106 = v169;
      *(v106 + 1) = v170;
      v106[16] = 3;
      swift_storeEnumTagMultiPayload();
      v190 = type metadata accessor for IndexExpression(0);
      sub_22BEEFCC8(v106, &v167[*(v190 + 20)]);
      sub_22BEF8AC8(v106, type metadata accessor for Expression);
      swift_storeEnumTagMultiPayload();
      sub_22BEEFCC8(v167, v555);
      sub_22BEF8AC8(v167, type metadata accessor for Expression);
      (*(v189 + 8))(v87, v168);
      return;
    case 6:
      v172 = &v496 - v111;
      v173 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v561[0] = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v174 = v556;
      v175 = v559;
      sub_22BEEA6E4(v561, v84);
      if (!v175)
      {
        v561[0] = v173;
        sub_22BEEA6E4(v561, v542);
        v207 = v554;
        v208 = *(v554 + 16);
        v208(v172, v84, v174);
        v209 = type metadata accessor for IndexExpression(0);
        v208(&v172[*(v209 + 20)], v542, v174);
        swift_storeEnumTagMultiPayload();
        sub_22BEEFCC8(v172, v555);
        sub_22BEF8AC8(v172, type metadata accessor for Expression);
        v210 = *(v207 + 8);
        v210(v542, v174);
        v210(v84, v174);
      }

      return;
    case 7:
      *&v558 = v112;
      v502 = v113;
      v536 = (&v496 - v111);
      v152 = (v115 & 0xFFFFFFFFFFFFFFFLL);
      v153 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v537 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v538 = v153;
      v154 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v155 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      LODWORD(v539) = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v156 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v157 = v115;
      v158 = *(v557 + 8);
      v159 = *(v557 + 16);
      v160 = *(v557 + 24);
      v161 = *(v557 + 32);
      LOBYTE(v153) = *(v557 + 40);
      v561[0] = *v557;
      v561[1] = v158;
      v562 = v159;
      v563 = v160;
      v564 = v161;
      v565 = v153;

      v162 = v559;
      sub_22BEF051C(v156);
      v559 = v162;
      if (v162)
      {

        return;
      }

      v549 = v156;
      v497 = v154;
      v498 = v155;
      v500 = v165;
      v501 = v164;
      v499 = v163;

      if ((v539 & 0x80000000) != 0)
      {
        goto LABEL_384;
      }

      v181 = v537;
      v182 = v538;
      v183 = v537 == 7954803 && v538 == 0xE300000000000000;
      v184 = v499;
      v185 = v559;
      if (v183 || (sub_22C274014() & 1) != 0)
      {

        v186 = v501;

        v187 = v500;

        v188 = sub_22BEE9520(v184, v186, v187, v557);
        if (v185)
        {

          return;
        }

        v229 = v188;

        v230 = v536;
        *v536 = v229;
        swift_storeEnumTagMultiPayload();
        sub_22BEEFCC8(v230, v555);

        v201 = type metadata accessor for Expression;
        v202 = v230;
        goto LABEL_81;
      }

      v231 = v181 == 1801677168 && v182 == 0xE400000000000000;
      v232 = v500;
      if (v231 || (sub_22C274014() & 1) != 0)
      {
        if (*(v232 + 16) == 1)
        {
          sub_22BF2DAA4(v501, v232, v561);
          v233 = v561[1];
          if (v561[1])
          {
            v234 = v561[0];
            v235 = v562;

            sub_22BEA7680(v235);

            if (v235 >> 60 == 6)
            {
              *&v558 = v152;
              v236 = *((v235 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v237 = *((v235 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              sub_22BEA7680(v236);
              sub_22BEA7680(v237);
              sub_22BE63574(v235);
              if (v237 >> 60 == 2 && *((v237 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 1)
              {
                v238 = v185;
                v239 = *((v237 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v561[0] = v236;
                v240 = v534;
                sub_22BEEA6E4(v561, v534);
                v559 = v238;
                if (v238)
                {

                  sub_22BEF8874(v234, v233, v235);
                  sub_22BE63574(v237);
                  sub_22BE63574(v236);
                  return;
                }

                v271 = v536;
                (*(v554 + 16))(v536, v240, v556);
                *(v271 + *(type metadata accessor for PickExpression(0) + 20)) = v239;
                swift_storeEnumTagMultiPayload();
                sub_22BEEFCC8(v271, v555);
                sub_22BE63574(v236);
                sub_22BE63574(v237);
                sub_22BEF8874(v234, v233, v235);

                sub_22BEF8AC8(v271, type metadata accessor for Expression);
                v272 = *(v554 + 8);
                v273 = v240;
                goto LABEL_140;
              }

              sub_22BE63574(v237);
              sub_22BE63574(v236);
              sub_22BEF8874(v234, v233, v235);
            }

            else
            {
              sub_22BE63574(v235);
              sub_22BEF8874(v234, v233, v235);
            }
          }
        }

        goto LABEL_119;
      }

      v247 = v181 == 0x6D7269666E6F63 && v182 == 0xE700000000000000;
      if (v247 || (sub_22C274014() & 1) != 0 || ((v248 = 0xD000000000000010, v181 == 0xD00000000000001ALL) ? (v249 = 0x800000022C2D2320 == v182) : (v249 = 0), v249 || (sub_22C274014() & 1) != 0))
      {
        if (*(v232 + 16) == 1)
        {
          sub_22BF2DAA4(v501, v232, v561);
          v143 = v561[1];
          if (v561[1])
          {
            v90 = v561[0];
            v213 = v562;
            v561[0] = v562;
            v212 = v535;
            sub_22BEEA6E4(v561, v535);
            if (!v185)
            {
LABEL_121:
              v251 = v554;
              v252 = v536;
              v253 = v556;
              (*(v554 + 16))(v536, v212, v556);
              swift_storeEnumTagMultiPayload();
              sub_22BEEFCC8(v252, v555);
              sub_22BEF8874(v90, v143, v213);

              sub_22BEF8AC8(v252, type metadata accessor for Expression);
              (*(v251 + 8))(v212, v253);
              return;
            }

            goto LABEL_149;
          }
        }

LABEL_119:
        sub_22BEEA690();
        swift_allocError();
        *(v250 + 8) = 0;
        *(v250 + 16) = 0;
        *v250 = v157;
        *(v250 + 24) = 0x80;
        swift_willThrow();

        goto LABEL_385;
      }

      v254 = v181 == 0x655F686372616573 && v182 == 0xEF7365697469746ELL;
      if (!v254 && (sub_22C274014() & 1) == 0)
      {
        v274 = v181 == 0x775F686372616573 && v182 == 0xEA00000000006265;
        v261 = 0x7972657571;
        if (v274 || (sub_22C274014() & 1) != 0)
        {
          if (*(v500 + 16) != 1)
          {
            goto LABEL_119;
          }

          sub_22BF2DAA4(v501, v500, v561);
          v143 = v561[1];
          if (!v561[1])
          {
            goto LABEL_119;
          }

          v90 = v561[0];
          v213 = v562;
          v561[0] = v562;
          v275 = v559;
          sub_22BEEA6E4(v561, v531);
          if (v275)
          {
            goto LABEL_149;
          }

          v321 = swift_allocObject();
          *(v321 + 16) = 0;
          *(v321 + 24) = 0;
          *(v321 + 32) = 0;
          v561[0] = v321 | 0x2000000000000000;
          sub_22BEEA6E4(v561, v530);
          sub_22BE63574(v561[0]);
          v328 = swift_allocObject();
          *(v328 + 16) = xmmword_22C288190;
          *(v328 + 32) = 0;
          v561[0] = v328 | 0x2000000000000000;
          sub_22BEEA6E4(v561, v529);
          v559 = 0;
          sub_22BE63574(v561[0]);
          sub_22BE5CE4C(&qword_27D90A890, &qword_22C288A98);
          v334 = *(v521 + 72);
          v335 = swift_allocObject();
          *&v558 = sub_22C172108(v335, 3);
          v337 = v336;
          v338 = v546;
          v339 = *(v546 + 48);
          *v336 = 0x7972657571;
          *(v336 + 1) = 0xE500000000000000;
          v340 = *(v554 + 16);
          v341 = v556;
          v340(&v336[v339], v531, v556);
          v342 = &v337[v334];
          v343 = *(v338 + 48);
          strcpy(&v337[v334], "local_search");
          v342[13] = 0;
          *(v342 + 7) = -5120;
          v340(&v337[v334 + v343], v530, v341);
          v344 = &v337[2 * v334];
          v345 = *(v338 + 48);
          strcpy(v344, "global_search");
          *(v344 + 7) = -4864;
          v340(&v344[v345], v529, v341);
          nullsub_1();
          *&v558 = sub_22C272E84();
          v346 = sub_22C2728A4();
          v347 = v520;
          sub_22BE19DC4(v520, 1, 1, v346);
          v348 = type metadata accessor for StructuredSearchExpression(0);
          v349 = v348[5];
          v350 = v536;
          sub_22BE19DC4(v536 + v349, 1, 1, v346);
          *v350 = v558;
          sub_22BE23490(v347, v350 + v349, &qword_27D9092E8, &qword_22C288A90);
          *(v350 + v348[7]) = MEMORY[0x277D84F90];
          *(v350 + v348[6]) = 0;
          swift_storeEnumTagMultiPayload();
          sub_22BEEFCC8(v350, v555);
          sub_22BEF8874(v90, v143, v213);

          v351 = *(v554 + 8);
          v351(v529, v341);
          v351(v530, v341);
          v351(v531, v341);
          goto LABEL_208;
        }

        v276 = 0x5F74636172747865;
        v277 = v537 == 0x5F74636172747865 && v538 == 0xEE00726577736E61;
        v259 = 0x695F797469746E65;
        if (!v277)
        {
          v276 = sub_22C274014();
          if ((v276 & 1) == 0)
          {
            v322 = v537 == 0x656E6F5F6B636970 && v538 == 0xE800000000000000;
            if (v322 || (sub_22C274014() & 1) != 0)
            {
              if (*(v500 + 16) != 1)
              {
                goto LABEL_119;
              }

              sub_22BF2DAA4(v501, v500, v561);
              v143 = v561[1];
              if (!v561[1])
              {
                goto LABEL_119;
              }

              v90 = v561[0];
              v213 = v562;
              v561[0] = v562;
              v323 = v559;
              sub_22BEEA6E4(v561, v525);
              if (v323)
              {
                goto LABEL_149;
              }

              v324 = v554;
              v325 = v536;
              v326 = v525;
              v327 = v556;
              (*(v554 + 16))(v536, v525, v556);
              goto LABEL_198;
            }

            v329 = v537 == 0x5F65766C6F736572 && v538 == 0xEC0000006C6F6F74;
            if (v329 || (sub_22C274014() & 1) != 0)
            {

              v330 = v559;
              sub_22BEF14DC(v499, v501, v500, v157);
              if (!v330)
              {
                ResolveToolExpression.init(toolIds:)(v331);
                v146 = v536;
                *v536 = v561[0];
LABEL_207:
                swift_storeEnumTagMultiPayload();
                v332 = v555;
                v333 = v146;
LABEL_405:
                sub_22BEEFCC8(v333, v332);

LABEL_79:
                v180 = type metadata accessor for Expression;
LABEL_80:
                v201 = v180;
                v202 = v146;
                goto LABEL_81;
              }

LABEL_385:

LABEL_386:

              return;
            }

            v364 = v537 == 1868852853 && v538 == 0xE400000000000000;
            if (v364 || (sub_22C274014() & 1) != 0)
            {
              sub_22BF2DAA4(v501, v500, v561);
              v143 = v561[1];
              if (!v561[1])
              {
LABEL_238:
                v371 = v517;
                v372 = v556;
                sub_22BE19DC4(v517, 1, 1, v556);
                v373 = v536;
                sub_22BE19DC4(v536, 1, 1, v372);
                sub_22BE23490(v371, v373, &qword_27D907240, &unk_22C2B5B80);
                swift_storeEnumTagMultiPayload();
                sub_22BEEFCC8(v373, v555);

                v120 = v373;
                goto LABEL_35;
              }

              v90 = v561[0];
              v213 = v562;
              if (*(v500 + 16) != 1)
              {
                sub_22BEEA690();
                swift_allocError();
                *(v376 + 8) = 0;
                *(v376 + 16) = 0;
                *v376 = v157;
                *(v376 + 24) = 0x80;
                swift_willThrow();
                sub_22BEA7680(v157);
                sub_22BEF8874(v90, v143, v213);
                goto LABEL_385;
              }

              v561[0] = v562;
              v365 = v559;
              sub_22BEEA6E4(v561, v503);
              if (v365)
              {
                goto LABEL_149;
              }

              v366 = v554;
              v367 = v517;
              v368 = v503;
              v369 = v556;
              (*(v554 + 16))(v517, v503, v556);
              sub_22BE19DC4(v367, 0, 1, v369);
              v370 = v536;
              sub_22BE19DC4(v536, 1, 1, v369);
              sub_22BE23490(v367, v370, &qword_27D907240, &unk_22C2B5B80);
              goto LABEL_236;
            }

            v374 = v537 == 0x7463656A6572 && v538 == 0xE600000000000000;
            if (v374 || (sub_22C274014() & 1) != 0)
            {
              if (*(v500 + 16) != 1)
              {
                goto LABEL_119;
              }

              sub_22BF2DAA4(v501, v500, v561);
              v143 = v561[1];
              if (!v561[1])
              {
                goto LABEL_119;
              }

              v90 = v561[0];
              v213 = v562;
              v561[0] = v562;
              v375 = v559;
              sub_22BEEA6E4(v561, v504);
              if (v375)
              {
                goto LABEL_149;
              }

              v324 = v554;
              v325 = v536;
              v326 = v504;
              v327 = v556;
              (*(v554 + 16))(v536, v504, v556);
              goto LABEL_198;
            }

            v387 = v537 == 0x6C65636E6163 && v538 == 0xE600000000000000;
            if (v387 || (sub_22C274014() & 1) != 0 || (v537 == 0xD000000000000019 ? (v388 = 0x800000022C2D23B0 == v538) : (v388 = 0), v388 || (sub_22C274014() & 1) != 0))
            {
              if (*(v500 + 16) != 1)
              {
                goto LABEL_119;
              }

              sub_22BF2DAA4(v501, v500, v561);
              v143 = v561[1];
              if (!v561[1])
              {
                goto LABEL_119;
              }

              v90 = v561[0];
              v213 = v562;
              v561[0] = v562;
              v389 = v559;
              sub_22BEEA6E4(v561, v505);
              if (v389)
              {
                goto LABEL_149;
              }

              v324 = v554;
              v325 = v536;
              v326 = v505;
              v327 = v556;
              (*(v554 + 16))(v536, v505, v556);
              goto LABEL_198;
            }

            goto LABEL_283;
          }
        }

        v561[0] = 0x7972657571;
        v561[1] = 0xE500000000000000;
        MEMORY[0x28223BE20](v276);
        v278 = v501;
        *(&v496 - 4) = v499;
        *(&v496 - 3) = v278;
        *(&v496 - 2) = v561;
        v279 = v559;
        v280 = sub_22BEF6314(sub_22BEF8BA8, (&v496 - 6), v278);
        if (v281)
        {
          goto LABEL_119;
        }

        if ((v280 & 0x8000000000000000) != 0)
        {
          goto LABEL_281;
        }

        if (v280 >= *(v500 + 16))
        {
LABEL_282:
          __break(1u);
LABEL_283:
          v394 = v537 == v248 && 0x800000022C2D2380 == v538;
          if (v394 || (sub_22C274014() & 1) != 0)
          {
            v121 = v536;
            goto LABEL_289;
          }

          goto LABEL_291;
        }

        v181 = v500 + 32;
        v133 = *(v500 + 32 + 8 * v280);
        if (v133 >> 60 != 2 || *((v133 & 0xFFFFFFFFFFFFFFFLL) + 0x20) != 3)
        {
          goto LABEL_119;
        }

        v561[0] = *(v500 + 32 + 8 * v280);

        v152 = v561;
        sub_22BEEA6E4(v561, v527);
        v261 = v279;
        if (v279)
        {
LABEL_161:

          goto LABEL_31;
        }

        v248 = &v496;
        strcpy(v561, "entity_ids");
        BYTE3(v561[1]) = 0;
        HIDWORD(v561[1]) = -369098752;
        MEMORY[0x28223BE20](v282);
        v352 = v501;
        *(&v496 - 4) = v499;
        *(&v496 - 3) = v352;
        *(&v496 - 2) = v561;
        v353 = sub_22BEF6314(sub_22BEF8BA8, (&v496 - 6), v352);
        v559 = 0;
        if ((v354 & 1) == 0)
        {
          if ((v353 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v353 < *(v500 + 16))
          {
            v551 = *(v181 + 8 * v353);
            if (v551 >> 60 == 2 && *((v551 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 4)
            {
              v181 = *((v551 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v355 = *((v551 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              *&v558 = sub_22BE69A30(v181);
              sub_22BEA7680(v551);
              v553 = v355;
              sub_22BEA76B8(v181, v355, 4);
              v261 = 0;
              v152 = (v181 + 32);
              v262 = (v554 + 32);
              v248 = MEMORY[0x277D84F90];
              while (1)
              {
                if (v558 == v261)
                {
                  goto LABEL_251;
                }

                if (v261 >= *(v181 + 16))
                {
                  break;
                }

                v561[0] = v152[v261];
                sub_22BEA7680(v561[0]);
                v356 = v559;
                sub_22BEF1228(v561, v528);
                v559 = v356;
                if (v356)
                {
                  sub_22BEA76F8(v181, v553, 4);
                  sub_22BE63574(v551);
                  sub_22BE63574(v133);

                  v386 = sub_22BE63574(v561[0]);
                  (*(v554 + 8))(v527, v556, v386);
LABEL_27:

                  return;
                }

                sub_22BE63574(v561[0]);
                if (sub_22BE1AEA8(v528, 1, v556) == 1)
                {
                  sub_22BE233E8(v528, &qword_27D907240, &unk_22C2B5B80);
                }

                else
                {
                  v259 = *v262;
                  v357 = v518;
                  v358 = v556;
                  (*v262)(v518, v528, v556);
                  (v259)(v519, v357, v358);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_22BE66BFC(0, *(v248 + 16) + 1, 1, v248);
                    v248 = v361;
                  }

                  v360 = *(v248 + 16);
                  v359 = *(v248 + 24);
                  v157 = v360 + 1;
                  if (v360 >= v359 >> 1)
                  {
                    sub_22BE66BFC(v359 > 1, v360 + 1, 1, v248);
                    v248 = v362;
                  }

                  *(v248 + 16) = v157;
                  (v259)(v248 + ((*(v554 + 80) + 32) & ~*(v554 + 80)) + *(v554 + 72) * v360, v519, v556);
                }

                ++v261;
              }

              __break(1u);
LABEL_291:
              v395 = v537 == (v248 + 2) && 0x800000022C2D23D0 == v538;
              if (v395 || (sub_22C274014() & 1) != 0)
              {
                v121 = v536;
LABEL_289:
                swift_storeEnumTagMultiPayload();
                sub_22BEEFCC8(v121, v555);

LABEL_34:
                v120 = v121;
                goto LABEL_35;
              }

              goto LABEL_299;
            }

            goto LABEL_226;
          }

          __break(1u);
LABEL_299:
          v396 = v537 == 1852141679 && v538 == 0xE400000000000000;
          if (v396 || (sub_22C274014() & 1) != 0)
          {
            if (*(v500 + 16) != 1)
            {
              goto LABEL_119;
            }

            sub_22BF2DAA4(v501, v500, v561);
            v143 = v561[1];
            if (!v561[1])
            {
              goto LABEL_119;
            }

            v90 = v561[0];
            v213 = v562;
            v561[0] = v562;
            v397 = v559;
            sub_22BEEA6E4(v561, v506);
            if (v397)
            {
              goto LABEL_149;
            }

            v324 = v554;
            v325 = v536;
            v326 = v506;
            v327 = v556;
            (*(v554 + 16))(v536, v506, v556);
LABEL_198:
            swift_storeEnumTagMultiPayload();
            sub_22BEEFCC8(v325, v555);
            sub_22BEF8874(v90, v143, v213);

            sub_22BEF8AC8(v325, type metadata accessor for Expression);
            (*(v324 + 8))(v326, v327);
            return;
          }

          v133 = 0x6576656972746572;
          v398 = v537 == 0x6576656972746572 && v538 == 0xEE00736C6F6F745FLL;
          if (!v398 && (sub_22C274014() & 1) == 0)
          {
            goto LABEL_318;
          }

          if (*(v500 + 16) != 1)
          {
            goto LABEL_119;
          }

          sub_22BF2DAA4(v501, v500, v561);
          v143 = v561[1];
          if (!v561[1])
          {
            goto LABEL_119;
          }

          v90 = v561[0];
          v213 = v562;
          v561[0] = v562;
          v399 = v559;
          sub_22BEEA6E4(v561, v507);
          if (v399)
          {
            goto LABEL_149;
          }

          v366 = v554;
          v400 = v517;
          v368 = v507;
          v369 = v556;
          (*(v554 + 16))(v517, v507, v556);
          sub_22BE19DC4(v400, 0, 1, v369);
          v370 = v536;
          sub_22BE19DC4(v536, 1, 1, v369);
          sub_22BE23490(v400, v370, &qword_27D907240, &unk_22C2B5B80);
LABEL_236:
          swift_storeEnumTagMultiPayload();
          sub_22BEEFCC8(v370, v555);
          sub_22BEF8874(v90, v143, v213);

          (*(v366 + 8))(v368, v369);
          v201 = type metadata accessor for Expression;
          v202 = v370;
LABEL_81:
          sub_22BEF8AC8(v202, v201);
          return;
        }

LABEL_226:
        sub_22BEEA690();
        swift_allocError();
        *(v363 + 8) = 0;
        *(v363 + 16) = 0;
        *v363 = v157;
        *(v363 + 24) = 0x80;
        swift_willThrow();
        sub_22BEA7680(v157);
        sub_22BE63574(v133);

        (*(v554 + 8))(v527, v556);
        return;
      }

      sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
      v255 = swift_allocObject();
      sub_22C1720F8(v255, 2);
      *v256 = 6107227;
      v256[1] = 0xE300000000000000;
      v256[2] = 0x656E6F5F6B636970;
      v256[3] = 0xE800000000000000;
      nullsub_1();
      sub_22BF3954C(v257);
      v259 = v258;
      v260 = v501;
      v261 = *(v501 + 16);
      v554 = v501 + 32;
      v262 = (v258 + 56);

      v263 = 0;
      while (1)
      {
        if (v263 == v261)
        {

          v283 = v499;

          v248 = &v496;
          strcpy(v561, "pick_one");
          BYTE1(v561[1]) = 0;
          WORD1(v561[1]) = 0;
          HIDWORD(v561[1]) = -402653184;
          MEMORY[0x28223BE20](v284);
          *(&v496 - 4) = v283;
          *(&v496 - 3) = v285;
          *(&v496 - 2) = v561;
          v286 = sub_22BEF6314(sub_22BEF8BA8, (&v496 - 6), v285);
          if (v287)
          {
            goto LABEL_167;
          }

          if ((v286 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_278:
            __break(1u);
            goto LABEL_279;
          }

          if (v286 >= *(v500 + 16))
          {
LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
            goto LABEL_282;
          }

          v288 = *(v500 + 8 * v286 + 32);
          if (v288 >> 60 != 2 || (v289 = v288 & 0xFFFFFFFFFFFFFFFLL, *(v289 + 32)))
          {
LABEL_167:
            v248 = 0;
          }

          else
          {
            v248 = *(v289 + 16);
          }

          v259 = &v496;
          v561[0] = 6107227;
          v561[1] = 0xE300000000000000;
          MEMORY[0x28223BE20](v286);
          v290 = v501;
          *(&v496 - 4) = v499;
          *(&v496 - 3) = v290;
          *(&v496 - 2) = v561;
          v291 = sub_22BEF6314(sub_22BEF8BA8, (&v496 - 6), v290);
          if (v292)
          {
            goto LABEL_176;
          }

          if ((v291 & 0x8000000000000000) == 0)
          {
            if (v291 < *(v500 + 16))
            {
              v293 = *(v500 + 8 * v291 + 32);
              if (v293 >> 60 != 2)
              {
                goto LABEL_176;
              }

              v294 = v293 & 0xFFFFFFFFFFFFFFFLL;
              if (*(v294 + 32) != 3)
              {
                goto LABEL_176;
              }

              v295 = *(v294 + 24);
              v242 = v536;
              *v536 = *(v294 + 16);
              v242[1] = v295;
              *(v242 + 16) = 0;
              *(v242 + 17) = v248 & 1;
              *(v242 + 18) = 0;
              swift_storeEnumTagMultiPayload();

              sub_22BEEFCC8(v242, v555);

LABEL_100:
              v201 = type metadata accessor for Expression;
              v202 = v242;
              goto LABEL_81;
            }

            goto LABEL_280;
          }

          goto LABEL_278;
        }

        if (v263 >= *(v260 + 16))
        {
          __break(1u);
          goto LABEL_238;
        }

        v264 = (v554 + 16 * v263);
        v181 = v264[1];
        if (!*(v259 + 16))
        {
          break;
        }

        v152 = *v264;
        ++v263;
        sub_22C274154();

        sub_22C272F44();
        v265 = sub_22C2741A4();
        v266 = ~(-1 << *(v259 + 32));
        do
        {
          v267 = v265 & v266;
          if (((*(v262 + (((v265 & v266) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v265 & v266)) & 1) == 0)
          {
            goto LABEL_175;
          }

          v268 = (*(v259 + 48) + 16 * v267);
          if (*v268 == v152 && v268[1] == v181)
          {
            break;
          }

          v270 = sub_22C274014();
          v265 = v267 + 1;
        }

        while ((v270 & 1) == 0);

        v260 = v501;
      }

LABEL_175:

LABEL_176:
      sub_22BEEA690();
      v133 = swift_allocError();
      *(v296 + 8) = 0;
      *(v296 + 16) = 0;
      *v296 = v157;
      *(v296 + 24) = 0x80;
      swift_willThrow();
      sub_22BEA7680(v157);
      sub_22C271B54();
      v297 = sub_22C272084();
      v298 = sub_22C2737A4();
      if (os_log_type_enabled(v297, v298))
      {
        v181 = sub_22BE602AC(2);
        *v181 = 0;
        MEMORY[0x2318AD180](v181, -1, -1);
      }

      v299 = (*(v540 + 8))(v533, v541);
      v248 = &v496;
      strcpy(v561, "properties");
      BYTE3(v561[1]) = 0;
      HIDWORD(v561[1]) = -369098752;
      MEMORY[0x28223BE20](v299);
      v300 = v501;
      *(&v496 - 4) = v499;
      *(&v496 - 3) = v300;
      *(&v496 - 2) = v561;
      v301 = sub_22BEF6314(sub_22BEF8BA8, (&v496 - 6), v300);
      v259 = 0;
      if (v302)
      {
LABEL_182:
        v304 = 0;
        goto LABEL_183;
      }

      if ((v301 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        sub_22BEA76F8(v181, v553, 4);
        v377 = sub_22BE69A30(v248);
        if (!v377)
        {

          *&v558 = *(v554 + 16);
          v550 = (v554 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v379 = MEMORY[0x277D84F90];
LABEL_276:
          v390 = v513;
          v391 = v527;
          v392 = v556;
          (v558)(v513, v527, v556);
          *(v390 + *(v511 + 20)) = v379;
          v393 = v536;
          sub_22BEF8A70(v390, v536, type metadata accessor for AnswerSynthesisExpression);
          swift_storeEnumTagMultiPayload();
          sub_22BEEFCC8(v393, v555);
          sub_22BE63574(v551);
          sub_22BE63574(v133);

          sub_22BEF8AC8(v393, type metadata accessor for Expression);
          sub_22BEF8AC8(v390, type metadata accessor for AnswerSynthesisExpression);
          (*(v554 + 8))(v391, v392);
          return;
        }

        v152 = v377;
        if (v377 >= 1)
        {
          *&v558 = *(v554 + 16);
          v378 = v248 + ((*(v554 + 80) + 32) & ~*(v554 + 80));
          v552 = *(v554 + 72);
          v553 = v554 + 16;
          v550 = (v554 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v379 = MEMORY[0x277D84F90];
          do
          {
            v380 = v522;
            v381 = v556;
            (v558)(v522, v378, v556);
            (*v262)(v526, v380, v381);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22BE66C7C(0, *(v379 + 16) + 1, 1, v379);
              v379 = v384;
            }

            v383 = *(v379 + 16);
            v382 = *(v379 + 24);
            if (v383 >= v382 >> 1)
            {
              sub_22BE66C7C(v382 > 1, v383 + 1, 1, v379);
              v379 = v385;
            }

            *(v379 + 16) = v383 + 1;
            sub_22BEF8B1C(v526, v379 + ((*(v523 + 80) + 32) & ~*(v523 + 80)) + *(v523 + 72) * v383, type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate);
            v378 += v552;
            v152 = (v152 - 1);
          }

          while (v152);

          goto LABEL_276;
        }

        __break(1u);
LABEL_318:
        v401 = v537 == v248 && 0x800000022C2D2410 == v538;
        if (v401 || (sub_22C274014() & 1) != 0)
        {
          if (*(v500 + 16))
          {
            goto LABEL_119;
          }

          v121 = v536;
          goto LABEL_289;
        }

        v402 = v537 == v133 && v538 == 0xEE00736E6170735FLL;
        if (v402 || (sub_22C274014() & 1) != 0)
        {
          if (*(v500 + 16) != 1)
          {
            goto LABEL_119;
          }

          sub_22BF2DAA4(v501, v500, v561);
          v143 = v561[1];
          if (!v561[1])
          {
            goto LABEL_119;
          }

          v90 = v561[0];
          v213 = v562;
          v561[0] = v562;
          v403 = v559;
          sub_22BEEA6E4(v561, v508);
          if (!v403)
          {
            v366 = v554;
            v404 = v517;
            v368 = v508;
            v369 = v556;
            (*(v554 + 16))(v517, v508, v556);
            sub_22BE19DC4(v404, 0, 1, v369);
            v370 = v536;
            sub_22BE19DC4(v536, 1, 1, v369);
            sub_22BE23490(v404, v370, &qword_27D907240, &unk_22C2B5B80);
            goto LABEL_236;
          }

LABEL_149:

          sub_22BEF8874(v90, v143, v213);
          return;
        }

        v405 = v537 == 0x64616F6C796170 && v538 == 0xE700000000000000;
        if (v405 || (sub_22C274014() & 1) != 0)
        {
          v406 = v559;
          v407 = sub_22BEF16B4(v549);
          if (!v406)
          {
            v146 = v536;
            *v536 = v407;
            goto LABEL_207;
          }

          goto LABEL_385;
        }

        v408 = v537 == 0x74616D726F66 && v538 == 0xE600000000000000;
        if (v408 || (sub_22C274014() & 1) != 0)
        {
          v409 = v559;
          v410 = sub_22BEF16B4(v549);
          if (!v409)
          {
            v146 = v536;
            *v536 = v410;
            goto LABEL_207;
          }

          goto LABEL_385;
        }

        v411 = v537 == 0x785F69726973 && v538 == 0xE600000000000000;
        if (v411 || (sub_22C274014() & 1) != 0)
        {
          if (*(v500 + 16) != 1)
          {
            goto LABEL_119;
          }

          sub_22BF2DAA4(v501, v500, v561);
          v143 = v561[1];
          if (!v561[1])
          {
            goto LABEL_119;
          }

          v90 = v561[0];
          v213 = v562;
          v561[0] = v562;
          v412 = v559;
          sub_22BEEA6E4(v561, v509);
          if (!v412)
          {
            v366 = v554;
            v413 = v517;
            v368 = v509;
            v369 = v556;
            (*(v554 + 16))(v517, v509, v556);
            sub_22BE19DC4(v413, 0, 1, v369);
            v370 = v536;
            sub_22BE19DC4(v536, 1, 1, v369);
            sub_22BE23490(v413, v370, &qword_27D907240, &unk_22C2B5B80);
            goto LABEL_236;
          }

          goto LABEL_149;
        }

        v414 = 0x6E6F635F72657375;
        v415 = v537 == 0x6E6F635F72657375 && v538 == 0xEC0000006D726966;
        if (v415 || (v414 = sub_22C274014(), (v414 & 1) != 0))
        {
          v133 = &v496;
          v561[0] = 0x665F74706D6F7270;
          v561[1] = 0xEF726573755F726FLL;
          MEMORY[0x28223BE20](v414);
          v416 = v501;
          *(&v496 - 4) = v499;
          *(&v496 - 3) = v416;
          *(&v496 - 2) = v561;
          v417 = v559;
          v418 = sub_22BEF6314(sub_22BEF8BA8, (&v496 - 6), v416);
          if (v419)
          {
            goto LABEL_119;
          }

          if ((v418 & 0x8000000000000000) == 0)
          {
            if (v418 < *(v500 + 16))
            {
              v259 = v417;
              v181 = v500 + 32;
              v133 = *(v500 + 32 + 8 * v418);
              v561[0] = v133;
              sub_22BEA7680(v133);
              sub_22BEEA6E4(v561, v512);
              v261 = v417;
              if (!v417)
              {
                v248 = &v496;
                v152 = 0xEE006E6F6974706FLL;
                strcpy(v561, "confirm_option");
                HIBYTE(v561[1]) = -18;
                MEMORY[0x28223BE20](v420);
                v421 = v501;
                *(&v496 - 4) = v499;
                *(&v496 - 3) = v421;
                *(&v496 - 2) = v561;
                v418 = sub_22BEF6314(sub_22BEF8BA8, (&v496 - 6), v421);
                if (v422)
                {
                  v248 = 0xF000000000000007;
                  goto LABEL_418;
                }

LABEL_415:
                if ((v418 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v418 < *(v500 + 16))
                {
                  v248 = *(v181 + 8 * v418);
                  sub_22BEA7680(v248);
LABEL_418:
                  sub_22BEEFB54(v248, v516);
                  v261 = v259;
                  if (v259)
                  {
                    (*(v554 + 8))(v512, v556);

                    sub_22BE63574(v133);
                    sub_22BEF8860(v248);
                    return;
                  }

LABEL_428:
                  sub_22BEF8860(v248);
                  v561[0] = 0x5F7373696D736964;
                  v561[1] = v152;
                  MEMORY[0x28223BE20](v477);
                  v478 = v501;
                  *(&v496 - 4) = v499;
                  *(&v496 - 3) = v478;
                  *(&v496 - 2) = v561;
                  v479 = sub_22BEF6314(sub_22BEF8BA8, (&v496 - 6), v478);
                  if (v480)
                  {
                    v481 = 0xF000000000000007;
                    goto LABEL_433;
                  }

                  if ((v479 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
                  }

                  else if (v479 < *(v500 + 16))
                  {
                    v481 = *(v181 + 8 * v479);
                    sub_22BEA7680(v481);
LABEL_433:
                    sub_22BEEFB54(v481, v515);
                    v559 = v261;
                    v479 = v481;
                    if (v261)
                    {
                      sub_22BEF8860(v481);
                      sub_22BE63574(v133);

                      sub_22BE233E8(v516, &qword_27D907240, &unk_22C2B5B80);
                      v272 = *(v554 + 8);
                      v273 = v512;
LABEL_140:
                      v272(v273, v556);
                      return;
                    }

                    goto LABEL_437;
                  }

                  __break(1u);
LABEL_437:
                  v488 = sub_22BEF8860(v479);
                  v489 = v554;
                  v350 = v536;
                  v490 = v556;
                  (*(v554 + 16))(v536, v512, v556, v488);
                  v491 = v517;
                  sub_22BE3BB64(v516, v517, &qword_27D907240, &unk_22C2B5B80);
                  v492 = v514;
                  sub_22BE3BB64(v515, v514, &qword_27D907240, &unk_22C2B5B80);
                  v493 = type metadata accessor for UserConfirmExpression(0);
                  v494 = *(v493 + 20);
                  sub_22BE19DC4(v350 + v494, 1, 1, v490);
                  v495 = *(v493 + 24);
                  sub_22BE19DC4(v350 + v495, 1, 1, v490);
                  sub_22BE23490(v491, v350 + v494, &qword_27D907240, &unk_22C2B5B80);
                  sub_22BE23490(v492, v350 + v495, &qword_27D907240, &unk_22C2B5B80);
                  swift_storeEnumTagMultiPayload();
                  sub_22BEEFCC8(v350, v555);
                  sub_22BE63574(v133);

                  sub_22BE233E8(v515, &qword_27D907240, &unk_22C2B5B80);
                  sub_22BE233E8(v516, &qword_27D907240, &unk_22C2B5B80);
                  (*(v489 + 8))(v512, v490);
LABEL_208:
                  v120 = v350;
LABEL_35:
                  sub_22BEF8AC8(v120, type metadata accessor for Expression);
                  return;
                }

                __break(1u);
                goto LABEL_428;
              }

              goto LABEL_161;
            }

LABEL_414:
            __break(1u);
            goto LABEL_415;
          }

LABEL_413:
          __break(1u);
          goto LABEL_414;
        }

        v423 = v248 + 1;
        if (v537 != (v248 + 1) || 0x800000022C2D2440 != v538)
        {
          v423 = sub_22C274014();
          if ((v423 & 1) == 0)
          {
LABEL_384:
            v133 = v499;
            v181 = v557;
            v437 = v559;
            v438 = sub_22BEF1734(v499, v501, v500, v557);
            v261 = v437;
            if (v437)
            {
              goto LABEL_385;
            }

            v152 = v439;
            v441 = v440;
            v529 = v438;
            v248 = sub_22C272E84();
            v541 = *(v441 + 16);
            if (!v541)
            {
LABEL_400:

              v471 = v498;
              v472 = v497;
              v473 = v539;
              if ((v539 & 0x80000000) != 0)
              {
                v146 = v536;
                *v536 = v537;
                v146[1] = v538;
                v146[2] = v472;
                v146[3] = v471;
                *(v146 + 32) = v473 & 1;
                v146[5] = v248;
                swift_storeEnumTagMultiPayload();
              }

              else
              {
                if (*(v181 + 40) != 1)
                {
                  v475 = v538;

                  sub_22BEEA690();
                  swift_allocError();
                  *v476 = v537;
                  *(v476 + 8) = v475;
                  *(v476 + 16) = 0;
                  *(v476 + 24) = -64;
                  swift_willThrow();
                  goto LABEL_385;
                }

                v146 = v536;
                v474 = v538;
                *v536 = v537;
                v146[1] = v474;
                v146[2] = 0;
                v146[3] = 0;
                *(v146 + 32) = 0;
                v146[5] = v248;
                swift_storeEnumTagMultiPayload();
              }

              v332 = v555;
              v333 = v146;
              goto LABEL_405;
            }

            v559 = 0;
            v259 = 0;
            v540 = v441 + ((*(v554 + 80) + 32) & ~*(v554 + 80));
            v535 = *(v553 + 48);
            v534 = v554 + 16;
            v542 = (v554 + 32);
            v530 = (v554 + 40);
            v531 = (v554 + 8);
            v442 = v152 + 5;
            v533 = v152;
            v532 = v441;
            while (v259 < v152[2])
            {
              v152 = v546;
              v443 = *(v546 + 48);
              v444 = *(v442 - 1);
              v133 = *v442;
              v549 = v442;
              v445 = v545;
              *v545 = v444;
              *(v445 + 1) = v133;
              if (v259 >= *(v441 + 16))
              {
                goto LABEL_409;
              }

              v446 = v554;
              v447 = *(v554 + 72);
              v547 = v259;
              v548 = v447;
              v448 = v540 + v447 * v259;
              v449 = v556;
              (*(v554 + 16))(&v445[v443], v448, v556);
              v450 = v445;
              v451 = v544;
              sub_22BEF88B8(v450, v544, &qword_27D90A888, &unk_22C288A80);
              v452 = *(v152 + 12);
              v453 = *(v451 + 1);
              v454 = v552;
              *v552 = *v451;
              *(v454 + 8) = v453;
              v455 = *(v446 + 32);
              v455(v454 + v535, &v451[v452], v449);
              v456 = v550;
              sub_22BE3BB64(v454, v550, &qword_27D9092C8, &qword_22C27FEB0);
              v457 = v456[1];
              *&v558 = *v456;
              v458 = v543;
              v459 = v455;
              v152 = v457;
              sub_22BE3BB64(v454, v543, &qword_27D9092C8, &qword_22C27FEB0);

              v459(v551, v458 + *(v553 + 48), v449);
              v261 = v558;
              v259 = swift_isUniquelyReferenced_nonNull_native();
              v561[0] = v248;
              v460 = sub_22BE3B674(v261, v152);
              v462 = *(v248 + 16);
              v463 = (v461 & 1) == 0;
              v181 = v462 + v463;
              if (__OFADD__(v462, v463))
              {
                goto LABEL_410;
              }

              v464 = v460;
              v133 = v461;
              sub_22BE5CE4C(&qword_27D907248, &qword_22C2750B0);
              if (sub_22C273C44())
              {
                v248 = v561[0];
                v465 = sub_22BE3B674(v261, v152);
                if ((v133 & 1) != (v466 & 1))
                {
                  goto LABEL_412;
                }

                v464 = v465;
              }

              if (v133)
              {

                v248 = v561[0];
                v133 = v556;
                (*v530)(*(v561[0] + 56) + v464 * v548, v551, v556);
                sub_22BE233E8(v552, &qword_27D9092C8, &qword_22C27FEB0);
                v181 = v557;
              }

              else
              {
                v248 = v561[0];
                *(v561[0] + 8 * (v464 >> 6) + 64) |= 1 << v464;
                v467 = (*(v248 + 48) + 16 * v464);
                *v467 = v261;
                v467[1] = v152;
                v459(*(v248 + 56) + v464 * v548, v551, v556);
                sub_22BE233E8(v552, &qword_27D9092C8, &qword_22C27FEB0);
                v468 = *(v248 + 16);
                v469 = __OFADD__(v468, 1);
                v470 = v468 + 1;
                if (v469)
                {
                  goto LABEL_411;
                }

                *(v248 + 16) = v470;
                v133 = v556;
                v181 = v557;
              }

              v152 = v533;
              v441 = v532;
              v259 = (v547 + 1);
              (*v531)(v550 + *(v553 + 48), v133);
              v442 = (v549 + 16);
              if (v541 == v259)
              {
                goto LABEL_400;
              }
            }

            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            v418 = sub_22C2740B4();
            __break(1u);
            goto LABEL_413;
          }
        }

        v133 = &v496;
        v561[0] = 0x665F74706D6F7270;
        v561[1] = 0xEF726573755F726FLL;
        MEMORY[0x28223BE20](v423);
        v425 = v501;
        *(&v496 - 4) = v499;
        *(&v496 - 3) = v425;
        *(&v496 - 2) = v561;
        v426 = v559;
        v427 = sub_22BEF6314(sub_22BEF883C, (&v496 - 6), v425);
        if (v428)
        {
          goto LABEL_119;
        }

        if ((v427 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v427 < *(v500 + 16))
        {
          v429 = v500 + 32;
          v133 = *(v500 + 32 + 8 * v427);
          v561[0] = v259;
          v561[1] = 0xEA00000000007364;
          MEMORY[0x28223BE20](v427);
          v430 = v501;
          *(&v496 - 4) = v499;
          *(&v496 - 3) = v430;
          *(&v496 - 2) = v561;
          sub_22BEA7680(v133);
          v431 = sub_22BEF6314(sub_22BEF8BA8, (&v496 - 6), v430);
          if (v432)
          {
            goto LABEL_424;
          }

          if ((v431 & 0x8000000000000000) == 0)
          {
            if (v431 < *(v500 + 16))
            {
              v433 = *(v429 + 8 * v431);
              if (v433 >> 60 == 2)
              {
                v434 = v433 & 0xFFFFFFFFFFFFFFFLL;
                if (*(v434 + 32) == 4)
                {
                  v436 = *(v434 + 16);
                  v435 = *(v434 + 24);
                  v561[0] = v133;
                  sub_22BEA76B8(v436, v435, 4);
                  sub_22BEEA6E4(v561, v510);
                  if (!v426)
                  {
                    v482 = sub_22BEE9D54(v436);
                    v483 = sub_22BEA76F8(v436, v435, 4);
                    v484 = v554;
                    v485 = v536;
                    v486 = v510;
                    v487 = v556;
                    (*(v554 + 16))(v536, v510, v556, v483);
                    *(v485 + *(type metadata accessor for UserDisambiguateExpression(0) + 20)) = v482;
                    swift_storeEnumTagMultiPayload();
                    sub_22BEEFCC8(v485, v555);
                    sub_22BE63574(v133);

                    sub_22BEF8AC8(v485, type metadata accessor for Expression);
                    (*(v484 + 8))(v486, v487);
                    return;
                  }

                  sub_22BEA76F8(v436, v435, 4);
LABEL_31:
                  sub_22BE63574(v133);
                  return;
                }
              }

LABEL_424:
              sub_22BE63574(v133);
              goto LABEL_119;
            }

LABEL_423:
            __break(1u);
            goto LABEL_424;
          }

LABEL_422:
          __break(1u);
          goto LABEL_423;
        }

        __break(1u);
        goto LABEL_422;
      }

      if (v301 >= *(v500 + 16))
      {
        goto LABEL_250;
      }

      v303 = *(v500 + 8 * v301 + 32);
      sub_22BEA7680(v303);
      if ((~v303 & 0xF000000000000007) == 0)
      {
        goto LABEL_182;
      }

      v566 = v303;
      sub_22BEA7680(v303);
      sub_22BEF0A4C(&v566, v157, &v560, v561);
      sub_22BEF8860(v303);
      sub_22BE63574(v566);
      v304 = v561[0];
LABEL_183:
      sub_22BEF0DE4(v499, v501, v500);
      v306 = v305;
      v308 = v307;
      v310 = v309;
      v311 = MEMORY[0x277D84F90];
      v312 = sub_22C272E84();
      sub_22BEE9EFC(v312, v306, v308, v310, v557);
      v314 = v313;

      v315 = sub_22C2728A4();
      v316 = v532;
      sub_22BE19DC4(v532, 1, 1, v315);
      if (v304)
      {
        v317 = v304;
      }

      else
      {
        v317 = v311;
      }

      v318 = type metadata accessor for StructuredSearchExpression(0);
      v319 = v318[5];
      v320 = v558;
      sub_22BE19DC4(v558 + v319, 1, 1, v315);
      *v320 = v314;
      sub_22BE23490(v316, v320 + v319, &qword_27D9092E8, &qword_22C288A90);
      *(v320 + v318[7]) = v317;
      *(v320 + v318[6]) = 0;
      swift_storeEnumTagMultiPayload();
      sub_22BEEFCC8(v320, v555);

      sub_22BEF8AC8(v320, type metadata accessor for Expression);
      return;
    case 8:
      v179 = swift_projectBox();
      v146 = v547;
      sub_22BEF8A70(v179, v547, type metadata accessor for AST.UpdateParameters);
      sub_22BEF1950(v146, v555);
      v180 = type metadata accessor for AST.UpdateParameters;
      goto LABEL_80;
    case 9:
      v132 = v556;
      v133 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v561[0] = v133;
      sub_22BEA7680(v133);
      v134 = v548;
      v135 = v559;
      sub_22BEEA6E4(v561, v548);
      if (v135)
      {
        goto LABEL_31;
      }

      v136 = v537;
      (*(v554 + 16))(v537, v134, v132);
      v137 = sub_22BEF2370(v561, v136);
      v139 = v138;
      v140 = type metadata accessor for ProgramStatement(0);
      if (!sub_22BE1AEA8(v139, 1, v140))
      {
        *(v139 + *(v140 + 28)) = 1;
      }

      (v137)(v561, 0);
      v141 = sub_22BE63574(v133);
      v142 = v554;
      (*(v554 + 8))(v136, v132, v141);
      (*(v142 + 32))(v555, v548, v132);
      return;
    case 0xALL:
      v176 = v556;
      v133 = *((v115 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v561[0] = v133;
      sub_22BEA7680(v133);
      v177 = v549;
      v178 = v559;
      sub_22BEEA6E4(v561, v549);
      if (v178)
      {
        goto LABEL_31;
      }

      v191 = v538;
      (*(v554 + 16))(v538, v177, v176);
      v192 = sub_22BEF2370(v561, v191);
      v194 = v193;
      v195 = type metadata accessor for ProgramStatement(0);
      if (!sub_22BE1AEA8(v194, 1, v195))
      {
        *(v194 + *(v195 + 36)) = 1;
      }

      (v192)(v561, 0);
      v196 = sub_22BE63574(v133);
      v197 = v554;
      (*(v554 + 8))(v191, v176, v196);
      (*(v197 + 32))(v555, v549, v176);
      return;
    case 0xBLL:
      v121 = (&v496 - v111);
      if (v115 != 0xB000000000000000)
      {
        swift_storeEnumTagMultiPayload();
        sub_22BEEFCC8(v121, v555);
        goto LABEL_34;
      }

      v122 = v539;
      sub_22C271AA4();
      v123 = sub_22C272084();
      v124 = sub_22C2737A4();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = sub_22BE602AC(2);
        *v125 = 0;
        MEMORY[0x2318AD180](v125, -1, -1);
      }

      (*(v540 + 8))(v122, v541);
      sub_22BEEA690();
      swift_allocError();
      *(v126 + 8) = 0;
      *(v126 + 16) = 0;
      *v126 = 0xB000000000000000;
      *(v126 + 24) = 64;
      swift_willThrow();
      sub_22BEA7680(0xB000000000000000);
      return;
    default:
      v116 = &v496 - v111;
      v118 = *(v115 + 16);
      v117 = *(v115 + 24);
      v119 = v118 == 4935253 && v117 == 0xE300000000000000;
      if (v119 || (sub_22C274014() & 1) != 0)
      {
        swift_storeEnumTagMultiPayload();
        sub_22BEEFCC8(v116, v555);
        v120 = v116;
        goto LABEL_35;
      }

      v198 = v556;
      v199 = *(v557 + 24);

      v200 = v536;
      sub_22BF16D30(v118, v117, v199, v536);
      if (sub_22BE1AEA8(v200, 1, v198) == 1)
      {
        sub_22BE233E8(v200, &qword_27D907240, &unk_22C2B5B80);
        *v116 = v118;
        *(v116 + 1) = v117;
        v116[16] = 5;
        swift_storeEnumTagMultiPayload();
        sub_22BEEFCC8(v116, v555);
        v201 = type metadata accessor for Expression;
        v202 = v116;
        goto LABEL_81;
      }

      v226 = *(v554 + 32);
      v226(v102, v200, v198);
      v226(v555, v102, v198);
      return;
  }
}

uint64_t ExpressionFlattener.flatten(expr:)(size_t *a1)
{
  v4 = sub_22C26E684();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v10 = v9 - v8;
  v24 = *a1;
  sub_22BEEA6E4(&v24, (v9 - v8));
  if (!v2)
  {
    (*(v6 + 8))(v10, v4);
    v11 = *v1;
    v12 = v1[1];
    v13 = v1[2];

    v14 = sub_22BE68C6C(v11, v12, v13);

    v24 = v14;
    v15 = sub_22BE9579C(0, *(v14 + 16));
    sub_22BEEFBD8(v15, v16 & 1, &v24);
    v6 = v24;
    sub_22BEF5100(MEMORY[0x277D84F90]);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    *v1 = v18;
    v1[1] = v20;
    v1[2] = v22;
  }

  return v6;
}

void sub_22BEEFB54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    v6 = a1;
    sub_22BEEA6E4(&v6, a2);
    if (v2)
    {
      return;
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_22C26E684();
  sub_22BE19DC4(a2, v4, 1, v5);
}

void sub_22BEEFBD8(unint64_t a1, char a2, uint64_t *a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_22C26551C(v5);
      v5 = v8;
      *a3 = v8;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v5 + 16) > a1)
        {
          v7 = type metadata accessor for ProgramStatement(0);
          *(v5 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * a1 + *(v7 + 24)) = 1;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_22BEEFCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22BE5CE4C(&qword_27D90A8A0, &unk_22C2D1FB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_22C26E684();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  atomic_fetch_add_explicit((*(v2 + 32) + 16), 1u, memory_order_relaxed);
  sub_22C26E664();
  v12 = *(v9 + 16);
  v12(v11, a2, v8);
  v12(v7, a2, v8);
  v13 = type metadata accessor for ProgramStatement(0);
  sub_22BEF8A70(a1, &v7[v13[5]], type metadata accessor for Expression);
  v14 = v13[7];
  v15 = v13[9];
  v16 = &v7[v13[8]];
  v7[v13[6]] = 0;
  v7[v14] = 0;
  *v16 = 0;
  v16[4] = 1;
  v7[v15] = 0;
  sub_22BE19DC4(v7, 0, 1, v13);
  return sub_22BEF24B8(v7, v11);
}

char *sub_22BEEFE98@<X0>(unint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v38 = type metadata accessor for Expression(0);
  MEMORY[0x28223BE20](v38);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C26E684();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v31 - v17;
  if (*a1 >> 60)
  {
    v41 = *a1;
    v37 = v3;
    v21 = v40;
    result = sub_22BEF2BC8(v11, &v41);
    if (!v21)
    {
      v25 = *(v9 + 32);
      v35 = v22;
      v36 = result;
      v34 = v23;
      v40 = 0;
      v33 = v24;
      v25(v14, v11, v8);
      v32 = *(v9 + 16);
      v32(v7, v14, v8);
      sub_22BE5CE4C(&qword_27D9074E8, &qword_22C275570);
      v26 = (type metadata accessor for UpdateParametersExpression.UpdateParameter(0) - 8);
      v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_22C275160;
      v29 = v28 + v27;
      v32((v29 + v26[9]), a2, v8);
      v30 = v35;
      *v29 = v36;
      *(v29 + 8) = v30;
      *(v29 + 16) = v34;
      *(v29 + 24) = v33 & 1;
      *(v29 + 25) = 1;
      *&v7[*(type metadata accessor for UpdateParametersExpression(0) + 20)] = v28;
      swift_storeEnumTagMultiPayload();
      sub_22BEEFCC8(v7, v39);
      sub_22BEF8AC8(v7, type metadata accessor for Expression);
      return (*(v9 + 8))(v14, v8);
    }
  }

  else
  {
    v19 = *(v9 + 16);
    v19(v18, a2, v8, v16);
    sub_22BE19DC4(v18, 0, 1, v8);

    sub_22BE5FA9C();
    return (v19)(v39, a2, v8);
  }

  return result;
}

void sub_22BEF0240(unsigned int a1@<W0>, unint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v32 = a4;
  v7 = type metadata accessor for Expression(0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C26E684();
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v33 = v28 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v28 - v16;
  v18 = *a2;
  v35 = *a3;
  sub_22BEEA6E4(&v35, v28 - v16);
  if (!v4)
  {
    v28[1] = v7;
    v29 = v12;
    v30 = v17;
    v19 = v9;
    v21 = v33;
    v20 = v34;
    v35 = v18;
    sub_22BEEA6E4(&v35, v33);
    AST.InfixOp.toInfixOp.getter(v31, &v35);
    v31 = v35;
    v22 = type metadata accessor for InfixExpression(0);
    v23 = *(v20 + 16);
    v23(&v19[*(v22 + 20)], v21, v10);
    v24 = v23;
    v25 = v30;
    v24(&v19[*(v22 + 24)], v30, v10);
    *v19 = v31;
    swift_storeEnumTagMultiPayload();
    v26 = v29;
    sub_22BEEFCC8(v19, v29);
    sub_22BEF8AC8(v19, type metadata accessor for Expression);
    v35 = v18;
    sub_22BEEFE98(&v35, v26, v32);
    v27 = *(v34 + 8);
    v27(v26, v10);
    v27(v21, v10);
    v27(v25, v10);
  }
}

void sub_22BEF051C(uint64_t a1)
{
  v3 = sub_22BE5CE4C(&qword_27D90A8B0, &qword_22C288AC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v17 = a1;
  swift_getKeyPath();
  sub_22BEF89D4();
  sub_22C26DD84();
  sub_22BE5CE4C(&qword_27D908448, &qword_22C27ABD0);
  sub_22BEF8A28(&qword_27D90A8C0, &qword_27D908448, &qword_22C27ABD0, MEMORY[0x277D83520]);
  sub_22BEF8A28(&qword_27D90A8C8, &qword_27D90A8B0, &qword_22C288AC8, MEMORY[0x277CC8C98]);
  v7 = sub_22C2732F4();
  v8 = (v7 + 64);
  (*(v4 + 8))(v6, v3);
  v9 = 0;
  v22[0] = 0;
  v22[1] = MEMORY[0x277D84F90];
  v22[2] = MEMORY[0x277D84F90];
  v10 = *(v7 + 16);
  while (1)
  {
    if (v10 == v9)
    {

      return;
    }

    if (v9 >= *(v7 + 16))
    {
      break;
    }

    v11 = *v8;
    v12 = *(v8 - 3);
    v13 = *(v8 - 2);
    v14 = *(v8 - 8);
    v17 = *(v8 - 4);
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v11;
    sub_22BE6355C(v17, v12, v13, v14);
    sub_22BEA7680(v11);
    sub_22BEF30A8(v22, &v17);
    if (v1)
    {

      v16 = v21;
      sub_22BE635AC(v17, v18, v19, v20);
      sub_22BE63574(v16);

      return;
    }

    ++v9;
    v15 = v21;
    sub_22BE635AC(v17, v18, v19, v20);
    sub_22BE63574(v15);
    v8 += 5;
  }

  __break(1u);
}

unint64_t ExpressionFlattener.BuiltinIdentifiers.rawValue.getter()
{
  result = 7954803;
  switch(*v0)
  {
    case 1:
      result = 1801677168;
      break;
    case 2:
      result = 0x6D7269666E6F63;
      break;
    case 3:
      v2 = 10;
      goto LABEL_19;
    case 4:
      result = 0x686372616573;
      break;
    case 5:
      result = 0x655F686372616573;
      break;
    case 6:
      result = 0x775F686372616573;
      break;
    case 7:
      result = 0x656E6F5F6B636970;
      break;
    case 8:
      result = 0x5F65766C6F736572;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 1868852853;
      break;
    case 0xB:
      result = 0x7463656A6572;
      break;
    case 0xC:
      result = 0x6C65636E6163;
      break;
    case 0xD:
      v2 = 9;
LABEL_19:
      result = v2 | 0xD000000000000010;
      break;
    case 0xE:
      result = 0xD000000000000012;
      break;
    case 0xF:
      result = 1852141679;
      break;
    case 0x10:
      result = 0x64616F6C796170;
      break;
    case 0x11:
      result = 0x74616D726F66;
      break;
    case 0x12:
      result = 0x785F69726973;
      break;
    case 0x13:
    case 0x15:
      result = 0x6576656972746572;
      break;
    case 0x14:
      result = 0xD000000000000010;
      break;
    case 0x16:
      result = 0x6E6F635F72657375;
      break;
    case 0x17:
      result = 0xD000000000000011;
      break;
    case 0x18:
      result = 0x5F74636172747865;
      break;
    default:
      return result;
  }

  return result;
}