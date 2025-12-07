uint64_t sub_22D6D2424(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v40 = type metadata accessor for Alarm(0);
  v8 = MEMORY[0x28223BE20](v40);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v41 = &v34 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v45 = a1;
  v44 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v24 = a4 + v17;
    }

    else
    {
      v22 = -v13;
      v23 = a4 + v17;
      v24 = a4 + v17;
      v37 = a1;
      v38 = a4;
      v36 = -v13;
      do
      {
        v34 = v24;
        v25 = a2 + v22;
        v39 = a2;
        v40 = a2 + v22;
        while (1)
        {
          if (a2 <= a1)
          {
            v45 = a2;
            v43 = v34;
            goto LABEL_59;
          }

          v35 = v24;
          v27 = a3 + v22;
          v28 = v23 + v22;
          v29 = v41;
          sub_22D6D56D8(v28, v41, type metadata accessor for Alarm);
          v30 = v25;
          v31 = v42;
          sub_22D6D56D8(v30, v42, type metadata accessor for Alarm);
          v32 = sub_22D717E28(v29, v31);
          sub_22D6D5740(v31, type metadata accessor for Alarm);
          sub_22D6D5740(v29, type metadata accessor for Alarm);
          if (v32)
          {
            break;
          }

          v24 = v28;
          if (a3 < v23 || v27 >= v23)
          {
            a3 = v27;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v37;
          }

          else
          {
            v33 = a3 == v23;
            a3 = v27;
            a1 = v37;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v28;
          a2 = v39;
          v26 = v28 > v38;
          v25 = v40;
          v22 = v36;
          if (!v26)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v39 || v27 >= v39)
        {
          a3 = v27;
          a2 = v40;
          swift_arrayInitWithTakeFrontToBack();
          v22 = v36;
          a1 = v37;
          v24 = v35;
        }

        else
        {
          v33 = a3 == v39;
          a3 = v27;
          a2 = v40;
          v22 = v36;
          a1 = v37;
          v24 = v35;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v38);
    }

LABEL_57:
    v45 = a2;
    v43 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v16;
    v43 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v41;
        sub_22D6D56D8(a2, v41, type metadata accessor for Alarm);
        v20 = v42;
        sub_22D6D56D8(a4, v42, type metadata accessor for Alarm);
        v21 = sub_22D717E28(v19, v20);
        sub_22D6D5740(v20, type metadata accessor for Alarm);
        sub_22D6D5740(v19, type metadata accessor for Alarm);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v44 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v45 = a1;
      }

      while (a4 < v39 && a2 < a3);
    }
  }

LABEL_59:
  sub_22D6D29B0(&v45, &v44, &v43);
  return 1;
}

uint64_t sub_22D6D2910(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22D6D299C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22D6D29B0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Alarm(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_22D6D2A94(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
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

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_22D6D2B38(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Alarm(0);
  v48 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v55 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = v43 - v11;
  v54 = sub_22D72D7A0();
  v52 = *(v54 - 8);
  v12 = MEMORY[0x28223BE20](v54);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = v43 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF308, &qword_22D7301B0);
  result = sub_22D72E8A0();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43[1] = v52 + 16;
  v44 = a2;
  v53 = v52 + 32;
  v20 = result + 64;
  v45 = a1;
  v43[0] = a4;
  v21 = v54;
  while (v18)
  {
    v22 = v14;
    v23 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_16:
    v26 = v23 | (v19 << 6);
    v27 = a4[6];
    v28 = v52;
    v51 = *(v52 + 72);
    v29 = v46;
    (*(v52 + 16))(v46, v27 + v51 * v26, v21);
    v30 = a4[7];
    v50 = *(v48 + 72);
    v31 = v30 + v50 * v26;
    v32 = v47;
    sub_22D6D56D8(v31, v47, type metadata accessor for Alarm);
    v33 = *(v28 + 32);
    v14 = v22;
    v33(v22, v29, v21);
    sub_22D6D3C4C(v32, v55);
    sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_22D72E3D0();
    v34 = -1 << *(v17 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a2 = v44;
      a1 = v45;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v20 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v20 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v33((*(v17 + 48) + v37 * v51), v14, v54);
    result = sub_22D6D3C4C(v55, *(v17 + 56) + v37 * v50);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43[0];
    v18 = v49;
    if (!a3)
    {
      return v17;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v22 = v14;
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22D6D2FA0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = sub_22D72E100();
  v54 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A0, &qword_22D730250);
  result = sub_22D72E8A0();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    sub_22D72EA20();

    v52 = v27;
    sub_22D72E4E0();
    result = sub_22D72EA40();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_22D6D3320(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D6D33A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22D6D3340(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D6D34D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D6D3360(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D6D35E4(a1, a2, a3, *v3, &qword_27D9FF380, &qword_22D730228, MEMORY[0x277CB9988]);
  *v3 = result;
  return result;
}

void *sub_22D6D33A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF368, &qword_22D730210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF370, &qword_22D730218);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22D6D34D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A8, &qword_22D730258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22D6D35E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_22D6D37C0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Alarm(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
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
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[7];
      v26 = *(v32 + 72);
      sub_22D6D56D8(v25 + v26 * (v24 | (v19 << 6)), v11, type metadata accessor for Alarm);
      sub_22D6D3C4C(v11, v14);
      sub_22D6D3C4C(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
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

      v18 = v15[v23];
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
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_22D6D3A48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2C0, &qword_22D730160);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2F0, &unk_22D730190);
    v7 = sub_22D72E8A0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22D6D5A4C(v9, v5, &qword_27D9FF2C0, &qword_22D730160);
      result = sub_22D6CC640(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22D72D9B0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 24 * v13;
      v17 = v8[16];
      *v16 = *v8;
      *(v16 + 16) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22D6D3C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_22D6D3D94(objc_class *a1, char a2)
{
  v5 = *(sub_22D72D850() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for Alarm(0) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22D6C1EB8(a1, a2 & 1, v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + v10), v2 + v12, *(v2 + v13), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_22D6D3F3C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_22D6D3F68(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22D6D3FBC()
{
  v1 = *(type metadata accessor for Alarm(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_22D72D890() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2D8, &qword_22D730178) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v0 + 16);
  v10 = *(v0 + v3);
  v11 = *(v0 + v3 + 8);
  v12 = *(v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22D6C3064(v9, v0 + v2, v10, v11, v0 + v5, v0 + v8, v12);
}

id sub_22D6D4164(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_22D6D4190()
{
  sub_22D72D910();
  v1 = *(v0 + 16);
  v2 = sub_22D72D900();
  v1(v2);
}

uint64_t sub_22D6D42A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22D6D430C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22D6D4390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF350, &qword_22D730FF0);
    v3 = sub_22D72E8A0();
    v4 = a1 + 32;

    while (1)
    {
      sub_22D6D5A4C(v4, &v13, &qword_27D9FF348, &unk_22D7301F0);
      v5 = v13;
      v6 = v14;
      result = sub_22D6CC714(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22D6D5254(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22D6D44C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF428, &qword_22D7302E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A0, &qword_22D730250);
    v7 = sub_22D72E8A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22D6D5A4C(v9, v5, &qword_27D9FF428, &qword_22D7302E8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22D6CC714(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_22D72E100();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22D6D46AC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a2;
  v43 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v6 = MEMORY[0x28223BE20](v59);
  v53 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v42 - v8;
  v9 = type metadata accessor for Alarm(0);
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22D72D7A0();
  v11 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v50 = a4;
  swift_beginAccess();
  v44 = 0;
  v19 = 0;
  v20 = (v16 + 63) >> 6;
  v47 = v11 + 16;
  v48 = v11;
  v51 = (v11 + 8);
  v46 = v14;
  while (v18)
  {
    v24 = __clz(__rbit64(v18));
    v54 = (v18 - 1) & v18;
LABEL_13:
    v27 = v24 | (v19 << 6);
    v28 = v52;
    v29 = *(v48 + 16);
    v31 = v55;
    v30 = v56;
    v29(v55, v52[6] + *(v48 + 72) * v27, v56);
    v32 = v28[7];
    v33 = *(v49 + 72);
    v45 = v27;
    v34 = v57;
    sub_22D6D56D8(v32 + v33 * v27, v57, type metadata accessor for Alarm);
    v35 = v58;
    v29(v58, v31, v30);
    sub_22D6D56D8(v34, v35 + *(v59 + 48), type metadata accessor for Alarm);
    v36 = v35;
    v21 = v53;
    sub_22D6D5A4C(v36, v53, &unk_27D9FF4A0, &qword_22D730510);
    v14 = v46;
    if (*(*(v50 + 232) + 16))
    {

      sub_22D6CC49C(v21);
      if ((v37 & 1) == 0)
      {

        v21 = v53;
        goto LABEL_5;
      }

      sub_22D6D5984(v58, &unk_27D9FF4A0, &qword_22D730510);

      v38 = v53;
      sub_22D6D5740(v53 + *(v59 + 48), type metadata accessor for Alarm);
      v39 = *v51;
      v40 = v56;
      (*v51)(v38, v56);
      sub_22D6D5740(v57, type metadata accessor for Alarm);
      v39(v55, v40);
      *(v43 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v41 = __OFADD__(v44++, 1);
      v18 = v54;
      if (v41)
      {
        __break(1u);
LABEL_18:
        sub_22D6D2B38(v43, v42, v44, v52);
        return;
      }
    }

    else
    {
LABEL_5:
      sub_22D6D5984(v58, &unk_27D9FF4A0, &qword_22D730510);
      sub_22D6D5740(v21 + *(v59 + 48), type metadata accessor for Alarm);
      v22 = *v51;
      v23 = v56;
      (*v51)(v21, v56);
      sub_22D6D5740(v57, type metadata accessor for Alarm);
      v22(v55, v23);
      v18 = v54;
    }
  }

  v25 = v19;
  while (1)
  {
    v19 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      goto LABEL_18;
    }

    v26 = v14[v19];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v54 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_22D6D4B98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v42 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v6 = MEMORY[0x28223BE20](v58);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v41 - v8;
  v9 = type metadata accessor for Alarm(0);
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22D72D7A0();
  v11 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a3;
  v13 = *(a3 + 64);
  v44 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v50 = a4;
  swift_beginAccess();
  v17 = 0;
  v18 = 0;
  v19 = (v14 + 63) >> 6;
  v46 = v11 + 16;
  v47 = v11;
  v51 = (v11 + 8);
  while (1)
  {
    v43 = v17;
    if (!v16)
    {
      break;
    }

    while (1)
    {
      v20 = __clz(__rbit64(v16));
      v53 = (v16 - 1) & v16;
LABEL_11:
      v23 = v20 | (v18 << 6);
      v24 = v52;
      v25 = *(v47 + 16);
      v27 = v54;
      v26 = v55;
      v25(v54, v52[6] + *(v47 + 72) * v23, v55);
      v28 = v24[7];
      v29 = *(v48 + 72);
      v45 = v23;
      v30 = v28 + v29 * v23;
      v31 = v57;
      sub_22D6D56D8(v30, v57, type metadata accessor for Alarm);
      v32 = v56;
      v25(v56, v27, v26);
      sub_22D6D56D8(v31, v32 + *(v58 + 48), type metadata accessor for Alarm);
      v33 = v49;
      sub_22D6D5A4C(v32, v49, &unk_27D9FF4A0, &qword_22D730510);
      if (!*(*(v50 + 232) + 16))
      {
        break;
      }

      sub_22D6CC49C(v33);
      if ((v34 & 1) == 0)
      {

        break;
      }

      sub_22D6D5984(v56, &unk_27D9FF4A0, &qword_22D730510);

      sub_22D6D5740(v33 + *(v58 + 48), type metadata accessor for Alarm);
      v35 = v33;
      v36 = *v51;
      v37 = v55;
      (*v51)(v35, v55);
      sub_22D6D5740(v57, type metadata accessor for Alarm);
      v36(v54, v37);
      v16 = v53;
      if (!v53)
      {
        goto LABEL_6;
      }
    }

    sub_22D6D5984(v56, &unk_27D9FF4A0, &qword_22D730510);
    sub_22D6D5740(v33 + *(v58 + 48), type metadata accessor for Alarm);
    v38 = v33;
    v39 = *v51;
    v40 = v55;
    (*v51)(v38, v55);
    sub_22D6D5740(v57, type metadata accessor for Alarm);
    v39(v54, v40);
    *(v42 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v17 = v43 + 1;
    v16 = v53;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_19:
      sub_22D6D2B38(v42, v41, v43, v52);
      return;
    }
  }

LABEL_6:
  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= v19)
    {
      goto LABEL_19;
    }

    v22 = *(v44 + 8 * v18);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v53 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_22D6D5084(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  v14 = swift_retain_n();
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v15 = sub_22D6D2A94(v17, v12, a1, a2, a4);
      MEMORY[0x2318D0420](v17, -1, -1);

      return v15;
    }
  }

  MEMORY[0x28223BE20](v14);
  bzero(v18 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v13);

  v15 = a3(v18 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v12, a1, a2);

  if (v7)
  {
    swift_willThrow();
  }

  return v15;
}

_OWORD *sub_22D6D5254(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22D6D5264(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_22D6D5270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22D6D52CC()
{
  v1 = *(type metadata accessor for Alarm(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_22D6BB5AC(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_31Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D6D53A0(void *a1, char a2)
{
  v5 = *(type metadata accessor for Alarm(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22D72D850() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_22D6C45E4(a1, a2 & 1, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), v2 + v9, *v10, *(v10 + 8));
}

uint64_t sub_22D6D54CC()
{
  v1 = *(type metadata accessor for Alarm(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22D72D850() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = (v0 + v6);
  v10 = *(v0 + v7);
  v11 = *v9;
  v12 = v9[1];
  v13 = (v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_22D6C50F8(v8, v0 + v2, v0 + v5, v11, v12, v10, v14, v15);
}

uint64_t sub_22D6D5664(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22D6D56D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D6D5740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22D6D57A0(void *a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for Alarm(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_22D6CAAB4(a1, a2, a3 & 1, v8);
}

void sub_22D6D5828(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_22D6D5838()
{
  result = qword_281457170;
  if (!qword_281457170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281457170);
  }

  return result;
}

uint64_t sub_22D6D5884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D6D58D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22D6D591C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D6D5984(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22D6D5A4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActivityManager.ActivityManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityManager.ActivityManagerError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22D6D5C14()
{
  result = qword_27D9FF430;
  if (!qword_27D9FF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF430);
  }

  return result;
}

uint64_t sub_22D6D5DB4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v34 = a2;
  v35 = a1;
  v32 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v31 = *(v36 - 8);
  v7 = MEMORY[0x28223BE20](v36);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v37 = a3;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v9;
      v38 = v5;
      v19 = v17;
LABEL_9:
      v20 = __clz(__rbit64(v14)) | (v19 << 6);
      v21 = v37;
      v22 = *(v37 + 48);
      v23 = sub_22D72D7A0();
      v24 = v33;
      (*(*(v23 - 8) + 16))(v33, v22 + *(*(v23 - 8) + 72) * v20, v23);
      v25 = *(v21 + 56);
      v26 = type metadata accessor for Alarm(0);
      sub_22D6F37E4(v25 + *(*(v26 - 8) + 72) * v20, v24 + *(v36 + 48));
      v9 = v18;
      sub_22D6D591C(v24, v18, &unk_27D9FF4A0, &qword_22D730510);
      v27 = v38;
      v28 = v35(v18);
      v5 = v27;
      if (v27)
      {
        sub_22D6D5984(v18, &unk_27D9FF4A0, &qword_22D730510);
      }

      if (v28)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_22D6D5984(v18, &unk_27D9FF4A0, &qword_22D730510);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v29 = v32;
    sub_22D6D591C(v9, v32, &unk_27D9FF4A0, &qword_22D730510);
    return (*(v31 + 56))(v29, 0, 1, v36);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        return (*(v31 + 56))(v32, 1, 1, v36);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v9;
        v38 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D6D60B0()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 248);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF598, &qword_22D730598);
    sub_22D6D58D4(&qword_281457210, &unk_27D9FF598, &qword_22D730598, MEMORY[0x277CBCE20]);
    v1 = sub_22D72DC70();
    *(v0 + 248) = v1;
  }

  return v1;
}

uint64_t sub_22D6D6174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC12AlarmKitCore12AlarmManager_queue_nextEventDate;
  swift_beginAccess();
  return sub_22D6D5A4C(a1 + v4, a2, &qword_27D9FFDD0, &qword_22D730140);
}

uint64_t sub_22D6D61E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 216);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22D6F4F00;
  *(v8 + 24) = v7;
  v11[4] = sub_22D6F5ACC;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22D6BEF78;
  v11[3] = &block_descriptor_165;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D6D6358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D72E300();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D72E370();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D6D6648();
  sub_22D6D696C();
  sub_22D6D6B30();
  sub_22D6D6E54();
  sub_22D6D7178();
  sub_22D6D7C3C();
  v16[1] = *(a1 + 224);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_22D6D413C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_171;
  v14 = _Block_copy(aBlock);

  sub_22D72E330();
  v18 = MEMORY[0x277D84F90];
  sub_22D6F4F0C(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_22D6D6648()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5E0, &qword_22D7305D0);
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  v14 = sub_22D719D58();
  v7 = v0[27];
  v15 = v7;
  v8 = sub_22D72E5E0();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFF30, &unk_22D7305D8);
  sub_22D6D5838();
  sub_22D6D58D4(&qword_281457230, &qword_27D9FFF30, &unk_22D7305D8, MEMORY[0x277CBCD90]);
  sub_22D6F4F0C(&qword_281457180, sub_22D6D5838, MEMORY[0x277D85228]);
  sub_22D72DCA0();
  sub_22D6D5984(v3, &qword_27D9FF9B0, &qword_22D7302B0);

  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&qword_281457278, &qword_27D9FF5E0, &qword_22D7305D0, MEMORY[0x277CBCD60]);
  v10 = v13;
  sub_22D72DCB0();

  (*(v4 + 8))(v6, v10);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();
}

void sub_22D6D696C()
{
  v1 = *(v0 + 216);
  v2 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_22D6F5678;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22D6EAEFC;
  v9[3] = &block_descriptor_184;
  v3 = _Block_copy(v9);

  swift_beginAccess();
  v4 = notify_register_dispatch("SignificantTimeChangeNotification", (v0 + 240), v1, v3);
  swift_endAccess();
  _Block_release(v3);
  if (v4)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v5 = sub_22D72DBE0();
    __swift_project_value_buffer(v5, qword_2814580E8);
    v6 = sub_22D72DBB0();
    v7 = sub_22D72E580();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_22D6B4000, v6, v7, "Unable to register for significant time change notifications: %{public}u", v8, 8u);
      MEMORY[0x2318D0420](v8, -1, -1);
    }
  }
}

uint64_t sub_22D6D6B30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5D0, &unk_22D7305C0);
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  v14 = sub_22D6F5D3C();
  v7 = v0[27];
  v15 = v7;
  v8 = sub_22D72E5E0();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5D8, qword_22D731140);
  sub_22D6D5838();
  sub_22D6D58D4(&qword_281457260, &qword_27D9FF5D8, qword_22D731140, MEMORY[0x277CBCD90]);
  sub_22D6F4F0C(&qword_281457180, sub_22D6D5838, MEMORY[0x277D85228]);
  sub_22D72DCA0();
  sub_22D6D5984(v3, &qword_27D9FF9B0, &qword_22D7302B0);

  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&unk_281457288, &qword_27D9FF5D0, &unk_22D7305C0, MEMORY[0x277CBCD60]);
  v10 = v13;
  sub_22D72DCB0();

  (*(v4 + 8))(v6, v10);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();
}

uint64_t sub_22D6D6E54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5C0, &qword_22D7305B0);
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v14 = sub_22D6BA810();
  v7 = v0[27];
  v15 = v7;
  v8 = sub_22D72E5E0();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5C8, &qword_22D7305B8);
  sub_22D6D5838();
  sub_22D6D58D4(&qword_281457268, &qword_27D9FF5C8, &qword_22D7305B8, MEMORY[0x277CBCD90]);
  sub_22D6F4F0C(&qword_281457180, sub_22D6D5838, MEMORY[0x277D85228]);
  sub_22D72DCA0();
  sub_22D6D5984(v3, &qword_27D9FF9B0, &qword_22D7302B0);

  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&qword_281457298, &qword_27D9FF5C0, &qword_22D7305B0, MEMORY[0x277CBCD60]);
  v10 = v13;
  sub_22D72DCB0();

  (*(v4 + 8))(v6, v10);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();
}

uint64_t sub_22D6D7178()
{
  v1 = type metadata accessor for Alarm(0);
  v87 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v100 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v88 = &v78 - v4;
  v99 = sub_22D72D7A0();
  v90 = *(v99 - 8);
  v5 = MEMORY[0x28223BE20](v99);
  v83 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v93 = &v78 - v8;
  MEMORY[0x28223BE20](v7);
  v86 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v78 - v14;
  v15 = sub_22D72E380();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (v78.n128_u64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = v0;
  v19 = *(v0 + 216);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v20 = v19;
  LOBYTE(v19) = sub_22D72E390();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (qword_2814572C8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v21 = sub_22D72DBE0();
  v82 = __swift_project_value_buffer(v21, qword_2814580E8);
  v22 = sub_22D72DBB0();
  v23 = sub_22D72E5A0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_22D6B4000, v22, v23, "Removing expired alarms", v24, 2u);
    MEMORY[0x2318D0420](v24, -1, -1);
  }

  v25 = __swift_project_boxed_opaque_existential_1((v96 + 176), *(v96 + 200));
  v26 = *(*v25 + 56);
  MEMORY[0x28223BE20](v25);
  *(&v78 - 2) = sub_22D6F5AF8;
  *(&v78 - 1) = v27;
  os_unfair_lock_lock(v26 + 4);
  v28 = 0;
  sub_22D6F5A78(v101);
  os_unfair_lock_unlock(v26 + 4);
  v29 = *(v101[0] + 64);
  v85 = v101[0] + 64;
  v89 = v101[0];
  v30 = 1 << *(v101[0] + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  swift_beginAccess();
  v33 = 0;
  v84 = (v30 + 63) >> 6;
  v95 = (v90 + 16);
  v98 = (v90 + 32);
  v92 = (v90 + 8);
  v34.n128_u64[0] = 136446466;
  v78 = v34;
  v35 = v99;
  v36 = v93;
  v91 = v13;
  while (1)
  {
    if (!v32)
    {
      if (v84 <= v33 + 1)
      {
        v38 = v33 + 1;
      }

      else
      {
        v38 = v84;
      }

      v39 = v38 - 1;
      while (1)
      {
        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v37 >= v84)
        {
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
          (*(*(v75 - 8) + 56))(v13, 1, 1, v75);
          v32 = 0;
          goto LABEL_20;
        }

        v32 = *(v85 + 8 * v37);
        ++v33;
        if (v32)
        {
          v97 = v28;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v97 = v28;
    v37 = v33;
LABEL_19:
    v40 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v41 = v40 | (v37 << 6);
    v42 = v89;
    v43 = v90;
    v44 = v86;
    (*(v90 + 16))(v86, *(v89 + 48) + *(v90 + 72) * v41, v35);
    v45 = *(v42 + 56) + *(v87 + 72) * v41;
    v46 = v88;
    sub_22D6F37E4(v45, v88);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v48 = *(v47 + 48);
    v49 = *(v43 + 32);
    v13 = v91;
    v49(v91, v44, v35);
    sub_22D6D3C4C(v46, &v13[v48]);
    (*(*(v47 - 8) + 56))(v13, 0, 1, v47);
    v39 = v37;
    v28 = v97;
    v36 = v93;
LABEL_20:
    v50 = v94;
    sub_22D6D591C(v13, v94, &qword_27D9FF9E0, &qword_22D730298);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
    }

    v33 = v39;
    v52 = *(v51 + 48);
    v35 = v99;
    (*v98)(v36, v50, v99);
    sub_22D6D3C4C(v50 + v52, v100);
    sub_22D6D5A4C(v96 + 16, v101, &qword_27D9FF500, &qword_22D730530);
    LOBYTE(v52) = sub_22D714670(v101);
    sub_22D6D5984(v101, &qword_27D9FF500, &qword_22D730530);
    if (v52)
    {
      v53 = __swift_project_boxed_opaque_existential_1((v96 + 176), *(v96 + 200));
      v54 = *(*v53 + 56);
      v55 = MEMORY[0x28223BE20](v53);
      *(&v78 - 2) = v56;
      *(&v78 - 1) = v36;
      MEMORY[0x28223BE20](v55);
      *(&v78 - 2) = sub_22D6F5A60;
      *(&v78 - 1) = v57;
      os_unfair_lock_lock(v54 + 4);
      sub_22D6F5B28(v58);
      v59 = v54 + 4;
      if (v28)
      {
        os_unfair_lock_unlock(v59);
        v60 = v83;
        v35 = v99;
        (*v95)(v83, v36, v99);
        v61 = v28;
        v62 = sub_22D72DBB0();
        v63 = sub_22D72E580();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = v60;
          v65 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v101[0] = v81;
          *v65 = v78.n128_u32[0];
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v79 = v63;
          v66 = sub_22D72E960();
          v68 = v67;
          v97 = *v92;
          v69 = v64;
          v36 = v93;
          v97(v69, v99);
          v70 = sub_22D72891C(v66, v68, v101);
          v13 = v91;
          v35 = v99;

          *(v65 + 4) = v70;
          *(v65 + 12) = 2114;
          v71 = v28;
          v72 = _swift_stdlib_bridgeErrorToNSError();
          *(v65 + 14) = v72;
          v73 = v80;
          *v80 = v72;
          _os_log_impl(&dword_22D6B4000, v62, v79, "%{public}s Could not remove expired alarm from store: %{public}@", v65, 0x16u);
          sub_22D6D5984(v73, &unk_27D9FF4D0, &qword_22D730180);
          MEMORY[0x2318D0420](v73, -1, -1);
          v74 = v81;
          __swift_destroy_boxed_opaque_existential_1Tm(v81);
          MEMORY[0x2318D0420](v74, -1, -1);
          MEMORY[0x2318D0420](v65, -1, -1);

          sub_22D6F3848(v100);
          v97(v36, v35);
        }

        else
        {

          v76 = *v92;
          (*v92)(v60, v35);
          sub_22D6F3848(v100);
          v76(v36, v35);
        }

        v28 = 0;
      }

      else
      {
        os_unfair_lock_unlock(v59);
        sub_22D6F3848(v100);
        v35 = v99;
        (*v92)(v36, v99);
      }
    }

    else
    {
      sub_22D6F3848(v100);
      (*v92)(v36, v35);
    }
  }
}

uint64_t sub_22D6D7C3C()
{
  v1 = v0;
  v2 = sub_22D72D730();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v109 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v110 = &v100 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v112 = &v100 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v114 = &v100 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v100 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v108 = &v100 - v16;
  MEMORY[0x28223BE20](v15);
  v113 = &v100 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v115 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v100 - v21;
  v23 = sub_22D72E380();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = (&v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v1 + 216);
  *v26 = v27;
  (*(v24 + 104))(v26, *MEMORY[0x277D85200], v23);
  v28 = v27;
  LOBYTE(v27) = sub_22D72E390();
  (*(v24 + 8))(v26, v23);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v29 = swift_allocBox();
  v31 = v30;
  sub_22D6ECA00(v22);
  if ((*(v3 + 48))(v22, 1, v2) == 1)
  {
    sub_22D6D5984(v22, &qword_27D9FFDD0, &qword_22D730140);
    swift_deallocBox();
    if (qword_2814572C8 == -1)
    {
LABEL_4:
      v32 = sub_22D72DBE0();
      __swift_project_value_buffer(v32, qword_2814580E8);
      v33 = sub_22D72DBB0();
      v34 = sub_22D72E5A0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22D6B4000, v33, v34, "No events due to fire", v35, 2u);
        MEMORY[0x2318D0420](v35, -1, -1);
      }

      v37 = *(v1 + 280);
      if (v37)
      {
        v38 = *(v37 + 24);
        MEMORY[0x28223BE20](v36);
        *(&v100 - 2) = sub_22D6F452C;
        *(&v100 - 1) = v37;

        os_unfair_lock_lock(v38 + 4);
        sub_22D6F5B28(v39);
        os_unfair_lock_unlock(v38 + 4);
      }

      *(v1 + 280) = 0;

      v97 = *(v3 + 56);
      v98 = v115;
      v97(v115, 1, 1, v2);
      v99 = OBJC_IVAR____TtC12AlarmKitCore12AlarmManager_queue_nextEventDate;
      swift_beginAccess();
      sub_22D6F4548(v98, v1 + v99);
      swift_endAccess();
      v97(v98, 1, 1, v2);
      sub_22D72DC10();
      return sub_22D6D5984(v98, &qword_27D9FFDD0, &qword_22D730140);
    }

LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v107 = v29;
  v103 = v1;
  v40 = *(v3 + 32);
  v40(v31, v22, v2);
  v41 = v113;
  sub_22D72D710();
  v42 = (v3 + 16);
  v43 = *(v3 + 16);
  v111 = v31;
  v43(v14, v31, v2);
  v106 = sub_22D6F4F0C(&unk_27D9FF4E0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v44 = sub_22D72E3F0();
  v101 = v40;
  if (v44)
  {
    (*(v3 + 8))(v14, v2);
    v45 = v108;
    v43(v108, v41, v2);
  }

  else
  {
    v45 = v108;
    v40(v108, v14, v2);
  }

  v46 = v41;
  v47 = v3;
  v48 = *(v3 + 40);
  v49 = v111;
  v102 = v48;
  v48(v111, v45, v2);
  v50 = v112;
  v43(v112, v49, v2);
  v51 = v114;
  sub_22D72D6A0();
  v105 = v47;
  v52 = v2;
  v53 = *(v47 + 8);
  v53(v50, v52);
  v54 = v109;
  v43(v109, v51, v52);
  v55 = sub_22D72E3F0();
  v104 = v43;
  v106 = v53;
  v108 = (v47 + 8);
  if (v55)
  {
    v53(v54, v52);
    v56 = v110;
    v43(v110, v46, v52);
  }

  else
  {
    v56 = v110;
    v101(v110, v54, v52);
  }

  v57 = v52;
  v58 = v114;
  v59 = v102(v114, v56, v52);
  v60 = v103;
  v61 = *(v103 + 280);
  if (v61)
  {
    v62 = *(v61 + 24);
    MEMORY[0x28223BE20](v59);
    *(&v100 - 2) = sub_22D6F5B10;
    *(&v100 - 1) = v61;

    os_unfair_lock_lock(v62 + 4);
    sub_22D6F5B28(v63);
    os_unfair_lock_unlock(v62 + 4);
  }

  v110 = v42;
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v64 = sub_22D72DBE0();
  __swift_project_value_buffer(v64, qword_2814580E8);
  v65 = sub_22D72DBB0();
  v66 = sub_22D72E5A0();
  v67 = os_log_type_enabled(v65, v66);
  v68 = v105;
  if (v67)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v116[0] = v70;
    *v69 = 136446210;
    swift_beginAccess();
    sub_22D6F4F0C(&unk_27D9FF4F0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v71 = sub_22D72E960();
    v73 = sub_22D72891C(v71, v72, v116);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_22D6B4000, v65, v66, "Next wake date is %{public}s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x2318D0420](v70, -1, -1);
    MEMORY[0x2318D0420](v69, -1, -1);
  }

  v74 = v104;
  v75 = v106;
  type metadata accessor for SequencingTaskScheduler();
  v76 = swift_allocObject();
  *(v76 + 16) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  *(v76 + 24) = v77;
  type metadata accessor for SequencingTaskScheduler.Builder();
  *(v76 + 32) = 0;
  *(v76 + 40) = 0;
  *(v76 + 48) = 0;
  *(swift_initStackObject() + 16) = v76;
  swift_beginAccess();
  sub_22D6FE8CC(v58);

  sub_22D6FEAAC(v58);

  sub_22D6FECC0();

  sub_22D6FECE0();

  v78 = v112;
  v74(v112, v111, v57);
  sub_22D6FEAAC(v78);

  v75(v78, v57);
  v79 = swift_allocObject();
  swift_weakInit();
  v80 = swift_allocObject();
  v81 = v107;
  *(v80 + 16) = v79;
  *(v80 + 24) = v81;

  v82 = sub_22D6FEE1C(sub_22D6F45B8, v80);

  v83 = *(v82 + 16);
  swift_beginAccess();
  v84 = *(v83 + 16);
  if (*(v84 + 16))
  {
    sub_22D6D42A8(v84 + 32, v116);
    v85 = v117;
    v86 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v87 = *(v86 + 8);

    v87(v88, 0, v85, v86);
    v74 = v104;
    v68 = v105;

    __swift_destroy_boxed_opaque_existential_1Tm(v116);
  }

  *(v60 + 280) = v83;

  v89 = v111;
  swift_beginAccess();
  v90 = v115;
  v74(v115, v89, v57);
  v91 = *(v68 + 56);
  v91(v90, 0, 1, v57);
  v92 = OBJC_IVAR____TtC12AlarmKitCore12AlarmManager_queue_nextEventDate;
  swift_beginAccess();
  sub_22D6F4548(v90, v60 + v92);
  swift_endAccess();
  v74(v90, v89, v57);
  v91(v90, 0, 1, v57);
  sub_22D72DC10();
  sub_22D6D5984(v90, &qword_27D9FFDD0, &qword_22D730140);
  v93 = v57;
  v94 = v57;
  v95 = v106;
  v106(v113, v93);
  v95(v58, v94);
}

uint64_t sub_22D6D89E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v82 = a7;
  v80 = a6;
  v85 = a4;
  v86 = a5;
  v83 = a2;
  v84 = a3;
  v90 = sub_22D72E190();
  v8 = *(v90 - 8);
  v9 = MEMORY[0x28223BE20](v90);
  v77 = &v65[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = v10;
  MEMORY[0x28223BE20](v9);
  v88 = &v65[-v11];
  v12 = sub_22D72D7A0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v73 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v65[-v17];
  v76 = v19;
  MEMORY[0x28223BE20](v16);
  v21 = &v65[-v20];
  sub_22D72D790();
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v22 = sub_22D72DBE0();
  __swift_project_value_buffer(v22, qword_2814580E8);
  v23 = *(v13 + 16);
  v89 = v21;
  v75 = v23;
  v23(v18, v21, v12);
  v24 = *(v8 + 16);
  v79 = a1;
  v72 = v24;
  v24(v88, a1, v90);
  v25 = sub_22D72DBB0();
  v26 = sub_22D72E5A0();
  v27 = os_log_type_enabled(v25, v26);
  v87 = v12;
  v70 = v13;
  if (v27)
  {
    v28 = v13;
    v29 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v91[0] = v68;
    *v29 = 136446466;
    v74 = sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v67 = v25;
    v30 = sub_22D72E960();
    v69 = v8;
    v32 = v31;
    v66 = v26;
    v33 = *(v28 + 8);
    v71 = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v18, v12);
    v34 = sub_22D72891C(v30, v32, v91);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    v35 = v73;
    v36 = v88;
    sub_22D72E170();
    v37 = sub_22D72E960();
    v39 = v38;
    v74 = v33;
    v33(v35, v12);
    (*(v69 + 8))(v36, v90);
    v40 = sub_22D72891C(v37, v39, v91);

    *(v29 + 14) = v40;
    v8 = v69;
    v41 = v67;
    _os_log_impl(&dword_22D6B4000, v67, v66, "%{public}s: Scheduling alarm %{public}s", v29, 0x16u);
    v42 = v68;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v42, -1, -1);
    MEMORY[0x2318D0420](v29, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v88, v90);
    v43 = *(v13 + 8);
    v71 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74 = v43;
    v43(v18, v12);
    v35 = v73;
  }

  v44 = v81;
  v88 = __swift_project_boxed_opaque_existential_1((v81 + 136), *(v81 + 160));
  v45 = v77;
  v46 = v90;
  v72(v77, v79, v90);
  v75(v35, v89, v87);
  v47 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v48 = (v78 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = v70;
  v50 = v46;
  v51 = (*(v70 + 80) + v48 + 16) & ~*(v70 + 80);
  v52 = v35;
  v53 = (v76 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v8;
  v56 = v54;
  *(v54 + 16) = v44;
  (*(v55 + 32))(v54 + v47, v45, v50);
  v57 = (v56 + v48);
  v59 = v83;
  v58 = v84;
  *v57 = v83;
  v57[1] = v58;
  v60 = v56 + v51;
  v61 = v87;
  (*(v49 + 32))(v60, v52, v87);
  v62 = (v56 + v53);
  v63 = v82;
  *v62 = v80;
  v62[1] = v63;

  sub_22D6F6E50(v59, v58, v85, v86, sub_22D6F4998, v56);

  return v74(v89, v61);
}

uint64_t sub_22D6D9040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v115 = a7;
  v116 = a8;
  v113 = a6;
  v104 = a5;
  v103 = a4;
  v102 = a3;
  v119 = a2;
  v117 = a1;
  v8 = sub_22D72E300();
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x28223BE20](v8);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D72E370();
  v109 = *(v10 - 8);
  v110 = v10;
  MEMORY[0x28223BE20](v10);
  v107 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22D72D7A0();
  v114 = *(v118 - 8);
  v12 = *(v114 + 64);
  v13 = MEMORY[0x28223BE20](v118);
  v106 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v97 = &v96 - v15;
  MEMORY[0x28223BE20](v14);
  v105 = &v96 - v16;
  v101 = sub_22D72E190();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = v17;
  v99 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D72E100();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v96 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v96 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v96 - v29);
  sub_22D6D5A4C(v117, &v96 - v29, &unk_27D9FFAC0, &qword_22D7306F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v32 = sub_22D72DBE0();
    __swift_project_value_buffer(v32, qword_2814580E8);
    v33 = v114;
    v34 = v106;
    v35 = v118;
    (*(v114 + 16))(v106, v113, v118);
    v36 = v31;
    v37 = sub_22D72DBB0();
    v38 = sub_22D72E580();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock = v41;
      *v39 = 136446466;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = sub_22D72E960();
      v43 = v34;
      v45 = v44;
      (*(v33 + 8))(v43, v35);
      v46 = sub_22D72891C(v42, v45, &aBlock);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2114;
      v47 = v31;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v48;
      *v40 = v48;
      _os_log_impl(&dword_22D6B4000, v37, v38, "%{public}s: Failed to get current authorization state: %{public}@", v39, 0x16u);
      sub_22D6D5984(v40, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x2318D0420](v41, -1, -1);
      MEMORY[0x2318D0420](v39, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v34, v35);
    }

    v71 = swift_allocObject();
    v72 = v116;
    *(v71 + 16) = v115;
    *(v71 + 24) = v72;
    v125 = sub_22D6F5AC8;
    v126 = v71;
    aBlock = MEMORY[0x277D85DD0];
    v122 = 1107296256;
    v123 = sub_22D6C0FD8;
    v124 = &block_descriptor_118;
    v73 = _Block_copy(&aBlock);

    v74 = v107;
    sub_22D72E330();
    v120 = MEMORY[0x277D84F90];
    sub_22D6F4F0C(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v75 = v108;
    v76 = v112;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v74, v75, v73);
    _Block_release(v73);

    (v111[1].isa)(v75, v76);
    (*(v109 + 8))(v74, v110);
  }

  (*(v19 + 32))(v27, v30, v18);
  (*(v19 + 16))(v25, v27, v18);
  v49 = (*(v19 + 88))(v25, v18);
  v50 = *MEMORY[0x277CB9AB0];
  v51 = v18;
  if (v49 == *MEMORY[0x277CB9AB8] || v49 == *MEMORY[0x277CB9AC0])
  {
LABEL_11:
    (*(v19 + 104))(v22, v50, v51);
    v67 = sub_22D72E0E0();
    v70 = *(v19 + 8);
    v68 = v19 + 8;
    v69 = v70;
    v70(v22, v51);
    if (v67)
    {
      return v69(v27, v51);
    }

    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v117 = v68;
    v106 = v51;
    v77 = sub_22D72DBE0();
    __swift_project_value_buffer(v77, qword_2814580E8);
    v78 = v114;
    v79 = v97;
    v80 = v118;
    (*(v114 + 16))(v97, v113, v118);
    v81 = sub_22D72DBB0();
    v82 = sub_22D72E580();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      aBlock = v84;
      *v83 = 136446210;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v85 = sub_22D72E960();
      v86 = v79;
      v88 = v87;
      (*(v78 + 8))(v86, v80);
      v89 = sub_22D72891C(v85, v88, &aBlock);

      *(v83 + 4) = v89;
      _os_log_impl(&dword_22D6B4000, v81, v82, "%{public}s: Client does not have user authorization to schedule alarms", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x2318D0420](v84, -1, -1);
      MEMORY[0x2318D0420](v83, -1, -1);
    }

    else
    {

      (*(v78 + 8))(v79, v80);
    }

    v90 = swift_allocObject();
    v91 = v116;
    *(v90 + 16) = v115;
    *(v90 + 24) = v91;
    v125 = sub_22D6F4AB4;
    v126 = v90;
    aBlock = MEMORY[0x277D85DD0];
    v122 = 1107296256;
    v123 = sub_22D6C0FD8;
    v124 = &block_descriptor_124;
    v92 = _Block_copy(&aBlock);

    v93 = v107;
    sub_22D72E330();
    v120 = MEMORY[0x277D84F90];
    sub_22D6F4F0C(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v94 = v108;
    v95 = v112;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v93, v94, v92);
    _Block_release(v92);
    (v111[1].isa)(v94, v95);
    (*(v109 + 8))(v93, v110);
    v69(v27, v106);
  }

  v112 = v27;
  v117 = v19;
  v106 = v18;
  if (v49 != v50)
  {
    result = sub_22D72E970();
    __break(1u);
    return result;
  }

  v52 = v119;
  v111 = *(v119 + 216);
  v53 = v100;
  v54 = v99;
  v55 = v101;
  (*(v100 + 16))(v99, v102, v101);
  v56 = v114;
  (*(v114 + 16))(v105, v113, v118);
  v57 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v58 = (v98 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (*(v56 + 80) + v58 + 16) & ~*(v56 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v52;
  (*(v53 + 32))(v51 + v57, v54, v55);
  v60 = (v51 + v58);
  v61 = v104;
  *v60 = v103;
  v60[1] = v61;
  v62 = *(v56 + 32);
  v27 = (v56 + 32);
  v62(v51 + v59, v105, v118);
  v63 = (v51 + ((v12 + v59 + 7) & 0xFFFFFFFFFFFFFFF8));
  v64 = v116;
  *v63 = v115;
  v63[1] = v64;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22D6F4C50;
  *(v19 + 24) = v51;
  v125 = sub_22D6F5ACC;
  v126 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v122 = 1107296256;
  v123 = sub_22D6BEF78;
  v124 = &block_descriptor_134;
  v65 = _Block_copy(&aBlock);

  dispatch_sync(v111, v65);
  _Block_release(v65);
  v22 = (v117 + 8);
  (*(v117 + 8))(v112, v106);
  LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

  if (v54)
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_22D6D9EF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v33 = a5;
  v34 = a4;
  v10 = sub_22D72D7A0();
  v32[3] = *(v10 - 8);
  v32[4] = v10;
  MEMORY[0x28223BE20](v10);
  v32[2] = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D72E300();
  v13 = *(v12 - 8);
  v35 = v12;
  v36 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D72E370();
  v39 = *(v16 - 8);
  v40 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D72DDC0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v23 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v32 - v24;
  sub_22D6E4294(a2, a3, v34, v33, v32 - v24);
  v34 = *(a1 + 224);
  (*(v20 + 16))(v23, v25, v19);
  v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v27 = swift_allocObject();
  v28 = v38;
  *(v27 + 16) = v37;
  *(v27 + 24) = v28;
  (*(v20 + 32))(v27 + v26, v23, v19);
  aBlock[4] = sub_22D6F4D70;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_146;
  v29 = _Block_copy(aBlock);

  sub_22D72E330();
  v41 = MEMORY[0x277D84F90];
  sub_22D6F4F0C(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
  v30 = v35;
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v18, v15, v29);
  _Block_release(v29);
  (*(v36 + 8))(v15, v30);
  (*(v39 + 8))(v18, v40);
  (*(v20 + 8))(v25, v19);
}

uint64_t sub_22D6DA74C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  v8 = sub_22D72DDC0();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_22D6D5984(v7, &qword_27D9FF590, &qword_22D730590);
}

uint64_t sub_22D6DA854(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *(&v10 - v6) = a3;
  swift_storeEnumTagMultiPayload();
  v8 = a3;
  a1(v7);
  return sub_22D6D5984(v7, &qword_27D9FF590, &qword_22D730590);
}

uint64_t sub_22D6DA920(void (*a1)(uint64_t *))
{
  v2 = sub_22D72DEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - v7);
  (*(v3 + 104))(v5, *MEMORY[0x277CB99D8], v2);
  sub_22D72DED0();
  sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
  v9 = swift_allocError();
  sub_22D72DEC0();
  *v8 = v9;
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_22D6D5984(v8, &qword_27D9FF590, &qword_22D730590);
}

void sub_22D6DAAF8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Alarm(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22D72E380();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 216);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_22D72E390();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_22D6E89E4(a2, v7);
    if (!v2)
    {
      sub_22D6E6C18(v7);
      sub_22D6F3848(v7);
      sub_22D6D7C3C();
      sub_22D6DAC98();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D6DAC98()
{
  v1 = sub_22D72E300();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D72E370();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 224);
  aBlock[4] = sub_22D6F4658;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_77_0;
  v8 = _Block_copy(aBlock);

  sub_22D72E330();
  v12 = MEMORY[0x277D84F90];
  sub_22D6F4F0C(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

void sub_22D6DAF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Alarm(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_22D72E380();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 216);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_22D72E390();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v17 = v18[1];
    sub_22D6E81BC(a2, a3, a4, v10);
    if (!v17)
    {
      sub_22D6E6C18(v10);
      sub_22D6F3848(v10);
      sub_22D6D7C3C();
      sub_22D6DAC98();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22D6DB104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22D6E63E4(a2, a3, a4);
  if (!v4)
  {
    sub_22D6D7C3C();
    sub_22D6DAC98();
  }
}

void sub_22D6DB148(uint64_t a1)
{
  v59 = type metadata accessor for Alarm(0);
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D72D7A0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v60 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = v50 - v13;
  v14 = *(a1 + 200);
  v61 = a1;
  v15 = __swift_project_boxed_opaque_existential_1((a1 + 176), v14);
  v16 = *v15;
  v17 = *(*v15 + 56);
  v65 = sub_22D6F5AF8;
  v66 = v16;
  os_unfair_lock_lock(v17 + 4);
  sub_22D6F5A78(&v67);
  v64 = v1;
  v18 = v17 + 4;
  if (v1)
  {
LABEL_21:
    os_unfair_lock_unlock(v18);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v18);
  v19 = 0;
  v20 = *(v67 + 64);
  v50[0] = v67 + 64;
  v55 = v67;
  v21 = 1 << *(v67 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v62 = (v5 + 16);
  v50[1] = v5 + 32;
  v51 = v12;
  v57 = v5;
  v58 = (v5 + 8);
  v25 = v56;
  if ((v22 & v20) == 0)
  {
LABEL_6:
    if (v24 <= v19 + 1)
    {
      v27 = v19 + 1;
    }

    else
    {
      v27 = v24;
    }

    while (1)
    {
      v26 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
        v63 = v27 - 1;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
        (*(*(v48 - 8) + 56))(v12, 1, 1, v48);
        v23 = 0;
        goto LABEL_13;
      }

      v23 = *(v50[0] + 8 * v26);
      ++v19;
      if (v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  while (1)
  {
    v26 = v19;
LABEL_12:
    v28 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v29 = v28 | (v26 << 6);
    v30 = v55;
    v31 = v52;
    (*(v5 + 16))(v52, *(v55 + 48) + *(v5 + 72) * v29, v4);
    v32 = v4;
    v33 = v5;
    v34 = v53;
    sub_22D6F37E4(*(v30 + 56) + *(v54 + 72) * v29, v53);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v36 = *(v35 + 48);
    v37 = *(v33 + 32);
    v4 = v32;
    v12 = v51;
    v37(v51, v31, v4);
    sub_22D6D3C4C(v34, &v12[v36]);
    (*(*(v35 - 8) + 56))(v12, 0, 1, v35);
    v63 = v26;
    v25 = v56;
LABEL_13:
    sub_22D6D591C(v12, v25, &qword_27D9FF9E0, &qword_22D730298);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v39 = (*(*(v38 - 8) + 48))(v25, 1, v38);
    v40 = v60;
    if (v39 == 1)
    {

      sub_22D6D7C3C();
      sub_22D6DAC98();
      return;
    }

    v41 = v25 + *(v38 + 48);
    v42 = v59;
    (*v62)(v60, v41 + *(v59 + 20), v4);
    v43 = (v41 + *(v42 + 24));
    v45 = *v43;
    v44 = v43[1];

    sub_22D6F3848(v41);
    v46 = v64;
    sub_22D6E63E4(v40, v45, v44);
    if (v46)
    {
      break;
    }

    v64 = 0;
    v47 = *v58;
    (*v58)(v40, v4);

    v18 = (v47)(v25, v4);
    v19 = v63;
    v5 = v57;
    if (!v23)
    {
      goto LABEL_6;
    }
  }

  v49 = *v58;
  (*v58)(v40, v4);

  v49(v25, v4);
}

void sub_22D6DB704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D6E89E4(a2, v6);
  if (!v2)
  {
    sub_22D6E59CC(v6);
    sub_22D6F3848(v6);
  }
}

void sub_22D6DB7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Alarm(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D6E81BC(a2, a3, a4, v10);
  if (!v4)
  {
    sub_22D6E59CC(v10);
    sub_22D6F3848(v10);
  }
}

uint64_t sub_22D6DB864(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v117 = a3;
  v118 = a4;
  v116 = a2;
  v5 = sub_22D72DEB0();
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x28223BE20](v5);
  v110 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Alarm(0);
  v8 = MEMORY[0x28223BE20](v7);
  v106 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v114 = (&v99 - v10);
  v11 = sub_22D72D730();
  v112 = *(v11 - 8);
  v113 = v11;
  MEMORY[0x28223BE20](v11);
  v107 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72DD20();
  v111 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v99 - v17;
  v19 = sub_22D72D7A0();
  v115 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocBox();
  v24 = v23;
  v25 = v121;
  sub_22D6E81BC(v116, v117, v118, v23);
  v121 = v25;
  if (v25)
  {
    return swift_deallocBox();
  }

  v102 = v18;
  v103 = v16;
  v104 = v13;
  v116 = v7;
  v101 = v21;
  v105 = v19;
  v117 = v24;
  v100 = a1;
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v27 = sub_22D72DBE0();
  __swift_project_value_buffer(v27, qword_2814580E8);

  v28 = sub_22D72DBB0();
  v29 = sub_22D72E5A0();
  v118 = v22;

  v30 = os_log_type_enabled(v28, v29);
  v31 = v105;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v120[0] = v99;
    *v32 = 136446210;
    v33 = v117;
    swift_beginAccess();
    v34 = v115;
    v35 = v101;
    (*(v115 + 16))(v101, v33, v31);
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v36 = sub_22D72E960();
    v37 = v31;
    v39 = v38;
    (*(v34 + 8))(v35, v37);
    v40 = sub_22D72891C(v36, v39, v120);

    *(v32 + 4) = v40;
    _os_log_impl(&dword_22D6B4000, v28, v29, "%{public}s: Pausing alarm", v32, 0xCu);
    v41 = v99;
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    MEMORY[0x2318D0420](v41, -1, -1);
    MEMORY[0x2318D0420](v32, -1, -1);
  }

  else
  {

    v33 = v117;
  }

  v43 = v112;
  v42 = v113;
  v44 = v116;
  v45 = v104;
  v46 = v111;
  v47 = v103;
  v48 = v102;
  swift_beginAccess();
  (*(v46 + 16))(v48, v33 + *(v44 + 11), v45);
  (*(v46 + 104))(v47, *MEMORY[0x277CB9918], v45);
  v49 = sub_22D72DD10();
  v50 = v47;
  LOBYTE(v47) = v49;
  v51 = *(v46 + 8);
  v51(v50, v45);
  v51(v48, v45);
  v52 = v114;
  if (v47)
  {
    v53 = v107;
    sub_22D72D710();
    swift_beginAccess();
    v54 = v121;
    sub_22D7141DC(v53);
    v121 = v54;
    if (v54)
    {
      swift_endAccess();
      (*(v43 + 8))(v53, v42);
    }

    else
    {
      swift_endAccess();
      (*(v43 + 8))(v53, v42);
      v69 = v100;
      v70 = __swift_project_boxed_opaque_existential_1((v100 + 176), *(v100 + 200));
      v71 = sub_22D6F37E4(v33, v52);
      v72 = *(*v70 + 56);
      v73 = MEMORY[0x28223BE20](v71);
      *(&v99 - 4) = v74;
      *(&v99 - 3) = v52;
      *(&v99 - 2) = 0;
      MEMORY[0x28223BE20](v73);
      *(&v99 - 2) = sub_22D6F5A94;
      *(&v99 - 1) = v75;
      os_unfair_lock_lock(v72 + 4);
      v76 = v121;
      sub_22D6F5B28(v77);
      v121 = v76;
      v78 = v72 + 4;
      if (v76)
      {
        os_unfair_lock_unlock(v78);
        sub_22D6F3848(v52);

        v79 = v121;
        v80 = v121;
        v81 = sub_22D72DBB0();
        v82 = sub_22D72E580();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v119[0] = v116;
          *v83 = 136446466;
          v84 = v115;
          v85 = *(v115 + 16);
          LODWORD(v113) = v82;
          v86 = v101;
          v87 = v105;
          v85(v101, v117, v105);
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v88 = sub_22D72E960();
          v89 = v121;
          v91 = v90;
          (*(v84 + 8))(v86, v87);
          v92 = sub_22D72891C(v88, v91, v119);

          *(v83 + 4) = v92;
          *(v83 + 12) = 2114;
          v93 = v89;
          v94 = _swift_stdlib_bridgeErrorToNSError();
          *(v83 + 14) = v94;
          v95 = v114;
          *v114 = v94;
          _os_log_impl(&dword_22D6B4000, v81, v113, "%{public}s: Failed to update alarm in store: %{public}@", v83, 0x16u);
          sub_22D6D5984(v95, &unk_27D9FF4D0, &qword_22D730180);
          MEMORY[0x2318D0420](v95, -1, -1);
          v96 = v116;
          __swift_destroy_boxed_opaque_existential_1Tm(v116);
          v33 = v117;
          MEMORY[0x2318D0420](v96, -1, -1);
          MEMORY[0x2318D0420](v83, -1, -1);
        }

        else
        {
        }

        v121 = 0;
      }

      else
      {
        os_unfair_lock_unlock(v78);
        sub_22D6F3848(v52);
      }

      v97 = v106;
      __swift_project_boxed_opaque_existential_1((v69 + 56), *(v69 + 80));
      sub_22D6F37E4(v33, v97);
      v98 = v118;

      sub_22D6BB384(v97, sub_22D6F4680, v98);

      sub_22D6F3848(v97);
      sub_22D6DAC98();
      sub_22D6D7C3C();
    }
  }

  else
  {

    v55 = sub_22D72DBB0();
    v56 = sub_22D72E580();

    v57 = os_log_type_enabled(v55, v56);
    v58 = v115;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v119[0] = v60;
      *v59 = 136446210;
      v61 = v101;
      v62 = v33;
      v63 = v105;
      (*(v58 + 16))(v101, v62, v105);
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v64 = sub_22D72E960();
      v66 = v65;
      (*(v58 + 8))(v61, v63);
      v67 = sub_22D72891C(v64, v66, v119);

      *(v59 + 4) = v67;
      _os_log_impl(&dword_22D6B4000, v55, v56, "%{public}s: Not pausing an alarm in the wrong state", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x2318D0420](v60, -1, -1);
      MEMORY[0x2318D0420](v59, -1, -1);
    }

    (*(v108 + 104))(v110, *MEMORY[0x277CB99E0], v109);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    v68 = swift_allocError();
    sub_22D72DEC0();
    v121 = v68;
    swift_willThrow();
  }
}

void sub_22D6DC450(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_22D72D7A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v11 = sub_22D72DBE0();
    __swift_project_value_buffer(v11, qword_2814580E8);

    sub_22D6F468C(a1, a2, 1);
    v25 = sub_22D72DBB0();
    v12 = sub_22D72E580();

    sub_22D6D5828(a1, a2, 1);
    if (os_log_type_enabled(v25, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v13 = 136446466;
      type metadata accessor for Alarm(0);
      v16 = swift_projectBox();
      swift_beginAccess();
      (*(v8 + 16))(v10, v16, v7);
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_22D72E960();
      v19 = v18;
      (*(v8 + 8))(v10, v7);
      v20 = sub_22D72891C(v17, v19, &v26);

      *(v13 + 4) = v20;
      *(v13 + 12) = 2114;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v22;
      *v14 = v22;
      _os_log_impl(&dword_22D6B4000, v25, v12, "%{public}s: Failed to update activity: %{public}@", v13, 0x16u);
      sub_22D6D5984(v14, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x2318D0420](v15, -1, -1);
      MEMORY[0x2318D0420](v13, -1, -1);
    }

    else
    {
      v23 = v25;
    }
  }
}

void sub_22D6DC790(void *a1, char *a2, uint64_t a3, char *a4)
{
  v64 = a4;
  v62 = a2;
  v63 = a3;
  v5 = sub_22D72DEB0();
  v59 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72D730();
  v61 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D72DD20();
  v60 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Alarm(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v66 = &v55 - v18;
  v19 = v65;
  sub_22D6E81BC(v62, v63, v64, &v55 - v18);
  if (!v19)
  {
    v64 = v13;
    v65 = v14;
    v57 = v10;
    v58 = v5;
    v55 = v17;
    v62 = v7;
    v63 = 0;
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v56 = a1;
    v20 = sub_22D72DBE0();
    __swift_project_value_buffer(v20, qword_2814580E8);
    v21 = sub_22D72DBB0();
    v22 = sub_22D72E5A0();
    v23 = v11;
    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v68[0] = v25;
      *v24 = 136446210;
      swift_beginAccess();
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_22D72E960();
      v28 = sub_22D72891C(v26, v27, v68);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_22D6B4000, v21, v22, "%{public}s: Resuming alarm", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318D0420](v25, -1, -1);
      MEMORY[0x2318D0420](v24, -1, -1);
    }

    v29 = v60;
    v30 = v61;
    v31 = v64;
    swift_beginAccess();
    v32 = v65;
    (*(v29 + 104))(v31, *MEMORY[0x277CB9908], v23);
    v33 = sub_22D72DD10();
    (*(v29 + 8))(v31, v23);
    if (v33)
    {
      v34 = v57;
      sub_22D72D710();
      v35 = v66 + *(v32 + 40);
      if (*(v35 + 8))
      {
        v36 = 0.0;
      }

      else
      {
        v36 = *v35;
      }

      swift_beginAccess();
      v37 = v63;
      sub_22D7143F0(v34, v36);
      if (!v37)
      {
        swift_endAccess();
        (*(v30 + 8))(v34, v8);
        v46 = __swift_project_boxed_opaque_existential_1(v56 + 22, v56[25]);
        v47 = v55;
        v48 = sub_22D6F37E4(v66, v55);
        v49 = *(*v46 + 56);
        v50 = MEMORY[0x28223BE20](v48);
        *(&v55 - 4) = v51;
        *(&v55 - 3) = v47;
        *(&v55 - 2) = 0;
        MEMORY[0x28223BE20](v50);
        *(&v55 - 2) = sub_22D6F44F0;
        *(&v55 - 1) = v52;
        os_unfair_lock_lock(v49 + 4);
        sub_22D6F4510(v53);
        os_unfair_lock_unlock(v49 + 4);
        sub_22D6F3848(v47);
        __swift_project_boxed_opaque_existential_1(v56 + 7, v56[10]);
        v54 = v66;
        sub_22D6BB384(v66, nullsub_1, 0);
        sub_22D6DAC98();
        sub_22D6D7C3C();
        v45 = v54;
        goto LABEL_16;
      }

      swift_endAccess();
      (*(v30 + 8))(v34, v8);
    }

    else
    {
      v38 = sub_22D72DBB0();
      v39 = sub_22D72E580();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v67[0] = v41;
        *v40 = 136446210;
        sub_22D72D7A0();
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v42 = sub_22D72E960();
        v44 = sub_22D72891C(v42, v43, v67);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_22D6B4000, v38, v39, "%{public}s: Not resuming an alarm in the wrong state", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x2318D0420](v41, -1, -1);
        MEMORY[0x2318D0420](v40, -1, -1);
      }

      (*(v59 + 104))(v62, *MEMORY[0x277CB99E0], v58);
      sub_22D72DED0();
      sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }

    v45 = v66;
LABEL_16:
    sub_22D6F3848(v45);
  }
}

void sub_22D6DD0CC(uint64_t a1)
{
  v54 = a1;
  v3 = sub_22D72DEB0();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72D7A0();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22D72DDD0();
  v8 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Alarm(0);
  v46 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = *(v1 + 200);
  v47 = v1;
  v18 = __swift_project_boxed_opaque_existential_1((v1 + 176), v17);
  v19 = *v18;
  v20 = *(*v18 + 56);
  v55 = sub_22D6F5AF8;
  v56 = v19;
  os_unfair_lock_lock(v20 + 4);
  sub_22D6F5A78(&v57);
  if (v2)
  {
    os_unfair_lock_unlock(v20 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v20 + 4);
    v21 = v57;
    v22 = v54;
    if (v57[2] && (v23 = sub_22D6CC49C(v54), (v24 & 1) != 0))
    {
      sub_22D6F37E4(*(v21 + 56) + *(v46 + 72) * v23, v14);

      sub_22D6D3C4C(v14, v16);
      v25 = *(v11 + 20);
      v26 = &v16[*(v11 + 24)];
      v27 = *v26;
      v28 = v26[1];
      v29 = v48;
      (*(v8 + 104))(v10, *MEMORY[0x277CB9990], v48);
      v30 = &v16[v25];
      v31 = v47;
      sub_22D6E8F24(v30, v27, v28, v10);
      v44 = (*(v8 + 8))(v10, v29);
      MEMORY[0x28223BE20](v44);
      *(&v45 - 2) = v31;
      *(&v45 - 1) = v22;
      sub_22D72E600();
      sub_22D6F3848(v16);
    }

    else
    {

      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v32 = sub_22D72DBE0();
      __swift_project_value_buffer(v32, qword_2814580E8);
      v33 = v49;
      v34 = v22;
      v35 = v50;
      (*(v49 + 16))(v7, v34, v50);
      v36 = sub_22D72DBB0();
      v37 = sub_22D72E5A0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v57 = v39;
        *v38 = 136446210;
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v40 = sub_22D72E960();
        v42 = v41;
        (*(v33 + 8))(v7, v35);
        v43 = sub_22D72891C(v40, v42, &v57);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_22D6B4000, v36, v37, "%{public}s: Cannot perform stop action for alarm that does not exist", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x2318D0420](v39, -1, -1);
        MEMORY[0x2318D0420](v38, -1, -1);
      }

      else
      {

        (*(v33 + 8))(v7, v35);
      }

      (*(v51 + 104))(v53, *MEMORY[0x277CB99E0], v52);
      sub_22D72DED0();
      sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }
  }
}

void sub_22D6DD710(uint64_t a1)
{
  v2 = v1;
  v54 = a1;
  v3 = sub_22D72DEB0();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22D72D7A0();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v53);
  v8 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v47 - v9;
  v10 = type metadata accessor for Alarm(0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v16 = __swift_project_boxed_opaque_existential_1((v1 + 176), *(v1 + 200));
  v17 = *v16;
  v18 = *(*v16 + 56);
  v55 = sub_22D6F5AF8;
  v56 = v17;
  os_unfair_lock_lock(v18 + 4);
  v19 = v52;
  sub_22D6F5A78(&v57);
  v52 = v19;
  v20 = v18 + 4;
  if (v19)
  {
    os_unfair_lock_unlock(v20);
    __break(1u);
LABEL_13:
    os_unfair_lock_unlock(v13 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v20);
  v21 = v57;
  v22 = v54;
  if (v57[2])
  {
    v23 = sub_22D6CC49C(v54);
    if (v24)
    {
      v25 = v15;
      sub_22D6F37E4(*(v21 + 56) + *(v47 + 72) * v23, v15);

      v50 = __swift_project_boxed_opaque_existential_1((v2 + 176), *(v2 + 200));
      v26 = v53;
      (*(v5 + 16))(v48, v22, v53);
      v51 = v25;
      sub_22D6F37E4(v25, v13);
      v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v28 = (v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = (*(v47 + 80) + v28 + 8) & ~*(v47 + 80);
      v30 = swift_allocObject();
      (*(v5 + 32))(v30 + v27, v48, v26);
      *(v30 + v28) = v2;
      v31 = sub_22D6D3C4C(v13, v30 + v29);
      v13 = *(*v50 + 56);
      v32 = MEMORY[0x28223BE20](v31);
      *(&v47 - 4) = v33;
      *(&v47 - 3) = v54;
      *(&v47 - 2) = sub_22D6F4DD4;
      *(&v47 - 1) = v30;
      MEMORY[0x28223BE20](v32);
      *(&v47 - 2) = sub_22D6D5CBC;
      *(&v47 - 1) = v34;

      os_unfair_lock_lock(v13 + 4);
      v35 = v52;
      sub_22D6F5B28(v36);
      if (!v35)
      {
        os_unfair_lock_unlock(v13 + 4);

        sub_22D6F3848(v51);
        return;
      }

      goto LABEL_13;
    }
  }

  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v37 = sub_22D72DBE0();
  __swift_project_value_buffer(v37, qword_2814580E8);
  v38 = v53;
  (*(v5 + 16))(v8, v22, v53);
  v39 = sub_22D72DBB0();
  v40 = sub_22D72E5A0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v57 = v42;
    *v41 = 136446210;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = sub_22D72E960();
    v45 = v44;
    (*(v5 + 8))(v8, v38);
    v46 = sub_22D72891C(v43, v45, &v57);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_22D6B4000, v39, v40, "%{public}s: Cannot perform secondary action for alarm that does not exist", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x2318D0420](v42, -1, -1);
    MEMORY[0x2318D0420](v41, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v38);
  }

  (*(v49 + 104))(v51, *MEMORY[0x277CB99E0], v50);
  sub_22D72DED0();
  sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
  swift_allocError();
  sub_22D72DEC0();
  swift_willThrow();
}

void sub_22D6DDD7C(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v138 = a5;
  v139 = a4;
  v131 = sub_22D72DE20();
  v134 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v123 = &v114[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5A8, &unk_22D7305A0);
  MEMORY[0x28223BE20](v9);
  v135 = &v114[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFE60, &qword_22D730570);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v124 = &v114[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v132 = &v114[-v15];
  MEMORY[0x28223BE20](v14);
  v133 = &v114[-v16];
  v17 = sub_22D72DE40();
  v129 = *(v17 - 8);
  v130 = v17;
  MEMORY[0x28223BE20](v17);
  v128 = &v114[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_22D72DEA0();
  v126 = *(v19 - 8);
  v127 = v19;
  MEMORY[0x28223BE20](v19);
  v125 = &v114[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_22D72DDD0();
  v137 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v114[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = sub_22D72D7A0();
  v24 = *(v141 - 8);
  v25 = MEMORY[0x28223BE20](v141);
  v140 = &v114[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v114[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v114[-v30];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF578, &unk_22D730580);
  v33 = MEMORY[0x28223BE20](v32);
  v36 = &v114[-v35];
  if (a2)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v37 = sub_22D72DBE0();
    __swift_project_value_buffer(v37, qword_2814580E8);
    v38 = v141;
    (*(v24 + 16))(v29, a3, v141);
    v39 = a1;
    v40 = sub_22D72DBB0();
    v41 = sub_22D72E580();
    sub_22D6D3F3C(a1, 1);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v142[0] = v44;
      *v42 = 136446466;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v45 = sub_22D72E960();
      v46 = v38;
      v48 = v47;
      (*(v24 + 8))(v29, v46);
      v49 = sub_22D72891C(v45, v48, v142);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2114;
      v50 = a1;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v51;
      *v43 = v51;
      _os_log_impl(&dword_22D6B4000, v40, v41, "%{public}s: Cannot perform secondary action as activity data could not be retrieved: %{public}@", v42, 0x16u);
      sub_22D6D5984(v43, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x2318D0420](v44, -1, -1);
      MEMORY[0x2318D0420](v42, -1, -1);

      return;
    }

LABEL_18:

    (*(v24 + 8))(v29, v38);
    return;
  }

  v120 = v9;
  v121 = v34;
  v136 = a3;
  v52 = v33;
  sub_22D72D570();
  swift_allocObject();
  v53 = sub_22D72D560();
  v55 = *&a1[OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData];
  v54 = *&a1[OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData + 8];
  sub_22D6D3F68(v55, v54);
  sub_22D6D58D4(&unk_27D9FF580, &qword_27D9FF578, &unk_22D730580, MEMORY[0x277CB99A8]);
  v122 = v53;
  sub_22D72D550();
  v117 = v52;
  v118 = v36;
  v119 = 0;
  sub_22D6D5664(v55, v54);
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v56 = sub_22D72DBE0();
  __swift_project_value_buffer(v56, qword_2814580E8);
  v57 = v141;
  (*(v24 + 16))(v31, v136, v141);
  v58 = sub_22D72DBB0();
  v59 = sub_22D72E5A0();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v137;
  if (v60)
  {
    v62 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v142[0] = v116;
    *v62 = 136446210;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v115 = v59;
    v63 = sub_22D72E960();
    v65 = v64;
    (*(v24 + 8))(v31, v57);
    v66 = sub_22D72891C(v63, v65, v142);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_22D6B4000, v58, v115, "%{public}s: Performing secondary action for alarm", v62, 0xCu);
    v67 = v116;
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    MEMORY[0x2318D0420](v67, -1, -1);
    MEMORY[0x2318D0420](v62, -1, -1);
  }

  else
  {

    (*(v24 + 8))(v31, v57);
  }

  v68 = type metadata accessor for Alarm(0);
  v69 = *(v68 + 20);
  v70 = v138;
  v71 = (v138 + *(v68 + 24));
  v72 = *v71;
  v73 = v71[1];
  (*(v61 + 104))(v23, *MEMORY[0x277CB9998], v21);
  v74 = v70 + v69;
  v75 = v119;
  sub_22D6E8F24(v74, v72, v73, v23);
  v29 = v140;
  if (v75)
  {
    v76 = v75;
    (*(v61 + 8))(v23, v21);
    (*(v121 + 8))(v118, v117);
    v38 = v141;
LABEL_13:
    v77 = v136;
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v78 = sub_22D72DBE0();
    __swift_project_value_buffer(v78, qword_2814580E8);
    (*(v24 + 16))(v29, v77, v38);
    v79 = v76;
    v80 = v76;
    v40 = sub_22D72DBB0();
    v81 = sub_22D72E580();

    if (os_log_type_enabled(v40, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v142[0] = v84;
      *v82 = 136446466;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v85 = sub_22D72E960();
      v86 = v38;
      v88 = v87;
      (*(v24 + 8))(v29, v86);
      v89 = sub_22D72891C(v85, v88, v142);

      *(v82 + 4) = v89;
      *(v82 + 12) = 2114;
      v90 = v79;
      v91 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 14) = v91;
      *v83 = v91;
      _os_log_impl(&dword_22D6B4000, v40, v81, "%{public}s: Cannot perform secondary action: %{public}@", v82, 0x16u);
      sub_22D6D5984(v83, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v83, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x2318D0420](v84, -1, -1);
      MEMORY[0x2318D0420](v82, -1, -1);

      return;
    }

    goto LABEL_18;
  }

  v119 = 0;
  (*(v61 + 8))(v23, v21);
  v92 = v125;
  sub_22D72DDE0();
  v93 = v128;
  sub_22D72DE50();
  (*(v126 + 8))(v92, v127);
  v94 = v133;
  sub_22D72DE30();
  (*(v129 + 8))(v93, v130);
  v95 = v134;
  v97 = v131;
  v96 = v132;
  (*(v134 + 104))(v132, *MEMORY[0x277CB99B8], v131);
  (*(v95 + 56))(v96, 0, 1, v97);
  v98 = *(v120 + 48);
  v99 = v135;
  sub_22D6D5A4C(v94, v135, &qword_27D9FFE60, &qword_22D730570);
  v138 = v98;
  v100 = v99;
  sub_22D6D5A4C(v96, &v99[v98], &qword_27D9FFE60, &qword_22D730570);
  v101 = *(v95 + 48);
  if (v101(v99, 1, v97) != 1)
  {
    v104 = v124;
    sub_22D6D5A4C(v99, v124, &qword_27D9FFE60, &qword_22D730570);
    v105 = v138;
    v106 = v101(&v99[v138], 1, v97);
    v107 = v97;
    v38 = v141;
    if (v106 != 1)
    {
      v108 = v134;
      v109 = v123;
      (*(v134 + 32))(v123, &v100[v105], v107);
      sub_22D6F4F0C(&unk_27D9FF5B0, MEMORY[0x277CB99C0], MEMORY[0x277CB99C8]);
      LODWORD(v138) = sub_22D72E400();
      v110 = *(v108 + 8);
      v110(v109, v107);
      sub_22D6D5984(v132, &qword_27D9FFE60, &qword_22D730570);
      sub_22D6D5984(v133, &qword_27D9FFE60, &qword_22D730570);
      v110(v104, v107);
      v103 = sub_22D6D5984(v100, &qword_27D9FFE60, &qword_22D730570);
      if ((v138 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    sub_22D6D5984(v132, &qword_27D9FFE60, &qword_22D730570);
    sub_22D6D5984(v133, &qword_27D9FFE60, &qword_22D730570);
    (*(v134 + 8))(v104, v107);
LABEL_24:
    sub_22D6D5984(v100, &qword_27D9FF5A8, &unk_22D7305A0);
    goto LABEL_25;
  }

  sub_22D6D5984(v96, &qword_27D9FFE60, &qword_22D730570);
  v100 = v135;
  sub_22D6D5984(v94, &qword_27D9FFE60, &qword_22D730570);
  v102 = v101(&v100[v138], 1, v97);
  v38 = v141;
  if (v102 != 1)
  {
    goto LABEL_24;
  }

  v103 = sub_22D6D5984(v100, &qword_27D9FFE60, &qword_22D730570);
LABEL_27:
  MEMORY[0x28223BE20](v103);
  v111 = v136;
  *&v114[-16] = v112;
  *&v114[-8] = v111;
  v113 = v119;
  sub_22D72E600();
  if (v113)
  {
    v76 = v113;
    (*(v121 + 8))(v118, v117);
    goto LABEL_13;
  }

LABEL_25:
  (*(v121 + 8))(v118, v117);
}

void sub_22D6DEE1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v94 = sub_22D72DD20();
  v9 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = v71 - v14;
  v90 = sub_22D72D7A0();
  v104 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v103 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v16 = MEMORY[0x28223BE20](v89);
  v88 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v87 = v71 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v102 = v71 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v101 = v71 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v86 = v71 - v25;
  MEMORY[0x28223BE20](v24);
  v85 = v71 - v26;
  v84 = sub_22D72DDC0();
  v95 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_project_boxed_opaque_existential_1((a1 + 176), *(a1 + 200));
  v29 = *v28;
  v30 = *(*v28 + 56);
  v106 = sub_22D6F5AF8;
  v107 = v29;
  os_unfair_lock_lock(v30 + 4);
  sub_22D6F5A78(&v108);
  if (v4)
  {
LABEL_27:
    os_unfair_lock_unlock(v30 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v30 + 4);
  v31 = v108;

  v32 = sub_22D6F4304(v31, a2, a3);

  v33 = *(v32 + 16);
  if (v33)
  {
    v71[1] = 0;
    v72 = a4;
    v108 = MEMORY[0x277D84F90];
    sub_22D6D3360(0, v33, 0);
    v105 = v108;
    v30 = (v32 + 64);
    v34 = sub_22D72E6F0();
    v35 = 0;
    v75 = *(v32 + 36);
    v82 = v104 + 2;
    v81 = v104 + 4;
    v80 = (v9 + 16);
    v79 = (v104 + 1);
    v78 = v95 + 32;
    v36 = *(v32 + 32);
    v73 = v32 + 72;
    v74 = v33;
    v76 = (v32 + 64);
    v77 = v32;
    v37 = v90;
    while ((v34 & 0x8000000000000000) == 0 && v34 < 1 << v36)
    {
      if ((*&v30[2 * (v34 >> 6)]._os_unfair_lock_opaque & (1 << v34)) == 0)
      {
        goto LABEL_23;
      }

      v97 = 1 << v34;
      v98 = v34 >> 6;
      v96 = v35;
      v40 = v89;
      v41 = *(v89 + 48);
      v42 = v104;
      v43 = *(v32 + 48) + v104[9] * v34;
      v99 = v104[2];
      v44 = v85;
      v99(v85, v43, v37);
      v45 = *(v32 + 56);
      v46 = (type metadata accessor for Alarm(0) - 8);
      sub_22D6F37E4(v45 + *(*v46 + 72) * v34, &v44[v41]);
      v47 = v42[4];
      v100 = v34;
      v48 = v86;
      v47(v86, v44, v37);
      sub_22D6D3C4C(&v44[v41], v48 + *(v40 + 48));
      v49 = v101;
      sub_22D6D5A4C(v48, v101, &unk_27D9FF4A0, &qword_22D730510);
      v50 = v49 + *(v40 + 48);
      v99(v103, v50 + v46[7], v37);
      sub_22D6F3848(v50);
      v51 = v102;
      sub_22D6D5A4C(v48, v102, &unk_27D9FF4A0, &qword_22D730510);
      v52 = v51 + *(v40 + 48);
      sub_22D6D5A4C(v52 + v46[10], v91, &qword_27D9FF4B0, &unk_22D7301A0);
      sub_22D6F3848(v52);
      v53 = v87;
      sub_22D6D5A4C(v48, v87, &unk_27D9FF4A0, &qword_22D730510);
      v54 = v53 + *(v40 + 48);
      sub_22D6D5A4C(v54 + v46[11], v92, &qword_27D9FF310, &qword_22D7301B8);
      sub_22D6F3848(v54);
      v55 = v88;
      sub_22D6D5A4C(v48, v88, &unk_27D9FF4A0, &qword_22D730510);
      v56 = *(v40 + 48);
      v57 = v83;
      v58 = v55 + v56;
      (*v80)(v93, v55 + v56 + v46[13], v94);
      sub_22D6F3848(v58);
      sub_22D72DD00();
      sub_22D6D5984(v48, &unk_27D9FF4A0, &qword_22D730510);
      v59 = v104[1];
      v60 = v55;
      v30 = v79;
      v59(v60, v37);
      v59(v53, v37);
      v59(v102, v37);
      v59(v101, v37);
      v108 = v105;
      v62 = *(v105 + 16);
      v61 = *(v105 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_22D6D3360((v61 > 1), v62 + 1, 1);
        v105 = v108;
      }

      v63 = v105;
      *(v105 + 16) = v62 + 1;
      (*(v95 + 32))(v63 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v62, v57, v84);
      v32 = v77;
      v36 = *(v77 + 32);
      v34 = 1 << v36;
      if (v100 >= 1 << v36)
      {
        goto LABEL_24;
      }

      v30 = v76;
      v64 = *&v76[2 * v98]._os_unfair_lock_opaque;
      if ((v64 & v97) == 0)
      {
        goto LABEL_25;
      }

      if (v75 != *(v77 + 36))
      {
        goto LABEL_26;
      }

      v65 = v64 & (-2 << (v100 & 0x3F));
      if (v65)
      {
        v34 = __clz(__rbit64(v65)) | v100 & 0x7FFFFFFFFFFFFFC0;
        v38 = v74;
        v39 = v96;
      }

      else
      {
        v66 = v98 << 6;
        v67 = v98 + 1;
        v68 = (v73 + 8 * v98);
        v38 = v74;
        v39 = v96;
        while (v67 < (v34 + 63) >> 6)
        {
          v70 = *v68++;
          v69 = v70;
          v66 += 64;
          ++v67;
          if (v70)
          {
            v34 = __clz(__rbit64(v69)) + v66;
            break;
          }
        }
      }

      v35 = v39 + 1;
      if (v35 == v38)
      {

        a4 = v72;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v105 = MEMORY[0x277D84F90];
LABEL_21:
  *a4 = v105;
}

void sub_22D6DF7B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - v4;
  v6 = __swift_project_boxed_opaque_existential_1((a1 + 176), *(a1 + 200));
  v7 = *v6;
  v8 = *(*v6 + 56);
  v22 = sub_22D6D562C;
  v23 = v7;
  os_unfair_lock_lock((v8 + 16));
  sub_22D6F37CC(&v24);
  if (!v2)
  {
    os_unfair_lock_unlock((v8 + 16));
    v9 = v24;
    v24 = MEMORY[0x277D84F98];
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v8 = v11 & *(v9 + 64);
    v12 = (v10 + 63) >> 6;

    for (i = 0; v8; i = v14)
    {
      v14 = i;
LABEL_9:
      v15 = __clz(__rbit64(v8)) | (v14 << 6);
      v16 = *(v9 + 48);
      v17 = sub_22D72D7A0();
      (*(*(v17 - 8) + 16))(v5, v16 + *(*(v17 - 8) + 72) * v15, v17);
      v18 = *(v9 + 56);
      v19 = type metadata accessor for Alarm(0);
      sub_22D6F37E4(v18 + *(*(v19 - 8) + 72) * v15, &v5[*(v21 + 48)]);
      sub_22D6DFA44(&v24, v5);
      v8 &= v8 - 1;
      sub_22D6D5984(v5, &unk_27D9FF4A0, &qword_22D730510);
    }

    while (1)
    {
      v14 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        *v20 = v24;
        return;
      }

      v8 = *(v9 + 64 + 8 * v14);
      ++i;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    __break(1u);

    sub_22D6D5984(v5, &unk_27D9FF4A0, &qword_22D730510);

    __break(1u);
  }

  os_unfair_lock_unlock((v8 + 16));
  __break(1u);
}

uint64_t sub_22D6DFA44(uint64_t *a1, uint64_t a2)
{
  v4 = sub_22D72DD20();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v76 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = v68 - v9;
  v10 = sub_22D72D7A0();
  v70 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D72DDC0();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v18 = MEMORY[0x28223BE20](v17);
  v72 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v71 = v68 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v80 = v68 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v88 = v68 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v68 - v26;
  v87 = a2;
  sub_22D6D5A4C(a2, v68 - v26, &unk_27D9FF4A0, &qword_22D730510);
  v83 = v17;
  v28 = &v27[*(v17 + 48)];
  v82 = type metadata accessor for Alarm(0);
  v29 = (v28 + *(v82 + 24));
  v31 = *v29;
  v30 = v29[1];

  sub_22D6F3848(v28);
  v79 = a1;
  v32 = *a1;
  v33 = *(*a1 + 16);
  v75 = v15;
  if (v33)
  {
    v34 = sub_22D6CC714(v31, v30);
    v36 = v35;

    if (v36)
    {
      v69 = *(*(v32 + 56) + 8 * v34);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v69 = MEMORY[0x277D84F90];
LABEL_6:
  v37 = v70;
  v38 = *(v70 + 8);
  v68[1] = v70 + 8;
  v38(v27, v10);
  v39 = v10;
  v41 = v87;
  v40 = v88;
  sub_22D6D5A4C(v87, v88, &unk_27D9FF4A0, &qword_22D730510);
  v42 = v82;
  v43 = v83;
  v44 = v40 + *(v83 + 48);
  (*(v37 + 16))(v81, v44 + *(v82 + 20), v39);
  sub_22D6F3848(v44);
  v45 = v80;
  sub_22D6D5A4C(v41, v80, &unk_27D9FF4A0, &qword_22D730510);
  v46 = v45 + *(v43 + 48);
  sub_22D6D5A4C(v46 + v42[8], v73, &qword_27D9FF4B0, &unk_22D7301A0);
  sub_22D6F3848(v46);
  v47 = v71;
  sub_22D6D5A4C(v41, v71, &unk_27D9FF4A0, &qword_22D730510);
  v48 = v47 + *(v43 + 48);
  sub_22D6D5A4C(v48 + v42[9], v74, &qword_27D9FF310, &qword_22D7301B8);
  sub_22D6F3848(v48);
  v49 = v41;
  v50 = v39;
  v51 = v72;
  sub_22D6D5A4C(v49, v72, &unk_27D9FF4A0, &qword_22D730510);
  v52 = v51 + *(v43 + 48);
  (*(v77 + 16))(v76, v52 + v42[11], v78);
  sub_22D6F3848(v52);
  v53 = v84;
  sub_22D72DD00();
  v38(v51, v50);
  v38(v47, v50);
  v38(v80, v50);
  v80 = v50;
  v81 = v38;
  v38(v88, v50);
  v54 = v75;
  (*(v85 + 16))(v75, v53, v86);
  v55 = v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v55 = sub_22D6CBC98(0, v55[2] + 1, 1, v55);
  }

  v57 = v55[2];
  v56 = v55[3];
  if (v57 >= v56 >> 1)
  {
    v55 = sub_22D6CBC98((v56 > 1), v57 + 1, 1, v55);
  }

  v55[2] = v57 + 1;
  v58 = v85;
  v59 = v86;
  (*(v85 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v57, v54, v86);
  v60 = v88;
  sub_22D6D5A4C(v87, v88, &unk_27D9FF4A0, &qword_22D730510);
  v61 = v60 + *(v83 + 48);
  v62 = (v61 + *(v82 + 24));
  v63 = *v62;
  v64 = v62[1];

  sub_22D6F3848(v61);
  v65 = v79;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v65;
  sub_22D6CF020(v55, v63, v64, isUniquelyReferenced_nonNull_native);

  *v65 = v89;
  (*(v58 + 8))(v84, v59);
  return (v81)(v60, v80);
}

uint64_t sub_22D6E01C4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v29 = a2;
  v31 = a1;
  v27 = a4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  MEMORY[0x28223BE20](v28);
  v8 = &v26 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v30 = a3;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v32 = v5;
      v16 = v15;
LABEL_9:
      v17 = __clz(__rbit64(v12)) | (v16 << 6);
      v18 = v30;
      v19 = *(v30 + 48);
      v20 = sub_22D72D7A0();
      (*(*(v20 - 8) + 16))(v8, v19 + *(*(v20 - 8) + 72) * v17, v20);
      v21 = *(v18 + 56);
      v22 = type metadata accessor for Alarm(0);
      sub_22D6F37E4(v21 + *(*(v22 - 8) + 72) * v17, &v8[*(v28 + 48)]);
      v23 = v32;
      v29(v31, v8);
      v5 = v23;
      if (v23)
      {
        break;
      }

      v12 &= v12 - 1;
      result = sub_22D6D5984(v8, &unk_27D9FF4A0, &qword_22D730510);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_22D6D5984(v8, &unk_27D9FF4A0, &qword_22D730510);

    v25 = sub_22D72D730();
    return (*(*(v25 - 8) + 8))(v31, v25);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        v24 = sub_22D72D730();
        return (*(*(v24 - 8) + 32))(v27, v31, v24);
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        v32 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D6E0460(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  MEMORY[0x28223BE20](v26);
  v9 = &v26 - v8;
  v30 = a1;
  v10 = a4 + 64;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 64);
  v14 = (v11 + 63) >> 6;
  v28 = a4;

  v16 = 0;
  while (v13)
  {
    v29 = v5;
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v28;
    v21 = *(v28 + 48);
    v22 = sub_22D72D7A0();
    (*(*(v22 - 8) + 16))(v9, v21 + *(*(v22 - 8) + 72) * v19, v22);
    v23 = *(v20 + 56);
    v24 = type metadata accessor for Alarm(0);
    sub_22D6F37E4(v23 + *(*(v24 - 8) + 72) * v19, &v9[*(v26 + 48)]);
    v25 = v29;
    v27(&v30, v9);
    v5 = v25;
    result = sub_22D6D5984(v9, &unk_27D9FF4A0, &qword_22D730510);
    if (v25)
    {
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return v30;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v29 = v5;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_22D6E0674(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  MEMORY[0x28223BE20](v2 - 8);
  v409 = v394 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF558, &qword_22D730560);
  MEMORY[0x28223BE20](v4 - 8);
  v411 = v394 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF560, &qword_22D730568);
  MEMORY[0x28223BE20](v6 - 8);
  v418 = v394 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFE60, &qword_22D730570);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v408 = v394 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v414 = v394 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF570, &qword_22D730578);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v421 = v394 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v425 = v394 - v15;
  v443 = sub_22D72DE40();
  v426 = *(v443 - 8);
  v16 = MEMORY[0x28223BE20](v443);
  v407 = v394 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v420 = v394 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v413 = v394 - v21;
  MEMORY[0x28223BE20](v20);
  v424 = v394 - v22;
  v428 = sub_22D72DEA0();
  v427 = *(v428 - 8);
  v23 = MEMORY[0x28223BE20](v428);
  v410 = v394 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v417 = v394 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v406 = v394 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v419 = v394 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v412 = v394 - v32;
  MEMORY[0x28223BE20](v31);
  v423 = v394 - v33;
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF578, &unk_22D730580);
  v439 = *(v450 - 8);
  v34 = MEMORY[0x28223BE20](v450);
  v444 = v394 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v442 = v394 - v36;
  v436 = sub_22D72D730();
  v441 = *(v436 - 8);
  v37 = MEMORY[0x28223BE20](v436);
  v429 = v394 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v435 = v394 - v39;
  v431 = sub_22D72DD30();
  v430 = *(v431 - 8);
  MEMORY[0x28223BE20](v431);
  v452 = v394 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = sub_22D72DDA0();
  v434 = *(v432 - 8);
  MEMORY[0x28223BE20](v432);
  v433 = v394 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v438 = v394 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = v394 - v45;
  v47 = sub_22D72DDB0();
  v454 = *(v47 - 1);
  v455 = v47;
  v48 = MEMORY[0x28223BE20](v47);
  v440 = v394 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v453 = (v394 - v50);
  v51 = sub_22D72DEB0();
  v52 = *(v51 - 8);
  v456 = v51;
  v457 = v52;
  MEMORY[0x28223BE20](v51);
  v458 = v394 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22D72D7A0();
  v55 = *(v54 - 8);
  v447 = v54;
  v448 = v55;
  MEMORY[0x28223BE20](v54);
  v446 = v394 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22D72E190();
  v459 = *(v57 - 8);
  v460 = v57;
  v58 = MEMORY[0x28223BE20](v57);
  v437 = v394 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v422 = v394 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v398 = v394 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v396 = v394 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v397 = v394 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v399 = v394 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v402 = v394 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v416 = v394 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v400 = v394 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v449 = v394 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v415 = v394 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v403 = v394 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v84 = v394 - v83;
  MEMORY[0x28223BE20](v82);
  v86 = v394 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v88 = MEMORY[0x28223BE20](v87 - 8);
  v401 = v394 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x28223BE20](v88);
  v404 = v394 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v94 = v394 - v93;
  MEMORY[0x28223BE20](v92);
  v96 = v394 - v95;
  v97 = sub_22D72DCF0();
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v100 = v394 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = a1;
  sub_22D72E150();
  v101 = v98;
  v103 = *(v98 + 48);
  v102 = v98 + 48;
  v451 = v103;
  if ((v103)(v96, 1, v97) == 1)
  {
    v449 = v97;
    sub_22D6D5984(v96, &qword_27D9FF310, &qword_22D7301B8);
    v104 = v459;
    v105 = v460;
    goto LABEL_24;
  }

  v395 = v101;
  (*(v101 + 32))(v100, v96, v97);
  v106 = COERCE_DOUBLE(sub_22D72DCD0());
  v107 = v97;
  if ((v108 & 1) == 0)
  {
    if (v106 >= 86399.0)
    {
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v247 = sub_22D72DBE0();
      __swift_project_value_buffer(v247, qword_2814580E8);
      v248 = v459;
      v249 = v460;
      (*(v459 + 16))(v84, v461, v460);
      v115 = sub_22D72DBB0();
      v250 = sub_22D72E580();
      if (!os_log_type_enabled(v115, v250))
      {

        (*(v248 + 8))(v84, v249);
        goto LABEL_107;
      }

      v251 = swift_slowAlloc();
      v454 = v251;
      v461 = swift_slowAlloc();
      v462 = v461;
      *v251 = 136446210;
      v252 = v446;
      LODWORD(v455) = v250;
      sub_22D72E170();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v253 = v100;
      v254 = v447;
      v255 = sub_22D72E960();
      v449 = v107;
      v257 = v256;
      v258 = v254;
      v100 = v253;
      (*(v448 + 8))(v252, v258);
      (*(v248 + 8))(v84, v249);
      v259 = sub_22D72891C(v255, v257, &v462);
      v107 = v449;

      v125 = v454;
      *(v454 + 1) = v259;
      v126 = "%{public}s: Cannot schedule an alarm with a prealert countdown >=24 hours";
    }

    else
    {
      if (v106 > 0.0)
      {
        goto LABEL_4;
      }

      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v128 = sub_22D72DBE0();
      __swift_project_value_buffer(v128, qword_2814580E8);
      v129 = v459;
      v130 = v460;
      (*(v459 + 16))(v86, v461, v460);
      v115 = sub_22D72DBB0();
      v131 = sub_22D72E580();
      if (!os_log_type_enabled(v115, v131))
      {

        (*(v129 + 8))(v86, v130);
        goto LABEL_107;
      }

      v132 = swift_slowAlloc();
      v454 = v132;
      v461 = swift_slowAlloc();
      v462 = v461;
      *v132 = 136446210;
      v133 = v446;
      LODWORD(v455) = v131;
      sub_22D72E170();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v134 = v100;
      v135 = v447;
      v136 = sub_22D72E960();
      v449 = v107;
      v138 = v137;
      v139 = v135;
      v100 = v134;
      (*(v448 + 8))(v133, v139);
      (*(v129 + 8))(v86, v130);
      v140 = sub_22D72891C(v136, v138, &v462);
      v107 = v449;

      v125 = v454;
      *(v454 + 1) = v140;
      v126 = "%{public}s: Cannot schedule an alarm with an illegal prealert value";
    }

    v127 = v455;
LABEL_58:
    v260 = v125;
    _os_log_impl(&dword_22D6B4000, v115, v127, v126, v125, 0xCu);
    v261 = v461;
    __swift_destroy_boxed_opaque_existential_1Tm(v461);
    MEMORY[0x2318D0420](v261, -1, -1);
    MEMORY[0x2318D0420](v260, -1, -1);

LABEL_107:
    (*(v457 + 104))(v458, *MEMORY[0x277CB99E0], v456);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    (*(v395 + 8))(v100, v107);
    return;
  }

LABEL_4:
  v109 = COERCE_DOUBLE(sub_22D72DCE0());
  v104 = v459;
  v105 = v460;
  if ((v110 & 1) == 0)
  {
    if (v109 >= 86399.0)
    {
      v455 = v100;
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v313 = sub_22D72DBE0();
      __swift_project_value_buffer(v313, qword_2814580E8);
      v314 = v415;
      (*(v104 + 16))(v415, v461, v105);
      v315 = sub_22D72DBB0();
      v316 = sub_22D72E580();
      if (os_log_type_enabled(v315, v316))
      {
        v317 = swift_slowAlloc();
        v454 = v317;
        v461 = swift_slowAlloc();
        v462 = v461;
        *v317 = 136446210;
        v449 = v107;
        v318 = v446;
        sub_22D72E170();
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v319 = v105;
        v320 = v447;
        v321 = sub_22D72E960();
        v323 = v322;
        v324 = v318;
        v107 = v449;
        (*(v448 + 8))(v324, v320);
        (*(v104 + 8))(v314, v319);
        v325 = sub_22D72891C(v321, v323, &v462);

        v326 = v454;
        *(v454 + 1) = v325;
        v327 = v326;
        _os_log_impl(&dword_22D6B4000, v315, v316, "%{public}s: Cannot schedule an alarm with a postalert countdown >=24 hours", v326, 0xCu);
        v328 = v461;
        __swift_destroy_boxed_opaque_existential_1Tm(v461);
        MEMORY[0x2318D0420](v328, -1, -1);
        MEMORY[0x2318D0420](v327, -1, -1);
      }

      else
      {

        (*(v104 + 8))(v314, v105);
      }
    }

    else
    {
      if (v109 > 0.0)
      {
        goto LABEL_5;
      }

      v455 = v100;
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v141 = sub_22D72DBE0();
      __swift_project_value_buffer(v141, qword_2814580E8);
      v142 = v403;
      (*(v104 + 16))(v403, v461, v105);
      v143 = sub_22D72DBB0();
      v144 = sub_22D72E580();
      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        v454 = v145;
        v461 = swift_slowAlloc();
        v462 = v461;
        *v145 = 136446210;
        v146 = v446;
        sub_22D72E170();
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v147 = v447;
        v148 = sub_22D72E960();
        v150 = v149;
        v151 = v147;
        v107 = v97;
        (*(v448 + 8))(v146, v151);
        (*(v104 + 8))(v142, v460);
        v152 = sub_22D72891C(v148, v150, &v462);

        v153 = v454;
        *(v454 + 1) = v152;
        v154 = v153;
        _os_log_impl(&dword_22D6B4000, v143, v144, "%{public}s: Cannot schedule an alarm with an illegal postalert value", v153, 0xCu);
        v155 = v461;
        __swift_destroy_boxed_opaque_existential_1Tm(v461);
        MEMORY[0x2318D0420](v155, -1, -1);
        MEMORY[0x2318D0420](v154, -1, -1);
      }

      else
      {

        (*(v104 + 8))(v142, v105);
      }
    }

    (*(v457 + 104))(v458, *MEMORY[0x277CB99E0], v456);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    (*(v395 + 8))(v455, v107);
    return;
  }

LABEL_5:
  sub_22D72DCD0();
  if (v111)
  {
    sub_22D72DCE0();
    if (v112)
    {
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v113 = sub_22D72DBE0();
      __swift_project_value_buffer(v113, qword_2814580E8);
      v114 = v449;
      (*(v104 + 16))(v449, v461, v105);
      v115 = sub_22D72DBB0();
      v116 = sub_22D72E580();
      if (!os_log_type_enabled(v115, v116))
      {

        (*(v104 + 8))(v114, v105);
        goto LABEL_107;
      }

      v117 = swift_slowAlloc();
      v454 = v117;
      v461 = swift_slowAlloc();
      v462 = v461;
      *v117 = 136446210;
      v118 = v446;
      sub_22D72E170();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v119 = v447;
      v120 = sub_22D72E960();
      v455 = v100;
      v121 = v107;
      v123 = v122;
      (*(v448 + 8))(v118, v119);
      (*(v104 + 8))(v114, v460);
      v124 = sub_22D72891C(v120, v123, &v462);
      v107 = v121;
      v100 = v455;

      v125 = v454;
      *(v454 + 1) = v124;
      v126 = "%{public}s: Cannot schedule an alarm with an empty countdown duration";
      v127 = v116;
      goto LABEL_58;
    }
  }

  v156 = *(v395 + 8);
  v449 = v97;
  v156(v100, v97);
LABEL_24:
  sub_22D72E180();
  v157 = v454;
  v158 = v455;
  v159 = (v454 + 12);
  v415 = *(v454 + 6);
  v160 = (v415)(v46, 1, v455);
  v161 = v452;
  v394[1] = v102;
  if (v160 == 1)
  {
    sub_22D6D5984(v46, &qword_27D9FF4B0, &unk_22D7301A0);
LABEL_26:
    v162 = v461;
LABEL_27:
    sub_22D72E150();
    v163 = (v451)(v94, 1, v449);
    sub_22D6D5984(v94, &qword_27D9FF310, &qword_22D7301B8);
    if (v163 == 1)
    {
      v164 = v438;
      sub_22D72E180();
      v165 = (v415)(v164, 1, v158);
      sub_22D6D5984(v164, &qword_27D9FF4B0, &unk_22D7301A0);
      if (v165 == 1)
      {
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v166 = sub_22D72DBE0();
        __swift_project_value_buffer(v166, qword_2814580E8);
        v167 = v422;
        (*(v104 + 16))(v422, v162, v105);
        v168 = sub_22D72DBB0();
        v169 = sub_22D72E580();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v461 = swift_slowAlloc();
          v462 = v461;
          *v170 = 136446210;
          v171 = v446;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v172 = v447;
          v173 = sub_22D72E960();
          v175 = v174;
          (*(v448 + 8))(v171, v172);
          (*(v104 + 8))(v167, v460);
          v176 = sub_22D72891C(v173, v175, &v462);

          *(v170 + 4) = v176;
          _os_log_impl(&dword_22D6B4000, v168, v169, "%{public}s: Cannot schedule an alarm without a schedule or countdown duration", v170, 0xCu);
          v177 = v461;
          __swift_destroy_boxed_opaque_existential_1Tm(v461);
          MEMORY[0x2318D0420](v177, -1, -1);
          MEMORY[0x2318D0420](v170, -1, -1);
        }

        else
        {

          (*(v104 + 8))(v167, v105);
        }

        (*(v457 + 104))(v458, *MEMORY[0x277CB99E0], v456);
        sub_22D72DED0();
        sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
        swift_allocError();
        sub_22D72DEC0();
        swift_willThrow();
        return;
      }
    }

    sub_22D72D570();
    swift_allocObject();
    sub_22D72D560();
    v178 = sub_22D72E120();
    v180 = v179;
    sub_22D6D58D4(&unk_27D9FF580, &qword_27D9FF578, &unk_22D730580, MEMORY[0x277CB99A8]);
    v182 = v444;
    v181 = v445;
    v183 = v450;
    sub_22D72D550();
    v455 = v181;
    if (v181)
    {

      sub_22D6D5664(v178, v180);
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v184 = sub_22D72DBE0();
      __swift_project_value_buffer(v184, qword_2814580E8);
      v185 = v437;
      (*(v104 + 16))(v437, v162, v105);
      v186 = sub_22D72DBB0();
      v187 = sub_22D72E580();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        v454 = v188;
        v461 = swift_slowAlloc();
        v462 = v461;
        *v188 = 136446210;
        v189 = v446;
        sub_22D72E170();
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v190 = v105;
        v191 = v447;
        v192 = sub_22D72E960();
        v194 = v193;
        (*(v448 + 8))(v189, v191);
        (*(v104 + 8))(v185, v190);
        v195 = sub_22D72891C(v192, v194, &v462);

        v196 = v454;
        *(v454 + 1) = v195;
        _os_log_impl(&dword_22D6B4000, v186, v187, "%{public}s: Attributes cannot be decoded", v196, 0xCu);
        v197 = v461;
        __swift_destroy_boxed_opaque_existential_1Tm(v461);
        MEMORY[0x2318D0420](v197, -1, -1);
        MEMORY[0x2318D0420](v196, -1, -1);
      }

      else
      {

        (*(v104 + 8))(v185, v105);
      }

      (*(v457 + 104))(v458, *MEMORY[0x277CB99E0], v456);
      sub_22D72DED0();
      sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();

      return;
    }

    sub_22D6D5664(v178, v180);
    (*(v439 + 32))(v442, v182, v183);
    v221 = v423;
    sub_22D72DDE0();
    v222 = v424;
    sub_22D72DE50();
    v223 = v428;
    v453 = *(v427 + 8);
    v453(v221);
    v224 = v425;
    sub_22D72DE10();
    v454 = *(v426 + 8);
    (v454)(v222, v443);
    v225 = sub_22D72E0D0();
    v226 = *(v225 - 8);
    v452 = *(v226 + 48);
    v445 = (v226 + 48);
    v227 = (v452)(v224, 1, v225);
    sub_22D6D5984(v224, &qword_27D9FF570, &qword_22D730578);
    if (v227 != 1)
    {
      v228 = v412;
      sub_22D72DDE0();
      v229 = v413;
      sub_22D72DE50();
      (v453)(v228, v223);
      v230 = v414;
      sub_22D72DE30();
      (v454)(v229, v443);
      v231 = sub_22D72DE20();
      v232 = (*(*(v231 - 8) + 48))(v230, 1, v231);
      sub_22D6D5984(v230, &qword_27D9FFE60, &qword_22D730570);
      if (v232 == 1)
      {
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v233 = sub_22D72DBE0();
        __swift_project_value_buffer(v233, qword_2814580E8);
        v234 = v459;
        v235 = v460;
        v236 = v402;
        (*(v459 + 16))(v402, v461, v460);
        v237 = sub_22D72DBB0();
        v238 = sub_22D72E580();
        if (os_log_type_enabled(v237, v238))
        {
          v239 = swift_slowAlloc();
          v461 = swift_slowAlloc();
          v462 = v461;
          *v239 = 136446210;
          v240 = v446;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v241 = v447;
          v242 = sub_22D72E960();
          v244 = v243;
          (*(v448 + 8))(v240, v241);
          (*(v234 + 8))(v236, v460);
          v245 = sub_22D72891C(v242, v244, &v462);

          *(v239 + 4) = v245;
          _os_log_impl(&dword_22D6B4000, v237, v238, "%{public}s: Not scheduling an alarm with either a secondary button but no behavior", v239, 0xCu);
          v246 = v461;
          __swift_destroy_boxed_opaque_existential_1Tm(v461);
          MEMORY[0x2318D0420](v246, -1, -1);
          MEMORY[0x2318D0420](v239, -1, -1);
        }

        else
        {

          (*(v234 + 8))(v236, v235);
        }

        v391 = v442;
        (*(v457 + 104))(v458, *MEMORY[0x277CB99E0], v456);
        sub_22D72DED0();
        sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
        swift_allocError();
        sub_22D72DEC0();
        swift_willThrow();
        (*(v439 + 8))(v391, v450);
        return;
      }
    }

    v262 = v419;
    sub_22D72DDE0();
    v263 = v420;
    sub_22D72DE50();
    v264 = v223;
    v265 = v223;
    v266 = v453;
    (v453)(v262, v265);
    v267 = v421;
    sub_22D72DE10();
    (v454)(v263, v443);
    v268 = (v452)(v267, 1, v225);
    sub_22D6D5984(v267, &qword_27D9FF570, &qword_22D730578);
    v269 = v442;
    if (v268 == 1)
    {
      v270 = v406;
      sub_22D72DDE0();
      v271 = v407;
      sub_22D72DE50();
      v266(v270, v264);
      v272 = v408;
      sub_22D72DE30();
      (v454)(v271, v443);
      v273 = sub_22D72DE20();
      v274 = (*(*(v273 - 8) + 48))(v272, 1, v273);
      sub_22D6D5984(v272, &qword_27D9FFE60, &qword_22D730570);
      if (v274 != 1)
      {
        v279 = v460;
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v383 = sub_22D72DBE0();
        __swift_project_value_buffer(v383, qword_2814580E8);
        v282 = v459;
        v284 = v399;
        (*(v459 + 16))(v399, v461, v279);
        v285 = sub_22D72DBB0();
        v286 = sub_22D72E580();
        if (os_log_type_enabled(v285, v286))
        {
          v287 = swift_slowAlloc();
          v461 = swift_slowAlloc();
          v462 = v461;
          *v287 = 136446210;
          v384 = v446;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v385 = v447;
          v386 = sub_22D72E960();
          v388 = v387;
          (*(v448 + 8))(v384, v385);
          (*(v282 + 8))(v284, v460);
          v389 = sub_22D72891C(v386, v388, &v462);
          v269 = v442;

          *(v287 + 4) = v389;
          v294 = "%{public}s: Not scheduling an alarm with a secondary button behavior but no button";
          goto LABEL_103;
        }

        goto LABEL_104;
      }
    }

    v275 = v417;
    sub_22D72DDE0();
    v276 = v418;
    sub_22D72DE90();
    v266(v275, v264);
    v277 = sub_22D72DE80();
    v278 = (*(*(v277 - 8) + 48))(v276, 1, v277);
    sub_22D6D5984(v276, &unk_27D9FF560, &qword_22D730568);
    v279 = v460;
    if (v278 != 1)
    {
      v280 = v404;
      sub_22D72E150();
      v281 = (v451)(v280, 1, v449);
      sub_22D6D5984(v280, &qword_27D9FF310, &qword_22D7301B8);
      if (v281 == 1)
      {
        v282 = v459;
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v283 = sub_22D72DBE0();
        __swift_project_value_buffer(v283, qword_2814580E8);
        v284 = v397;
        (*(v282 + 16))(v397, v461, v279);
        v285 = sub_22D72DBB0();
        v286 = sub_22D72E580();
        if (os_log_type_enabled(v285, v286))
        {
          v287 = swift_slowAlloc();
          v461 = swift_slowAlloc();
          v462 = v461;
          *v287 = 136446210;
          v288 = v446;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v289 = v447;
          v290 = sub_22D72E960();
          v292 = v291;
          (*(v448 + 8))(v288, v289);
          (*(v282 + 8))(v284, v460);
          v293 = sub_22D72891C(v290, v292, &v462);
          v269 = v442;

          *(v287 + 4) = v293;
          v294 = "%{public}s: Not scheduling an alarm with a countdown presentation but no countdown duration";
LABEL_103:
          _os_log_impl(&dword_22D6B4000, v285, v286, v294, v287, 0xCu);
          v390 = v461;
          __swift_destroy_boxed_opaque_existential_1Tm(v461);
          MEMORY[0x2318D0420](v390, -1, -1);
          MEMORY[0x2318D0420](v287, -1, -1);

LABEL_105:
          (*(v457 + 104))(v458, *MEMORY[0x277CB99E0], v456);
          sub_22D72DED0();
          sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
          swift_allocError();
          sub_22D72DEC0();
          swift_willThrow();
          (*(v439 + 8))(v269, v450);
          return;
        }

        goto LABEL_104;
      }
    }

    v329 = v410;
    sub_22D72DDE0();
    v330 = v411;
    sub_22D72DE70();
    v266(v329, v264);
    v331 = sub_22D72DE60();
    v332 = (*(*(v331 - 8) + 48))(v330, 1, v331);
    sub_22D6D5984(v330, &qword_27D9FF558, &qword_22D730560);
    v282 = v459;
    if (v332 != 1)
    {
      v333 = v401;
      sub_22D72E150();
      v334 = (v451)(v333, 1, v449);
      sub_22D6D5984(v333, &qword_27D9FF310, &qword_22D7301B8);
      if (v334 == 1)
      {
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v335 = sub_22D72DBE0();
        __swift_project_value_buffer(v335, qword_2814580E8);
        v284 = v396;
        (*(v282 + 16))(v396, v461, v279);
        v285 = sub_22D72DBB0();
        v286 = sub_22D72E580();
        if (os_log_type_enabled(v285, v286))
        {
          v287 = swift_slowAlloc();
          v461 = swift_slowAlloc();
          v462 = v461;
          *v287 = 136446210;
          v336 = v446;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v337 = v447;
          v338 = sub_22D72E960();
          v340 = v339;
          (*(v448 + 8))(v336, v337);
          (*(v282 + 8))(v284, v460);
          v341 = sub_22D72891C(v338, v340, &v462);
          v269 = v442;

          *(v287 + 4) = v341;
          v294 = "%{public}s: Not scheduling an alarm with a paused presentation but no countdown duration";
          goto LABEL_103;
        }

LABEL_104:

        (*(v282 + 8))(v284, v279);
        goto LABEL_105;
      }
    }

    v342 = __swift_project_boxed_opaque_existential_1((v405 + 176), *(v405 + 200));
    v159 = *(*v342 + 56);
    MEMORY[0x28223BE20](v342);
    v394[-2] = sub_22D6F5AF8;
    v394[-1] = v343;
    os_unfair_lock_lock(v159 + 4);
    v344 = v455;
    sub_22D6F5A78(&v462);
    if (!v344)
    {
      os_unfair_lock_unlock(v159 + 4);
      v345 = v462;
      MEMORY[0x28223BE20](v346);
      v394[-2] = v461;
      v347 = v409;
      sub_22D6D5DB4(sub_22D6F4978, &v394[-4], v345, v409);

      v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
      if ((*(*(v348 - 8) + 48))(v347, 1, v348) != 1)
      {
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v349 = sub_22D72DBE0();
        __swift_project_value_buffer(v349, qword_2814580E8);
        v350 = v398;
        (*(v282 + 16))(v398, v461, v279);
        v351 = sub_22D72DBB0();
        v352 = sub_22D72E580();
        if (os_log_type_enabled(v351, v352))
        {
          v353 = v350;
          v354 = swift_slowAlloc();
          v461 = swift_slowAlloc();
          v462 = v461;
          *v354 = 136446210;
          v355 = v446;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v356 = v447;
          v357 = sub_22D72E960();
          v359 = v358;
          (*(v448 + 8))(v355, v356);
          (*(v282 + 8))(v353, v460);
          v360 = sub_22D72891C(v357, v359, &v462);
          v269 = v442;

          *(v354 + 4) = v360;
          _os_log_impl(&dword_22D6B4000, v351, v352, "%{public}s: Not scheduling an alarm with a duplicate ID", v354, 0xCu);
          v361 = v461;
          __swift_destroy_boxed_opaque_existential_1Tm(v461);
          v347 = v409;
          MEMORY[0x2318D0420](v361, -1, -1);
          MEMORY[0x2318D0420](v354, -1, -1);
        }

        else
        {

          (*(v282 + 8))(v350, v279);
        }

        (*(v457 + 104))(v458, *MEMORY[0x277CB99E0], v456);
        sub_22D72DED0();
        sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
        swift_allocError();
        sub_22D72DEC0();
        swift_willThrow();
      }

      (*(v439 + 8))(v269, v450);
      sub_22D6D5984(v347, &qword_27D9FF9E0, &qword_22D730298);
      return;
    }

LABEL_118:
    os_unfair_lock_unlock(v159 + 4);
    __break(1u);
    return;
  }

  v198 = v453;
  v157[4](v453, v46, v158);
  v199 = v440;
  v157[2](v440, v198, v158);
  v200 = (v157[11])(v199, v158);
  if (v200 == *MEMORY[0x277CB9948])
  {
    (v157[12])(v199, v158);
    v201 = v441;
    v202 = v435;
    v203 = v199;
    v204 = v436;
    (*(v441 + 32))(v435, v203, v436);
    v205 = v429;
    sub_22D72D710();
    v206 = sub_22D72D6C0();
    v208 = *(v201 + 8);
    v207 = v201 + 8;
    v209 = v205;
    v210 = v208;
    (v208)(v209, v204);
    if (v206)
    {
      (v210)(v202, v204);
      (v157[1])(v453, v158);
      v105 = v460;
      v162 = v461;
      v104 = v459;
      goto LABEL_27;
    }

    v452 = v210;
    v441 = v207;
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v295 = sub_22D72DBE0();
    __swift_project_value_buffer(v295, qword_2814580E8);
    v297 = v459;
    v296 = v460;
    v298 = v416;
    (*(v459 + 16))(v416, v461, v460);
    v299 = sub_22D72DBB0();
    v300 = sub_22D72E580();
    if (os_log_type_enabled(v299, v300))
    {
      v301 = swift_slowAlloc();
      v451 = v301;
      v461 = swift_slowAlloc();
      v462 = v461;
      *v301 = 136446210;
      v302 = v446;
      sub_22D72E170();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v303 = v447;
      v304 = sub_22D72E960();
      v306 = v305;
      v307 = v302;
      v158 = v455;
      (*(v448 + 8))(v307, v303);
      (*(v297 + 8))(v298, v296);
      v308 = sub_22D72891C(v304, v306, &v462);

      v309 = v451;
      *(v451 + 1) = v308;
      v310 = v309;
      _os_log_impl(&dword_22D6B4000, v299, v300, "%{public}s: Cannot schedule an alarm with a fixed date in the past", v309, 0xCu);
      v311 = v461;
      __swift_destroy_boxed_opaque_existential_1Tm(v461);
      MEMORY[0x2318D0420](v311, -1, -1);
      MEMORY[0x2318D0420](v310, -1, -1);
    }

    else
    {

      (*(v297 + 8))(v298, v296);
    }

    v362 = v436;
    v363 = v435;
    (*(v457 + 104))(v458, *MEMORY[0x277CB99E0], v456);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    (v452)(v363, v362);
    (*(v454 + 1))(v453, v158);
  }

  else
  {
    if (v200 != *MEMORY[0x277CB9960])
    {
      sub_22D72E970();
      __break(1u);
      goto LABEL_118;
    }

    (v157[12])(v199, v158);
    v211 = v434;
    v212 = v433;
    v213 = v199;
    v214 = v432;
    (*(v434 + 32))(v433, v213, v432);
    v215 = v157;
    sub_22D72DD90();
    v216 = v430;
    v217 = v431;
    if ((*(v430 + 88))(v161, v431) != *MEMORY[0x277CB9958])
    {
      (*(v211 + 8))(v212, v214);
      v312 = v455;
      v215[1](v453, v455);
      (*(v216 + 8))(v161, v217);
      v104 = v459;
      v105 = v460;
      v158 = v312;
      goto LABEL_26;
    }

    v218 = v214;
    v219 = v455;
    (*(v216 + 96))(v161, v217);
    v220 = *(*v161 + 16);

    if (v220)
    {
      (*(v434 + 8))(v433, v218);
      v158 = v219;
      (*(v454 + 1))(v453, v219);
      v104 = v459;
      v105 = v460;
      goto LABEL_26;
    }

    v364 = v459;
    v365 = v461;
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v366 = sub_22D72DBE0();
    __swift_project_value_buffer(v366, qword_2814580E8);
    v367 = v400;
    v368 = v460;
    (*(v364 + 16))(v400, v365, v460);
    v369 = sub_22D72DBB0();
    v370 = sub_22D72E580();
    if (os_log_type_enabled(v369, v370))
    {
      v371 = v367;
      v372 = swift_slowAlloc();
      v461 = swift_slowAlloc();
      v462 = v461;
      *v372 = 136446210;
      v373 = v364;
      v374 = v446;
      v375 = v371;
      sub_22D72E170();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v376 = v447;
      v377 = sub_22D72E960();
      v379 = v378;
      v380 = v374;
      v218 = v432;
      (*(v448 + 8))(v380, v376);
      (*(v373 + 8))(v375, v460);
      v381 = sub_22D72891C(v377, v379, &v462);

      *(v372 + 4) = v381;
      _os_log_impl(&dword_22D6B4000, v369, v370, "%{public}s: Cannot schedule a repeating weekly alarm without at least one day", v372, 0xCu);
      v382 = v461;
      __swift_destroy_boxed_opaque_existential_1Tm(v461);
      v219 = v455;
      MEMORY[0x2318D0420](v382, -1, -1);
      MEMORY[0x2318D0420](v372, -1, -1);
    }

    else
    {

      (*(v364 + 8))(v367, v368);
    }

    v392 = v434;
    v393 = v433;
    (*(v457 + 104))(v458, *MEMORY[0x277CB99E0], v456);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    (*(v392 + 8))(v393, v218);
    (*(v454 + 1))(v453, v219);
  }
}

uint64_t sub_22D6E40A0(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v3 = sub_22D72D7A0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v19 - v12;
  sub_22D6D5A4C(a1, v19 - v12, &unk_27D9FF4A0, &qword_22D730510);
  v14 = &v13[*(v11 + 56)];
  v15 = type metadata accessor for Alarm(0);
  (*(v4 + 16))(v9, v14 + *(v15 + 20), v3);
  sub_22D6F3848(v14);
  sub_22D72E170();
  v16 = sub_22D72D780();
  v17 = *(v4 + 8);
  v17(v7, v3);
  v17(v9, v3);
  v17(v13, v3);
  return v16 & 1;
}

void sub_22D6E4294(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v210 = a4;
  v181 = a3;
  v180 = a2;
  v187 = a5;
  v184 = sub_22D72D950();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v182 = v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_22D72DCF0();
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v189 = v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_22D72DBA0();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v202 = v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v188 = v165 - v16;
  MEMORY[0x28223BE20](v15);
  v190 = v165 - v17;
  v211 = sub_22D72D7A0();
  v213 = *(v211 - 1);
  v18 = *(v213 + 64);
  v19 = MEMORY[0x28223BE20](v211);
  v186 = v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v193 = v165 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v177 = v165 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v198 = v165 - v25;
  MEMORY[0x28223BE20](v24);
  v196 = v165 - v26;
  v200 = type metadata accessor for Alarm(0);
  v27 = MEMORY[0x28223BE20](v200);
  v201 = v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v204 = v165 - v29;
  v30 = sub_22D72D730();
  v207 = *(v30 - 8);
  v208 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v199 = v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v197 = v165 - v34;
  MEMORY[0x28223BE20](v33);
  v203 = v165 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v185 = v165 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v209 = v165 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = v165 - v41;
  v212 = sub_22D72DD20();
  v214 = *(v212 - 8);
  v43 = MEMORY[0x28223BE20](v212);
  v194 = v165 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v195 = v165 - v46;
  MEMORY[0x28223BE20](v45);
  v206 = v165 - v47;
  v48 = sub_22D72E380();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = (v165 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = *(v6 + 27);
  *v51 = v52;
  (*(v49 + 104))(v51, *MEMORY[0x277D85200], v48);
  v53 = v52;
  LOBYTE(v52) = sub_22D72E390();
  v54 = (*(v49 + 8))(v51, v48);
  if (v52)
  {
    v55 = MEMORY[0x2318CFD00](v54);
    v56 = v205;
    sub_22D6E0674(a1);
    if (v56)
    {
      objc_autoreleasePoolPop(v55);
      return;
    }

    v165[0] = v18;
    v205 = 0;
    v173 = v6;
    v171 = v14;
    objc_autoreleasePoolPop(v55);
    v57 = a1;
    sub_22D72E180();
    v58 = sub_22D72DDB0();
    v59 = *(v58 - 8);
    v172 = *(v59 + 48);
    v60 = v172(v42, 1, v58);
    sub_22D6D5984(v42, &qword_27D9FF4B0, &unk_22D7301A0);
    v61 = v214;
    v62 = *(v214 + 104);
    v63 = MEMORY[0x277CB9920];
    if (v60 == 1)
    {
      v63 = MEMORY[0x277CB9918];
    }

    v64 = *v63;
    v65 = v206;
    v66 = v212;
    v169 = v214 + 104;
    v168 = v62;
    v62(v206, v64, v212);
    v67 = v203;
    sub_22D72D710();
    v68 = *(v213 + 16);
    v176 = v213 + 16;
    v175 = v68;
    v68(v196, v210, v211);
    sub_22D72E170();
    sub_22D72E180();
    v69 = v190;
    sub_22D72E150();
    v174 = v57;
    sub_22D72E160();
    v71 = *(v61 + 16);
    v70 = v61 + 16;
    v170 = v71;
    v71(v195, v65, v66);
    v72 = v208;
    v73 = *(v207 + 16);
    v73(v197, v67, v208);
    v74 = v72;
    v75 = v69;
    v73(v199, v67, v74);
    v77 = v200;
    v76 = v201;
    v78 = *(v59 + 56);
    v167 = &v201[*(v200 + 32)];
    v78();
    v79 = v191;
    v80 = *(v191 + 56);
    v166 = &v76[*(v77 + 36)];
    v81 = v192;
    v80();
    v82 = &v76[*(v77 + 40)];
    *v82 = 0;
    v82[8] = 1;
    if (v172(v209, 1, v58) == 1 && (*(v79 + 48))(v75, 1, v81) == 1)
    {
      __break(1u);
      return;
    }

    v83 = v188;
    sub_22D6D5A4C(v75, v188, &qword_27D9FF310, &qword_22D7301B8);
    v84 = (*(v79 + 48))(v83, 1, v81);
    v85 = v211;
    v86 = v189;
    v165[1] = v70;
    if (v84 == 1)
    {
      sub_22D6D5984(v83, &qword_27D9FF310, &qword_22D7301B8);
      goto LABEL_14;
    }

    (*(v79 + 32))(v189, v83, v81);
    sub_22D72DCD0();
    if (v87)
    {
      sub_22D72DCE0();
      v89 = v88;
      v90 = *(v79 + 8);
      v79 += 8;
      v90(v86, v81);
      if ((v89 & 1) == 0)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    (*(v79 + 8))(v86, v81);
LABEL_14:
    v91 = (v213 + 32);
    v92 = *(v213 + 32);
    v93 = v201;
    (v92)(v201, v196, v85);
    v94 = v200;
    v95 = v93 + *(v200 + 20);
    v96 = v198;
    v198 = v91;
    v196 = v92;
    (v92)(v95, v96, v85);
    v97 = (v93 + v94[6]);
    v98 = v181;
    *v97 = v180;
    v97[1] = v98;
    *(v93 + v94[7]) = 0;

    v99 = v209;
    sub_22D6F4888(v209, v167, &qword_27D9FF4B0, &unk_22D7301A0);
    sub_22D6F4888(v75, v166, &qword_27D9FF310, &qword_22D7301B8);
    (*(v178 + 32))(v93 + v94[12], v202, v179);
    (*(v214 + 32))(v93 + v94[11], v195, v212);
    v100 = *(v207 + 32);
    v101 = v75;
    v102 = v208;
    v100(v93 + v94[13], v197, v208);
    v100(v93 + v94[14], v199, v102);
    v103 = v204;
    sub_22D6F37E4(v93, v204);
    sub_22D6D5984(v101, &qword_27D9FF310, &qword_22D7301B8);
    sub_22D6D5984(v99, &qword_27D9FF4B0, &unk_22D7301A0);
    sub_22D6F3848(v93);
    v104 = v182;
    sub_22D72E130();
    v105 = sub_22D72E120();
    v107 = v106;
    v108 = sub_22D72E110();
    v109 = sub_22D72E140();
    type metadata accessor for Alarm.ActivityData(0);
    v110 = swift_allocObject();
    v111 = OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction;
    *(v110 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction) = 0;
    v112 = OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction;
    *(v110 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction) = 0;
    (*(v183 + 32))(v110 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesType, v104, v184);
    v113 = (v110 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData);
    *v113 = v105;
    v113[1] = v107;
    *(v110 + v111) = v108;
    *(v110 + v112) = v109;
    v114 = v173;
    v115 = __swift_project_boxed_opaque_existential_1(v173 + 22, *(v173 + 25));
    v116 = *(*v115 + 56);
    v117 = MEMORY[0x28223BE20](v115);
    v165[-4] = v118;
    v165[-3] = v103;
    v165[-2] = v110;
    MEMORY[0x28223BE20](v117);
    v165[-2] = sub_22D6F5A94;
    v165[-1] = v119;

    os_unfair_lock_lock(v116 + 4);
    v120 = v205;
    sub_22D6F5B28(v121);
    v205 = v120;
    v122 = v116 + 4;
    if (v120)
    {
      os_unfair_lock_unlock(v122);

      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v123 = sub_22D72DBE0();
      __swift_project_value_buffer(v123, qword_2814580E8);
      v124 = v177;
      v14 = v211;
      v175(v177, v210, v211);
      v125 = v205;
      v126 = v205;
      v127 = sub_22D72DBB0();
      v128 = sub_22D72E580();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v215 = v131;
        *v129 = 136446466;
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v209 = v127;
        v132 = sub_22D72E960();
        v133 = v124;
        v135 = v134;
        (*(v213 + 8))(v133, v211);
        v136 = sub_22D72891C(v132, v135, &v215);

        *(v129 + 4) = v136;
        *(v129 + 12) = 2114;
        v137 = v125;
        v138 = _swift_stdlib_bridgeErrorToNSError();
        *(v129 + 14) = v138;
        *v130 = v138;
        v139 = v209;
        _os_log_impl(&dword_22D6B4000, v209, v128, "%{public}s: Failed to update alarm in store: %{public}@", v129, 0x16u);
        sub_22D6D5984(v130, &unk_27D9FF4D0, &qword_22D730180);
        v140 = v130;
        v14 = v211;
        MEMORY[0x2318D0420](v140, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        v141 = v131;
        v114 = v173;
        MEMORY[0x2318D0420](v141, -1, -1);
        MEMORY[0x2318D0420](v129, -1, -1);
      }

      else
      {

        (*(v213 + 8))(v124, v14);
      }

      v205 = 0;
      v6 = v194;
      v142 = v168;
      v143 = MEMORY[0x277CB9918];
    }

    else
    {
      os_unfair_lock_unlock(v122);

      v14 = v211;
      v6 = v194;
      v142 = v168;
      v143 = MEMORY[0x277CB9918];
    }

    v144 = v212;
    v142(v6, *v143, v212);
    v145 = sub_22D72DD10();
    v146 = *(v214 + 8);
    v214 += 8;
    v211 = v146;
    (v146)(v6, v144);
    if (v145)
    {
      __swift_project_boxed_opaque_existential_1(v114 + 7, *(v114 + 10));
      v147 = v193;
      v175(v193, v210, v14);
      v148 = (*(v213 + 80) + 16) & ~*(v213 + 80);
      v149 = swift_allocObject();
      (v196)(v149 + v148, v147, v14);
      sub_22D6BB384(v204, sub_22D6F48F0, v149);
    }

    sub_22D6DAC98();
    sub_22D6D7C3C();
    if (qword_2814572C8 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  __break(1u);
LABEL_30:
  swift_once();
LABEL_25:
  v150 = sub_22D72DBE0();
  __swift_project_value_buffer(v150, qword_2814580E8);
  v151 = v186;
  v175(v186, v210, v14);
  v152 = sub_22D72DBB0();
  v153 = sub_22D72E5A0();
  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v155 = v151;
    v156 = swift_slowAlloc();
    v215 = v156;
    *v154 = 136446210;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v157 = sub_22D72E960();
    v158 = v14;
    v160 = v159;
    (*(v213 + 8))(v155, v158);
    v161 = v157;
    v6 = v194;
    v162 = sub_22D72891C(v161, v160, &v215);

    *(v154 + 4) = v162;
    _os_log_impl(&dword_22D6B4000, v152, v153, "%{public}s: Scheduled alarm", v154, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v156);
    MEMORY[0x2318D0420](v156, -1, -1);
    MEMORY[0x2318D0420](v154, -1, -1);
  }

  else
  {

    (*(v213 + 8))(v151, v14);
  }

  sub_22D72E170();
  sub_22D72E180();
  sub_22D72E150();
  v163 = v206;
  v164 = v212;
  v170(v6, v206, v212);
  sub_22D72DD00();

  sub_22D6F3848(v204);
  (*(v207 + 8))(v203, v208);
  (v211)(v163, v164);
}

void sub_22D6E56DC(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v12 = sub_22D72DBE0();
    __swift_project_value_buffer(v12, qword_2814580E8);
    (*(v9 + 16))(v11, a4, v8);
    v13 = a1;
    v14 = sub_22D72DBB0();
    v15 = sub_22D72E580();
    sub_22D6D5828(a1, a2, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v16 = 136446466;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_22D72E960();
      v20 = v19;
      (*(v9 + 8))(v11, v8);
      v21 = sub_22D72891C(v18, v20, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2114;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&dword_22D6B4000, v14, v15, "%{public}s: Failed to start activity in countdown state for alarm: %{public}@", v16, 0x16u);
      sub_22D6D5984(v17, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v17, -1, -1);
      v24 = v25;
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318D0420](v24, -1, -1);
      MEMORY[0x2318D0420](v16, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }
  }
}

uint64_t sub_22D6E59CC(uint64_t a1)
{
  v3 = sub_22D72DEB0();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72D730();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22D72DD20();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Alarm(0);
  v10 = MEMORY[0x28223BE20](v64);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  v14 = sub_22D72E380();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = v1;
  v18 = v1[27];
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_22D72E390();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    sub_22D6F37E4(a1, v13);
    if (qword_2814572C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v20 = sub_22D72DBE0();
  v58 = __swift_project_value_buffer(v20, qword_2814580E8);
  v21 = sub_22D72DBB0();
  v22 = sub_22D72E5A0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = v13;
    v25 = swift_slowAlloc();
    v66[0] = v25;
    *v23 = 136446210;
    swift_beginAccess();
    sub_22D72D7A0();
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_22D72E960();
    v28 = sub_22D72891C(v26, v27, v66);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_22D6B4000, v21, v22, "%{public}s: Counting down to alarm", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v29 = v25;
    v13 = v24;
    MEMORY[0x2318D0420](v29, -1, -1);
    MEMORY[0x2318D0420](v23, -1, -1);
  }

  swift_beginAccess();
  v30 = *(v7 + 104);
  v31 = v67;
  v30(v9, *MEMORY[0x277CB9910], v67);
  v32 = sub_22D72DD10();
  v33 = *(v7 + 8);
  v33(v9, v31);
  if (v32 & 1) != 0 || (v30(v9, *MEMORY[0x277CB9920], v31), v34 = sub_22D72DD10(), v33(v9, v31), (v34))
  {
    v35 = v60;
    sub_22D72D710();
    swift_beginAccess();
    v36 = v63;
    sub_22D7143F0(v35, 0.0);
    swift_endAccess();
    (*(v61 + 8))(v35, v62);
    if (!v36)
    {
      v37 = __swift_project_boxed_opaque_existential_1(v59 + 22, v59[25]);
      v38 = v57;
      v39 = sub_22D6F37E4(v13, v57);
      v40 = *(*v37 + 56);
      v41 = MEMORY[0x28223BE20](v39);
      *(&v53 - 4) = v42;
      *(&v53 - 3) = v38;
      *(&v53 - 2) = 0;
      MEMORY[0x28223BE20](v41);
      *(&v53 - 2) = sub_22D6F5A94;
      *(&v53 - 1) = v43;
      os_unfair_lock_lock(v40 + 4);
      sub_22D6F5B28(v44);
      os_unfair_lock_unlock(v40 + 4);
      sub_22D6F3848(v38);
      __swift_project_boxed_opaque_existential_1(v59 + 7, v59[10]);
      sub_22D6BB384(v13, nullsub_1, 0);
      sub_22D6DAC98();
      sub_22D6D7C3C();
    }
  }

  else
  {
    v45 = sub_22D72DBB0();
    v46 = sub_22D72E580();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65[0] = v48;
      *v47 = 136446210;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v49 = sub_22D72E960();
      v51 = sub_22D72891C(v49, v50, v65);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_22D6B4000, v45, v46, "%{public}s: Not counting down an alarm in the wrong state", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x2318D0420](v48, -1, -1);
      MEMORY[0x2318D0420](v47, -1, -1);
    }

    (*(v54 + 104))(v56, *MEMORY[0x277CB99E0], v55);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
  }

  return sub_22D6F3848(v13);
}

void sub_22D6E63E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Alarm(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = &v61 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v65 = (&v61 - v13);
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  v16 = sub_22D72E380();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v3[27];
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v21 = v20;
  LOBYTE(v20) = sub_22D72E390();
  v23 = *(v17 + 8);
  v22 = (v17 + 8);
  v23(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v24 = v66;
  sub_22D6E81BC(a1, a2, a3, v15);
  if (v24)
  {
    return;
  }

  v19 = v15;
  v22 = v3;
  v62 = 0;
  if (qword_2814572C8 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v25 = sub_22D72DBE0();
  v26 = __swift_project_value_buffer(v25, qword_2814580E8);
  v27 = v65;
  sub_22D6F37E4(v19, v65);
  v66 = v26;
  v28 = sub_22D72DBB0();
  v29 = sub_22D72E5A0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v67 = v31;
    *v30 = 136446210;
    sub_22D72D7A0();
    v32 = v19;
    v33 = v22;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = sub_22D72E960();
    v36 = v35;
    sub_22D6F3848(v27);
    v37 = v34;
    v22 = v33;
    v19 = v32;
    v38 = sub_22D72891C(v37, v36, &v67);

    *(v30 + 4) = v38;
    _os_log_impl(&dword_22D6B4000, v28, v29, "%{public}s: Cancelling alarm", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x2318D0420](v31, -1, -1);
    MEMORY[0x2318D0420](v30, -1, -1);
  }

  else
  {

    sub_22D6F3848(v27);
  }

  v39 = __swift_project_boxed_opaque_existential_1(v22 + 22, v22[25]);
  v40 = *(*v39 + 56);
  v41 = MEMORY[0x28223BE20](v39);
  *(&v61 - 2) = v42;
  *(&v61 - 1) = v19;
  MEMORY[0x28223BE20](v41);
  *(&v61 - 2) = sub_22D6F5A60;
  *(&v61 - 1) = v43;
  os_unfair_lock_lock(v40 + 4);
  v44 = v62;
  sub_22D6F5B28(v45);
  v46 = v40 + 4;
  if (v44)
  {
    os_unfair_lock_unlock(v46);
    v47 = v63;
    sub_22D6F37E4(v19, v63);
    v48 = v44;
    v49 = sub_22D72DBB0();
    v50 = sub_22D72E580();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v51 = 136446466;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v52 = sub_22D72E960();
      v54 = v53;
      sub_22D6F3848(v47);
      v55 = sub_22D72891C(v52, v54, &v67);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2114;
      v56 = v44;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v57;
      v58 = v62;
      *v62 = v57;
      _os_log_impl(&dword_22D6B4000, v49, v50, "%{public}s: Failed to remove alarm from store: %{public}@", v51, 0x16u);
      sub_22D6D5984(v58, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v58, -1, -1);
      v59 = v65;
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x2318D0420](v59, -1, -1);
      MEMORY[0x2318D0420](v51, -1, -1);
    }

    else
    {

      sub_22D6F3848(v47);
    }
  }

  else
  {
    os_unfair_lock_unlock(v46);
  }

  __swift_project_boxed_opaque_existential_1(v22 + 7, v22[10]);
  v60 = off_2840CBDE8[0];
  type metadata accessor for ActivityManager();
  v60(v19);
  sub_22D6F3848(v19);
}

void sub_22D6E6C18(void *a1)
{
  v2 = v1;
  v186 = a1;
  v163 = sub_22D72DD20();
  v3 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_22D72D730();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  MEMORY[0x28223BE20](v6 - 8);
  v165 = &v157 - v7;
  v8 = sub_22D72DDA0();
  v176 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v169 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v157 - v11;
  v13 = sub_22D72DDB0();
  v14 = *(v13 - 8);
  v178 = v13;
  v179 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v171 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v157 - v17;
  v180 = type metadata accessor for Alarm(0);
  v19 = MEMORY[0x28223BE20](v180);
  v170 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v175 = &v157 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v174 = &v157 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v159 = &v157 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v164 = &v157 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v160 = &v157 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v157 - v31;
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v33 = sub_22D72DBE0();
  v34 = __swift_project_value_buffer(v33, qword_2814580E8);
  sub_22D6F37E4(v186, v32);
  v181 = v34;
  v35 = sub_22D72DBB0();
  v36 = sub_22D72E5A0();
  v37 = os_log_type_enabled(v35, v36);
  v177 = v8;
  v162 = v3;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v173 = v18;
    v172 = v12;
    v40 = v39;
    v185[0] = v39;
    *v38 = 136446210;
    sub_22D72D7A0();
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v41 = sub_22D72E960();
    v43 = v42;
    sub_22D6F3848(v32);
    v44 = sub_22D72891C(v41, v43, v185);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_22D6B4000, v35, v36, "%{public}s: Stopping alarm", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v45 = v40;
    v2 = v1;
    v12 = v172;
    v46 = v173;
    MEMORY[0x2318D0420](v45, -1, -1);
    MEMORY[0x2318D0420](v38, -1, -1);
  }

  else
  {

    sub_22D6F3848(v32);
    v46 = v18;
  }

  __swift_project_boxed_opaque_existential_1(v182 + 7, v182[10]);
  v47 = off_2840CBDE8[0];
  type metadata accessor for ActivityManager();
  v48 = v2;
  v47(v186);
  if (v2)
  {
    v49 = 0;
    v50 = v170;
    sub_22D6F37E4(v186, v170);
    v51 = v48;
    v52 = sub_22D72DBB0();
    v53 = sub_22D72E580();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v158 = 0;
      v56 = v55;
      v157 = swift_slowAlloc();
      v185[0] = v157;
      *v54 = 136446466;
      sub_22D72D7A0();
      v173 = v46;
      v172 = v12;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v57 = sub_22D72E960();
      v59 = v58;
      sub_22D6F3848(v50);
      v60 = sub_22D72891C(v57, v59, v185);
      v61 = v173;
      v62 = v179;

      *(v54 + 4) = v60;
      v63 = v62;
      v12 = v172;
      *(v54 + 12) = 2114;
      v64 = v48;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 14) = v65;
      *v56 = v65;
      _os_log_impl(&dword_22D6B4000, v52, v53, "%{public}s: Failed to cancel activity for alarm: %{public}@", v54, 0x16u);
      sub_22D6D5984(v56, &unk_27D9FF4D0, &qword_22D730180);
      v66 = v56;
      v46 = v61;
      v49 = v158;
      MEMORY[0x2318D0420](v66, -1, -1);
      v67 = v157;
      __swift_destroy_boxed_opaque_existential_1Tm(v157);
      MEMORY[0x2318D0420](v67, -1, -1);
      MEMORY[0x2318D0420](v54, -1, -1);

      v69 = v176;
      v68 = v177;
      goto LABEL_12;
    }

    sub_22D6F3848(v50);
  }

  else
  {
    v49 = 0;
  }

  v69 = v176;
  v68 = v177;
  v63 = v179;
LABEL_12:
  sub_22D6D5A4C(v186 + v180[8], v12, &qword_27D9FF4B0, &unk_22D7301A0);
  v70 = v178;
  v71 = (*(v63 + 48))(v12, 1, v178);
  v72 = v175;
  if (v71 != 1)
  {
    (*(v63 + 32))(v46, v12, v70);
    v73 = v182;
    swift_beginAccess();
    sub_22D6D5A4C((v73 + 2), &v183, &qword_27D9FF500, &qword_22D730530);
    if (!v184)
    {
      (*(v63 + 8))(v46, v70);
      sub_22D6D5984(&v183, &qword_27D9FF500, &qword_22D730530);
      goto LABEL_21;
    }

    sub_22D6D5D34(&v183, v185);
    v74 = v171;
    (*(v63 + 16))(v171, v46, v70);
    if ((*(v63 + 88))(v74, v70) != *MEMORY[0x277CB9960])
    {
      v79 = *(v63 + 8);
      v79(v46, v70);
      v79(v171, v70);
      goto LABEL_20;
    }

    v75 = v46;
    v76 = v171;
    (*(v63 + 96))(v171, v70);
    v77 = v169;
    (*(v69 + 32))(v169, v76, v68);
    __swift_project_boxed_opaque_existential_1(v185, v185[3]);
    v78 = v165;
    sub_22D722F80(v77, v186 + v180[14], v165);
    if ((*(v167 + 48))(v78, 1, v168) == 1)
    {
      (*(v69 + 8))(v169, v68);
      (*(v63 + 8))(v75, v70);
      sub_22D6D5984(v78, &qword_27D9FFDD0, &qword_22D730140);
      v72 = v175;
LABEL_20:
      __swift_destroy_boxed_opaque_existential_1Tm(v185);
      goto LABEL_21;
    }

    v173 = v75;
    sub_22D6D5984(v78, &qword_27D9FFDD0, &qword_22D730140);
    v113 = v160;
    sub_22D6F37E4(v186, v160);
    v114 = sub_22D72DBB0();
    v115 = sub_22D72E5A0();
    v116 = os_log_type_enabled(v114, v115);
    v158 = v49;
    if (v116)
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v183 = v118;
      *v117 = 136446210;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v119 = sub_22D72E960();
      v121 = v120;
      sub_22D6F3848(v113);
      v122 = sub_22D72891C(v119, v121, &v183);

      *(v117 + 4) = v122;
      _os_log_impl(&dword_22D6B4000, v114, v115, "%{public}s: Rescheduling alarm as it will fire again", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v118);
      MEMORY[0x2318D0420](v118, -1, -1);
      MEMORY[0x2318D0420](v117, -1, -1);
    }

    else
    {

      sub_22D6F3848(v113);
    }

    v123 = v164;
    v124 = v163;
    v125 = v161;
    sub_22D6F37E4(v186, v164);
    sub_22D72D710();
    v126 = v180[11];
    v127 = v162;
    v128 = *(v162 + 104);
    v128(v125, *MEMORY[0x277CB9910], v124);
    v129 = sub_22D72DD10();
    v130 = *(v127 + 8);
    v130(v125, v124);
    if (v129 & 1) != 0 || (v128(v125, *MEMORY[0x277CB9908], v124), v131 = sub_22D72DD10(), v130(v125, v124), (v131) || (v128(v125, *MEMORY[0x277CB9918], v124), v132 = sub_22D72DD10(), v130(v125, v124), (v132))
    {
      v133 = v180;
      *&v123[v180[7]] = 0;
      v134 = &v123[v133[10]];
      *v134 = 0;
      v134[8] = 1;
      (*(v167 + 40))(&v123[v133[14]], v166, v168);
      v130(&v123[v126], v124);
      v128(&v123[v126], *MEMORY[0x277CB9920], v124);
      v135 = __swift_project_boxed_opaque_existential_1(v182 + 22, v182[25]);
      v136 = *(*v135 + 56);
      v137 = MEMORY[0x28223BE20](v135);
      *(&v157 - 4) = v138;
      *(&v157 - 3) = v123;
      *(&v157 - 2) = 0;
      MEMORY[0x28223BE20](v137);
      *(&v157 - 2) = sub_22D6F5A94;
      *(&v157 - 1) = v139;
      os_unfair_lock_lock(v136 + 4);
      v140 = v158;
      sub_22D6F5B28(v141);
      v142 = v136 + 4;
      if (v140)
      {
        os_unfair_lock_unlock(v142);
        v143 = v159;
        sub_22D6F37E4(v186, v159);
        v144 = v140;
        v145 = sub_22D72DBB0();
        v146 = sub_22D72E580();

        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          *&v183 = v149;
          *v147 = 136446466;
          sub_22D72D7A0();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v150 = sub_22D72E960();
          v152 = v151;
          sub_22D6F3848(v143);
          v153 = sub_22D72891C(v150, v152, &v183);

          *(v147 + 4) = v153;
          *(v147 + 12) = 2114;
          v154 = v140;
          v155 = _swift_stdlib_bridgeErrorToNSError();
          *(v147 + 14) = v155;
          *v148 = v155;
          _os_log_impl(&dword_22D6B4000, v145, v146, "%{public}s: Failed to update alarm in store: %{public}@", v147, 0x16u);
          sub_22D6D5984(v148, &unk_27D9FF4D0, &qword_22D730180);
          MEMORY[0x2318D0420](v148, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v149);
          MEMORY[0x2318D0420](v149, -1, -1);
          MEMORY[0x2318D0420](v147, -1, -1);

          (*(v176 + 8))(v169, v177);
          (*(v179 + 8))(v173, v178);
          v156 = v164;
        }

        else
        {

          sub_22D6F3848(v143);
          (*(v176 + 8))(v169, v177);
          (*(v179 + 8))(v173, v178);
          v156 = v123;
        }

        sub_22D6F3848(v156);
        goto LABEL_43;
      }

      os_unfair_lock_unlock(v142);
    }

    else
    {
      sub_22D6F45E8();
      swift_allocError();
      swift_willThrow();
      (*(v167 + 8))(v166, v168);
    }

    (*(v176 + 8))(v169, v177);
    (*(v179 + 8))(v173, v178);
    sub_22D6F3848(v123);
LABEL_43:
    __swift_destroy_boxed_opaque_existential_1Tm(v185);
    return;
  }

  sub_22D6D5984(v12, &qword_27D9FF4B0, &unk_22D7301A0);
LABEL_21:
  v80 = v174;
  sub_22D6F37E4(v186, v174);
  v81 = sub_22D72DBB0();
  v82 = sub_22D72E5A0();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = v49;
    v84 = v72;
    v85 = v80;
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v185[0] = v87;
    *v86 = 136446210;
    sub_22D72D7A0();
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v88 = sub_22D72E960();
    v90 = v89;
    v91 = v85;
    v72 = v84;
    sub_22D6F3848(v91);
    v92 = sub_22D72891C(v88, v90, v185);
    v49 = v83;

    *(v86 + 4) = v92;
    _os_log_impl(&dword_22D6B4000, v81, v82, "%{public}s: Removing alarm as it will never fire again", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    MEMORY[0x2318D0420](v87, -1, -1);
    MEMORY[0x2318D0420](v86, -1, -1);
  }

  else
  {

    sub_22D6F3848(v80);
  }

  v93 = __swift_project_boxed_opaque_existential_1(v182 + 22, v182[25]);
  v94 = *(*v93 + 56);
  v95 = MEMORY[0x28223BE20](v93);
  *(&v157 - 2) = v96;
  *(&v157 - 1) = v186;
  MEMORY[0x28223BE20](v95);
  *(&v157 - 2) = sub_22D6F486C;
  *(&v157 - 1) = v97;
  os_unfair_lock_lock(v94 + 4);
  v98 = v49;
  sub_22D6F5B28(v99);
  v100 = v94 + 4;
  if (v49)
  {
    os_unfair_lock_unlock(v100);
    sub_22D6F37E4(v186, v72);
    v101 = v49;
    v102 = sub_22D72DBB0();
    v103 = sub_22D72E580();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v185[0] = v106;
      *v104 = 136446466;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v107 = sub_22D72E960();
      v109 = v108;
      sub_22D6F3848(v72);
      v110 = sub_22D72891C(v107, v109, v185);

      *(v104 + 4) = v110;
      *(v104 + 12) = 2114;
      v111 = v98;
      v112 = _swift_stdlib_bridgeErrorToNSError();
      *(v104 + 14) = v112;
      *v105 = v112;
      _os_log_impl(&dword_22D6B4000, v102, v103, "%{public}s: Failed to remove alarm from store: %{public}@", v104, 0x16u);
      sub_22D6D5984(v105, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v105, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      MEMORY[0x2318D0420](v106, -1, -1);
      MEMORY[0x2318D0420](v104, -1, -1);
    }

    else
    {

      sub_22D6F3848(v72);
    }
  }

  else
  {
    os_unfair_lock_unlock(v100);
  }
}

void sub_22D6E81BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v58 = a2;
  v54 = a1;
  v49 = a4;
  v6 = sub_22D72DEB0();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72D7A0();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = sub_22D72E380();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v4[27];
  *v22 = v23;
  (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
  v24 = v23;
  v25 = sub_22D72E390();
  v27 = *(v20 + 8);
  v26 = v20 + 8;
  v27(v22, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  v28 = __swift_project_boxed_opaque_existential_1(v4 + 22, v4[25]);
  v29 = *(*v28 + 56);
  MEMORY[0x28223BE20](v28);
  *(&v49 - 2) = sub_22D6F5AF8;
  *(&v49 - 1) = v30;
  os_unfair_lock_lock(v29 + 4);
  sub_22D6F5A78(&v59);
  if (v5)
  {
    os_unfair_lock_unlock(v29 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v29 + 4);
  v31 = v59;
  MEMORY[0x28223BE20](v32);
  v19 = v54;
  v26 = v57;
  v33 = v58;
  *(&v49 - 4) = v54;
  *(&v49 - 3) = v33;
  *(&v49 - 2) = v26;
  sub_22D6D5DB4(sub_22D6F4848, (&v49 - 6), v31, v12);

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
  {
    sub_22D6D5984(v12, &qword_27D9FF9E0, &qword_22D730298);
    v35 = type metadata accessor for Alarm(0);
    (*(*(v35 - 8) + 56))(v18, 1, 1, v35);
    v25 = v55;
    v12 = v56;
  }

  else
  {
    sub_22D6D3C4C(&v12[*(v34 + 48)], v18);
    v35 = type metadata accessor for Alarm(0);
    (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
    v25 = v55;
    v36 = v12;
    v12 = v56;
    (*(v55 + 8))(v36, v56);
  }

  sub_22D6D5A4C(v18, v16, &qword_27D9FF550, &qword_22D730130);
  type metadata accessor for Alarm(0);
  if ((*(*(v35 - 8) + 48))(v16, 1, v35) != 1)
  {
    sub_22D6D5984(v18, &qword_27D9FF550, &qword_22D730130);
    sub_22D6D3C4C(v16, v49);
    return;
  }

  sub_22D6D5984(v16, &qword_27D9FF550, &qword_22D730130);
  if (qword_2814572C8 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v37 = sub_22D72DBE0();
  __swift_project_value_buffer(v37, qword_2814580E8);
  v38 = v50;
  (*(v25 + 16))(v50, v19, v12);

  v39 = sub_22D72DBB0();
  v40 = sub_22D72E580();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = v12;
    v42 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v59 = v56;
    *v42 = 136446466;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = sub_22D72E960();
    v44 = v38;
    v46 = v45;
    (*(v25 + 8))(v44, v41);
    v47 = sub_22D72891C(v43, v46, &v59);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2082;
    *(v42 + 14) = sub_22D72891C(v58, v26, &v59);
    _os_log_impl(&dword_22D6B4000, v39, v40, "%{public}s:%{public}s: Alarm does not exist", v42, 0x16u);
    v48 = v56;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v48, -1, -1);
    MEMORY[0x2318D0420](v42, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v38, v12);
  }

  (*(v51 + 104))(v53, *MEMORY[0x277CB99E0], v52);
  sub_22D72DED0();
  sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
  swift_allocError();
  sub_22D72DEC0();
  swift_willThrow();
  sub_22D6D5984(v18, &qword_27D9FF550, &qword_22D730130);
}

void sub_22D6E89E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v36 = a2;
  v4 = sub_22D72DEB0();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D72D7A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D72E380();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v2[27];
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  v16 = sub_22D72E390();
  (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v17 = __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
  v18 = *(*v17 + 56);
  MEMORY[0x28223BE20](v17);
  *(&v35 - 2) = sub_22D6F5AF8;
  *(&v35 - 1) = v19;
  os_unfair_lock_lock(v18 + 4);
  sub_22D6F5A78(&v41);
  if (v3)
  {
    os_unfair_lock_unlock(v18 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v18 + 4);
  v20 = v41;
  v16 = v40;
  if (v41[2])
  {
    v21 = sub_22D6CC49C(v40);
    if (v22)
    {
      v23 = v21;
      v24 = *(v20 + 56);
      v25 = type metadata accessor for Alarm(0);
      sub_22D6F37E4(v24 + *(*(v25 - 8) + 72) * v23, v36);

      return;
    }
  }

  if (qword_2814572C8 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v26 = sub_22D72DBE0();
  __swift_project_value_buffer(v26, qword_2814580E8);
  (*(v7 + 16))(v9, v16, v6);
  v27 = sub_22D72DBB0();
  v28 = sub_22D72E580();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41 = v30;
    *v29 = 136446210;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v31 = sub_22D72E960();
    v33 = v32;
    (*(v7 + 8))(v9, v6);
    v34 = sub_22D72891C(v31, v33, &v41);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_22D6B4000, v27, v28, "%{public}s: Alarm does not exist", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x2318D0420](v30, -1, -1);
    MEMORY[0x2318D0420](v29, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  (*(v37 + 104))(v39, *MEMORY[0x277CB99E0], v38);
  sub_22D72DED0();
  sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
  swift_allocError();
  sub_22D72DEC0();
  swift_willThrow();
}

void sub_22D6E8F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a4;
  v116 = a3;
  v104 = sub_22D72DEB0();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v105 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72D7A0();
  v117 = *(v9 - 8);
  v118 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v99 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v11;
  MEMORY[0x28223BE20](v10);
  v112 = &v96 - v12;
  v111 = sub_22D72DDD0();
  v108 = *(v111 - 8);
  v13 = MEMORY[0x28223BE20](v111);
  v103 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v97 = &v96 - v16;
  v101 = v17;
  MEMORY[0x28223BE20](v15);
  v98 = &v96 - v18;
  v19 = type metadata accessor for Alarm(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v110 = (&v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v114 = &v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v96 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v119 = &v96 - v31;
  v32 = *(v4 + 200);
  v107 = v4;
  v33 = __swift_project_boxed_opaque_existential_1((v4 + 176), v32);
  v34 = *v33;
  v35 = *(*v33 + 56);
  v120 = sub_22D6F5AF8;
  v121 = v34;
  os_unfair_lock_lock(v35 + 4);
  sub_22D6F5A78(&v122);
  if (v5)
  {
    os_unfair_lock_unlock(v35 + 4);
    __break(1u);
LABEL_20:
    os_unfair_lock_unlock((v20 + 16));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v35 + 4);
  v36 = v122;
  MEMORY[0x28223BE20](v37);
  v115 = a1;
  *(&v96 - 4) = a1;
  *(&v96 - 3) = a2;
  v109 = a2;
  v38 = v116;
  *(&v96 - 2) = v116;
  sub_22D6D5DB4(sub_22D6F5AAC, (&v96 - 6), v36, v26);
  v100 = 0;

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  if ((*(*(v39 - 8) + 48))(v26, 1, v39) == 1)
  {
    sub_22D6D5984(v26, &qword_27D9FF9E0, &qword_22D730298);
    v40 = v119;
    (*(v20 + 56))(v119, 1, 1, v19);
    v42 = v117;
    v41 = v118;
  }

  else
  {
    v40 = v119;
    sub_22D6D3C4C(&v26[*(v39 + 48)], v119);
    (*(v20 + 56))(v40, 0, 1, v19);
    v42 = v117;
    v43 = v26;
    v41 = v118;
    (*(v117 + 8))(v43, v118);
  }

  v44 = v110;
  sub_22D6D5A4C(v40, v30, &qword_27D9FF550, &qword_22D730130);
  if ((*(v20 + 48))(v30, 1, v19) != 1)
  {
    v58 = v30;
    v59 = v114;
    sub_22D6D3C4C(v58, v114);
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v60 = sub_22D72DBE0();
    __swift_project_value_buffer(v60, qword_2814580E8);
    sub_22D6F37E4(v59, v44);
    v61 = v108;
    v62 = v98;
    v63 = v111;
    v110 = *(v108 + 16);
    v110(v98, v113, v111);
    v64 = sub_22D72DBB0();
    v65 = sub_22D72E5A0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = v44;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v122 = v68;
      *v67 = 136446466;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      LODWORD(v105) = v65;
      v69 = sub_22D72E960();
      v71 = v70;
      sub_22D6F3848(v66);
      v72 = sub_22D72891C(v69, v71, &v122);
      v61 = v108;

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      v73 = v110;
      v110(v97, v62, v63);
      v74 = sub_22D72E4C0();
      v76 = v75;
      (*(v61 + 8))(v62, v111);
      v77 = sub_22D72891C(v74, v76, &v122);
      v63 = v111;

      *(v67 + 14) = v77;
      _os_log_impl(&dword_22D6B4000, v64, v105, "%{public}s: Executing intent for action %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318D0420](v68, -1, -1);
      MEMORY[0x2318D0420](v67, -1, -1);

      v78 = v73;
    }

    else
    {

      (*(v61 + 8))(v62, v63);
      sub_22D6F3848(v44);
      v78 = v110;
    }

    v111 = __swift_project_boxed_opaque_existential_1((v107 + 176), *(v107 + 200));
    v79 = v103;
    v78(v103, v113, v63);
    v81 = v117;
    v80 = v118;
    (*(v117 + 16))(v112, v115, v118);
    v82 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v83 = (v101 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = v63;
    v85 = (*(v81 + 80) + v83 + 16) & ~*(v81 + 80);
    v86 = swift_allocObject();
    (*(v61 + 32))(v86 + v82, v79, v84);
    v87 = (v86 + v83);
    v88 = v116;
    *v87 = v109;
    v87[1] = v88;
    v89 = (*(v81 + 32))(v86 + v85, v112, v80);
    v20 = *(*v111 + 56);
    v90 = MEMORY[0x28223BE20](v89);
    v91 = v114;
    *(&v96 - 4) = v92;
    *(&v96 - 3) = v91;
    *(&v96 - 2) = sub_22D6F4750;
    *(&v96 - 1) = v86;
    MEMORY[0x28223BE20](v90);
    *(&v96 - 2) = sub_22D6D3EF4;
    *(&v96 - 1) = v93;

    os_unfair_lock_lock((v20 + 16));
    v94 = v100;
    sub_22D6F5B28(v95);
    if (!v94)
    {
      os_unfair_lock_unlock((v20 + 16));

      sub_22D6D5984(v119, &qword_27D9FF550, &qword_22D730130);
      sub_22D6F3848(v91);
      return;
    }

    goto LABEL_20;
  }

  v45 = v38;
  sub_22D6D5984(v30, &qword_27D9FF550, &qword_22D730130);
  v46 = v115;
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v47 = sub_22D72DBE0();
  __swift_project_value_buffer(v47, qword_2814580E8);
  v48 = v99;
  (*(v42 + 16))(v99, v46, v41);

  v49 = sub_22D72DBB0();
  v50 = sub_22D72E580();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = v48;
    v118 = swift_slowAlloc();
    v122 = v118;
    *v51 = 136446466;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v53 = sub_22D72E960();
    v55 = v54;
    (*(v42 + 8))(v52, v41);
    v56 = sub_22D72891C(v53, v55, &v122);
    v40 = v119;

    *(v51 + 4) = v56;
    *(v51 + 12) = 2082;
    *(v51 + 14) = sub_22D72891C(v109, v45, &v122);
    _os_log_impl(&dword_22D6B4000, v49, v50, "%{public}s:%{public}s: Not executing intent for an alarm that does not exist", v51, 0x16u);
    v57 = v118;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v57, -1, -1);
    MEMORY[0x2318D0420](v51, -1, -1);
  }

  else
  {

    (*(v42 + 8))(v48, v41);
  }

  (*(v102 + 104))(v105, *MEMORY[0x277CB99E0], v104);
  sub_22D72DED0();
  sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
  swift_allocError();
  sub_22D72DEC0();
  swift_willThrow();
  sub_22D6D5984(v40, &qword_27D9FF550, &qword_22D730130);
}

uint64_t sub_22D6E9C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v28 = a2;
  v5 = sub_22D72D7A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v25 = a1;
  sub_22D6D5A4C(a1, &v25 - v13, &unk_27D9FF4A0, &qword_22D730510);
  v15 = &v14[*(v9 + 48)];
  v16 = type metadata accessor for Alarm(0);
  (*(v6 + 16))(v8, v15 + *(v16 + 20), v5);
  sub_22D6F3848(v15);
  LOBYTE(v15) = sub_22D72D780();
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v14, v5);
  if (v15)
  {
    sub_22D6D5A4C(v25, v12, &unk_27D9FF4A0, &qword_22D730510);
    v18 = &v12[*(v9 + 48)];
    v19 = (v18 + *(v16 + 24));
    v21 = *v19;
    v20 = v19[1];

    sub_22D6F3848(v18);
    if (v21 == v26 && v20 == v27)
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_22D72E980();
    }

    v17(v12, v5);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

void sub_22D6E9E94(char *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v75 = a6;
  v77 = a4;
  v78[1] = *MEMORY[0x277D85DE8];
  v76 = sub_22D72D7A0();
  v10 = *(v76 - 8);
  v11 = MEMORY[0x28223BE20](v76);
  v13 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v70[-v14];
  v16 = sub_22D72DDD0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v70[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v20 = sub_22D72DBE0();
    __swift_project_value_buffer(v20, qword_2814580E8);
    v21 = v76;
    (*(v10 + 16))(v15, v75, v76);
    v22 = a5;

    sub_22D6D4164(a1, 1);
    v23 = sub_22D72DBB0();
    v24 = sub_22D72E580();

    sub_22D6D3F3C(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v78[0] = v75;
      *v25 = 136446722;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = sub_22D72E960();
      v28 = v21;
      v29 = v22;
      v31 = v30;
      (*(v10 + 8))(v15, v28);
      v32 = sub_22D72891C(v27, v31, v78);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_22D72891C(v77, v29, v78);
      *(v25 + 22) = 2114;
      v33 = a1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v34;
      *v26 = v34;
      _os_log_impl(&dword_22D6B4000, v23, v24, "%{public}s:%{public}s: Cannot execute intent as no activity data is available: %{public}@", v25, 0x20u);
      sub_22D6D5984(v26, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v26, -1, -1);
      v35 = v75;
      swift_arrayDestroy();
      MEMORY[0x2318D0420](v35, -1, -1);
      MEMORY[0x2318D0420](v25, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v15, v21);
    }
  }

  else
  {
    (*(v17 + 16))(v19, a3, v16);
    v36 = (*(v17 + 88))(v19, v16);
    if (v36 == *MEMORY[0x277CB9990])
    {
      v37 = &OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction;
    }

    else
    {
      if (v36 != *MEMORY[0x277CB9998])
      {
        sub_22D72E970();
        __break(1u);
        return;
      }

      v37 = &OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction;
    }

    v38 = *&a1[*v37];
    if (v38)
    {
      v39 = objc_allocWithZone(type metadata accessor for ExecutorDelegate());
      v40 = v38;
      v41 = [v39 init];
      v42 = objc_opt_self();
      v43 = sub_22D72E480();
      v44 = [v42 policyWithBundleIdentifier_];

      v78[0] = 0;
      v45 = [v44 connectionWithError_];
      v46 = v78[0];
      if (v45)
      {
        v47 = v45;
        v48 = objc_allocWithZone(MEMORY[0x277D23AF8]);
        v49 = v46;
        v50 = [v48 init];
        v51 = [v47 executorForAction:v40 options:v50 delegate:v41];

        [v51 perform];
      }

      else
      {
        v73 = v40;
        v74 = v41;
        v52 = v78[0];
        v53 = sub_22D72D5D0();

        swift_willThrow();
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v54 = sub_22D72DBE0();
        __swift_project_value_buffer(v54, qword_2814580E8);
        v55 = v10;
        v56 = v76;
        (*(v10 + 16))(v13, v75, v76);
        v57 = a5;

        v58 = v53;
        v59 = sub_22D72DBB0();
        v60 = sub_22D72E580();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v78[0] = v75;
          *v61 = 136446722;
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v71 = v60;
          v62 = sub_22D72E960();
          v64 = v63;
          (*(v55 + 8))(v13, v56);
          v65 = sub_22D72891C(v62, v64, v78);

          *(v61 + 4) = v65;
          *(v61 + 12) = 2082;
          *(v61 + 14) = sub_22D72891C(v77, v57, v78);
          *(v61 + 22) = 2114;
          v66 = v53;
          v67 = _swift_stdlib_bridgeErrorToNSError();
          *(v61 + 24) = v67;
          v68 = v72;
          *v72 = v67;
          _os_log_impl(&dword_22D6B4000, v59, v71, "%{public}s:%{public}s: Cannot execute intent: %{public}@", v61, 0x20u);
          sub_22D6D5984(v68, &unk_27D9FF4D0, &qword_22D730180);
          MEMORY[0x2318D0420](v68, -1, -1);
          v69 = v75;
          swift_arrayDestroy();
          MEMORY[0x2318D0420](v69, -1, -1);
          MEMORY[0x2318D0420](v61, -1, -1);
        }

        else
        {

          (*(v55 + 8))(v13, v56);
        }
      }
    }
  }
}

uint64_t sub_22D6EA708()
{
  sub_22D6D5984(v0 + 16, &qword_27D9FF500, &qword_22D730530);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

  sub_22D6D5984(v0 + OBJC_IVAR____TtC12AlarmKitCore12AlarmManager_queue_nextEventDate, &qword_27D9FFDD0, &qword_22D730140);
  return v0;
}

uint64_t sub_22D6EA7B8()
{
  sub_22D6EA708();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlarmManager(uint64_t a1)
{
  result = qword_281457F00;
  if (!qword_281457F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D6EA864(uint64_t a1)
{
  sub_22D6EA954(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22D6EA954(uint64_t a1)
{
  if (!qword_2814580B0)
  {
    sub_22D72D730();
    v1 = sub_22D72E6C0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814580B0);
    }
  }
}

uint64_t sub_22D6EAB1C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B8, &qword_22D730518);
  result = sub_22D72E600();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_22D6EAB9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF498, &qword_22D730508);
  result = sub_22D72E600();
  if (!v0)
  {
    return v2;
  }

  return result;
}

id sub_22D6EAC80(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ExecutorDelegate();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22D6EACD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D6EAD30();
  }

  return result;
}

uint64_t sub_22D6EAD30()
{
  v1 = v0;
  v2 = sub_22D72E380();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 216);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_22D72E390();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_2814572C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = sub_22D72DBE0();
  __swift_project_value_buffer(v8, qword_2814580E8);
  v9 = sub_22D72DBB0();
  v10 = sub_22D72E5A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22D6B4000, v9, v10, "Received significant time change notification", v11, 2u);
    MEMORY[0x2318D0420](v11, -1, -1);
  }

  sub_22D6EAF50();
  return sub_22D6D7C3C();
}

uint64_t sub_22D6EAEFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_22D6EAF50()
{
  v1 = sub_22D72DD20();
  v83 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Alarm(0);
  v91 = *(v87 - 8);
  v4 = *(v91 + 64);
  v5 = MEMORY[0x28223BE20](v87);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v65 - v7;
  MEMORY[0x28223BE20](v6);
  v90 = &v65 - v9;
  v88 = sub_22D72D7A0();
  v79 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v65 - v16);
  v75 = v0;
  sub_22D6EB8F4();
  v92 = v8;
  v93 = v17;
  v85 = v15;
  v86 = v11;
  v72 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v18 + 64;
  v24 = 1 << *(v18 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v18 + 64);
  v68 = (v24 + 63) >> 6;
  v77 = v79 + 16;
  v76 = v79 + 32;
  v27 = v83;
  v83 += 11;
  v84 = (v27 + 2);
  v82 = *MEMORY[0x277CB9920];
  v71 = *MEMORY[0x277CB9918];
  v67 = *MEMORY[0x277CB9908];
  v66 = *MEMORY[0x277CB9910];
  v73 = v4;
  v70 = v4 + 7;
  v69 = v95;
  v80 = (v79 + 8);
  v78 = v18;

  v28 = 0;
  v29 = v88;
  v81 = v23;
  v89 = v1;
  v74 = v3;
  while (1)
  {
    v31 = v86;
    if (!v26)
    {
      break;
    }

    v32 = v28;
LABEL_22:
    v35 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v36 = v35 | (v32 << 6);
    v37 = v78;
    v38 = v79;
    (*(v79 + 16))(v86, *(v78 + 48) + *(v79 + 72) * v36, v29);
    v39 = v90;
    sub_22D6F37E4(*(v37 + 56) + *(v91 + 72) * v36, v90);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v41 = v29;
    v42 = *(v40 + 48);
    v43 = *(v38 + 32);
    v44 = v85;
    v43(v85, v31, v41);
    sub_22D6D3C4C(v39, v44 + v42);
    (*(*(v40 - 8) + 56))(v44, 0, 1, v40);
    v1 = v89;
LABEL_23:
    v45 = v93;
    sub_22D6D591C(v44, v93, &qword_27D9FF9E0, &qword_22D730298);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
    {

      return;
    }

    v47 = v45 + *(v46 + 48);
    v48 = v92;
    sub_22D6D3C4C(v47, v92);
    (*v84)(v3, v48 + *(v87 + 44), v1);
    v49 = (*v83)(v3, v1);
    if (v49 == v82)
    {
      sub_22D6F3848(v48);
    }

    else
    {
      v50 = v90;
      if (v49 != v71 && v49 != v67 && v49 != v66)
      {
        sub_22D72E970();
        __break(1u);
        return;
      }

      v51 = __swift_project_boxed_opaque_existential_1((v75 + 56), *(v75 + 80));
      v52 = v92;
      sub_22D6F37E4(v92, v50);
      v53 = *(v91 + 80);
      v54 = swift_allocObject();
      sub_22D6D3C4C(v50, v54 + ((v53 + 16) & ~v53));
      v55 = *v51;
      v56 = *(*v51 + 216);
      v57 = v72;
      sub_22D6F37E4(v52, v72);
      v58 = (v53 + 24) & ~v53;
      v59 = (v70 + v58) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      *(v60 + 16) = v55;
      sub_22D6D3C4C(v57, v60 + v58);
      v61 = (v60 + v59);
      *v61 = sub_22D6F596C;
      v61[1] = v54;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_22D6D52CC;
      *(v62 + 24) = v60;
      v95[2] = sub_22D6F5ACC;
      v95[3] = v62;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v95[0] = sub_22D6BEF78;
      v95[1] = &block_descriptor_197;
      v63 = _Block_copy(aBlock);

      dispatch_sync(v56, v63);
      _Block_release(v63);

      sub_22D6F3848(v52);
      LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

      v1 = v89;
      v3 = v74;
      v45 = v93;
      if (v55)
      {
        goto LABEL_33;
      }
    }

    v30 = v45;
    v29 = v88;
    (*v80)(v30, v88);
    v23 = v81;
  }

  if (v68 <= v28 + 1)
  {
    v33 = v28 + 1;
  }

  else
  {
    v33 = v68;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v32 >= v68)
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
      v44 = v85;
      (*(*(v64 - 8) + 56))(v85, 1, 1, v64);
      v26 = 0;
      v28 = v34;
      goto LABEL_23;
    }

    v26 = *(v23 + 8 * v32);
    ++v28;
    if (v26)
    {
      v28 = v32;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  swift_once();
  v19 = sub_22D72DBE0();
  __swift_project_value_buffer(v19, qword_2814580E8);
  v93 = sub_22D72DBB0();
  v20 = sub_22D72E580();
  if (os_log_type_enabled(v93, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22D6B4000, v93, v20, "Failed to fetch alarms from store", v21, 2u);
    MEMORY[0x2318D0420](v21, -1, -1);
  }

  v22 = v93;
}

void sub_22D6EB8F4()
{
  v2 = v0;
  v3 = sub_22D72E380();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v2[27];
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_22D72E390();
  v10 = *(v4 + 8);
  v9 = (v4 + 8);
  v10(v6, v3);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 17, v2[20]);
    sub_22D6F5E44();
    if (!v1)
    {
      v12 = sub_22D6F38C4(v11);

      v13 = __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
      v14 = *(*v13 + 56);
      MEMORY[0x28223BE20](v13);
      *(&v17 - 2) = sub_22D6F5AF8;
      *(&v17 - 1) = v15;
      os_unfair_lock_lock(v14 + 4);
      sub_22D6F5A78(&v18);
      os_unfair_lock_unlock(v14 + 4);
      v16 = v18;

      sub_22D6F54A8(v16, v12, sub_22D6F395C, sub_22D6F395C);

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    __break(1u);
    os_unfair_lock_unlock(v9 + 4);
    __break(1u);
  }
}

void sub_22D6EBB18(uint64_t a1)
{
  v2 = MEMORY[0x2318CFD00]();
  v3 = *(*__swift_project_boxed_opaque_existential_1((a1 + 176), *(a1 + 200)) + 56);
  os_unfair_lock_lock(v3 + 4);
  sub_22D6F5A78(&v4);
  os_unfair_lock_unlock(v3 + 4);
  sub_22D72DC10();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_22D6EBBC4(uint64_t a1)
{
  result = MEMORY[0x2318CF6E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22D6F1818(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6EBCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22D72EA20();
  sub_22D72E4E0();
  v6 = sub_22D72EA40();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22D72E980() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_22D6EBDD8()
{
  v2 = v0;
  v3 = sub_22D72E380();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v2[27];
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_22D72E390();
  v10 = *(v4 + 8);
  v9 = (v4 + 8);
  v10(v6, v3);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 17, v2[20]);
    sub_22D6F5E44();
    if (!v1)
    {
      v12 = sub_22D6F38C4(v11);

      v13 = __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
      v14 = *(*v13 + 56);
      MEMORY[0x28223BE20](v13);
      *(&v17 - 2) = sub_22D6F5AF8;
      *(&v17 - 1) = v15;
      os_unfair_lock_lock(v14 + 4);
      sub_22D6F5A78(&v18);
      os_unfair_lock_unlock(v14 + 4);
      v16 = v18;

      sub_22D6F54A8(v16, v12, sub_22D6F4F64, sub_22D6F4F64);

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    __break(1u);
    os_unfair_lock_unlock(v9 + 4);
    __break(1u);
  }
}

uint64_t sub_22D6EBFFC()
{
  v1 = sub_22D72DD20();
  v95 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v93 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Alarm(0);
  v85 = *(v98 - 1);
  v3 = MEMORY[0x28223BE20](v98);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v64 - v7;
  MEMORY[0x28223BE20](v6);
  v84 = &v64 - v9;
  v99 = sub_22D72D7A0();
  v86 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v83 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v17 = sub_22D72E380();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = v0;
  v21 = *(v0 + 216);
  *v20 = v21;
  v22 = *(v18 + 104);
  v75 = *MEMORY[0x277D85200];
  v74 = v18 + 104;
  v73 = v22;
  v22(v20);
  v72 = v21;
  v23 = sub_22D72E390();
  v24 = *(v18 + 8);
  v76 = v20;
  v78 = v17;
  v77 = v18 + 8;
  v71 = v24;
  v24(v20, v17);
  if ((v23 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (qword_2814572C8 != -1)
  {
LABEL_36:
    swift_once();
  }

  v25 = sub_22D72DBE0();
  __swift_project_value_buffer(v25, qword_2814580E8);
  v26 = sub_22D72DBB0();
  v27 = sub_22D72E5A0();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v16;
  v97 = v16;
  if (v28)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22D6B4000, v26, v27, "Stopping inactive alarms", v30, 2u);
    v31 = v30;
    v29 = v97;
    MEMORY[0x2318D0420](v31, -1, -1);
  }

  sub_22D6EBDD8();
  v87 = 0;
  v68 = v5;
  v33 = *(v32 + 64);
  v92 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v5 = v35 & v33;
  v67 = (v34 + 63) >> 6;
  v80 = v86 + 32;
  v81 = v86 + 16;
  v91 = (v95 + 16);
  v90 = (v95 + 88);
  v89 = *MEMORY[0x277CB9920];
  v69 = *MEMORY[0x277CB9918];
  v66 = *MEMORY[0x277CB9908];
  v65 = *MEMORY[0x277CB9910];
  v88 = (v86 + 8);
  v82 = v32;

  v70 = 0;
  v16 = 0;
  v94 = v14;
  v95 = v8;
  v96 = v1;
  while (1)
  {
    if (!v5)
    {
      if (v67 <= (v16 + 1))
      {
        v37 = v16 + 1;
      }

      else
      {
        v37 = v67;
      }

      v38 = v37 - 1;
      while (1)
      {
        v36 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v36 >= v67)
        {
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
          (*(*(v62 - 8) + 56))(v14, 1, 1, v62);
          v5 = 0;
          v16 = v38;
          goto LABEL_21;
        }

        v5 = *(v92 + 8 * v36);
        ++v16;
        if (v5)
        {
          v16 = v36;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v36 = v16;
LABEL_20:
    v39 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v40 = v39 | (v36 << 6);
    v41 = v82;
    v42 = v83;
    v43 = v86;
    v44 = v99;
    (*(v86 + 16))(v83, *(v82 + 48) + *(v86 + 72) * v40, v99);
    v45 = *(v41 + 56);
    v46 = v84;
    sub_22D6F37E4(v45 + *(v85 + 72) * v40, v84);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v48 = *(v47 + 48);
    v49 = *(v43 + 32);
    v14 = v94;
    v49(v94, v42, v44);
    sub_22D6D3C4C(v46, v14 + v48);
    (*(*(v47 - 8) + 56))(v14, 0, 1, v47);
    v8 = v95;
    v1 = v96;
    v29 = v97;
LABEL_21:
    sub_22D6D591C(v14, v29, &qword_27D9FF9E0, &qword_22D730298);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    if ((*(*(v50 - 8) + 48))(v29, 1, v50) == 1)
    {
      break;
    }

    sub_22D6D3C4C(v29 + *(v50 + 48), v8);
    v51 = v93;
    (*v91)(v93, &v8[v98[11]], v1);
    v52 = (*v90)(v51, v1);
    if (v52 != v89)
    {
      if (v52 != v69 && v52 != v66 && v52 != v65)
      {
        result = sub_22D72E970();
        __break(1u);
        return result;
      }

      v14 = v98[5];
      v53 = &v8[v98[6]];
      v54 = *v53;
      v1 = v53[1];
      v55 = v76;
      v56 = v72;
      *v76 = v72;
      v57 = v78;
      v73(v55, v75, v78);
      v58 = v56;
      LOBYTE(v56) = sub_22D72E390();
      v71(v55, v57);
      if ((v56 & 1) == 0)
      {
        goto LABEL_34;
      }

      v59 = &v8[v14];
      v60 = v68;
      v61 = v87;
      sub_22D6E81BC(v59, v54, v1, v68);
      v29 = v97;
      if (v61)
      {

        v87 = 0;
        v70 = 1;
        v8 = v95;
        v1 = v96;
        v14 = v94;
      }

      else
      {
        sub_22D6E6C18(v60);
        v1 = v96;
        v14 = v94;
        v87 = 0;
        sub_22D6F3848(v60);
        v70 = 1;
        v8 = v95;
      }
    }

    sub_22D6F3848(v8);
    (*v88)(v29, v99);
  }

  if (v70)
  {
    sub_22D6D7C3C();
    return sub_22D6DAC98();
  }

  return result;
}

uint64_t sub_22D6ECA00@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_22D72D730();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = sub_22D72E380();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + 216);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  LOBYTE(v16) = sub_22D72E390();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v18 = sub_22D72DBE0();
    __swift_project_value_buffer(v18, qword_2814580E8);
    v19 = sub_22D72DBB0();
    v20 = sub_22D72E580();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_6;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Failed to fetch alarms from store";
LABEL_5:
    _os_log_impl(&dword_22D6B4000, v19, v20, v22, v21, 2u);
    MEMORY[0x2318D0420](v21, -1, -1);
LABEL_6:

    return (*(v3 + 56))(v32, 1, 1, v2);
  }

  sub_22D6EB8F4();
  v25 = v24;
  swift_beginAccess();
  sub_22D6D5A4C(v1 + 16, &v33, &qword_27D9FF500, &qword_22D730530);
  if (!v34)
  {

    sub_22D6D5984(&v33, &qword_27D9FF500, &qword_22D730530);
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v30 = sub_22D72DBE0();
    __swift_project_value_buffer(v30, qword_2814580E8);
    v19 = sub_22D72DBB0();
    v20 = sub_22D72E580();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_6;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Schedule resolver is not set";
    goto LABEL_5;
  }

  sub_22D6D5D34(&v33, v35);
  sub_22D72D710();
  sub_22D72D6A0();
  v26 = *(v3 + 8);
  v26(v9, v2);
  v27 = sub_22D72D680();
  MEMORY[0x28223BE20](v27);
  *(&v31 - 2) = v35;
  *(&v31 - 1) = v11;
  sub_22D6E01C4(v9, sub_22D6F463C, v25, v6);

  sub_22D72D680();
  v28 = sub_22D72D6D0();
  v26(v9, v2);
  if (v28)
  {
    v29 = v32;
    (*(v3 + 32))(v32, v6, v2);
    (*(v3 + 56))(v29, 0, 1, v2);
  }

  else
  {
    v26(v6, v2);
    (*(v3 + 56))(v32, 1, 1, v2);
  }

  v26(v11, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

uint64_t sub_22D6ECF10(uint64_t a1, uint64_t a2)
{
  sub_22D72D730();
  v2 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 216);
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_22D6F45C0;
    *(v7 + 24) = v6;
    aBlock[4] = sub_22D6F45C8;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D6BEF78;
    aBlock[3] = &block_descriptor_0;
    v8 = _Block_copy(aBlock);

    dispatch_sync(v4, v8);

    _Block_release(v8);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22D6ED0AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D72D730();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  (*(v4 + 16))(v6, a2, v3);
  sub_22D6ED1B8(v6);
  (*(v4 + 8))(v6, v3);
  return sub_22D6D7C3C();
}

void sub_22D6ED1B8(uint64_t a1)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v55 - v3;
  v76 = sub_22D72D730();
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Alarm(0);
  v70 = *(v75 - 8);
  v6 = MEMORY[0x28223BE20](v75);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v55 - v9;
  v77 = sub_22D72D7A0();
  v71 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v68 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = sub_22D72E380();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 216);
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v22 = v21;
  v23 = sub_22D72E390();
  (*(v18 + 8))(v20, v17);
  if (v23)
  {
    sub_22D6EB8F4();
    v30 = v29;
    swift_beginAccess();
    sub_22D6D5A4C(v1 + 16, &v78, &qword_27D9FF500, &qword_22D730530);
    if (!v79)
    {

      sub_22D6D5984(&v78, &qword_27D9FF500, &qword_22D730530);
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v54 = sub_22D72DBE0();
      __swift_project_value_buffer(v54, qword_2814580E8);
      v25 = sub_22D72DBB0();
      v26 = sub_22D72E580();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_6;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Schedule resolver is not set";
      goto LABEL_5;
    }

    v55 = v1;
    sub_22D6D5D34(&v78, &v80);
    v31 = 0;
    v67 = v30;
    v32 = v30 + 64;
    v33 = 1 << *(v30 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v30 + 64);
    v56 = (v33 + 63) >> 6;
    v61 = v71 + 16;
    v60 = v71 + 32;
    v74 = (v73 + 6);
    v58 = (v73 + 4);
    v57 = (v73 + 1);
    v73 = (v71 + 8);
    v65 = v4;
    v64 = v8;
    v63 = v14;
    v62 = v16;
    v72 = v30 + 64;
    while (v35)
    {
      v36 = v31;
LABEL_23:
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v40 = v39 | (v36 << 6);
      v41 = v67;
      v42 = v71;
      v43 = v68;
      v44 = v77;
      (*(v71 + 16))(v68, *(v67 + 48) + *(v71 + 72) * v40, v77);
      v45 = *(v41 + 56) + *(v70 + 72) * v40;
      v46 = v69;
      sub_22D6F37E4(v45, v69);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
      v48 = *(v47 + 48);
      v49 = *(v42 + 32);
      v14 = v63;
      v49(v63, v43, v44);
      sub_22D6D3C4C(v46, &v14[v48]);
      (*(*(v47 - 8) + 56))(v14, 0, 1, v47);
      v4 = v65;
      v8 = v64;
      v16 = v62;
LABEL_24:
      sub_22D6D591C(v14, v16, &qword_27D9FF9E0, &qword_22D730298);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
      if ((*(*(v50 - 8) + 48))(v16, 1, v50) == 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v80);

        return;
      }

      sub_22D6D3C4C(&v16[*(v50 + 48)], v8);
      sub_22D6D42A8(&v80, &v78);
      sub_22D713738(&v78, &v8[*(v75 + 56)], v4);
      sub_22D6D5984(&v78, &qword_27D9FF500, &qword_22D730530);
      v51 = v76;
      if ((*v74)(v4, 1, v76) == 1)
      {
        sub_22D6F3848(v8);
        sub_22D6D5984(v4, &qword_27D9FFDD0, &qword_22D730140);
      }

      else
      {
        v52 = v59;
        (*v58)(v59, v4, v51);
        sub_22D6F4F0C(&unk_27D9FF4E0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        if ((sub_22D72E3E0() & 1) == 0)
        {
          sub_22D6EDE48(v8, v52, v66);
        }

        (*v57)(v52, v76);
        sub_22D6F3848(v8);
      }

      (*v73)(v16, v77);
      v32 = v72;
    }

    if (v56 <= v31 + 1)
    {
      v37 = v31 + 1;
    }

    else
    {
      v37 = v56;
    }

    v38 = v37 - 1;
    while (1)
    {
      v36 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v36 >= v56)
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
        (*(*(v53 - 8) + 56))(v14, 1, 1, v53);
        v35 = 0;
        v31 = v38;
        goto LABEL_24;
      }

      v35 = *(v32 + 8 * v36);
      ++v31;
      if (v35)
      {
        v31 = v36;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  __break(1u);
  swift_once();
  v24 = sub_22D72DBE0();
  __swift_project_value_buffer(v24, qword_2814580E8);
  v25 = sub_22D72DBB0();
  v26 = sub_22D72E580();
  if (!os_log_type_enabled(v25, v26))
  {
    goto LABEL_6;
  }

  v27 = swift_slowAlloc();
  *v27 = 0;
  v28 = "Failed to fetch alarms from store";
LABEL_5:
  _os_log_impl(&dword_22D6B4000, v25, v26, v28, v27, 2u);
  MEMORY[0x2318D0420](v27, -1, -1);
LABEL_6:
}

uint64_t sub_22D6EDB98(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24[-v7 - 8];
  v9 = sub_22D72D730();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v11);
  v15 = &v24[-v14 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  sub_22D6D42A8(a3, v24);
  sub_22D713738(v24, a4, v8);
  sub_22D6D5984(v24, &qword_27D9FF500, &qword_22D730530);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22D6D5984(v8, &qword_27D9FFDD0, &qword_22D730140);
  }

  v17 = *(v10 + 32);
  v17(v15, v8, v9);
  v18 = v23;
  v17(v13, v23, v9);
  sub_22D6F4F0C(&unk_27D9FF4E0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v19 = sub_22D72E3E0();
  v20 = *(v10 + 8);
  if (v19)
  {
    v20(v15, v9);
    v21 = v18;
    v22 = v13;
  }

  else
  {
    v20(v13, v9);
    v21 = v18;
    v22 = v15;
  }

  return (v17)(v21, v22, v9);
}

void sub_22D6EDE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v232[1] = a3;
  v247 = a2;
  v255 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  MEMORY[0x28223BE20](v4 - 8);
  v242 = v232 - v5;
  v6 = sub_22D72DCF0();
  v244 = *(v6 - 8);
  v245 = v6;
  MEMORY[0x28223BE20](v6);
  v243 = v232 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72DD20();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v248 = v232 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v250 = v232 - v12;
  v252 = type metadata accessor for Alarm(0);
  v234 = *(v252 - 1);
  v13 = MEMORY[0x28223BE20](v252);
  v240 = v232 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v237 = v232 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v246 = v232 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v232[0] = v232 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v232 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v241 = v232 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v233 = v232 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v232 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v238 = v232 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v239 = v232 - v34;
  v235 = v35;
  MEMORY[0x28223BE20](v33);
  v37 = v232 - v36;
  v38 = sub_22D72E380();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = (v232 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v249 = v3;
  v42 = *(v3 + 216);
  *v41 = v42;
  (*(v39 + 104))(v41, *MEMORY[0x277D85200], v38);
  v43 = v42;
  LOBYTE(v42) = sub_22D72E390();
  (*(v39 + 8))(v41, v38);
  if (v42)
  {
    v254 = v9;
    if (qword_2814572C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v44 = sub_22D72DBE0();
  v45 = __swift_project_value_buffer(v44, qword_2814580E8);
  sub_22D6F37E4(v255, v37);
  v46 = sub_22D72DBB0();
  v47 = sub_22D72E5A0();
  v48 = os_log_type_enabled(v46, v47);
  v251 = v45;
  v253 = v8;
  v236 = v30;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v256[0] = v50;
    *v49 = 136446210;
    sub_22D72D7A0();
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v51 = sub_22D72E960();
    v53 = v52;
    sub_22D6F3848(v37);
    v54 = sub_22D72891C(v51, v53, v256);
    v8 = v253;

    *(v49 + 4) = v54;
    _os_log_impl(&dword_22D6B4000, v46, v47, "%{public}s: Firing event", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x2318D0420](v50, -1, -1);
    MEMORY[0x2318D0420](v49, -1, -1);
  }

  else
  {

    sub_22D6F3848(v37);
  }

  v55 = v252;
  v56 = v254;
  v57 = v250;
  (*(v254 + 16))(v250, v255 + v252[11], v8);
  v58 = (*(v56 + 88))(v57, v8);
  v59 = v58;
  v60 = *MEMORY[0x277CB9920];
  if (v58 == v60)
  {
    v61 = v241;
    sub_22D6F37E4(v255, v241);
    v62 = sub_22D72DBB0();
    v63 = sub_22D72E5A0();
    v64 = os_log_type_enabled(v62, v63);
    LODWORD(v250) = v59;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v256[0] = v66;
      *v65 = 136446210;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v67 = sub_22D72E960();
      v69 = v68;
      sub_22D6F3848(v61);
      v70 = sub_22D72891C(v67, v69, v256);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_22D6B4000, v62, v63, "%{public}s: Scheduled alarm is due to begin", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x2318D0420](v66, -1, -1);
      MEMORY[0x2318D0420](v65, -1, -1);
    }

    else
    {

      sub_22D6F3848(v61);
    }

    v83 = v245;
    v84 = v246;
    sub_22D6F37E4(v255, v23);
    v85 = v242;
    sub_22D6D5A4C(v23 + v55[9], v242, &qword_27D9FF310, &qword_22D7301B8);
    v86 = v244;
    v87 = (*(v244 + 48))(v85, 1, v83);
    v88 = v243;
    if (v87 == 1)
    {
      sub_22D6D5984(v85, &qword_27D9FF310, &qword_22D7301B8);
    }

    else
    {
      (*(v86 + 32))(v243, v85, v83);
      v98 = v55[7];
      v99 = *&v98[v23];
      if (v99)
      {
        *&v100 = COERCE_DOUBLE(sub_22D72DCE0());
      }

      else
      {
        *&v100 = COERCE_DOUBLE(sub_22D72DCD0());
      }

      v126 = *&v100;
      v127 = v101;
      (*(v86 + 8))(v88, v83);
      if ((v127 & 1) == 0)
      {
        sub_22D72D690();
        if (v152 >= v126)
        {
          sub_22D6F37E4(v255, v84);
          v183 = sub_22D72DBB0();
          v184 = sub_22D72E5A0();
          v185 = os_log_type_enabled(v183, v184);
          v246 = v98;
          if (v185)
          {
            v186 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v256[0] = v187;
            *v186 = 136446210;
            sub_22D72D7A0();
            v245 = v23;
            sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v188 = sub_22D72E960();
            v190 = v189;
            sub_22D6F3848(v84);
            v191 = sub_22D72891C(v188, v190, v256);
            v55 = v252;
            v23 = v245;

            *(v186 + 4) = v191;
            _os_log_impl(&dword_22D6B4000, v183, v184, "%{public}s: Alarm wants countdown but is expired; showing alert", v186, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v187);
            MEMORY[0x2318D0420](v187, -1, -1);
            MEMORY[0x2318D0420](v186, -1, -1);
          }

          else
          {

            sub_22D6F3848(v84);
          }

          v204 = v55[11];
          v206 = v253;
          v205 = v254;
          v207 = *(v254 + 104);
          v208 = v248;
          v207(v248, *MEMORY[0x277CB9918], v253);
          v209 = sub_22D72DD10();
          v210 = *(v205 + 8);
          v210(v208, v206);
          if (v209 & 1) != 0 || (v207(v208, v250, v206), v211 = sub_22D72DD10(), v210(v208, v206), (v211))
          {
            if (!__OFADD__(v99, 1))
            {
              *&v246[v23] = v99 + 1;
              v212 = v252;
              v213 = (v23 + v252[10]);
              *v213 = 0;
              v213[8] = 1;
              v214 = v212[14];
              v215 = sub_22D72D730();
              (*(*(v215 - 8) + 24))(v23 + v214, v247, v215);
              v216 = v253;
              v210((v23 + v204), v253);
              v207((v23 + v204), *MEMORY[0x277CB9910], v216);
              goto LABEL_33;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v153 = v152;
          v154 = v232[0];
          sub_22D6F37E4(v255, v232[0]);
          v155 = sub_22D72DBB0();
          v156 = sub_22D72E5A0();
          if (os_log_type_enabled(v155, v156))
          {
            v157 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v256[0] = v158;
            *v157 = 136446210;
            sub_22D72D7A0();
            sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v159 = sub_22D72E960();
            v161 = v160;
            sub_22D6F3848(v154);
            v162 = sub_22D72891C(v159, v161, v256);
            v55 = v252;

            *(v157 + 4) = v162;
            _os_log_impl(&dword_22D6B4000, v155, v156, "%{public}s: Showing countdown", v157, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v158);
            MEMORY[0x2318D0420](v158, -1, -1);
            MEMORY[0x2318D0420](v157, -1, -1);
          }

          else
          {

            sub_22D6F3848(v154);
          }

          v192 = v253;
          v193 = v254;
          v194 = v55[11];
          v195 = *(v254 + 104);
          v196 = v248;
          v195(v248, *MEMORY[0x277CB9910], v253);
          v197 = sub_22D72DD10();
          v198 = *(v193 + 8);
          v198(v196, v192);
          if (v197 & 1) != 0 || (v195(v196, *MEMORY[0x277CB9908], v192), v199 = sub_22D72DD10(), v198(v196, v192), (v199) || (v195(v196, v250, v192), v200 = sub_22D72DD10(), v198(v196, v192), (v200))
          {
            v201 = (v23 + v55[10]);
            *v201 = v153;
            v201[8] = 0;
            v202 = v55[14];
            v203 = sub_22D72D730();
            (*(*(v203 - 8) + 24))(v23 + v202, v247, v203);
            v198((v23 + v194), v192);
            v195((v23 + v194), *MEMORY[0x277CB9918], v192);
            goto LABEL_33;
          }
        }

        goto LABEL_53;
      }
    }

    v128 = v55[11];
    v129 = v253;
    v130 = v254;
    v131 = *(v254 + 104);
    v132 = v248;
    v131(v248, *MEMORY[0x277CB9918], v253);
    v133 = sub_22D72DD10();
    v134 = *(v130 + 8);
    v134(v132, v129);
    if (v133 & 1) != 0 || (v131(v132, v250, v129), v135 = sub_22D72DD10(), v134(v132, v129), (v135))
    {
      v136 = v55[7];
      v137 = *(v23 + v136);
      v114 = __OFADD__(v137, 1);
      v138 = v137 + 1;
      if (!v114)
      {
        *(v23 + v136) = v138;
        v139 = (v23 + v55[10]);
        *v139 = 0;
        v139[8] = 1;
        v140 = v55[14];
        v141 = sub_22D72D730();
        (*(*(v141 - 8) + 24))(v23 + v140, v247, v141);
        v134((v23 + v128), v129);
        v131((v23 + v128), *MEMORY[0x277CB9910], v129);
LABEL_33:
        v142 = __swift_project_boxed_opaque_existential_1((v249 + 176), *(v249 + 200));
        v143 = *(*v142 + 56);
        v144 = MEMORY[0x28223BE20](v142);
        v232[-4] = v145;
        v232[-3] = v23;
        v232[-2] = 0;
        MEMORY[0x28223BE20](v144);
        v232[-2] = sub_22D6F5A94;
        v232[-1] = v146;
        os_unfair_lock_lock(v143 + 4);
        sub_22D6F5B28(v147);
        os_unfair_lock_unlock(v143 + 4);
        v148 = v249;
        sub_22D6DAC98();
        __swift_project_boxed_opaque_existential_1((v148 + 56), *(v148 + 80));
        v149 = v233;
        sub_22D6F37E4(v255, v233);
        v150 = (*(v234 + 80) + 16) & ~*(v234 + 80);
        v151 = swift_allocObject();
        sub_22D6D3C4C(v149, v151 + v150);
        sub_22D6BB384(v23, sub_22D6F5A90, v151);

        v167 = v23;
        goto LABEL_57;
      }

      __break(1u);
      goto LABEL_61;
    }

LABEL_53:
    v217 = v23;
    sub_22D6F45E8();
    v218 = swift_allocError();
    swift_willThrow();
    v219 = v240;
    sub_22D6F37E4(v255, v240);
    v220 = v218;
    v221 = sub_22D72DBB0();
    v222 = sub_22D72E580();

    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v256[0] = v225;
      *v223 = 136446466;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v226 = sub_22D72E960();
      v228 = v227;
      sub_22D6F3848(v219);
      v229 = sub_22D72891C(v226, v228, v256);

      *(v223 + 4) = v229;
      *(v223 + 12) = 2114;
      v230 = v218;
      v231 = _swift_stdlib_bridgeErrorToNSError();
      *(v223 + 14) = v231;
      *v224 = v231;
      _os_log_impl(&dword_22D6B4000, v221, v222, "%{public}s: Failed to update alarm state to alert: %{public}@", v223, 0x16u);
      sub_22D6D5984(v224, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v224, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v225);
      MEMORY[0x2318D0420](v225, -1, -1);
      MEMORY[0x2318D0420](v223, -1, -1);
    }

    else
    {

      sub_22D6F3848(v219);
    }

    v167 = v217;
    goto LABEL_57;
  }

  if (v58 == *MEMORY[0x277CB9918])
  {
    v71 = v238;
    sub_22D6F37E4(v255, v238);
    v72 = sub_22D72DBB0();
    v73 = sub_22D72E5A0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = v71;
      v76 = v59;
      v77 = swift_slowAlloc();
      v256[0] = v77;
      *v74 = 136446210;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v78 = sub_22D72E960();
      v80 = v79;
      sub_22D6F3848(v75);
      v81 = sub_22D72891C(v78, v80, v256);
      v55 = v252;

      *(v74 + 4) = v81;
      _os_log_impl(&dword_22D6B4000, v72, v73, "%{public}s: Transitioning from countdown to alert", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      v82 = v77;
      v59 = v76;
      MEMORY[0x2318D0420](v82, -1, -1);
      MEMORY[0x2318D0420](v74, -1, -1);
    }

    else
    {

      sub_22D6F3848(v71);
    }

    v102 = v248;
    v103 = v236;
    sub_22D6F37E4(v255, v236);
    v104 = v55[11];
    v106 = v253;
    v105 = v254;
    v107 = *(v254 + 104);
    v107(v102, v59, v253);
    v108 = sub_22D72DD10();
    v109 = *(v105 + 8);
    v109(v102, v106);
    if ((v108 & 1) == 0)
    {
      v107(v102, v60, v106);
      v110 = sub_22D72DD10();
      v109(v102, v106);
      if ((v110 & 1) == 0)
      {
        sub_22D6F45E8();
        v168 = swift_allocError();
        swift_willThrow();
        v169 = v103;
        v170 = v237;
        sub_22D6F37E4(v255, v237);
        v171 = v168;
        v172 = sub_22D72DBB0();
        v173 = sub_22D72E580();

        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v256[0] = v176;
          *v174 = 136446466;
          sub_22D72D7A0();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v177 = sub_22D72E960();
          v179 = v178;
          sub_22D6F3848(v170);
          v180 = sub_22D72891C(v177, v179, v256);

          *(v174 + 4) = v180;
          *(v174 + 12) = 2114;
          v181 = v168;
          v182 = _swift_stdlib_bridgeErrorToNSError();
          *(v174 + 14) = v182;
          *v175 = v182;
          _os_log_impl(&dword_22D6B4000, v172, v173, "%{public}s: Failed to update alarm state to countdown: %{public}@", v174, 0x16u);
          sub_22D6D5984(v175, &unk_27D9FF4D0, &qword_22D730180);
          MEMORY[0x2318D0420](v175, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v176);
          MEMORY[0x2318D0420](v176, -1, -1);
          MEMORY[0x2318D0420](v174, -1, -1);
        }

        else
        {

          sub_22D6F3848(v170);
        }

        v167 = v169;
        goto LABEL_57;
      }
    }

    v111 = v252;
    v112 = v252[7];
    v113 = *(v103 + v112);
    v114 = __OFADD__(v113, 1);
    v115 = v113 + 1;
    if (!v114)
    {
      *(v103 + v112) = v115;
      v116 = v103 + v111[10];
      *v116 = 0;
      *(v116 + 8) = 1;
      v117 = v111[14];
      v118 = sub_22D72D730();
      (*(*(v118 - 8) + 24))(v103 + v117, v247, v118);
      v119 = v253;
      v109((v103 + v104), v253);
      v107((v103 + v104), *MEMORY[0x277CB9910], v119);
      v120 = __swift_project_boxed_opaque_existential_1((v249 + 176), *(v249 + 200));
      v121 = *(*v120 + 56);
      v122 = MEMORY[0x28223BE20](v120);
      v232[-4] = v123;
      v232[-3] = v103;
      v232[-2] = 0;
      MEMORY[0x28223BE20](v122);
      v232[-2] = sub_22D6F5A94;
      v232[-1] = v124;
      os_unfair_lock_lock(v121 + 4);
      sub_22D6F5B28(v125);
      os_unfair_lock_unlock(v121 + 4);
      v163 = v249;
      sub_22D6DAC98();
      __swift_project_boxed_opaque_existential_1((v163 + 56), *(v163 + 80));
      v164 = v233;
      sub_22D6F37E4(v255, v233);
      v165 = (*(v234 + 80) + 16) & ~*(v234 + 80);
      v166 = swift_allocObject();
      sub_22D6D3C4C(v164, v166 + v165);
      sub_22D6BB384(v103, sub_22D6F5A90, v166);

      v167 = v103;
LABEL_57:
      sub_22D6F3848(v167);
      return;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v58 == *MEMORY[0x277CB9908] || v58 == *MEMORY[0x277CB9910])
  {
    v89 = v239;
    sub_22D6F37E4(v255, v239);
    v90 = sub_22D72DBB0();
    v91 = sub_22D72E580();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v256[0] = v93;
      *v92 = 136446210;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v94 = sub_22D72E960();
      v96 = v95;
      sub_22D6F3848(v89);
      v97 = sub_22D72891C(v94, v96, v256);

      *(v92 + 4) = v97;
      _os_log_impl(&dword_22D6B4000, v90, v91, "%{public}s: Unexpected firing for paused or alerting alarm", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x2318D0420](v93, -1, -1);
      MEMORY[0x2318D0420](v92, -1, -1);

      return;
    }

    v167 = v89;
    goto LABEL_57;
  }

LABEL_63:
  sub_22D72E970();
  __break(1u);
}