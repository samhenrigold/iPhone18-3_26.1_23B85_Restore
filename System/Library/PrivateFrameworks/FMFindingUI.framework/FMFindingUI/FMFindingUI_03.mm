void *sub_24A554278(void *a1, void *a2, void *a3, char a4)
{
  v7 = type metadata accessor for FMFindingLocalizerError(0);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_getErrorValue();
    if (sub_24A62F684() == 300)
    {
      swift_getErrorValue();
      v12 = sub_24A62F694();
      v14 = v13;
      if (v12 == sub_24A62EC14() && v14 == v15)
      {

LABEL_7:
        swift_storeEnumTagMultiPayload();
        sub_24A54D82C(v9, 0);

        return sub_24A55B484(v9, type metadata accessor for FMFindingLocalizerError);
      }

      v16 = sub_24A62F634();

      if (v16)
      {
        goto LABEL_7;
      }
    }

    v17 = *(sub_24A508FA4(&unk_27EF4FE70, &unk_24A635DC0) + 48);
    v18 = a2[3];
    v19 = a2[4];
    sub_24A50A204(a2, v18);
    (*(v19 + 8))(v24, v18, v19);
    v20 = v25;
    v21 = v26;
    sub_24A50A204(v24, v25);
    (*(v21 + 16))(v20, v21);
    *&v9[v17] = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    sub_24A54D82C(v9, a4 & 1);

    sub_24A55B484(v9, type metadata accessor for FMFindingLocalizerError);
    return sub_24A508C54(v24);
  }

  return result;
}

void sub_24A5544F0(char a1, void *a2)
{
  v4 = type metadata accessor for FMFindingLocalizerError(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 == 3)
    {
      v8 = a2[3];
      v9 = a2[4];
      v12 = Strong;
      sub_24A50A204(a2, v8);
      (*(v9 + 8))(v13, v8, v9);
      v10 = v14;
      v11 = v15;
      sub_24A50A204(v13, v14);
      (*(v11 + 16))(v10, v11);
      swift_storeEnumTagMultiPayload();
      sub_24A54D82C(v6, 0);

      sub_24A55B484(v6, type metadata accessor for FMFindingLocalizerError);
      sub_24A508C54(v13);
    }

    else
    {
    }
  }
}

void sub_24A554678(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v6 = v2 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v12[3] = type metadata accessor for FMFindingLocalizer();
      v12[4] = &off_285DA5430;
      v12[0] = v11;
      v9 = *(v7 + 32);
      v10 = v11;
      v9(v12, a1, a2, ObjectType, v7);
      swift_unknownObjectRelease();

      sub_24A508C54(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_24A554788()
{
  v1 = [v0 description];
  v2 = sub_24A62EC14();

  return v2;
}

uint64_t sub_24A554858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 3)
    {
      return v12 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24A554934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

void sub_24A554A1C(uint64_t a1)
{
  sub_24A554AFC(319, &qword_27EF4FE40, MEMORY[0x277CE0EC8]);
  if (v1 <= 0x3F)
  {
    sub_24A55B9CC(319, &qword_27EF4FE48, &qword_27EF4FE50, &qword_24A634BB0);
    if (v2 <= 0x3F)
    {
      sub_24A554AFC(319, &unk_27EF4FE58, &type metadata for FMVerticalDirectionEstimate);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24A554AFC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24A62F1C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FMExperienceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMExperienceType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A554C9C()
{
  result = qword_27EF4FE68;
  if (!qword_27EF4FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FE68);
  }

  return result;
}

double sub_24A554CF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24A515AC8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v17 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A558C5C();
      v9 = v17;
    }

    v10 = *(v9 + 48);
    v11 = sub_24A62E214();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56) + 104 * v7;
    v13 = *(v12 + 80);
    *(a2 + 64) = *(v12 + 64);
    *(a2 + 80) = v13;
    *(a2 + 96) = *(v12 + 96);
    v14 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v14;
    v15 = *(v12 + 48);
    *(a2 + 32) = *(v12 + 32);
    *(a2 + 48) = v15;
    sub_24A55715C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 82) = 0u;
  }

  return result;
}

void sub_24A554E04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A62E214();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - v9;
  v10 = *v2;
  sub_24A508FA4(&qword_27EF4FF38, &qword_24A635E58);
  v45 = v4;
  v50 = sub_24A62F484();
  if (*(v10 + 16))
  {
    v40 = v2;
    v11 = 0;
    v12 = (v10 + 64);
    v13 = 1 << *(v10 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v10 + 64);
    v16 = (v13 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v17 = v50 + 64;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v48 = (v15 - 1) & v15;
LABEL_15:
      v25 = *(v10 + 48);
      v47 = *(v43 + 72);
      v26 = v47 * (v22 | (v11 << 6));
      if (v45)
      {
        v27 = *v46;
        v28 = v44;
        (*v46)(v44, v25 + v26, v5);
      }

      else
      {
        v27 = *v41;
        v28 = v44;
        (*v41)(v44, v25 + v26, v5);
      }

      v27(v49, *(v10 + 56) + v26, v5);
      v29 = v50;
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v30 = sub_24A62EBB4();
      v31 = -1 << *(v29 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = v50;
      v20 = v47 * v18;
      v21 = *v46;
      (*v46)((*(v50 + 48) + v47 * v18), v28, v5);
      v21((*(v19 + 56) + v20), v49, v5);
      ++*(v19 + 16);
      v10 = v42;
      v15 = v48;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v48 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
}

void sub_24A555250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A62E214();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A508FA4(&qword_27EF4FF30, &qword_24A635E50);
  v41 = v4;
  v10 = sub_24A62F484();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v28 = sub_24A62EBB4();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_24A555610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A508FA4(&qword_27EF4FF68, &qword_24A635E88);
  v6 = sub_24A62F484();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_24A62F714();
      MEMORY[0x24C21B040](v20);
      v21 = sub_24A62F754();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_24A5558A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A62E214();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A508FA4(&qword_27EF4FEB8, &qword_24A635DF0);
  v51 = v4;
  v10 = sub_24A62F484();
  v11 = v10;
  if (*(v9 + 16))
  {
    v48[0] = v2;
    v12 = 0;
    v50 = v9;
    v15 = *(v9 + 64);
    v14 = (v9 + 64);
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v48[1] = v6 + 16;
    v52 = (v6 + 32);
    v20 = v10 + 64;
    v49 = v6;
    v54 = v5;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = v8;
      v28 = v50;
      v29 = *(v50 + 48);
      v53 = *(v6 + 72);
      v30 = v27;
      if (v51)
      {
        (*(v6 + 32))(v27, v29 + v53 * v26, v54);
        v31 = *(v28 + 56) + 104 * v26;
        v64 = *(v31 + 48);
        v65 = *(v31 + 64);
        *v66 = *(v31 + 80);
        *&v66[13] = *(v31 + 93);
        v61 = *v31;
        v62 = *(v31 + 16);
        v63 = *(v31 + 32);
      }

      else
      {
        (*(v6 + 16))(v27, v29 + v53 * v26, v54);
        v32 = *(v28 + 56) + 104 * v26;
        v33 = *(v32 + 93);
        v35 = *(v32 + 64);
        v34 = *(v32 + 80);
        v58 = *(v32 + 48);
        v59 = v35;
        v60[0] = v34;
        *(v60 + 13) = v33;
        v37 = *(v32 + 16);
        v36 = *(v32 + 32);
        v55 = *v32;
        v56 = v37;
        v57 = v36;
        sub_24A508CE4(&v55, &v61);
        v65 = v59;
        *v66 = v60[0];
        *&v66[13] = *(v60 + 13);
        v61 = v55;
        v62 = v56;
        v63 = v57;
        v64 = v58;
      }

      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v38 = sub_24A62EBB4();
      v39 = -1 << *(v11 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      v8 = v30;
      if (((-1 << v40) & ~*(v20 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v6 = v49;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v20 + 8 * v41);
          if (v45 != -1)
          {
            v21 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v40) & ~*(v20 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v6 = v49;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      (*v52)(*(v11 + 48) + v53 * v21, v30, v54);
      v22 = *(v11 + 56) + 104 * v21;
      *(v22 + 32) = v63;
      *(v22 + 16) = v62;
      *v22 = v61;
      *(v22 + 93) = *&v66[13];
      *(v22 + 80) = *v66;
      *(v22 + 64) = v65;
      *(v22 + 48) = v64;
      ++*(v11 + 16);
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v19)
      {
        break;
      }

      v25 = v14[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v48[0];
      goto LABEL_35;
    }

    v46 = v50;
    v47 = 1 << *(v50 + 32);
    v3 = v48[0];
    if (v47 >= 64)
    {
      bzero(v14, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v47;
    }

    *(v46 + 16) = 0;
  }

LABEL_35:
  *v3 = v11;
}

void sub_24A555E0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A62E214();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A508FA4(&unk_27EF4FE80, &unk_24A635DD0);
  v53 = v4;
  v10 = sub_24A62F484();
  v11 = v10;
  if (*(v9 + 16))
  {
    v68 = v8;
    v49 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v50 = v6 + 16;
    v52 = v6;
    v54 = (v6 + 32);
    v18 = v10 + 64;
    v51 = v9;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v67 = *(v52 + 72);
      if (v53)
      {
        (*(v52 + 32))(v68, v26 + v67 * v25, v5);
        v27 = *(v9 + 56) + 104 * v25;
        v57 = *v27;
        v55 = *(v27 + 8);
        v28 = *(v27 + 24);
        *&v58 = *(v27 + 16);
        *(&v58 + 1) = v28;
        v29 = *(v27 + 32);
        v59 = *(v27 + 40);
        v30 = *(v27 + 48);
        v60 = *(v27 + 56);
        v61 = *(v27 + 57);
        v31 = *(v27 + 64);
        v62 = *(v27 + 72);
        v63 = *(v27 + 73);
        v64 = *(v27 + 74);
        v32 = *(v27 + 80);
        v65 = *(v27 + 88);
        v56 = *(v27 + 96);
        v66 = *(v27 + 97);
      }

      else
      {
        (*(v52 + 16))(v68, v26 + v67 * v25, v5);
        v33 = *(v9 + 56) + 104 * v25;
        v34 = *(v33 + 48);
        v35 = *(v33 + 64);
        v36 = *(v33 + 80);
        v82 = *(v33 + 96);
        v80 = v35;
        v81 = v36;
        v79 = v34;
        v37 = *v33;
        v38 = *(v33 + 32);
        v77 = *(v33 + 16);
        v78 = v38;
        v76 = v37;
        v66 = HIBYTE(v82);
        v65 = *(&v81 + 1);
        v56 = v82;
        v32 = v81;
        v64 = BYTE10(v35);
        v63 = BYTE9(v35);
        v62 = BYTE8(v35);
        v31 = v35;
        v61 = BYTE9(v79);
        v60 = BYTE8(v79);
        v30 = v79;
        v59 = BYTE8(v38);
        v29 = v38;
        v58 = v77;
        v57 = v37;
        v55 = BYTE8(v37);
        sub_24A51C914(&v76, v75);
      }

      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v39 = sub_24A62EBB4();
      v40 = -1 << *(v11 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v18 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v18 + 8 * v42);
          if (v46 != -1)
          {
            v19 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v41) & ~*(v18 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v74 = v55;
      v69 = v56;
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v54)(*(v11 + 48) + v67 * v19, v68, v5);
      v20 = *(v11 + 56) + 104 * v19;
      *v20 = v57;
      *(v20 + 8) = v74;
      *(v20 + 12) = *(&v76 + 3);
      *(v20 + 9) = v76;
      v21 = *(&v58 + 1);
      *(v20 + 16) = v58;
      *(v20 + 24) = v21;
      *(v20 + 32) = v29;
      *(v20 + 40) = v59;
      *(v20 + 44) = *(v75 + 3);
      *(v20 + 41) = v75[0];
      *(v20 + 48) = v30;
      *(v20 + 56) = v60;
      *(v20 + 57) = v61;
      *(v20 + 62) = v73;
      *(v20 + 58) = v72;
      *(v20 + 64) = v31;
      *(v20 + 72) = v62;
      *(v20 + 73) = v63;
      *(v20 + 74) = v64;
      *(v20 + 75) = v70;
      *(v20 + 79) = v71;
      *(v20 + 80) = v32;
      *(v20 + 88) = v65;
      *(v20 + 96) = v69;
      *(v20 + 97) = v66;
      ++*(v11 + 16);
      v9 = v51;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_34;
    }

    v47 = 1 << *(v9 + 32);
    v3 = v49;
    if (v47 >= 64)
    {
      bzero(v13, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v47;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_24A556510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_24A62E214();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_24A508FA4(a3, a4);
  v44 = v8;
  v14 = sub_24A62F484();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v10;
    v45 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v30 = sub_24A62EBB4();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v47 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v13 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

void sub_24A5568EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A62E214();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A508FA4(&qword_27EF4FF60, &qword_24A635E80);
  v39 = v4;
  v10 = sub_24A62F484();
  v11 = v10;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_24A508CA0((*(v9 + 56) + 40 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_24A508AE4(*(v9 + 56) + 40 * v23, v44);
      }

      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = sub_24A62EBB4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      sub_24A508CA0(v44, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_24A556CD0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_24A508FA4(&unk_27EF4FEC0, &qword_24A635DF8);
  v54 = v3;
  v5 = sub_24A62F484();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 64);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v5 + 64;
    for (i = v4; ; v4 = i)
    {
      if (!v11)
      {
        v21 = v7;
        while (1)
        {
          v7 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_50;
          }

          if (v7 >= v12)
          {
            break;
          }

          v22 = v8[v7];
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v11 = (v22 - 1) & v22;
            goto LABEL_15;
          }
        }

        if (v54)
        {
          v52 = 1 << *(v4 + 32);
          if (v52 >= 64)
          {
            bzero(v8, ((v52 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v8 = -1 << v52;
          }

          *(v4 + 16) = 0;
        }

        break;
      }

      v20 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v23 = v20 | (v7 << 6);
      if (v54)
      {
        v24 = *(v4 + 56);
        v25 = *(v4 + 48) + 104 * v23;
        v26 = *(v25 + 48);
        v65 = *(v25 + 32);
        v66 = v26;
        v27 = *(v25 + 80);
        v28 = *v25;
        v29 = *(v25 + 16);
        v30 = *(v25 + 96) | (*(v25 + 100) << 32);
        v67 = *(v25 + 64);
        v68 = v27;
        v63 = v28;
        v64 = v29;
        v31 = (v24 + 40 * v23);
        v55 = *v31;
        v32 = *(v31 + 2);
        v33 = *(v31 + 6);
        v34 = *(v31 + 4);
      }

      else
      {
        v35 = *(v4 + 48) + 104 * v23;
        v36 = *(v35 + 48);
        v37 = *(v35 + 64);
        v38 = *(v35 + 80);
        *&v62[13] = *(v35 + 93);
        v61 = v37;
        *v62 = v38;
        v60 = v36;
        v40 = *(v35 + 16);
        v39 = *(v35 + 32);
        v57 = *v35;
        v58 = v40;
        v59 = v39;
        v41 = *(v4 + 56) + 40 * v23;
        v55 = *v41;
        v32 = *(v41 + 16);
        v33 = *(v41 + 24);
        v34 = *(v41 + 32);
        sub_24A508CE4(&v57, v56);
        v65 = v59;
        v66 = v60;
        v67 = v61;
        v68 = *v62;
        v30 = *&v62[16] | (v62[20] << 32);
        v63 = v57;
        v64 = v58;
      }

      sub_24A62F714();
      v42 = (((v30 & 0xFF000000) - 0x4000000) >> 24);
      if (v42 > 1)
      {
        if (v42 == 2)
        {
          v43 = 4;
          goto LABEL_29;
        }

        if (v42 == 3)
        {
          v43 = 5;
          goto LABEL_29;
        }
      }

      else
      {
        if (!(((v30 & 0xFF000000) - 0x4000000) >> 24))
        {
          v43 = 1;
          goto LABEL_29;
        }

        if (v42 == 1)
        {
          v43 = 2;
LABEL_29:
          MEMORY[0x24C21B040](v43);
          goto LABEL_30;
        }
      }

      v71 = v65;
      v72 = v66;
      v73 = v67;
      v74 = v68;
      v69 = v63;
      v70 = v64;
      v76 = BYTE2(v30);
      v75 = v30;
      MEMORY[0x24C21B040](3);
      sub_24A5AFE14(&v57);
      MEMORY[0x24C21B040](BYTE3(v30));
      if (BYTE4(v30) != 3)
      {
        sub_24A62F734();
        if (BYTE4(v30) == 2)
        {
          MEMORY[0x24C21B040](1);
          goto LABEL_30;
        }

        MEMORY[0x24C21B040](0);
      }

      sub_24A62F734();
LABEL_30:
      v44 = sub_24A62F754();
      v45 = -1 << *(v6 + 32);
      v46 = v44 & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v13 + 8 * (v46 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v45) >> 6;
        while (++v47 != v49 || (v48 & 1) == 0)
        {
          v50 = v47 == v49;
          if (v47 == v49)
          {
            v47 = 0;
          }

          v48 |= v50;
          v51 = *(v13 + 8 * v47);
          if (v51 != -1)
          {
            v14 = __clz(__rbit64(~v51)) + (v47 << 6);
            goto LABEL_7;
          }
        }

LABEL_50:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v46) & ~*(v13 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 104 * v14;
      v16 = v66;
      *(v15 + 32) = v65;
      *(v15 + 48) = v16;
      v17 = v68;
      *(v15 + 64) = v67;
      *(v15 + 80) = v17;
      v18 = v64;
      *v15 = v63;
      *(v15 + 16) = v18;
      *(v15 + 100) = BYTE4(v30);
      *(v15 + 96) = v30;
      v19 = *(v6 + 56) + 40 * v14;
      *v19 = v55;
      *(v19 + 16) = v32;
      *(v19 + 24) = v33;
      *(v19 + 32) = v34;
      ++*(v6 + 16);
    }
  }

  *v2 = v6;
}

void sub_24A55715C(int64_t a1, uint64_t a2)
{
  v33 = sub_24A62E214();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v35 = a2;
    v10 = ~v8;
    v11 = sub_24A62F274();
    v12 = v10;
    a2 = v35;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v31 = (v11 + 1) & v12;
    v32 = v14;
    v15 = *(v13 + 56);
    v30 = (v13 - 8);
    v34 = v15;
    do
    {
      v16 = v15 * v9;
      v17 = v12;
      v18 = v33;
      v19 = v13;
      v32(v6, *(a2 + 48) + v15 * v9, v33);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v20 = sub_24A62EBB4();
      (*v30)(v6, v18);
      v12 = v17;
      v21 = v20 & v17;
      if (a1 >= v31)
      {
        if (v21 >= v31 && a1 >= v21)
        {
LABEL_15:
          v13 = v19;
          if (v34 * a1 < v16 || *(v35 + 48) + v34 * a1 >= (*(v35 + 48) + v16 + v34))
          {
            swift_arrayInitWithTakeFrontToBack();
LABEL_20:
            v12 = v17;
          }

          else if (v34 * a1 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
            goto LABEL_20;
          }

          a2 = v35;
          v24 = *(v35 + 56);
          v25 = (v24 + 104 * a1);
          v26 = (v24 + 104 * v9);
          if (104 * a1 < (104 * v9) || v25 >= v26 + 104 || a1 != v9)
          {
            memmove(v25, v26, 0x68uLL);
            v12 = v17;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v31 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v13 = v19;
      a2 = v35;
LABEL_4:
      v9 = (v9 + 1) & v12;
      v15 = v34;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

void sub_24A557460(int64_t a1, uint64_t a2)
{
  v38 = sub_24A62E214();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_24A62F274();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_24A55B628(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_24A62EBB4();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_24A557780(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24A5160C8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24A555610(v16, a4 & 1);
      v11 = sub_24A5160C8(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_24A62F674();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_24A5587B8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + v11) = a3;
    v23 = (v21[7] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_24A5578E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A62E214();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24A515AC8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24A55891C();
      goto LABEL_7;
    }

    sub_24A5558A0(v17, a3 & 1);
    v23 = sub_24A515AC8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24A558010(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24A62F674();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 104 * v14;

  return sub_24A55B4E4(a1, v21);
}

uint64_t sub_24A557AB0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A62E214();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24A515AC8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24A558C5C();
      goto LABEL_7;
    }

    sub_24A555E0C(v17, a3 & 1);
    v23 = sub_24A515AC8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_24A5580EC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24A62F674();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 104 * v14;

  return sub_24A55B2CC(a1, v21);
}

void sub_24A557CA8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a4;
  v28 = a5;
  v6 = v5;
  v10 = sub_24A62E214();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_24A515AC8(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_24A558FC4(v27, v28);
      goto LABEL_7;
    }

    sub_24A556510(v19, a3 & 1, v27, v28);
    v25 = sub_24A515AC8(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      sub_24A5581C8(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    sub_24A62F674();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

unint64_t sub_24A557E84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_24A515A5C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_24A556CD0(v14, a3 & 1);
      result = sub_24A515A5C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = sub_24A62F674();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_24A5594C0();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * result;
    v21 = *(a1 + 16);
    *v20 = *a1;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(a1 + 32);
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  v22 = v19[6] + 104 * result;
  v24 = *(a2 + 16);
  v23 = *(a2 + 32);
  *v22 = *a2;
  *(v22 + 16) = v24;
  *(v22 + 32) = v23;
  v25 = *(a2 + 48);
  v26 = *(a2 + 64);
  v27 = *(a2 + 80);
  *(v22 + 93) = *(a2 + 93);
  *(v22 + 64) = v26;
  *(v22 + 80) = v27;
  *(v22 + 48) = v25;
  v28 = v19[7] + 40 * result;
  v29 = *(a1 + 16);
  *v28 = *a1;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a1 + 32);
  v30 = v19[2];
  v13 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19[2] = v31;
  return sub_24A508CE4(a2, v32);
}

uint64_t sub_24A558010(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A62E214();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 104 * a1;
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  *(v11 + 93) = *(a3 + 93);
  v13 = *(a3 + 80);
  *(v11 + 64) = *(a3 + 64);
  *(v11 + 80) = v13;
  v14 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v14;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_24A5580EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A62E214();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 104 * a1;
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  *(v11 + 96) = *(a3 + 96);
  v13 = *(a3 + 80);
  *(v11 + 64) = *(a3 + 64);
  *(v11 + 80) = v13;
  v14 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v14;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_24A5581C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24A62E214();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_24A558280()
{
  v1 = v0;
  v34 = sub_24A62E214();
  v38 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v35 = &v30 - v4;
  sub_24A508FA4(&qword_27EF4FF38, &qword_24A635E58);
  v5 = *v0;
  v6 = sub_24A62F474();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        v28(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
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

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_24A558548()
{
  v1 = v0;
  v31 = sub_24A62E214();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&qword_27EF4FF30, &qword_24A635E50);
  v3 = *v0;
  v4 = sub_24A62F474();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_24A5587B8()
{
  v1 = v0;
  sub_24A508FA4(&qword_27EF4FF68, &qword_24A635E88);
  v2 = *v0;
  v3 = sub_24A62F474();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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
}

void sub_24A55891C()
{
  v1 = v0;
  v43 = sub_24A62E214();
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&qword_27EF4FEB8, &qword_24A635DF0);
  v3 = *v0;
  v4 = sub_24A62F474();
  v5 = v4;
  if (*(v3 + 16))
  {
    v38 = v1;
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v39 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v44 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v41 = v45 + 16;
    v40 = v45 + 32;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v46 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v45;
        v20 = *(v45 + 72) * v18;
        v21 = v42;
        v22 = v43;
        (*(v45 + 16))(v42, *(v3 + 48) + v20, v43);
        v18 *= 104;
        v23 = *(v3 + 56) + v18;
        v24 = *(v23 + 48);
        v25 = *(v23 + 64);
        v26 = *(v23 + 80);
        *&v53[13] = *(v23 + 93);
        v52 = v25;
        *v53 = v26;
        v51 = v24;
        v28 = *(v23 + 16);
        v27 = *(v23 + 32);
        v48 = *v23;
        v49 = v28;
        v50 = v27;
        v29 = v3;
        v30 = v44;
        (*(v19 + 32))(*(v44 + 48) + v20, v21, v22);
        v31 = *(v30 + 56);
        v3 = v29;
        v32 = v31 + v18;
        v33 = v51;
        v34 = v52;
        v35 = *v53;
        *(v32 + 93) = *&v53[13];
        *(v32 + 64) = v34;
        *(v32 + 80) = v35;
        *(v32 + 48) = v33;
        v36 = v50;
        v37 = v49;
        *v32 = v48;
        *(v32 + 16) = v37;
        *(v32 + 32) = v36;
        sub_24A508CE4(&v48, v47);
        v13 = v46;
      }

      while (v46);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v38;
        v5 = v44;
        goto LABEL_18;
      }

      v17 = *(v39 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v46 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_24A558C5C()
{
  v1 = v0;
  v43 = sub_24A62E214();
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&unk_27EF4FE80, &unk_24A635DD0);
  v3 = *v0;
  v4 = sub_24A62F474();
  v5 = v4;
  if (*(v3 + 16))
  {
    v38 = v1;
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v39 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v44 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v41 = v45 + 16;
    v40 = v45 + 32;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v46 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v45;
        v20 = *(v45 + 72) * v18;
        v21 = v42;
        v22 = v43;
        (*(v45 + 16))(v42, *(v3 + 48) + v20, v43);
        v18 *= 104;
        v23 = *(v3 + 56) + v18;
        v24 = *(v23 + 48);
        v25 = *(v23 + 64);
        v26 = *(v23 + 80);
        v54 = *(v23 + 96);
        v52 = v25;
        v53 = v26;
        v51 = v24;
        v28 = *(v23 + 16);
        v27 = *(v23 + 32);
        v48 = *v23;
        v49 = v28;
        v50 = v27;
        v29 = v3;
        v30 = v44;
        (*(v19 + 32))(*(v44 + 48) + v20, v21, v22);
        v31 = *(v30 + 56);
        v3 = v29;
        v32 = v31 + v18;
        v33 = v51;
        v34 = v52;
        v35 = v53;
        *(v32 + 96) = v54;
        *(v32 + 64) = v34;
        *(v32 + 80) = v35;
        *(v32 + 48) = v33;
        v36 = v50;
        v37 = v49;
        *v32 = v48;
        *(v32 + 16) = v37;
        *(v32 + 32) = v36;
        sub_24A51C914(&v48, v47);
        v13 = v46;
      }

      while (v46);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v38;
        v5 = v44;
        goto LABEL_18;
      }

      v17 = *(v39 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v46 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_24A558FC4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_24A62E214();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(a1, a2);
  v7 = *v2;
  v8 = sub_24A62F474();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v32, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v37 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v7 + 48) + v25, v36);
        v28 = *(*(v7 + 56) + 8 * v23);
        (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        v29 = v28;
        v17 = v39;
      }

      while (v39);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v31;
        v9 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

void sub_24A559238()
{
  v1 = v0;
  v29 = sub_24A62E214();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&qword_27EF4FF60, &qword_24A635E80);
  v3 = *v0;
  v4 = sub_24A62F474();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_24A508AE4(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        sub_24A508CA0(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_24A5594C0()
{
  v1 = v0;
  sub_24A508FA4(&unk_27EF4FEC0, &qword_24A635DF8);
  v2 = *v0;
  v3 = sub_24A62F474();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 104 * v16;
      v18 = (*(v2 + 48) + 104 * v16);
      v19 = *(v18 + 3);
      v20 = *(v18 + 4);
      v21 = *(v18 + 5);
      *(v33 + 13) = *(v18 + 93);
      v32[4] = v20;
      v33[0] = v21;
      v32[3] = v19;
      v23 = *(v18 + 1);
      v22 = *(v18 + 2);
      v32[0] = *v18;
      v32[1] = v23;
      v32[2] = v22;
      v24 = 40 * v16;
      v25 = *(v2 + 56) + 40 * v16;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      v28 = *(v25 + 32);
      v30 = *v25;
      memmove((*(v4 + 48) + v17), v18, 0x65uLL);
      v29 = *(v4 + 56) + v24;
      *v29 = v30;
      *(v29 + 16) = v26;
      *(v29 + 24) = v27;
      *(v29 + 32) = v28;
      sub_24A508CE4(v32, v31);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
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
}

void sub_24A5596B4(uint64_t a1, char a2, void *a3)
{
  v7 = sub_24A62E214();
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v52 - v10;
  v12 = sub_24A508FA4(&unk_27EF52460, &unk_24A63C120);
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v52 - v14;
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_24;
  }

  v52[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = *(v13 + 48);
  v17 = *(v58 + 80);
  v57 = a1;
  v18 = (v59 + 32);
  v54 = a1 + ((v17 + 32) & ~v17);
  sub_24A50D63C(v54, v15, &unk_27EF52460, &unk_24A63C120);
  v19 = *v18;
  (*v18)(v11, v15, v7);
  v55 = v16;
  v53 = v19;
  v19(v60, &v15[v16], v7);
  v20 = *a3;
  v22 = sub_24A515AC8(v11);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_24A558280();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_24A554E04(v25, a2 & 1);
  v27 = sub_24A515AC8(v11);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v32 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v33 = *(v59 + 72) * v22;
      v34 = v53;
      v53((v32[6] + v33), v11, v7);
      v34((v32[7] + v33), v60, v7);
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v37;
      if (v56 != 1)
      {
        v38 = 1;
        while (v38 < *(v57 + 16))
        {
          sub_24A50D63C(v54 + *(v58 + 72) * v38, v15, &unk_27EF52460, &unk_24A63C120);
          v39 = *v18;
          (*v18)(v11, v15, v7);
          v39(v60, &v15[v55], v7);
          v40 = *a3;
          v41 = sub_24A515AC8(v11);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v36 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v36)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_24A554E04(v45, 1);
            v41 = sub_24A515AC8(v11);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v49 = *(v59 + 72) * v41;
          v39((v48[6] + v49), v11, v7);
          v39((v48[7] + v49), v60, v7);
          v50 = v48[2];
          v36 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v36)
          {
            goto LABEL_27;
          }

          ++v38;
          v48[2] = v51;
          if (v56 == v38)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();
    v63 = v29;
    v30 = v29;
    sub_24A508FA4(&unk_27EF4F990, &unk_24A6349E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v31 = *(v59 + 8);
      v31(v60, v7);
      v31(v11, v7);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_24A62F674();
  __break(1u);
LABEL_29:
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_24A62F384();
  MEMORY[0x24C21A5D0](0xD00000000000001BLL, 0x800000024A63ECC0);
  sub_24A62F434();
  MEMORY[0x24C21A5D0](39, 0xE100000000000000);
  sub_24A62F444();
  __break(1u);
}

void sub_24A559C88(void *a1, char a2, void *a3)
{
  v7 = sub_24A62E214();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A508FA4(&unk_27EF4FF10, &unk_24A635E30);
  MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  v59 = a1[2];
  if (!v59)
  {
    goto LABEL_22;
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  sub_24A50D63C(a1 + v17, v54 - v14, &unk_27EF4FF10, &unk_24A635E30);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_24A515AC8(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_24A555250(v25, a2 & 1);
    v20 = sub_24A515AC8(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_24A62F674();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v18;
  v31 = v20;
  sub_24A558548();
  v20 = v31;
  v18 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();

    v65 = v28;
    v29 = v28;
    sub_24A508FA4(&unk_27EF4F990, &unk_24A6349E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v55 + 8))(v10, v62);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = v18;
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + 8 * v35) = v32;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v60 + v58 + v17;
    v40 = 1;
    while (v40 < v38[2])
    {
      sub_24A50D63C(v39, v15, &unk_27EF4FF10, &unk_24A635E30);
      v61(v10, v15, v62);
      v41 = *&v15[v57];
      v42 = *a3;
      v43 = sub_24A515AC8(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_24A555250(v47, 1);
        v43 = sub_24A515AC8(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_24A62F384();
  MEMORY[0x24C21A5D0](0xD00000000000001BLL, 0x800000024A63ECC0);
  sub_24A62F434();
  MEMORY[0x24C21A5D0](39, 0xE100000000000000);
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A55A1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_24A508FA4(&qword_27EF4FEA8, &qword_24A635DE8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 8) & 1) != 0 || (sub_24A62E804() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for FindingEstimate(0);
  v15 = *(v14 + 20);
  v16 = a1;
  v17 = *(v11 + 48);
  v27 = v14;
  v28 = v16;
  sub_24A50D63C(v16 + v15, v13, &unk_27EF4FE20, &qword_24A634BA0);
  v29 = a2;
  sub_24A50D63C(a2 + v15, &v13[v17], &unk_27EF4FE20, &qword_24A634BA0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_24A50D63C(v13, v10, &unk_27EF4FE20, &qword_24A634BA0);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v17], v4);
      sub_24A518A6C(&qword_27EF4FEB0, &qword_27EF4FE50, &qword_24A634BB0, MEMORY[0x277CC87F0]);
      v19 = sub_24A62EBD4();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_24A50D6A4(v13, &unk_27EF4FE20, &qword_24A634BA0);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_24A50D6A4(v13, &qword_27EF4FEA8, &qword_24A635DE8);
    return 0;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_24A50D6A4(v13, &unk_27EF4FE20, &qword_24A634BA0);
LABEL_13:
  if (*(v28 + v27[6]) == *(v29 + v27[6]))
  {
    v21 = v27[7];
    v22 = *(v28 + v21);
    v23 = *(v29 + v21);
    if (v22 == 5)
    {
      if (v23 != 5)
      {
        return 0;
      }

LABEL_18:
      v24 = v27[8];
      if (*(v28 + v24 + 8))
      {
        if ((*(v29 + v24 + 8) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*(v29 + v24 + 8) & 1) != 0 || (sub_24A62E804() & 1) == 0)
      {
        return 0;
      }

      return 1;
    }

    if (v22 == v23)
    {
      goto LABEL_18;
    }
  }

  return 0;
}

uint64_t sub_24A55A5C8(uint64_t a1, uint64_t a2, int a3)
{
  v52 = a3;
  v6 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  v9 = sub_24A62E214();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v44 - v13;
  v14 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v14)
  {
    v54 = v8;
    v44 = v3;
    v60 = MEMORY[0x277D84F90];
    sub_24A62F404();
    v56 = a1 + 64;
    result = sub_24A62F264();
    v16 = result;
    v17 = 0;
    v18 = *(a2 + OBJC_IVAR____TtC11FMFindingUI18FMFindingLocalizer_productUUIDsByFindableUUID);
    v53 = v10 + 16;
    v58 = *(a1 + 36);
    v50 = (v10 + 56);
    v51 = v18;
    v48 = (v10 + 8);
    v49 = (v10 + 48);
    v45 = a1 + 72;
    v46 = v14;
    v19 = v10;
    v20 = v57;
    v21 = a1;
    v47 = v10;
    v55 = a1;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v21 + 32))
    {
      v24 = v16 >> 6;
      if ((*(v56 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_29;
      }

      if (v58 != *(v21 + 36))
      {
        goto LABEL_30;
      }

      v25 = *(v19 + 72);
      v26 = *(v19 + 16);
      v26(v20, *(v21 + 48) + v25 * v16, v9);
      v26(v59, v20, v9);
      v27 = v51;
      if (*(v51 + 16) && (v28 = sub_24A515AC8(v20), (v29 & 1) != 0))
      {
        v26(v54, *(v27 + 56) + v28 * v25, v9);
        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = v54;
      (*v50)(v54, v30, 1, v9);
      v32 = sub_24A62E1D4();
      v33 = (*v49)(v31, 1, v9);
      v34 = v48;
      if (v33 == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = sub_24A62E1D4();
        (*v34)(v31, v9);
      }

      [objc_allocWithZone(MEMORY[0x277D43C48]) initWithUUID:v32 productUUID:v35 isOwned:v52 == 0];

      v36 = *v34;
      (*v34)(v59, v9);
      v36(v57, v9);
      sub_24A62F3E4();
      sub_24A62F414();
      sub_24A62F424();
      result = sub_24A62F3F4();
      v21 = v55;
      v22 = 1 << *(v55 + 32);
      if (v16 >= v22)
      {
        goto LABEL_31;
      }

      v37 = *(v56 + 8 * v24);
      if ((v37 & (1 << v16)) == 0)
      {
        goto LABEL_32;
      }

      if (v58 != *(v55 + 36))
      {
        goto LABEL_33;
      }

      v38 = v37 & (-2 << (v16 & 0x3F));
      if (v38)
      {
        v22 = __clz(__rbit64(v38)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v23 = v46;
      }

      else
      {
        v39 = v24 << 6;
        v40 = v24 + 1;
        v23 = v46;
        v41 = (v45 + 8 * v24);
        while (v40 < (v22 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            result = sub_24A55B6DC(v16, v58, 0);
            v22 = __clz(__rbit64(v42)) + v39;
            goto LABEL_25;
          }
        }

        result = sub_24A55B6DC(v16, v58, 0);
LABEL_25:
        v21 = v55;
      }

      ++v17;
      v16 = v22;
      v19 = v47;
      v20 = v57;
      if (v17 == v23)
      {
        return v60;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_24A55AAAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A55AAE4(uint64_t a1, const char *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v8 = sub_24A62E314();
  sub_24A506EB8(v8, qword_27EF5C118);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF64();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    sub_24A55B628(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_24A62F614();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_24A509BA8(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A503000, v9, v10, a2, v11, 0xCu);
    sub_24A508C54(v12);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

void sub_24A55AD54(void *a1)
{
  v2 = sub_24A62E214();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v6 = sub_24A62E314();
  sub_24A506EB8(v6, qword_27EF5C118);
  v17 = a1;
  v7 = sub_24A62E2F4();
  v8 = sub_24A62EF64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    v11 = [v17 uuid];
    sub_24A62E1F4();

    sub_24A55B628(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_24A62F614();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15 = sub_24A509BA8(v12, v14, &v18);

    *(v9 + 4) = v15;
    *(v9 + 12) = 1024;
    LODWORD(v15) = [v17 rssi];

    *(v9 + 14) = v15;
    _os_log_impl(&dword_24A503000, v7, v8, "🧭 FMFindingLocalizer: Will integrate BT RSSI measurement for %s: %d", v9, 0x12u);
    sub_24A508C54(v10);
    MEMORY[0x24C21BBE0](v10, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  else
  {

    v16 = v17;
  }
}

void sub_24A55B024(void *a1)
{
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v8 = v1 + OBJC_IVAR____TtCC11FMFindingUI18FMFindingLocalizerP33_22F1FFC3BC980B33F05B7EB45077AC7718DelegateTrampoline_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v23[3] = type metadata accessor for FMFindingLocalizer();
      v23[4] = &off_285DA5430;
      v23[0] = v19;
      memset(v24, 0, sizeof(v24));
      v26 = 0;
      v25 = 117440512;
      v10 = a1[3];
      v9 = a1[4];
      sub_24A50A204(a1, v10);
      v11 = *(v9 + 8);
      v12 = v19;
      v11(v20, v10, v9);
      v13 = v21;
      v14 = v22;
      sub_24A50A204(v20, v21);
      (*(v14 + 16))(v13, v14);
      (*(v17 + 8))(v23, v24, v6, ObjectType);

      swift_unknownObjectRelease();
      (*(v4 + 8))(v6, v3);
      sub_24A508C54(v20);
      sub_24A508C54(v23);
    }

    else
    {
      v15 = v19;
    }
  }
}

void *sub_24A55B284(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

uint64_t sub_24A55B328()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A55B370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A55B438()
{

  sub_24A508C54((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A55B484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A55B628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A55B670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingLocalizerError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A55B6DC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_24A55B6E8()
{
  result = qword_27EF50500;
  if (!qword_27EF50500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50500);
  }

  return result;
}

uint64_t sub_24A55B73C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A55B7E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A508FA4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_24A55B898(uint64_t a1)
{
  sub_24A55B96C();
  if (v1 <= 0x3F)
  {
    sub_24A55BA20(319, &qword_27EF4FF90, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      sub_24A55BA6C(319);
      if (v3 <= 0x3F)
      {
        sub_24A55BA20(319, &qword_27EF4FFA0, sub_24A55BAEC);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24A55B96C()
{
  if (!qword_27EF4FF80)
  {
    sub_24A55B9CC(0, &qword_27EF523E0, &unk_27EF4F990, &unk_24A6349E0);
    if (!v1)
    {
      atomic_store(v0, &qword_27EF4FF80);
    }
  }
}

void sub_24A55B9CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_24A50E1E0(a3, a4);
    v5 = sub_24A62F1C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A55BA20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A55BA6C(uint64_t a1)
{
  if (!qword_27EF4FF98)
  {
    sub_24A62E214();
    sub_24A50E1E0(&unk_27EF4F990, &unk_24A6349E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF4FF98);
    }
  }
}

unint64_t sub_24A55BAEC()
{
  result = qword_27EF4FFA8;
  if (!qword_27EF4FFA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EF4FFA8);
  }

  return result;
}

uint64_t sub_24A55BB74(uint64_t a1, uint64_t a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = sub_24A62E814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62E024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21[-1] - v13;
  v21[0] = a1;
  v21[1] = a2;
  sub_24A62DFF4();
  sub_24A62E014();
  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_24A55BEBC();
  sub_24A62F1F4();
  v15(v11, v8);

  v21[0] = 0;
  v16 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v17 = sub_24A62EBE4();
  v18 = [v16 initWithString_];

  [v18 scanHexLongLong_];
  sub_24A62EC84();

  (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
  return sub_24A62E874();
}

unint64_t sub_24A55BEBC()
{
  result = qword_27EF4FFB0;
  if (!qword_27EF4FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FFB0);
  }

  return result;
}

void sub_24A55BF10(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  _Q7 = *(v2 + 8);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 64);
  v12 = *(v2 + 80);
  v11 = *(v2 + 88);
  v13 = *(v2 + 96);
  v14 = *(v2 + 104);
  v15 = fabs(*&_Q7);
  if (vabdd_f64(*v2, v8) > *&v9 || v15 > *(v2 + 56))
  {
    v34 = *(v2 + 8);
    __x = *(v2 + 24);
    v17 = v5 - v8;
    v18 = vmovn_s64(vmvnq_s8(vceqq_f64(v7, v10)));
    if ((v18.i32[0] | v18.i32[1]))
    {
      v12 = vmuld_lane_f64(0.5, v7, 1);
      v11 = sqrt(v7.f64[0]);
      v13 = sqrt(v11 * v11 - v12 * v12);
      v14 = sqrt(v12 * v12 - v11 * v11);
    }

    v19 = exp(-(v12 * a2));
    v20 = *&v34 + v17 * v12;
    if (v12 >= v11)
    {
      v35 = -v12;
      if (v11 < v12)
      {
        v26 = v14 * a2;
        v33 = v20 / v14;
        v32 = cosh(v26);
        v27 = sinh(v26);
        v24 = v17 * v32 + v33 * v27;
        v25 = v19 * v35 * v24 + v19 * (v14 * (v33 * v32) + v14 * (v17 * v27));
        v7 = __x;
LABEL_14:
        v5 = v8 + v19 * v24;
        __asm { FMOV            V7.2D, #1.0 }

        *&_Q7 = v25;
        v9 = 0uLL;
        v10 = v7;
        goto LABEL_15;
      }

      v24 = v17 + v20 * a2;
      v25 = v19 * v20 + v19 * v35 * v24;
    }

    else
    {
      v21 = v13 * a2;
      v22 = v20 / v13;
      v23 = __sincos_stret(v21);
      v24 = v17 * v23.__cosval + v22 * v23.__sinval;
      v25 = v19 * -v12 * v24 + v19 * (v13 * (v22 * v23.__cosval) - v13 * (v17 * v23.__sinval));
    }

    v7 = __x;
    goto LABEL_14;
  }

LABEL_15:
  *a1 = v5;
  *(a1 + 8) = _Q7;
  *(a1 + 24) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *(a1 + 80) = v12;
  *(a1 + 88) = v11;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
}

double sub_24A55C118@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  v3 = 6.28318531 / *(v1 + 128) * (6.28318531 / *(v1 + 128));
  v4 = sqrt(v3);
  v5 = *(v1 + 16) * (v4 + v4);
  *a1 = *v1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v2;
  *(a1 + 48) = *(v1 + 352);
  *(a1 + 64) = vdupq_n_s64(0x4341C37937E08000uLL);
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

BOOL sub_24A55C180()
{
  v1 = v0[30];
  v2 = fabs(v0[1]);
  if (vabdd_f64(*v0, v1) > v0[44] || v2 > v0[45])
  {
    return 0;
  }

  if (vabdd_f64(v1, v0[35]) > v0[36])
  {
    return 0;
  }

  if (fabs(v0[31]) > v0[37])
  {
    return 0;
  }

  if (vabdd_f64(v0[2], v0[7]) > v0[8])
  {
    return 0;
  }

  if (fabs(v0[3]) > v0[9])
  {
    return 0;
  }

  if (vabdd_f64(v0[16], v0[21]) <= v0[22])
  {
    return fabs(v0[17]) <= v0[23];
  }

  return 0;
}

__n128 sub_24A55C248@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = v2[6];
  v59 = v2[5];
  v60 = v5;
  v6 = v2[8];
  v61 = v2[7];
  v7 = v2[2];
  v55 = v2[1];
  v56 = v7;
  v8 = v2[4];
  v57 = v2[3];
  v58 = v8;
  v9 = v2[9];
  v10 = v2[10];
  v48 = v6;
  v49 = v9;
  v11 = v2[14];
  v53 = v2[13];
  v54 = v11;
  v12 = v2[12];
  v51 = v2[11];
  v52 = v12;
  v50 = v10;
  v13 = v2[16];
  v41 = v2[15];
  v42 = v13;
  v14 = v2[17];
  v15 = v2[18];
  v16 = v2[21];
  v46 = v2[20];
  v47 = v16;
  v17 = v2[19];
  v44 = v15;
  v45 = v17;
  v43 = v14;
  v18 = *(v2 + 44);
  v19 = *(v2 + 45);
  sub_24A55BF10(&v55, a2);
  sub_24A55BF10(&v48, a2);
  sub_24A55BF10(&v41, a2);
  v20 = *(v2 + 30);
  v21 = 6.28318531 / *(v2 + 16) * (6.28318531 / *(v2 + 16));
  v22 = sqrt(v21);
  v23 = *(v2 + 2) * (v22 + v22);
  v62 = *v2;
  v63 = 0x3FF0000000000000;
  v64 = v21;
  v65 = v23;
  v66 = v20;
  v67 = v18;
  v68 = v19;
  v69 = vdupq_n_s64(0x4341C37937E08000uLL);
  v70 = 0u;
  v71 = 0u;
  sub_24A55BF10(v72, a2);
  v24 = v72[0];
  v25 = v59;
  v26 = v60;
  v27 = v57;
  *(a1 + 64) = v58;
  *(a1 + 80) = v25;
  v28 = v61;
  *(a1 + 96) = v26;
  *(a1 + 112) = v28;
  v29 = v55;
  v30 = v56;
  *a1 = v24;
  *(a1 + 16) = v29;
  *(a1 + 32) = v30;
  *(a1 + 48) = v27;
  v31 = v49;
  *(a1 + 128) = v48;
  *(a1 + 144) = v31;
  v32 = v50;
  v33 = v51;
  v34 = v53;
  v35 = v54;
  *(a1 + 192) = v52;
  *(a1 + 208) = v34;
  *(a1 + 160) = v32;
  *(a1 + 176) = v33;
  v36 = v41;
  v37 = v43;
  v38 = v44;
  *(a1 + 256) = v42;
  *(a1 + 272) = v37;
  *(a1 + 224) = v35;
  *(a1 + 240) = v36;
  result = v45;
  v40 = v47;
  *(a1 + 320) = v46;
  *(a1 + 336) = v40;
  *(a1 + 288) = v38;
  *(a1 + 304) = result;
  *(a1 + 352) = v18;
  *(a1 + 360) = v19;
  return result;
}

void *sub_24A55C3F8(double a1)
{
  v3 = &v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring_offsetParameters];
  *v3 = xmmword_24A635EB0;
  *(v3 + 1) = xmmword_24A635EC0;
  v4 = &v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters];
  *v4 = xmmword_24A635EB0;
  *(v4 + 1) = xmmword_24A635EC0;
  v5 = &v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0x3FF0000000000000;
  *(v5 + 9) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  v6 = vdupq_n_s64(0x4341C37937E08000uLL);
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 5) = v6;
  *(v5 + 6) = 0u;
  *(v5 + 18) = 0x3FF0000000000000;
  *(v5 + 23) = 0;
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 15) = 0u;
  *(v5 + 12) = v6;
  *(v5 + 13) = 0u;
  *(v5 + 32) = 0x3FF0000000000000;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 37) = 0;
  *(v5 + 21) = 0u;
  *(v5 + 22) = 0u;
  *(v5 + 19) = v6;
  *(v5 + 20) = 0u;
  v7 = &v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0x3FF0000000000000;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 7) = 0;
  *(v7 + 4) = v6;
  *(v7 + 5) = 0u;
  *(v7 + 6) = 0u;
  *&v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring__targetVelocity] = 0;
  *&v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring__previousTarget] = a1;
  *&v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold] = 0x3F50624DD2F1A9FCLL;
  *&v1[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableVelocityThreshold] = 0x3F50624DD2F1A9FCLL;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for FLSpring();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*((*MEMORY[0x277D85000] & *v8) + 0x1B0))(a1);
  return v8;
}

uint64_t sub_24A55C5A0(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v6 = *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 8);
  v7 = *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16);
  v8 = *(v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 24);
  if (v5 != a1 || v6 != a2 || v7 != a3 || v8 != a4)
  {
    v12 = v4 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    swift_beginAccess();
    v13 = 0.0;
    if (v6 == 0.0)
    {
      v14 = 24;
      v15 = 16;
      v16 = v5;
      v17 = 0.0;
    }

    else
    {
      v16 = 6.28318531 / v6 * (6.28318531 / v6);
      v18 = sqrt(v16);
      v17 = v18 + v18;
      v14 = 48;
      v15 = 40;
    }

    *(v12 + v15) = v16;
    *(v12 + v14) = v17;
    *(v12 + 56) = v5;
    if (v8 == 0.0)
    {
      v19 = 136;
      v20 = 128;
      v21 = v7;
    }

    else
    {
      v21 = 6.28318531 / v8 * (6.28318531 / v8);
      v22 = sqrt(v21);
      v13 = v22 + v22;
      v19 = 160;
      v20 = 152;
    }

    *(v12 + v20) = v21;
    *(v12 + v19) = v13;
    *(v12 + 168) = v7;
    return swift_endAccess();
  }

  return result;
}

double sub_24A55C6B4(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16);
  v5 = v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = 0;
  *(v5 + 16) = v3;
  *(v5 + 24) = xmmword_24A635ED0;
  *(v5 + 40) = xmmword_24A635EE0;
  *(v5 + 56) = v3;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  v6 = vdupq_n_s64(0x4341C37937E08000uLL);
  *(v5 + 80) = v6;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = v4;
  *(v5 + 136) = xmmword_24A635ED0;
  *(v5 + 152) = xmmword_24A635EE0;
  *(v5 + 168) = v4;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 192) = v6;
  *(v5 + 240) = a1;
  *(v5 + 248) = xmmword_24A635ED0;
  *(v5 + 264) = 0x4063BD3CC9BE45DELL;
  *(v5 + 272) = 0x403921FB54442D18;
  *(v5 + 280) = a1;
  *(v5 + 288) = 0;
  *(v5 + 296) = 0;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0u;
  *(v5 + 304) = v6;
  *(v5 + 320) = 0u;
  result = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold);
  *(v5 + 352) = result;
  v8 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableVelocityThreshold);
  *(v5 + 360) = v8;
  v9 = 6.28318531 / *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_offsetParameters + 16) * (6.28318531 / *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_offsetParameters + 16));
  v10 = sqrt(v9);
  v11 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_offsetParameters) * (v10 + v10);
  v12 = v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0x3FF0000000000000;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  *(v12 + 64) = v6;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 48) = result;
  *(v12 + 56) = v8;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__previousTarget) = a1;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__targetVelocity) = 0;
  return result;
}

__n128 sub_24A55C858(double a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  v5 = v4[35];
  v6 = v5 - *(v2 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__previousTarget);
  *(v2 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__previousTarget) = v5;
  *(v2 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__targetVelocity) = v6 / a1 * 0.25 + *(v2 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__targetVelocity) * 0.75;
  sub_24A55C248(__src, a1);
  swift_beginAccess();
  memcpy(v4, __src, 0x170uLL);
  v7 = v2 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  sub_24A55BF10(v12, a1);
  v8 = v12[5];
  *(v7 + 64) = v12[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v12[6];
  v9 = v12[1];
  *v7 = v12[0];
  *(v7 + 16) = v9;
  result = v12[3];
  *(v7 + 32) = v12[2];
  *(v7 + 48) = result;
  return result;
}

id sub_24A55C98C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FLSpring();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_24A55C9E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24A55CA08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A55CA28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 112) = v3;
  return result;
}

uint64_t sub_24A55CA88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A55CAA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 368) = v3;
  return result;
}

uint64_t sub_24A55CBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 96);
  v6 = *(a1 + 98);
  v7 = *(a5 + 24);
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  v9 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v9;
  v10 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v10;
  v14 = v6;
  v13 = v5;
  return v7(v12, a2, a3, a4);
}

unint64_t sub_24A55CCA0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A56604C(*a1);
  *a2 = result;
  return result;
}

char *sub_24A55CD7C(void *a1, char *a2, __int16 *a3, void *a4)
{
  v7 = *a2;
  v8 = *a3;
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_hasCalledConfigure] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_error] = 0;
  v9 = &v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_backgroundTaskID];
  *v9 = 0;
  v9[8] = 1;
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_skipWaitingForPrewarm] = 0;
  v10 = &v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_decrementNISessionHandler];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] = 0;
  v12 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession;
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_applicationIsInBackground] = 0;
  sub_24A508AE4(a1, &v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable]);
  v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_connectionContext] = v7;
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType] = v8;
  *&v4[v12] = a4;
  sub_24A508AE4(a1, v56);
  v13 = a4;
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if (swift_dynamicCast())
  {
    sub_24A508CA0(v54, v59);
    LOWORD(v56[0]) = v8;
    v14 = sub_24A565B6C(v56, v59, 2);
    if (v14)
    {
      *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration] = v14;
      v15 = v14;
      v52.receiver = v4;
      v52.super_class = type metadata accessor for FMNearbyInteractionLocalizerContext();
      v16 = v15;
      v17 = objc_msgSendSuper2(&v52, sel_init);
      v18 = *(v17 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession);
      if (v18)
      {
        [v18 setDelegate_];
      }

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v19 = sub_24A62E314();
      sub_24A506EB8(v19, qword_27EF5C118);
      sub_24A508AE4(v59, v56);
      v20 = v17;
      v21 = sub_24A62E2F4();
      v22 = sub_24A62EF64();

      if (os_log_type_enabled(v21, v22))
      {
        v51 = v13;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v54[0] = v24;
        *v23 = 136315394;
        v50 = v16;
        v25 = [v20 description];
        v26 = sub_24A62EC14();
        v28 = v27;

        v29 = sub_24A509BA8(v26, v28, v54);

        *(v23 + 4) = v29;
        *(v23 + 12) = 2080;
        v30 = v57;
        v31 = v58;
        sub_24A50A204(v56, v57);
        v32 = (*(v31 + 16))(v30, v31);
        v33 = [v32 description];
        v34 = sub_24A62EC14();
        v36 = v35;

        sub_24A508C54(v56);
        v37 = sub_24A509BA8(v34, v36, v54);

        *(v23 + 14) = v37;
        _os_log_impl(&dword_24A503000, v21, v22, "🧭 FMR1NIContxt%s: init with discovery token: %s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21BBE0](v24, -1, -1);
        MEMORY[0x24C21BBE0](v23, -1, -1);

        sub_24A508C54(a1);
        sub_24A508C54(v59);
      }

      else
      {

        sub_24A508C54(a1);
        sub_24A508C54(v59);
        sub_24A508C54(v56);
      }

      return v20;
    }

    sub_24A508C54(v59);
  }

  else
  {
    v55 = 0;
    memset(v54, 0, sizeof(v54));
    sub_24A50D6A4(v54, &unk_27EF501C0, &unk_24A636238);
  }

  v38 = objc_allocWithZone(MEMORY[0x277CD8A30]);
  v39 = sub_24A62E114();
  v40 = [v38 initWithBytes_];

  v41 = [objc_allocWithZone(MEMORY[0x277CD8A38]) initWithRole:0 discoveryToken:v40 preferredUpdateRate:2];
  *&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration] = v41;
  v53.receiver = v4;
  v53.super_class = type metadata accessor for FMNearbyInteractionLocalizerContext();
  v42 = v41;
  v43 = objc_msgSendSuper2(&v53, sel_init);
  v44 = qword_27EF4E9A0;
  v20 = v43;
  if (v44 != -1)
  {
    swift_once();
  }

  v45 = sub_24A62E314();
  sub_24A506EB8(v45, qword_27EF5C118);
  v46 = sub_24A62E2F4();
  v47 = sub_24A62EF44();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_24A503000, v46, v47, "🧭 FMR1NIContxt: Error initializing FMNearbyInteractionLocalizerContext. Findable does not conform to FMNIFindable protocol.", v48, 2u);
    MEMORY[0x24C21BBE0](v48, -1, -1);
  }

  else
  {
  }

  sub_24A508C54(a1);

  return v20;
}

uint64_t sub_24A55D3DC()
{
  v1 = v0;
  v2 = sub_24A62F784();
  v4 = v3;
  sub_24A62F384();

  sub_24A516B88(9, v2, v4);
  v6 = v5;
  v8 = v7;

  v24 = 7876668;
  v25 = 0xE300000000000000;
  v21[2] = v6;
  v22 = v8;
  sub_24A55B6E8();
  sub_24A62ECA4();

  v21[0] = 7876668;
  v21[1] = 0xE300000000000000;

  MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

  MEMORY[0x24C21A5D0](7876668, 0xE300000000000000);

  MEMORY[0x24C21A5D0](0x25202C2740252720, 0xEE003E6275732064);
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A633A00;
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v21);
  v10 = v22;
  v11 = v23;
  sub_24A50A204(v21, v22);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_24A508FEC();
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  v15 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16 >> 62)
  {
    v17 = sub_24A62F464();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D83C10];
  *(v9 + 96) = MEMORY[0x277D83B88];
  *(v9 + 104) = v18;
  *(v9 + 72) = v17;
  sub_24A508C54(v21);
  v19 = sub_24A62EC24();

  return v19;
}

uint64_t sub_24A55D754(void *a1, void *a2)
{
  v3 = v2;
  sub_24A508AE4(v2 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v57);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v61 = 0;
    memset(v60, 0, sizeof(v60));
  }

  v6 = [a2 discoveryToken];
  sub_24A569614(v60, v57);
  v7 = v58;
  if (!v58)
  {
    sub_24A50D6A4(v57, &unk_27EF501C0, &unk_24A636238);
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_15:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v18 = sub_24A62E314();
    sub_24A506EB8(v18, qword_27EF5C118);
    v19 = v3;
    v20 = a1;
    v21 = sub_24A62E2F4();
    v22 = sub_24A62EF64();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412546;
      *(v23 + 4) = v19;
      *v24 = v19;
      *(v23 + 12) = 2112;
      v25 = v19;
      v26 = [v20 configuration];
      *(v23 + 14) = v26;
      v24[1] = v26;
      _os_log_impl(&dword_24A503000, v21, v22, "🧭 FMR1NIContxt%@: nearby object discover token matches!! setting ready. Config: %@", v23, 0x16u);
      sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v24, -1, -1);
      MEMORY[0x24C21BBE0](v23, -1, -1);
    }

    v52 = v19[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState];
    v19[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState] = 2;
    v19[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState] = 1;
    v27 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v56 = v19;
    v28 = *&v19[v27];
    if (v28 >> 62)
    {
      v3 = sub_24A62F464();
    }

    else
    {
      v3 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v3)
    {
LABEL_34:

      if (!v52)
      {
        v45 = v56;
        v46 = sub_24A62E2F4();
        v47 = sub_24A62EF64();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          *(v48 + 4) = v45;
          *v49 = v45;
          v50 = v45;
          _os_log_impl(&dword_24A503000, v46, v47, "🧭 FMR1NIContxt%@: extra updateRangingOrLocalizerRunningState.", v48, 0xCu);
          sub_24A50D6A4(v49, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v49, -1, -1);
          MEMORY[0x24C21BBE0](v48, -1, -1);
        }

        sub_24A560664();
      }

      return sub_24A50D6A4(v60, &unk_27EF501C0, &unk_24A636238);
    }

    v29 = 0;
    v53 = v28 & 0xFFFFFFFFFFFFFF8;
    v54 = v28 & 0xC000000000000001;
    while (1)
    {
      if (v54)
      {
        v30 = MEMORY[0x24C21ACB0](v29, v28);
      }

      else
      {
        if (v29 >= *(v53 + 16))
        {
          goto LABEL_40;
        }

        v30 = *(v28 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = &v30[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v33 + 1);
        v55 = v31;
        v35 = v3;
        v36 = v28;
        ObjectType = swift_getObjectType();
        v58 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v59 = &off_285DA58A0;
        v57[0] = v56;
        v38 = *(v34 + 32);
        v39 = v56;
        v40 = ObjectType;
        v28 = v36;
        v3 = v35;
        v31 = v55;
        v38(2, v57, v40, v34);
        swift_unknownObjectRelease();
        sub_24A508C54(v57);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = *(v33 + 1);
        v42 = swift_getObjectType();
        v58 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v59 = &off_285DA58A0;
        v57[0] = v56;
        v43 = *(v41 + 48);
        v44 = v56;
        v43(1, v57, v42, v41);
        swift_unknownObjectRelease();

        sub_24A508C54(v57);
      }

      else
      {
      }

      ++v29;
      if (v32 == v3)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v8 = v59;
  sub_24A50A204(v57, v58);
  v9 = (v8[2])(v7, v8);
  sub_24A508C54(v57);
  if (!v6)
  {
    v6 = v9;
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (!v9)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_24A50D7EC(0, &qword_27EF501E8, 0x277CD8A30);
  v10 = sub_24A62F164();

  if (v10)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (qword_27EF4E9A0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v11 = sub_24A62E314();
  sub_24A506EB8(v11, qword_27EF5C118);
  v12 = v3;
  v13 = sub_24A62E2F4();
  v14 = sub_24A62EF64();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1NIContxt%@: nearby object discover token doesn't match", v15, 0xCu);
    sub_24A50D6A4(v16, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v16, -1, -1);
    MEMORY[0x24C21BBE0](v15, -1, -1);
  }

  return sub_24A50D6A4(v60, &unk_27EF501C0, &unk_24A636238);
}

uint64_t sub_24A55DFE8(id *a1, uint64_t a2)
{
  v3 = [*a1 discoveryToken];
  sub_24A569614(a2, v9);
  v4 = v10;
  if (!v10)
  {
    sub_24A50D6A4(v9, &unk_27EF501C0, &unk_24A636238);
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_10:
    v7 = 1;
    return v7 & 1;
  }

  v5 = v11;
  sub_24A50A204(v9, v10);
  v6 = (*(v5 + 16))(v4, v5);
  sub_24A508C54(v9);
  if (!v3)
  {
    if (v6)
    {
      v7 = 0;
      v3 = v6;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_9;
  }

  sub_24A50D7EC(0, &qword_27EF501E8, 0x277CD8A30);
  v7 = sub_24A62F164();

LABEL_9:
  return v7 & 1;
}

void sub_24A55E390()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
  if (v3)
  {
    v4 = v3;
    [v4 setDelegate_];
    v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession];
    if (v5)
    {
      [v5 setDelegate_];
    }

    v6 = sub_24A62F784();
    v8 = v7;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v9 = sub_24A62E314();
    sub_24A506EB8(v9, qword_27EF5C118);
    v10 = v0;
    v11 = sub_24A62E2F4();
    v12 = sub_24A62EF64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v13 = 138412546;
      *(v13 + 4) = v10;
      *v28 = v10;
      *(v13 + 12) = 2080;
      v14 = v10;
      sub_24A516B88(9, v6, v8);
      v30 = v4;

      sub_24A55B6E8();
      sub_24A62ECA4();

      MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

      v15 = sub_24A509BA8(7876668, 0xE300000000000000, &v31);

      *(v13 + 14) = v15;
      v4 = v30;
      _os_log_impl(&dword_24A503000, v11, v12, "🧭 FMR1NIContxt%@: released NI session <%s> and reset state to unknown", v13, 0x16u);
      sub_24A50D6A4(v28, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v28, -1, -1);
      sub_24A508C54(v29);
      MEMORY[0x24C21BBE0](v29, -1, -1);
      MEMORY[0x24C21BBE0](v13, -1, -1);
    }

    else
    {
    }

    [*&v1[v2] invalidate];
    v23 = *&v1[v2];
    *&v1[v2] = 0;

    v24 = &v10[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_decrementNISessionHandler];
    v25 = *&v10[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_decrementNISessionHandler];
    if (v25)
    {
      v26 = *(v24 + 1);

      v25(v27);

      sub_24A50D844(v25, v26);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v16 = sub_24A62E314();
    sub_24A506EB8(v16, qword_27EF5C118);
    v17 = v0;
    v18 = sub_24A62E2F4();
    v19 = sub_24A62EF64();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_24A503000, v18, v19, "🧭 FMR1NIContxt%@: reset item localizer state to unknown", v20, 0xCu);
      sub_24A50D6A4(v21, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v21, -1, -1);
      MEMORY[0x24C21BBE0](v20, -1, -1);
    }
  }

  v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_hasCalledConfigure] = 0;
}

void sub_24A55E7F4()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_applicationIsInBackground] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
    v3 = (v2 >> 13) & 3;
    v4 = BYTE1(v2);
    v5 = (v2 >> 8) & 0x9F;
    if ((v2 & 0x80000000) != 0)
    {
      v6 = (v2 >> 8) & 0x1F;
    }

    else
    {
      v6 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
    }

    if (v3 == 1)
    {
      v6 = v5;
    }

    if (!v3)
    {
      v6 = v4;
    }

    if (v6 == 2)
    {

      sub_24A5604F0();
    }

    else
    {
      sub_24A560248();
    }
  }

  else
  {
    v7 = &v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_backgroundTaskID];
    v8 = *MEMORY[0x277D767B0];
    if ((v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_backgroundTaskID + 8] & 1) == 0)
    {
      v9 = *v7;
      if (*v7 != v8)
      {
        v10 = [objc_opt_self() sharedApplication];
        [v10 endBackgroundTask_];
      }
    }

    *v7 = v8;
    v7[8] = 0;
    v11 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession;
    if (*&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession])
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v12 = sub_24A62E314();
      sub_24A506EB8(v12, qword_27EF5C118);
      v13 = v1;
      v14 = sub_24A62E2F4();
      v15 = sub_24A62EF64();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&dword_24A503000, v14, v15, "🧭 FMR1NIContxt%@: entering foreground", v16, 0xCu);
        sub_24A50D6A4(v17, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v17, -1, -1);
        MEMORY[0x24C21BBE0](v16, -1, -1);
      }
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x277CD8A68]) init];
      v20 = *&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession];
      if (v20)
      {
        v21 = v20;
        [v19 setARSession_];
        [v21 setDelegate_];
      }

      [v19 setDelegate_];
      v22 = sub_24A62F784();
      v24 = v23;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v25 = sub_24A62E314();
      sub_24A506EB8(v25, qword_27EF5C118);
      v26 = v1;
      v27 = sub_24A62E2F4();
      v28 = sub_24A62EF64();

      if (os_log_type_enabled(v27, v28))
      {
        v44 = v19;
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v45 = v43;
        *v29 = 138412546;
        *(v29 + 4) = v26;
        *v42 = v1;
        *(v29 + 12) = 2080;
        v30 = v26;
        sub_24A516B88(9, v22, v24);

        sub_24A55B6E8();
        sub_24A62ECA4();

        MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

        v31 = sub_24A509BA8(7876668, 0xE300000000000000, &v45);

        *(v29 + 14) = v31;
        _os_log_impl(&dword_24A503000, v27, v28, "🧭 FMR1NIContxt%@: entering foreground, created item localizer <%s> and will reconfigure", v29, 0x16u);
        sub_24A50D6A4(v42, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v42, -1, -1);
        sub_24A508C54(v43);
        MEMORY[0x24C21BBE0](v43, -1, -1);
        v32 = v29;
        v19 = v44;
        MEMORY[0x24C21BBE0](v32, -1, -1);
      }

      else
      {
      }

      v33 = &v26[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler];
      v34 = *&v26[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler];
      if (v34)
      {
        v35 = *(v33 + 1);

        v34(v36);
        sub_24A50D844(v34, v35);
      }

      v37 = *&v1[v11];
      *&v1[v11] = v19;
    }

    v38 = *&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration];
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v40 = v39;
      v41 = v38;
      if ([v40 preferredUpdateRate] == 3)
      {
        sub_24A55FD50();

        return;
      }
    }

    sub_24A55F608();
  }
}

uint64_t sub_24A55EDF0(void *a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C118);
  v4 = a1;
  v5 = v1;
  v6 = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  v8 = &unk_27EF5C000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v9 = 138412802;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v4;
    *v10 = v5;
    v10[1] = v4;
    *(v9 + 22) = 2080;
    v11 = &v4[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v45 = v7;
      v12 = *(v11 + 1);
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);
      v15 = v4;
      v16 = v5;
      v17 = v12;
      v7 = v45;
      v18 = v14(ObjectType, v17);
      v8 = &unk_27EF5C000;
      v19 = v18;
      v21 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = v4;
      v23 = v5;
      v21 = 0xE100000000000000;
      v19 = 63;
    }

    v24 = sub_24A509BA8(v19, v21, v47);

    *(v9 + 24) = v24;
    _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1NIContxt%@: subscribing %@ for %s", v9, 0x20u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v10, -1, -1);
    sub_24A508C54(v46);
    MEMORY[0x24C21BBE0](v46, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  v25 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v26 = v4;
  MEMORY[0x24C21A660]();
  if (*((*(v5 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v25) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A62ED84();
  }

  sub_24A62EDA4();
  swift_endAccess();
  v27 = &v26[v8[25]];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 1);
    v29 = swift_getObjectType();
    v30 = *(v5 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState);
    v48 = type metadata accessor for FMNearbyInteractionLocalizerContext();
    v49 = &off_285DA58A0;
    v47[0] = v5;
    v31 = *(v28 + 32);
    v32 = v5;
    v31(v30, v47, v29, v28);
    swift_unknownObjectRelease();
    sub_24A508C54(v47);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(v27 + 1);
    v35 = swift_getObjectType();
    v36 = *(v5 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState);
    v48 = type metadata accessor for FMNearbyInteractionLocalizerContext();
    v49 = &off_285DA58A0;
    v47[0] = v5;
    v37 = *(v34 + 48);
    v38 = v5;
    v37(v36, v47, v35, v34);
    swift_unknownObjectRelease();
    result = sub_24A508C54(v47);
  }

  v39 = *(v5 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_error);
  if (v39)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v40 = *(v27 + 1);
      v41 = swift_getObjectType();
      v48 = type metadata accessor for FMNearbyInteractionLocalizerContext();
      v49 = &off_285DA58A0;
      v47[0] = v5;
      v42 = *(v40 + 40);
      v43 = v5;
      v44 = v39;
      v42(v39, v47, v41, v40);
      swift_unknownObjectRelease();

      return sub_24A508C54(v47);
    }
  }

  return result;
}

void sub_24A55F21C(void *a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C118);
  v4 = v1;
  v5 = a1;
  v6 = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v4;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v4;
    v9[1] = v5;
    v10 = v4;
    v11 = v5;
    _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1NIContxt%@: unsubscribing %@", v8, 0x16u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  v12 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v13 = v5;
  v14 = sub_24A569868(&v4[v12], v13);

  v15 = *&v4[v12];
  if (v15 >> 62)
  {
    v16 = sub_24A62F464();
    if (v16 >= v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 >= v14)
    {
LABEL_7:
      sub_24A575AC4(v14, v16);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

BOOL sub_24A55F418(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v12 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_24A62E214();
      sub_24A569AD8(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      if (sub_24A62EBD4())
      {
      }

      else
      {
        sub_24A62F3E4();
        sub_24A62F414();
        sub_24A62F424();
        sub_24A62F3F4();
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v10 = sub_24A62F464();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  return v10 != 0;
}

uint64_t sub_24A55F608()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity;
  if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] == 1)
  {
    if (qword_27EF4E9A0 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_3;
  }

  sub_24A508AE4(&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable], v67);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    sub_24A50D6A4(v65, &unk_27EF501C0, &unk_24A636238);
LABEL_32:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v49 = sub_24A62E314();
    sub_24A506EB8(v49, qword_27EF5C118);
    v50 = v1;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF44();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v50;
      *v8 = v50;
      v51 = v50;
      v10 = "🧭 FMR1NIContxt%@: Findable does not conform to FMNIFindable protocol.";
LABEL_36:
      _os_log_impl(&dword_24A503000, v5, v6, v10, v7, 0xCu);
      sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

LABEL_37:

    return 0;
  }

  sub_24A508CA0(v65, v70);
  LOWORD(v67[0]) = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
  v11 = sub_24A565B6C(v67, v70, 2);
  if (!v11)
  {
    sub_24A508C54(v70);
    goto LABEL_32;
  }

  v12 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration;
  v13 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration];
  *&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration] = v11;
  v53 = v11;

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24A62E314();
  sub_24A506EB8(v14, qword_27EF5C118);
  v15 = v1;
  v16 = sub_24A62E2F4();
  v17 = sub_24A62EF64();

  v54 = v2;
  v55 = v1;
  v62 = v15;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v67[0] = v63;
    *v18 = 138412802;
    *(v18 + 4) = v15;
    *v19 = v15;
    *(v18 + 12) = 2080;
    *&v65[0] = *&v15[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
    v20 = *&v65[0];
    v21 = v15;
    sub_24A508FA4(&qword_27EF501D8, &qword_24A636248);
    v22 = sub_24A62EC44();
    v24 = sub_24A509BA8(v22, v23, v67);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = *&v1[v12];
    v26 = [v25 description];
    v27 = sub_24A62EC14();
    v29 = v28;

    v30 = sub_24A509BA8(v27, v29, v67);
    v15 = v62;

    *(v18 + 24) = v30;
    _os_log_impl(&dword_24A503000, v16, v17, "🧭 FMR1NIContxt%@: starting niSession %s with configuration: %s", v18, 0x20u);
    sub_24A50D6A4(v19, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v63, -1, -1);
    MEMORY[0x24C21BBE0](v18, -1, -1);
  }

  v31 = *&v15[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
  if (v31)
  {
    [v31 runWithConfiguration_];
  }

  v32 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v33 = *&v15[v32];
  if (v33 >> 62)
  {
    v34 = sub_24A62F464();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState;
  v58 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState;

  if (v34)
  {
    v35 = 0;
    v60 = v33 & 0xFFFFFFFFFFFFFF8;
    v61 = v33 & 0xC000000000000001;
    v56 = v33;
    v59 = v34;
    do
    {
      if (v61)
      {
        v36 = MEMORY[0x24C21ACB0](v35, v33);
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
        if (v35 >= *(v60 + 16))
        {
          __break(1u);
LABEL_40:
          swift_once();
LABEL_3:
          v3 = sub_24A62E314();
          sub_24A506EB8(v3, qword_27EF5C118);
          v4 = v1;
          v5 = sub_24A62E2F4();
          v6 = sub_24A62EF64();

          if (os_log_type_enabled(v5, v6))
          {
            v7 = swift_slowAlloc();
            v8 = swift_slowAlloc();
            *v7 = 138412290;
            *(v7 + 4) = v4;
            *v8 = v4;
            v9 = v4;
            v10 = "🧭 FMR1NIContxt%@: not starting niSession: already started)";
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        v36 = *(v33 + 8 * v35 + 32);
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_28;
        }
      }

      v64 = v36;
      v38 = &v36[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = *(v38 + 1);
        ObjectType = swift_getObjectType();
        v41 = v62[v58];
        v68 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v69 = &off_285DA58A0;
        v67[0] = v62;
        v1 = *(v39 + 32);
        v42 = v62;
        v43 = ObjectType;
        v33 = v56;
        (v1)(v41, v67, v43, v39);
        swift_unknownObjectRelease();
        sub_24A508C54(v67);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v44 = *(v38 + 1);
        v45 = swift_getObjectType();
        v46 = v62[v57];
        v68 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v69 = &off_285DA58A0;
        v67[0] = v62;
        v1 = (v44 + 48);
        v47 = *(v44 + 48);
        v48 = v62;
        v47(v46, v67, v45, v44);
        swift_unknownObjectRelease();

        sub_24A508C54(v67);
      }

      else
      {
      }

      ++v35;
    }

    while (v37 != v59);
  }

  sub_24A508C54(v70);
  v55[v54] = 1;
  return 0;
}

uint64_t sub_24A55FD50()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity;
  if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] == 5)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v2 = sub_24A62E314();
    sub_24A506EB8(v2, qword_27EF5C118);
    v3 = v0;
    v4 = sub_24A62E2F4();
    v5 = sub_24A62EF64();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    v9 = "🧭 FMR1NIContxt%@: not starting niSession with low preferred update rate: already started)";
LABEL_19:
    _os_log_impl(&dword_24A503000, v4, v5, v9, v6, 0xCu);
    sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
LABEL_20:

    return 0;
  }

  sub_24A508AE4(&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable], v35);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_24A50D6A4(v33, &unk_27EF501C0, &unk_24A636238);
LABEL_15:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v26 = sub_24A62E314();
    sub_24A506EB8(v26, qword_27EF5C118);
    v27 = v0;
    v4 = sub_24A62E2F4();
    v5 = sub_24A62EF44();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v27;
    *v7 = v27;
    v28 = v27;
    v9 = "🧭 FMR1NIContxt%@: Findable does not conform to FMNIFindable protocol.";
    goto LABEL_19;
  }

  sub_24A508CA0(v33, v36);
  LOWORD(v35[0]) = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
  v10 = sub_24A565B6C(v35, v36, 3);
  if (!v10)
  {
    sub_24A508C54(v36);
    goto LABEL_15;
  }

  v11 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration];
  *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration] = v10;
  v12 = v10;

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v13 = sub_24A62E314();
  sub_24A506EB8(v13, qword_27EF5C118);
  v14 = v12;
  v32 = v0;
  v15 = v0;
  v16 = sub_24A62E2F4();
  v17 = sub_24A62EF64();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v18 = 138412546;
    *(v18 + 4) = v15;
    *v30 = v15;
    *(v18 + 12) = 2080;
    v19 = v14;
    v20 = v15;
    v21 = [v19 description];
    v22 = sub_24A62EC14();
    v24 = v23;

    v25 = sub_24A509BA8(v22, v24, v35);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_24A503000, v16, v17, "🧭 FMR1NIContxt%@: starting niSession (low update rate) with configuration: %s", v18, 0x16u);
    sub_24A50D6A4(v30, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v30, -1, -1);
    sub_24A508C54(v31);
    MEMORY[0x24C21BBE0](v31, -1, -1);
    MEMORY[0x24C21BBE0](v18, -1, -1);
  }

  [*&v15[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] runWithConfiguration_];
  sub_24A508C54(v36);
  v32[v1] = 5;
  return 0;
}

uint64_t sub_24A560248()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity;
  if ((v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] | 4) == 5)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v0;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMR1NIContxt%@: stopping niSession", v7, 0xCu);
      sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

    v10 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession;
    [*&v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] invalidate];
    v11 = *&v4[v10];
    *&v4[v10] = 0;

    v4[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState] = 0;
    v1[v2] = 2;
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v12 = sub_24A62E314();
    sub_24A506EB8(v12, qword_27EF5C118);
    v13 = v0;
    v14 = sub_24A62E2F4();
    v15 = sub_24A62EF64();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_24A503000, v14, v15, "🧭 FMR1NIContxt%@: not stopping niSession: not running", v16, 0xCu);
      sub_24A50D6A4(v17, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v17, -1, -1);
      MEMORY[0x24C21BBE0](v16, -1, -1);
    }
  }

  return 0;
}

id sub_24A5604F0()
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C118);
  v2 = v0;
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMR1NIContxt%@: pausing NISession", v5, 0xCu);
    sub_24A50D6A4(v6, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  result = [*&v2[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] pause];
  v2[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState] = 1;
  v2[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] = 2;
  return result;
}

void sub_24A560664()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    v3 = sub_24A62F464();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      goto LABEL_15;
    }

    if ((v2 & 0xC000000000000001) == 0)
    {
      if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v2 + 8 * v4 + 32);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_86;
    }

    v6 = MEMORY[0x24C21ACB0](v4, v2);
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

LABEL_8:
    v8 = v6[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_wantsSession];

    ++v4;
    if (v8 == 1)
    {
      v4 = v7;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        goto LABEL_97;
      }
    }
  }

  __break(1u);
LABEL_15:

  v10 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState;
  if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState] != 2 && (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_skipWaitingForPrewarm] & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v36 = sub_24A62E314();
    sub_24A506EB8(v36, qword_27EF5C118);
    v37 = v0;
    v38 = v0;
    v39 = sub_24A62E2F4();
    v40 = sub_24A62EF64();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v93[0] = v43;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v42 = v38;
      *(v41 + 12) = 2080;
      LOBYTE(v92[0]) = v37[v10];
      v44 = v38;
      v45 = sub_24A62EC44();
      v47 = sub_24A509BA8(v45, v46, v93);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_24A503000, v39, v40, "🧭 FMR1NIContxt%@: waiting to be ready: itemLocalizerState: %s", v41, 0x16u);
      sub_24A50D6A4(v42, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v42, -1, -1);
      sub_24A508C54(v43);
      MEMORY[0x24C21BBE0](v43, -1, -1);
      MEMORY[0x24C21BBE0](v41, -1, -1);
    }

    if (v5 || v38[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] != 1)
    {
      return;
    }

    v48 = v38;
    v49 = sub_24A62E2F4();
    v50 = sub_24A62EF64();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&dword_24A503000, v49, v50, "🧭 FMR1NIContxt%@: asked to stop everything now", v51, 0xCu);
      sub_24A50D6A4(v52, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v52, -1, -1);
      MEMORY[0x24C21BBE0](v51, -1, -1);
    }

    goto LABEL_62;
  }

  v11 = v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState];
  v12 = v11 > 4;
  v13 = (1 << v11) & 0x13;
  v14 = v12 || v13 == 0;
  if (!v14 || (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_skipWaitingForPrewarm] & 1) != 0)
  {
    if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_applicationIsInBackground] == 1)
    {
      if (qword_27EF4E9A0 != -1)
      {
LABEL_97:
        swift_once();
      }

      v15 = sub_24A62E314();
      sub_24A506EB8(v15, qword_27EF5C118);
      v16 = v0;
      v17 = sub_24A62E2F4();
      v18 = sub_24A62EF64();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMR1NIContxt%@: application is in background", v19, 0xCu);
        sub_24A50D6A4(v20, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v20, -1, -1);
        MEMORY[0x24C21BBE0](v19, -1, -1);
      }

      v22 = *&v16[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
      v23 = (v22 >> 13) & 3;
      v24 = BYTE1(v22);
      v25 = (v22 >> 8) & 0x9F;
      if ((v22 & 0x80000000) != 0)
      {
        v26 = (v22 >> 8) & 0x1F;
      }

      else
      {
        v26 = *&v16[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
      }

      if (v23 == 1)
      {
        v26 = v25;
      }

      if (!v23)
      {
        v26 = v24;
      }

      if (v26 == 2)
      {
        sub_24A5604F0();
      }

      return;
    }

    v27 = v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity];
    if (v5 >= 1)
    {
      if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity] > 1u)
      {
        if (v27 != 5 && v27 != 2)
        {
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v84 = sub_24A62E314();
          sub_24A506EB8(v84, qword_27EF5C118);
          v85 = v0;
          v30 = sub_24A62E2F4();
          v31 = sub_24A62EF64();

          if (!os_log_type_enabled(v30, v31))
          {
            goto LABEL_92;
          }

          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          *(v32 + 4) = v85;
          *v33 = v85;
          v86 = v85;
          v35 = "🧭 FMR1NIContxt%@: asked to start localizer (but waiting to be stopped first)";
LABEL_91:
          _os_log_impl(&dword_24A503000, v30, v31, v35, v32, 0xCu);
          sub_24A50D6A4(v33, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v33, -1, -1);
          MEMORY[0x24C21BBE0](v32, -1, -1);
          goto LABEL_92;
        }
      }

      else if (v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity])
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v28 = sub_24A62E314();
        sub_24A506EB8(v28, qword_27EF5C118);
        v29 = v0;
        v30 = sub_24A62E2F4();
        v31 = sub_24A62EF64();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          *(v32 + 4) = v29;
          *v33 = v29;
          v34 = v29;
          v35 = "🧭 FMR1NIContxt%@: asked to start localizer (but already is)";
          goto LABEL_91;
        }

        goto LABEL_92;
      }

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v66 = sub_24A62E314();
      sub_24A506EB8(v66, qword_27EF5C118);
      v67 = v0;
      v68 = sub_24A62E2F4();
      v69 = sub_24A62EF64();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138412290;
        *(v70 + 4) = v67;
        *v71 = v67;
        v72 = v67;
        _os_log_impl(&dword_24A503000, v68, v69, "🧭 FMR1NIContxt%@: asked to start localizer now", v70, 0xCu);
        sub_24A50D6A4(v71, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v71, -1, -1);
        MEMORY[0x24C21BBE0](v70, -1, -1);
      }

      sub_24A55F608();
LABEL_73:

      return;
    }

    if (v27 != 1)
    {
      return;
    }

    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v58 = sub_24A62E314();
    sub_24A506EB8(v58, qword_27EF5C118);
    v59 = v0;
    v60 = sub_24A62E2F4();
    v61 = sub_24A62EF64();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      *(v62 + 4) = v59;
      *v63 = v59;
      v64 = v59;
      _os_log_impl(&dword_24A503000, v60, v61, "🧭 FMR1NIContxt%@: asked to stop everything now", v62, 0xCu);
      sub_24A50D6A4(v63, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v63, -1, -1);
      MEMORY[0x24C21BBE0](v62, -1, -1);
    }

LABEL_62:
    sub_24A560248();
    goto LABEL_73;
  }

  v54 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_hasCalledConfigure;
  if ((v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_hasCalledConfigure] & 1) == 0)
  {
    sub_24A508AE4(&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable], v92);
    sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
    sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v91 = 0;
      memset(v90, 0, sizeof(v90));
      sub_24A50D6A4(v90, &unk_27EF501C0, &unk_24A636238);
LABEL_87:
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v87 = sub_24A62E314();
      sub_24A506EB8(v87, qword_27EF5C118);
      v88 = v0;
      v30 = sub_24A62E2F4();
      v31 = sub_24A62EF44();

      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_92;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v88;
      *v33 = v88;
      v89 = v88;
      v35 = "🧭 FMR1NIContxt%@: Findable does not conform to FMNIFindable protocol.";
      goto LABEL_91;
    }

    sub_24A508CA0(v90, v93);
    v92[0] = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];
    v73 = sub_24A565B6C(v92, v93, 2);
    if (v73)
    {
      v74 = *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration];
      *&v0[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration] = v73;
      v75 = v73;

      v0[v54] = 1;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v76 = sub_24A62E314();
      sub_24A506EB8(v76, qword_27EF5C118);
      v77 = v0;
      v78 = sub_24A62E2F4();
      v79 = sub_24A62EF64();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v80 = 138412290;
        *(v80 + 4) = v77;
        *v81 = v77;
        v82 = v77;
        _os_log_impl(&dword_24A503000, v78, v79, "🧭 FMR1NIContxt%@: completed configuring", v80, 0xCu);
        sub_24A50D6A4(v81, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v81, -1, -1);
        MEMORY[0x24C21BBE0](v80, -1, -1);
        v83 = v75;
      }

      else
      {
        v83 = v78;
        v78 = v75;
      }

      sub_24A508C54(v93);
      return;
    }

LABEL_86:
    sub_24A508C54(v93);
    goto LABEL_87;
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v55 = sub_24A62E314();
  sub_24A506EB8(v55, qword_27EF5C118);
  v56 = v0;
  v30 = sub_24A62E2F4();
  v31 = sub_24A62EF64();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v56;
    *v33 = v56;
    v57 = v56;
    v35 = "🧭 FMR1NIContxt%@: waiting to be findable";
    goto LABEL_91;
  }

LABEL_92:
}

void sub_24A5613AC(void *a1)
{
  v3 = sub_24A62E1A4();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v6 = sub_24A62E314();
  sub_24A506EB8(v6, qword_27EF5C118);
  v7 = v1;
  v8 = a1;
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *v12 = v7;
    *(v11 + 12) = 2112;
    v13 = v7;
    v14 = [v8 timestamp];
    sub_24A62E174();

    [v8 trueHeading];
    v16 = v15;
    [v8 magneticHeading];
    v18 = v17;
    [v8 0x1FB55B688];
    v20 = v19;
    v21 = objc_allocWithZone(MEMORY[0x277CD8A40]);
    v22 = sub_24A62E154();
    v23 = [v21 initWithTimestamp:v22 trueHeading:v16 magneticHeading:v18 headingAccuracy:v20];

    v24 = v37;
    (*(v37 + 8))(v5, v38);
    *(v11 + 14) = v23;
    v12[1] = v23;
    _os_log_impl(&dword_24A503000, v9, v10, "🧭 FMR1NIContxt%@: Updating local device heading: %@", v11, 0x16u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  else
  {

    v24 = v37;
  }

  v25 = *&v7[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
  if (v25)
  {
    v26 = [v25 findingNotifier];
    v27 = [v8 timestamp];
    sub_24A62E174();

    [v8 trueHeading];
    v29 = v28;
    [v8 magneticHeading];
    v31 = v30;
    [v8 headingAccuracy];
    v33 = v32;
    v34 = objc_allocWithZone(MEMORY[0x277CD8A40]);
    v35 = sub_24A62E154();
    v36 = [v34 initWithTimestamp:v35 trueHeading:v29 magneticHeading:v31 headingAccuracy:v33];

    (*(v24 + 8))(v5, v38);
    [v26 notifyUpdatedHeadingForLocalDevice_];
  }
}

uint64_t sub_24A561788(uint64_t a1, void *a2)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C118);
  sub_24A508AE4(a1, v35);
  v6 = v2;
  v7 = a2;
  v8 = sub_24A62E2F4();
  v9 = sub_24A62EF34();

  if (os_log_type_enabled(v8, v9))
  {
    v31 = a1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34[0] = v30;
    *v10 = 138412802;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2080;
    v13 = v36;
    v12 = v37;
    sub_24A50A204(v35, v36);
    log = v8;
    v14 = *(v12 + 8);
    v15 = v6;
    v16 = v14(v13, v12);
    v18 = v17;
    sub_24A508C54(v35);
    v19 = sub_24A509BA8(v16, v18, v34);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2112;
    v20 = sub_24A608A14();
    *(v10 + 24) = v20;
    v11[1] = v20;
    _os_log_impl(&dword_24A503000, log, v9, "🧭 FMR1NIContxt%@: Updating findable location findable: %s, location: %@", v10, 0x20u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v11, -1, -1);
    sub_24A508C54(v30);
    MEMORY[0x24C21BBE0](v30, -1, -1);
    v21 = v10;
    a1 = v31;
    MEMORY[0x24C21BBE0](v21, -1, -1);
  }

  else
  {

    sub_24A508C54(v35);
  }

  sub_24A508AE4(a1, v34);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if (swift_dynamicCast())
  {
    sub_24A508CA0(v32, v35);
    v22 = *&v6[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
    if (v22)
    {
      v23 = [v22 findingNotifier];
      v24 = sub_24A608A14();
      v25 = v36;
      v26 = v37;
      sub_24A50A204(v35, v36);
      v27 = (*(v26 + 16))(v25, v26);
      [v23 notifyUpdatedLocation:v24 forNearbyObjectWithToken:v27];
    }

    return sub_24A508C54(v35);
  }

  else
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    return sub_24A50D6A4(v32, &unk_27EF501C0, &unk_24A636238);
  }
}

uint64_t sub_24A561B7C(uint64_t a1, uint64_t a2)
{
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v2;
    v2 = sub_24A62E2F4();
    v5 = sub_24A62EF34();

    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v4;
      *v7 = v4;
      v8 = v4;
      _os_log_impl(&dword_24A503000, v2, v5, "🧭 FMR1NIContxt%@: didUpdate ARFrame", v6, 0xCu);
      sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    v9 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v10 = *(&v4->isa + v9);
    v11 = v10 >> 62 ? sub_24A62F464() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v11)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C21ACB0](i, v10);
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v16 = &v13[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v18 = *(v16 + 1);
        ObjectType = swift_getObjectType();
        (*(v18 + 72))(a1, a2, ObjectType, v18);
        swift_unknownObjectRelease();
      }

      if (v15 == v11)
      {
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }
}

id sub_24A561E64(void *a1)
{
  v1 = a1;
  sub_24A54C688();

  v2 = sub_24A62EBE4();

  return v2;
}

id sub_24A561EF0(const char *a1, uint64_t a2, uint64_t (*a3)(void), ...)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A62E314();
  sub_24A506EB8(v7, qword_27EF5C118);
  v8 = v3;
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v13 = [v8 description];
    v14 = sub_24A62EC14();
    v23 = a2;
    v15 = a3;
    v16 = a1;
    v18 = v17;

    v19 = sub_24A509BA8(v14, v18, &v24);

    *(v11 + 4) = v19;
    v20 = v16;
    a3 = v15;
    a2 = v23;
    _os_log_impl(&dword_24A503000, v9, v10, v20, v11, 0xCu);
    sub_24A508C54(v12);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  v21 = a3(a2);
  v25.receiver = v8;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, sel_dealloc);
}

uint64_t type metadata accessor for FMNearbyInteractionManagerSubscription(uint64_t a1)
{
  result = qword_27EF50158;
  if (!qword_27EF50158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A5621CC(char a1, uint64_t a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        *(v7 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState) = 2;
        *(v7 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState) = 1;
        v9 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
        swift_beginAccess();
        v10 = *&v8[v9];
        v60 = v6;
        v62 = v3;
        if (v10 >> 62)
        {
          v11 = sub_24A62F464();
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v11)
        {
          v6 = 0;
          do
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x24C21ACB0](v6, v10);
              v3 = (v6 + 1);
              if (__OFADD__(v6, 1))
              {
LABEL_19:
                __break(1u);
                goto LABEL_20;
              }
            }

            else
            {
              if (v6 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_44:
                swift_once();
LABEL_30:
                v28 = sub_24A62E314();
                sub_24A506EB8(v28, qword_27EF5C118);
                v29 = v3;
                v30 = sub_24A62E2F4();
                v31 = sub_24A62EF64();

                if (os_log_type_enabled(v30, v31))
                {
                  v32 = swift_slowAlloc();
                  v33 = swift_slowAlloc();
                  *v32 = 138412290;
                  *(v32 + 4) = v29;
                  *v33 = v29;
                  v34 = v29;
                  _os_log_impl(&dword_24A503000, v30, v31, "🧭 FMR1NISubscr%@: asking to start localizer", v32, 0xCu);
                  sub_24A50D6A4(v33, &qword_27EF4FED0, &unk_24A635E00);
                  MEMORY[0x24C21BBE0](v33, -1, -1);
                  MEMORY[0x24C21BBE0](v32, -1, -1);
                }

                goto LABEL_42;
              }

              v12 = *(v10 + 8 * v6 + 32);
              v3 = (v6 + 1);
              if (__OFADD__(v6, 1))
              {
                goto LABEL_19;
              }
            }

            oslog = v12;
            v13 = v12 + OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v14 = *(v13 + 1);
              ObjectType = swift_getObjectType();
              v72 = type metadata accessor for FMNearbyInteractionLocalizerContext();
              v73 = &off_285DA58A0;
              v69 = v8;
              v15 = *(v14 + 32);
              v16 = v8;
              v15(2, &v69, ObjectType, v14);
              swift_unknownObjectRelease();
              sub_24A508C54(&v69);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v17 = *(v13 + 1);
              v18 = swift_getObjectType();
              v72 = type metadata accessor for FMNearbyInteractionLocalizerContext();
              v73 = &off_285DA58A0;
              v69 = v8;
              v19 = *(v17 + 48);
              v20 = v8;
              v19(1, &v69, v18, v17);
              swift_unknownObjectRelease();

              sub_24A508C54(&v69);
            }

            else
            {
            }

            ++v6;
          }

          while (v3 != v11);
        }

        v6 = v60;
        v3 = v62;
      }
    }

    v27 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession;
    if (*(v6 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession))
    {
      if (qword_27EF4E9A0 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_30;
    }

    v35 = [objc_allocWithZone(MEMORY[0x277CD8A68]) init];
    v36 = *(v6 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession);
    if (v36)
    {
      v37 = v36;
      [v35 setARSession:v37];
      [v37 setDelegate_];
    }

    v61 = v6;
    [v35 setDelegate:v6];
    v69 = v35;
    v38 = sub_24A62F784();
    v40 = v39;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v41 = sub_24A62E314();
    sub_24A506EB8(v41, qword_27EF5C118);
    v63 = v3;
    v42 = v3;
    v43 = sub_24A62E2F4();
    v44 = sub_24A62EF64();

    if (os_log_type_enabled(v43, v44))
    {
      oslogb = v35;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v76 = v65;
      *v45 = 138412546;
      *(v45 + 4) = v42;
      *v46 = v42;
      *(v45 + 12) = 2080;
      v47 = v42;
      v48 = sub_24A516B88(9, v38, v40);
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v74 = 7876668;
      v75 = 0xE300000000000000;
      v69 = v48;
      v70 = v50;
      v71 = v52;
      v72 = v54;
      sub_24A55B6E8();
      sub_24A62ECA4();

      v69 = v74;
      v70 = v75;

      MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

      v55 = sub_24A509BA8(v69, v70, &v76);

      *(v45 + 14) = v55;
      _os_log_impl(&dword_24A503000, v43, v44, "🧭 FMR1NISubscr%@: asking to start localizer, created item localizer <%s> and will re-configure", v45, 0x16u);
      sub_24A50D6A4(v46, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v46, -1, -1);
      sub_24A508C54(v65);
      MEMORY[0x24C21BBE0](v65, -1, -1);
      v56 = v45;
      v35 = oslogb;
      MEMORY[0x24C21BBE0](v56, -1, -1);
    }

    else
    {
    }

    v6 = v61;
    v3 = v63;
    v57 = *&v61[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler];
    if (v57)
    {
      v58 = *&v61[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler + 8];

      v57(v59);
      sub_24A50D844(v57, v58);
    }

    v30 = *&v61[v27];
    *&v61[v27] = v35;
LABEL_42:

    *(v3 + OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_wantsSession) = 1;
    sub_24A560664();
  }

  else
  {
LABEL_20:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v21 = sub_24A62E314();
    sub_24A506EB8(v21, qword_27EF5C118);
    v22 = v3;
    osloga = sub_24A62E2F4();
    v23 = sub_24A62EF64();

    if (os_log_type_enabled(osloga, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v22;
      *v25 = v22;
      v26 = v22;
      _os_log_impl(&dword_24A503000, osloga, v23, "🧭 FMR1NISubscr%@: asking to start localizer but no context", v24, 0xCu);
      sub_24A50D6A4(v25, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v25, -1, -1);
      MEMORY[0x24C21BBE0](v24, -1, -1);
    }
  }
}

uint64_t sub_24A5629C4(uint64_t a1)
{
  result = sub_24A62E214();
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

id sub_24A562A7C(void *a1)
{
  v30 = a1;
  v29 = sub_24A62F004();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EFD4();
  MEMORY[0x28223BE20](v5);
  v6 = sub_24A62EAD4();
  MEMORY[0x28223BE20](v6 - 8);
  *&v1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_contexts] = MEMORY[0x277D84F98];
  v7 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_subscriptions] = MEMORY[0x277D84F90];
  v1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground] = 0;
  *&v1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_itemLocalizersCount] = 0;
  v28 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  sub_24A62EAC4();
  v32 = v7;
  sub_24A569AD8(&unk_27EF4F9E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A508FA4(&unk_27EF50240, &unk_24A634A08);
  sub_24A569B20();
  sub_24A62F254();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v29);
  *&v1[v28] = sub_24A62F044();
  v8 = v30;
  *&v1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession] = v30;
  v9 = type metadata accessor for FMNearbyInteractionManager();
  v31.receiver = v1;
  v31.super_class = v9;
  v10 = v8;
  v11 = objc_msgSendSuper2(&v31, sel_init);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  [v14 addObserver:v13 selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

  v15 = [v12 defaultCenter];
  [v15 addObserver:v13 selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v16 = sub_24A62E314();
  sub_24A506EB8(v16, qword_27EF5C118);
  v17 = v13;
  v18 = sub_24A62E2F4();
  v19 = sub_24A62EF64();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136315138;
    v22 = [v17 description];
    v23 = sub_24A62EC14();
    v25 = v24;

    v26 = sub_24A509BA8(v23, v25, &v32);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_24A503000, v18, v19, "🧭 FMR1NIMgr%s: init (v14)", v20, 0xCu);
    sub_24A508C54(v21);
    MEMORY[0x24C21BBE0](v21, -1, -1);
    MEMORY[0x24C21BBE0](v20, -1, -1);
  }

  return v17;
}

uint64_t sub_24A562FA0(const char *a1, char a2, ...)
{
  if (qword_27EF4E9A0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C118);
  v6 = v2;
  v7 = sub_24A62E2F4();
  v8 = sub_24A62EF64();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_24A503000, v7, v8, a1, v9, 0xCu);
    sub_24A50D6A4(v10, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v10, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  *(v6 + OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground) = a2;
  v2 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_contexts;
  swift_beginAccess();
  v12 = *&v2[v6];
  a1 = (v12 + 64);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = *(*(v12 + 56) + ((v18 << 9) | (8 * v19)));
      v20[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_applicationIsInBackground] = a2;
      v2 = v20;
      sub_24A55E7F4();
      sub_24A560664();

      if (!v15)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *&a1[8 * v18];
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_12;
    }
  }
}

uint64_t sub_24A563234(void *a1, char *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  sub_24A50A204(a1, v8);
  (*(v9 + 16))(v8, v9);
  v10 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_contexts;
  swift_beginAccess();
  v11 = *&a2[v10];
  if (*(v11 + 16))
  {

    v12 = sub_24A515AC8(v7);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      if (a2[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground])
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v15 = sub_24A62E314();
        sub_24A506EB8(v15, qword_27EF5C118);
        v16 = sub_24A62E2F4();
        v17 = sub_24A62EF64();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_24A503000, v16, v17, "FMR1NIMgr: Cannot start discovering while application is in the background. Discovery will start when it's foregrounded", v18, 2u);
          MEMORY[0x24C21BBE0](v18, -1, -1);

          v14 = v16;
        }

        else
        {
        }
      }

      else
      {
        v22 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession;
        if (*(&v14->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession))
        {
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v23 = sub_24A62E314();
          sub_24A506EB8(v23, qword_27EF5C118);
          v24 = a2;
          v25 = sub_24A62E2F4();
          v26 = sub_24A62EF64();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *v27 = 138412290;
            *(v27 + 4) = v24;
            *v28 = v24;
            v29 = v24;
            _os_log_impl(&dword_24A503000, v25, v26, "🧭 FMR1NISubscr%@: asking to start discovering", v27, 0xCu);
            sub_24A50D6A4(v28, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v28, -1, -1);
            MEMORY[0x24C21BBE0](v27, -1, -1);
          }
        }

        else
        {
          v68 = [objc_allocWithZone(MEMORY[0x277CD8A68]) init];
          v30 = *(&v14->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_arSession);
          if (v30)
          {
            v31 = v30;
            [v68 setARSession_];
            [v31 setDelegate_];
          }

          v32 = v68;
          [v68 setDelegate_];
          v69 = v32;
          v67 = sub_24A62F784();
          v34 = v33;
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v35 = sub_24A62E314();
          sub_24A506EB8(v35, qword_27EF5C118);
          v36 = a2;
          v37 = sub_24A62E2F4();
          v38 = sub_24A62EF64();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v65 = v22;
            v40 = v39;
            v41 = v34;
            v42 = swift_slowAlloc();
            v64 = v42;
            v66 = swift_slowAlloc();
            v75 = v66;
            v63 = v40;
            *v40 = 138412546;
            *(v40 + 4) = v36;
            *v42 = v36;
            *(v40 + 12) = 2080;
            v22 = v65;
            v43 = v36;
            v44 = sub_24A516B88(9, v67, v41);
            v67 = v37;
            v45 = v44;
            v47 = v46;
            v62 = v38;
            v49 = v48;
            v51 = v50;

            v73 = 7876668;
            v74 = 0xE300000000000000;
            v69 = v45;
            v70 = v47;
            v71 = v49;
            v72 = v51;
            sub_24A55B6E8();
            sub_24A62ECA4();

            v69 = v73;
            v70 = v74;

            MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

            v52 = sub_24A509BA8(v69, v70, &v75);

            v53 = v63;
            *(v63 + 14) = v52;
            v54 = v67;
            _os_log_impl(&dword_24A503000, v67, v62, "🧭 FMR1NISubscr%@: asking to start discovering, created item localizer <%s> and will re-configure", v53, 0x16u);
            v55 = v64;
            sub_24A50D6A4(v64, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v55, -1, -1);
            v56 = v66;
            sub_24A508C54(v66);
            MEMORY[0x24C21BBE0](v56, -1, -1);
            MEMORY[0x24C21BBE0](v53, -1, -1);
          }

          else
          {
          }

          v57 = *(&v14->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler);
          if (v57)
          {
            v58 = *(&v14[1].isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler);

            v57(v59);
            sub_24A50D844(v57, v58);
          }

          v25 = *(&v14->isa + v22);
          *(&v14->isa + v22) = v68;
        }

        sub_24A55FD50();
      }

      goto LABEL_30;
    }
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v19 = sub_24A62E314();
  sub_24A506EB8(v19, qword_27EF5C118);
  v14 = sub_24A62E2F4();
  v20 = sub_24A62EF64();
  if (os_log_type_enabled(v14, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_24A503000, v14, v20, "FMR1NIMgr: Cannot start discovering without subscribing first.", v21, 2u);
    MEMORY[0x24C21BBE0](v21, -1, -1);
  }

LABEL_30:

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24A563960@<X0>(char *a1@<X0>, void *a2@<X1>, NSObject *a3@<X2>, int a4@<W3>, NSObject *a5@<X4>, NSObject *a6@<X5>, NSObject **a7@<X8>)
{
  v154 = a7;
  v152 = a6;
  v153 = a5;
  LODWORD(v151) = a4;
  v10 = sub_24A62E214();
  v156 = *(v10 - 8);
  v157 = v10;
  MEMORY[0x28223BE20](v10);
  v149 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v143 - v13;
  v15 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession;
  v16 = *&a1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession];
  *&a1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_arSession] = a2;

  isa = a3[3].isa;
  v18 = a3[4].isa;
  v155 = a3;
  sub_24A50A204(a3, isa);
  v19 = *(v18 + 2);
  v148 = a2;
  v20 = a2;
  v19(isa, v18);
  v21 = v14;
  v22 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_contexts;
  swift_beginAccess();
  v23 = *&a1[v22];
  v24 = *(v23 + 16);
  v150 = v14;
  if (v24)
  {

    v25 = sub_24A515AC8(v14);
    if (v26)
    {
      v27 = *(*(v23 + 56) + 8 * v25);

      v28 = *&v27[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findingType];

      LOWORD(v159[0]) = v28;
      LOWORD(v158) = v151;
      if (!_s11FMFindingUI21FindingExperienceTypeO2eeoiySbAC_ACtFZ_0(v159, &v158))
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v29 = sub_24A62E314();
        sub_24A506EB8(v29, qword_27EF5C118);
        v30 = a1;
        v31 = sub_24A62E2F4();
        v32 = sub_24A62EF64();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412546;
          *(v33 + 4) = v30;
          *v34 = v30;
          *(v33 + 12) = 2048;
          *(v33 + 14) = *&v30[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_itemLocalizersCount];
          _os_log_impl(&dword_24A503000, v31, v32, "🧭 FMR1NIMgr%@: Clearing previous item localizer context with mismatched findingType (%ld)", v33, 0x16u);
          sub_24A50D6A4(v34, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v34, -1, -1);
          v35 = v33;
          v21 = v150;
          MEMORY[0x24C21BBE0](v35, -1, -1);
        }

        else
        {

          v31 = v30;
        }

        v36 = *&a1[v22];
        if (*(v36 + 16))
        {

          v37 = sub_24A515AC8(v21);
          if (v38)
          {
            v39 = *(*(v36 + 56) + 8 * v37);

            sub_24A55E390();
          }

          else
          {
          }
        }

        v40 = v149;
        (*(v156 + 16))(v149, v21, v157);
        swift_beginAccess();
        sub_24A56AFAC(0, v40);
        swift_endAccess();
      }
    }

    else
    {
    }
  }

  if (!*(*&a1[v22] + 16) || (, sub_24A515AC8(v21), v42 = v41, , (v42 & 1) == 0))
  {
    v68 = v155;
    sub_24A508AE4(v155, v159);
    v69 = (v151 >> 13) & 3;
    v147 = v20;
    if (v69)
    {
      if (v69 == 1)
      {
        v70 = (v151 >> 8) & 0x9F;
      }

      else if ((v151 & 0x8000) != 0)
      {
        v70 = (v151 >> 8) & 0x1F;
      }

      else
      {
        LOBYTE(v70) = v151;
      }
    }

    else
    {
      LOBYTE(v70) = BYTE1(v151);
    }

    v163 = v70;
    LOWORD(v158) = v151;
    v77 = *&a1[v15];
    v78 = objc_allocWithZone(type metadata accessor for FMNearbyInteractionLocalizerContext());
    v79 = v77;
    v80 = sub_24A55CD7C(v159, &v163, &v158, v77);
    swift_beginAccess();
    v81 = v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158 = *&a1[v22];
    *&a1[v22] = 0x8000000000000000;
    sub_24A557C80(v81, v21, isUniquelyReferenced_nonNull_native);
    *&a1[v22] = v158;
    swift_endAccess();
    sub_24A508AE4(v68, v159);
    v83 = objc_allocWithZone(type metadata accessor for FMNearbyInteractionManagerSubscription(0));
    v84 = swift_unknownObjectRetain();
    v85 = sub_24A5696D8(v84, v152, v159, v80);
    swift_unknownObjectRelease();
    sub_24A55EDF0(v85);
    v86 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_subscriptions;
    swift_beginAccess();
    v87 = v85;
    MEMORY[0x24C21A660]();
    if (*((*&a1[v86] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v86] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24A62ED84();
    }

    sub_24A62EDA4();
    swift_endAccess();
    if (a1[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground])
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v88 = sub_24A62E314();
      sub_24A506EB8(v88, qword_27EF5C118);
      sub_24A508AE4(v68, v159);
      v89 = a1;
      v90 = sub_24A62E2F4();
      v91 = sub_24A62EF64();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v153 = v93;
        v155 = swift_slowAlloc();
        v158 = v155;
        *v92 = 138412546;
        *(v92 + 4) = v89;
        v93->isa = v89;
        *(v92 + 12) = 2080;
        v152 = v90;
        v94 = v87;
        v95 = v160;
        v96 = v161;
        sub_24A50A204(v159, v160);
        LODWORD(v151) = v91;
        v97 = *(v96 + 16);
        v98 = v89;
        v99 = v149;
        v100 = v96;
        v87 = v94;
        v97(v95, v100);
        sub_24A569AD8(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v101 = v157;
        v102 = sub_24A62F614();
        v104 = v103;
        v105 = *(v156 + 8);
        v105(v99, v101);
        sub_24A508C54(v159);
        v106 = sub_24A509BA8(v102, v104, &v158);

        *(v92 + 14) = v106;
        v107 = v152;
        _os_log_impl(&dword_24A503000, v152, v151, "🧭 FMR1NIMgr%@: setting up for '%s', but in background", v92, 0x16u);
        v108 = v153;
        sub_24A50D6A4(v153, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v108, -1, -1);
        v109 = v155;
        sub_24A508C54(v155);
        MEMORY[0x24C21BBE0](v109, -1, -1);
        MEMORY[0x24C21BBE0](v92, -1, -1);

        result = (v105)(v150, v101);
        goto LABEL_68;
      }
    }

    else
    {
      v111 = [objc_allocWithZone(MEMORY[0x277CD8A68]) init];
      if (v148)
      {
        v112 = v147;
        [v111 setARSession_];
        [v112 setDelegate_];
      }

      [v111 setDelegate_];
      v113 = *&v81[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler];
      if (v113)
      {
        v114 = *&v81[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_incrementNISessionHandler + 8];

        v113(v115);
        sub_24A50D844(v113, v114);
      }

      v116 = *&v81[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
      *&v81[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] = v111;
      v90 = v111;

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v117 = sub_24A62E314();
      sub_24A506EB8(v117, qword_27EF5C118);
      sub_24A508AE4(v68, v159);
      v118 = a1;
      v119 = sub_24A62E2F4();
      v120 = sub_24A62EF64();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v151 = v122;
        v152 = swift_slowAlloc();
        v158 = v152;
        *v121 = 138412546;
        *(v121 + 4) = v118;
        *v122 = v118;
        *(v121 + 12) = 2080;
        v153 = v90;
        v124 = v160;
        v123 = v161;
        sub_24A50A204(v159, v160);
        LODWORD(v148) = v120;
        v155 = v87;
        v125 = *(v123 + 16);
        v126 = v118;
        v127 = v149;
        v125(v124, v123);
        sub_24A569AD8(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v128 = v157;
        v129 = sub_24A62F614();
        v131 = v130;
        v132 = *(v156 + 8);
        v132(v127, v128);
        sub_24A508C54(v159);
        v133 = sub_24A509BA8(v129, v131, &v158);

        *(v121 + 14) = v133;
        _os_log_impl(&dword_24A503000, v119, v148, "🧭 FMR1NIMgr%@: setting up for '%s', created niSession", v121, 0x16u);
        v134 = v151;
        sub_24A50D6A4(v151, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v134, -1, -1);
        v135 = v152;
        sub_24A508C54(v152);
        MEMORY[0x24C21BBE0](v135, -1, -1);
        MEMORY[0x24C21BBE0](v121, -1, -1);

        result = (v132)(v150, v128);
        v87 = v155;
        goto LABEL_68;
      }
    }

    (*(v156 + 8))(v150, v157);
    result = sub_24A508C54(v159);
    goto LABEL_68;
  }

  v43 = v155;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v44 = sub_24A62E314();
  sub_24A506EB8(v44, qword_27EF5C118);
  sub_24A508AE4(v43, v159);
  v45 = a1;
  v46 = sub_24A62E2F4();
  v47 = sub_24A62EF64();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v151 = v45;
    v49 = v48;
    v50 = swift_slowAlloc();
    v145 = v50;
    v146 = swift_slowAlloc();
    v158 = v146;
    *v49 = 138412802;
    *(v49 + 4) = v151;
    *v50 = v151;
    *(v49 + 12) = 2080;
    v144 = v46;
    v52 = v160;
    v51 = v161;
    sub_24A50A204(v159, v160);
    v162 = v47;
    v53 = *(v51 + 16);
    v143 = v151;
    v147 = v20;
    v54 = v149;
    v53(v52, v51);
    sub_24A569AD8(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v55 = v157;
    v56 = sub_24A62F614();
    v58 = v57;
    v59 = v54;
    v20 = v147;
    (*(v156 + 8))(v59, v55);
    sub_24A508C54(v159);
    v60 = sub_24A509BA8(v56, v58, &v158);

    *(v49 + 14) = v60;
    *(v49 + 22) = 2080;
    if (v143[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground])
    {
      v61 = 0x6B636162206E6928;
    }

    else
    {
      v61 = 0;
    }

    if (v143[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_applicationIsInBackground])
    {
      v62 = 0xEF29646E756F7267;
    }

    else
    {
      v62 = 0xE000000000000000;
    }

    v63 = sub_24A509BA8(v61, v62, &v158);

    *(v49 + 24) = v63;
    v21 = v150;
    v64 = v144;
    _os_log_impl(&dword_24A503000, v144, v162, "🧭 FMR1NIMgr%@: setting up for '%s' but item already known %s", v49, 0x20u);
    v65 = v145;
    sub_24A50D6A4(v145, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v65, -1, -1);
    v66 = v146;
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v66, -1, -1);
    v67 = v49;
    v45 = v151;
    v43 = v155;
    MEMORY[0x24C21BBE0](v67, -1, -1);
  }

  else
  {

    sub_24A508C54(v159);
  }

  v71 = *&a1[v22];
  if (*(v71 + 16))
  {

    v72 = sub_24A515AC8(v21);
    if (v73)
    {
      v74 = *(*(v71 + 56) + 8 * v72);
      v75 = v74;
    }

    else
    {
      v74 = 0;
    }

    if (!v148)
    {
      goto LABEL_63;
    }

    goto LABEL_41;
  }

  v74 = 0;
  if (v148)
  {
LABEL_41:
    if (v74)
    {
      [*&v74[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession] setARSession_];
      v76 = v74;
    }

    else
    {
      v136 = v20;
      v76 = 0;
    }

    [v20 setDelegate_];
  }

LABEL_63:
  sub_24A508AE4(v43, v159);
  v137 = objc_allocWithZone(type metadata accessor for FMNearbyInteractionManagerSubscription(0));
  v138 = v74;
  v139 = swift_unknownObjectRetain();
  v140 = sub_24A5696D8(v139, v152, v159, v74);
  swift_unknownObjectRelease();

  if (v74)
  {
    v141 = v138;
    sub_24A55EDF0(v140);
  }

  v142 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_subscriptions;
  swift_beginAccess();
  v87 = v140;
  MEMORY[0x24C21A660]();
  if (*((*&v45[v142] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v45[v142] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A62ED84();
  }

  sub_24A62EDA4();
  swift_endAccess();

  result = (*(v156 + 8))(v21, v157);
LABEL_68:
  *v154 = v87;
  return result;
}

uint64_t sub_24A564938(char *a1, void *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v86 - v9;
  v96 = a2;
  sub_24A508AE4(a2 + OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_findable, v98);
  v11 = v99;
  v12 = v100;
  sub_24A50A204(v98, v99);
  v12[2](v11, v12);
  sub_24A508C54(v98);
  v13 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_contexts;
  swift_beginAccess();
  v14 = *&a1[v13];
  if (*(v14 + 16))
  {

    v15 = sub_24A515AC8(v10);
    if (v16)
    {
      v12 = *(*(v14 + 56) + 8 * v15);

      if (sub_24A55F418(v96))
      {
        if (qword_27EF4E9A0 != -1)
        {
          goto LABEL_34;
        }

        while (1)
        {
          v17 = sub_24A62E314();
          sub_24A506EB8(v17, qword_27EF5C118);
          v12 = v12;
          v18 = a1;
          v19 = sub_24A62E2F4();
          v20 = sub_24A62EF64();

          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            LODWORD(v93) = v20;
            v22 = v21;
            v23 = swift_slowAlloc();
            v92 = v23;
            v94 = swift_slowAlloc();
            v97[0] = v94;
            v91 = v22;
            *v22 = 138412546;
            *(v22 + 4) = v18;
            *v23 = v18;
            *(v22 + 12) = 2080;
            sub_24A508AE4(v12 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v98);
            v24 = v99;
            v25 = v100;
            sub_24A50A204(v98, v99);
            p_isa = &v19->isa;
            v95 = v4;
            v26 = v12;
            v27 = v25[1];
            v28 = v18;
            v29 = (v27)(v24, v25);
            v12 = v26;
            v4 = v95;
            v30 = v29;
            v32 = v31;
            sub_24A508C54(v98);
            v33 = sub_24A509BA8(v30, v32, v97);

            v34 = p_isa;
            v35 = v91;
            *(v91 + 14) = v33;
            _os_log_impl(&dword_24A503000, v34, v93, "🧭 FMR1NIMgr%@: unsubscribing, did not tear down, subscriptions still exist '%s'", v35, 0x16u);
            v36 = v92;
            sub_24A50D6A4(v92, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v36, -1, -1);
            v37 = v94;
            sub_24A508C54(v94);
            MEMORY[0x24C21BBE0](v37, -1, -1);
            MEMORY[0x24C21BBE0](v35, -1, -1);
          }

          else
          {
          }

          sub_24A55F21C(v96);
LABEL_27:

          (*(v5 + 8))(v10, v4);
          v5 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_subscriptions;
          swift_beginAccess();
          v83 = v96;
          v39 = sub_24A569868(&a1[v5], v83);

          v84 = *&a1[v5];
          if (v84 >> 62)
          {
            v41 = sub_24A62F464();
            if (v41 >= v39)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v41 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v41 >= v39)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_34:
          swift_once();
        }
      }

LABEL_11:
      if ((*(v12 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity) | 4) == 5)
      {
        v92 = v7;
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v42 = sub_24A62E314();
        sub_24A506EB8(v42, qword_27EF5C118);
        v43 = v12;
        v44 = a1;
        v45 = sub_24A62E2F4();
        v46 = sub_24A62EF64();
        v94 = v43;

        v47 = v44;
        LODWORD(v91) = v46;
        if (os_log_type_enabled(v45, v46))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v89 = v49;
          p_isa = swift_slowAlloc();
          v97[0] = p_isa;
          v88 = v48;
          *v48 = 138412546;
          *(v48 + 4) = v47;
          v49->isa = v47;
          *(v48 + 12) = 2080;
          sub_24A508AE4(v94 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v98);
          v95 = v4;
          v93 = v12;
          v51 = v99;
          v50 = v100;
          sub_24A50A204(v98, v99);
          v52 = v45;
          v87 = v50[1];
          v53 = v47;
          v54 = v51;
          v4 = v95;
          v55 = (v87)(v54, v50);
          v57 = v56;
          sub_24A508C54(v98);
          v58 = sub_24A509BA8(v55, v57, v97);
          v12 = v93;

          v59 = v88;
          *(v88 + 14) = v58;
          _os_log_impl(&dword_24A503000, v52, v91, "🧭 FMR1NIMgr%@: tore down '%s' (stopping first)", v59, 0x16u);
          v60 = v89;
          sub_24A50D6A4(v89, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v60, -1, -1);
          v61 = p_isa;
          sub_24A508C54(p_isa);
          MEMORY[0x24C21BBE0](v61, -1, -1);
          MEMORY[0x24C21BBE0](v59, -1, -1);
        }

        else
        {
        }

        v7 = v92;
        sub_24A55E390();
      }

      else
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v62 = sub_24A62E314();
        sub_24A506EB8(v62, qword_27EF5C118);
        v93 = v12;
        v63 = v12;
        v64 = a1;
        v65 = sub_24A62E2F4();
        v66 = sub_24A62EF64();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          LODWORD(v92) = v66;
          v68 = v67;
          v69 = swift_slowAlloc();
          v95 = v63;
          v70 = v69;
          v91 = v69;
          v94 = swift_slowAlloc();
          v97[0] = v94;
          p_isa = v68;
          *v68 = 138412546;
          *(v68 + 4) = v64;
          *v70 = v64;
          *(v68 + 12) = 2080;
          sub_24A508AE4(v95 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v98);
          v71 = v99;
          v72 = v100;
          sub_24A50A204(v98, v99);
          v89 = v65;
          v95 = v4;
          v88 = v72[1];
          v73 = v64;
          v74 = (v88)(v71, v72);
          v4 = v95;
          v75 = v74;
          v77 = v76;
          sub_24A508C54(v98);
          v78 = sub_24A509BA8(v75, v77, v97);

          v79 = v89;
          v80 = p_isa;
          *(p_isa + 14) = v78;
          _os_log_impl(&dword_24A503000, v79, v92, "🧭 FMR1NIMgr%@: unsubscribing, tore down '%s'", v80, 0x16u);
          v81 = v91;
          sub_24A50D6A4(v91, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v81, -1, -1);
          v82 = v94;
          sub_24A508C54(v94);
          MEMORY[0x24C21BBE0](v82, -1, -1);
          MEMORY[0x24C21BBE0](v80, -1, -1);
        }

        else
        {
        }

        v12 = v93;
      }

      sub_24A55E390();
      (*(v5 + 16))(v7, v10, v4);
      swift_beginAccess();
      sub_24A56AFAC(0, v7);
      swift_endAccess();
      goto LABEL_27;
    }
  }

  (*(v5 + 8))(v10, v4);
  v5 = OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_subscriptions;
  swift_beginAccess();
  v38 = v96;
  v39 = sub_24A569868(&a1[v5], v38);

  v40 = *&a1[v5];
  if (v40 >> 62)
  {
    v41 = sub_24A62F464();
    if (v41 < v39)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41 < v39)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }
  }

LABEL_29:
  sub_24A575AC4(v39, v41);
  return swift_endAccess();
}

id sub_24A5652EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNearbyInteractionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24A5653C4()
{
  result = qword_27EF501A0;
  if (!qword_27EF501A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF501A0);
  }

  return result;
}

uint64_t sub_24A565418(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_24A565478(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_24A565618(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_24A569684(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x24C21BBE0](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_24A565618(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v30 = a1;
  v6 = sub_24A62E2B4();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v40 = &v27 - v12;
  v33 = *(a3 + 16);
  if (v33)
  {
    v29 = 0;
    v13 = 0;
    v38 = *(v10 + 16);
    v39 = v10 + 16;
    v32 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v14 = *(v10 + 72);
    v36 = a4 + 56;
    v37 = v14;
    v15 = (v10 + 8);
    v35 = a4;
    while (1)
    {
      v34 = v13;
      v38(v40, v32 + v37 * v13, v6, v11);
      sub_24A569AD8(&qword_27EF501F8, MEMORY[0x277CD89F8], MEMORY[0x277CD8A00]);
      v18 = sub_24A62EBB4();
      v19 = -1 << *(a4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v31 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23 = ~v19;
      while (1)
      {
        (v38)(v8, *(v35 + 48) + v20 * v37, v6);
        sub_24A569AD8(&qword_27EF50200, MEMORY[0x277CD89F8], MEMORY[0x277CD8A08]);
        v24 = sub_24A62EBD4();
        v16 = *v15;
        (*v15)(v8, v6);
        if (v24)
        {
          break;
        }

        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
        {
          a4 = v35;
          goto LABEL_4;
        }
      }

      result = (v16)(v40, v6);
      v26 = v30[v21];
      v30[v21] = v26 | v22;
      if ((v26 & v22) != 0)
      {
        a4 = v35;
LABEL_5:
        v17 = v34;
        goto LABEL_6;
      }

      v17 = v34;
      a4 = v35;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return result;
      }

      ++v29;
LABEL_6:
      v13 = v17 + 1;
      if (v13 == v33)
      {
        goto LABEL_17;
      }
    }

    v16 = *v15;
LABEL_4:
    v16(v40, v6);
    goto LABEL_5;
  }

  v29 = 0;
LABEL_17:

  return sub_24A619570(v30, v28, v29, a4);
}

unint64_t sub_24A565964(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_24A62F464();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C21ACB0](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = sub_24A62E1E4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_24A565A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_24A50D7EC(0, &qword_27EF501D0, 0x277CD8A60);
  v6 = sub_24A62ED54();

  v11[0] = 0;
  v7 = [v3 initWithDiscoveryToken:a1 regions:v6 preferredUpdateRate:a3 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_24A62E084();

    swift_willThrow();
  }

  return v7;
}

id sub_24A565B6C(__int16 *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A635FE0;
  v7 = objc_allocWithZone(MEMORY[0x277CD8A60]);
  v8 = sub_24A62EBE4();
  v9 = [v7 initWithName:v8 devicePresencePreset:1];

  *(v6 + 32) = v9;
  v10 = objc_allocWithZone(MEMORY[0x277CD8A60]);
  v11 = sub_24A62EBE4();
  v12 = [v10 initWithName:v11 devicePresencePreset:4];

  *(v6 + 40) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CD8A60]);
  v14 = sub_24A62EBE4();
  v15 = [v13 initWithName:v14 devicePresencePreset:5];

  *(v6 + 48) = v15;
  v16 = (v5 >> 13) & 3;
  if (!v16)
  {

    v23 = a2[3];
    v24 = a2[4];
    sub_24A50A204(a2, v23);
    v25 = (*(v24 + 16))(v23, v24);
    v26 = [objc_allocWithZone(MEMORY[0x277CD8A38]) initWithDiscoveryToken:v25 requestedUpdateRate:a3 requestedMeasaurementQuality:1];
LABEL_8:
    v33 = v26;

    v34 = objc_opt_self();
    v21 = v33;
    v35 = [objc_msgSend(v34 deviceCapabilities)];
    swift_unknownObjectRelease();
    [v21 setCameraAssistanceEnabled_];
    goto LABEL_9;
  }

  if (v16 == 1)
  {
    v17 = a2[3];
    v18 = a2[4];
    sub_24A50A204(a2, v17);
    v19 = (*(v18 + 16))(v17, v18);
    v20 = [objc_allocWithZone(MEMORY[0x277CD8A38]) initWithDiscoveryToken:v19 requestedUpdateRate:a3 requestedMeasaurementQuality:3];

    sub_24A50D7EC(0, &qword_27EF501D0, 0x277CD8A60);
    v21 = v20;
    v22 = sub_24A62ED54();

    [v21 setMonitoredRegions_];

LABEL_9:
    return v21;
  }

  if ((v5 & 0x80000000) != 0)
  {

    v31 = a2[3];
    v32 = a2[4];
    sub_24A50A204(a2, v31);
    v25 = (*(v32 + 16))(v31, v32);
    v26 = [objc_allocWithZone(MEMORY[0x277CD8A38]) initWithRole:0 discoveryToken:v25 preferredUpdateRate:a3];
    goto LABEL_8;
  }

  v27 = a2[3];
  v28 = a2[4];
  sub_24A50A204(a2, v27);
  v29 = (*(v28 + 16))(v27, v28);
  v30 = objc_allocWithZone(MEMORY[0x277CD8A28]);
  v21 = sub_24A565A68(v29, v6, a3);

  return v21;
}

unint64_t sub_24A56604C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_24A56605C()
{
  result = qword_27EF501A8;
  if (!qword_27EF501A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF501A8);
  }

  return result;
}

uint64_t sub_24A5660B0(unint64_t a1)
{
  sub_24A508AE4(v1 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v121);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  v3 = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
    v125 = 0;
    memset(v124, 0, sizeof(v124));
  }

  MEMORY[0x28223BE20](v3);
  v110[2] = v124;
  v4 = sub_24A60DE9C(sub_24A569B88, v110, a1);
  if (!v4)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v27 = sub_24A62E314();
    sub_24A506EB8(v27, qword_27EF5C118);
    v28 = v119;
    v29 = sub_24A62E2F4();
    v30 = sub_24A62EF64();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_24A503000, v29, v30, "🧭 FMR1NIContxt%@: nearby objects updated!! However, nearby object discover token don't match", v31, 0xCu);
      sub_24A50D6A4(v32, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v32, -1, -1);
      MEMORY[0x24C21BBE0](v31, -1, -1);
    }

    goto LABEL_68;
  }

  isa = v4;
  v6 = [v4 motionState];
  v7 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState;
  v8 = v119[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState];
  if (v6 == 2)
  {
    if (v8 != 4)
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v9 = sub_24A62E314();
      sub_24A506EB8(v9, qword_27EF5C118);
      v10 = sub_24A62E2F4();
      v11 = sub_24A62EF64();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMR1NIContxt: Findable motion state changed to moving", v12, 2u);
        MEMORY[0x24C21BBE0](v12, -1, -1);
      }

      v13 = v119;
      v119[v7] = 4;
      v14 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
      swift_beginAccess();
      v15 = *&v13[v14];
      if (v15 >> 62)
      {
        v16 = sub_24A62F464();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v16)
      {
        goto LABEL_46;
      }

      v116 = isa;
      v17 = 0;
      v118 = v15 & 0xC000000000000001;
      v117 = (v15 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v118)
        {
          v23 = MEMORY[0x24C21ACB0](v17, v15);
        }

        else
        {
          if (v17 >= v117[2])
          {
            goto LABEL_73;
          }

          v23 = *(v15 + 8 * v17 + 32);
        }

        v24 = v23;
        v25 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_71;
        }

        v26 = &v23[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
        if (swift_unknownObjectWeakLoadStrong())
        {
          isa = v16;
          v18 = *(v26 + 1);
          ObjectType = swift_getObjectType();
          v122 = type metadata accessor for FMNearbyInteractionLocalizerContext();
          v123 = &off_285DA58A0;
          v121[0] = v119;
          v20 = *(v18 + 48);
          v21 = v119;
          v22 = v18;
          v16 = isa;
          v20(4, v121, ObjectType, v22);
          swift_unknownObjectRelease();

          sub_24A508C54(v121);
        }

        else
        {
        }

        ++v17;
      }

      while (v25 != v16);
LABEL_45:
      isa = v116;
LABEL_46:
    }
  }

  else if (v8 == 4)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v34 = sub_24A62E314();
    sub_24A506EB8(v34, qword_27EF5C118);
    v35 = sub_24A62E2F4();
    v36 = sub_24A62EF64();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_24A503000, v35, v36, "🧭 FMR1NIContxt: Findable motion state changed to stopped moving", v37, 2u);
      MEMORY[0x24C21BBE0](v37, -1, -1);
    }

    v38 = v119;
    v119[v7] = 5;
    v39 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v40 = *&v38[v39];
    if (v40 >> 62)
    {
      v41 = sub_24A62F464();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v41)
    {
      goto LABEL_46;
    }

    v116 = isa;
    v42 = 0;
    v118 = v40 & 0xC000000000000001;
    v117 = (v40 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v118)
      {
        v48 = MEMORY[0x24C21ACB0](v42, v40);
      }

      else
      {
        if (v42 >= v117[2])
        {
          goto LABEL_74;
        }

        v48 = *(v40 + 8 * v42 + 32);
      }

      v49 = v48;
      v50 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_72;
      }

      v51 = &v48[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        isa = v41;
        v43 = *(v51 + 1);
        v44 = swift_getObjectType();
        v122 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v123 = &off_285DA58A0;
        v121[0] = v119;
        v45 = *(v43 + 48);
        v46 = v119;
        v47 = v43;
        v41 = isa;
        v45(5, v121, v44, v47);
        swift_unknownObjectRelease();

        sub_24A508C54(v121);
      }

      else
      {
      }

      ++v42;
    }

    while (v50 != v41);
    goto LABEL_45;
  }

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v52 = sub_24A62E314();
    sub_24A506EB8(v52, qword_27EF5C118);
    v53 = isa;
    isa = sub_24A62E2F4();
    v54 = sub_24A62EF34();

    if (os_log_type_enabled(isa, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v121[0] = v56;
      *v55 = 136315138;
      [v53 boundedRegionRange];
      v57 = sub_24A62EE44();
      v59 = sub_24A509BA8(v57, v58, v121);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_24A503000, isa, v54, "FMNearbyInteractionContext: btUpdate: RSSI update: %s", v55, 0xCu);
      sub_24A508C54(v56);
      MEMORY[0x24C21BBE0](v56, -1, -1);
      MEMORY[0x24C21BBE0](v55, -1, -1);
    }

    v60 = v119;
    v29 = v53;
    v61 = sub_24A62E2F4();
    v62 = sub_24A62EF34();

    v63 = os_log_type_enabled(v61, v62);
    v114 = v29;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v121[0] = v119;
      *v64 = 138413826;
      *(v64 + 4) = v60;
      *v65 = v60;
      *(v64 + 12) = 2080;
      v66 = v60;
      v67 = [v29 discoveryToken];
      v68 = [v67 description];
      v69 = sub_24A62EC14();
      v71 = v70;

      v72 = sub_24A509BA8(v69, v71, v121);

      *(v64 + 14) = v72;
      *(v64 + 22) = 2080;
      v73 = sub_24A62EF94();
      LODWORD(v120) = v73;
      BYTE4(v120) = BYTE4(v73) & 1;
      sub_24A508FA4(&unk_27EF50220, &qword_24A636268);
      v74 = sub_24A62EC44();
      v76 = sub_24A509BA8(v74, v75, v121);

      *(v64 + 24) = v76;
      *(v64 + 32) = 2080;
      v77 = sub_24A62EF74();
      LODWORD(v120) = v77;
      BYTE4(v120) = BYTE4(v77) & 1;
      v78 = sub_24A62EC44();
      v80 = sub_24A509BA8(v78, v79, v121);

      *(v64 + 34) = v80;
      v29 = v114;
      *(v64 + 42) = 2080;
      v81 = sub_24A62EF84();
      LODWORD(v120) = v81;
      BYTE4(v120) = BYTE4(v81) & 1;
      v82 = sub_24A62EC44();
      v84 = sub_24A509BA8(v82, v83, v121);

      *(v64 + 44) = v84;
      *(v64 + 52) = 2080;
      v120 = [v29 motionState];
      type metadata accessor for NIMotionActivityState(0);
      v85 = sub_24A62EC44();
      v87 = sub_24A509BA8(v85, v86, v121);

      *(v64 + 54) = v87;
      *(v64 + 62) = 2080;
      [v29 boundedRegionRange];
      v88 = sub_24A62EE44();
      isa = sub_24A509BA8(v88, v89, v121);

      *(v64 + 64) = isa;
      _os_log_impl(&dword_24A503000, v61, v62, "🧭 FMR1NIContxt%@: nearby object updated!!  %s, distance: %s Angle: %s Angle Accuracy: %s Motion State: %s Prox Measurement: %s", v64, 0x48u);
      sub_24A50D6A4(v65, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v65, -1, -1);
      v90 = v119;
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v90, -1, -1);
      MEMORY[0x24C21BBE0](v64, -1, -1);
    }

    v91 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v92 = *&v60[v91];
    v113 = v60;
    v93 = v92 >> 62 ? sub_24A62F464() : *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v93)
    {
      break;
    }

    v94 = 0;
    v116 = v92 & 0xC000000000000001;
    v115 = v92 & 0xFFFFFFFFFFFFFF8;
    v112 = v93;
    v111 = v92;
    while (1)
    {
      if (v116)
      {
        v95 = MEMORY[0x24C21ACB0](v94, v92);
      }

      else
      {
        if (v94 >= *(v115 + 16))
        {
          goto LABEL_70;
        }

        v95 = *(v92 + 8 * v94 + 32);
      }

      v96 = v95;
      v97 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        break;
      }

      v98 = [v29 verticalDirectionEstimate];
      isa = &v96[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v99 = 5;
        if (v98 < 5)
        {
          v99 = v98;
        }

        v119 = v99;
        isa = isa[1].isa;
        v118 = swift_getObjectType();
        v100 = sub_24A62EF94();
        v101 = sub_24A62EF74();
        v102 = sub_24A62EF84();
        v117 = [v29 motionState];
        [v29 boundedRegionRange];
        v104 = v103;
        v122 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v123 = &off_285DA58A0;
        v121[0] = v113;
        v105 = isa[2].isa;
        v106 = v113;
        v107 = HIDWORD(v101) & 1;
        v108 = v101;
        v93 = v112;
        v105(v100 | ((HIDWORD(v100) & 1) << 32), v108 | (v107 << 32), v102 | ((HIDWORD(v102) & 1) << 32), v119, v117, v121, v118, isa, v104);
        v92 = v111;
        v29 = v114;
        swift_unknownObjectRelease();

        sub_24A508C54(v121);
      }

      else
      {
      }

      ++v94;
      if (v97 == v93)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

LABEL_67:

LABEL_68:

  return sub_24A50D6A4(v124, &unk_27EF501C0, &unk_24A636238);
}

uint64_t sub_24A566DF4(uint64_t (**a1)(void, void), unint64_t a2, uint64_t a3)
{
  sub_24A508AE4(v3 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, &v82);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = 0;
    memset(v63, 0, sizeof(v63));
  }

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v7 = sub_24A62E314();
    sub_24A506EB8(v7, qword_27EF5C118);
    v8 = a2;
    v9 = v3;
    v3 = sub_24A62E2F4();
    v10 = sub_24A62EF64();

    v55 = v9;
    v51 = v8;
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v54 = a3;
      v13 = swift_slowAlloc();
      *&v82 = v13;
      *v11 = 138412546;
      *(v11 + 4) = v55;
      *v12 = v55;
      *(v11 + 12) = 2080;
      *&v76 = a2;
      v14 = v55;
      v15 = v8;
      sub_24A508FA4(&qword_27EF50218, &qword_24A636260);
      v16 = sub_24A62EC44();
      v18 = a2;
      v19 = a1;
      v20 = sub_24A509BA8(v16, v17, &v82);

      *(v11 + 14) = v20;
      a1 = v19;
      a2 = v18;
      _os_log_impl(&dword_24A503000, v3, v10, "🧭 FMR1NIContxt%@: didUpdateRegion %s", v11, 0x16u);
      sub_24A50D6A4(v12, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v12, -1, -1);
      sub_24A508C54(v13);
      v21 = v13;
      a3 = v54;
      MEMORY[0x24C21BBE0](v21, -1, -1);
      v22 = v11;
      v9 = v55;
      MEMORY[0x24C21BBE0](v22, -1, -1);
    }

    v23 = [a1 discoveryToken];
    sub_24A569614(v63, &v82);
    v24 = *(&v83 + 1);
    if (!*(&v83 + 1))
    {
      sub_24A50D6A4(&v82, &unk_27EF501C0, &unk_24A636238);
      if (v23)
      {
        break;
      }

      goto LABEL_17;
    }

    a1 = v84;
    v3 = sub_24A50A204(&v82, *(&v83 + 1));
    v25 = a1[2](v24, a1);
    sub_24A508C54(&v82);
    if (v23)
    {
      if (!v25)
      {
        break;
      }

      sub_24A50D7EC(0, &qword_27EF501E8, 0x277CD8A30);
      v3 = sub_24A62F164();

      if ((v3 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    v23 = v25;
    if (v25)
    {
      break;
    }

LABEL_17:
    v53 = a2;
    if (a2 && (v3 = v51, sub_24A5AEBA8(v65), v67 != 255))
    {
      v70 = v65[2];
      v71 = v65[3];
      v72 = v65[4];
      v73 = v65[5];
      v68 = v65[0];
      v69 = v65[1];
      v74 = v66;
      v75 = v67;
      if (a3)
      {
        sub_24A5AEBA8(&v82);
        v79 = v85;
        v80 = v86;
        *v81 = v87[0];
        *&v81[15] = *(v87 + 15);
        v76 = v82;
        v77 = v83;
        v78 = v84;
      }

      else
      {
        v80 = 0u;
        memset(v81, 0, 18);
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v81[18] = -1;
      }

      v86 = v80;
      v87[0] = *v81;
      *(v87 + 15) = *&v81[15];
      v82 = v76;
      v83 = v77;
      v84 = v78;
      v85 = v79;
      v52 = sub_24A5AED58(&v82);
      v3 = &qword_24A635DE0;
      sub_24A50D6A4(v65, &qword_27EF50210, &qword_24A635DE0);
      sub_24A50D6A4(&v76, &qword_27EF50210, &qword_24A635DE0);
    }

    else
    {
      if (a3)
      {
        v32 = 2;
      }

      else
      {
        v32 = 3;
      }

      v52 = v32;
    }

    v33 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    a2 = *&v9[v33];
    if (a2 >> 62)
    {
      v34 = sub_24A62F464();
    }

    else
    {
      v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v34)
    {
LABEL_63:

      return sub_24A50D6A4(v63, &unk_27EF501C0, &unk_24A636238);
    }

    v35 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x24C21ACB0](v35, a2);
      }

      else
      {
        if (v35 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v36 = *(a2 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v39 = &v36[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        a3 = *(v39 + 1);
        if (v53)
        {
          v41 = [v51 name];
          v42 = sub_24A62EC14();
          v44 = v43;

          v45 = v42 == 0x646E756F66 && v44 == 0xE500000000000000;
          if (v45 || (sub_24A62F634() & 1) != 0)
          {

            *&v57 = 0;
            v46 = 3;
            goto LABEL_45;
          }

          if (v42 == 1701995880 && v44 == 0xE400000000000000 || (sub_24A62F634() & 1) != 0)
          {

            *&v57 = 0;
            v46 = 2;
            goto LABEL_45;
          }

          if (v42 == 1918985582 && v44 == 0xE400000000000000 || (sub_24A62F634() & 1) != 0)
          {

            *&v57 = 0;
            v46 = 1;
LABEL_45:
            v62[18] = v46;
LABEL_47:
            v80 = v61;
            *v81 = *v62;
            *&v81[15] = *&v62[15];
            v76 = v57;
            v77 = v58;
            v78 = v59;
            v79 = v60;
            ObjectType = swift_getObjectType();
            v56[3] = type metadata accessor for FMNearbyInteractionLocalizerContext();
            v56[4] = &off_285DA58A0;
            v56[0] = v55;
            a1 = *(a3 + 24);
            v48 = v55;
            (a1)(&v76, v52, v56, ObjectType, a3);

            sub_24A50D6A4(&v57, &qword_27EF50210, &qword_24A635DE0);
            swift_unknownObjectRelease();
            sub_24A508C54(v56);
            goto LABEL_32;
          }

          if (v42 == 7496038 && v44 == 0xE300000000000000)
          {

LABEL_60:
            *&v57 = 0;
            v62[18] = 0;
            goto LABEL_47;
          }

          v49 = sub_24A62F634();

          if (v49)
          {
            goto LABEL_60;
          }
        }

        v61 = 0u;
        memset(v62, 0, 18);
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v62[18] = -1;
        goto LABEL_47;
      }

LABEL_32:
      ++v35;
      if (v38 == v34)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

LABEL_13:
  v26 = v9;
  v27 = sub_24A62E2F4();
  v28 = sub_24A62EF64();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_24A503000, v27, v28, "🧭 FMR1NIContxt%@: region updated, However, nearby object discover tokens don't match", v29, 0xCu);
    sub_24A50D6A4(v30, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v30, -1, -1);
    MEMORY[0x24C21BBE0](v29, -1, -1);
  }

  return sub_24A50D6A4(v63, &unk_27EF501C0, &unk_24A636238);
}